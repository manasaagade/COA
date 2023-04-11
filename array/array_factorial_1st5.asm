include 'emu8086.inc'
data segment
    a dw 0,0,0,0,0
    n dw 00
    data ends
code segment
    start:
        mov ax,data
        mov ds,ax
        mov si,00
        mov bx,1
        mov ax,1
        mov n,1
     s:
        cmp bx,1
        je b
        mul bx
        dec bx
        jmp s
     b:
        mov a[si],ax
        print ' '
        call print_num
        add si,2
        inc n
        mov bx,n
        mov ax,1
        cmp si,10
        je c
        jmp s
     c:
        hlt     
ret
define_print_num_uns  
define_print_num
code ends
end start