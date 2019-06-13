ChangeRingFrame:			; XREF: Level
		subq.b	#1,($FFFFFEC0).w
		bpl.s	loc_421C
		move.b	#$B,($FFFFFEC0).w
		subq.b	#1,($FFFFFEC1).w
		andi.b	#7,($FFFFFEC1).w

loc_421C:
		subq.b	#1,($FFFFFEC2).w
		bpl.s	loc_4232
		move.b	#7,($FFFFFEC2).w
		addq.b	#1,($FFFFFEC3).w
		andi.b	#3,($FFFFFEC3).w

loc_4232:
		subq.b	#1,($FFFFFEC4).w
		bpl.s	loc_4250
		move.b	#7,($FFFFFEC4).w
		addq.b	#1,($FFFFFEC5).w
		cmpi.b	#6,($FFFFFEC5).w
		bcs.s	loc_4250
		move.b	#0,($FFFFFEC5).w

loc_4250:
		tst.b	($FFFFFEC6).w
		beq.s	locret_4272
		moveq	#0,d0
		move.b	($FFFFFEC6).w,d0
		add.w	($FFFFFEC8).w,d0
		move.w	d0,($FFFFFEC8).w
		rol.w	#7,d0
		andi.w	#3,d0
		move.b	d0,($FFFFFEC7).w
		subq.b	#1,($FFFFFEC6).w

locret_4272:
		rts	

