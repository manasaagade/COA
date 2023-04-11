include 'emu8086.inc'
data segment
    a db 'rguktrgubasbasar$'
    b db 'basr$'
    data ends
code segment
      start:
          mov ax,data
          mov ds,ax
          mov si,00
          mov di,00
      s:
          mov al,a[si]
          cmp al,b[di]
          je p1
          inc si
          cmp a[si],'$'
          je p3
          jne s
      p1:
          inc si
          inc di
          cmp b[si],'$'
          je p4       
          mov al,a[si]
          cmp al,b[di]
          je p1 
          cmp a[si],'$'
          je p3
          jne p5
       p5:
          mov di,00
          jmp s
       p3:
          print 'not found'
          hlt
       p4:
          print 'found'
          hlt
define_scan_num
define_print_num
define_print_num_uns
code ends
end start