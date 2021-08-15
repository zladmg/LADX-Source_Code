;;   おフランス 
;
;
;
		onbankgroup
;
;==============	バンク０ ================================================
BANK0		GROUP	0
;-------------<	ZCO >-------------
		extern	DATA_MOV,RAMCLR,RAMCL2,RNDSUB,OBJBG,SVOPEN,RAMCL3
		extern	SOUNDCLR,DJITRV,BGMSET,RAMCLR4
;
;-------------<	ZES >-------------
		extern	ENEMY,ENIDSHL,COHTITL,ITEMDPL,ENOMST,EN2CST,ECACH
		extern	EMOVE,EFAIL
;
;-------------<	ZBS >-------------
		extern	BGDTST,ENDTST,BGBKST,DJTKCK
;
;-------------<	ZPL >-------------
		extern	MSGCHK,FDIN,FDOUT,NXGOTO,ENEMYL,GKCHRV,MSCHNOR
		extern	ENEMYL1,PLCSET,GPLAY,NMREG,NMCLR,PSLCT,PINDR2
		extern	NMCPY,GPMAIN,PRN,MSCHN2R
;
;-------------<	ZMA >-------------
		extern	HIMITSU,VRMCL,VRMBT,BKCH2,BKCH3,WINDBGS,RBGST
		extern	PSLBGS,GVCHG,GOVBG,PSLBG2,NSLBGS,NCLBGS,GMAPBGS
		extern	VRMB2,DJBST,GRBST,GMBST,BLVRDS,GMAPCL,BNKTR
		extern	SPTST,BKCHG,TLCHG,ODCHG,NCPBGS,GRCST,TSVBG
		EXTERN	HIMI2
		extern	OpenWhiteOutSub,DownColorSetSub,AllColorSetSub
		extern	AllColorSetSub,HIMITSU2,WINDBGS2,AllWhiteSetSub
;
;==============	バンク１ ================================================
BANK1		GROUP	1
;-------------<	ZS1 >-------------
		extern	GMRESET,CURSDST,CURSDSS,WANWANCK,TBGCST
;
;==============	バンク２ ================================================
BANK2		GROUP	2
;-------------<	ZEX >-------------
		extern	EXSTRA,COINIT,HARTIT,ITEMDP,WINDOW,ITEMDP2
;
;==============	バンク３ ================================================
BANK3		GROUP	3
;-------------<	ZEN >-------------
		extern	ENCAPS,BOMBR,BUMER,KTOBJ,PYAAA
;
;==============	バンク８ ================================================
BANK8		GROUP	8
;-------------<	ZBD >-------------
		extern	GRBGCR,BGUNCH
;
;==============	バンク１４ ==============================================
BANK14		GROUP	$14
;-------------<	ZDB >-------------
		extern	SKY,BKY
;
;========================================================================
	PUBALL
;
BANK1	GROUP	1
	nlist
	lib	zram
;
;;;;;;;;;---sub---------------------------------------
;;;;;;;;	EXTERN	DATA_MOV,ENEMY,EXSTRA,RAMCLR,RAMCL2,BGDTST,GMRESET
;;;;;;;;	EXTERN	ENDTST,COINIT,HARTIT,ITEMDP,RNDSUB,WINDOW,ITEMDP2,MSGCHK
;;;;;;;;	EXTERN	ENIDSHL,OBJBG,ENCAPS,FDIN,FDOUT,NXGOTO,ENEMYL,SVOPEN,GKCHRV
;;;;;;;;	EXTERN	COHTITL,ITEMDPL,RAMCL3,BGBKST,SOUNDCLR,DJITRV,ENOMST,EN2CST
;;;;;;;;	EXTERN	CURSDST,CURSDSS,BGMSET,MSCHNOR
;;;;;;;;	EXTERN	WANWANCK,HIMITSU,RAMCLR4  ;,TOURCK
;;;;;;;;	EXTERN	ENEMYL1,TBGCST,PLCSET
;;;;;;;;	EXTERN	DJTKCK,MSCHN2R
;;;;;;;;;- -lavel -
;;;;;;;;	EXTERN	VRMCL,VRMBT,BKCH2,BKCH3,WINDBGS,RBGST,BOMBR,BUMER,KTOBJ,GRBGCR
;;;;;;;;	EXTERN	BGUNCH,ECACH,PYAAA,EMOVE,EFAIL,PSLBGS,GPLAY,GVCHG,GOVBG
;;;;;;;;	EXTERN	PSLBG2,NSLBGS,NMREG,NMCLR,NCLBGS,PSLCT,GMAPBGS,VRMB2
;;;;;;;;	EXTERN	PINDR2,DJBST,GRBST,GMBST,BLVRDS,GMAPCL,BNKTR,NMCPY,SPTST
;;;;;;;;	EXTERN	BKCHG,TLCHG,ODCHG,GPMAIN,NCPBGS,GRCST,TSVBG
;;;;;;;;	EXTERN	SKY,BKY
;- - - - - - - - - - - - - - - - - - -
	KANJI
	LIST
	isdmg
	ORG	$4000
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	デバッグモードフラグ			x
;x		０：デバッグモードＯＦＦ	x
;x		１：デバッグモードＯＮ		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
DebugModeFlag	EQU	0
;
;
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	強制セーブ  			     %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
TSAVESB
	LD	A,(ITMODE)
	RST	0
	DW	TSV0000
	DW	TSV0800
	DW	TSV1000
	DW	TSV2000
	DW	TSV2800
	DW	TSV3000
	DW	TSV4000
;=====================================
TSV0000
		CALL	ITMINC
		LD	A,(CGBFLG)
		AND	A
		JR	Z,TSV0000_0800
		LD	HL,CGWORK
		LD	C,$080
		DI			;割り込み禁止
		LD	A,$003
		LD	(SVBK),A
		LD	A,(COLBK3FG)
		AND	A
		JR	NZ,TSV0000_0700
TSV0000_0600
		XOR	A
		LD	(SVBK),A
		LD	B,(HL)
		LD	A,$003
		LD	(SVBK),A
		LD	(HL),B
		INC	HL
		DEC	C
		LD	A,C
		AND	A
		JR	NZ,TSV0000_0600
		LD	A,$001
		LD	(COLBK3FG),A
TSV0000_0700
		XOR	A
		LD	(SVBK),A
		EI			;割り込み許可
TSV0000_0800
;
;=====================================
TSV0800
	CALL	PLCSET
	CALL	ENEMYL1
;
	CALL	FDIN
;
	LD	A,(SBHR)
	CP	$04
	JR	NZ,TSV0810
;
	LD	A,$03
	LD	(SLEVEL),A
	LD	A,$30
	LD	(SLEVEL+1),A
;
	CALL	ITMINC
;
	XOR	A
	LD	(SCXAD),A
	LD	(WNDFLG),A
	LD	(FUETM),A
	LD	(FUETM2),A
	LD	(FUEFLG),A
;
	LD	A,VRMB2  ;CL
;;	LD	A,VRMCL
	LD	(BLNKFG),A
TSV0810
	RET
;=====================================
TSV1000
	LD	A,GVCHG
	LD	(BLNKFG),A
;
	XOR	A
	LD	(OVSLCT),A
;
	JP	ITMINC
;=====================================
TSV2000
;;	LD	A,SPTST
;;	LD	(BLNKFG),A
	LD	A,TSVBG
	LD	(VRFLG),A
;
	LD	A,$FF
	LD	(WNDYPS),A
;
	XOR	A
	LD	(SCCH),A
	LD	(SCCV),A
;
	LD	(SBHR),A
	LD	(SBCNT),A
;
		ld	a,001		; (CGB)フェードインフラグＯＮ
		ld	(FADEMDFG),a
;
	JP	ITMINC
;=====================================
TSV2800
	CALL	FDOUT
;
	LD	A,(SBHR)
	CP	$04
	JR	NZ,TSV2810
;
	CALL	ITMINC
TSV2810
	RET
;=====================================
TSV3000
	CALL	TSSLST	; Slect obj set
;
	LD	A,(KEYA2)
	AND	%10110000
	JR	Z,TSV3010
;
	LD	A,$13
	LD	(SOUND1),A	;(S)
;
	LD	A,(OVSLCT)
	CP	$01
	JR	Z,TSV3008	; Continue ?
;				; yes !
	CALL	ITMINC
;
	XOR	A
	LD	(SBHR),A
	LD	(SBCNT),A
;
	LD	A,(DJFLAG)
	AND	A
	JR	Z,SSV0900
;
	XOR	A
	LD	(SHOPFG),A	; Shop BG initial !!
	LD	(ZZZFLG),A	;タリン ｚｚｚ セットフラグ
;
SSV0900
	RET
;
TSV3003
	XOR	A
	LD	(OBP0FG),A
	LD	(OBP1FG),A
	LD	(OBP0),A
	LD	(OBP1),A
	LD	(BGPFG),A
	LD	(BGP),A
;
	LD	A,(PLXPSL)
	LD	(WPLXPSL),A
	LD	A,(PLYPSL)
	LD	(WPLYPSL),A
;
	CALL	GMSTART
;
	LD	A,$80
	LD	(PLFLSH),A
	RET
;======================================
TSV3008
	CALL	SOUNDCLR	;(S)
;
	CALL	DTSAVE
;
	CALL	RAMCLR4
;
;うわ～！これをクリアしていないせいで、
;	リセット後のオープニングデモが　変になってるわ～
		XOR	A		;
		LD	(ENCHNO),A	;	
;
		ld	a,001
		ld	(PBANK),a
	CALL	GMRESET		; Game reset !
;========================================
DSPINT
	LD	A,%11000111	; ＯＢＪ ＢＧ ＯＮ ＬＣＤＣ スタート
	LD	(LCDC),A
	LD	(LCDCB),A
	LD	A,$07
	LD	(WDX),A
	LD	A,$80
	LD	(WNDYPS),A	; Window y pos set !
	LD	(WDY),A
	LD	A,$07
	LD	(SLEVEL),A	; sound level 1 MAX set !
	LD	A,$70
	LD	(SLEVEL2),A	; sound level 2 MAX set !
TSV3010
	RET
;=========================================
TSSLYS
	DB	$48,$58
TSSLST
	LD	HL,OVSLCT
;
	CALL	CURSDST	;(S)
;
	LD	A,(KEYA2)
		and	%00001100
;;;11/11	AND	%01001100
	JR	Z,TSSL00
;
	LD	A,(HL)
	INC	A
	AND	$01
	LD	(HL),A
TSSL00
	LD	E,(HL)
	LD	D,$00
;
	LD	HL,TSSLYS
	ADD	HL,DE
	LD	A,(HL)
;
	LD	HL,OAM+$18
	LD	(HLI),A	
	LD	A,$24
	LD	(HLI),A
	LD	A,$BE
	LD	(HLI),A
	LD	(HL),$00
	RET	
;==========================================
ODEMOSUB
;
MA0010
	LD	A,(PLTIM0)
	AND	A	
	JP	NZ,OD0010
;
	LD	E,$70
MA00111
;;;11/11	LD	A,$00
		xor	a
	LD	(BGP),A
;
	DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
;
	DEC	E
	JR	NZ,MA00111
;
	LD	E,$30
MA00112
	LD	A,$40
	LD	(BGP),A
	DEC	E
	JR	NZ,MA00112
;
	LD	E,$30
MA00113
	LD	A,$80
	LD	(BGP),A
	DEC	E
	JR	NZ,MA00113
;
	LD	E,$FF
MA00114
	LD	A,$C0
	LD	(BGP),A
;
	DB	0,0,0,0,0,0,0,0,0
	DB	0,0,0,0,0,0,0,0,0
;
	DEC	E
	JR	NZ,MA00114
;
	LD	E,$30
MA00115
	LD	A,$80
	LD	(BGP),A
	DEC	E
	JR	NZ,MA00115
;
;
	LD	E,$30
MA00116
	LD	A,$40
	LD	(BGP),A
	DEC	E
	JR	NZ,MA00116
;
OD0010
	XOR	A
	LD	(BGPFG),A
	LD	(BGP),A
	RET
;=========================================
;=	Game over sub			 =
;=========================================
PLOVERS
	LD	A,(PLSTAT)
	RST	0
	DW	POV1000
	DW	POV1800
	DW	POV1A00
	DW	POV2000
	DW	POV3000
;=====================================
PLOVCD
	DB	$6A,$6A,$6A,$6A
	DB	$6A,$6A,$6A,$6A
	DB	$6A,$6A,$00,$00
	DB	$00,$0A,$04,$06
	DB	$00,$0A,$04,$06
	DB	$00,$0A,$04,$06
;;	DB	$00,$0A,$04,$06
;;	DB	$00,$0A,$04,$06
;;	DB	$00,$0A,$04,$06
;;	DB	$00,$0A,$04,$06
PLOVCL
	DB	$1C
	DB	$1C
	DB	$1C
	DB	$1C
	DB	$1C
	DB	$1C
	DB	$1C
	DB	$1C
	DB	$1C
	DB	$1C
	DB	$1B
	DB	$1A
	DB	$19
	DB	$18
	DB	$17
	DB	$16
	DB	$15
	DB	$14
	DB	$13
	DB	$12
	DB	$11
	DB	$10
	DB	$10
	DB	$10
	DB	$10
	DB	$10
	DB	$10
	DB	$10
;
;	DB	%00000000
;	DB	%00000000
;	DB	%00000000
;	DB	%00000000
;	DB	%01010000
;	DB	%10100100
;	DB	%11100100
;	DB	%11100100
;	DB	%11100100
;	DB	%11100100
;	DB	%11100100
;	DB	%11100100
;
POV1000
	XOR	A
	LD	(TILTXD),A
	LD	(TILTYD),A
;
	LD	A,(PLTIM0)
	AND	A
	JR	NZ,POV1010
;
	LD	A,$10
	LD	(PLTIM0),A
;
	LD	A,$01
	LD	(PLSTAT),A
;
	LD	A,VRMB2  ;CL
	LD	(BLNKFG),A
;
	LD	A,$FF
	LD	(PLCHPT),A
;
	LD	A,(DETHCT)
	ADD	A,$01
	DAA
	LD	(DETHCT),A
;
	LD	A,(DETHCT+1)
	ADC	A,$00
	DAA
	LD	(DETHCT+1),A
	CP	$10
	JR	C,POV1008
;
	LD	A,$99
	LD	(DETHCT),A
	LD	A,$09
	LD	(DETHCT+1),A
POV1008
	XOR	A
	LD	(SCXAD),A
	LD	(ENFLCT),A
	LD	(POWRFG),A
	LD	(POWRCT),A
	LD	(FADEON),A
	LD	(FADECT),A
	LD	(FADECT2),A
;
		LD	(OBP0),A	; とりあえずりんく消す！
	RET
POV1010
	RRA
	RRA
	RRA
	AND	%00111111
	LD	E,A
	LD	D,$00
	LD	HL,PLOVCD
	ADD	HL,DE
	LD	A,(HL)
	LD	(PLCHPT),A
;
	LD	A,(PLTIM0)
	RRA
	RRA
	RRA
	AND	$1F
	LD	E,A
	LD	HL,PLOVCL
	ADD	HL,DE
	LD	A,(HL)
	LD	(FADECT2),A
;
	LD	A,$01
	LD	(FADEON),A
;
	LD	A,$01C
	LD	(OBP0FG),A
	LD	A,(BGPFG)
	LD	(OBP1FG),A
		ld	e,008
		call	OpenWhiteOutSub
		call	DownColorSetSub
;
	RET	
;=====================================
POV1800
	LD	A,GVCHG
	LD	(BLNKFG),A
;
	LD	HL,PLSTAT
	INC	(HL)
	RET
;
;=====================================
POV1A00
	LD	A,$0E4
	LD	(BGPFG),A
;
	LD	A,GOVBG
	LD	(VRFLG),A
;
	LD	A,$FF
	LD	(WNDYPS),A
;
	XOR	A
	LD	(SCCH),A
	LD	(SCCV),A
;
	LD	HL,PLSTAT
	INC	(HL)
;
		call	AllColorSetSub
;
	CALL	DJITRV
	RET
;=====================================
PIYOYD
	DB	$00,$FE,$FD,$FE
	DB	$00,$02,$03,$02
PIYOXD
	DB	$00,$04,$08,$0C
	DB	$10,$0C,$08,$04
POV2000
	LD	A,(PLTIM0)
	AND	A
	JR	NZ,POV2010
;
	LD	HL,PLSTAT
	INC	(HL)
;
	LD	A,$03  ;E
	LD	(SOUND4),A	;(S)
POV2010
	RET
;=====================================
POV3000
	CALL	OVSLST	; Slect obj set
;
	LD	A,(KEYA2)
	AND	%10110000
	JR	Z,POV3010
;
	LD	A,(OVSLCT)
	CP	$01
	JR	Z,POV3008	; Continue ?
;				; yes !
	CP	$00
	JR	Z,POV3002	; With Save ?
;				; Yes !
	LD	(SAVEFG),A	; Not continue flag !
	JR	POV3003
;
POV3002
;;	LD	A,$01
;;	CALL	PBSET	
	CALL	DTSAVE
POV3003
	XOR	A
;
	LD	HL,ENMODE
	LD	E,ENNO
POV3005
	LD	(HLI),A
	DEC	E
	JR	NZ,POV3005
;
	LD	(OBP0FG),A
	LD	(OBP1FG),A
	LD	(OBP0),A
	LD	(OBP1),A
	LD	(BGPFG),A
	LD	(BGP),A
	LD	(ONOFFG),A
	LD	(WARPFG2),A
;
	LD	A,(PLXPSL)
	LD	(WPLXPSL),A
	LD	A,(PLYPSL)
	LD	(WPLYPSL),A
;
;;	LD	A,$01
;;	CALL	PBSET	
	CALL	GMSTART
;
		LD	A,:POV3000	; 戻りバンク
		call	AllWhiteSetSub
;
	LD	A,$80
	LD	(PLFLSH),A
	RET
;======================================
POV3008
;;	LD	A,$01
;;	CALL	PBSET	
	CALL	DTSAVE
;
;うわ～！これをクリアしていないせいで、
;	リセット後のオープニングデモが　変になってるわ～
		XOR	A		;
		LD	(ENCHNO),A	;	
;
	CALL	GMRESET		; Game reset !
POV3010
	RET
;=========================================
OBSLYS
	DB	$48,$60,$78
;- - - - - - - - - - - - - - - - - - - -
OVSLST
	LD	HL,OVSLCT
;
	CALL	CURSDST	;(S)
;
	LD	A,(KEYA2)
		AND	%00001000
;;;11/11	AND	%01001000
	JR	Z,OVSL00
;
	LD	A,(HL)
	INC	A
	CP	$03
	JR	NZ,OVSLF0
	XOR	A
OVSLF0
	LD	(HL),A
OVSL00
	LD	A,(KEYA2)
	AND	%00000100
	JR	Z,OVSL20
;
	LD	A,(HL)
	DEC	A
	CP	$FF
	JR	NZ,OVSL10
	LD	A,$02
OVSL10
	LD	(HL),A
OVSL20
	LD	E,(HL)
	LD	D,$00
;
	LD	HL,OBSLYS
	ADD	HL,DE
	LD	A,(HL)
;
	LD	HL,OAM+$18
	LD	(HLI),A	
	LD	A,$24
	LD	(HLI),A
	LD	A,$BE
	LD	(HLI),A
	LD	(HL),$00
	RET
;========================================
;****************************************
;*       GAME Play initial	        *
;****************************************
GPSUB
	LD	A,(ITMODE)
	RST	0
	DW	PLITF0
	DW	PLIT00
GPMAD	;;DW	PLIT06
	DW	PLIT08
	DW	PLIT10
	DW	PLIT20
	DW	PLIT30
	DW	PLIT40
	DW	GPMAIN
GPM	EQU	$2  ;Return From Map display 1!
GPMA	EQU	$7  ;8  ;Return From Map display 2!
;===========================================
DAMPFGD	; ﾀﾞﾝｼﾞｮﾝ ﾏｯﾌﾟ ｺｳｾｲ ﾃﾞｰﾀ
	DB	%00000000 ;0
	DB	%00000000 ;1
	DB	%00010001 ;2
	DB	%00000000 ;3
	DB	%00000000 ;4
	DB	%00000000 ;5
	DB	%00110000 ;6
	DB	%00000000 ;7
	DB	%00000000
	DB	%00000000
	DB	%00000000
	DB	%00000000
	DB	%00000000
	DB	%00000000
	DB	%00000000
	DB	%00000000	;新ダンジョン用
;======================================
PLITF0
	CALL	SOUNDCLR
;
	CALL	ITMINC
;
	LD	A,(HIMITSU2)
	AND	A
	JR	Z,PLITF1
;
	LD	A,WINDBGS2
	LD	(VRFLG),A
	RET
;
PLITF1
	LD	A,(DJFLAG)
	AND	A
	JR	Z,PLITF8
;- - Danjyon item buffer set - - -
	LD	A,(DNJNNO)
;
		cp	NEWDJ		; 新ダンジョン？
		jr	nz,PLITF1_PASS	;	NO --> PLITF1_PASS
		ld	hl,DMAPFS
		jr	PLITF100
PLITF1_PASS
;
	LD	E,A
	SLA	A
	SLA	A
	ADD	A,E
	LD	E,A
	LD	D,$00
	LD	HL,DMAPF1
	ADD	HL,DE
PLITF100
	LD	DE,DMAPF
;
	LD	C,$05
PLITF01
	LD	A,(DNJNNO)
		cp	NEWDJ		; 新ダンジョン？
		jr	z,PLITF02
	CP	$08
	JR	Z,PLITF011
	CP	DJMAX ;$20
	JR	C,PLITF02	; Danjyon item not display ?
PLITF011
	XOR	A		; yes !
	JR	Z,PLITF03
PLITF02
	LD	A,(HLI)
PLITF03
	LD	(DE),A
	INC	DE
	DEC	C
	JR	NZ,PLITF01
;
	LD	A,(DNJNNO)
;
		cp	NEWDJ		; 新ダンジョン
		jr	nz,PLITF03_PASS	;	NO --> PLITF03_PASS
		ld	a,00fh
PLITF03_PASS
;
	LD	E,A
	LD	D,$00
;
	LD	HL,DAMPFGD
	ADD	HL,DE
	LD	A,(HL)
	LD	(DAMPFG),A
;
;;;11/11	LD	A,E
		ld	a,(DNJNNO)
		cp	NEWDJ		; 新ダンジョン？
		jr	z,PLITF7	;	YES --> PLITF7
	CP	$08
	JR	Z,PLITFA
	CP	DJMAX ;$20
	JR	NC,PLITFA	; Normal danjyon ?
;				; yes ! map set !
	CP	$06
	JR	NZ,PLITF7
;
	LD	A,(YKFLAG)
	AND	A
	JR	NZ,PLITFA
PLITF7
	CALL	DMAPSUB
;
	LD	A,BLVRDS
	LD	(VRFLG),A
;
	RET
;--------------------------------
PLITF8
	LD	A,WINDBGS
	LD	(VRFLG),A
;
	CALL	RNDSUB
	LD	HL,FRCNT
	OR	(HL)
	AND	$03	
	LD	(PANELMD),A	;順番パネル秘密テーブルセット
	RET
;--------------------------------
PLITFA	; レベル７雲BGセット！    Window Map clear 
	LD	A,GMAPCL
	LD	(VRFLG),A
	RET
;===========================================
PLIT00
	CALL	RAMCL3
	XOR	A
	LD	(PLMODE),A
;
	CALL	ITMINC
;
	LD	A,(WPLXPSL)
	LD	(PLXPSL),A
	LD	(PLITXS),A
	LD	A,(WPLYPSL)
	LD	(PLYPSL),A
	LD	(PLITYS),A
;
	LD	A,(NXRMPZ)
	LD	(PLZPSL),A
	AND	A
	JR	Z,PLIT011
;
	LD	A,$02
	LD	(PLJPFG),A
PLIT011
	LD	A,$04
	LD	(SCRLMK),A	; Not scroll !
;
	CALL	BGDTST		; BG data set
;
	CALL	ENDTST		; Enemy data set
;
	CALL	WANWANCK	;ワンワンセットチェック
;
	LD	A,$FF
	LD	(CHTRCT),A	;すぐ転送するため！
;
	LD	A,(DJFLAG)
	AND	A
	JR	Z,PI0088
;
	LD	D,A
;
		ld	a,(DNJNNO)
		cp	NEWDJ		; 新ダンジョンナンバー？
		jr	nz,PTKS010_PASS	;	NO --> PTKS010_PASS
		ld	d,000
		jr	PTKS010
PTKS010_PASS
;
;;;11/11	LD	A,(DNJNNO)
	CP	DJROOM2 ;$20
	JR	NC,PTKS010
	CP	DJROOM ;$20
	JR	C,PTKS010
	INC	D
PTKS010
	LD	A,(GRNDPT)
	LD	E,A
	CALL	DJTKCK
	CP	SKY
	JR	Z,PTKS100
	CP	BKY
	JR	Z,PTKS100
;
	LD	A,(NAZOFG)
	AND	%11100000
	CP	%10000000
	JR	NZ,PI0088 ;カギおってくる謎？
;			;YES !
PTKS100
	LD	A,(KONPF)
	AND	A
	JR	Z,PI0088 ;コンパス？
;
	LD	A,(DJSVBF)
	AND	%00010000
	JR	NZ,PI0088 ;取った？
;
	LD	A,$0C
	LD	(KEYSDON),A
;;	CALL	TOURCK
PI0088
	LD	A,(DJFLAG)
	AND	A
	LD	A,DJBST		; Bank set!
	JR	NZ,PI0090	; Danjyon ?
;				; yes !
	LD	A,GRBST		; Bank set!
PI0090
	LD	(BLNKFG),A
PI009A
	RET
;===========================================
PLIT08
	LD	A,$0F
	LD	(BKCHNO),A
;
		LD	A,(CGBFLG)
		AND	A
		JR	Z,PLIT08_PASS
		DI
		LD	A,$003
		LD	(SVBK),A
		XOR	A
		LD	(COLBK3FG),A
		LD	(SVBK),A
		EI
PLIT08_PASS
;
	CALL	BGBKST		; BG bank set!
	XOR	A
	LD	(BKCHFG),A
	LD	(BKCHF2),A
;
	LD	A,BNKTR
	LD	(BLNKFG),A
;
ITMINC
	LD	HL,ITMODE
	INC	(HL)
	RET
;===========================================
PLIT10
	LD	A,RBGST		; Room BG initial set
	LD	(BLNKFG),A
;
	LD	A,(ONOFBLF)
	AND	A
	JR	Z,PI101010	; On off block stage ?
;				; yes !
	LD	A,$05
	LD	(ONOFTM),A	; On off block revise set !
;
	LD	A,(SWCHTM)
	AND	A
	JR	Z,PI101010	; Swich on ?
;				; Yes !
	LD	A,$03 ;F2
	LD	(CHTRF2),A ;TOURFG),A	; Swich down chr TR.
PI101010
	CALL	ITMINC
	RET
;===========================================
PLIT20
	CALL	COHTITL	 ; Coint & heart display
;
	CALL	ITMINC
	RET
;===========================================
PLIT30
	CALL	ITEMDPL	; Item window display
;
	CALL	ITMINC
	RET
;===========================================
PLIT40
	CALL	WINDIT	;Window pos initial
;
	LD	A,(LCDC)
	OR	%00100000	; Window on !
	LD	(LCDCB),A
	LD	(LCDC),A
;
	CALL	ITMINC
;
OTDRST
	LD	A,(PLMODE)
	LD	(WPLMODE),A
;
	LD	A,PINDR2
	LD	(PLMODE),A
;
	XOR	A
	LD	(SBHR),A
	LD	(SBCNT),A
;
	LD	A,(FADEON)
	AND	A
	JR	Z,PIT4050
;
	LD	A,(FADEBP)
	LD	(BGPFG),A
;
	LD	A,$1C
	LD	(OBP0FG),A
	LD	A,$E4
	LD	(OBP1FG),A
;
		ld	a,(CGBFLG)
		and	a
		jr	nz,PIT4050
;
	LD	A,$04
	LD	(SBHR),A
PIT4050
	JP	BGMSET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%				  %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
PSLCHK
	LD	A,(KEYA2)
	AND	%10010000
	JP	Z,TLM000
;
PSLCTGO
	LD	(STARTFG),A
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
PSLGO
	CALL	SVOPEN	;(SV)
;--SAVEDATA => WORK BUFFER 
	LD	A,(NAME+0-SAVEBF+SAVEI1)
	LD	(NAMEBF+00),A
	CALL	SVOPEN	;(SV)
	LD	A,(NAME+1-SAVEBF+SAVEI1)
	LD	(NAMEBF+01),A
	CALL	SVOPEN	;(SV)
	LD	A,(NAME+2-SAVEBF+SAVEI1)
	LD	(NAMEBF+02),A
	CALL	SVOPEN	;(SV)
	LD	A,(NAME+3-SAVEBF+SAVEI1)
	LD	(NAMEBF+03),A
	CALL	SVOPEN	;(SV)
	LD	A,(NAME+4-SAVEBF+SAVEI1)
	LD	(NAMEBF+04),A
;
	CALL	SVOPEN	;(SV)
	LD	A,(HARTCT-SAVEBF+SAVEI1)
	LD	(HARTCTF),A
	CALL	SVOPEN	;(SV)
	LD	A,(HARTMX-SAVEBF+SAVEI1)
	LD	(HARTMXF),A
;
	CALL	SVOPEN	;(SV)
	LD	A,(DETHCT-SAVEBF+SAVEI1)
	LD	(DETHCTF),A
	CALL	SVOPEN	;(SV)
	LD	A,(DETHCT+1-SAVEBF+SAVEI1)
	LD	(DETHCTF+1),A
;--
	CALL	SVOPEN	;(SV)
	LD	A,(NAME+0-SAVEBF+SAVEI2)
	LD	(NAMEBF+05),A
	CALL	SVOPEN	;(SV)
	LD	A,(NAME+1-SAVEBF+SAVEI2)
	LD	(NAMEBF+06),A
	CALL	SVOPEN	;(SV)
	LD	A,(NAME+2-SAVEBF+SAVEI2)
	LD	(NAMEBF+07),A
	CALL	SVOPEN	;(SV)
	LD	A,(NAME+3-SAVEBF+SAVEI2)
	LD	(NAMEBF+08),A
	CALL	SVOPEN	;(SV)
	LD	A,(NAME+4-SAVEBF+SAVEI2)
	LD	(NAMEBF+09),A
;
	CALL	SVOPEN	;(SV)
	LD	A,(HARTCT-SAVEBF+SAVEI2)
	LD	(HARTCTF+1),A
	CALL	SVOPEN	;(SV)
	LD	A,(HARTMX-SAVEBF+SAVEI2)
	LD	(HARTMXF+1),A
;
	CALL	SVOPEN	;(SV)
	LD	A,(DETHCT-SAVEBF+SAVEI2)
	LD	(DETHCTF+2),A
	CALL	SVOPEN	;(SV)
	LD	A,(DETHCT+1-SAVEBF+SAVEI2)
	LD	(DETHCTF+3),A
;--
	CALL	SVOPEN	;(SV)
	LD	A,(NAME+0-SAVEBF+SAVEI3)
	LD	(NAMEBF+$0A),A
	CALL	SVOPEN	;(SV)
	LD	A,(NAME+1-SAVEBF+SAVEI3)
	LD	(NAMEBF+$0B),A
	CALL	SVOPEN	;(SV)
	LD	A,(NAME+2-SAVEBF+SAVEI3)
	LD	(NAMEBF+$0C),A
	CALL	SVOPEN	;(SV)
	LD	A,(NAME+3-SAVEBF+SAVEI3)
	LD	(NAMEBF+$0D),A
	CALL	SVOPEN	;(SV)
	LD	A,(NAME+4-SAVEBF+SAVEI3)
	LD	(NAMEBF+$0E),A
;
	CALL	SVOPEN	;(SV)
	LD	A,(HARTCT-SAVEBF+SAVEI3)
	LD	(HARTCTF+2),A
	CALL	SVOPEN	;(SV)
	LD	A,(HARTMX-SAVEBF+SAVEI3)
	LD	(HARTMXF+2),A
;
	CALL	SVOPEN	;(SV)
	LD	A,(DETHCT-SAVEBF+SAVEI3)
	LD	(DETHCTF+4),A
	CALL	SVOPEN	;(SV)
	LD	A,(DETHCT+1-SAVEBF+SAVEI3)
	LD	(DETHCTF+5),A
;--
;
;;	XOR	A
;;	LD	(NMSLPT),A
;
	LD	A,PSLCT   ; Goto player select
	LD	(GMMODE),A
	XOR	A
	LD	(ITMODE),A
;
	XOR	A
	LD	(SCCV),A
	LD	(SCCH),A
;
DISPCL
	LD	A,%00000000	; パレット データ セット
	LD	(BGPFG),A
	LD	(OBP0FG),A
	LD	(OBP1FG),A
;
		LD	A,:DISPCL	; 戻りバンク
		call	AllWhiteSetSub	; CGB
;
TLM000
	RET
;===============================
ITITDT	; Inchiki test data	インチキ時のセットアイテムデータ
	DB	4		;盾
	DB	1		;剣
	DB	2		;バクダン
	DB	3		;パワーブレスレット
	DB	5		;弓
	DB	6		;フックショット
	DB	7		;ファイヤーロッド
	DB	8		;ペガサスの靴
	DB	9		;オカリナ
	DB	10		;ロック鳥の羽根
	DB	11		;スコップ
	DB	12		;魔法の粉
	DB	1		;アングラーの水かき
	DB	1		;復活薬
	DB	1		;交換アイテム(１～１４)
	DB	0		;貝殻
	DB	0		;？？？？？？？？？？？
	DB	1		;Ｌ－１の鍵
	DB	1		;Ｌ－２の鍵
	DB	1		;Ｌ－３の鍵
	DB	1		;Ｌ－４の鍵
	DB	0		;リチャードの葉っぱ
	DB	1,1,1,1,1
	DB	1,1,1,1,2
	DB	1,1,1,1,3
	DB	1,1,1,1,4
	DB	1,1,1,1,5
	DB	1,1,1,1,6
	DB	1,1,1,1,7
	DB	1,1,1,1,8
	DB	1,1,1,1,9
;;;11/11	DB	1,2,3,4,5,6,7,8,9,10,11,12
;;;11/11	DB	1,1,1,1,0
;;;11/11	DB	1,1,1,1,0
;;;11/11	DB	1,1,1,1,1
;;;11/11	DB	1,1,1,1,2
;;;11/11	DB	1,1,1,1,3
;;;11/11	DB	1,1,1,1,4
;;;11/11	DB	1,1,1,1,5
;;;11/11	DB	1,1,1,1,6
;;;11/11	DB	1,1,1,1,7
;;;11/11	DB	1,1,1,1,8
;;;11/11	DB	1,1,1,1,9
ITITDD
;
NAMESET
;- - Have item initial - - - -
;;	CALL	SVOPEN	;(SV)
;
	LD	DE,$0000
	CALL	SAVECK
	LD	DE,SAVED2-SAVEDT
	CALL	SAVECK
	LD	DE,SAVED3-SAVEDT
	CALL	SAVECK
;
	LD	A,(HIMITSU)
	AND	A
	JP	Z,NMSRET
;
	LD	E,$0
	LD	D,$0
;
	LD	BC,SAVEI1  ;ITEMB
PI3000
	LD	HL,ITITDT
	ADD	HL,DE
	LD	A,(HLI)
	LD	(BC),A
	INC	BC
	INC	E
	LD	A,E
	CP	ITITDD-ITITDT
	JR	NZ,PI3000
;
	LD	A,$01				;剣Ｌ－１
	LD	(KENLEV-SAVEBF+SAVEI1),A	;
	LD	A,$01				;盾Ｌ－１
	LD	(TATLEV-SAVEBF+SAVEI1),A	;
	LD	A,$02				;パワーブレスレット
	LD	(BULLEV-SAVEBF+SAVEI1),A	;	Ｌ－２
;
	LD	HL,WARPSV-SAVEBF+SAVEI1		;楽器
	LD	E,$9				;
	LD	A,%00000010			;
PI3011						;
	LD	(HLI),A				;
	DEC	E				;
	JR	NZ,PI3011			;
;
	LD	A,$60
	LD	(BOMBCT-SAVEBF+SAVEI1),A	;バクダン
	LD	(YAMAX-SAVEBF+SAVEI1),A		;	６０個
	LD	(BOMAX-SAVEBF+SAVEI1),A		;矢
	LD	(YAAACT-SAVEBF+SAVEI1),A	;	６０本
;
	LD	A,$40
	LD	(PWMAX-SAVEBF+SAVEI1),A		;魔法の粉
	LD	(TUBOCT-SAVEBF+SAVEI1),A	;	４０回分
;
	LD	A,$89
	LD	(RODCT-SAVEBF+SAVEI1),A
;;;11/11	LD	A,$00
		xor	a
	LD	(CLC20-SAVEBF+SAVEI1),A		;
	LD	A,%00000111			;覚えた３つの曲
	LD	(ONPUFG-SAVEBF+SAVEI1),A	;
;
	LD	A,$5				;５０９ルピー
	LD	(COINC1-SAVEBF+SAVEI1),A	;	ゲット!!!
	LD	A,$09				;
	LD	(COINC2-SAVEBF+SAVEI1),A	;
	LD	A,$01
	LD	(PAPA0FG-SAVEBF+SAVEI1),A
;
	LD	A,$50				;ハート
	LD	(HARTCT-SAVEBF+SAVEI1),A	;
	LD	A,$A				;
	LD	(HARTMX-SAVEBF+SAVEI1),A	;
;
		ld	a,(GMMODE)
		cp	003
		jr	z,NAME_PASS
	LD	A,$5B				;インチキ使用名前
	LD	(NAME+0-SAVEBF+SAVEI1),A	;
	LD	A,$46				;
	LD	(NAME+1-SAVEBF+SAVEI1),A	;
	LD	A,$4D				;
	LD	(NAME+2-SAVEBF+SAVEI1),A	;
	LD	A,$45				;
	LD	(NAME+3-SAVEBF+SAVEI1),A	;
	LD	A,$42				;
	LD	(NAME+4-SAVEBF+SAVEI1),A	;
NAME_PASS
;
;;;11/11	LD	A,$00				;死んだ回数
		xor	a
	LD	(DETHCT-SAVEBF+SAVEI1),A	;
	LD	(DETHCT+1-SAVEBF+SAVEI1),A	;
;
;;;11/11	LD	A,$0  ;$01
	LD	(WANFLG-SAVEBF+SAVEI1),A
	LD	(CONTBF+0-SAVEBF+SAVEI1),A
;
;;;11/11	LD	A,$00
	LD	(CONTBF+1-SAVEBF+SAVEI1),A
;
	LD	A,$92  ;D6 ;7F  ;$50		;いんちきスタート時の
	LD	(CONTBF+2-SAVEBF+SAVEI1),A	;	画面の位置
;
	LD	A,$48				;いんちきスタート時の
	LD	(CONTBF+3-SAVEBF+SAVEI1),A	;	プレイヤーの位置
	LD	A,$62				;
	LD	(CONTBF+4-SAVEBF+SAVEI1),A	;
;
	LD	HL,GRRMSV-SAVERM+SAVEB1
	LD	A,$80
	LD	E,$00
NS0090
	LD	(HLI),A
	DEC	E
	JR	NZ,NS0090
;
		ld	a,001
		ld	(DMAPFS),a
		ld	(KONPFS),a
		ld	(PENDFS),a
		ld	(BKEYFS),a
		ld	(SKEYFS),a
		ld	a,11111111b
		ld	(PHOTOFG),a
		ld	a,00001111b
		ld	(PHOTOFG+1),a
;
NMSRET
	RET
;
;====Save data check ==========================
SAVECK
	LD	C,$01
	LD	B,$05
;
	LD	HL,SAVED1
	ADD	HL,DE
SVCK10
	CALL	SVOPEN	;(SV)
	LD	A,(HLI)
	CP	C
	JR	NZ,SVCK20
;
	INC	C
	INC	C
	DEC	B
	JR	NZ,SVCK10	
;
	JR	SVCK50
SVCK20
	PUSH	DE
;
	LD	HL,SAVED1+5
	ADD	HL,DE
;;;11/11	LD	DE,$100+$200+$7F+$01
		ld	DE,$100+$200+$7F+$01+$05+$20+$01+$02
SVCK40
	CALL	SVOPEN	;(SV)
	XOR	A
	LD	(HLI),A
	DEC	DE
	LD	A,E
	OR	D
	JR	NZ,SVCK40
;
	POP	DE
	LD	HL,SAVED1
	ADD	HL,DE
	LD	A,$01
SVCK30
	CALL	SVOPEN	;(SV)
	LD	(HLI),A
	INC	A
	INC	A
	CP	$0B
	JR	C,SVCK30
SVCK50
	RET
;****************************************
;*      Player select                   *
;****************************************
PLSLCTS
	CALL	NAMECK
;
	LD	A,(ITMODE)
	RST	0
	DW	PSLINTE
	DW	PSLINTF
	DW	PSLINT01
	DW	PSLINT02
	DW	PSLINT03
	DW	PSLINT0
	DW	PSLINT1
	DW	PSLMAI0
	DW	PSLMAI1
	DW	PSLMAI2
;---------------------------------------
PSLINTE
	LD	A,BKCH2
	LD	(BLNKFG),A
;
	XOR	A
	LD	(NAMEOK),A
	JP	ITMINC
;---------------------------------------
PSLINTF
	LD	A,VRMBT
	LD	(BLNKFG),A
	JP	ITMINC
;---------------------------------------
;USDTH
;	DB	$98,$98,$98,$98,$99,$99,$99,$99
;USDTL
;	DB	$A7,$A8,$A9,$AA,$07,$08,$09,$0A
;
;---------------------------------------
PSLINT01
	CALL	HART1ST
	CALL	HART2ST
	JP	ITMINC
;---------------------------------------
PSLINT02
	CALL	HART3ST
	JP	ITMINC
;---------------------------------------
PSLINT03
ALLDETHST
	LD	A,(NAMEON)
	AND	%00000001
	JR	Z,DS0010
;
	LD	A,(DETHCTF+0)
	LD	H,A
	LD	A,(DETHCTF+1)
	LD	L,A
;
	LD	DE,$98E7
	CALL	DETHCST
DS0010
	LD	A,(NAMEON)
	AND	%00000010
	JR	Z,DS0020
;
	LD	A,(DETHCTF+2)
	LD	H,A
	LD	A,(DETHCTF+3)
	LD	L,A
;
	LD	DE,$9947
	CALL	DETHCST
;
DS0020
	LD	A,(NAMEON)
	AND	%00000100
	JR	Z,DS0030
;
	LD	A,(DETHCTF+4)
	LD	H,A
	LD	A,(DETHCTF+5)
	LD	L,A
;
	LD	DE,$99A7
	CALL	DETHCST
DS0030
	JP	ITMINC
	RET
;---------------------------------------
PSLINT0
	JP	ALLNMST
;
;- - - - - - - - - - - - - - - - - - - - - - - 
NAMEDP
;--- Moji set ---
	PUSH	DE
;
	LD	A,(VRAMD)
	LD	E,A
	LD	D,$0
	LD	HL,VRAMD+1
	ADD	HL,DE
	ADD	A,$10
	LD	(VRAMD),A
;
	LD	A,B
	LD	(HLI),A
	LD	A,C
	LD	(HLI),A
	LD	A,$04
	LD	(HLI),A
;
	POP	DE
	PUSH	DE
;
	LD	A,$05
NM1D08
	LD	(WORK0),A
;
	LD	A,(DE)
	AND	A
	LD	A,BETA  ;$DF
	JR	Z,NM1D0C	; Not word ?
;				; yes ! beta !
	LD	A,(DE)
	DEC	A
	PUSH	BC
	PUSH	HL
	LD	C,A
	LD	B,$00
	CALL	MSCHNOR
	POP	HL
	POP	BC
NM1D0C
	LD	(HLI),A
	INC	DE
	LD	A,(WORK0)
	DEC	A
	JR	NZ,NM1D08
;
	LD	A,B
	LD	(HLI),A
	LD	A,C
	SUB	$20
	LD	(HLI),A
	LD	A,$04
	LD	(HLI),A
;- - -Daketen set ---
	POP	DE
	LD	A,$05
NM1D18
	LD	(WORK0),A
;
	LD	A,(DE)
	AND	A
	JR	Z,NM1D19
	DEC	A
;;	AND	%11000000
	PUSH	HL
	PUSH	BC
;
	LD	C,A
	LD	B,$00
;;	LD	HL,MSCHN2
;;	ADD	HL,BC
;;	LD	A,(HL)
	CALL	MSCHN2R
;
	POP	BC
	POP	HL
	CP	$00
NM1D19
	LD	A,BETA   ;$DF
	JR	Z,NM1D1E
;
	LD	A,$C9
NM1D1E
	LD	(HLI),A
	INC	DE
	LD	A,(WORK0)
	DEC	A
	JR	NZ,NM1D18
;
	XOR	A
	LD	(HL),A
	RET
;
;---------------------------------------
PSLINT1
	LD	A,(STARTFG)
	AND	A
	JR	Z,PSLI110
;
	XOR	A
	LD	(STARTFG),A
;
	LD	A,$11
	LD	(SOUND4),A	;(S)
PSLI110
	LD	A,(NAMEON)
	AND	A
	LD	A,PSLBGS
	JR	Z,PSI110	; Already name reg. ?
;				; yes ! KILL MODE BG set !
	LD	A,PSLBG2
PSI110
	LD	(VRFLG),A
;
	LD	A,%11100100	; パレット データ セット
	LD	(BGPFG),A
	LD	A,%00011100	; パレット データ セット
	LD	(OBP0FG),A
	LD	A,%11100100	; パレット データ セット
	LD	(OBP1FG),A
;
		call	AllColorSetSub	;CGB
;
	JP	ITMINC
;---------------------------------------
FYOPDT
	DB	$3B,$53,$6B,$83
;---------------------------------------
PSLMAI0
	CALL	CURSDST	;(S)
;
	LD	A,(KEYA2)
	AND	%10010000
	JR	Z,PSLM10	; Start ?
;				; yes !
	JP	ITMINC
PSLM10
	LD	A,(KEYA2)
;;;	AND	$0C
		AND	%00001100
;;;11/11	AND	%01001100
	JR	Z,FOJA3
;
	LD	C,$02
	LD	A,(NAMEON)
	AND	A
	JR	Z,FOJA
;
	INC	C
FOJA
	LD	A,(KEYA2)
;;;11/11	BIT	6,A
;;;11/11	JR	NZ,FDOWN2
	BIT	2,A
	JR	NZ,FOUP
;
FDOWN2
	LD	A,(NMSLPT)
	ADD	A,$01
	INC	C
	CP	C
	JR	C,FOJA2
;
	XOR	A
	JR	FOJA2
;
FOUP
	LD	A,(NMSLPT)
	SUB	$01
	JR	NC,FOJA2
;
	LD	A,C
;
FOJA2
	LD	(NMSLPT),A
;
FOJA3
	LD	A,(NMSLPT)
	CP	$03
	JR	NZ,PSLM100
;
	LD	A,(KEYA2)
	AND	%00000011
	JR	Z,SL3020
;
	CALL	CURSDSS	;(S)
;
	LD	A,(NAMEOK)
	XOR	$01
	LD	(NAMEOK),A
SL3020
	LD	A,(FRCNT)
	AND	$10
	JR	NZ,PSLM100
;
	LD	A,(NAMEOK)
	AND	A
	LD	A,$2E
	JR	Z,SL3030
	LD	A,$68
SL3030	
	LD	HL,OAM+$08
	LD	(HL),$88
	INC	HL
	LD	(HLI),A
;
	LD	A,$BE
	LD	(HLI),A
;
	XOR	A
	LD	(HL),A
PSLM100
;===================================
FOAMSET
	LD	A,(NMSLPT)
	LD	E,A
	LD	D,$0
	LD	HL,FYOPDT
	ADD	HL,DE
;
	LD	A,(FRCNT)
	AND	%00001000
	JR	Z,FO0010
;
	LD	A,(HL)
	LD	HL,OAM
	PUSH	AF
	LD	(HLI),A
	LD	A,$18
	LD	(HLI),A
;
;;;11/11	LD	A,$00
		xor	a
	LD	(HLI),A
;
;;;11/11	LD	A,$00
	LD	(HLI),A
	POP	AF
	LD	(HLI),A
	LD	A,$20
	LD	(HLI),A
;
	LD	A,$02
	LD	(HLI),A
;
;;;11/11	LD	A,$00
		xor	a
	LD	(HL),A
;
	RET
;----------------------------------
FO0010
	LD	A,(HL)
	LD	HL,OAM
	PUSH	AF
	LD	(HLI),A
	LD	A,$18
	LD	(HLI),A
;
	LD	A,$02
	LD	(HLI),A
;
	LD	A,$20
	LD	(HLI),A
	POP	AF
	LD	(HLI),A
	LD	A,$20
	LD	(HLI),A
;
;;;11/11	LD	A,$00
		xor	a
	LD	(HLI),A
;
	LD	A,$20
	LD	(HL),A
;
	RET
;
;---------------------------------------
PSLMAI1
	LD	A,(NMSLPT)
	CP	$03
	JR	Z,PSM190	; Name kill ?
;
	LD	A,(NMSLPT)
	LD	E,A
	SLA	A
	SLA	A
	ADD	A,E
	LD	E,A
	LD	D,$00
	LD	C,$05
;;	LD	C,$04
	LD	HL,NAMEBF
	ADD	HL,DE
;
PS1008
	LD	A,(HLI)
	AND	A
	JR	NZ,PS100C
;
	DEC	C
	JR	NZ,PS1008	; Already Name in?
;				; NO ! goto touroku!
	XOR	A
	LD	(ITMODE),A
;
	LD	A,NMREG
	LD	(GMMODE),A
KETTEIS
;決定音セット
	LD	A,$13
	LD	(SOUND1),A	;(S)
	RET
PS100C
	CALL	KETTEIS	;(S)
;
	LD	A,%00000000	; パレット データ セット
	LD	(BGPFG),A
	LD	(OBP0FG),A
	LD	(OBP1FG),A
;
		LD	A,:POV3000	; 戻りバンク
		call	AllWhiteSetSub	;CGB ゲームスタートするためのホワイトセット
;
	LD	A,BKCH3
	LD	(BLNKFG),A	; BG bank revise !
;
	JP	ITMINC	; Goto game !!
PSM190
	XOR	A
	LD	(ITMODE),A
;
	LD	A,(NAMEOK)
	AND	A
	LD	A,NMCLR		; KILL
	JR	Z,PSM1A0
;
	LD	A,NMCPY		; COPY
PSM1A0
	LD	(GMMODE),A
	JP	KETTEIS		;(S)
;---------------------------------------
SVDTAD
	DW	SAVEI1
	DW	SAVEI2
	DW	SAVEI3
SVDTAD2
	DW	SAVEB1
	DW	SAVEB2
	DW	SAVEB3
SVDTAD3
	DW	SAVED1
	DW	SAVED2
	DW	SAVED3
;
PSLMAI2
	JP	GMSTART
;****************************************
;*      Name regi                       *
;****************************************
NMREGIS
	LD	A,(ITMODE)
	RST	0
	DW	NRF0000
	DW	NR00000
	DW	NR10000
;--------------------------------------
NRF0000
	CALL	ITMINC
;
	LD	A,VRMBT
	LD	(BLNKFG),A
;	
	XOR	A
	LD	(NRNMPT),A
	LD	(NRWDPT),A
	LD	(MRWDPT),A
	RET
;--------------------------------------
NR00000
	LD	A,NSLBGS
	LD	(VRFLG),A
;
	LD	HL,VRAMD+1
	LD	A,$98
	LD	(HLI),A
;;;11/11	LD	A,$48
		ld	a,049h		; (CGB) １キャラ右へ
	LD	(HLI),A
	XOR	A
	LD	(HLI),A
	LD	A,(NMSLPT)
	ADD	A,$AB
	LD	(HLI),A
	XOR	A
	LD	(HL),A
;
	JP	ITMINC
;
;ssssssssssssssssssssssssssssssssssssssssssssssss
;s	インチキデータ初期設定サブルーチン	s
;s			IN			s
;s			BC:オフセット		s
;s			 A:セット値		s
;ssssssssssssssssssssssssssssssssssssssssssssssss
DEBUG_SUB
		PUSH	HL
		ADD	HL,BC
		CALL	SVOPEN	;(SV)
		LD	(HL),A
		POP	HL
		RET
;
;ssssssssssssssssssssssssssssssssssssssssssssssssssssssss
;s	デバッグ名登録時の初期パラメータセット		s
;ssssssssssssssssssssssssssssssssssssssssssssssssssssssss
DEBUG_INIT_SET
		LD	BC,ITITDT
		LD	E,ITITDD-ITITDT
		PUSH	HL
DEBUG_LOOP
		CALL	SVOPEN	;(SV)
		LD	A,(BC)
		LD	(HLI),A
		INC	BC
		DEC	E
		LD	A,E
		AND	A
		JR	NZ,DEBUG_LOOP
		POP	HL
;
		LD	BC,KENLEV-SAVEBF	;剣Ｌ－１
		LD	A,$01			;
		CALL	DEBUG_SUB		;
;
		LD	BC,TATLEV-SAVEBF	;盾Ｌ－１
		CALL	DEBUG_SUB		;
;
		LD	BC,BULLEV-SAVEBF	;パワーブレスレット
		LD	A,$02			;	Ｌ－２
		CALL	DEBUG_SUB		;
;
		LD	BC,BOMBCT-SAVEBF	;バクダン
		LD	A,$59			;	５９個
		CALL	DEBUG_SUB		;
		LD	BC,BOMAX-SAVEBF		;
		CALL	DEBUG_SUB		;
;
		LD	BC,YAMAX-SAVEBF		;矢
		CALL	DEBUG_SUB		;	５９本
		LD	BC,YAAACT-SAVEBF	;
		CALL	DEBUG_SUB		;
;
		LD	BC,PWMAX-SAVEBF		;魔法の粉
		LD	A,$39			;	３９回分
		CALL	DEBUG_SUB		;
		LD	BC,TUBOCT-SAVEBF	;
		CALL	DEBUG_SUB		;
;
		RET
;
;--------------------------------------
NRNMAD
	DB	0,$5,$0A
;
NR10000		; Name registration main !
	LD	A,(NMSLPT)
	LD	E,A
	LD	D,$00
	LD	HL,NRNMAD
	ADD	HL,DE
	LD	E,(HL)
	LD	HL,NAMEBF
	ADD	HL,DE
		ld	e,l
		ld	d,h
;;;11/11	PUSH	HL
;;;11/11	POP	DE
;
;;;11/11	LD	BC,$9849
	LD	BC,$984A	; (CGB) １キャラ右へ
	CALL	NAMEDP
;
	LD	A,(KEYA2)
	AND	%10000000
	JR	Z,NMR010
;
NR1010
	CALL	KETTEIS	;(S)
;
	LD	A,(NMSLPT)
	SLA	A
	LD	E,A
	LD	D,$00
	LD	HL,SVDTAD
	ADD	HL,DE
	LD	A,(HLI)
	LD	H,(HL)
	LD	L,A
	PUSH	HL
	LD	DE,NAME-SAVEBF
	ADD	HL,DE
	PUSH	HL
;
	LD	A,(NMSLPT)
	LD	E,A
	SLA	A
	SLA	A
	ADD	A,E
	LD	E,A
	LD	D,$00
	LD	HL,NAMEBF
	ADD	HL,DE
;-----------------------------------
	LD	A,(HLI)
	CP	$4D
	JR	NZ,NMSD10
	LD	A,(HLI)
	CP	$50
	JR	NZ,NMSD10
	LD	A,(HLI)
	CP	$4D
	JR	NZ,NMSD10
	LD	A,(HLI)
	CP	$50
	JR	NZ,NMSD10
	LD	A,(HLI)
	CP	$00
	JR	NZ,NMSD10	;L O L O   ?
;				;YES !
		IF	DebugModeFlag
		POP	BC
		POP	HL
		PUSH	HL
		PUSH	BC
		PUSH	DE
		CALL	DEBUG_INIT_SET
		POP	DE
		ENDIF
;
	LD	A,$60
	LD	(SOUND4),A	;(S)
;
NMSD10
	LD	HL,NAMEBF
	ADD	HL,DE
	POP	BC
;
	LD	E,$05
NMS010
	CALL	SVOPEN	;(SV)
	LD	A,(HLI)
	LD	(BC),A
	INC	BC
	DEC	E
	JR	NZ,NMS010
;
	POP	HL			;
	PUSH	HL			;体力の初期値セット
	LD	DE,HARTCT-SAVEBF	;
	ADD	HL,DE			;
	LD	(HL),$18		;
;
	POP	HL			;
	PUSH	HL			;ハートの初期値セット
	LD	DE,HARTMX-SAVEBF	;
	ADD	HL,DE			;
	LD	(HL),$03		;
;
	POP	HL			;
	LD	DE,DETHCT-SAVEBF	;死亡カウンタークリア
	ADD	HL,DE			;
	XOR	A			;
	LD	(HLI),A			;
	LD	(HL),A			;
;
	JP	PSLGO	; Back to the player select mode !
;- - - - - - - - - - - - - - - - - - - - - - - -
NMR010
	CALL	NMRSUB
	CALL	NMRSUB2			;;;;;;;;;;;;;;;; BOMB
	RET
;-----------------------------------------------
CARYDT
	DB	$38,$38,$38,$38,$38,$38,$38,$38,$38,$38,$38,$38,$38,$38,$38,$38
	DB	$48,$48,$48,$48,$48,$48,$48,$48,$48,$48,$48,$48,$48,$48,$48,$48
	DB	$58,$58,$58,$58,$58,$58,$58,$58,$58,$58,$58,$58,$58,$58,$58,$58
	DB	$68,$68,$68,$68,$68,$68,$68,$68,$68,$68,$68,$68,$68,$68,$68,$68
;;	DB	$78,$78,$78,$78,$78,$78,$78,$78,$78,$78,$78,$78,$78,$78,$78,$78
;
CARXDT
	DB	$14,$1C,$24,$2C,$34,$3C,$44,$4C,$54,$5C,$64,$6C,$74,$7C,$84,$8C
	DB	$14,$1C,$24,$2C,$34,$3C,$44,$4C,$54,$5C,$64,$6C,$74,$7C,$84,$8C
	DB	$14,$1C,$24,$2C,$34,$3C,$44,$4C,$54,$5C,$64,$6C,$74,$7C,$84,$8C
	DB	$14,$1C,$24,$2C,$34,$3C,$44,$4C,$54,$5C,$64,$6C,$74,$7C,$84,$8C
;;	DB	$14,$1C,$24,$2C,$34,$3C,$44,$4C,$54,$5C,$64,$6C,$74,$7C,$84,$8C
;
C2XDT
	DB	$4C,$54,$5C,$64,$6C
;
NMZHYO
	DB	$42,$43,$44,$45,$46,$47,$48,0,0,$62,$63,$64,$65,$66,$67,$68
	DB	$49,$4A,$4B,$4C,$4D,$4E,$4F,0,0,$69,$6A,$6B,$6C,$6D,$6E,$6F
	DB	$50,$51,$52,$53,$54,$55,$56,0,0,$70,$71,$72,$73,$74,$75,$76
	DB	$57,$58,$59,$5A,$5B,000,000,0,0,$77,$78,$79,$7A,$7B,000,000
;
;	DB	$01,$06,$0B,$10,$15,$1A,$1F,$24,$27,$2C,$00,$86,$8B,$90,$9A,$5A
;	DB	$02,$07,$0C,$11,$16,$1B,$20,$25,$28,$2D,$00,$87,$8C,$91,$9B,$5B
;	DB	$03,$08,$0D,$12,$17,$1C,$21,$26,$29,$3F,$00,$88,$8D,$92,$9C,$5C
;	DB	$04,$09,$0E,$13,$18,$1D,$22,$2F,$2A,$30,$00,$89,$8E,$93,$9D,$5D
;	DB	$05,$0A,$0F,$14,$19,$1E,$23,$40,$2B,$2E,$00,$8A,$8F,$94,$9E,$5E
;
;SBHDT
;	DB	$0C,$9A,$1A,$27
;===============================================
NMRSUB
;
	LD	A,(KEYA2)
NMRS10
	LD	(WORK0),A
	LD	A,(WORK0)
	AND	$0C
	JR	NZ,UD
;
	LD	A,(WORK0)
	AND	$03
;;	JR	Z,TLMAIN ;;;;;;;;;COAMSET
	JR	NZ,LR ;;;;;;;;;COAMSET
;
	LD	A,(KEYA1)
	LD	HL,WDMVCT
	AND	$0F
	JR	NZ,NMRS20
;
	XOR	A
	LD	(HL),A
	JR	NMRS30
NMRS20
	LD	A,(HL)
	INC	A
	LD	(HL),A
	CP	$18
	JR	NZ,NMRS30
;
;;	LD	A,$15
	LD	(HL),$15 ;A
	LD	A,(KEYA1)
	JR	NMRS10
NMRS30
	JR	TLMAIN
;===============================
LR
	CALL	CURSDSS	;(S)
;
	BIT	1,A
	JR	NZ,CLEFT
;
	LD	A,(NRWDPT)
	ADD	A,$01
	CP	$40
	JR	C,LRMAIN
;
	XOR	A
	JR	LRMAIN
;
CLEFT
	LD	A,(NRWDPT)
	SUB	$01
	CP	$FF
	JR	NZ,LRMAIN
;
	LD	A,$3F
	JR 	LRMAIN
;------------------------------------
UD
	CALL	CURSDSS	;(S)
;
	BIT	2,A
	JR	Z,UE
;
	LD	A,(NRWDPT)
	SUB	$10
	JR	NC,LRMAIN
;
	ADD	A,$40
	JR	LRMAIN
;
UE
	LD	A,(NRWDPT)
	ADD	A,$10
	CP	$40
	JR	C,LRMAIN
;
	SUB	$40
LRMAIN
	LD	(NRWDPT),A
	JR	TL2MAIN
;
TLMAIN
;
;	LD	A,(FRCNT)
;	AND	%00010000
;	JR	Z,COMRET
;
TL2MAIN
	LD	A,(NRWDPT)
	LD	HL,CARXDT
	LD	C,A
	LD	B,$0
	ADD	HL,BC
	LD	E,(HL)
;
	LD	A,(NRWDPT)
	LD	HL,CARYDT
	LD	C,A
	LD	B,$0
	ADD	HL,BC
	LD	D,(HL)
;------------------------------------
COAMSET
	LD	HL,OAM
;
	LD	A,D
	ADD	A,$B
	LD	(HLI),A
;
	LD	A,E
	ADD	A,$4
	LD	(HLI),A
;
	LD	A,$E0
	LD	(HLI),A
;
	XOR	A
	LD	(HL),A
;
COMRET
	RET
;======================================
NMRSUB2
	LD	A,(KEYA2)		
	AND	$30
	JR	Z,T2MAIN
;
	BIT	5,A
	JR	NZ,BACKB
;
INCA
	CALL	KETTEIS	;(S)
	CALL	NMRSUB3
;
	LD	A,(MRWDPT)
	ADD	A,$01
	CP	$05
;;	CP	$04
	JR	C,ABMAIN
;
	LD	A,$04
;;	LD	A,$03
	JR	ABMAIN
;
;===================================
BACKB
	CALL	KETTEIS	;(S)
;
	LD	A,(MRWDPT)
	SUB	$01
	CP	$FF
	JR	NZ,ABMAIN
;
	XOR	A
ABMAIN
	LD	(MRWDPT),A
;
T2MAIN
	LD	A,(MRWDPT)
	LD	HL,C2XDT
	LD	C,A
	LD	B,$0
	ADD	HL,BC
	LD	E,(HL)
;
C2OSET
	LD	A,(FRCNT)
	AND	%00010000
	JR	Z,C2RET
;
	LD	HL,OAM+4
;
	LD	A,$18
	ADD	A,$B
	LD	(HLI),A
;
	LD	A,E
;;;11/11	ADD	A,$4
		add	a,004+008	; (CGB) １キャラ右へ
	LD	(HLI),A
;
	LD	A,$E0
	LD	(HLI),A
;
	XOR	A
	LD	(HL),A
;
C2RET
	RET
;======================================
NMRSUB3
	LD	A,(NRWDPT)
	LD	C,A
	LD	B,$00
	LD	HL,NMZHYO
	ADD	HL,BC
	LD	A,(HL)
	LD	E,A
;--serclet---
;	LD	A,(MRWDPT)
;	LD	C,A
;	LD	HL,SBHDT	
;	ADD	HL,BC
;	LD	E,(HL)
;--
	LD	A,(NMSLPT)
;;	RLCA
;;	RLCA
	LD	C,A
	SLA	A
	SLA	A
	ADD	A,C
	LD	C,A
	LD	HL,NAMEBF
	ADD	HL,BC
	LD	A,(MRWDPT)
	LD	C,A
	ADD	HL,BC
	LD	(HL),E
;
	RET	
;--------------------------------------
;NR20000
;	CALL	GMSTART
;	RET
;****************************************
;*      Name clear                      *
;****************************************
NMCLERS
	CALL	NAMECK
;
	LD	A,(ITMODE)
	RST	0
		dw	N_WhiteIn_BG
		dw	N_WhiteIn_OBJ
	DW	NC00000
	DW	NC10000
	DW	NC18000
	DW	NC18002
	DW	NC18003
	DW	NC18004
		dw	N_WhiteOut_BG
		dw	N_WhiteOut_OBJ
	DW	NC20000
	DW	NC30000
;--------------------------------------
N_WhiteIn_BG
		LD	A,(CGBFLG)
		AND	A
		JR	Z,N_White_PASS
		LD	A,:N_WhiteIn_BG	; 戻りバンク
		CALL	AllWhiteSetSub
		LD	A,BGCOL_BITFG
		LD	(CGDMAF),A
		JP	ITMINC
;--------------------------------------
N_WhiteIn_OBJ
		LD	A,(CGBFLG)
		AND	A
		JR	Z,N_White_PASS
		LD	A,OBJCOL_BITFG
		LD	(CGDMAF),A
		JP	ITMINC
;--------------------------------------
N_WhiteOut_BG
		LD	A,(CGBFLG)
		AND	A
		JR	Z,N_White_PASS
		CALL	AllColorSetSub
		LD	A,BGCOL_BITFG
		LD	(CGDMAF),A
		JP	ITMINC
;--------------------------------------
N_WhiteOut_OBJ
		LD	A,(CGBFLG)
		AND	A
		JR	Z,N_White_PASS
		LD	A,OBJCOL_BITFG
		LD	(CGDMAF),A
N_White_PASS
		JP	ITMINC
;--------------------------------------
NC00000
	LD	A,VRMBT
	LD	(BLNKFG),A
;
	XOR	A
	LD	(NMSLPT),A
	LD	(NAMEOK),A
	JP	ITMINC
;--------------------------------------
NC10000
	LD	A,NCLBGS
	LD	(VRFLG),A
	JP	ITMINC
;--------------------------------------
NC18000
ALLNMST
	CALL	NAME1ST
	CALL	NAME2ST
	CALL	NAME3ST
	JP	ITMINC
;--------------------------------------
NC18002
ALLHTST
	CALL	HART1ST
	CALL	HART2ST
	JP	ITMINC
;--------------------------------------
NC18003
	CALL	HART3ST
	JP	ITMINC
;--------------------------------------
NC18004
	JP	ALLDETHST
;-------------------------------------------
NAME1ST
	LD	BC,$98C5
	LD	DE,NAMEBF
	JP	NAMEDP
NAME2ST
	LD	BC,$9925
	LD	DE,NAMEBF+5
	JP	NAMEDP
NAME3ST
	LD	BC,$9985
	LD	DE,NAMEBF+$A
	JP	NAMEDP
;-------------------------------------------
HART1ST
	LD	A,(NAMEON)
	AND	%00000001
	JR	Z,HT1S90	; Name aru ?
;				; yes !
;;;11/11	LD	A,$00
		xor	a
	LD	(WORK4),A
;
	LD	A,(HARTCTF)
	LD	(WORK2),A
	LD	A,(HARTMXF)
	LD	(WORK3),A
	JP	NHARTIT
HT1S90
	RET
;-------------------------------------------
HART2ST
	LD	A,(NAMEON)
	AND	%00000010
	JR	Z,HT1S90
;
	LD	A,$01
	LD	(WORK4),A
;
	LD	A,(HARTCTF+1)
	LD	(WORK2),A
	LD	A,(HARTMXF+1)
	LD	(WORK3),A
	JP	NHARTIT
;-------------------------------------------
HART3ST
	LD	A,(NAMEON)
	AND	%00000100
	JR	Z,HT1S90
;
	LD	A,$02
	LD	(WORK4),A
;
	LD	A,(HARTCTF+2)
	LD	(WORK2),A
	LD	A,(HARTMXF+2)
	LD	(WORK3),A
	JP	NHARTIT
;-------------------------------------------
NMCLD1
	DB	$98,$A5,$44,$7E
	DB	$98,$C5,$44,$7E
;	DB	$98,$E7,$4A,$7E
;	DB	$00,$00,$00,$00
;
NMCLD2
	DB	$99,$05,$44,$7E
	DB	$99,$25,$44,$7E
;	DB	$99,$47,$4A,$7E
;	DB	$00,$00,$00,$00
;
NMCLD3
	DB	$99,$65,$44,$7E
	DB	$99,$85,$44,$7E
;	DB	$99,$A7,$4A,$7E
;	DB	$00,$00,$00,$00
;-----------------------------------------
NC20000
	CALL	CURSDST	;(S)
;
;	LD	A,(KEYA2)
;	AND	%10000000
;	JR	Z,NC2020
;;
;	JP	PSLGO
;NC2020
	LD	A,(KEYA2)
		AND	%00001000
;;;11/11	AND	%01001000
	JR	Z,NC2040
;
	LD	A,(NMSLPT)
	INC	A
	AND	$03
	LD	(NMSLPT),A
;
;	LD	A,(NMSLPT)
;	XOR	$1
;	LD	(NMSLPT),A
NC2040
	LD	A,(KEYA2)
	AND	%00000100
	JR	Z,NC2042
;
	LD	A,(NMSLPT)
	DEC	A
	CP	$FF
	JR	NZ,NC2041
	LD	A,$03
NC2041
	LD	(NMSLPT),A
NC2042
	LD	A,(KEYA2)
	AND	%10010000
	JR	Z,NC2050
;
	LD	A,(NMSLPT)
	CP	$03
	JR	NZ,NC2043
;
	JP	PSLGO
NC2043
	CALL	KETTEIS		;(S)
	CALL	ITMINC
	JR	OKSET
;====================================
QUITOKD
	DB	$99,$E3,$0E
	DB	$7E
	DB	$10,$14,$08,$13,$13,$04,$11,$7E,$7E,$7E,$0E,$0A
	DB	$3D,$7E
	DB	$00
;- - - - - - - - - - - - - - - -
OKSET
	LD	HL,VRAMD+1
	LD	DE,QUITOKD
	LD	C,$13
OKST10
	LD	A,(DE)
	INC	DE
	LD	(HLI),A
;
	DEC	C
	JR	NZ,OKST10
;	
	RET
;;	CALL	ITMINC
NC2050
	CALL	FOAMSET
	RET
;--------------------------------------
NC30000
	LD	A,(KEYA2)
	BIT	5,A
	JR	NZ,NC3001
;
	AND	%10010000
	JR	Z,NC3010
;
	LD	A,(NAMEOK)
	AND	A
	JP	Z,PSLGO ;NC3001	; CLEAR OK ?
;				; YES !
;	LD	A,(NMSLPT)
;	RLA
;	RLA
;	LD	E,A
;	LD	D,$00
;	LD	HL,NAMEBF
;	ADD	HL,DE
;	LD	C,$04
;	XOR	A
;NC30F0
;	LD	(HLI),A
;	DEC	C
;	JR	NZ,NC30F0
;- - - Save data clear - - - - -
	CALL	KETTEIS		;(S)
;
	LD	A,(NMSLPT)
	SLA	A
	LD	E,A
	LD	D,$00
	LD	HL,SVDTAD2
	ADD	HL,DE
	LD	A,(HLI)
	LD	H,(HL)
	LD	L,A
;
;;	CALL	SVOPEN	;(SV)
;
;;;11/11	LD	DE,$100+$200+$7F+$01
		ld	DE,$100+$200+$7F+$01+$05+$20+$01+$02
NC30F8
	CALL	SVOPEN	;(SV)
	XOR	A
	LD	(HLI),A
	DEC	DE
	LD	A,E
	OR	D
	JR	NZ,NC30F8
;
	JP	PSLGO
;------------------------------------------
NC3001			; Recover !
	CALL	NMRCVR
;
	CALL	OKCLEAR
NC300F
	LD	HL,ITMODE
	DEC	(HL)
	RET
;- - - - - - - - - - - - - - - -
;-----------------------------------------
OKCLDT
	DB	$99,$E4,$0D
	DB	$11,$04,$15,$04,$0D,$08,$11,$99,$AA,$AF
	DB	$0C,$04,$0D,$14
	DB	$00
;- - - - - - - - - - - - - - - - - - -
OKCLEAR
	LD	A,(VRAMD)
	LD	E,A
	ADD	A,$11
	LD	(VRAMD),A
	LD	D,$00
;
	LD	HL,VRAMD+1
	ADD	HL,DE
	LD	DE,OKCLDT
	LD	C,$12
OKCL10
	LD	A,(DE)
	INC	DE
	LD	(HLI),A
	DEC	C
	JR	NZ,OKCL10
;
	RET
;
NC3010
	CALL	OKOAMST
;
	CALL	FOAMSET
;
	LD	A,(FRCNT)
	AND	$10
	JR	Z,NC3008
;-----------------------------------
NMRCVR
	LD	A,(NMSLPT)
	RST	0
	DW	NAME1ST
	DW	NAME2ST
	DW	NAME3ST
;-----------------------------------
NC3008
	LD	A,(NMSLPT)
	RLA
	RLA
	RLA
;;	RLA
	AND	$F8
	LD	E,A
	LD	D,$0
	LD	HL,NMCLD1
	ADD	HL,DE
	LD	DE,VRAMD+1
	LD	C,$08
NC3090
	LD	A,(HLI)
	LD	(DE),A
	INC	DE
	DEC	C
	JR	NZ,NC3090
;
	XOR	A
	LD	(DE),A
	RET
;=========================================
OKOAMST
	LD	A,(KEYA2)
		AND	%00000011
;;;11/11	AND	%01000011
	JR	Z,NC3020
;
	CALL	CURSDSS	;(S)
;
	LD	A,(NAMEOK)
	XOR	$01
	LD	(NAMEOK),A
NC3020
	LD	A,(FRCNT)
	AND	$10
	JR	NZ,NC3038
;
	LD	A,(NAMEOK)
	LD	E,A
;
;	LD	A,(GMMODE)
;	CP	NMCPY
;	LD	A,$1C
;	JR	NZ,NC3028
;	LD	A,$14
;NC3028
	LD	A,$1E
	DEC	E
	JR	NZ,NC3030
	LD	A,$6D
NC3030	
	LD	HL,OAM+$0C
	LD	(HL),$88
	INC	HL
	LD	(HLI),A
;
	LD	A,$BE
	LD	(HLI),A
;
	XOR	A
	LD	(HL),A
NC3038
	RET	
;
;=============================================
DENODT
	DB	$B0,$B1,$B2,$B3,$B4,$B5,$B6,$B7,$B8,$B9
;
DETHCST
	PUSH	HL
;
	LD	A,(VRAMD)
	LD	C,A
	ADD	A,$06
	LD	(VRAMD),A
;
	LD	B,$00
	LD	HL,VRAMD+1
	ADD	HL,BC
	LD	A,D
	LD	(HLI),A
;
	LD	A,E
	LD	(HLI),A
;
	LD	A,$02
	LD	(HLI),A
;
	POP	BC
	PUSH	HL
;
	LD	A,C
	AND	$0F
	LD	E,A
	LD	D,$00
	LD	HL,DENODT
	ADD	HL,DE
	LD	A,(HL)
;
	POP	HL
;
	LD	(HLI),A
;
	PUSH	HL
;
	LD	A,B
	AND	$F0
	SWAP	A
	LD	E,A
	LD	D,$00
	LD	HL,DENODT
	ADD	HL,DE
	LD	A,(HL)
;
	POP	HL
;
	LD	(HLI),A
;
	PUSH	HL
;
	LD	A,B
	AND	$0F
	LD	E,A
	LD	D,$00
	LD	HL,DENODT
	ADD	HL,DE
	LD	A,(HL)
;
	POP	HL
;
	LD	(HLI),A
;
	XOR	A
	LD	(HL),A
;
	RET
;****************************************
;*      Name copy                       *
;****************************************
NMCOPYS
	LD	A,(ITMODE)
	RST	0
		dw	N_WhiteIn_BG
		dw	N_WhiteIn_OBJ
	DW	NCP0000
	DW	NCP1000
	DW	NCP2000
	DW	NCP2001
		dw	N_WhiteOut_BG
		dw	N_WhiteOut_OBJ
	DW	NCP3000
	DW	NCP4000
	DW	NCP5000
;===============================================
NCP0000
	LD	A,VRMBT
	LD	(BLNKFG),A
;
	XOR	A
	LD	(NMSLPT),A
	LD	(NAMEOK),A
	LD	(NMCPP1),A
	LD	(NMCPP2),A
;
	JP	ITMINC
;===============================================
NCP1000
	LD	A,NCPBGS
	LD	(VRFLG),A
	JP	ITMINC
;===============================================
NCP2000
	LD	BC,$98C4
	LD	DE,NAMEBF
	CALL	NAMEDP
	LD	BC,$9924
	LD	DE,NAMEBF+5
	CALL	NAMEDP
	LD	BC,$9984
	LD	DE,NAMEBF+$A
	CALL	NAMEDP
;
	JP	ITMINC
;===============================================
NCP2001
	LD	BC,$98CD
	LD	DE,NAMEBF
	CALL	NAMEDP
	LD	BC,$992D
	LD	DE,NAMEBF+5
	CALL	NAMEDP
	LD	BC,$998D
	LD	DE,NAMEBF+$A
	CALL	NAMEDP
;
	JP	ITMINC
;===============================================
NCP3000
	CALL	CURSDST	;(S)
;
	LD	A,(KEYA2)
		AND	%00001000
;;;11/11	AND	%01001000
	JR	Z,CP3040
;
	LD	A,(NMCPP1)
	INC	A
		jr	CP3041
;;;11/11	AND	$03
;;;11/11	LD	(NMCPP1),A
;
CP3040
	LD	A,(KEYA2)
	AND	%00000100
	JR	Z,CP3042
;
	LD	A,(NMCPP1)
	DEC	A
;;;11/11	CP	$FF
;;;11/11	JR	NZ,CP3041
;;;11/11	LD	A,$03
CP3041
		and	003
	LD	(NMCPP1),A
CP3042
;===================================
	LD	A,(KEYA2)
	AND	%10010000
	JR	Z,CP3080
;
	LD	A,(NMCPP1)
	CP	$03
	JP	Z,PSLGO
;
;--------------------------------------- ＣＧＢ版で追加プログラム
	LD	HL,NAMEBF+$000		;
	LD	B,$000			;なにも名前がないデータは、
	LD	A,(NMCPP1)		;コピーできないようにした。
	AND	A			;
	JR	Z,CP3070		;
	CP	$001			;
	JR	Z,CP3060		;
	LD	HL,NAMEBF+$00A		;
	JR	CP3070			;
CP3060					;
	LD	HL,NAMEBF+$005		;
CP3070					;
	XOR	A			;
	ADD	A,(HL)			;
	INC	HL			;
	ADD	A,(HL)			;
	INC	HL			;
	ADD	A,(HL)			;
	INC	HL			;
	ADD	A,(HL)			;
	INC	HL			;
	ADD	A,(HL)			;
	AND	A			;
	JR	Z,CP3080		;
;----------------------------------------------------------------
;
	CALL	ITMINC
	CALL	KETTEIS		;(S)
CP3080
;-----------------------------------------
FOAMSET2
	LD	A,(NMCPP1)
	LD	E,A
	LD	D,$0
	LD	HL,FYOPDT
	ADD	HL,DE
;
	LD	A,(FRCNT)
	AND	%00001000
	LD	A,(HL)
	LD	HL,OAM
FO2SUB
	JR	Z,FO2010
;
	PUSH	AF
	LD	(HLI),A
	LD	A,$10
	LD	(HLI),A
;
;;;11/11	LD	A,$00
		xor	a
	LD	(HLI),A
;
;;;11/11	LD	A,$00
	LD	(HLI),A
	POP	AF
	LD	(HLI),A
	LD	A,$18
	LD	(HLI),A
;
	LD	A,$02
	LD	(HLI),A
;
	LD	A,$00
	LD	(HL),A
;
	RET
;----------------------------------
FO2010
	PUSH	AF
	LD	(HLI),A
	LD	A,$10
	LD	(HLI),A
;
	LD	A,$02
	LD	(HLI),A
;
	LD	A,$20
	LD	(HLI),A
	POP	AF
	LD	(HLI),A
	LD	A,$18
	LD	(HLI),A
;
	LD	A,$00
	LD	(HLI),A
;
	LD	A,$20
	LD	(HL),A
	RET
;
;-----------------------------------------
FOAMSET2S
	LD	A,(NMCPP1)
	LD	E,A
	LD	D,$0
	LD	HL,FYOPDT
	ADD	HL,DE
;
	LD	A,(HL)
	LD	HL,OAM
	ADD	A,$05
	LD	(HLI),A
	LD	A,$14
	LD	(HLI),A
;
	LD	A,$BE
	LD	(HLI),A
;
	LD	A,$00
	LD	(HL),A
FO2S90
	RET
;===============================================
;-------------------------------------------
CPCLDT
	DB	$98,$A4,$44,$7E
	DB	$98,$C4,$44,$7E
;
	DB	$99,$04,$44,$7E
	DB	$99,$24,$44,$7E
;
	DB	$99,$64,$44,$7E
	DB	$99,$84,$44,$7E
;-------------------------------------------
CPCLD2
	DB	$98,$AD,$44,$7E
	DB	$98,$CD,$44,$7E
;
	DB	$99,$0D,$44,$7E
	DB	$99,$2D,$44,$7E
;
	DB	$99,$6D,$44,$7E
	DB	$99,$8D,$44,$7E
;-----------------------------------------
NCP4000
	CALL	CURSDST	;(S)
;
	LD	A,(KEYA2)
		AND	%00001000
;;;11/11	AND	%01001000
	JR	Z,CP4040
;
	LD	A,(NMCPP2)
	INC	A
	AND	$03
	LD	(NMCPP2),A
;
CP4040
	LD	A,(KEYA2)
	AND	%00000100
	JR	Z,CP4042
;
	LD	A,(NMCPP2)
	DEC	A
	CP	$FF
	JR	NZ,CP4041
	LD	A,$03
CP4041
	LD	(NMCPP2),A
CP4042
	CALL	FOAMSET2S
;===================================
	LD	A,(KEYA2)
	BIT	5,A
	JR	Z,CP4050
;	
	LD	HL,ITMODE
	DEC	(HL)
;
	JP	CPNMST
;- - - - - - - - - - - - - - - - -
CP4050
	AND	%10010000
	JR	Z,CP4080
;
	LD	A,(NMCPP2)
	CP	$03
	JP	Z,PSLGO
;
	CALL	KETTEIS		;(S)
	CALL	ITMINC
;
	JP	OKSET
CP4080
	CALL	FOAMSET21
;
NCPSUB
	LD	A,(FRCNT)
	AND	%00010000
	JR	Z,CP4090
;
	LD	A,(NMCPP1)
	RLA
	RLA
	RLA
	AND	$F8
	LD	E,A
	LD	D,$0
	LD	HL,CPCLDT
	ADD	HL,DE
	LD	DE,VRAMD+1
	LD	C,$08
CP4082
	LD	A,(HLI)
	LD	(DE),A
	INC	DE
	DEC	C
	JR	NZ,CP4082
;
	XOR	A
	LD	(DE),A
	RET
;- - - - - - - - - - - - - - - - -
CP4090
CPNMST
	LD	A,(NMCPP1)
	CP	$01
	JR	Z,CP4092
	CP	$02
	JR	Z,CP4093
;
	LD	BC,$98C4
	LD	DE,NAMEBF
	JP  	NAMEDP
;
CP4092
	LD	BC,$9924
	LD	DE,NAMEBF+5
	JP  	NAMEDP
;
CP4093
	LD	BC,$9984
	LD	DE,NAMEBF+$A
	JP  	NAMEDP
;
;========================================
FOAMSET21
	LD	A,(NMCPP2)
;
	LD	E,A
	LD	D,$0
	LD	HL,FYOPDT
	ADD	HL,DE
;
	LD	A,(NMCPP2)
	CP	$03
	JP	Z,FO2100
;
	LD	A,(FRCNT)
	AND	%00001000
	JR	Z,F21010
;
	LD	A,(HL)
	LD	HL,OAM+$08
	PUSH	AF
	LD	(HLI),A
	LD	A,$58
	LD	(HLI),A
;
	LD	A,$00
	LD	(HLI),A
;
	LD	A,$00
	LD	(HLI),A
	POP	AF
	LD	(HLI),A
	LD	A,$60
	LD	(HLI),A
;
	LD	A,$02
	LD	(HLI),A
;
	LD	A,$00
	LD	(HL),A
;
	RET
;----------------------------------
F21010
	LD	A,(HL)
	LD	HL,OAM+$08
	PUSH	AF
	LD	(HLI),A
	LD	A,$58
	LD	(HLI),A
;
	LD	A,$02
	LD	(HLI),A
;
	LD	A,$20
	LD	(HLI),A
	POP	AF
	LD	(HLI),A
	LD	A,$60
	LD	(HLI),A
;
	LD	A,$00
	LD	(HLI),A
;
	LD	A,$20
	LD	(HL),A
	RET
;---------------------------
FO2100
	LD	A,(FRCNT)
	AND	%00001000
	LD	A,(HL)
	LD	HL,OAM+$08
	JP	FO2SUB
;-----------------------------------------
FOAMSET21S
;	LD	A,(FRCNT)
;	AND	$10
;	JR	NZ,F21S90
;
	LD	A,(NMCPP2)
	LD	E,A
	LD	D,$0
	LD	HL,FYOPDT
	ADD	HL,DE
;
	LD	A,(HL)
	LD	HL,OAM+$08
	ADD	A,$05
	LD	(HLI),A
	LD	A,$5C
	LD	(HLI),A
;
	LD	A,$BE
	LD	(HLI),A
;
	LD	A,$00
	LD	(HL),A
F21S90
	RET
;-----------------------------------------
NCP5000
	CALL	FOAMSET2S
	CALL	FOAMSET21S
;
	CALL	OKOAMST
;
	LD	A,(KEYA2)
	AND	%10010000
	JR	Z,CP5010
;
	LD	A,(NAMEOK)
	AND	A
	JP	Z,PSLGO
;
	CALL	KETTEIS		;(S)
;
	LD	A,(NMCPP1)
	SLA	A
	LD	E,A
	LD	D,$00
	LD	HL,SVDTAD3
	ADD	HL,DE
	LD	C,(HL)
	INC	HL
	LD	B,(HL)	
	LD	A,(NMCPP2)
	SLA	A
	LD	E,A
	LD	D,$00
	LD	HL,SVDTAD3
	ADD	HL,DE
	LD	A,(HL)
	INC	HL
	LD	H,(HL)	
	LD	L,A
;
;;;11/11	LD	DE,$05+$100+$200+$7F+$01
		ld	DE,$05+$100+$200+$7F+$01+$05+$20+$01+$02
CPS001
;	LD	A,$0A
;	LD	($0000),A	;(SV)
;
	CALL	SVOPEN	; (SV)
	LD	A,(BC)
	INC	BC
	CALL	SVOPEN	; (SV)
	LD	(HLI),A
	DEC	DE
	LD	A,E
	OR	D
	JR	NZ,CPS001
;
;
	JP	PSLGO
;
;
CP5010
	LD	A,(KEYA2)
	BIT	5,A
	JR	Z,CP5050
;	
	LD	HL,ITMODE
	DEC	(HL)
;
	XOR	A
	LD	(NAMEOK),A
;
	CALL	OKCLEAR
;
	JP	CPNMST2
;- - - - - - - - - - - - - - - - -
CP5050
	CALL	NCPSUB
;
	LD	A,(FRCNT)
	AND	%00010000
	JR	Z,CP5090
;
	LD	A,(NMCPP2)
	RLA
	RLA
	RLA
	AND	$F8
	LD	E,A
	LD	D,$0
	LD	HL,CPCLD2
	ADD	HL,DE
	LD	DE,VRAMD+1+8
	LD	C,$08
CP5082
	LD	A,(HLI)
	LD	(DE),A
	INC	DE
	DEC	C
	JR	NZ,CP5082
;
	XOR	A
	LD	(DE),A
	RET
;- - - - - - - - - - - - - - - - -
CP5090
CPNMST2
	LD	A,(NMCPP2)
	CP	$01
	JR	Z,CP5092
	CP	$02
	JR	Z,CP5093
;
	LD	BC,$98CD
	LD	DE,NAMEBF
	JP  	NAMEDP
;
CP5092
	LD	BC,$992D
	LD	DE,NAMEBF+$5
	JP  	NAMEDP
;
CP5093
	LD	BC,$998D
	LD	DE,NAMEBF+$A
	JP  	NAMEDP
;===============================================
HARTSTD
	DB	$18,$18,$18
;;		  3   4   5   6   7   8   9  10  11  12  13  14
	DB	$18,$18,$18,$28,$28,$28,$28,$38,$38,$38,$38,$50
;- - - - - - - - - - - - - - - 
GMSTART
	XOR	A
	LD	(YKFLAG),A	; Yoko gamen flag reset
;
	LD	A,(HARTCT)
	AND	A
	JR	NZ,GMST01	; Game over ?
;				; yes !
	LD	A,(HARTMX)
	LD	E,A
	LD	D,$00
	LD	HL,HARTSTD
	ADD	HL,DE
	LD	A,(HL)
;
	LD	(HARTCT),A
GMST01
	LD	HL,SAVEFG
	LD	A,(HL)
	LD	(HL),$00
	AND	A
	JR	NZ,GMST010	; Load ok ?
;				; yes !
	LD	A,(NMSLPT)
	SLA	A
	LD	E,A
	LD	D,$00
	LD	HL,SVDTAD2
	ADD	HL,DE
	LD	C,(HL)
	INC	HL
	LD	B,(HL)	
;
	LD	HL,SAVERM
	LD	DE,$200+$100+$7F+1	; Game use data set !!
SVDS010
	CALL	SVOPEN	;(SV)
	LD	A,(BC)
	INC	BC
	LD	(HLI),A
	DEC	DE
;
	LD	A,E
	OR	D
	JR	NZ,SVDS010
;
		LD	HL,DMAPFS	;服のダンジョンの
		LD	DE,$05		;	アイテムＬＯＡＤ
SVDS015					;
		CALL	SVOPEN		;
		LD	A,(BC)		;
		INC	BC		;
		LD	(HLI),A		;
		DEC	DE		;
		LD	A,E		;
		OR	D		;
		JR	NZ,SVDS015	;
;
		LD	HL,NEWDJRM	;服のダンジョンの
		LD	DE,$20		;	部屋データＬＯＡＤ
SVDS018					;
		CALL	SVOPEN		;
		LD	A,(BC)		;
		INC	BC		;
		LD	(HLI),A		;
		DEC	DE		;
		LD	A,E		;
		OR	D		;
		JR	NZ,SVDS018	;
;
		CALL	SVOPEN		;服フラグデータＬＯＡＤ
		LD	A,(BC)		;
		LD	(CLOTHFG),A	;
;
		INC	BC		;どの写真を
		CALL	SVOPEN		;	撮ったかフラグＬＯＡＤ
		LD	A,(BC)		;
		LD	(PHOTOFG),A	;
		INC	BC		;
		CALL	SVOPEN		;
		LD	A,(BC)		;
		LD	(PHOTOFG+1),A	;
;
;---------------------------------------CGBデモ用
;;;kk;;;	LD	HL,SAVEBF+17		;Ｌ－１の鍵を
;;;kk;;;	LD	A,$001			;	初めから持つ
;;;kk;;;	LD	(HL),A			;
;---------------------------------------CGBデモ用
;
GMST010
	LD	A,GPLAY   ;GINIT
	LD	(GMMODE),A
	XOR	A
	LD	(ITMODE),A
;
GMSS10
	XOR	A
	LD	(PLMODE),A
	LD	(PLSTAT),A
	LD	(HARTUP),A
	LD	(HARTDW),A
	LD	(COINU2),A
	LD	(COINU1),A
	LD	(COIND2),A
	LD	(COIND1),A
;
	LD	A,(TAMA0PT)
	AND	A
	JR	NZ,GMSTRT90	;Level 7 テッキュウ位置セット！
;
	LD	A,$16
	LD	(TAMA0PT),A
;
	LD	A,$50
	LD	(TAMA0XP),A
	LD	A,$27
	LD	(TAMA0YP),A
;
GMSTRT90
	LD	A,(CONTBF+3)
	AND	A
	JR	Z,GMS0B0	; Continue ?
;				; yes !
	LD	(WPLXPSL),A
	LD	A,(CONTBF+4)
	LD	(WPLYPSL),A
	LD	A,(CONTBF+2)
	LD	(GRNDPT),A
	LD	(WGRNDPT),A
	LD	A,(CONTBF+1)
	LD	(DNJNNO),A
	LD	A,(CONTBF+5)
	LD	(DNJNPT),A
;
	XOR	A
	LD	(YKFLAG),A
;
		ld	a,003
		ld	(PLCMKI),A
;
	LD	A,(CONTBF+0)
	AND	$01
	LD	(DJFLAG),A
	JR	Z,GMS098
;
	LD	A,$04
	LD	(PLCHPT),A
	LD	A,$02
	LD	(PLCMKI),A
GMS098
	LD	A,WINDBGS
	LD	(VRFLG),A	; Window BG set 
	RET
;-----------------------------------
GMS0B0	;一番最初！
	LD	A,$30
	LD	(YAMAX),A
	LD	A,$30
	LD	(BOMAX),A
	LD	A,$20
	LD	(PWMAX),A
;
	LD	A,$A3  ;D6 ;7F  ;$50
	LD	(WGRNDPT),A
	LD	(GRNDPT),A
		ld	(GRNDPTW),a	;地上マップ表示用
	LD	A,$01 ;$01
	LD	(DJFLAG),A
;
	LD	A,$10 ;DJMAX ;$20
	LD	(DNJNNO),A
;
	LD	A,$50
	LD	(WPLXPSL),A
	LD	A,$60
	LD	(WPLYPSL),A
;
	XOR	A
	LD	(PLCHPT),A
	LD	A,$3
	LD	(PLCMKI),A
;
;	LD	A,(TAMA0PT)
;	AND	A
;	JR	NZ,GMSTRT90	;Level 7 テッキュウ位置セット！
;
	LD	A,$16
	LD	(TAMA0PT),A
;
	LD	A,$50
	LD	(TAMA0XP),A
	LD	A,$27
	LD	(TAMA0YP),A
;GMSTRT90
	JR	GMS098
;====================================
;====================================
;=     地下洞窟白地図出力命令群     =
;====================================
;
DMVH
	DB	$9D,$9D,$9D,$FF
	DB	$9D,$9D,$9D,$FF
	DB	$9D,$9D,$9C,$FF
	DB	$9D,$9D,$9C,$FF
;
DMVL
	DB	$32,$32,$09,$FF
	DB	$2E,$2E,$09,$FF
	DB	$8A,$32,$E9,$FF
	DB	$8A,$2E,$E9,$FF
;
DMSURYO
	DB	$C8,$C8,$00,$FF
	DB	$C8,$C8,$00,$FF
	DB	$48,$C8,$00,$FF
	DB	$48,$C8,$00,$FF
;
DMCHAR
	DB	$7F,$7F,$BA,$FF
	DB	$7F,$7F,$BA,$FF
	DB	$7F,$7F,$BA,$FF
	DB	$7F,$7F,$BA,$FF
;
;------------------------------------------------------------------
DDDHH	;階数表示座標Ｈｉｇｈ
	DB	$00,$00,$00,$FF
	DB	$00,$00,$00,$FF
;
	DB	$9D,$9D,$FF,$00
	DB	$9D,$9D,$9D,$FF
;
	DB	$9D,$9C,$FF,$00
	DB	$9D,$9C,$9C,$FF
;
	DB	$9D,$9D,$9C,$9C,$FF,$00,$00,$00,$00,$00,$00
	DB	$9D,$9D,$9C,$9C,$9C,$9C,$FF,$00,$00,$00,$00
	DB	$9D,$9D,$9C,$9C,$9D,$9D,$9C,$9C,$FF,$00,$00
	DB	$9D,$9D,$9C,$9C,$9D,$9D,$9C,$9C,$9C,$9C,$FF
;--------------------------------------------------------------------------------------
DDDLL	;階数表示座標Ｌｏｗ
	DB	$00,$00,$00,$FF
	DB	$00,$00,$00,$FF
;
	DB	$0D,$12,$FF,$00
	DB	$0D,$11,$12,$FF
;
	DB	$92,$F2,$FF,$00
	DB	$92,$F1,$F2,$FF
;
	DB	$8D,$92,$ED,$F2,$FF,$00,$00,$00,$00,$00,$00
	DB	$8D,$92,$ED,$F2,$F1,$F2,$FF,$00,$00,$00,$00
	DB	$8D,$92,$ED,$F2,$91,$92,$F1,$F2,$FF,$00,$00
	DB	$8D,$92,$ED,$F2,$91,$92,$EC,$ED,$F1,$F2,$FF
;--------------------------------------------------------------------------------------
DDDCC
	DB	$00,$00,$00,$FF
	DB	$00,$00,$00,$FF
;
	DB	$E8,$E9,$FF,$00
	DB	$E8,$EC,$B1,$FF
;
	DB	$E8,$E9,$FF,$00
	DB	$E8,$EC,$B1,$FF
;
	DB	$E8,$EA,$E9,$EB,$FF,$00,$00,$00,$00,$00,$00
	DB	$E8,$EA,$E9,$EB,$EC,$E8,$FF,$00,$00,$00,$00
	DB	$E8,$EA,$E9,$EB,$EC,$E8,$EC,$E9,$FF,$00,$00
	DB	$E8,$EA,$E9,$EB,$EC,$E8,$EC,$EA,$EC,$E9,$FF
;-------------------------------------------------------------------
;===================================================================
DLVH
	DB	$9D,$9C
;
DLVL
	DB	$0A,$EA
;
;DLVSU
;	DB	$B1,$B2,$B3,$B4,$B5,$B6,$B7,$B8,$B9
;===================================================================
;===================================================================
DMCLDT
DCD
	DB	$9C,$E9,$49,$7F
	DB	$9D,$09,$49,$7F
	DB	$9D,$29,$49,$7F
	DB	$9D,$49,$49,$7F
	DB	$9D,$69,$49,$7F
	DB	$9D,$89,$49,$7F
	DB	$9D,$A9,$49,$7F
	DB	$9D,$C9,$49,$7F
	DB	$9D,$E9,$49,$7F
	DB	$9E,$09,$49,$7F
	DB	$00
DCE
;--------------------------------------------
;===================================================================
;===================================================================
;===================================================================
DMAPSUB
	LD	HL,DMCLDT
	LD	DE,VRAMD2+1-1
	LD	C,DCE-DCD
DCS010
	LD	A,(HLI)
	INC	DE	
	LD	(DE),A
	DEC	C
	JR	NZ,DCS010
;
	PUSH	DE
;
	XOR	A
	LD	(WORK0),A
	LD	(WORK1),A
	LD	(WORK2),A
	LD	(WORK3),A
	LD	C,A
	LD	B,A
	LD	E,A
	LD	D,A
;
	LD	A,(DAMPFG)
	SWAP	A
	AND	$03
	LD	E,A
;
	AND	A
	JR	Z,DMVSET
;
DMHNDN
;
	LD	A,C
	ADD	A,$04		;;;;;;;;;;;;;;
	LD	C,A
	DEC	E
	LD	A,E
	AND	A
	JR	NZ,DMHNDN
;
	LD	B,$0
;
DMVSET
;
;;	LD	HL,VRAMD2+1
	POP	HL
;
DMVSET2
;
	PUSH	HL
;
	LD	HL,DMVH
	ADD	HL,BC
	LD	A,(HL)
	LD	(WORK0),A
;
	LD	HL,DMVL
	ADD	HL,BC
	LD	A,(HL)
	LD	(WORK1),A
;
	LD	HL,DMSURYO
	ADD	HL,BC
	LD	A,(HL)
	LD	(WORK2),A
;
	LD	HL,DMCHAR
	ADD	HL,BC
	LD	A,(HL)
	LD	(WORK3),A
;
	POP	HL
;
	CALL	DVRSET
;
	PUSH	HL
;
	LD	HL,DMVH
	INC	BC
	ADD	HL,BC
	LD	A,(HL)
;
	POP	HL
;
	INC	HL
;
	CP	$FF
	JR	NZ,DMVSET2
;
	XOR	A
	LD	(HL),A
DMEND
;=====================================
;=====================================
;=====================================
;=====================================
DFDSET
;
	XOR	A
	LD	(WORK0),A
	LD	(WORK1),A
	LD	(WORK2),A
	LD	(WORK3),A
	LD	C,A
	LD	B,A
	LD	E,A
	LD	D,A
;
	LD	A,(DAMPFG)
	SWAP	A
	AND	$03
	LD	E,A
;
	AND	A
	JR	Z,DFDEND
;
DFZLOP
	LD	B,$0
	LD	A,C
	ADD	A,$08
	LD	C,A
	DEC	E
	LD	A,E
	AND	A
	JR	NZ,DFZLOP
;
	LD	A,(DAMPFG)
	AND	$03
	JR	Z,DFMAIN
;
	LD	A,(DAMPFG)
	AND	$30
	CP	$30
	JR	Z,DF3SET
;
	LD	A,C
	ADD	A,$04
	LD	C,A
	LD	B,$0
	JR	DFMAIN
;
DF3SET
	LD	A,(DAMPFG)
	AND	$03
	LD	E,A
;
DF3LOP
;
	LD	B,$0
	LD	A,C
	ADD	A,$0B
	LD	C,A
	DEC	E
	LD	A,E
	AND	A
	JR	NZ,DF3LOP
;
DFMAIN
;
	PUSH	HL
;
	LD	HL,DDDHH
	ADD	HL,BC
	LD	A,(HL)
	LD	(WORK0),A
;
	LD	HL,DDDLL
	ADD	HL,BC
	LD	A,(HL)
	LD	(WORK1),A
;
	XOR	A
	LD	(WORK2),A
;
	LD	HL,DDDCC
	ADD	HL,BC
	LD	A,(HL)
	LD	(WORK3),A
;
	POP	HL
;
	CALL	DVRSET
;
	PUSH	HL
;
	LD	HL,DDDHH
	INC	BC
	ADD	HL,BC
	LD	A,(HL)
;
	POP	HL
;
	INC	HL
;
	CP	$FF
	JR	NZ,DFMAIN
;
;	XOR	A
;	LD	(HL),A
DFDEND
;	RET
;=====================================
;=====================================
DALVSET
	XOR	A
	LD	B,A
	LD	C,A
;
	LD	A,(DAMPFG)
	BIT	5,A
	JR	Z,DLVMAIN
;
	INC	BC
DLVMAIN
;
	PUSH	HL
;
	LD	HL,DLVH
	ADD	HL,BC
	LD	A,(HL)
	LD	(WORK0),A
;
	LD	HL,DLVL
	ADD	HL,BC
	LD	A,(HL)
	LD	(WORK1),A
;
	LD	A,$01
	LD	(WORK2),A
;
	LD	A,(DNJNNO)
	ADD	A,$B1
	LD	(WORK3),A
;
	POP	HL
;
	CALL	DVRSET
;
;;;11/11	PUSH	HL
;;;11/11;
;;;11/11	POP	HL
	INC	HL
;
	LD	A,$7F
	LD	(HLI),A
;
	XOR	A
	LD	(HL),A
DALEND
	RET
;=====================================
;=====================================
;=====================================
DVRSET
;
	LD	A,(WORK0)
	LD	(HLI),A
;
	LD	A,(WORK1)
	LD	(HLI),A
;
	LD	A,(WORK2)
	LD	(HLI),A
;
	LD	A,(WORK3)
	LD	(HL),A
;
	RET
;=====================================
;=====================================
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	大　地上マップ　ディスプレイ	  %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
GRMAPSB
	XOR	A
	LD	(ENOMID),A
;
		LD	A,(ITMODE)
		CP	$5		; 全体マップ表示中？
		JR	Z,GRMAPSB_100	; ＹＥＳ

		XOR	A
		LD	(KEYA1),A	; キークリア
		LD	(KEYA2),A	; キークリア

	LD	A,(ITMODE)
GRMAPSB_100
	RST	0
	DW	GRMIT00		; カラーデータの退避
	dw	GRMIT04		; ホワイトアウト待ち
	DW	GRMIT08		; 全体マップ書き込み
	DW	GRMIT0C		; 全体マップキャラクタ転送フラグセット
	DW	GRMIT10		; ホワイトイン待ち
	DW	GRMMAIN		; 全体マップ表示中
	DW	GRMMA00		; 
;=====================================
GRMIT00
		CALL	ITMINC
		LD	A,(CGBFLG)
		AND	A
		JR	Z,GRMIT00_0800
		LD	HL,CGWORK
		LD	C,$080
		DI			;割り込み禁止
		LD	A,$003
		LD	(SVBK),A
		LD	A,(COLBK3FG)
		AND	A
		JR	NZ,GRMIT00_0700
GRMIT00_0600
		XOR	A
		LD	(SVBK),A
		LD	B,(HL)
		LD	A,$003
		LD	(SVBK),A
		LD	(HL),B
		INC	HL
		DEC	C
		LD	A,C
		AND	A
		JR	NZ,GRMIT00_0600
		LD	A,$001
		LD	(COLBK3FG),A
GRMIT00_0700
		XOR	A
		LD	(SVBK),A
		EI			;割り込み許可
GRMIT00_0800
;
;=======================================================
;	ホワイトアウト待ち
;=======================================================
GRMIT04
	CALL	PLCSET
	CALL	ENEMYL1
;
	CALL	FDIN
;
	LD	A,(SBHR)
	CP	$4
	JR	NZ,GRMI02
;
	LD	A,$03
	LD	(SLEVEL),A
	LD	A,$30
	LD	(SLEVEL+1),A
;
	CALL	ITMINC
;
	XOR	A
	LD	(SBHR),A
	LD	(SBCNT),A
	LD	(SCCH),A
	LD	(SCXAD),A
	LD	(SCCV),A
	LD	(WNDFLG),A
;;;	LD	(ICONFG),A
	LD	(ICONTM),A
	LD	(ICONTM2),A
;
	LD	A,(GRNDPTW)
	LD	(GMAPPT),A
	LD	E,A
	LD	D,$00
	LD	HL,GRPOINT
	ADD	HL,DE
	LD	A,(HL)
	AND	A
	JR	Z,GRMI01
;
	SWAP	A
	AND	$07 ;3
	INC	A
	CP	$01
	JR	NZ,GRMI01	;ふくろう？
;				;YES !
	LD	A,(GMAPFG)
	AND	A
	LD	A,$00
	JR	NZ,GRMI01
;
	LD	HL,GRRMSV
	ADD	HL,DE
	LD	A,(HL)
	AND	%00100000
	LD	A,$00
	JR	Z,GRMI01	;１回でも話した？
;				;YES!
	LD	A,$01
GRMI01
	LD	(ICONFG),A	; Icon initial
;
	LD	A,(GMAPPT)
	LD	(WGMAPPT),A
;
	LD	A,(LCDC)
	AND	%11011111	; Window off !
	LD	(LCDCB),A
	LD	(LCDC),A
;
	CALL	SCRRCLR
;
	LD	A,GMAPBGS
	LD	(VRFLG),A	; Waku BG set
GRMI02
	RET
;=====================================
GRMIT08
	LD	A,GMBST
	LD	(BLNKFG),A	; Bank set
;
	CALL	ITMINC
	RET
;=====================================
GRMIT0C
	LD	A,GRCST
	LD	(BLNKFG),A	; Unit chr set !
;
		ld	a,001		; (CGB)フェードインフラグＯＮ
		ld	(FADEMDFG),a
;
	CALL	ITMINC
	RET
;=====================================
GRMIT10
	CALL	FDOUT
;
	LD	A,(SBHR)
	CP	$4
	JR	NZ,GRMI12
;
	CALL	ITMINC
;
	CALL	KETTEIS	;(S)
GRMI12
	RET
;=====================================
;- - - - - - - - - - - - - - - - - - - -
GRMMAIN

;■□■□■□■□■□■□■□■□■□■□■□■□■□■□■
;	必殺！いきなりエンディングへＧＯ！ DEBUG
;■□■□■□■□■□■□■□■□■□■□■□■□■□■□■

	ld	a,(HIMI2)
	and	a
	jr	z,GRMMAIN_100

		LD	A,(KEYA2)
		BIT	7,A
		JR	Z,GRMMAIN_100

		XOR	A
		LD	(ITMODE),A
		INC	A		; ENDG
		LD	(GMMODE),A
		RET
GRMMAIN_100
;■□■□■□■□■□■□■□■□■□■□■□■□■□■□■

	LD	A,(MSGEFG)
	AND	A
	JP	NZ,SQEED
;
	LD	A,(KEYA2)
	AND	$10
	JR	Z,SQEE
;
;;;;	LD	A,$56
	LD	A,(GMAPPT)
	LD	E,A
	LD	D,$00
	LD	HL,GRPOINT
	ADD	HL,DE
	LD	A,(HL)
	AND	A
	JR	Z,GRMM000
;
	LD	E,A
;
	AND	$F0
	JR	NZ,GAMS02	;ふくろう？
;				;YES !
	LD	A,(GMAPFG)
	AND	A
	JR	NZ,GRMM000
;
	PUSH	DE
	LD	A,(GMAPPT)
	LD	E,A
;
	LD	HL,GRRMSV
	ADD	HL,DE
	POP	DE
	LD	A,(HL)
	AND	%00100000
	JR	Z,GRMM000	;１回でも話した？	
;
GAMS02
	LD	D,$00
	LD	HL,GRMSDT
	ADD	HL,DE
	LD	A,(HL)
	JR	GRMSCK
;
GRMM000
	LD	A,(GMAPPT)
	CP	$24
	JR	Z,GAMS08
	CP	$34
	JR	NZ,GAMS10
GAMS08
	LD	A,$76
	JR	GRMSCK
GAMS10
	RRA
	AND	$07
	LD	E,A
	LD	A,(GMAPPT)
	RRA
	RRA
	AND	%00111000
	OR	E
	LD	E,A
	LD	D,$00
	LD	HL,GRAREA
	ADD	HL,DE
	LD	A,(HL)
;
;======================================
GRMSCK
	CALL	MSGCHK

		ld	a,(MSGENO)
		cp	0a7h
		jr	z,GRMSCK_050	; 電話ボックス　？
;					; No !!
		LD	A,(GMAPPT)
		CP	$37		; カメラ屋？
		JR	NZ,GRMSCK_100	; ＮＯ

GRMSCK_050
		LD	A,$01
		LD	(MSGENOH),A	; メッセージ１７Ｄ
GRMSCK_100
;
	LD	A,(GMAPPT)
	CP	$70
	LD	A,$01
	JR	NC,ERT
;
	LD	A,$81
ERT
	LD	(MSGEFG),A
	RET
;- - - - - - - - - - - - - - - -
SQEE
	LD	A,(HIMITSU)
	AND	A
	JR	Z,GRMM08
;
	LD	A,(KEYA1)
	CP	%01100000
	JR	NZ,GRMM08
;
	LD	A,GPLAY
	LD	(GMMODE),A
;
	CALL	NXGOTO
;
	LD	A,$00
	LD	(NXRMMD),A
	LD	(NXDJNO),A
	LD	A,(GMAPPT)
	LD	(NXRMNO),A
	LD	A,$48
	LD	(NXRMPX),A
	LD	A,$52
	LD	(NXRMPY),A
;
	LD	A,(PLXPSL)
	SWAP	A
	AND	$0F
	LD	E,A
	LD	A,(PLYPSL)
	SUB	$08
	AND	$F0
	OR	E
;;	LD	A,$44
	LD	(DRPSBF),A
;
	LD	A,GPMA
	LD	(ITMODE),A
;
	RET
GRMM08
	LD	E,%01000000
	LD	A,(HIMITSU)
	AND	A
	JR	NZ,GRMM09
;
	LD	E,%01100000
GRMM09
	LD	A,(KEYA2)
	AND	E
;;	AND	%01000000	;Select & B
;;	AND	%01100000	;Select & B
	JR	Z,GRMM10
;
	XOR	A
	LD	(SBHR),A
	LD	(SBCNT),A
;
		ld	a,001		; フェードインフラグＯＮ
		ld	(FADEMDFG),a
	CALL	ITMINC
GRMM10
SQEED
	CALL	GRMPST
	CALL	GRMCST
;
	CALL	ICONCS
	RET
;=====================================
TBGEND
	CALL	TBGCST 
;=====================================
TSV4000
GRMMA00
	CALL	FDIN
;
	LD	A,(SBHR)
	CP	$4
	JR	NZ,GRMA02
		LD	A,(CGBFLG)
		AND	A
		JR	Z,GRMMA00_D900
		LD	HL,CGWORK
		LD	C,$080
		DI			;割り込み禁止
GRMMA00_D700
		LD	A,$003
		LD	(SVBK),A
		LD	B,(HL)
		DEC	A
		LD	(SVBK),A
		LD	(HL),B
		INC	HL
		DEC	C
		LD	A,C
		AND	A
		JR	NZ,GRMMA00_D700
		LD	A,$003
		LD	(SVBK),A
		XOR	A
		LD	(COLBK3FG),A
		LD	(SVBK),A
		EI			;割り込み許可
GRMMA00_D900
;
		LD	A,$001		;フェードインフラグＯＮ
		LD	(FADEMDFG),A
;
;;	CALL	KETTEIS	;(S)
;
	XOR	A
	LD	(SHOPFG),A	; Shop BG initial !!
	LD	(ZZZFLG),A	;タリン ｚｚｚ セットフラグ
	LD	(SCCH),A
	LD	(SCCV),A
	LD	(ITEMNOT),A
;
	LD	A,$07
	LD	(SLEVEL),A
	LD	A,$70
	LD	(SLEVEL+1),A
;
	LD	A,GPLAY
	LD	(GMMODE),A
;
	LD	(BGMNOT),A
;
	LD	A,GPM
	LD	(ITMODE),A
;
	LD	A,(DJFLAG)
	AND	A
	LD	A,DJBST		; Bank set!
	JR	NZ,GRMA01	; Danjyon ?
;				; yes !
	LD	A,GRBST		; Bank set!
GRMA01
	LD	(BLNKFG),A
;
SCRRCLR
	LD	HL,SCRLFG	; Scroll base display reset !
	LD	E,$0
GRMA015
	XOR	A
	LD	(HLI),A
	INC	E
	LD	A,E
	CP	$C
	JR	NZ,GRMA015
;==================================
WINDIT
	LD	A,$80
	LD	(WNDYPS),A
;;;11/11	LD	A,$06
		LD	A,$07
	LD	(WDX),A		; Item window position initial 
;
	LD	A,$08
	LD	(WNDSPD),A	; Item window speed initial
;
	XOR	A
	LD	(WNDFLG),A
GRMA02
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	Player pos set			  %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
GRMPST
;	LD	A,(FRCNT)
;	AND	%00010000
;	JR	Z,GRMPS10
;;;	JR	NZ,GRMPS10
;
	LD	HL,OAM+$9C
;
	LD	A,(GRNDPTW)
	RRA
	AND	%01111000
	ADD	A,$18
	LD	(HLI),A
	LD	A,(GRNDPTW)
	SWAP	A
	RRA
	AND	%01111000
	ADD	A,$18
	LD	(HLI),A
;
	LD	(HL),$3E
	INC	HL
;
		LD	A,(CGBFLG)	;ヨーロッパ版で追加
		AND	A		;
		JR	Z,GRMPS10_PASS	;
		LD	A,$000		;
		LD	(HL),A		;
		LD	A,(FRCNT)	;
		AND	%00001000	;
		RET	Z		;
		LD	A,$003		;
		LD	(HL),A		;
		RET			;
GRMPS10_PASS				;
;
	LD	A,(FRCNT)
	RLA
;	RLA
;	RLA
	AND	%00010000
;
	LD	(HL),A ;$00
GRMPS10
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	Cursol set			  %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
GRAREA
;;        0   1   2   3   4   5   6   7 
     DB $6C,$6C,$6C,$6B,$6C,$6C,$6C,$6C ;0
     DB $76,$76,$79,$79,$79,$79,$79,$79 ;1
     DB $6A,$6A,$72,$7A,$78,$78,$71,$71 ;2
     DB $6A,$6A,$72,$70,$78,$78,$71,$71 ;3
     DB $6A,$6E,$69,$69,$69,$69,$77,$71 ;4
     DB $6E,$6E,$69,$69,$69,$69,$77,$77 ;5
     DB $7B,$7B,$6D,$62,$74,$74,$6F,$68 ;6
     DB $73,$73,$73,$74,$74,$74,$75,$68 ;7
;---------------------------------------------------
GRMSDT
;;  0   1   2   3   4   5   6   7   8   9   A   B   C   D   E   F
 DB 0,$D9,$C0,$C1,$C2,$C3,$C4,$C5,$C6,$C7,$C8,$C9,$CA,$CB,$CC,$CD ;0
 DB 0,$56,$57,$58,$59,$5A,$5B,$5C,$5D,$00,$00,$00,$00,$00,$00,$00 ;1
 DB 0,$7C,$67,$00,$00,$80,$65,$00,$64,$88,$7d,$00,$00,$00,$00,$00 ;2
;		 			   ↑ カメラ屋追加
 DB 0,$5E,$5F,$7F,$7E,$7D,$82,$84,$85,$86,$87,$81,$66,$83,$5E,$63 ;3
;;;CGB;;; DB 0,$61,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;4
 DB 0,$61,$7c,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;4
;	　↑ 釣り堀変更
GRPOINT
;;;   0x:FukurouMesege 1x:Danjyon 2x:Shop 3x:Nanka 4x:Nanka next
;;    0   1   2   3   4   5   6   7   8   9   A   B   C   D   E   F
 DB $00,$00,$00,$00,$00,$00,$3E,$00,$0E,$00,$39,$00,$00,$00,$17,$00 ;0
 DB $18,$3D,$00,$00,$00,$00,$06,$0C,$00,$00,$00,$00,$00,$00,$00,$00 ;1
 DB $00,$00,$00,$00,$12,$00,$00,$00,$07,$00,$00,$14,$00,$00,$00,$00 ;2
;;;11/11 DB $33,$3D,$00,$00,$00,$00,$05,$00,$00,$00,$00,$00,$00,$00,$00,$29 ;3
 DB $33,$3D,$00,$00,$00,$00,$05,$2a,$00,$00,$00,$00,$00,$00,$00,$29 ;3
;				↑ カメラ屋追加
 DB $00,$03,$00,$00,$00,$25,$00,$00,$00,$00,$00,$3D,$00,$00,$00,$00 ;4
 DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;5
 DB $00,$00,$00,$00,$0D,$22,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;6
 DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;7
;;;CGB;;; DB $02,$21,$3B,$36,$00,$00,$00,$00,$3D,$00,$37,$00,$16,$00,$00,$00 ;8
 DB $02,$42,$3B,$36,$00,$00,$00,$00,$3D,$00,$37,$00,$16,$00,$00,$00 ;8
;	↑ 釣り堀変更
 DB $00,$00,$00,$26,$00,$00,$00,$00,$00,$00,$00,$09,$0B,$09,$00,$00 ;9 
 DB $00,$35,$3C,$00,$3D,$00,$00,$00,$00,$00,$00,$00,$0A,$00,$00,$00 ;A 
 DB $3A,$34,$3D,$28,$00,$13,$07,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;B 
 DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;C 
 DB $00,$00,$04,$11,$00,$00,$38,$00,$00,$15,$00,$3D,$00,$00,$00,$00 ;D 
 DB $00,$00,$00,$41,$00,$00,$00,$00,$3D,$00,$00,$00,$00,$00,$08,$00 ;E 
 DB $00,$00,$01,$00,$00,$00,$3F,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;F 
;=====================================================
FKMSCKL
	LD	A,(GRNDPT)
	LD	E,A
	LD	D,$00
	LD	HL,GRPOINT 
	ADD	HL,DE
	LD	E,(HL)
	LD	HL,GRMSDT
	ADD	HL,DE
	LD	A,(HL)
	JP  	MSGCHK
;--------------------------------------------------------
GRCSXD
	DB	$00,$01,$FF
GRCSYD
	DB	$00,$F0,$10
;----------------------------------------------
GRMCST
	LD	A,(GMAPPT)
	LD	(WORK0),A
;
	LD	A,(ICONTM2)
	LD	HL,ICONTM
	OR	(HL)
	LD	HL,MSGEFG
	OR	(HL)
	JP	NZ,GRMC60
;
	LD	A,(KEYA1)
	LD	C,A
	LD	HL,WDMVCT
	AND	$0F
	JR	NZ,GRMC20
;
	XOR	A
	LD	(HL),A
	JR	GRMC30
GRMC20
	LD	A,(HL)
	INC	A
	LD	(HL),A
	CP	$18
	JR	NZ,GRMC30
;
;;	LD	A,$15
	LD	(HL),$15 ;A
	JR	GRMC50
GRMC30
	LD	A,(KEYA2)
	LD	C,A
GRMC50
	LD	A,C
	AND	%00000011
	LD	E,A
	LD	D,$0
	LD	HL,GRCSXD
	ADD	HL,DE
	LD	A,(GMAPPT)
	LD	D,A
	AND	$F0
	LD	E,A
	LD	A,D
	ADD	A,(HL)
	AND	$0F
	OR	E
	LD	(GMAPPT),A
;
	LD	A,C ;(KEYA2)
	RRA
	RRA
	AND	%00000011
	LD	E,A
	LD	D,$0
	LD	HL,GRCSYD
	ADD	HL,DE
	LD	A,(GMAPPT)
	ADD	A,(HL)
	LD	HL,WORK0
	LD	(GMAPPT),A
	CP	(HL)
	JR	Z,GRMC60	; Move ?
;				; yes !
	LD	E,A
	LD	D,$00
	LD	HL,GRRMSV
	ADD	HL,DE
;
	LD	A,(GMAPFG)
	AND	A
	JR	NZ,GRMC55
;
	LD	A,(HL)
	AND	%11111111
	JR	NZ,GRMC55	;既に行ったか？
;				;NO
	LD	A,(BGCKOF)
	AND	A
	JR	NZ,GRMC55
;
	LD	A,$09
	LD	(SOUND1),A	;(S)
;
	LD	A,(WORK0)
	LD	(GMAPPT),A
	JR	GRMC60
;
GRMC55
	CALL	CURSDSS	;(S)
;;	AND	$07
;;	CP	$03
;;	JR	NZ,GRMC58
;;	LD	E,A
;;	LD	D,$00
	LD	HL,GRPOINT
	ADD	HL,DE
	LD	A,(HL)
	AND	A
	JR	Z,GRMC58
;
	SWAP	A
	AND	$07 ;3
	INC	A
	LD	C,A
;
	CP	$01
	JR	NZ,GRMC53	;ふくろう？
;				;YES !
	LD	A,(GMAPFG)
	AND	A
	JR	NZ,GRMC58
;
	LD	HL,GRRMSV
	ADD	HL,DE
	LD	A,(HL)
	AND	%00100000
	JR	Z,GRMC58	;１回でも話した？
;				;YES!
GRMC53
	LD	A,(ICONFG)
	AND	A
	JR	NZ,GRMC56
;
	LD	A,$10
	LD	(ICONTM),A
GRMC56
	LD	A,C
	LD	(ICONFG),A
;
	LD	A,(GMAPPT)
	LD	(WGMAPPT),A
;
	JR	GRMC60
GRMC58
	LD	A,(ICONFG)
	AND	A
	JR	Z,GRMC60
;
	XOR	A
	LD	(ICONFG),A
;
	LD	A,$10
	LD	(ICONTM2),A
GRMC60
;- - - - C SET- - - - - -
	LD	HL,OAM+$80
;
	LD	A,(GMAPPT)
	RRA
	AND	%01111000
	ADD	A,$14
;;;	LD	(HLI),A
	LD	E,A
	LD	A,(GMAPPT)
	SWAP	A
	RRA
	AND	%01111000
	ADD	A,$14
;;;	LD	(HLI),A
	LD	D,A
;
;	LD	A,(FRCNT)
;	AND	%00010000
;	JR	NZ,GRMCS70
;
	LD	A,E
	LD	(HLI),A
	LD	A,D
	LD	(HLI),A
;
	LD	(HL),$F0
	INC	HL
;
	LD	(HL),$00
	INC	HL
;
	LD	A,E
	LD	(HLI),A
;
	LD	A,D
	ADD	A,$08
	LD	(HLI),A
;
	LD	(HL),$F0
	INC	HL
;
	LD	(HL),$20
GRMCS70
	LD	A,(FRCNT)
	AND	%00010000
	JR	NZ,GRMCS80
;
	LD	HL,OAM+$88
;
	LD	A,E
	ADD	A,$04
	LD	(HLI),A
	LD	A,D
	ADD	A,$F6
	LD	(HLI),A
	LD	A,$F6
	LD	(HLI),A
	LD	A,$00
	LD	(HLI),A
;
	LD	A,E
	ADD	A,$04
	LD	(HLI),A
	LD	A,D
	ADD	A,$13
	LD	(HLI),A
	LD	A,$F6
	LD	(HLI),A
	LD	A,$20
	LD	(HLI),A
;
	LD	A,E
	ADD	A,$F6
	LD	(HLI),A
	LD	A,D
	ADD	A,$04
	LD	(HLI),A
	LD	A,$F8
	LD	(HLI),A
	LD	A,$00
	LD	(HLI),A
;
	LD	A,E
	ADD	A,$0B
	LD	(HLI),A
	LD	A,D
	ADD	A,$04
	LD	(HLI),A
	LD	A,$F8
	LD	(HLI),A
	LD	A,$40
	LD	(HLI),A
GRMCS80
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	Icon  set			  %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ICONCD
;0
	DB	$F8,$F8,$F2,$04
	DB	$F8,$00,$F4,$04
	DB	$F8,$08,$F4,$24
	DB	$F8,$10,$F2,$24
	DB	$08,$F8,$F2,$44
	DB	$08,$00,$F4,$44
	DB	$08,$08,$F4,$64
	DB	$08,$10,$F2,$64
;1
	DB	$FA,$FA,$F2,$04
	DB	$FA,$02,$F4,$04
	DB	$FA,$06,$F4,$24
	DB	$FA,$0E,$F2,$24
	DB	$06,$FA,$F2,$44
	DB	$06,$02,$F4,$44
	DB	$06,$06,$F4,$64
	DB	$06,$0E,$F2,$64
;2
	DB	$FC,$FC,$F2,$04
	DB	$FC,$04,$F4,$04
	DB	$FC,$04,$F4,$24
	DB	$FC,$0C,$F2,$24
	DB	$04,$FC,$F2,$44
	DB	$04,$04,$F4,$44
	DB	$04,$04,$F4,$64
	DB	$04,$0C,$F2,$64
;3
	DB	$FE,$FE,$F2,$04
	DB	$FE,$04,$F4,$04
	DB	$FE,$04,$F4,$24
	DB	$FE,$0A,$F2,$24
	DB	$02,$FE,$F2,$44
	DB	$02,$04,$F4,$44
	DB	$02,$04,$F4,$64
	DB	$02,$0A,$F2,$64
ICONCD2
	DB	$20,$01,$22,$01		; ふくろう
	DB	$24,$06,$26,$06		; ダンジョン
	DB	$28,$07,$2A,$07		; ＳＨＯＰ
	DB	$2C,$05,$2E,$05		; ！？ なんか
	DB	$2C,$05,$2E,$05		; ！？ なんか２
;- - - - - - - - - - - - - - - - - -
ICCXDT
	DB	$28,$78
	DB	$28,$78
ICCYDT
	DB	$28,$28
	DB	$78,$78
;- - - - - - - - - - - - - - - - - -
ICONCS
	LD	A,(ENMOD0)
	PUSH	AF
	CALL	ICONCSS
	POP	AF
	LD	(ENMOD0),A
	RET
;=============================================
ICONCSS
	LD	A,(ICONTM2)
	AND	A
	JR	Z,ICC002	
;
	DEC	A
	LD	(ICONTM2),A
	CPL	
	JR	ICC0021
ICC002
	LD	A,(ICONTM)
	AND	A
	JR	Z,ICC003	
;
	DEC	A
	LD	(ICONTM),A
ICC0021
	RRA
	RRA
	AND	$03
	JR	ICC005
ICC003
	LD	A,(ICONFG)
	AND	A
	JP	Z,ICC0A0
;
	LD	A,$00
ICC005
	LD	(ICONWRK),A
	LD	(ENCHPT2),A
;
	LD	A,$00
	LD	(ENOMID),A
;
	LD	A,$08
	LD	(ENMOD0+00),A
;
	LD	A,$00
	LD	(INDEX),A
	LD	(ENFLCL),A
;
	LD	E,$00
	LD	A,(WGMAPPT)
	CP	$70
	JR	C,ICC010
	LD	E,$02
ICC010
	AND	$0F
	CP	$08
	JR	NC,ICC020
	INC	E
ICC020
	LD	D,$00
	LD	HL,ICCXDT
	ADD	HL,DE
	LD	A,(HL)
	LD	(ENSVXL),A
	LD	HL,ICCYDT
	ADD	HL,DE
	LD	A,(HL)
	LD	(ENDSYP),A
;
	LD	A,(ICONWRK)
	RLA
	RLA
	RLA
	RLA
	RLA
	AND	%11100000
	LD	E,A
	LD	D,$00
;
	LD	HL,ICONCD
	ADD	HL,DE
;
	LD	A,$08
	LD	(ENOMID),A
;
	XOR	A
	LD	(ENCHNO),A
	LD	C,$08
	CALL	ENOMST
;
	LD	A,(ICONWRK)
	CP	$00
	JR	NZ,ICC0A0
;
	LD	A,(ICONFG)
	DEC	A
	CP	$80
	JR	NC,ICC0A0
	LD	(ENCHPT2),A
;
;;	LD	DE,ICONCD2
;;;
;;	PUSH	DE	; Chr data addr push !
;
	LD	DE,ENOAM+$00
;
	LD	A,(ENDSYP)  ;(HL)
	LD	(DE),A		; Y L
	INC	DE
;
	LD	A,(ENSVXL)
	LD	(DE),A		; X L
	INC	DE
;
	LD	A,(ENCHPT2)  ;HL)
	LD	C,A
	LD	B,$0
	SLA	C
	RL	B
	SLA	C
	RL	B
;;	POP	HL	; Chrs data addr. !
	LD	HL,ICONCD2
	ADD	HL,BC
	LD	A,(HLI)
	LD	(DE),A		; C L
	INC	DE
	LD	A,(HLI)
;
	LD	(DE),A		; A L
	INC	DE
;- - Right - - - 
	LD	A,(ENDSYP)   ;(HL)
	LD	(DE),A		; Y R
	INC	DE
;
	LD	A,(ENSVXL)   ;$08  ;10
	ADD	A,$08
	LD	(DE),A		; X R
	INC	DE
;
	LD	A,(HLI)
	LD	(DE),A		; C R
	INC	DE
;
	LD	A,(HL)
	LD	(DE),A		; A R
ICC0A0
	RET
;
;
;=====================================
;=======================================
NHARTVD
	DB	$98,$CB,$06
	DB	$7E,$7E,$7E,$7E,$7E,$7E,$7E
	DB	$98,$EB,$06
	DB	$7E,$7E,$7E,$7E,$7E,$7E,$7E
	DB	$00
NHARTVD2
	DB	$99,$2B,$06
	DB	$7E,$7E,$7E,$7E,$7E,$7E,$7E
	DB	$99,$4B,$06
	DB	$7E,$7E,$7E,$7E,$7E,$7E,$7E
	DB	$00
NHARTVD3
	DB	$99,$8B,$06
	DB	$7E,$7E,$7E,$7E,$7E,$7E,$7E
	DB	$99,$AB,$06
	DB	$7E,$7E,$7E,$7E,$7E,$7E,$7E
	DB	$00
;
;-------------------------------------
NHARTIT			; For initial set
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
	LD	BC,NHARTVD
	LD	A,(WORK4)
	AND	A
	JR	Z,NHTI008
;
	LD	BC,NHARTVD2
	CP	$01
	JR	Z,NHTI008
;
	LD	BC,NHARTVD3
NHTI008
	LD	E,$15
;
NHTI010
	LD	A,(BC)
	INC	BC
	LD	(HLI),A
	DEC	E
	JR	NZ,NHTI010
;
	POP	DE
	LD	HL,VRAMD+4
	ADD	HL,DE
;
	LD	C,$00
;
	LD	A,(WORK2)  ;HARTCT)
	AND	A
	JR	Z,NHTI080
;
	LD	(WORK0),A
;
NQWQW
	LD	A,(WORK0)
	SUB	$8
	LD	(WORK0),A
	JR	C,NSSSS
;
	LD	A,$AE
;;	LD	A,$A9
	LD	(HLI),A
;
	INC	C
	LD	A,C
	CP	$07
	JR	NZ,NEEE
;
	LD	A,L
	ADD	A,$3
	LD	L,A
NEEE
	JR	NQWQW
;
NSSSS
	ADD	A,$8
	JR	Z,NHTI080	; Hasuu ?
;				; yes ! harf !
	LD	A,$AE   ;CE
	LD	(HLI),A
	JR	NHTI088 ;INC	C
NHTI080
;
	LD	A,(WORK3)  ;HARTMX)
	CP	C
	JR	Z,NHTI090
;
	LD	A,$AE   ;CD
	LD	(HLI),A
NHTI088
	INC	C
	LD	A,C
	CP	$07
	JR	NZ,NHTI08A
;
	LD	A,L
	ADD	A,$3
	LD	L,A
NHTI08A
	JR	NHTI080
NHTI090
	RET
;==============================================
NAMECK
	XOR	A
	LD	DE,NAMEON
	LD	(DE),A
;
	LD	B,%00000001
;
	LD	C,$00
	LD	HL,NAMEBF
NCK010
	LD	A,(HLI)
	AND	A
	JR	Z,SSTS
;
	LD	A,(DE)	
	OR	B
	LD	(DE),A
;
SSTS
	INC	C
	LD	A,C
	CP	$05
;;	CP	$04
	JR	NZ,WTWW
;
	LD	B,%00000010
WTWW
	CP	$0A
;;	CP	$08
	JR	NZ,RWWW
;
	LD	B,%00000100
RWWW
	CP	$0F
;;	CP	$0C
	JR	NZ,NCK010
;
	RET
;=====================================
DTSAVE
	LD	A,(HARTCT)
	AND	A
	JR	NZ,DTSAVE2
;
	LD	A,(HARTMX)
	LD	E,A
	LD	D,$00
	LD	HL,HARTSTD
	ADD	HL,DE
	LD	A,(HL)
	LD	(HARTCT),A
;
DTSAVE2
	CALL	DJITRV
;
	LD	A,(NMSLPT)
	SLA	A
	LD	E,A
	LD	D,$00
	LD	HL,SVDTAD2
	ADD	HL,DE
	LD	A,(HLI)
	LD	H,(HL)
	LD	L,A
;
	LD	BC,SAVERM
;
	LD	DE,$200+$100+$7F+$01
DTS010
	CALL	SVOPEN	;(SV)
	LD	A,(BC)
	INC	BC
	CALL	SVOPEN	;(SV)
	LD	(HLI),A
	DEC	DE
	LD	A,E
	OR	D
	JR	NZ,DTS010
;
		LD	BC,DMAPFS	;服のダンジョン
		LD	DE,$05		;	アイテムＳＡＶＥ
DTS015					;
		CALL	SVOPEN		;
		LD	A,(BC)		;
		INC	BC		;
		CALL	SVOPEN		;
		LD	(HLI),A		;
		DEC	DE		;
		LD	A,E		;
		OR	D		;
		JR	NZ,DTS015	;
;
		LD	BC,NEWDJRM	;服のダンジョン
		LD	DE,$20		;	部屋データＳＡＶＥ
DTS018					;
		CALL	SVOPEN		;
		LD	A,(BC)		;
		INC	BC		;
		CALL	SVOPEN		;
		LD	(HLI),A		;
		DEC	DE		;
		LD	A,E		;
		OR	D		;
		JR	NZ,DTS018	;
;
		CALL	SVOPEN		;服フラグデータＳＡＶＥ
		LD	A,(CLOTHFG)	;
		CALL	SVOPEN		;
		LD	(HLI),A		;
;
		CALL	SVOPEN		;どの写真を
		LD	A,(PHOTOFG)	;	撮ったかフラグＳＡＶＥ
		CALL	SVOPEN		;
		LD	(HLI),A		;
		CALL	SVOPEN		;
		LD	A,(PHOTOFG+1)	;
		CALL	SVOPEN		;
		LD	(HLI),A		;
;
	RET
;==================================
DJITRS
	PUSH	BC
;
	LD	A,(DJFLAG)
	AND	A
	JR	Z,DTS00A
;
	LD	A,(DNJNNO)
;
		CP	NEWDJ		;新ダンジョン？
		JR	NZ,DTS008_PASS	;	NO --> DTS008_PASS
		LD	HL,DMAPFS
		JR	DTS008_SET
DTS008_PASS
;
	CP	DJMAX ;$20
	JR	NC,DTS00A
		ld	hl,DMAPF1
DTS005
	LD	E,A
	SLA	A
	SLA	A
	ADD	A,E
	LD	E,A
	LD	D,$00
;;;11/11	LD	HL,DMAPF1
	ADD	HL,DE
;
DTS008_SET
	LD	DE,DMAPF
;
	LD	C,$05
DTS008 
	LD	A,(DE)
	INC	DE
	LD	(HLI),A
	DEC	C
	JR	NZ,DTS008 
;
DTS00A
	POP	BC
	RET
;=====================================
; Enemy data set sub sub
;======================================
ENRVXL
	DB	$A0,$60,$00,$00,0
ENRVXH
	DB	$00,$FF,$00,$00,0
ENRVYL
	DB	$00,$00,$80,$80,0
ENRVYH
	DB	$00,$00,$FF,$00,0
;- - - - - - - - - - - - - - - -
ENISSUB
	LD	HL,ENJYUN
	ADD	HL,DE
	LD	A,(WORKD)
	LD	(HL),A
	INC	A
	LD	(WORKD),A
;--------
	PUSH	BC
;
	LD	A,(SCRLMK)
	LD	C,A
	LD	B,$0
;
	LD	HL,ENRVXL
	ADD	HL,BC
	LD	A,(HL)
	LD	(WORK0),A
	LD	HL,ENRVXH
	ADD	HL,BC
	LD	A,(HL)
	LD	(WORK1),A
;
	LD	HL,ENRVYL
	ADD	HL,BC
	LD	A,(HL)
	LD	(WORK2),A
	LD	HL,ENRVYH
	ADD	HL,BC
	LD	A,(HL)
	LD	(WORK3),A
;
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	A,(WORK0)
	ADD	A,(HL)
	LD	(HL),A
;
	RR	C	; PUSH C
;
	LD	HL,ENXPSH
	ADD	HL,DE
	LD	A,(WORK1)
	RL	C	; POP C
	ADC	A,(HL)
	LD	(HL),A
;
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	A,(WORK2)
	ADD	A,(HL)
	LD	(HL),A
;
	RR	C	; PUSH C
;
	LD	HL,ENYPSH
	ADD	HL,DE
	LD	A,(WORK3)
	RL	C	; POP C
	ADC	A,(HL)
	LD	(HL),A
;
	POP	BC
	RET
;====Enemy data 6 rooms go bit clear check==========
ENBTCK
	LD	C,$06
	LD	A,(GRNDPT)
	LD	HL,ENONBF
EDS001
	CP	(HL)
	JR	Z,EDS002
	INC	HL
	DEC	C
	JR	NZ,EDS001
;
	LD	A,(ENONCT)
	INC	A
	CP	$06
	JR	NZ,EDS000
;
	XOR	A
EDS000
	LD	(ENONCT),A
;
;;;	LD	A,(ENONCT)
	LD	E,A
	LD	D,$00
	LD	HL,ENONBF
	ADD	HL,DE
	LD	E,(HL)
	LD	A,(GRNDPT)
	LD	(HL),A
	LD	HL,ENONOF
	ADD	HL,DE
	LD	(HL),$00
EDS002
	RET
;=====================================
;=====================================================
	END
;
