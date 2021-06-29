.text
main:
    li $t3, 0
while:
    bge $t3, 10, endwhile

    mul $t1, $t3, 4
    lw $a0, numbers($t1)
    li $v0, 1
    syscall

    li $v0, 11
    li $a0, '\n'
    syscall

    addi $t3, $t3, 1
    j while
endwhile:

    li $v0, 0
    jr $ra


.data
numbers: .word 0, 1, 2, 3, 4, 5, 6, 7, 8, 9