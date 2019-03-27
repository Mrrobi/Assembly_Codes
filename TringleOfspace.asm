
.model small
.stack 100h
.data
loop1 dw 1   ; Input Value
loop2 dw 10
loop3 dw 0
.code


main proc
    mov ax,@data
    mov ds,ax
    
    
    ;jmp outer
    
    outer1:
        inc loop1
        ;Starting star print first Half
        mov cx,loop2
        cmp loop2,0
        je condi1
        inner11:
               mov dl,'*'
               mov ah,2
               int 21h
        loop inner11
        
        ;space print middle
        
        mov cx,loop3
        cmp loop3,0
        je here1
        
        inner12:
            mov dl,' '
            mov ah,2
            int 21h
        loop inner12 
        
        
        ;star print last half
        here1:
        mov cx,loop2
        inner13:
               mov dl,'*'
               mov ah,2
               int 21h
        loop inner13
        
        dec loop2
        
        add loop3,2
        ;Printing New Line
        
        mov ah,2
        mov dl,0dh
        int 21h
        mov dl,0ah
        int 21h
        
        
    condi1:
        cmp loop1,10
        je new
        jmp outer1
    
    
    
    
    new:
        mov loop1,10
        mov loop2,1  
    
    
    
    outer:
        
        ;Multiplying input value to print spaces
        
        mov ax,loop1
        mov bx,2
        mul bx
        sub ax,2
        mov loop3,ax
        
        ;Starting star print first Half
        mov cx,loop2
        inner1:
               mov dl,'*'
               mov ah,2
               int 21h
        loop inner1
        
        ;space print middle
        mov cx,loop3
        cmp loop3,0
        je here
        
        inner2:
            mov dl,' '
            mov ah,2
            int 21h
        loop inner2 
        
        
        ;star print last half
        here:
        mov cx,loop2
        inner3:
               mov dl,'*'
               mov ah,2
               int 21h
        loop inner3
        
        inc loop2
        dec loop1
        
        ;Printing New Line
        
        mov ah,2
        mov dl,0dh
        int 21h
        mov dl,0ah
        int 21h
        
        
    condi:
        cmp loop1,0
        je end
        jmp outer

    end:
    mov ah,4ch
    int 21h
    main endp
end main




 