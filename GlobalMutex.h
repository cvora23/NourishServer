//
// Created by chivora on 1/25/18.
//

#ifndef NOURISHSERVER_GLOBALMUTEX_H
#define NOURISHSERVER_GLOBALMUTEX_H

#include <pthread.h>

class GlobalMutex{

private:
    static pthread_mutex_t mutex;
public:
    static int InitMutex();
    static int LockMutex(const char *identifier);
    static int UnlockMutex(const char *identifier);
};

#endif //NOURISHSERVER_GLOBALMUTEX_H
