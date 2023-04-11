include 'emu8086.inc'
data segment
    c dw 00
    a dw 'hello_world$'
    data ends
code segment
    start:
        mov ax,data
        mov ds,ax
        mov si,00
    s: 
       cmp a[si],'$'
       je b
       inc c
       inc si
       jmp s
    b:
       mov ax,c
       call print_num
       hlt
define_print_num
define_print_num_uns
code ends
end start
         
       