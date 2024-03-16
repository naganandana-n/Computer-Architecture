#PROGRAM TO TAKE RADIUS INPUT AND CALCULATE AREA OF CIRCLE 
#AND DISPLAY IN SINGLE PRECISION FLOATING-POINT

.data
msg0: .asciiz "Enter radius of circle - "
msg1: .asciiz "Area of circle - "
pi: .float 3.1415926535897924
radius: .float 0.0
area: .float 0.0
.text
main:
    li $v0,4
    la $a0,msg0
    syscall
    li $v0,6
    syscall
    swc1 $f0,radius
    lwc1 $f1,pi
    lwc1 $f2,radius
    mul.s $f3,$f1,$f2
    mul.s $f5,$f3,$f2
    swc1 $f5,area
    li $v0,4
    la $a0,msg1
    syscall
    li $v0,2
    lwc1 $f12,area
    syscall
    li $v0,10
    syscall
