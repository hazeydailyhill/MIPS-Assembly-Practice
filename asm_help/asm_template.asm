#------------------------------------------
# Data Declarations
.data
header: .asciiz "Student: Haley Hill (CS 243, ID: 200142467)\n"
startmsg: .asciiz "------ START Program #n ------\n"
endmsg: .asciiz "\n------ END Program #n ------"
#------------------------------------------
# text/code section
.text
.globl main 
main:
    #print header 
    li $v0, 4      
    la $a0, header
    syscall

    #print startmsg
    li $v0, 4      
    la $a0, startmsg
    syscall
    #--------PROGRAM N---------


    #------------
    #print endmsg 
    li $v0, 4      
    la $a0, endmsg
    syscall
    jr$31 
#-----
#Done, terminate program