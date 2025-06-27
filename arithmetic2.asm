section .text
  global _start

  _start:
  mov eax, [var1]
  mov ebx, [var2]
  add eax, ebx      ;eax contains var1 plus var2

  mov ebx, [var3]
  add eax, ebx      ;perform var1 plus var2 plus var3

  mov ebx, [var4]
  add eax, ebx      ;perform var1 plus var2 plus var3 plus var4

  mov [result], eax ;copy the product into variable result

  mov eax, 1
  int 0x80

segment .bss
  result resd 1

section .data
  var1 dd 5
  var2 dd 20
  var3 dd 10
  var4 dd 4
