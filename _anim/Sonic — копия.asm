; ---------------------------------------------------------------------------
; Sonic Animation Script
; ---------------------------------------------------------------------------
		dc.w SonAni_Walk-SonicAniData ;00
		dc.w SonAni_Run-SonicAniData ;01
		dc.w SonAni_Roll-SonicAniData ;02
		dc.w SonAni_Roll2-SonicAniData ;03
		dc.w SonAni_Push-SonicAniData ;04
		dc.w SonAni_Wait-SonicAniData ;05
		dc.w SonAni_Balance-SonicAniData ;06
		dc.w SonAni_LookUp-SonicAniData ;07
		dc.w SonAni_Duck-SonicAniData ;08
		dc.w SonAni_Warp1-SonicAniData ;09
		dc.w SonAni_Warp2-SonicAniData ;0A
		dc.w SonAni_Warp3-SonicAniData ;0B
		dc.w SonAni_Warp4-SonicAniData ;0C
		dc.w SonAni_Stop-SonicAniData ;0D
		dc.w SonAni_Float1-SonicAniData ;0E
		dc.w SonAni_Float2-SonicAniData ;0F
		dc.w SonAni_Spring-SonicAniData ;10
		dc.w SonAni_LZHang-SonicAniData ;11
		dc.w SonAni_Leap1-SonicAniData ;12
		dc.w SonAni_Leap2-SonicAniData ;13
		dc.w SonAni_Surf-SonicAniData ;14
		dc.w SonAni_Bubble-SonicAniData ;15
		dc.w SonAni_Death1-SonicAniData ;16
		dc.w SonAni_Drown-SonicAniData ;17
		dc.w SonAni_Death2-SonicAniData ;18
		dc.w SonAni_Shrink-SonicAniData ;19
		dc.w SonAni_Hurt-SonicAniData ;1A
		dc.w SonAni_LZSlide-SonicAniData ;1B
		dc.w SonAni_Blank-SonicAniData ;1C
		dc.w SonAni_Float3-SonicAniData ;1D
		dc.w SonAni_Float4-SonicAniData ;1E
		dc.w SonAni_Spin_Dash-SonicAniData ;1F
		dc.w SonAni_Peel-SonicAniData ;20
        dc.w SonAni_PeelOutReal-SonicAniData ;21
		dc.w SonAni_SSO-SonicAniData ;22
		dc.w SonAni_Victory-SonicAniData ;23
SonAni_Walk:	dc.b $FF, 8, 9,	$A, $B,	6, 7, $FF
SonAni_Run:	dc.b $FF, $1E, $1F, $20, $21, $FF, $FF,	$FF
SonAni_Roll:	dc.b $FE, $2E, $2F, $30, $31, $32, $FF,	$FF
SonAni_Roll2:	dc.b $FE, $2E, $2F, $32, $30, $31, $32,	$FF
SonAni_Push:	dc.b $FD, $45, $46, $47, $48, $FF, $FF,	$FF
SonAni_Wait:	dc.b $07, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, $77, 2, 2, 2, 3, 3, 4, 4, 3, 3, 4, 4, 3, 3, 4, 4, 3, 3, 4, 4, 3, 3, $7A, $7A, $7A, $7A, $7A, $7A, 3, 3, 4, 4, 3, 3, 4, 4, 3, 3, 4, 4, 3, 3, 4, 4, $7A, $7A, $7A, $7A, $7A, $7A, 3, 3, 4, 4, 3, 3, 4, 4, 3, 3, 4, 4, 3, 3, 4, 4, $7A, $7A, $7A, $7A, $7A, $7A, 3, 3, 4, 4, 3, 3, 4, 4, 3, 3, 4, 4, 3, 3, 4, 4, $7A, $7A, $7A, $7A, $7A, $7A, $7B, $7C, $7C, $7C, $7D, $7D, $7D, $FE, 6, 0
SonAni_Balance:	dc.b $1F, $3A, $3B, $FF
SonAni_LookUp:	dc.b $05, $78, 5, $FE, 1, 0
SonAni_Duck:	dc.b $05, $79, $39, $FE, 1, 0
SonAni_Warp1:	dc.b $3F, $33, $FF, 0
SonAni_Warp2:	dc.b $3F, $34, $FF, 0
SonAni_Warp3:	dc.b $3F, $35, $FF, 0
SonAni_Warp4:	dc.b $3F, $36, $FF, 0
SonAni_Stop:	dc.b 7,	$37, $37, $38, $7E, $7F, $FE, 1, 0
SonAni_Float1:	dc.b 7,	$3C, $3F, $FF
SonAni_Float2:	dc.b 7,	$3C, $3D, $53, $3E, $54, $FF, 0
SonAni_Spring:	dc.b $03, $6E, $6F, $70, $71, $40, $6E, $6F, $70, $71, $40, $6E, $6F, $70, $71, $FD, 0
SonAni_LZHang:	dc.b 4,	$41, $42, $FF
SonAni_Leap1:	dc.b $F, $43, $43, $43,	$FE, 1
SonAni_Leap2:	dc.b $10, $43, $44, $44, $FE, 1, 0
SonAni_Surf:	dc.b $3F, $49, $FF, 0
SonAni_Bubble:	dc.b $B, $56, $56, $A, $B, $FD,	0, 0
SonAni_Death1:	dc.b $20, $4B, $FF, 0
SonAni_Drown:	dc.b $2F, $4C, $FF, 0
SonAni_Death2:	dc.b 3,	$4D, $4D, $4D, $4D, $4D, $4D, $4D, $4D, $4D, $4C, $4C, $4C, $4C, $4C, $4C, $4C, $4C, $4C, $4C, $4C, $4C, $4C, $FF, 0
SonAni_Shrink:	dc.b 3,	$4E, $4F, $50, $51, $52, 0, $FE, 1, 0
SonAni_Hurt:	dc.b 3, $55, $57, $FF
SonAni_LZSlide:	dc.b 3, $55, $57, $FF
SonAni_Blank:	dc.b $77, 0, $FD, 0
SonAni_Float3:	dc.b 3,	$3C, $3D, $53, $3E, $54, $FF, 0
SonAni_Float4:	dc.b 3,	$3C, $FD, 0
SonAni_Spin_Dash:	dc.b 0, $58, $59, $58, $5A, $58, $5B, $58, $5C, $58, $5D, $FF
SonAni_Peel:	dc.b  $FF, $5F, $60, $61, $5F, $FF,  $FF,  $FF
SonAni_PeelOutReal:	dc.b 1, $72, $72, $72, $72, $73, $73, $73, $73, $72, $72, $72, $73, $73, $73, $72, $72, $73, $73, $72, $73, $72, $73, $72, $73, $FE, 4
SonAni_SSO:	dc.b 2, 8, 8, 8, 9, 9, $A, $A, $B, 6, 7, $72, $73, $72, $73, $72, $73, $72, $73, $FE, 4
SonAni_Victory:    dc.b $08, $74, $75, $FF
		even