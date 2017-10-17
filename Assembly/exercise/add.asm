section .data
    data dd 10 ; dd = 4byte instead of 8

section .text
    global _start

_start:
    mov ebx, [data]  ; do this x times
    mov eax, 0   ; the counter
    mov ecx, 0   ; the result
loop:
    cmp ebx, eax ; check if the counter has reacher loops
    ja finish
    add ecx, eax ; add the counter to the result
    inc eax
    jmp loop ; repeat
finish:
    mov eax, 1 ; code for exiting
    mov ebx, 0 ; return code
    int 80H    ; ddmake kernal call
