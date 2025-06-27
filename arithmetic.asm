section .text
  global _start

  _start:
  mov eax, 0
  mov ebx, [var1]
  sub eax, ebx      ;eax contains -var1

  mov edx, 10
  mul edx           ;perform the eax multiplication with 10 and the product is in eax

  mov [result], eax ;copy the product into variable result

  mov eax, 1
  int 0x80

section .data
  var1 db 5

segment .bss
  result resd 1