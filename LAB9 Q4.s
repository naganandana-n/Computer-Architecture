#PROGRAM TO CONVERT FAHRENHEIT TO CELSIUS USING DOUBLE PRECISION FLOATING-POINT VALUES

.data
fahrenheit: .double 0.0
celsius: .double 0.0
msg0: .asciiz "Enter temperature in Fahrenheit - "
msg1: .asciiz "Temperature in Celsius - "
.text
main:
    li $v0,4
    la $a0,msg0
    syscall
    li $v0,7
    syscall
    sdc1 $f0,fahrenheit
    ldc1 $f2,fahrenheit
    li.d $f4,32.0
    sub.d $f2,$f2,$f4
    li.d $f4,5.0
    mul.d $f2,$f2,$f4
    li.d $f4,9.0
    div.d $f2,$f2,$f4
    sdc1 $f2,celsius
    li $v0,4
    la $a0,msg1
    syscall
    li $v0,3
    ldc1 $f12,celsius
    syscall
    li $v0,10
    syscall
