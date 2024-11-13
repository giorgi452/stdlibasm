# Assembly Standard Library

## Print
```asm
push msg
call _print
```

## Input
```asm
push buf
call _input
```

## Strlen
```asm
push msg
call _strlen
; Returns Value to `rax`
```

## Getcwd
```asm
push buf
call _getcwd
```

## Exit
```asm
call _exit
```
