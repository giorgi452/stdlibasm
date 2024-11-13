section .text
_print:
  push rbp
  mov rbp,rsp

  push qword [rbp+0x10]
  call _strlen 

  mov rdx, rax
  mov rax, 0x01
  mov rdi, 0x01  
  mov rsi, [rbp+0x10]
  syscall

END_PRINT:
  mov rsp,rbp
  pop rbp

  ret
