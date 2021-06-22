#include <stdio.h>

int main(void) {
    #     int x, y;
    # x-> t0, y -> t1
#     printf("Enter a number: ");
    li $v0, 4
    la $a0, prompt
    syscall
    
#     scanf("%d", &x);
    li $v0, 5
    syscall
    move $t0, $v0

if_q3:
    # if (x <= 46340) goto else_q3;
    li $t2, 46430
    ble $t0, $t2, else_q3
    # {
    # printf("square too big for 32 bits\n");
    li $v0, 4
    la $a0, error
    syscall
   # goto endif_q3;
    b endif_q3
else_q3:
    # } else {
        
#     y = x * x;
    mul $t1, $t0, $t0
    
#     printf("%d\n", y);
    li $v0, 1 
    move $a0, $t1
    syscall
    li $v0, 11
    li $a0, '\n'
    syscall
endif_q3:
    # }

    return 0;
}
.data
prompt: .asciiz "Enter a number: "
error: .asciiz "square too big for 32 bits\n"
