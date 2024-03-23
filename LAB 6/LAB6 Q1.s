#PROGRAM TO FIND LENGTH OF STRING IN MEMORY AND DISPLAY TO CONSOLE

.data
msg: .asciiz "My name is Zubair"
msg0: .asciiz "Length of string - "
.text
main:
    la $a0,msg
    li $t0,0
loop:
    lb $t1,0($a0)
    beqz $t1,end
    addi $t0,$t0,1
    addi $a0,$a0,1
    j loop
end:
    la $a0,msg0
    li $v0,4
    syscall
    li $v0,1
    move $a0,$t0
    syscall
    li $v0,10
    syscall
