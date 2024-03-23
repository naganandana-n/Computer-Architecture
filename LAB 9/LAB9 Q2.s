#PROGRAM TO TAKE INPUT OF FLOAT AND DOUBLE VALUES AND PRINT

.data
msg0: .asciiz "Enter float - "
msg1: .asciiz "Enter double - "
msg2: .asciiz "\n"
.text
main:
    li $v0,4
    la $a0,msg0
    syscall
    li $v0,6
    syscall
    mov.s $f12,$f0
    li $v0,4
    la $a0,msg1
    syscall
    li $v0,7
    syscall
    mov.d $f14,$f0
    li $v0,2
    syscall
    mov.s $f12,$f0
    li $v0,4
    la $a0,msg2
    syscall
    li $v0,3
    mov.d $f12,$f14
    syscall
    li $v0,10
    syscall
