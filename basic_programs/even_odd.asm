include 'emu8086.inc'
call scan_num
mov ax,cx
mov bx,2
div bx
cmp dx,00
je E
   cmp dx,01
je O

E:
   print 'even'
   hlt
O:
   print 'odd'      
ret
define_scan_num  
define_print_num_uns
define_print_num