//
// Created by chivora on 1/22/18.
//

#ifndef TESTPROJECT_SERVER_H
#define TESTPROJECT_SERVER_H

#include <iostream>
#include <vector>
#include <map>

#include <cstdio>
#include <cstdlib>
#include <cstring>

#include <sys/socket.h>
#include <netinet/in.h>

#include "MyThread.h"
#include "Client.h"

using namespace std;

class Server {

private:
    static map<int,Client*> clients;
    static int helloTimeout;
    //Socket stuff
    int serverSock, clientSock;
    struct sockaddr_in serverAddr, clientAddr;
    char buff[256];
    uint16_t port;

public:
    Server(uint16_t portNo = 12345);
    void startPublishing();
    void AcceptAndDispatch();
    static void * HandleClient(void *args);
    static void * publish(void *args);

};


#endif //TESTPROJECT_SERVER_H
