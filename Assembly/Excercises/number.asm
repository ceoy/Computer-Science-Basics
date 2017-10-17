section .data
    inputString db "S1tri2ng  b3lbalb$"
    outputString db "               ", 10
    
section .text
    global _start
_start:
    mov eax, inputString ; put start of string into eax
    mov ebx, outputString ; put the start of the outputstrig into ebx
    mov edx, 0 ; string length
loop:
    inc edx
    cmp byte [eax], '$' ; check if we reached the end ($)
    jz finished  ; equals, so we are done
    cmp byte [eax], '0'  ; 0 in ascii
    jb continueLoop ;
    cmp byte [eax], '9'  ; 9 in ascii
    ja continueLoop
    
isNumber:   
    mov dl, byte [eax]
    mov [ebx], dl     ; move asci number to the new position
    inc ebx
    inc eax
    jmp loop

continueLoop:
    inc eax
    inc ebx
    jmp loop
    
finished:
    inc ebx ; increase position by 1
    
    mov eax, 4 ; sys write
    mov ebx, 1 ; standard output
    mov ecx, outputString ; start string
    
    int 80H
    
    mov eax, 4 ; the stupid shit
    mov eax, 1 ; code for exiting
    mov ebx, 0 ; return code
    int 80H    ; kernel call
