
		onbankgroup

;==============	�o���N�O ================================================
BANK0		GROUP	0
;-------------<	ZCO >-------------
		EXTERN	RNDSUB,OBJBG,BGMSET,SOUNDCLR,DATA_MOV
;
;-------------<	ZPL >-------------
		EXTERN	PLPSRV,MSGCHK,MSGCHK2,DUSHCL,KNCSET,KNFLSH,PLSHST,MVCALC
		EXTERN	FLASHST,EXIDSH,NXGOTO,LDTIM0,PLXCLC,ENHNCL,BBSDST,MSGCH2
		EXTERN	YOSSISET,NAZOCLR,NOSDST,NXGOTO3,LDTIM1,LDTIM3,BG1CHG
		EXTERN	PLPTSTL,PLSDCL,PLPTST,NXGOTO4,MSGCH3,DUSHCL2,CARITMD
		EXTERN	PTOBI,PBULE,POVER,PINDR1,PMOVE,PFOLE,PTATE,PMGIC,POKAR
		EXTERN	FDIN,PSWIM,PBOXER,LOVED,PEACH,GMAP,PBUME,PKEN,PLHKCK
		EXTERN	PLHKC0,PLHKXD,PLHKYD,PBOMB,PYAST,SCSTR,GPLAY,ENDG
;
;-------------<	ZES >-------------
		EXTERN	ISIBRKL,CRENENL,PLDMST0,ENMOVE,ENBGCKL,ENBGCK2L,ENPTST
		EXTERN	STATINC,ENIDSHL,ENIDSH2L,BSSDCK,CREPKEL,CRENPLL,CRENPL2L
		EXTERN	EN2CST,EN1CST,PSERCHL,PSERCH2L,CRKNENL,ENFEND,CRENPSL
		EXTERN	ENPSSV,ENSDCL,NXOMSBL,PLBGCKL,ENALCL,HNSMST,ENOMST,ENSZST
		EXTERN	SADWSTL,SHRVSE,ITEMGETS,ENBITON,ENMDSTL,O2MCHK,CRKNKNL
		EXTERN	EFAIL,EFOLE,EFIRE,EINIT,EMOVE,ESTOP,ECACH,ESHOT
;
;-------------<	ZBS >-------------
		EXTERN	DJRMRD,HABATAKI
;
;-------------<	ZMA >-------------
		EXTERN	PBSET,BG1UNIT_ATR_SUB
		EXTERN	Unit_change
;
;==============	�o���N�Q ================================================
BANK2		GROUP	2
;-------------<	ZEX >-------------
		EXTERN	SPUNDT,WTUP,SMK1,RZNZ,FLSH,BFZN,DSZN,HNSM,KZNZ
;
;==============	�o���N�R ================================================
BANK3		GROUP	3
;-------------<	ZEN >-------------
		EXTERN	EFLSST,BHFIR,HARTB,R7BEM,RENO7,BGKAO,FUCKS,UFOCH,TERSA
		EXTERN	FISHG,SBOMB,BOMBR,NINTM,HAYAB,TUKAI,KTOBJ,BSLIM,SLIMB
		EXTERN	TBOSS,BSNAK,GORMA,BSKEL,BFIRE,BBIRD,SWBLK2,BFISH,SWTRP
		EXTERN	NIWAT,KODOMA,PAPA0,KAMEI,RANEM,PANEL,BHANA,SHANA,HEIS0
		EXTERN	MORI1,OCTA1,KODOMB,IZUMI,SONIC,KEYSM,MIZUB,SLOT,HART1
		EXTERN	RUPY1,OCHAN,KAKIN,SLIMS,OZWAN,ARIMA,PYAAA,ZONBI,TODD,USAGI
		EXTERN	ONPU,AKUMA,MVHAS,WANI,GAGE,GIRL1,WANWAN,OBAKE,PUKPK,PUKPJ
		EXTERN	HASIR,FIREB,POWDR,KAZAM,NIWAX,SEIREN,KENBM,AMUSI,HIKUS
		EXTERN	MOAI
;
;==============	�o���N�W ================================================
BANK8		GROUP	8
;-------------<	ZBD >-------------
		EXTERN	GRBGCR,DJBGCR
;
;========================================================================
	PUBALL
;
BANK19	GROUP	$19
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
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	���A�C 	�Α�(�u���X���b�g�Q�p�j	  %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
MOAICD
	DB	$F0,$00,$48,$06
	DB	$F0,$08,$48,$26
	DB	$00,$00,$4A,$06
	DB	$00,$08,$4A,$26
MOAICD2
	DB	$F0,$00,$78,$06
	DB	$F0,$08,$78,$26
	DB	$00,$00,$7A,$06
	DB	$00,$08,$7A,$26
;- - - - - - - - - - - - - - - - -
MOISICD
	DB	$16,$01
;- - - - - - - - - - - - - - - - -
MOAIMV
	LD	HL,ENWRK0	
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,MOAIMV10
;
	LD	DE,MOISICD
	CALL	EN1CST
;
	CALL	E7STCK
;
	CALL	E7MVCL
;
	CALL	E7ZCLC
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
	JP	NZ,E7CLER
;
	RET
;==============================================
MOAIMV10
	LD	HL,MOAICD
	LD	A,(DNJNNO)
	CP	$01
	JR	NZ,MOAC090	;Level .2?
;				;Yes !
	LD	HL,MOAICD2
MOAC090
	LD	C,$04
	CALL	ENOMST
;
	CALL	SADWSTL
;
	CALL	E7STCK
;
	CALL	ENHNCL
;
	CALL	CRKNENL
;
	LD	A,(ENSTAT2)
	RST	00
	DW	MOI1000
	DW	MOI2000
	DW	MOI2000
;=======================================
MOI1000
	CALL	ENBGCKL
;
	CALL	M7CROS
;
	CALL	E7XCHK
	ADD	A,$10
	CP	$20
	JP	NC,MAI090
;
	CALL	E7YCHK
	ADD	A,$20
	CP	$30
	JP	NC,MAI090
;
	LD	A,(POWDRTM)
	AND	A
	JP	NZ,MAI090
;				; YES !
	LD	A,(ITEMB)
	CP	PBULE
	JR	NZ,MAI020	; Bulesret check !
;
	LD	A,(KEYA1)
	AND	%00100000
	JR	NZ,MAI030
	JR	MAI090
MAI020
	LD	A,(ITEMA)
	CP	PBULE
	JR	NZ,MAI090
;
	LD	A,(KEYA1)
	AND	%00010000
	JR	Z,MAI090
;
MAI030
	LD	A,(WPLCAMD)
	AND	A
	JR	NZ,MAI090
;
	LD	A,$01
	LD	(PLSTOP),A
	LD	(WPLCAMD),A
;
	LD	A,(PLCMKI)
	LD	E,A
	LD	D,$0
	LD	HL,PLHKC0
	ADD	HL,DE
	LD	A,(HL)
	LD	(PLCHPT),A
;
	LD	HL,PLHKCK
	ADD	HL,DE
	LD	A,(KEYA1)
	AND	(HL)
	JR	Z,MAI090
;
	LD	HL,PLHKXD
	ADD	HL,DE
	LD	A,(HL)
	LD	(PLDSXD),A
;
	LD	HL,PLHKYD
	ADD	HL,DE
	LD	A,(HL)
	LD	(PLDSYD),A
;
	LD	HL,PLCHPT
	INC	(HL)
;
	LD	A,(BULLEV)
	CP	$02
	JR	NZ,MAI090	;Level 2 ?
;	
	LD	E,$08
	LD	A,(POWRFG)
	AND	A
	JR	Z,MOHK09
;
	LD	E,$03
MOHK09
	LD	HL,ENCONT
	ADD	HL,BC
	INC	(HL)
	LD	A,(HL)
	CP	E  ;$08
	JR	C,MAI0A0
;
	CALL	STATINC
	LD	(HL),$02
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
	CALL	LDTIM0
	LD	(HL),$02
;
	LD	HL,SOUND2
	LD	(HL),$02	;(S)
MAI090
	LD	HL,ENCONT
	ADD	HL,BC
	LD	(HL),B
	RET
MAI0A0
	RET
;=======================================
MOI2000
	CALL	E7MVCL
;
	CALL	E7ZCLC
;
	CALL	ENBGCKL
;
	LD	HL,ENZSPD
	ADD	HL,BC
	DEC	(HL)
	DEC	(HL)
;
	LD	HL,ENCBFG
	ADD	HL,BC
	LD	A,(HL)
	AND	%00001111
	JR	NZ,MOI2030
;
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	AND	%10000000
		ret	Z
;;;;;;;;	JR	Z,MOI2090
;
MOI2030
	CALL	MOAIBRK
;
	LD	A,(NAZOFG)
	AND	%00011111
	CP	$0B
		ret	NZ		;�V���b�^�[�Ԃ���H
;;;;;;;;	JR	NZ,MOI2090	;�V���b�^�[�Ԃ���H
;				; YES !
	LD	A,(ENBGUD)
	CP	DSHI0
	JR	C,MOO00F
	CP	DSHI7+1
	JR	C,MOSHON
;
MOO00F
	LD	A,(ENBGLR)
	CP	DSHI0
		ret	C
;;;;;;;;	JR	C,MOI2090
	CP	DSHI7+1
		ret	NC
;;;;;;;;	JR	NC,MOI2090
MOSHON
		jp	NAZOCLR	;(S)
;;;;;;;;	CALL	NAZOCLR	;(S)
;========================================
;;;;;;;;MOI2090
;;;;;;;;	RET
;========================================
MABXAD
	DB	$00,$08,$00,$08,$00,$08
MABYAD
	DB	$F8,$F8,$00,$00,$08,$08
MABXSD
	DB	$FC,$05,$FA,$06,$FB,$04
MABYSD
	DB	$FC,$F8,$FE,$FF,$03,$02
MABZSD
	DB	$18,$14,$13,$16,$12,$14
;---------------------------------------------
MOAIBRK
	LD	A,$00
MAB100
	LD	(ENHELP),A
;
	LD	A,MOAI
	CALL	ENIDSHL
	JR	C,MAB190
;
	LD	HL,ENWRK0
	ADD	HL,DE
	INC	(HL)
;
	LD	HL,ENMOD0
	ADD	HL,DE
	LD	(HL),%11000001
;
	PUSH	BC
;
	LD	A,(ENHELP)
	LD	C,A
	LD	HL,MABXAD
	ADD	HL,BC
	LD	A,(WORK0)
	ADD	A,(HL)
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A
	LD	HL,MABYAD
	ADD	HL,BC
	LD	A,(WORK1)
	ADD	A,(HL)
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	A,(WORK3)
	LD	HL,ENZPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,MABXSD
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,DE
	LD	(HL),A
	LD	HL,MABYSD
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENYSPD
	ADD	HL,DE
	LD	(HL),A
	LD	HL,MABZSD
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENZSPD
	ADD	HL,DE
	LD	(HL),A
;
	POP	BC
;
	LD	A,(ENHELP)
	INC	A
	CP	$06
	JR	NZ,MAB100
;
MAB190
	LD	A,$29
	LD	(SOUND3),A	;(S)
;
	LD	A,(ENSVXL)
	LD	(WORK0),A
	LD	A,(ENDSYP)
	LD	(WORK1),A
;
	LD	A,SMK1
	CALL	EXIDSH
;
	LD	A,(ENDSYP)
	SUB	$10
	LD	(WORK1),A
;
	LD	A,SMK1
	CALL	EXIDSH
;
	JP	E7CLER
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	���[�v �|�C���g  			%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
WARPPT
;01		IN  OUT
	DB	$17,$11
;02
	DB	$36,$28
;03
	DB	$45,$52
;04
	DB	$7A,$64
;05
	DB	$93,$A1
;06
	DB	$C5,$D4
;07
	DB	$28,$0E
;08
	DB	$3F,$5D
;
WARPMV
	LD	A,(DJFLAG)
	AND	A
	JR	NZ,WPM0090	
;
		LD	A,(GRNDPT)
		CP	$CF
		JR	Z,RANHOLE
		CP	$DE
		JR	Z,RANHOLE
		CP	$CE
		JP  	NZ,WARPCS2
;
;===================================
RANHOLE	;���l���[���̉��I
	CALL	E7STCK
;
	LD	A,(PLJPFG)
	AND	A
	RET	NZ
;
	LD	A,(PLXPSL)
	SUB	$50
	ADD	A,$03
	CP	$06
	RET	NC
	LD	A,(PLYPSL)
	SUB	$46
	ADD	A,$04
	CP	$08
	RET	NC
;
	LD	A,$01
	LD	(NXRMMD),A
	LD	A,$1F
	LD	(NXDJNO),A
	LD	A,$F8
	LD	(NXRMNO),A
	LD	A,$50
	LD	(NXRMPX),A
	LD	(PLXPSL),A
	LD	A,$48
	LD	(NXRMPY),A
	LD	(PLYPSL),A
;
	LD	A,$45
	LD	(DRPSBF),A
;
	LD	A,PFOLE
	LD	(PLMODE),A	; go to fole down!
;
	CALL	DUSHCL
	LD	(KURDCT),A
;
	LD	A,$51
	LD	(ANAFLG),A
;
	LD	A,$0C
	LD	(SOUND2),A	;(S)
	JP	E7CLER
;=========================================
WPM0090
	LD	A,$01
	LD	(WARPFG),A
;
	LD	A,(DNJNNO)
	LD	E,A
	LD	D,B
	LD	HL,WARPSV
	ADD	HL,DE
	LD	A,(HL)
	AND	%00000001
	JP	Z,WPM090
;
	CALL	WARPCS
;
;;	CALL	E7STCK
;
	LD	A,(ENSTAT2)
	RST	0
	DW	WPMF000
	DW	WPM0000
	DW	WPM1000
	DW	WPM2000
;===========================================
WPMF000
	CALL	STATINC
;
	LD	A,$1B
	LD	(SOUND4),A	;(S)
	RET
;===========================================
WPM0000
	CALL	E7XCHK
	ADD	A,$04
	CP	$08
		jp	NC,STATINC
;;;;;;;;	JR	NC,WP0090
;
	CALL	E7YCHK
	ADD	A,$04
	CP	$08
		ret	C
;;;;;;;;	JR	C,WP00A0
;;;;;;;;WP0090
		jp	STATINC
;;;;;;;;	CALL	STATINC
;;;;;;;;WP00A0
;;;;;;;;	RET
;===========================================
WPM1000
	LD	A,(PLZPSL)
	AND	A
	JR	NZ,WPM090
;
	CALL	E7XCHK
	ADD	A,$03
	CP	$06
	JR	NC,WPM090
;
	CALL	E7YCHK
	ADD	A,$03
	CP	$06
	JR	NC,WPM090
;
	CALL	STATINC
;
	LD	A,$20
;;	LD	(ENSTTM),A
;
	LD	(MUTEKI),A
;
	CALL	LDTIM0
	LD	(HL),$50
;
	LD	A,$1C
	LD	(SOUND1),A	;(S)
WPM090
	RET
;------------------------------
WAPCLD
	DB	%11100100
	DB	%11100100
	DB	%11100100
	DB	%11100100
	DB	%10010100
	DB	%10010100
	DB	%10010100
	DB	%10010100
	DB	%01010100
	DB	%01010100
	DB	%01010100
	DB	%01010100
	DB	%00000000
	DB	%00000000
	DB	%00000000
	DB	%00000000
;------------------------------------
WPPLMK
	DB	0,3,1,2
;
WPM2000
	CALL	DUSHCL
;;	XOR	A
	LD	(HARTDW),A
	LD	(PLFLSH),A
	LD	(HANEFG),A
	LD	(PCUTFG),A
	LD	(WCUTFG),A
	LD	(OKARFG),A
	LD	(DEMOFG),A
;
	INC	A
	LD	(ITEMNOT),A
;
	LD	A,(ENSVXL)
	LD	(PLXPSL),A
	LD	A,(ENDSYP)
	LD	(PLYPSL),A
;
	CALL	LDTIM0
	JR	NZ,WP2050
;
	LD	HL,NXRMMD
	LD	A,DNJ
	LD	(HLI),A
	LD	A,(DNJNNO)
	LD	(HLI),A
	INC	HL
	LD	A,$50
	LD	(HLI),A
	PUSH	HL
;
	LD	A,(DNJNNO)
	LD	E,A
	SLA	E
	LD	D,$00
	LD	HL,WARPPT
	ADD	HL,DE
	LD	A,(GRNDPT)
	CP	(HL)
	JR	NZ,WP2010
	INC	HL
WP2010
	LD	A,(HL)
	LD	(NXRMMD+2),A
;
	POP	HL
	CP	$64
	LD	A,$48
	JR	NZ,WP2018	;���� ���{�X�����H
	LD	A,$28		; yes ! 2��
WP2018
	LD	(HL),A
;
	XOR	A
	LD	(ITEMNOT),A
;
	CALL	E7CLER
	JP	NXGOTO3
;
WP2050
	LD	HL,PLSTOP
	LD	(HL),$01
;
	PUSH	AF
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	AND	$03
	LD	E,A
	LD	D,B
	LD	HL,WPPLMK
	ADD	HL,DE
	LD	A,(HL)
	LD	(PLCMKI),A
;
	PUSH	BC
	CALL	PLPTSTL
	POP 	BC
;
	LD	HL,ENWRK3
	ADD	HL,BC
	POP	AF
	CP	$40
	JR	NC,WP2060
	AND	$03
	JR	NZ,WP2060
;
	LD	A,(HL)
	CP	$0C
	JR	Z,WP2060
	INC	(HL)	
WP2060
	LD	A,(FRCNT)
	AND	$03
	ADD	A,(HL)
	LD	E,A
	LD	D,B
	LD	HL,WAPCLD
	ADD	HL,DE
	LD	A,(HL)
	LD	(BGPFG),A
	RET
;
;==================================
WARPCD
	DB	$1E,$02,$1E,$62
	DB	$1E,$42,$1E,$22
WARPCYD
	DB	$F8,$FA
WARPCXD
	DB	$00,$06
	DB	$08,$06
	DB	$00,$FA
	DB	$F8,$FA
WARPCDS
	DB	$24,$01
	DB	$24,$01
;- - - - - - - - - - - - - - - - - - -
WARPCS
	LD	HL,ENMOD0
	ADD	HL,BC
	LD	(HL),%11000010
;
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	AND	$01
	LD	(ENCHPT2),A
;
	LD	DE,WARPCD
	CALL	EN2CST
;
	LD	HL,ENMOD0
	ADD	HL,BC
	LD	(HL),%11000001
;
	XOR	A
WPC010
	LD	(ENHELP),A
;
	LD	E,A
	CALL	WARPSUB
;
	LD	A,(ENHELP)
	ADD	A,$02
	AND	$07
	JR	NZ,WPC010
;
	RET
;-----------------------------------------
WARPSUB
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	NOP
	ADD	A,E
	AND	$07	
	LD	E,A
	LD	D,B
	LD	HL,WARPCXD
	ADD	HL,DE
	LD	A,(ENSVXL)
	ADD	A,(HL)
	LD	(ENSVXL),A
	LD	HL,WARPCYD
	ADD	HL,DE
	LD	A,(ENDSYP)
	ADD	A,(HL)
	LD	(ENDSYP),A
;
	LD	DE,WARPCDS
	CALL	EN1CST
;
		jp	ENPSSV
;;;;;;;;	CALL	ENPSSV
;;;;;;;;;
;;;;;;;;	RET
;=======================================
WARPCYD2
	DB	$FA,$FC
WARPCXD2
	DB	$00,$04
	DB	$06,$04
	DB	$00,$FC
	DB	$FA,$FC
WARPCDS2
	DB	$3E,$00
;-----------------------------------
WARPCS2
	LD	HL,ENMOD0
	ADD	HL,BC
	LD	(HL),%11000001
;
	LD	A,(FRCNT)
	RLA
	RLA
	AND	$10
	LD	(ENFLCL),A
;
	LD	A,(ENSVXL)
	LD	(WORKE),A
	LD	A,(ENDSYP)
	LD	(WORKF),A
;
	XOR	A
WPC0102
	LD	(ENHELP),A
;
	LD	E,A
	CALL	WARPSUB2
;
	LD	A,(ENHELP)
	ADD	A,$02
	AND	$07
	JR	NZ,WPC0102
;
	RET
;-----------------------------------------
WARPSUB2
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	NOP
	ADD	A,E
	AND	$07	
	LD	E,A
	LD	D,B
	LD	HL,WARPCXD2
	ADD	HL,DE
	LD	A,(WORKE)
	ADD	A,(HL)
	LD	(ENSVXL),A
	LD	HL,WARPCYD2
	ADD	HL,DE
	LD	A,(WORKF)
	ADD	A,(HL)
	ADD	A,$04
	LD	(ENDSYP),A
;
	LD	DE,WARPCDS2
		jp	EN1CST
;;;;;;;;	CALL	EN1CST
;;;;;;;;;
;;;;;;;;;;	CALL	ENPSSV
;;;;;;;;;
;;;;;;;;	RET
;################################################
;#	�u�[������				#
;################################################
BUMERCD
	DB	$38,$14,$38,$34
	DB	$A4,$14,$FF,$FF
	DB	$38,$54,$38,$74
	DB	$FF,$FF,$A4,$34
;- - - - - - - - - - - - - - - - - - -
BUMERMV
	LD	A,$1
	LD	(BUMEFG),A
;
	LD	DE,BUMERCD
	CALL	EN2CST
;
	CALL	E7STCK
;
	CALL	HABATAKI	;(S)
;
	LD	A,(FRCNT)
	AND	$3
	JR	NZ,BRM010
;
	LD	HL,ENCHPT
	ADD	HL,BC
	LD	A,(HL)
	INC	A
	AND	$3
	LD	(HL),A
BRM010
	LD	A,$08
	LD	(ATCKNO),A
	CALL	CRENENL
;
	CALL	E7MVCL
	CALL	ENBGCK2L
;
	CALL	RODSUB2	;���Ƃ�������`�F�b�N�I
;
	LD	A,(ENSTAT2)
	RST	00
	DW	BRM1000
	DW	BRM2000
;================================================
BRM1000
	CALL	LDTIM0
;;	JR	Z,BRM080
	JR	NZ,BRM1010
;
	LD	A,$08
	CALL	PSERCHL
;
		jp	STATINC
;;;;;;;;	CALL	STATINC
;;;;;;;;	RET
;
BRM1010
;	CP	$01
;	JR	NZ,BRM070
;;
;	CALL	LDTIM1
;	LD	(HL),$C0
;;
;	JP	STATINC
;;
;BRM070
	LD	HL,ENCBFG
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,BRM030
;============================================
BUMERT
	CALL	LDTIM0
	LD	(HL),B
;
;	LD	A,$08
;	CALL	PSERCHL
;;
;	CALL	E7FLST	;(S)
;;
;	LD	A,$07
;	LD	(SOUND1),A	;(S)
;
	CALL	E7FLST	;(S)
;
	LD	A,$07
	LD	(SOUND1),A	;(S)
;
BRM030
	RET
;======================================
BRM2000
;- - Return player - - -
BRM080
	LD	A,(FRCNT)
	AND	$03
	JR	NZ,BRM088
;
	LD	A,$20
	CALL	PSERCHL	;2
;
;	LD	A,(WORK0)
;	LD	HL,ENYSPD
;	ADD	HL,BC
;	SUB	(HL)
;	JR	Z,BRM082
;	BIT	7,A
;	JR	Z,BRM081
;	DEC	(HL)
;	DEC	(HL)
;BRM081
;	INC	(HL)
;BRM082
;	LD	A,(WORK1)
;	LD	HL,ENXSPD
;	ADD	HL,BC
;	SUB	(HL)
;	JR	Z,BRM0822
;	BIT	7,A
;	JR	Z,BRM0812
;	DEC	(HL)
;	DEC	(HL)
;BRM0812
;	INC	(HL)
;BRM0822
;
BRM088
	CALL	CRENPLL
		ret	NC
;;;;;;;;	JR	NC,BRM090
;
		jp	E7CLER
;;;;;;;;	CALL	E7CLER
;;;;;;;;BRM090
;;;;;;;;	RET
;================================================
;BRM2000
;	LD	A,(FRCNT)
;	AND	$00
;	RET	NZ
;;
;	CALL	LDTIM1
;	JR	NZ,BRM2010
;;
;	CALL	STATINC
;	LD	(HL),B
;BRM2010
;	LD	A,$20
;	CALL	PSERCH2L
;;
;	LD	A,(WORK0)
;	LD	HL,ENXSPD
;	ADD	HL,BC
;	LD	(HL),A
;;	SUB	(HL)
;;	JR	Z,BRM282
;;	BIT	7,A
;;	JR	Z,BRM281
;;	DEC	(HL)
;;	DEC	(HL)
;;BRM281
;;	INC	(HL)
;;BRM282
;	LD	A,(WORK1)
;	CPL
;	INC	A
;	LD	HL,ENYSPD
;	ADD	HL,BC
;	LD	(HL),A
;;	SUB	(HL)
;;	JR	Z,BRM2822
;;	BIT	7,A
;;	JR	Z,BRM2812
;;	DEC	(HL)
;;	DEC	(HL)
;;BRM2812
;;	INC	(HL)
;;BRM2822
;	RET
;-----------------------------------
RODSUB2
	LD	A,(DJFLAG)
	AND	A
	RET	NZ
;
	LD	A,(UNITNO)
	CP	ANFLW
	JR	Z,PRT0882
	CP	FLW00
	RET	NZ
;
PRT0882
	LD	HL,ENCBFG
	ADD	HL,BC
	LD	(HL),B
;
;;	CALL	LDTIM1
;;	LD	(HL),B
;
	LD	A,(ENHELP2)
	LD	E,A
	LD	D,B
;
	CALL	BG1CHG
;
	LD	A,(OBJXP)
	ADD	A,$08
	LD	(WORK0),A
	LD	A,(OBJYP)
	ADD	A,$10
	LD	(WORK1),A
;
	LD	A,HNSM
	CALL	EXIDSH
;
	LD	A,$13
	LD	(SOUND3),A	;(S)
	RET
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	���r�[��						%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
KENBMCD
;0
	DB	$00,$00,$08,$20
	DB	$00,$08,$06,$20
;1
	DB	$00,$00,$06,$00
	DB	$00,$08,$08,$00
;2
	DB	$00,$04,$04,$40
	DB	$FF,$FF,$FF,$FF
;3
	DB	$00,$04,$04,$00
	DB	$FF,$FF,$FF,$FF
;--------------------------------------------
KNBMXD
	DB	$00,$00,$FC,$04
KNBMYD
	DB	$01,$01,$00,$00
;- - - - - - - - - - - - - - - - - - - - - - - -
KENBMMV
	LD	HL,BUMEFG
	INC	(HL)
;
	LD	A,(ENSTAT2)
	AND	A
	JR	NZ,KEB1000
;
	LD	A,(PLCMKI)
	LD	E,A
	LD	D,B
	LD	HL,KNBMXD
	ADD	HL,DE
	LD	A,(PLXPSL)
	ADD	A,(HL)
	LD	HL,ENXPSL
	ADD	HL,BC
	LD	(HL),A
	LD	HL,KNBMYD
	ADD	HL,DE
	LD	A,(PLYPSL)
	ADD	A,(HL)
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	(HL),A
;
	LD	HL,ENXSPD
	ADD	HL,BC
	SLA	(HL)
	LD	HL,ENYSPD
	ADD	HL,BC
	SLA	(HL)
;
	LD	HL,ENFLSH
	ADD	HL,BC
	LD	(HL),$FF
;
	LD	A,$3B
	LD	(SOUND1),A	;(S)
;
	JP  	STATINC
;
KEB1000
	CALL	KENBMCS
;
	CALL	E7STCK
;
	LD	A,$01
	LD	(ATCKNO),A
	CALL	CRENENL
;
	CALL	E7MVCL
;
	CALL	ENBGCK2L
;
	LD	HL,ENCBFG
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	NZ,KEB10A0
;
	LD	A,(FRCNT)
	INC	A
	AND	$03
	JR	NZ,KEB1090
;
	LD	A,(ENSVXL)
	LD	(WORK0),A
	LD	A,(ENDSYP)
	LD	(WORK1),A
;
	LD	A,KZNZ
	CALL	EXIDSH
;
	LD	HL,EXTIM0
	ADD	HL,DE
	LD	(HL),$08
;
	LD	A,(ENCHPT2)
	LD	HL,EXSTAT
	ADD	HL,DE
	LD	(HL),A
;
KEB1090
	RET
KEB10A0
	CALL	E7CLER
;
E7FLST
	LD	A,(ENSVXL)
	LD	(WORK0),A
	LD	A,(ENDSYP)
	ADD	A,$3
	LD	(WORK1),A
;
	LD	A,FLSH
		jp	EXIDSH
;;;;;;;;	CALL	EXIDSH
;;;;;;;;	RET
;===============================================
;	���r�[���̃L�����N�^�Z�b�g
;===============================================
KENBMCS
	LD	A,(ENCHPT2)
	RLA
	RLA
	RLA
	AND	%11111000
	LD	E,A
	LD	D,B
	LD	HL,KENBMCD
	ADD	HL,DE
	LD	C,$02
		jp	ENOMST
;;;;;;;;	CALL	ENOMST
;;;;;;;;	RET
;
;===================================================
;=	�u�[��������				  ==
;===================================================
BUMEYACD
;D
	DB	$60,$01,$62,$01
	DB	$62,$21,$60,$21
;U
	DB	$64,$01,$66,$01
	DB	$66,$21,$64,$21
;L
	DB	$68,$01,$6A,$01
	DB	$6C,$01,$6E,$01
;R
	DB	$6A,$21,$68,$21
	DB	$6E,$21,$6C,$21
;
BUMEYA
	LD	HL,ENMOD0
	ADD	HL,BC
	SET	6,(HL)
	SET	7,(HL)
;
	LD	A,(MEGAF)
	CP	$0E
	JP	NZ,E7CLER	;�ዾ�H
;
		LD	A,(WARAFG)
		AND	A		;��炵�׃A�C�e���\���n�e�e�H
		JP	NZ,E7CLER	;	YES --> E7CLER
;
	LD	HL,ENXPSL
	ADD	HL,BC
	LD	(HL),$50
;
	LD	DE,BUMEYACD
	CALL	EN2CST
;
	CALL	M7PTST
;
;;;	CALL	E7STCK
;
	LD	A,(FRCNT)
	AND	$3F
	JR	NZ,BMY000
;
	CALL	E7XYCK
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	(HL),E
BMY000
	CALL	M7CROS
;
	LD	A,(ENSTAT2)
	RST	00
	DW	BMY1000
	DW	BMY2000
	DW	BMY3000
	DW	BMY4000
;------------------------------------
BMY1000
	CALL	E7STCK
;
	LD	E,B
;
	LD	A,(PLYPSL)
	LD	HL,ENSVYL
	SUB	(HL)
	ADD	A,$14+$12
	CP	$28+$24
	CALL	E7MSSB
	RET	NC
;
	LD	A,(BUMENO)
	CP	$00
	JR	Z,BMY1080
	CP	PBUME
	JR	NZ,BMY1090
;
BMY1080
	LD	A,$21
	CALL	MSGCH3
;
		jp	STATINC
;;;;;;;;	CALL	STATINC
;;;;;;;;	RET
;
;------------------------------
MOTO_COL_DAT
	DW	$51F3,$2867	;06 �t�b�N�V���b�g
	DW	$51F3,$2867	;07 �}�W�b�N���b�h
	DW	$11D9,$10CE	;08 �y�K�T�X�̌C
	DW	$1417,$1008	;09 �I�J���i
	DW	$11D9,$10CE	;0A ���b�N���̉H��
	DW	$51F3,$2867	;0B �X�R�b�v
;
BMY1090				;���ɖ߂�
	LD	A,$25
	CALL	MSGCH3
;
		LD	A,(BUMENO)
		SLA	A
		SLA	A
		LD	E,A
		LD	D,$000
		LD	HL,MOTO_COL_DAT-(($006*$002)*$002)
		ADD	HL,DE
		ld	e,l
		ld	d,h
;;10/31;		PUSH	HL
;;10/31;		POP	DE
		LD	HL,OBCGWK+((($007*$004)+$001)*$002)
BMY1090_LOOP
		LD	A,(DE)
		LD	(HLI),A
		INC	DE
		LD	A,L
		AND	$00F
		CP	$00E
		JR	NZ,BMY1090_LOOP
		LD	A,OBJCOL_BITFG
		LD	(CGDMAF),A
;
	CALL	STATINC
	LD	(HL),$03
	RET
;------------------------------
BMY2000
	CALL	E7STCK
;
	CALL	STATINC
;
	LD	A,(MSANSR)
	AND	A
	JR	NZ,BMY2020
;
	LD	A,(ITEMB)
	AND	A
	JR	Z,BMY2020
	CP	PKEN		;���H
	JR	Z,BMY2030	;	YES --> BMY2030
	CP	PTATE		;���H
	JR	Z,BMY2030	;	YES --> BMY2030
	CP	PBULE		;�p���[�u���X���b�g�H
	JR	Z,BMY2030	;	YES --> BMY2030
	CP	PBOMB		;�o�N�_���H
	JR	Z,BMY2030	;	YES --> BMY2030
	CP	POKAR		;�I�J���i�H
	JR	Z,BMY2030	;	YES --> BMY2030
	CP	PMGIC		;���@�̕����L�m�R�H
	JR	Z,BMY2030	;	YES --> BMY2030
	CP	PYAST		;�|��H
	JR	Z,BMY2030	;	YES --> BMY2030
;
	LD	(BUMENO),A
;
	LD	A,PBUME
	LD	(ITEMB),A
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	(HL),A
;
	CALL	LDTIM0
	LD	(HL),$80
;
		ld	a,001
		ld	(ITEMNOT),a
;
	LD	A,$10
	LD	(SOUND4),A	;(S)
	RET
;--------------------------------
BMY2020
	LD	(HL),B
;
	LD	A,$23	;���� ����..
		jp	MSGCH3
;;;;;;;;	CALL	MSGCH3
;;;;;;;;	RET	
;--------------------------------
BMY2030
	LD	(HL),B
;
	LD	A,$27	;����͂ނ肾�ȁI
		jp	MSGCH3
;;;;;;;;	CALL	MSGCH3
;;;;;;;;	RET	
;------------------------------
BMY4000
	CALL	E7STCK
;
	CALL	STATINC
	LD	(HL),$02
;
	LD	A,(MSANSR)
	AND	A
	JR	NZ,BMY4020
;
	LD	HL,ITEMB
	LD	DE,$00 ;ITEMB
BMY4011
	LD	A,(HL) ;ITEMB)
	CP	PBUME
	JR	Z,BMY4012
	INC	HL
	INC	E
	LD	A,E
	CP	$0C
	JR	NZ,BMY4011
;
BMY4012
	LD	A,(BUMENO)
	LD	(HL),A ;ITEMB),A
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	(HL),A
;
	LD	A,PBUME
	LD	(BUMENO),A
;
	CALL	LDTIM0
	LD	(HL),$80
;
		ld	a,001
		ld	(ITEMNOT),a
;
	LD	A,$10
	LD	(SOUND4),A	;(S)
	RET
BMY4020
	LD	(HL),B
;
	LD	A,$23	;���� ����..
		jp	MSGCH3
;;;;;;;;	CALL	MSGCH3
;;;;;;;;	RET	
;------------------------------
BITEMCD
	DB	$00,$17 ;NOTH	EQU	$00
	DB	$84,$17 ;PKEN	EQU	$01
	DB	$80,$17 ;PBOMB	EQU	$02
	DB	$82,$17 ;PBULE	EQU	$03
	DB	$86,$17 ;PTATE	EQU	$04
	DB	$88,$17 ;PYAST	EQU	$05
	DB	$8A,$14 ;PFUCK	EQU	$06
	DB	$8C,$14 ;PROD	EQU	$07
	DB	$98,$17 ;PSHSE	EQU	$08
	DB	$90,$17 ;POKAR	EQU	$09
	DB	$92,$17 ;PHANE	EQU	$0A
	DB	$96,$17 ;PSKOP	EQU	$0B
	DB	$8E,$17 ;PMGIC	EQU	$0C
	DB	$A4,$14 ;PBUME	EQU	$0D
;- - - - - - - - - - - - - - - - - - - - - - -
BMY3000
	CALL	LDTIM0
	JR	NZ,BMY3010
;
		xor	a
		ld	(ITEMNOT),a
;
	CALL	STATINC
	LD	(HL),B
	RET
BMY3010
	CP	$08
	JR	NZ,BMY3020
;
	DEC	(HL)
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	CP	PBUME
	LD	A,$24
	JR	Z,BMY3018
	LD	A,$26
BMY3018
	CALL	MSGCH3
BMY3020
	LD	A,(PLXPSL)
	LD	(ENSVXL),A
;
	LD	A,(PLYPSL)
	SUB	$0C
	LD	(ENDSYP),A
;
	LD	A,(PLZPSL)
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	(HL),A
;
	LD	A,$6C  ;
	LD	(PLCHPT),A
;
	LD	A,$02
	LD	(PLSTOP),A
;
	CALL	DUSHCL
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	LD	(ENCHPT2),A
;
	LD	DE,BITEMCD
	CALL	EN1CST
;
		jp	ENPSSV
;;;;;;;;	CALL	ENPSSV
;;;;;;;;	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	���ʃw�C�z�[			  %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
HEIHOCD
;R
	DB	$6A,$22,$68,$22
	DB	$6E,$22,$6C,$22
;L
	DB	$68,$02,$6A,$02
	DB	$6C,$02,$6E,$02
;U
	DB	$64,$02,$66,$02
	DB	$66,$22,$64,$22
;D
	DB	$60,$02,$62,$02
	DB	$62,$22,$60,$22
;- - - - - -
HIHXSD
	DB	$00,$F4,$0C
HIHYSD
	DB	$00,$0C,$F4
HEIHOMV
	LD	A,(DNJNNO)
	CP	$1F
	JP	Z,BUMEYA	;�u�[��������
;
	LD	DE,HEIHOCD
	CALL	EN2CST
;
	CALL	E7STCK
;
	CALL	E7HNSB
;
	LD	HL,ENMOD3
	ADD	HL,BC
	LD	(HL),%01001000
;
	CALL	E7XYCK
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	A,(HL)
	XOR	$01
	CP	E
	JR	NZ,HIH000
;
	LD	HL,ENMOD3
	ADD	HL,BC
	LD	(HL),%00001000
HIH000
	CALL	CREPKEL
;
	LD	A,(PLCBFG)
	AND	A
		ret	NZ
;;;;;;;;	JR	NZ,HIH090
;
	LD	A,(KEYA1)
	AND	$0F
		ret	Z
;;;;;;;;	JR	Z,HIH090
;
	AND	$03
	LD	E,A
	LD	D,B
	LD	HL,HIHXSD
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
;
	LD	A,(KEYA1)
	RRA
	RRA
	AND	$03
	LD	E,A
	LD	D,B
	LD	HL,HIHYSD
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),A
;
	CALL	E7MVCL
	CALL	ENBGCKL
;
	LD	A,(PLCMKI)
	XOR	$01
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	(HL),A
	RLA
	AND	%00000110
	LD	E,A
	LD	HL,ENCONT
	ADD	HL,BC
	INC	(HL)
	LD	A,(HL)
	RRA
	RRA
	RRA
	RRA
	AND	$01
	OR	E
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;HIH090
;;;;;;;;	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�_���W�����T�����������|�C���g  %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
SWPNXD
;;		         NO  X   Y
	DB	YOK,$11,$C0,$30,$14
SWPNX2
	DB	YOK,$11,$C1,$50,$14
SWPNX3
	DB	YOK,$0F,$F5,$94,$52
;---------------------------------------------
SWIMPMV
	CALL	E7STCK
;
	CALL	LDTIM0
	JR	Z,SWP0F0
	CP	$01
	JR	NZ,SWP1010
;
	LD	A,(PLMODE)
	LD	(WPLMODE),A
;
	CALL	SWP100
SWP1010
	LD	A,$02
	LD	(PLSTOP),A
	LD	(ITEMNOT),A
;
	LD	A,$04
	LD	(PLDSYD),A
	RET
;
SWP0F0
	LD	A,(PLMODE)
	CP	PSWIM
	JR	NZ,SWP000
;
	LD	A,(PLSTAT)
	AND	A
	JR	Z,SWP000
;
	CALL	E7XCHK
	ADD	A,$0C
	CP	$18
	JR	NC,SWP000
	CALL	E7YCHK
	ADD	A,$0C
	CP	$18
	JR	NC,SWP000
;
		XOR	A		;�G���A���Ő���������
		LD	(OKARFG),A	;	�I�J���i�t���O���n�e�e
;
	CALL	LDTIM0
	LD	(HL),$10
;
SWP000
	RET
;----------------------------------
SWP100
	LD	DE,SWPNX3
	LD	A,(GRNDPT)
	CP	$EA
	JR	Z,SWP010	;�����ނ肨�₶�I
;
	LD	DE,SWPNXD
	LD	A,(PLXPSL)
	CP	$30
	JR	C,SWP010
	LD	DE,SWPNX2
SWP010
	LD	HL,NXRMMD
	PUSH	BC
;
	LD	C,$05
SWP018
	LD	A,(DE)
	INC	DE
	LD	(HLI),A
	DEC	C
	JR	NZ,SWP018
;
	POP	BC
	CALL	E7CLER
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
	JP	NXGOTO4
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�L�c�l�� 				%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
FOXDOGCD
	DB	$58,$01,$5A,$01
	DB	$58,$01,$5C,$01
;
	DB	$5A,$21,$58,$21
	DB	$5C,$21,$58,$21
;- - - - - - - - - - - - - - - - - -
FOXDOGMV
	LD	HL,ENLIFE
	ADD	HL,BC
	LD	(HL),$4C
;
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	NZ,FXT000
;
	LD	A,(ENCHPT2)
	ADD	A,$02
	LD	(ENCHPT2),A
FXT000
	LD	DE,FOXDOGCD
	CALL	EN2CST
;
	CALL	E7STCK
;
	CALL	ENHNCL
;
	CALL	E7ZCLC
	LD	HL,ENZSPD
	ADD	HL,BC
	DEC	(HL)
	DEC	(HL)
;
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	AND	%10000000
	LD	(ENHELP),A
	JR	Z,FXT010
;
	LD	(HL),B
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),B
FXT010
	LD	A,(UTAFLG)
	AND	A
	JR	Z,FXS100
;
	LD	HL,ENMOD0
	ADD	HL,BC
	SET	6,(HL)
;
	LD	A,(MAINDX)
	LD	E,A
	LD	D,B
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	A,(ENSVXL)
	LD	E,$00
	CP	(HL)
	JR	C,FXT060
;
	INC	E
FXT060
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	(HL),E
;
	LD	A,(FRCNT)
	AND	$3F
	JR	NZ,FXS080
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),$0C
FXS080
	CALL	FXPTST
	JR	FXS120
FXS100
	CALL	CRKNENL
;
FXS120
	LD	HL,ENFLSH
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,FXT020
;
	CP	$08
	JR	NZ,FXT018
;
	CALL	STATINC
	LD	A,$02
	LD	(HL),A
	LD	(ENSTAT2),A
;
	CALL	LDTIM0
	LD	(HL),$10
;
FXT018
FXT020
	LD	A,(ENSTAT2)
	CP	$02
	JR	NC,FXT050
;
	CALL	E7MSCK
	JR	NC,FXT050
;
	LD	A,(UTAFLG)
	AND	A
	LD	A,$20
	JR	Z,FXT030
	LD	A,$96	;�������p�I
	CALL	MSGCH2
	JR	FXT050
FXT030
	CALL	MSGCHK
FXT050
	LD	A,(UTAFLG)
	AND	A	
	RET	NZ
;
	LD	A,(ENSTAT2)
	RST	00
	DW	FXSTOP
	DW	FXWALK
	DW	FXATWT
	DW	FXATCK
;------------------------------------
FXWKXS
	DB	$02,$08,$0C,$08
	DB	$FE,$F8,$F4,$F8
;------------------------------------
FXSTOP
	XOR	A
	CALL	ENPTST
	CALL	LDTIM0
	JR	NZ,FXS010
;
	CALL	RNDSUB
	AND	$07
	LD	E,A
	LD	D,B
	LD	HL,FXWKXS
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
;
	LD	A,E
	AND	$04
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	(HL),A
;
	CALL	RNDSUB
	AND	$07
	LD	E,A
	LD	HL,FXWKXS
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),A
;
	CALL	LDTIM0
	CALL	RNDSUB
	AND	$1F
	ADD	A,$30
	LD	(HL),A
;
	CALL	STATINC
FXS010
	JP	FXPTST
;------------------------------------
FXWALK
	CALL	E7MVCL
	CALL	ENBGCKL
;
	LD	A,(ENHELP)
	AND	A
	JR	Z,FXW020
;
	CALL	LDTIM0
	JR	NZ,FXW010
;
	LD	(HL),$30
	CALL	STATINC
	LD	(HL),B
	RET
FXW010
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),$08
;
	LD	HL,ENZPSL
	ADD	HL,BC
	INC	(HL)
FXW020
FXPTST
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	AND	$01
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;	RET
;
;------------------------------------
FXATWT
	CALL	LDTIM0
	JR	NZ,FAW090
;
	CALL	STATINC
;
	LD	A,$24
	CALL	PSERCHL
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),$18
;
	CALL	E7XCHK
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	A,E
	LD	(HL),A
;
FAW090
	LD	A,(FRCNT)
	RRA
	RRA
	AND	$01
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;	RET
;;
;------------------------------------
FXATCK
	CALL	E7MVCL
	CALL	ENBGCKL
;
	LD	HL,ENMOD0
	ADD	HL,BC
	LD	(HL),%01010010
;
	CALL	CRENPLL
;
	LD	HL,ENMOD0
	ADD	HL,BC
	LD	(HL),%10010010
;
	LD	A,(ENHELP)
	AND	A
	JR	Z,FXAT10
;
	CALL	STATINC
	LD	(HL),B
;
	CALL	LDTIM0
	LD	(HL),$20
FXAT10
	RET
;
;+----------------------------------------------+
;|	���F�Ɍ���y��				|
;+----------------------------------------------+
SEIR_COL_DAT
		DW	$2680,$6395
		DW	$3A20,$6B75
		DW	$51A0,$7335
		DW	$7D08,$7F18
		DW	$78AD,$7EF9
		DW	$5C50,$76DA
		DW	$4012,$6ABB
		DW	$3015,$66BC
		DW	$1417,$5EBD
		DW	$04D7,$56FD
		DW	$0537,$571D
		DW	$0997,$5B3D
		DW	$09F5,$5B5C
		DW	$0A10,$5B5A
		DW	$064B,$5779
		DW	$02A0,$5795
;
SEIR_COL_SET
		LD	A,(CGBFLG)
		AND	A
		RET	Z
		LD	A,(FADEMDFG)
		LD	A,(SBHR)
		CP	$04
		RET	NZ
;
		LD	A,(FRCNT)
		SRL	A
		AND	%00111100
		LD	E,A
		LD	D,$000
		LD	HL,SEIR_COL_DAT
		ADD	HL,DE
		LD	DE,OBCGWK+$034		; �U�|�Q����
;NOT;		LD	DE,OBCGWK+$00C
;;;KK;;;		LD	DE,OBCGWK+((($007*$004)+$002)*$002)
SEIR_COL_LOP
		LD	A,(HLI)
		LD	(DE),A
		INC	DE
		LD	A,E
		AND	$003
		JR	NZ,SEIR_COL_LOP
		LD	A,OBJCOL_BITFG
		LD	(CGDMAF),A
		RET
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�Z�C���[���y��f��					%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
SEIRXD
	DB	$60,$78,$78,$60
	DB	$40,$28,$28,$40
SEIRYD
	DB	$20,$38,$58,$78
	DB	$78,$58,$38,$20
;
SEIRENMV
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JP	NZ,SEIRENMV2
;
	LD	A,C
	LD	(SEINDX),A
;
	LD	A,(DJSVBF)
	AND	%00010000
	JP	NZ,E7CLER
;
;;;KK;;;		LD	A,(ENSTAT2)
;;;KK;;;		CP	$002
;;;KK;;;		JR	C,SEIR_PASS
;;;KK;;;		CALL	SEIR_COL_SET
;;;KK;;;;
;;;KK;;;SEIR_PASS
	LD	A,(ENSTAT2)
	RST	00
	DW	SEI1000
	DW	SEI2000
	DW	SEI3000
	DW	SEI4000
	DW	SEI5000
;=========================================
SEI1000
	LD	A,(ONPUFG)
	AND	%00000100
	RET	Z
;
	LD	A,(FUESLPT)
	CP	$00
	RET	NZ
;
	LD	A,(OKARFG)
	CP	$01
	RET	NZ
;
	CALL	SOUNDCLR	;(S)
;
	CALL	LDTIM0
	LD	(HL),$30
;
	XOR	A
	LD	(SEIRENFG),A
		jp	STATINC
;;;;;;;;	CALL	STATINC
;;;;;;;;	RET
;=========================================
SEI2000
	LD	A,$02
	LD	(PLSTOP),A
	LD	(ITEMNOT),A
;
	CALL	LDTIM0
		ret	NZ
;;;;;;;;	JR	NZ,SEI2010
;
		jp	STATINC
;;;;;;;;	CALL	STATINC
;;;;;;;;SEI2010
;;;;;;;;	RET
;=========================================
SEI3000
	LD	A,$02
	LD	(PLSTOP),A
;
	CALL	LDTIM0
	RET	NZ
;
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	INC	(HL)
	CP	$08
	JR	NZ,SEI3010
;
	LD	(HL),B
;
	CALL	LDTIM0
	LD	(HL),$40
;
	JP  	STATINC
SEI3010
	CALL	SGAKKIST
;
	CALL	LDTIM0
	LD	(HL),$20
	RET
;=========================================
SEI4000
	LD	A,$02
	LD	(PLSTOP),A
;
	CALL	LDTIM0
		ret	NZ
;;;;;;;;	JR	NZ,SEI4010
;
	LD	E,$41
	LD	HL,WARPSV+02
SEIS08
	LD	A,(HLI)
	AND	%00000010
	JR	Z,SEIS10
	INC	E
	LD	A,E
	CP	$47
	JR	NZ,SEIS08
SEIS10
	LD	A,E
	LD	(SOUND4),A	;(S)
	LD	(SEIRENFG2),A	;(S)
;
	LD	A,$FF
	LD	(OKARFG),A
;
	XOR	A
	LD	(BGMCNT),A
	LD	(BGMCNT2),A
;
		jp	STATINC
;;;;;;;;	CALL	STATINC
;;;;;;;;SEI4010
;;;;;;;;	RET
;
;=========================================
SEI5000
	RET
;
;========================================
SGAKKIST
SEIR010	
	LD	(ENHELP),A
;
	LD	E,A
	LD	D,B
	LD	HL,WARPSV
	ADD	HL,DE
	LD	A,(HL)
	AND	%00000010
	JR	Z,SEIR080
;
	LD	A,SEIREN
	CALL	ENIDSHL
	RET	C
;
	LD	A,$2B
	LD	(SOUND3),A	;(S)
;
	PUSH	BC
;
	LD	A,(ENHELP)
	LD	C,A
	LD	HL,SEIRXD
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENXPSL
	ADD	HL,DE
	ADD	A,$08
	LD	(HL),A
;
	LD	HL,SEIRYD
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	A,C
	LD	HL,ENCHPT
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,ENWRK0
	ADD	HL,DE
	INC	(HL)
;
	POP	BC
SEIR080	
;
SEIR100
	RET
;
;======================================
SEIRENCD
	DB	$50,$06,$52,$06
	DB	$54,$06,$56,$06
	DB	$58,$06,$5A,$06
	DB	$5C,$06,$5E,$06
	DB	$60,$06,$62,$06
	DB	$64,$06,$66,$06
	DB	$68,$06,$6A,$06
	DB	$6C,$06,$6E,$06
;
SEIRENMV2
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	CP	$02
	JP	Z,SHAHEN
;
	LD	A,(ENSTAT2)
	AND	A
	JR	NZ,SEI2200
;
		CALL	SEIR_COL_SET
;
	LD	A,(SEIRENFG)
	CP	$03
	JR	Z,SEI2100
;
	LD	HL,ENCHPT2
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	XOR	(HL)
	AND	$03
	RET	Z
;
	LD	DE,SEIRENCD
		jp	EN2CST
;;;;;;;;	CALL	EN2CST
;;;;;;;;	RET
SEI2100
	LD	A,(ENCHPT2)
	CP	$07
	JP	NZ,E7CLER
;
	LD	E,8
	LD	HL,WARPSV
SEI20E0
	LD	A,(HLI)
	AND	%00000010
	JR	Z,SEI1200	;�W�y�������H
	DEC	E	
	JR	NZ,SEI20E0
;				;YES !
	LD	A,(DJSVBF)
	AND	%00010000
	JP	NZ,E7CLER
;
	CALL	LDTIM0
	LD	(HL),$A0
;
		jp	STATINC
;;;;;;;;	CALL	STATINC
;;;;;;;;	RET
;=======================================
SEI1200
	XOR	A
	LD	(SEIRENFG),A
	JP	E7CLER
;=======================================
SEI2200
	LD	A,$02
	LD	(PLSTOP),A
	LD	(ITEMNOT),A
;
	CALL	LDTIM0
	JP	NZ,SEI2250
;
	LD	(TILTXD),A
	LD	(SEIRENFG),A
;
;--------------------------------------------
;	�����Ȃ�^�}�S�i�o�����j
;--------------------------------------------
;(CGB)	LD	A,MEGGB
;(CGB)	LD	(BGUNDT+$11+$25),A
;(CGB);
;(CGB)	LD	A,MEGGC
;(CGB)	LD	(BGUNDT+$11+$35),A
;
		LD	HL,BGUNDT+$11+$25
		LD	A,MEGGB		; �テ�j�b�g
		LD	(HL),A
		LD	A,$19|UNIT_TRAN_BIT
		CALL	Unit_change	; �o���N�Q���j�b�g��������
;
		LD	HL,BGUNDT+$11+$35
		LD	A,MEGGC		; �����j�b�g
		LD	(HL),A
		LD	A,$19|UNIT_TRAN_BIT
		CALL	Unit_change	; �o���N�Q���j�b�g��������
;--------------------------------------------
;
	LD	A,$50
	LD	(OBJXP),A
	LD	A,$20
	LD	(OBJYP),A
;
	CALL	OBJBG
;
		LD	A,(CGBFLG)
		AND	A
		JR	Z,SEI2200_PASS
		PUSH	BC
		LD	A,MEGGB
		LD	(UNTATR),A
		LD	A,$19
		CALL	BG1UNIT_ATR_SUB
		LD	A,(VRAMH)
		LD	H,A
		LD	A,(VRAML)
		LD	L,A
		PUSH	HL
		LD	DE,$0040
		ADD	HL,DE
		LD	A,H
		LD	(VRAMH),A
		LD	A,L
		LD	(VRAML),A
		LD	A,MEGGC
		LD	(UNTATR),A
		LD	A,$19
		CALL	BG1UNIT_ATR_SUB
		POP	HL
		LD	A,H
		LD	(VRAMH),A
		LD	A,L
		LD	(VRAML),A
		POP	BC
SEI2200_PASS
;
	LD	HL,VRAMD+1
	LD	A,(VRAMD)
	LD	E,A
	ADD	A,07
	LD	(VRAMD),A
	LD	D,$00
;
	ADD	HL,DE
;
	LD	A,(VRAMH)
	LD	(HLI),A
	LD	A,(VRAML)
	LD	(HLI),A
	LD	A,$83
	LD	(HLI),A
	LD	A,$7F
	LD	(HLI),A
	LD	A,$0F
	LD	(HLI),A
	LD	A,$7E
	LD	(HLI),A
	LD	A,$1F
	LD	(HLI),A
;
	LD	A,(VRAMH)
	LD	(HLI),A
	LD	A,(VRAML)
	INC	A
	LD	(HLI),A
	LD	A,$83
	LD	(HLI),A
	LD	A,$7F
	LD	(HLI),A
	LD	A,$0F
	LD	(HLI),A
	LD	A,$7E
	LD	(HLI),A
	LD	A,$1F
	LD	(HLI),A
	LD	(HL),B
;
	CALL	SOUNDCLR
;
	LD	A,$23
	LD	(SOUND1),A	;(S)
;
	CALL	HAHENST
;
	CALL	BBSDST	;(S)
;
		LD	DE,OBCGWK+$00C
		LD	HL,SVBK
SEI2200_LOOP
		LD	(HL),$002
		LD	A,(DE)
		LD	(HL),$000
		LD	(DE),A
		INC	E
		LD	A,E
		AND	$003
		JR	NZ,SEI2200_LOOP
		LD	A,OBJCOL_BITFG
		LD	(CGDMAF),A
;
	JP	E7CLER
SEI2250
	LD	E,$01
	AND	$04
	JR	Z,SEI2260
	LD	E,$FF
SEI2260
	LD	A,E
	LD	(TILTXD),A
	RET
;===================================
SHAHENCD
	DB	$16,$00
	DB	$16,$20
	DB	$16,$60
	DB	$16,$40
;
SHAHEN
	LD	DE,SHAHENCD
	CALL	EN1CST
;
	CALL	E7MVCL
;
	LD	HL,ENYSPD
	ADD	HL,BC
	INC	(HL)
;
	CALL	LDTIM0
	LD	(ITEMNOT),A
	JR	Z,SHAH10
;
	LD	A,$02
	LD	(PLSTOP),A
	RET
;==========================================
SHAH10
	LD	HL,GRRMSV+$06
	SET	4,(HL)
	LD	A,(HL)
	LD	(DJSVBF),A
;
	JP	E7CLER
;======================================
HAHSXD
	DB	$00,$04,$08,$00,$08,$00,$04,$08
HAHSYD
	DB	$00,$00,$00,$04,$04,$08,$08,$08
HAHSXS
	DB	$F0,$FC,$10,$F0,$10,$F0,$04,$10
HAHSYS
	DB	$F0,$E8,$F0,$F8,$F8,$08,$0C,$08
;- - - - - - - - - - - - - - - - - - - - - - - - -
HAHENST
	XOR	A
HAHS10
	LD	(ENHELP),A
;
	LD	A,SEIREN
	CALL	ENIDSHL
	RET	C
;
	LD	HL,ENWRK0
	ADD	HL,DE
	LD	(HL),$02
;
	CALL	RNDSUB
	AND	$1F
	ADD	A,$30
	LD	HL,ENTIM0
	ADD	HL,DE
	LD	(HL),A
;
	PUSH	BC
;
	LD	A,(ENHELP)
	LD	C,A
	LD	HL,HAHSXD
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENXPSL
	ADD	HL,DE
	ADD	A,$54
	LD	(HL),A
	LD	HL,HAHSYD
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENYPSL
	ADD	HL,DE
	ADD	A,$3C
	LD	(HL),A
	LD	HL,HAHSXS
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,DE
	LD	(HL),A
	LD	HL,HAHSYS
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENYSPD
	ADD	HL,DE
	SUB	$08
	LD	(HL),A
;
	POP	BC
;
	LD	A,(ENHELP)
	INC	A
	CP	$08
	JR	NZ,HAHS10
	RET
;������������������������������������������������������������������������
;��	ze8 �Ƀv���O�������ړ�					       ��
;������������������������������������������������������������������������
;(CGB);%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;(CGB);%					      %
;(CGB);%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;(CGB)BOOKCD_CGB0
;(CGB)		DB	$58,$00
;(CGB)BOOKCD_CGB1
;(CGB)		DB	$58,$01
;(CGB)BOOKCD_CGB2
;(CGB)		DB	$58,$02
;(CGB)BOOKCD_CGB3
;(CGB)		DB	$58,$03
;(CGB)BOOKCD_CGB4
;(CGB)		DB	$58,$01
;(CGB);
;(CGB)BOOKCD_CGB
;(CGB)		DW	BOOKCD_CGB0,BOOKCD_CGB1,BOOKCD_CGB2,BOOKCD_CGB3
;(CGB)		DW	BOOKCD_CGB2,BOOKCD_CGB3,BOOKCD_CGB0,BOOKCD_CGB4
;(CGB);
;(CGB)BOOKCD
;(CGB)	DB	$58,$00
;(CGB)BOOKCD2
;(CGB)	DB	$5A,$00,$5A,$20
;(CGB);----------------------------------------
;(CGB)BOOKMV
;(CGB)	LD	A,(ENCHPT2)
;(CGB)	AND	A
;(CGB)	JR	Z,BOK000
;(CGB);
;(CGB)	LD	DE,BOOKCD2-4
;(CGB)	CALL	EN2CST
;(CGB)	JR	BOK010
;(CGB)BOK000
;(CGB);
;(CGB)		LD	A,(CGBFLG)
;(CGB)		AND	A
;(CGB)		JR	Z,BOK000_900
;(CGB)		LD	HL,BOOKCD_CGB
;(CGB)		PUSH	BC
;(CGB)		SLA	C
;(CGB)		RL	B
;(CGB)		ADD	HL,BC
;(CGB)		LD	A,(HLI)
;(CGB)		LD	E,A
;(CGB)		LD	A,(HL)
;(CGB)		LD	D,A
;(CGB)		POP	BC
;(CGB)		CALL	EN1CST
;(CGB)		JR	BOK010
;(CGB)BOK000_900
;(CGB);
;(CGB)	LD	DE,BOOKCD
;(CGB)	CALL	EN1CST
;(CGB);
;(CGB)BOK010
;(CGB)	CALL	E7STCK
;(CGB);
;(CGB)	LD	A,(ENSTAT2)
;(CGB)	RST	00
;(CGB)	DW	BOK1000
;(CGB)	DW	BOK2000
;(CGB);--------------------------------------
;(CGB)BOKMSDT
;(CGB)	DB	$02,$04,$06,$00,$0A,$08,$0C,$0D
;(CGB);
;(CGB)BOK1000
;(CGB)	LD	A,(GMMODE)
;(CGB)	CP	GMAP
;(CGB)	JR	Z,BOK1008
;(CGB);
;(CGB)	XOR	A
;(CGB)	LD	(GMAPFG),A
;(CGB)BOK1008
;(CGB)	XOR	A
;(CGB)	CALL	ENPTST
;(CGB);
;(CGB)	CALL	E7MSCK
;(CGB)	RET	NC
;(CGB);
;(CGB)	LD	E,$00
;(CGB)	LD	A,(ENSVXL)
;(CGB)	CP	$20
;(CGB)	JR	C,BOK1010
;(CGB)	INC	E
;(CGB)	CP	$40	
;(CGB)	JR	C,BOK1010
;(CGB)	INC	E
;(CGB)	CP	$70	
;(CGB)	JR	C,BOK1010
;(CGB);
;(CGB)	INC	E
;(CGB)BOK1010
;(CGB)	LD	A,(ENSVYL)
;(CGB)	CP	$40
;(CGB)	JR	C,BOK1020
;(CGB);
;(CGB)	LD	A,E
;(CGB)	ADD	A,$04
;(CGB)	LD	E,A
;(CGB)BOK1020
;(CGB)	LD	D,B
;(CGB)	LD	HL,BOKMSDT
;(CGB)	ADD	HL,DE
;(CGB)	LD	A,(HL)
;(CGB)	LD	HL,ENWRK0
;(CGB)	ADD	HL,BC
;(CGB)	LD	(HL),A
;(CGB)	CALL	MSGCH3
;(CGB);
;(CGB)	CALL	STATINC
;(CGB)	RET
;(CGB);--------------------------------------
;(CGB)BOK2000
;(CGB)	LD	A,$01
;(CGB)	CALL	ENPTST
;(CGB);
;(CGB)	LD	A,(MSGEFG)
;(CGB)	AND	A
;(CGB)	RET	NZ
;(CGB);
;(CGB)	CALL	STATINC
;(CGB)	LD	(HL),B
;(CGB);
;(CGB)	LD	A,(MSANSR)
;(CGB)	AND	A
;(CGB)	JR	NZ,BOK2090
;(CGB);
;(CGB)	LD	HL,ENWRK0
;(CGB)	ADD	HL,BC
;(CGB)	LD	A,(HL)
;(CGB)	INC	A
;(CGB)	LD	E,A
;(CGB)	CP	$0E
;(CGB)	JR	NZ,BOK2030	;Lv.9 �閧�H
;(CGB);				;YES !
;(CGB)	LD	A,(MEGAF)
;(CGB)	CP	$0E
;(CGB)	JR	NZ,BOK2030	;�ዾ�H
;(CGB);				;YES !
;(CGB)	LD	A,(DJSVBF)
;(CGB)	AND	%00100000
;(CGB)	JR	NZ,BOK2028	;���߂āH
;(CGB);				;YES !
;(CGB)	CALL	E7SVST
;(CGB);
;(CGB)	CALL	RNDSUB
;(CGB)	RLA
;(CGB)	RLA
;(CGB)	RLA
;(CGB)	AND	%00011000
;(CGB)	LD	(L9NZFG),A
;(CGB)BOK2028
;(CGB)	LD	A,(L9NZFG)
;(CGB)	RRA
;(CGB)	RRA
;(CGB)	RRA
;(CGB)	AND	$03
;(CGB)	ADD	A,$17	;17 ���� 1A
;(CGB)	LD	E,A
;(CGB);;	LD	E,$0F
;(CGB)BOK2030
;(CGB)	LD	A,E
;(CGB)	CP	$0D
;(CGB)	JR	NZ,BOK2040	;�n�}�H
;(CGB);				;YES !
;(CGB)	XOR	A
;(CGB)	LD	(SBHR),A
;(CGB)	LD	(SBCNT),A
;(CGB);
;(CGB)	LD	(ITMODE),A
;(CGB)	LD	A,GMAP
;(CGB)	LD	(GMMODE),A
;(CGB);
;(CGB)	LD	A,$01
;(CGB)	LD	(GMAPFG),A
;(CGB)	RET	
;(CGB)BOK2040
;(CGB)	CALL	MSGCH3
;(CGB)	RET
;(CGB)BOK2090
;(CGB)	XOR	A
;(CGB)	JP	ENPTST
;======================================================
GARAMV
	LD	A,(DJSVBF)
	AND	%00100000
	JP	NZ,E7CLER
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JP	NZ,TAMASII
;
	LD	A,(ENSTAT2)
	RST	00
	DW	GAR1000
	DW	GAR2000
	DW	GAR3000
	DW	GAR4000
	DW	GAR5000
;--------------------------------------------
GARACD
	DB	$60,$07,$62,$07
;- - - - - - - - - - - - - - - - - - - -
;--------------------------------------------
GAR1000
	LD	A,C
	LD	(BSINDX),A
;
	LD	HL,ENXPSL
	ADD	HL,BC
	LD	(HL),$50
;
	CALL	GARACS
;-- POWDR CHECK ---
	LD	A,(ONPUFG)
	AND	%00000001
	RET	Z
;
	LD	A,(OKARFG)
	CP	$01
	RET	NZ
;
	LD	A,(FUESLPT)
	CP	$02
	RET	NZ	
;
	LD	A,KAZAM
	CALL	ENIDSHL
;
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),$94
;
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),$D8
;
	LD	HL,ENWRK0
	ADD	HL,DE
	INC	(HL)
;
	LD	HL,ENMOD0
	ADD	HL,DE
	LD	(HL),%11000001
;
	LD	A,$55
	LD	(SOUND4),A	;(S)
;
	JP	STATINC
GAR1010
	RET
;--------------------------------------------
GAR2000
GARACS
	LD	DE,GARACD
	CALL	EN2CST
;
		jp	M7CROS
;;;;;;;;	CALL	M7CROS
;;;;;;;;	RET
;--------------------------------------------
GAR3000
	LD	A,$02
	LD	(PLSTOP),A
	LD	(ITEMNOT),A
;
	CALL	GARACS
;
	CALL	LDTIM0
	JR	NZ,GAR3010
;
	LD	(HL),$A0
;
	CALL	STATINC
;
	LD	A,BOMBR
	CALL	ENIDSHL
;
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	A,(WORK0)
	LD	(HL),A	
;
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	A,(WORK1)
	LD	(HL),A	
;
	LD	HL,ENTIM0
	ADD	HL,DE
	LD	(HL),$20
GAR3010
	RET
;--------------------------------------------
GARACD2
	DB	$F0,$00,$64,$03
	DB	$00,$00,$66,$03
	DB	$00,$08,$68,$03
;
GAR4000
	LD	A,$02
	LD	(PLSTOP),A
	LD	(ITEMNOT),A
;
	LD	HL,GARACD2
	LD	C,$03
	CALL	ENOMST
;
	CALL	LDTIM0
	JP	Z,GAR4030
	CP	$70
	JR	NZ,GAR4020
;
	LD	A,$10
	LD	(SOUND4),A	;(S)
GAR4020
	RET
GAR4030
	LD	A,(PLYPSL)
	PUSH	AF
	LD	A,$10
	LD	(PLYPSL),A
	LD	A,$6D
	CALL	MSGCH2
	POP	AF
	LD	(PLYPSL),A
;
	JP	STATINC
;--------------------------------------------
GAR5000
	LD	A,$02
	LD	(PLSTOP),A
	LD	(ITEMNOT),A
;
	LD	HL,GARACD2
	LD	C,$03
	CALL	ENOMST
;
	LD	A,(MSGEFG)
	AND	A
		ret	NZ
;;;;;;;;	JR	NZ,GAR5010
;
	LD	A,NIWAX
	CALL	ENIDSHL
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
	LD	A,$01
	LD	(NIWATFG),A
	XOR	A
	LD	(ITEMNOT),A
;
	CALL	E7SVST
;
	JP	E7CLER
;;;;;;;;GAR5010
;;;;;;;;	RET
;======================================================
TAMASICD
	DB	$6A,$06
	DB	$6C,$06
	DB	$6E,$06
TMSICD
	DB	2,2,1,1
TMSIMK
	DB	$4,$4,$4,$4,$4,$4,$4,$4
	DB	$5,$6,$7,$8,$7,$6,$5,$4
	DB	$4,$4,$3,$2,$1,$0,$1,$2
	DB	$3,$4,$5,$6,$7,$8,$8,$8
	DB	$9,$A,$B,$C,$C,$C,$B,$A
	DB	$9,$8,$7,$6,$5,$4,$5,$6
	DB	$7,$8,$9,$A,$B,$B,$A,$9
	DB	$8,$7,$6,$5,$4,$3,$2,$1
	DB	$0,$1,$2,$3,$4,$4,$4,$4
	DB	$4,$4,$4,$4,$4,$4,$4,$4
	DB	$4,$4,$4,$4,$4,$4,$4,$4
	DB	$4,$4,$4,$4,$4,$4,$4,$4
	DB	$4,$4,$4,$4,$4,$4,$4,$4
TMSIYS
	DB	$00,$03,$06,$07
TMSIXS
	DB	$08,$07,$06,$03
	DB	$00,$FD,$FA,$F9
	DB	$F8,$F9,$FA,$FD
	DB	$00,$03,$06,$07
;- - - - - - - - - - - - - - - -
TAMASII
	LD	A,(FRCNT)
	RLA
	RLA
	AND	$10
	LD	(ENFLCL),A	
;
	LD	DE,TAMASICD
	CALL	EN1CST
;
	CALL	E7STCK
;
	CALL	LDTIM0
	JR	Z,TMSI010
;
	CP	$01
	JP	Z,E7CLER
;
	RRA
	RRA
	RRA
	AND	$03
	LD	E,A
	LD	D,B
	LD	HL,TMSICD
	ADD	HL,DE
	LD	A,(HL)
	JP  	ENPTST	
TMSI010
	LD	A,$02
	LD	(PLSTOP),A
	LD	(ITEMNOT),A
;
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	INC	A
	LD	(HL),A
	AND	$07
	JR	NZ,TMSI020
;
	LD	HL,ENWRK1
	ADD	HL,BC
	INC	(HL)
	LD	A,(HL)
	CP	$49
	JR	NZ,TMSI020
;
	LD	A,(BSINDX)
	LD	E,A
	LD	D,B
	LD	HL,ENSTAT
	ADD	HL,DE
	INC	(HL)
;
	LD	HL,ENFLSH
	ADD	HL,DE
	LD	(HL),$40
;
	LD	HL,ENTIM0
	ADD	HL,DE
	LD	(HL),$80
	JP  	E7CLER
TMSI020
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	E,(HL)
	LD	D,B
	LD	HL,TMSIMK
	ADD	HL,DE
	LD	E,(HL)
;
	LD	HL,TMSIXS
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
	LD	HL,TMSIYS
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),A
;
	CALL	E7MVCL
;
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	AND	$07
	JR	NZ,TMSI030
;
	LD	A,KAZAM
	CALL	ENIDSHL
	RET	C
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
	LD	HL,ENWRK0
	ADD	HL,DE
	LD	(HL),$01
;
	LD	HL,ENTIM0
	ADD	HL,DE
	LD	(HL),$1F
TMSI030
	RET
;======================================================
LUIJICD
	DB	$60,$00,$62,$00
	DB	$64,$00,$66,$00
	DB	$62,$20,$60,$20
	DB	$66,$20,$64,$20
;
	DB	$68,$00,$6A,$00
	DB	$6C,$00,$6E,$00
	DB	$6A,$20,$68,$20
	DB	$6E,$20,$6C,$20
LTORICD
	DB	$70,$03,$72,$03
	DB	$74,$03,$76,$03
	DB	$72,$23,$70,$23
	DB	$76,$23,$74,$23
; - - - - - - - - - - - - - - - - - - -
PWSXAD2
	DB	$F2,$0E
; - - - - - - - - - - - - - - - - - - -
LUIJIMV
	LD	HL,ENMOD0
	ADD	HL,BC
	LD	(HL),%11010010
;
	LD	DE,LUIJICD
	CALL	EN2CST
;
	LD	HL,ENWRK2
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	NZ,LIJ00F0
;
	INC	(HL)
;
	LD	A,$57
	LD	(SOUND4),A	;(S)
LIJ00F0
		LD	A,(NIWATFG)	;�j���g����
		AND	A		;	�I�v�V�����ɂ��Ă�H
		JR	NZ,LIJ00F0_PASS	;	YES --> LIJ00F0_PASS
;
	LD	A,(WARPSV+$06)
	AND	A	; Lv.7 cleard?
	JP	NZ,LIJFLY	;���̌��Ăɂ��ꂽ�H
;
LIJ00F0_PASS
	CALL	E7STCK
;
	CALL	M7CROS
;
	LD	A,(FRCNT)
	AND	$7F
	JR	NZ,LIJ1008
;
	CALL	RNDSUB
	AND	$02
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	(HL),A
;
LIJ1008
	LD	A,(FRCNT)
	LD	E,$00
	AND	%00110000
	JR	Z,LIJ1010
	INC	E
LIJ1010
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	A,E
	ADD	A,(HL)
	CALL	ENPTST
;
	LD	A,(FRCNT)
	AND	%00111111
	CP	%00001111
	JR	NZ,LIJ1020
;
	LD	A,POWDR
	CALL	ENIDSHL
	JR	C,LWS090
;
	PUSH	BC
;
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	C,(HL)
	SRL	C
;
	LD	HL,PWSXAD2
	ADD	HL,BC
;
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
	LD	HL,ENTIM0
	ADD	HL,DE
	LD	(HL),$17
;
	LD	HL,ENWRK3
	ADD	HL,DE
	INC	(HL)
;
	POP	BC
LWS090
	RET
	
;
LIJ1020
	CALL	E7MSCK
		ret	NC
;;;;;;;;	JR	NC,LIJ1080
;
	LD	A,(NIWATFG)
	AND	A
	LD	A,$8B
	JR	Z,LIJ1030
	LD	A,$8C
LIJ1030
		jp	MSGCH2
;;;;;;;;	CALL	MSGCH2
;;;;;;;;LIJ1080
;;;;;;;;	RET
;================================
LIJFZD
	DB	$10,$11,$12,$13,$13,$12,$11,$10
LIJFYS
	DB	$00,$09,$02,$09,$00,$F7,$FE,$F7
LIJFXS
	DB	$0C,$09,$0A,$F7,$F4,$F7,$F6,$09
;LIJFMK
;	DB	$02,$02,$00,$00,$00,$00,$02,$02
LFJSPD
	DB	3,1,0,0,0,0,1,3
;
LIJFLY
	LD	A,(ENSTAT2)
	AND	A
	JR	NZ,LIJF100
;
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	(HL),$50
;
	CALL	STATINC
LIJF100
	LD	E,$00
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	A,(HL)
	AND	%10000000
	JR	NZ,LIFJ110
;
	LD	E,$02
LIFJ110
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	(HL),E
;
	LD	A,(FRCNT)
;;	RRA
	RRA
	RRA
	RRA
	AND	$07
	LD	E,A
	LD	D,B
	LD	HL,LIJFZD
	ADD	HL,DE
	LD	A,(HL)
	SUB	$03
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	(HL),A
;
	LD	HL,ENMUKI
	ADD	HL,BC
;
	LD	A,(FRCNT)
	AND	%00100000
	LD	A,$04
	JR	NZ,LIJF120
	LD	A,$05
LIJF120
	ADD	A,(HL)
	CALL	ENPTST
;
	LD	A,(ENDSYP)
	SUB	$10
	LD	(ENDSYP),A
;
	LD	HL,ENMUKI
	ADD	HL,BC
;
	LD	A,(FRCNT)
	RRA
	RRA
	AND	$01
	ADD	A,(HL)
	LD	(ENCHPT2),A
;
	LD	HL,ENMOD0
	ADD	HL,BC
	RES	4,(HL)
;
	LD	DE,LTORICD
	CALL	EN2CST
;
	CALL	ENPSSV
;
	CALL	E7STCK
;
	LD	A,(FRCNT)
	AND	$3F
	JR	NZ,LIJF90
;
	CALL	RNDSUB
	AND	$01
	JR	NZ,LIJF90
;
	CALL	RNDSUB
	AND	$07
	LD	E,A
	LD	D,B
	LD	HL,LIJFXS
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
	LD	HL,LIJFYS
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),A
;	LD	HL,LIJFMK
;	ADD	HL,DE
;	LD	A,(HL)
;	LD	HL,ENMUKI
;	ADD	HL,BC
;	LD	(HL),A
;
LIJF90
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	NOP
	NOP
	AND	$07
	LD	E,A
	LD	D,B
	LD	HL,LFJSPD
	ADD	HL,DE
	LD	A,(FRCNT)
	AND	(HL)
	CALL	Z,E7MVCL
;
	CALL	ENBGCKL
;
	LD	HL,ENCBFG
	ADD	HL,BC
	LD	A,(HL)
	AND	$03
	JR	Z,LIJFA0
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	A,(HL)
	CPL
	INC	A
	LD	(HL),A
LIJFA0
	LD	HL,ENCBFG
	ADD	HL,BC
	LD	A,(HL)
	AND	$0C
	JR	Z,LIJFB0
;
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	A,(HL)
	CPL
	INC	A
	LD	(HL),A
LIJFB0
	CALL	E7XCHK
	ADD	A,$12
	CP	$24
	RET	NC
;
	CALL	E7YCHK
	ADD	A,$10
	CP	$20
	RET	NC
;
	CALL	LDTIM0
	RET	NZ
;
	LD	(HL),$80
;
	LD	A,$8D
		jp	MSGCH2
;;;;;;;;	CALL	MSGCH2
;;;;;;;;	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�����Ƃ聕�j���g�����₶       %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
KAZAMCD
	DB	$F0,$00,$78,$07
	DB	$F0,$08,$7A,$07
	DB	$00,$00,$7C,$07
	DB	$00,$08,$7E,$07
;- - - - - - - - - - - - - - - - - - - - -
KAZAMMV
	LD	A,(DJFLAG)
	AND	A
	JR	Z,KZM000
;
	LD	A,(GRNDPT)
	CP	$E4
	JP	Z,GARAMV	;�ق˂���	
	CP	$F4
	JP	Z,GARAMV	;�ق˂���	
	JP	LUIJIMV		;�j���g���I���W
;
KZM000
	LD	A,(DJSVBF)
	AND	%00100000
	JP	NZ,E7CLER
;
	LD	A,(ENSTAT2)
	RST	00
	DW	KZM1000
	DW	KZM2000
;===========================================
KZM1000
	CALL	E7STCK
;
	LD	A,(BULLEV)
	CP	$02
	RET	C
;
;;;KK;;;		LD	HL,DJRMSV
;;;KK;;;		LD	DE,$000E3
;;;KK;;;		ADD	HL,DE
;;;KK;;;		LD	A,(HL)
;;;KK;;;		AND	%01000000	;�I�o�P�C�x���g�̌�H
;;;KK;;;		RET	Z		;	NO --> return
;
	CALL	E7XCHK
	ADD	A,$08
	CP	$10
	JP	NC,KZM1010
;
	CALL	E7YCHK
	ADD	A,$10
	CP	$20
	JP	NC,KZM1010
;
	LD	A,(PLCBFG)
	AND	A
	JP	Z,KZM1010
;
	LD	A,(PLCMKI)
	CP	$02
	JP	NZ,KZM1010
;
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	INC	A
	LD	(HL),A
	CP	$18
	RET	NZ
;
	CALL	LDTIM0
	LD	(HL),$40
;
	LD	HL,BGUNDT+$11+$35
	LD	(HL),TURO0 ;A
	LD	HL,BGUNDT+$11+$45
	LD	(HL),SINDO ;A
;--------------------------------------------
;	�����{�̓����
;--------------------------------------------
		LD	A,$19|UNIT_TRAN_BIT
		CALL	Unit_change	; �o���N�Q���j�b�g��������
;--------------------------------------------
;
	LD	A,$50
	LD	(OBJXP),A
	LD	A,$30
	LD	(OBJYP),A
;
	CALL	OBJBG
;
		LD	A,(CGBFLG)
		AND	A
		JR	Z,KZM1500
		PUSH	BC
		LD	A,TURO0
		LD	(UNTATR),A
		LD	A,$19
		CALL	BG1UNIT_ATR_SUB
		LD	A,(VRAMH)
		LD	H,A
		LD	A,(VRAML)
		LD	L,A
		PUSH	HL
		LD	DE,$0040
		ADD	HL,DE
		LD	A,H
		LD	(VRAMH),A
		LD	A,L
		LD	(VRAML),A
		LD	A,SINDO
		LD	(UNTATR),A
		LD	A,$19
		CALL	BG1UNIT_ATR_SUB
		POP	HL
		LD	A,H
		LD	(VRAMH),A
		LD	A,L
		LD	(VRAML),A
		POP	BC
KZM1500
;
	LD	HL,VRAMD+1
	LD	A,(VRAMD)
	LD	E,A
	ADD	A,14
	LD	(VRAMD),A
	LD	D,$00
;
	ADD	HL,DE
;
	LD	A,(VRAMH)
	LD	(HLI),A
	LD	A,(VRAML)
	LD	(HLI),A
	LD	A,$83
	LD	(HLI),A
	LD	A,$0F
	LD	(HLI),A
	LD	A,$0F
	LD	(HLI),A
	LD	A,$68
	LD	(HLI),A
	LD	A,$77
	LD	(HLI),A
;
	LD	A,(VRAMH)
	LD	(HLI),A
	LD	A,(VRAML)
	INC	A
	LD	(HLI),A
	LD	A,$83
	LD	(HLI),A
	LD	A,$0F
	LD	(HLI),A
	LD	A,$0F
	LD	(HLI),A
	LD	A,$69
	LD	(HLI),A
	LD	A,$4B
	LD	(HLI),A
;
	LD	(HL),B
;
	LD	A,$11
	LD	(SOUND3),A	;(S)
;
	CALL	STATINC
	JR	KZM2000
;
KZM1010
	LD	HL,ENCONT
	ADD	HL,BC
	LD	(HL),B
	RET
;===========================================
KZM2000
	CALL	E7STCK
;
	LD	A,$02
	LD	(PLSTOP),A
	LD	(ITEMNOT),A
;
	LD	HL,KAZAMCD
	LD	C,$04
	CALL	ENOMST
;
	CALL	LDTIM0
	JP	NZ,KZM2050
;
	LD	(ITEMNOT),A
;
	LD	HL,BGUNDT+$11+$25
	LD	(HL),KAZA0 ;A
;--------------------------------------------
;	�����{�i��j
;--------------------------------------------
		LD	A,$19|UNIT_TRAN_BIT
		CALL	Unit_change	; �o���N�Q���j�b�g��������
;--------------------------------------------
	LD	HL,BGUNDT+$11+$35
	LD	(HL),KAZA1 ;A
;--------------------------------------------
;	�����{�i���j
;--------------------------------------------
		LD	A,$19|UNIT_TRAN_BIT
		CALL	Unit_change	; �o���N�Q���j�b�g��������
;--------------------------------------------
;
	LD	A,$50
	LD	(OBJXP),A
	LD	A,$20
	LD	(OBJYP),A
;
	CALL	OBJBG
;
		LD	A,(CGBFLG)
		AND	A
		JR	Z,KZM2500
		PUSH	BC
		LD	A,KAZA0
		LD	(UNTATR),A
		LD	A,$19
		CALL	BG1UNIT_ATR_SUB
		LD	A,(VRAMH)
		LD	H,A
		LD	A,(VRAML)
		LD	L,A
		PUSH	HL
		LD	DE,$0040
		ADD	HL,DE
		LD	A,H
		LD	(VRAMH),A
		LD	A,L
		LD	(VRAML),A
		LD	A,KAZA1
		LD	(UNTATR),A
		LD	A,$19
		CALL	BG1UNIT_ATR_SUB
		POP	HL
		LD	A,H
		LD	(VRAMH),A
		LD	A,L
		LD	(VRAML),A
		POP	BC
KZM2500
;
	LD	HL,VRAMD+1
	LD	A,(VRAMD)
	LD	E,A
	ADD	A,14
	LD	(VRAMD),A
	LD	D,$00
;
	ADD	HL,DE
;
	LD	A,(VRAMH)
	LD	(HLI),A
	LD	A,(VRAML)
	LD	(HLI),A
	LD	A,$83
	LD	(HLI),A
	LD	A,$00
	LD	(HLI),A
	LD	A,$10
	LD	(HLI),A
	LD	A,$02
	LD	(HLI),A
	LD	A,$12
	LD	(HLI),A
;
	LD	A,(VRAMH)
	LD	(HLI),A
	LD	A,(VRAML)
	INC	A
	LD	(HLI),A
	LD	A,$83
	LD	(HLI),A
	LD	A,$6C
	LD	(HLI),A
	LD	A,$6D
	LD	(HLI),A
	LD	A,$03
	LD	(HLI),A
	LD	A,$13
	LD	(HLI),A
;
	LD	(HL),B
;
	LD	A,$23
	LD	(SOUND1),A	;(S)
;
	CALL	E7SVST
;
	JP	E7CLER
	
KZM2050
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),$FC
		jp	E7YCLC
;;;;;;;;	CALL	E7YCLC
;;;;;;;;	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	��o�u��                       %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
BABUBCD
	DB	$F8,$F8,$60,$00
	DB	$F8,$00,$62,$00
	DB	$F8,$08,$62,$20
	DB	$F8,$10,$60,$20
	DB	$08,$F8,$60,$40
	DB	$08,$00,$62,$40
	DB	$08,$08,$62,$60
	DB	$08,$10,$60,$60
BABBPT
	DB	$00,$04,$08,$04
;
BABUBMV
	LD	A,(FRCNT)
	RLA
	RLA
	AND	$10
	LD	(ENFLCL),A
;
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	RRA
	AND	$03
	LD	E,A
	LD	D,B
	LD	HL,BABBPT
	ADD	HL,DE
	LD	A,(HL)
	LD	(ENCHNO),A
;
	LD	HL,BABUBCD
	LD	C,$08
	CALL	ENOMST
;
	CALL	E7STCK
;
	CALL	CRENPLL
;
	CALL	E7MVCL
;
	CALL	ENBGCKL
;
	LD	HL,ENCBFG
	ADD	HL,BC
	LD	A,(HL)
	AND	$03
	JR	Z,BABB10
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	A,(HL)
	CPL
	INC	A
	LD	(HL),A
BABB10
	LD	HL,ENCBFG
	ADD	HL,BC
	LD	A,(HL)
	AND	$0C
	JR	Z,BABB20
;
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	A,(HL)
	CPL
	INC	A
	LD	(HL),A
BABB20
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�΃o�u��                       %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
FIREBCD
	DB	$7A,$42,$7A,$62
	DB	$7A,$54,$7A,$74
	DB	$7A,$02,$7A,$22
	DB	$7A,$14,$7A,$34
;- - - - - - - - - - - - - - - - - - 
FIREBMV
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JP	NZ,FIREBZNZ
;
	LD	A,(ENSTAT2)
	RST	00
	DW	FRB1000
	DW	FRB2000
	DW	FRB3000
;-------------------------------------
FRB1000
	CALL	LDTIM0
;
	CALL	RNDSUB
	AND	$3F
	ADD	A,$30
	LD	(HL),A
	JP	STATINC
;-------------------------------------
FBSBXD
	DB	$FF,$01
FBSBXS
	DB	$FD,$03
FBSBYS
	DB	$F4,$F4
;
FRB2000
	CALL	LDTIM0
	JR	NZ,FRB2010
;
	LD	A,(WFIREBFG)
	CP	$02
	RET	NC	;���łɔ��ł邩�H
;
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),$D0
;
	CALL	STATINC
;
;;	CALL	FBSIBUST
FBSIBUST
	LD	A,$01
FBST10
	LD	(ENHELP2),A
;
	LD	A,FIREB
	CALL	ENIDSHL
	RET	C
;
	LD	A,(WORK1)
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,ENWRK0
	ADD	HL,DE
	LD	(HL),$02
;
	PUSH	BC
;
	LD	A,(ENHELP2)
	LD	C,A
	LD	HL,FBSBXD
	ADD	HL,BC
	LD	A,(WORK0)
	ADD	A,(HL)
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A
	LD	HL,FBSBXS
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,DE
	LD	(HL),A
	LD	HL,FBSBYS
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENYSPD
	ADD	HL,DE
	LD	(HL),A
;
	POP	BC
;
	LD	A,(ENHELP2)
	DEC	A
	CP	$FF
	JR	NZ,FBST10
	RET
FRB2010
	RET
;-------------------------------------
FRB3000
	LD	HL,FIREBFG
	INC	(HL)
;
	LD	DE,FIREBCD
	CALL	EN2CST
;
	CALL	E7STCK
;
	CALL	CRENPLL
;
	CALL	E7YCLC
	LD	HL,ENYSPD
	ADD	HL,BC
	INC	(HL)
	LD	E,$00
	LD	A,(HL)
	AND	%10000000
	JR	NZ,FRB3008
	LD	E,$02
FRB3008
	LD	A,(FRCNT)
	RRA
	RRA
	AND	$01
	ADD	A,E
	CALL	ENPTST
;
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	A,(HL)
	CP	$70
	JR	C,FRB3010
;
	LD	(HL),$70
;
	CALL	STATINC
	LD	(HL),B
;
	CALL	FBSIBUST
FRB3010
	LD	A,(FRCNT)
	XOR	C
	AND	$0F
	RET	NZ
;-------------------------------------
;---------------------------------------------
	LD	A,FIREB
	CALL	ENIDSHL
	RET	C
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
	LD	HL,ENTIM0
	ADD	HL,DE
	LD	(HL),$18
;
	LD	HL,ENWRK0
	ADD	HL,DE
	LD	(HL),$1
;
	LD	A,(ENCHPT2)
	RLA
	AND	$04
	LD	HL,ENCHPT
	ADD	HL,DE
	LD	(HL),A
	RET
;==============================================
FIREBZCD
;
	DB	$7C,$42,$7C,$62
	DB	$7C,$54,$7C,$74
	DB	$7E,$42,$7E,$62
	DB	$7E,$54,$7E,$74
;
	DB	$7C,$02,$7C,$22
	DB	$7C,$14,$7C,$34
FBSIBUCD
	DB	$7E,$02,$7E,$22
	DB	$7E,$14,$7E,$34
;- - - - - - - - - - - - - - - - - - - - - - 
FIREBZNZ
	CP	$02
	JR	Z,FBSIBUKI
;
	LD	A,(FRCNT)
	XOR	C
	RRA
	JR	C,FBZ100
;
	LD	A,(FRCNT)
	RRA
	RRA
	AND	$01
	LD	E,A
	LD	A,(ENCHPT2)
	ADD	A,E
	LD	(ENCHPT2),A
;
	LD	DE,FIREBZCD
	CALL	EN2CST
FBZ100
	CALL	E7STCK
;
	CALL	LDTIM0
	JP	Z,E7CLER
;
	CP	$08
	JR	NZ,FBZ120
;
	LD	HL,ENCHPT
	ADD	HL,BC
	INC	(HL)
	INC	(HL)
FBZ120
	RET
;=====================================
FBSIBUKI
	LD	DE,FBSIBUCD
	CALL	EN2CST
;
	LD	A,(FRCNT)
	RRA
	RRA
	AND	$01	
	CALL	ENPTST
;
	CALL	E7MVCL
;
	LD	HL,ENYSPD
	ADD	HL,BC
	INC	(HL)
	LD	A,(HL)
	CP	$10
		ret	NZ
;;;;;;;;	JR	NZ,FBS020
;
		jp	E7CLER
;;;;;;;;	CALL	E7CLER
;;;;;;;;FBS020
;;;;;;;;	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�̓����藎����z               %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
TAIATCD
	DB	$00,$00,$50,$02
	DB	$00,$08,$52,$02
	DB	$00,$10,$52,$22
	DB	$00,$18,$50,$22
	DB	$10,$00,$54,$02
	DB	$10,$08,$56,$02
	DB	$10,$10,$56,$22
	DB	$10,$18,$54,$22
TAIATCD2
	DB	$00,$00,$50,$03
	DB	$00,$08,$52,$03
	DB	$00,$10,$52,$23
	DB	$00,$18,$50,$23
	DB	$10,$00,$54,$03
	DB	$10,$08,$56,$03
	DB	$10,$10,$56,$23
	DB	$10,$18,$54,$23
;- - - - - - - - - - - - - - - - -
TAIATMV
	LD	A,(ENCHPT2)
	AND	A
	LD	A,$00
	JR	Z,TAI000
	LD	A,$08
TAI000
	LD	(ENCHNO),A
;
		LD	HL,TAIATCD
		LD	A,(ENSTAT2)
		AND	A
		JR	Z,TAI000_050
		LD	HL,TAIATCD2
TAI000_050
	LD	C,$08
	CALL	ENOMST
;
	CALL	E7STCK
;
	CALL	ENHNCL
;
;;;	CALL	CREPKEL
;
	LD	A,(ENSTAT2)
	RST	00
	DW	TAI1000
	DW	TAI2000
	DW	TAI3000
;------------------------------
TAI1000
	CALL	M7CROS
	RET	NC
	AND	A
	RET	Z	;�_�b�V���H
;			;YES !
	CALL	DUSHCL
;
	LD	A,(PLXSPD)
	CPL
	INC	A
	SRA	A
	SRA	A
	LD	(PLXSPD),A
;
	LD	A,$E8
	LD	(PLYSPD),A
;
	CALL	LDTIM0
	LD	(HL),$20
;
	LD	A,$01
	CALL	ENPTST
;
	LD	A,$0B
	LD	(SOUND1),A	;(S)
;
	JP  	STATINC
;--------------------------------------
TAI2000
		call	M7CROS
	CALL	LDTIM0
	CP	$01
	JR	NZ,TAI0020
;
	LD	HL,SOUND1	;(S)
	LD	(HL),$08
TAI0020
	AND	A
	RET	NZ
;
	CALL	E7YCLC
;
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	A,(HL)
	CP	$70
	JR	NC,TAS2020
	ADD	A,$03
	LD	(HL),A
TAS2020
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	A,(HL)
	ADD	A,$10
	LD	(HL),A
;
	LD	A,(ENSVYL)
	ADD	A,$10
	LD	(ENSVYL),A
;
	CALL	ENBGCKL
;
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	A,(HL)
	SUB	$10
	LD	(HL),A
;
	LD	A,(ENSVYL)
	SUB	$10
	LD	(ENSVYL),A
;
	LD	HL,ENCBFG
	ADD	HL,BC
	LD	A,(HL)
	AND	A
		ret	Z
;;;;;;;;	JR	Z,TAI0090
;
	CALL	BBSDST	;(S)
;
	CALL	LDTIM0
	LD	(HL),$30
;
	LD	A,$30
	LD	(TILTCT),A
;
	LD	A,$04
	LD	(TILTMK),A
;
		jp	STATINC
;;;;;;;;	CALL	STATINC
;;;;;;;;TAI0090
;;;;;;;;	RET
;------------------------------
TAI3000
		jp	CRDSPL
;;;;;;;;	CALL	CRDSPL
;;;;;;;;	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�X�s�[�h -> �P�U�����ϊ�       %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
R7CKDT
	DB	$00,$00,$01,$01,$01,$02,$02,$02
	DB	$00,$00,$0F,$0F,$0F,$0E,$0E,$0E
	DB	$08,$08,$07,$07,$07,$06,$06,$06
	DB	$08,$08,$09,$09,$09,$0A,$0A,$0A
R7CKD2
	DB	$04,$04,$03,$03,$03,$02,$02,$02
	DB	$0C,$0C,$0D,$0D,$0D,$0E,$0E,$0E
	DB	$04,$04,$05,$05,$05,$06,$06,$06
	DB	$0C,$0C,$0B,$0B,$0B,$0A,$0A,$0A
;---------------------------------------------------
M7CK16
	LD	A,(WORK0)
	RLCA
	AND	$01
	LD	E,A
	LD	A,(WORK1)
	RLCA
	RLA
	AND	$02
	OR	E
	RLA	
	RLA	
	RLA	
	AND	%00011000
	LD	H,A
;
	LD	A,(WORK1)
	BIT	7,A
	JR	Z,M76100
	CPL
	INC	A
M76100
	LD	D,A
;
	LD	A,(WORK0)
	BIT	7,A
	JR	Z,M76110
	CPL
	INC	A
M76110
;;	LD	E,A
;
;;;	LD	A,D
	CP	D
	JR	NC,M76120
;
;;;	LD	A,E
	SRA	A
	SRA	A
	ADD	A,H
	LD	E,A
	LD	D,B
	LD	HL,R7CKDT
	ADD	HL,DE
	LD	A,(HL)
	RET
M76120
	LD	A,D
	SRA	A
	SRA	A
	ADD	A,H
	LD	E,A
	LD	D,B
	LD	HL,R7CKD2
	ADD	HL,DE
	LD	A,(HL)
	RET
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	����ʗp�h�X�� �r						%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
DOSNSCD
	DB	$5A,$03,$5A,$23
	DB	$58,$02,$58,$22
;- - - - - - - - - - - - - -  - - -
DOSNSMV
	LD	DE,DOSNSCD
	CALL	EN2CST
;
	CALL	E7STCK
;
	CALL	ENHNCL
;
	CALL	CREPKEL
;
	XOR	A
	CALL	ENPTST
;
	LD	A,(ENSTAT2)
	RST	00
	DW	DSS0000
	DW	DSS1000
	DW	DSS2000
	DW	DSS3000
;----------------------------------
DSS0000
	LD	A,(ENDSYP)
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	(HL),A
	CALL	STATINC
;----------------------------------
DSS1000
	CALL	LDTIM0
	RET	NZ
;
	CALL	E7XCHK
	LD	E,A
	ADD	A,$28
	CP	$50
		ret	NC
;;;;;;;;	JR	NC,DSS1010
;
	LD	A,$01
	CALL	ENPTST
;
	LD	A,E
	ADD	A,$18
	CP	$30
		ret	NC
;;;;;;;;	JR	NC,DSS1010
;
	CALL	ENSDCL
;
	CALL	LDTIM0
	LD	(HL),$08
;
		jp	STATINC
;;;;;;;;	CALL	STATINC
;;;;;;;;DSS1010
;;;;;;;;	RET
;----------------------------------
DSS2000
	LD	A,$01
	CALL	ENPTST
;
	CALL	LDTIM0
	CP	$01
	JR	NZ,DSS2010
;
	LD	HL,SOUND1	;(S)
	LD	(HL),$08
DSS2010
	AND	A
	RET	NZ
;
	CALL	E7YCLC
;
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	A,(HL)
	CP	$70
	JR	NC,DSS2020
	ADD	A,$03
	LD	(HL),A
DSS2020
	CALL	ENBGCKL
	LD	HL,ENCBFG
	ADD	HL,BC
	LD	A,(HL)
	AND	A
		ret	Z
;;;;;;;;	JR	Z,DSS2030
;
	LD	A,$09
	LD	(SOUND1),A	;(S)
;
	CALL	LDTIM0
	LD	(HL),$30
;
		jp	STATINC
;;;;;;;;	CALL	STATINC
;;;;;;;;DSS2030
;;;;;;;;	RET
;==================================
DSS3000
	CALL	LDTIM0
	RET	NZ
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(ENDSYP)
	CP	(HL)
	JR	NZ,DSS3020
;
	CALL	STATINC
	LD	(HL),B
;
	CALL	LDTIM0
	LD	(HL),$20
	RET
DSS3020
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),$F8
		jp	E7YCLC
;;;;;;;;	CALL	E7YCLC
;;;;;;;;	RET
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	����ʗp�h�X�� �k						%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
DOSNBCD
	DB	$00,$00,$70,$07
	DB	$00,$08,$72,$07
	DB	$00,$10,$72,$27
	DB	$00,$18,$70,$27
	DB	$10,$00,$74,$07
	DB	$10,$08,$76,$07
	DB	$10,$10,$76,$27
	DB	$10,$18,$74,$27
DOSNBCD2
	DB	$FF,$07,$FF,$07
	DB	$6E,$07,$7E,$07
	DB	$7A,$07,$7A,$27
	DB	$7E,$27,$6E,$27
	DB	$7E,$27,$7C,$27
	DB	$7E,$27,$6C,$27
	DB	$78,$07,$78,$27
	DB	$6C,$07,$7E,$07
	DB	$7C,$07,$7E,$07
DSBMED
	DB	4,5,6,7,8,1,2,3
;- - - - - - - - - - - - - - - - -
DOSNBMV
	LD	A,(ENDSYP)
	ADD	A,$08
	LD	(ENDSYP),A
	LD	A,(ENSVXL)
	ADD	A,$08
	LD	(ENSVXL),A
	LD	DE,DOSNBCD2	;�ځI
	CALL	EN2CST
	CALL	ENPSSV
;
	LD	HL,DOSNBCD
	LD	C,$08
	CALL	ENOMST
;
	LD	A,$08-2
	CALL	NXOMSBL
;
	CALL	E7STCK
;
	CALL	ENHNCL
;
	CALL	CRKNENL
	CALL	CRDSPL
;
	LD	A,(ENSTAT2)
	RST	00
	DW	DSB0000
	DW	DSB1000
	DW	DSB2000
	DW	DSB3000
;----------------------------------
DSB0000
	LD	A,(ENDSYP)
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	(HL),A
	CALL	STATINC
;----------------------------------
DSB1000
	CALL	LDTIM0
	RET	NZ
;
	CALL	E7XCHK
	ADD	A,$F8
	LD	E,A
	ADD	A,$28
	CP	$50
	JR	NC,DSB1010
;
	LD	A,E
	ADD	A,$18
	CP	$30
	JR	NC,DSB1010
;
	CALL	ENSDCL
;
	LD	A,$08
	LD	(SOUND1),A	;(S)
;
	LD	A,$00
	CALL	ENPTST
;
		jp	STATINC
;;;;;;;;	CALL	STATINC
;;;;;;;;	RET
DSB1010
	LD	A,(FRCNT)
	AND	$07
		ret	NZ
;;;;;;;;	JR	NZ,DSB1020
;
	LD	A,$1F
	CALL	PSERCH2L
	CALL	M7CK16
	RRA
	AND	$07
	LD	E,A
	LD	D,B
	LD	HL,DSBMED
	ADD	HL,DE
	LD	A,(HL)
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;DSB1020
;;;;;;;;	RET
;----------------------------------
DSB2000
	CALL	E7YCLC
;
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	A,(HL)
	CP	$70
	JR	NC,DSB2020
	ADD	A,$03
	LD	(HL),A
DSB2020
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	A,(HL)
	ADD	A,$10
	LD	(HL),A
;
	LD	A,(ENSVYL)
	ADD	A,$10
	LD	(ENSVYL),A
;
	CALL	ENBGCKL
;
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	A,(HL)
	SUB	$10
	LD	(HL),A
;
	LD	A,(ENSVYL)
	SUB	$10
	LD	(ENSVYL),A
;
	LD	HL,ENCBFG
	ADD	HL,BC
	LD	A,(HL)
	AND	A
		ret	Z
;;;;;;;;	JR	Z,DSB2030
;
	CALL	BBSDST	;(S)
;
	CALL	LDTIM0
	LD	(HL),$30
;
	LD	A,$30
	LD	(TILTCT),A
;
	LD	A,$04
	LD	(TILTMK),A
;
		jp	STATINC
;;;;;;;;	CALL	STATINC
;;;;;;;;DSB2030
;;;;;;;;	RET
;==================================
DSB3000
	CALL	LDTIM0
	RET	NZ
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(ENDSYP)
	CP	(HL)
	JR	NZ,DSB3020
;
	CALL	STATINC
	LD	(HL),$01
;
	CALL	LDTIM0
	LD	(HL),$20
	RET
DSB3020
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),$F8
		jp	E7YCLC
;;;;;;;;	CALL	E7YCLC
;;;;;;;;	RET
;=============================================
CRDSPL
	CALL	CRENPSL
	RET	NC
;
DSC1010
	CALL	E7YCHK
	ADD	A,$08
	BIT	7,A
	JR	NZ,DSBM11
;
	CALL	PLDMST0
;
	LD	A,$10
	CALL	PSERCH2L
	LD	A,(WORK0)
	LD	(PLYSPD),A
	LD	A,(WORK1)
	LD	(PLXSPD),A
	RET
;
DSBM11
	LD	A,(PLYSPD)
	AND	%10000000
	JR	NZ,DSBM90
;
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	A,(HL)
	SUB	$10
	LD	(PLYPSL),A
;
	LD	A,$02
	LD	(PLYSPD),A
;
	LD	A,$01
	LD	(ONLFFG),A
DSBM90
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	����ʗp��   			       %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
YTUBOCD
	DB	$5E,$06,$5E,$26
YTUBOMV
	LD	DE,YTUBOCD
	CALL	EN2CST
;
	CALL	E7STCK
;
	LD	A,(ENSTAT2)
	RST	00
	DW	YTB1000
	DW	YTB2000
	DW	YTB2000
;---------------------------------
YTB1000
	CALL	CRENPSL
	JR	NC,YTBM90
;
;;;	CALL	PLPSRV
;
	CALL	E7YCHK
	LD	E,A
	ADD	A,$03
	CP	$06
	JR	NC,YTB1010	;Side cross ?
;				;yes!
;;	LD	A,(PLSVXL)
;;	LD	(PLXPSL),A
	CALL	PLXHNS
YTB1010
	LD	A,(PLYSPD)
	AND	%10000000
	JR	NZ,YTBM90
;
	CALL	E7YCHK
	ADD	A,$08
;;	CP	$E0
;;	JR	C,LFXM90
	BIT	7,A
	JR	Z,YTBM90
;
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	A,(HL)
	SUB	$10
	LD	(PLYPSL),A
;
	LD	A,$02
	LD	(PLYSPD),A
;
	LD	A,$01
	LD	(ONLFFG),A
YTBM90
	CALL	E7XCHK
	ADD	A,$12
	CP	$24
	RET	NC
;
	CALL	E7YCHK
	ADD	A,$12
	CP	$24
	RET	NC
;
	LD	A,(POWDRTM)
	AND	A
	RET	NZ
;
	LD	A,(ITEMB)
	CP	PBULE
	JR	NZ,YTBMA0	; Bulesret check !
;
	LD	A,(KEYA2)
	AND	%00100000
	JR	NZ,YTBMB0
	RET
YTBMA0
	LD	A,(ITEMA)
	CP	PBULE
	RET	NZ
;
	LD	A,(KEYA2)
	AND	%00010000
	RET	Z
;
YTBMB0
	LD	A,(WPLCAMD)
	AND	A
	RET	NZ
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
	CALL	LDTIM0
	LD	(HL),$02
;
	LD	HL,SOUND2
	LD	(HL),$02	;(S)
;
	CALL	STATINC
	LD	(HL),$02
;
	LD	A,(PLCMKI)
	LD	(PLCAMK),A
YTBMC0
	RET
;---------------------------------
YTB2000
	CALL	E7MVCL
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	A,(HL)
	BIT	7,A
	JR	NZ,YTB2003
;
	CP	$40
	JR	NC,YTB2008
;
YTB2003
	INC	(HL)
	INC	(HL)
YTB2008
	CALL	ENBGCKL
;
	LD	HL,ENCBFG
	ADD	HL,BC
	LD	A,(HL)
	AND	A
		ret	Z
;;;;;;;;	JR	Z,YTB2010
;
	CALL	ISIBRKL
		jp	E7CLER
;;;;;;;;	CALL	E7CLER
;;;;;;;;YTB2010
;;;;;;;;	RET
;===================================
PLXHNS
;;	LD	A,(PLSVXL)
;;	LD	(PLXPSL),A
;
	CALL	DUSHCL2
;
	LD	A,(PLJPFG)
	AND	A
	JR	NZ,PLXH20
;
	LD	A,$02
	LD	(HANEFG),A
;
	CALL	E7XCHK
	LD	A,E
	AND	A
	LD	A,$10
	JR	Z,PLXH10
	LD	A,$F0
PLXH10
	LD	(PLXSPD),A
	RET
PLXH20
	LD	A,(PLSVXL)
	LD	(PLXPSL),A
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�I�v�V�����j���g��		       %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
NIWAXCD
	DB	$42,$23,$40,$23
	DB	$46,$23,$44,$23
;
	DB	$40,$03,$42,$03
	DB	$44,$03,$46,$03
;
	DB	$4C,$03,$4C,$23
	DB	$4E,$03,$4E,$23
;
	DB	$48,$03,$48,$23
	DB	$4A,$03,$4A,$23
;
NIWAXMV
	LD	A,(NIWATFG)
	AND	A
	JP	Z,E7CLER
;
	LD	A,(GRNDPT)
	LD	HL,ENGRPT
	ADD	HL,BC
	LD	(HL),A
;
	LD	HL,ENXPSH
	ADD	HL,BC
	LD	(HL),B
	LD	HL,ENYPSH
	ADD	HL,BC
	LD	(HL),B
;
	LD	DE,NIWAXCD
	CALL	EN2CST
;
	LD	A,(ENMODE2)
	CP	ECACH
	JP	Z,NWXCACH
;
	LD	A,(PLMODE)
	CP	PSWIM
	JR	NZ,NWX00C
;
	CALL	NWXFLY
	JR	NWX00E
NWX00C
	CALL	E7ZCLC
;
	LD	HL,ENZSPD
	ADD	HL,BC
	DEC	(HL)
;
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	AND	%10000000
	JR	Z,NWX010
;
	LD	(HL),B
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),$10
;
	LD	A,(PLJPFG)
	LD	E,A
;
	LD	A,(DUSHFG)
	OR	E
	JR	Z,NWX00E
;
	LD	(HL),$20
NWX00E
	CALL	STATINC
	LD	(HL),B
NWX010
	CALL	E7STCK
;
	LD	A,(ENSTAT2)
	AND	A
	JR	NZ,NWX050	;������ꂽ�H
;				;NO
	CALL	E7XYCK
	SLA	E
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	AND	$01	
	ADD	A,E
	CALL	ENPTST
;
	CALL	E7XCHK
	ADD	A,$12
	CP	$24
	JR	NC,NWX018
;
	CALL	E7YCHK
	ADD	A,$12
	CP	$24
	JR	C,NWX090
;
NWX018
	LD	A,(FRCNT)
	AND	$07
	JR	NZ,NWX030
;
	LD	A,(DUSHFG)
	AND	A
	LD	A,$0C
	JR	Z,NWX020
	LD	A,$20
NWX020
	LD	E,A
;
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	PUSH	AF
	PUSH	HL
;
	LD	(HL),B
;
	LD	A,E
	CALL	PSERCHL
;
	POP 	HL
	POP 	AF
	LD	(HL),A
NWX030
	CALL	E7MVCL
	JP	ENBGCKL
NWX050
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	A,(HL)
	AND	%10000000
	JR	Z,NWX058
	INC	(HL)
	INC	(HL)
NWX058
	DEC	(HL)
;
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	A,(HL)
	AND	%10000000
	JR	Z,NWX059
	INC	(HL)
	INC	(HL)
NWX059
	DEC	(HL)
;
	JR  	NWX030
NWX090
	CALL	ENSDCL
;- - Cach check - -
	CALL	CRENPSL
	RET	NC
;;	JR	NC,NWXP10
;
	LD	A,(POWDRTM)
	AND	A
	RET	NZ
;;	JR	NZ,NWXP10
;
	LD	A,(ITEMB)
	CP	PBULE
	JR	NZ,NWX900	; Bulesret check !
;
	LD	A,(KEYA2)
	AND	%00100000
	JR	NZ,NWX910
	RET
;;	JR	NWXP10
NWX900
	LD	A,(ITEMA)
	CP	PBULE
	RET	NZ
;;	JR	NZ,NWXP10
;
	LD	A,(KEYA2)
	AND	%00010000
	RET	Z
;;	JR	Z,NWXP10
;
NWX910
	LD	A,(PLMODE)
	CP	$02
	RET	NC
;
	LD	A,(WPLCAMD)
	AND	A
	RET	NZ
;
	LD	(PLMODE),A
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
;;	LD	A,(PLCMKI)
;;	LD	(PLCAMK),A
;
	CALL	LDTIM0
	LD	(HL),$02
;
	LD	HL,SOUND2
	LD	(HL),$02	;(S)
;
	CALL	STATINC
	LD	(HL),$01
;
	LD	A,$02
	LD	(PLZPSL),A
;
;;	LD	A,$02
	LD	(PLJPFG),A
NWXP10
	RET
;========================================
NXFLZD
	DB	6,7,8,9,9,8,7,6
;
NWXFLY
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),B
;
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	AND	$07
	LD	E,A
	LD	D,B
	LD	HL,NXFLZD
	ADD	HL,DE
	LD	E,(HL)
;
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	SUB	E  ;$08
	RET	Z
;
	LD	E,A
	LD	A,(FRCNT)
	AND	$01
	RET	NZ
;
	LD	A,E
	AND	%10000000
	JR	Z,NWXF10
	INC	(HL)
	INC	(HL)
NWXF10
	DEC	(HL)
	RET
;========================================
PLCMDTE	; Player muki data !
;		 0  1  2  3  4  5  6  7  8  9  A 
	DB	$F,$0,$1,$F,$2,$F,$F,$F,$3,$F,$F
NWXZDT
	DB	$14,$14,$15,$16,$17,$17,$16,$15
NWXCACH
;;	CALL	E7XCHK
;	SLA	E
	LD	A,(PLCMKI)
	RLA
	AND	%00000110
	LD	E,A
	LD	A,(FRCNT)
	RRA
	RRA
	AND	$01	
	ADD	A,E
	CALL	ENPTST
;
	LD	A,$02
	LD	(PLJPFG),A
;
	XOR	A
	LD	(PLZSPD),A
;
	LD	A,(FRCNT)
	AND	$03
	JR	NZ,NWXC20
;
	LD	A,(FRCNT)
	RRA
	RRA
	AND	$07
	LD	E,A
	LD	D,B
	LD	HL,NWXZDT
	ADD	HL,DE
	LD	E,(HL)
;
	LD	HL,PLZPSL
	LD	A,(HL)
	SUB	E  ;$18
	JR	Z,NWXC20
	AND	%10000000
	JR	Z,NWXC18
;
	INC	(HL)	
	INC	(HL)	
NWXC18
	DEC	(HL)
NWXC20
	LD	A,(KEYA1)
	AND	$0F
	LD	E,A
	LD	D,B
;
	LD	HL,PLCMDTE
	ADD	HL,DE
	LD	A,(HL)
	CP	$0F
	JR	Z,NWXC30
;
	LD	(PLCMKI),A
	LD	(PLCAMK),A
NWXC30
	LD	A,(PLCBFG)
	AND	$03
	JR	Z,NWXC80
;
	XOR	A
	LD	(PLYSPD),A
NWXC80
	LD	A,(PLCBFG)
	AND	$0C
	JR	Z,NWXC90
;
	XOR	A
	LD	(PLXSPD),A
NWXC90
		jp	HABATAKI	;(S)
;;;;;;;;	CALL	HABATAKI	;(S)
;;;;;;;;	RET	
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	���`���[�h �^			  %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
KAERUCD
;0
	DB	$64,$00,$64,$20
	DB	$66,$00,$66,$20
;1
	DB	$60,$00,$60,$20
	DB	$62,$00,$62,$20
;2
	DB	$68,$00,$6A,$00
	DB	$6C,$00,$6E,$00
;3
	DB	$6A,$20,$68,$20
	DB	$6E,$20,$6C,$20
;
KAERUMV
	LD	DE,KAERUCD
	CALL	EN2CST
;
	CALL	E7STCK
;
	CALL	E7MVCL
	CALL	E7ZCLC
	CALL	ENBGCKL
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
	LD	(ENHELP),A
	JR	Z,KAE000
;
	LD	(HL),B
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),B
KAE000
	LD	A,(ENSTAT2)
	RST	00
	DW	KAE1000
	DW	KAE2000
;========================================
KAEXSD
	DB	$00,$10,$00,$F0,$0C,$0C,$F4,$F4
KAEYSD
	DB	$F0,$00,$10,$00,$F4,$0C,$0C,$F4
KAEMUK
	DB	$00,$06,$02,$04,$00,$06,$02,$04
;---------------------------------
KAE1000
	CALL	LDTIM0
	JR	NZ,KAE1010
;
	CALL	STATINC
;
	CALL	RNDSUB
	AND	$1F
	OR	$10
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),A
;
	CALL	RNDSUB
	AND	$07
	LD	E,A
	LD	D,B
	LD	HL,KAEXSD
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
	LD	HL,KAEYSD
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),A
	LD	HL,KAEMUK
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	(HL),A
KAE1010
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	A,(HL)
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;	RET
;========================================
KAE2000
	LD	A,(ENHELP)
	AND	A
	JR	Z,KAE2010
;
	CALL	LDTIM0
	CALL	RNDSUB
	AND	$1F
	ADD	A,$10
	LD	(HL),A
;
	CALL	ENSDCL
;
	CALL	STATINC
	LD	(HL),B
	RET
KAE2010
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	A,(HL)
	INC	A
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;	RET	
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�Œ胏�[�v 			     %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
PLWPPT
;;;   0   1   2   3   4   5   6   7   8   9   A   B   C   D   E   F
 DB $00,$2C,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00;0
 DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00;1
 DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$EC,$00,$00,$00;2
 DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00;3
 DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00;4
 DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00;5
 DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00;6
 DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00;7
 DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00;8
 DB $00,$00,$00,$00,$00,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00;9
 DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00;A
 DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00;B
 DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00;C
 DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00;D
 DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$95,$00,$00,$00;E
 DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00;F
;- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
PLWARP
	LD	A,$01
	LD	(PLSTOP),A
	LD	(ITEMNOT),A
;
	CALL	PLSDCL
;
	LD	A,(PLSTAT)
	RST	00
	DW	PLWP000
	DW	PLWP100
	DW	PLWP200
;================================
PLWP000
	LD	A,(PLTIM0)
	AND	A
	JR	NZ,PLWP001
;
	LD	A,$01
	LD	(PLSTAT),A
;
	LD	A,$25
	LD	(SOUND1),A	;(S)
;;	LD	A,$0D
;;	LD	(SOUND1),A	;(S)
PLWP001
	RET
;================================
PLWPMK
	DB	0,3,1,2
;
PLWP100
	LD	A,(PLTIM0)
	AND	A
	JR	NZ,PLWP110
;
	LD	A,$02
	LD	(PLSTAT),A
	RET
PLWP110
PLSPPS
	LD	A,(FRCNT)
	RRA
	RRA
	AND	$03
	LD	E,A
	LD	D,$00
	LD	HL,PLWPMK
	ADD	HL,DE
	LD	A,(HL)
	LD	(PLCMKI),A
		jp	PLPTSTL
;;;;;;;;	CALL	PLPTSTL
;;;;;;;;	RET
;=====================================
PLWP200
	CALL	PLSPPS
;
	LD	A,(PLZPSL)
	ADD	A,$04
	LD	(PLZPSL),A
;
	CP	$78
	JR	C,PLWP210
;
	LD	(NXRMPZ),A
;
	LD	A,(GRNDPT)
	LD	E,A
	LD	D,$00
PLWP202
	LD	HL,PLWPPT
	ADD	HL,DE
	LD	E,(HL)
	LD	HL,GRRMSV
	ADD	HL,DE
	LD	A,(HL)
	AND	%10000000
	JR	Z,PLWP202	;���ɍs�������H
;				
PLWP208				;YES !
	LD	A,E
	LD	(NXRMNO),A
	XOR	A
	LD	(NXRMMD),A
	LD	(NXDJNO),A
	LD	A,$70
	LD	(NXRMPY),A
	LD	(PLYPSL),A
	LD	A,$68
;;	LD	A,$78
	LD	(NXRMPX),A
	LD	(PLXPSL),A
;
	LD	(WARPFG2),A	;���̉�ʉ�]���Ȃ��痎���I
;
	LD	A,$66
;;	LD	A,$67
	LD	(DRPSBF),A
;
	CALL	NXGOTO4	
	XOR	A
	LD	(ITEMNOT),A
PLWP210
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%  �I�v�V���� �I�o�P                                    %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
OBAKECD
	DB	$42,$23,$40,$23
	DB	$46,$23,$44,$23
;
	DB	$40,$03,$42,$03
	DB	$44,$03,$46,$03
;
	DB	$48,$03,$4A,$03
	DB	$4C,$03,$4E,$03
;- - - - - - - - - - - - - - - - - - - - - -
OBAKZD
	DB	$10,$11,$12,$13,$13,$12,$11,$10
;
OBAKEMV
;;--�I�v�V������----
OBK008
	LD	A,(OBAKEFG)
	CP	$01
	JP	NZ,E7CLER
;
	LD	A,(GRNDPT)
	LD	HL,ENGRPT
	ADD	HL,BC
	LD	(HL),A
;
	LD	HL,ENXPSH
	ADD	HL,BC
	LD	(HL),B
	LD	HL,ENYPSH
	ADD	HL,BC
	LD	(HL),B
;
	LD	A,(FRCNT)
	XOR	C
	AND	$01
	JR	NZ,OBK010
;
	LD	DE,OBAKECD
	CALL	EN2CST
OBK010
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	NZ,OBK011	;�����鎞�H
;				;NO!
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	AND	$07
	LD	E,A
	LD	D,B
	LD	HL,OBAKZD
	ADD	HL,DE
	LD	A,(HL)
	SUB	$04
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	(HL),A
OBK011
	LD	A,(ENSTAT2)
	AND	A
	JR	NZ,OBK090	;�f���H
;				;NO!
	CALL	E7XYCK
	LD	A,E
	CP	$02	
	LD	E,$04
	JR	Z,OBKC10
;
	CALL	E7XCHK
	SLA	E
OBKC10
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	RRA
	AND	$01	
	ADD	A,E
	CALL	ENPTST
;
	CALL	E7XCHK
	ADD	A,$18
	CP	$30
	JR	NC,OBK018
;
	LD	A,(PLYPSL)
	PUSH	AF
	ADD	A,$0C
	LD	(PLYPSL),A
	CALL	E7YCHK
	LD	E,A
	POP	AF
	LD	(PLYPSL),A
	LD	A,E
	ADD	A,$18
	CP	$30
	JR	C,OBK090
;
OBK018
	LD	A,(FRCNT)
	AND	$03
	JR	NZ,OBK030
;
	LD	A,(DUSHFG)
	AND	A
	LD	A,$08
	JR	Z,OBK020
	LD	A,$18
OBK020
	CALL	PSERCHL
OBK030
	CALL	E7MVCL
OBK090
	LD	A,(DJFLAG)
	AND	A
	JP	NZ,OBK0C0	;�n��H	
;				;YES !
	LD	A,(OBAKEFG2)
	AND	A
	JP	Z,OBG000	;�Ƃɍs������H
;				;YES !
	LD	A,(GRNDPT)
	CP	$64
	JP	NZ,OBMSCK
;
	LD	A,(ENSTAT2)
	RST	00
	DW	OBG1000
	DW	OBG2000
	DW	OBG3000
;====================================================
OBG1000
	CALL	E7STCK
;
	LD	A,(PLXPSL)
	CP	$3C
	RET	NC	
;
	LD	A,(PLYPSL)
	CP	$7A
	RET	NC	
;
	LD	(ITEMNOT),A
;
	JP	STATINC
;====================================================
OBG2000
	LD	A,$02
	LD	(PLSTOP),A
;
	LD	A,(PLYPSL)
	PUSH	AF
	LD	A,(PLXPSL)
	PUSH	AF
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,$60
	SUB	(HL)
	LD	(PLYPSL),A
	LD	A,$28
	LD	(PLXPSL),A
;
	LD	A,$08
	CALL	PSERCHL
;
	CALL	E7XCHK
	PUSH	AF
	LD	A,E
	SLA	A
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	(HL),A
	POP	AF
	ADD	A,$03
	CP	$06
	JR	NC,OBG2020
;
	CALL	E7YCHK
	ADD	A,$0C
	CP	$18
	JR	NC,OBG2020
;
	POP	AF
	LD	(PLXPSL),A
	POP	AF
	LD	(PLYPSL),A
;
	LD	A,$16	;�o�C�o�C
	CALL	MSGCH3
;
	LD	A,$2D
	LD	(SOUND1),A	;(S)
;
	CALL	STATINC
;
	LD	HL,ENWRK1
	ADD	HL,BC
	INC	(HL)
	RET
OBG2020
	POP	AF
	LD	(PLXPSL),A
	POP	AF
	LD	(PLYPSL),A
;
	CALL	E7MVCL
;
		jp	OBKPTST
;;;;;;;;	CALL	OBKPTST
;;;;;;;;	RET
;====================================================
OBG3000
	LD	A,$02
	LD	(PLSTOP),A
;
	CALL	E7STCK
;
	LD	HL,ENZPSL
	ADD	HL,BC
	DEC	(HL)
	JR	NZ,OBG3010
;
	XOR	A
	LD	(OBAKEFG),A
	LD	(OBAKEFG2),A
	LD	(ITEMNOT),A
;
	LD	HL,DJRMSV+$0E3
	SET	6,(HL)	;�ق����L�k�Z�b�g�I
;
	JP	E7CLER
OBG3010
		jp	OBKPTST
;;;;;;;;	CALL	OBKPTST
;;;;;;;;	RET	
;========================================================
OBG000
	CALL	E7STCK
;
	LD	HL,ENWRK2
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	RET	NZ
;
	LD	A,(GRNDPT)
	CP	$F6
	JP	NZ,OBMSCK
;
	LD	A,(PLYPSL)
	CP	$40
	RET	C
	LD	A,(PLXPSL)
	CP	$78
	RET	NC
;
	INC	(HL)
;
	LD	A,$2D
	LD	(SOUND1),A	;(S)
;
	LD	A,$13	;�����ɓ�����
		jp	MSGCH3	
;;;;;;;;	CALL	MSGCH3	
;;;;;;;;;
;;;;;;;;OBK0A0
;;;;;;;;	RET
;---------------------------------
OBMSCK
	CALL	E7STCK
;
	LD	HL,ENWRK2
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	RET	NZ
;
	LD	A,(SBHR)
	CP	$04
	RET	NZ
;
	LD	A,(FRCNT)
	AND	$01
	RET	NZ
;
	LD	HL,ENWRK3
	ADD	HL,BC
	DEC	(HL)
	RET	NZ
;
	CALL	RNDSUB
	AND	$03
	LD	HL,UTAFLG	;;;;;;;;;;;;;;5/11
	OR	(HL)	;;;;;;;;;;;;;;;;;;;;;;
	RET	NZ
;
	LD	HL,ENWRK2
	ADD	HL,BC
	INC	(HL)
;
	LD	A,$2D
	LD	(SOUND1),A	;(S)
;
	LD	A,(OBAKEFG2)
	AND	A
	LD	A,$11	;�A��Ă��āI
	JR	Z,OBMC100		
;
	LD	A,$10	;�͂� ������I
OBMC100
	JP  	MSGCH3
;
;- -�Ƃ̒�- - - - - - - - - - - - - -
OBK0C0
	CALL	E7STCK
;
	LD	A,(DNJNNO)
	CP	$1E
	RET	NZ
;
	LD	A,(GRNDPT)
	CP	$E3
	RET	NZ		;�Ƃ̒��H
;				;YES !
	LD	A,(DJSVBF)
	AND	%00100000
	RET	NZ
;
	LD	A,$02
	LD	(PLSTOP),A
	LD	(ITEMNOT),A
;
	LD	A,(ENSTAT2)
	RST	00
	DW	OBK1000
	DW	OBK2000
	DW	OBK3000
	DW	OBK4000
	DW	OBK5000
	DW	OBK6000
;-----------------------------------------
OBK1000
	CALL	LDTIM0
	LD	(HL),$40
;
	JP	STATINC
;-----------------------------------------
OBNXTM
	DB	$60,$28,$28,$68
OBNXXS
	DB	$00,$F8,$FC,$08
OBNXYS
	DB	$F8,$FC,$F8,$02
OBNXMK
	DB	$04,$02,$04,$00
;
OBK2000
	CALL	LDTIM0
	JR	NZ,OBK2010
;
	LD	HL,ENCONT
	ADD	HL,BC	
	LD	E,(HL)
	LD	D,B
	LD	HL,OBNXTM
	ADD	HL,DE	
	LD	A,(HL)
;
	LD	HL,ENTIM0
	ADD	HL,BC
	LD	(HL),A
;
	LD	HL,OBNXXS
	ADD	HL,DE	
	LD	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
;
	LD	HL,OBNXYS
	ADD	HL,DE	
	LD	A,(HL)
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),A
;
	LD	HL,OBNXMK
	ADD	HL,DE	
	LD	A,(HL)
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	(HL),A
;
	CALL	STATINC
OBK2010
	JR	OBKPTST
;-----------------------------------------
OBK3000
	CALL	LDTIM0
	JR	NZ,OBK3010
;
	LD	(HL),$50
;
	CALL	STATINC
;
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	INC	A
	LD	(HL),A
	CP	$04
	JR	Z,OBK3010
;
	CALL	STATINC
	LD	(HL),B
OBK3010
	CALL	E7MVCL
OBKPTST
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	E,(HL)
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	RRA
	AND	$01
	ADD	A,E
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;	RET
;---------------------------------
OBK4000
	CALL	LDTIM0
	JR	NZ,OBK4010
;
	LD	(HL),$50
;
	LD	A,(PLYPSL)
	PUSH	AF
	LD	A,$10
	LD	(PLYPSL),A
	LD	A,$14
	CALL	MSGCH3	;�Y��Ă����������v���o���A�A
	POP	AF
	LD	(PLYPSL),A
;
	CALL	STATINC
OBK4010
	JP	OBKPTST
;---------------------------------
OBK5000
	CALL	LDTIM0
	JR	NZ,OBK5060
;
	LD	A,$15
	CALL	MSGCH3	;�A�낤
;
	CALL	STATINC
OBK5060
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),$0A
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),$FC
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	(HL),$02
;
	CALL	E7MVCL
	JP	OBKPTST
;;;;;;;;	RET
;---------------------------------
OBK6000
	LD	A,$01
	LD	(OBAKEFG2),A	;��֋A��I
;
	CALL	E7SVST
;
	CALL	E7CLER
	JP	NXGOTO
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%  ���x�� �V �� �����I                                %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
	DB	00	;DAMMY
CAS7DT11
	DB	$98,$06,$89
	DB	$00,$04,$00,$04,$00,$04,$00,$04,$00,$10
	DB	$98,$07,$89
	DB	$01,$11,$01,$11,$01,$11,$01,$11,$01,$11
	DB	$98,$08,$89
	DB	$07,$06,$07,$06,$07,$06,$07,$06,$07,$06
	DB	$98,$08,$89	;DAMMY
	DB	$07,$06,$07,$06,$07,$06,$07,$06,$07,$06
CAS7DT12
	DB	$98,$09,$89
	DB	$06,$07,$06,$07,$06,$07,$06,$07,$06,$07
	DB	$98,$0A,$89
	DB	$07,$06,$07,$06,$07,$06,$07,$06,$07,$06
	DB	$98,$0B,$89
	DB	$06,$07,$06,$07,$06,$07,$06,$07,$06,$07
	DB	$98,$0B,$89	;DAMMY
	DB	$06,$07,$06,$07,$06,$07,$06,$07,$06,$07
CAS7DT13
	DB	$98,$0C,$89
	DB	$07,$06,$07,$06,$07,$06,$07,$06,$07,$06
	DB	$98,$0D,$89
	DB	$06,$07,$06,$07,$06,$07,$06,$07,$06,$07
	DB	$98,$0E,$89
	DB	$02,$12,$02,$12,$02,$12,$02,$12,$02,$12
	DB	$98,$0F,$89
	DB	$03,$05,$03,$05,$03,$05,$03,$05,$03,$13
CAS7DT21
	DB	$98,$06,$89
	DB	$04,$00,$04,$00,$04,$00,$04,$00,$04,$14
	DB	$98,$07,$89
	DB	$11,$01,$11,$01,$11,$01,$11,$01,$11,$01
	DB	$98,$08,$89
	DB	$06,$07,$06,$07,$06,$07,$06,$07,$06,$07
	DB	$98,$08,$89	;DAMMY
	DB	$06,$07,$06,$07,$06,$07,$06,$07,$06,$07
CAS7DT22
	DB	$98,$09,$89
	DB	$07,$06,$07,$06,$07,$06,$07,$06,$07,$06
	DB	$98,$0A,$89
	DB	$06,$07,$06,$07,$06,$07,$06,$07,$06,$07
	DB	$98,$0B,$89
	DB	$07,$06,$07,$06,$07,$06,$07,$06,$07,$06
	DB	$98,$0B,$89	;DAMMY
	DB	$07,$06,$07,$06,$07,$06,$07,$06,$07,$06
CAS7DT23
	DB	$98,$0C,$89
	DB	$06,$07,$06,$07,$06,$07,$06,$07,$06,$07
	DB	$98,$0D,$89
	DB	$07,$06,$07,$06,$07,$06,$07,$06,$07,$06
	DB	$98,$0E,$89
	DB	$12,$02,$12,$02,$12,$02,$12,$02,$12,$02
	DB	$98,$0F,$89
	DB	$05,$03,$05,$03,$05,$03,$05,$03,$05,$15
;- - - - - - - - - - - - - - - - - - - -
CAD7AD1
	DW	CAS7DT21
	DW	CAS7DT11
CAD7AD2
	DW	CAS7DT22
	DW	CAS7DT12
CAD7AD3
	DW	CAS7DT23
	DW	CAS7DT13
;- - - - - - - - - - - - - - - -
CAS7MV
	LD	A,$02
	LD	(PLSTOP),A
	LD	(ITEMNOT),A
;
	CALL	CAS7CS
;
	LD	A,(ENSTAT2)
	RST	00
	DW	CS70000
	DW	CS70800
	DW	CS71000
	DW	CS72000
	DW	CS73000
	DW	CS74000
	DW	CS75000
;---------------------------------
CS70000
;;	LD	A,$1D
;;	LD	(SOUND3),A	;(S)
	CALL	SOUNDCLR	;(S)
;
	CALL	LDTIM0
	LD	(HL),$FF
;
	CALL	STATINC

;;;;;;;		CALL	TOU_color_tran	; �J���[�]��
;---------------------------------
CS70800
	CALL	LDTIM0
	JR	NZ,CS70808
;
	LD	(TILTXD),A
	CALL	ENPTST
;
	LD	A,$2E
	LD	(SOUND1),A	;(S)
;
		jp	STATINC
;;;;;;;;	CALL	STATINC
;;;;;;;;	RET
CS70808
	CP	$A0
	JR	NZ,CS7SSS
;
	LD	A,$1D
	LD	(SOUND3),A	;(S)
CS7SSS
	JR	C,CS70810
;
	AND	$10
	LD	A,$00
	JR	Z,CS7080C
	LD	A,$FF
CS7080C
		jp	ENPTST	;�ڌ��I
;;;;;;;;	CALL	ENPTST	;�ڌ��I
;;;;;;;;	RET
;
CS70810
	LD	E,$01
	AND	$04
	JR	Z,CS71030
	LD	E,$FE
CS71030
	LD	A,E
	LD	(TILTXD),A	
	RET
;---------------------------------
CS71000
	CALL	LDTIM0
	AND	A
		ret	NZ
;;;;;;;;	JR	NZ,CS71020
;
;;	LD	A,$11
;;	LD	(SOUND3),A	;(S)
;
		jp	STATINC
;;;;;;;;	CALL	STATINC
;;;;;;;;CS71020
;;;;;;;;	RET
;---------------------------------
CS72000
	LD	HL,CAD7AD1
	JR	CS7SUB
;---------------------------------
CS73000
	LD	HL,CAD7AD2
CS7SUB
	PUSH	BC
;
	PUSH	HL
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	RLA
	AND	%00000010
	LD	E,A
	LD	D,B
	POP	HL
	ADD	HL,DE
	LD	A,(HLI)
	LD	D,(HL)
	LD	E,A
;
	LD	C,52
;
	LD	HL,VRAMD+1
CS7310
	DEC	DE
	LD	A,(DE)
	INC	DE
	CP	$98
	LD	A,(DE)
	JR	NZ,CS7320
;
	LD	A,(SCCH)
	AND	A
	LD	A,(DE)
	JR	Z,CS7320
;
	ADD	A,$0C
CS7320
	INC	DE
	LD	(HLI),A
	DEC	C
	JR	NZ,CS7310
;
	LD	(HL),$00
;
	POP	BC
;
		jp	STATINC
;;;;;;;;	CALL	STATINC
;;;;;;;;	RET
;----------------------------------------------
CS74000
	LD	HL,CAD7AD3
	CALL	CS7SUB
;
	CALL	LDTIM0
	LD	(HL),$18
;
	LD	HL,ENWRK0
	ADD	HL,BC
	INC	(HL)
;
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	INC	A
	LD	(HL),A
	CP	$0C
	JR	NZ,CS74010
;
	LD	A,(TODYFG)
	LD	(SOUND4),A	;(S)
	RET
CS74010
	CALL	STATINC
	LD	(HL),$02
	RET
;==========================================
CS75000
	CALL	E7SVST
	SET	4,(HL)
;
	XOR	A
	LD	(TILTXD),A	
	LD	(ITEMNOT),A
;
	LD	A,$02
	LD	(SOUND1),A	;(S)
;
;--------------------------------------------
;	��h�̓� ��]�I��
;--------------------------------------------
;(CGB)	LD	A,ANA00
;(CGB)	LD	(BGUNDT+$11+$25),A
;(CGB)	LD	A,YHASG
;(CGB)	LD	(BGUNDT+$11+$35),A
;(CGB)	LD	A,YHASG
;(CGB)	LD	(BGUNDT+$11+$45),A

		LD	HL,BGUNDT+$11+$25
		LD	A,ANA00
		LD	(HL),A
		LD	A,$19|UNIT_TRAN_BIT
		CALL	Unit_change	; �o���N�Q���j�b�g��������
		LD	HL,BGUNDT+$11+$35
		LD	A,YHASG
		LD	(HL),A
		LD	A,$19|UNIT_TRAN_BIT
		CALL	Unit_change	; �o���N�Q���j�b�g��������
		LD	HL,BGUNDT+$11+$45
		LD	A,YHASG
		LD	(HL),A
		LD	A,$19|UNIT_TRAN_BIT
		CALL	Unit_change	; �o���N�Q���j�b�g��������
;--------------------------------------------
;
	CALL	CS7BGS
		CALL	CS7BGS_ATR	; �A�g���r���[�g�Z�b�g
;
	JP	E7CLER
;==========================================
;-----------------------------------------------------
;	�L�����N�^�[�f�[�^
;-----------------------------------------------------
CS7BGD
	DB	$98,$4A,$87
	DB	$0C,$1C,$64,$66,$0F,$0F,$0F,$0F
	DB	$98,$4B,$87
	DB	$0D,$1D,$65,$67,$1F,$1F,$1F,$1F
	DB	$98,$49,$81,$0B,$1B
	DB	$98,$4C,$81,$0E,$1E
CS7BGD2
	DB	$98,$4A+$0C,$87
	DB	$0C,$1C,$64,$66,$0F,$0F,$0F,$0F
	DB	$98,$4B+$0C,$87
	DB	$0D,$1D,$65,$67,$1F,$1F,$1F,$1F
	DB	$98,$49+$0C,$81,$0B,$1B
	DB	$98,$4C+$0C,$81,$0E,$1E
;-----------------------------------------------------
CS7BGD_CGB		; (CGB) ������̃L�����Ƀt���b�v�g�p
	DB	$98,$4A,$87
	DB	$0C,$1C,$64,$66,$0F,$0F,$0F,$0F
	DB	$98,$4B,$87
	DB	$0D,$1D,$64,$66,$1F,$1F,$1F,$1F
	DB	$98,$49,$81,$0B,$1B
	DB	$98,$4C,$81,$0E,$1E
CS7BGD2_CGB
	DB	$98,$4A+$0C,$87
	DB	$0C,$1C,$64,$66,$0F,$0F,$0F,$0F
	DB	$98,$4B+$0C,$87
	DB	$0D,$1D,$64,$66,$1F,$1F,$1F,$1F
	DB	$98,$49+$0C,$81,$0B,$1B
	DB	$98,$4C+$0C,$81,$0E,$1E
;-----------------------------------------------------
CS7BGS
	LD	A,32
	LD	(VRAMD),A
	LD	HL,VRAMD+1
;
	LD	DE,CS7BGD
		LD	A,(CGBFLG)
		AND	A
		JR	Z,C7BS05

		LD	DE,CS7BGD_CGB
C7BS05
	LD	A,(SCCH)
	AND	A
	JR	Z,C7BS10
	LD	DE,CS7BGD2
		LD	A,(CGBFLG)
		AND	A
		JR	Z,C7BS10

		LD	DE,CS7BGD2_CGB
C7BS10
	PUSH	BC
;
	LD	C,32
C7BS20
	LD	A,(DE)
	INC	DE
	LD	(HLI),A
	DEC	C
	JR	NZ,C7BS20
;
	POP	BC
	LD	(HL),B
	RET
;==========================================
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�J���[�]��					x
;x	    �K�i�i�`�s�q�Q�j�Ɠ�����i�`�s�q�R�j�p	x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;;;;;;;TOU_COL_DATA
;;;;;;;		DW	$47ff,$0000,$51f3,$47ff	; ( 2 )�K�i�n�a�i��p
;;;;;;;		DW	$47ff,$1e0c,$0104,$0000	; ( 3 )������n�a�i��p
;;;;;;;
;;;;;;;TOU_color_tran
;;;;;;;		LD	A,(CGBFLG)
;;;;;;;		AND	A
;;;;;;;		JR	Z,TOU_coltr_900
;;;;;;;
;;;;;;;		LD	HL,TOU_COL_DATA	; �]�����A�h���X
;;;;;;;		LD	DE,CGWORK+0050H	; �]����A�h���X
;;;;;;;		LD	BC,$0010	; ��
;;;;;;;
;;;;;;;		CALL	DATA_MOV	; �f�[�^�]��
;;;;;;;
;;;;;;;		LD	A,8
;;;;;;;		LD	(COLOFS),A	; �]���I�t�Z�b�g
;;;;;;;		LD	A,4*2
;;;;;;;		LD	(COLLNG),A	; �]������
;;;;;;;		LD	A,OBJCOL_BITFG|$80
;;;;;;;		LD	(CGDMAF),A	; �]���t���O�i�����]���j
;;;;;;;TOU_coltr_900
;;;;;;;		RET
;;;;;;;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�A�g���r���[�g�Z�b�g				x
;x	    ������̃t���b�v�f�[�^�ƊK�i������	x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;-----------------------------------------------------
;	�A�g���r���[�g�f�[�^
;-----------------------------------------------------
CS7BGD_atr
	DB	$98,$8B,$85
	DB	$26,$26,$01,$01,$01,$01
CS7BGD2_atr
	DB	$98,$8B+$0C,$85
	DB	$26,$26,$01,$01,$01,$01
;- - - - - - - - - - - - - - - - - - - - -
CS7BGS_ATR
		LD	A,(CGBFLG)
		AND	A
		JR	Z,CS7BGS_RET

		LD	A,5
		LD	(VRAMD_AT),A
		LD	HL,VRAMD_AT+1
;
		LD	DE,CS7BGD_atr
		LD	A,(SCCH)
		AND	A
		JR	Z,C7BS10_100
		LD	DE,CS7BGD2_atr
C7BS10_100
		PUSH	BC
;
		LD	C,9
C7BS20_100
		LD	A,(DE)
		INC	DE
		LD	(HLI),A
		DEC	C
		JR	NZ,C7BS20_100
;
		POP	BC
		LD	(HL),B
CS7BGS_RET
		RET
;==========================================
CAS7XD
	DB	$50,$5C,$68,$70,$7A,$7E,$58
	DB	$32,$38,$38,$40,$44,$50
CAS7YD
	DB	$20,$20,$20,$20,$20,$1F,$1E
	DB	$1F,$20,$20,$20,$20,$20
CAS7PT
	DB	$03,$03,$04,$04,$05,$05,$06
	DB	$01,$01,$02,$02,$03,$03
;-------------------------------------------------------
CAS7XD2
	DB	$C0,$C0,$C0,$C0,$C0,$C0,$C0
	DB	$38,$3A,$3B,$44,$4C,$58
CAS7YD2
	DB	$FF,$FF,$FF,$FF,$FF,$FF,$FF
	DB	$2F,$30,$30,$30,$30,$30
CAS7PT2
	DB	$00,$00,$00,$00,$00,$00,$00
	DB	$00,$01,$02,$03,$04,$04
;- - - - - - - - - - - - - - - - - - - - - - - - -
;(CGB)CAS7CD
;(CGB);0
;(CGB)	DB	$00,$00,$70,$00
;(CGB)	DB	$00,$00,$FF,$00
;(CGB)	DB	$00,$00,$FF,$00
;(CGB)	DB	$00,$00,$FF,$00
;(CGB);1
;(CGB)	DB	$00,$00,$72,$00
;(CGB)	DB	$00,$08,$74,$00
;(CGB)	DB	$00,$00,$FF,$00
;(CGB)	DB	$00,$00,$FF,$00
;(CGB);2
;(CGB)	DB	$00,$00,$76,$00
;(CGB)	DB	$00,$08,$78,$00
;(CGB)	DB	$00,$10,$7A,$00
;(CGB)	DB	$00,$00,$FF,$00
;(CGB);3
;(CGB)	DB	$00,$00,$7C,$00
;(CGB)	DB	$00,$08,$7E,$00
;(CGB)	DB	$00,$10,$7E,$20
;(CGB)	DB	$00,$18,$7C,$20
;(CGB);4
;(CGB)	DB	$00,$00,$7A,$20
;(CGB)	DB	$00,$08,$78,$20
;(CGB)	DB	$00,$10,$76,$20
;(CGB)	DB	$00,$00,$FF,$00
;(CGB);5
;(CGB)	DB	$00,$00,$74,$20
;(CGB)	DB	$00,$08,$72,$20
;(CGB)	DB	$00,$00,$FF,$00
;(CGB)	DB	$00,$00,$FF,$00
;(CGB);6
;(CGB)	DB	$00,$30,$70,$20
;(CGB)	DB	$00,$D8,$70,$00
;(CGB)	DB	$00,$00,$FF,$00
;(CGB)	DB	$00,$00,$FF,$00
;(CGB)CAS7CD2
;(CGB);0
;(CGB)	DB	$00,$00,$60,$10
;(CGB)	DB	$10,$00,$62,$00
;(CGB)	DB	$20,$00,$62,$00
;(CGB)	DB	$00,$00,$FF,$00
;(CGB)	DB	$00,$00,$FF,$00
;(CGB)	DB	$00,$00,$FF,$00
;(CGB);1
;(CGB)	DB	$00,$00,$64,$10
;(CGB)	DB	$10,$00,$66,$00
;(CGB)	DB	$20,$00,$66,$00
;(CGB)	DB	$00,$00,$FF,$00
;(CGB)	DB	$00,$00,$FF,$00
;(CGB)	DB	$00,$00,$FF,$00
;(CGB);2
;(CGB)	DB	$00,$02,$68,$10
;(CGB)	DB	$10,$02,$6A,$00
;(CGB)	DB	$20,$02,$6A,$00
;(CGB)	DB	$00,$05,$68,$30
;(CGB)	DB	$10,$05,$6A,$20
;(CGB)	DB	$20,$05,$6A,$20
;(CGB);3
;(CGB)	DB	$00,$01,$68,$10
;(CGB)	DB	$10,$01,$6A,$00
;(CGB)	DB	$20,$01,$6A,$00
;(CGB)	DB	$00,$07,$68,$30
;(CGB)	DB	$10,$07,$6A,$20
;(CGB)	DB	$20,$07,$6A,$20
;(CGB);4
;(CGB)	DB	$00,$00,$68,$10
;(CGB)	DB	$10,$00,$6A,$00
;(CGB)	DB	$20,$00,$6A,$00
;(CGB)	DB	$00,$08,$68,$30
;(CGB)	DB	$10,$08,$6A,$20
;(CGB)	DB	$20,$08,$6A,$20

;---------------------------------------------------
;	��h�̓� �n�a�i�f�[�^
;	    �E�K�i   �`�s�q�Q ---> �U
;	    �E����   �`�s�q�R ---> �T
;	    �E��h   �`�s�q�U
;---------------------------------------------------
CAS7CD
;0
	DB	$00,$00,$70,$06
	DB	$00,$00,$FF,$06
	DB	$00,$00,$FF,$06
	DB	$00,$00,$FF,$06
;1
	DB	$00,$00,$72,$06
	DB	$00,$08,$74,$06
	DB	$00,$00,$FF,$06
	DB	$00,$00,$FF,$06
;2
	DB	$00,$00,$76,$06
	DB	$00,$08,$78,$06
	DB	$00,$10,$7A,$06
	DB	$00,$00,$FF,$06
;3
	DB	$00,$00,$7C,$06
	DB	$00,$08,$7E,$06
	DB	$00,$10,$7E,$26
	DB	$00,$18,$7C,$26
;4
	DB	$00,$00,$7A,$26
	DB	$00,$08,$78,$26
	DB	$00,$10,$76,$26
	DB	$00,$00,$FF,$06
;5
	DB	$00,$00,$74,$26
	DB	$00,$08,$72,$26
	DB	$00,$00,$FF,$06
	DB	$00,$00,$FF,$06
;6
	DB	$00,$30,$70,$26
	DB	$00,$D8,$70,$06
	DB	$00,$00,$FF,$06
	DB	$00,$00,$FF,$06
CAS7CD2
;0
	DB	$00,$00,$60,$15
	DB	$10,$00,$62,$06
	DB	$20,$00,$62,$06
	DB	$00,$00,$FF,$00
	DB	$00,$00,$FF,$00
	DB	$00,$00,$FF,$00
;1
	DB	$00,$00,$64,$15
	DB	$10,$00,$66,$06
	DB	$20,$00,$66,$06
	DB	$00,$00,$FF,$00
	DB	$00,$00,$FF,$00
	DB	$00,$00,$FF,$00
;2
	DB	$00,$02,$68,$15
	DB	$10,$02,$6A,$06
	DB	$20,$02,$6A,$06
	DB	$00,$05,$68,$35
	DB	$10,$05,$6A,$26
	DB	$20,$05,$6A,$26
;3
	DB	$00,$01,$68,$15
	DB	$10,$01,$6A,$06
	DB	$20,$01,$6A,$06
	DB	$00,$07,$68,$35
	DB	$10,$07,$6A,$26
	DB	$20,$07,$6A,$26
;4
	DB	$00,$00,$68,$15
	DB	$10,$00,$6A,$06
	DB	$20,$00,$6A,$06
	DB	$00,$08,$68,$35
	DB	$10,$08,$6A,$26
	DB	$20,$08,$6A,$26
;- - - - - - - - - - - - - - - - - - - - - -
CAS7CS
	LD	HL,ENCONT
	ADD	HL,BC
	LD	E,(HL)
	LD	D,B
	LD	HL,CAS7XD
	ADD	HL,DE
	LD	A,(HL)
	LD	(ENSVXL),A
	LD	HL,CAS7YD
	ADD	HL,DE
	LD	A,(HL)
	LD	(ENDSYP),A
	LD	HL,CAS7PT
	ADD	HL,DE
	LD	A,(HL)
	RLA
	RLA
	RLA
	RLA
	AND	%11110000
	LD	E,A
	LD	D,B
	LD	HL,CAS7CD
	ADD	HL,DE
	LD	C,$04
	CALL	ENOMST
;
	LD	A,$04-02
	CALL	NXOMSBL
;
	LD	HL,ENCONT
	ADD	HL,BC
	LD	E,(HL)
	LD	D,B
	LD	HL,CAS7XD2
	ADD	HL,DE
	LD	A,(HL)
	LD	(ENSVXL),A
	LD	HL,CAS7YD2
	ADD	HL,DE
	LD	A,(HL)
	LD	(ENDSYP),A
	LD	HL,CAS7PT2
	ADD	HL,DE
	LD	A,(HL)
	RLA
	RLA
	RLA
	AND	%11111000
	LD	E,A
	RLA
	AND	%11110000
	ADD	A,E
	LD	E,A
	LD	D,B
	LD	HL,CAS7CD2
	ADD	HL,DE
	LD	C,$06
	CALL	ENOMST
;
	LD	A,$06-02
		jp	NXOMSBL
;;;;;;;;	CALL	NXOMSBL
;;;;;;;;	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%  ���x�� �U �� �����I                                %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
CAS6DT11
;1
	DB	$98,$02,$09,$55,$56,$55,$56,$55,$56,$55,$56,$55,$56
	DB	$98,$22,$09,$55,$56,$55,$56,$55,$56,$55,$56,$55,$56
	DB	$98,$42,$09,$0C,$0D,$0C,$0D,$0C,$0D,$0C,$0D,$0C,$0D
	DB	$98,$62,$09,$0E,$0F,$0E,$0F,$0E,$0F,$0E,$0F,$0E,$0F
CAS6DT12
;2
	DB	$98,$02,$09,$55,$56,$55,$56,$55,$56,$55,$56,$55,$56
	DB	$98,$22,$09,$55,$56,$55,$56,$55,$56,$55,$56,$55,$56
	DB	$98,$42,$09,$0E,$0F,$0E,$0F,$0E,$0F,$0E,$0F,$0E,$0F
	DB	$98,$62,$09,$0F,$0E,$0F,$0E,$0F,$0E,$0F,$0E,$0F,$0E
CAS6DT13
;3
	DB	$98,$02,$09,$55,$56,$55,$56,$55,$56,$55,$56,$55,$56
	DB	$98,$22,$09,$0E,$0F,$0E,$0F,$0E,$0F,$0E,$0F,$0E,$0F
	DB	$98,$42,$09,$0F,$0E,$0F,$0E,$0F,$0E,$0F,$0E,$0F,$0E
	DB	$98,$62,$09,$0E,$0F,$0E,$0F,$0E,$0F,$0E,$0F,$0E,$0F
CAS6DT14
;4
	DB	$98,$02,$09,$0E,$0F,$0E,$0F,$0E,$0F,$0E,$0F,$0E,$0F
	DB	$98,$22,$09,$0F,$0E,$0F,$0E,$0F,$0E,$0F,$0E,$0F,$0E
	DB	$98,$42,$09,$0E,$0F,$0E,$0F,$0E,$0F,$0E,$0F,$0E,$0F
	DB	$98,$62,$09,$0F,$0E,$0F,$0E,$0F,$0E,$0F,$0E,$0F,$0E
; - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
CAS6DT21
;1
	DB	$98,$82,$09,$0F,$0E,$0F,$0F,$0F,$0E,$0F,$0E,$0F,$0E
	DB	$98,$A2,$09,$0E,$0F,$0E,$0F,$0E,$0F,$0E,$0F,$0E,$0F
	DB	$98,$C2,$09,$0F,$0E,$0F,$0E,$0F,$0E,$0F,$0E,$0F,$0E
	DB	$98,$E2,$09,$1E,$1E,$1E,$1E,$1E,$1E,$1E,$1E,$1E,$1E
CAS6DT22
;2
	DB	$98,$82,$09,$0E,$0F,$0E,$0F,$0E,$0F,$0E,$0F,$0E,$0F
	DB	$98,$A2,$09,$0F,$0E,$0F,$0E,$0F,$0E,$0F,$0E,$0F,$0E
	DB	$98,$C2,$09,$1E,$1E,$1E,$1E,$1E,$1E,$1E,$1E,$1E,$1E
	DB	$98,$E2,$09,$09,$08,$18,$09,$7E,$7E,$09,$08,$18,$09
CAS6DT23
;3
	DB	$98,$82,$09,$0E,$0F,$0E,$0F,$0E,$0F,$0E,$0F,$0E,$0F
	DB	$98,$A2,$09,$1E,$1E,$1E,$1E,$1E,$1E,$1E,$1E,$1E,$1E
	DB	$98,$C2,$09,$09,$08,$18,$09,$7E,$7E,$09,$08,$18,$09
	DB	$98,$E2,$09,$09,$04,$05,$09,$7E,$7E,$09,$04,$05,$09
CAS6DT24
;4
	DB	$98,$82,$09,$1E,$1E,$1E,$1E,$1E,$1E,$1E,$1E,$1E,$1E
	DB	$98,$A2,$09,$09,$08,$18,$09,$7E,$7E,$09,$08,$18,$09
	DB	$98,$C2,$09,$09,$04,$05,$09,$7E,$7E,$09,$04,$05,$09
	DB	$98,$E2,$09,$19,$14,$15,$19,$1F,$1F,$19,$14,$15,$19
; - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
CAS6DT11_atr
;1
	DB	$98,$02,$49,$03
	DB	$98,$22,$49,$03
	DB	$98,$42,$49,$05
	DB	$98,$62,$49,$02
CAS6DT12_atr
;2
	DB	$98,$02,$49,$03
	DB	$98,$22,$49,$03
	DB	$98,$42,$49,$02
	DB	$98,$62,$49,$02
CAS6DT13_atr
;3
	DB	$98,$02,$49,$03
	DB	$98,$22,$49,$02
	DB	$98,$42,$49,$02
	DB	$98,$62,$49,$02
CAS6DT14_atr
;4
	DB	$98,$02,$49,$02
	DB	$98,$22,$49,$02
	DB	$98,$42,$49,$02
	DB	$98,$62,$49,$02
; - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
CAS6DT21_atr
;1
	DB	$98,$82,$09,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02
	DB	$98,$A2,$09,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02
	DB	$98,$C2,$09,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02
	DB	$98,$E2,$09,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
CAS6DT22_atr
;2
	DB	$98,$82,$09,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02
	DB	$98,$A2,$09,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02
	DB	$98,$C2,$09,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	DB	$98,$E2,$09,$01,$00,$00,$01,$01,$01,$01,$00,$00,$01
CAS6DT23_atr
;3
	DB	$98,$82,$09,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02
	DB	$98,$A2,$09,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	DB	$98,$C2,$09,$01,$00,$00,$01,$01,$01,$01,$00,$00,$01
	DB	$98,$E2,$09,$01,$00,$00,$01,$01,$01,$01,$00,$00,$01
CAS6DT24_atr
;4
	DB	$98,$82,$09,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
	DB	$98,$A2,$09,$01,$00,$00,$01,$01,$01,$01,$00,$00,$01
	DB	$98,$C2,$09,$01,$00,$00,$01,$01,$01,$01,$00,$00,$01
	DB	$98,$E2,$09,$01,$00,$00,$01,$01,$01,$01,$00,$00,$01
;- - - - - - - - - - - - - - - - - - - -
CAD6AD1
	DW	CAS6DT11
	DW	CAS6DT12
	DW	CAS6DT13
	DW	CAS6DT14
CAD6AD2
	DW	CAS6DT21
	DW	CAS6DT22
	DW	CAS6DT23
	DW	CAS6DT24
CAD6AD1_atr
	DW	CAS6DT11_atr
	DW	CAS6DT12_atr
	DW	CAS6DT13_atr
	DW	CAS6DT14_atr
CAD6AD2_atr
	DW	CAS6DT21_atr
	DW	CAS6DT22_atr
	DW	CAS6DT23_atr
	DW	CAS6DT24_atr
;----------------------------------------------------------------------
CAS6MV
	LD	A,(GRNDPT)
	CP	$0E
	JP	Z,CAS7MV
;
	LD	A,$02
	LD	(PLSTOP),A
	LD	(ITEMNOT),A
;
	LD	A,(ENSTAT2)
	RST	00
	DW	CS60000
	DW	CS61000
	DW	CS62000
	DW	CS63000
;---------------------------------
CS60000
;;	CALL	SOUNDCLR	;(S)
	LD	A,$04
	LD	(SOUND3),A	;(S)
;
	CALL	LDTIM0
	LD	(HL),$A0+$0C
	CALL	LDTIM1
	LD	(HL),$A0+$0C
;
	CALL	STATINC
;---------------------------------
CS61000
	CALL	LDTIM0
	CP	$A0
	JR	NZ,CS61010
;
	LD	HL,SOUND3
	LD	(HL),$2E	;(S)
CS61010
	AND	A
	JR	NZ,CS61020
;
;;	CALL	BBSDST	;(S)
;
	LD	A,$2F
	LD	(SOUND1),A	;(S)
;
	CALL	STATINC
CS61020
	LD	E,$01
	AND	$04
	JR	Z,CS61030
	LD	E,$FE
CS61030
	LD	A,E
	LD	(TILTXD),A	
;
	CALL	LDTIM1
	RET	NZ
;
	JP  	CS6SMST
;---------------------------------
CS62000
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	PUSH	AF
	RLA
	AND	%00000110
	LD	E,A
	LD	D,B
	LD	HL,CAD6AD1
	ADD	HL,DE
	LD	A,(HLI)
	LD	D,(HL)
	LD	E,A
;
	PUSH	BC
;
	LD	C,52
	LD	HL,VRAMD+1
CS6210
	LD	A,(DE)
	CP	$98
	JR	NZ,CS6220
;
	LD	A,(SCCV)
	AND	A
	LD	A,$98
	JR	Z,CS6220
;
	LD	A,$9A
CS6220
	INC	DE
	LD	(HLI),A
	DEC	C
	JR	NZ,CS6210
;
	LD	(HL),$00
;
	POP	BC
;
		POP	AF	; �`�e���o��
		PUSH	AF

		RLA
		AND	%00000110
		LD	E,A
		LD	D,B
		LD	HL,CAD6AD1_atr
		ADD	HL,DE
		LD	A,(HLI)
		LD	D,(HL)
		LD	E,A
;
		PUSH	BC
;
		LD	C,16		; 52 �ł͂Ȃ�
		LD	HL,VRAMD_AT+1
CS6210_100
		LD	A,(DE)
		CP	$98
		JR	NZ,CS6220_100
;
		LD	A,(SCCV)
		AND	A
		LD	A,$98
		JR	Z,CS6220_100
;
		LD	A,$9A
CS6220_100
		INC	DE
		LD	(HLI),A
		DEC	C
		JR	NZ,CS6210_100
;
		LD	(HL),$00
;
		POP	BC
;
	POP	AF
	CP	$03
	JR	NZ,CS62080
;
	LD	A,(TODYFG)
	LD	(SOUND4),A	;(S)
CS62080
	JP	STATINC
;---------------------------------
CS63000
	PUSH	BC
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	RLA
	AND	%00000110
	LD	E,A
	LD	D,B
	LD	HL,CAD6AD2
	ADD	HL,DE
	LD	A,(HLI)
	LD	D,(HL)
	LD	E,A
;
	LD	C,52
;
	LD	HL,VRAMD+1
CS6310
	LD	A,(DE)
	CP	$98
	JR	NZ,CS6320
;
	LD	A,(SCCV)
	AND	A
	LD	A,$98
	JR	Z,CS6320
;
	LD	A,$9A
CS6320
	INC	DE
	LD	(HLI),A
	DEC	C
	JR	NZ,CS6310
;
	LD	(HL),$00
;
		POP	BC	; �a�b���o��
		PUSH	BC

		LD	HL,ENWRK0
		ADD	HL,BC
		LD	A,(HL)
		RLA
		AND	%00000110
		LD	E,A
		LD	D,B
		LD	HL,CAD6AD2_atr
		ADD	HL,DE
		LD	A,(HLI)
		LD	D,(HL)
		LD	E,A
;
		LD	C,52
;
		LD	HL,VRAMD_AT+1
CS6310_100
		LD	A,(DE)
		CP	$98
		JR	NZ,CS6320_100
;
		LD	A,(SCCV)
		AND	A
		LD	A,$98
		JR	Z,CS6320_100
;
		LD	A,$9A
CS6320_100
		INC	DE
		LD	(HLI),A
		DEC	C
		JR	NZ,CS6310_100
;
		LD	(HL),$00
;
	POP	BC
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	INC	A
	LD	(HL),A
	CP	$04
;(CGB)	JR	NZ,CS6350
		JR	Z,CS6340
		JP	CS6350
CS6340
;
	LD	HL,BGUNDT+$11+$01
	LD	A,SYANE
	LD	(HLI),A
	LD	A,SYANE
	LD	(HLI),A
	LD	A,SYANE
	LD	(HLI),A
	LD	A,SYANE
	LD	(HLI),A
	LD	A,SYANE
	LD	(HLI),A
;--------------------------------------------
;	�_�a�i�P�i�ځj
;--------------------------------------------
		LD	HL,BGUNDT+$11+$01
		LD	A,$19|UNIT_TRAN_BIT
		CALL	Unit_change	; �o���N�Q���j�b�g��������
		INC	HL
		LD	A,$19|UNIT_TRAN_BIT
		CALL	Unit_change	; �o���N�Q���j�b�g��������
		INC	HL
		LD	A,$19|UNIT_TRAN_BIT
		CALL	Unit_change	; �o���N�Q���j�b�g��������
		INC	HL
		LD	A,$19|UNIT_TRAN_BIT
		CALL	Unit_change	; �o���N�Q���j�b�g��������
		INC	HL
		LD	A,$19|UNIT_TRAN_BIT
		CALL	Unit_change	; �o���N�Q���j�b�g��������
;--------------------------------------------
	LD	HL,BGUNDT+$11+$11
	LD	A,SYANE
	LD	(HLI),A
	LD	A,SYANE
	LD	(HLI),A
	LD	A,SYANE
	LD	(HLI),A
	LD	A,SYANE
	LD	(HLI),A
	LD	A,SYANE
	LD	(HLI),A
;--------------------------------------------
;	�_�a�i�Q�i�ځj
;--------------------------------------------
		LD	HL,BGUNDT+$11+$11
		LD	A,$19|UNIT_TRAN_BIT
		CALL	Unit_change	; �o���N�Q���j�b�g��������
		INC	HL
		LD	A,$19|UNIT_TRAN_BIT
		CALL	Unit_change	; �o���N�Q���j�b�g��������
		INC	HL
		LD	A,$19|UNIT_TRAN_BIT
		CALL	Unit_change	; �o���N�Q���j�b�g��������
		INC	HL
		LD	A,$19|UNIT_TRAN_BIT
		CALL	Unit_change	; �o���N�Q���j�b�g��������
		INC	HL
		LD	A,$19|UNIT_TRAN_BIT
		CALL	Unit_change	; �o���N�Q���j�b�g��������
;--------------------------------------------
	LD	HL,BGUNDT+$11+$21
	LD	A,SIN00
	LD	(HLI),A
	LD	A,SIN04
	LD	(HLI),A
	LD	A,SANA0
	LD	(HLI),A
	LD	A,SIN00
	LD	(HLI),A
	LD	A,SIN04
	LD	(HLI),A
;--------------------------------------------
;	�_�a�i�R�i�ځj
;--------------------------------------------
		LD	HL,BGUNDT+$11+$21
		LD	A,$19|UNIT_TRAN_BIT
		CALL	Unit_change	; �o���N�Q���j�b�g��������
		INC	HL
		LD	A,$19|UNIT_TRAN_BIT
		CALL	Unit_change	; �o���N�Q���j�b�g��������
		INC	HL
		LD	A,$19|UNIT_TRAN_BIT
		CALL	Unit_change	; �o���N�Q���j�b�g��������
		INC	HL
		LD	A,$19|UNIT_TRAN_BIT
		CALL	Unit_change	; �o���N�Q���j�b�g��������
		INC	HL
		LD	A,$19|UNIT_TRAN_BIT
		CALL	Unit_change	; �o���N�Q���j�b�g��������
;--------------------------------------------
	LD	HL,BGUNDT+$11+$31
	LD	A,SIN01
	LD	(HLI),A
	LD	A,SIN05
	LD	(HLI),A
	LD	A,ANA02
	LD	(HLI),A
	LD	A,SIN01
	LD	(HLI),A
	LD	A,SIN05
	LD	(HLI),A
;--------------------------------------------
;	�_�a�i�S�i�ځj
;--------------------------------------------
		LD	HL,BGUNDT+$11+$31
		LD	A,$19|UNIT_TRAN_BIT
		CALL	Unit_change	; �o���N�Q���j�b�g��������
		INC	HL
		LD	A,$19|UNIT_TRAN_BIT
		CALL	Unit_change	; �o���N�Q���j�b�g��������
		INC	HL
		LD	A,$19|UNIT_TRAN_BIT
		CALL	Unit_change	; �o���N�Q���j�b�g��������
		INC	HL
		LD	A,$19|UNIT_TRAN_BIT
		CALL	Unit_change	; �o���N�Q���j�b�g��������
		INC	HL
		LD	A,$19|UNIT_TRAN_BIT
		CALL	Unit_change	; �o���N�Q���j�b�g��������
;--------------------------------------------
;
	CALL	E7SVST
	SET	4,(HL)
;
	XOR	A
	LD	(TILTXD),A	
	LD	(ITEMNOT),A
;
	LD	A,$02
	LD	(SOUND1),A	;(S)
	JP	E7CLER
;
CS6350
	CALL	STATINC
	LD	(HL),$01
;
	CALL	LDTIM0
	LD	(HL),$30
	RET
;====================================================
CS6SXD
	DB	$18,$58,$28,$48,$38,$20,$50,$40
;
CS6SMST
	LD	A,(FRCNT)
	AND	$03
	JR	NZ,C6S2030
;
	LD	A,HASIR	;���Z�b�g
	CALL	ENIDSHL
	JR	C,C6S2030
;
	PUSH	BC
;
	CALL	RNDSUB
	AND	$07
	LD	C,A
	LD	HL,CS6SXD
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A
;
	CALL	RNDSUB
	AND	$07
	ADD	A,$47
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),A
;
	POP	BC
;
	LD	HL,ENMOD0
	ADD	HL,DE
	LD	(HL),%11000010
;
	LD	HL,ENTIM0
	ADD	HL,DE
	LD	(HL),$10
;
	LD	HL,ENWRK0
	ADD	HL,DE
	LD	(HL),$01
C6S2030
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�R�s�[�l�`			%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
COPYACD
	DB	$60,$01,$62,$01	;�O
	DB	$62,$21,$60,$21
;
	DB	$64,$01,$66,$01	;��
	DB	$66,$21,$64,$21
;
	DB	$68,$01,$6A,$01	;��
	DB	$6C,$01,$6E,$01
;
	DB	$6A,$21,$68,$21	;�E
	DB	$6E,$21,$6C,$21
COPYASP
	DB	$F0,$10
;;	DB	$10,$F0
;
COPYAMV
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JP	NZ,CAS6MV	;��U�����I
;
	LD	A,(DNJNNO)
	CP	$0A
	JR	NZ,CPA100
;
	LD	A,(GRNDPT)
	CP	$97
	JR	Z,CPA080
	CP	$98
	JR	NZ,CPA100
;
CPA080
	LD	A,(WARAFG)
	AND	A
	JR	NZ,CPA110
;
CPA100
	LD	DE,COPYACD
	CALL	EN2CST
CPA110
;
	CALL	E7STCK
	CALL	E7HNSB
	CALL	CREPKEL
	CALL	E7MVCL
	CALL	ENBGCKL
;
COPYAMAIN
	LD	A,(PLCBFG)
	AND	A
	JR	NZ,CYAFIN
;
	LD	A,(KEYA1)
	AND	$03
	JR	Z,CYCNH
;
	LD	E,A
	LD	D,B
;
	LD	HL,COPYASP-1	;(������ �����΂͂� ���������ׁ[)
	ADD	HL,DE
	LD	A,(HL)
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
;
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),B
;
	LD	A,E
	AND	$02
	ADD	A,$04
	LD	E,A
;
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	AND	$01
	ADD	A,E
;
	JP	ENPTST
;
CYCNH
	LD	A,(KEYA1)
	AND	$0F
	JR	Z,CYAFIN
;
	RRA
	RRA
	CPL
	AND	$03
	LD	E,A
	LD	D,B
;
	LD	HL,COPYASP-1	;(������ �����΂͂� ���������ׁ[)
	ADD	HL,DE
	LD	A,(HL)
;
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),A
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),B
;
	LD	A,E
	DEC	A
	XOR	$01
	SRA	A
	RLA
	RLA
	LD	E,A
;
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	AND	$01
	ADD	A,E
;
	JP	ENPTST
;
CYAFIN
	JP	ENSDCL
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%   �v�N�v�N                             %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
PUKPKCD
PUKPJCD
	DB	$60,$01,$62,$01
	DB	$64,$01,$66,$01
	DB	$62,$21,$60,$21
	DB	$66,$21,$64,$21
; - - - - - - - - - - - - - - - -
PUKPKMV
PUKPVMV
	LD	DE,PUKPKCD
	CALL	EN2CST
;
	CALL	E7STCK
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	A,(HL)
	RLCA
	RLCA
	AND	$02
	LD	E,A
;
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	AND	$01
	OR	E
	CALL	ENPTST
;
	CALL	CREPKEL
;
	LD	A,(ENSTAT2)
	RST	00
	DW	PKPK000
	DW	PKPK100
	DW	PKPK200
;---------------------------------------
PKPK000
	LD	HL,ENXSPD
	LD	A,(ENMYNO2)
	CP	PUKPK
	JR	Z,PKPK010
	LD	HL,ENYSPD
PKPK010
	ADD	HL,BC
	LD	(HL),$08
;---------------------------------
PKNEXT
	LD	E,$80
	LD	A,(ENMYNO2)
	CP	PUKPK
	JR	Z,PKNX10
;
	LD	E,$60
PKNX10
	CALL	LDTIM0
	LD	(HL),E ;$80
;
	CALL	STATINC
	LD	(HL),$01
	RET
;---------------------------------------
PKPK100
	CALL	LDTIM0
	JR	NZ,PKPK110
;
	LD	(HL),$28
;
	CALL	STATINC
PKPK110
		jp	E7MVCL
;;;;;;;;	CALL	E7MVCL
;;;;;;;;	RET
;---------------------------------------
PKPK200
	CALL	LDTIM0
	JR	NZ,PKPK210
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	A,(HL)
	CPL
	INC	A
	LD	(HL),A
;
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	A,(HL)
	CPL
	INC	A
	LD	(HL),A
;
	JP	PKNEXT
PKPK210
	RET
;=============================================
PUKPJMV
	LD	A,(ENSTAT2)
	CP	$05
	JR	NZ,PUKP010
;
	LD	A,(ENFLCL)
	OR	$40
	LD	(ENFLCL),A
PUKP010
	LD	DE,PUKPKCD
	CALL	EN2CST
;
	CALL	E7STCK
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	A,(HL)
	RLCA
	RLCA
	AND	$02
	LD	E,A
;
	CALL	E7HNSB
;
	LD	A,(ENSTAT2)
	CP	$05
	JR	Z,PUK0010
;
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	AND	$01
	OR	E
	CALL	ENPTST
;
	CALL	CREPKEL
PUK0010
	LD	A,(ENSTAT2)
	RST	00
	DW	PUK0800
	DW	PUK1000
	DW	PUK2000
	DW	PUK3000
	DW	PUK4000
	DW	PUKFAIL
;----------------------------------
PUK0800
	LD	HL,ENTIM4
	ADD	HL,BC
	LD	(HL),$03
;
	LD	A,(ENSVYL)
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	(HL),A
;
	JP	STATINC
;----------------------------------
PUK1000
	CALL	LDTIM0
	CALL	RNDSUB
	AND	$7F
	ADD	A,$30
	LD	(HL),A
;
	CALL	RNDSUB
	LD	E,$F4
	AND	$01
	JR	Z,PUK1010
	LD	E,$0C
PUK1010
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),E
;
	JP	STATINC
;----------------------------------
PUK2000
	CALL	LDTIM0
	JR	NZ,PUK2010
;
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),$D4
;
	LD	A,(ENDSYP)
	SUB	$08
	CALL	E7WUPSS
;
	LD	A,$24
	LD	(SOUND1),A	;(S)
;
	JP	STATINC
PUK2010
;	LD	E,$0C
;	AND	%00100000
;	JR	Z,PUK2020
;;
;	LD	E,$F4
;PUK2020
;	LD	HL,ENXSPD
;	ADD	HL,BC
;	LD	(HL),E
;
	CALL	LDTIM1
	JR	NZ,PUK2030
;
	CALL	RNDSUB
	AND	$3F
	OR	$10
	LD	(HL),A
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	A,(HL)
	CPL
	INC	A
	LD	(HL),A
PUK2030
	CALL	E7XCLC
	JP	ENBGCKL
;----------------------------------
PUK3000
	CALL	LDTIM0
		ret	NZ
;;;;;;;;	JR	NZ,PUK3090
;
	CALL	E7YCLC
	CALL	PUKBGCK
;;	CALL	ENBGCKL
;
	LD	HL,ENYSPD
	ADD	HL,BC
	INC	(HL)
	LD	A,(HL)
	CP	$18
		ret	NZ
;;;;;;;;	JR	NZ,PUK3090
;
		jp	STATINC
;;;;;;;;	CALL	STATINC
;;;;;;;;PUK3090
;;;;;;;;	RET
;----------------------------------
PUK4000
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENYPSL
	ADD	HL,BC
	CP	(HL)
	JR	NC,PUK4010
;
;	LD	A,(ENDSYP)
;	SUB	$08
;	CALL	E5WUPSS
;
	CALL	STATINC
	LD	(HL),$01
	RET
PUK4010
	CALL	E7YCLC
;
PUKBGCK
	LD	HL,ENMOD3
	ADD	HL,BC
	SET	0,(HL)
	CALL 	ENBGCKL
	LD	HL,ENMOD3
	ADD	HL,BC
	RES	0,(HL)
;
	RET
;=================================================
PUKFAIL
	LD	HL,ENMOD0
	ADD	HL,BC
	SET	7,(HL)
	SET	6,(HL)
;
	LD	HL,ENYSPD
	ADD	HL,BC
	INC	(HL)
;
	PUSH	HL
;
	LD	HL,ENWATR
	ADD	HL,BC
	LD	A,(HL)
	POP	HL
	AND	A
	JR	Z,PKF010
;
	LD	(HL),$06
PKF010
;;	CALL	PUK4010
	CALL	E7YCLC
;
	LD	A,(ENDSYP)
	CP	$70
	JR  	C,PUKBGCK
;
	CP	$88
	JP	NC,E7CLER
	RET
;===================================
E7WUPST
	LD	A,(ENDSYP)
E7WUPSS
	LD	(WORK1),A
	LD	A,(ENSVXL)
	LD	(WORK0),A
;
	LD	A,WTUP
	CALL	EXIDSH
;
	LD	A,$0E
	LD	(SOUND1),A	;(S)
	RET
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%  �o�i�i���j                                           %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
WKANCD
	DB	$9A,$15,$9C,$15
;- - - - - - - - - - - - - - - - -
WKANMV
	LD	DE,WKANCD
	CALL	EN2CST
;
	CALL	E7ZCLC
	LD	HL,ENZSPD
	ADD	HL,BC
	DEC	(HL)
;
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	AND	%10000000
	JP	NZ,E7CLER
	RET
;
;=========================================
;	�o�i�i���̃��j
;=========================================
WANIBMV
		PUSH	BC
		SLA	C
		SLA	C
		LD	HL,ENOJSZ
		ADD	HL,BC
		LD	A,$00B
		LD	(HLI),A
		LD	A,$009
		LD	(HLI),A
		LD	A,$008
		LD	(HLI),A
		LD	A,$00B
		LD	(HL),A
		POP	BC
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JP	NZ,WKANMV
;
	CALL	WANIBCS
;
	CALL	M7CROS
;
		ld	a,(GMMODE)
		cp	GPLAY
		ret	nz
;
		ld	a,(SBHR)
		cp	004
		ret	nz
;
	LD	A,(ENSTAT2)
	RST	00
	DW	WAB1000
	DW	WAB2000
	DW	WAB3000
	DW	WAB4000
;--------------------------------------
WAB1000
	CALL	E7MSCK	
	JR	NC,WAB1050
;
	LD	E,$CD
;
	LD	A,(DJSVBF)
	AND	%00100000
	JR	NZ,WAB1020
;
	LD	E,$CC
;
	LD	A,(DJRMSV+$1FE)
	AND	%00100000
	JR	NZ,WAB1020
;
	LD	E,$C6
;
	LD	A,(MEGAF)
	CP	$03
	JR	NZ,WAB1020
;
	LD	A,$C7
	CALL	MSGCH2
;
	JP	STATINC
WAB1020
	LD	A,E
	CALL	MSGCH2
WAB1050
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	RRA
	AND	$01
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;	RET
;============================================
WAB2000
	LD	A,(MSGEFG)
	AND	A
		ret	NZ
;;;;;;;;	JR	NZ,WAB2050
;
	CALL	STATINC
;
	LD	A,(MSANSR)
	AND	A
	JR	Z,WAB2010
;
	LD	(HL),B
;
	LD	A,$C9
	JP  	MSGCH2
WAB2010
	LD	A,$C8
		jp	MSGCH2
;;;;;;;;	CALL	MSGCH2
;;;;;;;;WAB2050
;;;;;;;;	RET
;============================================
WAB3000
	LD	A,(MSGEFG)
	AND	A
		ret	NZ
;;;;;;;;	JR	NZ,WAB3030
;
	LD	A,WANI
	CALL	ENIDSHL
;
	LD	A,(WORK0)
	LD	HL,ENXPSL
	ADD	HL,DE
	SUB	$02
	LD	(HL),A
;
	LD	A,(WORK1)
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,ENWRK0
	ADD	HL,DE
	LD	(HL),$01
;
	LD	HL,ENZSPD
	ADD	HL,DE
	LD	(HL),$20
;
	LD	HL,ENMOD0
	ADD	HL,DE
	LD	(HL),%11000010
;
	LD	A,$24
	LD	(SOUND1),A	;(S)
;
		LD	A,(CGBFLG)
		AND	A
		JR	Z,WAB3010
		LD	HL,OBCGWK+((($005*$004)+$001)*$002)
		LD	A,$0FF
		LD	(HLI),A
		LD	A,$07F
		LD	(HLI),A
		LD	A,$031
		LD	(HLI),A
		LD	A,$052
		LD	(HLI),A
		LD	A,OBJCOL_BITFG
		LD	(CGDMAF),A
WAB3010
;
;---------------------------------
	CALL	LDTIM0
	LD	(HL),$C0
;
		jp	STATINC
;;;;;;;;	CALL	STATINC
;;;;;;;;WAB3030
;;;;;;;;	RET
;============================================
WAKAMD
	DB	0,1,2,1
;
WAB4000
	LD	A,$02
	LD	(PLSTOP),A
	LD	(ITEMNOT),A
;
	CALL	LDTIM0
	JR	NZ,WAB4020
;
	XOR	A
	LD	(ITEMNOT),A
;
	LD	A,$04
	LD	(MEGAF),A	;�o�i�i�Ƃ�������!
;
	LD	A,$0D
	LD	(CHTRF2),A	;�]���I
;
	CALL	YOSSISET
;
	CALL	STATINC
	LD	(HL),B
	RET
WAB4020
	CP	$80
	JR	C,WAB4030
;
	LD	A,$03
	JP  	ENPTST
WAB4030
	CP	$08
	JR	NZ,WAB4050
;
	DEC	(HL)
;
	LD	A,$CA
	CALL	MSGCH2
WAB4050
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	AND	$03
	LD	E,A
	LD	D,B
	LD	HL,WAKAMD
	ADD	HL,DE
	LD	A,(HL)
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;	RET
;============================================
;	�o�i�i����̃��j
;============================================
WANIBCD
;0
	DB	$00,$00,$50,$03
	DB	$00,$08,$52,$03
	DB	$00,$10,$54,$03
	DB	$10,$00,$56,$03
	DB	$10,$08,$58,$03
	DB	$10,$10,$5A,$03
	DB	$FF,$FF,$FF,$FF
	DB	$FF,$FF,$FF,$FF
;1
	DB	$00,$00,$50,$03
	DB	$00,$08,$52,$03
	DB	$00,$10,$5C,$03
	DB	$10,$00,$56,$03
	DB	$10,$08,$58,$03
	DB	$10,$10,$5E,$03
	DB	$10,$18,$60,$03
	DB	$FF,$FF,$FF,$FF
;2
	DB	$00,$00,$62,$03
	DB	$00,$08,$64,$03
	DB	$00,$10,$66,$03
	DB	$10,$00,$68,$03
	DB	$10,$08,$58,$03
	DB	$10,$10,$5E,$03
	DB	$10,$18,$60,$03
	DB	$FF,$FF,$FF,$FF
;3
	DB	$00,$00,$6A,$03
	DB	$00,$08,$6C,$03
	DB	$00,$10,$6E,$03
	DB	$10,$00,$68,$03
	DB	$10,$08,$58,$03
	DB	$10,$10,$5E,$03
	DB	$10,$18,$60,$03
	DB	$FF,$FF,$FF,$FF
;
WBANANACD
	DB	$10,$00,$74,$07
	DB	$10,$08,$76,$07
;
	DB	$10,$10,$74,$07
	DB	$10,$18,$76,$07
;
	DB	$00,$10,$74,$07
	DB	$00,$18,$76,$07
;
	DB	$00,$00,$74,$07
	DB	$00,$08,$76,$07
;
WANIBCS
	LD	A,(ENCHPT2)
	RLA
	RLA
	RLA
	RLA
	RLA
	AND	%11100000
	LD	E,A
	LD	D,B
	LD	HL,WANIBCD
	ADD	HL,DE
;
	LD	A,(ENSVXL)
	ADD	A,$03
	LD	(ENSVXL),A
;
	LD	C,$07
	CALL	ENOMST
;
	LD	A,$07-$05
	CALL	NXOMSBL
;
	LD	A,$78
	LD	(ENSVXL),A
	LD	A,$5C
	LD	(ENDSYP),A
;
	LD	HL,WBANANACD
	LD	C,$08
	LD	A,(MEGAF)
	CP	$04
	JR	NZ,WBAC010
	DEC	C
	DEC	C
WBAC010
	CALL	ENOMST	
;
	LD	A,$08-$05
	CALL	NXOMSBL
;
		jp	ENPSSV
;;;;;;;;	CALL	ENPSSV
;;;;;;;;	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%  ���j�G����                                           %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
WBANANACD2			; �΂Ȃ�
	DB	$08,$04,$70,$01
	DB	$08,$0C,$72,$01
	DB	$08,$14,$70,$21
;;;KK;;;	DB	$08,$04,$70,$07
;;;KK;;;	DB	$08,$0C,$72,$07
;;;KK;;;	DB	$08,$14,$70,$27
;- - - - - - - - - - - - - - - - - - - - - - - - -
WANIMV
	LD	A,(DJFLAG)
	AND	A
	JR	NZ,WNBA10
;
	LD	HL,ENMOD0
	ADD	HL,BC
	LD	(HL),%11000011
;
	LD	HL,WBANANACD2
	LD	C,$03
	JP  	ENOMST
;=============================================
WNBA10
	LD	A,(GRNDPT)
	CP	$FE		;�o�i�i���j
	JP	Z,WANIBMV	;	YES --> WANIBMV
;
	LD	A,(ENSVXL)
	CP	$30
	JP	C,KABAMV
;
	LD	A,(ENSTAT2)
	AND	A
	JR	NZ,WNI0000
;
	CALL	STATINC
;
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	(HL),$48
;
	LD	HL,ENXPSL
	ADD	HL,BC
	LD	A,(HL)
	SUB	$04
	LD	(HL),A
;
	LD	A,WANI
	CALL	ENIDSHL
;
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),$28
;
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),$28
;
	LD	HL,ENWRK0
	ADD	HL,DE
	LD	(HL),$01
;
	LD	HL,ENTIM0
	ADD	HL,DE
	LD	(HL),$40
WNI0000
		PUSH	BC
		SLA	C
		SLA	C
		LD	HL,ENOJSZ
		ADD	HL,BC
		LD	A,$00A
		LD	(HLI),A
		LD	A,$008
		LD	(HLI),A
		LD	A,$0FF
		LD	(HLI),A
		LD	A,$009
		LD	(HL),A
		POP	BC
;
	CALL	WANICS
;-------------------------------------
	CALL	M7CROS
;
	LD	A,(ENSTAT2)
	RST	00
	DW	WNIRET
	DW	WNI1000
	DW	WNI2000
WNIRET
	RET
;-------------------------------------------
WNI1000
	CALL	LDTIM3
	RET	NZ
;
	CALL	E7MSCK
	JR	NC,WNI1090
;
	LD	A,(MEGAF)
	CP	$0D		;�l���̃E���R�H
	JR	NZ,WNI1070	;	NO --> WNI1070
	LD	A,$08F
	JR	WNI1085
;
WNI1070
	CP	$0E		;�݂Ƃ��������Y�H
	JR	NZ,WNI1080	;	NO --> WNI1080
;
	LD	A,$D8
	CALL	MSGCHK
	JR	WNI1088
WNI1080
	LD	A,$9B
WNI1085
	CALL	MSGCH2
WNI1088
	LD	HL,MSGEFG
	SET	7,(HL)	;���I
;
	CALL	STATINC
WNI1090
	LD	A,(FRCNT)
	LD	E,$00
	AND	%00100000
	JR	Z,WNI0010
	INC	E
WNI0010
	LD	A,E
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;	RET
;-------------------------------------------
WNI2000
	LD	A,(MSGEFG)
	AND	A
	JR	NZ,WNI2010
;
	CALL	STATINC
	LD	(HL),$1
WNI2010
	CALL	E7XCHK
	LD	A,E
	ADD	A,$02
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;	RET	
;================================
WANICD
;0
	DB	$F8,$F8,$5A,$02
	DB	$F8,$00,$5C,$02
	DB	$F8,$08,$5E,$02
	DB	$08,$00,$60,$02
	DB	$08,$08,$62,$02
;1
	DB	$F8,$10,$5A,$22
	DB	$F8,$00,$5E,$22
	DB	$F8,$08,$5C,$22
	DB	$08,$00,$62,$22
	DB	$08,$08,$60,$22
;2
	DB	$00,$10,$50,$22
	DB	$F8,$00,$54,$22
	DB	$F8,$08,$52,$22
	DB	$08,$00,$58,$22
	DB	$08,$08,$56,$22
;3
	DB	$00,$F8,$50,$02
	DB	$F8,$00,$52,$02
	DB	$F8,$08,$54,$02
	DB	$08,$00,$56,$02
	DB	$08,$08,$58,$02
;-----------------------------------------
PICTCD
	DB	$F0,$00,$76,$01
	DB	$F0,$08,$76,$21
	DB	$00,$00,$78,$01
	DB	$00,$08,$78,$21
;- - - - - - - - - - - - - - - - - - -
WANICS
	LD	A,(ENCHPT2)
	RLA
	RLA
	AND	%11111100
;
	LD	E,A
	RLA
	RLA
	AND	%11110000
	ADD	A,E
	LD	E,A
	LD	D,B
	LD	HL,WANICD
	ADD	HL,DE
;
	LD	A,(ENSVXL)
	ADD	A,$04
	LD	(ENSVXL),A
;
	LD	C,$05
	CALL	ENOMST
;
	LD	A,(ENSVXL)
	ADD	A,$10
	LD	(ENSVXL),A
;
	LD	HL,PICTCD
;
	LD	C,$04
	CALL	ENOMST
;
	CALL	M7CROS
;
	LD	A,(PLXPSL)
	SUB	$68
	ADD	A,$04
	CP	$08
	JR	NC,WNPC90
;
	LD	A,(PLYPSL)
	SUB	$50
	ADD	A,$04
	CP	$08
	JR	NC,WNPC90
;
	LD	A,(PLCMKI)
	CP	$02
	JR	NZ,WNPC90
;
	CALL	E7MSSB2
	JR	NC,WNPC90
;
	CALL	LDTIM3
	JR	NZ,WNPC90
;
		LD	A,(SBHR)
		CP	4		; �t�F�[�h���H
		JR	NZ,WNPC90	; �x�d�r
;
	LD	A,PEACH
	LD	(GMMODE),A
;
	XOR	A		;YES !
	LD	(SBHR),A
	LD	(SBCNT),A
;
	LD	(ITMODE),A
;
	CALL	LDTIM3
	LD	(HL),$08
WNPC90
		jp	ENPSSV
;;;;;;;;	CALL	ENPSSV
;;;;;;;;	RET
;================================
;================================
;================================
;================================
;================================
KABAMV
		PUSH	BC
		SLA	C
		SLA	C
		LD	HL,ENOJSZ
		ADD	HL,BC
		INC	HL
		INC	HL
		INC	HL
		LD	A,$009
		LD	(HL),A
		POP	BC
;
	CALL	LDTIM0
	JR	Z,KBA00F0
;
	LD	A,$00
	LD	(ENCHPT2),A
KBA00F0
	CALL	KABACS
;
	CALL	M7CROS
;
;------------------------------------
KBA1000
	LD	HL,ENMUKI
	ADD	HL,BC
;
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	AND	$01
	INC	A
	ADD	A,(HL)
	CALL	ENPTST
;
	CALL	E7YCHK
	ADD	A,$13
	CP	$26
	JR	NC,KBA1020
;
	CALL	E7XCHK
	ADD	A,$13
	CP	$26
	JR	NC,KBA1020
;
	LD	A,E
	SLA	A
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	(HL),A
KBA1020
	CALL	E7MSCK
		ret	NC
;;;;;;;;	JR	NC,KBA1030
;
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	INC	(HL)
	AND	$01
	JR	Z,KBA1022
;
	LD	E,$AF	;���ƂŁI
;
	CALL	RNDSUB
	AND	$3F
	JR	Z,KBA1028
;
	LD	E,$FB
;
	CALL	RNDSUB
	AND	$07
	JR	Z,KBA1028
;
KBA1022
	LD	E,$FA 
KBA1028
	LD	A,E
		jp	MSGCHK
;;;;;;;;	CALL	MSGCHK
;;;;;;;;KBA1030
;;;;;;;;	RET
;------------------------------------
KABACD
;0
	DB	$F4,$00,$64,$03
	DB	$F4,$08,$66,$03
	DB	$04,$00,$68,$03
	DB	$04,$08,$6A,$03
	DB	$FF,$FF,$FF,$FF
;1
	DB	$04,$F8,$70,$03
	DB	$F4,$00,$6C,$03
	DB	$F4,$08,$6E,$03
	DB	$04,$00,$72,$03
	DB	$04,$08,$74,$03
;2
	DB	$04,$F8,$7A,$03
	DB	$F4,$00,$6C,$03
	DB	$F4,$08,$6E,$03
	DB	$04,$00,$7C,$03
	DB	$04,$08,$74,$03
;3
	DB	$04,$10,$70,$23
	DB	$F4,$00,$6E,$23
	DB	$F4,$08,$6C,$23
	DB	$04,$00,$74,$23
	DB	$04,$08,$72,$23
;4
	DB	$04,$10,$7A,$23
	DB	$F4,$00,$6E,$23
	DB	$F4,$08,$6C,$23
	DB	$04,$00,$74,$23
	DB	$04,$08,$7C,$23
;
KABACS
	LD	A,(ENCHPT2)
	RLA
	RLA
	AND	%11111100
;
	LD	E,A
	RLA
	RLA
	AND	%11110000
	ADD	A,E
	LD	E,A
	LD	D,B
	LD	HL,KABACD
	ADD	HL,DE
;
	LD	C,$05
		jp	ENOMST
;;;;;;;;	CALL	ENOMST
;;;;;;;;;
;;;;;;;;	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	���Q���炤�����I		    %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
GAGLMT
;;		  0   1   2   3   4   5   6   7   8   9
	DB	$00,$06,$0C,$13,$19,$20,$26,$2C,$33,$39
;;		  A   B   C   D   E   F
	DB	$00,$00,$00,$00,$00,$00	;���肦�Ȃ�
;;		 10  11  12  13  14  15  16  17  18  19
	DB	$40,$43,$46,$49,$4C,$4F,$52,$55,$58,$5C
;;		 1A  1B  1C  1D  1E  1F
	DB	$00,$00,$00,$00,$00,$00	;���肦�Ȃ�
;;		 20  21  22  23  24  25  26  27  28
	DB	$60,$60,$60,$60,$60,$60,$60,$60,$60
;- - - - - - - - - - - - - - - - - - - - -
GAGEMV
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	CP	$02
	JP	Z,GTAKARA
	AND	A
	JP	NZ,GAGFLASH
;
		LD	A,(CLC20)	;��������
		CP	$020
		JR	Z,GAG000_900
		CP	$005
		JR	NC,GAG000_900
		LD	HL,ENWRK4
		ADD	HL,BC
		LD	A,(HL)
		AND	$002
		JR	NZ,GAG000_900
		LD	A,(PLXPSL)
		CP	$18
		JR	C,GAG000_900
		LD	A,(HL)
		AND	A
		JR	NZ,GAG000_500
		LD	A,(KENLEV)
		AND	$002		;���x���Q�̌���������H
		JR	NZ,GAG000_900	;	YES --> GAG000_900
		LD	A,$079
		CALL	MSGCH2
		INC	(HL)
		RET
GAG000_500
		LD	A,(MSGEFG)
		AND	A		;���b�Z�[�W�\�����H
		RET	NZ		;	YES --> return
		INC	(HL)
		RET
GAG000_900
;
	LD	A,(PLXPSL)
	CP	$38
	JR	NC,GAG000
;
	CP	$20
	JR	C,GAG000
	LD	HL,PLFLPR
	SET	7,(HL)
	CP	$24
	JR	C,GAG000
;
	LD	HL,PLFLPL
	SET	7,(HL)
GAG000
	LD	A,(CLC20)	;��������
	AND	A
	RET	Z
;
	LD	E,A
	LD	D,B
	LD	HL,GAGLMT
	ADD	HL,DE
	LD	A,(HL)
	LD	(ENHELP),A
;
	LD	A,(DJSVBF)
	AND	%00010000
;
	CALL	GAGECS
;
		LD	A,(ENSTAT2)
		RST	00
GAGE_ADR	DW	GAG1000
		DW	GAG1800
		DW	GAG2000
		DW	GAG3000
		DW	GAG4000
TARINAI_ADR	DW	GAG5000
PREZEN_ADR	DW	GAG6000
GAGE_WAIT_ADR	DW	GAG7000
GAGE_END_ADR	DW	GAG8000
		DW	GAG9000
;
GAGE_TARINAI	EQU	(TARINAI_ADR-GAGE_ADR)/2
GAGE_PREZEN	EQU	(PREZEN_ADR-GAGE_ADR)/2
GAGE_WAIT	EQU	(GAGE_WAIT_ADR-GAGE_ADR)/2
GAGE_END	EQU	(GAGE_END_ADR-GAGE_ADR)/2
;
;----------------------------------------------
GAG1000
	LD	A,(PLXPSL)
	CP	$3C
	JR	C,GAG1010
;
	CALL	PLSDCL
	CALL	DUSHCL
;
	CALL	STATINC
;
	CALL	LDTIM0
	LD	(HL),$40+$18
GAG1010
	RET
;----------------------------------------------
GAG1800
	LD	A,$01
	LD	(ITEMNOT),A
;
	LD	A,(PLJPFG)
	AND	A
	JP	Z,STATINC
	RET
;----------------------------------------------
GAG2000
	LD	A,$02
	LD	(PLSTOP),A
;
	CALL	LDTIM0
	RET	NZ
;
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(ENHELP)
	SUB	(HL)
	JR	NC,GAG2010
;
	LD	A,(ENHELP)
	LD	(HL),A
;
		jp	STATINC
;;;;;;;;	CALL	STATINC
;;;;;;;;	RET
GAG2010
	LD	E,A
;
	LD	A,(FRCNT)
	AND	$03
	JR	NZ,GAG2020
;
	CALL	RNDSUB
	AND	$01
	JR	NZ,GAG2020
;
	LD	A,E
	RRA
	RRA
	RRA
	RRA
	AND	$0F
	AND	A
	JR	NZ,GAG2018
	LD	A,$01
GAG2018
	ADD	A,(HL)
	LD	(HL),A
;
	LD	A,$06
	LD	(SOUND2),A	;(S)
GAG2020
	RET
;----------------------------------------------
GAG3000
	LD	A,$02
	LD	(PLSTOP),A
	LD	(ITEMNOT),A
;
;;	CALL	LDTIM0
;;	JR	NZ,GAG3050
;
	LD	A,(CLC20)
	CP	$20
	JR	C,GAG3010	;20�� ���܂����H
;				;YES 
	CALL	LDTIM0
	LD	(HL),$40
;
	CALL	STATINC
;
	CALL	GAGEBS		;BG set
;
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	(HL),$01	;OBJ �����I
;-------------------------------------------
	LD	A,$56
	LD	(SOUND4),A	;(S)
GATARI
	XOR	A
	LD	(ITEMNOT),A
;
	CALL	LDTIM1
	LD	(HL),$3F
;
	RET
GAG3010
	LD	HL,DJRMSV+$1E9
;
	CP	$05		;�T���傤�ǂ���H
	JR	NZ,GAG3020	;	NO --> GAG3020
;
	BIT	5,(HL)
	JR	NZ,GAG3050
;
	CALL	STATINC
	LD	(HL),GAGE_PREZEN
	LD	A,$23
	LD	(SOUND1),A	;(S)
	JP	GATARI
GAG3020
	CP	$10		;�P�U���傤�ǂ���H
	JR	NZ,GAG3050	;	NO --> GAG3050
;
	BIT	6,(HL)
	JR	NZ,GAG3050
;
	CALL	STATINC
	LD	(HL),GAGE_PREZEN
	LD	A,$23
	LD	(SOUND1),A	;(S)
	JP	GATARI
;	
GAG3050
	LD	A,$1D
	LD	(SOUND1),A	;(S)
;
	CALL	STATINC
	LD	(HL),GAGE_TARINAI
	CALL	LDTIM1
	LD	(HL),$3F
;
	XOR	A
	LD	(ITEMNOT),A
	RET
;----------------------------------------------
GAG4000
	LD	A,$02
	LD	(PLSTOP),A
	LD	(ITEMNOT),A
;
	CALL	LDTIM0
	CP	$3E
	JR	NZ,GAG4018
;
	LD	HL,SOUND1
	LD	(HL),$23	;(S)
GAG4018	
	AND	A
	JR	NZ,GAG4030
;
		LD	A,$07B
		CALL	MSGCH2
;
;;;KK;;;	LD	A,GAGE
;;;KK;;;	CALL	ENIDSHL
;;;KK;;;;
;;;KK;;;	LD	HL,ENXPSL
;;;KK;;;	ADD	HL,DE
;;;KK;;;	LD	(HL),$50	
;;;KK;;;;
;;;KK;;;	LD	HL,ENYPSL
;;;KK;;;	ADD	HL,DE
;;;KK;;;	LD	(HL),$48	
;;;KK;;;;
;;;KK;;;	LD	HL,ENWRK0
;;;KK;;;	ADD	HL,DE
;;;KK;;;	LD	(HL),$01
;;;KK;;;;
;;;KK;;;	LD	HL,ENTIM0
;;;KK;;;	ADD	HL,DE
;;;KK;;;	LD	(HL),$1F+$30
;
	CALL	STATINC
	LD	(HL),GAGE_END
GAG4030
	RET
;----------------------------------------------
GAG5000
		CALL	LDTIM1
		RET	NZ
		LD	A,$07A
		CALL	MSGCH2
		CALL	STATINC
		LD	(HL),GAGE_WAIT
		RET
;----------------------------------------------
GAG6000
	CALL	LDTIM1
	JR	NZ,GAG6010
;
	CALL	STATINC
;
	LD	A,GAGE		;�v���[���g���쐬
	CALL	ENIDSHL
;
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),$50	
;
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),$48	
;
	LD	HL,ENWRK0
	ADD	HL,DE
	LD	(HL),$02
;
	LD	HL,ENTIM0
	ADD	HL,DE
	LD	(HL),$14
;
	LD	A,BOMBR		;�������ʂׂ̈Ƀo�N�_���I�u�W�F�쐬
	CALL	ENIDSHL
;
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),$50	
;
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),$48	
;
	LD	HL,ENTIM0
	ADD	HL,DE
	LD	(HL),$20
GAG6010
	RET
;----------------------------------------------
GAG7000
	RET
;----------------------------------------------
GAG8000
		LD	A,(MSGEFG)
		AND	A		;���b�Z�[�W�\�����H
		RET	NZ		;	YES --> return
;
		CALL	LDTIM1
		LD	(HL),$20
		jp	STATINC
;;;;;;;;		CALL	STATINC
;;;;;;;;		RET
;----------------------------------------------
GAG9000
		CALL	LDTIM1
		RET	NZ
;
		LD	A,GAGE
		CALL	ENIDSHL
;
		LD	HL,ENXPSL
		ADD	HL,DE
		LD	(HL),$50	
;
		LD	HL,ENYPSL
		ADD	HL,DE
		LD	(HL),$48	
;
		LD	HL,ENWRK0
		ADD	HL,DE
		LD	(HL),$01
;
		LD	HL,ENTIM0
		ADD	HL,DE
		LD	(HL),$1F+$30
;
		CALL	STATINC
		LD	(HL),GAGE_WAIT
		RET
;================================================
GAGECD
	DB	$50,$00,$50,$20
GAGFLCD
	DB	$3C,$00,$3C,$20
	DB	$3A,$00,$3A,$20
	DB	$1E,$00,$1E,$60
	DB	$1E,$10,$1E,$70
;
GAGECS
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	NZ,GAGC20
;
	LD	A,$88
	LD	(ENSVXL),A
	LD	A,$80
	LD	(ENDSYP),A
;
	LD	DE,GAGECD
	CALL	EN2CST
;
;;	LD	A,(ENHELP)
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	LD	E,A
	LD	A,$80
	SUB	E
	LD	(ENDSYP),A
GAGC10
	LD	DE,GAGECD
	CALL	EN2CST
;
	LD	A,(ENDSYP)
	ADD	A,$10
	LD	(ENDSYP),A
	CP	$80
	JR	C,GAGC10
;
GAGC20
	CALL	LDTIM1
		ret	Z
;;;;;;;;	JR	Z,GAGC50
;
	RRA
	RRA
	RRA
	AND	$03
	LD	(ENCHPT2),A
;
;;	LD	A,(ENHELP2)
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	LD	E,A
	LD	A,$80
	SUB	E
	LD	(ENDSYP),A
;
	LD	A,$78
	LD	(ENSVXL),A
;
	LD	DE,GAGFLCD
	CALL	EN2CST
;
	LD	A,$98
	LD	(ENSVXL),A
;
	LD	DE,GAGFLCD
		jp	EN2CST
;;;;;;;;	CALL	EN2CST
;;;;;;;;GAGC50
;;;;;;;;	RET
;============================================
;============================================
GFLSHCD
;0
	DB	$D8,$E8,$7C,$40
	DB	$D8,$F0,$7C,$20
	DB	$E8,$E8,$7C,$00
	DB	$E8,$F0,$7C,$60
;
       	DB	  $F8,$F8,$7C,$00
	DB	  $F8,$00,$7C,$60
;
 	DB	    $08,$08,$7C,$00
       	DB	    $08,$10,$7C,$60
;
 	DB	      $18,$18,$7C,$00
       	DB	      $18,$20,$7C,$60
;
 	DB	      $28,$18,$7C,$40
       	DB	      $28,$20,$7C,$20
;1
	DB	$D8,$F8,$7C,$00
	DB	$D8,$00,$7C,$60
;
	DB	  $E8,$08,$7C,$00
	DB	  $E8,$10,$7C,$60
       	DB	  $F8,$08,$7C,$40
	DB        $F8,$10,$7C,$20
;
 	DB      $08,$F8,$7C,$40
       	DB      $08,$00,$7C,$20
 	DB	$18,$F8,$7C,$00
       	DB	$18,$00,$7C,$60
;
 	DB	  $28,$08,$7C,$00
       	DB	  $28,$10,$7C,$60
;2
	DB	  $D8,$08,$7C,$40
	DB	  $D8,$10,$7C,$20
;
	DB	$E8,$F8,$7C,$40
	DB	$E8,$00,$7C,$20
       	DB	$F8,$F8,$7C,$00
	DB      $F8,$00,$7C,$60
;
 	DB        $08,$08,$7C,$00
       	DB        $08,$10,$7C,$60
 	DB	  $18,$08,$7C,$40
       	DB	  $18,$10,$7C,$20
;
 	DB	$28,$F8,$7C,$40
       	DB	$28,$00,$7C,$20
;3
	DB	  $D8,$18,$7C,$00
	DB	  $D8,$20,$7C,$60
	DB	  $E8,$18,$7C,$40
	DB	  $E8,$20,$7C,$20
;
       	DB	$F8,$08,$7C,$40
	DB      $F8,$10,$7C,$20
;
 	DB    $08,$F8,$7C,$40
       	DB    $08,$00,$7C,$20
;
 	DB  $18,$E8,$7C,$40
       	DB  $18,$F0,$7C,$20
 	DB  $28,$E8,$7C,$00
       	DB  $28,$F0,$7C,$60
;- - - - - - - - - - - - - - - - - - - - - -
GAGFLASH
	LD	A,(ENSTAT2)
	RST	00
	DW	GGF1000
	DW	GGF2000
	DW	GGF3000
	DW	GGF4000
	DW	GGF5000
	DW	GGF6000
	DW	GGF7000
	DW	GGF8000
;	
;============================================
GGF1000
	LD	A,$02
	LD	(PLSTOP),A
	LD	(ITEMNOT),A
;
	CALL	LDTIM0
	JR	Z,GGF1010
;
	CP	$30
	RET	C
;
	SUB	$30
;
	RRA
	RRA
	RRA
	AND	$03
	LD	(ENCHPT2),A
;
	LD	DE,GAGFLCD
		jp	EN2CST
;;;;;;;;	CALL	EN2CST
;;;;;;;;;
;;;;;;;;	RET	
;
GGF1010
	CALL	LDTIM0
	LD	(HL),$A0
;
	JP	STATINC
;============================================
GGF2000
	LD	A,$02
	LD	(PLSTOP),A
	LD	(ITEMNOT),A
;
	CALL	LDTIM0
	JR	NZ,GGF2008
;
	LD	(HL),$FF ;$80
;
	LD	A,$1E
	LD	(SOUND2),A	;(S)
;
	CALL	STATINC
GGF2008
;-----------------------------------------
GFLASHST
	CALL	LDTIM0
	AND	$04
	LD	E,$E4
	JR	Z,GGF2002
	LD	E,$84
GGF2002
	LD	A,E
	LD	(BGPFG),A
;
	LD	A,(FRCNT)
	AND	$07
	JR	NZ,GGF2010
;
	LD	A,$33
	LD	(SOUND3),A	;(S)
;
	CALL	RNDSUB
	AND	$03
	CALL	ENPTST
GGF2010
	LD	A,(FRCNT)
	LD	HL,ENFLSH
	ADD	HL,BC
	LD	(HL),A
;
	LD	A,(ENCHPT2)
	RLA
	RLA
;;	RLA
;;	RLA
;;	AND	%11110000
	RLA
	RLA
	AND	%11110000
	LD	E,A
	RLA	
	AND	%11100000
	ADD	A,E
	LD	E,A
	LD	D,B
	LD	HL,GFLSHCD
	ADD	HL,DE
;
	LD	C,12
	CALL	ENOMST
;
	LD	A,10
		jp	NXOMSBL
;;;;;;;;	CALL	NXOMSBL
;;;;;;;;	RET
;============================================
MARUCD
	DB	$7A,$00,$7A,$20
;
GGF3000
	LD	A,$02
	LD	(PLSTOP),A
	LD	(ITEMNOT),A
;
	CALL	GFLASHST
;
	CALL	LDTIM0
	JR	NZ,GGF3010
;
	CALL	LDTIM3
	LD	(HL),$28
;;;	LD	(HL),$50
;
	JP  	STATINC
;;	LD	(HL),$27
GGF3010
	CP	$50
	JR	NC,GGF3020
;
	LD	HL,MARUCD22
;
	LD	C,$08
	CALL	ENOMST
;
	LD	A,$06
	JP  	NXOMSBL
GGF3020
	XOR	A
	LD	(ENCHPT2),A
;
	LD	DE,MARUCD
		jp  	EN2CST
;;;;;;;;	CALL  	EN2CST
;;;;;;;;	RET
;============================================
MARUCD2
;4
	DB	$F8,$00,$6E,$00
	DB	$F8,$08,$6E,$20
	DB	$F8,$00,$6E,$00
	DB	$F8,$08,$6E,$20
	DB	$08,$00,$70,$00
	DB	$08,$08,$70,$20
	DB	$08,$00,$70,$00
	DB	$08,$08,$70,$20
;3
	DB	$F8,$F8,$68,$00
	DB	$F8,$00,$6A,$00
	DB	$F8,$08,$6A,$20
	DB	$F8,$10,$68,$20
	DB	$08,$00,$6C,$00
	DB	$08,$08,$6C,$20
	DB	$08,$00,$6C,$00
	DB	$08,$08,$6C,$20
;2
	DB	$F8,$F8,$62,$00
	DB	$F8,$00,$64,$00
	DB	$F8,$08,$64,$20
	DB	$F8,$10,$62,$20
	DB	$08,$00,$66,$00
	DB	$08,$08,$66,$20
	DB	$08,$00,$66,$00
	DB	$08,$08,$66,$20
;1
	DB	$F8,$F8,$5A,$00
	DB	$F8,$00,$5C,$00
	DB	$F8,$08,$5C,$20
	DB	$F8,$10,$5A,$20
	DB	$08,$F8,$5E,$00
	DB	$08,$00,$60,$00
	DB	$08,$08,$60,$20
	DB	$08,$10,$5E,$20
;0
MARUCD22
	DB	$F8,$F8,$56,$00
	DB	$F8,$00,$58,$00
	DB	$F8,$08,$58,$20
	DB	$F8,$10,$56,$20
	DB	$08,$F8,$56,$40
	DB	$08,$00,$58,$40
	DB	$08,$08,$58,$60
	DB	$08,$10,$56,$60
;- - - - - - - - - - - - - - - - - - - - 
GGF4000
	LD	A,$02
	LD	(PLSTOP),A
	LD	(ITEMNOT),A
;
	LD	A,(FRCNT)
	AND	$0F
	OR	$20
	LD	HL,ENFLSH
	ADD	HL,BC
	LD	(HL),A
;
	CALL	LDTIM3
	JR	NZ,GGF4030
;
	JP	STATINC
GGF4030
;;	SWAP	A
	RRA
	RRA
;;	RRA
;;	NOP
	AND	$0F
	CP	$04
	JR	C,GGF4038
;
	LD	A,$04
GGF4038
	RLA
	RLA
	RLA
	RLA
	RLA
	AND	%11100000
	LD	E,A
	LD	D,B
	LD	HL,MARUCD2
	ADD	HL,DE
;
	LD	C,$08
	CALL	ENOMST
;
	LD	A,$06
		jp	NXOMSBL
;;;;;;;;	CALL	NXOMSBL
;;;;;;;;	RET
;===========================================
;-------------------------------------------------
GGF5000
	LD	A,$02
	LD	(PLSTOP),A
	LD	(ITEMNOT),A
;
	CALL	KEN2CS
;
	CALL	E7YCLC
;
	LD	HL,ENYSPD
	ADD	HL,BC
	INC	(HL)
;
	LD	A,(HL)
	AND	%10000000
	JR	NZ,GGF5010
;
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	A,(HL)
	CP	$70
	JR	C,GGF5010
;
	LD	(HL),$70
;
	LD	A,$17
	LD	(SOUND3),A	;(S)
;
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	A,(HL)
	CP	$04
	JP	C,STATINC
	CPL
	INC	A
	SRA	A
	LD	(HL),A
;;;	CALL	STATINC
GGF5010
	RET
;-------------------------------------------------
GGF6000
	XOR	A
	LD	(ITEMNOT),A
;
	CALL	KEN2CS
;
	CALL	CRENPSL
	JR	NC,GGF6020
;
	CALL	STATINC
;
	LD	A,$0F
	LD	(SOUND4),A	;(S)
;
	CALL	LDTIM0
	LD	(HL),$FF
GGF6020
	RET
;-------------------------------------------------
GGF7000
	CALL	LDTIM0
	AND	$08
	LD	E,$E4
	JR	Z,GGF7002
	LD	E,$84
GGF7002
	LD	A,E
	LD	(BGPFG),A
;
	CALL	LDTIM0
	JR	NZ,GGF7020
;
	LD	(HL),$20
;
	LD	A,$10
	LD	(SOUND4),A	;(S)
;
	LD	A,$9F
	CALL	MSGCHK
;
	LD	A,(DJRMSV+$1E9)
	OR	%00010000
	LD	(DJRMSV+$1E9),A
	LD	(DJSVBF),A
;
	LD	A,$02
	LD	(KENLEV),A	;���x�� �A�b�v�I
;
	LD	A,$FF
	LD	(HARTUP),A
;
	XOR	A
	LD	(CLC20),A
	LD	(ITEMNOT),A
;
	CALL	STATINC
;;	JP	E6CLER
GGF7020	
	LD	A,(PLXPSL)
	LD	HL,ENXPSL
	ADD	HL,BC
	SUB	$04
	LD	(HL),A
;
	LD	A,(PLYPSL)
	LD	HL,ENYPSL
	ADD	HL,BC
	SUB	$13
	LD	(HL),A
;
	CALL	ENPSSV
;
	LD	A,(PLZPSL)
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	(HL),A
;
;;	LD	A,$6C  ;
;;	LD	(PLCHPT),A
	LD	A,$6B
	LD	(PLCHPT),A
;
	LD	A,$02
	LD	(PLSTOP),A
;
	LD	A,$03
	LD	(PLCMKI),A
;
	XOR	A
	LD	(PCUTFG),A
	LD	(WCUTFG),A
	LD	(SPCTWT),A
	LD	(SPCTTM),A
;
	CALL	KENFLSH
;
		jp	KEN2CS2
;;;;;;;;	CALL	KEN2CS2
;;;;;;;;	RET
;-------------------------------------------------
GGF8000
	CALL	KEN2CS2
;
	LD	A,(MSGEFG)
	AND	A
		ret	NZ
;;;;;;;;	JR	NZ,GGF8010
;
		jp	E7CLER
;;;;;;;;	CALL	E7CLER
;;;;;;;;GGF8010
;;;;;;;;	RET
;=====================================================
;=====================================================
;=====================================================
;=====================================================
KENFLSHC0
;0--------------------------------------
	DB	$00,$04,$72,$00
	DB	$E0,$04,$72,$00
;
	DB	$00,$F0,$78,$20
	DB	$00,$F8,$78,$40
;
	DB	$00,$10,$78,$60
	DB	$00,$18,$78,$00
;
	DB	$F0,$E8,$76,$20
	DB	$F0,$F0,$76,$40
;
	DB	$F0,$18,$76,$60
	DB	$F0,$20,$76,$00
;
	DB	$E8,$F4,$74,$20
	DB	$E8,$14,$74,$00
KENFLSHC1
;1--------------------------------------
	DB	$F8,$04,$72,$00
	DB	$D8,$04,$72,$00
;
	DB	$FC,$E8,$78,$20
	DB	$FC,$F0,$78,$40
;
	DB	$FC,$18,$78,$60
	DB	$FC,$20,$78,$00
;
	DB	$E8,$E0,$76,$20
	DB	$E8,$E8,$76,$40
;
	DB	$E8,$20,$76,$60
	DB	$E8,$28,$76,$00
;
	DB	$E0,$F0,$74,$20
	DB	$E0,$18,$74,$00
;
	DB	$00,$00,$74,$20
	DB	$00,$08,$74,$00
KENFLSHC2
;2--------------------------------------
	DB	$F0,$04,$72,$00
	DB	$D0,$04,$72,$00
;
	DB	$F8,$E0,$78,$20
	DB	$F8,$E8,$78,$40
;
	DB	$F8,$20,$78,$60
	DB	$F8,$28,$78,$00
;
	DB	$E0,$D8,$76,$20
	DB	$E0,$E0,$76,$40
;
	DB	$E0,$28,$76,$60
	DB	$E0,$30,$76,$00
;
	DB	$D8,$EC,$74,$20
	DB	$D8,$1C,$74,$00
;
	DB	$F8,$FC,$74,$20
	DB	$F8,$0C,$74,$00
;
	DB	$00,$F8,$76,$20
	DB	$00,$00,$76,$40
	DB	$00,$08,$76,$60
	DB	$00,$10,$76,$00
KENFLSHC3
;3--------------------------------------
	DB	$E4,$04,$72,$00
;
	DB	$00,$F8,$78,$20
	DB	$00,$00,$78,$40
	DB	$00,$08,$78,$60
	DB	$00,$10,$78,$00
;
	DB	$F4,$F0,$76,$20
	DB	$F4,$F8,$76,$40
	DB	$F4,$10,$76,$60
	DB	$F4,$18,$76,$00
;
	DB	$EC,$F8,$74,$20
	DB	$EC,$10,$74,$00
;
	DB	$F0,$D8,$78,$20
	DB	$F0,$E0,$78,$40
	DB	$F0,$28,$78,$60
	DB	$F0,$30,$78,$00
;
	DB	$CC,$E8,$74,$20
	DB	$CC,$20,$74,$00
;-----------------------------------------------
KNFLAD
	DW	KENFLSHC0
	DW	KENFLSHC1
	DW	KENFLSHC2
	DW	KENFLSHC3
KNFLNO
	DB	12,14,18,17
;--------------------------------------------
KENFLSH
	LD	A,(ENDSYP)
	SUB	$00
	LD	(ENDSYP),A
;
	LD	A,(FRCNT)
	RRA
	RRA
	NOP
	PUSH	AF
	AND	$03
	LD	E,A
	LD	D,B
	LD	HL,KNFLNO
	ADD	HL,DE
	LD	C,(HL)
	POP	AF
	RLA
	AND	%00000110
	LD	E,A
	LD	D,B
	LD	HL,KNFLAD
	ADD	HL,DE
	LD	A,(HLI)
	LD	H,(HL)
	LD	L,A
;
	CALL	ENOMST
;
	LD	A,18-2
		jp	NXOMSBL	
;;;;;;;;	CALL	NXOMSBL	
;;;;;;;;	RET
;=====================================================
GTAKARACD
	DB	$7E,$00,$7E,$20
;
GTAKARA
	CALL	LDTIM0
	RET	NZ
;
	LD	DE,GTAKARACD
	CALL	EN2CST
;
	CALL	E7YCLC
;
	LD	HL,ENYSPD
	ADD	HL,BC
	INC	(HL)
;
	LD	A,(HL)
	AND	%10000000
	JR	NZ,GTK5050
;
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	A,(HL)
	CP	$70
	JR	C,GTK5050
;
	LD	(HL),$70
;
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),B
;
	CALL	CRENPSL
	JR	NC,GTK5050
;
	LD	A,$01
	LD	(SOUND2),A
;
	CALL	E7CLER
;
	LD	HL,DJRMSV+$1E9
;
	LD	A,(CLC20)
	CP	$05
	JR	NZ,GTK5010
;
	SET	5,(HL)
	JR	GTK5020
;
GTK5010
;
	SET	6,(HL)
;
GTK5020
	ADD	A,$01
	DAA
	LD	(CLC20),A
;
	LD	A,$EF
	CALL	MSGCHK
;	LD	A,$EB
;	JP  	MSGCHK
GTK5050
	RET
;
;=====================================================
;=====================================================
;=====================================================
KEN2CD
	DB	$F8,$00,$52,$00
	DB	$F8,$08,$52,$20
	DB	$08,$00,$54,$00
	DB	$08,$08,$54,$20
KEN2CD2
	DB	$F8,$00,$54,$40
	DB	$F8,$08,$54,$60
	DB	$08,$00,$52,$40
	DB	$08,$08,$52,$60
;---------------------------------------------
KEN2CS2
	LD	HL,KEN2CD2
	JR	KEN2CSS
;=====================================================
KEN2CS
	LD	HL,KEN2CD
KEN2CSS
	LD	C,$04
	CALL	ENOMST
;
	LD	A,$02
		jp	NXOMSBL
;;;;;;;;	CALL	NXOMSBL
;;;;;;;;	RET
;============================================
;============================================
GAGEBD
	DB	$98,$50,$8D
 DB $6C,$6E,$6C,$6E,$6C,$6E,$6C,$6E,$6C,$6E,$6C,$6E,$6C,$6E
	DB	$98,$51,$8D
 DB $6D,$6F,$6D,$6F,$6D,$6F,$6D,$6F,$6D,$6F,$6D,$6F,$6D,$6F
 	DB 	00
GAGEBD2
;- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
GAGEBS
	PUSH	BC
;
	LD	C,GAGEBD2-GAGEBD
	LD	A,GAGEBD2-GAGEBD-1
	LD	(VRAMD),A
	LD	HL,VRAMD+1	
	LD	DE,GAGEBD
GAG100
	LD	A,(DE)
	INC	DE
	LD	(HLI),A
	DEC	C
	JR	NZ,GAG100
;
	POP	BC
;
	LD	A,DGEJI
	LD	(BGUNDT+$11+$18),A
	LD	(BGUNDT+$11+$28),A
	LD	(BGUNDT+$11+$38),A
	LD	(BGUNDT+$11+$48),A
	LD	(BGUNDT+$11+$58),A
	LD	(BGUNDT+$11+$68),A
	LD	(BGUNDT+$11+$78),A
;
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%				 %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ENSCXL
	DB	$FC,$04,$00,$00
ENSCXH
	DB	$FF,$00,$00,$00
ENSCYL
	DB	$00,$00,$04,$FC
ENSCYH
	DB	$00,$00,$00,$FF
RSCADD
	DB	$0C,$18,$24,$30,$3C,$48
;;;---------------------------------
ENSCRL
	LD	A,(SCRLFG)
;;;	AND	A
;;;	JR	NZ,ESTC00
;;;(CGB)	CP	$3
		cp	SCSTR
	JR	NC,ESTC00
;
;;	LD	A,(ENMODE2)
;;	CP	EMOVE
;;	JR	NZ,ESTC10
	RET
;
ESTC00
;
	LD	A,(SCRLMK)
	LD	E,A
	LD	D,$0
;
	LD	HL,ENSCXL
	ADD	HL,DE
	LD	A,(HL)
	LD	(WORK0),A
;
	LD	HL,ENSCXH
	ADD	HL,DE
	LD	A,(HL)
	LD	(WORK1),A
;
	LD	HL,ENSCYL
	ADD	HL,DE
	LD	A,(HL)
	LD	(WORK2),A
;
	LD	HL,ENSCYH
	ADD	HL,DE
	LD	A,(HL)
	LD	(WORK3),A
;
	LD	HL,ENXPSL
	ADD	HL,BC
	LD	A,(WORK0)
	ADD	A,(HL)
	RL	D
	LD	(HL),A
;
	LD	HL,ENXPSH
	ADD	HL,BC
	LD	A,(WORK1)
	RR	D
	ADC	A,(HL)
	LD	(HL),A
;
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	A,(WORK2)
	ADD	A,(HL)
	RL	D
	LD	(HL),A
;
	LD	HL,ENYPSH
	ADD	HL,BC
	LD	A,(WORK3)
	RR	D
	ADC	A,(HL)
	LD	(HL),A
;
	LD	A,(ENMYNO2)
	CP	KAMEI
	JR	NZ,ESCKAM
;
	LD	HL,ENWRK3
	ADD	HL,BC
	LD	A,(WORK0)
	ADD	A,(HL)
	LD	(HL),A
;
	LD	HL,ENWRK2
	ADD	HL,BC
	LD	A,(WORK2)
	ADD	A,(HL)
	LD	(HL),A
	JP	ESCR910
ESCKAM
	CP	RANEM
	JR	NZ,ESCR880
;
	LD	HL,ENWRK2
	ADD	HL,BC
	LD	A,(HL)
	CP	$02
	JP	Z,ESCR910
;
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	LD	(WORKF),A
;
	LD	A,$06
RSC010
	LD	(ENHELP),A
;
	LD	E,A
	LD	D,B
	LD	HL,RSCADD-1
	ADD	HL,DE
;
	PUSH	HL
	LD	A,(WORKF)
	SUB	(HL)
	LD	E,A
	LD	D,B
	LD	HL,XMVBUF
	ADD	HL,DE
	LD	A,(WORK0)
	ADD	A,(HL)
	LD	(HL),A		
;
	LD	A,(WORKF)
	POP	HL
	SUB	(HL)
	LD	E,A
	LD	D,B
	LD	HL,YMVBUF
	ADD	HL,DE
	LD	A,(WORK2)
	ADD	A,(HL)
	LD	(HL),A		
;
	LD	A,(ENHELP)
	DEC	A
	JR	NZ,RSC010
;;	JR	ESCR910
;
ESCR880
	CP	GIRL1
	JR	NZ,MASC90
;
	LD	A,(MARINFG)
	AND	A
	JR	Z,ESCR910
;
	LD	E,$10
	LD	HL,MAXBUF
MSCR902
	LD	A,(WORK0)
	ADD	A,(HL)
	LD	(HLI),A
	DEC	E
	JR	NZ,MSCR902
;
	LD	E,$10
	LD	HL,MAYBUF
MSCR903
	LD	A,(WORK2)
	ADD	A,(HL)
	LD	(HLI),A
	DEC	E
	JR	NZ,MSCR903
	JR	ESCR910
;- - - - - - - - - - - - - - -
MASC90
	CP	HIKUS
	JR	Z,ESCR905
	CP	AMUSI
	JR	Z,ESCR905
	CP	WANWAN
	JR	NZ,ESCR910
;
	LD	A,(WANFLG)
	CP	$01
	JR	NZ,ESCR900
;
	LD	A,(FRCNT)
	AND	$07
	JR	Z,ESCR910
;
ESCR900
	LD	E,$06
	LD	HL,WAXBUF
ESCR902
	LD	A,(WORK0)
	ADD	A,(HL)
	LD	(HLI),A
	DEC	E
	JR	NZ,ESCR902
;
	LD	E,$06
	LD	HL,WAYBUF
ESCR903
	LD	A,(WORK2)
	ADD	A,(HL)
	LD	(HLI),A
	DEC	E
	JR	NZ,ESCR903
;
ESCR905
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(WORK0)
	ADD	A,(HL)
	LD	(HL),A
;
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	A,(WORK2)
	ADD	A,(HL)
	LD	(HL),A
;
ESCR910
;
	LD	A,(GRNDPT)
	LD	HL,ENGRPT
	ADD	HL,BC
	CP	(HL)
		ret	Z
;;;;;;;;	JR	Z,ESTC10
;- - - - -
	LD	HL,ENXPSL
	ADD	HL,BC
	LD	A,(HL)
;;	SUB	$08
;;	CP	$98
	CP	$A0
	JR	NC,ESTC08
;
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	A,(HL)
	SUB	$10
	CP	$78
		ret	C
;;;;;;;;	JR	C,ESTC10
;
ESTC08
	LD	A,(ENMYNO2)
	CP	HASIR
	RET	Z
;
	LD	HL,ENMODE
	ADD	HL,BC
;;	XOR	A
	LD	(HL),B
;;;;;;;;ESTC10
;;;;;;;;;;;;;;;;	POP	AF
;;;;;;;;ESTC20
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%					%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
BELTCK
	LD	A,(BELTFG)
	AND	A
		ret	Z
;;;;;;;;	JR	Z,BEC090
;
;;	LD	A,(FRCNT)
;;	AND	%00000000
	LD	A,(MSGEFG)
	AND	A
		ret	NZ
;;;;;;;;	JR	NZ,BEC090
;
	LD	A,(FRCNT)
;;	NOP
;;	NOP
;;	RRA
;;	RRA
;;	RRA
	AND	%00000011
		sla	a
		add	a,<enemy_tbl
		ld	l,a
		ld	a,>enemy_tbl
		adc	a,000
		ld	h,a
		ld	a,(hli)
		ld	h,(hl)
		ld	l,a
		jp	(hl)
;;;;;;;;	RST	0
enemy_tbl
	DW	BELTUP
	DW	BELTDW
	DW	BELTLF
	DW	BELTRI
;--- UP ----
BELTUP
	LD	HL,BELTBF+$0F
	LD	DE,BELTBF+$0F
;
	LD	A,(HLD)
	PUSH	AF
	LD	A,(HLD)
	PUSH	AF
;
	LD	C,$07
BEC010
	LD	A,(HLD)
	LD	(DE),A
	DEC	DE
	LD	A,(HLD)
	LD	(DE),A
	DEC	DE
;
	DEC	C
	JR	NZ,BEC010
;
	POP	HL
	POP	BC
;
	LD	A,B
	LD	(DE),A
	DEC	DE
	LD	A,H
	LD	(DE),A
BEC090
	RET
;--- DOWN ----
BELTDW
	LD	HL,BELTBF+$10
	LD	DE,BELTBF+$10
;
	LD	A,(HLI)
	PUSH	AF
	LD	A,(HLI)
	PUSH	AF
;
	LD	C,$07
BEC020
	LD	A,(HLI)
	LD	(DE),A
	INC	DE
	LD	A,(HLI)
	LD	(DE),A
	INC	DE
;
	DEC	C
	JR	NZ,BEC020
;
	POP	HL
	POP	BC
;
	LD	A,B
	LD	(DE),A
	INC	DE
	LD	A,H
	LD	(DE),A
	RET
;--- LEFT ----
BELTLF
	LD	HL,BELTBF+$20
	LD	E,$10
BEC030
	RLC	(HL)
	INC	HL
;
	DEC	E
	JR	NZ,BEC030
	RET
;-- RIGHT ----
BELTRI
	LD	HL,BELTBF+$30
	LD	E,$10
BEC040
	RRC	(HL)
	INC	HL
;
	DEC	E
	JR	NZ,BEC040
	RET
;
;----------------------------------------
KTBRCD
	DB	$FD,$FC,$16,$00
	DB	$FC,$0C,$16,$00
	DB	$0E,$FB,$16,$00
	DB	$0C,$0D,$16,$00
;
	DB	$FB,$FD,$16,$00
	DB	$FA,$0B,$16,$00
	DB	$0B,$FC,$16,$00
	DB	$09,$0C,$16,$00
;
	DB	$FD,$FE,$16,$00
	DB	$FC,$0A,$16,$00
	DB	$0B,$FD,$16,$00
	DB	$08,$0A,$16,$00
;
	DB	$FF,$00,$16,$00
	DB	$00,$08,$16,$00
	DB	$0A,$FF,$16,$00
	DB	$08,$09,$16,$00
;- - - - - - - - - - - - - - - - - -
;- - - - - - - - - - - - - - - - - -
KSBRCD
	DB	$02,$FC,$28,$00
	DB	$FB,$04,$28,$60
	DB	$05,$06,$28,$00
	DB	$01,$0A,$28,$20
;
	DB	$01,$FF,$28,$00
	DB	$F9,$04,$28,$60
	DB	$08,$06,$28,$00
	DB	$02,$07,$28,$20
;
	DB	$00,$00,$28,$20
	DB	$F8,$02,$28,$60
	DB	$04,$04,$28,$20
	DB	$0A,$07,$28,$20
;
	DB	$FE,$01,$28,$20
	DB	$04,$01,$28,$60
	DB	$04,$05,$28,$20
	DB	$0C,$07,$28,$20
;
	DB	$FD,$00,$28,$20
	DB	$04,$FE,$28,$60
	DB	$08,$08,$28,$20
	DB	$0E,$09,$28,$20
;
	DB	$FC,$FF,$28,$00
	DB	$04,$FA,$28,$40
	DB	$08,$09,$28,$20
	DB	$0F,$0A,$28,$00
;
	DB	$FB,$FE,$28,$00
	DB	$03,$F9,$28,$40
	DB	$08,$0C,$28,$00
	DB	$11,$0B,$28,$00
;
	DB	$FA,$FD,$28,$00
	DB	$01,$F7,$28,$40
	DB	$09,$0D,$28,$00
	DB	$0F,$0C,$28,$00
;
;- - - - - - - - - - - - - - - - - -
;	�����̐X��p�i���Ă鑐�̂`�s�q���U�Ɂj
;- - - - - - - - - - - - - - - - - -
KSBRCD_MORI
	DB	$02,$FC,$28,$06
	DB	$FB,$04,$28,$66
	DB	$05,$06,$28,$06
	DB	$01,$0A,$28,$26
;
	DB	$01,$FF,$28,$06
	DB	$F9,$04,$28,$66
	DB	$08,$06,$28,$06
	DB	$02,$07,$28,$26
;
	DB	$00,$00,$28,$26
	DB	$F8,$02,$28,$66
	DB	$04,$04,$28,$26
	DB	$0A,$07,$28,$26
;
	DB	$FE,$01,$28,$26
	DB	$04,$01,$28,$66
	DB	$04,$05,$28,$26
	DB	$0C,$07,$28,$26
;
	DB	$FD,$00,$28,$26
	DB	$04,$FE,$28,$66
	DB	$08,$08,$28,$26
	DB	$0E,$09,$28,$26
;
	DB	$FC,$FF,$28,$06
	DB	$04,$FA,$28,$46
	DB	$08,$09,$28,$26
	DB	$0F,$0A,$28,$06
;
	DB	$FB,$FE,$28,$06
	DB	$03,$F9,$28,$46
	DB	$08,$0C,$28,$06
	DB	$11,$0B,$28,$06
;
	DB	$FA,$FD,$28,$06
	DB	$01,$F7,$28,$46
	DB	$09,$0D,$28,$06
	DB	$0F,$0C,$28,$06
;
;- - - - - - - - - - - - - - - - - -
;----------------------------------------
KTFLCS
	LD	A,(ENCHPT2)  ;HL)
	CP	$FF
	JR	Z,KUSAFL
	CP	$01
	JR	Z,KUSAFL
;
	LD	A,(WORK0)
	AND	%00001100
	SLA	A
	SLA	A
	LD	E,A
	LD	D,B ;$0
	LD	HL,KTBRCD
	ADD	HL,DE
	LD	C,$4	; ��
;
		jp	ENOMST
;;;;;;;;	CALL	ENOMST
;;;;;;;;	RET
;;================================================
KUSAFL
	INC	A
	JR	NZ,KUSF10	;�����H
;
	LD	(ENCHPT2),A
;
	LD	A,(FRCNT)
	XOR	C
;;	AND	$01
	RRA
	RET	C	;�������I

;-------------------------------------------------
;	(CGB)���� ���`�F�b�N
;-------------------------------------------------
		LD	A,(CGBFLG)
		AND	A
		JR	Z,KUSF10
		LD	A,(DJFLAG)
		AND	A
		JR	NZ,KUSF10

		LD	A,(GRNDPT)
		CP	$32		; ���̑��̑����H
		JR	NZ,KUSF10	; �m�n

		LD	HL,KSBRCD_MORI
		JR	KUSF10_910

KUSF10
	LD	HL,KSBRCD
KUSF10_910
	LD	A,(WORK0)
	AND	%00011100
	XOR	%00011100
	SLA	A
	SLA	A
	LD	E,A
	LD	D,B ;$0
;(CGB)	LD	HL,KSBRCD
	ADD	HL,DE
	LD	C,$4	; ��
;
		jp	ENOMST
;;;;;;;;	CALL	ENOMST
;;;;;;;;	RET
;=================================================
;\\\  ���ʃ��[�`��
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%					%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
M7CROS
	CALL	CRENPSL
	JR	NC,M720E0
;
M7CRSB
	CALL	PLPSRV
;
	LD	A,(PFUCKID)
	AND	A
	JR	Z,M720D0
;	
	LD	E,A
	LD	D,B
	LD	HL,ENMYNO-1
	ADD	HL,DE
	LD	A,(HL)
	CP	FUCKS
	JR	NZ,M720D0
;
	LD	HL,ENSTAT-1	; Fuck return
	ADD	HL,DE
	LD	(HL),$00
M720D0
	LD	A,(DUSHFG)
	LD	E,A
	CALL	DUSHCL2
	CALL	PLSDCL
	LD	A,E
	SCF
	RET	
M720E0
	AND	A
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%					%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
M7MVPT
	DB	$06,$04,$02,$00
;
M7PTST
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	E,(HL)
;;	LD	E,A
	LD	D,B ;$0
	LD	HL,M7MVPT
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
	RRA	
	POP	HL
	AND	%00000001
	OR	(HL)
;
	JP	ENPTST
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%					%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;TDMSCK
;	LD	E,B
;;
;	LD	A,(PLYPSL)
;	LD	HL,ENSVYL
;	SUB	(HL)
;	ADD	A,$18
;	CP	$38
;	JR	E7MSSB
;;----------------------------------
;DRMSCK	;Dr.���C�g��p�I
;	LD	A,(PLYPSL)
;	LD	HL,ENSVYL
;	SUB	(HL)
;	ADD	A,$14
;	CP	$28+$10
;	JR	E7MSSB 
;------------------------------
E7MSCK
	LD	E,B
;
	LD	A,(PLYPSL)
	LD	HL,ENSVYL
	SUB	(HL)
	ADD	A,$14
	CP	$28
E7MSSB
	JR	NC,E7C0A0
;
	LD	A,(PLXPSL)
	LD	HL,ENSVXL
	SUB	(HL)
	ADD	A,$10
	CP	$20
	JR	NC,E7C0A0
;
	INC	E
;
	PUSH	DE
	CALL	E7XYCK
	LD	A,(PLCMKI)
	XOR	$01
	CP	E
	POP	DE
	JR	NZ,E7C0A0
;
E7C022
E7MSSB2
	LD	HL,MSCRFG
	LD	(HL),$01
;
	LD	A,(MSGEFG)
	LD	HL,WNDFLG
	OR	(HL)
	LD	HL,PLJPFG
	OR	(HL)
	LD	HL,MSOFTM
	OR	(HL)
	JR	NZ,E7C0A0
;
	LD	A,(WNDYPS)
	CP	$80
	JR	NZ,E7C0A0
;
	LD	A,(KEYA2)
	AND	%00010000
	JR	Z,E7C0A0
;
	SCF
	RET
E7C0A0
	AND	A	; (C) reset !
	RET
;============================================
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%				 %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;---------------------------------
E7STCK
	LD	A,(ENMODE2)
	CP	EMOVE
	JR	NZ,E7TC12
;
E7STCK2
	LD	A,(GMMODE)
	CP	GMAP
	JR	Z,E7TC12
;
		CP	ENDG
		JR	Z,E7STCK2_100	; �G���f�B���O�H
;					; �m��
		cp	GPLAY
		jr	nz,E7TC12	; �Q�[�����[�h�@�H
;					; Yes !!
		ld	a,(SBHR)
		cp	004
		jr	nz,E7TC12	; �t�F�[�h���@�H
;					; No !!
E7STCK2_100
	LD	HL,ENSTFG
	LD	A,(MSGEFG)
;;	AND	A
	OR	(HL)
	LD	HL,WNDFLG
	OR	(HL)
	JR	NZ,E7TC12
;
	LD	A,(SCRLFG)
	AND	A
	JR	Z,E7TCF0
E7TC12
	POP	AF
E7TCF0
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%						    %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
E7HNSD
;;	DB	$0,$0,$0,$0,$0
;;;	DB	$7,$3,$1,$0,$0
E7HNSB
	LD	HL,ENHNFG
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,E7HN90
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
;;	LD	HL,E7HNSD
;;	ADD	HL,DE
;;	POP	AF
;;	AND	(HL)
;;	JR	NZ,E7HN30
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
	CALL	E7MVCL
;
	LD	HL,ENMOD3
	ADD	HL,BC
	LD	A,(HL)
	AND	%00100000
	JR	NZ,E7HN28
;
	CALL	ENBGCKL
E7HN28
	LD	HL,ENYSPD
	ADD	HL,BC
	POP	AF
	LD	(HL),A
;
	LD	HL,ENXSPD
	ADD	HL,BC
	POP	AF
	LD	(HL),A
E7HN30
	POP	AF
E7HN90
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%				 %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
E7MVCL	
;
	CALL	E7XCLC 		; X calc
;
E7YCLC
	PUSH	BC
	LD	A,C
	ADD	A,<ENNO
	LD	C,A
	
	CALL	E7XCLC		; Y calc
	POP	BC
	RET
;-----------------------------------------
E7XCLC
	LD	HL,ENXSPD
	ADD	HL,BC 
;
	LD	A,(HL)
	AND	A
	JR	Z,E7L090
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
E7L00
	ADD	HL,BC 
;
	POP	AF
;
	LD	E,$0
	BIT	7,A
	JR	Z,E7C00
	LD	E,$F0
E7C00
	SWAP	A
	AND	$0F
	OR	E
	RR	D
	ADC	A,(HL)
	LD	(HL),A
E7L090
	RET
;====================================================
E7ZCLC
	LD	HL,ENZSPD
	ADD	HL,BC 
;
	LD	A,(HL)
	AND	A
	JR	Z,E7L090
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
	JR	E7L00
;====================================
E7XCHK
	LD	E,$0
;
	LD	A,(PLXPSL)
	LD	HL,ENXPSL
	ADD	HL,BC
	SUB	(HL)
	BIT	7,A
	JR	Z,E7X010
;;	JR	NC,E7X010
	INC	E
E7X010
	LD	D,A
	RET
;====================================
E7YCHK
	LD	E,$2
;
	LD	A,(PLYPSL)
	LD	HL,ENYPSL
	ADD	HL,BC
	SUB	(HL)
	BIT	7,A
	JR	NZ,E7Y010
;;	JR	C,E7Y010
	INC	E
E7Y010
	LD	D,A
	RET
;====================================
E7YCHK2
	LD	E,$2
;
	LD	A,(PLYPSL)
	LD	HL,ENDSYP
	SUB	(HL)
	BIT	7,A
	JR	NZ,E7Y210
	INC	E
E7Y210
	LD	D,A
	RET
;====================================
E7XYCK
	CALL	E7XCHK
	LD	A,E
	LD	(WORK0),A
;
	LD	A,D
	BIT	7,A
	JR	Z,E72010
	CPL
	INC	A
E72010
	PUSH	AF
;
	CALL	E7YCHK
	LD	A,E
	LD	(WORK1),A
;
	LD	A,D
	BIT	7,A
	JR	Z,E7Y020
	CPL
	INC	A
E7Y020
	POP	DE
	CP	D
	JR	NC,E7Y030
;
	LD	A,(WORK0)
	JR	E7Y050
E7Y030
	LD	A,(WORK1)
E7Y050
	LD	E,A
	RET
;============================
E7CLER
	LD	HL,ENMODE
	ADD	HL,BC
	LD	(HL),B
	RET
;=====================================
BSFLSB7
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	A,(HL)
	RST	00
	DW	N7L1000
	DW	N7L1800
	DW	N7L2000
;-------------------------------------
N7L1000
	CALL	LDTIM0
	LD	(HL),$A0
;
	LD	HL,ENFLSH
	ADD	HL,BC
	LD	(HL),$FF
;
INCWR71
	LD	HL,ENWRK1
	ADD	HL,BC
	INC	(HL)
	RET
;-------------------------------------
N7L1800
	CALL	LDTIM0
		ret	NZ
;;;;;;;;	JR	NZ,N7L1810
;
	LD	(HL),$C0
;
	LD	HL,ENFLSH
	ADD	HL,BC
	LD	(HL),$FF
;
		jp	INCWR71
;;;;;;;;	CALL	INCWR71
;;;;;;;;N7L1810
;;;;;;;;	RET
;-------------------------------------
N7L2000
	CALL	LDTIM0
	JR	NZ,N7L2010
;
N7L2008
	CALL	BBSDST	;(S)
;
	CALL	BGMSET	;(S)
	JP	ENFEND
N7L2010
		jp	ESMRN7
;;;;;;;;	CALL	ESMRN7
;;;;;;;;	RET
;===========================================
ESMRN7
	AND	$07
		ret	NZ
;;;;;;;;	JR	NZ,K7L310
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
	SUB	$10+4
	LD	E,A
	LD	HL,ENDSYP
	ADD	A,(HL)
	LD	(HL),A
;
		jp	HBSMS7
;;;;;;;;	CALL	HBSMS7
;;;;;;;;K7L310
;;;;;;;;	RET
;
;===========================================
HBSMS7
	CALL	E7STCK2
;
	LD	A,(ENSVXL)
	LD	(WORK0),A
	LD	A,(ENDSYP)
	LD	(WORK1),A
;----------------------------------
SMKSDS7
	LD	A,SMK1
	CALL	EXIDSH
;
	LD	A,$13
	LD	(SOUND3),A	;(S)
;;	LD	A,$06
;;	LD	(SOUND1),A	;(S)
	RET
;
;---------------------------------------
HARTBS7
;;	CALL	SOUNDCLR	;(S)
;
	LD	A,HARTB
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
	LD	A,(YKFLAG)
	AND	A
	JR	Z,HBS710
;
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),$F0
	JR	HBS720
HBS710
	LD	HL,ENZSPD
	ADD	HL,DE
	LD	(HL),$10
;
	LD	HL,ENZPSL
	ADD	HL,DE
	LD	(HL),$08
HBS720
E7CLBB
	CALL	E7CLER
;
	LD	HL,SOUND3
	LD	(HL),$1A	;(S)
;;	CALL	BBSDST	;(S)
	RET
;==============================
;- - Save data set - - - -
E7SVST
	LD	HL,GRRMSV
	LD	A,(GRNDPT)
	LD	E,A
	LD	A,(DJFLAG)
;;	LD	D,B
	LD	D,A
	LD	A,(DNJNNO)
	CP	DJROOM2
	JR	NC,E7SS10
	CP	DJROOM
	JR	C,E7SS10
	INC	D
;;;	LD	D,$01
E7SS10
	ADD	HL,DE
;
	LD	A,(HL)
	OR	%00100000
	LD	(HL),A
	LD	(DJSVBF),A	; Save data buffer set !
	RET
;==============================
;==============================
;==============================
;==============================
;==============================
;==============================
;==============================
;==============================
;==============================
;==============================
	END

