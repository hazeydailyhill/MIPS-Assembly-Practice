#------------------------------------------
# Data Declarations
.data
header: .asciiz "Student: Haley Hill (CS 243, ID: 200142467)\n"
startmsg: .asciiz "------ START Program #3 ------\n"
endmsg: .asciiz "\n------ END Program #3 ------"
message1: .ascii "After loading 65 into register $t0, "
          .ascii "should see 65 below\n"
          .asciiz "   value in $t0: "
message2: .ascii "\n\nAfter loading the value from $t0 into register $t1, "
          .ascii "should see 65 below\n"
          .asciiz "   value in $t1: "
#------------------------------------------
# text/code section
.text
.globl main 
main:
    #consider number 65 (word type). First load this number 
    #to register $t0, then move this value to register $t1

    #print header 
    li $v0, 4      
    la $a0, header
    syscall

    #print startmsg
    li $v0, 4      
    la $a0, startmsg
    syscall
    #--------PROGRAM 3---------
    #load 65 immediately into $t0
    li $t0, 65

    #print message1
    li $v0, 4
    la $a0, message1
    syscall

    #print $t0 value
    li $v0, 1     #load call code 1 into register $v0
    la $a0, ($t0) #load $t0 value into $a0
    syscall

    #move $t0 value into $t1
    move $t1, $t0  #copy value of $t0 into $t1

    #print message2
    li $v0, 4
    la $a0, message2
    syscall

    #print $t1 value
    li $v0, 1     #load call code 1 into register $v0
    la $a0, ($t1) #load $t1 value into $a0
    syscall

    #------------
    #print endmsg 
    li $v0, 4      
    la $a0, endmsg
    syscall
    jr$31
#-----
#Done, terminate program

