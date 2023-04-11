include 'emu8086.inc'
print 'enter first number : '
call scan_num
mov ax,cx
mov m,ax
gotoxy 0,1

print 'enter second number : '
call scan_num
mov bx,cx
mov n,bx
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
   je label2
   
label2:
   mov ax,bx
   mov g,ax
   gotoxy 0,3
   print 'gcd is: '
   call print_num 
   je label3

label3:
   mov ax,m
   mov bx,n
   mul bx
   mov bx,00
   mov bx,g
   div bx
   gotoxy 0,4
   jmp lcm
   
lcm:
   print 'lcm is : '
   call print_num
   hlt
   
ret 
m dw 00
n dw 00
g dw 00
define_print_num_uns
define_scan_num
define_print_num
   
   