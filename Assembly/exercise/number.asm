section .data
    iString db "S1tri2ng  0b3lbalb$"
    oString db "                   ", 0Ah ; 0Ah = end of string 
    
section .text
    global _start
_start:
    mov eax, iString ; put start of string into eax
    mov ebx, oString ; put the start of the outputstrig into ebx
loop:
    inc edx
    cmp byte [eax], '$' ; check if we reached the end ($)
    jz finished         ; equals, so we are done
    
    cmp byte [eax], '0'  ; copare the value (byte) stored in eax to '0'
    jb continueLoop ;
    
    cmp byte [eax], '9'  ; compare the value (byte) stored in eax to '9'
    ja continueLoop
    
isNumber:   
    ; cl works, dl doesn't, why?
    ; most likely because i used edx
    mov cl, [eax]     ; move value at eax into cl
    mov [ebx], cl     ; move value of cl into ebx
    ; i cant do memory to memory assigning, so i use a general purpose register to help
    inc ebx
    inc eax
    jmp loop

continueLoop:
    inc eax
    inc ebx
    jmp loop
    
finished:
    inc edx             ; increment for 0Ah
    mov eax, 4          ; sys write
    mov ebx, 1          ; standard output
    mov ecx, oString    ; start string
    int 80H             ; kernel call
    
    mov eax, 1 ; code for exiting
    mov ebx, 0 ; return code
    int 80H    ; kernel call
