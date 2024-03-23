#PROGRAM TO EVALUATE GIVEN ARITHMETIC EXPRESSION

.data
msg0: .asciiz "Enter a = "
msg1: .asciiz "Enter b = "
msg2: .asciiz "Enter c = "
msg3: .asciiz "Enter d = "
msg4: .asciiz "Enter e = "
msg5: .asciiz "a * b / c % d + e = "
.text
main:
li $v0,4
la $a0,msg0
syscall
li $v0,5
syscall
move $t0,$v0
li $v0,4
la $a0,msg1
syscall
li $v0,5
syscall
move $t1,$v0
li $v0,4
la $a0,msg2
syscall
li $v0,5
syscall
move $t2,$v0
li $v0,4
la $a0,msg3
syscall
li $v0,5
syscall
move $t3,$v0
li $v0,4
la $a0,msg4
syscall
li $v0,5
syscall
move $t4,$v0
div $t2,$t2,$t3
mfhi $t2
div $t1,$t1,$t2
mflo $t1
mul $t0,$t0,$t1
add $t0,$t0,$t4
li $v0,4
la $a0,msg5
syscall
li $v0,1
move $a0,$t0
syscall
li $v0,10
syscall
