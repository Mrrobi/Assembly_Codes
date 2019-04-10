
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
include "emu8086.inc"
.model small
.stack 100h
.data

choice db ?

input1 dw ?
input2 dw ?

sum dw ?
biyog dw ?

.code

clrscr proc
    mov ax,0003h
    int 10h 
    ret
endp

main proc
    mov ax,data
    mov ds,ax
    ;Write your code here
    
            
            
    
    
    
    Menu:
        mov ah,0
        
        printn "Press any key"
        int 16h
        
        call clrscr
        
        mov ah,1
        printn "Enter 1 for add"
        printn "Enter 2 for substract"
        printn "Enter 3 for multiplication"
        printn "Enter 4 for Division"
        printn "Enter 0 for exit"
        
        int 21h
        sub al,30h 
        cmp al,0
        je end
        mov choice,al
        putc 0dh
        putc 0ah
        
        print "Input first number: "
        in1:
            mov ah,1
            int 21h
            cmp al,13
            je next
            xor cx,cx
            sub al,30h
            mov cl,al
            xor ax,ax
            mov ax,input1
            mov bx,10
            mul bx
            add ax,cx
            mov input1,ax
            jmp in1
        next:
            putc 0dh
            putc 0ah
            print "Input second number: "
            in2:
                mov ah,1
                int 21h
                cmp al,13
                je inputses
                xor cx,cx
                sub al,30h
                mov cl,al
                xor ax,ax
                mov ax,input2
                mov bx,10
                mul bx
                add ax,cx
                mov input2,ax
                jmp in2
        inputses:
        
        mov al,choice
        cmp al,1
        je SUM1
        cmp al,2
        je subtraction
        cmp al,3
        je multipication
        cmp al,4
        je Division
        
        
    
    
            
    
    SUM1:
        
        
        mov ax,input1
        mov bx,input2
        add ax,bx
        mov sum,ax
        mov bx,10
        print:
            cmp ax,0
            je sumend1
            xor dx,dx
            div bx
            push dx
            jmp print
        sumend1:
            putc 0dh
            putc 0ah                
            print "Result of input1 + input2 = "
        sumend:
            pop dx
            add dl,30h
            putc dl
            cmp sp,100h
            jne sumend
        putc 0dh
        putc 0ah
        jmp Menu
            
     subtraction:
        
        mov ax,input1
        mov bx,input2
        sub bx,ax
        mov biyog,bx
        mov ax,biyog
        mov bx,10
        subprint:
            cmp ax,0
            je subend1
            xor dx,dx
            div bx
            push dx
            jmp subprint
        subend1:
            putc 0dh
            putc 0ah
            print "Result of input2 - input1 = "
        subend:
            pop dx
            add dl,30h
            putc dl
            cmp sp,100h
            jne subend
        putc 0dh
        putc 0ah
        jmp Menu
        
     multipication:
        
        mov ax,input1
        mov bx,input2
        mul bx
        mov bx,10
        mulprint:
            cmp ax,0
            je mulend1
            xor dx,dx
            div bx
            push dx
            jmp mulprint
        mulend1:
            putc 0dh
            putc 0ah
            print "Result of input1 * input2 = "
        mulend:
            pop dx
            add dl,30h
            putc dl
            cmp sp,100h
            jne mulend
        putc 0dh
        putc 0ah
        jmp Menu
        
      Division:
        xor dx,dx
        mov ax,input2
        mov bx,input1
        div bx
        mov bx,10
        divprint:
            cmp ax,0
            je divend1
            xor dx,dx
            div bx
            push dx
            jmp divprint
        divend1:
            putc 0dh
            putc 0ah
            print "Result of input1 / input2 = "
        divend:
            pop dx
            add dl,30h
            putc dl
            cmp sp,100h
            jne divend
        putc 0dh
        putc 0ah       
        jmp Menu
        
    ;mov ah,0
    ;int 10h
    end:
    mov ah,4ch
    int 21h
    main endp
end main





