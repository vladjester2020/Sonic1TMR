; ---------------------------------------------------------------------------
; Uncompressed graphics
; ---------------------------------------------------------------------------
Art_ASCII:	incbin	artunc\ascii.bin	; ascii font
		even
		
; ---------------------------------------------------------------------------
; Subroutine to load uncompressed art
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


LoadUncArt2:
		lea	($C00000), a1		;Mover VDP Control a "a1"

LoadArt_Loop2:
		move.l	(a2)+, (a1)		;$xxxxxxxx	<- linea a procesar
		move.l	(a2)+, (a1)
		move.l	(a2)+, (a1)
		move.l	(a2)+, (a1)
		move.l	(a2)+, (a1)
		move.l	(a2)+, (a1)
		move.l	(a2)+, (a1)
		move.l	(a2)+, (a1)
		dbf	d0, LoadArt_Loop	;Repetir los pasos del d0
		rts
; ---------------------------------------------------------------------------
	
TitleScreen_ASCII:
		dc.b $FF
		dc.b "      - - - ??? - - -",$FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b "                  ",$FF
		dc.b "                 ",$FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b $FF
		dc.b "                                       ",$FF
		dc.b "                                       ",$FF

		dc.b 0
		even
		
; ---------------------------------------------------------------------------