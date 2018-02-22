//
// Created by chivora on 1/25/18.
//
#include <iostream>
#include "GlobalMutex.h"

using namespace std;
//Need to actually "allocate" static member
pthread_mutex_t GlobalMutex::mutex;

int GlobalMutex::InitMutex() {

    if(pthread_mutex_init(&GlobalMutex::mutex, NULL) < 0) {
        cerr << "Error while initializing mutex" << endl;
        return -1;
    }
    else {
        cout << "Mutex initialized." << endl;
        return 0;
    }
}
/*
    LockMutex():
		Blocks until mutex becomes available
*/
int GlobalMutex::LockMutex(const char *identifier) {
    cout << identifier << " is trying to acquire the lock..." << endl;
    if(pthread_mutex_lock(&GlobalMutex::mutex) == 0) {
        cout << identifier << " acquired the lock!" << endl;
        return 0;
    }
    else {
        cerr << "Error while " << identifier << " was trying to acquire the lock" << endl;
        return -1;
    }
}

int GlobalMutex::UnlockMutex(const char *identifier) {
    cout << identifier << " is trying to release the lock..." << endl;
    if(pthread_mutex_unlock(&GlobalMutex::mutex) == 0) {
        cout << identifier << " released the lock!" << endl;
        return 0;
    }
    else {
        cerr << "Error while " << identifier << " was trying to release the lock" << endl;
        return -1;
    }
}
