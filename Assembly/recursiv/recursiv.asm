; Author: Tim Jahn
; Email: ceoymw@gmail.com
; Description: calls a procedure from another file
section .data
    error db "fcking noob", 10
    errorLength equ $-error
section .text
    global _start ; required for the entry point
    
extern calcSum
extern someTriangle
extern calcFib

fckup:
    mov eax, 4  ; write call
    mov ebx, 1  ; default output
    mov ecx, error
    mov edx, errorLength
    int 80h     ; call
    jmp finish

_start:
    mov eax, 5
    call calcSum
    
    cmp edx, 15
    jne fckup
    
    mov eax, 100
    call calcSum
    
    cmp edx, 5050
    jne fckup
    
    mov ah, 3
    mov al, 2
    call someTriangle
    
    cmp edx, 3
    jne fckup
    
    mov ah, 4
    mov al, 4
    call someTriangle
    
    cmp edx, 1
    jne fckup
    
    mov ah, 4
    call calcFib
    
    cmp edx, 5
    jne fckup
    
    mov ah, 2
    call calcFib
    
    cmp edx, 2
    jne fckup
    
    mov ah, 1
    call calcFib
    
    cmp edx, 1
    jne fckup
        
finish: 
    mov rax, 1 ; code for exit
    mov rbx, 0 ; return code    
    int 80H    ; make kernel call
