#include <unistd.h>
#include <stdio.h>

int main() {
    pid_t pid = getpid();
    printf("%d\n", pid);

    char* argv_new[2];
    argv_new[0] = "./printpid";
    argv_new[1] = NULL;

    char* envp_new[1];
    envp_new[0] = NULL;

    execve("./printpid", envp_new, argv_new);
}