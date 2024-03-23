# Sum the even numbers and odd numbers in a word array A and display the result to the user

.data
A: .word 2, 5, 8, 12, 7, 6, 11, 4, 3, 10
length: .word 10
msg0: .asciiz "Sum of even numbers - "
msg1: .asciiz "Sum of odd numbers - "
.text
main:
    lw $t0,length
    la $t1,A
    li $t2,0
    li $t3,0
    li $t4,0
loop:
    bge $t4,$t0,end
    lw $t5,($t1)
    andi $t6,$t5,1
    beqz $t6,even
    add $t3,$t3,$t5
    j next
even:
    add $t2,$t2,$t5
next:
    addi $t1,$t1,4
    addi $t4,$t4,1
    j loop
end:
    li $v0,4
    la $a0,msg0
    syscall
    li $v0,1
    move $a0,$t2
    syscall
    li $v0,4
    la $a0,msg1
    syscall
    li $v0,1
    move $a0,$t3
    syscall
    li $v0,10
    syscall
