include 'emu8086.inc'
print 'enter n : '
call scan_num
mov n,cx
mov si,00
mov ax,n
add ax,ax
mov bx,ax
mov bp,00
mov sp,00

p1:
  cmp si,bx
  je p2  
  printn
  print 'enter element : '
  call scan_num
  mov arr[si],cx
  add si,2
  jmp p1
  
p2:
  mov si,00
  mov bp,00
  
a:
  add si,2
  cmp si,bx
  je c
  mov ax,arr[bp]
  cmp arr[si],ax
  jbe b
  jmp a
  
b:
  mov sp,arr[bp]
  mov ax,arr[si]
  mov arr[bp],ax
  mov arr[si],sp
  jmp a
c:
  mov ax,bp
  add ax,2
  mov bp,ax
  mov si,ax
  cmp si,bx
  jne a
  mov si,00 
  printn
  print 'ascending order : '
  jmp e
  
e:
  mov ax,arr[si]
  print ' '
  call print_num
  add si,2
  cmp si,bx
  je f
  jne e
  
f:
  hlt
ret
n dw 00
arr dw n dup(?)
define_scan_num
define_print_num_uns 
define_print_num
  