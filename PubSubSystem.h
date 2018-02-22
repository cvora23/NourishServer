//
// Created by chivora on 1/25/18.
//

#ifndef NOURISHSERVER_PUBSUBSYSTEM_H
#define NOURISHSERVER_PUBSUBSYSTEM_H

#include <string>
#include <pthread.h>
#include <unordered_map>
#include "PubSubChannel.h"

using namespace std;

typedef string topic_name;

class PubSubSystem{
public:
    static PubSubSystem* Instance();
    void publish(topic_name topicName,string topicContent);
    void subscribe(int socket,topic_name topicName);
    void unsubscribe(int socket,topic_name topicName);

private:

    std::unordered_map<topic_name,PubSubChannel*>channels;
    std::unordered_map<topic_name,PubSubChannel*>::iterator channelsItr;

    PubSubSystem();
    PubSubSystem(PubSubSystem const&);
    PubSubSystem& operator=(PubSubSystem const&);
    static PubSubSystem* m_pInstance;
};

#endif //NOURISHSERVER_PUBSUBSYSTEM_H
