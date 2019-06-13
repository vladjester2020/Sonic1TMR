v_palss_num:    equ $FFFFF79A    ; palette cycling in Special Stage - reference number (2 bytes)
v_palss_time:    equ $FFFFF79C    ; palette cycling in Special Stage - time until next change (2 bytes)

v_camera_pan:    equ $FFFFF7A0    ; Extended Camera - how far the camera/view is panned to the left or right of Sonic (2 bytes)

v_obj31ypos:    equ $FFFFF7A4    ; y-position of object 31 (MZ stomper) (2 bytes)
v_bossstatus:    equ $FFFFF7A7    ; status of boss and prison capsule (01 = boss defeated; 02 = prison opened)