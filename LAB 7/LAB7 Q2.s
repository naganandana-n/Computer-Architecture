#PROGRAM TO IMPLEMENT LINEAR SEARCH USING PROCEDURES

.data
array: .word 13, 26, 39, 52, 65, 78, 91, 104, 117, 130
length: .word 10
msg0: .asciiz "Enter element to search - "
msg1: .asciiz "Element not found in array"
msg2: .asciiz "Element found in array at index "
.text
main:
    li $v0,4
    la $a0,msg0
    syscall
    li $v0,5
    syscall
    move $a2,$v0
    la $a0,array
    lw $a1,length
    jal linear_search
    beqz $v0,not_found
    li $v0,4
    la $a0,msg2
    syscall
    li $v0,1
    move $a0,$v1
    syscall
    j end_pgm
    not_found:
        li $v0,4
        la $a0,msg1
        syscall
    end_pgm:
        li $v0,10
        syscall
linear_search:
    li $v0,0
    li $v1,0
    loop:
        lw $t0,0($a0)
        beq $t0,$a2,success
        addi $a0,$a0,4
        addi $v1,$v1,1
        blt $v1,$a1,loop
        j failure
    success:
        li $v0,1
        j end_search
    failure:
        li $v0,0
    end_search:
        jr $ra
