.include "tn2313def.inc"
	ldi r16,10
	ldi r31,$00  //z
	ldi r30,$60
	ldi r29,$00	//y
	ldi r28,$6b
	ldi r27,$00	//x
	ldi r26,$79

loop:	

	ld r17,z+	
	sbrs r17,0 // vercnum e 0 bity stugum e ete 1 e mi ara bac tox ete 0 e ara hajordy
	st x+,r17
	sbrc r17,0
	st y+,r17

	dec r16
	brne loop

nop
nop


	break
	
