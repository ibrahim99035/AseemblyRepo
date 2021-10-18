section .data
    msg db 'Hello, world!', 0xa ;the message
    len equ $ - msg ;length
section .text
    global _start
_start:
    mov edx,len ;message length
    mov ecx,msg ;our message
    mov ebx,1   ;stdout file descriptor
    mov eax,4  ;system write
    int 0x80   ;call the kernel
    mov eax,1  ;system exit
    int 0x80   ;call kernel