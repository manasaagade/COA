include 'emu8086.inc'
print 'enter number'
call scan_num
mov ax,cx
mov bx,0
mov cx,10
mov r,00
gotoxy 0,1
 
label:
      mov dx,00    ,initialization of dx
      div cx
      mov r,dx
      mov n,ax
      mov ax,bx
      mul cx
      add ax,r
      mov bx,ax
      mov ax,n
      cmp ax,0
      je rev
      jne label
      
rev:
   mov ax,bx
   call print_num_uns
   hlt

ret

n dw 00
r dw 00

define_scan_num
define_print_num_uns
