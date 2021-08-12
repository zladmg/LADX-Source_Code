
		onbankgroup

;****************************************************************
;*								*
;*	タイトル    ：	ＣＧＢゼルダ				*
;*	ファイル名  ：	ZGKSCR.S				*
;*	処理内容    ：	寸劇関係				*
;*	作成日付    ：  １９９８／１０／２８			*
;*								*
;****************************************************************
;
	NLIST
;
;
;==============	バンク０ ========================================
BANK0		GROUP	0
;-------------<	ZCO >-------------
		EXTERN	LCDC_OFF
;
;-------------<	ZMA >-------------
		EXTERN	CAMERA_SCTR_SUB
;
;-------------<	ZPL >-------------
		EXTERN	GEKI00,GEKI06,GEKI11
;
;================================================================
		PUBALL
;
BANK3D	GROUP	$3D
;
	ORG	$4000
	LIB	ZRAM	; RAM ＥＱＵＡＴＥ ファイル
;
;---------------------------------------------------------------
	KANJI
	ISDMG
;
	LIST
;
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ＶＲＡＭの９Ｃ００のところに書きこみ		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
GEKI_SCRN_WRT
		LD	A,(HLI)
		LD	(DE),A
		INC	E
		LD	A,E
		AND	%00011111
		CP	20
		JR	NZ,GEKI_SCRN_WRT
		LD	A,E
		ADD	A,12
		LD	E,A
		LD	A,D
		ADC	A,$0
		LD	D,A
		CP	$9E
		JR	NZ,GEKI_SCRN_WRT
		LD	A,E
		CP	$40
		JR	NZ,GEKI_SCRN_WRT
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	寸劇のスクリーンの書き込み				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
GEKI_BGM_DAT
	DB	$000
	DB	$000,$04E,$000,$002,$000,$000
	DB	$000,$000,$000,$040,$048,$000
;
GEKI_SCRN
		CALL	LCDC_OFF
		LD	A,(LCDCB)
		AND	%01111111
		LD	(LCDC),A
;
		LD	HL,GEKI_SCRN_DATA	;スクリーンデータアドレス
		LD	A,(GMMODE)		;
		SUB	GEKI00			;
		SLA	A			;
		LD	E,A			;
		LD	D,$000			;
		ADD	HL,DE			;
		LD	A,(HLI)			;
		LD	H,(HL)			;
		LD	L,A			;
		PUSH	HL
		CALL	CAMERA_SCTR_SUB
		LD	A,(CGBFLG)
		AND	A
		JR	Z,GEKI_SCRN_200
		LD	A,$01
		LD	(VBK),A		; バンク（１）セット
		CALL	CAMERA_SCTR_SUB
		XOR	A
		LD	(VBK),A		; バンク（０）セット
;
GEKI_SCRN_200
		POP	HL
		LD	DE,$02D0
		ADD	HL,DE
		LD	A,(GMMODE)
		CP	GEKI06			;ワンワンのとこ？
		JR	Z,GEKI_SCRN_250		;	YES --> GEKI_SCRN_250
		CP	GEKI11
		JR	Z,GEKI_SCRN_250
		JR	GEKI_SCRN_300
GEKI_SCRN_250
		LD	DE,$9C00
		CALL	GEKI_SCRN_WRT
		LD	A,(CGBFLG)
		AND	A
		JR	Z,GEKI_SCRN_300
		LD	A,$01
		LD	(VBK),A		; バンク（１）セット
		LD	DE,$9C00
		CALL	GEKI_SCRN_WRT
		XOR	A
		LD	(VBK),A		; バンク（０）セット
;
GEKI_SCRN_300
		LD	A,%11000111	; ＯＢＪ ＢＧ ＯＮ ＬＣＤＣ スタート
		LD	(LCDCB),A
		LD	(LCDC),A
;
		LD	A,(GMMODE)
		SUB	GEKI00
		LD	E,A
		LD	D,$000
		LD	HL,GEKI_BGM_DAT
		ADD	HL,DE
		LD	A,(HL)
		LD	(SOUND4),A
;
		XOR	A
		LD	(SBCNT),A
		LD	(SBHR),A
		LD	HL,ITMODE
		INC	(HL)
		RET
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	スクリーンＶＲＡＭＴＲデータ				%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
GEKI_SCRN00
		libbin	photo/phoshasinya_P.csd
GEKI_SCRN01
		libbin	photo/phoshasinya.csd
;
GEKI_SCRN02
		LIB	Geki/gekigake.sdt
;
GEKI_SCRN04
		LIB	Geki/gekitori.sdt
;
GEKI_SCRN05
		libbin	photo/ph_uru_p.csd
;
GEKI_SCRN06
		LIB	Geki/gekiwan.sdt
		libbin	photo/ph_a1p.csd
;
GEKI_SCRN08
		libbin	photo/cameturi.csd
;
GEKI_SCRN09
		libbin	photo/camezolata.csd
;
GEKI_SCRN10
		LIB	Geki/gekisiro.sdt
;
GEKI_SCRN11
		LIB	Geki/gekihaka.sdt
		libbin	photo/camehaka.csd
;
GEKI_SCRN12
		libbin	photo/camegake2.csd
;
;
GEKI_SCRN_DATA
	DW	GEKI_SCRN00
	DW	GEKI_SCRN01,GEKI_SCRN02,00000000000,GEKI_SCRN04
	DW	GEKI_SCRN05,GEKI_SCRN06,00000000000,GEKI_SCRN08
	DW	GEKI_SCRN09,GEKI_SCRN10,GEKI_SCRN11,GEKI_SCRN12
;
;----------------------------------------------------------------
	END
;----------------------------------------------------------------
