; Author: Tim Jahn
; Email: ceoymw@gmail.com
; Description: Calculates the Sum of n Integers: 0+1+2+...+n

section .text
global numberTest
global convertStringToNumber
global countToDollar

;***********************  
; Procedure numberTest
; IN:
;   ecx: the starting address of the string
; OUT:
;   eax: 0 if all ASCII characters until '$' are digits - else 1
; TRASHES:
;   Nothing
; DESCRIPTION: Analyses if all characters form a starting point in memory (ecx))
;   are digits. End of string is '$'
;***********************  
numberTest:
    push rcx ; save state of ecx
    
    mov eax, 0 ; assume that the ASCII characters are digits
.loop:
    cmp byte [ecx], '$' ; is end of string?
    je .finished
    cmp byte [ecx], '0' ; compare to 0
    jb .failed   ; is not a digit
    cmp byte [ecx], '9' ; 
    ja .failed ; is not a digit
    inc ecx
    jmp .loop
    
.failed:
    mov eax, 1
    
.finished:
    pop rcx ; pop ecx back
    ret ; return from procedure
;***********************  

;***********************  
; Procedure convertStringToNumber
; IN:
;   ecx: int string
; OUT:
;   rax: the converted string
; DESCRIPTION: Converts a string of digits into its binary value
; Assumption: The memory contains only digits and it is not empty
; Assumption: We have already tested that there are only digits in the string
;***********************
convertStringToNumber:
    push rcx
    push rbx
    
    mov rax, 0          ; set to 0
.loop:
    cmp byte [ecx], '$' ; end of strig?
    je .finished
    mov ebx, 10         ; prepare multiplication
    mul ebx             ; multiply eax by 10
    mov dl, byte [ecx]  ; get ascii character
    sub dl, '0'         ; convert to int
    add rax, rdx        ; add it
    inc ecx             ; get next ascii character
    jmp .loop           ; repeat
    
.finished:
    pop rbx
    pop rcx
    ret
;***********************

;***********************
; Procedure countToDollar
; IN:
;   ebx the starting address of the string
; RETURNS:
;   The length in eax
; DESCRIPTION: Counts the number of characters until $ in a given string
;***********************
countToDollar:
    mov eax, 0  ; set counter to 0
.loop:
    cmp byte [ebx], '$' ; check if this is the end of the string
    je .finished
    inc ebx ; read next character
    inc eax ; increase counter
    jmp .loop
    
.finished:
    ret
;***********************
