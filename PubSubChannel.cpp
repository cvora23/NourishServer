//
// Created by chivora on 1/25/18.
//
#include "PubSubChannel.h"
#include "GlobalMutex.h"
#include "SynchronizedQ.h"

PubSubChannel::PubSubChannel(const string &topic) : topic(topic) {

}

PubSubChannel::PubSubChannel() {

}

PubSubChannel::~PubSubChannel() {

}

void PubSubChannel::subscribe(int socket, TOPIC topic) {
    if(subscribers.find(socket) == subscribers.end()){
        subscribers.insert(std::make_pair(socket,topic));
    }
}

void PubSubChannel::unsubscribe(int socket, TOPIC topic) {
    if(subscribers.find(socket) != subscribers.end()){
        subscribers.erase(socket);
    }
}

void PubSubChannel::publish(string topicName,string topicContent) {
    for(subscribersItr = subscribers.begin();subscribersItr != subscribers.end();subscribersItr++){
        // Add Publish Messages to Producer Consumer Queue that Server will keep sending in some other thread
        int socket = subscribersItr->first;
        SynchronizedQ::Instance()->push(socket,topicName,topicContent);
    }
}

const string &PubSubChannel::getTopic() const {
    return topic;
}

void PubSubChannel::setTopic(const string &topic) {
    PubSubChannel::topic = topic;
}
