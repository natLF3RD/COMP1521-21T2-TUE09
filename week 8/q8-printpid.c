
#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>


int main(argc, argv) {

    pid_t pid = getpid();
    printf("%d\n", pid);
    
    return 0;
}