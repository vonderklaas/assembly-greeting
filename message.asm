section .data
    msg db 'Hello, World!', 0 ; define a null-terminated string message to be printed later
    
section .text
    global _start ; make _start the entry point of the program

_start:
    ; Write the message to the console
    ; This code uses the 64-bit registers rax, rdi, rsi, and rdx instead of the 32-bit registers 
    ; to pass arguments to the system call.
    
    mov rax, 0x2000004   ; move the value 0x2000004 into the rax register, indicating that we want to make a "write" system call
    mov rdi, 1           ; move the value 1 into the rdi register, indicating that we want to write to stdout
    mov rsi, msg         ; move the address of the message to be printed into the rsi register
    mov rdx, 13          ; move the length of the message to be printed (including the null terminator) into the rdx register
    syscall              ; execute the system call to print the message to the console
    
    ; Exit the program
    mov rax, 0x2000001   ; move the value 0x2000001 into the rax register, indicating that we want to make an "exit" system call
    xor rdi, rdi         ; move the value 0 into the rdi register, indicating that we want to exit with a status code of 0
    syscall              ; execute the system call to exit the program
