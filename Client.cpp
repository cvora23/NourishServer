//
// Created by chivora on 1/22/18.
//

#include "Client.h"
#include "PubSubSystem.h"
#include <sys/socket.h>
#include <netinet/in.h>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <unistd.h>
#include <iomanip>
#include <sstream>

using namespace std;

uint8_t precanned_hellomsg[5] = {0x68,0x65,0x6c,0x6c,0x6f};

std::string hexStr(unsigned char* data, int len)
{
    std::stringstream ss;
    ss << std::hex;
    for(int i=0;i<len;++i)
        ss << std::setw(2) << std::setfill('0') << (int)data[i];
    return ss.str();
}

Client::Client() {
    this->name = (char *) malloc(MAX_NAME_LENGHT+1);
}

void Client::SetName(const char *name) {
    //Copies at most MAX_NAME_LENGHT + 1 (including '\0')
    snprintf(this->name, MAX_NAME_LENGHT+1,"%s",name);
}

void Client::SetId(int id) {
    this->id = id;
}

// This assumes buffer is at least x bytes long,
// and that the socket is blocking.
int ReadXBytes(int socket, uint32_t x, uint8_t* buffer,uint32_t timeout)
{
    uint32_t bytesRead = 0;
    int result;
    while (bytesRead < x)
    {
        result = recv(socket, buffer + bytesRead, x - bytesRead,0);
        if (result == -1 ) {
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

ProtocolMessageType Client::getMessageType(uint8_t* buffer,uint32_t size){
    ProtocolMessageType protocolMessageType;
    switch(buffer[0]){

        case HELLO_MSG:
            protocolMessageType = HELLO_MSG;
            break;
        case SUB_MSG:
            protocolMessageType = SUB_MSG;
            break;
        case UNSUB_MSG:
            protocolMessageType = UNSUB_MSG;
            break;
        case UPDATE_MSG:
            protocolMessageType = UPDATE_MSG;
            break;
        case PUB_MSG:
            protocolMessageType = PUB_MSG;
            break;
        default:
            protocolMessageType = INVALID_MSG;
            break;
    }
    return protocolMessageType;
}

bool Client::handleHelloMessage(){
    bool result = false;
    // Wait for 100 ms and then check if anything to read.
    uint32_t timeout = 0;
    // Read first 5 bytes to get length of the message
    int n;
    uint32_t msgHeaderBufLen = sizeof(uint32_t)+sizeof(uint8_t);
    uint8_t msgHeaderBuf[msgHeaderBufLen];
    memset(msgHeaderBuf,0,msgHeaderBufLen);
    n = ReadXBytes(this->sock,msgHeaderBufLen,msgHeaderBuf,timeout);
    MessageHeader messageHeader;
    deserializeMsgHeader(msgHeaderBuf,&messageHeader);

    if(messageHeader.type != HELLO_MSG){
        return false;
    }

    // Allocated buffer of size msgSize - 5 to get remaining portion of the payload
    uint8_t *buffer = NULL;
    uint32_t bufferSize = messageHeader.size-(sizeof(messageHeader.size) + sizeof(messageHeader.type));
    buffer = new uint8_t[bufferSize];
    // Read the payload section of the message
    n = ReadXBytes(this->sock,bufferSize,buffer,timeout);
    //Client disconnected?
    if(n == 0) {
        cout << "Client " << this->name << " diconnected" << endl;
    }else if(n < 0) {
        cerr << "Error while receiving message from client: " << this->name << endl;
    }else {
        HelloMessage helloMessage;
        deserializeHelloMsg(buffer,&helloMessage);
        cout << "Message received: " << helloMessage.msg << endl;
        if(memcmp(helloMessage.msg,precanned_hellomsg,5) == 0){

            // Send a hello message response back to client
            MessageHeader *pMessageHeader = new MessageHeader;
            HelloMessage *pHelloMessage = new HelloMessage;
            createHelloMsg(pMessageHeader,pHelloMessage);
            uint8_t helloMsgBuffer[10],*ptr;
            ptr = serializeHelloMsg(helloMsgBuffer,pMessageHeader,pHelloMessage);
            if(send(sock, helloMsgBuffer,ptr-helloMsgBuffer, 0) == ptr-helloMsgBuffer){
                cout << "Message sent: " << pHelloMessage->msg << endl;
                delete pMessageHeader;
                delete pHelloMessage;
                result = true;
            }
        }
    }

    delete []buffer;
    return result;
}

bool Client::handlePubMessage(uint8_t* buffer,uint32_t size){
    bool result = false;
    PublishUpdateMessageTopicName *pPublishUpdateMessageTopicName = NULL;
    PublishUpdateMessageTopicContent *pPublishUpdateMessageTopicContent = NULL;
    deserializePublishUpdateMsg(buffer,&pPublishUpdateMessageTopicName,&pPublishUpdateMessageTopicContent);

    string topicName;
    topicName.assign(&pPublishUpdateMessageTopicName->topicName,&pPublishUpdateMessageTopicName->topicName + pPublishUpdateMessageTopicName->length);
    cout<<"TOPIC NAME = "<<topicName<<endl;
    //string topicNameHex = hexStr(&pPublishUpdateMessageTopicName->topicName,pPublishUpdateMessageTopicName->length);
    //cout<<"TOPIC NAME HEX = "<<topicNameHex<<endl;

    string topicContent;
    topicContent.assign(&pPublishUpdateMessageTopicContent->topicContent,&pPublishUpdateMessageTopicContent->topicContent + pPublishUpdateMessageTopicContent->length);
    cout<<"TOPIC CONTENT = "<<topicContent<<endl;
    //string topicContentHex = hexStr(&pPublishUpdateMessageTopicContent->topicContent,pPublishUpdateMessageTopicContent->length);
    //cout<<"TOPIC CONTENT HEX = "<<topicContentHex<<endl;

    if(validateTopicName(topicName) && validateTopicContent(topicContent)){
        PubSubSystem::Instance()->publish(topicName,topicContent);
        result = true;
    }else{
        cout <<"handlePubMessage - validation failed"<<endl;
    }

    return result;
}

bool Client::handleSubMessage(uint8_t* buffer,uint32_t size){
    bool result = false;

    SubUnsubMessage *pSubUnsubMessage = NULL;
    deserializeSubUnsubMsg(buffer,size,&pSubUnsubMessage);

    string topicName;
    topicName.assign(&pSubUnsubMessage->topicName,&pSubUnsubMessage->topicName + size);
    cout<<"TOPIC NAME = "<<topicName<<endl;

    //string topicNameHex = hexStr(&pSubUnsubMessage->topicName,size);
    //cout<<"TOPIC NAME HEX = "<<topicNameHex<<endl;
    if(validateTopicName(topicName)){
        PubSubSystem::Instance()->subscribe(sock,topicName);
        result = true;
    }else{
        cout <<"handleSubMessage - validation failed"<<endl;
    }


    return result;

}


bool Client::handleUnSubMessage(uint8_t* buffer,uint32_t size){

    bool result = false;

    SubUnsubMessage *pSubUnsubMessage = NULL;
    deserializeSubUnsubMsg(buffer,size,&pSubUnsubMessage);

    string topicName;
    topicName.assign(&pSubUnsubMessage->topicName,&pSubUnsubMessage->topicName + size);
    cout<<"TOPIC NAME = "<<topicName<<endl;
    //string topicNameHex = hexStr(&pSubUnsubMessage->topicName,size);
    //cout<<"TOPIC NAME HEX = "<<topicNameHex<<endl;

    if(validateTopicName(topicName)){
        PubSubSystem::Instance()->unsubscribe(sock,topicName);
        result = true;
    }else{
        cout <<"handleSubMessage - validation failed"<<endl;
    }

    return result;

}

bool Client::handleUpdateMessage(uint8_t* buffer,uint32_t size){

    bool result = false;
    return result;

}

bool Client::processMessage(ProtocolMessageType protocolMessageType, uint8_t *buffer, uint32_t bufferSize) {

    switch (protocolMessageType){

        case SUB_MSG:
        {
            cout <<"Received SUB_MSG Message"<<endl;
            return handleSubMessage(buffer,bufferSize);
        }
        break;
        case UNSUB_MSG:
        {
            cout <<"Received UNSUB_MSG Message"<<endl;
            return handleUnSubMessage(buffer,bufferSize);
        }
        break;
        case PUB_MSG:
        {
            cout <<"Received PUB_MSG Message"<<endl;
            return handlePubMessage(buffer,bufferSize);
        }
        break;
        default:
        {
            cout<<"Received INVALID_MSG Message"<<endl;
            return false;
        }
        break;
    }

}

bool Client::validateTopicName(string topicName) {
    /*
     * empty topicName
     */
    if(topicName.empty()){
        return false;
    }
    /*
     * string length cannot be more than 255
     */
    int topicNameLen = topicName.length();
    if(topicNameLen > 255){
        return false;
    }
    /*
     * the string may not start with or end with '-'
     */
    if((topicName[0] == '-') || (topicName[topicNameLen-1] == '-')){
        return false;
    }

    bool foundDash = false;
    for(int i=0;i<topicNameLen;i++){
        /*
         * string must contain only a-z0-9 (note, no uppercase) and '-' character
         */
        if((topicName[i] >='a' && topicName[i] <='a'+25) ||  ((topicName[i] >=48 && topicName[i] <=57)) || (topicName[i] == '-')){
            // No two '-' can be in a row
            if(topicName[i] == '-'){
                // if found two in a row, invalidate topicName
                if(foundDash){
                    return false;
                }else{
                    // found first time
                    foundDash = true;
                }
            }else{
                foundDash = false;
            }
        }else{
            return false;
        }
    }
    /*
     * Passed all validations
     */
    return true;
}

bool Client::validateTopicContent(string topicContent) {

    /*
    * empty topicContent
    */
    if(topicContent.empty()){
        return false;
    }

    /*
    * string length cannot be more than 255
    */
    int topicContentLen = topicContent.length();
    if(topicContentLen > 255){
        return false;
    }

    /*
     * topicContent with only whitespaces
     */
    if(topicContent.find_first_not_of(' ') == std::string::npos)
    {
        // there are only spaces.
        return false;
    }

    for(int i=0;i<topicContentLen;i++){
        /*
         * string must contain only a-zA-Z0-9 and spaces
         */
        if((topicContent[i] >='a' && topicContent[i] <='a'+25) ||  ((topicContent[i] >='A' && topicContent[i] <='A'+25)) ||
           ((topicContent[i] >=48 && topicContent[i] <=57)) || (topicContent[i] == ' ')){
            // all good
        }else{
            return false;
        }
    }

    /*
     * Passed all validations
     */
    return true;}
