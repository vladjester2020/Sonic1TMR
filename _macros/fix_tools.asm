Sprite_Table_Input 		equ $FFFFAC00
Update_HUD_lives		equ $FFFFFE1C
Update_HUD_rings		equ $FFFFFE1D
Update_HUD_timer		equ $FFFFFE1E
Update_HUD_score		equ $FFFFFE1F

Ring_count			equ $FFFFFE20 ; 2 bytes
Timer				equ $FFFFFE22 ; 4 bytes
Timer_minute_word		equ $FFFFFE22 ; 2 bytes
Timer_minute			equ $FFFFFE23 ; 1 byte
Timer_second			equ $FFFFFE24 ; 1 byte
Timer_centisecond		equ $FFFFFE25 ; 1 byte
Score				equ $FFFFFE26 ; 4 bytes
Last_star_pole_hit		equ $FFFFFE30 ; 1 byte -- max activated starpole ID in this act
Sonic_top_speed		equ $FFFFF760
Debug_object			equ $FFFFFE06
Debug_placement_mode		equ $FFFFFE08
Control_Locked		equ $FFFFF7CC
VDP_data_port =			$C00000 ; (8=r/w, 16=r/w)