#------------------------------------------
# Data Declarations
.data
header: .asciiz "Student: Haley Hill (CS 243, ID: 200142467)\n"
startmsg: .asciiz "------ START Program #2 ------\n"
endmsg: .asciiz "\n------ END Program #2 ------"
message1: .asciiz "enter a number: "
message2: .asciiz "enter a number to be subtracted: "
resultmessage: .asciiz "Subtraction result: "
val1: .word 0
val2: .word 0
val3: .word 0
#------------------------------------------
# text/code section
.text
.globl main 
main:
    #write a program that takes two values from the user and perform 
    #subtraction between them and then print the result

    #print header 
    li $v0, 4      
    la $a0, header
    syscall

    #print startmsg
    li $v0, 4      
    la $a0, startmsg
    syscall
    #--------PROGRAM 2---------
    #print message1
    li $v0, 4
    la $a0, message1
    syscall 

    #getting val1 
    li $v0, 5
    syscall
    sw $v0, val1

    #print message2
    li $v0, 4
    la $a0, message2
    syscall 

    #getting val2
    li $v0, 5
    syscall
    sw $v0, val2

    #subtract
    lw $t1, val1
    lw $t2, val2
    sub $t3, $t1, $t2  #result into register $t3 

    #store the result into memory
    sh $t3, val3

    #print resultmessage
    li $v0, 4
    la $a0, resultmessage
    syscall 

    #print the result from memory 
    li $v0, 1
    lh $a0, val3
    syscall 

    #------------
    #print endmsg 
    li $v0, 4      
    la $a0, endmsg
    syscall
    jr$31
#-----
#Done, terminate program
