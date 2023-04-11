#------------------------------------------
# Data Declarations
.data
header: .asciiz "Student: Haley Hill (CS 243, ID: 200142467)\n"
startmsg: .asciiz "------ START Program #1 ------\n"
endmsg: .asciiz "\n------ END Program #1 ------"
message1: .asciiz "Program #1: \n The result of 4 + 6 + 8 is: "
#------------------------------------------
# text/code section
.text
.globl main 
main:
    #adding the numbers 4, 6, 8

    #print header 
    li $v0, 4      
    la $a0, header
    syscall

    #print startmsg
    li $v0, 4      
    la $a0, startmsg
    syscall
    #--------PROGRAM 1---------
    # -- load values into registers then add --
    li $t0 4
    li $t1 6
    li $t2 8
    add $t1, $t0, $t1  #result of $t0 + $t1 is stored in $t1
    add $t2, $t2, $t1  #result of $t2 + $t1 is stored in $t2

    # -- printing message --
    li $v0, 4
    la $a0, message1
    syscall

    # -- printing result --
    li $v0, 1     #load call code 1 into register $v0
    la $a0, ($t2) #load $t2 value into $a0
    syscall

    #------------
    #print endmsg 
    li $v0, 4      
    la $a0, endmsg
    syscall
    jr$31 
#-----
#Done, terminate program
