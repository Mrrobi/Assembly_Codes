
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
include 'emu8086.inc'       ; Include useful macros and procedures

.model small

.stack

.data

var1 db 6
var2 db 2
var3 db 7

.code

DEFINE_PRINT_NUM         ; Create procedure PRINT_NUM          
DEFINE_PRINT_NUM_UNS     ; Create procedure PRINT_NUM_UNS

crlf proc
    mov ah, 2
    ;mov dl, 13
    ;int 21h
    ;mov dl, 10
    ;int 21h
    ret
crlf endp

main proc

    mov ax, @data
    mov ds, ax

    ; test output: 54321 & -11215 
    mov ax, 54321
    call PRINT_NUM_UNS   ; Print AX as unsigned number
    call crlf
    mov ax, 54321
    call PRINT_NUM       ; Print AX as signed number
    ;call crlf

    mov bl, var1
    add bl, var2
    add bl, var3

    mov ax, bx           ; AX contains the number for PRINT_NUM
    xor ah, ah           ; Could contain crap
    call PRINT_NUM
    ;call crlf

    mov ax, 4c00h
    int 21h

main endp

end main




