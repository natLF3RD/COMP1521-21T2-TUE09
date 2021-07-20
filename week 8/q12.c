#include <stdlib.h>
#include <string.h>
#include <stdio.h>

int main() {
    char* path = getenv("HOME");

    int diary_path_len = strlen(path) + 7 + 1;
    char* diary_path = malloc(diary_path_len * sizeof(char));
    snprintf(diary_path, diary_path_len, "%s/.diary", path);

    FILE* fp = fopen(diary_path, "r");
    if (fp == NULL) {
        perror("failed to open the diary");
        exit(1);
    }


    int c = fgetc(fp);
    while (c != EOF) {
        printf("%c", c);
        c = fgetc(fp);
    }

    fclose(fp);
    return 0;
}