#include <stdio.h>
#include <stdlib.h>

int main(int argc, char* argv[]) {

    if (argc != 2) {
        printf("no file provided.");
        exit(1);
    }
    
    FILE *fp = fopen(argv[1], "a");
    if (fp == NULL) {
        perror(argv[1]);
        exit(1);
    }
    
    // int ch = fgetc(fp);
    // while (ch != EOF) {
    //     printf("%c", ch);
    
    //     ch = fgetc(fp);
    // }
    
    
    // write to file from stdin
    int ch = fgetc(stdin);
    while (ch != '\n') {
        // fprintf(fp, "%c", ch);
        printf("%c", ch);
        fputc(ch, fp);
    
        ch = fgetc(stdin);
    }
    
    fclose(fp);
    
    
    ch = fgetc(stdin);
    while (ch != EOF) {
        // fprintf(fp, "%c", ch);
        printf("%c", ch);
        fputc(ch, fp);
    
        ch = fgetc(stdin);
    }
    
    printf("\n");
    
    return 0;
}