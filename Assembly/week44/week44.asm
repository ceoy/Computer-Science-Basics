; Author: Tim Jahn
; Email: ceoymw@gmail.com
; Description: calls a procedure from another file
section .bss:
    textlength equ 4
    text: resb textlength ; reserve 4 bytes
section .data
    lookup db "0123456789ABCDEF"
    
section .text
    global _start ; required for the entry point
    
extern shiftsBoolean
extern hexToLog

_start:
    mov rax, 20h
    call shiftsBoolean

    cmp rcx, 7

    mov rax, text
    mov rbx, textlength
    mov rcx, lookup
    call hexToLog

finish:
    mov rax, 1 ; code for exit
    mov rbx, 0 ; return code    
    int 80H    ; make kernel call

