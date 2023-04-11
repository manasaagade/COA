include 'emu8086.inc'
data segment
    a db 10,15,20,25,30;
    data ends
code segment
    start:
         mov ax,data
         mov ds,ax
         mov si,0
         label:
              mov ah,00
              mov al,a[si] 
              print ' '
              call print_num
              inc si
              cmp si,5
              je break
              jne label
              break:
                  hlt  

ret
define_scan_num
define_print_num
define_print_num_uns 
code ends
end start