#PROGRAM TO CONCATENATE TWO GIVEN STRINGS AND DISPLAY RESULT

.data
str1: .asciiz "Hello "
str2: .asciiz "Naga"
str3: .space 256
msg0: .asciiz "Combined String - "
.text
main:
    la $t0,str1
    la $t1,str3
    loop1:
        lb $t2,($t0)
        beq $t2,$zero,close1
        sb $t2,($t1)
        addi $t0,$t0,1
        addi $t1,$t1,1
        j loop1
    close1:
        la $t0,str2
    loop2:
        lb $t2,($t0)
        beq $t2,$zero,close2
        sb $t2,($t1)
        addi $t0,$t0,1
        addi $t1,$t1,1
        j loop2
    close2:
        li $v0,4
        la $a0,msg0
        syscall
        li $v0,4
        la $a0,str3
        syscall
        li $v0,10
        syscall
        
