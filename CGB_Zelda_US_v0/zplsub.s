
		onbankgroup

;****************************************************************
;*								*
;*	タイトル    ：	ＣＧＢゼルダ				*
;*	ファイル名  ：	ZPLSUB.S				*
;*	処理内容    ：	ZPL.S サブルーチン			*
;*	作成日付    ：  １９９８／０６／０４			*
;*								*
;****************************************************************
;
;==============	バンク０ ========================================
BANK0		GROUP	0
;-------------<	ZCO >--------------------------------------------
		EXTERN	OBJBG
;-------------<	ZMA >--------------------------------------------
		EXTERN	BG1UNIT_ATR_SUB,NEWDJ_DMA,FUKU_BUF_SET
;-------------<	ZPL >--------------------------------------------
		EXTERN	NOSDST,PLSHST
		EXTERN	JUMPST,PMGIC
		EXTERN	PLCHR_TRAN,ENDG
;-------------<	ZES >--------------------------------------------
		EXTERN	ENIDSHL
;
;==============	バンク０ ========================================
BANK1		GROUP	1
;-------------<	ZS1 >--------------------------------------------
		EXTERN	OPLG,TLX
;
;==============	バンク３ ========================================
BANK3		GROUP	3
;-------------<	ZEN >-------------
		EXTERN	BOMBR
;
;==============	バンク１Ｂ ======================================
BANK1B		GROUP	$1B
;-------------<	ZCHR >------------
		EXTERN	FUKU_DJ_CHR
;
;================================================================
	NLIST
	PUBALL
;
BANK20	GROUP	$20
;
	LIB	ZRAM	; RAM ＥＱＵＡＴＥ ファイル
	LIB	ZBN	; BG unit no file !
;
;---------------------------------------------------------------
	LIST
	KANJI
	isdmg
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	敵キャラクター転送するためのアドレスセレクト			x
;x			戻り値						x
;x			　Ａ：転送元バンク(注：０なら転送しない)	x
;x			ＤＥ：転送先アドレス				x
;x			ＨＬ：転送元アドレス				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
NEWDJ_TEKI_DAT0
	DW	$3551,$354F,            $0000,$354B
	DW	$0000,$0000,$0000,$3544,$0000,$0000
	DW	      $0000,$0000,$3548,$0000
	DW	      $0000,$0000,$0000,$3544
	DW	      $354E,$0000,$0000,$0000
;
NEWDJ_TEKI_DAT1
	DW	$0000,$314D,            $0000,$354C
	DW	$2E51,$3545,$3545,$0000,$3545,$0000
	DW	      $3545,$0000,$3549,$0000
	DW	      $0000,$3545,$0000,$3545
	DW	      $0000,$0000,$0000,$0000
;
NEWDJ_TEKI_DAT2
	DW	$3550,$0000,            $0000,$0000
	DW	$0000,$0000,$0000,$0000,$0000,$3546
	DW	      $0000,$0000,$354A,$0000
	DW	      $3546,$0000,$0000,$0000
	DW	      $0000,$0000,$0000,$3546
;
NEWDJ_TEKI_DAT3
	DW	$0000,$0000,            $0000,$354D
	DW	$0000,$0000,$0000,$0000,$3547,$0000
	DW	      $3547,$3547,$0000,$3547
	DW	      $0000,$3547,$3547,$0000
	DW	      $0000,$0000,$3547,$0000
;
NEWDJ_TEKI_CHR
		LD	HL,NEWDJ_TEKI_DAT0
		LD	A,(GRNDPT)
		RLA
		LD	E,A
		LD	D,$000
		INC	E
		PUSH	DE
		ADD	HL,DE
		LD	A,(HL)
		AND	A
		JR	Z,NEWDJ_TEKI_100
		LD	D,A
		DEC	HL
		LD	A,(HL)
		LD	B,A
		LD	C,$004
		LD	A,D
		LD	H,:NEWDJ_TEKI_CHR
		CALL	NEWDJ_DMA
;
NEWDJ_TEKI_100
		POP	DE
		PUSH	DE
		LD	HL,NEWDJ_TEKI_DAT1
		ADD	HL,DE
		LD	A,(HL)
		AND	A
		JR	Z,NEWDJ_TEKI_200
		LD	D,A
		DEC	HL
		LD	A,(HL)
		LD	B,A
		LD	C,$005
		LD	A,D
		LD	H,:NEWDJ_TEKI_CHR
		CALL	NEWDJ_DMA
;
NEWDJ_TEKI_200
		POP	DE
		PUSH	DE
		LD	HL,NEWDJ_TEKI_DAT2
		ADD	HL,DE
		LD	A,(HL)
		AND	A
		JR	Z,NEWDJ_TEKI_300
		LD	D,A
		DEC	HL
		LD	A,(HL)
		LD	B,A
		LD	C,$006
		LD	A,D
		LD	H,:NEWDJ_TEKI_CHR
		CALL	NEWDJ_DMA
;
NEWDJ_TEKI_300
		POP	DE
		LD	HL,NEWDJ_TEKI_DAT3
		ADD	HL,DE
		LD	A,(HL)
		AND	A
		JR	Z,NEWDJ_TEKI_400
		LD	D,A
		DEC	HL
		LD	A,(HL)
		LD	B,A
		LD	C,$007
		LD	A,D
		LD	H,:NEWDJ_TEKI_CHR
		CALL	NEWDJ_DMA
;
NEWDJ_TEKI_400
		LD	A,(GRNDPT)
		CP	$001
		JR	NZ,NEWDJ_TEKI_900
		LD	A,:NEWDJ_TEKI_CHR
		CALL	FUKU_BUF_SET
;
NEWDJ_TEKI_900
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	服のダンジョンのキャラクター転送アニメーション			x
;x			戻り値						x
;x			　Ａ：転送するか？(０以外で転送する)		x
;x			ＢＣ：転送個数					x
;x			ＤＥ：転送先アドレス				x
;x			ＨＬ：転送元アドレス				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
NEWDJ_CHR_ADD
		DB	$00,$40,$80,$C0
		DB	$00,$40,$80,$C0
;
NEWDJ_CHR_DT0
		DB	$00,$00,        $00,$00
		DB	$00,$00,$00,$00,$00,$00
		DB	    $00,$00,$00,$00
		DB	    $00,$04,$00,$00
		DB	    $00,$04,$00,$00
;
NEWDJ_CHR_DT1
		DB	$00,$00,        $00,$00
		DB	$00,$00,$00,$00,$00,$05
		DB	    $00,$00,$00,$00
		DB	    $05,$00,$00,$00
		DB	    $00,$00,$00,$05
;
NEWDJ_CHR
		LD	A,(GRNDPT)
		LD	C,A
		LD	HL,NEWDJ_CHR_DT0
		LD	A,B
		AND	A
		JR	Z,NEWDJ_CHR_020
		LD	HL,NEWDJ_CHR_DT1
NEWDJ_CHR_020
		LD	B,$000
		ADD	HL,BC
		LD	A,(HL)
		AND	A		;転送する？
		RET	Z		;	NO --> return
;
		LD	B,A
		LD	C,$000
		LD	A,(CHTRCT)
		RRA
		RRA
		RRA
		AND	$07
		LD	E,A
		LD	D,$00
		LD	HL,NEWDJ_CHR_ADD
		ADD	HL,DE
		LD	L,(HL)
		LD	H,$000
		LD	DE,FUKU_DJ_CHR
		ADD	HL,BC
		ADD	HL,DE
		LD	DE,CHRRAM+$0FC0
		LD	BC,$0040
		LD	A,$035
		AND	A
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ＢＧコインユニットセットチェック				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
NEWDJ_COIN_CHK
		DI		;割り込み禁止
;
		LD	BC,BGUNDT
		LD	DE,COINBF
		LD	HL,SVBK
COIN_CHK_030
		LD	A,(BC)
		CP	RPLFT
		JR	Z,COIN_CHK_050
		CP	RPRIT
		JR	NZ,COIN_CHK_080
COIN_CHK_050
		LD	(HL),$005
		LD	A,(DE)
		LD	(HL),$000
		AND	A		;すでにコインを取ってある？
		JR	Z,COIN_CHK_080	;	NO --> COIN_CHK_080
		LD	A,DTU08
		LD	(BC),A
COIN_CHK_080
		INC	BC
		INC	DE
		LD	A,E
		CP	$0C0
		JR	NZ,COIN_CHK_030
;
		EI		;割り込み許可
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	服のダンジョンのＢＧコインとったかチェック用のバッファクリア	x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
NEWDJ_COINBF_CLR
		LD	A,(CGBFLG)
		AND	A
		RET	Z
;
		DI		;割り込み禁止
		LD	A,$005
		LD	(SVBK),A
		LD	HL,COINBF
COINBF_LOOP
		XOR	A
		LD	(HLI),A
		LD	A,L
		CP	$0C0
		JR	NZ,COINBF_LOOP
		XOR	A
		LD	(SVBK),A
;
		EI		;割り込み許可
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	服のダンジョン専用ユニットポジションサーチ		x
;x		入力値						x
;x			ＤＥ：キャラクターの向きの数字		x
;x			ＷＯＲＫ０：Ｘポジション		x
;x			ＷＯＲＫ１：Ｙポジション		x
;x		戻り値						x
;x			ＤＥ：ユニットポジション		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
NEWDJ_X
	DB	$09,$05,$08,$08
;		 右  左  上  下
NEWDJ_Y
	DB	$0A,$0A,$07,$0C
;
NEWDJ_UNSH
		LD	HL,NEWDJ_X
		ADD	HL,DE
		LD	A,(WORK0)
		ADD	A,(HL)
		SUB	$08
		AND	$F0
		LD	(OBJXP),A
		SWAP	A
		LD	(WORK0),A
;
		LD	HL,NEWDJ_Y
		ADD	HL,DE
		LD	A,(WORK1)
		ADD	A,(HL)
		SUB	$10
		AND	$F0
		LD	E,A
		LD	(OBJYP),A
		LD	A,(WORK0)
		OR	E
		LD	E,A
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ＶＲＡＭＤセット				x
;x		セット値				x
;x		ＤＥ：セットするデータアドレス		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
NEWDJ_VRAMD_SET
		PUSH	DE
		LD	HL,VRAMD+1
		LD	A,(VRAMD)
		LD	E,A
		ADD	A,10
		LD	(VRAMD),A
		LD	D,$00
;
		ADD	HL,DE
;
		POP	DE
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
		LD	(HL),$00
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	新ダンジョン専用ニューＢＧチェック				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
NEWDJ_BGCRS
		LD	A,(BGCKOF)	;なに！
		AND	A		;ＢＧチェックを
		RET	NZ		;無視するだと！！
;
		LD	A,(DNJNNO)
		CP	NEWDJ		;新ダンジョン？
		RET	NZ		;	NO --> return
;
		LD	A,(OBJYP)
		LD	D,A
		LD	A,(OBJXP)
		LD	E,A
		PUSH	DE
;
		LD	D,$00
		LD	A,(PLCMKI)
		LD	E,A
		LD	A,(PLXPSL)
		LD	(WORK0),A
		LD	A,(PLYPSL)
		LD	(WORK1),A
		CALL	NEWDJ_UNSH
;
		LD	HL,BGUNDT+$11
		ADD	HL,DE
		LD	A,(HL)		;トランポリンに
		CP	TRPNG		;リンクが乗ったか？
		JR	Z,NEWDJ_050	;	YES --> NEWDJ_050
		CP	TRPNR		;	NO ---> NEWDJ_900
		JR	Z,NEWDJ_050	;
		CP	TRPNY		;
		JR	NZ,NEWDJ_100	;
NEWDJ_050
		LD	A,(PLJPFG)
		AND	A		;ジャンプ中？
		JR	NZ,NEWDJ_900	;	YES --> NEWDJ_900
		CALL	TRNPRN_CHK
		CALL	JUMPST
		JR	NEWDJ_900
;
NEWDJ_100
		CP	RPLFT		;ＢＧルピーに触った？
		JR	Z,NEWDJ_150	;	YES --> NEWDJ_150
		CP	RPRIT		;	NO ---> NEWDJ_200
		JR	NZ,NEWDJ_200	;
NEWDJ_150
		CALL	BGCOIN_CHK
		JR	NEWDJ_900
;
NEWDJ_200
;
NEWDJ_900
		POP	DE
		LD	A,D
		LD	(OBJYP),A
		LD	A,E
		LD	(OBJXP),A
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ＢＧコインＧＥＴ					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
BGCOIN_DAT
		DB	$10,$12,$11,$13
;
BGCOIN_CHK
		LD	A,DTU08
		LD	(UNTATR),A
		LD	(HL),A
		LD	A,(COINU2)
		ADD	A,$005		;５ルピーＧＥＴ！！
		LD	(COINU2),A
;
		DI			;割り込み禁止
		LD	A,$005
		LD	(SVBK),A
		LD	HL,COINBF+$11
		ADD	HL,DE
		LD	(HL),A
		XOR	A
		LD	(SVBK),A
		EI			;割り込み許可
;
		CALL	OBJBG
;
		PUSH	BC
		LD	A,$020
		CALL	BG1UNIT_ATR_SUB
		POP	BC
;
		LD	DE,BGCOIN_DAT
		CALL	NEWDJ_VRAMD_SET
;
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	服のダンジョンでトランポリンに乗ってジャンプするか？	x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
TRNPRN_DAT
		DB	$76,$77,$76,$77
;
TRNPRN_CHK
		LD	A,(HL)
		INC	A
		LD	(WORK0),A
		DEC	A
		CP	TRPNR
		JR	NZ,TPN_200
		LD	A,DANA0
		LD	(WORK0),A
;
TPN_200
		LD	A,(WORK0)
		LD	(HL),A
		CALL	OBJBG
;
		PUSH	BC
		LD	A,(WORK0)
		LD	(UNTATR),A
		LD	A,$020
		CALL	BG1UNIT_ATR_SUB
		POP	BC
;
		LD	A,(WORK0)	;穴にキャラクタナンバー
		CP	DANA0		;	書き換え？
		JR	NZ,TPN_600	;	NO --> TPN_600
;
		LD	DE,TRNPRN_DAT
		CALL	NEWDJ_VRAMD_SET
;
TPN_600
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	墓石を順番に押したかチェック(新ダンジョン用)		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
HakaCheck_DATA
		DB	$35,$33,$13,$15,$17
;
HakaCheck
		PUSH	BC
		PUSH	DE
;
		LD	HL,HakaCheck_DATA
		LD	A,(HAKAFG)
		LD	E,A
		LD	D,$000
		ADD	HL,DE
		LD	A,(HL)
		LD	HL,ENHELP2
		CP	(HL)
		JR	NZ,HaKa_200
		LD	A,(HAKAFG)
		INC	A
		LD	(HAKAFG),A
		CP	$005
		JR	NZ,HaKa_200
		LD	A,$80
		LD	(HAKAFG),A
		LD	A,$002			;正解音!!
		LD	(SOUND1),A		;
;
		CALL	NEWDJ_COINBF_CLR
;
HaKa_200
		POP	DE
		POP	BC
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ZPL.DMGの中にあったサブルーチンをここに移動してきた	x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	Item cros check size set	%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
TLCRXD
	DB	$10,$F0,$08,$08
TLCRYD
	DB	$0C,$0C,$F0,$10
;- - - - - - - - - - - - - - - - - - - - - -
TLCRST_SUB
	LD	A,(PLCMKI)
	LD	E,A
	LD	D,$0
;
	LD	HL,TLCRXD
	ADD	HL,DE
	LD	A,(PLXPSL)
	ADD	A,(HL)
	LD	(TLCRXL),A
;
	LD	HL,TLCRYD
	ADD	HL,DE
	LD	A,(PLYPSL)
	ADD	A,(HL)
	LD	(TLCRYL),A
;
	LD	A,$02
	LD	(TLCRTM),A
	RET
;
;+------------------------------------------------------+
;|	スクロールのよるＢＧの書き換えのルーチンで	|
;|		各レジスタにセットする処理		|
;+------------------------------------------------------+
SCRL_SUB
		LD	A,(WORK9)
		LD	H,A
		LD	A,(WORKA)
		LD	L,A
		LD	A,(WORKB)
		LD	B,A
		LD	A,(WORKC)
		LD	C,A
		LD	A,(WORKD)
		LD	D,A
		LD	A,(WORKE)
		LD	E,A
		RET
;
;+------------------------------------------------------+
;|	スクロールによるＢＧの書き換えの		|
;|		ＶＲＡＭＤ関係の初期設定サブルーチン	|
;+------------------------------------------------------+
SCVRAL
	DB	$01,$01,$20,$20
SCVRAT
	DB	$93,$93,$13,$13
;
;+------- ＧＢ用 -------+
SCRL_INIT_GB
		LD	A,(SCRADL)
		LD	(VRAMD+2),A
;
;;;(CGB)		ADD	A,(HL) ;E
;;;(CGB)		RL	D		; PUSH CY
;;;(CGB)		LD	(VRAMD+$19),A
		LD	A,(SCRADH)
		OR	$98
		LD	(VRAMD+1),A
;
;;;(CGB)		RR	D		; POP CY
;;;(CGB)		ADC	A,$00
;;;(CGB)		LD	(VRAMD+$18),A
		LD	HL,SCVRAT
		ADD	HL,BC
;
		LD	A,(HL)
		LD	(VRAMD+3),A
;;;(CGB)		LD	(VRAMD+$1A),A
;
		LD	A,$00
		LD	(VRAMD+$18),A
;;;(CGB)		LD	(VRAMD+$2F),A
;
		LD	A,$EE		;Not write for yoko scroll
		LD	(VRAMD+$14),A
		LD	(VRAMD+$15),A
		LD	(VRAMD+$16),A
		LD	(VRAMD+$17),A
;;;(CGB)		LD	(VRAMD+$2B),A
;;;(CGB)		LD	(VRAMD+$2C),A
;;;(CGB)		LD	(VRAMD+$2D),A
;;;(CGB)		LD	(VRAMD+$2E),A
		LD	B,>VRAMD
		LD	C,<VRAMD+4
;;;(CGB)		LD	D,>VRAMD
;;;(CGB)		LD	E,<VRAMD+$1B
;
		RET
;
;+------- ＣＧＢ用 -------+
SCRL_INIT_CGB
		LD	A,(SCRADL)
		LD	(VRAMD+2),A
		LD	(VRAMD_AT+$02),A
;
;;;(CGB)		ADD	A,(HL) ;E
;;;(CGB)		RL	D		; PUSH CY
;;;(CGB)		LD	(VRAMD+$19),A
;;;(CGB)		LD	(VRAMD_AT+$19),A
		LD	A,(SCRADH)
		OR	$98
		LD	(VRAMD+1),A
		LD	(VRAMD_AT+$01),A
;
;;;(CGB)		RR	D		; POP CY
;;;(CGB)		ADC	A,$00
;;;(CGB)		LD	(VRAMD+$18),A
;;;(CGB)		LD	(VRAMD_AT+$18),A
		LD	HL,SCVRAT
		ADD	HL,BC
;
		LD	A,(HL)
		LD	(VRAMD+3),A
;;;(CGB)		LD	(VRAMD+$1A),A
		LD	(VRAMD_AT+$03),A
;;;(CGB)		LD	(VRAMD_AT+$1A),A
;
		LD	A,$00
		LD	(VRAMD+$18),A
		LD	(VRAMD_AT+$18),A
;;;(CGB)		LD	(VRAMD+$2F),A
;;;(CGB)		LD	(VRAMD_AT+$2F),A
;
		LD	A,$EE		;Not write for yoko scroll
		LD	(VRAMD+$14),A
		LD	(VRAMD+$15),A
		LD	(VRAMD+$16),A
		LD	(VRAMD+$17),A
;;;(CGB)		LD	(VRAMD+$2B),A
;;;(CGB)		LD	(VRAMD+$2C),A
;;;(CGB)		LD	(VRAMD+$2D),A
;;;(CGB)		LD	(VRAMD+$2E),A
		LD	B,>VRAMD
		LD	C,<VRAMD+4
;;;(CGB)		LD	D,>VRAMD
;;;(CGB)		LD	E,<VRAMD+$1B
;
		LD	(VRAMD_AT+$14),A
		LD	(VRAMD_AT+$15),A
		LD	(VRAMD_AT+$16),A
		LD	(VRAMD_AT+$17),A
;;;(CGB)		LD	(VRAMD_AT+$2B),A
;;;(CGB)		LD	(VRAMD_AT+$2C),A
;;;(CGB)		LD	(VRAMD_AT+$2D),A
;;;(CGB)		LD	(VRAMD_AT+$2E),A
;
		LD	A,>VRAMD_AT
		LD	(WORKB),A
		LD	(WORKD),A
		LD	A,<VRAMD_AT+$04
		LD	(WORKC),A
		LD	A,<VRAMD_AT+$1B
		LD	(WORKE),A
		RET
;
;
;
SCROLL_INIT
		LD	A,(SCRLMK)
		LD	C,A
		LD	B,$00
;
;;;(CGB)		LD	A,$01
;;;(CGB)		LD	(SCRLTM),A
;;;(CGB);
		LD	A,(SCUNTA)
		LD	(WORK2),A
;
		LD	HL,SCVRAL
		ADD	HL,BC
;
		LD	A,(CGBFLG)
		AND	A		;ＣＧＢモード？
		JR	NZ,SCROLL_100	;	YES --> SCROLL_100
		CALL	SCRL_INIT_GB
		JR	SCROLL_200
SCROLL_100
		CALL	SCRL_INIT_CGB
SCROLL_200
		RET
;
;--------------------------------------------------------
;							 |
;	ＫＮＣＳＥＴ	；　剣 キャラセット		 |
;							 |
;	Input						 |
;	BC   :Set OAM start addres			 |
;	WORK0:Main Y pos				 |
;	WORK1:Main X pos				 |
;	H    :Y add value				 |
;	L    :X add value				 |
;	WORK2:Ken. paturn 0-7				 |
;							 |
;--------------------------------------------------------
KNCSCD
		DB	$08,$06	;0
		DB	$0C,$0A	;1
		DB	$FF,$04	;2
		DB	$0A,$0C	;3
		DB	$06,$08	;4
		DB	$0A,$0C	;5
		DB	$FF,$04	;6
		DB	$0C,$0A	;7
KNCSAD
		DB	$23,$23	;0
		DB	$63,$63	;1
		DB	$03,$03	;2
		DB	$43,$43	;3
		DB	$03,$03	;4
		DB	$03,$03	;5
		DB	$43,$43	;6
		DB	$23,$23	;7
;===========================================
KNCSET_SUB
		PUSH	HL
;
		LD	A,(WORK0)
		ADD	A,H
		LD	(BC),A		; Y left
		INC	BC
		LD	A,(WORK1)
		ADD	A,L
		LD	(BC),A		; X left
		INC	BC
;
		LD	HL,KNCSCD
		LD	A,(WORK2)
		SLA	A
		LD	E,A
		LD	D,$0
		ADD	HL,DE
		LD	A,(HL)
		LD	(BC),A		; Chr left
		CP	$FF
		JR	NZ,KNC010	; Not chr ?
;				; yes ! clear
		DEC	BC
		LD	A,$F0
		LD	(BC),A
		INC	BC
KNC010
		INC	BC
		LD	HL,KNCSAD
		ADD	HL,DE
		LD	A,(HL)
		LD	HL,WORK3	; Color
		OR	(HL)
		LD	(BC),A		; Atr left
		LD	A,(CGBFLG)
		AND	A
		JR	Z,KNC010_PASS
		LD	A,(WORK3)
		AND	A
		JR	Z,KNC010_PASS
		LD	A,(BC)
		AND	%11111000
		OR	%00000100
		LD	(BC),A
KNC010_PASS
		INC	BC
;
		POP	HL
;
		LD	A,(WORK0)
		ADD	A,H
		LD	(BC),A		; Y pos right
		INC	BC
		LD	A,(WORK1)
		ADD	A,L
		ADD	A,$08
		LD	(BC),A		; X pos right
		INC	BC
;
		LD	HL,KNCSCD+1
		ADD	HL,DE
		LD	A,(HL)
		LD	(BC),A		; Chr right
		INC	BC
		LD	HL,KNCSAD+1
		ADD	HL,DE
		LD	A,(HL)
		LD	HL,WORK3	; Color
		OR	(HL)
		LD	(BC),A		; Atr right
;
		LD	A,(CGBFLG)
		AND	A
		JR	Z,KNC015_PASS
		LD	A,(WORK3)
		AND	A
		JR	Z,KNC015_PASS
		LD	A,(BC)
		AND	%11111000
		OR	%00000100
		LD	(BC),A
KNC015_PASS
		RET
;
;--------------------------------------------------------
;	GPMAINの中にあったルーチンを移動してきた
;--------------------------------------------------------
PLY100_SUB
	XOR	A
	LD	(BOMBFG),A	; Bomber  shot falg clear !
	LD	(BUMEFG),A	; Bomber  shot falg clear !
	LD	(PFUCKFG),A	; Bomber  shot falg clear !
	LD	(PLCAMD),A	; Player cach flag 
	LD	(SLIMCNT),A	; Boss small slime set count
;
	LD	A,(PLOSHI)
	AND	A
	JR	Z,PLY100
	DEC	A
	LD	(PLOSHI),A	; Player oshi flag 
PLY100
	RET
;
;--------------------------------------------------------
;	TATEST2の中にあったルーチンを移動してきた
;--------------------------------------------------------
TTCRX1
	DB	$10,$00,$08,$08
TTCRX2
	DB	$03,$03,$08,$08
TTCRY1
	DB	$08,$08,$00,$0D
TTCRY2
	DB	$08,$08,$03,$04
;---------------------------------------
TATEST2_SUB
	LD	A,(PLCMKI)
	LD	E,A
	LD	D,$0
;
	LD	HL,TTCRX1
	ADD	HL,DE
;
	LD	A,(PLXPSL)
	ADD	A,(HL)
	LD	(PKCRX1),A
;
	LD	HL,TTCRX2
	ADD	HL,DE
	LD	A,(HL)
	LD	(PKCRX2),A
;
	LD	HL,TTCRY1
	ADD	HL,DE
;
	LD	A,(PLYPS2)
	ADD	A,(HL)
	LD	(PKCRY1),A
;
	LD	HL,TTCRY2
	ADD	HL,DE
	LD	A,(HL)
	LD	(PKCRY2),A
;
	XOR	A
	LD	(KENTAT),A
;
	RET
;
;--------------------------------------------------------
;	BOMBRSTの中にあったルーチンを移動してきた
;--------------------------------------------------------
BBSTXP	
	DB	$08,$F8,$00,$00	
BBSTYP	
	DB	$00,$00,$FD,$04	
;
BOMBRST_SUB
	LD	HL,ENTIM1
	ADD	HL,DE
	LD	(HL),$10	; CACH protect !!
;
	LD	A,(BMYATM)
	AND	A
	JP	Z,BBST001	; Bomb alow chance ?
;				; Yes !
	XOR	A
	LD	(BMYATM),A
;
	LD	A,(YAINDX)	; Old alow -> Bomb alow chenge !
	LD	C,A
	LD	B,D
	LD	HL,ENSTAT
	ADD	HL,BC
	LD	(HL),$01
	RET
;
BYTM	EQU	$06	; Bomb alow chance time !
;
BBST001
	LD	A,BYTM ;$06
	LD	(BMYATM),A
;
	LD	A,E
	LD	(BMINDX),A
;
	LD	A,$0C
	LD	(POWDRTM),A
;
	LD	HL,ENTIM0
	ADD	HL,DE
	LD	(HL),$A0  ;$FF  ;A
;
	LD	HL,ENCHPT
	ADD	HL,DE
	LD	(HL),D ;$00 ;A
;
	LD	HL,ENTIM4
	ADD	HL,DE
	LD	(HL),$3 ; Water up protect
;
	LD	A,(YKFLAG)
	AND	A
	JR	NZ,BBS089
;
	LD	A,$09
	LD	(SOUND1),A	;(S) Bomb set !
	JR	BBS08C
;
BBS089
	LD	HL,ENZPSL
	ADD	HL,DE
	LD	(HL),D
BBS08C
	LD	HL,ENXSPD
	ADD	HL,DE
	LD	(HL),D
	LD	HL,ENYSPD
	ADD	HL,DE
	LD	(HL),D	
;
	LD	HL,ENZSPD
	ADD	HL,DE
	LD	(HL),D
;
	LD	A,(PLCMKI)
	LD	C,A
	LD	B,D
	LD	HL,BBSTXP
	ADD	HL,BC
	LD	A,(PLXPSL)
	ADD	A,(HL)
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,BBSTYP
	ADD	HL,BC
	LD	A,(PLYPSL)
	ADD	A,(HL)
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),A
;
	RET
;
;--------------------------------------------------------
;	BUMERSTの中にあったルーチンを移動してきた
;--------------------------------------------------------
BRSXSD
	DB	$18,$E8,$00
BRSYSD
	DB	$E8,$18,$00
;
BUMERST_SUB
	LD	HL,ENTIM0
	ADD	HL,DE
	LD	(HL),$28  ;A
;
	LD	C,$4
	LD	B,$0
	LD	A,(KEYA1)
BRS080
	SRL	A
	JR	NC,BRS070
;
	INC	B
BRS070
	DEC	C
	JR	NZ,BRS080
;
	LD	A,B
	CP	$2
	JR	C,BRS090
;
	LD	A,(KEYA1)
	AND	%00000011
	LD	C,A
	LD	B,$0
	LD	HL,BRSXSD-1
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,DE
	LD	(HL),A
;
	LD	A,(KEYA1)
	SRL	A
	SRL	A
	AND	%00000011
	LD	C,A
	LD	B,$0
	LD	HL,BRSYSD-1
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENYSPD
	ADD	HL,DE
	LD	(HL),A
BRS090
	RET
;
;--------------------------------------------------------
;	MGICPWの中にあったルーチンを移動してきた
;--------------------------------------------------------
PWSXAD
	DB	$0E,$F2,$00,$00
PWSYAD
	DB	$00,$00,$F4,$0C
;
MGICPW_SUB
	LD	A,$05
	LD	(SOUND1),A	;(S)
;
	LD	A,$0E
	LD	(POWDRTM),A
;
	LD	A,(TUBOCT)
	SUB	$01
	DAA
	LD	(TUBOCT),A
	JR	NZ,MGCL20	;なくなった？
;
	LD	HL,ITEMB	;アイテム枠から消去！
;
	LD	A,(HL)
	CP	PMGIC
	JR	NZ,MGCL10
	LD	(HL),$00
MGCL10
	INC	HL
	LD	A,(HL)
	CP	PMGIC
	JR	NZ,MGCL20
	LD	(HL),$00
MGCL20
	PUSH	BC
;
	LD	A,(PLCMKI)
	LD	C,A
;
	LD	HL,PWSXAD
	ADD	HL,BC
;
	LD	A,(PLXPSL)
	ADD	A,(HL)
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,PWSYAD
	ADD	HL,BC
;
	LD	A,(PLYPSL)
	ADD	A,(HL)
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	A,(PLZPSL)
	LD	HL,ENZPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,ENTIM0
	ADD	HL,DE
	LD	(HL),$17
;
	POP	BC
	RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ZBS.DMGの中にあったサブルーチンをここに移動してきた	x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
HABATAKI_SUB
	LD	A,(HABACNT)
	AND	A
	JR	NZ,HABAT10
;
	LD	A,$2D
	LD	(SOUND3),A	;(S)
HABAT10
	RET
;
;
RAMCLR_SUB
	XOR	A
	LD	(WORKF),A  ; Next goto ram set pointer reset !
	LD	(DOORCT),A	; Door set counter clear!
	LD	(SPEKFG),A
	LD	(NXRMPZ),A	; Next (Z)pos reset (for fole down)
	LD	(TOUROU),A	; Tourou set flag !
	LD	(TOURCT),A	; Tourou set COUNT !
;;;	LD	(BELTFG),A	; Belt conv. CHR TR flag
;;;	LD	(TOGEFG),A	; Toge. CHR TR flag
	LD	(MUTEKI),A	; Player Muteki flag !
	LD	(ONOFBLF),A	; On off block TR flag !
	LD	(SHOPFG),A	; Shop flag !!
	LD	(EXITFG),A	; Dundeon EXIT flag !
	LD	(EFLFLG),A	; ENMY ANA OCHI FLAG !
	LD	(EFLFLG2),A	; ENMY ANA OCHI FLAG !
	LD	(BOSSFG),A	; ボス部屋FLAG
	LD	(TAKISDF),A	; 滝 SE FLAG
	LD	(UTAFLG),A	; マリン歌FLAG
	LD	(IWAMSFG),A	;いわもちあげメッセージフラグ！
	LD	(KEYSDON),A
;
	LD	(FADECT2),A	;Fade test
;
	LD	(HAKAFG),A	;新ダンジョン入り口フラグ
;
	LD	A,$FF
	LD	(NXRMMD),A
	LD	(MAINDX),A	;マリンインデックス！
;
	RET
;
;
;
;┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
;┃	zs1.s のプログラムをここに移動					 ┃
;┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ＺＥＬＤＡタイトル文字ＭＯＶＥ					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
TXSCYDEND
;	     0	 1   2	 3   4	 5   6	 7
	DB $00,$00,$00,$00,$00,$00,$00,$00
;	     0	 1   2	 3   4	 5   6	 7
	DB $00,$00,$00,$00,$00,$00,$00,$00
;	     8	 9   A	 B   C	 D   E	 F
	DB $00,$00,$00,$00,$00,$00,$00,$00
;	     0	 1   2	 3   4	 5   6	 7
	DB $00,$00,$00,$00,$00,$00,$00,$00
;	     8	 9   A	 B   C	 D   E	 F
	DB $00,$00,$00,$00,$00,$00,$00,$00
;	     0	 1   2	 3   4	 5   6	 7
	DB $00,$00,$00,$00,$00,$00,$00,$00
;	     8	 9   A	 B   C	 D   E	 F
	DB $00,$00,$00,$00,$00,$00,$00,$00
;	     8	 9   A	 B   C	 D   E	 F
	DB $00,$00,$00,$00,$00,$00,$00,$00
;==========================================
TXSCYD48
;	     0	 1   2	 3   4	 5   6	 7
	DB $F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0
;	     0	 1   2	 3   4	 5   6	 7
	DB $F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0
;	     8	 9   A	 B   C	 D   E	 F
	DB $E0,$E0,$E0,$E0,$E0,$E2,$E5,$E8
;	     0	 1   2	 3   4	 5   6	 7
	DB $EB,$EE,$F1,$F4,$F7,$FA,$FD,$00
;	     8	 9   A	 B   C	 D   E	 F
	DB $03,$06,$09,$0C,$0F,$12,$15,$18
;	     0	 1   2	 3   4	 5   6	 7
	DB $1B,$1E,$21,$24,$27,$2A,$2D,$30
;	     8	 9   A	 B   C	 D   E	 F
	DB $33,$36,$39,$3C,$3F,$42,$45,$48
;	     8	 9   A	 B   C	 D   E	 F
	DB $33,$36,$39,$3C,$3F,$42,$45,$48
;==========================================
TXSCYD30
;	     0	 1   2	 3   4	 5   6	 7
	DB $F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0
;	     0	 1   2	 3   4	 5   6	 7
	DB $F0,$F0,$F0,$F0,$F0,$F0,$F0,$E0
;	     8	 9   A	 B   C	 D   E	 F
	DB $E2,$E4,$E6,$E8,$EA,$EC,$EE,$F0
;	     0	 1   2	 3   4	 5   6	 7
	DB $F2,$F4,$F6,$F8,$FA,$FC,$FE,$00
;	     8	 9   A	 B   C	 D   E	 F
	DB $02,$04,$06,$08,$0A,$0C,$0E,$10
;	     0	 1   2	 3   4	 5   6	 7
	DB $12,$14,$16,$18,$1A,$1C,$1D,$1E
;	     8	 9   A	 B   C	 D   E	 F
	DB $20,$22,$24,$26,$28,$2A,$2C,$2E
;	     8	 9   A	 B   C	 D   E	 F
	DB $20,$22,$24,$26,$28,$2A,$2C,$2E
;==========================================
TXSCYD24
;	     0	 1   2	 3   4	 5   6	 7
	DB $F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0
;	     0	 1   2	 3   4	 5   6	 7
	DB $F0,$DF,$E0,$E2,$E3,$E5,$E6,$E8
;	     8	 9   A	 B   C	 D   E	 F
	DB $E9,$EB,$EC,$EE,$EF,$F1,$F2,$F4
;	     0	 1   2	 3   4	 5   6	 7
	DB $F5,$F7,$F8,$FA,$FB,$FD,$FE,$00
;	     8	 9   A	 B   C	 D   E	 F
	DB $01,$03,$04,$06,$07,$09,$0A,$0C
;	     0	 1   2	 3   4	 5   6	 7
	DB $0D,$0F,$10,$12,$13,$15,$16,$18
;	     8	 9   A	 B   C	 D   E	 F
	DB $19,$1B,$1C,$1E,$1F,$21,$22,$24
;	     8	 9   A	 B   C	 D   E	 F
	DB $19,$1B,$1C,$1E,$1F,$21,$22,$24
;==========================================
TXSCYD22
;	     0	 1   2	 3   4	 5   6	 7
	DB $F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0
;	     0	 1   2	 3   4	 5   6	 7
	DB $F0,$F0,$E2,$E3,$E5,$E6,$E8,$E9
;	     8	 9   A	 B   C	 D   E	 F
	DB $EB,$EC,$EE,$F0,$F2,$F3,$F6,$F7
;	     0	 1   2	 3   4	 5   6	 7
	DB $F8,$F9,$FA,$FC,$FD,$FE,$FF,$00
;	     8	 9   A	 B   C	 D   E	 F
	DB $01,$03,$04,$06,$07,$09,$0A,$0C
;	     0	 1   2	 3   4	 5   6	 7
	DB $0D,$0F,$10,$12,$13,$15,$16,$18
;	     8	 9   A	 B   C	 D   E	 F
	DB $19,$1B,$1C,$1E,$1F,$21,$22,$22
;	     8	 9   A	 B   C	 D   E	 F
	DB $24,$25,$27,$29,$2B,$2C,$2E,$2F
;==========================================
TXSCYD20
;	     0	 1   2	 3   4	 5   6	 7
	DB $F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0
;	     0	 1   2	 3   4	 5   6	 7
	DB $E1,$E2,$E4,$E5,$E6,$E8,$E9,$EA
;	     8	 9   A	 B   C	 D   E	 F
	DB $EC,$ED,$EE,$F0,$F1,$F2,$F4,$F5
;	     0	 1   2	 3   4	 5   6	 7
	DB $F6,$F8,$F9,$FA,$FC,$FE,$FF,$00
;	     8	 9   A	 B   C	 D   E	 F
	DB $01,$02,$04,$05,$06,$08,$09,$0A
;	     0	 1   2	 3   4	 5   6	 7
	DB $0C,$0D,$0E,$10,$11,$12,$14,$15
;	     8	 9   A	 B   C	 D   E	 F
	DB $16,$18,$19,$1A,$1C,$1D,$1E,$20
;	     8	 9   A	 B   C	 D   E	 F
	DB $22,$23,$24,$25,$27,$28,$2A,$2B
;==========================================
TXSCYD1E
;	     0	 1   2	 3   4	 5   6	 7
	DB $F0,$F0,$F0,$F0,$F0,$F0,$F0,$E2
;	     0	 1   2	 3   4	 5   6	 7
	DB $E3,$E4,$E5,$E6,$E8,$E9,$EA,$EC
;	     8	 9   A	 B   C	 D   E	 F
	DB $ED,$EE,$EF,$F1,$F2,$F3,$F5,$F6
;	     0	 1   2	 3   4	 5   6	 7
	DB $F8,$F9,$FA,$FB,$FD,$FE,$FF,$00
;	     8	 9   A	 B   C	 D   E	 F
	DB $01,$02,$03,$05,$06,$07,$08,$0A
;	     0	 1   2	 3   4	 5   6	 7
	DB $0B,$0C,$0D,$0F,$10,$11,$12,$14
;	     8	 9   A	 B   C	 D   E	 F
	DB $15,$16,$17,$19,$1A,$1B,$1D,$1E
;	     8	 9   A	 B   C	 D   E	 F
	DB $20,$21,$22,$23,$25,$26,$27,$28
;==========================================
TXSCYD1C
;	     0	 1   2	 3   4	 5   6	 7
	DB $F0,$F0,$F0,$F0,$F0,$F0,$E3,$E4
;	     0	 1   2	 3   4	 5   6	 7
	DB $E5,$E6,$E7,$E8,$E9,$EB,$EC,$ED
;	     8	 9   A	 B   C	 D   E	 F
	DB $EE,$F0,$F1,$F2,$F3,$F4,$F6,$F7
;	     0	 1   2	 3   4	 5   6	 7
	DB $F8,$F9,$FB,$FC,$FD,$FE,$FF,$00
;	     8	 9   A	 B   C	 D   E	 F
	DB $01,$02,$03,$04,$06,$07,$08,$09
;	     0	 1   2	 3   4	 5   6	 7
	DB $0A,$0B,$0C,$0E,$10,$11,$12,$13
;	     8	 9   A	 B   C	 D   E	 F
	DB $14,$15,$16,$18,$19,$1A,$1B,$1C
;	     8	 9   A	 B   C	 D   E	 F
	DB $1D,$1F,$20,$21,$22,$23,$24,$25
;==========================================
TXSCYD1A
;	     0	 1   2	 3   4	 5   6	 7
	DB $F0,$F0,$F0,$F0,$F0,$E4,$E5,$E6
;	     0	 1   2	 3   4	 5   6	 7
	DB $E7,$E8,$E9,$EA,$EB,$EC,$EE,$EF
;	     8	 9   A	 B   C	 D   E	 F
	DB $F0,$F1,$F2,$F3,$F4,$F5,$F6,$F8
;	     0	 1   2	 3   4	 5   6	 7
	DB $F9,$FA,$FB,$FC,$FD,$FE,$FF,$00
;	     8	 9   A	 B   C	 D   E	 F
	DB $01,$02,$03,$04,$05,$06,$07,$08
;	     0	 1   2	 3   4	 5   6	 7
	DB $09,$0A,$0C,$0D,$0E,$0F,$10,$11
;	     8	 9   A	 B   C	 D   E	 F
	DB $12,$13,$15,$16,$17,$18,$19,$1A
;	     8	 9   A	 B   C	 D   E	 F
	DB $1B,$1C,$1D,$1E,$1F,$21,$22,$23
;==========================================
TXSCYD18
;	     0	 1   2	 3   4	 5   6	 7
	DB $F0,$F0,$F0,$F0,$E5,$E6,$E7,$E8
;	     0	 1   2	 3   4	 5   6	 7
	DB $E9,$EA,$EB,$EC,$ED,$EE,$EF,$F0
;	     8	 9   A	 B   C	 D   E	 F
	DB $F1,$F2,$F3,$F4,$F5,$F6,$F7,$F8
;	     0	 1   2	 3   4	 5   6	 7
	DB $F9,$FA,$FB,$FC,$FD,$FE,$FF,$00
;	     8	 9   A	 B   C	 D   E	 F
	DB $01,$02,$03,$04,$05,$06,$07,$08
;	     0	 1   2	 3   4	 5   6	 7
	DB $09,$0A,$0B,$0C,$0D,$0E,$0F,$10
;	     8	 9   A	 B   C	 D   E	 F
	DB $11,$12,$13,$14,$15,$16,$17,$18
;	     8	 9   A	 B   C	 D   E	 F
	DB $19,$1A,$1B,$1C,$1D,$1E,$1F,$20
;==========================================
TXSCYD16
;	     0	 1   2	 3   4	 5   6	 7
	DB $F0,$F0,$F0,$E6,$E7,$E8,$E8,$E9
;	     0	 1   2	 3   4	 5   6	 7
	DB $EA,$EB,$EC,$ED,$EE,$EF,$F0,$F0
;	     8	 9   A	 B   C	 D   E	 F
	DB $F1,$F2,$F3,$F4,$F5,$F6,$F7,$F8
;	     0	 1   2	 3   4	 5   6	 7
	DB $F8,$F9,$FA,$FB,$FC,$FD,$FE,$FF
;	     8	 9   A	 B   C	 D   E	 F
	DB $00,$01,$02,$03,$04,$05,$06,$07
;	     0	 1   2	 3   4	 5   6	 7
	DB $07,$08,$09,$0A,$0B,$0C,$0D,$0E
;	     8	 9   A	 B   C	 D   E	 F
	DB $0F,$10,$11,$12,$13,$14,$15,$16
;	     8	 9   A	 B   C	 D   E	 F
	DB $17,$18,$19,$1A,$1A,$1B,$1C,$1D
;==========================================
TXSCYD14
;	     0	 1   2	 3   4	 5   6	 7
	DB $F0,$F0,$E7,$E8,$E9,$EA,$EB,$EC
;	     0	 1   2	 3   4	 5   6	 7
	DB $EC,$EC,$ED,$EE,$EF,$F0,$F1,$F2
;	     8	 9   A	 B   C	 D   E	 F
	DB $F2,$F3,$F4,$F5,$F6,$F7,$F7,$F8
;	     0	 1   2	 3   4	 5   6	 7
	DB $F9,$FA,$FB,$FC,$FC,$FD,$FE,$FF
;	     8	 9   A	 B   C	 D   E	 F
	DB $00,$01,$02,$03,$04,$04,$05,$06
;	     0	 1   2	 3   4	 5   6	 7
	DB $07,$08,$09,$09,$0A,$0B,$0C,$0D
;	     8	 9   A	 B   C	 D   E	 F
	DB $0E,$0E,$0F,$10,$11,$12,$13,$14
;	     8	 9   A	 B   C	 D   E	 F
	DB $15,$16,$16,$17,$18,$19,$1A,$1B
;==========================================
TXSCYD12
;	     0	 1   2	 3   4	 5   6	 7
	DB $F0,$E9,$E9,$EA,$EB,$EB,$EC,$ED
;	     0	 1   2	 3   4	 5   6	 7
	DB $EE,$EE,$EF,$F0,$F0,$F1,$F2,$F3
;	     8	 9   A	 B   C	 D   E	 F
	DB $F4,$F4,$F5,$F6,$F7,$F8,$F8,$F9
;	     0	 1   2	 3   4	 5   6	 7
	DB $FA,$FB,$FC,$FC,$FD,$FE,$FF,$00
;	     8	 9   A	 B   C	 D   E	 F
	DB $00,$01,$02,$03,$03,$04,$05,$06
;	     0	 1   2	 3   4	 5   6	 7
	DB $06,$07,$08,$09,$0A,$0A,$0B,$0C
;	     8	 9   A	 B   C	 D   E	 F
	DB $0C,$0D,$0E,$0E,$10,$11,$12,$12
;	     8	 9   A	 B   C	 D   E	 F
	DB $13,$14,$15,$15,$16,$17,$18,$18
;==========================================
TXSCYD10
;	     0	 1   2	 3   4	 5   6	 7
	DB $EB,$EC,$EC,$ED,$EE,$EE,$EF,$F0
;	     0	 1   2	 3   4	 5   6	 7
	DB $F0,$F1,$F2,$F2,$F3,$F4,$F4,$F5
;	     8	 9   A	 B   C	 D   E	 F
	DB $F6,$F6,$F7,$F8,$F8,$F9,$FA,$FA
;	     0	 1   2	 3   4	 5   6	 7
	DB $FB,$FC,$FC,$FD,$FE,$FE,$FF,$00
;	     8	 9   A	 B   C	 D   E	 F
	DB $00,$01,$02,$02,$03,$04,$04,$05
;	     0	 1   2	 3   4	 5   6	 7
	DB $06,$06,$07,$08,$08,$09,$0A,$0A
;	     8	 9   A	 B   C	 D   E	 F
	DB $0B,$0C,$0C,$0D,$0E,$0E,$0F,$10
;	     8	 9   A	 B   C	 D   E	 F
	DB $10,$11,$12,$12,$13,$14,$14,$15
;==========================================
TXSCYD0E
;	     0	 1   2	 3   4	 5   6	 7
	DB $ED,$EE,$EE,$EF,$F0,$F0,$F1,$F1
;	     0	 1   2	 3   4	 5   6	 7
	DB $F2,$F2,$F3,$F3,$F3,$F4,$F5,$F5
;	     8	 9   A	 B   C	 D   E	 F
	DB $F6,$F6,$F7,$F8,$F8,$F9,$F9,$FA
;	     0	 1   2	 3   4	 5   6	 7
	DB $FB,$FB,$FC,$FC,$FE,$FF,$FF,$00
;	     8	 9   A	 B   C	 D   E	 F
	DB $00,$01,$01,$02,$03,$03,$04,$04
;	     0	 1   2	 3   4	 5   6	 7
	DB $05,$06,$06,$07,$07,$08,$09,$09
;	     8	 9   A	 B   C	 D   E	 F
	DB $0A,$0A,$0B,$0C,$0C,$0D,$0D,$0E
;	     8	 9   A	 B   C	 D   E	 F
	DB $0F,$0F,$10,$10,$11,$12,$12,$13
;==========================================
TXSCYD0C
;	     0	 1   2	 3   4	 5   6	 7
	DB $F0,$F1,$F1,$F2,$F2,$F3,$F3,$F4
;	     0	 1   2	 3   4	 5   6	 7
	DB $F4,$F5,$F5,$F6,$F6,$F7,$F7,$F8
;	     8	 9   A	 B   C	 D   E	 F
	DB $F8,$F9,$F9,$FA,$FA,$FB,$FB,$FC
;	     0	 1   2	 3   4	 5   6	 7
	DB $FC,$FD,$FD,$FE,$FE,$FF,$FF,$00
;	     8	 9   A	 B   C	 D   E	 F
	DB $00,$01,$01,$02,$02,$03,$03,$04
;	     0	 1   2	 3   4	 5   6	 7
	DB $04,$05,$05,$06,$06,$07,$07,$08
;	     8	 9   A	 B   C	 D   E	 F
	DB $08,$09,$09,$0A,$0A,$0B,$0B,$0C
;	     8	 9   A	 B   C	 D   E	 F
	DB $0C,$0D,$0D,$0E,$0E,$0F,$0F,$10
;==========================================
TXSCYD0A
;	     0	 1   2	 3   4	 5   6	 7
	DB $F3,$F4,$F4,$F4,$F5,$F5,$F6,$F6
;	     0	 1   2	 3   4	 5   6	 7
	DB $F6,$F7,$F7,$F8,$F8,$F8,$F9,$F9
;	     8	 9   A	 B   C	 D   E	 F
	DB $FA,$FA,$FA,$FB,$FB,$FC,$FC,$FC
;	     0	 1   2	 3   4	 5   6	 7
	DB $FD,$FD,$FE,$FE,$FF,$FF,$00,$00
;	     8	 9   A	 B   C	 D   E	 F
	DB $00,$01,$01,$02,$02,$03,$03,$03
;	     0	 1   2	 3   4	 5   6	 7
	DB $04,$04,$05,$05,$05,$06,$06,$07
;	     8	 9   A	 B   C	 D   E	 F
	DB $07,$07,$08,$08,$09,$09,$09,$0A
;	     8	 9   A	 B   C	 D   E	 F
	DB $0A,$0B,$0B,$0B,$0C,$0C,$0D,$0D
;==========================================
TXSCYD08
;	     0	 1   2	 3   4	 5   6	 7
	DB $F5,$F6,$F6,$F6,$F7,$F7,$F7,$F8
;	     0	 1   2	 3   4	 5   6	 7
	DB $F8,$F8,$F9,$F9,$F9,$FA,$FA,$FA
;	     8	 9   A	 B   C	 D   E	 F
	DB $FB,$FB,$FB,$FC,$FC,$FC,$FD,$FD
;	     0	 1   2	 3   4	 5   6	 7
	DB $FD,$FE,$FE,$FE,$FF,$FF,$FF,$00
;	     8	 9   A	 B   C	 D   E	 F
	DB $00,$01,$01,$01,$02,$02,$02,$03
;	     0	 1   2	 3   4	 5   6	 7
	DB $03,$03,$04,$04,$04,$05,$05,$05
;	     8	 9   A	 B   C	 D   E	 F
	DB $06,$06,$06,$07,$07,$07,$08,$08
;	     8	 9   A	 B   C	 D   E	 F
	DB $08,$09,$09,$09,$0A,$0A,$0A,$0B
;==========================================
TXSCYD06
;	     0	 1   2	 3   4	 5   6	 7
	DB $FC,$FC,$FB,$FB,$FB,$FB,$FA,$FA
;	     0	 1   2	 3   4	 5   6	 7
	DB $FA,$FA,$FB,$FB,$FB,$FB,$FC,$FC
;	     8	 9   A	 B   C	 D   E	 F
	DB $FC,$FC,$FD,$FD,$FD,$FD,$FE,$FE
;	     0	 1   2	 3   4	 5   6	 7
	DB $FE,$FE,$FF,$FF,$FF,$FF,$00,$00
;	     8	 9   A	 B   C	 D   E	 F
	DB $00,$00,$01,$01,$01,$01,$02,$02
;	     0	 1   2	 3   4	 5   6	 7
	DB $02,$02,$03,$03,$03,$03,$04,$04
;	     8	 9   A	 B   C	 D   E	 F
	DB $04,$04,$05,$05,$05,$05,$06,$06
;	     8	 9   A	 B   C	 D   E	 F
	DB $06,$06,$07,$07,$07,$07,$08,$08
;==========================================
TXSCYD04
;	     0	 1   2	 3   4	 5   6	 7
	DB $FB,$FB,$FB,$FB,$FB,$FC,$FC,$FC
;	     0	 1   2	 3   4	 5   6	 7
	DB $FC,$FC,$FC,$FD,$FD,$FD,$FD,$FD
;	     8	 9   A	 B   C	 D   E	 F
	DB $FE,$FE,$FE,$FE,$FE,$FE,$FF,$FF
;	     0	 1   2	 3   4	 5   6	 7
	DB $FF,$FF,$FF,$FF,$00,$00,$00,$00
;	     8	 9   A	 B   C	 D   E	 F
	DB $00,$00,$01,$01,$01,$01,$01,$01
;	     0	 1   2	 3   4	 5   6	 7
	DB $02,$02,$02,$02,$02,$02,$03,$03
;	     8	 9   A	 B   C	 D   E	 F
	DB $03,$03,$03,$03,$04,$04,$04,$04
;	     8	 9   A	 B   C	 D   E	 F
	DB $04,$04,$05,$05,$05,$05,$05,$05
;==========================================
TXSCYD02
;	     0	 1   2	 3   4	 5   6	 7
	DB $FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD
;	     0	 1   2	 3   4	 5   6	 7
	DB $FE,$FE,$FE,$FE,$FE,$FE,$FE,$FE
;	     8	 9   A	 B   C	 D   E	 F
	DB $FE,$FE,$FF,$FE,$FF,$FF,$FF,$FF
;	     0	 1   2	 3   4	 5   6	 7
	DB $FF,$FF,$FF,$00,$00,$00,$00,$00
;	     8	 9   A	 B   C	 D   E	 F
	DB $00,$00,$00,$00,$00,$01,$01,$01
;	     0	 1   2	 3   4	 5   6	 7
	DB $01,$01,$01,$01,$01,$01,$01,$02
;	     8	 9   A	 B   C	 D   E	 F
	DB $02,$02,$02,$02,$02,$02,$02,$02
;	     8	 9   A	 B   C	 D   E	 F
	DB $02,$03,$03,$03,$03,$03,$03,$03
;
;
;
;
;------------------------------------
TLSCY
	DW	TXSCYD48
	DW	TXSCYD30
	DW	TXSCYD24
;;	DW	TXSCYD22
	DW	TXSCYD20
;;	DW	TXSCYD1E
	DW	TXSCYD1C
	DW	TXSCYD1A
;;	DW	TXSCYD18
	DW	TXSCYD16
	DW	TXSCYD14
	DW	TXSCYD12
;;	DW	TXSCYD10
	DW	TXSCYD0E
	DW	TXSCYD0C
	DW	TXSCYD0A
	DW	TXSCYD08
	DW	TXSCYD06
	DW	TXSCYD04
	DW	TXSCYD02
	DW	TXSCYDEND
TXLIMIT
	DB	$28,$2A,$2C,$2C,$2E,$2E
	DB	$30,$30,$31,$33,$33,$34
	DB	$35,$36,$38,$3A,$3A
;
;	DB	$28,$2A,$2C,$2C,$2C,$2E,$2E,$2E
;	DB	$2F,$30,$30,$31,$32,$33,$33,$34
;	DB	$35,$36,$38,$3A,$3A
;====================================================================
TITLX
		ld	a,(ITMODE)
		cp	TLX+1
		ret	nc
;
	LD	HL,WAVCNT
	XOR	A
	LD	(HLI),A
	LD	(HLI),A
;
	LD	D,$00
;
;;------	デバッグモード ------
;	LD	A,(KEYA2)
;	AND	%01000000
;	JR	Z,TXE00
;
	LD	A,(FRCNT)
	AND	$01
	JR	NZ,TXE00
;
	LD	A,(WAVCNT3)
	INC	A
	CP	$10
	JR	C,TXEF0
	LD	A,$10
		ld	(WAVCNT3),A
		ret
TXEF0
	LD	(WAVCNT3),A
TXE00
	LD	A,(WAVCNT3)
	LD	E,A
	LD	HL,TXLIMIT
	ADD	HL,DE
	LD	A,(HL)
	LD	(WORK0),A
	SLA	E
	LD	HL,TLSCY
	ADD	HL,DE
;
	LD	A,(HLI)
	LD	B,(HL)
	LD	C,A
;
TLX00
	LD	A,(LY)
	CP	$10
	JR	NZ,TLX00
TLX10
	LD	A,(STAT)
	AND	%00000011
	JR	NZ,TLX10
;
		ld	hl,WORK1
		ld	(hl),1
		ld	a,(CGBFLG)
		and	a
		jr	z,TLX18
;
		ld	(hl),3
;
TLX18
	LD	A,(WAVCNT2)
	INC	A
	LD	(WAVCNT2),A
		and	(hl)
;;;;;;;;	AND	$01
	JR	NZ,TLX18
;
	LD	A,(WORK0)
	LD	L,A
;
	LD	A,(WAVCNT)
	LD	E,A
	INC	A
	LD	(WAVCNT),A
	CP	$3A
	JR	Z,TLX20
	CP	L
	JR	C,TLX1A
;
;-------------------------------------------------------------
		ld	a,(CGBFLG)
		and	a
		jr	nz,TLX20
;;;;;;;;	LD	A,(CGBFLG)
;;;;;;;;	AND	A		; カラーゲームボーイ？
;;;;;;;;	JR	Z,TLX19		; ＮＯ
;;;;;;;;;
;;;;;;;;	PUSH	BC
;;;;;;;;	PUSH	DE
;;;;;;;;		di
;;;;;;;;	CALL	TLX_COL		; (CGB)カラーセット
;;;;;;;;		ei
;;;;;;;;	POP	DE
;;;;;;;;	POP	BC
;;;;;;;;		jr	TLX20
;;;;;;;;;;;;;;;;	JR	TLX10
;;;;;;;;TLX19
;(CGB)	LD	A,%01010101	; 雲なしタイトル用
	XOR	A		; 雲ありタイトル用
	LD	(BGP),A
	JR	TLX10
;-------------------------------------------------------------
TLX1A
	LD	HL,$00 ;TXSCYD
	ADD	HL,DE
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,SCCV
	ADD	A,(HL)
	LD	(SCY),A
	JR	TLX10
;
TLX20
		ld	a,(SCCV)
		sub	038h
		ld	(SCY),a
;
TLX21
		ld	a,(LY)
		cp	048h
		jr	c,TLX21
;
TLX25
		ld	a,(STAT)
		and	00000011b
		jr	nz,TLX25
;
;;	LD	A,$00
	LD	A,(SCCV)
	LD	(SCY),A
;
;-------------------------------------------------------------
;;;;;;;;	LD	A,(CGBFLG)
;;;;;;;;	AND	A		; カラーゲームボーイ？
;;;;;;;;	JR	Z,TLX30		; ＮＯ
;;;;;;;;
;;;;;;;;		LD	A,(ITMODE)
;;;;;;;;		CP	OPLG		; タイトルループ？
;;;;;;;;		JR	NC,TLX30	; ＹＥＳ
;;;;;;;;
;;;;;;;;		ld	a,10011000b
;;;;;;;;		ld	(BCPS),a
;;;;;;;;		ld	hl,CGWORK+18h
;;;;;;;;		ld	b,008h
;;;;;;;;		di
;;;;;;;;;
;;;;;;;;TLX28
;;;;;;;;		ld	a,(hli)
;;;;;;;;		ld	(BCPD),a
;;;;;;;;		ld	a,(hli)
;;;;;;;;		ld	(BCPD),a
;;;;;;;;		dec	b
;;;;;;;;		jr	nz,TLX28
;;;;;;;;;
;;;;;;;;		ei
;;;;;;;;;
;;;;;;;;;;;;;;;;	LD	A,%10000000 | BGCOL_BITFG
;;;;;;;;;;;;;;;;	LD	(CGDMAF),A	; (CGB) ＢＧカラー部分転送
;;;;;;;;;;;;;;;;	LD	A,$04+3		;       １－３から
;;;;;;;;;;;;;;;;	LD	(COLOFS),A	;       転送オフセット
;;;;;;;;;;;;;;;;	LD	A,$05		;       ５パレット
;;;;;;;;;;;;;;;;	LD	(COLLNG),A	;       転送長さ
;;;;;;;;	RET
TLX30
;-------------------------------------------------------------
	LD	A,(BGPFG)
	LD	(BGP),A
	RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ＺＥＬＤＡロゴ 圧縮デモ カラーパレットセット			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CHG_COL_DT
		DW	$7fff,$7fff,$7fff,$7fff	; ( 0 ) すべてしろ
		DW	$7fff,$7fff,$7fff,$7fff	; ( 1 ) すべてしろ
;========================================================================

TLX_COL

;;;;; ＜ パターン１ ＞
;;;;
;;;;		LD	DE,CHG_COL_DT
;;;;		LD	A,%10001110	; 自動ｉｎｃ、パレット1-3
;;;;		LD	(BCPS),A	; ＢＧ
;;;;		LD	HL,BCPD
;;;;		LD	B,$05*2		; パレット個数５
;;;;					; 1-3 から 2-3 まで
;;;;TLX_COL_100
;;;;		LD	A,(DE)
;;;;		LD	(HL),A
;;;;		INC	DE
;;;;		DEC	B
;;;;		JR	NZ,TLX_COL_100

; ＜ パターン２ ＞

		LD	A,%10011000	; 自動ｉｎｃ、パレット１－３から
		LD	(BCPS),A		; ＢＧ
		ld	hl,BCPD
		LD	B,$08		; パレット個数
TLX_COL_100
		LD	(hl),$ff
		LD	(hl),$7f
		DEC	B
		JR	NZ,TLX_COL_100

		RET



;┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
;┃	zpl.s のプログラムをここに移動					 ┃
;┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	Player charactert tr. 			 %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;=============================================
PLCHNO	; Character data !!
;		; L   R
	DB	$00,$02	;0
	DB	$02,$00	;1
	DB	$10,$02	;2
	DB	$12,$00	;3
	DB	$04,$06	;4
	DB	$06,$04	;5
	DB	$08,$0A	;6
	DB	$0C,$0E	;7
	DB	$18,$0A	;8
	DB	$1C,$0E	;9
	DB	$0A,$08	;A
	DB	$0E,$0C	;B
	DB	$0A,$18	;C
	DB	$0E,$1C	;D
;
	DB	$20,$22	;E
	DB	$24,$26	;F
	DB	$28,$2A	;10
	DB	$2A,$28	;1
	DB	$30,$32	;2
	DB	$20,$22	;3
	DB	$34,$36	;4
	DB	$24,$26	;5
	DB	$38,$3A	;6
	DB	$28,$2A	;7
	DB	$3A,$38	;8
	DB	$2A,$28	;9
	DB	$40,$40	;A
	DB	$42,$42	;B
	DB	$44,$46	;C
	DB	$48,$4A	;D
	DB	$4C,$4E	;E
	DB	$50,$52	;F
	DB	$4E,$4C	;20
	DB	$52,$50	;21
;-
	DB	$80,$02	;22
	DB	$82,$00	;23
	DB	$84,$86	;24
	DB	$88,$8A	;25
	DB	$8C,$8E	;26
	DB	$90,$92	;27
	DB	$94,$96	;28
	DB	$98,$9A	;29
	DB	$9C,$9E	;2A
	DB	$9A,$A2	;2B
	DB	$A4,$08	;2C
	DB	$A6,$0C	;2D
	DB	$A8,$AA	;2E
	DB	$AC,$AE	;2F
	DB	$B0,$B2	;30
	DB	$B4,$B6	;31
	DB	$B0,$B2	;32
	DB	$B4,$B6	;33
	DB	$04,$C0	;34
	DB	$06,$C2	;35
;
	DB	$5A,$58	;36
	DB	$5E,$5C	;37
	DB	$58,$5A	;38
	DB	$5C,$5E	;39
	DB	$44,$46	;3A
	DB	$6E,$6E	;3B
	DB	$40,$40	;3C
	DB	$56,$56	;3D
;
	DB	$7A,$78	;3E
	DB	$7E,$7C	;3F
	DB	$78,$7A	;40
	DB	$7C,$7E	;41
	DB	$74,$76	;42
	DB	$76,$74	;43
	DB	$70,$72	;44
	DB	$72,$70	;45
;
	DB	$CA,$C8	;46
	DB	$D6,$D4	;47
	DB	$C8,$CA	;48
	DB	$D4,$D6	;49
	DB	$CC,$CE	;4A
	DB	$D8,$DA	;4B
	DB	$C4,$C4	;4C
	DB	$C6,$C6	;4D
	DB	$DC,$DC	;4E ;潜り１
	DB	$DE,$DE	;4F ;潜り２
;- Kurukuru door - -
	DB	$EA,$EC ;50
	DB	$EE,$F0 ;51
	DB	$F2,$F4 ;52
	DB	$F6,$F6 ;53
	DB	$F8,$FA ;54
;- -Fall down --
	DB	$E0,$E2	;55
	DB	$E4,$E6	;56
	DB	$E8,$E8	;57
;- Yoko swim --
	DB	$10,$12	;58
	DB	$14,$16	;59
	DB	$18,$1C	;5A
	DB	$12,$10	;5B
	DB	$16,$14	;5C
	DB	$1C,$18	;5D
;- -Kaiten jump - -
	DB	$66,$68 ;5E
	DB	$6A,$6C ;5F
	DB	$68,$66 ;60
	DB	$68,$66 ;61
	DB	$6C,$6A ;62
	DB	$66,$68 ;63
	DB	$60,$60 ;64
	DB	$62,$62 ;65
	DB	$64,$64 ;66
	DB	$62,$62 ;67
	DB	$64,$64 ;68
	DB	$60,$60 ;69
;- Fail - -
	DB	$54,$54 ;6A
;- Ken power up demo - -
	DB	$3C,$3E ;6B
;- Item chach ---
	DB	$FE,$FE ;6C
;- Ana hori ---
	DB	$18,$1A	;6D	
	DB	$1C,$1E	;6E	
	DB	$2C,$2E	;6F	
	DB	$B8,$BA	;70	
	DB	$2E,$2C	;71	
	DB	$BA,$B8	;72	
	DB	$BC,$BE	;73	
	DB	$D0,$D2	;74	
;- -オカリナ ふき
	DB	$A0,$FC	;75
	DB	$FC,$A0	;76
;=====================================
PLFLPD	; Flip data
	DB	$00,$00	;0
	DB	$20,$20	;1
	DB	$00,$00	;2
	DB	$00,$20	;3
	DB	$00,$00	;4
	DB	$20,$20	;5
	DB	$00,$00	;6
	DB	$00,$00	;7
	DB	$00,$00	;8
	DB	$00,$00	;9
	DB	$20,$20	;A
	DB	$20,$20	;B
	DB	$20,$20	;C
	DB	$20,$20	;D
;
	DB	$00,$00	;E
	DB	$00,$00 ;F
	DB	$00,$00	;10
	DB	$20,$20	;11
	DB	$00,$00	;12
	DB	$00,$00	;13
	DB	$00,$00	;14
	DB	$00,$00	;15
	DB	$00,$00	;16
	DB	$00,$00	;17
	DB	$20,$20	;18
	DB	$20,$20	;19
	DB	$00,$20	;1A
	DB	$00,$20	;1B
	DB	$00,$00	;1C
	DB	$00,$00	;1D
	DB	$00,$00	;1E
	DB	$00,$00	;1F
	DB	$20,$20	;20
	DB	$20,$20	;21
;
	DB	$00,$00	;22
	DB	$00,$20	;23
	DB	$00,$00	;24
	DB	$00,$00	;25
	DB	$00,$00	;26
	DB	$00,$00	;27
	DB	$00,$00	;28
	DB	$00,$00	;29
	DB	$00,$00	;2A
	DB	$20,$00	;2B
	DB	$00,$20	;2C
	DB	$00,$20	;2D
	DB	$00,$00	;2E
	DB	$00,$00	;2F
	DB	$00,$00	;30
	DB	$00,$00	;31
	DB	$00,$00	;32
	DB	$00,$00	;33
	DB	$00,$00	;34
	DB	$20,$00	;35
;
	DB	$20,$20	;36
	DB	$20,$20	;37
	DB	$00,$00	;38
	DB	$00,$00	;39
	DB	$00,$00	;3A
	DB	$00,$20	;3B
	DB	$00,$20	;3C
	DB	$00,$20	;3D
;
	DB	$20,$20	;3E
	DB	$20,$20	;3F
	DB	$00,$00	;40
	DB	$00,$00	;41
	DB	$00,$00	;42
	DB	$20,$20	;43
	DB	$00,$00	;44
	DB	$20,$20	;45
;
	DB	$20,$20	;46
	DB	$20,$20	;47
	DB	$00,$00	;48
	DB	$00,$00	;49
	DB	$00,$00	;4A
	DB	$00,$00	;4B
	DB	$00,$20	;4C
	DB	$00,$20	;4D
	DB	$00,$20	;4E
	DB	$00,$20	;4F
;- - Kuru kuru door - -
	DB	$00,$00	;50
	DB	$00,$00	;51
	DB	$00,$00	;52
	DB	$00,$20	;53
	DB	$00,$00	;54
;- -Fall down --
	DB	$00,$00	;55
	DB	$00,$00	;56
	DB	$00,$20	;57
;- -Yoko swim --
	DB	$00,$00	;58
	DB	$00,$00	;59
	DB	$00,$00	;5A
	DB	$20,$20	;5B
	DB	$20,$20	;5C
	DB	$20,$20	;5D
;- -Kaiten jump - -
	DB	$00,$00 ;5E
	DB	$00,$00 ;5F
	DB	$60,$60 ;60
	DB	$20,$20 ;61
	DB	$20,$20 ;62
	DB	$40,$40 ;63
	DB	$00,$20 ;64
	DB	$00,$20 ;65
	DB	$00,$20 ;66
	DB	$40,$60 ;67
	DB	$40,$60 ;68
	DB	$40,$60 ;69
;- Fail - -
	DB	$00,$20 ;6A
;- Ken power up demo - -
	DB	$00,$00 ;6B
;- Item chach ---
	DB	$00,$20 ;6C
;- Ana hori ---
	DB	$00,$00	;6D	
	DB	$00,$00	;6E	
	DB	$00,$00	;6F	
	DB	$00,$00	;70	
	DB	$20,$20	;71	
	DB	$20,$20	;72	
	DB	$00,$00	;73	
	DB	$00,$00	;74	
;- - Okarina - -
	DB	$00,$00	;75
	DB	$20,$20	;76
;
;================================================
;=	プレイヤーキャラクター転送ＳＵＢ	=
;================================================
PLTROK_SUB
;- - Player Character TR. - -
;- - Left - -
	LD	A,(PLCHPT)
	CP	$FF
;(CGB)	JP	Z,PCTR30
	RET	Z
;
	LD	HL,PLCHNO
	SLA	A
	LD	C,A
	LD	B,$0
	ADD	HL,BC
	LD	E,(HL)
;
	PUSH	HL
;
	LD	HL,PLFLPD
	ADD	HL,BC
	LD	A,(PLFLPL)
;;;CGB;;;	AND	%10011111
	AND	%10011000
	OR	(HL)
	LD	(PLFLPL),A
;
	INC	HL
;
	LD	A,(PLFLPR)
;;;CGB;;;	AND	%10011111
	AND	%10011000
	OR	(HL)
	LD	(PLFLPR),A
;
	LD	D,$0
	SLA	E
	RL	D
	SLA	E
	RL	D
	SLA	E
	RL	D
	SLA	E
	RL	D
	LD	HL,PLCHDT
	ADD	HL,DE
		ld	c,l
		ld	b,h
;;10/31;	PUSH	HL
;;10/31;	POP	BC
;
	LD	HL,$8000
;
	LD	D,$20

		CALL	PLCHR_TRAN	; ＶＲＡＭ転送

;(CGB)PCTR10
;(CGB)	LD	A,(BC)
;(CGB)	INC	BC
;(CGB)	LD	(HLI),A
;(CGB)	DEC	D
;(CGB)	JR	NZ,PCTR10
;- - Right - -
	POP	HL
	INC	HL
	LD	E,(HL)
;
	LD	D,$0
	SLA	E
	RL	D
	SLA	E
	RL	D
	SLA	E
	RL	D
	SLA	E
	RL	D
	LD	HL,PLCHDT
	ADD	HL,DE
		ld	c,l
		ld	b,h
;;10/31;	PUSH	HL
;;10/31;	POP	BC
;
	LD	HL,$8020
;
	LD	D,$20

		CALL	PLCHR_TRAN	; ＶＲＡＭ転送

;(CGB)PCTR20
;(CGB)	LD	A,(BC)
;(CGB)	INC	BC
;(CGB)	LD	(HLI),A
;(CGB)	DEC	D
;(CGB)	JR	NZ,PCTR20
;(CGB)PCTR30
;(CGB)PLTRNOT
		RET


;┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
;┃	zpl.s のプログラムをここに移動				       ┃
;┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	スクロール時 ＲＡＭセット（ call by SCRMV1SS ）			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
SCRCD11
	DB	$08,$08,$0A,$0A		; Set unit count 
SCNLUN
	DB	$01,$FF,$F0,$10
SCNLAH
	DB	$00,$00,$03,$00
SCNLAL
	DB	$01,$1F,$E0,$20
;;;(CGB)	DB	$02,$1E,$C0,$40
;- - - - - - - - - - - - - - - - - - - - - - - - 
SI2130_SUB
		ld	e,0ffh
	LD	A,(SCRLMK)
	LD	C,A
	LD	B,$00
		and	002
		jr	nz,SI2130_SUB_000
;
		ld	e,11011111b
;
SI2130_SUB_000
	LD	HL,SCRCD11	; Next count set !
	ADD	HL,BC
	LD	A,(HL)
	LD	(SCRLC1),A
;- - Next Line adress set - - 
		ld	a,(SCRLC2)
		and	001
		jr	z,SI2130_SUB_050
;
	LD	HL,SCNLUN
	ADD	HL,BC
	LD	A,(SCUNTA)
	ADD	A,(HL)  ;E
	LD	(SCUNTA),A	; Next load address set !
;
SI2130_SUB_050
	LD	HL,SCNLAL
	ADD	HL,BC
	LD	A,(SCRADL)
	ADD	A,(HL)  ;E
	RR	D		; PUSH C
		and	e
;;;(CGB)	AND	%11011111
	LD	(SCRADL),A
;
	LD	HL,SCNLAH
	ADD	HL,BC
	LD	A,(SCRADH)
	RL	D		; POP C
	ADC	A,(HL)  ;E
	AND	$03
	LD	(SCRADH),A
;
	LD	A,(SCRLC2)
	DEC	A
	LD	(SCRLC2),A
	JR	NZ,SI2120	; All clear ?
;				; yes !
	JP	SCRNXT2
SI2120
	RET
SCRNXT2
	LD	A,(SCRLFG)
	INC	A
	LD	(SCRLFG),A
	RET


;┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
;┃	zpl.s のプログラムをここに移動				       ┃
;┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	"FDIN"になってるけどフェードアウト	%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
FDIN_SUB
;------------------------------------------------
;	サウンドフェードアウト確認！
;------------------------------------------------
		LD	A,(SDOUTFG)
		AND	A		; サウンドフェードアウト？
		JR	Z,FDIN_100	; Ｎｏ

		LD	A,(SBHR)
		CP	$3
		JR	NZ,FDIN_100
		LD	A,(SBCNT)
		AND	$3
		CP	$3
		JR	NZ,FDIN_100

		LD	HL,SLEVEL
		LD	A,(HL)
		INC	HL
		OR	(HL)
		JR	Z,FDIN_100

		LD	A,(SDOUTFG)	; すぐに SLEVEL を下げる為
		AND	%11111100	;
		OR	%00000001	; ＋１
		LD	(SDOUTFG),A	;
		RET
FDIN_100
;------------------------------------------------

	LD	HL,SBCNT
	INC	(HL)
;;;CGB;;;	LD	A,(SBCNT)
	LD	A,(HL)
	AND	$03
	JR	NZ,N3
;
	LD	HL,SBHR
	LD	A,(HL)
	CP	$04
	JR	Z,PIDEND2
	INC	(HL)
;
	XOR	A
	LD	(WORK0),A
SNUTS	
	LD	A,(WORK0)
	CP	$03
	JR	Z,N3		
;
	LD	HL,BGPFG
	LD	E,A
	LD	D,$0
	ADD	HL,DE
	LD	A,(HL)
	LD	C,A
	LD	B,$0
LOPN
	LD	A,C
	AND	$03
	JR	Z,N2
	DEC	C
N2
	RRC	C
	RRC	C
	INC	B
	LD	A,B
	CP	$04
	JR	NZ,LOPN
;
	LD	A,C
	LD	(HL),A
;
	LD	HL,WORK0
	INC	(HL)
	JR	SNUTS
;
N3
PIDEND
PIDEND2
	RET
;====================================================
SBHRDT
	DB	%00000000
	DB	%00000001
	DB	%00000010
	DB	%00000011
;
	DB	%00000000
	DB	%00000011
	DB	%00000001
	DB	%00000000
;
	DB	%00000000
	DB	%00000001
	DB	%00000010
	DB	%00000011
;------------------------------------------
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	"FDOUT"になってるけどフェードイン	%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
FDOUT_SUB
	LD	HL,SBCNT
	INC	(HL)
	LD	A,(SBCNT)
	AND	$03
	JR	NZ,N23
;
	LD	HL,SBHR
	LD	A,(HL)
	INC	(HL)
	CP	$04
;;;CGB;;;	JR	Z,PIDEND
	JR	Z,N23
;
	XOR	A
	LD	(WORK0),A
SNUTS2	
	LD	A,(WORK0)
	CP	$03
	JR	Z,N23		
;
	LD	HL,BGPFG
	LD	E,A
	LD	D,$0
	ADD	HL,DE
	LD	A,(HL)
	PUSH	HL
	LD	C,A
	LD	B,$0
LOPN2
	LD	A,(WORK0)
	SLA	A
	SLA	A
	OR	B
	LD	E,A
	LD	HL,SBHRDT
	ADD	HL,DE
	LD	A,C
	AND	$03
	CP	(HL)    ;$03
	JR	Z,N22
	INC	C
N22
	RRC	C
	RRC	C
	INC	B
	LD	A,B
	CP	$04
	JR	NZ,LOPN2
;
	LD	A,C
	POP	HL
	LD	(HL),A
;
	LD	HL,WORK0
	INC	(HL)
	JR	SNUTS2
N23
	RET


;┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
;┃	zs1.s のプログラムをここに移動				       ┃
;┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
;-------------------------------------------------------
;    地上マップ展開
;-------------------------------------
;=====================================================
GMAPCDT
 DB  $27,$6A,$6C,$21,$22,$23,$24,$25,$26,$6A,$FF,$6C,$6A,$6C,$6A,$6C
 DB  $65,$65,$66,$31,$32,$33,$34,$35,$36,$67,$68,$64,$67,$69,$65,$66
 DB  $40,$40,$41,$42,$43,$44,$FA,$FA,$63,$40,$40,$40,$40,$40,$40,$60
;(CGB) DB  $FF,$FA,$48,$49,$4A,$FA,$FA,$FA,$62,$6D,$6D,$6D,$6D,$6D,$6D,$FF
 DB  $FF,$FA,$48,$49,$4A,$FA,$FA,$ff,$62,$6D,$6D,$6D,$6D,$6D,$6D,$FF
;				  ↑ カメラ屋追加
 DB  $00,$01,$00,$01,$FA,$FF,$5E,$5F,$04,$05,$06,$07,$28,$29,$29,$2A
 DB  $10,$11,$10,$11,$FA,$FA,$6E,$6F,$14,$15,$16,$17,$38,$20,$20,$3A
 DB  $00,$01,$00,$01,$FB,$FF,$FE,$FE,$08,$09,$0A,$0B,$38,$20,$20,$3A
 DB  $10,$11,$10,$11,$FB,$FB,$FE,$FE,$18,$19,$1A,$1B,$48,$49,$49,$4A
 DB  $FB,$FF,$0C,$0D,$40,$40,$40,$40,$FA,$FA,$FF,$58,$0E,$0F,$FA,$FA
 DB  $FB,$FB,$1C,$1D,$FA,$FA,$FA,$FA,$FA,$FA,$FA,$5D,$1E,$1F,$FA,$FA
 DB  $0C,$0D,$0C,$0D,$FB,$FB,$28,$2A,$FA,$FA,$FA,$58,$2D,$2E,$2E,$2F
 DB  $1C,$1D,$1C,$1D,$FB,$56,$61,$4A,$FA,$FA,$59,$5A,$3D,$3E,$3E,$3F
 DB  $FD,$FD,$FD,$FD,$FB,$FB,$FB,$FB,$28,$29,$5B,$FA,$FF,$FF,$54,$54
 DB  $FD,$FD,$FD,$FD,$FB,$FB,$FF,$FB,$38,$30,$3A,$FA,$FF,$FF,$54,$54
 DB  $FD,$FD,$FD,$FF,$FD,$FD,$FB,$FB,$48,$FE,$4A,$FA,$56,$57,$54,$54
 DB  $03,$12,$13,$12,$13,$02,$FF,$FB,$5C,$2B,$FA,$FA,$FA,$FA,$54,$54

GMAPCDT_ATR
;      2   3   4   5   6   7   8   9   a   b   c   d   e   f  10  11
  db $03,$03,$03,$03,$03,$03,$02,$03,$03,$03,$00,$03,$03,$03,$03,$03 ; 1
  db $03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03 ; 2
  db $03,$03,$04,$04,$04,$04,$00,$00,$04,$03,$03,$03,$03,$03,$03,$03 ; 3
  db $01,$00,$04,$04,$04,$04,$00,$01,$04,$04,$04,$04,$04,$04,$04,$01 ; 4
  db $00,$00,$00,$00,$00,$02,$01,$01,$04,$04,$04,$04,$04,$04,$04,$04 ; 5
  db $00,$00,$00,$00,$00,$00,$01,$01,$04,$06,$04,$04,$04,$07,$07,$04 ; 6
  db $00,$00,$00,$00,$00,$01,$01,$01,$04,$06,$04,$04,$04,$07,$07,$04 ; 7
  db $00,$00,$00,$00,$00,$00,$01,$01,$04,$04,$04,$04,$04,$04,$04,$04 ; 8
  db $00,$01,$02,$02,$03,$03,$03,$03,$00,$00,$00,$04,$02,$07,$00,$00 ; 9
  db $00,$00,$02,$02,$00,$00,$00,$00,$00,$00,$00,$04,$07,$07,$00,$00 ; a
  db $07,$07,$01,$01,$00,$00,$04,$04,$00,$00,$00,$04,$05,$03,$03,$03 ; b
  db $07,$07,$01,$01,$00,$04,$04,$04,$00,$00,$04,$04,$03,$03,$03,$03 ; c
  db $03,$03,$03,$03,$00,$00,$00,$00,$04,$04,$04,$00,$07,$01,$03,$03 ; d
  db $03,$03,$03,$03,$00,$00,$02,$00,$04,$04,$04,$00,$00,$02,$03,$03 ; e
  db $03,$03,$03,$07,$03,$03,$00,$00,$04,$04,$04,$00,$04,$04,$03,$03 ; f
  db $04,$04,$04,$04,$04,$04,$07,$00,$04,$04,$00,$00,$00,$00,$03,$03 ; 10
;----------------------------------------
GMCHSB
		LD	A,<GMAPCDT
		LD	(WORKA),A	; データアドレスＬＯＷ
		LD	A,>GMAPCDT
		LD	(WORKB),A	; データアドレスＨＩＧＨ
		XOR	A
		LD	(WORKC),A	; フラグ

		CALL	GMCHSB_SUB	; キャラＮｏ．セット

		LD	A,(CGBFLG)
		AND	A
		RET	Z

		LD	A,<GMAPCDT_ATR
		LD	(WORKA),A	; データアドレスＬＯＷ
		LD	A,>GMAPCDT_ATR
		LD	(WORKB),A	; データアドレスＨＩＧＨ
		LD	HL,WORKC
		INC	(HL)		; フラグ

		CALL	GMCHSB_SUB	; アトリビュートセット

		RET

;----------------------------------------
GMCHSB_SUB
	LD	DE,$9822
	LD	BC,$00
GMCS08
	LD	A,(GMAPFG)
	AND	A
	JR	NZ,GMCS0A	;本からの。。
;
	LD	A,(GMMODE)
	CP	ENDG
	JR	Z,GMCS0A
;
	LD	HL,GRRMSV
	ADD	HL,BC
	LD	A,(HL)
	AND	%10000000
	LD	A,$2C
	JR	Z,GMCS10
;
GMCS0A
;(CGB)	LD	HL,GMAPCDT
		LD	A,(WORKA)
		LD	L,A
		LD	A,(WORKB)
		LD	H,A
	ADD	HL,BC
	LD	A,(HL)
GMCS10
		LD	H,A		; PUSH A
		LD	A,(WORKC)
		AND	A		; キャラクターセット？
		JR	Z,GMCS10_100	; ＹＥＳ

		LD	A,$01
		LD	(VBK),A		; バンク（１）セット
		LD	A,H		; POP A
		CP	$2C		; もう行った？
		JR	NZ,GMCS10_050	; ＹＥＳ
		LD	A,$01
GMCS10_050
		LD	(DE),A
		XOR	A
		LD	(VBK),A		; バンク（０）セット
		JR	GMCS10_200
GMCS10_100
		LD	A,H
	LD	(DE),A
GMCS10_200
	INC	C
	JR	Z,GMCS30
;
	INC	E
	LD	A,E
	AND	$1F
	CP	$12
	JR	NZ,GMCS20
;
	LD	A,E
	AND	%11100000
	ADD	A,$22
	LD	E,A
;
	LD	A,D
	ADC	A,$00
	LD	D,A
GMCS20
	JR	GMCS08
GMCS30
	RET


;------------------------------------------------------------------------
		END
;------------------------------------------------------------------------
