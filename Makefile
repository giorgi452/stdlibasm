# Variables
NASM = nasm
LD = ld
NASM_FLAGS = -f elf64 -I src/ 
LD_FLAGS = -m elf_x86_64
OUTPUT = main

# Source files
ASM_FILES = src/main.asm
OBJ_FILES = $(ASM_FILES:.asm=.o)

# Default target
all: $(OUTPUT)

# Compile .asm to .o
%.o: %.asm
	$(NASM) $(NASM_FLAGS) -o $@ $<

# Link .o to executable
$(OUTPUT): $(OBJ_FILES)
	$(LD) $(LD_FLAGS) -o $@ $^

# Clean up build files
clean:
	rm -f $(OBJ_FILES) $(OUTPUT)

# Phony targets
.PHONY: all clean

