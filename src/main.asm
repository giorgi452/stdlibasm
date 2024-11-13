%include "mod.asm"

global _start

section .data
  msg db "Hello, World!", 0xA, 0x0

section .text
_start:    
  push msg
  call _print
 
  call _exit 
  ret

