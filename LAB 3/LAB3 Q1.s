# To read a number N from input and find if the number is odd or even.
# Display the result to the user.

.data
msg0: .asciiz "Enter N = "
msg1: .asciiz "N is odd"
msg2: .asciiz "N is even"
.text
main:
li $v0,4
la $a0,msg0
syscall
li $v0,5
syscall
move $t0,$v0
div $t0,$t0,2
mfhi $t1
beqz $t1,even
j odd
odd:
    li $v0,4
    la $a0,msg1
    syscall
    j exit
even:
    li $v0,4
    la $a0,msg2
    syscall
    j exit
exit:
    li $v0,10
    syscall
