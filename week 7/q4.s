# #include <stdio.h>

# char flag[6][12] = {
#     {'#', '#', '#', '#', '#', '.', '.', '#', '#', '#', '#', '#'},
#     {'#', '#', '#', '#', '#', '.', '.', '#', '#', '#', '#', '#'},
#     {'.', '.', '.', '.', '.', '.', '.', '.', '.', '.', '.', '.'},
#     {'.', '.', '.', '.', '.', '.', '.', '.', '.', '.', '.', '.'},
#     {'#', '#', '#', '#', '#', '.', '.', '#', '#', '#', '#', '#'},
#     {'#', '#', '#', '#', '#', '.', '.', '#', '#', '#', '#', '#'}
# };

# define N_COLS 1
N_COLS = 12
N_ROWS = 6
CHAR_SIZE = 1

.text
main:
# int main(void) {

#     for (int row = 0; row < 6; row++) {
        move $t0, $zero
main__for_1:
        bge $t0, 6, main__endfor_1
        
#         for (int col = 0; col < 12; col++)
        move $t1, $zero
main__for_2:
        bge $t1, 12, main__endfor_2
#             printf ("%c", flag[row][col]);
        # flag[row][col]
        # row_size = N_COLS*sizeof(element)
        li $t2, CHAR_SIZE
        mul $t2, $t2, N_COLS
        # row_offset = row*row_size
        mul $t3, $t0, $t2
        # col_offset = sizeof(element)*col
        mul $t4, $t1, CHAR_SIZE
        # address = row_offset + col_offset
        add $t4, $t3, $t4
        
        lb $a0, flag($t4)
        li $v0, 11
        syscall
#     }
        addi $t1, $t1, 1
        j main__for_2
main__endfor_2:

#         printf ("\n");
        li $v0, 11
        li $a0, '\n'
        syscall

        addi $t0, $t0, 1
        j main__for_1
main__endfor_1:

        # return 0;
        move $v0, $zero
        #  or li $v0, 0
        jr $ra
# }


# flag[2][3]

# address = 2*row_size + col_offset
# row_size = 12*1
# col_offset = 1*3

# flag[row][col]
# row_size = N_COLS*sizeof(element)
# row_offset = row*row_size
# col_offset = sizeof(element)*col
# address = row_offset + col_offset

.data
flag: 
    .byte '#' '#' '#' '#' '#' '.' '.' '#' '#' '#' '#' '#'
    .byte '#' '#' '#' '#' '#' '.' '.' '#' '#' '#' '#' '#'
    .byte '.' '.' '.' '.' '.' '.' '.' '.' '.' '.' '.' '.'
    .byte '.' '.' '.' '.' '.' '.' '.' '.' '.' '.' '.' '.'
    .byte '#' '#' '#' '#' '#' '.' '.' '#' '#' '#' '#' '#'
    .byte '#' '#' '#' '#' '#' '.' '.' '#' '#' '#' '#' '#'
    