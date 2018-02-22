//
// Created by chivora on 1/25/18.
//
#include "PubSubSystem.h"
#include "GlobalMutex.h"
#include <iostream>

// Global static pointer used to ensure a single instance of the class.
PubSubSystem* PubSubSystem::m_pInstance = NULL;

/** This function is called to create an instance of the class.
    Calling the constructor publicly is not allowed. The constructor
    is private and is only called by this Instance function.
*/

PubSubSystem::PubSubSystem() {

}

PubSubSystem* PubSubSystem::Instance() {
    if (m_pInstance == NULL){
        GlobalMutex::LockMutex("PubSubSystem");
        if(m_pInstance == NULL){
            m_pInstance = new PubSubSystem();
        }
        GlobalMutex::UnlockMutex("PubSubSystem");
    }
    return m_pInstance;
}

void PubSubSystem::publish(string topicName, string topicContent) {
    // Check if Channel for Topic is already created or not, when someone trying to publish content
    GlobalMutex::LockMutex("PubSubSystem");

    channelsItr = channels.find(topicName);
    if(channelsItr != channels.end()){
        // If Channel is already created then publish the content to the subscribers if any
        PubSubChannel* pubSubChannel = channelsItr->second;
        if(pubSubChannel){
            pubSubChannel->publish(topicName,topicContent);
        }
    }else{
        // Create a Channel for this topic and publish the content
        PubSubChannel* pubSubChannel = new PubSubChannel(topicName);
        if(pubSubChannel){
            channels.insert(std::make_pair(topicName,pubSubChannel));
            pubSubChannel->publish(topicName,topicContent);
        }
    }
    GlobalMutex::UnlockMutex("PubSubSystem");
}

void PubSubSystem::subscribe(int socket, string topicName) {

    GlobalMutex::LockMutex("PubSubSystem");

    channelsItr = channels.find(topicName);
    if(channelsItr != channels.end()){
        // If Channel is already created then publish the content to the subscribers if any
        PubSubChannel* pubSubChannel = channelsItr->second;
        if(pubSubChannel){
            pubSubChannel->subscribe(socket,topicName);
        }
    }else{
        // Create a Channel for this topic and publish the content
        PubSubChannel* pubSubChannel = new PubSubChannel(topicName);
        if(pubSubChannel){
            channels.insert(std::make_pair(topicName,pubSubChannel));
            pubSubChannel->subscribe(socket,topicName);
        }
    }
    GlobalMutex::UnlockMutex("PubSubSystem");
}

void PubSubSystem::unsubscribe(int socket, string topicName) {
    GlobalMutex::LockMutex("PubSubSystem");

    channelsItr = channels.find(topicName);
    if(channelsItr != channels.end()){
        // If Channel is already created then publish the content to the subscribers if any
        PubSubChannel* pubSubChannel = channelsItr->second;
        if(pubSubChannel){
            pubSubChannel->unsubscribe(socket,topicName);
        }
    }
    GlobalMutex::UnlockMutex("PubSubSystem");
}

