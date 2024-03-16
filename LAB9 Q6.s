# Find the sum of an array of single precision floating point values stored in memory

.data
msg0: .asciiz "Sum of elements in array - "
array: .float 3.7, 8.2, 5.9, 1.4, 6.6, 2.3, 9.7, 4.8, 7.1
length: .word 9
sum: .float 0.0
.text
main:
    lw $t0,length
    la $t1,array
    lwc1 $f0,sum
    loop:
        blez $t0,end
        l.s $f1,0($t1)
        add.s $f0,$f0,$f1
        addi $t1,$t1,4
        addi $t0,$t0,-1
        j loop
    end:
        swc1 $f0,sum
        li $v0,4
        la $a0,msg0
        syscall
        li $v0,2
        lwc1 $f12,sum
        syscall
        li $v0,10
        syscall
