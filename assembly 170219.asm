
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.model small
.stack 100h
.data
nwline db 0dh,0ah,'$'
in1 db 'Enter Distance: $'
res db 'Cost Of the Distance: $'
cost db ? 
.code

main proc
    mov ax,@data
    mov ds,ax
    mov ah,9
    lea dx,in1
    int 21h
    mov ah,1
    int 21h
    sub al,30h
    cmp al,1
    jle l1
    cmp al,5
    jle l2
    cmp al,8
    jl l3
    jge l4
    
    l1: 
        mov ah,9
        lea dx,nwline
        int 21h
        lea dx,res
        int 21h
        mov ah,2
        mov dl,2
        add dl,30h
        int 21h
        jmp end
    l2: 
        mov ah,9
        lea dx,nwline
        int 21h
        lea dx,res
        int 21h
        mov ah,2
        mov dl,4
        add dl,30h
        int 21h
        jmp end
    l3: 
        mov ah,9
        lea dx,nwline
        int 21h
        lea dx,res
        int 21h
        mov ah,2
        mov dl,6
        add dl,30h
        int 21h
        jmp end
    l4: 
        mov ah,9
        lea dx,nwline
        int 21h
        lea dx,res
        int 21h
        mov ah,2
        mov dl,8
        add dl,30h
        int 21h
    end:
    
    mov ah,4ch
    int 21h
    main endp
end main




