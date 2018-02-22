//
// Created by chivora on 1/25/18.
//

#ifndef NOURISHSERVER_PUBSUBCHANNEL_H
#define NOURISHSERVER_PUBSUBCHANNEL_H

#include <string>
#include <unordered_map>

using namespace std;

typedef string TOPIC;

class PubSubChannel{

private:
    string topic;
    unordered_map<int,TOPIC> subscribers;
    unordered_map<int,TOPIC>::iterator subscribersItr;

public:
    PubSubChannel(const TOPIC &topic);
    PubSubChannel();
    virtual ~ PubSubChannel();

    void subscribe(int socket,TOPIC topic);
    void unsubscribe(int socket,TOPIC topic);
    void publish(string topic,string topicContent);

    const TOPIC &getTopic() const;
    void setTopic(const TOPIC &topic);

};

#endif //NOURISHSERVER_PUBSUBCHANNEL_H
