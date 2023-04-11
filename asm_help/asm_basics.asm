#assembly code 
#next step -> load into SPIM MIPS Simulator
#------------------------------------------
.data
promptmsg: .asciiz "Hello World"
#------------------------------------------
.text
.globl main
main: 
    #PRINT A CHARACTER STRING (char string argument is an address) 
    li $v0, 4        #load call code 4 into register $v0
    la $a0, promptmsg   #load header value into $a0
    syscall

    #PRINT A NUMBER
    li $v0, 1        #load call code 1 into register $v1
    li $a0, 4        #load value 4 into $a1
    syscall

jr $31
