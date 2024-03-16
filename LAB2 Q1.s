#PROGRAM TO ADD TWO NUMBERS

.data
str1: .asciiz "Enter b = "
str2: .asciiz "Enter c = "
str3: .asciiz "a = "
.text
main:
li $v0,4
la $a0,str1
syscall
li $v0,5
syscall
move $t0,$v0
li $v0,4
la $a0,str2
syscall
li $v0,5
syscall
move $t1,$v0
add $t2,$t0,$t1
li $v0,4
la $a0,str3
syscall
move $a0,$t2
li $v0,1
syscall
li $v0,10
syscall
