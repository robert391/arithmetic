section .text
  global _start

  _start:
  mov eax, 0
  mov ebx, [var1]
  sub eax, ebx      ; make var 1 a negative number

  mov edx, [var2]
  mul edx      ; multiply negative var 1 with var2

  mov ebx, [var3]
  add eax, ebx      ;add the produjct of negative var 1 and var 2 with var 3

  mov [result], eax ;copy the product into variable result

  mov eax, 1
  int 0x80

segment .bss
  result resd 1

section .data
  var1 dd 5
  var2 dd 20
  var3 dd 10
