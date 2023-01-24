    asect 0x00	
	while
	tst r3
	stays z
	ldi r1,0x80
	ld r1,r1            #read query from IO_device
	ldi r0, 0b11110000
	and r1, r0          #r0 stores player position
	
	#line 1
	ldi r2, 0b00000001
    if
    and r1, r2    #if query contains 0-bit, asteroid needs to be spawned on line 1.
    is nz
	ldi r2, 0x81  #read random number from IO_device, load it to r2
	ld r2,r2
	if 
	tst r0        #if player on the line 1, load 0 to r2
	is z                
	ldi r2, 0
	else
	fi
	if           
	tst r2        #if r2 is null, read random number from IO_device, load it to r2
	is z
	ldi r3, 0x10   
    ldi r2, 0x82
	ld r2, r2
	add r3,r2
	ldi r3, 0x83  #write number from r2 and line number to the IO_device
	st r3, r2
	else
	fi
    else
    fi

    #line 2
	ldi r2, 0b00000010
    if
    and r1, r2         #if query contains 1-bit, asteroid needs to be spawned on line 2.
    is nz
	ldi r2, 0x81       #read random number from IO_device, load it to r2
	ld r2,r2
	ldi r3, 0b00010000
	if
	cmp r0, r3         #if player on the line 2, load 0 to r2
	is z
	ldi r2, 0
	else
	fi
	if
	tst r2
	is z
	ldi r3, 0x20
    ldi r2, 0x82      #if r2 is null, read random number from IO_device, load it to r2
	ld r2, r2
	add r3,r2
	ldi r3, 0x83
	st r3, r2         #write number from r2 and line number to the IO_device
	else
	fi
    else
    fi
    
    #line 3
    ldi r2, 0b00000100
    if
    and r1, r2      #if query contains 2-bit, asteroid needs to be spawned on line 3.
    is nz
	ldi r2, 0x81    #read random number from IO_device, load it to r2
	ld r2,r2
	ldi r3, 0b00100000
	if
	cmp r0, r3      #if player on the line 3, load 0 to r2
	is z
	ldi r2, 0
	else
	fi
	if
	tst r2
	is z
	ldi r3, 0x30
    ldi r2, 0x82    #if r2 is null, read random number from IO_device, load it to r2
	ld r2, r2
	add r3,r2
	ldi r3, 0x83
	st r3, r2       #write number from r2 and line number to the IO_device
    else
    fi
    else
    fi
    
	#line 4
	ldi r2, 0b00001000
    if
    and r1, r2     #if query contains 2-bit, asteroid needs to be spawned on line 4.
    is nz
	ldi r2, 0x81   #read random number from IO_device, load it to r2
	ld r2,r2
	ldi r3, 0b00110000
	if
	cmp r0, r3     #if player on the line 4, load 0 to r2
	is z
	ldi r2, 0
	else
	fi
	if
	tst r2
	is z
	ldi r3, 0x40
    ldi r2, 0x82   #if r2 is null, read random number from IO_device, load it to r2
	ld r2, r2
	add r3,r2
	ldi r3, 0x83   #write number from r2 and line number to the IO_device
	st r3, r2
	else
	fi
    else
    fi

    ldi r3, 0
	wend	
	halt
	end