#PROGRAM TO REVERSE A STRING AND DISPLAY TO MEMORY

.data
msg: .asciiz "My name is Naga"
msg0: .asciiz "Reversed String - "
rev_msg: .space 256
.text
main:
    la $t0,msg
    la $t1,rev_msg
    li $t2,0
loop1:
    lb $t3,($t0)
    beqz $t3,end
    addi $t0,$t0,1
    addi $t2,$t2,1
    j loop1
end:
    addi $t0,$t0,-1
    li $t4,0
    loop2:
        lb $t3,($t0)
        sb $t3,($t1)
        addi $t0,$t0,-1
        addi $t1,$t1,1
        addi $t4,$t4,1
        blt $t4,$t2,loop2
    li $v0,4
    la $a0,msg0
    syscall
    li $v0,4
    la $a0,rev_msg
    syscall
    li $v0,10
    syscall
