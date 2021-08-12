
		onbankgroup

;************************************************************************
;*									*
;*	タイトル    ：	ＣＧＢゼルダ					*
;*	ファイル名  ：	ZCOL.DMG					*
;*	処理内容    ：	カラー転送					*
;*	作成日付    ：  １９９８／０６／０４				*
;*									*
;************************************************************************
;
;==============	バンク０ ================================================
BANK0		GROUP	0
;-------------<	ZCO >----------------------------------------------------
		EXTERN	DATA_MOV,VRAMTR,VRAMTR1
		EXTERN	RBGS
;
;-------------<	ZPL >----------------------------------------------------
		EXTERN	ENDG
;
;==============	バンク１ ================================================
BANK1		GROUP	1
;-------------<	ZTI >----------------------------------------------------
		EXTERN	GPMA
;
;==============	バンク２１ ==============================================
BANK21		GROUP	021h
;-------------<	ZCOLSUB >------------------------------------------------
		extern	CL_OPBKS2
;
;========================================================================
		PUBALL
		NLIST

BANK21		GROUP	$21

		LIB	ZRAM		; RAM ＥＱＵＡＴＥ ファイル
		LIB	ZBN		; BG unit no file !

;------------------------------------------------------------------------
		LIST
		KANJI
		isdmg

		org	04000h

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	カラー転送メイン						x
;x----------------------------------------------------------------------x
;x	    ＥＮＴＲＹ							x
;x		CGDMAF  ： 転送フラグ					x
;x			   10000011					x
;x			   |	 |+----	ＢＧ	BGCOL_BITFG		x
;x			   |	 +-----	ＯＢＪ	OBJCOL_BITFG		x
;x			   +-----------	部分転送			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
COLOR_TRAN
		LD	A,(CGDMAF)
		AND	A		; カラー転送？
		RET	Z		; ＮＯ
;------------------------------------------------------------------------
		BIT	$07,A		; 部分転送？
		JR	NZ,COLOR_TRAN2	; ＹＥＳ
;
;------------------------------------------------------------------------
;	ＢＧカラーデータ転送
;------------------------------------------------------------------------
		AND	BGCOL_BITFG	;ＢＧカラーデータ転送ＯＫ？
		JR	Z,COL_TR_500	;	NO -> COL_TR_500
;
;;;;;;;;		LD	DE,CGWORK
;;;;;;;;		LD	HL,BCPS		; ＢＧ書き込み指定
		ld	hl,CGWORK
		ld	de,BCPS
		CALL	COLOR_TRAN_SUB
;
;------------------------------------------------------------------------
;	ＯＢＪカラーデータ転送
;------------------------------------------------------------------------
COL_TR_500
		LD	A,(CGDMAF)
		AND	OBJCOL_BITFG	;ＯＢＪカラーデータ転送ＯＫ？
		JR	Z,COL_TR_800	;	no -> COL_TR_800
;
;;;;;;;;		LD	DE,CGWORK+$40
;;;;;;;;		LD	HL,OCPS		; ＯＢＪ書き込み指定
		ld	hl,CGWORK+40h
		ld	de,OCPS
		CALL	COLOR_TRAN_SUB
COL_TR_800
		XOR	A
		LD	(CGDMAF),A	; フラグクリア
;------------------------------------------------------------------------
COL_TR_900
		RET

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	カラー転送メイン２（部分転送）					x
;x----------------------------------------------------------------------x
;x	    ＥＮＴＲＹ							x
;x		COLOFS	： 転送オフセット（何パレット目から転送？）	x
;x			   （例）カラーパレットＮＯ．（行） -->  ２	x
;x				 パレットデータＮＯ．（列） -->  ３	x
;x				 ２ｘ４（列）＋３＝１１（０ｂＨ）	x
;x		COLLNG	： 転送長さ（パレット数）			x
;x			    (注）実際の転送量は	転送長さｘ２（バイト）	x
;x		CGDMAF  ： 転送フラグ					x
;x			   00000011					x
;x				 |+----	ＢＧ	BGCOL_BITFG		x
;x				 +-----	ＯＢＪ	OBJCOL_BITFG		x
;x----------------------------------------------------------------------x
;x	 (注）ＢＧとＯＢＪを同時には転送できない			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
COLOR_TRAN2
		LD	A,%10000000	; 自動ｉｎｃ
		LD	HL,COLOFS
		LD	E,(HL)
		SLA	E
		OR	E

		LD	B,A
		LD	A,(CGDMAF)
		AND	BGCOL_BITFG
		LD	A,B		; ＯＢＪカラーデータ転送？
		JR	Z,COL_TR2_010	; ＹＥＳ

		LD	(BCPS),A	; ＢＧ書き込み指定
		LD	BC,BCPD		; ＢＧ側書き込みデータ
		LD	HL,CGWORK
		JR	COL_TR2_020
COL_TR2_010
		LD	(OCPS),A	; ＯＢＪ側書き込み指定
		LD	BC,OCPD		; ＯＢＪ側書き込みデータ
		LD	HL,CGWORK+0040H
;;;;;;		LD	HL,CGWORK
COL_TR2_020
		LD	D,$0
		ADD	HL,DE
		ld	e,c
		ld	d,b
;;;;;;;;		LD	D,H		; 転送元アドレス（ＨＩＧＨ）
;;;;;;;;		LD	E,L		;     ”        （ＬＯＷ）
;;;;;;;;		LD	H,B		; HL <-- BC
;;;;;;;;		LD	L,C
		LD	A,(COLLNG)
		SLA	A
		LD	B,A		; 個数

		CALL	COL_TR_SUB_100	; データ転送

		XOR	A
		LD	(CGDMAF),A	; フラグクリア
		RET

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	カラー転送サブルーチン						x
;x----------------------------------------------------------------------x
;x	  COLOR_TRAN_SUB（転送量固定用 ＢＧ or ＯＢＪ）			x
;x	    ＥＮＴＲＹ							x
;x		ＤＥ    ： 転送元アドレス（ CGWORK or CGWORK+$40 ）	x
;x		ＨＬ    ： 書き込み指定（ BCPS or OCPS ）		x
;x----------------------------------------------------------------------x
;x	  COLOR_TRAN_100（部分転送用）					x
;x	    ＥＮＴＲＹ							x
;x		Ｂ      ： 転送量					x
;x		ＤＥ    ： 転送元アドレス				x
;x		ＨＬ    ： 書き込み指定（ BCPD or OCPD ）		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
COLOR_TRAN_SUB
		LD	B,$40		; パレット数２０ｈ個
		LD	A,%10000000	; 自動ｉｎｃ
;;;;;;;;		LD	(HLI),A
		ld	(de),a
		inc	de
COL_TR_SUB_100
;;;;;;;;		LD	A,(DE)
;;;;;;;;		LD	(HL),A
;;;;;;;;		INC	DE
		ld	a,(hli)
		ld	(de),a
		DEC	B
		JR	NZ,COL_TR_SUB_100

		RET

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	カラーＲＡＭセット						x
;x----------------------------------------------------------------------x
;x	    ＥＮＴＲＹ							x
;x		COLFLG	： パレットＮｏ（ BLNKFG に対応 ）		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
COLOR_SET
		LD	A,(COLFLG)
		AND	A		; ＲＡＭセット？
		RET	Z		; ＮＯ
;------------------------------------------------------------------------
;;;;;;;		CP	RBGST		; １画面セット？
;;;;;;;		JR	Z,ROOM_COL_SET	; ＹＥＳ
		BIT	$07,A		; 特殊セット？
		JP	NZ,SPE_COL_SET	; ＹＥＳ

		LD	HL,COLOR_ADRS
		LD	B,$0
		DEC	A
		SLA	A
		LD	C,A
		ADD	HL,BC
		LD	A,(HLI)		; ＬＯＷ
		LD	C,A
		LD	B,(HL)		; ＨＩＧＨ

		OR	B		; 転送する？
		JR	Z,COL_SET_800	; ＮＯ

		LD	H,B		; 転送元アドレス
		LD	L,C		;     ”

COLOR_SET_100
		LD	DE,CGWORK	; 転送先アドレス
		LD	BC,$0080	; 個数

COLOR_SET_200
		LD	A,(FADEMDFG)
		AND	A		;フェードインする？
		JR	NZ,COL_SET_500	;	YES --> COL_SET_500

		PUSH	BC
		PUSH	DE
		PUSH	HL
		CALL	DATA_MOV	; データ転送
		POP	HL
		POP	DE
		POP	BC
COL_SET_500
		LD	A,$002
		LD	(SVBK),A
		CALL	DATA_MOV	; データ転送
		XOR	A
		LD	(SVBK),A

		LD	A,COLDMA_BITFG
		LD	(CGDMAF),A	; 転送フラグセット
COL_SET_800
		XOR	A
		LD	(COLFLG),A	; フラグクリア
;------------------------------------------------------------------------
COL_SET_900
		RET

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	カラーＲＡＭセット（ 地上、ダンジョン ）			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
GAME_COLOR_SET
;;;;;;		LD	A,(CGBFLG)
;;;;;;		AND	A		; カラーゲームボーイ？
;;;;;;		RET	Z		; ＮＯ
;------------------------------------------------------------------------
		CALL	SPECOL_CHECK	; カラー特殊セットチェック

		LD	A,(CGDMAF)
		LD	B,A
		LD	A,(COLFLG)
		OR	B		; カラー特殊セットする？
		RET	NZ		; ＹＥＳ
;------------------------------------------------------------------------
		CALL	MORI_CHECK	; 迷いの森チェック

		LD	A,(MORIFLG)
		AND	A		; 迷いの森カラーセットする？
		RET	NZ		; ＹＥＳ
;------------------------------------------------------------------------
		LD	A,(ITMODE)
		CP	GPMA		; ゲーム中スクロール？
		JR	Z,GMCOLST_100	; ＹＥＳ

		LD	A,$01		; フェードインフラグＯＮ
		LD	(FADEMDFG),A
GMCOLST_100
		CALL	ROOM_COL_SET	; １画面カラーセット

		XOR	A		; フェードインフラグＯＦＦ
		LD	(FADEMDFG),A
;------------------------------------------------------------------------
		RET

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	カラーＲＡＭセット（１画面専用：COLFLG＝１の場合）		x
;x----------------------------------------------------------------------x
;x	      地上では、スクロール毎にカラーをセット			x
;x	      ダンジョンでは、基本的に入り口のみカラーをセット		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
ROOM_COL_SET
		LD	A,(DJFLAG)
		AND	A		; 地上？
		JR	NZ,ROOM_COL_DNJ	; ＮＯ

;------------------------------------------------------------------------
;	地上
;------------------------------------------------------------------------
		LD	A,(GRNDPT)
		LD	C,A
		LD	B,$0
		LD	HL,GROUND_COLNO
		ADD	HL,BC
		LD	A,(HL)
		SLA	A
		LD	C,A
		LD	HL,GROUND_COL_ADRS
		ADD	HL,BC
		LD	A,(HLI)
		LD	B,(HL)
		LD	H,B		; 転送元アドレス
		LD	L,A		;     ”

;;;;;;;;		CALL	COLOR_SET_100
		call	color_set_kas

;-----<	風見鶏ＯＢＪ用 >-------------------------------------------------

		LD	A,(GRNDPT)
		CP	$92		; 風見鶏エリア？
		RET	NZ		; ＮＯ

		LD	HL,CGWORK+007AH
		LD	A,(CL_CZ_3+003EH)
		LD	(HLI),A		; ＢＧ７－３ → ＯＢＪ７－１
		LD	A,(CL_CZ_3+003FH)
		LD	(HLI),A
		LD	A,(CL_CZ_3+003AH)
		LD	(HLI),A		; ＢＧ７－１ → ＯＢＪ７－２
		LD	A,(CL_CZ_3+003BH)
		LD	(HLI),A	
		LD	A,(CL_CZ_3+0038H)
		LD	(HLI),A		; ＢＧ７－０ → ＯＢＪ７－３
		LD	A,(CL_CZ_3+0039H)
		LD	(HL),A

		RET

;------------------------------------------------------------------------
;	基本ダンジョン
;------------------------------------------------------------------------
ROOM_COL_DNJ
		LD	A,(SCRLMK)
		CP	Muki_inout	; 画面イニシャル？
		RET	NZ		; ＮＯ
RMCL_DNJ_010
		LD	A,(DNJNNO)
		CP	NEWDJ		; 新ダンジョン？
		JR	NZ,RMCL_DNJ_020	;	NO --> RMCL_DNJ_020
		LD	HL,NEW_DJCOL
;;;;;;;;		JP	COLOR_SET_100
		JP	color_set_kas

RMCL_DNJ_020
		CP	DJMAX		; 家ｏｒ洞窟？
		JR	NC,RMCL_DNJ_HUS	; ＹＥＳ

		SLA	A
		LD	E,A
		LD	D,$0
		LD	HL,DUN_COL_ADRS

		LD	A,(YKFLAG)
		AND	A		; 横スクロール画面？
		JR	Z,RMCL_DNJ_050	; ＮＯ

;-----<	レベル８ 横画面２ >----------------------------------------------

		LD	A,(DNJNNO)
		CP	$7		; ＬＥＶＥＬ－８？
		JR	NZ,RMCL_DNJ_040	; ＮＯ

		LD	A,(GRNDPT)
		CP	$64
		JR	Z,RMCL_DNJ_030
		CP	$65
		JR	Z,RMCL_DNJ_030
		CP	$66
		JR	Z,RMCL_DNJ_030
		CP	$67
		JR	Z,RMCL_DNJ_030
		CP	$6A
		JR	Z,RMCL_DNJ_030
		CP	$6B
		JR	NZ,RMCL_DNJ_040
RMCL_DNJ_030
		LD	HL,CL_DUNGEON_8Y2
		JR	RMCL_DNJ_060
RMCL_DNJ_040
		LD	HL,DUN_COL_ADRS_YOKO
RMCL_DNJ_050
		ADD	HL,DE
		LD	A,(HLI)		; ＬＯＷ
		LD	B,(HL)		; ＨＩＧＨ
		LD	H,B		; 転送元アドレス
		LD	L,A		;     ”
RMCL_DNJ_060
;;;;;;;;		JP	COLOR_SET_100
		jr	color_set_kas

;------------------------------------------------------------------------
;	家、洞窟
;------------------------------------------------------------------------
RMCL_DNJ_HUS
;;;;;;		LD	A,(DNJNNO)
		CP	$10
		JR	NZ,RMCL_HUS_100
		LD	A,(GRNDPT)
		CP	$A3		; マリンの家？
		JR	NZ,RMCL_HUS_100	; ＮＯ
		LD	A,(PAPA0FG)
		CP	$001		;タリン寝てる？
		JR	Z,RMCL_HUS_080	;	YES --> RMCL_HUS_080
		CP	$002		;タリン寝てる？
		JR	Z,RMCL_HUS_080	;	YES --> RMCL_HUS_080
		LD	A,(TATLEV)
		AND	A		; 盾もらった？
		JR	NZ,RMCL_HUS_100	; ＹＥＳ
RMCL_HUS_070
		LD	HL,CL_UNASARE
		JR	RMCL_HUS_200
RMCL_HUS_080
		LD	HL,CL_NERUTARIN
		JR	RMCL_HUS_200

RMCL_HUS_100
;;;;;;;		LD	A,(DNJNNO)
;;;;;;;		CP	$13
;;;;;;;		JR	NZ,RMCL_HUS_150
;;;;;;;		LD	A,(GRNDPT)
;;;;;;;		CP	$aa
;;;;;;;		JR	NZ,RMCL_HUS_150
;;;;;;;
;;;;;;;		LD	HL,CL_ONEMUTYPE0
;;;;;;;		LD	A,(CLOTHFG)
;;;;;;;		AND	A		; リンクが着ている服は緑？
;;;;;;;		JR	Z,RMCL_HUS_200	; ＹＥＳ
;;;;;;;
;;;;;;;		LD	HL,CL_ONEMUTYPE0_red	; 赤
;;;;;;;		CP	1
;;;;;;;		JR	Z,RMCL_HUS_200
;;;;;;;
;;;;;;;		LD	HL,CL_ONEMUTYPE0_blue	; 青
;;;;;;;		JR	RMCL_HUS_200

RMCL_HUS_150
		LD	A,(DNJNNO)
		SUB	DJMAX
		SLA	A
		LD	E,A
		LD	D,$0
		LD	HL,HOUSE_CLNO_ADRS
		ADD	HL,DE
		LD	A,(HLI)
		LD	B,(HL)
		LD	H,B
		LD	L,A

		LD	A,(GRNDPT)
		LD	E,A
		LD	D,$0
		ADD	HL,DE
		LD	A,(HL)
		SLA	A
		LD	E,A
		LD	HL,HOUSE_COL_ADRS
		ADD	HL,DE
		LD	A,(HLI)		; ＬＯＷ
		LD	B,(HL)		; ＨＩＧＨ
		LD	H,B		; 転送元アドレス
		LD	L,A		;     ”
RMCL_HUS_200
;------------------------------------------------------------------------
color_set_kas
;;;;;;;;		JP	COLOR_SET_100
		ld	a,(FADEMDFG)
		and	a
		jr	nz,col_kas_050
;
		push	hl
;
		ld	bc,0040h
		ld	de,CGWORK
		call	DATA_MOV
;
		push	hl
		ld	hl,obj_col
		ld	bc,4*6*2
		call	DATA_MOV
		pop	hl
;
		ld	bc,4*2*2
		call	DATA_MOV
;
		pop	hl
;
col_kas_050
		ld	bc,0040h
		ld	de,CGWORK
;
		ld	a,002
		ld	(SVBK),a
		call	DATA_MOV
;
		push	hl
		ld	hl,obj_col
		ld	bc,4*6*2
		call	DATA_MOV
		pop	hl
;
		ld	bc,4*2*2
		call	DATA_MOV
;
		xor	a
		ld	(SVBK),a
;
;------------------------------------------------------------------------
;		大鷲の塔 ＯＢＪカラー入れ替え
;------------------------------------------------------------------------
		ld	a,(DJFLAG)
		and	a
;;;;;;;		jr	nz,col_kas_end
		jr	nz,col_kas_200
;
		ld	a,(GRNDPT)
		cp	00eh
		jr	nz,col_kas_end
;
		ld	hl,obj_col_1
		ld	de,CGWORK+040h+(5*4*2)
		ld	c,1*4*2
;
col_kas_100
		ld	a,(FADEMDFG)
		and	a
		jr	nz,col_kas_150
;
		ld	a,(hl)
		ld	(de),a
;
col_kas_150
		ld	a,002
		ld	(SVBK),a
		ld	a,(hli)
		ld	(de),a
		inc	de
		xor	a
		ld	(SVBK),a
		dec	c
		jr	nz,col_kas_100
;
		JR	col_kas_end
;
;------------------------------------------------------------------------
;		眠い洞窟 ＯＢＪカラー入れ替え
;------------------------------------------------------------------------
col_kas_200
		ld	a,(GRNDPT)
		cp	$aa
		jr	nz,col_kas_end
;
		LD	A,(CLOTHFG)
		AND	A			; リンクが着ている服は緑？
		JR	Z,col_kas_end		; ＹＥＳ
;
		LD	HL,Nemu_link_red	; 赤
		CP	1
		JR	Z,col_kas_210
;
		LD	HL,Nemu_link_blue	; 青
col_kas_210
		LD	C,$2			; １パレット
		ld	de,CGWORK+07ch		; ７－２
col_kas_220
;
		ld	a,(FADEMDFG)
		and	a
		jr	nz,col_kas_250
;
		ld	a,(hl)
		ld	(CGWORK+07ch),a
;
col_kas_250
		ld	a,002
		ld	(SVBK),a
		ld	a,(hli)
		ld	(de),a
		inc	de
		xor	a
		ld	(SVBK),a
		dec	c
		jr	nz,col_kas_220
;------------------------------------------------------------------------
col_kas_end
		ld	a,COLDMA_BITFG
		ld	(CGDMAF),a
		XOR	A
		LD	(COLFLG),A	; フラグクリア
		ret

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	カラーＲＡＭセット（特殊セット COLFLG＝$80 以上の場合）		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
SPE_COL_SET
		LD	A,BGCOL_BITFG	; 転送フラグセット（ＢＧのみ）
		LD	(CGDMAF),A
		LD	HL,SPE_COL_ADRS
		LD	A,(COLFLG)
		AND	%00111111
		SLA	A
		LD	C,A
		LD	B,$0
		ADD	HL,BC
		LD	A,(HLI)		; ＬＯＷ
		LD	B,(HL)		; ＨＩＧＨ
		LD	H,B		; 転送元アドレス
		LD	L,A		;     ”
		LD	DE,CGWORK	; 転送先アドレス
		LD	BC,$0040	; 個数
;
		LD	A,(GMMODE)
		CP	ENDG		; エンディング？
		JR	Z,SPE_COL_300	; ＹＥＳ

		LD	A,(COLFLG)
		BIT	$06,A		; ＯＢＪ転送？
		JR	Z,SPE_COL_200	; ＮＯ

		ADD	HL,BC
		LD	BC,$0010	; 個数（６，７のみ）
;1998/10/10;		LD	DE,CGWORK+$0040
		LD	DE,CGWORK+$0070
		LD	A,OBJCOL_BITFG	; 転送フラグセット（ＯＢＪのみ）
		LD	(CGDMAF),A
SPE_COL_200
;;;;;;;		CALL	COLOR_SET_200
		CALL	DATA_MOV	; データ転送

		XOR	A
		LD	(COLFLG),A	; フラグクリア
		RET

;------------------------------------------------------------------------
;	エンディング
;------------------------------------------------------------------------
SPE_COL_300
		LD	A,$002
		LD	(SVBK),A
		CALL	DATA_MOV	; データ転送
		XOR	A
		LD	(SVBK),A

		LD	A,BGCOL_BITFG	; 転送フラグセット（ＢＧのみ）
		LD	(CGDMAF),A	; 転送フラグセット
		XOR	A
		LD	(COLFLG),A	; フラグクリア
		RET

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	カラーデータ アドレステーブル（ 地上 ）				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
GROUND_COL_ADRS
c_cz_0		DW	CL_CZ_0		; (00) cz0.col
c_cz_1		DW	CL_CZ_1		; (01) cz1.col
c_cz_2		DW	CL_CZ_2		; (02) cz2.col
c_cz_3		DW	CL_CZ_3		; (03) cz3.col
c_cz_7		DW	CL_CZ_7		; (04) cz7.col
c_cz_2a		DW	CL_CZ_2a	; (05) cz2a.col
c_cz_4		DW	CL_CZ_4		; (06) cz4.col
c_cz_c		DW	CL_CZ_c		; (07) czc.col
c_cz_ca		DW	CL_CZ_ca	; (08) czca.col
c_cz_d		DW	CL_CZ_d		; (09) czd.col
c_cz_11		DW	CL_CZ_11	; (0a) cz11.col
c_cz_3a		DW	CL_CZ_3a	; (0b) cz3a.col
c_cz_6		DW	CL_CZ_6		; (0c) cz6.col
c_cz_6a		DW	CL_CZ_6a	; (0d) cz6a.col
c_cz_b		DW	CL_CZ_b		; (0e) czb.col
c_00col		DW	CL_00_COL	; (0f) 00col.col
c_10col		DW	CL_10_COL	; (10) 10col.col
c_cz_9		DW	CL_CZ_9		; (11) cz9.col
c_cz_5		DW	CL_CZ_5		; (12) cz5.col
c_06col		DW	CL_06_COL	; (13) 06col.col
c_07col		DW	CL_07_COL	; (14) 07col.col
c_08col		DW	CL_08_COL	; (15) 08col.col
c_0ecol		DW	CL_0e_COL	; (16) 0ecol.col
c_2bcol		DW	CL_2b_COL	; (17) 2bcol.col
c_cz_1a		DW	CL_CZ_1a	; (18) cz1a.col
c_K10col	DW	CL_K10_COL	; (19) 10col.col
c_cz_4a		DW	CL_CZ_4a	; (1A) cz4.col
c_cz_3b		DW	CL_CZ_3b	; (1B) cz3a.col(動物村のヤッホーオバさん)
c_cz_e		DW	CL_CZ_e		; (1C) czd.col(人魚のところ)
c_cz_5a		DW	CL_CZ_5a	; (1D) cz5a.col
c_ururira	DW	CL_CZ_URURIRA	; (1E) うるりらジーさんの家の前

CZ0		EQU	(c_cz_0-GROUND_COL_ADRS)/2
CZ1		EQU	(c_cz_1-GROUND_COL_ADRS)/2
CZ2		EQU	(c_cz_2-GROUND_COL_ADRS)/2
CZ3		EQU	(c_cz_3-GROUND_COL_ADRS)/2
CZ7		EQU	(c_cz_7-GROUND_COL_ADRS)/2
C2a		EQU	(c_cz_2a-GROUND_COL_ADRS)/2
CZ4		EQU	(c_cz_4-GROUND_COL_ADRS)/2
CZc		EQU	(c_cz_c-GROUND_COL_ADRS)/2
Cca		EQU	(c_cz_ca-GROUND_COL_ADRS)/2
CZd		EQU	(c_cz_d-GROUND_COL_ADRS)/2
C11		EQU	(c_cz_11-GROUND_COL_ADRS)/2
C3a		EQU	(c_cz_3a-GROUND_COL_ADRS)/2
CZ6		EQU	(c_cz_6-GROUND_COL_ADRS)/2
C6a		EQU	(c_cz_6a-GROUND_COL_ADRS)/2
CZb		EQU	(c_cz_b-GROUND_COL_ADRS)/2
r00		EQU	(c_00col-GROUND_COL_ADRS)/2
r10		EQU	(c_10col-GROUND_COL_ADRS)/2
CZ9		EQU	(c_cz_9-GROUND_COL_ADRS)/2
CZ5		EQU	(c_cz_5-GROUND_COL_ADRS)/2
r06		EQU	(c_06col-GROUND_COL_ADRS)/2
r07		EQU	(c_07col-GROUND_COL_ADRS)/2
r08		EQU	(c_08col-GROUND_COL_ADRS)/2
r0e		EQU	(c_0ecol-GROUND_COL_ADRS)/2
r2b		EQU	(c_2bcol-GROUND_COL_ADRS)/2
C1a		EQU	(c_cz_1a-GROUND_COL_ADRS)/2
k10		EQU	(c_K10col-GROUND_COL_ADRS)/2
C4a		EQU	(c_cz_4a-GROUND_COL_ADRS)/2
C3b		EQU	(c_cz_3b-GROUND_COL_ADRS)/2
CZe		EQU	(c_cz_e-GROUND_COL_ADRS)/2
C5a		EQU	(c_cz_5a-GROUND_COL_ADRS)/2
CB1		EQU	(c_ururira-GROUND_COL_ADRS)/2

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	地上 カラーＮｏ（ GRNDPT に対応 ）				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
GROUND_COLNO	;	  0   1   2   3   4   5   6   7   8   9   a   b   c   d   e   f
		DB	r00,r00,r00,r00,r00,r00,r06,r07,r07,r08,r08,r08,r08,r08,r0e,r0e	; (00)
		DB	k10,k10,r00,r00,r00,r00,r06,r07,r08,r08,r08,r08,r08,r08,r0e,r0e	; (10)
		DB	CZc,r10,CZb,CZb,CZb,CZb,CZb,Cca,Cca,Cca,Cca,r2b,CZ9,CZ9,Cca,Cca	; (20)
		DB	CZ3,CZb,CZb,CZb,CZb,CZb,CZc,CZc,Cz4,Cca,Cca,Cca,CZ9,CZ9,Cca,Cca	; (30)
		DB	CZ0,CZ0,CZ0,CZ0,CZc,CZc,CZc,CZc,CZ4,CZ4,CZ4,CZ4,CZ9,CZ9,CZ9,CZ9	; (40)
		DB	CZ0,CZ0,CZ0,CZ0,CZc,CZc,CZc,CZc,CZ4,CZ4,CZ4,CZ4,CZ9,CZ9,CZ9,CZ9	; (50)
		DB	CZ0,CZ0,CZ0,CZ0,CZc,CZc,CZc,CZc,CZ4,CZ4,CZ4,CZ4,CZ9,CZ9,CZ9,CZ9	; (60)
		DB	CZ0,CZ0,CZ0,CZ0,Cca,Cca,CZc,CZc,CZ4,CZ4,CZ4,C4a,CZ9,CZ9,CZ9,CZ9	; (70)
;			  0   1   2   3   4   5   6   7   8   9   a   b   c   d   e   f
		DB	CZ0,CZ3,CZ3,CZ3,CZ3,Cca,C2a,C2a,CZd,CZ4,C11,C11,C5a,C5a,C3a,CZ9	; (80)
		DB	CZ3,CZ3,CZ3,CZ3,CZ7,CZ7,C2a,C2a,CZd,CZd,C11,C11,C5a,C5a,C3a,C3a	; (90)
		DB	CZ3,CZ3,CZ3,CZ3,CZ7,CZ7,CZ7,CZ7,CZd,CZd,CZd,CZd,CZ5,CZ5,CZ5,CZ5	; (a0)
		DB	CZ3,CB1,CZ3,CZ3,CZ7,CZ7,CZ7,CZ7,CZd,CZd,CZd,CZd,CZ5,CZ5,CZ5,CZ5	; (b0)
		DB	CZ3,CZ3,CZ2,CZ2,CZ7,CZ7,CZ7,CZ7,CZd,CZe,CZd,CZd,C3a,C3b,CZ6,CZ6	; (c0)
		DB	CZ3,CZ3,CZ2,CZ2,CZ7,CZ7,CZ7,CZ7,CZd,CZd,CZd,CZd,C3a,C3a,CZ6,CZ6	; (d0)
		DB	CZ1,CZ1,CZ1,C1a,C1a,CZ1,CZd,CZd,CZd,CZd,CZd,CZd,C3a,C3a,C6a,C6a	; (e0)
		DB	CZ1,CZ1,CZ1,CZ1,CZ1,CZ1,CZd,CZd,CZd,CZd,CZd,CZd,C3a,C6a,C6a,C6a	; (f0)

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	カラーデータ アドレステーブル（ ダンジョン ）			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
DUN_COL_ADRS
		DW	CL_DUNGEON_1_0	; (0) ＬＥＶＥＬ１
		DW	CL_DUNGEON_2	; (1)     ”    ２
		DW	CL_DUNGEON_3_3	; (2)     ”    ３
		DW	CL_DUNGEON_4	; (3)     ”    ４
		DW	CL_DUNGEON_5_0	; (4)     ”    ５
		DW	CL_DUNGEON_6	; (5)     ”    ６
		DW	CL_DUNGEON_7_2	; (6)     ”    ７
		DW	CL_DUNGEON_8	; (7)     ”    ８
		DW	CL_DUNGEON_EGG	; (8) せいなるタマゴ

DUN_COL_ADRS_YOKO
		DW	CL_DUNGEON_1Y	; (0) ＬＥＶＥＬ１ 横スクロール
		DW	CL_DUNGEON_2Y	; (1)     ”    ２     ”
		DW	CL_DUNGEON_3Y	; (2)     ”    ３     ”
		DW	CL_DUNGEON_4Y	; (3)     ”    ４     ”
		DW	CL_DUNGEON_5Y	; (4)     ”    ５     ”
		DW	CL_DUNGEON_6Y	; (5)     ”    ６     ”
		DW	CL_DUNGEON_7_1	; (6)     ”    ７     ”
		DW	CL_DUNGEON_8Y	; (7)     ”    ８     ”
		DW	CL_DUNGEON_EGG	; (8) せいなるタマゴ（ダミー）


;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	カラーＮｏデータ アドレステーブル（ 家、洞窟 ）			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
HOUSE_CLNO_ADRS				; DNJNNO
		DW	HOUSE_COLNO_0A	; (0A)
		DW	$0000		; (0B)
		DW	$0000		; (0C)
		DW	$0000		; (0D)
		DW	HOUSE_COLNO_0E	; (0E)
		DW	HOUSE_COLNO_0F	; (0F)
		DW	HOUSE_COLNO_10	; (10)
		DW	HOUSE_COLNO_11	; (11)
		DW	HOUSE_COLNO_12	; (12)
		DW	HOUSE_COLNO_13	; (13)
		DW	HOUSE_COLNO_14	; (14)
		DW	HOUSE_COLNO_15	; (15)
		DW	HOUSE_COLNO_16	; (16)
		DW	$0000		; (17)
		DW	$0000		; (18)
		DW	$0000		; (19)
		DW	$0000		; (1A)
		DW	$0000		; (1B)
		DW	$0000		; (1C)
		DW	HOUSE_COLNO_1D	; (1D)
		DW	HOUSE_COLNO_1E	; (1E)
		DW	HOUSE_COLNO_1F	; (1F)

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	カラーデータアドレス テーブル（ 家、洞窟 ）			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
HOUSE_COL_ADRS
c_turi		DW	CL_TURI		; ( 0) 釣り堀、マンボためごろう
c_idotype0	DW	CL_IDOTYPE0	; ( 1) 井戸型 タイプ０
c_idotype1	DW	CL_IDOTYPE1	; ( 2)   ”   タイプ１
c_idotype2	DW	CL_IDOTYPE2	; ( 3)   ”   タイプ２
c_idotype3	DW	CL_IDOTYPE3	; ( 4)   ”   タイプ３
c_moriburin	DW	CL_MORIBURIN	; ( 5) モリブリンのアジト
c_ietype0	DW	CL_IETYPE0	; ( 6) 家型 タイプ０
c_ietype1	DW	CL_IETYPE1	; ( 7)   ” タイプ１
c_ietype2	DW	CL_IETYPE2	; ( 8)   ” タイプ２
c_ietype3	DW	CL_IETYPE3	; ( 9)   ” タイプ３
c_ietype4	DW	CL_IETYPE4	; ( a)   ” タイプ４
c_ietype5	DW	CL_IETYPE5	; ( b)   ” タイプ５
c_ietype6	DW	CL_IETYPE6	; ( c)   ” タイプ６
c_ietype7	DW	CL_IETYPE7	; ( d)   ” タイプ７
c_ietype8	DW	CL_IETYPE8	; ( e)   ” タイプ８
c_ietype9	DW	CL_IETYPE9	; ( f)   ” タイプ９
c_ietypeA	DW	CL_IETYPEA	; (10)   ” タイプＡ
c_ietypeB	DW	CL_IETYPEB	; (11)   ” タイプＢ
c_ietypeC	DW	CL_IETYPEC	; ( 7)   ” タイプ１(４っ子の母親)
c_ietypeD	DW	CL_IETYPED	; ( c)   ” タイプ６(おしゃれワンワン)
c_ietypeE	DW	CL_IETYPEE	; ( 7)   ” タイプ１(バナナ屋)
c_ietypeF	DW	CL_IETYPEF	; ( 7)   ” タイプ１(クリスティーヌの家)
c_shiro0	DW	CL_SHIROTYPE0	; (12) カナレット城
c_shiro1	DW	CL_SHIROTYPE1	; (13) カナレット城
c_onemu0	DW	CL_ONEMUTYPE0	; (14) 眠い洞窟
c_onemu1	DW	CL_ONEMUTYPE1	; (15) 眠い洞窟
c_kao		DW	CL_DUNGEON_6	; (16) 神殿の南
c_camera	DW	CL_CAMERA	; (17) カメラ屋
c_turi2		DW	CL_TURI2	; (18) 橋の下の釣りオヤジ
c_idotype4	DW	CL_IDOTYPE4	; (19) 風見鶏の地下
c_idotype5	DW	CL_IDOTYPE5	; (1A) 井戸型 タイプ０(見通しレンズ)
c_idotype6	DW	CL_IDOTYPE6	; (1B)   ”   タイプ２(子悪魔部屋)
c_yume		DW	CL_YUMENOHOKORA	; (1C) 夢のほこら
c_manbou	DW	CL_MANBOU	; (1D) マンボウの洞窟
c_manuuu	DW	CL_MANUUUU	; (1E) マムーの洞窟

TUR		EQU	(c_turi-HOUSE_COL_ADRS)/2
TY0		EQU	(c_idotype0-HOUSE_COL_ADRS)/2
TY1		EQU	(c_idotype1-HOUSE_COL_ADRS)/2
TY2		EQU	(c_idotype2-HOUSE_COL_ADRS)/2
TY3		EQU	(c_idotype3-HOUSE_COL_ADRS)/2
MOR		EQU	(c_moriburin-HOUSE_COL_ADRS)/2
HT0		EQU	(c_ietype0-HOUSE_COL_ADRS)/2
HT1		EQU	(c_ietype1-HOUSE_COL_ADRS)/2
HT2		EQU	(c_ietype2-HOUSE_COL_ADRS)/2
HT3		EQU	(c_ietype3-HOUSE_COL_ADRS)/2
HT4		EQU	(c_ietype4-HOUSE_COL_ADRS)/2
HT5		EQU	(c_ietype5-HOUSE_COL_ADRS)/2
HT6		EQU	(c_ietype6-HOUSE_COL_ADRS)/2
HT7		EQU	(c_ietype7-HOUSE_COL_ADRS)/2
HT8		EQU	(c_ietype8-HOUSE_COL_ADRS)/2
HT9		EQU	(c_ietype9-HOUSE_COL_ADRS)/2
HTA		EQU	(c_ietypeA-HOUSE_COL_ADRS)/2
HTB		EQU	(c_ietypeB-HOUSE_COL_ADRS)/2
HTC		EQU	(c_ietypeC-HOUSE_COL_ADRS)/2
HTD		EQU	(c_ietypeD-HOUSE_COL_ADRS)/2
HTE		EQU	(c_ietypeE-HOUSE_COL_ADRS)/2
HTF		EQU	(c_ietypeF-HOUSE_COL_ADRS)/2
SH0		EQU	(c_shiro0-HOUSE_COL_ADRS)/2
SH1		EQU	(c_shiro1-HOUSE_COL_ADRS)/2
ON0		EQU	(c_onemu0-HOUSE_COL_ADRS)/2
ON1		EQU	(c_onemu1-HOUSE_COL_ADRS)/2
KAO		EQU	(c_kao-HOUSE_COL_ADRS)/2
CMR		EQU	(c_camera-HOUSE_COL_ADRS)/2
TR2		EQU	(c_turi2-HOUSE_COL_ADRS)/2
TY4		EQU	(c_idotype4-HOUSE_COL_ADRS)/2
TY5		EQU	(c_idotype5-HOUSE_COL_ADRS)/2
TY6		EQU	(c_idotype6-HOUSE_COL_ADRS)/2
YUM		EQU	(c_yume-HOUSE_COL_ADRS)/2
MNB		EQU	(c_manbou-HOUSE_COL_ADRS)/2
MMU		EQU	(c_manuuu-HOUSE_COL_ADRS)/2

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	家、洞窟 カラーＮｏ（ DNJNNO = 0A  GRNDPT に対応 ）		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
HOUSE_COLNO_0A	;	  0   1   2   3   4   5   6   7
		;	  8   9   a   b   c   d   e   f
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (00)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (10)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (20)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (30)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (40)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (50)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (60)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (70)
		DB	$00,$00,TY0,TY0,TY0,TY0,TY0,$00
		DB	TY0,TY0,TY0,TY0,TY0,TY0,TY0,TY0	; (80)
		DB	TY0,TY0,TY0,TY0,TY0,TY0,TY0,$00
		DB	TY0,TY0,TY0,TY0,TY0,TY0,TY0,TY5	; (90)
		DB	TY5,$00,TY0,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,TY0,$00,$00,$00	; (a0)
		DB	$00,$00,$00,TY1,TY1,$00,TY0,TY0
		DB	$00,$00,$00,TY1,TY1,TY0,TY1,TY1	; (b0)
		DB	TY0,TY0,TY0,TY0,TY0,TY1,$00,$00
		DB	$00,$00,$00,$00,$00,TY1,$00,$00	; (c0)
		DB	TY0,TY0,TY0,$00,$00,TY0,$00,$00
		DB	TY0,TY0,$00,$00,$00,$00,$00,$00	; (d0)
		DB	TY0,$00,$00,$00,$00,$00,TY0,TY0
		DB	TY2,TY2,TY3,$00,TY0,TY0,TY0,TY0	; (e0)
		DB	$00,TY0,TY0,TY0,TY0,TY0,TY0,TY0
		DB	TY3,TY0,TY0,TY0,TY0,TY0,TY0,TY0	; (f0)
		DB	TY0,TY0,TY0,TY0,TY0,MNB,TY0,$00

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	家、洞窟 カラーＮｏ（ DNJNNO = 0E  GRNDPT に対応 ）		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
HOUSE_COLNO_0E	;	  0   1   2   3   4   5   6   7
		;	  8   9   a   b   c   d   e   f
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (00)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (10)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (20)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (30)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (40)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (50)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (60)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (70)
		DB	$00,$00,TY0,TY0,TY0,TY0,TY0,$00
		DB	TY0,TY0,TY0,TY0,TY0,TY0,TY0,TY0	; (80)
		DB	TY0,TY0,TY0,TY0,TY0,TY0,TY0,$00
		DB	TY0,TY0,TY0,TY0,TY0,TY0,TY0,TY0	; (90)
		DB	TY0,$00,$00,$00,$00,$00,$00,$00
		DB	$00,HT2,HT9,$00,TY0,$00,$00,$00	; (a0)
		DB	$00,$00,$00,TY1,TY1,HT8,TY0,TY0
		DB	$00,$00,$00,TY0,$00,TY0,TY0,TY0	; (b0)
		DB	TY0,TY0,TY0,TY0,TY0,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (c0)
		DB	TY0,TY0,TY0,$00,$00,TY0,$00,$00
		DB	TY0,TY0,$00,$00,$00,$00,$00,$00	; (d0)
		DB	TY0,$00,$00,$00,$00,$00,TY0,TY0
		DB	TY2,TY2,TY3,$00,TY0,TY0,TY0,TY0	; (e0)
		DB	$00,TY0,TY0,$00,TY0,TY0,TY0,TY0
		DB	TY3,TY0,TY0,$00,TY0,TY0,TY0,TY0	; (f0)
		DB	TY0,TY0,$00,TY0,TY0,TY0,TY0,$00

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	家、洞窟 カラーＮｏ（ DNJNNO = 0F  GRNDPT に対応 ）		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
HOUSE_COLNO_0F	;	  0   1   2   3   4   5   6   7
		;	  8   9   a   b   c   d   e   f
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (00)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (10)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (20)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (30)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (40)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (50)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (60)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (70)
		DB	$00,$00,TY0,TY0,TY0,TY0,TY0,$00
		DB	TY0,TY0,TY0,TY0,TY0,TY0,TY0,TY0	; (80)
		DB	TY0,TY0,TY0,TY0,TY0,TY0,TY0,$00
		DB	TY0,TY0,TY0,TY0,TY0,TY0,TY0,TY0	; (90)
		DB	TY0,$00,$00,$00,$00,$00,$00,$00
		DB	HT3,$00,$00,$00,TY0,$00,$00,$00	; (a0)
		DB	$00,$00,$00,TY1,TY1,$00,TY0,TY0
		DB	$00,TUR,$00,TY0,$00,TY0,TY0,TY0	; (b0)
		DB	TY0,TY0,TY0,TY0,TY0,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (c0)
		DB	TY0,TY0,TY0,$00,$00,TY0,$00,$00
		DB	TY0,TY0,$00,$00,$00,$00,$00,$00	; (d0)
		DB	TY0,$00,$00,$00,$00,$00,TY0,TY0
		DB	TY2,TY2,TY3,$00,TY0,TY0,TY0,TY0	; (e0)
		DB	$00,TY0,TY0,$00,TY0,TY0,TY0,TY0
		DB	TY3,TY0,TY0,$00,TY0,TR2,TY0,TY0	; (f0)
		DB	TY0,TY0,$00,TY0,TY0,TY0,TY0,$00

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	家、洞窟 カラーＮｏ（ DNJNNO = 10  GRNDPT に対応 ）		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
HOUSE_COLNO_10	;	  0   1   2   3   4   5   6   7
		;	  8   9   a   b   c   d   e   f
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (00)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (10)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (20)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (30)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (40)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (50)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (60)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (70)
		DB	$00,$00,TY0,TY0,TY0,TY0,TY0,$00
		DB	TY0,TY0,TY0,TY0,TY0,TY0,TY0,TY0	; (80)
		DB	TY0,TY0,TY0,TY0,TY0,TY0,TY0,$00
		DB	TY0,TY0,TY0,TY0,TY0,TY0,TY0,TY0	; (90)
		DB	TY0,HT4,$00,HT4,HT4,HT4,$00,HT7
		DB	$00,$00,$00,HT0,TY0,HTC,HTC,HT6	; (a0)
		DB	HT7,HT5,$00,TY1,TY1,$00,TY0,TY0
		DB	HT4,$00,HTD,TY0,HT4,CMR,TY0,TY0	; (b0)
		DB	TY0,TY0,TY0,TY0,TY0,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,HT0	; (c0)
		DB	TY0,TY0,TY0,HT4,HT4,TY0,$00,$00
		DB	TY0,TY0,$00,$00,$00,$00,$00,HTB	; (d0)
		DB	TY0,HTF,HT7,HT1,HT1,HTA,TY0,TY0
		DB	TY2,TY2,TY3,HT4,TY0,TY0,TY0,TY0	; (e0)
		DB	$00,ON1,TY0,$00,TY0,TY0,TY0,TY0
		DB	TY3,TY0,TY0,$00,TY0,TY0,TY0,TY0	; (f0)
		DB	TY0,TY0,$00,TY0,TY0,TY0,HTE,$00

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	家、洞窟 カラーＮｏ（ DNJNNO = 11  GRNDPT に対応 ）		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
HOUSE_COLNO_11	;	  0   1   2   3   4   5   6   7
		;	  8   9   a   b   c   d   e   f
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (00)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (10)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (20)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (30)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (40)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (50)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (60)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (70)
		DB	$00,$00,TY0,TY0,TY0,TY0,TY0,$00
		DB	TY0,TY0,TY0,TY0,TY0,TY0,TY0,TY0	; (80)
		DB	TY0,TY0,TY0,TY0,TY0,TY0,TY0,$00
		DB	TY0,TY0,TY0,TY0,TY0,TY0,TY0,TY0	; (90)
		DB	TY0,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,TY0,$00,$00,$00	; (a0)
		DB	$00,$00,$00,TY1,TY1,$00,TY0,TY0
		DB	$00,$00,$00,TY0,$00,TY0,TY0,TY0	; (b0)
		DB	TY0,TY0,TY0,TY0,TY0,$00,$00,$00
		DB	TUR,TUR,$00,$00,$00,$00,$00,$00	; (c0)
		DB	TY0,TY0,TY0,$00,$00,TY0,$00,$00
		DB	TY0,TY0,$00,$00,$00,$00,$00,$00	; (d0)
		DB	TY0,$00,$00,$00,$00,$00,TY0,TY0
		DB	TY2,TY2,TY3,$00,TY0,TY0,TY0,TY0	; (e0)
		DB	$00,TY0,TY0,$00,TY0,TY0,TY0,TY0
		DB	TY3,TY0,TY0,$00,TY0,TY0,TY0,TY0	; (f0)
		DB	TY0,TY0,$00,MMU,TY0,TY0,TY0,$00

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	家、洞窟 カラーＮｏ（ DNJNNO = 12  GRNDPT に対応 ）		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
HOUSE_COLNO_12	;	  0   1   2   3   4   5   6   7
		;	  8   9   a   b   c   d   e   f
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (00)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (10)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (20)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (30)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (40)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (50)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (60)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (70)
		DB	$00,$00,TY0,TY0,TY0,TY0,TY0,$00
		DB	TY0,TY0,TY0,TY0,TY0,TY0,TY0,TY0	; (80)
		DB	TY0,TY0,TY0,TY0,TY0,TY0,TY0,$00
		DB	TY0,TY0,TY0,TY0,TY0,TY0,TY0,TY0	; (90)
		DB	TY0,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,TY0,$00,$00,$00	; (a0)
		DB	$00,$00,$00,TY1,TY1,$00,TY0,TY0
		DB	$00,$00,HTD,TY0,$00,TY0,TY0,TY0	; (b0)
		DB	TY0,TY0,TY0,TY0,TY0,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (c0)
		DB	TY0,TY0,TY0,$00,$00,TY0,$00,$00
		DB	TY0,TY0,$00,$00,$00,$00,$00,$00	; (d0)
		DB	TY0,$00,$00,$00,$00,$00,TY0,TY0
		DB	TY2,TY2,TY3,$00,TY0,TY0,TY0,TY0	; (e0)
		DB	$00,TY0,TY0,$00,TY0,TY0,TY0,TY0
		DB	TY3,TY0,TY0,$00,TY0,TY0,TY0,TY0	; (f0)
		DB	TY0,TY0,$00,TY0,TY0,TY0,TY0,$00

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	家、洞窟 カラーＮｏ（ DNJNNO = 13  GRNDPT に対応 ）		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
HOUSE_COLNO_13	;	  0   1   2   3   4   5   6   7
		;	  8   9   a   b   c   d   e   f
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (00)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (10)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (20)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (30)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (40)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (50)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (60)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (70)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (80)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (90)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (a0)
		DB	$00,$00,ON0,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (b0)
		DB	$00,$00,$00,$00,$00,$00,YUM,YUM
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (c0)
		DB	$00,$00,$00,$00,$00,$00,YUM,YUM
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (d0)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (e0)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (f0)
		DB	$00,$00,$00,$00,$00,$00,$00,$00

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	家、洞窟 カラーＮｏ（ DNJNNO = 14  GRNDPT に対応 ）		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
HOUSE_COLNO_14	;	  0   1   2   3   4   5   6   7
		;	  8   9   a   b   c   d   e   f
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (00)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (10)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (20)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (30)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (40)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (50)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (60)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (70)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (80)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (90)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (a0)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (b0)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,SH0,SH0,$00,SH0,SH0,$00	; (c0)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,SH0,SH0,$00,SH0,SH0,$00	; (d0)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (e0)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (f0)
		DB	$00,$00,$00,$00,$00,$00,$00,$00

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	家、洞窟 カラーＮｏ（ DNJNNO = 15  GRNDPT に対応 ）		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
HOUSE_COLNO_15	;	  0   1   2   3   4   5   6   7
		;	  8   9   a   b   c   d   e   f
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (00)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (10)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (20)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (30)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (40)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (50)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (60)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (70)
		DB	$00,$00,TY0,TY0,TY0,TY0,TY0,$00
		DB	TY0,TY0,TY0,TY0,TY0,TY0,TY0,TY0	; (80)
		DB	TY0,TY0,TY0,TY0,TY0,TY0,TY0,$00
		DB	TY0,TY0,TY0,TY0,TY0,TY0,TY0,TY0	; (90)
		DB	TY0,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,TY0,$00,$00,$00	; (a0)
		DB	$00,$00,$00,TY1,TY1,$00,TY0,TY0
		DB	$00,$00,$00,TY0,$00,TY0,TY0,TY0	; (b0)
		DB	TY0,TY0,TY0,TY0,TY0,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (c0)
		DB	TY0,TY0,TY0,$00,$00,TY0,$00,$00
		DB	TY0,TY0,$00,$00,$00,$00,$00,$00	; (d0)
		DB	TY0,$00,$00,$00,$00,$00,TY0,TY0
		DB	MOR,MOR,MOR,$00,TY0,TY0,TY0,TY0	; (e0)
		DB	$00,TY0,TY0,$00,TY0,TY0,TY0,TY0
		DB	MOR,TY0,TY0,$00,TY0,TY0,TY0,TY0	; (f0)
		DB	TY0,TY0,$00,TY0,TY0,TY0,TY0,$00

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	家、洞窟 カラーＮｏ（ DNJNNO = 16  GRNDPT に対応 ）		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
HOUSE_COLNO_16	;	  0   1   2   3   4   5   6   7
		;	  8   9   a   b   c   d   e   f
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (00)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (10)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (20)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (30)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (40)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (50)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (60)
		DB	$00,$00,$00,$00,$00,$00,$00,KAO
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (70)
		DB	$00,$00,$00,$00,$00,$00,$00,KAO
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (80)
		DB	$00,$00,$00,$00,$00,$00,$00,KAO
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (90)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (a0)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (b0)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (c0)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (d0)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (e0)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (f0)
		DB	$00,$00,$00,$00,$00,$00,$00,$00

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	家、洞窟 カラーＮｏ（ DNJNNO = 1D  GRNDPT に対応 ）		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
HOUSE_COLNO_1D	;	  0   1   2   3   4   5   6   7
		;	  8   9   a   b   c   d   e   f
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (00)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (10)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (20)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (30)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (40)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (50)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (60)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (70)
		DB	$00,$00,TY0,TY0,TY0,TY0,TY0,$00
		DB	TY0,TY0,TY0,TY0,TY0,TY0,TY0,TY0	; (80)
		DB	TY0,TY0,TY0,TY0,TY0,TY0,TY0,$00
		DB	TY0,TY0,TY0,TY0,TY0,TY0,TY0,TY0	; (90)
		DB	TY0,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,TY0,$00,$00,$00	; (a0)
		DB	$00,$00,$00,TY1,TY1,$00,TY0,TY0
		DB	$00,$00,$00,TY0,$00,TY0,TY0,TY0	; (b0)
		DB	TY0,TY0,TY0,TY0,TY0,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (c0)
		DB	TY0,TY0,TY0,$00,$00,TY0,$00,$00
		DB	TY0,TY0,$00,$00,$00,$00,$00,$00	; (d0)
		DB	TY0,$00,$00,$00,$00,$00,TY0,TY0
		DB	TY2,TY2,TY3,$00,TY0,TY0,TY0,TY0	; (e0)
		DB	$00,TY0,TY0,$00,TY0,TY0,TY0,TY0
		DB	TY3,TY0,TY0,$00,TY0,TY0,TY0,TY0	; (f0)
		DB	TY0,TY0,HT4,TY0,TY0,TY0,TY0,$00

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	家、洞窟 カラーＮｏ（ DNJNNO = 1E  GRNDPT に対応 ）		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
HOUSE_COLNO_1E	;	  0   1   2   3   4   5   6   7
		;	  8   9   a   b   c   d   e   f
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (00)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (10)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (20)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (30)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (40)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (50)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (60)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (70)
		DB	$00,$00,TY0,TY0,TY0,TY0,TY0,$00
		DB	TY0,TY0,TY0,TY0,TY0,TY0,TY0,TY0	; (80)
		DB	TY0,TY0,TY0,TY0,TY0,TY0,TY0,$00
		DB	TY0,TY0,TY0,TY0,TY0,TY0,TY0,TY0	; (90)
		DB	TY0,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,TY0,$00,$00,$00	; (a0)
		DB	$00,$00,$00,TY1,TY1,$00,TY0,TY0
		DB	$00,$00,$00,TY0,$00,TY0,TY0,TY0	; (b0)
		DB	TY0,TY0,TY0,TY0,TY0,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (c0)
		DB	TY0,TY0,TY0,$00,$00,TY0,$00,$00
		DB	TY0,TY0,$00,$00,$00,$00,$00,$00	; (d0)
		DB	TY0,$00,$00,$00,$00,$00,TY0,TY0
		DB	TY2,TY2,TY3,HT0,TY0,TY0,TY0,TY0	; (e0)
		DB	$00,TY0,TY0,$00,TY0,TY0,TY0,TY0
		DB	TY3,TY0,TY0,$00,TY0,TY0,TY0,TY0	; (f0)
		DB	TY0,TY0,HT4,TY0,TY0,TY0,TY0,$00

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	家、洞窟 カラーＮｏ（ DNJNNO = 1F  GRNDPT に対応 ）		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
HOUSE_COLNO_1F	;	  0   1   2   3   4   5   6   7
		;	  8   9   a   b   c   d   e   f
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (00)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (10)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (20)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (30)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (40)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (50)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (60)
		DB	$00,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (70)
		DB	$00,$00,TY0,TY0,TY0,TY0,TY0,$00
		DB	TY0,TY0,TY0,TY0,TY0,TY0,TY0,TY0	; (80)
		DB	TY0,TY0,TY0,TY0,TY0,TY0,TY0,$00
		DB	TY0,TY0,TY0,TY0,TY0,TY0,TY0,TY0	; (90)
		DB	TY0,$00,$00,$00,$00,$00,$00,$00
		DB	$00,$00,$00,$00,TY0,$00,$00,$00	; (a0)
		DB	$00,$00,$00,TY1,TY3,$00,TY0,TY0
		DB	$00,$00,$00,TY0,$00,TY0,TY0,TY0	; (b0)
		DB	TY0,TY0,TY0,TY0,TY0,$00,$00,$00
		DB	$00,$00,$00,$00,$00,$00,$00,$00	; (c0)
		DB	TY0,TY0,TY0,$00,$00,TY0,$00,$00
		DB	TY0,TY0,$00,$00,$00,$00,$00,$00	; (d0)
		DB	TY0,$00,$00,$00,$00,$00,TY0,TY0
		DB	TY6,TY6,TY6,$00,TY0,TY0,TY0,TY0	; (e0)
		DB	TY0,TY0,TY0,SH1,SH1,TY0,TY0,TY0
		DB	TY3,TY0,TY0,TY3,TY4,TY0,TY0,TY0	; (f0)
		DB	TY0,TY0,$00,TY3,TY0,TY0,TY0,$00




;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	カラー特殊セットチェック					x
;x----------------------------------------------------------------------x
;x	 (注）GRNDNO（部屋ＮＯ）をチェックする場合、			x
;x	      ダンジョンでは、スクロールする前の部屋ＮＯが、		x
;x	      地上では、スクロールする先の部屋ＮＯが入ってくる。	x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
SPECOL_CHECK
		LD	A,(DJFLAG)
		AND	A		; 地上？
		JR	Z,SPEC_CHK_GRND	; ＹＥＳ

;------------------------------------------------------------------------
;	ダンジョン
;------------------------------------------------------------------------
		LD	B,SRE_COL_CNT	; カウンタ
		LD	HL,SRE_COL_DATA
SPEC_CHK_050
		LD	A,(DNJNNO)
		LD	E,A
		LD	A,(HLI)
		CP	E		; ダンジョンＮｏ？
		JR	NZ,SPEC_CHK_100	; ＮＯ

		LD	A,(GRNDPT)
		LD	E,A
		LD	A,(HLI)
		CP	E		; 部屋Ｎｏ？
		JR	NZ,SPEC_CHK_110	; ＮＯ

		LD	A,(SCRLMK)
		LD	E,A
		LD	A,(HLI)
		CP	E		; スクロール向き？
		JR	NZ,SPEC_CHK_120	; ＮＯ

		LD	A,(HLI)
		LD	(COLFLG),A	; カラーフラグセット

		LD	A,E
		CP	Muki_inout	; 画面イニシャル？
		JR	NZ,SPEC_CHK_900	; ＮＯ

;---------- すぐに転送！

		LD	A,$01
		LD	(FADEMDFG),A

		LD	HL,SPE_COL_ADRS
		LD	A,(COLFLG)
;;;KK;;;		AND	%01111111
		AND	%00111111
		SLA	A
		LD	E,A
		LD	D,$0
		ADD	HL,DE
		LD	A,(HLI)		; ＬＯＷ
		LD	B,(HL)		; ＨＩＧＨ
		LD	H,B		; 転送元アドレス
		LD	L,A		;     ”

;;;;;;;;		CALL	COLOR_SET_100
		CALL	color_set_kas

		XOR	A
		LD	(FADEMDFG),A
		JR	SPEC_CHK_900

;------------------------------
;;;;;;;		JR	SPEC_CHK_900

SPEC_CHK_100
		INC	HL
SPEC_CHK_110
		INC	HL
SPEC_CHK_120
		INC	HL

		DEC	B
		JR	NZ,SPEC_CHK_050
;------------------------------------------------------------------------
SPEC_CHK_900
		RET


;------------------------------------------------------------------------
;	地上
;------------------------------------------------------------------------
SPEC_CHK_GRND
		LD	B,SGR_COL_CNT	; カウンタ
		LD	HL,SGR_COL_DATA
SPGR_CHK_050
		LD	A,(GRNDPT)
		LD	E,A
		LD	A,(HLI)
		CP	E		; 部屋Ｎｏ？
		JR	NZ,SPGR_CHK_110	; ＮＯ

		LD	A,(SCRLMK)
		LD	E,A
		LD	A,(HLI)
		CP	E		; スクロール向き？
		JR	NZ,SPGR_CHK_120	; ＮＯ

		LD	A,(HLI)
		LD	(COLFLG),A	; カラーフラグセット
		JR	SPGR_CHK_900
SPGR_CHK_110
		INC	HL
SPGR_CHK_120
		INC	HL

		DEC	B
		JR	NZ,SPGR_CHK_050
;------------------------------------------------------------------------
SPGR_CHK_900
		RET

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	カラー特殊セット チェックデータ					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;-----<	カラーデータアドレス >-------------------------------------------
SPE_COL_ADRS
;【 ダンジョン 】
spdun0		DW	CL_DUNGEON_1_0	; (80) レベル１ ダッシュで壊せる岩
spdun1		DW	CL_DUNGEON_1_1	; (81) レベル１ 入り口
spdun2		DW	CL_DUNGEON_3_3	; (82) レベル３ ダッシュで壊せる岩
spdun3		DW	CL_DUNGEON_3_1	; (83) レベル３ 入り口
spdun4		DW	CL_DUNGEON_5_0	; (84) レベル５ つぼ
spdun5		DW	CL_DUNGEON_5_1	; (85) レベル５ 入り口
spdun6		DW	CL_DUNGEON_5_3	; (86) レベル５ 剣で壊せる岩
spdun7		DW	CL_DUNGEON_7_0	; (87) レベル７ 入り口
spdun8		DW	CL_DUNGEON_7_1	; (88) レベル７ 塔の外（ボス）
spdun9		DW	CL_DUNGEON_7_2	; (89) レベル７
spdunA		DW	CL_DUNGEON_1_2	; (CA) レベル１ 中ボス(オバＱ)
spdunB		DW	CL_DUNGEON_4	; (8B) レベル４
spdunC		DW	CL_DUNGEON_4_1	; (8C) レベル４ ７８
spdunD		DW	CL_DUNGEON_4_2-$40	; (8d) レベル４ ＥＦ
spdunE		DW	CL_DUNGEON_5_4-$40	; (8e) レベル５ ボス部屋
spdunF		DW	CL_DUNGEON_8	; (CA) レベル８
spdun10		DW	CL_DUNGEON_2_0-$40	; (D0) レベル２ツボボス
spdun11		DW	CL_DUNGEON_6		;レベル６パワフルブレスレット
spdun12		DW	CL_DUNGEON_6_1-$40	;レベル６	のある部屋周辺
spdun13		DW	CL_DUNGEON_7_3-$40	;レベル７ 床ビュンの部屋

;【 地上 】
spgrd0		DW	CL_CZ_b		; (8b) czb.col
spgrd1		DW	CL_06_1_COL	; (8c) 06col.col(BANK1)
spgrd2		DW	CL_CZ_11	; (8d) cz11.col
spgrd3		DW	CL_CZ_5SP2	; (8e) cz5.col（特殊２）
spgrd4		DW	CL_CZ_ca	; (8f) czca.col
spgrd5		DW	CL_10_COL	; (90) 10col.col
spgrd6		DW	CL_CZ_5SP	; (91) cz5.col（特殊）
spgrd7		DW	CL_08_COL	; (92) 08col.col

;【 南の神殿 】
spmnm6		DW	CL_KAO_6F-$40
spmnm7		DW	CL_KAO_7F-$40
spmnm8		DW	CL_KAO_8F-$40

;【 エンディング 】
ending3		DW	CL_CZ_1		; 浜辺
ending4		DW	CL_CZ_0		; 森のタリン
ending5		DW	CL_CZ_3		; 風見鶏のマリン

;-----<	ダンジョンＮｏ．（ DNJNNO ）>------------------------------------
Level_1		EQU	0
Level_2		EQU	1
Level_3		EQU	2
Level_4		EQU	3
Level_5		EQU	4
Level_6		EQU	5
Level_7		EQU	6
Level_8		EQU	7

Minami		EQU	$16

;-----<	スクロール向き（ SCRLMK ）>--------------------------------------
Muki_up		EQU	2	; 上
Muki_down	EQU	3	; 下
Muki_left	EQU	1	; 左
Muki_right	EQU	0	; 右
Muki_inout	EQU	4	; ダンジョン、家 ＩＮ／ＯＵＴ

;-----<	カラーフラグ >---------------------------------------------------
SP_DUN10	EQU	$80+(spdun0-SPE_COL_ADRS)/2
SP_DUN11	EQU	$80+(spdun1-SPE_COL_ADRS)/2
SP_DUN20	EQU	$C0+(spdun10-SPE_COL_ADRS)/2
SP_DUN33	EQU	$80+(spdun2-SPE_COL_ADRS)/2
SP_DUN31	EQU	$80+(spdun3-SPE_COL_ADRS)/2
SP_DUN50	EQU	$80+(spdun4-SPE_COL_ADRS)/2
SP_DUN51	EQU	$80+(spdun5-SPE_COL_ADRS)/2
SP_DUN53	EQU	$80+(spdun6-SPE_COL_ADRS)/2
SP_DUN70	EQU	$80+(spdun7-SPE_COL_ADRS)/2
SP_DUN71	EQU	$80+(spdun8-SPE_COL_ADRS)/2
SP_DUN72	EQU	$80+(spdun9-SPE_COL_ADRS)/2
SP_DUN12	EQU	$C0+(spdunA-SPE_COL_ADRS)/2
SP_DUN40	EQU	$80+(spdunB-SPE_COL_ADRS)/2
SP_DUN41	EQU	$80+(spdunC-SPE_COL_ADRS)/2
SP_DUN42	EQU	$C0+(spdunD-SPE_COL_ADRS)/2
SP_DUN54	EQU	$C0+(spdunE-SPE_COL_ADRS)/2
SP_DUN55	EQU	$C0+(spdun4-SPE_COL_ADRS)/2
SP_DUN154	EQU	$C0+(spdunF-SPE_COL_ADRS)/2
SP_DUN60	EQU	$C0+(spdun11-SPE_COL_ADRS)/2
SP_DUN61	EQU	$C0+(spdun12-SPE_COL_ADRS)/2
SP_DUN13	EQU	$C0+(spdun2-SPE_COL_ADRS)/2
SP_DUN73	EQU	$C0+(spdun13-SPE_COL_ADRS)/2
SP_DUN700	EQU	$C0+(spdun7-SPE_COL_ADRS)/2

SP_GRD0		EQU	$80+(spgrd0-SPE_COL_ADRS)/2
SP_GRD1		EQU	$80+(spgrd1-SPE_COL_ADRS)/2
SP_GRD2		EQU	$80+(spgrd2-SPE_COL_ADRS)/2
SP_GRD3		EQU	$c0+(spgrd3-SPE_COL_ADRS)/2
SP_GRD4		EQU	$80+(spgrd4-SPE_COL_ADRS)/2
SP_GRD5		EQU	$80+(spgrd5-SPE_COL_ADRS)/2
SP_GRD6		EQU	$C0+(spgrd6-SPE_COL_ADRS)/2
SP_GRD7		EQU	$80+(spgrd7-SPE_COL_ADRS)/2

SP_MNM6		EQU	$C0+(spmnm6-SPE_COL_ADRS)/2
SP_MNM7		EQU	$C0+(spmnm7-SPE_COL_ADRS)/2
SP_MNM8		EQU	$C0+(spmnm8-SPE_COL_ADRS)/2

SP_END3		EQU	$80+(ending3-SPE_COL_ADRS)/2
SP_END4		EQU	$80+(ending4-SPE_COL_ADRS)/2
SP_END5		EQU	$80+(ending5-SPE_COL_ADRS)/2
;========================================================================

;************************************************************************
;*	ダンジョン用データ						*
;*	   ＜ データの内容 ＞						*
;*		ダンジョンＮｏ．					*
;*		部屋Ｎｏ．						*
;*		スクロール向き						*
;*		カラーフラグＮｏ．					*
;************************************************************************

SRE_COL_DATA
;------------------------------------------------------------------
;	ＬＥＶＥＬ－１
;------------------------------------------------------------------
;（１７）
						; 入り口
		DB	Level_1,$17,Muki_inout,SP_DUN11
;（１３）
						; １３－＞１２
		DB	Level_1,$13,Muki_left ,SP_DUN10
						; １３－＞１４
		DB	Level_1,$13,Muki_right,SP_DUN10
						; １３－＞１７
		DB	Level_1,$13,Muki_down ,SP_DUN11
;（１０）
						; １０－＞１１
		DB	Level_1,$10,Muki_right,SP_DUN12

;（１Ｃ）
						; １Ｃ－＞１Ｄ
		DB	Level_1,$1C,Muki_up   ,SP_DUN13

;------------------------------------------------------------------
;	ＬＥＶＥＬ－２
;------------------------------------------------------------------
;（２Ｄ）
						; ２Ｄ－＞２Ｂ
		DB	Level_2,$2D,Muki_up   ,SP_DUN20

;------------------------------------------------------------------
;	ＬＥＶＥＬ－３
;------------------------------------------------------------------
;（５２）
						; 入り口
		DB	Level_3,$52,Muki_inout,SP_DUN31
;（５１）
						; ５１－＞４Ｆ
		DB	Level_3,$51,Muki_up   ,SP_DUN33
						; ５１－＞５２
		DB	Level_3,$51,Muki_down ,SP_DUN31

;------------------------------------------------------------------
;	ＬＥＶＥＬ－４
;------------------------------------------------------------------
;（７８）
						; ７８－＞７７
		DB	Level_4,$78,Muki_left ,SP_DUN40
						; ７８－＞７９
		DB	Level_4,$78,Muki_right,SP_DUN40
						; ７８－＞７Ｂ
		DB	Level_4,$78,Muki_down ,SP_DUN41
;（ＥＦ）
						; ＥＦ－＞ボス部屋へ
		DB	Level_4,$EF,Muki_down ,SP_DUN42

;------------------------------------------------------------------
;	ＬＥＶＥＬ－５
;------------------------------------------------------------------
;（Ａ１）
						; 入り口
		DB	Level_5,$A1,Muki_inout,SP_DUN51
;（９Ｆ）
						; ９Ｆ－＞９Ｄ
		DB	Level_5,$9F,Muki_up   ,SP_DUN53
						; ９Ｆ－＞Ａ０
		DB	Level_5,$9F,Muki_right,SP_DUN51
;（９Ｃ）
						; ９Ｃ－＞９９
		DB	Level_5,$9C,Muki_up   ,SP_DUN50
						; ９Ｃ－＞９Ｂ
		DB	Level_5,$9C,Muki_left ,SP_DUN50
						; ９Ｃ－＞９Ｄ
		DB	Level_5,$9C,Muki_right,SP_DUN53
;（９５）
						; ９５－＞９６
		DB	Level_5,$95,Muki_right,SP_DUN50
						; ９５－＞９Ａ
		DB	Level_5,$95,Muki_down ,SP_DUN53
;（８１）
						; 階段
		DB	Level_5,$81,Muki_inout,SP_DUN53
;（８Ｂ）
						; ８Ｂ－＞８５
		DB	Level_5,$8B,Muki_up   ,SP_DUN54
						; ８５－＞８Ｂ
		DB	Level_5,$85,Muki_down ,SP_DUN55

;------------------------------------------------------------------
;	ＬＥＶＥＬ－５
;------------------------------------------------------------------
;（ＣＥ）
						; Ｄ２－＞ＣＥ
		DB	Level_6,$D2,Muki_up   ,SP_DUN61
						; ＣＥ－＞Ｃ８
		DB	Level_6,$CE,Muki_up   ,SP_DUN60

;------------------------------------------------------------------
;	ＬＥＶＥＬ－７
;------------------------------------------------------------------
;（１２Ｅ）
						; 階段
		DB	Level_7,$2E,Muki_inout,SP_DUN72
;（１Ｆ８）
						; 階段
		DB	Level_7,$F8,Muki_inout,SP_DUN71
;（１０Ｅ）
						; 入り口
		DB	Level_7,$0E,Muki_inout,SP_DUN70
;（１０Ｄ）
						; １０Ｄ－＞１０９
		DB	Level_7,$0D,Muki_up   ,SP_DUN72
						; １０Ｄ－＞１０Ｅ
		DB	Level_7,$0D,Muki_right,SP_DUN70
;（１０Ｆ）
						; １０Ｆ－＞１０Ｂ
		DB	Level_7,$0F,Muki_up   ,SP_DUN72
						; １０Ｆ－＞１１０
		DB	Level_7,$0F,Muki_right,SP_DUN72
						; １０Ｆ－＞１０Ｅ
		DB	Level_7,$0F,Muki_left ,SP_DUN70
;（１１７）
						; １１７－＞１１３
		DB	Level_7,$17,Muki_up   ,SP_DUN73
						; １１４ー＞１１３
		DB	Level_7,$14,Muki_left ,SP_DUN73
						; １１３ー＞１１４
		DB	Level_7,$13,Muki_right,SP_DUN700

;------------------------------------------------------------------
;	ＬＥＶＥＬ－８
;------------------------------------------------------------------
;（１５４）
						; １５５－＞１５４
		DB	Level_8,$55,Muki_left ,SP_DUN12

;（１５５）
						; １５４－＞１５５
		DB	Level_8,$54,Muki_right,SP_DUN154

;（１５Ｃ）
						; １５４－＞１５Ｃ
		DB	Level_8,$54,Muki_down ,SP_DUN154

;（１４Ｃ）
						; １５４－＞１４Ｃ
		DB	Level_8,$54,Muki_up   ,SP_DUN154


;------------------------------------------------------------------
;	南の神殿
;------------------------------------------------------------------
;（６Ｆ）
						; ７Ｆ－＞６Ｆ
		DB	Minami ,$6F,Muki_up   ,SP_MNM6
;（７Ｆ）
						; ８Ｆ－＞７Ｆ
		DB	Minami ,$7F,Muki_up   ,SP_MNM7

;（８Ｆ）
						; ７Ｆ－＞８Ｆ
		DB	Minami ,$8F,Muki_down  ,SP_MNM8

SRE_COL_END

SRE_COL_CNT	EQU	(SRE_COL_END-SRE_COL_DATA)/4

;************************************************************************
;*	地上用データ							*
;*	   ＜ データの内容 ＞						*
;*		部屋Ｎｏ．						*
;*		スクロール向き						*
;*		カラーフラグＮｏ．					*
;************************************************************************
SGR_COL_DATA
;（ 沼付近　）
;						; ３４－＞４４
		DB	$44,Muki_down ,SP_GRD0
;						; ３５－＞３６
		DB	$36,Muki_right,SP_GRD0
;（ たまご付近 ）
;						; ２６－＞１６
		DB	$16,Muki_up   ,SP_GRD1
;						; １６－＞２６
		DB	$26,Muki_down ,SP_GRD1
;						; ２７－＞１７
		DB	$17,Muki_up   ,SP_GRD1
;						; １７－＞２７
		DB	$27,Muki_down ,SP_GRD1
;						; １８－＞０８
		DB	$08,Muki_up   ,SP_GRD7
;						; １８－＞１７
		DB	$17,Muki_left ,SP_GRD7
;（ 神殿付近 ）
;						; ９Ｂ－＞９Ｃ
		DB	$9c,Muki_right,SP_GRD2
;						; ＡＦ－＞９Ｆ
		DB	$9f,Muki_up   ,SP_GRD3
;						; ９Ｄ－＞９Ｅ
		DB	$9e,Muki_right,SP_GRD6
;（ 滝 ＜Ｌ４入り口＞ 付近 ）
;						; ２Ｃ－＞２Ｄ
		DB	$2c,Muki_right,SP_GRD4
;（ 山の電話ボックス付近 ）
;						; １１－＞１２
		DB	$12,Muki_right,SP_GRD5
;（ 魔法使いのオババの家付近 ）
;						; ７５－＞６５
		DB	$65,Muki_up   ,SP_GRD4
SGR_COL_END

SGR_COL_CNT	EQU	(SGR_COL_END-SGR_COL_DATA)/3



;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	迷いの森 カラー特殊セットチェック				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;-----<	カラー替え フレームカウンタ >------------------------------------
MORI_FRCNT	EQU	11
;========================================================================

MORI_CHECK
		LD	A,(DJFLAG)
		AND	A		; 地上？
		JR	NZ,MORI_CHK_900	; ＮＯ
;------------------------------------------------------------------------
		LD	B,MORI_COL_CNT	; カウンタ
		LD	HL,MORI_COL_DATA
MORI_CHK_250
		LD	A,(GRNDPT)
		LD	E,A
		LD	A,(HLI)
		CP	E		; 部屋Ｎｏ？
		JR	NZ,MORI_CHK_300	; ＮＯ

		LD	A,(SCRLMK)
		LD	E,A
		LD	A,(HLI)
		CP	E		; スクロール向き？
		JR	NZ,MORI_CHK_310	; ＮＯ

		LD	A,(HLI)
		LD	(MORIFLG),A
		LD	A,MORI_FRCNT	; フレームカウンタ
		LD	(MORIFCT),A
		JR	MORI_CHK_900
MORI_CHK_300
		INC	HL
MORI_CHK_310
		INC	HL

		DEC	B
		JR	NZ,MORI_CHK_250
;------------------------------------------------------------------------
MORI_CHK_900
		RET

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	カラー特殊セット チェックデータ（ 迷いの森 ）			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;-----<	迷いの森ＩＮ／ＯＵＴ（ MORIFLG ) >-------------------------------
MORI_IN		EQU	%01000000	; 森に入る
MORI_OUT	EQU	%10000000	; 森から出る
;========================================================================

;------------------------------------------------------------------------
;	＜ データの内容 ＞
;		部屋Ｎｏ．
;		スクロール向き
;		迷いの森 カラーチェンジフラグ
;------------------------------------------------------------------------
MORI_COL_DATA
						; （３０－＞４０）
		DB	$40,Muki_down, MORI_IN
						; （４０－＞３０）
		DB	$30,Muki_up  , MORI_OUT
						; （４３－＞４４）
		DB	$44,Muki_right,MORI_OUT
						; （４４－＞４３）
		DB	$43,Muki_left, MORI_IN
						; （７０－＞８０）
		DB	$90,Muki_down, MORI_OUT
						; （８０－＞７０）
		DB	$80,Muki_up,   MORI_IN
MORI_COL_END

MORI_COL_CNT	EQU	(MORI_COL_END-MORI_COL_DATA)/3


;;;;;;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;;;;;;x	迷いの森 カラーチェンジ						x
;;;;;;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;;;;;;------------------------------------------------------------------------
;;;;;;	カラーデータアドレス
;;;;;;------------------------------------------------------------------------
;;;;;;-----<	迷いの森ＩＮ >---------------------------------------------------
;;;;;MORIIN_COL_ADRS
;;;;;		DW	CL_MORI_2	; (0) 中間（２）
;;;;;		DW	CL_MORI_2+0020H	; (1)      ”
;;;;;		DW	CL_MORI_1	; (2) 中間（１）
;;;;;		DW	CL_MORI_1+0020H	; (3)      ”
;;;;;		DW	CL_CZ_0		; (4) bg_0.col 迷いの森
;;;;;		DW	CL_CZ_0+0020H	; (5)      ”
;;;;;
;;;;;;-----<	迷いの森ＯＵＴ >-------------------------------------------------
;;;;;MORIOUT_COL_ADRS
;;;;;		DW	CL_MORI_1	; (0) 中間（１）
;;;;;		DW	CL_MORI_1+0020H	; (1)      ”
;;;;;		DW	CL_MORI_2	; (2) 中間（２）
;;;;;		DW	CL_MORI_2+0020H	; (3)      ”
;;;;;		DW	CL_CZ_3		; (4) cz3.col  メーベの村
;;;;;		DW	CL_CZ_3+0020H	; (5)      ”
;;;;;
;;;;;;------------------------------------------------------------------------
;;;;;;	カラー転送先アドレス
;;;;;;------------------------------------------------------------------------
;;;;;MORI_TRAN_ADRS
;;;;;		DW	CGWORK		; (0)
;;;;;		DW	CGWORK+0020H	; (1)
;;;;;		DW	CGWORK		; (2)
;;;;;		DW	CGWORK+0020H	; (3)
;;;;;		DW	CGWORK		; (4)
;;;;;		DW	CGWORK+0020H	; (5)
;;;;;;========================================================================
;;;;;
;;;;;MORI_COL_CHANGE
;;;;;		LD	A,(CGBFLG)
;;;;;		AND	A		; カラーゲームボーイ？
;;;;;		RET	Z		; ＮＯ
;;;;;		LD	A,(DJFLAG)
;;;;;		AND	A		; 地上？
;;;;;		RET	NZ		; ＮＯ
;;;;;		LD	A,(MORIFLG)
;;;;;		AND	A		; カラーチェンジ？
;;;;;		RET	Z		; ＮＯ
;;;;;;------------------------------------------------------------------------
;;;;;		LD	A,(MORIFCT)
;;;;;		DEC	A
;;;;;		LD	(MORIFCT),A	; 下位２０Ｈチェンジ？
;;;;;		JR	Z,MORI_COL_050	; ＹＥＳ
;;;;;		CP	$01		; 上位２０Ｈチェンジ？
;;;;;		RET	NZ		; ＮＯ
;;;;;MORI_COL_050
;;;;;		LD	A,(MORIFLG)
;;;;;		BIT	7,A		; 迷いの森を出る？
;;;;;		JR	NZ,MORI_COL_100	; ＹＥＳ
;;;;;;------------------------------------------------------------------------
;;;;;;	迷いの森ＩＮ
;;;;;;------------------------------------------------------------------------
;;;;;		LD	HL,MORIIN_COL_ADRS
;;;;;		JR	MORI_COL_150
;;;;;;------------------------------------------------------------------------
;;;;;;	迷いの森ＯＵＴ
;;;;;;------------------------------------------------------------------------
;;;;;MORI_COL_100
;;;;;		LD	HL,MORIOUT_COL_ADRS
;;;;;;------------------------------------------------------------------------
;;;;;MORI_COL_150
;;;;;		LD	A,(MORIFCT)
;;;;;		CP	$01
;;;;;		JR	Z,MORI_COL_160
;;;;;
;;;;;		LD	A,MORI_FRCNT	; フレームカウンタリセット
;;;;;		LD	(MORIFCT),A
;;;;;MORI_COL_160
;;;;;		PUSH	HL
;;;;;		LD	A,(MORIFLG)
;;;;;		AND	%00111111
;;;;;		SLA	A
;;;;;		LD	C,A
;;;;;		LD	B,$0
;;;;;		LD	HL,MORI_TRAN_ADRS
;;;;;		ADD	HL,BC
;;;;;		LD	A,(HLI)
;;;;;		LD	E,A		; 転送先アドレス（ＬＯＷ）
;;;;;		LD	D,(HL)		;     ”        （ＨＩＧＨ）
;;;;;		POP	HL
;;;;;		ADD	HL,BC
;;;;;		LD	A,(HLI)
;;;;;		LD	H,(HL)		; 転送元アドレス（ＬＯＷ）
;;;;;		LD	L,A		;     ”        （ＨＩＧＨ）
;;;;;		LD	BC,$0020	; 個数
;;;;;
;;;;;		CALL	DATA_MOV	; データ転送
;;;;;
;;;;;		LD	A,(MORIFLG)
;;;;;		AND	%00000001
;;;;;		SWAP	A		; 0 or 4*4
;;;;;		LD	(COLOFS),A	; 転送オフセット
;;;;;		LD	A,4*4
;;;;;		LD	(COLLNG),A	; 転送長さ
;;;;;		LD	A,BGCOL_BITFG|$80
;;;;;		LD	(CGDMAF),A	; 転送フラグ（部分転送）
;;;;;
;;;;;		LD	A,(MORIFLG)
;;;;;		INC	A
;;;;;		LD	(MORIFLG),A
;;;;;		AND	%00111111
;;;;;		CP	%00000110	; 森カラーチェンジ終了？
;;;;;		RET	NZ		; ＮＯ
;;;;;
;;;;;		XOR	A
;;;;;		LD	(MORIFLG),A	; フラグクリア
;;;;;		RET
;;;;;
;;;;;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	暗い部屋 カラーセット（ CALL by FADECK )			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
Dark_colset_sub
;------------------------------------------------------------------------
;	基本カラーセット
;------------------------------------------------------------------------
;;;;;;;;;		CALL	RMCL_DNJ_010

		CALL	Dark_base_color

;------------------------------------------------------------------------

		LD	A,(FADECT)
		AND	%00001110	; ２、４，８
		RET	Z		; ０は計算しない！

		LD	A,$1
		LD	(WORKA),A	; 強制転送フラグセット
		CALL	Dark_rst_100

		RET

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	暗い部屋 基本カラーセット					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
Dark_base_color
		LD	A,(DNJNNO)
		CP	DJMAX		; 家ｏｒ洞窟？
		JR	NC,Darkclsb_HUS	; ＹＥＳ

		SLA	A
		LD	E,A
		LD	D,$0
		LD	HL,DUN_COL_ADRS
		ADD	HL,DE
		LD	A,(HLI)		; ＬＯＷ
		LD	B,(HL)		; ＨＩＧＨ
		LD	H,B		; 転送元アドレス
		LD	L,A		;     ”
		JR	Darkclsb_SET

;------------------------------------------------------------------------
;	家、洞窟
;------------------------------------------------------------------------
Darkclsb_HUS
;;;;;;;		LD	A,(DNJNNO)
		SUB	DJMAX
		SLA	A
		LD	E,A
		LD	D,$0
		LD	HL,HOUSE_CLNO_ADRS
		ADD	HL,DE
		LD	A,(HLI)
		LD	B,(HL)
		LD	H,B
		LD	L,A

		LD	A,(GRNDPT)
		LD	E,A
		LD	D,$0
		ADD	HL,DE
		LD	A,(HL)
		SLA	A
		LD	E,A
		LD	HL,HOUSE_COL_ADRS
		ADD	HL,DE
		LD	A,(HLI)		; ＬＯＷ
		LD	B,(HL)		; ＨＩＧＨ
		LD	H,B		; 転送元アドレス
		LD	L,A		;     ”

Darkclsb_SET
		LD	DE,CGWORK	; 転送先アドレス
		LD	BC,$0040	; 個数（ＢＧのみ）

		PUSH	BC
		PUSH	DE
		PUSH	HL
		CALL	DATA_MOV	; データ転送
		POP	HL
		POP	DE
		POP	BC

		LD	A,$002
		LD	(SVBK),A
		CALL	DATA_MOV	; データ転送
		XOR	A
		LD	(SVBK),A

		RET

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	メッセージで明るくする カラーセット（ CALL by <ZEX> MSOKCKL )	x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
Message_bright
		CALL	Dark_base_color	; 基本カラーセット

		LD	A,$1
		LD	(WORKA),A	; 強制転送フラグセット
		CALL	Dark_rst_102
Mesbright_100
		XOR	A
		LD	(COLOFS),A	; 転送オフセット
		LD	A,4*8
		LD	(COLLNG),A	; 転送長さ
		LD	A,BGCOL_BITFG|$80
		LD	(CGDMAF),A	; 転送フラグ（部分転送）

		RET

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	メッセージ後、暗くする カラーセット（ CALL by <ZMSSUB> MSGEND )	x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
Message_dark
		CALL	Dark_base_color	; 基本カラーセット

		LD	A,$1
		LD	(WORKA),A	; 強制転送フラグセット
		CALL	Dark_rst_100

		JR	Mesbright_100

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	暗い部屋 カラー特殊セット					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;------------------------------------------------------------------------
;	暗い部屋 カラーチェンジフラグ
;------------------------------------------------------------------------
BRIGHT		EQU	%01000000	; 明るくなる
DARK		EQU	%10000000	; 暗くなる
;------------------------------------------------------------------------
;	暗い部屋 カラーチェンジフレームカウンタ
;------------------------------------------------------------------------
DARK_FRCNT	EQU	11
DARK_FRCNT_L8	EQU	10		; レベル８
;------------------------------------------------------------------------
;	グラデーションＮｏ． データ
;------------------------------------------------------------------------
TOUROU_0_GRA				; 明るい＜－－＞１個消えてる の間
		DB	11,13,13,13,11,11,11,11
TOUROU_1_GRA				; とうろう１個消えてる
		DB	7,9,9,9,7,7,7,7
TOUROU_2_GRA				; とうろう２個消えてる
		DB	4,5,5,5,4,4,4,4
;========================================================================

Dark_room_set
		XOR	A
		LD	(WORKA),A	; 強制転送フラグクリア

;------------------------------------------------------------------------
;	暗い部屋 チェック
;------------------------------------------------------------------------
		LD	A,(CGBFLG)
		AND	A
		RET	Z
		LD	A,(DJFLAG)
		AND	A		; 地上？
		RET	Z		; ＹＥＳ
		LD	HL,FADECT
		LD	A,(FADECT2)
		CP	(HL)		; 明るさ変わる？
		RET	Z		; ＮＯ
;------------------------------------------------------------------------
		LD	A,(SCRLFG)
		AND	A		; スクロールする？
		LD	A,(FADECT2)	; スクロールしない場合は、FADECT2 にする
		JR	Z,Dark_rst_101	; ＮＯ

		LD	HL,FADECT
		LD	A,(FADECT2)
		CP	(HL)		; 暗くなる？
		JR	NC,Dark_rst_050	; ＹＥＳ

		LD	A,BRIGHT
		JR	Dark_rst_060
Dark_rst_050
		LD	A,DARK
Dark_rst_060
		LD	(DARKFLG),A

		LD	A,(DNJNNO)
		CP	$07		; レベル８？
		JR	NZ,Dark_rst_070	; ＮＯ

;;;;;;;		LD	A,DARK_FRCNT_L8	; レベル８だけタイミングずらす
		LD	A,$17		; レベル８だけタイミングずらす
		JR	Dark_rst_080
Dark_rst_070
		LD	A,DARK_FRCNT
Dark_rst_080
		LD	(DARKFCT),A
		RET

;------------------------------------------------------------------------
;	暗い部屋 セット
;------------------------------------------------------------------------
Dark_rst_100
		LD	A,(FADECT)
Dark_rst_101
		LD	HL,TOUROU_2_GRA
		CP	$8		; とうろう２個消えてる？
		JR	Z,Dark_rst_110	; ＹＥＳ

		CP	$2
		JR	Z,Dark_rst_105
Dark_rst_102
		LD	HL,TOUROU_1_GRA	; とうろう１個消えてる
		JR	Dark_rst_110
Dark_rst_105
		LD	HL,TOUROU_0_GRA	; とうろう１個消えてる ←→ 明るい
;------------------------------------------------------------------------
Dark_rst_110
		LD	B,$0
Dark_rst_120
		LD	A,(HLI)
		LD	C,A
		CALL	Dark_palet_set	; 一列セット
		INC	B
		LD	A,B
		CP	$08
		JR	NZ,Dark_rst_120
;------------------------------------------------------------------------
		LD	A,(WORKA)
		AND	A		; 強制転送？
		JR	NZ,Dark_rst_800	; ＹＥＳ

		LD	A,(SCRLFG)
		AND	A		; スクロール中？
		JR	Z,Dark_rst_900	; ＮＯ
Dark_rst_800
		LD	A,BGCOL_BITFG
		LD	(CGDMAF),A	; 転送フラグ（ＢＧ）
Dark_rst_900
		RET

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	暗い部屋 パレットデータセット					x
;x----------------------------------------------------------------------x
;x	    ＥＮＴＲＹ							x
;x		Ｂ	： パレットＮｏ．				x
;x		Ｃ	： グラデーションＮｏ．（１６分割）		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
Dark_palet_set
		PUSH	BC
		PUSH	HL

		LD	HL,CGWORK
		LD	A,B
		SLA	A
		SLA	A
		SLA	A		; ×８
		LD	E,A
		LD	D,$0
		ADD	HL,DE
Dark_pst_100
		PUSH	HL

;------------------------------------------------------------------------
;	カラーデータ ＲＥＡＤ
;------------------------------------------------------------------------
		LD	A,(WORKA)
		AND	A
		JR	NZ,Dark_pst_200

		LD	A,(SCRLFG)
		AND	A		; スクロール中？
		JR	NZ,Dark_pst_200	; ＹＥＳ

		LD	A,$02
		LD	(SVBK),A	; ＲＡＭバンク（２）セット
		LD	A,(HLI)
		LD	E,A		; DE <-- CGWORK
		LD	D,(HL)		; 
		XOR	A
		LD	(SVBK),A	; ＲＡＭバンク（０）セット
		JR	Dark_pst_210
Dark_pst_200
		LD	A,(HLI)
		LD	E,A		; DE <-- CGWORK
		LD	D,(HL)		; 
Dark_pst_210
;------------------------------------------------------------------------
;	ＲＧＢ
;------------------------------------------------------------------------
		LD	A,E
		AND	%00011111
		CALL	RGB_16
		LD	(WORK8),A	; Ｒ

		LD	A,E
		AND	%11100000
		SWAP	A
		SRL	A
		LD	B,A
		LD	A,D
		AND	%00000011
		SWAP	A
		SRL	A
		OR	B
		CALL	RGB_16
		LD	(WORK9),A	; Ｇ

		LD	A,D
		AND	%01111100
		SRL	A
		SRL	A
		CALL	RGB_16		; Ｂ

;------------------------------------------------------------------------
;	ＲＧＢ合成
;------------------------------------------------------------------------
		SLA	A
		SLA	A
		LD	D,A
		LD	A,(WORK9)
		SLA	A
		SWAP	A
		AND	%00000011
		OR	D
		LD	D,A		; ＨＩＧＨ

		LD	A,(WORK9)
		AND	%00000111
		SWAP	A
		SLA	A
		LD	E,A
		LD	A,(WORK8)
		OR	E
		LD	E,A		; ＬＯＷ

;------------------------------------------------------------------------
;	カラーデータ ＷＲＩＴＥ
;------------------------------------------------------------------------
		POP	HL

		LD	A,(WORKA)
		AND	A
		JR	NZ,Dark_pst_300

		LD	A,(SCRLFG)
		AND	A		; スクロール中？
		JR	NZ,Dark_pst_300	; ＹＥＳ

		LD	A,$02
		LD	(SVBK),A	; ＲＡＭバンク（２）セット
		LD	A,E
		LD	(HLI),A		; CGWORK <-- DE
		LD	A,D		;
		LD	(HLI),A		; 
		XOR	A
		LD	(SVBK),A	; ＲＡＭバンク（０）セット
		JR	Dark_pst_310
Dark_pst_300
		LD	A,E
		LD	(HLI),A		; CGWORK <-- DE
		LD	A,D		;
		LD	(HLI),A		; 
Dark_pst_310
		LD	A,L
		AND	%00000111	; １列終了？
		JR	NZ,Dark_pst_100	; ＮＯ
;------------------------------------------------------------------------
		POP	HL
		POP	BC
		RET

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ＲＧＢ グラデーションセット					x
;x----------------------------------------------------------------------x
;x	    ＥＮＴＲＹ							x
;x		Ａ	： ＲＧＢデータ					x
;x		Ｃ	： グラデーションＮｏ．（１６分割）		x
;x	    ＲＥＴＵＲＮ						x
;x		Ａ	： ＲＧＢデータ（計算後）			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
RGB_16
		PUSH	DE

		LD	B,A
		AND	%00001111
		SWAP	A
		LD	E,A		; 小数点
		LD	A,B
		SWAP	A
		AND	%00000001
		LD	D,A		; 実数
		XOR	A
		LD	H,A		; 計算用 実数
		LD	L,A		; 計算用 小数点
		LD	B,C		; カウンタ
RGB_16_100
		LD	A,L
		ADD	A,E
		LD	L,A
		LD	A,H
		ADC	A,$0
		ADD	A,D
		LD	H,A

		DEC	B
		JR	NZ,RGB_16_100

		LD	A,H
		POP	DE
		RET


;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x		ＯＢＪ　常駐カラーデータ				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
obj_col
		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
		DW	$7fff,$1adf,$001b,$0000	; ( 4 )
		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )

obj_col_1
		DW	$7fff,$1e0c,$0104,$0000	; ( 5 )大鷲の塔 入口

Nemu_link_red	EQU	obj_col+014h		; 眠い洞窟 リンク赤
Nemu_link_blue	EQU	obj_col+01ch		; 眠い洞窟 リンク青

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	CZ_0 地上 カラーデータ						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_RMBGST
CL_CZ_0
; ＜ ＢＧ： cz0.col BANK=0 ＞
		DW	$76f3,$098d,$0ca9,$0000	; ( 0 )
		DW	$76f3,$51ac,$2066,$0000	; ( 1 )
		DW	$76f3,$1417,$100c,$0000	; ( 2 )
		DW	$76f3,$0997,$088b,$0000	; ( 3 )
		DW	$76f3,$30c0,$1801,$0000	; ( 4 )
		DW	$094f,$098d,$0ca9,$0000	; ( 5 )
		DW	$76f3,$3626,$1963,$0000	; ( 6 )
		DW	$47ff,$76f3,$2562,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
;;;;;;;		DW	$76f3,$098d,$0ca9,$0000	; ( 0 )BG
;;;;;;;		DW	$76f3,$51ac,$2066,$0000	; ( 1 )BG
		DW	$76f3,$3626,$1963,$0000	; ( 6 )BG
		DW	$76f3,$51ac,$2066,$0000	; ( 1 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	CZ_1 地上 カラーデータ						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_CZ_1
; ＜ ＢＧ： cz1.col ＞
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1419,$100a,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$7fff,$7d68,$4cc5,$0000	; ( 4 )
		DW	$1a1b,$26c4,$1521,$0000	; ( 5 )
		DW	$47ff,$12ec,$15a6,$0000	; ( 6 )
		DW	$47ff,$11d9,$1521,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )BG
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	CZ_1a 地上 カラーデータ	（Ｅ３：セールの家  専用 ）		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_CZ_1a
; ＜ ＢＧ： cz1.col ＞
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1419,$100a,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$7fff,$7d68,$4cc5,$0000	; ( 4 )
		DW	$1a1b,$26c4,$1521,$0000	; ( 5 )
		DW	$47ff,$12ec,$15a6,$0000	; ( 6 )
		DW	$47ff,$11d9,$1521,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$0000,$26c4,$1521,$0000	; ( 6 )
		DW	$0000,$0000,$0e3b,$2b9f	; ( 7 ) ばなな

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	CZ_2 地上 カラーデータ						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_CZ_2
; ＜ ＢＧ： cz2.col ＞
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1419,$100a,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$47ff,$7cc3,$2c00,$0000	; ( 4 )
		DW	$11d9,$26c4,$1521,$0000	; ( 5 )
		DW	$47ff,$12ec,$15a6,$0000	; ( 6 )
		DW	$47ff,$1e52,$0ce5,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )BG
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	CZ_3 地上 カラーデータ						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_CZ_3
; ＜ ＢＧ： cz3.col ＞
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1419,$100a,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$47ff,$7cc3,$2c00,$0000	; ( 4 )
		DW	$11d9,$26c4,$1521,$0000	; ( 5 )
		DW	$47ff,$12ec,$15a6,$0000	; ( 6 )
		DW	$47ff,$7c75,$3c07,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )BG
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	CZ_7 地上 カラーデータ						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_CZ_7
; ＜ ＢＧ： cz7.col ＞
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1419,$100a,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$47ff,$7d68,$7c79,$0000	; ( 4 )
		DW	$11d9,$26c4,$1521,$0000	; ( 5 )
		DW	$47ff,$12ec,$15a6,$0000	; ( 6 )
		DW	$141f,$47ff,$027f,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )BG
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	CZ_2a 地上 カラーデータ						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_CZ_2a
; ＜ ＢＧ： cz2a.col ＞
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1419,$100a,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$47ff,$7cc3,$2c00,$0000	; ( 4 )
		DW	$11d9,$26c4,$1521,$0000	; ( 5 )
		DW	$47ff,$12ec,$15a6,$0000	; ( 6 )
		DW	$7ff4,$12ec,$740d,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )BG
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	CZ_4 地上 カラーデータ						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_CZ_4
; ＜ ＢＧ： cz4.col ＞
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$7fff,$7d68,$4cc5,$0000	; ( 4 )
		DW	$11d9,$26c4,$1521,$0000	; ( 5 )
		DW	$47ff,$12ec,$15a6,$0000	; ( 6 )
		DW	$7fff,$3615,$100c,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )BG
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	CZ_4 地上 カラーデータ						x
;x			猿のところ					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_CZ_4a
; ＜ ＢＧ： cz4.col ＞
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$7fff,$7d68,$4cc5,$0000	; ( 4 )
		DW	$11d9,$26c4,$1521,$0000	; ( 5 )
		DW	$47ff,$12ec,$15a6,$0000	; ( 6 )
		DW	$7fff,$3615,$100c,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )BG
		DW	$47ff,$0fbe,$0213,$0000	; ( 7 )

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	CZ_c 地上 カラーデータ						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_CZ_c
; ＜ ＢＧ： czc.col ＞
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1419,$100a,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$57ff,$7d68,$4cc5,$0000	; ( 4 )
		DW	$11d9,$26c4,$1521,$0000	; ( 5 )
		DW	$47ff,$12ec,$15a6,$0000	; ( 6 )
		DW	$47ff,$09af,$04e6,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )BG
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	CZ_ca 地上 カラーデータ						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_CZ_ca
; ＜ ＢＧ： czca.col ＞
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1419,$100a,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$7fff,$7d68,$4cc5,$0000	; ( 4 )
		DW	$11d9,$26c4,$1521,$0000	; ( 5 )
		DW	$47ff,$12ec,$15a6,$0000	; ( 6 )
		DW	$1a1b,$51f3,$2867,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )BG
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	CZ_d 地上 カラーデータ						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_CZ_d
; ＜ ＢＧ： czd.col ＞
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$7fff,$7d68,$4cc5,$0000	; ( 4 )
		DW	$11d9,$26c4,$1521,$0000	; ( 5 )
		DW	$47ff,$12ec,$15a6,$0000	; ( 6 )
		DW	$7fff,$51f3,$2867,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )BG
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	CZ_d 地上 カラーデータ						x
;x			人魚のところ					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_CZ_e
; ＜ ＢＧ： czd.col ＞
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$7fff,$7d68,$4cc5,$0000	; ( 4 )
		DW	$11d9,$26c4,$1521,$0000	; ( 5 )
		DW	$47ff,$12ec,$15a6,$0000	; ( 6 )
		DW	$7fff,$51f3,$2867,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )BG
		DW	$47ff,$2c7f,$140e,$0000	; ( 7 )

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	CZ_11 地上 カラーデータ						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_CZ_11
; ＜ ＢＧ： cz11.col ＞
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1419,$100a,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$7fff,$7d68,$4cc5,$0000	; ( 4 )
		DW	$11d9,$26c4,$1521,$0000	; ( 5 )
		DW	$47ff,$12ec,$15a6,$0000	; ( 6 )
		DW	$47ff,$09af,$04e6,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )BG
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	CZ_3a 地上 カラーデータ						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_CZ_3a
; ＜ ＢＧ： cz3a.col ＞
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$47ff,$7d68,$4cc5,$0000	; ( 4 )
		DW	$11d9,$26c4,$1521,$0000	; ( 5 )
		DW	$47ff,$12ec,$15a6,$0000	; ( 6 )
		DW	$47ff,$501f,$200f,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )BG
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	CZ_3b 地上 カラーデータ						x
;x			動物村のヤッホーオバさん			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_CZ_3b
; ＜ ＢＧ： cz3a.col ＞
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$47ff,$7d68,$4cc5,$0000	; ( 4 )
		DW	$11d9,$26c4,$1521,$0000	; ( 5 )
		DW	$47ff,$12ec,$15a6,$0000	; ( 6 )
		DW	$47ff,$501f,$200f,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )BG
		DW	$47ff,$5231,$28c5,$0000	; ( 7 )

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	CZ_3b 地上 カラーデータ						x
;x			うるりらジーさんの家の前			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_CZ_URURIRA
; ＜ ＢＧ： cz3a.col ＞
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1419,$100a,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$47ff,$7cc3,$2c00,$0000	; ( 4 )
		DW	$11d9,$26c4,$1521,$0000	; ( 5 )
		DW	$47ff,$12ec,$15a6,$0000	; ( 6 )
		DW	$47ff,$7c75,$3c07,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
		DW	$7fff,$0000,$4471,$7d7f
		DW	$47ff,$5231,$28c5,$0000	; ( 7 )

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	CZ_6 地上 カラーデータ						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_CZ_6
; ＜ ＢＧ： cz6.col ＞
		DW	$1f9d,$01fe,$7c00,$7c00	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$1f19,$019a,$7c00,$7c00	; ( 4 )
		DW	$11d9,$26c4,$1521,$0000	; ( 5 )
		DW	$1a96,$0136,$7c00,$7c00	; ( 6 )
		DW	$7fff,$31d6,$1185,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$1f9d,$01fe,$7c00,$7c00	; ( 0 )BG
;;;KK;;;		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG
		DW	$47ff,$12bb,$0151,$0000	; ( 1 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	CZ_6a 地上 カラーデータ						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_CZ_6a
; ＜ ＢＧ： cz6a.col ＞
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$7fff,$7d68,$4cc5,$0000	; ( 4 )
		DW	$11d9,$26c4,$1521,$0000	; ( 5 )
		DW	$47ff,$12ec,$15a6,$0000	; ( 6 )
		DW	$7fff,$31d6,$1185,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )BG
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	CZ_b 地上 カラーデータ						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_CZ_b
; ＜ ＢＧ： czb.col ＞
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1419,$100a,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$47ff,$1e52,$10ce,$0000	; ( 4 )
		DW	$11d9,$26c4,$1521,$0000	; ( 5 )
		DW	$47ff,$12ec,$15a6,$0000	; ( 6 )
		DW	$7fff,$26c4,$011f,$0069	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$76f3,$098d,$0ca9,$0000	; ( 0 )BG 草ＯＢＪ専用
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	00_COL 地上 カラーデータ					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_00_COL
; ＜ ＢＧ： 00col.col ＞
		DW	$7d68,$11d9,$10ce,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1419,$100a,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$7fff,$7d68,$4cc5,$0000	; ( 4 )
		DW	$4cc5,$11d9,$10ce,$0000	; ( 5 )
		DW	$47ff,$12ec,$15a6,$0000	; ( 6 )
		DW	$225b,$51f3,$2867,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG
		DW	$225b,$51f3,$2867,$0000	; ( 7 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	10_COL 地上 カラーデータ					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_10_COL
; ＜ ＢＧ： 10col.col ＞
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1419,$100a,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$269b,$26c4,$1521,$0000	; ( 4 )
		DW	$11d9,$26c4,$1521,$0000	; ( 5 )
		DW	$47ff,$12ec,$15a6,$0000	; ( 6 )
		DW	$225b,$51f3,$2867,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )BG 草カラー
		DW	$225b,$51f3,$2867,$0000	; ( 7 )

CL_K10_COL
; ＜ ＢＧ： 10col.col ＞
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1419,$100a,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$269b,$26c4,$1521,$0000	; ( 4 )
		DW	$11d9,$26c4,$1521,$0000	; ( 5 )
		DW	$47ff,$12ec,$15a6,$0000	; ( 6 )
		DW	$225b,$51f3,$2867,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$11d9,$6233,$38c8,$0000	; ( 6 )
		DW	$11d9,$0000,$16aa,$7fff	; ( 7 )

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	CZ_9 地上 カラーデータ						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_CZ_9
; ＜ ＢＧ： cz9.col ＞
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$7fff,$7d68,$4cc5,$0000	; ( 4 )
		DW	$11d9,$26c4,$1521,$0000	; ( 5 )
		DW	$47ff,$12ec,$15a6,$0000	; ( 6 )
		DW	$7d68,$132e,$0926,$1044	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$1610,$11d9,$10ce,$0000	; ( 6 )
;;;KK;;;		DW	$47ff,$26c4,$1521,$0000	; ( 0 )BG
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	CZ_5 地上 カラーデータ						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_CZ_5
; ＜ ＢＧ： cz5.col ＞
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1419,$100a,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$57ff,$7d68,$4cc5,$0000	; ( 4 )
		DW	$4ffc,$3665,$40c2,$1a3c	; ( 5 )
		DW	$1a3c,$6657,$350c,$1444	; ( 6 )
		DW	$1a3c,$47ff,$09ef,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )

		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG
		DW	$7fff,$47ff,$09ef,$0000	; ( 7 )BG アモス

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	CZ_5a 地上 カラーデータ						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_CZ_5a
; ＜ ＢＧ： cz5.col ＞
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1419,$100a,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$57ff,$7d68,$4cc5,$0000	; ( 4 )
		DW	$4ffc,$3665,$40c2,$1a3c	; ( 5 )
		DW	$1a3c,$6657,$350c,$1444	; ( 6 )
		DW	$1a3c,$51f3,$2867,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )

		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG
		DW	$1a3c,$51f3,$2867,$0000	; ( 7 )アモス

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	CZ_5（特殊）地上 カラーデータ					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_CZ_5SP
; ＜ ＢＧ： cz5.col ＞
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1419,$100a,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$57ff,$7d68,$4cc5,$0000	; ( 4 )
		DW	$4ffc,$3665,$40c2,$1a3c	; ( 5 )
		DW	$1a3c,$6657,$350c,$1444	; ( 6 )
		DW	$1a3c,$0000,$09ef,$47ff	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )BG
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	CZ_5（特殊２） 地上 カラーデータ				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_CZ_5SP2
; ＜ ＢＧ： cz5.col ＞
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1419,$100a,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$57ff,$7d68,$4cc5,$0000	; ( 4 )
		DW	$4ffc,$3665,$40c2,$1a3c	; ( 5 )
		DW	$1a3c,$6657,$350c,$1444	; ( 6 )
		DW	$1a3c,$0000,$09ef,$47ff	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )

		DW	$47ff,$26c4,$1521,$0000	; ( 0 ) 草
		DW	$47ff,$51f3,$2867,$0000	; ( 1 ) アモス 

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	06_COL 地上 カラーデータ					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_06_COL
; ＜ ＢＧ： 06col.col ＞
		DW	$7d68,$11d9,$10ce,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1419,$100a,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$7fff,$7d68,$4cc5,$0000	; ( 4 )
		DW	$4cc5,$11d9,$10ce,$0000	; ( 5 )
		DW	$47ff,$4c9d,$7d68,$0000	; ( 6 )
		DW	$225b,$51f3,$2867,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$47ff,$0000,$2867,$0000	; ( 1 )BG セイレーン楽器
		DW	$225b,$51f3,$2867,$0000	; ( 7 )BG

;-----<	特殊セット用 >---------------------------------------------------
CL_06_1_COL
; ＜ ＢＧ： 06col.col BANK=1 ＞
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1419,$100a,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$7fff,$7d68,$4cc5,$0000	; ( 4 )
		DW	$4cc5,$11d9,$10ce,$0000	; ( 5 )
		DW	$47ff,$12ec,$15a6,$0000	; ( 6 )
		DW	$225b,$51f3,$2867,$0000	; ( 7 )

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	07_COL 地上 カラーデータ					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_07_COL
; ＜ ＢＧ： 07col.col ＞
		DW	$7d68,$11d9,$10ce,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1419,$100a,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$7fff,$7d68,$4cc5,$0000	; ( 4 )
		DW	$4cc5,$11d9,$10ce,$0000	; ( 5 )
		DW	$1a1b,$26c4,$1521,$0000	; ( 6 )
		DW	$225b,$51f3,$2867,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG
		DW	$225b,$51f3,$2867,$0000	; ( 7 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	08_COL 地上 カラーデータ					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_08_COL
; ＜ ＢＧ： 08col.col ＞
		DW	$7d68,$11d9,$10ce,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1419,$100a,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$7fff,$7d68,$4cc5,$0000	; ( 4 )
		DW	$4cc5,$11d9,$10ce,$0000	; ( 5 )
		DW	$47ff,$26c4,$1521,$0000	; ( 6 )
		DW	$225b,$51f3,$2867,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
;;;KK;;;		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )BG 草カラー
		DW	$225b,$51f3,$2867,$0000	; ( 7 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	0e_COL 地上 カラーデータ					x
;x----------------------------------------------------------------------x
;x	ＯＢＪカラー２，３は、Ｌ７入り口出現デモ時、入れ替え		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_0e_COL
; ＜ ＢＧ： 0ecol.col ＞
		DW	$225b,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1419,$100a,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$7fff,$7d68,$4cc5,$0000	; ( 4 )
		DW	$4cc5,$11d9,$10ce,$0000	; ( 5 )
		DW	$47ff,$1e0c,$0104,$0000	; ( 6 )
		DW	$225b,$51f3,$2867,$0000	; ( 7 )
;;;;;;; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )デモ時入れ替え
;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )デモ時入れ替え
;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
;;;;;;		DW	$26c4,$0000,$1e0c,$47ff	; 鷲ＯＢＪ専用
;;;;;;		DW	$225b,$51f3,$2867,$0000	; ( 7 )BG
; ＜ ＯＢＪ： 0ecol.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$1e0c,$0104,$0000	; ( 5 )入口
		DW	$7fff,$0000,$1e0c,$47ff	; ( 6 )鷲、階段
		DW	$225b,$51f3,$2867,$0000	; ( 7 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	2B_COL 地上 カラーデータ					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_2B_COL
; ＜ ＢＧ： 2bcol.col ＞
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1419,$100a,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$7fff,$7d68,$4cc5,$0000	; ( 4 )
		DW	$11d9,$26c4,$1521,$0000	; ( 5 )
		DW	$47ff,$12ec,$15a6,$0000	; ( 6 )
		DW	$225b,$51f3,$2867,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG
		DW	$225b,$51f3,$2867,$0000	; ( 7 )BG

;;;;;;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;;;;;;x	迷いの森 入れ替えカラーデータ（１）				x
;;;;;;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;;;;;CL_MORI_1
;;;;;; ＜ ＢＧ： cz0.col BANK=1 ＞
;;;;;		DW	$5b33,$120a,$0465,$0000	; ( 0 )
;;;;;		DW	$5b33,$5212,$28a5,$0000	; ( 1 )
;;;;;		DW	$5b33,$1417,$100b,$0000	; ( 2 )
;;;;;		DW	$5b33,$11d9,$0cae,$0000	; ( 3 )
;;;;;		DW	$5b33,$48c1,$1c01,$0000	; ( 4 )
;;;;;		DW	$0972,$120a,$0465,$0000	; ( 5 )
;;;;;		DW	$5b33,$2a68,$1964,$0000	; ( 6 )
;;;;;		DW	$5bff,$5b33,$1901,$0000	; ( 7 )
;;;;;
;;;;;;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;;;;;;x	迷いの森 入れ替えカラーデータ（２）				x
;;;;;;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;;;;;CL_MORI_2
;;;;;; ＜ ＢＧ： cz0.col BANK=2 ＞
;;;;;		DW	$4b78,$1a67,$0cc3,$0000	; ( 0 )
;;;;;		DW	$4b78,$5212,$2886,$0000	; ( 1 )
;;;;;		DW	$4b78,$1417,$100a,$0000	; ( 2 )
;;;;;		DW	$4b78,$11d9,$0cae,$0000	; ( 3 )
;;;;;		DW	$4b78,$60c2,$2401,$0000	; ( 4 )
;;;;;		DW	$0d95,$1a67,$0cc3,$0000	; ( 5 )
;;;;;		DW	$4b78,$1eaa,$1985,$0000	; ( 6 )
;;;;;		DW	$6fff,$4b78,$1503,$0000	; ( 7 )
;;;;;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ＬＥＶＥＬ－１ ダンジョン カラーデータ				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;-----<	ダッシュで壊せる岩 >---------------------------------------------
CL_DUNGEON_1_0
; ＜ ＢＧ： lv_1col.col ＞
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$5a7f,$38df,$0c12,$0000	; ( 4 )
		DW	$7d87,$44e6,$760d,$0000	; ( 5 )
		DW	$7d87,$7e16,$388d,$0000	; ( 6 )
		DW	$4a52,$39ce,$2529,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$7d87,$7e16,$606c,$0000	; ( 6 )BG
;;;KK;;;		DW	$57ff,$11d9,$10ce,$0000	; ( 3 ) アイテムセレクトのＢＧ
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG

;-----<	横画面専用  >----------------------------------------------------
CL_DUNGEON_1Y
; ＜ ＢＧ： lv_1col.col BANK=2 ＞
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$5a7f,$38df,$0c12,$0000	; ( 4 )
		DW	$47ff,$7dea,$4105,$0000	; ( 5 )
		DW	$760d,$7d87,$44e6,$0000	; ( 6 )
		DW	$4a52,$39ce,$2529,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$760d,$7d87,$44e6,$0000	; ( 6 )BG
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG

;-----<	ダンジョン出入り口 >---------------------------------------------
CL_DUNGEON_1_1
; ＜ ＢＧ： lv_1col.col BANK=1 ＞
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$5a7f,$38df,$0c12,$0000	; ( 4 )
		DW	$7d87,$44e6,$760d,$0000	; ( 5 )
		DW	$47ff,$26c4,$19e2,$0ce0	; ( 6 )
		DW	$4a52,$39ce,$2529,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$47ff,$26c4,$19e2,$0ce0	; ( 6 )BG
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG

;-----<	中ボス(オバＱ) >---------------------------------------------
CL_DUNGEON_1_2
; ＜ ＢＧ： lv_1col.col BANK=0 ＞
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$5a7f,$38df,$0c12,$0000	; ( 4 )
		DW	$7d87,$44e6,$760d,$0000	; ( 5 )
		DW	$7d87,$7e16,$606c,$0000	; ( 6 )
		DW	$4a52,$39ce,$2529,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_oba.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$4eff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$4eff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$4eff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7d43,$4eff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$7fff,$0000,$341a,$6dbf	; ( 6 )
		DW	$6f7f,$0000,$418b,$6b17	; ( 7 )

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ＬＥＶＥＬ－２ ダンジョン カラーデータ				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_DUNGEON_2
; ＜ ＢＧ： l2col.col ＞
		DW	$7e94,$7dcd,$3465,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$7f12,$7ce7,$3400,$0000	; ( 4 )
		DW	$3aba,$0970,$08c9,$0000	; ( 5 )
		DW	$2e57,$11d9,$10ce,$0000	; ( 6 )
		DW	$5b18,$5e0a,$5ce0,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$2e57,$11d9,$10ce,$0000	; ( 6 )BG
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG
;
;-----<	横画面専用  >----------------------------------------------------
CL_DUNGEON_2Y
; ＜ ＢＧ： l2col.col ＞
		DW	$7e94,$7dcd,$3465,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$7f12,$7ce7,$3400,$0000	; ( 4 )
		DW	$3aba,$0970,$08c9,$0000	; ( 5 )
		DW	$2e57,$11d9,$10ce,$0000	; ( 6 )
		DW	$5b18,$5e0a,$5ce0,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$6233,$023f,$0533,$0000	; ( 1 )BG
		DW	$6233,$4b18,$2d4d,$0000	; ( 6 )BG

;
;-----<	ツボボス  >----------------------------------------------------
CL_DUNGEON_2_0
		DW	$6233,$0000,$0533,$023f	; ( 6 )BG
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ＬＥＶＥＬ－３ ダンジョン カラーデータ				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_DUNGEON_3_3
; ＜ ＢＧ： lv_3col.col BANK=3 ＞
		DW	$1610,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$4736,$264e,$0146,$0000	; ( 4 )
		DW	$1610,$0129,$1a72,$0000	; ( 5 )
		DW	$1610,$11d9,$10ce,$0000	; ( 6 )
		DW	$524f,$3967,$2cc2,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$1610,$11d9,$10ce,$0000	; ( 6 )BG
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG

;-----<	横画面専用  >----------------------------------------------------
CL_DUNGEON_3Y
; ＜ ＢＧ： lv_3col.col BANK=2 ＞
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$5a7f,$38df,$0c12,$0000	; ( 4 )
		DW	$47ff,$7dea,$4105,$0000	; ( 5 )
		DW	$760d,$7d87,$44e6,$0000	; ( 6 )
		DW	$4a52,$39ce,$2529,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$760d,$7d87,$44e6,$0000	; ( 6 )BG
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG

;-----<	入り口 ( GRNDPT = 51 で入れ替え ) >------------------------------
CL_DUNGEON_3_1
; ＜ ＢＧ： lv_3col.col BANK=1 ＞
		DW	$47ff,$7d45,$3ca4,$2062	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$4736,$264e,$0146,$0000	; ( 4 )
		DW	$1610,$0129,$1a72,$0000	; ( 5 )
		DW	$1610,$11d9,$10ce,$0000	; ( 6 )
		DW	$524f,$3967,$2cc2,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$1610,$11d9,$10ce,$0000	; ( 6 )BG
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ＬＥＶＥＬ－４ ダンジョン カラーデータ				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_DUNGEON_4
; ＜ ＢＧ： l4col.col BANK=0 ＞
		DW	$1652,$11d9,$10ce,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$73de,$3aa0,$1540,$0000	; ( 4 )
		DW	$1652,$156b,$04a5,$0000	; ( 5 )
		DW	$77e0,$3a00,$2140,$0000	; ( 6 )
		DW	$760d,$7d45,$3ca4,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$1652,$11d9,$10ce,$0000	; ( 0 )BG
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG

;-----<	横画面専用  >----------------------------------------------------
CL_DUNGEON_4Y
; ＜ ＢＧ： l4col.col BANK=0 ＞
		DW	$1652,$11d9,$10ce,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$73de,$3aa0,$1540,$0000	; ( 4 )
		DW	$1652,$156b,$04a5,$0000	; ( 5 )
		DW	$77e0,$3a00,$2140,$0000	; ( 6 )
		DW	$760d,$7d45,$3ca4,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$6233,$023f,$0533,$0000	; ( 1 )BG
		DW	$6233,$4b18,$2d4d,$0000	; ( 6 )BG

;-----<	７Ｂ用 ( GRNDPT = 78 で入れ替え ) >------------------------------
CL_DUNGEON_4_1
; ＜ ＢＧ： l4col.col BANK=1 ＞
		DW	$1652,$7e16,$606c,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$73de,$3aa0,$1540,$0000	; ( 4 )
		DW	$1652,$156b,$04a5,$0000	; ( 5 )
		DW	$77e0,$3a00,$2140,$0000	; ( 6 )
		DW	$760d,$7d45,$3ca4,$0000	; ( 7 )


;-----<	レベル４のラスト・ボス >-----------------------------------------
CL_DUNGEON_4_2
; ＜ ＯＢＪ： objcol_4.col ＞
;;;;;;;;		DW	$0000,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$0000,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$0000,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$0000,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$0000,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$0000,$7e03,$5c07,$0000	; ( 5 )
		DW	$0000,$1adf,$78ad,$0000	; ( 6 )
		DW	$0000,$0000,$1adf,$7fff	; ( 7 )

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ＬＥＶＥＬ－５ ダンジョン カラーデータ				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_DUNGEON_5_0
; ＜ ＢＧ： lv_5col.col BANK=0 ＞
		DW	$0274,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$52d7,$2991,$14ec,$0000	; ( 4 )
		DW	$0274,$016b,$2319,$0000	; ( 5 )
		DW	$0274,$11d9,$10ce,$0000	; ( 6 )
		DW	$760d,$7d45,$3ca4,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$0274,$11d9,$10ce,$0000	; ( 6 )BG
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG

;-----<	横画面専用  >----------------------------------------------------
CL_DUNGEON_5Y
; ＜ ＢＧ： lv_5col.col BANK=2 ＞
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$5a7f,$38df,$0c12,$0000	; ( 4 )
		DW	$7ed3,$7d87,$44e6,$0000	; ( 5 )
		DW	$47ff,$51f3,$44e6,$0000	; ( 6 )
		DW	$479b,$264e,$0146,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$6233,$023f,$0533,$0000	; ( 1 )BG
		DW	$6233,$4b18,$2d4d,$0000	; ( 6 )BG

;-----<	入り口 ( GRNDPT = a1 で入れ替え ) >------------------------------
CL_DUNGEON_5_1
; ＜ ＢＧ： lv_5col.col BANK=1 ＞
		DW	$0274,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$52d7,$2991,$14ec,$0000	; ( 4 )
		DW	$0274,$016b,$2319,$0000	; ( 5 )
		DW	$47ff,$1610,$0129,$00a5	; ( 6 )
		DW	$760d,$7d45,$3ca4,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$0274,$11d9,$10ce,$0000	; ( 6 )BG つぼカラー
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG

;-----<	剣で壊せる岩 ( GRNDPT = a0 で入れ替え ) >------------------------
CL_DUNGEON_5_3
; ＜ ＢＧ： lv_5col.col BANK=3 ＞
		DW	$0274,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$52d7,$2991,$14ec,$0000	; ( 4 )
		DW	$0274,$016b,$2319,$0000	; ( 5 )
		DW	$0274,$7e16,$606c,$0000	; ( 6 )
		DW	$760d,$7d45,$3ca4,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$0274,$7e16,$606c,$0000	; ( 6 )BG
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG

;-----<	ボス部屋 ( GRNDPT = 8B で入れ替え ) >------------------------
CL_DUNGEON_5_4
; ＜ ＯＢＪ： objcol_5.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$0274,$0000,$141f,$7fff	; ( 6 )
		DW	$47ff,$0000,$514e,$7fff	; ( 7 )

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ＬＥＶＥＬ－６ ダンジョン カラーデータ				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_DUNGEON_6
; ＜ ＢＧ： l6col.col BANK=0 ＞
		DW	$2e52,$11d9,$10ce,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$73de,$51be,$3014,$0000	; ( 4 )
		DW	$2e52,$01ad,$00c6,$0000	; ( 5 )
		DW	$363f,$255a,$14af,$0000	; ( 6 )
		DW	$760d,$7d45,$3ca4,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$2e52,$11d9,$10ce,$0000	; ( 0 )BG
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG
;;;KK;;;		DW	$47FF,$0000,$390C,$5E76	; ( 7 )

CL_DUNGEON_6_1
; ＜ ＯＢＪ： objcol_c.col ＞
		DW	$2e52,$11d9,$10ce,$0000	; ( 0 )BG
		DW	$47ff,$1417,$1008,$0000	; ( 2 )BG

;-----<	横画面専用  >----------------------------------------------------
CL_DUNGEON_6Y
; ＜ ＢＧ： l6col.col BANK=1 ＞
		DW	$47ff,$26ca,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$73de,$51be,$3014,$0000	; ( 4 )
		DW	$2e52,$01ad,$00c6,$0000	; ( 5 )
		DW	$363f,$255a,$14af,$0000	; ( 6 )
		DW	$760d,$7d45,$3ca4,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$363f,$255a,$14af,$0000	; ( 6 )BG
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ＬＥＶＥＬ－７ ダンジョン カラーデータ				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_DUNGEON_7_0
; ＜ ＢＧ： lv_7col.col BANK=0 ＞
		DW	$01a7,$71ec,$3ca4,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$6739,$4a52,$2529,$0000	; ( 4 )
		DW	$01a7,$0102,$022b,$0000	; ( 5 )
		DW	$01a7,$11d9,$10ce,$0000	; ( 6 )
		DW	$47ff,$29d6,$1d2e,$0c86	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$01a7,$11d9,$10ce,$0000	; ( 6 )BG
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG

;-----<	塔の外（ボス） >-------------------------------------------------
CL_DUNGEON_7_1
; ＜ ＢＧ： lv_7col.col BANK=1 ＞
		DW	$47ff,$0576,$0029,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$7fff,$7d8d,$7fff,$0000	; ( 4 )
		DW	$47ff,$1e0c,$0104,$0000	; ( 5 )
		DW	$7fff,$7fff,$0104,$0000	; ( 6 )
		DW	$47ff,$1e0c,$11d9,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$63fe,$32db,$25d3,$1cc7	; ( 3 )BG
		DW	$63fe,$5a94,$396a,$1cc7	; ( 1 )BG

;-----<	入り口 ( GRNDPT = 10e で入れ替え ) >-----------------------------
CL_DUNGEON_7_2
; ＜ ＢＧ： lv_7col.col BANK=2 ＞
		DW	$01a7,$71ec,$3ca4,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$6739,$4a52,$2529,$0000	; ( 4 )
		DW	$01a7,$0102,$022b,$0000	; ( 5 )
		DW	$01a7,$11d9,$10ce,$0000	; ( 6 )
		DW	$47ff,$492b,$2867,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$01a7,$11d9,$10ce,$0000	; ( 6 )BG
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG

;-----<	床ビュンの部屋( GRNDPT = 113 で入れ替え ) >-----------------------------
CL_DUNGEON_7_3
		DW	$01a7,$11d9,$10ce,$0000	; ( 6 )BG
		DW	$47ff,$4a52,$2529,$0000	; ( 1 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ＬＥＶＥＬ－８ ダンジョン カラーデータ				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_DUNGEON_8
; ＜ ＢＧ： l8col.col BANK=0 ＞
		DW	$029f,$11d9,$10ce,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$311f,$0015,$000b,$0000	; ( 4 )
		DW	$029f,$00df,$0053,$0000	; ( 5 )
		DW	$47ff,$093f,$0009,$0000	; ( 6 )
		DW	$63fe,$7f12,$7de5,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$029f,$11d9,$10ce,$0000	; ( 0 )BG
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG

;-----<	横画面専用  >----------------------------------------------------
CL_DUNGEON_8Y
; ＜ ＢＧ： l8col.col BANK=1 ＞
		DW	$47ff,$51f3,$2867,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$311f,$0015,$000b,$0000	; ( 4 )
		DW	$029f,$00df,$0053,$0000	; ( 5 )
		DW	$47ff,$093f,$0009,$0000	; ( 6 )
		DW	$63fe,$7f12,$7de5,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$6233,$023f,$0533,$0000	; ( 1 )BG
		DW	$6233,$4b18,$2d4d,$0000	; ( 6 )BG

;-----<	横画面専用２  >--------------------------------------------------
CL_DUNGEON_8Y2
; ＜ ＢＧ： l8col.col BANK=2 ＞
		DW	$47ff,$11d9,$10ce,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$311f,$0015,$000b,$0000	; ( 4 )
		DW	$029f,$00df,$0053,$0000	; ( 5 )
		DW	$47ff,$093f,$0009,$0000	; ( 6 )
		DW	$63fe,$7f12,$7de5,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
;;;KK;;;		DW	$47ff,$093f,$0009,$0000	; ( 6 )BG
;;;KK;;;		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG
		DW	$6233,$023f,$0533,$0000	; ( 1 )BG
		DW	$6233,$4b18,$2d4d,$0000	; ( 6 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	南の神殿		（６Ｆ）				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_KAO_6F
; ＜ ＯＢＪ： objcol_c.col ＞
		DW	$2e52,$0000,$24c5,$36d7	; ( 6 )
		DW	$47ff,$12bb,$0151,$0000	; ( 7 )

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	南の神殿		（７Ｆ）				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_KAO_7F
; ＜ ＯＢＪ： objcol_c.col ＞
		DW	$2e52,$11d9,$10ce,$0000	; ( 0 )BG
		DW	$47ff,$12bb,$0151,$0000	; ( 7 )


;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	南の神殿		（８Ｆ）				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_KAO_8F
; ＜ ＯＢＪ： objcol_c.col ＞
		DW	$2e52,$11d9,$10ce,$0000	; ( 0 )BG
		DW	$47ff,$12bb,$0151,$0000	; ( 7 )

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	服のダンジョン カラーデータ					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
NEW_DJCOL
; ＜ ＢＧ： fukucol.col ＞
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$4736,$264e,$0146,$0000	; ( 4 )
		DW	$318c,$2108,$4210,$0000	; ( 5 )
		DW	$318c,$11d9,$10ce,$0000	; ( 6 )
		DW	$47ff,$0e39,$00c7,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )BG
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	せいなるタマゴ カラーデータ					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_DUNGEON_EGG
; ＜ ＢＧ： tamacol.col ＞
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$6696,$55b1,$38a9,$0000	; ( 4 )
		DW	$3967,$2cc2,$4a0d,$0000	; ( 5 )
		DW	$7fff,$7fff,$7fff,$0000	; ( 6 )
		DW	$7d87,$2c7c,$000f,$0808	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$47ff,$093f,$0009,$0000	; ( 6 )BG
		DW	$0000,$1b9b,$4590,$0000	; はしご

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	釣り堀 カラーデータ						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_TURI
; ＜ ＢＧ： turi_ol2.col ＞
		DW	$63fe,$7e6f,$7d04,$0822	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$7ff4,$11d9,$10ce,$0000	; ( 4 )
		DW	$7ff4,$3383,$1225,$0822	; ( 5 )
		DW	$5755,$428b,$7d04,$0822	; ( 6 )
		DW	$63fe,$2e58,$7d04,$0822	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$63fe,$2eba,$1550,$0822	; ( 3 )BG
		DW	$6f7f,$1e52,$0ce5,$0000	; ( 7 )


;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	橋の下の釣りオヤジ カラーデータ					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_TURI2
; ＜ ＢＧ： turi_ol2.col ＞
		DW	$63fe,$7e6f,$7d04,$0822	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$7ff4,$11d9,$10ce,$0000	; ( 4 )
		DW	$7ff4,$3383,$1225,$0822	; ( 5 )
		DW	$5755,$428b,$7d04,$0822	; ( 6 )
		DW	$63fe,$2e58,$7d04,$0822	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$7fff,$0000,$4471,$7d7f	; ( 7 ) カメラ小僧
;;;KK;;;		DW	$6f7f,$1e52,$0ce5,$0000	; ( 7 )

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	マンボウの洞窟							x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_MANBOU
		DW	$63fe,$7e6f,$7d04,$0822	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$7ff4,$11d9,$10ce,$0000	; ( 4 )
		DW	$7ff4,$3383,$1225,$0822	; ( 5 )
		DW	$5755,$428b,$7d04,$0822	; ( 6 )
		DW	$63fe,$2e58,$7d04,$0822	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
		DW	$63fe,$2eba,$1550,$0822	; ( 3 )BG
		DW	$47ff,$1419,$100a,$0000	; ( 7 )

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	マムーの洞窟							x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_MANUUUU
; ＜ ＢＧ： idotype_0.col ＞
		DW	$0e39,$51f3,$2867,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$3b7f,$11d9,$10ce,$0000	; ( 4 )
		DW	$0e39,$1911,$63fe,$0000	; ( 5 )
		DW	$760d,$7d45,$3ca4,$0000	; ( 6 )
		DW	$0e39,$26c4,$1521,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
		DW	$0e39,$26c4,$1521,$0000	; ( 7 )BG
		DW	$47ff,$1419,$100a,$0000	; ( 7 )

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	井戸型ダンジョン タイプ０ カラーデータ				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_IDOTYPE0
; ＜ ＢＧ： idotype_0.col ＞
		DW	$0e39,$51f3,$2867,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$3b7f,$11d9,$10ce,$0000	; ( 4 )
		DW	$0e39,$1911,$63fe,$0000	; ( 5 )
		DW	$760d,$7d45,$3ca4,$0000	; ( 6 )
		DW	$0e39,$26c4,$1521,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$0e39,$26c4,$1521,$0000	; ( 7 )BG
		DW	$0e39,$51f3,$2867,$0000	; ( 0 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	井戸型ダンジョン タイプ１ カラーデータ				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_IDOTYPE1
; ＜ ＢＧ： idotype_1.col ＞
		DW	$0e39,$51f3,$2867,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$3b7f,$11d9,$10ce,$0000	; ( 4 )
		DW	$0e39,$1911,$63fe,$0000	; ( 5 )
		DW	$0e39,$7eb5,$7d47,$0000	; ( 6 )
		DW	$0e39,$26c4,$1521,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$0e39,$26c4,$1521,$0000	; ( 7 )BG
		DW	$0e39,$51f3,$2867,$0000	; ( 0 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	井戸型ダンジョン タイプ２ カラーデータ				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_IDOTYPE2
; ＜ ＢＧ： idotype_2.col ＞
		DW	$0e39,$51f3,$2867,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$3b7f,$7cff,$2810,$0000	; ( 4 )
		DW	$0e39,$1911,$63fe,$0000	; ( 5 )
		DW	$760d,$7d45,$3ca4,$0000	; ( 6 )
		DW	$0e39,$26c4,$1521,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$0e39,$26c4,$1521,$0000	; ( 7 )BG
		DW	$0e39,$51f3,$2867,$0000	; ( 0 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	井戸型ダンジョン タイプ２ カラーデータ				x
;x			子悪魔部屋					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_IDOTYPE6
; ＜ ＢＧ： idotype_2.col ＞
		DW	$0e39,$51f3,$2867,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$3b7f,$7cff,$2810,$0000	; ( 4 )
		DW	$0e39,$1911,$63fe,$0000	; ( 5 )
		DW	$760d,$7d45,$3ca4,$0000	; ( 6 )
		DW	$0e39,$26c4,$1521,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$0e39,$26c4,$1521,$0000	; ( 7 )BG
		DW	$6233,$011a,$0fff,$7fff	; ( 7 )

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	井戸型ダンジョン タイプ３ カラーデータ				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_IDOTYPE3
; ＜ ＢＧ： idotype_3.col ＞
		DW	$0e39,$51f3,$2867,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$3b7f,$11d9,$10ce,$0000	; ( 4 )
		DW	$0e39,$1911,$63fe,$0000	; ( 5 )
		DW	$760d,$7d45,$3ca4,$0000	; ( 6 )
		DW	$0e39,$03f7,$00c7,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$0e39,$26c4,$1521,$0000	; ( 7 )BG
		DW	$0e39,$51f3,$2867,$0000	; ( 0 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	井戸型ダンジョン タイプ４ カラーデータ				x
;x					風見鶏の地下			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_IDOTYPE4
; ＜ ＢＧ： idotype_0.col ＞
		DW	$0e39,$51f3,$2867,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$3b7f,$11d9,$10ce,$0000	; ( 4 )
		DW	$0e39,$1911,$63fe,$0000	; ( 5 )
		DW	$760d,$7d45,$3ca4,$0000	; ( 6 )
		DW	$0e39,$26c4,$1521,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$0000,$5c07,$7e03,$7fff	; ( 6 )
		DW	$0000,$0000,$7e03,$7fff	; ( 7 )

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	井戸型ダンジョン タイプ０ カラーデータ				x
;x			見通しレンズ					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_IDOTYPE5
; ＜ ＢＧ： idotype_0.col ＞
		DW	$0e39,$51f3,$2867,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$3b7f,$11d9,$10ce,$0000	; ( 4 )
		DW	$0e39,$1911,$63fe,$0000	; ( 5 )
		DW	$760d,$7d45,$3ca4,$0000	; ( 6 )
		DW	$0e39,$26c4,$1521,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$0e39,$26c4,$1521,$0000	; ( 7 )BG
		DW	$0e39,$7eae,$7c00,$0000	; ( 7 )

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	モリブリンのアジト カラーデータ					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_MORIBURIN
; ＜ ＢＧ： ajitocol.col ＞
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$4736,$264e,$0146,$0000	; ( 4 )
		DW	$1610,$0129,$1a72,$0000	; ( 5 )
		DW	$1610,$51f3,$2867,$0000	; ( 6 )
		DW	$264e,$0146,$4736,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$264e,$0146,$4736,$0000	; ( 7 )BG
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	家型ダンジョン タイプ０ カラーデータ				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_IETYPE0
; ＜ ＢＧ： heyall_a.col BANK=0 ＞
		DW	$47ff,$2efd,$15b5,$0000	; ( 0 )
		DW	$47ff,$5231,$28c5,$0000	; ( 1 )
		DW	$47ff,$2c7f,$140e,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$09f4,$7fff,$09f4,$0000	; ( 4 )
		DW	$45fe,$2c7f,$140e,$0000	; ( 5 )
		DW	$2efd,$11d9,$10ce,$0000	; ( 6 )
		DW	$2efd,$03ff,$01d3,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$2efd,$11d9,$10ce,$0000	; ( 6 )BG
		DW	$47ff,$5231,$28c5,$0000	; ( 1 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	家型ダンジョン タイプ１ カラーデータ				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_IETYPE1
; ＜ ＢＧ： heyall_a.col BANK=1 ＞
		DW	$47ff,$2efd,$15b5,$0000	; ( 0 )
		DW	$47ff,$5231,$28c5,$0000	; ( 1 )
		DW	$47ff,$2c7f,$140e,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$09f4,$7fff,$09f4,$0000	; ( 4 )
		DW	$760d,$7d45,$3ca4,$0000	; ( 5 )
		DW	$2efd,$11d9,$10ce,$0000	; ( 6 )
		DW	$2efd,$03ff,$01d3,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$2efd,$11d9,$10ce,$0000	; ( 6 )BG
		DW	$47ff,$5231,$28c5,$0000	; ( 1 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	家型ダンジョン タイプ２ カラーデータ				x
;x				アイテムショップ			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_IETYPE2
; ＜ ＢＧ： heyall_a.col BANK=2 ＞
		DW	$47ff,$2efd,$15b5,$0000	; ( 0 )
		DW	$47ff,$5231,$28c5,$0000	; ( 1 )
		DW	$47ff,$2c7f,$140e,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$09f4,$7fff,$09f4,$0000	; ( 4 )
		DW	$63fe,$63fe,$63fe,$63fe	; ( 5 )
		DW	$2efd,$7f36,$7d45,$0000	; ( 6 )
		DW	$63fe,$26c4,$1521,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$2efd,$7f36,$7d45,$0000	; ( 6 )BG
		DW	$47ff,$5231,$28c5,$0000	; ( 1 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	家型ダンジョン タイプ３ カラーデータ				x
;x		流行の店（ＵＦＯキャッチャー）				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_IETYPE3
; ＜ ＢＧ： heyall_a.col BANK=3 ＞
		DW	$47ff,$2efd,$15b5,$0000	; ( 0 )
		DW	$47ff,$5231,$28c5,$0000	; ( 1 )
		DW	$47ff,$2c7f,$140e,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$281a,$7fff,$281a,$0000	; ( 4 )
		DW	$3f4f,$26c4,$1521,$0000	; ( 5 )
		DW	$2efd,$11d9,$10ce,$0000	; ( 6 )
		DW	$63fe,$26c4,$1521,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$2efd,$11d9,$10ce,$0000	; ( 6 )BG
		DW	$47ff,$7fff,$0642,$0000	; ( 7 )

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	家型ダンジョン タイプ４ カラーデータ				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_IETYPE4
; ＜ ＢＧ： heyall_b.col BANK=0 ＞
		DW	$47ff,$2efd,$15b5,$0000	; ( 0 )
		DW	$47ff,$5231,$28c5,$0000	; ( 1 )
		DW	$47ff,$2c7f,$140e,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$7d45,$7fff,$7d45,$0000	; ( 4 )
		DW	$45fe,$2c7f,$140e,$0000	; ( 5 )
		DW	$2efd,$11d9,$10ce,$0000	; ( 6 )
		DW	$2efd,$03ff,$01d3,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$2efd,$11d9,$10ce,$0000	; ( 6 )BG
		DW	$47ff,$5231,$28c5,$0000	; ( 1 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	家型ダンジョン タイプ５ カラーデータ				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_IETYPE5
; ＜ ＢＧ： heyall_b.col BANK=1 ＞
		DW	$47ff,$2efd,$15b5,$0000	; ( 0 )
		DW	$47ff,$5231,$28c5,$0000	; ( 1 )
		DW	$47ff,$2c7f,$140e,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$09f4,$7fff,$09f4,$0000	; ( 4 )
		DW	$3f4f,$26c4,$1521,$0000	; ( 5 )
		DW	$2efd,$11d9,$10ce,$0000	; ( 6 )
		DW	$2efd,$03ff,$01d3,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$2efd,$11d9,$10ce,$0000	; ( 6 )BG
		DW	$47ff,$5231,$28c5,$0000	; ( 1 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	家型ダンジョン タイプ６ カラーデータ				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_IETYPE6
; ＜ ＢＧ： heyall_b.col BANK=2 ＞
		DW	$47ff,$2efd,$15b5,$0000	; ( 0 )
		DW	$47ff,$5231,$28c5,$0000	; ( 1 )
		DW	$47ff,$2c7f,$140e,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$281a,$7fff,$281a,$0000	; ( 4 )
		DW	$0e58,$1930,$63fe,$0000	; ( 5 )
		DW	$2efd,$11d9,$10ce,$0000	; ( 6 )
		DW	$2efd,$03ff,$01d3,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$2efd,$11d9,$10ce,$0000	; ( 6 )BG
		DW	$47ff,$5231,$28c5,$0000	; ( 1 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	家型ダンジョン タイプ７ カラーデータ				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_IETYPE7
; ＜ ＢＧ： heyall_b.col BANK=3 ＞
		DW	$47ff,$2efd,$15b5,$0000	; ( 0 )
		DW	$47ff,$5231,$28c5,$0000	; ( 1 )
		DW	$47ff,$2c7f,$140e,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$0203,$7fff,$0203,$0000	; ( 4 )
		DW	$760d,$7d45,$3ca4,$0000	; ( 5 )
		DW	$2efd,$11d9,$10ce,$0000	; ( 6 )
		DW	$2efd,$03ff,$01d3,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$2efd,$11d9,$10ce,$0000	; ( 6 )BG
		DW	$47ff,$5231,$28c5,$0000	; ( 1 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	家型ダンジョン タイプ８ カラーデータ				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_IETYPE8
; ＜ ＢＧ： heyall_c.col BANK=0 ＞
		DW	$47ff,$2efd,$15b5,$0000	; ( 0 )
		DW	$47ff,$5231,$28c5,$0000	; ( 1 )
		DW	$47ff,$2c7f,$140e,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$281a,$7fff,$281a,$0000	; ( 4 )
		DW	$45fe,$2c7f,$140e,$0000	; ( 5 )
		DW	$2efd,$11d9,$10ce,$0000	; ( 6 )
		DW	$2efd,$03ff,$01d3,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$2efd,$11d9,$10ce,$0000	; ( 6 )BG
		DW	$47ff,$5231,$28c5,$0000	; ( 1 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	家型ダンジョン タイプ９ カラーデータ				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_IETYPE9
; ＜ ＢＧ： heyall_c.col BANK=1 ＞
		DW	$47ff,$2efd,$15b5,$0000	; ( 0 )
		DW	$47ff,$5231,$28c5,$0000	; ( 1 )
		DW	$47ff,$2c7f,$140e,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$3c15,$7fff,$3c15,$0000	; ( 4 )
		DW	$7dbf,$5c17,$300c,$0000	; ( 5 )
		DW	$2efd,$11d9,$10ce,$0000	; ( 6 )
		DW	$2efd,$03ff,$01d3,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$2efd,$11d9,$10ce,$0000	; ( 6 )BG
		DW	$47ff,$5231,$28c5,$0000	; ( 1 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	家型ダンジョン タイプＡ カラーデータ				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_IETYPEA
; ＜ ＢＧ： heyall_c.col BANK=2 ＞
		DW	$47ff,$2efd,$15b5,$0000	; ( 0 )
		DW	$47ff,$5231,$28c5,$0000	; ( 1 )
		DW	$47ff,$2c7f,$140e,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$281a,$7fff,$281a,$0000	; ( 4 )
		DW	$7dbf,$5c17,$300c,$0000	; ( 5 )
		DW	$2efd,$11d9,$10ce,$0000	; ( 6 )
		DW	$2efd,$03ff,$01d3,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$2efd,$11d9,$10ce,$0000	; ( 6 )BG
		DW	$47ff,$5231,$28c5,$0000	; ( 1 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	家型ダンジョン タイプＢ カラーデータ				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_IETYPEB
; ＜ ＢＧ： heyall_a.col BANK=0 ＞
		DW	$47ff,$2efd,$15b5,$0000	; ( 0 )
		DW	$47ff,$5231,$28c5,$0000	; ( 1 )
		DW	$47ff,$2c7f,$140e,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$09f4,$7fff,$09f4,$0000	; ( 4 )
		DW	$45fe,$2c7f,$140e,$0000	; ( 5 )
		DW	$2efd,$11d9,$10ce,$0000	; ( 6 )
		DW	$2efd,$03ff,$01d3,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ７番だけoc_pine.colの６番　＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$2efd,$11d9,$10ce,$0000	; ( 6 )BG
		DW	$7fff,$05ff,$22a2,$0000	; ( 6 )

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	家型ダンジョン タイプＸＸ カラーデータ				x
;x			４っ子の母親の家				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_IETYPEC
; ＜ ＢＧ： heyall_a.col BANK=1 ＞
		DW	$47ff,$2efd,$15b5,$0000	; ( 0 )
		DW	$47ff,$5231,$28c5,$0000	; ( 1 )
		DW	$47ff,$2c7f,$140e,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$09f4,$7fff,$09f4,$0000	; ( 4 )
		DW	$760d,$7d45,$3ca4,$0000	; ( 5 )
		DW	$2efd,$11d9,$10ce,$0000	; ( 6 )
		DW	$2efd,$03ff,$01d3,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$2efd,$11d9,$10ce,$0000	; ( 6 )BG
		DW	$47ff,$2c7f,$140e,$0000	; ( 7 )

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	家型ダンジョン タイプ６ カラーデータ				x
;x			おしゃれワンワンの部屋				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_IETYPED
; ＜ ＢＧ： heyall_b.col BANK=2 ＞
		DW	$47ff,$2efd,$15b5,$0000	; ( 0 )
		DW	$47ff,$5231,$28c5,$0000	; ( 1 )
		DW	$47ff,$2c7f,$140e,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$281a,$7fff,$281a,$0000	; ( 4 )
		DW	$0e58,$1930,$63fe,$0000	; ( 5 )
		DW	$2efd,$11d9,$10ce,$0000	; ( 6 )
		DW	$2efd,$03ff,$01d3,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
		DW	$2efd,$11d9,$10ce,$0000	; ( 6 )BG
;;;KK;;;		DW	$47ff,$5231,$28c5,$0000	; ( 7 )
		DW	$47ff,$7FFF,$5231,$0000	; ( 7 )

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	家型ダンジョン タイプ１ カラーデータ				x
;x			バナナ屋					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_IETYPEE
; ＜ ＢＧ： heyall_a.col BANK=1 ＞
		DW	$47ff,$2efd,$15b5,$0000	; ( 0 )
		DW	$47ff,$5231,$28c5,$0000	; ( 1 )
		DW	$47ff,$2c7f,$140e,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$09f4,$7fff,$09f4,$0000	; ( 4 )
		DW	$760d,$7d45,$3ca4,$0000	; ( 5 )
		DW	$2efd,$11d9,$10ce,$0000	; ( 6 )
		DW	$2efd,$03ff,$01d3,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$2efd,$11d9,$10ce,$0000	; ( 6 )BG
		DW	$47ff,$0fbe,$0213,$0000	; ( 7 )

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	家型ダンジョン タイプ１ カラーデータ				x
;x			クリスティーヌの家				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_IETYPEF
; ＜ ＢＧ： heyall_a.col BANK=1 ＞
		DW	$47ff,$2efd,$15b5,$0000	; ( 0 )
		DW	$47ff,$5231,$28c5,$0000	; ( 1 )
		DW	$47ff,$2c7f,$140e,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$09f4,$7fff,$09f4,$0000	; ( 4 )
		DW	$760d,$7d45,$3ca4,$0000	; ( 5 )
		DW	$2efd,$11d9,$10ce,$0000	; ( 6 )
		DW	$2efd,$03ff,$01d3,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$2efd,$11d9,$10ce,$0000	; ( 6 )BG
		DW	$47ff,$7fff,$083d,$0000	; ( 7 )

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	カナレット城 タイプ０ カラーデータ				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_SHIROTYPE0
; ＜ ＢＧ： shirocol.col BANK=0 ＞
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$035a,$0252,$014a,$0000	; ( 4 )
		DW	$7d87,$44e6,$760d,$0000	; ( 5 )
		DW	$7d87,$11d9,$10ce,$0000	; ( 6 )
		DW	$7d87,$38df,$0c12,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$7d87,$11d9,$10ce,$0000	; ( 6 )BG
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	カナレット城 タイプ１ カラーデータ				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_SHIROTYPE1
; ＜ ＢＧ： shirocol.col BANK=1 ＞
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$7ff4,$3383,$1521,$0822	; ( 4 )
		DW	$7fff,$3615,$100c,$0000	; ( 5 )
		DW	$47ff,$1e52,$0ce5,$0000	; ( 6 )
		DW	$3383,$11d9,$10ce,$0822	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$47ff,$1e52,$0ce5,$0000	; ( 6 )BG
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	夢のほこら							x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_YUMENOHOKORA
; ＜ ＢＧ： onemucol.col BANK=0 ＞
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$4736,$264e,$0146,$0000	; ( 4 )
		DW	$1610,$0129,$1a72,$0000	; ( 5 )
		DW	$524f,$3967,$2cc2,$0000	; ( 6 )
		DW	$1610,$26c4,$1521,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
		DW	$47ff,$0000,$5231,$47ff	; ( 6 )布団
		DW	$47ff,$1419,$100a,$0000	; ( 7 )

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	眠い洞窟  タイプ０ カラーデータ					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_ONEMUTYPE0
; ＜ ＢＧ： onemucol.col BANK=0 ＞
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$4736,$264e,$0146,$0000	; ( 4 )
		DW	$1610,$0129,$1a72,$0000	; ( 5 )
		DW	$524f,$3967,$2cc2,$0000	; ( 6 )
		DW	$1610,$26c4,$1521,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$47ff,$0000,$5231,$47ff	; ( 6 )布団
		DW	$47ff,$0000,$22a2,$47ff	; ( 7 )うなされリンク

CL_ONEMUTYPE0_red
; ＜ ＢＧ： onemucol.col BANK=0 ＞
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$4736,$264e,$0146,$0000	; ( 4 )
		DW	$1610,$0129,$1a72,$0000	; ( 5 )
		DW	$524f,$3967,$2cc2,$0000	; ( 6 )
		DW	$1610,$26c4,$1521,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$47ff,$0000,$5231,$47ff	; ( 6 )布団
		DW	$47ff,$0000,$143f,$47ff	; ( 7 )うなされリンク

CL_ONEMUTYPE0_blue
; ＜ ＢＧ： onemucol.col BANK=0 ＞
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$4736,$264e,$0146,$0000	; ( 4 )
		DW	$1610,$0129,$1a72,$0000	; ( 5 )
		DW	$524f,$3967,$2cc2,$0000	; ( 6 )
		DW	$1610,$26c4,$1521,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$47ff,$0000,$5231,$47ff	; ( 6 )布団
		DW	$47ff,$0000,$7e03,$47ff	; ( 7 )うなされリンク

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	眠い洞窟  タイプ１ カラーデータ					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_ONEMUTYPE1
; ＜ ＢＧ： onemucol.col BANK=1 ＞
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$2867,$7d87,$44e6,$0000	; ( 4 )
		DW	$2867,$1c04,$201f,$0000	; ( 5 )
		DW	$2867,$26c4,$1562,$0000	; ( 6 )
		DW	$2867,$03ff,$01ad,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$2867,$26c4,$1562,$0000	; ( 6 )BG
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	カメラ屋 カラーデータ						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_CAMERA
; ＜ ＢＧ： camera.col ＞
		DW	$47ff,$2efd,$15b5,$0000	; ( 0 )
		DW	$63fe,$5231,$28c5,$0000	; ( 1 )
		DW	$63fe,$2c7f,$140e,$0000	; ( 2 )
		DW	$63fe,$11d9,$10ce,$0000	; ( 3 )
		DW	$09f4,$7fff,$09f4,$0000	; ( 4 )
		DW	$3f4f,$26c4,$1521,$0000	; ( 5 )
		DW	$2efd,$7f36,$7d45,$0000	; ( 6 )
		DW	$2efd,$11d9,$10ce,$0000	; ( 7 )
; ＜ ＯＢＪ： camera.col ＞
;;;KK;;;		DW	$7fe0,$63fe,$5231,$0000	; ( 6 )
		DW	$7fff,$0000,$4471,$7d7f	; ( 6 )
		DW	$7fff,$0000,$5231,$63fe	; ( 7 )

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	うなされリンク  カラーデータ					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_UNASARE
; ＜ ＢＧ： heyall_a.col BANK=0 ＞
		DW	$47ff,$2efd,$15b5,$0000	; ( 0 )
		DW	$47ff,$5231,$28c5,$0000	; ( 1 )
		DW	$47ff,$2c7f,$140e,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$09f4,$7fff,$09f4,$0000	; ( 4 )
		DW	$45fe,$2c7f,$140e,$0000	; ( 5 )
		DW	$2efd,$11d9,$10ce,$0000	; ( 6 )
		DW	$2efd,$03ff,$01d3,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$47ff,$0000,$5231,$47ff	; ( 6 )布団
		DW	$47ff,$0000,$22a2,$47ff	; ( 7 )うなされリンク

CL_UNASARE_red
; ＜ ＢＧ： heyall_a.col BANK=0 ＞
		DW	$47ff,$2efd,$15b5,$0000	; ( 0 )
		DW	$47ff,$5231,$28c5,$0000	; ( 1 )
		DW	$47ff,$2c7f,$140e,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$09f4,$7fff,$09f4,$0000	; ( 4 )
		DW	$45fe,$2c7f,$140e,$0000	; ( 5 )
		DW	$2efd,$11d9,$10ce,$0000	; ( 6 )
		DW	$2efd,$03ff,$01d3,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$47ff,$0000,$5231,$47ff	; ( 6 )布団
		DW	$47ff,$0000,$143f,$47ff	; ( 7 )うなされリンク

CL_UNASARE_blue
; ＜ ＢＧ： heyall_a.col BANK=0 ＞
		DW	$47ff,$2efd,$15b5,$0000	; ( 0 )
		DW	$47ff,$5231,$28c5,$0000	; ( 1 )
		DW	$47ff,$2c7f,$140e,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$09f4,$7fff,$09f4,$0000	; ( 4 )
		DW	$45fe,$2c7f,$140e,$0000	; ( 5 )
		DW	$2efd,$11d9,$10ce,$0000	; ( 6 )
		DW	$2efd,$03ff,$01d3,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$47ff,$0000,$5231,$47ff	; ( 6 )布団
		DW	$47ff,$0000,$7e03,$47ff	; ( 7 )うなされリンク

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	寝てるタリン カラーデータ					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_NERUTARIN
; ＜ ＢＧ： heyall_a.col BANK=0 ＞
		DW	$47ff,$2efd,$15b5,$0000	; ( 0 )
		DW	$47ff,$5231,$28c5,$0000	; ( 1 )
		DW	$47ff,$2c7f,$140e,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$09f4,$7fff,$09f4,$0000	; ( 4 )
		DW	$45fe,$2c7f,$140e,$0000	; ( 5 )
		DW	$2efd,$11d9,$10ce,$0000	; ( 6 )
		DW	$2efd,$03ff,$01d3,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$2efd,$11d9,$10ce,$0000	; ( 6 )BG
		DW	$47ff,$0000,$5231,$47ff	; ( 7 )布団




;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	カラーデータアドレス テーブル（ BLNKFG に対応 ）		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
COLOR_ADRS
		DW	$0000		; ( 1) １画面セット？
		DW	$0000		; ( 2) ＶＲＡＭクリア
		DW	CL_BANKST	; ( 3)
		DW	CL_BANKS2	; ( 4)
		DW	$0000		; ( 5)
		DW	$0000		; ( 6) ダンジョン BG bank set !
		DW	$0000		; ( 7) 地上 BG bank set !
		DW	CL_V_RAMB	; ( 8) プレイヤーセレクト
		DW	$0000		; ( 9)
		DW	CL_VRRET	; ( A)
		DW	CL_GMAPBKST	; ( B) 全体マップ画面
		DW	CL_VRRET	; ( C) ODMBKST
		DW	CL_GOVBKST	; ( D) ゲームオーバー
		DW	$0000		; ( E) 全体マップ画面
		DW	$0000		; ( F) V_RAMD
		DW	CL_OPBKST	; (10) Opening bank(Sea & Mt.) set !
		DW	CL_OPBKS2	; (11) Opening bank(ZELDA) set !
		DW	CL_PEACHBKST	; (12) ピーチ写真！
		DW	CL_LOVEBKST	; (13) 海岸デモ！
		DW	CL_KAB1BKST	; (14) 壁画！
;--- Ending - -
		DW	CL_ENDCHA	; (15) エンディング A CHR.TR
		DW	CL_ENDCHB2	; (16) エンディング B2 CHR.TR
		DW	CL_ENDCHC	; (17) エンディング C  CHR.TR
		DW	CL_ENDCHB	; (18) エンディング B  CHR.TR
		DW	CL_ENDCHD	; (19) エンディング D  CHR.TR
		DW	CL_ENDCHE	; (1A) エンディング E  CHR.TR
		DW	CL_ENDCHF	; (1B) エンディング F  CHR.TR
		DW	CL_ENDCHG	; (1C) エンディング G  CHR.TR
;
		DW	CL_ENDCHA1	; (1D) エンディング A(地上）CHR.TR
		DW	CL_ENDCHYM	; (1E) エンディング A(山遠景）CHR.TR
		DW	CL_ENDCHA2	; (1F) エンディング A2(LINK OBJ) CHR.TR
;- - - -
		DW	CL_KABABKST	; (20) カバの絵！
		DW	CL_TOUBGCH	; (21) ７塔デモ！
;
		DW	$0000		; (22) かもめまりん（ＣＧＢ専用）
		DW	$0000		; (23) エンディングメッセージ（ＣＧＢ専用）
;
;;;KK;;;ItemSelColNo	DW	CL_ITEMSEL	; (22) アイテムセレクト
;;;KK;;;;
;;;KK;;;ITSELCOL	EQU	(ItemSelColNo-COLOR_ADRS)/2
;
;
;------------------------------------------------------------------------
;	BLNKFG ラベルＮｏ
;------------------------------------------------------------------------
;RBGST	EQU	1
;VRMCL	EQU	2
;BKCHG	EQU	3
;BKCH2	EQU	4
;BKCH3	EQU	5
;DJBST	EQU	6
;GRBST	EQU	7	; Ground map bank set
;VRMBT	EQU	8
;BNKTR	EQU	$9	; Game Room all bank set !
;TLCHG	EQU	$A	; Title bank
;GMBST	EQU	$B	; Ground map bank
;ODCHG	EQU	$0C	; Title demo bank 
;GVCHG	EQU	$0D	; Game over bank 
;GRCST	EQU	$0E	; Ground map unit BG set
;VRMB2	EQU	$0F	; 
;OPBST	EQU	$10	; Opening BANK 1 (Sea & Mt.)Set !
;OPBS2	EQU	$11	; Opening BANK 2 (ZELDA)Set !
;PECCD	EQU	$12	; ピーチ写真！
;LOVCD	EQU	$13	; 海岸デモ！
;KB1CD	EQU	$14
;;------Ending-------- 
;ECHA	EQU	$15	; エンディング A CHR.Tr. 
;ECHB2	EQU	$16	; エンディング B2 CHR.Tr. 
;ECHC	EQU	$17	; エンディング C CHR.Tr. 
;ECHB	EQU	$18	; エンディング B CHR.Tr. 
;ECHD	EQU	$19	; エンディング D CHR.Tr. 
;ECHE	EQU	$1A	; エンディング E CHR.Tr. 
;ECHF	EQU	$1B	; エンディング F CHR.Tr. 
;ECHG	EQU	$1C	; エンディング G CHR.Tr. 
;;- - - - -
;ECHA1	EQU	$1D	; エンディング A (地上） CHR.Tr.
;ECHYM	EQU	$1E	; エンディング A (卵山全景） CHR.Tr.
;ECHA2	EQU	$1F	; エンディング A2 (LINK OBJ） CHR.Tr.
;;-----------------------------------
;KABCD	EQU	$20
;TOUCD	EQU	$21
;;-----------------------------------
;;
;SPTST	EQU	$14	; TEST TEST shibahara big test !
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	カラー 仮データ							x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_V_RAMC		; ( 2)
CL_BANKST		; ( 3)
CL_BANKS2		; ( 4)
CL_BANKS3		; ( 5)
CL_VRRET		; ( A)
CL_V_RAMD		; ( F)

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	オープニング１（嵐の海）					x
;x	オープニング２（リンクあやうし！）				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_OPBKST
; ＜ ＢＧ： open1c.col ＞
		DW	$3228,$13be,$3100,$0000	; ( 0 )
		DW	$1915,$31a2,$480a,$0000	; ( 1 )
		DW	$1915,$4b1f,$480a,$0000	; ( 2 )
		DW	$1915,$4b1f,$31a2,$0000	; ( 3 )
		DW	$121f,$27fe,$480a,$0000	; ( 4 )
		DW	$21bf,$4b1f,$480a,$0000	; ( 5 )
		DW	$5480,$39aa,$2947,$14e3	; ( 6 )
		DW	$61e3,$7fff,$5c83,$3402	; ( 7 )
; ＜ ＯＢＪ：arasi.col ＞
		DW	$7e40,$0000,$0642,$4eff	; ( 0 )
		DW	$7e40,$5a94,$175f,$7ee0	; ( 1 )
		DW	$7e40,$4986,$6f38,$2820	; ( 2 )
		DW	$7e40,$0000,$1a39,$4eff	; ( 3 )
		DW	$7fff,$00f2,$2a19,$175f	; ( 4 )
		DW	$7fff,$108b,$2a19,$175f	; ( 5 )
		DW	$0000,$0000,$0000,$0000	; ( 6 )
		DW	$0000,$0000,$0000,$0000	; ( 7 )

;==============	ＺＣＯＬＳＵＢ．Ｓに移動 ==============
;;;;;;;;;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;;;;;;;;;x	オープニング３（玉子山ふもと）					x
;;;;;;;;;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;;;;;;;;CL_OPBKS2
;;;;;;;;; ＜ ＢＧ： open0c.col ＞
;;;;;;;;		DW	$7fff,$14dd,$1417,$0000	; ( 0 )
;;;;;;;;		DW	$7fff,$131f,$11df,$0000	; ( 1 )
;;;;;;;;		DW	$7fff,$2b2c,$0851,$0000	; ( 2 )
;;;;;;;;		DW	$7fff,$7d8d,$1ca0,$4c9d	; ( 3 )
;;;;;;;;		DW	$4bff,$12dc,$018c,$0000	; ( 4 )
;;;;;;;;		DW	$4bff,$2b2c,$1ca0,$0000	; ( 5 )
;;;;;;;;		DW	$7fff,$265b,$4134,$7d8d	; ( 6 )
;;;;;;;;		DW	$7fff,$7d8d,$1ca0,$0000	; ( 7 )
;;;;;;;;; ＜ ＯＢＪ：arasi.col + dx.col ＞
;;;;;;;;		DW	$7e40,$0000,$0642,$4eff	; ( 0 )
;;;;;;;;		DW	$7e40,$5a94,$175f,$7ee0	; ( 1 )
;;;;;;;;		DW	$7e40,$4986,$6f38,$2820	; ( 2 )
;;;;;;;;		DW	$7e40,$0000,$1a39,$4eff	; ( 3 )
;;;;;;;;		DW	$7975,$4b7e,$42b5,$21ef	; ( 4 ) DX きらり
;;;;;;;;		DW	$7af5,$12dc,$014a,$0000	; ( 5 ) DX 島かくし
;;;;;;;;		DW	$7af5,$12dc,$014a,$0000	; ( 6 ) DX 下地
;;;;;;;;		DW	$7af5,$7fff,$00a5,$7fff	; ( 7 ) DX 白
;;;;;;;;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	プレイヤーセレクト、ゲームオーバー、強制セーブ			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_V_RAMB
CL_GOVBKST
; ＜ ＢＧ： na-sa0c.col ＞
		DW	$7fff,$3f6b,$0d84,$0000	; ( 0 )
		DW	$7fff,$6e4e,$4105,$0000	; ( 1 )
		DW	$7fff,$385f,$1872,$0000	; ( 2 )
		DW	$7fff,$2b9f,$0150,$0000	; ( 3 )
		DW	$7fff,$2e3f,$0071,$0000	; ( 4 )
		DW	$7fff,$4694,$0166,$0000	; ( 5 )
		DW	$7fff,$4255,$080d,$0000	; ( 6 )
		DW	$7fff,$0dae,$0d24,$0000	; ( 7 )
; とりあえず
; ＜ ＯＢＪ：arasi.col ＞
		DW	$7e40,$0000,$0642,$4eff	; ( 0 )
		DW	$7e40,$5a94,$175f,$7ee0	; ( 1 )
		DW	$7e40,$4986,$6f38,$2820	; ( 2 )
		DW	$7e40,$0000,$1a39,$4eff	; ( 3 )
		DW	$7fff,$00f2,$2a19,$175f	; ( 4 )
		DW	$7fff,$108b,$2a19,$175f	; ( 5 )
		DW	$0000,$0000,$0000,$0000	; ( 6 )
		DW	$0000,$0000,$0000,$0000	; ( 7 )

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	海岸デモ							x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_LOVEBKST
; ＜ ＢＧ： love.col ＞
		DW	$7fff,$72f1,$6661,$0000	; ( 0 )
		DW	$47ff,$1659,$112d,$0000	; ( 1 )
		DW	$7fff,$12ec,$15a6,$0000	; ( 2 )
		DW	$7fff,$7d68,$15a6,$0000	; ( 3 )
		DW	$12ec,$15a6,$6661,$0000	; ( 4 )
		DW	$7399,$5291,$5e07,$3503	; ( 5 )
		DW	$1659,$112d,$15a6,$0000	; ( 6 )
		DW	$47ff,$22bc,$0000,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )りんく
		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )まりん
		DW	$7fff,$0000,$143f,$46ff	; ( 2 )メッセージ矢印
		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ピーチ写真 カラーデータ						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_PEACHBKST
; ＜ ＢＧ： piti_0c.col ＞
		DW	$4b1f,$395e,$1c14,$0444	; ( 0 )
		DW	$4b1f,$2ddc,$10f7,$0444	; ( 1 )
		DW	$7fff,$0edd,$1c14,$0444	; ( 2 )
		DW	$4b1f,$0edd,$10f7,$0444	; ( 3 )
		DW	$4b1f,$395e,$608c,$0444	; ( 4 )
		DW	$4b1f,$395e,$10f7,$0444	; ( 5 )
		DW	$7fff,$0edd,$608c,$0444	; ( 6 )
		DW	$4b1f,$2ddc,$23ce,$0444	; ( 7 )

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	壁画 カラーデータ						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_KAB1BKST
; ＜ ＢＧ： hekiga0c.col ＞
		DW	$7bff,$3a31,$24c5,$0c21	; ( 0 )
		DW	$4f7b,$11cf,$04c5,$0000	; ( 1 )
		DW	$7bff,$3a31,$146d,$0c21	; ( 2 )
		DW	$7c00,$7c00,$7c00,$7c00	; ( 3 )
		DW	$7c00,$7c00,$7c00,$7c00	; ( 4 )
		DW	$7c00,$7c00,$7c00,$7c00	; ( 5 )
		DW	$7c00,$7c00,$7c00,$7c00	; ( 6 )
		DW	$7c00,$7c00,$7c00,$7c00	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
		DW	$7fff,$0000,$143f,$46ff	; ( 2 )メッセージ矢印

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	カバの絵 カラーデータ						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_KABABKST
; ＜ ＢＧ： kaiga_0c.col ＞
		DW	$5bff,$1e1d,$1631,$1c64	; ( 0 )
		DW	$5bff,$2abd,$1511,$1c64	; ( 1 )
		DW	$5bff,$373b,$4549,$1c64	; ( 2 )
		DW	$5bff,$3d9c,$4549,$1c64	; ( 3 )
		DW	$5bff,$3faf,$4549,$1c64	; ( 4 )
		DW	$5bff,$3faf,$65d3,$1c64	; ( 5 )
		DW	$5bff,$3d9c,$2458,$1c64	; ( 6 )
		DW	$5bff,$373b,$1e1d,$1c64	; ( 7 )

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	７塔デモ カラーデータ						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_TOUBGCH
; ＜ ＢＧ： tou_demo.col ＞
		DW	$7fff,$7d68,$0000,$0000	; ( 0 )
		DW	$7fff,$7fff,$7fff,$7fff	; ( 1 )
		DW	$7fff,$7fff,$7fff,$7fff	; ( 2 )
		DW	$7fff,$7fff,$7fff,$7fff	; ( 3 )
		DW	$7fff,$7fff,$7fff,$7fff	; ( 4 )
		DW	$47ff,$1e0c,$0104,$0000	; ( 5 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 6 )
		DW	$4c83,$0000,$1e0c,$47ff	; ( 7 )
; ＜ ＯＢＪ： tou_demo.col ＞
		DW	$7fff,$7d68,$4c83,$0000	; ( 0 )
		DW	$7fff,$7fff,$7fff,$7fff	; ( 1 )
		DW	$7fff,$7fff,$7fff,$7fff	; ( 2 )
		DW	$7fff,$7fff,$7fff,$7fff	; ( 3 )
		DW	$7fff,$7fff,$7fff,$7fff	; ( 4 )
		DW	$7fff,$1e0c,$0104,$0000	; ( 5 )
		DW	$7fff,$11d9,$10ce,$0000	; ( 6 )
		DW	$7fff,$0000,$1e0c,$47ff	; ( 7 )

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	全体マップ画面 カラーデータ					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_GMAPCHST
;
;	とりあえず！
;
; ＜ ＢＧ： cz1.col ＞
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1419,$100a,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$7fff,$7d68,$4cc5,$0000	; ( 4 )
		DW	$11d9,$26c4,$1521,$0000	; ( 5 )
		DW	$47ff,$12ec,$15a6,$0000	; ( 6 )
		DW	$47ff,$11d9,$1521,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )BG
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	地上マップ カラーデータ						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_GMAPBKST
; ＜ ＢＧ： map1.col ＞
		DW	$47ff,$26c4,$14a5,$0000	; ( 0 )
		DW	$47ff,$51f3,$14a5,$0000	; ( 1 )
		DW	$47ff,$1417,$14a5,$0000	; ( 2 )
		DW	$47ff,$11d9,$088c,$0000	; ( 3 )
		DW	$47ff,$7d68,$088c,$0000	; ( 4 )
		DW	$47ff,$1417,$088c,$0000	; ( 5 )
		DW	$47ff,$088c,$14a5,$0000	; ( 6 )
		DW	$47ff,$7d68,$14a5,$0000	; ( 7 )
; ＜ ＯＢＪ： map1.col ＞
		DW	$47ff,$0000,$22a2,$4eff	; ( 0 )
		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
		DW	$7fff,$0000,$143f,$4eff	; ( 2 )
		DW	$7fff,$7fff,$7fff,$7fff	; ( 3 )
		DW	$47ff,$018c,$22a2,$0000	; ( 4 )
		DW	$47ff,$143f,$143f,$7fff	; ( 5 )
		DW	$47ff,$0000,$1153,$2adc	; ( 6 )
		DW	$47ff,$0000,$7e03,$7fff	; ( 7 )

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	エンディング（ Ｅ０４→０５：噴水ドカン！ ）			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_ENDCHA
; ＜ ＢＧ： fine_3.col ＞
		DW	$0000,$4cc5,$7d68,$7fff	; ( 0 )
		DW	$0000,$3c62,$68e5,$5ed6	; ( 1 )
		DW	$0000,$2000,$5000,$35ad	; ( 2 )
		DW	$0000,$660f,$6ed6,$7fff	; ( 3 )
		DW	$660f,$660f,$6ed6,$7fff	; ( 4 )
		DW	$59ac,$660f,$6ed6,$7fff	; ( 5 )
		DW	$4d49,$660f,$6ed6,$7fff	; ( 6 )
		DW	$0000,$0000,$0000,$0000	; ( 7 )
; ＜ ＯＢＪ： fine_3.col ＞
		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )りんく
		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )ふくろう
		DW	$7fff,$0000,$143f,$46ff	; ( 2 )メッセージ矢印、りんく赤
		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )りんく青
		DW	$0000,$6ffe,$6ffe,$6ffe	; ( 4 )
		DW	$0000,$6ffe,$6ffe,$6ffe	; ( 5 )
		DW	$0000,$03ff,$0273,$01ce	; ( 6 )星
		DW	$0000,$1b9b,$4590,$30a9	; ( 7 )台＆はしご

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	エンディング（ Ｅ０９：リンクぷかぷか 斜め後ろ向き ）		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_ENDCHB2
; ＜ ＢＧ： fine_5.col ＞
		DW	$7d68,$5e52,$5e52,$7fff	; ( 0 )
		DW	$4c83,$0000,$0000,$0000	; ( 1 )
		DW	$4c83,$0000,$0000,$0000	; ( 2 )
		DW	$4c83,$0000,$0000,$0000	; ( 3 )
		DW	$4c83,$0000,$7d26,$7e71	; ( 4 )
		DW	$4c83,$0000,$0000,$0000	; ( 5 )
		DW	$4c83,$0000,$0000,$0000	; ( 6 )
		DW	$7d68,$0e39,$33ff,$7fff	; ( 7 )
; ＜ ＯＢＪ： fine_5.col ＞
		DW	$7eb3,$0000,$7d68,$7fff	; ( 0 )
		DW	$7eb3,$0000,$3228,$121f	; ( 1 )
		DW	$7eb3,$0000,$1915,$4b1f	; ( 2 )
		DW	$7eb3,$0000,$1915,$046b	; ( 3 )
		DW	$7eb3,$7fff,$7fff,$7fff	; ( 4 )
		DW	$7eb3,$7fff,$7fff,$7fff	; ( 5 )
		DW	$7eb3,$7fff,$7fff,$7fff	; ( 6 )
		DW	$7eb3,$7fff,$7fff,$7fff	; ( 7 )

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	エンディング（ Ｅ０８：真上画面 ）				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_ENDCHC
; ＜ ＢＧ： fine_4.col ＞
		DW	$7d68,$5e52,$5e52,$7fff	; ( 0 )
		DW	$4c83,$0000,$0000,$0000	; ( 1 )
		DW	$4c83,$0000,$0000,$0000	; ( 2 )
		DW	$4c83,$0000,$0000,$0000	; ( 3 )
		DW	$4c83,$0000,$7d26,$7e71	; ( 4 )
		DW	$4c83,$0000,$0000,$0000	; ( 5 )
		DW	$4c83,$0000,$0000,$0000	; ( 6 )
		DW	$7d68,$0e39,$33ff,$7fff	; ( 7 )
; ＜ ＯＢＪ： fine_4.col ＞
		DW	$7d68,$2c88,$1f33,$7fff	; ( 0 )
		DW	$7fff,$7fff,$7fff,$7fff	; ( 1 )
		DW	$7fff,$7fff,$7fff,$7fff	; ( 2 )
		DW	$7fff,$7fff,$7fff,$7fff	; ( 3 )
		DW	$7fff,$7fff,$7fff,$7fff	; ( 4 )
		DW	$7fff,$7fff,$7fff,$7fff	; ( 5 )
		DW	$7fff,$7fff,$7fff,$7fff	; ( 6 )
		DW	$7eb3,$0000,$27fe,$7fff	; ( 7 )

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	エンディング（ Ｅ０Ａ→０Ｃ：リンクぷかぷか 前向き ）		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_ENDCHB
; ＜ ＢＧ： fine_6.col ＞
		DW	$7d68,$5e52,$5e52,$7fff	; ( 0 )
		DW	$4c83,$0000,$121f,$1915	; ( 1 )
		DW	$046b,$0000,$1915,$4b1f	; ( 2 )
		DW	$4c83,$0000,$3228,$4b1f	; ( 3 )
		DW	$4c83,$0000,$7d26,$7e71	; ( 4 )
		DW	$1915,$0000,$21bf,$4b1f	; ( 5 )
		DW	$4c83,$0000,$046b,$1915	; ( 6 )
		DW	$4c83,$0000,$1915,$4b1f	; ( 7 )
; ＜ ＯＢＪ： fine_6.col ＞
		DW	$00e0,$0000,$7d68,$7fff	; ( 0 )
		DW	$00e0,$3100,$121f,$3228	; ( 1 )
		DW	$00e0,$3228,$121f,$27fe	; ( 2 )
		DW	$00e0,$4c83,$7fff,$7fff	; ( 3 )
		DW	$00e0,$0000,$1915,$4b1f	; ( 4 )
		DW	$00e0,$21bf,$121f,$7fff	; ( 5 )
		DW	$00e0,$1915,$121f,$27fe	; ( 6 )
		DW	$00e0,$3100,$21bf,$3228	; ( 7 )

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	エンディング（ Ｅ０Ｄ→１２：リンクぷかぷか 横向き ）		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_ENDCHD
; ＜ ＢＧ： fine_7.col ＞
		DW	$7d68,$5e52,$5e52,$7fff	; ( 0 )
		DW	$4c83,$0000,$0000,$0000	; ( 1 )
		DW	$4c83,$0000,$0000,$0000	; ( 2 )
		DW	$4c83,$0000,$0000,$0000	; ( 3 )
		DW	$4c83,$0000,$7d26,$7e71	; ( 4 )
		DW	$4c83,$0000,$0000,$0000	; ( 5 )
		DW	$4c83,$0000,$0000,$0000	; ( 6 )
		DW	$7d68,$0e39,$33ff,$7fff	; ( 7 )
; ＜ ＯＢＪ： fine_7.col ＞
		DW	$4cc5,$7fff,$56ab,$41e0	; ( 0 )
		DW	$7eb3,$0000,$3100,$3228	; ( 1 )
		DW	$7eb3,$0000,$121f,$27fe	; ( 2 )
		DW	$7eb3,$0000,$21bf,$4b1f	; ( 3 )
		DW	$7eb3,$0000,$046b,$1915	; ( 4 )
		DW	$7eb3,$0000,$1915,$4b1f	; ( 5 )
		DW	$7eb3,$7fff,$7fff,$7fff	; ( 6 )
		DW	$7eb3,$0000,$27fe,$7fff	; ( 7 )

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	エンディング（ Ｅ１３：リンク笑う ）				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_ENDCHE
; ＜ ＢＧ： fine_8.col ＞
		DW	$7d68,$5e52,$5e52,$7fff	; ( 0 )
		DW	$4c83,$0000,$0000,$0000	; ( 1 )
		DW	$4c83,$0000,$0000,$0000	; ( 2 )
		DW	$4c83,$0000,$0000,$0000	; ( 3 )
		DW	$4c83,$0000,$7d26,$7e71	; ( 4 )
		DW	$4c83,$0000,$0000,$0000	; ( 5 )
		DW	$4c83,$0000,$0000,$0000	; ( 6 )
		DW	$7d68,$0e39,$33ff,$7fff	; ( 7 )
; ＜ ＯＢＪ： fine_8.col ＞
;;;;;;		DW	$4cc5,$0000,$3228,$4b1f	; ( 0 )
;;;;;;		DW	$7eb3,$0000,$121f,$1915	; ( 1 )
;;;;;;		DW	$7eb3,$0000,$1915,$046b	; ( 2 )
;;;;;;		DW	$7eb3,$0000,$3228,$3100	; ( 3 )
;;;;;;		DW	$7eb3,$0000,$21bf,$4b1f	; ( 4 )
;;;;;;		DW	$7eb3,$0000,$1915,$3228	; ( 5 )
;;;;;;		DW	$7eb3,$0000,$3100,$4b1f	; ( 6 )
;;;;;;		DW	$7eb3,$0000,$3100,$1915	; ( 7 )

		DW	$7eb3,$0000,$10c3,$190b	; ( 4 )
		DW	$7eb3,$0000,$08cb,$0867	; ( 5 )
		DW	$7eb3,$0000,$0867,$0424	; ( 6 )
		DW	$7eb3,$0000,$10c3,$1060	; ( 7 )
		DW	$7eb3,$0000,$0cab,$190b	; ( 4 )
		DW	$7eb3,$0000,$0867,$10c3	; ( 5 )
		DW	$7eb3,$0000,$1060,$190b	; ( 6 )
		DW	$7eb3,$0000,$1060,$0867	; ( 7 )

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	エンディング（ Ｅ１４→１５：リンクぷかぷか 後ろ向き ）		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_ENDCHF
; ＜ ＢＧ： fine_9.col ＞
		DW	$7d68,$5e52,$5e52,$7fff	; ( 0 )
		DW	$4c83,$0000,$0000,$0000	; ( 1 )
		DW	$4c83,$0000,$0000,$0000	; ( 2 )
		DW	$4c83,$0000,$0000,$0000	; ( 3 )
		DW	$4c83,$0000,$7d26,$7e71	; ( 4 )
		DW	$4c83,$0000,$0000,$0000	; ( 5 )
		DW	$4c83,$0000,$0000,$0000	; ( 6 )
		DW	$7d68,$0e39,$33ff,$7fff	; ( 7 )
; ＜ ＯＢＪ： fine_9.col ＞
;;;;;;;		DW	$4cc5,$0000,$3228,$4b1f	; ( 0 )
		DW	$4cc5,$0000,$3228,$7fff	; ( 0 ) 文字を白に
		DW	$7eb3,$4b1f,$3100,$3228	; ( 1 )
		DW	$7eb3,$0000,$121f,$1915	; ( 2 )
		DW	$7eb3,$0000,$4b1f,$1915	; ( 3 )
		DW	$7eb3,$0000,$046b,$1915	; ( 4 )
		DW	$7eb3,$0000,$41e0,$7fff	; ( 5 )
		DW	$7eb3,$7c0f,$38df,$02b5	; ( 6 )
		DW	$7eb3,$0000,$7d68,$7fff	; ( 7 )

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	エンディング（Ｇ）						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_ENDCHG
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	エンディング A（ 回想シーン：ワンワン）				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_ENDCHA1
; ＜ ＢＧ： kaiso_1.col ＞
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1419,$100a,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$47ff,$7cc3,$2c00,$0000	; ( 4 )
		DW	$11d9,$26c4,$1521,$0000	; ( 5 )
		DW	$47ff,$12ec,$15a6,$0000	; ( 6 )
		DW	$47ff,$7c75,$3c07,$0000	; ( 7 )
; ＜ ＯＢＪ： objcol_c.col ＞
		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )BG
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	エンディング A（ Ｅ０３：たまご山遠景 ）			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_ENDCHYM
; ＜ ＢＧ： fine_2.col ＞
		DW	$7e6f,$5e52,$5e52,$7fff	; ( 0 )
		DW	$7e6f,$0000,$0000,$0000	; ( 1 )
		DW	$7e6f,$4e0b,$5ebe,$7fff	; ( 2 )
		DW	$7e6f,$1d86,$4e0b,$5ebe	; ( 3 )
		DW	$4c83,$0000,$7d26,$7e71	; ( 4 )
		DW	$7e6f,$0000,$0000,$0000	; ( 5 )
		DW	$7e6f,$0000,$0000,$0000	; ( 6 )
		DW	$7e6f,$0000,$0000,$0000	; ( 7 )
; ＜ ＯＢＪ： fine_0.col ＞
		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )りんく
		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )ふくろう
		DW	$7fff,$0000,$143f,$46ff	; ( 2 )メッセージ矢印
		DW	$0000,$6ffe,$6ffe,$6ffe	; ( 3 )
		DW	$0000,$6ffe,$6ffe,$6ffe	; ( 4 )
		DW	$0000,$6ffe,$6ffe,$6ffe	; ( 5 )
		DW	$0000,$03ff,$0273,$01ce	; ( 6 )星
		DW	$0000,$1b9b,$4590,$30a9	; ( 7 )台＆はしご

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	エンディング A2（ Ｅ００→０２：リンク歩く ）			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_ENDCHA2
; ＜ ＢＧ： fine_0.col ＞
		DW	$0000,$62e8,$41e8,$73fe	; ( 0 )
		DW	$0000,$2f06,$1a61,$73fe	; ( 1 )
		DW	$0000,$02b5,$15ef,$73fe	; ( 2 )
		DW	$0000,$519f,$3115,$73fe	; ( 3 )
		DW	$0000,$44da,$2cd0,$73fe	; ( 4 )
		DW	$0000,$6556,$44cf,$73fe	; ( 5 )
		DW	$0000,$7190,$7d09,$73fe	; ( 6 )
		DW	$0000,$1a3f,$1193,$73fe	; ( 7 )
; ＜ ＯＢＪ： fine_0.col ＞
		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )りんく
		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )ふくろう
		DW	$7fff,$0000,$143f,$46ff	; ( 2 )メッセージ矢印、りんく赤
		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )りんく青
		DW	$0000,$6ffe,$6ffe,$6ffe	; ( 4 )
		DW	$0000,$6ffe,$6ffe,$6ffe	; ( 5 )
		DW	$0000,$03ff,$0273,$01ce	; ( 6 )星
		DW	$0000,$1b9b,$4590,$30a9	; ( 7 )台＆はしご


;------------------------------------------------------------------------
		END
;------------------------------------------------------------------------
;
