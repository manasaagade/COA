include 'emu8086.inc'
print 'enter first number : '
call scan_num
mov ax,cx
gotoxy 0,1

print 'enter second number : '
call scan_num
mov bx,cx
gotoxy 0,1 

cmp ax,bx  ;to compare the greater value to select the dividend 
jg label   ;jump greater 

label:
   mov dx,00
   div bx
   cmp dx,00
   je label3
   jne label1

label1:
   mov ax,bx 
   mov bx,dx
   mov dx,00
   div bx
   cmp dx,00
   jg label1
   je label3
   
label3:
   mov ax,bx
   gotoxy 0,3
   print 'gcd is: '
   call print_num
   
ret 
define_print_num_uns
define_scan_num
define_print_num
   
   