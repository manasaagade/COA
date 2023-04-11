;count no of even and odd numbers in a array
include 'emu8086.inc'
data segment
    a db 2,3,4,6,7;
    n dw 00
    data ends
code segment
    start:
         mov ax,data
         mov ds,ax
         mov si,0
         mov bx,2
         mov cx,00
         label:
             mov ah,00
             mov al,a[si]
             div bx
             cmp dx,00
             je even
             jne odd
         even:
             add cx,1
             inc si
             cmp si,5
             je break
             jne label
         odd:
             add n,1
             inc si
             cmp si,5
             je break
             jne label
         break:
             mov ax,00
             mov ax,cx
             print 'even numbers : '
             call print_num 
             gotoxy 0,1  
             mov ax,n      
             print 'odd numbers : '
             call print_num
             hlt
ret
define_print_num
define_scan_num
define_print_num_uns
code ends
end start
