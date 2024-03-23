#PROGRAM TO CALCULATE SUM OF FIRST N NUMBERS AND DISPLAY TO CONSOLE

.data
msg0: .asciiz "Enter N = "
msg1: .asciiz "Sum = "
.text
main:
li $v0,4
la $a0,msg0
syscall
li $v0,5
syscall
move $t0,$v0
add $t1,$t0,1
mul $t2,$t1,$t0
li $t3,2
div $t2,$t2,$t3
li $v0,4
la $a0,msg1
syscall
li $v0,1
move $a0,$t2
syscall
li $v0,10
syscall
