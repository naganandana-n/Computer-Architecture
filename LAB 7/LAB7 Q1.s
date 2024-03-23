#PROGRAM TO ADD, SUBTRACT, MULTIPLY AND DIVIDE TWO NUMBERS USING PROCEDURES

.data
msg0: .asciiz "Enter first number - "
msg1: .asciiz "Enter second number - "
msg2: .asciiz "Sum of numbers = "
msg3: .asciiz "\nDifference of numbers = "
msg4: .asciiz "\nProduct of numbers = "
msg5: .asciiz "\nQuotient of numbers = "
.text
main:
    li $v0,4
    la $a0,msg0
    syscall
    li $v0,5
    syscall
    move $s0,$v0
    li $v0,4
    la $a0,msg1
    syscall
    li $v0,5
    syscall
    move $s1,$v0
    jal addd
    jal subtract
    jal multiply
    jal divide
    li $v0,10
    syscall
addd:
    li $v0,4
    la $a0,msg2
    syscall
    add $a0,$s0,$s1
    li $v0,1
    syscall
    jr $ra
subtract:
    li $v0,4
    la $a0,msg3
    syscall
    sub $a0,$s0,$s1
    li $v0,1
    syscall
    jr $ra
multiply:
    li $v0,4
    la $a0,msg4
    syscall
    mul $a0,$s0,$s1
    li $v0,1
    syscall
    jr $ra
divide:
    li $v0,4
    la $a0,msg5
    syscall
    div $s0,$s1
    mflo $a0
    li $v0,1
    syscall
    jr $ra
