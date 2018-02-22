//
// Created by chivora on 1/22/18.
//

#ifndef TESTPROJECT_CLIENT_H
#define TESTPROJECT_CLIENT_H

#include <iostream>

#include <cstdio>
#include <cstdlib>
#include "ProtocolMessage.h"

#define MAX_NAME_LENGHT 20

using namespace std;

class Client {
public:
    char *name;
    int id;

    //Socket stuff
    int sock;

public:
    Client();
    void SetName(const char *name);
    void SetId(int id);

    bool validateTopicName(string topicName);
    bool validateTopicContent(string topicContent);

    ProtocolMessageType getMessageType(uint8_t* buffer,uint32_t size);
    bool handleHelloMessage();
    bool processMessage(ProtocolMessageType protocolMessageType,uint8_t* buffer,uint32_t bufferSize);

    bool handlePubMessage(uint8_t* buffer,uint32_t size);
    bool handleSubMessage(uint8_t* buffer,uint32_t size);
    bool handleUnSubMessage(uint8_t* buffer,uint32_t size);
    bool handleUpdateMessage(uint8_t* buffer,uint32_t size);


};

#endif //TESTPROJECT_CLIENT_H
