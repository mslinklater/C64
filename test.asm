.include "c64memory.asm"
.include "c64petscii.asm"

; Basic bootstrap
*	= $0801
	.word ss,2019
	.null $9e, format("%d", start)
ss	.word 0

; Actual program start
*	= $0810
start:
		; standard init, clear the registers
		lda #$00
		tax
		tay

		jsr sub_clear_screen
		sta EXTCOL
		sta BGCOL0
loop:	
		lda RASTER
		cmp #$80
		bne loop

		inc EXTCOL
		jmp loop

.include "subroutines.asm"
