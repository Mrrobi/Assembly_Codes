
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.model small
.stack 100h
.data

.code

main proc
    mov ax,@data
    mov ds,ax
    mov ah,1
    int 21h
    cmp al,'A'
    jl end
    cmp al,'Z'
    jg end
    
    mov dl,al
    mov ah,2
    int 21h
    
    end:
    
    mov ah,4ch
    int 21h
    main endp
end main




