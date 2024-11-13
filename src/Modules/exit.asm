section .text
_exit: 
  push rbp
  mov rbp,rsp
 
  mov rax, 0x3C
  xor rdi, rdi
  syscall

END_EXIT:
  mov rsp,rbp
  pop rbp

  ret
