; ---------------------------------------------------------------------------
; Animation script - flapping door (LZ)
; ---------------------------------------------------------------------------
		dc.w byte_113E6-Ani_obj0C
		dc.w byte_113EC-Ani_obj0C
byte_113E6:	dc.b 3,	0, 1, 2, $FE, 1
byte_113EC:	dc.b 3,	2, 1, 0, $FE, 1
		even