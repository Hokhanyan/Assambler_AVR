.include "tn2313def.inc"

		ldi r28,0
		ldi r27,0
		ldi r17,0
		lds r16,$0060
		lds r18,$0062
		cpi r18,0
		brie loop1
		mov r19,r18
		neg r19
		ldi r25,8
loop2:
		lsl r16
		rol r17
		lsl r28
		add r17,r19
		brmi loop3
		ori r28,1
		rjmp loop4
loop3:
		add r17,r18
		andi r28,0b11111110
loop4:
		dec r25
		brne loop2
		
		
		
		
		
		ldi r25,8
loop5:
		lsl r16
		rol r17
		lsl r27
		add r17,r19
		brmi loop6
		ori r27,1
		rjmp loop7
loop6:
		add r17,r18
		andi r27, 0b11111110
loop7:
		dec r25
		brne loop5
		sts $0065,r28
		sts $0066,r27
loop1:
		nop
		nop
		nop

		break
