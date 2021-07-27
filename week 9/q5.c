#include <sys/stat.h>
#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>
#include <stdlib.h>

int main (int argc, char* argv[]) {
    
    for (int i=1; i<argc; i++) {
        // got stat info
        struct stat sb;
        if (stat(argv[i], &sb) == -1) {
            perror(argv[i]);
            exit(1);
        }
        // check is publically writable.
        if (sb.st_mode & S_IWOTH) {
            printf("removing public write from %s", argv[i]);
            // then change it to not publically writable
            mode_t new_mode = sb.st_mode & ~ S_IWOTH;
            
            if (chmod(argv[i], new_mode) == -1) {
                perror(argv[i]);
                exit(1);    
            }
            
            
        } else {
            printf("%s is not publically writeable\n", argv[i]);
            
        }
        
        
        
    }
    
    return 0;
}
