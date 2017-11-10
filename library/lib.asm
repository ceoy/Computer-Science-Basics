; Author: Tim Jahn
; Email: ceoymw@gmail.com
; Description: Calculates the Sum of n Integers: 0+1+2+...+n

section .text
; exports
global numberTest
global convertStringToNumber
global readString
global countToDollar
global invertAString

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
; Procedure readString
; IN:
;   ecx the starting address of the string
;   edx let the procedure know how many bytes to read
; RETURNS:
;   Nothing
; TRASHES:
;   Nothing
; DESCRIPTION: Reads a number of bytes and places them in memory, followed by '$'
; WHat else could be done: filter out line feed (0Ah) 
;***********************

readString:
    push rax
    push rbx

    mov eax, 3 ; system read
    mov ebx, 0 ; default input
    int 80h    ; interrupt
    
    ; now append a dolla
    mov byte [ecx + edx], '$'
    
    pop rbx
    pop rax
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

;***********************
; Procedure invertAString
; IN:
;   ebx the starting address of the string
; RETURNS:
;   Nothing
; TRASHES:
;   Nothing
; DESCRIPTION: A procedure which inverts a given string terminated by $
;***********************
invertAString:
    push rbx
    push rax
    push rcx
    
    mov eax, ebx ; move the start of the string into eax
    mov cl, 0    ; counter, how many times do we have to stuff
    
.countLoop:
    cmp byte [eax], '$' ; are we done?
    je .invert          ; end of string bitches
    inc eax             ; not end of string
    inc cl              
    jmp .countLoop       ; continue
    
.invert:
    shr cl, 1 ; divide by 2 the fast way
    
    
.invertLoop:
    dec eax             ; dont swap $
    cmp cl, 0           ; are we in the middle?
    jbe .finished       ; if yes, be done
    push rcx            ; safe rcx, so we safe cl
    mov ch, byte [eax]  ; get value of eax
    mov cl, byte [ebx]  ; get value of ebx
    mov byte [eax], cl  ; put cl into eax
    mov byte [ebx], ch  ; put ch into ebx
    pop rcx             ; get cl
    dec cl              ; remove one
    jmp .invertLoop     ; continue

.finished:
    pop rcx
    pop rax
    pop rbx
    ret


;***********************
