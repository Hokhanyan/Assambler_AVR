.include "tn2313def.inc"

		ldi r31,$00
		ldi r30,$60
		ldi r29,$00
		ldi r28,$6A
		ldi r27,$00
		ldi r26,$70
		ldi r19,4
		ldi r20,0

loop:
		ld r16,z+
		ld r17,y+
		add r16,r17
		add r16,r20
		ldi r20,0
		brcc loop1
		st x+,r16
		rjmp loop1

loop1:
		ldi r20,1

loop2:
		dec r19
		brne loop
		break
