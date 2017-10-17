section .data
    theString db "String 10 blbalb$"
section .text
    global _start
_start:
    mov eax, [theString] ; put start of string into eax
    mov ebx, 0 ; initialise the number
loop:
    cmp eax, '$' ; check if we reached the end ($)
    je finished  ; equals, so we are done
    cmp eax, 48  ; 0 in ascii
    jb continueLoop ;
    cmp eax, 57  ; 9 in ascii
    ja continueLoop
    mov ebx, ebx ;
    ; increment positions
    inc ebx
    inc eax
    
    jmp loop

continueLoop:
    inc eax
    jmp loop
    
isNumber:
    
finished:
    mov eax, 1 ; code for exiting
    mov ebx, 0 ; return code
    int 80H    ; kernel call
