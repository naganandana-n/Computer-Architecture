#PROGRAM TO IMPLEMENT BINARY SEARCH RECURSIVELY

.data
array: .word 28, 35, 59, 60, 61, 79, 82, 86, 87, 97
length: .word 10
element: .word 0
msg0: .asciiz "Enter element to search for - "
msg1: .asciiz "Element found at index "
msg2: .asciiz "Element not found"
.text
main:
    li $v0,4
    la $a0,msg0
    syscall
    li $v0,5
    syscall
    sw $v0,element
    la $a0,array
    lw $a1,element
    li $a2,0
    lw $a3,length
    addi $a3,$a3,-1
    jal search
    move $t0,$v0
    li $t1,-1
    beq $t0,$t1,not_found
    li $v0,4
    la $a0,msg1
    syscall
    li $v0,1
    move $a0,$t0
    syscall
    j exit
    not_found:
        li $v0,4
        la $a0,msg2
        syscall
    exit:
        li $v0,10
        syscall
    search:
        addiu $sp,$sp,-4
        sw $ra,0($sp)
        ble $a2,$a3,L1
        li $v0,-1
        addiu $sp,$sp,4
        jr $ra
    L1:
        add $t0,$a2,$a3
        srl $t0,$t0,1
        sll $t1,$t0,2
        lw $t2,array($t1)
        beq $a1,$t2,equal
        blt $a1,$t2,lower
        addi $a2,$t0,1
        jal search
        lw $ra,0($sp)
        addiu $sp,$sp,4
        jr $ra
    equal:
        move $v0,$t0
        addiu $sp,$sp,4
        jr $ra
    lower:
        addi $a3,$t0,-1
        jal search
        lw $ra,0($sp)
        addiu $sp,$sp,4
        jr $ra
