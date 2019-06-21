.include "c64memory.asm"

; Basic bootstrap
*	= $0801
	.word ss,2019
	.null $9e, format("%d", start)
ss	.word 0

; Actual program start
*	= $0810
start:
		lda #$00
loop:	
		inc	EXTCOL
		jmp loop
