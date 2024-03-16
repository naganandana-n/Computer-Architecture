#PROGRAM TO PRINT FLOAT AND DOUBLE VARIABLES IN MEMORY

.data
no1: .float 3.2
no2: .double 0.0002
newline: .asciiz "\n"
.text
main:
    li $v0,2
    lwc1 $f12,no1
    syscall
    li $v0,4
    la $a0,newline
    syscall
    li $v0,3
    ldc1 $f12,no2
    syscall
    li $v0,10
    syscall
