#PROGRAM TO FIND POWER OF A NUMBER USING RECURSION

.data
base: .word 0
exponent: .word 0
result: .word 0
msg0: .asciiz "Enter base - "
msg1: .asciiz "Enter exponent - "
msg2: .asciiz "Result - "
.text
main:
    li $v0,4
    la $a0,msg0
    syscall
    li $v0,5
    syscall
    sw $v0,base
    li $v0,4
    la $a0,msg1
    syscall
    li $v0,5
    syscall
    sw $v0,exponent
    lw $a0,base
    lw $a1,exponent
    jal power
    sw $v0,result
    li $v0,4
    la $a0,msg2
    syscall
    li $v0,1
    lw $a0,result
    syscall
    li $v0,10
    syscall
    power:
        addi $sp,$sp,-8
        sw $ra,4($sp)
        sw $a0,0($sp)
        addi $t1,$zero,1
        bgt $a1,$t1,L1
        move $v0,$a0
        addi $sp,$sp,8
        jr $ra
    L1:
        addi $a1,$a1,-1
        jal power
        lw $a0,0($sp)
        mul $v0,$a0,$v0
        lw $ra,4($sp)
        addi $sp,$sp,8
        jr $ra
