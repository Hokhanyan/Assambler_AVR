.include "tn2313def.inc"
	ldi r31,$00
	ldi r30,$60
	ldi r16,9
	ldi r27,$00
	ldi r26,$61
	
loop:	
	ld r18,z+
	movw r27:r26,r31:r30
	movw r29:r28,r27:r26
	ldi r17,0

loop1:
	ld r19,x+
	cp r18,r19	//hamematel r18 r19 i het, jyuxavorum anel yst N droshi
	brmi loop2
	mov r18,r19	// r19 i mijiny texapoxel r18 i mej
	movw r29:r28,r27:r26	//x i exacy y i mej

loop2: 
	inc r17
	cp r17,r16
	brmi loop1
	ld r20,-z
	st z+,r18
	st -y,r20
	//adiw r29:r28,1
	dec r16
	brne loop
	nop
	nop
	nop
	break
