#include <stdlib.h>

int main () {
    int  x;  // a variable located at address 1000 with initial value 0
    int *p;  // a variable located at address 2000 with initial value 0
    

    p = &x;         // a
    // p=1000
    
    x = 5;          // b
    // x = 5
    
    *p = 3;         // c
    //p=1000
    //x=3
    
    x = (int)p;     // d
    // x=1000
    // p is the same

    x = (int)&p;    // e
    // x= 2000

    p = NULL;       // f
    // p=NULL

    *p = 1;         // g
    // error! cant dereference null ptr.

}
