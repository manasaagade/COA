include 'emu8086.inc'
call scan_num
mov n,cx  

d:
   mov dx,00
   mov ax,n
   mov bx,5
   div bx
   cmp dx,00
   je e

e:  
   mov dx,00
   mov cx,11
   mov ax,n
   div cx
   cmp dx,00
   je g
   cmp dx,00
   jne h
   
g:
   print 'given number is divisible by 5 & 11'
   hlt  

h:
   print 'given number is not divisible by 5 & 11'

ret
n dw 00
define_print_num
define_print_num_uns
define_scan_num


   
   