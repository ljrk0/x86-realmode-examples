%include "preamble.asm"

; based on:
; https://50linesofco.de/post/2018-02-28-writing-an-x86-hello-world-bootloader-with-assembly

		mov si, msg		; loads the address of "msg" into SI register
		mov ah, 0x0e		; sets AH to 0xe (function teletype)
		
print_char:	lodsb			; loads the current byte from SI into AL and increments the address in SI
		cmp al, 0		; compares AL to zero
		je done			; if AL == 0, jump to "done"
		int 0x10		; print to screen using function 0xe of interrupt 0x10
		jmp print_char		; repeat with next byte
		
done:		hlt			; stop execution

msg:		db `Hello world!\0`	; we need to explicitely put the zero byte here


%include "postamble.asm"
