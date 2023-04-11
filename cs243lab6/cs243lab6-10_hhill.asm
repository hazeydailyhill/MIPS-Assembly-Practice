#assembly code 
#next step -> load into SPIM MIPS Simulator
#------------------------------------------
# Data Declarations
.data
header: .asciiz "Student: Haley Hill (CS 243, ID: ?)\n"
#------------------------------------------
# text/code section
.text
.globl main 
main:
    #PRINT A CHARACTER STRING (char string argument is an address) 
    li $v0, 4      #load call code 4 into register $v0
    la $a0, header #load header value into $a0
    syscall

    #QUESTION 10 - Add 14, 8
    #load values into registers then add
    li $t0 14
    li $t1 8
    add $t2, $t0, $t1   #result of $t0 + $t1 is stored in $t2
    #printing result
    li $v0, 1     #load call code 4 into register $v0
    la $a0, ($t2) #load $t2 value into $a0
    syscall

    jr$31 
#-----
#Done, terminate program