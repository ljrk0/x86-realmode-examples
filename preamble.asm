; Use as:
; %include "preamble.asm"

	[bits 16]                    ; Pragma, tells the assembler that we
                                       ; are in 16 bit mode (which is the state
                                       ; of x86 when booting from a floppy).
          [org 0x7C00]                 ; Pragma, tell the assembler where the
                                       ; code will be loaded.
