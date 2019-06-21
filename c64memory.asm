; C64 memory locations
; Names taken from 'Mapping the Commodore 64'

; Page 0

; $00-$8f	BASIC working storage

D6510	= $00	; 6510 On-Chip I/O DATA Direction Register
R6510	= $01	; ROM/RAM Bank switching
				; Bit 0 (LORAM) - Map BASIC ROM $a000-$bfff
				; Bit 1 (HIRAM) - Map KERNAL ROM $e000-$ffff
SPR0X	= $d000
EXTCOL	= $d020	; border colour
