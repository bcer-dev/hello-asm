.section .text
.global __start

__start:
    li $v0, 4004    # 4004 = Write syscall
    li $a0, 1       # 1 = STDOUT
    la $a1, message # Load the address of message into $a1
    li $a2, 14      # Indicate the length of message
    syscall

    li $v0, 4001    # 4001 = Exit syscall
    li $a0, 0       # Exit code of 0
    syscall

.section .data
    message: .asciiz "Hello, World!\n"
