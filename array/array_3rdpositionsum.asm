include 'emu8086.inc'
print 'enter n : '
call scan_num
printn
mov n,cx
mov si,00
mov ax,n
add ax,ax
mov bx,ax
mov bp,00

p1:
  call scan_num
  printn
  mov arr[si],cx
  add si,2
  dec n
  cmp n,00
  jne p1
  mov si,4
  
b:
  mov ax,00
  mov ax,arr[si]
  add bp,ax
  add si,6
  cmp si,bx
  ja c
  jmp b
  
c:
  print 'sum is : '
  mov ax,bp
  call print_num
  hlt
ret
n dw 00
arr dw n dup(?)
define_scan_num
define_print_num_uns
define_print_num