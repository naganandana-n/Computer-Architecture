#PROGRAM TO READ AN INTEGER AND DISPLAY TO CONSOLE

.data
msg: .asciiz "Enter an integer - "
.text
main:
li $v0,4
la $a0,msg
syscall
li $v0,5
syscall
move $a0,$v0
li $v0,1
syscall
li $v0,10
syscall