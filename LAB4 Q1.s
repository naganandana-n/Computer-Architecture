#PROGRAM TO ITERATE THROUGH AN ARRAY AND DISPLAY ITS CONTENTS

.data
length: .word 10
array: .word 1, 24, 56, 78, 90, 100, 323, 4326, 57456, 74554
newline: .asciiz "\n"
.text
main:
    lw $t0,length
    la $t1,array
    li $t2,0
loop:
    bge $t2,$t0,end
    lw $t3,0($t1)
    li $v0,1
    move $a0,$t3
    syscall
    li $v0,4
    la $a0,newline
    syscall
    addi $t2,$t2,1
    addi $t1,$t1,4
    j loop
end:
    li $v0,10
    syscall
