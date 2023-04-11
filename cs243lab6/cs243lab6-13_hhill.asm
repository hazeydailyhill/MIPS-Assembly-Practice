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

    #QUESTION 13
    #Read Integer
    li $v0, 5    #load call code 5 into register $v0
    syscall

    #Square the Integer
    mul $t0, $v0, $v0

    #printing result
    li $v0, 1     #load call code 4 into register $v0
    la $a0, ($t0) #load $t0 value into $a0
    syscall

    jr$31 
#-----
#Done, terminate program