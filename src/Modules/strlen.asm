section .text

_strlen:
  push rbp
  mov rbp,rsp
 
  mov rdi, [rbp + 0x10] 
  xor rcx, rcx

LOOP_STRLEN:
  mov al, byte [rdi]
  test al, al
  jz END_STRLEN
 
  inc rcx
  inc rdi

  jmp LOOP_STRLEN

END_STRLEN:
  mov rsp,rbp
  pop rbp
  
  mov rax, rcx

  ret
