
		onbankgroup

;==============	�o���N�O ================================================
BANK0		GROUP	0
;-------------<	ZCO >-------------
		EXTERN	RNDSUB,OBJBG,BGMSET,SOUNDCLR
;
;-------------<	ZPL >-------------
		EXTERN	PLPSRV,MSGCHK,MSGCHK2,DUSHCL,KNCSET,KNFLSH,PLSHST
		EXTERN	MVCALC,FLASHST,EXIDSH,NXGOTO,LDTIM0,PLXCLC,ENHNCL
		EXTERN	BBSDST,MSGCH2,YOSSISET,NAZOCLR,NOSDST,NXGOTO3,LDTIM1
		EXTERN	LDTIM3,BG1CHG,PLPTSTL,PLSDCL,PLPTST,NXGOTO4,MSGCH3
		EXTERN	DUSHCL2,CARITMD,PTOBI,PBULE,POVER,PINDR1,PMOVE,PFOLE
		EXTERN	PTATE,PMGIC,POKAR,FDIN,PSWIM,PBOXER,LOVED,PEACH
		EXTERN	GMAP,PBUME,ENDG,GPLAY
;
;-------------<	ZES >-------------
		EXTERN	ISIBRKL,CRENENL,PLDMST0,ENMOVE,ENBGCKL,ENBGCK2L
		EXTERN	ENPTST,STATINC,ENIDSHL,ENIDSH2L,BSSDCK,CREPKEL
		EXTERN	CRENPLL,CRENPL2L,EN2CST,EN1CST,PSERCHL,PSERCH2L
		EXTERN	CRKNENL,ENFEND,CRENPSL,ENPSSV,ENSDCL,NXOMSBL,EFAIL
		EXTERN	PLBGCKL,ENALCL,HNSMST,ENOMST,ENSZST,SADWSTL,SHRVSE
		EXTERN	ITEMGETS,ENBITON,ENMDSTL,O2MCHK,CRKNKNL,EFOLE,EFIRE
		EXTERN	EINIT,EMOVE,ESTOP,ECACH,ESHOT
;
;-------------<	ZBS >-------------
		EXTERN	DJRMRD,HABATAKI,BGCRRD
;
;-------------<	ZMA >-------------
		EXTERN	PBSET,BG1UNIT_ATR_SUB
		EXTERN	PRN
;
;==============	�o���N�Q ================================================
BANK2		GROUP	2
;-------------<	ZEX >-------------
		EXTERN	SPUNDT,SMK1,RZNZ,FLSH,FUCKS,BFZN,DSZN,HNSM
;
;==============	�o���N�R ================================================
BANK3		GROUP	3
;-------------<	ZEN >-------------
		EXTERN	EFLSST,BHFIR,HARTB,R7BEM,RENO7,BGKAO,UFOCH,TERSA
		EXTERN	FISHG,SBOMB,BOMBR,NINTM,HAYAB,TUKAI,KTOBJ,BSLIM
		EXTERN	SLIMB,TBOSS,BSNAK,GORMA,BSKEL,BFIRE,BBIRD,SWBLK2
		EXTERN	BFISH,SWTRP,NIWAT,KODOMA,PAPA0,KAMEI,RANEM,PANEL
		EXTERN	BHANA,SHANA,HEIS0,MORI1,OCTA1,KODOMB,IZUMI,SONIC
		EXTERN	KEYSM,MIZUB,SLOT,HART1,RUPY1,OCHAN,KAKIN,SLIMS
		EXTERN	ARIMA,PYAAA,ZONBI,TODD,USAGI,ONPU,AKUMA,MVHAS,WANI
		EXTERN	GAGE,GIRL1,WANWAN,OBAKE,PUKPK,PUKPJ,HASIR,FIREB
		EXTERN	POWDR,KAZAM,NIWAX,SEIREN,KENBM,SARUK,AMUST,BOSS
		EXTERN	HODAI,SKEL1,SANBO,MORYA,IWAGO,SWBLKU,SWBLKD
;
;==============	�o���N�W ================================================
BANK8		GROUP	8
;-------------<	ZBD >-------------
		EXTERN	GRBGCR,DJBGCR
;
;==============	�o���N�P�S ==============================================
BANK14		GROUP	$14
;-------------<	ZEX >-------------
		EXTERN	WTUP
;
;========================================================================
	PUBALL
;
BANK15	GROUP	$15
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
;=================================
ENRMCLL
	CALL	ENSDCL
;
	LD	HL,ENZSDR
	ADD	HL,BC
	LD	(HL),B
	LD	HL,ENXSDR
	ADD	HL,BC
	LD	(HL),B
	LD	HL,ENYSDR
	ADD	HL,BC
	LD	(HL),B
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),B
	LD	HL,ENSTAT
	ADD	HL,BC
	LD	(HL),B
	LD	HL,ENCBFG
	ADD	HL,BC
	LD	(HL),B
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	(HL),B
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	(HL),B
	LD	HL,ENWRK2
	ADD	HL,BC
	LD	(HL),B
	LD	HL,ENWRK3
	ADD	HL,BC
	LD	(HL),B
	LD	HL,ENWRK4
	ADD	HL,BC
	LD	(HL),B
	LD	HL,ENTIM0
	ADD	HL,BC
	LD	(HL),B
	LD	HL,ENTIM1
	ADD	HL,BC
	LD	(HL),B
	LD	HL,ENTIM2
	ADD	HL,BC
	LD	(HL),B
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	(HL),B
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	(HL),B
;;	LD	HL,ENCHPT
;;	ADD	HL,BC
;;	LD	(HL),B
	XOR	A
	CALL	ENPTST
	LD	HL,ENCONT
	ADD	HL,BC
	LD	(HL),B
	LD	HL,ENLIFE
	ADD	HL,BC
	LD	(HL),B
	LD	HL,ENHNFG
	ADD	HL,BC
	LD	(HL),B
	LD	HL,ENXPSH
	ADD	HL,BC
	LD	(HL),B
	LD	HL,ENYPSH
	ADD	HL,BC
	LD	(HL),B
	LD	HL,ENWATR
	ADD	HL,BC
	LD	(HL),B
	LD	HL,ENTIM3
	ADD	HL,BC
	LD	(HL),B
	LD	HL,ENTIM4
	ADD	HL,BC
	LD	(HL),B
	LD	HL,ENCAST
	ADD	HL,BC
	LD	(HL),B
	LD	HL,ENFLSH
	ADD	HL,BC
	LD	(HL),B
	LD	HL,ENITMF
	ADD	HL,BC
	LD	(HL),B
	LD	HL,ENBCOF
	ADD	HL,BC
	LD	(HL),B
	LD	HL,ENSHMK
	ADD	HL,BC
	LD	(HL),$FF
		ld	hl,ENHNMD
		add	hl,bc
		ld	(hl),b
	RET
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	��X�C�b�`       			%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
SIROSMV
	LD	A,(DJSVBF)
	AND	%00100000
	JP	NZ,E8CLER
;
	CALL	E8STCK
;
	LD	A,(ENSTAT2)
	RST	00
	DW	SRS1000
	DW	SRS2000
	DW	SRS3000
;-----------------------------------
SRS1000
	LD	A,(SWCHTM)
	AND	A
	JR	Z,SRS1010
;
	CALL	STATINC
;
	CALL	LDTIM0
	LD	(HL),$20
SRS1010
	RET
;-----------------------------------
SRS2000
	LD	A,$02
	LD	(PLSTOP),A
	LD	(ITEMNOT),A
;
	CALL	LDTIM0
		ret	NZ
;;;;;;;;	JR	NZ,SRS2010
;
	LD	(HL),$30
;
	LD	A,$11
	LD	(SOUND3),A	;(S) TODY
;;	LD	($D3E8),A	;(S)
;
		jp	STATINC
;;;;;;;;	CALL	STATINC
;;;;;;;;SRS2010
;;;;;;;;	RET
;-----------------------------------
SRS3000
	LD	A,$02
	LD	(PLSTOP),A
;
	CALL	LDTIM0
	JR	NZ,SRS3010
;
	LD	(ITEMNOT),A
	LD	(TILTXD),A
;;	LD	($D3E8),A	;(S)
;
	LD	A,$39
	CALL	MSGCHK
;
	CALL	E8SVST
;
	JP	E8CLER
;-------------------------------
SRS3010
	LD	E,$01
	AND	$04
	JR	Z,SRS3020
	LD	E,$FF
SRS3020
	LD	A,E
	LD	(TILTXD),A
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�Ђ��ς�X�C�b�`�œ����u���b�N		%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
SWTM	EQU	$0D
;
SWBLK1CD
	DB	$F8,$17,$FA,$17
;--��
SWBLKUMV
	LD	DE,SWBLK1CD
	CALL	EN2CST
;
	CALL	E8STCK
;
	XOR	A
	LD	(ENHELP),A
;
	LD	A,(ENSTAT2)
	RST	00
	DW	SWU1000
	DW	SWU2000
;---------------------------------------
SWU1000
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	(HL),A
	ADD	A,$10
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	(HL),A
	JP	STATINC
;---------------------------------------
SWU2000
	LD	A,(HIKUSFG)
	CP	$02
	JR	Z,SWU2030
	AND	A
	JR	Z,SWU2010
;
	LD	HL,ENCONT
	ADD	HL,BC
	INC	(HL)
	LD	A,(HL)
	CP	$0A
	JR	C,SWU2008
;
	LD	(HL),B
;
	LD	A,$11
	LD	(SOUND3),A	;(S)
;
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENYPSL
	ADD	HL,BC
	CP	(HL)
	JR	Z,SWU2008
;
	DEC	(HL)
SWU2008
	RET
SWU2010		
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENYPSL
	ADD	HL,BC
	CP	(HL)
	JR	Z,SWU2020
;
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	INC	(HL)
	CP	SWTM ;$0A
	JR	C,SWU2030
;
	LD	(HL),B
;
	LD	HL,ENYPSL
	ADD	HL,BC
	INC	(HL)
	JR	SWU2030
SWU2020
	LD	HL,ENHELP
	INC	(HL)
SWU2030
;;	RET
;==========================================
SWCRCK
	CALL	ENPSSV
;
	CALL	E8XCHK
	ADD	A,$0C
	CP	$18
	JR	NC,SWU2060
;
	CALL	E8YCHK
	ADD	A,$10
	CP	$1C
	JR	NC,SWU2060
;
	CALL	DUSHCL2
	CALL	PLSDCL
;
	CALL	E8XYCK
	LD	A,E
	CP	$00
	JR	NZ,SWU2023
;
	LD	A,(ENSVXL)
	ADD	A,$0C
	LD	(PLXPSL),A
	RET
SWU2023
	CP	$01
	JR	NZ,SWU2040
;
	LD	A,(ENSVXL)
	ADD	A,$F4
	LD	(PLXPSL),A
	RET
SWU2040
	CP	$02 
	JR	NZ,SWU2050
;
	LD	A,(ENMYNO2)
	CP	SWBLKD
	JR	NZ,SWU2048
;
	LD	A,(ENHELP)
	AND	A
	RET	NZ
;
SWU2048
	LD	A,(ENDSYP)
	ADD	A,$F0
	LD	(PLYPSL),A
	RET
SWU2050
	LD	A,(ENMYNO2)
	CP	SWBLKU
	JR	NZ,SWU2058
;
	LD	A,(ENHELP)
	AND	A
	RET	NZ
;
SWU2058
	LD	A,(ENDSYP)
	ADD	A,$0C
	LD	(PLYPSL),A
SWU2060
	RET
;=============================================
;--��
SWBLKDMV
	LD	DE,SWBLK1CD
	CALL	EN2CST
;
	CALL	E8STCK
;
	XOR	A
	LD	(ENHELP),A
;
	LD	A,(ENSTAT2)
	RST	00
	DW	SWD1000
	DW	SWD2000
;---------------------------------------
SWD1000
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	(HL),A
	SUB	$10
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	(HL),A
	JP	STATINC
;---------------------------------------
SWD2000
	LD	A,(HIKUSFG)
	CP	$02
	JR	Z,SWD2030
	AND	A
	JR	Z,SWD2010
;
	LD	HL,ENCONT
	ADD	HL,BC
	INC	(HL)
	LD	A,(HL)
	CP	$0A
	JR	C,SWD2008
;
	LD	(HL),B
;
	LD	A,$11
	LD	(SOUND3),A	;(S)
;
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENYPSL
	ADD	HL,BC
	CP	(HL)
	JR	Z,SWD2008
;
	INC	(HL)
SWD2008
	RET
SWD2010		
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENYPSL
	ADD	HL,BC
	CP	(HL)
	JR	Z,SWD2020
;
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	INC	(HL)
;;	CP	$0A
	CP	SWTM ;$0A
	JR	C,SWD2030
;
	LD	(HL),B
;
	LD	HL,ENYPSL
	ADD	HL,BC
	DEC	(HL)
	JR	SWD2030
SWD2020
	LD	HL,ENHELP
	INC	(HL)
SWD2030
		jp	SWCRCK
;;;;;;;;	CALL	SWCRCK
;;;;;;;;	RET
;=======================================================
;--HIDARI
SWBLKLMV
	LD	DE,SWBLK1CD
	CALL	EN2CST
;
	CALL	E8STCK
;
	XOR	A
	LD	(ENHELP),A
;
	LD	A,(ENSTAT2)
	RST	00
	DW	SWL1000
	DW	SWL2000
;---------------------------------------
SWL1000
	LD	HL,ENXPSL
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	(HL),A
	ADD	A,$10
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	(HL),A
	JP	STATINC
;---------------------------------------
SWL2000
	LD	A,(HIKUSFG)
	CP	$02
	JR	Z,SWL2030
	AND	A
	JR	Z,SWL2010
;
	LD	HL,ENCONT
	ADD	HL,BC
	INC	(HL)
	LD	A,(HL)
	CP	$0A
	JR	C,SWL2008
;
	LD	(HL),B
;
	LD	A,$11
	LD	(SOUND3),A	;(S)
;
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENXPSL
	ADD	HL,BC
	CP	(HL)
	JR	Z,SWL2008
;
	DEC	(HL)
SWL2008
	RET
SWL2010		
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENXPSL
	ADD	HL,BC
	CP	(HL)
	JR	Z,SWL2020
;
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	INC	(HL)
;;	CP	$0A
	CP	SWTM ;$0A
	JR	C,SWL2030
;
	LD	(HL),B
;
	LD	HL,ENXPSL
	ADD	HL,BC
	INC	(HL)
	JR	SWL2030
SWL2020
	LD	HL,ENHELP
	INC	(HL)
SWL2030
		jp	SWCRCK
;;;;;;;;	CALL	SWCRCK
;;;;;;;;	RET
;=============================================
;--�E
SWBLKRMV
	LD	DE,SWBLK1CD
	CALL	EN2CST
;
	CALL	E8STCK
;
	XOR	A
	LD	(ENHELP),A
;
	LD	A,(ENSTAT2)
	RST	00
	DW	SWR1000
	DW	SWR2000
;---------------------------------------
SWR1000
	LD	HL,ENXPSL
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	(HL),A
	SUB	$10
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	(HL),A
	JP	STATINC
;---------------------------------------
SWR2000
	LD	A,(HIKUSFG)
	CP	$02
	JR	Z,SWR2030
	AND	A
	JR	Z,SWR2010
;
	LD	HL,ENCONT
	ADD	HL,BC
	INC	(HL)
	LD	A,(HL)
	CP	$0A
	JR	C,SWR2008
;
	LD	(HL),B
;
	LD	A,$11
	LD	(SOUND3),A	;(S)
;
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENXPSL
	ADD	HL,BC
	CP	(HL)
	JR	Z,SWR2008
;
	INC	(HL)
SWR2008
	RET
SWR2010		
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENXPSL
	ADD	HL,BC
	CP	(HL)
	JR	Z,SWR2020
;
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	INC	(HL)
;;	CP	$0A
	CP	SWTM ;$0A
	JR	C,SWR2030
;
	LD	(HL),B
;
	LD	HL,ENXPSL
	ADD	HL,BC
	DEC	(HL)
	JR	SWR2030
SWR2020
	LD	HL,ENHELP
	INC	(HL)
SWR2030
		jp	SWCRCK
;;;;;;;;	CALL	SWCRCK
;;;;;;;;	RET
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�����X�C�b�`						%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ONOFSCD
	DB	$58,$03,$58,$23
;
ONOFSMV
	LD	HL,ENLIFE
	ADD	HL,BC
	LD	(HL),$FF
;
;;	LD	A,(ONOFFG)
;;	AND	A
;;	JR	Z,OOS010
	CALL	LDTIM0
;
;;	LD	A,(FRCNT)
	RLA
;;	RLA
	AND	%00010000
	LD	(ENFLCL),A
OOS010
	LD	DE,ONOFSCD
	CALL	EN2CST
;
	CALL	E8STCK
;
	CALL	ENHNCL
;
	CALL	CRKNENL
	CALL	M8CROS
;
	CALL	ENBGCKL
;
	LD	HL,ENFLSH
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,OOS020
;
	LD	(HL),B
;
	LD	A,(ONOFTM)
	AND	A
	JR	NZ,OOS020
;
	LD	A,$01
	LD	(ONOFTM),A
;
	CALL	LDTIM0
	LD	(HL),$18
;
	LD	A,$0E
	LD	(SOUND2),A	;(S)
OOS020
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;% 	��S���S��		                         %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
IWAGOMV
	LD	A,(ENSTAT2)
	AND	A
	JP	NZ,IWAGOMV2
;
	CALL	E8STCK
;
	CALL	LDTIM0
	JR	NZ,IWGS010
;
	CALL	RNDSUB
	AND	$3F
	ADD	A,$30
	LD	(HL),A
;
	LD	A,(PLYPSL)
	CP	$18
	RET	C
;
	LD	A,IWAGO
	CALL	ENIDSHL
	RET	C
;
	CALL	RNDSUB
	RLA
	RLA
	RLA
	RLA
	AND	$70
	ADD	A,$18
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),$10
;
	LD	HL,ENMOD0
	ADD	HL,DE
	LD	(HL),%00010010
;
	LD	HL,ENMOD1
	ADD	HL,DE
	SET	7,(HL)
;
	LD	HL,ENSTAT
	ADD	HL,DE
	INC	(HL)
IWGS010
	RET
;
;
;
;===================================
IWAGOCD
	DB	$5C,$00,$5E,$00
	DB	$5E,$20,$5C,$20
	DB	$5E,$60,$5C,$60
	DB	$5C,$40,$5E,$40
IWGXSD
	DB	$0C,$F4,$05,$FB
IWGYSD
	DB	$08,$0A,$06,$0C
IWGZSD
	DB	$18,$20,$1C,$28
;
IWAGOMV2
	LD	DE,IWAGOCD
	CALL	EN2CST
;
	CALL	E8STCK
;
	CALL	ENHNCL
;
	CALL	CREPKEL
;
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	AND	$03
	CALL	ENPTST
;
	CALL	E8MVCL
;
	CALL	E8ZCLC
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
	JR	Z,IWG010
;
	LD	(HL),B
;
	CALL	RNDSUB
	AND	$03
	LD	E,A
	LD	D,B
	LD	HL,IWGXSD
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
;
	CALL	RNDSUB
	AND	$03
	LD	E,A
	LD	D,B
	LD	HL,IWGYSD
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),A
;
	CALL	RNDSUB
	AND	$03
	LD	E,A
	LD	D,B
	LD	HL,IWGZSD
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),A
;
	LD	A,$20
	LD	(SOUND1),A	;(S)	
IWG010
	LD	A,(ENSVXL)
	CP	$A8
	JP	NC,E8CLER
;
	LD	A,(ENDSYP)
	CP	$84
	JP	NC,E8CLER
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;% 	��������Ƙb������                               %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
MSPNTMV
	CALL	E8STCK
;
;-- POWDR CHECK ---
	LD	E,ENNO-1
	LD	D,B
WAR1008
	LD	HL,ENMODE
	ADD	HL,DE
	LD	A,(HL)
	CP	EMOVE
	JR	NZ,WAR1010
;
	LD	HL,ENMYNO
	ADD	HL,DE
	LD	A,(HL)
	CP	POWDR
	JR	NZ,WAR1010
;
	LD	HL,ENTIM0
	ADD	HL,DE
	LD	A,(HL)
	CP	$08
	JR	NZ,WAR1010
;
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	A,(ENSVXL)
	SUB	(HL)
	ADD	A,$08
	CP	$10
	JR	NC,WAR1010
;
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	A,(ENDSYP)
	SUB	(HL)
	ADD	A,$08
	CP	$10
	JR	NC,WAR1010
;
	LD	A,(GRNDPT)
	CP	$DF
	LD	A,$92
	JR	Z,WAR1002
;
	LD	A,(OBAKEFG)
	AND	A
	RET	NZ
;
	LD	A,$43
WAR1002
		jp	MSGCHK
;;;;;;;;	CALL	MSGCHK
;;;;;;;;	RET
WAR1010
	DEC	E
	LD	A,E
	CP	$FF
	JR	NZ,WAR1008
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;% 	�b����                                           %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
EWOODMV
	CALL	E8STCK
;
	CALL	E8MSCK
	RET	NC
;
	LD	A,$12
		jp	MSGCHK
;;;;;;;;	CALL	MSGCHK
;;;;;;;;	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;% �s���j�A                                              %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
BLANKACD
	DB	$FF,$00,$FF,$00
	DB	$54,$00,$56,$00
	DB	$58,$00,$5A,$00
	DB	$56,$20,$54,$20
	DB	$5A,$20,$58,$20
BLANKACD2
	DB	$5C,$00
	DB	$5C,$20
	DB	$5E,$00
	DB	$5E,$00
BLANKAMV
	LD	A,(ENCHPT2)
	CP	$FF
	JR	Z,BLA0010
	CP	$05
	JR	C,BLA0000
;
	SUB	$05
	LD	(ENCHPT2),A
;
;	LD	A,(ENDSYP)
;	ADD	A,$02
;	LD	(ENDSYP),A
;
	LD	DE,BLANKACD2
	CALL	EN1CST
	JR	BLA0010
BLA0000
	LD	DE,BLANKACD
	CALL	EN2CST
BLA0010
	CALL	E8STCK
;
	CALL	E8HNSB
;
	CALL	E8MVCL
	CALL	ENBGCKL
;
	LD	A,(ENSTAT2)
	RST	00
	DW	BLA1000
	DW	BLA2000
;;;	DW	BLA3000
	DW	BLA4000
;;;	DW	BLA5000
;;;	DW	BLA6000
;--------------------------------------
BLA1000
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),$08
;	
;	LD	HL,ENWATR
;	ADD	HL,BC
;	LD	(HL),B  
;;
;	CALL	LDTIM0
;	CALL	RNDSUB
;	AND	$3F
;	OR	$20
;	LD	(HL),A
;;
;	LD	HL,ENMOD0
;	ADD	HL,BC
;	SET	6,(HL)
;
;
	CALL	LDTIM0
	CALL	RNDSUB
	AND	$7F
	ADD	A,$40
	LD	(HL),A	
;
	JP	STATINC
;--------------------------------------
BLA2000
	CALL	CRENPLL
;
	CALL	LDTIM0
	JR	NZ,BLA2008
;
	LD	HL,ENMOD0
	ADD	HL,BC
	LD	(HL),%00010010
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),$18
;
	CALL	STATINC
;
	LD	HL,ENXSPD
	ADD	HL,BC
	SLA	(HL)
;--------------------------------
E8WPST
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
;;;;;;;;	CALL	EXIDSH
;;;;;;;;	RET
;;	JP  	E8WPST
BLA2008
	LD	HL,ENCBFG
	ADD	HL,BC
	LD	A,(HL)
	AND	$03
	JR	Z,BLA2010
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	A,(HL)
	CPL
	INC	A
	LD	(HL),A
BLA2010
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	E,$06
	LD	A,(HL)
	AND	%10000000
	JR	Z,BLA2020
	LD	E,$05
BLA2020	
	LD	A,E
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;	RET
;	CALL	LDTIM0
;	JR	NZ,BLA2010
;;
;	LD	HL,ENWATR
;	ADD	HL,BC
;	LD	(HL),$02
;;
;	CALL	STATINC
;BLA2010
	RET
;;--------------------------------------
;BLACDT
;	DB	6,5,7,7
;;
;BLA3000
;	LD	A,(FRCNT)
;	XOR	C
;	AND	$07
;	JR	NZ,BLA3090
;;
;	CALL	E6XYCK
;	LD	D,B
;	LD	HL,BLACDT
;	ADD	HL,DE
;	LD	A,(HL)
;	CALL	ENPTST
;	LD	HL,ENWRK0
;	ADD	HL,BC
;	LD	(HL),A
;;
;	LD	A,$08
;	CALL	PSERCHL
;BLA3090
;	CALL	E6MVCL
;;;	CALL	ENBGCKL
;;
;	CALL	E6XCHK
;	ADD	A,$18
;	CP	$30
;	JR	NC,BLA30A0
;;
;	CALL	E6YCHK
;	ADD	A,$18
;	CP	$30
;	JR	NC,BLA30A0
;;
;	LD	HL,ENMOD0
;	ADD	HL,BC
;	RES	6,(HL)
;;
;	LD	HL,ENWATR
;	ADD	HL,BC
;	LD	(HL),B 
;;
;	LD	HL,ENZSPD
;	ADD	HL,BC
;	LD	(HL),$18
;;
;	CALL	STATINC
;;
;	CALL	E6WPST
;BLA30A0
;	RET
;----------------------------------------
BLA4000
	CALL	CREPKEL
;
	CALL	E8ZCLC
;
	LD	HL,ENZSPD
	ADD	HL,BC
	DEC	(HL)
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	AND	%10000000
	JR	Z,BLA4030
;
	LD	(HL),B
;
;	LD	HL,ENWRK0
;	ADD	HL,BC
;	LD	A,(HL)
;	CALL	ENPTST
;
	CALL	E8WPST
;
;	LD	HL,ENWATR
;	ADD	HL,BC
;	LD	(HL),$02
;
	CALL	LDTIM0
	CALL	RNDSUB
	AND	$7F
	ADD	A,$50
	LD	(HL),A	
;
	LD	HL,ENXSPD
	ADD	HL,BC
	SRA	(HL)
;
	LD	HL,ENMOD0
	ADD	HL,BC
	LD	(HL),%01010010
;
	CALL	STATINC
	LD	(HL),$01
	RET
BLA4030
	LD	E,$01
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	A,(HL)
	AND	%10000000
	JR	NZ,BLA4050
	LD	E,$03
BLA4050
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	A,(HL)
	AND	%10000000
	JR	Z,BLA4060
;
	INC	E
BLA4060
	LD	A,E
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;	RET
;;----------------------------------------
;BLA5000
;	CALL	E6MVCL
;;	CALL	ENBGCKL
;	JP	E6GAWY2
;;----------------------------------------
;BLA6000
;	CALL	STATINC
;	LD	(HL),B
;	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	���X�g�͂���			%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
EHASIGCD
	DB	$00,$00,$46,$07
	DB	$00,$08,$7E,$07
;
	DB	$F0,$00,$46,$07
	DB	$F0,$08,$7E,$07
;
	DB	$E0,$00,$46,$07
	DB	$E0,$08,$7E,$07
;
	DB	$D0,$00,$46,$07
	DB	$D0,$08,$7E,$07
;
	DB	$C0,$00,$46,$07
	DB	$C0,$08,$7E,$07
;- - - - - - - - - - - - - - - - - - - - -
EHASIGMV
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	ADD	A,$01
	SLA	A
	LD	C,A
;
	LD	HL,EHASIGCD
	CALL	ENOMST
;
	LD	A,10
	CALL	NXOMSBL
;
	CALL	E8STCK
;
	LD	A,(GMMODE)
	CP	ENDG
	RET	Z
;
	LD	A,(ENSTAT2)
	RST	00
	DW	EHSF000
	DW	EHS0000
	DW	EHS1000
	DW	EHS1800
	DW	EHS2000
;-------------------------------------------------
EHSF000
	CALL	LDTIM0
	LD	(HL),$C0
	JP	STATINC
;-------------------------------------------------
EHS0000
	CALL	LDTIM0
	CP	$40
	JR	NZ,EHS0010
;
	DEC	(HL)
;
	LD	A,$D7
	JP  	MSGCHK
EHS0010
	AND	A
	RET	NZ
;
	LD	A,$50
	DEC	A
	LD	(WORK0),A
	LD	A,$30
	LD	(WORK1),A
;
	LD	A,SMK1
	CALL	EXIDSH
;
	LD	A,$2F
	LD	(SOUND1),A	;(S)
;
	LD	A,$00
	CALL	ENPTST
	JP	STATINC
;-------------------------------------------------
EHS1000
	LD	A,(PLXPSL)
	SUB	$50
	ADD	A,$08
	CP	$10
	JR	NC,EHS1010
	LD	A,(PLYPSL)
	SUB	$30
	ADD	A,$08
	CP	$10
		ret	C
;;;;;;;;	JR	NC,EHS1010
;;;;;;;;;
;;;;;;;;	RET
EHS1010	
		jp	STATINC
;;;;;;;;	CALL	STATINC
;;;;;;;;	RET
;-------------------------------------------------
EHS1800
	LD	A,(PLXPSL)
	SUB	$50
	ADD	A,$08
	CP	$10
	JR	NC,EHS1810
;
	LD	A,(PLYPSL)
	SUB	$30
	ADD	A,$08
	CP	$10
	JR	NC,EHS1810
;
	LD	A,(PLJPFG)
	AND	A
	RET	NZ
;
	CALL	STATINC
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	(HL),$30
EHS1810
	RET
;-------------------------------------------------
EHS2000
	LD	A,$02
	LD	(PLSTOP),A
	LD	(ITEMNOT),A
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	LD	(PLYPSL),A
;
	LD	A,$50
	LD	(PLXPSL),A
;
	LD	A,(FRCNT)
	AND	$07
	JR	NZ,EHS2010
;
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	CP	$04
	JR	Z,EHS2010
	INC	(HL)
EHS2010
	LD	A,(FRCNT)
	AND	$03
	JR	NZ,EHS2030
;
	LD	HL,ENWRK0
	ADD	HL,BC
	DEC	(HL)
	LD	A,(HL)
	CP	$12
	JR	NC,EHS2030
;
	XOR	A
	LD	(ITMODE),A
	LD	A,ENDG
	LD	(GMMODE),A
	RET	
EHS2030
	LD	A,$02
	LD	(PLCMKI),A
;
	LD	A,(FRCNT)
	AND	$08
	LD	(PLWKCT),A
;
	PUSH	BC
	CALL	PLPTSTL
	POP	BC
;
	CALL	DUSHCL
	LD	(PCUTFG),A
	LD	(WCUTFG),A
	RET
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�����u�����{�X						%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
MBOSSMV
	LD	A,(WANFLG)
	CP	$80
	JP	NZ,E8CLER
;				;YES !
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	NZ,MSB000
;
	LD	A,(ENCHPT2)
	CP	$0C
	JR	NC,MSB000
	ADD	A,$06
	LD	(ENCHPT2),A
MSB000
	CALL	MBOSSCS
;
	LD	A,(ENMODE2)
	CP	EFAIL
	JR	NZ,MSB001
;
	LD	A,$0C
	CALL	MBNOKB
	JP	BSFLSB8
;
MSB001
	CALL	SHRVSE
;
	CALL	E8STCK
;
	CALL	E8HNSB
;
	CALL	CREPKEL
;
	LD	HL,ENMOD3
	ADD	HL,BC
	SET	6,(HL)
	LD	HL,ENMOD0
	ADD	HL,BC
	RES	7,(HL)
;
	CALL	E8MVCL
	CALL	ENBGCKL
;
	CALL	E8ZCLC
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
	JR	Z,MSB0010
;
	LD	(HL),B
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),B
MSB0010
	LD	HL,ENSTAT
	ADD	HL,BC
	LD	A,(HL)
;	LD	A,(ENSTAT2)
;	CP	$0A
;	JR	C,MTST1
;;
;	LD	A,$01
;	LD	(SOUND4),A
;	JP	E8CLER
;MTST1
	RST	00
	DW	MSB0000
	DW	MSB1000
	DW	MSB2000
	DW	MSB3000
	DW	MSB4000
	DW	MSB5000
	DW	MSB6000
	DW	MSB7000
	DW	MSB8000
	DW	MSB9000
;==========================================
MSB0000	;�C�j�V����
	CALL	LDTIM0
	LD	(HL),$20
;
	XOR	A
	LD	(BSKBPT),A
	CALL	ENPTST
	CALL	STATINC
;
MSBMKST
	CALL	E8XCHK
	LD	A,E
	LD	(BSKBMK),A
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	(HL),A
	RET
;==========================================
MSB1000	;�͂��߂̂������сI
	CALL	LDTIM0
		ret	NZ
;;;;;;;;	JR	NZ,MSB1020
;
	LD	A,$91
	CALL	MSGCH2
;
	LD	HL,MSGEFG
	RES	7,(HL)
;
	CALL	STATINC
;
	CALL	LDTIM3
	LD	(HL),$30
;
	LD	HL,ENMOD3
	ADD	HL,BC
	LD	(HL),%10000100
;
	LD	A,$01
	LD	(BSKBPT),A
	LD	A,$01
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;	RET
;;;;;;;;MSB1020
;;;;;;;;	RET
;==========================================
MBSXAD
	DB	$08,$F8
MBSYAD
	DB	$FC,$FC
MBSXSD
	DB	$20,$E0
MBSYSD
	DB	$00,$00
;
MSBSHX
	DB	$D0,$30
;
MSB2000	;�t�b�g���[�N
	CALL	LDTIM1
	JR	Z,MSB2008	;���������I
;
	CP	$0C
	JR	NZ,MSB2001
;
;- - - - - - - - - - - - - - - - -
	LD	A,MORYA
	CALL	ENIDSHL
	JR	C,MSB2001
;
	LD	A,$0A
	LD	(SOUND3),A	;(S)
;
	PUSH	BC
;
	LD	A,(WORK2)
	LD	C,A
;
	LD	HL,MBSXAD
	ADD	HL,BC
;
	LD	A,(WORK0)
	ADD	A,(HL)
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,MBSYAD
	ADD	HL,BC
;
	LD	A,(WORK1)
	ADD	A,(HL)
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,MBSXSD
	ADD	HL,BC
;
	LD 	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,MBSYSD
	ADD	HL,BC
;
	LD 	A,(HL)
	LD	HL,ENYSPD
	ADD	HL,DE
	LD	(HL),A
;
	LD 	A,(WORK2)
	LD	HL,ENCHPT
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,ENMUKI
	ADD	HL,DE
	LD	(HL),A
;
	POP	BC
MSB2001
	CALL	LDTIM1
	LD	E,$00
	CP	$0C
	JR	C,MSB2002
	LD	E,$02
MSB2002
	LD	A,E
	CALL	ENPTST
;
		jp	ENSDCL
;;;;;;;;	CALL	ENSDCL
;;;;;;;;	RET
MSB2008
	CALL	LDTIM3
	JR	NZ,MSB2010
;
	CALL	LDTIM0
	LD	(HL),$30
;
	CALL	ENSDCL
;
		jp	STATINC
;;;;;;;;	CALL	STATINC
;;;;;;;;	RET
MSB2010	
	LD	A,(ENHELP)
	AND	A
	JR	Z,MSB2090
;
	LD	A,(PLXPSL)
	PUSH	AF
;
	CALL	E8XCHK
	LD	D,B
	LD	HL,MSBSHX
	ADD	HL,DE
	LD	A,(PLXPSL)
	ADD	A,(HL)
	LD	(PLXPSL),A
;
	LD	A,$0C
	CALL	PSERCHL
;
	POP	AF
	LD	(PLXPSL),A
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),$10
MSB2090
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	RRA
	AND	$01
	CALL	ENPTST
;
	LD	(BSKBPT),A
;
	CALL	MSBMKST
;
	LD	HL,ENTIM2
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	NZ,MSB20A0
;
	CALL	RNDSUB
	AND	$3F
	ADD	A,$30
	LD	(HL),A
;
	CALL	LDTIM1
	LD	(HL),$18
MSB20A0
	RET
;==========================================
MSB3XSD
	DB	$28,$D8
;;	DB	$20,$E0
;
MSB3000	;�ˌ�����
	CALL	LDTIM0
	JR	NZ,MSB3010
;
	LD	(HL),$22
;
	CALL	ENSDCL
;
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	E,(HL)
	LD	D,B
	LD	HL,MSB3XSD
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
		jp	STATINC
;;;;;;;;	CALL	STATINC
;;;;;;;;	RET
MSB3010
	AND	$07
	JR	NZ,MSB3020
;
	LD	A,$09
	LD	(SOUND1),A	;(S)
;
MSB3020
	CALL	ENSDCL
;
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	AND	$01
	ADD	A,$02
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;	RET	
;============================================
MSB4000	;�ˌ��I
	CALL	LDTIM0
	JR	NZ,MSB4050
;
	CALL	STATINC
		jp	STATINC
;;;;;;;;	CALL	STATINC
;;;;;;;;	RET
MSB4050
	LD	HL,ENCBFG
	ADD	HL,BC
	LD	A,(HL)
	AND	$03
	JR	Z,MSB4060
;
	XOR	A
	LD	(TILTMK),A
	LD	A,$20
	LD	(TILTCT),A
;
	LD	A,$0B
	LD	(SOUND1),A	;(S)
;
	LD	HL,ENXSPD
	ADD	HL,BC
;
	SRA	(HL)
	SRA	(HL)
;
	LD	A,(HL)
	CPL
	INC	A
	LD	(HL),A
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),$28
;
	CALL	STATINC
;
	CALL	LDTIM0
	LD	(HL),$60
MSB4060
	LD	A,(FRCNT)
	RRA
	RRA
	AND	$01
	ADD	A,$04
MBNOKB
	CALL	ENPTST
;
	LD	A,$FF
	LD	(BSKBPT),A
	RET	
;============================================
MPIYOYD
	DB	$00,$FE,$FD,$FE
	DB	$00,$02,$03,$02
MPIYOXD
	DB	$00,$04,$08,$0C
	DB	$10,$0C,$08,$04
;---------------------------------------------
MSB5000	;�s�����I
	LD	HL,ENMOD3
	ADD	HL,BC
	RES	6,(HL)
	LD	HL,ENMOD0
	ADD	HL,BC
	SET	7,(HL)
;
	CALL	LDTIM0
	JR	NZ,MSB5010
;
	LD	(HL),$40
;
	CALL	STATINC
	CALL	STATINC
;
	LD	A,$00
	LD	(BSKBPT),A
	JP  	ENPTST
;
MSB5010
	LD	A,(ENHELP)
	AND	A
	JR	Z,MSB5020
;
	CALL	ENSDCL
MSB5020
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	AND	$01
	ADD	A,$0C
	CALL	ENPTST
;
	LD	A,(ENOMID)
	LD	E,A
	LD	D,B
	LD	HL,ENOAM
	ADD	HL,DE
;
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	AND	%00000111
;
	CALL	MPIYO
;
	LD	A,$02
	JP	NXOMSBL
;====================================
MPIYO
	CALL	MPIYOSB
;
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	ADD	A,$04
	AND	%00000111
;------------------------------------
MPIYOSB
	PUSH	BC
;
	PUSH	HL
;
	LD	E,A
	LD	D,$00
	LD	HL,MPIYOYD
	ADD	HL,DE
	LD	B,(HL)
	LD	HL,MPIYOXD
	ADD	HL,DE
	LD	C,(HL)
;
	POP	HL
;
	LD	A,(ENDSYP)
	ADD	A,B
	ADD	A,$F6
	LD	(HLI),A
	LD	A,(ENSVXL)
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
;============================================
MSB6000	;�u���[�L�I
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	A,(HL)
	AND	%11111110
	JR	NZ,MSB6020
;
	CALL	ENSDCL
;
	CALL	LDTIM0
	LD	(HL),$40
;
	JP  	STATINC
MSB6020
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	A,(HL)
	AND	%10000000
	JR	Z,MSB6030
	INC	(HL)
	INC	(HL)
	INC	(HL)
	INC	(HL)
MSB6030		
	DEC	(HL)
	DEC	(HL)
;
;;	CALL	MSBMKST
	LD	A,$00
	LD	(BSKBPT),A
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;	RET
;============================================
MSB7000	;�L�����L�����I
	CALL	ENSDCL
;
	CALL	LDTIM0
	JR	NZ,MSB7020
;
MSBRET
	CALL	LDTIM3
	CALL	RNDSUB
	AND	$1F
	ADD	A,$20
	LD	(HL),A
;
	CALL	STATINC
	LD	(HL),$02
	RET
MSB7020
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	RRA
	AND	$01
	LD	(BSKBMK),A	
	RET
;============================================
MSB8000
	CALL	STATINC
;
	CALL	LDTIM0
	LD	(HL),$60
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	A,(HL)
	LD	(PLXSPD),A
;
	LD	A,$28
	LD	(HANEFG),A
;
	LD	A,$40
	LD	(PLFLSH),A
;
	LD	A,(HARTDW)
	ADD	A,$08
	LD	(HARTDW),A
;
	LD	A,$0B
	LD	(SOUND1),A	;(S)
	RET
;
;============================================
MSB9000
	CALL	ENSDCL
;
	CALL	LDTIM0
	JR	NZ,MSB9010
;
	JP  	MSBRET
MSB9010
	CP	$40
	LD	A,$00
	JR	NC,MSB9020
;
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	RRA
	RRA
	AND	$01
MSB9020
	CALL	ENPTST
;
	LD	(BSKBPT),A
;
		jp	MSBMKST
;;;;;;;;	CALL	MSBMKST
;;;;;;;;	RET
;============================================
;============================================
;============================================
MKUBICD
;2
	DB	$F8,$FC,$54,$22
	DB	$F8,$04,$52,$22
	DB	$F8,$0C,$50,$22
;3
	DB	$F7,$FC,$54,$22
	DB	$F7,$04,$52,$22
	DB	$F7,$0C,$50,$22
;0
	DB	$F8,$FC,$50,$02
	DB	$F8,$04,$52,$02
	DB	$F8,$0C,$54,$02
;1
	DB	$F7,$FC,$50,$02
	DB	$F7,$04,$52,$02
	DB	$F7,$0C,$54,$02
MBOSSCD
;0
	DB	$00,$FC,$56,$02
	DB	$00,$04,$58,$02
	DB	$00,$0C,$5A,$02
;1
	DB	$00,$FC,$5C,$02
	DB	$00,$04,$58,$02
	DB	$00,$0C,$5E,$02
;2
	DB	$00,$FC,$5C,$02
	DB	$00,$04,$58,$02
	DB	$00,$0C,$5A,$02
;3
	DB	$00,$FC,$56,$02
	DB	$00,$04,$58,$02
	DB	$00,$0C,$5E,$02
;4
	DB	$00,$FC,$70,$02
	DB	$00,$04,$72,$02
	DB	$00,$0C,$74,$02
;5
	DB	$01,$FC,$70,$02
	DB	$00,$04,$76,$02
	DB	$00,$0C,$78,$02
;-
;6
	DB	$00,$FC,$5A,$22
	DB	$00,$04,$58,$22
	DB	$00,$0C,$56,$22
;7
	DB	$00,$FC,$5E,$22
	DB	$00,$04,$58,$22
	DB	$00,$0C,$5C,$22
;8
	DB	$00,$FC,$5A,$22
	DB	$00,$04,$58,$22
	DB	$00,$0C,$5C,$22
;9
	DB	$00,$FC,$5E,$22
	DB	$00,$04,$58,$22
	DB	$00,$0C,$56,$22
;A
	DB	$00,$FC,$74,$22
	DB	$00,$04,$72,$22
	DB	$00,$0C,$70,$22
;B
	DB	$00,$FC,$78,$22
	DB	$00,$04,$76,$22
	DB	$01,$0C,$70,$22
;C
	DB	$00,$FC,$7A,$02
	DB	$00,$04,$7C,$02
	DB	$00,$0C,$7E,$02
;D
	DB	$00,$FC,$7E,$22
	DB	$00,$04,$7C,$22
	DB	$00,$0C,$7A,$22
MSBKAGED
	DB	$0C,$FF,$26,$02
	DB	$0C,$04,$26,$02
	DB	$0C,$09,$26,$02
;- - - - - - - - - - - - - - - - - - - - - - - 
MBOSSCS
	LD	A,(BSKBMK)
	SLA	A
	LD	E,A
;
	LD	A,(BSKBPT)
	CP	$FF
	JR	Z,MBSC10
;
	ADD	A,E
;
	RLA
	RLA
;
	AND	%11111100
	LD	E,A
	RLA
	AND	%11111000
	ADD	A,E
	LD	E,A
	LD	D,B
	LD	HL,MKUBICD
	ADD	HL,DE
	LD	C,$03
	CALL	ENOMST
;
MBSC10
	LD	A,(ENCHPT2)
	RLA
	RLA
;
	AND	%11111100
	LD	E,A
	RLA
	AND	%11111000
	ADD	A,E
	LD	E,A
	LD	D,B
	LD	HL,MBOSSCD
	ADD	HL,DE
	LD	C,$03
	CALL	ENOMST
;
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	AND	A
		ret	Z
;;;;;;;;	JR	Z,MBSC90
;
	LD	A,(ENSVYL)
	LD	(ENDSYP),A
;
	LD	HL,MSBKAGED
	LD	C,$03
	CALL	ENOMST
;
		jp	ENPSSV
;;;;;;;;	CALL	ENPSSV
;;;;;;;;MBSC90
;;;;;;;;	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�T�{�e���I			%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
SANBOCD
;0
	DB	$E8,$FE,$74,$00
	DB	$E8,$06,$74,$20
	DB	$F4,$01,$76,$00
	DB	$F4,$09,$76,$20
	DB	$00,$00,$76,$00
	DB	$00,$08,$76,$20
;1
	DB	$E8,$00,$74,$00
	DB	$E8,$08,$74,$20
	DB	$F4,$00,$76,$00
	DB	$F4,$08,$76,$20
	DB	$00,$00,$76,$00
	DB	$00,$08,$76,$20
;2
	DB	$E8,$02,$74,$00
	DB	$E8,$0A,$74,$20
	DB	$F4,$FF,$76,$00
	DB	$F4,$07,$76,$20
	DB	$00,$00,$76,$00
	DB	$00,$08,$76,$20
;3
	DB	$E8,$00,$74,$00
	DB	$E8,$08,$74,$20
	DB	$F4,$00,$76,$00
	DB	$F4,$08,$76,$20
	DB	$00,$00,$76,$00
	DB	$00,$08,$76,$20
SANBOCD2
;0
	DB	$F4,$FF,$74,$00
	DB	$F4,$07,$74,$20
	DB	$00,$00,$76,$00
	DB	$00,$08,$76,$20
;1
	DB	$F4,$00,$74,$00
	DB	$F4,$08,$74,$20
	DB	$00,$00,$76,$00
	DB	$00,$08,$76,$20
;2
	DB	$F4,$01,$74,$00
	DB	$F4,$09,$74,$20
	DB	$00,$00,$76,$00
	DB	$00,$08,$76,$20
;3
	DB	$F4,$00,$74,$00
	DB	$F4,$08,$74,$20
	DB	$00,$00,$76,$00
	DB	$00,$08,$76,$20
SANBOCD3
;0
	DB	$00,$FF,$74,$00
	DB	$00,$07,$74,$20
;1
	DB	$00,$00,$74,$00
	DB	$00,$08,$74,$20
;2
	DB	$00,$01,$74,$00
	DB	$00,$09,$74,$20
;3
	DB	$00,$00,$74,$00
	DB	$00,$08,$74,$20
;==========================================
SYYSPD
	DB	$FA,$FC
SYXSPD
	DB	$00,$04,$06,$04,$00,$FC,$FA,$FC
;---------------------------------------------
SANBOMV
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JP	NZ,SAHEDMV
;
	CALL	SANBOCS
;
	CALL	E8STCK
;
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	CP	$02
	JR	NC,SAB1000
;
	LD	HL,ENLIFE
	ADD	HL,BC
	LD	(HL),$02
;
	LD	HL,ENFLSH
	ADD	HL,BC
	LD	A,(HL)
	CP	$14
	JR	NZ,SAB1000
;
	DEC	(HL)
;
	LD	HL,ENCONT
	ADD	HL,BC
	INC	(HL)
;
	LD	A,SANBO
	CALL	ENIDSHL
	JR	C,SAB1000
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
	INC	(HL)
;
	PUSH	BC
		ld	c,e
		ld	b,d
;;10/31;	PUSH	DE
;;10/31;	POP	BC
;
	LD	A,$20
	CALL	PSERCH2L
;
	LD	A,(WORK1)
	CPL
	INC	A
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
;
	LD	A,(WORK0)
	CPL
	INC	A
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),A
;
	LD	HL,ENTIM0
	ADD	HL,BC
	LD	(HL),$18
;
	POP	BC
SAB1000
	CALL	ENHNCL
;
	CALL	CREPKEL
;
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	NOP
	AND	$03
	CALL	ENPTST
;
	CALL	LDTIM0
	JR	NZ,SYO1010
;
	CALL	RNDSUB
	AND	$3F
	ADD	A,$30
	LD	(HL),A
;
	AND	$07
	LD	E,A
	LD	D,B
	LD	HL,SYXSPD
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
	LD	HL,SYYSPD
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),A
;
SYO1010
	CALL	E8MVCL
		jp	ENBGCKL
;;;;;;;;	CALL	ENBGCKL
;;;;;;;;	RET
;=================================
SANBOCS
	LD	D,B
;
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	NZ,SAC020
;
	LD	A,(ENCHPT2)
	RLA
	RLA
	RLA
	AND	%11111000
	LD	E,A
	RLA
	AND	%11110000
	ADD	A,E
	LD	E,A
	LD	HL,SANBOCD
	ADD	HL,DE
	LD	C,$06
	CALL	ENOMST
	LD	A,$04
	JP	NXOMSBL
SAC020
	CP	$02
	JR	Z,SAC030
;
	LD	A,(ENCHPT2)
	RLA
	RLA
	RLA
	RLA
	AND	%11110000
	LD	E,A
	LD	HL,SANBOCD2
	ADD	HL,DE
	LD	C,$04
	CALL	ENOMST
	LD	A,$02
	JP	NXOMSBL
SAC030
	LD	A,(ENCHPT2)
	RLA
	RLA
	RLA
	AND	%11111000
	LD	E,A
	LD	HL,SANBOCD3
	ADD	HL,DE
	LD	C,$02
	JP  	ENOMST
;======================================
SAHEDCD
	DB	$76,$00,$76,$20
;
SAHEDMV
	LD	DE,SAHEDCD
	CALL	EN2CST
;
	CALL	E8STCK
;
	CALL	E8HNSB
;
	CALL	LDTIM0
	JR	NZ,SHD000
;
	CALL	CREPKEL
SHD000
	CALL	E8MVCL
;
	CALL	ENBGCKL
;
	LD	HL,ENCBFG
	ADD	HL,BC
	LD	A,(HL)
	AND	$03
	JR	Z,SHD100
;
	LD	HL,ENXSPD
	CALL	SHDCHK
	RET	C
SHD100
	LD	HL,ENCBFG
	ADD	HL,BC
	LD	A,(HL)
	AND	$0C
	JR	Z,SHD120
;
	LD	HL,ENYSPD
SHDCHK
	ADD	HL,BC
	LD	A,(HL)
	CPL
	INC	A
	LD	(HL),A
;
	LD	A,$09
	LD	(SOUND1),A	;(S)
;
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	INC	A
	LD	(HL),A
	CP	$03
	JR	C,SHD120
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
	CALL	E8CLER
	SCF
	RET
SHD120
	AND	A
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�C��I				%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
HODAICD
	DB	$70,$02,$70,$22
	DB	$72,$03,$72,$23
;
HODAIMV
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JP	NZ,HOHIMV
;
	LD	DE,HODAICD
	CALL	EN2CST
;
	CALL	LDTIM1
	LD	E,$00
	AND	A
	JR	Z,HOD000
	INC	E
HOD000
	LD	A,E
	CALL	ENPTST
;
	CALL	E8STCK
;
;-------------------------------------------
HOD3000
	LD	HL,ENCONT
	ADD	HL,BC
	INC	(HL)
	LD	A,(HL)
	AND	$0F
	JR	NZ,HOD3030
;
	CALL	LDTIM1
	LD	(HL),$08
;
	LD	A,HODAI
	CALL	ENIDSHL
	RET	C
;
	LD	A,$12
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
	ADD	A,$04
	LD	(HL),A
;
	LD	HL,ENWRK0
	ADD	HL,DE
	INC	(HL)
;
	LD	HL,ENYSPD
	ADD	HL,DE
	LD	(HL),$10
;
	LD	HL,ENTIM0
	ADD	HL,DE
	LD	(HL),$30	
HOD3030
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
HOHICD
	DB	$78,$02,$78,$22
	DB	$76,$02,$76,$22
	DB	$74,$02,$74,$22
;
HOHICD2
	DB	$7A,$02,$7C,$02
	DB	$7C,$22,$7A,$22
HOHIXAD
	DB	$FC,$04
HOHIXSD
	DB	$F4,$0C
;;	DB	$E8,$18
;===========================================
HOHIMV
	CP	$02
	JP	Z,HOHIMV2
;
	LD	A,(FRCNT)
	RLA
	RLA
	AND	%00010000
	LD	(ENFLCL),A
;
	LD	DE,HOHICD
	CALL	EN2CST
;
	CALL	E8STCK
	CALL	ENHNCL
;
	CALL	CRKNENL
	LD	A,(PLFLSH)
	PUSH	AF
	CALL	CRENPSL
;
	POP	AF
	LD	E,A
	LD	A,(PLFLSH)
	CP	E
	JR	Z,HH100
	CP	$20
	JR	C,HH100
;
	LD	A,$1F
	LD	(PLFLSH),A
;
	LD	A,$30
	CALL	PSERCH2L
	LD	A,(WORK0)
	LD	(PLYSPD),A
HH100
	CALL	E8YCLC
;
	LD	A,(ENSTAT2)
	AND	A
	JR	Z,HOHI010	;�����������H
;				;YES !
	XOR	A
HOHI002
	LD	(ENHELP),A
;
	LD	A,HODAI
	CALL	ENIDSHL
	JR	C,HOHI00C
;
	LD	HL,ENWRK0
	ADD	HL,DE
	LD	(HL),$02
;
	PUSH	BC
;
	LD	A,(ENHELP)
	LD	C,A
	LD	HL,ENCHPT
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,HOHIXAD
	ADD	HL,BC
	LD	A,(WORK0)
	ADD	A,(HL)
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A
	LD	HL,HOHIXSD
	ADD	HL,BC
	LD 	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,DE
	LD	(HL),A
;
	LD	A,(WORK1)
	ADD	A,$00
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,ENYSPD
	ADD	HL,DE
	LD	(HL),$0C
;
	LD	HL,ENTIM0
	ADD	HL,DE
	LD	(HL),$20
;
	POP	BC
HOHI008
	LD	A,(ENHELP)
	INC	A
	CP	$02
	JR	C,HOHI002	
HOHI00C
	JP	E8CLER
;
HOHI010
	CALL	LDTIM0
	JP	Z,E8CLER
;
	LD	HL,ENCHPT
	ADD	HL,BC
	CP	$10
	JR	Z,HOHI090
	CP	$20
	JR	NZ,HOHI0A0
;
HOHI090
	LD	A,(HL)
	CP	$02
	JR	Z,HOHI0A0
;
	INC	(HL)
HOHI0A0
	RET
;=====================================
HOHIMV2
	LD	A,(FRCNT)
	RLA
	RLA
	AND	%00010000
	LD	(ENFLCL),A
;
	LD	DE,HOHICD2
	CALL	EN2CST
;
	CALL	E8STCK
;
	CALL	E8MVCL
;
	CALL	LDTIM0
	JP	Z,E8CLER
;
	RET
;================================================================
;=	�X�^���t�H�X						=
;================================================================
SKEL1CD
	DB	$4A,$01,$4C,$01
	DB	$4C,$21,$4A,$21
	DB	$4E,$01,$4E,$21
;- - - - - - - - - - - - - - - - - - - -
SKE1MVDT
	DB	$00,$06,$FA,$FA,$06
;- - - - - - - - - - - - - - - - - - - - 
HONECD
	DB	$48,$01,$48,$61
	DB	$48,$41,$48,$21
;
SKEL1MV
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,SK1M100
;
	LD	DE,HONECD
	CALL	EN2CST
;
	CALL	E8STCK
;
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	AND	$01
	CALL	ENPTST
;
	CALL	E8MVCL
;
	CALL	ENBGCKL
	LD	HL,ENCBFG
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JP	NZ,HONE008
;
	CALL	CREPKEL
;
	LD	HL,ENHNFG
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,HONE010
;
HONE008
	LD	A,(ENSVXL)
	LD	(WORK0),A
	LD	A,(ENDSYP)
	LD	(WORK1),A
;
	LD	A,$07
	LD	(SOUND1),A	;(S)
;
	LD	A,FLSH
	CALL	EXIDSH
;
	JP	E8CLER
;
HONE010
	LD	A,(ENSVXL)
	CP	$A8
	JP	NC,E8CLER
	LD	A,(ENDSYP)
	CP	$84
	JP	NC,E8CLER
	RET
;============================================
SK1M100
	LD	DE,SKEL1CD
	CALL	EN2CST
;
	CALL	E8STCK
;
	CALL	E8HNSB
;
	CALL	LDTIM0
	JR	NZ,SK1M010
;
	CALL	CREPKEL
SK1M010
	CALL	LDTIM1
	CP	$01
	JR	NZ,SK1M020
;
	LD	A,(DNJNNO)
	CP	$03
	RET	C
;
	LD	A,SKEL1
	CALL	ENIDSHL
	RET	C
;
	LD	A,$0A
	LD	(SOUND3),A	;(S)
;
	LD	HL,ENHNFG
	ADD	HL,DE
	LD	(HL),B
;
	LD	HL,ENMOD0
	ADD	HL,DE
	SET	6,(HL)
	SET	4,(HL)
	LD	HL,ENMOD3
	ADD	HL,DE
	SET	1,(HL)
	SET	4,(HL)
;
	LD	A,(WORK0)
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A
	LD	A,(WORK1)
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),A
	LD	A,(WORK3)
	LD	HL,ENZPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,ENWRK0
	ADD	HL,DE
	INC	(HL)
;
	PUSH	BC
		ld	c,e
		ld	b,d
;;10/31;	PUSH	DE
;;10/31;	POP	BC
;
	LD	A,$18
	CALL	PSERCHL
;
	POP	BC
SK1M020
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	RST	0
	DW	SK1WALK
	DW	SK1JUMP
;------------------------------------------
SK1WALK
	CALL	E8MVCL
	CALL	ENBGCKL
;
;	LD	A,(PCUTFG)
;	CP	$03
;	JR	NZ,SKWMAIN
	LD	A,(KEYA2)
	AND	%00110000
	JR	Z,SKWMAIN
;
	CALL	E8XCHK
	ADD	A,$24
	CP	$48
	JR	NC,SKWMAIN
;
	CALL	E8YCHK
	ADD	A,$24
	CP	$48
	JR	NC,SKWMAIN
;
	CALL	LDTIM0
	LD	(HL),$8
;
	CALL	LDTIM1
	LD	(HL),B
;
	LD	HL,ENCONT
	ADD	HL,BC
	INC	(HL)
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),$15
;
	LD	A,$24
	LD	(SOUND1),A	;(S)
;
	LD	A,$12
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
	LD	HL,ENCHPT
	ADD	HL,BC
	LD	(HL),$02
SK1T90
	RET
;------------------------------------------
;========================================
;=========================================
;-----------------------------------------
;=========================================
;=========================================
SKWMAIN
	LD	HL,ENCBFG
	ADD	HL,BC
	LD	A,(HL)
	AND	$03
	JR	NZ,SLRHIT
;
	LD	A,(HL)
	AND	$0C
	JR	Z,SKCHK
;
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	A,(HL)
;
	XOR	$F0
	LD	(HL),A
	JR	SKCHK
;
SLRHIT
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	A,(HL)
;
	XOR	$F0
	LD	(HL),A
;
SKCHK
	LD	HL,ENSTAT
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	NZ,SKE1SPS
;
	CALL	RNDSUB
	AND	$2F
	JR	NZ,SKE1AMV
;
SKE1SPS
	XOR	A
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),A
;
	CALL	RNDSUB
	AND	$03
	LD	E,A
	LD	D,B ;$00
;
	LD	HL,SKE1MVDT
	ADD	HL,DE
	LD	A,(HL)
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
	AND	A
	JR	NZ,SKE1AMV
;
SKE1YYY
;
	CALL	RNDSUB
	AND	$01
	ADD	A,$03
	LD	E,A
	LD	D,B ;$0
;
	LD	HL,SKE1MVDT
	ADD	HL,DE
	LD	A,(HL)
;
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),A
;
SKE1AMV
	LD	HL,ENSTAT
	ADD	HL,BC
	XOR	A
	LD	(HL),A
;
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	AND	%00000001
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;	RET
;
;=========================================
;=========================================
;=========================================
;=========================================
SK1JUMP
	CALL	E8MVCL
;
	LD	HL,ENHNFG
	ADD	HL,BC
	LD	A,(HL)
	PUSH	HL
	LD	(HL),$01	;Fole check !
	CALL	ENBGCKL
	POP	HL
	LD	(HL),B
	CALL	E8ZCLC
;
	LD	HL,ENZSPD
	ADD	HL,BC
	DEC	(HL)
;
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	AND	%10000000
	JR	Z,SKJ011
;
	LD	(HL),B ;$00
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),B ;$00
;
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),$08
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),$08
;
	LD	HL,ENCONT
	ADD	HL,BC
	LD	(HL),B ;$00
;
	CALL	LDTIM1
	LD	(HL),$10
SKJ011
	RET
;=========================================
;============================================
BSBKDT
	DB	$EA,$EB
	DB	$EA,$EB	;�X���C��
	DB	$EC,$ED	;�A�O�j��
	DB	$EE,$EF	;�͂�ނ�
	DB	$F0,$F1	;�K�m��
	DB	$F2,$F3	;�S�[�}
;
BSBKST
	LD	A,(BOSSNO)
	RLA
	AND	%11111110
	LD	E,A
	LD	D,B
	LD	HL,BSBKDT
	ADD	HL,DE
	LD	A,(HLI)
	LD	(EBANK0+2),A
	LD	A,(HL)
	LD	(EBANK0+3),A
;
	LD	A,$01
	LD	(BKCHF2),A		
	LD	(BKCHF3),A		
	RET
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�В��I								%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
BOSSMV
	LD	A,(SCRLFG)
	AND	A
	JR	NZ,BSM0100
;
	LD	A,(ZZZFLG)
	AND	A
	JR	NZ,BSM0100
;
	INC	A
	LD	(ZZZFLG),A
;
	CALL	BSBKST
;
BSM0100
	LD	HL,ENWRK4
	ADD	HL,BC
	LD	A,(HL)
	CP	$02
	JP	Z,EHASIGMV
	AND	A
	JP	NZ,BAMHAHEN	;�j�ЁI
;
	LD	A,(BOSSNO)
	RST	00
	DW	BKAGEMV
	DW	BAMEBAMV
	DW	AGUNIMMV
	DW	BHAYABMV
	DW	GANONMV
	DW	BGORMAMV
;======================================================
BKAGEMV
	LD	A,(ENSTAT2)
	RST	00
	DW	KAG1000
	DW	KAG2000
	DW	KAG3000
	DW	KAG4000
	DW	KAG5000
	DW	KAG6000
	DW	KAG7000
;------------------------------------------
KAG1000
	LD	A,(PLJPFG)
	AND	A
		ret	NZ
;;;;;;;;	JR	NZ,KAG1050
;
	LD	A,$5D
	LD	(SOUND4),A	;(S)
;
	LD	HL,DJRMSV+$174	;�o������I
	SET	6,(HL)
;
	LD	A,$F5
	CALL	MSGCHK
;
	CALL	LDTIM0
	LD	(HL),$50
;
	LD	A,(PLXPSL)
	LD	HL,ENXPSL
	ADD	HL,BC
	LD	(HL),A
;
	LD	E,$80
	LD	HL,XMVBUF
KAG1010
	LD	(HLI),A
	DEC	E
	JR	NZ,KAG1010
;
	LD	A,(PLYPSL)
;;;	LD	A,$50
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	(HL),A
;
	LD	E,$80
	LD	HL,YMVBUF
KAG1020
	LD	(HLI),A
	DEC	E
	JR	NZ,KAG1020
;
;	LD	HL,ENWRK0
;	ADD	HL,BC
;	LD	(HL),$08
;
	XOR	A
	LD	(BSCSOFF),A	;EQU	$D210
	LD	(AGWPPX),A	;EQU	$D211
	LD	(AGWPPY),A	;EQU	$D212
	LD	(AGTMFG),A	;EQU	$D213
	LD	(BSMUKI),A	;EQU	$D214
	LD	(BSATCT),A	;EQU	$D215
	LD	(BSDMCT),A	;EQU	$D216
	LD	(BSWRK0),A
	LD	(BSWRK1),A
	LD	(BSWRK2),A
;
		jp	STATINC
;;;;;;;;	CALL	STATINC
;;;;;;;;KAG1050
;;;;;;;;	RET
;------------------------------------------
KAG2000
	CALL	BKAGECS
;
	CALL	LDTIM0
	JR	NZ,KAG2010
;
	CALL  	STATINC
;--------------------------------------
IDOUSD
	LD	A,$35
	LD	(SOUND1),A	;(S)
	RET
;
KAG2010
	CP	$30
	JR	NZ,KAG2020
;
	DEC	(HL)
;
	LD	A,$23
	LD	(SOUND4),A	;(S)
KAG2020
	RET
;------------------------------------------
KAG3000
	CALL	BKAGECS
;
	CALL	E8STCK	;;5/11
;
	LD	HL,ENYSPD
	ADD	HL,BC
	DEC	(HL)
	LD	A,(HL)
	CP	$E8
	JR	NZ,KAG3020
;
	CALL	LDTIM0
	LD	(HL),$08
;
	CALL	STATINC
KAG3020
		jp	E8YCLC
;;;;;;;;	CALL	E8YCLC
;;;;;;;;	RET
;------------------------------------------
KAG4000
	CALL	BKAGECS
;
	CALL	E8STCK		;5/11
;
	CALL	E8YCLC
;
	CALL	LDTIM0
	RET	NZ
;
	LD	HL,ENYSPD
	ADD	HL,BC
	INC	(HL)
		ret	NZ
;;;;;;;;	JR	NZ,KAG4020
;
	CALL	LDTIM0
	LD	(HL),$80
;
;	LD	HL,ENWRK0
;	ADD	HL,BC
;	LD	(HL),$07
;
		jp	STATINC
;;;;;;;;	CALL	STATINC
;;;;;;;;KAG4020
;;;;;;;;	RET
;------------------------------------------
KAG5000
	CALL	BKAGECS
;
KAGBIG
	CALL	LDTIM0
	JR	Z,KAG5060
;
	AND	$07
	JR	NZ,KAG5060
;
	LD	HL,ENCHPT
	ADD	HL,BC
	LD	A,(HL)
	CP	$05
	JR	Z,KAG5070
;
	INC	(HL)
KAG5060
	RET
;
KAG5070
	CALL	LDTIM0
	LD	(HL),$C0
;
		jp	STATINC
;;;;;;;;	CALL	STATINC
;;;;;;;;	RET
;------------------------------------------
BKAGPT
	DB	6,5,7,5
;
KAG6000
	CALL	BKAGECS2
;
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	RRA
	AND	$03
	LD	E,A
	LD	D,B
	LD	HL,BKAGPT
	ADD	HL,DE
	LD	A,(HL)
	CALL	ENPTST
;
	CALL	LDTIM0
		ret	NZ
;;;;;;;;	JR	NZ,KAG6070
;
	LD	(HL),$2F
;
		jp	STATINC
;;;;;;;;	CALL	STATINC
;;;;;;;;KAG6070
;;;;;;;;	RET
;	LD	A,(PLXPSL)
;	LD	HL,ENXPSL
;	ADD	HL,BC
;	LD	(HL),A
;	LD	A,(PLYPSL)
;	LD	HL,ENYPSL
;	ADD	HL,BC
;	LD	(HL),A
;	RET
;------------------------------------------
KAG7PT
	DB	8,0,1,2,3,4
;
KAG7000
	CALL	BKAGECS2
;
	CALL	LDTIM0
	JR	NZ,KAG7020
;
	LD	HL,BOSSNO
	INC	(HL)
;
	XOR	A
	CALL	ENPTST
;
	CALL	STATINC
	LD	(HL),B
;
	LD	HL,ENMOD0
	ADD	HL,BC
	RES	7,(HL)
	RET
;;	CALL	STATINC
KAG7020
	RRA
	RRA
	RRA
	AND	$0F
	LD	E,A
	LD	D,B
	LD	HL,KAG7PT
	ADD	HL,DE
	LD	A,(HL)
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;	RET
;======================================================
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�A���[�o		     %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
BAMEBAMV
	CALL	BAMEBACS
;
	CALL	E8STCK
;
	CALL	ENHNCL
;
	LD	A,(ENSTAT2)
	RST	00
	DW	BAM1000
	DW	BAM2000
	DW	BAM3000
	DW	BAM4000
	DW	BAM5000
	DW	BAM6000
;
	DW	BAMF000
	DW	BAMG000
;
	DW	BAM7000
	DW	BAM8000
;------------------------------------------
BAM1000
	CALL	LDTIM0
	LD	(HL),$80
;
	LD	HL,ENCONT
	ADD	HL,BC
	LD	(HL),B
;
	JP	STATINC
;------------------------------------------
BAM2000
	CALL	LDTIM0
		ret	NZ
;;;;;;;;	JR	NZ,BAM2010
;
	LD	A,(FRCNT)
	AND	$07
		ret	NZ
;;;;;;;;	JR	NZ,BAM2010
;	
	LD	HL,ENCHPT
	ADD	HL,BC
	INC	(HL)
	LD	A,(HL)
	CP	$03
		ret	NZ
;;;;;;;;	JR	NZ,BAM2010
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),$28
;
	LD	A,$08
	CALL	PSERCHL
;
		jp	STATINC
;;;;;;;;	CALL	STATINC
;;;;;;;;BAM2010
;;;;;;;;	RET
;------------------------------------------
BAM3000
	CALL	AMPWCK
	CALL	CREPKEL
;
	CALL	E8MVCL
	CALL	ENBGCKL
;
	CALL	E8ZCLC
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
	JR	Z,BAM3020
;
	LD	(HL),B
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),B
;
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	INC	A
	LD	(HL),A
	AND	$01
	JR	NZ,BAM3010
;
	CALL	RNDSUB
	AND	$01
	JR	NZ,BAM3010
;
	CALL	LDTIM0
	LD	(HL),$1F
;
	CALL	STATINC
	LD	(HL),$08
	JR	BAM3020
;
BAM3010
	LD	A,$20
	LD	(SOUND1),A	;(S)	
;
	CALL	LDTIM0
	LD	(HL),$30
;
	CALL	STATINC
BAM3020
	LD	E,$03
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	CP	$0C
	JR	C,BAM3050
	INC	E
BAM3050
	LD	A,E
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;	RET
;-----------------------------------------------
BAM4000
	LD	A,$05
	CALL	ENPTST
;
	CALL	LDTIM0
	JR	NZ,BAM4030
;
	LD	A,$0C
	CALL	PSERCHL
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),$20
;
	CALL	STATINC
	DEC	(HL)
	DEC	(HL)
BAM4030
	CALL	AMPWCK
		jp	CREPKEL
;;;;;;;;	CALL	CREPKEL
;;;;;;;;	RET
;-----------------------------------------
BAM5000
	CALL	LDTIM0
		ret	NZ
;;;;;;;;	JR	NZ,BAM5010
;
	JP	BAWARP
;;;;;;;;BAM5010
;;;;;;;;	RET
;===============================================
BSNXSD
	LD	A,$23
	LD	(SOUND2),A	;(S)
	RET
;
;-----------------------------------------
BAM6000
	CALL	LDTIM0
	JR	NZ,BAM6010
;
;===========================================
BSNEXT
	LD	A,(BOSSNO)
	INC	A
	LD	(BOSSNO),A
;
	CALL	BSBKST
;
	XOR	A
	LD	(BSWRK0),A
	LD	(BSWRK1),A
	LD	(BSWRK2),A
	LD	(BSDMCT),A	;
;
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	(HL),B
;
	LD	HL,ENMOD0
	ADD	HL,BC
	LD	(HL),%11000000	
;
	LD	A,$02
	LD	(EBCHFG),A
	INC	A
	LD	(EBCHF2),A
;
	LD	A,$FF
	CALL	ENPTST
;
	CALL	LDTIM0
	LD	(HL),$40
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	(HL),B
;
	CALL	STATINC
	LD	(HL),B
;;	XOR	A
	LD	A,$01
	LD	(BSCSOFF),A
	RET
;;	JP	E8CLER
BAM6010
	CP	$18
		ret	NC
;;;;;;;;	JR	NC,BAM6030
	CP	$17
	JR	NZ,BAM6020
;
	LD	HL,SOUND1	;(S)
	LD	(HL),$35
;
BAM6020
	RRA	
	RRA	
	RRA	
	AND	$03
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;BAM6030
;;;;;;;;	RET
;============================================
BAM7PT
	DB	$FF,$00,$01,$02
BAM7000
	CALL	LDTIM0
	JR	NZ,BAM7010
;
	LD	(HL),$80
;
	JP  	STATINC
BAM7010
	RRA
	RRA
	RRA
	AND	$03
	LD	E,A
	LD	D,B
	LD	HL,BAM7PT
	ADD	HL,DE
	LD	A,(HL)
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;	RET
;============================================
BAM8000
	CALL	LDTIM0
	JR	NZ,BAM8020
;
BAWARP
	CALL	RNDSUB
	AND	$07	
	LD	E,A
	LD	D,B
	LD	HL,AGWPXD
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENXPSL
	ADD	HL,BC
	LD	(HL),A
	LD	HL,AGWPYD
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	(HL),A
;
	CALL	STATINC
	LD	(HL),$01
BAM8020
	RET
;-----------------------------------------
BAMXAD
	DB	$00,$00,$00,$00,$00,$00,$00,$00
BAMYAD
	DB	$00,$00,$00,$00,$00,$00,$00,$00
BAMYSD
	DB	$00,$18
BAMXSD
	DB	$20,$18,$00,$E8,$E0,$E8,$00,$18
;
BAMF000
	LD	A,$FF
	CALL	ENPTST
;
	CALL	LDTIM0
	LD	(HL),$80
;
	CALL	STATINC
	LD	(HL),$04
;
	LD	A,$21
	LD	(SOUND2),A	;(S)
;
BAMSUB
	XOR	A
BAMS10
	LD	(ENHELP),A
;
	LD	A,BOSS
	CALL	ENIDSHL
	RET	C
;
	PUSH	BC
;
	LD	A,(ENHELP)
	LD	C,A
;
	LD	A,(WORK0)
	LD	HL,BAMXAD
	ADD	HL,BC
	ADD	A,(HL)
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	A,(WORK1)
	LD	HL,BAMYAD
	ADD	HL,BC
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
	LD	HL,BAMXSD
	ADD	HL,BC
	LD 	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,BAMYSD
	ADD	HL,BC
	LD 	A,(HL)
	LD	HL,ENYSPD
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,ENTIM0
	ADD	HL,DE
	LD	(HL),$2F
;
	LD	HL,ENMOD0
	ADD	HL,DE
	LD	(HL),%11000010
;
	LD	HL,ENWRK4
	ADD	HL,DE
	INC	(HL)
;
	POP	BC
;
	LD	A,(ENHELP)
	INC	A
	CP	$08
	JR	NZ,BAMS10
	RET
;=======================================
BAMGPT
	DB	5,3,4,3
BAMG000
	CALL	E8ZCLC
	LD	HL,ENZSPD
	ADD	HL,BC
	DEC	(HL)
	DEC	(HL)
;
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	AND	%10000000
	JR	Z,BAMG010
;
	LD	(HL),B
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),B
BAMG010
	CALL	LDTIM0
	JR	Z,BAG010
;
	RRA
;;	RRA
;;	RRA
	NOP
	NOP
	NOP
	AND	$03
	LD	E,A
	LD	D,B
	LD	HL,BAMGPT
	ADD	HL,DE
	LD	A,(HL)
	JP  	ENPTST
;
BAG010
	LD	A,(BSDMCT)
	INC	A
	LD	(BSDMCT),A
	CP	$03
	JR	NC,BAG011
;
	CALL	STATINC
	LD	(HL),$02
	RET
;
BAG011
	LD	A,$06
	CALL	ENPTST
;
	CALL	LDTIM0
	LD	(HL),$80
;
	CALL	STATINC
	LD	(HL),$05
;
BAMSUBS
	LD	A,$37
	LD	(SOUND3),A	;(S)
	JP	BAMSUB
;=========================================
AMPWCK
		LD	A,(KINOKFG)
		AND	A		;���̂��������Ă���H
		JR	Z,AMPWCK_500	;	NO --> AMPWCK_500
		LD	A,(ITEMB)
		CP	PMGIC		;�a�{�^���ɑ������Ă���H
		JR	NZ,AMPWCK_120	;	NO --> AMPWCK_120
		LD	A,(KEYA2)
		AND	%00100000	;�a�{�^�������ꂽ�H
		JR	Z,AMPWCK_500	;	NO --> AMPWCK_500
		LD	A,$003
		LD	(BSDMCT),A
		JP	SPECIAL_DEAD
AMPWCK_120
		LD	A,(ITEMA)
		CP	PMGIC		;�`�{�^���ɑ������Ă���H
		JR	NZ,AMPWCK_500	;	NO --> AMPWCK_500
		LD	A,(KEYA2)
		AND	%00010000	;�`�{�^�������ꂽ�H
		JR	Z,AMPWCK_500	;	NO --> AMPWCK_500
		LD	A,$003
		LD	(BSDMCT),A
		JP	SPECIAL_DEAD	;	YES --> SPECIAL_DEAD
AMPWCK_500
;
;-- POWDR CHECK ---
	LD	E,ENNO-1
	LD	D,B
AAR1008
	LD	HL,ENMODE
	ADD	HL,DE
	LD	A,(HL)
	CP	EMOVE
	JR	NZ,AAR1010
;
	LD	HL,ENMYNO
	ADD	HL,DE
	LD	A,(HL)
	CP	POWDR
	JR	NZ,AAR1010
;
	LD	HL,ENTIM0
	ADD	HL,DE
	LD	A,(HL)
	CP	$08
	JR	NZ,AAR1010
;
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	A,(ENSVXL)
	SUB	(HL)
	ADD	A,$0C
	CP	$18
	JR	NC,AAR1010
;
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	A,(ENDSYP)
	SUB	(HL)
	ADD	A,$0C
	CP	$18
	JR	NC,AAR1010
;�񐔃`�F�b�N������I
;;	CALL	BSFLSDS	;(S)
;
		CALL	LDTIM0
		LD	(HL),$80
SPECIAL_DEAD
	LD	HL,ENFLSH
	ADD	HL,BC
	LD	(HL),$14
;
	LD	A,$07
	LD	(SOUND2),A	;(S)
	LD	A,$37
	LD	(SOUND1),A	;(S)
;
	CALL	STATINC
	LD	(HL),$07
;
;;;KK;;;	CALL	LDTIM0
;;;KK;;;	LD	(HL),$80
	POP	AF	;Not retern
	RET
AAR1010
	DEC	E
	LD	A,E
	CP	$FF
	JR	NZ,AAR1008
	RET
;=====================================================
BAMHDT
	DB	$4E,$00,$4E,$20
	DB	$4C,$00,$4C,$20
	DB	$4A,$00,$4A,$20
BAMHPT
	DB	2,2,2,1,1,0
BAMTMD
	DB	$F,7,3,1,0,0
;
BAMHAHEN
	LD	DE,BAMHDT
	CALL	EN2CST
;
	CALL	E8STCK
;
	CALL	LDTIM0
	JP	Z,E8CLER
;
	RRA
	RRA
	RRA
	AND	%00000111
	LD	E,A
	LD	D,B
	LD	HL,BAMHPT
	ADD	HL,DE
	PUSH	DE
	LD	A,(HL)
	CALL	ENPTST
	POP	DE
;
	LD	HL,BAMTMD
	ADD	HL,DE
	LD	A,(FRCNT)
	AND	(HL)
		ret	NZ
;;;;;;;;	JR	NZ,BAMH10
;
		jp	E8MVCL
;;;;;;;;	CALL	E8MVCL
;;;;;;;;;
;;;;;;;;BAMH10
;;;;;;;;	RET
;=====================================================
BKAGECD2
;0
	DB	$00,$00,$4C,$00
	DB	$00,$08,$4C,$20
;
	DB	$00,$08,$FF,$20
	DB	$00,$10,$FF,$20
	DB	$00,$F8,$FF,$40
	DB	$00,$00,$FF,$40
	DB	$00,$08,$FF,$60
	DB	$00,$10,$FF,$60
;1
	DB	$00,$00,$4E,$00
	DB	$00,$08,$4E,$20
;
	DB	$00,$08,$FF,$20
	DB	$00,$10,$FF,$20
	DB	$00,$F8,$FF,$40
	DB	$00,$00,$FF,$40
	DB	$00,$08,$FF,$60
	DB	$00,$10,$FF,$60
;2
	DB	$F8,$F8,$7A,$00
	DB	$F8,$00,$7C,$00
	DB	$F8,$08,$7C,$20
	DB	$F8,$10,$7A,$20
	DB	$08,$F8,$7A,$40
	DB	$08,$00,$7C,$40
	DB	$08,$08,$7C,$60
	DB	$08,$10,$7A,$60
;3
	DB	$F8,$F8,$76,$00
	DB	$F8,$00,$78,$00
	DB	$F8,$08,$78,$20
	DB	$F8,$10,$76,$20
	DB	$08,$F8,$76,$40
	DB	$08,$00,$78,$40
	DB	$08,$08,$78,$60
	DB	$08,$10,$76,$60
;4
	DB	$F8,$F8,$72,$00
	DB	$F8,$00,$74,$00
	DB	$F8,$08,$74,$20
	DB	$F8,$10,$72,$20
	DB	$08,$F8,$72,$40
	DB	$08,$00,$74,$40
	DB	$08,$08,$74,$60
	DB	$08,$10,$72,$60
;5
	DB	$F8,$F8,$66,$00
	DB	$F8,$00,$68,$00
	DB	$F8,$08,$68,$20
	DB	$F8,$10,$66,$20
	DB	$08,$F8,$66,$40
	DB	$08,$00,$6A,$00
	DB	$08,$08,$6A,$20
	DB	$08,$10,$66,$60
;6
	DB	$F8,$F8,$60,$00
	DB	$F8,$00,$62,$00
	DB	$F8,$08,$62,$20
	DB	$F8,$10,$60,$20
	DB	$08,$F8,$60,$40
	DB	$08,$00,$64,$00
	DB	$08,$08,$64,$20
	DB	$08,$10,$60,$60
;7
	DB	$F8,$F8,$6C,$00
	DB	$F8,$00,$6E,$00
	DB	$F8,$08,$6E,$20
	DB	$F8,$10,$6C,$20
	DB	$08,$F8,$6C,$40
	DB	$08,$00,$70,$00
	DB	$08,$08,$70,$20
	DB	$08,$10,$6C,$60
;8
	DB	$00,$00,$4A,$00
	DB	$00,$08,$4A,$20
;
	DB	$00,$08,$FF,$20
	DB	$00,$10,$FF,$20
	DB	$00,$F8,$FF,$40
	DB	$00,$00,$FF,$40
	DB	$00,$08,$FF,$60
	DB	$00,$10,$FF,$60
; - - - - - - - - - - - - - - - - - - - - 
BKAGECD
	DB	$4C,$00,$4C,$20
BKAGECDE
	DB	$48,$00,$48,$20
; - - - - - - - - - - - - - - - - - - - - 
BKGADT
	DB	$05*8
	DB	$05*7
	DB	$05*6
	DB	$05*5
	DB	$05*4
	DB	$05*3
	DB	$05*2
	DB	$05*1
;
BKAGECS
;- - - Tail set - - - -
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	LD	(ENHELP2),A
;1=======================================
	XOR	A
BKGCS10
	LD	(ENHELP),A
;
	LD	E,A
	LD	D,B
	LD	HL,BKGADT
	ADD	HL,DE
;
	LD	A,(ENHELP2)
	SUB	(HL)
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
	LD	DE,BKAGECDE
	LD	A,(ENHELP)
	CP	$00
	JR	Z,BKGCS20
;
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	A,(ENDSYP)
	CP	(HL)
	JR	Z,BKGCS30
;
	LD	DE,BKAGECD
BKGCS20
	XOR	A
	LD	(ENCHPT2),A
;
	CALL	EN2CST
;
	LD	A,$02
	CALL	NXOMSBL
BKGCS30
;
;;	LD	HL,ENWRK0	
;;	ADD	HL,BC
;
	LD	A,(ENHELP)
	INC	A
	CP	$08
	JR	NZ,BKGCS10
;
	CALL	ENPSSV
;
	CALL	BKAGECS2	;5/11
;
	CALL	E8STCK	;5/11
;
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	INC	(HL)
	AND	$7F
	LD	E,A
	LD	D,B
	LD	A,(ENDSYP)
	LD	HL,YMVBUF
	ADD	HL,DE
	LD	(HL),A
	LD	A,(ENSVXL)
	LD	HL,XMVBUF
	ADD	HL,DE
	LD	(HL),A
	RET
;================================================
BKAGECS2
	LD	HL,ENCHPT
	ADD	HL,BC
	LD	A,(HL)
	RLA
	RLA
	RLA
	RLA
	RLA
	AND	%11100000
	LD	E,A
	LD	D,B
	LD	HL,BKAGECD2
	ADD	HL,DE
	LD	C,$08
	CALL	ENOMST
;
	LD	A,$08
		jp	NXOMSBL
;;;;;;;;	CALL	NXOMSBL
;;;;;;;;	RET	
;=========================================
BAMEBACD
;0
	DB	$00,$00,$4A,$00
	DB	$00,$08,$4A,$20
	DB	$00,$00,$FF,$00
	DB	$00,$00,$FF,$00
;1
	DB	$00,$00,$4C,$00
	DB	$00,$08,$4C,$20
	DB	$00,$00,$FF,$00
	DB	$00,$00,$FF,$00
;2
	DB	$00,$00,$4E,$00
	DB	$00,$08,$4E,$20
	DB	$00,$00,$FF,$00
	DB	$00,$00,$FF,$20
;3
	DB	$F0,$00,$5C,$00
	DB	$F0,$08,$5C,$20
	DB	$00,$00,$5E,$00
	DB	$00,$08,$5E,$20
;4
	DB	$F0,$00,$44,$00
	DB	$F0,$08,$44,$20
	DB	$00,$00,$44,$40
	DB	$00,$08,$44,$60
;5
	DB	$00,$FC,$40,$00
	DB	$00,$04,$42,$00
	DB	$00,$0C,$40,$20
	DB	$00,$00,$FF,$00
;6
	DB	$00,$00,$48,$00
	DB	$00,$08,$48,$20
	DB	$00,$00,$FF,$00
	DB	$00,$00,$FF,$20
;-----------------------------------------------
BAMEBACS
	LD	A,(ENCHPT2)
	RLA
	RLA
	RLA
	RLA
	AND	%11110000
	LD	E,A
	LD	D,B
	LD	HL,BAMEBACD
	ADD	HL,DE
	LD	C,$04
	CALL	ENOMST
;
	LD	A,$04
		jp	NXOMSBL
;;;;;;;;	CALL	NXOMSBL
;;;;;;;;	RET
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�A�O�j��					%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
AGUNIMMV
	LD	HL,ENWRK3
	ADD	HL,BC
	LD	A,(HL)
	CP	$02		;�T���_�[�H
	JP	Z,AGSUNDER	;	YES --> AGSUNDER
	AND	A
	JP	NZ,AGTAMAMV	;�ʁI
;
	LD	A,C
	LD	(BSINDX),A
;
	LD	A,(BSCSOFF)
	AND	A
	JR	NZ,AGM0028
;
	CALL	AGUNIMCS
;
AGM0028
	CALL	E8STCK
;
	CALL	E8HNSB
;
	LD	A,(ENSTAT2)
	RST	00
	DW	AGM1000
	DW	AGM2000
	DW	AGM3000
	DW	AGM4000
	DW	AGM5000
	DW	AGM6000
	DW	AGM7000
	DW	AGM8000
	DW	AGM9000
	DW	AGMA000
;----------------------------------
;	DW	AGM4000
;	DW	AGM4000
; - - - - - - - - - - - - - - - - -
AGST	EQU	$01
;==================================
AGM1000
	XOR	A
	CALL	ENPTST
;
	CALL  	BAMEBACS
;
	LD	A,(PLXPSL)
	PUSH	AF
	LD	A,(PLYPSL)
	PUSH	AF
;
	LD	A,$50
	LD	(PLXPSL),A
	LD	A,$30
	LD	(PLYPSL),A
;
	LD	A,$10
	CALL	PSERCHL
;
	LD	HL,PLYPSL
	LD	A,(ENDSYP)
	SUB	(HL)
	ADD	A,$03
	CP	$06
	JR	NC,AGM1030
;
	LD	HL,PLXPSL
	LD	A,(ENSVXL)
	SUB	(HL)
	ADD	A,$03
	CP	$06
	JR	NC,AGM1030
;
	CALL	LDTIM0
	LD	(HL),$50
	CALL	STATINC
	LD	(HL),AGST
AGM1030
	POP	AF
	LD	(PLYPSL),A
	POP	AF
	LD	(PLXPSL),A
;
		jp	E8MVCL
;;;;;;;;	CALL	E8MVCL
;;;;;;;;	RET
;==================================
AGSETPT
	DB	4,3,2,1,0,0,0,0,0,0,0,0,0,0,0
;
AGM2000
	CALL	LDTIM0
	JR	Z,AGM2020
;
	RRA
	RRA
	RRA
	AND	%00001111
	LD	E,A
	LD	D,B
	LD	HL,AGSETPT
	ADD	HL,DE
	LD	A,(HL)
	LD	(ENCHPT2),A
;
	JP  	BAMEBACS
AGM2020
	XOR	A
	LD	(BSCSOFF),A
	CALL	AGPTST2
;
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	A,(HL)
	SUB	$08
	LD	(HL),A
;
	CALL	LDTIM0
	LD	(HL),$40
;
	CALL	STATINC
;
	LD	HL,ENWRK2
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	RET	NZ
;
	INC	(HL)
;
		jp	BSNXSD	;(S)
;;;;;;;;	CALL	BSNXSD	;(S)
;;;;;;;;	RET
;==================================
AGMKPT
	DB	$0F,$0A,$05,$00
;
AGM3000
	CALL	LDTIM0
	JR	NZ,AGM3010
;
	LD	A,$22
	LD	(SOUND2),A	;(S)
;
	LD	(HL),$C0
;
	JP	STATINC
AGM3010
;===================================
AGPTST2
	CALL	E8XYCK
;
	LD	A,E
	LD	(BSMUKI),A
;
	LD	D,B
	LD	HL,AGMKPT
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	(HL),A
;===================================
AGPTST
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENWRK0
	ADD	HL,BC
	ADD	A,(HL)
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;	RET
;==================================
AGMAWASI
	DB	0,1,2,3
AGTMPD
	DB	3,3,3,3
	DB	2,2,2,2
	DB	1,1,1,1
	DB	0,0,0,0
AGTXAD
	DB	$18,$E8,$00,$00
AGTYAD
	DB	$00,$00,$F0,$00
;;	DB	$F6,$F6,$F0,$00
;- - - - - - - - - - - - - - - - - - - - - - -
AGM4000
	CALL	LDTIM0
	JR	NZ,AGM4010
;
	LD	(AGTMFG),A
;
	LD	(HL),$50
;
	LD	A,BOSS
	CALL	ENIDSHL	;�A�O�j���ʃZ�b�g�I
;
	LD	HL,ENWRK3
	ADD	HL,DE
	INC	(HL)
;
	PUSH	BC
;
	LD	A,(BSMUKI)
	LD	C,A
	LD	HL,AGTXAD
	ADD	HL,BC
	LD	A,(WORK0)
	ADD	A,(HL)
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A
	LD	HL,AGTYAD
	ADD	HL,BC
	LD	A,(WORK1)
	ADD	A,(HL)
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,ENMOD0
	ADD	HL,DE
	LD	(HL),%01000010
	LD	HL,ENMOD1
	ADD	HL,DE
	LD	(HL),D
;
	LD	A,$38
	LD	(SOUND3),A	;(S)
;
	LD	A,(BSDMCT)
	CP	$02
	JR	C,AGTMS10
;
	LD	A,(PLXPSL)
	LD	HL,FRCNT
	ADD	A,(HL)
	AND	$01
	JR	NZ,AGTMS10
;
	LD	HL,ENSTAT
	ADD	HL,DE
	LD	(HL),$03
;
	LD	HL,ENTIM0
	ADD	HL,DE
	LD	(HL),$1C
;
	LD	A,$39
	LD	(SOUND3),A	;(S)
AGTMS10
		ld	c,e
		ld	b,d
;;10/31;	PUSH	DE
;;10/31;	POP	BC
	LD	A,$18
	CALL	PSERCHL
;
	POP	BC
	JP	STATINC
AGM4010
	RRA
	RRA
	RRA
	AND	$03
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	(HL),A
;
	CALL	LDTIM0
	RRA
	RRA
	RRA
	RRA
	AND	$0F
	LD	E,A
	LD	D,B
	LD	HL,AGTMPD
	ADD	HL,DE
	LD	A,(HL)
	LD	(AGTMFG),A
;
	CALL	LDTIM0
	CP	$40
	JP	C,AGPTST
;
	AND	$1F
	JP	Z,AGPTST2
	JP	AGPTST
;==================================
AGM5000
	CALL	LDTIM0
	JR	NZ,AGM5010
;
	LD	(HL),$27
;
	LD	A,$35
	LD	(SOUND1),A	;(S)
;
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	A,(HL)
	ADD	A,$08
	LD	(HL),A
;
	LD	A,$01
	LD	(BSCSOFF),A
;
	JP	STATINC
AGM5010
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	(HL),$04
		jp	AGPTST
;;;;;;;;	CALL	AGPTST
;;;;;;;;	RET
;==================================
AGWPXD
	DB	$50,$28,$78
	DB	$18,$88
	DB	$38,$68,$50
AGWPYD
	DB	$30,$30,$30
	DB	$50,$50
	DB	$70,$70,$74
;- - - - - - - - - - - - - - - - - - - 
AGCLRPT
	DB	0,1,2,3,4
;- - - - - - - - - - - - - - - - - - -
AGM6000
	CALL	LDTIM0
	JR	NZ,AGM6020
;���[�v
	CALL	RNDSUB
	AND	$07	
	LD	E,A
	LD	D,B
	LD	HL,AGWPXD
	ADD	HL,DE
	LD	A,(HL)
	LD	(AGWPPX),A
	LD	HL,AGWPYD
	ADD	HL,DE
	LD	A,(HL)
	LD	(AGWPPY),A
;
	CALL	LDTIM0
	LD	(HL),$1F
;
	JP	STATINC
AGM6020
	RRA
	RRA
	RRA
	AND	%00001111
	LD	E,A
	LD	D,B
	LD	HL,AGCLRPT
	ADD	HL,DE
	LD	A,(HL)
	LD	(ENCHPT2),A
;
	JP  	BAMEBACS
;==================================
AGWPSD
	DB	$18,$14,$10,$0C,$08,$05,$02,$01
;- - - - - - - - - - - - - - - - - - - -
AGM7000
	XOR	A
	LD	(ENCHPT2),A
;
	CALL  	BAMEBACS
;
	LD	A,(PLYPSL)
	PUSH	AF
	LD	A,(PLXPSL)
	PUSH	AF
;
	LD	A,(AGWPPX)
	LD	(PLXPSL),A
	LD	A,(AGWPPY)
	LD	(PLYPSL),A
;
	CALL	LDTIM0
	RRA
	RRA
	AND	$07
	LD	E,A
	LD	D,B
	LD	HL,AGWPSD
	ADD	HL,DE
	LD	A,(HL)
	CALL	PSERCHL
;
	LD	HL,PLYPSL
	LD	A,(ENDSYP)
	SUB	(HL)
	ADD	A,$03
	CP	$06
	JR	NC,AGM7030
;
	LD	HL,PLXPSL
	LD	A,(ENSVXL)
	SUB	(HL)
	ADD	A,$03
	CP	$06
	JR	NC,AGM7030
;
	CALL	LDTIM0
	LD	(HL),$50
;
	CALL	STATINC
	LD	(HL),AGST
AGM7030
	POP	AF
	LD	(PLXPSL),A
	POP	AF
	LD	(PLYPSL),A
;
		jp	E8MVCL
;;;;;;;;	CALL	E8MVCL
;;;;;;;;	RET
;======================================================
AGM8DT
	DB	$00,$0A,$0F,$05
AGM8000
	CALL	LDTIM0
	JR	NZ,AGM8010
;
	CALL	BAMSUBS	;(S)
;
	LD	A,$01
	LD	(BSCSOFF),A
;
	LD	A,$06
	CALL	ENPTST	
;
	CALL	LDTIM0
	LD	(HL),$50
;
		jp	STATINC
;;;;;;;;	CALL	STATINC
;;;;;;;;	RET
;
AGM8010
	LD	A,(BSWRK0)
	CP	$80
	JR	NC,AGM8020
;
	INC	A
	LD	(BSWRK0),A
AGM8020
	LD	A,(BSWRK0)
	LD	HL,BSWRK1
	ADD	A,(HL)
	LD	(HL),A
	JR	NC,AGM8030
;
	LD	HL,BSWRK2
	INC	(HL)
;
AGM8030
	LD	A,(BSWRK2)
	AND	$03
	LD	E,A
	LD	D,B
	LD	HL,AGM8DT
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	(HL),A
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	(HL),B
;
		jp	AGPTST
;;;;;;;;	CALL	AGPTST
;;;;;;;;	RET
;========================================
AGM9000
	CALL	LDTIM0
	JR	NZ,AGM9010
;===========================================
	CALL	IDOUSD	;(S)
;
	JP	STATINC
;CALL  	BSNEXT
;;
;LD	HL,ENLIFE
;ADD	HL,BC
;LD	(HL),$FF
;JP  	BHAYABIT
;
AGM9010
	CP	$18
	JR	NC,AGM9030
;
	RRA	
	RRA	
	RRA	
	AND	$03
	CALL	ENPTST
AGM9030
		jp	BAMEBACS
;;;;;;;;	CALL	BAMEBACS
;;;;;;;;	RET
;==================================
AGMA000
;	XOR	A
;	CALL	ENPTST
;;
	CALL  	BAMEBACS
;
	LD	A,(PLXPSL)
	PUSH	AF
	LD	A,(PLYPSL)
	PUSH	AF
;
	LD	A,$50
	LD	(PLXPSL),A
	LD	A,$30
	LD	(PLYPSL),A
;
	LD	A,$10
	CALL	PSERCHL
;
	LD	HL,PLYPSL
	LD	A,(ENDSYP)
	SUB	(HL)
	ADD	A,$03
	CP	$06
	JR	NC,AGMA030
;
	LD	HL,PLXPSL
	LD	A,(ENSVXL)
	SUB	(HL)
	ADD	A,$03
	CP	$06
	JR	NC,AGMA030
;
	CALL  	BSNEXT
;
	CALL	LDTIM0
	LD	(HL),$1F+18
;
	LD	HL,ENLIFE
	ADD	HL,BC
	LD	(HL),$FF
	CALL	BHAYABIT
AGMA030
	POP	AF
	LD	(PLYPSL),A
	POP	AF
	LD	(PLXPSL),A
;
		jp	E8MVCL
;;;;;;;;	CALL	E8MVCL
;;;;;;;;	RET
;
;
;
;
;
;
;
;
;	LD	A,(KEYA2)
;	AND	$30
;	JR	Z,AGM100
;;
;	LD	HL,ENCHPT
;	ADD	HL,BC
;	LD	A,(HL)
;	INC	A
;	CP	$14
;	JR	C,AGM080
;	XOR	A
;AGM080
;	LD	(HL),A
;AGM100
;	RET
;================================
AGUNIMCS
	CALL	AGTAMCS	;�ʁI
;
	CALL	AGTECS1	;��P
	CALL	AGTECS2	;��Q
;
		jp	AGBDCS	;��
;;;;;;;;	CALL	AGBDCS	;��
;;;;;;;;	RET
;=========================================
AGTECD
	DB	$6A,$00,$6C,$00
	DB	$6C,$20,$6A,$20
;
	DB	$6A,$00,$FF,$FF
	DB	$6A,$20,$FF,$FF
AGTECD2
	DB	$00,$00,$6A,$00
	DB	$08,$08,$7A,$00
;
	DB	$08,$00,$7A,$20
	DB	$00,$08,$6A,$20
;- - - - - - - - - - - - - - - - - - - - -
AGTEPD1
	DB	$00,$00,$00,$00,$02
	DB	$00,$00,$00,$00,$02
	DB	$04,$04,$04,$04,$04
	DB	$05,$05,$05,$05,$05
AGTEPX1
	DB	$F0,$F3,$F3,$F0,$F5
	DB	$F0,$F3,$F3,$F0,$F5
	DB	$F1,$F0,$F1,$F2,$F0
	DB	$0F,$10,$0F,$0E,$10
AGTEPY1
	DB	$ED,$ED,$F1,$F1,$FD
	DB	$ED,$ED,$F1,$F1,$FD
	DB	$F4,$F6,$F7,$F6,$F8
	DB	$F4,$F6,$F7,$F6,$F8
AGTEPD2
	DB	$01,$01,$01,$01,$03
	DB	$01,$01,$01,$01,$03
	DB	$02,$02,$02,$02,$02
	DB	$03,$03,$03,$03,$03
AGTEPX2
	DB	$10,$0D,$0D,$10,$13
	DB	$10,$0D,$0D,$10,$13
	DB	$F5,$F6,$F5,$F4,$F3
	DB	$13,$12,$13,$14,$15
AGTEPY2
	DB	$ED,$ED,$F1,$F1,$FD
	DB	$ED,$ED,$F1,$F1,$FD
	DB	$EB,$EC,$ED,$EC,$F2
	DB	$EB,$EC,$ED,$EC,$F2
;- - - - - - - - - - - - - - - - - - - -
AGTECS2
;;	LD	A,(ENCHPT2)
	LD	HL,ENCHPT
	ADD	HL,BC
	LD	A,(HL)
	LD	E,A
	LD	D,B
	LD	HL,AGTEPX2
	ADD	HL,DE
	LD	A,(ENSVXL)
	ADD	A,(HL)
	LD	(ENSVXL),A
;
	LD	HL,AGTEPY2
	ADD	HL,DE
	LD	A,(ENDSYP)
	ADD	A,$08
	ADD	A,(HL)
	LD	(ENDSYP),A
;
	LD	HL,AGTEPD2
	ADD	HL,DE
	JR	AGTESB
;==================================
AGTECS1
	LD	HL,ENCHPT
	ADD	HL,BC
	LD	A,(HL)
	LD	E,A
	LD	D,B
	LD	HL,AGTEPX1
	ADD	HL,DE
	LD	A,(ENSVXL)
	ADD	A,(HL)
	LD	(ENSVXL),A
;
	LD	HL,AGTEPY1
	ADD	HL,DE
	LD	A,(ENDSYP)
	ADD	A,$08
	ADD	A,(HL)
	LD	(ENDSYP),A
;
	LD	HL,AGTEPD1
	ADD	HL,DE
AGTESB
;	LD	A,(AGTMFG)
;	AND	A
;	JR	Z,AGTS100
;;
;	LD	A,(FRCNT)
;	AND	$01
;	JR	NZ,AGTC20
;;
;AGTS100
	LD	A,(HL)
	CP	$04
	JR	NC,AGTC10
;
	LD	(ENCHPT2),A
	LD	DE,AGTECD
	CALL	EN2CST
	JR	AGTESB2
;
AGTC10
	SUB	$04
	RLA
	RLA
	RLA
	AND	%11111000
	LD	E,A
	LD	D,B
	LD	HL,AGTECD2
	ADD	HL,DE
;
	LD	C,$02
	CALL	ENOMST
AGTESB2
	LD	A,$02
	CALL	NXOMSBL
;
AGTC20
		jp	ENPSSV
;;;;;;;;	CALL	ENPSSV
;;;;;;;;	RET
;=========================================
AGBDCD
;-------------------------------------------
;00
	DB	$F8,$F8,$60,$00
	DB	$F8,$00,$62,$00
	DB	$F8,$08,$62,$20
	DB	$F8,$10,$60,$20
	DB	$05,$F8,$6E,$00
	DB	$08,$00,$64,$00
	DB	$08,$08,$64,$20
	DB	$05,$10,$6E,$20
;01
	DB	$F8,$F8,$60,$00
	DB	$F8,$00,$62,$00
	DB	$F8,$08,$62,$20
	DB	$F8,$10,$60,$20
	DB	$05,$F9,$6E,$00
	DB	$08,$00,$64,$00
	DB	$08,$08,$64,$20
	DB	$05,$0F,$6E,$20
;02
	DB	$F8,$F8,$60,$00
	DB	$F8,$00,$62,$00
	DB	$F8,$08,$62,$20
	DB	$F8,$10,$60,$20
	DB	$06,$F9,$6E,$00
	DB	$08,$00,$64,$00
	DB	$08,$08,$64,$20
	DB	$06,$0F,$6E,$20
;03
	DB	$F8,$F8,$60,$00
	DB	$F8,$00,$62,$00
	DB	$F8,$08,$62,$20
	DB	$F8,$10,$60,$20
	DB	$06,$F8,$6E,$00
	DB	$08,$00,$64,$00
	DB	$08,$08,$64,$20
	DB	$06,$10,$6E,$20
;04
	DB	$FA,$F8,$60,$00
	DB	$FA,$00,$62,$00
	DB	$FA,$08,$62,$20
	DB	$FA,$10,$60,$20
	DB	$08,$F8,$6E,$00
	DB	$08,$00,$64,$00
	DB	$08,$08,$64,$20
	DB	$08,$10,$6E,$20
;-----------
;05
	DB	$FA,$F8,$60,$00
	DB	$FA,$00,$66,$00
	DB	$FA,$08,$66,$20
	DB	$FA,$10,$60,$20
	DB	$05,$F8,$6E,$00
	DB	$08,$00,$68,$00
	DB	$08,$08,$68,$20
	DB	$05,$10,$6E,$20
;06
	DB	$FA,$F8,$60,$00
	DB	$FA,$00,$66,$00
	DB	$FA,$08,$66,$20
	DB	$FA,$10,$60,$20
	DB	$05,$F9,$6E,$00
	DB	$08,$00,$68,$00
	DB	$08,$08,$68,$20
	DB	$05,$0F,$6E,$20
;07
	DB	$FA,$F8,$60,$00
	DB	$FA,$00,$66,$00
	DB	$FA,$08,$66,$20
	DB	$FA,$10,$60,$20
	DB	$06,$F9,$6E,$00
	DB	$08,$00,$68,$00
	DB	$08,$08,$68,$20
	DB	$06,$0F,$6E,$20
;08
	DB	$FA,$F8,$60,$00
	DB	$FA,$00,$66,$00
	DB	$FA,$08,$66,$20
	DB	$FA,$10,$60,$20
	DB	$06,$F8,$6E,$00
	DB	$08,$00,$68,$00
	DB	$08,$08,$68,$20
	DB	$06,$10,$6E,$20
;09
	DB	$F8,$F8,$60,$00
	DB	$F8,$00,$66,$00
	DB	$F8,$08,$66,$20
	DB	$F8,$10,$60,$20
	DB	$04,$F8,$6E,$00
	DB	$08,$00,$68,$00
	DB	$08,$08,$68,$20
	DB	$04,$10,$6E,$20
;--------------
;0A
	DB	$F8,$FC,$72,$00
	DB	$F8,$04,$74,$00
	DB	$08,$00,$76,$00
	DB	$08,$08,$78,$00
	DB	$FF,$FF,$FF,$FF
	DB	$FF,$FF,$FF,$FF
	DB	$FF,$FF,$FF,$FF
	DB	$FF,$FF,$FF,$FF
;0B
	DB	$FA,$FB,$72,$00
	DB	$FA,$03,$74,$00
	DB	$08,$00,$76,$00
	DB	$08,$08,$78,$00
	DB	$FF,$FF,$FF,$FF
	DB	$FF,$FF,$FF,$FF
	DB	$FF,$FF,$FF,$FF
	DB	$FF,$FF,$FF,$FF
;0C
	DB	$F8,$04,$74,$20
	DB	$F8,$0C,$72,$20
	DB	$08,$00,$78,$20
	DB	$08,$08,$76,$20
	DB	$FF,$FF,$FF,$FF
	DB	$FF,$FF,$FF,$FF
	DB	$FF,$FF,$FF,$FF
	DB	$FF,$FF,$FF,$FF
;0D
	DB	$FA,$05,$74,$20
	DB	$FA,$0D,$72,$20
	DB	$08,$00,$78,$20
	DB	$08,$08,$76,$20
	DB	$FF,$FF,$FF,$FF
	DB	$FF,$FF,$FF,$FF
	DB	$FF,$FF,$FF,$FF
	DB	$FF,$FF,$FF,$FF
;--------------------------------------------
AGBDPD
	DB	$00,$01,$02,$03,$04
	DB	$05,$06,$07,$08,$09
	DB	$0A,$0A,$0A,$0A,$0B
	DB	$0C,$0C,$0C,$0C,$0D
;--------------------------------------
AGBDCS
	LD	HL,ENCHPT
	ADD	HL,BC
	LD	A,(HL)
;;	LD	A,(ENCHPT2)
	LD	E,A
	LD	D,B
	LD	HL,AGBDPD
	ADD	HL,DE
	LD	A,(HL)
	LD	D,$00
	LD	E,A
	SLA	E
	RL	D
	SLA	E
	RL	D
	SLA	E
	RL	D
	SLA	E
	RL	D
	SLA	E
	RL	D
	LD	HL,AGBDCD
	ADD	HL,DE
;
	LD	C,$08
	CALL	ENOMST
;
	LD	A,$08
		jp	NXOMSBL
;;;;;;;;	CALL	NXOMSBL
;;;;;;;;	RET
;=========================================
AGTAMCD
	DB	$1E,$00,$1E,$60
	DB	$7C,$00,$7C,$20
	DB	$7E,$00,$7E,$20
AGTAMXD1
	DB	$14,$EC,$00,$00
;;	DB	$10,$F0,$F3,$F3
AGTAMYD1
	DB	$00,$00,$F0,$04
;;	DB	$EC+4,$EC+4,$F5,$F5
;;	DB	$EC+4,$EC+4,$ED,$ED
;AGTAMXD2
;	DB	$13+2,$ED,$0D,$0D
;AGTAMYD2
;	DB	$F5+4,$F5+4,$F5,$F5
;;	DB	$F5+4,$F5+4,$ED,$ED
;
AGTAMCS
	LD	A,(ENFLCL)
	PUSH	AF
	CALL	AGTAMCSS
	POP	AF
	LD	(ENFLCL),A
	RET
;=========================================
AGTAMCSS
;	LD	A,(FRCNT)
;	AND	$01
;	RET	Z
;
	LD	A,(AGTMFG)
	AND	A
	RET	Z
;
	DEC	A
	LD	(ENCHPT2),A
;
	LD	A,(FRCNT)
	RLA
	RLA
	RLA
	AND	%01010000
	LD	(ENFLCL),A
;
;;	LD	HL,ENMUKI
;;	ADD	HL,DE
	LD	A,(BSMUKI)
	LD	E,A
	LD	D,B
	LD	HL,AGTAMXD1
	ADD	HL,DE
	LD	A,(ENSVXL)
	ADD	A,(HL)
	LD	(ENSVXL),A	
	LD	HL,AGTAMYD1
	ADD	HL,DE
;	CALL	AGTMCSB
;
;	LD	A,(BSMUKI)
;	LD	E,A
;	LD	D,B
;	LD	HL,AGTAMXD2
;	ADD	HL,DE
;	LD	A,(ENSVXL)
;	ADD	A,(HL)
;	LD	(ENSVXL),A	
;	LD	HL,AGTAMYD2
;	ADD	HL,DE
;---------------------------------------
AGTMCSB
	LD	A,(ENDSYP)
	ADD	A,(HL)
	LD	(ENDSYP),A	
;
	LD	DE,AGTAMCD
	CALL	EN2CST
;
	LD	A,$02
	CALL	NXOMSBL
;
		jp	ENPSSV
;;;;;;;;	CALL	ENPSSV
;;;;;;;;	RET
;======================================
;�A�O�j�����[�U�[
;======================================
AGSDCD
	DB	$46,$00,$46,$60
	DB	$70,$00,$FF,$FF
AGSUNDER
	LD	DE,AGSDCD
	RET
;======================================
;�A�O�j���ʁI
;======================================
AGTAMACD
	DB	$7E,$00,$7E,$20
	DB	$7C,$00,$7C,$20
	DB	$1E,$00,$1E,$60
;
	DB	$58,$00,$58,$20
	DB	$5A,$00,$5A,$20
AGTAMAMV
	LD	A,(FRCNT)
	RLA
	RLA
	RLA
	AND	%01010000
	LD	(ENFLCL),A
;
	LD	DE,AGTAMACD
	CALL	EN2CST
;
	CALL	E8STCK
;
	CALL	ENHNCL
;
	LD	A,(ENSTAT2)
	CP	$04
	JR	NZ,AGT000
;
	CALL	LDTIM1
	JP	Z,E8CLER
;
	XOR	C
	BIT	0,A
	LD	E,$FF
	JR	Z,AGT0E0
;
	CALL	LDTIM1
	LD	E,$01
	CP 	$08
	JR	NC,AGT0E0
;
	LD	E,$02
AGT0E0
	LD	A,E
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;AGT0F0
;;;;;;;;	RET
;
AGT000
	CALL	E8MVCL
	CALL	ENBGCKL
;
	LD	A,(ENSTAT2)
	RST	00
	DW	AGT1000	;�m�[�}��
	DW	AGT2000	;�͂˂��������u��
	DW	AGT3000	;�͂˂���������{�X������`�F�b�N�I
;
	DW	AGT4000	;�n�Y���ʁI
;=====================================
AGT1000
	CALL	CREPKEL
;---------------------------------------
AGTMSUB
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	INC	A
	LD	(HL),A
	AND	$03
	JR	NZ,AGT1020
;
	LD	A,BOSS
	CALL	ENIDSHL
	RET	C
;
	LD	HL,ENMOD0
	ADD	HL,DE
	LD	(HL),%11000010
	LD	HL,ENMOD1
	ADD	HL,DE
	LD	(HL),D
;
	LD	HL,ENWRK3
	ADD	HL,DE
	INC	(HL)
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
	LD	HL,ENTIM1
	ADD	HL,DE
	LD	(HL),$0F
;
	LD	HL,ENCHPT
	ADD	HL,DE
	LD	(HL),$01
;
	LD	HL,ENSTAT
	ADD	HL,DE
	LD	(HL),$04
AGT1020
AGTBGCK
	LD	HL,ENCBFG
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,AGT1030
;
	JP	E8CLER	
AGT1030
	RET
;=====================================
AGT2000
	LD	A,$08
	LD	(SOUND3),A	;(S)
;
	LD	A,$18
	CALL	PSERCH2L
;
	LD	A,(WORK0)
	LD	(PLYSPD),A
	CPL
	INC	A
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),A
	LD	A,(WORK1)
	LD	(PLXSPD),A
	CPL
	INC	A
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
;
	LD	A,$10
	LD	(HANEFG),A
;
		jp	STATINC
;;;;;;;;	CALL	STATINC
;;;;;;;;	RET
;=====================================
AGT3000	
	CALL	AGTMSUB
;
	LD	A,(BSCSOFF)
	AND	A
	RET	NZ
;
	LD	A,(BSINDX)
	LD	E,A
	LD	D,B
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	A,(ENSVXL)
	SUB	(HL)
	ADD	A,$10
	CP	$20
	JR	NC,ATG3090
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	A,(ENDSYP)
	SUB	(HL)
	ADD	A,$0C
	CP	$18
	JR	NC,ATG3090
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	A,(HL)
	SLA	A
	LD	HL,ENHNXS
	ADD	HL,DE
	LD	(HL),A
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	A,(HL)
	SLA	A
	LD	HL,ENHNYS
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,ENHNFG
	ADD	HL,DE
	LD	(HL),$12
;
	CALL	E8CLER
;
	LD	A,(BSDMCT)
	INC	A
	LD	(BSDMCT),A
	CP	$04
	JR	C,BSFLSDS
;
	LD	HL,ENSTAT
	ADD	HL,DE
	LD	(HL),$07
;
	LD	HL,ENTIM0
	ADD	HL,DE
	LD	(HL),$C0
;
	LD	A,$36
	LD	(SOUND1),A	;(S)
BSFLSDS
	LD	HL,ENFLSH
	ADD	HL,DE
	LD	(HL),$14
;
	LD	A,$07
	LD	(SOUND2),A	;(S)
ATG3090
	RET
;=====================================
AGT4XS
	DB	$20,$20,$E0,$E0
AGT4YS
	DB	$20,$E0,$20,$E0
AGT4000
	CALL	CRENPLL
;
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	AND	$01
	ADD	A,$03
	CALL	ENPTST
;
	CALL	LDTIM0
	JR	Z,AGT4020
;
	AND	$01
	JR	NZ,AGT4020
;
	LD	A,$18
	CALL	PSERCHL
AGT4020	
	LD	HL,ENCBFG
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,AGT4050
;
	LD	A,$36
	LD	(SOUND3),A	;(S)
;
	XOR	A
AGT4030
	LD	(ENHELP),A
;
	LD	A,BHFIR
	CALL	ENIDSHL
	JR	C,AGT4040
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
	LD	A,(WORK0)
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A
	LD	A,(WORK1)
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	A,(ENHELP)
	LD	C,A
	LD	HL,AGT4XS
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,DE
	LD	(HL),A
	LD	HL,AGT4YS
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENYSPD
	ADD	HL,DE
	LD	(HL),A
;
	POP	BC
	LD	A,(ENHELP)
	INC	A
	CP	$04
	JR	NZ,AGT4030
;
AGT4040
	JP	E8CLER
AGT4050
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�����{�X INIT		   %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
BHAYABIT
	LD	E,$80
	LD	HL,YMVBUF
BHBI010
	XOR	A
	LD	(HLI),A
;
	DEC	E
	JR	NZ,BHBI010
;
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�����{�X		   %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;- - - - - - - - - - - - - - - - -
BHYCHPT
	DB	$03,$03,$05,$05
	DB	$00,$00,$04,$04
	DB	$02,$02,$06,$06
	DB	$01,$01,$07,$07
;- - - - - - - - - - - - - - - - -
BHYSPDT
	DB	$00,$06,$0C,$0E
BHXSPDT
	DB	$10,$0E,$0C,$06
	DB	$00,$FA,$F4,$F2
	DB	$F0,$F2,$F4,$FA
	DB	$00,$06,$0C,$0E
BHYBCDT
	DB	6,7,0,1,2,3,4,5
;- - - - - - - - - - - - - - - - -
BHYCRCK
	CALL	E8STCK
	JP	CREPKEL
;--------------------------------------------------
BHAYABMV
	LD	A,(ENSTAT2)
	RST	00
	DW	BHYM0000
	DW	BHYM1000
	DW	BHYM2000
	DW	BHYM3000
;================================================
BHAYABCD2
;0
	DB	$00,$00,$4A,$00
	DB	$00,$08,$4A,$20
	DB	$FF,$FF,$FF,$FF
	DB	$FF,$FF,$FF,$FF
	DB	$FF,$FF,$FF,$FF
	DB	$FF,$FF,$FF,$FF
;1
	DB	$00,$00,$4C,$00
	DB	$00,$08,$4C,$20
	DB	$FF,$FF,$FF,$FF
	DB	$FF,$FF,$FF,$FF
	DB	$FF,$FF,$FF,$FF
	DB	$FF,$FF,$FF,$FF
;2
	DB	$00,$00,$4E,$00
	DB	$00,$08,$4E,$20
	DB	$FF,$FF,$FF,$FF
	DB	$FF,$FF,$FF,$FF
	DB	$FF,$FF,$FF,$FF
	DB	$FF,$FF,$FF,$FF
;3
	DB	$00,$F8,$78,$00
	DB	$F8,$00,$7A,$00
	DB	$F8,$08,$7A,$20
	DB	$00,$10,$78,$20
	DB	$08,$00,$7C,$00
	DB	$08,$08,$7C,$20
;- - - - - - - - - - - - - - - - - - - - - - -
BHYMPT2
	DB	3,3,2,1,0,0,0,0  
BHYM0000
	XOR	A
	LD	(ENCHPT2),A
;
	CALL	LDTIM0
	JR	NZ,BHYM010
;
	JP  	STATINC
BHYM010
	CP	$20
	JR	NZ,BHYM011
;
	DEC	(HL)
;
	CALL	BSNXSD	;(S)
	LD	A,$20
BHYM011
	RRA
	RRA	
	RRA	
	AND	$07
	LD	E,A
	LD	D,B
	LD	HL,BHYMPT2
BHYCSB2
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
	LD	HL,BHAYABCD2
	ADD	HL,DE
	LD	C,$06
	CALL	ENOMST
;
	LD	A,$06
		jp	NXOMSBL
;;;;;;;;	CALL	NXOMSBL
;;;;;;;;	RET
;- - - - - - - - - - - - - - - - - - - - - - -
BHYMPT3
	DB	0,0,1,1,2,2,3,3  
;
BHYM3000
	XOR	A
	LD	(ENCHPT2),A
;
	CALL	LDTIM0
	JR	NZ,BHYM310
;
	CALL	BSNEXT
	CALL	IDOUSD	;(S)
;
	LD	HL,ENLIFE
	ADD	HL,BC
	LD	(HL),$FF
;
	LD	HL,ENMOD0
	ADD	HL,BC
	LD	(HL),%01000000
;
	LD	HL,ENMOD1
	ADD	HL,BC
	LD	(HL),%00001010
	LD	HL,ENMOD3
	ADD	HL,BC
	LD	(HL),%10010000
		jp	ENSZST
;;;;;;;;	CALL	ENSZST
;;;;;;;;	RET
;;	JP	E8CLER	;NEXT
;;	JP  	STATINC
BHYM310
	RRA
	RRA	
	RRA	
	AND	$07
	LD	E,A
	LD	D,B
	LD	HL,BHYMPT3
	JR	BHYCSB2
;================================================
BHYM2000
	LD	HL,ENTIM4
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	NZ,BHYM1000
;
	CALL	LDTIM0
	LD	(HL),$1F
;
	CALL	BAMSUBS	;(S)
;
	JP	STATINC	
BHYM1000
	CALL	BHYCRCK ;CREPKEL
;
	CALL	BHAYABCS
;
	CALL	ENHNCL
;
	CALL	ENPSSV
;
	CALL	E8STCK
;
	XOR	A
	LD	($D3D6),A	
;
	LD	E,$0C
;
	LD	HL,ENTIM2
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,BHBM010
;
BHBM001		;�n�C�X�s�[�h�I
	CALL	BHBM011
;
	LD	A,$01
	LD	($D3D6),A	
;
	LD	E,$0C
BHBM010
	LD	HL,BSINDX2
	LD	A,(HL)
	INC	A
	LD	(HL),A
	CP	E
	JR	C,BHBM011
;
	LD	(HL),B
;
	LD	A,$38
	LD	(SOUND1),A	;(S)	�J�^�J�^�B�B�B
BHBM011
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
	CALL	BHAYASUB
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	E,(HL)
	SRL	E
	LD	D,B
	LD	HL,BHYBCDT
	ADD	HL,DE
	LD	A,(HL)
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;;
;;;;;;;;BHBM090
;;;;;;;;	RET
;================================
BHAYABCD
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
BHAYABC2
	DB	$70,$00,$70,$20
	DB	$72,$00,$72,$20
	DB	$74,$00,$74,$20
	DB	$76,$00,$76,$20
;----------------------------------------------
BHAYABCS
	LD	HL,ENMOD0
	ADD	HL,BC
	LD	(HL),%01001000
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
	LD	HL,BHAYABCD
	ADD	HL,DE
	LD	C,$8
;
	CALL	ENOMST
;- - - Tail set - - - -
	LD	HL,ENMOD0
	ADD	HL,BC
	LD	(HL),%01000010
;
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	LD	(WORK0),A
;1=======================================
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
	LD	DE,BHAYABC2
	CALL	EN2CST
;2=====================================
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
	LD	DE,BHAYABC2
	CALL	EN2CST
;3========================================
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
	LD	DE,BHAYABC2
	CALL	EN2CST
;4=====================================
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
	LD	DE,BHAYABC2
	CALL	EN2CST
;
	LD	A,(ENSTAT2)
	CP	$02
	JR	NC,BHBC090
;
	LD	HL,ENFLSH
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	NZ,BHBC090
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
	LD	HL,ENLIFE
	ADD	HL,BC
	LD	A,(HL)
	CP	$F0
	JR	NC,BHBC090
;
	CALL	STATINC
;
	LD	HL,ENTIM4
	ADD	HL,BC
	LD	(HL),$50
BHBC090
	RET
;=========================================
BHAYASUB
	LD	A,(ENSTAT2)
	CP 	$02
	JR	NC,BHYS010
;
	LD	HL,ENFLSH
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	NZ,BHYS010
;
	CALL	E8MVCL
BHYS010
;;	CALL	CREPKEL
;
	CALL	ENBGCKL
;
	LD	HL,ENCBFG
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,BHYM008
;
	LD	E,$08
;
	BIT	0,A
	JR	NZ,BHYBC10
;
	LD	E,$00
	BIT	1,A
	JR	NZ,BHYBC10
;
	LD	E,$04
	BIT	2,A
	JR	NZ,BHYBC10
;
	LD	E,$0C
BHYBC10
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	(HL),E
;
	CALL	RNDSUB
	RRA
	JR	C,BHYM00A
;
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	A,(HL)
	CPL
	INC	A
	LD	(HL),A
BHYM00A
;	LD	HL,ENWRK0
;	ADD	HL,BC
;	LD	A,(HL)
;	ADD	A,$08
;	AND	$0F
;	LD	(HL),A
;
	CALL	LDTIM0
	LD	(HL),$10
BHYM008
	CALL	LDTIM1
	JR	NZ,BHYM050
;		
	LD	(HL),$06
BHYM018
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
	LD	HL,BHYCHPT
	ADD	HL,DE
	LD	A,(HL)
	CALL	ENPTST
;
	LD	HL,BHYSPDT
	ADD	HL,DE
;
	LD	A,(HL)
;
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),A
;
	LD	HL,BHXSPDT
	ADD	HL,DE
;
	LD	A,(HL)
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
;
BHYM050
	CALL	LDTIM0
	JR	NZ,BHYM070
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
BHYM070
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�K�m��			   %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
GANONMV
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	CP	$03
	JP	Z,GABLZNZ
	CP	$02
	JP	Z,GABADMV
	AND	A
	JP	NZ,GABOMV
;
	LD	A,(ENSTAT2)
;;	CP	$09
;;	JR	NC,GAN01
;
	CP	$02
	JR	C,GAN01
	CP	$0B
	JR	Z,GABL100
	CP	$0C
	JR	NZ,GABL180
;
GABL100
	LD	A,$06
	LD	(ENCHPT2),A
;
	CALL	BAMEBACS
	JR	GABL200
;
GABL180
	CALL	GANONCS
GABL200
	CALL	E8STCK
;
	CALL	ENHNCL
;
	LD	A,(ENSTAT2)
	CP	GFAIL ;$09
	JR	NC,GAN01
;
	CALL	CREPKEL
;
	LD	HL,ENLIFE
	ADD	HL,BC
	LD	A,(HL)
	CP	$E8
	JR	NC,GAN01
;
	CALL	STATINC
	LD	(HL),GFAIL ;$09
;
	LD	A,GFAIL ;$09
	LD	(ENSTAT2),A
;
	LD	A,$10
	LD	(SOUND2),A	;(S)
;
	CALL	LDTIM0
	LD	(HL),$80
	LD	HL,ENFLSH
	ADD	HL,BC
	LD	(HL),$80
GAN01
	LD	A,(ENSTAT2)
	RST	00
	DW	GAN0000
	DW	GAN1000
	DW	GAN2000
	DW	GAN2800
	DW	GAN3000
	DW	GAN4000
	DW	GAN5000
	DW	GAN6000
	DW	GAN7000
;
	DW	GAN8000
	DW	GAN9000
	DW	GANA000
	DW	GANA800
	DW	GANB000
;
GFAIL	EQU	$09
;================================================
;================================================
GANONCD2
;0
	DB	$00,$00,$4A,$00
	DB	$00,$08,$4A,$20
	DB	$FF,$FF,$FF,$FF
	DB	$FF,$FF,$FF,$FF
	DB	$FF,$FF,$FF,$FF
	DB	$FF,$FF,$FF,$FF
;1
	DB	$00,$00,$4C,$00
	DB	$00,$08,$4C,$20
	DB	$FF,$FF,$FF,$FF
	DB	$FF,$FF,$FF,$FF
	DB	$FF,$FF,$FF,$FF
	DB	$FF,$FF,$FF,$FF
;2
	DB	$00,$00,$4E,$00
	DB	$00,$08,$4E,$20
	DB	$FF,$FF,$FF,$FF
	DB	$FF,$FF,$FF,$FF
	DB	$FF,$FF,$FF,$FF
	DB	$FF,$FF,$FF,$FF
;3
	DB	$F0,$00,$5C,$00
	DB	$F0,$08,$5C,$20
	DB	$00,$00,$5E,$00
	DB	$00,$08,$5E,$20
	DB	$FF,$FF,$FF,$FF
	DB	$FF,$FF,$FF,$FF
;4
	DB	$00,$FC,$6A,$00
	DB	$00,$04,$6C,$20
	DB	$00,$0C,$6A,$20
	DB	$F3,$FC,$50,$00
	DB	$F3,$04,$52,$00
	DB	$F3,$0C,$6E,$00
;==================================
GAN0000
	XOR	A
	LD	(ENCHPT2),A
	CALL	ENPTST
	CALL  	BAMEBACS
;
	LD	A,(PLXPSL)
	PUSH	AF
	LD	A,(PLYPSL)
	PUSH	AF
;
	LD	A,$50
	LD	(PLXPSL),A
	LD	A,$30
	LD	(PLYPSL),A
;
	LD	A,$10
	CALL	PSERCHL
;
	LD	HL,PLYPSL
	LD	A,(ENDSYP)
	SUB	(HL)
	ADD	A,$03
	CP	$06
	JR	NC,GAN0030
;
	LD	HL,PLXPSL
	LD	A,(ENSVXL)
	SUB	(HL)
	ADD	A,$03
	CP	$06
	JR	NC,GAN0030
;
	CALL	LDTIM0
	LD	(HL),$60   
;
	CALL	STATINC
GAN0030
	POP	AF
	LD	(PLYPSL),A
	POP	AF
	LD	(PLXPSL),A
;
		jp	E8MVCL
;;;;;;;;	CALL	E8MVCL
;;;;;;;;	RET
;- - - - - - - - - - - - - - - - - - - - - - -
GANONPT2
	DB	4,3,2,1,0,0,0,0  
	DB	0,0,0,0,0
GAN1000
	CALL	LDTIM0
	JR	NZ,GAN1010
;
	LD	(GABOFG),A
;
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	A,(HL)
	SUB	$08
	LD	(HL),A
;
	CALL	LDTIM0
	LD	(HL),$08
;
	LD	A,$04
	CALL	ENPTST
;
;;	XOR	A
;;	LD	(BSMUKI),A
;;	CALL	GAMKST
;
	CALL	BSNXSD	;(S)
	JP  	STATINC
GAN1010
	RRA
	RRA	
	RRA	
	AND	$0F
	LD	E,A
	LD	D,B
	LD	HL,GANONPT2
GANCSB2
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
	LD	HL,GANONCD2
	ADD	HL,DE
	LD	C,$06
	CALL	ENOMST
;
	LD	A,$06
		jp	NXOMSBL
;;;;;;;;	CALL	NXOMSBL
;;;;;;;;	RET
;==========================================
GAN2000
	CALL	LDTIM0
	JR	NZ,GAN2030
;
	LD	(HL),$7F
;;	LD	(HL),$FF
	JP  	STATINC
;----------------------------------
GAMKST
	CALL	E8XCHK
	LD	A,E
	LD	(BSMUKI),A
	RET
;- - - - - - - - - - - - - - - - -
GAN2030
;	CP	$20
;	JR	NC,GAN2050
;;
;	LD	A,$00
;	CALL	ENPTST
GAN2050
	RET
;==========================================
GA28PT
;;	DB	4,4,4,4,4,4,9,9,9,4,4,0,1,0,1,4
;
	DB	4,4,4,4
	DB	4,4,4,4
	DB	4,4,4,4
	DB	4,4,4,4
	DB	0,0,0,0
	DB	0,0,0,0
	DB	0,0,0,0
	DB	0,0,0,0
GA28BT
;;	DB	5,5,5,5,5,5,5,5,5,5,5,2,7,8,0,0
;
	DB	5,5,5,5
	DB	5,5,5,5
	DB	5,5,5,5
	DB	5,5,5,5
	DB	2,7,8,0
	DB	0,0,0,0
	DB	0,0,0,0
	DB	0,0,0,0
;
GAN2800
	LD	A,$00
	LD	(BSMUKI),A
;
	CALL	LDTIM0
	JR	NZ,GAN2810
;
;;	LD	(HL),$FF
	CALL	LDTIM3
	LD	(HL),$4C
;;;	LD	(HL),$60
	CALL	GAMKST
;
	JP	STATINC
GAN2810
	CP	$40
	JR	NZ,GAN2811
;
	LD	HL,SOUND3
	LD	(HL),$19	;(S)
GAN2811
	CP	$58
	JR	NZ,GAN2818
;
	LD	HL,SOUND1
	LD	(HL),$39	;(S)
GAN2818
	RRA
	RRA
;;	RRA
;;	RRA
	AND	%00111111
	LD	E,A
	LD	D,B
	LD	HL,GA28BT
	ADD	HL,DE
	LD	A,(HL)
	LD	(GABOFG),A
	LD	HL,GA28PT
	ADD	HL,DE
	LD	A,(HL)
	CALL	ENPTST
;
	LD	A,(GABOFG)
	CP	$05
	JR	Z,GA2890
;
	LD	A,$F3
	LD	(GABOXD),A
;
	LD	A,$F0
	LD	(GABOYD),A
	RET
GA2890
	LD	A,$F8
	LD	(GABOXD),A
;
	LD	A,$FE
	LD	(GABOYD),A
	RET
;==========================================
GANSPPT
	DB	3,2,1,0
	DB	0,1,2,3
;;	DB	7,6,1,6
;;	DB	9,8,3,8
;- - - - - - - - - - - - - - - - - -
GABSYD
	DB	$E8,$00,$18,$18,$00,$E8,$E8,$00
;;	DB	$E8,$ED
GABSXD
	DB	$10,$18,$10,$F0,$E8,$F0,$10,$18
;;	DB	$00,$13,$18,$13,$00,$ED,$E8,$ED
GAN3000
	CALL	LDTIM3
	JR	NZ,GAN3008
;
	LD	(BSWRK0),A
;
	CALL	LDTIM0
	LD	(HL),$30
;
	JP	STATINC
;
GAN3008
	LD	A,(BSMUKI)
	AND	A
	LD	A,$F5
	JR	Z,GAN2010
	LD	A,$0B
GAN2010
	LD	(GABOXD),A
;
	LD	A,$EE
	LD	(GABOYD),A
;
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	NOP
	AND	$01
	CALL	ENPTST
;
	LD	A,(BSMUKI)
	AND	A
	LD	HL,GANSPPT
	JR	Z,GAN3010
	LD	HL,GANSPPT+4
GAN3010
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	NOP
	NOP
	AND	$03
	LD	E,A
	LD	D,B
	ADD	HL,DE
	LD	A,(HL)
	INC	A
	LD	(GABOFG),A
;
;;	CALL	LDTIM0
	LD	A,(FRCNT)
	AND	$1F
	JR	NZ,GAN3070
;
	LD	A,(BSWRK0)
	CP	$06 ;8
	JR	NC,GAN3070
;
	LD	A,BOSS
	CALL	ENIDSHL
	RET	C
;
	LD	HL,ENTIM0
	ADD	HL,DE
	LD	(HL),$30
;
	LD	HL,ENWRK0
	ADD	HL,DE
	LD	(HL),$02
;
	PUSH	BC
;
	LD	HL,ENMOD0
	ADD	HL,DE
	LD	(HL),%01000010
	LD	HL,ENMOD1
	ADD	HL,DE
	LD	(HL),%00000000
;
	PUSH	DE
		ld	c,e
		ld	b,d
;;10/31;	PUSH	DE
;;10/31;	POP	BC
	CALL	ENSZST
;
	POP	DE
;
	LD	A,(BSMUKI)
	AND	A
	LD	A,(BSWRK0)
	JR	NZ,GAN3060
	XOR	$07
GAN3060
	LD	C,A
	LD	HL,GABSXD
	ADD	HL,BC
	LD	A,(GABOXD)
	ADD	A,(HL)
	LD	HL,WORK0
	ADD	A,(HL)
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,GABSYD
	ADD	HL,BC
	LD	A,(HL)
	SUB	$0C
	LD	HL,WORK1
	ADD	A,(HL)
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,BSWRK0
	INC	(HL)
;
	POP	BC
GAN3070
	RET
;================================================
G4BOPT
	DB	$B,$A,$2,$A
;
GAN4000
	LD	A,(BSMUKI)
	AND	A
	LD	A,$FD
	JR	Z,GAN4010
	LD	A,$03
GAN4010
	LD	(GABOXD),A
;
	LD	A,$EC
	LD	(GABOYD),A
;
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	NOP
	NOP
	AND	$03
	LD	E,A
	LD	D,B
	LD	HL,G4BOPT
	ADD	HL,DE
	LD	A,(HL)
	INC	A
	LD	(GABOFG),A
;
	CALL	LDTIM0
	JR	NZ,GAN4020
;
	LD	(HL),$40
;
	XOR	A
	LD	(GABOFG),A
;
	CALL	STATINC
;
	LD	A,BOSS
	CALL	ENIDSHL
	JR	C,GAN4020
;
	LD	HL,ENWRK0
	ADD	HL,DE
	INC	(HL)
;
	LD	A,(WORK1)
	SUB	$10
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	A,(BSMUKI)
	LD	HL,ENMUKI
	ADD	HL,DE
	LD	(HL),A
	AND	A
	LD	A,$08
	JR	NZ,GAN4018
	LD	A,$F8
GAN4018
	LD	HL,WORK0
	ADD	A,(HL)
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,ENMOD0
	ADD	HL,DE
	LD	(HL),%01000000
	LD	HL,ENMOD1
	ADD	HL,DE
	LD	(HL),%00001000
;
	PUSH	BC
		ld	c,e
		ld	b,d
;;10/31;	PUSH	DE
;;10/31;	POP	BC
;
	CALL	ENSZST
	LD	A,$18
	CALL	PSERCHL
;
	CALL	LDTIM0
	LD	(HL),$30
;
	LD	A,$27
	LD	(SOUND3),A	;(S)
;
	POP	BC
GAN4020
	LD	A,$02
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;	RET
;================================================
GAN5000
	CALL	LDTIM0
	JR	NZ,GAN5010
;
	LD	(HL),$1F
;
	CALL	RNDSUB
	AND	$07
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	(HL),A
;
	CALL	IDOUSD	;(S)
;
	CALL	STATINC
;;	LD	(HL),$03+1
GAN5010
	LD	A,$03
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;	RET
;================================================
GAWPPX
	DB	$28,$50,$78
	DB	$28,$78
	DB	$28,$50,$78
GAWPPY
	DB	$20,$28,$20
	DB	$30,$30
	DB	$50,$50,$50
GAWPSD
	DB	$20,$1E,$1C,$1A,$18,$16,$14,$12
	DB	$10,$0E,$0C,$0A,$08,$06,$04,$02
; - - - - - - - - - - - - - - - -
GAN6000
	LD	A,$04
	CALL	ENPTST
;
	LD	A,(PLXPSL)
	PUSH	AF
	LD	A,(PLYPSL)
	PUSH	AF
;
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	E,(HL)
	LD	D,B
	LD	HL,GAWPPX
	ADD	HL,DE
	LD	A,(HL)
	LD	(PLXPSL),A
	LD	HL,GAWPPY
	ADD	HL,DE
	LD	A,(HL)
	LD	(PLYPSL),A
;
	CALL	LDTIM0
	RRA
	AND	$0F
	LD	E,A
	LD	D,B
	LD	HL,GAWPSD
	ADD	HL,DE
	LD	A,(HL)
	CALL	PSERCHL
;
	LD	HL,ENSVXL
	LD	A,(PLXPSL)
	SUB	(HL)
	ADD	A,$03
	CP	$06
	JR	NC,GAN6010
;
	LD	HL,ENDSYP
	LD	A,(PLYPSL)
	SUB	(HL)
	ADD	A,$03
	CP	$06
	JR	NC,GAN6010
;
	CALL	STATINC
;
GAN6010
	POP	AF
	LD	(PLYPSL),A
	POP	AF
	LD	(PLXPSL),A
;
		jp	E8MVCL
;;;;;;;;	CALL	E8MVCL
;;;;;;;;	RET
;===========================================
GAN7000
	RET
;
;===========================================
GAN8000
	CALL	LDTIM0
	JR	NZ,GAN8010
;
	LD	(HL),$40
;
	CALL	BAMSUBS	;(S)
;
	CALL	STATINC
	LD	A,$00
	CALL	ENPTST
;
	XOR	A
	LD	(GABOFG),A
GAN8010	
	RET
;===========================================
GAN9000
	LD	A,$06
	LD	(ENCHPT2),A
;
	CALL	BAMEBACS
;
	CALL	LDTIM0
		ret	NZ
;;;;;;;;	JR	NZ,GAN9010
;
	LD	HL,ENMOD0
	ADD	HL,BC
	RES	6,(HL)
;
	CALL	STATINC
;
		jp	ENSDCL
;;;;;;;;	CALL	ENSDCL
;;;;;;;;;
;;;;;;;;;	LD	A,$24
;;;;;;;;;	CALL	PSERCH2L
;;;;;;;;;;
;;;;;;;;;	LD	A,(WORK0)
;;;;;;;;;	CPL
;;;;;;;;;	INC	A
;;;;;;;;;	LD	HL,ENYSPD
;;;;;;;;;	ADD	HL,BC
;;;;;;;;;	LD	(HL),A
;;;;;;;;;	LD	A,(WORK1)
;;;;;;;;;	CPL
;;;;;;;;;	INC	A
;;;;;;;;;	LD	HL,ENXSPD
;;;;;;;;;	ADD	HL,BC
;;;;;;;;;	LD	(HL),A
;;;;;;;;GAN9010
;;;;;;;;	RET
;===========================================
GANA000
	CALL	CREPKEL
;
	CALL	E8MVCL
;
	CALL	ENBGCKL
;
	LD	A,(FRCNT)
	AND	$01
	JR	NZ,GANA00E
;
	LD	A,$18
	CALL	PSERCH2L
;
	LD	A,(WORK0)
	LD	HL,ENYSPD
	SUB	(HL)
	BIT	7,A
	JR	Z,GANA008
	DEC	(HL)
	DEC	(HL)
GANA008
	INC	(HL)
;
	LD	A,(WORK1)
	LD	HL,ENXSPD
	SUB	(HL)
	BIT	7,A
	JR	Z,GANA00A
	DEC	(HL)
	DEC	(HL)
GANA00A
	INC	(HL)
GANA00E
;
;	LD	HL,ENCBFG
;	ADD	HL,BC
;	LD	A,(HL)
;	AND	A
;	JR	Z,GANA010
;;
;	LD	A,$18
;	CALL	PSERCHL
;;
;	LD	A,$3A
;	LD	(SOUND1),A	;(S)
;GANA010
	LD	HL,ENFLSH
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,GANA020
;
	LD	HL,ENMOD0
	ADD	HL,BC
	SET	6,(HL)
;
	CALL	LDTIM0
	LD	(HL),$80
;
	CALL	SOUNDCLR	;(S)
;
	LD	A,$10
	LD	(SOUND2),A	;(S)
;
	CALL	BAMSUB
;
	JP	STATINC
GANA020
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	INC	A
	LD	(HL),A
	AND	$07
	RET	NZ
;
	LD	A,BOSS
	CALL	ENIDSHL
;
	RET	C
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
	LD	(HL),$03
;
	LD	HL,ENTIM0
	ADD	HL,DE
	LD	(HL),$1F
;
	LD	HL,ENMOD0
	ADD	HL,DE
	LD	(HL),%11000010
;
	LD	HL,ENCHPT
	ADD	HL,DE
	LD	(HL),$01
	RET
;=======================================
GANA800
	CALL	LDTIM0
;	CP	$01
;	JP	Z,IDOUSD	;(S)
;	AND	A
;	RET	NZ
	CP	$01
	JR	NZ,GANA810
	DEC	(HL)
	JP  	IDOUSD	;(S)
;
GANA810
	AND	A
	RET	NZ
;
	LD	A,(PLXPSL)
	PUSH	AF
	LD	A,(PLYPSL)
	PUSH	AF
;
	LD	A,$50
	LD	(PLXPSL),A
	LD	A,$30
	LD	(PLYPSL),A
;
	LD	A,$0C
	CALL	PSERCHL
;
	LD	HL,PLYPSL
	LD	A,(ENDSYP)
	SUB	(HL)
	ADD	A,$03
	CP	$06
	JR	NC,GA80030
;
	LD	HL,PLXPSL
	LD	A,(ENSVXL)
	SUB	(HL)
	ADD	A,$03
	CP	$06
	JR	NC,GA80030
;
;	CALL	LDTIM0
;	LD	(HL),$60   
	CALL	LDTIM0
	LD	(HL),$1F+$40
;
	CALL	STATINC
GA80030
	POP	AF
	LD	(PLYPSL),A
	POP	AF
	LD	(PLXPSL),A
;
		jp	E8MVCL
;;;;;;;;	CALL	E8MVCL
;;;;;;;;	RET
;=======================================
GANBCD
	DB	0,0,0,1,1,1,2,2
GANB000
	CALL	LDTIM0
	JR	NZ,GANB010
;
	CALL	ENSDCL
;
	CALL  	BSNEXT
;
;	LD	HL,ENWRK0
;	ADD	HL,BC
;	LD	(HL),$20	;��]�X�s�[�h�I
;
	LD	HL,ENLIFE
	ADD	HL,BC
	LD	(HL),$FF
;
	LD	HL,ENMOD0
	ADD	HL,BC
	LD	(HL),%00000000
	LD	HL,ENMOD3
	ADD	HL,BC
	LD	(HL),%11000000
;
	CALL	LDTIM3
	LD	(HL),$90
;
	XOR	A
	LD	(BSWRK2),A
;
;	CALL	BSNXSD	;(S)
;
	LD	HL,ENTIM2
	ADD	HL,BC
	LD	(HL),$1F+$20
	RET
GANB010
	CP	$20
	JR	C,GANB030
;
	LD	A,$1F
GANB030
	RRA
	RRA
	AND	$07
	LD	E,A
	LD	D,B
	LD	HL,GANBCD
	ADD	HL,DE
	LD	A,(HL)
	LD	(ENCHPT2),A
		jp	BAMEBACS
;;;;;;;;	CALL	BAMEBACS
;;;;;;;;	RET
;
;
;
;
;
;
;
;
;
;	LD	A,(KEYA2)
;	AND	$10
;	JR	Z,GAN20200
;;
;	LD	HL,ENCHPT
;	ADD	HL,BC
;	LD	A,(HL)
;	INC	A
;	CP	$0A
;	JR	C,GAN0F0
;	XOR	A
;GAN0F0
;	LD	(HL),A
;GAN20200
;;
;	LD	A,(KEYA2)
;	AND	$20
;	JR	Z,GAN1001
;;
;	LD	HL,GABOFG
;	LD	A,(HL)
;	INC	A
;	CP	$05
;	JR	C,GAN0F1
;	LD	A,$01
;GAN0F1
;	LD	(HL),A
;GAN1001
;	RET
;======================================
GANONCS
	LD	A,(ENSTAT2)
	CP	GFAIL+1
	RET	NC
;
	LD	A,(ENCHPT2)
	INC	A
	RET	Z
;
	LD	A,(BSMUKI)
	AND	A
	LD	A,(ENCHPT2)
	JR	Z,GANC100
	ADD	A,$05
GANC100
	LD	(ENCHPT2),A
;
	CALL	GABDCS
	CALL	GATECS
		jp	GABOCS
;;;;;;;;	CALL	GABOCS
;;;;;;;;	RET
;==============================
GABDCD
;0
	DB	$F8,$FC,$50,$00
	DB	$F8,$04,$52,$00
	DB	$F8,$0C,$6E,$00
	DB	$08,$F8,$6A,$00
	DB	$08,$00,$6C,$00
	DB	$08,$08,$6C,$20
	DB	$08,$10,$6A,$20
	DB	$FF,$FF,$FF,$FF
;1
	DB	$FB,$FE,$50,$00
	DB	$FB,$06,$52,$00
	DB	$FB,$0E,$6E,$00
	DB	$08,$F8,$6A,$00
	DB	$08,$00,$6C,$00
	DB	$08,$08,$6C,$20
	DB	$08,$10,$6A,$20
	DB	$FF,$FF,$FF,$FF
;2
	DB	$F8,$FC,$6E,$20
	DB	$F8,$04,$52,$20
	DB	$F8,$0C,$50,$20
	DB	$08,$F8,$6A,$00
	DB	$08,$00,$6C,$00
	DB	$08,$08,$6C,$20
	DB	$08,$10,$6A,$20
	DB	$FF,$FF,$FF,$FF
;3
	DB	$FB,$FA,$6E,$20
	DB	$FB,$02,$52,$20
	DB	$FB,$0A,$50,$20
	DB	$08,$F8,$6A,$00
	DB	$08,$00,$6C,$00
	DB	$08,$08,$6C,$20
	DB	$08,$10,$6A,$20
	DB	$FF,$FF,$FF,$FF
GABDPT
	DB	0,0,2,1,0,2,2,0,3,2
; - - - - - - - - - - - - - - - - - - - -
GABDCS
	LD	A,(ENCHPT2)
	LD	E,A
	LD	D,B
	LD	HL,GABDPT
	ADD	HL,DE
	LD	A,(HL)
	RLA
	RLA
	RLA
	RLA
	RLA
	AND	%1110000
	LD	E,A
	LD	HL,GABDCD
	ADD	HL,DE
	LD	C,$07
	CALL	ENOMST
;
	LD	A,$07
		jp	NXOMSBL
;;;;;;;;	CALL	NXOMSBL
;;;;;;;;	RET	
; - - - - - - - - - - - - - - - - - - - -
GATECD
;0
	DB	$F4,$F8,$64,$00
;
	DB	$FE,$11,$60,$00
	DB	$FE,$19,$62,$00
;1
	DB	$F4,$F9,$64,$00
;
	DB	$FE,$11,$60,$00
	DB	$FE,$19,$62,$00
;2
	DB	$F0,$00,$64,$20
;
	DB	$FF,$FF,$FF,$FF
	DB	$FF,$FF,$FF,$FF
;3
	DB	$FF,$FF,$FF,$FF
;
	DB	$FB,$10,$60,$00
	DB	$FB,$18,$62,$00
;4
	DB	$00,$F8,$66,$00
;
	DB	$FE,$10,$66,$20
	DB	$FF,$FF,$FF,$FF
;-------------------
;5
	DB	$F4,$10,$64,$20
;
	DB	$FE,$EF,$62,$20
	DB	$FE,$F7,$60,$20
;6
	DB	$F4,$0F,$64,$20
;
	DB	$FE,$EF,$62,$20
	DB	$FE,$F7,$60,$20
;7
	DB	$F0,$08,$64,$00
;
	DB	$FF,$FF,$FF,$FF
	DB	$FF,$FF,$FF,$FF
;8
	DB	$FF,$FF,$FF,$FF
;
	DB	$FB,$F0,$62,$20
	DB	$FB,$F8,$60,$20
;9
	DB	$FE,$F8,$66,$00
;
	DB	$00,$10,$66,$20
	DB	$FF,$FF,$FF,$FF
;- - - - - - -  - - - - - - - - - - - - - - - - - - - - - -
GATECS
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
	LD	HL,GATECD
	ADD	HL,DE
	LD	C,$03
	CALL	ENOMST
;
	LD	A,$03
		jp	NXOMSBL
;;;;;;;;	CALL	NXOMSBL
;;;;;;;;	RET
;==============================================
GABOCD
;0
	DB	$EC,$00,$70,$00
	DB	$EC,$08,$70,$20
	DB	$F4,$00,$7C,$00
	DB	$F4,$08,$7C,$20
	DB	$08,$00,$7C,$40
	DB	$08,$08,$7C,$60
	DB	$14,$00,$70,$40
	DB	$14,$08,$70,$60
;1
	DB	$00,$00,$7E,$40
	DB	$00,$08,$7E,$20
	DB	$F3,$0D,$78,$20
	DB	$F3,$15,$76,$20
	DB	$0D,$F3,$76,$40
	DB	$0D,$FB,$78,$40
	DB	$FF,$FF,$FF,$FF
	DB	$FF,$FF,$FF,$FF
;2
	DB	$00,$EC,$72,$00
	DB	$00,$F4,$74,$00
	DB	$00,$FC,$7A,$00
	DB	$00,$0C,$7A,$00
	DB	$00,$14,$74,$20
	DB	$00,$1C,$72,$20
	DB	$00,$00,$FF,$FF
	DB	$00,$00,$FF,$FF
;3
	DB	$00,$00,$7E,$00
	DB	$00,$08,$7E,$60
	DB	$F3,$F3,$76,$00
	DB	$F3,$FB,$78,$00
	DB	$0D,$0D,$78,$60
	DB	$0D,$15,$76,$60
	DB	$FF,$FF,$FF,$FF
	DB	$FF,$FF,$FF,$FF
;41
	DB	$F1,$0F,$78,$20
	DB	$F1,$17,$76,$20
	DB	$0D,$F3,$76,$40
	DB	$0D,$FB,$78,$40
	DB	$00,$00,$FF,$FF
	DB	$00,$08,$FF,$FF
	DB	$FF,$FF,$FF,$FF
	DB	$FF,$FF,$FF,$FF
;53
	DB	$F1,$F1,$76,$00
	DB	$F1,$F9,$78,$00
	DB	$0D,$0D,$78,$60
	DB	$0D,$15,$76,$60
	DB	$00,$00,$FF,$FF
	DB	$00,$08,$FF,$FF
	DB	$FF,$FF,$FF,$FF
	DB	$FF,$FF,$FF,$FF
;-
;61
	DB	$F8,$08,$78,$20
	DB	$F8,$10,$76,$20
	DB	$08,$F8,$76,$40
	DB	$08,$00,$78,$40
	DB	$00,$00,$FF,$40
	DB	$00,$08,$FF,$20
	DB	$FF,$FF,$FF,$FF
	DB	$FF,$FF,$FF,$FF
;71
	DB	$FC,$04,$78,$20
	DB	$FC,$0C,$76,$20
	DB	$04,$FC,$76,$40
	DB	$04,$04,$78,$40
	DB	$00,$00,$FF,$40
	DB	$00,$08,$FF,$20
	DB	$FF,$FF,$FF,$FF
	DB	$FF,$FF,$FF,$FF
;83
	DB	$F8,$F8,$76,$00
	DB	$F8,$00,$78,$00
	DB	$08,$08,$78,$60
	DB	$08,$10,$76,$60
	DB	$00,$00,$FF,$00
	DB	$00,$08,$FF,$60
	DB	$FF,$FF,$FF,$FF
	DB	$FF,$FF,$FF,$FF
;93
	DB	$FC,$FC,$76,$00
	DB	$FC,$04,$78,$00
	DB	$04,$04,$78,$60
	DB	$04,$0C,$76,$60
	DB	$00,$00,$FF,$00
	DB	$00,$08,$FF,$60
	DB	$FF,$FF,$FF,$FF
	DB	$FF,$FF,$FF,$FF
;A
	DB	$00,$F8,$72,$00
	DB	$00,$00,$74,$00
	DB	$00,$08,$74,$20
	DB	$00,$10,$72,$20
	DB	$00,$08,$FF,$FF
	DB	$00,$10,$FF,$FF
	DB	$00,$00,$FF,$FF
	DB	$00,$00,$FF,$FF
;B
	DB	$00,$FB,$72,$00
	DB	$00,$03,$74,$00
	DB	$00,$05,$74,$20
	DB	$00,$0D,$72,$20
	DB	$00,$FC,$FF,$FF
	DB	$00,$0C,$FF,$FF
	DB	$00,$00,$FF,$FF
	DB	$00,$00,$FF,$FF
;--------------------------------------
GABONO
	DB	8,6,6,6
	DB	4,4,4,4,4,4
	DB	4,4
GABOCS
	LD	A,(GABOFG)
	AND	A
	RET	Z
;
	LD	A,(GABOXD)
	LD	HL,ENSVXL
	ADD	A,(HL)
	LD	(HL),A
	LD	A,(GABOYD)
	LD	HL,ENDSYP
	ADD	A,(HL)
	LD	(HL),A
;
	LD	A,(GABOFG)
	DEC	A
	LD	E,A
	LD	D,B
	LD	HL,GABONO
	ADD	HL,DE
	LD	C,(HL)
;;	LD	A,E
	LD	D,B
	SLA	E
	RL	D
	SLA	E
	RL	D
	SLA	E
	RL	D
	SLA	E
	RL	D
	SLA	E
	RL	D
;	RLA
;	RLA
;	RLA
;	RLA
;	RLA
	LD	A,E
	AND	%11100000
	LD	E,A
;;	LD	D,B
	LD	HL,GABOCD
	ADD	HL,DE
	PUSH	BC
	CALL	ENOMST
	POP	DE
	LD	A,E
	CALL	NXOMSBL
;
		jp	ENPSSV
;;;;;;;;	CALL	ENPSSV
;;;;;;;;	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;===�K�m�� �_======
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
GABOPT2
	DB	3,2,1,0
	DB	0,1,2,3
GABOMV
	LD	A,(BSINDX)
	LD	E,A
	LD	D,B
	LD	HL,ENSTAT
	ADD	HL,DE
	LD	A,(HL)
	CP	GFAIL ;$09
	JP	NC,E8CLER
;
;;	LD	A,(FRCNT)
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	RRA	
	RRA	
	RRA	
	AND	$03
	LD	E,A
	LD	D,B
;
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	LD	HL,GABOPT2
	JR	Z,GBO0000
	LD	HL,GABOPT2+4
GBO0000
	ADD	HL,DE
	LD	A,(HL)
	INC	A
	LD	(GABOFG),A
;
	XOR	A
	LD	(GABOXD),A
	LD	(GABOYD),A
	CALL	GABOCS
;
	XOR	A
	LD	(GABOFG),A
;
	CALL	E8STCK
;
	LD	A,(FRCNT)
	AND	$0F
	JR	NZ,GBOS10
;
	LD	A,$3A
	LD	(SOUND3),A	;(S)
GBOS10
;;;	CALL	HABATAKI	;(S)
;
	LD	HL,ENCONT
	ADD	HL,BC
	INC	(HL)
;
	CALL	E8MVCL
	CALL	CRENPLL
;
	CALL	LDTIM0
	JR	Z,GBRETN
;
	RET
;
GBRETN
	LD	A,(PLXPSL)
	PUSH	AF
	LD	A,(PLYPSL)
	PUSH	AF
;
	LD	A,(BSINDX)
	LD	E,A
	LD	D,B
;
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	A,(HL)
	LD	(PLXPSL),A
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	A,(HL)
	SUB	$0C
	LD	(PLYPSL),A
;
	LD	A,$10
	CALL	PSERCH2L
;
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	A,(WORK0)
	SUB	(HL)
	AND	%10000000
	JR	NZ,GABR1008
;
	INC	(HL)
	INC	(HL)
GABR1008
	DEC	(HL)
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	A,(WORK1)
	SUB	(HL)
	AND	%10000000
	JR	NZ,GABR1010
;
	INC	(HL)
	INC	(HL)
GABR1010
	DEC	(HL)
;
	LD	HL,PLYPSL
	LD	A,(ENDSYP)
	SUB	(HL)
	ADD	A,$03
	CP	$06
	JR	NC,GABR1030
;
	LD	HL,PLXPSL
	LD	A,(ENSVXL)
	SUB	(HL)
	ADD	A,$03
	CP	$06
	JR	NC,GABR1030
;
	LD	A,(BSINDX)
	LD	E,A
	LD	D,B
	LD	HL,ENSTAT
	ADD	HL,DE
	LD	A,(HL)
	CP	$08
	JR	NZ,GABR1030	;�҂��H
;				;YES !
	LD	(HL),$03
;
	LD	HL,ENTIM0
	ADD	HL,DE
	LD	(HL),$4C	
;;	LD	(HL),$E0	
;
	CALL	E8CLER
GABR1030
	POP	AF
	LD	(PLYPSL),A
	POP	AF
	LD	(PLXPSL),A
	RET
;	LD	A,(ENSVXL)
;	CP	$A8
;	JP	NC,E8CLER
;	LD	A,(ENDSYP)
;	CP	$88
;	JP	NC,E8CLER
;	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;===�K�m�� �ʎc��======
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
GABLZNZCD
	DB	$4A,$00,$4A,$20
	DB	$4C,$00,$4C,$20
	DB	$4E,$00,$4E,$20
GBZCDT
	DB	0,0,1,1
;
GABLZNZ
	LD	DE,GABLZNZCD
	CALL	EN2CST
;
	CALL	E8STCK
;
	CALL	LDTIM0
	JP	Z,E8CLER
;
	RRA
	RRA
	RRA
	AND	$03
	LD	E,A
	LD	D,B
	LD	HL,GBZCDT
	ADD	HL,DE
	LD	A,(HL)
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;===�K�m�� �R�E����======
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
GABADCD
	DB	$1E,$00,$1E,$60
	DB	$34,$00,$34,$20
	DB	$54,$00,$54,$20
	DB	$56,$00,$56,$20
;- - - - - - - - - - - - - - - - - - - -
GABADMV
	LD	A,(FRCNT)
	RLA
	RLA
	AND	%00010000
	LD	(ENFLCL),A
;
	LD	DE,GABADCD
	CALL	EN2CST
;
	CALL	E8STCK
;
	LD	A,(ENSTAT2)
	RST	00
	DW	GABD100
	DW	GABD200
;------------------------------------
GABD100
	CALL	LDTIM0
	JR	NZ,GABD110
;
	LD	(HL),$20
	JP	STATINC
GABD110
	LD	E,$00
	CP	$18
	JR	NC,GABD120
	LD	E,$01
GABD120
	LD	A,E
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;	RET
;------------------------------------
GABD200
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	AND	$01
	ADD	A,$02
	CALL	ENPTST
;
	CALL	LDTIM0
	CP	$01
	JR	NZ,GABD220
;
	LD	A,$28
	LD	(SOUND3),A	;(S)
;
	LD	A,$30
;;	LD	A,$18
	CALL	PSERCHL
GABD220
	LD	A,(FRCNT)
	XOR	C
	RRA
	JR	NC,GABD228
;
	CALL	E8MVCL
;
	CALL	CRENPLL
;
GABD228
	LD	A,(ENSVXL)
	CP	$A8
	JP	NC,E8CLER
	LD	A,(ENDSYP)
	CP	$88
	JP	NC,E8CLER
	RET
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�S�[�}						%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
BGCYACD
	DB	1,2,3,3,3,3,2,1
GRSPSD1
	DB	$20,$23,$26,$29
	DB	$2C,$2F,$32,$35
	DB	$38,$38,$38,$38
	DB	$38,$38,$38,$38
	DB	$38,$38,$38,$38
	DB	$38,$38,$38,$38
GRSPSD2
	DB	$20,$23,$26,$29
	DB	$2C,$2F,$32,$34
	DB	$34,$34,$34,$34
	DB	$34,$34,$34,$34
	DB	$34,$34,$34,$34
	DB	$34,$34,$34,$34
GRSDSD
	DB	$28,$27,$26,$25
	DB	$24,$23,$22,$21
	DB	$20,$1F,$1E,$1D
	DB	$1C,$1B,$1A,$19
	DB	$18,$18,$18,$18
	DB	$18,$18,$18,$18
;
BGRRCD
	DB	3,2,1,0,0,0,0,0
;
BGORMAMV
	LD	HL,ENTIM2
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,BGRR190
	CP	$10
	JR	NZ,BGRR080
;
	DEC	(HL)
;
	CALL	BSNXSD	;(S)
	LD	A,$10
BGRR080
	RRA
	RRA
	RRA
	AND	$07
	LD	E,A
	LD	D,B
	LD	HL,BGRRCD
	ADD	HL,DE
	LD	A,(HL)
	LD	(ENCHPT2),A
		jp	BAMEBACS
;;;;;;;;	CALL	BAMEBACS
;;;;;;;;	RET
;=====================================
BGRR190
	CALL	BGORMACS
;
		ld	a,(ENSTAT2)
		and	a
		jr	z,BGRR190_050	; �S�[�܁[��������@�H
;					; Yes !!
		xor	a
		ld	(HARTDW),a	; �v���C���[�@���C�t�_�E���@�N���A
;
BGRR190_050
	CALL	E8STCK
;
	LD	A,(ENSTAT2)
	RST	00
	DW	BGR1000
	DW	BGR2000
	DW	BGR3000
;========================================
BGR1000
	LD	HL,ENLIFE
	ADD	HL,BC
	LD	A,(HL)
	CP	$F0
	JR	NC,BGR1010
;
;;	LD	A,$10
;;	LD	(SOUND2),A	;(S)
	LD	A,$03
	LD	(BSFLSD),A	;(S) ���ꉹ�p�I
;
	LD	A,$F6
	CALL	MSGCHK
;
	LD	A,$5E
	LD	(SOUND4),A	;(S)
;
	CALL	LDTIM0
	LD	(HL),$80
;
	LD	HL,ENFLSH
	ADD	HL,BC
	LD	(HL),$80
;
	LD	HL,ENMOD1
	ADD	HL,BC
	RES	7,(HL)
	LD	HL,ENMOD0
	ADD	HL,BC
	SET	6,(HL)
;
	CALL	SOUNDCLR	;(S)
;
		jp	STATINC
;;;;;;;;	CALL	STATINC
;;;;;;;;	RET
;
BGR1010
	LD	A,(FRCNT)
	AND	$0F
	JR	NZ,BGR0E0	;��̂т�I
;
	LD	A,(BSWRK2)
	CP	$04
	JR	NC,BGR0E0
;
	INC	A
	LD	(BSWRK2),A
	CP	$01
	JR	NZ,BGR0E0
;
	LD	HL,SOUND4	;(S)
	LD	(HL),$50
BGR0E0
	CALL	ENHNCL
;
	LD	HL,ENLIFE
	ADD	HL,BC
	LD	A,(HL)
	CPL
;;	INC	A
	CP	$17
	JR	C,BGR000
	LD	A,$17
BGR000
	LD	E,A
	LD	D,B
	LD	HL,GRSPSD1
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENWRK0	;��]�X�s�[�h�I
	ADD	HL,BC
	LD	(HL),A
	LD	HL,GRSPSD2
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENWRK1	;��]�X�s�[�h�I
	ADD	HL,BC
	LD	(HL),A
;
	LD	HL,GRSDSD
	ADD	HL,DE	;�rE �X�s�[�h
;
	LD	A,(BGMCNT)
	INC	A
	CP	(HL)
	JR	C,BGRSS10
;
;;	LD	A,$24
;;	LD	(SOUND2),A	;(S)
	LD	A,$3D
	LD	(SOUND1),A	;(S)
;
	XOR	A
BGRSS10
	LD	(BGMCNT),A
;
	LD	A,$00
	CALL	ENPTST
;
	CALL	LDTIM3
	JR	NZ,BGR0005
;
	CALL	RNDSUB
	AND	$0F
	ADD	A,$20
	LD	(HL),A
;
	CALL	RNDSUB
	AND	$01
	JR	NZ,BGR0005
;
	CALL	LDTIM1
	LD	(HL),$7F	;�`�����X�I
BGR0005
	LD	HL,ENMOD1
	ADD	HL,BC
	SET	7,(HL)
;
	CALL	LDTIM1
	JR	Z,BGR0007
;
	RRA
	RRA
	RRA
	RRA
	AND	$07
	LD	E,A
	LD	D,B
	LD	HL,BGCYACD
	ADD	HL,DE
	LD	A,(HL)
	CALL	ENPTST
	CP	$03
	JR	NZ,BGR0007
;
	LD	HL,ENMOD1
	ADD	HL,BC
	RES	7,(HL)
BGR0007
	CALL	CREPKEL
;;	CALL	CRENPLL
;-----------------------------------
;
	LD	E,$0F
	LD	HL,ENLIFE
	ADD	HL,BC
	LD	A,(HL)
	CP	$F8
	JR	NC,BGR008
;
	LD	E,$07
BGR008
	LD	A,(FRCNT)
;;	AND	$0F
	AND	E
	JR	NZ,BGR0030
;
	LD	A,(PLYPSL)
	PUSH	AF
;
	SUB	$20
	LD	(PLYPSL),A
;
	LD	A,$08
	CALL	PSERCH2L
;
	LD	A,(WORK0)
	LD	HL,ENYSPD
	ADD	HL,BC
	SUB	(HL)
	AND	%10000000
	JR	NZ,BGR0010
;
	INC	(HL)
	INC	(HL)
BGR0010
	DEC	(HL)
;
	LD	A,(WORK1)
	LD	HL,ENXSPD
	ADD	HL,BC
	SUB	(HL)
	AND	%10000000
	JR	NZ,BGR0020
;
	INC	(HL)
	INC	(HL)
BGR0020
	DEC	(HL)
;
	POP	AF
	LD	(PLYPSL),A
;
BGR0030
	CALL	E8MVCL
	CALL	ENBGCKL
;	LD	A,(FRCNT)
;	AND	$07
;	RET	NZ
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	E,(HL)
;
	LD	HL,ENCONT
	ADD	HL,BC
	LD 	A,(HL)
	ADD	A,E
	LD	(HL),A
	JR	NC,BGR0050
;
	LD	A,(BSWRK0)
	INC	A
	LD	(BSWRK0),A
;
BGR0050
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	E,(HL)
;
	LD	HL,ENWRK2
	ADD	HL,BC
	LD 	A,(HL)
	ADD	A,E
	LD	(HL),A
	JR	NC,BGR0060
;
	LD	A,(BSWRK1)
	DEC	A
	LD	(BSWRK1),A
BGR0060
	RET
;========================================
BGR2000
	CALL	LDTIM0
	CP	$02
	JR	NZ,BGR2008
;
	LD	HL,SOUND4
	LD	(HL),$5F
BGR2008
	AND	A
		ret	NZ
;;;;;;;;	JR	NZ,BGR2010
;
	LD	(HL),$80
;
	LD	A,$3D
	LD	(SOUND3),A	;(S)
	LD	A,$10
	LD	(SOUND2),A	;(S)
;
		jp	STATINC
;;;;;;;;	CALL	STATINC
;;;;;;;;BGR2010
;;;;;;;;	RET
;========================================
BGR3000
	CALL	LDTIM0
	AND	$0F
	JR	NZ,BGR3050
;
	LD	A,(BSWRK2)
	CP	$00
	JR	NZ,BGR3010
;
	CALL	BBSDST	;(S)
;
	CALL	BAMSUB
	CALL	E8CLER
;
	LD	A,BOSS	;�͂����Z�b�g�I
	CALL	ENIDSHL
;
	LD	HL,ENWRK4
	ADD	HL,DE
	LD	(HL),$02
;
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),$30
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),$50
;
	LD	HL,ENCHPT
	ADD	HL,DE
	LD	(HL),$FF
	RET
BGR3010
	DEC	A
	LD	(BSWRK2),A
BGR3050
	RET
;==========================================
BGUPCD
;0
	DB	$F0,$FC,$60,$00
	DB	$F0,$04,$62,$00
	DB	$F0,$0C,$60,$20
;1
	DB	$F0,$FC,$64,$00
	DB	$F0,$04,$66,$00
	DB	$F0,$0C,$64,$20
;2
	DB	$F0,$FC,$68,$00
	DB	$F0,$04,$6A,$00
	DB	$F0,$0C,$68,$20
;3
	DB	$F0,$FC,$64,$00
	DB	$F0,$04,$66,$00
	DB	$F0,$0C,$64,$20
BGEYECD
;0
	DB	$00,$FC,$6C,$00
	DB	$00,$04,$6E,$00
	DB	$00,$0C,$6C,$20
;1
	DB	$00,$FC,$70,$00
	DB	$00,$04,$72,$00
	DB	$00,$0C,$70,$20
;2
	DB	$00,$FC,$74,$00
	DB	$00,$04,$76,$00
	DB	$00,$0C,$74,$20
;3
	DB	$00,$FC,$78,$00
	DB	$00,$04,$7A,$00
	DB	$00,$0C,$78,$20
;
BGORMACS
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	AND	$03
	RLA
	RLA
;
	AND	%11111100
	LD	E,A
	RLA
	AND	%11111000
	ADD	A,E
	LD	E,A
	LD	D,B
	LD	HL,BGUPCD
	ADD	HL,DE
	LD	C,$03
	CALL	ENOMST
;
	LD	A,$03
	CALL	NXOMSBL
;	
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
	LD	HL,BGEYECD
	ADD	HL,DE
	LD	C,$03
	CALL	ENOMST
;
	LD	A,$03
	CALL	NXOMSBL
;
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	A,(HL)
	PUSH	AF
	PUSH	HL
	SUB	$08
	LD	(HL),A
	CALL	ENPSSV
;
	CALL	BGTECS
	POP	HL
	POP	AF
	LD	(HL),A
		jp	ENPSSV
;;;;;;;;	CALL	ENPSSV
;;;;;;;;	RET
;===================================================
BGTYAD
	DB	$D0,$D1,$D4,$D9,$DF,$E6,$EE,$F7
BGTXAD
	DB	$00,$09,$12,$1A,$21,$27,$2C,$2F
	DB	$30,$2F,$2C,$27,$21,$1A,$12,$09
	DB	$00,$F7,$EE,$E6,$DF,$D9,$D4,$D1
	DB	$D0,$D1,$D4,$D9,$DF,$E6,$EE,$F7
;-------------------------------------------------------
BGTYA2
	DB	$DA,$DB,$DD,$E1,$E6,$EB,$F2,$F9
BGTXA2
	DB	$00,$07,$0E,$15,$1A,$1F,$23,$25
	DB	$26,$25,$23,$1F,$1A,$15,$0E,$07
	DB	$00,$F9,$F2,$EB,$E6,$E1,$DD,$DB
	DB	$DA,$DB,$DD,$E1,$E6,$EB,$F2,$F9
;-------------------------------------------------------
BGTYA3
	DB	$E4,$E5,$E7,$E9,$ED,$F1,$F6,$FB
BGTXA3
	DB	$00,$05,$0A,$0F,$13,$17,$19,$1B
	DB	$1C,$1B,$19,$17,$13,$0F,$0A,$05
	DB	$00,$FB,$F6,$F1,$ED,$E9,$E7,$E5
	DB	$E4,$E5,$E7,$E9,$ED,$F1,$F6,$FB
;-------------------------------------------------------
BGTYA4
	DB	$EE,$EF,$F0,$F2,$F4,$F6,$FA,$FD
BGTXA4
	DB	$00,$03,$06,$0A,$0C,$0E,$10,$11
	DB	$12,$11,$10,$0E,$0C,$0A,$06,$03
	DB	$00,$FD,$FA,$F6,$F4,$F2,$F0,$EF
	DB	$EE,$EF,$F0,$F2,$F4,$F6,$FA,$FD
;-------------------------------------------------------
BGTYA5
	DB	$F8,$F9,$FA,$FB,$FB,$FC,$FD,$FF
BGTXA5
	DB	$00,$01,$03,$04,$05,$05,$06,$07
	DB	$08,$07,$06,$05,$05,$04,$03,$01
	DB	$00,$FF,$FD,$FC,$FB,$FB,$FA,$F9
	DB	$F8,$F9,$FA,$FB,$FB,$FC,$FD,$FF
BGTECD
	DB	$4E,$00,$4E,$20
	DB	$4C,$00,$4C,$20
	DB	$7C,$02,$7C,$22
;==========================================
BGTECS
	LD	A,(BSWRK2)
	CP	$04
	JR	C,BGTC10
;
	LD	A,(BSWRK0)
	AND	$1F
	LD	E,A
	LD	D,B
	LD	HL,BGTXAD
	ADD	HL,DE
	LD	A,(ENSVXL)
	ADD	A,(HL)
	LD	(ENSVXL),A
	LD	HL,BGTYAD
	ADD	HL,DE
	LD	A,(ENDSYP)
	ADD	A,(HL)
	LD	(ENDSYP),A
;
	LD	A,$02
	CALL	BGTESB
;
BGTC10
	LD	A,(BSWRK2)
	CP	$03
	JR	C,BGTC20
;
	LD	A,(BSWRK0)
	AND	$1F
	LD	E,A
	LD	D,B
	LD	HL,BGTXA2
	ADD	HL,DE
	LD	A,(ENSVXL)
	ADD	A,(HL)
	LD	(ENSVXL),A
	LD	HL,BGTYA2
	ADD	HL,DE
	LD	A,(ENDSYP)
	ADD	A,(HL)
	LD	(ENDSYP),A
;
	LD	A,$01
	CALL	BGTESB
;
BGTC20
	LD	A,(BSWRK2)
	CP	$02
	JR	C,BGTC30
;
	LD	A,(BSWRK0)
	AND	$1F
	LD	E,A
	LD	D,B
	LD	HL,BGTXA3
	ADD	HL,DE
	LD	A,(ENSVXL)
	ADD	A,(HL)
	LD	(ENSVXL),A
	LD	HL,BGTYA3
	ADD	HL,DE
	LD	A,(ENDSYP)
	ADD	A,(HL)
	LD	(ENDSYP),A
;
	LD	A,$01
	CALL	BGTESB
;
BGTC30
	LD	A,(BSWRK2)
	CP	$01
	JR	C,BGTC40
;
	LD	A,(BSWRK0)
	AND	$0F
	CP	$07
	JR	Z,BGTC31
	CP	$08
	JR	Z,BGTC31
	CP	$09
	JR	NZ,BGTC32
;
BGTC31
	LD	A,(FRCNT)
	AND	$01
	JR	NZ,BGTC40
BGTC32
	LD	A,(BSWRK0)
	AND	$1F
	LD	E,A
	LD	D,B
	LD	HL,BGTXA4
	ADD	HL,DE
	LD	A,(ENSVXL)
	ADD	A,(HL)
	LD	(ENSVXL),A
	LD	HL,BGTYA4
	ADD	HL,DE
	LD	A,(ENDSYP)
	ADD	A,(HL)
	LD	(ENDSYP),A
;
	LD	A,$00
	CALL	BGTESB
;
BGTC40
;--------------------------------------
;---------------------------------------
	LD	A,(BSWRK2)
	CP	$04
	JR	C,BGTC50
;
	LD	A,(BSWRK1)
	AND	$1F
	LD	E,A
	LD	D,B
	LD	HL,BGTXAD
	ADD	HL,DE
	LD	A,(ENSVXL)
	ADD	A,(HL)
	LD	(ENSVXL),A
	LD	HL,BGTYAD
	ADD	HL,DE
	LD	A,(ENDSYP)
	ADD	A,(HL)
	LD	(ENDSYP),A
;
	LD	A,$02
	CALL	BGTESB
;
BGTC50
	LD	A,(BSWRK2)
	CP	$03
	JR	C,BGTC70
;
	LD	A,(BSWRK1)
	AND	$1F
	LD	E,A
	LD	D,B
	LD	HL,BGTXA2
	ADD	HL,DE
	LD	A,(ENSVXL)
	ADD	A,(HL)
	LD	(ENSVXL),A
	LD	HL,BGTYA2
	ADD	HL,DE
	LD	A,(ENDSYP)
	ADD	A,(HL)
	LD	(ENDSYP),A
;
	LD	A,$01
	CALL	BGTESB
;
BGTC70
	LD	A,(BSWRK2)
	CP	$02
	JR	C,BGTC80
;
	LD	A,(BSWRK1)
	AND	$1F
	LD	E,A
	LD	D,B
	LD	HL,BGTXA3
	ADD	HL,DE
	LD	A,(ENSVXL)
	ADD	A,(HL)
	LD	(ENSVXL),A
	LD	HL,BGTYA3
	ADD	HL,DE
	LD	A,(ENDSYP)
	ADD	A,(HL)
	LD	(ENDSYP),A
;
	LD	A,$01
	CALL	BGTESB
;
BGTC80
	LD	A,(BSWRK2)
	CP	$01
		ret	C
;;;;;;;;	JR	C,BGTC90
;
	LD	A,(BSWRK1)
	AND	$0F
	CP	$07
	JR	Z,BGTC81
	CP	$08
	JR	Z,BGTC81
	CP	$09
	JR	NZ,BGTC82
;
BGTC81
	LD	A,(FRCNT)
	AND	$01
		ret	Z
;;;;;;;;	JR	Z,BGTC90
;
BGTC82
	LD	A,(BSWRK1)
	AND	$1F
	LD	E,A
	LD	D,B
	LD	HL,BGTXA4
	ADD	HL,DE
	LD	A,(ENSVXL)
	ADD	A,(HL)
	LD	(ENSVXL),A
	LD	HL,BGTYA4
	ADD	HL,DE
	LD	A,(ENDSYP)
	ADD	A,(HL)
	LD	(ENDSYP),A
;
	LD	A,$00
		jp	BGTESB
;;;;;;;;	CALL	BGTESB
;;;;;;;;;
;;;;;;;;BGTC90
;;;;;;;;;	LD	A,(BSWRK1)
;;;;;;;;;	AND	$1F
;;;;;;;;;	LD	E,A
;;;;;;;;;	LD	D,B
;;;;;;;;;	LD	HL,BGTXA5
;;;;;;;;;	ADD	HL,DE
;;;;;;;;;	LD	A,(ENSVXL)
;;;;;;;;;	ADD	A,(HL)
;;;;;;;;;	LD	(ENSVXL),A
;;;;;;;;;	LD	HL,BGTYA5
;;;;;;;;;	ADD	HL,DE
;;;;;;;;;	LD	A,(ENDSYP)
;;;;;;;;;	ADD	A,(HL)
;;;;;;;;;	LD	(ENDSYP),A
;;;;;;;;;;
;;;;;;;;;	LD	A,$00
;;;;;;;;;	CALL	BGTESB
;;;;;;;;	RET
;================================
BGTESB
	LD	(ENCHPT2),A
	LD	DE,BGTECD
	CALL	EN2CST
	LD	A,$02
	CALL	NXOMSBL
;
	LD	HL,PLXPSL
	LD	A,(ENSVXL)
	SUB	(HL)
	ADD	A,$08
	CP	$10
	JR	NC,BGTES10
	LD	HL,PLYPSL
;
	LD	A,(ENDSYP)
	SUB	(HL)
	ADD	A,$08
	CP	$10
	JR	NC,BGTES10
;
	LD	HL,PLJPFG
	LD	A,(PLFLSH)
	OR	(HL)
	JR	NZ,BGTES10
;
	LD	A,$08
	LD	(HARTDW),A
;
	LD	A,$20
	CALL	PSERCH2L
;
	LD	A,(WORK0)
	LD	(PLYSPD),A
	LD	A,(WORK1)
	LD	(PLXSPD),A
;
	LD	A,$10
	LD	(HANEFG),A
;
	LD	A,$30
	LD	(PLFLSH),A
;
	LD	A,$03
	LD	(SOUND2),A	;(S)
BGTES10
	JP	ENPSSV
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	���ɁI				%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
KANICD
	DB	$58,$02,$58,$22
	DB	$5A,$02,$5A,$22
KANXSD
	DB	$10,$F0,$00,$00
KANYSD
	DB	$00,$00,$FB,$05
;- - - - - - - - - - - - - - - - - 
KANIMV
	LD	DE,KANICD
	CALL	EN2CST
;
	CALL	E8STCK
;
	CALL	E8HNSB
;
	CALL	E8MVCL
	CALL	ENBGCKL
;
	CALL	CREPKEL
;
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	AND	$01
	CALL	ENPTST
;
	LD	HL,ENCBFG
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	NZ,KAN1010
;
	CALL	LDTIM0
	JR	NZ,KAN1080
;
KAN1010
	CALL	LDTIM0
	CALL	RNDSUB
	AND	$7F
	ADD	A,$30
	LD	(HL),A
;
	CALL	RNDSUB
	AND	$03
	LD	E,A
	LD	D,B
	LD	HL,KANXSD
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
	LD	HL,KANYSD
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),A
KAN1080
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	���ɁI				%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
UNIUNICD
	DB	$5C,$03,$5E,$03
	DB	$5E,$23,$5C,$23
	DB	$5E,$63,$5C,$63
	DB	$5C,$43,$5E,$43
UNIUNICD2
	DB	$2C,$03,$2E,$03
	DB	$2E,$23,$2C,$23
	DB	$2E,$63,$2C,$63
	DB	$2C,$43,$2E,$43
;------------------------------------
UNIXSD
	DB	$FD,$03,$00,$00
UNIYSD
	DB	$00,$00,$03,$FD
;- - - - - - - - - - - - - - - - - -
UNIUNIMV
	LD	DE,UNIUNICD
;
	LD	A,(GMMODE)
	CP	ENDG
	JR	NZ,UNI1000
;
	LD	DE,UNIUNICD2
UNI1000
	CALL	EN2CST
;
	CALL	E8STCK
;
	CALL	E8HNSB
;;	CALL	ENHNCL
;
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	RRA
	AND	$03
	CALL	ENPTST
;
	CALL	E8XYCK
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	(HL),E
;
	LD	HL,ENMOD0
	ADD	HL,BC
	RES	7,(HL)
;
	LD	A,(TATEON)
	AND	A
	JR	Z,UNI110	;��ON?
;				;YES !
	LD	A,(PLCMKI)
	XOR	$01
	CP	E
	JR	NZ,UNI110	;�����H
;				;OK!
	SET	7,(HL)
UNI110
	CALL	CRENPSL
	JR	NC,UNI120
;
	CALL	PLPSRV
;
	LD	HL,ENMOD0
	ADD	HL,BC
	LD	A,(HL)
	AND	%10000000
	RET	Z
;
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	E,(HL)
	LD	D,B
	LD	HL,UNIXSD
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
	LD	HL,UNIYSD
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),A
;
	LD	A,$3E
	LD	(SOUND1),A	;(S)
;
	CALL	E8MVCL
;
	LD	HL,ENHNFG
	ADD	HL,BC
	LD	(HL),$03
;
	CALL	ENBGCKL
;
	LD	HL,ENHNFG
	ADD	HL,BC
	LD	(HL),B
UNI120
	LD	A,(WCUTFG)
	AND	A
	JR	NZ,UNI128
;
	LD	A,(TATEON)
	AND	A
		ret	NZ
;;;;;;;;	JR	NZ,UNI130
;
UNI128
		jp	CRKNENL
;;;;;;;;	CALL	CRKNENL
;;;;;;;;UNI130
;;;;;;;;	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�t�b�N�V���b�g�ň������鋴		%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
MVHSDT
	DB	$30,$D0
;
MVHASMV
	CALL	E8STCK
;
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	E,(HL)
	LD	D,B
;
	LD	HL,MVHSDT
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),A
;
	CALL	E8YCLC
;
	CALL	ENBGCKL
	LD	A,(UNITNO)
	CP	DFKB0
	JR	Z,MVH090
	LD	E,A
	LD	D,$1 ;B
;	LD	HL,DJBGCR
;	ADD	HL,DE
;	LD	A,(HL)
	CALL	BGCRRD
	AND	A
	JR	NZ,MVH090
;
	CALL	E8CLER
;
	LD	HL,ENMODE
	ADD	HL,BC
	LD	A,(HL)
	LD	(ENMODE2),A
MVH090
	LD	A,(ENSVXL)
	SUB	$08
	LD	(OBJXP),A	
;
	SWAP	A
	AND	$0F
	LD	E,A
;
	LD	A,(ENDSYP)
MVH098
	ADD	A,$04
	SUB	$10
	LD	(OBJYP),A	
	AND	$F0
	OR	E
	LD	E,A
	LD	D,$00
;
	LD	HL,BGUNDT+$11
	ADD	HL,DE
;
	LD	(HL),DFKB0 ;A
;
	CALL	OBJBG
;
		LD	A,(CGBFLG)
		AND	A
		JR	Z,MVH098_PASS
		PUSH	BC
		LD	A,DFKB0
		LD	(UNTATR),A
		LD	A,$15
		CALL	BG1UNIT_ATR_SUB
		POP	BC
MVH098_PASS
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
;
	PUSH	HL
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	A,(HL)
	POP	HL
	AND	A
	JR	NZ,MVH0C0
;
	LD	A,$04
	LD	(HLI),A
	LD	A,(ENMODE2)
	AND	A
	LD	A,$08
	JR	NZ,MVH0A0
	LD	A,$04
MVH0A0
	LD	(HLI),A
;
	LD	A,(VRAMH)
	LD	(HLI),A
	LD	A,(VRAML)
	INC	A
	LD	(HLI),A
	LD	A,$81
	LD	(HLI),A
	LD	A,$05
	LD	(HLI),A
	LD	A,(ENMODE2)
	AND	A
	LD	A,$09
	JR	NZ,MVH0B0
	LD	A,$05
MVH0B0
	LD	(HLI),A
	LD	(HL),$00
	RET
;------------------------------------
MVH0C0
	LD	A,(ENMODE2)
	AND	A
	LD	A,$0A
	JR	NZ,MVH0D0
	LD	A,$04
MVH0D0
	LD	(HLI),A
;
	LD	A,$04
	LD	(HLI),A
;
	LD	A,(VRAMH)
	LD	(HLI),A
	LD	A,(VRAML)
	INC	A
	LD	(HLI),A
	LD	A,$81
	LD	(HLI),A
	LD	A,(ENMODE2)
	AND	A
	LD	A,$0B
	JR	NZ,MVH0E0
	LD	A,$05
MVH0E0
	LD	(HLI),A
	LD	A,$05
	LD	(HLI),A
	LD	(HL),$00
	RET
;-----------------------------------
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�����畦��������� 	   %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
AMUSTMV
;;	LD	A,(ENSTAT2)
	LD	HL,ENWRK2
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JP	NZ,AMUSI2MV
;
	CALL	E8STCK
;
	CALL	E8XCHK
	ADD	A,$20
	CP	$40
	JR	NC,AMST90
;
	CALL	E8YCHK
	ADD	A,$20
	CP	$40
	JR	NC,AMST90
;
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	INC	A
	LD	(HL),A
	AND	$3F
	JR	NZ,AMST90
;
	LD	A,AMUST
	LD	E,$04
	CALL	ENIDSH2L
	JR	C,AMST90
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
	LD	HL,ENMOD0
	ADD	HL,DE
	LD	(HL),%00010010
;
	LD	HL,ENWRK2
	ADD	HL,DE
	LD	(HL),$01
;
	LD	HL,ENTIM0
	ADD	HL,DE
	LD	(HL),$18
;
	LD	HL,ENTIM1
	ADD	HL,DE
	LD	(HL),$20
;
	PUSH	BC
		ld	c,e
		ld	b,d
;;10/31;	PUSH	DE
;;10/31;	POP	BC
	LD	A,$08
	CALL	PSERCHL
	POP	BC
AMST90
	RET
;===============================================
AMSTXS
	DB	$08,$F8,$00,$00
AMSTYS
	DB	$00,$00,$F8,$08
;
AMUSI2CD
	DB	$70,$00,$72,$00
	DB	$72,$20,$70,$20
;- - - - - - - - - - - - - - - - - -
AMUSI2MV
	LD	DE,AMUSI2CD
	CALL	EN2CST
;
	CALL	E8STCK
;
	CALL	E8HNSB
;
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	AND	$01
	CALL	ENPTST
;
	CALL	E8MVCL
;
;	LD	HL,ENTIM1
;	ADD	HL,BC
;	LD	A,(HL)
;	AND	A
	CALL	LDTIM1
	JR	NZ,AMST08
;
	CALL	ENBGCKL
AMST08
	CALL	CREPKEL
;
	CALL	LDTIM0
	JR	NZ,AMST10
;
	CALL	RNDSUB
	AND	$1F
	ADD	A,$20
	LD	(HL),A
;
	CALL	RNDSUB
	AND	$03
	LD	E,A
	LD	D,B
	LD	HL,AMSTXS	
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
	LD	HL,AMSTYS	
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),A
AMST10
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%				 %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
R7BEMCD
	DB	$3E,$01
R7HNPX
	DB	$F8,$08,$00,$00
R7HNPY
	DB	$00,$00,$08,$F8
;- - - - - - - - - - - - - - -
R7BEMMV
	CALL	E8STCK
;
	LD	A,(ENSTAT2)
	AND	A
	JR	NZ,R7B002
;
	CALL	CRENPL2L
R7B002
	CALL	E8MVCL
	CALL	ENBGCK2L
;
	LD	HL,ENCBFG
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,R7B010
;
	PUSH	HL
;
	LD	A,(ENSVXL)
	LD	(WORK0),A
	LD	A,(ENSVYL)
	LD	(WORK1),A
;
	LD	A,FLSH
	CALL	EXIDSH
;
	POP	HL
	LD	A,(HL)
	CP	$02
	JP	NZ,E8CLER	; Seeld hit ?
;				; yes !
	LD	(HL),$00
;
	LD	HL,ENSTAT
	ADD	HL,BC
	LD	(HL),A
;
	LD	A,(PLCMKI)	; Hanekairi !!
	AND	%00000010
	JR	NZ,R7B008
;
	LD	HL,ENXSPD
	JR	R7XOR
R7B008
	LD	HL,ENYSPD
R7XOR
	ADD	HL,BC
	LD	A,(HL)
	CPL
	INC	A
	LD	(HL),A
;
	CALL	DUSHCL
;
	LD	A,$10
	LD	(HANEFG),A
;
	LD	A,(PLCMKI)
	LD	E,A
	LD	D,B
	LD	HL,R7HNPX
	ADD	HL,DE
	LD	A,(HL)
	LD	(PLXSPD),A
	LD	HL,R7HNPY
	ADD	HL,DE
	LD	A,(HL)
	LD	(PLYSPD),A
	RET
;
R7B010
	LD	A,(ENSVXL)
	ADD	A,$04
	LD	(WORK0),A
	LD	A,(ENSVYL)
	LD	(WORK1),A
;
	LD	A,RZNZ
	CALL	EXIDSH
	LD	(HL),$10
R7B080
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�₵�������I			%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
SARUKCD
;0
	DB	$00,$00,$74,$02
	DB	$00,$08,$74,$22
	DB	$00,$00,$FF,$02
;1
	DB	$F0,$08,$7A,$02
	DB	$00,$00,$76,$02
	DB	$00,$08,$78,$02
;2
	DB	$F0,$00,$7A,$22
	DB	$00,$00,$78,$22
	DB	$00,$08,$76,$22
;3
	DB	$00,$00,$74,$42
	DB	$00,$08,$74,$62
	DB	$00,$00,$FF,$02
;
SARUKMV
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JP	NZ,YASIMV
;
	LD	HL,SARUKCD
	LD	A,(ENCHPT2)
	RLA
	RLA
	AND	%11111100
	LD	E,A
	RLA
	ADD	A,E
	LD	E,A
	LD	D,B
	ADD	HL,DE
;
	LD	C,$03
	CALL	ENOMST
;
	CALL	SADWSTL
;
	LD	A,(ENSTAT2)
	CP	$02
	JR	NC,SRCCK090
;
	LD	A,(TILTCT)
	AND	A
	JR	Z,SRCCK090
;
	LD	A,(TLCRTM)
	AND	A
	JR	Z,SRCCK090
;
	LD	A,(ENSVXL)
	ADD	A,$08	
	LD	HL,TLCRXL
	SUB	(HL)
	ADD	A,$10
	CP	$20
	JR	NC,SRCCK090
;
	LD	A,(ENSVYL)
	ADD	A,$08	
	LD	HL,TLCRYL
	SUB	(HL)
	ADD	A,$10
	CP	$20
	JR	NC,SRCCK090
;
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	A,(HL)
	ADD	A,$18
	LD	(HL),A
;
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	(HL),$18
;
	CALL	STATINC
	LD	(HL),$02
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),$15
;
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),$0C
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),$FA
	RET
;
SRCCK090
	LD	A,(ENSTAT2)
	RST	00
	DW	SRK0000
	DW	SRK1000
	DW	SRK2000
	DW	SRK3000
;------------------------------------
SRK0000
	LD	HL,ENXPSL
	ADD	HL,BC
	LD	A,(HL)
	ADD	A,$08
	LD	(HL),A
;
	CALL	LDTIM0
	LD	(HL),$80
	JP	STATINC
;------------------------------------
SRK1000
	CALL	E8STCK
;
	CALL	LDTIM0
	RET	NZ
;
	LD	(HL),$50
;
	LD	HL,ENCHPT
	ADD	HL,BC
	LD	A,(HL)
	INC	A
	CP	$03
	JR	NZ,SRK1008
	XOR	A
SRK1008
	LD	(HL),A
	LD	(ENCHPT2),A
	CP	$00
	JR	Z,SRK1090
;
	CALL	LDTIM0
	LD	(HL),$28
;
	LD	HL,ENCONT
	ADD	HL,BC
	INC	(HL)
	LD	A,(HL)
	AND	$0F
	JR	NZ,SRK1009
;
	LD	A,BOMBR
	JR	SRK100A
SRK1009
	LD	A,SARUK
SRK100A
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
	SUB	$0C
	ADD	A,$18
	LD	(HL),A
;
	LD	HL,ENZPSL
	ADD	HL,DE
	LD	(HL),$18
;
	LD	HL,ENWRK0
	ADD	HL,DE
	INC	(HL)
;
	LD	HL,ENZSPD
	ADD	HL,DE
	LD	(HL),$20
;
	LD	A,(ENCHPT2)
	CP	$01
	LD	A,$F8
	JR	Z,SRK1030
	LD	A,$08
SRK1030
	LD	HL,ENXSPD
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,ENYSPD
	ADD	HL,DE
	LD	(HL),$0C
;
	LD	HL,ENMOD0
	ADD	HL,DE
	LD	(HL),%00010010
;
	LD	HL,ENMOD3
	ADD	HL,DE
	SET	0,(HL)
;
	LD	A,$08
	LD	(SOUND1),A	;(S)
;
;	LD	HL,ENMYNO
;	ADD	HL,DE
;	LD	A,(HL)
;	CP	BOMBR
;	JR	NZ,SRK1090
;
	LD	HL,ENTIM0
	ADD	HL,DE
	LD	(HL),$60
;
	LD	HL,ENWRK3
	ADD	HL,DE
	LD	(HL),$01
SRK1090
	RET
;----------------------------------------
SRK2000
	LD	A,$03
	CALL	ENPTST
;
	CALL	E8MVCL
	CALL	E8ZCLC
	LD	HL,ENZSPD
	ADD	HL,BC
	DEC	(HL)
	DEC	(HL)
;
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	AND	%10000000
	JR	Z,SRK2010
;
	LD	(HL),B
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),$20
;
	CALL	ENSDCL
;
	CALL	STATINC
SRSDST
	LD	A,$14
	LD	(SOUND2),A	;(S)
SRK2010
	RET
;----------------------------------------
SRK3000
	LD	A,$00
	CALL	ENPTST
;
	CALL	E8MVCL
	CALL	E8ZCLC
	LD	HL,ENZSPD
	ADD	HL,BC
	DEC	(HL)
	DEC	(HL)
;
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	AND	%10000000
	JR	Z,SRK3010
;
	LD	(HL),$01
;
	CALL	RNDSUB
	AND	$0F
	ADD	A,$08
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),A
;
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
SRK3010
	LD	A,(ENSVXL)
	CP	$A8
	JP	NC,E8CLER
	LD	A,(ENDSYP)
	CP	$80
	JP	NC,E8CLER
;
	LD	A,(FRCNT)
	AND	$0F
	JR	Z,SRSDST	;(S)
	RET
;====================================
YASICD
	DB	$7C,$01,$7E,$01
	DB	$7E,$21,$7C,$21
;- - - - - - - - - - - - - - - - - - -
YSYSPD
	DB	$00,$0C
YSXSPD
	DB	$10,$0C,$00,$F4,$F0,$F4,$00,$0C
;
YASIMV
	LD	DE,YASICD
	CALL	EN2CST
;
	CALL	E8STCK
;
	CALL	E8HNSB
;
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	RRA
	AND	$01
	CALL	ENPTST
;
	CALL	CREPKEL
;
	CALL	E8MVCL
	CALL	E8ZCLC
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
	JR	Z,YSM10010
;
	LD	(HL),B
;
	CALL	RNDSUB
	AND	$0F
	ADD	A,$10
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),A
;
	CALL	RNDSUB
	AND	$07
	LD	E,A
	LD	D,B
	LD	HL,YSXSPD
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
	LD	HL,YSYSPD
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),A
;
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	INC	(HL)
	LD	A,(HL)
	CP	$04
	JP	Z,E8CLER
;
	LD	A,$09
	LD	(SOUND1),A	;(S)
YSM10010
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�˂���				%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
MOWANCD
	DB	$50,$03,$52,$03
	DB	$54,$03,$56,$03
;
	DB	$52,$23,$50,$23
	DB	$56,$23,$54,$23
;
;- - - - - - - - - - - - - - - - - -
MOUSEMV
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	NZ,MOT000
;
	LD	A,(ENCHPT2)
	ADD	A,$02
	LD	(ENCHPT2),A
MOT000
	LD	DE,MOWANCD
	CALL	EN2CST
;
	CALL	E8STCK
;
	CALL	E8ZCLC
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
	JR	Z,MOT010
;
	XOR	A
	LD	(HL),A
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),A
MOT010
	LD	A,(ENSTAT2)
	RST	00
	DW	MOSTOP
	DW	MOWALK
;======================================
;------------------------------------
MOWKXS
	DB	$02,$08,$0C,$08
	DB	$FE,$F8,$F4,$F8
;------------------------------------
MOSTOP
	CALL	LDTIM0
	JR	NZ,MOS010
;
	CALL	RNDSUB
	AND	$07
	LD	E,A
	LD	D,B
	LD	HL,MOWKXS
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
	LD	HL,MOWKXS
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
	JP  	STATINC
MOS010
	LD	A,$01
	CALL	ENPTST
;
	LD	A,(FRCNT)
	AND	$1F
	JR	NZ,MOS020
;
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	A,(HL)
	XOR	$04
	LD	(HL),A
MOS020
	RET
;------------------------------------
MOWALK
	CALL	E8MVCL
	CALL	ENBGCKL
;
	LD	A,(ENHELP)
	AND	A
	JR	Z,MOW020
;
	CALL	LDTIM0
	JR	NZ,MOW010
;
	LD	(HL),$48
	CALL	STATINC
	LD	(HL),B
	RET
MOW010
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),$08
;
	LD	HL,ENZPSL
	ADD	HL,BC
	INC	(HL)
MOW020
	LD	A,$00
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;	RET
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%					%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%				 %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
OMRNDD
	DB	$00,$08,$10,$18
	DB	$20,$28,$30,$38
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
NXOMCL
;---- Next OAM calc - - 
	LD	HL,ENMOD0
	ADD	HL,BC
	LD	A,(HL)
	AND	%00001111
NXOMSB
	SLA	A
	SLA	A
	LD	E,A
;
	LD	A,(ENOMID)
	ADD	A,E   ;$08
	CP	$60
	JR	C,NXO0001
;
	SUB	$60
NXO0001
	LD	(ENOMID),A
;
	LD	A,(ENOMIS)
	ADD	A,E
	LD	(ENOMIS),A
	CP	$60
	JR	C,E1C078	; Set over ?
;				; yes ! randam set !
	LD	A,(FRCNT)
	LD	HL,INDEX
	ADD	A,(HL)
	AND	$07
	LD	E,A
	LD	D,$0
	LD	HL,OMRNDD
	ADD	HL,DE
	LD	A,(HL)
	LD	(ENOMID),A
E1C078
	RET
;&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
;&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
;&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
;&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
SADWST
	LD	A,(ENMODE2)
	CP	ECACH
		ret	Z
;;;;;;;;	JR	Z,E0C090
;- - - Sadow set - - - 
	LD	HL,ENWATR
	ADD	HL,BC
	LD	A,(HL)
	CP	$02
	JP	Z,ENWAST
	CP	$03
	JP	Z,ENKSST
;
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	AND	A
		ret	Z
;;;;;;;;	JR	Z,E0C090
;
	LD	A,(YKFLAG)
	AND	A		;����ʃ��[�h�H
		ret	NZ		;	YES --> E0C090
;;;;;;;;	JR	NZ,E0C090	;	YES --> E0C090
;
	LD	HL,ENMOD0
	ADD	HL,BC
	LD	A,(HL)
	AND	%00010000
		ret	Z
;;;;;;;;	JR	Z,E0C090
;
	LD	A,(FRCNT)
;;	LD	E,A
;;	LD	A,(INDEX)
;;	XOR	E
	XOR	C
	AND	$01
		ret	NZ
;;;;;;;;	JR	NZ,E0C090
;
	LD	A,(ENOMID)
	LD	L,A
	LD	H,$0
	LD	DE,ENOAM
	ADD	HL,DE
;
	LD	A,(ENSVYL)
	ADD	A,$0A
	LD	(HLI),A
	LD	A,(ENSVXL)
	ADD	A,$4
	LD	(HLI),A
	LD	A,$26
	LD	(HLI),A
;;	LD	A,$00
	LD	(HL),B
;
	LD	A,$01
		jp	NXOMSB
;;;;;;;;	CALL	NXOMSB
;;;;;;;;E0C090
;;;;;;;;	RET
;=====�󐣐��̗�===========
ENWAST
	LD	A,(ENMYNO2)
	CP	BOMBR
	JR	NZ,ENWAS10
;
	LD	HL,ENDSYP
	DEC	(HL)
	DEC	(HL)
	CALL	ENWAS10
	JP	ENPSSV
;
ENWAS10
	LD	A,(ENOMID)
	LD	L,A
	LD	H,$0
	LD	DE,ENOAM
	ADD	HL,DE
;
	LD	E,$00
	LD	A,(FRCNT)
	AND	$04
	JR	Z,EWAS10
;
	LD	E,$10
EWAS10
	LD	A,(ENDSYP)
;;	LD	A,(ENSVYL)
	ADD	A,$0B
	LD	(HLI),A
	LD	A,(ENSVXL)
	LD	(HLI),A
	LD	A,$1C
	LD	(HLI),A
	LD	A,E
	LD	(HLI),A
	LD	A,(ENDSYP)
	ADD	A,$0B
	LD	(HLI),A
	LD	A,(ENSVXL)
	ADD	A,$08
	LD	(HLI),A
	LD	A,$1C
	LD	(HLI),A
	LD	A,E
	OR	$20
	LD	(HLI),A
;
	LD	A,$02
		jp	NXOMSB
;;;;;;;;	CALL	NXOMSB
;;;;;;;;	RET
;=====���ނ�̑�===========
ENKSST
	PUSH	BC
;
	LD	HL,ENCONT
	ADD	HL,BC
	LD	E,(HL)
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	C,B
	OR	(HL)
	JR	Z,EKSS10
;
	LD	A,E
	RLA
	RLA
;;	RLA
	AND	%00100000
	LD	C,A
EKSS10
	LD	A,(ENOMID)
	LD	L,A
	LD	H,$0
	LD	DE,ENOAM
	ADD	HL,DE
;
	LD	A,(ENDSYP)
	ADD	A,$08
	LD	(HLI),A
	LD	A,(ENSVXL)
	DEC	A
	LD	(HLI),A
	LD	A,$1A
	LD	(HLI),A
	LD	A,C
	LD	(HLI),A
;
	LD	A,(ENDSYP)
	ADD	A,$08
	LD	(HLI),A
	LD	A,(ENSVXL)
	ADD	A,$07
	LD	(HLI),A
	LD	A,$1A
	LD	(HLI),A
	LD	A,C
	LD	(HL),A
;
	POP	BC
;
	LD	A,$02
		jp	NXOMSB
;;;;;;;;	CALL	NXOMSB
;;;;;;;;	RET
;
;????????????????????????????????????????????????????????
;?	����e�Z�b�g	(�S�h�b�g��ɏグ���)		?
;????????????????????????????????????????????????????????
SADWST_SP
;;;KK;;;		LD	A,(ENMODE2)
;;;KK;;;		CP	ECACH
;;;KK;;;		RET	Z
;;;KK;;;;- - - Sadow set - - - 
;;;KK;;;		LD	HL,ENWATR
;;;KK;;;		ADD	HL,BC
;;;KK;;;		LD	A,(HL)
;;;KK;;;		CP	$02
;;;KK;;;		JP	Z,SP_ENWAST
;;;KK;;;		CP	$03
;;;KK;;;		JP	Z,SP_ENKSST
;;;KK;;;;
;;;KK;;;		LD	HL,ENZPSL
;;;KK;;;		ADD	HL,BC
;;;KK;;;		LD	A,(HL)
;;;KK;;;		AND	A
;;;KK;;;		RET	Z
;;;KK;;;;
;;;KK;;;		LD	A,(YKFLAG)
;;;KK;;;		AND	A		;����ʃ��[�h�H
;;;KK;;;		RET	NZ		;	YES --> return
;;;KK;;;;
;;;KK;;;		LD	HL,ENMOD0
;;;KK;;;		ADD	HL,BC
;;;KK;;;		LD	A,(HL)
;;;KK;;;		AND	%00010000
;;;KK;;;		RET	Z
;;;KK;;;;
;;;KK;;;		LD	A,(FRCNT)
;;;KK;;;		XOR	C
;;;KK;;;		AND	$01
;;;KK;;;		RET	NZ
;;;KK;;;;
;;;KK;;;		LD	A,(ENOMID)
;;;KK;;;		LD	L,A
;;;KK;;;		LD	H,$0
;;;KK;;;		LD	DE,ENOAM
;;;KK;;;		ADD	HL,DE
;;;KK;;;;
;;;KK;;;		LD	A,(ENSVYL)
;;;KK;;;;;;KK;;;		ADD	A,$0A
;;;KK;;;		ADD	A,$06
;;;KK;;;		LD	(HLI),A
;;;KK;;;		LD	A,(ENSVXL)
;;;KK;;;		ADD	A,$4
;;;KK;;;		LD	(HLI),A
;;;KK;;;		LD	A,$26
;;;KK;;;		LD	(HLI),A
;;;KK;;;		LD	(HL),B
;;;KK;;;;
;;;KK;;;		LD	A,$01
;;;KK;;;		CALL	NXOMSB
;;;KK;;;		RET
;;;KK;;;;
;;;KK;;;;=====�󐣐��̗�===========
;;;KK;;;SP_ENWAST
;;;KK;;;		LD	A,(ENMYNO2)
;;;KK;;;		CP	BOMBR
;;;KK;;;		JR	NZ,SP_ENWAS10
;;;KK;;;;
;;;KK;;;		LD	HL,ENDSYP
;;;KK;;;		DEC	(HL)
;;;KK;;;		DEC	(HL)
;;;KK;;;		CALL	SP_ENWAS10
;;;KK;;;	JP	ENPSSV
;;;KK;;;;
;;;KK;;;SP_ENWAS10
;;;KK;;;		LD	A,(ENOMID)
;;;KK;;;		LD	L,A
;;;KK;;;		LD	H,$0
;;;KK;;;		LD	DE,ENOAM
;;;KK;;;		ADD	HL,DE
;;;KK;;;;
;;;KK;;;		LD	E,$00
;;;KK;;;		LD	A,(FRCNT)
;;;KK;;;		AND	$04
;;;KK;;;		JR	Z,SP_EWAS10
;;;KK;;;;
;;;KK;;;		LD	E,$10
;;;KK;;;SP_EWAS10
;;;KK;;;		LD	A,(ENDSYP)
;;;KK;;;;;;KK;;;		ADD	A,$0B
;;;KK;;;		ADD	A,$07
;;;KK;;;		LD	(HLI),A
;;;KK;;;		LD	A,(ENSVXL)
;;;KK;;;		LD	(HLI),A
;;;KK;;;		LD	A,$1C
;;;KK;;;		LD	(HLI),A
;;;KK;;;		LD	A,E
;;;KK;;;		LD	(HLI),A
;;;KK;;;		LD	A,(ENDSYP)
;;;KK;;;;;;KK;;;		ADD	A,$0B
;;;KK;;;		ADD	A,$07
;;;KK;;;		LD	(HLI),A
;;;KK;;;		LD	A,(ENSVXL)
;;;KK;;;		ADD	A,$08
;;;KK;;;		LD	(HLI),A
;;;KK;;;		LD	A,$1C
;;;KK;;;		LD	(HLI),A
;;;KK;;;		LD	A,E
;;;KK;;;		OR	$20
;;;KK;;;		LD	(HLI),A
;;;KK;;;;
;;;KK;;;		LD	A,$02
;;;KK;;;		CALL	NXOMSB
;;;KK;;;		RET
;;;KK;;;;
;;;KK;;;;=====���ނ�̑�===========
;;;KK;;;SP_ENKSST
;;;KK;;;		PUSH	BC
;;;KK;;;;
;;;KK;;;		LD	HL,ENCONT
;;;KK;;;		ADD	HL,BC
;;;KK;;;		LD	E,(HL)
;;;KK;;;;
;;;KK;;;		LD	HL,ENXSPD
;;;KK;;;		ADD	HL,BC
;;;KK;;;		LD	A,(HL)
;;;KK;;;		LD	HL,ENYSPD
;;;KK;;;		ADD	HL,BC
;;;KK;;;		LD	C,B
;;;KK;;;		OR	(HL)
;;;KK;;;		JR	Z,SP_EKSS10
;;;KK;;;;
;;;KK;;;		LD	A,E
;;;KK;;;		RLA
;;;KK;;;		RLA
;;;KK;;;		AND	%00100000
;;;KK;;;		LD	C,A
;;;KK;;;SP_EKSS10
;;;KK;;;		LD	A,(ENOMID)
;;;KK;;;		LD	L,A
;;;KK;;;		LD	H,$0
;;;KK;;;		LD	DE,ENOAM
;;;KK;;;		ADD	HL,DE
;;;KK;;;;
;;;KK;;;		LD	A,(ENDSYP)
;;;KK;;;;;;KK;;;		ADD	A,$08
;;;KK;;;		ADD	A,$04
;;;KK;;;		LD	(HLI),A
;;;KK;;;		LD	A,(ENSVXL)
;;;KK;;;		DEC	A
;;;KK;;;		LD	(HLI),A
;;;KK;;;		LD	A,$1A
;;;KK;;;		LD	(HLI),A
;;;KK;;;		LD	A,C
;;;KK;;;		LD	(HLI),A
;;;KK;;;;
;;;KK;;;		LD	A,(ENDSYP)
;;;KK;;;;;;KK;;;		ADD	A,$08
;;;KK;;;		ADD	A,$04
;;;KK;;;		LD	(HLI),A
;;;KK;;;		LD	A,(ENSVXL)
;;;KK;;;		ADD	A,$07
;;;KK;;;		LD	(HLI),A
;;;KK;;;		LD	A,$1A
;;;KK;;;		LD	(HLI),A
;;;KK;;;		LD	A,C
;;;KK;;;		LD	(HL),A
;;;KK;;;;
;;;KK;;;		POP	BC
;;;KK;;;;
;;;KK;;;		LD	A,$02
;;;KK;;;		CALL	NXOMSB
		RET
;
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%				 %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;OAMCHK
;	LD	A,(SCRLFG)
;	AND	A
;	JR	Z,OMCK10
;;
;	LD	HL,ENXPSH
;	ADD	HL,BC
;	LD	A,(HL)
;	AND	A
;	JR	NZ,OMCK08
;;
;	LD	HL,ENYPSH
;	ADD	HL,BC
;	LD	A,(HL)
;	AND	A
;	JR	Z,OMCK10
;OMCK08
;	POP	AF	; Display out not c set !
;OMCK10
;	RET
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
;=================================================
;\\\  ���ʃ��[�`��
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%					%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
M8CROS
	CALL	CRENPSL
	JR	NC,M820E0
;
M8CRSB
	CALL	PLPSRV
;
	LD	A,(PFUCKID)
	AND	A
	JR	Z,M820D0
;	
	LD	E,A
	LD	D,B
	LD	HL,ENMYNO-1
	ADD	HL,DE
	LD	A,(HL)
	CP	FUCKS
	JR	NZ,M820D0
;
	LD	HL,ENSTAT-1	; Fuck return
	ADD	HL,DE
	LD	(HL),$00
M820D0
	LD	A,(DUSHFG)
	LD	E,A
	CALL	DUSHCL2
	CALL	PLSDCL
	LD	A,E
	SCF
	RET	
M820E0
	AND	A
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%					%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
M8MVPT
	DB	$06,$04,$02,$00
;
M8PTST
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	E,(HL)
;;	LD	E,A
	LD	D,B ;$0
	LD	HL,M8MVPT
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
;	JR	E8MSSB
;;----------------------------------
;DRMSCK	;Dr.���C�g��p�I
;	LD	A,(PLYPSL)
;	LD	HL,ENSVYL
;	SUB	(HL)
;	ADD	A,$14
;	CP	$28+$10
;	JR	E8MSSB 
;------------------------------
E8MSCK
	LD	E,B
;
	LD	A,(PLYPSL)
	LD	HL,ENSVYL
	SUB	(HL)
	ADD	A,$14
	CP	$28
E8MSSB
	JR	NC,E8C0A0
;
	LD	A,(PLXPSL)
	LD	HL,ENSVXL
	SUB	(HL)
	ADD	A,$10
	CP	$20
	JR	NC,E8C0A0
;
	INC	E
;
	PUSH	DE
	CALL	E8XYCK
	LD	A,(PLCMKI)
	XOR	$01
	CP	E
	POP	DE
	JR	NZ,E8C0A0
;
E8C022
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
		LD	HL,MSOFTM2	; ���b�Z�[�W�A���h�~�^�C��
		OR	(HL)		; �i�v�����^�j
	JR	NZ,E8C0A0
;
	LD	A,(WNDYPS)
	CP	$80
	JR	NZ,E8C0A0
;
	LD	A,(KEYA2)
	AND	%00010000
	JR	Z,E8C0A0
;
	SCF
	RET
E8C0A0
	AND	A	; (C) reset !
	RET
;============================================
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%				 %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;---------------------------------
E8STCK
	LD	A,(ENMODE2)
	CP	EMOVE
	JR	NZ,E8TC12
;
E8STCK2
	LD	A,(GMMODE)
	CP	GMAP
	JR	Z,E8TC12
;
		CP	ENDG
		JR	Z,E8STCK2_100	; �G���f�B���O�H
;					; �m��
		cp	GPLAY
		jr	nz,E8TC12	; �Q�[�����[�h�@�H
;					; Yes !!
		ld	a,(SBHR)
		cp	004
		jr	nz,E8TC12	; �t�F�[�h���@�H
;					; No !!
E8STCK2_100
	LD	HL,ENSTFG
	LD	A,(MSGEFG)
;;	AND	A
	OR	(HL)
	LD	HL,WNDFLG
	OR	(HL)
	JR	NZ,E8TC12
;
	LD	A,(SCRLFG)
	AND	A
	JR	Z,E8TCF0
E8TC12
	POP	AF
E8TCF0
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%						    %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
E8HNSD
;;	DB	$0,$0,$0,$0,$0
;;;	DB	$7,$3,$1,$0,$0
E8HNSB
	LD	HL,ENHNFG
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,E8HN90
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
;;	LD	HL,E8HNSD
;;	ADD	HL,DE
;;	POP	AF
;;	AND	(HL)
;;	JR	NZ,E8HN30
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
	CALL	E8MVCL
;
	LD	HL,ENMOD3
	ADD	HL,BC
	LD	A,(HL)
	AND	%00100000
	JR	NZ,E8HN28
;
	CALL	ENBGCKL
E8HN28
	LD	HL,ENYSPD
	ADD	HL,BC
	POP	AF
	LD	(HL),A
;
	LD	HL,ENXSPD
	ADD	HL,BC
	POP	AF
	LD	(HL),A
E8HN30
	POP	AF
E8HN90
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%				 %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
E8MVCL	
;
	CALL	E8XCLC 		; X calc
;
E8YCLC
	PUSH	BC
	LD	A,C
	ADD	A,<ENNO
	LD	C,A
	
	CALL	E8XCLC		; Y calc
	POP	BC
	RET
;-----------------------------------------
E8XCLC
	LD	HL,ENXSPD
	ADD	HL,BC 
;
	LD	A,(HL)
	AND	A
	JR	Z,E8L090
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
E8L00
	ADD	HL,BC 
;
	POP	AF
;
	LD	E,$0
	BIT	7,A
	JR	Z,E8C00
	LD	E,$F0
E8C00
	SWAP	A
	AND	$0F
	OR	E
	RR	D
	ADC	A,(HL)
	LD	(HL),A
E8L090
	RET
;====================================================
E8ZCLC
	LD	HL,ENZSPD
	ADD	HL,BC 
;
	LD	A,(HL)
	AND	A
	JR	Z,E8L090
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
	JR	E8L00
;====================================
E8XCHK
	LD	E,$0
;
	LD	A,(PLXPSL)
	LD	HL,ENXPSL
	ADD	HL,BC
	SUB	(HL)
	BIT	7,A
	JR	Z,E8X010
;;	JR	NC,E8X010
	INC	E
E8X010
	LD	D,A
	RET
;====================================
E8YCHK
	LD	E,$2
;
	LD	A,(PLYPSL)
	LD	HL,ENYPSL
	ADD	HL,BC
	SUB	(HL)
	BIT	7,A
	JR	NZ,E8Y010
;;	JR	C,E8Y010
	INC	E
E8Y010
	LD	D,A
	RET
;====================================
E8YCHK2
	LD	E,$2
;
	LD	A,(PLYPSL)
	LD	HL,ENDSYP
	SUB	(HL)
	BIT	7,A
	JR	NZ,E8Y210
	INC	E
E8Y210
	LD	D,A
	RET
;====================================
E8XYCK
	CALL	E8XCHK
	LD	A,E
	LD	(WORK0),A
;
	LD	A,D
	BIT	7,A
	JR	Z,E82010
	CPL
	INC	A
E82010
	PUSH	AF
;
	CALL	E8YCHK
	LD	A,E
	LD	(WORK1),A
;
	LD	A,D
	BIT	7,A
	JR	Z,E8Y020
	CPL
	INC	A
E8Y020
	POP	DE
	CP	D
	JR	NC,E8Y030
;
	LD	A,(WORK0)
	JR	E8Y050
E8Y030
	LD	A,(WORK1)
E8Y050
	LD	E,A
	RET
;============================
E8CLER
	LD	HL,ENMODE
	ADD	HL,BC
	LD	(HL),B
	RET
;=====================================
BSFLSB8
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	A,(HL)
	RST	00
	DW	N8L1000
	DW	N8L1800
	DW	N8L2000
;-------------------------------------
N8L1000
	CALL	LDTIM0
	LD	(HL),$A0
;
	LD	HL,ENFLSH
	ADD	HL,BC
	LD	(HL),$FF
;
INCWR81
	LD	HL,ENWRK1
	ADD	HL,BC
	INC	(HL)
	RET
;-------------------------------------
N8L1800
	CALL	LDTIM0
		ret	NZ
;;;;;;;;	JR	NZ,N8L1810
;
	LD	(HL),$C0
;
	LD	HL,ENFLSH
	ADD	HL,BC
	LD	(HL),$FF
;
		jp	INCWR81
;;;;;;;;	CALL	INCWR81
;;;;;;;;N8L1810
;;;;;;;;	RET
;-------------------------------------
N8L2000
	CALL	LDTIM0
	JR	NZ,N8L2010
;
N8L2008
	CALL	BBSDST	;(S)
;
	JP	ENFEND
N8L2010
		jp	ESMRN8
;;;;;;;;	CALL	ESMRN8
;;;;;;;;	RET
;===========================================
ESMRN8
	AND	$07
		ret	NZ
;;;;;;;;	JR	NZ,K8L310
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
		jp	HBSMS8
;;;;;;;;	CALL	HBSMS8
;;;;;;;;K8L310
;;;;;;;;	RET
;
;===========================================
HBSMS8
	CALL	E8STCK2
;
	LD	A,(ENSVXL)
	LD	(WORK0),A
	LD	A,(ENDSYP)
	LD	(WORK1),A
;----------------------------------
SMKSDS8
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
HARTBS8
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
	JR	Z,HBS810
;
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),$F0
	JR	HBS820
HBS810
	LD	HL,ENZSPD
	ADD	HL,DE
	LD	(HL),$10
;
	LD	HL,ENZPSL
	ADD	HL,DE
	LD	(HL),$08
HBS820
E8CLBB
	CALL	E8CLER
;
	LD	HL,SOUND3
	LD	(HL),$1A	;(S)
;;	CALL	BBSDST	;(S)
	RET
;==============================
;- - Save data set - - - -
E8SVST
	LD	HL,GRRMSV
	LD	A,(GRNDPT)
	LD	E,A
	LD	A,(DJFLAG)
;;	LD	D,B
	LD	D,A
	LD	A,(DNJNNO)
	CP	DJROOM2
	JR	NC,E8SS10
	CP	DJROOM
	JR	C,E8SS10
	INC	D
;;;	LD	D,$01
E8SS10
	ADD	HL,DE
;
	LD	A,(HL)
	OR	%00100000
	LD	(HL),A
	LD	(DJSVBF),A	; Save data buffer set !
	RET
;==============================
;��������������������������������������������������������������������������
;��	ze4.s �̃v���O�����������Ɉړ�					 ��
;��������������������������������������������������������������������������
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%   �x�b�h �Q�鏈��			%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
BEDINMV
	LD	A,(ENSTAT2)
	RST	00
	DW	BDIN000
	DW	BDIN100
	DW	BDIN200
;;	DW	BDIN300
;-------------------------------------
BDIN000
;(CGB)	CALL	E4XCHK
		CALL	E8XCHK
	ADD	A,$0E
	CP	$1C
	JR	NC,BDIN090
;
;(CGB)	CALL	E4YCHK
		CALL	E8YCHK
	ADD	A,$0C
	CP	$18
	JR	NC,BDIN090
;
	LD	A,(PLCMKI)
	AND	A
	JR	NZ,BDIN090
;
	LD	A,(PLCBFG)
	AND	A
	JR	Z,BDIN090
;
	CALL	STATINC
;
	CALL	LDTIM0
	LD	(HL),$A0
;
	LD	A,$01
	LD	(PLZPSL),A
	LD	A,$02
	LD	(PLJPFG),A
	LD	A,$12
	LD	(PLZSPD),A
	LD	A,$0C
	LD	(PLXSPD),A
	XOR	A
	LD	(PLYSPD),A
;
	LD	A,$0
	LD	(PLCMKI),A
;
	LD	A,$01
	LD	(BEDOFF),A
;
	LD	A,$1E
	LD	(SOUND4),A	;(S)
;
	XOR	A
	LD	(SBHR),A
	LD	(SBCNT),A
BDIN090
	RET
;-------------------------------------
BLINKCD				;�����N�Q��i�΁j
	DB	$50,$07,$52,$07
;;	DB	$42,$20,$40,$20
	DB	$54,$00,$56,$00
;;	DB	$48,$00,$4A,$00
;;	DB	$48,$00,$4C,$00
BLINKCD_red			;�����N�Q��i�ԁj
	DB	$50,$07,$52,$07
	DB	$54,$02,$56,$02
BLINKCD_blue			;�����N�Q��i�j
	DB	$50,$07,$52,$07
	DB	$54,$03,$56,$03
BLINKCD_BED			;�z�c�̉��n
	DB	$00,$00,$5E,$06	; ��
	DB	$00,$08,$5E,$26	; �E
;- - - - - - - - - - - - - - - -
BDTRAD	;�g�E���E�ꏊ
	DB	$98,$42
	DB	$98,$50
	DB	$99,$90
	DB	$99,$82
;
BDIN100
	LD	A,(PLJPFG)
	AND	A
		ret	NZ
;;;;;;;;	JP	NZ,BDIN1C0
;
	CALL	LDTIM0
	JR	NZ,BDIN190
;
	LD	A,$01
	LD	(WAVFLG),A
	XOR	A
	LD	(WAVTIM),A
	LD	A,$08
	LD	(WAVCNT4),A
;
	CALL	STATINC
;;	RET
	XOR	A
BDIN190
	PUSH	AF
;
	CP	$80
	JR	NC,BDIN198
;
	PUSH	AF
;
	AND	$1F
	JR	NZ,BDIN191
;
	LD	A,(SBHR)
	CP	$02
	JR	Z,BDIN191
;
	LD	A,$03
	LD	(SBCNT),A
	PUSH	BC
	CALL	FDIN
	POP	BC
BDIN191
	POP	AF
	AND	$0F
	JR	NZ,BDIN198
;
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	A,(HL)
	CP	$04
	JR	Z,BDIN198
;
	LD	A,(VRAMD)
	LD	E,A
	LD	D,B
	ADD	A,$5
	LD	(VRAMD),A
	LD	HL,VRAMD+1
	ADD	HL,DE
	PUSH	HL
;
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	A,(HL)
	INC	(HL)
	SLA	A
	LD	E,A
	LD	D,B
	LD	HL,BDTRAD
	ADD	HL,DE
		ld	e,l
		ld	d,h
;;10/31;	PUSH	HL
;;10/31;	POP	DE
	POP	HL
	LD	A,(DE)
	INC	DE
	LD	(HLI),A
	LD	A,(DE)
	LD	(HLI),A
;
	LD	A,$01
	LD	(HLI),A
;
	LD	A,$64
	LD	(HLI),A
;
	LD	A,$65
	LD	(HLI),A
;
	LD	(HL),B
BDIN198
	POP	AF
	LD	E,$00
	CP	$80
	JR	C,BDIN1A0
	INC	E
BDIN1A0
	LD	A,E
;------------------------------------
BEDLINKCS
	LD	(ENCHPT2),A	
	LD	A,$58
	LD	(ENSVXL),A
	LD	(PLXPSL),A
	LD	A,$44
	LD	(ENDSYP),A
	LD	(PLYPSL),A
;
	LD	A,$02
	LD	(PLSTOP),A
	LD	A,$FF
	LD	(PLCHPT),A
;
	LD	DE,BLINKCD
		LD	A,(CLOTHFG)
		AND	A		; �����N�����Ă��镞�͗΁H
		JR	Z,BEDLINKCS_050	; �x�d�r

		LD	DE,BLINKCD_red	; ��
		CP	1
		JR	Z,BEDLINKCS_050

		LD	DE,BLINKCD_blue	; ��
BEDLINKCS_050
	CALL	EN2CST
;
		LD	A,(CGBFLG)
		AND	A
		JR	Z,BEDLINKCS_100
;
		LD	HL,BLINKCD_BED
		LD	C,$2
		CALL	ENOMST
BEDLINKCS_100
;
		jp	ENPSSV
;;;;;;;;	CALL	ENPSSV
;;;;;;;;;
;;;;;;;;BDIN1C0
;;;;;;;;	RET
;-------------------------------------
BDIN200
	XOR	A
	CALL	BEDLINKCS
;
	LD	A,(WAVFLG)
	AND	A
		ret	NZ
;;;;;;;;	JR	NZ,BDIN210
;
;	CALL	LDTIM0
;	JR	NZ,BDIN210
;;
;	LD	(HL),$08
;;
;	CALL	FDIN
;;
;	LD	A,(SBHR)
;	CP	$04
;	JR	NZ,BDIN210
;
	XOR	A
	LD	(PLCHPT),A
;
	LD	HL,NXRMMD
	LD	A,DNJ
	LD	(HLI),A
	LD	A,(DNJNNO)
	LD	(HLI),A
	LD	A,$CE
	LD	(HLI),A
	LD	A,$50
	LD	(HLI),A
	LD	A,$7C
	LD	(HL),A
;
;(CGB)	CALL	E4CLER
		CALL	E8CLER
;;	CALL	STATINC
	JP	NXGOTO3
;
;;;;;;;;BDIN210
;;;;;;;;	RET
;-------------------------------------
;BDIN300
;	XOR	A
;	CALL	BEDLINKCS
;
;	RET
;==============================
;������������������������������������������������������������������������
;��	ze7 �̃v���O�����������Ɉړ�				       ��
;������������������������������������������������������������������������
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�}���ق̖{�������Ђł̃A���o��	      %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
BOOKCD_CGB0
		DB	$58,$00
BOOKCD_CGB1
		DB	$58,$01
BOOKCD_CGB2
		DB	$58,$02
BOOKCD_CGB3
		DB	$58,$03
BOOKCD_CGB4
		DB	$58,$01
;
BOOKCD_CGB
		DW	BOOKCD_CGB0,BOOKCD_CGB1,BOOKCD_CGB2,BOOKCD_CGB3
		DW	BOOKCD_CGB2,BOOKCD_CGB3,BOOKCD_CGB0,BOOKCD_CGB4
;
BOOKCD
	DB	$58,$00
BOOKCD2
	DB	$5A,$00,$5A,$20
;----------------------------------------
BOOKMV
	LD	A,(ENCHPT2)
	AND	A
	JR	Z,BOK000
;
	LD	DE,BOOKCD2-4
	CALL	EN2CST
	JR	BOK010
BOK000
;
		LD	A,(CGBFLG)
		AND	A
		JR	Z,BOK000_900
		PUSH	BC
		LD	HL,BOOKCD_CGB
		LD	A,(GRNDPT)
		CP	$B5		; �����Ђł̃A���o���H
		JR	Z,BOK000_800
		SLA	C
		RL	B
		ADD	HL,BC
BOK000_800
		LD	A,(HLI)
		LD	E,A
		LD	A,(HL)
		LD	D,A
		POP	BC
		CALL	EN1CST
		JR	BOK010
BOK000_900
;
	LD	DE,BOOKCD
	CALL	EN1CST
;
BOK010
	CALL	E8STCK
;
	LD	A,(ENSTAT2)
	RST	00
	DW	BOK1000
	DW	BOK2000
;--------------------------------------
BOKMSDT
	DB	$02,$04,$06,$00,$0A,$08,$0C,$0D
	DB	$2b			; �����Ђł̃A���o��
;
BOK1000
	LD	A,(GMMODE)
	CP	GMAP
	JR	Z,BOK1008
;
	XOR	A
	LD	(GMAPFG),A
BOK1008
	XOR	A
	CALL	ENPTST
;
	CALL	E8MSCK
	RET	NC
;
		LD	A,(GRNDPT)
		CP	$B5		; �����Ђł̃A���o���H
		JR	NZ,BOK1008_100	; �m�n
;
		LD	E,$8
		JR	BOK1020
BOK1008_100
	LD	E,$00
	LD	A,(ENSVXL)
	CP	$20
	JR	C,BOK1010
	INC	E
	CP	$40	
	JR	C,BOK1010
	INC	E
	CP	$70	
	JR	C,BOK1010
;
	INC	E
BOK1010
	LD	A,(ENSVYL)
	CP	$40
	JR	C,BOK1020
;
	LD	A,E
	ADD	A,$04
	LD	E,A
BOK1020
	LD	D,B
	LD	HL,BOKMSDT
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	(HL),A
	CALL	MSGCH3
;
		jp	STATINC
;;;;;;;;	CALL	STATINC
;;;;;;;;	RET
;--------------------------------------
BOK2000
	LD	A,$01
	CALL	ENPTST
;
	LD	A,(MSGEFG)
	AND	A
	RET	NZ
;
	CALL	STATINC
	LD	(HL),B
;
	LD	A,(MSANSR)
	AND	A
	JR	NZ,BOK2090
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	INC	A
	LD	E,A
	CP	$0E
	JR	NZ,BOK2030	;Lv.9 �閧�H
;				;YES !
	LD	A,(MEGAF)
	CP	$0E		;�ዾ�H
	JR	NZ,BOK2030	;	NO --> BOK2030
;
		LD	A,(WARAFG)
		AND	A		;��炵�׃A�C�e���\���n�e�e�H
		JR	NZ,BOK2030	;	YES --> BOK2030
;
	LD	A,(DJSVBF)
	AND	%00100000
	JR	NZ,BOK2028	;���߂āH
;				;YES !
	CALL	E8SVST
;
	CALL	RNDSUB
	RLA
	RLA
	RLA
	AND	%00011000
	LD	(L9NZFG),A
BOK2028
	LD	A,(L9NZFG)
	RRA
	RRA
	RRA
	AND	$03
	ADD	A,$17	;17 ���� 1A
	LD	E,A
;;	LD	E,$0F
BOK2030
		LD	A,(GRNDPT)
		CP	$B5		; �����Ђł̃A���o���H
		JR	Z,BOK2050	; �x�d�r

	LD	A,E
	CP	$0D
	JR	NZ,BOK2040	;�n�}�H
;				;YES !
	XOR	A
	LD	(SBHR),A
	LD	(SBCNT),A
;
	LD	(ITMODE),A
	LD	A,GMAP
	LD	(GMMODE),A
;
	LD	A,$01
	LD	(GMAPFG),A
	RET	
BOK2040
		jp	MSGCH3
;;;;;;;;	CALL	MSGCH3
;;;;;;;;	RET
BOK2050				; �A���o���f�n
		XOR	A
		LD	(SBHR),A
		LD	(SBCNT),A
		LD	(ITMODE),A
		LD	A,PRN
		LD	(GMMODE),A
		RET
BOK2090
	XOR	A
	JP	ENPTST
;==============================
;������������������������������������������������������������������������
;��	ze6 �̃v���O�����������Ɉړ�				       ��
;������������������������������������������������������������������������
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	������ ���F				%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
KUMASCD
	DB	$74,$03,$76,$03
	DB	$70,$03,$72,$03
;
	DB	$76,$23,$74,$23
	DB	$72,$23,$70,$23
;- - - - - - - - - - - - - - - - - - 
KUMASMV
;(CGB)	CALL	DOUCHK

	LD	A,(MARINOF)
	AND	A
	JP	Z,E8CLER
;
	LD	DE,KUMASCD
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
	JR	NC,KMAS060
;
	LD	E,$02
KMAS060
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	RRA
	RRA
	AND	$01
	ADD	A,E
	CALL	ENPTST
;;	RET
;(CGB)	JR	DOUMSCK

	CALL	M8CROS
;
	CALL	E8MSCK
		ret	NC
;;;;;;;;	JR	NC,KMAS100
;
	LD	A,$96	;�������p�I
		jp	MSGCH2
;;;;;;;;	CALL	MSGCH2
;;;;;;;;KMAS100
;;;;;;;;	RET


;==============================
;==============================
;==============================
;==============================
;==============================
;==============================
;==============================
	END
