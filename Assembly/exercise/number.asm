;  Executable name : number
;  Version         : 1.0
;  Created date    : 27.10.2017
;  Last update     : 27.10.2017
;  Author          : Tim Jahn
;  Description     : Displays the numbers in a Strings and calls a procedure

section .data
    iString db "S1tri2ng  0b3lbalb$"
    oString db "                   ", 0Ah ; 0Ah = end of string 
section .bss
    output db 4
    
section .text
    global _start
    extern displayNumber
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
    mov cl, [eax]     ; move value at eax into cl
    mov [ebx], cl     ; move value of cl into ebx
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
    
    mov al, 209         ; prepare number
    mov edx, output     ; put reference to output into edx
    call displayNumber  ; letss go
    
    mov eax, 1 ; code for exiting
    mov ebx, 0 ; return code
    int 80H    ; kernel call
