# // sum 4 numbers using function calls

# #include <stdio.h>

# int sum4(int a, int b, int c, int d);
# int sum2(int x, int y);

.text
main:
main__prologue:
        addiu $sp, $sp, -4
        sw $ra, ($sp)

# int main(void) {
#     int z = sum4(11, 13, 17, 19);
        li $a0, 11
        li $a1, 13
        li $a2, 17
        li $a3, 19
        jal sum4        # update $ra to store the address of the next line

#     printf("%d\n", z);
        move $a0, $v0
        li $v0, 1
        syscall
        li $v0, 11
        li $a0, '\n'
        syscall
        
main__epilogue:
        # restore stack here
        lw $ra, ($sp)
        addiu $sp, $sp, 4
        
#     return 0;
        move $v0, $zero
        jr $ra
# }
sum4:
sum4__prologue:
        addiu $sp, $sp, -4
        sw $ra, ($sp)
        addiu $sp, $sp, -4
        sw $s0, ($sp)
        addiu $sp, $sp, -4
        sw $s1, ($sp)
        # alt version
        # addiu $sp, $sp, -12
        # sw $ra, 0($sp)
        # sw $s0, 4($sp)
        # sw $s1, 8($sp)
        
        
# int sum4(int a, int b, int c, int d) { 
#     int e = sum2(a, b);
        move $s0, $a2
        move $s1, $a3
        jal sum2
        # return value in $v0 = e
        
        move $a0, $s0
        move $a1, $s1
        move $s0, $v0 # s0 = e
#     int f = sum2(c, d);
        jal sum2
        # f = v0
        
        move $a0, $s0
        move $a1, $v0
#     return sum2(e, f);
        jal sum2
sum4__epilogue:
        lw $s1, ($sp)
        addiu $sp, $sp, 4
        lw $s0, ($sp)
        addiu $sp, $sp, 4
        lw $ra, ($sp)
        addiu $sp, $sp, 4
        
        # alt version
        # lw $s1, 8($sp)
        # lw $s0, 4($sp)
        # lw $ra, 0($sp)
        # addiu $sp, $sp, 12
        
        jr $ra
# }

# int sum2(int x, int y) {
sum2:
        add $v0, $a0, $a1
        jr $ra
#     return x + y;
# }