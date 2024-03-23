#PROGRAM TO ADD TWO COMPLEX NUMBERS REPRESENTED USING SINGLE PRECISION FLOATING-POINT VALUES

.data
a1: .float 0.0
a2: .float 0.0
b1: .float 0.0
b2: .float 0.0
res1: .float 0.0
res2: .float 0.0
msg0: .asciiz "Enter a1 - "
msg1: .asciiz "Enter b1 - "
msg2: .asciiz "Enter a2 - "
msg3: .asciiz "Enter b2 - "
msg4: .asciiz "Sum of complex numbers (a1+ib1)+(a2+ib2) = "
msg5: .asciiz "+i"
.text
main:
    li $v0,4
    la $a0,msg0
    syscall
    li $v0,6
    syscall
    swc1 $f0,a1
    li $v0,4
    la $a0,msg1
    syscall
    li $v0,6
    syscall
    swc1 $f0,b1
    li $v0,4
    la $a0,msg2
    syscall
    li $v0,6
    syscall
    swc1 $f0,a2
    li $v0,4
    la $a0,msg3
    syscall
    li $v0,6
    syscall
    swc1 $f0,b2
    lwc1 $f0,a1
    lwc1 $f1,b1
    lwc1 $f2,a2
    lwc1 $f3,b2
    add.s $f0,$f0,$f2
    add.s $f1,$f1,$f3
    swc1 $f0,res1
    swc1 $f1,res2
    li $v0,4
    la $a0,msg4
    syscall
    li $v0,2
    lwc1 $f12,res1
    syscall
    li $v0,4
    la $a0,msg5
    syscall
    li $v0,2
    lwc1 $f12,res2
    syscall
    li $v0,10
    syscall
