//
// Created by chivora on 1/22/18.
//
#include <poll.h>
#include "Server.h"
#include "GlobalMutex.h"
#include "SynchronizedQ.h"

using namespace std;

//Actually allocate clients
map<int,Client*> Server::clients;
int Server::helloTimeout = 100;

/* Catch Signal Handler function */
void signal_callback_handler(int signum){
    cout<<"Caught signal SIGPIPE "<<signum<<endl;
}

Server::Server(uint16_t portNo):port(portNo){

    // Handling SIGPIPE in case the socket to send/write is shutdown for writting or not connected anymore
    signal(SIGPIPE, signal_callback_handler);

    //Initialize static mutex from MyThread
    GlobalMutex::InitMutex();

    //For setsock opt (REUSEADDR)
    int yes = 1;

    //Init serverSock and start listen()'ing
    serverSock = socket(AF_INET, SOCK_STREAM, 0);
    memset(&serverAddr, 0, sizeof(sockaddr_in));
    serverAddr.sin_family = AF_INET;
    serverAddr.sin_addr.s_addr = INADDR_ANY;
    serverAddr.sin_port = htons(port);

    //Avoid bind error if the socket was not close()'d last time;
    setsockopt(serverSock,SOL_SOCKET,SO_REUSEADDR,&yes,sizeof(int));

    if(::bind(serverSock, (struct sockaddr *) &serverAddr, sizeof(sockaddr_in)) < 0)
        cerr << "Failed to bind";

    listen(serverSock, 5);
}

/*
	AcceptAndDispatch();
	Main loop:
		Blocks at accept(), until a new connection arrives.
		When it happens, create a new thread to handle the new client.
*/
void Server::AcceptAndDispatch() {

    Client *c;
    MyThread *t;

    socklen_t cliSize = sizeof(sockaddr_in);

    while(true) {

        c = new Client();
        t = new MyThread();

        //Blocks here;
        c->sock = accept(serverSock, (struct sockaddr *) &clientAddr, &cliSize);

        if(c->sock < 0) {
            cerr << "Error on accept";
        }
        else {
            t->Create((void *) Server::HandleClient, c);
        }
    }
}

void Server::startPublishing(){

    MyThread *pubThread = new MyThread();
    pubThread->Create((void*) Server::publish,NULL);

}

void * Server::publish(void *args){

    while(true){
        // Get elements to be published.
        const SynchronizedQItem item = SynchronizedQ::Instance()->pop();

        // start processing them to create UPDATE MESSAGE and send them over socket \TODO
        cout<<"Socket to send this message to "<<item.first<<endl;
        cout<<"Topic Name  "<<item.second.first<<endl;
        cout<<"Topic Content  "<<item.second.second<<endl;
        int socket = item.first;
        string topicName = item.second.first;
        string topicContent = item.second.second;
        MessageHeader *messageHeader = new MessageHeader;
        PublishUpdateMessageTopicName *pPublishUpdateMessageTopicName = NULL;
        PublishUpdateMessageTopicContent *pPublishUpdateMessageTopicContent = NULL;
        createPublishUpdateMsg(messageHeader,UPDATE_MSG,&pPublishUpdateMessageTopicName,topicName,&pPublishUpdateMessageTopicContent,topicContent);
        uint8_t buffer[4096], *ptr;
        ptr = serializePublishUpdateMsg(buffer,messageHeader,pPublishUpdateMessageTopicName,pPublishUpdateMessageTopicContent);
        if(send(socket, buffer,ptr-buffer, 0) == ptr-buffer){
            cout<<"send successfull"<<endl;
        }else{
            cout<<"send error"<<endl;
        }
        free(pPublishUpdateMessageTopicName);
        free(pPublishUpdateMessageTopicContent);
        delete messageHeader;
        cout<<"Server::publish --- Messages that were created to publish are deleted now"<<endl;
    }
}

// This assumes buffer is at least x bytes long,
// and that the socket is blocking.
int ReadXBytes(int socket, int x, uint8_t* buffer)
{
    int bytesRead = 0;
    ssize_t result;
    while (bytesRead < x)
    {
        result = recv(socket, buffer + bytesRead, x - bytesRead,0);
        if (result == -1 )
        {
            // Throw your error.
            cout<<"Connection error it seems"<<endl;
            break;
        }else if(result == 0){
            // connection dropped
            cout<<"Connection dropped it seems"<<endl;
            break;
        }
        bytesRead += result;
    }
    return result;
}

//Static
void *Server::HandleClient(void *args) {

    //Pointer to accept()'ed Client
    Client *client = (Client *) args;
    uint8_t *buffer = NULL;
    int index;
    int n;
    /*
     * Connected to the client. Wait for 100 ms. If Hello Message doesn't arrive then disconnect from server side.
     */

    struct pollfd fd;
    int ret;

    fd.fd = client->sock;
    fd.events = POLLIN;
    ret = poll(&fd,1,helloTimeout);
    cout<<"Return value from poll is "<<ret<<endl;
    switch (ret){
        case -1:
        // Error
        case 0:
        // Timeout
        {
            cout<<"Error or Timeout, closing connection as hello was not received within 100 ms"<<endl;
            close(client->sock);
        }
        break;
        default:
        {
            if(!client->handleHelloMessage()){
                //disconnect with client
                close(client->sock);
                return NULL;
            }
        }
    }

    // Hello Message Exchanges done. Move forward with pub/sub-unsub messages
    while(1) {
        // Read first 5 bytes to get length of the message
        uint32_t msgHeaderBufLen = sizeof(uint32_t)+sizeof(uint8_t);
        uint8_t msgHeaderBuf[msgHeaderBufLen];
        memset(msgHeaderBuf,0,msgHeaderBufLen);
        n = ReadXBytes(client->sock,msgHeaderBufLen,msgHeaderBuf);
        //Client disconnected?
        if(n == 0) {
            cout << "Client " << client->name << " diconnected" << endl;
            close(client->sock);
            break;
        }
        else if(n < 0){
            cerr << "Error while receiving message from client: " << client->name << endl;
            close(client->sock);
            break;
        }

        MessageHeader messageHeader;
        deserializeMsgHeader(msgHeaderBuf,&messageHeader);

        // Allocated buffer of size msgSize - 5 to get remaining portion of the payload
        uint8_t *buffer = NULL;
        uint32_t bufferSize = messageHeader.size-(sizeof(messageHeader.size) + sizeof(messageHeader.type));
        buffer = new uint8_t[bufferSize];
        // Read the payload section of the message
        n = ReadXBytes(client->sock,bufferSize,buffer);

        // Start processing the buffer

        //Client disconnected?
        if(n == 0) {
            cout << "Client " << client->name << " diconnected" << endl;
            close(client->sock);
            delete []buffer;

            break;
        }
        else if(n < 0) {
            cerr << "Error while receiving message from client: " << client->name << endl;
            close(client->sock);
            delete []buffer;
            break;
        }
        else {
            if(!client->processMessage(static_cast<ProtocolMessageType>(messageHeader.type),buffer,bufferSize)){
                ret = close(client->sock);
                //cout << " socket close return value =  "<<ret<<endl;
                delete []buffer;
                break;
            }
        }
        delete []buffer;
    }

    //End thread
    return NULL;
}



