# // print the square of a number
# #include <stdio.h>
.text
main:
# int main(void) {
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

#     y = x * x;
    mul $t1, $t0, $t0
    
#     printf("%d\n", y);
    li $v0, 1 
    move $a0, $t1
    syscall
    li $v0, 11
    li $a0, '\n'
    syscall
#     return 0;
    move $v0, $zero
    # OR
    li $v0, 0
    jr $ra
# }
.data

prompt: .asciiz "Enter a number: "