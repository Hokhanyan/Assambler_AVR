.include "tn2313def.inc"

	ldi r16, $FF
  	out DDRB,r16

loop:
	ldi r16,$00
	out portB, r16
	ldi r16, $FF
	out portB, r16
  	ldi r16,0b10000001 ;1,8
	nop
	//rjmp hapaxum

	out portB, r16
  	ldi r16,0b01000010 ;2,7
	nop
	ldi r17,200
	//rjmp hapaxum
		
	out portB, r16
  	ldi r16,0b00100100 ;3,6
	nop
	//rjmp hapaxum

	out portB, r16
  	ldi r16,0b00011000 ;4,5
  	nop
	//rjmp hapaxum
		
	out portB, r16
  	ldi r16,0b00100100 ;3,6
	nop
	//rjmp hapaxum

	out portB, r16
  	ldi r16,0b01000010 ;2,7
	nop
	//rjmp hapaxum
		
	out portB, r16
	ldi r16,0b10000001 ;1,8
   	//rjmp hapaxum

	rjmp loop


/*
hapaxum:
	ldi r17,200 //jhamanak
	brmi loop
*/		
