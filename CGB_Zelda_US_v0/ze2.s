
		onbankgroup

;==============	�o���N�O ================================================
BANK0		GROUP	0
;-------------<	ZCO >-------------
		EXTERN	RNDSUB,OBJBG,SOUNDCLR
;
;-------------<	ZPL >-------------
		EXTERN	PLPSRV,MSGCHK,MSGCH2,MSGCHK2,DUSHCL,KNCSET,KNFLSH
		EXTERN	PLSHST,MVCALC,FLASHST,EXIDSH,NXGOTO,LDTIM0,ENHNCL
		EXTERN	YOSSISET,DUSHCL2,BBSDST,NXGOTO4,LDTIM1,LDTIM3
		EXTERN	PLPTSTL,CARITMD,PTOBI,PBULE,POVER,PINDR1,PMOVE
		EXTERN	PFOLE,PBOMB,PMGIC,PSKOP,PYAST,POKAR,PTATE,GMAP
		extern	GPLAY
;
;-------------<	ZES >-------------
		EXTERN	ISIBRKL,CRENENL,BSSDCK,ENMOVE,ENBGCKL,ENBGCK2L
		EXTERN	ENPTST,STATINC,ENIDSHL,ENIDSH2L,CREPKEL,CRENPLL
		EXTERN	CRENPL2L,EN2CST,EN1CST,PSERCHL,PSERCH2L,CRKNENL
		EXTERN	CRENPSL,ENPSSV,ENSDCL,NXOMSBL,PLBGCKL,ENALCL
		EXTERN	HNSMST,ENOMST,ITEMGETS,SHRVSE,ENMDSTL,EFAIL,EFOLE
		EXTERN	EFIRE,EINIT,EMOVE,ESTOP,ECACH,ESHOT
;
;-------------<	ZBS >-------------
		EXTERN	DJRMRD,BGCRRD
;
;-------------<	ZMA >-------------
		EXTERN	BG1UNIT_ATR_SUB
;
;==============	�o���N�Q ================================================
BANK2		GROUP	2
;-------------<	ZEX >-------------
		EXTERN	SPUNDT,SMK1,RZNZ,FLSH,FUCKS
;
;==============	�o���N�R ================================================
BANK3		GROUP	3
;-------------<	ZEN >-------------
		EXTERN	EFLSST,HARTB,R7BEM,RENO7,BGKAO,UFOCH,TERSA,FISHG
		EXTERN	SBOMB,BOMBR,NINTM,HAYAB,KTOBJ,BSLIM,SLIMB,TBOSS
		EXTERN	SLIMS,KAKER,BHOLE,KAKIN,AKUMA
;
;==============	�o���N�W ================================================
BANK8		GROUP	8
;-------------<	ZBD >-------------
		EXTERN	GRBGCR,DJBGCR
;
;==============	�o���N�P�S ==============================================
BANK14		GROUP	$14
;-------------<	ZEX >-------------
                EXTERN  WTUP
;
;========================================================================
	PUBALL
;
BANK4	GROUP	04
;
	LIB	ZRAM
	LIB	ZBN
;
;------------------------------------------------
	KANJI
	PAGE
;
	isdmg
;
	LIST
	ORG	$4000
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%					%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;;;KK;;;;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;;;KK;;;;%	�� �{�X					%
;;;KK;;;;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;;;KK;;;TBOSSIT
;;;KK;;;		XOR	A
;;;KK;;;		LD	HL,ENWRK4
;;;KK;;;		ADD	HL,BC
;;;KK;;;		LD	(HL),A
;;;KK;;;;
;;;KK;;;	LD	HL,ENXPSL
;;;KK;;;	ADD	HL,BC
;;;KK;;;	LD	A,(HL)
;;;KK;;;	ADD	A,$08
;;;KK;;;	LD	(HL),A
;;;KK;;;	RET
;===================================================
;===================================================
;===================================================
;===================================================
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�c�{����						%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
TBOSSMV
	CALL	SHRVSE	;�V���b�^�[������␳�I
;
	CALL	BSSDCK	;(S)
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	RST	0
	DW	TUB00
	DW	OYAJIMV
	DW	OSMOKMV
	DW	OFIREMV
	DW	OFIR2MV
;---------------------------------------------------
;---------------------------------------------------
;---------------------------------------------------
;---------------------------------------------------
;---------------------------------------------------
TUB00
	LD	HL,ENWRK3
	ADD	HL,BC
	LD	A,(HL)
	CP	$03
	JR	C,TUB01
;
	LD	A,TBOSS
	CALL	ENIDSHL
;
	LD	A,(WORK0)
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A
	LD	A,(WORK1)
	LD	HL,ENYPSL
	ADD	HL,DE
	SUB	$18
	LD	(HL),A
;
	LD	HL,ENWRK0
	ADD	HL,DE
	LD	(HL),$02
;
	LD	HL,ENTIM0
	ADD	HL,DE
	LD	(HL),$27
;
	LD	HL,ENLIFE
	ADD	HL,DE
	LD	(HL),$08
;
	CALL	ISIBRKL
;
	LD	A,$29
	LD	(SOUND3),A	;(S)
	RET
TUB01
	LD	HL,ENLIFE
	ADD	HL,BC
	LD	(HL),$20
;
	LD	A,C
	LD	(TBINDX),A
;
	CALL	TUBOSCS
;
	CALL	E2STCK
;
	LD	HL,ENMOD0
	ADD	HL,BC
	LD	(HL),%10000001
	LD	HL,ENMOD1
	ADD	HL,BC
	LD	(HL),%10000000
;
	CALL	E2ZCLC
	LD	HL,ENZSPD
	ADD	HL,BC
	DEC	(HL)
	DEC	(HL)
;
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	LD	(ENHELP),A
	AND	%10000000
	JR	Z,TUBS188
;
	XOR	A
	LD	(HL),A
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),B
TUBS188
	LD	A,(ENSTAT2)
	RST	0
	DW	TUBS000
	DW	TUBS100
	DW	TUBS200
	DW	TUBS300
;===============================================
TUBS000
	LD	A,(PLYPSL)
	CP	$70
	JR	NC,TUBO010
;
	CALL	STATINC
;
	CALL	LDTIM0
	LD	(HL),$FF
TUBO010
	RET
;===================================================
TBSPIND
	DB	0,1,0,2
;- - - - - - - - - - - - - - - - - - -
TUBS100
	CALL	ENHNCL
;
	CALL	CRKNENL
	CALL	CRENPLL
	JR	NC,TUBS108
;
	CALL	DUSHCL2
;
	LD	A,$09
	LD	(SOUND1),A	;(S)
;
	LD	A,$10
	LD	(HANEFG),A
;
	LD	A,$14
	CALL	PSERCH2L
;
	LD	A,(WORK0)
	LD	(PLYSPD),A
	LD	A,(WORK1)
	LD	(PLXSPD),A
TUBS108
	LD	HL,ENWRK2
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	NZ,TUBS10A
;
	LD	A,(ENHELP)
	AND	%10000000
	JR	Z,TUBS189
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),$10
;
	LD	A,$20
	LD	(SOUND1),A	;(S) 
TUBS189	
	LD	A,(PLXPSL)
	PUSH	AF
	LD	A,$50
	LD	(PLXPSL),A
	LD	A,(PLYPSL)
	PUSH	AF
	LD	A,$48
	LD	(PLYPSL),A
;
	LD	A,$08
	CALL	PSERCHL
;
	LD	A,(ENSVXL)
	LD	HL,PLXPSL
	SUB	(HL)
	ADD	A,$02
	CP	$04
	JR	NC,TUBS109
	LD	A,(ENSVYL)
	LD	HL,PLYPSL
	SUB	(HL)
	ADD	A,$02
	CP	$04
	JR	NC,TUBS109
;
	LD	HL,ENWRK2
	ADD	HL,BC
	INC	(HL)
TUBS109
	POP	AF
	LD	(PLYPSL),A
	POP	AF
	LD	(PLXPSL),A
;
	CALL	E2MVCL
;
TUBS10A
	CALL	LDTIM0
	CP	$01
	JR	NZ,TUBS110
;
	LD	A,TBOSS
	CALL	ENIDSHL
;
	LD	A,(WORK0)
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A
	LD	A,(WORK1)
	LD	HL,ENYPSL
	ADD	HL,DE
	SUB	$26
	LD	(HL),A
;
	LD	HL,ENWRK0
	ADD	HL,DE
	LD	(HL),$02
;
	LD	HL,ENTIM0
	ADD	HL,DE
	LD	(HL),$47
;
	LD	A,$06
	LD	(SOUND1),A	;(S)
TUBS110
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	AND	$03
	LD	E,A
	LD	D,B
	LD	HL,TBSPIND
	ADD	HL,DE
	LD	A,(HL)
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;;
;;;;;;;;	RET
;===================================================
TUBS200
	CALL	LDTIM0
	JR	Z,TUBS201
;
	DEC	A
	JR	NZ,TUBS2001
;
	CALL	STATINC
	LD	(HL),$03
	RET
;- - - - - - - - - - - - - - - - - -
TUBS2001
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	NZ,TUBS2003
;
		CALL	LDTIM0
		CP	$028
		JR	C,TUBS2004_PASS
		LD	HL,ENXSPD
		ADD	HL,BC
		LD	A,(HL)
		LD	HL,ENYSPD
		ADD	HL,BC
		OR	(HL)
		JR	Z,TUBS2004_PASS
		LD	HL,ENWRK4
		ADD	HL,BC
		LD	A,(HL)
		AND	$001			;�P�x���b�Z�[�W���o�Ă�H
		JR	NZ,TUBS2004_PASS	;	YES --> TUBS2004_PASS
		INC	(HL)
		LD	A,$7F	;�@�k�u�Q�{�X�i�ق̓ːi�����Ŏ~�߂����E�ǂɂԂ�����܂Łj
		CALL	MSGCH2
TUBS2004_PASS
;
	CALL	ENSDCL
;
	CALL	LDTIM0
	CP	$28
	JR	NC,TUBS2004
;
	LD	E,$08
	LD	A,(FRCNT)
	AND	$04
	JR	Z,TUBS2002
	LD	E,$F8
TUBS2002
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),E
TUBS2003
	CALL	E2MVCL
;
TUBS2004
;
	CALL	ENBGCKL
;
TUBS201
	CALL	ENHNCL
;
	CALL	CRKNENL
	CALL	M2CROS
;
	LD	A,(ENSVXL)
	LD	HL,PLXPSL
	SUB	(HL)
	ADD	A,$10
	CP	$20
	JR	NC,TUBS208
;
	LD	A,(ENDSYP)
	LD	HL,PLYPSL
	SUB	(HL)
	ADD	A,$10
	CP	$20
	JR	NC,TUBS208
;
	CALL	DUSHCL2
;- - Cach check - -
	LD	A,(ITEMB)
	CP	PBULE
	JR	NZ,TST900	; Bulesret check !
;
	LD	A,(KEYA1)
	AND	%00100000
	JR	NZ,TST910
	JR	TSTP10
TST900
	LD	A,(ITEMA)
	CP	PBULE
	JR	NZ,TSTP10
;
	LD	A,(KEYA1)
	AND	%00010000
	JR	Z,TSTP10
;
TST910
	LD	A,(WPLCAMD)
	AND	A
	JR	NZ,TSTP10
;
	INC	A
	LD	(WPLCAMD),A
;
	LD	HL,ENMODE
	ADD	HL,BC
	LD	(HL),ECACH
;
	LD	HL,ENCAST
	ADD	HL,BC
	LD	(HL),B
;
	LD	A,(PLCMKI)
	LD	(PLCAMK),A
;
	LD	HL,SOUND2
	LD	(HL),$02	;(S)
;
	CALL	LDTIM0
	LD	(HL),$08
TSTP10
TUBS208
	XOR	A
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;	RET	
;===================================================
TUBS300
	LD	HL,ENFLSH
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,TUBS301
;
	LD	(HL),B
;
	CALL	STATINC
	LD	(HL),$2
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),$20
;
	LD	A,$08
	CALL	PSERCH2L
;
	LD	A,(WORK0)
	CPL
	INC	A
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),A
;
	LD	A,(WORK1)
	CPL
	INC	A
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
;
	CALL	LDTIM0
	LD	(HL),$C0
	RET
;- - - - - - - - - - - - - - - - -
TUBS301
	CALL	E2HNSB
;
	LD	HL,ENMOD0
	ADD	HL,BC
	LD	(HL),%00000001
	LD	HL,ENMOD1
	ADD	HL,BC
	LD	(HL),%00000000
	LD	HL,ENMOD3
	ADD	HL,BC
	LD	(HL),%00000000
;
	CALL	CREPKEL
;
	LD	HL,ENMOD3
	ADD	HL,BC
	LD	(HL),%11010000
;
	LD	A,(ENHELP)
	AND	%10000000
	JR	Z,TUBS389
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),$10
;
	LD	A,$20
	LD	(SOUND1),A	;(S) 
;
	LD	A,$0C
	CALL	PSERCHL
TUBS389	
	CALL	E2MVCL
	CALL	ENBGCKL
;
	JP	TUBS110
;===================================================
TUBOSCD
;0
	DB	$F0,$00,$76,$06
	DB	$F0,$08,$76,$26
	DB	$00,$00,$78,$06
	DB	$00,$08,$78,$26
;1
	DB	$F0,$00,$7A,$06
	DB	$F0,$08,$7C,$06
	DB	$00,$00,$7E,$06
	DB	$00,$08,$7E,$26
;2
	DB	$F0,$00,$7C,$26
	DB	$F0,$08,$7A,$26
	DB	$00,$00,$7E,$06
	DB	$00,$08,$7E,$26
TBSWCD
	DB	$26,$00
;-------------------------------------------
TUBOSCS
	LD	HL,ENCHPT
	ADD	HL,BC
	LD	A,(HL)  ;ENCHPT2) ;HL)
;
	RLA
	RLA
	RLA
	RLA
	AND	$F0
	LD	E,A
	LD	D,B
;
	LD	HL,TUBOSCD
	ADD	HL,DE
;
	LD	C,$04
	CALL	ENOMST
;
	LD	A,$04
	CALL	NXOMSBL
;
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	AND	A
		ret	Z
;;;;;;;;	JR	Z,TBCS90
;
	LD	A,(ENSVYL)
	ADD	A,$0A
	LD	(ENDSYP),A
;
	XOR	A
	LD	(ENCHPT2),A
;
	LD	DE,TBSWCD
	CALL	EN1CST
;
		jp	ENPSSV
;;;;;;;;	CALL	ENPSSV
;;;;;;;;;
;;;;;;;;TBCS90
;;;;;;;;	RET
;********************************************************
;*	�ق��₶					*
;********************************************************
OYAJIMV
	CALL	OYAJICS
;
	LD	A,(ENMODE2)
	CP	EMOVE
	JR	Z,OYJ000
;
	LD	HL,ENFLSH
	ADD	HL,BC
	LD	A,(FRCNT)
	LD	(HL),A
;
	LD	A,(ENSTAT2)
	RST	0
	DW	OYF100
	DW	OYF200
	DW	OYF300
;===============================================
OYF100
	CALL	LDTIM0
	LD	(HL),$40
		jp	STATINC
;;;;;;;;	CALL	STATINC
;;;;;;;;	RET
;===============================================
OYF200
	CALL	LDTIM0
		ret	NZ
;;;;;;;;	JR	NZ,OYF210
;
	LD	(HL),$A0
;
		jp	STATINC
;;;;;;;;	CALL	STATINC
;;;;;;;;OYF210
;;;;;;;;	RET
;===============================================
OYF300
	CALL	LDTIM0
	JP	Z,HARTBST
;
		jp	ESMRND
;;;;;;;;	CALL	ESMRND
;;;;;;;;	RET
;&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
OYJ000
	CALL	E2STCK
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	A,(HL)
	LD	(OYAJIXS),A
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	A,(HL)
	LD	(OYAJIYS),A
;
	LD	A,(ENSTAT2)
	CP	$05
	JR	Z,OYJI000
;
	CALL	CRENPLL
OYJI000
	LD	A,(ENSTAT2)
	RST	0
	DW	OY0000
	DW	OY1000
	DW	OY2000
	DW	OY3000
	DW	OY4000
	DW	OY5000
;============================================
OY0000
	CALL	LDTIM0
		ret	NZ
;;;;;;;;	JR	NZ,OY0010
;
	CALL	STATINC
;
	CALL	LDTIM1
	LD	(HL),$FF
;
	LD	A,(TBINDX)
	LD	E,A
	LD	D,B
	LD	HL,ENMODE
	ADD	HL,DE
	LD	A,(HL)
	AND	A
;
	LD	A,$52
	JR	NZ,OY0012
;
	CALL	STATINC
	LD	(HL),$4
;
	LD	HL,ENLIFE
	ADD	HL,BC
	LD	(HL),$08
;
	LD	A,$53
OY0012
		jp	MSGCHK
;;;;;;;;	CALL	MSGCHK
;;;;;;;;OY0010
;;;;;;;;OY0020
;;;;;;;;	RET
;============================================
OYFRTM
	DB	$10,$14,$18,$20,$28,$30,$38,$40,$FF,$FF
OYMVXL
	DB	$60,$40
OYMVXS
OYYSAD
	DB	$01,$FF
OYMVX2
;;	DB	$08,$F8
OYYSLM
	DB	$08,$F8
;- - - - - - - - - - - - - - - - - -
OY1000
	CALL	E2MVCL
;
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	E,(HL)
	LD	D,B
;
	LD	A,(FRCNT)
	AND	$07
	JR	NZ,OY1002
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,OYMVX2
	ADD	HL,DE
	CP	(HL)
	JR	Z,OY1002
;
	LD	HL,OYMVXS
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,BC
	ADD	A,(HL)
	LD	(HL),A
;
OY1002
	LD	HL,OYMVXL
	ADD	HL,DE
	LD	A,(ENSVXL)
	CP	(HL)
	JR	NZ,OY1008
;
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	A,(HL)
	XOR	$01
	LD	(HL),A
OY1008
	LD	A,(FRCNT)
	AND	$01
	JR	NZ,OY1009
;
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	E,(HL)
	LD	D,B
	LD	HL,OYYSAD
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENYSPD
	ADD	HL,BC
	ADD	A,(HL)
	LD	(HL),A
	LD	HL,OYYSLM
	ADD	HL,DE
	CP	(HL)
	JR	NZ,OY1009
;
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	A,(HL)
	XOR	$01
	LD	(HL),A
OY1009
;
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	RRA
	AND	$01		
	CALL	ENPTST
;
	CALL	LDTIM0
	JR	NZ,OY1010
;
	PUSH	HL
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	LD	E,A
	CP	$08		;�΂𓊂��Ă��鎞��
	JR	C,OY100A
;
	CALL	STATINC
;
	POP	HL
	LD	(HL),$30
	RET
OY100A
	LD	D,B
	LD	HL,OYFRTM
	ADD	HL,DE
	LD	A,(HL)
	POP	HL
	LD	(HL),A
;
	LD	A,TBOSS
	CALL	ENIDSHL
	JR	C,OY1010
;
	LD	A,(WORK0)
	SUB	$0C
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	A,(WORK1)
	SUB	$14
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,ENWRK0
	ADD	HL,DE
	LD	(HL),$03
;
	LD	HL,ENZSPD
	ADD	HL,DE
	LD	(HL),$20
;
	LD	HL,ENXSPD
	ADD	HL,DE
	LD	(HL),$0C
;
	LD	HL,ENMOD0
	ADD	HL,DE
	LD	(HL),%01000010
OY1010
	CALL	LDTIM1
	JR	NZ,OY1020
;
;	LD	(HL),$20		;���̉΂𓊂���܂ł̎���
	LD	(HL),$30		;���̉΂𓊂���܂ł̎���
;
	LD	A,TBOSS
	CALL	ENIDSHL
	JR	C,OY1020
;
	PUSH	BC
;
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	INC	(HL)
	AND	$01
	LD	C,A
	LD	HL,OFSXAD
	ADD	HL,BC
	LD	A,(WORK0)
	ADD	A,(HL)
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	A,(WORK1)
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,ENZSPD
	ADD	HL,DE
	LD	(HL),$24
;
	LD	HL,ENWRK0
	ADD	HL,DE
	LD	(HL),$04
;
	LD	HL,ENMOD0
	ADD	HL,DE
	LD	(HL),%00010010
;
		ld	c,e
		ld	b,d
;;10/31;	PUSH	DE
;;10/31;	POP	BC
	LD	A,$1F
	CALL	PSERCHL
;
	POP	BC
;
	LD	HL,ENTIM2
	ADD	HL,BC
	LD	(HL),$10
;
	LD	A,$28
	LD	(SOUND3),A	;(S)
OY1020
	LD	HL,ENTIM2
	ADD	HL,BC
	LD	A,(HL)
	AND	A
		ret	Z
;;;;;;;;	JR	Z,OY1030
;
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	AND	$01
	LD	A,$02
	JR	Z,OY1028
	INC	A
OY1028
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;OY1030
;;;;;;;;	RET
;- - - - - - - - - - - - -
OFSXAD
	DB	$F4,$0C
;============================================
OY2000
	LD	A,(TBINDX)
	LD	E,A
	LD	D,B
;
	LD	A,(PLXPSL)
	PUSH	AF
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	A,(HL)
	LD	(PLXPSL),A	
	LD	A,(PLYPSL)
	PUSH	AF
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	A,(HL)
	SUB	$20
	LD	(PLYPSL),A	
;
	LD	A,$10
	CALL	PSERCHL
	CALL	E2MVCL
;
	LD	HL,PLXPSL
	LD	A,(ENSVXL)
	SUB	(HL)
	ADD	A,$3
	CP	$06
	JR	NC,OY2020
;
	LD	HL,PLYPSL
	LD	A,(ENDSYP)
	SUB	(HL)
	ADD	A,$3
	CP	$06
	JR	NC,OY2020
;
	CALL	LDTIM0
	LD	(HL),$10
;
	CALL	STATINC
OY2020
	POP	AF
	LD	(PLYPSL),A
	POP	AF
	LD	(PLXPSL),A
;
	RET
;============================================
OY3000
	CALL	LDTIM0
	JP	Z,E2CLER
;
	CP	$04
	JR	NZ,OY3010
;
	LD	A,TBOSS
	CALL	ENIDSHL
;
	LD	A,(WORK0)
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A
	LD	A,(WORK1)
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,ENWRK0
	ADD	HL,DE
	LD	(HL),$02
;
	LD	HL,ENTIM0
	ADD	HL,DE
	LD	(HL),$47+$80
;
	LD	A,$1F
	LD	(SOUND1),A	;(S) 
OY3010
	RET
;===================================================
OY4000
	LD	HL,ENMOD1
	ADD	HL,BC
	LD	(HL),%00001100
	LD	HL,ENMOD3
	ADD	HL,BC
	LD	(HL),%10000001
;
	LD	HL,ENFLSH
	ADD	HL,BC
	LD	A,(HL)
	CP	$02
	JR	NZ,OY4008
;
;;	CALL	OWARP
;
	CALL	STATINC
	CALL	LDTIM0
	LD	(HL),$80
	RET
;
OY4008
	CALL	E2HNSB
;
	CALL	CRKNENL
;
	CALL	E2MVCL
	CALL	ENBGCKL
;
	LD	A,(FRCNT)
	AND	$03
	JR	NZ,OY4050
;
	LD	A,$10
	CALL	PSERCH2L
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	A,(WORK1)
	SUB	(HL)
	AND	%10000000
	JR	Z,OY4010
;
	DEC	(HL)
	DEC	(HL)
OY4010
	INC	(HL)
;
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	A,(WORK0)
	SUB	(HL)
	AND	%10000000
	JR	Z,OY4020
;
	DEC	(HL)
	DEC	(HL)
OY4020
	INC	(HL)
OY4050
OYPTST3
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	RRA
	AND	$01
	ADD	A,$2
	JP	ENPTST
;===================================================
OY5000
	LD	HL,ENMOD0
	ADD	HL,BC
	LD	(HL),%01000001
;
	CALL	LDTIM0
	JR	NZ,OY5010
;
	CALL	STATINC
	LD	(HL),$04
;
	LD	HL,ENMOD0
	ADD	HL,BC
	LD	(HL),%00000001
;
	CALL	RNDSUB
	AND	$01
	JR	NZ,OY5008
;
	LD	HL,ENWRK2
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	(HL),A
;
	LD	HL,ENWRK3
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENXPSL
	ADD	HL,BC
	LD	(HL),A
OY5008
	CALL	ENSDCL
	LD	HL,ENHNFG
	ADD	HL,BC
	LD	(HL),B
;
	LD	A,TBOSS
	CALL	ENIDSHL
	JR	C,OY5020
;
	PUSH	BC
;
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	INC	(HL)
	AND	$01
	LD	C,A
	LD	HL,OFSXAD
	ADD	HL,BC
	LD	A,(WORK0)
	ADD	A,(HL)
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	A,(WORK1)
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,ENZSPD
	ADD	HL,DE
	LD	(HL),$24
;
	LD	HL,ENWRK0
	ADD	HL,DE
	LD	(HL),$04
;
	LD	HL,ENMOD0
	ADD	HL,DE
	LD	(HL),%00010010
;
		ld	c,e
		ld	b,d
;;10/31;	PUSH	DE
;;10/31;	POP	BC
	LD	A,$1F
	CALL	PSERCHL
;
	POP	BC
;
	LD	A,$28
	LD	(SOUND3),A	;(S)
OY5020
	RET
OY5010
	LD	A,(PLXPSL)
	PUSH	AF
	LD	A,$50
	LD	(PLXPSL),A
	LD	A,(PLYPSL)
	PUSH	AF
	LD	A,$48
	LD	(PLYPSL),A
;
	LD	A,$20
	CALL	PSERCH2L
;
	LD	A,(WORK1)
	CPL
	INC	A
	PUSH	AF
;
	LD	A,(WORK0)
	PUSH	AF
;
	LD	A,$04
	CALL	PSERCH2L
;
	LD	HL,WORK1
	POP	AF
	ADD	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
;
	LD	HL,WORK0
	POP	AF
	ADD	A,(HL)
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),A
;
	POP	AF
	LD	(PLYPSL),A
	POP	AF
	LD	(PLXPSL),A
;
	CALL	E2MVCL
;
	CALL	OWARP
;
	JP	OYPTST3
;====================================
OWARP
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	A,(HL)
	SUB	$48
	LD	E,A
;
	LD	A,$48
	SUB	E
	LD	HL,ENWRK2
	ADD	HL,BC
	LD	(HL),A
;
	LD	HL,ENXPSL
	ADD	HL,BC
	LD	A,(HL)
	SUB	$50
	LD	E,A
;
	LD	A,$50
	SUB	E
	LD	HL,ENWRK3
	ADD	HL,BC
	LD	(HL),A
	RET
;===================================================
OYAJICD
;0
	DB	$F0,$F4,$60,$02
	DB	$F0,$FC,$62,$02
	DB	$F0,$04,$64,$02
	DB	$F0,$0C,$62,$22
	DB	$F0,$14,$60,$22
	DB	$00,$F4,$66,$02
	DB	$00,$FC,$68,$02
	DB	$00,$04,$6A,$02
	DB	$00,$0C,$68,$22
	DB	$00,$14,$66,$22
;1
	DB	$F0,$F4,$60,$02
	DB	$F0,$FC,$62,$02
	DB	$F0,$04,$64,$22
	DB	$F0,$0C,$62,$22
	DB	$F0,$14,$60,$22
	DB	$00,$F4,$66,$02
	DB	$00,$FC,$68,$02
	DB	$00,$04,$6A,$22
	DB	$00,$0C,$68,$22
	DB	$00,$14,$66,$22
;2
	DB	$F0,$F4,$60,$02
	DB	$F0,$FC,$62,$02
	DB	$F0,$04,$64,$02
	DB	$F0,$0C,$6C,$02
	DB	$F0,$14,$6E,$02
	DB	$00,$F4,$66,$02
	DB	$00,$FC,$68,$02
	DB	$00,$04,$6A,$02
	DB	$00,$0C,$70,$02
	DB	$00,$14,$72,$02
;3
	DB	$F0,$F4,$6E,$22
	DB	$F0,$FC,$6C,$22
	DB	$F0,$04,$64,$22
	DB	$F0,$0C,$62,$22
	DB	$F0,$14,$60,$22
	DB	$00,$F4,$72,$22
	DB	$00,$FC,$70,$22
	DB	$00,$04,$6A,$22
	DB	$00,$0C,$68,$22
	DB	$00,$14,$66,$22
;- - - - - - - - - - - - - - - - - - -
OTAILCD				;�c�{�����̂�����
	DB	$74,$02
	DB	$74,$22
;- - - - - - - - - - - - - - - - - - -
;- - - - - - - - - - - - - - - - - - -
OYAJICS
	LD	A,(ENSTAT2)
	CP	$05
	JR	NZ,OYC000
;
	LD	A,(FRCNT)
	AND	$01
	JR	NZ,OYC000
;
	LD	HL,ENWRK2
	ADD	HL,BC
	LD	A,(HL)
	LD	(ENDSYP),A
;
	LD	HL,ENWRK3
	ADD	HL,BC
	LD	A,(HL)
	LD	(ENSVXL),A
OYC000
	LD	HL,ENCHPT
	ADD	HL,BC
	LD	A,(HL)  ;ENCHPT2) ;HL)
;
	LD	E,A
	LD	D,B
;
	SLA	E
	SLA	E
	SLA	E
	LD	A,E
	SLA	E
	SLA	E
	ADD	A,E
	LD	E,A
;
	LD	HL,OYAJICD
	ADD	HL,DE
;
	LD	C,$0A
	CALL	ENOMST
;
	LD	A,$0A
	CALL	NXOMSBL
;
	LD	A,(ENDSYP)
	ADD	A,$10
	LD	(ENDSYP),A
;
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	AND	$01
	LD	(ENCHPT2),A
;	
	LD	DE,OTAILCD
	CALL	EN1CST
;
		jp	ENPSSV
;;;;;;;;	CALL	ENPSSV
;;;;;;;;	RET
;===================================================
;- - - - - - - - - - - - - - - - - - -
OSMOKCD
;0
	DB	$10,$00,$1E,$01
	DB	$10,$08,$1E,$61
	DB	$10,$00,$1E,$01
	DB	$10,$08,$1E,$61
	DB	$10,$00,$1E,$01
	DB	$10,$08,$1E,$61
	DB	$10,$00,$1E,$01
	DB	$10,$08,$1E,$61
;1
	DB	$08,$00,$30,$01
	DB	$08,$08,$30,$61
	DB	$08,$00,$30,$01
	DB	$08,$08,$30,$61
	DB	$08,$00,$30,$01
	DB	$08,$08,$30,$61
	DB	$08,$00,$30,$01
	DB	$08,$08,$30,$61
;2
	DB	$04,$00,$30,$01
	DB	$04,$08,$30,$61
	DB	$14,$00,$1E,$01
	DB	$14,$08,$1E,$61
	DB	$14,$00,$1E,$01
	DB	$14,$08,$1E,$61
	DB	$14,$00,$1E,$01
	DB	$14,$08,$1E,$61
;3
	DB	$00,$00,$30,$01
	DB	$00,$08,$30,$61
	DB	$10,$00,$1E,$01
	DB	$10,$08,$1E,$61
	DB	$10,$00,$1E,$01
	DB	$10,$08,$1E,$61
	DB	$10,$00,$1E,$01
	DB	$10,$08,$1E,$61
;4
	DB	$F2,$FA,$30,$01
	DB	$F2,$02,$30,$61
	DB	$F2,$06,$30,$01
	DB	$F2,$0E,$30,$61
	DB	$FE,$FA,$30,$01
	DB	$FE,$02,$30,$61
	DB	$FE,$06,$30,$01
	DB	$FE,$0E,$30,$61
;5
	DB	$F0,$F8,$30,$41
	DB	$F0,$00,$30,$21
	DB	$F0,$08,$30,$41
	DB	$F0,$10,$30,$21
	DB	$00,$F8,$30,$41
	DB	$00,$00,$30,$21
	DB	$00,$08,$30,$41
	DB	$00,$10,$30,$21
;6
	DB	$F0,$F8,$32,$01
	DB	$F0,$00,$32,$61
	DB	$F0,$08,$32,$01
	DB	$F0,$10,$32,$61
	DB	$00,$F8,$32,$01
	DB	$00,$00,$32,$61
	DB	$00,$08,$32,$01
	DB	$00,$10,$32,$61
;- - - - - - - - - - - - - - - - - - -
;===================================================
;===================================================
OSMPTD
	DB	6,5,4,5,4,3,2,1,0
OSMPT2
	DB	0,1,2,3,4,5,4,5,6
;
OSMOKMV
	CALL	OSMOKCS
;
	CALL	E2STCK
;
	CALL	LDTIM0
	BIT	7,A
	JR	Z,OSM008
;
	AND	$7F
	JR	NZ,OSM002
;
	LD	A,(TBINDX)
	LD	E,A
	LD	D,B
	LD	HL,ENSTAT
	ADD	HL,DE
	LD	(HL),$03
;
	JP	E2CLER
;
OSM002
	RRA
	RRA
	RRA
	AND	$0F
	LD	E,A
	LD	D,B
	LD	HL,OSMPT2
	ADD	HL,DE
	LD	A,(HL)
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;;
;;;;;;;;	RET
;
;
OSM008
	AND	A
	JP	Z,E2CLER
	CP	$06
	JR	NZ,OSM010
;
	LD	A,TBOSS
	CALL	ENIDSHL
;
	LD	A,(WORK0)
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	A,(WORK1)
	CP	$14
	JR	NC,OSM00E
;
	LD	A,$14
OSM00E
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,ENWRK0
	ADD	HL,DE
	LD	(HL),$01
;
	LD	HL,ENTIM0
	ADD	HL,DE
	LD	(HL),$40
;
	LD	HL,ENMOD0
	ADD	HL,DE
	LD	(HL),%00000001
	LD	HL,ENMOD1
	ADD	HL,DE
	LD	(HL),%10001100
;
OSM010
	CALL	LDTIM0
	RRA
	RRA
	RRA
	AND	$0F
	LD	E,A
	LD	D,B
	LD	HL,OSMPTD
	ADD	HL,DE
	LD	A,(HL)
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;;
;;;;;;;;	RET
;===================================================
OSMOKCS
	LD	A,(ENCHPT2)
	RLA
	RLA
	RLA
	RLA
	RLA
	AND	%11100000
;
	LD	E,A
	LD	D,B
	LD	HL,OSMOKCD
	ADD	HL,DE
;
	LD	C,$08
	CALL	ENOMST
;
	LD	A,$08
		jp	NXOMSBL
;;;;;;;;	CALL	NXOMSBL
;;;;;;;;	RET
;===================================================
OFIRECD
	DB	$34,$02,$34,$22
	DB	$34,$12,$34,$32
;- - - - - - - - - - - - - - - - - - 
OFIREMV
	LD	DE,OFIRECD
	CALL	EN2CST
;
	CALL	E2STCK
;
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	AND	$01
	CALL	ENPTST
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	A,(HL)
	PUSH	AF
	LD	A,(OYAJIXS)
	ADD	A,(HL)
	LD	(HL),A
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	A,(HL)
	PUSH	AF
	LD	A,(OYAJIYS)
	ADD	A,(HL)
	LD	(HL),A
;
	CALL	E2MVCL
;
	POP	AF
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),A
	POP	AF
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
;
	LD	A,(ENSTAT2)
	AND	A
	JR	NZ,OFR200
;
	CALL	E2ZCLC
;
	LD	HL,ENZSPD
	ADD	HL,BC
	DEC	(HL)
	DEC	(HL)
;
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	AND	%10000000
	JR	Z,OFR010
;
	LD	(HL),B
;
	CALL	STATINC
;
	CALL	LDTIM0
	LD	(HL),$08
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),$E0
OFR010
	RET
;=====================================
OFR200
	CALL	LDTIM0
;
		jp	Z,E2CLER
;;;;;;;;	CALL	Z,E2CLER
;;;;;;;;OFR210
;;;;;;;;	RET
;=======================================
OFIR2MV
	LD	DE,OFIRECD
	CALL	EN2CST
;
	CALL	E2STCK
;
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	AND	$01
	CALL	ENPTST
;
	CALL	CRENPLL
;
	CALL	E2MVCL
	CALL	E2ZCLC
	LD	HL,ENZSPD
	ADD	HL,BC
	DEC	(HL)
	DEC	(HL)
;
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	AND	%10000000
	JP	NZ,E2CLER
;
OF2010
	RET
;***************************************************
;*						   *
;***************************************************
BS2STXD
	DB	$EE,$12
BS2STXS
	DB	$F8,$08
;- - - - - - - - - - - - - - - - - - -
BSLIM2ST
	XOR	A
	LD	(ENHELP),A
BS2S10
	LD	A,BSLIM
	CALL	ENIDSHL
;
	LD	HL,ENWRK4
	ADD	HL,DE
	LD	(HL),$01
;
	PUSH	BC
;
	LD	A,(ENHELP)
	LD	C,A
	LD	HL,BS2STXD
	ADD	HL,BC
	LD	A,(WORK0)
	ADD	A,(HL)
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,BS2STXS
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,ENZSPD
	ADD	HL,DE
	LD	(HL),$10
;
	LD	HL,ENSTAT
	ADD	HL,DE
	LD	(HL),$01	; Jump set !
;
	LD	A,(WORK1)
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,ENLIFE
	ADD	HL,DE
	LD	(HL),$05
;
	POP	BC
;
	LD	A,(ENHELP)
	INC	A
	LD	(ENHELP),A
	CP	$02
	JR	NZ,BS2S10
;
	JP  	E2CLER
;
;;	RET
;===================================================
;===================================================
;===================================================
;===================================================
;===================================================
;===================================================
;===================================================
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	BIG SLIME INIT		   %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
BSLIMIT
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	(HL),$7E
;
	CALL	LDTIM0
	LD	(HL),$A0
;
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�f�O�]��(���x���R�{�X)					%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
BSLIMMV
	CALL	SHRVSE	;�V���b�^�[������␳�I
;
	CALL	BSSDCK	;(S)
;
	CALL	SHIBIRE	;�v���C���[���т�`�F�b�N
;
	LD	HL,ENWRK4
	ADD	HL,BC
	LD	A,(HL)
	RST	0
	DW	BSLIM1
	DW	BSLIM2
;===================================================
BSLIM1
	LD	HL,ENLIFE
	ADD	HL,BC
	LD	(HL),$50
;
	LD	A,(ENSTAT2)
	RST	0
	DW	BSL1000
	DW	BSL2000
	DW	BSL3000
	DW	BSL4000
;-------------------------------------
BSL1000
	LD	A,(TILTCT)
	CP	$05
	JR	NZ,BSL1010
;
	CALL	STATINC
;
	LD	A,$08
	LD	(SOUND1),A	;(S)
BSL1010
	CALL	LDTIM0
	JR	NZ,BSL1020
;
	LD	(HL),$50
;
	LD	A,(SLIMCNT)
	CP	$02
	JR	NC,BSL1020
;
	LD	A,SLIMB
	CALL	ENIDSHL
;
	CALL	RNDSUB
	AND	$3F
	ADD	A,$40
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A
;
	CALL	RNDSUB
	AND	$3F
	ADD	A,$30
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,ENZPSL
	ADD	HL,DE
	LD	(HL),$70
BSL1020
	RET			
;-------------------------------------
BSL2000
	CALL	BSLIMCS
;
	CALL	E2STCK
;
	CALL	E2ZCLC
;
	LD	HL,ENZSPD
	ADD	HL,BC
;
	LD	A,(HL)
	CP	$A0
	JR	Z,BSL2010
;
	DEC	(HL)
	DEC	(HL)
BSL2010
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	AND	%10000000
		ret	Z
;;;;;;;;	JR	Z,BSL2020
;
	LD	(HL),B	
;
	LD	A,$50
	LD	(TILTCT),A
;
	LD	A,$04
	LD	(TILTMK),A
;
	CALL	LDTIM0
	LD	(HL),$40
;
	CALL	BBSDST	;(S)
;
	LD	A,(PLJPFG)
	AND	A
	JR	NZ,BSL2018
;
	CALL	LDTIM3
	LD	(HL),$14
BSL2018
		jp	STATINC
;;;;;;;;	CALL	STATINC
;;;;;;;;BSL2020
;;;;;;;;	RET
;
;-------------------------------------
BSL3000
	CALL	BSLIMCS
;
	CALL	E2STCK
;
	CALL	LDTIM0
	JR	NZ,BSL3030
;
	CALL	STATINC
BSL3030
	CALL	BSSZST
	JP  	CRENPLL
;RET
;-------------------------------------
BSL4000
	CALL	BSLIMCS
;
	CALL	E2STCK
;
	CALL	ENHNCL
;
	LD	HL,ENTIM2
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,BSM012	; Bunshin time ?
;				; yes !
	CP	$01
	JP	Z,BSLIM2ST	; Just now ?
;				; no !
	LD	(PLSTOP),A
;
	LD	A,(FRCNT)
	AND	$01
	JR	NZ,BSM018
;
	LD	HL,PLYPSL
	DEC	(HL)
BSM018
	LD	A,$06
	JP	ENPTST
;- - - - - - - - - - - - - - - -
BSM012
	CALL	BSMOVE
;
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	RRA
	AND	$01
	CALL	ENPTST
;
	LD	HL,ENWRK0	; Damege paturn !!
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,BSM020
;
	INC	A
	CALL	ENPTST
;
;;	CALL	LDTIM0
;;	LD	HL,ENTIM1
;;	ADD	HL,BC
;;	LD	A,(HL)
;;	AND	A
	CALL	LDTIM1
	JR	NZ,BSM020
;
	LD	(HL),$28
;
	LD	HL,ENWRK0
	ADD	HL,BC
	DEC	(HL)
BSM020
	XOR	A
	LD	(ENHELP),A
;- - - - - - - - - - - - - - 
	LD	A,$5*$4
	CALL	BSSZS2
	CALL	CRKNENL
;- - - - - - - - - - - - - -
	LD	HL,ENFLSH
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENTIM2
	ADD	HL,BC
	OR	(HL)
	JR	NZ,BSM028
;
	CALL	BSSZST
	CALL	CRENPLL
;
	LD	A,$1
	LD	(ENHELP),A
	CALL	CRKNENL
;- - - - - - - - - - - - - - 
BSM028
	LD	A,$5*$4
	CALL	BSSZS2
;
	LD	HL,ENFLSH
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,BSM030
;
;;	CP	$08
;;	JR	NZ,BSM030
;
	LD	A,(FRCNT)
	AND	$1F ;3F
	JR	NZ,BSM030
;
;;	CALL	LDTIM0
;;	LD	HL,ENTIM1
;;	ADD	HL,BC
	CALL	LDTIM1
	LD	(HL),$50
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	CP	$04
	JR	Z,BSM030
;
	INC	(HL)
BSM030
	RET
;===========================================
BSOJSD
;;		Cnt Lng C   L
;;		 x   x   y   y
	DB	$08,$14,$00,$0C ;0 Normal
	DB	$08,$15,$00,$0B ;1 
	DB	$08,$16,$00,$08	;2 
	DB	$08,$17,$00,$06	;3 
	DB	$08,$18,$00,$04	;4 
;
	DB	$08,$03,$08,$03	;5 Revise
;
	DB	$08,$0C,$02,$0C	;6 Bunshin after
;- - - - - - - - - - - - - - - - - - - - - - - - - -	
BSSZST
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	SLA	A
	SLA	A
BSSZS2
	LD	E,A
	LD	D,B
	LD	HL,BSOJSD
	ADD	HL,DE
		ld	e,l
		ld	d,h
;;10/31;	PUSH	HL
;;10/31;	POP	DE
;
	PUSH	BC
	SLA	C
	SLA	C
	LD	HL,ENOJSZ
	ADD	HL,BC
;- - Obj cross size set ! - -
	LD	C,$4
BSMS02
	LD	A,(DE)
	INC	DE
	LD	(HLI),A
	DEC	C
	JR	NZ,BSMS02
;
	POP	BC
;
	RET
;========================================
;========================================
;========================================
;========================================
;========================================
BSMOVE
	LD	HL,ENWRK2
	ADD	HL,BC
	LD	A,(HL)
	RST	0
	DW	BSM1000
	DW	BSM2000
;========================================
BSMXSD
	DB	$10,$0C,$06,$02
	DB	$F0,$F4,$FA,$FE
	DB	$10,$0C,$06,$02
	DB	$F0,$F4,$FA,$FE
BSMYSD
	DB	$02,$06,$0C,$10
	DB	$02,$06,$0C,$10
	DB	$FE,$FA,$F4,$F0
	DB	$FE,$FA,$F4,$F0
;- - - - - - - - - - - - - - - - - -
BSM1000
	CALL	LDTIM0	
	AND	A
	JR	NZ,BSM1060
;
	CALL	RNDSUB
	AND	$1F
	ADD	A,$10
	LD	(HL),A
;
;;	CALL	STATINC	
	LD	HL,ENWRK2
	ADD	HL,BC
	INC	(HL)
;
	LD	E,$00
;
	LD	A,(ENSVXL)
	CP	$50
	JR	C,BSM1010
;
	INC	E
BSM1010
	LD	D,$00
;
	LD	A,(ENDSYP)
	CP	$48
	JR	C,BSM1020
;
	INC	D
	INC	D
BSM1020
	LD	A,D
	OR	E
	SLA	A
	SLA	A
	PUSH	AF
	CALL	RNDSUB
	AND	$03
	POP	DE
	OR	D
	LD	E,A
	LD	D,B
;
	LD	HL,BSMXSD
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
	LD	HL,BSMYSD
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),A
BSM1060
	RET
;========================================
;========================================
;========================================
;========================================
BSM2000
	CALL	LDTIM0
	JR	Z,BSM2090
;
	AND	%00001110
		ret	NZ
;;;;;;;;	JR	NZ,BSM2030
;
	CALL	E2MVCL
		jp	ENBGCKL
;;;;;;;;	CALL	ENBGCKL
;;;;;;;;BSM2030
;;;;;;;;	RET
BSM2090
	LD	(HL),$30
;
;;	CALL	STATINC
;;	LD	(HL),B
	LD	HL,ENWRK2
	ADD	HL,BC
	LD	(HL),B
	RET
;========================================
;========================================
;========================================
;========================================
;========================================
;========================================
;========================================
;========================================
;========================================
BSLIMCD
;00
	DB	$F0,$F0,$60,$03
	DB	$F0,$F8,$62,$03
	DB	$F0,$00,$70,$03
	DB	$F0,$08,$70,$23
	DB	$F0,$10,$62,$23
	DB	$F0,$18,$60,$23
;
	DB	$00,$F0,$64,$03
	DB	$00,$F8,$6E,$03
	DB	$00,$00,$72,$03
	DB	$00,$08,$72,$23
	DB	$00,$10,$6E,$23
	DB	$00,$18,$64,$23
	DB	0,0,$FF,0
	DB	0,0,$FF,0
	DB	0,0,$FF,0
	DB	0,0,$FF,0
;01
	DB	$F0,$F0,$68,$03
	DB	$F0,$F8,$6A,$03
	DB	$F0,$00,$7E,$03
	DB	$F0,$08,$7E,$23
	DB	$F0,$10,$6A,$23
	DB	$F0,$18,$68,$23
;
	DB	$00,$F0,$6C,$03
	DB	$00,$F8,$6E,$03
	DB	$00,$00,$72,$03
	DB	$00,$08,$72,$23
	DB	$00,$10,$6E,$23
	DB	$00,$18,$6C,$23
	DB	0,0,$FF,0
	DB	0,0,$FF,0
	DB	0,0,$FF,0
	DB	0,0,$FF,0
;02
	DB	$F0,$F0,$60,$03
	DB	$F0,$F8,$62,$03
	DB	$F0,$00,$62,$23
	DB	$F0,$08,$62,$03
	DB	$F0,$10,$62,$23
	DB	$F0,$18,$60,$23
;
	DB	$00,$F0,$64,$03
	DB	$00,$F8,$66,$03
	DB	$00,$00,$66,$23
	DB	$00,$08,$66,$03
	DB	$00,$10,$66,$23
	DB	$00,$18,$64,$23
	DB	0,0,$FF,0
	DB	0,0,$FF,0
	DB	0,0,$FF,0
	DB	0,0,$FF,0
;03
	DB	$F0,$EC,$60,$03
	DB	$F0,$F4,$62,$03
	DB	$F0,$FC,$62,$23
	DB	$F0,$04,$74,$03
	DB	$F0,$0C,$62,$03
	DB	$F0,$14,$62,$23
	DB	$F0,$1C,$60,$23
;
	DB	$00,$EC,$64,$03
	DB	$00,$F4,$66,$03
	DB	$00,$FC,$66,$23
	DB	$00,$04,$76,$03
	DB	$00,$0C,$66,$03
	DB	$00,$14,$66,$23
	DB	$00,$1C,$64,$23
	DB	0,0,$FF,0
	DB	0,0,$FF,0
;04
	DB	$F0,$E8,$60,$03
	DB	$F0,$F0,$62,$03
	DB	$F0,$F8,$62,$23
	DB	$F0,$00,$78,$03
	DB	$F0,$08,$78,$23
	DB	$F0,$10,$62,$03
	DB	$F0,$18,$62,$23
	DB	$F0,$20,$60,$23
;
	DB	$00,$E8,$64,$03
	DB	$00,$F0,$66,$03
	DB	$00,$F8,$66,$23
	DB	$00,$00,$7A,$03
	DB	$00,$08,$7A,$23
	DB	$00,$10,$66,$03
	DB	$00,$18,$66,$23
	DB	$00,$20,$64,$23
;05
	DB	$F0,$E8,$60,$03
	DB	$F0,$F0,$62,$03
	DB	$F0,$F8,$62,$23
	DB	$F0,$00,$78,$03
	DB	$F0,$08,$78,$23
	DB	$F0,$10,$62,$03
	DB	$F0,$18,$62,$23
	DB	$F0,$20,$60,$23
;
	DB	$00,$E8,$64,$03
	DB	$00,$F0,$66,$03
	DB	$00,$F8,$66,$23
	DB	$00,$00,$7C,$03
	DB	$00,$08,$7C,$23
	DB	$00,$10,$66,$03
	DB	$00,$18,$66,$23
	DB	$00,$20,$64,$23
;06
	DB	$F0,$E6,$60,$03
	DB	$F0,$EE,$62,$03
	DB	$F0,$F6,$62,$23
	DB	$F0,$FE,$78,$03
	DB	$F0,$0A,$78,$23
	DB	$F0,$12,$62,$03
	DB	$F0,$1A,$62,$23
	DB	$F0,$22,$60,$23
;
	DB	$00,$E6,$64,$03
	DB	$00,$EE,$66,$03
	DB	$00,$F6,$66,$23
	DB	$00,$FE,$7C,$03
	DB	$00,$0A,$7C,$23
	DB	$00,$12,$66,$03
	DB	$00,$1A,$66,$23
	DB	$00,$22,$64,$23
;- - - - - - - - - - - - - - - - - -
BSSADCD
	DB	$0C,$F5,$26,$00
	DB	$0C,$FB,$26,$00
	DB	$0C,$01,$26,$00
	DB	$0C,$07,$26,$00
	DB	$0C,$0D,$26,$00
	DB	$0C,$13,$26,$00
;- - - - - - - - - - - - - - - - - -
BSLIMCS
	LD	HL,ENCHPT
	ADD	HL,BC
	LD	A,(HL)  ;ENCHPT2) ;HL)
	LD	D,B ;$0
	RLA
	RL	D
	RLA
	RL	D
	RLA
	RL	D
	RLA
	RL	D
	RLA
	RL	D
	RLA
	RL	D
	AND	%11000000
	LD	E,A
	LD	HL,BSLIMCD
	ADD	HL,DE
;
	LD	C,$10
	CALL	ENOMST
;
	LD	A,$10
	CALL	NXOMSBL
;
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	AND	A
		ret	Z
;;;;;;;;	JR	Z,BSC090
;
	LD	A,(ENSVYL)
	SUB	$08
	LD	(ENDSYP),A
;
	LD	HL,BSSADCD
	LD	C,$06
	CALL	ENOMST
;
	LD	A,$06
	CALL	NXOMSBL
;
		jp	ENPSSV
;;;;;;;;	CALL	ENPSSV
;;;;;;;;BSC090
;;;;;;;;	RET
;==============================================
BSLIM2
	CALL	BSLIM2CS
;
	LD	A,(ENMODE2)
	CP	EMOVE
	JP	Z,BS20010
;
	LD	HL,ENFLSH
	ADD	HL,BC
	LD	A,(FRCNT)
	LD	(HL),A
;
	LD	A,(ENSTAT2)
	RST	0
	DW	B2F100
	DW	B2F200
	DW	B2F300
;===============================================
B2F100
	CALL	LDTIM0
	LD	(HL),$40
	JP  	STATINC
;RET
;===============================================
B2F200
	CALL	LDTIM0
		ret	NZ
;;;;;;;;	JR	NZ,B2F210
;
	LD	(HL),$A0
;
		jp	STATINC
;;;;;;;;	CALL	STATINC
;;;;;;;;B2F210
;;;;;;;;	RET
;===============================================
B2F300
	CALL	LDTIM0
	JR	NZ,B2F380
;
	LD	E,ENNO-1
	LD	D,B
B2F310
	LD	A,C
	CP	E
	JR	Z,B2F320
;
	LD	HL,ENMODE
	ADD	HL,DE
	LD	A,(HL)
	AND	A
	JR	Z,B2F320
;
	LD	HL,ENMYNO
	ADD	HL,DE
	LD	A,(HL)
	CP	BSLIM
	JR	Z,B2F330
B2F320
	DEC	E
	LD	A,E
	CP	$FF
	JR	NZ,B2F310	; Last one ?
;				; yes !
	JP	HARTBST
B2F330
	JP	E2CLER	
B2F380
	JP  	ESMRND
;;	RET
;===============================================
SHIBIRE
;;	LD	HL,ENTIM3
;;	ADD	HL,BC
;;	LD	A,(HL)
;;	AND	A
	CALL	LDTIM3
	JR	Z,BS20011
;
	LD	A,$02
	LD	(PLSTOP),A
;
;;	LD	A,$02
;;	LD	(PLSTOP),A
;
	LD	A,$6A
	LD	(PLCHPT),A
BS20011
	RET
;===============================================
;===============================================
BS20010
	CALL	E2STCK
;
	LD	HL,ENHNFG
	ADD	HL,BC
	LD	A,(HL)
	CP	$02
	JR	NZ,BS20100
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,BS20080
;
	CALL	STATINC
	LD	(HL),2
;
	LD	A,$24
	LD	(SOUND1),A	;(S)
;;	CALL	E2JPSD	;(S)
;
	CALL	ENSDCL
	JR	BS20100
BS20080
	INC	(HL)
BS20100
	CALL	E2HNSB
;
;	LD	A,(FRCNT)
;	RRA
;	RRA
;	RRA
;	RRA
;	ADD	A,C
;	AND	$01
;	CALL	ENPTST
;
	XOR	A
	LD	(ENHELP),A
;
	LD	A,(ENSTAT2)
	RST	0
	DW	BS21000
	DW	BS22000
	DW	BS23000
	DW	BS24000
;==============================================
BS2XSD
	DB	$10,$0C,$00,$F4,$F0,$F4,$00,$0C
BS2YSD
	DB	$00,$0C,$10,$0C,$00,$F4,$F0,$F4
;
BS21000
	LD	A,$6*$4
	CALL	BSSZS2	; Size set !
	CALL	CREPKEL
;
	CALL	LDTIM0
	JR	NZ,BS21010
;
	CALL	RNDSUB
	AND	$07
	LD	E,A
	LD	D,B
	LD	HL,BS2XSD
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
	LD	HL,BS2YSD
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),A
;
	CALL	RNDSUB
	AND	$03
	JR	NZ,BS21008
;
	LD	A,$18
	CALL	PSERCHL
BS21008
	CALL	RNDSUB
	AND	$0F
	LD	HL,ENZSPD
	ADD	HL,BC
	ADD	A,$08
	LD	(HL),A
;
	CALL	STATINC
BS21010	
	LD	A,B  ;$00
	JP  	ENPTST
;;	RET	
;==============================================
BS22000
	CALL	LDTIM0
	AND	A
	JR	NZ,BS22010
;
	CALL	E2MVCL
	CALL	ENBGCKL
;
	CALL	E2ZCLC
;
	LD	HL,ENZSPD
	ADD	HL,BC
	DEC	(HL)
	DEC	(HL)
;
	LD	A,$6*$4
	CALL	BSSZS2	; Size set !
	CALL	CRENPLL
;
;	LD	HL,ENZPSL
;	ADD	HL,BC
;	LD	A,(HL)
;;;	CP	$10
;;;	JR	NC,BS22003
;	AND	A
;	JR	NZ,BS22003
;
	LD	HL,ENWRK3
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	NZ,BS22003
;
	CALL	CRKNENL
;
	XOR	A
BS22003
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	AND	%10000000
	JR	Z,BS22010
;
	LD	(HL),B
;
	LD	HL,ENWRK3
	ADD	HL,BC
	LD	(HL),B
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	A,(HL)
	SUB	$E0
	AND	%10000000
	JR	Z,BS22008
;
	LD	A,$18
	LD	(TILTCT),A
;
	LD	A,$0B
	LD	(SOUND1),A	;(S)
;
	LD	A,(PLJPFG)
	AND	A
	JR	NZ,BS22008
;
;;	LD	HL,ENTIM3
;;	ADD	HL,BC
	CALL	LDTIM3
	LD	(HL),$0E	;���т�^�C��
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),B
	JR	BS2200A
;
BS22008
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	A,(HL)
	LD	(HL),B
	CP	$F2
	JR	NC,BS2200A
;
	LD	A,$20
	LD	(SOUND1),A	;(S)
BS2200A
	CALL	STATINC
	LD	(HL),B
;
	CALL	LDTIM0
	LD	(HL),$20
BS22010
	LD	A,$01
	JP  	ENPTST
;RET	
;==============================================
BS23000
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),$60
;
	CALL	E2ZCLC
;
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	CP	$70
		ret	C
;;;;;;;;	JR	C,BS23010
;
	CALL	LDTIM0
	LD	(HL),$30
;
		jp	STATINC
;;;;;;;;	CALL	STATINC
;;;;;;;;BS23010
;;;;;;;;	RET
;==============================================
BS24000
	LD	A,$FF
	CALL	ENPTST
;
	CALL	LDTIM0
	JR	NZ,BS24010
;
	LD	(HL),$18
;
	LD	HL,ENWRK3
	ADD	HL,BC
	LD	(HL),$01
;
	CALL	STATINC
	LD	(HL),$01
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),$C0
;
	LD	A,(PLXPSL)
	LD	HL,ENXPSL
	ADD	HL,BC
	LD	(HL),A
	LD	A,(PLYPSL)
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	(HL),A
;
	LD	A,$08
	LD	(SOUND1),A	;(S)
BS24010
	RET
;==============================================
BSLIM2CD
;0
	DB	$F0,$F8,$60,$03
	DB	$F0,$00,$62,$03
	DB	$F0,$08,$62,$23
	DB	$F0,$10,$60,$23
;
	DB	$00,$F8,$64,$03
	DB	$00,$00,$66,$03
	DB	$00,$08,$66,$23
	DB	$00,$10,$64,$23
;1
	DB	$F0,$F8,$68,$03
	DB	$F0,$00,$6A,$03
	DB	$F0,$08,$6A,$23
	DB	$F0,$10,$68,$23
;
	DB	$00,$F8,$6C,$03
	DB	$00,$00,$66,$03
	DB	$00,$08,$66,$23
	DB	$00,$10,$6C,$23
;- - - - - - - - - - - - - - - - - -
B2SADCD
	DB	$0C,$FB,$26,$00
	DB	$0C,$01,$26,$00
	DB	$0C,$07,$26,$00
	DB	$0C,$0D,$26,$00
;
BSLIM2CS
	LD	HL,ENCHPT
	ADD	HL,BC
	LD	A,(HL)  ;ENCHPT2) ;HL)
	LD	D,B ;$0
	RLA
	RL	D
	RLA
	RL	D
	RLA
	RL	D
	RLA
	RL	D
	RLA
	RL	D
	AND	%11100000
	LD	E,A
	LD	HL,BSLIM2CD
	ADD	HL,DE
;
	LD	C,$08
	CALL	ENOMST
;
	LD	A,$08
	CALL	NXOMSBL
;- - - Sadow - - -
	LD	HL,ENCHPT
	ADD	HL,BC
	LD	A,(HL)
	CP	$FF
	JR	Z,B2C090
;
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,B2C090
;
	LD	A,(ENSVYL)
	SUB	$02
	LD	(ENDSYP),A
;
	LD	HL,B2SADCD
	LD	C,$04
	CALL	ENOMST
;
	LD	A,$04
	CALL	NXOMSBL
;
B2C090
	JP  	ENPSSV
;;ET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	BIG KAO	INIT		   %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
BGKAOIT
	CALL	LDTIM0
	LD	(HL),$FF
;
	LD	HL,ENHNFG
	ADD	HL,BC
	LD	(HL),$08	; Only Bomb cros !
;
	LD	HL,ENLIFE
	ADD	HL,BC
	LD	(HL),$12
;
	LD	HL,ENXPSL
	ADD	HL,BC
	CALL	ADD8
;
	LD	HL,ENYPSL
	ADD	HL,BC
ADD8
	LD	A,(HL)
	ADD	A,$08
	LD	(HL),A
;
	LD	A,$FF
	JP  	ENPTST
;
;RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	BIG KAO			   %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
BGKAOMV
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	RST	0
	DW	KAOMOV
	DW	HOLEMOV
	DW	TAILMOV
	DW	TUBOMOV
;=============================================
KAOMOV
	XOR	A
	LD	(TILTXD),A
;
	CALL	BSSDCK
;
	CALL	SHRVSE	;�V���b�^�[������␳�I
;
	CALL	BGKAOCS
;
	LD	A,(ENMODE2)
	CP	EMOVE
	JP	Z,KAO010
;
	LD	HL,ENFLSH
	ADD	HL,BC
	LD	A,(FRCNT)
	LD	(HL),A
;
	LD	HL,ENWRK3
	ADD	HL,BC
	LD	A,(HL)
	RST	0
	DW	KFL100
	DW	KFL200
	DW	KFL300
;========================================
KFL100
	CALL	LDTIM0
	LD	(HL),$80
;- - all enemy - -
	LD	E,ENNO-1
	LD	D,B 
KKS008
	LD	A,C
	CP	E
	JR	Z,KKS010
;
	LD	HL,ENMOD0
	ADD	HL,DE
	LD	A,(HL)
	AND	%10000000
	JR	NZ,KKS010
;
	LD	HL,ENMODE
	ADD	HL,DE
	LD	A,(HL)
	CP	EMOVE
	JR	C,KKS010
;
;;	LD	A,EFAIL
	LD	(HL),EFAIL ;A
;
;;	LD	A,$1F
	LD	HL,ENTIM4
	ADD	HL,DE
	LD	(HL),$1F ;A
;
	LD	HL,ENMOD0
	ADD	HL,DE
	LD	A,(HL)
	AND	%11110000
	OR	$2
	LD	(HL),A
KKS010
	DEC	E
	LD	A,E
	CP	$FF
	JR	NZ,KKS008
;
KFNEXT
	LD	HL,ENWRK3
	ADD	HL,BC
	INC	(HL)
	RET
;========================================
KFL200
	CALL	LDTIM0
		ret	NZ
;;;;;;;;	JR	NZ,KFL210
;
	LD	(HL),$FF
;
	JR	KFNEXT
;;;;;;;;KFL210
;;;;;;;;	RET
;========================================
KFL300
	CALL	LDTIM0
	JP	Z,HARTBST
;
ESMRND
	AND	$07
		ret	NZ
;;;;;;;;	JR	NZ,KFL310
;
	CALL	RNDSUB
	AND	$1F
	SUB	$10
	LD	E,A
	LD	HL,ENSVXL
	ADD	A,(HL)
	LD	(HL),A
;
	CALL	RNDSUB
	AND	$1F
	SUB	$10
	LD	E,A
	LD	HL,ENDSYP
	ADD	A,(HL)
	LD	(HL),A
;
		jp	HBSMST
;;;;;;;;	CALL	HBSMST
;;;;;;;;KFL310
;;;;;;;;	RET
;========================================
;========================================
KAO010
	CALL	E2STCK
;
	LD	HL,ENFLSH
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,KAO011	; Damege ?
;				; yes !
	LD	HL,ENWRK4
	ADD	HL,BC
	LD	(HL),$FF	; Clear time set !
KAO011
	LD	HL,ENMOD0
	ADD	HL,BC
	LD	(HL),%00001000
;
	LD	A,(ENSTAT2)
	RST	0
	DW	BGK1000
	DW	BGK2000
	DW	BGK3000
;==========================================
BGK1000
	CALL	LDTIM0
		ret	NZ
;;;;;;;;	JR	NZ,BGK1090
;
	LD	(HL),$FF
;
		jp	STATINC
;;;;;;;;	CALL	STATINC
;;;;;;;;BGK1090
;;;;;;;;	RET
;==========================================
BGKPTD
	DB	3,3,3,3
	DB	3,2,1,0
	DB	1,0,1,1
	DB	1,1,1,1
	DB	1,1,1,1
	DB	1,1,1,0
	DB	0,0,0,0
	DB	0,0,0,0
;
BGK2000
	CALL	LDTIM0
	JR	Z,BGK2090
	RRA
	RRA
	RRA
	AND	$1F
	LD	E,A
	LD	D,B
	LD	HL,BGKPTD
	ADD	HL,DE
	LD	A,(HL)
	JP  	ENPTST
;RET
BGK2090
	CALL	STATINC
;
	CALL	LDTIM1
	LD	(HL),$A0
;
	CALL	LDTIM3
	LD	(HL),$FF
;
	LD	A,$B6
		jp	MSGCHK
;;;;;;;;	CALL	MSGCHK
;;;;;;;;	RET
;===========================================
BGKPTD2
	DB	3,2,4,2
HLSTXD
	DB	$28,$38,$48,$58,$68,$78
	DB	$28,$78
	DB	$28,$78
	DB	$28,$38,$48,$58,$68,$78
;
HLSTYD
	DB	$30,$30,$30,$30,$30,$30
	DB	$40,$40
	DB	$50,$50
	DB	$60,$60,$60,$60,$60,$60
;
TLSTXD
	DB	$28,$38,$48,$58,$68,$78
	DB	$18,$88
	DB	$18,$88
	DB	$18,$88
	DB	$18,$88
	DB	$28,$38,$48,$58,$68,$78
TLSTYD
	DB	$20,$20,$20,$20,$20,$20
	DB	$30,$30
	DB	$40,$40
	DB	$50,$50
	DB	$60,$60
	DB	$70,$70,$70,$70,$70,$70
TLSTMD	; Junban
	DB	$00,$13,$01,$12,$02,$11
	DB	$03,$10,$04,$0F,$05,$0E
	DB	$06,$0D,$07,$0C,$08,$0B
	DB	$09,$0A
TUSTXD
	DB	$18,$88
	DB	$18,$88
TUSTYD
	DB	$20,$70
	DB	$70,$20
;===========================================
BKTLXD
	DB	$00,$FF
;- - - - - - - - - - - - - - - - - -
BGK3000
	LD	A,(FRCNT)
	AND	$3F
	JR	NZ,BGK3001
;
	CALL	RNDSUB
	AND	$01
	JR	NZ,BGK3001
;
	CALL	LDTIM0
	LD	(HL),$1F
BGK3001
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	AND	%00000001
	LD	E,A
	LD	D,B
	LD	HL,BKTLXD
	ADD	HL,DE
	LD	A,(HL)
	LD	(TILTXD),A
;;	LD	HL,BKTLYD
;;	ADD	HL,DE
;;	LD	A,(HL)
;;	LD	(TILTYD),A
;
;;	LD	A,(FRCNT)
;;	AND	$7F
;;	JR	NZ,BGK3020	; Hole set time ?
;;	LD	HL,ENTIM3
;;	ADD	HL,BC
;;	LD	A,(HL)
;;	AND	A
	CALL	LDTIM3
	JR	NZ,BGK3020
;
	CALL	RNDSUB
	AND	$0F
	ADD	A,$18
	LD	(HL),A
;				; yes !
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	CP	$14
	JR	C,BGK3018
;
	LD	HL,ENWRK2
	ADD	HL,BC
	LD	A,(HL)
	CP	$04
	JR	C,BGK3018	; Tail & tsubo end ?
;				; yes !
	LD	A,BGKAO
	CALL	ENIDSHL
	JR	C,BGK3018
;
	LD	HL,ENWRK0
	ADD	HL,DE
	LD	(HL),$01
;
BGK3012
	CALL	RNDSUB
	AND	$0F
	LD	HL,ENWRK1
	ADD	HL,BC
	CP	(HL)
	JR	Z,BGK3012	; Before set = ?
;				; no !
	LD	(HL),A
;
	PUSH	BC
;
	LD	C,A
	LD	HL,HLSTXD
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A
	LD	HL,HLSTYD
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,ENTIM0
	ADD	HL,DE
	LD	(HL),$7F
;
	LD	HL,ENMOD0
	ADD	HL,DE
	LD	(HL),%11000010
	LD	HL,ENMOD1
	ADD	HL,DE
	LD	(HL),%00000000
	LD	HL,ENMOD3
	ADD	HL,DE
	LD	(HL),%00000000
;
	POP	BC
;
BGK3018
BGK3020
	CALL	LDTIM1
	JR	NZ,BGK3030	; Tail set ?
;				; yes !
	LD	(HL),$40
;
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	CP	$14
	JR	NC,BGK3030
;
	LD	A,BGKAO
	CALL	ENIDSHL
	JR	C,BGK3030
;
	LD	HL,ENWRK0
	ADD	HL,DE
	LD	(HL),$02
;
	PUSH	BC
;
	LD	HL,ENCONT
	ADD	HL,BC
	LD	C,(HL)
	INC	(HL)
	LD	HL,TLSTMD
	ADD	HL,BC
	LD	C,(HL)
;
	LD	HL,TLSTXD
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A
	LD	HL,TLSTYD
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,ENMOD0
	ADD	HL,DE
	LD	(HL),%00010010
	LD	HL,ENMOD1
	ADD	HL,DE
	LD	(HL),%00000000
	LD	HL,ENMOD3
	ADD	HL,DE
	LD	(HL),%00000000
;
	LD	HL,ENMOD2
	ADD	HL,DE
	LD	(HL),$02
;
	POP	BC
BGK3030
	LD	HL,ENTIM2
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	NZ,BGK3040
;
	LD	(HL),$40
;
	LD	HL,ENWRK2
	ADD	HL,BC
	LD	A,(HL)
	CP	$04
	JR	NC,BGK3040
;
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	CP	$12
	JR	C,BGK3040
;
	LD	A,BGKAO
	CALL	ENIDSHL
	JR	C,BGK3040	;�فI
;
	LD	HL,ENWRK0
	ADD	HL,DE
	LD	(HL),$03
;
	PUSH	BC
;
	LD	HL,ENWRK2
	ADD	HL,BC
	LD	C,(HL)
	INC	(HL)
;
	LD	HL,TUSTXD
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A
	LD	(ENSVXL),A
	LD	HL,TUSTYD
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),A
	LD	(ENSVYL),A
;
	LD	HL,ENMOD0
	ADD	HL,DE
	LD	(HL),%00010010
	LD	HL,ENMOD1
	ADD	HL,DE
	LD	(HL),%00000000
	LD	HL,ENMOD3
	ADD	HL,DE
	LD	(HL),%00000000
	LD	HL,ENMOD2
	ADD	HL,DE
	LD	(HL),$1B
;
		ld	c,e
		ld	b,d
;;10/31;	PUSH	DE
;;10/31;	POP	BC
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),$1
	CALL	ENBGCKL
	LD	HL,ENCBFG
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	NZ,TBS010	; BG tsubo nashi ?
;				; yes ! Not set !
	CALL	E2CLER
TBS010
	POP	BC
;
BGK3040
	CALL	LDTIM0
	RRA
	RRA
	RRA
	AND	$03
	LD	E,A
	LD	D,B
	LD	HL,BGKPTD2
	ADD	HL,DE
	LD	A,(HL)
;;	LD	HL,ENCHPT
;;	ADD	HL,BC
;;	LD	(HL),A
	CALL	ENPTST
;
	LD	HL,ENFLSH
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,BGK3050
;
	LD	A,$02
	CALL	ENPTST
BGK3050
	LD	HL,ENWRK4
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,BGK3080
;
	DEC	(HL)
;
	RRA
	RRA
	RRA
	RRA
	AND	$0F
	LD	E,A
	LD	D,B
	LD	HL,BGKCLPT
	ADD	HL,DE
	LD	A,(HL)
	CALL	ENPTST
;
	LD	HL,ENMOD0
	ADD	HL,BC
	LD	(HL),%01001000
BGK3080
	RET
;===========================================
BGKCLPT
	DB	$02,$01,$00,$FF
	DB	$FF,$FF,$FF,$FF
	DB	$FF,$FF,$FF,$FF
	DB	$FF,$00,$01,$02
;===========================================
;===========================================
;===========================================
;===========================================
BGKAOCD
;0
	DB	$F8,$F0,$70,$03
	DB	$F8,$F8,$72,$03
	DB	$F8,$10,$72,$23
	DB	$F8,$18,$70,$23
	DB	$08,$F8,$7C,$03
	DB	$08,$00,$7E,$03
	DB	$08,$08,$7E,$23
	DB	$08,$10,$7C,$23
;1
	DB	$F8,$F0,$74,$03
	DB	$F8,$F8,$76,$03
	DB	$F8,$10,$76,$23
	DB	$F8,$18,$74,$23
	DB	$08,$F8,$7C,$03
	DB	$08,$00,$7E,$03
	DB	$08,$08,$7E,$23
	DB	$08,$10,$7C,$23
;2
	DB	$F8,$F0,$74,$03
	DB	$F8,$F8,$76,$03
	DB	$F8,$10,$76,$23
	DB	$F8,$18,$74,$23
	DB	$08,$F8,$60,$03
	DB	$08,$00,$62,$03
	DB	$08,$08,$62,$23
	DB	$08,$10,$60,$23
;3
	DB	$F8,$F0,$78,$03
	DB	$F8,$F8,$7A,$03
	DB	$F8,$10,$7A,$23
	DB	$F8,$18,$78,$23
	DB	$08,$F8,$60,$03
	DB	$08,$00,$62,$03
	DB	$08,$08,$62,$23
	DB	$08,$10,$60,$23
;4
	DB	$F8,$F0,$70,$03
	DB	$F8,$F8,$72,$03
	DB	$F8,$10,$72,$23
	DB	$F8,$18,$70,$23
	DB	$08,$F8,$60,$03
	DB	$08,$00,$62,$03
	DB	$08,$08,$62,$23
	DB	$08,$10,$60,$23
;
BGKAOCS
	LD	HL,ENCHPT
	ADD	HL,BC
	LD	A,(HL)  ;ENCHPT2) ;HL)
	RLA
	RLA
	RLA
	RLA
	RLA
	AND	%11100000
	LD	E,A
	LD	D,B ;$0
	LD	HL,BGKAOCD
	ADD	HL,DE
	LD	C,$8
;
		jp	ENOMST
;;;;;;;;	CALL	ENOMST
;;;;;;;;	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	OBJ HOLE		   %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
HOLECD
	DB	$68,$06,$68,$26
	DB	$6A,$06,$6A,$26
	DB	$6C,$06,$6C,$26
	DB	$6E,$06,$6E,$26
;
HLPTDT
	DB	0,1,2,3,3,3,3,3
	DB	3,2,1,0,0,0,0,0
;
HOLEMOV
	LD	DE,HOLECD
	CALL	EN2CST
;
	CALL	E2STCK
;
	CALL	LDTIM0
	JP	Z,E2CLER
;
	CP	$50
	JR	NZ,HLSD10
;
	LD	HL,SOUND1
	LD	(HL),$40	;(S)
HLSD10
	RRA
	RRA
	RRA
	AND	$0F
	LD	E,A
	LD	D,B
	LD	HL,HLPTDT
	ADD	HL,DE
	LD	A,(HL)
	CALL	ENPTST
;
	CP	$03
	JR	NZ,HLM090
;
	LD	A,(PLMODE)
	CP	PFOLE
	JR	Z,HLM090
;
	LD	A,(PLZPSL)
	AND	A
	JR	NZ,HLM090
;
	CALL	E2XCHK
	ADD	A,$08
	CP	$10
	JR	NC,HLM090
;
	CALL	E2YCHK
	ADD	A,$08
	CP	$10
	JR	NC,HLM090
;
	LD	A,$0C
	CALL	PSERCH2L
;
	LD	A,(WORK0)
	CPL
	INC	A
	LD	(PLYSPD),A
	LD	A,(WORK1)
	CPL
	INC	A
	LD	(PLXSPD),A
;
	PUSH	BC
	CALL	MVCALC
	POP	BC
;
	CALL	E2XCHK
	ADD	A,$03
	CP	$06
	JR	NC,HLM090
;
	CALL	E2YCHK
	ADD	A,$03
	CP	$06
	JR	NC,HLM090
;
	LD	A,(ENSVXL)
	LD	(PLXPSL),A
;
	LD	A,PFOLE
	LD	(PLMODE),A
;
	CALL	DUSHCL
	LD	(KURDCT),A
;
	CALL	LDTIM0
	LD	(HL),$40
;
	LD	A,$50
	LD	(ANAFLG),A	;���̕����ɕ����I
HLM090
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�^�C��				     %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
TAILCD
	DB	$40,$06,$40,$26
	DB	$42,$06,$42,$26
;
TAILCD2
	DB	$70,$06,$70,$26
	DB	$72,$06,$72,$26
;
TAILCD7
	DB	$40,$07,$40,$27
	DB	$42,$07,$42,$27
;;;;;;;;;;;KK;;;	DB	$70,$07,$70,$27
;;;;;;;;;;;KK;;;	DB	$72,$07,$72,$27
;- - - - - - - - - - - - - - - - - - - -
TAILMOV
		ld	de,TAILCD7
	LD	A,(DNJNNO)
		cp	006
		jr	z,TAIC090
	LD	DE,TAILCD
	CP	$01
	JR	NZ,TAIC090
	LD	DE,TAILCD2
;
TAIC090
	CALL	EN2CST
;
	CALL	ENHNCL
;
	LD	HL,ENFLSH
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	NZ,TLFAIL
;
	CALL	E2STCK
;
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	AND	$01
	CALL	ENPTST
;
	LD	A,(FRCNT)
	AND	$07
	JR	NZ,TLSDS10
;
	LD	A,$3F
	LD	(SOUND1),A	;(S)
TLSDS10
	LD	A,(ENSTAT2)
	RST	0
	DW	TAILIT
	DW	TAILUP
	DW	TAILSH
;=========================================
TAILIT
	CALL	LDTIM0
	LD	(HL),$60
;
	CALL  	STATINC
;
	LD	HL,ENWRK3	;����������ށI
	ADD	HL,BC
	LD	A,(HL)
	CP	$01
	JP	Z,SWBGWT	;�X�C�b�`�I
	CP	%00010000
	JP	Z,ANBGWT2	;�V�^���I
	CP	%00100000
	JP	Z,ANBGWT	;���I
;
	JP  	TLBGWT
;;	RET
;=========================================
TAILUP
	CALL	CRKNENL
;
	CALL	LDTIM0
	JR	Z,TLU090
;
	CP	$30
		ret	C
;;;;;;;;	JR	C,TLU0A0
;
	AND	$03
	JR	NZ,TLU080
;
	LD	HL,ENZPSL
	ADD	HL,BC
	INC	(HL)
TLU080
	RET
TLU090
	CALL	STATINC
;
	LD	A,$18
		jp	PSERCHL
;;;;;;;;	CALL	PSERCHL
;;;;;;;;TLU0A0
;;;;;;;;	RET
;=========================================
TAILSH
	CALL	E2MVCL
	CALL	ENBGCKL
;
	CALL	CREPKEL
;
	LD	HL,ENCBFG
	ADD	HL,BC
	LD	A,(HL)
	AND	A
		ret	Z
;;;;;;;;	JR	Z,TLSH10
TLFAIL
		jp	ISIBRKL
;;;;;;;;	CALL	ISIBRKL
;;	LD	HL,ENMYNO
;;	ADD	HL,BC
;;	LD	(HL),KTOBJ
;;;
;;	LD	A,$00
;;	CALL	ENPTST
;;;;;;;;TLSH10
;;;;;;;;	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	TSUBO				     %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
TUBOCD
	DB	$F0,$16,$F0,$36
;- - - - - - - - - - - - - - - - - - - -
TUBOMOV
	LD	DE,TUBOCD
	CALL	EN2CST
;
	LD	HL,ENFLSH
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	NZ,TLFAIL
;
	CALL	E2STCK
;
	LD	A,(ENSTAT2)
	RST	0
	DW	TUBOIT
	DW	TUBOUP
	DW	TUBOSH
;=========================================
TUBOIT
	CALL	TUBGWT
;
	CALL	STATINC
;
	CALL	LDTIM0
	LD	(HL),$60
	RET
;=========================================
TUBOUP
	CALL	CRKNENL
;
	CALL	LDTIM0
	JR	Z,TUU090
;
	CP	$30
		ret	C
;;;;;;;;	JR	C,TUU0A0
;
	AND	$03
	JR	NZ,TUU080
;
	LD	HL,ENZPSL
	ADD	HL,BC
	INC	(HL)
TUU080
	RET
TUU090
	CALL	STATINC
;
	LD	A,$18
		jp	PSERCHL
;;;;;;;;	CALL	PSERCHL
;;;;;;;;TUU0A0
;;;;;;;;	RET
;=========================================
TUBOSH
	CALL	E2MVCL
	CALL	ENBGCKL
;
	CALL	CREPKEL
;
	LD	HL,ENCBFG
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JP	NZ,TLFAIL
;
	RET
;=========================================
;=========================================
;=========================================
;=========================================
;=========================================
;=========================================
;=========================================
;=========================================
;=========================================
TLBGDT
	DB	$10,$12,$11,$13
TUBGDT
	DB	$10,$12,$11,$13
SWBGDT
	DB	$14,$16,$15,$17
ANBGDT
	DB	$76,$77,$76,$77
ANBGDT2
	DB	$76,$49,$76,$49
;
SWBGWT
	LD	DE,SWBGDT
	LD	A,DSWCH
	JR	TU0010
ANBGWT
	LD	DE,ANBGDT
	LD	A,DANA0
	JR	TU0010
ANBGWT2
	LD	DE,ANBGDT2
	LD	A,DAND0
	JR	TU0010
TUBGWT
	LD	DE,TUBGDT
	LD	A,DTU08
	JR	TU0010
TLBGWT
	LD	DE,TLBGDT
	LD	A,DTU08
TU0010
	LD	(WORK0),A
	PUSH	DE
;
	LD	A,(ENSVYL)
	SUB	$10-1
	LD	(OBJYP),A
;
	LD	A,(ENSVXL)
	SUB	$8-1
	LD	(OBJXP),A
;
	SWAP	A
	AND	$0F
	LD	E,A
	LD	A,(OBJYP)
	AND	$F0
	OR	E
	LD	E,A
	LD	D,$0
	LD	HL,BGUNDT+$11
	ADD	HL,DE
;;	LD	A,DTU08
	LD	A,(WORK0)
	LD	(HL),A
;
	CALL	OBJBG
;
		LD	A,(CGBFLG)
		AND	A
		JR	Z,TU0010_PASS
		PUSH	BC
		LD	A,(WORK0)
		LD	(UNTATR),A
		LD	A,$04
		CALL	BG1UNIT_ATR_SUB
		POP	BC
TU0010_PASS
;
	LD	A,(VRAMD)
	LD	E,A
	LD	D,$00
	LD	HL,VRAMD+1
	ADD	HL,DE
;
	ADD	A,$0A
	LD	(VRAMD),A
;
	POP	DE
;
	LD	A,(VRAMH)
	LD	(HLI),A
	LD	A,(VRAML)
	LD	(HLI),A
	LD	A,$81
	LD	(HLI),A
	LD	A,(DE)
	INC	DE
	LD	(HLI),A
	LD	A,(DE)
	INC	DE
	LD	(HLI),A
;
	LD	A,(VRAMH)
	LD	(HLI),A
	LD	A,(VRAML)
	INC	A
	LD	(HLI),A
	LD	A,$81
	LD	(HLI),A
	LD	A,(DE)
	INC	DE
	LD	(HLI),A
	LD	A,(DE)
	LD	(HLI),A
	XOR	A
	LD	(HL),A
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�����{�X INIT		   %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
HAYABIT
	XOR	A
	LD	(BSINDX),A
;
	LD	E,$80
	LD	HL,YMVBUF
HBI010
	XOR	A
	LD	(HLI),A
;
	DEC	E
	JR	NZ,HBI010
;
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�����{�X		   %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
HYBCDT
	DB	6,7,0,1,2,3,4,5
;- - - - - - - - - - - - - - - - -
HYCRCK
	CALL	E2STCK
	JP	CREPKEL
;
HAYABMV
	CALL	SHRVSE	;�V���b�^�[������␳�I
;
	CALL	HYCRCK ;CREPKEL
;
	CALL	HAYABCS
;
;	LD	HL,ENHNFG
;	ADD	HL,BC
;	LD	(HL),B
	CALL	ENHNCL
;
	LD	A,(SCRLFG)
	AND	A
	JP	NZ,HAYABIT
;
	CALL	BSSDCK	;(S)
;
	LD	A,(ENMODE2)
	CP	EMOVE
	JP	Z,HBM000
;----- FAIL -----
	LD	A,(ENSTAT2)
	RST	00
	DW	HBF100
	DW	HBF200
	DW	HBF300
	DW	HBF400
;==========================================
HBF100
	CALL	LDTIM0
	LD	(HL),$60
;
	LD	HL,ENFLSH
	ADD	HL,BC
	LD	(HL),$FF
;
		jp	STATINC
;;;;;;;;	CALL	STATINC
;;;;;;;;	RET
;==========================================
HBF200
	CALL	LDTIM0
		ret	NZ
;;;;;;;;	JR	NZ,HBF210
;
	LD	(HL),$FF
;
	LD	HL,ENFLSH
	ADD	HL,BC
	LD	(HL),$FF
;
		jp	STATINC
;;;;;;;;	CALL	STATINC
;;;;;;;;HBF210
;;;;;;;;	RET
;==========================================
HBF300
	CALL	LDTIM0
;;	JR	Z,HBF310
;
	AND	$1F
		ret	NZ
;;;;;;;;	JR	NZ,HBF308
;
	LD	HL,ENWRK2
	ADD	HL,BC
	LD	A,(HL)
	CP	$04
	JR	Z,HBF310
;
	INC	(HL)
;
		jp	HBSMST	; Smoke set !
;;;;;;;;	CALL	HBSMST	; Smoke set !
;;;;;;;;HBF308
;;;;;;;;	RET
HBF310
	CALL	LDTIM0
	LD	(HL),$30
;
	JP  	STATINC
;RET
;==========================================
HBHFXD
	DB	$00,$06
	DB	$08,$06
	DB	$00,$FA
	DB	$F8,$FA
HBHFYD
	DB	$F8,$FA
	DB	$00,$06
	DB	$08,$06
	DB	$00,$FA
;- - - - - - - - - - - - - - - - -
HBF400		; Head fail !!!
	CALL	LDTIM0
	JP	Z,HBF490
;
	AND	$03
	JR	NZ,HBF410
;
	LD	A,(HL)
	RRA
	RRA
	AND	$07
	LD	E,A
	LD	D,B
	LD	HL,HBHFXD
	ADD	HL,DE
	LD	A,(ENSVXL)
	ADD	A,(HL)
	LD	(ENSVXL),A
	LD	HL,HBHFYD
	ADD	HL,DE
	LD	A,(ENDSYP)
	ADD	A,(HL)
	LD	(ENDSYP),A
;
	CALL	HBSMST
;
	CALL	LDTIM0
	CP	$10
	JR	NZ,HBF410
;
	LD	HL,ENWRK2
	ADD	HL,BC
	LD	(HL),$05	; Head clear !!
HBF410
	RET
;---------------------------------------
HARTBST
HBF490
;;	CALL	SOUNDCLR	;(S)
;
	LD	A,HARTB
	CALL	ENIDSHL
;
	LD	A,(WORK0)
	CP	$88
	JR	C,HBYS0X
	LD	A,$88
HBYS0X
	CP	$18
	JR	NC,HBYS1X
	LD	A,$18
HBYS1X
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	A,(WORK1)
	CP	$70
	JR	C,HBYS08
	LD	A,$70
HBYS08
	CP	$20
	JR	NC,HBYS10
	LD	A,$20
HBYS10
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,ENZSPD
	ADD	HL,DE
	LD	(HL),$10
;
	LD	A,(WORK3)
	LD	HL,ENZPSL
	ADD	HL,DE
	LD	(HL),A  ;$08
;
;
	LD	HL,SOUND3
	LD	(HL),$1A	;(S)
;	CALL	BBSDST	;(S)
;
	JP  	E2CLER
;RET
;==========================================
;==========================================
;----- MOVE -----
HBM000
	CALL	ENPSSV
;
	CALL	E2STCK
;
;	LD	HL,SOUND3
;	LD	A,(FRCNT)
;	AND	$07
;	OR	(HL)
;	JR	NZ,HSDS02
;;
;	LD	A,$0B
;	LD	(SOUND3),A	;(S)
;HSDS02
	XOR	A
	LD	($D3D6),A	
;
	LD	E,$10
;
	LD	HL,ENLIFE
	ADD	HL,BC
	LD	A,(HL)
	CP	$02
	JR	C,HBM001
;
	LD	HL,ENTIM2
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,HBM010
;
HBM001		;�n�C�X�s�[�h�I
	CALL	HBM011
;
	LD	A,$01
	LD	($D3D6),A	
;
	LD	E,$0B
HBM010
	LD	HL,BSINDX
	LD	A,(HL)
	INC	A
	LD	(HL),A
	CP	E
	JR	C,HBM011
;
	LD	(HL),B
;
	LD	A,$1B
	LD	(SOUND3),A	;(S)	�J�^�J�^�B�B�B
HBM011
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	INC	A
	AND	$7F
	LD	(HL),A
;
	LD	E,A
	LD	D,B
;
	LD	HL,XMVBUF
	ADD	HL,DE
	LD	A,(ENSVXL)
	LD	(HL),A
;
	LD	HL,YMVBUF
	ADD	HL,DE
	LD	A,(ENDSYP)
	LD	(HL),A
;=========================================
	CALL	HAYASUB
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	E,(HL)
	SRL	E
	LD	D,B
	LD	HL,HYBCDT
	ADD	HL,DE
	LD	A,(HL)
;;	LD	HL,ENCHPT
;;	ADD	HL,BC
;;	LD	(HL),A
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;;
;;;;;;;;HBM090
;;;;;;;;	RET
;================================
HAYABCD
;0
	DB	$F8,$F8,$60,$00
	DB	$F8,$00,$62,$00
	DB	$F8,$08,$62,$20
	DB	$F8,$10,$60,$20
	DB	$08,$F8,$64,$00
	DB	$08,$00,$66,$00
	DB	$08,$08,$66,$20
	DB	$08,$10,$64,$20
;1
	DB	$F8,$F8,$60,$00
	DB	$F8,$00,$62,$00
	DB	$F8,$08,$62,$20
	DB	$F8,$10,$60,$20
	DB	$08,$F8,$6C,$00
	DB	$08,$00,$6E,$00
	DB	$08,$08,$62,$60
	DB	$08,$10,$60,$60
;2
	DB	$F8,$F8,$68,$00
	DB	$F8,$00,$6A,$00
	DB	$F8,$08,$62,$20
	DB	$F8,$10,$60,$20
	DB	$08,$F8,$68,$40
	DB	$08,$00,$6A,$40
	DB	$08,$08,$62,$60
	DB	$08,$10,$60,$60
;3
	DB	$F8,$F8,$6C,$40
	DB	$F8,$00,$6E,$40
	DB	$F8,$08,$62,$20
	DB	$F8,$10,$60,$20
	DB	$08,$F8,$60,$40
	DB	$08,$00,$62,$40
	DB	$08,$08,$62,$60
	DB	$08,$10,$60,$60
;4
	DB	$F8,$F8,$64,$40
	DB	$F8,$00,$66,$40
	DB	$F8,$08,$66,$60
	DB	$F8,$10,$64,$60
	DB	$08,$F8,$60,$40
	DB	$08,$00,$62,$40
	DB	$08,$08,$62,$60
	DB	$08,$10,$60,$60
;5
	DB	$F8,$F8,$60,$00
	DB	$F8,$00,$62,$00
	DB	$F8,$08,$6E,$60
	DB	$F8,$10,$6C,$60
	DB	$08,$F8,$60,$40
	DB	$08,$00,$62,$40
	DB	$08,$08,$62,$60
	DB	$08,$10,$60,$60
;6
	DB	$F8,$F8,$60,$00
	DB	$F8,$00,$62,$00
	DB	$F8,$08,$6A,$20
	DB	$F8,$10,$68,$20
	DB	$08,$F8,$60,$40
	DB	$08,$00,$62,$40
	DB	$08,$08,$6A,$60
	DB	$08,$10,$68,$60
;7
	DB	$F8,$F8,$60,$00
	DB	$F8,$00,$62,$00
	DB	$F8,$08,$62,$20
	DB	$F8,$10,$60,$20
	DB	$08,$F8,$60,$40
	DB	$08,$00,$62,$40
	DB	$08,$08,$6E,$20
	DB	$08,$10,$6C,$20
;- - - - - - - - - - - - - -
HAYABC2
	DB	$70,$00,$70,$20
	DB	$72,$00,$72,$20
	DB	$74,$00,$74,$20
	DB	$76,$00,$76,$20
;----------------------------------------------
HAYABCS
	LD	HL,ENWRK2	; Tail clear count !
	ADD	HL,BC
	LD	A,(HL)
	CP	$05
	JP	NC,HBC090
;
	LD	HL,ENMOD0
	ADD	HL,BC
	LD	(HL),%00001000
;
	LD	HL,ENCHPT
	ADD	HL,BC
	LD	A,(HL)  ;ENCHPT2) ;HL)
	RLA
	RLA
	RLA
	RLA
	RLA
	AND	%11100000
;;	LD	HL,WORK0
;;	ADD	A,(HL)
	LD	E,A
	LD	D,B ;$0
	LD	HL,HAYABCD
	ADD	HL,DE
	LD	C,$8
;
	CALL	ENOMST
;- - - Tail set - - - -
	LD	HL,ENMOD0
	ADD	HL,BC
	LD	(HL),%00000010
;
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	LD	(WORK0),A
;1=======================================
	LD	HL,ENWRK2
	ADD	HL,BC
	LD	A,(HL)
	CP	$04
	JP	NC,HBC090
;
	LD	A,(WORK0)
	SUB	$0C
	AND	$7F
	LD	E,A
	LD	D,B
	LD	HL,XMVBUF
	ADD	HL,DE
	LD	A,(HL)
	LD	(ENSVXL),A
;
	LD	HL,YMVBUF
	ADD	HL,DE
	LD	A,(HL)
	LD	(ENDSYP),A
;
	LD	A,$00
	LD	(ENCHPT2),A
	LD	DE,HAYABC2
	CALL	EN2CST
;2=====================================
	LD	HL,ENWRK2
	ADD	HL,BC
	LD	A,(HL)
	CP	$03
	JP	NC,HBC090
;
	LD	A,(WORK0)
	SUB	$18
	AND	$7F
	LD	E,A
	LD	D,B
	LD	HL,XMVBUF
	ADD	HL,DE
	LD	A,(HL)
	LD	(ENSVXL),A
;
	LD	HL,YMVBUF
	ADD	HL,DE
	LD	A,(HL)
	LD	(ENDSYP),A
;
	LD	A,$00
	LD	(ENCHPT2),A
	LD	DE,HAYABC2
	CALL	EN2CST
;3========================================
	LD	HL,ENWRK2
	ADD	HL,BC
	LD	A,(HL)
	CP	$02
	JR	NC,HBC090
;
	LD	A,(WORK0)
	SUB	$24
	AND	$7F
	LD	E,A
	LD	D,B
	LD	HL,XMVBUF
	ADD	HL,DE
	LD	A,(HL)
	LD	(ENSVXL),A
;
	LD	HL,YMVBUF
	ADD	HL,DE
	LD	A,(HL)
	LD	(ENDSYP),A
;
	LD	A,$01
	LD	(ENCHPT2),A
	LD	DE,HAYABC2
	CALL	EN2CST
;4=====================================
	LD	HL,ENWRK2
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	NZ,HBC090
;
	LD	A,(WORK0)
	SUB	$2E
	AND	$7F
	LD	E,A
	LD	D,B
	LD	HL,XMVBUF
	ADD	HL,DE
	LD	A,(HL)
	LD	(ENSVXL),A
;
	LD	HL,YMVBUF
	ADD	HL,DE
	LD	A,(HL)
	LD	(ENDSYP),A
;
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	AND	$01
	ADD	A,$02
	LD	(ENCHPT2),A
;
	LD	A,(FRCNT)
	RLA
	RLA
	AND	$10
	LD	HL,ENFLCL
	XOR	(HL)
	LD	(HL),A
;
	LD	DE,HAYABC2
	CALL	EN2CST
;
	LD	HL,ENFLSH
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	NZ,HBC090
;
	LD	HL,ENMOD3
	ADD	HL,BC
	LD	(HL),%10010000
;
	CALL	CRKNENL
;
	LD	HL,ENMOD3
	ADD	HL,BC
	LD	(HL),%11010000
;
HBC090
	RET
;===========================================
HBSMST
	CALL	E2STCK2
;
	LD	A,(ENSVXL)
	LD	(WORK0),A
	LD	A,(ENDSYP)
	LD	(WORK1),A
;
	LD	A,SMK1
	CALL	EXIDSH
;
	LD	A,$13
	LD	(SOUND3),A	;(S)
;;	LD	A,$06
;;	LD	(SOUND1),A	;(S)
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%						       %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
HAYAMIT
	LD	HL,ENJYUN
	ADD	HL,BC
	LD	E,(HL)
;;	SLA	E
	SLA	E
	SLA	E
	SLA	E
	SLA	E
	SLA	E
	LD	D,B
	LD	HL,XMVBUF
	ADD	HL,DE
	PUSH	DE
;
	LD	E,$20
HYI010
;;	LD	A,(ENSVXL)
	XOR	A
	LD	(HLI),A
	DEC	E
	LD	A,E
	CP	$00
	JR	NZ,HYI010
;
	POP	DE
	LD	HL,YMVBUF
	ADD	HL,DE
;
	LD	E,$20
HYI020
;;	LD	A,(ENDSYP)
	XOR	A
	LD	(HLI),A
	DEC	E
	LD	A,E
	CP	$00
	JR	NZ,HYI020
;
	RET
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�e�[��(�U�R)							%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
HAYAMCD
	DB	$70,$00,$70,$20
	DB	$70,$40,$70,$60
	DB	$72,$00,$74,$00
	DB	$74,$20,$72,$20
	DB	$76,$00,$78,$00
	DB	$78,$20,$76,$20
	DB	$76,$40,$78,$40
	DB	$78,$60,$76,$60
;
	DB	$7A,$00,$7A,$20
	DB	$7C,$00,$7C,$20
;- - - - - - - - - - - - - - - - -
HYCHPT
	DB	$03,$03,$05,$05
	DB	$00,$00,$04,$04
	DB	$02,$02,$06,$06
	DB	$01,$01,$07,$07
;- - - - - - - - - - - - - - - - -
HYSPDT
	DB	$00,$06,$0C,$0E
HXSPDT
	DB	$10,$0E,$0C,$06
	DB	$00,$FA,$F4,$F2
	DB	$F0,$F2,$F4,$FA
	DB	$00,$06,$0C,$0E
;----------------------------------
HAYAMMV
	CALL	HAYAMCS
;
	LD	A,(SCRLFG)
	AND	A
	JR	NZ,HYM012
;
	LD	HL,ENHNFG
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,HYM001
;
HYM012
	CALL	HAYAMIT
HYM001
	CALL	E2STCK
;
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	INC	A
	AND	$1F
	LD	(HL),A
	LD	(WORK0),A
;
	LD	HL,ENJYUN
	ADD	HL,BC
	LD	E,(HL)
;;	SLA	E
	SLA	E
	SLA	E
	SLA	E
	SLA	E
	SLA	E
	LD	D,$00
	PUSH	DE
;
	LD	HL,XMVBUF
	ADD	HL,DE
	LD	A,(WORK0)
	LD	E,A
	ADD	HL,DE
	LD	A,(ENSVXL)
	LD	(HL),A
;
	POP	DE
;
	LD	HL,YMVBUF
	ADD	HL,DE
	LD	A,(WORK0)
	LD	E,A
	ADD	HL,DE
	LD	A,(ENDSYP)
	LD	(HL),A
;
	CALL	E2HNSB
;
	CALL	CREPKEL
;=========================================
HAYASUB
	LD	HL,ENFLSH
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	NZ,HYS010
;
	CALL	E2MVCL
HYS010
	CALL	ENBGCKL
;
	LD	HL,ENCBFG
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,HYM008
;
	LD	E,$08
;
	BIT	0,A
	JR	NZ,HYBC10
;
	LD	E,$00
	BIT	1,A
	JR	NZ,HYBC10
;
	LD	E,$04
	BIT	2,A
	JR	NZ,HYBC10
;
	LD	E,$0C
HYBC10
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	(HL),E
;
	CALL	RNDSUB
	RRA
	JR	C,HYM00A
;
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	A,(HL)
	CPL
	INC	A
	LD	(HL),A
HYM00A
	CALL	LDTIM0
	LD	(HL),$10
HYM008
	CALL	LDTIM1
	JR	NZ,HYM050
;		
	LD	(HL),$04
	LD	A,(ENMYNO2)
	CP	HAYAB
	JR	NZ,HYM018
;
	LD	(HL),$06
HYM018
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENWRK0
	ADD	HL,BC
	ADD	A,(HL)
	AND	$0F
	LD	(HL),A
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	E,(HL)
	LD	D,B ;$0
;
	LD	HL,HYCHPT
	ADD	HL,DE
	LD	A,(HL)
	CALL	ENPTST
;
	LD	HL,HYSPDT
	ADD	HL,DE
;
	LD	A,(HL)
;
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),A
;
	LD	HL,HXSPDT
	ADD	HL,DE
;
	LD	A,(HL)
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
;
HYM050
	CALL	LDTIM0
	JR	NZ,HYM070
;
	CALL	RNDSUB
	AND	$1F
	ADD	A,$10
	LD	(HL),A
;
	CALL	RNDSUB
	AND	$02
	DEC	A
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	(HL),A
HYM070
	RET
;==============================================
HAYAMCS
	LD	DE,HAYAMCD
	CALL	EN2CST
;
	CALL	E2STCK
;
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	LD	(WORK0),A
;
	LD	HL,ENJYUN
	ADD	HL,BC
	LD	E,(HL)
	SLA	E
	SLA	E
	SLA	E
	SLA	E
	SLA	E
	LD	D,B
	PUSH	DE
	PUSH	DE
	LD	HL,XMVBUF
	ADD	HL,DE
;
	LD	A,(WORK0)
	SUB	$09
	AND	$1F
	LD	E,A
	LD	D,B
	ADD	HL,DE
	LD	A,(HL)
	LD	(ENSVXL),A
;
	POP	DE
;
	LD	HL,YMVBUF
	ADD	HL,DE
;
	LD	A,(WORK0)
	SUB	$09
	AND	$1F
	LD	E,A
	LD	D,B
	ADD	HL,DE
	LD	A,(HL)
	LD	(ENDSYP),A
;
	LD	A,$08
	LD	(ENCHPT2),A
	LD	DE,HAYAMCD
	CALL	EN2CST
;
	POP	DE
	PUSH	DE
;
	LD	HL,XMVBUF
	ADD	HL,DE
;
	LD	A,(WORK0)
	SUB	$10
	AND	$1F
	LD	E,A
	LD	D,B
	ADD	HL,DE
	LD	A,(HL)
	LD	(ENSVXL),A
;
	POP	DE
;
	LD	HL,YMVBUF
	ADD	HL,DE
;
	LD	A,(WORK0)
	SUB	$10
	AND	$1F
	LD	E,A
	LD	D,B
	ADD	HL,DE
	LD	A,(HL)
	LD	(ENDSYP),A
;
	LD	A,$09
	LD	(ENCHPT2),A
	LD	DE,HAYAMCD
	CALL	EN2CST
		jp	ENPSSV
;;;;;;;;	CALL	ENPSSV
;;;;;;;;HYC090
;;;;;;;;	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	OBAKE			   %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
GHOSTCD
	DB	$58,$02,$5A,$02
	DB	$5C,$02,$5E,$02
;;	DB	$78,$00,$7A,$00
;;	DB	$7C,$00,$7E,$00
;
GHXSLM
	DB	$0C,$F4
GHYSLM
	DB	$08,$F8
;
;GHMAX	DB	$0C,$0F4
;GXADD	DB	$01,$0FF
;GYADD	DB	$0FC,$04
;- - - - - - - - - - - - - - - - - - - - - -
GHOSBMV
	CALL	GHOSBCS
	JR	GHSSUB
GHOSTMV
GHOSSMV
	CALL	E2MKST
	LD	DE,GHOSTCD
	CALL	EN2CST
;
GHSSUB
	LD	A,(ENSTAT2)
	AND	A
	JR	Z,GHM0F0
;
	LD	A,$FF
	CALL	ENPTST
;
	CALL	E2XCHK
	ADD	A,$10
	CP	$20
	JR	NC,GHM0E0
;
	CALL	E2YCHK
	ADD	A,$10
	CP	$20
	JR	NC,GHM0E0
;
	LD	A,(PLCBFG)
	AND	A
	JR	Z,GHM0E0
;
	CALL	STATINC
	LD	(HL),B
;
	LD	HL,ENTIM2
	ADD	HL,BC
	LD	(HL),$30
GHM0E0
	RET
;======================================
GHM0F0
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	RRA
	XOR	C
	AND	$01
	CALL	ENPTST
;
	LD	A,(FRCNT)
	AND	$00
	JR	Z,GHM000
;
	LD	A,$FF
	CALL	ENPTST
GHM000
	CALL	E2STCK
	CALL	E2HNSB
;
	CALL	CRKNENL
YMVSUB
	CALL	E2MVCL
	CALL	E2ZCLC
	CALL	GHOCLC
;
	LD	HL,ENTIM2
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JP	NZ,GHM060
;
	CALL	CRENPLL
;
	CALL	LDTIM0
	JR	NZ,GHM008
;
	CALL	RNDSUB
	AND	$1F
	ADD	A,$20
	LD	(HL),A
;
	AND	$01
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	(HL),A
;- - - - - - - - - - - - - - - - -
GHM008
	CALL	LDTIM1
	JR	NZ,GHM00A
;
	CALL	RNDSUB
	AND	$0F
	ADD	A,$18
	LD	(HL),A
;
	AND	$01
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	(HL),A
GHM00A
;==================================
	LD	A,(FRCNT)
	XOR	C
	AND	$03
	JR	NZ,GHM060
;
	LD	HL,ENWRK0
	ADD	HL,BC
;
	LD	A,(ENSVXL)
	CP	$28
	JR	NC,GHM022
;
	LD	(HL),$00
	JR	GHM027
GHM022
	CP	$78
	JR	C,GHM028
;
	LD	(HL),$01
GHM027
	CALL	LDTIM0
	LD	(HL),$20
GHM028
	LD	HL,ENWRK1
	ADD	HL,BC
;
	LD	A,(ENDSYP)
	CP	$28
	JR	NC,GHM029
;
	LD	(HL),$00
	JR	GHM0298
GHM029
	CP	$60
	JR	C,GHM02A
;
	LD	(HL),$01
GHM0298
	CALL	LDTIM1
	LD	(HL),$20
GHM02A
;====================================
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	E,(HL)
	LD	D,B
	LD	HL,GHXSLM
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,BC
	SUB	(HL)
	AND	%10000000
	JR	NZ,GHM010
	INC	(HL)
	INC	(HL)
GHM010
	DEC	(HL)
;
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	E,(HL)
	LD	D,B
	LD	HL,GHYSLM
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENYSPD
	ADD	HL,BC
	SUB	(HL)
	AND	%10000000
	JR	NZ,GHM020
	INC	(HL)
	INC	(HL)
GHM020
	DEC	(HL)
;
GHM060
	RET
;
;
;===========================================
;--------------------------------
; TO BE TO BE TEN MADE TOBE
;--------------------------------
GHOCLC
	LD	A,(FRCNT)
	AND	$03
	JR	NZ,GFLYE
;
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	CP	$10
	JR	Z,GFLYE
;
	BIT	7,A
	JR	Z,GUP
;
	INC	(HL)
	JR	GFLYE
GUP
	CP	$10
	JR	NC,GUP2
	INC	(HL)
	RET
GUP2	
	DEC	(HL)
GFLYE
	RET
;========================================
GHOSBCD
;- -0 - -
	DB	$F8,$F8,$60,$02
	DB	$F8,$00,$62,$02
;
	DB	$F8,$08,$62,$22
	DB	$F8,$10,$60,$22
;
	DB	$08,$F8,$64,$02
	DB	$08,$00,$66,$02
;
	DB	$08,$08,$68,$02
	DB	$08,$10,$6A,$02
;- -1 - -
	DB	$F8,$F8,$60,$02
	DB	$F8,$00,$62,$02
;
	DB	$F8,$08,$62,$22
	DB	$F8,$10,$60,$22
;
	DB	$08,$F8,$64,$02
	DB	$08,$00,$6C,$02
;
	DB	$08,$08,$6E,$02
	DB	$08,$10,$6A,$02
;- -2 - -
	DB	$F8,$F8,$60,$02
	DB	$F8,$00,$62,$02
;
	DB	$F8,$08,$62,$22
	DB	$F8,$10,$60,$22
;
	DB	$08,$F8,$6A,$22
	DB	$08,$00,$68,$22
;
	DB	$08,$08,$66,$22
	DB	$08,$10,$64,$22
;- -3 - -
	DB	$F8,$F8,$60,$02
	DB	$F8,$00,$62,$02
;
	DB	$F8,$08,$62,$22
	DB	$F8,$10,$60,$22
;
	DB	$08,$F8,$6A,$22
	DB	$08,$00,$6E,$22
;
	DB	$08,$08,$6C,$22
	DB	$08,$10,$64,$22
;------------------------------------------
GHOSBCS
	CALL	E2MKST
	LD	A,(ENFLCL)
	PUSH	AF
	RLA
	AND	$40
	LD	(WORK0),A
	POP	AF
	AND	$0F
	LD	(ENFLCL),A
;
	LD	HL,ENCHPT
	ADD	HL,BC
	LD	A,(HL)  ;ENCHPT2) ;HL)
	RLA
	RLA
	RLA
	RLA
	RLA
	AND	%11100000
	LD	HL,WORK0
	ADD	A,(HL)
	LD	E,A
	LD	D,B ;$0
	LD	HL,GHOSBCD
	ADD	HL,DE
	LD	C,$8
;
		jp	ENOMST
;;;;;;;;	CALL	ENOMST
;;;;;;;;	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	Ninja			 		         %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
NINJACD
	DB	$70,$01,$72,$01
	DB	$72,$21,$70,$21
;
	DB	$74,$01,$74,$21
	DB	0,0,0,0	; Dammy
	DB	$7A,$01,$7A,$21
;
	DB	$FF,$00,$FF,$00
;
	DB	$76,$01,$78,$01
	DB	$78,$21,$76,$21
; - - - - - - - - - - - - - - - - - - -
NINJAMV
	LD	A,(ENCHPT2)
	CP	$03
	JR	NZ,NIN000
;
	LD	A,(ENSVXL)
	SUB	$08
	LD	(ENSVXL),A
;
	LD	A,$6
	LD	(ENCHPT2),A
	LD	DE,NINJACD
	CALL	EN2CST
;
	LD	A,(ENSVXL)
	ADD	A,$10
	LD	(ENSVXL),A
;
	LD	A,$7
	LD	(ENCHPT2),A
	LD	DE,NINJACD
	CALL	EN2CST
;
	CALL	ENPSSV
	JR	NIN001
NIN000	
	LD	DE,NINJACD
	CALL	EN2CST
;
NIN001
	CALL	E2STCK
	CALL	E2HNSB
;
	LD	A,(ENSTAT2)
	RST	0
	DW	NIN1000
	DW	NIN2000
	DW	NIN3000
;---------------------------------------
NIN1000
	CALL	CREPKEL
;
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	RRA
	AND	$01
	CALL	ENPTST
;
	CALL	LDTIM0
	CP	$18
	JR	NZ,NIN1008
;
	CALL	NINTMST
	AND	A
NIN1008
	JR	NC,NIN1090
;
	CALL	E2XCHK
	ADD	A,$20
	CP	$40
	JR	NC,NIN1090
	CALL	E2YCHK
	ADD	A,$20
	CP	$40
	JR	NC,NIN1090
;
	LD	HL,ENFLSH
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	NZ,NIN1090
;
	CALL	LDTIM0
	LD	(HL),$20
;
	CALL	STATINC
;
	LD	A,$3C
	LD	(SOUND1),A	;(S)
NIN1090
	RET
;---------------------------------------
NINCD2
	DB	$04,$03,$02
;
NIN2000
	CALL	LDTIM0
	CP	$18
	JP	NC,CREPKEL
;
	AND	A
	JR	NZ,NIN2010
;
	LD	(HL),$40
;
	CALL	STATINC
;
	LD	A,$FF
	CALL	ENPTST
;
;====================================
;;SWARP
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	A,(HL)
	SUB	$48
	LD	E,A
;
	LD	A,$48
	SUB	E
	LD	(HL),A
;
	LD	HL,ENXPSL
	ADD	HL,BC
	LD	A,(HL)
	SUB	$50
	LD	E,A
;
	LD	A,$50
	SUB	E
	LD	(HL),A
	RET
;;	CALL	SWARP
;;	RET
;
NIN2010
	RRA
	RRA
	RRA
	AND	$03
	LD	E,A
	LD	D,B
	LD	HL,NINCD2
	ADD	HL,DE
	LD	A,(HL)
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;NIN2030
;;;;;;;;	RET
;---------------------------------------
NINCD3
	DB	$02,$03,$04
NIN3000
	CALL	LDTIM0
	CP	$18
		ret	NC
;;;;;;;;	JR	NC,NIN3030
	AND	A
	JR	NZ,NIN3010
;
	LD	(HL),$30
;
	CALL	STATINC
;
	LD	(HL),B
;
	RET
;===============================
NINTMST
	LD	A,NINTM
	CALL	ENIDSHL
	JR	C,NIN1010
;
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	A,(WORK0)
	LD	(HL),A
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	A,(WORK1)
	LD	(HL),A
;
	PUSH	BC
		ld	c,e
		ld	b,d
;;10/31;	PUSH	DE
;;10/31;	POP	BC
	LD	A,$18
	CALL	PSERCHL
	POP	BC
NIN1010
	RET
;
NIN3010
	RRA
	RRA
	RRA
	AND	$03
	LD	E,A
	LD	D,B
	LD	HL,NINCD3
	ADD	HL,DE
	LD	A,(HL)
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;NIN3030
;;;;;;;;	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	Ninja tama		 		         %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
NINTMCD
	DB	$7C,$00,$7C,$20
	DB	$7E,$00,$7E,$20
NINTMMV
	LD	DE,NINTMCD
	CALL	EN2CST
;
	CALL	E2STCK
;
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	AND	$01
	CALL	ENPTST
;
	CALL	E2MVCL
	CALL	ENBGCK2L
;
	CALL	CRENPL2L
	CALL	CRKNENL
;
	LD	HL,ENCBFG
	ADD	HL,BC
	LD	A,(HL)
	AND	A
		ret	Z
;;;;;;;;	JR	Z,NINT100
;
	CALL	E2CLER
		jp	E2FLST
;;;;;;;;	CALL	E2FLST
;;;;;;;;NINT100
;;;;;;;;	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	Fishing game !		 		         %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
FISHGC0  ;�В�
;0
	DB	$00,$F0,$78,$01
	DB	$00,$F8,$7A,$01
	DB	$00,$00,$70,$01
	DB	$00,$08,$72,$01
FISHGC1  ;�В�
;1
	DB	$00,$F0,$7C,$01
	DB	$00,$F8,$7E,$01
	DB	$00,$00,$70,$01
	DB	$00,$08,$72,$01
FISHGC2  ;�В�
;2
	DB	$00,$F0,$78,$01
	DB	$00,$F8,$7A,$01
	DB	$00,$00,$74,$01
	DB	$00,$08,$76,$01
BLAJCD
	DB	$9A,$16
	DB	$9C,$16
;- - - - - - - - - - - - - - - - - -
FISHGMV
;=== In ground speaking ==
	LD	HL,ENWRK3
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,FSG000	;���ł���u���W���[�H
;
	LD	A,(ENDSYP)
	ADD	A,$04
	LD	(ENDSYP),A				;YES !
;
	LD	DE,BLAJCD
	CALL	EN2CST
;
	CALL	E2MVCL
	CALL	E2ZCLC
;
	LD	HL,ENZSPD
	ADD	HL,BC
	DEC	(HL)
;
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	AND	%10000000
	JR	Z,FSG001
;
	CALL	E2CLER
;
	XOR	A
	LD	(WARAFG),A
	LD	(ITEMNOT),A
;
	JP  	YOSSISET
;- - - - - - - - - - - - -
FSG001
	LD	A,$02
	LD	(PLSTOP),A
	RET	
;
FSG000
	LD	A,(YKFLAG)
	AND	A
	JP	NZ,FG2000
;
	LD	HL,ENMOD0
	ADD	HL,BC
	LD	(HL),%10000100
;
	LD	HL,ENWRK4
	ADD	HL,BC
	LD	A,(HL)
	LD	(ENHELP),A
;
	LD	A,(MSGEFG)
	AND	A
	LD	HL,FISHGC2
	JR	NZ,FG0000
;
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	INC	(HL)
;
	LD	HL,FISHGC0
;
	AND	%00110000
	JR	Z,FG0000
	LD	HL,FISHGC1
FG0000
	LD	C,$04
	CALL	ENOMST
;
	LD	A,$04
	CALL	NXOMSBL
;
	CALL	M2CROS
;
	LD	A,(ENSTAT2)
	RST	0
	DW	FG01000  ;�ǂ����ˁH
	DW	FG02000  ;��������
	DW	FG03000  ;��肽�܂��I
;================================================
FG01000
		LD	A,(GMMODE)
		CP	GPLAY
		RET	NZ
;
	CALL	E2MSCK
		ret	NC
;;;;;;;;	JR	NC,FG01010
;
;------------------------------------
FG01001
		LD	A,$002
		LD	(ITEMNOT),A
;
	LD	A,$45
	CALL	MSGCHK
;
		jp	STATINC
;;;;;;;;	CALL	STATINC
;;;;;;;;FG01010
;;;;;;;;	RET
;================================================
FG02000
	LD	A,(MSGEFG)
	AND	A
		ret	NZ
;;;;;;;;	JR	NZ,FG02010
;
	CALL	STATINC
;
	LD	A,(MSANSR)
	AND	A
	JR	Z,FG02008
;
	LD	(HL),B
;
		XOR	A
		LD	(ITEMNOT),A
;
	LD	A,$46
	JP	MSGCHK
;------------------------------------
FG02008
		push	hl
		push	de
		ld	a,(COINU2)
		ld	e,a
		ld	a,(COINU1)
		ld	d,a
		ld	a,(COINC2)
		ld	l,a
		ld	a,(COINC1)
		ld	h,a
;
FG02008_050
		ld	a,e
		or	d
		jr	z,FG02008_100
;
		daa
		inc	hl
		daa
		dec	de
		jr	FG02008_050
;
FG02008_100
		ld	a,l
		sub	010h
		ld	a,h
		sbc	a,000
		pop	de
		pop	hl
		jr	c,FG02030
;
;;;;;;;;	LD	A,(COINC2)
;;;;;;;;	SUB	$10
;;;;;;;;	LD	A,(COINC1)
;;;;;;;;	SBC	A,$0
;;;;;;;;	JR	C,FG02030	; Not Rupy ?
;;;;;;;;;				; NO !
	LD	A,$0A
	LD	(COIND2),A
;
	LD	A,$47
		jp	MSGCHK
;;;;;;;;	CALL	MSGCHK
;;;;;;;;FG02010
;;;;;;;;	RET
;================================================
FG02030
	LD	(HL),B
;
		XOR	A
		LD	(ITEMNOT),A
;
	LD	A,$4E
		jp	MSGCHK
;;;;;;;;	CALL	MSGCHK
;;;;;;;;	RET	
;================================================
FG03000
	LD	A,(MSGEFG)
	AND	A
		ret	NZ
;;;;;;;;	JR	NZ,FG03010
;
	CALL	ENALCL
		jp	FGNXGO
;;;;;;;;	CALL	FGNXGO
;;;;;;;;FG03010
;;;;;;;;	RET
;
;================================================
;= 	Game					=
;================================================
FGCD
	DB	$58,$00,$5A,$00 ;0
	DB	$56,$20,$FF,$00 ;1
	DB	$5C,$00,$5E,$00 ;2
	DB	$58,$00,$5A,$00 ;3
	DB	$58,$00,$5A,$00 ;4
	DB	$5C,$00,$5E,$00 ;5
	DB	$5C,$00,$5E,$00 ;6
	DB	$56,$00,$FF,$00 ;7
	DB	$5E,$20,$5C,$20 ;8
	DB	$58,$00,$5A,$00 ;9
;
FGPCD
	DB	$06
	DB	$16
	DB	$10
	DB	$10
	DB	$38
	DB	$38
	DB	$39
	DB	$39
	DB	$16
	DB	$38
;
FGCHXD
	DB	$F6
	DB	$00
	DB	$F1
	DB	$F0
	DB	$F0
	DB	$F0
	DB	$F0
	DB	$FE
	DB	$04
	DB	$F2
FGCHYD
	DB	$00
	DB	$F0
	DB	$FA
	DB	$00
	DB	$00
	DB	$F8
	DB	$F8
	DB	$F8
	DB	$F2
	DB	$FE
FGSHLX
	DB	$E8
	DB	$00
	DB	$E0
	DB	$E8
	DB	$00
	DB	$00
	DB	$00
	DB	$00
	DB	$14
FGSHLY
	DB	$10
	DB	$E0
	DB	$F8
	DB	$10
	DB	$00
	DB	$00
	DB	$00
	DB	$00
	DB	$F0
;
FG2000
	LD	A,$01
	LD	(ITEMNOT),A
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	RST	00
	DW	RODCTL
	DW	LURECTL
	DW	FISH1CTL
	DW	FISH2CTL
;==================================
FSIXDT
	DB	$18,$58,$60
	DB	$18,$88
FSIYDT
	DB	$40,$4C,$34
	DB	$68,$50
FSIMDT
	DB	$01,$00,$00
	DB	$01,$00
FSIWDT
	DB	$02,$02,$02
	DB	$03,$03
FSITDT
	DB	$00,$3E,$1E
	DB	$10,$30
;- - - - - - - - - - - - - - - - - - - - - - - - -
RODCTL
	LD	A,$02
	LD	(PLSTOP),A
;
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	NZ,RDC000	; Fish initial ?
;				; yes !
	INC	(HL)
;
	PUSH	BC
;
	LD	C,$05
FSI010
	LD	A,FISHG
	CALL	ENIDSHL
;
	LD	HL,FSIXDT-1	
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,FSIYDT-1	
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,FSIMDT-1	
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENMUKI
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,FSIWDT-1	
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENWRK0
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,FSITDT-1	
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENTIM0
	ADD	HL,DE
	LD	(HL),A
;
	DEC	C
	JR	NZ,FSI010
;
	XOR	A
	LD	(FISHCT),A
;
	POP	BC
	RET
;=================================================
RDC000
	LD	A,(ENCHPT2)
	LD	E,A
	LD	D,B
	LD	HL,FGPCD
	ADD	HL,DE
	LD	A,(HL)
	LD	(PLCHPT),A
;
	LD	HL,FGCHXD
	ADD	HL,DE
	LD	A,(PLXPSL)
	ADD	A,(HL)
	LD	(ENSVXL),A
	LD	HL,FGCHYD
	ADD	HL,DE
	LD	A,(PLYPSL)
	ADD	A,(HL)
	LD	(ENDSYP),A
;
	LD	DE,FGCD
	CALL	EN2CST
;
	LD	A,(ENSTAT2)
	RST	0
	DW	FG20000
	DW	FG21000
	DW	FG22000
	DW	FG23000
	DW	FG24000
	DW	FG25000
	DW	FG26000
;===========================================
FG20000
	LD	A,(MSGEFG)
	AND	A
	JR	NZ,FG20010
;
	LD	A,(KEYA2)
	AND	%00110000
	JR	Z,FG20010
;
	CALL	STATINC
;
	CALL	LDTIM0
	LD	(HL),$23
;
	XOR	A
	LD	(FISHON),A
FG20010
	LD	A,$09
		jp	FG21018
;;;;;;;;	CALL	FG21018
;;;;;;;;	RET
;===========================================
FGSHPT
	DB	$01,$08,$08,$08,$08,$08,$01,$02,$03,$00
;
FG21000
	CALL	LDTIM0
	JR	NZ,FG21010
;
	CALL	STATINC
;
	LD	A,$02
	LD	(ENCHPT),A
;
	LD	A,FISHG
	CALL	ENIDSHL
;
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),$78
;
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),$18
;
	LD	HL,ENXSPD
	ADD	HL,DE
	LD	(HL),$E2
;
	LD	HL,ENYSPD
	ADD	HL,DE
	LD	(HL),$FA
;
	LD	HL,ENWRK0
	ADD	HL,DE
	LD	(HL),$1
;
	LD	HL,ENTIM0
	ADD	HL,DE
	LD	(HL),$14
;
	LD	A,$08
	LD	(SOUND1),A	;(S)
	RET
FG21010
	RRA
	RRA
	AND	%00011111
FG21018
	LD	E,A
	LD	D,B
	LD	HL,FGSHPT
	ADD	HL,DE
	LD	A,(HL)
	LD	(ENCHPT),A
;
	LD	E,A
	LD	D,B
;
	LD	HL,FGSHLX
	ADD	HL,DE
	LD	A,(PLXPSL)
	ADD	A,(HL)
	LD	(ENSVXL),A
	LD	HL,FGSHLY
	ADD	HL,DE
	LD	A,(PLYPSL)
	ADD	A,(HL)
	LD	(ENDSYP),A
;
	XOR	A
	LD	(ENCHPT2),A
;
	LD	DE,LURECD
	CALL	EN2CST
;
	JP  	ENPSSV
;
;===========================================
FG22000
FG22010
	RET
;===========================================
FG23000
	LD	A,(MSGEFG)
	AND	A
		ret	NZ
;;;;;;;;	JR	NZ,FG23010
;
	LD	A,(MSANSR)
	AND	A
	JR	NZ,FG23008	; Mada surukane ?
;				; hai
	LD	A,(FISHCT)
	CP	$05
	JR	C,FG20008	; All fish cached ?
;				; yes !
	LD	A,$4B
	CALL	MSGCHK
;
	CALL	STATINC
	LD	(HL),$5
	RET
FG20008
		push	hl
		push	de
		ld	a,(COINU2)
		ld	e,a
		ld	a,(COINU1)
		ld	d,a
		ld	a,(COINC2)
		ld	l,a
		ld	a,(COINC1)
		ld	h,a
;
FG20008_050
		ld	a,e
		or	d
		jr	z,FG20008_100
;
		daa
		inc	hl
		daa
		dec	de
		jr	FG20008_050
;
FG20008_100
		ld	a,l
		sub	010h
		ld	a,h
		sbc	a,000
		pop	de
		pop	hl
		jr	c,FG23018
;
;;;;;;;;	LD	A,(COINC2)
;;;;;;;;	SUB	$10
;;;;;;;;	LD	A,(COINC1)
;;;;;;;;	SBC	A,$0
;;;;;;;;	JR	C,FG23018	; Not Rupy ?
;;;;;;;;;				; NO !
	LD	A,$0A
	LD	(COIND2),A
;
	LD	A,$47
	CALL	MSGCHK
;
	CALL	STATINC
	LD	(HL),B
	RET
FG23008
	LD	A,$46
	CALL	MSGCHK
;
		jp	STATINC
;;;;;;;;	CALL	STATINC
;;;;;;;;FG23010
;;;;;;;;	RET
FG23018
	LD	A,$4E
	CALL	MSGCHK
;
	JP  	STATINC
;===========================================
FG24000
	LD	A,(MSGEFG)
	AND	A
		ret	NZ
;;;;;;;;	JR	NZ,FG24010
;
	CALL	ENALCL
		jp	FGNXGO
;;;;;;;;	CALL	FGNXGO
;;;;;;;;FG24010
;;;;;;;;	RET
;===========================================
FG25000
	LD	A,(MSGEFG)
	AND	A
		ret	NZ
;;;;;;;;	JR	NZ,FG25080
;
	CALL	STATINC
	LD	(HL),$04 ; FG24000
;
	LD	A,(MSANSR)
	AND	A
	JR	NZ,FG25070
;
	LD	A,$4C
		jp	MSGCHK
;;;;;;;;	CALL	MSGCHK
;;;;;;;;	RET
FG25070
	LD	A,$46
		jp	MSGCHK
;;;;;;;;	CALL	MSGCHK
;;;;;;;;FG25080
;;;;;;;;	RET
;===========================================
FG26000
	RET
;==================================
LURECD
	DB	$50,$02,$54,$02
	DB	$50,$02,$52,$02
	DB	$50,$42,$54,$02
	DB	$54,$42,$50,$42
	DB	$54,$62,$50,$62
;- - - - - - - - - - - - - - - - - - - -
LURECTL
	LD	A,C
	LD	(LUREID),A
;
	LD	DE,LURECD
	CALL	EN2CST
;
	LD	A,(ENSVXL)
	LD	(LUREXP),A
	LD	A,(ENSVYL)
	LD	(LUREYP),A
;
	CALL	E2STCK
;
	LD	A,(ENSTAT2)
	RST	0
	DW	LURE100
	DW	LURE200
;--------------------------------------
LURE100
	CALL	E2XCLC
	CALL	E2YCLC
;
	LD	A,(KEYA1)
	AND	%00000001
	JR	Z,LURE102
;
	LD	A,(FRCNT)
	AND	$01
	JR	NZ,LURE102
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,LURE102
	INC	(HL)
	JR	LURE103
;
LURE102
	CALL	LDTIM0
	JR	NZ,LURE110
;
LURE103
	LD	A,(FRCNT)
	AND	$01
	JR	NZ,LURE108
;
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	A,(HL)
	CP	$20
	JR	Z,LURE108
;
	INC	(HL)
LURE108
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	INC	A
	CP	$03
	LD	(HL),A
	JR	NZ,LURE110
;
	XOR	A
	LD	(HL),A
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,LURE110
;
	INC	(HL)
LURE110
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	A,(HL)
	CP	$2A
	JR	C,LURE120
;
	CALL	ENSDCL
;
	CALL	STATINC
;
FGWUPST
	LD	A,(ENDSYP)
	LD	(WORK1),A
	LD	A,(ENSVXL)
	LD	(WORK0),A
;
	LD	A,WTUP
	CALL	EXIDSH
;
	LD	A,$0E
	LD	(SOUND1),A	;(S)
LURE120
	RET
;--------------------------------------
LURE200
	LD	HL,ENCHPT
	LD	(HL),$00
;
	CALL	LDTIM0
	JR	Z,LURE201
;
	LD	HL,ENCHPT
	LD	(HL),$04
LURE201
	CALL	LDTIM1
	JR	Z,LURE202
;
	LD	HL,ENCHPT
	LD	(HL),$05
LURE202
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	RRA
	AND	$01
	CALL	ENPTST
;
	CALL	E2MVCL
;
	LD	A,(FRCNT)
	AND	$07
	JR	NZ,LURE210
;
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	A,(HL)
	SUB	$04
	JR	Z,LURE20A
;
	AND	%10000000
	JR	Z,LURE208
	INC	(HL)
	INC	(HL)
LURE208
	DEC	(HL)
LURE20A
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,LURE20C
;
	AND	%10000000
	JR	Z,LURE20B
	INC	(HL)
	INC	(HL)
LURE20B
	DEC	(HL)
LURE20C
;- - - - - - - - - - - - - - - - - - -
LURE210
	LD	A,(KEYA2)
	AND	%00110000
	JR	Z,LURE230
;
	CALL	LDTIM0
	LD	(HL),$08
;
	LD	A,(PLXPSL)
	PUSH	AF
	SUB	$16+1
	LD	(PLXPSL),A
;
	LD	A,$04
	CALL	PSERCHL
;
	POP	AF
	LD	(PLXPSL),A
;
	LD	A,(ENDSYP)
	CP	$25
	JR	NC,LURE228
	LD	A,(ENSVXL)
	CP	$70
	JR	C,LURE228
;
	LD	HL,ENSTAT
	LD	(HL),$03
;
	LD	A,$48
	CALL	MSGCHK	; Lure end
;
	CALL	E2CLER
;
	LD	E,ENNO-1
	LD	D,B
LURE221
	LD	HL,ENMODE
	ADD	HL,DE
	LD	A,(HL)
	AND	A
	JR	Z,LURE222
;
	LD	HL,ENWRK0
	ADD	HL,DE
	LD	A,(HL)
	CP	$02
	JR	C,LURE222	; Fish ?
;				; yes! 
	LD	HL,ENSTAT
	ADD	HL,DE
	LD	A,(HL)
	CP	$02
	JR	C,LURE222	; Found lure ?
;				; yes !
	AND	$01		; Reset !
	LD	(HL),A
LURE222
	DEC	E
	LD	A,E
	CP	$FF
	JR	NZ,LURE221
;--------------------------------------
LURE228
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	AND	$01
	CALL	ENPTST
	JR	LURE238
LURE230
	LD	A,(KEYA2)
	AND	%00000101
	JR	Z,LURE220
;
	LD	A,(ENDSYP)
	CP	$30
	JR	C,LURE220
;
	LD	HL,ENTIM2
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	NZ,LURE220
;
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),$FA
;
;LURE218
	LD	HL,ENTIM2
	ADD	HL,BC
	LD	(HL),$50
;
LURE219
	CALL	LDTIM1
	LD	(HL),$10
;
LURE220
LURE238
	LD	A,(ENSVXL)
	LD	HL,ENXPSL
	ADD	HL,BC
	CP	(HL)
	JR	NZ,LURE225
;
	LD	A,(ENSVYL)
	LD	HL,ENYPSL
	ADD	HL,BC
	CP	(HL)
	JR	Z,LURE270
;
LURE225
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	A,(HL)
	PUSH	AF
	PUSH	HL
	AND	%10000000
	JR	Z,LURE226
;
	LD	(HL),B
LURE226
	CALL	ENBGCKL
;
	POP	HL
	POP	AF
	LD	(HL),A
;
LURE270
	LD	HL,ENCBFG
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,LURE280
;
	XOR	A
	CALL	ENPTST
LURE280
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	A,(HL)
	RLA
		ret	C
;;;;;;;;	JR	C,LURE290
;
	LD	A,$02
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;LURE290
;;;;;;;;	RET
;==================================
FISH1CD
	DB	$4C,$00,$4A,$00
	DB	$4C,$00,$4E,$00
	DB	$48,$00,$4A,$00
	DB	$48,$00,$4E,$00
	DB	$4A,$20,$4C,$20
	DB	$4E,$20,$4C,$20
	DB	$4A,$20,$48,$20
	DB	$4E,$20,$48,$20
;	
FISH1CTL
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	NZ,FS1010
;
	LD	A,(ENCHPT2)
	ADD	A,$04
	LD	(ENCHPT2),A
FS1010
	LD	DE,FISH1CD
	CALL	EN2CST
;
FSSUB
	CALL	E2STCK
;
	CALL	E2MVCL
;
	LD	A,(ENSTAT2)
	RST	00
	DW	FS11000 ; MOVE1
	DW	FS12000 ; MOVE2
	DW	FS13000 ; LURE FIND
	DW	FS14000 ; LURE ATACK
	DW	FS15000 ; HIT !!
	DW	FS16000 ; CACH !!
;========================================
FS11000
	CALL	LURECR
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	CP	$03
	JP	Z,F221000
;
	CALL	LDTIM0
	JR	NZ,FS11010
;
	LD	(HL),$30
;
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	A,(HL)
	XOR	$01
	LD	(HL),A
;
	CALL	STATINC
FS11010
	LD	A,(FRCNT)
	AND	$03
	JR	NZ,FS11090
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,FS11090
	AND	%10000000
	JR	Z,FS11080
	INC	(HL)
	INC	(HL)
FS11080
	DEC	(HL)
FS11090
	JR	FSRVSE	;  Suimen hosei !
;========================================
FSXSDT
	DB	$10,$F0
;
FS12000
	CALL	LURECR
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	CP	$03
	JP	Z,F222000
;
	CALL	LDTIM0
	JR	NZ,FS12010
;
	LD	(HL),$50
;
	CALL	STATINC
	LD	(HL),B
FS12010
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	AND	$01	
	CALL	ENPTST
;
	LD	A,(FRCNT)
	AND	$03
	JR	NZ,FS21090
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	A,(HL)
	PUSH	HL
;
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	E,(HL)
	LD	D,$00
	LD	HL,FSXSDT
	ADD	HL,DE
	SUB	(HL)
	POP	HL
	AND	A
	JR	Z,FS21090
	AND	%10000000
	JR	Z,FS21080
	INC	(HL)
	INC	(HL)
FS21080
	DEC	(HL)
FS21090
FSRVSE
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	A,(HL)
	CP	$34
	JR	NC,FSRV10
;
	INC	(HL)
;
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),B
FSRV10
	RET
;========================================
LRSHXD
	DB	$F2,$14
;
FS13000
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	AND	$01	
	CALL	ENPTST
;
	CALL	LDTIM0
	JR	NZ,FS13010
;
	CALL	STATINC
FS13010
	LD	A,(PLXPSL)
	PUSH	AF
	LD	A,(PLYPSL)
	PUSH	AF
;
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	E,(HL)
	LD	D,B
	LD	HL,LRSHXD
	ADD	HL,DE
	LD	A,(LUREXP)
	ADD	A,(HL)
	LD	(PLXPSL),A
;
	LD	A,(LUREYP)
	LD	(PLYPSL),A
;
	LD	A,$04
	CALL	PSERCHL
;
	POP	AF
	LD	(PLYPSL),A
	POP	AF
	LD	(PLXPSL),A
;
	JP  	E2MVCL
;
;========================================
FS14000
	LD	A,(FRCNT)
	RRA
	RRA
	AND	$01	
	ADD	A,$2
	CALL	ENPTST
;
	LD	A,(PLXPSL)
	PUSH	AF
	LD	A,(PLYPSL)
	PUSH	AF
;
	LD	A,(LUREXP)
	ADD	A,$4
	LD	(PLXPSL),A
	LD	A,(LUREYP)
	LD	(PLYPSL),A
;
	LD	A,$10
	CALL	PSERCHL
;
	POP	AF
	LD	(PLYPSL),A
	POP	AF
	LD	(PLXPSL),A
;
	CALL	E2MVCL
;
	LD	A,(LUREXP)
	LD	HL,ENSVXL
	SUB	(HL)
	ADD	A,$08
	CP	$10
	JR	NC,FS14090
;
	CALL	ENSDCL
;
	CALL	STATINC
;
	LD	A,(LUREID)
	LD	E,A
	LD	D,B
	LD	HL,ENMODE
	ADD	HL,DE
	LD	(HL),B
FS14090
	RET
;========================================
FSLRCD
	DB	$54,$00
FSHITXD
	DB	$08,$F8
;- - - - - - - - - - - - - - - -
FS15000
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	E,(HL)
	LD	D,B
	LD	HL,FSHITXD
	ADD	HL,DE
	LD	A,(ENSVXL)
	ADD	A,(HL)
	LD	(ENSVXL),A
;
	LD	HL,ENCHPT2
	LD	(HL),B
;
	LD	DE,FSLRCD
	CALL	EN1CST
;
	CALL	ENPSSV
;
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	AND	$01	
	CALL	ENPTST
;
	LD	A,(FRCNT)
	AND	$07
	JR	NZ,FS15600
;
	LD	A,(PLXPSL)
	PUSH	AF
	LD	A,(PLYPSL)
	PUSH	AF
;
	LD	A,$00
	LD	(PLXPSL),A
	LD	A,$59
	LD	(PLYPSL),A
;
	LD	A,$08
	CALL	PSERCH2L
;
	LD	A,(WORK0)
	LD	HL,ENYSPD
	ADD	HL,BC
	SUB	(HL)
	INC	(HL)
	AND	%10000000
	JR	Z,FS15200
;
	DEC	(HL)
	DEC	(HL)
FS15200
	LD	A,(WORK1)
	LD	HL,ENXSPD
	ADD	HL,BC
	SUB	(HL)
	INC	(HL)
	AND	%10000000
	JR	Z,FS15300
;
	DEC	(HL)
	DEC	(HL)
FS15300
;
	POP	AF
	LD	(PLYPSL),A
	POP	AF
	LD	(PLXPSL),A
;
FS15600
	LD	A,(KEYA2)
	AND	%00110000
	JR	Z,FS15700
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	CP	$03
	JR	NZ,FS15610	; Lunker ?
;				; yes !
	CALL	RNDSUB
	AND	$03
	JR	Z,FS15700	
FS15610
	LD	A,(PLXPSL)
	PUSH	AF
	SUB	$14
	LD	(PLXPSL),A
;
	LD	A,(PLYPSL)
	PUSH	AF
	ADD	A,$08
	LD	(PLYPSL),A
;
	LD	A,$03
	CALL	PSERCH2L
;
	LD	A,(WORK0)
	LD	HL,ENYSPD
	ADD	HL,BC
	SUB	(HL)
	INC	(HL)
	INC	(HL)
	AND	%10000000
	JR	Z,FS15250
;
	DEC	(HL)
	DEC	(HL)
	DEC	(HL)
	DEC	(HL)
FS15250
	LD	A,(WORK1)
	LD	HL,ENXSPD
	ADD	HL,BC
	SUB	(HL)
	INC	(HL)
	INC	(HL)
	AND	%10000000
	JR	Z,FS15350
;
	DEC	(HL)
	DEC	(HL)
	DEC	(HL)
	DEC	(HL)
FS15350
	POP	AF
	LD	(PLYPSL),A
	POP	AF
	LD	(PLXPSL),A
;
	CALL	LDTIM0
	LD	(HL),$10
FS15700
	CALL	E2MVCL
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,FS15710
	RLCA
	AND	$01
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	(HL),A
FS15710
	LD	HL,ENCHPT
	LD	(HL),$05
;
	CALL	LDTIM0
	JR	Z,FS15800
;
	LD	A,(FRCNT)
	AND	%00110000
	JR	Z,FS15800
;
	LD	HL,ENCHPT
	LD	(HL),$07
FS15800
	LD	A,(ENDSYP)
	CP	$2C
	JR	NC,FS15900
	LD	A,(ENSVXL)
	CP	$74
	JR	C,FS15900	; CACH !
;
	CALL	STATINC
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),$05
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),$F0
;
	JP  	FGWUPST
;RET
;	LD	HL,ENSTAT
;	LD	(HL),$03
;;
;	LD	A,$48
;	CALL	MSGCHK
;;
;	JP	E2CLER
FS15900
	LD	A,(ENSVXL)
	CP	$03
		ret	NC		; BARERU !
;;;;;;;;	JR	NC,FS15920	; BARERU !
;
	LD	HL,ENSTAT
	LD	(HL),$03
;
	LD	A,$49
	CALL	MSGCHK
;
	JP	E2CLER
;;;;;;;;FS15920
;;;;;;;;	RET
;==================================
FS16000
	LD	HL,ENCHPT
	LD	(HL),$01
;
	CALL	E2MVCL
;
	LD	HL,ENYSPD
	ADD	HL,BC
	INC	(HL)
	NOP
;
	LD	A,(HL)
	CP	$0C
		ret	NZ		;��グ�H
;;;;;;;;	JR	NZ,FS16090	;��グ�H
;				; YES !
	LD	HL,ENSTAT
	LD	(HL),$03
;
	LD	A,C
	CP	$0F
	JR	NZ,FS16078 ; Last big one ?
;			   ; yes !
	LD	A,(DJSVBF)
	AND	%00010000
	JR	NZ,FS16078
;
	LD	A,$01
	LD	(SOUND1),A	;(S)
;
	LD	A,(GRNDPT)
	LD	E,A
	LD	D,$01
	LD	HL,DJRMSV
	ADD	HL,DE
	LD	A,(HL)
	OR	%00010000
	LD	(HL),A
	LD	(DJSVBF),A
;
	LD	A,(KAKERCT)
	INC	A
	LD	(KAKERCT),A
	CP	$04
	JR	NZ,FS16073
;
	XOR	A
	LD	(KAKERCT),A
;
	LD	HL,HARTUP
	LD	(HL),$40
;
	LD	HL,HARTMX
	INC	(HL)
;
	LD	A,$FF
	JR	FS16075
;
FS16073
	LD	A,$FE
FS16075
	CALL	MSGCH2
	LD	HL,COINU2
;;;;;;;;	LD	(HL),$20
		ld	(hl),20
	JR	FS16088
FS16078
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	CP	$03
	LD	E,20
	LD	A,$4A
	JR	Z,FS16080
	LD	E,05
	LD	A,$4D
FS16080
	LD	HL,COINU2
	LD	(HL),E
	CALL	MSGCHK
;
FS16088
		jp	E2CLER
;;;;;;;;	CALL	E2CLER
;;;;;;;;FS16090
;;;;;;;;	RET
;==================================
FISH2CD
	DB	$44,$00,$42,$00
	DB	$44,$00,$46,$00
	DB	$40,$00,$42,$00
	DB	$40,$00,$46,$00
	DB	$42,$20,$44,$20
	DB	$46,$20,$44,$20
	DB	$42,$20,$40,$20
	DB	$46,$20,$40,$20
;	
FISH2CTL
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	NZ,F22010
;
	LD	A,(ENCHPT2)
	ADD	A,$04
	LD	(ENCHPT2),A
F22010
	LD	DE,FISH2CD
	CALL	EN2CST
;
	JP	FSSUB
;;
;	CALL	E2STCK
;;
;	CALL	E2MVCL
;;
;	LD	A,(ENSTAT2)
;	RST	00
;	DW	F221000
;	DW	F222000
;========================================
F221000
	CALL	LDTIM0
	JR	NZ,F221010
;
	LD	(HL),$18
;
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	A,(HL)
	XOR	$01
	LD	(HL),A
;
	CALL	STATINC
F221010
	LD	A,(FRCNT)
	AND	$03
	JR	NZ,F221090
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,F221090
	AND	%10000000
	JR	Z,F221080
	INC	(HL)
	INC	(HL)
F221080
	DEC	(HL)
F221090
	RET
;========================================
F2XSDT
	DB	$08,$F8
;
F222000
	CALL	LDTIM0
	JR	NZ,F222010
;
	LD	(HL),$50
;
	CALL	STATINC
	LD	(HL),B
F222010
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	AND	$01	
	CALL	ENPTST
;
	LD	A,(FRCNT)
	AND	$03
	JR	NZ,F222090
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	A,(HL)
	PUSH	HL
;
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	E,(HL)
	LD	D,$00
	LD	HL,F2XSDT
	ADD	HL,DE
	SUB	(HL)
	POP	HL
	AND	A
	JR	Z,F222090
	AND	%10000000
	JR	Z,F222080
	INC	(HL)
	INC	(HL)
F222080
	DEC	(HL)
F222090
	RET
;=====================================
LURECR
	LD	A,(FISHON)
	AND	A
	JR	NZ,LCR080
;
	LD	A,(LUREID)
	LD	E,A
	LD	D,B
	LD	HL,ENMODE
	ADD	HL,DE
	LD	A,(HL)
	AND	A
	JR	Z,LCR080
;
	LD	HL,ENSTAT
	ADD	HL,DE
	LD	A,(HL)
	AND	A
	JR	Z,LCR080
;
	LD	A,(LUREXP)
	LD	HL,ENSVXL
	SUB	(HL)
	RLCA
	RLCA
	AND	$01
	LD	HL,ENMUKI
	ADD	HL,BC
	CP	(HL)
	JR	NZ,LCR080
;
	LD	A,(LUREXP)
	LD	HL,ENSVXL
	SUB	(HL)
	ADD	A,$18
	CP	$30
	JR	NC,LCR080
;
	LD	A,(LUREYP)
	LD	HL,ENSVYL
	SUB	(HL)
	ADD	A,$10
	CP	$20
	JR	NC,LCR080
;
	CALL	STATINC
	LD	(HL),$2
;
	LD	HL,FISHON
	INC	(HL)
	LD	HL,FISHCT
	INC	(HL)
;
	CALL	LDTIM0
	CALL	RNDSUB
	AND	$3F
	ADD	A,$30
	LD	(HL),A
LCR080
	RET
;===========================================================
FGNXGO
	CALL	NXGOTO4
;
	LD	A,(PLXPSL)
	SWAP	A
	AND	$0F
	LD	E,A
	LD	A,(PLYPSL)
	SUB	$08
	AND	$F0
	OR	E
	LD	(DRPSBF),A
;
	XOR	A
	LD	(ITEMNOT),A
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%						         %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
BHOLECD
	DB	$4C,$07,$4C,$27
	DB	$4E,$04,$4E,$24
BHOLECD2
	DB	$7C,$07,$7C,$27
	DB	$7E,$04,$7E,$24
;-------------------------------------------
BHOL2MV
;
BHOLEMV
	LD	HL,TOBIOF
	INC	(HL)	;�v���C���[��э~�菈�������I
;
	LD	DE,BHOLECD
;
	LD	A,(DNJNNO)
	CP	$01
	JR	NZ,BHLC90	;Lv 2 ?
;
	LD	DE,BHOLECD2
BHLC90
	CALL	EN2CST
;
	CALL	E2STCK
;
	CALL	CRKNENL
;
	LD	A,(ENSTAT2)
	RST	0
	DW	BH1000
	DW	BH2000
;==================================================
BHPLMK
	DB	$00,$03,$01,$02
;
BH1000
	CALL	LDTIM3
	JR	NZ,BH1090
;
	LD	(HL),$10
;
		jp	STATINC
;;;;;;;;	CALL	STATINC
;;;;;;;;	RET
BH1090
	LD	A,(PLMODE)
	CP	PMOVE
	JP	NZ,BH1010
;
	LD	A,(PLXSPD)
	PUSH	AF
	LD	A,(PLYSPD)
	PUSH	AF
;
	LD	E,$00
;
	LD	A,(ENMYNO2)
	CP	BHOLE
	LD	A,$14
	JR	NZ,BHL100
;
	INC	E
	LD	A,$08
BHL100
	PUSH	DE
	CALL	PSERCH2L
	POP	DE
;
	LD	A,(WORK0)
	BIT	0,E
	JR	Z,BHL110
	CPL
	INC	A
BHL110
	LD	(PLYSPD),A
;
	LD	A,(WORK1)
	BIT	0,E
	JR	Z,BHL120
	CPL
	INC	A
BHL120
	LD	(PLXSPD),A
;
	PUSH	BC
;
	CALL	MVCALC
	CALL	PLBGCKL
;
	POP	BC
;
	POP	AF
	LD	(PLYSPD),A
	POP	AF
	LD	(PLXSPD),A
;
	XOR	A
	LD	(PLOSHI),A
;
	LD	A,(ENMYNO2)
	CP	BHOLE
	JP	NZ,BH1010
;
	LD	A,(PLJPFG)
	AND	A
	JR	NZ,BHM1002
;
	CALL	E2XCHK
	ADD	A,$04
	CP	$08
	JR	NC,BHM1002
;
	CALL	E2YCHK
	ADD	A,$04
	CP	$08
	JR	NC,BHM1002
;
	LD	A,(ENSVXL)
	LD	(PLXPSL),A
	LD	A,(ENDSYP)
	LD	(PLYPSL),A
;
	LD	A,PFOLE
	LD	(PLMODE),A	; go to fole down!
;
	CALL	DUSHCL
	LD	(KURDCT),A
;
	LD	A,$FF
	LD	(ANAFLG),A
;
	LD	A,$0C
	LD	(SOUND2),A	;(S)
;
	RET
BHM1002
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	AND	$03
	LD	E,A
	LD	D,B
	LD	HL,BHPLMK
	ADD	HL,DE
	LD	A,(HL)
	LD	(PLCMKI),A
BH1010
	CALL	BHENMV
;
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	RRA
	AND	$01
	CALL	ENPTST
;
	LD	A,(FRCNT)
	AND	$1F
	JR	NZ,BH10C0
;
	LD	A,$1F
	LD	(SOUND3),A	;(S)
;
BH10C0
	RET
;==================================================
BH2000
;;	CALL	LDTIM0
;;	LD	HL,ENTIM3
;;	ADD	HL,BC
;;	LD	A,(HL)
;;	AND	A
	CALL	LDTIM3
	JR	NZ,BH2090
;
	LD	(HL),$40
;
	CALL	STATINC
	LD	(HL),B
BH2090
	LD	A,$00
;;	LD	A,$02
	JP  	ENPTST
;RET
;==================================================
;==================================================
BHENMV
	LD	E,ENNO-1
	LD	D,B
BHE010
	PUSH	DE
;
	LD	A,E
	CP	C
	JP	Z,BHE050
;
	LD	HL,ENMODE
	ADD	HL,DE
	LD	A,(HL)
	AND	A
	JP	Z,BHE050
;
	CALL	ENPSSV
;
	PUSH	BC
		ld	c,e
		ld	b,d
;;10/31;	PUSH	DE
;;10/31;	POP	BC
;
	LD	A,(FRCNT)
	XOR	C
	AND	$01
	JR	NZ,BHE030
;
	LD	A,(PLXPSL)
	PUSH	AF
	LD	A,(PLYPSL)
	PUSH	AF
;
	LD	A,(ENSVXL)
	LD	(PLXPSL),A
	LD	A,(ENSVYL)
	LD	(PLYPSL),A
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	A,(HL)
	PUSH	AF
;
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	A,(HL)
	PUSH	AF
;
	LD	A,$10
	CALL	PSERCH2L
;
	LD	E,$00
;
	LD	A,(ENMYNO2)
	CP	BHOLE
	JR	NZ,EHL100
;
	INC	E
EHL100
	LD	A,(WORK0)
	BIT	0,E
	JR	NZ,EHL110
	CPL
	INC	A
EHL110
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),A
;
	LD	A,(WORK1)
	BIT	0,E
	JR	NZ,EHL120
	CPL
	INC	A
EHL120
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
;
	CALL	ENPSSV
;
	CALL	E2MVCL
	CALL	ENBGCKL
;
	LD	A,(ENSVXL)
	LD	HL,PLXPSL
	SUB	(HL)
	ADD	A,$02
	CP	$04
	JR	NC,BHE02A
;
	LD	A,(ENDSYP)
	LD	HL,PLYPSL
	SUB	(HL)
	ADD	A,$02
	CP	$04
	JR	NC,BHE02A
;
	CALL	E2CLER
BHE02A
	POP 	AF
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),A
;
	POP 	AF
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
;
	POP	AF
	LD	(PLYPSL),A
	POP	AF
	LD	(PLXPSL),A
BHE030
;	CALL	ENPSSV
;;
;	CALL	E2MVCL
;	CALL	ENBGCKL
;
	POP	BC
BHE050
	POP	DE
	DEC	E
	LD	A,E
	CP	$FF
	JP	NZ,BHE010
	RET
;==================================================
;==================================================
;==================================================
;==================================================
;==================================================
;==================================================
;==================================================
;==================================================
;==================================================
;==================================================
;==================================================
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%						         %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
TEKYUMV
	LD	A,(DNJNNO)
	CP	$14
	JR	C,TKY0090	;��H
;				; YES !
	LD	A,(DJSVBF)
	AND	%00010000
	JP	NZ,E2CLER
;
	LD	HL,ENJYUN
	ADD	HL,BC
	LD	(HL),$FF
;
	LD	HL,ENITMF
	ADD	HL,BC
	LD	(HL),KAKIN	;�͂���
	JR	TKY00A0
;
TKY0090
	LD	E,A
	LD	D,B
	LD	HL,WARPSV
	ADD	HL,DE
	LD	A,(HL)
	AND	%00000001
	JP	NZ,E2CLER
;
TKY00A0
	CALL	TEKYUCS
;
	CALL	ENPSSV
;
	CALL	E2STCK
	CALL	E2HNSB
;
	LD	HL,ENMOD3
	ADD	HL,BC
	LD	(HL),%00000000
	CALL	CREPKEL
;
	LD	A,(ENSTAT2)
	RST	0
	DW	TK1000
	DW	TK2000
	DW	TK3000
;=========================================
TK1000
	CALL	LDTIM0
	JR	NZ,TK1090
;
	LD	A,(FRCNT)
	XOR	C
	AND	$07
	JR	NZ,TK1010
;
	LD	A,$04
	CALL	PSERCHL
TK1010
	CALL	E2MVCL	
	CALL	ENBGCKL
;
	CALL	E2XCHK
;;	LD	(WORK0),A
	ADD	A,$30
	CP	$60
	JR	NC,TK1090
;
	CALL	E2YCHK
;;	LD	D,A
	ADD	A,$30
	CP	$60
	JR	NC,TK1090
;
;	LD	A,(WORK0)
;	ADD	A,$18
;	CP	$30
;	JR	C,TK1080
;;
;	LD	A,D
;	ADD	A,$18
;	CP	$30
;	JR	NC,TK1090
TK1080
	CALL	LDTIM0
	LD	(HL),$28
;;	LD	(HL),$50
;
		jp	STATINC
;;;;;;;;	CALL	STATINC
;
;	LD	HL,ENCONT
;	ADD	HL,BC
;	LD	A,(HL)
;	AND	%11111110
;	LD	(HL),A
TK10A0
	RET
;
TK1090
	LD	A,(FRCNT)
	AND	$01
	JR	NZ,TK10A0
;======================================
ECTINC
	LD	HL,ENCONT
	ADD	HL,BC
	INC	(HL)
;
	LD	A,(HL)
	RRA
	RRA
	RRA
	AND	$01
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;;
;;;;;;;;	RET
;=========================================
TKCHCK
	DB	$04,$0C,$00,$08
; - - - - - - - - - - - - - - - - - - - -
TK2000
	CALL	LDTIM0
	JR	NZ,TK2010
;
	CALL	E2XYCK
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	(HL),E
;
;;	LD	HL,ENMUKI
;;	ADD	HL,BC
;;	LD	E,(HL)
	LD	D,B
;
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	AND	$0F
	LD	HL,TKCHCK
	ADD	HL,DE
	CP	(HL)
	JR	NZ,TK2010
;
;
;;;;	LD	(HL),$20
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	(HL),$38
;
	LD	HL,ENWRK3
	ADD	HL,BC
	LD	(HL),B
;
	CALL	STATINC
TK2010
	JP  	ECTINC
;RET
;=========================================
TK3000
	CALL	TKCCLC
;
	LD	HL,ENWRK0
	ADD	HL,BC
	DEC	(HL)
	DEC	(HL)
;
	LD	A,(FRCNT)
	AND	$03
	JR	NZ,TK3008
;
	LD	HL,ENWRK3
	ADD	HL,BC
	INC	(HL)
TK3008
	LD	HL,ENWRK2
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,TK300A
;
	AND	%10000000
	JR	Z,TK3010
;
TK300A
	LD	(HL),B
;
	CALL	STATINC
	LD	(HL),B
;
	CALL	LDTIM0
	LD	(HL),$10
;
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	E,(HL)
	LD	D,B
	LD	HL,TKCHCK
	ADD	HL,DE
	LD	A,(HL)
	ADD	A,$08
	LD	HL,ENCONT
	ADD	HL,BC
	LD	(HL),A
TK3010
	RET
;============================================
TEKYUCD
	DB	$70,$02,$72,$02
	DB	$74,$02,$76,$02
	DB	$78,$02,$78,$22
;
;TKSPXD
;	DB	00,01,03,06
;	DB	10,14,17,19
;	DB	20,19,17,14
;	DB	10,06,03,01
TKSPYD
	DB	10,06,03,01
TKSPXD
	DB	00,01,03,06
	DB	10,14,17,19
	DB	20,19,17,14
	DB	10,06,03,01
;- - - - - - - - - - - - - - - - - - - -
TEKYUCS
	LD	DE,TEKYUCD
	CALL	EN2CST
;===== TAMA CS ====================
	LD	HL,ENWRK2
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,TKC080
;
	XOR	A
	LD	(WORK0),A	
;
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENWRK2
	ADD	HL,BC
	BIT	1,A
	JR	NZ,TKC070
;
	CP	$01
	LD	A,(HL)
	JR	NZ,TKC012
;
	LD	HL,WORK0
	INC	(HL)
;
	CPL
	INC	A
TKC012
	LD	HL,ENSVXL
	ADD	A,(HL)
	LD	(HL),A
;
	LD	HL,ENWRK3
	ADD	HL,BC
	LD	A,(WORK0)
	AND	A
	LD	A,(HL)
	JR	Z,TKC013
;
	CPL
;;;	INC	A
	AND	$0F
TKC013
	LD	HL,ENDSYP
	ADD	A,(HL)
	ADD	A,$F3
	LD	(HL),A
	JR	TKC090
;----------------------------------
TKC070
	CP	$02
	LD	A,(HL)
	JR	NZ,TKC078
;
	LD	HL,WORK0
	INC	(HL)
;
	CPL
	INC	A
TKC078
	LD	HL,ENDSYP
	ADD	A,(HL)
	LD	(HL),A
;
	LD	HL,ENWRK3
	ADD	HL,BC
	LD	A,(WORK0)
	AND	A
	LD	A,(HL)
	JR	NZ,TKC083
;
	CPL
;;;	INC	A
	AND	$0F
TKC083
	LD	HL,ENSVXL
	ADD	A,(HL)
	ADD	A,$F8
	LD	(HL),A
;
	JR	TKC090
;===========================================
TKC080
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	AND	$0F
	LD	E,A
	LD	D,$00
	LD	HL,TKSPYD
	ADD	HL,DE
	LD	A,(ENDSYP)
	ADD	A,(HL)
	ADD	A,$F0
	LD	(ENDSYP),A
;
	LD	HL,TKSPXD
	ADD	HL,DE
	LD	A,(ENSVXL)
	ADD	A,(HL)
	ADD	A,$F3
	LD	(ENSVXL),A
;
TKC090
	LD	A,$02
	LD	(ENCHPT2),A
	LD	DE,TEKYUCD
	CALL	EN2CST
;
;===== CHANE CS ====================
	LD	HL,ENWRK3
	ADD	HL,BC
	LD	A,(HL)
	AND	A
		ret	Z
;;;;;;;;	JP	Z,TKC0D0
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	AND	%10000000
	JR	NZ,TKC011	; Return ?
;				; no
;;	LD	HL,ENTIM1
;;	ADD	HL,BC
;;	LD	A,(HL)
;;	AND	A
	CALL	LDTIM1
	JR	NZ,TKC011
;
	LD	HL,ENMOD3
	ADD	HL,BC
	LD	(HL),%01000000
	CALL	CREPKEL
;
	CALL	TYBGCK
TKC011
	LD	A,(ENSVXL)
	ADD	A,$04
	LD	HL,ENXPSL
	ADD	HL,BC
	SUB	(HL)
	SRA	A
	SRA	A
	LD	(WORK0),A
	LD	(WORK2),A
;
	LD	A,(ENDSYP)
	LD	HL,ENYPSL
	ADD	HL,BC
	SUB	(HL)
;;	SUB	$00
	SRA	A
	SRA	A
	LD	(WORK1),A
	LD	(WORK3),A
;
	LD	A,(ENOMID)
	LD	E,A
	LD	D,$0
	LD	HL,ENOAM
	ADD	HL,DE
		ld	e,l
		ld	d,h
;;10/31;	PUSH	HL
;;10/31;	POP	DE
;
	CALL	ENPSSV
;
	LD	A,$3
TKC0A0
	LD	(WORK4),A
;
;;	LD	HL,FRCNT
;;	XOR	(HL)
;;	AND	$01
;;	JR	NZ,TKC0A1
;
	LD	A,(ENDSYP)
	LD	HL,WORK1
	ADD	A,(HL)
;;	SUB	$00
	LD	(DE),A
;;TKC0A1
	INC	DE
;
	LD	A,(ENSVXL)
	LD	HL,WORK0
	ADD	A,(HL)
;;	ADD	A,$0
	LD	(DE),A
	INC	DE
;
	LD	A,$24
	LD	(DE),A
	INC	DE
	LD	A,$00
	LD	(DE),A
	INC	DE
;
	LD	A,(WORK0)
	LD	HL,WORK2
	ADD	A,(HL)
	LD	(WORK0),A	
;
	LD	A,(WORK1)
	LD	HL,WORK3
	ADD	A,(HL)
	LD	(WORK1),A	
;
	LD	A,(WORK4)
	DEC	A
	JR	NZ,TKC0A0
;
	LD	A,$03
		jp	NXOMSBL
;;;;;;;;	CALL	NXOMSBL
;;;;;;;;;
;;;;;;;;TKC0D0
;;;;;;;;	RET
;========================================
TYBGCK
	LD	A,(ENSVXL)
;;	SUB	$8
;;	ADD	A,$8
	LD	(WORK4),A
	SWAP	A
	AND	$0F
	LD	E,A
	LD	A,(ENDSYP)
	SUB	$10
	ADD	A,$04
	LD	(WORK5),A
	AND	$F0
	OR	E
	LD	E,A
	LD	D,$0
	LD	HL,BGUNDT+$11
	LD	A,H
	ADD	HL,DE
	LD	H,A
	LD	A,(HL)
	LD	(UNITNO),A
	LD	E,A
;
	LD	A,(DJFLAG)
	LD	D,A
;
;	LD	HL,GRBGCR
;	ADD	HL,DE
;	LD	A,(HL)
	CALL	BGCRRD
	CP	$00
		ret	Z
;;;;;;;;	JR	Z,TBC090
	CP	$01
		ret	NZ
;;;;;;;;	JR	NZ,TBC090
;
	LD	HL,ENWRK0	; Chane speed turn !
	ADD	HL,BC
	LD	A,(HL)
	CPL
	INC	A
	LD	(HL),A
;
;;	LD	HL,ENTIM1
;;	ADD	HL,BC
	CALL	LDTIM1
	LD	(HL),$08
;
	LD	A,$07
	LD	(SOUND1),A	;(S)
;
E2FLST
	LD	A,(ENSVXL)
	LD	(WORK0),A
	LD	A,(ENDSYP)
	LD	(WORK1),A
;
	LD	A,FLSH
		jp	EXIDSH
;;;;;;;;	CALL	EXIDSH
;;;;;;;;TBC090	
;;;;;;;;	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%						         %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
RENO7CD
	DB	$70,$03,$70,$23 ;0
	DB	$78,$03,$7A,$03 ;1
	DB	$74,$03,$76,$03 ;2
	DB	$7C,$03,$7E,$03 ;3
	DB	$72,$03,$72,$23 ;4
	DB	$7E,$23,$7C,$23 ;5
	DB	$76,$23,$74,$23 ;6
	DB	$7A,$23,$78,$23 ;7
;-----------------------------------
SYSPDT
	DB	$10,$0E,$0C,$06
SXSPDT
	DB	$00,$FA,$F4,$F2
	DB	$F0,$F2,$F4,$FA
	DB	$00,$06,$0C,$0E
	DB	$10,$0E,$0C,$06
;==========================================
RENO7MV
	LD	A,(ENSTAT2)
	AND	A
	JP	NZ,SHBEMMV
;
	LD	DE,RENO7CD
	CALL	EN2CST
;
	CALL	E2STCK
	CALL	CRENPLL
	CALL	ENBGCKL
;
	CALL	LDTIM0
	JR	Z,RN7008
;
	CP	$10
	JR	NZ,RN7006
;
	LD	A,R7BEM
	CALL	ENIDSHL
	JR	C,RN7006
;
	LD	A,$08
	LD	(SOUND3),A	;(S)
;
	LD	A,(WORK0)
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	A,(WORK1)
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	A,(WORK2)
	LD	HL,ENMUKI
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENYSPD
	ADD	HL,DE
	LD	(HL),A
RN7006
	RET
;
RN7008
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	INC	A
	LD	(HL),A
	AND	$07
	JR	NZ,RN7010
;
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	A,(HL)
	INC	A
	AND	$0F
	LD	(HL),A
;
	SRL	A
;
	LD	HL,ENCHPT
	ADD	HL,BC
	LD	(HL),A
;
;- - - Serch beam set - - - -
	LD	A,RENO7
	CALL	ENIDSHL
	JR	C,RN7020
;
	LD	A,(WORK0)
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	A,(WORK1)
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,ENSTAT
	ADD	HL,DE
	LD	(HL),$01
;
	LD	HL,ENWRK0
	ADD	HL,DE
	LD	(HL),C
;
	LD	HL,ENMOD0
	ADD	HL,DE
	LD	(HL),%11000000
;
	PUSH	BC
;
	LD	A,(WORK2)
	LD	C,A
	LD	HL,SXSPDT
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,DE
	LD	(HL),A
	LD	HL,SYSPDT
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENYSPD
	ADD	HL,DE
	LD	(HL),A
;
	POP	BC
RN7010
RN7020
	RET
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%				 %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
SHBEMMV
;;	LD	DE,R7BEMCD
;;	CALL	EN1CST
;
	CALL	ENBGCK2L
	LD	HL,ENCBFG
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JP	NZ,E2CLER
;
	LD	A,(ENSVXL)
	LD	HL,PLXPSL
	SUB	(HL)
	ADD	A,$10
	CP	$20
	JR	NC,SHBM90
;
	LD	A,(ENSVYL)
	LD	HL,PLYPSL
	SUB	(HL)
	ADD	A,$10
	CP	$20
	JR	NC,SHBM90
;
	CALL	E2CLER
;
	LD	A,(PLFLSH)
	AND	A
	JR	NZ,SHBM90
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	E,(HL)
	LD	D,B
	LD	HL,ENTIM0
	ADD	HL,DE
	LD	A,(HL)
	AND	A
	JR	NZ,SHBM90
;
	LD	(HL),$20
;
	LD	HL,ENFLSH
	ADD	HL,DE
	LD	(HL),$10
;
	PUSH	BC
		ld	c,e
		ld	b,d
;;10/31;	PUSH	DE
;;10/31;	POP	BC
	LD	A,$40
	CALL	PSERCHL
	POP	BC
	RET
SHBM90
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENXPSL
	ADD	HL,BC
	ADD	A,(HL)
	LD	(HL),A
	CP	$9C
	JP	NC,E2CLER
;
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENYPSL
	ADD	HL,BC
	ADD	A,(HL)
	LD	(HL),A
	CP	$78
	RET	C
;;	JP	NC,E2CLER
E2CLER
	LD	HL,ENMODE
	ADD	HL,BC
	LD	(HL),B
	RET
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%						    %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
E2HNSD
;;	DB	$0,$0,$0,$0,$0
;;;	DB	$7,$3,$1,$0,$0
E2HNSB
	LD	HL,ENHNFG
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,E2HN90
;
	DEC	A
	LD	(HL),A
;
;;	PUSH	AF
	CALL	HNSMST
;;	POP	AF
;
;;	PUSH	AF
;;	SRL	A
;;	SRL	A
;;	LD	E,A
;;	LD	D,B ;$0
;;	LD	HL,E2HNSD
;;	ADD	HL,DE
;;	POP	AF
;;	AND	(HL)
;;	JR	NZ,E2HN30
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	A,(HL)
	PUSH	AF
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	A,(HL)
	PUSH	AF
;
	LD	HL,ENHNXS
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
;
	LD	HL,ENHNYS
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),A
;
	CALL	E2MVCL
;
	LD	HL,ENMOD3
	ADD	HL,BC
	LD	A,(HL)
	AND	%00100000
	JR	NZ,E2HN28
;
	CALL	ENBGCKL
E2HN28
	LD	HL,ENYSPD
	ADD	HL,BC
	POP	AF
	LD	(HL),A
;
	LD	HL,ENXSPD
	ADD	HL,BC
	POP	AF
	LD	(HL),A
E2HN30
	POP	AF
E2HN90
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%				 %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
E2MVCL	
;
	CALL	E2XCLC 		; X calc
;
E2YCLC
	PUSH	BC
	LD	A,C
	ADD	A,<ENNO
	LD	C,A
	
	CALL	E2XCLC		; Y calc
	POP	BC
	RET
;-----------------------------------------
E2XCLC
	LD	HL,ENXSPD
	ADD	HL,BC 
;
	LD	A,(HL)
	AND	A
	JR	Z,E2L090
;
	PUSH	AF
	SWAP	A
	AND	$F0
	LD	HL,ENXSDR
	ADD	HL,BC 
	ADD	A,(HL)
	LD	(HL),A
	RL	D
;
	LD	HL,ENXPSL
E2L00
	ADD	HL,BC 
;
	POP	AF
;
	LD	E,$0
	BIT	7,A
	JR	Z,E2C00
	LD	E,$F0
E2C00
	SWAP	A
	AND	$0F
	OR	E
	RR	D
	ADC	A,(HL)
	LD	(HL),A
E2L090
	RET
;====================================================
E2ZCLC
	LD	HL,ENZSPD
	ADD	HL,BC 
;
	LD	A,(HL)
	AND	A
	JR	Z,E2L090
;
	PUSH	AF
	SWAP	A
	AND	$F0
	LD	HL,ENZSDR
	ADD	HL,BC 
	ADD	A,(HL)
	LD	(HL),A
	RL	D
;
	LD	HL,ENZPSL
	JR	E2L00
;====================================================
TKCCLC
	LD	HL,ENWRK0
	ADD	HL,BC 
;
	LD	A,(HL)
	PUSH	AF
	SWAP	A
	AND	$F0
	LD	HL,ENWRK1
	ADD	HL,BC 
	ADD	A,(HL)
	LD	(HL),A
	RL	D
;
	LD	HL,ENWRK2
	JP	E2L00
;==============================
;====================================
E2XCHK
	LD	E,$0
;
	LD	A,(PLXPSL)
	LD	HL,ENXPSL
	ADD	HL,BC
	SUB	(HL)
	BIT	7,A
	JR	Z,E2X010
;;	JR	NC,E2X010
	INC	E
E2X010
	LD	D,A
	RET
;====================================
E2YCHK
	LD	E,$2
;
	LD	A,(PLYPSL)
	LD	HL,ENYPSL
	ADD	HL,BC
	SUB	(HL)
	BIT	7,A
	JR	NZ,E2Y010
;;	JR	C,E2Y010
	INC	E
E2Y010
	LD	D,A
	RET
;====================================
E2XYCK
	CALL	E2XCHK
	LD	A,E
	LD	(WORK0),A
;
	LD	A,D
	BIT	7,A
	JR	Z,E22010
	CPL
	INC	A
E22010
	PUSH	AF
;
	CALL	E2YCHK
	LD	A,E
	LD	(WORK1),A
;
	LD	A,D
	BIT	7,A
	JR	Z,E2Y020
	CPL
	INC	A
E2Y020
	POP	DE
	CP	D
	JR	NC,E2Y030
;
	LD	A,(WORK0)
	JR	E2Y050
E2Y030
	LD	A,(WORK1)
E2Y050
	LD	E,A
	RET
;==============================
;==============================
;==============================
;==============================
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�N���[���Q�[��						%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
UFOCHMV
	LD	A,(MARINFG)
	PUSH	AF
;
	LD	A,(DJSVBF)
	AND	%00010000
	JR	Z,UFMS10
;
	XOR	A
	LD	(MARINFG),A
UFMS10
	CALL	UFOCHMS
;
	POP	AF
	LD	(MARINFG),A
	RET
;---------------------------------------
UFOCHMS
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JP	NZ,UFITEM	; ITEM !!
;
	LD	A,C
	LD	(BGMCNT),A
;
	LD	A,$02
	LD	(SHOPFG),A
;
	CALL	LDTIM1
	DEC	A
	JR	NZ,UFOCH09	;�͂ݐ��������ԍ��I
;
	LD	A,$19
	LD	(SOUND1),A	;(S)
UFOCH09
	LD	A,(ENCHPT2)
	INC	A
	JR	Z,UFFF00
;
	LD	A,(FRCNT)
	AND	%00011111
	JR	NZ,UF0000
;
	CALL	E2XYCK
;;	LD	A,E
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	(HL),E ;A
UF0000
	CALL	M2PTST
;
	LD	DE,UFOCHCD
	CALL	EN2CST
;
UFFF00
	CALL	KRENCS
;
	CALL	ENPSSV
;
	CALL	M2CROS
;
	CALL	ITCROS
;
	LD	A,(ENSTAT2)
	CP	$03
	JR	C,UFCK001
;
	LD	A,(MARINFG)
	AND	A
	JR	Z,UFCK001
;
	LD	A,$02
	LD	(PLSTOP),A
	LD	(ITEMNOT),A
UFCK001
		ld	a,(GMMODE)
		cp	GPLAY
		ret	nz
;
		ld	a,(SBHR)
		cp	004
		ret	nz
;
	LD	A,(ENSTAT2)
	RST	0
	DW	UF1000 ; Initial ITEM set
	DW	UF2000 ; Main sub
	DW	UF3000 ; Yes No check 
	DW	UF4000 ; Right move check
	DW	UF5000 ; Right move
	DW	UF6000 ; Left move check
	DW	UF7000 ; Left move
	DW	UF8000 ; Caching
	DW	UF9000 ;
	DW	UFA000 ;
	DW	UFB000 ;
	DW	UFC000 ;
	DW	UFD000 ;
;- - - - - - - - - - - - - - - - - -
UF2	EQU	$1
UF3	EQU	$2
UF4	EQU	$3
UF5	EQU	$4
UF6	EQU	$5
;==================================
;	DB	$74,$00 ;0 ?
;	DB	$9E,$10 ;1 YOSHI
;	DB	$A0,$10 ;2 KBIN
;	DB	$8E,$10 ;3 TUBO
;	DB	$A6,$10 ;4 RUPY
;	DB	$94,$10 ;5 FUE
;;
;	DB	$40,$00,$42,$00 ;6 NYAMA ;YA
;	DB	$50,$00,$52,$00 ;7 CHUNLI ;HART
;	DB	$60,$00,$62,$00 ;8 �Č�
;- - - - - - - - - - - - - - - - - - -
UFIXDT
	DB	$38,$58,$78
	DB	    $58
	DB	$40,$70
UFIYDT
	DB	$2E,$2E,$2E
	DB	    $3E   
	DB	$4E,$4E
UFIMDT
	DB	$00,$00,$00
	DB	    $04  
	DB	$01,$02
UFICHP
	DB	$05,$02,$02
	DB	    $00
	DB	$03,$04
UFIMD0
	DB	$81,$81,$81
	DB	    $82
	DB	$81,$81
;
UNO	EQU	$9
;
UF1000_COLDT
	DW	$47ff,$5231,$28c5,$0000
;
;- - - - - - - - - - - - - - - - - - - -
UF1000	; ITEM SET 
	LD	E,$06  ;9
	LD	D,$00
UF1010
	PUSH	DE
;
	LD	A,UFOCH
	LD	E,ENNO-2
	CALL	ENIDSH2L
;
	LD	HL,ENWRK0
	ADD	HL,DE
	LD	(HL),$01
;
	LD	HL,UFIXDT-UNO
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,UFIYDT-UNO
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,UFICHP-UNO
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENCHPT
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,UFIMD0-UNO
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENMOD0
	ADD	HL,DE
	LD	(HL),A ;%10000001
;
	LD	HL,UFIMDT-UNO
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENMUKI
	ADD	HL,DE
	LD	(HL),A
;
	PUSH	BC
;
		ld	c,e
		ld	b,d
;;10/31;	PUSH	DE
;;10/31;	POP	BC
	CALL	UFISDS2
;
	POP	BC
;
	POP	DE
	DEC	E
	JR	NZ,UF1010
;-- Kreen pos initial --
	XOR	A
	LD	(KRENAD),A
;
	LD	A,$10
	LD	(BUTNC1),A
	LD	(BUTNC2),A
;
	LD	A,$16
	LD	(KRENYP),A
	LD	A,$18
	LD	(KRENXP),A
;
	LD	A,$00
	LD	(KRENC1),A
	LD	A,$04
	LD	(KRENC2),A
;
	CALL	STATINC
;
	LD	A,(MEGAF)
	LD	HL,ENWRK4
	ADD	HL,BC
	LD	(HL),A
;
		LD	HL,OBCGWK+(($005*$004)*$002)
		LD	DE,UF1000_COLDT
UF1500
		LD	A,(DE)
		LD	(HLI),A
		INC	DE
		LD	A,L
		AND	$007
		JR	NZ,UF1500
		LD	A,OBJCOL_BITFG
		LD	(CGDMAF),A
;
	RET
;==================================
UF2000
	LD	A,(ITEMNOT)
	AND	A
	RET	NZ
;
	LD	A,(MARINFG)
	AND	A
	JR	Z,UF2002
;
	LD	A,(PLXPSL)
	CP	$6C
	JR	C,UF2002
;
	LD	HL,DJRMSV+$1A0
	SET	4,(HL)
;
	LD	A,$6B
	LD	(PLXPSL),A
	JR	UF2003
;
UF2002
	CALL	NYMSCK
		ret	NC
;;;;;;;;	JR	NC,UF2010
;
UF2003
	XOR	A
	LD	(PLWKCT),A
	LD	(PLXSPD),A
;
	LD	E,$06
	LD	HL,ENWRK4
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,UF20010
;
	DEC	E
UF20010
	LD	HL,ENWRK3
	ADD	HL,BC
	LD	A,(HL)
	CP	E
	JR	C,UF2008	; All cached ?
;				; yes !
	LD	A,$40
		jp	MSGCHK
;;;;;;;;	CALL	MSGCHK
;;;;;;;;	RET
UF2008
	LD	A,(MARINFG)
	AND	A
	JR	Z,UF30A2
;
	LD	A,$F7
	JR	UF20A8	
;
UF30A2
	LD	HL,ENWRK2
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	LD	A,$3B
	JR	Z,UF20A8
	LD	A,$3E
UF20A8
	CALL	MSGCHK
;
		jp	STATINC
;;;;;;;;	CALL	STATINC
;;;;;;;;UF2010
;;;;;;;;	RET
;==================================
UF3000
	LD	A,$02
	LD	(PLSTOP),A
;
	LD	A,(MSGEFG)
	AND	A
	JR	NZ,UF3010
;
	LD	A,(MSGENO)
	CP	$F8
	JR	Z,UF3001
;
	LD	A,(MSANSR)
	CP	$01
	JR	NC,UF3090
;
UF3001
	LD	A,(COINC2)
	SUB	$10
	LD	A,(COINC1)
	SBC	A,$0
	JR	NC,UF30A0	; Not Rupy ?
;				; yes !
	LD	A,$34
	CALL	MSGCHK
	JR	UFAGAIN
;
UF3090
	LD	A,(MARINFG)
	AND	A
	JR	Z,UFAGAIN
;				; yes !
	LD	A,$F8
	JP  	MSGCHK
UFAGAIN
	LD	HL,ENSTAT
	ADD	HL,BC
	LD	(HL),UF2
UF3010
	RET
;- - - - - - - - - - - - -
UF30A0
	LD	A,(MARINFG)
	AND	A
	JR	Z,UF3002
;
	LD	(MARINOF),A
UF3002
	LD	HL,ENWRK2
	ADD	HL,BC
	LD	A,(HL)
	LD	(HL),$1
;
	AND	A
	LD	A,$3C
	JR	Z,UF30A8
	LD	A,$3F
UF30A8
	CALL	MSGCHK
;
	LD	A,$0A
	LD	(COIND2),A
;
		jp	STATINC
;;;;;;;;	CALL	STATINC
;;;;;;;;	RET
;==================================
UF4000	; RIGHT MOVE CHECK
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	RRA
	AND	$01
	LD	(KRENC1),A
;
	LD	A,$10
	LD	(BUTNC2),A
;
		LD	A,(CGBFLG)
		AND	A
		JR	Z,UF4000_800
		LD	A,(FRCNT)
		AND	%00001000
		SRL	A
		SRL	A
		SRL	A
		ADD	A,$003
		JR	UF4000_900
UF4000_800
		LD	A,(FRCNT)
		AND	%00010000
UF4000_900
		LD	(BUTNC1),A
;
	LD	A,(MARINFG)
	AND	A
	JR	Z,UF4008
;
	CALL	LDTIM3
	JR	Z,UF4002
;
	DEC	A
		ret	NZ
;;;;;;;;	JR	NZ,UF4001
;
		jp	UFSNXT
;;;;;;;;	CALL	UFSNXT
;;;;;;;;UF4001
;;;;;;;;	RET
;
UF4002
	CALL	E2STCK
;
	PUSH	BC
;
	LD	A,(MAINDX)
	LD	C,A
;
	LD	A,(FRCNT)
	AND	$10
	LD	A,$04
	JR	Z,UF4003
;
	INC	A
UF4003
	CALL	ENPTST
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),$F8
	CALL	E2XCLC
;
	LD	HL,ENXPSL
	ADD	HL,BC
	POP	BC
	LD	A,(HL)
	CP	$28
		ret	NZ
;;;;;;;;	JR	NZ,UF4005
;
	CALL	LDTIM3
	LD	(HL),$18
;
	LD	A,(MAINDX)
	LD	E,A
	LD	D,B
	LD	HL,ENCHPT
	ADD	HL,DE
	LD	(HL),$02
;
	LD	E,$01
		jp	UFPLPT
;;;;;;;;	CALL	UFPLPT
;;;;;;;;UF4005
;;;;;;;;	RET
;
UF4008
	LD	A,(KEYA1)
	AND	%00100000
	JR	Z,UF4020
;
	LD	A,(PLXPSL)
	CP	$20
	JR	C,UF4020
	CP	$30
	JR	NC,UF4020
;
UFSNXT
	CALL	STATINC
;
UFOSDS
	LD	A,$20
	LD	(SOUND3),A	;(S)
UF4020
	RET
;==================================
UF5000  ; RIGHT  MOVE
	CALL	KRENFL
;
	LD	A,$10
	LD	(BUTNC2),A
;
		LD	A,(CGBFLG)
		AND	A
		JR	Z,UF5000_800
		LD	A,(FRCNT)
		AND	%00001000
		SRL	A
		SRL	A
		SRL	A
		ADD	A,$003
		JR	UF5000_900
UF5000_800
		LD	A,(FRCNT)
		AND	%00010000
UF5000_900
		LD	(BUTNC1),A
;
	LD	A,(MARINFG)
	AND	A
	JR	Z,UF5010
;
	LD	E,$02
	CALL	UFPLPT
	JR	UF5011
;
UF5010
	LD	A,(KEYA1)
	AND	%00100000
	JR	Z,UF5058
;
UF5011
	LD	A,(FRCNT)
	AND	$03
	JR	NZ,UF5060
;
	LD	A,(KRENXP)
	INC	A
	LD	(KRENXP),A
	CP	$88
	JR	C,UF5060
;
UF5058
	CALL	STATINC
;
	LD	A,(MARINFG)
	AND	A
	JR	Z,UFOSDOF
;
	CALL	LDTIM3
	LD	(HL),$10
UFOSDOF
	LD	A,$21
	LD	(SOUND3),A	;(S)
UF5060
	RET
;---------------------------
KRENFL
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	RRA
	AND	$01
	LD	(KRENC1),A
;
	LD	A,$01
	LD	(PLSTOP),A
	LD	A,$02
	LD	(PLCMKI),A
	RET
;==================================
UF6000	; LEFT MOVE CHECK
	CALL	KRENFL
;
	LD	A,$10
	LD	(BUTNC1),A
;
		LD	A,(CGBFLG)
		AND	A
		JR	Z,UF6000_800
		LD	A,(FRCNT)
		AND	%00001000
		SRL	A
		SRL	A
		SRL	A
		ADD	A,$003
		JR	UF6000_900
UF6000_800
		LD	A,(FRCNT)
		AND	%00010000
UF6000_900
		LD	(BUTNC2),A
;
	CALL	LDTIM3
	RET	NZ
;
	LD	A,(MARINFG)
	AND	A
	JR	NZ,UF6010
;
	LD	A,(KEYA1)
	AND	%00010000
		ret	Z
;;;;;;;;	JR	Z,UF6020
UF6010
	CALL	UFOSDS	;(S)
;
		jp	STATINC
;;;;;;;;	CALL	STATINC
;;;;;;;;UF6020
;;;;;;;;	RET
;==================================
UF7000  ;LEFT MOVE
	CALL	KRENFL
;
	LD	A,$10
	LD	(BUTNC1),A
;
		LD	A,(CGBFLG)
		AND	A
		JR	Z,UF7000_800
		LD	A,(FRCNT)
		AND	%00001000
		SRL	A
		SRL	A
		SRL	A
		ADD	A,$003
		JR	UF7000_900
UF7000_800
		LD	A,(FRCNT)
		AND	%00010000
UF7000_900
		LD	(BUTNC2),A
;
	LD	A,(MARINFG)
	AND	A
	JR	Z,UF7010
;
	JR	UF7020
UF7010
	LD	A,(KEYA1)
	AND	%00010000
	JR	Z,UF7058
;
UF7020
	LD	A,(FRCNT)
	AND	$03
		ret	NZ
;;;;;;;;	JR	NZ,UF7078
;
	LD	A,(KRENYP)
	INC	A
	LD	(KRENYP),A
	CP	$55 ;$48
		ret	C
;;;;;;;;	JR	C,UF7078
;
UF7058
	CALL	STATINC
;
	CALL	UFOSDOF ;(S)
;
	CALL	LDTIM0
	LD	(HL),$60
;
	LD	E,$00
		jp	UFPLPT
;;;;;;;;	CALL	UFPLPT
;;;;;;;;UF7078
;;;;;;;;	RET
;==================================
UF8000   ;CHANCE
	LD	A,(FRCNT)
	RRA
	RRA
;;	RRA
	RRA
	AND	$01
	LD	(KRENC1),A
;
	LD	A,$10
	LD	(BUTNC1),A
	LD	(BUTNC2),A
;
	CALL	LDTIM0
	CP	$30
	JR	NC,UF8010
;
	LD	HL,KRENC2
	LD	(HL),$02
UF8010
	AND	A
	JR	NZ,UF8020
;
	LD	A,(FRCNT)
	AND	$03
	JR	NZ,UF8020
;
	LD	A,(KRENAD)
	INC	A
	LD	(KRENAD),A
	CP	$0F  ;10
	JR	NZ,UF8020
;
	CALL	LDTIM0
	LD	(HL),$FF
;
	CALL	STATINC
;
	LD	E,$00
UFPLPT
	LD	A,(MARINFG)
	AND	A
	RET	Z
;
	LD	A,E
	LD	(PLCMKI),A
;
	PUSH	BC
	CALL	PLPTSTL
	POP	BC
UF8020
	RET
;==================================
UF9000   ; TSUKAMI
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	AND	$01
	LD	(KRENC1),A
;
	CALL	LDTIM0
	CP	$C8
	JR	NZ,UF9008
;
	LD	HL,KRENAD
	LD	(HL),$10
UF9008
	CP	$A0
	JR	NZ,UF9010
;
	LD	HL,KRENC2
	LD	(HL),$03
UF9010
	CP	$50
	JR	NZ,UF9020
;
	LD	HL,KRENC2
	LD	(HL),$04
;
		jp	UFCACK
;;;;;;;;	CALL	UFCACK
;;;;;;;;	RET
;
UF9020
	AND	A
		ret	NZ
;;;;;;;;	JR	NZ,UF9030
;
	CALL	STATINC
;
		jp	UFOSDS	;(S)
;;;;;;;;	CALL	UFOSDS	;(S)
;;;;;;;;UF9030
;;;;;;;;	RET
;==================================
UFA000	; ARM RETURN
	LD	A,(FRCNT)
	RRA
	RRA
;;	RRA
	RRA
	AND	$01
	LD	(KRENC1),A
;
	LD	A,(FRCNT)
	AND	$03
		ret	NZ
;;;;;;;;	JR	NZ,UFA020
;
	LD	A,(KRENAD)
	DEC	A
	LD	(KRENAD),A
		ret	NZ
;;;;;;;;	JR	NZ,UFA020
;
		jp	STATINC
;;;;;;;;	CALL	STATINC
;;;;;;;;UFA020
;;;;;;;;	RET
;==================================
UFB000  ; KREN RETURN
	LD	A,(FRCNT)
	RRA
	RRA
;;	RRA
	RRA
	AND	$01
	LD	(KRENC1),A
;
	LD	A,(PLXPSL)
	PUSH	AF
	LD	A,(PLYPSL)
	PUSH	AF
;
	LD	A,$16
	LD	(PLYPSL),A
	LD	A,$18
	LD	(PLXPSL),A
;
	LD	A,(KRENXP)
	LD	(ENXPSL+1),A
	LD	A,(KRENYP)
	LD	(ENYPSL+1),A
;
	PUSH	BC
	LD	C,$01
	LD	A,$04
	CALL	PSERCHL
	CALL	E2MVCL
	LD	A,(ENXPSL+1)
	LD	(KRENXP),A
	LD	A,(ENYPSL+1)
	LD	(KRENYP),A
	POP	BC
;
	POP	AF
	LD	(PLYPSL),A
	POP	AF
	LD	(PLXPSL),A
;
	LD	A,(KRENXP)
	CP	$18
		ret	NZ
;;;;;;;;	JR	NZ,UFB070
	LD	A,(KRENYP)
	CP	$16
		ret	NZ
;;;;;;;;	JR	NZ,UFB070
;
	CALL	LDTIM0
	LD	(HL),$C0
;
	CALL	STATINC
;
		jp	UFOSDOF	;(S)
;;;;;;;;	CALL	UFOSDOF	;(S)
;;;;;;;;UFB070
;;;;;;;;	RET
;
;==================================
UFC000
	LD	A,(FRCNT)
	RRA
	RRA
;;	RRA
	RRA
	AND	$01
	LD	(KRENC1),A
;
	CALL	LDTIM0
	CP	$60
	JR	NZ,UFC010
;
	LD	HL,KRENC2
	LD	(HL),$2
;
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,UFC008
;
	LD	(HL),$00
;
	DEC	A
	LD	E,A
	LD	D,B
	LD	HL,ENSTAT
	ADD	HL,DE
	LD	(HL),$02
;
	LD	A,(MARINFG)
	AND	A
	JR	Z,UFC008
;
	LD	HL,ENCHPT
	ADD	HL,DE
	LD	(HL),$07
UFC008
	RET
UFC010
	AND	A
		ret	NZ
;;;;;;;;	JR	NZ,UFC020
;
	LD	HL,KRENC2
	LD	(HL),$4
;
		jp	STATINC
;;;;;;;;	CALL	STATINC
;;;;;;;;UFC020
;;;;;;;;	RET
;==================================
UFD000
		jp	UFAGAIN
;;;;;;;;	CALL	UFAGAIN
;;;;;;;;	RET
;==================================
;=				  =
;==================================
UFCACK
	LD	A,(MARINFG)
	AND	A
	JR	Z,UCK018	;SHR
;
	LD	A,$FF
	CALL	ENPTST
;
	LD	A,UFOCH
	CALL	ENIDSHL
;
	LD	A,(KRENXP)
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	A,(KRENYP)
	ADD	A,$18
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,ENCHPT
	ADD	HL,DE
	LD	(HL),$06
;
	LD	HL,ENWRK0
	ADD	HL,DE
	INC	(HL)
UCK018
	LD	E,ENNO-1
	LD	D,B
UCK010
	LD	HL,ENMODE
	ADD	HL,DE
	LD	A,(HL)
	AND	A
	JR	Z,UCK030
;
	LD	HL,ENSTAT
	ADD	HL,DE
	LD	A,(HL)
	AND	A
	JR	NZ,UCK030
;
	LD	HL,ENMYNO
	ADD	HL,DE
	LD	A,(HL)
	CP	UFOCH
	JR	NZ,UCK030
;
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	A,(KRENXP)
	SUB	(HL)
	ADD	A,$04
	CP	$08
	JR	NC,UCK030
;
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	A,(KRENYP)
	ADD	A,$18
	SUB	(HL)
	ADD	A,$06
	CP	$0C
	JR	NC,UCK030
;
	LD	HL,ENSTAT
	ADD	HL,DE
	LD	(HL),$01
;
	LD	A,E
	INC	A
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	(HL),A
;
;;	LD	A,$19
;;	LD	(SOUND1),A	;(S)
;
	CALL	LDTIM1
	LD	(HL),$10	;SE set ���ԍ��I
;
	LD	HL,ENWRK3	; Cach count !!
	INC	(HL)
	RET
UCK030
	DEC	E
	LD	A,E
	CP	$FF  ;06
	JR	NZ,UCK010
;
	RET
;==================================
;=				  =
;==================================
ITCROS
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,ITCR90
;
	DEC	A
	LD	E,A
	LD	D,B
	LD	A,(KRENXP)
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	A,(KRENYP)
	ADD	A,$18
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	A,$10
	LD	HL,KRENAD
	SUB	(HL)
	ADD	A,$FE
	LD	HL,ENZPSL
	ADD	HL,DE
	LD	(HL),A
ITCR90
	RET
;==================================
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	KREEN 			       %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
KRENCD
	DB	$76,$03,$78,$03	;0 ;�{��
	DB	$78,$23,$76,$23	;1
;
	DB	$70,$03,$70,$23	;2 ;�A�[��
	DB	$72,$03,$70,$23	;3
	DB	$72,$03,$72,$23	;4
;
	DB	$7E,$00,$7E,$20 ;5 ;�|�[��
KRSWCD
	DB	$26,$00	;�e
	DB	$26,$00	
;- - - - - - - - - - - - - - - - - - - -
KRENCS
	LD	A,(KRENXP)
	LD	(ENSVXL),A
	LD	A,(KRENYP)
	LD	HL,KRENAD
	ADD	A,(HL)
	ADD	A,$08
	LD	(ENDSYP),A
;
	LD	A,(KRENC2)
	LD	(ENCHPT2),A
	LD	DE,KRENCD
	CALL	EN2CST
;
	LD	A,(KRENXP)
	LD	(ENSVXL),A
	LD	A,(KRENYP)
	LD	(ENDSYP),A
;
	LD	A,(KRENC1)
	LD	(ENCHPT2),A
	LD	DE,KRENCD
	CALL	EN2CST
;
	LD	A,(KRENAD)
	CP	$08
	JR	C,KRC010
;
	LD	A,(KRENXP)
	LD	(ENSVXL),A
	LD	A,(KRENYP)
	ADD	A,$10
	LD	(ENDSYP),A
;
	LD	A,$05
	LD	(ENCHPT2),A
	LD	DE,KRENCD
	CALL	EN2CST
KRC010
;- - - -�e- - - 
	LD	A,(FRCNT)
	AND	$01
	JR	NZ,KRC020
;
	LD	A,(KRENXP)
	LD	(ENSVXL),A
	LD	A,(KRENYP)
	ADD	A,$20
	LD	(ENDSYP),A
;
	XOR	A
	LD	(ENCHPT2),A
	LD	DE,KRSWCD
	LD	A,(ENOMID)
	PUSH	AF
	CALL	EN2CST
	POP	AF
	LD	E,A
	LD	D,B
	LD	HL,ENOAM+1
	ADD	HL,DE
	INC	(HL)
	INC	HL
	INC	HL
	INC	HL
	INC	HL
	DEC	(HL)
;
KRC020
;- - - �{�^��- - - - 
	LD	HL,OAM+$20
;
	LD	A,$50
	LD	(HLI),A
	LD	A,$28
	LD	(HLI),A
	LD	A,$7A
	LD	(HLI),A
		LD	A,(CGBFLG)
		AND	A
		JR	Z,KRC020_200
		LD	A,$003
		JR	KRC020_400
KRC020_200
		LD	A,(BUTNC1)
KRC020_400
		LD	(HLI),A
;
	LD	A,$60
	LD	(HLI),A
	LD	A,$28
	LD	(HLI),A
	LD	A,$3E
	LD	(HLI),A
	LD	A,(BUTNC1)
	LD	(HLI),A
;
	LD	A,$50
	LD	(HLI),A
	LD	A,$30
	LD	(HLI),A
	LD	A,$7C
	LD	(HLI),A
		LD	A,(CGBFLG)
		AND	A
		JR	Z,KRC020_600
		LD	A,$003
		JR	KRC020_800
KRC020_600
		LD	A,(BUTNC2)
KRC020_800
		LD	(HLI),A
;
	LD	A,$60
	LD	(HLI),A
	LD	A,$30
	LD	(HLI),A
	LD	A,$3E
	LD	(HLI),A
	LD	A,(BUTNC2)
	LD	(HLI),A
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	ITEM 			       %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
UFITEMCD
	DB	$FF,$FF ;0 YOSHI
	DB	$9E,$10 ;1 ���b�L�[�Ȗ؂̂�
	DB	$A6,$14 ;2 30 rupys
	DB	$8E,$16 ;3 Magic powder
	DB	$86,$15 ;4 TATE Lv-1
	DB	$A8,$14 ;5 HEART max
;
UFITEMCD2
	DB	$9A,$17,$9C,$17	;0 YOSHI
	DB	$6C,$03,$6E,$03	;1 �Č�
	DB	$6E,$23,$6C,$23	;2 �Č�
;- - - - - - - - - - - - - - - - - - -
UFITEM
	LD	A,(ENCHPT2)
	CP	$06
	JR	C,UFI0011
;
	LD	DE,UFITEMCD2+$04-24
	CP	$07
	JR	Z,UFSBHR
;
	LD	A,(FRCNT)
	AND	%00010000
	JR	NZ,UFSBHR
;
	LD	DE,UFITEMCD2+$08-24
UFSBHR
	JR	UF2CST
;
UFI0011
	CP	$03
	JR	NZ,UPI010	;���I
;
	LD	A,(KINOKFG)
	AND	A
	JP	NZ,E2CLER
	JR	UFI0F0
UPI010
	CP	$00
	JR	NZ,UFI0F0	;���b�V�[�l�`�H
;				;YES !
	LD	A,(MEGAF)
	AND	A
	JP	NZ,E2CLER	;���łɎ�����H
;
	LD	DE,UFITEMCD2
UF2CST
	CALL	EN2CST
	JR	UFI001
;
UFI0F0
;	LD	A,(ENCHPT2)
;	SUB	$06
;	JR	C,UFI000
;;
;	LD	(ENCHPT2),A
;;
;	LD	DE,UFITEMCD2
;	CALL	EN2CST
;	JR	UFI001
;UFI000
	LD	DE,UFITEMCD
	CALL	EN1CST
;
UFI001
	CALL	E2STCK
;
	LD	A,(ENSTAT2)
	RST	0
	DW	UIMOVE
	DW	UICACH
	DW	UIDROP
	DW	UIEND
	DW	UISBHR
	DW	UISBHR1
;=====================================
UIMOVE
	CALL	E2MVCL	
;
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	A,(HL)
	RST	0
	DW	UILEFT
	DW	UIDOWN
	DW	UIRIGHT
	DW	UIUP
	DW	UIRET
;
;==================================
UILEFT
	LD	A,(ENSVXL)
	CP	$3A
	JP	C,UFISDST
;
UIRET
	RET
;==================================
UIDOWN
	LD	A,(ENDSYP)
	CP	$50-2
	JP	NC,UFISDST
;
	RET
;==================================
UIRIGHT
	LD	A,(ENSVXL)
	CP	$78
	JP	NC,UFISDST
;
	RET
;==================================
UIUP
	LD	A,(ENDSYP)
	CP	$30-2
	JP	C,UFISDST
;
	RET
;==================================
UICACH
	CALL	E2XYCK
	LD	A,E
	XOR	$01
	LD	E,A
		jp	UFPLPT
;;;;;;;;	CALL	UFPLPT
;;;;;;;;	RET
;==================================
UIDROP
	LD	A,(MARINFG)
	AND	A
	JR	Z,UIDR10
;
	LD	A,$02
	LD	(PLSTOP),A
UIDR10
	CALL	E2ZCLC
	LD	HL,ENZSPD
	ADD	HL,BC
	DEC	(HL)
	DEC	(HL)
;
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	AND	%10000000
	JR	Z,UID019
;
	XOR	A
	LD	(HL),A
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	A,(HL)
	SRA	A
	CPL
	LD	(HL),A
	CP	$07
	JR	NC,UID018
;
;;	XOR	A
	LD	(HL),B
	JR	UID019
UID018
	LD	A,$09
	LD	(SOUND1),A	;(S)
UID019
	LD	A,(FRCNT)
	AND	$03
	JR	NZ,UID01A
;
	LD	HL,ENYPSL
	ADD	HL,BC	
	LD	A,(HL)
	CP	$56
	JR	Z,UID020
;
	INC	A
	LD	(HL),A
UID01A
	RET
;--------------------------------------
UID020
	ADD	A,$0A
	LD	(HL),A
;
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	(HL),$0A
;
		jp	STATINC
;;;;;;;;	CALL	STATINC
;;;;;;;;	RET
;==================================
UFITMSD
	DB	$44,$43,$42,$41,$3D,$2A
;
UIEND
	LD	A,(MARINFG)
	AND	A
	JR	Z,UIED10
;
	LD	A,$02
	LD	(PLSTOP),A
UIED10
	CALL	E2ZCLC
	LD	HL,ENZSPD
	ADD	HL,BC
	DEC	(HL)
	DEC	(HL)
;
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	AND	%10000000
	JP	Z,UIE010
;
	XOR	A
	LD	(HL),A
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	A,(HL)
	SRA	A
	CPL
	LD	(HL),A
	CP	$07
	JR	NC,UIE018
;
	XOR	A
	LD	(HL),A
UIE018
	LD	A,(ENCHPT2)
	CP	$06
	JR	C,UFE019	;SHR
;
	LD	A,$F9
	CALL	MSGCHK	;
;
	JP  	STATINC
UFE019
	LD	A,(ENSVXL)
	LD	HL,PLXPSL
	SUB	(HL)
	ADD	A,$07
	CP	$0E
	RET	NC
;;	JR	NC,UIE010
;
	LD	A,(ENDSYP)
	LD	HL,PLYPSL
	SUB	(HL)
	ADD	A,$05
	CP	$0A
	RET	NC
;;	JR	NC,UIE010
;
	LD	A,(BGMCNT)
	LD	E,A
	LD	D,B
	LD	HL,ENTIM4
	ADD	HL,DE
	LD	A,(HL)
	AND	A
	RET	NZ
;
	LD	(HL),$18	;�v���e�N�g�I
;
	LD	A,(ENCHPT2)
	CP	$00
	JR	NZ,UIE0130	;���b�V�[�H
;				;YES !
	LD	A,$01
	LD	(MEGAF),A	;
;
	CALL	YOSSISET	;�����グ�p�A�C�e���Z�b�g�I
	JP	E2CLER	
UIE0130
	CALL	E2CLER
;
	LD	HL,SOUND2
	LD	(HL),$01	;(S)
;
	LD	A,(ENCHPT2)
	LD	E,A
	LD	D,B
	LD	HL,UFITMSD
	ADD	HL,DE
	LD	A,(HL)
	CALL	MSGCHK
;
	LD	A,(ENCHPT2)
;;	CP	$00
;;	JR	NZ,UFE001
;;;
;;	LD	HL,MEGAF
;;	INC	(HL)
;;	RET
;;UFE001
	DEC	A
	JR	NZ,UFE002
;
;;	LD	HL,LUCKY
;;	INC	(HL)
	RET
UFE002
	DEC	A
	JR	NZ,UFE003
;
;;	LD	HL,COINU2
;;	LD	(HL),30
	LD	A,(COINU2)
	ADD	A,30
	LD	(COINU2),A
	RET
UFE003
	DEC	A
	JR	NZ,UFE004
;
	LD	HL,PWMAX
	LD	A,(TUBOCT)
	CP	(HL)
	JR	NC,UFE032
	ADD	A,$10
	DAA
	CP	(HL)
	JR	C,UFE032
;
	LD	A,(HL) ;$99
UFE032
	LD	(TUBOCT),A
;
	LD	D,PMGIC
	CALL	ITEMGETS
;
	LD	A,$0B
	LD	(CHTRF2),A
UFE033
	RET
UFE004
	DEC	A
	JR	NZ,UFE005
;
	LD	D,PTATE
		jp	ITEMGETS
;;;;;;;;	CALL	ITEMGETS
;;;;;;;;;
;;;;;;;;;;	LD	A,$01
;;;;;;;;;;	LD	(TATLEV),A
;;;;;;;;	RET
UFE005
	LD	A,$FF
	LD	(HARTUP),A
;
UIE010
	RET
;==================================
UISBHR
	LD	A,$02
	LD	(PLSTOP),A
	LD	(ITEMNOT),A
;
	LD	A,(MSCRFG)
	AND	A
	RET	NZ
;
	LD	(MARINOF),A
;
	LD	A,$18
	LD	(DJCLTM),A
	JP	STATINC
;==================================
UISBHR1
	LD	A,$02
	LD	(PLSTOP),A
	LD	(ITEMNOT),A
;
	RET
;==================================
;==================================
;==================================
UFIXSD
	DB	$FC,$00,$04,$00,$00
UFIYSD
	DB	$00,$04,$00,$FC,$00
;----------------------------------
UFISDST
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	A,(HL)
	INC	A
	AND	$03
	LD	(HL),A
UFISDS2
	LD	E,A
	LD	D,B
	LD	HL,UFIXSD
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
	LD	HL,UFIYSD
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),A
;
	RET
;==================================
;==================================
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	���񂿂��P			%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
CHUNLIMV
;;;KK;;;	LD	A,(FRCNT)
;;;KK;;;	AND	%00011111
;;;KK;;;	JR	NZ,CY0000
;;;KK;;;;
;;;KK;;;	CALL	E2XYCK
;;;KK;;;	LD	A,E
;;;KK;;;	LD	HL,ENMUKI
;;;KK;;;	ADD	HL,BC
;;;KK;;;	LD	(HL),A
;;;KK;;;;
;;;KK;;;CY0000
;;;KK;;;	CALL	M2PTST
;;;KK;;;;
;;;KK;;;	LD	DE,ZELDACD
;;;KK;;;	CALL	EN2CST
;;;KK;;;;
;;;KK;;;	CALL	M2CROS
;;;KK;;;;
;;;KK;;;	CALL	E2MSCK
;;;KK;;;	JR	NC,CY0010
;;;KK;;;;
;;;KK;;;	LD	A,(RMINCT)
;;;KK;;;	CP	$03
;;;KK;;;	LD	A,$39
;;;KK;;;	JR	C,CY0008
;;;KK;;;	INC	A
;;;KK;;;CY0008
;;;KK;;;	CALL	MSGCHK
;;;KK;;;CY0010
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	���񂿂����l  �m�R		%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
NYAMACD
ZELDACD
UFOCHCD
	DB	$60,$03,$62,$03
	DB	$62,$23,$60,$23	;	�O
;
	DB	$64,$03,$66,$03
	DB	$66,$23,$64,$23	;	��
;
	DB	$68,$03,$6A,$03
	DB	$6C,$03,$6E,$03	;	��
;
	DB	$6A,$23,$68,$23
	DB	$6E,$23,$6C,$23 ;	�E
;
NYAMAMV
	LD	A,(SHOPFG)
	AND	A
	JR	NZ,NYM010
;
	LD	A,$01
	LD	(SHOPFG),A
;
	CALL	SHBGSET
;
NYM010
	LD	A,(KENLEV)
	AND	A
	JR	Z,NYM011	;�����Ȃ���Ζ������s�I
;
	LD	A,(FRCNT)
	AND	%01011111
	JR	NZ,NY0000
;
NYM011
	CALL	E2XYCK
	LD	A,E
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	(HL),A
;
NY0000
	CALL	M2PTST
;
	LD	DE,NYAMACD
	CALL	EN2CST
;
	CALL	SHOHINCS	; Table shohin set !
;
	LD	A,(ENSTAT2)
	CP	NY5
	JR	NC,NY0001
;
	CALL	M2CROS
NY0001
	LD	A,(ENSTAT2)
	RST	0
	DW	NY1000 ; Initial BG set
	DW	NY2000 ; Main sub
	DW	NY3000 ; Yes No check 
	DW	NY4000 ; Mono kaesu
	DW	NY5000 ;
	DW	NY6000 ;
;
NY2	EQU	$1
NY3	EQU	$2
NY4	EQU	$3
NY5	EQU	$4
NY6	EQU	$5
;==================================
;- - - Set item BG data - - -
NYBGDT
ND1
;1
	DB	$98,$63,$02,$B2,$B0,$B0
	DB	$98,$A4,$01,$7F,$7F	; SKOPx10
;2
	DB	$98,$67,$02,$B1,$B0,$7F
	DB	$98,$A8,$01,$0A,$B3	; HEARTx10
;3
	DB	$98,$6A,$02,$7F,$B2,$B0	; TATE L1
	DB	$98,$AC,$01,$BA,$B1
;4
	DB	$98,$6E,$02,$B1,$B0,$7F
	DB	$98,$B0,$01,$0A,$09	; BOMBx10
;5
	DB	$98,$63,$02,$B9,$B8,$B0
	DB	$98,$A4,$01,$7F,$7F	; BOW
;6
	DB	$98,$63,$02,$B1,$B0,$7F
	DB	$98,$A4,$01,$0A,$09	; ALOWx10
;
	DB	$00
;-----------------------------------------------------
ND2
;- - - Clear BG data - - -
SHCLDB
	DB	$98,$62,$43,$7F
	DB	$98,$83,$42,$7F
	DB	$98,$A3,$42,$7F
	DB	0,0,0,0
;
	DB	$98,$66,$43,$7F
	DB	$98,$87,$42,$7F
	DB	$98,$A7,$42,$7F
	DB	0,0,0,0
;
	DB	$98,$6A,$43,$7F
	DB	$98,$8B,$42,$7F
	DB	$98,$AB,$42,$7F
	DB	0,0,0,0
;
	DB	$98,$6E,$43,$7F
	DB	$98,$8F,$42,$7F
	DB	$98,$AF,$42,$7F
	DB	0,0,0,0
;- - - - - - -
SHOHIND
;�_���W���� �Q �N���A�[�O
	DB	$01 ;�X�R�b�v	
	DB	$02 ;�n�[�g
	DB	$03 ;�|
	DB	$00 ;����
;�_���W���� �Q �N���A�[��
	DB	$01 ;�X�R�b�v	
	DB	$02 ;�n�[�g
	DB	$03 ;�|
	DB	$04 ;���e
;�X�R�b�v�����Ă�Ƃ�
	DB	$05 ;�|
	DB	$02 ;�n�[�g
	DB	$03 ;�|
	DB	$04 ;���e
;�|�����Ă�Ƃ�
	DB	$06 ;��
	DB	$02 ;�n�[�g
	DB	$03 ;�|
	DB	$04 ;���e
;- - - - - - - - - - - - - - -
	DB	$07 ;�I�J���i
	DB	$08 ;���b�h�̑f
	DB	$09 ;������
	DB	$0A ;
;-----------------------------------------
;	DB	$01 ;�X�R�b�v	
;	DB	$02 ;�n�[�g
;	DB	$03 ;�|
;	DB	$04 ;���e
;	DB	$05 ;�|
;	DB	$06 ;��
;	DB	$07 ;�I�J���i
;	DB	$08 ;���b�h�̑f
;	DB	$09 ;������
;	DB	$0A ;
SHOHMSD	; ���i ���b�Z�[�W �f�[�^
	DB	$30,$31,$32,$33,$2C,$2D,$39,$00,$00,$00,$00
SCOSTD1	;�l�i H   1   2   3   4   5   6   7   8   9
	DB	$02,$00,$00,$00,$09,$00,$00,$00,$00
SCOSTD2  ;�l�i L
	DB	$00,$10,$20,$10,$80,$10,$00,$00,$00
;
SCOSTB1	;�l�i H
	DB	$00,$00,$00,$00,$03,$00,$00,$00,$00
SCOSTB2  ;�l�i L
	DB	$C8,$0A,$14,$0A,$D4,$0A,$00,$00,$00
;
;- - - - - - - - - - - - - - - - - - - - - - - -
NY1000	;
	LD	A,(MANBIKI)
	AND	A
	JR	Z,NY1008	;��������H
;				; YES !
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	(HL),$40
;
	LD	HL,ENXPSL
	ADD	HL,BC
	LD	(HL),$50
;
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	(HL),$3
;
	LD	A,$02
	LD	(PLSTOP),A
	LD	(ITEMNOT),A
;
	LD	A,(SBHR)
	CP	$04
	JR	NZ,NY1003
;
	LD	A,(PLYPSL)
	SUB	$01
	LD	(PLYPSL),A
	CP	$74
	JR	NZ,NY1003
;
	LD	A,$38
	CALL	MSGCHK	;����قǁB�B�B
;
	LD	HL,ENSTAT
	ADD	HL,BC
	LD	(HL),NY5
;
	LD	A,$19
	LD	(SOUND4),A	;(S)
NY1003
	RET
;======================================
NY1008	;���i�Z�b�g
	LD	E,$0
	LD	D,B
;
	LD	A,(WARPSV+1)
	AND	%00000010
	JR	Z,NY1010	;�_���W�����Q�N���A�[�H
;				; Yes !
	LD	E,$04
NY1010
	PUSH	BC
;
	LD	HL,ITEMB
	LD	C,$0B
NY1018
	LD	A,(BUMENO)
	CP	PSKOP
	JR	Z,NYSK10
;
	LD	A,(HLI)
	CP	PSKOP
	JR	NZ,NY1020	;�X�R�b�v�����Ă�H
;				; yes !
NYSK10
	LD	E,$08
NY1020	
	DEC	C
	LD	A,C
	CP	$FF
	JR	NZ,NY1018
;
	LD	HL,ITEMB
	LD	C,$0B
NY1028
	LD	A,(BUMENO)
	CP	PYAST
	JR	Z,NYSK20
;
	LD	A,(HLI)
	CP	PYAST
	JR	NZ,NY1030	;�|�����Ă�H
;				;yes !
NYSK20
	LD	E,$0C
NY1030	
	DEC	C
	LD	A,C
	CP	$FF
	JR	NZ,NY1028
;
	LD	HL,SHOHIND
	ADD	HL,DE
	LD	DE,SHOHIN
;
	LD	C,$04
NY1050
	LD	A,(HLI)
	LD	(DE),A
	INC	DE
	DEC	C
	JR	NZ,NY1050
;
	POP	BC
	CALL	STATINC
;
		jp	SHBGSET
;;;;;;;;	CALL	SHBGSET
;;;;;;;;	RET
;
;=======================================
SHBGSET
	LD	DE,VRAMD+1
;
	PUSH	BC
;
	LD	HL,SHOHIN
	LD	C,$04
NYM003
	LD	A,(HLI)
	AND	A
	JR	Z,NYM008
;
	PUSH	HL
	CALL	SHBGSB
	POP	HL
NYM008
	DEC	C
	JR	NZ,NYM003
;
	POP	BC
	RET
;==================================
SHPUTD
	DB	0,0,0,1,1,2,2,3,3,3
;
NY2000
	LD	A,(SHOHFG)
	AND	A
	JR	Z,NY2008
;- - Manbiki check - - -
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	A,(HL)
	AND	$01
	JR	Z,NY2008
;
	LD	A,(PLMODE)
	CP	PMOVE
	JR	NZ,NY2008
;
	LD	A,(PLYPSL)
	CP	$7B
	JR	C,NY2008
;
	SUB	$2
	LD	(PLYPSL),A
;
	LD	A,$2F
	JP	MSGCHK
NY2008
;- - - Shyouhin katsugi check - - -
	LD	A,(PLYPSL)
	CP	$48
	JR	NC,NY2010
;
	LD	A,(PLCMKI)
	CP	$02
	JR	NZ,NY2010
;
	LD	A,(KEYA2)
	AND	%00110000
	JR	Z,NY2010
;
	LD	A,(SHOHFG)
	AND	A
	JR	Z,NY200A	
;
	LD	A,(PLXPSL)	; Modosu !
	ADD	A,$00
	SWAP	A
	AND	$0F
	LD	E,A
	LD	D,B
	LD	HL,SHPUTD
	ADD	HL,DE
	LD	A,(SHOHID)
	CP	(HL)
	JR	NZ,NY2010
;���艹�Z�b�g
	LD	A,$13
	LD	(SOUND1),A	;(S)
;
	JP	KAESU
;===================================
NY200A
	LD	A,(PLXPSL)	; Katsugu !
	ADD	A,$00
	SWAP	A
	AND	$0F
	LD	E,A
	LD	D,B
	LD	HL,SHPUTD
	ADD	HL,DE
	LD	A,(HL)
	LD	(SHOHID),A
;
	LD	E,A
	LD	D,B
	LD	HL,SHOHIN
	ADD	HL,DE
	LD	A,(HL)
	LD	(SHOHFG),A
	LD	(HL),B
;
	AND	A
	JR	Z,SHCA10
;���艹�Z�b�g
	LD	A,$13
	LD	(SOUND1),A	;(S)
SHCA10
	PUSH	BC
;
	LD	A,E
	SWAP	A	; Syohin count BG clear
	LD	E,A
	LD	HL,SHCLDB
	ADD	HL,DE
	LD	DE,VRAMD+1
;
	LD	C,$D
NY200C
	LD	A,(HLI)
	LD	(DE),A
	INC	DE
	DEC	C
	JR	NZ,NY200C
;
	POP	BC
NY2010
	CALL	NYMSCK
		ret	NC
;;;;;;;;	JR	NC,NY2080
;
	LD	A,(SHOHFG)
	AND	A
	JR	Z,NY2020
;
	DEC	A
	LD	E,A
	LD	D,B
	LD	HL,SHOHMSD
	ADD	HL,DE
	LD	A,(HL)
	CALL	MSGCHK
;
		jp	STATINC	
;;;;;;;;	CALL	STATINC	
;;;;;;;;	RET
;
NY2020
	LD	A,$2E
		jp	MSGCHK
;;;;;;;;	CALL	MSGCHK
;;;;;;;;NY2080
;;;;;;;;	RET
;==================================
NY3000
	LD	A,(MSGEFG)
	AND	A
	RET	NZ
;
	LD	A,(MSANSR)
	CP	$00
	JR	Z,NY3080
	CP	$02
	JR	Z,NY3020
;
KAESU
	LD	A,(SHOHID)
	LD	E,A
	LD	D,B
	LD	HL,SHOHIN
	ADD	HL,DE
	LD	A,(SHOHFG)
	LD	(HL),A
;
;;;	CALL	SHBGRV	; BG revise !!	
	LD	DE,VRAMD+1
	CALL	SHBGSB
;
	XOR	A
	LD	(SHOHFG),A
NY3020
	LD	HL,ENSTAT
	ADD	HL,BC
	LD	(HL),NY2
	RET
;=====================================
SHBGSB
	PUSH	DE
;
	DEC	A
	LD	D,A
	SLA	A
	LD	E,A
	SLA	A
	SLA	A
	ADD	A,E	; x11
	ADD	A,D
	LD	E,A
	LD	D,B
	LD	HL,NYBGDT
	ADD	HL,DE
	POP	DE
	PUSH	BC
	LD	C,$0B
;;	LD	C,$0A
NY3018
	LD	A,(HLI)
	LD	(DE),A
	INC	DE
	DEC	C
	JR	NZ,NY3018
;
	XOR	A
	LD	(DE),A
;
	POP	BC
	RET
;
NY3080
;-----------------------------------------
;	DB	$01 ;�X�R�b�v	
;	DB	$02 ;�n�[�g
;	DB	$03 ;�|
;	DB	$04 ;���e
;	DB	$05 ;�|
;	DB	$06 ;��
;	DB	$07 ;�I�J���i
;	DB	$08 ;���b�h�̑f
;	DB	$09 ;������
;	DB	$0A ;
;-------------------------------
	LD	A,(SHOHFG)
	LD	E,A
	CP	$02
	JR	NZ,NYHATCK	;�n�[�g�H
;
	LD	A,(HARTFUL)
	AND	A
	JR	NZ,NYTT12
	JR	NYTT20
;----------------------------------
NYHATCK
	CP	$04	
	JR	NZ,NYBOCK	;�o�N�_���H
;
	LD	HL,ITEMB	
	LD	D,12
NYTT1B
	LD	A,(HLI)
	CP	PBOMB
	JR	Z,NBCK10
	DEC	D
	JR	NZ,NYTT1B
	JR	NYTT20
;
;
NBCK10
	LD	A,(BOMBCT)
	LD	HL,BOMAX
	CP	(HL)
	JR	NC,NYTT12
	JR	NYTT20
;----------------------------------
NYBOCK
	CP	$06
	JR	NZ,NYYACK	;��H
;
	LD	HL,ITEMB	
	LD	D,12
NYTT1Y
	LD	A,(HLI)
	CP	PYAST
	JR	Z,NYCK10
	DEC	D
	JR	NZ,NYTT1Y
	JR	NYTT20
;
;
NYCK10
;
	LD	A,(YAAACT)
	LD	HL,YAMAX
	CP	(HL)
	JR	NC,NYTT12
	JR	NYTT20
;----------------------------------
NYYACK
	CP	$03
	JR	NZ,NYTT20	;���H
;				;YES !
	LD	HL,ITEMB	
	LD	D,12
NYTT10
	LD	A,(HLI)
	CP	PTATE
	JR	NZ,NYTT18	;���łɎ����Ă�H
;----------------------------------------------------
NYTT12
	LD	A,$29		;YES !
	JR	NY4SET		;�����܂���I
NYTT18
	DEC	D
	JR	NZ,NYTT10
;
NYTT20
;;	LD	A,(SHOHFG)
;;	LD	E,A
	LD	D,B
	LD	HL,SCOSTD1-1
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,SCOSTD2-1
	ADD	HL,DE
	LD	E,(HL)
	LD	D,A
;
	LD	A,(COINC2)
	SUB	E
	LD	A,(COINC1)
	SBC	A,D
	JR	NC,NY3088	; Not Rupy ?
;				; yes !
	LD	A,$34
NY4SET
	CALL	MSGCHK	; 
;
	LD	HL,ENSTAT
	ADD	HL,BC
	LD	(HL),NY4
NY3090
	RET
NY3088
	LD	HL,SHOHFG
	LD	A,(HL)
	PUSH	AF
	LD	(HL),$00	; Clear !!
	LD	E,A
	LD	D,B
	LD	HL,SCOSTB2-1
	ADD	HL,DE
	LD	A,(COIND2)
	ADD	A,(HL)
	LD	(COIND2),A
	RL	A	; Cary save 
;
	LD	HL,SCOSTB1-1
	ADD	HL,DE
	RR	A	; Cary read
	LD	A,(COIND1)
	ADC	A,(HL)
	LD	(COIND1),A
;
	LD	HL,ENSTAT
	ADD	HL,BC
	LD	(HL),NY2  ;5
;
	POP	AF
	PUSH	AF
;
;;	CP	$04
	LD	A,$35
;;	JR	NZ,NY30A0
;;	LD	A,$37	; Bakaga..
;;NY30A0
	CALL	MSGCHK	; OOKINI !!
	POP	AF
;==================================================
SHOPGET	;�������Ƃ�
;;;;	LD	A,(SHOHFG)
	DEC	A
	RST	00
	DW	SKOPBUY	;�X�R�b�v
	DW	HART03  ;�n�[�g �R��
	DW	TATL1   ;�| �k���|�P
	DW	BOM10   ;���e�P�O�R
	DW	YUMIBUY ;�|
	DW	YABUY   ;��P�O�{
	DW	OKABUY  ;�I�J���i
	DW	RODPWBUY ;���b�h�̑f
	DW	BINBUY  ;������r��
;-------------------------------
YUMIBUY
	LD	D,PYAST
	CALL	ITEMGETS
;
	LD	A,$20
	LD	(YAAACT),A
	RET
;-------------------------------
YABUY
	LD	A,(YAAACT)
	ADD	A,10
	DAA
	JR	NC,YBY110
	LD	A,$99
YBY110
	LD	(YAAACT),A
	RET
;-------------------------------
OKABUY
	LD	D,POKAR
		jp	ITEMGETS
;;;;;;;;	CALL	ITEMGETS
;;;;;;;;	RET
;-------------------------------
RODPWBUY
	LD	A,(RODCT)
	ADD	A,10
	DAA
	JR	NC,RDY110
	LD	A,$99
RDY110
	LD	(RODCT),A
	RET
;-------------------------------
BINBUY
	LD	A,(KBINF)
	ADD	A,$01
	DAA
	LD	(KBINF),A
	RET
;
;	DB	$01 ;�X�R�b�v	
;	DB	$02 ;�n�[�g
;	DB	$03 ;�|
;	DB	$04 ;���e
;	DB	$05 ;�|
;	DB	$06 ;��
;	DB	$07 ;�I�J���i
;	DB	$08 ;���b�h�̑f
;	DB	$09 ;������
;	DB	$0A ;
;==================================
SKOPBUY
	LD	D,PSKOP
		jp	ITEMGETS
;;;;;;;;	CALL	ITEMGETS
;;;;;;;;	RET
;==================================
BOM10
	LD	A,(BOMBCT)
	ADD	A,10
	DAA
	JR	NC,BOM110
	LD	A,$99
BOM110
	LD	(BOMBCT),A
;
	LD	D,PBOMB
		jp	ITEMGETS
;;;;;;;;	CALL	ITEMGETS
;;;;;;;;	RET
;==================================
YAA10
	LD	A,(YAAACT)
	ADD	A,10
	DAA
	JR	NC,YAA110
	LD	A,$99
YAA110
	LD	(YAAACT),A
;
	LD	D,PMGIC
		jp	ITEMGETS
;;;;;;;;	CALL	ITEMGETS
;;;;;;;;	RET
;==================================
HART03
	LD	A,8*3
	LD	(HARTUP),A
;
	RET
;==================================
TATL1
	LD	D,$04
		jp	ITEMGETS
;;;;;;;;	CALL	ITEMGETS
;;;;;;;;	RET
;==================================
;==================================
;==================================
;==================================
;==================================
NY4000
	LD	A,(MSGEFG)
	AND	A
		ret	NZ
;;;;;;;;	JR	NZ,NY40A0
;
		jp	KAESU
;;;;;;;;	CALL	KAESU
;
;;;;;;;;NY40A0
;;;;;;;;	RET
;==================================
NYM_COL
	DW	$6233,$011a,$0fff,$7fff
;
NY5000
	LD	A,(MSGEFG)
	AND	A
	JR	NZ,NY5010
;
	LD	A,AKUMA	;�����Z�b�g�I
	CALL	ENIDSHL
;
	LD	A,$26
	LD	(SOUND3),A	;(S)
;
	LD	A,(WORK0)
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A
	LD	A,(WORK1)
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),A
	LD	HL,ENWRK2
	ADD	HL,DE
	LD	(HL),$1
;
	LD	HL,ENTIM0
	ADD	HL,DE
	LD	(HL),$C0
;
	CALL	LDTIM0
	LD	(HL),$C0
;
	CALL	STATINC
;
	XOR	A
	LD	(KBINF),A
;
	LD	A,$FF
	LD	(HARTDW),A
;
		LD	A,(CGBFLG)
		AND	A
		JR	Z,NY5010
		LD	HL,OBCGWK+(($007*$004)*$002)
		LD	DE,NYM_COL
NY5005
		LD	A,(DE)
		LD	(HLI),A
		INC	DE
		LD	A,L
		AND	$007
		JR	NZ,NY5005
		LD	A,OBJCOL_BITFG
		LD	(CGDMAF),A
;
NY5010
	RET
;==================================
NY6000
	LD	A,$02
	LD	(PLSTOP),A
;
	CALL	LDTIM0
		ret	NZ
;;;;;;;;	JR	NZ,NY6020
;
	LD	A,(HARTCT)
	AND	A
		ret	NZ
;;;;;;;;	JR	NZ,NY6020
;
	LD	(MANBIKI),A
	LD	(SHOPFG),A
;
	JP	E2CLER
;;;;;;;;NY6020
;;;;;;;;	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
SHOHINXD
	DB	$1D,$3D,$5D,$7D
SHOHINCD
	DB	$96,$17	;SKOP		�X�R�b�v
	DB	$A8,$14 ;HART		�n�[�g
	DB	$86,$17 ;TATE		��
	DB	$80,$17	;BOMB		�o�N�_��
	DB	$88,$16 ;BOW		�|
	DB	$FF,$FF ;YA
	DB	$90,$10	;OKARINA	�I�J���i
	DB	$AE,$10 ;ROD no moto
	DB	$A0,$10 ; KUSURI BIN	��r��
;
;	DB	$01 ;�X�R�b�v	
;	DB	$02 ;�n�[�g
;	DB	$03 ;�|
;	DB	$04 ;���e
;	DB	$05 ;�|
;	DB	$06 ;��
;	DB	$07 ;�I�J���i
;	DB	$08 ;���b�h�̑f
;	DB	$09 ;������
;	DB	$0A ;
SHOHINCD2
	DB	$2A,$41,$2A,$61	; ALOW*10!
;--------------------------------------
SHOHINCS
	LD	A,$04
SHC008
	LD	(WORKF),A
;
	LD	E,A
	LD	D,B
	LD	HL,SHOHIN-1
	ADD	HL,DE
	LD	A,(HL)
	AND	A
	JR	Z,SHC010
;
	DEC	A
	LD	(ENCHPT2),A
;
	LD	HL,SHOHINXD-1
	LD	A,(WORKF)
	LD	E,A
	ADD	HL,DE
	LD	A,(HL)
	LD	(ENSVXL),A
;
	LD	A,$32
	LD	(ENDSYP),A
;
	LD	A,(ENCHPT2)
	CP	$01
	JR	NZ,SPCS08	; Hart ?	
;				; yes !
	LD	HL,ENDSYP
	LD	(HL),$2F
SPCS08
	CP	$05
	JR	NZ,SPCS10	; YA?
;				; YES !
	LD	DE,SHOHINCD2-20 ; 4 chr's SET !
	CALL	EN2CST
	JR	SHC010
SPCS10
	LD	DE,SHOHINCD
	CALL	EN1CST
SHC010
	LD	A,(WORKF)
	DEC	A
	JR	NZ,SHC008
;- - - - - - - - - - - - - - - - -
	CALL	SHOHCACS	; Katsugi c set !
;
		jp	ENPSSV
;;;;;;;;	CALL	ENPSSV
;;;;;;;;;
;;;;;;;;	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
SHOHCACS
	LD	A,(SHOHFG)
	AND	A
		ret	Z
;;;;;;;;	JR	Z,SHCC90
;
	DEC	A
	LD	(ENCHPT2),A
;
	LD	A,$1
	LD	(PLCAMD),A
;
	CALL	DUSHCL
;
	LD	A,(PLXPSL)
	LD	(ENSVXL),A
	LD	A,(PLYPSL)
	SUB	$0E
	LD	(ENDSYP),A
;
	LD	A,(ENCHPT2)
	CP	$05
	JR	NZ,SHCC88 	; ya ?
;
	LD	DE,SHOHINCD2-20 ; Yes 4 chr's set
	JP  	EN2CST
SHCC88
	LD	DE,SHOHINCD
		jp	EN1CST
;;;;;;;;	CALL	EN1CST
;;;;;;;;SHCC90
;;;;;;;;	RET
;
;
;
;
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%					%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
M2CROS
	CALL	CRENPSL
	JR	NC,M220E0
;
	CALL	PLPSRV
;
	CALL	DUSHCL2
;
	LD	A,(PFUCKID)
	AND	A
	JR	Z,M220E0
;	
	LD	E,A
	LD	D,B
	LD	HL,ENMYNO-1
	ADD	HL,DE
	LD	A,(HL)
	CP	FUCKS
	JR	NZ,M220E0
;
	LD	HL,ENSTAT-1	; Fuck return
	ADD	HL,DE
	LD	(HL),$00
M220E0
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%					%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
NYMSCK
	LD	A,(PLXPSL)
	LD	HL,ENSVXL
	SUB	(HL)
	ADD	A,$20
	CP	$30
	JR	NC,E2C080
;
	LD	A,(PLYPSL)
	LD	HL,ENSVYL
	SUB	(HL)
	ADD	A,$10
	CP	$20
	JR	NC,E2C080
;
	CALL	E2XYCK
	LD	A,(PLCMKI)
	XOR	$01
	CP	E
	JR	NZ,E2C080
;
	LD	HL,MSCRFG
	LD	(HL),$01
;
	LD	A,(MSGEFG)
	LD	HL,WNDFLG
	OR	(HL)
	LD	HL,MSOFTM
	OR	(HL)
	JR	NZ,E2C080
;
	LD	A,(WNDYPS)
	CP	$80
	JR	NZ,E2C080
;
	LD	A,(KEYA2)
	AND	%00010000
	JR	Z,E2C080
;
	SCF
	RET
E2C080
	AND	A	; (C) reset !
	RET
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%					%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
E2MSCK
	LD	A,(MSGEFG)
	LD	HL,WNDFLG
	OR	(HL)
	LD	HL,PLJPFG
	OR	(HL)
	LD	HL,MSOFTM
	OR	(HL)
	JR	NZ,E2C0A0
;
	LD	A,(WNDYPS)
	CP	$80
	JR	NZ,E2C0A0
;
	LD	A,(PLXPSL)
	LD	HL,ENSVXL
	SUB	(HL)
	ADD	A,$10
	CP	$20
	JR	NC,E2C0A0
;
	LD	A,(PLYPSL)
	LD	HL,ENSVYL
	SUB	(HL)
	ADD	A,$14
	CP	$28
	JR	NC,E2C0A0
;
	CALL	E2XYCK
	LD	A,(PLCMKI)
	XOR	$01
	CP	E
	JR	NZ,E2C0A0
;
	LD	HL,MSCRFG
	LD	(HL),$01
;
	LD	A,(KEYA2)
	AND	%00010000
	JR	Z,E2C0A0
;
	SCF
	RET
E2C0A0
	AND	A	; (C) reset !
	RET
;
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%					%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%					%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%					%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%					%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%					%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%					%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%					%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%					%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%					%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%					%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%					%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%					%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%					%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%					%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%					%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
M2MVPT
	DB	$06,$04,$02,$00
;
M2PTST
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	E,(HL)
;;	LD	E,A
	LD	D,B ;$0
	LD	HL,M2MVPT
	ADD	HL,DE
;
	PUSH	HL
	LD	HL,ENCONT
	ADD	HL,BC
	INC	(HL)
;
	LD	A,(HL)  ;(FRCNT)
	RRA	
	RRA	
	RRA	
	POP	HL
	AND	%00000001
	OR	(HL)
;
;;	LD	HL,ENCHPT
;;	ADD	HL,BC
;;	LD	(HL),A
;;;
;;	RET
	JP	ENPTST
;============================================================
;============================================================
;============================================================
;============================================================
;============================================================
;============================================================
;============================================================
;============================================================
;============================================================
;============================================================
;============================================================
;============================================================
;============================================================
;============================================================
;============================================================
;============================================================
;============================================================
;============================================================
;============================================================
;============================================================
;============================================================
;============================================================
;============================================================
;============================================================
;============================================================
;============================================================
;---------------------------------
ENBGALL
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	A,(HL)
	PUSH	AF
;;	LD	A,$1
	LD	(HL),$01 ;A
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	A,(HL)
	PUSH	AF
;;	LD	A,$1
	LD	(HL),$01 ;A
;
	CALL	ENBGCKL
;
	LD	HL,ENCBFG
	ADD	HL,BC
	LD	A,(HL)
	PUSH	AF
;
	LD	HL,ENXSPD
	ADD	HL,BC
;;	LD	A,$FF
	LD	(HL),$FF ;A
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),$FF ;A
;
	CALL	ENBGCKL
;
	LD	HL,ENCBFG
	ADD	HL,BC
	POP	AF
	OR	(HL)
	LD	(HL),A
;
	POP	AF
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),A
	POP	AF
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
	RET
;=====================================
;=		���e��	Toritsuki    =
;=====================================
OBOMBCD
	DB	$7A,$20,$78,$20
	DB	$78,$00,$7A,$00
	DB	$7E,$00,$7E,$20
	DB	$70,$00,$72,$00
	DB	$74,$00,$76,$00
	DB	$7C,$00,$7C,$20
OBOMBCD2
	DB	$6A,$20,$68,$20
	DB	$68,$00,$6A,$00
	DB	$6E,$00,$6E,$20
	DB	$60,$00,$62,$00
	DB	$64,$00,$66,$00
	DB	$6C,$00,$6C,$20
;- - - - - - - - - - - - - - - - - -
OBOMBMV
	LD	DE,OBOMBCD
;
	LD	A,(DNJNNO)
	CP	$07
	JR	NZ,OB000SB
;
	LD	DE,OBOMBCD2
;
;;	LD	A,$10
;;	LD	(ENCHNO),A	;Bank chenge!
OB000SB
	CALL	LDTIM1
	RLA
	RLA
	RLA
	AND	$10
	LD	(ENFLCL),A
	CALL	EN2CST
;
	CALL	E2STCK
;
	LD	HL,ENHNFG  ;FLSH
	ADD	HL,BC
	LD	A,(HL)
	CP	$08
;;	CP	$15
	JR	NZ,OBM120
;
	LD	A,(ENSTAT2)
	AND	A
	JR	NZ,OBM120
;
	CALL	STATINC
;
;;	LD	HL,ENTIM3
;;	ADD	HL,BC
	CALL	LDTIM3
	LD	(HL),$10*7-1
OBM120
	CALL	E2HNSB
;
	CALL	E2MVCL
	CALL	ENBGCKL
;
	LD	A,(ENSTAT2)
	RST	00
	DW	OBM100
	DW	OBM200
;------------------------------------------
OBXSDT
	DB	$08,$F8,$00,$00
OBYSDT
	DB	$00,$00,$F8,$00
;- - - - - - - - - - - - - - - -
OBM100
	CALL	CREPKEL
;
	CALL	LDTIM0	
	JR	NZ,OBM110
;
	CALL	RNDSUB
	AND	$1F
	ADD	A,$30
	LD	(HL),A
;
	AND	$03
	LD	E,A
	LD	D,B
	LD	HL,OBXSDT
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
;
	LD	HL,OBYSDT
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),A
OBM110
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	RRA
	AND	$01
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;	RET
;------------------------------------------
OBMBRCD
	DB	$05,$05,$04,$03,$02,$02,$02
;- - - - - - - - - - - - - - - - - -
OBM200
	LD	A,(DUSHFG)
	AND	A
	JR	Z,OBM201
;
	CALL	STATINC
	LD	(HL),B
	RET
OBM201
	CALL	CRKNENL
;
	CALL	E2XCHK
	ADD	A,$12
	CP	$24
	JR	NC,OBM210
;
	CALL	E2YCHK
	ADD	A,$12
	CP	$24
	JR	C,OBM280
;
OBM210
	LD	A,(FRCNT)
	XOR	C
	AND	$03
	JR	NZ,OBM220
;
	LD	A,$0E
;;	LD	A,$12
	CALL	PSERCHL
OBM220
	JR	OBM290
; - - - - - - - - - - - - - - - -
OBM280
	CALL	ENSDCL
OBM290
;;	LD	HL,ENTIM3
;;	ADD	HL,BC
;;	LD	A,(HL)
;;	AND	A
	CALL	LDTIM3
	JP	Z,BOMSET
;
	CP	$18
	JR	NZ,OBM2A0
;
	LD	(HL),$0A
;
	CALL	LDTIM1
	LD	(HL),$30
;
;;	LD	HL,ENFLSH
;;	ADD	HL,BC
;;	LD	(HL),$20
OBM2A0
	RRA
	RRA
	RRA
	RRA
	AND	$07
	LD	E,A
	LD	D,B
	LD	HL,OBMBRCD
	ADD	HL,DE
	LD	A,(HL)
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;;
;;;;;;;;	RET
;=====================================
;=		���e��		     =
;=====================================
SBOMBCD
	DB	$7A,$22,$78,$22
	DB	$78,$02,$7A,$02
SBOMBCD2
	DB	$6A,$22,$68,$22
	DB	$68,$02,$6A,$02
;
SBOMXS
	DB	$08,$F8,$00,$00
;
SBOMYS
	DB	$00,$00,$F8,$08
;
SBOMBMV
	LD	DE,SBOMBCD
	LD	A,(DNJNNO)
	CP	$07
	JR	NZ,SB000SB
;
	LD	DE,SBOMBCD2
SB000SB
	CALL	EN2CST
;
	CALL	E2STCK
;
	CALL	E2HNSB
;
	CALL	LDTIM1
	JR	NZ,SBM000
;
	CALL	CREPKEL
SBM000
	CALL	E2MVCL
	CALL	ENBGCKL
;
	LD	A,(ENSTAT2)
	RST	0
	DW	SBOMSTP
	DW	SBOMWLK
	DW	SBOMBND
;-----------------------------------------------------
;-----------------------------------------------------
;-----------------------------------------------------
SBOMSTP
	CALL	LDTIM0
	JR	NZ,SBOM02
;
	CALL	STATINC
;
SBOM02
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	RRA
	AND	$01
;
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;;
;;;;;;;;	RET
;------------------------------------------
;------------------------------------------
;------------------------------------------
;------------------------------------------
SBOMWLK
	CALL	RNDSUB
	AND	$03
	JR	Z,SWLK1
;
	CALL	RNDSUB
	AND	$03
	JR	SWLK2
;
SWLK1
	CALL	E2XYCK
;
SWLK2
	LD	E,A
	LD	D,B
	LD	HL,SBOMXS
	ADD	HL,DE
	LD	A,(HL)
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
;
	LD	HL,SBOMYS
	ADD	HL,DE
	LD	A,(HL)
;
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),A
;
;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
;@	�؂�ꂽ��,�ύX������e			@
;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
	CALL	LDTIM0
;
	CALL	RNDSUB
	AND	$0F
	ADD	A,$20
;
;;	LD	HL,ENTIM0
;;	ADD	HL,BC
	LD	(HL),A
;
;;	LD	HL,ENSTAT
;;	ADD	HL,BC
;;	LD	(HL),$00
	CALL	STATINC
	LD	(HL),B
	RET
;;==============================================
;;==============================================
;;==============================================
SBOMBND
	CALL	CRENENL
;
	CALL	LDTIM0
	JR	Z,SBTCLC
;
	LD	HL,ENCBFG
	ADD	HL,BC
	LD	A,(HL)
	AND	$03
	JR	NZ,SXTURN
;
	LD	A,(HL)
	AND	$0C
	JR	NZ,SYTURN
;
	JR	SBMOVE
;
SXTURN
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	A,(HL)
	CPL
	INC	A
	LD	(HL),A
	JR	SBMOVE0
;
SYTURN
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	A,(HL)
	CPL
	INC	A
	LD	(HL),A
;
SBMOVE0
	LD	A,$09
	LD	(SOUND1),A	;(S)
SBMOVE
	LD	A,(FRCNT)
	RRA
	RRA
	AND	$01
;
;;	LD	HL,ENCHPT
;;	ADD	HL,BC
;;	LD	(HL),A
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;	RET
;
SBTCLC
BOMSET
	CALL	BOMBRK
		jp	E2CLER
;;;;;;;;	CALL	E2CLER
;;;;;;;;	RET
;=====================================
;=				     =
;=====================================
BOMBRK
	LD	A,BOMBR
	CALL	ENIDSHL
	JR	C,SHS100
;
;;	LD	A,$0C
;;	LD	(SOUND3),A	;(S)
	CALL	BBSDST	;(S)
;
	LD	A,(WORK0)
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A
	LD	A,(WORK1)
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,ENTIM0
	ADD	HL,DE
	LD	(HL),$17
;
	LD	HL,ENWRK3
	ADD	HL,DE
	LD	(HL),$01
SHS100
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%				   %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
RIVERCD
	DB	$56,$02,$56,$22
	DB	$54,$02,$54,$22
	DB	$52,$02,$52,$22
	DB	$50,$02,$50,$22
;- - - - - - - - - - - - - - - - - - - - - -
RIVERMV
	LD	DE,RIVERCD
	CALL	EN2CST
;
RVM010
	CALL	E2STCK
;
	CALL	E2HNSB
	CALL	E2MVCL
	CALL	ENBGCKL
;
	LD	A,(ENSTAT2) ;HL)
	AND	$3
	RST	0
	DW	RVWAIT
	DW	RVUP
	DW	RVMOVE
	DW	RVDOWN
;--------------------------------
RVWAIT
	LD	A,$FF
	CALL	ENPTST
	CALL	LDTIM0
		ret	NZ
;;;;;;;;	JR	NZ,RVW080
;
	LD	(HL),$1F ;A
	CALL	STATINC
;
		jp	ENSDCL
;;;;;;;;	CALL	ENSDCL
;;;;;;;;RVW080
;;;;;;;;	RET
;--------------------------------
RVUPCD
	DB	1,0
RVUP
	CALL	LDTIM0
	JR	NZ,RVU030
;
	CALL	RNDSUB
	AND	$3F
	ADD	A,$70
	LD	(HL),A
;
		jp	STATINC
;;;;;;;;	CALL	STATINC
;;;;;;;;	RET
RVU030
	LD	HL,RVUPCD
;============================
RVPTST
	SRL	A
	SRL	A
	SRL	A
	SRL	A
	LD	E,A
	LD	D,B ;$00
	ADD	HL,DE
	LD	A,(HL)
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;	RET
;--------------------------------
RVMOVE
	CALL	CREPKEL
;
	CALL	LDTIM0
	JR	NZ,RVV008
;
	LD	(HL),$1F ;A
;
	CALL	STATINC
;
		jp	ENSDCL
;;;;;;;;	CALL	ENSDCL
;;;;;;;;	RET
RVV008
	LD	A,(FRCNT)
	XOR	C
	PUSH	AF
	AND	%00001111
	JR	NZ,RVMV80
;
	LD	A,$08
	CALL	PSERCHL
;
RVMV80
	POP	AF
	SRL	A
	SRL	A
	AND	%00000001
	CALL	ENPTST
	INC	(HL)
	INC	(HL)
	RET
;--------------------------------
RVDWCD
	DB	0,1
RVDOWN
	CALL	LDTIM0
	JR	NZ,RVD030
;
	CALL	RNDSUB
	AND	$1F
	ADD	A,$30
	LD	(HL),A
;
	CALL	STATINC
;
	LD	A,$08
		jp	PSERCHL
;;;;;;;;	CALL	PSERCHL
;;;;;;;;	RET
RVD030
	LD	HL,RVDWCD
	JP	RVPTST
;
;-------------------------------------------
E2MKST
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	A,(HL)
	RL	A
	LD	A,$00
	JR	C,E2KS10
	LD	A,$20
E2KS10
	LD	HL,ENFLCL
	XOR	(HL)
	LD	(HL),A
	RET
;--------------------------------
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%				 %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;---------------------------------
E2STCK
	LD	A,(ENMODE2)
	CP	EMOVE
	JR	NZ,E2TC12
;
E2STCK2
	LD	A,(GMMODE)
	CP	GMAP
	JR	Z,E2TC12
;
		cp	GPLAY
		jr	nz,E2TC12	; �Q�[�����[�h�@�H
;					; Yes !!
		ld	a,(SBHR)
		cp	004
		jr	nz,E2TC12	; �t�F�[�h���@�H
;					; No !!
	LD	HL,ENSTFG
	LD	A,(MSGEFG)
;;	AND	A
	OR	(HL)
	LD	HL,WNDFLG
	OR	(HL)
	JR	NZ,E2TC12
;
	LD	A,(SCRLFG)
	AND	A
	JR	Z,E2TCF0
E2TC12
	POP	AF
E2TCF0
	RET
;============================================================
;============================================================
;============================================================
;============================================================
;============================================================
;============================================================
;============================================================
;============================================================
;============================================================
;============================================================
;============================================================
;============================================================
;============================================================
;============================================================
;============================================================
;============================================================
	END	;�I���
;  OLD SUB..
==============================
;;	CALL	ENBGCK
;--------------------------------
;
;	CALL	GYMAIN
;
	XOR	A
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),A
;
;;	LD	HL,ENTIM1
;;	ADD	HL,BC
;;	LD	A,(HL)
	CALL	LDTIM1
	CP	$01
	JR	NZ,GHMAIN
;
	PUSH	AF
	CALL	RNDSUB
	BIT	1,A
	JR	NZ,YRU2
;
	CALL	E2YCHK
	LD	A,E
YRU2
	AND	$01
	LD	HL,ENWRK2
	ADD	HL,BC
	LD	(HL),A
;
	POP	AF
GHMAIN
	AND	A
	JR	NZ,GXEXIT
;
	CALL	E2XCHK
	LD	D,$0
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,GHMAX
	ADD	HL,DE
	CP	(HL)
	JR	Z,GXEXIT0
;
	PUSH	HL
	PUSH	DE
;
	LD	HL,ENWRK2
	ADD	HL,BC
	LD	E,(HL)
;;	LD	E,A
	LD	D,B ;$0
	LD	HL,GYADD
	ADD	HL,DE
	LD	A,(HL)
;
	LD	HL,ENYSPD
	ADD	HL,BC
	LD 	(HL),A
;
	POP	DE
	LD	HL,GXADD
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,BC
	ADD	A,(HL)
	LD	(HL),A
	POP	HL
	CP	(HL)
	JR	NZ,GXEXIT
;
GXEXIT0	
;;	LD	HL,ENTIM1
;;	ADD	HL,BC
	CALL	LDTIM1
	CALL	RNDSUB
	AND	$1F
;;;	LD	A,$1C
	LD	(HL),A
;
;
GXEXIT	
	LD	A,(FRCNT)
	AND	$10
	JR	NZ,GLEFT
	LD	A,$01
	JR	GKEI
;
GLEFT
	XOR	A
GKEI
	LD	HL,ENCHPT
	ADD	HL,BC
	LD	(HL),A
;
	RET
;
;
;================================================
TRAP0MV
;
;
;
;;;	CALL	E2MVCL
;;;	CALL	ENBGCKL
;
;TRP0MAIN
;==========================================
;;;;;	LD	HL,ENSTAT
;;;;;	ADD	HL,BC
;;;;;	LD	A,(HL)
;==========================================
;	LD	HL,ENCBFG
;	ADD	HL,BC
;	LD	A,(HL)
;	AND	A
;	JR	Z,TRAPSSS
;
;	LD	HL,ENXSPD
;	ADD	HL,BC
;	LD	(HL),B
;;
;	LD	HL,ENYSPD
;	ADD	HL,BC
;	LD	(HL),B
;	CALL	ENSDCL
;;
;	LD	HL,ENWRK0
;	ADD	HL,BC
;	LD	(HL),B
;;
;	LD	HL,ENWRK1
;	ADD	HL,BC
;	LD	(HL),B
;	RET
;;
TRAPSSS
	LD	A,(ENSTAT2)
;
	RST	0
	DW	TRP0STOP
	DW	TRP0MOVE
	DW	TRP0STP2
	DW	TRP0TURN
;- - - - - - - - - - - - - - - - - - - - -
TRP0STOP
;
	CALL	LDTIM0
	JR	NZ,T0SEND
;
	LD	(HL),$10
;
	CALL	STATINC
;
	CALL	ENSDCL
;
;	LD	HL,ENSTAT
;	ADD	HL,BC
;	INC	(HL)
;
;	LD	HL,ENXSPD
;	ADD	HL,BC
;	LD	(HL),B
;;
;	LD	HL,ENYSPD
;	ADD	HL,BC
;	LD	(HL),B
;
T0SEND
		jp	E2MVCL
;;;;;;;;	CALL	E2MVCL
;;;;;;;;	RET
;==============call ldtim0,���e==============
;;;;	LD	HL,ENTIM0
;;;;	ADD	HL,BC
;;;;	LD	A,(HL)
;;;;	AND	A
;============================================
TRP0MOVE
	CALL	LDTIM0
		ret	NZ
;;;;;;;;	JR	NZ,T0MEND
;
	CALL	E2YCHK
	ADD	A,$0C
	CP	$18
	JR	NC,TP0M02
;
	CALL	E2XCHK
	LD	D,B
	LD	HL,TP0XSP
	ADD	HL,DE
	LD	A,(HL)
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	(HL),A
;
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	(HL),B
;
	LD	E,$18		;;;; �������X�s�[�h�^�C���i���j
	JR	TPM03
;
TP0M02
	CALL	E2XCHK
	ADD	A,$0C
	CP	$18
		ret	NC
;;;;;;;;	JR	NC,T0MEND
;
	CALL	E2YCHK
	LD	D,B
	LD	HL,TP0YSP
	ADD	HL,DE
	LD	A,(HL)
;
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),A
;
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	(HL),A
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	(HL),B
;
	LD	E,$10		;;;;;; �c�����X�s�[�h�^�C���i���j
TPM03
	CALL	LDTIM0
	LD	(HL),E
;
	CALL	ENBGCKL
	LD	HL,ENCBFG
	ADD	HL,BC
	LD	A,(HL)
	AND	$0F
	JR	Z,TPM090
;
	CALL	LDTIM0
	LD	(HL),B
	RET
;
TPM090
;	LD	HL,ENSTAT
;	ADD	HL,BC
;	INC	(HL)
		jp	STATINC
;;;;;;;;	CALL	STATINC
;;;;;;;;;
;;;;;;;;T0MEND
;;;;;;;;	RET
;*******************************************
TRP0STP2
	CALL	LDTIM0
	JR	NZ,T0S2E
;
	LD	(HL),$10
;
	CALL	STATINC
;	LD	HL,ENSTAT
;	ADD	HL,BC
;	INC	(HL)
;
;	LD	HL,ENXSPD
;	ADD	HL,BC
;	LD	(HL),B
;;
;	LD	HL,ENYSPD
;	ADD	HL,BC
;	LD	(HL),B
	CALL	ENSDCL
;
	LD	A,$07
	LD	(SOUND1),A	;(S)
T0S2E
		jp	E2MVCL
;;;;;;;;	CALL	E2MVCL
;;;;;;;;	RET
;*******************************************
TRP0TURN
;
	CALL	LDTIM0
	JR	NZ,T0REND
;
	PUSH	HL
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	CPL
	INC	A
	SRA	A
	AND	$F0
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
;
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	A,(HL)
	CPL
	INC	A
	SRA	A
	AND	$F0
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),A
;
	LD	E,B
	AND	A
	JR	Z,T0TOBE
;
	INC	E
;
T0TOBE
	LD	D,B
;
	LD	HL,TP0XYT
	ADD	HL,DE
	LD	A,(HL)
;
	POP	HL
;
	LD	(HL),A
;
;	LD	HL,ENSTAT
;	ADD	HL,BC
;	LD	(HL),B	;�[���N���A
	CALL	STATINC
	LD	(HL),B
T0REND
;
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%					%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
FYSPDT
	DB	$00,$06,$0C,$0E
	DB	$10,$0E,$0C,$06
	DB	$00,$FA,$F4,$F2
	DB	$F0,$F2,$F4,$FA
;
	DB	$00,$06,$0C,$0E
	DB	$10,$0E,$0C,$06
	DB	$00,$FA,$F4,$F2
	DB	$F0,$F2,$F4,$FA
FXSPDT
	DB	$10,$0E,$0C,$06
	DB	$00,$FA,$F4,$F2
	DB	$F0,$F2,$F4,$FA
	DB	$00,$06,$0C,$0E
;
	DB	$F0,$F2,$F4,$FA
	DB	$00,$06,$0C,$0E
	DB	$10,$0E,$0C,$06
	DB	$00,$FA,$F4,$F2
FRBARMV
	LD	HL,ENWRK2
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	NZ,FRM001
;
;=== Senter pos set initial ===
	INC	(HL)
;
	LD	A,(ENSVXL)
	ADD	A,$00
	LD	HL,ENWRK0 ;Center pos
	ADD	HL,BC
	LD	(HL),A
	ADD	A,$06
	LD	HL,ENXPSL
	ADD	HL,BC
	LD	(HL),A
;
	AND	%00010000
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	(HL),A
;
	LD	A,(ENDSYP)
	ADD	A,$04
	LD	HL,ENWRK1 ;Center pos
	ADD	HL,BC
	LD	(HL),A
	ADD	A,$E2
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	(HL),A
;===========================
FRM001
	CALL	FRSCRL	; Scroll revise
;
	CALL	FRBARCS
;
	CALL	E2STCK
	CALL	E2MVCL
;- - - - - - - - - - - - - - - -
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	INC	A
	LD	(HL),A
;;	AND	$07
;;	JP	NZ,FRFIN
	CP	$0C
	JR	NZ,FRFIN
;
	LD	(HL),B
;
	LD	HL,ENSTAT
	ADD	HL,BC
	LD	A,(HL)
	INC	A
	AND	$0F
	LD	(HL),A
;
	LD	HL,ENMUKI
	ADD	HL,BC
	ADD	A,(HL)
	LD	E,A
	LD	D,B
;
	LD	HL,FYSPDT
	ADD	HL,DE
	LD	A,(HL)
;
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),A
;
	LD	HL,FXSPDT
	ADD	HL,DE
	LD	A,(HL)
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
FRFIN
	RET
;========================
;   
;========================
FRBARCD
	DB	$5A,$00
FRBADT
	DB	$40,$80,$C0
;- - - - - - - - - - - - - - - - - - - -
FRBARCS
	LD	DE,FRBARCD
	CALL	EN1CST	
;
;--- TEST TEST TEST TEST TEST TEST TEST TEST - - -
	LD	A,$02
FBC008
	LD	(WORKF),A
	LD	E,A
	LD	D,B
;
;- - - X calc - - - -
	XOR	A
	LD	(WORKE),A
;
	LD	HL,ENXPSL
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENWRK0
	ADD	HL,BC
	SUB	(HL)
	BIT	7,A
	JR	Z,FBC010
	CPL
	INC	A
;
	LD	HL,WORKE
	INC	(HL)
FBC010
	LD	(WORK0),A
;
	LD	HL,FRBADT
	ADD	HL,DE
;
	LD	A,(HL)
	LD	(WORK1),A
	XOR	A
	LD	(WORK2),A
	LD	(WORK3),A
	LD	(WORK4),A
;
	PUSH	BC
;
	LD	C,$08
F1111
	LD	HL,WORK0
	RR	(HL)
;
	JR	NC,F2222
;
	LD	A,(WORK1)
	LD	HL,WORK3
	ADD	A,(HL)
	RR	B
	LD	(HL),A
	LD	A,(WORK2)
	LD	HL,WORK4
	RL	B
	ADC	A,(HL)
	LD	(HL),A
F2222
	LD	HL,WORK1
	SLA	(HL)
	LD	HL,WORK2
	RL	(HL)
;
	DEC	C
	JR	NZ,F1111
;
	LD	A,(WORKE)
	AND	A
	LD	A,(WORK4)
	JR	Z,F3333
	CPL
	INC	A
F3333
	LD	(WORK8),A	; ADD xpos !!
;
	POP	BC
	PUSH	BC
;- - - Y calc - - - -
	XOR	A
	LD	(WORKE),A
;
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENWRK1
	ADD	HL,BC
	SUB	(HL)
	BIT	7,A
	JR	Z,FBC020
	CPL
	INC	A
;
	LD	HL,WORKE
	INC	(HL)
FBC020
	LD	(WORK0),A
;
	LD	HL,FRBADT
	ADD	HL,DE
;
	LD	A,(HL)
	LD	(WORK1),A
	XOR	A
	LD	(WORK2),A
	LD	(WORK3),A
	LD	(WORK4),A
;
	LD	C,$08
F5555
	LD	HL,WORK0
	RR	(HL)
;
	JR	NC,F6666
;
	LD	A,(WORK1)
	LD	HL,WORK3
	ADD	A,(HL)
	RR	B
	LD	(HL),A
	LD	A,(WORK2)
	LD	HL,WORK4
	RL	B
	ADC	A,(HL)
	LD	(HL),A
F6666
	LD	HL,WORK1
	SLA	(HL)
	LD	HL,WORK2
	RL	(HL)
;
	DEC	C
	JR	NZ,F5555
;
	LD	A,(WORKE)
	AND	A
	LD	A,(WORK4)
	JR	Z,F7777
	CPL
	INC	A
F7777
	LD	(WORK9),A	; ADD Ypos !!
;
	POP	BC
;- - - - -
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(WORK8)
	ADD	A,(HL)
	LD	(ENSVXL),A
;
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	A,(WORK9)
	ADD	A,(HL)
	LD	(ENDSYP),A
;
	LD	DE,FRBARCD
	CALL	EN1CST
;
	LD	A,(WORKF)
	DEC	A
	CP	$FF
	JP	NZ,FBC008
;
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%					%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
E2SCXL
	DB	$FC,$04,$00,$00
E2SCYL
	DB	$00,$00,$04,$FC
;---------------------------------
FRSCRL
	LD	A,(SCRLFG)
	CP	$3
	JR	NC,E2TC00
;
	RET
;
E2TC00
;
	LD	A,(SCRLMK)
	LD	E,A
	LD	D,B
;
	LD	HL,E2SCXL
	ADD	HL,DE
	LD	A,(HL)
;
	LD	HL,ENWRK0
	ADD	HL,BC
	ADD	A,(HL)
	LD	(HL),A
;
	LD	HL,E2SCYL
	ADD	HL,DE
	LD	A,(HL)
;
	LD	HL,ENWRK1
	ADD	HL,BC
	ADD	A,(HL)
	LD	(HL),A
;
	RET
