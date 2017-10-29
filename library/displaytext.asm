; Author: Tim Jahn
; Email: ceoymw@gmail.com
; Description: displays a text

section .text    
global displayText

;***********************  
; Procedure displayText
; IN:
;   ecx: the starting address of the string
;   edx: the length of the string
; RETURNS:
;   Nothing
; TRASHES:
;   Nothing
; DESCRIPTION: Displays the passed text to the standard output
;*********************** 
displayText:
    mov eax, 4  ; write call
    mov ebx, 1  ; system.write
    int 80h     ; call

    ret ; return
;***********************  
