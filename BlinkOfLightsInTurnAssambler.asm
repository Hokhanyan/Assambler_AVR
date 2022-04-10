.include "tn2313def  .inc"

	ldi r16, $FF
  	out DDRB,r16

loop:
	ldi r16,$00
	out portB, r16
	ldi r16, $FF
	out portB, r16
  	ldi r16,0b11000000 ;2,0
	nop
	//rjmp hapaxum

	out portB, r16
  	ldi r16,0b00110000 ;0,2
	nop
	//rjmp hapaxum

	out portB, r16
  	ldi r16,0b00000000 ;0
	nop
	//ldi r17,200
	//rjmp hapaxum
		
	out portB, r16
  	ldi r16,0b10000000 ;1
	nop
	//rjmp hapaxum 

	out portB, r16
  	ldi r16,0b11000000 ;2
  	nop
	//rjmp hapaxum
		
	out portB, r16
  	ldi r16,0b11100000 ;3
	nop
	//rjmp hapaxum

	out portB, r16
  	ldi r16,0b11110000 ;4
	nop
	//rjmp hapaxum
		
	out portB, r16
	ldi r16,0b00100000 ;3
   	//rjmp hapaxum

	out portB, r16
  	ldi r16,0b01000000 ;2
  	nop
	//rjmp hapaxum

	out portB, r16
  	ldi r16,0b10000000 ;1
  	nop
	//rjmp hapaxum

	out portB, r16
  	ldi r16,$FF ;8
  	nop

	//rjmp hapaxum
	rjmp loop


/*
hapaxum:
	ldi r17,200 //jhamanak
	brmi loop
*/		
