section .data
    msg db 'Hello, World!', 0

section .text
    global _start

_start:
    ; Write the message to the console
    ; This code also uses the 64-bit registers rax, rdi, rsi, and rdx 
    ; instead of the 32-bit registers 
    mov rax, 0x2000004   ; system call for "write"
    mov rdi, 1           ; file descriptor for stdout
    mov rsi, msg         ; pointer to the message
    mov rdx, 13          ; length of the message
    syscall              ; call kernel
    ; Exit the program
    mov rax, 0x2000001   ; system call for "exit"
    xor rdi, rdi         ; exit code 0
    ; The syscall instruction is the recommended way to call system calls 
    ; on macOS and other modern operating systems.
    syscall              ; call kernel
