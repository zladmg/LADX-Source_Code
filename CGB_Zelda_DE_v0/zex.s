;
		onbankgroup
;
;==============	バンク０ ================================================
BANK0		GROUP	0
;-------------<	ZCO >-------------
		extern	OBJBG,DATA_MOV,RNDSUB,SOUNDCLR,SOUNDOUT,BGMON
		extern	DJITRV,DATA_MOV2,BGMSET
;
;-------------<	ZBS >-------------
		extern	SSUB,UNSTSB,DJRMRD,BGDTST,ENDTST,BGBKST,BGCRRD
		extern	DJTKCK
;
;-------------<	ZPL >-------------
		extern	EXIDSH,NXGOTO2,MSGCH2,PMOVE,MVCALC,BBSDST,GKCHRV
		extern	NOSDST,MSGCH3,POVER,NXGOTO,DUSHCL,DUSHCL2,EXSET
		extern	NAZOCLR,NXGOTO3,SCRMV1S,BG1CHG,NXGOTO4,PLTOOL
		extern	BGCACH,MSGCHK,KNBGCK,DSSDST,PLPTST,ENEMYL2,LDTIM0
		extern	PLWPCS2,LDTIM1,LDTIM3,TATEST2,PINDR1,PINDR2,PLSDCL
		extern	PTOBI,CARITMD,TLCRST,KURUD,PHANE,PLPSRV,PKEN,POKAR
		extern	TSVE,PFOLE,PSWIM,POBOR,ENDG,PLWPCS,KNCSET,PLZCLC
		extern	TLSDST,PLCSET,PLSHST,GMAP,PWARP,MSK,MQE,PBULE
		extern	PBOMB,GPLAY,ITSEL
;
;-------------<	ZMA >-------------
		extern	DMPCH,FUEC1,FUEC4,HIMITSU2,GAKCH
		EXTERN	BG1UNIT_ATR,BG1UNIT_ATR_SUB,DR_AT_SetSub
		EXTERN	HakaCheck_SUB,COIN_CHK_SUB
		EXTERN	Unit_change,Dark_colset
		EXTERN	JSL_CALL
;
;-------------<	ZES >-------------
		extern	NXOMSBL,ENIDSHL,PSERCHL,WANWANCKL,KTFLSTL,STATINC
		extern	ENSDCL,EMOVE,EFAIL,ESHOT
;
;==============	バンク３ ================================================
BANK3		GROUP	3
;-------------<	ZEN >-------------
		extern	FUCKS,BLOCK,KEYSM,BSKEL,HART1,RUPY1,KTOBJ,KAKIN
		extern	FUKURO,TAKAR,KAKER,ONPU,COPYA,NIWAX,YOSEI,YTUBO
		EXTERN	BEDIN,R_BLOCK,G_BLOCK,B_BLOCK,R_TUCHI,L_TUCHI
		extern	NIWAT,MOAI,TAMA0,DAISU,OCHAN,BOMBR
;
;==============	バンク８ ================================================
BANK8		GROUP	8
;-------------<	ZBD >-------------
		extern	GRBGCR
;
;==============	バンク１４ ==============================================
BANK14		GROUP	14H
;-------------<	ZDB >-------------
		extern	SKY,BKY,DJRMDT,D7DAT2
		EXTERN	NEWDJDAT
		EXTERN	NEWDJTK,DJTKDT,NEWDJNZ,DJNZDT
;
;==============	バンク１Ｃ ==============================================
BANK1C          GROUP   $1C
;-------------<	ZMS >-------------
		EXTERN	KAI,C02
;
;==============	バンク２０ ==============================================
BANK20          GROUP   $20
;-------------<	ZPLSUB >-------------
		EXTERN	HakaCheck
;
;==============	バンク２１ ==============================================
BANK21          GROUP   $21
;-------------<	ZCOL >-------------
		EXTERN	Muki_inout,DARK,DARK_FRCNT,DARK_FRCNT_L8
		EXTERN	Dark_colset_sub,Message_bright
;
;========================================================================
;
;==============	バンク３６ ==============================================
BANK36		GROUP	$36
;-------------<	ZE9 >----------------------------------------------------
		EXTERN	OP_LD
	PUBALL
;
;
BANK14	GROUP	$14
;;BANK2	GROUP	2
;
	LIB	ZRAM
	LIB	ZBN
;
;;;;;;;;	EXTERN	OBJBG,SSUB,UNSTSB,EXIDSH,DATA_MOV,DJRMRD,NXGOTO2,MSGCH2
;;;;;;;;	EXTERN	PMOVE,DMPCH,MVCALC,GRBGCR,BBSDST,GKCHRV,NOSDST,MSGCH3
;;;;;;;;	EXTERN	POVER,NXGOTO,DUSHCL,DUSHCL2,NXOMSBL,NAZOCLR,ENIDSHL,NXGOTO3
;;;;;;;;	EXTERN	SCRMV1S,BGDTST,ENDTST,BGBKST,EXSET,BG1CHG,NXGOTO4,BGCRRD
;;;;;;;;	EXTERN	PSERCHL,RNDSUB,SOUNDCLR,SOUNDOUT,BGMON,DJITRV,PLTOOL,BGCACH
;;;;;;;;	EXTERN	DATA_MOV2,MSGCHK,WANWANCKL,KNBGCK,DSSDST,KTFLSTL,PLPTST
;;;;;;;;	EXTERN	ENEMYL2,PLWPCS2,LDTIM0,STATINC,ENSDCL,LDTIM1,LDTIM3,BGMSET
;;;;;;;;	EXTERN	TATEST2,DJTKCK
;;;;;;;;;------------------------------------------------------------
;;;;;;;;	EXTERN	PINDR1,PINDR2,PLSDCL,PTOBI,CARITMD,TLCRST,KURUD,FUCKS,PHANE
;;;;;;;;	EXTERN	PLPSRV,PKEN,POKAR,FUEC1,FUEC4,TSVE,PFOLE,PSWIM,POBOR,ENDG
;;;;;;;;	EXTERN	PLWPCS,KNCSET,PLZCLC,TLSDST,PLCSET,BLOCK,KEYSM,BSKEL,HIMITSU2
;;;;;;;;	EXTERN	GAKCH,HART1,RUPY1,KTOBJ,EMOVE,KAKIN,FUKURO,PLSHST,TAKAR,GMAP
;;;;;;;;	EXTERN	PWARP,MSK,MQE,KAKER,ONPU,COPYA,PBULE,NIWAX,YOSEI  ;,TOURCK
;;;;;;;;	EXTERN	EFAIL,ESHOT,YTUBO,NIWAT,MOAI,TAMA0,DAISU,OCHAN,BOMBR,PBOMB
;;;;;;;;	EXTERN	SKY,BKY
;
	PAGE
	isdmg
	KANJI
	LIST
;;	ORG	$4000
;========================================
;;BANK14	GROUP	$14
;(CGB)	ORG	$5000
;====================================
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%      地下洞窟迷路基本家屋建築      %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
DJRMSTS
	RST	0
	DW	DROM0ST
	DW	DROM1ST
	DW	DROM2ST
	DW	DROM3ST
	DW	DROM4ST
	DW	DROM5ST
	DW	DROM6ST
	DW	DROM7ST
	DW	DROM8ST
	DW	DROM9ST
	DW	DROMAST
	DW	DROMBST
	DW	DROMCST
	DW	DROMDST
	DW	DROMEST
	DW	DROMFST
;===========================================
DROM0ST
	PUSH    BC
;
;;	CALL	SSUB
	LD	HL,BGUNDT+$11
;
	LD	BC,DROM0AD
;
	LD	DE,DROM0NO
	JP	UNSTSB
;=============================
DROM1ST
	PUSH    BC
;
;;	CALL	SSUB
	LD	HL,BGUNDT+$11
;
	LD	BC,DROM1AD
;
	LD	DE,DROM1NO
	JP	UNSTSB
;=============================
DROM2ST
	PUSH    BC
;
;;	CALL	SSUB
	LD	HL,BGUNDT+$11
;
	LD	BC,DROM2AD
;
	LD	DE,DROM2NO
	JP	UNSTSB
;=============================
DROM3ST
	PUSH    BC
;
;;	CALL	SSUB
	LD	HL,BGUNDT+$11
;
	LD	BC,DROM3AD
;
	LD	DE,DROM3NO
	JP	UNSTSB
;=============================
DROM4ST
	PUSH    BC
;
;;	CALL	SSUB
	LD	HL,BGUNDT+$11
;
	LD	BC,DROM4AD
;
	LD	DE,DROM4NO
	JP	UNSTSB
;=============================
DROM5ST
	PUSH    BC
;
;;	CALL	SSUB
	LD	HL,BGUNDT+$11
;
	LD	BC,DROM5AD
;
	LD	DE,DROM5NO
	JP	UNSTSB
;=============================
DROM6ST
	PUSH    BC
;
;;	CALL	SSUB
	LD	HL,BGUNDT+$11
;
	LD	BC,DROM6AD
;
	LD	DE,DROM6NO
	JP	UNSTSB
;=============================
DROM7ST
	PUSH    BC
;
;;	CALL	SSUB
	LD	HL,BGUNDT+$11
;
	LD	BC,DROM7AD
;
	LD	DE,DROM7NO
	JP	UNSTSB
;=============================
DROM8ST
	PUSH    BC
;
;;	CALL	SSUB
	LD	HL,BGUNDT+$11
;
	LD	BC,DROM8AD
;
	LD	DE,DROM8NO
	JP	UNSTSB
;=============================
DROM9ST
DROMAST
DROMBST
DROMCST
DROMDST
DROMEST
DROMFST
;-------------------------------------
	RET
;--------------------------------------------------------------
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%      地下洞窟迷路基本家屋内装用建築資材     %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;---------------------------------------------------------------
DROM0AD
	DB      $00,$01,$02,$03,$04,$05,$06,$07,$08,$09
	DB      $10,$19
	DB      $20,$29
	DB      $30,$39
	DB      $40,$49
	DB      $50,$59
	DB      $60,$69
	DB      $70,$71,$72,$73,$74,$75,$76,$77,$78,$79
	DB	$0FF
DROM0NO
	DB	DNC04,DNC00,DNC00,DNC00,DNC00,DNC00,DNC00,DNC00,DNC00,DNC05
	DB	DNC02,DNC03
	DB	DNC02,DNC03
	DB	DNC02,DNC03
	DB	DNC02,DNC03
	DB	DNC02,DNC03
	DB	DNC02,DNC03
	DB	DNC06,DNC01,DNC01,DNC01,DNC01,DNC01,DNC01,DNC01,DNC01,DNC07
;
DROM1AD
	DB	$00,$09
	DB      $10,$19
	DB      $20,$29
	DB      $30,$39
	DB      $40,$49
	DB      $50,$59
	DB      $60,$69
	DB      $70,$71,$72,$73,$74,$75,$76,$77,$78,$79
	DB	$0FF
DROM1NO
	DB	DNC02,DNC03
	DB	DNC02,DNC03
	DB	DNC02,DNC03
	DB	DNC02,DNC03
	DB	DNC02,DNC03
	DB	DNC02,DNC03
	DB	DNC02,DNC03
	DB	DNC06,DNC01,DNC01,DNC01,DNC01,DNC01,DNC01,DNC01,DNC01,DNC07
;
DROM2AD
	DB      $00,$01,$02,$03,$04,$05,$06,$07,$08,$09
	DB      $10
	DB      $20
	DB      $30
	DB      $40
	DB      $50
	DB      $60
	DB      $70,$71,$72,$73,$74,$75,$76,$77,$78,$79
	DB	$0FF
DROM2NO
	DB	DNC04,DNC00,DNC00,DNC00,DNC00,DNC00,DNC00,DNC00,DNC00,DNC00
	DB	DNC02
	DB	DNC02
	DB	DNC02
	DB	DNC02
	DB	DNC02
	DB	DNC02
	DB	DNC06,DNC01,DNC01,DNC01,DNC01,DNC01,DNC01,DNC01,DNC01,DNC01
;
DROM3AD
	DB      $00,$01,$02,$03,$04,$05,$06,$07,$08,$09
	DB      $10,$19
	DB      $20,$29
	DB      $30,$39
	DB      $40,$49
	DB      $50,$59
	DB      $60,$69
	DB	$70,$79
	DB	$0FF
DROM3NO
	DB	DNC04,DNC00,DNC00,DNC00,DNC00,DNC00,DNC00,DNC00,DNC00,DNC05
	DB	DNC02,DNC03
	DB	DNC02,DNC03
	DB	DNC02,DNC03
	DB	DNC02,DNC03
	DB	DNC02,DNC03
	DB	DNC02,DNC03
	DB	DNC02,DNC03
;
DROM4AD
	DB      $00,$01,$02,$03,$04,$05,$06,$07,$08,$09
	DB      $19
	DB      $29
	DB      $39
	DB      $49
	DB      $59
	DB      $69
	DB      $70,$71,$72,$73,$74,$75,$76,$77,$78,$79
	DB	$0FF
DROM4NO
	DB	DNC00,DNC00,DNC00,DNC00,DNC00,DNC00,DNC00,DNC00,DNC00,DNC05
	DB	DNC03
	DB	DNC03
	DB	DNC03
	DB	DNC03
	DB	DNC03
	DB	DNC03
	DB	DNC01,DNC01,DNC01,DNC01,DNC01,DNC01,DNC01,DNC01,DNC01,DNC07
;
DROM5AD
	DB	$00
	DB      $10
	DB      $20
	DB      $30
	DB      $40
	DB      $50
	DB      $60
	DB      $70,$71,$72,$73,$74,$75,$76,$77,$78,$79
	DB	$0FF
DROM5NO
	DB	DNC02
	DB	DNC02
	DB	DNC02
	DB	DNC02
	DB	DNC02
	DB	DNC02
	DB	DNC02
	DB	DNC06,DNC01,DNC01,DNC01,DNC01,DNC01,DNC01,DNC01,DNC01,DNC01
;
DROM6AD
	DB	$09
	DB      $19
	DB      $29
	DB      $39
	DB      $49
	DB      $59
	DB      $69
	DB      $70,$71,$72,$73,$74,$75,$76,$77,$78,$79
	DB	$0FF
DROM6NO
	DB	DNC03
	DB	DNC03
	DB	DNC03
	DB	DNC03
	DB	DNC03
	DB	DNC03
	DB	DNC03
	DB	DNC01,DNC01,DNC01,DNC01,DNC01,DNC01,DNC01,DNC01,DNC01,DNC07
;
DROM7AD
	DB      $00,$01,$02,$03,$04,$05,$06,$07,$08,$09
	DB      $19
	DB      $29
	DB      $39
	DB      $49
	DB      $59
	DB      $69
	DB	$79
	DB	$0FF
DROM7NO
	DB	DNC00,DNC00,DNC00,DNC00,DNC00,DNC00,DNC00,DNC00,DNC00,DNC05
	DB	DNC03
	DB	DNC03
	DB	DNC03
	DB	DNC03
	DB	DNC03
	DB	DNC03
	DB	DNC03
;
DROM8AD
	DB      $00,$01,$02,$03,$04,$05,$06,$07,$08,$09
	DB      $10
	DB      $20
	DB      $30
	DB      $40
	DB      $50
	DB      $60
	DB	$70
	DB	$0FF
DROM8NO
	DB	DNC04,DNC00,DNC00,DNC00,DNC00,DNC00,DNC00,DNC00,DNC00,DNC00
	DB	DNC02
	DB	DNC02
	DB	DNC02
	DB	DNC02
	DB	DNC02
	DB	DNC02
	DB	DNC02
;==============================
IZHARTD
;                 3   4   5   6   7   8   9  10  11  12  13  14
	DB	$18,$20,$28,$30,$38,$40,$48,$50,$58,$60,$68,$70
;
EXSEST	;特殊 SE set
	LD	A,(KEYSDON)
	AND	A
	JR	Z,KYSS100	;鍵謎音！
;
	DEC	A
	LD	(KEYSDON),A
	JR	NZ,KYSS100
;
	LD	A,$1B
	LD	(SOUND2),A	;(S)
KYSS100
	LD	A,(OTOFLG)
	AND	A
	JR	Z,EN1000
	DEC	A
	LD	(OTOFLG),A
EN1000
	LD	A,(BGMSTM)
	AND	A
	JR	Z,EXSS100
;
	DEC	A
	LD	(BGMSTM),A
	JR	NZ,EXSS100
;
	LD	A,(TODYFG)
	LD	(SOUND4),A	;(S)
EXSS100
	LD	A,(DJFLAG)
	AND	A
	JR	NZ,EXS002
;;;	JR	Z,EXS010
;
	LD	A,(GRNDPT)
	LD	(GRNDPTW),A ;ダンジョン用地上マップ現在地
;
	LD	A,(GRNDPT)
	CP	$F0
	JR	C,EXS002
	CP	$F6
	JR	NC,EXS002 ;波際？
;				; YES !
	LD	A,(NAMIOTO)
	INC	A
	CP	$A0
	JR	NZ,NMEX10	; sound set !
;
	LD	A,$0F
	LD	(SOUND3),A	;(S)
;
	XOR	A
NMEX10
	LD	(NAMIOTO),A
EXS002
;	LD	A,(TAKISDF)
;	AND	A
;	JR	Z,EXSE090	;滝SE?
;;
;	LD	A,$1E
;	LD	(SOUND3),A	;(S)
EXSE090
	LD	A,(HARTMX)
	LD	E,A
	LD	D,B
	LD	HL,IZHARTD-3
	ADD	HL,DE
	LD	A,(HARTCT)
	CP	(HL)
	LD	A,$00
	JR	NZ,EXSE0A0
	INC	A
EXSE0A0
	LD	(HARTFUL),A	;まんたんフラグ！
;
	LD	A,(HABACNT)	;羽はばたき 音！
	INC	A
	CP	$1A
	JR	NZ,EXSE0B0
	XOR	A
EXSE0B0
	LD	(HABACNT),A
;
	LD	A,(FRCNT)
	AND	$3F
	JR	NZ,EXSE0MR
;
	LD	A,(MAWTIM2)
	CP	$FF
	JR	Z,EXSE0MR
	INC	A
	LD	(MAWTIM2),A
EXSE0MR
;	LD	A,(HIMITSU)
;	AND	A
;	RET	Z
;;
;	LD	A,(KEYA1)
;	CP	%11111001
;	JP	Z,GMRESET
;
	LD	A,(NYOTIM)
	AND	A
	RET	Z
;
		LD	A,(CGBFLG)
		AND	A
		JR	Z,EXSE0MR_100

		CALL	NYORO_COL_RESET	; カラーリセット
		JR	EXSE0MR_110
EXSE0MR_100
	LD	A,$E4  ;%00011011	; パレット データ セット
	LD	(BGPFG),A
	LD	(OBP1FG),A
	LD	A,$1C
	LD	(OBP0FG),A
EXSE0MR_110
;
	LD	HL,NYOTIM
	DEC	(HL)
	RET	Z
;
	LD	A,(HL)
	LD	HL,TILTXD
	LD	(HL),B
	CP	$20
	JR	C,NYO30
;
	RLA
	NOP
	NOP
	NOP
	AND	$04
	SUB	$02
	LD	(TILTXD),A
;
		LD	A,(CGBFLG)
		AND	A
		JR	Z,EXSE0MR_120

		CALL	NYORO_COL_SET	; カラーびりびり
		JR	EXSE0MR_130
EXSE0MR_120
	LD	A,%11001100  ;%11100100	; パレット データ セット
	LD	(BGPFG),A
	LD	(OBP1FG),A
	LD	A,%00001100	;00011100
	LD	(OBP0FG),A
EXSE0MR_130
;
	LD	A,$02
	LD	(PLSTOP),A
NYO30
	RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	(CGB)ニョロニョロ カラーびりびり			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
NYORO_COL_BG
		DW	$7fff,$1882,$3fff,$0000
NYORO_COL_OBJ
		DW	$7fe0,$0000,$3fff,$7fff	; ０～３
		DW	$7fe0,$7fff,$3fff,$0000	; ４～７
;----------------------------------------------------------------

NYORO_COL_SET
		LD	A,(NYOTIM)
		CP	$3e
		RET	C
		JR	Z,NYORO_CSET_100

		LD	DE,NYORO_COL_BG
		LD	HL,CGWORK
		LD	B,$40		; 個数
		CALL	NYORO_COL_STRAN

		LD	A,BGCOL_BITFG	; ＢＧ転送
		JR	NYORO_CSET_200
NYORO_CSET_100
		LD	DE,NYORO_COL_OBJ
		LD	HL,CGWORK+0040H
		LD	B,$20		; 個数
		CALL	NYORO_COL_STRAN

		LD	DE,NYORO_COL_OBJ+0008H
		LD	HL,CGWORK+0060H
		LD	B,$20		; 個数
		CALL	NYORO_COL_STRAN

		LD	A,OBJCOL_BITFG	; ＯＢＪ転送
NYORO_CSET_200
		LD	(CGDMAF),A
		RET

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	(CGB)ニョロニョロ カラーびりびり用転送			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
NYORO_COL_STRAN
		LD	A,(DE)
		LD	(HLI),A
		INC	DE
		DEC	B
		LD	A,B
		AND	A
		ret	Z
;;;;;;;;		JR	Z,NYORO_STRN_900

		AND	%00000111
		JR	NZ,NYORO_COL_STRAN

		LD	A,E		; データの最初に戻す！
		SUB	$08
		LD	E,A
		LD	A,D
		SBC	A,$0
		LD	D,A
		JR	NYORO_COL_STRAN
;;;;;;;;NYORO_STRN_900
;;;;;;;;		RET

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	(CGB)ニョロニョロ カラーリセット			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
NYORO_COL_RESET
		LD	A,(NYOTIM)
		CP	$20
		RET	NC
		CP	$1e
		RET	C
		JR	Z,NYORO_CRSET_100

		LD	HL,CGWORK
		CALL	NYORO_COL_RTRAN
		LD	A,BGCOL_BITFG	; ＢＧ転送
		JR	NYORO_CSET_200
NYORO_CRSET_100
		LD	HL,CGWORK+0040H
		CALL	NYORO_COL_RTRAN
		LD	A,OBJCOL_BITFG	; ＯＢＪ転送
NYORO_CRSET_200
		LD	(CGDMAF),A
		RET

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	(CGB)ニョロニョロ カラーリセット用転送			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
NYORO_COL_RTRAN
		LD	B,$40		; 個数
NYORO_RTRN_100
		LD	A,$002		; バンク２
		LD	(SVBK),A
		LD	C,(HL)
		XOR	A		; バンク０
		LD	(SVBK),A
		LD	(HL),C
		INC	HL
		DEC	B
		JR	NZ,NYORO_RTRN_100
		RET


;-------------------------------------------------------
FDCLDB
	DB	%11100100 ;0 0
	DB	%11100100 ;0
	DB	%11100100 ;0
	DB	%11100100 ;0
	DB	%11111001 ;1 4
	DB	%11111001 ;1
	DB	%11111001 ;1
	DB	%11111001 ;1
	DB	%11111110 ;2 8
	DB	%11111110 ;2
	DB	%11111110 ;2
	DB	%11111110 ;2 
	DB	%11111111 ;3 C
	DB	%11111111 ;3
	DB	%11111111 ;3
	DB	%11111111 ;3
;
	DB	%11100100 ;0 10
	DB	%11100100 ;0
	DB	%11100100 ;0
	DB	%11100100 ;0
	DB	%10010100 ;1 14
	DB	%10010100 ;1
	DB	%10010100 ;1
	DB	%10010100 ;1
	DB	%01000000 ;2 18
	DB	%01000000 ;2
	DB	%01000000 ;2
	DB	%01000000 ;2 
	DB	%00000000 ;2 1C
	DB	%00000000 ;2
	DB	%00000000 ;2
	DB	%00000000 ;2 
;-----------------------------------------
FDCKPM
	DB	$00 ;PMOVE	EQU	$0
	DB	$00 ;PSWIM	EQU	$1
	DB	$00 ;PTOBI	EQU	$2
	DB	$01 ;PINDR1	EQU	$3
	DB	$01 ;PINDR2	EQU	$4
	DB	$00 ;KURUD	EQU	5  ;$7
	DB	$00 ;PFOLE	EQU	6  ;$8
	DB	$00 ;POVER	EQU	7  ;$8
	DB	$00 ;POBOR	EQU	8
	DB	$00 ;PWARP	EQU	9
	DB	$00 ;PBOXER	EQU	$A
;- - - - - - - - - - - - - - - -
FADECK
	LD	A,(ITMODE)
	CP	$07
	RET	NZ
;
	LD	A,(SBHR)
	CP	$04
	RET	NZ
;
	LD	A,(FADEON)
	AND	A
	JR	Z,FDCK90
;
;	LD	A,%00000011
;	LD	(IE),A
;	LD	A,(WNDYPS)
;	LD	(LYC),A
;
	XOR	A
	LD	(WORK0),A
	LD	D,A
;
	LD	A,(PLMODE)
	LD	E,A
	LD	HL,FDCKPM
	ADD	HL,DE
	LD	A,(HL)
	AND	A
	JR	NZ,FDCK90
;
	LD	A,(WNDYPS)
	CP	$00
	JR	Z,FDCK20
;
	LD	HL,WAVFLG
	LD	A,(MSGEFG)
	OR	(HL)
;;	AND	A
	JR	NZ,FDCK20
;
;	LD	A,(FADEON)
;	AND	A
;	JR	Z,FDCK90
;
	LD	A,(FADECT2)
	LD	(WORK0),A
FDCK20
	LD	A,(FADECT)
	LD	E,A
	LD	A,(FRCNT)
	AND	$03
	ADD	A,E
	LD	E,A
	LD	HL,FDCLDB
	ADD	HL,DE
	LD	A,(HL)
	LD	(BGPFG),A
	LD	(FADEBP),A
;
		LD	A,(CGBFLG)
		AND	A
		JR	NZ,COLOR_FADE

	LD	A,(FRCNT)
	AND	$01
	JR	NZ,FDCK90
;
	LD	A,(WORK0)	;Max
	LD	HL,FADECT	;Now
	SUB	(HL)
	JR	Z,FDCK90
	AND	%10000000
	JR	NZ,FDCK80
;
	INC	(HL)
	INC	(HL)
FDCK80
	DEC	(HL)
FDCK90
	RET


;========================================================================
;	(CGB)カラーフェード
;========================================================================
COLOR_FADE
		LD	HL,WAVFLG
		LD	A,(MSGEFG)
		OR	(HL)
		RET	NZ		; メッセージ中は明るくしない！

		LD	A,(WORK0)	; Max FADECT2
		LD	HL,FADECT	; Min
		SUB	(HL)
		JR	NZ,CFADE_010

		LD	A,(DARKFLG)
		AND	A
		RET	Z
CFADE_010

;========================================================================
;	
;========================================================================
FDEBU_CHECK
		LD	A,(PLMODE)
		CP	PMOVE
		RET	NZ

		LD	A,(SCRLMK)
		CP	Muki_inout	; 画面イニシャル？
		JR	NZ,FDCK20_050	; ＮＯ

		LD	A,(FADECT2)	; フェードなし！
		LD	(FADECT),A	; FADECT 強制セット
		XOR	A
		LD	(SCRLMK),A	; 向きフラグクリア
		RET
;------------------------------------------------------------------------
FDCK20_050
		LD	A,(DARKFCT)
		DEC	A
		LD	(DARKFCT),A	; 下位２０Ｈチェンジ？
		JR	Z,FDCK20_051	; ＹＥＳ
		CP	$01		; 上位２０Ｈチェンジ？
		RET	NZ		; ＹＥＳ
FDCK20_051
		LD	A,(DARKFLG)
		AND	DARK		; 暗くなる？
		JR	NZ,FDCK20_200	; ＹＥＳ

;------------------------------------------------------------------------
;	明るくなる
;------------------------------------------------------------------------
		LD	A,(DARKFCT)
		AND	A		; フレームカウンタ０？
		JR	Z,FDCK20_300	; ＹＥＳ

		LD	A,(HL)		; (FADECT)
		AND	%00000110
		JR	Z,FDCK20_110

		DEC	(HL)		; －２
		DEC	(HL)
		JR	FDCK20_300
FDCK20_110
		LD	A,(FADECT)
		SUB	$04		; －４
		LD	(FADECT),A
		JR	FDCK20_300

;------------------------------------------------------------------------
;	暗くなる
;------------------------------------------------------------------------
FDCK20_200
		LD	A,(DARKFCT)
		AND	A		; フレームカウンタ０？
		JR	Z,FDCK20_300	; ＹＥＳ

		LD	A,(HL)		; (FADECT)
		AND	%00000100
		JR	NZ,FDCK20_210

		INC	(HL)		; ＋２
		INC	(HL)
		JR	FDCK20_300
FDCK20_210
		LD	A,(FADECT)
		ADD	A,$04		; ＋４
		LD	(FADECT),A

;------------------------------------------------------------------------
;
;------------------------------------------------------------------------
FDCK20_300
		LD	A,(FADECT2)
		CP	(HL)		; (FADECT)
		JR	NZ,FDCK20_310
		LD	A,(DARKFCT)
		AND	A
		JR	NZ,FDCK20_310

		XOR	A
		LD	(DARKFLG),A	; フラグクリア
FDCK20_310
		LD	A,(DARKFCT)
		AND	A		; 後半（２０Ｈから）転送？
		JR	Z,FDCK20_315	; ＹＥＳ

;;;;;;;		CALL	Dark_colset	; 暗い部屋 カラーセット

		LD	HL,CallBank
		LD	A,:Dark_colset_sub
		LD	(HLI),A
		LD	A,>Dark_colset_sub
		LD	(HLI),A
		LD	A,<Dark_colset_sub
		LD	(HLI),A
		LD	A,:FDEBU_CHECK
		LD	(HL),A
		CALL	JSL_CALL

FDCK20_315
		LD	A,(DARKFCT)
		XOR	%00000001
		SWAP	A		; 0 or 4*4
		LD	(COLOFS),A	; 転送オフセット
		LD	A,4*4
		LD	(COLLNG),A	; 転送長さ
		LD	A,BGCOL_BITFG|$80
		LD	(CGDMAF),A	; 転送フラグ（部分転送）

		LD	A,(DARKFCT)
		AND	A
		RET	NZ

		LD	A,(DNJNNO)
		CP	$07		; レベル８？
		JR	NZ,FDCK20_320	; ＮＯ

		LD	A,DARK_FRCNT_L8
		JR	FDCK20_330
FDCK20_320
		LD	A,DARK_FRCNT
FDCK20_330
		LD	(DARKFCT),A	; フレームカウンタリセット
		RET


;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%				   %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ENSUB0
	XOR	A
	LD	(ENBGRV),A	;BG チェック補正あり
	LD	(ENCHNO),A	;Chr bank revise
;
	LD	A,(GMMODE)
	CP	GMAP
	JR	Z,ES0090
;
		CP	ENDG
		JR	Z,ENSUB0_100	; エンディング？
;					; Ｎｏ
		cp	GPLAY
		jr	nz,ES0090	; ゲームモード　？
;					; Yes !!
		ld	a,(SBHR)
		cp	004
		jr	Z,ENSUB0_100	; フェード中　？
;					; Yes !!
		ld	hl,ENMYNO
		add	hl,bc
		ld	a,(hl)
		cp	BEDIN
		jr	nz,ES0090	; ベットイン　？
;					; Yes !!
ENSUB0_100
	LD	A,(SCRLFG)
	LD	HL,WNDFLG
	OR	(HL)
	LD	HL,MSGEFG
	OR	(HL)
	LD	HL,OKARFG
	OR	(HL)
;;	LD	HL,ENSTFG
;;	OR	(HL)
;;	LD	HL,ENSTTM
;;	OR	(HL)
	JR	NZ,ES0090
;- - - - Timer calc - - 
		ld	hl,ENTIM0
		add	hl,bc
		ld	a,(hl)
		and	a
		jr	z,ES0000
;
		dec	(hl)
;;;KK;;;;;	LD	HL,ENTIM0
;;;KK;;;;;	ADD	HL,BC
;;;KK;;;;;	LD	A,(HL)
;;;KK;;;	CALL	LDTIM0
;;;KK;;;;;	AND	A
;;;KK;;;	JR	Z,ES0000
;;;KK;;;	DEC	(HL)
ES0000
		ld	hl,ENTIM1
		add	hl,bc
		ld	a,(hl)
		and	a
		jr	z,ES0001
;
		dec	(hl)
;;;KK;;;;;	LD	HL,ENTIM1
;;;KK;;;;;	ADD	HL,BC
;;;KK;;;;;	LD	A,(HL)
;;;KK;;;;;	AND	A
;;;KK;;;	CALL	LDTIM1
;;;KK;;;	JR	Z,ES0001
;;;KK;;;	DEC	(HL)
ES0001
	LD	HL,ENTIM2
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,ES0002
	DEC	(HL)
ES0002
	LD	HL,ENTIM4
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,ES00022
	DEC	(HL)
ES00022
	LD	A,(FRCNT)
	AND	$3
	JR	NZ,ES0003
;
		ld	hl,ENTIM3
		add	hl,bc
		ld	a,(hl)
		and	a
		jr	z,ES0003
;
		dec	(hl)
;
;;;KK;;;;;	LD	HL,ENTIM3
;;;KK;;;;;	ADD	HL,BC
;;;KK;;;;;	LD	A,(HL)
;;;KK;;;;;	AND	A
;;;KK;;;	CALL	LDTIM3
;;;KK;;;	JR	Z,ES0003
;;;KK;;;	DEC	(HL)
ES0003
	LD	HL,ENFLSH
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,ES0010
;
	DEC	(HL)
ES0010
	SLA	A
	SLA	A
;;	SLA	A
	AND	%00010000
	LD	(ENFLCL),A
	RET
;----------------------------------
ES0090
	XOR	A
	LD	(ENFLCL),A
	RET
;-----------------------------
WPDJPT	;ダンジョン入り口データ！
	DB	$01,$00,$17,$50,$7C	; Lv.1
	DB	$01,$01,$36,$50,$7C	; Lv.2
	DB	$01,$02,$52,$50,$7C	; Lv.3
	DB	$01,$03,$7A,$50,$7C	; Lv.4
	DB	$01,$04,$A1,$50,$7C	; Lv.5
	DB	$01,$05,$D4,$50,$7C	; Lv.6
	DB	$01,$06,$0E,$50,$7C	; Lv.7
	DB	$01,$07,$5D,$50,$7C	; Lv.8
	DB	$01,$08,$70,$50,$7C	; Lv.9
	DB	$00,$00,$00,$00,$00
	DB	$00,$00,$00,$00,$00
	DB	$00,$00,$00,$00,$00
	DB	$00,$00,$00,$00,$00
	DB	$00,$00,$00,$00,$00
	DB	$00,$00,$00,$00,$00
WPDJPT2
	DB	$01,$FF,$12,$50,$5C	;服のダンジョン
;
WPDJPTN	;ダンジョン入り口 DNJNPT データ！
	DB	$3B	;1
	DB	$3A	;2
	DB	$39	;3
	DB	$3B	;4
	DB	$3F	;5
	DB	$3B	;6
	DB	$39	;7
	DB	$3B	;8
	DB	$3B	;9
	DB	$00
	DB	$00
	DB	$00
	DB	$00
	DB	$00
	DB	$00
	DB	$00
;
;- - - - - - - - - - - - - - - - - -
OKWARPST
	LD	A,$01
	LD	(OKWARPF),A
;
OKWARPST2
;;	CALL	NXGOTO4
	LD	A,PINDR1
	LD	(PLMODE),A
;
	LD	A,(DJFLAG)
	AND	A
	JR	Z,OKW008
;
		LD	A,(DNJNNO)
		CP	NEWDJ		;服のダンジョン？
		JR	NZ,OKW000_250	;	NO --> OKW000_250
		AND	$00F
		JR	OKW000_300
OKW000_250
		CP	DJMAX
		JR	NC,OKW008	;ダンジョン中は入り口へ！
;
OKW000_300
	LD	E,A
	SLA	A
	SLA	A
	ADD	A,E
	LD	E,A
	LD	D,$00
	LD	HL,WPDJPT
	ADD	HL,DE
;
	LD	E,$05
	LD	BC,NXRMMD
OKW002
	LD	A,(HLI)
	LD	(BC),A
	INC	BC
	DEC	E
	JR	NZ,OKW002
	RET
;
OKW008
	XOR	A		;薬屋の付近！
	LD	(NXRMMD),A
	LD	(NXDJNO),A
	LD	A,$45
	LD	(NXRMNO),A
	LD	A,$38
	LD	(NXRMPX),A
	LD	(PLXPSL),A
	LD	A,$60
	LD	(NXRMPY),A
	LD	(PLYPSL),A
;
	LD	A,$53
	LD	(DRPSBF),A
;
	RET	
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%				 %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;-----------------------------------
CLCHDB
	DB	%11100100 ;0
	DB	%11100100 ;0
	DB	%11100100 ;0
	DB	%11100100 ;0
	DB	%10010100 ;1
	DB	%10010100 ;1
	DB	%10010100 ;1
	DB	%10010100 ;1
	DB	%01000000 ;2
	DB	%01000000 ;2
	DB	%01000000 ;2
	DB	%01000000 ;2
	DB	%00000000 ;3
	DB	%00000000 ;3
	DB	%00000000 ;3
	DB	%00000000 ;3
CLCHDO
	DB	%00011100 ;0
	DB	%00011100 ;0
	DB	%00011100 ;0
	DB	%00011100 ;0
	DB	%00011000 ;1
	DB	%00011000 ;1
	DB	%00011000 ;1
	DB	%00011000 ;1
	DB	%00000100 ;2
	DB	%00000100 ;2
	DB	%00000100 ;2
	DB	%00000100 ;2
	DB	%00000000 ;3
	DB	%00000000 ;3
	DB	%00000000 ;3
	DB	%00000000 ;3
CLCHDB2
	DB	%00000000 ;0
	DB	%00000000 ;0
	DB	%00000000 ;0
	DB	%00000000 ;0
	DB	%01000000 ;1
	DB	%01000000 ;1
	DB	%01000000 ;1
	DB	%01000000 ;1
	DB	%10010100 ;2
	DB	%10010100 ;2
	DB	%10010100 ;2
	DB	%10010100 ;2
	DB	%11100100 ;3
	DB	%11100100 ;3
	DB	%11100100 ;3
	DB	%11100100 ;3
CLCHDO2
	DB	%00000000 ;3
	DB	%00000000 ;3
	DB	%00000000 ;3
	DB	%00000000 ;3
	DB	%00000100 ;2
	DB	%00000100 ;2
	DB	%00000100 ;2
	DB	%00000100 ;2
	DB	%00011000 ;1
	DB	%00011000 ;1
	DB	%00011000 ;1
	DB	%00011000 ;1
	DB	%00011100 ;0
	DB	%00011100 ;0
	DB	%00011100 ;0
	DB	%00011100 ;0
;------------------------------------
WAVDT
	DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
;
	DB	0,0,0,1,1,1,1,1,1,1,1,1,1,1,0,0
	DB	0,-0,-0,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-0,-0
;
	DB	0,0,0,0,1,1,2,2,2,2,2,1,1,0,0,0
	DB	0,-0,-0,-0,-1,-1,-2,-2,-2,-2,-2,-1,-1,-0,-0,-0
;
	DB	0,1,1,2,2,2,3,3,3,3,3,2,2,2,1,0
	DB	0,-1,-1,-2,-2,-2,-3,-3,-3,-3,-3,-2,-2,-2,-1,-0
;
	DB	0,2,2,3,3,3,4,4,4,4,4,3,3,3,2,2
	DB	0,-2,-2,-3,-3,-3,-4,-4,-4,-4,-4,-3,-3,-3,-2,-2
;
	DB	0,1,1,2,2,2,3,3,3,3,3,2,2,2,1,0
	DB	0,-1,-1,-2,-2,-2,-3,-3,-3,-3,-3,-2,-2,-2,-1,-0
;
	DB	0,0,0,0,1,1,2,2,2,2,2,1,1,0,0,0
	DB	0,-0,-0,-0,-1,-1,-2,-2,-2,-2,-2,-1,-1,-0,-0,-0
;
	DB	0,0,0,1,1,1,1,1,1,1,1,1,1,1,0,0
	DB	0,-0,-0,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-0,-0
;
;+------------------------------------------------------+
;|	オカリナワープ等のフェード			|
;+------------------------------------------------------+
OKARINA_FADE
		LD	A,(WAVTIM)
		PUSH	AF
		AND	$07
		JR	NZ,WAV0068
;
		LD	A,(WAVCNT4)
		CP	$0C
		JR	Z,WAV0080
		INC	A
		LD	(WAVCNT4),A
;
WAV0068
		LD	A,(WAVCNT4)
		LD	E,A
		LD	A,(FRCNT)
		AND	$03
		ADD	A,E
		LD	E,A
		LD	D,$0
;
		LD	A,(WAVFLG)
		CP	$03
		JR	Z,WAV0078
;
		LD	HL,CLCHDB
		ADD	HL,DE
		LD	A,(HL)
		LD	(BGPFG),A
		LD	(OBP1FG),A
		LD	HL,CLCHDO
		ADD	HL,DE
		LD	A,(HL)
		LD	(OBP0FG),A
		JR	WAV0080
WAV0078
		LD	HL,CLCHDB2
		ADD	HL,DE
		LD	A,(HL)
		LD	(BGPFG),A
		LD	(OBP1FG),A
		LD	HL,CLCHDO2
		ADD	HL,DE
		LD	A,(HL)
		LD	(OBP0FG),A
WAV0080
		POP	AF
		RET
;
;+------------------------------------------------------+
;|	オカリナワープのラスタースクロール		|
;+------------------------------------------------------+
WAV_SCRL
		SRL	A
		SRL	A
		LD	(WORK0),A
		LD	A,(WAVTIM)
		NOP
		AND	%11100000
		LD	E,A
		LD	A,(WAVFLG)
		CP	$03
		JR	NZ,WAV_SCRL_100
;
		LD	A,E
		XOR	%11100000
		LD	E,A
WAV_SCRL_100
		LD	A,E
		LD	(WORK1),A
;
		LD	HL,WAVCNT
		XOR	A
		LD	(HLI),A
		LD	(HLI),A
		LD	(HLI),A
;
		LD	A,$58
		LD	(WORK2),A
		LD	A,(CGBFLG)
		AND	A
		JR	Z,WAV_SCRL_200
		LD	A,$88
		LD	(WORK2),A
;
WAV_SCRL_200
		LD	A,(STAT)
		AND	%00000011
		JR	NZ,WAV_SCRL_200
;
		LD	D,$0
WAV_SCRL_220
		LD	A,(WAVCNT3)
		INC	A
		LD	(WAVCNT3),A
		AND	$01
		JR	NZ,WAV_SCRL_220		; Wait !
;
		LD	A,(WAVCNT)
		ADD	A,$1
		LD	(WAVCNT),A
		LD	A,(WAVCNT2)
		ADC	A,$0
		LD	(WAVCNT2),A
		LD	A,(WORK2)
		LD	HL,WAVCNT
		CP	(HL)
		ret	Z
;;;;;;;;		JP	Z,WAV_SCRL_900
;;;CGB;;;		LD	A,(WAVCNT)
;;;CGB;;;		CP	$58  ;68
;;;CGB;;;		JP	Z,WAV_SCRL_900
		LD	C,$0
;
		LD	A,(WAVFLG)
		CP	$01
		JR	Z,WAV_SCRL_300
;
		INC	C
WAV_SCRL_300
;;;CGB;;;		LD	HL,WAVCNT
		LD	A,(WORK0)
		ADD	A,(HL)
		AND	$1F
		LD	HL,WORK1
		OR	(HL)
		LD	E,A
		LD	HL,WAVDT
		ADD	HL,DE
		LD	A,(WAVTIM)
		AND	C ;%0
		LD	A,(HL)
		JR	Z,WAV_SCRL_350
		CPL	
		INC	A
WAV_SCRL_350
		PUSH	AF
		LD	HL,SCCH
		ADD	A,(HL)
		LD	(SCX),A
		POP	AF
		LD	HL,SCCV
		ADD	A,(HL)
		LD	(SCY),A
;
		JP	WAV_SCRL_200
;;;;;;;;WAV_SCRL_900
;;;;;;;;		RET
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	壷アイテム現われ！			 %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
TUBOITEM
	LD	E,ENNO-1
	LD	D,$00
TBOI010
	LD	HL,ENMODE
	ADD	HL,DE
	LD	A,(HL)
	CP	EMOVE
	JR	NZ,TBOI050
;
	LD	HL,ENMOD0
	ADD	HL,DE
	LD	A,(HL)
	AND	%00100000
	JR	Z,TBOI050	;Item ?
;				;yes !
	LD	HL,ENWRK2
	ADD	HL,DE
	LD	A,(HL)
	CP	$02
	JR	NZ,TBOI050	;In tubo ?
;
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	A,(OBJXP)
	ADD	A,$08
	SUB	(HL)
	ADD	A,$08
	CP	$10
	JR	NC,TBOI050
;
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	A,(OBJYP)
	ADD	A,$10
	SUB	(HL)
	ADD	A,$08
	CP	$10
	JR	NC,TBOI050
;
	LD	HL,ENTIM3
	ADD	HL,DE
	LD	(HL),$80
;
	LD	HL,ENWRK2
	ADD	HL,DE
	LD	(HL),D
;
	LD	HL,ENTIM1
	ADD	HL,DE
	LD	(HL),$18	;Hit protect !
TBOI050
	DEC	E
	LD	A,E
	CP	$FF
	JR	NZ,TBOI010
;
	RET
;=============================================
KNBNMSD	;看板メッセージ
;;    0   1   2   3   4   5   6   7   8   9   A   B   C   D   E   F
 DB $0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C ;0
;(CGB)  DB $0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C ;0
 DB $0C,$B6,$0C,$0C,$0C,$0C,$A3,$0C,$0C,$0C,$0C,$0C,$0C,$0C,$2d,$0C ;1
;							    ↑ ふくろう追加
 DB $10,$10,$10,$10,$10,$B5,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10 ;2
 DB $A5,$10,$A8,$10,$10,$B7,$B4,$10,$10,$10,$10,$10,$10,$10,$10,$A1 ;3
 DB $08,$08,$08,$08,$10,$B0,$10,$10,$10,$10,$10,$83,$04,$04,$04,$04 ;4
 DB $A6,$08,$08,$08,$10,$10,$10,$10,$10,$10,$10,$10,$04,$BC,$04,$04 ;5
 DB $08,$08,$A6,$08,$10,$B3,$10,$10,$10,$10,$10,$10,$04,$04,$04,$04 ;6
 DB $08,$08,$08,$08,$B8,$10,$10,$10,$10,$10,$10,$10,$04,$04,$04,$04 ;7
 DB $C4,$10,$0A,$0A,$10,$10,$10,$10,$10,$FC,$9D,$10,$10,$10,$10,$BD ;8
 DB $A0,$10,$0A,$0A,$A2,$10,$10,$10,$FB,$10,$10,$10,$10,$10,$10,$10 ;9
 DB $0A,$0A,$0A,$0A,$83,$10,$10,$10,$BA,$10,$B1,$10,$10,$10,$10,$10 ;A
 DB $0A,$0A,$0A,$83,$A9,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10 ;B
 DB $A4,$10,$10,$10,$AF,$AF,$B9,$10,$10,$10,$10,$B2,$0B,$0B,$10,$BE ;C
 DB $10,$10,$10,$10,$AF,$AF,$F9,$FA,$10,$10,$BB,$DB,$0B,$0B,$10,$10 ;D
 DB $10,$C3,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10 ;E
 DB $10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$10,$9E,$10,$10 ;F
;-----------------------------------------------------------------------
ENWAN 	;ワンワンにくわれるかどうか
	DB	$00 ;PYAAA
	DB	$00 ;TEST 
	DB	$00 ;BOMBR
	DB	$00 ;FUCKS
	DB	$00 ;PRTBM
;
	DB	$00 ;KTOBJ
	DB	$00 ;BLOCK
	DB	$00 ;TAKAR
	DB	$00 ;POWDR
;
	DB	$01 ;OCTA1
	DB	$00 ;OCTAM
	DB	$01 ;MORI1
	DB	$00 ;MORYA
	DB	$01 ;TEKTA
	DB	$01 ;RIVER
	DB	$01 ;KUZUH
	DB	$00 ;GHOST
	DB	$00 ;GHOSB
	DB	$00 ;GHOSS
	DB	$00 ;BOMBO
	DB	$01 ;HEIS0
	DB	$00 ;BABUL
	DB	$00 ;SPARK
	DB	$00 ;SPAR2
	DB	$00 ;PORUS
	DB	$01 ;BLBAT
	DB	$01 ;SKEL0
	DB	$01 ;SLIMB
	DB	$01 ;SLIMS
	DB	$01 ;BASSF
	DB	$01 ;SKEL1
	DB	$01 ;MUMMY
	DB	$01 ;MOTOS
	DB	$01 ;MAGE0
	DB	$00 ;SONIC
	DB	$01 ;LAIKU
	DB	$01 ;HIPLP
	DB	$01 ;BOSS1
	DB	$01 ;KWUSO
	DB	$01 ;TRAP0
	DB	$01 ;COPYA
	DB	$01 ;HAYAM
	DB	$00 ;RENO7
	DB	$00 ;R7BEM
	DB	$00 ;INOSI
;
	DB	$00 ;HART1
	DB	$00 ;RUPY1
	DB	$00 ;YOSEI
	DB	$00 ;KEYSM
	DB	$00 ;PLTAT
	DB	$00 ;HMASK
	DB	$00 ;POWER
	DB	$00 ;KINOM
	DB	$00 ;KAKER
	DB	$00 ;HARTB
	DB	$00 ;ALOW1 
	DB	$00 ;BOMB1 
	DB	$00 ;GAKKI 
	DB	$00 ;KINOK 
	DB	$00 ;MGPOW 
	DB	$00 ;KAKIN 
	DB	$01 ;KAIIN 
	DB	$00 ;GIRL0 
	DB	$00 ;PAPA0 
	DB	$00 ;BABA0 
	DB	$00 ;FUKURO
	DB	$00 ;HINTO 
	DB	$00 ;MSTES8
	DB	$00 ;MSTES9
	DB	$00 ;MSTESA
	DB	$00 ;MSTESB
	DB	$00 ;MSTESC
	DB	$00 ;MSTESD
	DB	$00 ;MSTESE
	DB	$00 ;;;STEST
	DB	$00 ;MSTESF
	DB	$00 ;FRBAR
	DB	$00 ;NYAMA
	DB	$00 ;CHUNLI
	DB	$00 ;UFOCH
	DB	$00 ;TERSA
	DB	$00 ;TEKYU
	DB	$00 ;BHOLE
	DB	$00 ;BHOL2
	DB	$00 ;FISHG
	DB	$00 ;SBOMB
	DB	$00 ;OBOMB
	DB	$00 ;NINJA
	DB	$00 ;NINTM
	DB	$00 ;HAYAB
	DB	$00 ;BGKAO
	DB	$00 ;BSLIM
	DB	$00 ;TBOSS
	DB	$00 ;BSNAK
	DB	$00 ;GORMA
	DB	$00 ;BSKEL
	DB	$00 ;DDNGO
	DB	$00 ;WARP 
	DB	$00 ;BFIRE
	DB	$00 ;BBIRD
	DB	$00 ;PSCRL
	DB	$00 ;BFISH
	DB	$00 ;ONOFS
	DB	$00 ;SWTRP
	DB	$00 ;MVHAS
	DB	$00 ;HIKUS
	DB	$00 ;IKADA
	DB	$00 ;TANABE
	DB	$00 ;NIWAT 
	DB	$00 ;WANWAN
	DB	$00 ;BTFLY 
	DB	$00 ;FOXDOG
	DB	$00 ;KODOMA
	DB	$00 ;KODOMB
	DB	$00 ;KODOMC
	DB	$00 ;KODOMD
	DB	$00 ;MAMA0 
	DB	$00 ;MAMA1 
	DB	$00 ;PAPA1 
	DB	$00 ;URURI 
	DB	$00 ;OZWAN 
	DB	$00 ;MSWAN 
	DB	$01 ;KARAS 
	DB	$00 ;TRYCY 
	DB	$01 ;BHANA 
	DB	$00 ;BHFIR 
	DB	$01 ;SHANA 
	DB	$00 ;KAMEI 
	DB	$00 ;DENWA 
	DB	$00 ;OBAQ  
	DB	$00 ;OBQBAR  
	DB	$00 ;BEDIN   
	DB	$00 ;IZUMI   
	DB	$00 ;HATO0   
	DB	$00 ;FLYIT   
	DB	$00 ;RANEM   
	DB	$00 ;NOMOS   
	DB	$00 ;HINO0   
	DB	$00 ;PANEL   
	DB	$00 ;PANEL2   
	DB	$00 ;SWBLK    
	DB	$00 ;SWBLK2   
	DB	$00 ;MIZUB    
	DB	$01 ;HEIHO    
	DB	$00 ;SLOT     
	DB	$01 ;KARBY    
	DB	$00 ;OCHAN   
	DB	$00 ;HEISM   
	DB	$00 ;HEISB   
	DB	$00 ;RICHD   
	DB	$00 ;KAERU   
	DB	$00 ;SWIMP   
	DB	$00 ;DAISU   
	DB	$01 ;AMENB   
	DB	$00 ;YUKAB   
	DB	$01 ;YSLIM   
	DB	$00 ;BALEE   
	DB	$00 ;MOAI    
	DB	$00 ;TBEAM   
	DB	$01 ;KURI0   
	DB	$00 ;PIHAT   
	DB	$00 ;LOPE    
	DB	$00 ;PACKN   
	DB	$00 ;LIFTX   
	DB	$00 ;LIFTY   
	DB	$00 ;LIFTD   
	DB	$00 ;LIFTT   
	DB	$00 ;HASIR   
	DB	$00 ;TAMA0   
	DB	$00 ;GESSO   
	DB	$00 ;PUKPK   
	DB	$00 ;PUKPV   
	DB	$00 ;PUKPJ   
	DB	$01 ;MONKY   
	DB	$01 ;OCTAJ   
	DB	$00 ;YOSSI
	DB	$01 ;AMUSI
	DB	$00 ;YUKAS
	DB	$00 ;AMUST
	DB	$00 ;HANNY 
	DB	$00 ;PAPA2
	DB	$00 ;KUMA0
	DB	$00 ;PAPAL
	DB	$00 ;MAMAD
	DB	$00 ;TURI 
	DB	$01 ;NYORO
	DB	$00 ;PKURI
	DB	$00 ;SHIGE
	DB	$00 ;TUKAI
	DB	$00 ;ARIMA
	DB	$00 ;BOXER
	DB	$00 ;ZONBI
	DB	$00 ;KHIMI
	DB	$00 ;GIRL1
	DB	$00 ;GIRL2
	DB	$00 ;MAMUU
	DB	$00 ;TODD 
	DB	$00 ;UNIUNI
	DB	$01 ;KANI  
	DB	$00 ;MANBO
	DB	$00 ;USAGI
	DB	$00 ;ONPU 
	DB	$00 ;AKUMA
	DB	$00 ;ZORA 
	DB	$01 ;BLANKA
	DB	$00 ;WANI  
	DB	$00 ;MAMAD2
	DB	$00 ;GAGE  
	DB	$00 ;USAG2
	DB	$00 ;KUMAS
	DB	$00 ;NTORI
	DB	$00 ;GMUSI
	DB	$00 ;OBAKE
	DB	$00 ;NIWAX
	DB	$00 ;YTUBO
	DB	$00 ;DOSNS
	DB	$00 ;DOSNB
	DB	$00 ;TAIAT
	DB	$00 ;FIREB
	DB	$00 ;BABUB
	DB	$00 ;KAZAM
	DB	$00 ;BOOK  
	DB	$00 ;SEIREN
	DB	$00 ;KENBM
	DB	%00000001 ;SARUK 
	DB	%00000000 ;MOUSE 
	DB	%00000000 ;HODAI 
	DB	$00 ;BOSS 
	DB	$00 ;EDAI
	DB	$00  
	DB	$00  
	DB	$00  
	DB	$00  
	DB	$00  
	DB	$00  
	DB	$00  
	DB	$00	;R_BLOCK	EF
	DB	$00	;G_BLOCK	F0
	DB	$00	;B_BLOCK	F1
	DB	$00	;FLYBND		F2
	DB	$00	;BNDMAN		F3
	DB	$00	;BLKHINO	F4
	DB	$00	;HINOIWA	F5
	DB	$00	;R_TUCHI	F6
	DB	$00	;L_TUCHI	F7
	DB	$00	;NYO_SLM	F8
	DB	$00	;FK_BOSS	F9
	DB	$00	;C_BOY		FA
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%				   %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
CAOFXS	; Cach shot speed data !
	DB	$30,$D0,0,0	; Normal !
	DB	$18,$E8,0,0	; Bomber !
	DB	$30,$D0,0,0	; Yoko gamen !
	DB	$18,$E8,0,0	; Yoko gamen Bomber!
CAOFYS
	DB	0,0,$D0,$30
	DB	0,0,$E8,$18
	DB	$F4,$F4,$D0,$00
	DB	$F8,$F8,$E8,$00
CAOFZS
	DB	4,4,4,4
	DB	$10,$10,$10,$10
	DB	$00,$00,$00,$00
	DB	$00,$00,$00,$00
DAMKDT
	DB	$02,$06,$00,$04
;======================================
CAOFCKS
	LD	A,(SCRLFG)
	AND	A
	JR	NZ,CAOF000
;
	LD	A,(PLMODE)
	CP	PFOLE
	JR	NZ,CFC001
;
CAOF000
	LD	A,(ENMYNO2)
	CP	TAMA0
	JR	Z,CFC001
;
	CALL	CACHOF
	JP  	ENSDCL
;	
CFC001
	LD	A,(CACHTM)
	AND	A
	JR	Z,CFC0012
;
	DEC	A
	LD	(CACHTM),A
	RET
;
CFC0012
	LD	A,(PLCAMD)
	CP	$1
	JP	NZ,CAOF90
;
	LD	D,PBULE
;
	LD	A,(ENMYNO2)
	CP	BOMBR
	JR	NZ,CFC002
;
	LD	D,PBOMB
CFC002
	LD	E,%00010000
	LD	A,(ITEMB)
	CP	D	;PBULE
	JR	NZ,CFC010
	SLA	E
	JR	CFC018
CFC010
	LD	A,(ITEMA)
	CP	D	;PBULE
	JR	Z,CFC018
;
	LD	E,%00110000
CFC018
	LD	A,(KEYA2)
	AND	E  ;%00010000
	JP	Z,CAOF90
;
	LD	A,(PLCMKI)
	LD	HL,ENSHMK
	ADD	HL,BC
	LD	(HL),A
;
	LD	HL,SOUND1
	LD	(HL),$08	;(S)
;
;;	LD	A,EMOVE
CACHOF
	LD	HL,ENMODE
	ADD	HL,BC
	LD	(HL),EMOVE ;A
;
	LD	A,(ENMYNO2)
	CP	BOMBR
	JR	NZ,CFC019
;
	CALL	LDTIM0
	LD	(HL),$A0
	JR	CFC01A
CFC019
	LD	HL,ENMODE
	ADD	HL,BC
;
	CP	YTUBO
	JR	Z,CFC01A1
	CP	NIWAX
	JR	Z,CFC01A1
	CP	NIWAT
	JR	Z,CFC01A1
;
	CP	MOAI
	JR	Z,CFC01A1
	CP	TAMA0
	JR	Z,CFC01A1
;
	CP	DAISU
	JR	NZ,CFC191
;
	PUSH	HL
;
	LD	A,(PLCMKI)
	LD	E,A
	LD	D,B
	LD	HL,DAMKDT
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	(HL),A
;
	CALL	LDTIM0
;
	CALL	RNDSUB
	AND	$1F
	ADD	A,$30
	LD	(HL),A
;
	POP	HL
CFC01A1
	LD	(HL),EMOVE ;A
;
	CALL	STATINC
	LD	(HL),$02
	JR	CFC01A
CFC191
	CP	OCHAN
	JR	NZ,CFC1912
	LD	(HL),EMOVE ;A
;
	CALL	STATINC
	LD	(HL),$03
	JR	CFC01A
CFC1912
	CP	KTOBJ
	JR	Z,CFC01A
;
;;	LD	HL,ENMODE
;;	ADD	HL,BC
	LD	(HL),ESHOT ;A
CFC01A
	LD	E,B
;
	LD	A,(YKFLAG)
	AND	A
	JR	Z,CFC01B
;
	LD	E,$08
CFC01B
	LD	A,(ENMYNO2)
	CP	BOMBR
	JR	NZ,CFC01C
;
;;	LD	E,$04
	LD	A,E
	ADD	A,$04
	LD	E,A
CFC01C
	LD	A,(PLCMKI)
	ADD	A,E
	LD	E,A
	LD	D,B ;$0
	LD	HL,CAOFXS
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
;
	LD	HL,CAOFYS
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),A
;
	LD	HL,CAOFZS
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENZSPD
	ADD	HL,BC
;;;	LD	A,$04
	LD	(HL),A  ;$04 ;A
;
	LD	A,$0C
	LD	(POWDRTM),A
CAOF90
	RET
;==================================================
;  メッセージセットok チェック			  =
;==================================================
MSCKOF
	XOR	A
	LD	(MSGEFG),A
	RET
MSOKCKL
	LD	A,(PIMODE)
	AND	A
	JR	NZ,MSCKOBL	;マリン一緒in?
;
	LD	A,(PLMODE)
	CP	PINDR1
	JR	Z,MSCKOF
	CP	PINDR2
	JR	Z,MSCKOF
;
MSCKOBL
	LD	A,(GMMODE)
	CP	ENDG
	JR	Z,MSO100
;
;;	LD	HL,PLSTOP
	LD	A,(FADEON)
;;	OR	(HL)
	AND	A
	JR	NZ,MSO100
;
	LD	A,(PLCHPT)
	CP	$6C
	JR	Z,MSO100	;持ち上げデモ？
;
	LD	A,$04
	LD	(SBHR),A
;
	LD	A,$E4
	LD	(BGPFG),A
	LD	(OBP1FG),A
	LD	A,$1C
	LD	(OBP0FG),A
MSO100
	LD	A,(VRAMD+1)
	AND	A
	RET	NZ
;--------------------------------------------------
	LD	HL,MSGEFG
	INC	(HL)
;(CGB)	RET

;--------------------------------------------------
;	メッセージ開始時、部屋を明るくする
;--------------------------------------------------
		LD	A,(CGBFLG)
		AND	A
		RET	Z

		LD	A,(GMMODE)
		CP	GPLAY
		RET	NZ

		LD	A,(FADECT)
		CP	8		; 明るい ｏｒ 暗１？
		RET	C		; ＹＥＳ

		LD	HL,CallBank
		LD	A,:Message_bright
		LD	(HLI),A
		LD	A,>Message_bright
		LD	(HLI),A
		LD	A,<Message_bright
		LD	(HLI),A
		LD	A,:MSOKCKL
		LD	(ReturnBank),A
		JP	JSL_CALL

;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;% 無理やり部屋に連れ込む！		%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
SHRVSES
	LD	HL,BGCKOF
;
	LD	A,(SCRLFG)
	OR	(HL)
	JR	NZ,SHR090
;
	LD	A,(PLXPSL)
	SUB	$11
	CP	$8F-$11
	JR	C,SHR010	
;
	LD	A,(PLXPSL)
	CP	$50
	JR	NC,SHR008
;
	LD	A,(PLXPSL)
	INC	A
	LD	(PLXPSL),A
	JR	SHR020	
;
SHR008
	LD	A,(PLXPSL)
	DEC	A
	LD	(PLXPSL),A
;
	JR	SHR020
;
SHR010
	LD	A,(PLYPSL)
	SUB	$16
	CP	$74-$16
	JR	C,SHR090	; Player in room ?
;				; yes !
	LD	A,(PLYPSL)
	DEC	A
	LD	(PLYPSL),A
SHR020
	LD	A,$01
	LD	(PLSTOP),A
;
	LD	A,$02
	LD	(ENSTTM),A
SHR090
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	Tilt  				     %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
TILXDT
	DB	$00,$02,$00,$FE
	DB	0,0,0,0
TILYDT
	DB	0,0,0,0
	DB	$00,$02,$00,$FE
;- - - - - - - - - - - - - -
TILTCK
	LD	A,(TLCRTM)
	AND	A
	JR	Z,TLC001
	DEC	A
	LD	(TLCRTM),A
TLC001
	LD	A,(TILTCT)
	AND	A
	JR	Z,TLC090
;
	DEC	A
	LD	(TILTCT),A
;
	AND	$03
	LD	HL,TILTMK
	ADD	A,(HL)
	LD	E,A
	LD	D,$0
;
	LD	HL,TILXDT
	ADD	HL,DE
	LD	A,(HL)
	LD	(TILTXD),A
;
	LD	HL,TILYDT
	ADD	HL,DE
	LD	A,(HL)
	LD	(TILTYD),A
TLC090
	RET
;==============================================
;=					      =
;==============================================
BG1CHGSB
	LD	HL,BGUNDT+$11
	ADD	HL,DE
;
;;	LD	A,(WORK0) ;UNITNO)
	LD	A,(UNITNO)
	CP	STUBO
	JR	NZ,BG1C00
;
	LD	(HL),DSWCH ;A
;
	CALL	OBJBG
;
		LD	A,(CGBFLG)
		AND	A
		JR	Z,BG1CHGSB_PASS
		PUSH	BC
		LD	C,DSWCH
		LD	B,$000
		SLA	C
		RL	B
		SLA	C
		RL	B
		LD	A,$14
		CALL	BG1UNIT_ATR
		POP	BC
BG1CHGSB_PASS
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
	LD	A,$14
	LD	(HLI),A
	LD	A,$16
	LD	(HLI),A
;
	LD	A,(VRAMH)
	LD	(HLI),A
	LD	A,(VRAML)
	INC	A
	LD	(HLI),A
	LD	A,$81
	LD	(HLI),A
	LD	A,$15
	LD	(HLI),A
	LD	A,$17
	JP	BG1C20
;
;-------------------------------------
BG1C00
	CP	ANFLW
	JR	NZ,BG1C08	; 穴草
	JP	KSANAST
;
BG1C08
	LD	A,(DJFLAG)
	AND	A
	JP	Z,BG1C10
;
	LD	A,(YKFLAG)
	AND	A
	JR	Z,BGHM10
;
	LD	A,(UNITNO)
	CP	DHIMI
	JR	NZ,BGHM10
;
	LD	(HL),DBET4 ;A
;
	CALL	OBJBG
;
		LD	A,(CGBFLG)
		AND	A
		JR	Z,BG1C08_PASS
		PUSH	BC
		LD	C,DBET4
		LD	B,$000
		SLA	C
		RL	B
		SLA	C
		RL	B
		LD	A,$14
		CALL	BG1UNIT_ATR
		POP	BC
BG1C08_PASS
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
	LD	A,$7E
	LD	(HLI),A
	LD	A,$7E
	LD	(HLI),A
;
	LD	A,(VRAMH)
	LD	(HLI),A
	LD	A,(VRAML)
	INC	A
	LD	(HLI),A
	LD	A,$81
	LD	(HLI),A
	LD	A,$7E
	LD	(HLI),A
	LD	A,$7E
	JP	BG1C20
;
;--------------------------------------
BGHM10
	LD	(HL),DTU08 ;A
;
	CALL	OBJBG
;
		LD	A,(CGBFLG)
		AND	A
		JR	Z,BGHM10_PASS
		PUSH	BC
		LD	C,DTU08
		LD	B,$000
		SLA	C
		RL	B
		SLA	C
		RL	B
		LD	A,$14
		CALL	BG1UNIT_ATR
		POP	BC
BGHM10_PASS
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
	LD	A,$10
	LD	(HLI),A
	LD	A,$12
	LD	(HLI),A
;
	LD	A,(VRAMH)
	LD	(HLI),A
	LD	A,(VRAML)
	INC	A
	LD	(HLI),A
	LD	A,$81
	LD	(HLI),A
	LD	A,$11
	LD	(HLI),A
	LD	A,$13
;(CGB)	JR	BG1C20
	JP	BG1C20
;
;- - - - - - - - - - - - - - - - -
BG1C10
	LD	A,(UNITNO)
	CP	IWA00
	JR	NZ,B1CG10	
;
	LD	A,(GRNDPT)
	CP	$52
	JR	Z,B1CG08
	CP	$04
;(CBB)	JR	NZ,B1CG10
		JR	NZ,BG1C10_100
B1CG08
	JP	SINDOST2	;石下階段！
;	
; (CGB) ７５エリアチェック
BG1C10_100
		CP	$75
		JR	NZ,B1CG10

		LD	A,(CGBFLG)
		AND	A
		JR	Z,B1CG10_100
		JR	B1CG10_050

;------- 草地セット ------------------------------
B1CG10
		LD	A,(CGBFLG)
		AND	A
		JR	Z,B1CG10_100

		LD	A,(GRNDPT)
		CP	$20		; エリア０～１Ｆ？
		JR	C,B1CG10_050	; ＹＥＳ
		CP	$E0		; エリアＥ０？
		JR	Z,B1CG10_050	; ＹＥＳ
		CP	$E1		; エリアＥ１？
		JR	Z,B1CG10_050	; ＹＥＳ
		CP	$E3		; エリアＥ３？
		JR	Z,B1CG10_050	; ＹＥＳ
		CP	$E4		; エリアＥ４？
		JR	Z,B1CG10_050	; ＹＥＳ

		CP	$FF		; エリアＦＦ？
		JR	NZ,B1CG10_100	; ＮＯ
		LD	A,(UNITNO)
		CP	IWA00		; 岩持ち上げ？
		JR	Z,B1CG10_100	; ＹＥＳ
B1CG10_050
		LD	(HL),NUKI0	; 砂地をセット
		JR	B1CG10_200	; 砂地をセットする
B1CG10_100
	LD	(HL),KUSA0 ;A
B1CG10_200
;
;--------------------------------------------
;	草切り、草持ち上げ、岩持ち上げ
;--------------------------------------------
		LD	A,$14|UNIT_TRAN_BIT
		CALL	Unit_change	; バンク２ユニット書き換え
;--------------------------------------------

	CALL	OBJBG
;
		LD	A,(CGBFLG)
		AND	A
		JR	Z,B1CG10_PASS
		PUSH	BC

		LD	A,(GRNDPT)
		CP	$20		; エリア０～１Ｆ？
		JR	C,B1CG10_250	; ＹＥＳ

		CP	$E0		; エリアＥ０？
		JR	Z,B1CG10_250	; ＹＥＳ
		CP	$E1		; エリアＥ１？
		JR	Z,B1CG10_250	; ＹＥＳ
		CP	$E3		; エリアＥ３？
		JR	Z,B1CG10_250	; ＹＥＳ
		CP	$E4		; エリアＥ４？
		JR	Z,B1CG10_250	; ＹＥＳ

		CP	$FF		; エリアＦＦ？
		JR	NZ,B1CG10_210	; ＹＥＳ
		LD	A,(UNITNO)
		CP	IWA00		; 岩持ち上げ？
		JR	NZ,B1CG10_250	; ＮＯ
		JR	B1CG10_300	; ＹＥＳ
B1CG10_210
		CP	$75		; エリア７５？
		JR	NZ,B1CG10_300	; ＹＥＳ
		LD	A,(UNITNO)
		CP	IWA00		; 岩持ち上げ？
		JR	NZ,B1CG10_300	; ＮＯ
B1CG10_250
		LD	C,NUKI0		; 砂地
		JR	B1CG10_400
B1CG10_300
		LD	C,KUSA0		; 草
B1CG10_400
		LD	B,$000
		SLA	C
		RL	B
		SLA	C
		RL	B
		LD	A,$14
		CALL	BG1UNIT_ATR
		POP	BC
B1CG10_PASS
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

		LD	A,(CGBFLG)
		AND	A
		JR	Z,B1CG10_500

		LD	A,(GRNDPT)
		CP	$20		; エリア０～１Ｆ？
		JR	C,B1CG10_600	; ＹＥＳ

		CP	$E0		; エリアＥ０？
		JR	Z,B1CG10_600	; ＹＥＳ
		CP	$E1		; エリアＥ１？
		JR	Z,B1CG10_600	; ＹＥＳ
		CP	$E3		; エリアＥ３？
		JR	Z,B1CG10_600	; ＹＥＳ
		CP	$E4		; エリアＥ４？
		JR	Z,B1CG10_600	; ＹＥＳ

		CP	$FF		; エリアＦＦ？
		JR	NZ,B1CG10_410	; ＮＯ
		LD	A,(UNITNO)
		CP	IWA00		; 岩持ち上げ？
		JR	NZ,B1CG10_600	; ＮＯ
		JR	B1CG10_500	; ＹＥＳ
B1CG10_410
		CP	$75		; エリア７５？
		JR	NZ,B1CG10_500	; ＮＯ
		LD	A,(UNITNO)
		CP	IWA00		; 岩持ち上げ？
		JR	Z,B1CG10_600	; ＹＥＳ
B1CG10_500
; 草セット
	LD	A,$5A
	LD	(HLI),A
	LD	A,$7F
	LD	(HLI),A
;
	LD	A,(VRAMH)
	LD	(HLI),A
	LD	A,(VRAML)
	INC	A
	LD	(HLI),A
	LD	A,$81
	LD	(HLI),A
	LD	A,$7F
	LD	(HLI),A
	LD	A,$5A
		JR	BG1C20
B1CG10_600
; 砂地セット
		LD	A,$76
		LD	(HLI),A
		LD	A,$76
		LD	(HLI),A
;
		LD	A,(VRAMH)
		LD	(HLI),A
		LD	A,(VRAML)
		INC	A
		LD	(HLI),A
		LD	A,$81
		LD	(HLI),A
		LD	A,$76
		LD	(HLI),A
		LD	A,$76
BG1C20
	LD	(HLI),A
	LD	A,$0
	LD	(HLI),A
;
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	草 ー＞ 穴  			     %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
KSANAST
	LD	A,(GRNDPT)
	CP	$75
	JR	Z,KSA0F1	;卵やま周り？
	CP	$07
	JR	Z,KSA0F1	;卵やま周り？
	CP	$AA
	JR	Z,KSA0F1	;城周り？
	CP	$4A
	JP	NZ,KSA001	;城周り？
;				; yes !
KSA0F1
	LD	HL,BGUNDT+$11
	ADD	HL,DE
;5/11 ;;;;;
	PUSH	HL
	LD	A,(GRNDPT)
	LD	E,A
	LD	D,$00
	LD	HL,GRRMSV
	ADD	HL,DE
	SET	4,(HL)
	POP	HL
;5/11 ;;;;;
SINDOST2
	LD	(HL),SINDO ;A	;地下入り口セット
;
;--------------------------------------------
;	草切り、岩持ち上げ＆階段出現
;--------------------------------------------
		LD	A,$14|UNIT_TRAN_BIT
		CALL	Unit_change	; バンク２ユニット書き換え
;--------------------------------------------

	CALL	OBJBG
;
		LD	A,(CGBFLG)
		AND	A
		JR	Z,SINDOST2_PASS
		PUSH	BC
		LD	C,SINDO		;地下入り口セット
		LD	B,$000
		SLA	C
		RL	B
		SLA	C
		RL	B
		LD	A,$14
		CALL	BG1UNIT_ATR
		POP	BC
SINDOST2_PASS
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
	LD	A,(OBJXP)
	SWAP	A
	AND	$0F
	LD	E,A
	LD	A,(OBJYP)
	AND	$F0
	OR	E
	LD	(DRPSBF),A
;
	LD	A,$02
	LD	(SOUND1),A	;(S)
	RET
KSA001
	LD	HL,BGUNDT+$11
	ADD	HL,DE
;
	LD	(HL),ANA03 ;A
;
;--------------------------------------------
;	草切り＆落とし穴
;--------------------------------------------
		LD	A,$14|UNIT_TRAN_BIT
		CALL	Unit_change	; バンク２ユニット書き換え
;--------------------------------------------

	CALL	OBJBG
;
		LD	A,(CGBFLG)
		AND	A
		JR	Z,KSA001_PASS
		PUSH	BC
		LD	C,ANA03		;地下入り口セット
		LD	B,$000
		SLA	C
		RL	B
		SLA	C
		RL	B
		LD	A,$14
		CALL	BG1UNIT_ATR
		POP	BC
KSA001_PASS
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
	LD	A,$78
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
	LD	A,$79
	LD	(HLI),A
	LD	(HL),$0
;
	RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ZBS.SからDJRMRDを移動してきた					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
DJRMRD_SUB
		LD	HL,NEWDJDAT
		LD	A,(DNJNNO)
		CP	NEWDJ		;新ダンジョンナンバー？
		JR	Z,D7CK10	;	YES --> D7CK10
		CP	DJMAX+1
		JR	NC,DRR0F0
		LD	HL,DJRMDT
		SWAP	A
		LD	C,A
		LD	B,$00
		SLA	C
		RL	B
		SLA	C
		RL	B
		ADD	HL,BC
;
		LD	A,(DNJNNO)
		CP	$06
		JR	NZ,D7CK10	;レベル７？
;					;YES!
		LD	A,(WARPSV+$06)
		AND	%00000100
		JR	Z,D7CK10	;はしら落ちた？
;
		LD	HL,D7DAT2	;YES !
D7CK10
		ADD	HL,DE
		LD	A,(HL)
		LD	E,A
		LD	D,$00
;
		LD	HL,DJRMSV
		LD	A,(DNJNNO)
		CP	NEWDJ		;新ダンジョン？
		JR	NZ,DRR010_PASS	;	NO --> DRR010_PASS
		LD	HL,NEWDJRM	;新ダンジョンのセーブＲＡＭ
		JR	DRR010
DRR010_PASS
;
		CP	DJROOM2 ;$20
		JR	NC,DRR010
		CP	DJROOM ;$20
		JR	C,DRR010
		INC	D
DRR010
		ADD	HL,DE
DRR0F0
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ZBS.SからDJTKCKの中を移動してきた				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
DJTKCK_SUB
		LD	A,(DNJNNO)
		CP	NEWDJ		;新ダンジョンナンバー？
		JR	NZ,DJTKCK_PASS	;	NO --> DJTKCK_PASS
		LD	D,$000
		LD	HL,NEWDJTK
		JR	DJTKCK_SET
DJTKCK_PASS
;
		LD	HL,DJTKDT
DJTKCK_SET
		ADD	HL,DE
		LD	A,(HL)
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ZBS.SからBGDTSTの中を移動してきた				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
BGDTST_SUB
		LD	A,(DNJNNO)
		CP	NEWDJ		;新ダンジョンナンバー？
		JR	NZ,BD7000_PASS	;	NO --> BD7000_PASS
		LD	HL,NEWDJDAT
		JR	BD7010
BD7000_PASS
;
;;;KK;;;	LD	A,(DNJNNO)
		CP	DJMAX+1		 ;$20
		JR	NC,BDS00D
;
		LD	HL,DJRMDT
;
		SWAP	A
		LD	E,A
		LD	D,$00
		SLA	E
		RL	D	
		SLA	E
		RL	D	
		ADD	HL,DE
;
		LD	A,(DNJNNO)
		CP	$06
		JR	NZ,BD7010	;レベル７？
;
		LD	A,(WARPSV+$06)
		AND	%00000100
		JR	Z,BD7010	;柱壊した？
;					;YES !
		LD	HL,D7DAT2
BD7010
		LD	A,(DNJNPT)
		LD	E,A
		LD	D,$0
;
		ADD	HL,DE
		LD	A,(HL)
		LD	(GRNDPT),A
BDS00D
		LD	A,(GRNDPT)
		LD	C,A
		LD	B,$00
;
		LD	A,(DNJNNO)
		CP	NEWDJ		;新ダンジョンナンバー？
		JR	NZ,BDS0D3_PASS	;	NO --> BDS0D3_PASS
		LD	HL,NEWDJNZ
		JR	BDS0D3_SET
BDS0D3_PASS
;
;;;KK;;;	LD	A,(DNJNNO)
		CP	DJROOM2 ;$20
		JR	NC,BDS0D3
		CP	DJROOM ;$20
		JR	C,BDS0D3
;
		INC	B
BDS0D3
		LD	HL,DJNZDT
BDS0D3_SET
		ADD	HL,BC
		LD	A,(HL)
		LD	(NAZOFG),A
;
		XOR	A
		LD	(SHSTCT),A	; Shatter set flag (for open)!
		LD	(SHSTCT2),A	; Shatter set flag (for shut)!
		LD	(SHUTFG),A	; Shatter shuted flag reset !
		LD	(NAZOCL),A	; Nazo clear flag reset !
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ZPL.SからBGCACHの中を移動してきた				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
TRC_SUB
	LD	A,(GRNDPT)
	LD	E,A
;
	LD	A,(DJFLAG)
	LD	D,A
;
	LD	A,(DNJNNO)
;
		CP	NEWDJ		;新ダンジョン？
		JR	NZ,TRC010_PASS	;	NO --> TRC010_PASS
		LD	D,$000
		LD	HL,NEWDJTK
		JR	TRC010_SET
TRC010_PASS
;
	CP	DJROOM2 ;$20
	JR	NC,TRC010
	CP	DJROOM ;$20
	JR	C,TRC010
	INC	D
TRC010
	LD	HL,DJTKDT
TRC010_SET
	ADD	HL,DE
	LD	A,(HL)
	CP	KAI
	JR	NZ,TRC011
;
	LD	A,(KENLEV)
	CP	$02
	LD	A,KAI
	JR	C,TRC011	;剣２取ったら貝殻はいらん！
;
	LD	A,C02
TRC011
	LD	(WORK8),A	; Takara No. !
;
	RET
;
;---------------------------------
;---------------------------------
;---------------------------------
;---------------------------------
;---------------------------------
;---------------------------------
;---------------------------------
;---------------------------------
;=================================================
BANK2	GROUP	2
	ORG	$4000
;-------------------------------------------------------
GRBGMDT	; Ground BGM data !
;;    0   1   2   3   4   5   6   7   8   9   A   B   C   D   E   F
 DB $06,$06,$06,$06,$06,$06,$06,$06,$06,$06,$06,$06,$06,$06,$06,$06 ;0
 DB $06,$06,$06,$06,$06,$06,$06,$06,$06,$06,$06,$06,$06,$06,$06,$06 ;1
 DB $05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05 ;2
 DB $05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05 ;3
 DB $09,$09,$09,$09,$05,$05,$05,$05,$05,$05,$05,$05,$08,$08,$08,$08 ;4
 DB $09,$09,$09,$09,$05,$05,$05,$05,$05,$05,$05,$05,$08,$08,$08,$08 ;5
 DB $09,$09,$09,$09,$05,$05,$05,$05,$05,$05,$05,$05,$08,$08,$08,$08 ;6
 DB $09,$09,$09,$09,$05,$05,$05,$05,$05,$05,$05,$05,$08,$08,$08,$08 ;7
 DB $09,$04,$04,$04,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05 ;8
 DB $04,$04,$04,$04,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05 ;9
 DB $04,$04,$04,$04,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05 ;A
 DB $04,$04,$04,$04,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05 ;B
 DB $05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$0B,$0B,$05,$05 ;C
 DB $05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$0B,$0B,$05,$05 ;D
 DB $05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05 ;E
 DB $05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05,$05 ;F
;----------------------------------------------
DJBGMDT	; Dundeon BGM data !
	DB	$14	;0 Level 1
	DB	$15	;1 Level 2
	DB	$16	;2 Level 3
	DB	$17	;3 Level 4
	DB	$4B	;4 Level 5
	DB	$58	;5 Level 6
	DB	$5B	;6 Level 7
	DB	$5A	;7 Level 8
	DB	$12	;8 Level 9
	DB	$61	;9 新ダンジョン
	DB	$26	;A 
	DB	$26	;B 
	DB	$26	;C 
	DB	$26	;D 
	DB	$07	;E ;買い物部屋 
	DB	$02	;F ;サブゲーム
	DB	$0A	;10 ;民家 
	DB	$26	;11 ;洞窟
	DB	$0A	;12 ;ワンワンの小屋
	DB	$53	;13 ;ベッドルーム
	DB	$13	;14 ;カナレットの城
	DB	$3E	;15 ;モリブリン洞窟！
	DB	$1F	;16 ;神殿南
	DB	$00	;17
	DB	$00	;18
	DB	$00	;19
	DB	$00	;1A
	DB	$00	;1B
	DB	$00	;1C
	DB	$0A	;1D
	DB	$48	;1E ;おばけの家！
	DB	$26	;1F
;==========================================
PWBGMD
	DB	$00	;00
	DB	$00	;01
	DB	$01	;02
	DB	$00	;03
	DB	$01	;04
	DB	$00	;05
	DB	$00	;06
	DB	$01	;07
	DB	$00	;08
	DB	$00	;09 新ダンジョン
	DB	$01	;0A
	DB	$01	;0B
	DB	$01	;0C
	DB	$00	;0D
	DB	$01	;0E
	DB	$00	;0F
	DB	$00	;10
	DB	$00	;11
	DB	$00	;12
	DB	$00	;13
	DB	$00	;14
	DB	$00	;15
	DB	$00	;16
	DB	$00	;17
	DB	$00	;18
	DB	$00	;19
	DB	$00	;1A
	DB	$00	;1B
	DB	$00	;1C
	DB	$00	;1D
	DB	$00	;1E
	DB	$00	;1F
	DB	$00	;20
	DB	$00	;21
	DB	$01	;22
	DB	$00	;23
	DB	$01	;24
	DB	$00	;25
;==========================================
BGMSETS
	LD	A,(BGMNOT)
	AND	A
	JR	Z,BGMS10
;
	XOR	A
	LD	(BGMNOT),A
BGMSTS10
	RET
;--------------------------
;GRBGM
;	DB	$01,$04,$08,$0A
;DJBGM
;	DB	$12,$13,$14,$12
;
BGMS10
	LD	D,$1D
	LD	A,(KENLEV)
	AND	A
	JP	Z,PI4500
;
	LD	A,(GRNDPT)
	LD	E,A
	LD	D,$00
	LD	HL,GRBGMDT
	ADD	HL,DE
	LD	D,(HL)
	LD	A,D
;;	LD	(BGMNO),A
	XOR	A
	LD	(BGMSTF),A
;
	LD	A,(DJFLAG)
	AND	A
	JR	Z,PI4500
;
	LD	D,$18
	LD	A,(BSFLFG2)	;ボス倒した後？
	AND	A
	JR	NZ,PI4501
;
	LD	A,(DNJNNO)
;
		CP	NEWDJ		;新ダンジョン？
		JR	NZ,BGMS_PASS	;	NO --> BGMS_PASS
		LD	A,$009
		JR	BGMS_PASS2
BGMS_PASS
		CP	$10
		JR	NZ,BGMS_PASS2
		LD	D,A		; PUSH A
		LD	A,(GRNDPT)
		CP	$B5
		LD	A,D		; POP A
					; カメラ屋？
		JR	NZ,BGMS_PASS2	; ＮＯ
;
		LD	A,$F		; サブゲームとおなじ（２）
BGMS_PASS2
;
	LD	E,A
	LD	D,$00
	LD	HL,DJBGMDT
	ADD	HL,DE
	LD	D,(HL)
;
	LD	A,(YKFLAG)
	AND	A
	JR	Z,PI4501
;
	LD	A,E
	CP	DJMAX
	JR	NC,PI4501 ;ダンジョン内横画面？
;			 ; YES !
	LD	A,$21
	JR	PI4700
;;	JP	BGMON	;(S)
PI4480
;	XOR	A
;	LD	(ONOFFG),A
;	LD	(ONOFTM),A	; On off block time reset !
PI4500
	XOR	A
	LD	(BSFLFG2),A
;
PI4501
	LD	A,D
PI4700
BGMSETSB
	LD	E,A
	LD	D,$00
	LD	(BGMNO),A
	CALL	BGMON	;(S)
;
	LD	A,E
	CP	$25
	JR	NC,BGSSP10
;
	LD	HL,PWBGMD
	ADD	HL,DE
	LD	A,(HL)
	AND	A
	JR	NZ,PI4810	;剣パワーアップのときの専用BGMをセット
;				;していいか？
BGSSP10
;;	LD	A,(YKFLAG)
;;	AND	A
;;	JR	NZ,PI4810
;
	LD	A,(POWRFG)	; yes !
	AND	A
	JR	Z,PI4810
;
	LD	A,$49
	LD	(SOUND4),A	;(S)
	LD	(BGMNO2),A
	LD	(TODYFG),A	;(S)
;
	XOR	A
	LD	(DJSDON),A
PI4810
PI4811
	RET
;
;========================================================
;=	リンクが宝箱を開けた！さて、なにが入ってる	=
;========================================================
TAKARST
	PUSH	BC
;
	LD	A,TAKAR
	CALL	ENIDSHL
	JR	C,TRS090
;
	LD	HL,ENMODE
	ADD	HL,DE
	DEC	(HL)	; EINIT
;
	LD	A,(OBJXP)
	AND	$F0
	ADD	A,$08
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	A,(OBJYP)
	AND	$F0
	ADD	A,$10
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,ENCHPT
	ADD	HL,DE
	LD	A,(WORK8)	; Takara no !
	LD	(HL),A
;
TRS090
	POP	BC
	RET
;
;=========================================
;
OKARST
	LD	HL,PLJPFG
;
	LD	A,(OKARFG)
	OR	(HL)
;
		LD	HL,PFUCKFG	;フックショット
		OR	(HL)		;	出してる？
		RET	NZ
;;;KK;;;
;;;KK;;;	JR	NZ,OKRS80
;
	LD	(OKACNT),A
	LD	(OKACNT2),A
;
	CALL	PLPSRV
;
	LD	A,(ONPUFG)
	AND	$07
	JR	Z,OKRS10
;
FFS100
	LD	A,(FUESLPT)
	CP	$01
	JR	Z,OKS0090
	CP	$02
	JR	Z,FUE3ST
;
;==================================
FUE1ST
	LD	A,$DC
	LD	(OKARFG),A
;
	LD	A,$09
	LD	(SOUND2),A	;(S)
	RET
;=======オカリナワープ！=======
FUE2ST
OKS0090
	LD	A,$D0
	LD	(OKARFG),A
;
	LD	A,$0B
	LD	(SOUND2),A	;(S)
	RET
;==================================
FUE3ST
	LD	A,$BB
	LD	(OKARFG),A
;
	LD	A,$0A
	LD	(SOUND2),A	;(S)
	RET
;---------------------------------
OKRS10
	LD	A,$D0
	LD	(OKARFG),A
;
	LD	A,$15
	LD	(SOUND2),A	;(S)
;
OKRS80
	RET
;---------------------------------
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%					%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;
;===================================
FUKSXS
	DB	$30,$D0,$00,$00
FUKSYS
	DB	$00,$00,$D0,$30
;
FUCKSST
		LD	A,(PLOSHI)	;ヨーロッパ版で追加
		AND	A		;押しポーズ中？
		RET	NZ		;	YES --> return
;
	LD	A,(PLJPFG)
	AND	A
		RET	NZ
;;11/19;;	JR	NZ,FKS090
;
	LD	A,FUCKS
	CALL	PLSHST
		RET	C
;;11/19;;	JR	C,FKS090
;
	LD	HL,ENTIM0
	ADD	HL,DE
	LD	(HL),$2A ;A
;
	LD	HL,ENCHPT
	ADD	HL,DE
	XOR	A
	LD	(HL),A
;
	LD	A,(PLCMKI)
	LD	C,A
	LD	B,$0
	LD	HL,FUKSXS
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,DE
	LD	(HL),A
	LD	HL,FUKSYS
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENYSPD
	ADD	HL,DE
	LD	(HL),A
;
		LD	A,(PLMODE)
		LD	(WPLMODE),A
;
;;11/19;;FKS090
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	歩く				     %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
PLMOVES
	LD	A,(PYAATM)
	AND	A
	JR	Z,PL090
	DEC	A
	LD	(PYAATM),A
PL090
	LD	A,(KNBGTM)
	AND	A
	JR	Z,PL082
	DEC	A
	LD	(KNBGTM),A
PL082
	LD	A,(BMYATM)
	AND	A
	JR	Z,PL0915
	DEC	A
	LD	(BMYATM),A
PL0915
;;;	CALL	DUSHST	; Dush check !
	CALL	PLKYMV	; Ken in move !
;
	LD	A,(KENON)
	AND	A
	JR	Z,PL091
;
	DEC	A
	LD	(KENON),A	; Ken butoon on flag !
PL091
	LD	A,(PLSTOP)
	CP	$02
;;	JR	Z,PL092
	JR	NZ,PL0911
;
	XOR	A
	LD	(PLSTOP),A
	LD	(PLXSPD),A
	LD	(PLYSPD),A
	LD	(PLZSPD),A
;
	CALL	OKARINA	;笛吹き！
	JP	PLCTBC
;;	JP	PL0AA
;
PL0911
	CALL	PLPTST
PL092
	XOR	A
	LD	(PLSTOP),A	; Player move stop flag 
;
	CALL	BGCACH	; BG cach check 
;
	CALL	PLTOOL	; Shot wepon
;
	CALL	PLJUMP	; Jumping
;
	CALL	PLPOWDR	; Magic powder pause set !
	CALL	PLCUT	; Ken cutting
;
	CALL	ANAHORIS	; Ana hori !!
	CALL	PLWPCS		; Wepon & Sadow character set
;
	CALL	PLCACH	; Caching
	CALL	OKARINA	;笛吹き！
;;	CALL	BGCACH	; BG cach check 
;
;;PL099
	LD	A,(SCRLFG)
	AND	A
	JR	NZ,PL0AA
;
	LD	A,(PCUTFG)
	LD	(WCUTFG),A	; For enemy check !!
	CP	$4+1
	JR	NZ,PL0A0	; Ken kamae ?
;				; yes !
	LD	A,(DUSHFG)
	AND	A
	JR	NZ,PL0BB	; In dushing ?
;				; no
PL09A
	XOR	A
	LD	(PCUTFG),A	; clear !
;
	LD	A,(SPCTWT)
	CP	$28
	JR	Z,PL0AA
;
	INC	A
	LD	(SPCTWT),A
	CP	$28
	JR	NZ,PL0AA
;
	LD	A,$04
	LD	(SOUND1),A	;(S)
PL0AA
	RET
;----------------------------------------
PL0A0
	LD	A,(MSCRFG)
	CP	$01
	JR	Z,PL0BB
;
	LD	A,(SPCTWT)
	CP	$28
	JR	NZ,PL0BB
;
	LD	A,(KENON)
	AND	A
	JR	NZ,PL0C0	; Ken butoon on ?
;				; no !
	LD	A,$20
	LD	(SPCTTM),A	; Spin cut start !
;
	LD	A,$03
	LD	(SOUND3),A	;(S)
PL0BB
	XOR	A
	LD	(SPCTWT),A	; spin cut wait timer clear !
PL0C0
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	Cach paturn set 			 %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
PLCACH
	LD	A,(PLCAMD)
	CP	$2
	JR	C,PCA060
;
	LD	(PLCHPT),A
	LD	A,$01
	LD	(PLSTOP),A
PCA060
	RET
;=====================================================
; 　　魔法の粉のパターンだけセット ロットも	     =
;=====================================================
POWDRPT
	DB	$11,$10,$0F,$0E
PLPOWDR
	LD	A,(POWDRTM)
	AND	$7F
	JR	Z,POWD010
;
	LD	A,(POWDRTM)
	DEC	A
	LD	(POWDRTM),A
;
	AND	$7F
	LD	A,(PLCMKI)
	LD	E,A
	LD	D,$0
	LD	HL,POWDRPT
	ADD	HL,DE
	LD	A,(HL)
	LD	(PLCHPT),A
	RET
POWD010
	XOR	A
	LD	(POWDRTM),A
	RET
;;===================================
;PLTOBI
;;;	LD	A,$02
;;;	LD	($2100),A
;	CALL	PLTOBIS
;	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	Ken in move			    %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;PMVXD	; Walk speed
;; Normal
;	DB	$00,$10,$F0,$00,$00,$0C,$F4,$00
;	DB	$00,$0C,$F4,0,0,0,0,0
;; Power on
;	DB	$00,$14,$EC,$00,$00,$0F,$F1,$00
;	DB	$00,$0F,$F1,0,0,0,0,0
;;- - - - - - - - - - - - - - - - - - - - -
;PMVYD	
;	DB	$00,$00,$00,$00,$F0,$F4,$F4,$00
;	DB	$10,$0C,$0C,0,0,0,0,0
;;
;	DB	$00,$00,$00,$00,$EC,$F1,$F1,$00
;	DB	$14,$0F,$0F,0,0,0,0,0
;;
;PLCMDT	
;;		 0  1  2  3  4  5  6  7  8  9  A 
;	DB	$F,$0,$1,$F,$2,$F,$F,$F,$3,$F,$F
;-----------------------------------------------
PLKYMV
;;	LD	A,$2
;;	CALL	PBSET
;
	LD	A,(YKFLAG)
	AND	A
	JR	Z,PKM0D0
;
	LD	A,(BGCKOF)
	AND	A
	JR	NZ,PKM0D0
;
		jp	PLYKMV
;;;KK;;;	CALL	PLYKMV
;;;KK;;;	RET
;
;+----------------------------------------------+
;|	普通の移動ルーチン			|
;+----------------------------------------------+
NOMAL_MOVE
	LD	A,(KEYA1)
	AND	%00001111
	OR	E
	LD	E,A
;
	LD	HL,PMVXD
	ADD	HL,DE
	LD	A,(HL)
	LD	(PLXSPD),A
;
	LD	HL,PMVYD
	ADD	HL,DE
	LD	A,(HL)
	LD	(PLYSPD),A
	RET
;
;+----------------------------------------------+
;|	服のダンジョンでの移動ルーチン		|
;+----------------------------------------------+
NEWDJ_MOVE
		LD	A,(KEYA1)
		AND	%00001111
		OR	E
		LD	E,A
;
		LD	HL,PMVXD
		ADD	HL,DE
		LD	A,(HL)
		LD	HL,(PLXSPD)
		SUB	(HL)
		JR	Z,NEWDJ_MV_200
		INC	(HL)
		BIT	7,A
		JR	Z,NEWDJ_MV_200
		DEC	(HL)
		DEC	(HL)
;
NEWDJ_MV_200
		LD	HL,PMVYD
		ADD	HL,DE
		LD	A,(HL)
		LD	HL,(PLYSPD)
		SUB	(HL)
		JR	Z,NEWDJ_MV_400
		INC	(HL)
		BIT	7,A
		JR	Z,NEWDJ_MV_400
		DEC	(HL)
		DEC	(HL)
;
NEWDJ_MV_400
		RET
;
;=======================================
PKM0D0
	LD	A,(DNJNPT)
	LD	(WDNJNPT),A	;マップ表示用
;
	CALL	DAMECK	; Damege hanekairi check 
;
	LD	A,(PLZPSL)
	AND	A
	JR	NZ,PKM000
;
	LD	A,(PLSTOP)
	AND	A
	JP	NZ,PKM06A
;
PKM000
	LD	A,(DUSHFG)
	AND	A
	JR	Z,PKM010
;
	LD	A,(KEYA2)
	AND	%00001111
	JR	Z,DSKC10
;
	LD	E,A
	LD	D,$00
	LD	HL,PLCMDT
	ADD	HL,DE
	LD	A,(PLCMKI)
	CP	(HL)
	JR	NZ,PKM002
DSKC10
	LD	A,(PLWKCT)
	ADD	A,$2
	LD	(PLWKCT),A	; Move count clear !
;
	CALL	DSSDST
;;;KK;;;	JR	PKM050
	JP	PKM050
PKM002
	LD	(DUSHMK),A
;
	LD	A,(DUSHTM)
	ADD	A,$0C  ;10
	LD	(DUSHTM),A
;
	CALL	DUSHCL
PKM010
	LD	A,(PLJPFG)
	AND	A
	JR	NZ,PKM050
;
	LD	E,$00
	LD	D,$00
;
	LD	A,(POWRFG)
	CP	$01
	JR	NZ,PKM011
;
	LD	E,$10
PKM011
		LD	A,(BGCKOF)
		AND	A
;;;KK;;;		JR	NZ,PKM011_PASS
		JR	PKM011_PASS
		LD	A,(DNJNNO)
		CP	NEWDJ		;新ダンジョン？
		JR	NZ,PKM011_PASS	;	NO --> PKM011_PASS
		CALL	NEWDJ_MOVE
		JR	PKM012_PASS
PKM011_PASS
		CALL	NOMAL_MOVE
PKM012_PASS
;
	LD	A,(BGCKOF)
	AND	A
	JR	Z,PKM012
;
	LD	HL,PLXSPD
	SLA	(HL)
	LD	HL,PLYSPD
	SLA	(HL)
PKM012
	LD	A,E
	AND	%00001111
	LD	E,A
	JR	Z,PLM900
;- - Character muki set ---
	LD	HL,PLWKCT
	INC	(HL)
;
	LD	HL,PLCMDT
	ADD	HL,DE
	LD	A,(HL)
	CP	$0F
	JR	Z,PLM980
;
	LD	E,A
	LD	A,(KENON)
	AND	A
	LD	A,E
	JR	NZ,PLM880
;
	LD	(PLCMKI),A
PLM880
	JR	PLM980
;-----------------------------
PLM900
	LD	A,(DUSHCT)
	AND	A
	JR	NZ,PKM050
;
	LD	A,$08-1
	LD	(PLWKCT),A	; Not key move count clear !
PLM980
PKM050
	LD	E,$03
;
	LD	A,(SLIMFG)
	AND	A
	JR	NZ,PKM069
;
	LD	E,$01
;
	LD	A,(PLCAMD)
	AND	A
	JR	Z,PKMNWX
;
	LD	A,(PLCANO)
	CP	NIWAX
	JR	NZ,PKMNWX
;
	LD	A,(PLJPFG)
	AND	A
	JR	NZ,PKM069	;ニワトリカツギ！
;
PKMNWX
	LD	A,(IKADAON)
	AND	A
	JR	NZ,PKM069
;
	LD	HL,HASGFG
	LD	A,(HL)
	AND	A
	JR	Z,PKM068
;
	CP	$07
	JR	NZ,PKM056
;
	LD	A,(BGCKOF)
	AND	A
	JR	NZ,PKM068
;
	LD	E,$01
	LD	A,(FLDWTM)
	CP	$18
	JR	C,PKM069
;
	LD	E,$07
PKM069
	LD	A,(FRCNT)
	AND	E   ;$03
	JR	NZ,PKM06A
	JR	PKM068
PKM056
	LD	A,(FRCNT)
	AND	(HL)
		ret	Z
;;;KK;;;	JR	Z,PKM090
PKM068
;====================================
PLMVBC
	LD	A,(WNDFLG)
	AND	A
	RET	NZ
;
	CALL	MVCALC
PKM06A
	LD	A,(HASGFG)
	LD	(WHASGFG),A
	XOR	A
	LD	(HASGFG),A
;;	LD	A,$02
;;	CALL	PBSET
		jp	PLBGCK
;;;KK;;;	CALL	PLBGCK
;;;KK;;;PKM090
;;;KK;;;	RET
;==================================================
;=						  =
;==================================================
DAMECK
	LD	A,(HANEFG)
	AND	A
		ret	Z
;;;;;;;;	JR	Z,DMCK10
;
	DEC	A
	LD	(HANEFG),A
;
	CALL	MVCALC
;;	LD	A,$02
;;	CALL	PBSET
	CALL	PLBGCK
;
	LD	A,(PLCBFG)
	AND	A
	JR	Z,DMCK08
;
	AND	$03
	JR	Z,DMCK02
;
	XOR	A
	LD	(PLYSPD),A
	JR	DMCK08
DMCK02
	XOR	A
	LD	(PLXSPD),A
;	LD	A,(PLCBFG)
;	AND	A
;	JR	Z,DMCK08
;;
;	XOR	A
;	LD	(HANEFG),A
DMCK08
	POP	AF
		jp	PLWPCS
;;;KK;;;	CALL	PLWPCS
;;;KK;;;DMCK10
;;;KK;;;	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	Jumping sub 				 %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;PLJPCD
;	DB	$0B,$07,$05,$01
;PLJPC2
;	DB	$0D,$09,$05,$03
;
PLYKYS
	DB	$00,$F0,$10
;PLYKYS2
;	DB	$00,$EC,$14
PLYKYA	;ジャンプ加速！
	DB	$00,$FF,$01
;- - - - - - - - - - - - - - -
PLJUMP
	LD	A,(PLJPFG)
	AND	A
	JP	Z,PLJPA0
;
	LD	A,(YKFLAG)
	AND	A
	JP	NZ,PLJPA0
;
PLJPMV
	CALL	PLZCLC
;
	LD	A,(PLZSPD)
	SUB	$2
	LD	(PLZSPD),A
;
	LD	A,$FF
	LD	(PLWKCT),A
;
	LD	A,(BEDOFF)
;;	AND	A
	LD	HL,DUSHFG
	OR	(HL)
	JR	NZ,PGM087	;始まりのベッドオフ？
;
	LD	A,(WARPFG2)
	AND	A
	JR	NZ,PGM066
;
	LD	A,(MSCRFG)
	CP	$80
	JR	NZ,PGM067	;いかだ ON?
;				;YES !
PGM066
	CALL	PLSDCL		;ジャンプ移動無し！
	JR	PGM087
;
PGM067
	LD	A,(KEYA1)
	AND	$03
	JR	Z,PGM077
	LD	E,A
	LD	D,$00
	LD	HL,PLYKXS
	ADD	HL,DE
	LD	A,(PLXSPD)
	SUB	(HL)
	JR	Z,PGM077	
;
	LD	E,$01
	BIT	7,A
	JR	NZ,PGM076
	LD	E,$FF
PGM076
;;	LD	HL,PLYKXA
;;	ADD	HL,DE
;;	ADD	A,(HL)
	LD	A,(PLXSPD)
	ADD	A,E
	LD	(PLXSPD),A
PGM077
	LD	A,(KEYA1)
	RRA
	RRA
	AND	$03
	JR	Z,PGM087
	LD	E,A
	LD	D,$00
	LD	HL,PLYKYS
	ADD	HL,DE
	LD	A,(PLYSPD)
	SUB	(HL)
	JR	Z,PGM087	
;
	LD	E,$01
	BIT	7,A
	JR	NZ,PGM078
	LD	E,$FF
PGM078
	LD	A,(PLYSPD)
	ADD	A,E
	LD	(PLYSPD),A
;	LD	HL,PLYKYA
;	ADD	HL,DE
;	ADD	A,(HL)
;	LD	(PLYSPD),A
PGM087
;
;
;
;
;
;
;
;
;
;
;	LD	HL,PLJPCD
;	LD	A,(TATLEV)
;	AND	A
;	JR	Z,PLJP98
;;
;	LD	HL,PLJPC2
;PLJP98
;	LD	A,(PLCMKI)
;	LD	E,A
;	LD	D,$0
;	ADD	HL,DE
;	LD	A,(HL)
;	LD	(PLCHPT),A
;
	LD	A,(PLZPSL)
	AND	A
	JR	Z,PLJP99
	AND	$80
	JR	Z,PLJPA0
;
PLJP99
	CALL	DUSHCL2
;;	XOR	A
;;	LD	(WARPFG2),A
	LD	(PLZPSL),A
	LD	(PLZSDR),A
	LD	(PLZSPD),A
	LD	(PLJPFG),A
	LD	(PLJCPT),A
	LD	(PLJCCT),A
	LD	(BEDOFF),A ; Start demo bed off BG check not flag !
;;;;;;;;;;;;;;	LD	(HANEFG),A
;
	LD	A,(PLYPSL)
	CP	$88
	JR	NC,PLJPA0
;
	CALL	PLCTBC2
;
	LD	A,(FTUNNO)
	CP	IDO00
	JR	Z,PLJPA0	;穴落ちは音しない！
;
	LD	A,(FTBGNO)
	CP	$05
	JR	Z,PLJPA8
	CP	$07
	JR	Z,PLJPA0
	CP	$0B
	JR	Z,PLJPA0
	CP	$50 
	JR	Z,PLJPA0
	CP	$51
	JR	Z,PLJPA0
;
	LD	A,$07		;着地音！
	LD	(SOUND3),A	;(S)
PLJPA0
	RET
PLJPA8
	LD	A,(PLYPSL)
	LD	(WORK1),A
	LD	A,(PLXPSL)
	LD	(WORK0),A
;
	LD	A,$0E
	LD	(SOUND1),A	;(S)
;
	LD	A,WTUP2
		jp	EXIDSH
;;;KK;;;	CALL	EXIDSH
;;;KK;;;	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	Cutting sub 				 %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
PCTCX1 	; Hit check data add1
	DB	0,0,$08,$06,0,$06
	DB	0,0,$08,$0A,0,$0A
	DB	0,0,$08,$10,0,$10
	DB	0,0,$08,$08,0,$08
PCTCX2	; Hit check data add2
	DB	0,0,$05,$0A,0,$0A
	DB	0,0,$05,$0A,0,$0A
	DB	0,0,$05,$08,0,$08
	DB	0,0,$05,$08,0,$08
PCTCY1
	DB	0,0,$08,$08,0,$08
	DB	0,0,$08,$08,0,$08
	DB	0,0,$08,$08,0,$08
	DB	0,0,$08,$08,0,$08
PCTCY2
	DB	0,0,$05,$08,0,$08
	DB	0,0,$05,$08,0,$08
	DB	0,0,$05,$08,0,$08
	DB	0,0,$05,$08,0,$08
PLCTPT	; Ken paturn
	DB	0,$06,$07,$00,$01,$00
	DB	0,$06,$05,$04,$03,$04
	DB	0,$00,$07,$06,$05,$06
	DB	0,$04,$03,$02,$01,$02
PLCTP2	; Player paturn
	DB	0,$18,$19,$11,$11,$FF
	DB	0,$16,$17,$10,$10,$FF
	DB	0,$14,$15,$0F,$0F,$FF
	DB	0,$12,$13,$0E,$0E,$FF
PLCTXD	; Ken set pos x
	DB	0,$00,$0D,$13,$10,$0B
	DB	0,$F8,$F3,$ED,$F0,$F5
	DB	0,$10,$0D,$F8,$F5,$F8
	DB	0,$F0,$F3,$00,$0C,$00
PLCTYD	;      "      y
	DB	0,$F0,$F3,$00,$0C,$00
	DB	0,$F0,$F3,$00,$0C,$00
	DB	0,$F8,$F3,$ED-$FD,$F0-$FD,$F5
	DB	0,$00,$0D,$13-$03,$10-$03,$0D
PLCTDX	; Player pos revise x
	DB	0,$00,$00,$03,$03,$00
	DB	0,$00,$00,$FD,$FD,$00
	DB	0,$00,$00,$00,$00,$00
	DB	0,$00,$00,$00,$00,$00
PLCTDY	;		    y
	DB	0,$00,$00,$00,$00,$00
	DB	0,$00,$00,$00,$00,$00
	DB	0,$00,$00,$FD,$FD,$00
	DB	0,$00,$00,$03,$03,$00
PCTTMD
;;	DB	$03,$03,$05,$03
	DB	$03,$03,$08
	DB	$01,$01,$01,$01
;=====================================================
PLJCCD
	DB	$61,$62,$63,0
	DB	$5E,$5F,$60,0
	DB	$67,$68,$69,0
	DB	$64,$65,$66,0
PLWPMK2
	DB	0,3,1,2
;=====================================================
SPCTMD
	DB	3,2,3,2,3,2,3,4
;
	DB	3,4,3,2,3,4,3,4
	DB	3,2,3,4,3,4,3,4
	DB	3,4,3,4,3,2,3,4
;
;	DB	4,3,4,3,2,3,4,3
;	DB	4,3,4,3,4,3,2,3
;	DB	4,3,2,3,4,3,4,3
;
SPCTMK
	DB	0,2,2,1,1,3,3,0
	DB	1,2,2,0,0,3,3,1
	DB	2,0,0,3,3,1,1,2
	DB	3,1,1,2,2,0,0,3
;
;	DB	1,3,3,0,0,2,2,1
;	DB	2,1,1,3,3,0,0,2
;	DB	3,0,0,2,2,1,1,3
;
SPCUT
	DEC	A
	LD	(SPCTTM),A
	LD	HL,PLSTOP
	LD	(HL),$01
;
	SRL	A
	SRL	A
	LD	E,A
	LD	D,$0
	LD	A,(PLCMKI)
	SLA	A
	SLA	A
	SLA	A
	ADD	A,E
	LD	E,A
	LD	HL,SPCTMD
	ADD	HL,DE
	LD	A,(HL)
	LD	(PCUTFG),A
	LD	HL,SPCTMK
	ADD	HL,DE
;
	LD	A,(PLCMKI)
	PUSH	AF
	LD	A,(HL)
	LD	(PLCMKI),A
	CALL	PCTPTS
	POP	AF
	LD	(PLCMKI),A
;
	LD	A,(FRCNT)
	AND	$03
	JR	NZ,SPCT90
;
	LD	HL,SPCTTM
	DEC	(HL)
SPCT90
	LD	A,(SPCTTM)
	AND	A
	JP	Z,PCUTED
	RLA
	JP	C,PCUTED
;
	LD	A,(PLXPSL)
	ADD	A,$08
	LD	(PKCRX1),A
;
	LD	A,$18
	LD	(PKCRX2),A
;;;	LD	A,$18
	LD	(PKCRY2),A
;
	LD	A,(PLYPS2)
	ADD	A,$08
	LD	(PKCRY1),A
	LD	(KENTAT),A
;
	RET
;=====================================================
PLCUT3			; kan chari
	DEC	A
	LD	(CARITM),A
	JP	Z,PCUTED
;
	LD	HL,KENON
	LD	(HL),$4
;
	LD	A,(DUSHFG)
	AND	A
	JR	NZ,PLCUT301
;
	LD	A,$01
	LD	(PLSTOP),A
;
PLCUT301
	LD	A,$03
	LD	(PCUTFG),A
	JP  	PCTPTS
;=====================================================
PLCUT2
		jp	PCTPTS	; kamae
;;;KK;;;	CALL	PCTPTS	; kamae
;;;KK;;;PCUTR0
;;;KK;;;	RET
;===============================================
PLCUT
	LD	A,(WARPFG2)
	AND	A
	JR	Z,WPSP10
;
	LD	A,(FRCNT)
	RRA
	RRA
	AND	$03
	LD	E,A
	LD	D,$00
	LD	HL,PLWPMK2
	ADD	HL,DE
	LD	A,(HL)
	LD	(PLCMKI),A
	RET
;
WPSP10
	LD	A,(PLJPFG)
	CP	$01
	JR	NZ,PCT1000
;
	LD	A,(WPLCAMD)
	LD	HL,PCUTFG
	OR	(HL)
	JR	NZ,PCT1000
;
	LD	A,(PLCMKI)
	RLA
	RLA
	AND	%00001100
	LD	C,A
	LD	B,$00
;
	LD	A,(PLJCPT)
	CP	$03
	JR	NC,PCT1000
	LD	E,A
	LD	D,$00
	LD	HL,PLJCCD
	ADD	HL,DE
	ADD	HL,BC
	LD	A,(HL)
	LD	(PLCHPT),A
;
	LD	A,(PLJCCT)
	INC	A
	LD	(PLJCCT),A
	AND	$07
	JR	NZ,PCT1000
;
	LD	A,(PLJCPT)
	INC	A
	LD	(PLJCPT),A
PCT1000
	LD	A,(SPCTTM)
	AND	A
	JP	NZ,SPCUT
;
	LD	A,(CARITM)
	AND	A
	JP	NZ,PLCUT3	; ken chari ?
;				; no
	LD	A,(PCUTFG)
	AND	A
		ret	Z
;;;KK;;;	JR	Z,PCUTR0
;
	LD	HL,KENON
	LD	(HL),$4
;
;	LD	A,(PLOSHI)
;	AND	A
;	JP	NZ,PCUTED
;
	LD	A,(PCUTFG)
	CP	$04+1
	JR	NC,PLCUT2	; kamae ?
;				; no
	LD	A,(DUSHFG)
	AND	A
	JR	NZ,PLCUTS10
;
	LD	A,$01
	LD	(PLSTOP),A
;
PLCUTS10
	LD	A,(PCUTTM)
	AND	A
	JR	NZ,PCUT70
;
	LD	A,(PCUTFG)
	INC	A
	LD	(PCUTFG),A
	CP	$04
	JP	Z,PCUTED
;
;;	LD	(PCUTFG),A
;
	LD	C,A
	LD	B,$0
	LD	HL,PCTTMD-1
	ADD	HL,BC
	LD	A,(HL)
;
;;;	LD	A,$03+1
PCUT70
	DEC	A
	LD	(PCUTTM),A
;============================================
PCTPTS
	LD	HL,PCUTFG
;
	LD	A,(PLCMKI)
	LD	E,A
	SLA	A
	SLA	A
	ADD	A,E
	ADD	A,E
	ADD	A,(HL)
;
	LD	C,A
	LD	B,$0
	LD	HL,PLCTPT
	ADD	HL,BC
	LD	A,(HL)
	LD	(PKENPT),A
;
	LD	HL,PLCTP2
	ADD	HL,BC
	LD	A,(HL)
	CP	$FF
	JR	Z,CTPS10
;
	LD	(PLCHPT),A
CTPS10
;
	LD	HL,PLCTXD
	ADD	HL,BC
	LD	A,(HL)
;;;	ADD	A,$08
	LD	(PKENXD),A
;
	LD	HL,PLCTYD
	ADD	HL,BC
	LD	A,(HL)
;;;	ADD	A,$10
	LD	(PKENYD),A
;
	LD	HL,PLCTDX
	ADD	HL,BC
	LD	A,(HL)
	LD	(PLDSXD),A
;
	LD	HL,PLCTDY
	ADD	HL,BC
	LD	A,(HL)
	LD	(PLDSYD),A
;
NAKANO
	LD	HL,PCTCX1
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,PCUT88	; Hit ok ?
;
	LD	A,(TATEON)
	AND	A
	JR	Z,TATCR10
;
	LD	A,(FRCNT)
	AND	$01
	JR	NZ,PCUT88
;
TATCR10
	LD	A,(PKENXD)
	ADD	A,(HL)
;				; yes cross data set !
	LD	HL,PLXPSL
	ADD	A,(HL)
	LD	(PKCRX1),A
;
	LD	HL,PCTCX2
	ADD	HL,BC
	LD	A,(HL)
	LD	(PKCRX2),A
;
	LD	A,(PKENYD)
	LD	HL,PCTCY1
	ADD	HL,BC
	ADD	A,(HL)
	LD	HL,PLYPS2 ;L
	ADD	A,(HL)
	LD	(PKCRY1),A
;
	LD	HL,PCTCY2
	ADD	HL,BC
	LD	A,(HL)
	LD	(PKCRY2),A
;
	LD	A,$01
	LD	(KENTAT),A
PCUT88
		jp	KNBGCK
;;;KK;;;	CALL	KNBGCK
;;;KK;;;PCUT90
;;;KK;;;	RET
;- - - - - - - - - - - - - - - - - -
PCUTED
	XOR	A
	LD	(KENOFF),A
;
	LD	A,(DUSHFG)
	AND	A
	JR	NZ,PCED10
;
	XOR	A
	LD	(PCUTFG),A
	LD	(WCUTFG),A
	LD	(SPCTTM),A
PCED10
	RET
;
;==============================================
;  Player move speed & Muki
;==============================================
PMVXD	; Walk speed
; Normal
	DB	$00,$10,$F0,$00,$00,$0C,$F4,$00
	DB	$00,$0C,$F4,0,0,0,0,0
; Power on
	DB	$00,$14,$EC,$00,$00,$0F,$F1,$00
	DB	$00,$0F,$F1,0,0,0,0,0
;- - - - - - - - - - - - - - - - - - - - -
PMVYD	
	DB	$00,$00,$00,$00,$F0,$F4,$F4,$00
	DB	$10,$0C,$0C,0,0,0,0,0
;
	DB	$00,$00,$00,$00,$EC,$F1,$F1,$00
	DB	$14,$0F,$0F,0,0,0,0,0
;
PLCMDT	; Player muki data !
;		 0  1  2  3  4  5  6  7  8  9  A 
	DB	$F,$0,$1,$F,$2,$F,$F,$F,$3,$F,$F
;-----------------------------------------------
PLCHPD	; Walk pause
;盾なし
	DB	$0A,$0B
	DB	$06,$07
	DB	$04,$05
	DB	$00,$01
PLCHP2
;盾小あり
	DB	$2C,$2D
	DB	$06,$07
	DB	$34,$35
	DB	$22,$23
PLCHP28
;盾小ありボタン押し
	DB	$2A,$2B
	DB	$28,$29
	DB	$30,$31
	DB	$24,$25
PLCHP3
;盾大あり
	DB	$2E,$2F
	DB	$06,$07
	DB	$34,$35
	DB	$22,$23
PLCHP38
;盾大ありボタン押し
	DB	$2A,$2B
	DB	$28,$29
	DB	$32,$33
	DB	$26,$27
;
PLCHPO
;壁押し
	DB	$20,$21
	DB	$1E,$1F
	DB	$1C,$1D
	DB	$1A,$1B
PLCHPC
;持ち上げ
	DB	$3E,$3F
	DB	$40,$41
	DB	$42,$43
	DB	$44,$45
;
PLCHSW
;泳ぐ
	DB	$46,$47
	DB	$48,$49
	DB	$4A,$4B
	DB	$4C,$4D
PLCHDB
;潜る
	DB	$4E,$4F
	DB	$4E,$4F
	DB	$4E,$4F
	DB	$4E,$4F
;
PLCHYSW
;YOKO 泳ぐ
	DB	$5B,$5C
	DB	$58,$59
	DB	$5B,$5C
	DB	$58,$59
;;	DB	$5A,$5A
;;	DB	$5D,$5D
;================================
PLTOBIS
	LD	A,$02
	LD	(KNBGTM),A
;
	LD	A,(PLSTAT)
	AND	A
	JR	NZ,PLTBA0
;
	LD	A,(PLYPSL)
	ADD	A,$10
	LD	(PLYPSL),A
	LD	(PLSVYL),A
;	
	LD	A,(PLZPSL)
	ADD	A,$10
	LD	(PLZPSL),A
PLTB10
	LD	A,$FF
	LD	(PLYSPD),A
	XOR	A
	LD	(PLXSPD),A
;
	LD	A,(PLYPSL)
	ADD	A,$08
	LD	(PLYPSL),A
	LD	(PLSVYL),A
;	
	LD	A,(PLZPSL)
	ADD	A,$08
	LD	(PLZPSL),A
;
;;	LD	A,$02
;;	CALL	PBSET
	CALL	PLBGC0
;
	LD	A,(UNITNO)
	CP	ANA00
	JR	Z,PLTB10
	CP	IDO00
	JR	Z,PLTB09
;
	LD	A,(PLCBFG)
	AND	A
	JR	NZ,PLTB10
;
PLTB09
	LD	A,$1
	LD	(PLSTAT),A
;
	LD	A,(PLYPSL)
	SUB	$03
	LD	(PLYPSL),A
;
;	LD	A,$08
;	LD	(SOUND1),A	;(S)
;
;	JR	PLTBA0
;PLTB90
;	CALL	PLWPCS		; Wepon character set
;	RET
;==================================
PLTBA0
	CALL	PLJPMV
;
	LD	A,(PLZPSL)
	AND	A
	JR	NZ,PLTBB0
;
	XOR	A
	LD	(PLMODE),A
;
PLTBB0
	LD	A,$01
	LD	(PLJPFG),A
;
	CALL	PLTOOL
	CALL	PLCUT
	LD	A,(PCUTFG)
	LD	(WCUTFG),A	; For enemy check !!
;
		jp	PLWPCS		; Wepon character set
;;;KK;;;	CALL	PLWPCS		; Wepon character set
;;;KK;;;PLTBB2
;;;KK;;;	RET
;====== BG check  特殊CHECK DATA ==
SPUNDT
;7C
	DB	1,0
	DB	1,0
;D
	DB	0,1
	DB	0,1
;E
	DB	1,1
	DB	0,0
;F
	DB	0,0
	DB	1,1
;80
	DB	1,0
	DB	1,0
;1
	DB	0,1
	DB	0,1
;2
	DB	1,1
	DB	0,0
;3
	DB	0,0
	DB	1,1
;4
	DB	0,1
	DB	1,1
;5
	DB	1,0
	DB	1,1
;6
	DB	1,1
	DB	0,1
;7
	DB	1,1
	DB	1,0
;8
	DB	1,0
	DB	0,0
;9
	DB	0,1
	DB	0,0
;A
	DB	0,0
	DB	1,0
;B
	DB	0,0
	DB	0,1
;C
	DB	0,1
	DB	1,0
;D
	DB	1,0
	DB	0,1
;============================================
;=	オカリナ吹き！			    =
;============================================
OPSTXD
	DB	$08,$F8
OPSTXS
	DB	$06,$01
;
OKARINA
	LD	A,(OKARFG)
	AND	A
	RET	Z
;
		LD	A,(PLMODE)
		CP	PSWIM		; プレイヤー泳いでる？
		JR	NZ,OKARINA_100	; ＮＯ

		XOR	A
		LD	(OKARFG),A
		LD	(SOUND2),A	; サウンドクリア
		RET
OKARINA_100
		LD	A,(OKARFG)

	LD	HL,PLSTOP
	LD	(HL),$02
	CP	$FF
	JR	NZ,OKA001
;
	LD	A,(BGMCNT)
	ADD	A,$01
	LD	(BGMCNT),A
;
	LD	A,(BGMCNT2)
	ADC	A,$00
	LD	(BGMCNT2),A
;
;;	LD	A,(BGMCNT2)
	CP	$08
	JR	NZ,OKSR10
;
	LD	A,(BGMCNT)
	CP	$D0
	JR	NZ,OKSR10
;
	XOR	A
	LD	(OKARFG),A
	LD	(ITEMNOT),A
;
	LD	A,$03
	LD	(SEIRENFG),A
;
	LD	A,(SEIRENFG2)
	CP	$47
	RET	Z
;
	JR	SEBGMS	
;;	CALL	BGMSET	;(S)
;;	RET
OKSR10
	LD	A,(SEIRENFG2)
	CP	$47
	JR	Z,OKSR11
;;	RET	Z
;
	LD	A,(KEYA2)
	AND	%00110000
	JR	Z,OKSR11
;
	XOR	A
	LD	(OKARFG),A
	LD	(ITEMNOT),A
;
	LD	A,$03
	LD	(SEIRENFG),A
;
SEBGMS
	LD	A,(SEINDX)
	LD	E,A
	LD	D,B
	LD	HL,ENSTAT
	ADD	HL,DE
	LD	(HL),$00
;
	JP  	BGMSET	;(S)
OKSR11
	JR	OKAR020
;------------------------------------------
OKA001
;;	JP	Z,OKAR090
;
;;;;	INC	A
;
	CALL	PLSDCL
	CALL	DUSHCL
;
	LD	HL,OKARFG
;
;	LD	A,(ONPUFG)
;	AND	A
;	JR	Z,OKAR012
;
;	LD	A,(FUESLPT)
;	CP	$00
;	JR	NZ,OKAR012
;;
;	LD	A,(FRCNT)
;	AND	$03
;	JR	NZ,OKAR013
;;
;OKAR012
	DEC	(HL)
;;OKAR013
;	LD	A,(HL)
;;;	CP	$C0
;	AND	A
	JR	NZ,OKAR020
;
	LD	A,(MARINFG)
	AND	A
	JR	Z,OKAR013
;
	LD	A,(FUESLPT)
	CP	$01
	JR	Z,OKAR014	;２？
;
	LD	A,(DJFLAG)
	AND	A
	JR	NZ,OKAR014
;
	LD	A,$77
	CALL	MSGCH3	;へたくそ！
	JR	OKAR014
;
OKAR013
	LD	A,(ONPUFG)
	AND	A
	JR	NZ,OKAR014
;
	LD	A,$8E
	CALL	MSGCHK	
	XOR	A
	LD	(ITEMNOT),A
	RET
OKAR014
	XOR	A
;;;;	LD	(OKARFG),A
	LD	(ITEMNOT),A
;
	LD	A,(FUESLPT)
	CP	$01
	JR	NZ,OKAR015	;魚の笛ワープ？
;				;YES !
	LD	A,$02
	LD	(WAVFLG),A
	XOR	A
	LD	(WAVTIM),A
	LD	(SBHR),A
	LD	(SBCNT),A
;
	LD	A,$2C
	LD	(SOUND1),A	;(S)
OKAR015
;	LD	A,(ONPUFG)
;	AND	A
;	RET	Z
;;
;	JP 	BGMSETS	;(S)
	RET
OKAR020
;;	LD	(OKARFG),A
	LD	A,(OKACNT)
	INC	A
	LD	(OKACNT),A
	CP	$38
	JR	C,OKAR02A
;
	XOR	A
	LD	(OKACNT),A
;
	LD	A,(OKACNT2)
	XOR	$01
	LD	(OKACNT2),A
OKAR02A
	LD	A,(OKACNT2) ;FRCNT)
	LD	E,$75
	AND	A ;,  $40
	JR	NZ,OKAR030
	INC	E
OKAR030
	LD	A,E
	LD	(PLCHPT),A
;
	LD	A,$02
;;	LD	(PLSTOP),A
	LD	(ITEMNOT),A
;
;;	LD	A,$02
	LD	(ENSTTM),A
;
	LD	A,(OKARFG)
	CP	$10
	RET	C
;
	LD	A,(OKACNT) ;FRCNT)
;;	AND	$1F
	CP	$14
	JR	NZ,OKAR090
;
	LD	A,ONPU
	CALL	ENIDSHL
	JR	C,OKAR090
;
	LD	A,(PLYPSL)
	LD	HL,ENYPSL
	ADD	HL,DE
	SUB	$08
	LD	(HL),A
;
;	LD	A,(FRCNT)
;	RRA
;	RRA
;	RRA
;	RRA
;	RRA
;	AND	$01
	LD	A,(OKACNT2)
	LD	C,A
	LD	B,D
	LD	HL,OPSTXD
	ADD	HL,BC
	LD	A,(PLXPSL)
	ADD	A,(HL)
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A
	LD	HL,OPSTXS
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
;;	LD	HL,ENTIM0
;;	ADD	HL,DE
	LD	HL,ENCONT
	ADD	HL,DE
	LD	(HL),$40
OKAR090
	RET
;============================================
;=	穴堀り	SUB			    =
;============================================
ANCHPT
	DB	$71,$72
	DB	$6F,$70
	DB	$73,$74
	DB	$6D,$6E
;
ANAHORIS
	LD	A,(ANAHFG)
	AND	A
	JR	Z,ANH090
;
	LD	A,(DNJNNO)
	CP	$08
	JR	NZ,ANAH100	;Lv. 9?
;				;YES !
	LD	A,(BOSSNO)
	CP	$02
	JR	NZ,ANAH100	;アグニム？
;
	CALL	TATEST2
	LD	A,$01
	LD	(KENTAT),A
ANAH100
	LD	HL,PLSTOP
	LD	(HL),$01
;
	CALL	PLSDCL
;
;;	XOR	A
	LD	(PCUTFG),A
	LD	(SPCTTM),A
	LD	(SPCTWT),A
;
	LD	A,(ANAHTM)
	INC	A
	LD	(ANAHTM),A
	CP	$10
	JR	NZ,ANH008
;
	PUSH	AF
	CALL	ANBGCK	; BG check !
	POP	AF
ANH008
	CP	$18
	JR	NZ,ANH010
;
	LD	A,(ANAHFG)
	CP	$02
	JR	NZ,ANH009	;掘れた？
;				;YES !
	LD	A,(MARINFG)
	AND	A
	JR	Z,ANH009
;
	LD	A,(MSGEFG)
	AND	A
	JR	NZ,ANH009
;
	LD	A,$79
	CALL	MSGCH3	;モット ほってー
ANH009
	XOR	A
	LD	(ANAHFG),A
	LD	(KENOFF),A
	RET
;-------------------------------------
ANH010
	RRA
	RRA
	RRA
	RRA
	AND	$01
	LD	E,A
	LD	A,(PLCMKI)
	SLA	A
	ADD	A,E
	LD	E,A
	LD	D,$0
	LD	HL,ANCHPT
	ADD	HL,DE
	LD	A,(HL)
	LD	(PLCHPT),A	
ANH090
	RET
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	Ana hori BG check   		     %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ANBGXD
	DB	$14,$FC,$08,$08
ANBGYD
	DB	$0A,$0A,$FC,$14
;----------------------------------
ANBGCK
	CALL	ANBGSB
		ret	C
;;;;;;;;	JR	C,ANBG90
;
	LD	A,$02
	LD	(ANAHFG),A	;掘れた！
;
		jp	ANASET
;;;KK;;;	CALL	ANASET
;;;KK;;;ANBG90
;;;KK;;;	RET
;
;+----------------------------------------------+
;|	穴掘り用サブルーチン			|
;+----------------------------------------------+
;+----- ノーマル -----+
ANASET_GB
		LD	A,(VRAMH)
		LD	(HLI),A
		LD	A,(VRAML)
		LD	(HLI),A
		LD	A,$81
		LD	(HLI),A
;
		LD	A,(DJFLAG)
		AND	A		;ダンジョン？
		JR	Z,ANHB_GB10	;	NO --> ANHB_GB10
;
		LD	A,$04
		LD	(HLI),A
		LD	A,$06
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
		LD	A,$07
		JR	ANHB_GB20
ANHB_GB10					;地上
		LD	A,$6A
		LD	(HLI),A
		LD	A,$7A
		LD	(HLI),A
;
		LD	A,(VRAMH)
		LD	(HLI),A
		LD	A,(VRAML)
		INC	A
		LD	(HLI),A
		LD	A,$81
		LD	(HLI),A
		LD	A,$6B
		LD	(HLI),A
		LD	A,$7B
ANHB_GB20
		LD	(HLI),A
		LD	A,$0
		LD	(HLI),A
		RET
;+----- カラー用 -----+
ANASET_CGB
		PUSH	DE		;CGB
		PUSH	HL		;CGB
		LD	HL,VRAMD_AT+1	;CGB
		LD	A,(VRAMD_AT)	;CGB
		LD	E,A		;CGB
		ADD	A,10		;CGB
		LD	(VRAMD_AT),A	;CGB
		ADD	HL,DE		;CGB
		ld	e,l
		ld	d,h
;;10/31;		PUSH	HL		;CGB
;;10/31;		POP	DE		;CGB
		POP	HL		;CGB
;
		LD	A,(VRAMH)
		LD	(HLI),A
		LD	(DE),A			;CGB
		INC	DE			;CGB
		LD	A,(VRAML)
		LD	(HLI),A
		LD	(DE),A			;CGB
		INC	DE			;CGB
		LD	A,$81
		LD	(HLI),A
		LD	(DE),A			;CGB
		INC	DE			;CGB
;
		LD	A,(DJFLAG)
		AND	A		;ダンジョン？
		JR	Z,ANHB_CGB10	;	NO --> ANHB_CGB10
;
		LD	A,$04
		LD	(HLI),A
		LD	A,$06
		LD	(HLI),A
		LD	A,$005			;CGBアトリビュート
		LD	(DE),A			;CGB
		INC	DE			;CGB
		LD	(DE),A			;CGB
		INC	DE			;CGB
;
		LD	A,(VRAMH)
		LD	(HLI),A
		LD	(DE),A			;CGB
		INC	DE			;CGB
		LD	A,(VRAML)
		INC	A
		LD	(HLI),A
		LD	(DE),A			;CGB
		INC	DE			;CGB
		LD	A,$81
		LD	(HLI),A
		LD	(DE),A			;CGB
		INC	DE			;CGB
		LD	A,$05
		LD	(HLI),A
		LD	A,$005			;CGBアトリビュート
		LD	(DE),A			;CGB
		INC	DE			;CGB
		LD	(DE),A			;CGB
		INC	DE			;CGB
		LD	A,$07
		JR	ANHB_CGB20
ANHB_CGB10					;地上
		LD	A,$6A
		LD	(HLI),A
		LD	A,$7A
		LD	(HLI),A
		LD	A,$003			;CGBアトリビュート
		LD	(DE),A			;CGB
		INC	DE			;CGB
		LD	(DE),A			;CGB
		INC	DE			;CGB
;
		LD	A,(VRAMH)
		LD	(HLI),A
		LD	(DE),A			;CGB
		INC	DE			;CGB
		LD	A,(VRAML)
		INC	A
		LD	(HLI),A
		LD	(DE),A			;CGB
		INC	DE			;CGB
		LD	A,$81
		LD	(HLI),A
		LD	(DE),A			;CGB
		INC	DE			;CGB
		LD	A,$6B
		LD	(HLI),A
		LD	A,$003			;CGBアトリビュート
		LD	(DE),A			;CGB
		INC	DE			;CGB
		LD	(DE),A			;CGB
		INC	DE			;CGB
		LD	A,$7B
ANHB_CGB20
		LD	(HLI),A
		LD	A,$0
		LD	(HLI),A
		LD	(DE),A			;CGB
		POP	DE			;CGB
		RET
;
;=============================
ANASET
	LD	A,(WORK1)
	LD	E,A
	LD	D,$00
	LD	HL,BGUNDT+$11
	ADD	HL,DE
;
	LD	(HL),HTANA ;A
;
;--------------------------------------------
;	堀った穴
;--------------------------------------------
		LD	A,$02|UNIT_TRAN_BIT
		CALL	Unit_change	; バンク２ユニット書き換え
;--------------------------------------------
;
	CALL	OBJBG
;
	LD	HL,VRAMD+1
	LD	A,(VRAMD)
	LD	E,A
	ADD	A,10
	LD	(VRAMD),A
	LD	D,$00
	ADD	HL,DE
;
	LD	A,(CGBFLG)
	AND	A		;ＣＧＢモード？
	JR	NZ,ANASET10	;	YES --> ANASET10
	CALL	ANASET_GB
	JR	ANASET20
ANASET10
	CALL	ANASET_CGB
ANASET20
;
;- - -Randam item set - -
	CALL	RNDSUB
	AND	$07
	JR	NZ,ANSS90
;
		LD	A,(DJFLAG)	; 地上エリア０－Ｅは
		AND	A		; なにも出さない！
		JR	NZ,ANASET30	; なぜなら、大鷲の塔
		LD	A,(GRNDPT)	; のカラーが必要だか
		CP	$0E		; ら。
		RET	Z		; （ルピー色がでない）
ANASET30
	CALL	RNDSUB
	RRA
	LD	A,RUPY1
	JR	NC,ANSS70
	LD	A,HART1
ANSS70
	CALL	ENIDSHL  ;PLSHST
	JR	C,ANSS90
;
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	A,(OBJXP)
	ADD	A,$8
	LD	(HL),A
;
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	A,(OBJYP)
	ADD	A,$10
	LD	(HL),A
;
	LD	HL,ENTIM3
	ADD	HL,DE
	LD	(HL),$80 ;A
;
	LD	HL,ENTIM1
	ADD	HL,DE
	LD	(HL),$18  ;A
;
	LD	HL,ENZSPD
	ADD	HL,DE
	LD	(HL),$20
;
		ld	c,e
		ld	b,d
;;;KK;;;	PUSH	DE
;;;KK;;;	POP	BC
;
	LD	A,$0C
	CALL	PSERCHL
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
ANSS90
	RET
;- - - - - - - - - - - - - - - - -
;=================================
ANBGSB
	LD	A,(PLCAMD)
	LD	HL,PLZPSL
	OR	(HL)
	LD	HL,PLMODE
	OR	(HL)
	LD	HL,YKFLAG
	OR	(HL)
;;	LD	HL,DJFLAG
;;	OR	(HL)
	JP	NZ,ANSB20
;
	LD	A,(PLCMKI)
	LD	E,A
	LD	D,$00
;
	LD	HL,ANBGXD
	ADD	HL,DE
	LD	A,(PLXPSL)
	ADD	A,(HL)
	SUB	$08
	AND	$F0
	LD	(OBJXP),A
;
	SWAP	A
	LD	C,A
;
	LD	HL,ANBGYD
	ADD	HL,DE
	LD	A,(PLYPSL)
	ADD	A,(HL)
	SUB	$10
	AND	$F0
	LD	(OBJYP),A
;
	OR	C
	LD	E,A
	LD	(WORK1),A
	LD	HL,BGUNDT+$11
	ADD	HL,DE
	LD	A,H
	CP	$D7
	JP	NZ,ANSB20
	LD	A,(HL)
	LD	(WORK0),A
	LD	E,A
;;;	LD	D,$0
;
	LD	A,(DJFLAG)
	LD	D,A
;
;;	LD	HL,GRBGCR
;;	ADD	HL,DE
;;	LD	A,(HL)
	CALL	BGCRRD
	CP	$00  
	JR	NZ,ANSB20	; door etc
;
	LD	A,D
	AND	A
	JR	NZ,ANSB10	;地上？
;				;YES !
	LD	A,(WORK0)
	CP	TURO0
	JR	Z,ANSB20
	CP	TURO1
	JR	Z,ANSB20
	CP	TIL00
	JR	Z,ANSB20
	CP	TIL01
	JR	Z,ANSB20
	CP	STAMI
	JR	Z,ANSB20
	JR	ANSBOK
;-------------------------------------
ANSB10	;Dundeon !
	LD	A,(WORK0)
	CP	DSUNA
	JR	NZ,ANSB20	;ダンジョン砂！
ANSBOK
	AND	A	; CLC
	RET
;
ANSB20
	SCF		;SEC
	RET
;
;===============================================================
;	壊れる床 ＢＧ 書き換え
;===============================================================
BG1CHS
	LD	A,(WORK0)
	LD	(OBJXP),A	
;
	SWAP	A
	AND	$0F
	LD	E,A
;
	LD	A,(WORK1)
	LD	(OBJYP),A	
	AND	$F0
	OR	E
	LD	E,A
	LD	D,$00
;
	LD	HL,BGUNDT+$11
	ADD	HL,DE
;
	LD	(HL),DANA0 ;A
;
	CALL	OBJBG
;
		LD	A,(CGBFLG)
		AND	A
		JR	Z,BG1CHS_PASS
		PUSH	BC
		LD	C,DANA0
		LD	B,$000
		SLA	C
		RL	B
		SLA	C
		RL	B
		LD	A,$02
		CALL	BG1UNIT_ATR
		POP	BC
BG1CHS_PASS
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
	LD	A,$76
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
	LD	A,$76
	LD	(HLI),A
	LD	A,$77
	LD	(HLI),A
	LD	(HL),$00
	RET
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	回転ドアにリンクが張り付いたときのカラー退避		%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
KUR_COLBAK
		PUSH	BC
		PUSH	DE
		LD	HL,OBCGWK+(($000*$004)*2)
		LD	C,$000
		DI
KUR_COLBAK_LOOP
		XOR	A
		LD	(SVBK),A
		LD	B,(HL)
		LD	A,$002
		LD	(SVBK),A
		LD	A,B
		LD	(HL),A
		INC	HL
		INC	C
		LD	A,C
		CP	$008
		JR	C,KUR_COLBAK_LOOP
		XOR	A
		LD	(SVBK),A
		EI
		POP	DE
		POP	BC
		RET
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	回転ドアにリンクが張り付いたときのカラーセット		%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
KUR_IN_DATA
		DW	$47FF,$0000,$390C,$5E76
		DW	$47FF,$0000,$2867,$5E76
;
KUR_IN_COLSET
		PUSH	BC
		DI
		LD	HL,KUR_IN_DATA
		ADD	HL,DE
;;;KK;;;		LD	DE,OBCGWK+(($000*$004)*2)
		LD	DE,OBCGWK+(($007*$004)*2)
		LD	C,$000
KUR_IN_LOOP
		LD	A,(HLI)
		LD	(DE),A
		INC	DE
		INC	C
		LD	A,C
		CP	$008
		JR	C,KUR_IN_LOOP
		EI
		LD	A,OBJCOL_BITFG
		LD	(CGDMAF),A
		POP	BC
		RET
;
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	回転ドアにリンクが張り付いたときのカラーセット		%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
KUR_OUT_COLSET
		DI
;;;KK;;;		LD	HL,OBCGWK+(($000*$004)*2)
		LD	HL,OBCGWK+(($007*$004)*2)
		LD	E,$000
KUR_OUT_LOOP
		LD	A,$002
		LD	(SVBK),A
		LD	B,(HL)
		XOR	A
		LD	(SVBK),A
		LD	A,B
		LD	(HL),A
		INC	HL
		INC	E
		LD	A,E
		CP	$008
		JR	C,KUR_OUT_LOOP
		EI
		LD	A,OBJCOL_BITFG
		LD	(CGDMAF),A
		RET
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	回転ドア sub		             %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
KRDPTD
	DB	$50,$51,$52,$53,$53,$54,$52
KURDORS
	LD	A,$10
	LD	(PLYPSL),A
	LD	A,$50
	LD	(PLXPSL),A
	LD	(ITEMNOT),A
;
	LD	A,(KURDCT)
		PUSH	AF
		LD	D,$000
		LD	E,$008
		CP	$18		;裏がえった？
		JR	Z,KRD000_020	;	YES --> KRD000_020
		LD	E,$000
		CP	$28		;元に戻ろうとしてる？
		JR	Z,KRD000_020	;	YES --> KRD000_020
		AND	A		;リンク張り付いた？
		JR	NZ,KRD000_080	;	NO --> KRD000_080
		LD	A,(CGBFLG)
		AND	A
		JR	Z,KRD000_080
		CALL	KUR_COLBAK
KRD000_020
		LD	A,(CGBFLG)
		AND	A
		JR	Z,KRD000_080
		CALL	KUR_IN_COLSET
KRD000_080
		POP	AF
	RRA
	RRA
	RRA
	AND	%00000111
;
	LD	E,A
	LD	D,$0
	LD	HL,KRDPTD
	ADD	HL,DE
	LD	A,(HL)
	LD	(PLCHPT),A
;
	LD	A,(KURDCT)
	INC	A
	LD	(KURDCT),A
	CP	$7*8
	JR	C,KRD080
;
	LD	A,$FB
	LD	(PLYPSL),A
	LD	A,$2
	LD	(PLCMKI),A
	LD	A,$4
	LD	(PLCHPT),A
KRD080
	LD	A,(KURDCT)
	CP	$9*8
	JR	NZ,KRD090
;
		LD	A,(CGBFLG)
		AND	A
		JR	Z,KRD080_000
		CALL	KUR_OUT_COLSET
KRD080_000
	LD	A,$2
	LD	(SCRLMK),A
	LD	A,$01
	LD	(SCRLFG),A
;
PMOVEST
	XOR	A
	LD	(KURDCT),A
	LD	(ITEMNOT),A
;;;;;;;		LD	(MORIFLG),A	; 森カラーチェンジ（＝DARKFLG）
;;;;;;;		LD	(MORIFCT),A	;       ”	  （＝DARKFCT）
;
	LD	A,PMOVE
	LD	(PLMODE),A
KRD090
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	泳ぐ				     %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
PSWXD	
	DB	$00,$08,$F8,$00,$00,$06,$FA,$00
	DB	$00,$06,$FA,0,0,0,0,0
;
PSWXD2
	DB	$00,$10,$F0,$00,$00,$0C,$F4,$00
	DB	$00,$0C,$F4,0,0,0,0,0
;
PSWYD	
	DB	$00,$00,$00,$00,$F8,$FA,$FA,$00
	DB	$08,$06,$06,0,0,0,0,0
;
PSWYD2
	DB	$00,$00,$00,$00,$F0,$F4,$F4,$00
	DB	$10,$0C,$0C,0,0,0,0,0
;- - - - - - - - - - - - - - - - - -
PLSWIMS
		LD	A,(OKARFG)	;ナマズダンジョンの出入り口で
		AND	A		;横画面水中から出たときに、
		JR	Z,PSW_PASS	;オカリナを吹けてしまい
		XOR	A		;その後、OKARIFGが０以外な為に
		LD	(OKARFG),A	;ウロコイベントでフリーズする
		LD	(ITEMNOT),A	;バグの修正
PSW_PASS				;
;
	LD	A,(BGCKOF)
	AND	A
	JR	Z,PSW09000
;
	LD	A,PMOVE
	LD	(PLMODE),A
	RET
;
PSW09000
	CALL	DUSHCL  ;2
;;	XOR	A
	LD	(PLZPSL),A
	LD	(PLJPFG),A
	LD	(POWDRTM),A
	LD	(PCUTFG),A
	LD	(WCUTFG),A
	LD	(CARITM),A
;
		LD	A,(DNJNPT)
		LD	(WDNJNPT),A	;マップ表示用
;
	LD	HL,MSGEFG
	LD	A,(PLSTOP)
	OR	(HL)
	JP	Z,PSW0F0
;
	CALL	PLSDCL
;
	LD	A,(PLSTOP)
	AND	A
	JR	Z,PSW0E2
;
	XOR	A
	LD	(PLSTOP),A
PSW0E2
	JP	PLPTST
;- - - - - - - - - - - - - - - -
PSW0F0
	LD	A,(KEYA2)
	AND	%00100000
	JR	Z,PSW001
;
	LD	A,(PLSTAT)
	XOR	$1
	LD	(PLSTAT),A
;
	JR	Z,PSW001	;潜った？
;				;YES !
	LD	A,$A0
	LD	(PLTIM0),A
;
	LD	A,(PLYPSL)
	SUB	$03
	CALL	WUPSET2
;;	LD	A,$1
;;	LD	($2100),A
PSW001
	LD	A,(PLSWTM)
	AND	A
	JR	Z,PSW002
	DEC	A
	LD	(PLSWTM),A
	JR	PSW003
PSW002
	LD	A,(KEYA2)
	AND	%00010000
	JR	Z,PSW003
;
	LD	A,$0F
	LD	(SOUND1),A	;(S)
;
	LD	A,$20
	LD	(PLSWTM),A
PSW003
	LD	A,(FRCNT)
	AND	$01
	JR	NZ,PSW0A0
;
	LD	A,(KEYA1)
	AND	%00001111
	LD	E,A
	LD	D,$00
;
	LD	HL,PSWXD
;
	LD	A,(PLSWTM)
	CP	$10
	JR	C,PSW009
;
	LD	HL,PSWXD2
PSW009
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,PLXSPD
	SUB	(HL)
	JR	Z,PSW010
;
	INC	(HL)
;
	BIT	7,A
	JR	Z,PSW010
;
	DEC	(HL)	
	DEC	(HL)	
PSW010
	LD	HL,PSWYD
;
	LD	A,(PLSWTM)
	CP	$10
	JR	C,PSW019
;
	LD	HL,PSWYD2
PSW019
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,PLYSPD
	SUB	(HL)
	JR	Z,PSW020
;
	INC	(HL)
;
	BIT	7,A
	JR	Z,PSW020
;
	DEC	(HL)	
	DEC	(HL)	
PSW020
	LD	A,(PLXSPD)
	OR	(HL)
	LD	HL,PLSTAT
	OR	(HL)
	JR	Z,PSW028
;
	LD	HL,PLWKCT
	INC	(HL)
	JR	PSW030
PSW028
	LD	A,$3
	LD	(PLWKCT),A
PSW030
	LD	HL,PLCMDT
	ADD	HL,DE
	LD	A,(HL)
	CP	$0F
	JR	Z,PSW0A0
;
	LD	(PLCMKI),A
PSW0A0
	CALL	PLPTST
;
	LD	A,(PLSTOP)
	AND	A
	JR	Z,PSW0C0
;
	XOR	A
	LD	(PLSTOP),A
	JR	PSW0D0
PSW0C0
	CALL	PLMVBC	; move calc & BG check !
PSW0D0
	CALL	PLCTBC
;				;YES !
	LD	A,(PLSTAT)
	AND	A
	JR	Z,PSWI080
;
	LD	A,(PLTIM0)
	AND	A
	JR	NZ,PSW0D1
;
	LD	(PLSTAT),A
PSW0D1
	LD	A,(DNJNNO)
	AND	A
	JR	Z,PSWI100F
;;	JR	NZ,PSWI100
;
	CP	$1F
	JR	NZ,PSWI100
;
	LD	A,(GRNDPT)
	CP	$F2
	JR	NZ,PSWI080	;城周りの水中？
	JR	PSWI1010
;				;YES !
PSWI100F
	LD	A,(GRNDPT)
	CP	$78
	JR	NZ,PSWI080	;城周りの水中？
;				;YES !
PSWI1010
	LD	A,(PLYPSL)
	SUB	$50
	ADD	A,$08
	CP	$10
	JR	NC,PSW0E0
;
	LD	A,(PLXPSL)
	SUB	$58
	ADD	A,$08
	CP	$10
	JR	NC,PSW0E0 
;
	LD	HL,DJSVBF
	BIT	5,(HL)
	JR	NZ,PSWI080
;
	SET	5,(HL)
;
	LD	A,KAKER
	CALL	ENIDSHL
	JR	C,PSWI080
;
	LD	A,(PLXPSL)
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	A,(PLYPSL)
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,ENZPSL
	ADD	HL,DE
	LD	(HL),$03
;
;	LD	HL,ENCHPT
;	ADD	HL,DE
;	LD	(HL),$FF
;
	LD	HL,ENMOD0
	ADD	HL,DE
	RES	4,(HL)
PSWI080
	RET
PSWI100
	LD	A,(GRNDPT)
	CP	$8D
	JR	NZ,PSW0E0	;秘密の入り口？
;				;YES !
	LD	A,(PLYPSL)
	SUB	$50
	ADD	A,$08
	CP	$10
	JR	NC,PSW0E0
;
	LD	A,(PLXPSL)
	SUB	$58
	ADD	A,$08
	CP	$10
	JR	NC,PSW0E0
;
	LD	A,(PLXPSL)
	LD	(NXRMPX),A
;
	LD	A,(PLMODE)
	LD	(WPLMODE),A
	JP	NXGOTO
PSW0E0
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	ボクサーパンチぶっ飛び！	     %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
PLBOXER
	LD	A,$01
	LD	(PLSTOP),A
;
	CALL	MVCALC
	CALL	PLZCLC
;
	LD	A,(PLXPSL)
	AND	$F0
;;	CP	$A8
	CP	$E0
	JR	Z,PLBXED
;
	LD	A,(PLZPSL)
	CP	$78
	RET	C
;;	JP	NC,PLBXED
;;	RET
PLBXED
	CALL	NXGOTO4
;
	CALL	PLSDCL
;;	XOR	A
	LD	(PLZPSL),A
	LD	(PLZSPD),A
;
	LD	A,$70
	LD	(NXRMPZ),A
	RET
;;	JP	PFOL98	
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	Fole down sub 			     %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
PFOLCD
	DB	$55,$56,$57,$57,$FF,$FF,$FF,$FF,$FF,$FF
;
PLFOLES
	LD	A,$01
	LD	(ITEMNOT),A
;
	LD	A,(KURDCT)
	INC	A
	LD	(KURDCT),A
;
	RRA
	RRA
	RRA
	RRA
;;	RRA
	NOP
	AND	$0F
	CP	$06
	JR	Z,PFOL90 ;MOVEST
;
	LD	E,A
	LD	D,$0
	LD	HL,PFOLCD
	ADD	HL,DE
	LD	A,(HL)
	LD	(PLCHPT),A
	RET
;------------------------
PFOL90
;;	LD	A,(NXRMMD)
;;	CP	$FF
;;	JR	Z,PFOL98	; Down room chenge ?
;
	XOR	A
	LD	(HANEFG),A
	LD	(SPCTTM),A
	LD	(SPCTWT),A
;
	CALL	EXRVSE
;
;	LD	A,(EXITFG)
;	AND	A
;	JR	Z,PFOL91
;	LD	A,$01
;	LD	(EXITFG),A	;jhzx!?
;PFOL91
	LD	A,(DJFLAG)
	AND	A
	JR	NZ,PFOLS20
;
	LD	A,(GRNDPT)
	CP	$01
	JR	Z,PFOLS10
	CP	$95
	JR	Z,PFOLS10
	CP	$2C
	JR	Z,PFOLS10
	CP	$EC
	JR	NZ,PFOLS20	;ワープゾーン？
PFOLS10				;YES !
	LD	A,PWARP
	LD	(PLMODE),A
;
	LD	A,$40
	LD	(PLTIM0),A
;
	XOR	A
	LD	(PLSTAT),A
	DEC	A
	LD	(PLCHPT),A
	RET
;
PFOLS20
	LD	A,(ANAFLG)
	CP	$50
	JR	Z,PFOL98
;				; yes !
	CP	$FF
	JR	Z,PFOL0221
;
	LD	A,(NXRMMD)
	CP	$02
	JR	NZ,PFOL020	;次は横画面？
;				; YES !
	LD	A,(PLYPSL)
	LD	(NXRMPX),A
;
	XOR	A
	JR	PFOL021
PFOL020
	LD	A,(PLXPSL)
	AND	$F0
	ADD	A,$08
	LD	(NXRMPX),A
	LD	A,(PLYPSL)
;;	ADD	A,$00
	AND	$F0
;;	ADD	A,$00
	LD	(NXRMPY),A
;
PFOL0221
	LD	A,$01
	LD	(WARPFG2),A
;
	LD	A,$70
PFOL021
	LD	(NXRMPZ),A	; Next z pos !!
;
	CALL	PLSDCL
	LD	(PLZSPD),A
	LD	(PLJPFG),A
;
	JP	NXGOTO4	; Goto next room !
;	
PFOL98
	LD	A,(DJFLAG)
	AND	A
	JR	NZ,PFOL980
;
	LD	A,(GRNDPT)
	CP	$1E
	JR	Z,PFOL0221
;
PFOL980
	LD	A,(DNJNNO)
	CP	$0A
	JR	NZ,PFOL9A
;
	LD	A,(GRNDPT)
	CP	$7A
	JR	Z,PFOL99
	CP	$7B
	JR	Z,PFOL99
	CP	$7C
	JR	Z,PFOL99
	CP	$7D
	JR	NZ,PFOL9A
;
PFOL99
	LD	A,$00
	LD	HL,NXRMMD
	LD	(HLI),A
;
	LD	A,$00
	LD	(HLI),A
;
	LD	A,$1A
	LD	(HLI),A
;
	LD	A,$68
	LD	(HLI),A
;
	LD	A,$32+$24
	LD	(HLI),A
;
	LD	A,$24
	LD	(NXRMPZ),A	; Next z pos !!
;
	LD	A,$03
	LD	(PLCMKI),A
;
	JP	NXGOTO4
;----------------------------------------
PFOL9A
	CALL	PLMRETN
;
	LD	A,(HARTDW)
	ADD	A,$04
	LD	(HARTDW),A
;
	XOR	A
	LD	(ITEMNOT),A
	RET
;;	JP	PMOVEST
;====================================
;=				    =
;====================================
KNPWUPS	; パワーチップ拾ったデモ
DEFUP	; 守りの木のみ拾ったデモ
	LD	A,(DEMOTM)
	CP	$2E
	JR	NZ,DEMS10
;
	LD	A,$17
;;	LD	A,$01
	LD	(SOUND1),A	;(S)
DEMS10
;====================================
PWDRUP	; 粉の袋を持ち上げるデモ
;====================================
;;FUEUP	;曲を覚える前にオカリナを使ったとき！
;====================================
ITEMUP	; 何に使うのかわからないアイテムのデモ
	CALL	DUSHCL
;;	XOR	A
	LD	(WCUTFG),A
	LD	(PCUTFG),A
	LD	(HANEFG),A
;
	CALL	PLWPCS
;
	CALL	PLZCLC
;
	LD	A,(PLZSPD)
	SUB	$2
	LD	(PLZSPD),A
;
	LD	A,(PLZPSL)
	AND	$80
	JR	Z,KPW000
;
	XOR	A
	LD	(PLZPSL),A
	LD	(PLZSDR),A
	LD	(PLZSPD),A
KPW000
	LD	A,$6B
	LD	(PLCHPT),A
;
	LD	BC,OAM+$10
;
	LD	A,(PLYPSL)
	LD	HL,PLZPSL
	SUB	(HL)
	LD	HL,PLDSYD
	ADD	A,(HL)
	SUB	$10
	LD	(WORK0),A
;
	LD	A,(DEMOFG)
	CP	$01
	JR	Z,DEM010	; Kinoko or MG.powder mochiage ?
;				; YES !
	LD	A,(WORK0)
	ADD	A,$02
	LD	(BC),A
	INC	BC
	LD	A,(PLXPSL)
	ADD	A,$00
	LD	(BC),A
;
;守りのかけらorきのこor粉or貝殻のチャラララ～ン!! ( CGB )
		INC	BC
		LD	A,(DEMOFG)
		LD	E,$AE
		CP	$05
		JR	Z,DCS090
		LD	E,$8E		;きのこor粉！
		CP	$03			;キノコ持ち上げ？
		JR	Z,MAHOUNOKONA_HI	;	YES --> MAHOUNOKONA_HI
		CP	$04
		JR	NZ,DCS093
		LD	E,$8C	;貝殻！
		CALL	KAIGARA_HI
		JR	DCS098
DCS090
		CALL	MAMORI_HI
		JR	DCS098
DCS093
		CALL	KINOKO_HI
DCS098
	INC	BC
	LD	(BC),A
	RET
;
MAMORI_HI			;＜守りのかけら＞
		LD	A,E
		LD	(BC),A
		LD	A,$14
		RET
;
KINOKO_HI			;＜きのこ＞
		LD	A,E
		LD	(BC),A
		LD	A,$14
		RET
;
MAHOUNOKONA_HI			;＜魔法の粉＞
		LD	A,E
		LD	(BC),A
		LD	A,$16
		JR	DCS098
;
KAIGARA_HI			;＜貝殻＞
		LD	A,E
		LD	(BC),A
		LD	A,$10
		RET
;
;;;CGB;;;
;;;CGB;;;	LD	A,(DEMOFG)
;;;CGB;;;	LD	E,$AE
;;;CGB;;;	CP	$05
;;;CGB;;;	JR	Z,DCS090
;;;CGB;;;	CP	$04
;;;CGB;;;	LD	E,$8E	;きのこor粉！
;;;CGB;;;	JR	NZ,DCS090
;;;CGB;;;	LD	E,$8C	;貝殻！
;;;CGB;;;DCS090
;;;CGB;;;	INC	BC
;;;CGB;;;	LD	A,E
;;;CGB;;;	LD	(BC),A
;;;CGB;;;	LD	A,$10
;;;CGB;;;	INC	BC
;;;CGB;;;	LD	(BC),A
;;;CGB;;;	RET
;-- - - - - - - --- - - - - -
DEM010
	LD	A,(PLXPSL)
	SUB	$08
	LD	(WORK1),A
;
	LD	A,(FRCNT)
	RLA
	RLA
	AND	%00010000
	LD	(WORK3),A
;
	XOR	A
	LD	H,A
	LD	L,A
;
	LD	A,$06
	LD	(WORK2),A
;
		jp	KNCSET
;;;KK;;;	CALL	KNCSET
;;;KK;;;	RET
;================================
PLOBORS
	CALL	DUSHCL
	CALL	PLSDCL
;
	LD	A,(PLTIM0)
	AND	A
	JR	NZ,PLOB20
;
	LD	(ITEMNOT),A
;
	LD	A,(PLSTAT)
	CP	DFIR1
	JR	NZ,PLOB018	;溶岩？
;				;YES !
	LD	A,(HARTDW)
	ADD	A,$04
	LD	(HARTDW),A
PLOB018
	XOR	A
	LD	(PLSTAT),A
;
	LD	A,(DJFLAG)
	AND	A
	JR	NZ,PLOB01A
;
	LD	A,(GRNDPT)
	CP	$2B
	JR	NZ,PLOB01A	;４滝？
;
	LD	A,$48		;YES !
	LD	(PLITXS),A	
	LD	A,$30
	LD	(PLITYS),A	
PLOB01A
	JP  	PLMRETN
;----------------------------------------
PLOB20
;	LD	A,(PLSTAT)
;	CP	DFIR1
;	LD	A,$6A
;	JR	NZ,PLOB021 ;溶岩？
;
	LD	E,$FF
	LD	A,(PLTIM0)
	CP	$30
	JR	C,PLOB01C1
;
	LD	E,$4E
	CP	$40
	JR	C,PLOB01C1
;
	JR	NZ,PLOB01C
;
	LD	A,$03
	LD	(SOUND2),A	;(S)
PLOB01C
	LD	E,$4C
PLOB01C1
	LD	A,E
PLOB021
	LD	(PLCHPT),A
	RET
;==============================
PLMRETN
;;	LD	A,PMOVE
;;	LD	(PLMODE),A
;
	LD	A,$40
	LD	(PLFLSH),A
;
	LD	A,(PLITXS)
	LD	(PLXPSL),A
	LD	(PLSVXL),A
;
	LD	A,(PLITYS)
	LD	(PLYPSL),A
	LD	(PLSVYL),A
	LD	HL,PLZPSL
	SUB	(HL)
	LD	(PLYPS2),A
;
	CALL	PMOVEST
;
EXRVSE
	LD	A,(EXITFG)
	AND	A
	JR	Z,PMRT10
	LD	A,$01
	LD	(EXITFG),A	;階段に出てきてもすぐに入らんように！
PMRT10
	RET
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	ファイヤーロッドＯＡＭセット				%	
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
PLRTXD
	DB	$0D,$F3,$00,$FF
	DB	$08,$F8,$0C,$F5
PLRTYD
	DB	$00,$00,$F3,$0E
	DB	$F3,$F3,$FC,$00
PLRTCD
	DB	$06,$08
	DB	$08,$06
	DB	$04,$FF
	DB	$FF,$04
;
	DB	$04,$FF
	DB	$FF,$04
	DB	$06,$08
	DB	$08,$06
;
PLRTAD
	DB	$02,$02
	DB	$22,$22
	DB	$22,$02
	DB	$02,$42
;
	DB	$22,$02
	DB	$02,$22
	DB	$02,$02
	DB	$22,$22
;
;===================================
PLROTCS
	LD	A,(POWDRTM)
	AND	$7F
	CP	$08
	LD	A,(PLCMKI)
	JR	C,PWPC901
	ADD	A,$04
PWPC901
	LD	E,A
	LD	D,$00
	LD	HL,PLRTYD
	ADD	HL,DE
	LD	A,(HL)
	LD	(WORK0),A
	LD	HL,PLRTXD
	ADD	HL,DE
	LD	A,(HL)
	LD	(WORK1),A
	SLA	E
	LD	HL,PLRTCD
	ADD	HL,DE
	LD	A,(HLI)
	LD	(WORK2),A
	LD	A,(HL)
	LD	(WORK3),A
	LD	HL,PLRTAD
	ADD	HL,DE
	LD	A,(HLI)
	LD	(WORK4),A
	LD	A,(HL)
	LD	(WORK5),A
;
	LD	DE,OAM+$10
	LD	BC,OAM+$14
;
	LD	A,(PLYPS2)
	LD	HL,PLDSYD
	ADD	A,(HL)
	LD	HL,WORK0
	ADD	A,(HL)
	LD	(HL),A
;
	LD	A,(WORK2)
	CP	$FF
	JR	Z,DSD1
;
	LD	A,(HL)
	LD	(DE),A
DSD1
	LD	A,(WORK3)
	CP	$FF
	JR	Z,DSD2
;
	LD	A,(HL)
	LD	(BC),A
DSD2
	INC	DE
	INC	BC
;
	LD	A,(WORK1)
	LD	HL,PLXPSL
	ADD	A,(HL)
	LD	(DE),A
	ADD	A,$08
	LD	(BC),A
	INC	DE
	INC	BC
;
	LD	A,(WORK2)
	LD	(DE),A
	LD	A,(WORK3)
	LD	(BC),A
	INC	DE
	INC	BC
;
	LD	A,(WORK4)
	LD	(DE),A
	LD	A,(WORK5)
	LD	(BC),A
	RET
;=================================
PRSXAD
	DB	$04,$FC,$FC,$04
;;	DB	$0C,$F4,$FC,$04
PRSYAD
	DB	$04,$04,$FC,$04
;;	DB	$04,$04,$F4,$0C
;PRSXSD
;	DB	$40,$C0,$00,$00
;PRSYSD
;	DB	$00,$00,$C0,$40
;- - - - - - - - - - - - - - - -
PRTBMSTS
	LD	A,(PLCMKI)
	LD	C,A
	LD	B,$00
;
	LD	HL,PRSXAD
	ADD	HL,BC
;
	LD	A,(PLXPSL)
	ADD	A,(HL)
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,PRSYAD
	ADD	HL,BC
;
	LD	A,(PLYPSL)
	ADD	A,(HL)
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),A
;
;	LD	A,(PLZPSL)
;	INC	A
;	LD	HL,ENZPSL
;	ADD	HL,DE
;	LD	(HL),A
;
	LD	HL,ENCHPT
	ADD	HL,DE
	LD	(HL),D
;
	JP	TLSDST
;
;	LD	HL,PRSXSD
;	ADD	HL,BC
;;
;	LD 	A,(HL)
;	LD	HL,ENXSPD
;	ADD	HL,DE
;	LD	(HL),A
;;
;	LD	HL,PRSYSD
;	ADD	HL,BC
;;
;	LD 	A,(HL)
;	LD	HL,ENYSPD
;	ADD	HL,DE
;	LD	(HL),A
;	RET
;###############################################
;#					       #
;###############################################
BLOCKST
	PUSH	BC
	PUSH	DE
;
	LD	A,(ENHELP)
	CP	$40
	JR	Z,BLKS10
;
	LD	A,(SKEYF)
	AND	A
	JR	Z,BLS090
;
	DEC	A
	LD	(SKEYF),A
;
	CALL	DJITRV	;Display buffer -> Main buffer!
	CALL	DORSDST	;(S)
;
	CALL	SVDTSB
	LD	A,(HL)
	OR	%01000000
	LD	(HL),A
	LD	(DJSVBF),A	
;
	LD	A,(WORK4)
	AND	$F0
	LD	(OBJXP),A
	SWAP	A
	LD	E,A
	LD	A,(WORK5)
	AND	$F0
	LD	(OBJYP),A
	OR	E
	LD	E,A
	LD	D,$00
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
	LD	A,SMK1
	CALL	EXIDSH
;
	JP	BLS090
BLKS10
	LD	A,BLOCK
	CALL	ENIDSHL
	JR	C,BLS090
;
	LD	HL,ENMODE
	ADD	HL,DE
	DEC	(HL)	; EINIT
;
	LD	A,(WORK4)
	AND	$F0
	ADD	A,$08
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	A,(WORK5)
	AND	$F0
	ADD	A,$10
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),A
BLS090
	POP	DE
	POP	BC
	RET
;============================
DORSDST	;ドアオープン
	LD	A,$04
	LD	(SOUND3),A	;(S)
	RET
;===============================================
;=					       =
;===============================================
KEYSMST
	PUSH	BC
;
		LD	A,(DNJNNO)
		CP	NEWDJ		;服のダンジョン？
		LD	A,KEYSM
		JR	Z,KSS001	;	YES --> KSS001
;
	LD	A,(DNJNNO)
	CP	DJMAX
	LD	A,KEYSM
	JR	C,KSS001	;城はっぱ？
;				;yes !
	LD	A,KAKIN
KSS001
	CALL	ENIDSHL
	JR	C,KSS090
;
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),$28 ;A
;
		LD	A,(DNJNNO)
		CP	NEWDJ		;服のダンジョン？
		JR	NZ,KSS001_00	;	NO --> KSS001_00
		LD	(HL),$048
		LD	A,(GRNDPT)
		CP	$008
		JR	NZ,KSS001_00
		LD	(HL),$058
KSS001_00
;
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),$3C  ;A
;
		LD	A,(DNJNNO)
		CP	NEWDJ		;服のダンジョン？
		JR	NZ,KSS001_01	;	NO --> KSS001_01
		LD	(HL),$03C
		LD	A,(GRNDPT)
		CP	$008
		JR	NZ,KSS001_01
		LD	(HL),$03C
KSS001_01
;
	LD	HL,ENZPSL
	ADD	HL,DE
	LD	(HL),$70  ;A
KSS090
	POP	BC
	RET
;****************************************
;*      EXSTRA                          *
;****************************************
TESTRD
	DB	$30,$33,$81,$01,$28,$56,$68,$87,$B3,$E6,$0A
TESTRN
	DB	$01,$01,$04,$00,$01,$02,$03,$04,$05,$06,$07
;
EXSTRA
	XOR	A
	LD	(DJRMSV),A	; ダンジョンマップ外部屋使用クリアー
	LD	(DJRMSV+$100),A
;
	LD	A,(MSOFTM)
	AND	A
	JR	Z,EX10010	;メッセージ連続防止タイム
;
	DEC	A
	LD	(MSOFTM),A
EX10010
	LD	A,(MSOFTM2)
	AND	A
	JR	Z,EX10020	;メッセージ連続防止タイム
;				;プリンタ専用
	DEC	A
	LD	(MSOFTM2),A
EX10020
	LD	A,(KEYA1)
	AND	%00100000
	JR	Z,EXS010
;
	LD	A,(KEYA2)
	AND	%01000000
	JR	EXS010
;
	LD	A,DNJ
	LD	(NXRMMD),A
;
	LD	A,(TESTMD)
	LD	E,A
	INC	A
	CP	$0B
	JR	C,EXS008
	XOR	A
EXS008
	LD	(TESTMD),A
	LD	D,$00
	LD	HL,TESTRD
	ADD	HL,DE
	LD	A,(HL)
	LD	(NXRMNO),A
	LD	HL,TESTRN
	ADD	HL,DE
	LD	A,(HL)
	LD	(NXDJNO),A
;
	LD	A,$50
	LD	(NXRMPX),A
	LD	A,$70
	LD	(NXRMPY),A
;
	LD	HL,SOUND1
	LD	(HL),$02	;(S)
;
	JP	NXGOTO
;
EXS010
;
;
;
;
	LD	B,$0
	LD	C,<EXNO-1
EX0000
	LD	A,C
	LD	(INDEX),A
;
	LD	HL,EXMODE
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,EXSRET
;
	CALL	EXMAIN
EXSRET
	DEC	C
	LD	A,C
	CP	$FF
	JR	NZ,EX0000
;
;;	CALL	BELTCK
;--------------------------------------------
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	Dundeon 階段 Hit check 			%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
	LD	A,(SCRLFG)
	AND	A
	JR	NZ,EXC00A0
;
	LD	A,(EXITFG)
	AND	A
	JR	Z,EXC00A0	; Exit on ?
;				; Yes !
	CP	$01
	JR	NZ,EXC1000
;===========================================
EXC0000
	LD	HL,EXITXP
	LD	A,(PLXPSL)	
	SUB	(HL)
	ADD	A,$04+2
	CP	$08+2+2
	JR	NC,EXC0090
;
	LD	HL,EXITYP
	LD	A,(PLYPSL)	
	SUB	(HL)
	ADD	A,$04+2
	CP	$08+2+2
	JR	C,EXC00A0
EXC0090
	LD	A,(EXITFG)
	INC	A
	LD	(EXITFG),A
EXC00A0
	RET
;===========================================
EXC1000
	LD	A,(PLZPSL)
	AND	A
	JR	NZ,EXC1090
;
	LD	HL,EXITXP
	LD	A,(PLXPSL)	
	SUB	(HL)
	ADD	A,$03+2
	CP	$06+2+2
	JR	NC,EXC1090
;
	LD	HL,EXITYP
	LD	A,(PLYPSL)	
	SUB	(HL)
	ADD	A,$03+2
	CP	$06+2+2
	JR	NC,EXC1090
;
	LD	A,(PLCAMD)
	AND	A
	JR	NZ,EXC1090
;
		LD	A,(GRNDPT)
		CP	$077		;墓場の右下？
		JR	NZ,EXC1090_PASS	;	NO --> EXC1090_PASS
		LD	A,(DJFLAG)
		AND	A		;ダンジョンの中？
		JR	NZ,EXC1090_PASS	;	YES --> EXC1090_PASS
		LD	A,(HAKAFG)
		CP	$80
		JR	NZ,EXC1090
EXC1090_PASS
;
	CALL	NXGOTO2 ;ダンジョン階段BG変化なし！
;
	XOR	A
	LD	(EXITFG),A
EXC1090
	RET
;
;===========================================
;=	効果関係の処理			   =
;===========================================
EXMAIN
	PUSH	AF
;
	LD	A,(SCRLFG)
	AND	A
	JR	NZ,EXM008
;
	LD	HL,EXTIM0
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,EXM010
	DEC	A
	LD	(HL),A
	LD	(WORK0),A
	JR	NZ,EXM010
;
;;	XOR	A
;;	LD	HL,EXMODE
;;	ADD	HL,BC
;;	LD	(HL),A
EXM008
	CALL	EXCLER
EXM010
	POP	AF
	DEC	A
	RST	0
	DW	WATRUP	; Mizu shibuki !
	DW	SMOKE1	; Smoke
	DW	SMOKET	; Smoke with takara !
	DW	SMOKEK	; Smoke with kaidan !
	DW	FLASH	;
	DW	RENOZNZ	; Reno beam zanzoo !
	DW	KNPWFL  ; Ken power up demo flash !
	DW	HNSMOK  ; Enemy hanekairi smoke !
	DW	KYOPEN1	; Ground key door open BG write 1
	DW	BFZNZO	; Big fire boss zanzoo !
	DW	DSZNZO	; Player dush zanzoo !
	DW	WATRUP2	; Mizu shibuki !(浅瀬用)
	DW	KBZANZ	;剣ビーム残像！
;- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
WTUP	EQU	$1
SMK1	EQU	$2
SMKT	EQU	$3
SMKK	EQU	$4
FLSH	EQU	$5
RZNZ	EQU	$6
KPWF	EQU	$7
HNSM	EQU	$8
KOP1	EQU	$9
BFZN	EQU	$A
DSZN	EQU	$B
WTUP2	EQU	$C
KZNZ 	EQU	$D
;===================================
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%				        %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;===================================
KBZNZCD
;0
	DB	$00,$00,$08,$20
	DB	$00,$08,$06,$20
;1
	DB	$00,$00,$06,$00
	DB	$00,$08,$08,$00
;2
	DB	$00,$04,$04,$40
	DB	$00,$04,$04,$40
;3
	DB	$00,$04,$04,$00
	DB	$00,$04,$04,$00
KBZNZCD2
;0
	DB	$00,$00,$08,$30
	DB	$00,$08,$06,$30
;1
	DB	$00,$00,$06,$10
	DB	$00,$08,$08,$10
;2
	DB	$00,$04,$04,$50
	DB	$00,$04,$04,$50
;3
	DB	$00,$04,$04,$10
	DB	$00,$04,$04,$10
;
KBZANZ
	LD	A,(FRCNT)
	XOR	C
	AND	$01
	RET	Z
;
	CALL	EXOMCK
;
;;	LD	A,(WORK0)		
	LD	HL,EXSTAT
	ADD	HL,BC
	LD	A,(HL)
	RLA
	RLA
	RLA
	AND	%11111000
	LD	E,A
	LD	D,B
;;	RL	A
;;	AND	%00001000
;;	LD	D,$0
;;	LD	E,A
	LD	HL,KBZNZCD
	LD	A,(FRCNT)
	AND	$02
	JR	Z,KBZ010
	LD	HL,KBZNZCD2
KBZ010
	JP	EXOMSB
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	Big fire zanzoo		        %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
BFZXAD
	DB	$F8,$00,$08,$10
BFZCDT
	DB	$6C,$6E,$6E,$6C
BFZADT
	DB	$00,$00,$20,$20
;- - - - - - - - - - - - - - - - -
BFZNZO
	CALL	EXOMCK
;
	LD	A,(ENOMID)
	LD	E,A
	LD	D,$0
	LD	HL,ENOAM
	ADD	HL,DE
;
		ld	e,l
		ld	d,h
;;;KK;;;	PUSH	HL
;;;KK;;;	POP	DE
;
	PUSH	BC
;
	LD	C,$04
BFZ010
	LD	A,(WORK1)
	LD	(DE),A
	INC	DE	
;
	LD	A,(WORK2)
	LD	HL,BFZXAD-1
	ADD	HL,BC
	ADD	A,(HL)
	LD	(DE),A
	INC	DE	
;
	LD	HL,BFZCDT-1
	ADD	HL,BC
	LD	A,(HL)
	LD	(DE),A
	INC	DE
;
	LD	HL,BFZADT-1
	ADD	HL,BC
	LD	A,(HL)
	LD	(DE),A
	INC	DE
;
	DEC	C
	JR	NZ,BFZ010
;
	POP	BC
;
	LD	A,$04
		jp	EXOMNX
;;;KK;;;	CALL	EXOMNX
;;;KK;;;	RET
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%				        %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
KYO1CD
	DB	$7E,$1F
	DB	$0C,$1F
;- - - - - - - - - - - - - - - - - - - - - -
KYOPEN1
	LD	A,$02
	LD	(PLSTOP),A
	LD	(ITEMNOT),A
;
	XOR	A
	LD	(TILTXD),A
;
;;	LD	HL,EXTIM0
;;	ADD	HL,BC
;;	LD	A,(HL)
	LD	A,(WORK0)
	CP	$02
	JR	NC,WW222
;
	LD	HL,ITEMNOT
	LD	(HL),B
WW222
	CP	$DE ;18+$BE
	JR	NZ,QQQQ11
;
;;	CALL	SOUNDCLR	;(S)
	CALL	DORSDST	;(S)
	LD	A,$DE ;18+$BE
QQQQ11
	CP	$A0 ;18+$91
	JR	NZ,QQQQ22
;
	LD	HL,SOUND3
	LD	(HL),$2A	;(S)
QQQQ22
	CP	$0A
	JR	NZ,KYO078
;
	LD	A,$50
	LD	(BGMSTM),A	;(S)BGM時間差セット！
;	LD	A,(TODYFG)
;	LD	(SOUND4),A	;(S)
;;
	LD	A,$0A
KYO078
	CP	$20
	JR	C,KYOPEN10
	CP	$9C
	RET	NC
;
	LD	E,$01
	AND	$04
	JR	Z,KYOPEN08
	LD	E,$FE
KYOPEN08
	LD	A,E
	LD	(TILTXD),A
	RET
;
KYOPEN10
	AND	$0F
	CP	$08
	JP	NZ,KYO190
;
;;	CALL	DORSDST	;(S)
;
	LD	A,(WORK0) ;HL)
	RRA
	RRA
	RRA
	AND	$02
	LD	E,A
	LD	D,B
	LD	HL,KYO1CD
	ADD	HL,DE
	LD	A,(HLI)
	LD	(WORK0),A
	LD	A,(HL)
	LD	(WORK1),A
;
	LD	A,$60
;;	LD	A,$50
	LD	(OBJXP),A
;
	LD	A,(GRNDPT)
	CP	$B5
	LD	A,$10
	JR	NZ,KYOP100
;
	LD	A,$60
	LD	(OBJXP),A
;
	LD	A,$10
KYOP100
	LD	(OBJYP),A
;
	CALL	OBJBG
;
	LD	A,(VRAMD)
	LD	E,A
	LD	D,B
;
	LD	HL,VRAMD+1
	ADD	HL,DE
;
	LD	A,(VRAMH)
	LD	(HLI),A
	LD	A,(VRAML)
	LD	(HLI),A
	LD	A,$41
	LD	(HLI),A
	LD	A,(WORK0)
	LD	(HLI),A
;
	LD	A,(VRAMH)
	LD	(HLI),A
	LD	A,(VRAML)
	ADD	A,$20
	LD	(HLI),A
	LD	A,$41
	LD	(HLI),A
	LD	A,(WORK1)
	LD	(HLI),A
;
	LD	(HL),B
;
	LD	A,E
	ADD	A,$8
	LD	(VRAMD),A
;
	LD	HL,EXTIM0
	ADD	HL,BC
	LD	A,(HL)
	CP	$08
	JR	NZ,KYO190
;
	LD	HL,BGUNDT+$11+$16
;;	LD	HL,BGUNDT+$11+$15
;
	LD	A,(GRNDPT)
	CP	$B5
	JR	NZ,KYOP110
;
	LD	HL,BGUNDT+$11+$16
;;	LD	HL,BGUNDT+$11+$26
KYOP110
	LD	(HL),ANA02

;--------------------------------------------
;	Ｌ１ 入り口（出現時）
;--------------------------------------------
		LD	A,$02|UNIT_TRAN_BIT
		CALL	Unit_change	; バンク２ユニット書き換え
;--------------------------------------------
;
;	LD	HL,GRRMSV
;	LD	A,(GRNDPT)
;	LD	E,A
;	LD	D,$00
;	ADD	HL,DE
;;
;	LD	A,(HL)
;	OR	%00010000
;	LD	(HL),A
;	LD	(DJSVBF),A	; Save data buffer set !
;
	LD	A,$23
	LD	(SOUND1),A	;(S)
;
;	LD	A,(TODYFG)
;	LD	(SOUND4),A	;(S)
;
;	LD	A,(GRNDPT)
;	CP	$D3
;	JR	NZ,KYO190	;レベル１鍵開け？
;;
;	LD	A,FUKURO	;yes !
;	CALL	ENIDSHL		;ふくろうセット！
;;
;	LD	HL,ENXPSL
;	ADD	HL,DE
;	LD	(HL),$10
;;
;	LD	HL,ENYPSL
;	ADD	HL,DE
;	LD	(HL),$10
KYO190
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%				        %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;===================================
DSZNCD
	DB	$00,$04,$24,$01
	DB	$00,$04,$24,$01
;
	DB	$00,$00,$1E,$01
	DB	$00,$08,$1E,$61
;
;
DSZNZO
	CALL	EXOMCK
;
	LD	A,(WORK0)		
;;	RL	A
	AND	%00001000
	LD	D,$0
	LD	E,A
	LD	HL,DSZNCD
;
	LD	A,(DUSHFG)
	AND	A
	JP	NZ,EXOMSB
;
	ADD	HL,DE
;
	LD	DE,OAM+$00
;
	CALL	WUPCSB
	JP	WUPCSB
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	パワーＵＰした剣で切られたときに敵が吹っ飛んで行く時の煙	%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;===================================
HNSMCD
	DB	$00,$00,$1E,$01
	DB	$00,$08,$1E,$61
;
	DB	$00,$00,$30,$01
	DB	$00,$08,$30,$61
;
;
HNSMOK
	CALL	EXOMCK
;
	LD	A,(WORK0)		
	AND	%00001000
	LD	D,$0
	LD	E,A
	LD	HL,HNSMCD
	JP	EXOMSB
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%				        %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
KNPFXD
	DB	$01,$FF,$01,$FF
KNPFYD
	DB	$01,$01,$FF,$FF
;- - - - - - - - - - - - - - - - - -
KNPWFL
	LD	A,(WORK0)
	CP	$0A
	JR	C,KPWF10
;
	LD	HL,EXSTAT
	ADD	HL,BC
	LD	E,(HL)
	LD	D,B
;
	LD	HL,KNPFXD
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,EXXPSL
	ADD	HL,BC
	ADD	A,(HL)
	LD	(HL),A
	LD	HL,KNPFYD
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,EXYPSL
	ADD	HL,BC
	ADD	A,(HL)
	LD	(HL),A
;
KPWF10
	CALL	EXOMCK
;
	PUSH	BC
;
	LD	C,$3A
	LD	A,(WORK0)
	CP	$07
	JR	NC,KPWF20
;
	LD	C,$3C
KPWF20
	LD	A,(ENOMID)
	LD	E,A
	LD	D,$0
	LD	HL,ENOAM
	ADD	HL,DE
;
	LD	A,(WORK1)
	LD	(HLI),A
	LD	A,(WORK2)
	LD	(HLI),A
	LD	A,C
	LD	(HLI),A
;
	XOR	A
	LD	(HLI),A
;
	LD	A,(WORK1)
	LD	(HLI),A
	LD	A,(WORK2)
	ADD	A,$08
	LD	(HLI),A
	LD	A,C
	LD	(HLI),A
;
	LD	(HL),$20
;
	POP	BC
;
	LD	A,$02
		jp	EXOMNX
;;;KK;;;	CALL	EXOMNX
;;;KK;;;	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%				        %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
RENOZNZ
	CALL	EXOMCK
;
	LD	A,(ENOMID)
	LD	E,A
	LD	D,$0
	LD	HL,ENOAM
	ADD	HL,DE
;
	LD	A,(WORK1)
	LD	(HLI),A
	LD	A,(WORK2)
	LD	(HLI),A
	LD	A,$24
	LD	(HLI),A
	LD	A,(FRCNT)
	XOR	C
	RL	A
	RL	A
	RL	A
	RL	A
	AND	$10
	LD	(HL),A
;
	LD	A,$01
		jp	EXOMNX
;;;KK;;;	CALL	EXOMNX
;;;KK;;;	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%				        %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;===================================
FLSCHD
	DB	$00,$FF,$3C,$00
	DB	$00,$07,$3C,$20
;
	DB	$00,$FF,$3A,$00
	DB	$00,$07,$3A,$20
;
FLASH
	CALL	EXOMCK
;
	LD	A,(WORK0)		
	AND	%00001000
	LD	D,$0
	LD	E,A
	LD	HL,FLSCHD
	JP	EXOMSB
;===================================
WUPCHD
	DB	$F6,$FE,$18,$00
	DB	$F8,$0A,$18,$20
;
	DB	$FC,$00,$18,$00
	DB	$FE,$08,$18,$20
WUPCHD2
	DB	$00,$FA,$18,$00
	DB	$00,$0E,$18,$20
;
	DB	$02,$FC,$18,$00
	DB	$02,$0C,$18,$20
;
WATRUP2
	CALL	EXOMCK
;
	LD	HL,WUPCHD2
	JR	WATRUPSB
;
WATRUP
	CALL	EXOMCK
;
	LD	A,(TOGEFG)
	CP	$02
	JP	Z,YOGANUP  ; Yogan ?
;				; No
	LD	HL,WUPCHD
WATRUPSB
	LD	A,(WORK0)		
	AND	%00001000
	LD	E,A
	LD	D,$00
EXOMSB
	ADD	HL,DE
	PUSH	HL
;
	LD	A,(ENOMID)
	LD	E,A
	LD	D,$0
	LD	HL,ENOAM
	ADD	HL,DE
		ld	e,l
		ld	d,h
;;;KK;;;	PUSH	HL
;;;KK;;;	POP	DE
;
	POP	HL
;
	CALL	WUPCSB
	CALL	WUPCSB
;
	LD	A,$02
		jp	EXOMNX   ;Next OAM index calc !    
;;;KK;;;	CALL	EXOMNX   ;Next OAM index calc !    
;;;KK;;;	RET
;------------------------------------
WUPCSB
	LD	A,(WORK1)
	ADD	A,(HL)
	LD	(DE),A
	INC	HL
	INC	DE
;
	LD	A,(WORK2)
	ADD	A,(HL)
	LD	(DE),A
	INC	HL
	INC	DE
;
	LD	A,(HLI)
	LD	(DE),A
	INC	DE
;
	LD	A,(HLI)
	LD	(DE),A
	INC	DE
	RET
;===================================
YOGANCD
	DB	$00,$00,$7A,$00
	DB	$00,$08,$7A,$20
;
	DB	$00,$00,$78,$00
	DB	$00,$08,$78,$20
;
YOGANUP
	LD	A,(WORK0)		
	AND	%00001000
	LD	D,$0
	LD	E,A
	LD	HL,YOGANCD
	JP	EXOMSB
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%				        %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;===================================
SM1CHD
	DB	$00,$00,$32,$01
	DB	$00,$08,$32,$21
;
	DB	$00,$00,$32,$01
	DB	$00,$08,$32,$21
;
	DB	$00,$00,$30,$01
	DB	$00,$08,$30,$21
;
	DB	$00,$00,$30,$01
	DB	$00,$08,$30,$21
;
SMOKE1
SMOKET
SMOKEK
	CALL	EXOMCK
;
	LD	A,(WORK0)
	CP	$4
	JR	NZ,SM0010	; Near end ?	
;				; yes !
	LD	HL,EXMODE
	ADD	HL,BC
	LD	A,(HL)
	CP	SMKT
	JR	NZ,SM0010	; with TAKARA BOX ?
;				; yes ! TAKARA SET !
	CALL	TAKRSET
	JR	SM0020
SM0010
	CP	SMKK
	JR	NZ,SM0020	; with KAIDAN ?
;				; yes !  SET !
	CALL	KAIDSET
SM0020
	LD	A,(WORK0)		
	RLA
	AND	%00011000
	LD	D,$0
	LD	E,A
	LD	HL,SM1CHD
	JP	EXOMSB
;===================================
EXOMCK
	LD	HL,EXYPSL
	ADD	HL,BC
	LD	A,(HL)
	LD	(WORK1),A
	CP	$88
	JR	NC,EXCLER
;
	LD	HL,EXXPSL
	ADD	HL,BC
	LD	A,(HL)
	LD	(WORK2),A
	CP	$A8
	JR	C,EXORET
EXCLER
	LD	HL,EXMODE
	ADD	HL,BC
	XOR	A
	LD	(HL),A
EXORET
	RET
;===================================
EXRNDD
	DB	$00,$08,$10,$18
	DB	$20,$28,$30,$38
;
EXOMNX
	SLA	A
	SLA	A
	LD	E,A
;
	LD	A,(ENOMID)
	ADD	A,E   ;$08
	CP	$60
	JR	C,EXO0001
;
;;;	XOR	A
	SUB	$60
EXO0001
	LD	(ENOMID),A
;
	LD	A,(ENOMIS)
	ADD	A,E
	LD	(ENOMIS),A
	CP	$60
	JR	C,EXC078	; Set over ?
;				; yes ! randam set !
	LD	A,(FRCNT)
	LD	HL,INDEX
	ADD	A,(HL)
	AND	$07
	LD	E,A
	LD	D,$0
	LD	HL,EXRNDD
	ADD	HL,DE
	LD	A,(HL)
	LD	(ENOMID),A
EXC078
	RET
;===================OLD =
;EXOMNX  ;SB
;	SLA	A
;	SLA	A
;	LD	E,A
;;
;	LD	A,(ENOMID)
;	ADD	A,E   ;$08
;	CP	$A0-$30
;	JR	C,EXC078
;;
;	LD	A,(FRCNT)
;	LD	HL,INDEX
;	ADD	A,(HL)
;	AND	$07
;	LD	E,A
;	LD	D,$0
;	LD	HL,EXRNDD
;	ADD	HL,DE
;	LD	A,(HL)
;EXC078
;	LD	(ENOMID),A
;	RET
;===================================
WUPSET
	LD	A,(PLYPSL)
WUPSET2
	LD	(WORK1),A
	LD	A,(PLXPSL)
	LD	(WORK0),A
;
	LD	A,$0E
	LD	(SOUND1),A	;(S)
;
	LD	A,WTUP
		jp	EXIDSH
;;;KK;;;	CALL	EXIDSH
;;;KK;;;	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%						    %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
DRSBIT
	DB	%11111110
	DB	%11111101
	DB	%11111011
	DB	%11110111
;
DOORSUB
	LD	HL,MSGEFG
	LD	A,(SCRLFG)
;;	AND	A
	OR	(HL)
	LD	HL,WNDFLG
	OR	(HL)
	JR	NZ,DRS080
;
	LD	A,(DJFLAG)
	AND	A
	JR	Z,DRS080
;
	CALL	NAZOCK	; Room question check !
;
	LD	A,(DROPFG)
	AND	A
	JR	Z,DRS090
;
;;	LD	(ENSTFG),A
	CP	$02
	LD	A,$01
	LD	(PLSTOP),A
	JR	Z,DRSB10
;
	CALL	DRSUB
	JR	DRSB20
;
DRSB10
	CALL	SHTDOWN
DRSB20
;;;	POP	AF
DRS080
	RET
;----------------------------------
DRS090
	LD	A,(SHOPEN)
	AND	A
	JR	Z,DRS0B0
;
	LD	E,$4-1
;
	LD	A,(SHSTCT)
	LD	C,A
DRS050
	INC	E
	LD	A,E
	CP	$08
	JR	Z,DRS0A0
;
	SRL	C
	JR	NC,DRS050
;
	LD	D,$00
	LD	HL,DRSBIT-$4
	ADD	HL,DE
	LD	A,(SHSTCT)
	AND	(HL)
	LD	(SHSTCT),A
;
	LD	A,E
	LD	(DROPMD),A
	XOR	A
	LD	(INCNT),A
	INC	A
	LD	(DROPFG),A
	RET
DRS0A0
	XOR	A
	LD	(SHOPEN),A
	RET
DRS0B0
	LD	A,(SHSHUT)
	AND	A
	JR	NZ,DSH020
	RET
;======================================
DSH020				; Shuter shut !!
	LD	E,$4-1
;
	LD	A,(SHSTCT2)
	LD	C,A
DSH050
	INC	E
	LD	A,E
	CP	$08
	JR	Z,DSH0A0
;
	SRL	C
	JR	NC,DSH050
;
	LD	D,$00
	LD	HL,DRSBIT-$4
	ADD	HL,DE
	LD	A,(SHSTCT2)
	AND	(HL)
	LD	(SHSTCT2),A
;
	LD	A,E
	LD	(DROPMD),A
	LD	A,$2
	LD	(DROPFG),A
	XOR	A
	LD	(INCNT),A
DSH080
	RET
DSH0A0
	XOR	A
	LD	(SHSHUT),A
	RET
;
;====================================
;===================================
;;;;;/柴原さっさとやらんかああああああ
HANBN
	DB	$50,$51,$13,$12
	DB	$11,$10,$42,$43   ;+4
	DB	$45,$13,$55,$11   ;+8
	DB	$12,$46,$10,$56   ;+C
;
	DB	$58,$59,$13,$12   ;+10
	DB	$11,$10,$4A,$4B   ;+14
	DB	$4D,$13,$5D,$11   ;+18
	DB	$12,$4E,$10,$5E   ;+1C
;
	DB	$02,$03,$13,$12   ;+20
;-----------------------------------
	DB	$11,$10,$13,$12   ;+24
	DB	$11,$10,$13,$12   ;+28
	DB	$12,$13,$10,$11   ;+2C
	DB	$12,$13,$10,$11   ;+30
;
	DB	$11,$10,$13,$12   ;+34
	DB	$11,$10,$13,$12   ;+38
	DB	$12,$13,$10,$11   ;+3C
	DB	$12,$13,$10,$11   ;+40

	DB	$11,$10,$13,$12   ;+44 
;
OXZA
	DB	$08,$08,$00,$00,$08,$08,$00,$00,$08
	DB	$08,$08,$00,$00,$08,$08,$00,$00,$08
;;	DB	$48,$48,$00,$90,$48,$48,$00,$90,$48
;;	DB	$48,$48,$00,$90,$48,$48,$00,$90,$48
;
OYZA
	DB	$00,$00,$08,$08,$00,$00,$08,$08,$00
	DB	$08,$08,$10,$10,$08,$08,$10,$10,$08
;;	DB	$00,$70,$38,$38,$00,$70,$38,$38,$00
;;	DB	$08,$78,$40,$40,$08,$78,$40,$40,$08
;
UNTBL1
	DB	$00,$00,$00,$00,$00,$00,$00,$00
	DB	$01,$01,$10,$10,$01,$01,$10,$10
;;	DB	$04,$74,$30,$39,$04,$74,$30,$39
;;	DB	$05,$75,$40,$49,$05,$75,$40,$49
;
UNTBL2
	DB	DTU00,DTU02,DTU04,DTU06,DTU00,DTU02,DTU04,DTU06
	DB	DTU01,DTU03,DTU05,DTU07,DTU01,DTU03,DTU05,DTU07
;
DRSVBT
	DB	%00000100
	DB	%00001000
	DB	%00000010
	DB	%00000001
	DB	%00000100
	DB	%00001000
	DB	%00000010
	DB	%00000001
	DB	%00000100
DRSVAD
	DB	$F8
	DB	$08
	DB	$FF
	DB	$01
	DB	$F8
	DB	$08
	DB	$FF
	DB	$01
	DB	$F8
DRSVBT2
	DB	%00001000
	DB	%00000100
	DB	%00000001
	DB	%00000010
	DB	%00001000
	DB	%00000100
	DB	%00000001
	DB	%00000010
	DB	%00001000
;-------------------------------------
DRSUB
	LD	E,$0
	LD	D,E
	LD	C,E
	LD	B,E
	XOR	A
	LD	(WORKC),A
;;;	LD	(WORKD),A
	LD	(WORKE),A
;
	LD	A,(DROPMD)
	LD	C,A
	AND	A
	JR	Z,TOBE1
;
	XOR	A
DRLOP	
	ADD	A,$04
	LD	E,A
	LD	D,$0
	DEC	C
	JR	NZ,DRLOP
;
TOBE1
	LD	HL,OXZA
;
	LD	A,(DROPMD)
	LD	C,A
	LD	B,$0
	ADD	HL,BC
	LD	A,(HL)
;
	LD	HL,DROBPX
	ADD	HL,BC
	ADD	A,(HL)
;
	LD	(OBJXP),A
;
TOBE2
	LD	HL,OYZA
;
	LD	A,(WORKC)
	LD	C,A
	ADD	HL,BC
;
	LD	A,(DROPMD)
	LD	C,A
	ADD	HL,BC
	LD	A,(HL)
;
	LD	HL,DROBPY
	ADD	HL,BC
	ADD	A,(HL)
	LD	(OBJYP),A
;
	PUSH	DE
	CALL	OBJBG
;
	POP	DE
;
	LD	A,(WORKC)
	AND	A
	JR	Z,DRVSET
;
	INC	DE
	INC	DE
;
DRVSET
		LD	A,(CGBFLG)
		AND	A
		JR	Z,DRVSET_PASS
		PUSH	DE
		LD	A,$02
		LD	B,$00
		CALL	DR_AT_SetSub
		POP	DE
DRVSET_PASS
;
	LD	A,(VRAMD)
	LD	C,A
	LD	B,$00
	ADD	A,$05
	LD	(VRAMD),A
;
	LD	HL,VRAMD+1
	ADD	HL,BC
	LD	A,(VRAMH)
	LD	(HLI),A
;
	LD	A,(VRAML)
	LD	(HLI),A
;
	LD	A,$01
	LD	(HLI),A
;
	PUSH	HL
	LD	HL,HANBN
	ADD	HL,DE
	LD	A,(HL)
	POP	HL
;
	LD	(HLI),A
;
	PUSH	HL
	LD	HL,HANBN+1
	ADD	HL,DE
	LD	A,(HL)
	POP	HL
;
	LD	(HL),A
;
;==========================
	LD	A,(WORKC)
	AND	A
	JR	NZ,DREND
;
	LD	A,$09
	LD	(WORKC),A
	JP	TOBE2		
;
DREND
	XOR	A
	INC	HL
	LD	(HL),A	; END CODE !!!
;
	LD	A,(INCNT)
	ADD	A,$01
	LD	(INCNT),A
;
	LD	A,(INCNT)
	CP	$08
	JR	NC,DRCLER
;
	RET
;
DRCLER
	LD	A,(WORKE)
	AND	A
	JR	NZ,FDREND
;
	XOR	A
	LD	(WORKC),A
;
	LD	A,E
	ADD	A,$24
;
	LD	E,A
	LD	D,$0
	LD	(WORKE),A
;
	DEC	DE
	DEC	DE
	JP	TOBE2

FDREND
;
	XOR	A
	LD	(DROPFG),A
	LD	(ENSTFG),A
;--------------------------------------
DRUNCL
	XOR	A
	LD	(WORKE),A
	LD	A,(DROPMD)
	LD	C,A
	LD	B,$0
;
	LD	HL,DRUNPS
	ADD	HL,BC
	LD	A,(HL)
	LD	(WORK0),A
;
	LD	A,C
	AND	$07
	LD	C,A
DRU02
	LD	HL,UNTBL1
	ADD	HL,BC
	LD	A,(HL)
;
	LD	HL,WORK0
	ADD	A,(HL)
;
	LD	E,A
	LD	D,$0
;
	LD	HL,UNTBL2
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,BGUNDT+$11
	ADD	HL,DE
	LD	(HL),A
;
	LD	A,(WORKE)
	AND	A
	JR	NZ,DRSFIN
;
	LD	A,C
	ADD	A,$08
	LD	(WORKE),A
	LD	C,A
	JR	DRU02
;
DRSFIN
	CALL	SVDTSB
		ld	c,l
		ld	b,h
;;;KK;;;	PUSH	HL
;;;KK;;;	POP	BC
;
	LD	A,(DROPMD)
	LD	E,A
	LD	D,$0
	LD	HL,DRSVBT
	ADD	HL,DE
;
	LD	A,(BC)
	OR	(HL)
	LD	(BC),A
	LD	(DJSVBF),A	; Save data buffer set !
;- - Next room door open ! bit on - -
	LD	HL,DRSVAD
	ADD	HL,DE
	LD	A,(DNJNPT)
	ADD	A,(HL)
	LD	E,A
;
	CALL	DJRMRD	; In 0 bank (bank 9 data read)
;
		ld	c,l
		ld	b,h
;;;KK;;;	PUSH	HL
;;;KK;;;	POP	BC
;
	LD	A,(DROPMD)
	LD	E,A
	LD	D,$0
	LD	HL,DRSVBT2
	ADD	HL,DE
;
	LD	A,(BC)
	OR	(HL)
	LD	(BC),A
	RET
;=================================
SVDTSB
	LD	HL,GRRMSV
	LD	A,(GRNDPT)
	LD	E,A
;
	LD	A,(DJFLAG)
	LD	D,A
	AND	A
	JR	Z,DRC010
;
	LD	A,(DNJNNO)
;
		CP	NEWDJ		;新ダンジョン？
		JR	NZ,DRC010_PASS	;	NO --> DRC010_PASS
		LD	D,$000
		LD	HL,NEWDJRM	;新ダンジョンのセーブＲＡＭ
		JR	DRC010
DRC010_PASS
;
	CP	DJROOM2
	JR	NC,DRC010
	CP	DJROOM
	JR	C,DRC010
;
	INC	D
DRC010
	ADD	HL,DE
	RET
;$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
SHANBN
;-----------------------------------
	DB	$58,$59,$13,$12   ;上
	DB	$11,$10,$4A,$4B   ;下
	DB	$4D,$13,$5D,$11   ;左
	DB	$12,$4E,$10,$5E   ;右

;-----------------------------------
	DB	$40,$41,$58,$59   ;UP
	DB	$4A,$4B,$52,$53   ;DOWN
	DB	$44,$4D,$54,$5D   ;LEFT
	DB	$4E,$47,$5E,$57   ;RIGHT
;
;	DB	$48,$49,$58,$59   ;UP
;	DB	$4A,$4B,$5A,$5B   ;DOWN
;	DB	$4C,$4D,$5C,$5D   ;LEFT
;	DB	$4E,$4F,$5E,$5F   ;RIGHT
;-----------------------------------
SOXZA
	DB	$08,$08,$00,$00
	DB	$08,$08,$00,$00
;;	DB	$48,$48,$00,$90
;;	DB	$48,$48,$00,$90
;
SOYZA
	DB	$00,$00,$08,$08
	DB	$08,$08,$10,$10
;;	DB	$00,$70,$38,$38
;;	DB	$08,$78,$40,$40
;
SUNTBL1
	DB	$00,$00,$00,$00
	DB	$01,$01,$10,$10
;;	DB	$04,$74,$30,$39
;;	DB	$05,$75,$40,$49
;
SUNTBL2
	DB	DSHI0,DSHI2,DSHI4,DSHI6
	DB	DSHI1,DSHI3,DSHI5,DSHI7
;;;;
;	DB	DNC00,DNC00,DNC02,DNC02
;	DB	DNC01,DNC01,DNC03,DNC03
;-------------------------------------
SHTDOWN
	LD	E,$0
	LD	D,E
	LD	C,E
	LD	B,E
	XOR	A
	LD	(WORKC),A
	LD	(WORKD),A
	LD	(WORKE),A
;
	LD	A,(DROPMD)
	SUB	$04
	JR	Z,SHTD2
;
	LD	C,A
	XOR	A
SHTLOP	
	ADD	A,$04
	LD	E,A
	LD	D,$0
	DEC	C
	JR	NZ,SHTLOP
;
SHTD2
	LD	HL,SOXZA-4
;
	LD	A,(DROPMD)
	LD	C,A
	LD	B,$0
	ADD	HL,BC
	LD	A,(HL)
;
	LD	HL,DROBPX
	ADD	HL,BC
	ADD	A,(HL)
;
	LD	(OBJXP),A
;
SHTD3
	LD	HL,SOYZA-4
;
	LD	A,(WORKC)
	LD	C,A
	ADD	HL,BC
;
	LD	A,(DROPMD)
	LD	C,A
	ADD	HL,BC
	LD	A,(HL)
;
	LD	HL,DROBPY
	ADD	HL,BC
	ADD	A,(HL)
;
	LD	(OBJYP),A
;
	LD	A,(PLITYS)
	SUB	$10
	LD	HL,OBJYP
	SUB	(HL)
	ADD	A,$10
	CP	$20
	JR	NC,SDPS10	;シャッターに密着？
;
	LD	A,(PLITXS)
	SUB	$08
	LD	HL,OBJXP
	SUB	(HL)
	ADD	A,$10
	CP	$20
	JR	NC,SDPS10
;				;YES !
	LD	A,(PLXPSL)	;Fail down next set position 
	LD	(PLITXS),A
	LD	A,(PLYPSL)
	LD	(PLITYS),A
SDPS10
	PUSH	DE
	CALL	OBJBG
;
	POP	DE
;
	LD	A,(WORKC)
	AND	A
	JR	Z,SHVSET
;
	INC	DE
	INC	DE

;
SHVSET
		LD	A,(CGBFLG)
		AND	A
		JR	Z,SHVSET_PASS
		PUSH	DE
		LD	A,$02
		LD	B,$01
		CALL	DR_AT_SetSub
		POP	DE
SHVSET_PASS
;
	LD	A,(VRAMD)
	LD	C,A
	LD	B,$00
	ADD	A,$05
	LD	(VRAMD),A
;
	LD	HL,VRAMD+1
	ADD	HL,BC
	LD	A,(VRAMH)
	LD	(HLI),A
;
	LD	A,(VRAML)
	LD	(HLI),A
;
	LD	A,$01
	LD	(HLI),A
;
	PUSH	HL
	LD	HL,SHANBN
	ADD	HL,DE
	LD	A,(HL)
	POP	HL
;
	LD	(HLI),A
;
	PUSH	HL
	LD	HL,SHANBN+1
	ADD	HL,DE
	LD	A,(HL)
	POP	HL
;
	LD	(HL),A
;
;;	LD	A,L
;;	LD	(WORKD),A
;==========================
	LD	A,(WORKC)
	AND	A
	JR	NZ,SHTEND
;
	LD	A,$04
	LD	(WORKC),A
	JP	SHTD3
;
SHTEND
	XOR	A
	INC	HL
	LD	(HL),A	; END CODE
;
	LD	A,(INCNT)
	ADD	A,$01
	LD	(INCNT),A
;
	LD	A,(INCNT)
	CP	$08
	JR	NC,SHTCLER
;
;	XOR	A
;	INC	HL
;	LD	(HL),A	; END CODE
;;
	RET
;
SHTCLER
	LD	A,(WORKE)
	AND	A
	JR	NZ,FSHTEND
;
	XOR	A
	LD	(WORKC),A
;
	LD	A,E
	ADD	A,$10
;
	LD	E,A
	LD	D,$0
	LD	(WORKE),A
;
	DEC	DE
	DEC	DE
	JP	SHTD3

FSHTEND
;
	XOR	A
	LD	(DROPFG),A
	LD	(ENSTFG),A
;--------------------------------------
SHTUNCL
	XOR	A
	LD	(WORKE),A
	LD	A,(DROPMD)
	SUB	$04
	LD	C,A
	LD	B,$0
;
	LD	HL,DRUNPS+4
	ADD	HL,BC
	LD	A,(HL)
	LD	(WORK0),A
SHTU02
	LD	HL,SUNTBL1
	ADD	HL,BC
	LD	A,(HL)
;
	LD	HL,WORK0
	ADD	A,(HL)
;
	LD	E,A
	LD	D,$0
;
	LD	HL,SUNTBL2
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,BGUNDT+$11
	ADD	HL,DE
	LD	(HL),A
;
	LD	A,(WORKE)
	AND	A
	JR	NZ,SHTSFIN
;
	LD	A,C
	ADD	A,$04
	LD	(WORKE),A
	LD	C,A
	JR	SHTU02
;
SHTSFIN
;- - Save data set - - - -
	LD	HL,GRRMSV
	LD	A,(DJFLAG)
	AND	A
	JR	Z,DRT010
	LD	HL,DJRMSV
;
		LD	A,(DNJNNO)
		CP	NEWDJ		;新ダンジョン？
		JR	NZ,DRT010	;	NO --> DRT010
		LD	HL,NEWDJRM	;新ダンジョンのセーブＲＡＭ
;
DRT010
	LD	A,(GRNDPT)
	LD	E,A
	LD	D,$00
	ADD	HL,DE
	PUSH	HL
;
	LD	A,(DROPMD)
	LD	E,A
	LD	D,$0
	LD	HL,DRSVBT
	ADD	HL,DE
	LD	A,(HL)
	CPL
	POP	HL
;
	AND	(HL)
	LD	(HL),A
	LD	(DJSVBF),A	; Save data buffer set !
;
	RET
;===================================
NAZOCK
	LD	A,(NAZOFG)
	AND	A
	JP	Z,KDS010F	; Nazo room ?
;				; yes !
	CALL	NAZOSUB
;
	LD	A,(NAZOFG)
	AND	%11100000
	SRL	A
	SRL	A
	SRL	A
	SRL	A
	SRL	A
	RST	0
	DW	NZRET 
	DW	SHUTCK	; Shutter open check 
	DW	ENALFLS	;敵全滅！
	DW	TAKRCK	; Takara set check !
	DW	KEYSET
	DW	KAIDST
	DW	SHUTCK2  ; Warp Set + Shutter open!
	DW	YOSEINZ	;妖精セット！
;=========================================================
ENALFLS
	CALL	NZSVCK
;
	LD	C,ENNO-1
	LD	B,$0
EOKS008
	LD	HL,ENMOD0
	ADD	HL,BC
	LD	A,(HL)
	AND	%10000000
	JR	NZ,EOKS010
;
	LD	HL,ENMODE
	ADD	HL,BC
	LD	A,(HL)
	CP	EMOVE
	JR	C,EOKS010
;
	LD	(HL),EFAIL ;A
;
	LD	HL,ENTIM4
	ADD	HL,BC
	LD	(HL),$1F ;A
;
	LD	HL,ENMOD0
	ADD	HL,BC
	LD	A,(HL)
	AND	%11110000
	OR	$2
	LD	(HL),A
;
	LD	A,$13
	LD	(SOUND3),A	;(S)
EOKS010
	DEC	C
	LD	A,C
	CP	$FF
	JR	NZ,EOKS008
	RET
;===========================================
NZSVCK
	LD	A,(DJSVBF)
	AND	%00010000
	JR	NZ,NZSC10
;
	LD	A,(NAZOCL)
	AND	A
	JR	Z,NZSC10
;
	XOR	A
	LD	(NAZOFG),A
	RET
NZSC10
	POP	AF
	RET
;				; no
;===========================================
YOSEINZ
	CALL	NZSVCK
;
	LD	A,YOSEI
	CALL	ENIDSHL
;
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),$88
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),$30
;
	LD	HL,ENTIM3
	ADD	HL,DE
	LD	(HL),$80
;
	LD	A,$88
	LD	(WORK0),A
	LD	A,$30
	LD	(WORK1),A
;
	LD	A,SMK1
	JP	EXSSAVE
;===========================================
KAIDST
	CALL	NZSVCK
;
;- - - Smoke set & KAIDAN SET- - - -
	LD	A,$88
	LD	(WORK0),A
	LD	A,$20
	LD	(WORK1),A
;
	LD	A,SMKK
EXSSAVE
	CALL	EXIDSH
;
	CALL	SVDTSB
	LD	A,(HL)
	OR	%00010000
	LD	(HL),A
	LD	(DJSVBF),A	; Save data buffer set !
KDS010F
	RET
;===========================================
KEYSET
	CALL	NZSVCK
;
	LD	A,(GRNDPT)
	CP	$69
	JR	NZ,KYSE10	;鍵が落ちる？(Lv.4)
;
	CALL	SVDTSB		;YES !
	LD	A,(HL)
	OR	%00010000
	LD	(HL),A
	LD	(DJSVBF),A	;したのへやに落ちる！
;
KYSE10
		jp	KEYSMST
;;;KK;;;	CALL	KEYSMST
;;;KK;;;KYS010
;;;KK;;;	RET
;===========================================
SHUTCK2
	LD	A,(DNJNNO)	; Yes !
	LD	E,A
	LD	D,$00
	LD	HL,WARPSV
	ADD	HL,DE
	LD	A,(HL)
	AND	%00000001
		ret	NZ
;;;KK;;;	JR	NZ,NZC008
;
SHUTCK
	LD	A,(SHUTFG)
	AND	A
	JR	NZ,NZC005
;
	CALL	NZC010
NZC005
	LD	A,(NAZOCL)
	AND	A
		ret	Z
;;;KK;;;	JR	Z,NZC008
;
	LD	A,(NAZOFG)
	CP	%11000001
	JR	NZ,NZC013	; Warp set ?
;
	LD	A,(DNJNNO)	; Yes !
	LD	E,A
	LD	D,$00
	LD	HL,WARPSV
	ADD	HL,DE
	LD	A,(HL)
	OR	%00000001
	LD	(HL),A
;
	LD	D,$00
	LD	A,(GRNDPT)
	LD	E,A
	LD	HL,DJRMSV
	LD	A,(DNJNNO)
;
		CP	NEWDJ		;新ダンジョン？
		JR	NZ,EXSS10_PASS	;	NO --> EXSS10_PASS
		LD	HL,NEWDJRM	;新ダンジョンのセーブＲＡＭ
		JR	EXSS10
EXSS10_PASS
;
	CP	DJROOM2
	JR	NC,EXSS10
	CP	DJROOM
	JR	C,EXSS10
	INC	D
EXSS10
	ADD	HL,DE
	SET	5,(HL)
;
	LD	A,$1B
	LD	(SOUND1),A	;(S)
;
NZC013
	LD	A,(SHUTFG)
	AND	A
		ret	Z
;;;KK;;;	JR	Z,NZC008
;
;;NZC013
	XOR	A
	LD	(NAZOFG),A
;
	LD	A,$1
	LD	(SHOPEN),A
;
		jp	DORSDST	;(S)
;;;KK;;;	CALL	DORSDST	;(S)
;;;KK;;;NZC008
;;;KK;;;	RET
;------------------------------------
NZC010
	LD	A,(PLXPSL)
	SUB	$11
	CP	$8F-$11
	JR	NC,NZC090	
;
	LD	A,(PLYPSL)
	SUB	$16
	CP	$74-$16
	JR	NC,NZC090	; Player in room ?
;				; yes !
	LD	A,(NAZOCL)
	AND	A
	JR	NZ,NZC090
;
	LD	A,$1
	LD	(SHSHUT),A	; Battan !
	LD	(SHUTFG),A
;
	LD	A,$04
	LD	(ENSTTM),A	; Enemy stop !!
;
	LD	A,$10
	LD	(SOUND3),A	;(S)
NZC090
	RET
;
;================================================================
;=	煙とともに出現する宝箱					=
;================================================================
TAKARCD
	DB	$60,$70,$61,$71
TAKARCD_CGB
	DB	$60,$70,$60,$70
TAKRCK
	CALL	NZSVCK
;
;- - - Smoke set & TAKARA SET- - - -
	LD	A,$88
	LD	(WORK0),A
;
	LD	A,(PLYPSL)
	SUB	$30
	ADD	A,$08
	CP	$10
	JR	NC,TKR210
	LD	A,(PLXPSL)
	SUB	$88
	ADD	A,$10
	CP	$20
	JR	NC,TKR210
;
	LD	A,$40
	JR	TKR220
TKR210
	LD	A,$30
TKR220
	LD	(WORK1),A
;
	LD	A,SMKT
		jp	EXIDSH
;;;KK;;;	CALL	EXIDSH
;;;KK;;;TKC010
;;;KK;;;	RET
;
;========================================================
;=	ＢＧ宝箱セット					=
;========================================================
TAKRSET
	LD	A,(PLYPSL)
	SUB	$30
	ADD	A,$08
	CP	$10
	JR	NC,TKRS10
	LD	A,(PLXPSL)
	SUB	$88
	ADD	A,$10
	CP	$20
	JR	NC,TKRS10
;
	LD	A,$30
	JR	TKRS20
TKRS10
	LD	A,$20
TKRS20
	LD	(OBJYP),A
;
	LD	A,$80
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
	LD	A,DTRE0
	LD	(HL),A
	LD	(UNTATR),A
;
	CALL	OBJBG
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
	LD	DE,TAKARCD
;
		LD	A,(CGBFLG)
		AND	A
		JR	Z,UNVRST
		LD	DE,TAKARCD_CGB
;
UNVRST
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
;
	XOR	A
	LD	(HL),A
;
;------------------------------ ＣＧＢ用アトリビュートセット
		LD	A,(CGBFLG)
		AND	A		;ＣＧＢモード？
		JR	Z,UNVRST_PASS	;	NO --> UNVRST_PASS
		PUSH	BC
		LD	A,$002
		CALL	BG1UNIT_ATR_SUB
		POP	BC
UNVRST_PASS
;------------------------------ ＣＧＢ用アトリビュートセット
;
	RET
;
;=========================================================
;=	ＢＧ階段セット					＝
;=========================================================
KAIDCD
	DB	$6A,$7A,$6B,$7B
	DB	$00,$00,$00,$00
;
KAIDSET
	LD	A,$01
	LD	(EXITFG),A	; Exit hit check set !
;
	LD	A,$10
	LD	(OBJYP),A
	ADD	A,$10
	LD	(EXITYP),A
;
	LD	A,$80
	LD	(OBJXP),A
	ADD	A,$08
	LD	(EXITXP),A
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
	LD	A,DTKD0
	LD	(HL),A
	LD	(UNTATR),A
;
	CALL	OBJBG
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
	LD	DE,KAIDCD
;;;KK;;;	JR	UNVRST
	JP	UNVRST
;
;===========================================
NAZOSUB
	AND	$1F
	LD	(WORK0),A
	DEC	A
	RST	0
	DW	ENALCK  ;1
	DW	BLOCKCK ;2
	DW	ONSWCK	;3 スイッチ踏む
	DW	NZRET 	;4 
	DW	TOUCK   ;5 トウロウ付ける
	DW	JUNBAN  ;6
	DW	BLHITCK ;7
	DW	ENALFOL ;8
	DW	PANELCK ;9 床パネル順番
	DW	BFISHCK ;A 魚ボス倒した！
	DW	KTNAGE  ;B 物をシャッターにぶつける！
	DW	NZRET 	;C サイコロ！
	DW	KTNAGE  ;D 物を宝箱にぶつける！
	DW	NZRET 	;E 床作りマシン全部埋めた？
	DW	NZRET 	;F メダマンは矢に弱い！
	DW	PZLCHK	;10 (注)服のダンジョン専用
BLOCKCK			; In enemy BLOCKMV !!
BLHITCK			; In enemy BLOCKMV !!
;====================================
KTNAGE
;====================================
PANELCK	; IN ENMY4
;;;	JP	NAZOCLR	;(S)
NZRET
	RET
;====================================
BFISHCK
	LD	A,(DNJNNO)
	CP	$06
	JR	NZ,BFCK010	;鳥ボス！
;
	LD	A,(DJRMSV+$1E8)
	JR	BFCK020
BFCK010
	LD	A,(DJRMSV+$FF)	;魚ボス！
BFCK020
	AND	%00100000
	JP	NZ,NAZOCLR	;(S)
	RET
;====================================
TOUCK	
	LD	A,(TOURCT)
	CP	$02
	JP	Z,NAZOCLR	;(S)
;
	RET
;====================================
ONSWCK
	LD	A,(SWCHTM)
	AND	A
	JP	NZ,NAZOCLR  ;(S) ONSWC10
;
	RET
;====================================
JUNBAN
	LD	C,$00
;
	LD	HL,ENFLBF
JB0008
	LD	A,(HLI)
	CP	C
		ret	NZ
;;;KK;;;	JR	NZ,JB0010
;
	INC	C
	LD	A,C
	CP	$3  ;10
	JR	NZ,JB0008
;
		jp	NAZOCLR	;(S)
;;;KK;;;	CALL	NAZOCLR	;(S)
;;;KK;;;JB0010
;;;KK;;;	RET
;====================================
ENALFOL
;====================================
ENALCK
	LD	C,ENNO-1
	LD	B,$0
EAC010
	LD	HL,ENMODE
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,EAC018
;
	LD	HL,ENMOD3
	ADD	HL,BC
	LD	A,(HL)
	AND	%00000010	; clear check ok ?
	JR	Z,EAC020
EAC018				; no !
	DEC	C
	LD	A,C
	CP	$FF
	JR	NZ,EAC010
;
	LD	A,(WORK0)
	CP	$08
	JR	NZ,EAC01C	;全部穴落ち？
;
	LD	A,(EFLFLG2)
	AND	A
	JR	Z,EAC020	;１匹でも落ちた？
;
	LD	A,(EFLFLG)	; yes !
	AND	A
	JR	NZ,EAC020	; １匹もころしてない ?
EAC01C				; Yes !
	JP	NAZOCLR	;(S)
EAC020
;;	SCF
;;	CCF
	RET
;
;====================================
PZLCHK					;(注)服のダンジョン専用
		LD	A,(NAZOCL)
		AND	A		;謎クリアした後？
		RET	NZ		;	YES --> return
;
		XOR	A
		LD	(WORK0),A
		LD	DE,$00000
		LD	A,(GRNDPT)
		CP	$012
		JR	Z,PZLCHK_500
PZLCHK_100
		LD	HL,ENMYNO
		ADD	HL,DE
		LD	A,(HL)
		CP	R_BLOCK
		JR	Z,PZLCHK_200
		CP	G_BLOCK
		JR	Z,PZLCHK_200
		CP	B_BLOCK
		JR	NZ,PZLCHK_300
PZLCHK_200
		LD	HL,ENMODE
		ADD	HL,DE
		LD	A,(HL)
		AND	A		;その部屋にいる？
		JR	Z,PZLCHK_300	;	NO --> PZLCHK_300
		LD	HL,ENCHPT
		ADD	HL,DE
		LD	A,(HL)
		CP	$008		;青になっている？
		JR	NZ,PZLCHK_300	;	NO --> PZLCHK_300
		LD	HL,WORK0
		INC	(HL)
PZLCHK_300
		INC	E
		LD	A,E
		AND	$00F
		JR	NZ,PZLCHK_100
		LD	E,$009
		LD	A,(GRNDPT)
		CP	$00A
		JR	Z,PZLCHK_350
		LD	E,$004
PZLCHK_350
		LD	A,(WORK0)
		CP	E		;全部青になった？
		RET	NZ		;	NO --> return
;
		CALL	NAZOCLR	;(S)
		LD	A,(GRNDPT)
		CP	$008
		RET	Z
;;;KK;;;		JR	NZ,PZLCHK_360
;;;KK;;;		jp	KEYSET
;
PZLCHK_360
		CP	$00A
		JR	NZ,PZLCHK_370
		CALL	NZSVCK
		CALL	SHUTCK
		LD	HL,NEWDJRM
		LD	A,(GRNDPT)
		LD	E,A
		LD	D,$000
		ADD	HL,DE
		LD	A,(HL)
		OR	%00010000
		LD	(HL),A
		RET
;
PZLCHK_370
		jp	TAKRCK
;;;;;;;;		CALL	TAKRCK
;;;;;;;;		RET
;
;====================================
PZLCHK_500
		LD	HL,ENMYNO
		ADD	HL,DE
		LD	A,(HL)
		CP	R_TUCHI
		JR	Z,PZLCHK_700
		CP	L_TUCHI
		JR	NZ,PZLCHK_800
PZLCHK_700
		LD	HL,ENMODE
		ADD	HL,DE
		LD	A,(HL)
		AND	A		;その部屋にいる？
		JR	Z,PZLCHK_800	;	NO --> PZLCHK_800
		LD	HL,ENSTAT
		ADD	HL,DE
		LD	A,(HL)
		CP	OP_LD
		JR	NZ,PZLCHK_800
		LD	HL,WORK0
		INC	(HL)
PZLCHK_800
		INC	E
		LD	A,E
		AND	$00F
		JR	NZ,PZLCHK_500
		LD	A,(WORK0)
		CP	$002
		RET	NZ
;
		CALL	NAZOCLR		;(S)
		CALL	NZSVCK
		CALL	SVDTSB
		LD	A,(HL)
		OR	%00010000
		LD	(HL),A
		LD	(DJSVBF),A	;したのへやに落ちる！
		RET
;
;====================================
MAXCHK	;アイテムマックスチェック！
	LD	A,(DE)
	CP	(HL)
	JR	C,MAXC100
;
	LD	A,(HL)
	LD	(DE),A
MAXC100
	INC	HL
	RET	
;---------------------------------------------------------------
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	Item window display  		     %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;NOCHDT
;	DB	$B0,$B1,$B2,$B3,$B4,$B5
;	DB	$B6,$B7,$B8,$B9
;;SPDMAPD	; 特殊部屋マップキャラクターデータアドレス
;SPDMAPD	; 楽器キャラクターデータアドレス
;	DW	CHRDAT+$1000  ;DJno.0
;	DW	CHRDAT+$1040  ;1
;	DW	CHRDAT+$1080  ;2
;	DW	CHRDAT+$10C0  ;3
;	DW	CHRDAT+$1100  ;4
;	DW	CHRDAT+$1140  ;5
;	DW	CHRDAT+$1180  ;6
;	DW	CHRDAT+$11C0  ;7
;	DW	CHRDAT+$1000  ;8
;- - - - - - - - - - - - - - - - - -
WINDOW	
	LD	HL,PWMAX	;アイテムマックスチェック！
	LD	DE,TUBOCT
	CALL	MAXCHK
;
	LD	DE,BOMBCT
	CALL	MAXCHK
;
	LD	DE,YAAACT
	CALL	MAXCHK
;
	LD	A,(PLMODE)
	CP	PMOVE+2
	RET	NC
;
	LD	A,(MSGEFG)
	AND	A
	JP	NZ,WI00A0
;
	LD	A,(SCRLFG)
	AND	A
		ret	NZ
;;;KK;;;	JP	NZ,WI00B0
;
	LD	A,(WNDFLG)
	AND	A
	JP	NZ,WI0010
;
	LD	A,(KEYA1)
	AND	%01000000
	JP	NZ,WI0090
;
	LD	A,(KEYA2)
	AND	%10000000
	JP	Z,WI0090
;
	LD	A,(WNDYPS)
	CP	$00
	JR	Z,SDST10	
;
		LD	A,(NYOTIM)
		AND	A		; ニョロニョロびりびり中？
		JP	NZ,WI0090	; ＹＥＳ
;
	LD	A,(ITEMNOT)
	AND	A
	JP	NZ,WI0090 ;プレイヤーストップ時は解除だけ！
;
	LD	A,(PLSTOP)
	CP	$02
	JP	Z,WI0090 ;プレイヤーストップ時は解除だけ！
;
	LD	A,(PLCHPT);プレイヤー消滅時は解除だけ！
	INC	A
	JP	Z,WI0090
;
SDST10
	LD	A,(FUEFLG)
	LD	HL,FUETM
	OR	(HL)
	LD	HL,FUETM2
	OR	(HL)
	JP	NZ,WI0090
;
WNDSET
	LD	A,$1
	LD	(WNDFLG),A
	LD	(WNDSTT),A
;
	LD	A,$12
	LD	(SOUND1),A	;(S)
;
	LD	A,(WNDSPD)
	CPL
	INC	A
	LD	(WNDSPD),A
;
	AND	%10000000
	JR	Z,WI000C1	; Set window ?
;
;-------------------------------------------------
;	(CGB) アイテムセレクトモードへ
;-------------------------------------------------
	XOR	A
	LD	(SBHR),A
	LD	(SBCNT),A
		LD	(KEYA1),A	; キークリア
		LD	(KEYA2),A	; キークリア

	LD	(ITMODE),A
	LD	A,ITSEL
	LD	(GMMODE),A
;-------------------------------------------------
;
	LD	A,$11
	LD	(SOUND1),A	;(S)
;				; yes !
	XOR	A
	LD	(WNDSTT),A	; special window initial
;
	LD	A,$0B
	LD	(WDITFG),A
;
	LD	A,(DJFLAG)
	AND	A
	LD	A,GAKCH	; 楽器 BG セット
	JR	Z,WI000B
;
	LD	A,(DNJNNO)
;
		CP	NEWDJ		;新ダンジョン？
		JR	Z,WI000B_SET	;	YES --> WI000B_SET
;
	CP	$08 ;DJMAX ;$20
	LD	A,GAKCH	; 楽器 BG セット
	JR	NC,WI000B
;
WI000B_SET
	CALL	DJMPST	; Danjyon map data set !
;
	LD	A,DMPCH		; Danjyon map chracter tr.
WI000B
	LD	(BKCHFG),A
WI000C
	RET
WI000C1
	LD	A,$07
	LD	(SLEVEL),A
	LD	A,$70
	LD	(SLEVEL+1),A
;
	POP	AF
	RET
;----------------------------------------------
WI0010
	LD	A,(WNDSTT)
	AND	A
	JR	NZ,WI0012
;
	LD	A,(VRAMD+1)
	AND	A
	JR	NZ,WI0011
;
;;;KK;;;	CALL	SPITDP		; Special item display !
	LD	HL,WNDSTT
	INC	(HL)
;
WI0011
	POP	AF
WICSSB
	CALL	PLIDBC2
	CALL	PLWPCS2
	CALL	PLCSET
		jp	ENEMYL2
;;;KK;;;	CALL	ENEMYL2
;;;KK;;;	RET
;----------------------------------------------
WI0012
;;;KK;;;	CALL	WDITDP		; Item BG set
;
	LD	A,(WNDSPD)
	LD	HL,WNDYPS
	ADD	A,(HL)
	LD	(HL),A
	CP	$80
	JR	Z,WI0062
	CP	$00
	JR	NZ,WI00911
;
WI0060
	LD	A,$03
	LD	(SLEVEL),A
	LD	A,$30
	LD	(SLEVEL+1),A
WI0062
	XOR	A		;Move limit !
	LD	(WNDFLG),A
	JR	WI0090
WI00911
	CALL	WICSSB
WI0090
	LD	A,(WNDYPS)
	CP	$80
	JR	Z,WI00A0
;
	LD	A,(WNDFLG)
	AND	A
	JR	NZ,WI0098
;
;;;KK;;;	CALL	MAPOBJ	; Map player pos display
;;;KK;;;;
;;;KK;;;	CALL	PWKENDP	; Meter Ken flashing !
WI0098
	POP	AF	; Subroutin not return !
WI00A0
	LD	A,(MSGEFG)
	AND	$7F
	JR	Z,WI00A8
;
	CP	$0C ;MSK	;メッセージキー入力待ち？
	JR	Z,WI00A8
	CP	$0D ;MQE
		ret	NZ
;;;KK;;;	JR	NZ,WI00B0
WI00A8
;- - Coin $ Heart count display - -
	CALL	COINDP	; Coin count check
		jp	HARTDP	; Heart "
;;;KK;;;	CALL	HARTDP	; Heart "
;;;KK;;;WI00B0
;;;KK;;;	RET
;===================================================
;;;KK;;;WDITDP
;;;KK;;;	LD	A,(WDITFG)
;;;KK;;;	CP	$01
;;;KK;;;	JR	Z,WDID10
;;;KK;;;;
;;;KK;;;	LD	C,A
;;;KK;;;	LD	B,$00
;;;KK;;;	DEC	A
;;;KK;;;	LD	E,A
;;;KK;;;	CALL	ITEMDP2
;;;KK;;;;
;;;KK;;;	LD	A,(WDITFG)
;;;KK;;;	DEC	A
;;;KK;;;	LD	(WDITFG),A
;;;KK;;;WDID10
;;;KK;;;	RET
;===================================================
COINDP
	LD	HL,VRAMD
	LD	A,(FRCNT)
	AND	$1
	OR	(HL)
	RET	NZ
;####################################
;	LD	A,(MSGENO)
;	LD	(COINC2),A
;	LD	A,(MSGENOH)
;	LD	(COINC1),A
;;
;	JP	COTEST1
;####################################
;;	JP	NZ,CD0020
;
	LD	HL,COINWT
	LD	A,(HL)
	AND	A
	JR	Z,CD0001	;メッセージ待ち？
;				; yes !
	DEC	(HL)
	RET
CD0001
	LD	HL,COINU1
	LD	A,(COINU2)
	OR	(HL)
	JR	Z,CD0010
;
	LD	A,$05
	LD	(SOUND2),A	;(S)
;
	LD	A,(COINU2)
	LD	E,A
	LD	A,(COINU1)
;
	SLA	E
	RLA
	SLA	E
	RLA
	SLA	E
	RLA
;
	INC	A
	CP	$0A
	JR	C,CU0011
	LD	A,$09
CU0011
	LD	E,A
;
	LD	A,(COINU2)
	SUB	E   ;$01
	LD	(COINU2),A
	LD	A,(HL)
	SBC	A,$00
	LD	(HL),A
;
	LD	A,(COINC2)
	ADD	A,E   ;$01
	DAA
	LD	(COINC2),A
;
	LD	A,(COINC1)
	ADC	A,$00
	DAA
	LD	(COINC1),A
	CP	$10
	JR	C,CD000E
;
	LD	A,$09
	LD	(COINC1),A
	LD	A,$099
	LD	(COINC2),A
;
	XOR	A
	LD	(COINU1),A
	LD	(COINU2),A
CD000E
	CALL	COINIT
CD0010
	LD	HL,COIND1
	LD	A,(COIND2)
	OR	(HL)  ;AND	A
		ret	Z
;;;KK;;;	JR	Z,CD0020
;
	LD	A,$05
	LD	(SOUND2),A	;(S)
;
	LD	A,(COIND2)
	LD	E,A
	LD	A,(COIND1)
;
	SLA	E
	RLA
	SLA	E
	RLA
	SLA	E
	RLA
;
	INC	A
	CP	$0A
	JR	C,CD0011
	LD	A,$09
CD0011
	LD	E,A
;
	LD	A,(COIND2)
	SUB	E ;$01
	LD	(COIND2),A
	LD	A,(HL)
	SBC	A,$00
	LD	(HL),A
;
	LD	A,(COINC2)
	LD	HL,COINC1
	OR	(HL)
		ret	Z
;;;KK;;;	JR	Z,CD0020
;
	LD	A,(COINC2)
	SUB	E ;$01
	DAA
	LD	(COINC2),A
;
	LD	A,(COINC1)
	SBC	A,$00
	DAA
	LD	(COINC1),A
;
	JR	NC,CD0018
;
	XOR	A
	LD	(COINC1),A
	LD	(COINC2),A
	LD	(COIND1),A
	LD	(COIND2),A
CD0018
COTEST1
		jp	COINIT
;;;KK;;;	CALL	COINIT
;;;KK;;;CD0020
;;;KK;;;	RET
;-------------------------------------
COINIT			; For initial set
	LD	A,(VRAMD)
	LD	E,A
	LD	D,$0
;
	ADD	A,$6
	LD	(VRAMD),A
;
	LD	HL,VRAMD+1
	ADD	HL,DE
;
	LD	A,$9C
	LD	(HLI),A
;;;	LD	A,$2C
	LD	A,$2A
	LD	(HLI),A
	LD	A,$02
	LD	(HLI),A
;
	PUSH	HL
	LD	A,(COINC1)
	AND	$0F
	LD	E,A
;;;;	LD	D,$0
;J	LD	HL,NOCHDT
;J	ADD	HL,DE
;J	LD	A,(HL)
	ADD	A,$B0
	POP	HL
	LD	(HLI),A
;
	PUSH	HL
	LD	A,(COINC2)
	SWAP	A
	AND	$0F
;J	LD	E,A
;;;;	LD	D,$0
;J	LD	HL,NOCHDT
;J	ADD	HL,DE
;J	LD	A,(HL)
	ADD	A,$B0
	POP	HL
	LD	(HLI),A
;
	PUSH	HL
	LD	A,(COINC2)
	AND	$0F
;J	LD	E,A
;;;;	LD	D,$0
;J	LD	HL,NOCHDT
;J	ADD	HL,DE
;J	LD	A,(HL)
	ADD	A,$B0
	POP	HL
	LD	(HLI),A
;
	LD	A,$00
	LD	(HLI),A
WI0290
WI0200
	RET
;=====================================
;HARTC1
;	DB	$7F,$A8,$7F,$A9
;HARTC2
;	DB	$AA,$AC,$AB,$AD
;- - - - - - - - - - - - - - - -
HARTSDD
;;        03  04  05  06  07  08  09  10  11  12  13  14
; DB	$09,$09,$09,$11,$11,$11,$19,$19,$19,$21,$21,$21
;        03  04  05  06  07  08  09  10  11  12  13  14
 DB	$05,$05,$05,$09,$09,$09,$11,$11,$11,$19,$19,$19
HARTDP
	XOR	A
	LD	(PINCHFG),A
;
	LD	A,(HARTMX)
	LD	E,A
	LD	D,$00
	LD	HL,HARTSDD-3
	ADD	HL,DE
	LD	A,(HARTCT)
	CP	(HL)
	JR	NC,HDP010
;
	LD	A,$01
	LD	(PINCHFG),A
;
	LD	A,(PINCHCT)
	DEC	A
	CP	$FF
	JR	NZ,HDP00E	
;
	LD	A,$30
;
	LD	HL,SOUND2
	LD	(HL),$04	;(S)
HDP00E
	LD	(PINCHCT),A
HDP010
	LD	A,(FRCNT)
	AND	$1
	JR	Z,HD0020
;
	LD	A,(VRAMD)
	AND	A
	JR	NZ,HD0020
;
	LD	A,(HARTUP)
	AND	A
	JR	Z,HD0010
;
	DEC	A
	LD	(HARTUP),A
;
	LD	A,(HARTMX)
	CP	15
	JR	C,HD0101
	LD	A,14
HD0101
	SLA	A
	SLA	A
	SLA	A
	LD	E,A
;
	LD	A,(HARTCT)
	CP	E    ;$99
	JR	NZ,HD0102
;
	XOR	A
	LD	(HARTUP),A
	JR	HD0010
HD0102
	INC	A
	LD	(HARTCT),A
;
	AND	$07
	CP	$06
	JR	NZ,HD0100
;
	LD	A,$06
	LD	(SOUND2),A	;(S)
HD0100
	JP	HARTIT
HD0010
	LD	A,(HARTDW)
	AND	A
	JR	Z,HD0020
;
	DEC	A
	LD	(HARTDW),A
;
	LD	A,(HARTCT)
	AND	A
	JR	Z,HD001E
	DEC	A
	LD	(HARTCT),A
;
HD001E
	CALL	HARTIT	; BG write !
;
	LD	A,(HARTCT)
	AND	A
	JR	Z,HD00ED
HD0020
	RET
;--------------------------
; GO TO GAME OVER
HD00ED
	LD	A,(KBINF)
	AND	A
	JR	Z,HD00E0	; Life tsubo have ?
;				; yes !
	DEC	A
	LD	(KBINF),A
;
	LD	A,$08
	LD	(HARTCT),A
;
	LD	A,(HARTUP)	; Life recover !
	ADD	A,$80
	LD	(HARTUP),A
;
	LD	A,$A0
	LD	(PLFLSH),A
;
	LD	A,(VRAMD)
	LD	E,A
	LD	D,$00
	ADD	A,$04
	LD	(VRAMD),A
;
	LD	HL,VRAMD+1
	ADD	HL,DE
	LD	A,$9C
	LD	(HLI),A
	LD	A,$93
	LD	(HLI),A
	LD	A,$00
	LD	(HLI),A
	LD	A,(KBINF)
	ADD	A,$B0
	CP	$B0
	JR	Z,KBCD10
;
	LD	(HLI),A
	XOR	A
	LD	(HL),A
	RET
KBCD10
	LD	A,$7F
	LD	(HLI),A
;
	LD	A,$9C
	LD	(HLI),A
	LD	A,$72
	LD	(HLI),A
	LD	A,$C1
	LD	(HLI),A
	LD	A,$7F
	LD	(HLI),A
	XOR	A
	LD	(HL),A
;
	LD	A,(VRAMD)
	ADD	A,$4
	LD	(VRAMD),A
	RET
;
;- - Game over - - -
HD00E0
;	LD	A,POVER
;	LD	(PLMODE),A
;;
;	LD	A,$7F
;	LD	(PLTIM0),A
	RET
;=======================================
HARTVD
	DB	$9C,$0D,$06
	DB	$7F,$7F,$7F,$7F,$7F,$7F,$7F
	DB	$9C,$2D,$06
	DB	$7F,$7F,$7F,$7F,$7F,$7F,$7F
	DB	$00
;
;-------------------------------------
HARTIT			; For initial set
	LD	A,(VRAMD)
	LD	E,A
	LD	D,$00
	ADD	A,$14
	LD	(VRAMD),A
;
	LD	HL,VRAMD+1
	ADD	HL,DE
	PUSH	DE
;
	LD	BC,HARTVD
	LD	E,$15
;
HTI010
	LD	A,(BC)
	INC	BC
	LD	(HLI),A
	DEC	E
	JR	NZ,HTI010
;
	NOP
	NOP
	NOP
	NOP
;
	POP	DE
	LD	HL,VRAMD+4
	ADD	HL,DE
;
	LD	C,$00
;
	LD	A,(HARTCT)
	AND	A
	JR	Z,HTI080
;
	LD	(WORK0),A
;
QWQW
	LD	A,(WORK0)
	SUB	$8
	LD	(WORK0),A
	JR	C,SSSS
;
	LD	A,$A9
	LD	(HLI),A
;
	INC	C
	LD	A,C
	CP	$07
	JR	NZ,EEE
;
	LD	A,L
	ADD	A,$3
	LD	L,A
EEE
	JR	QWQW
;
SSSS
	ADD	A,$8
	JR	Z,HTI080	; Hasuu ?
;				; yes ! harf !
	LD	A,$CE
	LD	(HLI),A
	JR	HTI088 ;INC	C
HTI080
;
	LD	A,(HARTMX)
	CP	C
	JR	Z,HTI090
;
	LD	A,$CD
	LD	(HLI),A
HTI088
	INC	C
	LD	A,C
	CP	$07
	JR	NZ,HTI08A
;
	LD	A,L
	ADD	A,$3
	LD	L,A
HTI08A
	JR	HTI080
HTI090
	RET
;
;
;
;
;-------------------------------------------
;	LD	A,(VRAMD)
;	LD	E,A
;	LD	D,$0
;;;	ADD	A,$05
;	ADD	A,$0F
;	LD	(VRAMD),A
;;
;	LD	HL,VRAMD+1
;	ADD	HL,DE
;;
;	LD	A,$9C
;	LD	(HLI),A
;	LD	A,$31
;	LD	(HLI),A
;	LD	A,$01
;	LD	(HLI),A
;;
;	PUSH	HL
;	LD	A,(HARTCT)
;	SWAP	A
;	AND	$0F
;	LD	E,A
;;;;;	LD	D,$0
;	LD	HL,NOCHDT
;	ADD	HL,DE
;	LD	A,(HL)
;	POP	HL
;	LD	(HLI),A
;;
;	PUSH	HL
;	LD	A,(HARTCT)
;	AND	$0F
;	LD	E,A
;;;;;	LD	D,$0
;	LD	HL,NOCHDT
;	ADD	HL,DE
;	LD	A,(HL)
;	POP	HL
;	LD	(HLI),A
;;
;;	XOR	A
;;	LD	(HL),A
;;	RET
;;=================================
;HTMKDP
;;- - Hart mark display - - -
;	LD	A,$9C
;	LD	(HLI),A
;	LD	A,$0F
;	LD	(HLI),A
;	LD	A,$01
;	LD	(HLI),A
;;
;	LD	BC,HARTC1
;	LD	A,(HARTCT)
;	CP	10
;	JR	C,HD0230
;	LD	BC,HARTC2
;HD0230
;	LD	A,(BC)
;	INC	BC
;	LD	(HLI),A
;	LD	A,(BC)
;	INC	BC
;	LD	(HLI),A
;;
;	LD	A,$9C
;	LD	(HLI),A
;	LD	A,$2F
;	LD	(HLI),A
;	LD	A,$01
;	LD	(HLI),A
;;
;	LD	A,(BC)
;	INC	BC
;	LD	(HLI),A
;	LD	A,(BC)
;	LD	(HLI),A
;;
;	LD	A,$00
;	LD	(HLI),A
;HD0200
;HD0290
;	RET
;=============================================
;;;KK;;;ITEMCD
;;;KK;;;	DB	SPACE,SPACE,SPACE	; Nothing
;;;KK;;;	DB	SPACE,SPACE,SPACE
;;;KK;;;;KEN
;;;KK;;;	DB	$84,$7F,$7F	;Ken
;;;KK;;;	DB	$85,$BA,$7F
;;;KK;;;;BOMB
;;;KK;;;	DB	$80,$7F,$7F	;Bomb
;;;KK;;;	DB	$81,$7F,$7F
;;;KK;;;;BULESLET
;;;KK;;;	DB	$82,$7F,$7F	;Bumeran
;;;KK;;;	DB	$83,$BA,$7F
;;;KK;;;;TATE
;;;KK;;;	DB	$86,$7F,$7F	;Tate
;;;KK;;;	DB	$87,$BA,$7F
;;;KK;;;;YA
;;;KK;;;	DB	$88,$7F,$7F	;Ya
;;;KK;;;	DB	$89,$7F,$7F
;;;KK;;;;FUCK
;;;KK;;;	DB	$8A,$7F,$7F	;Fuck
;;;KK;;;	DB	$8B,$7F,$7F
;;;KK;;;;ROD
;;;KK;;;	DB	$8C,$7F,$7F	;Rod
;;;KK;;;	DB	$8D,$7F,$7F
;;;KK;;;;SHOESE
;;;KK;;;	DB	$98,$7F,$7F	;Shose
;;;KK;;;	DB	$99,$7F,$7F
;;;KK;;;;OKARINA
;;;KK;;;	DB	$90,$7F,$7F	;Kantera
;;;KK;;;	DB	$91,$7F,$7F
;;;KK;;;;HANE
;;;KK;;;	DB	$92,$7F,$7F	;Hane
;;;KK;;;	DB	$93,$7F,$7F
;;;KK;;;;SKOP
;;;KK;;;	DB	$96,$7F,$7F	;Okarina
;;;KK;;;	DB	$97,$7F,$7F
;;;KK;;;;MAGIC TSUBO
;;;KK;;;	DB	$8E,$7F,$7F	;Tubo
;;;KK;;;	DB	$8F,$7F,$7F
;;;KK;;;;Bumeran    
;;;KK;;;	DB	$A4,$7F,$7F	;Bumeran
;;;KK;;;	DB	$A5,$7F,$7F
;;;KK;;;;ITEMC2
;;;KK;;;;	DB	$7F,$7F
;;;KK;;;;	DB	$00,$01
;;;KK;;;;	DB	$02,$03
;;;KK;;;;	DB	$04,$05
;;;KK;;;;	DB	$06,$07
;;;KK;;;;	DB	$08,$09
;;;KK;;;;	DB	$0A,$0B
;;;KK;;;;	DB	$0C,$0D
;;;KK;;;;	DB	$0E,$0F
;;;KK;;;;	DB	$10,$11
;;;KK;;;;	DB	$12,$13
;;;KK;;;;
;;;KK;;;ITEMAD
;;;KK;;;	DB	$9C,$01
;;;KK;;;	DB	$9C,$06
;;;KK;;;;
;;;KK;;;	DB	$9C,$61
;;;KK;;;	DB	$9C,$65
;;;KK;;;	DB	$9C,$C1
;;;KK;;;	DB	$9C,$C5
;;;KK;;;	DB	$9D,$21
;;;KK;;;	DB	$9D,$25
;;;KK;;;	DB	$9D,$81
;;;KK;;;	DB	$9D,$85
;;;KK;;;	DB	$9D,$E1
;;;KK;;;	DB	$9D,$E5
;;;KK;;;;
;;;KK;;;;ITEMA2
;;;KK;;;;	DB	$9C,$69
;;;KK;;;;	DB	$9C,$6B
;;;KK;;;;	DB	$9C,$6D
;;;KK;;;;	DB	$9C,$6F
;;;KK;;;;	DB	$9C,$71
;;;KK;;;;	DB	$9C,$A9
;;;KK;;;;	DB	$9C,$AB
;;;KK;;;;	DB	$9C,$AD
;;;KK;;;;	DB	$9C,$AF
;;;KK;;;;	DB	$9C,$B1
;;;KK;;;;;ITEMA
;;;KK;;;;;;;		A B 
;;;KK;;;;;	DB	1,2,3,4,5,6,7,8,9,10,11,12
;;;KK;;;ITEMDP
;;;KK;;;	LD	C,$01
;;;KK;;;	LD	B,$00
;;;KK;;;	LD	E,$FF
;;;KK;;;ITEMDP2
;;;KK;;;ITD010
;;;KK;;;	LD	A,(HIMITSU2)
	AND	A
;;;KK;;;	RET	NZ
;;;KK;;;;
;;;KK;;;	PUSH	DE
;;;KK;;;	PUSH	BC
;;;KK;;;;
;;;KK;;;	LD	HL,ITEMB
;;;KK;;;	ADD	HL,BC
;;;KK;;;	LD	A,(HL)
;;;KK;;;	LD	(WORK1),A
;;;KK;;;	SLA	A
;;;KK;;;	LD	E,A
;;;KK;;;	SLA	A
;;;KK;;;	ADD	A,E	; x6
;;;KK;;;	LD	(WORK0),A
;;;KK;;;;
;;;KK;;;	LD	A,(VRAMD)
;;;KK;;;	LD	E,A
;;;KK;;;	LD	D,$0
;;;KK;;;;
;;;KK;;;	LD	HL,VRAMD+1
;;;KK;;;	ADD	HL,DE
;;;KK;;;	ADD	A,$0C
;;;KK;;;	LD	(VRAMD),A
;;;KK;;;;
;;;KK;;;	PUSH	HL
;;;KK;;;;- - Uper - -
;;;KK;;;	SLA	C	;x2
;;;KK;;;	LD	HL,ITEMAD
;;;KK;;;	ADD	HL,BC
;;;KK;;;	PUSH	HL
;;;KK;;;	POP	DE
;;;KK;;;;
;;;KK;;;	POP	HL
;;;KK;;;	LD	A,(DE)
;;;KK;;;	INC	DE
;;;KK;;;	LD	(HLI),A
;;;KK;;;	LD	A,(DE)
;;;KK;;;	INC	DE
;;;KK;;;	LD	(HLI),A
;;;KK;;;	LD	A,$02
;;;KK;;;	LD	(HLI),A
;;;KK;;;;
;;;KK;;;;;	LD	A,C
;;;KK;;;;;	SLA	C
;;;KK;;;;;	ADD	A,C
;;;KK;;;;;	LD	C,A	;x6
;;;KK;;;	LD	A,(WORK0)
;;;KK;;;	LD	C,A
;;;KK;;;;
;;;KK;;;	PUSH	HL
;;;KK;;;;
;;;KK;;;	LD	HL,ITEMCD
;;;KK;;;	ADD	HL,BC
;;;KK;;;	PUSH	HL
;;;KK;;;	POP	DE
;;;KK;;;;
;;;KK;;;	POP	HL
;;;KK;;;	LD	A,(DE)
;;;KK;;;	INC	DE
;;;KK;;;	LD	(HLI),A
;;;KK;;;	LD	A,(DE)
;;;KK;;;	INC	DE
;;;KK;;;	LD	(HLI),A
;;;KK;;;	LD	A,(DE)
;;;KK;;;	INC	DE
;;;KK;;;	LD	(HLI),A
;;;KK;;;;- - Lower - -
;;;KK;;;	POP	BC
;;;KK;;;	PUSH	BC
;;;KK;;;;
;;;KK;;;	PUSH	HL
;;;KK;;;;
;;;KK;;;	SLA	C	;x2
;;;KK;;;	LD	HL,ITEMAD
;;;KK;;;	ADD	HL,BC
;;;KK;;;	PUSH	HL
;;;KK;;;	POP	DE
;;;KK;;;;
;;;KK;;;	POP	HL
;;;KK;;;;
;;;KK;;;	INC	DE
;;;KK;;;	INC	HL
;;;KK;;;	LD	A,(DE)
;;;KK;;;	ADD	A,$20
;;;KK;;;	LD	(HL),A
;;;KK;;;;
;;;KK;;;	DEC	DE
;;;KK;;;	DEC	HL
;;;KK;;;	LD	A,(DE)
;;;KK;;;	INC	DE
;;;KK;;;	INC	DE
;;;KK;;;	ADC	A,$0
;;;KK;;;	LD	(HLI),A
;;;KK;;;	INC	HL
;;;KK;;;;
;;;KK;;;	LD	A,$02
;;;KK;;;	LD	(HLI),A
;;;KK;;;;
;;;KK;;;;	LD	A,C
;;;KK;;;;	SLA	C
;;;KK;;;;	ADD	A,C
;;;KK;;;;	LD	C,A	;x6
;;;KK;;;	LD	A,(WORK0)
;;;KK;;;	LD	C,A
;;;KK;;;;
;;;KK;;;	PUSH	HL
;;;KK;;;;
;;;KK;;;	LD	HL,ITEMCD+3
;;;KK;;;	ADD	HL,BC
;;;KK;;;	PUSH	HL
;;;KK;;;	POP	DE
;;;KK;;;;
;;;KK;;;	POP	HL
;;;KK;;;	LD	A,(DE)
;;;KK;;;	INC	DE
;;;KK;;;	LD	(HLI),A
;;;KK;;;;- - Item level - -
;;;KK;;;	CALL	LVSET
;;;KK;;;;	LD	A,(DE)
;;;KK;;;;	INC	DE
;;;KK;;;;	LD	(HLI),A
;;;KK;;;;	LD	A,(DE)
;;;KK;;;;	INC	DE
;;;KK;;;;	LD	(HLI),A
;;;KK;;;;
;;;KK;;;	XOR	A
;;;KK;;;	LD	(HL),A	; END
;;;KK;;;;
;;;KK;;;	POP	BC
;;;KK;;;	POP	DE
;;;KK;;;	DEC	C
;;;KK;;;;
;;;KK;;;	LD	A,C
;;;KK;;;	CP	E   ;$FF
;;;KK;;;	JP	NZ,ITD010
;;;KK;;;;
;;;KK;;;	RET
;;;KK;;;;
;;;KK;;;;
;;;KK;;;;
;;;KK;;;;=============================================
;;;KK;;;LVSET
;;;KK;;;	LD	A,(WORK1)
;;;KK;;;	CP	09
;;;KK;;;	JR	Z,FUECTST	; Fue sound count
;;;KK;;;	CP	12
;;;KK;;;	JR	Z,TBCTST	; Tubo count
;;;KK;;;	DEC	A
;;;KK;;;	JR	Z,KNLVST
;;;KK;;;	DEC	A
;;;KK;;;	JR	Z,BMCTST	; Bomb count
;;;KK;;;	DEC	A
;;;KK;;;	JR	Z,BULVST	; Bumeran level
;;;KK;;;	DEC	A
;;;KK;;;	JR	Z,TALVST	; Tate level
;;;KK;;;	DEC	A
;;;KK;;;	JR	Z,YACTST	; Ya count
;;;KK;;;;	DEC	A
;;;KK;;;;	DEC	A
;;;KK;;;;	JR	Z,RDCTST	; Rod count
;;;KK;;;;===================================================
;;;KK;;;LVNOTH
;;;KK;;;	LD	A,(DE)
;;;KK;;;	INC	DE
;;;KK;;;	LD	(HLI),A
;;;KK;;;	LD	A,(DE)
;;;KK;;;	INC	DE
;;;KK;;;	LD	(HLI),A
;;;KK;;;	RET
;;;KK;;;;
;;;KK;;;;	RST	0
;;;KK;;;;	DW	KNLVST	; Ken level 
;;;KK;;;;	DW	BMCTST	; Bomb count
;;;KK;;;;	DW	BULVST	; Bumeran level
;;;KK;;;;	DW	TALVST	; Tate level
;;;KK;;;;	DW	YACTST	; Ya count
;;;KK;;;;	DW	LVNOTH	
;;;KK;;;;	DW	LVNOTH
;;;KK;;;;	DW	LVNOTH
;;;KK;;;;	DW	LVNOTH
;;;KK;;;;	DW	LVNOTH
;;;KK;;;;	DW	LVNOTH
;;;KK;;;;	DW	TBCTST	; Tubo count
;;;KK;;;;-----------------------------------
;;;KK;;;BULVST
;;;KK;;;	LD	A,(BULLEV)
;;;KK;;;	JR	LVSTSB
;;;KK;;;;-----------------------------------
;;;KK;;;TALVST
;;;KK;;;	LD	A,(TATLEV)
;;;KK;;;	JR	LVSTSB
;;;KK;;;;-----------------------------------
;;;KK;;;KNLVST
;;;KK;;;	LD	A,(KENLEV)
;;;KK;;;LVSTSB
;;;KK;;;	ADD	A,$B0
;;;KK;;;	LD	C,A
;;;KK;;;;
;;;KK;;;	LD	A,(DE)
;;;KK;;;	INC	DE
;;;KK;;;	LD	(HLI),A
;;;KK;;;;
;;;KK;;;	LD	A,C
;;;KK;;;	INC	DE
;;;KK;;;	LD	(HLI),A
;;;KK;;;	RET
;;;KK;;;;-----------------------------------
;;;KK;;;TBCTST
;;;KK;;;	LD	A,(KINOKFG)
;;;KK;;;	AND	A
;;;KK;;;	JR	NZ,LVNOTH	;きのこ持っている？
;;;KK;;;;				; No. 魔法の粉カウントセット！
;;;KK;;;	LD	A,(TUBOCT)
;;;KK;;;	JR	CTSTSB
;;;KK;;;;-----------------------------------
;;;KK;;;FUECTST
;;;KK;;;	LD	A,(ONPUFG)
;;;KK;;;	AND	A
;;;KK;;;	JP	Z,LVNOTH
;;;KK;;;;
;;;KK;;;	LD	A,(FUESLPT) ;MOD)
;;;KK;;;	INC	A
;;;KK;;;	SWAP	A
;;;KK;;;	CALL	CTSTSB
;;;KK;;;	DEC	HL
;;;KK;;;	LD	(HL),$7F
;;;KK;;;	INC	HL
;;;KK;;;	RET
;;;KK;;;;-----------------------------------
;;;KK;;;;RDCTST
;;;KK;;;;;;	LD	A,(CLC20)
;;;KK;;;;;;	CP	$FF
;;;KK;;;;;;	JR	NZ,RDCS10
;;;KK;;;;	LD	A,(RODCT)
;;;KK;;;;;;RDCS10;
;;;KK;;;;	JR	CTSTSB
;;;KK;;;;-----------------------------------
;;;KK;;;YACTST
;;;KK;;;	LD	A,(YAAACT)
;;;KK;;;	JR	CTSTSB
;;;KK;;;;-----------------------------------
;;;KK;;;BMCTST
;;;KK;;;	LD	A,(BOMBCT)
;;;KK;;;CTSTSB
;;;KK;;;	PUSH	AF
;;;KK;;;	AND	$0F
;;;KK;;;	ADD	A,$B0
;;;KK;;;	LD	C,A
;;;KK;;;	POP	AF
;;;KK;;;	SWAP	A
;;;KK;;;	AND	$0F
;;;KK;;;	ADD	A,$B0
;;;KK;;;;
;;;KK;;;	LD	(HLI),A
;;;KK;;;	LD	A,C
;;;KK;;;	LD	(HLI),A
;;;KK;;;	RET
;;;KK;;;;=============================================
;;;KK;;;;	常に持っているアイテム   SET         =
;;;KK;;;;=============================================
;;;KK;;;SSI	EQU	$7F
;;;KK;;;;- - - - - - - - - - - - - - - - - - - - - - - -
;;;KK;;;SPITDT
;;;KK;;;SID
;;;KK;;;	DB	$9C,$6A,$83
;;;KK;;;SI0	DB	$94,$95
;;;KK;;;SI5	DB	$C0,$C1
;;;KK;;;;
;;;KK;;;	DB	$9C,$6C,$83
;;;KK;;;SI1	DB	$A0,$A1
;;;KK;;;SI6	DB	$C2,$C3
;;;KK;;;;
;;;KK;;;	DB	$9C,$6E,$83
;;;KK;;;SI2	DB	$9A,$9B
;;;KK;;;SI7	DB	$C4,$C5
;;;KK;;;;
;;;KK;;;	DB	$9C,$6F,$81
;;;KK;;;SI22	DB	$9C,$9D
;;;KK;;;;
;;;KK;;;	DB	$9C,$B0,$81
;;;KK;;;SI8	DB	$C6,$C7
;;;KK;;;;
;;;KK;;;	DB	$9C,$71,$81
;;;KK;;;SI3	DB	$9E,$9F
;;;KK;;;;;SI3	DB	$AE,$AF
;;;KK;;;;
;;;KK;;;	DB	$9C,$B2,$81
;;;KK;;;;;;;;SI4	DB	$7F,$7F
;;;KK;;;SI9	DB	$CA,$CB
;;;KK;;;;
;;;KK;;;	DB	$9C,$92,$01
;;;KK;;;KICT	DB	$7F,$7F
;;;KK;;;	DB	$9C,$D3,$00
;;;KK;;;KYCT	DB	$7F
;;;KK;;;;;	DB	$9C,$93,$82
;;;KK;;;;;SKCT	DB	$7F,$7F
;;;KK;;;;;KYCT	DB	$7F
;;;KK;;;	DB	$00
;;;KK;;;SPIED
;;;KK;;;;-----------------------------------
;;;KK;;;SPICLD
;;;KK;;;	DB	SI0-SID
;;;KK;;;	DB	SI1-SID
;;;KK;;;	DB	SI2-SID
;;;KK;;;	DB	SI3-SID
;;;KK;;;;;;	DB	SI4-SID
;;;KK;;;	DB	SI5-SID
;;;KK;;;	DB	SI6-SID
;;;KK;;;	DB	SI7-SID
;;;KK;;;	DB	SI8-SID
;;;KK;;;	DB	SI9-SID
;;;KK;;;;- - - - - - - - - - - - - - - - - - - - - - - -
;;;KK;;;SPITDP
;;;KK;;;	LD	HL,VRAMD+1
;;;KK;;;	LD	BC,SPITDT
;;;KK;;;;
;;;KK;;;	LD	E,SPIED-SPITDT
;;;KK;;;SPI010
;;;KK;;;	LD	A,(BC)
;;;KK;;;	INC	BC
;;;KK;;;	LD	(HLI),A
;;;KK;;;;
;;;KK;;;	DEC	E
;;;KK;;;	JR	NZ,SPI010
;;;KK;;;;----------------------------------
;;;KK;;;	LD	DE,SPITF
;;;KK;;;	LD	BC,$00
;;;KK;;;SPI018
;;;KK;;;	LD	A,C
;;;KK;;;	CP	$02
;;;KK;;;	JR	NZ,SPI0188
;;;KK;;;;
;;;KK;;;	LD	A,(WARAFG)
;;;KK;;;	AND	A
;;;KK;;;	LD	A,C
;;;KK;;;	JR	NZ,SPI01A
;;;KK;;;SPI0188
;;;KK;;;	CP	$04
;;;KK;;;;;	CP	$05
;;;KK;;;	JR	NZ,SPI019	; Groud key display ?
;;;KK;;;;				; yes !
;;;KK;;;	LD	A,(DJFLAG)
;;;KK;;;	AND	A
;;;KK;;;	JR	Z,SPI0189	
;;;KK;;;;
;;;KK;;;	LD	A,(DNJNNO)
;;;KK;;;	CP	DJMAX ;$20
;;;KK;;;	JR	NC,SPI0189
;;;KK;;;;
;;;KK;;;	LD	DE,DMAPF
;;;KK;;;	JR	SPI019
;;;KK;;;SPI0189
;;;KK;;;	LD	DE,GRKEY1
;;;KK;;;SPI019
;;;KK;;;	LD	A,(DE)
;;;KK;;;	CP	$FF
;;;KK;;;	JR	Z,SPI01A	;FF:葉っぱ交換したあと
;;;KK;;;	AND	A
;;;KK;;;	JR	NZ,SPI020	; Not have ?
;;;KK;;;;				; yes !
;;;KK;;;SPI01A
;;;KK;;;	PUSH	DE
;;;KK;;;;
;;;KK;;;	LD	HL,SPICLD	; Space set !
;;;KK;;;	ADD	HL,BC
;;;KK;;;	LD	E,(HL)
;;;KK;;;	LD	D,$00
;;;KK;;;	LD	HL,VRAMD+1
;;;KK;;;	ADD	HL,DE
;;;KK;;;;
;;;KK;;;	LD	A,SSI
;;;KK;;;	LD	(HLI),A
;;;KK;;;	LD	(HLI),A
;;;KK;;;;
;;;KK;;;	LD	A,C
;;;KK;;;	CP	$02
;;;KK;;;	JR	NZ,SPI01C	;ワラシベアイテム？
;;;KK;;;;				;YES !
;;;KK;;;	INC	HL		; 2 x 2
;;;KK;;;	INC	HL
;;;KK;;;	INC	HL
;;;KK;;;	INC	HL
;;;KK;;;	INC	HL
;;;KK;;;	LD	A,SSI
;;;KK;;;	LD	(HLI),A
;;;KK;;;	LD	(HL),A
;;;KK;;;SPI01C
;;;KK;;;	POP	DE
;;;KK;;;SPI020
;;;KK;;;	INC	DE
;;;KK;;;	INC	C
;;;KK;;;;
;;;KK;;;	LD	A,C
;;;KK;;;	CP	$09
;;;KK;;;;;	CP	$0A
;;;KK;;;	JR	NZ,SPI018
;;;KK;;;;----横のカウンターセット！-----
;;;KK;;;	LD	HL,VRAMD+1
;;;KK;;;	LD      DE,KICT-SID
;;;KK;;;	ADD	HL,DE 
;;;KK;;;	LD	A,(CLC20)	;貝殻！
;;;KK;;;	AND	A
;;;KK;;;	JR	Z,SPI021
;;;KK;;;;
;;;KK;;;	LD	E,A
;;;KK;;;	SWAP	A
;;;KK;;;	AND	$0F
;;;KK;;;	ADD	A,$B0
;;;KK;;;	LD	(HLI),A
;;;KK;;;;
;;;KK;;;	LD	A,E
;;;KK;;;	AND	$0F
;;;KK;;;	ADD	A,$B0
;;;KK;;;	LD	(HLI),A		;２桁
;;;KK;;;SPI021
;;;KK;;;	LD	HL,VRAMD+1
;;;KK;;;	LD      DE,KYCT-SID
;;;KK;;;	ADD	HL,DE
;;;KK;;;	LD	A,(DJFLAG)
;;;KK;;;	AND	A
;;;KK;;;	JR	Z,SPI0218
;;;KK;;;;
;;;KK;;;	LD	A,(DNJNNO)
;;;KK;;;	CP	DJMAX ;$20
;;;KK;;;	JR	NC,SPI0218
;;;KK;;;;
;;;KK;;;	LD	A,(SKEYF)	; Small key count set !
;;;KK;;;	AND	A
;;;KK;;;	JR	Z,SPI022
;;;KK;;;	JR	SPI0210
;;;KK;;;;
;;;KK;;;SPI0218
;;;KK;;;	LD	A,(GRKEY5)	; Key "E" count set !
;;;KK;;;	AND	A
;;;KK;;;	JR	Z,SPI022
;;;KK;;;	CP	$06
;;;KK;;;	JR	NC,SPI022
;;;KK;;;SPI0210
;;;KK;;;	ADD	A,$B0
;;;KK;;;	LD	(HL),A
;;;KK;;;SPI022
;;;KK;;;	LD	A,SPIED-SPITDT-1
;;;KK;;;	LD	(VRAMD),A
;;;KK;;;	RET
;;;KK;;;;
;=============================
;;;KK;;;PWDPXD
;;;KK;;;	DB	$0F,$37
;;;KK;;;	DB	$0F,$2F
;;;KK;;;	DB	$0F,$2F
;;;KK;;;	DB	$0F,$2F
;;;KK;;;	DB	$0F,$2F
;;;KK;;;	DB	$0F,$2F
;;;KK;;;PWDPYD
;;;KK;;;	DB	$0E,$0E
;;;KK;;;	DB	$0E+$18,$0E+$18
;;;KK;;;	DB	$0E+$30,$0E+$30
;;;KK;;;	DB	$0E+$48,$0E+$48
;;;KK;;;	DB	$0E+$60,$0E+$60
;;;KK;;;	DB	$0E+$78,$0E+$78
;;;KK;;;;- - - - - - - - - - - - - - - - - - - -
;;;KK;;;PWKEND2 ;Window Ken power up flash ! For in game !
;;;KK;;;	LD	A,(BGPFG)
;;;KK;;;	CP	%11100100
;;;KK;;;	RET	C
;;;KK;;;;
;;;KK;;;	LD	D,$02
;;;KK;;;	JR	PWDP02
;;;KK;;;;- - - - - - - - - - - - - - - - - - -
;;;KK;;;PWKENDP ;Window Ken power up flash ! For in window
;;;KK;;;	LD	D,$0C
;;;KK;;;PWDP02
;;;KK;;;	LD	HL,ITEMB
;;;KK;;;	LD	E,$00
;;;KK;;;PWDP03
;;;KK;;;	LD	A,(HLI)
;;;KK;;;	CP	PKEN
;;;KK;;;	JR	Z,PWDP08
;;;KK;;;	INC	E
;;;KK;;;	LD	A,E
;;;KK;;;	CP	D
;;;KK;;;	JR	NZ,PWDP03
;;;KK;;;;
;;;KK;;;	RET
;;;KK;;;;- - - - - - - - - - - - - - - - - - -
;;;KK;;;PWDP08
;;;KK;;;	LD	D,$00
;;;KK;;;	LD	HL,PWDPXD
;;;KK;;;	ADD	HL,DE
;;;KK;;;	LD	A,(HL)
;;;KK;;;	LD	(WORK0),A
;;;KK;;;;
;;;KK;;;	LD	HL,PWDPYD
;;;KK;;;	ADD	HL,DE
;;;KK;;;	LD	A,(HL)
;;;KK;;;	LD	(WORK1),A
;;;KK;;;;
;;;KK;;;	LD	A,(POWRFG)
;;;KK;;;;;	AND	A
;;;KK;;;	DEC	A
;;;KK;;;	JR	NZ,PWDP10
;;;KK;;;;
;;;KK;;;	LD	A,(FRCNT)
;;;KK;;;	AND	%00001000
;;;KK;;;	JR	NZ,PWDP10
;;;KK;;;;
;;;KK;;;	LD	A,(ENOMID)
;;;KK;;;	LD	E,A
;;;KK;;;	LD	D,$0
;;;KK;;;	LD	HL,ENOAM
;;;KK;;;	ADD	HL,DE
;;;KK;;;;
;;;KK;;;	LD	A,(FUEFLG)
;;;KK;;;	AND	A
;;;KK;;;	JR	Z,PWDP0C
;;;KK;;;;
;;;KK;;;	LD	HL,OAM+$9C
;;;KK;;;PWDP0C
;;;KK;;;	LD	A,(WNDYPS)
;;;KK;;;;;	ADD	A,$0E  
;;;KK;;;	PUSH	HL
;;;KK;;;	LD	HL,WORK1
;;;KK;;;	ADD	A,(HL)
;;;KK;;;	POP	HL
;;;KK;;;	LD	(HLI),A
;;;KK;;;	LD	A,(WORK0)
;;;KK;;;	LD	(HLI),A
;;;KK;;;	LD	A,$04
;;;KK;;;	LD	(HLI),A
;;;KK;;;	LD	A,$50
;;;KK;;;	LD	(HLI),A	
;;;KK;;;PWDP10
;;;KK;;;	LD	A,$01
;;;KK;;;	CALL	NXOMSBL
;;;KK;;;	RET
;;;KK;;;;------------------------------
;;;KK;;;;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;;;KK;;;;%				    %
;;;KK;;;;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;;;KK;;;ITPTXS
;;;KK;;;	DB	$07,$27,$07,$27,$07,$27,$07,$27,$07,$27
;;;KK;;;ITPTYS
;;;KK;;;	DB	$28,$28,$40,$40,$58,$58,$70,$70,$88,$88
;;;KK;;;MAPOBJ
;;;;KK;;;	LD	A,(FRCNT)
;;;KK;;;;	AND	%00010000
;;;KK;;;;	JP	Z,MPO010
;;;KK;;;;
;;;KK;;;	LD	A,(DJFLAG)
;;;KK;;;	AND	A
;;;KK;;;	JR	Z,MPO008
;;;KK;;;;
;;;KK;;;;	LD	A,(YKFLAG)
;;;KK;;;;	AND	A
;;;KK;;;;	JP	NZ,MPO010
;;;KK;;;;
;;;KK;;;	LD	A,(DNJNNO)
;;;KK;;;;;	CP	$01
;;;KK;;;;;	JP	Z,MPO010
;;;KK;;;;;	CP	$02
;;;KK;;;;;	JP	Z,MPO010
;;;KK;;;	CP	$08 ;DJMAX ;$20
;;;KK;;;	JP	NC,MPO010
;;;KK;;;;
;;;KK;;;	LD	A,(WDNJNPT)
;;;KK;;;	AND	%11111000
;;;KK;;;	ADD	A,$58
;;;KK;;;	LD	H,A
;;;KK;;;;
;;;KK;;;	LD	A,(WDNJNPT)
;;;KK;;;	RLA
;;;KK;;;	RLA
;;;KK;;;	RLA
;;;KK;;;	AND	%00111000
;;;KK;;;	ADD	A,$57
;;;KK;;;	LD	L,A
;;;KK;;;;
;;;KK;;;	LD	A,(DAMPFG)
;;;KK;;;	AND	%00100000
;;;KK;;;	JR	Z,MPO00A
;;;KK;;;;
;;;KK;;;	LD	A,(WDNJNPT)
;;;KK;;;	AND	%00111000
;;;KK;;;	CP	%00100000
;;;KK;;;	JR	NC,MPO00A
;;;KK;;;;
;;;KK;;;	LD	A,H
;;;KK;;;	SUB	$08
;;;KK;;;	LD	H,A
;;;KK;;;MPO00A
;;;KK;;;	LD	A,(DAMPFG)
;;;KK;;;	AND	%00010000
;;;KK;;;	JR	Z,MPO00B
;;;KK;;;;
;;;KK;;;	LD	A,(WDNJNPT)
;;;KK;;;	AND	%00000111
;;;KK;;;	CP	%00000100
;;;KK;;;	JR	C,MPO00B
;;;KK;;;;
;;;KK;;;	LD	A,L
;;;KK;;;	ADD	A,$08
;;;KK;;;	LD	L,A
;;;KK;;;MPO00B
;;;KK;;;	LD	A,H
;;;KK;;;	LD	(OAM+$00),A
;;;KK;;;	LD	A,L
;;;KK;;;	LD	(OAM+$01),A
;;;KK;;;;
;;;KK;;;	LD	A,$3F
;;;KK;;;	LD	(OAM+$02),A
;;;KK;;;;
;;;KK;;;;;;;;	LD	A,$0
;;;KK;;;;
;;;KK;;;	LD	A,(FRCNT)
;;;KK;;;	RLA
;;;KK;;;	AND	%00010000
;;;KK;;;;	JR	MPO00C
;;;KK;;;MPO008
;;;KK;;;;	LD	A,(GRNDPT)
;;;KK;;;;	AND	$F0
;;;KK;;;;	SRL	A
;;;KK;;;;	SRL	A
;;;KK;;;;	ADD	A,$58
;;;KK;;;;	LD	(OAM+$00),A
;;;KK;;;;;
;;;KK;;;;	LD	A,(GRNDPT)
;;;KK;;;;	AND	$0F
;;;KK;;;;	SLA	A
;;;KK;;;;	SLA	A
;;;KK;;;;	ADD	A,$5F
;;;KK;;;;	LD	(OAM+$01),A
;;;KK;;;;;
;;;KK;;;;	LD	A,$C0
;;;KK;;;;	LD	(OAM+$02),A
;;;KK;;;;;
;;;KK;;;;	LD	A,$10
;;;KK;;;MPO00C
;;;KK;;;	LD	(OAM+$03),A
;;;KK;;;MPO010
;;;KK;;;;--- Item waku move ---
;;;KK;;;	CALL	WAKUMV
;;;KK;;;;--- Fue window set check --
;;;KK;;;	CALL	FUESET
;;;KK;;;;--- Item waku Display ---
;;;KK;;;	LD	A,(MPWRK0)
;;;KK;;;	INC	A
;;;KK;;;	LD	(MPWRK0),A
;;;KK;;;	AND	%00010000
;;;KK;;;	JR	NZ,MPO0A0
;;;KK;;;;
;;;KK;;;	LD	A,(ITEMPT)
;;;KK;;;	LD	E,A
;;;KK;;;	LD	D,$0
;;;KK;;;	LD	HL,ITPTYS
;;;KK;;;	ADD	HL,DE
;;;KK;;;	LD	A,(HL)
;;;KK;;;	LD	(OAM+$04),A
;;;KK;;;	LD	(OAM+$08),A
;;;KK;;;	LD	HL,ITPTXS
;;;KK;;;	ADD	HL,DE
;;;KK;;;	LD	A,(HL)
;;;KK;;;	LD	(OAM+$05),A
;;;KK;;;	ADD	A,$20
;;;KK;;;	LD	(OAM+$09),A
;;;KK;;;	LD	A,$BE
;;;KK;;;	LD	(OAM+$06),A
;;;KK;;;	LD	(OAM+$0A),A
;;;KK;;;	LD	A,$30
;;;KK;;;	LD	(OAM+$07),A
;;;KK;;;	LD	A,$10
;;;KK;;;	LD	(OAM+$0B),A
;;;KK;;;MPO0A0
;;;KK;;;	RET
;;;KK;;;;====================================
;;;KK;;;WKMVXD
;;;KK;;;	DB	$00,$01,$FF,$00
;;;KK;;;WKMVYD
;;;KK;;;	DB	$00,$FE,$02,$00
;;;KK;;;;
;;;KK;;;WAKUMV
;;;KK;;;	LD	A,(ITEMPT)
;;;KK;;;	LD	(WITEMPT),A
;;;KK;;;;
;;;KK;;;	LD	A,(FUETM)
;;;KK;;;	LD	HL,FUETM2
;;;KK;;;	OR	(HL)
;;;KK;;;	JR	NZ,WKM030
;;;KK;;;;
;;;KK;;;	LD	A,(FUEFLG)
;;;KK;;;	AND	A
;;;KK;;;	JR	NZ,WKM020	; Fue on only up down !!
;;;KK;;;;
;;;KK;;;;	LD	E,$FF
;;;KK;;;;;
;;;KK;;;;	LD	D,10+1
;;;KK;;;;;
;;;KK;;;;	LD	HL,ITEMF
;;;KK;;;;WKM000
;;;KK;;;;	INC	E
;;;KK;;;;	DEC	D
;;;KK;;;;	JR	Z,WKM010
;;;KK;;;;;
;;;KK;;;;	LD	A,(HLI)
;;;KK;;;;	AND	A
;;;KK;;;;	JR	NZ,WKM000
;;;KK;;;;WKM010
;;;KK;;;;	LD	A,E
;;;KK;;;;	LD	(ITEMMX),A
;;;KK;;;;
;;;KK;;;	LD	A,(KEYA2)
;;;KK;;;	AND	%00000011
;;;KK;;;	LD	E,A
;;;KK;;;	LD	D,$00
;;;KK;;;	LD	HL,WKMVXD
;;;KK;;;	ADD	HL,DE
;;;KK;;;	LD	A,(ITEMPT)
;;;KK;;;	ADD	A,(HL)
;;;KK;;;	LD	(ITEMPT),A
;;;KK;;;;;	LD	HL,ITEMMX
;;;KK;;;	CP	$0A ;(HL)
;;;KK;;;	JR	C,WKM020
;;;KK;;;;
;;;KK;;;	RLA
;;;KK;;;	LD	A,$00
;;;KK;;;	JR	NC,WKM018
;;;KK;;;;
;;;KK;;;;;	LD	A,(HL)
;;;KK;;;;;	DEC	A
;;;KK;;;	LD	A,$09
;;;KK;;;WKM018
;;;KK;;;	LD	(ITEMPT),A
;;;KK;;;WKM020
;;;KK;;;	LD	A,(KEYA2)
;;;KK;;;	SRL	A
;;;KK;;;	SRL	A
;;;KK;;;	AND	%00000011
;;;KK;;;	LD	E,A
;;;KK;;;	LD	D,$00
;;;KK;;;	LD	HL,WKMVYD
;;;KK;;;	ADD	HL,DE
;;;KK;;;	LD	A,(ITEMPT)
;;;KK;;;	ADD	A,(HL)
;;;KK;;;	LD	(ITEMPT),A
;;;KK;;;;;	LD	HL,ITEMMX
;;;KK;;;	CP	$0A ;(HL)
;;;KK;;;	JR	C,WKM030
;;;KK;;;;
;;;KK;;;	RLA
;;;KK;;;	LD	A,$00
;;;KK;;;	JR	NC,WKM028
;;;KK;;;;
;;;KK;;;;;	LD	A,(HL)
;;;KK;;;;;	DEC	A
;;;KK;;;	LD	A,$09
;;;KK;;;WKM028
;;;KK;;;	LD	(ITEMPT),A
;;;KK;;;WKM030
;;;KK;;;	LD	A,(KEYA1)
;;;KK;;;	AND	%00001111
;;;KK;;;	JR	Z,WKM038	; Move ?
;;;KK;;;;				; yes !
;;;KK;;;	LD	A,(FUEFLG)
;;;KK;;;	AND	A
;;;KK;;;	JR	NZ,WKM038	; Fue on only up down !!
;;;KK;;;;
;;;KK;;;	XOR	A
;;;KK;;;	LD	(MPWRK0),A	; Display timing reset !
;;;KK;;;WKM038
;;;KK;;;	LD	A,(FUEFLG)
;;;KK;;;	AND	A
;;;KK;;;	JR	Z,WKM039
;;;KK;;;;
;;;KK;;;	LD	A,(FUETM)
;;;KK;;;	LD	HL,FUETM2
;;;KK;;;	OR	(HL)
;;;KK;;;	JR	NZ,WKM039
;;;KK;;;;
;;;KK;;;	LD	A,(KEYA2)
;;;KK;;;	AND	%10000000
;;;KK;;;	JR	Z,WKM039
;;;KK;;;;
;;;KK;;;	LD	A,$01
;;;KK;;;	LD	(FUEAUT),A
;;;KK;;;	JR	WKM04F
;;;KK;;;;
;;;KK;;;WKM039
;;;KK;;;	LD	A,(ITEMPT)
;;;KK;;;	LD	HL,WITEMPT
;;;KK;;;	CP	(HL)
;;;KK;;;	JR	Z,WKM05A
;;;KK;;;;
;;;KK;;;	LD	HL,SOUND1
;;;KK;;;	LD	(HL),$0A	;(S)
;;;KK;;;;
;;;KK;;;	LD	E,A
;;;KK;;;	LD	D,$00
;;;KK;;;	LD	HL,ITEMF
;;;KK;;;	ADD	HL,DE
;;;KK;;;	LD	A,(HL)
;;;KK;;;	CP	POKAR
;;;KK;;;	JR	NZ,WKM04F
;;;KK;;;;
;;;KK;;;	LD	A,(ONPUFG)
;;;KK;;;	AND	A
;;;KK;;;	JR	Z,WKM04F	;曲覚えた？
;;;KK;;;;				;Yes !
;;;KK;;;	LD	A,FUEC1
;;;KK;;;	LD	(BKCHFG),A
;;;KK;;;;
;;;KK;;;	LD	A,$10
;;;KK;;;	LD	(FUETM),A
;;;KK;;;;
;;;KK;;;	LD	A,$01
;;;KK;;;	JR	WKM051
;;;KK;;;WKM04F
;;;KK;;;	LD	A,(FUEFLG)
;;;KK;;;	AND	A
;;;KK;;;	JR	Z,WKM05A
;;;KK;;;;
;;;KK;;;	LD	A,$10
;;;KK;;;	LD	(FUETM2),A
;;;KK;;;;
;;;KK;;;;	LD	A,FUEC3
;;;KK;;;;	LD	(BKCHFG),A
;;;KK;;;;
;;;KK;;;	XOR	A
;;;KK;;;WKM051
;;;KK;;;	LD	(FUEFLG),A
;;;KK;;;;
;;;KK;;;WKM05A
;;;KK;;;;- - Item chenge - - -
;;;KK;;;	LD	HL,FUETM2
;;;KK;;;	LD	A,(FUETM)
;;;KK;;;	OR	(HL)
;;;KK;;;	JP	NZ,WKM070
;;;KK;;;;
;;;KK;;;	LD	A,(KEYA2)
;;;KK;;;	AND	%00010000
;;;KK;;;	JR	Z,WKM050
;;;KK;;;;
;;;KK;;;	LD	A,(ITEMA)
;;;KK;;;	PUSH	AF
;;;KK;;;;
;;;KK;;;	LD	HL,ITEMF
;;;KK;;;	LD	A,(ITEMPT)
;;;KK;;;	LD	C,A
;;;KK;;;	LD	B,$0
;;;KK;;;	ADD	HL,BC
;;;KK;;;	LD	A,(HL)
;;;KK;;;	LD	(ITEMA),A
;;;KK;;;;
;;;KK;;;	POP	AF
;;;KK;;;	LD	(HL),A
;;;KK;;;;
;;;KK;;;	CP	09
;;;KK;;;	JR	NZ,WKM048
;;;KK;;;;
;;;KK;;;	LD	A,(ONPUFG)
;;;KK;;;	AND	A
;;;KK;;;	JR	Z,WKM048	;曲覚えた？
;;;KK;;;;
;;;KK;;;	LD	A,FUEC1
;;;KK;;;	LD	(BKCHFG),A
;;;KK;;;;
;;;KK;;;	LD	A,$10
;;;KK;;;	LD	(FUETM),A
;;;KK;;;;
;;;KK;;;	LD	A,$01
;;;KK;;;	LD	(FUEFLG),A
;;;KK;;;	JR	WKM049
;;;KK;;;WKM048
;;;KK;;;	LD	A,(FUEFLG)
;;;KK;;;	AND	A
;;;KK;;;	JR	Z,WKM049
;;;KK;;;;
;;;KK;;;	XOR	A
;;;KK;;;	LD	(FUEFLG),A
;;;KK;;;;
;;;KK;;;	LD	A,$10
;;;KK;;;	LD	(FUETM2),A
;;;KK;;;WKM049
;;;KK;;;	LD	C,$01
;;;KK;;;	LD	B,$00
;;;KK;;;;
;;;KK;;;	LD	E,$00
;;;KK;;;	CALL	ITEMDP2
;;;KK;;;;
;;;KK;;;	JR	ITCHNG
;;;KK;;;;
;;;KK;;;;	LD	A,(ITEMPT)
;;;KK;;;;	ADD	A,$2
;;;KK;;;;;
;;;KK;;;;	LD	C,A
;;;KK;;;;	LD	B,$00
;;;KK;;;;	DEC	A
;;;KK;;;;	LD	E,A
;;;KK;;;;	CALL	ITEMDP2
;;;KK;;;;;
;;;KK;;;;	RET
;;;KK;;;WKM050
;;;KK;;;	LD	A,(KEYA2)
;;;KK;;;	AND	%00100000
;;;KK;;;	JR	Z,WKM070
;;;KK;;;;
;;;KK;;;	LD	A,(ITEMB)
;;;KK;;;	PUSH	AF
;;;KK;;;;
;;;KK;;;	LD	HL,ITEMF
;;;KK;;;	LD	A,(ITEMPT)
;;;KK;;;	LD	C,A
;;;KK;;;	LD	B,$0
;;;KK;;;	ADD	HL,BC
;;;KK;;;	LD	A,(HL)
;;;KK;;;	LD	(ITEMB),A
;;;KK;;;;
;;;KK;;;	POP	AF
;;;KK;;;	LD	(HL),A
;;;KK;;;;
;;;KK;;;	CP	09
;;;KK;;;	JR	NZ,WKM04A	; Fue ?
;;;KK;;;;				; yes !
;;;KK;;;	LD	A,(ONPUFG)
;;;KK;;;	AND	A
;;;KK;;;	JR	Z,WKM04A	;曲覚えた？
;;;KK;;;;
;;;KK;;;	LD	A,$10		; Window set!
;;;KK;;;	LD	(FUETM),A
;;;KK;;;;
;;;KK;;;	LD	A,FUEC1
;;;KK;;;	LD	(BKCHFG),A
;;;KK;;;;
;;;KK;;;	LD	A,$01
;;;KK;;;	LD	(FUEFLG),A
;;;KK;;;;
;;;KK;;;	JR	WKM04B
;;;KK;;;WKM04A
;;;KK;;;	LD	A,(FUEFLG)
;;;KK;;;	AND	A
;;;KK;;;	JR	Z,WKM04B	; Fue clear ?
;;;KK;;;;				; yes ! Window reset!
;;;KK;;;	XOR	A
;;;KK;;;	LD	(FUEFLG),A
;;;KK;;;;
;;;KK;;;	LD	A,$10
;;;KK;;;	LD	(FUETM2),A
;;;KK;;;WKM04B
;;;KK;;;	LD	C,$00
;;;KK;;;	LD	B,$00
;;;KK;;;;
;;;KK;;;	LD	E,$FF
;;;KK;;;	CALL	ITEMDP2
;;;KK;;;;
;;;KK;;;ITCHNG
;;;KK;;;	LD	A,$13
;;;KK;;;	LD	(SOUND1),A	;(S)
;;;KK;;;;
;;;KK;;;	LD	A,(ITEMPT)
;;;KK;;;	ADD	A,$2
;;;KK;;;;
;;;KK;;;	LD	C,A
;;;KK;;;	LD	B,$00
;;;KK;;;	DEC	A
;;;KK;;;	LD	E,A
;;;KK;;;	CALL	ITEMDP2
;;;KK;;;WKM070
;;;KK;;;	RET
;;;KK;;;;===================================
;;;KK;;;FUECDT
;;;KK;;;;0
;;;KK;;;	DB	$F8,$F0,$22,$00
;;;KK;;;	DB	$F8,$F8,$22,$20
;;;KK;;;	DB	$F8,$00,$24,$00
;;;KK;;;	DB	$F8,$08,$24,$20
;;;KK;;;	DB	$F8,$10,$26,$00
;;;KK;;;	DB	$F8,$18,$26,$20
;;;KK;;;	DB	$08,$F0,$20,$00
;;;KK;;;	DB	$08,$F8,$20,$00
;;;KK;;;	DB	$08,$00,$20,$00
;;;KK;;;	DB	$08,$08,$20,$00
;;;KK;;;	DB	$08,$10,$20,$00
;;;KK;;;	DB	$08,$18,$20,$00
;;;KK;;;;1
;;;KK;;;	DB	$FB,$F4,$20,$00
;;;KK;;;	DB	$FB,$FC,$20,$20
;;;KK;;;	DB	$FB,$00,$20,$00
;;;KK;;;	DB	$FB,$08,$20,$20
;;;KK;;;	DB	$FB,$0C,$20,$00
;;;KK;;;	DB	$FB,$14,$20,$20
;;;KK;;;	DB	$05,$F4,$20,$00
;;;KK;;;	DB	$05,$FC,$20,$00
;;;KK;;;	DB	$05,$00,$20,$00
;;;KK;;;	DB	$05,$08,$20,$00
;;;KK;;;	DB	$05,$0C,$20,$00
;;;KK;;;	DB	$05,$14,$20,$00
;;;KK;;;;2
;;;KK;;;	DB	$FD,$F8,$20,$00
;;;KK;;;	DB	$FD,$10,$20,$20
;;;KK;;;	DB	$FD,$00,$20,$00
;;;KK;;;	DB	$FD,$08,$20,$20
;;;KK;;;	DB	$FD,$08,$20,$00
;;;KK;;;	DB	$FD,$10,$20,$20
;;;KK;;;	DB	$03,$F8,$20,$00
;;;KK;;;	DB	$03,$10,$20,$00
;;;KK;;;	DB	$03,$00,$20,$00
;;;KK;;;	DB	$03,$08,$20,$00
;;;KK;;;	DB	$03,$08,$20,$00
;;;KK;;;	DB	$03,$10,$20,$00
;;;KK;;;;3
;;;KK;;;	DB	$00,$00,$20,$00
;;;KK;;;	DB	$00,$08,$20,$20
;;;KK;;;	DB	$00,$00,$20,$00
;;;KK;;;	DB	$00,$08,$20,$20
;;;KK;;;	DB	$00,$00,$20,$00
;;;KK;;;	DB	$00,$08,$20,$20
;;;KK;;;	DB	$00,$00,$20,$00
;;;KK;;;	DB	$00,$08,$20,$00
;;;KK;;;	DB	$00,$00,$20,$00
;;;KK;;;	DB	$00,$08,$20,$00
;;;KK;;;	DB	$00,$00,$20,$00
;;;KK;;;	DB	$00,$08,$20,$00
;;;KK;;;;- - - - - - - - - - - - - - - - -
;;;KK;;;FUSLXD
;;;KK;;;	DB	$50,$60,$70
;;;KK;;;;- - - - - - - - - - - - - - - - -
;;;KK;;;FUCKBT
;;;KK;;;	DB	%00000100
;;;KK;;;	DB	%00000010
;;;KK;;;	DB	%00000001
;;;KK;;;;- - - - - - - - - - - - - - - - -
;;;KK;;;FUESET
;;;KK;;;	LD	A,(FUETM2)
;;;KK;;;	AND	A
;;;KK;;;	JR	Z,FUES20	
;;;KK;;;;
;;;KK;;;	DEC	A
;;;KK;;;	LD	(FUETM2),A
;;;KK;;;	JR	NZ,FUES10
;;;KK;;;;
;;;KK;;;	LD	HL,BKCHFG
;;;KK;;;	LD	(HL),FUEC4
;;;KK;;;;
;;;KK;;;	LD	A,(FUEAUT)
;;;KK;;;	AND	A
;;;KK;;;	JR	Z,FUES08
;;;KK;;;;
;;;KK;;;	XOR	A
;;;KK;;;	LD	(FUEAUT),A
;;;KK;;;;
;;;KK;;;	JP	WNDSET
;;;KK;;;FUES08
;;;KK;;;	RET
;;;KK;;;FUES10
;;;KK;;;	CPL	
;;;KK;;;	JR	FUES30
;;;KK;;;FUES20
;;;KK;;;	LD	A,(FUETM)
;;;KK;;;	AND	A
;;;KK;;;	JR	Z,FUES40	
;;;KK;;;;
;;;KK;;;	DEC	A
;;;KK;;;	LD	(FUETM),A
;;;KK;;;FUES30
;;;KK;;;	RRA
;;;KK;;;	RRA
;;;KK;;;	AND	$03
;;;KK;;;	JR	FUES50
;;;KK;;;FUES40
;;;KK;;;	LD	A,(FUEFLG)
;;;KK;;;	AND	A
;;;KK;;;	JP	Z,FUES90
;;;KK;;;;
;;;KK;;;	LD	A,$00
;;;KK;;;FUES50
;;;KK;;;	LD	(FUECPT),A
;;;KK;;;;
;;;KK;;;	LD	A,(FUECPT)
;;;KK;;;	LD	D,$00
;;;KK;;;	SLA	A
;;;KK;;;	SLA	A
;;;KK;;;	SLA	A
;;;KK;;;	SLA	A
;;;KK;;;	LD	E,A
;;;KK;;;	SLA	A
;;;KK;;;	ADD	A,E
;;;KK;;;	LD	E,A
;;;KK;;;;
;;;KK;;;	LD	HL,FUECDT
;;;KK;;;	ADD	HL,DE
;;;KK;;;	LD	DE,OAM+$18
;;;KK;;;	LD	C,12
;;;KK;;;	LD	B,%00000100
;;;KK;;;FUES70
;;;KK;;;	LD	A,(HLI)
;;;KK;;;	ADD	A,$30
;;;KK;;;	LD	(DE),A
;;;KK;;;	INC	DE
;;;KK;;;	LD	A,(HLI)
;;;KK;;;	ADD	A,$60
;;;KK;;;	LD	(DE),A
;;;KK;;;	INC	DE
;;;KK;;;	LD	A,(HLI)
;;;KK;;;	LD	(DE),A
;;;KK;;;	INC	DE
;;;KK;;;;
;;;KK;;;	CP	$22
;;;KK;;;	JR	Z,FUES71
;;;KK;;;	CP	$24
;;;KK;;;	JR	Z,FUES72
;;;KK;;;	CP	$26
;;;KK;;;	JR	Z,FUES73
;;;KK;;;	JR	FUES75
;;;KK;;;;
;;;KK;;;FUES71
;;;KK;;;	LD	B,%00000100
;;;KK;;;	JR	FUES74
;;;KK;;;FUES72 
;;;KK;;;	LD	B,%00000010
;;;KK;;;	JR	FUES74
;;;KK;;;FUES73
;;;KK;;;	LD	B,%00000001
;;;KK;;;FUES74
;;;KK;;;	LD	A,(ONPUFG)
;;;KK;;;	AND	B
;;;KK;;;	JR	NZ,FUES75	; Not fue ?
;;;KK;;;;				; yes ! not set!
;;;KK;;;	DEC	DE
;;;KK;;;	LD	A,$20
;;;KK;;;	LD	(DE),A
;;;KK;;;	INC	DE
;;;KK;;;FUES75
;;;KK;;;	LD	A,(HLI)
;;;KK;;;	LD	(DE),A
;;;KK;;;	INC	DE
;;;KK;;;	DEC	C
;;;KK;;;	JR	NZ,FUES70
;;;KK;;;;
;;;KK;;;	LD	A,(FUECPT)
;;;KK;;;	CP	$00
;;;KK;;;	JR	NZ,FUES90
;;;KK;;;;
;;;KK;;;	LD	A,(KEYA2)
;;;KK;;;	AND	%01000001
;;;KK;;;	JR	Z,FUES78
;;;KK;;;;
;;;KK;;;FUES755
;;;KK;;;	LD	HL,FUESLPT
;;;KK;;;;
;;;KK;;;	LD	A,(HL)
;;;KK;;;	INC	A
;;;KK;;;	CP	$03
;;;KK;;;	JR	NZ,FUES76
;;;KK;;;	XOR	A
;;;KK;;;FUES76
;;;KK;;;	LD	(HL),A
;;;KK;;;;
;;;KK;;;	LD	E,A
;;;KK;;;	LD	D,$00
;;;KK;;;;
;;;KK;;;	LD	HL,FUCKBT
;;;KK;;;	ADD	HL,DE
;;;KK;;;	LD	A,(ONPUFG)
;;;KK;;;	AND	(HL)
;;;KK;;;	JR	Z,FUES755	; Have on ?
;;;KK;;;;				; yes !
;;;KK;;;FUES78
;;;KK;;;	LD	A,(KEYA2)
;;;KK;;;	AND	%00000010
;;;KK;;;	JR	Z,FUES80
;;;KK;;;;
;;;KK;;;FUES79
;;;KK;;;	LD	HL,FUESLPT
;;;KK;;;	LD	A,(HL)
;;;KK;;;	DEC	A
;;;KK;;;	CP	$80
;;;KK;;;	JR	C,FUES7A
;;;KK;;;;
;;;KK;;;	LD	A,$02
;;;KK;;;FUES7A
;;;KK;;;	LD	(HL),A
;;;KK;;;;
;;;KK;;;	LD	E,A
;;;KK;;;	LD	D,$00
;;;KK;;;;
;;;KK;;;	LD	HL,FUCKBT
;;;KK;;;	ADD	HL,DE
;;;KK;;;	LD	A,(ONPUFG)
;;;KK;;;	AND	(HL)
;;;KK;;;	JR	Z,FUES79	; Have on ?
;;;KK;;;;				; yes !
;;;KK;;;FUES80
;;;KK;;;	LD	A,(FUESLPT)
;;;KK;;;;;	LD	(FUEMOD),A
;;;KK;;;;
;;;KK;;;	LD	A,(KEYA2)
;;;KK;;;	AND	%01000011
;;;KK;;;	JR	Z,FUES88
;;;KK;;;;
;;;KK;;;	CALL	ITCHNG
;;;KK;;;FUES88
;;;KK;;;	LD	HL,OAM+$10
;;;KK;;;	LD	A,$38
;;;KK;;;	LD	(HLI),A
;;;KK;;;;
;;;KK;;;	PUSH	HL
;;;KK;;;;
;;;KK;;;	LD	A,(FUESLPT)
;;;KK;;;	LD	E,A
;;;KK;;;	LD	D,$00
;;;KK;;;	LD	HL,FUSLXD
;;;KK;;;	ADD	HL,DE
;;;KK;;;	LD	A,(HL)
;;;KK;;;	POP	HL
;;;KK;;;	LD	(HLI),A
;;;KK;;;	PUSH	AF
;;;KK;;;;
;;;KK;;;	LD	A,$28
;;;KK;;;	LD	(HLI),A
;;;KK;;;	LD	A,$00
;;;KK;;;	LD	(HLI),A
;;;KK;;;;
;;;KK;;;	LD	A,$38
;;;KK;;;	LD	(HLI),A
;;;KK;;;;
;;;KK;;;	POP	AF
;;;KK;;;	ADD	A,$08
;;;KK;;;	LD	(HLI),A
;;;KK;;;;
;;;KK;;;	LD	A,$28
;;;KK;;;	LD	(HLI),A
;;;KK;;;;
;;;KK;;;	LD	(HL),$20
;;;KK;;;FUES90
;;;KK;;;	RET
;===================================
DL1MPDT
	DB	$7D,$7D,$7D,$7D,$7D,$7D,$7D,$7D
	DB	$7D,$7D,$7D,$7D,$7D,$7D,$7D,$7D
	DB	$7D,$7D,$7D,$7D,$7D,$7D,$EF,$7D
	DB	$7D,$EF,$EF,$EF,$7D,$7D,$EE,$7D
	DB	$ED,$7D,$EF,$ED,$EF,$ED,$EF,$7D
	DB	$EF,$EF,$ED,$ED,$EF,$EF,$EF,$7D
	DB	$EF,$7D,$EF,$ED,$ED,$7D,$7D,$7D
	DB	$7D,$ED,$EF,$EF,$7D,$7D,$7D,$7D
;
DL2MPDT
	DB	$7D,$7D,$7D,$7D,$7D,$7D,$7D,$7D
	DB	$7D,$ED,$ED,$ED,$EF,$EF,$EF,$7D
	DB	$7D,$7D,$ED,$7D,$7D,$ED,$7D,$7D
	DB	$7D,$EF,$EF,$7D,$7D,$EF,$EE,$7D
	DB	$7D,$EF,$7D,$7D,$7D,$7D,$EF,$7D
	DB	$7D,$ED,$7D,$7D,$7D,$7D,$EF,$7D
	DB	$7D,$EF,$EF,$EF,$EF,$EF,$EF,$7D
	DB	$7D,$7D,$ED,$ED,$ED,$ED,$7D,$7D
;
DL3MPDT
	DB	$EF,$EF,$ED,$EF,$7D,$7D,$7D,$7D
	DB	$ED,$EF,$ED,$ED,$7D,$7D,$7D,$7D
	DB	$EF,$EF,$EF,$EF,$7D,$7D,$EF,$7D
	DB	$7D,$ED,$EF,$7D,$7D,$EF,$EF,$EF
	DB	$7D,$ED,$7D,$7D,$7D,$7D,$EF,$7D
	DB	$7D,$ED,$ED,$7D,$7D,$7D,$EF,$7D
	DB	$7D,$ED,$7D,$7D,$7D,$7D,$EE,$7D
	DB	$7D,$EF,$ED,$7D,$7D,$7D,$EF,$EF
;
DL4MPDT
	DB	$7D,$7D,$7D,$7D,$7D,$7D,$7D,$7D
	DB	$7D,$7D,$7D,$ED,$EF,$7D,$7D,$7D
	DB	$7D,$EF,$7D,$EF,$EF,$7D,$ED,$7D
	DB	$7D,$EE,$EF,$ED,$EF,$ED,$EF,$7D
	DB	$7D,$EF,$ED,$ED,$EF,$EF,$ED,$7D
	DB	$7D,$7D,$EF,$EF,$EF,$ED,$7D,$7D
	DB	$7D,$7D,$ED,$EF,$ED,$ED,$7D,$7D
	DB	$7D,$7D,$7D,$EF,$ED,$7D,$7D,$7D
;
DL5MPDT
	DB	$7D,$EF,$EF,$EF,$ED,$EF,$7D,$7D
	DB	$7D,$7D,$7D,$EE,$7D,$EF,$ED,$7D
	DB	$7D,$EF,$EF,$EF,$EF,$EF,$ED,$ED
	DB	$7D,$7D,$7D,$7D,$7D,$EF,$EF,$EF
	DB	$7D,$7D,$7D,$EF,$EF,$EF,$EF,$7D
	DB	$7D,$7D,$ED,$EF,$EF,$EF,$7D,$7D
	DB	$7D,$7D,$7D,$ED,$EF,$EF,$7D,$7D
	DB	$7D,$7D,$7D,$7D,$ED,$EF,$ED,$EF
;
DL6MPDT
	DB	$7D,$7D,$7D,$7D,$7D,$7D,$7D,$7D
	DB	$ED,$7D,$7D,$7D,$7D,$7D,$7D,$ED
	DB	$EF,$ED,$7D,$EF,$EF,$7D,$ED,$EF
	DB	$EF,$ED,$EF,$EF,$EE,$EF,$ED,$EF
	DB	$ED,$EF,$7D,$EF,$EF,$7D,$EF,$EF
	DB	$7D,$EF,$ED,$EF,$EF,$EF,$EF,$7D
	DB	$7D,$ED,$ED,$7D,$7D,$EF,$ED,$7D
	DB	$7D,$EF,$EF,$EF,$EF,$EF,$EF,$7D
;
DL7MPDT
	DB	$7D,$ED,$ED,$7D,$7D,$7D,$7D,$7D
	DB	$EF,$EF,$EF,$EF,$7D,$EF,$EF,$7D
	DB	$EF,$EF,$EF,$ED,$7D,$EF,$EE,$7D
	DB	$EF,$ED,$EF,$EF,$7D,$7D,$7D,$7D
	DB	$ED,$EF,$EF,$ED,$7D,$EF,$ED,$7D
	DB	$EF,$EF,$EF,$EF,$EF,$EF,$EF,$ED
	DB	$ED,$EF,$EF,$EF,$EF,$EF,$EF,$EF
	DB	$EF,$EF,$EF,$EF,$7D,$EF,$EF,$7D
;
DL8MPDT
	DB	$7D,$7D,$7D,$EF,$EF,$7D,$7D,$7D
	DB	$ED,$7D,$7D,$EE,$ED,$7D,$7D,$ED
	DB	$EF,$EF,$ED,$EF,$EF,$ED,$EF,$EF
	DB	$7D,$ED,$EF,$EF,$EF,$EF,$EF,$7D
	DB	$7D,$ED,$EF,$EF,$EF,$EF,$EF,$7D
	DB	$EF,$ED,$EF,$ED,$EF,$EF,$EF,$EF
	DB	$EF,$ED,$EF,$EF,$EF,$ED,$EF,$EF
	DB	$ED,$7D,$7D,$EF,$EF,$7D,$7D,$ED
;
;
;
;
;DL9MPDT
;	DB	$A9,$A9,$A9,$A9,$A9,$A9,$A9,$A9
;	DB	$A9,$A9,$A9,$A9,$A9,$A9,$A9,$A9
;	DB	$A9,$A9,$A9,$A9,$A9,$A9,$A9,$A9
;	DB	$A9,$A9,$A9,$A9,$A9,$A9,$A9,$A9
;	DB	$A9,$A9,$A9,$A9,$A9,$A9,$A9,$A9
;	DB	$A9,$A9,$A9,$A9,$A9,$A9,$A9,$A9
;	DB	$A9,$A9,$A9,$A9,$A9,$A9,$A9,$A9
;	DB	$A9,$A9,$A9,$A9,$A9,$A9,$A9,$A9
;
DLAMPDT
	DB	$7D,$ED,$ED,$7D,$7D,$7D,$7D,$7D
	DB	$EF,$EF,$EF,$EF,$7D,$7D,$7D,$7D
	DB	$EF,$EF,$EF,$ED,$7D,$7D,$7D,$7D
	DB	$EF,$ED,$EF,$EF,$7D,$7D,$7D,$7D
	DB	$ED,$EF,$EF,$ED,$7D,$EF,$ED,$7D
	DB	$EF,$EF,$EF,$EF,$EF,$EF,$EF,$EF
	DB	$ED,$EF,$EF,$EF,$EF,$EF,$EE,$EF
	DB	$EF,$EF,$EF,$EF,$7D,$EF,$EF,$7D
;
NEWDJMPDT
	DB	$7D,$7D,$7D,$7D,$7D,$7D,$7D,$7D
	DB	$7D,$7D,$7D,$7D,$7D,$7D,$7D,$7D
	DB	$7D,$7D,$7D,$7D,$7D,$7D,$7D,$7D
	DB	$7D,$EE,$EF,$7D,$7D,$ED,$EF,$7D
	DB	$7D,$EF,$EF,$ED,$EF,$EF,$EF,$7D
	DB	$7D,$7D,$EF,$EF,$EF,$EF,$7D,$7D
	DB	$7D,$7D,$EF,$ED,$EF,$ED,$7D,$7D
	DB	$7D,$7D,$EF,$EF,$ED,$EF,$7D,$7D
;
;--------------------------------------------------------------------------
;DJMPDT	;ダンジョンマップ特殊部屋データ
;;;     0   1   2   3   4   5   6   7   8   9   A   B   C   D   E   F
; DB  $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;0
; DB  $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;1
; DB  $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;2
; DB  $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;3
; DB  $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;4
; DB  $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;5
; DB  $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;6
; DB  $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;7
; DB  $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;8
; DB  $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;9
; DB  $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;A
; DB  $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;B
; DB  $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;C
; DB  $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;D
; DB  $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;E
; DB  $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;F
;
;;;     0   1   2   3   4   5   6   7   8   9   A   B   C   D   E   F
; DB  $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;0
; DB  $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;1
; DB  $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;2
; DB  $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;3
; DB  $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;4
; DB  $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;5
; DB  $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;6
; DB  $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;7
; DB  $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;8
; DB  $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;9
; DB  $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;A
; DB  $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;B
; DB  $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;C
; DB  $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;D
; DB  $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;E
; DB  $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;F
;
;
DMPCDT
;		
	DB	$00	; 00000000
	DB	$02	; 00000001
	DB	$03	; 00000010
	DB	$07	; 00000011
	DB	$05	; 00000100
	DB	$0A	; 00000101
	DB	$0B	; 00000110
	DB	$0F	; 00000111
	DB	$04	; 00001000
	DB	$08	; 00001001
	DB	$09	; 00001010
	DB	$0E	; 00001011
	DB	$06	; 00001100
	DB	$0C	; 00001101
	DB	$0D	; 00001110
	DB	$01	; 00001111
;===================================
DJMPST
;;;11/26	LD	A,(GRNDPT)	;ヨーロッパ版で削除
;;;11/26	CP	$E8		;	これは、何の為に
;;;11/26	RET	Z		;		あるのか？
;
	LD	HL,DL1MPDT
	LD	A,(DNJNNO)
;
		CP	NEWDJ		;新ダンジョン？
		JR	NZ,DMP_PASS	;	NO --> DMP_PASS
		LD	HL,NEWDJMPDT
		JR	DMP_SET
DMP_PASS
;
	SWAP	A
	LD	E,A
	LD	D,$00
	SLA	E
	RL	D
	SLA	E
	RL	D
	ADD	HL,DE
;
DMP_SET
	LD	A,(DNJNNO)
	CP	$06
	JR	NZ,DMP7010	;レベル７？
;				; YES !
	LD	A,(WARPSV+$06)
	AND	%00000100
	JR	Z,DMP7010
;
	LD	HL,DLAMPDT	;柱こわした後！
DMP7010
	LD	DE,DJMPBF
	LD	BC,$0040
	CALL	DATA_MOV
;-- SBA
	LD	D,$0
	LD	E,$0
IDESUYO
	LD	HL,DJMPBF
	ADD	HL,DE
	LD	A,(HL)
	CP	$7D
	JR	Z,IDESU2
	CP	$ED
	JR	Z,DMS000
	CP	$EE
	JR	NZ,DMS010
DMS000
	LD	A,(KONPF)
	AND	A
	JR	NZ,DDDDD
;
	LD	(HL),$EF
DMS010
	LD	A,(DMAPF)
	AND	A
	JR	NZ,DDDDD
;
	LD	(HL),$7D
	JP	IDESU2
DDDDD
	PUSH	DE
	CALL	DJRMRD
;				; yes !
		ld	c,e
		ld	b,d
;;;KK;;;	PUSH	DE
;;;KK;;;	POP	BC
;
	POP	DE
	LD	A,(HL)
	BIT	7,A
	JR	Z,IDESU2	; Already in ?
;
	LD	A,(HL)
	AND	%00001111	; Door save data => Chr no. make! 
	LD	C,A
	LD	B,$0
	LD	HL,DMPCDT
	ADD	HL,BC
	LD	A,(HL)
	INC	A
;
IDESU1
	ADD	A,$D0-1
IDESU15
	LD	C,A
;
	LD	HL,DJMPBF
	ADD	HL,DE
	LD	A,(HL)
	CP	$EE
	JR	Z,DMS080	; Boss !
	CP	$ED
	JR	NZ,DMS082	; Takara
;
DMS080
	PUSH	DE
	PUSH	AF
;
	CALL	DJRMRD
;
	POP	AF
;
	LD	E,%00100000
	CP	$ED
	JR	NZ,DMS081
;
	LD	E,%00010000
;
DMS081
	LD	A,(HL)
	AND	E  ;%00010000
	POP	DE
	CP	$00
	JR	Z,IDESU2	; Already have takara or boss ?
;				; yes ! normal room set !
DMS082
	LD	HL,DJMPBF
	ADD	HL,DE
	LD	(HL),C
;
	LD	A,(DMAPF)
	AND	A
	JR	NZ,IDESU2
;
	LD	(HL),$7D
IDESU2
	INC	E
	LD	A,E
	CP	$40
	JP	NZ,IDESUYO
;
		LD	A,(CGBFLG)
		AND	A
		JR	Z,DJMPST_190
		DI			;割り込み禁止
		LD	E,$000
		LD	HL,DJMPBF
DJMPST_100
		LD	D,$001
		XOR	A
		LD	(SVBK),A
		LD	A,(HL)
		CP	$ED		;宝箱ある？
		JR	NZ,DJMPST_150
		LD	D,$006
DJMPST_150
		LD	A,$002
		LD	(SVBK),A
		LD	A,D
		LD	(HL),A
		INC	HL
		INC	E
		LD	A,E
		CP	$40
		JR	NZ,DJMPST_100
		XOR	A
		LD	(SVBK),A
		EI			;割り込み許可
DJMPST_190
;
	RET
;
;===================================
;===================================
;===================================
DIMAP4 ; NO.4
	LD	A,(DAMPFG)
	AND	$30
	SWAP	A
	RST	0
;
	DW	D4LV00
	DW	D4LV01
	DW	D4LV02
	DW	D4LV03
;
D4LV00
;;;;;;;;	LD	HL,$9D2E
	LD	HL,$9D0F
	JR	D4LEND
;
D4LV01
;;;;;;;;	LD	HL,$9D2F
	LD	HL,$9D10
	JR	D4LEND
;
D4LV02
;;;;;;;;	LD	HL,$9D0E
	LD	HL,$9CEF
	JR	D4LEND
;
D4LV03
;;;;;;;;	LD	HL,$9D0F
	LD	HL,$9CF0
;
D4LEND
	LD	E,$04		; Data start add.
	JR	DIMSUB
;===================================
DIMAP3 ; NO.3
	LD	A,(DAMPFG)
	AND	$30
	SWAP	A
	RST	0
;
	DW	D3LV00
	DW	D3LV01
	DW	D3LV02
	DW	D3LV03
;
;;;;;;;;D3LV00
;;;;;;;;	LD	HL,$9DAE
;;;;;;;;	JR	D3LEND
;
;;;;;;;;D3LV01
;;;;;;;;	LD	HL,$9DAF
;;;;;;;;	JR	D3LEND
;
D3LV00
D3LV02
;;;;;;;;	LD	HL,$9DAE
	LD	HL,$9D8F
	JR	D3LEND
;
D3LV01
D3LV03
;;;;;;;;	LD	HL,$9DAF
	LD	HL,$9D90
;
D3LEND
	LD	E,$24		; Data start add.
	JR	DIMSUB
;===================================
DIMAP2 ; NO.2
	LD	A,(DAMPFG)
	AND	$30
	SWAP	A
	RST	0
;
	DW	D2LV00
	DW	D2LV01
	DW	D2LV02
	DW	D2LV03
;
D2LV00
;;;;;;;;	LD	HL,$9D2A
;;;;;;;;	JR	D2LEND
;
D2LV01
;;;;;;;;	LD	HL,$9D2A
	LD	HL,$9D0B
	JR	D2LEND
;
D2LV02
;;;;;;;;	LD	HL,$9D0A
;;;;;;;;	JR	D2LEND
;
D2LV03
;;;;;;;;	LD	HL,$9D0A
	LD	HL,$9CEB
;
D2LEND
	LD	E,$00
	JR	DIMSUB
;===================================
DIMAPS ; NO.1
;;;;;;;;	LD	HL,$9DAA
	LD	HL,$9D8B
	LD	E,$20
;
DIMSUB	
		LD	A,(CGBFLG)
		AND	A
		JR	Z,DIMSUB_PASS
		PUSH	DE
		PUSH	HL		;ＶＲＡＭアドレスの退避
		DI			;割り込み禁止
		LD	A,$002
		LD	(SVBK),A
		LD	A,$001
		LD	(VBK),A		;バンク（１）セット
		LD	C,$0		;ループカウンタークリア
		LD	D,C
;
DIMLOP_LOOP
		PUSH	HL
;
		LD	HL,DJMPBF  ;DL1MPDT
		ADD	HL,DE
;
		LD	A,(HL)
		POP	HL
;
		LD	(HL),A
;
		INC	E
		INC	C
		LD	A,C
		CP	$10
		JR	Z,DMPSET_PASS
;
		INC	HL
		AND	$03
		JR	NZ,DIMLOP_LOOP
;
		LD	A,E
		ADD	A,$04
		LD	E,A
;
		LD	A,L
		ADD	A,$1C
		LD	L,A
;
		LD	A,$00
		ADC	A,H
		LD	H,A
;
		JR	DIMLOP_LOOP
;
DMPSET_PASS
		XOR	A
		LD	(SVBK),A
		LD	(VBK),A		;バンク（０）セット
		EI			;割り込み許可
		POP	HL
		POP	DE
DIMSUB_PASS
;
	LD	C,$0
	LD	D,C
DIMLOP
	PUSH	HL
;
	LD	HL,DJMPBF  ;DL1MPDT
	ADD	HL,DE
;
	LD	A,(HL)
	POP	HL
;
	LD	(HL),A
;
	INC	E
	INC	C
	LD	A,C
	CP	$10
	JR	Z,DMPSET
;
	INC	HL
	AND	$03
	JR	NZ,DIMLOP
;
	LD	A,E
	ADD	A,$04
	LD	E,A
;
	LD	A,L
	ADD	A,$1C
	LD	L,A
;
	LD	A,$00
	ADC	A,H
	LD	H,A
;
	JR	DIMLOP
DMPSET
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	Player yoko scroll move       %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;===================================
PLCMXS	
	DB	$00,$08,$F8
PLCMYS	
	DB	$00,$F0,$10
PLYKXS
	DB	$00,$10,$F0
;PLYKXS2
;	DB	$00,$14,$EC
PLYKMK
	DB	$FF,$00,$01
;PLYKXA	;ジャンプ加速！
;	DB	$00,$01,$FF
;-------------------------------
PLYKMV
	LD	A,(PLJPFG)
	AND	A
	JR	NZ,PYM0122
;
	LD	A,(PLSTOP)
	CP	$01
	JR	Z,PYM090
	CP	$02
	JR	Z,PYM090
;
PYM0122
;;	CALL	DAMECK	; Damege hanekairi check 
	LD	A,(HANEFG)
	AND	A
	JR	Z,PYM010
;
	DEC	A
	LD	(HANEFG),A
;
	CALL	MVCALC
	CALL	PLBGCK
;
	LD	A,(PLSTAT)
	CP	$02
	JR	Z,PYM090
;
	LD	A,(PLYSPD)
	ADD	A,$03
	LD	(PLYSPD),A
;
PYM090
	RET
;
;===================================================
PYM010
	LD	A,(PLSTAT)
	RST	0
	DW	YOKOMV
	DW	CLIMBMV
	DW	YKSWIM
;===================================
YSWXD	
	DB	$00,$08,$F8,$00,$00,$06,$FA,$00
	DB	$00,$06,$FA,0,0,0,0,0
;
;PSWXD2
;	DB	$00,$10,$F0,$00,$00,$0C,$F4,$00
;	DB	$00,$0C,$F4,0,0,0,0,0
;
YSWYD	
	DB	$00,$00,$00,$00,$F8,$FA,$FA,$00
	DB	$08,$06,$06,0,0,0,0,0
;
;PSWYD2
;	DB	$00,$00,$00,$00,$F0,$F4,$F4,$00
;	DB	$10,$0C,$0C,0,0,0,0,0
PLSWMK
	DB	$00,$00,$01
YKSWIM
	LD	A,(DNJNNO)
	CP	$07	; Lv.8
	JR	NZ,OBRS10S ;おぼれる！    
;
	CALL	OBRS10
;
	LD	A,(HARTDW)
	ADD	A,$04
	LD	(HARTDW),A
;
	LD	A,$03
	LD	(SOUND2),A	;(S)
;
	LD	A,$80
	LD	(PLFLSH),A
	RET
OBRS10S
	LD	A,(HIREF)	;足ひれ？
	AND	A
	JP	Z,OBRS10 ;おぼれる！    ;NXGOTO
;
	LD	HL,PLCMKI
	RES	1,(HL)
;
	CALL	DUSHCL2
;
	LD	(PLJPFG),A
;
	LD	A,(FRCNT)
	AND	$01
	JR	NZ,YSW020
;
	LD	A,(KEYA1)
	AND	%00001111
	LD	E,A
	LD	D,$00
;
	LD	HL,YSWXD
;
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,PLXSPD
	SUB	(HL)
	JR	Z,YSW010
;
	INC	(HL)
;
	BIT	7,A
	JR	Z,YSW010
;
	DEC	(HL)	
	DEC	(HL)	
YSW010
	LD	HL,YSWYD
;
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,PLYSPD
	SUB	(HL)
	JR	Z,YSW020
;
	INC	(HL)
;
	BIT	7,A
	JR	Z,YSW020
;
	DEC	(HL)	
	DEC	(HL)	
YSW020
	LD	HL,PLWKCT
	INC	(HL)
;
	LD	A,(KEYA1)
	AND	$3
	JR	Z,YKSW10
;
	LD	E,A
	LD	D,$0
	LD	HL,PLSWMK
	ADD	HL,DE
	LD	A,(HL)
	LD	(PLCMKI),A
;
YKSW10
	CALL	MVCALC
	CALL	PLBGCK
;
	LD	A,(WNDFLG)
	AND	A
	RET	NZ
;
	LD	A,(WORK0)
	CP	$B0
	JR	Z,YSM0CA
	CP	$B1
	JR	NZ,YSM0C5
;
	LD	A,$1
	JR	YSM0C8
;
YSM0C5
	XOR	A
YSM0C8
	LD	(PLSTAT),A
YSM0CA
		jp	PYCK00
;;;KK;;;	CALL	PYCK00
;;;KK;;;	RET
;===================================
CLIMBMV
	CALL	DUSHCL2
	LD	(PLJPFG),A
	LD	(PLJCCT),A
	LD	(PLJCPT),A
;
	LD	A,(KEYA1)
	AND	$03
	LD	E,A
	LD	D,$0
	LD	HL,PLCMXS
	ADD	HL,DE
	LD	A,(HL)
	LD	(PLXSPD),A
;
	LD	A,(KEYA1)
	RRA
	RRA
	AND	$3
	LD	E,A
;
	LD	HL,PLCMYS
	ADD	HL,DE
	LD	A,(HL)
	LD	(PLYSPD),A
;
	LD	A,$2
	LD	(PLCMKI),A
;
	LD	A,(KEYA1)
	AND	$0F
	JR	Z,CLM010
;
	LD	HL,PLWKCT
	INC	(HL)
CLM010
	CALL	MVCALC
	CALL	PLBGCK
;
	LD	A,(WNDFLG)
	AND	A
	RET	NZ
;
	LD	A,(WORK0)
	CP	$B1
	JR	Z,CLM0CA
	CP	$B0
	JR	NZ,CLM0C8
;
	LD	A,$2
	JR	CLM0C9
CLM0C8
	XOR	A
CLM0C9
	LD	(PLSTAT),A
CLM0CA
	CALL	PYCK00
;
	LD	A,(PLCBFG)
	AND	%00001000
	JR	Z,CLM020
;
	XOR	A
	LD	(PLSTAT),A
CLM020
	RET
;===================================
YOKOMV
	LD	A,(DNJNNO)
	CP	$06
	JR	NZ,YKMV090
;
	LD	A,(GRNDPT)
	CP	$F8
	JR	NZ,YKMV090	;塔からしたへ行く！
;
	LD	A,(PLJPFG)
	AND	A
	JR	NZ,YKMV090	;;;;;;;;5/11
;
	LD	A,(PLXPSL)
	SUB	$46
	ADD	A,$04
	CP	$08
	JR	NC,YKMV090
;
	LD	A,(KEYA2)
	AND	%00000100
	JP	NZ,NXGOTO
YKMV090
	LD	A,(DUSHFG)
	AND	A
	JR	Z,PYM070
;
	LD	A,(KEYA2)
	AND	%00001111
	JR	NZ,PYM002
;
	LD	A,(PLWKCT)
	ADD	A,$2
	LD	(PLWKCT),A	; Move count clear !
;
	CALL	DSSDST	;(S)
	JP	PKM0C0
PYM002
	LD	(DUSHMK),A
;
	LD	A,(DUSHTM)
	ADD	A,$0C  ;10
	LD	(DUSHTM),A
;
	CALL	DUSHCL
PYM070
	LD	A,(ONLFFG)
	AND	A
	JR	NZ,PYM078
;
	LD	A,(PLCBFG)
	AND	%00001000
	JR	NZ,PYM078	; Flying ?
;				; yes !
	LD	A,(PLJPFG)
	AND	A
	JR	NZ,PYM072
;
	LD	A,$01
	LD	(PLJPFG),A
PYM072
	LD	A,$0A
	LD	(PLWKCT),A
;
	LD	A,(PLXSPD)
	AND	A
	JR	Z,PYM075
	RLCA
	AND	$1
	LD	(PLCMKI),A
;
PYM075
	LD	A,(KEYA1)
	AND	$03
	JR	Z,PYM077
	LD	E,A
	LD	D,$00
	LD	HL,PLYKXS
	ADD	HL,DE
	LD	A,(PLXSPD)
	SUB	(HL)
	JR	Z,PYM077	
;
	LD	E,$01
	BIT	7,A
	JR	NZ,PYM076
	LD	E,$FF
PYM076
	LD	A,(PLXSPD)
	ADD	A,E
	LD	(PLXSPD),A
PYM077
	JR	PKM0C0
;
PYM078
	LD	A,(PLJPFG)
	AND	A
	JR	Z,PYM079
;
	LD	A,$07
	LD	(SOUND3),A	;(S)
;
;;	XOR	A
	CALL	DUSHCL2
	LD	(PLJPFG),A
	LD	(PLJCPT),A
	LD	(PLJCCT),A
PYM079
	LD	A,(KEYA1)
	AND	$03
	LD	E,A
	LD	D,$0
	LD	HL,PLYKXS
	ADD	HL,DE
	LD	A,(HL)
	LD	(PLXSPD),A
;
	LD	HL,PLYKMK
	ADD	HL,DE
	LD	A,(HL)
	CP	$FF
	JR	Z,PKM0B0
;
	LD	E,A
;
	LD	A,(KENON)
	AND	A
	JR	NZ,PKM0CF
;
	LD	A,E
	LD	(PLCMKI),A
PKM0CF
	LD	HL,PLWKCT
	INC	(HL)
	JR	PKM0C0
PKM0B0
	LD	A,(DUSHCT)
	AND	A
	JR	NZ,PKM0C0
;
	XOR	A
	LD	(PLWKCT),A
PKM0C0
	LD	A,(PCUTFG)
	AND	A
	JR	NZ,PKM0C11
;
	LD	A,(PLSTOP)
	AND	A
	JR	NZ,PKM0C12
;
PKM0C11
	CALL	MVCALC
;
	LD	HL,PLCMKI
	LD	A,(KEYA1)
	AND	$0F
	CP	$04
	JR	NZ,PKM0C1
;
	LD	(HL),$02
PKM0C1
	CP	$08
	JR	NZ,PKM0C12
;
	LD	(HL),$03
PKM0C12
	CALL	PLBGCK
;
	LD	A,(WNDFLG)
	AND	A
	RET	NZ
;
	LD	A,(WORK0)
	CP	$B1		; Hashigo
	JR	Z,PKM0C3
	CP	$B0		; Mizu
	JR	NZ,PKM0CA
;
	LD	A,(PLCBFG)
	AND	A
	JR	NZ,PKM0C2
;
	LD	A,(PLFLSH)
	AND	A
	JR	NZ,PKM0CQ
;
	LD	A,$02
	CALL	WUPSET
PKM0CQ
	LD	A,$4
	LD	(PLYSPD),A
;
	XOR	A
	LD	(PLXSPD),A
PKM0C2
	LD	A,$2
	JR	PKM0C8
PKM0C3
;;FF	LD	A,(PLCBFG)
;;FF	AND	%00001000
;;FF	JR	Z,PKM0C5
;
	LD	A,(KEYA1)
	AND	%00001100
;;	AND	%00000100
	JR	Z,PKM0CA
;
PKM0C5
	LD	A,$1
PKM0C8
	LD	(PLSTAT),A
PKM0CA
	LD	HL,PLYSPD
	LD	A,(HL)
	SUB	$40
	AND	%10000000
	JR	Z,PYCK00
;
	INC	(HL)
;;	INC	(HL)
;
	LD	A,(PLYSPD)
	AND	%10000000
	JR	Z,PKM0CCC
;
	LD	E,%00100000
;
	LD	A,(ITEMB)
	CP	PHANE
	JR	Z,PKM0CB
;
	LD	E,%00010000
PKM0CB
	LD	A,(KEYA1)
	AND	E
	JR	NZ,PYCK00
;
PKM0CCC
	INC	(HL)
PYCK00
	RET
;
;===================================
PYCBBT
	DB	%00000001
	DB	%00000010
	DB	%00000100
	DB	%00001000
	DB	%00010000
PLYBXD
	DB	$0B,$05,$08,$08
	DB	$08
PLYBYD
	DB	$08,$08,$04,$10
	DB	$0B
;;	DB	$08
;
PLYKBC
;- - - Center check - - -
	LD	C,$4
	LD	B,$0
;
	CALL	PYBSUB
	LD	A,(WORK1)
	LD	(WORK0),A
	XOR	A
	LD	(PLCBFG),A
;- - -Side check - - -
	LD	C,$0
;
	LD	A,(PLXSPD)
	AND	A
	JR	Z,PYB020
	AND	%10000000
	JR	Z,PYB010
	INC	C
PYB010
	CALL	PYBSUB
;
	LD	A,(UNITNO)
	CP	DHIMI
	JR	NZ,PYBHMI	;氷ブロック？
;
	LD	A,(IWAMSFG)
	AND	A
	JR	NZ,HMR0567	;１画面１回のみ！ 
;
	INC	A
	LD	(IWAMSFG),A
;
	LD	A,$51
	CALL	MSGCHK	;ヒント！
HMR0567
PYBHMI
	LD	A,(UNITNO)
	CP	$FF
	JR	NZ,PYB020
;
	CALL	PYBTON
PYB020
;- - -Head & foot check - - -
	LD	C,$02
;
	LD	A,(PLYSPD)
	AND	A
	AND	%10000000
	JR	NZ,PYB031
	INC	C
;
PYB031
	CALL	PYBSUB
;
	LD	A,(PLYSPD)
	AND	%10000000
	JR	NZ,PYB032
;
	LD	A,(KEYA1)
	AND	%00001000
	JR	NZ,PYB032
;
	LD	A,(ENHELP2)	; Y point
	AND	$0F
	CP	$03
	JR	NC,PYB032
;
	LD	A,(UNITNO)
	CP	DYTH0		; Top hashigo ?
	JR	Z,PYB033	
	CP	DYTH1
	JR	Z,PYB033	
	CP	DYTH2
	JR	Z,PYB033	
PYB032
	LD	A,(PLCBFG)
	AND	%00001000
	JR	Z,PKM0CC
;
PYB033
	LD	A,(PLCBFG)
	OR	%00001000
	LD	(PLCBFG),A
;
	XOR	A
	LD	(PLYSPD),A
;
	LD	A,(PLYPSL)
	AND	$0F0
	ADD	A,$0
	LD	(PLYPSL),A
PKM0CC
	LD	A,(PLCBFG)
	AND	%00000100
	JR	Z,PKM0CD
;
	LD	A,(PLSVYL)
	LD	(PLYPSL),A
PKM0CD
	LD	A,(PLCBFG)
	AND	$03
		ret	Z
;;;KK;;;	JR	Z,PYM005
;
	LD	A,(PLSVXL)
	LD	(PLXPSL),A
;
	LD	A,(DUSHFG)
	AND	A
		ret	Z
;;;KK;;;	JR	Z,PYM003
;
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
	CALL	MVCALC
	CALL	PLBGCK
;
	LD	A,$20
	LD	(TILTCT),A
;
	LD	A,(PLCMKI)
	AND	%00000010
	SLA	A
	LD	(TILTMK),A
;
	LD	A,$0B
	LD	(SOUND1),A	;(S)
;;	CALL	BBSDST	;(S)
	RET
;
;;;KK;;;PYM003
;;;KK;;;;;FF	XOR	A
;;;KK;;;;;FF	LD	(PLXSPD),A
;;;KK;;;PYM005
;;;KK;;;	RET
;=========================================
PYBSUB
	LD	HL,PLYBXD
	ADD	HL,BC
	LD	A,(PLXPSL)
	SUB	$8
	ADD	A,(HL)
	SWAP	A
	AND	$0F
	LD	E,A
	LD	HL,PLYBYD
	ADD	HL,BC
	LD	A,(PLYPSL)
	ADD	A,(HL)
	SUB	$10
	LD	(ENHELP2),A
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
;;	LD	HL,GRBGCR
;;	ADD	HL,DE
;;	LD	A,(HL)
	CALL	BGCRRD
	LD	(WORK1),A
;;	CP	$FF
;;	JR	Z,PYBC19
	CP	$60
	JR	Z,PYBC19
	CP	$01
	JR	NZ,PYBC20
;
PYBC19
PYBTON
	LD	HL,PYCBBT
	ADD	HL,BC
;
	LD	A,(PLCBFG)
	OR	(HL)
	LD	(PLCBFG),A
PYBC20
	RET
;===================================
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
PLBGCK
	LD	A,(MSGEFG)
	LD	HL,WNDFLG
	OR	(HL)
	RET	NZ
;
	LD	A,(DNJNNO)
	CP	$1F
	JR	NZ,Y1FCK10
;
	LD	A,(YKFLAG)
	AND	A
	JR	Z,Y1FCK10
;
	LD	A,(GRNDPT)
	CP	$EB
	JR	Z,Y1FCK08
	CP	$EC
	JR	NZ,Y1FCK10
Y1FCK08
	LD	A,(PLYPSL)
	CP	$2C
	JP	C,NXGOTO
Y1FCK10
;	XOR	A
;PLBGCK2
;	LD	(BGCKMD),A	;0:Normal 1:外部からのコール
;
;- - - Disdplay limit check - - -
	LD	E,$02
	LD	A,(PLYPSL)
	CP	$0C  ;10
	JR	C,PBC00C  ;8
	INC	E
	CP	$84  ;80  ;70
	JR	NC,PBC00C ;10 ;8
;
	LD	E,$01
	LD	A,(PLXPSL)
	CP	$04 ;8
	JR	C,PBC012
	DEC	E
	CP	$9C  ;98 ;0
	JR	NC,PBC012
;
	JP	PBC020
PBC00C
	LD	A,(YKFLAG)
	AND	A
	JR	NZ,PBC00C8
;
	LD	A,(DNJNNO)
;	CP	$08
;	JR	NZ,PBC00C1
;;
;	LD	A,(GRNDPT)
;	CP	$70
;	JP	Z,NXGOTO
;	JP	PBC010
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;PBC00C1
	CP	$1F
	JP	NZ,PBC010
;
	LD	A,(GRNDPT)
	CP	$F5
	JP	Z,NXGOTO
	CP	$F2
	JP	NZ,PBC010
;
	JP	NXGOTO
;
PBC00C8
	LD	A,(GRNDPT)
	CP	$E8
	JP	Z,PBC010	; Big bird boss room !!
	CP	$F8
	JP	Z,PBC010
;
;;;	LD	A,(GRNDPT)
	CP	$FD	;マンボウルーム！
	JR	Z,PBC011
	CP	$A3
	JP	Z,NXGOTO
	CP	$C0
	JP	Z,NXGOTO
	CP	$C1
	JP	Z,NXGOTO
	CP	$FF
	JR	NZ,PBC00A	; Big fish room ?
;				; yes !
	LD	A,(PLYPSL)
	CP	$50
	JR	NC,PBC011	; Uper limit ?
;				; yes !
	LD	A,(ENMODE)
	AND	A
	JR	Z,PBC010	; Boss fail->Scroll ok !!
;
PBC011
	LD	A,(PLSVYL)
	LD	(PLYPSL),A	; Stop !
;
	XOR	A
	LD	(PLYSPD),A
	JP	PBC020
PBC00A
	LD	A,(PLSTAT)
	CP	$02
	JR	Z,PBC010
;
	JP	NXGOTO
;;--------------------------------------
PBC012	; Side limit cross 
	LD	A,(PLSVXL)
	LD	(PLXPSL),A
;
	XOR	A
	LD	(PLXSPD),A
;
	LD	A,(YKFLAG)
	AND	A
	JR	Z,PBC010
;
;;	LD	A,(DNJNNO)
;;	CP	DJROOM
;;	JR	C,PBC010	;?
;
	LD	A,(GRNDPT)
	CP	$F5
	JP	Z,NXGOTO4	;橋の下釣りおやじ！
	CP	$FD	;マンボウルーム！
	JP	Z,NXGOTO4
	CP	$E9	;剣２パワーアップルーム！
	JP	Z,NXGOTO
	CP	$E8
	JP	Z,PBC020	; Big bird boss room !!
	CP	$F8
	JP	Z,PBC020
	CP	$EF
	JP	Z,PBC020
	CP	$FF
	JP	Z,PBC020
	CP	$C0
	JR	NZ,PBC00F
	LD	A,(PLXPSL)
	CP	$30
	JP	C,PBC020
	JR	PBC010
;
PBC00F
	CP	$C1
	JR	NZ,PBC010
;
	LD	A,(PLXPSL)
	CP	$50
	JP	NC,PBC020
;
PBC010
	CALL	PLPSRV
;
	LD	A,(FTBGNO)
	CP	$50
	JP	Z,PBC030	;穴落ち中？
	CP	$51
	JP	Z,PBC030	;穴落ち中？
;
	LD	A,(HASGFG)
	CP	$07
	JP	Z,PBC030
	LD	A,(PLMODE)
	CP	PFOLE
	JP	Z,PBC030	;穴落ち中？
;				;いいえ！
	LD	A,(YKFLAG)	
	AND	A
	JR	NZ,PBC312
;				
	LD	A,(PLJPFG)
	AND	A
	JP	NZ,PBC030
;- - - - - - - - - - - - - - - - - - -
PBC312
	LD	A,(DUSHFG)
	AND	A
	JR	NZ,PBC313
;
	LD	A,(CARITM)
	AND	A
	JR	NZ,PBC030
PBC313
	LD	A,(HANEFG)
	LD	HL,TILTCT
	OR	(HL)
;;	LD	HL,CARITM
;;	OR	(HL)
	JR	NZ,PBC030
;
	LD	A,(PLYPSL)
	CP	$88  
	JR	NC,PBC318
;
	LD	A,(DUSHFG)
;;	AND	A
	LD	HL,YKFLAG
	OR	(HL)
	LD	HL,IKADAON
	OR	(HL)
	JR	NZ,PBC318
;
	LD	A,(KEYA1)
	AND	$0F
	JR	Z,PBC030
;
	AND	$03
	JR	Z,PBC315
;
	DEC	A
	CP	E
	JR	Z,PBC318
;;	JR	PBC030
;
PBC315
	LD	A,(KEYA1)
	RRA
	RRA
	AND	$03
	JR	Z,PBC030
	DEC	A
	ADD	A,$02
	CP	E
	JR	NZ,PBC030
PBC318
	LD	A,(GRNDPT)
	CP	$E8
	JR	NZ,PBC111	; Big bird stage For part scroll
;
	LD	A,(DNJNNO)
	CP	$1F
	JR	Z,PBC111
;
	LD	A,(DJFLAG)
	AND	A
	JR	Z,PBC111
;
	XOR	A
	LD	(SCXAD),A
	LD	(SCX),A
PBC111
;	LD	A,(DJFLAG)
;	AND	A
;	JR	Z,PBC012	; ROOM OUT TEST !!
;
	LD	A,E
	LD	(SCRLMK),A
;
	LD	A,$01
	LD	(SCRLFG),A
;
;;	CALL	DUSHCL
	XOR	A
	LD	(DUSHCT),A
	LD	(SPCTTM),A
;;;	LD	(SPCTWT),A
	LD	(DUSHFG),A
		ld	(DROPFG),a
		LD	(DARKFLG),A	; 暗い部屋 カラーチェンジフラグ
		LD	(DARKFCT),A	;       ”       フレームカウンタ
;
	LD	A,(PLYPSL)
	CP	$88
	JR	C,PBC020	;とびおり
;				;音セット用！
	LD	A,$02
	LD	(PLJPFG),A
	LD	A,$08	
	LD	(PLZPSL),A
PBC020
		jp	PLBGC0
;;;KK;;;	CALL	PLBGC0
;;;KK;;;	RET
PBC030
	CALL	PLSDCL
	LD	(HANEFG),A
;
		jp	PLBGC0
;;;KK;;;	CALL	PLBGC0
;;;KK;;;PLBCRET
;;;KK;;;	RET
;===========================================
PLCBXD
	DB	$06,$09
	DB	$0B,$0B
	DB	$06,$09
	DB	$04,$04
;
;;	DB	$04,$08,$0C,$0C,$0C,$08,$04,$04
;;	DB	$04	; Dammy 
PLCBYD
	DB	$06,$06
	DB	$09,$0C
	DB	$0F,$0F
	DB	$09,$0C
;
;;	DB	$06,$06,$06,$0C,$0F,$0F,$0F,$0C
;;	DB	$06	; Dammy
PLCBCY
	DB	4
	DB	0
PLCBCX
	DB	2
	DB	6
PLCBBT
	DB	%00000001
	DB	%00000010
	DB	%00000100
	DB	%00001000
	DB	%00000001
	DB	%00000010
	DB	%00000100
	DB	%00001000
PLCBMK
	DB	02
	DB	02
	DB	00
	DB	00
	DB	03
	DB	03
	DB	01
	DB	01
PLCBRV
	DB	$00,$01,$FF,$00
;- -ダンジョン 飛び降りスピード - -
TBPLXS
	DB	$10,$F0,$00,$00
TBPLYS
	DB	$00,$00,$F0,$10
;- - - - - - - - - - - - - - - - - - - - - -
PLBGC0
	LD	HL,BEDOFF	; Start demo bed get off
	LD	A,(BGCKOF)
;;	AND	A
	OR	(HL)
		ret	NZ
;;;KK;;;	JR	NZ,PLBCRET
;
	LD	A,(YKFLAG)
	AND	A
	JR	Z,PBC100
;
;;	LD	A,$2
;;	CALL	PBSET
		jp	PLYKBC
;;;KK;;;	CALL	PLYKBC
;;;KK;;;	RET
;
PBC100
	XOR	A
	LD	(PLCBFG),A
;
	LD	A,(PLYSPD)
	CP	$00
	JR	Z,PBC050
;
	LD	E,$03
	RLA
	LD	BC,PLCBCY
	JR	NC,PBC028
	DEC	E
	INC	BC
PBC028
	LD	A,E
	LD	(WORKC),A
;
	LD	E,$02
;
	LD	A,(BC)
	LD	C,A
	LD	B,$00
PBC02A
	PUSH	DE
	PUSH	BC
;
	CALL	UNITRD
	POP	BC
	POP	DE
	INC	BC
	DEC	E
	JR	NZ,PBC02A
;
	LD	A,(PLYSPD)
	AND	%10000000
	JR	NZ,PBC02E	; 下向き？
;
	LD	A,(DJFLAG)
	AND	A
	JR	NZ,PBC02E				; yes !
;
	LD	A,(UNITNO)
	CP	TAKI0
	JR	NZ,PBC02E	; 滝？
;				; Yes !
	LD	A,(HIREF)
	AND	A
	JR	Z,PBC02E
;
	LD	A,(PLCANO)
	CP	NIWAX
	JR	Z,PBC02E	;鶏持ち上げ！
;
	LD	A,(PLMODE)
	CP	PTOBI
	JR	Z,PBC050
;
	LD	A,$08
	LD	(SOUND1),A	;(S)
	JR	TOBIST3
TOBIST
	LD	A,$08
	LD	(SOUND1),A	;(S)
TOBIST2
	LD	A,(PLXPSL)
	AND	$F0
	ADD	A,$08
	LD	(PLXPSL),A
;
TOBIST3
	LD	A,PTOBI
	LD	(PLMODE),A	; 飛び降りセット
	XOR	A
	LD	(PLSTAT),A
;
	LD	A,(PLYPSL)
	SUB	$08
	LD	(PLYPSL),A
;
	JP  	DUSHCL2
;;	RET
PBC02E
	LD	A,(PLCBFG)
	AND	%00000011
	JR	Z,PBC050
;
	LD	E,A
	LD	D,$0
	LD	HL,PLCBRV
	ADD	HL,DE
	LD	A,(PLXPSL)
	ADD	A,(HL)
	LD	(PLXPSL),A
;
	LD	A,(PLSVYL)
	LD	(PLYPSL),A
;------------------------------
PBC050
	LD	A,(PLXSPD)
	CP	$00
	JR	Z,PBC080
;
	LD	E,$00
;
	RLA
	LD	BC,PLCBCX
	JR	NC,PBC068
	INC	E
	INC	BC
PBC068
	LD	A,E
	LD	(WORKC),A
;
	LD	E,$02
;
	LD	A,(BC)
	LD	C,A
	LD	B,$00
PBC06A
	PUSH	DE
	PUSH	BC
;
	CALL	UNITRD
;;	JR	C,PBC06C
;;;
;;	LD	A,(PLSVXL)
;;	LD	(PLXPSL),A
;;PBC06C
	POP	BC
	POP	DE
	INC	BC
	DEC	E
	JR	NZ,PBC06A
;
	LD	A,(PLCBFG)
	AND	%00001100
	JR	Z,PBC06E
;
	SRL	A
	SRL	A
	LD	E,A
	LD	D,$0
	LD	HL,PLCBRV
	ADD	HL,DE
	LD	A,(PLYPSL)
	ADD	A,(HL)
	LD	(PLYPSL),A
;
	LD	A,(PLSVXL)
	LD	(PLXPSL),A
PBC06E
PBC080
	LD	A,(PLCBFG)
	AND	A
	JR	NZ,PBC088
;
	LD	(CARISTM),A	; Ken cyari set timming reset 
PBC088
		jp	DSHNCK	; Dush hanekairi check !
;;;KK;;;	CALL	DSHNCK	; Dush hanekairi check !
;;;KK;;;	RET
;-------------------------------------
TBMKCK	;ダンジョンとびおり向きチェック！
	DB	%00000001
	DB	%00000010
	DB	%00000100
	DB	%00001000
;----------------------------------------
UNITRD
	LD	HL,PLCBXD
	ADD	HL,BC
	LD	A,(PLXPSL)
	SUB	$8
	ADD	A,(HL)
	LD	(WORK4),A
	SWAP	A
	AND	$0F
	LD	E,A
	LD	HL,PLCBYD
	ADD	HL,BC
	LD	A,(PLYPSL)
	ADD	A,(HL)
	SUB	$10
	LD	(WORK5),A
	AND	$F0
	OR	E
	LD	E,A
	LD	(ENHELP2),A
	LD	D,$0
	LD	HL,BGUNDT+$11
	LD	A,H
	ADD	HL,DE
	LD	H,A
	LD	A,(HL)
	LD	(UNITNO),A
	LD	E,A
	LD	A,(DJFLAG)
	LD	D,A
;
	CALL	BGCRRD
	LD	(WORKD),A
	AND	A
	JP	Z,UNR010	
	CP	$01		; all hit
	JP	Z,UNR055
	CP	$02		; climb (hashigo etc.)
	JP	Z,UNR050
	CP	$03		; in hole
	JP	Z,UNR005
	CP	$10		; jump down 
	JP	Z,UNR002
	CP	$04		; Low BG.
	JP	Z,UNR049 ;55
	CP	$30		; CACH BG.
	JP	Z,UNR055	; 
	CP	$60		; Fuck shot On BG!
	JP	Z,UNR055	; 
	CP	$0A		; Move block.
	JP	Z,UNR050	; 幅広ハシゴ
	CP	$FF
	JP	Z,UNR010	; 
	CP	$E0
	JP	Z,UNR010	; Toge
	CP	$F0
	JP	NC,UNR010	; Belt
	CP	$C0
	JP	NZ,UNR222	; Grond key ?
;				; yes !
	LD	A,(PLCMKI)
	CP	$02
	JP	NZ,UNR211
;
	LD	A,(DJSVBF)
	BIT	4,A ;AND	%00010000
	JP	NZ,UNR211
;
	LD	A,(GRNDPT)
	CP	$0E
	JR	NZ,GCS710
;
	LD	A,(GRKEY4)
	LD	E,$33
	JR	GCS720
GCS710
	CP	$8C
	JR	NZ,GCS610
;				; YES !
	LD	A,(GRKEY3)
	LD	E,$34
GCS720
	AND	A
	JR	Z,UNR211S	;				;YES !
;
	LD	A,(GRNDPT)
	CP	$8C
	JR	NZ,GCS0721
;
	CALL	SOUNDCLR	;(S)
	JR	GCS0722
GCS0721
	CALL	DORSDST	;(S)
;
GCS0722
	LD	A,COPYA	;城書き換え処理！
	CALL	ENIDSHL
;
	LD	HL,ENWRK1
	ADD	HL,DE
	INC	(HL)
	JR	UNR200
GCS610
	CP	$2B
	JR	NZ,GKC010	;滝の鍵あな？
;				; YES !
	LD	A,(GRKEY2)
	AND	A
	LD	E,$32
	JR	Z,UNR211S	;
;				;YES !
;;	CALL	DORSDST	;(S)
	CALL	SOUNDCLR	;(S)
;
	LD	A,BSKEL	;滝書き換え処理！
	CALL	ENIDSHL
;
	LD	HL,ENWRK3
	ADD	HL,DE
	DEC	(HL)
;;	LD	(HL),$FF
;
;	LD	HL,ENTIM0
;	ADD	HL,DE
;	LD	(HL),$80
;
	JR	UNR200
;
GKC010
	CP	$B5
	JR	NZ,GKC0111	; Level 3 ?
;				;YES !
	LD	A,(GRKEY5)
	CP	$06
	LD	E,$31
	JR	NZ,UNR211S	;葉っぱ－＞鍵 交換後？
	JR	GKC0112		; YES !
;
GKC0111
	LD	A,(GRKEY1)
	AND	A
	LD	E,$30
	JR	Z,UNR211S	;level 1 ダンジョン入り口？
;				; YES !
GKC0112
	LD	A,(PLYPSL)
	LD	(WORK1),A
	LD	A,(PLXPSL)
	LD	(WORK0),A
;
;;	CALL	DORSDST	;(S)
;
	LD	A,KOP1
	CALL	EXIDSH
	LD	(HL),$1F+$C0
	LD	A,$1F+$C0
	LD	(ENSTTM),A
;
;;	CALL	DORSDST	;(S)
	CALL	SOUNDCLR	;(S)
;
;	LD	A,$2A
;	LD	(SOUND3),A	;(S)
UNR200
	LD	HL,GRRMSV
	LD	A,(GRNDPT)
	LD	E,A
	LD	D,$00
	ADD	HL,DE
;
	LD	A,(HL)
	OR	%00010000
	LD	(HL),A
	LD	(DJSVBF),A	; Save data buffer set !
UNR211
	JP	UNR055
UNR211S
;	LD	A,(MSGEFG)
;	AND	A
;	JP	NZ,UNR055
;
	LD	A,E
	CALL	BGMSGCH3
	JP	UNR055
UNR222
;L	CP	$A0
;L	JR	NZ,UNR00E1	; Go yoko gamen kaidan ?
;;L				; yes !
;;L	LD	A,(PLXPSL)
;;L	AND	$0F
;;L	SUB	$6
;;L	CP	$B-$6
;;L	JP	NC,UNR010
;;L	LD	A,(PLYPSL)
;;L	AND	$0F
;;L	ADD	A,$2
;;L	CP	$5
;;L	JP	NC,UNR010
;;L
;L	LD	A,$1
;L	LD	(YKFLAG),A
;;L
;L	JP	INDRST
;LUNR00E1
	LD	A,(UNITNO)
	CP	SARUH
	JR	NZ,SWBC10	;猿橋は泳いでると当たる！
;
	LD	A,(PLMODE)
	CP	PSWIM
	JP	Z,UNR055
;
SWBC10
	LD	A,(WORKD) ;HL)
	CP	$D0
	JP	C,TBCK90
	CP	$D3+1
	JP	NC,TBCK90	;飛び降りユニット？
;				;yes !
	SUB	$D0
	LD	E,A
;
	LD	A,(DJFLAG)
	AND	A
	JR	NZ,TBCK30
;
	LD	A,E
	CP	$D0-$D0
	JR	NZ,TBCK28
;
	LD	A,(WORK4)
	AND	$0F
	CP	$08
	JP	C,UNR010
	JR	TBCK30
TBCK28
	CP	$D1-$D0
	JR	NZ,TBCK30
;
	LD	A,(WORK4)
	AND	$0F
	CP	$08
	JP	NC,UNR010
;
TBCK30
		LD	A,(PLJPFG)
		AND	A		; ジャンプ中？
		JR	NZ,TBCK80	; ＹＥＳ

;;	LD	A,E
	LD	D,$00
;;	LD	E,A
	LD	A,(PLCMKI)
	CP	E
	JP	NZ,TBCK80
;
	LD	A,(HANEFG)
	LD	HL,SPCTTM
	OR	(HL)
	LD	HL,TOBIOF
	OR	(HL)
	JR	NZ,TBCK80
;
	LD	A,(DUSHFG)
	AND	A
	JR	NZ,TBCK70
;
	LD	HL,TBMKCK
	ADD	HL,DE
	LD	A,(KEYA1)
	AND	(HL)
	JR	Z,TBCK80
;
;;	LD	A,(DUSHFG)
;;	AND	A
;;	JR	NZ,TBCK70
;
	LD	A,(BLOSTM)
	INC	A
	LD	(BLOSTM),A
	CP	$0C
	JP	C,UNR055
;
TBCK70
	CALL	DUSHCL2
;
	LD	HL,TBPLXS
	ADD	HL,DE
	LD	A,(HL)
	LD	(PLXSPD),A
;
	LD	HL,TBPLYS
	ADD	HL,DE
	LD	A,(HL)
	LD	(PLYSPD),A
;
;;	CALL	DUSHCL
;
	LD	A,$1C
	LD	(PLZSPD),A
;
	LD	A,$01
	LD	(PLJPFG),A
;
	LD	A,$01
	LD	(BEDOFF),A	;BG チェック無視
;
	LD	A,$08
	LD	(SOUND1),A	;(S)
TBCK80
	XOR	A
	LD	(BLOSTM),A
	JP	UNR055
;--------------------------------------
TBCK90
	CP	$90
	JP	C,UNR00F
	CP	$99
	JP	NC,UNR055	; Open door ?
;				; yes !
	SUB	$90
	LD	E,A
	LD	D,$00
;;	AND	%00000010
	BIT	1,A
	JR	NZ,UNDR10
;
;;	PUSH	HL
	LD	HL,DROBPX
	ADD	HL,DE
	LD	E,(HL)
;;	POP	HL
;
	LD	A,(PLXPSL)
	SUB	E
	SUB	$0C
	CP	$08
;;	SUB	$4C
;;	CP	$54-$4C
	JP	NC,UNR055
	JR	UNDR20
UNDR10
;;	PUSH	HL
	LD	HL,DROBPY
	ADD	HL,DE
	LD	E,(HL)
;;	POP	HL
;
	LD	A,(PLYPSL)
	SUB	E
	SUB	$14
	CP	$08
;;	SUB	$44
;;	CP	$4C-$44
	JP	NC,UNR055
UNDR20
	LD	A,(DROPFG)
	AND	A
	JP	NZ,UNR055
;  (key check)
	LD	A,(WORKD) ;HL)
	CP	$94
	JR	NC,UNDR21
;
	LD	A,(SKEYF)
	AND	A
	JP	Z,UNR055
	DEC	A
	LD	(SKEYF),A
;
	JR	UNDR22
UNDR21
	CP	$98
	JR	Z,UNDR212
;;;	JR	NZ,UNDR22
;				; さわったら開くシャッター？
	LD	A,(NAZOFG)	; Yes !
	AND	A
	JR	Z,UNDR22	; Nazo room ?
;			 ; Yes ! 強制セーブモードから復帰
	JP	UNR055   ;        したときのため
;
UNDR212
	LD	A,(BKEYF)
	AND	A
	JR	NZ,UNR2123
;
;	LD	A,(MSGEFG)
;	AND	A
;	JR	NZ,UNDR2122
;
	LD	A,$07
	CALL	BGMSGCHK
UNDR2122
	JP	UNR055
UNR2123
;;	XOR	A
;;	LD	(BKEYF),A
UNDR22
	LD	A,(WORKD) ;HL)
	SUB	$90
	LD	(DROPMD),A
;
	XOR	A
	LD	(INCNT),A
	INC	A	;(1)
	LD	(DROPFG),A
;
	CALL	DJITRV	;Display buffer -> Main buffer!
	CALL	DORSDST	;(S)
;
	JP	UNR055
;-----------------------------------------------------
;-----------------------------------------------------
UNR00F
	CP	$7C ;80
	JP	C,UNR010	; Special BG ?
;				; yes !
	PUSH	AF
	JR	Z,UR1008
	CP	$7D
;;	CP	$81
	JR	NZ,UR1010
UR1008
	CALL	EXITCK
UR1010
	POP	AF
	CP	$90
	JP	NC,UNR010
	SUB	$7C ;80
	SLA	A
	SLA	A
	LD	E,A
	LD	D,$0
	LD	HL,SPUNDT	
	ADD	HL,DE
;
	LD	A,(WORK4)
	RRA
	RRA
	RRA
	AND	$01
	LD	E,A
	LD	A,(WORK5)
	RRA
	RRA
	AND	$02
	OR	E
	LD	E,A
	LD	D,$0
	ADD	HL,DE
	LD	A,(HL)
	AND	A
	JP	NZ,UNR055
	JP	UNR010
;
UNR002
	LD	A,(PLMODE)
	CP	PTOBI
	JP	Z,UNR006	; Already tobiori ?
;
	LD	A,(PLCANO)
	CP	NIWAX
	JP	Z,UNR006	;鶏持ち上げ！
;
	LD	A,(WORK5)
	AND	$0F
	CP	$08
	JP	C,UNR010
;
	CALL	TOBIST
	JP	UNR006
;- - - - - - - - - - - - - - - - - - -
UNR005	;入り口！
	LD	A,(PLCAMD)
	AND	A
	JP	NZ,UNR006
;
	LD	A,(WORK5)
	AND	$0F
	CP	$06
	JP	NC,UNR052	; In door ?
;
	LD	A,(DJFLAG)
	AND	A
	JR	NZ,UNR05M
;
	LD	A,(OBAKEFG)
	CP	$01
	JR	Z,UNR0OB	;オバケオプション？
;
	LD	A,(MARINFG)
	AND	A
	JR	Z,UNR05M	;マリンオプション？
;
UNR0OB
	LD	A,(GRNDPT)
	CP	$077		;服のダンジョン？
	JR	Z,UNR006M	;	YES --> UNR006M
	CP	$D3	; Lv.1
	JR	Z,UNR006M
	CP	$24	; Lv.2
	JR	Z,UNR006M
	CP	$B5	; Lv.3
	JR	Z,UNR006M
	CP	$2B	; Lv.4
	JR	Z,UNR006M
	CP	$D9	; Lv.5
	JR	Z,UNR006M
	CP	$AC	; Lv.6
	JR	Z,UNR006M
	CP	$8C	; Lv.6
	JR	Z,UNR006M
	CP	$0E	; Lv.7
	JR	NZ,UNR05M
;
UNR006M
	LD	A,(OBAKEFG)
	CP	$01
	JR	NZ,UNR0OB1	;オバケオプション？
;
	LD	A,$12
	CALL	BGMSGCH3
	JP	UNR006
UNR0OB1
	XOR	A
	LD	(MAWTIM2),A	;合計時間！
	LD	A,$98
	LD	(PIMODE),A	;フェード処理メッセージ待ち！
;
	CALL	MSGCH2
;
	LD	A,(PINCHFG)
	INC	A
	LD	(MAWAIT),A	;マリン待ってるフラグ！
;
	CALL	NXGOTO3
;
	JP	UNR006
UNR05M
	LD	A,(HANEFG)
	AND	A
	JP	NZ,UNR006
;
	LD	A,(DJFLAG)
	AND	A
	JP	NZ,NXGOTO2
;
	JP	NXGOTO
;----------------------------------------
;ONOFBD
;	DB	$00,$02
;
UNR049	; On off block check
	LD	A,(ONBGFG)
	AND	A
	JP	NZ,UNR010	; On player BG ? -> Not cross !!
;
	LD	A,(UNITNO)
	CP	DBL01
	JR	C,UNR055
	CP	DBL02+1
	JR	NC,UNR055
;
	SUB	DBL01
	LD	E,A
	LD	D,$00
	LD	HL,ONOFBD
	ADD	HL,DE
	LD	A,(ONOFFG)	; Swich on hit check !!
	XOR	(HL)
	JR	NZ,UNR055
	JP	UNR010
;
;----------------------------------------
UNR050
;	LD	A,(FRCNT)
;	AND	$0F
;	JR	NZ,UNR051
;;
;	LD	A,$06
;	LD	(SOUND3),A	;(S)
;UNR051
	LD	HL,HASGFG	; Hashigo crimb !(slow speed)
	LD	(HL),$01
;
	CP	$0A
	JP	Z,UNR010	;幅広？
UNR052
	LD	A,(WORK4)	; X hosei 
	AND	$0F
	CP	$6
	JR	C,UNR055
	CP	$B
	JP	C,UNR010
;====当たりBG======
UNR055
	LD	A,(UNITNO)
	CP	SABO0
	JR	NZ,SABOCR
;
	LD	HL,WORKC	;当たりむき！
	LD	A,(PLCMKI)
	CP	(HL)
	JR	NZ,UNR056S	;特殊BGメッセージチェック！
;
	LD	A,(TATEON)
	AND	A
	JR	NZ,SABOCR
;
UNR056S
	CALL	PLDMST00
SABOCR
	LD	HL,WORKC	;当たりむき！
	LD	A,(PLCMKI)
	CP	(HL)
	JR	NZ,UNR0567	;特殊BGメッセージチェック！
;
	LD	A,(HANEFG)
;;	LD	HL,MSGEFG
;;	OR	(HL)
	LD	HL,PLJPFG
	OR	(HL)
	JR	NZ,UNR0567
;
	LD	A,(DJFLAG)
	AND	A
	LD	A,(UNITNO)	
	JR	Z,UNR0563
;
	LD	E,$8A
	CP	DBOMB
	JR	Z,UNR0566
	LD	E,$8B
	CP	DDBLK
	JR	Z,UNR0561
	CP	DDBL2
	JR	Z,UNR0561
	CP	DDBL3
	JR	NZ,UNR0562
UNR0561
	LD	A,(DUSHFG)
	AND	A
	JR	NZ,UNR0567
	JR	UNR0566
UNR0562
	CP	DKEYB
	JR	NZ,UNR0563
;
	LD	A,(SKEYF)
	AND	A
	JR	NZ,UNR0567
;
	LD	E,$8C
	JR	UNR0566
UNR0563
	CP	IWA00
	JR	NZ,UNR0567
;
	LD	A,(ITEMA)
	CP	PBULE
	JR	Z,UNR0567		
	LD	A,(ITEMB)
	CP	PBULE
	JR	Z,UNR0567		
;
	LD	A,(WARPSV+$01)  ;DNJNNO)
	AND	%00000010
;;;	CP	$02
	JR	NZ,UNR0567
;
;	LD	A,(IWAMSFG)
;	AND	A
;	JR	NZ,UNR0567	;１画面１回のみ！ 
;;
;	INC	A
;	LD	(IWAMSFG),A
;	
	LD	E,$8D
UNR0566
	LD	A,(IWAMSFG)
	AND	A
	JR	NZ,UNR0567	;１画面１回のみ！ 
;
	INC	A
	LD	(IWAMSFG),A
;
	LD	A,E
	CALL	BGMSGCHK
UNR0567
	LD	A,(DUSHFG)
	AND	A
	JR	NZ,UNR058
;
	LD	A,(WCUTFG)
	CP	$4+1
	JR	NZ,UNR058	; ken kamae ?
;
	LD	HL,PLCBMK
	ADD	HL,BC
	LD	A,(PLCMKI)
	CP	(HL)
	JP	NZ,UNR006	; muki=> BG ?
;
;;	LD	A,(FRCNT)	; Yes ! ken chari set !
	LD	A,(CARISTM)
	INC	A
	LD	(CARISTM),A
	CP	$0C
	JP	C,UNR006
;
	XOR	A
	LD	(CARISTM),A
;
	XOR	A
	LD	(SPCTTM),A
	LD	(SPCTWT),A
;
	LD	A,CARITMD
	LD	(CARITM),A
;
	JP	UNR006
UNR058
	LD	A,(TATEON)
	AND	A
	JR	NZ,UNR05801
;
	LD	A,$3
	LD	(PLOSHI),A
UNR05801
	LD	A,(DNJNNO)
	AND	A
	LD	A,(UNITNO)
	JR	Z,UNR0500
;
	CP	DDBL3
	JR	Z,UNR05F0	;ダッシュで壊れるブロック？
	CP	DDBL2
	JR	Z,UNR05F0	;ダッシュで壊れるブロック？
	CP	DDBLK
	JP	NZ,UNR0500	;ダッシュで壊れるブロック？
;				; yes !
UNR05F0
	LD	A,(DUSHFG)
	AND	A
	JP	Z,UNR006 
;
	LD	A,(WORK4)
	AND	$F0
	LD	(OBJXP),A
	LD	A,(WORK5)
	AND	$F0
	LD	(OBJYP),A
;
	LD	A,(ENHELP2)
	LD	E,A
	LD	D,$00
	CALL	BG1CHG
;-- Kusa break --
	LD	A,KTOBJ
	CALL	ENIDSHL ;PLSHST
	JP	C,UNR006
;
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	A,(ENHELP2)
	SWAP	A
	AND	$F0
	ADD	A,$8
	LD	(HL),A
;
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	A,(ENHELP2)
	AND	$F0
	ADD	A,$10
	LD	(HL),A
;
	LD	HL,ENCHPT
	ADD	HL,DE
	LD	(HL),D
;
;;	PUSH	DE
;;	POP	BC
;;	CALL	KTFLSTL	
	LD	HL,SOUND3
	LD	(HL),$09	;(S)
;
	LD	HL,ENTIM1
	ADD	HL,DE
	LD	(HL),$0F
;
	LD	HL,ENMOD0
	ADD	HL,DE
	LD	(HL),%11000100
;
	JP	UNR010
;=============================
HAKA_CHK_DATA
	DB	$024,$025
	DB	$033
	DB	$022,$023
	DB	$014
	DB	$026,$027
;;;12/10	DB	$035,$044,$023,$014,$027
;
HAKA_MK_DATA
	DB	$003,$003
	DB	$001
	DB	$002,$002
	DB	$000
	DB	$002,$002
;;;12/10	DB	$003,$001,$002,$000,$002
;
UNR0500
	LD	E,$20
;
	CP	OHAMV	;動く墓！
	JR	NZ,OHO588
;
		LD	A,(DJFLAG)
		AND	A		;ダンジョン？
		JP	NZ,UNR006	;	YES --> UNR006
		LD	A,(GRNDPT)
		CP	$077		;右下の墓場？
		JR	NZ,UNR0588	;	NO --> UNR0588
		LD	A,(HAKAFG)
		LD	A,(PLXPSL)
		SUB	$8		;
		SWAP	A
		AND	$00F
		LD	E,A
		LD	A,(PLYPSL)
		SUB	$08		;
		AND	$0F0
		OR	E
		LD	(WORK0),A
		LD	E,$000
		LD	D,E
HAKA_CHK_100
		LD	HL,HAKA_CHK_DATA
		ADD	HL,DE
		LD	A,(WORK0)
		CP	(HL)
		JR	NZ,HAKA_CHK_120
		LD	A,(PLCMKI)
		LD	HL,HAKA_MK_DATA
		ADD	HL,DE
		CP	(HL)
		JR	Z,HAKA_CHK_200
HAKA_CHK_120
		INC	DE
		LD	A,E
		CP	HAKA_MK_DATA-HAKA_CHK_DATA
		JR	NZ,HAKA_CHK_100
		JR	UNR006
;
HAKA_CHK_200
		LD	A,E
;;;12/11		CP	$004		;階段の出てくる墓石？
		CP	$006		;階段の出てくる墓石？
		JR	C,UNR0588	;	NO --> UNR0588
		LD	A,(PLJPFG)
		AND	A		;ジャンプ中？
		JR	NZ,UNR006	;	YES --> UNR006
;;;12/09		JR	NZ,UNR0588	;	YES --> UNR0588
		LD	HL,ITEMB
HAKA_CHK_220
		LD	A,(HLI)		;パワーブレスレットを
		CP	PBULE		;	持っている？
		JR	Z,HAKA_CHK_250	;	YES --> HAKA_CHK_250
		LD	A,L		;	NO ---> 根性なしメッセージ
		CP	$00C		;
		JR	NZ,HAKA_CHK_220	;
		JR	HAKA_CHK_280
HAKA_CHK_250
		LD	A,(MARINFG)	;マリン
		LD	HL,OBAKEFG	;オバケ
		OR	(HL)
		LD	HL,NIWATFG	;ニワトリ
		OR	(HL)
		LD	HL,WANFLG	;ワンワン
		OR	(HL)
		AND	$07F		;どれかのオプション連れてる？
		JR	Z,UNR0588	;	NO --> UNR0588
HAKA_CHK_280
		LD	A,$053		;根性なしメッセージ
		CALL	MSGCH3
		JP	UNR006
;
;;;KK;;;	LD	A,(DJFLAG)
;;;KK;;;	AND	A
;;;KK;;;	JR	Z,UNR0588
;;;KK;;;	JR	UNR006
;
OHO588
	LD	A,(DJFLAG)
	AND	A
	JR	Z,UNR006
;
	LD	A,(UNITNO)
	CP	DKEYB
	JR	Z,UNR059
	CP	DBLMV
	JR	NZ,UNR006	; Move block ?
;				; yes !
UNR0588
	LD	E,$40
;
UNR059
	LD	A,(BLOSTM)
	INC	A
	LD	(BLOSTM),A
	CP	E  ;$40
	JR	C,UNR006
;
	LD	A,E
	LD	(ENHELP),A
;
	XOR	A
	LD	(BLOSTM),A
;
	CALL	BLOCKST
;
		LD	A,(DJFLAG)
		AND	A		;ダンジョンの中？
		JR	NZ,UNR059_PASS	;	YES --> UNR059_PASS
		LD	A,(GRNDPT)
		CP	$077		;墓場の右下？
		JR	NZ,UNR059_PASS	;	NO --> UNR059_PASS

;		LD	A,$002
;		CALL	HakaCheck_SUB
;
;	墓石を順番に押したかチェックを
;	下記の呼び方に変更（０バンク空ける為）
;
		LD	HL,CallBank
		LD	A,:HakaCheck	; バンク
		LD	(HLI),A
		LD	A,>HakaCheck	; ハイ
		LD	(HLI),A
		LD	A,<HakaCheck	; ロー
		LD	(HLI),A
		LD	A,:UNR059	; リターンバンク
		LD	(HL),A
		CALL	JSL_CALL

UNR059_PASS
;---------------------------------
UNR006
	LD	HL,PLCBBT
	ADD	HL,BC
	LD	A,(PLCBFG)
	OR	(HL)
	LD	(PLCBFG),A	; hit flag set !
;
UNR008
	SCF
	RET
UNR010
	XOR	A
	LD	(BLOSTM),A	; Block oshi time reset !
;
	SCF
	CCF
	RET
;==========================
EXITCK		; Danjyon exit out check !
	LD	A,(UNITNO)
	CP	DKUR0
	JR	Z,UNKURU	; kuru kuru door ?
	CP	DKUR1
	JR	NZ,UNKR10
;				; yes !
UNKURU
	LD	A,(WORK5)
	AND	$0F
	CP	$06
	JR	NC,EXCK10	; Hit ?
;
	LD	A,$0C
	LD	(SOUND1),A	;(S)
;				; yes !
	LD	A,KURUD
	LD	(PLMODE),A
;
	CALL	PLSDCL
	LD	(PLFLSH),A
	LD	(KURDCT),A
	LD	(PLZPSL),A
	LD	(PLZSPD),A
;
		jp	DUSHCL
;;;KK;;;	CALL	DUSHCL
;;;KK;;;	RET
UNKR10		; Exit out check !!
	CP	DHINL
	JR	Z,EXCK08
	CP	DHINR
	JR	Z,EXCK08
	CP	DEXT8
	JR	Z,EXCK08
	CP	DEXT9
	JR	NZ,EXCK10	; Danjyon exit ?
;				; yes !
EXCK08				
	LD	A,(WORK5)
	AND	$F
	CP	$C
	JP	NC,NXGOTO
EXCK10
	RET
;================================
;
;========================================================
;=	ダッシュ!!!!	DUSH				=
;========================================================
DSHNCK
	LD	A,(DUSHFG)
	AND	A
		ret	Z
;;;;;;;;	JR	Z,UNR0081
;
	LD	A,(PBANK)
	CP	$02
		ret	NZ		;Call from enemy ?
;;;;;;;;	JR	NZ,UNR0081	;Call from enemy ?
;				; No.
	LD	A,(PLCBFG)
	AND	$03
	CP	$03
	JR	Z,DSHC10
;
	LD	A,(PLCBFG)
	AND	$0C
	CP	$0C
		ret	NZ
;;;;;;;;	JR	NZ,UNR0081
;
DSHC10
	CALL	DUSHCL
;
	LD	A,(PLXSPD)
	CPL
	INC	A
	SRA	A
	SRA	A
	LD	(PLXSPD),A
;
	LD	A,(PLYSPD)
	CPL
	INC	A
	SRA	A
	SRA	A
	LD	(PLYSPD),A
;
	LD	A,$18
	LD	(PLZSPD),A
	LD	A,$02
	LD	(PLJPFG),A
;
	LD	A,$20
	LD	(TILTCT),A
;
	LD	A,(PLCMKI)
	AND	%00000010
	SLA	A
	LD	(TILTMK),A
;
	LD	A,$0B
	LD	(SOUND1),A	;(S)
;;	CALL	BBSDST	;(S)
;
		jp	TLCRST	; Item cros check size set !
;;;KK;;;	CALL	TLCRST	; Item cros check size set !
;;;KK;;;UNR0081
;;;KK;;;	RET
;=======================================
BGMSGCHK
	CALL	MSGCHK
	JP	PLSDCL
;=======================================
BGMSGCH3
	CALL	MSGCH3
	JP	PLSDCL
;=======================================
WINXSD
	DB	$08,$F8,$00,$00
WINYSD
	DB	$00,$00,$F8,$08
;======================================
PLCTSB
	LD	A,(PLXPSL)
	AND	$F0
	LD	(WORK0),A
	SWAP	A
	LD	E,A
	LD	A,(PLYPSL)
	SUB	$04
	AND	$F0
	LD	(WORK1),A
	OR	E
	LD	E,A
	LD	(FTUNAD),A
	LD	D,$0
	LD	HL,BGUNDT+$11
	LD	A,H
	ADD	HL,DE
	LD	H,A
	LD	A,(DJFLAG)
	LD	D,A
	LD	A,(HL)
	LD	(FTUNNO),A
	LD	(UNITNO),A
	LD	E,A
	RET
;=======================================
PLCTBC
	LD	A,(PLMODE)
	CP	PSWIM
	JR	NZ,PCTB0B1
;
	LD	A,(PLDSYD)
	ADD	A,$04
	LD	(PLDSYD),A
PCTB0B1
	LD	A,(PFUCKFG)
	AND	A
	JR	Z,PCBC100
;
;===================================================
PLIDBC
	LD	HL,PLJPFG
	LD	A,(DUSHFG)
	OR	(HL)
	JR	NZ,PLIDBC2
;
	CALL	PLSDCL
PLIDBC2
	CALL	PLCTSB
;
	LD	C,$04
	LD	A,(WPLMODE)
	CP	PSWIM			;泳いでる？
	JR	Z,PCBC0EF		;	YES --> PCBC0EF
;
	LD	C,$FC
	LD	A,(ONBGFG)
	AND	A
	JR	NZ,PCBC0EF
;
	CALL	BGCRRD
	LD	C,$02
	CP	$05
	JR	Z,PCBC0EF
	CP	$09
	JR	Z,PCBC0EF
	CP	$08
	JR	NZ,PCBC0F0
;
	LD	C,$FD
PCBC0EF
	LD	A,C
	LD	(PLDSYD),A
PCBC0F0
	RET
PCBC100
	LD	A,(FTUNAD)
	LD	(WFTUNAD),A
;
	LD	A,(BGCKOF)
	AND	A
	RET	NZ
;
;- - - Sadow set - - -
	LD	A,(PLZPSL)
	AND	A
	JR	Z,PWPCA0	; Jump ?
;				; yes !
	LD	A,(FRCNT)	; sadw set
	AND	$01
	JR	NZ,PWPC98
;
	LD	HL,OAM+$00
	LD	A,(PLYPSL)
	ADD	A,$0B
	CP	$88
	JR	NC,PWPC98
	LD	(HLI),A
	LD	A,(PLXPSL)
	ADD	A,$04
	LD	(HLI),A
	LD	A,$26
	LD	(HLI),A
;;	LD	A,$00
	LD	(HL),$00  ;A
PWPC98
	RET
PWPCA0
	XOR	A
	LD	(WARPFG2),A
;
	LD	A,(PLMODE)
	CP	PTOBI
	JR	Z,PWPC98
;
PLCTBC2
;------ Mizu asase $ kusakusa check ---
	LD	A,(SCRLFG)
	LD	HL,MSGEFG
	OR	(HL)
	JP	NZ,FTBGCC
;
	CALL	PLCTSB
;
	LD	C,A
	LD	A,(DJFLAG)
	AND	A
	JR	NZ,YKCK100
	LD	A,C
	CP	IDO00
	JP	Z,FLCKDW2
	JR	PCTB021
;;;	LD	E,A
;
YKCK100
	LD	A,C
	CP	DYTOG
	JR	NZ,PCTB021	;ヨコトゲ！
;
	LD	A,(PLYPSL)
	DEC	A
	AND	$0F
	CP	$0C
	JR	NC,PLDMST00
;  
PCTB021
	CALL	BGCRRD
	LD	(FTBGNO),A
;
	AND	A
	JP	Z,PWPCC0
	CP	$E0
	JR	NZ,PCTB10  
;===================================
PLDMST00
	LD	A,(PLFLSH)
	AND	A
	JR	NZ,PCTB08
;
	CALL	DUSHCL
;
	LD	A,(PLXSPD)
	CPL
	INC	A
;;	SLA	A
	LD	(PLXSPD),A
;
	LD	A,(PLYSPD)
	CPL
	INC	A
;;	SLA	A
	LD	(PLYSPD),A
;
	LD	A,$02
	LD	(PLJPFG),A
;
	LD	A,(YKFLAG)
	AND	A
	JR	NZ,PD0010
;
	LD	A,$10
	LD	(PLZSPD),A	
;
	LD	A,(PLZPSL)
	ADD	A,$02
	LD	(PLZPSL),A
PD0010
	LD	A,$10
	LD	(HANEFG),A
;
	LD	A,$30
	LD	(PLFLSH),A
;
	LD	A,(HARTDW)
	ADD	A,$04
	LD	(HARTDW),A
;
	LD	A,$03
	LD	(SOUND2),A	;(S)
;
PCTB08
	RET
;
PCTB10
	LD	A,(FTBGNO) ;HL)
	CP	$FF
	JP	Z,PWPCC0
	CP	$F0
	JR	C,PWPCA2	; Belt conv ?
;				; yes !
	JP	PLBELT
;---------------------------------------
PWPCA2
	CP	$51
	JR	Z,FLCKDWS	; Fole ?
	CP	$50
	JR	NZ,FTBGCC	; Side Fole ?
;				; yes !
FLCKDWS
	CALL	DUSHCL
;
	LD	A,$07
	LD	(HASGFG),A	
;
	LD	HL,FLDWTM
	INC	(HL)
;
	LD	HL,BGCKOF
;
	LD	A,(FRCNT)
	AND	$03
	OR	(HL)
	JR	NZ,FLCK50
;
	LD	A,(PLXPSL)
	SUB	$08
	LD	HL,WORK0
	SUB	(HL)
	BIT	7,A
;
	LD	A,$FF
	JR	Z,FLCK10
;;	JR	NC,FLCK10
;
	LD	A,$1
FLCK10	
	LD	HL,PLXPSL
	ADD	A,(HL)
	LD	(HL),A
;
FLCK18	
	LD	A,(WORK1)
	ADD	A,$10
	LD	HL,PLYPSL
;;	CP	(HL)
	SUB	(HL)
	BIT	7,A
;
	LD	A,$FF
	JR	NZ,FLCK20
;;	JR	C,FLCK20
;
	LD	A,$1
FLCK20	
	LD	HL,PLYPSL
	ADD	A,(HL)
	LD	(HL),A
FLCK30
	LD	A,(PLXPSL)
	SUB	$08
	ADD	A,$02
	AND	$0F
	CP	$04
	JR	NC,FLCK50
;
	LD	A,(PLYPSL)
	SUB	$10
	ADD	A,$02
	AND	$0F
	CP	$04
	JR	NC,FLCK50
;;	JR	NZ,FLCK50	; Just fole ?
;				; yes !
FLCKDW
;O	LD	A,(PFUCKFG)
;O	AND	A
;O	JR	NZ,FLCK50	; Fuck shot returning ?
;
;LD	A,$0D
;LD	(SOUND1),A	;(S)		
;		; no
	LD	A,(PLYPSL)
	ADD	A,$3
	LD	(PLYPSL),A
;
FLCKDW2
	LD	A,PFOLE
	LD	(PLMODE),A	; go to fole down!
;
	CALL	DUSHCL
;;	XOR	A
	LD	(KURDCT),A
;
	LD	A,(FTBGNO)
	LD	(ANAFLG),A
;
	LD	A,$0C
	LD	(SOUND2),A	;(S)
FLCK50
	RET
;----------------------------------
FTBGCC
	LD	HL,OAM+$00
	LD	A,(FTBGNO)
	CP	$08
	JR	NZ,UR0010
;
	LD	A,(PLDSYD)
	ADD	A,$FD
	LD	(PLDSYD),A
	JP	PWPCC0
;;	RET
UR0010
	CP	$09
	JR	NZ,UR00101	; Hotta ana !
;
	LD	A,(PLDSYD)
	ADD	A,$02
	LD	(PLDSYD),A
	JP	PWPCC0
;;	RET
UR00101
	CP	$0B
	JR	Z,UR10101	;溶岩！
	CP	$07
	JR	NZ,UR0011	; Deep water ?
;				; yes !
UR10101
;;; 	Mizu kaki check !!! 
	LD	A,(IKADAON)
	AND	A
	JR	Z,UIR080
;
	JP  	WATRMV
;
UIR080
	LD	A,(MSCRFG)
	CP	$80
	JR	Z,UR0011	; On ikada ?
;;	AND	A
;;	JR	NZ,UR0011	; On ikada ?
;				; No swim !!
	LD	A,(PLMODE)
	CP	POBOR
	JR	Z,UR00DD
	CP	PSWIM
	JR	Z,UR00DD
;
;;	LD	A,$2
;;	CALL	PBSET
	LD	A,(PLYPSL)
	ADD	A,$FE
	CALL	WUPSET2
;
	LD	A,(UNITNO)
	CP	DFIR1
;;	LD	A,$50
;;	LD	A,$20
	JR	Z,OBRS11	;溶岩？
;
	LD	A,(HIREF)
	AND	A
	JR	NZ,UR00DDD	;水かきある？
;				; NO
OBRS10				;おぼれる！
;;	LD	A,$0C
OBRS11				;おぼれる！
	LD	A,$50
	LD	(PLTIM0),A
;
	LD	A,POBOR
	LD	(PLMODE),A
;
	LD	A,(UNITNO)
	LD	(PLSTAT),A
;
	LD	A,(PLYPSL)
	ADD	A,$02
	LD	(PLYPSL),A
	LD	A,$01
	LD	(ITEMNOT),A
	RET
;
UR00DDD
	LD	A,PSWIM
	LD	(PLMODE),A
	XOR	A
	LD	(PLSTAT),A
;
	CALL	PLSDCL
;
;;	LD	A,$08
;;	LD	(PLYSPD),A
	LD	A,(PLCMKI)
	LD	E,A
	LD	D,000
	LD	HL,WINXSD
	ADD	HL,DE
	LD	A,(HL)
	LD	(PLXSPD),A
	LD	HL,WINYSD
	ADD	HL,DE
	LD	A,(HL)
	LD	(PLYSPD),A
UR00DD
	RET
;=====================================
UR0011
	CP	$06
	JP	Z,KUSACC
	CP	$05		; Asase ?
	JR	NZ,PWPCC0
;
;- - - - - - - - - - - - - - - - - - - - 浅瀬の水波紋ＯＡＭセット
	LD	A,(PLYPSL)
	ADD	A,$0C
	LD	(HLI),A		;Ｙ座標
	LD	A,(PLXPSL)
	ADD	A,$00
	LD	(HLI),A		;Ｘ座標
	LD	A,$1C
	LD	(HLI),A		;キャラクター
;
		LD	A,(CGBFLG)
		AND	A
		JR	Z,ASASE_100
		LD	A,(FRCNT)
		AND	%00000100
		SRL	A
		ADD	A,%00000011
		JR	ASASE_150
;
ASASE_100
	LD	A,(FRCNT)
	RLA
	RLA
	AND	%00010000
ASASE_150
	PUSH	AF
	LD	(HLI),A		;アトリビュート
;
	LD	A,(PLYPSL)
	ADD	A,$0C
	LD	(HLI),A		;Ｙ座標
	LD	A,(PLXPSL)
	ADD	A,$08
	LD	(HLI),A		;Ｘ座標
	LD	A,$1C
	LD	(HLI),A		;キャラクター
;
	POP	AF
	OR	$20
	LD	(HL),A		;アトリビュート
;
	LD	A,$3
	LD	(HASGFG),A
;
	LD	A,(FRCNT)
	AND	$0F
	JR	NZ,PWPCBE
;
	LD	A,(KEYA1)
	AND	$0F
	JR	Z,PWPCBE
;
		ld	a,(MSGEFG)
		and	a
		jr	nz,PWPCBE	; メッセージ中　？
;					; No !!
		LD	A,(PLCHPT)
		CP	$6C		; 持ち上げポーズ？
		JR	Z,PWPCBE	; ＹＥＳ
;
	LD	A,$0E
	LD	(SOUND1),A	;(S)
PWPCBE
	LD	A,(PLDSYD)
	ADD	A,$02
	LD	(PLDSYD),A
PWPCC0
	XOR	A
	LD	(FLDWTM),A
;;	LD	(ONBGFG),A	; Hit BG on flag !
;
	LD	A,(PLMODE)
	CP	PSWIM
	JR	NZ,PWPCD0
;
	LD	A,PMOVE
	LD	(PLMODE),A
PWPCD0
	LD	A,(FTBGNO)
;;	CP	$01
;;	JR	Z,CTBC900
	CP	$04
	JR	NZ,CTBC910
;
	LD	A,(UNITNO)
	CP	DBL01
	JR	C,CTBC910
	CP	DBL02+1
	JR	NC,CTBC910
;
	SUB	DBL01
	LD	E,A
	LD	D,$00
	LD	HL,ONOFBD
	ADD	HL,DE
	LD	A,(ONOFFG)	; Swich on hit check !!
	XOR	(HL)
	JR	Z,CTBC910
;
	LD	A,(ONOFTM)
	LD	E,A
	LD	D,$00
	LD	HL,BGONYD
	ADD	HL,DE
	LD	A,(PLDSYD)
	ADD	A,(HL)
	LD	(PLDSYD),A
;
CTBC900
	LD	A,$01
	LD	(ONBGFG),A	
	RET
CTBC910
	LD	A,(ONBGFG)
	AND	A
	JR	Z,CTBC911
;
	LD	A,$07
	LD	(SOUND3),A
;
	XOR	A
	LD	(ONBGFG),A	; Hit BG on flag !
CTBC911
	LD	A,(DJFLAG)
	AND	A
	JP	Z,CTBC930
;
	LD	A,(SCRLFG)
	AND	A
	JR	NZ,CTBC930
;
	LD	A,(UNITNO)
	CP	DSWCH
	JR	NZ,CTBC918
;
	LD	A,(SWCHTM)
	AND	A
	JR	NZ,CTBC918
;
	LD	A,(SWCHCT)
	INC	A
	LD	(SWCHCT),A
	CP	$18
	JR	NZ,CTBC912
;
	LD	A,$60
	LD	(SWCHTM),A
;
	LD	A,$0E
	LD	(SOUND2),A	;(S)
;
	LD	A,$03 ;F2
	LD	(CHTRF2),A ;(TOURFG),A	; BG kakikae !
;
	LD	A,(GRNDPT)
	CP	$C3
	JR	NZ,CTBC912	;城内部スイッチ！
;
	LD	HL,GRRMSV+$79	;門開く！
	SET	4,(HL)
CTBC912
	LD	A,(PLDSYD)
	ADD	A,$FD
	LD	(PLDSYD),A
	RET
CTBC918
	XOR	A
	LD	(SWCHCT),A
;
	LD	A,(FTUNAD)
	LD	HL,WFTUNAD
	CP	(HL)
	LD	HL,FLBKTM
	JR	NZ,CTBC920	;同じ所にずっと居るか？
;				; YES !
	LD	A,(UNITNO)
	CP	DTUB1
	JR	NZ,CTBC920	; 壊れる床？
;				; Yes !
	LD	A,(PLSTOP)
	LD	E,A
	LD	A,(DEMOFG)
	LD	D,A
	LD	A,(MSGEFG)
	OR	E
	OR	D
	JR	NZ,CTBC920
;
	INC	(HL)
	LD	A,(HL)
	CP	$28
	JR	C,CTBC930	; Time ?
;				; Just now !!
	LD	A,$2B
	LD	(SOUND3),A	;(S)
;;	LD	A,$02
;;	LD	($2100),A
	JP  	BG1CHS
CTBC920
	LD	(HL),$00
CTBC930
	RET
;- - - - - - -
BGONYD
	DB	$FC,$FF,$FF,$FE
	DB	$FE,$FE,$FD,$FD
	DB	$FD,$FC,$FC,$FC
ONOFBD
	DB	$00,$02
;-----------------------------------
KUSACC
	LD	A,(PLYPSL)
	ADD	A,$08
	LD	(HLI),A
	LD	A,(PLXPSL)
	ADD	A,$FF
	LD	(HLI),A
	LD	A,$1A
	LD	(HLI),A
;
;	LD	A,(KEYA1)
;	AND	$0F
;	JR	Z,KSC002
;
;;	LD	A,(FRCNT)
	LD	A,(PLWKCT)
	RLA
	RLA
	AND	%00100000
KSC002
	PUSH	AF

;-------------------------------------------------
;	(CGB)草地 沼チェック
;-------------------------------------------------
		PUSH	AF
		LD	A,(CGBFLG)
		AND	A
		JR	Z,KSC003
		LD	A,(DJFLAG)
		AND	A
		JR	NZ,KSC003

		LD	A,(GRNDPT)
		CP	$32
		JR	NZ,KSC003

		POP	AF
		OR	%00000110	; ＡＴＲ６
		JR	KSC004
KSC003
		POP	AF
KSC004
	LD	(HLI),A
;
	LD	A,(PLYPSL)
	ADD	A,$08
	LD	(HLI),A
	LD	A,(PLXPSL)
	ADD	A,$07
	LD	(HLI),A
	LD	A,$1A
	LD	(HLI),A
;
;-------------------------------------------------
;	(CGB)草地 沼チェック
;-------------------------------------------------
;(CGB)	POP	AF

		LD	A,(CGBFLG)
		AND	A
		JR	Z,KSC005
		LD	A,(DJFLAG)
		AND	A
		JR	NZ,KSC005

		LD	A,(GRNDPT)
		CP	$32
		JR	NZ,KSC005

		POP	AF
		OR	%00000110	; ＡＴＲ６
		JR	KSC006
KSC005
		POP	AF
KSC006

	XOR	$20
	LD	(HL),A
;
	LD	A,$3
	LD	(HASGFG),A
	RET
;****************************************
;*      Scroll                          *
;****************************************
;
SCPLMX
	DB	$C6,$3A,$00,$00
;	DB	$C8,$38,$00,$00
SCPLMY
	DB	$00,$00,$3A,$C6
;	DB	$00,$00,$37,$C9
SCRLMH
	DB	$04,$FC,$00,$00
SCRLMV
	DB	$00,$00,$FC,$04
;---------------------------------------------
SCROLLS
	LD	A,(SCRLFG)
	CP	$0
	JP	Z,SCRRET
;
	PUSH	AF
;
		cp	SCSTR
;;;(CGB)	CP	$03
	JP	C,SC0000
;
	LD	A,(SCRLMK)
	LD	C,A
	LD	B,$0
;- - Player position move - - 
	LD	HL,SCPLMX
	ADD	HL,BC
	LD	A,(HL)
	LD	(PLXSPD),A
;
	LD	HL,SCPLMY
	ADD	HL,BC
	LD	A,(HL)
	LD	(PLYSPD),A
;
	PUSH	BC
	CALL	MVCALC
	POP	BC
;- - Scroll counter move --
	LD	HL,SCRLMH
	ADD	HL,BC
	LD	A,(SCCH)
	ADD	A,(HL)
	LD	(SCCH),A
;
	LD	HL,SCRLMV
	ADD	HL,BC
	LD	A,(SCCV)
	ADD	A,(HL)
	LD	(SCCV),A
;
	LD	HL,SCCVNX
	CP	(HL)
	JP	NZ,SC0000
;
	LD	A,(SCCH)
	LD	HL,SCCHNX
	CP	(HL)
	JP	NZ,SC0000	; scroll end ?
;				; yes !
	POP	AF
;
	LD	A,(BGMSTF)
	AND	A
	JR	Z,SCER00	; BGM chenge ?
;				; Yes !
	CALL	BGMON	
;
	XOR	A
	LD	(BGMSTF),A
SCER00
	CALL	PLSDCL
	LD	(PLZSPD),A
	LD	(SCRLFG),A
;
	LD	A,(PLXPSL)
	LD	(PLITXS),A
	LD	A,(PLYPSL)
	LD	(PLITYS),A
;
	LD	A,(SCRLMK)
	CP	$03
	JR	NZ,SCEDRT	; Muki down ?
;				; yes !
	LD	A,$01
	LD	(PLYSPD),A
	CALL	PLBGC0
;
	LD	A,(UNITNO)
	CP	DBL01
	JR	Z,SCEDRT	; Scroll end BG on => Tobiori continue.
	CP	DBL02
	JR	Z,SCEDRT	; Scroll end BG on => Tobiori continue.
	CP	ANA00
	JR	Z,SCNX10
;
	LD	A,(PLCBFG)
	AND	A
	JR	Z,SCEDRT	; Scroll end BG on => Tobiori continue.
;
SCNX10
	LD	A,(BGCKOF)
	AND	A
	JR	NZ,SCEDRT
;
	CALL	TOBIST2
SCEDRT
	LD	A,(DAMSEFG)
	AND	A
	JR	Z,SCE09A	;たぬきだまされ o r正解？
;				;YES !
	LD	(SOUND1),A	;(S)
	XOR	A
	LD	(DAMSEFG),A
SCE09A
	CALL	WANWANCKL	;ワンワン オプションセットチェック！
;
	LD	A,$FF
	LD	(CHTRCT),A	;すぐ転送するため！
;
	LD	A,(DJFLAG)
	AND	A
	RET	Z
;
	LD	D,A
;
		LD	A,(DNJNNO)
		CP	NEWDJ		;新ダンジョンナンバー？
		JR	NZ,TKS010_PASS	;	NO --> TKS010_PASS
		LD	D,$000
		JR	TKS010
TKS010_PASS
;
;;;KK;;;	LD	A,(DNJNNO)
	CP	DJROOM2 ;$20
	JR	NC,TKS010
	CP	DJROOM ;$20
	JR	C,TKS010
	INC	D
TKS010
	LD	A,(GRNDPT)
	LD	E,A
	CALL	DJTKCK
	CP	SKY
	JR	Z,TKS100
	CP	BKY
	JR	Z,TKS100
;
	LD	A,(NAZOFG)
	AND	%11100000
	CP	%10000000
	RET	NZ	;カギおってくる謎？
;			;YES !
TKS100
	LD	A,(KONPF)
	AND	A
	RET	Z	;コンパス？
;
	LD	A,(DJSVBF)
	AND	%00010000
	RET	NZ	;取った？
;
KEYSD
	LD	A,$0C
	LD	(KEYSDON),A
	RET
;-------------------------------------
SC0000
	POP	AF
	DEC	A
	RST	0
SC0000_TBL
	DEFW	SCRIT0
	DEFW	SCRIT11
	DEFW	SCRIT1
SCRSTR	DEFW	SCRMV1
	DEFW	SCRMV2
;
SCSTR		equ	(SCRSTR-SC0000_TBL)/2+1
;
SCRRET
	RET
;---------------------------------
;SCBGWT
;	DEC	A
;	RST	0
;	DEFW	SCRIT0
;	DEFW	SCRIT1
;	DEFW	SCRIT2
;=============================================
L9NZDT
	DB	1,1,2,0,0,2,1,2
	DB	0,2,2,0,2,2,0,2
	DB	1,2,0,2,1,2,0,2
	DB	0,0,0,0,2,2,2,2
;=============================================
SCRIT0
	LD	A,(SCRLMK)
	LD	C,A
	LD	B,$0
;
	LD	A,(DJFLAG)
	AND	A
	JR	Z,SRI010
;
	LD	A,(DNJNNO)
;
		CP	NEWDJ	;新ダンジョン？
		JR	Z,QAW1	;	YES --> QAW1
;
	CP	DJMAX+1 ;$20
	JR	NC,SRI010	; Normal danjyon ?
;				; yes !

	CP	$08
	JR	NZ,QAW1		;Lv.9?
;
	LD	A,(GRNDPT)
	CP	$71
	JR	NZ,QAW1
;				;yes !
	LD	A,C
	CP	$03
	JR	Z,QAW1	;下むき？
;
	LD	A,(L9NZFG)
	LD	E,A
	LD	D,$00
	LD	HL,L9NZDT
	ADD	HL,DE
;
	LD	A,(L9NZCT)
	LD	E,A
	INC	A
	LD	(L9NZCT),A		
	ADD	HL,DE
;
	LD	A,C
	CP	(HL)
	JR	Z,QAW0	;向きはずれ？
;			;YES !
	XOR	A
	LD	(L9NZCT),A
	JP	SRI024	
QAW0
	LD	A,E
	CP	$07
	JP	NZ,SRI024	;８回といた？
;				;YES !
	LD	A,$02
	LD	(DAMSEFG),A	;正解音！
QAW1
	XOR	A
	LD	(L9NZCT),A
;
	LD	HL,DJPTAD
	ADD	HL,BC
;
	LD	A,C
	CP	$02
	JR	NZ,DJLP10	;上むき？
;				; yes !
	LD	A,(DNJNNO)
	CP	$05
	JR	NZ,DJLP10	;level 6 ?
;				;yes !
	LD	A,(DNJNPT)
	CP	$1D
	JR	NZ,DJLP10	;永久ループ？
;				;yes !
	LD	A,$35
	LD	(DNJNPT),A
;
DJLP10
	LD	A,(HL)
	LD	HL,DNJNPT
;
	JR	SRI020
;
SRI010
	LD	A,(DAMASI)
	AND	A
	JR	Z,SRI013	;タヌキだまし？
;				;YES!
	LD	A,C
	CP	$02
	JR	NZ,SRI013	;上向き？
;				;YES !
	LD	A,$1E
	LD	(DAMSEFG),A	;だまされた音セットタイム！
;
	LD	A,$63
	LD	HL,GRNDPT
	JR	SRI023
;
SRI013
	LD	HL,GRPTAD
	ADD	HL,BC
;
	LD	A,(HL)
	LD	HL,GRNDPT
SRI020
	ADD	A,(HL)
SRI023
	LD	(HL),A
;
	CP	$41
	JR	NZ,SRI024
;
	LD	A,C
	CP	$02
	JR	NZ,SRI024	;上向き?
;				;YES !
	LD	HL,GRRMSV+$41
	BIT	6,(HL)
	JR	NZ,SRI024	;１回きり？
;				; YES !
	SET	6,(HL)	
;
	LD	A,$02
	LD	(DAMSEFG),A	;正解音！
SRI024
	CALL	BGDTST		; BG data set
;
		LD	A,(DJFLAG)
		AND	A
		JR	Z,SRI024_PASS
		LD	A,(DNJNNO)
		CP	NEWDJ			;新ダンジョン？
		JR	NZ,SRI024_PASS		;	NO --> SRI024_PASS
		LD	A,$001
		LD	(BKCHFG),A
		LD	A,:SRI024_PASS
		CALL	COIN_CHK_SUB
SRI024_PASS
;
	CALL	ENDTST
;
	CALL	PLCSET
	CALL	PLWPCS
;
	LD	A,(DJSDON)
	AND	A
	JR	Z,SCST0E
;
	XOR	A
	LD	(DJSDON),A
;
;;;12/03		LD	A,(CLOTHFG)
;;;12/03		AND	A
;;;12/03		LD	A,(BGMNO)
;;;12/03		JR	NZ,SCST0DD
;
	LD	A,(POWRFG)
	AND	A
	LD	A,(BGMNO)
	JR	Z,SCST0DD
	LD	A,$49
SCST0DD
	LD	(BGMSTF),A
	CALL	SOUNDOUT  ;CLR	;(S)
	JR	SCRNXT
;;	JR	SCSTF0
SCST0E
	LD	A,(DJFLAG)
	AND	A
	JR	NZ,SCST10
;
	LD	A,(KENLEV)
	AND	A
	JR	Z,SCST10
;
	LD	A,(GRNDPT)
	LD	E,A
	LD	D,$0
;
	LD	HL,GRBGMDT
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,BGMNO
	CP	(HL)
	JR	Z,SCST10
;
	LD	C,A
;
	CP	$25
	JR	NC,PBGMS10
;
	LD	B,$00
	LD	HL,PWBGMD
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	NZ,SCSTE8
;
PBGMS10 
	LD	A,(POWRFG)
	AND	A
	JR	Z,SCSTF0
;
	LD	A,(BGMNO2)
	CP	$49		; Power BGM ?
	JR	Z,SCSTF8	;剣パワー中BGMそのまま!
;
	CALL	SCSTF0
	LD	A,$49
	LD	(BGMSTF),A
	LD	(BGMNO2),A
	RET
;- - - - - - - - - - - - - - -
SCSTE8
	LD	A,C
	LD	(BGMNO2),A
SCSTF0
	LD	A,C
	LD	(BGMSTF),A
	CALL	SOUNDOUT  ;CLR	;(S)
SCSTF8
	LD	A,C
	LD	(BGMNO),A
SCST10
;;;;	BG DATA -> UNIT NO SET
SCRNXT
	LD	A,(SCRLFG)
	INC	A
	LD	(SCRLFG),A
	RET
;---------------------------------------
;-------------------------------------
SCRIT11
	CALL	BGBKST
;
	LD	A,(ONOFBLF)
	CP	$02
	JR	NZ,SCI1110	;凹凸ブロックある？
;				;yes !
	LD	A,$02
	LD	(ONOFHELP),A ;スクロール前凹凸ブロック転送フラグ！
;
SCI1110
	JP	SCRNXT
;===========================================
SCVRDH
	DB	$00,$00,$02,$02		; Next room vram base addr H
SCVRDL
	DB	$14,$0C,$00,$00		; L
;
SCADDH
	DB	$00,$00,$03,$02	    ; Next room vram write start addr H
SCADDL
	DB	$14,$1F,$E0,$00		; L
;;;(CGB)	DB	$14,$1E,$C0,$00		; L
SCRCD1
	DB	$08,$08,$0A,$0A		; Set unit count 
SCRCD2
	DB	$14,$14,$10,$10		; Set line count
;;;(CGB)	DB	$0A,$0A,$08,$08		; Set line count
BUNTAL
	DB	$00,$09,$70,$00
;Unit chenge data
;SCNXUN
;	DB	$10,$10,$01,$01
;;SCNXAH
;;	DB	$00,$00,$00,$00
SCNXAL
	DB	$40,$40,$02,$02
;Line chenge data
;SCNLUN
;	DB	$01,$FF,$F0,$10
;SCNLAH
;	DB	$00,$00,$03,$00
;SCNLAL
;	DB	$02,$1E,$C0,$40
SCHNXD
	DB	$A0,$60,$00,$00
SCVNXD
	DB	$00,$00,$80,$80
GRPTAD
	DB	$01,$FF,$F0,$10
DJPTAD
	DB	$01,$FF,$F8,$08
;-------------------------------------------
SCRIT1
		ld	a,(ONOFHELP)
		and	a
		ret	nz
;
		ld	e,0ffh
	LD	A,(SCRLMK)
	LD	C,A
	LD	B,$0
		and	002
		jr	nz,SCRIT1_050
;
		ld	e,11011111b
;
SCRIT1_050
	LD	HL,SCHNXD
	ADD	HL,BC
	LD	A,(SCCHNX)
	ADD	A,(HL)
	LD	(SCCHNX),A
;
	LD	HL,SCVNXD
	ADD	HL,BC
	LD	A,(SCCVNX)
	ADD	A,(HL)
	LD	(SCCVNX),A
;
	LD	HL,SCADDL
	ADD	HL,BC
	LD	A,(SCVRML)
	ADD	A,(HL)
	RL	D		; PUSH CY
		and	e
;;;(CGB)	AND	%11011111
	LD	(SCRADL),A	;    "  for calc 
;
	LD	HL,SCADDH
	ADD	HL,BC
	LD	A,(SCVRMH)
	RR	D		; POP CY
	ADC	A,(HL)
	AND	$03
	LD	(SCRADH),A
;
	LD	HL,SCVRDL
	ADD	HL,BC
	LD	A,(SCVRML)
	ADD	A,(HL)
	RL	D		; PUSH CY
		and	e
;;;(CGB)	AND	%11011111
	LD	(SCVRML),A	; Next room vram adress
;
	LD	HL,SCVRDH
	ADD	HL,BC
	LD	A,(SCVRMH)
	RR	D		; POP CY
	ADC	A,(HL)
	AND	$03
	LD	(SCVRMH),A
;--
;;	LD	HL,SCADDH
;;	ADD	HL,BC
;;	LD	A,(HL)
;;	LD	(SCRADH),A
;;;
;;	LD	HL,SCADDL
;;	ADD	HL,BC
;;	LD	A,(HL)
;;	LD	(SCRADL),A
;
	LD	HL,SCRCD1
	ADD	HL,BC
	LD	A,(HL)
	LD	(SCRLC1),A
;
	LD	HL,SCRCD2
	ADD	HL,BC
	LD	A,(HL)
	LD	(SCRLC2),A
;
	LD	HL,BUNTAL
	ADD	HL,BC
	LD	A,(HL)
	LD	(SCUNTA),A
;
	XOR	A
	LD	(SCRLTM),A
;
	JP	SCRNXT
;-------------------------------------------
SCRMV1
		jp	SCRMV1S
;;;KK;;;	CALL	SCRMV1S
;;;KK;;;	RET
;========================================
;========================================
;- - - - - - - - - - - - - - - - - - - - - - - - 
SCRMV2
	RET
;=====================================================
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	移動式護謨製床			%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
PBXRVD
	DB	$00,$00,$FF,$01
	DB	$01,$FF,$01,$FF
PBYRVD
	DB	$01,$FF,$00,$00
	DB	$01,$01,$FF,$FF
;- - - - - - - - - - - - - - - - - -
PLBELT
	LD	A,(FRCNT)
	AND	$03
	LD	HL,ITEMNOT
	OR	(HL)
	LD	HL,PLSTOP
	OR	(HL)
	LD	HL,DEMOFG
	OR	(HL)
	RET	NZ
;;	JR	NZ,PBE090
;
	LD	A,(FTBGNO)
	SUB	$F0
	LD	E,A
	LD	D,$00
	LD	HL,PBXRVD
	ADD	HL,DE
	LD	A,(PLXPSL)
	ADD	A,(HL)
	LD	(PLXPSL),A
;
	LD	HL,PBYRVD
	ADD	HL,DE
	LD	A,(PLYPSL)
	ADD	A,(HL)
	LD	(PLYPSL),A
PBE090
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	移動式水面筏			%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
IBXRVD
	DB	$FC,$FA,$F8,$F6
	DB	$0C,$00,$00,$F4
IBYRVD
	DB	$00,$00,$00,$00
	DB	$00,$F4,$0C,$00
;- - - - - - - - - - - - - - - - - -
WATRMV	; いかだ水面ムーブ！
;
	LD	A,(FRCNT)
	AND	$00
	LD	HL,SCRLFG
	OR	(HL)
	LD	HL,DEMOFG
	OR	(HL)
	LD	HL,PLSTOP
	OR	(HL)
	LD	HL,MSGEFG
	OR	(HL)
	LD	HL,WNDFLG
	OR	(HL)
		ret	NZ
;;;KK;;;	JR	NZ,IBE090
;
	LD	E,$01
	LD	A,(UNITNO)
	CP	MIZU0
	JR	NZ,WATM08
;
	LD	A,(GRNDPT)
	CP	$3E
	JR	Z,WATM10
	INC	E
	CP	$3D
	JR	Z,WATM10
	INC	E
	CP	$3C
	JR	Z,WATM10
	CP	$3F
		ret	NZ
;;;;;;;;	JR	NZ,IBE090
	LD	E,$00
	JR	WATM10	
WATM08
	SUB	JWAT0-4
	LD	E,A
WATM10
	LD	D,$00
	LD	HL,IBXRVD
	ADD	HL,DE
	LD	A,(HL)
	LD	(PLXSPD),A
;
	LD	HL,IBYRVD
	ADD	HL,DE
	LD	A,(HL)
	LD	(PLYSPD),A
;
	CALL	MVCALC
		jp	PLBGC0
;;;KK;;;	CALL	PLBGC0
;;;KK;;;IBE090
;;;KK;;;	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
UFOBELT
;	DB	%11111111,%00000000
;	DB	%00000000,%00000000
;	DB	%11111111,%11111111
;	DB	%00000000,%00000000
;	DB	%11111111,%00000000
;	DB	%00000000,%00000000
;	DB	%11111111,%11111111
;	DB	%00000000,%00000000
;;
;	DB	%11111111,%00000000
;	DB	%00000000,%00000000
;	DB	%11111111,%11111111
;	DB	%00000000,%00000000
;	DB	%11111111,%00000000
;	DB	%00000000,%00000000
;	DB	%11111111,%11111111
;	DB	%00000000,%00000000
;;
;	DB	%10101010,%00100010
;	DB	%10101010,%00100010
;	DB	%10101010,%00100010
;	DB	%10101010,%00100010
;	DB	%10101010,%00100010
;	DB	%10101010,%00100010
;	DB	%10101010,%00100010
;	DB	%10101010,%00100010
;;
;	DB	%10101010,%00100010
;	DB	%10101010,%00100010
;	DB	%10101010,%00100010
;	DB	%10101010,%00100010
;	DB	%10101010,%00100010
;	DB	%10101010,%00100010
;	DB	%10101010,%00100010
;	DB	%10101010,%00100010
;;==============================================
	END
