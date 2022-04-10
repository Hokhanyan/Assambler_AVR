.include "tn2313def.inc"
	ldi r16,10
	ldi r31,$00
	ldi r30,$60
	movw r27:r26,r31:r30   //ldi r27,$00 //ldi r26,$60
	ld r17,z+

loop:
	ld r18,z+
	cp r17,r18	//hamematel r17 r18 i het, jyuxavorum anel yst N droshi
	brpl loop1
	mov r17,r18	// r18 i mijiny texapoxel r17 i mej
	movw r27:r26,r31:r30	//z i exacy x i mej

loop1:
	dec r16	//r16 mi hat pakasacnel
	brne loop
	lds r20,$0060	//r20 0060
	sts $0060,r17	//0060 r17
	st -x,r20
	nop
	nop
	break
