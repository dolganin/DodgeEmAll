asect 0x02
	ldi r1, 0x81
	ldi r0, 1
	st r1, r0
	ldi r1, 0x80
	ldi r0, 2
	st r1, r0
	ldi r1, 0x82
	ldi r0, 4
	st r1, r0
	while
	tst r3
	stays z
	ldi r1,0x80
	ld r1,r1
	if
	tst r1
	is nz
	 ldi r2, 0x81
	 ld r2,r2
     if
     tst r2
     is z
     ldi r2, 0x82
	 ld r2, r2
	 shl r1
	 shl r1
	 shl r1
	 shl r1
	 add r1,r2
	 ldi r0, 0x83
	 st r0, r2
     else
     fi 
	else
	fi
	wend	
	halt
	end