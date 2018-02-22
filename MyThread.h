//
// Created by chivora on 1/22/18.
//

#ifndef TESTPROJECT_MYTHREAD_H
#define TESTPROJECT_MYTHREAD_H

#include <iostream>
#include <string>
#include <pthread.h>
#include <unistd.h>

#include <cstdlib>

using namespace std;

class MyThread {
public:
    pthread_t tid;

public:
    MyThread();
    int Create(void *Callback, void *args);
    int Join();
};

#endif //TESTPROJECT_MYTHREAD_H
