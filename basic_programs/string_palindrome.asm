include 'emu8086.inc'
data segment
    c dw 00
    a db 'mada$'
    data ends
code segment
    start:
        mov ax,data
        mov ds,ax
        mov si,00
        mov di,00
    s:
        cmp a[si],'$'
        je b
        inc c
        inc si
        jmp s
    b:
        mov si,00
        dec c
        mov di,c
        
    f:
        mov al,a[di]
        cmp a[si],al
        jne h
        inc si
        dec di
        cmp si,di
        je d
        jg d
        jl f
    h:
        print 'not palindrome'
        hlt
    d:
        print 'palindrome'
        hlt
define_print_num
define_print_num_uns
code ends
end start
        