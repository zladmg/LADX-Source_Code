
		onbankgroup

;************************************************************************
;*									*
;*	タイトル    ：	ゼルダの伝説 ＤＸ				*
;*	ファイル名  ：	ZPR.S						*
;*	処理内容    ：	ポケットプリンタ処理				*
;*	作成日付    ：  １９９８／０９／１９				*
;*									*
;************************************************************************
;
;==============	バンク０ ================================================
BANK0		GROUP	0
;-------------<	ZMA >----------------------------------------------------
		EXTERN	DJBST,GRBST,Char_bank_set
		EXTERN	CAMERA_CHR_TRAN,CAMERA_SCR_TRAN
		EXTERN	CAMERA_CHR_RESET
		EXTERN	dtbfset

		EXTERN	HIMI2
;-------------<	ZPL >----------------------------------------------------
		EXTERN	FDIN,FDOUT,GPLAY,MSGCH3
;-------------<	ZCO >----------------------------------------------------
		EXTERN	LCDC_OFF,DATA_MOV
;
;==============	バンク２８ ==============================================
BANK28		GROUP	$28
;-------------<	ZCHR >---------------------------------------------------
		EXTERN	Photo_00p_scr
		EXTERN	Photo_00_scr,Photo_01_scr
		EXTERN	Photo_02_scr,Photo_03_scr
		EXTERN	Photo_04_scr,Photo_05_scr
		EXTERN	Photo_06_scr,Photo_07_scr
		EXTERN	Photo_08_scr,Photo_09_scr
		EXTERN	Photo_0a_scr,Photo_0b_scr
		EXTERN	Photo_scr,Photo_col
;
;-------------<	zprsub >-------------------------------------------------
		extern	prnomdt
;
;==============	バンク２９ ==============================================
BANK29		GROUP	$29
;-------------<	ZCHR >---------------------------------------------------
		EXTERN	Photo_00_cgx,Photo_01_cgx
		EXTERN	Photo_02_cgx,Photo_03_cgx
;
;==============	バンク２Ａ ==============================================
BANK2A		GROUP	$2A
;-------------<	ZCHR >---------------------------------------------------
		EXTERN	Photo_04_cgx,Photo_05_cgx
		EXTERN	Photo_06_cgx,Photo_07_cgx
;
;==============	バンク２Ｂ ==============================================
BANK2B		GROUP	$2B
;-------------<	ZCHR >---------------------------------------------------
		EXTERN	Photo_08_cgx,Photo_09_cgx
		EXTERN	Photo_0a_cgx,Photo_0b_cgx
;
;==============	バンク３Ｂ ==============================================
BANK3B		GROUP	$3B
;-------------<	ZCHR >---------------------------------------------------
		EXTERN	Photo_00p_cgx
;
;========================================================================
		PUBALL
		NLIST
		KANJI
		isdmg
;------------------------------------------------------------------------
		LIB	ZRAM		; RAM ＥＱＵＡＴＥ ファイル
		LIB	ZBN		; BG unit no file !
;------------------------------------------------------------------------
		LIST


;□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□
;□	バンク２８						       □
;□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□
BANK28		GROUP	$28
		ORG	$4000

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ポケットプリンタ メイン						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
PRINTER_MAIN
		call	printom
		LD	A,(ITMODE)
		RST	0
;------------------------------------------------------------------------
PRINTER_TABLE
		DW	PRINTER_CLEAR	; ( 0) ＲＡＭクリア
PINIT		DW	PRINTER_INIT	; ( 1) イニシャル
		DW	FADE_OUT	; ( 2) フェードアウト
		DW	ALBUM_INIT	; ( 3) アルバムイニシャル
		DW	FADE_IN		; ( 4) フェードアウト
		DW	ALBUM_PLAY1	; ( 5) アルバム プレイ（１）
		DW	ALBUM_PLAY2	; ( 6) アルバム プレイ（２）
PFOUT		DW	FADE_OUT	; ( 7) フェードアウト
		DW	TRANSFER_MAIN	; ( 8) 転送メイン
PFDIN		DW	FADE_IN		; ( 9) フェードイン
PPLAY		DW	PRINTER_PLAY	; ( a) プレイ
		dw	key_check	; ( b) 最終のプリントチェック
PCONT		DW	Test_connect	; ( c)
		DW	Test_datatrans	; ( d)
		DW	Test_inst	; ( e)
PWAIT		DW	Test_wait	; ( f)
PW100		DW	Wait100ms	; (10)
PEROR		DW	Test_error	; (11)
PRETN		DW	FADE_OUT	; (12) フェードアウト
		DW	RETURN_GAME	; (13) リターンゲーム

MAIN_Test_init	EQU	(PINIT-PRINTER_TABLE)/2
P_fout		EQU	(PFOUT-PRINTER_TABLE)/2
P_fdin		EQU	(PFDIN-PRINTER_TABLE)/2
P_play		EQU	(PPLAY-PRINTER_TABLE)/2
P_cont		EQU	(PCONT-PRINTER_TABLE)/2
MAIN_Test_wait	EQU	(PWAIT-PRINTER_TABLE)/2
MAIN_Wait100ms	EQU	(PW100-PRINTER_TABLE)/2
MAIN_Test_error	EQU	(PEROR-PRINTER_TABLE)/2
P_retn		EQU	(PRETN-PRINTER_TABLE)/2


;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x		プリント中のＯＡＭセット				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;	この部分はｚｐｒｓｕｂ．ｓに移転しました。
;;;;;;;;prnomdt
;;;;;;;;		db	050h,010h,014h,001h
;;;;;;;;		db	050h,018h,016h,001h
;;;;;;;;		db	050h,020h,018h,001h
;;;;;;;;		db	050h,028h,01ah,001h
;;;;;;;;		db	050h,030h,01ch,001h
;;;;;;;;		db	050h,038h,01eh,001h
;;;;;;;;		db	050h,040h,020h,001h
;;;;;;;;		db	050h,048h,020h,021h
;;;;;;;;		db	050h,050h,038h,001h
;;;;;;;;		db	050h,058h,03ah,001h
;;;;;;;;;
;;;;;;;;		db	050h,00eh,014h,001h
;;;;;;;;		db	050h,016h,016h,001h
;;;;;;;;		db	050h,01eh,018h,001h
;;;;;;;;		db	050h,026h,01ah,001h
;;;;;;;;		db	050h,030h,046h,001h
;;;;;;;;		db	050h,038h,048h,001h
;;;;;;;;		db	050h,040h,020h,001h
;;;;;;;;		db	050h,048h,022h,001h
;;;;;;;;		db	04eh,052h,03ch,001h
;;;;;;;;		db	04eh,05ah,03eh,001h
;;;;;;;;;
;;;;;;;;		db	050h,010h,014h,001h
;;;;;;;;		db	050h,018h,016h,001h
;;;;;;;;		db	050h,020h,018h,001h
;;;;;;;;		db	050h,028h,01ah,001h
;;;;;;;;		db	050h,030h,01ch,001h
;;;;;;;;		db	050h,038h,01eh,001h
;;;;;;;;		db	051h,040h,022h,021h
;;;;;;;;		db	051h,048h,022h,001h
;;;;;;;;		db	050h,051h,03ch,001h
;;;;;;;;		db	050h,059h,03eh,001h
;;;;;;;;;
;;;;;;;;		db	050h,011h,014h,001h
;;;;;;;;		db	050h,019h,016h,001h
;;;;;;;;		db	050h,021h,018h,001h
;;;;;;;;		db	050h,029h,01ah,001h
;;;;;;;;		db	04eh,030h,01ch,001h
;;;;;;;;		db	04eh,038h,01eh,001h
;;;;;;;;		db	050h,040h,022h,021h
;;;;;;;;		db	050h,048h,020h,021h
;;;;;;;;		db	050h,050h,038h,001h
;;;;;;;;		db	050h,058h,03ah,001h
;;;;;;;;;
prncmpd
		db	040h,000h
;
prnclcd
		db	001h,0ffh
;
;
printom
		ld	a,(ITMODE)
		cp	P_play+3
		jr	c,printom_end
;
		cp	MAIN_Test_error
		jr	nc,printom_end
;
		ld	b,000
		ld	a,(print_timer)
		and	001
		jr	nz,printom_030
;
		ld	a,(print_muki)
		ld	c,a
		ld	hl,prnclcd
		add	hl,bc
		ld	a,(print_xpos)
		add	a,(hl)
		ld	(print_xpos),a
		ld	hl,prncmpd
		add	hl,bc
		cp	(hl)
		jr	nz,printom_030
;
		inc	c
		ld	a,c
		and	1
		ld	(print_muki),a
;
printom_030
		ld	hl,print_timer
		inc	(hl)
		ld	a,(hl)
		and	018h
		ld	c,a
		sla	a
		sla	a
		add	a,c
		ld	c,a
		ld	hl,prnomdt
		add	hl,bc
		ld	de,OAM
		ld	c,10
;
printom_050
		ld	a,(hli)
		ld	(de),a
		inc	de
;
		ld	a,(print_xpos)
		add	a,(hl)
		ld	(de),a
		inc	hl
		inc	de
;
		ld	a,(hli)
		ld	(de),a
		inc	de
;
		ld	a,(hli)
		ld	(de),a
		inc	de
;
		dec	c
		jr	nz,printom_050
;
printom_end
		ret
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	フェードアウト							x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
FADE_OUT
		CALL	FDIN		; FDIN だけどフェードアウト

		LD	A,(SBHR)
		CP	$04
		RET	NZ

		JP	ITMODE_INC

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	フェードイン							x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
FADE_IN
		CALL	FDOUT		; FDOUT だけどフェードイン

		LD	A,(SBHR)
		CP	$04
		RET	NZ

		JP	ITMODE_INC

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ポケットプリンタ ＲＡＭクリア					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
PRINTER_CLEAR
		LD	BC,printer_ram_end-chradr+1	; カウンタ
		LD	HL,chradr
PRNCL_100
		XOR	A
		LD	(HLI),A
		DEC	BC
		LD	A,C
		OR	B
		JR	NZ,PRNCL_100
;------------------------------------------------------------------------
		LD	HL,Yubi_xpos_data
		LD	A,(HL)
		LD	(YUBIXPS),A
		LD	HL,Yubi_ypos_data
		LD	A,(HL)
		LD	(YUBIYPS),A
		LD	A,$01
		LD	(MSGFIRST),A

		LD	A,$03		;サウンドボリューム下げる
		LD	(SLEVEL),A	;
		LD	A,$30		;
		LD	(SLEVEL+1),A	;
;------------------------------------------------------------------------

;////////// プリンタへの送信のための初期化　//////////
		CALL	SioInitialize
;//////////　SIO割り込みも許可　///////////
		ld	a,%00001001	; 割り込み許可フラグセット(v-blank & sio)
		ld	(IE),a
;/////////////////////////////////////////////////////

		JP	ITMODE_INC

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ポケットプリンタ イニシャル					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
PRINTER_INIT
		XOR	A
		LD	(SBHR),A
;------------------------------------------------------------------------
		CALL	Test_init

		JP	ITMODE_INC

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	アルバム イニシャル						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;------------------------------------------------------------------------
;	アドレスデータ
;------------------------------------------------------------------------
Photo_address_data			; １枚目は必ず撮っている
		DW	$98e1,$98e5,$98ec,$98f0
		DW	$9961,$9965,$996c,$9970
		DW	$99e1,$99e5,$99ec,$99f0
;========================================================================

ALBUM_INIT
		CALL	LCDC_OFF	; ＬＣＤＣ ストップ

;------------------------------------------------------------------------
;	キャラクター
;------------------------------------------------------------------------
;（ＢＧ）
		LD	A,$35		; clza.cgx
		LD	BC,$200		; 転送個数
		LD	HL,$4000+1700H
		LD	DE,CHR_VRAM_ADRS+1000H
		CALL	CAMERA_CHR_TRAN

		LD	A,$0C		; clz1.cgx
		CALL	Char_bank_set	; キャラクターバンクセット
		LD	BC,$40		; 転送個数
		LD	HL,$4000+17C0H
		LD	DE,CHR_VRAM_ADRS+17C0H
		CALL	CAMERA_CHR_TRAN	; ベタ
;（ＢＧ＆ＯＢＪ）
		LD	A,$0C		; clz1.cgx
		CALL	Char_bank_set	; キャラクターバンクセット
		LD	BC,$300		; 転送個数
		LD	HL,$4000+0A00H
		LD	DE,CHR_VRAM_ADRS+0A00H
		CALL	CAMERA_CHR_TRAN	; 矢印＆数字＆メッセージ濁点

		LD	A,$35		; clza.cgx
		LD	BC,$200		; 転送個数
		LD	HL,$6000+0B00H
		LD	DE,CHR_VRAM_ADRS+0D00H
		CALL	CAMERA_CHR_TRAN	; メッセージ
;（ＯＢＪ）
		LD	A,$35		; clz9.cgx
		LD	BC,$500		; 転送個数
		LD	HL,$4000+1200H
		LD	DE,CHR_VRAM_ADRS
		CALL	CAMERA_CHR_TRAN

;------------------------------------------------------------------------
;	スクリーン
;------------------------------------------------------------------------

		LD	A,:ALBUM_INIT	; リターンバンク
		LD	(WORKF),A
		LD	A,:Photo_scr	; データバンク
		LD	HL,Photo_scr
		CALL	CAMERA_SCR_TRAN

		CALL	PHOTO_CHECK	; 写真撮ったかチェック
		CALL	MESSAGE_CHECK	; メッセージしゃべったかチェック

;------------------------------------------------------------------------
;	カラー
;------------------------------------------------------------------------

;;;;;;;		LD	A,:Photo_col	; データバンク
		LD	BC,$0080	; 転送個数
		LD	HL,Photo_col
		LD	DE,CGWORK
		CALL	CAMERA_COL_TRAN

;------------------------------------------------------------------------
;;;;;;		LD	A,(LCDCB)	; ＯＢＪ ＢＧ ＯＮ ＬＣＤＣ スタート
		LD	A,%11000111	; ＯＢＪ ＢＧ ＯＮ ＬＣＤＣ スタート
		LD	(LCDCB),A
		LD	(LCDC),A
		XOR	A
		LD	(SBHR),A

		JP	ITMODE_INC

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	 カメラ屋用 カラー転送						x
;x----------------------------------------------------------------------x
;x	    ＥＮＴＲＹ							x
;x		Ｂ         ： 転送個数					x
;x		Ｈ         ： データアドレス ＨＩＧＨ（  ”  ）		x
;x		Ｌ         ： データアドレス ＬＯＷ  （  ”  ）		x
;x		Ｄ         ： ＣＧＷＯＲＫアドレス ＨＩＧＨ（転送先）	x
;x		Ｅ         ： ＣＧＷＯＲＫアドレス ＬＯＷ  （  ”  ）	x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CAMERA_COL_TRAN
		LD	A,(CGBFLG)
		AND	A
		RET	Z

		LD	A,$2
		LD	(SVBK),A

		CALL	DATA_MOV

		XOR	A
		LD	(SVBK),A

		RET

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	写真撮ったかチェック						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
PHOTO_CHECK

;====================================================
;	でばっぐ DEBUG
;====================================================
	LD	A,(HIMI2)
	AND	A
	JR	Z,ALINT_000

	LD	A,%11111111	; とりあえず全部撮った
	LD	(PHOTOFG),A
	LD	A,%00001111
	LD	(PHOTOFG+1),A
ALINT_000
;====================================================

		LD	BC,$0001	; ２枚目からチェック
ALINT_100
		LD	HL,Photo_high_data
		ADD	HL,BC
		LD	A,(HL)
		LD	E,A
		LD	D,$0
		LD	HL,PHOTOFG
		ADD	HL,DE
		LD	A,(HL)

		LD	HL,Photo_bit_data
		ADD	HL,BC
		AND	(HL)		; 写真撮った？
		JR	Z,ALINT_120	; ＮＯ

		LD	D,$0
		LD	HL,Photo_address_data
		LD	A,C
		SLA	A
		LD	E,A
		ADD	HL,DE
		LD	A,(HLI)
		LD	E,A
		LD	A,(HL)
		LD	H,A
		LD	L,E
		PUSH	HL

		LD	A,$02		; 上
		LD	(HLI),A
		LD	A,$03
		LD	(HLI),A
		LD	A,$04
		LD	(HL),A
		LD	A,L		; 下
		ADD	A,$1E
		LD	L,A
		LD	A,H
		ADC	A,$0
		LD	H,A
		LD	A,$0A
		LD	(HLI),A
		LD	A,$0B
		LD	(HLI),A
		LD	A,$0C
		LD	(HL),A

		POP	HL
		LD	A,(CGBFLG)
		AND	A
		JR	Z,ALINT_120

		LD	A,$01
		LD	(VBK),A		; バンク（１）セット

		LD	A,$02		; 上
		LD	(HLI),A
		LD	(HLI),A
		LD	(HL),A
		LD	A,L		; 下
		ADD	A,$1E
		LD	L,A
		LD	A,H
		ADC	A,$0
		LD	H,A
		LD	A,$02
		LD	(HLI),A
		LD	(HLI),A
		LD	(HL),A

		XOR	A
		LD	(VBK),A		; バンク（０）セット
ALINT_120
		INC	C
		LD	A,C
		CP	12
		JR	NZ,ALINT_100

		RET

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	メッセージしゃべったかチェック					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
MESSAGE_CHECK
		LD	A,(MSGFIRST)
		AND	A
		RET	Z

		LD	HL,$9822	; 先頭アドレス
		LD	D,$7E		; べた
MSCHK_100
		LD	A,D
		LD	(HLI),A
		LD	A,L
		AND	%00011111
		CP	%00010010
		JR	NZ,MSCHK_100

		LD	A,L
		CP	$92
		RET	Z		; 終了チェック

		ADD	A,$10
		LD	L,A
		JR	MSCHK_100

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	アルバム プレイ（１）						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
ALBUM_PLAY1
		LD	A,(MSGFIRST)
		AND	A		; メッセージしゃべった？
		JR	Z,ALPLY_100	; ＹＥＳ

		XOR	A
		LD	(MSGFIRST),A
		LD	A,$2C
		LD	(MSGENO),A
		CALL	MSGCH3
		LD	A,$01		; ウィンドウを上に出す
		LD	(MSGEFG),A
ALPLY_100
		JP	ITMODE_INC


;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	アルバム プレイ（２）						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
ALBUM_PLAY2
		LD	A,(MSGEFG)
		AND	A
		RET	NZ

		CALL	YUBI_KEYIN	; ＫＥＹチェック
		CALL	YUBI_CHRSET	; 指キャラセット
		CALL	YUBI_OAMSET	; 指ＯＡＭセット
		RET


;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ＫＥＹチェック							x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;
;	写真Ｎｏ． YUBIPOS 対応表
;
;	( 1 )	( 2 )	( 7 )	( 8 )
;	  0	   1	  3	  4
;	( 3 )	( 4 )	( 9 )	( 10 )
;	  5	  6	  7	  8
;	( 5 )	( 6 )	( 11 )	( 12 )
;	  9	  a	  b	  c
;
;------------------------------------------------------------------------
Yubi_xpos_data
		DB	$20,$40,$78,$98
		DB	$20,$40,$78,$98
		DB	$20,$40,$78,$98
Yubi_ypos_data
		DB	$50,$50,$50,$50
		DB	$70,$70,$70,$70
		DB	$90,$90,$90,$90
Photo_bit_data
		DB	%00000001,%00000010,%01000000,%10000000
		DB	%00000100,%00001000,%00000001,%00000010
		DB	%00010000,%00100000,%00000100,%00001000
Photo_high_data
		DB	0,0,0,0
		DB	0,0,1,1
		DB	0,0,1,1
Photo_number_data
		DB	0, 1, 6, 7
		DB	2, 3, 8, 9
		DB	4, 5,10,11
;========================================================================

YUBI_KEYIN
		LD	A,(YUBIMOD)
		AND	A
		RET	NZ

;------------------------------------------------------------------------
;	Ｂボタン チェック
;------------------------------------------------------------------------
		LD	A,(KEYA2)
		AND	A
		RET	Z
		BIT	5,A		; Ｂボタン ＯＮ？
		JR	Z,ALBPL_100	; ＮＯ

		ld	a,013h		;［Ｓ］
		ld	(sound1),a
		LD	A,P_retn	; ゲームに戻る
		LD	(ITMODE),A
		XOR	A
		LD	(SBHR),A
		RET

;------------------------------------------------------------------------
;	左右キー チェック
;------------------------------------------------------------------------
ALBPL_100
		BIT	1,A
		JR	Z,ALBPL_200
					; 左キーＯＮ
		LD	A,(YUBIPOS)
		AND	A
		JR	Z,ALBPL_110

		DEC	A
		JR	ALBPL_500
ALBPL_110
		LD	A,11
		JR	ALBPL_500
;------------------------------------------------------------------------
ALBPL_200
		BIT	0,A
		JR	Z,ALBPL_300
					; 右キーＯＮ
		LD	A,(YUBIPOS)
		CP	11
		JR	Z,ALBPL_210

		INC	A
		JR	ALBPL_500
ALBPL_210
		XOR	A
		JR	ALBPL_500

;------------------------------------------------------------------------
;	上下キー チェック
;------------------------------------------------------------------------
ALBPL_300
		BIT	2,A
		JR	Z,ALBPL_400
					; 上キーＯＮ
		LD	A,(YUBIPOS)
		CP	4
		JR	C,ALBPL_310

		SUB	4
		JR	ALBPL_500
ALBPL_310
		ADD	A,8
		JR	ALBPL_500
;------------------------------------------------------------------------
ALBPL_400
		BIT	3,A
		JR	Z,ALBPL_600
					; 下キーＯＮ
		LD	A,(YUBIPOS)
		CP	8
		JR	NC,ALBPL_410

		ADD	A,4
		JR	ALBPL_500
ALBPL_410
		SUB	8
		JR	ALBPL_500
;------------------------------------------------------------------------
ALBPL_500
		LD	(YUBIPOS),A

		LD	D,$0
		LD	E,A
		LD	HL,Yubi_xpos_data
		ADD	HL,DE
		LD	A,(HL)
		LD	(YUBIXPS),A
		LD	HL,Yubi_ypos_data
		ADD	HL,DE
		LD	A,(HL)
		LD	(YUBIYPS),A
		LD	A,$0A		; エラー音
		LD	(SOUND1),A	;［Ｓ］

		RET

;------------------------------------------------------------------------
;	もしかして、Ａボタンで プリントアウト？
;------------------------------------------------------------------------
ALBPL_600
		LD	A,(KEYA2)
		BIT	4,A
		ret	z		; Ａボタンを押した　？
					; Yes !!
		LD	B,$0
		LD	A,(YUBIPOS)
		LD	C,A
		LD	D,A
		LD	HL,Photo_high_data
		ADD	HL,BC
		LD	A,(HL)
		LD	C,A
		LD	HL,PHOTOFG
		ADD	HL,BC
		LD	A,(HL)

		LD	C,D
		LD	HL,Photo_bit_data
		ADD	HL,BC
		AND	(HL)		; 写真撮った？
		JR	NZ,ALBPL_610	; ＹＥＳ

		LD	A,$1D		; エラー音
		LD	(SOUND1),A	;［Ｓ］
		LD	A,$ff		; エラー写真Ｎｏ．
		JR	ALBPL_620
ALBPL_610
		ld	a,013h
		ld	(sound1),a	;［Ｓ］
		LD	HL,Photo_number_data
		ADD	HL,BC
		LD	A,(HL)
ALBPL_620
		LD	(PHOTONO),A	; 写真Ｎｏ．
		LD	HL,YUBIMOD
		INC	(HL)
		XOR	A
		LD	(YUBIFCT),A
		RET

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	指キャラクターセット						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
Yubi_timer_data
		DB	10	; (0)ダミー
		DB	8	; (1)
		DB	8	; (2)
;
YUBI_CHRSET
		LD	A,(YUBIMOD)
		AND	A
		RET	Z

		LD	D,$0
		LD	E,A
		LD	HL,Yubi_timer_data
		ADD	HL,DE
		LD	A,(YUBIFCT)
		CP	(HL)
		JR	Z,YBCST_100

		INC	A
		LD	(YUBIFCT),A
		RET
YBCST_100
		XOR	A
		LD	(YUBIFCT),A
		LD	HL,YUBIMOD
		INC	(HL)
		LD	A,(HL)
		CP	3
		RET	NZ

		XOR	A
		LD	(YUBIMOD),A
		LD	(SBHR),A
		LD	A,(PHOTONO)
		CP	$ff
		RET	Z

		JP	ITMODE_INC

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	指ＯＡＭセット							x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;------------------------------------------------------------------------
;	指ＯＡＭデータ
;------------------------------------------------------------------------
YUBI_OAM_DATA
		DB	$00,$00,$40,$04
		DB	$00,$08,$42,$04

		DB	$01,$01,$40,$04
		DB	$01,$09,$42,$04

		DB	$03,$02,$40,$04
		DB	$03,$0a,$42,$04
;========================================================================

YUBI_OAMSET
		LD	A,(YUBIMOD)
		SLA	A
		SLA	A
		SLA	A
		LD	E,A
		LD	D,$0
		LD	HL,YUBI_OAM_DATA
		ADD	HL,DE
		LD	DE,OAM
		LD	C,$02
YUBI_OMST_100
		LD	A,(YUBIYPS)
		ADD	A,(HL)
		LD	(DE),A
		INC	DE
		INC	HL
		LD	A,(YUBIXPS)
		ADD	A,(HL)
		LD	(DE),A
		INC	DE
		INC	HL
		LD	A,(HLI)
		LD	(DE),A
		INC	DE
		LD	A,(HLI)
		LD	(DE),A
		INC	DE
		DEC	C
		JR	NZ,YUBI_OMST_100
		RET


;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	転送メイン							x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
TRANSFER_MAIN
		CALL	LCDC_OFF	; ＬＣＤＣ ストップ

		CALL	CHR_TRANSFER	; キャラクター
		CALL	SCR_TRANSFER	; スクリーン
		CALL	COL_TRANSFER	; カラー

;------------------------------------------------------------------------
;;;;;;		LD	A,(LCDCB)	; ＯＢＪ ＢＧ ＯＮ ＬＣＤＣ スタート
		LD	A,%11000111	; ＯＢＪ ＢＧ ＯＮ ＬＣＤＣ スタート
		LD	(LCDCB),A
		LD	(LCDC),A
		XOR	A
		LD	(SBHR),A

		JP	ITMODE_INC

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	キャラクター転送						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CHR_TRANSFER
		LD	A,(PHOTONO)
		AND	A		; カメラ屋？
		JR	NZ,CHR_TRAN_100	; ＮＯ

		LD	A,(PHOTOFG+1)
		AND	%10000000
		JR	Z,CHR_TRAN_100

		LD	A,12		; ピヨピヨりんく
CHR_TRAN_100
		LD	B,A
		SLA	A
		ADD	A,B		; ×３
		LD	D,$0
		LD	E,A
		LD	HL,Chr_data_adrs
		ADD	HL,DE
		PUSH	DE

		LD	A,(HLI)
		LD	C,A
		ld	(chradr+0),a
		LD	A,(HLI)
		LD	B,A
		ld	(chradr+1),a
		LD	A,(HL)		; ＢＡＮＫ
		ld	(chradr+2),a
		LD	H,B		; ＨＩＧＨ
		LD	L,C		; ＬＯＷ
		PUSH	HL

		LD	BC,$800		; 転送個数
		LD	DE,CHR_VRAM_ADRS+1000H
		CALL	CAMERA_CHR_TRAN	; ＢＧ

		POP	HL
		LD	BC,$800		; 転送個数
		ADD	HL,BC
		LD	DE,CHR_VRAM_ADRS+800H
		LD	A,(chradr+2)
		CALL	CAMERA_CHR_TRAN	; ＢＧ＆ＯＢＪ

		POP	DE
		RET

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	スクリーン転送							x
;x----------------------------------------------------------------------x
;x	    ＥＮＴＲＹ							x
;x		ＤＥ       ： データアドレスインデックス		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
SCR_TRANSFER
		LD	HL,Scr_data_adrs
		ADD	HL,DE

		LD	A,(HLI)
		LD	C,A
		LD	A,(HLI)
		LD	B,A

		LD	A,:SCR_TRANSFER	; リターンバンク
		LD	(WORKF),A
		LD	A,(HL)		; ＢＡＮＫ
		LD	H,B		; ＨＩＧＨ
		LD	L,C		; ＬＯＷ

		CALL	CAMERA_SCR_TRAN

		RET

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	カラー転送							x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
Photo_color
;;;;;;		DW	$5b7f,$3f0f,$222d,$10eb	; 緑ベース
		DW	$5b7f,$2e14,$194e,$08a9	; セピア調
;========================================================================

COL_TRANSFER
;;;;;;;		LD	A,:Photo_color	; データバンク
		LD	HL,Photo_color
		LD	BC,$0008	; 転送個数
		LD	DE,CGWORK
		CALL	CAMERA_COL_TRAN

		RET

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ポケットプリンタ プレイ						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
plyomdt
		db	078h,070h,00eh,003h
		db	078h,078h,00eh,023h
		db	078h,080h,014h,003h
		db	078h,088h,016h,003h
		db	078h,090h,018h,003h
		db	078h,098h,01ah,003h
;
		db	088h,070h,010h,004h
		db	088h,078h,012h,004h
		db	088h,080h,000h,004h
		db	088h,088h,002h,004h
		db	088h,090h,004h,004h
		db	088h,098h,006h,004h
;
plyomdt_end
;
omcnt		equ	(plyomdt_end-plyomdt)/4
;
;
PRINTER_PLAY
		LD	A,(KEYA2)
		BIT	5,A		; Ｂボタン ＯＮ？
		JR	Z,PRNPL_500	; ＮＯ

		ld	a,013h
		ld	(sound1),a
;;;;;;;;	LD	A,P_retn	; ゲームに戻る
		LD	A,MAIN_Test_init; アルバムに戻る
		LD	(ITMODE),A
		XOR	A
		LD	(SBHR),A
		RET

;------------------------------------------------------------------------
;	もしかして、Ａボタンで プリントアウト？
;------------------------------------------------------------------------
PRNPL_500
		LD	A,(KEYA2)
		BIT	4,A
		jr	z,PRNPL_600	; Ａボタンを押した　？
;					; Yes !!
;###################################################
;	プリントアウト イニシャル処理をここへ
;###################################################
		ld	a,013h
		ld	(sound1),a
		xor	a
		ld	(NmiTimer),a
		ld	a,010h
		ld	(FRCNT),a

		call	ITMODE_INC
;
PRNPL_600
		ld	hl,plyomdt
		ld	de,OAM
		ld	c,omcnt
;
PRNPL_650
		ld	a,(hli)
		ld	(de),a
		inc	de
		ld	a,(hli)
		ld	(de),a
		inc	de
		ld	a,(hli)
		ld	(de),a
		inc	de
		ld	a,(hli)
		ld	(de),a
		inc	de
		dec	c
		jr	nz,PRNPL_650
;
		ret
;
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	 リターンゲーム							x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
RETURN_GAME
		CALL	LCDC_OFF	; ＬＣＤＣ ストップ

		LD	A,:RETURN_GAME
		CALL	CAMERA_CHR_RESET
;------------------------------------------------------------------------
		LD	A,(PLXPSL)	; リンクポジション再セット
		LD	(WPLXPSL),A
		LD	A,(PLYPSL)
		LD	(WPLYPSL),A

		LD	A,GPLAY
		LD	(GMMODE),A
		XOR	A
		LD	(ITMODE),A

		LD	A,$18		; メッセージ連続防止タイム
		LD	(MSOFTM2),A

		LD	A,$07		;サウンドボリューム上げる
		LD	(SLEVEL),A	;
		LD	A,$70		;
		LD	(SLEVEL+1),A	;

		LD	A,(LCDCB)	; ＯＢＪ ＢＧ ＯＮ ＬＣＤＣ スタート
		LD	(LCDCB),A
		LD	(LCDC),A
		RET


;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	 モードｉｎｃ							x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
ITMODE_INC
		LD	HL,ITMODE
		INC	(HL)
		RET


;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	 転送データ							x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CHR_VRAM_ADRS	EQU	$8000
SCR_VRAM_ADRS	EQU	$9800

;┌──────────────────────────────────┐
;│	キャラクターデータ アドレス				       │
;└──────────────────────────────────┘
Chr_data_adrs
		DL	Photo_00_cgx	; Ｖサインりんく
		DL	Photo_01_cgx
		DL	Photo_02_cgx
		DL	Photo_03_cgx
		DL	Photo_04_cgx
		DL	Photo_05_cgx
		DL	Photo_06_cgx
		DL	Photo_07_cgx
		DL	Photo_08_cgx
		DL	Photo_09_cgx
		DL	Photo_0a_cgx
		DL	Photo_0b_cgx

		DL	Photo_00p_cgx	; ピヨピヨりんく
Chr_data_end

Photo_count	EQU	(Chr_data_end-Chr_data_adrs)/3

;┌──────────────────────────────────┐
;│	スクリーンーデータ アドレス				       │
;└──────────────────────────────────┘
Scr_data_adrs
		DL	Photo_00_scr	; Ｖサインりんく
		DL	Photo_01_scr
		DL	Photo_02_scr
		DL	Photo_03_scr
		DL	Photo_04_scr
		DL	Photo_05_scr
		DL	Photo_06_scr
		DL	Photo_07_scr
		DL	Photo_08_scr
		DL	Photo_09_scr
		DL	Photo_0a_scr
		DL	Photo_0b_scr

		DL	Photo_00p_scr	; ピヨピヨりんく
;==============================================================================
kryoamdt
		db	050h,038h,014h,000h
		db	050h,040h,016h,000h
		db	050h,048h,018h,000h
		db	050h,050h,01ah,000h
		db	050h,058h,008h,000h
		db	050h,060h,00ah,000h
		db	050h,068h,044h,000h
		db	050h,070h,00ch,000h
;
kryoamdt1
		db	078h,070h,00eh,003h
		db	078h,078h,00eh,023h
		db	078h,080h,008h,003h
		db	078h,088h,00ah,003h
		db	078h,090h,044h,003h
		db	078h,098h,02eh,003h
;
		db	088h,070h,010h,004h
		db	088h,078h,012h,004h
		db	088h,080h,000h,004h
		db	088h,088h,002h,004h
		db	088h,090h,004h,004h
		db	088h,098h,006h,004h
;
kryoamdt_end
;
kyomcnt		equ	(kryoamdt_end-kryoamdt)/4
kyomcnt1	equ	(kryoamdt_end-kryoamdt1)/4
;
;
key_check
		ld	a,(KEYA2)
		bit	4,a
		jr	z,key_check_050	; Ａボタンを押した　？
;					; Yes !!
		xor	a
		ld	(print_timer),a
		ld	(print_muki),a
		ld	a,020h
		ld	(print_xpos),a
		ld	a,022h
		ld	(sound4),a
		call	ITMODE_INC
		jr	key_check_090
;
key_check_050
		bit	5,a
		jr	z,key_check_100	; Ｂボタンを押した　？
;					; Yes !!
		ld	a,P_play
		ld	(ITMODE),a
;
key_check_090
		ld	a,013h
		ld	(sound1),a
;
key_check_100
		ld	de,OAM
		ld	hl,kryoamdt
		ld	c,kyomcnt
		ld	a,(FRCNT)
		inc	a
		ld	(FRCNT),a
		and	030h
		jr	nz,key_check_150
;
		ld	hl,kryoamdt1
		ld	c,kyomcnt1
;
key_check_150
		ld	a,(hli)
		ld	(de),a
		inc	de
		ld	a,(hli)
		ld	(de),a
		inc	de
		ld	a,(hli)
		ld	(de),a
		inc	de
		ld	a,(hli)
		ld	(de),a
		inc	de
		dec	c
		jr	nz,key_check_150
		ret
;
;==============================================================================
Test_init
;;;;;;;;		call	makedata
		xor	a
		ld	(PrinterStatus),a	; ステータス　クリアー
		ld	(PrinterStatus+1),a	; ステータス　クリアー
		ld	a,$13			; 印刷前後フィード　セット
		ld	(NumofFeed),a
		ld	a,1
		ld	(NumofSheet),a
		ld	a,%11100100
		ld	(ValueofParette),a
		ld	a,$80
		ld	(Concentration),a

		RET

;
;==============================================================================
retryFromStart
		ld	a,0
		ld	(PhaseNo),a

;;;;;;;;		ld	a,MAIN_Test_init
		ld	a,01dh
		ld	(SOUND1),a
		ld	a,010h
		ld	(FRCNT),a
		ld	a,MAIN_Test_error
		ld	(sseqbak),a

		ld	a,MAIN_Wait100ms
		ld	(sseq),a

		ret


;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;
;		ＳＩＯ送受信  割込み
;
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
SioInt_sub
;;;;;;;;		push	af
		ld	a,(SC)
		bit	7,a
		jr	nz,_NoSioInt		;ホントに？
;
		push	bc
		push	de
		push	hl

		ld	a,1
		ld	(SioIntOccur),a
		call	SioProc

		pop	hl
		pop	de
		pop	bc
_NoSioInt
;;;;;;;;	        pop	af
;;;;;;;;		reti
		RET


;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;
;		SIO WatchDog
;
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
SioWatchDog
		ld	a,(PhaseNo)		;プリンタ接続？
		cp	1
		ret	nz

		ld	a,(PrinterStatus)	;プリンタエラー？
		cp	$FF
		ret	z

		ld	a,(DuringTransPKT)	;データ送信中？
		and	a
		ret	nz			;Yes

		ld	hl,PrnTimer
		inc	(hl)
		ld	a,(hl)		
		cp	6			;16.6msec×6=99.6msec < 100msec
		ret	c
		xor	a
		ld	(hl),a
		ld	(BusyFlag),a
		call	NULTransPRN
		ret


;■■■■■■■■■■■■■■■■■■■■■■■■
;
;		ＳＩＯ割込み処理
;
;■■■■■■■■■■■■■■■■■■■■■■■■
SioProc
		ld	a,(ForceEnd)
		and	a
		jp	nz,SIOForceEnd

		ld	a,(PhaseNo)
		cp	7
		jp	z,GetPrinterStatus

		ld	a,(PreambleSendF)
		and	a
		jr	nz,_afterHeader
		call	PreambleTrans		;プリアンブルの送信
		ret
;-----		jp	SioIntRet

_afterHeader
		ld	a,(HeaderSendF)		;ヘッダー送信終了？
		and	a
		jr	z,_trans

;ここへはデータパケットしか来ない、その他はHeaderSendFが１になった
;時点で　PhaseNo=7になる
		ld	a,(Data1SendEndF)
		and	a
		jr	z,_trans

		ld	a,(CheckSumSendF)
		cp	2
		jr	z,_sendDummy

		call	TransCheckSum		;チェックサム２バイト送信
		ret
;-----		jr	_ret
_sendDummy
		call	TransDummy		;ダミーデータ２バイト送信
		ret
;-----		jr	_ret	

;全フェーズが来る
_trans
		call	Transmit
_ret
		ret
;-----		jp	SioIntRet

;========================================================
PreambleTrans
		ld	hl,BufPointer
		ld	c,(hl)
		inc	(hl)
		ld	b,0
		ld	hl,PreambleData
		add	hl,bc

		ld	a,(hl)
		ld	(SB),a
		ld	a,%00000001		;内部クロック
		ld	(SC),a
		ld	a,%10000001		;1 バイト送信request
		ld	(SC),a

		ld	a,(BufPointer)
		cp	2
		ret	nz
		xor	a
		ld	(BufPointer),a
		inc	a
		ld	(PreambleSendF),a
		ret
	

;========================================================
Transmit
		ld	a,(BufPointer)
		ld	c,a
		ld	a,(BufPointer+1)
		ld	b,a

		ld	a,(BufPointer_base)
		ld	l,a
		ld	a,(BufPointer_base+1)
		ld	h,a

		add	hl,bc

		ld	a,(SB)
		ld	(SBbak),a

		ld	a,(hl)
		ld	(SB),a
		ld	l,a
		ld	a,(SioCheckSum_S)
		add	a,l
		ld	(SioCheckSum_S),a
		ld	a,(SioCheckSum_S+1)
		adc	a,0
		ld	(SioCheckSum_S+1),a
	

		ld	a,%00000001		;内部クロック
		ld	(SC),a
		ld	a,%10000001		;1 バイト送信request
		ld	(SC),a

		ld	hl,BufPointer
		inc	(hl)
		jr	nz,_skiphi
		inc	hl
		inc	(hl)
_skiphi
		ld	hl,BufPointer
		ld	a,(TransCount)
		cp	(hl)
		jr	nz,_continue	
		inc	hl
		ld	a,(TransCount+1)
		cp	(hl)	
		jr	z,_EndofTrans		;end of Trans
_continue
		ret

_EndofTrans
		ld	hl,HeaderSendF
		ld	a,(hl)
		and	a
		jr	z,_setflag

		ld	hl,Data1SendEndF
_setflag
		inc	(hl)
		ld	a,(FollowingData)
		and	a
		jr	z,SetEndofTrans

		ld	a,(PhaseNo)
		cp	6			;Data End Packet
		jr	z,SetEndofTrans

		ld	hl,Data1SendEndF
		ld	a,(hl)
		and	a
		jr	nz,_datatransend
		xor	a
		ld	(BufPointer),a
		ld	(BufPointer+1),a

		ld	a,(BufPointer_base2)
		ld	(BufPointer_base),a
		ld	a,(BufPointer_base2+1)
		ld	(BufPointer_base+1),a
		ld	a,(TransCount2)
		ld	(TransCount),a
		ld	a,(TransCount2+1)
		ld	(TransCount+1),a
		ret

_datatransend
		call	ForRetry_DataTrans
		ret

SetEndofTrans
		ld	a,(SBbak)
		ld	(PrinterStatus+1),a

SetEndofTrans_data
		ld	a,7			;Get Printer Status
		ld	(PhaseNo),a
		ld	a,1
		ld	(EndofTrans),a
		call	ClearFlags
ForRetry_DataTrans
		ld	a,(TransCount1)
		ld	(TransCount),a
		ld	a,(TransCount1+1)
		ld	(TransCount+1),a
		ld	a,(BufPointer_base1)
		ld	(BufPointer_base),a
		ld	a,(BufPointer_base1+1)
		ld	(BufPointer_base+1),a

		ret

;========================================================
TransCheckSum
		ld	c,a
		ld	b,0
		ld	hl,SioCheckSum_S
		add	hl,bc

		ld	a,(hl)
		ld	(SB),a
		ld	a,%00000001		;内部クロック
		ld	(SC),a
		ld	a,%10000001		;1 バイト送信request
		ld	(SC),a

		ld	hl,CheckSumSendF
		inc	(hl)
		ret
;========================================================
TransDummy
		ld	a,(SB)
		ld	(PrinterStatus+1),a	;B is 機器番号？

		xor	a
		ld	(SB),a
		ld	a,%00000001		;内部クロック
		ld	(SC),a
		ld	a,%10000001		;1 バイト送信request
		ld	(SC),a

		ld	hl,DummySendF
		inc	(hl)
		ld	a,(hl)
		cp	2
		jr	z,SetEndofTrans_data
		ret




;○○○○○○○○○○○○○○○○○○○○○○○○○○○○
;
;		プリンタステータスの取込み
;
;○○○○○○○○○○○○○○○○○○○○○○○○○○○○
GetPrinterStatus
		ld	a,(RequestPhaseNo)
		ld	(LastPhaseNo),a

		ld	a,(PrinterStatus)
		ld	(PrinterStatusLast),a
		ld	a,(SB)
		ld	(PrinterStatus),a
		cp	$FF
		jr	nz,_ok

		ld	a,0
		ld	(DuringTransPKT),a		;クリア
		ld	(PhaseNo),a
;_forceOK
		ld	a,2
		jr	_ng
_ok
		bit	1,a
		jr	z,_ok10
		ld	a,1
		ld	(BusyFlag),a
_ok10
		bit	4,a
		ld	a,0
		ld	(PhaseNo),a
		ld	a,1
		jr	nz,_skip
		ld	(PhaseNo),a
_skip
		inc	a			; a is 2
_ng
		ld	(EndofTrans),a		; EnfofTrans is 2 then over.

		ld	a,(FollowingData)	;During DataTrnasPRN
		and	a
		jr	nz,_skipifDataTrans

		xor	a
		ld	(DuringTransPKT),a
_skipifDataTrans	

SIOForceEnd				;NodataSetting
		ret


;○○○○○○○○○○○○○○○○○○○○○○○○○○○○
;
;		ＳＩＯ送受信  割込みからの復帰
;
;○○○○○○○○○○○○○○○○○○○○○○○○○○○○
; エラー復帰
;SioErrorRet
;		xor	a
;		ld	(SC),a

; 正常復帰
;SioIntRet
;		ret

;
;
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;
;
;		プリンタ通信サブルーチンｓ
;
;
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

;
;○○○○○○○○○○○○○○○○○○○○○○○○○○○○
;
;	   ＳＩＯはＤＩＳＡＢＬＥ  、コネクト不可
;
;○○○○○○○○○○○○○○○○○○○○○○○○○○○○
;
SioHibernate
		xor	a
		ld	(SC),a
		ld	(SB),a


;○○○○○○○○○○○○○○○○○○○○○○○○○○○○
;	　　電源ＯＮ時等の初期化
SioInitialize
		xor	a
		ld	(SB),a
		ld	(SC),a
		ld	(PhaseNo),a
		ld	(SioWatchDogF),a
		dec	a
		ld	(PrinterStatus),a
		ld	(PrinterStatus+1),a
		ld	a,$80
		ld	(Concentration),a	;濃度

		call	SioFlagInit
		ret

;○○○○○○○○○○○○○○○○○○○○○○○○○○○○
;	　　パケット送信前準備
SioFlagInit
		xor	a
		ld	(EndofTrans),a
		ld	(SioIntOccur),a
		ld	(DuringTransPKT),a

;○○○○○○○○○○○○○○○○○○○○○○○○○○○○
;	　　パケット送信終了時
ClearFlags
		xor	a
		ld	(PreambleSendF),a	; Preamble send end Flag
		ld	(HeaderSendF),a		; Header send end Flag
		ld	(Data1SendEndF),a
		ld	(CheckSumSendF),a
		ld	(DummySendF),a
		ld	(SioCheckSum_S),a
		ld	(SioCheckSum_S+1),a
	        ld	(BufPointer),a
	        ld	(BufPointer+1),a
		ld	(ForceEnd),a
		ld	(BusyFlag),a
		ret


;________________________________________________________________
;○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○
;
;		プリンタ接続確認
;
;○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○
ConnectPRN
		ld	a,(DuringTransPKT)
		and	a
		jr	z,_trans0

		call	CheckEndofTrans
		ret	nc
_trans0
		ld	a,(LastPhaseNo)
		cp	1
		jr	nz,_trans1
		call	CheckEndofTrans
		ret	nc
_trans1
		call	PreparePacket1
		jp	StartStringTrans


;○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○
;	　　パケット単位の送信終了チェック
CheckEndofTrans
		ld	a,(EndofTrans)
		cp	2
		jr	c,_TransContinue

		call	WaitNextCall		;次のフレームを待つ
		jr	nz,_TransContinue

; パケット送信終了＆プリンタステータス有効
		xor	a

		ld	(PrnTimer),a
		ld	(LastPhaseNo),a
		inc	a
		ld	(PhaseNo),a

		ld	a,(PrinterStatus)
		cp	$ff
		jr	z,_fatal

		bit	0,a			;CheckSum
		jr	nz,_retry	

		bit	1,a			;Busy
		jr	nz,_retry

		and	$f0			;Error?
		jr	z,_ret			;No Error

		xor	a
		ld	(PhaseNo),a
		ld	(LastPhaseNo),a
		ld	a,(PrinterStatus)
		call	SetPrinterErrorNo
		jr	_ret
_retry
		scf				;再送
		ret

_Hibernate
		xor	a
		ld	(LastPhaseNo),a		
		dec	a
_fatal
		inc	a
		ld	(PhaseNo),a		;PhaseNo=0
		dec	a
		call	SetPrinterErrorNo
_ret
		and	a
		ret

_TransContinue
		xor	a
		ld	a,$f0			;プリンタステータス無効/未決定
		ret


;次のフレームを待つ
WaitNextCall
		ld	hl,EndofTrans
		ld	a,(hl)
		cp	3
		ret	z			;return flag=z
		inc	a			;       flag=nz
		ld	(hl),a
		ret				;return flag=nz

;________________________________________________________________
;○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○
;
;		プリンタ印字指示送信
;
;○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○
InstructPRN
		ld	a,(PhaseNo)
		cp	1
		jr	z,_ok
		cp	2
		jr	z,_ok
		and	a
		ld	a,$ff
		ret	z
_forced_return
		ld	a,$f0			;プリンタステータス無効/未決定
		ret
_ok
		ld	a,(BusyFlag)
		and	a
		jr	nz,_forced_return
		ld	a,(DuringTransPKT)
		and	a
		jr	z,_trans0
		call	CheckEndofTrans
		ret	nc
_trans0
		ld	a,(LastPhaseNo)
		cp	2
		jr	nz,_trans1
		call	CheckEndofTrans
		ret	nc
_trans1

		ld	a,(PrinterStatus)
		cp	$ff
		jp	z,SetPrinterErrorNo	;エラー

_prepare
		call	PreparePacket2
		jp	StartStringTrans

;________________________________________________________________
;○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○
;
;		データパケット送信
;		hl <- Data Address
;		a  <- Line Counter
;○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○
DataTransPRN
		ld	c,a

		ld	a,(PhaseNo)
		and	a
		ld	a,(PrinterStatus)
		jp	z,SetPrinterErrorNo
_send
		ld	a,(PhaseNo)
		cp	1
		jr	z,_ok
		cp	3
		jr	z,_ok
		ld	a,$f0			;プリンタステータス無効/未決定
		ret
_ok
		ld	a,(DuringTransPKT)
		and	a
		jr	nz,_CheckEndofTrans

;最初の１回のみ
		ld	a,c
		inc	a
		ld	(LineCount),a		;END OF DATAのために＋１

		ld	a,l
		ld	(PrnDataAddress),a
		ld	a,h
		ld	(PrnDataAddress+1),a
;
		ld	a,<scrbuf
		ld	(scradr),a
		ld	a,>scrbuf
		ld	(scradr+1),a

		ld	a,(PrinterStatus)
		cp	$ff
		jp	z,SetPrinterErrorNo	;エラー


_send01
;上から降りてくるのは最初の１回のみ

		ld	a,(CompressF)
		ld	(CompressFReal),a
		and	a
		jr	z,_normal0

		ld	a,(LineCount)
		dec	a
		dec	a

;;;;;;;;		push	af
		ld	c,a
		ld	b,0
		push	hl
		ld	hl,CompressFtbl
		add	hl,bc
		ld	a,(hl)
;;;;;;;;		pop	hl
		ld	(CompressFReal),a

;;;;;;;;		pop	af
;;;;;;;;		add	a,a
;;;;;;;;		ld	c,a
		sla	c
		ld	b,0
;;;;;;;;		push	hl
		ld	hl,CompressNum
		add	hl,bc
		ld	a,(hli)
		ld	b,(hl)
		pop	hl
		ld	c,a
	
		jp	_nextData

_normal0
		ld	bc,$0280		;とりあえず固定
						;HLはアドレス
_nextData
		call	detaset
		call	PreparePacket3
		jp	StartStringTrans

_CheckEndofTrans
		ld	a,(EndofTrans)
		cp	2
		ld	a,$f0			;プリンタステータス無効/未決定
		jp	c,_ret

		call	WaitNextCall		;次のフレームを待つ
		ld	a,$f0			;プリンタステータス無効/未決定
		jp	nz,_ret

		ld	hl,LineCount

		ld	a,(PrinterStatus)
		ld	c,a
		and	$f0
		ld	a,c
		jp	nz,_erPacketEnd

		bit	1,a
		jp	nz,_saisou0		;再送(BUSY)
		bit	0,a
		jp	nz,_saisou0		;再送(CHECKSUM-ERR)

		ld	a,(hl)			;データ送信終了送信済み?
		and	a
		ld	a,(PrinterStatus)
		jr	z,_end			;yes

		ld	a,(hl)			;データ送信終了送信へ
		cp	1
		jp	z,_endofRecord

		dec	(hl)			;カウンタOver
		ld	a,(PrinterStatus)
		jr	z,_end
_saisou0
		ld	a,(hl)
		cp	1			;データ送信終了パケットは次のframe
		ld	a,$f0			;プリンタステータス無効/未決定
		jp	z,_ret			;wait　１-frame

		ld	bc,$0280

		ld	a,(CompressF)
		ld	(CompressFReal),a
		and	a
		jr	z,_normal

		ld	a,(LineCount)
		dec	a
		dec	a

;;;;;;;;		push	af
		ld	c,a
		ld	b,0
		push	hl
		ld	hl,CompressFtbl
		add	hl,bc
		ld	a,(hl)
;;;;;;;;		pop	hl
		ld	(CompressFReal),a

;;;;;;;;		pop	af

;;;;;;;;		add	a,a
;;;;;;;;		ld	c,a
		sla	c
		ld	b,0
;;;;;;;;		push	hl
		ld	hl,CompressNum
		add	hl,bc
		ld	a,(hli)
		ld	b,(hl)
		pop	hl
		ld	c,a
	

_normal
;nextdata
;とりあえず現状は圧縮は考えない

		ld	a,(PrinterStatus)
		bit	1,a
		jp	nz,_saisou1			;再送
_send02
		ld	a,(scradr)
		add	a,2*20
		ld	(scradr),a
		ld	a,(scradr+1)
		adc	a,0
		ld	(scradr+1),a
		ld	a,<prnbuf
		ld	(BufPointer_base2),a
		ld	a,>prnbuf
		ld	(BufPointer_base2+1),a
;;;;;;;;		ld	a,(BufPointer_base2)
;;;;;;;;		add	a,$80
;;;;;;;;		ld	(BufPointer_base2),a
;;;;;;;;		ld	a,(BufPointer_base2+1)
;;;;;;;;		adc	a,$02
;;;;;;;;		ld	(BufPointer_base2+1),a
_saisou1
		ld	a,(BufPointer_base2)
		ld	l,a
		ld	a,(BufPointer_base2+1)
		ld	h,a

		jp	_nextData
;end
_erPacketEnd
		push	af
		ld	a,1
		ld	(ForceEnd),a
		pop	af	
		call	SetPrinterErrorNo
_end
		push	af
		xor	a
		ld	(FollowingData),a
		ld	(DuringTransPKT),a
		pop	af
_ret
		ret

_endofRecord
		ld	a,(LastBlock)
		and	a
		ld	a,(PrinterStatus)
		jr	z,_end
		dec	(hl)			;カウンタ<-0
		call	PreparePacket6
		jp	StartStringTrans
	
;________________________________________________________________
;○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○
;
;		印字ブレーク送信
;
;○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○
BreakPRN
		ld	a,(PhaseNo)
		cp	1
		jr	z,_ok
		cp	3
		jr	z,_ok
		and	a
		ld	a,$ff
		ret	z
		ld	a,$f0			;プリンタステータス無効/未決定
		ret
_ok
		ld	a,(DuringTransPKT)
		and	a
		jr	z,_trans0
		call	CheckEndofTrans
		ret	nc
_trans0
		ld	a,(LastPhaseNo)
		cp	4
		jr	nz,_trans1
		call	CheckEndofTrans
		ret	nc
_trans1
		ld	a,(PrinterStatus)
		cp	$ff
		jp	z,SetPrinterErrorNo	;エラー

_send03
		call	PreparePacket4
		jp	StartStringTrans


;________________________________________________________________
;○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○
;
;		ＮＵＬパケット送信
;
;○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○
NULTransPRN
		ld	a,(PhaseNo)
		cp	1
		jr	z,_ok
		cp	3
		jr	z,_ok
		and	a
		ld	a,$ff
		ret	z
		ld	a,$f0			;プリンタステータス無効/未決定
		ret
_ok
		ld	a,(DuringTransPKT)
		and	a
		jr	z,_trans0
		call	CheckEndofTrans
		ret	nc
_trans0
		ld	a,(PrinterStatus)
		cp	$ff
		jp	z,SetPrinterErrorNo	;エラー

_prepare
		call	PreparePacket5
		jp	StartStringTrans


;________________________________________________________________
;○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○
;
;		キャラクタデータ送信の初期化
;		a  <-- RequestedPhaseNo
;		d  <-- Exist Value data
;		hl <-- Start Address
;		bc <-- Transfer Count
;
;○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○

InitDataTrans
		ld	(RequestPhaseNo),a	; Requested Phase No
		ld	a,d
		ld	(FollowingData),a	; 印字指示、データパケット

		ld	a,l			; Header/AfterPreamble address
		ld	(BufPointer_base),a
		ld	(BufPointer_base1),a
		ld	a,h
		ld	(BufPointer_base+1),a
		ld	(BufPointer_base1+1),a

		ld	a,c			; Header/AfterPreamble Count
		ld	(TransCount),a
		ld	(TransCount1),a
		ld	a,b
		ld	(TransCount+1),a
		ld	(TransCount1+1),a

		xor	a
		ld	(EndofTrans),a
		call	ClearFlags
		ret


;●プリアンブルデータ
PreambleData
		db	$88,$33
		      ; Code            C-sum   Dummy
Packet1		db	$01,$00,$00,$00,$01,$00,$00,$00	;●接続確認パケット
Packet2		db	$02,$00,$04,$00			;●印字指示パケット
Packet3							;●データパケット
Packet6		db	$04,$00,$00,$00,$04,$00,$00,$00	;●データ終了パケット
Packet4		db	$08,$00,$00,$00,$08,$00,$00,$00	;●ブレークパケット
Packet5		db	$0f,$00,$00,$00,$0f,$00,$00,$00	;●ＮＵＬパケット
;________________________________________________________________
;●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●
;
;		接続確認パケットの生成
;
;●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●
PreparePacket1
		ld	a,1			; RequestPhaseNo
		ld	d,0			; Only Fixed Data
		ld	hl,Packet1
		ld	bc,8
		jp	InitDataTrans

;________________________________________________________________
;●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●
;
;		印字指示パケットの生成
;
;●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●
PreparePacket2
		ld	a,2
		ld	d,0			; Only This Data
		ld	hl,HeaderWork
		ld	bc,12
		call	InitDataTrans

		ld	hl,Packet2
		ld	de,HeaderWork
		ld	bc,4
		call	move

;		印字指示データの作成
		ld	de,$0006		;Packettype:2 + Length:4
		ld	a,(NumofSheet)		;枚数
		ld	(HeaderWork+4),a
		call	_sumadd
		ld	a,(NumofFeed)		;Feed
		ld	(HeaderWork+5),a
		call	_sumadd
		ld	a,(ValueofParette)		;パレット
		ld	(HeaderWork+6),a
		call	_sumadd

		ld	a,(Concentration)		;濃度
		ld	(HeaderWork+7),a
		call	_sumadd
		ld	a,e			;送信チェックサム
		ld	(HeaderWork+8),a
		ld	a,d			;送信チェックサム
		ld	(HeaderWork+9),a
		xor	a
		ld	(HeaderWork+10),a	;Dummy1
		ld	(HeaderWork+11),a	;Dummy2
		ret

_sumadd
		add	a,e
		ld	e,a
		ld	a,d
		adc	a,0
		ld	d,a
		ret

;==============================================================================
;		Move Data

move
		ld	a,(hli)
		ld	(de),a
		inc	de
		dec	bc
		ld	a,c
		or	b
		jr	nz,move
		ret

;________________________________________________________________
;●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●
;
;		データパケットの生成
;		hl <-- Data Address
;		bc <-- Data Count
;
;●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●
PreparePacket3
		ld	a,l			; Data Address
		ld	(BufPointer_base2),a
		ld	a,h
		ld	(BufPointer_base2+1),a

		ld	a,c			; Data Count
		ld	(TransCount2),a
		ld	a,b
		ld	(TransCount2+1),a
		push	bc

		ld	a,3
		ld	d,1			; Not Only following Data
		ld	hl,HeaderWork
		ld	bc,4			; Only Header
		call	InitDataTrans

		ld	a,(Packet3)
		ld	(HeaderWork),a
;		ヘッダデータの作成
;		実データの作成
;		注：事前に圧縮／非圧縮の判断をし、バッファアドレスをWorkにセット

		ld	a,(CompressFReal)
		ld	(HeaderWork+1),a	; 圧縮　or　非圧縮
		pop	bc

		ld	a,c
		ld	(HeaderWork+2),a	; データ長Low
		ld	a,b
		ld	(HeaderWork+3),a	; データ長High

		ret

;________________________________________________________________
;●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●
;
;		ブレークパケットの生成
;
;●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●
PreparePacket4
		ld	a,4			; RequestPhaseNo
		ld	d,0			; Only Fixed Data
		ld	hl,Packet4
		ld	bc,8
		jp	InitDataTrans
;________________________________________________________________
;●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●
;
;		ＮＵＬパケットの生成
;
;●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●
PreparePacket5
		ld	a,5			; RequestPhaseNo
		ld	d,0			; Only Fixed Data
		ld	hl,Packet5
		ld	bc,8
		jp	InitDataTrans

;________________________________________________________________
;●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●
;
;		データ終了パケットの生成
;
;●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●
PreparePacket6
		ld	a,6			; RequestPhaseNo
		ld	d,1			; Only Fixed Data(but for DATA)
		ld	hl,Packet6
		ld	bc,8
		jp	InitDataTrans
		ret

;________________________________________________________________
;●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●
;
;		データ送受信のKick
;
;●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●●
StartStringTrans
		ld	a,(PhaseNo)		; 現在のPhaseは１？
		cp	1
		jr	z,_ok			; yes
		and	a
		jr	nz,_ng			; 2以上はerror

					; Phase0
		ld	a,(RequestPhaseNo)
		cp	1
		jr	z,_ok_connect
						; 未接続で接続確認以外の要求
_ng						; 何らかのPhaseが未完了
		scf
		ret
_ok
		ld	a,(RequestPhaseNo)
		cp	1
		jr	z,_ng			; すでにPhase1になっている

		ld	(PhaseNo),a	
_ok_connect

;プリアンブルの第１バイト目送信：パケット送信のトリガ
_FirstByte
		xor	a
		ld	(EndofTrans),a
		ld	(LastPhaseNo),a
		ld	a,1
		ld	(BufPointer),a
		ld	(DuringTransPKT),a

		ld	a,(PreambleData)
		ld	(SB),a
		ld	a,$01
		ld	(SC),a
		ld	a,$81
		ld	(SC),a
;
		ld	a,$f0			;プリンタステータス無効/未決定
		ret
;
;
;
;________________________________________________________________
;○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○
;
;		プリンターエラー番号のセット
;
;○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○
SetPrinterErrorNo
		push	af
		ld	a,(PrinterStatus)
		cp	$ff
		jr	z,_next150	; ケーブルや電源が入っている　？
		bit	7,a		; Yes !!
		jr	z,_next100	; 電池が消耗している　？
		ld	a,0		; Yes !!
		jr	_next700
_next100
		bit	6,a
		jr	z,_next130	; 使用温度範囲以外　？
		ld	a,3		; Yes !!
		jr	_next700
_next130
		bit	5,a
		jr	z,_next150	; 紙詰まりをしています　？
		ld	a,2		; Yes !!
		jr	_next700
_next150
		ld	a,(PrinterStatus+1)
		cp	$81
		jr	z,_next170	; ケーブルが接続されている　？
		ld	a,1		; No !!
		jr	_next700
_next170
		ld	a,1
_next700
		ld	(PrinterErrorNo),a
		pop	af
		ret
;
;________________________________________________________________
;○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○
;
;		キャラデータセット
;
;○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○○
detaset
		push	hl
		push	bc
;
		ld	a,(scradr)
		ld	l,a
		ld	a,(scradr+1)
		ld	h,a
		ld	de,prnbuf
;
		ld	c,20*2
;
_loop1
		ld	a,(hli)
		push	hl
		ld	h,000
		sla	a
		rl	h
		sla	a
		rl	h
		sla	a
		rl	h
		sla	a
		rl	h
		ld	l,a
		ld	a,(chradr+1)
		adc	a,h
		ld	h,a
		ld	b,16
;
		call	dtbfset
;
		pop	hl
		dec	c
		jr	nz,_loop1
;
		pop	bc
		pop	hl
		ret


;==============================================================================
Test_connect
		call	ConnectPRN
		cp	$F0
		jr	z,_ret			;wait connect
		cp	$FF			;retry connect
		jr	z,_reterr


		ld	a,(sseq)
		inc	a
		ld	(sseqbak),a

		xor	a
		ld	(DelayNMI6),a
		ld	a,MAIN_Wait100ms
		ld	(sseq),a
_ret	
		ret

_reterr
		ld	a,01dh
		ld	(SOUND1),a
		ld	a,010h
		ld	(FRCNT),a
		ld	a,MAIN_Test_error
		ld	(sseq),a
;;;;;;;;		restseq	sseq
		ret

;
;==============================================================================
Test_datatrans
		ld	a,(PrinterStatus)
		cp	$FF
		jp	z,retryFromStart

		ld	a,(DuringTransPKT)
		and	a
		jr	z,_print

		ld	a,(PhaseNo)
		cp	3
		jr	z,_print
		cp	1
		jr	z,_print
		jp	retryFromStart

_print	

		ld	a,1
		ld	(LastBlock),a
		ld	hl,prnbuf
		ld	a,9
		call	DataTransPRN
		cp	$ff
		jp	z,retryFromStart
		cp	$f0
		ret	z

;;;;;;;;		nextseq	sseq
;;;;;;;;		ret
		JP	ITMODE_INC

;
;==============================================================================
Test_inst
		ld	a,(PrinterStatus)
		cp	$FF
		jp	z,retryFromStart

		ld	a,(DuringTransPKT)
		and	a
		jr	z,_inst

		ld	a,(PhaseNo)
		cp	2
		jr	z,_inst
		cp	1
		jr	z,_inst
		jr	_ret

_inst
		ld	a,(PrinterStatus)
		bit	1,a
		jr	nz,_ret

		call	InstructPRN
		cp	$ff
		jp	z,retryFromStart
		cp	$f0
		ret	z
_end
		ld	a,3
		ld	(PrnTimer),a

		xor	a
		ld	(DelayNMI6),a
		ld	a,MAIN_Wait100ms
		ld	(sseq),a
		ld	a,MAIN_Test_wait
		ld	(sseqbak),a

_ret
		ret

;
;==============================================================================
Test_wait
		ld	a,(PrinterStatus)
		cp	$FF
		jp	z,retryFromStart
		bit	3,a
		jp	nz,_skip
		bit	1,a
		jp	nz,_skip

;;;;;;;;		restseq	sseq

		LD	A,MAIN_Test_init
		LD	(ITMODE),A
		ld	a,002h
		ld	(sound4),a

		xor	a
		ld	(PhaseNo),a
_skip
		ret	

;
;==============================================================================
Wait100ms
		ld	hl,DelayNMI6
		inc	(hl)
		ld	a,(hl)
		cp	6
		jr	c,_ret
		xor	a
		ld	(hl),a
_jump
		ld	a,(sseqbak)
		ld	(sseq),a
_ret
		ret

;
;==============================================================================
errdat1
		db	050h,030h,014h,000h
		db	050h,038h,016h,000h
		db	050h,040h,018h,000h
		db	050h,048h,01ah,000h
		db	050h,050h,024h,000h
		db	050h,058h,026h,000h
		db	050h,060h,028h,000h
		db	050h,068h,02ah,000h
		db	050h,070h,02ch,000h
		db	050h,078h,030h,000h
		db	0ffh
;
errdat2
		db	050h,030h,014h,000h
		db	050h,038h,016h,000h
		db	050h,040h,018h,000h
		db	050h,048h,01ah,000h
		db	050h,050h,024h,000h
		db	050h,058h,026h,000h
		db	050h,060h,028h,000h
		db	050h,068h,02ah,000h
		db	050h,070h,02ch,000h
		db	050h,078h,032h,000h
		db	0ffh
;
errdat3
		db	050h,030h,014h,000h
		db	050h,038h,016h,000h
		db	050h,040h,018h,000h
		db	050h,048h,01ah,000h
		db	050h,050h,024h,000h
		db	050h,058h,026h,000h
		db	050h,060h,028h,000h
		db	050h,068h,02ah,000h
		db	050h,070h,02ch,000h
		db	050h,078h,034h,000h
		db	0ffh
;
errdat4
		db	050h,030h,014h,000h
		db	050h,038h,016h,000h
		db	050h,040h,018h,000h
		db	050h,048h,01ah,000h
		db	050h,050h,024h,000h
		db	050h,058h,026h,000h
		db	050h,060h,028h,000h
		db	050h,068h,02ah,000h
		db	050h,070h,02ch,000h
		db	050h,078h,036h,000h
		db	0ffh
;
erradrd
		dw	errdat1
		dw	errdat2
		dw	errdat3
		dw	errdat4
;
;
Test_error
;;;;;;;;		ld	a,(keyt1)
		LD	A,(KEYA2)
		and	a
		jr	z,Test_error_050	; 何かキーを押した　？
;						; Yes !!
		ld	a,MAIN_Test_init
		ld	(sseq),a
		ld	a,002h
		ld	(sound4),a
		XOR	A
		LD	(SBHR),A
;;;;;;;;		ret
;
Test_error_050
		ld	a,(FRCNT)
		inc	a
		ld	(FRCNT),a
		and	030h
		jr	nz,Test_error_060
;
		ld	a,01dh
		ld	(SOUND1),a
		ret
;
Test_error_060
		ld	a,(PrinterErrorNo)
		sla	a
		add	a,<erradrd
		ld	l,a
		ld	a,>erradrd
		adc	a,000h
		ld	h,a
		ld	e,(hl)
		inc	hl
		ld	d,(hl)
		ld	hl,oam
;
Test_error_100
		ld	a,(de)
		cp	0ffh
		ret	z
;
		ld	(hli),a
		inc	de
		ld	a,(de)
		ld	(hli),a
		inc	de
		ld	a,(de)
		ld	(hli),a
		inc	de
		ld	a,(de)
		ld	(hli),a
		inc	de
		jr	Test_error_100
;
;
;========================================================================
		END
;========================================================================
