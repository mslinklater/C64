;-------------------------------------------
; Set character in character map (very slow)
;-------------------------------------------
; Acc - character
; X - x position
; Y - y position
;-------------------------------------------
sub_set_charmap:
		pha
		
		pla	; pop, even though we don't want to use it
		rts

;---------------------------------------------
; Clear the screen - subroutine, register safe
;---------------------------------------------
sub_clear_screen:
		pha
		txa
		pha
		lda PETSCII_SPACE
clrloop:
		sta $0400,x
		sta $0500,x
		sta $0600,x
		sta $0700,x
		dex
		bne clrloop
		pla
		tax
		pla
		rts

