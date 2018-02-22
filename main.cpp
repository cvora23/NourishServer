#include <iostream>
#include <cinttypes>
#include "Server.h"

static bool str_to_uint16(const char *str, uint16_t *res)
{
    char *end;
    errno = 0;
    intmax_t val = strtoimax(str, &end, 10);
    if (errno == ERANGE || val < 0 || val > UINT16_MAX || end == str || *end != '\0')
        return false;
    *res = (uint16_t) val;
    return true;
}

int main(int argc, char *argv[]) {

    cout << "Running!" << endl;

    uint16_t portNo;
    Server *s;

    if(argc == 2){
        if (!str_to_uint16(argv[1], &portNo)) {
            fprintf(stderr, "conversion error\n");
            exit(2);
        }
        s = new Server(portNo);
    }else{
        s = new Server();
    }

    // Server Publish Topic Content Loop
    s->startPublishing();

    //Main loop
    s->AcceptAndDispatch();

    delete s;

    return 0;
}