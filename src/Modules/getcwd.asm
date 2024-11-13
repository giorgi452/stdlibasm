section .text
_getcwd:
  push rbp
  mov rbp,rsp

  mov rax, 0x4F
  mov rdi, [rbp+0x10] 
  mov rsi, 0xFF
  syscall

END_GETCWD:
  mov rsp,rbp
  pop rbp

  ret
