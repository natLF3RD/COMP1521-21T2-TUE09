#include <stdio.h>
void recurse(int i);

int main(void)
{
    int nums[] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
//     for (int i = 0; i < 10; i++) {
//         printf("%d\n", nums[i]);
//     }
    
    recurse(0);
    return 0;
}

void recurse(int i) {
    // check to exit / exit condition -> return once it fails
    if (i >= 10) return;
    
    // do stuff
    printf("%d\n", nums[i]);
    
    // change any variables to reach exit eventually
    i++;
    // recurse / call self again
    recurse(i);
}






// for loop
int i=0;
while (i<10) {
    // do stuff
    i++;
}
int i;
for (i=0; i<10; i++) {
    
}
