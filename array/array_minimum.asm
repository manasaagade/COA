;minimum number in a array
include 'emu8086.inc'
lea si,array
mov cl,8
mov al,[si]

h:
  dec cl
  cmp cl,00
  je m
  inc si
  cmp al,[si]
  jg k
  jmp h
k:
  mov al,[si]
  jmp h
m:
  call print_num_uns
  
ret
array db 30,20,4,5,3,58,38,2
define_print_num_uns

  