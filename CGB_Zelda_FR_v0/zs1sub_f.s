;;   おフランス 
;
;
;
		onbankgroup
;
;************************************************************************
;*									*
;*	タイトル    ：	ゼルダの伝説 ＤＸ				*
;*	ファイル名  ：	ZS1SUB.S					*
;*	処理内容    ：	オープニング処理				*
;*	作成日付    ：  １９９８／１０／２０				*
;*									*
;************************************************************************

;============== バンク０ ================================================
BANK0		GROUP	0
		EXTERN	DATA_MOV,ENEMY,RAMCLR,RAMCL2,BGDTST,ENDTST,RNDSUB
		EXTERN	MSGCHK,ENIDSHL,OBJBG,FDIN,FDOUT,NXGOTO,ENEMYL,SVOPEN
		EXTERN	GKCHRV,COHTITL,ITEMDPL,RAMCL3,BGBKST,SOUNDCLR,DJITRV
		EXTERN	ENOMST,EN2CST,LDTIM0,NXOMSBL,BBSDST,ENPTST,STATINC
		EXTERN	SOUNDOUT,BGMON,MSGCH2,DATA_MOV2,PLSDCL,PLPTSTL,NXGOTO4
		EXTERN	LDTIM1,LDTIM3,ENOMST2,VRMCL,VRMBT,BKCH2,BKCH3,WINDBGS
		EXTERN	RBGST,ECACH,EMOVE,EFAIL,PSLBGS,GPLAY,GVCHG,GOVBG,PMOVE
		EXTERN	PSLBG2,NSLBGS,NMREG,NMCLR,NCLBGS,PSLCT,GMAPBGS,VRMB2
		EXTERN	OPBGS,PINDR2,DJBST,GRBST,GMBST,BLVRDS,GMAPCL,BNKTR
		EXTERN	NMCPY,SPTST,BKCHG,TLCHG,ODCHG,GPMAIN,NCPBGS,GRCST,TSVBG
		EXTERN	PINDR1,OPBST,OPBG2,OPBG3,OPBS2,EINIT,LOGOS,PECBG,PECCD
		EXTERN	LOVBG,LOVCD,ENDG,KB1BG,KB1CD,HIMITSU2,KABBG,KABCD,GMAP
		EXTERN	HIMITSU,TOUBG,TOUCD
		EXTERN	OpenWhiteOutSub,OpenWhiteInSub,OpenFlashSub
		EXTERN	OPBGS_CGB,AllWhiteSetSub
;
		EXTERN	JSL_CALL,VRST80
;
;============== バンク１ ================================================
BANK1		GROUP	1
;-------------<	ZTI >-------------
		EXTERN	ITMINC,PSLCTGO,TSV4000,SCRRCLR,TBGEND
;
;-------------<	ZS1SUB >----------
		EXTERN	GMRESET
;
;============== バンク２ ================================================
BANK2		GROUP	2
		EXTERN	EXSTRA,COINIT,HARTIT,ITEMDP,WINDOW,ITEMDP2
;
;============== バンク３ ================================================
BANK3		GROUP	3
		EXTERN	ENCAPS,BOMBR,BUMER,KTOBJ,PYAAA,GIRL1,WANWAN,RANEM
		EXTERN	KAMEI,OBAKE,NIWAX
;
;============== バンク８ ================================================
BANK8		GROUP	8
		EXTERN	GRBGCR,BGUNCH
;
;========================================================================
		PUBALL
		NLIST
;
BANK1		GROUP	1
		LIB	ZBN
		LIB	ZRAM
;
;========================================================================
		LIST
		KANJI
		isdmg
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	オープニング			     %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
IZFLCD
;;	DB	%11000110	; Display flash data !
;;	DB	%00000110
	DB	%11000110
	DB	%11000010
	DB	%11000000
	DB	%11000010
;- - - - - - - - - - - - - - - - - - -
OPENING
	LD	A,(OPKYTM)
	AND	A
	JR	Z,OPES10
;
	DEC	A
	LD	(OPKYTM),A
	JP	OPN010
;
OPES10
	LD	A,(KEYA2)
	AND	%10000000
	JP	Z,OPN010
;
	CALL	SOUNDCLR	;(S)
;
	LD	A,(ITMODE)
	CP	OPLG
;;	JR	OPP100
	JR	Z,OPP100
;
	LD	A,$28
	LD	(OPKYTM),A	; Logo display wait !
;
	LD	A,LOGOS		; いきなりタイトルロゴ
	LD	(VRFLG),A
;
;-------------------------------------------------------------
		LD	A,(CGBFLG)
		AND	A
		JR	NZ,OPES10_100

		LD	A,(DX_color_data_GB0+3)
		LD	(OBP0FG),A	; ＯＢＪパレット（０）
		LD	A,(DX_color_data_GB1+3)
		LD	(OBP1FG),A	; ＯＢＪパレット（１）
		LD	A,4		; ＧＢ
		JR	OPES10_110
OPES10_100
		LD	A,:OPENING	; 戻りバンク
		CALL	AllWhiteSetSub	; オールホワイト

		XOR	A		; フェードインフラグＯＦＦ
		LD	(FADEMDFG),A
		LD	A,8		; ＣＧＢ
OPES10_110
		LD	(DXCLPT),A	; カラー転送しない！
;-------------------------------------------------------------
;
;;	LD	A,OPBS2		; Bank set!
;;	LD	(BLNKFG),A
;
	LD	A,OPLGW
	LD	(ITMODE),A
;
	XOR	A
;;	LD	(SCCH),A
;;	LD	(SCCV),A
	LD	(ENMODE),A
	LD	(ENMODE+1),A
	LD	(ENMODE+2),A
	LD	(ENMODE+3),A
	LD	(ENMODE+4),A
	LD	(BGP),A
	LD	(BGPFG),A
;
	LD	A,$10
	LD	(WAVCNT3),A	;ロゴイキナリ出す！
	CALL	LOGOINT
;
	LD	A,$0D
	LD	(SOUND4),A	;(S)
;
	LD	(OPWRK8),A
	CALL	NMCHTRS
	JR	IEINIT
;
OPP100
	JP	PSLCTGO
OPSTART
	XOR	A
	LD	(ITMODE),A
	LD	(SCCH),A
	LD	(SCCV),A
	LD	(BGP),A
	LD	(BGPFG),A
;
	LD	HL,GMMODE
	INC	(HL)
;
IEINIT
	LD	A,%00000001
	LD	(IE),A
;
	LD	A,$4F
	LD	(LYC),A
	RET
OPN010
;;	JP	OPSTART
	LD	A,(ITMODE)

		CP	OP8
		JR	C,OPN080

	CP	OPAF
	JR	NC,OPN080
;
	LD	A,(OPWRK0)
	AND	A
	JR	Z,INZ000
	DEC	A
	LD	(OPWRK0),A
INZ000
	RRA
;;	RRA
	NOP
	AND	$03
;;	AND	$01
	LD	E,A
	LD	D,$00
	LD	HL,IZFLCD
	ADD	HL,DE
	LD	A,(HL)
	LD	(BGPFG),A
;
	CALL	OpenFlashSub
;
OPN080
	LD	A,(ITMODE)
	RST	00
	DW	OP10000	; (0) 
	DW	OP20000	; (1) 
	DW	OP30000	; (2)
	DW	OP80000	; (3) On sea
	DW	OP90000	; (4) Link up
	DW	OPAF000	; (5) Yoko yama Bank set !
	DW	OPA0000	; (6) Yoko yama Wait !!
	DW	OPB0000	; (7) Yoko yama Scroll !!
	DW	OPC0000	; (8) "ZELDA" Logo set 
	DW	OPD0000	; (9) "ZELDA" Logo XXX 
	DW	OPE0000	; (A) Nontendo TR.
	DW	OPF0000	; (B) Loop wait.
	DW	OPF8000	; (C) Fade out !
	DW	OPF9000	; (D) いきなりタイトルバンクセット！
;
OP8	EQU	$3
OP9	EQU	$4
OPAF	EQU	$5
OPA	EQU	$6
OPB	EQU	$7
TLX	EQU	$9
OPLG	EQU	$0B
OPLGW	EQU	$0D
;======================================
OP10000
	CALL	RAMCL2
;
	CALL	SOUNDCLR	;(S)
;
		LD	A,:OP10000	; 戻りバンク
		CALL	AllWhiteSetSub	; オールホワイト
;
	LD	A,$1A	;20
;;	LD	(SOUND4),A	;(S)
	CALL	BGMON	;(S)
;
	LD	A,VRMCL
	LD	(BLNKFG),A
;
	XOR	A
	LD	(FRCNT),A
	LD	A,$A2
	LD	(RNDFLG),A
;
	LD	A,(LCDC)
	AND	%11011111	; Window OFF!
	LD	(LCDCB),A
	LD	(LCDC),A
;
		LD	A,60*3		; 最初は３秒待つ！
		LD	(KIRAWL),A
		XOR	A
		LD	(KIRAWH),A
	JP	ITMINC
;======================================
OP20000
	LD	A,OPBST		; Bank set!
	LD	(BLNKFG),A
;
		XOR	A		; フェードインフラグＯＦＦ
		LD	(FADEMDFG),A
;
	JP	ITMINC
;======================================
OP30000
	CALL	OPSCRL	; Part scroll sub !
;
;-------------------------------------------------------------
	LD	A,(CGBFLG)
	AND	A		; カラーゲームボーイ？
	JR	Z,OP30010	; ＮＯ

	LD	A,OPBGS_CGB
	JR	OP30020
OP30010
	LD	A,OPBGS
OP30020
	LD	(VRFLG),A
;-------------------------------------------------------------
;
;;;11/11	LD	A,%11000110
;;;11/11	LD	(BGPFG),A
;
	LD	A,%00011100
	LD	(OBP0FG),A
	LD	A,%11100000
	LD	(OBP1FG),A
;
	LD	A,%00000011
	LD	(IE),A
;
	LD	A,$00
	LD	(LYC),A
;
	LD	E,$10+1
	LD	HL,OPWRK0
	XOR	A
OP3010
	LD	(HLI),A
	DEC	E
	JR	NZ,OP3010
;
;	LD	(OPWRK0),A
;	LD	(OPWRK1),A
;	LD	(OPWRK2),A
;	LD	(OPWRK3),A
;	LD	(OPWRK4),A
;	LD	(OPWRK5),A
;	LD	(OPWRK6),A
;
;
	LD	(ENMODE+0),A
	LD	(ENMODE+1),A
	LD	(ENCHPT),A
	LD	(ENCHPT+1),A
	LD	(ENCHPT+2),A
	LD	(ENFLCL),A
;
	LD	A,$05
	LD	(ENMODE+2),A
;
	LD	A,$C0
	LD	(ENXPSL+2),A
	LD	A,$4E
	LD	(ENYPSL+2),A
;
	XOR	A
	LD	(ENMOD0+0),A
	LD	(ENMOD0+1),A
	LD	(ENMOD0+2),A
	LD	(ENMOD0+3),A
;
	JP	ITMINC
;
;======================================
INBGCD
	DB	%10000001
	DB	%01000000
	DB	%00000000
	DB	%00000000
	DB	%00000000
	DB	%00000000
	DB	%00000000
	DB	%00000000
	DB	%00000000
INOBCD
	DB	%00001000
	DB	%00001000
	DB	%00001000
	DB	%00000100
	DB	%00000000
	DB	%00000000
	DB	%00000000
	DB	%00000000
	DB	%00000000
;
OP80000		; 広大な海と船
;;	CALL	OPSCRL	; Part scroll sub !
;
	CALL	RAINCS	; 雨
	CALL	OPOBJ	; 雷+ふね
;
	LD	A,(OPWRK2)
	AND	A
	JR	Z,OP8001	; 稲妻 ちょくげき?
;				; yes !
	INC	A
	LD	(OPWRK2),A
;
	CP	$18
	JR	C,OP8F090
;
	SUB	$18
	RRA
	RRA
	RRA
	AND	%00001111
;
	LD	E,A
	LD	D,$00
	LD	HL,INBGCD
	ADD	HL,DE
	LD	A,(HL)
	LD	(BGPFG),A
	LD	HL,INOBCD
	ADD	HL,DE
	LD	A,(HL)
	LD	(OBP0FG),A
;
	CALL	OpenWhiteOutSub
;
	LD	A,E
	CP	$08
	JP	NZ,OP8F090
;
	XOR	A
	LD	(ENMODE),A
	LD	(ENMODE+1),A
	LD	(ENMODE+2),A
	LD	(ENSTAT),A
;
	LD	A,OPAF
	LD	(ITMODE),A	; Yoko display go !
;
	LD	(OPWRK8),A
	CALL	NMCHTRS	; !!
;
	LD	A,OPBS2		; Bank set!
	LD	(BLNKFG),A
;
;;	CALL	SOUNDOUT ;CLR	;(S)
;
	LD	A,$FF
	LD	(OPWRK1),A	; Fade time !!
;
	XOR	A
	LD	(SCCH),A
	LD	(SCCH1),A
	LD	(SCCH3),A
	LD	(SCCH4),A
S2S
	LD	A,$92
;;	LD	A,$92+3  ;A0-56-B8
	LD	(SCCH2),A	; Mountain scroll initial !
;
	LD	A,$03
	LD	(IE),A
;
;	LD	A,$30
;	LD	(LYC),A
OP8F090
	RET
;--------------------------------
OP8001
	LD	A,(ENXPSL+2)
	CP	$50
	JR	NZ,OP8002
;
;;	LD	A,(KEYA2)
;;	AND	%00100000
;;	JR	Z,OP8002	; TEST !!!
;
		LD	A,%11111111	; ちょっとずるいやり方
		LD	(BGP),A		; ＢＧを黒くして隠す！

	LD	A,OP9
	LD	(ITMODE),A
;
	LD	A,OPBG2
	LD	(VRFLG),A
;
	LD	A,%00000001
	LD	(IE),A
;
	XOR	A
	LD	(SCCH),A
;
	RET
OP8002
;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
	CALL	OPSCRL	; Part scroll sub !
;
	LD	A,(FRCNT)
	AND	$07
;;	JR	NZ,OP8007
	JP	NZ,OP8070
;
	LD	HL,SCCH
	INC	(HL)
;
	LD	HL,ENXPSL
	DEC	(HL)
	INC	HL
	DEC	(HL)
	INC	HL
	DEC	(HL)
OP8007
;	LD	A,(FRCNT)
;	AND	$0F
;	JR	NZ,OP8070
;;
;	CALL	RNDSUB
;	AND	$07
;	JR	NZ,OP8070
;
	LD	C,$00
	LD	A,(SCCH)
	CP	$10
	JR	Z,OP80077
	INC	C
	CP	$30
	JR	Z,OP80077
	INC	C
	CP	$38
	JR	Z,OP80077
	INC	C
	CP	$58
	JR	Z,OP80077
	INC	C
	CP	$5A
	JR	Z,OP80077
	INC	C
	CP	$69
	JR	NZ,OP8070
;
OP80077
	LD	E,$01
	LD	D,$00
OP8008
	LD	HL,ENMODE
	ADD	HL,DE
	LD	A,(HL)
	AND	A
	JR	Z,OP8010
	DEC	E
	LD	A,E
	CP	$FF
	JR	NZ,OP8008
	RET
;--------------------------
INSXPS
	DB	$28,$78,$60,$38
	DB	$68,$58
INAZMDD
	DB	4,2,1,4
	DB	3,1
;- - - - - - - - - - - - - - - - - -
OP8010
	LD	B,$00
	LD	HL,INAZMDD
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENMODE
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,INSXPS
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),$30
;
	LD	HL,ENTIM0
	ADD	HL,DE
	LD	(HL),$20
;
INFLST
	LD	A,$1C
	LD	(OPWRK0),A
	CALL	BBSDST	;(S)
OP8070
	RET
;======================================
OP90000		; リンク ピンチ
	CALL	RAINCS
;
;;	LD	A,(KEYA2)
;;	AND	%00100000
;;	JR	Z,OP9010
	LD	A,(OPWRK1)
	INC	A
	LD	(OPWRK1),A
	CP	$80
	JR	NZ,OP9008
;
	PUSH	AF
;;	CALL	SOUNDCLR	;(S)
	CALL	LINKKAO	; Link kao chenge !
	POP	AF
;
OP9008
	CP	$90
	JR	NZ,OP900A
;
	CALL	INFLST
OP900A
	CP	$A0
	JR	NZ,OP9010
;
	LD	A,OP8
	LD	(ITMODE),A
;
;-------------------------------------------------------------
	LD	A,(CGBFLG)
	AND	A		; カラーゲームボーイ？
	JR	Z,OP90010	; ＮＯ

	LD	A,OPBGS_CGB
	JR	OP90020
OP90010
	LD	A,OPBGS
OP90020
	LD	(VRFLG),A

		CALL	OP90000_TEST	; 強制ＶＲＡＭセット

;-------------------------------------------------------------
;
	LD	A,%00000011
	LD	(IE),A
;
	XOR	A
	LD	(ENMODE+0),A	; 古い稲妻消す！
	LD	(ENMODE+1),A
;
	LD	A,$01
	LD	(OPWRK2),A	; 稲妻船に落ちるタイム
	RET
OP9010
	LD	A,(FRCNT)
	AND	$7F
	JR	NZ,OP9020
;
	CALL	RNDSUB
	AND	$00
	JR	NZ,OP9020
;
	CALL	INFLST
OP9020
	RET

;======================================
;	強制ＶＲＡＭセット
;======================================
OP90000_TEST
		LD	HL,CallBank
		LD	A,:VRST80
		LD	(HLI),A
		LD	A,>VRST80
		LD	(HLI),A
		LD	A,<VRST80
		LD	(HLI),A
		LD	A,:OP90000_TEST
		LD	(HL),A
		JP	JSL_CALL

;======================================
OPAF000
	LD	A,OPBG3
	LD	(VRFLG),A
;
;-------------------------------------------------------------
		LD	A,$001		; フェードインフラグＯＮ
		LD	(FADEMDFG),A
;-------------------------------------------------------------
;
	CALL	ITMINC
	RET
;----------------------------
OPABGC
	DB	%00000000
	DB	%00000000
	DB	%00000000
	DB	%00000000
	DB	%01000000
	DB	%01000000
	DB	%01000000
	DB	%10000000
	DB	%10000101
	DB	%10000101
	DB	%10000101
	DB	%11000101
	DB	%11001001
	DB	%11001001
	DB	%11001001
	DB	%11001001
;
;	DB	%11001001
;	DB	%11000100
;	DB	%10000000
;	DB	%01000000
OPAOBC
	DB	%00000000
	DB	%00000000
	DB	%00000000
	DB	%00000000
	DB	%00000100
	DB	%00000100
	DB	%00000100
	DB	%00000100
	DB	%00011000
	DB	%00011000
	DB	%00011000
	DB	%00011000
	DB	%00011100
	DB	%00011100
	DB	%00011100
	DB	%00011100
;
;	DB	%00011100
;	DB	%00001000
;	DB	%00000100
;	DB	%00000000
OPAO1C
	DB	%00000000
	DB	%00000000
	DB	%00000000
	DB	%00000000
	DB	%01000000
	DB	%01000000
	DB	%01000000
	DB	%01000000
	DB	%10010000
	DB	%10010000
	DB	%10010000
	DB	%10010000
	DB	%11100000
	DB	%11100000
	DB	%11100000
	DB	%11100000
;
;	DB	%11100000
;	DB	%10010000
;	DB	%01000000
;	DB	%00000000
;- - - - - - - - - - - - - - - - - -
OPA0000		; 横すくろーる 1
	CALL	NAMISDST
;
	LD	A,(OPWRK1)
	CP	$A0
	JR	NZ,OPA001
;
	PUSH	AF
;
;;	LD	A,$15
;;	CALL	BGMON	;(S)
	LD	A,$02
	LD	(LYC),A
	POP	AF
OPA001
	DEC	A
	LD	(OPWRK1),A
	JR	NZ,OPA010
;
	LD	A,OPB
	LD	(ITMODE),A
;
	LD	A,$06	; Girl set !
	LD	(ENMODE+0),A
;
	LD	A,$B0
	LD	(ENXPSL+0),A
	LD	A,$68
	LD	(ENYPSL+0),A
	LD	A,$01
	LD	(ENCONT+0),A
	RET
OPA010
	CP	$34
	JR	NC,OPA020
;;	CP	$20
;;	JR	NC,OPA020
;
;;	RRA
;;	RRA
;;	RRA
;;	AND	$03
	AND	$03
	JR	NZ,OPA018
;
	LD	A,(OPFDCT)
	CP	$0C
	JR	Z,OPA018
;
	INC	A
	LD	(OPFDCT),A
OPA018
	LD	A,(FRCNT)
	AND	$03
	LD	E,A
	LD	A,(OPFDCT)
	ADD	A,E
	LD	E,A
	LD	D,$00
	LD	HL,OPABGC
	ADD	HL,DE
	LD	A,(HL)
	LD	(BGPFG),A
	LD	HL,OPAOBC
	ADD	HL,DE
	LD	A,(HL)
	LD	(OBP0FG),A
	LD	HL,OPAO1C
	ADD	HL,DE
	LD	A,(HL)
	LD	(OBP1FG),A
;
	CALL	OpenWhiteInSub
;
OPA020
	RET
;- - - - - - - - - - - - - - - - - -
;=======================================
OPB0000		; 横すくろーる
	CALL	OPOBJ	;
;
	RET
;=======================================
NAMISDST
	LD	A,(ENSTAT+1)
	CP	$02
	JR	NC,NMSS20	; Sroll up ?
;				; Yes !
	LD	A,(NAMIOTO)
	INC	A
	CP	$A0
	JR	NZ,NMSS10
;
	LD	A,$0F
	LD	(SOUND3),A	;(S)
;
	XOR	A
NMSS10
	LD	(NAMIOTO),A
NMSS20
	RET
;=======================================
ZELDADT6
 DB  $9A,$16,$0F
 DB  $80,$81,$82,$83,$84,$85,$86,$87,$88,$89,$8A,$8B,$8C,$8D,$8E,$8F
ZELDADT4
 DB  $9A,$36,$0F
 DB  $90,$91,$92,$93,$94,$95,$96,$97,$98,$99,$9A,$9B,$9C,$9D,$9E,$9F
ZELDADT2
 DB  $9A,$56,$0F
 DB  $A0,$A1,$A2,$A3,$A4,$A5,$A6,$A7,$A8,$A9,$AA,$AB,$AC,$AD,$AE,$AF
ZELDADT1
 DB  $9A,$76,$0F
 DB  $B0,$B1,$B2,$B3,$B4,$B5,$B6,$B7,$B8,$B9,$BA,$BB,$BC,$BD,$BE,$BF
ZELDADT3
 DB  $9A,$96,$0F
 DB  $C0,$C1,$C2,$C3,$C4,$C5,$C6,$C7,$C8,$C9,$CA,$CB,$CC,$CD,$CE,$CF
ZELDADT5
 DB  $9A,$B6,$0F
 DB  $D0,$D1,$D2,$D3,$D4,$D5,$D6,$D7,$D8,$D9,$DA,$DB,$DC,$DD,$DE,$DF
ZELDADT7
 DB  $9A,$D6,$0F
 DB  $E0,$E1,$E2,$E3,$E4,$E5,$E6,$E7,$E8,$E9,$EA,$EB,$EC,$ED,$EE,$EF
;------------------------------------------------
ZELDAAD
	DW	ZELDADT1
	DW	ZELDADT2
	DW	ZELDADT3
	DW	ZELDADT4
	DW	ZELDADT5
	DW	ZELDADT6
	DW	ZELDADT7
;---------------------------------------------------------------------
OPC0000
	LD	A,(OPWRK2)
	SLA	A
	LD	E,A
	LD	D,$00
	LD	HL,ZELDAAD
	ADD	HL,DE
	LD	A,(HLI)
	LD	D,(HL)
	LD	E,A
;
	LD	HL,VRAMD+1
	LD	C,$13
OPC010
	LD	A,(DE)
	INC	DE
	LD	(HLI),A
	DEC	C
	JR	NZ,OPC010
;
	LD	(HL),$00
;
;-------------------------------------------------------------
	LD	A,(CGBFLG)
	AND	A		; カラーゲームボーイ？
	JR	Z,OPC015	; ＮＯ

	CALL	ZELDA_AT	; (CGB)アトリビュートセット
OPC015
;-------------------------------------------------------------
;
	LD	A,(OPWRK2)
	INC	A
	LD	(OPWRK2),A
	CP	$07
	JR	NZ,OPC020
;
	CALL	ITMINC
OPC020
	RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ＺＥＬＤＡロゴ アトリビュートセット				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
AT_ZELDADT6
	DB	$9A,$16,$0F
	DB	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
AT_ZELDADT4
	DB	$9A,$36,$0F
	DB	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
AT_ZELDADT2
	DB	$9A,$56,$0F
	DB	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
AT_ZELDADT1
	DB	$9A,$76,$0F
	DB	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
;;;;;AT_ZELDADT3
;;;;;	DB	$9A,$96,$0F
;;;;;	DB	$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
;;;;;AT_ZELDADT5
;;;;;	DB	$9A,$B6,$0F
;;;;;	DB	$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02
;;;;;AT_ZELDADT7
;;;;;	DB	$9A,$D6,$0F
;;;;;	DB	$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02
AT_ZELDADT3
	DB	$9A,$96,$0F
	DB	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
AT_ZELDADT5
	DB	$9A,$B6,$0F
	DB	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
AT_ZELDADT7
	DB	$9A,$D6,$0F
	DB	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
;------------------------------------------------------------------------
AT_ZELDAAD
	DW	AT_ZELDADT1
	DW	AT_ZELDADT2
	DW	AT_ZELDADT3
	DW	AT_ZELDADT4
	DW	AT_ZELDADT5
	DW	AT_ZELDADT6
	DW	AT_ZELDADT7
;========================================================================

ZELDA_AT
	LD	A,(OPWRK2)
	SLA	A
	LD	E,A
	LD	D,$00
	LD	HL,AT_ZELDAAD
	ADD	HL,DE
	LD	A,(HLI)
	LD	D,(HL)
	LD	E,A

	LD	HL,VRAMD_AT+1
	LD	C,$13
ZEL_AT_100
	LD	A,(DE)
	INC	DE
	LD	(HLI),A
	DEC	C
	JR	NZ,ZEL_AT_100

	LD	(HL),$00

	RET
;------------------------------------------------------------------------

;==============================================
;ZLFLDT
;	DB	$09,$49,$89,$C9,$C9,$89,$49,$09
OPD0000
	LD	A,(WAVCNT3)
	CP	$10
	JR	C,OPD090
;
	LD	A,$19
	LD	(SOUND3),A	;(S)
;
	CALL	ITMINC
OPD090
;
;	LD	A,(FRCNT)
;	RRA
;	RRA
;	RRA
;	RRA
;	AND	$07
;	LD	E,A
;	LD	D,$0
;	LD	HL,ZLFLDT
;	ADD	HL,DE
;	LD	A,(HL)
;	LD	(BGPFG),A
	RET
;
;---------------------------------------
NINDT
;;;11/11	DB	$9B,$B9,$09
;;;11/11	DB	$65,$66,$67,$68,$69,$6A,$6B,$6C,$6D,$6E
;;;11/11	DB	$00
	DB	$9B,$B7,$0D
	DB	$65,$66,$67,$68,$69,$6A,$6B,$6C,$6D,$6E
	DB	$6f,$70,$71,$72
	DB	$00
;- - - - - - - - - - - - - - - - - - - -
OPE0000
	LD	DE,NINDT
	LD	HL,VRAMD+1
;;;11/11	LD	C,14
		ld	c,18
OPE010
	LD	A,(DE)
	INC	DE
	LD	(HLI),A
	DEC	C
	JR	NZ,OPE010
;
;-------------------------------------------------------------
		LD	A,(CGBFLG)
		AND	A		; カラーゲームボーイ？
		JR	NZ,OPE020	; ＹＥＳ

;;;;;;;		XOR	A		; カラー１パターン目
		CALL	DX_GB_COLSET	; ＤＸカラー転送
		JR	OPE021
OPE020
		XOR	A		; カラー１パターン目
		CALL	DX_CGB_COLSET	; ＤＸカラー転送
		CALL	NINTENDO_AT	; アトリビュートセット
OPE021
		LD	A,DX_wait_time	; ＤＸ表示待ち時間
		LD	(DXCLWT),A
;-------------------------------------------------------------
	CALL	ITMINC
;
LOGOINT
	LD	A,$A0
	LD	(OPWRK1),A
;
	XOR	A
	LD	(OPWRK2),A
;
	LD	A,$FF
	LD	(OPWRK3),A
	RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ＮＩＮＴＥＮＤＯロゴ アトリビュートセット			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
AT_NINDT
		DB	$9B,$B7		; ＶＲＡＭアドレス
		DB	%01000000 | $0E-1	; 横、共通、０ＥＨ
		DB	$07		; アトリビュート
		DB	$00		; エンドコード
;========================================================================

NINTENDO_AT
		LD	DE,AT_NINDT
		LD	HL,VRAMD_AT+1
		LD	C,18
NIN_AT_100
		LD	A,(DE)
		INC	DE
		LD	(HLI),A
		DEC	C
		JR	NZ,NIN_AT_100

		RET
;------------------------------------------------------------------------
;
;=================================================
OPZFLX
	DB	$18,$18,$38,$40,$58,$60,$80,$88
OPZFLY
	DB	$20,$48,$44,$28,$44,$28,$28,$40
;- - - - - - - - - - - - - - - - - -
OPF0000
	CALL	OPOBJ
		CALL	DX_OBJ	; ＤＸ セット
;
	LD	A,(FRCNT)
	AND	$3F
	JR	NZ,OPF008
;
	LD	E,$01
	LD	D,$0
OPF001
	LD	HL,ENMODE
	ADD	HL,DE
	LD	A,(HL)
	AND	A
	JR	Z,OPF0002
	DEC	E
	LD	A,E
	CP	$FF
	JR	NZ,OPF001
	JR	OPF008
;
OPF0002
	LD	(HL),$08
;
	LD	HL,ENTIM0
	ADD	HL,DE
	LD	(HL),$3F
;
;;	CALL	RNDSUB
	LD	A,(OPWRK3)
	INC	A
	LD	(OPWRK3),A
	AND	$07
	LD	C,A
	LD	B,$00
	LD	HL,OPZFLX
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,OPZFLY
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),A
;
OPF008
;;	LD	A,(FRCNT)
	LD	A,(OPWRK2)
	INC	A
	LD	(OPWRK2),A
	AND	$0F
	JR	NZ,OPF010
;
;;;11/11	LD	A,(OPWRK1),A
	LD	A,(OPWRK1)
	DEC	A
	LD	(OPWRK1),A
;
;;	JR	OPF010
	JR	NZ,OPF010
;
;;	JP	GMRESET
	CALL	ITMINC
;
	XOR	A
	LD	(SBHR),A
	LD	(SBCNT),A
;
	CALL	SOUNDOUT	;(S)
OPF010
	RET
;=================================================
OPF8000
	CALL	FDIN
;
	LD	A,(SBHR)
	CP	$04
	JR	NZ,OPF8010
;
	JP	GMRESET
OPF8010
	RET
;======================================
OPF9000
;;	LD	A,LOGOS
;;	LD	(VRFLG),A
	LD	A,OPBS2
	LD	(BLNKFG),A
;
	LD	A,OPLG
	LD	(ITMODE),A
;
	LD	A,$C9
	LD	(BGPFG),A
	LD	A,$1C
	LD	(OBP0FG),A
;
	XOR	A
	LD	(SCCH),A
	LD	(SCCV),A
		DEC	A		; A <-- FF
		LD	(SKIPFG),A	; タイトルスキップフラグ
	RET
;======================================
;======================================
RAINCS
	CALL	RNDSUB
	AND	$18
	ADD	A,$10
;;	LD	A,$18
	LD	(WORK1),A	; Initial Y
	CALL	RNDSUB
	AND	$18
	ADD	A,$10
	LD	(WORK0),A	;	"  X
;
	LD	HL,OAM+$4C
;
	LD	C,16
	LD	A,(ITMODE)
	CP	OP9
	JR	NZ,RAC010
;
	LD	C,21
;
RAC010
	LD	A,(WORK1)
	LD	(HLI),A
	LD	A,(WORK0)
	LD	(HLI),A
;
	CALL	RNDSUB
	AND	$01
	LD	A,$28
	JR	Z,RAC011
;
	CALL	RNDSUB
	AND	%00000110
	ADD	A,$70
RAC011
	LD	(HLI),A
;
	LD	A,$00
	LD	(HLI),A
;
	LD	A,(WORK0)
	ADD	A,$1C
	LD	(WORK0),A
	CP	$A0
	JR	C,RAC020
;
	SUB	$98
	LD	(WORK0),A
;
	LD	A,(WORK1)
	ADD	A,$25
	LD	(WORK1),A
RAC020
;
	DEC	C
	JR	NZ,RAC010
;
	RET
;======================================
LKKAOD
	DB	$99,$2B,$83,$1E,$20,$22,$24
	DB	$99,$2C,$83,$1F,$21,$23,$25
	DB	$00
;
LINKKAO
	LD	DE,VRAMD+1
	LD	HL,LKKAOD
;
	LD	C,$0F
LKK010
	LD	A,(HLI)
	LD	(DE),A
	INC	DE
	DEC	C
	JR	NZ,LKK010
	RET
;======================================
;- - - - - - - - - - - - -
OPOBJ ;INAZUMA
	XOR	A
	LD	(ENOMID),A
;
	LD	C,$02
	LD	B,$00
INZ010
	LD	A,C
	LD	(INDEX),A
;
	LD	HL,ENMODE
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,INZ090
;
	LD	HL,ENXPSL
	ADD	HL,BC
	LD	A,(HL)
	LD	(ENSVXL),A
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	A,(HL)
	LD	(ENDSYP),A
;
	LD	HL,ENCHPT
	ADD	HL,BC
	LD	A,(HL)
	LD	(ENCHPT2),A
;
	LD	HL,ENSTAT
	ADD	HL,BC
	LD	A,(HL)
	LD	(ENSTAT2),A
;
	CALL	INZMAIN
INZ090
	DEC	C
	LD	A,C
	CP	$FF
	JR	NZ,INZ010
	RET
;-----------------------------------
INZMAIN
	LD	HL,ENMODE
	ADD	HL,BC
	LD	A,(HL)
	CP	$05
	JR	Z,FUNEMV
	CP	$06
	JP	Z,GIRLMV
	CP	$07
	JP	Z,LINKMV
	CP	$08
	JP	Z,ZFLASH
;
	CALL	LDTIM0
	JR	NZ,INZM10
;
	LD	HL,ENMODE
	ADD	HL,BC
	LD	(HL),B
	RET
INZM10
	DEC	(HL)
;
	CALL	INZCS
	RET
;----------------------------------
FUNECD
	DB	$00,$00,$1C,$02
	DB	$00,$08,$1E,$02
	DB	$10,$F8,$20,$02
	DB	$10,$00,$22,$02
	DB	$10,$08,$24,$02
	DB	$10,$10,$26,$02
BIGINZ	;
	DB	$F8,$04,$32,$01
	DB	$E8,$04,$32,$01
	DB	$D8,$04,$32,$01
	DB	$C8,$04,$32,$01
FNSCYD
	DB	2,1,0,0,0,1,2,2
;
FUNEMV
	LD	A,(OPWRK2)
	AND	A
	LD	A,$00
	JR	NZ,FNM002
;
	LD	A,(FRCNT)
	ADD	A,$D0
	RRA
	RRA
	RRA
	RRA
	AND	$07
FNM002
	LD	E,A
	LD	D,$0
	LD	HL,FNSCYD
	ADD	HL,DE
	LD	A,(HL)
;;	RRA
;;	AND	$0F
	LD	HL,ENDSYP
	ADD	A,(HL)
	LD	(HL),A
;
	LD	HL,FUNECD
	LD	DE,OAM+$00
;
	PUSH	BC
;
	LD	C,$06
FNC010
	LD	A,(ENDSYP)
	ADD	A,(HL)
	INC	HL
	LD	(DE),A
	INC	DE
;
	LD	A,(ENSVXL)
	ADD	A,(HL)
	INC	HL
	LD	(DE),A
	INC	DE
;
	LD	A,(HLI)
	LD	(DE),A
	INC	DE
;
	LD	A,(HLI)
	LD	(DE),A
	INC	DE
;
	DEC	C
	JR	NZ,FNC010
;--------------------
	LD	A,(OPWRK2)
	CP	$10
	JR	C,FNC020	; 稲妻直撃？
;				; YES !
	LD	HL,BIGINZ
	LD	DE,OAM+$18
;
	LD	C,$04
FNC060
	LD	A,(ENDSYP)
	ADD	A,(HL)
	INC	HL
	LD	(DE),A
	INC	DE
;
	LD	A,(ENSVXL)
	ADD	A,(HL)
	INC	HL
	LD	(DE),A
	INC	DE
;
	LD	A,(HLI)
	LD	(DE),A
	INC	DE
;
	LD	A,(HLI)
	LD	(DE),A
	INC	DE
;
	DEC	C
	JR	NZ,FNC060
FNC020
	POP	BC
	RET
;----------------------------------
INZCDT
;0
	DB	$00,$00,$34,$01
	DB	$00,$08,$36,$01
	DB	$10,$00,$2C,$01
	DB	$20,$F8,$2C,$01
	DB	$28,$00,$2E,$21
	DB	$30,$F0,$2E,$01
;1
	DB	$08,$00,$36,$21
	DB	$08,$08,$34,$21
	DB	$18,$00,$30,$01
	DB	$18,$08,$2C,$21
	DB	$28,$10,$2E,$21
	DB	$28,$10,$2E,$21
;2
	DB	$00,$08,$34,$21
	DB	$00,$00,$36,$21
	DB	$10,$08,$2C,$21
	DB	$20,$10,$2C,$21
	DB	$28,$08,$2E,$01
	DB	$30,$18,$2E,$21
;3
	DB	$08,$08,$36,$01
	DB	$08,$00,$34,$01
	DB	$18,$08,$30,$21
	DB	$18,$00,$2C,$01
	DB	$28,$F8,$2E,$01
	DB	$28,$F8,$2E,$01
;- - - - - - - - - - - - - - - - -
INZCS
	LD	HL,ENMODE
	ADD	HL,BC
	LD	A,(HL)
	DEC	A
	SLA	A
	SLA	A
;
	SLA	A
	LD	E,A
	SLA	A
	ADD	A,E
	LD	E,A
	LD	D,B
	LD	HL,INZCDT
	ADD	HL,DE
;
	LD	C,$06
;
	CALL	ENOMST
;
	LD	A,(ENOMID)
	ADD	A,$4*6
	LD	(ENOMID),A
	RET
;======================================
GIRLCD
	DB	$00,$03,$02,$03
	DB	$04,$03,$06,$03
	DB	$08,$03,$0A,$03
	DB	$0C,$03,$0E,$03
; - - - - - - - - - - - - -
GIRLMV
	CALL	NAMISDST
;
	XOR	A
	LD	(ENMOD0),A
;
	LD	DE,GIRLCD
	CALL	EN2CST
;
	LD	A,(ENOMID)
	ADD	A,$08
	LD	(ENOMID),A
;
	LD	A,(ENSTAT2)
	RST	0
	DW	GIRLWRK
	DW	GIRLSTP
	DW	GIRLRUN
	DW	GIRLRUN2
	DW	GIRLHLP
;--------------------------------------
GIRLWRK
	CALL	OPSCRL2	; Part scroll sub !
;
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	AND	$01
	CALL	ENPTST
;
	LD	A,(ENSVXL)
	CP	$48
	JR	NC,GLW010
;
	CALL	LDTIM0
	LD	(HL),$40
;
	CALL	STATINC
GLW010
;;	LD	A,(FRCNT)
;;	AND	$03
;;	JR	NZ,GLW030
	LD	HL,ENCONT
	ADD	HL,BC
	DEC	(HL)
	JR	NZ,GLW030
;
	LD	(HL),$04
;
	LD	HL,ENXPSL
	ADD	HL,BC
	DEC	(HL)
GLW030
	RET
;--------------------------------------
GIRLSTP
	CALL	NMCHTR	; Nami CHR tr !
;
	LD	A,$01
	CALL	ENPTST
;
	CALL	LDTIM0
	JR	NZ,GLS010
;
	CALL	STATINC
;
	LD	A,$07
	LD	(ENMODE+1),A	; Link set !!
;
	LD	A,$FE  ;+5
;;	LD	A,$F8  ;+5
	LD	(ENXPSL+1),A
	LD	A,$6E ;70  ;6C
	LD	(ENYPSL+1),A
;
	XOR	A
	LD	(ENSTAT+1),A
	LD	(ENTIM0+1),A
	LD	(FRCNT),A
;
	RET
GLS010
	DEC	(HL)
	RET
;
;
;
;--------------------------------------
GIRLRUN
	CALL	OPSCRL2
;
	LD	A,(ENXPSL+1)
	DEC	A
	LD	(ENXPSL+1),A	; Link 接近
;
	LD	A,(FRCNT)
	AND	$01
	JR	NZ,GLR010
;
	LD	HL,SCCH
	INC	(HL)
	LD	A,(HL)
PNT1
	CP	$30
;;	CP	$40
	JR	NZ,GLR008
;
	CALL	LDTIM0
	LD	(HL),$40
;
;
;
;;	CP	$56
;;	JR	NZ,GLR008
;
;	LD	A,$A0
;	LD	(HL),A
;	LD	(SCX),A
;;
;	LD	A,$01
;	LD	(IE),A
;;
;	CALL	LDTIM0
;	LD	(HL),$FF
;
	JP	STATINC
GLR008
	CP	$20
	JR	NZ,GLR0088
;
	CALL	YAMARV1
;
	XOR	A
GLR0088
	CP	$22
	JR	NZ,GLR0089
;
	CALL	YAMARV2
;
	XOR	A
GLR0089
;	CP	$4E
;	JR	NZ,GLR0088
;;
;	CALL	YAMARV3
;;
;	XOR	A
;GLR0088
;	CP	$20
;	JR	NZ,GLR009
;;
;	CALL	YAMARV1
;;
;	XOR	A
;GLR009
;	CP	$21
;	JR	NZ,GLR010
;;
;	CALL	YAMARV2
GLR010
	LD	A,(FRCNT)
	RRA
	RRA
	AND	$01
	CALL	ENPTST
;
;	LD	A,(FRCNT)
;	AND	$01
;	JR	NZ,GLR030
;;
;	LD	HL,ENXPSL
;	ADD	HL,BC
;	INC	(HL)
GLR030
	RET
;--------------------------------------
GIRLRUN2
	CALL	LDTIM0
	JR	NZ,GLR2A0
;
;	LD	A,(FRCNT)
;	AND	$03
;	JR	NZ,GLR202
;
	CALL	OPSCRL22
;
GLR202
	LD	A,(FRCNT)
	AND	$01
	JR	NZ,GLR210
;
	LD	A,(ENXPSL+1)
	DEC	A
	LD	(ENXPSL+1),A	; Link 接近
;
	LD	A,(FRCNT)
	AND	$03
	JR	NZ,GLR210
;
PNT2
	LD	HL,SCCH
	INC	(HL)
	LD	A,(HL)
	CP	$40
	JR	Z,TTYY
	CP	$3A
	JR	NZ,TTYU
;
	CALL	LDTIM0
	LD	(HL),$30
	JR	TTYU
TTYY
	CALL	LDTIM0
	LD	(HL),$50
TTYU
	LD	A,(SCCH)
;
;
;
;
;;	CP	$56
;99	CP	$54
	CP	$56
	JR	NZ,GLR208
;
	LD	A,$A0
	LD	(HL),A
	LD	(SCX),A
;
	LD	A,$01
	LD	(IE),A
;
	CALL	LDTIM0
	LD	(HL),$E0
;;;	LD	(HL),$FF
;
	JP	STATINC
GLR208
	CP	$20
	JR	NZ,GLR2088
;
	CALL	YAMARV1
;
	XOR	A
GLR2088
	CP	$22
	JR	NZ,GLR2089
;
	CALL	YAMARV2
;
	XOR	A
GLR2089
GLR210
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	RRA
	AND	$01
	CALL	ENPTST
GLR290
	RET
GLR2A0
	DEC	(HL)
;
	CALL	NMCHTR	; Nami CHR tr !
;
	LD	A,$01
	JP	ENPTST
;--------------------------------------
GIRLHLP
	CALL	NMCHTR	; Nami CHR tr !
;
	LD	A,(FRCNT)
	AND	$01
	JR	NZ,GLH020
;
	LD	A,$02
;;	LD	A,$01
	CALL	ENPTST
;
	LD	A,$00
	LD	(ENCHPT+1),A	; Link pt
;
	CALL	LDTIM0
	JR	Z,GLH008
	DEC	(HL)
GLH008
	CP	$A0
	JR	NC,GLH020
	CP	$90
	JR	NC,GLH010
	CP	$50
	JR	NC,GLH020
	CP	$4A
	JR	NC,GLH010
	CP	$3C
	JR	NC,GLH020
	CP	$36
	JR	C,GLH020
GLH010
	LD	A,$03
;;	LD	A,$02
	CALL	ENPTST
;
	LD	A,$01
	LD	(ENCHPT+1),A
GLH020
	RET
;=========================================
ZFLCD
	DB	$38,$00,$38,$20
	DB	$3A,$00,$3A,$20
	DB	$3A,$00,$3A,$20
	DB	$3C,$00,$3E,$00
	DB	$3C,$00,$3E,$00
	DB	$3A,$00,$3A,$20
	DB	$3A,$00,$3A,$20
	DB	$38,$00,$38,$20
; - - - - - - - - - - - - - - - - -
ZFLASH
		XOR	A
		LD	(ENOMIS),A

	CALL	LDTIM0
	DEC	(HL)
	JR	NZ,ZFL010
;
	LD	HL,ENMODE
	ADD	HL,BC
	LD	(HL),B
	RET
ZFL010
	LD	A,(HL)
	RRA
	RRA
	RRA
	AND	$07
	LD	(ENCHPT2),A
;
	XOR	A
	LD	(ENMOD0),A
;
	LD	DE,ZFLCD
	CALL	EN2CST
;
	LD	A,(ENOMID)
	ADD	A,$08
	LD	(ENOMID),A
	RET
;=========================================
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ＤＸ 表示							x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
DX_wait_time	EQU	60		; 表示待ち時間
DX_oam_xpos	EQU	$78		; Ｘポジション
DX_oam_ypos	EQU	$59		; Ｙポジション
;------------------------------------------------------------------------
GB_chgnge_fct	EQU	12		; カラー転送フレーム（ＧＢ）
CGB_chgnge_fct	EQU	8		; カラー転送フレーム（ＣＧＢ）
;------------------------------------------------------------------------
DX2_oam_data_GB				; 島に重ねる部分
		DB	$50-$40,$18,$2e,$05
		DB	$40-$40,$18,$2C,$05
		DB	$50-$40,$10,$2A,$05
		DB	$40-$40,$10,$28,$05
		DB	$50-$40,$08,$26,$05
		DB	$40-$40,$08,$24,$05
		DB	$50-$40,$00,$22,$05
		DB	$40-$40,$00,$20,$05
DX_oam_data_GB
		DB	$00,$28,$52,$16
		DB	$00,$20,$50,$16
		DB	$10,$18,$4e,$16
		DB	$00,$18,$4c,$16
		DB	$10,$10,$4a,$16
		DB	$00,$10,$48,$16
		DB	$10,$08,$46,$16
		DB	$00,$08,$44,$16
		DB	$10,$00,$42,$16
		DB	$00,$00,$40,$16
DX_oam_end_GB
DX2_oam_cnt_GB	EQU	(DX_oam_end_GB-DX2_oam_data_GB)/4
DX_oam_cnt_GB	EQU	(DX_oam_end_GB-DX_oam_data_GB)/4

DX2_oam_data_CGB			; 島に重ねる部分
		DB	$50-$40,$18,$2e,$05
		DB	$40-$40,$18,$2c,$05
		DB	$50-$40,$10,$2A,$05
		DB	$40-$40,$10,$28,$05
		DB	$50-$40,$08,$26,$05
		DB	$40-$40,$08,$24,$05
		DB	$50-$40,$00,$22,$05
		DB	$40-$40,$00,$20,$05
DX_oam_data_CGB
		DB	$00,$28,$52,$16
		DB	$00,$20,$50,$16
		DB	$10,$18,$4E,$16
		DB	$00,$18,$4C,$16
		DB	$10,$10,$4A,$16
		DB	$00,$10,$48,$16
		DB	$10,$08,$46,$16
		DB	$00,$08,$44,$16
		DB	$10,$00,$42,$16
		DB	$00,$00,$40,$16
DX_oam_end_CGB
DX2_oam_cnt_CGB	EQU	(DX_oam_end_CGB-DX2_oam_data_CGB)/4
DX_oam_cnt_CGB	EQU	(DX_oam_end_CGB-DX_oam_data_CGB)/4

;------------------------------------------------------------------------
;	ＧＢ カラーデータ
;------------------------------------------------------------------------
DX_color_data_GB0				; パレット０
		DB	%01010100		; ( 0 )
		DB	%01011000		; ( 1 )
		DB	%01101000		; ( 2 )
		DB	%00011100		; ( 3 )
DX_color_data_GB1				; パレット１
		DB	%00000000		; ( 0 )
		DB	%00000100		; ( 1 )
		DB	%00011000		; ( 2 )
		DB	%01101100		; ( 3 )

;------------------------------------------------------------------------
;	ＣＧＢ カラーデータ
;------------------------------------------------------------------------
DX_color_data_CGB
;( 0 )
		DW	$7af5,$7d8d,$7d8d,$7d8d	; ( 5 )
		DW	$7af5,$7fff,$7fff,$7fff	; ( 6 )
;( 1 )
		DW	$7af5,$6d6c,$718d,$75cf	; ( 5 )
		DW	$7af5,$6f7b,$73bd,$77ff	; ( 6 )
;( 2 )
		DW	$7af5,$5d2a,$658e,$6e12	; ( 5 )
		DW	$7af5,$5ef7,$675b,$6fdf	; ( 6 )
;( 3 )
		DW	$7af5,$48e8,$598e,$6654	; ( 5 )
		DW	$7af5,$4a52,$5b19,$67bf	; ( 6 )
;( 4 )
		DW	$7af5,$38c6,$498f,$5a97	; ( 5 )
		DW	$7af5,$39ce,$4ab7,$5bbf	; ( 6 )
;( 5 )
		DW	$7af5,$2484,$3d8f,$52d9	; ( 5 )
		DW	$7af5,$2529,$3e75,$539f	; ( 6 )
;( 6 )
		DW	$7af5,$1442,$3190,$4b1c	; ( 5 )
		DW	$7af5,$14a5,$3213,$4b7f	; ( 6 )
;( 7 )
		DW	$7af5,$0000,$21b1,$3f5f	; ( 5 )
		DW	$7af5,$0000,$21b1,$3f5f	; ( 6 )
;========================================================================

DX_OBJ
;------------------------------------------------------------------------
;	ウエイトチェック
;------------------------------------------------------------------------
		LD	HL,DXCLWT
		LD	A,(HL)
		AND	A
		JR	Z,DX_OBJ_050

		DEC	(HL)
		RET
;------------------------------------------------------------------------
DX_OBJ_050
		LD	A,DX_oam_xpos
		LD	(ENSVXL),A	; Ｘポジション
		LD	HL,SKIPFG
		LD	A,DX_oam_ypos
		ADD	A,(HL)
		LD	(ENDSYP),A	; Ｙポジション

		LD	A,(CGBFLG)
		AND	A
		JR	NZ,DX_OBJ_070

;------------------------------------------------------------------------
;	ＧＢ ＤＸカラー転送
;------------------------------------------------------------------------
		LD	A,(DXCLPT)
		CP	4		; ＤＸカラー転送中？
		JR	Z,DX_OBJ_100	; ＮＯ

		LD	HL,DXCLFC
		INC	(HL)
		LD	A,(HL)
		CP	GB_chgnge_fct	; カラー転送？
		JP	NZ,DX_OBJ_300	; ＮＯ

		XOR	A
		LD	(HL),A
		LD	HL,DXCLPT
		INC	(HL)
		LD	A,(HL)
		CP	4		; ４パターン終了？
		JP	Z,DX_OBJ_300	; ＹＥＳ

		CALL	DX_GB_COLSET
		JP	DX_OBJ_300

;------------------------------------------------------------------------
;	ＣＧＢ ＤＸカラー転送
;------------------------------------------------------------------------
DX_OBJ_070
		LD	A,(DXCLPT)
		CP	8		; ＤＸカラー転送中？
		JR	Z,DX_OBJ_100	; ＮＯ

		LD	HL,DXCLFC
		INC	(HL)
		LD	A,(HL)
		CP	CGB_chgnge_fct	; カラー転送？
		JR	NZ,DX_OBJ_200	; ＮＯ

		XOR	A
		LD	(HL),A
		LD	HL,DXCLPT
		INC	(HL)
		LD	A,(HL)
		CP	8		; ８パターン終了？
		JR	Z,DX_OBJ_200	; ＹＥＳ

		CALL	DX_CGB_COLSET
		JR	DX_OBJ_200

;------------------------------------------------------------------------
;	きらり
;------------------------------------------------------------------------
DX_OBJ_100
;------------------------------------------------------------------------
;	ＤＸ
;------------------------------------------------------------------------
DX_OBJ_200
		LD	A,(CGBFLG)
		AND	A
		JR	Z,DX_OBJ_300

;-----<	ＣＧＢ >---------------------------------------------------------
		LD	A,(DXCLPT)
		CP	8
		JR	Z,DX_OBJ_250

		LD	HL,DX2_oam_data_CGB
		LD	C,DX2_oam_cnt_CGB
		JR	DX_OBJ_400
DX_OBJ_250
		LD	HL,DX_oam_data_CGB
		LD	C,DX_oam_cnt_CGB
		JR	DX_OBJ_400

;-----<	ＧＢ >-----------------------------------------------------------
DX_OBJ_300
		LD	A,(DXCLPT)
		CP	3
		JR	nc,DX_OBJ_350

		LD	HL,DX2_oam_data_GB
		LD	C,DX2_oam_cnt_GB
		JR	DX_OBJ_400
DX_OBJ_350
		LD	HL,DX_oam_data_GB
		LD	C,DX_oam_cnt_GB
DX_OBJ_400
		CALL	ENOMST

		RET

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ＧＢ版 ＤＸカラー転送						x
;x----------------------------------------------------------------------x
;x	    ＥＮＴＲＹ							x
;x		Ａ         ： カラーパターンＮｏ．			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
DX_GB_COLSET
		LD	B,$0
		LD	C,A
		LD	HL,DX_color_data_GB0
		ADD	HL,BC
		LD	A,(HL)
		LD	(OBP0FG),A	; ＯＢＪパレット（０）
		LD	HL,DX_color_data_GB1
		ADD	HL,BC
		LD	A,(HL)
		LD	(OBP1FG),A	; ＯＢＪパレット（１）
		RET

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ＣＧＢ版 ＤＸカラー転送						x
;x----------------------------------------------------------------------x
;x	    ＥＮＴＲＹ							x
;x		Ａ         ： カラーパターンＮｏ．			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
DX_CGB_COLSET
;;;;;;;;		LD	B,A
		SLA	A
;;;;;;;;		ADD	A,B
		SLA	A
		SLA	A
		SLA	A		; ×１０
		LD	B,$0
		LD	C,A
		LD	HL,DX_color_data_CGB
		ADD	HL,BC
		LD	BC,CGWORK+0068H	; アトリビュート５＆６
		LD	E,$10
;;;;;;;;		LD	E,$18
DXCSET_100
		LD	A,(HLI)
		LD	(BC),A
		INC	BC
		DEC	E
		JR	NZ,DXCSET_100

		LD	A,5*4		; ５−１から
		LD	(COLOFS),A	; 転送オフセット
		LD	A,4*2		; ２列
		LD	(COLLNG),A	; 転送長さ
		LD	A,OBJCOL_BITFG|$80
		LD	(CGDMAF),A	; 転送フラグ（部分転送）
		RET

;=========================================
YMRVD1
	DB	$98,$00,$43,$7D
	DB	$98,$20,$43,$7D
	DB	$98,$40,$43,$7D
	DB	$98,$60,$43,$7D
	DB	$00
YMRVD2
	DB	$98,$04,$03
	DB	    $7D,$7D,$4C,$4D
	DB	$98,$24,$43,$7D
	DB	$98,$44,$43,$7D
	DB	$98,$64,$43,$7D
	DB	$00
;YMRVD1
;	DB	$98,$00,$48,$7D
;	DB	$98,$20,$48,$7D
;	DB	$98,$40,$48,$7D
;	DB	$00
;;
;YMRVD2
;	DB	$98,$60,$47,$7D
;	DB	$98,$80,$47,$7D
;	DB	$00
;YMRVD3
;	DB	$98,$0C,$45,$7D
;	DB	$98,$2C,$43,$7D
;	DB	$00
;;-- -- -- -- -- -- -- -- -- -- -- -- --
;YAMARV3
;	LD	HL,YMRVD3
;	JR	YMR008
YAMARV2
	LD	HL,YMRVD2
	JR	YMR008
YAMARV1
	LD	HL,YMRVD1
YMR008
	LD	DE,VRAMD+1
	PUSH	BC
	LD	C,$18
YMR010
	LD	A,(HLI)
	LD	(DE),A
	INC	DE
	DEC	C
	JR	NZ,YMR010
;
	POP	BC
	RET
;======================================
LINKCD
	DB	$10,$00,$12,$00
	DB	$14,$00,$16,$00
;;0
;	DB	$00,$00,$0C,$00
;	DB	$00,$08,$10,$00
;	DB	$10,$00,$0E,$00
;	DB	$10,$08,$0E,$20
;;1
;	DB	$00,$00,$38,$00
;	DB	$00,$08,$3A,$00
;	DB	$10,$00,$14,$00
;	DB	$10,$08,$14,$20
;;2
;	DB	$00,$00,$12,$00
;	DB	$00,$08,$16,$00
;	DB	$10,$00,$14,$00
;	DB	$10,$08,$14,$20
;;3
;	DB	$00,$00,$18,$00
;	DB	$00,$08,$1A,$00
;	DB	$10,$00,$14,$00
;	DB	$10,$08,$14,$20
;;4
;	DB	$00,$00,$1A,$20
;	DB	$00,$08,$18,$20
;	DB	$10,$00,$14,$00
;	DB	$10,$08,$14,$20
;- - - - - - - - - - - - - - - - - -
LINKMV
	LD	A,(ENSVXL)
	CP	$F0
	JR	NC,LKM00C0
;
	XOR	A
	LD	(ENMOD0),A
;
	LD	DE,LINKCD
	CALL	EN2CST
;
	LD	A,(ENOMID)
	ADD	A,$08
	LD	(ENOMID),A
;
LKM00C0
;
;	LD	A,(ENCHPT2)
;	SLA	A
;	SLA	A
;	SLA	A
;	SLA	A
;	LD	E,A
;	LD	D,B
;	LD	HL,LINKCD
;	ADD	HL,DE
;	LD	C,$04
;	CALL	ENOMST
;;
;	LD	A,(ENOMID)
;	ADD	A,$10
;	LD	(ENOMID),A
;
	LD	A,(ENSTAT2)
	RST	00
	DW	LINKWT
	DW	LINKUP
	DW	LINKED
	DW	LINKTM
;-------------------------------
LINKWT
	CALL	LDTIM0
	DEC	(HL)
	JR	NZ,LKW010
;
	LD	(HL),$90
;
	CALL	STATINC
LKW010
	RET
;-------------------------------
;LKCHPT
;	DB	3,3,3,3,3,3,3,3
;	DB	3,3,3,3,3,3,3,2
;	DB	3,3,2,4,4,4,4,2
;	DB	2,2,2,2,2,2,2,1
;	DB	2,1,2,2,2,1,1,1
;	DB	1,1,1,1,0,0,0,0
;	DB	0,0,0,0,0,0,0,0
;	DB	0,0,0,0,0,0,0,0
;- - - - - - - - - - - - - - - - - -
LINKUP
	LD	A,(FRCNT)
	AND	$03
	JR	NZ,LKU090
;
	CALL	LDTIM0
	DEC	(HL)
	JR	Z,LKU0B0
;;	JR	LKU0B0
;;
;	LD	A,(HL)
;	RRA
;	RRA
;	AND	$3F
;	LD	E,A
;	LD	D,B
;	LD	HL,LKCHPT
;	ADD	HL,DE
;	LD	A,(HL)
;	CALL	ENPTST
LKU090
	RET
LKU0B0
;;	LD	(HL),$80
;;;
	JP	STATINC
;-------------------------------
LINKED
	LD	A,(YAMACT)
	CP	$13
	JR	Z,LKE090
;
;;	LD	A,(FRCNT)
;;	AND	$03
;;;11/11	LD	A,(OPWRK7),A
	LD	A,(OPWRK7)
	INC	A
	LD	(OPWRK7),A
	AND	$03
	JR	NZ,LKE020
;
	LD	A,(ENYPSL)
	CP	$A0
	JR	NC,LKE010
	INC	A
	LD	(ENYPSL),A
LKE010
	LD	A,(ENYPSL+1)
	CP	$A0
	JR	NC,LKE018
	INC	A
	LD	(ENYPSL+1),A
LKE018
;
	LD	A,(SCCV)
	PUSH	AF
	DEC	A
	LD	(SCCV),A
	POP	AF
	AND	$07
	JR	NZ,LKE020
;
	PUSH	BC
	CALL	EGGMWT
	POP	BC
	LD	A,(YAMACT)
	CP	$0B
	JR	NZ,LKE020
;;
	LD	A,$01
	LD	(SOUND4),A	;(S)
;
;	CALL	SOUNDOUT	;(S)
LKE020
	RET
LKE090
	CALL	STATINC
	CALL	LDTIM0
	LD	(HL),$17 ;58
;
;;	LD	A,$01
;;	LD	(SOUND4),A	;(S)
;
	LD	A,$07
	LD	(SLEVEL),A
	LD	A,$70
	LD	(SLEVEL2),A
	RET
;====================================================
LINKTM
	LD	A,(FRCNT)
	AND	$03
	JR	NZ,LKT010
;
	CALL	LDTIM0
	DEC	(HL)
	JR	NZ,LKT010
;
;	XOR	A
;	LD	(BGPFG),A
;	LD	(BGP),A
;;
;	JP	OPSTART
	CALL	ITMINC	; Goto "ZELDA" logo set mode !
;
	XOR	A
	LD	(OPWRK2),A
	LD	(OPWRK3),A
	LD	(OPWRK4),A
;
	LD	(ENMODE+0),A
	LD	(ENMODE+1),A
LKT010
	RET
;======================================================
;=	森田さん やってくれますか 飯おごりますんで！  =
;======================================================
EGGMDT
;;;11/11;9BE0
;;;11/11	DB	$7C,$7C,$44,$45,$7D,$7D,$7D,$7D,$7D,$7D,$7D
;;;11/11	DB	$7D,$7D,$7D,$7D,$7D,$4C,$4D,$7C,$7C
;;;11/11;9BC0
;;;11/11	DB	$7C,$7C,$7C,$7C,$44,$45,$7D,$7D,$7D,$7D,$7D
;;;11/11	DB	$7D,$7D,$7D,$4C,$4D,$7C,$7C,$7C,$7C
;;;11/11;9BA0
;;;11/11	DB	$7C,$7C,$7C,$7C,$7C,$70,$71,$72,$73,$74,$75
;;;11/11	DB	$76,$77,$78,$79,$7C,$7C,$7C,$7C,$7C
;;;11/11;9B80
;;;11/11	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$46,$7D,$7D,$7D
;;;11/11	DB	$7D,$4B,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;11/11;9B60
;;;11/11	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$5C,$5D,$5E
;;;11/11	DB	$5F,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;11/11;9B40
;;;11/11	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$58,$59,$5A
;;;11/11	DB	$5B,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;11/11;9B20
;;;11/11	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$54,$55,$56
;;;11/11	DB	$57,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;11/11;9B00
;;;11/11	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$50,$51,$52
;;;11/11	DB	$53,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;11/11;9AE0
;;;11/11	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$2B,$2C
;;;11/11	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;11/11;9AC0
;;;11/11	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;11/11	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;11/11;9AA0
;;;11/11	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;11/11	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;11/11;9A80
;;;11/11	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;11/11	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;11/11;9A60
;;;11/11	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;11/11	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;11/11;9A40
;;;11/11	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;11/11	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;11/11;9A20
;;;11/11	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;11/11	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;11/11;9A00
;;;11/11	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;11/11	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;11/11;99E0
;;;11/11	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;11/11	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;11/11;99C0
;;;11/11	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;11/11	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;11/11;99A0
;;;11/11	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;11/11	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;11/11;9980
;;;11/11	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;11/11	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;11/11;9960
;;;11/11	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;11/11	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;11/11;9940
;;;11/11	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;11/11	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;11/11;9920
;;;11/11	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;11/11	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;11/11;9900
;;;11/11	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;11/11	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;11/11;98E0
;;;11/11	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;11/11	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;11/11;98C0
;;;11/11	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;11/11	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;11/11;98A0
;;;11/11	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;11/11	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;11/11;9880
;;;11/11	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;11/11	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;11/11;9860
;;;11/11	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;11/11	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;11/11;9840
;;;11/11	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;11/11	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;11/11;9820
;;;11/11	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;11/11	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;11/11;9800
;;;11/11	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;11/11	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;
;9BE0（実際は9B4F）
	DB	$7C,$7C,$44,$45,$7D,$7D,$7D,$7D,$7D,$7D,$7D
	DB	$7D,$7D,$7D,$7D,$7D,$4C,$4D,$7C,$7C
;9BC0
	DB	    $7C,$7C,$7C,$7c,$44,$45,$7d,$2d,$2e,$2d
	DB	    $2e,$2d,$2e,$7d,$4c,$4d,$7c,$7c,$7c,$7c
;9BA0
	DB	    $7C,$7C,$7C,$7c,$7c,$77,$46,$7e,$7e,$7e
	DB	    $7e,$7e,$7e,$4b,$79,$7c,$7c,$7c,$7c,$7c
;9B80
	DB	    $7C,$7C,$7C,$77,$75,$7e,$7e,$7e,$7e,$7e
	DB	    $7e,$7e,$7e,$7e,$7e,$75,$78,$7C,$7C,$7C
;9B60
	DB	    $7C,$7C,$77,$7a,$7a,$74,$73,$74,$5C,$5D
	DB	    $5E,$5F,$73,$74,$73,$7a,$7e,$78,$7C,$7C
;9B40
	DB	    $7C,$7C,$73,$75,$78,$77,$78,$79,$58,$59
	DB	    $5A,$5B,$79,$79,$77,$75,$7e,$74,$7c,$7C
;9B20
	DB	    $7C,$7C,$7C,$73,$74,$76,$73,$7a,$54,$55
	DB	    $56,$57,$7a,$74,$76,$73,$74,$7C,$7C,$7C
;9B00
	DB	    $77,$78,$7C,$79,$7C,$7C,$7C,$7C,$50,$51
	DB	    $52,$53,$7C,$7C,$7C,$7C,$7C,$7C,$77,$78
;9AE0
	DB	    $7e,$7e,$75,$7e,$78,$77,$75,$78,$79,$2B
	DB	    $2C,$79,$79,$77,$75,$78,$77,$75,$7e,$7e
;9AC0
	DB	    $7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e
	DB	    $7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e
;9AA0
	DB	    $7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e
	DB	    $7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e
;9A80
	DB	    $7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e
	DB	    $7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e
;9A60
	DB	    $7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e
	DB	    $7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e
;9A40
	DB	    $7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e
	DB	    $7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e
;9A20
	DB	    $7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e
	DB	    $7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e
;9A00
	DB	    $7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e
	DB	    $7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e
;99E0（雲ベタ）
	DB	    $7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e
	DB	    $7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e
;99C0（雲ベタ）
	DB	    $7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e
	DB	    $7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e
;99A0（雲ベタ）
	DB	$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e
	DB	$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e

EGGMWT
	LD	A,(YAMACT)
	AND	A
	JR	NZ,EGG010
;
	LD	A,$F4
	LD	(EGGZL),A
;
	LD	A,$9B
	LD	(EGGZH),A
;
EGG010
	LD	A,(YAMACT)
	LD	E,A
	LD	D,$00
	SLA	E
	RL	D
	SLA	E
	RL	D
	LD	A,E
	SLA	E
	RL	D
	SLA	E
	RL	D
	ADD	A,E
	LD	E,A
	LD	A,D
	ADC	A,$00
	LD	D,A
;
	LD	C,$00
;
EGVSET
	LD	HL,VRAMD+$01
	LD	A,(EGGZH)
;
	LD	(HLI),A
;
	LD	A,(EGGZL)
	LD	(HLI),A
;
	LD	A,$13
	LD	(HLI),A
;
EGGLP
	PUSH	HL
;
	LD	HL,EGGMDT
	ADD	HL,DE
	LD	A,(HL)
;
	POP	HL
;
	LD	(HLI),A
;
	INC	DE
	INC	C		;デ−タのカウンタ−($0-$13)
	LD	A,C
	CP	$14
	JR	NZ,EGGLP
;
	LD	(HL),$00
;
;-------------------------------------------------------------
	LD	A,(CGBFLG)
	AND	A		; カラーゲームボーイ？
	JR	Z,EGGLP_10	; ＮＯ

	CALL	EGGMWT_AT	; (CGB)アトリビュートセット
EGGLP_10
;-------------------------------------------------------------
;
	LD	HL,YAMACT
	INC	(HL)
;
	LD	A,(EGGZL)   ;座標Ｌｏｗの設定(($E0-$009)(毎-$20))
	SUB	$20
	LD	(EGGZL),A
;
	LD	A,(EGGZH)   ;座標Ｈｉｇｈの設定($9B,$9A,$99)
	SBC	A,$00
	LD	(EGGZH),A
;
	RET

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	EGGMWT アトリビュートセット					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
EGGMWT_AT
		LD	HL,VRAMD_AT+$01
		LD	A,(EGGZH)
		LD	(HLI),A		; ＶＲＡＭアドレスＨＩＧＨ
		LD	A,(EGGZL)
		SUB	$14
		LD	(HLI),A		; ＶＲＡＭアドレスＬＯＷ

		LD	A,%01000000 | $20-1	; 横、共通、２０Ｈ
		LD	(HLI),A
		LD	A,$03		; アトリビュート
		LD	(HLI),A
		LD	(HL),$00	; エンドコード

		RET
;------------------------------------------------------------------------

;======================================
;======================================
;======================================
;======================================
OPSEAD	; Sea chr adress 1
	DW	CHRDAT+$1000
	DW	CHRDAT+$1080
	DW	CHRDAT+$1100
	DW	CHRDAT+$1180
OPSEA2	; Sea chr adress 2
	DW	CHRDAT+$1200
	DW	CHRDAT+$1280
	DW	CHRDAT+$1300
	DW	CHRDAT+$1380
OPSECT
	DB	0,2,4,6,6,4,2,0
OPSCYD
	DB	3,2,1,0,0,1,2,3
;	DB	4,5,6,6
;	DB	6,5,4,3
;	DB	2,1,0,0
;
;- - - - - - - - - - - - - - -
OPSCRL
	LD	HL,SCCH1
;
	LD	A,(FRCNT)
	AND	$07
	JR	NZ,OPN020
;
	INC	(HL)
OPN020
	INC	HL
;
	LD	A,(FRCNT)
	AND	$0F
	JR	NZ,OPN030
;
	INC	(HL)
OPN030
	INC	HL
;
	LD	A,(FRCNT)
	AND	$1F
	JR	NZ,OPN050
;
	INC	(HL)
OPN050
	INC	HL
;
	LD	A,(FRCNT)
	AND	$0F
	JR	NZ,OPN060
;
	INC	(HL)
OPN060
	INC	HL
;
;;	LD	A,(FRCNT)
;;	AND	$07
;;	JR	NZ,OPN068
	LD	A,(OPWRK4)
	ADD	A,$28
	LD	(OPWRK4),A
	JR	NC,OPN068
;
	INC	(HL)
;	LD	A,(HL)
;	ADD	A,$08
;	LD	(HL),A
OPN068
	LD	A,(FRCNT)
	ADD	A,$FC
	RRA
	RRA
	RRA
	RRA
	AND	$07
	LD	E,A
	LD	D,$0
	LD	HL,OPSCYD
	ADD	HL,DE
	LD	A,$00
	SUB	(HL)
	LD	(SCCV1),A
;- -  Nami chr TR. - -
NMCHTR
	LD	A,(FRCNT)
	AND	$0F
	CP	$04
	JR	C,NMT7000
;
NMCHTRS
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	RRA
	AND	%00000111
	LD	E,A
	LD	D,$00
	LD	HL,OPSECT
	ADD	HL,DE
	LD	E,(HL)
	LD	HL,OPSEAD
;;	LD	A,(ITMODE)
;;	CP	OPAF
;;	JR	C,NMTR08
	LD	A,(OPWRK8)
	AND	A
	JR	Z,NMTR08
	LD	HL,OPSEA2
NMTR08
	ADD	HL,DE
	LD	A,(HLI)
	LD	H,(HL)
	LD	L,A
;
	LD	DE,CHRRAM+$0900
;
;;	LD	A,(ITMODE)
;;	CP	OPAF
;;	JR	C,NMTR10
	LD	A,(OPWRK8)
	AND	A
	JR	Z,NMTR10
;
	LD	DE,CHRRAM+$1300
NMTR10
	LD	A,(FRCNT)
	AND	%00000011
;;	JR	Z,PT2010
	SLA	A
	SLA	A
	SLA	A
	SLA	A
	SLA	A
;
	LD	E,A
	ADD	A,L
;;	LD	A,L
;;	ADD	A,$40
	LD	L,A
;
;;	LD	E,$0040
PT2010
	LD	A,L
	LD	(NMCH0L),A
	LD	A,H
	LD	(NMCH0H),A
	LD	A,E
	LD	(NMCH1L),A
	LD	A,D
	LD	(NMCH1H),A
NMT7000
	RET
;======================================
OPSCRL2
	LD	HL,SCCH1
;
	LD	A,(FRCNT)
	AND	$07
	JR	NZ,OPN220
;
	INC	(HL)
OPN220
;;	INC	HL
OPS2SUB
	LD	HL,SCCH2
;
	LD	A,(OPWRK4)
	ADD	A,$50
	LD	(OPWRK4),A
	JR	NC,OPN230
;
	INC	(HL)
OPN230
	INC	HL
;
	LD	A,(OPWRK5)
	ADD	A,$58
	LD	(OPWRK5),A
	JR	NC,OPN250
;
	INC	(HL)
OPN250
	INC	HL
;
	LD	A,(OPWRK6)
	ADD	A,$B0
	LD	(OPWRK6),A
	JR	NC,OPN260
;
	INC	(HL)
OPN260
	JP	NMCHTR
;======================================
OPSCRL22
	LD	HL,SCCH1
;
	LD	A,(FRCNT)
	AND	$0F
	JR	NZ,OPN2202
;
	INC	(HL)
OPN2202
;;	INC	HL
OPS2SUB2
	LD	HL,SCCH2
;
	LD	A,(OPWRK4)
	ADD	A,$28
	LD	(OPWRK4),A
	JR	NC,OPN2302
;
	INC	(HL)
OPN2302
	INC	HL
;
	LD	A,(OPWRK5)
	ADD	A,$2C
	LD	(OPWRK5),A
	JR	NC,OPN2502
;
	INC	(HL)
OPN2502
	INC	HL
;
	LD	A,(OPWRK6)
	ADD	A,$58
	LD	(OPWRK6),A
	JR	NC,OPN2602
;
	INC	(HL)
OPN2602
	JP	NMCHTR
;
		end
;