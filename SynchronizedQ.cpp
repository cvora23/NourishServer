//
// Created by chivora on 1/25/18.
//
#include "SynchronizedQ.h"
#include "GlobalMutex.h"
#include <iostream>

//Need to actually "allocate" static member
pthread_mutex_t SynchronizedQ::mutex;
pthread_cond_t SynchronizedQ::condition;
queue< SynchronizedQItem > SynchronizedQ::mQueue;
SynchronizedQ* SynchronizedQ::m_pInstance = NULL;

SynchronizedQ::SynchronizedQ() {

}

SynchronizedQ* SynchronizedQ::Instance() {

    if (m_pInstance == NULL){
        GlobalMutex::LockMutex("SynchronizedQ");
        if(m_pInstance == NULL){
            m_pInstance = new SynchronizedQ;
            InitMutexAndCondition();
        }
        GlobalMutex::UnlockMutex("SynchronizedQ");
    }

    return m_pInstance;
}

int SynchronizedQ::InitMutexAndCondition() {

    if(pthread_mutex_init(&SynchronizedQ::mutex, NULL) < 0) {
        cerr << "Error while initializing mutex" << endl;
        return -1;
    }
    if(pthread_cond_init(&SynchronizedQ::condition, NULL) < 0) {
        cerr << "Error while initializing condition" << endl;
        return -1;
    }
    cout << "SynchronizedQ Mutex and Condition initialized." << endl;
    return 0;
}

void SynchronizedQ::push(int socket,TopicName topicName,TopicContent topicContent)
{
    LockMutex("SynchronizedQ Push");
    mQueue.push(std::make_pair(socket,std::make_pair(topicName,topicContent)));
    Signal();
    UnlockMutex("SynchronizedQ Push");
}

const SynchronizedQItem SynchronizedQ::pop() {

    LockMutex("SynchronizedQ Pop");
    while (mQueue.size() == 0){
        Wait();
    }
    const SynchronizedQItem &mQueueItem = mQueue.front();
    mQueue.pop();
    UnlockMutex("SynchronizedQ Pop");
    return mQueueItem;
}

int SynchronizedQ::LockMutex(const char *identifier) {
    cout << identifier << " is trying to acquire the lock..." << endl;
    if(pthread_mutex_lock(&SynchronizedQ::mutex) == 0) {
        cout << identifier << " acquired the lock!" << endl;
        return 0;
    }
    else {
        cerr << "Error while " << identifier << " was trying to acquire the lock" << endl;
        return -1;
    }
}

int SynchronizedQ::UnlockMutex(const char *identifier) {
    cout << identifier << " is trying to release the lock..." << endl;
    if(pthread_mutex_unlock(&SynchronizedQ::mutex) == 0) {
        cout << identifier << " released the lock!" << endl;
        return 0;
    }
    else {
        cerr << "Error while " << identifier << " was trying to release the lock" << endl;
        return -1;
    }
}

int SynchronizedQ::Signal() {
    return pthread_cond_signal(&condition);
}

int SynchronizedQ::Wait() {
    return pthread_cond_wait(&condition,&mutex);
}

