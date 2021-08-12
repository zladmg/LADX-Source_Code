
		onbankgroup

	PUBALL
;
BANK1F	GROUP	$1F
;
	LIB	ZRAM
;
	isdmg
;===================================================
SOUNDIT	EQU	$4000
SOUNDCL	EQU	$4003
SOUNDSB	EQU	$4006
;===================================================
	ORG	$7F80
;===================================================
SOUNDST	
	LD	A,(SDOUTFG)
	AND	A
	JR	Z,SNDST10
;
	SUB	$01
	LD	(SDOUTFG),A
;
;;	AND	$01
	AND	$03
	JR	NZ,SNDST10
;
	LD	A,(SLEVEL)
	AND	A
	JR	Z,SNDST00
	DEC	A
	LD	(SLEVEL),A
SNDST00
;
	LD	A,(SLEVEL2)
	AND	A
	JR	Z,SNDST10
	SUB	%00010000
	LD	(SLEVEL2),A
SNDST10
	LD	A,(SDONFG)
	AND	A
	JR	Z,SNDST21
;
	SUB	$01
	LD	(SDONFG),A
;
	AND	$01 ;$03
	JR	NZ,SNDST21
;
	LD	A,(SLEVEL)
	CP	$07
	JR	NC,SNDST20
	INC	A
	LD	(SLEVEL),A
SNDST20
	LD	A,(SLEVEL2)
	CP	$70
	JR	NC,SNDST21
;
	ADD	A,%00010000
	LD	(SLEVEL2),A
SNDST21
	LD	HL,SLEVEL
	LD	A,($FF24)
	AND	%11111000
	OR	(HL)
	INC	HL
	AND	%10001111
	OR	(HL)
	LD	($FF24),A	; Sound level set !
;
	LD	A,(SOUND1)
	AND	A
	JR	Z,SDS101
	LD	($D360),A
	XOR	A
	LD	(SOUND1),A
SDS101
;
	LD	A,(SOUND2)
	AND	A
	JR	Z,SDS102
	LD	($D370),A
	XOR	A
	LD	(SOUND2),A
SDS102
	LD	A,(SOUND3)
	AND	A
	JR	Z,SDS103
	LD	($D378),A
	XOR	A
	LD	(SOUND3),A
SDS103
;	LD	A,(SOUND2)
;	LD	($D370),A
;	LD	A,(SOUND3)
;	LD	($D378),A
;;;	LD	A,(SOUND4)
;;;	LD	($D368),A
;
;	XOR	A
;	LD	(SOUND1),A
;	LD	(SOUND2),A
;	LD	(SOUND3),A
;;;	LD	(SOUND4),A
	RET
;====================================================
	END
