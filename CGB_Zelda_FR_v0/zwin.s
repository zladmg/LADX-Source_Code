
		onbankgroup

;************************************************************************
;*									*
;*	タイトル    ：	ＣＧＢゼルダ					*
;*	ファイル名  ：	ZMASUB.DMG					*
;*	処理内容    ：	ZMA.DMG サブプログラム				*
;*	作成日付    ：  １９９８／０６／０９				*
;*									*
;************************************************************************
;
;==============	バンク０ ================================================
BANK0		GROUP	0
;-------------<	ZCO >-------------
		EXTERN	LCDC_OFF
;
;-------------<	ZMA >----------------------------------------------------
		EXTERN	GAKCH,DJBST,GRBST,POKAR,FUEC1,FUEC4
		EXTERN	HIMITSU,VRAMD_SET,HIMI2
;
;-------------<	ZPL >----------------------------------------------------
		EXTERN	PMOVE,FDIN,FDOUT,GPLAY,PKEN,ITSEL
;
;-------------<	ZES >----------------------------------------------------
		EXTERN	ITSEL_CHR_SET,NXOMSBL
;
;;;KK;;;;==============	バンク１Ａ ==============================================
;;;KK;;;BANK21		GROUP	$21
;;;KK;;;;-------------<	ZCOL >---------------------------------------------------
;;;KK;;;		EXTERN	ITSELCOL
;
;========================================================================
		PUBALL
		NLIST

BANK20		GROUP	$20

		LIB	ZRAM		; RAM ＥＱＵＡＴＥ ファイル
		LIB	ZBN		; BG unit no file !

;------------------------------------------------------------------------
		LIST
		KANJI
		ISDMG

;(CGB)		ORG	$7000
;
DEBUG_MODE	EQU	1	; ０：ＯＦＦ、１：ＯＮ
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	アイテムセレクト画面 メイン					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
ITEM_SELECT
		LD	A,(ITMODE)
		RST	0
ITSEL_start	DW	ITSEL_0000	;カラーバッファ退避
		DW	ITSEL_1000	;フェードアウト
		DW	ITSEL_2000	;常に持っているアイテムセット
		DW	ITSEL_2500	;わらしべアイテムのアトリビュートセット
		DW	ITSEL_3000	;セレクトアイテムセット(前半)
;;;KK;;;		DW	ITSEL_3500	;セレクトアイテムセット(前半)
;;;KK;;;		DW	ITSEL_4000	;セレクトアイテムセット(後半)
		DW	ITSEL_6000	;キャラクタ転送(特殊)
		DW	ITSEL_7000	;カラーセット
		DW	ITSEL_8000	;フェードイン
ITSEL_disp	DW	ITSEL_9000	;プレイ
ITSEL_dasu	DW	ITSEL_A000	;ＵＰスクロール
		DW	ITSEL_B000	;最下段表示中
ITSEL_modosu	DW	ITSEL_C000	;ＤＯＷＮスクロール
ITSEL_return	DW	ITSEL_D000	;リターン
;
ITSEL_PLAY	EQU	(ITSEL_disp-ITSEL_start)/2
ITSEL_UP	EQU	(ITSEL_dasu-ITSEL_start)/2
ITSEL_DOWN	EQU	(ITSEL_modosu-ITSEL_start)/2
ITSEL_END	EQU	(ITSEL_return-ITSEL_start)/2
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	カラーバッファ退避					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
ITSEL_0000
		LD	A,(CGBFLG)
		AND	A
		JR	Z,ITSEL_0800
		LD	HL,CGWORK
		LD	C,$080
		DI			;割り込み禁止
ITSEL_0600
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
		JR	NZ,ITSEL_0600
		XOR	A
		LD	(SVBK),A
		EI			;割り込み許可
ITSEL_0800
		CALL	W_ITMINC
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	フェードアウト						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
ITSEL_1000
		CALL	FDIN

		LD	A,(SBHR)
		CP	$04
		JR	NZ,IS_0900
;
		XOR	A
		LD	(WNDFLG),A
;
		LD	A,$03		;サウンドボリューム下げる
		LD	(SLEVEL),A	;
		LD	A,$30		;
		LD	(SLEVEL+1),A	;
;
		XOR	A
		LD	(ITS_CNT),A
		LD	(ITS_IDX),A
		LD	(PUSH_CNT),A
		LD	(PUSH_IDX),A
		CALL	W_ITMINC
IS_0900
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	常に持っているアイテムセット				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
IT_SSI	EQU	$7F
;アトリビュートデータ
IT_SPITDT_AT
		DB	$9C,$AA,$81
		DB	$06,$06
;
		DB	$9C,$AC,$81
		DB	$06,$06
;
		DB	$9C,$AE,$81
		DB	$06,$06
;
		DB	$9C,$B0,$81
		DB	$06,$06
;
		DB	$9C,$B2,$81
		DB	$06,$06
;
		DB	$9C,$71,$81
		DB	$03,$03
;
		DB	$00
IT_SPIED_AT
;
IT_SPITDT2_AT
		DB	$9C,$AC,$81	;コンパス
		DB	$04,$04		;
;
		DB	$9C,$AE,$81	;石版の欠片
		DB	$03,$03		;
;
		DB	$00
IT_SPIED2_AT
;- - - - - - - - - - - - - - - - - - - - - - - -
IT_SPITDT
IT_SID
		DB	$9C,$6A,$83
IT_SI0		DB	$94,$95
IT_SI5		DB	$C0,$C1
;
		DB	$9C,$6C,$83
IT_SI1		DB	$A0,$A1
IT_SI6		DB	$C2,$C3
;
		DB	$9C,$6E,$83
IT_SI2		DB	$9A,$9B
IT_SI7		DB	$C4,$C5
;
		DB	$9C,$6F,$81
		DB	$9C,$9D
;
		DB	$9C,$B0,$81
IT_SI8		DB	$C6,$C7
;
		DB	$9C,$71,$81
IT_SI3		DB	$9E,$9F
;
		DB	$9C,$B2,$81
IT_SI9		DB	$CA,$CB
;
		DB	$9C,$92,$01
IT_KICT		DB	$7F,$7F
		DB	$9C,$D3,$00
IT_KYCT		DB	$7F
		DB	$00
IT_SPIED
;-----------------------------------
IT_SPICLD
		DB	IT_SI0-IT_SID
		DB	IT_SI1-IT_SID
		DB	IT_SI2-IT_SID
		DB	IT_SI3-IT_SID
		DB	IT_SI5-IT_SID
		DB	IT_SI6-IT_SID
		DB	IT_SI7-IT_SID
		DB	IT_SI8-IT_SID
		DB	IT_SI9-IT_SID
;- - - - - - - - - - - - - - - - - - - - - - - -
ITSEL_2000
		LD	HL,VRAMD+1
		LD	BC,IT_SPITDT
		LD	E,IT_SPIED-IT_SPITDT
ITSEL_2030
		LD	A,(BC)		;キャラクタナンバーセット
		INC	BC		;
		LD	(HLI),A		;
		DEC	E		;
		JR	NZ,ITSEL_2030	;
;
		LD	A,(CGBFLG)
		AND	A		;ＣＧＢ？
		JR	Z,ITSEL_2100	;	NO --> ITSEL_2100
;
		LD	HL,VRAMD_AT+1
		LD	BC,IT_SPITDT_AT
		LD	E,IT_SPIED_AT-IT_SPITDT_AT
ITSEL_2050
		LD	A,(BC)		;アトリビュートナンバーセット
		INC	BC		;
		LD	(HLI),A		;
		DEC	E		;
		JR	NZ,ITSEL_2050	;
		LD	A,IT_SPIED_AT-IT_SPITDT_AT-1
		LD	(VRAMD_AT),A
;
		LD	A,(DJFLAG)
		AND	A		;ダンジョンの中？
		JR	Z,ITSEL_2100	;	NO --> ITSEL_2100
;
		LD	A,(DNJNNO)
		CP	NEWDJ		;新ダンジョン？
		JR	Z,ITSEL_2060	;	YES --> ITSEL_2060
		CP	DJMAX
		JR	NC,ITSEL_2100
;
ITSEL_2060
		LD	HL,VRAMD_AT+1
		LD	A,(VRAMD_AT)
		LD	C,A
		LD	B,$000
		ADD	HL,BC
		LD	BC,IT_SPITDT2_AT
		LD	E,IT_SPIED2_AT-IT_SPITDT2_AT
ITSEL_2080
		LD	A,(BC)		;アトリビュートナンバーセット
		INC	BC		;
		LD	(HLI),A		;
		DEC	E		;
		JR	NZ,ITSEL_2080	;
		LD	A,(VRAMD_AT)
		ADD	A,IT_SPIED2_AT-IT_SPITDT2_AT-1
		LD	(VRAMD_AT),A
;
ITSEL_2100
		LD	DE,SPITF
		LD	BC,$00
ITSEL_2180
		LD	A,C
		CP	$02		;わらしべアイテム表示チェック？
		JR	NZ,ITSEL_2188	;	NO --> ITSEL_2188
;
		LD	A,(WARAFG)
		AND	A		;わらしべアイテムない？
		JR	NZ,ITSEL_21A0	;	YES --> ITSEL_21A0
ITSEL_2188
		LD	A,C
		CP	$04		;ダンジョンキー表示チェック？
		JR	NZ,ITSEL_2190	;	NO --> ITSEL_2190
;
		LD	DE,GRKEY1
		LD	A,(DJFLAG)
		AND	A		;ダンジョンの中？
		JR	Z,ITSEL_2190	;	NO --> ITSEL_2190
;
		LD	A,(DNJNNO)
		CP	NEWDJ		;新ダンジョン？
		JR	Z,ITSEL_2189	;	YES --> ITSEL_2189
		CP	DJMAX		;
		JR	NC,ITSEL_2190
;
ITSEL_2189
		LD	DE,DMAPF
ITSEL_2190
		LD	A,(DE)
		CP	$FF		;葉っぱ交換したあと
		JR	Z,ITSEL_21A0	;	YES --> ITSEL_21A0
		AND	A		;持っている？
		JR	NZ,ITSEL_2200	;	NO --> ITSEL_2200
;
ITSEL_21A0
		PUSH	DE
;
		LD	HL,IT_SPICLD	;ヌキキャラクターセット
		ADD	HL,BC		;
		LD	E,(HL)		;
		LD	D,$00		;
		LD	HL,VRAMD+1	;
		ADD	HL,DE		;
		LD	A,IT_SSI	;
		LD	(HLI),A		;
		LD	(HLI),A		;
;
		LD	A,C
		CP	$02		;わらしべアイテム表示チェック？
		JR	NZ,ITSEL_21C0	;	NO --> ITSEL_21C0
;
		LD	DE,$005
		ADD	HL,DE
		LD	A,IT_SSI
		LD	(HLI),A
		LD	(HL),A
ITSEL_21C0
		POP	DE
ITSEL_2200
		INC	DE
		INC	C
;
		LD	A,C
		CP	$09		;９種類すべて終了？
		JR	NZ,ITSEL_2180	;	NO --> ITSEL_2180
;
;----横のカウンターセット！-----
		LD	HL,VRAMD+1
		LD      DE,IT_KICT-IT_SID
		ADD	HL,DE 
		LD	A,(CLC20)
		AND	A		;貝殻持ってる？
		JR	Z,ITSEL_2210	;	NO --> ITSEL_2210
;
		LD	E,A
		SWAP	A
		AND	$0F
		ADD	A,$B0
		LD	(HLI),A
		LD	A,E
		AND	$0F
		ADD	A,$B0
		LD	(HLI),A		;２桁
;
ITSEL_2210
		LD	HL,VRAMD+1
		LD      DE,IT_KYCT-IT_SID
		ADD	HL,DE
		LD	A,(DJFLAG)
		AND	A		;ダンジョンの中？
		JR	Z,ITSEL_2218	;	NO --> ITSEL_2218
;
		LD	A,(DNJNNO)
		CP	NEWDJ		;新ダンジョン？
		JR	Z,ITSEL_2215	;	YES --> ITSEL_2215
		CP	DJMAX
		JR	NC,ITSEL_2218
;
ITSEL_2215
		LD	A,(SKEYF)
		AND	A		;小さいカギ持ってる？
		JR	Z,ITSEL_2220	;	NO --> ITSEL_2220
		PUSH	AF
		PUSH	HL
		LD	B,$000
		LD	A,(VRAMD_AT)
		LD	C,A
		LD	HL,VRAMD_AT+1
		ADD	HL,BC
		LD	A,L
		SUB	$11
		LD	L,A
		LD	A,H
		SBC	A,$000
		LD	H,A
		LD	(HL),$001
		INC	HL
		LD	(HL),$001
		POP	HL
		POP	AF
		JR	ITSEL_221C
;
ITSEL_2218
		LD	A,(GRKEY5)	;レベル３のカギを持ってる？
		AND	A		;	NO --> ITSEL_2220
		JR	Z,ITSEL_2220	;
		CP	$06		;
		JR	NC,ITSEL_2220	;
ITSEL_221C
		ADD	A,$B0
		LD	(HL),A
ITSEL_2220
		LD	A,IT_SPIED-IT_SPITDT-1
		LD	(VRAMD),A
;
		LD	A,$03		;サウンドボリューム下げる
		LD	(SLEVEL),A	;
		LD	A,$30		;
		LD	(SLEVEL+1),A	;
;
		JP	SPL_VRAMD_SET
;;;KK;;;		CALL	W_ITMINC
;;;KK;;;		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	わらしべアイテムのアトリビュートセット			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
ITSEL_25_DATA
		DB	$000	;なし
		DB	$005	;ヨッシー人形
		DB	$002	;リボン
		DB	$005	;ドッグフード(注:ze7.sのWKANCDも変えること)
		DB	$005	;バナナ
		DB	$006	;棒きれ(注:ze5.sのPPBOUCDも変えること)
		DB	$006	;ハチミツ
		DB	$005	;パイナップル
		DB	$005	;ハイビスカス(注:ze5.sのWARASIBECDも変えること)
		DB	$005	;手紙
		DB	$006	;ホウキ
		DB	$001	;釣り針
		DB	$002	;ピンクのブラジャー(注:ze2.sのBLAJCDも変えること)
		DB	$002	;人魚のウロコ
		DB	$005	;みとおしレンズ
;
ITSEL_2500
		LD	A,(CGBFLG)
		AND	A
		JR	Z,ITSEL_2900
		LD	B,$000
		LD	A,(MEGAF)	;わらしべアイテム何をもってる？
		LD	C,A
		LD	HL,ITSEL_25_DATA
		ADD	HL,BC
		LD	A,(HL)
		LD	(WORK0),A
;
		LD	A,$09C
		LD	(VRAMD_AT+1),A
		LD	(VRAMD_AT+5),A
		LD	A,$06E
		LD	(VRAMD_AT+2),A
		LD	A,$08E
		LD	(VRAMD_AT+6),A
;
		LD	A,$041
		LD	(VRAMD_AT+3),A
		LD	(VRAMD_AT+7),A
;
		LD	A,(WORK0)
		LD	(VRAMD_AT+4),A
		LD	(VRAMD_AT+8),A
;
		XOR	A
		LD	(VRAMD_AT+9),A
;
		LD	A,(VRAMD_AT)
		ADD	A,$008
		LD	(VRAMD_AT),A
;
ITSEL_2900
		LD	A,$03		;サウンドボリューム下げる
		LD	(SLEVEL),A	;
		LD	A,$30		;
		LD	(SLEVEL+1),A	;
;
		CALL	W_ITMINC
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	各アイテムレベルチェック			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
SEL_LVSET
		LD	A,(WORK1)
		CP	09
		JR	Z,SEL_FUECTST	; Fue sound count
		CP	12
		JR	Z,SEL_TBCTST	; Tubo count
		DEC	A
		JR	Z,SEL_KNLVST
		DEC	A
		JR	Z,SEL_BMCTST	; Bomb count
		DEC	A
		JR	Z,SEL_BULVST	; Bumeran level
		DEC	A
		JR	Z,SEL_TALVST	; Tate level
		DEC	A
		JR	Z,SEL_YACTST	; Ya count
;===================================================
SEL_LVNOTH
		LD	A,(DE)
		INC	DE
		LD	(HLI),A
		LD	A,(DE)
		INC	DE
		LD	(HLI),A
		RET
;
;-----------------------------------
SEL_BULVST
		LD	A,(BULLEV)
		JR	SEL_LVSTSB
;-----------------------------------
SEL_TALVST
		LD	A,(TATLEV)
		JR	SEL_LVSTSB
;-----------------------------------
SEL_KNLVST
		LD	A,(KENLEV)
SEL_LVSTSB
		ADD	A,$B0
		LD	C,A
;
		LD	A,(DE)
		INC	DE
		LD	(HLI),A
;
		LD	A,C
		INC	DE
		LD	(HLI),A
		RET
;-----------------------------------
SEL_TBCTST
		LD	A,(KINOKFG)
		AND	A
		JR	NZ,SEL_LVNOTH	;きのこ持っている？
;					; No. 魔法の粉カウントセット！
		LD	A,(TUBOCT)
		JR	SEL_CTSTSB
;-----------------------------------
SEL_FUECTST
		LD	A,(ONPUFG)
		AND	A
		JP	Z,SEL_LVNOTH
;
		LD	A,(FUESLPT)
		INC	A
		SWAP	A
		CALL	SEL_CTSTSB
		DEC	HL
		LD	(HL),$7F
		INC	HL
		RET
;-----------------------------------
SEL_YACTST
		LD	A,(YAAACT)
		JR	SEL_CTSTSB
;-----------------------------------
SEL_BMCTST
		LD	A,(BOMBCT)
SEL_CTSTSB
		PUSH	AF
		AND	$0F
		ADD	A,$B0
		LD	C,A
		POP	AF
		SWAP	A
		AND	$0F
		ADD	A,$B0
;
		LD	(HLI),A
		LD	A,C
		LD	(HLI),A
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ＣＧＢ用サブルーチン				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CGB_SEL_SUB
		PUSH	BC
		LD	A,(VRAMD_AT)
		LD	E,A
		LD	D,$0
		LD	HL,VRAMD_AT+1
		ADD	HL,DE
		ADD	A,$05
		LD	(VRAMD_AT),A
;
		PUSH	HL
		SLA	C	;x2
		LD	HL,ITEMADR
		ADD	HL,BC
		PUSH	HL
		POP	DE
		POP	HL
;
		LD	A,(DE)		;アドレスセット
		INC	DE		;
		LD	(HLI),A		;
		LD	A,(DE)		;
		LD	(HLI),A		;
		LD	A,$81		;個数セット
		LD	(HLI),A		;
;
		PUSH	HL
		LD	A,(WORK1)
		SLA	A
		LD	C,A
		LD	HL,SEL_ITEMCD_AT
		ADD	HL,BC
		PUSH	HL
		POP	DE
		POP	HL
;
		CP	$006			;パワーブレスレット？
		JR	NZ,CGB_SL_SB_240	;	NO --> CGB_SL_SB_240
		LD	A,(BULLEV)
		CP	$002			;レベル２？
		JR	NZ,CGB_SL_SB_240	;	NO --> CGB_SL_SB_240
		LD	A,$002
		LD	(HLI),A
		LD	(HLI),A
		JR	CGB_SL_SB_270
;
CGB_SL_SB_240
		CP	$018			;魔法の粉セット？
		JR	NZ,CGB_SL_SB_260	;	NO --> CGB_SL_SB_260
		LD	A,(KINOKFG)
		AND	A			;キノコセット？
		JR	Z,CGB_SL_SB_260		;	NO --> CGB_SL_SB_260
		LD	A,$002
		LD	(HLI),A
		LD	A,$003
		LD	(HLI),A
		JR	CGB_SL_SB_270
;
CGB_SL_SB_260
		LD	A,(DE)		;キャラクタナンバーセット
		INC	DE		;
		LD	(HLI),A		;
		LD	A,(DE)		;
		LD	(HLI),A		;
;
CGB_SL_SB_270
		XOR	A
		LD	(HL),A		; END
;
		POP	BC
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	セレクトアイテムＶＲＡＭＤセット		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
SEL_ITEMCD_AT
;ヌキ
;;;;;;;;		DB	SPACE,SPACE
		DB	$01,$01
;剣
		DB	$01,$01
;バクダン
		DB	$01,$01
;パワーブレスレット
		DB	$01,$01
;盾
		DB	$01,$01
;矢
		DB	$03,$03
;フックショット
		DB	$01,$02
;マジックロッド
		DB	$02,$01
;ペガサスの靴
		DB	$03,$03
;オカリナ
		DB	$02,$02
;ロック鳥の羽根
		DB	$03,$03
;スコップ
		DB	$03,$01
;魔法の粉
		DB	$03,$03
;ブーメラン
		DB	$02,$02
;
SEL_ITEMCD
;ヌキ
		DB	SPACE,SPACE,SPACE
		DB	SPACE,SPACE,SPACE
;剣
		DB	$84,$7F,$7F
		DB	$85,$BA,$7F
;バクダン
		DB	$80,$7F,$7F
		DB	$81,$7F,$7F
;パワーブレスレット
		DB	$82,$7F,$7F
		DB	$83,$BA,$7F
;盾
		DB	$86,$7F,$7F
		DB	$87,$BA,$7F
;矢
		DB	$88,$7F,$7F
		DB	$89,$7F,$7F
;フックショット
		DB	$8A,$7F,$7F
		DB	$8B,$7F,$7F
;マジックロッド
		DB	$8C,$7F,$7F
		DB	$8D,$7F,$7F
;ペガサスの靴
		DB	$98,$7F,$7F
		DB	$99,$7F,$7F
;オカリナ
		DB	$90,$7F,$7F
		DB	$91,$7F,$7F
;ロック鳥の羽根
		DB	$92,$7F,$7F
		DB	$93,$7F,$7F
;スコップ
		DB	$96,$7F,$7F
		DB	$97,$7F,$7F
;魔法の粉
		DB	$8E,$7F,$7F
		DB	$8F,$7F,$7F
;ブーメラン
		DB	$A4,$7F,$7F
		DB	$A5,$7F,$7F
;
;-------- アドレスデータ --------
ITEMADR
		DB	$9C,$01
		DB	$9C,$06
;
		DB	$9C,$61
		DB	$9C,$65
		DB	$9C,$C1
		DB	$9C,$C5
		DB	$9D,$21
		DB	$9D,$25
		DB	$9D,$81
		DB	$9D,$85
		DB	$9D,$E1
		DB	$9D,$E5
;
;;ITEMA
;;;;		A B 
;;	DB	1,2,3,4,5,6,7,8,9,10,11,12
;
ITSEL_SUB
;;;;;;;;ITEMDP2
		PUSH	DE
		PUSH	BC
;
		LD	HL,ITEMB
		ADD	HL,BC
		LD	A,(HL)
		LD	(WORK1),A
		SLA	A
		LD	E,A
		SLA	A
		ADD	A,E	; x6
		LD	(WORK0),A
;
		LD	A,(CGBFLG)
		AND	A		;ＣＧＢ？
		JR	Z,ITSEL_SUB_210	;	NO --> ITSEL_SUB_210
		CALL	CGB_SEL_SUB
;
ITSEL_SUB_210
		LD	A,(VRAMD)
		LD	E,A
		LD	D,$0
;
		LD	HL,VRAMD+1
		ADD	HL,DE
		ADD	A,$0C
		LD	(VRAMD),A
;
;- - Uper - -
		PUSH	HL
		SLA	C	;x2
		LD	HL,ITEMADR
		ADD	HL,BC
		PUSH	HL
		POP	DE
		POP	HL
;
		LD	A,(DE)		;アドレスセット
		INC	DE		;
		LD	(HLI),A		;
		LD	A,(DE)		;
		INC	DE		;
		LD	(HLI),A		;
;
		LD	A,$02		;個数セット
		LD	(HLI),A		;
;
		PUSH	HL
		LD	A,(WORK0)
		LD	C,A
		LD	HL,SEL_ITEMCD
		ADD	HL,BC
		PUSH	HL
		POP	DE
		POP	HL
;
		LD	A,(DE)		;キャラクタナンバーセット
		INC	DE		;
		LD	(HLI),A		;
		LD	A,(DE)		;
		INC	DE		;
		LD	(HLI),A		;
		LD	A,(DE)		;
		INC	DE		;
		LD	(HLI),A		;
;
;- - Lower - -
		POP	BC
		PUSH	BC
;
		PUSH	HL
		SLA	C	;x2
		LD	HL,ITEMADR
		ADD	HL,BC
		PUSH	HL
		POP	DE
		POP	HL
;
		INC	DE		;アドレス(ＬＯＷ)セット
		INC	HL		;
		LD	A,(DE)		;
		ADD	A,$20		;
		LD	(HL),A		;
;
		DEC	DE		;アドレス(ＨＩＧＨ)セット
		DEC	HL		;
		LD	A,(DE)		;
		INC	DE		;
		INC	DE		;
		ADC	A,$0		;
		LD	(HLI),A		;
		INC	HL		;
;
		LD	A,$02		;個数セット
		LD	(HLI),A		;
;
		PUSH	HL
		LD	A,(WORK0)
		LD	C,A
		LD	HL,SEL_ITEMCD+3
		ADD	HL,BC
		PUSH	HL
		POP	DE
		POP	HL
;
		LD	A,(DE)
		INC	DE
		LD	(HLI),A
;
;- - Item level - -
		CALL	SEL_LVSET
;
		XOR	A
		LD	(HL),A		; END
;
		POP	BC
		POP	DE
		DEC	C
;
		LD	A,C
		CP	E
		JP	NZ,ITSEL_SUB
;
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	セレクトアイテムセット	(前半)				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
ITSEL_3000
		LD	A,(WDITFG)
		LD	C,A
		LD	B,$00
		LD	E,$0FF
;
		CALL	ITSEL_SUB
		XOR	A
		LD	(WDITFG),A
;
SPL_VRAMD_SET
		CALL	W_ITMINC
;
		CALL	LCDC_OFF
;
		LD	A,:ITSEL_3000
		CALL	VRAMD_SET
		XOR	A
		LD	(VRAMD),A
		LD	(VRAMD+1),A
		LD	(VRAMD_AT),A
		LD	(VRAMD_AT+1),A
;
		LD	A,(LCDCB)
		LD	(LCDC),A
		RET
;
;;;KK;;;		LD	A,(WDITFG)
;;;KK;;;		LD	C,A
;;;KK;;;		LD	A,$008
;;;KK;;;		LD	(WDITFG),A
;;;KK;;;		LD	B,$00
;;;KK;;;		LD	E,$03
;;;KK;;;;
;;;KK;;;		CALL	ITSEL_SUB
;;;KK;;;;
;;;KK;;;		CALL	W_ITMINC
;;;KK;;;;
;;;KK;;;		RET
;;;KK;;;;
;;;KK;;;;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;;;KK;;;;x	セレクトアイテムセット	(前半)				x
;;;KK;;;;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;;;KK;;;ITSEL_3500
;;;KK;;;		LD	A,(WDITFG)
;;;KK;;;		LD	C,A
;;;KK;;;		LD	A,$005
;;;KK;;;		LD	(WDITFG),A
;;;KK;;;		LD	B,$00
;;;KK;;;		LD	E,$06
;;;KK;;;;
;;;KK;;;		CALL	ITSEL_SUB
;;;KK;;;;
;;;KK;;;		CALL	W_ITMINC
;;;KK;;;;
;;;KK;;;		RET
;;;KK;;;;
;;;KK;;;;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;;;KK;;;;x	セレクトアイテムセット	(後半)				x
;;;KK;;;;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;;;KK;;;ITSEL_4000
;;;KK;;;		LD	A,(WDITFG)
;;;KK;;;		LD	C,A
;;;KK;;;		LD	B,$00
;;;KK;;;		LD	E,$FF
;;;KK;;;;
;;;KK;;;		CALL	ITSEL_SUB
;;;KK;;;;
;;;KK;;;		CALL	W_ITMINC
;;;KK;;;;
;;;KK;;;		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	キャラクタ転送(特殊)					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
ITSEL_6000
;
		CALL	LCDC_OFF
;
		CALL	ITSEL_CHR_SET
;
		LD	A,(LCDCB)
		LD	(LCDC),A
;
		CALL	W_ITMINC
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	アイテムセレクト カラーデータ				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
ITEMSEL_COL
; ＜ ＢＧ： select_l.col ＞
		DW	$57ff,$26c4,$1521,$0000	; ( 0 )
		DW	$57ff,$5231,$28c5,$0000	; ( 1 )
		DW	$57ff,$2c7f,$140e,$0000	; ( 2 )
		DW	$57ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$57ff,$7eae,$7c00,$0000	; ( 4 )
		DW	$57ff,$7fff,$0642,$0000	; ( 5 )
		DW	$57ff,$12bb,$0151,$0000	; ( 6 )
		DW	$57ff,$2b02,$0a00,$0000	; ( 7 )
; ＜ ＯＢＪ： sel_obj.col ＞
		DW	$57ff,$0000,$22a2,$4eff	; ( 0 )
		DW	$7c00,$0000,$05ff,$4eff	; ( 1 )
		DW	$7c00,$0000,$7e03,$4eff	; ( 2 )
		DW	$7c00,$0000,$5231,$7fff	; ( 3 )
		DW	$7c00,$1adf,$187d,$0000	; ( 4 )
		DW	$7c00,$0000,$22a2,$7fff	; ( 5 )
		DW	$7c00,$0000,$001f,$7fff	; ( 6 )
		DW	$7c00,$0000,$7c00,$7fff	; ( 7 )
;
CHR_COL_DAT1
		DW	$7FFF,$0642
;
CHR_COL_DAT2
		DW	$0FBE,$0213
;
CHR_COL_DAT3
		DW	$0F7F,$09E0
;
CHR_COL_DAT4
		DW	$32DF,$187D
;
CHR_COL_DAT5
		DW	$7FFF,$083D
;
CHR_COL_DAT6
		DW	$7EAE,$7C00
;
CHR_COL_DAT7
		DW	$7FFF,$5231
;
CHR_COL_DATA
		DW	CHR_COL_DAT1,CHR_COL_DAT2,CHR_COL_DAT3
		DW	CHR_COL_DAT4,CHR_COL_DAT5,CHR_COL_DAT6
		DW	CHR_COL_DAT7
;
ITCOL_CHG_TBL
	DB	$00,$01,$00,$07,$02,$00,$00,$03
	DB	$04,$05,$00,$00,$00,$00,$06
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	カラーセット						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
ITSEL_7000
;;;KK;;;		LD	A,ITSELCOL+1	; カラーフラグセット
;;;KK;;;		LD	(COLFLG),A
		XOR	A
		LD	(WNDYPS),A	; ウィンドウＹＰＯＳ
		LD	A,$001		; フェードインフラグＯＮ
		LD	(FADEMDFG),A
;
		LD	A,(CGBFLG)
		AND	A
		JR	Z,ITSEL_7800
;
		LD	BC,ITEMSEL_COL
		LD	HL,CGWORK
;
		DI
		LD	A,$002
		LD	(SVBK),A
ITSEL_LOOP
		LD	A,(BC)
		LD	(HLI),A
		INC	BC
		LD	A,L
		CP	$090
		JR	NZ,ITSEL_LOOP
		XOR	A
		LD	(SVBK),A
		EI
;
		LD	HL,ITCOL_CHG_TBL
		LD	A,(MEGAF)	;わらしべアイテム何をもってる？
		LD	E,A
		LD	D,$000
		ADD	HL,DE
		LD	A,(HL)
		AND	A		;カラーチェンジ？
		JR	Z,ITSEL_7800	;	NO --> ITSEL_7800
		SLA	A
		LD	E,A
		LD	HL,CHR_COL_DATA-2
		ADD	HL,DE
		LD	A,(HLI)
		LD	H,(HL)
		LD	L,A
		LD	DE,BGCGWK+((($005*$004)+$001)*$002)
		LD	C,$004
;
		DI
		LD	A,$002
		LD	(SVBK),A
ITSEL_LOOP2
		LD	A,(HLI)
		LD	(DE),A
		INC	DE
		DEC	C
		LD	A,C
		AND	A
		JR	NZ,ITSEL_LOOP2
		XOR	A
		LD	(SVBK),A
		EI
;
;
ITSEL_7800
		XOR	A
		LD	(SBHR),A
;
		CALL	W_ITMINC
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	楽器レインボー					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
GAKKI_COL_DATA
		DW	$2680,$1100
		DW	$3A20,$18E0
		DW	$51A0,$20C0
		DW	$7D08,$3484
		DW	$7CAD,$3046
		DW	$5C50,$2827
		DW	$4012,$1C08
		DW	$3015,$1409
		DW	$1417,$0009
		DW	$04D7,$046A
		DW	$0537,$048A
		DW	$0997,$04AA
		DW	$09F5,$04C9
		DW	$0A10,$04E7
		DW	$064B,$0505
		DW	$02A0,$0120
;;;KK;;;		DW	$2680,$0520
;;;KK;;;		DW	$3A20,$1100
;;;KK;;;		DW	$51A0,$2C80
;;;KK;;;		DW	$7D08,$3020
;;;KK;;;		DW	$78AD,$3002
;;;KK;;;		DW	$5C50,$2C25
;;;KK;;;		DW	$4012,$1807
;;;KK;;;		DW	$3015,$0809
;;;KK;;;		DW	$0016,$0009
;;;KK;;;		DW	$00D4,$0028
;;;KK;;;		DW	$0132,$0047
;;;KK;;;		DW	$0191,$0086
;;;KK;;;		DW	$01EF,$00A5
;;;KK;;;		DW	$020B,$00A3
;;;KK;;;		DW	$0246,$00C1
;;;KK;;;		DW	$02A0,$0100
GAKKI_COL
		LD	A,(CGBFLG)
		AND	A
		JR	Z,GAKKI_COL_END
;
		LD	A,(ITS_IDX)
		LD	C,A
		LD	A,(ITS_CNT)
		INC	A
		LD	(ITS_CNT),A
		CP	8
		JR	C,GAKKI_COL_PASS
		XOR	A
		LD	(ITS_CNT),A
		LD	A,C
		ADD	A,$004
		AND	%00111100
		LD	(ITS_IDX),A
		LD	C,A
GAKKI_COL_PASS
		LD	B,$000
		LD	HL,GAKKI_COL_DATA
		ADD	HL,BC
		LD	BC,CGWORK+56+2
		LD	E,$4
;
GAKKI_COL_LOOP
		LD	A,(HLI)
		LD	(BC),A
		INC	BC
		DEC	E
		LD	A,E
		AND	A
		JR	NZ,GAKKI_COL_LOOP
;
		LD	A,BGCOL_BITFG
		LD	(CGDMAF),A
GAKKI_COL_END
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	フェードイン						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
ITSEL_8000
		CALL	PWKENDP
;
		CALL	FDOUT
;
		LD	A,(SBHR)
		CP	$04
		JR	NZ,IS_8900
;
		CALL	W_ITMINC
IS_8900
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	カーソル移動チェック				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
X_DATA
		DB	$00,$01,$FF
Y_DATA
		DB	$00,$FE,$02
;
WAKUMOVE
		LD	A,(ITEMPT)
		LD	(WITEMPT),A
;
		LD	A,(FUETM)
		LD	HL,FUETM2
		OR	(HL)		;笛ウィンド開閉中？
		JR	NZ,WKMV030	;	YES --> WKMV030
;
		LD	A,(FUEFLG)
		AND	A		;笛ウィンド表示中？
		JR	NZ,WKMV020	;	YES --> WKMV020
;
		LD	A,(KEYA2)	;Ｘ方向移動チェック
		AND	%00000011	;
		LD	E,A		;
		LD	D,$00		;
		LD	HL,X_DATA	;
		ADD	HL,DE		;
		LD	A,(ITEMPT)	;
		ADD	A,(HL)		;
		CP	$0A		;
		JR	C,WKMV018	;
		RLA			;
		LD	A,$00		;
		JR	NC,WKMV018	;
		LD	A,$09		;
WKMV018					;
		LD	(ITEMPT),A	;
;
;---------------------------------------
WKMV020
		LD	A,(KEYA2)	;Ｙ方向移動チェック
		SRL	A		;
		SRL	A		;
		AND	%00000011	;
		LD	E,A		;
		LD	D,$00		;
		LD	HL,Y_DATA	;
		ADD	HL,DE		;
		LD	A,(ITEMPT)	;
		ADD	A,(HL)		;
		CP	$0A		;
		JR	C,WKMV028	;
		RLA			;
		LD	A,$00		;
		JR	NC,WKMV028	;
		LD	A,$09		;
WKMV028					;
		LD	(ITEMPT),A	;
;
;---------------------------------------
WKMV030
		LD	A,(KEYA1)
		AND	%00001111	;十字キーＯＮ？
		JR	Z,WKMV038	;	NO --> WKMV038
;
		LD	A,(FUEFLG)
		AND	A		;笛ウィンド表示中？
		JR	NZ,WKMV038	;	YES --> WKMV038
;
		XOR	A
		LD	(MPWRK0),A	; Display timing reset !
;
;---------------------------------------
WKMV038
		LD	A,(FUEFLG)
		AND	A		;笛ウィンド表示中？
		JR	Z,WKMV039	;	NO --> WKMV039
;
		LD	A,(FUETM)
		LD	HL,FUETM2
		OR	(HL)		;笛ウィンド開閉中？
		JR	NZ,WKMV039	;	YES --> WKMV039
;
		LD	A,(KEYA2)
		AND	%10000000	;スタートキーＯＮ？
		JR	Z,WKMV039	;	NO --> WKMV039
;
		LD	A,$01		;オートウィンド
		LD	(FUEAUT),A	;	クローズフラグＯＮ！
		JR	WKMV04F
;
;---------------------------------------
WKMV039
		LD	A,(ITEMPT)	;アイテムセレクトウィンド
		LD	HL,WITEMPT	;オープン時に、カーソルが
		CP	(HL)		;オカリナにあった時、オカリナ
		JR	Z,WKMV05A	;ウィンドが、開かないようにするため
;
		LD	HL,SOUND1
		LD	(HL),$0A	;(S)
;
		LD	E,A
		LD	D,$00
		LD	HL,ITEMF
		ADD	HL,DE
		LD	A,(HL)
		CP	POKAR		;オカリナ？
		JR	NZ,WKMV04F	;	NO --> WKMV04F
;
		LD	A,(ONPUFG)
		AND	A		;曲覚えてる？
		JR	Z,WKMV04F	;	NO --> WKMV04F
;
		LD	A,FUEC1
		LD	(BKCHFG),A
;
		LD	A,$10		;笛ウィンド開
		LD	(FUETM),A	;	タイマーセット
;
		LD	A,$01		;笛ウィンド表示フラグＯＮ
		JR	WKMV051		;
;
WKMV04F
		LD	A,(FUEFLG)
		AND	A		;笛ウィンド表示中？
		JR	Z,WKMV05A	;	NO --> WKMV05A
;
		LD	A,$10		;笛ウィンド閉
		LD	(FUETM2),A	;	タイマーセット
;
		XOR	A		;笛ウィンド表示フラグＯＦＦ
WKMV051
		LD	(FUEFLG),A
;
;---------------------------------------
WKMV05A					;Ａボタンアイテムセットチェック
		LD	HL,FUETM2
		LD	A,(FUETM)
		OR	(HL)		;笛ウィンド開閉中？
		JP	NZ,WKMV070	;	YES --> WKMV070
;
		LD	A,(KEYA2)
		AND	%00010000	;ＡボタンＯＮ？
		JR	Z,WKMV050	;	NO --> WKMV050
;
		LD	A,(ITEMA)	;Ａボタンとカーソル位置にある
		PUSH	AF		;アイテムを入れ替える
		LD	HL,ITEMF	;
		LD	A,(ITEMPT)	;
		LD	C,A		;
		LD	B,$0		;
		ADD	HL,BC		;
		LD	A,(HL)		;
		LD	(ITEMA),A	;
		POP	AF		;
		LD	(HL),A		;
;
		LD	C,$01
		LD	B,$00
		LD	E,$00
		JR	WKMV055
;
;---------------------------------------
WKMV050					;Ｂボタンアイテムセットチェック
		LD	A,(KEYA2)
		AND	%00100000	;ＢボタンＯＮ？
		JR	Z,WKMV070	;	NO --> WKMV070
;
		LD	A,(ITEMB)	;Ａボタンとカーソル位置にある
		PUSH	AF		;アイテムを入れ替える
		LD	HL,ITEMF	;
		LD	A,(ITEMPT)	;
		LD	C,A		;
		LD	B,$0		;
		ADD	HL,BC		;
		LD	A,(HL)		;
		LD	(ITEMB),A	;
		POP	AF		;
		LD	(HL),A		;
;
		LD	C,$00
		LD	B,$00
		LD	E,$FF
;
WKMV055
		CP	09		;オカリナを戻した？
		JR	NZ,WKMV04A	;	NO --> WKMV04A
;
		LD	A,(ONPUFG)
		AND	A		;曲覚えてる？
		JR	Z,WKMV04A	;	NO --> WKMV04A
;
		LD	A,FUEC1
		LD	(BKCHFG),A
;
		LD	A,$10		;笛ウィンド開
		LD	(FUETM),A	;	タイマーセット
;
		LD	A,$01		;笛ウィンド表示フラグＯＮ
		LD	(FUEFLG),A	;
		JR	WKMV04B
WKMV04A
		LD	A,(FUEFLG)
		AND	A		;笛ウィンド表示中？
		JR	Z,WKMV04B	;	NO --> WKMV04B
;
		XOR	A		;笛ウィンド表示フラグＯＦＦ
		LD	(FUEFLG),A	;
;
		LD	A,$10		;笛ウィンド閉
		LD	(FUETM2),A	;	タイマーセット
WKMV04B
		CALL	ITSEL_SUB
;
ITMCHNG
		LD	A,$13
		LD	(SOUND1),A	;(S)
;
		LD	A,(ITEMPT)
		ADD	A,$2
;
		LD	C,A
		LD	B,$00
		DEC	A
		LD	E,A
		CALL	ITSEL_SUB
WKMV070
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	選曲						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
FUECHDT
;0
		DB	$F8,$F0,$22,$01
		DB	$F8,$F8,$22,$21
		DB	$F8,$00,$24,$02
		DB	$F8,$08,$24,$22
		DB	$F8,$10,$26,$00
		DB	$F8,$18,$26,$20
		DB	$08,$F0,$20,$00
		DB	$08,$F8,$20,$00
		DB	$08,$00,$20,$00
		DB	$08,$08,$20,$00
		DB	$08,$10,$20,$00
		DB	$08,$18,$20,$00
;1
		DB	$FB,$F4,$20,$00
		DB	$FB,$FC,$20,$20
		DB	$FB,$00,$20,$00
		DB	$FB,$08,$20,$20
		DB	$FB,$0C,$20,$00
		DB	$FB,$14,$20,$20
		DB	$05,$F4,$20,$00
		DB	$05,$FC,$20,$00
		DB	$05,$00,$20,$00
		DB	$05,$08,$20,$00
		DB	$05,$0C,$20,$00
		DB	$05,$14,$20,$00
;2
		DB	$FD,$F8,$20,$00
		DB	$FD,$10,$20,$20
		DB	$FD,$00,$20,$00
		DB	$FD,$08,$20,$20
		DB	$FD,$08,$20,$00
		DB	$FD,$10,$20,$20
		DB	$03,$F8,$20,$00
		DB	$03,$10,$20,$00
		DB	$03,$00,$20,$00
		DB	$03,$08,$20,$00
		DB	$03,$08,$20,$00
		DB	$03,$10,$20,$00
;3
		DB	$00,$00,$20,$00
		DB	$00,$08,$20,$20
		DB	$00,$00,$20,$00
		DB	$00,$08,$20,$20
		DB	$00,$00,$20,$00
		DB	$00,$08,$20,$20
		DB	$00,$00,$20,$00
		DB	$00,$08,$20,$00
		DB	$00,$00,$20,$00
		DB	$00,$08,$20,$00
		DB	$00,$00,$20,$00
		DB	$00,$08,$20,$00
;- - - - - - - - - - - - - - - - -
FUSLXDT
		DB	$50,$60,$70
;- - - - - - - - - - - - - - - - -
FUCKBIT
		DB	%00000100
		DB	%00000010
		DB	%00000001
;- - - - - - - - - - - - - - - - -
FUE_SET
		LD	A,(FUETM2)
		AND	A		;笛ウィンド閉じてる最中？
		JR	Z,FUEST20	;	NO --> FUEST20
;
		DEC	A		;
		LD	(FUETM2),A	;笛ウィンド閉じてる？
		JR	NZ,FUEST10	;	NO --> FUEST10
;
		LD	HL,BKCHFG
		LD	(HL),FUEC4
;
		LD	A,(FUEAUT)	;オートウィンド
		AND	A		;	クローズフラグＯＮ？
		JR	Z,FUEST08	;	NO --> FUEST08
;
		LD	A,ITSEL_END	;アイテムウィンド
		LD	(ITMODE),A	;	オートクローズ
FUEST08
		RET
FUEST10
		CPL	
		JR	FUEST30
FUEST20
		LD	A,(FUETM)
		AND	A		;笛ウィンド開いてる最中？
		JR	Z,FUEST40	;	NO --> FUEST40
;
		DEC	A
		LD	(FUETM),A
FUEST30
		RRA
		RRA
		AND	$03
		JR	FUEST50
FUEST40
		LD	A,(FUEFLG)	;
		AND	A		;笛ウィンド表示中？
		JP	Z,FUEST90	;	NO --> FUEST90
;
		LD	A,$00
FUEST50
		LD	(FUECPT),A
;
		LD	A,(FUECPT)
		LD	D,$00
		SLA	A
		SLA	A
		SLA	A
		SLA	A
		LD	E,A
		SLA	A
		ADD	A,E
		LD	E,A
;
		LD	HL,FUECHDT
		ADD	HL,DE
		LD	DE,OAM+$18
		LD	C,12
		LD	B,%00000100
;
;---------------------------------------
FUEST70					;覚えてる曲のオブジェ表示
		LD	A,(HLI)
		ADD	A,$30
		LD	(DE),A
		INC	DE
		LD	A,(HLI)
		ADD	A,$60
		LD	(DE),A
		INC	DE
		LD	A,(HLI)
		LD	(DE),A
		INC	DE
;
		CP	$22
		JR	Z,FUEST71
		CP	$24
		JR	Z,FUEST72
		CP	$26
		JR	Z,FUEST73
		JR	FUEST75
;
FUEST71
		LD	B,%00000100
		JR	FUEST74
FUEST72 
		LD	B,%00000010
		JR	FUEST74
FUEST73
		LD	B,%00000001
FUEST74
		LD	A,(ONPUFG)
		AND	B		;曲覚えてる？
		JR	NZ,FUEST75	;	NO --> FUEST75
;
		DEC	DE
		LD	A,$20
		LD	(DE),A
		INC	DE
FUEST75
		LD	A,(HLI)
		LD	(DE),A
		INC	DE
		DEC	C
		JR	NZ,FUEST70
;
;---------------------------------------
		LD	A,(FUECPT)
		CP	$00
		JR	NZ,FUEST90
;
		LD	A,(KEYA2)	;
;;;;;;;;		AND	%01000001	;セレクトか右キーＯＮ？
		AND	%00000001	;右キーＯＮ？
		JR	Z,FUEST78	;	NO --> FUEST78
;
FUEST755
		LD	HL,FUESLPT
;
		LD	A,(HL)
		INC	A
		CP	$03
		JR	NZ,FUEST76
		XOR	A
FUEST76
		LD	(HL),A
;
		LD	E,A
		LD	D,$00
;
		LD	HL,FUCKBIT
		ADD	HL,DE
		LD	A,(ONPUFG)
		AND	(HL)		;曲覚えてる？
		JR	Z,FUEST755	;	NO --> FUEST755
;
;---------------------------------------
FUEST78
		LD	A,(KEYA2)	;
		AND	%00000010	;左キーＯＮ？
		JR	Z,FUEST80	;	NO --> FUEST80
;
FUEST79
		LD	HL,FUESLPT
		LD	A,(HL)
		DEC	A
		CP	$80
		JR	C,FUEST7A
;
		LD	A,$02
FUEST7A
		LD	(HL),A
;
		LD	E,A
		LD	D,$00
;
		LD	HL,FUCKBIT
		ADD	HL,DE
		LD	A,(ONPUFG)
		AND	(HL)		;曲覚えてる？
		JR	Z,FUEST79	;	NO --> FUEST79
;
FUEST80
;;;;;;;;		LD	A,(KEYA2)	;セレクト、右キー、
;;;;;;;;		AND	%01000011	;	左キーＯＮ？
		LD	A,(KEYA2)	;右キー、
		AND	%00000011	;	左キーＯＮ？
		JR	Z,FUEST88	;	NO --> FUEST88
;
		CALL	ITMCHNG
FUEST88
		LD	HL,OAM+$10
		LD	A,$38
		LD	(HLI),A
;
		PUSH	HL
;
		LD	A,(FUESLPT)
		LD	E,A
		LD	D,$00
		LD	HL,FUSLXDT
		ADD	HL,DE
		LD	A,(HL)
		POP	HL
		LD	(HLI),A
		PUSH	AF
;
		LD	A,$28		;オカリナ矢印
		LD	(HLI),A		;
		LD	A,$06		;
		LD	(HLI),A		;
;
		LD	A,$38
		LD	(HLI),A
;
		POP	AF
		ADD	A,$08
		LD	(HLI),A
;
		LD	A,$28		;オカリナ矢印
		LD	(HLI),A		;
		LD	(HL),$26	;
FUEST90
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ダンジョン内のリンクのいる部屋			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
LINK_IN_ROOM
		LD	A,(DJFLAG)
		AND	A		;地上以外？
		JR	Z,LK_IN_900	;	NO --> LK_IN_900
;
		LD	A,(DNJNNO)
		CP	NEWDJ		;新ダンジョン？
		JR	Z,IT_O000	;	YES --> IT_O000
		CP	$08		;レベル１～８のダンジョン？
		JP	NC,LK_IN_900	;	NO --> LK_IN_900
;
IT_O000
		LD	A,(WDNJNPT)
		AND	%11111000
		ADD	A,$50
		LD	H,A
;
		LD	A,(WDNJNPT)
		RLA
		RLA
		RLA
		AND	%00111000
		ADD	A,$060
		LD	L,A
;
		LD	A,(DAMPFG)
		AND	%00100000
		JR	Z,IT_O00A
;
		LD	A,(WDNJNPT)
		AND	%00111000
		CP	%00100000
		JR	NC,IT_O00A
;
		LD	A,H
		SUB	$08
		LD	H,A
IT_O00A
		LD	A,(DAMPFG)
		AND	%00010000
		JR	Z,IT_O00B
;
		LD	A,(WDNJNPT)
		AND	%00000111
		CP	%00000100
		JR	C,IT_O00B
;
		LD	A,L
		ADD	A,$08
		LD	L,A
IT_O00B
		LD	A,H
		LD	(OAM+$00),A
		LD	A,L
		LD	(OAM+$01),A
;
		LD	A,$3F
		LD	(OAM+$02),A
;
		LD	A,(CGBFLG)
		AND	A
		JR	Z,IT_O008_200
		LD	A,$001
		LD	(OAM+$03),A
		LD	A,(FRCNT)
		AND	%00001000
		JR	Z,LK_IN_900
		LD	A,$004
		LD	(OAM+$03),A
		JR	LK_IN_900
IT_O008_200
		LD	A,(FRCNT)
		RLA
		AND	%00010000
IT_O008
		LD	(OAM+$03),A
LK_IN_900
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	選択カーソルオブジェセット			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
ITPTXPS
	DB	$08,$28,$08,$28,$08,$28,$08,$28,$08,$28
ITPTYPS
	DB	$28,$28,$40,$40,$58,$58,$70,$70,$88,$88
;
IT_OBJ
;--- Item waku Display ---
		LD	A,(MPWRK0)
		INC	A
		LD	(MPWRK0),A
		AND	%00010000
		JR	NZ,IT_O0A0
;
		LD	A,(ITEMPT)
		LD	E,A
		LD	D,$0
		LD	HL,ITPTYPS
		ADD	HL,DE
		LD	A,(HL)
		LD	(OAM+$04),A
		LD	(OAM+$08),A
		LD	HL,ITPTXPS
		ADD	HL,DE
		LD	A,(HL)
		LD	(OAM+$05),A
		ADD	A,$20
		LD	(OAM+$09),A
		LD	A,$BE
		LD	(OAM+$06),A
		LD	(OAM+$0A),A
;(CGB)	LD	A,$30
		LD	A,$34		; (CGB)とりあえずいれた
		LD	(OAM+$07),A
;(CGB)	LD	A,$10
		LD	A,$14		; (CGB)とりあえずいれた
		LD	(OAM+$0B),A
IT_O0A0
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ＰＵＳＨ　ＳＥＬＥＣＴ表示				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;PUSH_SEL_X	EQU	$28
PUSH_SEL_X	EQU	$53
PUSH_SEL_Y	EQU	$90
;
PUSH_SEL_DISP
		LD	A,(PUSH_IDX)
		LD	B,A
		LD	A,(PUSH_CNT)
		INC	A
		LD	(PUSH_CNT),A
		CP	$010
		JR	C,PUSH_SEL_PASS
		XOR	A
		LD	(PUSH_CNT),A
		INC	B
;
PUSH_SEL_PASS
		LD	A,B
		LD	(PUSH_IDX),A
		LD	(WORKF),A
		LD	HL,OAM+$50
		LD	B,$4A		;初期キャラクタナンバー
		LD	C,PUSH_SEL_X	;初期Ｘ座標
		LD	D,$008
;
		LD	A,PUSH_SEL_Y
		LD	(HLI),A
		LD	A,C
		LD	(HLI),A
		ADD	A,$008
		LD	C,A
		LD	A,B
		INC	B
		INC	B
		LD	(HLI),A
		LD	A,$026
		LD	(HLI),A
;
		LD	A,(WORKF)
		AND	$003
		JR	NZ,PUSH_SEL_LOOP
		LD	C,PUSH_SEL_X+(8*9)
		JR	PUSH_SEL_NEXT
;
PUSH_SEL_LOOP
		LD	A,PUSH_SEL_Y
		LD	(HLI),A
		LD	A,C
		LD	(HLI),A
		ADD	A,$008
		LD	C,A
		LD	A,B
		LD	(HLI),A
		INC	B
		INC	B
		LD	A,$006
		LD	(HLI),A
		DEC	D
		LD	A,D
		AND	A
		JR	NZ,PUSH_SEL_LOOP
;
PUSH_SEL_NEXT
		LD	A,PUSH_SEL_Y
		LD	(HLI),A
		LD	A,C
		LD	(HLI),A
		LD	A,$4A
		LD	(HLI),A
		LD	A,$026
		LD	(HL),A
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	剣パワーアップフラッシュ				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
PWDPXD
		DB	$10,$38
		DB	$10,$30
		DB	$10,$30
		DB	$10,$30
		DB	$10,$30
		DB	$10,$30
;;;KK;;;		DB	$0F,$37
;;;KK;;;		DB	$0F,$2F
;;;KK;;;		DB	$0F,$2F
;;;KK;;;		DB	$0F,$2F
;;;KK;;;		DB	$0F,$2F
;;;KK;;;		DB	$0F,$2F
PWDPYD
		DB	$0E,$0E
		DB	$0E+$18,$0E+$18
		DB	$0E+$30,$0E+$30
		DB	$0E+$48,$0E+$48
		DB	$0E+$60,$0E+$60
		DB	$0E+$78,$0E+$78
;- - - - - - - - - - - - - - - - - - - -
PWKEND2 	;Window Ken power up flash ! For in game !
		LD	A,(CGBFLG)
		AND	A
		JR	NZ,PWKEND2_SET
;
		LD	A,(BGPFG)
		CP	%11100100
		RET	C
;
PWKEND2_SET
		LD	D,$02
		JR	PWDP02
;- - - - - - - - - - - - - - - - - - -
PWKENDP 	;Window Ken power up flash ! For in window
		LD	D,$0C
PWDP02
		LD	HL,ITEMB
		LD	E,$00
PWDP03
		LD	A,(HLI)
		CP	PKEN
		JR	Z,PWDP08
		INC	E
		LD	A,E
		CP	D
		JR	NZ,PWDP03
;
		RET
;- - - - - - - - - - - - - - - - - - -
PWDP08
		LD	D,$00
		LD	HL,PWDPXD
		ADD	HL,DE
		LD	A,(HL)
		LD	(WORK0),A
;
		LD	HL,PWDPYD
		ADD	HL,DE
		LD	A,(HL)
		LD	(WORK1),A
;
		LD	A,(POWRFG)
		DEC	A
		JR	NZ,PWDP10
;
;;;KK;;;		LD	A,(CLOTHFG)	;防御力もしくは、
;;;KK;;;		AND	A		;	攻撃力ＵＰしてる？
;;;KK;;;		JR	NZ,PWDP10	;	NO --> PWDP10
;
		LD	A,(FRCNT)
		AND	%00001000
		JR	NZ,PWDP10
;
		LD	A,(ENOMID)
		LD	E,A
		LD	D,$0
		LD	HL,ENOAM
		ld	a,(GMMODE)
		cp	ITSEL
		jr	nz,PWKENDP_050
;
		ld	a,(ITMODE)
		cp	2
		jr	nc,PWKENDP_100
;
PWKENDP_050
		ADD	HL,DE
;
PWKENDP_100
		LD	A,(FUEFLG)
		AND	A
		JR	Z,PWDP0C
;
		LD	HL,OAM+$9C
PWDP0C
		LD	A,(WNDYPS)
		PUSH	HL
		LD	HL,WORK1
		ADD	A,(HL)
		POP	HL
		LD	(HLI),A
		LD	A,(WORK0)
		LD	(HLI),A
		LD	A,$04
		LD	(HLI),A
		LD	A,$54
		LD	(HLI),A	
PWDP10
		LD	A,$01
		CALL	NXOMSBL
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	アイテムセレクト画面 プレイ					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
ITSEL_9000
		CALL	GAKKI_COL
;
		CALL	LINK_IN_ROOM	;ダンジョン内のリンクのいる部屋
;
		CALL	WAKUMOVE	;カーソル移動チェック
;
		CALL	FUE_SET		;選曲
;
		CALL	IT_OBJ
;
		CALL	PWKENDP
;
		CALL	PUSH_SEL_DISP
;
		LD	A,(FUEAUT)	;オートウィンド
		AND	A		;	クローズフラグＯＮ？
		JR	Z,ITSEL_9200	;	NO --> ITSEL_9200
;
		LD	A,(ITMODE)	;アイテムウィンド
		CP	ITSEL_END	;	オートクローズ
		JR	NZ,ITSEL_9900	;	NO --> ITSEL_9900
		XOR	A		;
		LD	(FUEAUT),A	;
		LD	(FUEFLG),A
		LD	(FUETM),A
		LD	(FUETM2),A
		JR	ITSEL_9600
;;;;;;;;		JR	Z,ITSEL_6200	;	NO --> ITSEL_6200
;
ITSEL_9200
		LD	A,(KEYA2)
		AND	%01000000	;ＳＥＬＥＣＴキーＯＮ？
		JR	Z,ITSEL_9400	;	NO --> ITSEL_9400
		LD	A,ITSEL_UP
		LD	(ITMODE),A
		LD	A,PUSH_SEL_Y
		LD	(PUSH_YCNT),A
;
;デバッグ・モード
;;;;;;;		if DEBUG_MODE

	ld	a,(HIMI2)
	and	a
	jr	z,ITSEL_DEBUG

		LD	A,(BGCKOF)
		XOR	$01
		LD	(BGCKOF),A

		LD	A,1		; これも入れた
		LD	(PHOTOFG),A	;
		XOR	A
		LD	(PHOTOFG+1),A	;

;;;;;;;		endif
ITSEL_DEBUG
;デバッグ・モード
;
		JR	ITSEL_9900
;
ITSEL_9400
		LD	A,(FUEFLG)
		LD	HL,FUETM
		OR	(HL)
		LD	HL,FUETM2
		OR	(HL)
		JR	NZ,ITSEL_9900
;
		LD	A,(KEYA2)
		AND	%10000000	;ＳＴＡＲＴキーＯＮ？
		JR	Z,ITSEL_9900	;	NO --> ITSEL_9900
;
		LD	A,ITSEL_END
		LD	(ITMODE),A
;
ITSEL_9600
		XOR	A
		LD	(SBHR),A
		LD	(SBCNT),A

		INC	A
;;;;;		LD	A,$001		; フェードインフラグＯＮ
		LD	(FADEMDFG),A
;
		LD	A,$12
		LD	(SOUND1),A	;(S)
ITSEL_9900
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	小ウィンドオブジェセットサブルーチン		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
SMALL_WIND_SUB
		LD	A,(WORKB)	;Ｙ座標セット
		LD	(HLI),A		;
;
		LD	A,(WORKA)	;Ｘ座標セット
		LD	(HLI),A		;
		ADD	A,$008		;
		LD	(WORKA),A	;
;
		LD	A,(DE)		;キャラクタセット
		LD	(HLI),A		;
		INC	DE		;
;
		LD	A,(DE)		;アトリビュート
		LD	(HLI),A		;
		INC	DE		;
;
		DEC	C
		LD	A,C
		AND	A
		JR	NZ,SMALL_WIND_SUB
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	小ウィンドオブジェセット				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CLOTH_DAT0
		DB	$40,$05,$40,$25,$5C,$03,$5E,$03
;
CLOTH_DAT1
		DB	$40,$06,$40,$26,$60,$03,$62,$03
;
CLOTH_DAT2
		DB	$40,$07,$40,$27,$64,$03,$7E,$03
;
CLOTH_DATA
	DW	CLOTH_DAT0,CLOTH_DAT1,CLOTH_DAT2
;
HART_CHR_DAT0
		DB	$42,$06,$42,$26,$66,$03,$7A,$03,$6E,$03
;
HART_CHR_DAT1
		DB	$46,$06,$42,$26,$68,$03,$7A,$03,$6E,$03
;
HART_CHR_DAT2
		DB	$44,$06,$42,$26,$6A,$03,$7A,$03,$6E,$03
;
HART_CHR_DAT3
		DB	$44,$06,$46,$26,$6C,$03,$7A,$03,$6E,$03
;
HART_CHR_DATA
	DW	HART_CHR_DAT0,HART_CHR_DAT1,HART_CHR_DAT2,HART_CHR_DAT3
;
FILM_CHR_DATA
		DB	$7C,$03,$48,$03,$48,$23
;
FILM_CNT_DAT
		DB	$66,$03,$66,$03
		DB	$66,$03,$68,$03
		DB	$66,$03,$6A,$03
		DB	$66,$03,$6C,$03
		DB	$66,$03,$6E,$03
		DB	$66,$03,$70,$03
		DB	$66,$03,$72,$03
		DB	$66,$03,$74,$03
		DB	$66,$03,$76,$03
		DB	$66,$03,$78,$03
		DB	$68,$03,$66,$03
		DB	$68,$03,$68,$03
		DB	$68,$03,$6A,$03
;
FILM_CHR_DATA2
		DB	$7A,$03,$68,$03,$6A,$03,$7C,$03,$7C,$03
;
SMALL_WIND_OBJ
		LD	HL,OAM+$10
		LD	A,PUSH_SEL_X
		LD	(WORKA),A
		LD	A,(PUSH_YCNT)
		LD	(WORKB),A
;
;--------------- 服セット
		PUSH	HL
		LD	C,$004
		LD	HL,CLOTH_DATA
		LD	A,(CLOTHFG)
		SLA	A
		LD	E,A
		LD	D,$000
		ADD	HL,DE
		LD	E,(HL)
		INC	HL
		LD	D,(HL)
		POP	HL
		CALL	SMALL_WIND_SUB
;
		LD	A,(WORKB)
		LD	(HLI),A
		LD	A,(WORKA)
		LD	(HLI),A
		ADD	A,$008
		LD	(WORKA),A
		LD	A,$7C
		LD	(HLI),A
		LD	A,$003
		LD	(HLI),A
;
;--------------- ハートのかけらセット
		PUSH	HL
		LD	C,$006
		LD	DE,HART_CHR_DATA
		LD	H,$000
		LD	A,(KAKERCT)
		SLA	A
		LD	L,A
		ADD	HL,DE
		LD	E,(HL)
		INC	HL
		LD	D,(HL)
		POP	HL
		CALL	SMALL_WIND_SUB
;
;--------------- フィルムセット
		LD	A,PUSH_SEL_X
		LD	(WORKA),A
		LD	A,(PUSH_YCNT)
		ADD	A,$10
		LD	(WORKB),A
		LD	C,$003
		LD	DE,FILM_CHR_DATA
		CALL	SMALL_WIND_SUB
;
		LD	E,$000
		LD	A,(PHOTOFG)
SML_WD_OBJ_620
		BIT	0,A
		JR	Z,SML_WD_OBJ_640
		INC	E
SML_WD_OBJ_640
		SRL	A
		AND	A
		JR	NZ,SML_WD_OBJ_620
;
		LD	A,(PHOTOFG+1)
		AND	$00F
SML_WD_OBJ_660
		BIT	0,A
		JR	Z,SML_WD_OBJ_680
		INC	E
SML_WD_OBJ_680
		SRL	A
		AND	A
		JR	NZ,SML_WD_OBJ_660
		LD	D,$000
		SLA	E
		SLA	E
;
		PUSH	HL
		LD	C,$002
		LD	HL,FILM_CNT_DAT
		ADD	HL,DE
		PUSH	HL
		POP	DE
		POP	HL
		CALL	SMALL_WIND_SUB
;
		LD	C,$005
		LD	DE,FILM_CHR_DATA2
		CALL	SMALL_WIND_SUB
;
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ＵＰスクロール							x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
PUSH_MOVE_CNT	EQU	$004
;
ITSEL_A000
		CALL	GAKKI_COL
;
		CALL	SMALL_WIND_OBJ
;
;;;KK;;;		CALL	PWKENDP
;
		LD	A,(KEYA1)
		AND	%01000000	;ＳＥＬＥＣＴキーＯＮ？
		JR	NZ,ITSEL_A500	;	NO --> ITSEL_A500
		LD	A,ITSEL_DOWN
		LD	(ITMODE),A
		JR	ITSEL_A900
;
ITSEL_A500
		LD	A,(PUSH_YCNT)
		SUB	PUSH_MOVE_CNT
;;;;;;;;		CP	PUSH_SEL_Y-16
		CP	PUSH_SEL_Y-24
		JR	NC,ITSEL_A550
		CALL	W_ITMINC
;;;;;;;;		LD	A,PUSH_SEL_Y-16
		LD	A,PUSH_SEL_Y-24
ITSEL_A550
		LD	(PUSH_YCNT),A
;
ITSEL_A900
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	サブウィンド画面表示中						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
ITSEL_B000
		CALL	GAKKI_COL
;
		CALL	SMALL_WIND_OBJ
;
;;;KK;;;		CALL	PWKENDP
;
		LD	A,(KEYA1)
		AND	%01000000	;ＳＥＬＥＣＴキーＯＮ？
		JR	NZ,ITSEL_B900	;	YES --> ITSEL_B900
		CALL	W_ITMINC
;
ITSEL_B900
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ＤＯＷＮスクロール						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
ITSEL_C000
		CALL	GAKKI_COL
;
		CALL	SMALL_WIND_OBJ
;
;;;KK;;;		CALL	PWKENDP
;
		LD	A,(PUSH_YCNT)
		ADD	A,PUSH_MOVE_CNT
		CP	PUSH_SEL_Y
		JR	C,ITSEL_C550
		LD	A,ITSEL_PLAY
		LD	(ITMODE),A
		LD	A,PUSH_SEL_Y
ITSEL_C550
		LD	(PUSH_YCNT),A
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	アイテムセレクト画面 リターン					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
ITSEL_D000
		CALL	PWKENDP
;
		CALL	FDIN
		LD	A,(SBHR)
		CP	$04
;;;;;;;;		JR	NZ,IS_D900
		JP	NZ,IS_D900

		LD	A,$001		;フェードインフラグＯＮ
		LD	(FADEMDFG),A
;
		XOR	A
		LD	(SHOPFG),A	; Shop BG initial !!
		LD	(ZZZFLG),A	;タリン ｚｚｚ セットフラグ
		LD	(SCCH),A
		LD	(SCCV),A
		LD	(ITEMNOT),A
		LD	(WNDFLG),A
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
	LD	A,$2		; (CGB)
	LD	(ITMODE),A
;
	LD	A,(DJFLAG)
	AND	A
	LD	A,DJBST		;ダンジョン内？
	JR	NZ,IS_GRMA01	;	YES --> IS_GRMA01
;
		LD	A,(GRNDPT)
		CP	$064
		JR	NZ,ITSEL_D350
		LD	HL,EBANK0
		LD	(HL),$0A4
		INC	HL
		LD	(HL),$0E5
		INC	HL
		LD	(HL),$082
		INC	HL
		LD	(HL),$0A2
ITSEL_D350
;
	LD	A,GRBST
IS_GRMA01
	LD	(BLNKFG),A
;
	LD	HL,SCRLFG	; Scroll base display reset !
	LD	E,$0
IS_GRMA015
	XOR	A
	LD	(HLI),A
	INC	E
	LD	A,E
	CP	$C
	JR	NZ,IS_GRMA015
;
		LD	A,$80
		LD	(WNDYPS),A
		LD	A,$07
		LD	(WDX),A		; Item window position initial 
;
		LD	A,$08
		LD	(WNDSPD),A	; Item window speed initial
;
		LD	A,$07		;サウンドボリューム戻す
		LD	(SLEVEL),A	;
		LD	A,$70		;
		LD	(SLEVEL+1),A	;
;
		LD	A,(CGBFLG)
		AND	A
		JR	Z,IS_D900
		LD	HL,CGWORK
		LD	C,$080
		DI			;割り込み禁止
IS_D700
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
		JR	NZ,IS_D700
		XOR	A
		LD	(SVBK),A
;
		LD	A,(LCDCB)
		AND	%01111111
		LD	(LCDC),A
;
		LD	A,(DNJNNO)
		CP	NEWDJ		;新ダンジョン？
		JR	NZ,IS_D850	;	NO --> IS_D850
		LD	A,$001
		LD	(BKCHF2),A
;
IS_D850
		LD	A,(LCDCB)
		LD	(LCDC),A
;
		EI			;割り込み許可
;
IS_D900
		RET



;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	アイテムセレクト画面 モードｉｎｃ				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
W_ITMINC
		LD	HL,ITMODE
		INC	(HL)
		RET
;
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	丸虫のＯＡＭデータ				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
MUSI_MOVE_DAT0	;赤虫
	DB	$00,$08,$48,$02,$00,$00,$40,$02,$00,$00,$FF,$FF	;右向き
;
	DB	$00,$08,$4A,$02,$00,$00,$4C,$02,$00,$00,$FF,$FF
;
	DB	$00,$00,$4A,$22,$00,$08,$4C,$22,$00,$08,$FF,$FF	;左向き
;
	DB	$00,$00,$48,$22,$00,$08,$40,$22,$00,$08,$FF,$FF
;
	DB	$00,$0C,$44,$02,$00,$04,$46,$02,$00,$FC,$40,$02	;上向き
;
	DB	$00,$FC,$44,$22,$00,$04,$46,$22,$00,$0C,$40,$22
;
	DB	$00,$FC,$44,$22,$00,$04,$42,$22,$00,$0C,$40,$22	;下向き
;
	DB	$00,$0C,$44,$02,$00,$04,$42,$02,$00,$FC,$40,$02
;
MUSI_MOVE_DAT1	;緑虫
	DB	$00,$08,$48,$00,$00,$00,$40,$00,$00,$00,$FF,$FF	;右向き
;
	DB	$00,$08,$4A,$00,$00,$00,$4C,$00,$00,$00,$FF,$FF
;
	DB	$00,$00,$4A,$20,$00,$08,$4C,$20,$00,$08,$FF,$FF	;左向き
;
	DB	$00,$00,$48,$20,$00,$08,$40,$20,$00,$08,$FF,$FF
;
	DB	$00,$0C,$44,$00,$00,$04,$46,$00,$00,$FC,$40,$00	;上向き
;
	DB	$00,$FC,$44,$20,$00,$04,$46,$20,$00,$0C,$40,$20
;
	DB	$00,$FC,$44,$20,$00,$04,$42,$20,$00,$0C,$40,$20	;下向き
;
	DB	$00,$0C,$44,$00,$00,$04,$42,$00,$00,$FC,$40,$00
;
MUSI_MOVE_DAT2	;青虫
	DB	$00,$08,$48,$03,$00,$00,$40,$03,$00,$00,$FF,$FF	;右向き
;
	DB	$00,$08,$4A,$03,$00,$00,$4C,$03,$00,$00,$FF,$FF
;
	DB	$00,$00,$4A,$23,$00,$08,$4C,$23,$00,$08,$FF,$FF	;左向き
;
	DB	$00,$00,$48,$23,$00,$08,$40,$23,$00,$08,$FF,$FF
;
	DB	$00,$0C,$44,$03,$00,$04,$46,$03,$00,$FC,$40,$03	;上向き
;
	DB	$00,$FC,$44,$23,$00,$04,$46,$23,$00,$0C,$40,$23
;
	DB	$00,$FC,$44,$23,$00,$04,$42,$23,$00,$0C,$40,$23	;下向き
;
	DB	$00,$0C,$44,$03,$00,$04,$42,$03,$00,$FC,$40,$03
;
MUSI_STOP_DAT0	;赤虫
	DB	$00,$00,$4C,$02,$00,$08,$4E,$02,$00,$00,$FF,$02
;
	DB	$00,$00,$4E,$22,$00,$08,$4C,$22,$00,$00,$FF,$02
;
	DB	$00,$00,$50,$02,$00,$08,$5A,$02,$00,$00,$FF,$02
;
	DB	$00,$00,$5A,$22,$00,$08,$50,$22,$00,$00,$FF,$02
;
MUSI_STOP_DAT1	;緑虫
	DB	$00,$00,$4C,$00,$00,$08,$4E,$00,$00,$00,$FF,$00
;
	DB	$00,$00,$4E,$20,$00,$08,$4C,$20,$00,$00,$FF,$00
;
	DB	$00,$00,$50,$00,$00,$08,$5A,$00,$00,$00,$FF,$00
;
	DB	$00,$00,$5A,$20,$00,$08,$50,$20,$00,$00,$FF,$00
;
MUSI_STOP_DAT2	;青虫
	DB	$00,$00,$4C,$03,$00,$08,$4E,$03,$00,$00,$FF,$03
;
	DB	$00,$00,$4E,$23,$00,$08,$4C,$23,$00,$00,$FF,$03
;
	DB	$00,$00,$50,$03,$00,$08,$5A,$03,$00,$00,$FF,$03
;
	DB	$00,$00,$5A,$23,$00,$08,$50,$23,$00,$00,$FF,$03
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	飛んでいるバウンドする敵のデータ		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
FLY_BND_DAT0
		DB	$000,$000,$078,$003
		DB	$000,$008,$07A,$003
		DB	$000,$000,$0FF,$003
		DB	$000,$000,$0FF,$003
;
FLY_BND_DAT1
		DB	$000,$000,$07C,$003
		DB	$000,$008,$07E,$003
		DB	$000,$000,$0FF,$003
		DB	$000,$000,$0FF,$003
;
FLY_BND_DAT2
		DB	$000,$000,$07A,$023
		DB	$000,$008,$078,$023
		DB	$000,$000,$0FF,$003
		DB	$000,$000,$0FF,$003
;
FLY_BND_DAT3
		DB	$000,$000,$07E,$023
		DB	$000,$008,$07C,$023
		DB	$000,$000,$0FF,$003
		DB	$000,$000,$0FF,$003
;
FLY_BND_DAT4
		DB	$0FD,$010,$022,$023
		DB	$0FD,$0FD,$022,$003
		DB	$000,$000,$078,$003
		DB	$000,$008,$07A,$003
;
FLY_BND_DAT5
		DB	$007,$010,$022,$003
		DB	$007,$0FD,$022,$023
		DB	$0FF,$000,$078,$003
		DB	$0FF,$008,$07A,$003
;
FLY_BND_DAT6
		DB	$0FD,$00B,$022,$023
		DB	$0FD,$0F8,$022,$003
		DB	$000,$000,$07A,$023
		DB	$000,$008,$078,$023
;
FLY_BND_DAT7
		DB	$007,$00B,$022,$003
		DB	$007,$0F8,$022,$023
		DB	$0FF,$000,$07A,$023
		DB	$0FF,$008,$078,$023
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ヒノックス(ゴーレムバージョン)のデータ		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
BLK_HINO_DAT0
		DB	$0F4,$0F8,$040,$007
		DB	$0F4,$000,$042,$007
		DB	$0F4,$008,$044,$007
		DB	$0F4,$010,$046,$007
		DB	$004,$0F8,$048,$007
		DB	$004,$000,$04A,$007
		DB	$004,$008,$04C,$007
		DB	$004,$010,$04E,$007
;
BLK_HINO_DAT1
		DB	$0F4,$010,$040,$027
		DB	$0F4,$008,$042,$027
		DB	$0F4,$000,$044,$027
		DB	$0F4,$0F8,$046,$027
		DB	$004,$010,$048,$027
		DB	$004,$008,$04A,$027
		DB	$004,$000,$04C,$027
		DB	$004,$0F8,$04E,$027
;
BLK_HINO_DAT2
		DB	$0F4,$010,$050,$027
		DB	$0F4,$008,$052,$027
		DB	$0F4,$000,$054,$027
		DB	$0F4,$0F8,$056,$027
		DB	$004,$010,$058,$027
		DB	$004,$008,$05A,$027
		DB	$004,$000,$05C,$027
		DB	$004,$0F8,$05E,$027
;
BLK_HINO_DAT3
		DB	$0F4,$0F8,$050,$007
		DB	$0F4,$000,$052,$007
		DB	$0F4,$008,$054,$007
		DB	$0F4,$010,$056,$007
		DB	$004,$0F8,$058,$007
		DB	$004,$000,$05A,$007
		DB	$004,$008,$05C,$007
		DB	$004,$010,$05E,$007
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ニョロスライムのデータ					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
NYORO_SLM_DAT0
	DB	$002,$0FC,$040,$007	;スライム
	DB	$002,$004,$042,$007	;	縮んでいる
	DB	$002,$00C,$040,$027
	DB	$000,$000,$0FF,$000
	DB	$000,$000,$0FF,$000
	DB	$000,$000,$0FF,$000
;
NYORO_SLM_DAT1
	DB	$0F2,$000,$044,$007	;スライム
	DB	$0F2,$008,$044,$027	;	中
	DB	$002,$000,$046,$007
	DB	$002,$008,$046,$027
	DB	$000,$000,$0FF,$000
	DB	$000,$000,$0FF,$000
;
NYORO_SLM_DAT2
	DB	$0F2,$000,$048,$007	;スライム
	DB	$0F2,$008,$048,$027	;	伸びた
	DB	$002,$000,$04A,$007
	DB	$002,$008,$04A,$027
	DB	$000,$000,$0FF,$000
	DB	$000,$000,$0FF,$000
;
NYORO_SLM_DAT4
	DB	$0F2,$000,$04C,$007	;ニョロニョロ
	DB	$0F2,$008,$04C,$027	;	立ち状態
	DB	$002,$0F8,$04E,$007
	DB	$002,$000,$050,$007
	DB	$002,$008,$050,$027
	DB	$002,$010,$04E,$027
;
NYORO_SLM_DAT5
	DB	$0F2,$0FC,$052,$007	;ニョロニョロ
	DB	$0F2,$004,$056,$007	;	右向き
	DB	$0F2,$00C,$05A,$007
	DB	$002,$0FC,$054,$007
	DB	$002,$004,$058,$007
	DB	$002,$00C,$05C,$007
;
NYORO_SLM_DAT6
	DB	$0F2,$0FC,$05A,$027	;ニョロニョロ
	DB	$0F2,$004,$056,$027	;	左向き
	DB	$0F2,$00C,$052,$027
	DB	$002,$0FC,$05C,$027
	DB	$002,$004,$058,$027
	DB	$002,$00C,$054,$027
;
NYORO_SLM_DAT7
	DB	$0F2,$000,$04C,$004	;ニョロニョロ
	DB	$0F2,$008,$04C,$024	;	電撃
	DB	$002,$0F8,$04E,$004
	DB	$002,$000,$050,$004
	DB	$002,$008,$050,$024
	DB	$002,$010,$04E,$024
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	服のダンジョンの妖精のデータ				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
YOUSEI_DAT0
	DB	$0F0,$0FC,$050,$001
	DB	$0F0,$004,$052,$001
	DB	$0F0,$00C,$054,$001
	DB	$000,$0FC,$056,$001
	DB	$000,$004,$058,$001
	DB	$000,$00C,$05A,$001
;
YOUSEI_DAT1
	DB	$0F0,$0FC,$050,$001
	DB	$0F0,$004,$052,$001
	DB	$0F0,$00C,$054,$001
	DB	$000,$0FC,$05C,$001
	DB	$000,$004,$058,$001
	DB	$000,$00C,$05E,$001
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	お助けアイテム(飛んでくる魔法の粉)のデータ		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
FLY_KONA_DAT
	DB	$0F4,$004,$020,$021,$000,$004,$08E,$016
	DB	$0F4,$004,$020,$001,$000,$004,$08E,$016
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	もらった服のデータ					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
GET_FUKU_DATA
	DB	$0F4,$000,$040,$003	;青
	DB	$0F4,$008,$040,$023
;
	DB	$0F4,$000,$040,$002	;赤
	DB	$0F4,$008,$040,$022
;
;
;------------------------------------------------------------------------
		END
;------------------------------------------------------------------------
