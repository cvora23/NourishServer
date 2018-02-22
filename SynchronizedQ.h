//
// Created by chivora on 1/25/18.
//

#ifndef NOURISHSERVER_SYNCHRONIZEDQ_H
#define NOURISHSERVER_SYNCHRONIZEDQ_H

#include <string>
#include <queue>
#include <pthread.h>

using namespace std;

typedef string TopicName;
typedef string TopicContent;
typedef pair<TopicName,TopicContent>Topic;
typedef pair<int,Topic> SynchronizedQItem;

class SynchronizedQ{

public:

    static SynchronizedQ* Instance();

    void push(int socket,TopicName topicName,TopicContent topicContent);
    const SynchronizedQItem pop();

private:

    SynchronizedQ();
    SynchronizedQ(SynchronizedQ const&);
    SynchronizedQ& operator=(SynchronizedQ const&);
    static SynchronizedQ* m_pInstance;

    static int InitMutexAndCondition();
    static int LockMutex(const char *identifier);
    static int UnlockMutex(const char *identifier);
    static int Signal();
    static int Wait();

    static queue< SynchronizedQItem > mQueue;
    static pthread_mutex_t mutex;
    static pthread_cond_t condition;

};

#endif //NOURISHSERVER_SYNCHRONIZEDQ_H
