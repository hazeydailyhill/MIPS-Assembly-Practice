#assembly code 
#next step -> load into SPIM MIPS Simulator
#------------------------------------------
# Data Declarations
.data
header: .asciiz "Student: Haley Hill (CS 243, ID: ?)\n"
num1: .half 73
num2: .half 15
num3: .half 0
#------------------------------------------
# text/code section
.text
.globl main 
main:
    #PRINT A CHARACTER STRING (char string argument is an address) 
    li $v0, 4      #load call code 4 into register $v0
    la $a0, header #load header value into $a0
    syscall

    #QUESTION 12

    #multiply 73 and 15
    lh $t1, num1
    lh $t2, num2
    mul $t3, $t2, $t1 #storing 73*15 in $t3

    #storing the result into memory
    sh $t3, num3

    #Print the integer from memory 
    li $v0, 1
    lh $a0, num3
    syscall
    jr$31 
#-----
#Done, terminate program