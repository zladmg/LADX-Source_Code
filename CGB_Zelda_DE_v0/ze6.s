;
		onbankgroup
;
;==============	�o���N�O ================================================
BANK0		GROUP	0
;-------------<	ZCO >-------------
		extern	RNDSUB,OBJBG,BGMSET,SOUNDCLR
;
;-------------<	ZPL >-------------
		extern	PLPSRV,MSGCHK,MSGCHK2,DUSHCL,KNCSET,KNFLSH,PLSHST
		extern	MVCALC,FLASHST,EXIDSH,NXGOTO,LDTIM0,PLXCLC,ENHNCL
		extern	ENSZST,BBSDST,MSGCH2,YOSSISET,NAZOCLR,NOSDST
		extern	NXGOTO3,LDTIM1,LDTIM3,BG1CHG,PLPTSTL,PLSDCL,MSGCH3
		extern	DUSHCL2,NXGOTO4,CARITMD,PTOBI,PBULE,POVER,PINDR1
		extern	PMOVE,PFOLE,PTATE,PMGIC,POKAR,FDIN,PSWIM,PBOXER
		extern	LOVED,KABE1,ENDG,GMAP,GPLAY,KURUD
;
;-------------<	ZES >-------------
		extern	ISIBRKL,CRENENL,PLDMST0,ENMOVE,ENBGCKL,ENBGCK2L
		extern	ENPTST,STATINC,ENIDSHL,ENIDSH2L,BSSDCK,CREPKEL
		extern	CRENPLL,CRENPL2L,EN2CST,EN1CST,PSERCHL,PSERCH2L
		extern	CRKNENL,ENFEND,CRENPSL,ENPSSV,ENSDCL,NXOMSBL
		extern	PLBGCKL,ENALCL,HNSMST,ENOMST,SADWSTL,SHRVSE
		extern	ITEMGETS,ENBITON,ENMDSTL,O2MCHK,CRKNKNL,EFAIL
		extern	EFOLE,EFIRE,EINIT,EMOVE,ESTOP,ECACH,ESHOT
;
;-------------<	ZBS >-------------
		extern	DJRMRD,BGCRRD
;
;-------------<	ZMA >-------------
		extern	PBSET,MMBG,BG1UNIT_ATR_SUB,GET_FUKU_SUB
		extern	Unit_change,GEKI_ZORA_SUB,HINTO_READ_SUB
		extern	GEKI05_CHK_SUB,JSL_CALL
;
;==============	�o���N�Q ================================================
BANK2		GROUP	2
;-------------<	ZEX >-------------
		extern	DJRMRD,SPUNDT,WTUP,SMK1,RZNZ,FLSH,BFZN,DSZN,WTUP2
;
;==============	�o���N�R ================================================
BANK3		GROUP	3
;-------------<	ZEN >-------------
		extern	EFLSST,BHFIR,HARTB,R7BEM,RENO7,BGKAO,FUCKS,UFOCH
		extern	TERSA,FISHG,SBOMB,BOMBR,NINTM,HAYAB,TUKAI,KTOBJ
		extern	BSLIM,SLIMB,TBOSS,BSNAK,GORMA,BSKEL,BFIRE,BBIRD
		extern	SWBLK2,BFISH,SWTRP,NIWAT,KODOMA,PAPA0,KAMEI,RANEM
		extern	PANEL,BHANA,SHANA,HEIS0,MORI1,OCTA1,KODOMB,IZUMI
		extern	SONIC,KEYSM,MIZUB,SLOT,HART1,RUPY1,OCHAN,KAKIN
		extern	SLIMS,OZWAN,ARIMA,PYAAA,ZONBI,TODD,USAGI,ONPU
		extern	AKUMA,PEACH,MVHAS,WANI,GAGE,GIRL1,GIRL2
;
;==============	�o���N�W ================================================
BANK8		GROUP	8
;-------------<	ZBD >-------------
		extern	GRBGCR,DJBGCR
;
;==============	�o���N�P�S ==============================================
BANK14		GROUP	$14
;-------------<	ZEX >-------------
		EXTERN	WTUP
;
;==============	�o���N�Q�P ==============================================
BANK21		GROUP	$21
;-------------<	ZCOL >-------------
		EXTERN	BRIGHT,DARK,DARK_FRCNT
;
;==============	�o���N�Q�S ==============================================
BANK24		GROUP	$24
;-------------<	ZATR >-------------
		EXTERN	NYAMA_BEAM_sub
;
;========================================================================
	PUBALL
;
BANK18	GROUP	$18
;
	LIB	ZRAM
	LIB	ZBN
;
;;;;;;;;	EXTERN	RNDSUB,PLPSRV,MSGCHK,MSGCHK2,DUSHCL,OBJBG,KNCSET,KNFLSH,ISIBRKL
;;;;;;;;	EXTERN	PLSHST,MVCALC,FLASHST,DJRMRD,EXIDSH,SPUNDT,NXGOTO,CRENENL,PLDMST0
;;;;;;;;	EXTERN	ENMOVE,ENBGCKL,ENBGCK2L,LDTIM0,ENPTST,STATINC,ENIDSHL,ENIDSH2L,BSSDCK
;;;;;;;;	EXTERN	CREPKEL,CRENPLL,CRENPL2L,EN2CST,EN1CST,PSERCHL,PSERCH2L,CRKNENL,ENFEND
;;;;;;;;	EXTERN	CRENPSL,ENPSSV,ENSDCL,NXOMSBL,EFLSST,PLBGCKL,ENALCL,HNSMST,ENOMST
;;;;;;;;	EXTERN	PLXCLC,PBSET,ENHNCL,ENSZST,BBSDST,SADWSTL,MSGCH2,BHFIR,BGMSET,YOSSISET
;;;;;;;;	EXTERN	SHRVSE,SOUNDCLR,ITEMGETS,ENBITON,NAZOCLR,ENMDSTL,NOSDST,NXGOTO3,O2MCHK
;;;;;;;;	EXTERN	CRKNKNL,LDTIM1,LDTIM3,BG1CHG,PLPTSTL,PLSDCL,MSGCH3,BGCRRD
;;;;;;;;	EXTERN	DUSHCL2,NXGOTO4
;;;;;;;;;
;;;;;;;;	EXTERN	CARITMD,GRBGCR,DJBGCR,PTOBI,WTUP,PBULE,POVER,SMK1,PINDR1,HARTB
;;;;;;;;	EXTERN	EFAIL,EFOLE,EFIRE,EINIT,EMOVE,ESTOP,ECACH,ESHOT,R7BEM,RENO7,BGKAO
;;;;;;;;	EXTERN	RZNZ,FLSH,PMOVE,FUCKS,UFOCH,TERSA,FISHG,SBOMB,BOMBR,NINTM,HAYAB,TUKAI
;;;;;;;;	EXTERN	PFOLE,KTOBJ,BSLIM,SLIMB,TBOSS,BSNAK,GORMA,BSKEL,BFIRE,BFZN,BBIRD,SWBLK2
;;;;;;;;	EXTERN	BFISH,SWTRP,PTATE,PMGIC,POKAR,NIWAT,KODOMA,PAPA0,KAMEI,RANEM,PANEL
;;;;;;;;	EXTERN	BHANA,SHANA,HEIS0,MORI1,OCTA1,FDIN,KODOMB,IZUMI,SONIC,KEYSM,DSZN
;;;;;;;;	EXTERN	MIZUB,SLOT,HART1,RUPY1,OCHAN,KAKIN,SLIMS,PSWIM,OZWAN,ARIMA,PYAAA
;;;;;;;;	EXTERN	PBOXER,LOVED,ZONBI,TODD,USAGI,ONPU,AKUMA,PEACH,MVHAS,WANI,GAGE,MMBG
;;;;;;;;	EXTERN	KABE1,ENDG,GIRL1,GIRL2,WTUP2	;TOURST,
;;;;;;;;	EXTERN	GMAP
;------------------------------------------------
	KANJI
	PAGE
	isdmg
;
	LIST
	ORG	$4000
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�J�J�G��			    %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
MAMUUMV
	LD	A,(ZZZFLG)
	AND	A
	JR	NZ,MMU100
;
	INC	A
	LD	(ZZZFLG),A
;
	LD	A,MMBG
	LD	(VRFLG),A
MMU100
	LD	A,(ENSVXL)
	CP	$48
	JP	NZ,MAMUSMV	;���J�G���H
;
	CALL	MAMUUCS
;
	CALL	M6CROS
;
	LD	A,(ENSTAT2)
	RST	00
	DW	MMU1000
	DW	MMU2000
	DW	MMU3000
	DW	MMU4000
	DW	MMU5000
	DW	MMU6000
	DW	MMU7000
;-----------------------------------------
MMU1000
	XOR	A
	LD	(BSINDX),A
;
	LD	A,(ONPUFG)
	AND	$01
	JR	Z,MMU2001	;���Ɋo�����H
;				;YES!
	LD	A,(PLYPSL)
	LD	HL,ENSVYL
	SUB	(HL)
	ADD	A,$28
	CP	$50
	CALL	E6MSSB
	JR	NC,MMU1010
;
	JP	MMU7080	;
MMU2001
	LD	A,(PLYPSL)
	CP	$4C
	JR	NC,MMU1010
;
	LD	A,$4C
	LD	(PLYPSL),A
	CALL	PLSDCL
	CALL	DUSHCL
;
	LD	E,$0B
	LD	HL,ITEMB
MMB2008
	LD	A,(HLI)
	CP	POKAR
	JR	Z,MMB200C	; �I�J���i�����Ă�H
;				; Yes !
MMB200A
	DEC	E
	LD	A,E
	CP	$FF
	JR	NZ,MMB2008
;
	LD	A,$DB
	CALL	MMMSCK
;
	CALL	STATINC
	LD	(HL),B
	RET
MMB200C
	LD	A,$DC
	CALL	MMMSCK
;
	CALL	STATINC
MMU1010
MMUPTST
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	RRA
	AND	$01
		jp	ENPTST
;;;11/11	CALL	ENPTST
;;;11/11	RET
;------------------------------------
MMMSCK
	LD	E,A
;
	LD	A,(PLYPSL)
	PUSH	AF
;
	LD	A,$10
	LD	(PLYPSL),A
;
	LD	A,E
	CALL	MSGCHK
;
	POP	AF
	LD	(PLYPSL),A
	RET
;-----------------------------------------
MMU2000
	CALL	MMUPTST
;
	LD	A,(MSGEFG)
	AND	A
	JR	NZ,MMU2090
;
	CALL	STATINC
;
	LD	A,(MSANSR)
	AND	A
	JR	Z,MMU2070
;
MMU2060
	LD	(HL),B
;
	LD	A,$DE
		jp	MMMSCK
;;;11/11	CALL	MMMSCK
;;;11/11	RET
MMU2070
	LD	A,(COINC1)
	CP	$03
	JR	C,MMU2060 ; Have 300 Rupys ?
;			  ;YES !
	LD	A,(COIND2)
	ADD	A,$2C
	LD	(COIND2),A
	LD	A,(COIND1)
	ADC	A,$01
	LD	(COIND1),A
;
	CALL	LDTIM0
	LD	(HL),$FF
;
	CALL	SOUNDCLR	;(S)
;
	CALL	BGMRAMS
;
	LD	A,$01
	LD	(MAMUUFG),A
MMU2090
	RET
;-----------------------------------------
MMU3000
	LD	A,$02
	LD	(PLSTOP),A
	LD	(ITEMNOT),A
;
	CALL	LDTIM0
	JR	NZ,MMU3010
;
	LD	A,$35
	LD	(SOUND4),A	;(S)
;
	LD	A,$01
	LD	(BGMWRK0),A
;
	JP  	STATINC
MMU3010
	RET
;------------------------------
MSPOTSL
	LD	A,$30
	LD	(OBJYP),A
	LD	A,$18
	LD	(OBJXP),A
;
	JP  	MSPOTSS
;
MSPOTSR
	LD	A,$30
	LD	(OBJYP),A
	LD	A,$68
	LD	(OBJXP),A
;
	JP  	MSPOTSS
MSPOTB1
	LD	A,$38
	LD	(OBJXP),A
	LD	A,$08
	LD	(OBJYP),A
	JP  	MSPOTS1
;
MSPOTB2
	LD	A,$38
	LD	(OBJXP),A
	LD	A,$08
	LD	(OBJYP),A
	JP  	MSPOTS2
MMU3070
	RET
;-----------------------------------------
BSL	EQU	$01
BSR	EQU	$04
BOL	EQU	$02
BOR	EQU	$03
;- - - - - - - - - - - - -
MMPTDT
;    000 01C 038 054 070 08C 0A8 0C4 0E0 0FC 118 134 150
  DB   BOR,BOR,BOR,BOR,BOR,BOR,BOR,BSL,BOL,BSR,BOR,BSL,BOL
;
;    16C 188 1A4 1C0 1DC 1F8 214 230 24C 268 284 2A0 2BC
  DB   BSR,BOR,BSL,BOL,BSR,BOR,BSL,BOL,BSR,BOR,BSL,BOL,BSR
;
;    2D8 2F4 310 32C 348 364 380 39C 3B8 3D4 3F0 40C 428 
  DB   BOR,BOR,BOR,BOR,BOR,BSR,BOR,BSL,BOL,BSR,BOR,BSL,BOL
;
;    444 460 47C 498 4B4 4D0 4EC 508 524 540 55C 578 594
  DB   BSR,BOR,BSL,BOL,BSR,BOR,BSL,BOL,BSR,BOR,BSL,BOL,BOL
;
;    5B0 5CC 5E8 604 620 63C
  DB   BOL,BOL,BOL,BOL,BOL,BOL
;
;-----------------------------------------
SSH	EQU	$01
SOL	EQU	$04
SOR	EQU	$05
;
MMPTDT1
;    000 01C 038 054 070 08C 0A8 0C4 0E0 0FC 118 134 150
  DB   SSH,SSH,SOR,SOR,SOR,SOR,SOR,SOR,SSH,SSH,SOL,SSH,SOR
;
;    16C 188 1A4 1C0 1DC 1F8 214 230 24C 268 284 2A0 2BC
  DB   SSH,SOL,SSH,SOR,SSH,SOL,SSH,SOR,SSH,SOL,SSH,SOR,SSH
;
;    2D8 2F4 310 32C 348 364 380 39C 3B8 3D4 3F0 40C 428 
  DB   SOL,SSH,SOR,SOR,SOR,SOR,SSH,SSH,SOR,SSH,SOL,SSH,SOR
;
;    444 460 47C 498 4B4 4D0 4EC 508 524 540 55C 578 594
  DB   SSH,SOL,SSH,SOR,SSH,SOL,SSH,SOR,SSH,SOL,SSH,SOR,SSH
;
;    5B0 5CC 5E8 604 620 63C
  DB   SOL,SOL,SOL,SOL,SOL,SOL
;- - - - - - - - - - - -
MMPTDT2
;    000 01C 038 054 070 08C 0A8 0C4 0E0 0FC 118 134 150
  DB   SSH,SSH,SSH,SSH,SOR,SOR,SOR,SOR,SSH,SSH,SSH,SSH,SOL
;
;    16C 188 1A4 1C0 1DC 1F8 214 230 24C 268 284 2A0 2BC
  DB   SSH,SOR,SSH,SOL,SSH,SOR,SSH,SOL,SSH,SOR,SSH,SOL,SSH
;
;    2D8 2F4 310 32C 348 364 380 39C 3B8 3D4 3F0 40C 428 
  DB   SOR,SSH,SOL,SSH,SOR,SOR,SSH,SSH,SSH,SSH,SOR,SSH,SOL
;
;    444 460 47C 498 4B4 4D0 4EC 508 524 540 55C 578 594
  DB   SSH,SOR,SSH,SOL,SSH,SOR,SSH,SOL,SSH,SOR,SSH,SOL,SSH
;
;    5B0 5CC 5E8 604 620 63C
  DB   SOR,SSH,SOL,SOL,SOL,SOL
;- - - - - - - - - - - - - - - - - - - - 
MMU4000
	LD	A,$02
	LD	(PLSTOP),A
	LD	(ITEMNOT),A
;
	LD	A,(BGMCNT2)
	AND	A
	JR	NZ,MMU4002
;
	LD	A,(BGMCNT)
	CP	$00
	CALL	Z,MSPOTB1
;
	LD	A,(BGMCNT)
	CP	$01
	CALL	Z,MSPOTB2
;
	LD	A,(BGMCNT)
	CP	$38
	CALL	Z,MSPOTSL
;
	LD	A,(BGMCNT)
	CP	$70
	CALL	Z,MSPOTSR
;
MMU4002
	LD	A,(BGMCNT)
	ADD	A,$01
	LD	(BGMCNT),A
	LD	E,A
	LD	A,(BGMCNT2)
	ADC	A,$00
	LD	(BGMCNT2),A
	LD	D,A
;
	CP	$06
	JR	NZ,MMU4008
;
	LD	A,E
	CP	$20
	JR	NZ,MMU4008
;
	LD	A,$DD
	CALL	MMMSCK
;
	XOR	A
	LD	(MAMUUFG),A
;
		jp	STATINC
;;;11/11	CALL	STATINC
;;;11/11	RET
;
MMU4008
	LD	A,(BGMCNT3)
	INC	A
	CP	$1C
	JR	NZ,MMU4009
;
	LD	A,(BGMCNT4)
	INC	A
	LD	(BGMCNT4),A
	XOR	A
MMU4009	
	LD	(BGMCNT3),A
	LD	A,(BGMCNT4)
	LD	E,A
	LD	D,B
	LD	HL,MMPTDT
	ADD	HL,DE
	LD	A,(HL)
	CALL	ENPTST
;
	LD	HL,MMPTDT1
	ADD	HL,DE
	LD	A,(HL)
	LD	(ENCHPT+1),A
;
	LD	HL,MMPTDT2
	ADD	HL,DE
	LD	A,(HL)
	LD	(ENCHPT+2),A
	RET
;
;-----------------------------------------
MMU5000
	LD	A,(MSGEFG)
	AND	A
	JR	NZ,MMU5030
;
	LD	(BGMWRK0),A
;
	CALL	LDTIM0
	LD	(HL),$70
;
	LD	A,$10
	LD	(SOUND4),A	;(S)
;
	CALL	STATINC
MMU5030
	JP	MMUPTST
;-----------------------------------------
MMU6000
	CALL	LDTIM0
	JR	NZ,MMU6010
;
	LD	A,$02
	LD	(FUESLPT),A
;
	LD	HL,ONPUFG
	SET	0,(HL)	;�o�����I
;
		jp	STATINC
;;;11/11	CALL	STATINC
;;;11/11;
;;;11/11	RET
MMU6010
	CP	$08
	JR	NZ,MMU6030
;
	DEC	(HL)
;
	LD	A,$DF
	CALL	MMMSCK
MMU6030
	LD	A,$6C  ;
	LD	(PLCHPT),A
;
	LD	A,$02
	LD	(PLSTOP),A
;
	LD	A,(PLXPSL)
	LD	(ENSVXL),A
	LD	A,(PLYPSL)
	SUB	$0C
	LD	(ENDSYP),A
;
	LD	DE,MFUECD
	XOR	A
	LD	(ENCHPT2),A
	CALL	EN1CST
	JP	MMUPTST
;-----------------------------------------
MMU7000
	LD	A,(MSGEFG)
	AND	A
	JR	NZ,MMU7010
;
	LD	(ITEMNOT),A
;
	CALL	STATINC
	LD	(HL),B
;
MMU7080
	LD	A,$E0
	CALL	MMMSCK
MMU7010
	JP	MMUPTST
;============================================
MAMUUCD
;0
	DB	$00,$00,$60,$00
	DB	$00,$08,$62,$00
	DB	$00,$10,$64,$00
	DB	$00,$18,$66,$00
	DB	$10,$00,$68,$00
	DB	$10,$08,$6A,$00
	DB	$10,$10,$6C,$00
	DB	$10,$18,$6E,$00
;1
	DB	$00,$00,$70,$00
	DB	$00,$08,$72,$00
	DB	$00,$10,$74,$00
	DB	$00,$18,$76,$00
	DB	$10,$00,$68,$00
	DB	$10,$08,$6A,$00
	DB	$10,$10,$6C,$00
	DB	$10,$18,$6E,$00
;2
	DB	$00,$00,$78,$00
	DB	$00,$08,$7A,$00
	DB	$00,$10,$7C,$00
	DB	$00,$18,$7E,$00
	DB	$10,$00,$68,$00
	DB	$10,$08,$6A,$00
	DB	$10,$10,$6C,$00
	DB	$10,$18,$6E,$00
;3
	DB	$00,$00,$7E,$20
	DB	$00,$08,$7C,$20
	DB	$00,$10,$7A,$20
	DB	$00,$18,$78,$20
	DB	$10,$00,$6E,$20
	DB	$10,$08,$6C,$20
	DB	$10,$10,$6A,$20
	DB	$10,$18,$68,$20
;4
	DB	$00,$00,$76,$20
	DB	$00,$08,$74,$20
	DB	$00,$10,$72,$20
	DB	$00,$18,$70,$20
	DB	$10,$00,$6E,$20
	DB	$10,$08,$6C,$20
	DB	$10,$10,$6A,$20
	DB	$10,$18,$68,$20
;---------------------------------------
MAMUUCS
	LD	A,(ENCHPT2)
	RLA
	RLA
	RLA
	RLA
	RLA
	AND	%11100000
	LD	E,A
	LD	D,B
	LD	HL,MAMUUCD
	ADD	HL,DE
;
	LD	C,$08
	CALL	ENOMST
;
	LD	A,$04
		jp	NXOMSBL
;;;11/11	CALL	NXOMSBL
;;;11/11	RET
;==============================================
MAMUSMV
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	(HL),$4A
;
	LD	HL,ENMOD1
	ADD	HL,BC
	LD	(HL),%10011000 
;
	CALL	ENSZST
;
	CALL	MAMUSCS
;
	CALL	M6CROS
;
	LD	A,(ENSTAT2)
	RST	00
	DW	MMS0800
	DW	MMS1000
;-------------------------------
MMS0800
	CALL	RNDSUB
	LD	HL,ENCONT
	ADD	HL,BC
	LD	(HL),A
;
	CALL	STATINC
;-------------------------------
MMS1000
	LD	A,(BGMWRK0)
	AND	A
	JP	NZ,MMS2000 ;STATINC
;
	LD	HL,ENCONT
	ADD	HL,BC
	INC	(HL)
	LD	A,(HL)
	LD	E,$00
	AND	%00110000
	JR	Z,MMS1010
	INC	E
MMS1010
	LD	A,E
		jp	ENPTST
;;;11/11	CALL	ENPTST
;;;11/11	RET
;-------------------------------
;MMS2PT
;	DB	2,4,4,4
;	DB	3,5,5,5
MMS2000
	RET
;--------------------------------
MAMUSCD
	DB	$58,$00,$58,$20;0
	DB	$5A,$00,$5A,$20;1
	DB	$5C,$00,$5E,$00;2
	DB	$5E,$20,$5C,$20;3
;--------------------------------
MAMUSCD2
;4
	DB	$F0,$00,$50,$00
	DB	$F0,$08,$52,$00
	DB	$00,$00,$54,$00
	DB	$00,$08,$56,$00
;5
	DB	$F0,$00,$52,$20
	DB	$F0,$08,$50,$20
	DB	$00,$00,$56,$20
	DB	$00,$08,$54,$20
;
MAMUSCS
	LD	A,(ENCHPT2)
	CP	$04
	JR	NC,MUSC10
;
	LD	DE,MAMUSCD
	JP	EN2CST
;
MUSC10
	SUB	$04
	RLA
	RLA
	RLA
	RLA
	AND	%11110000
	LD	E,A
	LD	D,B
	LD	HL,MAMUSCD2
	ADD	HL,DE
;
	LD	C,$04
		jp	ENOMST
;;;11/11	CALL	ENOMST
;;;11/11	RET
;==========================================
MSPOTS1
	CALL	OBJBG
;
	LD	A,27
	LD	(VRAMD),A
;
	LD	HL,VRAMD+1
	LD	A,(VRAMH)
	ADD	A,$02
	LD	E,A
	LD	(HLI),A
	LD	A,(VRAML)
	LD	(HLI),A
;
	LD	A,$85
	LD	(HLI),A
;
	xor	A
	LD	(HLI),A
	LD	A,$04
	LD	(HLI),A
	LD	A,$7F
	LD	(HLI),A
	LD	(HLI),A
	LD	A,$06
	LD	(HLI),A
	LD	A,$0C
	LD	(HLI),A
;
	LD	A,E
	LD	(HLI),A
	LD	A,(VRAML)
	ADD	A,$01
	LD	(HLI),A
;
	LD	A,$85
	LD	(HLI),A
;
	LD	A,$01
	LD	(HLI),A
	LD	A,$7F
	LD	(HLI),A
	LD	(HLI),A
	LD	(HLI),A
	LD	(HLI),A
	LD	A,$0D
	LD	(HLI),A
;
	LD	A,E
	LD	(HLI),A
	LD	A,(VRAML)
	ADD	A,$02
	LD	(HLI),A
;
	LD	A,$C5
	LD	(HLI),A
;
	LD	A,$7F
	LD	(HLI),A
	LD	(HL),$00
	RET
;
MSPOTS2
	CALL	OBJBG
;
	LD	A,27
	LD	(VRAMD),A
;
	LD	HL,VRAMD+1
	LD	A,(VRAMH)
	ADD	A,$02
	LD	E,A
	LD	(HLI),A
	LD	A,(VRAML)
	ADD	A,$03
	LD	(HLI),A
;
	LD	A,$C5
	LD	(HLI),A
;
	LD	A,$7F
	LD	(HLI),A
;
	LD	A,E
	LD	(HLI),A
	LD	A,(VRAML)
	ADD	A,$04
	LD	(HLI),A
;
	LD	A,$85
	LD	(HLI),A
;
	LD	A,$02
	LD	(HLI),A
	LD	A,$7F
	LD	(HLI),A
	LD	(HLI),A
	LD	(HLI),A
	LD	(HLI),A
	LD	A,$0E
	LD	(HLI),A
;
	LD	A,E
	LD	(HLI),A
	LD	A,(VRAML)
	ADD	A,$05
	LD	(HLI),A
;
	LD	A,$85
	LD	(HLI),A
;
	LD	A,$03
	LD	(HLI),A
	LD	A,$05
	LD	(HLI),A
	LD	A,$7F
	LD	(HLI),A
	LD	(HLI),A
	LD	A,$07
	LD	(HLI),A
	LD	A,$0F
	LD	(HLI),A
;
	LD	(HL),$00
	RET
;==========================================
MSPOTSS
	CALL	OBJBG
;
	LD	A,21
	LD	(VRAMD),A
;
	LD	HL,VRAMD+1
	LD	A,(VRAMH)
	ADD	A,$02
	LD	E,A
	LD	(HLI),A
	LD	A,(VRAML)
	LD	(HLI),A
;
	LD	A,$83
	LD	(HLI),A
;
	xor	A
	LD	(HLI),A
	LD	A,$04
	LD	(HLI),A
	LD	A,$06
	LD	(HLI),A
	LD	A,$0C
	LD	(HLI),A
;
	LD	A,E
	LD	(HLI),A
	LD	A,(VRAML)
	ADD	A,$01
	LD	(HLI),A
;
	LD	A,$83
	LD	(HLI),A
;
	LD	A,$01
	LD	(HLI),A
	LD	A,$7F
	LD	(HLI),A
	LD	(HLI),A
	LD	A,$0D
	LD	(HLI),A
;
	LD	A,E
	LD	(HLI),A
	LD	A,(VRAML)
	ADD	A,$02
	LD	(HLI),A
;
	LD	A,$83
	LD	(HLI),A
;
	LD	A,$02
	LD	(HLI),A
	LD	A,$7F
	LD	(HLI),A
	LD	(HLI),A
	LD	A,$0E
	LD	(HLI),A
;
	LD	A,E
	LD	(HLI),A
	LD	A,(VRAML)
	ADD	A,$03
	LD	(HLI),A
;
	LD	A,$83
	LD	(HLI),A
;
	LD	A,$03
	LD	(HLI),A
	LD	A,$05
	LD	(HLI),A
	LD	A,$07
	LD	(HLI),A
	LD	A,$0F
	LD	(HLI),A
;
	LD	(HL),$00
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�}���{�E				%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
MANBOMV
	LD	A,(ENDSYP)
	CP	$50
	JP	NC,MANSSMV	;���}���{�E
;
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	(HL),$3E
;
	LD	A,(BGMTIM0)
	AND	A
	JR	Z,MNB900
;
	DEC	A
	LD	(BGMTIM0),A
MNB900
	LD	A,(BGMTIM1)
	AND	A
	JR	Z,MNB910
;
	DEC	A
	LD	(BGMTIM1),A
MNB910
	CALL	MANBOCS
;
	CALL	M6CROS
;
	LD	A,(ENSTAT2)
	RST	00
	DW	MNB1000
	DW	MNB2000
	DW	MNB3000
	DW	MNB4000
	DW	MNB4800
	DW	MNB5000
;----------------------------------------
MNB1000
	LD	A,(ONPUFG)
	AND	%00000010
	JR	Z,MNB1010	;���ɂ�������H
;				;YES !
	CALL	TDMSCK
	JR	NC,MNB1090
;
	LD	A,$89
		jp	MSGCH2
;;;11/11	CALL	MSGCH2
;;;11/11	RET
MNB1010
	LD	A,$02		;���[���b�p�łŒǉ�
	LD	(ITEMNOT),A	;
;
	LD	A,(PLXPSL)
	CP	$30
	JR	C,MNB1090
;
	LD	A,$2F
	LD	(PLXPSL),A
;
	CALL	PLSDCL
;
	LD	A,$85
	CALL	MSGCH2
;
	CALL	STATINC	
MNB1090
MNBPTST
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	AND	$01
		jp	ENPTST
;;;11/11	CALL	ENPTST
;;;11/11	RET
;----------------------------------------
MNB2000
	LD	A,(MSGEFG)
	AND	A
		ret	NZ
;;;11/11	JR	NZ,MNB2030
;
	LD	A,(MSANSR)
	AND	A
	JR	NZ,MNB2020
;
	LD	E,$0B
	LD	HL,ITEMB
MNB2008
	LD	A,(HLI)
	CP	POKAR
	JR	Z,MNB200C	; �I�J���i�����Ă�H
;				; Yes !
MNB200A
	DEC	E
	LD	A,E
	CP	$FF
	JR	NZ,MNB2008
MNB2020
	CALL	STATINC
	LD	(HL),B
;
	LD	A,$8A
		jp	MSGCH2
;;;11/11	CALL	MSGCH2
;;;11/11MNB2030
;;;11/11	RET
MNB200C
	CALL	STATINC
;
	LD	A,$87
	JP	MSGCH2
;=======================================
MNB3000
	LD	A,(MSGEFG)
	AND	A
	JR	NZ,MNB3030
;
	LD	A,$30
	LD	(SOUND4),A	;(S)
;
	CALL	STATINC
BGMRAMS
	XOR	A
	LD	(BGMCNT),A
	LD	(BGMCNT2),A
	LD	(BGMCNT3),A
	LD	(BGMCNT4),A
	LD	(BGMCNT5),A
	LD	(BGMTIM0),A
	LD	(BGMTIM1),A
MNB3030
	RET
;=======================================
MNPTDBE	;�ځI
;;    000 014 028 03C 050 064 078 08C 0A0 0B4 0C8 0DC 
   DB   000,000,000,000,000,000,000,000,000,000,000,000
;;    0F0 104 118 12C 140 154 168 17C 190 1A4 1B8 
   DB   000,000,000,000,000,000,000,000,000,000,000
;;    1CC 1E0 1F4 208 21C 230 244 258 26C 280 294 
   DB   000,001,002,003,004,000,000,000,000,000,000
;;    2A8 2BC 2B0 2E4 2F8 30C 320 334 348 35C 370 
   DB   000,000,000,000,000,000,001,002,003,004,000
;;    384 398 3AC 3C0 3D4 3E8 3FC 410 424 438 44C 
   DB   000,000,000,000,000,000,000,000,000,000,000
;;    460 474 488 49C 4B0 4C4 4D8 4EC 514 528 53C 
   DB   001,002,003,004,000,000,000,000,000,000,000
;;    550 564 578 58C 5A0 5B4 5C8 5DC 5F0 604 618 
   DB   000,001,002,003,004,000,000,000,000,000,000
;-----------------------------------------------------------
MNPTDB	;��}���{�[
;;    000 014 028 03C 050 064 078 08C 0A0 0B4 0C8 0DC 
   DB   002,001,002,001,002,001,002,001,000,000,000,000
;;    0F0 104 118 12C 140 154 168 17C 190 1A4 1B8 
   DB   000,001,000,001,000,001,000,001,000,001,000
;;    1CC 1E0 1F4 208 21C 230 244 258 26C 280 294 
   DB   001,000,001,000,001,002,001,002,001,002,001
;;    2A8 2BC 2B0 2E4 2F8 30C 320 334 348 35C 370 
   DB   002,001,002,001,002,001,002,001,002,001,002
;;    384 398 3AC 3C0 3D4 3E8 3FC 410 424 438 44C 
   DB   001,002,001,002,001,002,001,002,001,002,001
;;    460 474 488 49C 4B0 4C4 4D8 4EC 514 528 53C 
   DB   002,001,002,001,002,001,002,001,002,001,002
;;    550 564 578 58C 5A0 5B4 5C8 5DC 5F0 604 618 
   DB   001,002,001,002,002,002,002,002,002,002,002
;-------------------------------------------------------
MNPTDS	;���}���{�[ 
;;    000 014 028 03C 050 064 078 08C 0A0 0B4 0C8 0DC 
   DB   004,004,004,004,004,004,004,004,004,004,004,004
;;    0F0 104 118 12C 140 154 168 17C 190 1A4 1B8 
   DB   002,003,002,003,002,003,002,003,002,003,002
;;    1CC 1E0 1F4 208 21C 230 244 258 26C 280 294 
   DB   002,003,004,005,006,005,006,005,006,005,006
;;    2A8 2BC 2B0 2E4 2F8 30C 320 334 348 35C 370 
   DB   005,006,005,006,005,006,005,006,004,002,003
;;    384 398 3AC 3C0 3D4 3E8 3FC 410 424 438 44C 
   DB   002,003,002,003,002,003,002,003,002,003,002
;;    460 474 488 49C 4B0 4C4 4D8 4EC 514 528 53C 
   DB   004,005,004,005,003,002,003,002,003,002,003
;;    550 564 578 58C 5A0 5B4 5C8 5DC 5F0 604 618 
   DB   002,001,001,001,001,001,001,000,000,000,000
;-------------------------------------------------------
MNB4000
	LD	A,$02
	LD	(PLSTOP),A
	LD	(ITEMNOT),A
;
	LD	A,(BGMCNT)
	ADD	A,$01
	LD	(BGMCNT),A
	LD	A,(BGMCNT2)
	ADC	A,$00
	LD	(BGMCNT2),A
;
	LD	A,(BGMCNT2)
	CP	$05
	JR	NZ,MNB4078
;
	LD	A,(BGMCNT)
	CP	$F0
	JR	NZ,MNB4078
;---------------------------------------
	CALL	STATINC	;�I���I
;
	CALL	LDTIM0
	LD	(HL),$20
	RET
MNB4078
	LD	A,(BGMCNT3)
	INC	A
	CP	$14
	JR	NZ,MNM4009
;
	LD	A,(BGMCNT4)
	INC	A
	LD	(BGMCNT4),A
	XOR	A
MNM4009	
	LD	(BGMCNT3),A
;
	LD	A,(BGMCNT4)
	LD	E,A
	LD	D,B
	LD	HL,MNPTDB
	ADD	HL,DE
	LD	A,(HL)
	CALL	ENPTST
	LD	HL,MNPTDBE
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	(HL),A
	LD	HL,MNPTDS
	ADD	HL,DE
	LD	A,(HL)
	LD	(BGMWRK0),A
;
	LD	A,(BGMCNT2)
	LD	D,A
;
	LD	A,(BGMCNT)
	LD	E,A
	CP	$CC
	JR	NZ,MNM4080
;
	LD	A,D
	CP	$00
	JR	Z,MNM40A0
MNM4080
	LD	A,E
	CP	$BE
	JR	NZ,MNM4088
;
	LD	A,D
	CP	$05
	JR	Z,MNM4090
MNM4088
	RET
;- - - - - - - - - - - - - - - - - - - - -
MNM4090
	LD	A,$28
	LD	(BGMTIM0),A
MNM40A0
	CALL	LDTIM1
	LD	(HL),$28
;
	RET
;=======================================
UUTTCD
	DB	$00,$00,$40,$00
	DB	$00,$08,$42,$00
	DB	$00,$10,$44,$00
;
MNB4800	;�E�E�b�I
	CALL	LDTIM0
	JR	NZ,MNB4810
;
	LD	(HL),$70
;
	LD	A,$10
	LD	(SOUND4),A	;(S)
;
		ld	(ITEMNOT),a
;
	CALL	STATINC
;
MNB4810
	LD	A,$02
	LD	(PLSTOP),A
;
		jp	MNBPTST
;;;11/11	CALL	MNBPTST
;;;11/11	RET
;=======================================
MFUECD
	DB	$90,$17
;
MNB5000
	CALL	MNBPTST
;
	CALL	LDTIM0
	JR	NZ,MNB5020
;
	LD	A,$01
	LD	(FUESLPT),A
;
	LD	HL,ONPUFG
	SET	1,(HL)	;�Ȋo�����I
;
		xor	a
		ld	(ITEMNOT),a
;
	CALL	STATINC
	LD	(HL),B
;
	RET
MNB5020
	CP	$08
	JR	NZ,MNB5030
;
	DEC	(HL)
;
	LD	A,$88
	CALL	MSGCH2
MNB5030
	LD	A,$6C  ;
	LD	(PLCHPT),A
;
	LD	A,$02
	LD	(PLSTOP),A
;
	LD	A,(PLXPSL)
	LD	(ENSVXL),A
	LD	A,(PLYPSL)
	SUB	$0C
	LD	(ENDSYP),A
;
	LD	DE,MFUECD
	XOR	A
	LD	(ENCHPT2),A
		jp	EN1CST
;;;11/11	CALL	EN1CST
;;;11/11	RET
;=======================================
;=======================================
;=======================================
;=======================================
;=======================================
MANBOCD
;0
	DB	$00,$00,$50,$00
	DB	$00,$08,$52,$00
	DB	$10,$00,$54,$00
	DB	$10,$08,$56,$00
;
	DB	$F8,$10,$58,$00
	DB	$08,$10,$5A,$00
	DB	$18,$10,$5C,$00
;
	DB	$00,$18,$5E,$00
	DB	$10,$18,$5E,$40
;1
	DB	$00,$00,$50,$00
	DB	$00,$08,$52,$00
	DB	$10,$00,$4A,$00
	DB	$10,$08,$4C,$00
;
	DB	$F8,$10,$58,$00
	DB	$08,$10,$4E,$00
	DB	$18,$10,$5C,$00
;
	DB	$00,$18,$5E,$00
	DB	$10,$18,$5E,$40
;2
	DB	$00,$00,$50,$00
	DB	$00,$08,$52,$00
	DB	$10,$00,$54,$00
	DB	$10,$08,$56,$00
;
	DB	$F8,$10,$60,$00
	DB	$08,$10,$5A,$00
	DB	$18,$10,$62,$00
;
	DB	$00,$18,$5E,$00
	DB	$10,$18,$5E,$40
;3
	DB	$00,$00,$46,$00
	DB	$00,$08,$48,$00
	DB	$10,$00,$4A,$00
	DB	$10,$08,$4C,$00
;
	DB	$F8,$10,$60,$00
	DB	$08,$10,$4E,$00
	DB	$18,$10,$62,$00
;
	DB	$00,$18,$5E,$00
	DB	$10,$18,$5E,$40
;
MANMECD
	DB	$FF,$FF,$FF,$FF
	DB	$64,$00,$66,$00
	DB	$64,$40,$66,$40
	DB	$66,$60,$64,$60
	DB	$66,$20,$64,$20
;- - - - - - - - - - - - - - - - - -
MANBOCS
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	LD	(ENCHPT2),A
;
	LD	A,(ENDSYP)
	ADD	A,$03
	LD	(ENDSYP),A
;
	LD	DE,MANMECD
	CALL	EN2CST
;
	LD	A,$02
	CALL	NXOMSBL
;
	CALL	ENPSSV
;
	CALL	LDTIM1
	JR	Z,MNBC10
;
	LD	A,$03
	JR	MNBC20
MNBC10
	LD	HL,ENCHPT
	ADD	HL,BC
	LD	A,(HL)
MNBC20
	RLA	
	RLA	
	AND	%11111100
	LD	E,A
;
	RLA
	RLA
	RLA
	AND	%11100000
	ADD	A,E
	LD	E,A
	LD	D,B
	LD	HL,MANBOCD
	ADD	HL,DE
	LD	C,$09
	CALL 	ENOMST
;
	LD	A,$09
	CALL	NXOMSBL
;
	CALL	LDTIM1
	RET	Z
;
	LD	A,(ENSVXL)
	SUB	$18
	LD	(ENSVXL),A
	LD	A,(ENDSYP)
	SUB	$10
	LD	(ENDSYP),A
;
	LD	HL,UUTTCD
	LD	C,$03
	CALL	ENOMST
;
	LD	A,$03
		jp	NXOMSBL
;;;11/11	CALL	NXOMSBL
;;;11/11	RET
;======================================
MANSSCD21
;0
	DB	$00,$FC,$76,$00
	DB	$00,$04,$78,$00
	DB	$00,$0C,$7A,$00
MANSSCD22
;1
	DB	$00,$FC,$7C,$00
	DB	$00,$04,$78,$00
	DB	$00,$0C,$7E,$00
;
MANSSCD
	DB	$68,$00,$6A,$00	;2
	DB	$6C,$00,$6E,$00 ;3
	DB	$70,$00,$70,$20 ;4
	DB	$6A,$20,$68,$20 ;5
	DB	$6E,$20,$6C,$20 ;6
;
	DB	$72,$00,$74,$00 ;7
	DB	$74,$20,$72,$20 ;8
;- - - - - - - - - - - - - - - - - - -
MANSSMV
	CALL	MANSSCS
;
MAS1000
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	RRA
	AND	$01
	CALL	ENPTST
;
	LD	A,(BGMWRK0)
	AND	A
		ret	Z
;;;11/11	JR	Z,MAS1010
;
		jp	ENPTST
;;;11/11	CALL	ENPTST
;;;11/11;
;;;11/11MAS1010
;;;11/11	RET
;============================================
MANSSCS
	LD	A,(BGMTIM0)
	AND	A
	JR	Z,MNSSC10
;
	LD	A,(ENSVXL)
	SUB	$18
	LD	(ENSVXL),A
	LD	A,(ENDSYP)
	SUB	$10
	LD	(ENDSYP),A
;
	LD	HL,UUTTCD
	LD	C,$03
	CALL	ENOMST
;
	LD	A,$03
	CALL	NXOMSBL
;
	CALL	ENPSSV
;
	LD	A,$07
	LD	(ENCHPT2),A
;;	RET
MNSSC10
	LD	A,(ENCHPT2)
	CP	$02
	JR	NC,MANSC90
;
	LD	HL,MANSSCD21
	DEC	A
	JR	NZ,MANSC80
	LD	HL,MANSSCD22
MANSC80
	LD	C,$03
	CALL	ENOMST
;
	LD	A,$03
	JP	NXOMSBL
MANSC90
	LD	DE,MANSSCD-8
	CALL	EN2CST
;
	LD	A,$02
	JP	NXOMSBL
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%  �l����	                                         %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
MAMAD2CD
	DB	$F0,$00,$70,$01
	DB	$F0,$08,$72,$01
	DB	$00,$00,$74,$01
	DB	$00,$08,$76,$01
;
MAMAD2MV
	LD	HL,MAMAD2CD
;
	LD	C,$04
	CALL	ENOMST
;
	LD	A,(ENSTAT2)
	RST	00
	DW	M220000
	DW	M221000
	DW	M222000
;----------------------------
M220000
	LD	A,(DJSVBF)
	AND	%00100000
	JR	Z,MD20020
;
	LD	HL,ENXPSL
	ADD	HL,BC
	LD	A,(HL)
	SUB	$10
	LD	(HL),A
MD20020
		jp	STATINC
;;;11/11	CALL	STATINC
;;;11/11	RET
;----------------------------
M221000
	CALL	M6CROS
;
	LD	A,(WARAFG)
	AND	A
	RET	NZ
;
	CALL	E6MSCK
		ret	NC
;;;11/11	JR	NC,MD21030
;
	LD	A,(MEGAF)
	CP	$00E		;�݂Ƃ��������Y�H
		ret	Z		;	YES --> MD21030
;;;11/11	JR	Z,MD21030	;	YES --> MD21030
;
	CP	$0D
	JR	NZ,MD21020
;
	LD	A,$0E
	LD	(MEGAF),A
;
	LD	A,$01
	LD	(WARAFG),A
;
	LD	A,$04
	LD	(SOUND3),A	;(S)
;
	CALL	LDTIM0
	LD	(HL),$60
;
	CALL	E6SVST
;
	LD	A,$16
	CALL	MSGCH2	;(M)
;
	JP  	STATINC
MD21020
	LD	A,$9C
		jp	MSGCH2
;;;11/11	CALL	MSGCH2
;;;11/11MD21030
;;;11/11	RET
;----------------------------
M222000
	LD	A,$02
	LD	(PLSTOP),A
	LD	(ITEMNOT),A
;
	CALL	LDTIM0
	JR	NZ,MD22020
;
	CALL	STATINC
	LD	(HL),$01
;
	LD	A,$02
	LD	(SOUND1),A	;(S)
;
	XOR	A
	LD	(ITEMNOT),A
	RET
MD22020
	CP	$40
	JR	NZ,MD22030
;
	LD	HL,SOUND3
	LD	(HL),$11
MD22030
		ret	NC
;;;11/11	JR	NC,MD22050
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),$FC
		jp	E6XCLC
;;;11/11	CALL	E6XCLC
;;;11/11MD22050
;;;11/11	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;% �]�[��(3/13)  ���F�����Ԃ�O����G�͂������炵��..... %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ZORACD
	DB	$FF,$FF,$FF,$FF
	DB	$54,$02,$54,$62
	DB	$54,$42,$54,$22
;
	DB	$56,$02,$56,$22
	DB	$52,$02,$52,$22
ZORAMV
	LD	DE,ZORACD
	CALL	EN2CST
;
		LD	A,(DJFLAG)
		AND	A		;�n��H
		JR	Z,ZORA_050	;	NO --> ZORA_050
		LD	A,(GRNDPT)
		CP	$0DA		;�������̌���ƁH
		JR	NZ,ZORA_050	;	NO --> ZORA_050
		LD	A,(MSGEFG)
		AND	A		;���b�Z�[�W�\�����H
		RET	NZ		;	YES --> return
		LD	A,(PHOTOFG)
		AND	%00000001	;�ʐ^�P�������Ă�H
		JP	Z,E6CLER	;	NO --> E6CLER
		LD	A,(MEGAF)
		CP	$00E		;���ʂ������Y�������Ă�H
		JP	NZ,E6CLER	;	NO --> E6CLER
		LD	A,(WARAFG)
		AND	A		;��炵�׃A�C�e���\���n�e�e�H
		JP	NZ,E6CLER	;	YES --> E6CLER
		LD	A,(PHOTOFG+1)
		AND	%00000001	;�ʐ^�X�������Ă�H
		JR	NZ,ZORA_060	;	YES --> ZORA_060
		LD	A,:ZORAMV
		jp	GEKI_ZORA_SUB
;;;;;;;;		CALL	GEKI_ZORA_SUB
;;;;;;;;		RET
ZORA_060
		CALL	E6MSCK
		JR	NC,ZORA_080
		LD	A,$026		;�C�C���Ƃ������Ă�邩��E�E�E
		CALL	MSGCH2
ZORA_080
		LD	HL,ENMOD0
		ADD	HL,BC
		LD	A,(HL)
		OR	$080
		LD	(HL),A
		CALL	CRENPSL
		RET	NC
		CALL	PLPSRV
		jp	DUSHCL2
;;;;;;;;		CALL	DUSHCL2
;;;;;;;;		RET
;
ZORA_050
	CALL	E6STCK
;
	CALL	E6HNSB
;
	LD	A,(ENSTAT2)
	RST	00
	DW	ZOR1000
	DW	ZOR2000
	DW	ZOR3000
	DW	ZOR4000
;--------------------------------------------
ZOR1000
	LD	HL,ENMOD0
	ADD	HL,BC
	SET	6,(HL)
;
	CALL	RNDSUB
	AND	$07
	LD	E,A
	LD	D,B
	LD	HL,ZBSTXP
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENXPSL
	ADD	HL,BC
	LD	(HL),A
	LD	HL,ZBSTYP
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	(HL),A
;
	CALL	E6CTBC
	LD	A,(WORK3)
	CP	$07
		ret	nz		;���H
;;;11/11	JR	Z,ZORS10	;���H
;;;11/11;
;;;11/11	RET
;;;11/11ZORS10
	CALL	LDTIM0
	CALL	RNDSUB
	AND	$7F
	OR	$40
	LD	(HL),A
;
	JP	STATINC
;--------------------------------------------
ZOR2000
	CALL	LDTIM0
		ret	NZ
;;;11/11	JR	NZ,ZOR2020
;
	LD	(HL),$60
;
		jp	STATINC
;;;11/11	CALL	STATINC
;;;11/11ZOR2020
;;;11/11	RET
;--------------------------------------------
ZOR3000
	CALL	LDTIM0
	JR	NZ,ZOR3030
;
	LD	(HL),$60
;
	LD	HL,ENCONT
	ADD	HL,BC
	LD	(HL),B
;
	LD	HL,ENMOD0
	ADD	HL,BC
	RES	6,(HL)
	JP	STATINC
ZOR3030
	AND	$04
	LD	A,$01
	JR	Z,ZOR3050
	INC	A
ZOR3050
	JP  	ENPTST
;--------------------------------------------
ZORYAD
	DB	0,0,1,2,2,2,1,0
ZOR4000
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	INC	(HL)
	RRA
	RRA
	RRA
	AND	$07
	LD	E,A
	LD	D,B
	LD	HL,ZORYAD
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	(HL),A
;
	CALL	CREPKEL
;
	CALL	LDTIM0
	JR	NZ,ZOR4010
;
	CALL	STATINC
	LD	(HL),B
;
	XOR	A
	CALL	ENPTST
;
E6WPST
	LD	A,$0E
	LD	(SOUND1),A	;(S)
;
	LD	A,(ENSVXL)
	LD	(WORK0),A
	LD	A,(ENDSYP)
	ADD	A,$00
	LD	(WORK1),A
;
	LD	A,WTUP
		jp	EXIDSH
;;;11/11	CALL	EXIDSH
;;;11/11	RET
ZOR4010
	CP	$30
	JR	NZ,ZOR4050
;
	LD	A,BHFIR
	CALL	ENIDSHL
	JR	C,ZOR4050
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
	INC	(HL)
;
	PUSH	BC
;
		ld	c,e
		ld	b,d
;;;11/11	PUSH	DE
;;;11/11	POP	BC
;
	LD	A,$18
	CALL	PSERCHL
;
	POP	BC
ZOR4050
	CALL	LDTIM0
	LD	E,$03
	CP	$50
	JR	NC,ZOR4060
	CP	$20
	JR	C,ZOR4060
	INC	E
ZOR4060
	LD	A,E
	JP  	ENPTST
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	Dr.���C�gor���M 			%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
PAPA1CD
;0
	DB	$00,$00,$70,$01
	DB	$00,$08,$72,$01
	DB	$10,$00,$74,$01
	DB	$10,$08,$74,$21
;1
	DB	$00,$00,$72,$21
	DB	$00,$08,$70,$21
	DB	$10,$00,$74,$01
	DB	$10,$08,$74,$21
;2
	DB	$00,$00,$78,$21
	DB	$00,$08,$76,$21
	DB	$10,$00,$74,$01
	DB	$10,$08,$74,$21
;3
	DB	$00,$00,$76,$01
	DB	$00,$08,$78,$01
	DB	$10,$00,$74,$01
	DB	$10,$08,$74,$21
;
DRLIGHT_CD
;0
	DB	$00,$00,$70,$00
	DB	$00,$08,$72,$00
	DB	$10,$00,$74,$00
	DB	$10,$08,$74,$20
;1
	DB	$00,$00,$72,$20
	DB	$00,$08,$70,$20
	DB	$10,$00,$74,$00
	DB	$10,$08,$74,$20
;2
	DB	$00,$00,$78,$20
	DB	$00,$08,$76,$20
	DB	$10,$00,$74,$00
	DB	$10,$08,$74,$20
;3
	DB	$00,$00,$76,$00
	DB	$00,$08,$78,$00
	DB	$10,$00,$74,$00
	DB	$10,$08,$74,$20
;-----------
HANACD
	DB	$7A,$02,$7C,$02
HANACD2
	DB	$7E,$02,$7E,$22
;--------------------------------------------
PAPA1MV
	LD	A,(ENCHPT2)
	RLA
	RLA
	RLA
	RLA
	AND	%11110000
	LD	E,A
	LD	D,B
;
		LD	A,(GRNDPT)
		CP	$A8		;�c���D���C�g�̉ƁH
		JR	NZ,PAPA1_080	;	NO --> PAPA1_080
		LD	HL,DRLIGHT_CD
		JR	PAPA1_085
;
PAPA1_080
	LD	HL,PAPA1CD
PAPA1_085
	ADD	HL,DE
;
	LD	C,$04
	CALL	ENOMST
;
	LD	A,$04
	CALL	NXOMSBL
;
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	RRA
	RRA
	AND	$01
	CALL	ENPTST
;
	CALL	E6YCHK
	ADD	A,$0C
	CP	$18
	JR	NC,DRL010
;
	CALL	E6XCHK
	ADD	A,$10
	CP	$20
	JR	NC,DRL010
;
	LD	A,E
DRL00C
	ADD	A,$02
	CALL	ENPTST
DRL010
	CALL	M6CROS
;
	LD	A,(GRNDPT)
	CP	$A8
	JP	Z,DRLIGHT
;
	LD	DE,HANACD
	LD	A,(MEGAF)
	CP	$09
	JR	NC,YAG010
	LD	DE,HANACD2
YAG010
	XOR	A
	LD	(ENCHPT2),A	;�ԕr�͂�
;
	LD	A,(ENSVXL)
	ADD	A,$18
	LD	(ENSVXL),A
;
	LD	A,(ENDSYP)
	ADD	A,$08
	LD	(ENDSYP),A
;
	CALL	EN2CST
	CALL	ENPSSV
;
	CALL	E6STCK
	LD	A,(ENSTAT2)
	RST	00
	DW	YAG1000
	DW	YAG2000
	DW	YAG3000
;------------------------------------------
YAG1000
		LD	A,(GMMODE)
		CP	GPLAY
		RET	NZ
		LD	A,(SBHR)
		CP	$004
		RET	NZ
;
	CALL	DRMSCK
		ret	NC
;;;11/11	JR	NC,YAG1090
;
	LD	A,(MEGAF)
	CP	$08
	JR	NZ,YAG1080
;
	LD	A,$67
	CALL	MSGCH2
	JP	STATINC
YAG1080
	LD	A,$66
	JR	C,YAG1088
	LD	A,$6B
YAG1088
		jp	MSGCH2
;;;11/11	CALL	MSGCH2
;;;11/11YAG1090
;;;11/11	RET
;------------------------------------------
YAG2000
	LD	A,(MSGEFG)
	AND	A
	JR	NZ,YAG2020
;
	CALL	STATINC
;
	LD	A,(MSANSR)
	AND	A
	JR	NZ,YAG2020
;
	LD	A,$68
	JP  	MSGCH2
YAG2020
	LD	(HL),B
;
	LD	A,$69
	JP  	MSGCH2
;===============================
YAG3000
	LD	A,(MSGEFG)
	AND	A
	JR	NZ,YAG3040
;
	CALL	STATINC	
	LD	(HL),B
;
	CALL	YOSSISET
;
	LD	A,$09
	LD	(MEGAF),A
;
	LD	A,$0D
	LD	(CHTRF2),A
YAG3040
	RET
;======================================
DRLIGHT
	CALL	E6STCK
	LD	A,(ENSTAT2)
	RST	00
	DW	DRL1000
	DW	DRL2000
	DW	DRL2800
	DW	DRL3000
	DW	DRL4000
	DW	DRL5000
;------------------------------------------
DRL1000
	CALL	DRMSCK
		ret	NC
;;;11/11	JR	NC,DRL1090
;
	LD	A,(MEGAF)
	CP	$09
	JR	NZ,DRL1080
;
	LD	A,$34
	CALL	MSGCH2
	JP	STATINC
DRL1080
	LD	A,$33
	JR	C,DRL1088
	LD	A,$39
DRL1088
		jp	MSGCH2
;;;11/11	CALL	MSGCH2
;;;11/11DRL1090
;;;11/11	RET
;------------------------------------------
DRL2000
	LD	A,(MSGEFG)
	AND	A
		ret	NZ
;;;11/11	JR	NZ,DRL2030
;
		jp	STATINC
;;;11/11	CALL	STATINC
;;;11/11;
;;;11/11	RET
;;;11/11DRL2020
;;;11/11DRL2030
;;;11/11	RET
;===============================
DRL2800	;�u���}�C�h�~�Z���I
	CALL	STATINC
;
	LD	A,PEACH
GMMNXS
	LD	(GMMODE),A
;
	XOR	A		;YES !
	LD	(SBHR),A
	LD	(SBCNT),A
;
	LD	(ITMODE),A
	RET
;===============================
DRL3000
	LD	A,(SBHR)
	CP	$04
		ret	NZ
;;;11/11	JR	NZ,DRL3040
;
	LD	A,(MSGEFG)
	AND	A
		ret	NZ
;;;11/11	JR	NZ,DRL3040
;
	CALL	STATINC	
;
	LD	A,$35
		jp	MSGCH2
;;;11/11	CALL	MSGCH2
;;;11/11;
;;;11/11DRL3040
;;;11/11	RET
;===============================
DRL4000
	LD	A,(MSGEFG)
	AND	A
		ret	NZ
;;;11/11	JR	NZ,DRL4090
;
	CALL	STATINC
;
	LD	A,(MSANSR)
	AND	A
	JR	NZ,DRL4080
;
	CALL	YOSSISET
;
	LD	A,$0A
	LD	(MEGAF),A
;
	LD	A,$0D
	LD	(CHTRF2),A
	RET
;
DRL4080
	DEC	(HL)
;
	LD	A,$37
		jp	MSGCH2	;�����������I
;;;11/11	CALL	MSGCH2	;�����������I
;;;11/11DRL4090
;;;11/11	RET
;===============================
DRL5000
	CALL	DRMSCK
		ret	NC
;;;11/11	JR	NC,DRL5010
;
	LD	A,$38
		jp	MSGCH2
;;;11/11	CALL	MSGCH2
;;;11/11DRL5010
;;;11/11	RET
;===============================
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	���b�z�[�I�o�T��			%
;%		���̖���|���I�o�T��		%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
MAMA1CD
	DB	$62,$21,$60,$21
	DB	$66,$21,$64,$21
;
	DB	$6C,$01,$6E,$01
MAMA1CD2
	DB	$68,$01,$6A,$01
	DB	$6A,$21,$68,$21
;
	DB	$6C,$01,$6E,$01
HOUKICD
	DB	$9A,$14
	DB	$9C,$14
;
;
MAMA1MV
	LD	HL,ENWRK3
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	NZ,MM1009	;Initial ?
;				;yes !
	INC	(HL)
;
	LD	A,:MAMA1MV
	CALL	GEKI05_CHK_SUB
;
	LD	A,(WARPSV+$04)	;���x���T�̃��[�v�|�C���g�����H
	LD	D,$B1		;	no  : ���[�x��
	AND	%00000010	;	yes : ������
	JR	Z,MM100010	;
	LD	D,$CD		;
MM100010
	LD	A,(GRNDPT)
	CP	D		;���[�x�����������ɂ���H
	JP	NZ,E6CLER	;	no --> E6CLER
;
MM1009
	LD	DE,MAMA1CD
;
	XOR	A
	LD	(ENHELP),A
;
	LD	A,(MEGAF)
	CP	$0B
	JR	NC,MM1010
;
	LD	A,(WARPSV+$04)
	AND	%00000010
	JR	NZ,MM1002
;
	LD	A,(MEGAF)
	CP	$0A
	JR	C,MM1010
;
MM1002
	LD	A,$01
	LD	(ENHELP),A
;
	LD	DE,MAMA1CD2
MM1010
	CALL	EN2CST
;
	CALL	E6STCK
;
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	RRA
	AND	$01
	CALL	ENPTST
;
	CALL	M6CROS
;
	LD	A,(ENSTAT2)
	RST	00
	DW	MM11000
	DW	MM12000
	DW	MM13000
	DW	MM14000
;----------------------------------
MM11000
		LD	A,(GMMODE)
		CP	GPLAY
		RET	NZ
		LD	A,(SBHR)
		CP	$004
		RET	NZ
;
	CALL	E6MSCK
		ret	NC
;;;11/11	JR	NC,MM11090
;
	LD	A,(WANFLG)
	CP	$80
	LD	A,$78
	JR	Z,MM11008	;��������������H
;
	LD	A,(ENHELP)
	AND	A
	JR	NZ,MM11010
;
	LD	A,(MEGAF)
	CP	$0B
	LD	A,$5A  ;36
	JR	C,MM11008
	LD	A,$5F
MM11008
	JP  	MSGCH2
MM11010
	LD	A,(MEGAF)
	CP	$0A
	JR	NZ,MM11070
;
		ld	(ITEMNOT),a
;
	LD	A,$5C
	CALL	MSGCH2
	JP  	STATINC	
MM11070
	LD	A,$5B
		jp	MSGCH2
;;;11/11	CALL	MSGCH2
;;;11/11MM11090
;;;11/11	RET
;----------------------------------
MM12000
	LD	A,(MSANSR)
	AND	A
	JR	NZ,MM12010
;
	LD	A,$01
	LD	(SOUND1),A	;(S)
;
	LD	(WARAFG),A
;
	CALL	LDTIM0
	LD	(HL),$80
		jp	STATINC
;;;11/11	CALL	STATINC
;;;11/11;
;;;11/11	RET
MM12010
	XOR	A
	LD	(ITEMNOT),A
	LD	A,$59
	CALL	MSGCH2
	CALL	STATINC
	LD	(HL),B
	RET
;----------------------------------
MM13000
	CALL	LDTIM0
	JR	NZ,MM13010
;
	LD	A,$0B
	LD	(MEGAF),A
;
	LD	A,$0D
	LD	(CHTRF2),A
	LD	A,$5D
	CALL	MSGCH2
;
	JP  	STATINC
MM13010
	LD	A,$02
	LD	(PLSTOP),A
	LD	(ITEMNOT),A
;
	XOR	A
	LD	(ENCHPT2),A
;
	LD	A,(ENDSYP)
	SUB	$0E
	LD	(ENDSYP),A
;
	LD	A,(ENSVXL)
	SUB	$04
	LD	(ENSVXL),A
;
	LD	DE,HOUKICD
	CALL	EN2CST
;
	CALL	ENPSSV
;
	LD	A,$02
	JP	ENPTST
;----------------------------------
MM14000
	LD	A,(MSGEFG)
	AND	A
	JR	NZ,MM14010
;
	LD	(WARAFG),A
	LD	(ITEMNOT),A
;
	CALL	YOSSISET
;
	CALL	STATINC
	LD	(HL),B
MM14010
	RET
;
;------------------------------------------
;------------------------------------------
;------------------------------------------
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�q��������I�o�T��					%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
MAMA0CD
;0
	DB	$00,$F8,$60,$01
	DB	$00,$00,$62,$01
	DB	$00,$08,$64,$01
;1
	DB	$00,$F8,$66,$01
	DB	$00,$00,$68,$01
	DB	$00,$08,$6A,$01
;- - - - - - - - - - - - - - - - -
MAMA0PT
	DB	2,0,6,4
; - - - - - - - - - - - - - - - - - - - -
MAMA0MV
	LD	A,(ENCHPT2)
	SLA	A
	SLA	A
	LD	E,A
	SLA	A
	ADD	A,E
	LD	E,A
	LD	D,B
	LD	HL,MAMA0CD
	ADD	HL,DE
;
	LD	C,$03
	CALL	ENOMST
;
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	RRA
	AND	$01
	CALL	ENPTST
;
	CALL	E6STCK
;
	CALL	M6CROS
;
	LD	A,(ENSTAT2)
	RST	00
	DW	MM01000
	DW	MM02000
	DW	MM03000
;---------------------------------
MM01000
	CALL	E6MSCK
		ret	NC
;;;11/11	JR	NC,MM0M10
;
		LD	A,(MEGAF)	;�n�C�r�X�J�X�ȏ��
		CP	$008		;	��炵�׃A�C�e���������Ă�H
		JR	NC,MM01050	;	YES --> MM01050
		CP	$001		;���b�V�[�l�`�������Ă���H
		JR	Z,MM01060	;	YES --> MM01060
;;;KK;;;		LD	A,(WARPSV+1)
		LD	A,(WARPSV+2)	;���x���R�N���A�H
		AND	%00000010
		JP	Z,MM01050
		LD	E,$0EE
		JR	MM0M08
;
MM01050
	LD	A,(MEGAF)
	AND	A
	LD	E,$2A
	JR	Z,MM0M08
;
	LD	E,$2C
;
	CP	$01
	JR	NZ,MM0M08	;���b�V�[�����Ă���H
;				;YES !
MM01060
	CALL	STATINC
;
	LD	E,$2B
MM0M08
	LD	A,E
		jp	MSGCH2
;;;11/11	CALL	MSGCH2
;;;11/11MM0M10
;;;11/11	RET
;---------------------------------
MM02000
	LD	A,(MSGEFG)
	AND	A
	JR	NZ,MM02060
;
	LD	A,(MSANSR)
	AND	A
	JR	NZ,MM02020
;
	LD	A,$02
	LD	(MEGAF),A	;���{�����炤�I
	LD	A,$0D
	LD	(CHTRF2),A	;TENSOU!
;
	LD	A,$28
	CALL	MSGCH2
	JP	STATINC
MM02020
	LD	A,$27
	CALL	MSGCH2
	
	CALL	STATINC
	LD	(HL),B
MM02060
	RET
;==================================
MM03000
	LD	A,(MSGEFG)
	AND	A
	JR	NZ,MM03010
;
	CALL	YOSSISET
;
	CALL	STATINC
	LD	(HL),B
MM03010
	RET
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	������					%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
AKUMAMV
	LD	HL,ENWRK2
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JP	NZ,AKBEMMV
;
	LD	A,(DJSVBF)
	AND	%00100000
	JP	NZ,E6CLER
;
	CALL	ENHNCL
;
	LD	A,(ENSTAT2)
	RST	00
	DW	AKM1000
	DW	AKM2000
	DW	AKM3000
	DW	AKM4000
	DW	AKM5000
	DW	AKM6000
	DW	AKM7000
	DW	AKM8000
	DW	AKM9000
;----------------------------------------
AKM1000
	LD	A,(PWMAX)
	LD	HL,ITMAXD
	CP	(HL)
	JR	NZ,AKM1010
;
	INC	HL
	LD	A,(BOMAX)
	CP	(HL)
	JR	NZ,AKM1010
;
	INC	HL
	LD	A,(YAMAX)
	CP	(HL)
	JP	Z,E6CLER	;�S���A�b�v�H
AKM1010
	RET
;----------------------------------------
AKM2000
	CALL	LDTIM0
	LD	(HL),$90
;
	LD	A,(ENSVXL)
	LD	(WORK0),A
	LD	A,(ENDSYP)
	LD	(WORK1),A
;
	LD	A,SMK1
	CALL	EXIDSH
;
	LD	A,$06
	LD	(SOUND1),A	;(S)
;
		jp	STATINC
;;;11/11	CALL	STATINC
;;;11/11	RET
;----------------------------------------
AKM3000
	CALL	AK8CS
;
	CALL	LDTIM0
	JR	NZ,AKM3008
;
	LD	(HL),$60
	JP	STATINC
;
AKM3008
	LD	E,$FC
	SUB	$08
	AND	$10
	JR	Z,AKM3010
	LD	E,$04
AKM3010
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),E
;
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),$FC
;
		jp	E6MVCL
;;;11/11	CALL	E6MVCL
;;;11/11	RET
;----------------------------------------
AKM4000
	CALL	AK8CS
;
	CALL	LDTIM0
		ret	NZ
;;;11/11	JR	NZ,AKM4050
;
	LD	(HL),$48
;
	LD	A,BOMBR
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
	LD	HL,ENTIM0
	ADD	HL,DE
	LD	(HL),$20
;
		jp	STATINC
;;;11/11	CALL	STATINC
;;;11/11AKM4050
;;;11/11	RET
;----------------------------------------
AKM5000
	CALL	AKUMACS
;
	CALL	LDTIM0
		ret	NZ
;;;11/11	JR	NZ,AKM5010
;
	LD	A,$E1
	CALL	MSGCHKA
;
		jp	STATINC
;;;11/11	CALL	STATINC
;;;11/11AKM5010
;;;11/11	RET
;----------------------------------------
ITMAXD
;;	DB	$60,$60,$40
	DB	$40,$60,$60
AKMMSD
	DB	$E2,$E3,$E4
;----------------------------------------
AKM6000
	CALL	AKUMACS
;
	LD	A,(MSGEFG)
	AND	A
		ret	NZ
;;;11/11	JR	NZ,AKM6070
;
AKM6008
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	E,(HL)	
	LD	D,$00
	LD	A,E
	LD	(BSINDX),A
	INC	A
	CP	$03
	JR	NZ,AKM6010
	XOR	A
AKM6010
	LD	(HL),A
;
	LD	HL,ITMAXD
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,PWMAX
	ADD	HL,DE
	CP	(HL)
	JR	Z,AKM6008
;------------------------------------
	LD	HL,AKMMSD
	ADD	HL,DE
	LD	A,(HL)
	CALL	MSGCHKA
;
		jp	STATINC
;;;11/11	CALL	STATINC
;;;11/11AKM6070
;;;11/11	RET
;----------------------------------------
AKM7000
	CALL	AKUMACS
;
	LD	A,(MSGEFG)
	AND	A
	RET	NZ
;
	CALL	STATINC
;
	LD	A,(MSANSR)
	AND	A
	JR	NZ,AKM7030
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
	RET
AKM7030
	DEC	(HL)
	DEC	(HL)
	RET
;----------------------------------------
AKM8000
;;	CALL	AKUMACS
	LD	HL,AKUMACD
	LD	C,$03
	CALL	ENOMST
	CALL	PLSTIT
;
	CALL	LDTIM0
	RET	NZ
;
	CALL	ENSDCL
;
	LD	A,$E5
	CALL	MSGCHKA
;
	CALL  	STATINC
;
	LD	A,(BSINDX)
	LD	E,A
	LD	D,B
	LD	HL,ITMAXD
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,PWMAX
	ADD	HL,DE
	LD	(HL),A
;
	LD	D,A
	LD	A,E
	AND	A
	JR	NZ,AKM8020
;
	LD	HL,TUBOCT
	LD	(HL),D
;
	LD	D,PMGIC
	CALL	ITEMGETS
;
	XOR	A
	LD	(KINOKFG),A
;
	LD	A,$0B
	LD	(CHTRF2),A	; �]���I
	RET
AKM8020
	CP	$01
	JR	NZ,AKM8030
;
	LD	HL,BOMBCT
	LD	(HL),D
	RET
AKM8030
	LD	HL,YAAACT
	LD	(HL),D
	RET
;----------------------------------------
AKM9000
	CALL	AKUMACS
;
	LD	A,(MSGEFG)
	AND	A
		ret	NZ
;;;11/11	JR	NZ,AKM9010
;
	LD	HL,ENWRK3
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	NZ,AKM9002
;
	INC	(HL)
;
	LD	A,$3B
	LD	(SOUND1),A	;(S)
AKM9002
	CALL	E6YCLC
;
	LD	HL,ENYSPD
	ADD	HL,BC
	DEC	(HL)
	DEC	(HL)
	DEC	(HL)
;
	LD	A,(ENDSYP)
	CP	$F0
		ret	C
;;;11/11	JR	C,AKM9010
;
	CALL	E6SVST
;
	XOR	A
	LD	(ITEMNOT),A
;
		jp	E6CLER
;;;11/11	CALL	E6CLER
;;;11/11AKM9010
;;;11/11	RET
;===================================
MSGCHKA
	LD	E,A
;
	LD	A,(PLYPSL)
	PUSH	AF
;
	LD	A,$20
	LD	(PLYPSL),A
;
	LD	A,E
	CALL	MSGCHK
;
	POP	AF
	LD	(PLYPSL),A
	RET
;===================================
AKUMACD
;0
	DB	$00,$FC,$70,$03
	DB	$00,$04,$72,$03
	DB	$00,$0C,$70,$23
AKUMACD2
;1
	DB	$00,$FC,$74,$03
	DB	$00,$04,$76,$03
	DB	$00,$0C,$74,$23
;- - - - - - - - - - - - - - - - - -
AKUMACS
	LD	HL,AKUMACD
	LD	A,(FRCNT)
	AND	$08
	JR	Z,AKCS10
	LD	HL,AKUMACD2
AKCS10
	LD	C,$03
	CALL	ENOMST
	JR	PLSTIT
;===================================
;===================================
;===================================
AK8CD
	DB	$7E,$03,$7E,$23
	DB	$7E,$43,$7E,$63
AK8CS
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	AND	$01
	LD	(ENCHPT2),A
;
	LD	DE,AK8CD
	CALL	EN2CST
;
PLSTIT
	LD	A,$02
	LD	(PLSTOP),A
	LD	(ITEMNOT),A
;
	LD	A,$04
	LD	(PLCHPT),A
;
	XOR	A
	LD	(POWDRTM),A
	RET
;===================================================
AKBEMMV
	CALL	AKBEMCS
;
	CALL	LDTIM0
	JP	Z,E6CLER
;
		LD	D,A		; (A) PUSH
		LD	A,(CGBFLG)
		AND	A
		JR	NZ,NYAMA_BEAM	; �a�f�J���[�`�F���W

		LD	A,D		; (A) POP

	BIT	1,A
	LD	A,$E4
	JR	Z,AKBEM10
	LD	A,$44
AKBEM10
	LD	(BGPFG),A
;
AKBEM20
	RET

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�K�E�I�m�R���񁕂������܂�r�[���i�a�f�J���[�`�F���W�j		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
NYAMA_BEAM
		LD	HL,CallBank
		LD	A,:NYAMA_BEAM_sub
		LD	(HLI),A
		LD	A,>NYAMA_BEAM_sub
		LD	(HLI),A
		LD	A,<NYAMA_BEAM_sub
		LD	(HLI),A
		LD	A,:NYAMA_BEAM
		LD	(HL),A
		JP	JSL_CALL

;-------------------------------------
AKBEMCD
	DB	$10,$00,$7C,$07
	DB	$10,$08,$7C,$67
	DB	$20,$00,$7C,$07
	DB	$20,$08,$7C,$67
;
	DB	$30,$F8,$78,$07
	DB	$30,$00,$7A,$07
	DB	$30,$08,$7A,$27
	DB	$30,$10,$78,$27
	DB	$40,$F8,$78,$47
	DB	$40,$00,$7A,$47
	DB	$40,$08,$7A,$67
	DB	$40,$10,$78,$67
AKBEMCD2
	DB	$10,$00,$7C,$54
	DB	$10,$08,$7C,$34
	DB	$20,$00,$7C,$54
	DB	$20,$08,$7C,$34
;
	DB	$30,$F8,$78,$14
	DB	$30,$00,$7A,$14
	DB	$30,$08,$7A,$34
	DB	$30,$10,$78,$34
	DB	$40,$F8,$78,$54
	DB	$40,$00,$7A,$54
	DB	$40,$08,$7A,$74
	DB	$40,$10,$78,$74
AKBADT
	DB	12,12,04,02
AKBEMCS
	LD	A,(ENDSYP)
	SUB	$05
	LD	(ENDSYP),A
;
	CALL	LDTIM0
	LD	C,12
	CP	$B0
	JR	C,AKBC08
;
	SUB	$B0
	RRA
	RRA
	AND	$03
	LD	E,A
	LD	D,B
	LD	HL,AKBADT
	ADD	HL,DE
	LD	C,(HL)
AKBC08
	LD	HL,AKBEMCD
	LD	A,(FRCNT)
	AND	$04
	JR	Z,AKBC10
	LD	HL,AKBEMCD2
AKBC10
	CALL	ENOMST
;
	LD	A,$04
		jp	NXOMSBL
;;;11/11	CALL	NXOMSBL
;;;11/11	RET
;;;Ze3.S�Ɉړ�����;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;;;Ze3.S�Ɉړ�����;%	�풓����				%
;;;Ze3.S�Ɉړ�����;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;;;Ze3.S�Ɉړ�����ONPUCD
;;;Ze3.S�Ɉړ�����	DB	$0E,$00
;;;Ze3.S�Ɉړ�����ONPUMV
;;;Ze3.S�Ɉړ�����	LD	DE,ONPUCD
;;;Ze3.S�Ɉړ�����	CALL	EN1CST
;;;Ze3.S�Ɉړ�����;
;;;Ze3.S�Ɉړ�����;;	CALL	E6STCK
;;;Ze3.S�Ɉړ�����;
;;;Ze3.S�Ɉړ�����;;	CALL	LDTIM0
;;;Ze3.S�Ɉړ�����;;	JP	Z,E6CLER
;;;Ze3.S�Ɉړ�����	LD	HL,ENCONT
;;;Ze3.S�Ɉړ�����	ADD	HL,BC
;;;Ze3.S�Ɉړ�����	LD	A,(HL)
;;;Ze3.S�Ɉړ�����	DEC	A
;;;Ze3.S�Ɉړ�����	LD	(HL),A
;;;Ze3.S�Ɉړ�����	JP	Z,E6CLER
;;;Ze3.S�Ɉړ�����;
;;;Ze3.S�Ɉړ�����;;	AND	%00010000
;;;Ze3.S�Ɉړ�����	BIT	4,A
;;;Ze3.S�Ɉړ�����	LD	E,$01
;;;Ze3.S�Ɉړ�����	JR	Z,ONP010
;;;Ze3.S�Ɉړ�����	LD	E,$FF
;;;Ze3.S�Ɉړ�����ONP010
;;;Ze3.S�Ɉړ�����;;	LD	A,(FRCNT)
;;;Ze3.S�Ɉړ�����;;	AND	$01
;;;Ze3.S�Ɉړ�����	BIT	0,A
;;;Ze3.S�Ɉړ�����	JR	NZ,ONP020
;;;Ze3.S�Ɉړ�����;
;;;Ze3.S�Ɉړ�����	LD	HL,ENXSPD
;;;Ze3.S�Ɉړ�����	ADD	HL,BC
;;;Ze3.S�Ɉړ�����	LD	A,(HL)
;;;Ze3.S�Ɉړ�����	ADD	A,E
;;;Ze3.S�Ɉړ�����	LD	(HL),A
;;;Ze3.S�Ɉړ�����ONP020
;;;Ze3.S�Ɉړ�����	JP	E6MVCL
;;;Ze3.S�Ɉړ�����;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;;;Ze3.S�Ɉړ�����;%	������������				%
;;;Ze3.S�Ɉړ�����;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;;;Ze3.S�Ɉړ�����USAG2CD
;;;Ze3.S�Ɉړ�����	DB	$50,$00,$52,$00
;;;Ze3.S�Ɉړ�����	DB	$52,$20,$50,$20
;;;Ze3.S�Ɉړ�����;
;;;Ze3.S�Ɉړ�����	DB	$54,$00,$56,$00
;;;Ze3.S�Ɉړ�����	DB	$56,$20,$54,$20
;;;Ze3.S�Ɉړ�����;- - - - - - - - - - - - - - - - - - 
;;;Ze3.S�Ɉړ�����USAG2MV
;;;Ze3.S�Ɉړ�����	CALL	DOUCHK
;;;Ze3.S�Ɉړ�����;
;;;Ze3.S�Ɉړ�����	LD	DE,USAG2CD
;;;Ze3.S�Ɉړ�����	CALL	EN2CST
;;;Ze3.S�Ɉړ�����;
;;;Ze3.S�Ɉړ�����	LD	A,(MAINDX)
;;;Ze3.S�Ɉړ�����	LD	E,A
;;;Ze3.S�Ɉړ�����	LD	D,B
;;;Ze3.S�Ɉړ�����	LD	HL,ENYPSL
;;;Ze3.S�Ɉړ�����	ADD	HL,DE
;;;Ze3.S�Ɉړ�����	LD	A,(ENSVYL)
;;;Ze3.S�Ɉړ�����	LD	E,$00
;;;Ze3.S�Ɉړ�����	CP	(HL)
;;;Ze3.S�Ɉړ�����	JR	C,USA2060
;;;Ze3.S�Ɉړ�����;
;;;Ze3.S�Ɉړ�����	LD	E,$02
;;;Ze3.S�Ɉړ�����USA2060
;;;Ze3.S�Ɉړ�����	LD	A,(FRCNT)
;;;Ze3.S�Ɉړ�����	RRA
;;;Ze3.S�Ɉړ�����	RRA
;;;Ze3.S�Ɉړ�����	RRA
;;;Ze3.S�Ɉړ�����	RRA
;;;Ze3.S�Ɉړ�����	RRA
;;;Ze3.S�Ɉړ�����	AND	$01
;;;Ze3.S�Ɉړ�����	ADD	A,E
;;;Ze3.S�Ɉړ�����	CALL	ENPTST
;;;Ze3.S�Ɉړ�����;-------------------------------
DOUMSCK
	CALL	M6CROS
;
	CALL	E6MSCK
		ret	NC
;;;11/11	JR	NC,DOUMS10
;
	LD	A,$96	;�������p�I
		jp	MSGCH2
;;;11/11	CALL	MSGCH2
;;;11/11DOUMS10
;;;11/11	RET
;=============================================
DOUCHK
	LD	A,(MARINOF)
	AND	A
	JP	Z,E6CLER
;
	RET
;
;������������������������������������������������������������������������
;��	ze8 �Ƀv���O�������ړ�					       ��
;������������������������������������������������������������������������
;;;11/11;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;;;11/11;%	������ ���F				%
;;;11/11;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;;;11/11KUMASCD
;;;11/11	DB	$74,$00,$76,$00
;;;11/11	DB	$70,$00,$72,$00
;;;11/11;
;;;11/11	DB	$76,$20,$74,$20
;;;11/11	DB	$72,$20,$70,$20
;;;11/11;- - - - - - - - - - - - - - - - - - 
;;;11/11KUMASMV
;;;11/11	CALL	DOUCHK
;;;11/11;
;;;11/11	LD	DE,KUMASCD
;;;11/11	CALL	EN2CST
;;;11/11;
;;;11/11	LD	A,(MAINDX)
;;;11/11	LD	E,A
;;;11/11	LD	D,B
;;;11/11	LD	HL,ENXPSL
;;;11/11	ADD	HL,DE
;;;11/11	LD	A,(ENSVXL)
;;;11/11	LD	E,$00
;;;11/11	CP	(HL)
;;;11/11	JR	NC,KMAS060
;;;11/11;
;;;11/11	LD	E,$02
;;;11/11KMAS060
;;;11/11	LD	A,(FRCNT)
;;;11/11	RRA
;;;11/11	RRA
;;;11/11	RRA
;;;11/11	RRA
;;;11/11	RRA
;;;11/11	AND	$01
;;;11/11	ADD	A,E
;;;11/11	CALL	ENPTST
;;;11/11;;	RET
;;;11/11	JR	DOUMSCK
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	������ ���i���͂������j			%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
GMUSICD
	DB	$50,$01,$52,$01
	DB	$52,$21,$50,$21	;	�O
;
	DB	$54,$01,$56,$01
	DB	$56,$21,$54,$21	;	��
;
	DB	$58,$01,$5A,$01
	DB	$58,$01,$5A,$01
;
	DB	$5A,$21,$58,$21
	DB	$5A,$21,$58,$21
;
;- - - - - - - - - - - - - - - -
GMUSIMV
	LD	A,(MARINOF)
	AND	A
	JP	NZ,E6CLER
;
	LD	DE,GMUSICD
	CALL	EN2CST
;
	LD	A,(FRCNT)
	AND	$3F
	JR	NZ,GMS0000
;
	CALL	E6XYCK
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	(HL),E
GMS0000
	CALL	M6PTST
;
	CALL	E6STCK
;
	CALL	E6ZCLC
	LD	HL,ENZSPD
	ADD	HL,BC
	DEC	(HL)
	DEC	(HL)
;
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,GMS110
	AND	%10000000
	JR	Z,GMS120
;
GMS110
	LD	(HL),B
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),B
;
	LD	A,(FRCNT)
	AND	$1F
	JR	NZ,GMS120
;
	LD	(HL),$0C
GMS120
	LD	A,(ENSVYL)
	LD	(ENDSYP),A
	CALL	M6CROS
	CALL	ENPSSV
;
	CALL	E6MSCK
	RET	NC
;
;;	LD	A,$70
;;	CALL	MSGCH3
;
	LD	E,$00
;
	LD	A,(DJFLAG)
	AND	A
	JR	NZ,GMS380
;
	INC	E
	LD	A,(GRNDPT)
	CP	$CC
	JR	Z,GMS380
	INC	E
	CP	$CD
	JR	Z,GMS380
	INC	E
GMS380
	LD	A,(WARPSV+$05)
	AND	%00000010
	JR	Z,GMS390	;�}���������Ă������H
;				;YES !
	LD	A,E
	ADD	A,$04
	LD	E,A
GMS390
	LD	A,(MARINFG)
	AND	A
	JR	Z,GMS3A0
;
	LD	A,$52
	JP  	MSGCH3
GMS3A0
	LD	A,E
	ADD	A,$4A
	JP  	MSGCH3
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	������ �썑��				%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
NTORICD
	DB	$78,$01,$7A,$01
	DB	$7C,$01,$7E,$01
;
	DB	$7A,$21,$78,$21
	DB	$7E,$21,$7C,$21
;- - - - - - - - - - - - - - - - - - 
NTORIMV
	CALL	DOUCHK
;
	LD	DE,NTORICD
	CALL	EN2CST
;
	LD	A,(MAINDX)
	LD	E,A
	LD	D,B
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	A,(ENSVXL)
	LD	E,$00
	CP	(HL)
	JR	NC,NTRS060
;
	LD	E,$02
NTRS060
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	RRA
	RRA
	AND	$01
	ADD	A,E
	CALL	ENPTST
	JP	DOUMSCK
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	������������				%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
USAGICD
	DB	$5A,$21,$58,$21
	DB	$5E,$21,$5C,$21
	DB	$58,$01,$5A,$01
	DB	$5C,$01,$5E,$01
;- - - - - - - - - - - - - - - - -
USAGIMV
	LD	DE,USAGICD
	CALL	EN2CST
;
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	AND	$01
	CALL	ENPTST
;
	LD	A,$02
	LD	(PLSTOP),A
	LD	(ITEMNOT),A
;
	CALL	E6ZCLC
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
	JR	Z,USG0000
;
	LD	(HL),B
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),B
USG0000
	LD	A,(ENSTAT2)
	RST	00
	DW	USG1000
	DW	USG1800
	DW	USG2000
	DW	USG3000
;;	DW	USG4000
;---------------------------------
USG1000
	CALL	LDTIM0
	RET	NZ
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),$0C
;
	CALL	E6XCLC
;
	LD	A,(ENSVXL)
	CP	$20
	JR	NZ,USG1010
;
	LD	A,$01
	CALL	MAMKSS
;
	LD	A,$01
	LD	(PLCMKI),A
;
	PUSH	BC
	CALL	PLPTSTL
	POP	BC
	RET
USG1010
	CP	$48
	RET	NZ
;
	CALL	LDTIM0
	LD	(HL),$40
;
	JP	STATINC
;---------------------------------
USG1800
	CALL	LDTIM0
	JR	NZ,USG1810
;
	LD	A,$E3
	CALL	MSGCH2
;
	CALL	LDTIM0
	LD	(HL),$10
;
	CALL	STATINC
USG1810
USGJUMP
	LD	A,(ENHELP)
	AND	A
	JR	Z,USG2002	;�҂��I
;
	LD	HL,ENWRK3
	ADD	HL,BC
	LD	A,(HL)
	DEC	(HL)
	AND	A
	JR	NZ,USG2002
;
	LD	(HL),$08
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),$12
USG2002
	RET
;---------------------------------
USG2000
	CALL	USGJUMP
;
	LD	A,(MSGEFG)
	AND	A
		ret	NZ
;;;11/11	JR	NZ,USG2050
;
	CALL	LDTIM0
	JR	NZ,USG2008
;
	LD	(HL),$10
;
	LD	A,$E5
	CALL	MSGCH2
	JP	STATINC
USG2008
	LD	E,$02
	CP	$08
	JR	NC,USG2010
	LD	E,$00
USG2010
	LD	A,E
		jp	MAMKSS
;;;11/11	CALL	MAMKSS
;;;11/11USG2050
;;;11/11	RET
;---------------------------------
USG3000
	CALL	USGJUMP
;
	LD	A,(MSGEFG)
	AND	A
	JR	NZ,USG3010
;
	CALL	LDTIM0
	JR	Z,USG300A
;
	LD	E,$01
	CP	$08
	JR	C,USG3008
	LD	E,$02
USG3008
	LD	A,E
	JP  	MAMKSS
;
USG300A
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	AND	$01
	ADD	A,$02
	CALL	ENPTST
;
	LD	HL,MARINOF	;����͂Ȃ��I
	LD	(HL),$01
;
	LD	A,(ENSVXL)
	AND	$FC
	CP	$E0
	JR	Z,USG300C
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),$EC
;
	CALL	E6XCLC
USG300C
	LD	A,(MAINDX)
	LD	E,A
	LD	D,B
	LD	HL,ENXSPD
	ADD	HL,DE
	LD	(HL),$F4
;
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	AND	$01
	ADD	A,$04
	LD	HL,ENCHPT
	ADD	HL,DE
	LD	(HL),A
;
	PUSH	DE
	PUSH	BC
		ld	c,e
		ld	b,d
;;;11/11	PUSH	DE
;;;11/11	POP	BC
	CALL	E6XCLC
	POP	BC		
	POP	DE
;
;;	LD	A,(ENSVXL)
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	A,(HL)
	CP	$F0
	JR	NZ,USG3010
;
	CALL	E6CLER
;
	XOR	A
	LD	(MARINFG),A
;
	XOR	A
	LD	(ITEMNOT),A
USG3010
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	��������X�C�b�`			%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
HIKUSMV
	CALL	HIKUSCS
;
	CALL	E6STCK
;
	LD	HL,PLXPSL
	LD	A,(ENSVXL)
	SUB	(HL)
	ADD	A,$04
	CP	$08
	JR	NC,HKS020
;
	LD	HL,PLYPSL
	LD	A,(ENDSYP)
	ADD	A,$04
	SUB	(HL)
	JR	C,HKS020
;
	CALL	M6CRSB
HKS020
	LD	HL,PLXPSL
	LD	A,(ENSVXL)
	SUB	(HL)
	ADD	A,$06
	CP	$0C
	JR	NC,HKS060
;
	LD	HL,PLYPSL
	LD	A,(ENDSYP)
	SUB	(HL)
	ADD	A,$08
	CP	$04
	JR	NC,HKS060
;
	LD	E,%00100000
;
	LD	A,(ITEMB)
	CP	PBULE
	JR	Z,HKS030
;
	LD	E,%00010000
;
	LD	A,(ITEMA)
	CP	PBULE
	JR	NZ,HKS060
HKS030
		LD	A,(WPLCAMD)	;���[���b�p�łŒǉ�
		AND	A		;	�����������ł���H
		JR	NZ,HKS060	;		YES --> HKS060
;
	LD	A,(KEYA1)
	AND	E
	JR	Z,HKS060
;
	LD	A,$02
	LD	(HIKUSFG),A
;
	LD	A,$3A
	LD	(PLCHPT),A
;
	LD	A,$02
	LD	(PLCMKI),A
;
	LD	A,$01
	LD	(PLSTOP),A
;
	CALL	DUSHCL
;
	LD	A,(ENSVXL)
	LD	(PLXPSL),A
	LD	A,(ENDSYP)
	ADD	A,$08
	LD	(PLYPSL),A
;
	CP	$50
	JR	NC,HKS058
;
	LD	A,(KEYA1)
	AND	%00001000
	JR	Z,HKS058
;
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	INC	(HL)
	AND	%00011000
	JR	Z,HKS040
;
	LD	HL,PLCHPT
	INC	(HL)
;
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),$04
	CALL	E6YCLC
;
	LD	A,$01
	LD	(HIKUSFG),A
HKS040
	RET
HKS050
;
HKS058
	LD	HL,ENCONT
	ADD	HL,BC
	LD	(HL),%00001000
	RET
HKS060
	LD	A,(ENDSYP)
	CP	$1A+1
	JR	C,HKS070
;
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),$FD
	CALL	E6YCLC
;
;
;;;11/30	LD	A,$00
;;;11/30	LD	(HIKUSFG),A
;;;11/30HKS070
;;;11/30	RET
;
;
HKS070
		LD	A,(ENDSYP)
		CP	$01A
		RET	C
		XOR	A
		LD	(HIKUSFG),A
		RET
;====================================
HIKUSCD
	DB	$44,$01,$44,$21
	DB	$74,$01,$74,$21
HIKUSC2
	DB	$46,$01,$46,$21
	DB	$76,$01,$76,$21
;
HIKUSCS
	LD	A,(DNJNNO)
	CP	$01
	JR	NZ,HKC002	;Lv.2 ?
;
	LD	(ENCHPT2),A	;Bank D set !
HKC002
	LD	DE,HIKUSCD
	CALL	EN2CST
;
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	A,(HL)
	ADD	A,$FC
	CP	$F0
	RET	NC
	LD	(ENDSYP),A
;
HKC010
	LD	DE,HIKUSC2
	CALL	EN2CST
;
	LD	A,(ENDSYP)
	ADD	A,$10
	LD	(ENDSYP),A
;
	LD	HL,ENSVYL
	CP	(HL)
	JR	C,HKC010
;
		jp	ENPSSV
;;;11/11	CALL	ENPSSV
;;;11/11;
;;;11/11	RET
;
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�Z�C�E�`			%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
TAWACD
	DB	$24,$00
	DB	$3E,$00
;
TAWAMV
	LD	DE,TAWACD
	CALL	EN1CST
;
	CALL	E6STCK
;
	CALL	LDTIM0
	JP	Z,E6CLER
;
	LD	E,$01
	CP	$40
	JR	C,TAW100
;
	JR	NZ,TAW110
;
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	A,(HL)
	ADD	A,$04
	LD	(HL),A
	JR	TAW100
TAW110
	DEC	E
TAW100
	LD	A,E
	CALL	ENPTST
;
	CALL	LDTIM0
	LD	E,$FE
	AND	%00100000
	JR	Z,TAW112
	LD	E,$FC
TAW112
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),E
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),$FF
;
	LD	A,(FRCNT)
	AND	$03
	RET	NZ
;
		jp	E6MVCL	
;;;11/11	CALL	E6MVCL	
;;;11/11;
;;;11/11	RET
;==========================================
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�Z�C�E�`						%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
TODDMV
	LD	HL,ENWRK0	
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JP	NZ,TAWAMV
;
	LD	A,(GRRMSV+$FD)
	AND	%00100000
	JP	NZ,TODDMV2	;�C�x���g��I
;
	CALL	TODDCS
;
	CALL	E6STCK
;
	CALL	E6ZCLC
	LD	HL,ENZSPD
	ADD	HL,BC
	DEC	(HL)
;
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	AND	%10000000
	JR	Z,TD00010
;
	LD	(HL),B
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),B
TD00010
	CALL	M6CROS
;
	LD	A,(ENSTAT2)
	RST	00
	DW	TOD1000
	DW	TOD2000
	DW	TOD3000
	DW	TOD3800
	DW	TOD4000
	DW	TOD5000
	DW	TOD6000
	DW	TOD7000
	DW	TOD8000
;=============================================
TOD1000
	LD	HL,ENCONT
	ADD	HL,BC
	INC	(HL)
	LD	A,$7F
	AND	(HL)
	JR	NZ,TOD1010
;
	LD	A,TODD
	CALL	ENIDSHL
	JR	C,TOD1010
;
	LD	A,(WORK0)
	SUB	$08
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	A,(WORK1)
	ADD	A,$02
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,ENTIM0
	ADD	HL,DE
	LD	(HL),$60
;
	LD	HL,ENMOD0
	ADD	HL,DE
	LD	(HL),%11000001
;
	LD	HL,ENWRK0
	ADD	HL,DE
	INC	(HL)
TOD1010
	LD	A,(MARINFG)
	AND	A
	JR	NZ,TOD1090
;
	CALL	TDMSCK
		ret	NC
;;;11/11	JR	NC,TOD1020
;
	LD	A,$E0
		jp	MSGCH2
;;;11/11	CALL	MSGCH2
;;;11/11TOD1020
;;;11/11	RET
;- - - - - - - - - - - - - - -
TOD1090
	CALL	E6XCHK
	ADD	A,$13
	CP	$26
	RET	NC
;
	CALL	E6YCHK
	ADD	A,$20
	CP	$40
	RET	NC
;
	CALL	DUSHCL
	CALL	PLSDCL
;
	LD	A,(PLJPFG)
	AND	A
	RET	NZ
;
	LD	A,(MAINDX)
	LD	E,A
	LD	D,B
	LD	HL,ENZPSL
	ADD	HL,DE
	LD	A,(HL)
	AND	A
	RET	NZ
;
	CALL	STATINC
;
	LD	A,$E1
	CALL	MSGCH2
;
		jp	MAMKST
;;;11/11	CALL	MAMKST
;;;11/11TOD10A0
;;;11/11	RET
;=============================================
TOD2000
	LD	A,(MSGEFG)
	AND	A
		ret	NZ
;;;11/11	JR	NZ,TOD2030
;
	CALL	STATINC
;
	LD	A,(MSANSR)
	AND	A
	JR	NZ,TOD2020
;
	LD	A,$2F
	LD	(SOUND4),A	;(S)
	LD	(UTAFLG),A
;
	CALL	LDTIM3
	LD	(HL),$50
	RET
TOD2020
	LD	(HL),$08
;
	LD	A,$E4
		jp	MSGCH2
;;;11/11	CALL	MSGCH2
;;;11/11TOD2030
;;;11/11	RET
;=============================================
TOD3000
	LD	A,$01
	LD	(ITEMNOT),A
;
	LD	A,$02
	LD	(PLSTOP),A
;
	CALL	LDTIM3
	JR	NZ,TOD3010
;
	LD	(HL),$C0
;
		jp	STATINC
;;;11/11	CALL	STATINC
;;;11/11;
;;;11/11	RET
TOD3010
	LD	E,$00
	CP	$40
	JR	NC,TOD3030	
;
	LD	E,$02
	CP	$10
	JR	C,TOD3030
;
	LD	E,$00
	CP	$3C
	JR	NC,TOD3020
;
	CP	$20
	JR	Z,TOD3030
	CP	$21
	JR	Z,TOD3030
	CP	$22
	JR	Z,TOD3030
;
TOD3020
	LD	E,$01
TOD3030
	LD	A,E
		jp	ENPTST
;;;11/11	CALL	ENPTST
;;;11/11	RET
;=============================================
TDDSPT
	DB	1,2,1,2,1,1,2,2,1,2,1,2,1,1,2,2
	DB	1,2,1,2,1,1,2,2,1,2,1,2,1,1,2,2
	DB	1,2,1,2,1,1,2,2,1,2,1,2,1,1,2,2
	DB	1,2,1,2,1,1,2,2,1,2,1,2,1,1,2,2
	DB	1,2,1,2,1,1,2,2,1,2,1,2,1,1,2,2
	DB	1,2,1,2,1,1,2,2,1,2,1,2,1,1,2,2
TOD3800
	LD	A,$01
	LD	(ITEMNOT),A
;
	LD	A,$02
	LD	(PLSTOP),A
;
	CALL	LDTIM3
	JR	NZ,TOD3890	;�S�I���H
;				;YES !
	LD	(UTAFLG),A
;
	LD	A,$11
	LD	(SOUND3),A	;(S)
;
	CALL	LDTIM0
	LD	(HL),$08
;
	LD	A,$02
	CALL	ENPTST
;
	JP	STATINC
TOD3890
	LD	HL,ENWRK2
	ADD	HL,BC
	LD	E,(HL)
	LD	D,B
	LD	A,(FRCNT)
	AND	$07
	JR	NZ,TOD38A0
;
	INC	(HL)
	LD	A,(HL)
	CP	$60
	JR	NC,TOD38A0
	AND	$0F
	JR	NZ,TOD38A0
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),$10
;
	LD	A,$24
	LD	(SOUND1),A	;(S)
TOD38A0
	LD	HL,TDDSPT
	ADD	HL,DE
	LD	A,(HL)
	CP	$02
	JR	NZ,TOD38A7
;
	LD	A,(FRCNT)
	AND	$3F
	JR	NZ,TOD38A6
;
	LD	HL,SOUND1
	LD	(HL),$27	;(S)
TOD38A6
	LD	A,$02
TOD38A7
	CALL	ENPTST
;
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	AND	A
		ret	Z
;;;11/11	JR	Z,TOD38B0
;
	LD	E,$01
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	A,(HL)
	SUB	$F8
	AND	%10000000
	JR	NZ,TOD38A8
	INC	E
TOD38A8
	LD	A,E
		jp	ENPTST
;;;11/11	CALL	ENPTST
;;;11/11TOD38B0
;;;11/11	RET	
;=============================================
TOD4000
	LD	A,$02
	LD	(PLSTOP),A
;
;;	CALL	E6YCLC
;
	CALL	LDTIM0
		ret	NZ
;;;11/11	JR	NZ,TOD4010
;
	LD	(HL),$10
;
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	A,(HL)
	ADD	A,$04
	LD	(HL),A
;
	LD	HL,ENCHPT
	ADD	HL,BC
	LD	A,(HL)
	INC	A
	LD	(HL),A
	CP	$04
		ret	NZ
;;;11/11	JR	NZ,TOD4010
;
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	(HL),$18
;
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	A,(HL)
	ADD	A,$18
	LD	(HL),A
;
	LD	A,$08
	LD	(SOUND1),A	;(S)
;
		jp	STATINC
;;;11/11	CALL	STATINC
;;;11/11TOD4010
;;;11/11	RET
;=============================================
TOD5000
	LD	A,$02
	LD	(PLSTOP),A
;
;	CALL	E6ZCLC
;;
;	LD	HL,ENZSPD
;	ADD	HL,BC
;	DEC	(HL)
;
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
;;	AND	%10000000
	AND	A
		ret	NZ
;;;11/11	JR	NZ,TOD5010
;
;;	LD	(HL),B
;
	CALL	STATINC
;
	CALL	LDTIM0
	LD	(HL),$08
;
TDWPST
	LD	A,$24
	LD	(SOUND3),A	;(S)
;
	LD	A,(ENSVXL)
	LD	(WORK0),A
	LD	A,(ENDSYP)
	ADD	A,$10
	LD	(WORK1),A
;
	LD	A,WTUP
	CALL	EXIDSH
;
	LD	A,(ENSVXL)
	ADD	A,$10
	LD	(WORK0),A
	LD	A,(ENDSYP)
	ADD	A,$10
	LD	(WORK1),A
;
	LD	A,WTUP
		jp	EXIDSH
;;;11/11	CALL	EXIDSH
;;;11/11TOD5010
;;;11/11	RET
;=============================================
TOD6000
	CALL	LDTIM0
	JR	NZ,TOD6010
;
;;	CALL	E6CLER
	CALL	STATINC
;
	LD	A,(BGMNO)
	LD	(SOUND4),A	;(S)
;
;;	XOR	A
;;	LD	(ITEMNOT),A
;
	LD	A,$FF
	CALL	ENPTST
;
	LD	A,$E2
	CALL	MSGCH2	;�Q�N���̂����q�ˁI
;
	LD	A,$03
	CALL	MAMKSS
;
	LD	A,$03
	LD	(PLCMKI),A
;
	PUSH	BC
	CALL	PLPTSTL
	POP	BC
	RET
TOD6010
	LD	A,$05
	JP  	ENPTST
;=============================================
TOD7000
;;	CALL	LDTIM0
;;	JR	NZ,TOD7010
;;;
	LD	A,USAGI
	CALL	ENIDSHL
;
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),$F8
;
	LD	HL,ENTIM0
	ADD	HL,DE
	LD	(HL),$20
;
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),$48
;
;	LD	HL,ENWRK0
;	ADD	HL,DE
;	LD	(HL),$04
;
	CALL	E6CLER
;
		jp	E6SVST
;;;11/11	CALL	E6SVST
;;;11/11TOD7010
;;;11/11	RET
;=============================================
TOD8000
	RET
;=============================================
;=============================================
TODDCD
;0
	DB	$00,$00,$60,$01
	DB	$00,$08,$62,$01
	DB	$00,$10,$64,$01
	DB	$00,$18,$66,$01
	DB	$10,$00,$68,$01
	DB	$10,$08,$6A,$01
	DB	$10,$10,$6C,$01
	DB	$10,$18,$6E,$01
;1
	DB	$00,$00,$60,$01
	DB	$00,$08,$70,$01
	DB	$00,$10,$64,$01
	DB	$00,$18,$66,$01
	DB	$10,$00,$68,$01
	DB	$10,$08,$6A,$01
	DB	$10,$10,$6C,$01
	DB	$10,$18,$6E,$01
;2
	DB	$00,$00,$72,$01
	DB	$00,$08,$74,$01
	DB	$00,$10,$64,$01
	DB	$00,$18,$66,$01
	DB	$10,$00,$76,$01
	DB	$10,$08,$6A,$01
	DB	$10,$10,$6C,$01
	DB	$10,$18,$6E,$01
;3
	DB	$00,$00,$78,$01
	DB	$00,$08,$7A,$01
	DB	$00,$10,$7C,$01
	DB	$00,$18,$7E,$01
	DB	$10,$00,$78,$41
	DB	$10,$08,$7A,$41
	DB	$10,$10,$7C,$41
	DB	$10,$18,$7E,$41
;4
	DB	$00,$00,$68,$41
	DB	$00,$08,$6A,$41
	DB	$00,$10,$6C,$41
	DB	$00,$18,$6E,$41
	DB	$10,$00,$60,$41
	DB	$10,$08,$62,$41
	DB	$10,$10,$64,$41
	DB	$10,$18,$66,$41
;5
	DB	$0E,$00,$68,$41
	DB	$0E,$08,$6A,$41
	DB	$0E,$10,$6C,$41
	DB	$0E,$18,$6E,$41
;
	DB	$10,$00,$FF,$41
	DB	$10,$08,$FF,$41
	DB	$10,$10,$FF,$41
	DB	$10,$18,$FF,$41
TODSWCD	;�e�I
	DB	$17,$03,$26,$00
	DB	$17,$09,$26,$00
	DB	$17,$0F,$26,$00
	DB	$17,$15,$26,$00
;- - - - - - - - - - - - - - - - -
TODDCS
	LD	A,(ENCHPT2)
	RLA
	RLA
	RLA
	RLA
	RLA
	AND	%11100000
	LD	E,A
	LD	D,B
	LD	HL,TODDCD
	ADD	HL,DE
	LD	C,$08
	CALL 	ENOMST
;
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	RET	Z
;
	LD	A,(ENSVYL)
	LD	(ENDSYP),A
;
	LD	HL,TODSWCD
	LD	C,$04
	CALL	ENOMST
;
	LD	A,$04
	CALL	NXOMSBL
;
		jp	ENPSSV
;;;11/11	CALL	ENPSSV
;;;11/11	RET
;==========================================
TODDMV2
	CALL	TODDCS2
;
	LD	A,(SCRLFG)
	AND	A
	RET	NZ
;
	LD	A,(ENSTAT2)
	RST	00
	DW	TD20000
	DW	TD21000
	DW	TD22000
	DW	TD23000
;================================
TD20000
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	(HL),$68
;
	LD	HL,ENXPSL
	ADD	HL,BC
	LD	(HL),$80
;
	CALL	LDTIM0
	LD	(HL),$20
;
	JP	STATINC
;================================
TD21000
	CALL	LDTIM0
		ret	NZ
;;;11/11	JR	NZ,TD21090
;
;	LD	A,(PLXPSL)
;	SUB	$80
;	ADD	A,$06
;	CP	$0C
;	JR	NC,TD21090
;;
;	LD	A,(PLYPSL)
;	CP	$40
;	JR	C,TD21090
;
	LD	A,(FUESLPT)
	CP	$00
		ret	NZ
;;;11/11	JR	NZ,TD21090
;
	LD	A,(OKARFG)
	AND	A
	CP	$40
		ret	NZ		;�}�����̉́H
;;;11/11	JR	NZ,TD21090	;�}�����̉́H
;				;YES !
	CALL	STATINC
;
	CALL	LDTIM0
	LD	(HL),$20
;
		jp	TDWPST
;;;11/11	CALL	TDWPST
;;;11/11TD21090
;;;11/11	RET
;================================
TD22000
	CALL	LDTIM0
	JR	NZ,TD22010
;
	LD	(HL),$C8
;
	JP	STATINC
TD22010
	CP	$10
	LD	A,$01
	JR	C,TD22020
	INC	A
TD22020
		jp	ENPTST
;;;11/11	CALL	ENPTST
;;;11/11;
;;;11/11;;	LD	A,$02
;;;11/11;;	LD	(PLSTOP),A
;;;11/11	RET
;================================
TD23000
	CALL	LDTIM0
	JR	NZ,TD23010
;
	CALL	TDWPST
	JP	E6CLER
TD23010
	CP	$B0
	JR	NZ,TD23018
;
;;	LD	A,$03
;;	CALL	MAMKSS	;�}�����������I
;;
;	LD	A,$03
;	LD	(PLCMKI),A
;;
;	CALL	PLPTSTL
TD23018
	CALL	LDTIM0
	CP	$80
	JR	NZ,TD2301C
;
	DEC	(HL)
;
	LD	A,$E6
	CALL	MSGCH2
TD2301C
	CALL	LDTIM0
	LD	D,$00
	CP	$10
	LD	E,$02
	JR	C,TD23020
	DEC	E
	CP	$20
	JR	C,TD23020
;
	INC	D	;�p�^�[���㉺�I
TD23020
	LD	HL,ENWRK4
	ADD	HL,BC
	LD	(HL),D
;
	LD	A,E
		jp	ENPTST
;;;11/11	CALL	ENPTST
;;;11/11;
;;;11/11	RET
;- - - - - - - - - - - - - - - - -
TODDCD2
;0
	DB	$FF,$04,$FF,$00
	DB	$FF,$0C,$FF,$00
	DB	$FF,$04,$FF,$00
	DB	$FF,$0C,$FF,$00
	DB	$FF,$14,$FF,$00
;1
	DB	$FC,$04,$70,$01
	DB	$FC,$0C,$72,$01
	DB	$0C,$04,$74,$01
	DB	$0C,$0C,$76,$01
	DB	$0C,$14,$78,$01
;2
	DB	$0C,$04,$7A,$01
	DB	$0C,$0C,$7C,$01
	DB	$0C,$14,$7E,$01
;
	DB	$FF,$FF,$FF,$FF
	DB	$FF,$FF,$FF,$FF
;- - - - - - - - - - - - - - -
TOD2YAD
	DB	0,0,1,2,3,3,2,1
;
TODDCS2
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	RRA
	NOP
	NOP
	AND	$07
	LD	E,A
	LD	D,B
	LD	HL,TOD2YAD
	ADD	HL,DE
	LD	A,(ENDSYP)
	ADD	A,(HL)
	LD	(ENDSYP),A
;
	LD	HL,ENWRK4
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,TD2C90
;
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	RRA
	RRA
	RRA
	AND	$01
	INC	A
	LD	(ENCHPT2),A
TD2C90
	LD	A,(ENCHPT2)
	RLA
	RLA
;
	AND	%11111100
	LD	E,A
	RLA
	RLA
	AND	%11110000
	ADD	A,E
	LD	E,A
	LD	D,B
	LD	HL,TODDCD2
	ADD	HL,DE
	LD	C,$05
	JP   	ENOMST
;========================================
MAMKST	;�I�v�V�����}�����𖳗���E�Ɍ������I
	LD	A,$00
MAMKSS	;�I�v�V�����}�����𖳗�� A �Ɍ������I
	LD	E,$10
;
	LD	HL,MAMBUF
MMKS10
	LD	(HLI),A
	DEC	E
	JR	NZ,MMKS10
;
	RET
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�}���� �I�v�V����					%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
MARINCD
	DB	$42,$21,$40,$21	;	�O
	DB	$40,$01,$42,$01
;
	DB	$44,$01,$46,$01
	DB	$46,$21,$44,$21	;	��
;
	DB	$48,$01,$4A,$01
	DB	$4C,$01,$4E,$01	;	��
;
	DB	$4A,$21,$48,$21
	DB	$4E,$21,$4C,$21 ;	�E
;- - - �����p- - -
	DB	$50,$01,$52,$01	;8
	DB	$54,$01,$54,$21	;9
	DB	$52,$21,$50,$21	;A
MAMVPT
	DB	$06,$04,$02,$00
;
MARINMV
	LD	A,C
	LD	(MAINDX),A
;
	CALL	LDTIM0
	JR	Z,MAR0008
;
	CP	$10
	JR	NZ,MR080
;
	DEC	(HL)
;
	LD	A,(PLYPSL)
	PUSH	AF
;
	LD	A,$28
	LD	(PLYPSL),A	;����������Ƀ��b�Z�[�W�I
;
	LD	A,$1F
	CALL	MSGCHK
;
	POP	AF
	LD	(PLYPSL),A
;
	LD	A,$0F
MR080
	CP	$01
	JR	NZ,MR100
;
	XOR	A
	LD	(ITEMNOT),A
;
	LD	A,$31
	LD	(SOUND4),A	;(S)
	LD	A,$05
	LD	(BGMNO),A
MR100
	XOR	A
	LD	(ENCHPT),A
;
	LD	DE,MARINCD
	CALL	EN2CST
;
	LD	A,$6C  ;
	LD	(PLCHPT),A
;
	LD	A,$02
	LD	(PLSTOP),A
;
	LD	A,$03
	LD	(PLCMKI),A
;
	LD	A,(PLXPSL)
	LD	HL,ENXPSL
	ADD	HL,BC
	LD	(HL),A
	LD	A,(PLYPSL)
	SUB	$10
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	(HL),A
;
	RET
;
MAR0008
;;	LD	A,(ENSTAT2)
	LD	HL,ENWRK3
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	NZ,MAR1000
;
	LD	A,(SBHR)
	CP	$04
	JR	NZ,MAR0010
;
	INC	(HL)
;
	CALL	LDTIM0
	LD	(HL),$70
;
	LD	A,$10	;�����Ȃ��I
;;	LD	A,$4F
	LD	(SOUND4),A	;(S)
;
	LD	A,$FF
	LD	(TODYFG),A
;
	LD	A,(PLXPSL)
	LD	HL,MAXBUF
	CALL	MRTRSB
;
	LD	A,(PLYPSL)
	LD	HL,MAYBUF
	CALL	MRTRSB
;
	XOR	A
	LD	HL,MAZBUF
	CALL	MRTRSB
;
	LD	A,(PLCMKI)
	LD	HL,MAMBUF
MRTRSB
	LD	E,$10
MAR0004
	LD	(HLI),A
	DEC	E
	JR	NZ,MAR0004
MAR0010
	RET
;============================================
MAUTAPT
	DB	8,8,8,9,$A,$A,$A,9
OPSTXD6
	DB	$08,$F8
OPSTXS6
	DB	$06,$01
;
MAR1000
	LD	A,(UTAFLG)
	AND	A
	JR	Z,MAR1001
;
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	RRA
	AND	$07
	LD	E,A
	LD	D,B
	LD	HL,MAUTAPT
	ADD	HL,DE
	LD	A,(HL)
	LD	(ENCHPT2),A
;
	LD	A,(FRCNT)
	AND	$1F
	JR	NZ,MAR1001
;
	LD	A,ONPU
	CALL	ENIDSHL
	JR	C,MAR1001
;
	LD	A,(WORK1)
	LD	HL,ENYPSL
	ADD	HL,DE
	SUB	$08
	LD	(HL),A
;
	PUSH	BC
;
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	RRA
	RRA
	AND	$01
	LD	C,A
;;	LD	B,D
	LD	HL,OPSTXD6
	ADD	HL,BC
	LD	A,(WORK0)
	ADD	A,(HL)
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A
	LD	HL,OPSTXS6
	ADD	HL,BC
	LD 	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,ENYSPD
	ADD	HL,DE
	LD	(HL),$FC
;
	LD	HL,ENCONT
	ADD	HL,DE
	LD	(HL),$40
;
	POP	BC	
;
MAR1001
	LD	DE,MARINCD
	CALL	EN2CST
;
	LD	A,(WNDFLG)
	AND	A
	RET	NZ
;
	LD	HL,ENTIM4
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,MFUU10
;
	DEC	A
	JR	NZ,MFUU10
;
	DEC	(HL)
;
	LD	A,$7A
	CALL	MSGCH3
MFUU10
	LD	HL,ENTIM2
	ADD	HL,BC
;
		LD	A,(SBHR)	;�t�F�[�h���́A
		CP	$004		;�^�C�}�[���J�E���g�_�E��
		JR	Z,MFUU10_050	;���Ȃ��悤�ɂ�������
		LD	A,(HL)		;�����ł���悤�ɂ����B
		AND	A		;
		JR	Z,MFUU10_050	;
		DEC	(HL)		;
MFUU10_050
;
	LD	A,(HL)
	AND	A
	JR	Z,MAG1090
;
	CP	$50-$20
	JR	NZ,MAG1050 ;SSSS12
;
	XOR	A
	LD	(ITEMNOT),A
;
	LD	A,(PLXPSL)
	SUB	$58
	ADD	A,$03
	CP	$06
	JR	NC,MAG1020
;
	LD	A,(PLYPSL)
	SUB	$50
	ADD	A,$03
	CP	$06
	JR	C,MAG1030
MAG1020
	LD	(HL),B
;
	LD	HL,ENTIM4
	ADD	HL,BC
	LD	(HL),$1C
	RET
MAG1030
	LD	HL,SOUND1	;(S)
	LD	(HL),$0B
	LD	HL,SOUND2	;(S)
	LD	(HL),$03
;
	LD	HL,TILTCT
	LD	(HL),$18
	LD	HL,TILTMK
	LD	(HL),$04
;
	LD	HL,PLXPSL
	INC	(HL)
	JR	MAG1080 ;WWW1
MAG1050 ;SSSS12
	JR	NC,MAG1090
;
	CP	$30-$20
	JR	NZ,MAG1080 ;WWW1
;
	DEC	(HL)
;
	LD	A,$7B
	CALL	MSGCH3
MAG1080 ;WWW1
	LD	A,$02
	LD	(PLSTOP),A
;
	LD	A,$6A
	LD	(PLCHPT),A
	RET
;----------------------------------------------
MAG1090
	LD	A,(MARINOF)
	LD	HL,DJCLTM
	OR	(HL)
;;	AND	A
	RET	NZ
;
	LD	A,(MAWAIT)
	AND	A
	JP	Z,MAG10A0
;
	CALL	ENBGCKL
;
	LD	A,$02
	LD	(PLSTOP),A
	LD	(ITEMNOT),A
;
	CALL	E6STCK
;
	LD	A,(MAWTIM)
	AND	A
	JR	Z,MAW000
;
	DEC	A
	LD	(MAWTIM),A
MAW000
	LD	A,(ENSTAT2)
	RST	00
	DW	MAW0000
	DW	MAW1000
	DW	MAW2000
	DW	MAW2800
	DW	MAW3000
;---------------------------------------
MAW0000
	LD	A,(PLMODE)
	CP	PINDR1
	RET	Z
;
	LD	A,$40
	LD	(MAWTIM),A
;
	LD	A,$0F
	LD	(CHTRF2),A	;����}�����I
;
	LD	A,$01
	CALL	ENPTST
	JP	STATINC
;---------------------------------------
MAW1000
	LD	A,(MAWTIM)
	AND	A
		ret	NZ
;;;11/11	JR	NZ,MAW1010
;
	LD	A,$18
	LD	(MAWTIM),A
;
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	(HL),$01
;
	LD	A,$04
	CALL	ENPTST
;
	LD	A,$10
	LD	(CHTRF2),A	;�����I
;
		jp	STATINC
;;;11/11	CALL	STATINC
;;;11/11MAW1010
;;;11/11	RET
;---------------------------------------
MAW2000
	LD	A,(MAWTIM)
	AND	A
		ret	NZ
;;;11/11	JR	NZ,MAW2010
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),$F4
;
	CALL	E6XCLC
;
	LD	A,(FRCNT)
	AND	$08
	LD	E,$4
	JR	Z,MAW2008
;
	INC	E
MAW2008
	LD	A,E
	CALL	ENPTST
;
	CALL	E6XCHK
	ADD	A,$02
	CP	$04
	RET	NC
;
	LD	HL,ENCHPT
	ADD	HL,BC
	LD	(HL),$02
;
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	(HL),$02
;
	LD	A,$10
	LD	(MAWTIM),A
;
;	LD	A,$00
;;	CALL	MSGCHK
;;
		jp	STATINC
;;;11/11	CALL	STATINC
;;;11/11MAW2010
;;;11/11	RET
;---------------------------------------
MAW2800
	LD	A,(MAWTIM)
	AND	A
		ret	NZ
;;;11/11	JR	NZ,MAW2810
;
	LD	A,(MAWAIT)
	DEC	A
	LD	E,A
	LD	A,(PINCHFG)
	CP	E
	JR	Z,MAW2802	;�ω��H
;
	AND	A
	JR	Z,MAW2802	;�s���`�H
;
	LD	E,$1C
	CALL	RNDSUB
	AND	$3F
	JR	NZ,MAW2803
;
	LD	E,$1E
	JR	MAW2803
;--------------------------------------
MAW2802
	LD	E,$1B
	LD	A,(MAWTIM2)
	CP	$80
	JR	NC,MAW2803
;
	LD	E,$1D
MAW2803
	LD	A,E
	CALL	MSGCH3
;
		jp	STATINC
;;;11/11	CALL	STATINC
;;;11/11MAW2810
;;;11/11	RET
;---------------------------------------
MAW3000
	XOR	A
	LD	(MAWAIT),A
	LD	(ITEMNOT),A
;
	CALL	STATINC
	LD	(HL),B
;
	LD	HL,ENCONT
	ADD	HL,BC
	LD	(HL),$FF
;
	LD	A,(ENSVXL)
	LD	HL,MAXBUF
	CALL	MRTRSB6
;
	LD	HL,MAYBUF
	LD	A,(ENDSYP)
	LD	E,$10
MAW3010
	LD	(HLI),A
	DEC	A
	DEC	E
	JR	NZ,MAW3010
;
	LD	A,$02
	LD	HL,MAMBUF
;;	CALL	MRTRSB6
MRTRSB6
	LD	E,$10
MAR00046
	LD	(HLI),A
	DEC	E
	JR	NZ,MAR00046
	RET
;---------------------------------------
;---------------------------------------
;---------------------------------------
;=====================================================
MAG10A0
	LD	A,(SBHR)
	CP	$04
	RET	NZ
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
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	E,(HL)
	LD	D,B 
	LD	HL,MAMVPT
	ADD	HL,DE
;
	PUSH	HL
;;	LD	HL,ENCONT
;;	ADD	HL,BC
;;	LD	A,(HL)  ;(FRCNT)
	LD	A,(PLWKCT)
	RRA	
	RRA	
	RRA	
	POP	HL
	AND	%00000001
	OR	(HL)
	CALL	ENPTST
;
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	LD	(ENHELP),A
	AND	$0F
	LD	E,A
	LD	D,B
	LD	HL,MAXBUF
	ADD	HL,DE
;
;;	LD	A,(PLCMKI)
;;	CP	$02
	LD	A,(PLSVXL)
;;	JR	NZ,MABFS10	;������H
;;	DEC	A		;�D��ύX�I
;;MABFS10
	LD	(HL),A
	LD	A,(PLSVYL)
	LD	HL,PLDSYD
	ADD	A,(HL)
	LD	HL,MAYBUF
	ADD	HL,DE
	LD	(HL),A
	LD	HL,MAMBUF
	ADD	HL,DE
	LD	A,(PLCMKI)
	LD	(HL),A
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	LD	(ENHELP2),A
	AND	$0F
	LD	E,A
	LD	D,B
	LD	HL,MAZBUF
	ADD	HL,DE
	LD	A,(PLZPSL)
	LD	(HL),A
;
;;	LD	A,(KEYA1)
;;	AND	$0F
;;	JR	Z,MAR090
;
	LD	A,(PLMODE)
	CP	PTOBI
	JR	Z,MAR020
;
	LD	A,(SCRLFG)
	AND	A
	JR	NZ,MAR020
;
	LD	A,(MSGEFG)
	AND	A
	JR	NZ,MAR090
;
	LD	HL,PLXSPD
	LD	A,(PLYSPD)
	OR	(HL)
	JR	Z,MAR090
MAR020
	LD	HL,ENCONT
	ADD	HL,BC
	INC	(HL)
;
MAR090
	LD	HL,ENWRK0
	ADD	HL,BC
	INC	(HL)	; Z �v�Z�p�I
;
	LD	A,(ENHELP)
	INC	A
	AND	$0F
	LD	E,A
	LD	D,B
;
	LD	HL,MAXBUF
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENXPSL
	ADD	HL,BC
	LD	(HL),A
;
	LD	HL,MAYBUF
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	(HL),A
	LD	HL,MAMBUF
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	(HL),A
;
	LD	A,(ENHELP2)
	INC	A
	AND	$0F
	LD	E,A
	LD	D,B
;
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	PUSH	AF
;
	LD	HL,MAZBUF
	ADD	HL,DE
	LD	E,(HL)
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	(HL),E
;
	CALL	LDTIM1
	LD	HL,SCRLFG
	OR	(HL)
	JR	NZ,MAR04E
;
	POP	AF
	CP	E ;(HL)
	JR	Z,MAR04C	;ZPOS�ω�?
;				;yes !
	AND	A
	JR	Z,MAR04A
;
	LD	A,E ;(HL)
	AND	A
	JR	NZ,MAR04C
;
	CALL	ENBGCKL
;
	LD	HL,ENMODE
	ADD	HL,BC
	LD	A,(HL)
	CP	EFOLE
	RET	Z
;
	LD	HL,ENWATR
	ADD	HL,BC
	LD	A,(HL)
	DEC	A
	CP	$02
	JR	C,SSSSMA
;
	LD	A,$07	;���n�I
	LD	(SOUND3),A	;(S)
	RET
;
SSSSMA
	LD	A,(ENDSYP)
	LD	(WORK1),A
	LD	A,(ENSVXL)
	LD	(WORK0),A
;
	LD	A,$0E
	LD	(SOUND1),A	;(S)
;
	LD	A,WTUP2
	JP  	EXIDSH
;;	JR	MAR04C
MAR04A
	LD	A,E ;(HL)
	CP	$08
	LD	A,$08	;��э~��I
	JR	NC,MAR04B
;
	LD	A,$24	;�W�����v�I
MAR04B
	LD	(SOUND1),A	;(S)
MAR04C
;	LD	A,(SCRLFG)
;	AND	A
;	RET	NZ
;
	JP  	ENBGCKL
MAR04E
	POP	AF
	RET
;###############################################
;#	���b�Z�[�W�e�X�g�I		       #
;###############################################
;===========================================
M2ADDD
	DB	$00,$01,$FF
M2ADD2
	DB	$00,$10,$F0
MSTES6MV
TANABEMV
	CALL	E6STCK
;
	LD	A,$01
	LD	(CHTRFG),A
	INC	A
	LD	(PLSTOP),A
	LD	(ITEMNOT),A
;
	LD	A,(KEYA2)
	AND	$03
	LD	E,A
	LD	D,B
	LD	HL,M2ADDD
	ADD	HL,DE
	LD	A,(MSTNO)
	PUSH	AF
	ADD	A,(HL)
	AND	$0F
	LD	E,A
	POP	AF
	AND	$F0
	OR	E
	LD	(MSTNO),A
;
	LD	A,(KEYA2)
	RRA
	RRA
	AND	$03
	LD	E,A
	LD	D,B
	LD	HL,M2ADD2
	ADD	HL,DE
	LD	A,(MSTNO)
	ADD	A,(HL)
	LD	(MSTNO),A
;
;;	CALL	ENMSCK
;;	JR	NC,M20010
;
	LD	A,(MSGEFG)
	AND	A
	JR	NZ,M20010
;
	LD	A,(KEYA2)
	AND	%00010000
	JR	Z,M2000X
;
	LD	A,(MSTNO)
	JP	MSGCHK
M2000X
	LD	A,(KEYA2)
	AND	%00100000
	JR	Z,M20010
;
	LD	A,(MSTNO)
	JP	MSGCH2
M20010
	LD	A,(KEYA2)
	AND	%01000000
	JR	Z,M2001X
;
	LD	A,(MSTNO)
	JP	MSGCH3
M2001X
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%						       %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
PSCRLMV
	CALL	E6STCK
;
;;	LD	HL,SCRLFG
	LD	A,(FRCNT)
	AND	$03
;;;	OR	(HL)
	JR	NZ,ZKM0010
;
	LD	HL,SCXAD
	INC	(HL)
ZKM0010
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%						       %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
HINTOCD
	DB	$5E,$01,$5E,$21
KABE1CD
	DB	$00,$F8,$50,$06
	DB	$00,$00,$52,$06
	DB	$00,$08,$54,$06
	DB	$00,$10,$56,$06
KABE1CD_bright
	DB	$00,$F8,$50,$03
	DB	$00,$00,$52,$03
	DB	$00,$08,$54,$03
	DB	$00,$10,$56,$03
;===========================================
KABE1MV
	LD	HL,KABE1CD

		LD	A,(FADECT)
		AND	A		; ���邢�H
		JR	NZ,KABE1MV_100	; �m�n

		LD	HL,KABE1CD_bright
KABE1MV_100
;
	LD	C,$04
	CALL	ENOMST
	LD	A,$02
	CALL	NXOMSBL
;
	LD	A,(ENSTAT2)
	RST	00	
	DW	KB10000
	DW	KB110000
	DW	KB12000
;----------------------------------------
KB10000
	LD	HL,ENXPSL
	ADD	HL,BC
	LD	(HL),$50
	JP	STATINC
;----------------------------------------
KB110000
	CALL	E6STCK
;
	CALL	LDTIM0
	RET	NZ
;
	CALL	E6MSCK
	RET	NC
;
	LD	A,(BGPFG)
	CP	$E4
	JR	NZ,KB10E0	;���邢�H
;				;YES !
	JP  	STATINC
KB10E0
	LD	A,$E6
		jp	MSGCHK
;;;11/11	CALL	MSGCHK
;;;11/11	RET
;----------------------------------------
KB12000
	CALL	E6STCK
;
	LD	A,(MSGEFG)
	AND	A
	JR	NZ,KB12020
;
	LD	A,KABE1
	CALL	GMMNXS	;GMMODE SET
;
	CALL	LDTIM0
	LD	(HL),$20
;
	CALL	STATINC
	LD	(HL),B
;
	LD	HL,GRRMSV+$0AC
	SET	4,(HL)	;�ӂ��낤�Z�b�g
KB12020
	RET
;
;===============================================================
;	�_���W�������̃q���g�Δ�
;===============================================================
HINTOMV
	LD	A,(DNJNNO)
	CP	$16		; �k�U�_�a��H
	JP	Z,KABE1MV	; �x�d�r
;
		LD	HL,ENDSYP
		INC	(HL)
;;;12/03	LD	A,(ENDSYP)
;;;12/03	ADD	A,$01
;;;12/03	LD	(ENDSYP),A
;
	LD	DE,HINTOCD
	CALL	EN2CST
;
	CALL	E6STCK
;
	CALL	M6CROS
;
;;;12/03	CALL	E6STCK
;
	CALL	E6MSCK
		ret	NC
;
		LD	A,(PENDF)
		AND	A		;�y���_���g�����Ă���H
		LD	A,$10
		JR	NZ,NST000	;	YES --> NST000
		jp	MSGCH2
;;;;;;;;		CALL	MSGCH2
;;;;;;;;		RET
;
NST000
		LD	A,(DNJNNO)
		CP	NEWDJ		;���̃_���W�����H
		JR	NZ,NST200	;	NO --> NST200
		LD	A,$63
		jp	MSGCH3
;;;;;;;;		CALL	MSGCH3
;;;;;;;;		RET
NST200
		LD	A,:HINTOMV
		CALL	HINTO_READ_SUB
		LD	A,(WORK0)
		jp	MSGCH3
;;;;;;;;		CALL	MSGCH3
;;;;;;;;		RET
;;;KK;;;;
;;;KK;;;	LD	A,(PENDF)
;;;KK;;;	AND	A
;;;KK;;;	LD	A,$10
;;;KK;;;	JR	Z,NST000	;�y���_���g�����Ă���H
;;;KK;;;;				; yes !
;;;KK;;;		LD	A,(DNJNNO)
;;;KK;;;		CP	NEWDJ		;���̃_���W�����H
;;;KK;;;		JR	NZ,HINTO_500	;	NO --> HINTO_500
;;;KK;;;		LD	A,$63
;;;KK;;;		CALL	MSGCH3
;;;KK;;;		JR	NST0E0
;;;KK;;;HINTO_500
;;;KK;;;;
;;;KK;;;	ADD	A,$08
;;;KK;;;NST000
;;;KK;;;	CALL	MSGCH2
;;;KK;;;NST0E0
;;;KK;;;	RET
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�C�݃}�����I							%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
GIRL1CD
	DB	$60,$01,$62,$01
	DB	$62,$21,$60,$21	;	�O
;
	DB	$64,$01,$66,$01
	DB	$66,$21,$64,$21	;	��
;
	DB	$68,$01,$6A,$01
	DB	$6C,$01,$6E,$01	;	��
;
	DB	$6A,$21,$68,$21
	DB	$6E,$21,$6C,$21 ;	�E
;- - - - - - - - - - - - - - - - - - - - - - -
GIRL2MV	;��܂̋��̏�
	LD	A,(WARPSV+$06)
	AND	%00000010
	JP	Z,E6CLER
;
	LD	A,(NIWATFG)
	AND	A
	JP	NZ,E6CLER
;
	LD	A,(DJSVBF)
	AND	%00010000
	JP	NZ,E6CLER
;
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JP	NZ,GTARIN	;�^�����I
;
	LD	A,C
	LD	(MAINDX),A
;
	LD	DE,GIRL1CD
	CALL	EN2CST
;
	CALL	M6PTST
;
	CALL	E6ZCLC
	LD	HL,ENZSPD
	ADD	HL,BC
	DEC	(HL)
	DEC	(HL)
;
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	LD	(ENHELP),A
	JR	Z,GHM00F0
	AND	%10000000
	JR	Z,GHM00FE
;
GHM00F0
	LD	(HL),B
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),B
GHM00FE
	LD	A,(ENSTAT2)
	RST	00
	DW	GHM1000
	DW	GHM2000
	DW	GHM3000
	DW	GHM4000
	DW	GHM5000
	DW	GHM6000
	DW	GHM6800
	DW	GHM7000
	DW	GHM8000
	DW	GHM9000
	DW	GHMA000
	DW	GHMB000
	DW	GHMC000
;--------------------------------
GHCTCL
	LD	HL,ENCONT
	ADD	HL,BC
	LD	(HL),B
	RET
;--------------------------------
GHM1000
	CALL	GHJUMP
;
	CALL	E6STCK
;
	CALL	E6XCHK
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	(HL),E
;
	LD	A,(PLXPSL)
	CP	$90
		ret	NC
;;;11/11	JR	NC,GHM1010
;
	LD	A,$35
	CALL	MSGCH3	;�������ā[
;
		jp	STATINC
;;;11/11	CALL	STATINC
;;;11/11GHM1010
;;;11/11	RET
;------------------------------------
GHJUMP
	LD	A,(ENHELP)
	AND	A
	JR	Z,GHM1090
	AND	%10000000
	RET	Z
;
GHM1090
	LD	A,(FRCNT)
	AND	$3F
	JR	NZ,GHM0000
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),$10
GHM0000
	RET
;--------------------------------
GHM2000
	CALL	GHJUMP
;
	CALL	E6STCK
;
	LD	A,$36
	CALL	MSGCH3
	JP	STATINC
;--------------------------------
GHM3000
	CALL	GHJUMP
;
	CALL	E6STCK
;
	CALL	E6XCHK
	ADD	A,$08
	CP	$10
	RET	NC
;
	CALL	E6YCHK
	ADD	A,$10
	CP	$20
	RET	NC
;
		jp	STATINC
;;;11/11	CALL	STATINC
;;;11/11	RET
;--------------------------------
GHM4000
	CALL	GHCTCL
;
	CALL	E6STCK
;
	CALL	E6XCHK
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	(HL),E
;
	LD	A,(PFUCKFG)
	AND	A
	JR	Z,GHM4050
;
	LD	A,(PLXPSL)
	LD	HL,ENXPSL
	ADD	HL,BC
	ADD	A,$10
	LD	(HL),A
;
	LD	A,(PLYPSL)
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	(HL),A
;
	RET
GHM4050
	XOR	A
	LD	(POWDRTM),A
;
	CALL	LDTIM0
	LD	(HL),$10
	JP	STATINC
;--------------------------------
GHM5000
	CALL	GHCTCL
;
	CALL	E6STCK
;
	LD	A,$02
	LD	(PLSTOP),A
	LD	(ITEMNOT),A
;
	LD	A,$00
	LD	(PLCMKI),A
;
	PUSH	BC
	CALL	PLPTSTL
	POP	BC
;
	CALL	LDTIM0
		ret	NZ
;;;11/11	JR	NZ,GHM5020
;
	LD	A,$37
	CALL	MSGCH3
;
		jp	STATINC
;;;11/11	CALL	STATINC
;;;11/11GHM5020
;;;11/11	RET
;--------------------------------
GHM6000
	CALL	GHCTCL
;
	CALL	E6STCK
;
	LD	A,$02
	LD	(PLSTOP),A
;
	LD	A,$38
	CALL	MSGCH3
;
	JP	STATINC
;--------------------------------
GHM6800
	CALL	GHCTCL
;
	LD	A,$02
	LD	(PLSTOP),A
;
	CALL	E6STCK
;
	LD	A,$39
	CALL	MSGCH3
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	(HL),B
;
	JP	STATINC
;
;--------------------------------
GHM7000
	CALL	GHCTCL
;
	LD	A,$02
	LD	(PLSTOP),A
;
	CALL	E6STCK
;
	LD	HL,ENWRK0
	ADD	HL,BC
	INC	(HL)
	LD	A,(HL)
	CP	$A0
		ret	NZ
;;;11/11	JR	NZ,GHM7030
;
	JP	STATINC
;;;11/11GHM7030
;;;11/11	RET
;--------------------------------
GHM8000
	CALL	GHCTCL
;
	LD	A,$02
	LD	(PLSTOP),A
;
	CALL	E6STCK
;
	LD	A,GIRL2
	CALL	ENIDSHL	;�^�����Z�b�g�I
;
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),$12
;
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),$88	
;
	LD	HL,ENWRK1
	ADD	HL,DE
	INC	(HL)
	JP	STATINC
;;	RET
;--------------------------------
GHM9000
	CALL	GHCTCL
;
	LD	A,$02
	LD	(PLSTOP),A
	RET
;--------------------------------
GHMA000
	LD	A,$02
	LD	(PLSTOP),A
;
	LD	A,(ENDSYP)
	CP	$3E
	JR	C,GHMA010
;
	JP	STATINC
GHMA010
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),$06
;
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	(HL),$03
	JP	E6YCLC
;--------------------------------
GHMB000
	LD	A,$02
	LD	(PLSTOP),A
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),$FA
;
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	(HL),$01
	CALL	E6XCLC
;
	LD	A,(ENSVXL)
	CP	$18
		ret	NC
;;;11/11	JR	NC,GHB008
;
	CALL	LDTIM0
	LD	(HL),$60
;
		jp	STATINC
;;;11/11	CALL	STATINC
;;;11/11GHB008
;;;11/11	RET
;---------------------------------
GHMC000
	LD	A,$02
	LD	(PLSTOP),A
;
	CALL	LDTIM0
	JR	Z,GHMC008
;
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	(HL),$02
	RET
GHMC008
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),$F4
;
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	(HL),$01
	CALL	E6XCLC
;
	LD	A,(ENSVXL)
	CP	$F0
	JR	NZ,GHMB010
;
	XOR	A
	LD	(ITEMNOT),A
;
	LD	(MARINOF),A	;���[���b�p�łŒǉ�
;
	LD	HL,GRRMSV+$08
	SET	4,(HL)
	LD	A,(HL)
	LD	(DJSVBF),A
;
;;	XOR	A
;;	LD	(MARINOF),A
;
	JP	E6CLER
GHMB010
	CALL	E6XCHK
	LD	A,E
	XOR	$01
	LD	(PLCMKI),A
;
	PUSH	BC
	CALL	PLPTSTL
	POP	BC
	RET
;=================================================
GTARINCD
	DB	$50,$02,$52,$02
	DB	$52,$22,$50,$22	;	�O
;
	DB	$54,$02,$56,$02
	DB	$56,$22,$54,$22	;	��
;
	DB	$58,$02,$5A,$02
	DB	$5C,$02,$5E,$02	;	��
;
	DB	$5A,$22,$58,$22
	DB	$5E,$22,$5C,$22 ;	�E
;- - - - - - - - - - - - - - - - -  -
GTARIN
	LD	DE,GTARINCD
	CALL	EN2CST
;
	CALL	M6PTST
;
	LD	A,(ENSTAT2)
	RST	00
	DW	GTR1000
	DW	GTR2000
	DW	GTR3000
	DW	GTR4000
;====================================
GTR1000
	LD	HL,ENMUKI	
	ADD	HL,BC
	LD	(HL),$02
;
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),$F4
;
	CALL	E6YCLC
;
	LD	A,(ENDSYP)
	CP	$70
		ret	NC
;;;11/11	JR	NC,GTR1010
;
	LD	A,$3B
	CALL	MSGCH3
;
	LD	A,$03
	LD	(PLCMKI),A
;
	LD	A,(MAINDX)
	LD	E,A
	LD	D,B
	LD	HL,ENMUKI
	ADD	HL,DE
	LD	(HL),$03
;
	PUSH	BC
	CALL	PLPTSTL
	POP	BC
;
		jp	STATINC
;;;11/11	CALL	STATINC
;;;11/11GTR1010
;;;11/11	RET
;====================================
GTR2000
	LD	A,(MAINDX)
	LD	E,A
	LD	D,B
	LD	HL,ENMUKI
	ADD	HL,DE
	LD	(HL),$03
;
	CALL	E6STCK
;
	LD	A,$3A
	CALL	MSGCH3
	JP	STATINC	
;====================================
GTR3000
	LD	A,(MAINDX)
	LD	E,A
	LD	D,B
	LD	HL,ENMUKI
	ADD	HL,DE
	LD	(HL),$03
;
	LD	A,(MJSTCT)
	CP	$22
	JR	C,GTR3010
;
	LD	(HL),$01
GTR3010
	CALL	E6STCK
;
	LD	A,(MAINDX)
	LD	E,A
	LD	D,B
	LD	HL,ENSTAT
	ADD	HL,DE
	INC	(HL)
;
	JP	STATINC
;====================================
GTR4000
	LD	HL,ENMUKI	
	ADD	HL,BC
	LD	(HL),$01
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),$F8
	CALL	E6XCLC
;
	LD	A,(ENSVXL)
	CP	$E0
		ret	NZ
;;;11/11	JR	NZ,GTR4020
;
		jp	E6CLER
;;;11/11	CALL	E6CLER
;;;11/11GTR4020
;;;11/11	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%				       %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
GIRL1MV
	LD	A,(MARINFG)
	AND	A
	JP	NZ,MARINMV
;
	LD	A,(MARINOF)
	AND	A
	RET	NZ
;
	LD	A,(GRRMSV+$FD)
	AND	%00100000
	JP	NZ,E6CLER 	;�Z�C�E�`�C�x���g��I
;
	LD	A,(MEGAF)
	CP	$07
	JP	C,E6CLER
;
	LD	DE,GIRL1CD
	CALL	EN2CST
;
	LD	A,(SCRLFG)
	AND	A
	RET	NZ	
;
	CALL	M6CROS
;
		ld	a,(GMMODE)
		cp	GPLAY
		ret	nz		; �Q�[�����[�h�@�H
;					; Yes !!
		ld	a,(SBHR)
		cp	004
		ret	nz		; �t�F�[�h���@�H
;					; No !!
	LD	A,(ENSTAT2)
	RST	00
	DW	G1M0000
	DW	G1M1000
	DW	G1M2000
	DW	G1M3000
	DW	G1M4000
	DW	G1M5000
	DW	G1MA000
;-----------------------------------
G1M0000
	LD	A,$4D
	LD	(SOUND4),A	;(S)
	LD	(BGMNO),A
	LD	(BGMNO2),A
;
		jp	STATINC
;;;11/11	CALL	STATINC
;;;11/11	RET
;-----------------------------------
G1M1000
	LD	A,(MSGEFG)
	AND	A
		ret	NZ
;;;11/11	JR	NZ,G1M1010
;
	CALL	E6YCHK
	ADD	A,$14
	CP	$28
		ret	NC
;;;11/11	JR	NC,G1M1010
;
	LD	A,$01
	LD	(ITEMNOT),A
;
	CALL	LDTIM0
	LD	(HL),$18
;
		jp	STATINC
;;;11/11	CALL	STATINC
;;;11/11G1M1010
;;;11/11	RET
;-----------------------------------
G1M2000
	LD	A,(MSGEFG)
	AND	A
		ret	NZ
;;;11/11	JR	NZ,G1M2030
;
	CALL	LDTIM0
	JR	NZ,G1M2010
;
	LD	A,$D5
	CALL	MSGCH2
;
	CALL	STATINC
G1M2010
	LD	E,$02
	CP	$0C
	JR	C,G1M2020
	LD	E,$04
G1M2020
	LD	A,E
		jp	ENPTST
;;;11/11	CALL	ENPTST
;;;11/11G1M2030
;;;11/11	RET
;-----------------------------------
G1M3000
	LD	A,(MSGEFG)
	AND	A
		ret	NZ
;;;11/11	JR	NZ,G1M3050
;
	CALL	STATINC
;
	LD	A,(MSANSR)
	AND	A
	JR	NZ,G1M3020
;
	LD	(HL),$06
;
	XOR	A		;YES !
	LD	(SBHR),A
	LD	(SBCNT),A
	LD	(POWRFG),A
;
	LD	(ITMODE),A
;
	LD	A,LOVED ;
	LD	(GMMODE),A
;
;;	LD	A,$30
;;	LD	(SDOUTFG),A	; BGM Fade OUT 
;;	CALL	SOUNDCLR	;(S)
	LD	A,$4E
	LD	(SOUND4),A	;(S)
	RET	
G1M3020
	XOR	A
	LD	(ITEMNOT),A
;;;	LD	(HL),B
;
	LD	A,$D6
		jp	MSGCH2
;;;11/11	CALL	MSGCH2
;;;11/11G1M3050
;;;11/11	RET
;-----------------------------------
G1M4000
	LD	A,(MSGEFG)
	AND	A
		ret	NZ
;;;11/11	JR	NZ,G1M4010
;
	CALL	LDTIM0
	LD	(HL),$60
;
		jp	STATINC
;;;11/11	CALL	STATINC
;;;11/11G1M4010
;;;11/11	RET
;-----------------------------------
G1M5000
	CALL	LDTIM0
	JR	NZ,G1M5010
;
	CALL	STATINC
G1M5010
	LD	E,$00
	CP	$54
	JR	C,G1M5020
	LD	E,$04
G1M5020
	LD	A,E
		jp	ENPTST
;;;11/11	CALL	ENPTST
;;;11/11	RET
;-----------------------------------
G1MA000
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�Ŕ閧			    %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
KHIMIDT
;; 		  1   2   3   4   5   6   7   8   9  10
	DB	$65,$64,$54,$52,$22,$22,$32,$37,$37,$37
;;		 11  12  13  14
	DB	$57,$56,$26,$21
KHIMIPT
	DB	$C4,$C5,$D5,$D4,$C4,$C5,$D5,$D5,$C5,$C4
	DB	$C4,$C5,$D5,$D4
KHIMIMD
	DB	$AB,$A9,$AC,$AA,$AB,$A9,$AB,$AA,$AC,$A9
	DB	$AB,$A9,$AC,$AE
;- - - - - - - - - - - - - - - - - - - - -
KHIMIMV
	CALL	E6STCK
;
	LD	A,(GRNDPT)
	CP	$B4
	JR	NZ,KHM010	;Initial room?
;				;yes !
	XOR	A
	LD	(KHIMICT),A
	LD	(KHIMIFG),A
KHM010
	LD	A,(KHIMIFG)
	AND	A
	JR	Z,KHM090	;�Ŕ������H
;				; YES !
	LD	A,(KHIMICT)
	LD	E,A
	LD	D,B
	LD	HL,KHIMIDT
	ADD	HL,DE
	LD	A,(KHIMIFG)
	CP	(HL)
	JR	NZ,KHM080
;
	LD	HL,KHIMIPT
	ADD	HL,DE
	LD	A,(GRNDPT)
	CP	(HL)
	JR	NZ,KHM080
;
	XOR	A
	LD	(KHIMIFG),A
;
	LD	A,(KHIMICT)
	INC	A
	LD	(KHIMICT),A
	CP	14
	JR	NZ,KHM050	;�Ō�܂ōs�����H
;				;YES!
	XOR	A
	LD	(KHIMICT),A
;
	LD	A,$02
	LD	(SOUND1),A	;(S)
;
	PUSH	DE
	CALL	SINDOST
	POP	DE
KHM050
	LD	HL,KHIMIMD
	ADD	HL,DE
	LD	A,(HL)
 	JP	MSGCH2
KHM080
	XOR	A
	LD	(KHIMICT),A
	LD	(KHIMIFG),A
;
	LD	A,$1D
	LD	(SOUND1),A	;(S)
;
	LD	A,$AD
	CALL	MSGCH2
KHM090
	RET
;=========================================
SINDOST
	LD	HL,BGUNDT+$11+$28
	LD	(HL),SINDO
;
;--------------------------------------------
;	�}���[�̓����
;--------------------------------------------
		LD	A,:SINDOST|UNIT_TRAN_BIT
		CALL	Unit_change	; �o���N�Q���j�b�g��������
;--------------------------------------------
;
	LD	A,$28
	LD	(DRPSBF),A
;
	LD	A,$20
	LD	(OBJYP),A
	ADD	A,$10
	LD	(WORK1),A
;
	LD	A,$80
	LD	(OBJXP),A
	ADD	A,$08
	LD	(WORK0),A
;
	LD	A,SMK1
	CALL	EXIDSH
;
	CALL	OBJBG
;
		LD	A,(CGBFLG)
		AND	A
		JR	Z,SINDOST_PASS
		PUSH	BC
		LD	A,SINDO
		LD	(UNTATR),A
		LD	A,:SINDOST	; �߂�o���N�l
		CALL	BG1UNIT_ATR_SUB
		POP	BC
SINDOST_PASS
;
	LD	HL,VRAMD+1
	LD	A,(VRAMD)
	LD	E,A
	ADD	A,10
	LD	(VRAMD),A
	LD	D,$00
;
	ADD	HL,DE
;
	LD	A,(VRAMH)
	LD	(HLI),A
	LD	A,(VRAML)
	LD	(HLI),A
	LD	A,$81
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
	LD	A,$81
	LD	(HLI),A
	LD	A,$69
	LD	(HLI),A
	LD	A,$4B
	LD	(HLI),A
	LD	(HL),$0
;
	LD	A,$01
	LD	(EXITFG),A
	LD	A,(OBJYP)
	AND	$F0
	ADD	A,$10
	LD	(EXITYP),A	
;
	LD	A,(OBJXP)
	AND	$F0
	ADD	A,$08
	LD	(EXITXP),A
;
	LD	A,(GRNDPT)
	LD	E,A
	LD	D,$00
	LD	HL,GRRMSV
	ADD	HL,DE
	SET	4,(HL)
	RET
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�]���r�N							%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ZBSTYP
	DB	$10,$20,$30,$40,$50,$60,$70,$80
ZBSTXP
	DB	$18,$28,$38,$48,$58,$68,$78,$88
;- - - - - - - - - - - - - - - - - - - - - - - - - -
ZONBIMV
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JP	NZ,ZONBIMV2
;--- �킫�o���R���g���[�� ---
	CALL	E6STCK
;
	CALL	LDTIM0
	JR	NZ,ZBS090
;
	CALL	RNDSUB
	AND	$07
	LD	E,A
	LD	D,B
	LD	HL,ZBSTXP
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENXPSL
	ADD	HL,BC
	LD	(HL),A
	LD	HL,ZBSTYP
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	(HL),A
;
	CALL	E6CTBC
	LD	A,(WORK3)
	CP	$00
	JR	Z,ZBS050
	CP	$06
	JR	Z,ZBS050
	CP	$09
		ret	NZ
;;;11/11	JR	Z,ZBS050
;;;11/11;
;;;11/11	RET
;;;11/11;	
ZBS050
	CALL	LDTIM0
;
	CALL	RNDSUB
	AND	$3F
	ADD	A,$40
	LD	(HL),A
;
	LD	A,ZONBI
	LD	E,$05
	CALL	ENIDSH2L
	JR	C,ZBS090
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
	LD	HL,ENMOD0	
	ADD	HL,DE
	RES	6,(HL)
ZBS090
	RET	
;=========================================
ZONBICD
	DB	$FF,$FF,$FF,$FF
	DB	$6C,$02,$6C,$22
	DB	$68,$02,$6A,$02
	DB	$60,$02,$62,$02
	DB	$64,$02,$66,$02
;
ZONBIMV2
	LD	DE,ZONBICD
	CALL	EN2CST
;
	CALL	E6STCK
	CALL	E6HNSB
;
	LD	A,(ENSTAT2)
	RST	00
	DW	ZBM1000
	DW	ZBM2000
	DW	ZBM3000
	DW	ZBM4000
;-------------------------------------------
ZBM1000
	CALL	LDTIM0
	LD	(HL),$30
;
		jp	STATINC
;;;11/11	CALL	STATINC
;;;11/11	RET
;-------------------------------------------
ZBM2000
	CALL	LDTIM0
	JR	NZ,ZBM2010
;
	CALL	RNDSUB
	AND	$3F
	ADD	A,$70
	LD	(HL),A
;
	CALL	RNDSUB
	AND	$07
	ADD	A,$05
	CALL	PSERCHL
;
	CALL	STATINC
ZBM2010
	LD	E,$01
	CP	$18
	JR	NC,ZBM2030
	INC	E
ZBM2030
	LD	A,E
		jp	ENPTST
;;;11/11	CALL	ENPTST
;;;11/11	RET
;-------------------------------------------
ZBM3000
	CALL	E6MVCL
	CALL	ENBGCKL
	CALL	CREPKEL
;
	LD	HL,ENCBFG
	ADD	HL,BC
	LD	A,(HL)
	AND	$0F
	JR	NZ,ZBM3020
;
	CALL	LDTIM0
	JR	NZ,ZBM3090
;
ZBM3020
	CALL	LDTIM0
	LD	(HL),$30
;
	CALL	STATINC
;
	LD	HL,ENMOD0
	ADD	HL,BC
	SET	6,(HL)
ZBM3090
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	RRA
	AND	$01
	ADD	A,$03
		jp	ENPTST
;;;11/11	CALL	ENPTST
;;;11/11	RET
;==================================
ZBM4000
	CALL	LDTIM0
	JP	Z,E6CLER
;
	LD	E,$01
	CP	$18
	JR	C,ZBM4030
	INC	E
ZBM4030
	LD	A,E
		jp	ENPTST
;;;11/11	CALL	ENPTST
;;;11/11	RET
;===================================
E6CTBC	; Center check  
	PUSH	BC
;
	LD	HL,ENXPSL
	ADD	HL,BC
	LD	A,(HL)
	SUB	$08-$07
;
;;	ADD	A,$07
	LD	(WORK4),A
	AND	$F0
	LD	(OBJXP),A
	SWAP	A
;
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	C,A
	LD	A,(HL)
	SUB	$10-$09
;
;;	ADD	A,$07
	LD	(WORK5),A
	AND	$F0
	LD	(OBJYP),A
	OR	C
	LD	C,A
	LD	B,$0
	LD	HL,BGUNDT+$11
	LD	A,H
	ADD	HL,BC
	LD	H,A
	POP	BC
	LD	A,(HL)
	LD	(UNITNO),A
	LD	E,A
	LD	A,(DJFLAG)
	LD	D,A
;;	LD	HL,GRBGCR
;;	ADD	HL,DE
;;	LD	A,(HL)
	CALL	BGCRRD
	LD	(WORK3),A
;
	RET
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�{�N�T�[�N						%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
BXYSPD
	DB	$EC,$14
;- - - - - - - - - - - - - - - - - -
BOXERMV
	CALL	BOXERCS
;
	LD	A,(ENMODE2)
	CP	EFAIL
	JP	Z,BSFLSB6
;
	CALL	E6STCK
;
	CALL	BSSDCK	;(S)
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	NZ,BX0000
;
	INC	(HL)
;
	CALL	LDTIM3
	LD	(HL),$20
BX0000
	CALL	LDTIM1
	JR	Z,BX0002
;
	LD	A,(HANEFG)
	AND	A
	CP	$01
	JR	NZ,BX0001
;
	LD	HL,SOUND1
	LD	(HL),$33	;(S)	
BX0001
	AND	A
	JR	NZ,BX0002
;
	LD	A,$02
	LD	(PLSTOP),A
;
	LD	A,$6A
	LD	(PLCHPT),A
;
	CALL	BPIYOST
BX0002
	CALL	E6HNSB
;
	CALL	CRKNKNL
;
	LD	A,(HANEFG)
	AND	A
	JR	NZ,BX0008
;
	CALL	CREPKEL
BX0008
	CALL	E6MVCL
	CALL	ENBGCKL
;
	CALL	E6ZCLC
;
	LD	HL,ENZSPD
	ADD	HL,BC
	DEC	(HL)
	DEC	(HL)
	DEC	(HL)
;
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	AND	%10000000
	LD	(ENHELP),A
	AND	A
	JR	Z,BX0010
;
	LD	(HL),B
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),B
;
	CALL	ENSDCL
BX0010
	CALL	BXATACK
;- - - - 
	CALL	E6XCHK
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	(HL),E	
;
	CALL	E6YCHK
	CP	$00
	JR	Z,BX0080
;
	LD	D,B
	LD	HL,BXYSPD-2
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),A
BX0080
	LD	A,(ENHELP)
	AND	A
	JR	Z,BX0090
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),$10
;
	CALL	RNDSUB
	AND	$0F
	SUB	$08
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
;
	CALL	E6XCHK
	ADD	A,$28
	CP	$50
	JR	C,BX0090
;
	LD	A,$08
	CALL	PSERCH2L
;
	LD	A,(WORK1)
	LD	HL,ENXSPD
	ADD	HL,BC
	ADD	A,(HL)
	LD	(HL),A
BX0090
	CALL	BXATST
;
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	RRA
	AND	$01
		jp	ENPTST	
;;;11/11	CALL	ENPTST	
;;;11/11;
;;;11/11;
;;;11/11;
;;;11/11;
;;;11/11;
;;;11/11;
;;;11/11;	LD	A,(KEYA2)
;;;11/11;	AND	$10
;;;11/11;	JR	Z,BX0090
;;;11/11;;
;;;11/11;;;	LD	A,$01
;;;11/11;	LD	A,(FUESLPT)
;;;11/11;	INC	A
;;;11/11;	LD	(BDATNO),A
;;;11/11;;
;;;11/11;	CALL	LDTIM0
;;;11/11;	LD	(HL),$00
;;;11/11;;
;;;11/11;	LD	HL,ENCONT
;;;11/11;	ADD	HL,BC
;;;11/11;	LD	(HL),$00
;;;11/11;BX0090
;;;11/11	RET
;=======================================
BXATST
	CALL	LDTIM1
	JR	Z,BXAS02	;�s�����H
;				; YES !
	LD	A,$03		; �A�b�p�[�`�����X�I
	JR	BXATSS
;
BXAS02
	CALL	LDTIM3
	JR	NZ,BXAS60
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	CP	$05
	JR	NC,BXAS03	;�n�߂̓W���u�I
;
	INC	(HL)
	LD	A,$01
	JR	BXATSS
;--------------------------------------
BXAS03
	CALL	RNDSUB
	AND	$03
	INC	A
BXATSS
	LD	(BDATNO),A
	CP	$01
	JR	NZ,BXAS10
;
	LD	A,$0A
	LD	(SOUND3),A	;(S)
BXAS10
	CALL	LDTIM0
	LD	(HL),$00
;
	LD	HL,ENCONT
	ADD	HL,BC
	LD	(HL),$00
BXAS60
	RET
;================================================
BXATACK	;�U���I
	LD	A,(BDATNO)
	AND	A
	RET	Z
;
	POP	DE	;�T�u���[�`�����^�[�������I
;
	DEC	A
	RST	00
	DW	BXJAB	;�W���u
	DW	BXSTR	;�X�g���[�g
	DW	BXUPER	;�A�b�p�[
	DW	BXJAB	;�W���u
;--------------------------------------
BXJCDT
BXJ1
	DB	1,1,1,2,2,3,3,3,3,3,2,2,1
BXJ2
;;	DB	1,2,3,3,2
BXJAB
	CALL	LDTIM0
	JR	NZ,BXJ010
;
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	CP	BXJ2-BXJ1 ;$0D
	JP	Z,BXJEND
;
	INC	(HL)
;
	LD	E,A
	LD	D,B
	LD	HL,BXJCDT
	ADD	HL,DE
	LD	A,(HL)
	CALL	ENPTST
;
	CALL	LDTIM0
	LD	(HL),$01
BXJ010
	RET	
;
BXJEND
	CALL	RNDSUB
	AND	$03
	JP	Z,BXAEND
;
	LD	A,$01	;�W���u�A���I
	JP	BXATSS	
;--------------------------------------
BXSCDT
BXS1
	DB	$04,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05
	DB	$06,$07,$08,$08,$08,$08,$08,$07,$06,$01
BXS2
BXSXSD
	DB	$08,$10,$08,$08,$02,$00,$00,$00,$FC,$F8,$F0
	DB	$F8,$E0,$90,$A0,$00,$00,$00,$00,$00,$00
;- - - - - - - - - - - - - - - - - - - - -
BXSTR
	CALL	LDTIM0
	JR	NZ,BXS010
;
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	CP	BXS2-BXS1 ;$15
	JP	Z,BXAEND
;
	INC	(HL)
;
	LD	E,A
	LD	D,B
	LD	HL,BXSCDT
	ADD	HL,DE
	LD	A,(HL)
	CALL	ENPTST
;
	LD	HL,BXSXSD
	ADD	HL,DE
	LD	E,(HL)
;
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	NZ,BXS008
;
	LD	A,E
	CPL
	INC	A
	LD	E,A
BXS008
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),E
;
	CALL	LDTIM0
	LD	(HL),$03
BXS010
	RET	
;--------------------------------------
BXUCDT
BXU1
	DB	$09,$09,$0A,$0A,$0B,$0B,$0C,$0C
	DB	$09,$09,$0A,$0A,$0B,$0B,$0C,$0C
	DB	$09,$09,$0A,$0A,$0B,$0B,$0C,$0C
	DB	$09,$09,$09,$09,$09,$09,$09,$09,$09,$09
	DB	$0D,$0E,$0F,$10,$11,$11,$11,$01
BXU2
BXUXSD
	DB	$0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C
	DB	$08,$08,$08,$08,$08,$08,$08,$08
	DB	$00,$00,$00,$00,$00,$00,$00,$00
	DB	$00,$00,$00,$00,$00,$00,$00,$00,$F0,$E0
	DB	$D0,$C0,$C0,$E0,$F0,$00,$00,$00
;;	DB	$D0,$A0,$B0,$C0,$E0,$F0,$00,$00
;- - - - - - - - - - - - - - - - - - - - -
BXUPER
	CALL	LDTIM0
	JR	NZ,BXU010
;
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	CP	BXU2-BXU1	;$1D
	JP	Z,BXAEND
;
	LD	E,A
	CP	$28 ;(BXU2-BXU1)-1
	JR	NZ,BXU001
;
	LD	A,(PLMODE)
	CP	PBOXER
	JR	Z,BXU002	;�Ԃ���ђ��͍Ō�̃|�[�Y�Ŏ~�߂�I
;
BXU001
	INC	(HL)
;
BXU002
;;;	LD	E,A
	LD	D,B
	LD	HL,BXUCDT
	ADD	HL,DE
	LD	A,(HL)
	CALL	ENPTST
;
	LD	HL,BXUXSD
	ADD	HL,DE
	LD	E,(HL)
;
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	NZ,BXU008
;
	LD	A,E
	CPL
	INC	A
	LD	E,A
BXU008
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),E
;
	CALL	LDTIM1
	JR	Z,BXU00A	;�s�����H
;				;YES !�ڋ߁I
	CALL	E6XCHK
	ADD	A,$30
	CP	$60
	JR	C,BXU00A
;
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	CP	$18
	JR	NC,BXU00A
;
	LD	A,$10
	CALL	PSERCHL
BXU00A
	CALL	LDTIM0
	LD	(HL),$03
BXU010
	RET	
;
;=============================
BXAEND
	XOR	A
	LD	(BDATNO),A
;
	CALL	LDTIM3
;
	CALL	RNDSUB
	AND	$0F
	ADD	A,$0C
	LD	(HL),A
	RET
;
;====================================
BOXERCD
;00 WALK1
	DB	$00,$F8,$6C,$03
	DB	$00,$00,$6E,$03
;
	DB	$00,$00,$60,$01
	DB	$00,$08,$62,$01
;
	DB	$FD,$F8,$6E,$23
	DB	$FD,$00,$6C,$23
;01 WALK2
	DB	$FF,$F8,$6C,$03
	DB	$FF,$00,$6E,$03
;
	DB	$00,$00,$64,$01
	DB	$00,$08,$66,$01
;
	DB	$FD,$F8,$6E,$23
	DB	$FD,$00,$6C,$23
;02 JAB 1
	DB	$00,$F8,$6E,$23
	DB	$00,$00,$6C,$23
;
	DB	$00,$00,$60,$01
	DB	$00,$08,$62,$01
;
	DB	$FD,$F8,$6C,$03
	DB	$FD,$00,$6E,$03
;03 JAB 2
	DB	$FD,$F0,$6C,$03
	DB	$FD,$F8,$6E,$03
;
	DB	$00,$F8,$6E,$23
	DB	$00,$00,$6C,$23
;
	DB	$00,$00,$60,$01
	DB	$00,$08,$62,$01
;04 Strait 1
	DB	$00,$00,$6E,$23
	DB	$00,$08,$6C,$23
;
	DB	$00,$00,$64,$01
	DB	$00,$08,$66,$01
;
	DB	$FD,$F8,$6E,$23
	DB	$FD,$00,$6C,$23
;05 Strait 2
	DB	$FD,$08,$6E,$23
	DB	$FD,$10,$6C,$23
;
	DB	$00,$00,$68,$01
	DB	$00,$08,$6A,$01
;
	DB	$FD,$F8,$6E,$23
	DB	$FD,$00,$6C,$23
;06 Strait 3
	DB	$00,$F8,$6C,$03
	DB	$00,$00,$6E,$03
;
	DB	$00,$00,$60,$01
	DB	$00,$08,$62,$01
;
	DB	$00,$00,$FF,$00
	DB	$00,$00,$FF,$00
;07 Strait 4
	DB	$00,$F0,$6C,$03
	DB	$00,$F8,$6E,$03
;
	DB	$00,$00,$60,$01
	DB	$00,$08,$62,$01
;
	DB	$00,$00,$FF,$00
	DB	$00,$00,$FF,$00
;08 Strait 5
	DB	$00,$E8,$6C,$03
	DB	$00,$F0,$6E,$03
;
	DB	$00,$00,$60,$01
	DB	$00,$08,$62,$01
;
	DB	$00,$00,$FF,$00
	DB	$00,$00,$FF,$00
;09 Spining 1
	DB	$F8,$10,$6C,$03
	DB	$F8,$18,$6E,$03
;
	DB	$00,$00,$68,$01
	DB	$00,$08,$6A,$01
;
	DB	$FD,$F8,$6E,$23
	DB	$FD,$00,$6C,$23
;0A Spining 2
	DB	$F0,$08,$6C,$03
	DB	$F0,$10,$6E,$03
;
	DB	$00,$00,$68,$01
	DB	$00,$08,$6A,$01
;
	DB	$FD,$F8,$6E,$23
	DB	$FD,$00,$6C,$23
;0B Spining 3
	DB	$FC,$08,$6E,$23
	DB	$FC,$10,$6C,$23
;
	DB	$00,$00,$68,$01
	DB	$00,$08,$6A,$01
;
	DB	$FD,$F8,$6E,$23
	DB	$FD,$00,$6C,$23
;0C Spining 4
	DB	$00,$10,$6E,$23
	DB	$00,$18,$6C,$23
;
	DB	$00,$00,$68,$01
	DB	$00,$08,$6A,$01
;
	DB	$FD,$F8,$6E,$23
	DB	$FD,$00,$6C,$23
;0D Uper 1
	DB	$04,$08,$6E,$23
	DB	$04,$10,$6C,$23
;	
	DB	$00,$00,$68,$01
	DB	$00,$08,$6A,$01
;
	DB	$FD,$F8,$6E,$23
	DB	$FD,$00,$6C,$23
;0E Uper 2
	DB	$08,$00,$6C,$03
	DB	$08,$08,$6E,$03
;
	DB	$00,$00,$64,$01
	DB	$00,$08,$66,$01
;
	DB	$00,$00,$FF,$00
	DB	$00,$00,$FF,$00
;0F Uper 3
	DB	$08,$F8,$6C,$03
	DB	$08,$00,$6E,$03
;
	DB	$00,$00,$60,$01
	DB	$00,$08,$62,$01
;
	DB	$00,$00,$FF,$00
	DB	$00,$00,$FF,$00
;10 Uper 4
	DB	$05,$F0,$6C,$03
	DB	$05,$F8,$6E,$03
;
	DB	$00,$00,$60,$01
	DB	$00,$08,$62,$01
;
	DB	$00,$00,$FF,$00
	DB	$00,$00,$FF,$00
;11 Uper 5
	DB	$F4,$F0,$6E,$23
	DB	$F4,$F8,$6C,$23
;
	DB	$00,$00,$60,$01
	DB	$00,$08,$62,$01
;
	DB	$00,$00,$FF,$00
	DB	$00,$00,$FF,$00
;- - - - - - - - - - - - - - -
BOXERCD2
;- - - - - - - - - - - - - - - - - - - - - - - -
BOXERCS
	LD	A,$80
	LD	(ENKNSZ+0),A
	LD	(ENKNSZ+2),A
;
	LD	A,(ENCHPT2)
	SLA	A
	SLA	A
;
	LD	D,B
	SLA	A
	LD	E,A
	RL	D
;
	SLA	A
	RL	D
	ADD	A,E	
	LD	E,A
	LD	A,D
	ADC	A,$00
	LD	D,A
;
	XOR	A
	LD	(ENHELP),A
;
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	NZ,BXC020
;
	INC	A
	LD	(ENHELP),A
;
	LD	HL,ENFLCL
	SET	5,(HL)
BXC020
	LD	HL,BOXERCD
	ADD	HL,DE
;
	LD	C,$06
;
	PUSH	HL
	LD	A,(ENOMID)
	LD	E,A
	LD	D,$0
	LD	HL,ENOAM
	ADD	HL,DE
		ld	e,l
		ld	d,h
;;;11/11PUSH	HL
;;;11/11POP	DE
;
	POP	HL
;
	LD	A,C
	LD	(WORK0),A
	LD	A,(INDEX)
	LD	C,A
	CALL	O2MCHK
	LD	A,(WORK0)
	LD	C,A
E6OM10
	LD	A,(ENKNSZ+2)
	CP	$80
	JR	NZ,E6OM12
;
	LD	A,(HL)
	ADD	A,$08
	LD	(ENKNSZ+2),A
E6OM12
	LD	A,(ENDSYP)
	ADD	A,(HL)
	LD	(DE),A
	INC	HL
	INC	DE
;
	PUSH	BC
;
	LD	A,(TILTXD)
	LD	C,A
;
	LD	B,(HL)
	LD	A,(ENHELP)
	AND	A
	JR	Z,E6OS010
;
	LD	A,B
	CPL
	INC	A
	ADD	A,$08
	LD	B,A
E6OS010
	LD	A,(ENKNSZ)
	CP	$80
	JR	NZ,E6OS020
;
	LD	A,(ENHELP)
	AND	A
	LD	A,B
	JR	NZ,E6OS011
	ADD	A,$08
E6OS011
	LD	(ENKNSZ),A
;
E6OS020
	LD	A,(ENSVXL)
	ADD	A,B  ;(HL)
	SUB	C
;
	LD	(DE),A
	INC	HL
	INC	DE
	POP	BC
;
	LD	A,(HLI)
	LD	(DE),A
;
	CP	$FF
	JR	NZ,E6S900
	DEC	DE
	XOR	A
	LD	(DE),A
	INC	DE
E6S900
	INC	DE
;
	LD	A,(ENFLCL)
	XOR	(HL)
	LD	(DE),A
;
		LD	A,(CGBFLG)
		AND	A		;�b�f�a�H
		JR	Z,E6S950	;	NO --> E6S950
		LD	A,(ENFLCL)
		BIT	4,A		;�t���b�V���O�H
		JR	Z,E6S950	;	NO --> E6S950
		LD	A,(DE)
		AND	%11111000
		OR	%00000100
		LD	(DE),A
E6S950
	INC	HL
	INC	DE
;
	DEC	C
	JR	NZ,E6OM10
;
	LD	A,$08
	LD	(ENKNSZ+1),A
	LD	A,$04
	LD	(ENKNSZ+3),A
;
	LD	A,(INDEX)
	LD	C,A
;
	LD	A,$06
	CALL	NXOMSBL
;
	JP	SADWSTL
;==================================
BPIYOYD
	DB	$00,$FE,$FD,$FE
	DB	$00,$02,$03,$02
BPIYOXD
	DB	$00,$04,$08,$0C
	DB	$10,$0C,$08,$04
BPIYOST
	LD	HL,OAM+$10
;
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	PUSH	AF
	AND	%00000111
;
	CALL	BPIYOSB
;
	POP	AF
	ADD	A,$04
	AND	%00000111
;------------------------------------
BPIYOSB
	PUSH	BC
;
	PUSH	HL
;
	LD	E,A
	LD	D,$00
	LD	HL,BPIYOYD
	ADD	HL,DE
	LD	B,(HL)
	LD	HL,BPIYOXD
	ADD	HL,DE
	LD	C,(HL)
;
	POP	HL
;
	LD	A,(PLYPSL)
	ADD	A,B
	ADD	A,$F6
	LD	(HLI),A
	LD	A,(PLXPSL)
	ADD	A,C
	ADD	A,$FC
	LD	(HLI),A
;
	LD	(HL),$24
	INC	HL
	LD	(HL),$00
	INC	HL
;
	POP	BC
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�o�C�A				    %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;ARHBYS
;	DB	$FC,$FD
;ARHBXS
;	DB	$00,$03,$04,$03,$00,$FD,$FC,$FD
;-----------------------------------------
ARIMAMV
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	CP	$02
	JP	Z,ARTAMMV
	AND	A
	JP	NZ,ARBADMV
;
	LD	A,(ENMODE2)
	CP	EFAIL
	JR	NZ,ARM000
;
	LD	A,(ENSVXL)
	LD	(WORK0),A
	LD	A,(ENDSYP)
	LD	(WORK1),A
;
	LD	A,SMK1
	CALL	EXIDSH
;
	LD	A,$0C
	LD	(ENHELP),A
	CALL	ARBADST
	LD	A,$F4
	LD	(ENHELP),A
	CALL	ARBADST
;
	CALL	ENBITON	;�����o�Ȃ��I
	JP	E6CLER
;======================================
ARBADST
	LD	A,ARIMA
	CALL	ENIDSHL
	JR	C,ARM0F0
;
	LD	HL,ENJYUN
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENJYUN
	ADD	HL,DE
	LD	(HL),A
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
	LD	A,(WORK3)
	LD	HL,ENZPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,ENWRK0
	ADD	HL,DE
	LD	(HL),$01
;
	LD	A,(ENHELP)
	LD	HL,ENXSPD
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,ENTIM0
	ADD	HL,DE
	LD	(HL),$20
;
	LD	HL,ENLIFE
	ADD	HL,DE
	LD	(HL),$01
ARM0F0
	RET
;=========================================
ARM000
	CALL	ARIMACS
;
;	LD	A,(SCRLFG)
;	AND	A
;	JR	Z,ARM001
;;
	LD	A,(GRNDPT)
	LD	HL,ENGRPT
	ADD	HL,BC
	CP	(HL)
	JR	Z,ARM001
;
	LD	A,(ENSVXL)
	CP	$98
	JP	NC,E6CLER
;
	LD	A,(ENDSYP)
	CP	$70
	JP	NC,E6CLER
;
ARM001
	CALL	E6STCK
;
	CALL	E6HNSB
;;	CALL	ENHNCL
;
	CALL	E6MVCL
	CALL	E6ZCLC
;
	LD	A,(ENSTAT2)
	RST	00
	DW	ARM0000	;�z�o�����O�����I
	DW	ARM1000	;�z�o�����O
;--------------------------------------
	DW	ARMATWT	;�U�������I
;--------------------------------------
	DW	ARMATCK1 ;�̓�����I
;--------------------------------------
	DW	ARMOUT ;��ʊO�ҋ@�I
;--------------------------------------
	DW	ARMIN  ;��ʓ����A�I
;--------------------------------------
	DW	ARMSWING  ;�X�C���O�I
;--------------------------------------
	DW	ARMSWAT  ;�X�C���O��U���I
;--------------------------------------
AHB	EQU	$01
AWT	EQU	$02
AA1	EQU	$03
AOT	EQU	$04
AIN	EQU	$05
ASW	EQU	$06
ASA	EQU	$07
;=========================================
ARM0000
	LD	HL,ENLIFE
	ADD	HL,BC
	LD	(HL),03
;
	CALL	LDTIM0
	LD	(HL),$C0
;
	LD	HL,ENTIM3
	ADD	HL,BC
	LD	(HL),$80
;
	CALL	ENSDCL
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),$08
;
	JP	STATINC
;-----------------------------------------------
ARHBXS
	DB	$08,$F8
ARHBYS
	DB	$08,$F8
;
ARM1000	;�z�o�����O�I
	CALL	ARBGCK
;
	CALL	E6XCHK
	ADD	A,$1C
	CP	$38
;;	ADD	A,$40
;;	CP	$60
	JR	NC,ARM1003
;
	CALL	E6YCHK2
	ADD	A,$20
	CP	$40
;;	ADD	A,$40
;;	CP	$60
	JR	NC,ARM1003	;�v���C���[�ڋ߁H
;				;YES !������I
	LD	A,$10
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
	CALL	STATINC
	LD	(HL),AA1
;
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	(HL),$FF
;
ARM1003
	LD	HL,ENTIM3
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	NZ,ARM1090
;
	CALL	STATINC
	LD	(HL),AWT
;
	CALL	LDTIM0
	LD	(HL),$20
	RET	
ARM1090
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),B
;
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	SUB	$28
	JR	Z,ARM10A8
	LD	E,$08
	AND	%10000000
	JR	NZ,ARM10A0
	LD	E,$F8
ARM10A0
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),E
ARM10A8
	LD	HL,ENCBFG
	ADD	HL,BC
	LD	A,(HL)
	AND	$03
	JR	Z,ARM10B0
;
	LD	E,A
	LD	D,B
	LD	HL,ARHBYS-1
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),A	
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),$00
ARM10B0
	LD	HL,ENCBFG
	ADD	HL,BC
	LD	A,(HL)
	RRA
	RRA
	AND	$03
	JR	Z,ARM10C0
;
	LD	E,A
	LD	D,B
	LD	HL,ARHBXS-1
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A	
;
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),$00
ARM10C0
;	CALL	LDTIM0
;	JR	NZ,ARM10E0
;
;	LD	(HL),$A0
;;
;	CALL	RNDSUB
;	AND	$07
;	LD	E,A
;	LD	D,B
;	LD	HL,ARHBXS
;	ADD	HL,DE
;	LD	A,(HL)
;	LD	HL,ENXSPD
;	ADD	HL,BC
;	LD	(HL),A
;	LD	HL,ARHBYS
;	ADD	HL,DE
;	LD	A,(HL)
;	LD	HL,ENYSPD
;	ADD	HL,BC
;	LD	(HL),A
ARM10E0
	CALL	LDTIM0
	JR	NZ,ARM10E8
;
	CALL	RNDSUB
	AND	$7F
	ADD	A,$40
	LD	(HL),A
;
	LD	HL,ENTIM1
	ADD	HL,BC
	LD	(HL),$10
ARM10E8
	LD	HL,ENTIM1
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,ARM10EC
;
	CP	$08
	JR	NZ,ARM10EA
;
	CALL	ARTMST
ARM10EA
	LD	A,$02
	JP	ENPTST
ARM10EC
	CALL	ABUKICK
;
ARMPTST
	LD	A,(FRCNT)
;;;	RRA
	RRA
	RRA
	RRA
	AND	$01
		jp	ENPTST
;;;11/11	CALL	ENPTST
;;;11/11	RET
;-----------------------------------------------
ARMATWT
	CALL	LDTIM0
	JR	NZ,AAW010
;-------------------------------------
	CALL	STATINC
	LD	(HL),AA1	;�̓�����I
;
	LD	A,(PLYPSL)
	PUSH	AF
	SUB	$14
	LD	(PLYPSL),A
;
	LD	A,$20
	CALL	PSERCHL
;
	POP	AF
	LD	(PLYPSL),A
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),$EC
;
	LD	HL,ENTIM3
	ADD	HL,BC
	LD	(HL),$30
;
	CALL	RNDSUB
	AND	$03
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	(HL),A	;�t�F�C���g�I
	AND	A
	JR	NZ,AAW090
;
	CALL	LDTIM0
	LD	(HL),$10
AAW090
	RET
;----------------------------------------
AAW010
	CALL	ENSDCL2
;
	LD	A,$02
		jp	ENPTST
;;;11/11	CALL	ENPTST
;;;11/11	RET
;-----------------------------------------------
ARMATCK1
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	A,(HL)
	CP	$FF	; FF:�����I
	JR	Z,AA1F010	;�t�F�C���g�H
;				;NO!
	CALL	E6XCHK
	ADD	A,$18
	CP	$30
	JR	NC,AA1F010
;
	CALL	E6YCHK2
	ADD	A,$18
	CP	$30
	JR	NC,AA1F010
;
	LD	HL,ENFLSH
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	NZ,AA1F010
;
	LD	A,(PCUTFG)
	AND	A
	JR	Z,AA1F010
;
	LD	A,$20
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
	LD	(HL),$0B
;
	CALL	STATINC
	LD	(HL),ASW
	RET
AA1F010
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	A,(HL)
	CP	$FF
	JR	Z,AA1F012	;�����H
	AND	A
	JR	NZ,AA1F070	;�t�F�C���g�H
;				;YES !
	CALL	LDTIM0
	JR	NZ,AA1F070
;
AA1F012
	LD	A,$20
	CALL	PSERCH2L
;
	LD	A,(WORK0)
	CPL
	INC	A
	LD	HL,ENYSPD
	ADD	HL,BC
	SUB	(HL)
	AND	%10000000
	JR	NZ,AA1F020
;
	INC	(HL)
	INC	(HL)
	INC	(HL)
	INC	(HL)
AA1F020
	DEC	(HL)
	DEC	(HL)
;
	LD	A,(WORK1)
	CPL
	INC	A
	LD	HL,ENXSPD
	ADD	HL,BC
	SUB	(HL)
	AND	%10000000
	JR	NZ,AA1F030
;
	INC	(HL)
	INC	(HL)
	INC	(HL)
	INC	(HL)
AA1F030
	DEC	(HL)
	DEC	(HL)
;
AA1F070
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	CP	$40
	JR	C,AA1008
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	A,(HL)
	AND	%10000000
	JR	NZ,AA1008
;
	LD	(HL),B
	JR	AA1013
AA1008
	LD	HL,ENZSPD
	ADD	HL,BC
;
	LD	A,(FRCNT)
	AND	$01
	JR	NZ,AA1010
;
	INC	(HL)	
AA1010
	LD	A,(HL)
	AND	%10000000
	JR	NZ,AA1020
;
AA1013
	LD	HL,ENTIM3
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,AA1018
;
	LD	A,(ENSVXL)
	CP	$A8
	JR	NC,AA1018
;
	LD	A,(ENDSYP)
	CP	$90
	JR	C,AA1020
	CP	$C0
	JR	NC,AA1020
;
AA1018
	CALL	STATINC
	LD	(HL),AOT ;$01
;
	CALL	ENSDCL2
;
	CALL	LDTIM0
;
	CALL	RNDSUB
	AND	$3F
	ADD	A,$20
	LD	(HL),A
;
	LD	A,$FF
	JP  	ENPTST
AA1020
AREPKE
	CALL	CREPKEL
;
	LD	HL,ENFLSH
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,AA1030
;
	CALL	ENSDCL
;
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	(HL),$FF ;B	;�����I
	RET
AA1030
	CALL	ABUKICK
;
	JP	ARMPTST
;;	RET
;- - - - - - - - - - - - - - - -
ENSDCL2
	CALL	ENSDCL
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),B
	RET
;----------------------------------------------
ARINYP
	DB	$00,$00,$D0,$D0
	DB	$40,$40,$80,$80
ARINXP
	DB	$08,$98,$38,$78
	DB	$F8,$A8,$F8,$A8
;
ARMOUT
	CALL	LDTIM0
	JR	NZ,ARMO010
;
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	(HL),$28
;
	CALL	STATINC
	LD	(HL),AIN
;
	CALL	RNDSUB
	AND	$07
	LD	E,A
	LD	D,B
	LD	HL,ARINYP
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	(HL),A
	LD	HL,ARINXP
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENXPSL
	ADD	HL,BC
	LD	(HL),A
ARMO010
	RET
;----------------------------------------------
ARMIN
	LD	A,$08
	CALL	PSERCHL
;
	LD	A,(ENSVXL)
	CP	$09
	JR	C,AMI090
	CP	$97
	JR	NC,AMI090
;
	LD	A,(ENDSYP)
	CP	$20
	JR	C,AMI090
	CP	$70
	JR	NC,AMI090
;
	CALL	STATINC
	LD	(HL),AHB
;
	LD	HL,ENTIM3
	ADD	HL,BC
	CALL	RNDSUB
	AND	$3F
	ADD	A,$20
	LD	(HL),A
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
AMI090
	JP	ARMPTST
;;	RET
;------------------------------------
ARTMYS
	DB	$00,$09,$12,$15
ARTMXS
	DB	$18,$15,$12,$09
	DB	$00,$F7,$EE,$EB
	DB	$E8,$EB,$EE,$F7
	DB	$00,$09,$12,$15
;
ARMSWING
	CALL	LDTIM0
	JR	NZ,AMSW90
;
	LD	(HL),$20
;
	CALL	STATINC
	LD	(HL),ASA
;
	JP  	ENSDCL2
AMSW90
	CP	$08
	JR	C,AMSW98
;
	CALL	AREPKE
;
AMSW98
	JP	ARMPTST
;------------------------------------
ARMSWAT
	CALL	LDTIM0
	JR	NZ,AMSA10
;
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	(HL),$FF ;$00
;
	CALL	STATINC
	LD	(HL),AA1
	RET
AMSA10
	CP	$08
	JP	NZ,AMSAA0
;-------------------------------
ARTMST
	LD	A,$0D
	LD	(SOUND3),A	;(S)
;
	LD	A,(PLYPSL)
	PUSH	AF
	SUB	$08
	LD	(PLYPSL),A
;
	LD	A,$1F
	CALL	PSERCH2L
;
	POP	AF
	LD	(PLYPSL),A
;
	CALL	M6CK16
	AND	$0F
	LD	(ENHELP),A
;
	LD	E,$00
	CALL	AMTMSTS
	LD	E,$01
AMTMSTS
	LD	A,(ENHELP)
	ADD	A,E
	AND	$0F
	LD	(ENHELP),A
;
	LD	E,ENNO-1
	LD	D,B
AMSA01
	LD	HL,ENMODE
	ADD	HL,DE
	LD	A,(HL)
	AND	A
	JR	Z,AMSA02
;
	LD	HL,ENMYNO
	ADD	HL,DE
	LD	A,(HL)
	CP	ARIMA
	JR	NZ,AMSA02
;
	LD	HL,ENWRK0
	ADD	HL,DE
	LD	A,(HL)
	CP	$02
	JR	NZ,AMSA02
;
	INC	B
AMSA02
	DEC	E
	LD	A,E
	CP	$FF
	JR	NZ,AMSA01
;
	LD	A,B
	LD	B,$00
	CP	$03
	JR	NC,AMSA80	;�R�ȏ�H
;				;NO!
	LD	A,ARIMA
	CALL	ENIDSHL
	JR	C,AMSA80
;
	LD	A,(WORK0)
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	A,(WORK1)
	LD	HL,WORK3
	SUB	(HL)
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,ENWRK0
	ADD	HL,DE
	LD	(HL),$02
;
	LD	HL,ENMOD0
	ADD	HL,DE
	LD	(HL),%00000010
;
	LD	HL,ENLIFE
	ADD	HL,DE
	LD	(HL),$4C
;
	PUSH	BC
;
	LD	A,(ENHELP)
	LD	C,A
	LD	HL,ARTMXS
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,DE
	LD	(HL),A
	LD	HL,ARTMYS
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENYSPD
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,ENTIM0
	ADD	HL,DE
	LD	(HL),$20
;
	POP	BC
AMSA80
	RET
AMSAA0
	LD	A,$02
	JP	ENPTST
;=========================================
ARBGCK
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	A,(HL)
	SUB	$28
	LD	(HL),A
;
	LD	A,(ENSVYL)
	SUB	$28
	LD	(ENSVYL),A
;
	CALL	ENBGCKL
;
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	A,(HL)
	ADD	A,$28
	LD	(HL),A
;
		jp	ENPSSV
;;;11/11	CALL	ENPSSV
;;;11/11	RET
;===================================
ABUKICK
	LD	E,ENNO-1
ABC010
	LD	D,B
	LD	HL,ENMODE
	ADD	HL,DE
	LD	A,(HL)
	CP	EMOVE
	JR	NZ,ABC090
;
	LD	HL,ENMYNO
	ADD	HL,DE
	LD	A,(HL)
	CP	FUCKS 
	JR	Z,ABC030
	CP	PYAAA
	JR	Z,ABC030
	CP	BOMBR
	JR	NZ,ABC090
ABC030
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	A,(ENSVXL)
	SUB	(HL)
	ADD	A,$18
	CP	$30
	JR	NC,ABC090
;
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	A,(ENDSYP)
	SUB	(HL)
	ADD	A,$20
	CP	$40
	JR	NC,ABC090
;
	LD	A,(PLYPSL)
	PUSH	AF
	LD	A,(PLXPSL)
	PUSH	AF
;
	LD	A,(HL)
	LD	(PLYPSL),A
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	A,(HL)
	LD	(PLXPSL),A
;
	PUSH	DE
;
	LD	A,$20
	CALL	PSERCH2L
;
	POP	DE
;
	LD	A,(WORK1)
	CPL
	INC	A
	JR	NZ,ABC032
;
	LD	A,$20
ABC032
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
;
	LD	A,(WORK0)
	CPL
	INC	A
	JR	NZ,ABC038
;
	LD	A,$20
ABC038
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),A
;
	POP	AF
	LD	(PLXPSL),A
	POP	AF
	LD	(PLYPSL),A
;
	CALL	STATINC
	LD	(HL),AA1	;������I
;
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	(HL),$01
;
ABC090
	DEC	E
	LD	A,E
	CP	$FF
	JR	NZ,ABC010
;
	RET
;===========================================
ARIMACD
;0
	DB	$00,$FC,$60,$02
	DB	$00,$04,$62,$02
	DB	$00,$0C,$60,$22
;1
	DB	$00,$FC,$64,$02
	DB	$00,$04,$66,$02
	DB	$00,$0C,$64,$22
;2
	DB	$00,$FC,$68,$02
	DB	$00,$04,$6A,$02
	DB	$00,$0C,$68,$22
;--------------------------------------
ARIMACS
	LD	A,(ENCHPT2)
	CP	$FF
	RET	Z
;
	RLA
	RLA
	AND	%11111100
;
	LD	E,A
	RLA
	AND	%11111000
	ADD	A,E
	LD	E,A
	LD	D,B
	LD	HL,ARIMACD
	ADD	HL,DE
;
	LD	C,$03
	CALL  	ENOMST
;
	JP	SADWSTL
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	��				     %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ARTAMCD
	DB	$1E,$03,$1E,$63
	DB	$1E,$43,$1E,$23
;- - - - - - - - - - - - - - - - - - -
ARTAMMV
	LD	DE,ARTAMCD
	CALL	EN2CST
;
	CALL	E6STCK
;
	CALL	ENHNCL
;
	LD	A,(FRCNT)
	RRA
	RRA
	AND	$01
	CALL	ENPTST
;
;;	CALL	CREPKEL
	CALL	CRKNENL
	CALL	CRENPLL
	JR	C,ARTM080
;
	LD	HL,ENHNFG
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,ATM0900
;
	LD	A,(ENSVXL)
	LD	(WORK0),A
	LD	A,(ENDSYP)
	LD	(WORK1),A
;
	LD	A,SMK1
	CALL	EXIDSH
;
ARTM080
	JP	E6CLER
;
ATM0900
	CALL	E6MVCL
;
	CALL	LDTIM0
	RET	NZ
;
	CALL	ENBGCKL
;
	LD	HL,ENCBFG
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JP	NZ,E6CLER 
;
	RET
;======================================
ARBADCD
	DB	$6C,$00,$6C,$20
	DB	$6E,$00,$6E,$20
;
ARBADMV
	LD	DE,ARBADCD
	CALL	EN2CST
;
	CALL	E6STCK
;
	CALL	E6HNSB
;
	CALL	E6MVCL
;
	LD	A,(FRCNT)
	AND	$03
	JR	NZ,ARB000
;
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	SUB	$10
	JR	Z,ARB000
	AND	%10000000
	JR	Z,ARB0F0
	INC	(HL)
	INC	(HL)
ARB0F0
	DEC	(HL)
ARB000
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	AND	$01
	CALL	ENPTST
;
	LD	A,(ENSTAT2)
	RST	00
	DW	ARB100
	DW	ARB180
	DW	ARB200
;------------------------------------
ARB100
	CALL	LDTIM0
		ret	NZ
;;;11/11	JR	NZ,ARB110
;
	LD	(HL),$20
;
	CALL	ENSDCL
;
		jp	STATINC
;;;11/11	CALL	STATINC
;;;11/11ARB110
;;;11/11	RET
;------------------------------------
ARB180
	CALL	LDTIM0
		ret	NZ
;;;11/11	JR	NZ,ARB190
;
	LD	(HL),$20
;
	LD	A,$20
	CALL	PSERCHL
;
		jp	STATINC
;;;11/11	CALL	STATINC
;;;11/11ARB190
;;;11/11	RET
;------------------------------------
ARB200
	CALL	CREPKEL
;
	CALL	LDTIM0
	RET	NZ
;
	CALL	ENBGCKL
;
	LD	HL,ENCBFG
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JP	NZ,E6CLER
	RET
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	���c�J�C							%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
TTNO	EQU	$06
TUKAIMV
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JP	NZ,TTORIMV
;
	LD	HL,ENMOD0 ;;;;;;;5/11
	ADD	HL,BC
	SET	6,(HL)	;����f�ʂ�
;
	CALL	TUKAICS
;
	CALL	SHRVSE
;
	CALL	BSSDCK
;
	CALL	E6STCK
;
	LD	A,(NAZOCL)
	AND	A
	JR	Z,TUK0F00	;�S�ŁH
;				;YES !
	LD	HL,ENWRK2
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	NZ,TUK0E00
;
	INC	(HL)
;
	LD	A,$25
	CALL	MSGCHK
;
	JP  	E6SVST
TUK0E00
	CP	$01
	JR	NZ,TUK0E01
	LD	A,$3F
	LD	(SOUND3),A	;(S)
	INC	(HL)
TUK0E01
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),$20	;������I
;
	CALL	E6ZCLC
;
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	CP	$78
	RET	C
;
	CALL	BGMSET	;(S)
;
	JP  	E6CLER
;---------------------------------------------------
TUK0F00
	LD	A,(ENSTAT2)
	RST	00
	DW	TUK0000
	DW	TUK1000
	DW	TUK2000
	DW	TUK3000
	DW	TUK4000
	DW	TUK5000
	DW	TUK6000
;----------------------------------------
TUK0000
	LD	A,$07
	LD	(BDATNO),A
	JP	STATINC
;----------------------------------------
TUK1000
	CALL	LDTIM0
	LD	(HL),$80
;
	XOR	A
	LD	(BSINDX),A
	LD	(BSINDX2),A
;
	LD	A,(BDATNO)
	INC	A
	AND	$07
	LD	(BDATNO),A	
;
	JP	STATINC
;----------------------------------------
TUK2000
	CALL	LDTIM0
	JR	NZ,TUK2010
	LD	(HL),$FF
;
	LD	HL,ENMOD3
	ADD	HL,BC
	RES	1,(HL)	;�S�Ń`�F�b�N����I
;
	LD	E,ENNO-1
	LD	D,B
TUK2003
	LD	HL,ENMYNO
	ADD	HL,DE
	LD	A,(HL)
	CP	TUKAI
	JR	NZ,TUK2008
;
	LD	HL,ENWRK0
	ADD	HL,DE
	LD	A,(HL)
	AND	A
	JR	Z,TUK2008
;
	LD	HL,ENMODE
	ADD	HL,DE
	LD	(HL),B	
TUK2008
	DEC	E
	LD	A,E
	CP	$FF
	JR	NZ,TUK2003
;
	JP	STATINC
TUK2010
	RET
;----------------------------------------
;----------------------------------------
;----------------------------------------
;----------------------------------------
TTSXPS
	DB	$78,$68,$58,$48,$38,$28 ;,$80,$98
TTSYPS
	DB	$00,$00,$00,$00,$00,$00 ;,$00,$00
;----------------------------------------
;----------------------------------------
;----------------------------------------
;----------------------------------------
TUK3000
	CALL	LDTIM0
	JR	NZ,TUK3010
;
	LD	HL,ENMOD3
	ADD	HL,BC
	SET	1,(HL)	;�S�Ń`�F�b�N�����I
;
	CALL	STATINC
	XOR	A
TUK3010
	AND	$1F
	JR	NZ,TUK3020
;
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	CP	TTNO ;$08
	JR	NC,TUK3020
;
	LD	A,TUKAI
	CALL	ENIDSHL
	JR	C,TUK3020
;
	LD	A,$31
	LD	(SOUND1),A	;(S)
;
	LD	HL,ENCONT
	ADD	HL,BC
	PUSH	BC
	LD	C,(HL)
	INC	(HL)
	LD	HL,TTSXPS
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A
	LD	HL,TTSYPS
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,ENZPSL
	ADD	HL,DE
	LD	(HL),$1C
;
	LD	HL,ENCONT
	ADD	HL,DE
	LD	(HL),C
;
	LD	HL,ENMOD3
	ADD	HL,DE
	LD	A,(HL)
	AND	%01111011
	LD	(HL),A
;
	LD	HL,ENLIFE
	ADD	HL,DE
	LD	(HL),$01
;
	LD	HL,ENWRK0
	ADD	HL,DE
	LD	(HL),$01
;
	LD	HL,ENMOD0
	ADD	HL,DE
	SET	6,(HL)
;
	POP	BC
TUK3020
TUKPTST
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	RRA
	RRA
	AND	$01
		jp	ENPTST
;;;11/11	CALL	ENPTST
;;;11/11	RET
;----------------------------------------
TUK4000
	LD	A,(BSINDX)
	CP	TTNO ;$08
	JR	NZ,TUK4010
;
	LD	HL,ENCONT
	ADD	HL,BC
	LD	(HL),B
;
	XOR	A
	LD	(BSINDX),A
;
	CALL	LDTIM0
	LD	(HL),$40
;
	CALL	STATINC
TUK4010
		jp	TUKPTST
;;;11/11	CALL	TUKPTST
;;;11/11	RET
;----------------------------------------
TUK5000
	CALL	LDTIM0
		ret	NZ
;;;11/11	JR	NZ,TUK5010
;
	LD	A,$FF
	LD	(BSINDX),A	;�A�^�b�N�I
;
	LD	HL,ENTIM3
	ADD	HL,BC
	LD	(HL),$40
;
		jp	STATINC	
;;;11/11	CALL	STATINC	
;;;11/11TUK5010
;;;11/11	RET
;----------------------------------------
TUK6000
	LD	HL,ENTIM3
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	NZ,TUK6900
;
;
	LD	A,(NAZOCL)
	AND	A
	JR	NZ,TUK6500
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	NZ,TUK6500
	INC	(HL)
	LD	A,$DF	;�@�k�u�V�_���W�����̃{�X���啂������Ƃ��i�P��őS�ł����Ȃ��������A�P�񂾂��j
	CALL	MSGCH2
;
TUK6500
	CALL	STATINC
	LD	(HL),$01
TUK6900
	LD	A,$02
		jp	ENPTST
;;;11/11	CALL	ENPTST
;;;11/11	RET
;----------------------------------------
TUK7000
	RET
;=====================================
TUKAICD
;0
	DB	$00,$F8,$60,$02
	DB	$00,$00,$62,$02
	DB	$00,$08,$64,$02
;1
	DB	$00,$F8,$66,$02
	DB	$00,$00,$62,$02
	DB	$00,$08,$64,$02
;2
	DB	$10,$00,$68,$02
	DB	$00,$00,$62,$02
	DB	$00,$08,$64,$02
;- - - - - - - - - - - - - - - - - - -
TUKAICS
	LD	A,(ENCHPT2)
	RLA
	RLA
	AND	%11111100
	LD	E,A
	SLA	A
	ADD	A,E
	LD	E,A
	LD	D,B
	LD	HL,TUKAICD
	ADD	HL,DE
	LD	C,$03
	CALL	ENOMST
;
	LD	A,$3-2
	JP  	NXOMSBL
;==========================================
TTORICD
	DB	$6E,$00,$6E,$20
	DB	$6E,$40,$6E,$60
;
TTORIMV
	LD	DE,TTORICD
	CALL	EN2CST
;
	CALL	E6STCK
;
	CALL	ENHNCL
;
	LD	A,(ENSTAT2)
	RST	00
	DW	TTR1000
	DW	TTR2000
	DW	TTR3000
	DW	TTR4000
	DW	TTR5000
;==================================
TTSHXP
;1
	DB	$28,$38,$48
	DB	$58,$68,$78
;2
	DB	$38,$68,$48
	DB	$58,$48,$58
;3
	DB	$18,$88,$28
	DB	$78,$60,$40
;4
	DB	$28,$78,$78
	DB	$28,$60,$40
;5
	DB	$28,$78,$28
	DB	$78,$50,$50
;6
	DB	$38,$68,$50
	DB	$50,$38,$68
;7
	DB	$38,$68,$38
	DB	$68,$38,$68
;8
	DB	$28,$78,$38
	DB	$48,$68,$58
TTSHYP
;1
	DB	$20,$30,$40
	DB	$40,$30,$20
;2
	DB	$60,$60,$50
	DB	$70,$70,$50
;3
	DB	$38,$38,$58
	DB	$58,$70,$70
;4
	DB	$30,$30,$70
	DB	$70,$50,$50
;5
	DB	$30,$70,$70
	DB	$30,$30,$70
;6
	DB	$40,$60,$70
	DB	$30,$60,$40
;7
	DB	$30,$30,$50
	DB	$50,$70,$70
;8
	DB	$40,$40,$50
	DB	$40,$50,$40
;- - - - - - - - - - - - - - - - - -
TTR1000
	LD	A,(PLXPSL)
	PUSH	AF
	LD	A,(PLYPSL)
	PUSH	AF
;
	LD	A,(BDATNO)
	RLA
	AND	%11111110
	LD	E,A
	RLA
	AND	%11111100
	ADD	A,E	; x6
;
	LD	HL,ENCONT
	ADD	HL,BC
	ADD	A,(HL)
	LD	E,A
	LD	D,B
	LD	HL,TTSHXP
	ADD	HL,DE
	LD	A,(HL)
	LD	(PLXPSL),A
	LD	HL,TTSHYP
	ADD	HL,DE
	LD	A,(HL)
	LD	(PLYPSL),A
;
	LD	A,(FRCNT)
	XOR	C
	AND	$03
	JR	NZ,TTR1020
;
	LD	A,$10
	CALL	PSERCHL
;
TTR1020
	LD	HL,ENSVXL
	LD	A,(PLXPSL)
	SUB	(HL)
	ADD	A,$03
	CP	$06
	JR	NC,TTR1030
;
	LD	HL,ENDSYP
	LD	A,(PLYPSL)
	SUB	(HL)
	ADD	A,$03
	CP	$06
	JR	NC,TTR1030
;
	LD	HL,BSINDX
	INC	(HL)
;
	CALL	STATINC
TTR1030
	POP	AF
	LD	(PLYPSL),A
	POP	AF
	LD	(PLXPSL),A
;
TTRMVPT
	CALL	E6MVCL
;
TTRPTST
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	AND	$01
		jp	ENPTST
;;;11/11	CALL	ENPTST
;;;11/11;
;;;11/11	RET
;========================================
TTATTM
	DB	$04,$0C,$14,$1C,$24,$2C,$34,$3C
TTR2000
	LD	A,(BSINDX)
	CP	$FF
	JR	NZ,TTR2010
;
	LD	HL,ENCONT
	ADD	HL,BC
	LD	E,(HL)
	LD	D,B
	LD	HL,TTATTM
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENTIM3
	ADD	HL,BC
	LD	(HL),A
;
	CALL	STATINC
TTR2010
	JP	TTRPTST
;===================================
TTR3000
	LD	HL,ENTIM3
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	NZ,TTR3010
;
	LD	HL,ENMOD0
	ADD	HL,BC
	RES	6,(HL)
;
	LD	A,$20
	CALL	PSERCHL
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),$F4
;
	LD	A,$31
	LD	(SOUND1),A	;(S)
;
	CALL	STATINC
TTR3010
	JP	TTRPTST
;===================================
TTR4000
TTR4002
	CALL	CREPKEL
;
	CALL	TTRMVPT
	CALL	E6ZCLC
;
	LD	A,(FRCNT)
	AND	$03
	JR	NZ,TTR4010
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	A,(HL)
	CP	$0C
	JR	Z,TTR4010
	INC	(HL)
TTR4010
;------------------------------------
E6GAWY2
	LD	A,(ENDSYP)
	CP	$88
	JR	NC,E6G090
;
	LD	A,(ENSVXL)
	CP	$A8
	RET	C
E6G090
	CALL	STATINC
;
	LD	A,$FF
		jp	ENPTST
;;;11/11	CALL	ENPTST
;;;11/11	RET
;===================================
TTR5000
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%					    %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
KMHAHENCD
	DB	$7A,$16
	DB	$7E,$36
	DB	$7A,$36
	DB	$7E,$16
	DB	$7C,$16
	DB	$7C,$36
;
KAMEIMV
	LD	A,(DJSVBF)
	AND	%00100000
	JP	NZ,E6CLER
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,KM0000	;��j�ЁH
;				; YES !
KMHAHEN
	LD	DE,KMHAHENCD
	CALL	EN1CST
;
	CALL	E6STCK
;
	CALL	E6MVCL
;
	CALL	E6ZCLC
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
	JP	NZ,E6CLER
	RET
;-------------------------------------
KM0000
	LD	HL,ENFLSH
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,KM000F	;�_���[�W�H
;
	LD	A,$07
	LD	(ENCHPT2),A	;�ڂ����I
KM000F
	CALL	KAMEICS
;
	LD	A,(ENSTAT2)
	AND	A
	JR	NZ,KM0001
;
	LD	A,(FUESLPT)
	CP	$02
	JR	NZ,KM0001
;
	LD	A,(OKARFG)
	AND	A
	JR	Z,KM0001
;
	CALL	STATINC
;
	LD	HL,ENMOD3
	ADD	HL,BC
	SET	7,(HL)
	SET	2,(HL)
;
	LD	HL,ENLIFE
	ADD	HL,BC
	LD	(HL),$10
	RET
;
KM0001
	LD	A,(ENMODE2)
	CP	EMOVE
	JR	Z,KM0002
;
	CALL	BSFLSB6
	LD	HL,ENMODE
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	NZ,KM0011
;
	LD	HL,GRRMSV+$10
	SET	5,(HL)
;
	LD	A,$02
	LD	(SOUND1),A	;(S)
KM0011
	RET
;
KM0002
	CALL	E6STCK
;
	CALL	ENHNCL
;
	CALL	CRKNENL
;
	LD	A,(ENSTAT2)
	CP	$05
	JR	NC,KM0003
;
	CALL	M6CROS 
	JR	KM0005
KM0003
	CALL	CRENPLL
KM0005
	LD	A,(ENSTAT2)
	RST	00
	DW	KME1000
	DW	KME1800
	DW	KME2000
	DW	KME3000
	DW	KME6000
	DW	KME7000
	DW	KME8000
	DW	KME9000
	DW	KMEA000
;
	DW	KMEB000	;9
	DW	KMEC000	;A
	DW	KMED000	;B
;---------------------------------------
KME1000
	RET
;---------------------------------------
KME1800
	CALL	LDTIM0
	LD	(HL),$80	;�X�^�[�g�I
;
	LD	A,$39
	LD	(SOUND4),A	;(S)	
	LD	(BGMNO),A
	LD	(BGMNO2),A
	LD	(TODYFG),A
	JP	STATINC
;---------------------------------------
KME2000
	LD	A,(ENSVXL)
	LD	HL,ENWRK3
	ADD	HL,BC
	LD	(HL),A
;
	LD	A,(ENDSYP)
	LD	HL,ENWRK2
	ADD	HL,BC
	SUB	$14
	LD	(HL),A
;
	CALL	LDTIM0
	JR	NZ,KME2010
;
	LD	(HL),$FF
;
		jp	STATINC
;;;11/11	CALL	STATINC
;;;11/11	RET
KME2010
	LD	E,$08
	AND	$04
	JR	Z,KME2020
	LD	E,$F8
KME2020
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),E
		jp	E6XCLC
;;;11/11	CALL	E6XCLC
;;;11/11	RET
;---------------------------------------
KMHXPS
	DB	$F8,$08,$10,$00,$00,$08
KMHYPS
	DB	$F0,$00,$F0,$00,$F0,$F0
KMHXSD
	DB	$F8,$08,$08,$F8,$F8,$08
KMHYSD
	DB	$FC,$02,$FC,$02,$FC,$FC
KMHZSD
	DB	$10,$10,$10,$10,$10,$10
;
KME3000
	CALL	LDTIM0
	JR	NZ,KME3010
;
	LD	(HL),$80
;
		jp	STATINC
;;;11/11	CALL	STATINC
;;;11/11	RET
KME3010
	AND	$1F
	JR	NZ,KME3020
;
	LD	A,(ENCHPT2)
	CP	$06
	JR	Z,KME3018
;
	LD	A,$13
	LD	(SOUND3),A	;(S)
;
	LD	A,KAMEI
	CALL	ENIDSHL
;
	PUSH	BC
;
	LD	A,(ENCHPT2)
	LD	C,A
;
	LD	HL,ENCHPT
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,KMHXPS
	ADD	HL,BC
	LD	A,(WORK0)
	ADD	A,(HL)
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,KMHYPS
	ADD	HL,BC
	LD	A,(WORK1)
	ADD	A,(HL)
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,KMHXSD
	ADD	HL,BC
	LD   	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,KMHYSD
	ADD	HL,BC
	LD 	A,(HL)
	LD	HL,ENYSPD
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,KMHZSD
	ADD	HL,BC
	LD 	A,(HL)
	LD	HL,ENZSPD
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,ENWRK0
	ADD	HL,DE
	LD	(HL),A
;
	POP	BC
;--------------------------------------
KME3018
	LD	HL,ENCHPT
	ADD	HL,BC
	LD	A,(HL)
	CP	$07
	JR	Z,KME3020
	INC	A
	LD	(HL),A
KME3020
	RET
;---------------------------------------
KME6000
	CALL	LDTIM0
	JR	NZ,KME6002
;
	LD	(HL),$80
;
	JP	STATINC
KME6002
	LD	E,$07	
	CP	$60
	JR	NC,KME6010
	CP	$40
	JR	NC,KME6020
;
	CP	$30
	JR	C,KME6010
	CP	$20
	JR	C,KME6020
KME6010
	INC	E
KME6020
	LD	A,E
		jp	ENPTST
;;;11/11	CALL	ENPTST
;;;11/11	RET
;---------------------------------------
KME7000
	CALL	LDTIM0
	JR	NZ,KME7030
;
	LD	(HL),$40
;
	LD	HL,ENMOD0
	ADD	HL,BC
	RES	7,(HL)
;
	LD	HL,ENMOD3
	ADD	HL,BC
	RES	6,(HL)
;
	CALL	STATINC
;
	LD	A,(ENSVXL)
	LD	(BSINDX),A
	LD	A,(ENDSYP)
	LD	(BSINDX2),A
	RET
KME7030	
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),$04
		jp	E6YCLC
;;;11/11	CALL	E6YCLC
;;;11/11	RET
;---------------------------------------
KME8000
	CALL	LDTIM0
		ret	NZ
;;;11/11	JR	NZ,KME8010
;
	LD	(HL),$20
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),$08
;
		jp	STATINC
;;;11/11	CALL	STATINC
;;;11/11KME8010
;;;11/11	RET
;---------------------------------------
KME9000
	CALL	LDTIM0
	JR	NZ,KME9020
;
	CALL	LDTIM0
	CALL	RNDSUB
	AND	$1F
	ADD	A,$08
	LD	(HL),A
;
	CALL	STATINC
KME9020	
		jp	E6XCLC	
;;;11/11	CALL	E6XCLC	
;;;11/11	RET
;---------------------------------------
KMEA000
	CALL	LDTIM0
	JR	NZ,KMEA020
;
	LD	HL,ENWRK4
	ADD	HL,BC
	INC	(HL)
	LD	A,(HL)
	CP	$03
	JR	C,KMEA050
;
	CALL	RNDSUB
	AND	$01
	JR	NZ,KMEA050	;�U���H
;				;YES !
	CALL	STATINC
	LD	A,$09
	LD	(HL),A
;
	CALL	LDTIM0
	LD	(HL),$20
	RET
KMEA050
	CALL	LDTIM0
	LD	(HL),$40
;
	CALL	STATINC
	DEC	(HL)
	DEC	(HL)
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	A,(HL)
	CPL
	INC	A
	LD	(HL),A
KMEA020
	RET
;---------------------------------------
KMEB000
	CALL	LDTIM0
		ret	NZ
;;;11/11	JR	NZ,KMEB090
;
	LD	(HL),$20
;
	LD	A,$18
	CALL	PSERCHL
;
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	A,(HL)
	BIT	7,(HL)
	JR	Z,KMEB080
;
	CPL
	INC	A
	LD	(HL),A
KMEB080
		jp	STATINC	
;;;11/11	CALL	STATINC	
;;;11/11KMEB090
;;;11/11	RET
;---------------------------------------
KMEC000
	LD	HL,ENFLSH
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	NZ,KMEC008
;
	CALL	LDTIM0
	JR	NZ,KMEC010
;
KMEC008
	CALL	STATINC	
KMEC010
		jp	E6MVCL
;;;11/11	CALL	E6MVCL
;;;11/11	RET
;---------------------------------------
KMED000
	LD	A,(PLXPSL)
	PUSH	AF
	LD	A,(PLYPSL)
	PUSH	AF
;
	LD	A,(BSINDX)
	LD	(PLXPSL),A
	LD	A,(BSINDX2)
	LD	(PLYPSL),A
;
	LD	A,$08
	CALL	PSERCHL
;
	LD	A,(BSINDX)
	LD	HL,ENSVXL
	SUB	(HL)
	ADD	A,$01
	CP	$02
	JR	NC,KMED010
;
	LD	A,(BSINDX2)
	LD	HL,ENDSYP
	SUB	(HL)
	ADD	A,$01
	CP	$02
	JR	NC,KMED010
;
	CALL	STATINC
	LD	(HL),$06
;
	CALL	LDTIM0
	LD	(HL),$20
KMED010
	POP	AF
	LD	(PLYPSL),A
	POP	AF
	LD	(PLXPSL),A
;
		jp	E6MVCL
;;;11/11	CALL	E6MVCL
;;;11/11	RET
;=================================================
KAMEICD
;0
	DB	$F0,$F8,$7A,$16
	DB	$F0,$00,$7C,$16
	DB	$F0,$08,$7C,$36
	DB	$F0,$10,$7A,$36
	DB	$00,$00,$7E,$16
	DB	$00,$08,$7E,$36
;-�ϐg
;1
	DB	$F0,$F8,$70,$07
	DB	$F0,$00,$7C,$16
	DB	$F0,$08,$7C,$36
	DB	$F0,$10,$7A,$36
	DB	$00,$00,$7E,$16
	DB	$00,$08,$7E,$36
;2
	DB	$F0,$F8,$70,$07
	DB	$F0,$00,$7C,$16
	DB	$F0,$08,$7C,$36
	DB	$F0,$10,$7A,$36
	DB	$00,$00,$7E,$16
	DB	$00,$08,$74,$27
;3
	DB	$F0,$F8,$70,$07
	DB	$F0,$00,$7C,$16
	DB	$F0,$08,$7C,$36
	DB	$F0,$10,$70,$27
	DB	$00,$00,$7E,$16
	DB	$00,$08,$74,$27
;4
	DB	$F0,$F8,$70,$07
	DB	$F0,$00,$7C,$16
	DB	$F0,$08,$7C,$36
	DB	$F0,$10,$70,$27
	DB	$00,$00,$74,$07
	DB	$00,$08,$74,$27
;5
	DB	$F0,$F8,$70,$07
	DB	$F0,$00,$78,$07
	DB	$F0,$08,$7C,$36
	DB	$F0,$10,$70,$27
	DB	$00,$00,$74,$07
	DB	$00,$08,$74,$27
;6
	DB	$F0,$F8,$70,$07
	DB	$F0,$00,$78,$07
	DB	$F0,$08,$78,$27
	DB	$F0,$10,$70,$27
	DB	$00,$00,$74,$07
	DB	$00,$08,$74,$27
;7
	DB	$F0,$F8,$70,$07
	DB	$F0,$00,$78,$07
	DB	$F0,$08,$78,$27
	DB	$F0,$10,$70,$27
	DB	$00,$00,$74,$07
	DB	$00,$08,$74,$27
;8
	DB	$F0,$F8,$70,$07
	DB	$F0,$00,$72,$07
	DB	$F0,$08,$72,$27
	DB	$F0,$10,$70,$27
	DB	$00,$00,$74,$07
	DB	$00,$08,$74,$27
;- - - - - - - - - - - - - - - - - - -
KAMKBCD
	DB	$76,$07,$76,$27
;- - - - - - - - - - - - - - - - - - - 
KAMEICS
	LD	A,(ENCHPT2)
	RLA
	RLA
;
	RLA
	AND	%11111000
	LD	E,A
	RLA
	ADD	A,E
	LD	E,A
	LD	D,B
	LD	HL,KAMEICD
	ADD	HL,DE
;
	LD	C,$06
	CALL	ENOMST
;
	LD	A,$06
	CALL	NXOMSBL
;
	LD	A,(ENMODE2)
	CP	EFAIL
	JR	Z,KBC030
;
	LD	A,(ENSTAT2)
	CP	$05
	JP	C,KBC090
;
KBC030
	LD	HL,ENWRK3
	ADD	HL,BC
	LD	A,(HL)
	LD	(ENHELP),A
;
;;;	LD	HL,ENHELP
	LD	A,(ENSVXL)
	SUB	(HL)  ;$58
	SRA	A
	LD	(WORKA),A
	SRA	A
	LD	(WORKB),A
	SRA	A
	LD	(WORKC),A
	SRA	A
	LD	(WORKD),A
	SRA	A
	LD	(WORKE),A
	SRA	A
	LD	(WORKF),A
;
	LD	HL,ENWRK2
	ADD	HL,BC
	LD	A,(HL)
	LD	(ENHELP2),A
;
	LD	A,(ENDSYP)
	SUB	$20
	CP	(HL)	;$1E
	JR	C,KBC090
	LD	(ENDSYP),A
;
	XOR	A
	LD	(ENCHPT2),A
;
	LD	HL,WORKA
KBC070	
	LD	A,(ENHELP)
;;;	LD	A,$58
	ADD	A,(HL)
	LD	(ENSVXL),A	
	INC	HL
;
	PUSH	HL
	LD	DE,KAMKBCD
	CALL	EN2CST
;
	LD	A,(PLFLSH)
	AND	A
	JR	NZ,KMBCR10
;
	LD	HL,ENDSYP
	LD	A,(PLYPSL)
	SUB	(HL)
	ADD	A,$0C
	CP	$18
	JR	NC,KMBCR10
;
	LD	HL,ENSVXL
	LD	A,(PLXPSL)
	SUB	(HL)
	LD	E,A
	ADD	A,$0C
	CP	$18
	JR	NC,KMBCR10
;
	LD	A,E
	LD	E,$20
	AND	%10000000	
	JR	Z,KMBCR08
;
	LD	E,$E0
KMBCR08
	LD	A,E
	LD	(PLXSPD),A
;
	XOR	A
	LD	(PLYSPD),A
;
	LD	A,$18
	LD	(HANEFG),A
;
	LD	A,$10
	LD	(PLFLSH),A
;
	LD	A,$08
	LD	(HARTDW),A
;
	LD	A,$03
	LD	(SOUND2),A	;(S)
KMBCR10
	POP	HL
;
	LD	A,(ENHELP2)
	LD	E,A
;
	LD	A,(ENDSYP)
	SUB	$10
	LD	(ENDSYP),A
;;	CP	E ;$1E
	SUB	E
	AND	%10000000
	JR	Z,KBC070
KBC090	
		jp	ENPSSV
;;;11/11	CALL	ENPSSV
;;;11/11	RET
;=========================================
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%  �j�����j����  	    					%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
NYOROCD
	DB	$62,$00,$64,$00
	DB	$60,$00,$60,$20
	DB	$64,$20,$62,$20
;
	DB	$66,$00,$68,$00
	DB	$60,$00,$60,$20
	DB	$68,$20,$66,$20
;
	DB	$6C,$00,$6E,$00
	DB	$6A,$00,$6A,$20
	DB	$6E,$20,$6C,$20
NYPTDT
	DB	0,1,2,1
NYPTDT2
	DB	3,4,5,4
NYPTDT3
	DB	6,7,8,7
;
NYOROMV
		LD	A,(DNJNNO)
		CP	NEWDJ
		JR	NZ,NYOROMV_PASS
		LD	A,:NYOROMV
		jp	GET_FUKU_SUB
;;;;;;;;		CALL	GET_FUKU_SUB
;;;;;;;;		RET
NYOROMV_PASS
;
	LD	DE,NYOROCD
	CALL	EN2CST
;
	CALL	E6STCK
;
	CALL	E6HNSB
;
	CALL	CREPKEL
;
	LD	A,(ENSTAT2)
	RST	00
	DW	NYO1000
	DW	NYO2000
;==========================================
NYYSPD
	DB	$FA,$FC
NYXSPD
	DB	$00,$04,$06,$04,$00,$FC,$FA,$FC
;
NYO1000
	CALL	LDTIM0
	JR	NZ,NYO1010
;
	CALL	RNDSUB
	AND	$3F
	ADD	A,$30
	LD	(HL),A
;
	AND	$07
	LD	E,A
	LD	D,B
	LD	HL,NYXSPD
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
	LD	HL,NYYSPD
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),A
;
NYO1010
	CALL	E6MVCL
	CALL	ENBGCKL
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,NYPTDT
	AND	A
	JR	Z,NYPTST	;�A�����g�H
;				;YES !
	CALL	E6MSCK
	JR	NC,NYO1012
;
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	A,(HL)
	AND	$03
	ADD	A,$7C
	INC	(HL)
	CALL	MSGCH3
;
NYO1012
	LD	HL,NYPTDT3
NYPTST
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	AND	$03
	LD	E,A
	LD	D,B
	ADD	HL,DE
	LD	A,(HL)
		jp	ENPTST
;;;11/11	CALL	ENPTST
;;;11/11	RET
;=================================
NYO2000
	CALL	LDTIM0
	JR	NZ,NYO2010
;
	CALL	STATINC
	LD	(HL),B
	RET
NYO2010
NYO2030
	LD	HL,NYPTDT2
		jp	NYPTST
;;;11/11	CALL	NYPTST
;;;11/11	RET
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�p�^�N��							%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
PKURICD
;0
	DB	$00,$FC,$70,$02
	DB	$00,$04,$72,$02
	DB	$00,$0C,$70,$22
;1
	DB	$00,$FC,$74,$02
	DB	$00,$04,$72,$02
	DB	$00,$0C,$74,$22
;2
	DB	$00,$FC,$76,$02
	DB	$00,$04,$72,$02
	DB	$00,$0C,$76,$22
;3
	DB	$00,$FC,$74,$02
	DB	$00,$04,$72,$02
	DB	$00,$0C,$74,$22
PKZDT
	DB	$10,$11,$12,$11
;- - - - - - - - - - - - - - - - -
PKURIMV
	LD	A,(ENCHPT2)
	RLA
	RLA
	AND	%11111100
	LD	E,A
	RLA
	AND	%11111000
	ADD	A,E
	LD	E,A
	LD	D,B
	LD	HL,PKURICD
	ADD	HL,DE
	LD	C,$03
	CALL	ENOMST
;
	CALL	E6STCK
;
	CALL	SADWSTL
;
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	RRA
	RRA
	RRA
	AND	$03
	LD	E,A
	LD	D,B
	LD	HL,PKZDT
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	(HL),A
;
	CALL	E6HNSB
;
	CALL	E6MVCL
	CALL	ENBGCKL
;
	LD	A,(ENSTAT2)
	RST	00
	DW	PKR1000	
	DW	PKR2000	
	DW	PKR3000	
;-----------------------------------
PKYSPD
	DB	$F8,$FA
PKXSPD
	DB	$00,$06,$08,$06,$00,$FA,$F8,$FA
;
PKR1000
	CALL	LDTIM0
	JR	NZ,PKO1010
;
	CALL	RNDSUB
	AND	$1F
	ADD	A,$20
	LD	(HL),A
;
	AND	$07
	LD	E,A
	LD	D,B
	LD	HL,PKXSPD
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
	LD	HL,PKYSPD
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),A
;
	LD	HL,ENWRK0
	ADD	HL,BC
	INC	(HL)
	LD	A,(HL)
	AND	$07
	JR	NZ,PKR1008
;
	LD	A,$0A
	CALL	PSERCHL
PKR1008
	CALL	STATINC
PKO1010
PKPTST
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	INC	(HL)
	AND	$7F
	JR	NZ,PKP008
;
	LD	A,BOMBR
	CALL	ENIDSHL
	JR	C,PKP008
;
	LD	HL,ENMOD3
	ADD	HL,DE
	RES	0,(HL)
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
	LD	A,(WORK3)
	LD	HL,ENZPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,ENZSPD
	ADD	HL,DE
	LD	(HL),$08
;
	LD	HL,ENTIM0
	ADD	HL,DE
	LD	(HL),$40
;
	LD	HL,ENWRK3
	ADD	HL,DE
	LD	(HL),$01
;
	PUSH	BC
		ld	c,e
		ld	b,d
;;;11/11	PUSH	DE
;;;11/11	POP	BC
;
	LD	A,$10
	CALL	PSERCHL
	POP	BC
;
	LD	A,$08
	LD	(SOUND1),A	;(S)
PKP008
	CALL	E6XYCK
	LD	A,(PLCMKI)
	XOR	$01
	CP	E
	JR	NZ,PKP010
;
	CALL	E6XCHK
	ADD	A,$20
	CP	$40
	JR	NC,PKP010
;
	CALL	E6YCHK2
	ADD	A,$20
	CP	$40
	JR	NC,PKP010
;
	LD	A,(PCUTFG)
	AND	A
	JR	Z,PKP010
;
	CALL	STATINC
	LD	(HL),$02
;
	CALL	LDTIM0
	LD	(HL),$12
;
	LD	A,$20
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
	RET
;
PKP010
	CALL	CREPKEL
;
PKPTST2
	LD	A,(FRCNT)
	RRA
	RRA
	AND	$03
		jp	ENPTST
;;;11/11	CALL	ENPTST
;;;11/11	RET
;===========================
PKR2000
	CALL	LDTIM0
	JR	NZ,PKR2020
;
	LD	(HL),$20
;
	CALL	STATINC
	LD	(HL),B
;
	CALL	ENSDCL
PKR2020
	JP	PKPTST
;===========================
PKR3000
	CALL	LDTIM0
	JR	NZ,PKR3010
;
	CALL	STATINC
	LD	(HL),B
PKR3010
	JP	PKPTST2
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	Magic powder 		   %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
POWDRBD
	DB	$6C,$74,$6D,$75
POWDRB2
	DB	$64,$74,$65,$75
;
POWDRMV
	CALL	POWDRCS
;
	CALL	E6STCK
;
	LD	A,(ENSTAT2)
	AND	A
	JP	NZ,PWM100
;
	CALL	LDTIM0
	JP	Z,PWM010	; Tourou fire ?
;				; no 
	CP	$07
	JP	NZ,PWM020
;
;	LD	A,(DJFLAG)
;	AND	A
;	JP	Z,PWM020
;
	PUSH	BC
;
	LD	HL,ENXPSL
	ADD	HL,BC
	LD	A,(HL)
	ADD	A,$07
	SUB	$08
;
	AND	$F0
	LD	(OBJXP),A
	SWAP	A
;
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	C,A
	LD	A,(HL)
	ADD	A,$07
	SUB	$10
;
	AND	$F0
	LD	(OBJYP),A
	OR	C
	LD	C,A
	LD	B,$0
	LD	HL,BGUNDT+$11
	LD	A,H
	ADD	HL,BC
		ld	e,c
		ld	d,b
;;;11/11	PUSH	BC
;;;11/11	POP	DE
	LD	H,A
	POP	BC
	LD	A,(HL)
	LD	(UNITNO),A
	CP	ANFLW
	JR	Z,PWDM080
	CP	FLW00
	JR	NZ,PWDM090	;���I
;
PWDM080
	LD	A,(DJFLAG)
	AND	A
	JR	NZ,PWDM090
;
	CALL  	BG1CHG
;
	LD	A,(ENSVXL)
	LD	(WORK0),A
	LD	A,(ENDSYP)
	LD	(WORK1),A
;
	LD	A,SMK1
	CALL	EXIDSH
;
	LD	A,$2F
	LD	(SOUND1),A	;(S)
;
	JR	PWM010
;
PWDM090
	LD	A,(DJFLAG)
	AND	A
	JP	Z,PWM020
;
	LD	A,(UNITNO)
	CP	DSOK0
		ret	NZ		;�g�E���E?
;;;11/11	JR	NZ,PWM030	;�g�E���E?
;				; yes !

		LD	A,(CGBFLG)
		AND	A
		JR	Z,PWDM090_100
		LD	A,(PLMODE)
		CP	KURUD		; ������h�A�H
		RET	Z		; �x�d�r
		LD	A,(DARKFLG)
		AND	A		; �t�F�[�h���H
		RET	NZ		; �x�d�r
		LD	A,(SCRLFG)
		AND	A		; �X�N���[�����H
		RET	NZ		; �x�d�r
PWDM090_100

;(CGB)	LD	(HL),DSOK1
		LD	A,DSOK1
		LD	(HL),A
		LD	(UNTATR),A
;
	LD	D,H
	LD	E,L
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	(HL),D
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	(HL),E
;
	LD	HL,ENSTAT
	ADD	HL,BC
	LD	(HL),$01
;
;;	LD	HL,ENTIM3
;;	ADD	HL,BC
	CALL	LDTIM3
	LD	(HL),$80
;---
	LD	HL,ENXPSL
	ADD	HL,BC
	LD	A,(OBJXP)
	LD	(HL),A
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	A,(OBJYP)
	LD	(HL),A
;--
	LD	HL,TOURCT
	INC	(HL)
;
	LD	A,(FADECT2)
	AND	A
	JR	Z,TO0100
;
	SUB	$04
	LD	(FADECT2),A

		LD	A,(CGBFLG)
		AND	A
		JR	Z,TO0100

		LD	A,BRIGHT	; ���邭�Ȃ�
		LD	(DARKFLG),A
		LD	A,DARK_FRCNT
		LD	(DARKFCT),A

TO0100
	CALL	LDTIM0
	LD	(HL),B
;
	LD	A,$12
	LD	(SOUND3),A	;(S)
;
	LD	DE,POWDRBD
	PUSH	DE
	JP  	UNBGWT6
;
PWM010
	JP  	E6CLER
;- - - - - - - - - - - - - - - - -
PWM020
	CP	$10
		ret	NC
;;;11/11	JR	NC,PWM030
;
	LD	HL,ENWRK3
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	RET	NZ	;�����₶�����i���C�W�j
;
	LD	A,$9
	LD	(ATCKNO),A
		jp	CRENENL
;;;11/11	CALL	CRENENL
;;;11/11PWM030
;;;11/11	RET
;===============================================
PWM100
	CALL	LDTIM3
	JR	NZ,PWM110
;
	LD	HL,ENXPSL
	ADD	HL,BC
	LD	A,(HL)
	LD	(OBJXP),A
;
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	A,(HL)
	LD	(OBJYP),A
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	D,(HL)
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	E,(HL)
;
	LD	A,DSOK0
	LD	(DE),A
		LD	(UNTATR),A
;
	CALL	E6CLER
;
	LD	A,(GRNDPT)
	CP	$74
	RET	Z
;
	LD	HL,TOURCT
	DEC	(HL)
;
	LD	A,(FADECT2)
	CP	$0C
	JR	NC,PWM10F
;
	ADD	A,$04
	LD	(FADECT2),A

		LD	A,(CGBFLG)
		AND	A
		JR	Z,PWM10F
		LD	A,(PLMODE)
		CP	KURUD		; ������h�A�H
		RET	Z		; �x�d�r
		LD	A,(SCRLFG)
		AND	A		; �X�N���[�����H
;;;;;;;		JR	NZ,PWM10F	; �x�d�r
		RET	NZ		; �x�d�r

		LD	A,DARK		; �Â��Ȃ�
		LD	(DARKFLG),A
		LD	A,DARK_FRCNT
		LD	(DARKFCT),A

PWM10F
	LD	DE,POWDRB2
	PUSH	DE
	JP	UNBGWT6
PWM110
	RET
;===============================================
POWDRCD
	DB	$06,$FE,$24,$03
	DB	$03,$04,$24,$13
	DB	$05,$0A,$24,$03
;
	DB	$05,$FE,$24,$13
	DB	$02,$04,$24,$03
	DB	$04,$0A,$24,$13
;
	DB	$03,$FF,$24,$03
	DB	$01,$04,$24,$13
	DB	$02,$09,$24,$03
;
	DB	$01,$00,$24,$13
	DB	$FF,$04,$24,$03
	DB	$00,$06,$24,$13
;
	DB	$00,$01,$24,$03
	DB	$FE,$03,$24,$13
	DB	$FF,$05,$24,$03
;
	DB	$FF,$01,$24,$13
	DB	$FD,$03,$24,$03
	DB	$FE,$05,$24,$13
;
POWDRCS
	CALL	LDTIM0
		ret	Z
;;;11/11	JR	Z,PDCS90
	RRA	
	RRA	
	AND	$07
	SLA	A
	SLA	A
	LD	E,A
	SLA	A
	ADD	A,E
	LD	E,A
	LD	D,B ;$0
	LD	HL,POWDRCD
	ADD	HL,DE
	LD	C,$3	; ��
;
		jp	ENOMST
;;;11/11	CALL	ENOMST
;;;11/11PDCS90
;;;11/11	RET
;;===============================================
;;=					       =
;;===============================================
;TONDT	
;	DB	$07,$06,$05
;;- - - - - - - - - - - - - -
;TOUROUOF
;	LD	A,(TOURCT)
;	DEC	A
;	JR	TON010
;TOUROUON
;	LD	A,(TOURCT)
;	INC	A
;TON010
;	LD	(TOURCT),A
;TRONSUB
;	LD	E,A
;	LD	D,B
;	LD	HL,TONDT
;	ADD	HL,DE
;	LD	A,(HL)
;;
;	PUSH	BC
;;
;	CALL	TOURST
;;
;	POP	BC
;	RET
;===========================================
UNBGWT6
	CALL	OBJBG
;
		LD	A,(CGBFLG)
		AND	A
		JR	Z,UNBGWT6_PASS

		PUSH	BC
		LD	A,:UNBGWT6	; �߂�o���N�l
		CALL	BG1UNIT_ATR_SUB
		POP	BC
UNBGWT6_PASS
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
;;	CLC	; For rot beam tourou check !!
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�X�s�[�h -> �P�U�����ϊ�       %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
R6CKDT
	DB	$00,$00,$01,$01,$01,$02,$02,$02
	DB	$00,$00,$0F,$0F,$0F,$0E,$0E,$0E
	DB	$08,$08,$07,$07,$07,$06,$06,$06
	DB	$08,$08,$09,$09,$09,$0A,$0A,$0A
R6CKD2
	DB	$04,$04,$03,$03,$03,$02,$02,$02
	DB	$0C,$0C,$0D,$0D,$0D,$0E,$0E,$0E
	DB	$04,$04,$05,$05,$05,$06,$06,$06
	DB	$0C,$0C,$0B,$0B,$0B,$0A,$0A,$0A
;---------------------------------------------------
M6CK16
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
	JR	Z,M66100
	CPL
	INC	A
M66100
	LD	D,A
;
	LD	A,(WORK0)
	BIT	7,A
	JR	Z,M66110
	CPL
	INC	A
M66110
;;	LD	E,A
;
;;;	LD	A,D
	CP	D
	JR	NC,M66120
;
;;;	LD	A,E
	SRA	A
	SRA	A
	ADD	A,H
	LD	E,A
	LD	D,B
	LD	HL,R6CKDT
	ADD	HL,DE
	LD	A,(HL)
	RET
M66120
	LD	A,D
	SRA	A
	SRA	A
	ADD	A,H
	LD	E,A
	LD	D,B
	LD	HL,R6CKD2
	ADD	HL,DE
	LD	A,(HL)
	RET
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�t�b�N�V���b�g						%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
PFKPTD
	DB	$11,$10,$0F,$0E
FUCKSMV
		LD	A,(OKARFG)
		AND	A		;�I�J���i���[�v���H
		JP	NZ,E6CLER	;	YES --> E6CLER
;
	LD	A,$02
	LD	(PLSTOP),A
	LD	(PFUCKFG),A
	LD	(MUTEKI),A
;
	LD	A,C
	INC	A
	LD	(PFUCKID),A
;
	XOR	A
	CALL	DUSHCL
	LD	(HANEFG),A
;
	LD	A,(PLCMKI)
	LD	E,A
	LD	D,$0
	LD	HL,PFKPTD
	ADD	HL,DE
	LD	A,(HL)
	LD	(PLCHPT),A
;
	CALL	FUCKSCS
;
	CALL	E6STCK
;
	LD	A,(FRCNT)
	AND	$03
	JR	NZ,FKM002
;
	LD	A,$0B
	LD	(SOUND3),A	;(S)
FKM002
	LD	A,(ENSTAT2)
	AND	A
	JR	Z,FKM070
;
		LD	HL,ENXPSL
		ADD	HL,BC
		LD	A,(PLXPSL)
		CP	(HL)
		JR	NZ,FKM_PLMV
		LD	HL,ENYPSL
		ADD	HL,BC
		LD	A,(PLYPSL)
		CP	(HL)
		JR	Z,FKM070
;
FKM_PLMV
	LD	A,$30
	CALL	PSERCH2L
	LD	A,(WORK0)
	CPL
	INC	A
	LD	(PLYSPD),A
	LD	A,(WORK1)
	CPL
	INC	A
	LD	(PLXSPD),A
	PUSH	BC
	CALL	MVCALC
	POP	BC
	JR	FKCRCK
;- - - - - - - - - - - - - - - - - - - -
FKM070
	CALL	E6MVCL
;
;;	LD	HL,ENTIM0
;;	ADD	HL,BC
;;	LD	A,(HL)
	CALL	LDTIM0
;;	AND	A
	JR	NZ,FKM090
;
	LD	A,$30
	CALL	PSERCHL
;
FKCRCK
	CALL	CRENPSL
	JR	NC,FKM0B0
;
	XOR	A
	LD	(MUTEKI),A
;
	CALL	E6CLER
	JR	FKM0B0
FKM090
	LD	A,$6
	LD	(ATCKNO),A
	CALL	CRENENL
;
	LD	HL,ENCBFG
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	NZ,FKMRET2
;
;;	CALL	LDTIM0
;;	XOR	A
;;	LD	(HL),A
FKM0A0
	CALL	ENBGCKL
;
	LD	A,(DJFLAG)
	AND	A
	JR	Z,FKM0B0
;
	CALL	E6CTBC
;
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,FKM0B0
	LD	E,DFKB1
	BIT	7,A
	JR	NZ,FKM0A8
;
	LD	E,DFKB2
FKM0A8
	LD	A,(UNITNO)
	CP	E
	JR	NZ,FKM0B0	; Move bridge hit ?
;				; yes !
	LD	A,MVHAS
	CALL	ENIDSHL
;
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	A,(OBJXP)
	ADD	A,$08
	LD	(HL),A
;
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	A,(OBJYP)
	ADD	A,$10
	LD	(HL),A
;
	LD	A,(UNITNO)
	CP	DFKB1
	LD	A,$00
	JR	Z,FKM0AC
	INC	A
FKM0AC
	LD	HL,ENMUKI
	ADD	HL,DE
	LD	(HL),A
;
FKMRET
	CALL	LDTIM0
	LD	(HL),B
FKM0B0
	RET
FKMRET2
	CALL	LDTIM0
	LD	(HL),B
;
	LD	A,$07
	LD	(SOUND1),A	;(S)
;
	LD	A,(ENSVXL)
	LD	(WORK0),A
	LD	A,(ENDSYP)
	LD	(WORK1),A
;
	LD	A,FLSH
		jp	EXIDSH
;;;11/11	CALL	EXIDSH
;;;11/11	RET
;===================================
FUCKSCD
	DB	$36,00,$36,$20
;;	DB	$A4,00,$A4,$20
;
;;	DB	$3E,$00
;;	DB	$A4,$00
FUCKSCS
	LD	DE,FUCKSCD
	CALL	EN2CST
;
	LD	A,(ENSVXL)
	LD	HL,PLXPSL
	SUB	(HL)
	SRA	A
	SRA	A
	LD	(WORK0),A
	LD	(WORK2),A
;
	LD	A,(ENSVYL)
	LD	HL,PLYPSL
	SUB	(HL)
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
;;;11/11	PUSH	HL
;;;11/11	POP	DE
;
	LD	A,$3
FKC010
	LD	(WORK4),A
;
	LD	HL,FRCNT
	XOR	(HL)
	AND	$01
	JR	NZ,FKC011
;
	LD	A,(PLYPSL)
	LD	HL,WORK1
	ADD	A,(HL)
	LD	(DE),A
FKC011
	INC	DE
;
	LD	A,(PLXPSL)
	LD	HL,WORK0
	ADD	A,(HL)
	ADD	A,$4
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
	JR	NZ,FKC010
;
	LD	A,$3
		jp	NXOMSBL
;;;11/11	CALL	NXOMSBL
;;;11/11;
;;;11/11	RET
;=================================================
;\\\  ���ʃ��[�`��
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%					%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
M6CROS
	CALL	CRENPSL
	JR	NC,M620E0
;
M6CRSB
	CALL	PLPSRV
;
	CALL	DUSHCL2
;
	LD	A,(PFUCKID)
	AND	A
	JR	Z,M620D0
;	
	LD	E,A
	LD	D,B
	LD	HL,ENMYNO-1
	ADD	HL,DE
	LD	A,(HL)
	CP	FUCKS
	JR	NZ,M620D0
;
	LD	HL,ENSTAT-1	; Fuck return
	ADD	HL,DE
	LD	(HL),$00
M620D0
	SCF
	RET	
M620E0
	AND	A
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%					%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
M6MVPT
	DB	$06,$04,$02,$00
;
M6PTST
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	E,(HL)
;;	LD	E,A
	LD	D,B ;$0
	LD	HL,M6MVPT
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
TDMSCK
	LD	E,B
;
	LD	A,(PLYPSL)
	LD	HL,ENSVYL
	SUB	(HL)
	ADD	A,$18
	CP	$38
	JR	E6MSSB
;----------------------------------
DRMSCK	;Dr.���C�g��p�I
	LD	A,(PLYPSL)
	LD	HL,ENSVYL
	SUB	(HL)
	ADD	A,$14
	CP	$28+$10
	JR	E6MSSB 
;------------------------------
E6MSCK
	LD	E,B
;
	LD	A,(PLYPSL)
	LD	HL,ENSVYL
	SUB	(HL)
	ADD	A,$14
	CP	$28
E6MSSB
	JR	NC,E6C0A0
;
	LD	A,(PLXPSL)
	LD	HL,ENSVXL
	SUB	(HL)
	ADD	A,$10
	CP	$20
	JR	NC,E6C0A0
;
	INC	E
;
	LD	A,(ENMYNO2)
	CP	TODD
	JR	Z,E6C022
;
	PUSH	DE
	CALL	E6XYCK
	LD	A,(PLCMKI)
	XOR	$01
	CP	E
	POP	DE
	JR	NZ,E6C0A0
;
E6C022
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
	JR	NZ,E6C0A0
;
	LD	A,(WNDYPS)
	CP	$80
	JR	NZ,E6C0A0
;
	LD	A,(KEYA2)
	AND	%00010000
	JR	Z,E6C0A0
;
	SCF
	RET
E6C0A0
	AND	A	; (C) reset !
	RET
;============================================
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%				 %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;---------------------------------
E6STCK
	LD	A,(ENMODE2)
	CP	EMOVE
	JR	NZ,E6TC12
;
E6STCK2
	LD	A,(GMMODE)
	CP	GMAP
	JR	Z,E6TC12
;
		cp	GPLAY
		jr	nz,E6TC12	; �Q�[�����[�h�@�H
;					; Yes !!
		ld	a,(SBHR)
		cp	004
		jr	nz,E6TC12	; �t�F�[�h���@�H
;					; No !!
	LD	HL,ENSTFG
	LD	A,(MSGEFG)
;;	AND	A
	OR	(HL)
	LD	HL,WNDFLG
	OR	(HL)
	JR	NZ,E6TC12
;
	LD	A,(SCRLFG)
	AND	A
	JR	Z,E6TCF0
E6TC12
	POP	AF
E6TCF0
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%						    %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
E6HNSD
;;	DB	$0,$0,$0,$0,$0
;;;	DB	$7,$3,$1,$0,$0
E6HNSB
	LD	HL,ENHNFG
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,E6HN90
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
;;	LD	HL,E6HNSD
;;	ADD	HL,DE
;;	POP	AF
;;	AND	(HL)
;;	JR	NZ,E6HN30
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
	CALL	E6MVCL
;
	LD	HL,ENMOD3
	ADD	HL,BC
	LD	A,(HL)
	AND	%00100000
	JR	NZ,E6HN28
;
	CALL	ENBGCKL
E6HN28
	LD	HL,ENYSPD
	ADD	HL,BC
	POP	AF
	LD	(HL),A
;
	LD	HL,ENXSPD
	ADD	HL,BC
	POP	AF
	LD	(HL),A
E6HN30
	POP	AF
E6HN90
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%				 %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
E6MVCL	
;
	CALL	E6XCLC 		; X calc
;
E6YCLC
	PUSH	BC
	LD	A,C
	ADD	A,<ENNO
	LD	C,A
	
	CALL	E6XCLC		; Y calc
	POP	BC
	RET
;-----------------------------------------
E6XCLC
	LD	HL,ENXSPD
	ADD	HL,BC 
;
	LD	A,(HL)
	AND	A
	JR	Z,E6L090
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
E6L00
	ADD	HL,BC 
;
	POP	AF
;
	LD	E,$0
	BIT	7,A
	JR	Z,E6C00
	LD	E,$F0
E6C00
	SWAP	A
	AND	$0F
	OR	E
	RR	D
	ADC	A,(HL)
	LD	(HL),A
E6L090
	RET
;====================================================
E6ZCLC
	LD	HL,ENZSPD
	ADD	HL,BC 
;
	LD	A,(HL)
	AND	A
	JR	Z,E6L090
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
	JR	E6L00
;====================================
E6XCHK
	LD	E,$0
;
	LD	A,(PLXPSL)
	LD	HL,ENXPSL
	ADD	HL,BC
	SUB	(HL)
	BIT	7,A
	JR	Z,E6X010
;;	JR	NC,E6X010
	INC	E
E6X010
	LD	D,A
	RET
;====================================
E6YCHK
	LD	E,$2
;
	LD	A,(PLYPSL)
	LD	HL,ENYPSL
	ADD	HL,BC
	SUB	(HL)
	BIT	7,A
	JR	NZ,E6Y010
;;	JR	C,E6Y010
	INC	E
E6Y010
	LD	D,A
	RET
;====================================
E6YCHK2
	LD	E,$2
;
	LD	A,(PLYPSL)
	LD	HL,ENDSYP
	SUB	(HL)
	BIT	7,A
	JR	NZ,E6Y210
	INC	E
E6Y210
	LD	D,A
	RET
;====================================
E6XYCK
	CALL	E6XCHK
	LD	A,E
	LD	(WORK0),A
;
	LD	A,D
	BIT	7,A
	JR	Z,E62010
	CPL
	INC	A
E62010
	PUSH	AF
;
	CALL	E6YCHK
	LD	A,E
	LD	(WORK1),A
;
	LD	A,D
	BIT	7,A
	JR	Z,E6Y020
	CPL
	INC	A
E6Y020
	POP	DE
	CP	D
	JR	NC,E6Y030
;
	LD	A,(WORK0)
	JR	E6Y050
E6Y030
	LD	A,(WORK1)
E6Y050
	LD	E,A
	RET
;============================
E6CLER
	LD	HL,ENMODE
	ADD	HL,BC
	LD	(HL),$000
	RET
;=====================================
BSFLSB6
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	A,(HL)
	RST	00
	DW	N6L1000
	DW	N6L1800
	DW	N6L2000
;-------------------------------------
N6L1000
	CALL	LDTIM0
	LD	(HL),$A0
;
	LD	HL,ENFLSH
	ADD	HL,BC
	LD	(HL),$FF
;
INCWR61
	LD	HL,ENWRK1
	ADD	HL,BC
	INC	(HL)
	RET
;-------------------------------------
N6L1800
	CALL	LDTIM0
		ret	NZ
;;;11/11	JR	NZ,N6L1810
;
	LD	(HL),$C0
;
	LD	HL,ENFLSH
	ADD	HL,BC
	LD	(HL),$FF
;
		jp	INCWR61
;;;11/11	CALL	INCWR61
;;;11/11N6L1810
;;;11/11	RET
;-------------------------------------
N6L2000
	CALL	LDTIM0
	JR	NZ,N6L2010
;
N6L2008
	CALL	BBSDST	;(S)
;
	CALL	BGMSET	;(S)
;
	CALL	E6SVST
	JP	ENFEND
N6L2010
		jp	ESMRN6
;;;11/11	CALL	ESMRN6
;;;11/11	RET
;===========================================
ESMRN6
	AND	$07
		ret	NZ
;;;11/11	JR	NZ,K6L310
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
		jp	HBSMS6
;;;11/11	CALL	HBSMS6
;;;11/11K6L310
;;;11/11	RET
;
;===========================================
HBSMS6
	CALL	E6STCK2
;
	LD	A,(ENSVXL)
	LD	(WORK0),A
	LD	A,(ENDSYP)
	LD	(WORK1),A
;----------------------------------
SMKSDS6
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
HARTBS6
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
	JR	Z,HBS610
;
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),$F0
	JR	HBS620
HBS610
	LD	HL,ENZSPD
	ADD	HL,DE
	LD	(HL),$10
;
	LD	HL,ENZPSL
	ADD	HL,DE
	LD	(HL),$08
HBS620
E6CLBB
	CALL	E6CLER
;
	LD	HL,SOUND3
	LD	(HL),$1A	;(S)
;;	CALL	BBSDST	;(S)
	RET
;==============================
;- - Save data set - - - -
E6SVST
	LD	HL,GRRMSV
	LD	A,(GRNDPT)
	LD	E,A
	LD	A,(DJFLAG)
;;	LD	D,B
	LD	D,A
	LD	A,(DNJNNO)
	CP	DJROOM2
	JR	NC,E6SS10
	CP	DJROOM
	JR	C,E6SS10
	INC	D
;;;	LD	D,$01
E6SS10
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

