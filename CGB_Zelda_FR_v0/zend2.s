
		onbankgroup

;************************************************************************
;*									*
;*	タイトル    ：	ゼルダの伝説 ＤＸ				*
;*	ファイル名  ：	ZEND2.S						*
;*	処理内容    ：	ＣＧＢ専用 エンディング ＯＡＭセット処理	*
;*	作成日付    ：  １９９８／１０／２４				*
;*	使用バンク  ：  ２７、２０					*
;*									*
;************************************************************************
;
;==============	バンク０ ================================================
BANK0		GROUP	0
;-------------<	ZMA >----------------------------------------------------
		EXTERN	KMARIN,NEWDJ_DMA,JSL_CALL
;
;-------------<	ZES >----------------------------------------------------
		EXTERN	ENOMST2
		EXTERN	LCDC_OFF
;
;-------------<	ZCO >----------------------------------------------------
		EXTERN	DATA_MOV,RNDSUB
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
;□	バンク２７						       □
;□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□
BANK27		GROUP	$27

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ＯＡＭ １キャラモードセット					x
;x----------------------------------------------------------------------x
;x	    ＥＮＴＲＹ							x
;x		Ｃ     ： キャラクター数				x
;x		ＨＬ   ： ＯＡＭデータ					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
OAMSET_1CHR
		PUSH	BC

		PUSH	HL
		LD	A,(ENOMID)
		LD	E,A
		LD	D,$0
		LD	HL,OAM
		ADD	HL,DE
		LD	D,H		; DE <-- HL
		LD	E,L
		POP	HL

		LD	A,C
		SRL	A		; ／４
		SRL	A
		LD	C,A
OMST1_100
		LD	A,(ENDSYP)
		ADD	A,(HL)
		LD	(DE),A		; Ｙポジションセット
		INC	DE
		INC	HL
		LD	A,(ENSVXL)
		ADD	A,(HL)
		LD	(DE),A		; Ｘポジションセット
		INC	DE
		INC	HL
		LD	A,(HLI)
		LD	(DE),A		; キャラクタナンバーセット
		INC	DE
		LD	A,(HLI)
		LD	(DE),A		; アトリビュートセット
		INC	DE
		DEC	C
		JR	NZ,OMST1_100

		POP	BC
		LD	A,(ENOMID)
		ADD	A,C
		CP	$a0
		JR	C,OMST1_200

		XOR	A
OMST1_200
		LD	(ENOMID),A	; インデックスセット

		LD	A,(INDEX)
		LD	C,A
		RET


;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	シーン５：斜め後ろ向きリンク					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
B2LINKCD_CGB
; 00
	DB	$00,$08,$0f,$02		; つかまる木１
	DB	$00,$10,$1f,$02
	DB	$00,$18,$2f,$02
	DB	$08,$00,$50,$03
	DB	$08,$08,$52,$03
	DB	$08,$18,$58,$03
	DB	$08,$20,$59,$00
	DB	$10,$00,$51,$03
	DB	$10,$08,$53,$00
	DB	$10,$10,$55,$00
B2LINKCD2_CGB
;02
	DB	$00,$08,$0f,$02		; つかまる木２
	DB	$00,$10,$1f,$02
	DB	$00,$18,$2f,$02
	DB	$08,$00,$50,$03
	DB	$08,$08,$52,$03
	DB	$08,$18,$68,$03
	DB	$08,$20,$69,$00
	DB	$10,$00,$61,$03
	DB	$10,$08,$63,$00
	DB	$10,$10,$65,$00
B2LINKCD_END
B2LINKCD_CNT	EQU	(B2LINKCD_END-B2LINKCD2_CGB)

B2LINK_CGB
; 01
	DB	$00,$08,$0E,$01		; リンク本体
	DB	$00,$10,$1E,$01
	DB	$08,$00,$60,$02
	DB	$08,$08,$62,$01
	DB	$08,$10,$54,$01
	DB	$08,$18,$64,$01
B2LINK_END
B2LINK_CNT	EQU	(B2LINK_END-B2LINK_CGB)
;========================================================================

B2LINKMV_CGB_sub
		LD	HL,B2LINK_CGB	; リンク本体
		LD	C,B2LINK_CNT	; 個数
		CALL	OAMSET_1CHR

		LD	HL,B2LINKCD_CGB	; つかまる木１
		LD	A,(FRCNT)	; 個数
		AND	$10
		JR	Z,B2L010_CGB
		LD	HL,B2LINKCD2_CGB; つかまる木２
B2L010_CGB
		LD	C,B2LINKCD_CNT	; 個数
		CALL	OAMSET_1CHR
		RET

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	シーン５：浮遊物						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
B2WOODCD_CGB
	DB	$00,$00,$5a,$03
B2WOODCD2_CGB
	DB	$00,$00,$6a,$03
B2WOODCD_END
B2WOODCD_CNT	EQU	(B2WOODCD_END-B2WOODCD2_CGB)
;========================================================================

B2WOODMV_CGB_sub
		LD	DE,ENXPSL
		ADD	HL,BC
		LD	A,(HL)
		CP	$28
		LD	HL,B2WOODCD_CGB		; 浮遊物１
		JR	Z,B2WD_CGB_100

		LD	HL,B2WOODCD2_CGB	; 浮遊物２
B2WD_CGB_100
		LD	C,B2WOODCD_CNT
		CALL	OAMSET_1CHR
		RET

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	シーン６：浮遊物						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
BWOODCD_CGB
	DB	$00,$00,$54,$04	;たる１
	DB	$00,$08,$64,$04
	DB	$08,$00,$55,$04
	DB	$08,$08,$65,$04
BWOODCD1_CGB
	DB	$00,$00,$64,$24	;たる２
	DB	$00,$08,$54,$24
	DB	$08,$00,$65,$24
	DB	$08,$08,$55,$24
BWOODCD2_CGB
	DB	$00,$00,$6E,$04	; 木
	DB	$00,$08,$7E,$04
	DB	$08,$00,$6f,$04
	DB	$08,$08,$7f,$04
BWOODCD_END
BWOODCD_CNT	EQU	(BWOODCD_END-BWOODCD2_CGB)
;========================================================================

BWOODMV_CGB_sub
		LD	HL,ENXPSL
		ADD	HL,BC
		LD	A,(HL)
		CP	$18
		LD	HL,BWOODCD2_CGB		; 木
		JR	Z,BWWD_CGB_100

		LD	HL,BWOODCD_CGB		; たる１
		CP	$68
		JR	Z,BWWD_CGB_100

		LD	HL,BWOODCD1_CGB		; たる２
BWWD_CGB_100
		LD	C,BWOODCD_CNT
		CALL	OAMSET_1CHR
		RET

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	シーン６：私はカモメ						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
BTORICD_CGB
		DB	$00,$00,$72,$00	; ０
		DB	$00,$08,$72,$20
		DB	$08,$00,$73,$00
		DB	$08,$08,$73,$20

		DB	$00,$00,$74,$00	; １
		DB	$00,$08,$74,$20
		DB	$08,$00,$75,$00
		DB	$08,$08,$75,$20

		DB	$00,$00,$76,$00	; ２
		DB	$00,$08,$76,$20
		DB	$08,$00,$77,$00
		DB	$08,$08,$77,$20

		DB	$00,$00,$78,$00	; ３
		DB	$00,$08,$78,$20
		DB	$08,$00,$79,$00
		DB	$08,$08,$79,$20

		DB	$00,$00,$7a,$00	; ４
		DB	$00,$08,$7a,$20
		DB	$08,$00,$7b,$00
		DB	$08,$08,$7b,$20
BTORICD_05
		DB	$00,$00,$7c,$00	; ５
		DB	$00,$08,$7c,$20
		DB	$08,$00,$7d,$00
		DB	$08,$08,$7d,$20
BTORICD_END
BTORICD_CNT	EQU	(BTORICD_END-BTORICD_05)
;========================================================================

BTORIMV_CGB_sub
		LD	HL,ENCHPT
		ADD	HL,BC
		LD	A,(HL)
		SLA	A
		SLA	A
		SLA	A
		SLA	A
		LD	D,$0
		LD	E,A
		LD	HL,BTORICD_CGB
		ADD	HL,DE
		LD	C,BTORICD_CNT
		CALL	OAMSET_1CHR
		RET

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	シーン７：寝てるりんく						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
SLEEPLINK_1
		DB	$00,$10,$03,$02>>1	;【01】
		DB	$00,$18,$04,$02>>1	;【00】
		DB	$18,$18,$0C,$0A>>1
		DB	$10,$20,$0B,$0E>>1
		DB	$10,$18,$0A,$0E>>1
		DB	$10,$08,$09,$0C>>1
		DB	$08,$24,$08,$02>>1
		DB	$08,$1C,$07,$02>>1
		DB	$08,$10,$06,$0C>>1
		DB	$08,$08,$05,$0C>>1
		DB	$00,$10,$02,$0C>>1
		DB	$00,$08,$01,$0C>>1
		DB	$00,$00,$00,$0C>>1
		DB	$20,$50,$0F,$06>>1
		DB	$18,$50,$0E,$06>>1
		DB	$18,$D8,$0D,$06>>1
		DB	$10,$D8,$2D,$06>>1
		DB	$00,$ff,$ff,$ff
		DB	$00,$ff,$ff,$ff
		DB	$00,$ff,$ff,$ff
SLEEPLINK_2
		DB	$18,$18,$1D,$02>>1	;【02】
		DB	$18,$10,$1C,$0A>>1
		DB	$18,$08,$1B,$0A>>1
		DB	$10,$1D,$1A,$02>>1
		DB	$10,$15,$19,$02>>1
		DB	$08,$24,$18,$02>>1
		DB	$08,$1C,$17,$02>>1
		DB	$08,$10,$16,$0C>>1
		DB	$00,$18,$15,$04>>1
		DB	$00,$10,$14,$0C>>1
		DB	$04,$08,$13,$0C>>1
		DB	$f8,$10,$12,$0C>>1
		DB	$fc,$08,$11,$0C>>1
		DB	$f8,$00,$10,$0C>>1
		DB	$20,$50,$0F,$06>>1
		DB	$18,$50,$0E,$06>>1
		DB	$18,$D8,$0D,$06>>1
		DB	$10,$D8,$2D,$06>>1
		DB	$ff,$ff,$ff,$ff
		DB	$ff,$ff,$ff,$ff
SLEEPLINK_3
		DB	$10,$00,$2C,$06>>1	;【03】
		DB	$08,$00,$2B,$06>>1
		DB	$18,$18,$2A,$0C>>1
		DB	$10,$1C,$29,$02>>1
		DB	$10,$14,$28,$02>>1
		DB	$08,$24,$18,$02>>1
		DB	$08,$1C,$27,$02>>1
		DB	$08,$10,$26,$0C>>1
		DB	$00,$18,$25,$04>>1
		DB	$00,$10,$24,$0C>>1
		DB	$00,$00,$23,$0C>>1
		DB	$f8,$18,$22,$04>>1
		DB	$f8,$10,$21,$04>>1
		DB	$fc,$08,$20,$0C>>1
		DB	$f0,$10,$1F,$0C>>1
		DB	$f4,$08,$1E,$0C>>1
		DB	$20,$50,$0F,$06>>1
		DB	$18,$50,$0E,$06>>1
		DB	$18,$D8,$0D,$06>>1
		DB	$10,$D8,$2D,$06>>1
SLEEPLINK_END
SLEEPLINK_CNT	EQU	(SLEEPLINK_END-SLEEPLINK_3)

SLEEPLINK_TBL
		DW	SLEEPLINK_1
		DW	SLEEPLINK_1
		DW	SLEEPLINK_1
		DW	SLEEPLINK_1
		DW	SLEEPLINK_1
		DW	SLEEPLINK_1
		DW	SLEEPLINK_1
		DW	SLEEPLINK_2
		DW	SLEEPLINK_3
;========================================================================

BLINKMV2_sub
		LD	B,$00		; インデックス固定！
		LD	C,$0B		;

		LD	A,(EDWRK0)	; スクロールポイント！
		LD	D,A
		LD	HL,ENYPSL
		ADD	HL,BC
		LD	A,(HL)
		SUB	D
		LD	(ENDSYP),A	; Ｙポジションセット

		LD	A,(EDWRK2)	;顔パターン
		SLA	A
		LD	E,A
		LD	D,$0
		LD	HL,SLEEPLINK_TBL
		ADD	HL,DE
		LD	A,(HLI)
		LD	D,A
		LD	H,(HL)
		LD	L,D

		LD	C,SLEEPLINK_CNT
		LD	A,(EDMODE)
		CP	3		; フェード以降？
		JR	C,BLMV2_100	; ＮＯ

		LD	C,SLEEPLINK_CNT-1	; １キャラ消す
BLMV2_100
		CALL	OAMSET_1CHR

		LD	B,$00		; インデックス固定！
		LD	C,$0B		;
		RET

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	シーン７：横向きリンク						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
YOKOLINK_1
		DB	$08,$18+$08,$0A,$06>>1	;【03】
		DB	$08,$10+$08,$08,$06>>1
		DB	$08,$08+$08,$06,$06>>1
;
		DB	$10,$10+$08,$02,$04>>1	;【02】
		DB	$30,$10+$08,$2E,$0A>>1
		DB	$30,$08+$08,$2C,$0A>>1
;
		DB	$08,$18+$08,$04,$04>>1	;【01】
		DB	$18,$10+$08,$BC,$08>>1
		DB	$00,$10+$08,$B6,$04>>1
		DB	$28,$10+$08,$1E,$08>>1
		DB	$21,$08+$08,$0E,$08>>1
		DB	$20,$00+$08,$0C,$0A>>1
;
		DB	$30,$00+$08,$9A,$0A>>1	;【00】
		DB	$18,$10+$08,$BA,$02>>1
		DB	$10,$18+$08,$86,$02>>1
		DB	$00,$18+$08,$B8,$02>>1
		DB	$00,$10+$08,$00,$02>>1
		DB	$00,$08+$08,$B4,$04>>1
		DB	$00,$00+$08,$B2,$04>>1
		DB	$28,$10+$08,$1C,$02>>1
		DB	$30,$18+$08,$AA,$0A>>1
		DB	$28,$08+$08,$8E,$02>>1
		DB	$18,$08+$08,$8C,$02>>1
		DB	$20,$18+$08,$94,$02>>1
		DB	$30,$F8+$08,$98,$08>>1
		DB	$20,$00+$08,$8A,$02>>1
		DB	$20,$F8+$08,$88,$0A>>1
;
YOKOLINK_2
		DB	$08,$18+$08,$1A,$06>>1	;【07】
		DB	$08,$10+$08,$18,$06>>1
		DB	$08,$08+$08,$16,$06>>1
;
		DB	$00,$18+$08,$A4,$04>>1	;【06】
		DB	$10,$10+$08,$12,$04>>1
		DB	$30,$10+$08,$2E,$0A>>1
		DB	$30,$08+$08,$2C,$0A>>1
;
		DB	$08,$18+$08,$14,$04>>1	;【05】
		DB	$18,$10+$08,$CC,$08>>1
		DB	$28,$10+$08,$1E,$08>>1
		DB	$21,$08+$08,$0E,$08>>1
		DB	$20,$00+$08,$0C,$0A>>1
;
		DB	$00,$10+$08,$C6,$04>>1	;【04】
		DB	$18,$10+$08,$CA,$02>>1
		DB	$10,$18+$08,$96,$02>>1
		DB	$00,$18+$08,$C8,$02>>1
		DB	$00,$08+$08,$C4,$04>>1
		DB	$00,$00+$08,$C2,$04>>1
		DB	$28,$10+$08,$1C,$02>>1
		DB	$30,$18+$08,$AA,$0A>>1
		DB	$28,$08+$08,$8E,$02>>1
		DB	$18,$08+$08,$8C,$02>>1
		DB	$20,$18+$08,$94,$02>>1
		DB	$30,$00+$08,$9A,$0A>>1
		DB	$30,$F8+$08,$98,$08>>1
		DB	$20,$00+$08,$8A,$02>>1
		DB	$20,$F8+$08,$88,$0A>>1
;
YOKOLINK_3
		DB	$08,$18+$08,$2A,$06>>1	;【0B】
		DB	$08,$10+$08,$28,$06>>1
		DB	$08,$08+$08,$26,$06>>1
;
		DB	$00,$18+$08,$A8,$04>>1	;【0A】
		DB	$10,$10+$08,$22,$04>>1
		DB	$30,$10+$08,$2E,$0A>>1
		DB	$30,$08+$08,$2C,$0A>>1
;
		DB	$08,$18+$08,$24,$04>>1	;【09】
		DB	$18,$10+$08,$DC,$08>>1
		DB	$28,$10+$08,$1E,$08>>1
		DB	$21,$08+$08,$0E,$08>>1
		DB	$20,$00+$08,$0C,$0A>>1
;
		DB	$00,$10+$08,$D6,$04>>1	;【08】
		DB	$18,$10+$08,$DA,$02>>1
		DB	$10,$18+$08,$A6,$02>>1
		DB	$00,$18+$08,$D8,$02>>1
		DB	$00,$08+$08,$D4,$04>>1
		DB	$00,$00+$08,$D2,$04>>1
		DB	$28,$10+$08,$1C,$02>>1
		DB	$30,$18+$08,$AA,$0A>>1
		DB	$28,$08+$08,$8E,$02>>1
		DB	$18,$08+$08,$8C,$02>>1
		DB	$20,$18+$08,$94,$02>>1
		DB	$30,$00+$08,$9A,$0A>>1
		DB	$30,$F8+$08,$98,$08>>1
		DB	$20,$00+$08,$8A,$02>>1
		DB	$20,$F8+$08,$88,$0A>>1
YOKOLINK_END
YOKOLINK_CNT	EQU	(YOKOLINK_END-YOKOLINK_3)

YOKOLINK_TBL
		DW	YOKOLINK_1
		DW	YOKOLINK_2
		DW	YOKOLINK_3
;========================================================================

DLINKMV_CGB_sub
		LD	A,(EDWRK0)	; 見上げるパターン
		SLA	A
		LD	E,A
		LD	D,$0
		LD	HL,YOKOLINK_TBL
		ADD	HL,DE
		LD	A,(HLI)
		LD	D,A
		LD	H,(HL)
		LD	L,D
		LD	C,YOKOLINK_CNT
		CALL	OAMSET_1CHR
		RET

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	シーン８：笑顔リンク						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;-----<	顔下地＋上半身 >-------------------------------------------------
EGAOLINK
		DB	$10,$25,$12,$08>>1	;【01】
		DB	$30,$1B,$1A,$08>>1
		DB	$3b,$30,$1C,$04>>1
		DB	$40,$03,$30,$04>>1
;
		DB	$40,$40,$40,$04>>1	;【00】
		DB	$40,$38,$3E,$04>>1
		DB	$40,$30,$3C,$06>>1
		DB	$40,$28,$3A,$06>>1
		DB	$40,$20,$38,$06>>1
		DB	$40,$18,$36,$06>>1
		DB	$40,$10,$34,$06>>1
		DB	$40,$08,$32,$06>>1
		DB	$30,$00,$50,$04>>1
		DB	$30,$38,$2E,$04>>1
		DB	$30,$30,$2C,$06>>1
		DB	$30,$28,$2A,$06>>1
		DB	$30,$20,$28,$0A>>1
		DB	$30,$18,$26,$00>>1
		DB	$30,$10,$24,$00>>1
		DB	$30,$08,$22,$0A>>1
		DB	$20,$28,$20,$0E>>1
		DB	$20,$20,$1E,$02>>1
		DB	$20,$08,$18,$02>>1
		DB	$10,$28,$16,$0E>>1
		DB	$10,$20,$14,$02>>1
		DB	$10,$10,$10,$02>>1
		DB	$10,$08,$0E,$02>>1
		DB	$10,$00,$0C,$02>>1
		DB	$00,$28,$0A,$0C>>1
		DB	$00,$20,$08,$02>>1
		DB	$00,$18,$06,$02>>1
		DB	$00,$10,$04,$02>>1
		DB	$00,$08,$02,$02>>1
		DB	$00,$00,$00,$02>>1
EGAOLINK_END
EGAOLINK_CNT	EQU	(EGAOLINK_END-EGAOLINK)
;
;-----<	顔表情 >---------------------------------------------------------
EGAOLINK2_1
		DB	$20,$1C,$4C,$08>>1	;【02】
		DB	$20,$14,$4A,$08>>1
		DB	$20,$0C,$48,$08>>1
		DB	$10,$1C,$46,$08>>1
		DB	$10,$14,$44,$08>>1
		DB	$10,$0C,$42,$08>>1
;
EGAOLINK2_2
		DB	$20,$1C,$5C,$08>>1	;【03】
		DB	$20,$14,$5A,$08>>1
		DB	$20,$0C,$58,$08>>1
		DB	$10,$1C,$56,$08>>1
		DB	$10,$14,$54,$08>>1
		DB	$10,$0C,$52,$08>>1
;
EGAOLINK2_3
		DB	$20,$1C,$6C,$08>>1	;【04】
		DB	$20,$14,$6A,$08>>1
		DB	$20,$0C,$68,$08>>1
		DB	$10,$1C,$66,$08>>1
		DB	$10,$14,$64,$08>>1
		DB	$10,$0C,$62,$08>>1
EGAOLINK2_END
EGAOLINK2_CNT	EQU	(EGAOLINK2_END-EGAOLINK2_3)

EGAOLINK2_TBL
		DW	EGAOLINK2_1
		DW	EGAOLINK2_2
		DW	EGAOLINK2_3
;========================================================================

ELINKMV_CGB_sub
		XOR	A		; インデックス固定
		LD	(ENOMID),A

		LD	A,(EDWRK3)	; 顔表情パターン
		SLA	A
		LD	E,A
		LD	D,$0
		LD	HL,EGAOLINK2_TBL
		ADD	HL,DE
		LD	A,(HLI)
		LD	D,A
		LD	H,(HL)
		LD	L,D
		LD	C,EGAOLINK2_CNT
		CALL	OAMSET_1CHR	; 顔表情

		LD	HL,EGAOLINK
		LD	C,EGAOLINK_CNT
		CALL	OAMSET_1CHR	; 顔下地＋上半身
		RET

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	シーン９：後ろ姿リンク						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
USIROLINK
		DB	$08,$00+04,$68,$02>>1	;【01】
		DB	$00,$00+04,$67,$02>>1
USIROLINK_END
USIROLINK_CNT	EQU	(USIROLINK_END-USIROLINK)
;
USIROLINK2_1
		DB	$12,$0C+04,$6C,$08>>1	;【02】
		DB	$12,$04+04,$6B,$08>>1
		DB	$12,$FC+04,$6A,$08>>1
		DB	$12,$F4+04,$69,$08>>1
		DB	$fa,$00+04,$60,$04>>1
		DB	$02,$04+04,$62,$08>>1
		DB	$02,$FC+04,$61,$08>>1
		DB	$0a,$0C+04,$66,$06>>1
		DB	$0a,$04+04,$65,$06>>1
		DB	$0a,$FC+04,$64,$06>>1
		DB	$0a,$F4+04,$63,$06>>1
USIROLINK2_2
		DB	$12,$0C+04,$70,$08>>1	;【03】
		DB	$12,$04+04,$6F,$08>>1
		DB	$12,$FC+04,$6E,$08>>1
		DB	$12,$F4+04,$6D,$08>>1
		DB	$fa,$00+04,$60,$04>>1
		DB	$02,$04+04,$62,$08>>1
		DB	$02,$FC+04,$61,$08>>1
		DB	$0a,$0C+04,$66,$06>>1
		DB	$0a,$04+04,$65,$06>>1
		DB	$0a,$FC+04,$64,$06>>1
		DB	$0a,$F4+04,$63,$06>>1
USIROLINK2_3
		DB	$12,$0C+04,$74,$08>>1	;【04】
		DB	$12,$04+04,$73,$08>>1
		DB	$12,$FC+04,$72,$08>>1
		DB	$12,$F4+04,$71,$08>>1
		DB	$fa,$00+04,$60,$04>>1
		DB	$02,$04+04,$62,$08>>1
		DB	$02,$FC+04,$61,$08>>1
		DB	$0a,$0C+04,$66,$06>>1
		DB	$0a,$04+04,$65,$06>>1
		DB	$0a,$FC+04,$64,$06>>1
		DB	$0a,$F4+04,$63,$06>>1
USIROLINK2_4
		DB	$12,$0C+04,$78,$08>>1	;【05】
		DB	$12,$04+04,$77,$08>>1
		DB	$12,$FC+04,$76,$08>>1
		DB	$12,$F4+04,$75,$08>>1
		DB	$fa,$00+04,$60,$04>>1
		DB	$02,$04+04,$62,$08>>1
		DB	$02,$FC+04,$61,$08>>1
		DB	$0a,$0C+04,$66,$06>>1
		DB	$0a,$04+04,$65,$06>>1
		DB	$0a,$FC+04,$64,$06>>1
		DB	$0a,$F4+04,$63,$06>>1
USIROLINK2_END
USIROLINK2_CNT	EQU	(USIROLINK2_END-USIROLINK2_4)
;
USIROLINK2_TBL
		DW	USIROLINK2_1
		DW	USIROLINK2_2
		DW	USIROLINK2_3
		DW	USIROLINK2_4
;========================================================================

FLINKMV_CGB_sub
		LD	A,36*3		; インデックス固定
		LD	(ENOMID),A

		LD	A,(FRCNT)
		AND	%00011000
		SRA	A
		SRA	A
		LD	E,A
		LD	D,$0
		LD	HL,USIROLINK2_TBL
		ADD	HL,DE
		LD	A,(HLI)
		LD	D,A
		LD	H,(HL)
		LD	L,D
		LD	C,USIROLINK2_CNT
		CALL	OAMSET_1CHR	; 本体

		LD	HL,USIROLINK
		LD	C,USIROLINK_CNT
		CALL	OAMSET_1CHR	; 下地
		RET


;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	シーン９：かもめまりん メイン					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
KMARIN_oam_xpos	EQU	$50		; Ｘポジション
KMARIN_oam_ypos	EQU	$50		; Ｙポジション
;========================================================================

FMARINMV_CGB_sub
MARIN_MAIN
		LD	A,(KMARINMD)
		RST	0
;------------------------------------------------------------------------
		DW	MARIN_INIT	; ( 0 )イニシャル
		DW	MARIN_TRAN	; ( 1 )キャラクター転送
		DW	MARIN_FADE	; ( 2 )フェード
		DW	MARIN_MOVE	; ( 3 )ムーヴ

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	かもめまりん イニシャル						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
MARIN_INIT
		LD	HL,LCDCB
		SET	2,(HL)		; ＯＢＪ ８×１６モード

		LD	HL,ENXPSL
		ADD	HL,BC
		LD	A,KMARIN_oam_xpos
		LD	(HL),A		; Ｘポジション
		LD	HL,ENYPSL
		ADD	HL,BC
		LD	A,KMARIN_oam_ypos
		LD	(HL),A		; Ｙポジション

		LD	A,$ff
		LD	(KMARINCHPT),A	; 転送パターン

		CALL	MARIN_COLTR_INIT
		CALL	KAMOME_COLTR_INIT
		CALL	KM_COLTR_INIT	; カラー転送

		JP	MARIN_NEXT

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	かもめまりん キャラクター転送					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
MARIN_TRAN
		LD	A,(KMARINCHPT)
		INC	A
		CP	$5+1		; 転送終了？
		JP	NZ,MARINTR_100	; ＮＯ

		LD	A,$2F
		LD	(SOUND4),A	; まりんの唄 サウンドセット
		JP	MARIN_NEXT
MARINTR_100
		LD	(KMARINCHPT),A

		LD	A,KMARIN
		LD	(BLNKFG),A
		RET

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	かもめまりん フェード						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
MARIN_FADE
		LD	HL,MARINSD2
		LD	A,(MARINSD)
		LD	D,A
		OR	(HL)		; まりんの唄？
		JR	Z,MAFADE_050	; ＮＯ

;------------------------------------------------------------------------
;	まりんしばらく表示
;------------------------------------------------------------------------
		LD	A,D
		DEC	A
		LD	(MARINSD),A
		JR	NZ,MAFADE_030

		LD	A,(HL)
		AND	A		; まりんの唄終わり？
		JR	Z,MAFADE_010	; ＹＥＳ

		DEC	(HL)		; MARINSD2-1
		LD	A,$FF
		LD	(MARINSD),A
		JR	MAFADE_030
MAFADE_010
		LD	HL,KMARINPT
		INC	(HL)
		LD	A,1
		LD	(KMARINFC),A
		LD	A,$1C
		LD	(SOUND1),A	; チェンジ サウンドセット
		LD	A,Fade_time_F
		LD	(EDSFADE),A	; サウンドフェードタイマー
MAFADE_030
		LD	A,(KMARINFC)
		INC	A
		AND	%00000001
		LD	(KMARINFC),A
		RET	Z

		CALL	MARIN_OAMSET	; まりんＯＡＭ
		RET

;------------------------------------------------------------------------
;	まりんフェード
;------------------------------------------------------------------------
MAFADE_050
		CALL	SOUND_FADE	; サウンドフェード

		LD	A,(KMARINFC)
		INC	A
		AND	%00000001
		LD	(KMARINFC),A
		JR	NZ,MAFADE_100

		CALL	KAMOME_MOVE
		CALL	KAMOME_OAMSET	;（偶数）かもめＯＡＭ
		JR	MAFADE_200
MAFADE_100
		CALL	MARIN_OAMSET	;（奇数）まりんＯＡＭ
		LD	HL,KMARINPT
		INC	(HL)
		LD	A,(HL)
		CP	MARIN_COLOR_DSP	; まりんしばらく表示させる？
		JR	NZ,MAFADE_150	; ＮＯ

		LD	A,$1		; 約５秒
		LD	(MARINSD2),A	; タイマーセット
		LD	A,$2C		;
		LD	(MARINSD),A	;
		RET
MAFADE_150
		CP	MARIN_COLOR_CNT	; フェード終了？
		JR	Z,MAFADE_300	; ＹＥＳ
MAFADE_200
		CALL	KM_COLTR_MAIN	; カラー転送
		RET

MAFADE_300
		LD	A,$07		; サウンドレベル復帰
		LD	(SLEVEL),A	;
		SWAP	A		;
		LD	(SLEVEL2),A	;
		LD	A,50
		LD	(KAMOSE),A	; かもめ鳴き声タイマー
		LD	A,8*6*3		; 約２秒その場ではばたき
		LD	(KAMOTM),A	; かもめウエイトタイマー
		JP	MARIN_NEXT

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	かもめまりん サウンドフェード					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
Fade_time_F	EQU	$60		; スタートフェードタイマー
Fade_time	EQU	20		; フェードタイマー
;========================================================================

SOUND_FADE
		LD	HL,EDSFADE
		LD	A,(HL)
		AND	A
		RET	Z
		DEC	(HL)
		RET	NZ
SFADE_100
		LD	A,(SLEVEL)
		DEC	A
		LD	(SLEVEL),A
		LD	A,(SLEVEL2)
		SUB	%00010000
		LD	(SLEVEL2),A	; フェード終了！
		JR	NZ,SFADE_200	; ＮＯ

		LD	A,$FF		; ＢＧＭ消す
		LD	(SOUND4),A
		RET
SFADE_200
		LD	A,Fade_time
		LD	(HL),A
		RET

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	かもめまりん ムーヴ						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
MARIN_MOVE
		CALL	KAMOME_SOUND	; かもめ鳴き声
		CALL	KAMOME_MOVE	; かもめＭＯＶＥ
		CALL	KAMOME_OAMSET	; かもめＯＡＭ
		RET

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	まりん ＯＡＭセット						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
MARIN
		DB	$20,$F9,$3E,$0C>>1	;【02】
;
		DB	$18,$08,$3C,$04>>1	;【01】
		DB	$18,$00,$3A,$04>>1
		DB	$18,$F8,$38,$04>>1
		DB	$08,$17,$36,$06>>1
		DB	$08,$0F,$34,$06>>1
		DB	$08,$00,$4A,$02>>1
		DB	$08,$F8,$48,$02>>1
		DB	$f8,$16,$32,$08>>1
		DB	$f8,$0E,$30,$08>>1
		DB	$f8,$00,$46,$02>>1
		DB	$f8,$F8,$44,$02>>1
		DB	$e8,$01,$42,$02>>1
		DB	$e8,$F9,$40,$02>>1
;
		DB	$18,$18,$2E,$06>>1	;【00】
		DB	$18,$10,$2C,$06>>1
		DB	$18,$08,$2A,$06>>1
		DB	$18,$00,$28,$06>>1
		DB	$18,$F8,$26,$06>>1
		DB	$18,$F0,$24,$06>>1
		DB	$08,$18,$22,$00>>1
		DB	$08,$10,$20,$00>>1
		DB	$08,$08,$1E,$00>>1
		DB	$08,$00,$1C,$00>>1
		DB	$08,$F8,$1A,$00>>1
		DB	$08,$F0,$18,$00>>1
		DB	$f8,$16,$16,$00>>1
		DB	$f8,$0E,$14,$00>>1
		DB	$f8,$06,$12,$00>>1
		DB	$f8,$FE,$10,$00>>1
		DB	$f8,$F6,$0E,$00>>1
		DB	$f8,$EE,$0C,$00>>1
		DB	$e8,$16,$0A,$08>>1
		DB	$e8,$0E,$08,$0A>>1
		DB	$e8,$06,$06,$00>>1
		DB	$e8,$FE,$04,$00>>1
		DB	$e8,$F6,$02,$00>>1
		DB	$e8,$EE,$00,$00>>1
MARIN_END
MARIN_CNT	EQU	(MARIN_END-MARIN)
;========================================================================

MARIN_OAMSET
		XOR	A		; インデックス固定
		LD	(ENOMID),A

		LD	HL,MARIN
		LD	C,MARIN_CNT/4
		JP	ENOMST2

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	かもめ 鳴き声セット						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
KAMOME_SOUND
		LD	A,(KAMOSE)
		AND	A
		JR	NZ,KAMOSND_100

		LD	A,$21
		LD	(SOUND1),A	;(S)

		CALL	RNDSUB
		AND	$7F
		ADD	A,$30
		LD	(KAMOSE),A
KAMOSND_100
		DEC	A
		LD	(KAMOSE),A
		RET

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	かもめ ＭＯＶＥ							x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
KAMOME_MOVE_PATTERN
;<< SEQ 00 >>
;			00  01  02  03  04  05  06  07  08  09
		DB	$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
;			10  11  12  13  14  15  16  17  18  19
		DB	$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
;			20  21  22  23  24  25  26  27  28  29
		DB	$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
;			30  31
		DB	$ff,$ff
;（ フェード２倍 ）
;			00  01  02  03  04  05  06  07  08  09
		DB	$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
;			10  11  12  13  14  15  16  17  18  19
		DB	$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
;			20  21  22  23  24  25  26  27  28  29
		DB	$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
;			30  31
		DB	$ff,$ff
;<< SEQ 01 >>
;			00  01  02  03  04  05  06  07  08  09
		DB	$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$00,$00
;			10  11  12  13  14  15  16  17  18  19
		DB	$00,$00,$01,$01,$01,$01,$02,$02,$02,$02
;			20  21  22  23  24  25  26  27  28  29
		DB	$03,$03,$03,$03,$04,$04,$04,$04,$05,$05
;			30  31
		DB	$05,$05
;（ フェード２倍 ）
;			00  01  02  03  04  05  06  07  08  09
		DB	$00,$00,$00,$00,$01,$01,$01,$01,$02,$02
;			10  11  12  13  14  15  16  17  18  19
		DB	$02,$02,$03,$03,$03,$03,$04,$04,$04,$04
;			20  21  22  23  24  25  26  27  28  29
		DB	$05,$05,$05,$05,$00,$00,$00,$00,$01,$01
;			30  31
		DB	$01,$01
;<< SEQ 02 >>
;			00  01  02  03  04  05  06  07  08  09
		DB	$02,$02,$02,$02,$03,$03,$03,$03,$04,$04
;			10  11  12  13  14  15  16  17  18  19
		DB	$04,$04,$05,$05,$05,$05,$00,$00,$00,$00
;			20  21  22  23  24  25  26  27  28  29
		DB	$01,$01,$01,$01,$02,$02,$02,$02,$03,$03
;			30  31
		DB	$03,$03
;（ フェード２倍 ）
;			00  01  02  03  04  05  06  07  08  09
		DB	$04,$04,$04,$04,$05,$05,$05,$05,$00,$00
;			10  11  12  13  14  15  16  17  18  19
		DB	$00,$00,$01,$01,$01,$01,$02,$02,$02,$02
;			20  21  22  23  24  25  26  27  28  29
		DB	$03,$03,$03,$03,$04,$04,$04,$04,$05,$05
;			30  31
		DB	$05,$05
;========================================================================

KAMOME_MOVE
		LD	A,(KMARINPT)
		CP	MARIN_COLOR_CNT
		JR	NC,KAMOVE_100

;------------------------------------------------------------------------
;	かもめフェード中
;------------------------------------------------------------------------
		LD	E,A
		LD	D,$0
		LD	HL,KAMOME_MOVE_PATTERN
		ADD	HL,DE
		LD	A,(HL)
		LD	(KAMOMOVE),A
		RET

;------------------------------------------------------------------------
;	かもめ飛び立つ
;------------------------------------------------------------------------
;-----<	移動処理 >-------------------------------------------------------
KAMOVE_100
		LD	HL,KAMOTM
		LD	A,(HL)
		AND	A		; かもめ移動待ち？
		JR	Z,KAMOVE_110	; ＹＥＳ

		DEC	(HL)
		JR	KAMOVE_200
KAMOVE_110
		LD	HL,ENCONT
		ADD	HL,BC
		LD	A,(HL)
		INC	A
		LD	(HL),A
		AND	$1F
		JR	NZ,KAMOVE_120

		LD	HL,ENYSPD
		ADD	HL,BC
		LD	A,(HL)
		CP	$FF
		JR	Z,KAMOVE_120

		INC	(HL)
KAMOVE_120
		CALL	EDMVCL2

		LD	A,(ENSVXL)
		CP	$B0		; クリア？
		JP	NC,EDCLER2	; ＹＥＳ

;-----<	パターンセット >-------------------------------------------------
KAMOVE_200
		LD	A,(FRCNT)
		AND	%00000111
		RET	NZ

		LD	HL,KAMOMOVE
		INC	(HL)
		LD	A,(HL)
		CP	$6
		JR	NZ,KAMOVE_210

		XOR	A
KAMOVE_210
		LD	(HL),A
		RET


;------------------------------------------------------------------------
;	移動計算
;------------------------------------------------------------------------
EDMVCL2
;
	CALL	EDXCLC2		; X calc
;
EDYCLC2
	PUSH	BC
	LD	A,C
	ADD	A,<ENNO
	LD	C,A

	CALL	EDXCLC2		; Y calc
	POP	BC
	RET
;-----------------------------------------
EDXCLC2
	LD	HL,ENXSPD
	ADD	HL,BC
;
	LD	A,(HL)
	AND	A
	JR	Z,EDL2090
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
EDL200
	ADD	HL,BC
;
	POP	AF
;
	LD	E,$0
	BIT	7,A
	JR	Z,EDC200
	LD	E,$F0
EDC200
	SWAP	A
	AND	$0F
	OR	E
	RR	D
	ADC	A,(HL)
	LD	(HL),A
EDL2090
	RET


;------------------------------------------------------------------------
;	敵クリア
;------------------------------------------------------------------------
EDCLER2
	LD	HL,ENMODE
	ADD	HL,BC
	LD	(HL),B

;;;;;;;		LD	A,60*3
;;;;;;;		LD	(EDTIM0),A	; フェード待ちタイマー
		XOR	A
		LD	(EDFADE),A	; フェードカウント
		LD	HL,EDMODE
		INC	(HL)
	RET

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	かもめ ＯＡＭセット						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
KAMOMEMA
		DB	$00,$00,$72,$07		;【03】
		DB	$00,$08,$72,$27

		DB	$00,$00,$74,$07		;【04】
		DB	$00,$08,$74,$27

		DB	$00,$00,$76,$07		;【05】
		DB	$00,$08,$76,$27

		DB	$00,$00,$78,$07		;【06】
		DB	$00,$08,$78,$27

		DB	$00,$00,$7A,$07		;【07】
		DB	$00,$08,$7A,$27
KAMOMEMA_6
		DB	$00,$00,$7C,$07		;【08】
		DB	$00,$08,$7C,$27
KAMOMEMA_END
KAMOMEMA_CNT	EQU	(KAMOMEMA_END-KAMOMEMA_6)
;========================================================================

KAMOME_OAMSET
		XOR	A		; インデックス固定
		LD	(ENOMID),A

		LD	A,(KAMOMOVE)
		CP	$FF		; セットしない？
		RET	Z		; ＹＥＳ

		SLA	A
		SLA	A
		SLA	A
		LD	E,A
		LD	D,$0
		LD	HL,KAMOMEMA
		ADD	HL,DE
		LD	C,KAMOMEMA_CNT/4
		JP	ENOMST2

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	かもめまりん モードｉｎｃ					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
MARIN_NEXT
		LD	HL,KMARINMD
		INC	(HL)
		RET

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	かもめまりん カラー転送						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
KM_COLTR_MAIN
		CALL	MARIN_COL_TRAN	; まりん
		CALL	KAMOME_COL_TRAN	; かもめ

KM_COLTR_INIT				; イニシャル
		XOR	A
		LD	(COLOFS),A	; 転送オフセット
		LD	A,4*8
		LD	(COLLNG),A	; 転送長さ
		LD	A,OBJCOL_BITFG|$80
		LD	(CGDMAF),A	; 転送フラグ（部分転送）
		RET

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	まりん カラー転送						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
MARIN_COLOR_PATTERN
;<< SEQ 00 >>
;			00  01  02  03  04  05  06  07  08  09
		DB	$00,$00,$00,$00,$00,$00,$00,$00,$01,$01
;			10  11  12  13  14  15  16  17  18  19
		DB	$01,$01,$01,$01,$01,$01,$02,$02,$02,$02
;			20  21  22  23  24  25  26  27  28  29
		DB	$02,$02,$02,$02,$03,$03,$03,$03,$03,$03
;			30  31
		DB	$03,$03
;
;			00  01  02  03  04  05  06  07  08  09
		DB	$04,$04,$04,$04,$04,$04,$04,$04,$05,$05
;			10  11  12  13  14  15  16  17  18  19
		DB	$05,$05,$05,$05,$05,$05,$06,$06,$06,$06
;			20  21  22  23  24  25  26  27  28  29
		DB	$06,$06,$06,$06,$07,$07,$07,$07,$07,$07
;			30  31
		DB	$07,$07
MARIN_COLOR_PNT
;<< SEQ 01 >>
;			00  01  02  03  04  05  06  07  08  09
		DB	$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
;			10  11  12  13  14  15  16  17  18  19
		DB	$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
;			20  21  22  23  24  25  26  27  28  29
		DB	$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
;			30  31
		DB	$ff,$ff
;
;			00  01  02  03  04  05  06  07  08  09
		DB	$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
;			10  11  12  13  14  15  16  17  18  19
		DB	$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
;			20  21  22  23  24  25  26  27  28  29
		DB	$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
;			30  31
		DB	$ff,$ff
;<< SEQ 02 >>
;			00  01  02  03  04  05  06  07  08  09
		DB	$07,$07,$07,$07,$07,$07,$07,$07,$06,$06
;			10  11  12  13  14  15  16  17  18  19
		DB	$06,$06,$06,$06,$06,$06,$05,$05,$05,$05
;			20  21  22  23  24  25  26  27  28  29
		DB	$05,$05,$05,$05,$04,$04,$04,$04,$04,$04
;			30  31
		DB	$04,$04
;
;			00  01  02  03  04  05  06  07  08  09
		DB	$03,$03,$03,$03,$03,$03,$03,$03,$02,$02
;			10  11  12  13  14  15  16  17  18  19
		DB	$02,$02,$02,$02,$02,$02,$01,$01,$01,$01
;			20  21  22  23  24  25  26  27  28  29
		DB	$01,$01,$01,$01,$00,$00,$00,$00,$00,$00
;			30  31
		DB	$00,$00
MARIN_COLOR_END
MARIN_COLOR_CNT	EQU	(MARIN_COLOR_END-MARIN_COLOR_PATTERN)
MARIN_COLOR_DSP	EQU	(MARIN_COLOR_PNT-MARIN_COLOR_PATTERN)
;------------------------------------------------------------------------
MARIN_COLOR_1
; ＜ ＯＢＪ： marin_gr.col BANK=3 ＞
		DW	$7fff,$7d26,$7d26,$7d26	; ( 0 )
		DW	$7fff,$7d26,$7d26,$7d26	; ( 1 )
		DW	$7fff,$7d26,$7d26,$7d26	; ( 2 )
		DW	$7fff,$7d26,$7d26,$7d26	; ( 3 )
		DW	$7fff,$7d26,$7d26,$7d26	; ( 4 )
		DW	$7fff,$7d26,$7d26,$7d26	; ( 5 )
		DW	$7fff,$7d26,$7d26,$7d26	; ( 6 )
MARIN_COLOR_2
; ＜ ＯＢＪ： marin_gr.col BANK=2 ＞
		DW	$7fff,$68e5,$6d4a,$6d09	; ( 0 )
		DW	$7fff,$68e5,$6907,$758a	; ( 1 )
		DW	$7fff,$6d09,$6d4a,$758a	; ( 2 )
		DW	$7fff,$68e5,$7d47,$7d68	; ( 3 )
		DW	$7fff,$68e5,$70ea,$758a	; ( 4 )
		DW	$7fff,$68e5,$6d4a,$70ea	; ( 5 )
		DW	$7fff,$68e8,$70ea,$758a	; ( 6 )
MARIN_COLOR_3
; ＜ ＯＢＪ： marin_gr.col BANK=1 ＞
		DW	$7fff,$58c4,$616e,$5d0b	; ( 0 )
		DW	$7fff,$58c4,$58e8,$6dce	; ( 1 )
		DW	$7fff,$5d0b,$616e,$6dce	; ( 2 )
		DW	$7fff,$58c4,$7d47,$7daa	; ( 3 )
		DW	$7fff,$58c4,$68ce,$6dce	; ( 4 )
		DW	$7fff,$58c4,$616e,$68ce	; ( 5 )
		DW	$7fff,$58ca,$68ce,$6dce	; ( 6 )
MARIN_COLOR_4
; ＜ ＯＢＪ： marin_gr.col BANK=0 ＞
		DW	$7fff,$44a3,$5571,$510d	; ( 0 )
		DW	$7fff,$44a3,$48c9,$6611	; ( 1 )
		DW	$7fff,$510d,$5571,$6611	; ( 2 )
		DW	$7fff,$44a3,$7d47,$7dec	; ( 3 )
		DW	$7fff,$44a3,$60b1,$6611	; ( 4 )
		DW	$7fff,$44a3,$5571,$60b1	; ( 5 )
		DW	$7fff,$44ab,$60b1,$6611	; ( 6 )
MARIN_COLOR_5
; ＜ ＢＧ： marin_gr.col BANK=3 ＞
		DW	$7fff,$3462,$4595,$410f	; ( 0 )
		DW	$7fff,$3462,$34a9,$5e55	; ( 1 )
		DW	$7fff,$410f,$4595,$5e55	; ( 2 )
		DW	$7fff,$3462,$7d47,$7e0e	; ( 3 )
		DW	$7fff,$3462,$5875,$5e55	; ( 4 )
		DW	$7fff,$3462,$4595,$5875	; ( 5 )
		DW	$7fff,$346d,$5875,$5e55	; ( 6 )
MARIN_COLOR_6
; ＜ ＢＧ： marin_gr.col BANK=2 ＞
		DW	$7fff,$2041,$3998,$3511	; ( 0 )
		DW	$7fff,$2041,$248a,$5698	; ( 1 )
		DW	$7fff,$3511,$3998,$5698	; ( 2 )
		DW	$7fff,$2041,$7d47,$7e50	; ( 3 )
		DW	$7fff,$2041,$5058,$5698	; ( 4 )
		DW	$7fff,$2041,$3998,$5058	; ( 5 )
		DW	$7fff,$204e,$5058,$5698	; ( 6 )
MARIN_COLOR_7
; ＜ ＢＧ： marin_gr.col BANK=1 ＞
		DW	$7fff,$1020,$2dbc,$2513	; ( 0 )
		DW	$7fff,$1020,$146b,$4edc	; ( 1 )
		DW	$7fff,$2513,$2dbc,$4edc	; ( 2 )
		DW	$7fff,$1020,$7d47,$7e92	; ( 3 )
		DW	$7fff,$1020,$483c,$4edc	; ( 4 )
		DW	$7fff,$1020,$2dbc,$483c	; ( 5 )
		DW	$7fff,$1030,$483c,$4edc	; ( 6 )
MARIN_COLOR_8
; ＜ ＢＧ： marin_gr.col BANK=0 ＞
		DW	$7d26,$0000,$21bf,$1915	; ( 0 )
		DW	$7fff,$0000,$046b,$4b1f	; ( 1 )
		DW	$7fff,$1915,$21bf,$4b1f	; ( 2 )
		DW	$7fff,$0000,$7d68,$7eb3	; ( 3 )
		DW	$7fff,$0000,$401f,$4b1f	; ( 4 )
		DW	$7fff,$0000,$21bf,$401f	; ( 5 )
		DW	$7fff,$0011,$401f,$4b1f	; ( 6 )

MARIN_COLOR_ADRS
		DW	MARIN_COLOR_1	; ( 0 )
		DW	MARIN_COLOR_2	; ( 1 )
		DW	MARIN_COLOR_3	; ( 2 )
		DW	MARIN_COLOR_4	; ( 3 )
		DW	MARIN_COLOR_5	; ( 4 )
		DW	MARIN_COLOR_6	; ( 5 )
		DW	MARIN_COLOR_7	; ( 6 )
		DW	MARIN_COLOR_8	; ( 7 )
;========================================================================

MARIN_COLTR_INIT			; イニシャル
		LD	HL,MARIN_COLOR_1
		JR	MARIN_COLTR_100
;------------------------------------------------------------------------
MARIN_COL_TRAN
		LD	A,(KMARINPT)
		LD	E,A
		LD	D,$0
		LD	HL,MARIN_COLOR_PATTERN
		ADD	HL,DE
		LD	A,(HL)
		CP	$ff		; 転送する？
		RET	Z		; ＮＯ

		LD	HL,MARINPT
		CP	(HL)		; 前のパターンと同じ？
		RET	Z		; ＹＥＳ

		LD	(MARINPT),A
		SLA	A
		LD	E,A
		LD	D,$0
		LD	HL,MARIN_COLOR_ADRS
		ADD	HL,DE
		LD	A,(HLI)
		LD	D,A
		LD	H,(HL)
		LD	L,D
MARIN_COLTR_100
		LD	BC,$0038	; 個数
		LD	DE,OBCGWK+$0000	; 転送先
		CALL	DATA_MOV	; データ転送
		RET

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	かもめ カラー転送						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
KAMOME_COLOR_PATTERN
;<< SEQ 00 >>
;			00  01  02  03  04  05  06  07  08  09
		DB	$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
;			10  11  12  13  14  15  16  17  18  19
		DB	$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
;			20  21  22  23  24  25  26  27  28  29
		DB	$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
;			30  31
		DB	$ff,$ff
;
;			00  01  02  03  04  05  06  07  08  09
		DB	$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
;			10  11  12  13  14  15  16  17  18  19
		DB	$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
;			20  21  22  23  24  25  26  27  28  29
		DB	$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
;			30  31
		DB	$ff,$ff
;<< SEQ 01 >>
;			00  01  02  03  04  05  06  07  08  09
		DB	$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$00,$00
;			10  11  12  13  14  15  16  17  18  19
		DB	$00,$00,$00,$00,$00,$00,$01,$01,$01,$01
;			20  21  22  23  24  25  26  27  28  29
		DB	$01,$01,$01,$01,$02,$02,$02,$02,$02,$02
;			30  31
		DB	$02,$02
;
;			00  01  02  03  04  05  06  07  08  09
		DB	$03,$03,$03,$03,$03,$03,$03,$03,$04,$04
;			10  11  12  13  14  15  16  17  18  19
		DB	$04,$04,$04,$04,$04,$04,$05,$05,$05,$05
;			20  21  22  23  24  25  26  27  28  29
		DB	$05,$05,$05,$05,$06,$06,$06,$06,$06,$06
;			30  31
		DB	$06,$06
;<< SEQ 02 >>
;			00  01  02  03  04  05  06  07  08  09
		DB	$07,$07,$07,$07,$07,$07,$07,$07,$ff,$ff
;			10  11  12  13  14  15  16  17  18  19
		DB	$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
;			20  21  22  23  24  25  26  27  28  29
		DB	$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
;			30  31
		DB	$ff,$ff
;
;			00  01  02  03  04  05  06  07  08  09
		DB	$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
;			10  11  12  13  14  15  16  17  18  19
		DB	$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
;			20  21  22  23  24  25  26  27  28  29
		DB	$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff,$ff
;			30  31
		DB	$ff,$ff
;------------------------------------------------------------------------
KAMOME_COLOR
; ＜ ＯＢＪ： marin_gr.col BANK=3 ＞
		DW	$7fff,$7d26,$7d26,$7d26	; ( 0 )
; ＜ ＯＢＪ： marin_gr.col BANK=2 ＞
		DW	$7fff,$68e5,$7e0e,$7e0e	; ( 1 )
; ＜ ＯＢＪ： marin_gr.col BANK=1 ＞
		DW	$7fff,$58c4,$7ef6,$7ef6	; ( 2 )
; ＜ ＯＢＪ： marin_gr.col BANK=0 ＞
		DW	$7fff,$44a3,$7fff,$7fff	; ( 3 )
; ＜ ＢＧ： marin_gr.col BANK=3 ＞
		DW	$7fff,$3462,$7f59,$7fff	; ( 4 )
; ＜ ＢＧ： marin_gr.col BANK=2 ＞
		DW	$7fff,$2041,$7eb3,$7fff	; ( 5 )
; ＜ ＢＧ： marin_gr.col BANK=1 ＞
		DW	$7fff,$1020,$7e0d,$7fff	; ( 6 )
; ＜ ＢＧ： marin_gr.col BANK=0 ＞
		DW	$7fff,$0000,$7d68,$7fff	; ( 7 )
;========================================================================

KAMOME_COLTR_INIT			; イニシャル
		LD	HL,KAMOME_COLOR
		JR	KAMOME_COLTR_100
;------------------------------------------------------------------------
KAMOME_COL_TRAN
		LD	A,(KMARINPT)
		LD	E,A
		LD	D,$0
		LD	HL,KAMOME_COLOR_PATTERN
		ADD	HL,DE
		LD	A,(HL)
		CP	$ff		; 転送する？
		RET	Z		; ＮＯ

		LD	HL,KAMOMPT
		CP	(HL)		; 前のパターンと同じ？
		RET	Z		; ＹＥＳ

		LD	(KAMOMPT),A
		SLA	A
		SLA	A
		SLA	A
		LD	E,A
		LD	D,$0
		LD	HL,KAMOME_COLOR
		ADD	HL,DE
KAMOME_COLTR_100
		LD	BC,$0008	; 個数
		LD	DE,OBCGWK+$0038	; 転送先
		CALL	DATA_MOV	; データ転送
		RET

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	かもめまりん キャラクター転送					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;-----<	転送元 >---------------------------------------------------------
MATRMOTO_0	EQU	$3860		; $366000 まりん（１）
MATRMOTO_1	EQU	$3861		; $366100   ”  （２）
MATRMOTO_2	EQU	$3862		; $366200   ”  （３）
MATRMOTO_3	EQU	$3863		; $366300   ”  （４）
MATRMOTO_4	EQU	$3864		; $366400   ”  （５）
MATRMOTO_5	EQU	$356f		; $366f00 かもめ

MARIN_MOTO_ADRS
		DW	MATRMOTO_0
		DW	MATRMOTO_1
		DW	MATRMOTO_2
		DW	MATRMOTO_3
		DW	MATRMOTO_4
		DW	MATRMOTO_5

MARIN_CHR_TRAN
		LD	A,(KMARINCHPT)
		CP	$5		; かもめ転送？
		JR	NZ,MACRTR_100	; ＹＥＳ

		LD	C,$7		; かもめは $8700
		JR	MACRTR_200
MACRTR_100
		LD	C,A		; 転送先 HIGH
MACRTR_200
		SLA	A		; Ｘ２
		LD	E,A
		LD	D,$0
		LD	HL,MARIN_MOTO_ADRS
		ADD	HL,DE
		LD	A,(HLI)		; 転送元 HIGH
		LD	B,A
		LD	A,(HL)		; 転送元 BANK
		LD	H,:MARIN_CHR_TRAN	; 戻りバンク

		JP	NEWDJ_DMA





;□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□
;□	バンク２０						       □
;□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□
BANK20		GROUP	$20

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	水柱カラー転送							x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
MIZU_COL_ADRS
		DW	MIZU_COL_DAT0
		DW	MIZU_COL_DAT1
		DW	MIZU_COL_DAT2

MIZU_COL_DAT0
; ＜ ＢＧ： fine_3.col BANK=0 ＞
		DW	$0000,$4cc5,$7d68,$7fff	; ( 0 )
		DW	$0000,$3c62,$68e5,$5ed6	; ( 1 )
		DW	$0000,$2000,$5000,$35ad	; ( 2 )
		DW	$0000,$660f,$6ed6,$7fff	; ( 3 )
		DW	$660f,$660f,$6ed6,$7fff	; ( 4 )
		DW	$59ac,$660f,$6ed6,$7fff	; ( 5 )
		DW	$4d49,$660f,$6ed6,$7fff	; ( 6 )
MIZU_COL_DAT1
; ＜ ＢＧ： fine_3.col BANK=1 ＞
		DW	$0000,$7d68,$7fff,$4cc5	; ( 0 )
		DW	$0000,$68e5,$5ed6,$3c62	; ( 1 )
		DW	$0000,$5000,$35ad,$2000	; ( 2 )
		DW	$0000,$6ed6,$7fff,$660f	; ( 3 )
		DW	$4cc5,$6ed6,$7fff,$660f	; ( 4 )
		DW	$3c62,$6ed6,$7fff,$660f	; ( 5 )
		DW	$2000,$6ed6,$7fff,$660f	; ( 6 )
MIZU_COL_DAT2
; ＜ ＢＧ： fine_3.col BANK=2 ＞
		DW	$0000,$7fff,$4cc5,$7d68	; ( 0 )
		DW	$0000,$5ed6,$3c62,$68e5	; ( 1 )
		DW	$0000,$35ad,$2000,$5000	; ( 2 )
		DW	$0000,$7fff,$660f,$6ed6	; ( 3 )
		DW	$7d68,$7fff,$660f,$6ed6	; ( 4 )
		DW	$68e5,$7fff,$660f,$6ed6	; ( 5 )
		DW	$5000,$7fff,$660f,$6ed6	; ( 6 )
;========================================================================

MIZU_COL_SET_sub
		LD	A,(EDWRK0)
		SLA	A
		LD	E,A
		LD	D,$0
		LD	HL,MIZU_COL_ADRS
		ADD	HL,DE
		LD	A,(HLI)
		LD	B,A
		LD	H,(HL)
		LD	L,B

		LD	BC,$0038	; ７パレット
		LD	DE,CGWORK
		CALL	DATA_MOV	; データ転送

		XOR	A
		LD	(COLOFS),A	; 転送オフセット
		LD	A,4*7
		LD	(COLLNG),A	; 転送長さ
		LD	A,BGCOL_BITFG|$80
		LD	(CGDMAF),A	; 転送フラグ（部分転送）

		RET

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	シーン０：台＆階段						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
EDAICD
EDCA
	DB	$00,$00,$10,$17
	DB	$00,$08,$04,$17
	DB	$00,$10,$06,$17
	DB	$00,$18,$06,$37
	DB	$00,$20,$04,$37	;メッセージカーソルが消す！
	DB	$00,$28,$10,$37
;
	DB	$10,$00,$08,$17
	DB	$10,$08,$0A,$17
	DB	$10,$10,$0C,$17
	DB	$10,$18,$0C,$37
	DB	$10,$20,$0A,$37
	DB	$10,$28,$08,$37
;
EDC9
	DB	$20,$10,$20,$17
	DB	$20,$18,$30,$17
EDC8
	DB	$30,$10,$20,$17
	DB	$30,$18,$30,$17
;;;	DB	$00,$20,$04,$37	;メッセージカーソルがけすため!
EDC7
	DB	$40,$10,$20,$17
	DB	$40,$18,$30,$17
EDC6
	DB	$50,$10,$20,$17
	DB	$50,$18,$30,$17
;
EDC5
	DB	$60,$10,$20,$17
	DB	$60,$18,$30,$17
;
EDC4
	DB	$70,$10,$20,$17
	DB	$70,$18,$30,$17
;
EDC3
	DB	$80,$10,$20,$17
	DB	$80,$18,$30,$17
;
EDC2
	DB	$90,$10,$20,$17
	DB	$90,$18,$30,$17
;
EDC1
	DB	$A0,$10,$20,$17
	DB	$A0,$18,$30,$17
;
EDC0
	DB	$B0,$10,$20,$17
	DB	$B0,$18,$30,$17
EDCF
;------------------------------------------------
EDAICD2
	DB	$00,$00,$12,$17
	DB	$00,$08,$14,$17
	DB	$00,$10,$16,$17
	DB	$00,$18,$16,$37
	DB	$00,$20,$14,$37	;メッセージカーソルが消す！
	DB	$00,$28,$12,$37
;
	DB	$10,$00,$18,$17
	DB	$10,$08,$1A,$17
	DB	$10,$10,$1C,$17
	DB	$10,$18,$1C,$37
	DB	$10,$20,$1A,$37
	DB	$10,$28,$18,$37
;
	DB	$20,$10,$40,$17
	DB	$20,$18,$50,$17
;
	DB	$30,$10,$40,$17
	DB	$30,$18,$50,$17
;
	DB	$40,$10,$40,$17
	DB	$40,$18,$50,$17
;
	DB	$50,$10,$40,$17
	DB	$50,$18,$50,$17
;
	DB	$60,$10,$40,$17
	DB	$60,$18,$50,$17
;
	DB	$70,$10,$40,$17
	DB	$70,$18,$50,$17
;
	DB	$80,$10,$40,$17
	DB	$80,$18,$50,$17
;
	DB	$90,$10,$40,$17
	DB	$90,$18,$50,$17
;
	DB	$A0,$10,$40,$17
	DB	$A0,$18,$50,$17
;
	DB	$B0,$10,$40,$17
	DB	$B0,$18,$50,$17
;------------------------------------------------
EDAICD3
	DB	$00,$00,$22,$17
	DB	$00,$08,$24,$17
	DB	$00,$10,$26,$17
	DB	$00,$18,$26,$37
	DB	$00,$20,$24,$37	;メッセージカーソルが消す！
	DB	$00,$28,$22,$37
;
	DB	$10,$00,$28,$17
	DB	$10,$08,$2A,$17
	DB	$10,$10,$2C,$17
	DB	$10,$18,$2C,$37
	DB	$10,$20,$2A,$37
	DB	$10,$28,$28,$37
;
	DB	$20,$10,$60,$17
	DB	$20,$18,$70,$17
;
	DB	$30,$10,$60,$17
	DB	$30,$18,$70,$17
;
	DB	$40,$10,$60,$17
	DB	$40,$18,$70,$17
;
	DB	$50,$10,$60,$17
	DB	$50,$18,$70,$17
;
	DB	$60,$10,$60,$17
	DB	$60,$18,$70,$17
;
	DB	$70,$10,$60,$17
	DB	$70,$18,$70,$17
;
	DB	$80,$10,$60,$17
	DB	$80,$18,$70,$17
;
	DB	$90,$10,$60,$17
	DB	$90,$18,$70,$17
;
	DB	$A0,$10,$60,$17
	DB	$A0,$18,$70,$17
;
	DB	$B0,$10,$60,$17
	DB	$B0,$18,$70,$17
;------------------------------------------------
EDAICD4
	DB	$00,$00,$32,$17
	DB	$00,$08,$34,$17
	DB	$00,$10,$36,$17
	DB	$00,$18,$36,$37
	DB	$00,$20,$34,$37	;メッセージカーソルが消す！
	DB	$00,$28,$32,$37
;
	DB	$10,$00,$38,$17
	DB	$10,$08,$3A,$17
	DB	$10,$10,$3C,$17
	DB	$10,$18,$3C,$37
	DB	$10,$20,$3A,$37
	DB	$10,$28,$38,$37
;
	DB	$20,$10,$52,$17
	DB	$20,$18,$62,$17
;
	DB	$30,$10,$52,$17
	DB	$30,$18,$62,$17
;
	DB	$40,$10,$52,$17
	DB	$40,$18,$62,$17

	DB	$50,$10,$52,$17
	DB	$50,$18,$62,$17
;
	DB	$60,$10,$52,$17
	DB	$60,$18,$62,$17
;
	DB	$70,$10,$52,$17
	DB	$70,$18,$62,$17
;
	DB	$80,$10,$52,$17
	DB	$80,$18,$62,$17
;
	DB	$90,$10,$52,$17
	DB	$90,$18,$62,$17
;
	DB	$A0,$10,$52,$17
	DB	$A0,$18,$62,$17
;
	DB	$B0,$10,$52,$17
	DB	$B0,$18,$62,$17
;------------------------------------------------
EDAICD5
	DB	$00,$00,$42,$17
	DB	$00,$08,$44,$17
	DB	$00,$10,$46,$17
	DB	$00,$18,$46,$37
	DB	$00,$20,$44,$37	;メッセージカーソルが消す！
	DB	$00,$28,$42,$37
;
	DB	$10,$00,$48,$17
	DB	$10,$08,$4A,$17
	DB	$10,$10,$4C,$17
	DB	$10,$18,$4C,$37
	DB	$10,$20,$4A,$37
	DB	$10,$28,$08,$37
;
	DB	$20,$10,$56,$17
	DB	$20,$18,$66,$17
;
	DB	$30,$10,$56,$17
	DB	$30,$18,$66,$17
;
	DB	$40,$10,$56,$17
	DB	$40,$18,$66,$17
;
	DB	$50,$10,$56,$17
	DB	$50,$18,$66,$17
;
	DB	$60,$10,$56,$17
	DB	$60,$18,$66,$17
;
	DB	$70,$10,$56,$17
	DB	$70,$18,$66,$17
;
	DB	$80,$10,$56,$17
	DB	$80,$18,$66,$17
;
	DB	$90,$10,$56,$17
	DB	$90,$18,$66,$17
;
	DB	$A0,$10,$56,$17
	DB	$A0,$18,$66,$17
;
	DB	$B0,$10,$56,$17
	DB	$B0,$18,$66,$17
;================================================================
EDASTD
	DB	EDC1-EDCA
	DB	EDC2-EDCA
	DB	EDC3-EDCA
	DB	EDC4-EDCA
	DB	EDC5-EDCA
	DB	EDC6-EDCA
	DB	EDC7-EDCA
	DB	EDC8-EDCA
	DB	EDC9-EDCA
	DB	EDC9-EDCA
	DB	EDC9-EDCA
	DB	EDC9-EDCA
	DB	EDC9-EDCA
	DB	EDC9-EDCA
	DB	EDCF-EDCA
	DB	EDC0-EDCA
;- - - - - - - - - - - - - - - - -
EDAICS_sub
	PUSH	BC
;
	LD	A,(ENDSYP)
	SWAP	A
	AND	$0F
	LD	E,A
	LD	D,B
	LD	HL,EDASTD
	ADD	HL,DE
	LD	B,(HL)
;
	LD	HL,EDAICD
;
	LD	A,(ENCHPT2)
	CP	$05
	JR	Z,EDAC090
	AND	A
	JR	Z,EDC000S
;
	LD	HL,EDAICD2
	DEC	A
	JR	Z,EDC000S
;
	LD	HL,EDAICD3
	DEC	A
	JR	Z,EDC000S
;
	LD	HL,EDAICD4
	DEC	A
	JR	Z,EDC000S
;
	LD	HL,EDAICD5
EDC000S
	LD	DE,OAM+$0C
;
	LD	C,$00
EDAC010
	LD	A,C
	AND	$03
	CP	$00
	JR	NZ,EDAC020
;
	LD	A,(ENDSYP)
	JR	EDAC030
EDAC020
	CP	$01
	JR	NZ,EDAC040
;
	PUSH	HL
	LD	HL,TILTXD
	LD	A,(ENSVXL)
	SUB	(HL)
	POP	HL
EDAC030
	ADD	A,(HL)
	JR	EDAC050
EDAC040
	LD	A,(HL)
EDAC050
	LD	(DE),A
	INC	HL
	INC	DE
;
	INC	C
	LD	A,C
	CP	B    ;EDCE-EDCA
	JR	NZ,EDAC010
;
EDAC090
	POP	BC
	RET

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	シーン７：雲フェード						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
KUMO_FADE_7
		DW	$7148,$5631,$5631,$739c	; ( 0 )
		DW	$6527,$4def,$4def,$6739	; ( 1 )
		DW	$6906,$45ad,$45ad,$5ad6	; ( 2 )
		DW	$4ce5,$3d6b,$3d6b,$4e73	; ( 3 )
		DW	$3ca4,$3129,$3129,$3def	; ( 4 )
;========================================================================

KUMO_FADE7_sub
		LD	A,(EDCNT3)
		CP	$50
		RET	NC

		LD	B,A
		AND	%00001111
		RET	NZ

		LD	A,B
		AND	%11110000
		SRL	A		
		LD	C,A
		LD	B,$0

		PUSH	BC
		LD	HL,KUMO_FADE_7
		ADD	HL,BC
		LD	BC,$0008	; ４パレット
		LD	DE,CGWORK	; ０－０から
		CALL	DATA_MOV	; データ転送
		POP	BC

		LD	A,C
		CP	4*8
		JR	Z,KUMOFA7_100

		LD	A,4
		JR	KUMOFA7_110
KUMOFA7_100
		LD	HL,CGWORK+0038H	; ７－０ セット
		LD	A,<$3ca4
		LD	(HLI),A
		LD	A,>$3ca4
		LD	(HL),A
		LD	A,4*8
KUMOFA7_110
		LD	(COLLNG),A	; 転送長さ
		XOR	A
		LD	(COLOFS),A	; 転送オフセット
		LD	A,BGCOL_BITFG|$80
		LD	(CGDMAF),A	; 転送フラグ（部分転送）
		RET

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	シーン９：空飛ぶくじら						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;-----<	模様 >-----------------------------------------------------------
FLYKUJIRA
;;;;;;;		DB	$00,$0D+$0C,$5B,$0C>>1	;【06】
;;;;;;;		DB	$03,$04+$0C,$5A,$0C>>1
;;;;;;;		DB	$05,$FC+$0C,$59,$0C>>1
		DB	$00,$0D+$0C,$4f,$0C>>1	;【06】
		DB	$03,$04+$0C,$4e,$0C>>1
		DB	$05,$FC+$0C,$4d,$0C>>1
FLYKUJIRA_END
FLYKUJIRA_CNT	EQU	(FLYKUJIRA_END-FLYKUJIRA)
;
;-----<	本体 >-----------------------------------------------------------
FLYKUJIRA2_1
		DB	$08,$14+$0C,$EB,$0A>>1	;【07】
		DB	$00,$14+$0C,$EA,$0A>>1
		DB	$08,$0C+$0C,$DF,$0A>>1
		DB	$00,$0C+$0C,$DE,$0A>>1
		DB	$08,$04+$0C,$CF,$0A>>1
		DB	$00,$04+$0C,$CE,$0A>>1
		DB	$08,$FC+$0C,$C1,$0A>>1
		DB	$00,$FC+$0C,$C0,$0A>>1
		DB	$10,$F4+$0C,$5D,$0A>>1
		DB	$08,$F4+$0C,$5C,$0A>>1
FLYKUJIRA2_2
		DB	$08,$14+$0C,$EB,$0A>>1	;【08】
		DB	$00,$14+$0C,$EA,$0A>>1
		DB	$08,$0C+$0C,$DF,$0A>>1
		DB	$00,$0C+$0C,$DE,$0A>>1
		DB	$08,$04+$0C,$CF,$0A>>1
		DB	$00,$04+$0C,$CE,$0A>>1
		DB	$08,$FC+$0C,$C1,$0A>>1
		DB	$00,$FC+$0C,$C0,$0A>>1
		DB	$10,$F4+$0C,$5F,$0A>>1
		DB	$08,$F4+$0C,$5E,$0A>>1
FLYKUJIRA2_3
		DB	$08,$14+$0C,$EB,$0A>>1	;【09】
		DB	$00,$14+$0C,$EA,$0A>>1
		DB	$08,$0C+$0C,$DF,$0A>>1
		DB	$00,$0C+$0C,$DE,$0A>>1
		DB	$08,$04+$0C,$CF,$0A>>1
		DB	$00,$04+$0C,$CE,$0A>>1
		DB	$08,$FC+$0C,$D1,$0A>>1
		DB	$00,$FC+$0C,$D0,$0A>>1
		DB	$10,$F4+$0C,$ED,$0A>>1
		DB	$08,$F4+$0C,$EC,$0A>>1
FLYKUJIRA2_4
		DB	$08,$14+$0C,$EB,$0A>>1	;【0A】
		DB	$00,$14+$0C,$EA,$0A>>1
		DB	$08,$0C+$0C,$DF,$0A>>1
		DB	$00,$0C+$0C,$DE,$0A>>1
		DB	$08,$04+$0C,$CF,$0A>>1
		DB	$00,$04+$0C,$CE,$0A>>1
		DB	$08,$FC+$0C,$D1,$0A>>1
		DB	$00,$FC+$0C,$D0,$0A>>1
		DB	$10,$F4+$0C,$EF,$0A>>1
		DB	$08,$F4+$0C,$EE,$0A>>1
FLYKUJIRA2_END
FLYKUJIRA2_CNT	EQU	(FLYKUJIRA2_END-FLYKUJIRA2_4)
;
FLYKUJIRA2_TBL
		DW	FLYKUJIRA2_1
		DW	FLYKUJIRA2_2
		DW	FLYKUJIRA2_3
		DW	FLYKUJIRA2_4
;========================================================================

FKUJIRA_CGB_sub
		LD	A,36*3		; インデックス固定
		LD	(ENOMID),A

		LD	A,(FRCNT)
		AND	%01100000
		SWAP	A
		LD	E,A
		LD	D,$0
		LD	HL,FLYKUJIRA2_TBL
		ADD	HL,DE
		LD	A,(HLI)
		LD	D,A
		LD	H,(HL)
		LD	L,D
		LD	C,FLYKUJIRA2_CNT
		CALL	OAMSET_1CHR2	; 本体

		LD	HL,FLYKUJIRA
		LD	C,FLYKUJIRA_CNT
		CALL	OAMSET_1CHR2	; 模様
		RET

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ＯＡＭ １キャラモードセット					x
;x----------------------------------------------------------------------x
;x	    ＥＮＴＲＹ							x
;x		Ｃ     ： キャラクター数				x
;x		ＨＬ   ： ＯＡＭデータ					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
OAMSET_1CHR2
		PUSH	BC

		PUSH	HL
		LD	A,(ENOMID)
		LD	E,A
		LD	D,$0
		LD	HL,OAM
		ADD	HL,DE
		LD	D,H		; DE <-- HL
		LD	E,L
		POP	HL

		LD	A,C
		SRL	A		; ／４
		SRL	A
		LD	C,A
OMST12_100
		LD	A,(ENDSYP)
		ADD	A,(HL)
		LD	(DE),A		; Ｙポジションセット
		INC	DE
		INC	HL
		LD	A,(ENSVXL)
		ADD	A,(HL)
		LD	(DE),A		; Ｘポジションセット
		INC	DE
		INC	HL
		LD	A,(HLI)
		LD	(DE),A		; キャラクタナンバーセット
		INC	DE
		LD	A,(HLI)
		LD	(DE),A		; アトリビュートセット
		INC	DE
		DEC	C
		JR	NZ,OMST12_100

		POP	BC
		LD	A,(ENOMID)
		ADD	A,C
		CP	$a0
		JR	C,OMST12_200

		XOR	A
OMST12_200
		LD	(ENOMID),A	; インデックスセット

		LD	A,(INDEX)
		LD	C,A
		RET


;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ブラックフェードＯＵＴ（ＢＧのみ）				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
Blackfade_Red	EQU	1*3
Blackfade_Green	EQU	2*3
Blackfade_Blue	EQU	4*3
;========================================================================

BLACK_FADEOUT_sub
		LD	A,Blackfade_Red
		LD	(WORKD),A
		LD	A,Blackfade_Green
		LD	(WORKE),A
		LD	A,Blackfade_Blue
		LD	(WORKF),A
		LD	HL,CGWORK
		LD	D,$024
;
		CALL	Black_FadeOutLoop
;
		LD	A,BGCOL_BITFG	; ＢＧのみ
		LD	(CGDMAF),A	; 転送フラグセット
		XOR	A
		RET
;
;+--------------------------------------------------------------+
;|	ブラックフェードアウト					|
;+--------------------------------------------------------------+
Black_FadeOutLoop
		PUSH	HL
;
		LD	A,(WORKD)	;赤
		LD	C,A
		LD	A,(HL)
		AND	%00011111
		JR	Z,Blackfade_100
		SUB	C
		JR	NC,Blackfade_100
		XOR	A
Blackfade_100
		LD	(WORK0),A
;
		LD	A,(WORKE)	;緑
		LD	C,A
		LD	A,(HLI)
		AND	%11100000
		SWAP	A
		LD	B,A
		LD	A,(HL)
		AND	%00000011
		SWAP	A
		OR	B
		AND	%00111110
		JR	Z,Blackfade_200
		SUB	C
		JR	NC,Blackfade_200
		XOR	A
Blackfade_200
		LD	(WORK1),A
;
		LD	A,(WORKF)	;青
		LD	C,A
		LD	A,(HL)
		AND	%01111100
		JR	Z,Blackfade_300
		SUB	C
		JR	NC,Blackfade_300
		XOR	A
Blackfade_300
		LD	(WORK2),A
;
		POP	HL
		LD	A,(WORK0)
		LD	B,A
		LD	A,(WORK1)
		SWAP	A
		LD	C,A
		AND	%11100000
		OR	B
		LD	(HLI),A
		LD	A,(WORK2)
		LD	B,A
		LD	A,C
		AND	%00000011
		OR	B
		LD	(HLI),A
		DEC	D
		JR	NZ,Black_FadeOutLoop
;
		RET


;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	エンディングメッセージ キャラクター転送				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
ENDMS_CHR_TRAN
		LD	C,$10		; 転送先 HIGH
		LD	B,$68		; 転送元 HIGH clza.cgx
		LD	A,$38		; 転送元 BANK
		LD	H,:ENDMS_CHR_TRAN	; 戻りバンク

		CALL	NEWDJ_DMA

		LD	C,$11		; 転送先 HIGH
		LD	B,$69		; 転送元 HIGH clza.cgx
		LD	A,$38		; 転送元 BANK
		LD	H,:ENDMS_CHR_TRAN	; 戻りバンク

		CALL	NEWDJ_DMA

		RET


;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	フェードＩＮ ＳＵＢ						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
Fade_add_Red	EQU	1*6
Fade_add_Green	EQU	2*6
Fade_add_Blue	EQU	4*6
;========================================================================

END_FADEIN_sub
		LD	A,Fade_add_Red
		LD	(WORKD),A
		LD	A,Fade_add_Green
		LD	(WORKE),A
		LD	A,Fade_add_Blue
		LD	(WORKF),A
		LD	HL,CGWORK
		LD	A,$40
		LD	(WORK3),A
;
		CALL	END_WhiteInLoop
;
		RET

;+--------------------------------------------------------------+
;|	ホワイトイン						|
;+--------------------------------------------------------------+
END_WhiteInLoop
		PUSH	HL
		LD	A,$002
		LD	(SVBK),A
		LD	A,(HLI)
		LD	E,A
		LD	A,(HL)
		LD	D,A
		DEC	HL
		XOR	A
		LD	(SVBK),A
;
		LD	A,(WORKD)	;赤
		LD	C,A
		LD	A,E
		AND	%00011111
		LD	B,A
		LD	A,(HL)
		AND	%00011111
		CP	B
		JR	C,END_OWIL_130
		JR	Z,END_OWIL_130
		SUB	C
		JR	C,END_OWIL_130
		CP	B
		JR	NC,END_OWIL_150
END_OWIL_130
		LD	A,B
END_OWIL_150
		LD	(WORK0),A
;
		LD	A,E		;緑
		AND	%11100000
		SWAP	A
		LD	B,A
		LD	A,D
		AND	%00000011
		SWAP	A
		OR	B
		LD	B,A
		LD	A,(HLI)
		AND	%11100000
		SWAP	A
		LD	C,A
		LD	A,(HL)
		AND	%00000011
		SWAP	A
		OR	C
		PUSH	AF
		LD	A,(WORKE)
		LD	C,A
		POP	AF
		CP	B
		JR	C,END_OWIL_230
		JR	Z,END_OWIL_230
		SUB	C
		JR	C,END_OWIL_230
		CP	B
		JR	NC,END_OWIL_250
END_OWIL_230
		LD	A,B
END_OWIL_250
		LD	(WORK1),A
;
		LD	A,(WORKF)	;青
		LD	C,A
		LD	A,D
		AND	%01111100
		LD	B,A
		LD	A,(HL)
		AND	%01111100
		CP	B
		JR	C,END_OWIL_330
		JR	Z,END_OWIL_330
		SUB	C
		JR	C,END_OWIL_330
		CP	B
		JR	NC,END_OWIL_350
END_OWIL_330
		LD	A,B
END_OWIL_350
		LD	(WORK2),A
;
		POP	HL
		LD	A,(WORK0)
		LD	B,A
		LD	A,(WORK1)
		SWAP	A
		LD	C,A
		AND	%11100000
		OR	B
		LD	(HLI),A
		LD	A,(WORK2)
		LD	B,A
		LD	A,C
		AND	%00000011
		OR	B
		LD	(HLI),A
		LD	A,(WORK3)
		DEC	A
		LD	(WORK3),A
		AND	A
		JP	NZ,END_WhiteInLoop
;
		XOR	A
		LD	(FADEMDFG),A
;;;;;;;		LD	A,COLDMA_BITFG
;;;;;;;		LD	(CGDMAF),A	; 転送フラグセット
		RET

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	フェードＯＵＴ ＳＵＢ						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
END_FADEOUT_sub
		LD	A,Fade_add_Red
		LD	(WORKD),A
		LD	A,Fade_add_Green
		LD	(WORKE),A
		LD	A,Fade_add_Blue
		LD	(WORKF),A
		LD	HL,CGWORK
		LD	D,$040
		LD	(WORK3),A
;
		CALL	END_WhiteOutLoop
;
		RET
;
;+--------------------------------------------------------------+
;|	ホワイトアウト						|
;+--------------------------------------------------------------+
END_WhiteOutLoop
		PUSH	HL
;
		LD	A,(WORKD)	;赤
		LD	C,A
		LD	A,(HL)
		AND	%00011111
		ADD	A,C
		CP	%00100000
		JR	C,END_OWOL_100
		LD	A,%00011111
END_OWOL_100
		LD	(WORK0),A
;
		LD	A,(WORKE)	;緑
		LD	C,A
		LD	A,(HLI)
		AND	%11100000
		SWAP	A
		LD	B,A
		LD	A,(HL)
		AND	%00000011
		SWAP	A
		OR	B
		AND	%00111110
		ADD	A,C
		CP	%01000000
		JR	C,END_OWOL_200
		LD	A,%00111110
END_OWOL_200
		LD	(WORK1),A
;
		LD	A,(WORKF)	;青
		LD	C,A
		LD	A,(HL)
		AND	%01111100
		ADD	A,C
		CP	%10000000
		JR	C,END_OWOL_300
		LD	A,%01111100
END_OWOL_300
		LD	(WORK2),A
;
		POP	HL
		LD	A,(WORK0)
		LD	B,A
		LD	A,(WORK1)
		SWAP	A
		LD	C,A
		AND	%11100000
		OR	B
		LD	(HLI),A
		LD	A,(WORK2)
		LD	B,A
		LD	A,C
		AND	%00000011
		OR	B
		LD	(HLI),A
		DEC	D
;;;;;;;		LD	A,D
;;;;;;;		AND	A
		JR	NZ,END_WhiteOutLoop
;
;;;;;;;		LD	A,COLDMA_BITFG
;;;;;;;		LD	(CGDMAF),A	; 転送フラグセット
		RET


;------------------------------------------------------------------------
		END
;------------------------------------------------------------------------
