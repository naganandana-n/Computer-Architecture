#PROGRAM TO CALCULATE ax^2+bx+c WITH USER-INPUT x IN SINGLE PRECISION FLOATING-POINT

.data
x: .float 0.0
a_: .float 2.0
b_: .float 3.0
c_: .float 4.0
result: .float 0.0
msg0: .asciiz "Enter x - "
msg1: .asciiz "ax^2+bx+c = "
.text
main:
    li $v0,4
    la $a0,msg0
    syscall
    li $v0,6
    syscall
    swc1 $f0,x
    lwc1 $f1,a_
    lwc1 $f2,b_
    lwc1 $f3,c_
    mul.s $f4,$f0,$f0
    mul.s $f4,$f4,$f1
    mul.s $f2,$f2,$f0
    add.s $f4,$f4,$f2
    add.s $f4,$f4,$f3
    swc1 $f4,result
    li $v0,4
    la $a0,msg1
    syscall
    li $v0,2
    lwc1 $f12,result
    syscall
    li $v0,10
    syscall
