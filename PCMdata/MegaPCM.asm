
; ===============================================================
; Mega PCM Driver Include File
; (c) 2012, Vladikcomper
; ===============================================================

; ---------------------------------------------------------------
; Variables used in DAC table
; ---------------------------------------------------------------

; flags
panLR	= $C0
panL	= $80
panR	= $40
pcm	= 0
dpcm	= 4
loop	= 2
pri	= 1

; ---------------------------------------------------------------
; Macros
; ---------------------------------------------------------------

z80word macro Value
	dc.w	((\Value)&$FF)<<8|((\Value)&$FF00)>>8
	endm

DAC_Entry macro Pitch,Offset,Flags
	dc.b	\Flags			; 00h	- Flags
	dc.b	\Pitch			; 01h	- Pitch
	dc.b	(\Offset>>15)&$FF	; 02h	- Start Bank
	dc.b	(\Offset\_End>>15)&$FF	; 03h	- End Bank
	z80word	(\Offset)|$8000		; 04h	- Start Offset (in Start bank)
	z80word	(\Offset\_End-1)|$8000	; 06h	- End Offset (in End bank)
	endm
	
IncludeDAC macro Name,Extension
\Name:
	if strcmp('\extension','wav')
		incbin	'PCMdata/dac/\Name\.\Extension\',$3A
	else
		incbin	'PCMdata/dac/\Name\.\Extension\'
	endc
\Name\_End:
	endm

; ---------------------------------------------------------------
; Driver's code
; ---------------------------------------------------------------

MegaPCM:
	incbin	'PCMdata/MegaPCM.z80'

; ---------------------------------------------------------------
; DAC Samples Table
; ---------------------------------------------------------------

	DAC_Entry   $04+2, D86,     dpcm ; 81 - Kick
	DAC_Entry   $01+5, SnareS3, dpcm, SnareS32, dpcm, SnareS33, dpcm ; 82 - Snare
	DAC_Entry	$1B, D8285, dpcm		; $83	- Timpani
	DAC_Entry   $0A, a84,     dpcm ; 84 - Crash Cymbal
	DAC_Entry   $06+2, D88,     dpcm ; 85 - Crash Cymbal
	DAC_Entry   $01+5, SnareS3, dpcm, SnareS32, dpcm, SnareS33, dpcm ; 86 - Snare
	DAC_Entry	$0A+2, a87, dpcm		; $87	- DAC_83
	DAC_Entry   $06+2, D88,     dpcm ; 88 - Crash Cymbal
	DAC_Entry   $14+3, DAC_82,   dpcm ; 89 - Mid-Tom
	DAC_Entry   $1A+4, DAC_82,   dpcm ; 8A - Low-Tom
	DAC_Entry   $20+5, DAC_82,   dpcm ; 8B - Floor Tom
	DAC_Entry   $08+2, D8C,     dpcm ; 8C - High Metal Hit
    DAC_Entry   $0B+2, D8D8E,   dpcm ; 8D - Higher Metal Hit
    DAC_Entry   $11+2, D8D8E,   dpcm ; 8E - Low Metal Hit
    DAC_Entry   $08+2, D8F,     dpcm ; 8F - Clap
    DAC_Entry   $03+2, D9093,   dpcm ; 90 - Electric High-Tom
    DAC_Entry   $07+2, D9093,   dpcm ; 91 - Electric Mid-Tom
    DAC_Entry   $0A+2, D9093,   dpcm ; 92 - Electric Low-Tom
    DAC_Entry   $0E+2, D9093,   dpcm ; 93 - Electric Floor Tom
    DAC_Entry   $06+2, D9497,   dpcm ; 94 - Tight Snare
    DAC_Entry   $0A+2, D9497,   dpcm ; 95 - Mid-pitch snare
    DAC_Entry   $0D+2, D9497,   dpcm ; 96 - Loose Snare
    DAC_Entry   $12+2, D9497,   dpcm ; 97 - Looser Snare
    DAC_Entry   $0B+2, D989A,   dpcm ; 98 - Hi-Timpani
    DAC_Entry   $13+2, D989A,   dpcm ; 99 - Low-Timpani
    DAC_Entry   $16+2, D989A,   dpcm ; 9A - Mid-Timpani
    DAC_Entry   $0C+2, D9B,     dpcm ; 9B - Quick Loose Snare
    DAC_Entry   $0A+2, D9C,     dpcm ; 9C - Click
    DAC_Entry   $18+2, D9D,     dpcm ; 9D - Power Kick
    DAC_Entry   $18+2, D9E,     dpcm ; 9E - Quick Glass Crash
    DAC_Entry   $0C+2, D9F,     dpcm ; 9F - Glass Crash with Snare
    DAC_Entry   $0C+2, DA0,     dpcm ; A0 - Glass Crash
    DAC_Entry   $0A+2, DA1,     dpcm ; A1 - Glass Crash with Kick
    DAC_Entry   $0A+2, DA2,     dpcm ; A2 - Quiet Glass Crash
    DAC_Entry   $18+2, DA3,     dpcm ; A3 - Odd Snare with Kick
    DAC_Entry   $18+2, DA4,     dpcm ; A4 - Kick with extra bass
    DAC_Entry   $0C+2, DA5,     dpcm ; A5 - "Come on!"
    DAC_Entry   $09+2, DA6,     dpcm ; A6 - Dance Snare
    DAC_Entry   $18+2, DA7,     dpcm ; A7 - Loose Kick
    DAC_Entry   $18+2, DA8,     dpcm ; A8 - Moderately Loose Kick
    DAC_Entry   $0C+2, DA9,     dpcm ; A9 - "Woo!"
    DAC_Entry   $0A+2, DAA,     dpcm ; AA - "Go!"
    DAC_Entry   $0D+2, DAB,     dpcm ; AB - Snare with voice going "Go!"
    DAC_Entry   $06+2, DAC,     dpcm ; AC - Power Tom
    DAC_Entry   $10+2, DADAE,   dpcm ; AD - Hi-Wood Block
    DAC_Entry   $18+2, DADAE,   dpcm ; AE - Low-Wood Block
    DAC_Entry   $09+2, DAFB0,   dpcm ; AF - Hi-Hit Drum
    DAC_Entry   $12+2, DAFB0,   dpcm ; B0 - Low-Hit Drum
    DAC_Entry   $18+2, DB1,     dpcm ; B1 - Metal Crash Hit
    DAC_Entry   $16+2, DB2B3,   dpcm ; B2 - Echoed Clap Hit
    DAC_Entry   $20+2, DB2B3,   dpcm ; B3 - Lower Echoed Clap Hit
    DAC_Entry   $0C+2, DB4C1C4, dpcm ; B4 - Hip-Hop style hit with a kick
    DAC_Entry   $0C+2, DB5,     dpcm ; B5 - Hip-Hop style hit with a Power Kick
    DAC_Entry   $0C+2, DB6,     dpcm ; B6 - Som Bass with a voice going "Hey!"
    DAC_Entry   $18+2, DB7,     dpcm ; B7 - Dance Style Kick
    DAC_Entry   $0C+2, DB8B9,   dpcm ; B8 - Hip-Hop hit with a kick
    DAC_Entry   $0C+2, DB8B9,   dpcm ; B9 - Hip-Hop hit with a kick
    DAC_Entry   $18+2, DBA,     dpcm ; BA - Reverse Fading Wind Sound
    DAC_Entry   $18+2, DBB,     dpcm ; BB - Scratch
    DAC_Entry   $18+2, DBC,     dpcm ; BC - Loose Snare with noise
    DAC_Entry   $0C+2, DBD,     dpcm ; BD - Power Kick
    DAC_Entry   $0C+2, DBE,     dpcm ; BE - Crashing noise with voice going "Woo!"
    DAC_Entry   $1C+2, DBF,     dpcm ; BF - Quick hit
    DAC_Entry   $0B+2, DC0,     dpcm ; C0 - Kick with a voice going "Hey!"
    DAC_Entry   $0F+2, DB4C1C4, dpcm ; C1 - Power Kick with hit
    DAC_Entry   $11+2, DB4C1C4, dpcm ; C2 - Low Power Kick with hit
    DAC_Entry   $12+2, DB4C1C4, dpcm ; C3 - Lower Power Kick with hit
    DAC_Entry   $0B+2, DB4C1C4, dpcm ; C4 - Lowest Power Kick with hit
    DAC_Entry $17, dac1d, pcm ; C5 - Sonic 2 Kick 
    DAC_Entry $03, dac2d, pcm ; C6 - Sonic 2 Snare
    DAC_Entry	$01, SCD_PCM_09_8bit1, pcm+pri		; $c7	- 'Bumper'
    DAC_Entry	$01, SCD_PCM_04_b8it, pcm+pri		; $c8	- 'Yes'
    DAC_Entry	$01, PSLOGO, pcm+pri		; $c9	- 'PSLOGO'
MegaPCM_End:

; ---------------------------------------------------------------
; DAC Samples Files
; ---------------------------------------------------------------

	IncludeDAC	Kick, bin
	IncludeDAC	Snare, bin
	IncludeDAC	Timpani, bin
    IncludeDAC  D81, bin
    IncludeDAC  D8285, bin
    IncludeDAC  D86, bin
    IncludeDAC  D87, bin
    IncludeDAC  D88, bin
    IncludeDAC  D89, bin
    IncludeDAC  D8A8B, bin
    IncludeDAC  D8C, bin
    IncludeDAC  D8D8E, bin
    IncludeDAC  D8F, bin
    IncludeDAC  D9093, bin
    IncludeDAC  D9497, bin
    IncludeDAC  D989A, bin
    IncludeDAC  D9B, bin
    IncludeDAC  D9C, bin
    IncludeDAC  D9D, bin
    IncludeDAC  D9E, bin
    IncludeDAC  D9F, bin
    IncludeDAC  DA0, bin
    IncludeDAC  DA1, bin
    IncludeDAC  DA2, bin
    IncludeDAC  DA3, bin
    IncludeDAC  DA4, bin
    IncludeDAC  DA5, bin
    IncludeDAC  DA6, bin
    IncludeDAC  DA7, bin
    IncludeDAC  DA8, bin
    IncludeDAC  DA9, bin
    IncludeDAC  DAA, bin    
    IncludeDAC  DAB, bin
    IncludeDAC  DAC, bin    
    IncludeDAC  DADAE, bin
    IncludeDAC  DAFB0, bin
    IncludeDAC  DB1, bin
    IncludeDAC  DB2B3, bin  
    IncludeDAC  DB4C1C4, bin    
    IncludeDAC  DB5, bin    
    IncludeDAC  DB6, bin    
    IncludeDAC  DB7, bin    
    IncludeDAC  DB8B9, bin      
    IncludeDAC  DBA, bin    
    IncludeDAC  DBB, bin    
    IncludeDAC  DBC, bin
    IncludeDAC  DBD, bin    
    IncludeDAC  DBE, bin    
    IncludeDAC  DBF, bin    
    IncludeDAC  DC0, bin    
    IncludeDAC  a81, bin
    IncludeDAC  a82, bin        
	IncludeDAC  a83, bin   
	IncludeDAC  a84, bin 
	IncludeDAC  a85, bin  	
	IncludeDAC  a86, bin
	IncludeDAC  a87, bin
	IncludeDAC  dac1d, bin
	IncludeDAC   dac2d, bin
	IncludeDAC   dac3d, bin
	IncludeDAC   dac4d, bin
	IncludeDAC   dac5d, bin
	IncludeDAC   SCD_PCM_09_8bit1, wav
	IncludeDAC   SCD_PCM_04_b8it, wav
	IncludeDAC   PSLOGO, wav
		IncludeDAC DAC_82,BIN 
	    IncludeDAC SnareS3,dpcm	
    IncludeDAC SnareS32,dpcm	
    IncludeDAC SnareS33,dpcm
	even

