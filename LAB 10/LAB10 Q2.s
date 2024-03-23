# Compute the average of a list of 5 integer numbers
# stored in memory and print the result to the user

.data
array: .word 43, 81, 64, 98, 89
length: .word 5
average: .float 0.0
msg0: .asciiz "Average = "
.text
main:
    la $t0,array
    lw $t1,length
    li $t2,0
    loop:
        lw $t3,0($t0)
        add $t2,$t2,$t3
        addi $t0,$t0,4
        addi $t1,$t1,-1
        bnez $t1,loop
    mtc1 $t2,$f0
    lw $t1,length
    mtc1 $t1,$f1
    div.s $f0,$f0,$f1
    swc1 $f0,averages
    li $v0,4
    la $a0,msg0
    syscall
    li $v0,2
    lwc1 $f12,average
    syscall
    li $v0,10
    syscall
