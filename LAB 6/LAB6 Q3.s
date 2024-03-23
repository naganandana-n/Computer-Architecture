#PROGRAM TO CHECK WHETHER GIVEN STRING IS A PALINDROME OR NOT

.data
msg0: .asciiz "malayalam"
msg1: .asciiz "Given string is a palindrome"
msg2: .asciiz "Given string is not a palindrome"
length: .word 9
.text
main:
    la $a0,msg0
    lw $t0,length
    li $t1,0
    loop:
        add $t2,$a0,$t1
        add $t3,$a0,$t0
        addi $t3,$t3,-1
        sub $t3,$t3,$t1
        lb $t4,0($t2)
        lb $t5,0($t3)
        bne $t4,$t5,failure
        addi $t1,$t1,1
        blt $t1,$t0,loop
    success:
        li $v0,4
        la $a0,msg1
        syscall
        j end
    failure:
        li $v0,4
        la $a0,msg2
        syscall
        j end
    end:
        li $v0,10
        syscall
