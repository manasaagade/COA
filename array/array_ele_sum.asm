include 'emu8086.inc'
data segment
    a db 1,1,5,0,1;
    data ends
code segment
    start:
        mov ax,data
        mov ds,ax
        mov si,00
        mov bl,00
        print 'sum = '
    label:
        mov ah,00
        mov al,a[si]
        add bl,al
        inc si
        cmp si,05
        je exit
        jne label
    exit:
        mov al,bl
        call print_num_uns
        hlt
ret
define_print_num_uns
define_print_num
code ends
end start