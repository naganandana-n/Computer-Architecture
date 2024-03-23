#PROGRAM TO ADD ELEMENTS OF AN ARRAY AND DISPLAY SUM TO CONSOLE

.data
A: .word 4, 6, 7, 10, 3
msg0: .asciiz "Sum of elements - "
sum: .space 4
.text
main:
    la $t0,A
    li $t1,0
    li $t2,0
    li $t3,5
loop:
    lw $t4,0($t0)
    add $t1,$t1,$t4
    addi $t0,$t0,4
    addi $t2,$t2,1
    bne $t2,$t3,loop
    j end
end:
    li $v0,4
    la $a0,msg0
    syscall
    li $v0,1
    move $a0,$t1
    syscall
    li $v0,10
    syscall
