; C64 memory locations
; Names taken from 'Mapping the Commodore 64'

; Page 0

; $00-$8f	BASIC working storage

D6510	= $00	; 6510 On-Chip I/O DATA Direction Register
R6510	= $01	; ROM/RAM Bank switching
				; Bit 0 (LORAM) - Map BASIC ROM $a000-$bfff
				; Bit 1 (HIRAM) - Map KERNAL ROM $e000-$ffff
				; Bit 2 (CHARGEN) - On zero map CHAREN ROM $d000-$dfff
				; Bit 3 - Cassette data output line
				; Bit 4 - Cassette switch sense line
				; Bit 5 - Cassette motor control (1-disable)
ADRAY1	= $03	; (Vector) Routine to convert floating point to signed integer
ADRAY2	= $05	; (Vector) Routine to convert signed integer to floating point
CHARAC	= $07	; Search character for scanning BASIC text input
ENDCHR	= $08	; Search character for statement terminator or quote
TRMPOS	= $09	; Column position of the cursor before the last TAB or space
VERCK	= $0a	; (Flag) LOAD or VERIFY
COUNT	= $0b	; Index into the Text Input Buffer / Numner of Array Subscripts
DIMFLG	= $0c	; Flags for the Routinrs That Locate or Build an Array
VALTYP	= $0d	; (Flag) Type of Data (String or Numeric)
INTFLG	= $0e	; (Flag) Type of Numeric Data (Integer or Floating Point)
GARBFL	= $0f	; Flag for LIST, Garbage Collection, and Program Tokenization
SUBFLG	= $10	; (Flag) Subscript Reference to an Array or User-Defined Function Call (FN)
INPFLG	= $11	; (Flag) Is Data Input to GET, READ or INPUT?
TANSGN	= $12	; (Flag) Sign of the Result of the TAN or SIN Function
CHANNL	= $13	; Current I/O Channel (CMD Logical File) Number
; MORE TO BE ADDED WHEN I CAN BE ARSED

; $90-$ff	Kernal Work Storage Area

; Page 1
; $0100-$01ff	Microprocessor Stack Area
; $0100-$010a	Work Area for Floating Point to String Conversions
; $0100-$013e	BAD

; Page 2-3	BASIC and Kernal Working Storage

; 1K to 40K - Screen Memory, Sprite Pointers, and BASIC Program Text

; $0400-$07e7	; Default Video Screen Memory Area
; $07f8-$07ff	; Sprite Shape Data Pointers

; $0800-$9fff	; BASIC Program Text

; $1000-$1fff	; Character ROM Image for VIC-II Chip When Using Memory Bank 0

; 8K BASIC ROM and 4K Free RAM

; $a000-$a001	; Cold Start Vector
; $a002-$a003	; Warm Start Vector
; REST OF BASIC

; $c000-$cfff	; 4K Free RAM

; $c000-$cfff	; VIC-II, SID, I/O, Devices, Color RAM and Character ROM


; VIC-II Chip Section

SPR0X	= $d000	; Sprite 0 x position
SPR0Y	= $d001	; Sprite 0 y position
SPR1X	= $d002	; Sprite 1 x position
SPR1Y	= $d003	; Sprite 1 y position
SPR2X	= $d004	; Sprite 2 x position
SPR2Y	= $d005	; Sprite 2 y position
SPR3X	= $d006	; Sprite 3 x position
SPR3Y	= $d007	; Sprite 3 y position
SPR4X	= $d008	; Sprite 4 x position
SPR4Y	= $d009	; Sprite 4 y position
SPR5X	= $d00a	; Sprite 5 x position
SPR5Y	= $d00b	; Sprite 5 y position
SPR6X	= $d00c	; Sprite 6 x position
SPR6Y	= $d00d	; Sprite 6 y position
SPR7X	= $d00e	; Sprite 7 x position
SPR7Y	= $d00f	; Sprite 7 y position
MSIGX	= $d010	; Most Significant Bits of Sprites 0-7 Horizontal Positions
SCROLY	= $d011	; Vertical Fine Scrolling and Control Register
				; Bits 0-2	Fine scroll display vertically by X scan lines (0-7)
				; Bit 3		Select a 24-row or 25-row text display (1=25, 0=24)
				; Bit 4		Blank the entire screen to the same color as the border (0=blank)
				; Bit 5		Enable bitmap graphis mode (1=enable)
				; Bit 6		Enable extended color text mode (1=enable)
				; Bit 7		High bit (Bit 8) or raster compare register ($d012)
RASTER	= $d012	; Read Current Raster Scan Line / Write Line to Compare for Raster IRQ
LPENX	= $d013	; Light Pen Horizontal Position
LPENY	= $d014	; Light Pen Vertical Position
SPENA	= $d015	; Sprite Enable Register
SCROLX	= $d016	; Horizontal Fine Scrolling and Control Register
				; Bits 0-2	Fine scroll display horizontally by X dot positions (0-7)
				; Bit 3		Select 38-column or 40-column text display (1=40, 0=38)
				; Bit 4		Enable multicolor text or multicolor bitmap mode (1=on, 0=off)
				; Bit 5		Video chip reset (0=normal, 1=off)
				; Bit 6-7	Unused
YXPAND	= $d017	; Sprite Vertical Expansion Register
VMCSB	= $d018	; VIC-II Chip Memory Control Register
VICIRQ	= $d019	; VIC Interrupt Flag Register
				; Bit 0	Flag - Is the Raster Compare a possible source of an IRQ
				; Bit 1	Flag - Is a collision between a sprite and the normal graphics display a possible source of an IRQ
				; Bit 2 Flag - Is a collision between two sprites a possible source of an IRQ
				; Bit 3 Flag - Is the light pen trigger a possible source of an IRQ
				; Bits 4-6	Not used
				; Bit 7 Flag - Is there any VIC-II chip IRQ source which could cause an IRQ
EXTCOL	= $d020	; border colour
BGCOL0	= $d021	; Background color 0
