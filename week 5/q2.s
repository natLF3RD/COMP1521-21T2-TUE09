.text
main:
    li $t0, 0

do:
    addi $t0, $t0, 1

    li $v0, 1
    move $a0, $t0
    syscall

    li $v0, 11
    li $a0, '\n'
    syscall

while:
    blt $t0, 10, do

    li $v0, 0
    jr $ra

.data
    label: .blah