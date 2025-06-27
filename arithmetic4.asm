section .text
  global _start

  _start:
  mov ax, [var1]
  mov dx, 2
  mul dx;  multiply var1 with 2

  mov [temp1], ax ;move to a temporary variable

  mov al, [var2]
  mov bl, 3
  sub al, bl      ; subtract var 2 with 3

  mov [temp2], al

  ; division between a word dividend and a byte size divisor.
  mov ax, [temp1]
  mov bl, [temp2]
  div bl
  mov [result], al ;copy the product into variable result

  mov eax, 1
  int 0x80

segment .bss
  result resd 1
  temp1 resw 1 ;temporary variables
  temp2 resb 1

section .data
  var1 dw 3
  var2 db 5 ; the result of (var1 x 2)/(var2-3)=3
