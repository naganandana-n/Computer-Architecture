#PROGRAM TO INPUT ELECTRICITY UNITS USED AND CALCULATE TOTAL BILL

.data
units: .float 0.0
amount: .float 0.0
total_amount: .float 0.0
msg0: .asciiz "Enter number of electricity units - "
msg1: .asciiz "Total Electricity Bill - "
.text
main:
    li $v0,4
    la $a0,msg0
    syscall
    li $v0,6
    syscall
    swc1 $f0,units
    li.s $f1,50.0
    li.s $f2,150.0
    li.s $f3,250.0
    c.lt.s $f0,$f1
    bc1t L1
    c.lt.s $f0,$f2
    bc1t L2
    c.lt.s $f0,$f3
    bc1t L3
    j L4
    L1:
        lwc1 $f0,units
        li.s $f1,0.5
        mul.s $f0,$f0,$f1
        swc1 $f0,amount
        j end
    L2:
        lwc1 $f0,units
        li.s $f1,50.0
        li.s $f2,0.75
        li.s $f3,25.0
        sub.s $f0,$f0,$f1
        mul.s $f0,$f0,$f2
        add.s $f0,$f0,$f3
        swc1 $f0,amount
        j end
    L3:
        lwc1 $f0,units
        li.s $f1,150.0
        li.s $f2,1.2
        li.s $f3,100.0
        sub.s $f0,$f0,$f1
        mul.s $f0,$f0,$f2
        add.s $f0,$f0,$f3
        swc1 $f0,amount
        j end
    L4:
        lwc1 $f0,units
        li.s $f1,250.0
        li.s $f2,1.5
        li.s $f3,220.0
        sub.s $f0,$f0,$f1
        mul.s $f0,$f0,$f2
        add.s $f0,$f0,$f3
        swc1 $f0,amount
        j end
    end:
        lwc1 $f0,amount
        li.s $f1,0.2
        mul.s $f1,$f1,$f0
        add.s $f0,$f0,$f1
        swc1 $f0,total_amount
        li $v0,4
        la $a0,msg1
        syscall
        li $v0,2
        lwc1 $f12,total_amount
        syscall        
        li $v0,10
        syscall
