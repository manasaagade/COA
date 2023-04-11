include 'emu8086.inc'
data segment
    a db 6,12,27,10,24,28;
    n db 00
    data ends
code segment
    start:
        mov ax,data
        mov ds,ax
        mov si,00
        print 'perfect numbers:'
    label:
        mov ah,00
        mov bl,00
        mov al,a[si] 
        mov n,al 
        mov cl,al     
        cmp si,06
        je b
     f: 
        mov al,n
        dec cl
        cmp cl,00
        je y 
        mov ah,00
        div cl
        cmp ah,00
        je p
        jne f
     p:          
        add bl,cl
        jmp f
     y:
        cmp bl,al
        je o    
        cmp bl,al
        jne l
     o:       
        mov al,bl
        print ' '
        call print_num 
        inc si
        jmp label
     l:
        inc si
        jmp label
     b:
        hlt
ret
define_print_num
define_print_num_uns
code ends
end start
        
        
    