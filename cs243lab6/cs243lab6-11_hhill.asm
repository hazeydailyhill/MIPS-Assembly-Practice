#assembly code 
#next step -> load into SPIM MIPS Simulator
#------------------------------------------
# Data Declarations
.data
header: .asciiz "Student: Haley Hill (CS 243, ID: ?)\n"
fortyfive: .word 45
#------------------------------------------
# text/code section
.text
.globl main 
main:
    #PRINT A CHARACTER STRING (char string argument is an address) 
    li $v0, 4      #load call code 4 into register $v0
    la $a0, header #load header value into $a0
    syscall

    #QUESTION 11 
    #load 45 (word type) into register $t0
    lw $t0 fortyfive
    move $t1 $t0
    #printing result
    li $v0, 1
    la $a0, ($t1)

    jr$31
