#PROGRAM TO COMPARE TWO FLOATING-POINT NUMBERS

.data
FP1: .float 0.0
FP2: .float 0.0
msg0: .asciiz "Enter first floating-point number - "
msg1: .asciiz "Enter second floating-point number - "
msg2: .asciiz "The numbers are equal"
msg3: .asciiz "The numbers are not equal"
.text
main:
    li $v0,4
    la $a0,msg0
    syscall
    li $v0,6
    syscall
    swc1 $f0,FP1
    li $v0,4
    la $a0,msg1
    syscall
    li $v0,6
    syscall
    swc1 $f0,FP2
    lwc1 $f0,FP1
    lwc1 $f1,FP2
    c.eq.s $f0,$f1
    bc1f not_equal
    li $v0,4
    la $a0,msg2
    syscall
    j end
    not_equal:
        li $v0,4
        la $a0,msg3
        syscall
    end:
        li $v0,10
        syscall
