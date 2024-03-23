#PROGRAM TO FIND LARGEST AND SMALLEST ELEMENTS IN AN ARRAY AND DISPLAY TO CONSOLE

.data
length: .word 10
A: .word 10, 14, 6, 8, 2, 12, 7, 9, 11, 3
msg0: .asciiz "Largest Element - "
msg1: .asciiz "\nSmallest Element - "
.text
main:
    lw $t0,length
    la $t1,A
    lw $t2,0($t1)
    lw $t3,0($t1)
    li $t4,1
loop:
    bge $t4,$t0,end
    lw $t5,($t1)
    bgt $t5,$t2,update_largest
    blt $t5,$t3,update_smallest
    addi $t1,$t1,4
    addi $t4,$t4,1
    j loop
update_largest:
    move $t2,$t5
    j next
update_smallest:
    move $t3,$t5
    j next
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
