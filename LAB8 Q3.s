#PROGRAM TO CALCULATE SUM OF FIRST N NATURAL NUMBERS USING RECURSION

.data
N: .word 0
sum: .word 0
msg0: .asciiz "Enter N - "
msg1: .asciiz "Sum of first N natural numbers - "
.text
main:
    li $v0,4
    la $a0,msg0
    syscall
    li $v0,5
    syscall
    sw $v0,N
    lw $a0,N
    jal calculate_sum
    sw $v0,sum
    li $v0,4
    la $a0,msg1
    syscall
    li $v0,1
    lw $a0,sum
    syscall
    li $v0,10
    syscall
    calculate_sum:
        addi $sp,$sp,-8
        sw $ra,4($sp)
        sw $a0,0($sp)
        bnez $a0,L1
        li $v0,0
        j base
    L1:
        addi $a0,$a0,-1
        jal calculate_sum
        lw $a0,0($sp)
        add $v0,$v0,$a0
    base:
        lw $ra,4($sp)
        addi $sp,$sp,8
        jr $ra
