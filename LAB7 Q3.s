#PROGRAM TO PRINT FIBONACCI SERIES USING PROCEDURES

.data
msg0: .asciiz "Enter the number of terms - "
msg1: .asciiz "Fibonacci Series - "
msg2: .asciiz " "
.text
main:
    li $v0,4
    la $a0,msg0
    syscall
    li $v0,5
    syscall
    move $s0,$v0
    li $t0,0
    li $t1,1
    li $v0,4
    la $a0,msg1
    syscall
    li $v0,1
    move $a0,$t0
    syscall
    li $v0,4
    la $a0,msg2
    syscall
    li $v0,1
    move $a0,$t1
    syscall
    li $v0,4
    la $a0,msg2
    syscall
    jal fibonacci
    li $v0,10
    syscall
fibonacci:
    addi $s0,$s0,-2
    li $t0,0
    li $t1,1
    loop:
        add $t2,$t0,$t1
        li $v0,1
        move $a0,$t2
        syscall
        li $v0,4
        la $a0,msg2
        syscall
        move $t3,$t1
        move $t1,$t2
        move $t0,$t3
        addi $s0,$s0,-1
        bnez $s0,loop
        jr $ra
