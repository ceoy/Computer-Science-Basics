; Author: Tim Jahn
; Email: ceoymw@gmail.com
; Description: tests the library function
section .data    
    ; message for failed tests
    failed db "test failed", 0Ah
    failedLength equ $-failed   
    
    ; please input a message
    pleaseInput db "what is your name?: "
    pleaseInputLength equ $-pleaseInput
    ; tests done message
    testsDone db "tests done", 0Ah
    testsDoneLength equ $-testsDone
    
    ; test messages
    numberValidString db "1123$"
    numberValidStringSecond db "912551$"
    numberInvalidString db "ab$"
    numberNoEndString db "123"
    
    stringToInvert db "hi i am tim$"
    fckoff db "lul"
    stringInverted db "mit ma i ih$"
                     ;"mi i a timh$"
    
section .bss
    
    readUserName: resb 36 ; initialize 36 bytes (35 is recommended, the last one is for a line feed)
    
section .text
    global _start
    
    ; imports
    extern displayText ; displays text that is passed into it
    extern numberTest ; checks if all ASCII characters are digits
    extern convertStringToNumber ; converts ascii string to number
    extern readString ; reads a string from the user input
    extern countToDollar; counts characters in a string up to a $
    extern invertAString ; inverts a string

_start:

    nop
;**********************
; tests numberTest
;********************** 
    ; first test: should work
    mov ecx, numberValidString
    call numberTest
    cmp eax, 0
    jne error
    
    ; second test: should fail
    mov ecx, numberInvalidString
    call numberTest
    cmp eax, 1
    jne error

    ; thirt test: should fail, no end of string
    mov ecx, numberNoEndString  
    call numberTest
    cmp eax, 1
    jne error
;**********************

;**********************
; test convertStringToNumber
;**********************

    ; first tests: should work
    mov ecx, numberValidString
    call convertStringToNumber
    mov rbx, 1123
    cmp rax, rbx
    jne error
    
    ; second test: should work
    mov ecx, numberValidStringSecond
    call convertStringToNumber
    mov rbx, 912551
    cmp rax, rbx
    jne error
;**********************

;**********************
; test countToDoller
;**********************
    mov ebx, numberValidString
    call countToDollar
    cmp eax, 4
    jne error
    
    mov ebx, numberValidStringSecond
    call countToDollar
    cmp eax, 6
    jne error
    
    mov ebx, numberValidString
    call countToDollar
    cmp eax, 5
    je error
    
;**********************
; test readString
;**********************
    ; ask the user to input his name
    mov ecx, pleaseInput
    mov edx, pleaseInputLength
    call displayText
 
    ; if you press enter it wil read the enter press aswell
    ; otherwise, hit control-d to end the input
    mov ecx, readUserName
    mov edx, 34
    call readString 
    
    cmp byte [ecx + 34], '$'
    jne error
    
    mov byte [ecx + 35], 0Ah ; add line feed

    ; you kinda have to compare the input yourself
    mov edx, 36
    call displayText
    
;**********************

;**********************
; test invertAString
;**********************
    mov ebx, stringToInvert
    call invertAString
    
    mov ebx, stringToInvert
    
;**********************
    jmp finish  ; we are done with the tests

error:
    mov ecx, failed         ; start of failed message
    mov edx, failedLength   ; length of string
    call displayText        ; call procedure

    
finish:
    mov ecx, testsDone
    mov edx, testsDoneLength
    call displayText
    
    mov rax, 1 ; code for exit
    mov rbx, 0 ; return code    
    int 80H    ; make kernel call
    
nop
