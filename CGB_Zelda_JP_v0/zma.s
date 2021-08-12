
		onbankgroup

;==============	バンク０ ================================================
BANK0		GROUP	0
;-------------<	ZCO >-------------
		EXTERN	IDJMP,CONT,LCDC_OFF,V_RAMC,RAMCLR,V_RAMB,SVOPEN
		EXTERN	V_RAMD,RMCLSB,VRAMTR,VRAMTR1,VRAMTR2,DATA_MOV
;
;-------------<	ZPL >-------------
		EXTERN	PLAY,FDIN,FDOUT,MSSCR2S,MSSCR3S,PLCSET,PLCHTR
		EXTERN	GPLAY,ONOFSUB,MSSC2,MSSC3,OPING,PSLCT,NMCPY,LOVED
		EXTERN	ENDG,GEKI00,ITSEL
;
;-------------<	ZES >-------------
		EXTERN	ENOMST
;
;-------------<	ZBS >-------------
		EXTERN	DJBKST,GRBKST,BANKTR,GMAPBKST,GOVBKST,GMAPCHST
		EXTERN	PEACHBKST,LOVEBKST,KAB1BKST,KABABKST,BANKST
		EXTERN	BANKS2,BANKS3,RMBGST,OPBKST,OPBKS2,BKTRBD
		EXTERN	TOUBGCH,ENDCHA,ENDCHB2,ENDCHC,ENDCHB,ENDCHD,ENDCHE
		EXTERN	ENDCHF,ENDCHG,ENDCHA1,ENDCHYM,ENDCHA2
;
;-------------<	ZMSSUB >-------------
		EXTERN	MESEGE
;
;==============	バンク１ ================================================
BANK1		GROUP	1
;-------------<	ZS1 >-------------
;(CGB)		EXTERN	MSOMCL,DMASET,GAKKIST,TITLX,OAMCLR,OPA,TLX
		EXTERN	MSOMCL,DMASET,GAKKIST,OAMCLR,OPA,TLX
;
;-------------<	ZTI >-------------
		EXTERN	DMAPSUB,ODEMOSUB,DSPINT,NAMESET,GPMA
		EXTERN	PRN
;
;==============	バンク２ ================================================
BANK2		GROUP	2
;-------------<	ZEX >-------------
		EXTERN	DIMAPS,DIMAP2,DIMAP3,DIMAP4
;
;==============	バンク３ ================================================
BANK3		GROUP	3
;-------------<	ZEN >-------------
		EXTERN	JYANPS
;
;==============	バンク７ ================================================
BANK7		GROUP	7
;-------------<	ZE5 >-------------
		EXTERN	TAKIBMV
;
;==============	バンク８ ================================================
BANK8		GROUP	8
;-------------<	ZVD >-------------
		EXTERN	PEACHDT,LOVEDT,KABADT,PSLCTBG,WINDBG,PSLCTBG2
		EXTERN	NSLCTBG,NCLERBG,GMAPBG,GOVERBG,GMAPCLB,NCOPYBG
		EXTERN	TSAVEBG,OPENBG,OPENBG2,OPENBG3,LOGODT,WINDBG2
		EXTERN	MAMUUBG,KABEDT1,TOUBGDT,ENDYMBG,EWAKUBG,EWAKUBG2
		EXTERN	ENDBGA1,ENDBGA2,ENDBGA3,ENDBGA4,ENDBGA5,ENDBGA
		EXTERN	ENDBGB2,ENDBGC,ENDBGB,ENDBGD,ENDBGE,ENDBGF,ENDBGG
;
;==============	バンク１４ ==============================================
BANK14		GROUP	$14
;-------------<	ZEX >--------------
		EXTERN	OKWARPST,WAVDT,CLCHDB,CLCHDB2,CLCHDO,CLCHDO2
		EXTERN	OKARINA_FADE,WAV_SCRL
;
;==============	バンク１７ ==============================================
BANK17		GROUP	$17
;-------------<	ZEND >-------------
		EXTERN	ENDWAVE,ENDBS
;
;==============	バンク１Ａ ==============================================
BANK1A		GROUP	$1A
;-------------<	ZBDATR >-------------
		EXTERN	BgAtrAddress,DR_AT_Address
;-------------<	ZMAP >------------
		EXTERN	Unit_check
;
;==============	バンク１Ｃ ==============================================
BANK1C		GROUP	$1C
;-------------<	ZMS >-------------
                EXTERN  MSVRSV
;
;==============	バンク１Ｆ ==============================================
BANK1F		GROUP	$1F
;-------------<	ZSD >-------------
                EXTERN  SOUNDSB,SOUNDST,SOUNDIT,SOUNDCL
;
;==============	バンク２０ ==============================================
BANK20		GROUP	$20
;-------------<	ZJP >-------------
		EXTERN	VRADR_SET,BLNKSUB_JMP,NewDJChrSet
		EXTERN	GET_INIT_EN
;-------------<	ZFADE >-----------
		EXTERN	OpenWhiteOut,OpenWhiteIn,OpenFlash
		EXTERN	AllWhiteSet,AllColorSet,DownColorSet
		EXTERN	CGB_OKARINA_FADE,GK_WhiteOut,FUKU_WhiteOut
;-------------<	ZPLSUB >----------
		EXTERN	TITLX,HakaCheck,NEWDJ_COIN_CHK,NEWDJ_COINBF_CLR
		EXTERN	NEWDJ_TEKI_CHR,NEWDJ_UNSH,TRNPRN_CHK
;-------------<	ZMAP >------------
		EXTERN	Unit_check
;
;==============	バンク２１ ==============================================
BANK21		GROUP	$21
;-------------<	ZCOL >------------
		EXTERN  COLOR_SET,COLOR_TRAN
;
;==============	バンク２４ ==============================================
BANK24		GROUP	$24
;-------------<	ZATR >------------
		EXTERN	VRAMST_ATR,VRAMTR_ATR,V_RAMC_ATR
;
;==============	バンク２８ ==============================================
BANK28		GROUP	$28
;-------------<	ZCA >------------
		EXTERN	CHR_TRANSFER,SCR_TRANSFER,COL_TRANSFER
		EXTERN	SCR_VRAM_ADRS,RETURN_GAME
;-------------<	ZPR >------------
		EXTERN	SioWatchDog,detaset,SioInt_sub
		EXTERN	P_fdin,P_retn
;
;============== バンク３６ ==============================================
BANK36		GROUP	$36
;-------------<	ZE9 >-------------
		EXTERN	ZE9_BANK,FUKU_YOUSEI,FLY_KONA,GET_FUKU
		EXTERN	FK_BOSS_KOBUN,BBGBRST,OAMGYAK,OKARINA_COLST
		EXTERN	GAKKI_COL_SET,GEKI_ZORA,HINTO_READ,GEKI05_CHECK
;
;============== バンク３８ ==============================================
BANK38		GROUP	$38
;-------------<	ZGKANM >-----------
		EXTERN	ANIME_TRNC
;
;============== バンク３Ｃ ==============================================
BANK3C		GROUP	03ch
;-------------<	ZGKSCR >-----------
		EXTERN	GEKI_SCRN
;-------------<	zsgb >-----------
		extern	sgbchk
;
;============== バンク３Ｄ ==============================================
BANK3D		GROUP	$3D
;-------------<	ZGKSCR >-----------
		EXTERN	GEKI_SCRN
;
;========================================================================
	PUBALL
;
BANK0	GROUP	0

	LIB	ZRAM		; RAM ＥＱＵＡＴＥ ファイル
	LIB	ZBN		; BG unit no file !
	LIB	ZROM ;NINTENDO	; 登録 データ ファイル
;;;;;	lib	../cgb_zeldausa/cgb/zrom1
	KANJI
;************************************************
;*	割り込み ＪＵＭＰ ＴＡＢＬＥ		*
;************************************************

	ORG	$00
	JP	IDJMP		; ＲＳＴ ０
;
HIMITSU
	DB	$00
HIMITSU2
	DB	$00
HIMI2
	DB	$00
;------- Ｖ－ＢＬＡＮＫ 割り込み -------

	ORG	$40
	JP	V_BLANK
;
;------- ＬＣＤＣ ステータス 割り込み -------

	ORG	$48
;
;	NOP
;	NOP
;	NOP
;	NOP
	JP	LCDCI	; Part scroll !!
;	RETI
;
;------- ＴＩＭＥＲ 割り込み -------

	ORG	$50
	RETI
;
;------- ＳＩＯ 割り込み -------

	ORG	$58
	jp	SioInt
;
;------- ＫＥＹ入力 割り込み -------

	ORG	$60
	RETI
	ORG	$62
;==================================
HARTCH1
	LD	HL,CHRDAT+$2900	; キャラクタ データ
	LD	DE,CHRRAM+$09A0	; キャラクタ ＲＡＭ ($8000 - $97FF)
	JR	HRTC00
;==================================
HARTCH2
	LD	HL,CHRDAT+$2930	; キャラクタ データ
	LD	DE,CHRRAM+$09D0	; キャラクタ ＲＡＭ ($8000 - $97FF)
	JR	HRTC00
;==================================
HARTCH3
	LD	HL,CHRDAT+$09D0	; キャラクタ データ
	LD	DE,CHRRAM+$09D0	; キャラクタ ＲＡＭ ($8000 - $97FF)
	JR	HRTC00
;==================================
HARTCH4
	LD	HL,CHRDAT+$09A0	; キャラクタ データ
	LD	DE,CHRRAM+$09A0	; キャラクタ ＲＡＭ ($8000 - $97FF)
;
HRTC00
	LD	BC,$0030	; 個数 
	CALL	DATA_MOV	; キャラクタ 転送
;
	XOR	A
	LD	(BKCHFG),A
	LD	(BKCHCT),A
BKCHG10
	LD	A,$0C
	LD	($2100),A
	RET
;-------------------------------------
;************************************************
;*	プログラム スタート			*
;************************************************

	ORG	$150

RESET
;--------------------------------------------------------
;	(CGB)  本体判別
;--------------------------------------------------------
;;;;;	nop		; RESET10 に飛ばす（ＧＢ用）の場合
;;;;;	nop		; １５０番地に 18,1B を入力

	CP	$11		; カラーゲームボーイ？
	JR	NZ,RESET10	; ＮＯ
;--------------------------------------------------------
;	(CGB)  高速テスト
;--------------------------------------------------------
	LD	A,(KEY1)
	AND	%10000000	;既に高速モードになっている？
	JR	NZ,RESET00	;	YES --> RESET00
	LD	A,$30
	LD	(P1),A
	LD	A,$01
	LD	(KEY1),A
	XOR	A
	LD	(IE),A
	STOP
RESET00
	XOR	A
	LD	(SVBK),A
	LD	A,$01
	JR	RESET20
RESET10
	XOR	A
RESET20
	LD	(CGBFLG),A	; ＣＧＢフラグ セット
;--------------------------------------------------------
;
	CALL	LCDC_OFF	; ＬＣＤＣ ストップ

	LD	SP,STACK	; スタック ロケーション 変更

		ld	a,:sgbchk
		ld	(2100h),a
		call	sgbchk
;
	XOR	A
	LD	(BGP),A
	LD	(OBP0),A
	LD	(OBP1),A
;
	LD	HL,CHRRAM
	LD	BC,$1800
	CALL	RMCLSB		; Character All clear !!
;
;-------------------------------------------------------------
	LD	A,:V_RAMC_ATR	; (CGB)
	LD	($2100),A	; (CGB)
	CALL	V_RAMC_ATR	; (CGB)Ｖ－ＲＡＭ アトリビュートクリア
;-------------------------------------------------------------
;
	CALL	V_RAMC		; Ｖ－ＲＡＭ クリア
;
	CALL	RAMCLR		; RAM clear !
;
;-------------------------------------------------------------
;
	LD	A,$01
	LD	($2100),A
	CALL	DMASET		; ＤＭＡ プログラムをＲＡＭに展開
	CALL	DMASUB
;
	CALL	DSPINT
;
	CALL	BANKST		; Chr bank set
;
	LD	A,%01000100
	LD	(STAT),A
	LD	A,$4F
	LD	(LYC),A		; Part scroll line set !
	LD	A,$01
	LD	(PBANK),A
;- - - - Play initial - - -
	LD	A,%00000001	; V BLANK only (& LCDC)  割り込み 許可
	LD	(IE),A
;
	CALL	NAMESET	
;
	LD	A,$1F
	LD	($2100),A
	CALL	SOUNDIT
;
	LD	A,$18
	LD	(OPKYTM),A	; Opening Logo display wait !
;
	EI			; 割り込み イネーブル
;
	LD	A,$020
	LD	($2100),A
	CALL	NEWDJ_COINBF_CLR
;
	JP	MAIN00
;****************************************
;*       ＭＡＩＮ ＰＲＯＧＲＡＭ        *
;****************************************
MAIN
	LD	A,$1
	LD	(NMIFG),A
;---- Normal game ---
;
	LD	A,(MAMUUFG)
	AND	A
	JR	Z,HMIT108	;秘密実験！
;
	LD	A,(GMMODE)
	CP	GPLAY
	JR	NZ,HMIT108
;
	LD	A,(FRCNT)
	RRCA
	AND	%10000000
	JR	HMIT10A		;秘密実験！
;
HMIT108
	LD	HL,TILTYD	; SCROLL COUNT SET !
	LD	A,(SCCV)
	ADD	A,(HL)
HMIT10A
	LD	(SCY),A
;
HMIT10C
	LD	A,(SCCH)
	LD	HL,TILTXD
	ADD	A,(HL)
	LD	HL,SCXAD
	ADD	A,(HL)
	LD	(SCX),A
HMIT110
	LD	A,(BLNKFG)
	AND	A
	JR	NZ,MA0F0
;
	LD	A,(VRFLG)
	CP	0
	JR	Z,MA000
;
MA0F0
	LD	A,(GMMODE)
	CP	LOVED
	JR	Z,MA0EE
	CP	NMCPY+1
	JR	C,MA0EE
	CP	GPLAY
	JR	NZ,MA0DE
;
	LD	A,(ITMODE)
	CP	GPMA
	JR	NC,MA0DE	
;				
MA0EE
	CALL	SOUND		; Sound
	CALL	SOUND		; Sound
MA0DE
	DI
	CALL	VRAMST
	EI
;
	CALL	SOUND		; Sound
	CALL	SOUND		; Sound
;
	JP	MAIN00
;-------------------------------
MA000	
	LD	A,(LCDCB)
	AND	$7F
	LD	E,A
;
	LD	A,(LCDC)
	AND	%10000000
	OR	E
	LD	(LCDC),A
;
	LD	HL,FRCNT
	INC	(HL)
;
	LD	A,(GMMODE)
	CP	$00
	JR	NZ,MA0011
;
	LD	A,(ITMODE)
	CP	TLX-1
	JR	C,MA0011
;
;(CGB)	LD	A,$1
	LD	A,:TITLX
	LD	($2100),A
	CALL	TITLX		; (CGB) ZS1からZPLSUBに移動
;
MA0011
	LD	A,(WAVFLG)
	AND	A
	JP	Z,MA00001
;
	INC	A		;Ending wave ?
	JR	NZ,WAV100	;	NO --> WAV100
;
WAV080
	LD	A,$17
	LD	($2100),A
;
	CALL	ENDWAVE
	JP	MA00001		
;
WAV100
	INC	A		;FE?
	JR	Z,WAV080
;
	LD	A,$14		; YES !
	LD	($2100),A
;
	LD	A,(WAVTIM)
	INC	A
	LD	(WAVTIM),A
	CP	$C0  ;00
	JR	NZ,RURUR
;
	LD	A,(WAVFLG)
	CP	$2
	JR	NZ,WVS100	;オカリナワープ？
;		
	CALL	OKWARPST	;NXGOTO!
WVS100
	XOR	A
	LD	(WAVFLG),A
	LD	(WAVCNT4),A
	JP	MA00001
;
RURUR
		PUSH	AF
		CP	$60
		JR	C,WAV0100
;
		LD	A,(CGBFLG)
		AND	A
		JR	Z,GB_OKARINA
		LD	A,$20
		LD	($2100),A
		CALL	CGB_OKARINA_FADE
		JR	WAV0100
GB_OKARINA
		CALL	OKARINA_FADE
;
;;;CGB;;;	PUSH	AF
;;;CGB;;;;
;;;CGB;;;	AND	$07
;;;CGB;;;	JR	NZ,WAV0068
;;;CGB;;;;
;;;CGB;;;	LD	A,(WAVCNT4)
;;;CGB;;;	CP	$0C
;;;CGB;;;	JR	Z,WAV0080
;;;CGB;;;	INC	A
;;;CGB;;;	LD	(WAVCNT4),A
;;;CGB;;;;
;;;CGB;;;WAV0068
;;;CGB;;;	LD	A,(WAVCNT4)
;;;CGB;;;	LD	E,A
;;;CGB;;;	LD	A,(FRCNT)
;;;CGB;;;	AND	$03
;;;CGB;;;	ADD	A,E
;;;CGB;;;	LD	E,A
;;;CGB;;;	LD	D,$0
;;;CGB;;;;
;;;CGB;;;	LD	A,(WAVFLG)
;;;CGB;;;	CP	$03
;;;CGB;;;	JR	Z,WAV0078
;;;CGB;;;;
;;;CGB;;;	LD	HL,CLCHDB
;;;CGB;;;	ADD	HL,DE
;;;CGB;;;	LD	A,(HL)
;;;CGB;;;	LD	(BGPFG),A
;;;CGB;;;	LD	(OBP1FG),A
;;;CGB;;;	LD	HL,CLCHDO
;;;CGB;;;	ADD	HL,DE
;;;CGB;;;	LD	A,(HL)
;;;CGB;;;	LD	(OBP0FG),A
;;;CGB;;;	JR	WAV0080
;;;CGB;;;WAV0078
;;;CGB;;;	LD	HL,CLCHDB2
;;;CGB;;;	ADD	HL,DE
;;;CGB;;;	LD	A,(HL)
;;;CGB;;;	LD	(BGPFG),A
;;;CGB;;;	LD	(OBP1FG),A
;;;CGB;;;	LD	HL,CLCHDO2
;;;CGB;;;	ADD	HL,DE
;;;CGB;;;	LD	A,(HL)
;;;CGB;;;	LD	(OBP0FG),A
;;;CGB;;;WAV0080
;;;CGB;;;	POP	AF
;
WAV0100
		LD	A,$14
		LD	($2100),A
		POP	AF
		CALL	WAV_SCRL
;
;;;CGB;;;	SRL	A
;;;CGB;;;	SRL	A
;;;CGB;;;	LD	(WORK0),A
;;;CGB;;;	LD	A,(WAVTIM)
;;;CGB;;;	NOP
;;;CGB;;;	AND	%11100000
;;;CGB;;;	LD	E,A
;;;CGB;;;	LD	A,(WAVFLG)
;;;CGB;;;	CP	$03
;;;CGB;;;	JR	NZ,WAV1001
;;;CGB;;;;
;;;CGB;;;	LD	A,E
;;;CGB;;;	XOR	%11100000
;;;CGB;;;	LD	E,A
;;;CGB;;;WAV1001
;;;CGB;;;	LD	A,E
;;;CGB;;;	LD	(WORK1),A
;;;CGB;;;;
;;;CGB;;;	LD	HL,WAVCNT
;;;CGB;;;	XOR	A
;;;CGB;;;	LD	(HLI),A
;;;CGB;;;	LD	(HLI),A
;;;CGB;;;	LD	(HLI),A
;;;CGB;;;;
;;;CGB;;;MA001
;;;CGB;;;	LD	A,(STAT)
;;;CGB;;;	AND	%00000011
;;;CGB;;;	JR	NZ,MA001
;;;CGB;;;;
;;;CGB;;;	LD	D,$0
;;;CGB;;;MA002
;;;CGB;;;	LD	A,(WAVCNT3)
;;;CGB;;;	INC	A
;;;CGB;;;	LD	(WAVCNT3),A
;;;CGB;;;	AND	$01
;;;CGB;;;	JR	NZ,MA002	; Wait !
;;;CGB;;;;
;;;CGB;;;	LD	A,(WAVCNT)
;;;CGB;;;	ADD	A,$1
;;;CGB;;;	LD	(WAVCNT),A
;;;CGB;;;	LD	A,(WAVCNT2)
;;;CGB;;;	ADC	A,$0
;;;CGB;;;	LD	(WAVCNT2),A
;;;CGB;;;	LD	A,(WAVCNT)
;;;CGB;;;	CP	$58  ;68
;;;CGB;;;	JP	Z,MAIN00B
;;;CGB;;;MAA01
;;;CGB;;;	LD	C,$0
;;;CGB;;;;
;;;CGB;;;	LD	A,(WAVFLG)
;;;CGB;;;	CP	$01
;;;CGB;;;	JR	Z,MAAA10
;;;CGB;;;;
;;;CGB;;;	INC	C
;;;CGB;;;MAAA10
;;;CGB;;;	LD	HL,WAVCNT
;;;CGB;;;	LD	A,(WORK0)
;;;CGB;;;	ADD	A,(HL)
;;;CGB;;;	AND	$1F
;;;CGB;;;	LD	HL,WORK1
;;;CGB;;;	OR	(HL)
;;;CGB;;;	LD	E,A
;;;CGB;;;	LD	HL,WAVDT
;;;CGB;;;	ADD	HL,DE
;;;CGB;;;	LD	A,(WAVTIM)
;;;CGB;;;	AND	C ;%0
;;;CGB;;;	LD	A,(HL)
;;;CGB;;;	JR	Z,MASS0
;;;CGB;;;	CPL	
;;;CGB;;;	INC	A
;;;CGB;;;MASS0
;;;CGB;;;	PUSH	AF
;;;CGB;;;	LD	HL,SCCH
;;;CGB;;;	ADD	A,(HL)
;;;CGB;;;	LD	(SCX),A
;;;CGB;;;	POP	AF
;;;CGB;;;	LD	HL,SCCV
;;;CGB;;;	ADD	A,(HL)
;;;CGB;;;	LD	(SCY),A
;;;CGB;;;;
;;;CGB;;;	JP	MA001
;;;CGB;;;MAIN00B
;
	CALL	SOUND		; Sound
;
	LD	A,(BGPFG)	; color set !!
	LD	(BGP),A
	LD	A,(OBP0FG)
	LD	(OBP0),A
	LD	A,(OBP1FG)
	LD	(OBP1),A
	JP	MAIN00
;-------------------------------
MA00001
	LD	A,(WNDYPS)	; Window y pos set !
	LD	(WDY),A
;
	LD	A,(BGPFG)	; color set !!
	LD	(BGP),A
	LD	A,(OBP0FG)
	LD	(OBP0),A
	LD	A,(OBP1FG)
	LD	(OBP1),A
;
	CALL	SOUND		; Sound
;
	CALL	CONT		; キー 入力
;
	LD	A,(BKCHFG)
	LD	HL,BKCHF2
	OR	(HL)
	LD	HL,BKCHF3
	OR	(HL)
	JR	NZ,PSCK10
;
;-----------------------------------------------------------------
	LD	A,(HIMITSU)
	AND	A
	JR	Z,PSCK0A
;
	LD	A,(PAUSFG)
	AND	A
	JR	NZ,PSCK08
;
	LD	A,(KEYA1)
	AND	$0F
	JR	Z,PSCK09
;
PSCK08
	LD	A,(KEYA2)
	AND	%01000000
	JR	Z,PSCK09
;
	LD	A,(PAUSFG)
	XOR	$01
	LD	(PAUSFG),A
;
	JR	NZ,PSCK10
;
	LD	A,(BGCKOF)
	XOR	$10
	LD	(BGCKOF),A
;
	JR	PSCK10
PSCK09
	LD	A,(PAUSFG)
	AND	A
	JR	NZ,PSCK10
;
PSCK0A
		ld	a,(GMMODE)
		cp	ITSEL
		jr	nz,PSCK0A_050
;
		ld	a,(ITMODE)
		cp	002
		jr	c,PSCK0A_100
;
PSCK0A_050
	LD	A,$01
	CALL	PBSET
	CALL	OAMCLR
;
PSCK0A_100
	CALL	PLAY		; GAME SUB!

;------------------------------------------------------------------------
		LD	A,(CGBFLG)
		AND	A		; カラーゲームボーイ？
		JR	Z,COL_SET_PASS	;	NO --> COL_SET_PASS
		LD	A,$21
;(CGB)		LD	($2100),A
			call	PBSET
	CALL	COLOR_SET	; (CGB)カラーＲＡＭセット
COL_SET_PASS
		XOR	A
		LD	(COLFLG),A	; フラグクリア
;------------------------------------------------------------------------
	LD	A,$01
;(CGB)	LD	($2100),A
		call	PBSET
	CALL	MSOMCL		; In mesege window oam clear !
PSCK10
;-----------------------------------------------------------------
MAIN00
	LD	A,$1F
;(CGB)	LD	($2100),A
		call	PBSET
	CALL	SOUNDST
	LD	A,$0C
	CALL	Char_bank_set	; (CGB) キャラクターバンクセット
;(CGB)	LD	($2100),A
		call	PBSET
;
	XOR	A
	LD	(NMIFG),A
;
	HALT			; システム クロック 停止 電力節約
	NOP			; 必ずＮＯＰ
;
MAIN10
	LD	A,(VBLANK_F)	; Ｖ－ＢＬＡＮＫ 待ち
	AND	A
	JR	Z,MAIN10
;-----------------------------------------------------------------
	XOR	A
	LD	(VBLANK_F),A
;
	JP	MAIN
;-----------------------------------
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%    オープニング 部分スクロール			%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
LYCDT
	DB	$20,$30,$40,$60
	DB	$00
LYCDT2
	DB	$30,$56,$68,$00
;- - - - - - - - - - - - - -
LCDCI
	DI
;
	PUSH	AF
;
	PUSH	HL
	PUSH	DE
		push bc
		ld	a,(SVBK)
		ld	c,a
		xor	a
		ld	(SVBK),a
;
	LD	A,(GMMODE)
	CP	ENDG		;エンディング？
	JR	NZ,LII002	;	NO --> LII002
;
	LD	A,(ITMODE)
	CP	ENDBS ;;$05
	JR	NZ,LII0ED
;
	LD	A,(EDWRK0)
	JR	LII0ED2
;
LII0ED
	LD	A,(SCCV)
LII0ED2
	LD	(SCY),A
	JP	LII020
;
LII002
	CP	OPING		;オープニング？
	JR	NZ,LII010	;	NO --> LII010
;
;+----------------------------------------------+
;|	オープニングの部分スクロール		|
;+----------------------------------------------+
	LD	A,(OPSCCT)
	LD	E,A
	LD	D,$00
;
	LD	HL,SCCH1
	ADD	HL,DE	
	LD	A,(HL)
	LD	HL,SCCH
	ADD	A,(HL)
	LD	(SCX),A
;
	LD	A,(ITMODE)
	CP	OPA		;ホワイトイン終了？
	JR	C,OPENSUB	;	YES --> OPENSUB
;
	LD	HL,LYCDT2
	ADD	HL,DE
	LD	A,(HL)
	LD	(LYC),A
;
	LD	A,E
	INC	A
	AND	$03
	LD	(OPSCCT),A
;
	JR	LII020
;
;+----------------------------------------------+
;|	砂浜画面部分横スクロール		|
;+----------------------------------------------+
OPENSUB
	LD	HL,LYCDT
	ADD	HL,DE
	LD	A,(HL)
	LD	(LYC),A
;
	LD	A,E
	INC	A
	CP	$05
	JR	NZ,OPS009
	XOR	A
OPS009
	LD	(OPSCCT),A
;
	NOP
	CP	$04
	JR	NZ,LII020
;;;CGB;;;	JR	NZ,OPS010
;
	LD	A,(SCCV1)
	LD	(SCY),A
	CPL
	INC	A
	ADD	A,$60
	LD	(LYC),A
;;;CGB;;;OPS010
	JR	LII020
;
LII010
	XOR	A
	LD	(SCX),A
LII020
		ld	a,c
		ld	(SVBK),a
		pop	bc
	POP	DE
	POP	HL
	POP	AF
;
	EI
;
	RETI
;
;
;+------------------------------------------------------+
;|	ゲーム中 アイテムカラー転送（ CGB てすと ）	|
;+------------------------------------------------------+
;;;;;;GPL_LCDCI_COL
;;;;;;		DW	$0000,$0000,$0000,$0000	; ( 1 ) すべてしろ
;;;;;;
;;;;;;		DW	$385f,$385f,$385f,$385f	; ( 1 ) すべてしろ
;;;;;;		DW	$4105,$4105,$4105,$4105	; ( 2 ) すべてしろ
;;;;;;		DW	$7fff,$7fff,$7fff,$7fff	; ( 3 ) すべてしろ
;;;;;;;========================================================================
;;;;;;
;;;;;;GPLAY_LCDCI
;;;;;;		LD	A,(LYC)
;;;;;;		AND	A		; ＬＹ＝０？
;;;;;;		JR	NZ,GPL_LCD_100	; ＮＯ
;;;;;;
;;;;;;		LD	A,$40		; ウインドウポジション
;;;;;;		LD	(LYC),A
;;;;;;
;;;;;;;てすと
;;;;;;;てすと		LD	A,$0
;;;;;;;てすと		LD	(SCX),A
;;;;;;;てすと		JR	LII020
;;;;;;;てすと
;;;;;;;てすとGPL_LCD_100
;;;;;;;てすと		XOR	A
;;;;;;;てすと		LD	(LYC),A
;;;;;;;てすと		LD	A,$20
;;;;;;;てすと		LD	(SCX),A
;;;;;;;てすと		JR	LII020
;;;;;;
;;;;;;
;;;;;;		LD	DE,CGWORK
;;;;;;		JR	GPL_LCD_110
;;;;;;
;;;;;;;-----------------------------------------------
;;;;;;GPL_LCD_100
;;;;;;		XOR	A
;;;;;;		LD	(LYC),A
;;;;;;
;;;;;;		LD	DE,GPL_LCDCI_COL
;;;;;;GPL_LCD_110
;;;;;;;;;;;		LD	A,%10001000	; 自動ｉｎｃ、パレット1-0
;;;;;;		LD	A,%10000000	; 自動ｉｎｃ、パレット0-0
;;;;;;		LD	(BCPS),A	; ＢＧ
;;;;;;		LD	HL,BCPD
;;;;;;		LD	B,$04*2		; パレット個数５
;;;;;;;;;;;		LD	B,$12*2		; パレット個数５
;;;;;;					; 1-0 から 3-3 まで
;;;;;;GPL_LCD_120
;;;;;;		LD	A,(DE)
;;;;;;		LD	(HL),A
;;;;;;		INC	DE
;;;;;;		DEC	B
;;;;;;		JR	NZ,GPL_LCD_120
;;;;;;
;;;;;;		JR	LII020
;;;;;;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	ＳＩＯ送受信  割込み				%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
SioInt
		PUSH	AF
		LD	A,:SioInt_sub
		LD	($2100),A
		CALL	SioInt_sub
		LD	A,(PBANK)
		LD	($2100),A
		POP	AF
		RETI
;
;
;;;;;;;;;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;;;;;;;;VRDATA
;;;;;;;;	DEFW	00   ;VRAMD+1
;;;;;;;;	DEFW	ENDYMBG	;エンディング山遠景  BG;00 ;TITLBG
;;;;;;;;	DEFW	WINDBG
;;;;;;;;	DEFW	PSLCTBG
;;;;;;;;	DEFW	PSLCTBG2
;;;;;;;;	DEFW	NSLCTBG
;;;;;;;;	DEFW	NCLERBG
;;;;;;;;	DEFW	VRAMD2+1
;;;;;;;;	DEFW	GMAPBG
;;;;;;;;	DEFW	GMAPCLB
;;;;;;;;	DEFW	GOVERBG
;;;;;;;;	DEFW	WINDBG2  ;ODEMOBG
;;;;;;;;	DEFW	NCOPYBG
;;;;;;;;	DEFW	TSAVEBG ;強制セーブ
;;;;;;;;	DEFW	OPENBG ; Opening BG !
;;;;;;;;	DEFW	OPENBG2 ; Opening BG 2!
;;;;;;;;	DEFW	OPENBG3 ; Opening BG 3!
;;;;;;;;	DEFW	LOGODT	;無理矢理タイトルロゴ！
;;;;;;;;	DEFW	PEACHDT	;ピーチ写真！
;;;;;;;;	DEFW	LOVEDT	;海岸デモ！
;;;;;;;;	DEFW	MAMUUBG	;マムー部屋ベタ！
;;;;;;;;	DEFW	KABEDT1	;壁画１
;;;;;;;;;----------------------------------------------
;;;;;;;;	DEFW	ENDBGA	;エンディング A BG
;;;;;;;;	DEFW	ENDBGB2	;エンディング B2 BG
;;;;;;;;	DEFW	ENDBGC 	;エンディング C BG
;;;;;;;;	DEFW	ENDBGB 	;エンディング B BG
;;;;;;;;	DEFW	ENDBGD 	;エンディング D BG
;;;;;;;;	DEFW	ENDBGE 	;エンディング E BG
;;;;;;;;	DEFW	ENDBGF 	;エンディング F BG
;;;;;;;;	DEFW	ENDBGG 	;エンディング G BG
;;;;;;;;;- - - - - - - - - - - - - - - - - - - - - - -
;;;;;;;;	DW	ENDBGA1
;;;;;;;;	DW	ENDBGA2
;;;;;;;;	DW	ENDBGA3
;;;;;;;;	DW	ENDBGA4
;;;;;;;;	DW	ENDBGA5
;;;;;;;;;
;;;;;;;;	DW	KABADT ;カバの絵！
;;;;;;;;	DW	TOUBGDT	;７塔デモ！
;;;;;;;;;;	DEFW	EWAKUBG	;エンディング マップ枠 BG
;;;;;;;;;;	DEFW	EWAKUBG2 ;エンディング マップ枠 BG2
;;;;;;;;;- - - - - - - - - - - - - - - 
;- VRFLG table - -
;;TITLBGS	EQU	1
EBGY	EQU	1
;
WINDBGS	EQU	2
PSLBGS	EQU	3
PSLBG2	EQU	4
NSLBGS	EQU	5
NCLBGS	EQU	6
BLVRDS	EQU	7
GMAPBGS	EQU	8	; G. map waku BG 
GMAPCL	EQU	9
GOVBG	EQU	$A
;;ODMBG	EQU	$B
WINDBGS2 EQU	$B
NCPBGS	EQU	$C
TSVBG	EQU	$D
OPBGS	EQU	$E
OPBG2	EQU	$F
OPBG3	EQU	$10
LOGOS	EQU	$11
PECBG	EQU	$12
LOVBG	EQU	$13
MMBG	EQU	$14
KB1BG	EQU	$15
;- - - - - - - - - - - -
EBGA	EQU	$16
EBGB2	EQU	$17
EBGC 	EQU	$18
EBGB 	EQU	$19
EBGD 	EQU	$1A
EBGE 	EQU	$1B
EBGF 	EQU	$1C
EBGG 	EQU	$1D
EBGA1	EQU	$1E
EBGA2	EQU	$1F
EBGA3	EQU	$20
EBGA4	EQU	$21
EBGA5	EQU	$22
;
KABBG	EQU	$23
TOUBG	EQU	$24
;
OPBGS_CGB	EQU	$25	; (CGB) オープニング
;
EWAKU 	EQU	$1E	;未使用！
EWAKU2 	EQU	$1F	;  "
;-----------------------------------
; BLNKFG table - -
RBGST	EQU	1
VRMCL	EQU	2
BKCHG	EQU	3
BKCH2	EQU	4
BKCH3	EQU	5
DJBST	EQU	6
GRBST	EQU	7	; Ground map bank set
VRMBT	EQU	8
BNKTR	EQU	$9 ; Game Room all bank set !
TLCHG	EQU	$A ; Title bank
GMBST	EQU	$B ; Ground map bank
ODCHG	EQU	$0C	; Title demo bank 
GVCHG	EQU	$0D	; Game over bank 
GRCST	EQU	$0E	; Ground map unit BG set
VRMB2	EQU	$0F	; 
OPBST	EQU	$10	; Opening BANK 1 (Sea & Mt.)Set !
OPBS2	EQU	$11	; Opening BANK 2 (ZELDA)Set !
;
PECCD	EQU	$12	;ピーチ写真！
LOVCD	EQU	$13	;海岸デモ！
KB1CD	EQU	$14
;------Ending-------- 
ECHA	EQU	$15	;エンディング A CHR.Tr. 
ECHB2	EQU	$16	;エンディング B2 CHR.Tr. 
ECHC	EQU	$17	;エンディング C CHR.Tr. 
ECHB	EQU	$18	;エンディング B CHR.Tr. 
ECHD	EQU	$19	;エンディング D CHR.Tr. 
ECHE	EQU	$1A	;エンディング E CHR.Tr. 
ECHF	EQU	$1B	;エンディング F CHR.Tr. 
ECHG	EQU	$1C	;エンディング G CHR.Tr. 
;- - - - -
ECHA1	EQU	$1D	;エンディング A (地上） CHR.Tr.
ECHYM	EQU	$1E	;エンディング A (卵山全景） CHR.Tr.
ECHA2	EQU	$1F	;エンディング A2 (LINK OBJ） CHR.Tr.
;-----------------------------------
KABCD	EQU	$20
TOUCD	EQU	$21
;-----------------------------------
KMARIN	EQU	$22	;かもめまりん（ＣＧＢ専用）
ENDMS	EQU	$23	;エンディングメッセージ（ＣＧＢ専用）
;-----------------------------------
;
SPTST	EQU	$14	; TEST TEST shibahara big test !
;-----------------------------------
;-----------------------------------
;-----------------------------------
;-----------------------------------
;-----------------------------------
;-----------------------------------
;BKCHFG2 	1: OBJ room bank chenge
;- - - - - - - -
;BKCHFG	Table	1: BG room bank chenge
DMPCH	EQU	2
HRTC1	EQU	3 ; Mesege heart chr set 1
HRTC2	EQU	4 ; Mesege heart         2
HRTC3	EQU	5 ; Mesege heart revise  1
HRTC4	EQU	6 ; Mesege heart         2
GAKCH	EQU	7	; Ground gakki set !
FUEC1	EQU	8 ; Window fue select chr set 1
FUEC2	EQU	9 ;		"	      2
FUEC3	EQU	$A;		 revise       3
FUEC4	EQU	$B ; 	        "             1
FUEC5	EQU	$C ; 	        "             2
FUEC6	EQU	$D ; 	        "             3
;----------------------------------------------
VRAMST
;--- VRAM many TR. ---
	LD	A,(BLNKFG)
	AND	A
	JR	Z,VRST80
;
	LD	(COLFLG),A	; (CGB) てすと  BLNKFG --> COLFLG

		CP	ENDMS
		JR	Z,VRAMST_100

	PUSH	AF
	CALL	LCDC_OFF
	POP	AF

VRAMST_100
	CALL	BLNKSUB
	JR	VRST90
;
BLNKSUB
		LD	E,A		;（Ａ）→（Ｅ）
		LD	A,$20
		LD	($2100),A
		CALL	BLNKSUB_JMP	; (CGB) アドレスセット
		JP	(HL)

;(CGB)	DEC	A
;(CGB)	RST	0
;(CGB)	DW	RMBGST		; ( 1)
;(CGB)	DW	V_RAMC		; ( 2)
;(CGB)	DW	BANKST		; ( 3)
;(CGB)	DW	BANKS2		; ( 4)
;(CGB)	DW	BANKS3		; ( 5)
;(CGB)	DW	DJBKST		; ( 6) ダンジョン BG bank set !
;(CGB)	DW	GRBKST		; ( 7) 地上 BG bank set !
;(CGB)	DW	V_RAMB		; ( 8)
;(CGB)	DW	BANKTR		; ( 9)
;(CGB);;	DW	TITLCHST
;(CGB)	DW	VRRET		; ( A)
;(CGB)	DW	GMAPBKST	; ( B)
;(CGB)	DW	VRRET		; ( C) ODMBKST
;(CGB)	DW	GOVBKST		; ( D)
;(CGB)	DW	GMAPCHST	; ( E)
;(CGB)	DW	V_RAMD		; ( F)
;(CGB)	DW	OPBKST		; (10) Opening bank(Sea & Mt.) set !
;(CGB)	DW	OPBKS2		; (11) Opening bank(ZELDA) set !
;(CGB)	DW	PEACHBKST	; (12)	;ピーチ写真！
;(CGB)	DW	LOVEBKST	; (13)	;海岸デモ！
;(CGB)	DW	KAB1BKST	; (14)	;へきが！
;(CGB);--- Ending - -
;(CGB)	DW	ENDCHA		; (15);エンディング A CHR.TR
;(CGB)	DW	ENDCHB2		; (16);エンディング B2 CHR.TR
;(CGB)	DW	ENDCHC		; (17);エンディング C  CHR.TR
;(CGB)	DW	ENDCHB		; (18);エンディング B  CHR.TR
;(CGB)	DW	ENDCHD		; (19);エンディング D  CHR.TR
;(CGB)	DW	ENDCHE		; (1A);エンディング E  CHR.TR
;(CGB)	DW	ENDCHF		; (1B);エンディング F  CHR.TR
;(CGB)	DW	ENDCHG		; (1C);エンディング G  CHR.TR
;(CGB);
;(CGB)	DW	ENDCHA1		; (1D);エンディング A(地上）  CHR.TR
;(CGB)	DW	ENDCHYM		; (1E);エンディング A(山遠景）  CHR.TR
;(CGB)	DW	ENDCHA2		; (1F);エンディング A2(LINK OBJ) CHR.TR
;(CGB);- - - -
;(CGB)	DW	KABABKST	; (20) ;カバの絵！
;(CGB)	DW	TOUBGCH		; (21);７塔デモ！
;
;
;;	DW	SPTEST
;
VRST80
	CALL	LCDC_OFF

	LD	A,:VRAMST_ATR	; (CGB)
	LD	($2100),A	; (CGB)
	CALL	VRAMST_ATR	; (CGB)アトリビュート
;-------------------------------------------------------------
	LD	A,$20
	LD	($2100),A
	CALL	VRADR_SET
;
;;;;;;;;	LD	HL,VRDATA
;;;;;;;;	LD	B,$0
;;;;;;;;	LD	A,(VRFLG)
;;;;;;;;	SLA	A
;;;;;;;;	LD	C,A
;;;;;;;;	ADD	HL,BC
;;;;;;;;	LD	A,(HL)
;;;;;;;;	LD	E,A
;;;;;;;;	INC	HL
;;;;;;;;	LD	A,(HL)
;;;;;;;;	LD	D,A
;
	LD	A,$08
	LD	($2100),A
	CALL	VRAMTR1
	LD	A,$0C
	CALL	Char_bank_set	; (CGB) キャラクターバンクセット
	LD	($2100),A
;
VRST90
	XOR	A
	LD	(VRFLG),A
	LD	(BLNKFG),A
;
	LD	A,(LCDCB)	; ＯＢＪ ＢＧ ＯＮ ＬＣＤＣ スタート
	LD	(LCDC),A
VRRET
	RET
;****************************************
;*       Ｖ－ＢＬＡＮＫ 割り込み        *
;****************************************
ONHELPAD
	DB	$07,$09
V_BLANK
	PUSH	AF
	PUSH	BC
	PUSH	DE
	PUSH	HL
;
		ld	a,(SVBK)
		and	007h
		ld	c,a
		xor	a
		ld	(SVBK),a
		push	bc
;
	DI
;
		LD	A,(GMMODE)
		CP	PRN
		JR	NZ,V_BLANK_000
		LD	A,(ITMODE)
		CP	P_fdin
		JR	C,V_BLANK_000
		CP	P_retn
		JP	C,V_BLANK_P	; ポケットプリンタ用
V_BLANK_000
	LD	A,(NMIFG)
	AND	A		; 時間オーバー？
	JP	NZ,VBL018	; ＹＥＳ
;
	LD	A,(MSGEFG)
	AND	%01111111
	JR	Z,VBL002
	CP	$01
	JR	Z,VBL002
;
	CP	$04+1
	JR	NC,VBL0022
;
	CALL	MSVRSV	; 葛原 maked
;;;;;;;;		LD	A,:MSVRSV
;;;;;;;;		LD	($2100),A
;;;;;;;;		CALL	MSVRSV	; 葛原 maked
;
	LD	HL,MSGEFG
	INC	(HL)
;
;(CGB)	JR	VBL018
	JP	VBL018
VBL0022
	CP	MSSC2
	JR	NZ,VBL023
;
	CALL	MSSCR2S
;(CGB)	JR	VBL018
	JP	VBL018
VBL023
	CP	MSSC3
	JR	NZ,VBL033
;
	LD	A,(MJSTTM)
	AND	A
	JR	Z,VBL025
;
	DEC	A
	LD	(MJSTTM),A
	JR	VBL033
VBL025
	CALL	MSSCR3S
	JP	VBL018
VBL033
;---------------------------------------------
VBL002
		LD	A,(GMMODE)
		CP	GEKI00		;寸劇モード？
		JR	C,VBL002_PASS	;	NO --> VBL002_PASS
		LD	A,(ITMODE)
		CP	$006
		JR	C,BCH2000_100
		LD	A,:ANIME_TRNC
		LD	($2100),A
		CALL	ANIME_TRNC
		JR	BCH2000_100
VBL002_PASS
;
	LD	A,(BLNKFG)
	AND	A
	JR	NZ,VBL018	; BG set a little ?
;				; yes ! in V blank set ok !
	LD	A,(BKCHFG)
	LD	(ENHELP),A
	LD	HL,BKCHF2
	OR	(HL)  ;AND	A
	LD	HL,BKCHF3
	OR	(HL)  ;AND	A
	JR	Z,VBL012	; Bank chenge ?
;				; yes !
	CALL	BANKCH
;
	LD	A,(ENHELP)
	CP	FUEC1
	JR	NC,VBL003
;
VBL0118
	CALL	PLCSET
VBL003
	CALL	DMASUB		; ＯＡＭ　ＤＭＡ 転送
	JR	VBL018
;-------------------------------------------------
VBL012
;;;;;;===============================================
;;;;;;	でばっぐ  スクロール実験
;;;;;;===============================================
;;;;;		LD	A,(SCRLFG)
;;;;;		AND	A		; スクロール中？
;;;;;		JR	NZ,BCH2000_100	; ＹＥＳ
;;;;;;===============================================

	LD	A,(ONOFHELP)
	AND	A
	JR	Z,BCH2000
;
	DEC	A
	LD	(ONOFHELP),A
;
	LD	E,A
	LD	D,$00
	LD	HL,ONHELPAD
	ADD	HL,DE
	LD	A,(HL)
	LD	(ONOFTM),A
	CALL	ONOFSUB
	JR	VBL0118
;;	RET
BCH2000
		LD	A,(GMMODE)
		CP	PRN		; ポケットプリンタ？
		JR	Z,BCH2000_100	; ＹＥＳ

	CALL	PLCHTR		; Player character TR. & OAM set 
BCH2000_100
;-----------------------------------------------------------------
	LD	A,(CGBFLG)
	AND	A		; カラーゲームボーイ？
	JR	Z,VBL013	; ＮＯ

	LD	A,:VRAMTR_ATR	; (CGB)
	LD	($2100),A	; (CGB)
	CALL	VRAMTR_ATR	; (CGB)アトリビュート
VBL013
;-----------------------------------------------------------------
	LD	DE,VRAMD+1	; VRAMD TR.
	CALL	VRAMTR
;
	XOR	A
	LD	(VRAMD),A
	LD	(VRAMD+1),A
	LD	(VRAMD_AT),A	; (CGB)
	LD	(VRAMD_AT+1),A	; (CGB)
;
		ld	a,:OAMGYAK
		ld	(2100h),a
		call	OAMGYAK
;
	CALL	DMASUB		; ＯＡＭ　ＤＭＡ 転送
;-----------------------------------------------------------------
	LD	A,(CGBFLG)
	AND	A		; カラーゲームボーイ？
	JR	Z,VBL018	; 	NO --> VBL018
	LD	A,$21		; (CGB)
	LD	($2100),A	; (CGB)
	CALL	COLOR_TRAN	; (CGB)カラー転送
	LD	A,(PBANK)	; (CGB)
	LD	($2100),A	; (CGB)
;-----------------------------------------------------------------
VBL018
;
	EI
;-----------------------------------------------------------------
VBL020
		pop	bc
		ld	a,c
		ld	(SVBK),a
	POP	HL
	POP	DE
	POP	BC
;
	LD	A,1		; Ｖ－ＢＬＡＮＫ終了 フラグ セット
	LD	(VBLANK_F),A
;
	POP	AF
;
	RETI
;
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	 ポケットプリンタ用 Ｖ－ＢＬＡＮＫ 割り込み			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
V_BLANK_P
		ld	a,(PBANK)
		push	af
;
		ld	a,(NMIFG)
		and	a
		jr	nz,V_BLANK_P_050
;
		CALL	DMASUB		; ＯＡＭ　ＤＭＡ 転送
;
;;;;;;;;		EI
V_BLANK_P_100
		LD	A,(CGBFLG)
		AND	A		; カラーゲームボーイ？
		JR	Z,VBLPR_100	; ＮＯ

		LD	A,:COLOR_TRAN
		call	PBSET
		CALL	COLOR_TRAN	; カラー転送

		LD	A,:VRAMTR_ATR
		call	PBSET
		CALL	VRAMTR_ATR	; アトリビュート転送
VBLPR_100
		LD	DE,VRAMD+1	; VRAMD TR.
		CALL	VRAMTR		; キャラクター転送

		XOR	A
		LD	(VRAMD),A
		LD	(VRAMD+1),A
		LD	(VRAMD_AT),A
		LD	(VRAMD_AT+1),A

V_BLANK_P_050
;;;;;;;;		ei
;
;/////////// １００msec毎にNUL PACKETを送信するため　//////////
		ld	a,:SioWatchDog
;;;;;;;;		ld	(2100h),a
		call	PBSET
		call	SioWatchDog
;//////////////////////////////////////////////////////////////

		pop	af
		LD	(PBANK),a
		LD	($2100),A
		JR	VBL020
;------------------------------------------------------------------------
















;------------------------------------------------------------------------
;
;==== Character bank chenge ====
BANKCH
	LD	A,(BKCHFG)
	AND	A
	JP	Z,BKCH20
;
	CP	GAKCH	; ガッキセット
	JP	Z,GAKKICH
	CP	HRTC1
	JP	Z,HARTCH1
	CP	HRTC2
	JP	Z,HARTCH2
	CP	HRTC3
	JP	Z,HARTCH3
	CP	HRTC4
	JP	Z,HARTCH4
	CP	FUEC1
	JP	NC,FUECHG
;
	LD	A,(DJFLAG)
	AND	A
	JP	Z,BCH010
;
	LD	A,(BKCHFG)
	CP	DMPCH  ;$02
	JP	Z,DMAPCS	; Danjyon map use character tr.
;
	LD	A,$0D
	CALL	Char_bank_set	; (CGB) キャラクターバンクセット
	LD	($2100),A
;
	LD	A,(BKCHCT)
	LD	C,A
	LD	B,$00
;
	SLA	C
	RL	B
	SLA	C
	RL	B
	SLA	C
	RL	B
	SLA	C
	RL	B
	SLA	C
	RL	B
	SLA	C
	RL	B
;
	LD	HL,CHRRAM+$1000	; キャラクタ ＲＡＭ 
	ADD	HL,BC
		ld	e,l
		ld	d,h
;;10/31;	PUSH	HL
;;10/31;	POP	DE
;
	LD	HL,CHRDAT+$1000	; ＢＧキャラクタ入れ換え データ
;
		LD	A,(DNJNNO)
		CP	NEWDJ		;新ダンジョン？
		JR	NZ,ONHL100_PASS	;	NO --> ONHL100_PASS
		LD	A,:NewDJChrSet
		LD	($2100),A
		CALL	NewDJChrSet
		LD	($2100),A
		JR	ONHL100
ONHL100_PASS
;
	LD	A,(BKCHNO)
	ADD	A,$50
	LD	H,A
	ADD	HL,BC
;
	LD	A,(ONOFHELP)
	AND	A
	JR	Z,ONHL100	;凹凸ブロック？
;
	LD	A,(BKCHCT)
	DEC	A
	CP	$02
	JR	C,ONHL110	;そのまま！
;
ONHL100
	LD	BC,$0040	; 個数 
	CALL	DATA_MOV	; キャラクタ 転送
ONHL110
	LD	A,(BKCHCT)
	INC	A
	LD	(BKCHCT),A
	CP	$04
	JR	NZ,BCH008
;
	XOR	A
	LD	(BKCHFG),A
	LD	(BKCHCT),A
BCH008
	RET
;-------------------------------------
BCH010
;(CGB)	LD	HL,$2100
;(CGB)	LD	(HL),$0F
		LD	A,$0F
		CALL	Char_bank_set	; (CGB) キャラクターバンクセット
		LD	($2100),A
;
	LD	A,(BKCHCT)
;
	LD	C,A
	LD	B,$00
;
	SLA	C
	RL	B
	SLA	C
	RL	B
	SLA	C
	RL	B
	SLA	C
	RL	B
	SLA	C
	RL	B
	SLA	C
	RL	B
;
	LD	HL,CHRRAM+$1000	; キャラクタ ＲＡＭ 
	ADD	HL,BC
		ld	e,l
		ld	d,h
;;10/31;	PUSH	HL
;;10/31;	POP	DE
;
	LD	A,(BKCHNO)
	ADD	A,$40	 ;"4": CHRDAT/100H
	LD	H,A
	LD	L,$00
;
	ADD	HL,BC
;
	LD	BC,$0040	; 個数 
	CALL	DATA_MOV	; キャラクタ 転送
;
	LD	A,(BKCHCT)
	INC	A
	LD	(BKCHCT),A
	CP	$08
	JR	NZ,BKCH15
;
	XOR	A
	LD	(BKCHFG),A
	LD	(BKCHCT),A
BKCH15
	RET
;---------------------------------
BKCH20
		LD	A,(CGBFLG)
		AND	A
		JR	Z,BKCH20_PASS
		LD	A,(DNJNNO)
		CP	NEWDJ		;新ダンジョン？
		JR	NZ,BKCH20_PASS	;	NO --> BKCH20_PASS
		LD	A,:NEWDJ_TEKI_CHR
		LD	($2100),A
		CALL	NEWDJ_TEKI_CHR
		XOR	A
		LD	(BKCHF3),A
		LD	(BKCHC3),A
		LD	HL,CHRRAM+$1000	; キャラクタ ＲＡＭ 
		LD	BC,$00000
		CALL	NewDJChrSet
		LD	C,$090
		LD	B,H
		LD	H,:BKCH20
		CALL	NEWDJ_DMA
		JR	BKCH28
BKCH20_PASS
;
	LD	A,(BKCHF2)
	AND	A
	JP	Z,BKC120	; Enemy bank set ?
;
	LD	A,(EBCHFG)
	LD	E,A
	LD	D,$0
	LD	HL,EBANK0
	ADD	HL,DE
	LD	A,(HL)
MRCH11
	PUSH	AF
;
	AND	$3F
	LD	D,A
	LD	E,$00
;
	POP	AF
;
	SWAP	A
	RRA
	RRA
	AND	$03
	LD	C,A
	LD	B,00
	LD	HL,BKTRBD
;
	ADD	HL,BC
	LD	A,(HL)
		and	a		; キャラクター転送する？
		jr	z,MRCH11_PASS	; ＮＯ
		CALL	Char_bank_set	; (CGB) キャラクターバンクセット
MRCH11_PASS
	LD	($2100),A
;
	LD	A,(BKCHC2)
	LD	C,A
;
	LD	B,$00
;
	SLA	C
	RL	B
	SLA	C
	RL	B
	SLA	C
	RL	B
	SLA	C
	RL	B
	SLA	C
	RL	B
	SLA	C
	RL	B
;
	LD	HL,CHRDAT+$0000
	ADD	HL,BC
	ADD	HL,DE
	PUSH	HL
;
	LD	A,(EBCHFG)
	LD	D,A
	LD	HL,CHRRAM+$0400	; キャラクタ ＲＡＭ ($8000 - $97FF)
	ADD	HL,BC
	ADD	HL,DE
		ld	e,l
		ld	d,h
;;10/31;	PUSH	HL
;;10/31;	POP	DE
;
	POP	HL
;
	LD	BC,$0040	; 個数 
	CALL	DATA_MOV	; キャラクタ 転送
;
BKCH25
	LD	A,(BKCHC2)
	INC	A
	LD	(BKCHC2),A
	CP	$04
	JR	NZ,BKCH30
;- - - - - - - - - - - - - - - - - - - - - - - - - - - -
BKCH28
	XOR	A
	LD	(BKCHF2),A
	LD	(BKCHC2),A
BKCH30
	RET
;---------------------------------
BKC120				;敵キャラクタバンクセット
		LD	A,(EBCHF2)
		LD	E,A
		LD	D,$0
		LD	HL,EBANK0
		ADD	HL,DE
		LD	A,(HL)
;
		PUSH	AF
		AND	$3F
		LD	D,A
		LD	E,$00
		POP	AF
;
		SWAP	A
		RRA
		RRA
		AND	$03
		LD	C,A
		LD	B,00
		LD	HL,BKTRBD
;
		ADD	HL,BC
		LD	A,(HL)
		and	a		; キャラクター転送する？
		jr	z,BKC120_PASS	; ＮＯ
		CALL	Char_bank_set	; (CGB) キャラクターバンクセット
BKC120_PASS
		LD	($2100),A
;
		LD	A,(BKCHC3)
		LD	C,A
;
		LD	B,$00
;
		SLA	C
		RL	B
		SLA	C
		RL	B
		SLA	C
		RL	B
		SLA	C
		RL	B
		SLA	C
		RL	B
		SLA	C
		RL	B
;
		LD	HL,CHRDAT+$0000
		ADD	HL,BC
		ADD	HL,DE
;
		PUSH	HL
		LD	A,(EBCHF2)
		LD	D,A
		LD	HL,CHRRAM+$0400	; キャラクタ ＲＡＭ ($8000 - $97FF)
		ADD	HL,BC
		ADD	HL,DE
		ld	e,l
		ld	d,h
;;10/31;		PUSH	HL
;;10/31;		POP	DE
		POP	HL
;
		LD	BC,$0040	; 個数 
		CALL	DATA_MOV	; キャラクタ 転送
;
		LD	A,(BKCHC3)
		INC	A
		LD	(BKCHC3),A
		CP	$04
		JR	NZ,BKC130
;- - - - - - - - - - - - - - - - - - - - - - - - - - - -
		XOR	A
		LD	(BKCHF3),A
		LD	(BKCHC3),A
BKC130
		RET
;==================================
GAKKICH
	LD	A,$01
	LD	($2100),A
	CALL	GAKKIST		; 楽器セット
	JP	BKCHG10
;==================================
FUEAD1
	DW	CHRDAT+$2960
	DW	CHRDAT+$29A0
	DW	CHRDAT+$29C0
	DW	CHRDAT+$0200
	DW	CHRDAT+$0240
	DW	CHRDAT+$0260
FUEAD2
	DW	CHRRAM+$0200
	DW	CHRRAM+$0240
	DW	CHRRAM+$0260
	DW	CHRRAM+$0200
	DW	CHRRAM+$0240
	DW	CHRRAM+$0260
;
FUECHG
	SUB	FUEC1
	SLA	A
	LD	E,A
	LD	D,$00
	LD	HL,FUEAD1
	ADD	HL,DE
	PUSH	HL	
	LD	HL,FUEAD2
	ADD	HL,DE
	LD	E,(HL)
	INC	HL
	LD	D,(HL)
;
	POP	HL
	LD	A,(HLI)
	LD	H,(HL)
	LD	L,A
;
	LD	A,$0C
	CALL	Char_bank_set	; (CGB) キャラクターバンクセット
	LD	($2100),A
;
	LD	BC,$0040	; 個数 
	CALL	DATA_MOV	; キャラクタ 転送
;
	LD	A,(BKCHFG)
	CP	FUEC3
	JR	Z,FUCS10
	CP	FUEC6
	JR	Z,FUCS10
;
	LD	A,(BKCHFG)
	INC	A
	LD	(BKCHFG),A
	RET
FUCS10
	XOR	A
	LD	(BKCHFG),A
	RET
;======================================
PBSET
	LD	(PBANK),A
	LD	($2100),A
	RET
;======================================
;	(CGB) プログラムバンクセット
;		キャラクタ転送用
;======================================
PBSET_CGB
	CALL	Char_bank_set		; キャラクターバンクセット

	LD	(PBANK),A
	LD	($2100),A
	RET
;======================================
PBRETN
	PUSH	AF
	LD	A,(PBANK)
	LD	($2100),A
	POP	AF
	RET
;
;========================================
DMAPCS
	LD	A,$12
	CALL	Char_bank_set	; (CGB) キャラクターバンクセット
	LD	($2100),A
;
	LD	A,(BKCHCT)
	CP	$08
	JR	C,DMCS00
	JR	NZ,DMS030
;
	LD	A,$2
	LD	($2100),A
	CALL	DIMAPS
;
	LD	HL,BKCHCT
	INC	(HL)
	RET
DMS030
	CP	$09
	JR	NZ,DMS038
;
	LD	A,$2
	LD	($2100),A
	CALL	DIMAP2
;
	LD	HL,BKCHCT
	INC	(HL)
	RET
;
DMS038
	CP	$0A
	JR	NZ,DMS039
;
	LD	A,$2
	LD	($2100),A
	CALL	DIMAP3
;
	LD	HL,BKCHCT
	INC	(HL)
	RET
DMS039
	LD	A,$2
	LD	($2100),A
	CALL	DIMAP4
;
	XOR	A
	LD	(BKCHFG),A
	LD	(BKCHCT),A
	RET
;
DMCS00
;;	LD	A,(BKCHCT)
	LD	C,A
	LD	B,$00
;
	SLA	C
	RL	B
	SLA	C
	RL	B
	SLA	C
	RL	B
	SLA	C
	RL	B
	SLA	C
	RL	B
	SLA	C
	RL	B
;
	LD	HL,CHRRAM+$0D00	; キャラクタ ＲＡＭ 
	ADD	HL,BC
		ld	e,l
		ld	d,h
;;10/31;	PUSH	HL
;;10/31;	POP	DE
;
	LD	HL,CHRDAT+$3E00	; 普通部屋キャラクタ転送
	ADD	HL,BC
;
	LD	BC,$0040	; 個数 
	CALL	DATA_MOV	; キャラクタ 転送
;
	LD	A,(BKCHCT)
	INC	A
	LD	(BKCHCT),A
;
;	CP	$08   ;10
;	JR	NZ,DCH008
;;
;	XOR	A
;	LD	(BKCHFG),A
;	LD	(BKCHCT),A
DCH008
	RET
;======================================
SOUND
	LD	A,$1F
;(CGB)	LD	($2100),A
		CALL	PBSET
;
	CALL	SOUNDSB	; SE
;
	LD	A,(SOUND2)
	AND	A
	JR	NZ,SDS12	;???
;
	LD	A,(SNDSPD)
	AND	A
	JR	Z,SOUND101
;
	CP	$02
	JR	NZ,SOUND100
;
	LD	A,(FRCNT)
	AND	$01
	JR	NZ,SDS12
;
	JR	BGMSUB
SOUND100
	CALL	BGMSUB	; BGM
SOUND101
;===================================
BGMSUB
	LD	A,$1B
;(CGB)	LD	($2100),A
		CALL	PBSET
	CALL	SOUNDSB
;;	NOP
;;	NOP
;;	NOP
;
	LD	A,$1E
;(CGB)	LD	($2100),A
		CALL	PBSET
	CALL  	SOUNDSB
;
;	LD	A,($D3BD)
;	AND	A
;	JR	Z,SDS12
;;
;	XOR	A
;	LD	($D3BD),A	
SDS12
	RET
;- - - - - - - - - - - - 
;
;
;+----------------------------------------------+
;|	オープニングデモの			|
;|		ホワイトアウトルーチンＣＡＬＬ用|
;+----------------------------------------------+
OpenWhiteOutSub
		LD	A,$20
		LD	($2100),A
		CALL	OpenWhiteOut
PBANK_SET_RT
		LD	A,(PBANK)
		LD	($2100),A
		RET
;
;+----------------------------------------------+
;|	オープニングデモの			|
;|		ホワイトインルーチンＣＡＬＬ用	|
;+----------------------------------------------+
OpenWhiteInSub
		LD	A,$20
		LD	($2100),A
		CALL	OpenWhiteIn
		JR	PBANK_SET_RT
;
;+----------------------------------------------+
;|	オープニングデモの			|
;|		稲妻フラッシュルーチンＣＡＬＬ用|
;+----------------------------------------------+
OpenFlashSub
		LD	A,$20
		LD	($2100),A
		CALL	OpenFlash
		JR	PBANK_SET_RT
;
;+----------------------------------------------+
;|	オールホワイトセットルーチンＣＡＬＬ用	|
;|			ＩＮ			|
;|			Ａ  ：戻りバンク値	|
;+----------------------------------------------+
AllWhiteSetSub
		PUSH	AF
		LD	A,$020
		LD	($2100),A
		CALL	AllWhiteSet
;;;;;;;		JR	MO_DO_RU
		JR	POP_SET_RT
;
;+----------------------------------------------+
;|	オールカラーセットルーチンＣＡＬＬ用	|
;+----------------------------------------------+
AllColorSetSub
		LD	A,$020
		LD	($2100),A
		CALL	AllColorSet
		JR	MO_DO_RU
;
;+--------------------------------------------------+
;|プレイヤーダウン時のカラーセットルーチンＣＡＬＬ用|
;+--------------------------------------------------+
DownColorSetSub
		LD	A,$020
		LD	($2100),A
		CALL	DownColorSet
MO_DO_RU
		LD	A,$001
		LD	($2100),A
		RET
;
;+------------------------------------------------------+
;|	１ユニットＢＧ書き換えのアトリビュートセット	|
;|			ＩＮ				|
;|			Ａ  ：戻りバンク値		|
;|			ＢＣ：ＵＮＩＴナンバー＊４	|
;+------------------------------------------------------+
BG1UNIT_ATR_SUB
		PUSH	AF
		LD	B,$000
		LD	A,(UNTATR)
		SLA	A
		RL	B
		SLA	A
		RL	B
		LD	C,A
		JR	BG1UNIT_000
BG1UNIT_ATR
		PUSH	AF
BG1UNIT_000
		LD	A,:BgAtrAddress
		LD	($2100),A
;
		CALL	BgAtrAddress
;
		LD	A,(WORK8)
		LD	($2100),A
;
		LD	HL,VRAMD_AT+1
		LD	A,(VRAMD_AT)
		LD	E,A
		ADD	A,10
		LD	(VRAMD_AT),A
		LD	D,$00
		ADD	HL,DE
;
		LD	A,(WORK9)
		LD	D,A
		LD	A,(WORKA)
		LD	E,A
;
		LD	A,(VRAMH)
		LD	(HLI),A
		LD	A,(VRAML)
		LD	(HLI),A
		LD	A,$81
		LD	(HLI),A
		LD	A,(DE)
		LD	(HLI),A
		INC	DE
		INC	DE
		LD	A,(DE)
		LD	(HLI),A
		DEC	DE
;
		LD	A,(VRAMH)
		LD	(HLI),A
		LD	A,(VRAML)
		INC	A
		LD	(HLI),A
		LD	A,$81
		LD	(HLI),A
		LD	A,(DE)
		LD	(HLI),A
		INC	DE
		INC	DE
		LD	A,(DE)
		LD	(HLI),A
;
		XOR	A
		LD	(HLI),A
;
POP_SET_RT
		POP	AF
		LD	($2100),A
		RET
;
;+------------------------------------------------------+
;|	楽器を取った時のホワイトイン			|
;+------------------------------------------------------+
GK_WhiteOutSub
		PUSH	AF
		LD	A,$020
		LD	($2100),A
		CALL	GK_WhiteOut
		JR	POP_SET_RT
;
;+------------------------------------------------------+
;|	１ユニットＢＧ書き換えの			|
;|		アトリビュート特殊セット		|
;|			(ダンジョンのドア等)		|
;|			ＩＮ				|
;|			Ａ  ：戻りバンク値		|
;+------------------------------------------------------+
DR_AT_Sub
		LD	A,:DR_AT_Address
		LD	($2100),A
		CALL	DR_AT_Address
		LD	A,(WORK8)
		LD	($2100),A
		LD	A,(WORK9)
		LD	H,A
		LD	A,(WORKA)
		LD	L,A
		LD	A,(HL)
		INC	DE
		RET
;
DR_AT_SetSub
		PUSH	AF
;
		PUSH	BC
		CALL	DR_AT_Sub
		LD	(WORK0),A
		POP	BC
		CALL	DR_AT_Sub
		LD	(WORK1),A
;
		LD	A,(VRAMD_AT)
		LD	C,A
		LD	B,$00
		ADD	A,$05
		LD	(VRAMD_AT),A
;
		LD	HL,VRAMD_AT+1
		ADD	HL,BC
		LD	A,(VRAMH)
		LD	(HLI),A
		LD	A,(VRAML)
		LD	(HLI),A
		LD	A,$01
		LD	(HLI),A
;
		LD	A,(WORK0)
		LD	(HLI),A
		LD	A,(WORK1)
		LD	(HLI),A
		XOR	A
		LD	(HLI),A
;
		JR	POP_SET_RT
;
;+------------------------------------------------------+
;|	墓石を順番に押したかチェック(新ダンジョン用)	|
;+------------------------------------------------------+
HakaCheck_SUB
		PUSH	AF
		LD	A,$20
		LD	($2100),A
		CALL	HakaCheck
		JR	POP_SET_RT
;
;+------------------------------------------------------+
;|	敵のイニシャルプログラムのアドレスサーチ	|
;+------------------------------------------------------+
GET_INIT_EN_SUB
		PUSH	AF
		LD	A,$20
		LD	($2100),A
		CALL	GET_INIT_EN
		JR	POP_SET_RT
;
;+------------------------------------------------------+
;|	服のダンジョン専用ユニットポジションサーチ	|
;+------------------------------------------------------+
NEWDJ_UNSH_SUB
		PUSH	AF
		LD	A,$20
		LD	($2100),A
		CALL	NEWDJ_UNSH
		JR	POP_SET_RT
;
;+------------------------------------------------------+
;|	服のダンジョンでトランポリンのＢＧを書き換える	|
;+------------------------------------------------------+
TRNPRN_CHK_SUB
		PUSH	AF
		LD	A,$20
		LD	($2100),A
		CALL	TRNPRN_CHK
		JP	POP_SET_RT
;
;+------------------------------------------------------+
;|	ＢＧコインユニットセットチェック		|
;+------------------------------------------------------+
COIN_CHK_SUB
		PUSH	AF
		LD	A,$020
		LD	($2100),A
		CALL	NEWDJ_COIN_CHK
		JP	POP_SET_RT
;
;+------------------------------------------------------+
;|	服のダンジョンで、ＣＧＢ以外でデータ転送	|
;|	するときの　ＤＭＡ転送				|
;+------------------------------------------------------+
NOMAL_DMA
		PUSH	HL
		LD	L,$000
		LD	E,L
		LD	H,B
		LD	A,C
		ADD	A,$080
		LD	D,A
		LD	BC,$0100
		CALL	DATA_MOV
		POP	HL
		JR	MODORU_DMA
;
;+------------------------------------------------------+
;|	服のダンジョンの敵キャラクターを新ＤＭＡで転送	|
;|			　Ａ：転送元のバンク		|
;|			　Ｂ：転送元アドレスのＨＩＧＨ	|
;|			　Ｃ：転送先アドレスのＨＩＧＨ	|
;|			　Ｈ：戻りバンク		|
;+------------------------------------------------------+
NEWDJ_DMA
		LD	($2100),A
;
		LD	A,(CGBFLG)
		AND	A
		JR	Z,NOMAL_DMA
;
		LD	A,B		;転送元アドレスセット
		LD	(HDMA1),A	;
		LD	A,$000		;
		LD	(HDMA2),A	;
;
		LD	A,C		;転送先アドレスセット
		LD	(HDMA3),A	;
		LD	A,$000		;
		LD	(HDMA4),A	;
;
		LD	A,$00F		;個数セット
		LD	(HDMA5),A	;	転送スタート
;
MODORU_DMA
;;;KK;;;		LD	A,$020
		LD	A,H
		LD	($2100),A
		RET
;
;+------------------------------------------------------+
;|	服キャラクターをＲＡＭバッファにセット		|
;+------------------------------------------------------+
FUKU_BUF_SET
		PUSH	AF
		LD	A,$035
		LD	($2100),A
;
		LD	HL,$4F00
		LD	DE,FUKU_CHR_BUF
		LD	BC,$0020
		CALL	DATA_MOV
;
		JP	POP_SET_RT
;
;+------------------------------------------------------+
;|	服のダンジョンの妖精				|
;+------------------------------------------------------+
FUKU_YOUSEI_SUB
		PUSH	AF
		LD	A,:FUKU_YOUSEI
		LD	($2100),A
		CALL	FUKU_YOUSEI
		JP	POP_SET_RT
;
;+------------------------------------------------------+
;|	服のダンジョンの飛んでる魔法の粉		|
;+------------------------------------------------------+
FLY_KONA_SUB
		PUSH	AF
		LD	A,:FLY_KONA
		LD	($2100),A
		CALL	FLY_KONA
		JP	POP_SET_RT
;
;+------------------------------------------------------+
;|	服のダンジョンの敵キャラクターのＯＡＭセット	|
;|			入力値				|
;|			　Ｃ：オブジェの個数		|
;|			ＨＬ：データアドレス		|
;+------------------------------------------------------+
FUKU_OAM_SET
		PUSH	AF
		LD	A,$020
		LD	($2100),A
		CALL	ENOMST
		JP	POP_SET_RT
;
;+------------------------------------------------------+
;|	服のダンジョンのクリアデモで、リンクが		|
;|		バンザイ持ち上げを　する		|
;+------------------------------------------------------+
JYANPS_SUB
		PUSH	AF
		LD	A,$003
		LD	($2100),A
		CALL	JYANPS
		JP	POP_SET_RT
;
;+------------------------------------------------------+
;|	服のダンジョンでＧＥＴした服			|
;+------------------------------------------------------+
GET_FUKU_SUB
		PUSH	AF
		LD	A,:GET_FUKU
		LD	($2100),A
		CALL	GET_FUKU
		JP	POP_SET_RT
;
;+------------------------------------------------------+
;|	服のダンジョンのクリアデモのホワイト・アウト	|
;+------------------------------------------------------+
FUKU_WhiteOut_SUB
		PUSH	AF
		LD	A,:FUKU_WhiteOut
		LD	($2100),A
		CALL	FUKU_WhiteOut
		JP	POP_SET_RT
;
;+------------------------------------------------------+
;|	服のダンジョン・ラストボスの子分		|
;+------------------------------------------------------+
FK_BOSS_KOBUN_SUB
		PUSH	AF
		LD	A,:FK_BOSS_KOBUN
		LD	($2100),A
		CALL	FK_BOSS_KOBUN
		JP	POP_SET_RT
;
;+------------------------------------------------------+
;|	メッセージプログラムＣＡＬＬ用			|
;+------------------------------------------------------+
MESEGE_SUB
		PUSH	AF
		LD	A,$0F
		CALL	PBSET		; 文字キャラクターバンク
		CALL	MESEGE
		JP	POP_SET_RT
;
;+------------------------------------------------------+
;|	BBGBRSTプログラムＣＡＬＬ用			|
;+------------------------------------------------------+
BBGBRST_SUB
		PUSH	AF
		LD	A,:BBGBRST
		CALL	PBSET
		CALL	BBGBRST
PB_POP_RTN
		POP	AF
		CALL	PBSET
		RET
;
;+------------------------------------------------------+
;|	特殊ＶＲＡＭＤプログラムＣＡＬＬ用		|
;+------------------------------------------------------+
VRAMD_SET
		PUSH	AF
		LD	A,:VRAMTR_ATR	; (CGB)
		LD	($2100),A	; (CGB)
		CALL	VRAMTR_ATR	; (CGB)アトリビュート
		LD	DE,VRAMD+1	; VRAMD TR.
		CALL	VRAMTR
		JR	PB_POP_RTN
;
;+------------------------------------------------------+
;|	オカリナカラーセットプログラムＣＡＬＬ用	|
;+------------------------------------------------------+
OKARINA_COLST_SUB
		PUSH	AF
		LD	A,:OKARINA_COLST
		LD	($2100),A
		CALL	OKARINA_COLST
		JP	POP_SET_RT
;
;+------------------------------------------------------+
;|	楽器グラデーションプログラムＣＡＬＬ用		|
;+------------------------------------------------------+
GAKKI_COL_SET_SUB
		PUSH	AF
		LD	A,:GAKKI_COL_SET
		LD	($2100),A
		CALL	GAKKI_COL_SET
		JP	POP_SET_RT
;
;+------------------------------------------------------+
;|	寸劇のゾーラプログラムＣＡＬＬ用		|
;+------------------------------------------------------+
GEKI_ZORA_SUB
		PUSH	AF
		LD	A,:GEKI_ZORA
		CALL	PBSET
		CALL	GEKI_ZORA
		JP	POP_SET_RT
;
;+------------------------------------------------------+
;|	ヒント石版のデータインデックスＣＡＬＬ用	|
;+------------------------------------------------------+
HINTO_READ_SUB
		PUSH	AF
		LD	A,:HINTO_READ
		LD	($2100),A
		CALL	HINTO_READ
		JP	POP_SET_RT
;
;+------------------------------------------------------+
;|	寸劇のカメラ小僧発生チェックプログラムＣＡＬＬ用|
;+------------------------------------------------------+
GEKI05_CHK_SUB
		PUSH	AF
		LD	A,:GEKI05_CHECK
		LD	($2100),A
		CALL	GEKI05_CHECK
		JP	POP_SET_RT
;
;+------------------------------------------------------+
;|	寸劇のスクリーン書きこみプログラムＣＡＬＬ用	|
;+------------------------------------------------------+
GEKI_SCRN_SUB
		LD	A,:GEKI_SCRN
		LD	($2100),A
		CALL	GEKI_SCRN
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ＧＢ、ＣＧＢ対応 キャラクターバンクセット			x
;x----------------------------------------------------------------------x
;x	    ＥＮＴＲＹ							x
;x		Ａ      ： ＧＢ対応キャラクターバンク			x
;x	    ＲＥＴＵＲＮ						x
;x		Ａ      ： ＧＢ、ＣＧＢ対応キャラクターバンク		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
Char_bank_set
		PUSH	BC

		LD	B,A
		LD	A,(CGBFLG)
		AND	A		; カラーゲームボーイ？
		JR	Z,Cbank_set_100	; ＮＯ

		LD	A,B
		OR	%00100000	; ＋２０Ｈ
;;;;;;		JR	Cbank_set_200
		POP	BC
		RET
Cbank_set_100
		LD	A,B
Cbank_set_200
		POP	BC
		RET

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ＭＡＰデータセット ＳＵＢ					x
;x----------------------------------------------------------------------x
;x	    ＥＮＴＲＹ							x
;x		ＢＣ       ： 転送個数					x
;x		ＤＥ       ： ユニットバッファアドレス（転送先）	x
;x		ＷＯＲＫ０ ： ＭＡＰデータアドレス ＢＡＮＫ（転送元）	x
;x		Ｈ         ： ＭＡＰデータアドレス ＨＩＧＨ（  ”  ）	x
;x		Ｌ         ： ＭＡＰデータアドレス ＬＯＷ  （  ”  ）	x
;x	    ＲＥＴＵＲＮ						x
;x		Ｈ         ： ＭＡＰデータアドレス ＨＩＧＨ（  ”  ）	x
;x		Ｌ         ： ＭＡＰデータアドレス ＬＯＷ  （  ”  ）	x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
Map_data_set
		LD	A,(WORK0)	; データバンクセット
		LD	($2100),A
		LD	A,$02
		LD	(SVBK),A	; ＲＡＭバンク（２）セット

		CALL	DATA_MOV	; データ転送

		XOR	A
		LD	(SVBK),A	; ＲＡＭバンク（０）セット
		LD	A,$20
		LD	($2100),A	; バンクリセット

		RET

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ユニットバッファ バンク２書き換え				x
;x----------------------------------------------------------------------x
;x	    ＥＮＴＲＹ							x
;x		Ａ         ： リターンプログラムバンク			x
;x		Ｈ         ： ユニットバッファアドレス ＨＩＧＨ		x
;x		Ｌ         ： ユニットバッファアドレス ＬＯＷ		x
;x----------------------------------------------------------------------x
;x	    注 ： 書き換えを行うのは、地上のみ！			x
;x	          プログラムバンクに Unit_tran_bit（８０Ｈ）が立って	x
;x	          いる場合、強制的に書き換えを行う			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
Unit_change
		LD	(WORK2),A	; バンクＳＡＶＥ

		LD	A,(CGBFLG)
		AND	A		; カラーゲームボーイ？
		RET	Z		; ＮＯ
		LD	A,(DJFLAG)
		AND	A		; 地上？
		RET	NZ		; ＮＯ
;------------------------------------------------------------------------
		PUSH	BC

		LD	A,(WORK2)
		AND	UNIT_TRAN_BIT	; 強制セット？
		JR	NZ,Unit_chg_050	; ＹＥＳ

		LD	A,$20
		LD	($2100),A
		CALL	Unit_check	; ユニットチェック
					; 書き換えユニット？
		JR	C,Unit_chg_100	; ＮＯ
Unit_chg_050
		LD	B,(HL)		; ＲＡＭバンク（０）データ
		LD	A,$02
		LD	(SVBK),A	; ＲＡＭバンク（２）セット
		LD	(HL),B		; ユニットデータセット
		XOR	A
		LD	(SVBK),A	; ＲＡＭバンク（０）セット
Unit_chg_100
		LD	A,(WORK2)
		AND	%01111111
		LD	($2100),A	; バンクリセット

		POP	BC
;------------------------------------------------------------------------
Unit_chg_900
		RET

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	Ｌ４ 入り口出現 アトリビュートセット				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;;;;;;;Taki_atr_set
;;;;;;;		LD	A,:Taki_atr_set_sub
;;;;;;;		LD	($2100),A
;;;;;;;		CALL	Taki_atr_set_sub
;;;;;;;		LD	A,:TAKIBMV
;;;;;;;		LD	($2100),A
;;;;;;;		RET
;;;;;;;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	暗い部屋 カラーセット（ CALL by <ZEX> FADECK )			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;;;;;;;Dark_colset
;;;;;;;		LD	A,:Dark_colset_sub
;;;;;;;		LD	($2100),A
;;;;;;;		CALL	Dark_colset_sub
;;;;;;;		LD	A,:FADECK
;;;;;;;		LD	($2100),A
;;;;;;;		RET
;;;;;;;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	エンディング 雲スクロール（ CALL by <ZED> ED8000 )		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;;;;;;;ED8000_call
;;;;;;;		LD	A,:ED8000_sub
;;;;;;;		LD	($2100),A
;;;;;;;		CALL	ED8000_sub
;;;;;;;		LD	A,:ED8000
;;;;;;;		LD	($2100),A
;;;;;;;		RET
;;;;;;;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	 カメラ屋用 キャラ転送						x
;x----------------------------------------------------------------------x
;x	    ＥＮＴＲＹ							x
;x		ＢＣ       ： 転送個数					x
;x		Ａ         ： データアドレス ＢＡＮＫ（転送元）		x
;x		Ｈ         ： データアドレス ＨＩＧＨ（  ”  ）		x
;x		Ｌ         ： データアドレス ＬＯＷ  （  ”  ）		x
;x		Ｄ         ： ＶＲＡＭアドレス ＨＩＧＨ（転送先）	x
;x		Ｅ         ： ＶＲＡＭアドレス ＬＯＷ  （  ”  ）	x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CAMERA_CHR_TRAN
		LD	($2100),A	; データアドレスＢＡＮＫ

		CALL	DATA_MOV	; データ転送

		LD	A,:CHR_TRANSFER
		LD	($2100),A
		RET

;改造;;□■□■□■□■□■□■□■□■□■□■□■□■□■□■□■□■□■□■
;改造;;■	 これは、いずれ改造予定！				       □
;改造;;□■□■□■□■□■□■□■□■□■□■□■□■□■□■□■□■□■□■
;改造;;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;改造;;x	 カメラ屋用 スクリーン転送					x
;改造;;x----------------------------------------------------------------------x
;改造;;x	    ＥＮＴＲＹ							x
;改造;;x		ＢＣ       ： 転送個数					x
;改造;;x		ＷＯＲＫＢ ： データアドレス ＢＡＮＫ（転送元）		x
;改造;;x		Ｈ         ： データアドレス ＨＩＧＨ（  ”  ）		x
;改造;;x		Ｌ         ： データアドレス ＬＯＷ  （  ”  ）		x
;改造;;x		Ｄ         ： ＶＲＡＭアドレス ＨＩＧＨ（転送先）	x
;改造;;x		Ｅ         ： ＶＲＡＭアドレス ＬＯＷ  （  ”  ）	x
;改造;;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;改造;CAMERA_SCR_TRAN
;改造;		PUSH	DE
;改造;		PUSH	HL
;改造;
;改造;		LD	A,(WORKB)
;改造;		LD	($2100),A	; データアドレスＢＡＮＫ
;改造;		
;改造;;------------------------------------------------------------------------
;改造;;	アトリビュート
;改造;;------------------------------------------------------------------------
;改造;		LD	A,(CGBFLG)
;改造;		AND	A
;改造;		JR	Z,CAMERA_SCTR_100
;改造;
;改造;		INC	HL		; データアドレス＋１
;改造;		LD	A,$01
;改造;		LD	(VBK),A		; バンク（１）セット
;改造;		LD	(WORKA),A	; フラグ
;改造;
;改造;		CALL	CAMERA_SCTR_SUB
;改造;
;改造;		XOR	A
;改造;		LD	(VBK),A		; バンク（０）セット
;改造;
;改造;;------------------------------------------------------------------------
;改造;;	キャラＮｏ．
;改造;;------------------------------------------------------------------------
;改造;CAMERA_SCTR_100
;改造;		POP	HL
;改造;		POP	DE
;改造;
;改造;		XOR	A
;改造;		LD	(WORKA),A	; フラグ
;改造;		CALL	CAMERA_SCTR_SUB
;改造;
;改造;		LD	A,:SCR_TRANSFER
;改造;		LD	($2100),A
;改造;		RET
;改造;
;改造;;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;改造;;x	 カメラ屋用 スクリーン転送 ＳＵＢ				x
;改造;;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;改造;CAMERA_SCTR_SUB
;改造;		LD	BC,$0400	; 個数
;改造;CAMERA_STSB_100
;改造;		LD	A,(WORKA)	; キャラｏｒアトリビュート
;改造;		AND	A
;改造;		JR	Z,CAMERA_STSB_110
;改造;
;改造;		PUSH	DE
;改造;		LD	A,(HLI)
;改造;		LD	D,A
;改造;		AND	%11000000	; ＶＨ
;改造;		SRL	A
;改造;		LD	E,A
;改造;		LD	A,D
;改造;		AND	%00011100	; ＡＴＲ
;改造;		SRL	A
;改造;		SRL	A
;改造;		OR	E
;改造;		POP	DE
;改造;		JR	CAMERA_STSB_120
;改造;CAMERA_STSB_110
;改造;		LD	A,(HLI)
;改造;CAMERA_STSB_120
;改造;		LD	(DE),A
;改造;		INC	HL
;改造;		INC	DE
;改造;		DEC	BC
;改造;		LD	A,B
;改造;		OR	C
;改造;		JR	NZ,CAMERA_STSB_100
;改造;		RET
;改造;
;□■□■□■□■□■□■□■□■□■□■□■□■□■□■□■□■□■□■
;■	 これが、改造バージョンだ！				       □
;□■□■□■□■□■□■□■□■□■□■□■□■□■□■□■□■□■□■
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	 カメラ屋用 スクリーン転送（エンディングでも使用）		x
;x----------------------------------------------------------------------x
;x	    ＥＮＴＲＹ							x
;x		ＢＣ       ： 転送個数					x
;x		Ａ         ： データアドレス ＢＡＮＫ（転送元）		x
;x		Ｈ         ： データアドレス ＨＩＧＨ（  ”  ）		x
;x		Ｌ         ： データアドレス ＬＯＷ  （  ”  ）		x
;x		ＷＯＲＫＦ ： リターンバンク				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CAMERA_SCR_TRAN
		PUSH	HL

		LD	($2100),A	; データアドレスＢＡＮＫ
		
;------------------------------------------------------------------------
;	アトリビュート
;------------------------------------------------------------------------
		LD	A,(CGBFLG)
		AND	A
		JR	Z,CAMERA_SCTR_100

		LD	DE,$0168	; ２０×１８
		ADD	HL,DE
		LD	A,$01
		LD	(VBK),A		; バンク（１）セット

		CALL	CAMERA_SCTR_SUB

		XOR	A
		LD	(VBK),A		; バンク（０）セット

;------------------------------------------------------------------------
;	キャラＮｏ．
;------------------------------------------------------------------------
CAMERA_SCTR_100
		POP	HL
		PUSH	HL

		CALL	CAMERA_SCTR_SUB

		POP	HL
		LD	A,(GMMODE)
		CP	PRN
		JR	NZ,CAMERA_SCTR_200

		CALL	CAMERA_PRBF_TRAN	; プリンタバッファセット

CAMERA_SCTR_200
;;;;;;;		LD	A,:SCR_TRANSFER
		LD	A,(WORKF)
		LD	($2100),A
		RET

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	 カメラ屋用 スクリーン転送 ＳＵＢ				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CAMERA_SCTR_SUB
		LD	DE,SCR_VRAM_ADRS; Ｖ－ＲＡＭアドレス（固定）
CAMERA_STSB_100
		LD	A,(HLI)
		LD	(DE),A

		INC	E
		LD	A,E
		AND	%00011111
		CP	20
		JR	NZ,CAMERA_STSB_100
		LD	A,E
		ADD	A,12
		LD	E,A
		LD	A,D
		ADC	A,$0
		LD	D,A
		CP	$9A
		JR	NZ,CAMERA_STSB_100
		LD	A,E
		CP	$40
		JR	NZ,CAMERA_STSB_100
		RET

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	 ポケットプリンタ用 スクリーンバッファ転送			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CAMERA_PRBF_TRAN
;;;;;;;		LD	BC,18*20	; 個数
;;;;;;;		LD	DE,scrbuf	; ＲＡＭアドレス（固定）
;;;;;;;CAMERA_PRTR_100
;;;;;;;		LD	A,(HLI)
;;;;;;;		LD	(DE),A
;;;;;;;		INC	DE
;;;;;;;		DEC	BC
;;;;;;;		LD	A,B
;;;;;;;		OR	C
;;;;;;;		JR	NZ,CAMERA_PRTR_100
;;;;;;;		RET


		LD	BC,18*20	; 個数
		LD	DE,scrbuf	; ＲＡＭアドレス（固定）

		jp	DATA_MOV	; データ転送
;;;(CGB)		CALL	DATA_MOV	; データ転送
;;;(CGB)
;;;(CGB)		RET

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	 カメラ屋用 カラー転送						x
;x----------------------------------------------------------------------x
;x	    ＥＮＴＲＹ							x
;x		Ｂ         ： 転送個数					x
;x		Ａ         ： データアドレス ＢＡＮＫ（転送元）		x
;x		Ｈ         ： データアドレス ＨＩＧＨ（  ”  ）		x
;x		Ｌ         ： データアドレス ＬＯＷ  （  ”  ）		x
;x		Ｄ         ： ＣＧＷＯＲＫアドレス ＨＩＧＨ（転送先）	x
;x		Ｅ         ： ＣＧＷＯＲＫアドレス ＬＯＷ  （  ”  ）	x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;;;;;;;CAMERA_COL_TRAN
;;;;;;;		LD	($2100),A	; データアドレスＢＡＮＫ
;;;;;;;
;;;;;;;		LD	A,$2
;;;;;;;		LD	(SVBK),A
;;;;;;;
;;;;;;;		CALL	DATA_MOV
;;;;;;;
;;;;;;;		XOR	A
;;;;;;;		LD	(SVBK),A
;;;;;;;
;;;;;;;		LD	A,:COL_TRANSFER
;;;;;;;		LD	($2100),A
;;;;;;;		RET
;;;;;;;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	 カメラ屋用 常駐キャラクター転送				x
;x				(注)Ａレジスタに戻りバンクを入れてきてるx
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CAMERA_CHR_RESET
		PUSH	AF
		CALL	BANKST
		JP	POP_SET_RT

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	 ポケットプリンタ用 データーバッファーセット			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
dtbfset
		ld	a,(chradr+2)
		ld	(2100h),a
;
_loop1
		ld	a,(hli)
		ld	(de),a
		inc	de
		dec	b
		jr	nz,_loop1
;
		ld	a,:detaset
		ld	(2100h),a
		ret

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	バンク越え サブルーチン	ＣＡＬＬ				x
;x----------------------------------------------------------------------x
;x	    ＥＮＴＲＹ							x
;x		CallBank   ： コール先 ＢＡＮＫ				x
;x		CallHigh   ： コール先 ＨＩＧＨ				x
;x		CallLow    ： コール先 ＬＯＷ				x
;x		ReturnBank ： リターン ＢＡＮＫ				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
JSL_CALL
		LD	A,(CallBank)
		LD	($2100),A

		CALL	JSL_CALL_SUB

		LD	A,(ReturnBank)
		LD	($2100),A
		RET

JSL_CALL_SUB
		LD	A,(CallHigh)
		LD	H,A
		LD	A,(CallLow)
		LD	L,A
		JP	(HL)

;===============================================================
	END

;
