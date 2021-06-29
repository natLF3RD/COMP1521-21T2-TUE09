.text
main:
    li $t3, 0
while:
    bge $t3, 10, endwhile

    li $v0, 5
    syscall
    # now v0 has our scanned value.
    la $t0, numbers
    mul $t1, $t3, 4
    add $t2, $t1, $t0
    sw $v0, ($t2)

    # alt way of writing
    # mul $t1, $t3, 4
    #sw $v0, numbers($t1)


    addi $t3, $t3, 1
    j while
endwhile:

    li $v0, 0
    jr $ra


.data
numbers: .word 0, 0, 0, 0, 0, 0, 0, 0, 0, 0