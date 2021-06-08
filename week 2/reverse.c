/******************************************************************************

                            Online C Compiler.
                Code, Compile, Run and Debug C program online.
Write your code in this editor and press "Run" button to compile and execute it.

*******************************************************************************/

#include <stdio.h>
#define N_BITS 32

typedef unsigned int Word;

int main()
{
    printf("Hello World");

    return 0;
}


Word reverseBits(Word w) {
    Word mask = 0x0001;
    Word result = 0;
    
    
    for (int bit=0; bit<N_BITS; bit++) {
        mask = mask << 1;
        
        unsigned int curr_bit = mask & result;
        if (curr_bit != 0) {
            // set the value in the result.
            unsigned int new_bit = 1u << (32 -bit -1);
            // actually set the value in result.
            result = result | new_bit;
        }
    }
}
