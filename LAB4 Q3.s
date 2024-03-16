#PROGRAM TO TAKE TWO ARRAYS, ADD THEIR ELEMENTS AND STORE IN THIRD ARRAY

.data
length: .word 5
A: .word 1, 2, 3, 4, 5
B: .word 9, 6, 7, 8, 10
C: .space 20
msg0: .asciiz "C = "
msg1: .asciiz " "
.text
main:
    la $t0,A
    la $t1,B
    la $t2,C
    lw $t3,length
    li $t4,0
    li $v0,4
    la $a0,msg0
    syscall
loop:
    bge $t4,$t3,finish
    lw $s0,0($t0)
    lw $s1,0($t1)
    add $s2,$s0,$s1
    sw $s2,0($t2)
    li $v0,1
    move $a0,$s2
    syscall
    li $v0,4
    la $a0,msg1
    syscall
    addi $t0,$t0,4
    addi $t1,$t1,4
    addi $t2,$t2,4
    addi $t4,$t4,1
    j loop
finish:
    li $v0,10
    syscall
