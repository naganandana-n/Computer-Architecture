#PROGRAM TO FIND SUM OF DIGITS OF N INPUT

.data
msg0: .asciiz "Enter N = "
msg1: .asciiz "Sum of digits = "
.text
main:
li $v0,4
la $a0,msg0
syscall
li $v0,5
syscall
move $t0,$v0
li $t1,0
while:
    beqz $t0,exit
    div $t2,$t0,10
    mfhi $t3
    add $t1,$t1,$t3
    div $t0,$t0,10
    j while
exit:
    li $v0,4
    la $a0,msg1
    syscall
    li $v0,1
    move $a0,$t1
    syscall
    li $v0,10
    syscall
