include 'emu8086.inc'
print 'enter fahenrite : '
call scan_num
mov ax,cx
mov bx,5
sub ax,32
mul bx
mov cx,9
div cx
mov r,ax
jmp c

c:
   mov ax,r
   gotoxy 0,1
   print 'celsius = '
   call print_num

ret  
r dw 00
define_print_num_uns
define_print_num
define_scan_num
   