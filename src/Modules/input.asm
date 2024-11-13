section .text
_input:
  push rbp
  mov rbp,rsp

  mov rax, 0x00
  mov rdi, 0x01
  mov rsi, [rbp+0x10]
  mov rdx, 0xFF
  syscall

END_INPUT:
  mov rsp,rbp
  pop rbp

  ret
