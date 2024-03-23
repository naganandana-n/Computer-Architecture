#PROGRAM TO READ A STRING AND DISPLAY TO CONSOLE

.data
msg: .asciiz "Enter a string - "
.text
main:
li $v0,4
la $a0,msg
syscall
li $v0,8
la $a0,0($a0)
li $a1,256
syscall
li $v0,4
syscall
li $v0,10
syscall
