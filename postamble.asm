; Use as:
; %include "postamble.asm"

times 510-($-$$) db 0           ; fill the output file with zeroes until 510 bytes are full
dw 0xaa55 
