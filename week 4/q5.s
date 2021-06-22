# #include <stdio.h>
.text
main:
# int main(void) {
int x = 24
    li $t0, 24
for_q5:
# for (; x < 42;) {
    # if (x >= 42) goto endfor_q5;
    li $t1, 42
    bge $t0, $t1, endfor_q5;
    printf("%d\n",x);
    # x += 3;
    addi $t0, $t0, 3
    # goto for_q5;
    b for_q5
endfor_q5:
}
# }

.data