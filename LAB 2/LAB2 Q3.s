#PROGRAM TO TAKE N INPUT AND CALCULATE ITS FACTORIAL

.data
msg0: .asciiz "Enter N = "
msg1: .asciiz "Factorial of N = "
.text
main:
li $v0,4
la $a0,msg0
syscall
li $v0,5
syscall
move $t0,$v0
li $t1,1
li $t2,1
loop:
    mul $t1,$t1,$t2
    add $t2,$t2,1
    bne $t2,$t0,loop
mul $t1,$t1,$t0
li $v0,4
la $a0,msg1
syscall
li $v0,1
move $a0,$t1
syscall
li $v0,10
syscall
