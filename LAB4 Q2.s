#PROGRAM TO IMPLEMENT LINEAR SEARCH

.data
length: .word 10
array: .word 1, 24, 56, 78, 90, 100, 323, 4326, 57456, 74554
msg0: .asciiz "Enter element to search for - "
msg1: .asciiz "Element found at position "
msg2: .asciiz "Element not found in array"
.text
main:
    li $v0,4
    la $a0,msg0
    syscall
    li $v0,5
    syscall
    move $t0,$v0
    li $t1,0
    li $t3,0
loop:
    lw $t2,length
    bge $t3,$t2,failure
    lw $t2,array($t1)
    beq $t0,$t2,success
    addi $t1,$t1,4
    addi $t3,$t3,1
    j loop
success:
    li $v0,4
    la $a0,msg1
    syscall
    move $a0,$t3
    li $v0,1
    syscall
    j finish
failure:
    li $v0,4
    la $a0,msg2
    syscall
finish:
    li $v0,10
    syscall
