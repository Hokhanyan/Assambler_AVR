.include "tn2313def.inc"
	lds r16,$0068
	lds r18,$0069
	cp r16,r18
	brmi loop1
	mov r26,r16
	mov r16,r18
	mov r18,r26

loop1:
	ldi r20,0
	ldi r21,0
	ldi r22,0
	add r16,r21

loop3:
	breq loop2
	add r20,r18
	adc r21,r22
	dec r16
	rjmp loop3

loop2:
	sts $0070,r20
	sts $0071,r21
	
	nop
	nop
	break
