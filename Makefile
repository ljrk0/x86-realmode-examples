NASM=nasm
QEMU=qemu-system-x86_64
QEMUFLAGS=-drive file=$(FILE),format=raw

all: hello_world.bin snake.bin

.asm.bin:
	$(NASM) $(NASMFLAGS) -o $@ $^

run: $(FILE)
	@if [ -z "$(FILE)" ]; then \
		printf "Use e.g., \`make run FILE=snake.bin\'\n" >&2; \
		exit 1; \
	fi
	$(QEMU) $(QEMUFLAGS)

clean:
	@$(RM) -v *.bin

.SUFFIXES:
.SUFFIXES: .asm .bin
.PHONY: all clean
