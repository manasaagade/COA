include 'emu8086.inc'
call scan_num
mov ax,cx
mov bx,0
mov cx,ax
mov n,ax
gotoxy 0,1

f:
  mov ax,n
  dec cx
  cmp cx,00
  je y
  mov dx,00
  div cx
  cmp dx,00
  jne f
  
k:
  add bx,cx
  jmp f
  
y:
  cmp bx,ax
  je l
  cmp bx,ax
  jne r
  
l:
  print 'perfect number'
  hlt
  
r:
  print 'not a perfect number'  
  hlt
  
ret
n dw 00
define_scan_num  