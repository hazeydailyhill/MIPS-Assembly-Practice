#assembly code 
#next step -> load into SPIM MIPS Simulator
#------------------------------------------
# Data Declarations
.data
header: .asciiz "Student: Haley Hill (CS 243, ID: ?)\n"
prompt: .asciiz "Please enter a number:"
resultmessage: .word 0
printresult: .asciiz "The number you entered is:"
#------------------------------------------
# text/code section
.text
.globl main 
main:
    #PRINT A CHARACTER STRING (char string argument is an address) 
    li $v0, 4      #load call code 4 into register $v0
    la $a0, header #load header value into $a0
    syscall

    #QUESTION 5 - Print a character string
    li $v0, 4
    la $a0, prompt
    syscall

    #QUESTION 6 - Read Integer
    li $v0, 5              #load call code 5 into register $v0
    syscall

    #QUESTION 7 - Store Result
    sw $v0, resultmessage  #store word from $v0 into resultmessage

    #QUESTION 8 - Print a message that the result will be printed
    li $v0, 4
    la $a0, printresult
    syscall

    #QUESTION 9 - Print the integer from memory 
    li $v0, 1
    lw $a0, resultmessage
    syscall

    jr$31 
#-----
#Done, terminate program
