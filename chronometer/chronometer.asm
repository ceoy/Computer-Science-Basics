; Author: Tim Jahn
; Email: ceoymw@gmail.com
; Description: calls a procedure from another file
section .data
    ; create masks
    
section .text
    global _start ; required for the entry point

_start:

    ;xor eax, eax ; set to 0
    ; wait 1 sec, call chronometer
second:
    ; increase second by one
    mov r8, rax
    and r8, 63 ; mask this shit properly
    inc r8 ; increase seconds by one
    cmp r8, 60 ; check if we reached a minute
    jb doneAdding
    xor r8, r8 ; set back to 0
    mov r9, rax
    shr r9, 6 ; shift away seconds
    and r8, 63  
    inc r9    ; add a minute
    cmp r9, 60 ; check if we reached a hour
    jb doneAdding
    xor r9, r9 ; set to 0
    mov r10, rax
    shr r10, 11 ; move hours
    inc r10
    cmp r10, 24 ; check if we reached a day
    jb doneAdding
    xor r10, r10 ; set to 0
    
doneAdding:
    ; write back into 
    xor eax, eax ; set to 0
    mov rax, r10
    shl eax, 5
    mov rax, r9
    shl eax, 6
    mov rax, r8
    
    ; be done
    jmp second
    
finish: 
    mov rax, 1 ; code for exit
    mov rbx, 0 ; return code    
    int 80H    ; make kernel call
