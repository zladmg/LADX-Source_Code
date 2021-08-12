;=== Ver. USA =====

		onbankgroup

;============== バンク０ ================================================
BANK0		GROUP	0
		EXTERN	DATA_MOV,ENEMY,RAMCLR,RAMCL2,BGDTST,ENDTST,RNDSUB
		EXTERN	MSGCHK,ENIDSHL,OBJBG,FDIN,FDOUT,NXGOTO,ENEMYL,SVOPEN
		EXTERN	GKCHRV,COHTITL,ITEMDPL,RAMCL3,BGBKST,SOUNDCLR,DJITRV
		EXTERN	ENOMST,EN2CST,LDTIM0,NXOMSBL,BBSDST,ENPTST,STATINC
		EXTERN	SOUNDOUT,BGMON,MSGCH2,DATA_MOV2,MVCALC,PLCSET,PLSDCL
		EXTERN	LDTIM1,LDTIM3,CRENPSL,ENPSSV,EN1CST,ENOMST2,VRMCL,VRMBT
		EXTERN	BKCH2,BKCH3,WINDBGS,RBGST,ECACH,EMOVE,EFAIL,PSLBGS
		EXTERN	GPLAY,GVCHG,GOVBG,PMOVE,PSLBG2,NSLBGS,NMREG,NMCLR
		EXTERN	NCLBGS,PSLCT,GMAPBGS,VRMB2,OPBGS,PINDR2,DJBST,GRBST
		EXTERN	GMBST,BLVRDS,GMAPCL,BNKTR,NMCPY,SPTST,BKCHG,TLCHG,ODCHG
		EXTERN	GPMAIN,NCPBGS,GRCST,TSVBG,PINDR1,OPBST,OPBG2,OPBG3
		EXTERN	OPBS2,EINIT,LOGOS,PECBG,PECCD,LOVBG,LOVCD,EBGY,ECHA2
		EXTERN	HIMITSU2,ECHA,EBGA,ENDG,ECHB2,EBGB2,EBGC,ECHC,ECHB
		EXTERN	EBGB,ECHD,EBGD,ECHE,EBGE,ECHF,EBGF,EWAKU,EWAKU2
		EXTERN	EBGA1,EBGA2,EBGA3,EBGA4,EBGA5,ECHA1,ECHYM
		EXTERN	JSL_CALL,AllWhiteSetSub
;
;-------------<	ZMA >----------------------------------------------------
		EXTERN	CAMERA_SCR_TRAN
		EXTERN	ENDMS
;
;-------------<	ZCO >----------------------------------------------------
		EXTERN	LCDC_OFF
;
;============== バンク１ ================================================
BANK1		GROUP	1
		EXTERN	ITMINC,PSLCTGO,TSV4000,SCRRCLR
;
;============== バンク２ ================================================
BANK2		GROUP	2
		EXTERN	EXSTRA,COINIT,HARTIT,ITEMDP,WINDOW,ITEMDP2
;
;============== バンク３ ================================================
BANK3		GROUP	3
		EXTERN	ENCAPS,BOMBR,BUMER,KTOBJ,PYAAA,GIRL1,EDAI,GAGE
		EXTERN	WANWAN,OZWAN,OCTA1,UNIUNI,GIRL0,KODOMB,KODOMC
		EXTERN	FOXDOG,BTFLY,NIWAT,PAPA0
;
;============== バンク８ ================================================
BANK8		GROUP	8
		EXTERN	GRBGCR,BGUNCH
;
;============== バンク２０ ==============================================
BANK20		GROUP	$20
;-------------<	ZEND2 >--------------------------------------------------
		EXTERN	MIZU_COL_SET_sub,FKUJIRA_CGB_sub
		EXTERN	BLACK_FADEOUT_sub,EDAICS_sub
		EXTERN	KUMO_FADE7_sub
;
;============== バンク２１ ==============================================
BANK21		GROUP	$21
		EXTERN	SP_END3,SP_END4,SP_END5
;
;============== バンク２３ ==============================================
BANK23		GROUP	$23
		EXTERN	Kaisou_01_scr,Kaisou_02_scr,Kaisou_03_scr
		EXTERN	Kaisou_04_scr,Kaisou_05_scr
		EXTERN	ED8000_sub
;
;============== バンク２４ ==============================================
BANK24		GROUP	$24
;-------------<	ZATR >---------------------------------------------------
		EXTERN	LINK_FADE8_sub,KUMO_BRIGHT7_sub
;
;============== バンク２７ ==============================================
BANK27		GROUP	$27
;-------------<	ZEND2 >--------------------------------------------------
		EXTERN	B2LINKMV_CGB_sub,B2WOODMV_CGB_sub
		EXTERN	BWOODMV_CGB_sub,BTORIMV_CGB_sub
		EXTERN	DLINKMV_CGB_sub,ELINKMV_CGB_sub
		EXTERN	FLINKMV_CGB_sub
		EXTERN	BLINKMV2_sub,FMARINMV_CGB_sub
;
;========================================================================
	PUBALL
;
BANK17	GROUP	$17
		LIB	ZRAM	; RAM ＥＱＵＡＴＥ ファイル
		LIB	ZBN	; BG unit no file !
;
;;xyz;;;;;---sub---------------------------------------
;;xyz;;;;	 EXTERN	 DATA_MOV,ENEMY,EXSTRA,RAMCLR,RAMCL2,BGDTST
;;xyz;;;;	 EXTERN	 ENDTST,COINIT,HARTIT,ITEMDP,RNDSUB,WINDOW,ITEMDP2,MSGCHK
;;xyz;;;;	 EXTERN	 ENIDSHL,OBJBG,ENCAPS,FDIN,FDOUT,NXGOTO,ENEMYL,SVOPEN,GKCHRV
;;xyz;;;;	 EXTERN	 COHTITL,ITEMDPL,RAMCL3,BGBKST,SOUNDCLR,DJITRV,ENOMST,EN2CST
;;xyz;;;;	 EXTERN	 ITMINC,LDTIM0,NXOMSBL,BBSDST,ENPTST,STATINC,SOUNDOUT,BGMON
;;xyz;;;;	 EXTERN	 PSLCTGO,TSV4000,MSGCH2,SCRRCLR,DATA_MOV2,MVCALC,PLCSET
;;xyz;;;;	 EXTERN	 PLSDCL,LDTIM1,LDTIM3,CRENPSL,ENPSSV,EN1CST,ENOMST2
;;xyz;;;;;- -lavel -
;;xyz;;;;	 EXTERN	 VRMCL,VRMBT,BKCH2,BKCH3,WINDBGS,RBGST,BOMBR,BUMER,KTOBJ,GRBGCR
;;xyz;;;;	 EXTERN	 BGUNCH,ECACH,PYAAA,EMOVE,EFAIL,PSLBGS,GPLAY,GVCHG,GOVBG,PMOVE
;;xyz;;;;	 EXTERN	 PSLBG2,NSLBGS,NMREG,NMCLR,NCLBGS,PSLCT,GMAPBGS,VRMB2,OPBGS
;;xyz;;;;	 EXTERN	 PINDR2,DJBST,GRBST,GMBST,BLVRDS,GMAPCL,BNKTR,NMCPY,SPTST
;;xyz;;;;	 EXTERN	 BKCHG,TLCHG,ODCHG,GPMAIN,NCPBGS,GRCST,TSVBG,PINDR1,GIRL1
;;xyz;;;;	 EXTERN	 OPBST,OPBG2,OPBG3,OPBS2,EINIT,LOGOS,PECBG,PECCD,LOVBG,LOVCD
;;xyz;;;;	 EXTERN	 EBGY,ECHA2,HIMITSU2
;;xyz;;;;	 EXTERN	 ECHA,EBGA,EDAI,ENDG,GAGE,ECHB2,EBGB2,EBGC,ECHC,ECHB,EBGB
;;xyz;;;;	 EXTERN	 ECHD,EBGD,ECHE,EBGE,ECHF,EBGF		 ;,TOURCK
;;xyz;;;;	 EXTERN	 EWAKU,EWAKU2,EBGA1,EBGA2,EBGA3,EBGA4,EBGA5,ECHA1,ECHYM
;;xyz;;;;	 EXTERN	 WANWAN,OZWAN,OCTA1,UNIUNI,GIRL0,KODOMB,KODOMC,FOXDOG,BTFLY,NIWAT
;;xyz;;;;	 EXTERN	 PAPA0
;
;========================================================================
	LIST
	ORG	$4000
	KANJI
	isdmg
;==================================================
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%   山じわじわ消す			 %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
YMCLPT
	DB	24,05,55,32,54,14,30,43
	DB	37,20,31,18,21,44,49,63
	DB	12,48,01,51,04,39,08,29
	DB	56,23,62,40,17,00,58,61
	DB	42,11,27,10,52,07,34,15
	DB	28,35,47,59,45,22,60,50
	DB	16,41,02,46,13,25,09,38
	DB	36,06,19,33,26,03,57,53
;- - - - - - - - - - - - - - -
YMCLBT
	DB	%01111111
	DB	%10111111
	DB	%11011111
	DB	%11101111
	DB	%11110111
	DB	%11111011
	DB	%11111101
	DB	%11111110
; - - - - - - - - - - - - - -
YMCLAD
	DW	$9150
	DW	$9060
	DW	$9070
	DW	$9080
	DW	$9090
	DW	$90A0
	DW	$91F0
	DW	$9160
	DW	$9170
	DW	$9180
	DW	$9190
	DW	$91A0
	DW	$9440		; (CGB) たまごの下
;- - - - - - - - - - - - - - - - - -
YMCLER
	LD	A,(EDCNT1)
	LD	E,A
	LD	D,$00
	LD	HL,YMCLPT
	ADD	HL,DE
	LD	A,(HL)
	RRA
	RRA
	AND	%00001110
	LD	B,A
;
	LD	A,(HL)
	AND	$07
	LD	E,A
	LD	HL,YMCLBT
	ADD	HL,DE
	LD	C,(HL)
;
	XOR	A
	LD	D,A
YMCL10
	LD	(WORK2),A
	SLA	A
	LD	E,A
	LD	HL,YMCLAD
	ADD	HL,DE
	LD	A,(HLI)
	LD	H,(HL)
	ADD	A,B
	LD	L,A
;
	LD	A,(HL)
	AND	C
	LD	(HLI),A
;
	LD	A,(HL)
	AND	C
	LD	(HL),A
;
	LD	A,(WORK2)
	INC	A
;(CGB)	CP	$0C
		CP	$0C+1	; たまごの下追加の為
	JR	NZ,YMCL10
;
	XOR	A
	LD	(CHTRF2),A
;
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	開発スタッフ表示		       %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
STAFFDT1
;			 0123456789ABCDEF01
		db	'    1998 STAFF    '	; 00
		db	'    SUPERVISOR    '	; 01
		db	'     DIRECTOR     '	; 02
		db	'  SCRIPT WRITER   '	; 03
		db	'    PROGRAMMER    '	; 04
		db	'CHARACTER DESIGNER'	; 05
		db	'  SOUND COMPOSER  '	; 06
		db	'     ART WORK     '	; 07
		db	'TECHNICAL SUPPORT '	; 08
		db	'  ENGLISH SCRIPT  '	; 09
		db	'SPECIAL THANKS TO '	; 0A
		db	'   DEBUG STAFF    '	; 0B
		db	'    1993 STAFF    '	; 0C
		db	' DUNGEON DESIGNER '	; 0D
		db	'   ILLUSTRATOR    '	; 0E
		db	'     PRODUCER     '	; 0F
		db	'EXECUTIVE PRODUCER'	; 10
		db	'                  '	; 11
;;;;;;;;;;;		 0123456789ABCDEF01
;;;;;;;;	DB	'     DIRECTOR     '	;0
;;;;;;;;	DB	' DUNGEON DESIGNER '	;1
;;;;;;;;	DB	'  SCRIPT WRITER   '	;2
;;;;;;;;	DB	'    PROGRAMMER    '	;3
;;;;;;;;	DB	'CHARACTER DESIGNER'	;4
;;;;;;;;	DB	'  SOUND COMPOSER  '	;5
;;;;;;;;	DB	'   ILLUSTRATOR    '	;6
;;;;;;;;	DB	' SPECIAL THANKS TO'	;7
;;;;;;;;	DB	'     PRODUCER     '	;8
;;;;;;;;	DB	'EXECUTIVE PRODUCER'	;9
;;;;;;;;	DB	'                  '	;A
STAFFDT2
;			 0123456789ABCDEF01
		db	'                  '	; 00
		db	'  TAKASHI TEZUKA  '	; 01
		db	'YOSINORI TUTIYAMA '	; 02
		db	' NOBUO MATSUMIYA  '	; 03
		db	'    EIJI NOTO     '	; 04
		db	'   KIYOSHI KODA   '	; 05
		db	'SIGEHIRO KASAMATU '	; 06
		db	'  MIKIO MISHIMA   '	; 07
		db	'   KYOKO KIMURA   '	; 08
		db	'   YUICHI OZAKI   '	; 09
		db	'   KEIKO IZAWA    '	; 0A
		db	'   N KOGANEZAWA   '	; 0B
		db	'   JIM WORNELL    '	; 0C
		db	'   KEIKO TAMURA   '	; 0D
		db	'    TAMAYO ITO    '	; 0E
		db	'  AKIYA SAKAMOTO  '	; 0F
		db	' R&D2 DEBUG STAFF '	; 10
		db	' SUPER MARIO CLUB '	; 11
		db	'YASUHISA YAMAMURA '	; 12
		db	'  KENSUKE TANABE  '	; 13
		db	' YOSHIAKI KOIZUMI '	; 14
		db	'  KAZUAKI MORITA  '	; 15
		db	'TAKAMITSU KUZUHARA'	; 16
		db	' MASANAO ARIMOTO  '	; 17
		db	'  SHIGEFUMI HINO  '	; 18
		db	'  KAZUMI TOTAKA   '	; 19
		db	'  MINAKO HAMANO   '	; 1A
		db	'  KOZUE ISHIKAWA  '	; 1B
		db	'  YOUICHI KOTABE  '	; 1C
		db	'    DAN OWSEN     '	; 1d
		db	' TOSHIHIKO NAKAGO '	; 1e
		db	'    KOJI KONDO    '	; 1f
		db	' TOMOAKI KUROUME  '	; 20
		db	' MASAICHI OKUMURA '	; 21
		db	'    KANAE WADA    '	; 22
		db	' SHIGERU MIYAMOTO '	; 23
		db	' HIROSHI YAMAUCHI '	; 24
		db	'THE  END          '	; 25
STAFFDT2_END
;
;;;;;;;;;;;		 0123456789ABCDEF01
;;;;;;;;	DB	'  TAKASHI TEZUKA  '	;0
;;;;;;;;	DB	' YASUHISA YAMAMURA'	;1
;;;;;;;;	DB	'  KENSUKE TANABE  '	;2
;;;;;;;;	DB	' YOSHIAKI KOIZUMI '	;3
;;;;;;;;	DB	'  KAZUAKI MORITA  '	;4
;;;;;;;;	DB	'TAKAMITSU KUZUHARA'	;5
;;;;;;;;	DB	'  MASANAO ARIMOTO '	;6
;;;;;;;;	DB	'  SHIGEFUMI HINO  '	;7
;;;;;;;;	DB	'   KAZUMI TOTAKA  '	;8
;;;;;;;;	DB	'   MINAKO HAMANO  '	;9
;;;;;;;;	DB	'  KOZUE ISHIKAWA  '	;A
;;;;;;;;	DB	'  YOUICHI KOTABE  '	;B
;;;;;;;;	DB	' TOSHIHIKO NAKAGO '	;C
;;;;;;;;	DB	'    KEIZO KATO    '	;D
;;;;;;;;	DB	'    KOJI KONDO    '	;E
;;;;;;;;	DB	' TOMOAKI KUROUME  '	;F
;;;;;;;;	DB	' SHIGERU MIYAMOTO '	;10
;;;;;;;;	DB	' HIROSHI YAMAUCHI '	;11
;;;;;;;;	DB	'THE  END          '	;12
;====================================================
STAFFST
	LD	A,(EDTIM3)
;;	LD	A,(EDTIM1)
	AND	A
	RET	NZ
;
		LD	A,(EDTIM5)
		AND	A		; 名前表示待ち？
		JR	NZ,STAFFST_100	; ＹＥＳ

	CALL	STDSP1
	CALL	STDSP2

STAFFST_100
;
	LD	A,(STMODE)
	RST	00
	DW	STF1000		; ( 0 )
	DW	STF2000		; ( 1 )
	DW	STF3000		; ( 2 )
	DW	STF4000		; ( 3 )
	DW	STF5000		; ( 4 )
	DW	STF6000		; ( 5 )
;----------------------------------------
STAFFMD1
;		１９９８版
		db	000h,001h,002h,003h,004h,004h,004h,005h
		db	005h,006h,007h,008h,009h,009h,009h,00ah
		db	00ah,00bh
;		１９９３版
		db	00ch,002h,00dh,003h,003h,004h,004h,005h
		db	005h,006h,006h,006h,00eh,009h,00ah,00ah
		db	00ah,00ah,00ah,00fh,010h,011h
;;;;;;;; DB $00,$01,$02,$02,$03,$03,$04,$04,$05,$05,$05,$06
;;;;;;;; DB $07,$07,$07,$08,$09,$0A
;;;;;;;;; DB $07,$07,$07,$07,$08,$09,$0A
STAFFMD2
;		１９９８版
		db	000h,001h,002h,003h,004h,005h,006h,007h
		db	008h,009h,00ah,00bh,00ch,00dh,00eh,00fh
		db	010h,011h
;		１９９３版
		db	000h,001h,012h,013h,014h,015h,016h,017h
		db	018h,019h,01ah,01bh,01ch,01dh,01eh,01fh
		db	020h,021h,022h,023h,024h,025h
;;;;;;;; DB $00,$01,$02,$03,$04,$05,$06,$07,$08,$09,$0A,$0B
;;;;;;;; DB $0C,$0E,$0F,$10,$11,$12
;;;;;;;;; DB $0C,$0D,$0E,$0F,$10,$11,$12
;
sfend		equ	(STAFFMD2-STAFFMD1)
;
STF1000
	LD	A,(EDTIM2)
	AND	A
	RET	NZ
;
	LD	C,$00
;
	LD	A,(EDCNT0)
	LD	E,A

		CP	$25		; 宮本氏以上？
		JR	C,STF1000_100	; ＮＯ
		CP	$27
		JR	NZ,STF1000_090

		LD	A,(CGBFLG)
		AND	A
		JR	Z,STF1000_100
STF1000_090
		LD	A,12
		LD	(EDTIM5),A	; 名前表示待ちタイマー
STF1000_100
	LD	D,$00
	LD	HL,STAFFMD1
	ADD	HL,DE
	LD	A,(STWRK0)
	CP	(HL)
	JR	NZ,STF1010
;
	INC	C
STF1010
	LD	A,C
	LD	(EDWRK5),A	;肩書きもフエード!
;
	LD	A,(HL)
	LD	(STWRK0),A
;
	LD	HL,STAFFMD2
	ADD	HL,DE
	LD	A,(HL)
	LD	(STWRK1),A
;
	XOR	A
	LD	(EDWRK0),A
	JP	STINC
;----------------------------------------
STFCLD1
	DB	%00000000
	DB	%00000000
	DB	%00000000
	DB	%00000000
	DB	%00000100
	DB	%00000100
	DB	%00000100
	DB	%00000100
	DB	%00011001
	DB	%00011001
	DB	%00011001
	DB	%00011001
	DB	%00011110
	DB	%00011110
	DB	%00011110
	DB	%00011110
STFCLD12
	DB	%11111111
	DB	%11111111
	DB	%11111111
	DB	%11111111
	DB	%10101111
	DB	%10101111
	DB	%10101111
	DB	%10101111
	DB	%01011010
	DB	%01011010
	DB	%01011010
	DB	%01011010
	DB	%00011110
	DB	%00011110
	DB	%00011110
	DB	%00011110
STFCLD2
	DB	%00011110
	DB	%00011110
	DB	%00011110
	DB	%00011110
	DB	%00011001
	DB	%00011001
	DB	%00011001
	DB	%00011001
	DB	%00000100
	DB	%00000100
	DB	%00000100
	DB	%00000100
	DB	%00000000
	DB	%00000000
	DB	%00000000
	DB	%00000000
STFCLD2B
	DB	%00011110
	DB	%00011110
	DB	%00011110
	DB	%00011110
	DB	%01101111
	DB	%01101111
	DB	%01101111
	DB	%01101111
	DB	%10111111
	DB	%10111111
	DB	%10111111
	DB	%10111111
	DB	%11111111
	DB	%11111111
	DB	%11111111
	DB	%11111111
;- - - - - - - - - - - - - - - - -
STF2000
;(CGB)	LD	A,(FRCNT)
;(CGB)	AND	$07
;(CGB)	JR	NZ,STF2020
;(CGB);
;(CGB)	LD	A,(EDWRK0)
;(CGB)	INC	A
;(CGB)	LD	(EDWRK0),A
;(CGB)	CP	$0C
;(CGB)	JR	NZ,STF2020
;
STIM
	LD	A,$A0+$10		; スタッフ表示タイマー
;;	LD	A,$A0
	LD	(EDTIM2),A
;
	CALL	STINC
;
	LD	A,(EDCNT0)
		cp	sfend-1
;;;;;;;;	CP	$12-1		; スタッフ表示終了？
	JR	NZ,STF2020		; ＮＯ
;
	LD	(HL),$04
STF2020
		LD	A,%00011110
		LD	(OBP1FG),A
		RET		; ふぇーどしない


;(CGB)	LD	A,(EDWRK0)
;(CGB)	LD	E,A
;(CGB)	LD	A,(FRCNT)
;(CGB)	AND	$03
;(CGB)	ADD	A,E
;(CGB)	LD	E,A
;(CGB)	LD	D,$00
;(CGB)	LD	HL,STFCLD1
;(CGB)	LD	A,(EDCNT0)
;(CGB)		cp	sfend-1
;(CGB);;;;;;;;	CP	$12-1
;(CGB)	JR	NZ,STF2021
;(CGB)	LD	HL,STFCLD12
;(CGB)STF2021
;(CGB)	ADD	HL,DE
;(CGB)	LD	A,(HL)
;(CGB)	LD	(OBP1FG),A
;(CGB);
;(CGB);	LD	A,(EDWRK5)
;(CGB);	AND	A
;(CGB);	JR	NZ,STF2030
;(CGB);;
;(CGB);	LD	A,(HL)
;(CGB);	LD	(OBP0FG),A
;(CGB)STF2030
;(CGB)	RET
;- - - - - - - - - - - - - - - - -
STF3000
;	LD	A,(KEYA2)
;	AND	$30
;	JR	NZ,STF3002
;
	LD	A,(EDTIM2)
	AND	A
	RET	NZ
;
;STF3002
	LD	C,$00
;
	LD	A,(EDCNT0)
	INC	A
	LD	E,A
	LD	D,$00
	LD	HL,STAFFMD1	;先読み！
	ADD	HL,DE
	LD	A,(STWRK0)
	CP	(HL)
	JR	NZ,STF3010
;
	INC	C
STF3010
	LD	A,C
	LD	(EDWRK5),A	;肩書きもフエード!
;
	XOR	A
	LD	(EDWRK0),A
STINC
	LD	HL,STMODE
	INC	(HL)
STF3050
	RET
;==================================
STF4000
	LD	A,(EDCNT0)
	LD	(WORKD),A
;
		CP	sfend-2
		JR	C,STF4000_100

		LD	A,(CGBFLG)
		AND	A
		JR	Z,STF4000_060

		LD	HL,DETHCT
		LD	A,(HLI)
		OR	(HL)		; ノーミスクリア？
		JR	Z,STF4000_100	; ＹＥＳ

;-------------------------------------------------------
;	ＢＧ版で THE END 時のみＢＧをフェードアウト
;-------------------------------------------------------
		LD	A,(FRCNT)
		AND	$03
		JR	NZ,STF4020

		CALL	BLACK_FADEOUT

		LD	A,(FRCNT)
		AND	%00000100
		JR	Z,STF4000_055

		LD	A,OBJCOL_BITFG	; ＯＢＪのみ
		LD	(CGDMAF),A	; 転送フラグセット
STF4000_055
		LD	A,(EDCNT0)
		LD	(WORKD),A	; WORKD 復帰
STF4000_060

	LD	A,(FRCNT)
	AND	$07
	JR	NZ,STF4020
;
	LD	A,(EDWRK0)
	INC	A
	LD	(EDWRK0),A
	CP	$0C
	JR	NZ,STF4020
;
STF4000_100

	LD	A,(WORKD)
		cp	sfend-2
;;;;;;;;	CP	$11-1
;
	LD	A,$10
;
	JR	C,STF4002
;
	LD	A,$80
STF4002
	LD	(EDTIM2),A
;
	LD	A,$00
	LD	(STMODE),A
;
	LD	A,(EDCNT0)
	INC	A
;	CP	$13
;	JR	NZ,STF4010
;	XOR	A
;STF4010
	LD	(EDCNT0),A
;;	CALL	STINC
STF4020
;;;;;;;;		RET		; ふぇーどしない


	LD	A,(EDWRK0)
	LD	E,A
	LD	A,(FRCNT)
	AND	$03
	ADD	A,E
	LD	E,A
	LD	D,$00
;(CGB)	LD	HL,STFCLD2
;(CGB)	ADD	HL,DE
;(CGB)	LD	A,(HL)
;(CGB)	LD	(OBP1FG),A
;
	LD	A,(WORKD)
		cp	sfend-2
;;;;;;;;	CP	$11-1
	JR	C,STF4030
;
	LD	HL,STFCLD2B
	ADD	HL,DE
	LD	A,(HL)
	LD	(BGPFG),A
	LD	(OBP1FG),A
;
;	LD	A,(EDWRK5)
;	AND	A
;	JR	NZ,STF4030
;;
;	LD	A,(HL)
;	LD	(OBP0FG),A
STF4030
	RET
;==================================
STF5000
	LD	A,EDAI
	CALL	ENIDSHL ;かもめマリンセット！
;
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),$E0
;
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),$10
;
	LD	HL,ENXSPD
	ADD	HL,DE
	LD	(HL),$08
;
	LD	HL,ENYSPD
	ADD	HL,DE
	LD	(HL),$08
;
	LD	HL,ENWRK0
	ADD	HL,DE
	LD	(HL),$10
;(CGB)	JP	STINC

		LD	A,(CGBFLG)
		AND	A
		JP	Z,STINC

;-------------------------------------
;	(CGB) かもめマリンセット
;-------------------------------------
;;;;;	XOR	A		; でばぐ
;;;;;	LD	(ENMODE+$0F),A	; りんく消す

		LD	HL,ENYSPD
		ADD	HL,DE
		LD	(HL),$F8	; Ｙスピードセット

		LD	HL,DETHCT
		LD	A,(HLI)
		OR	(HL)		; １回でも死んだ？
		JR	NZ,STF5000_100	; ＹＥＳ

		LD	A,60
		JR	STF5000_110
STF5000_100
		XOR	A
STF5000_110
		LD	(EDTIM5),A	; "THE END" 表示待ちタイマー

		XOR	A
		LD	(EDMODE),A
		CALL	ERCLER
		JP	ITINC		; エンディング１０
;==================================
STF6000
	RET
;------------------------------------------
STD1DT
;;    A	  B   C	  D   E	  F   G	  H   I	  J   K	  L   M	  N   O	  P
 DB $40,$18,$41,$42,$43,$19,$44,$45,$46,$00,$47,$48,$49,$4A,$4B,$50
;;    Q	  R   S	  T   U	  V   W	  X   Y	  Z
 DB $00,$51,$52,$53,$54,$55,$2F,$3F,$00,$00
;
suji		db	000h,01ah,000h,01ch,000h,000h,000h,000h,01dh,01bh
;
suu		equ	suji-STD1DT
;
;----------------------------------------
STDSP1
	LD	A,(STWRK0)
	CP	$FF
	RET	Z
;
	RLA
	AND	%11111110
	LD	E,A
	LD	D,$00
	RLA
	RL	D
	RLA
	RL	D
	RLA
	RL	D
	AND	%11110000
	ADD	A,E
	LD	E,A
		ld	a,d
		adc	a,000
		ld	d,a
	LD	HL,STAFFDT1
	ADD	HL,DE
;
	LD	DE,OAM+48
;
		LD	A,(CGBFLG)
		AND	A
		JR	Z,STDSP1_100

		LD	DE,OAM+0	; 肩書きは一番上
STDSP1_100
;
	LD	A,(FRCNT)
	AND	$01
	LD	A,$10
	JR	Z,STDP108
;
	INC	HL
	LD	A,$18
STDP108
	LD	(WORK0),A
;
	LD	C,09
STDP110
	LD	A,$40
	LD	(DE),A
	INC	DE
	LD	A,(WORK0)
	LD	(DE),A
	INC	DE
	ADD	A,$10
	LD	(WORK0),A
;
	LD	A,(HLI)
	INC	HL
	PUSH	HL
	PUSH	DE
		cp	'0'
		jr	c,STDP120_050
;
		cp	'9'+1
		jr	nc,STDP120_050
;
		sub	'0'
		add	a,suu
		jr	STDP120_100
;
STDP120_050
	CP	' '
	JR	NZ,STDP120
;
	LD	A,$0F	;Space
	JR	STDP130
STDP120
	SUB	'A'
;
STDP120_100
	LD	E,A
	LD	D,$00
	LD	HL,STD1DT
	ADD	HL,DE
	LD	A,(HL)
STDP130
	POP	DE
	POP	HL
	LD	(DE),A
	INC	DE
;
	LD	A,$10
	LD	(DE),A
	INC	DE
;
	DEC	C
	JR	NZ,STDP110
;
	RET
;------------------------------------------
STD2CD
	DB	$20,$30 ;A
	DB	$21,$31 ;B
	DB	$22,$22 ;C
	DB	$23,$33 ;D
	DB	$24,$34 ;E
	DB	$24,$35 ;F
	DB	$22,$32 ;G
	DB	$36,$30 ;H
	DB	$27,$27 ;I
	DB	$28,$38 ;J
	DB	$29,$39 ;K
	DB	$16,$17 ;L
	DB	$2A,$3A ;M
	DB	$2B,$3B ;N
	DB	$20,$20 ;O
	DB	$21,$35 ;P
	DB	$00,$00 ;Q
	DB	$21,$26 ;R
	DB	$2C,$3C ;S
	DB	$2D,$3D ;T
	DB	$36,$20 ;U
	DB	$00,$00 ;V
	DB	$2E,$3E ;W
	DB	$00,$00 ;X
	DB	$36,$25 ;Y
	DB	$37,$37 ;Z
moji1		db	014h,015h	;&
moji2		db	012h,013h	;2
;
mo1		equ	(moji1-STD2CD)/2
mo2		equ	(moji2-STD2CD)/2
;
;------------------------------------------
STD2AD
	DB	$10,$10 ;A
	DB	$10,$10 ;B
	DB	$10,$50 ;C
	DB	$10,$10 ;D
	DB	$10,$10 ;E
	DB	$10,$10 ;F
	DB	$10,$10 ;G
	DB	$50,$10 ;H
	DB	$10,$50 ;I
	DB	$10,$10 ;J
	DB	$10,$10 ;K
	DB	$10,$10 ;L
	DB	$10,$10 ;M
	DB	$10,$10 ;N
	DB	$10,$50 ;O
	DB	$10,$10 ;P
	DB	$10,$10 ;Q
	DB	$10,$10 ;R
	DB	$10,$10 ;S
	DB	$10,$10 ;T
	DB	$50,$50 ;U
	DB	$10,$10 ;V
	DB	$10,$10 ;W
	DB	$10,$10 ;X
	DB	$50,$10 ;Y
	DB	$10,$70 ;Z
		db	010h,010h	; &
		db	010h,010h	; 2
;----------------------------------------
STDSP2
	LD	A,(STWRK1)
	RLA
	AND	%11111110
	LD	E,A
	LD	D,$00
	RLA
	RL	D
	RLA
	RL	D
	RLA
	RL	D
	AND	%11110000
	ADD	A,E
	LD	E,A
	LD	A,D
	ADC	A,$00
	LD	D,A
	LD	HL,STAFFDT2
	ADD	HL,DE
;
	PUSH	HL
;
	XOR	A
	LD	(WORK1),A
	LD	DE,OAM+48+36
;
		LD	A,(CGBFLG)
		AND	A
		JR	Z,STDSP2_100

		LD	DE,OAM+36	; 名前上
STDSP2_100
;
	LD	A,$55
	CALL	STD2SB
;
	LD	HL,WORK1
	INC	(HL)
;
	POP	HL
	LD	DE,OAM+48+72

		LD	A,(CGBFLG)
		AND	A
		JR	Z,STDSP2_200

		LD	DE,OAM+72	; 名前下
STDSP2_200
;
	LD	A,$5D
STD2SB
	LD	(ENHELP2),A
;
	LD	C,18
	LD	B,$08
;
	LD	A,(STWRK1)
		CP	$25
;(CGB);;;;;;;;	CP	$12
	LD	A,$10+$28
	JR	Z,STDP208	;THE ENDはフラッシング無し！

;;;;;;;		JR	NZ,STD2SB_100	; THE END以外はフラッシング！
;;;;;;;
;;;;;;;		LD	A,(CGBFLG)
;;;;;;;		AND	A
;;;;;;;		JR	Z,STD2SB_090
;;;;;;;
;;;;;;;		LD	A,(FRCNT)
;;;;;;;		AND	$01
;;;;;;;		RET	NZ		; THE END 点滅！（反則技）
;;;;;;;STD2SB_090
;;;;;;;		LD	A,$10+$28
;;;;;;;		JR	STDP208
;;;;;;;;
;;;;;;;;	★ ＣＧＢは  ＴＨＥ ＥＮＤ もフラッシングさせる ★
;;;;;;;;
;;;;;;;STD2SB_100

	LD	C,09
	LD	B,$10
;
	LD	A,(FRCNT)
	AND	$01
	LD	A,$10
	JR	Z,STDP208
;
	INC	HL
	LD	A,$18
STDP208
	LD	(WORK0),A
STDP210
	LD	A,(ENHELP2)
	LD	(DE),A
	INC	DE
	LD	A,(WORK0)
	LD	(DE),A
	INC	DE
	ADD	A,B ;$10
	LD	(WORK0),A
;
	LD	A,(STWRK1)
		CP	$25
;(CGB);;;;;;;;	CP	$12
	LD	A,(HLI)
	JR	Z,STDP21E	;THE END?
;
;	★ ＣＧＢは  ＴＨＥ ＥＮＤ もフラッシングさせる ★
;
	INC	HL
STDP21E
	PUSH	HL
	PUSH	DE
		cp	'&'
		jr	nz,STDP21_050
;
		ld	a,mo1
		jr	STDP220_050
;
STDP21_050
		cp	'2'
		jr	nz,STDP21_100
;
		ld	a,mo2
		jr	STDP220_050
;
STDP21_100
	CP	' '
	JR	NZ,STDP220
;
	LD	A,$0F	;Space
	JR	STDP230
STDP220
	SUB	'A'
;
STDP220_050
	SLA	A
	LD	HL,WORK1
	ADD	A,(HL)
	LD	E,A
	LD	D,$00
	LD	HL,STD2AD
	ADD	HL,DE
	LD	A,(HL)
	LD	(ENHELP),A
;
	LD	HL,STD2CD
	ADD	HL,DE
	LD	A,(HL)
STDP230
	POP	DE
	POP	HL
	LD	(DE),A
	INC	DE
;
	LD	A,(ENHELP)
	LD	(DE),A
	INC	DE
;
	DEC	C
	JR	NZ,STDP210
;
	RET
;				; YES !
;;================================================
NAMISE
	LD	A,(NAMIOTO)
	INC	A
	CP	$C0
	JR	C,NMSE10	; sound set !
;
	LD	A,$0F
	LD	(SOUND3),A	;(S)
;
	XOR	A
NMSE10
	LD	(NAMIOTO),A
;
	LD	A,(KAMOSE)
	AND	A
	JR	NZ,KMSE10
;
	LD	A,$21
	LD	(SOUND1),A	;(S)
;
	CALL	RNDSUB
	AND	$7F
	ADD	A,$50
	LD	(KAMOSE),A
KMSE10
	DEC	A
	LD	(KAMOSE),A
	RET
;=====================================================
NMVSDT
;;    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13  ....
 DB $92,$93,$92,$93,$92,$93,$92,$93,$92,$93,$92,$93,$92,$93,$92,$93,$92,$93,$92,$93,$92
NMVSDT2
;;    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13  ....
 DB $82,$83,$82,$83,$82,$83,$82,$83,$82,$83,$82,$83,$82,$83,$82,$83,$82,$83,$82,$83,$82
;- -遠景波書き換え- -
NAMIVS
	LD	A,(FRCNT)
	AND	$0F
	CP	$02
	JR	NZ,NMVS90
;
	PUSH	DE
;
	LD	HL,VRAMD+1
	LD	A,D
	LD	(HLI),A
	LD	A,E
	LD	(HLI),A
	LD	A,$13
	LD	(HLI),A
;
	LD	DE,NMVSDT
	LD	A,(FRCNT)
	AND	$10
	JR	Z,NMVS20
	INC	DE
NMVS20
	LD	C,$14
NMVS30
	LD	A,(DE)
	LD	(HLI),A
	DEC	C
	JR	NZ,NMVS30
;
	POP	DE
;
	LD	A,D
	LD	(HLI),A
	LD	A,E
	SUB	$20
	LD	(HLI),A
	LD	A,$13
	LD	(HLI),A
;
	LD	DE,NMVSDT2
	LD	A,(FRCNT)
	AND	$10
	JR	Z,NMVS202
	INC	DE
NMVS202
	LD	C,$14
NMVS302
	LD	A,(DE)
	LD	(HLI),A
	DEC	C
	JR	NZ,NMVS302
;
;
;
;
;
	LD	(HL),C
;
NMVS90
	RET
;======================================================
KUJSWD
	DB	$F4,$F4,$F5,$F6,$F7,$F7,$F8,$F8
	DB	$F8,$F8,$F7,$F7,$F6,$F5,$F4,$F4
;
ENDWAVE
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	NOP
	AND	$0F
	LD	E,A
	LD	D,$00
	LD	HL,KUJSWD
	ADD	HL,DE
	LD	A,(HL)
	SUB	$05	; ！
	LD	(SCY),A
	LD	(ENHELP),A
;
	LD	A,(WAVFLG)
	CP	$FE
	RET	Z
;
	LD	A,(WAVTIM)
	INC	A
	LD	(WAVTIM),A
;	CP	$C0  ;00
;	JR	NZ,ENDW010
;
;	XOR	A
;	LD	(WAVFLG),A
;	LD	(WAVTIM),A
;	RET
ENDW010
;;;	LD	A,(FRCNT)
;	SRL	A
;	SRL	A
;	LD	(WORK0),A
;	LD	A,(WAVTIM)
;;;	SLA	A
;	NOP
;	AND	%11100000
;	LD	E,A
;	LD	A,(WAVFLG)
;	CP	$FE
;	JR	NZ,ENDW020
;;
;	LD	A,E
;	XOR	%11100000
;	LD	E,A
;ENDW020
	LD	A,(EDWRK5)
;	RLA
;	RLA
;	RLA
;	RLA
;	RLA
;	AND	%11100000
	LD	(WORK1),A
;
	LD	HL,WAVCNT
	XOR	A
	LD	(HLI),A
	LD	(HLI),A
	LD	(HLI),A
;
		LD	A,(CGBFLG)
		AND	A
		JR	NZ,ENDW030_CGB

;-------------------------------------------
;	ＧＢ用
;-------------------------------------------
ENDW030
	LD	A,(STAT)
	AND	%00000011
	JR	NZ,ENDW030
;
	LD	D,$0
ENDW002
	LD	A,(WAVCNT3)
	INC	A
	LD	(WAVCNT3),A
	AND	$01
	JR	NZ,ENDW002	; Wait !
;
	LD	A,(WAVCNT)
	ADD	A,$1
	LD	(WAVCNT),A
	LD	A,(WAVCNT2)
	ADC	A,$0
	LD	(WAVCNT2),A
	LD	A,(WAVCNT)
	CP	$50  ;68
;(CGB)	JP	Z,ENDW090
		JR	Z,ENDW090
ENDW050
	LD	HL,WAVTIM
;	LD	A,(WORK0)
;	ADD	A,(HL)
;	AND	$1F
;	LD	HL,WORK1
;	OR	(HL)
	LD	A,(WAVCNT)
	ADD	A,(HL)
	AND	$1F
	LD	HL,WORK1
	OR	(HL)
	LD	E,A
	LD	HL,EWAVDT
	ADD	HL,DE
	LD	A,(HL)
	PUSH	AF
	LD	HL,SCCH
	ADD	A,(HL)
	LD	(SCX),A
	POP	AF
CHECK
	SRA	A
;;	NOP
;;	NOP
	LD	HL,ENHELP
	ADD	A,(HL)
	LD	(SCY),A
;
;(CGB)	JP	ENDW030
		JR	ENDW030
ENDW090
	XOR	A
	LD	(SCX),A
	RET

;-------------------------------------------
;	ＣＧＢ用
;-------------------------------------------
ENDW030_CGB
	LD	A,(STAT)
	AND	%00000011
	JR	NZ,ENDW030_CGB
;
	LD	D,$0
ENDW002_CGB
	LD	A,(WAVCNT3)
	INC	A
	LD	(WAVCNT3),A
	AND	$01
	JR	NZ,ENDW002_CGB	; Wait !
;
	LD	A,(WAVCNT)
	ADD	A,$1
	LD	(WAVCNT),A
	LD	A,(WAVCNT2)
	ADC	A,$0
	LD	(WAVCNT2),A
		LD	A,(WAVCNT)
		CP	$60
		JR	Z,ENDW090_CGB
	LD	HL,WAVTIM
;	LD	A,(WORK0)
;	ADD	A,(HL)
;	AND	$1F
;	LD	HL,WORK1
;	OR	(HL)
	LD	A,(WAVCNT)
	ADD	A,(HL)
	AND	$1F
	LD	HL,WORK1
	OR	(HL)
	LD	E,A
	LD	HL,EWAVDT
	ADD	HL,DE
	LD	A,(HL)
	PUSH	AF
	LD	HL,SCCH
	ADD	A,(HL)
	LD	(SCX),A
	POP	AF
CHECK_CGB
	SRA	A
;;	NOP
;;	NOP
	LD	HL,ENHELP
	ADD	A,(HL)
	LD	(SCY),A
;
	JR	ENDW030_CGB
ENDW090_CGB
	XOR	A
	LD	(SCX),A
	RET

;------------------------------------
EWAVDT
;0
;;;;  0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F
 DB $00,$05,$09,$0C,$0D,$0E,$0E,$0F,$0F,$0F,$0E,$0E,$0D,$0C,$09,$05
 DB $00,$FB,$F7,$F4,$F3,$F2,$F2,$F1,$F1,$F1,$F2,$F2,$F3,$F4,$F7,$FB
;;1
;;;;;  0   1   2   3   4   5   6   7   8   9   A   B   C   D   E   F
; DB $00,$04,$08,$0A,$0C,$0D,$0D,$0E,$0E,$0E,$0D,$0D,$0C,$0A,$08,$04
; DB $00,$FC,$F8,$F6,$F4,$F3,$F3,$F2,$F2,$F2,$F3,$F3,$F4,$F6,$F8,$FC
;2
;;;;  0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F
 DB $00,$04,$07,$09,$0B,$0C,$0C,$0D,$0D,$0D,$0C,$0C,$0B,$09,$07,$04
 DB $00,$FC,$F9,$F7,$F5,$F4,$F4,$F3,$F3,$F3,$F4,$F4,$F5,$F7,$F9,$FC
;;3
;;;;;  0   1   2   3   4   5   6   7   8   9   A   B   C   D   E   F
; DB $00,$04,$06,$08,$0A,$0B,$0B,$0C,$0C,$0C,$0B,$0B,$0A,$08,$06,$04
; DB $00,$FC,$FA,$F8,$F6,$F5,$F5,$F4,$F4,$F4,$F5,$F5,$F6,$F8,$FA,$FC
;4
;;;;  0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F
 DB $00,$03,$05,$07,$08,$09,$0A,$0B,$0B,$0B,$0A,$09,$08,$07,$05,$03
 DB $00,$FD,$FB,$F9,$F8,$F7,$F6,$F5,$F5,$F5,$F6,$F7,$F8,$F9,$FB,$FD
;;5
;;;;;  0   1   2   3   4   5   6   7   8   9   A   B   C   D   E   F
; DB $00,$03,$05,$06,$07,$08,$09,$0A,$0A,$0A,$09,$08,$07,$06,$05,$03
; DB $00,$FD,$FB,$FA,$F9,$F8,$F7,$F6,$F6,$F6,$F7,$F8,$F9,$FA,$FB,$FD
;6
;;;;  0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F
 DB $00,$03,$05,$06,$07,$08,$08,$09,$09,$09,$08,$08,$07,$06,$05,$03
 DB $00,$FD,$FB,$FA,$F9,$F8,$F8,$F7,$F7,$F7,$F8,$F8,$F9,$FA,$FB,$FD
;;7
;;;;;  0   1   2   3   4   5   6   7   8   9   A   B   C   D   E   F
; DB $00,$02,$04,$05,$06,$07,$07,$08,$08,$08,$07,$07,$06,$05,$04,$02
; DB $00,$FE,$FC,$FB,$FA,$F9,$F9,$F8,$F8,$F8,$F9,$F9,$FA,$FB,$FC,$FE
;8
;;;;  0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F
 DB $00,$02,$04,$05,$05,$06,$06,$07,$07,$07,$06,$06,$05,$05,$04,$02
 DB $00,$FE,$FC,$FB,$FB,$FA,$FA,$F9,$F9,$F9,$FA,$FA,$FB,$FB,$FC,$FE
;;9
;;;;;  0   1   2   3   4   5   6   7   8   9   A   B   C   D   E   F
; DB $00,$02,$03,$04,$04,$05,$05,$06,$06,$06,$05,$05,$04,$04,$03,$02
; DB $00,$FE,$FD,$FC,$FC,$FB,$FB,$FA,$FA,$FA,$FB,$FB,$FC,$FC,$FD,$FE
;A
;;;;  0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F
 DB $00,$01,$02,$03,$03,$04,$04,$05,$05,$05,$04,$04,$03,$03,$02,$01
 DB $00,$FF,$FE,$FD,$FD,$FC,$FC,$FB,$FB,$FB,$FC,$FC,$FD,$FD,$FE,$FF
;;B
;;;;;  0   1   2   3   4   5   6   7   8   9   A   B   C   D   E   F
; DB $00,$01,$02,$02,$03,$03,$03,$04,$04,$04,$03,$03,$03,$02,$02,$01
; DB $00,$FF,$FE,$FE,$FD,$FD,$FD,$FC,$FC,$FC,$FD,$FD,$FD,$FE,$FE,$FF
;C
;;;;  0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F
 DB $00,$01,$01,$01,$02,$02,$02,$03,$03,$03,$02,$02,$02,$01,$01,$01
 DB $00,$FF,$FF,$FF,$FE,$FE,$FE,$FD,$FD,$FD,$FE,$FE,$FE,$FF,$FF,$FF
;;D
;;;;;  0   1   2   3   4   5   6   7   8   9   A   B   C   D   E   F
; DB $00,$00,$01,$01,$01,$01,$02,$02,$02,$02,$02,$01,$01,$01,$01,$00
; DB $00,$00,$FF,$FF,$FF,$FF,$FE,$FE,$FE,$FE,$FE,$FF,$FF,$FF,$FF,$00
;E
;;;;  0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F
 DB $00,$00,$00,$00,$01,$01,$01,$01,$01,$01,$01,$01,$01,$00,$00,$00
 DB $00,$00,$00,$00,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$00,$00,$00
;F
;;;;  0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F
; DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
; DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
;
;****************************************
;*	 サブルーチン			*
;****************************************
ENDING
	LD	A,(KEYA2)
	AND	%00001100
	JR	Z,ENDG010
;
	LD	A,(HIMITSU2)
	AND	A
	JR	Z,ENDG010
;
	XOR	A
	LD	(ITMODE),A
ENDG010
	LD	A,(KEYA2)
	AND	%00000011
	JR	Z,ENDG012
;
	LD	A,(HIMITSU2)
	AND	A
	JR	Z,ENDG012
;
	CALL	ENDNXT
ENDG012
	LD	A,(EDTIM0)
	AND	A
	JR	Z,ENDG020
;
	DEC	A
	LD	(EDTIM0),A
ENDG020
	LD	A,(EDTIM1)
	AND	A
	JR	Z,ENDG030
;
	DEC	A
	LD	(EDTIM1),A
ENDG030
	LD	A,(EDTIM2)
	AND	A
	JR	Z,ENDG038
;
	DEC	A
	LD	(EDTIM2),A
ENDG038
	LD	A,(FRCNT)
	AND	$03
	JR	NZ,ENDG03C
;
	LD	A,(EDTIM3)
	AND	A
	JR	Z,ENDG03C
;
	DEC	A
	LD	(EDTIM3),A
ENDG03C
	LD	A,(FRCNT)
	AND	$0F
	JR	NZ,ENDG03D
;
	LD	A,(EDTIM4)
	AND	A
	JR	Z,ENDG03D
;
	DEC	A
	LD	(EDTIM4),A
ENDG03D
		LD	A,(EDTIM5)	; 名前表示待ちタイマー
		AND	A
		JR	Z,ENDG03E

		DEC	A
		LD	(EDTIM5),A
		LD	HL,EDTIM2	; 名前表示待ちの時は
		INC	(HL)		; 名前表示タイマーをＤＥＣしない
ENDG03E
	LD	A,(ITMODE)
	RST	00
EDTBL
	DW	ENDIN	; ( 0 )
	DW	ENDINT	; ( 1 )
;- - - - - - - - - - - - - - - - - -
	DW	ENDA	; ( 2 ) A
;- - - - - - - - - - - - - - - - - -
	DW	ENDC	; ( 3 ) C
;- - - - - - - - - - - - - - - - - -
	DW	ENDB2	; ( 4 ) B2	シーン５
;- - - - - - - - - - - - - - - - - -
	DW	ENDB	; ( 5 ) B	シーン６
;- - - - - - - - - - - - - - - - - -
	DW	ENDD	; ( 6 ) D	シーン７
;- - - - - - - - - - - - - - - - - -
	DW	ENDE	; ( 7 ) E	シーン８
;- - - - - - - - - - - - - - - - - -
	DW	ENDF	; ( 8 ) F	シーン９
;- - - - - - - - - - - - - - - - - -
ED10	DW	END10	; ( 9 ) 10	(CGB) かもめまりん
;
ENDBS	EQU	$05
ENDDS	EQU	$06
ENDFS	EQU	$08
END10S	EQU	(ED10-EDTBL)/2
;-------------------------------------
;-------------------------------------
EDUNDT
;;;;		0 1 2 3 4 5 6 7 8 9 A B C D E F
	DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;0
	DB	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;1
	DB	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1 ;2
	DB	1,1,0,0,0,0,0,0,0,0,1,1,1,1,1,1 ;3
	DB	1,1,0,1,1,1,1,1,1,0,1,0,0,0,0,0 ;4
	DB	1,1,0,1,1,1,1,1,1,0,1,0,0,0,0,0 ;5
	DB	1,1,0,1,1,1,1,1,1,0,1,0,0,0,0,0 ;6
	DB	1,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0 ;7
;-------------------------------------
EDINBP
EDINO1P
	DB	%11100100
	DB	%11100100
	DB	%11100100
	DB	%11100100
	DB	%10010100
	DB	%10010100
	DB	%10010100
	DB	%10010100
	DB	%01000000
	DB	%01000000
	DB	%01000000
	DB	%01000000
	DB	%00000000
	DB	%00000000
	DB	%00000000
	DB	%00000000
EDINO0P
	DB	%00011100
	DB	%00011100
	DB	%00011100
	DB	%00011100
	DB	%00011000
	DB	%00011000
	DB	%00011000
	DB	%00011000
	DB	%00000100
	DB	%00000100
	DB	%00000100
	DB	%00000100
	DB	%00000000
	DB	%00000000
	DB	%00000000
	DB	%00000000
;------------------------------------------
ENDIN
	CALL	ERCLER
	JP	ITINC
;-------------------------------------------
ENDINT
	CALL	ENEMYL
;
	LD	A,(FRCNT)
	AND	$03
;(CGB)	JR	NZ,ENDI100
		JR	NZ,ENDI100_100
;
	LD	A,(EDWRK1)
	INC	A
	LD	(EDWRK1),A
	CP	$0D
	JR	NZ,ENDI100
;
	JP	EDIN18
;----------------------------------------
ENDI100
		LD	A,(CGBFLG)
		AND	A
		JR	Z,ENDI100_100

		LD	A,(EDWRK1)
		DEC	A
		JP	END_FADEOUT	; フェードアウト
ENDI100_100
	LD	A,(EDWRK1)
	LD	E,A
;
	LD	A,(FRCNT)
	AND	$03
	ADD	A,E
	LD	E,A
	LD	D,B
	LD	HL,EDINBP
	ADD	HL,DE
	LD	A,(HL)
	LD	(BGPFG),A
	LD	(OBP1FG),A
;
	LD	HL,EDINO0P
	ADD	HL,DE
	LD	A,(HL)
	LD	(OBP0FG),A
	RET
;	CALL	FDIN
;;
;	LD	A,(SBHR)
;	CP	$04
;	JR	NZ,EIN100
;
;	CALL	RAMCL2
;=============================================
EDIN18
	CALL	RAMCL2
;
	LD	HL,BGUNDT
	LD	DE,EDUNDT
	LD	C,$80
	LD	A,$01	;当たり無し！
EDIN19
	LD	A,(DE)
	INC	DE
	LD	(HLI),A
	DEC	C
	JR	NZ,EDIN19
;
	CALL	SOUNDCLR	;(S)
;
	LD	A,%00000001
	LD	(IE),A
	LD	A,$00
	LD	(LYC),A		; Part scroll line set !
;
	LD	HL,LCDCB
	RES	3,(HL)
;
	CALL	ERCLER
	CALL	ITINC
;
	LD	A,$59
	LD	(SOUND4),A	;(S)
;
	LD	A,$40
	LD	(EDTIM0),A
;
	LD	A,$04
	LD	(SBHR),A
EIN100
	RET
;-------------------------------------
;- - - - - - - - - - - - - -
ITINC
	LD	HL,ITMODE
	INC	(HL)
	RET
;-------------------------------------
ENDA
	LD	A,$80
	LD	(WANFLG),A
	XOR	A
	LD	(DJFLAG),A
	LD	(DJSVBF),A
;
	LD	A,$01
	LD	(UTAFLG),A
;
	LD	A,$92
	LD	(GRNDPT),A	;町中心！
;
	LD	A,$FF
	LD	(PLFLSH),A
	CALL	ENEMYL
;
	LD	A,(EDMODE)
	RST	00
	DW	EA1000		;  0
	DW	EA2000		;  1
	DW	EA3000		;  2
	DW	EA4000		;  3
	DW	EA5000		;  4
	DW	EA6000		;  5 ふくろうメッセージ
	DW	EA7000		;  6 くじらカラーセット
	DW	EA8000		;  7 くじらイニシャル
	DW	EA9000		;  8 くじらセット
	DW	EAA000		;  9 くじらフェードイン
	DW	EAB000		;  a くじらメッセージイニシャル
	DW	EAB800		;  b       ”        表示中
	DW	EABC00		;  c くじらフェードアウトイニシャル
	DW	EAC000		;  d くじらフェードアウト
	DW	EAD000		;  e くじら消す
	DW	EAE000		;  f メッセージ表示中（めざめのうた）
	DW	EAF000		; 10 楽器転送
	DW	EAG000		; 11 セイレーン楽器セット
	DW	EAH000		; 12 セイレーン楽器移動
	DW	EAI000		; 13 回想シーン
	DW	EAJ000		; 14 水柱吹き上がり
	DW	EAK000		; 15 水柱移動（リンク溺れる）
	DW	EAL000		; 16 水柱上へ
	DW	EAM000		; 17 水柱ループ
	DW	EAN000		; 18
;-------------------------------------
EA1000
	LD	A,$FF
	LD	(WNDYPS),A
;
	LD	A,ECHA2
;;	LD	A,ECHA
	LD	(BLNKFG),A
;
;-------------------------------------------------------------
		LD	A,$001		; フェードインフラグＯＮ
		LD	(FADEMDFG),A
;-------------------------------------------------------------

	XOR	A
	LD	(SCCH),A
	LD	(TILTXD),A
	LD	(TILTYD),A
;
;;;	LD	A,$70
	LD	(SCCV),A
;
;;	LD	A,VRMB2
;;	LD	(BLNKFG),A
;
	LD	HL,SCRLFG	; Scroll base display reset !
	LD	E,$0
EA1010
	XOR	A
	LD	(HLI),A
	INC	E
	LD	A,E
	CP	$C
	JR	NZ,EA1010
;
EDINC
	LD	HL,EDMODE
	INC	(HL)
	RET
;-------------------------------------
EA2000
	LD	A,EBGA
	LD	(VRFLG),A
;
	LD	A,EDAI
	CALL	ENIDSHL	;台！
;
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),$40
;
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),$E0
;
	LD	A,EDAI
	CALL	ENIDSHL	;星！
;
	LD	HL,ENWRK0
	ADD	HL,DE
	INC	(HL)
;
	LD	A,$50
	LD	(PLXPSL),A
	LD	A,$98
	LD	(PLYPSL),A
;
	JP	EDINC
;-------------------------------------
EABGPD
	DB	%00000000
	DB	%00000000
	DB	%00000000
	DB	%00000000
	DB	%00000001
	DB	%00000001
	DB	%00000001
	DB	%00000001
	DB	%00010110
	DB	%00010110
	DB	%00010110
	DB	%00010110
	DB	%00100111
	DB	%00100111
	DB	%00100111
	DB	%00100111
EAOBPD
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
EAOBPD2
	DB	%00000000
	DB	%00000000
	DB	%00000000
	DB	%00000000
	DB	%00000000
	DB	%00000000
	DB	%00000000
	DB	%00000000
	DB	%01010000
	DB	%01010000
	DB	%01010000
	DB	%01010000
	DB	%10010000
	DB	%10010000
	DB	%10010000
	DB	%10010000
;- - - - - - - - - - - - - -
EA3000
	LD	A,(EDTIM0)
	LD	E,A
	LD	A,(FRCNT)
	AND	$07
	OR	E
;(CGB)	JR	NZ,EA3010
		JR	NZ,EA3030
;
	LD	A,(EDWRK1)
	INC	A
	LD	(EDWRK1),A
	CP	$0C
	JR	NZ,EA3010
;
	CALL	EDINC
;--------------------------------------------
EA3010
		LD	A,(CGBFLG)
		AND	A
		JR	Z,EA3030

		LD	A,(EDWRK1)
		DEC	A
		JP	END_FADEIN	; フェードイン

;	AND	$07
;	JR	NZ,EA3030
;;
;	LD	A,(EDWRK1)
;	INC	A
;	LD	(EDWRK1),A
;	CP	$04
;	JR	NZ,EA3030
;
;	JP	EDINC
EA3030
	LD	A,(EDWRK1)
	LD	E,A
;
	LD	A,(FRCNT)
	AND	$03
	ADD	A,E
	LD	E,A
	LD	D,B
	LD	HL,EABGPD
	ADD	HL,DE
	LD	A,(HL)
	LD	(BGPFG),A
	LD	HL,EAOBPD
	ADD	HL,DE
	LD	A,(HL)
	LD	(OBP0FG),A
	LD	HL,EAOBPD2
	ADD	HL,DE
	LD	A,(HL)
	LD	(OBP1FG),A
;;	RET
;-------------------------------------
EA4000
	LD	A,(EDWRK3)
	ADD	A,$18
	LD	(EDWRK3),A
	JR	NC,EA4008
;
	LD	HL,ENYPSL+$0E	;星移動！
	INC	(HL)
EA4008
	LD	A,(EDWRK2)
	ADD	A,$40
	LD	(EDWRK2),A
	JR	NC,EA4020
;
	LD	A,(SCCV)
	DEC	A
	LD	(SCCV),A
	CP	$90
	JR	NZ,EA4020
;
	CALL	EDINC
;
ERCLER
	XOR	A
	LD	(EDWRK0),A
	LD	(EDWRK1),A
	LD	(EDWRK2),A
	LD	(EDWRK3),A
	LD	(EDWRK4),A
	LD	(EDWRK5),A
	LD	(EDCNT0),A
	LD	(EDCNT1),A
	LD	(EDCNT2),A
	LD	(EDCNT3),A
	LD	(EDTIM0),A
	LD	(EDTIM1),A
	LD	(EDTIM2),A
	LD	(EDTIM3),A
EA4020
	RET
;--------------------------------------------------
EABTDT
	DB	$98,$00,$53,$A0
	DB	$98,$20,$53,$A0
;
	DB	$98,$40,$53,$A0
	DB	$98,$60,$53,$A0
;
	DB	$98,$80,$53,$A0
	DB	$98,$A0,$53,$A0
;
	DB	$98,$C0,$53,$A0
	DB	$98,$E0,$53,$A0
;
	DB	$99,$00,$53,$A0
	DB	$99,$20,$53,$A0
;
	DB	$99,$40,$53,$A0
	DB	$99,$60,$53,$A0
;
	DB	$99,$80,$53,$A0
	DB	$99,$A0,$53,$A0
;
	DB	$99,$C0,$53,$A0
	DB	$99,$E0,$53,$A0
;
	DB	$9A,$00,$53,$A0
	DB	$9A,$20,$53,$A0
;---------------------------------------------
EA5000
	LD	A,(EDWRK0)
	CP	$09
	JR	NZ,EA5010
;
;;	XOR	A
	LD	A,$F0
	LD	(SCCV),A
	JP	EDINC
EA5010
	LD	E,A
	INC	A
	LD	(EDWRK0),A
	SLA	E
	SLA	E
	SLA	E
	LD	D,$00
	LD	HL,EABTDT
	ADD	HL,DE
;
	LD	DE,VRAMD+1
;
	LD	C,$08
EA5030
	LD	A,(HLI)
	LD	(DE),A
	INC	DE
;
	DEC	C
	JR	NZ,EA5030
;
	XOR	A
	LD	(DE),A
	RET
;==================================================
EA6000
;(CGB)	RET

		LD	A,(CGBFLG)
		AND	A
		RET	Z

		LD	A,(KUJIRA_CLEAR)
		CP	14
		RET	Z

		LD	BC,VRAMD+1	; キャラクター
		LD	DE,VRAMD_AT+1	; アトリビュート
		LD	HL,$9880	; ＶＲＡＭアドレス
		SWAP	A
		SLA	A
		PUSH	AF
		LD	A,H
		ADC	A,$0
		LD	H,A
		POP	AF
		ADD	A,L
		LD	L,A
		LD	A,H
		ADC	A,$0
		LD	(BC),A		; アドレスＨＩＧＨ
		LD	(DE),A
		INC	BC
		INC	DE
		LD	A,L
		LD	(BC),A		; アドレスＬＯＷ
		LD	(DE),A
		INC	BC
		INC	DE
		LD	A,$53		; 横、共通、１４Ｈ
		LD	(BC),A
		LD	(DE),A
		INC	BC
		INC	DE
		LD	A,$A0
		LD	(BC),A		; キャラクターＮｏ．
		XOR	A
		LD	(DE),A		; アトリビュートＮｏ．
		INC	BC
		INC	DE
		LD	(BC),A		; ＥＮＤコード
		LD	(DE),A

		LD	HL,KUJIRA_CLEAR
		INC	(HL)
		RET
;==================================================
EA7000
	CALL	ERCLER
;
	LD	A,$08
	LD	(EDTIM0),A
;
		CALL	KUJIRA_COL_SET	; くじら用カラーセット
;
	JP	EDINC
;==================================================

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	くじら用カラーセット						x
;x----------------------------------------------------------------------x
;x		イニシャルは１－３以外すべて「０」			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
KUJIRA_COL_SET
		LD	A,(CGBFLG)
		AND	A
		RET	Z

		LD	HL,CGWORK
		LD	B,$40
		XOR	A
KUCLST_100
		LD	(HLI),A
		DEC	B
		JR	NZ,KUCLST_100

		LD	HL,CGWORK+(4*1+3)*2
		DEC	A		; １－３は４７ＦＦ
		LD	(HLI),A
		LD	A,$47
		LD	(HL),A

		XOR	A
		LD	(COLOFS),A	; 転送オフセット
		LD	A,4*8
		LD	(COLLNG),A	; 転送長さ
		LD	A,BGCOL_BITFG|$80
		LD	(CGDMAF),A	; 転送フラグ（部分転送）

		RET
;==================================================
EA8BGC
	DB	%00100111 ;0
	DB	%00100111 ;0
	DB	%11101011 ;1
	DB	%11111111 ;2
	DB	%11111111 ;3
	DB	%11111111 ;3
;
;	DB	%11000110 ;0
;	DB	%11000110 ;0
;	DB	%11011011 ;1
;	DB	%11101111 ;2
;	DB	%11111111 ;3
;	DB	%11111111 ;3
;- - - - - - - - - - - - - - - - - -
EA8000
	LD	A,(FRCNT)
	AND	$01
	LD	E,A
	LD	A,(EDCNT0)
	ADD	A,E
	LD	E,A
	LD	D,$00
	LD	HL,EA8BGC
	ADD	HL,DE
	LD	A,(HL)
	LD	(BGPFG),A
;
	LD	A,(EDTIM0)
	AND	A
	JR	NZ,EA8020
;
	LD	A,$08
	LD	(EDTIM0),A
;
	LD	A,(EDCNT0)
	INC	A
	LD	(EDCNT0),A
	CP	$05
	JR	NZ,EA8020
;
	CALL	ERCLER
;
	JP	EDINC
EA8020
	RET
;==================================================
KUJIRADT
;- - -クジラ- - -
	DB	$9B,$C0,$13
;;    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
 DB $A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$72,$73,$74,$A0,$A0,$A0,$A0,$A0,$A0,$A0
 DB  00;Dammy
	DB	$9B,$E0,$13
;;    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
 DB $A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$A0,$7B,$7C,$7D,$A0,$A0,$A0,$A0,$A0,$A0,$A0
 DB  00;Dammy
	DB	$98,$00,$13
;;    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
 DB $A0,$A0,$A0,$A0,$A0,$A0,$A0,$05,$06,$07,$08,$09,$0A,$0B,$0C,$0D,$0E,$A0,$A0,$A0
 DB  00;Dammy
	DB	$98,$20,$13
;;    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
 DB $A0,$A0,$A0,$A0,$A0,$13,$14,$15,$16,$17,$18,$19,$1A,$1B,$1C,$1D,$1E,$1F,$A0,$A0
 DB  00;Dammy
	DB	$98,$40,$13
;;    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
 DB $A0,$A0,$A0,$A0,$22,$23,$24,$25,$26,$27,$28,$29,$2A,$2B,$2C,$2D,$2E,$2F,$A0,$A0
 DB  00;Dammy
	DB	$98,$60,$13
;;    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
 DB $A0,$A0,$A0,$31,$32,$33,$34,$35,$36,$37,$38,$39,$3A,$3B,$3C,$3D,$3E,$3F,$A0,$A0
 DB  00;Dammy
	DB	$98,$80,$13
;;    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
 DB $A0,$A0,$40,$41,$42,$43,$44,$45,$46,$47,$48,$49,$4A,$4B,$4C,$4D,$4E,$4F,$A0,$A0
 DB  00;Dammy
	DB	$98,$A0,$13
;;    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
 DB $A0,$A0,$50,$51,$52,$53,$54,$55,$56,$57,$58,$59,$A0,$5B,$5C,$5D,$5E,$5F,$A0,$A0
 DB  00;Dammy
	DB	$98,$C0,$13
;;    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
 DB $A0,$A0,$60,$61,$62,$63,$64,$65,$66,$67,$68,$69,$6A,$A0,$6C,$6D,$6E,$6F,$A0,$A0
 DB  00;Dammy
	DB	$98,$E0,$13
;;    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
 DB $A0,$A0,$A0,$A0,$A0,$A0,$A0,$75,$76,$77,$78,$79,$7A,$A0,$A0,$A0,$7E,$AF,$A0,$A0
 DB  00;Dammy

;-----------------------------------------------------------
;	くじら アトリビュートデータ
;-----------------------------------------------------------
KUJIRADT_ATR
;- - -クジラ- - -
	DB	$9B,$C0,$13
;;    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
 DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$03,$03,$03,$00,$00,$00,$00,$00,$00,$00
 DB  00;Dammy
	DB	$9B,$E0,$13
;;    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
 DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$03,$03,$03,$00,$00,$00,$00,$00,$00,$00
 DB  00;Dammy
	DB	$98,$00,$13
;;    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
 DB $00,$00,$00,$00,$00,$00,$00,$01,$01,$04,$05,$05,$05,$05,$05,$04,$04,$00,$00,$00
 DB  00;Dammy
	DB	$98,$20,$13
;;    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
 DB $00,$00,$00,$00,$00,$01,$01,$01,$07,$04,$06,$06,$06,$06,$06,$04,$04,$05,$00,$00
 DB  00;Dammy
	DB	$98,$40,$13
;;    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
 DB $00,$00,$00,$00,$01,$07,$07,$07,$02,$04,$04,$04,$04,$04,$04,$04,$04,$05,$00,$00
 DB  00;Dammy
	DB	$98,$60,$13
;;    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
 DB $00,$00,$00,$03,$03,$02,$02,$02,$02,$04,$00,$02,$03,$03,$00,$00,$04,$03,$00,$00
 DB  00;Dammy
	DB	$98,$80,$13
;;    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
 DB $00,$00,$03,$03,$03,$03,$03,$03,$04,$05,$03,$03,$03,$03,$05,$05,$03,$03,$00,$00
 DB  00;Dammy
	DB	$98,$A0,$13
;;    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
 DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$05,$05,$05,$05,$00,$00
 DB  00;Dammy
	DB	$98,$C0,$13
;;    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
 DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$05,$05,$05,$00,$00
 DB  00;Dammy
	DB	$98,$E0,$13
;;    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
 DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$00,$00
 DB  00;Dammy
;--------------------------------------------------
EA9000
	LD	A,(EDWRK0)
	CP	$0A
	JR	NZ,EA9010
;
	LD	A,$F0
	LD	(SCCV),A
;
EANEXT
	CALL	ERCLER
;
	LD	A,%00000001
	LD	(IE),A
	LD	A,$56
	LD	(LYC),A		; Part scroll line set !
;
	LD	A,$0C
;;	LD	A,$20
	LD	(EDTIM0),A
;
	LD	A,$FF
	LD	(WAVFLG),A
	LD	A,$09
	LD	(EDMODE),A
;
	LD	A,$1F
	LD	(SOUND2),A	;(S)
	RET
EA9010
	LD	E,A
	INC	A
	LD	(EDWRK0),A
	SLA	E
	SLA	E
	SLA	E
	LD	A,E
	SLA	E
	ADD	A,E	; x $18
	LD	E,A
	LD	D,$00
	LD	HL,KUJIRADT
	ADD	HL,DE

		PUSH	DE
;
	LD	DE,VRAMD+1
;
	LD	C,$18
EA9030
	LD	A,(HLI)
	LD	(DE),A
	INC	DE
;
	DEC	C
	JR	NZ,EA9030

;-----------------------------------------------------------
;	くじら アトリビュートセット
;-----------------------------------------------------------
		POP	DE

		LD	A,(CGBFLG)
		AND	A
		RET	Z

		LD	HL,KUJIRADT_ATR
		ADD	HL,DE
;
		LD	DE,VRAMD_AT+1
;
		LD	C,$18
EA9040
		LD	A,(HLI)
		LD	(DE),A
		INC	DE
;
		DEC	C
		JR	NZ,EA9040

	RET
;--------------------------------------------------
EAABGC
	DB	%11111111 ;3
	DB	%11111111 ;3
	DB	%11111111 ;3
	DB	%11111111 ;3
;
	DB	%10111111 ;2
	DB	%10111111 ;2
	DB	%10111111 ;2
	DB	%10111111 ;2
;
	DB	%01101011 ;1
	DB	%01101011 ;1
	DB	%01101011 ;1
	DB	%01101011 ;1
;
	DB	%00100111 ;0
	DB	%00100111 ;0
	DB	%00100111 ;0
	DB	%00100111 ;0
;
EAA000
	LD	A,(FRCNT)
	AND	$03
	LD	E,A

		LD	A,(CGBFLG)
		AND	A
		JR	Z,EAA000_100

		LD	A,1		; フラグセット
		CALL	KUJIRA_FADE_SET	; フェードイン
		JR	EAA000_200
EAA000_100
	LD	A,(EDCNT0)
	ADD	A,E
	LD	E,A
	LD	D,$00
	LD	HL,EAABGC
	ADD	HL,DE
	LD	A,(HL)
	LD	(BGPFG),A
EAA000_200
;
	LD	A,(EDTIM0)
	AND	A
	JR	NZ,EAA020
;
	LD	A,(EDCNT0)
	CP	$0C
	JR	Z,EAA020
	INC	A
	LD	(EDCNT0),A
;
	LD	A,$0C
	LD	(EDTIM0),A
;
;;	CALL	ERCLER
;;;
;;	JP	EDINC
EAA020
	LD	A,(EDCNT0)
	CP	$07
;;;	CP	$03
	JR	C,EAA030
;
	LD	A,(EDCNT1)
	INC	A
	LD	(EDCNT1),A
	AND	$0F
	JR	NZ,EAA030
;
	LD	A,(EDWRK5)
	ADD	A,%00100000
	LD	(EDWRK5),A
;;	CP	%11100000
	JR	NZ,EAA030
;
;;	XOR	A
;;	LD	A,$FF
	LD	A,$FE
	LD	(WAVFLG),A
;
	CALL	ERCLER
;
	LD	A,$40
	LD	(EDTIM0),A
;
	LD	A,%00000011
	LD	(IE),A
;
	JP	EDINC
EAA030
	RET
;=======================================
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	くじら フェードセット						x
;x----------------------------------------------------------------------x
;x	    ＥＮＴＲＹ							x
;x		Ａ         ： ０ ＝ フェードアウト			x
;x			   ： １ ＝ フェードイン			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
KUJIRA_FADE_COLOR
; ＜ ＢＧ： fine_1gr.col BANK=0 ＞		;【 ０ 】
		DW	$0000,$41e0,$1ce7,$73fe	; ( 0 )
		DW	$0000,$38df,$1c70,$47ff	; ( 1 )
		DW	$22ef,$02b5,$1ce7,$73fe	; ( 2 )
		DW	$0000,$22ef,$1ce7,$73fe	; ( 3 )
		DW	$0000,$2c14,$1ce7,$73fe	; ( 4 )
		DW	$0000,$7c0f,$1ce7,$73fe	; ( 5 )
		DW	$2c14,$7c0f,$1ce7,$73fe	; ( 6 )
		DW	$02b5,$38df,$1c70,$73fe	; ( 7 )
; ＜ ＢＧ： fine_1gr.col BANK=1 ＞		;【 １ 】
		DW	$0000,$39a0,$18c6,$637a	; ( 0 )
		DW	$0000,$30db,$186e,$47ff	; ( 1 )
		DW	$1e8d,$0252,$18c6,$637a	; ( 2 )
		DW	$0000,$1e8d,$18c6,$637a	; ( 3 )
		DW	$0000,$2812,$18c6,$637a	; ( 4 )
		DW	$0000,$6c0d,$18c6,$637a	; ( 5 )
		DW	$2812,$6c0d,$18c6,$637a	; ( 6 )
		DW	$0252,$30db,$186e,$637a	; ( 7 )
; ＜ ＢＧ： fine_1gr.col BANK=2 ＞		;【 ２ 】
		DW	$0000,$3160,$14a5,$52f6	; ( 0 )
		DW	$0000,$28b7,$146c,$47ff	; ( 1 )
		DW	$1a2b,$01ef,$14a5,$52f6	; ( 2 )
		DW	$0000,$1a2b,$14a5,$52f6	; ( 3 )
		DW	$0000,$200f,$14a5,$52f6	; ( 4 )
		DW	$0000,$5c0b,$14a5,$52f6	; ( 5 )
		DW	$200f,$5c0b,$14a5,$52f6	; ( 6 )
		DW	$01ef,$28b7,$146c,$52f6	; ( 7 )
; ＜ ＢＧ： fine_1gr.col BANK=3 ＞		;【 ３ 】
		DW	$0000,$2920,$1084,$4252	; ( 0 )
		DW	$0000,$2092,$104a,$47ff	; ( 1 )
		DW	$15c9,$018c,$1084,$4252	; ( 2 )
		DW	$0000,$15c9,$1084,$4252	; ( 3 )
		DW	$0000,$1c0c,$1084,$4252	; ( 4 )
		DW	$0000,$4809,$1084,$4252	; ( 5 )
		DW	$1c0c,$4809,$1084,$4252	; ( 6 )
		DW	$018c,$2092,$104a,$4252	; ( 7 )
; ＜ ＯＢＪ： fine_1gr.col BANK=0 ＞		;【 ４ 】
		DW	$0000,$1ce0,$0c63,$31cd	; ( 0 )
		DW	$0000,$186e,$0c47,$47ff	; ( 1 )
		DW	$1147,$0129,$0c63,$31cd	; ( 2 )
		DW	$0000,$1147,$0c63,$31cd	; ( 3 )
		DW	$0000,$1409,$0c63,$31cd	; ( 4 )
		DW	$0000,$3807,$0c63,$31cd	; ( 5 )
		DW	$1409,$3807,$0c63,$31cd	; ( 6 )
		DW	$0129,$186e,$0c47,$31cd	; ( 7 )
; ＜ ＯＢＪ： fine_1gr.col BANK=1 ＞		;【 ５ 】
		DW	$0000,$14a0,$0842,$2129	; ( 0 )
		DW	$0000,$1049,$0825,$47ff	; ( 1 )
		DW	$0ce5,$00c6,$0842,$2129	; ( 2 )
		DW	$0000,$0ce5,$0842,$2129	; ( 3 )
		DW	$0000,$1006,$0842,$2129	; ( 4 )
		DW	$0000,$2405,$0842,$2129	; ( 5 )
		DW	$1006,$2405,$0842,$2129	; ( 6 )
		DW	$00c6,$1049,$0825,$2129	; ( 7 )
; ＜ ＯＢＪ： fine_1gr.col BANK=2 ＞		;【 ６ 】
		DW	$0000,$0c60,$0421,$10a5	; ( 0 )
		DW	$0000,$0825,$0423,$47ff	; ( 1 )
		DW	$0883,$0063,$0421,$10a5	; ( 2 )
		DW	$0000,$0883,$0421,$10a5	; ( 3 )
		DW	$0000,$0803,$0421,$10a5	; ( 4 )
		DW	$0000,$1403,$0421,$10a5	; ( 5 )
		DW	$0803,$1403,$0421,$10a5	; ( 6 )
		DW	$0063,$0825,$0423,$10a5	; ( 7 )
; ＜ ＯＢＪ： fine_1gr.col BANK=3 ＞		;【 ７ 】
		DW	$0000,$0000,$0000,$0000	; ( 0 )
		DW	$0000,$0000,$0000,$47ff	; ( 1 )
		DW	$0000,$0000,$0000,$0000	; ( 2 )
		DW	$0000,$0000,$0000,$0000	; ( 3 )
		DW	$0000,$0000,$0000,$0000	; ( 4 )
		DW	$0000,$0000,$0000,$0000	; ( 5 )
		DW	$0000,$0000,$0000,$0000	; ( 6 )
		DW	$0000,$0000,$0000,$0000	; ( 7 )
;========================================================================

KUJIRA_FADE_SET
		AND	A		; フェードアウト？
		JR	Z,KUFAST_100	; ＹＥＳ

		LD	A,(EDCNT0)
		INC	A		;【 ６ 】からセット
		INC	A		;
		XOR	%00001111
		JR	KUFAST_110
KUFAST_100
		LD	A,(EDCNT0)
		INC	A		;【 ２ 】からセット
		INC	A		;
KUFAST_110
		AND	%11111110
		SWAP	A
		SLA	A
		LD	C,A
		LD	A,0
		ADC	A,$0
		LD	B,A
		LD	HL,KUJIRA_FADE_COLOR
		ADD	HL,BC
		LD	BC,$0040
		LD	DE,CGWORK
		CALL	DATA_MOV	; データ転送

		XOR	A
		LD	(COLOFS),A	; 転送オフセット
		LD	A,4*8
		LD	(COLLNG),A	; 転送長さ
		LD	A,BGCOL_BITFG|$80
		LD	(CGDMAF),A	; 転送フラグ（部分転送）

		RET
;=======================================
EAB000
;	LD	A,(KEYA2)
;	AND	%11000000
;	JR	Z,EAB020
;;
;	LD	A,$FF
;	LD	(WAVFLG),A
;;
;	LD	A,%11100000
;	LD	(EDWRK5),A
;;
;	LD	A,$0C
;	LD	(EDTIM0),A
;	JP	EDINC
;EAB020
;	LD	A,(KEYA2)
;	AND	%00110000
;	JR	Z,EAB030
;
;	LD	A,(MSGEFG)
;	AND	A
;	JR	NZ,EAB030
;
	LD	A,(EDTIM0)
	AND	A
	JR	NZ,EAB030
;
	CALL	EDINC
;
	LD	A,$D0
KUJIMS
	CALL	EDMSCK
;
	LD	A,$17
	LD	(SOUND2),A	;(S)
EAB030
	RET
;=======================================
EAB800
	LD	A,(MSGEFG)
	AND	A
	JR	NZ,EAB860
;
;	LD	A,(MSANSR)
;	AND	A
;	JR	Z,EAB810
;;
;	LD	A,$D3
;	JP	KUJIMS
;;;	CALL	EDMSCK
;;;
;	RET
;
EAB810
;F	LD	A,$D1
;F	CALL	KUJIMS
;;	CALL	EDMSCK
;
	CALL	EDINC
EAB860
	RET
;=======================================
EABC00
	LD	A,(MSGEFG)
	AND	A
	JR	NZ,EABC10
;
	LD	A,%00000001
	LD	(IE),A
;
	LD	A,$FF
	LD	(WAVFLG),A
;
	LD	A,%11100000
	LD	(EDWRK5),A
;
	LD	A,$50
	LD	(EDTIM0),A
;
	LD	A,$1F
	LD	(SOUND2),A	;(S)
;
	CALL	EDINC
EABC10
	RET
;=======================================
EACBGC
	DB	%00100111 ;0
	DB	%00100111 ;0
	DB	%00100111 ;0
	DB	%00100111 ;0
;
	DB	%01101011 ;1
	DB	%01101011 ;1
	DB	%01101011 ;1
	DB	%01101011 ;1
;
	DB	%10111111 ;2
	DB	%10111111 ;2
	DB	%10111111 ;2
	DB	%10111111 ;2
;
	DB	%11111111 ;3
	DB	%11111111 ;3
	DB	%11111111 ;3
	DB	%11111111 ;3
;
EAC000
;;	LD	A,(EDTIM0)
;;	AND	A
;;	JR	NZ,EAC030
;
	LD	A,(FRCNT)
	AND	$03
	LD	E,A

		LD	A,(CGBFLG)
		AND	A
		JR	Z,EAC000_100

		XOR	A		; フラグセット
		CALL	KUJIRA_FADE_SET	; フェードアウト
		JR	EAC000_200
EAC000_100
	LD	A,(EDCNT0)
	ADD	A,E
	LD	E,A
	LD	D,$00
	LD	HL,EACBGC
	ADD	HL,DE
	LD	A,(HL)
	LD	(BGPFG),A
EAC000_200
;
	LD	A,(EDWRK5)
	CP	%10100000
	JR	NC,EAC021
;
	LD	A,(EDTIM0)
	AND	A
	JR	NZ,EAC021
;
	LD	A,$0C
	LD	(EDTIM0),A
;
	LD	A,(EDCNT0)
	INC	A
	LD	(EDCNT0),A
	CP	$0C+1
;;	CP	$05
	JR	NZ,EAC021
;
	XOR	A
	LD	(WAVFLG),A
;
	CALL	ERCLER
;
	LD	A,$30
	LD	(EDTIM0),A
;
	LD	A,%00000001
	LD	(IE),A
	JP	EDINC
EAC021
	LD	A,(EDCNT1)
	INC	A
	LD	(EDCNT1),A
	AND	$0F
	JR	NZ,EAC030
;
	LD	A,(EDWRK5)
	AND	A
	JR	Z,EAC030
	SUB	%00100000
	LD	(EDWRK5),A
;;;	JR	NZ,EAC030
EAC030
	RET
;================================================
KUJIRACL
;- - -クジラ 消す- - -
	DB	$9B,$C0,$53,$A0
	DB	$9B,$E0,$53,$A0
	DB	$98,$00,$53,$A0
	DB	$98,$20,$53,$A0
	DB	$98,$40,$53,$A0
	DB	$98,$60,$53,$A0
	DB	$98,$80,$53,$A0
	DB	$98,$A0,$53,$A0
	DB	$98,$C0,$53,$A0
	DB	$98,$E0,$53,$A0
;
EAD000
	LD	A,(EDTIM0)
	AND	A
	RET	NZ
;
	LD	A,(EDWRK0)
	CP	$0A
	JR	NZ,EAD0010
;
	LD	A,$D2
	CALL	KUJIMS
;;	CALL	EDMSCK
;
	LD	A,%00100111
	LD	(BGPFG),A
;
	JP	EDINC
;-------------------------------
EAD0010
	LD	E,A
	INC	A
	LD	(EDWRK0),A
	SLA	E
	SLA	E
	LD	D,$00
	LD	HL,KUJIRACL
	ADD	HL,DE

		PUSH	DE
;
	LD	DE,VRAMD+1
;
	LD	C,$04
EAD030
	LD	A,(HLI)
	LD	(DE),A
	INC	DE
;
	DEC	C
	JR	NZ,EAD030
;
	XOR	A
	LD	(DE),A
;(CGB)	RET

;-----------------------------------------------------------
;	くじら消す アトリビュートセット
;-----------------------------------------------------------
		POP	DE

		LD	A,(CGBFLG)
		AND	A
		RET	Z

		LD	HL,KUJIRACL
		ADD	HL,DE
;
		LD	DE,VRAMD_AT+1
;
		LD	C,$03
EAD040
		LD	A,(HLI)
		LD	(DE),A
		INC	DE
;
		DEC	C
		JR	NZ,EAD040
;
		XOR	A
		LD	(DE),A		; アトリビュート０
		INC	DE
		LD	(DE),A
;
		RET
;================================================
EAE000
	LD	A,(MSGEFG)
	AND	A
	JR	NZ,EAE0010
;
	CALL	ERCLER
;
	LD	A,$03
	LD	(PLCHPT),A
;
	LD	A,$0C
	LD	(CHTRF2),A	;楽器転送！
	CALL	EDINC
EAE0010
	RET
;================================================
EAF000
	LD	A,(EDWRK0)
	CP	$07
	JR	NZ,EAF010
;
	CALL	ERCLER
;
	LD	A,$80
	LD	(EDTIM0),A
	JP	EDINC
;
EAF010
	INC	A
	LD	(EDWRK0),A
;
	LD	A,$0C
	LD	(CHTRF2),A	;楽器転送！
	RET
;================================================
EGAKSTXD
	DB	$48,$58,$60,$60,$58,$48,$40,$40
EGAKSTYD
	DB	$40,$40,$48,$58,$60,$60,$58,$48
EGAKSTXS
	DB	$FF,$01,$02,$02,$01,$FF,$FE,$FE
EGAKSTYS
	DB	$FE,$FE,$FF,$01,$02,$02,$01,$FF
EGAKSTPT
	DB	$00,$01,$02,$03,$04,$05,$06,$07
EGAKSTOI
	DB	$00,$08,$10,$18,$20,$28,$30,$38
;- - - - - - - - - - - - -
;================================================
EAG000	;セイレーン楽器セット！
	LD	A,(EDTIM0)
	AND	A
	JR	NZ,EAG020
;
	LD	A,$04
	LD	(PLCHPT),A
;
	LD	A,$3F
	LD	(SOUND4),A	;(S)
EAG010
	LD	A,EDAI
	CALL	ENIDSHL
;
	LD	A,(EDWRK0)
	LD	C,A
	LD	B,$00
	LD	HL,EGAKSTXD
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A
	LD	HL,EGAKSTYD
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENYPSL
	ADD	HL,DE
	SUB	$20
	LD	(HL),A
;
	LD	HL,EGAKSTXS
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,DE
	LD	(HL),A
	LD	HL,EGAKSTYS
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENYSPD
	ADD	HL,DE
	LD	(HL),A
	LD	HL,EGAKSTPT
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENCHPT
	ADD	HL,DE
	LD	(HL),A
	LD	HL,EGAKSTOI
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENWRK1
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,ENWRK0
	ADD	HL,DE
	LD	(HL),$03
;
	LD	HL,ENMOD0
	ADD	HL,DE
	LD	(HL),%11000010
;
	LD	HL,ENTIM3
	ADD	HL,DE
	LD	(HL),$20
;
	LD	A,C
	INC	A
	LD	(EDWRK0),A
	CP	$08
	JR	NZ,EAG010
;
	CALL	ERCLER
;
	LD	A,$A0
	LD	(EDTIM0),A
;
	CALL	EDINC
EAG020
	RET
;================================================
EAH000
	LD	A,(EDTIM0)
	CP	$9E
	JR	NZ,EAH0F0
;
	LD	HL,SOUND1
	LD	(HL),$34	;(S)
EAH0F0
	AND	A
	JR	NZ,EAH010
;
;	LD	A,$80
;;;	LD	A,$A0
;	LD	(EDTIM0),A
;
	CALL	EDINC
EAH010
	RET
;================================================
EAI000
	LD	A,(EDWRK0)
	RST	00
	DW	EAI1000	; (  0 )台！
	DW	EAI2000	; (  1 )地上(Ａ１)セット！	; ワンワン
	DW	EAI3000	; (  2 )地上(Ａ１)表示ＷＡＩＴ
	DW	EAI4000	; (  3 )地上(Ｂ０)セット！	; 図書館
	DW	EAI5000	; (  4 )地上(Ｂ０)表示ＷＡＩＴ
	DW	EAI6000	; (  5 )地上(Ｆ２)セット！	; 浜辺
	DW	EAI7000	; (  6 )地上(Ｆ２)表示ＷＡＩＴ
	DW	EAI8000	; (  7 )地上(５２)セット！	; 森のタリン
	DW	EAI9000	; (  8 )地上(５２)表示ＷＡＩＴ
	DW	EAIA000	; (  9 )地上(９２)セット！	; 風見鳥のマリン
	DW	EAIB000	; (  a )地上(９２)表示ＷＡＩＴ
	DW	EAIC000	; (  b )山！
	DW	EAIC800	; (  c )卵山全景セット！
	DW	EAIC900	; (  d )卵山全景セット！
	DW	EAICA00	; (  e )卵山全景セット！
	DW	EAICB00	; (  f )卵山全景セット！
	DW	EAID000	; ( 10 )台揺れ！
	DW	EAIE000	; ( 11 )台揺れ！
;-----------------------------------------------
EDW0INC
	LD	HL,EDWRK0
	INC	(HL)
	RET
;------------------------------------------
EDENCL
	LD	E,ENNO
	LD	HL,ENMODE
	XOR	A
EDEC10
	LD	(HLI),A
	DEC	E
	JR	NZ,EDEC10
	RET
;------------------------------------------
EAIBGD
	DB	%11111111
	DB	%11111111
	DB	%11111111
	DB	%11111111
	DB	%10101010
	DB	%10101010
	DB	%10101010
	DB	%10101010
	DB	%01010101
	DB	%01010101
	DB	%01010101
	DB	%01010101
	DB	%00000000
	DB	%00000000
	DB	%00000000
	DB	%00000000
EAIOB0D
	DB	%00011100
	DB	%00011100
	DB	%00011100
	DB	%00011100
	DB	%00011000
	DB	%00011000
	DB	%00011000
	DB	%00011000
	DB	%00000100
	DB	%00000100
	DB	%00000100
	DB	%00000100
	DB	%00000000
	DB	%00000000
	DB	%00000000
	DB	%00000000
EAIOB1D
	DB	%10010000
	DB	%10010000
	DB	%10010000
	DB	%10010000
	DB	%01010000
	DB	%01010000
	DB	%01010000
	DB	%01010000
	DB	%00000000
	DB	%00000000
	DB	%00000000
	DB	%00000000
	DB	%00000000
	DB	%00000000
	DB	%00000000
	DB	%00000000
EAI1000
	LD	A,(FRCNT)
	AND	$07
;(CGB)	JR	NZ,EAI1030
		JR	NZ,EAI1030_100
;
	LD	A,(EDCNT0)
	INC	A
	LD	(EDCNT0),A
	CP	$0C
	JR	NZ,EAI1030
;
	LD	A,ECHA1		; Bank set!
	LD	(BLNKFG),A

;-------------------------------------------------------------
		LD	A,$001		; フェードインフラグＯＮ
		LD	(FADEMDFG),A
;-------------------------------------------------------------
;
	XOR	A
	LD	(SCCV),A
;
	CALL	EDENCL
;
	JP	EDW0INC
EAI1030
		LD	A,(CGBFLG)
		AND	A
		JR	Z,EAI1030_100

		LD	A,(EDCNT0)
		DEC	A
		JP	END_FADEOUT	; フェードアウト
EAI1030_100

	LD	A,(FRCNT)
	AND	$03
	LD	E,A
	LD	A,(EDCNT0)
	ADD	A,E
	LD	E,A
	LD	D,$00
	LD	HL,EAIBGD
	ADD	HL,DE
	LD	A,(HL)
	LD	(BGPFG),A
	LD	HL,EAIOB0D
	ADD	HL,DE
	LD	A,(HL)
	LD	(OBP0FG),A
	LD	HL,EAIOB1D
	ADD	HL,DE
	LD	A,(HL)
	LD	(OBP1FG),A
	RET
;----------------------------------
EAI010
	LD	A,(FRCNT)
	LD	E,$01
	AND	$04
	JR	Z,EAI020
	LD	E,$FE
EAI020
	LD	HL,TILTXD
	LD	(HL),E
	RET
;-----------------------------------------------
EDTM	EQU	$50
;-----------------------------------------------
EAI2000
	XOR	A
	LD	(EDCNT0),A
;
		LD	A,(CGBFLG)
		AND	A
		JR	Z,EAI2000_100

		CALL	KAISOU_TRAN	; ワンワン転送
		JR	EAI2000_200
EAI2000_100
	LD	A,EBGA3
	LD	(VRFLG),A
EAI2000_200
;
	LD	A,WANWAN
	CALL	ENIDSHL
;
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),$48
;
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),$50
;
	LD	A,FOXDOG
	CALL	ENIDSHL
;
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),$68
;
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),$30
;
	LD	A,OZWAN
	CALL	ENIDSHL
;
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),$2C
;
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),$58
;
	LD	A,OZWAN
	CALL	ENIDSHL
;
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),$60
;
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),$52
;
	LD	HL,ENWRK0
	ADD	HL,DE
	INC	(HL)
;
	JP	EDW0INC
;- - - - - - - - - - - - - - - - - -
;-----------------------------------------------
EAI3000
	CALL	EAFDIN
	JR	NZ,EAI3010
;
	LD	A,EDTM ;$80
	LD	(EDTIM0),A
;
	JP	EDW0INC
EAI3010
	RET
;-----------------------------------------------
KYTEST
	LD	A,(KEYA1)
	AND	$30
	RET	NZ
	NOP
	RET
;-----------------------------------------------
EAI4000
	LD	A,(EDTIM0)
	AND	A
	JR	NZ,EAI4010
;
	CALL	KYTEST
;
	CALL	EAFDOUT
	JR	NZ,EAI4010
;
		LD	A,(CGBFLG)
		AND	A
		JR	Z,EAI4000_100

		CALL	KAISOU_TRAN	; 図書館転送
		JR	EAI4000_200
EAI4000_100
	LD	A,EBGA1
	LD	(VRFLG),A
EAI4000_200
;
	CALL	EDENCL
;
	LD	A,KODOMB
	CALL	ENIDSHL
;
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),$48
;
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),$50
;
	LD	HL,ENSTAT
	ADD	HL,DE
	INC	(HL)
;
	LD	HL,ENTIM0
	ADD	HL,DE
	LD	(HL),$20
;
	LD	HL,ENMUKI
	ADD	HL,DE
	LD	(HL),$02
;
	LD	A,KODOMC
	CALL	ENIDSHL
;
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),$78
;
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),$50
;
	JP	EDW0INC
EAI4010
	RET
;-----------------------------------------------
EAI5000
	CALL	EAFDIN
	JR	NZ,EAI5010
;
	LD	A,EDTM ;$80
	LD	(EDTIM0),A
;
	JP	EDW0INC
EAI5010
	RET
;-----------------------------------------------
EAI6000
	LD	A,(EDTIM0)
	AND	A
	JR	NZ,EAI6010
;
	CALL	KYTEST
;
	CALL	EAFDOUT
	JR	NZ,EAI6010
;
		LD	A,(CGBFLG)
		AND	A
		JR	Z,EAI6000_100

		CALL	KAISOU_TRAN	; 浜辺転送
		JR	EAI6000_200
EAI6000_100
	LD	A,EBGA5
	LD	(VRFLG),A
EAI6000_200
;
	CALL	EDENCL
;
	LD	A,UNIUNI
	CALL	ENIDSHL
;
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),$28
;
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),$40
;
	LD	A,OCTA1
	CALL	ENIDSHL
;
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),$48
;
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),$50
;
	LD	A,OCTA1
	CALL	ENIDSHL
;
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),$68
;
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),$60
;
	JP	EDW0INC
EAI6010
	RET
;-----------------------------------------------
EAI7000
	CALL	EAFDIN
	JR	NZ,EAI7010
;
	LD	A,EDTM ;$80
	LD	(EDTIM0),A
;
	JP	EDW0INC
EAI7010
	RET
;-----------------------------------------------
EAI8000
	LD	A,(EDTIM0)
	AND	A
	JR	NZ,EAI8010
;
	CALL	KYTEST
;
	CALL	EAFDOUT
	JR	NZ,EAI8010
;
		LD	A,(CGBFLG)
		AND	A
		JR	Z,EAI8000_100

		CALL	KAISOU_TRAN	; 森のタリン転送
		JR	EAI8000_200
EAI8000_100
	LD	A,EBGA4
	LD	(VRFLG),A
EAI8000_200
;
	CALL	EDENCL
;
	LD	A,PAPA0
	CALL	ENIDSHL
;
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),$78
;
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),$50
;
	JP	EDW0INC
EAI8010
	RET
;-----------------------------------------------
EAI9000
	CALL	EAFDIN
	JR	NZ,EAI9010
;
	LD	A,EDTM ;$80
	LD	(EDTIM0),A
;
	JP	EDW0INC
EAI9010
	RET
;-----------------------------------------------
EAIA000
	LD	A,(EDTIM0)
	AND	A
	JR	NZ,EAIA010
;
	CALL	KYTEST
;
	CALL	EAFDOUT
	JR	NZ,EAIA010
;
		LD	A,(CGBFLG)
		AND	A
		JR	Z,EAIA000_100

		CALL	KAISOU_TRAN	; 風見鳥のマリン転送
		JR	EAIA000_200
EAIA000_100
	LD	A,EBGA2
	LD	(VRFLG),A
EAIA000_200
;
	CALL	EDENCL
;
	LD	A,GIRL0
	CALL	ENIDSHL
;
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),$28
;
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),$50
;
	LD	A,BTFLY
	CALL	ENIDSHL
;
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),$18
;
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),$4C
;
	LD	A,BTFLY
	CALL	ENIDSHL
;
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),$38
;
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),$54
;
	LD	A,BTFLY
	CALL	ENIDSHL
;
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),$28
;
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),$30
;
	LD	A,FOXDOG
	CALL	ENIDSHL
;
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),$78
;
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),$60
;
	JP	EDW0INC
EAIA010
	RET
;-----------------------------------------------
EAIB000
	CALL	EAFDIN
	JR	NZ,EAIB010
;
	LD	A,$C0  ;EDTM ;$80
	LD	(EDTIM0),A
;
	JP	EDW0INC
EAIB010
	RET
;-----------------------------------------------
EAIC000
	LD	A,(EDTIM0)
	AND	A
	JR	NZ,EAIC010
;
	CALL	KYTEST
;
	CALL	EAFDOUT
	JR	NZ,EAIC010
;
	LD	A,ECHYM
	LD	(BLNKFG),A

;-------------------------------------------------------------
		LD	A,$001		; フェードインフラグＯＮ
		LD	(FADEMDFG),A
;-------------------------------------------------------------
;
	CALL	EDENCL
;
	JP	EDW0INC
EAIC010
	RET
;-----------------------------------------------
EAIC800
	LD	A,EBGY
	LD	(VRFLG),A
;
	JP	EDW0INC
;-----------------------------------------------
EAIC900
	CALL	EAFDIN2
	JR	NZ,EAIC910
;
	LD	A,$A0
	LD	(EDTIM0),A
;
	LD	A,$FF
	LD	(EDCNT1),A
;
	JP	EDW0INC
EAIC910
	RET
;-----------------------------------------------
EAICA00
	LD	A,(EDTIM0)
	CP	$01
	JR	NZ,EAICA02
;
	LD	HL,SOUND3	;(S)
	LD	(HL),$35
EAICA02
	AND	A
	JR	NZ,EAICA10
;
	LD	A,(FRCNT)
	AND	$03
	JR	NZ,EAICA10
;
	LD	A,(EDCNT1)
	CP	63
	JR	Z,EAICA20
	INC	A
	LD	(EDCNT1),A
;
	LD	A,$0E
	LD	(CHTRF2),A	;山じわじわ消す！
	RET
;
EAICA20
	LD	A,$40
	LD	(EDTIM0),A
	JP	EDW0INC
;-----------------------------------------------
EAICB00
	LD	A,(EDTIM0)
	AND	A
	RET	NZ
;
;;	CALL	KYTEST
;
;;	CALL	EAFDOUT
;;	JR	NZ,EAICA10
;
	XOR	A
	LD	(BGPFG),A
	LD	(OBP0FG),A
	LD	(OBP1FG),A
;
;(CGB)	LD	A,ECHA		; いるんか？ EAID000 でも入れてるけど
;(CGB)	LD	(BLNKFG),A	; いるんか？

		LD	A,:EAICB00	; 戻りバンク
		CALL	AllWhiteSetSub	; オールホワイト
;
	JP	EDW0INC
EAICA10
	RET
;---------------------
EAFIBGD
	DB	%00000000
	DB	%00000000
	DB	%00000000
	DB	%00000000
	DB	%01000000
	DB	%01000000
	DB	%01000000
	DB	%01000000
	DB	%10010100
	DB	%10010100
	DB	%10010100
	DB	%10010100
	DB	%11100100
	DB	%11100100
	DB	%11100100
	DB	%11100100
EAFIO0D
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
EAFDIN
	LD	A,(FRCNT)
	AND	$01
	JR	NZ,EDFI10
;
	LD	A,(EDCNT0)
	INC	A
	LD	(EDCNT0),A

		LD	A,(CGBFLG)
		AND	A
		JR	Z,EDFI10

		LD	A,(EDCNT0)

		CP	$2	; てすと 回想シーンは
		RET	C	; てすと フェードを遅らせる

		DEC	A
		CALL	END_FADEIN	; フェードイン
		JP	EDFSUB
EDFI10
	LD	A,(FRCNT)
	AND	$03
	LD	E,A
	LD	A,(EDCNT0)
	ADD	A,E
	LD	E,A
	LD	D,$00
	LD	HL,EAFIBGD
	ADD	HL,DE
	LD	A,(HL)
	LD	(BGPFG),A
	LD	HL,EAFIO0D
	JP	EDFSUB
;-------------------------------
EAFDIN2
	LD	A,(FRCNT)
	AND	$03
	JR	NZ,EDFI210
;
	LD	A,(EDCNT0)
	INC	A
	LD	(EDCNT0),A

		LD	A,(CGBFLG)
		AND	A
		JR	Z,EDFI210

		LD	A,(EDCNT0)

		CP	$2	; てすと 回想シーンは
		RET	C	; てすと フェードを遅らせる

		DEC	A
		CALL	END_FADEIN	; フェードイン
		JR	EDFSUB
EDFI210
	LD	A,(FRCNT)
	AND	$03
	LD	E,A
	LD	A,(EDCNT0)
	ADD	A,E
	LD	E,A
	LD	D,$00
	LD	HL,EIBGC2
	ADD	HL,DE
	LD	A,(HL)
	LD	(BGPFG),A
	JR	EDFSUB2
;
;;	ADD	HL,DE
;;	LD	A,(HL)
;;	LD	(OBP0FG),A
;;
;;	LD	A,(EDCNT0)
;;	CP	$0C
;;	RET
;---------------------
EAFOBGD
	DB	%11100100
	DB	%11100100
	DB	%11100100
	DB	%11100100
	DB	%10010100
	DB	%10010100
	DB	%10010100
	DB	%10010100
	DB	%01000000
	DB	%01000000
	DB	%01000000
	DB	%01000000
	DB	%00000000
	DB	%00000000
	DB	%00000000
	DB	%00000000
EAFOO0D
	DB	%00011100
	DB	%00011100
	DB	%00011100
	DB	%00011100
	DB	%00011000
	DB	%00011000
	DB	%00011000
	DB	%00011000
	DB	%00000100
	DB	%00000100
	DB	%00000100
	DB	%00000100
	DB	%00000000
	DB	%00000000
	DB	%00000000
	DB	%00000000
EAFDOUT
	LD	A,(FRCNT)
	AND	$0F
	JR	NZ,EDFO10
;
	LD	A,(EDCNT0)
	INC	A
	LD	(EDCNT0),A

		LD	A,(CGBFLG)
		AND	A
		JR	Z,EDFO10

		LD	A,(EDCNT0)

		CP	$2	; てすと 回想シーンは
		RET	C	; てすと フェードを遅らせる

		DEC	A
		CALL	END_FADEOUT	; フェードアウト
		JR	EDFSUB2
EDFO10
	LD	A,(FRCNT)
	AND	$03
	LD	E,A
	LD	A,(EDCNT0)
	ADD	A,E
	LD	E,A
	LD	D,$00
	LD	HL,EAFOBGD
	ADD	HL,DE
	LD	A,(HL)
	LD	(BGPFG),A
	LD	HL,EAFOO0D
EDFSUB
	ADD	HL,DE
	LD	A,(HL)
	LD	(OBP0FG),A
;
EDFSUB2
	LD	A,(EDCNT0)
	CP	$0C
	JR	NZ,EDFO090
;
	XOR	A
	LD	(EDCNT0),A
EDFO090
	RET
;===================================
EAFDOUT2
	LD	A,(FRCNT)
	AND	$07
	JR	NZ,EDFO210
;
	LD	A,(EDCNT0)
	INC	A
	LD	(EDCNT0),A
EDFO210
	LD	A,(FRCNT)
	AND	$03
	LD	E,A
	LD	A,(EDCNT0)
	ADD	A,E
	LD	E,A
	LD	D,$00
	LD	HL,EBBGC
	ADD	HL,DE
	LD	A,(HL)
	LD	(BGPFG),A
	JR	EDFSUB2
;- - - - - - - - - - - - - - - - - -
;-----------------------------------------------
EAID000
	LD	A,%11001001
	LD	(BGPFG),A
	LD	A,%00011100
	LD	(OBP0FG),A
	LD	A,%10010000
	LD	(OBP1FG),A
;
	LD	A,(EDTIM0)
	AND	A
	JP	NZ,EAI010
;
	LD	A,$00
	LD	(TILTXD),A
;
	LD	A,$00
	LD	(PLCHPT),A
;
	LD	A,ECHA
	LD	(BLNKFG),A
;
;-------------------------------------------------------------
		XOR	A		; フェードインフラグＯＦＦ
		LD	(FADEMDFG),A
;-------------------------------------------------------------
;
	LD	A,EDAI
	CALL	ENIDSHL	;台！
;
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),$40
;
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),$60
;
	LD	HL,ENSTAT
	ADD	HL,DE
	LD	(HL),$02
;
	LD	A,EDAI
	CALL	ENIDSHL	;星！
;
	LD	HL,ENWRK0
	ADD	HL,DE
	INC	(HL)
;
	LD	A,$50
	LD	(PLXPSL),A
;
;	LD	HL,LCDCB
;	SET	1,(HL)	; OBJ表示復帰！
	LD	HL,LCDCB
	SET	3,(HL)
;
;;	LD	A,$30
	LD	A,$A0
	LD	(EDTIM0),A
;
	LD	A,%11111111
	LD	(BGPFG),A
;
	LD	A,$5C
	LD	(PLYPSL),A
;
	LD	A,$34
	LD	(SOUND3),A	;(S)
;
	JP	EDW0INC
;-----------------------------------------------
;-----------------------------------------------
;-----------------------------------------------
;-----------------------------------------------
;-----------------------------------------------
;-----------------------------------------------
;-----------------------------------------------
;-----------------------------------------------
EAIE000
;	LD	A,(EDWRK1)
;	RST	00
;	DW	EAI42000
;	DW	EAI41000
;
;EAI41000
;	LD	A,ENDBT
;	LD	(VRFLG),A
;;
;	JR	EDW1INC
;;
;EAI42000
	LD	A,(EDTIM0)
	AND	A
	JP	NZ,EAI010
;
	LD	(TILTXD),A
;
;;	LD	HL,LCDCB
;;	SET	3,(HL)
;;
;	LD	A,$00
;	LD	(SCCV),A
;
	CALL	ERCLER
;
	JP	EDINC
;================================================
EAJ000
	LD	A,(PLYPSL)
	SUB	$02
	LD	(PLYPSL),A
;
	LD	A,(SCCV)
	ADD	A,$08
	LD	(SCCV),A
	CP	$60
	JR	NZ,EAJ010
;
	LD	A,(ENSTAT+$0F)
	INC	A
	LD	(ENSTAT+$0F),A	;台崩れる！
;
	LD	A,$40
	LD	(EDTIM3),A
;
	CALL	EDINC
EAJ010
	CALL	EMIZUCS
	RET
;================================================

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	回想シーン 転送							x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
KAISOU_TRAN
		CALL	LCDC_OFF	; ＬＣＤＣ ストップ

		CALL	KAISOU_SCR_TRAN
		CALL	KAISOU_COL_TRAN

		LD	A,(LCDCB)	; ＯＢＪ ＢＧ ＯＮ ＬＣＤＣ スタート
		LD	(LCDC),A

		RET

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	回想シーン スクリーン転送					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;┌──────────────────────────────────┐
;│	スクリーンーデータ アドレス				       │
;└──────────────────────────────────┘
Kaisou_Scr_adrs
		DW	Kaisou_05_scr	; ワンワン
		DW	Kaisou_02_scr	; 図書館
		DW	Kaisou_03_scr	; 浜辺
		DW	Kaisou_04_scr	; 森のタリン
		DW	Kaisou_01_scr	; 風見鳥のマリン
;========================================================================

KAISOU_SCR_TRAN
		LD	HL,Kaisou_Scr_adrs
		LD	A,(EDWRK0)
		DEC	A
		LD	E,A
		LD	D,$0
		ADD	HL,DE
		LD	A,(HLI)
		LD	B,A

		LD	A,:KAISOU_TRAN	; リターンバンク
		LD	(WORKF),A
		LD	H,(HL)		; ＨＩＧＨ
		LD	L,B		; ＬＯＷ
		LD	A,:Kaisou_01_scr; ＢＡＮＫ

		CALL	CAMERA_SCR_TRAN

		RET

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	回想シーン カラー転送						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;┌──────────────────────────────────┐
;│	カラーフラグデータ					       │
;└──────────────────────────────────┘
Kaisou_Col_adrs
		DB	0		; ワンワン
		DB	0		; 図書館
		DB	SP_END3		; 浜辺
		DB	SP_END4		; 森のタリン
		DB	SP_END5		; 風見鶏のマリン
;========================================================================

KAISOU_COL_TRAN
		LD	HL,Kaisou_Col_adrs
		LD	A,(EDWRK0)
		DEC	A
		SRL	A
		LD	D,$0
		LD	E,A
		ADD	HL,DE
		LD	A,(HL)
		AND	A		; 転送しない？
		RET	Z		; ＹＥＳ

		LD	(COLFLG),A	; カラーフラグセット
		RET
;================================================
EMIZUCL
	DB	%01000011
	DB	%00010011
	DB	%00000111
EMIZUCL2
	DB	%10000011
	DB	%00100011
	DB	%00001011
EMIZUCL3
	DB	%01010011
	DB	%00010111
	DB	%01000111
EMIZUCL4
	DB	%00100111
	DB	%01001011
	DB	%10010011
;======================================================
EMZSWD
	DB	$60,$60,$61,$62,$63,$64,$65,$65
	DB	$65,$65,$64,$63,$62,$61,$60,$60
;- - - - - - - - - - - - - - - -
EAK000
	CALL	EMIZUCS
;
	LD	A,(EDTIM3)
	AND	A
	JR	NZ,EAK010
;
;;	CALL	ERCLER
;
	JP	EDINC
;------------------------------------------
EAK010
	LD	A,(ENYPSL+$0E)	;星移動！
	ADD	A,$08
	LD	(ENYPSL+$0E),A
;
	LD	A,(EDCNT0)
	INC	A
	LD	(EDCNT0),A
	RRA
	RRA
	RRA
	NOP
	AND	$0F
	LD	E,A
	LD	D,$00
	LD	HL,EMZSWD
	ADD	HL,DE
	LD	A,(HL)
	LD	(SCCV),A
;
	CALL	SCVPLS
	RET
;----------------------------------------------
;;EPLSPDT
;;	DB	$05,$06,$07,$08,$09,$0A,$0B,$0C
;
EMIZUCS
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	AND	$07
	ADD	A,$05
	LD	(PLCHPT),A
;
	LD	A,(EDTIM0)
	AND	A
	JR	NZ,EAK050
;
	LD	A,$03
	LD	(EDTIM0),A
;
	LD	A,(EDWRK0)
	INC	A
	LD	(EDWRK0),A
	CP	$03
	JR	NZ,EAK050
;
	XOR	A
	LD	(EDWRK0),A
EAK050
		LD	A,(CGBFLG)
		AND	A
		JP	NZ,MIZU_COL_SET	; 水柱カラー転送

	LD	A,(EDWRK0)
	LD	E,A
	LD	D,$00
	LD	HL,EMIZUCL4
	ADD	HL,DE
	LD	A,(HL)
	LD	(BGPFG),A
	RET
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	水柱カラー転送							x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;;;;;;;MIZU_COL_ADRS
;;;;;;;		DW	MIZU_COL_DAT0
;;;;;;;		DW	MIZU_COL_DAT1
;;;;;;;		DW	MIZU_COL_DAT2
;;;;;;;
;;;;;;;MIZU_COL_DAT0
;;;;;;;; ＜ ＢＧ： fine_3.col BANK=0 ＞
;;;;;;;		DW	$0000,$4cc5,$7d68,$7fff	; ( 0 )
;;;;;;;		DW	$0000,$3c62,$68e5,$5ed6	; ( 1 )
;;;;;;;		DW	$0000,$2000,$5000,$35ad	; ( 2 )
;;;;;;;		DW	$0000,$660f,$6ed6,$7fff	; ( 3 )
;;;;;;;		DW	$660f,$660f,$6ed6,$7fff	; ( 4 )
;;;;;;;		DW	$59ac,$660f,$6ed6,$7fff	; ( 5 )
;;;;;;;		DW	$4d49,$660f,$6ed6,$7fff	; ( 6 )
;;;;;;;MIZU_COL_DAT1
;;;;;;;; ＜ ＢＧ： fine_3.col BANK=1 ＞
;;;;;;;		DW	$0000,$7d68,$7fff,$4cc5	; ( 0 )
;;;;;;;		DW	$0000,$68e5,$5ed6,$3c62	; ( 1 )
;;;;;;;		DW	$0000,$5000,$35ad,$2000	; ( 2 )
;;;;;;;		DW	$0000,$6ed6,$7fff,$660f	; ( 3 )
;;;;;;;		DW	$4cc5,$6ed6,$7fff,$660f	; ( 4 )
;;;;;;;		DW	$3c62,$6ed6,$7fff,$660f	; ( 5 )
;;;;;;;		DW	$2000,$6ed6,$7fff,$660f	; ( 6 )
;;;;;;;MIZU_COL_DAT2
;;;;;;;; ＜ ＢＧ： fine_3.col BANK=2 ＞
;;;;;;;		DW	$0000,$7fff,$4cc5,$7d68	; ( 0 )
;;;;;;;		DW	$0000,$5ed6,$3c62,$68e5	; ( 1 )
;;;;;;;		DW	$0000,$35ad,$2000,$5000	; ( 2 )
;;;;;;;		DW	$0000,$7fff,$660f,$6ed6	; ( 3 )
;;;;;;;		DW	$7d68,$7fff,$660f,$6ed6	; ( 4 )
;;;;;;;		DW	$68e5,$7fff,$660f,$6ed6	; ( 5 )
;;;;;;;		DW	$5000,$7fff,$660f,$6ed6	; ( 6 )
;========================================================================

MIZU_COL_SET
		LD	HL,CallBank
		LD	A,:MIZU_COL_SET_sub
		LD	(HLI),A
		LD	A,>MIZU_COL_SET_sub
		LD	(HLI),A
		LD	A,<MIZU_COL_SET_sub
		LD	(HLI),A
		LD	A,:MIZU_COL_SET
		LD	(HL),A
		JP	JSL_CALL

;;;;;;;		LD	A,(EDWRK0)
;;;;;;;		SLA	A
;;;;;;;		LD	E,A
;;;;;;;		LD	D,$0
;;;;;;;		LD	HL,MIZU_COL_ADRS
;;;;;;;		ADD	HL,DE
;;;;;;;		LD	A,(HLI)
;;;;;;;		LD	B,A
;;;;;;;		LD	H,(HL)
;;;;;;;		LD	L,B
;;;;;;;
;;;;;;;		LD	BC,$0038	; ７パレット
;;;;;;;		LD	DE,CGWORK
;;;;;;;		CALL	DATA_MOV	; データ転送
;;;;;;;
;;;;;;;		XOR	A
;;;;;;;		LD	(COLOFS),A	; 転送オフセット
;;;;;;;		LD	A,4*7
;;;;;;;		LD	(COLLNG),A	; 転送長さ
;;;;;;;		LD	A,BGCOL_BITFG|$80
;;;;;;;		LD	(CGDMAF),A	; 転送フラグ（部分転送）
;;;;;;;
;;;;;;;		RET
;-----------------------------------
SCVPLS
	LD	A,(SCCV)
	CPL
	INC	A
	SUB	$A0
	ADD	A,$3C
	LD	(PLYPSL),A
	RET
;
;===============================================
EMIZURD
	DB	$9C,$00,$13
;;    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
 DB $A0,$A0,$A0,$A0,$A0,$A0,$80,$81,$80,$81,$80,$81,$80,$81,$A0,$A0,$A0,$A0,$A0,$A0
 DB 00 ;DAMMY
	DB	$9C,$20,$13
;;    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
 DB $A0,$A0,$A0,$A0,$A0,$A0,$90,$91,$90,$91,$90,$91,$90,$91,$A0,$A0,$A0,$A0,$A0,$A0
 DB 00 ;DAMMY
	DB	$9C,$40,$13
;;    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
 DB $A0,$A0,$A0,$A0,$A0,$A0,$80,$81,$80,$81,$80,$81,$80,$81,$A0,$A0,$A0,$A0,$A0,$A0
 DB 00 ;DAMMY
	DB	$9C,$60,$13
;;    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
 DB $A0,$A0,$A0,$A0,$A0,$A0,$90,$91,$90,$91,$90,$91,$90,$91,$A0,$A0,$A0,$A0,$A0,$A0
 DB 00 ;DAMMY
	DB	$9C,$80,$13
;;    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
 DB $A0,$A0,$A0,$A0,$A0,$A0,$80,$81,$80,$81,$80,$81,$80,$81,$A0,$A0,$A0,$A0,$A0,$A0
 DB 00 ;DAMMY
	DB	$9C,$A0,$13
;;    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
 DB $A0,$A0,$A0,$A0,$A0,$A0,$90,$91,$90,$91,$90,$91,$90,$91,$A0,$A0,$A0,$A0,$A0,$A0
 DB 00 ;DAMMY
	DB	$9C,$C0,$13
;;    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
 DB $A0,$A0,$A0,$A0,$A0,$A0,$80,$81,$80,$81,$80,$81,$80,$81,$A0,$A0,$A0,$A0,$A0,$A0
 DB 00 ;DAMMY
	DB	$9C,$E0,$13
;;    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
 DB $A0,$A0,$A0,$A0,$A0,$A0,$90,$91,$90,$91,$90,$91,$90,$91,$A0,$A0,$A0,$A0,$A0,$A0
 DB 00 ;DAMMY
	DB	$9D,$00,$13
;;    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
 DB $A0,$A0,$A0,$A0,$A0,$A0,$80,$81,$80,$81,$80,$81,$80,$81,$A0,$A0,$A0,$A0,$A0,$A0
 DB 00 ;DAMMY
	DB	$9D,$20,$13
;;    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
 DB $A0,$A0,$A0,$A0,$A0,$A0,$90,$91,$90,$91,$90,$91,$90,$91,$A0,$A0,$A0,$A0,$A0,$A0
 DB 00 ;DAMMY
	DB	$9D,$40,$13
;;    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
 DB $A0,$A0,$A0,$A0,$A0,$A0,$80,$81,$80,$81,$80,$81,$80,$81,$A0,$A0,$A0,$A0,$A0,$A0
 DB 00 ;DAMMY
	DB	$9D,$60,$13
;;    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
 DB $A0,$A0,$A0,$A0,$A0,$A0,$90,$91,$90,$91,$90,$91,$90,$91,$A0,$A0,$A0,$A0,$A0,$A0
 DB 00 ;DAMMY
	DB	$9D,$80,$13
;;    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
 DB $A0,$A0,$A0,$A0,$A0,$A0,$80,$81,$80,$81,$80,$81,$80,$81,$A0,$A0,$A0,$A0,$A0,$A0
 DB 00 ;DAMMY
	DB	$9D,$A0,$13
;;    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
 DB $A0,$A0,$A0,$A0,$A0,$A0,$90,$91,$90,$91,$90,$91,$90,$91,$A0,$A0,$A0,$A0,$A0,$A0
 DB 00 ;DAMMY
	DB	$9D,$C0,$13
;;    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
 DB $A0,$A0,$A0,$A0,$A0,$A0,$80,$81,$80,$81,$80,$81,$80,$81,$A0,$A0,$A0,$A0,$A0,$A0
 DB 00 ;DAMMY
	DB	$9D,$E0,$13
;;    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
 DB $A0,$A0,$A0,$A0,$A0,$A0,$90,$91,$90,$91,$90,$91,$90,$91,$A0,$A0,$A0,$A0,$A0,$A0
 DB 00 ;DAMMY
	DB	$9E,$00,$13
;;    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
 DB $A0,$A0,$A0,$A0,$A0,$A0,$80,$81,$80,$81,$80,$81,$80,$81,$A0,$A0,$A0,$A0,$A0,$A0
 DB 00 ;DAMMY
	DB	$9E,$20,$13
;;    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
 DB $A0,$A0,$A0,$A0,$A0,$A0,$90,$91,$90,$91,$90,$91,$90,$91,$A0,$A0,$A0,$A0,$A0,$A0
 DB 00 ;DAMMY
	DB	$9E,$40,$13
;;    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
 DB $A0,$A0,$A0,$A0,$A0,$A0,$80,$81,$80,$81,$80,$81,$80,$81,$A0,$A0,$A0,$A0,$A0,$A0
 DB 00 ;DAMMY
	DB	$9E,$60,$13
;;    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
 DB $A0,$A0,$A0,$A0,$A0,$A0,$90,$91,$90,$91,$90,$91,$90,$91,$A0,$A0,$A0,$A0,$A0,$A0
 DB 00 ;DAMMY
	DB	$9E,$80,$13
;;    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
 DB $A0,$A0,$A0,$A0,$A0,$A0,$80,$81,$80,$81,$80,$81,$80,$81,$A0,$A0,$A0,$A0,$A0,$A0
 DB 00 ;DAMMY
	DB	$9E,$A0,$13
;;    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
 DB $A0,$A0,$A0,$A0,$A0,$A0,$90,$91,$90,$91,$90,$91,$90,$91,$A0,$A0,$A0,$A0,$A0,$A0
 DB 00 ;DAMMY
	DB	$9E,$C0,$13
;;    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
 DB $A0,$A0,$A0,$A0,$A0,$A0,$80,$81,$80,$81,$80,$81,$80,$81,$A0,$A0,$A0,$A0,$A0,$A0
 DB 00 ;DAMMY
	DB	$9E,$E0,$13
;;    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
 DB $A0,$A0,$A0,$A0,$A0,$A0,$90,$91,$90,$91,$90,$91,$90,$91,$A0,$A0,$A0,$A0,$A0,$A0
 DB 00 ;DAMMY
	DB	$9F,$00,$13
;;    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
 DB $A0,$A0,$A0,$A0,$A0,$A0,$80,$81,$80,$81,$80,$81,$80,$81,$A0,$A0,$A0,$A0,$A0,$A0
 DB 00 ;DAMMY
	DB	$9F,$20,$13
;;    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
 DB $A0,$A0,$A0,$A0,$A0,$A0,$90,$91,$90,$91,$90,$91,$90,$91,$A0,$A0,$A0,$A0,$A0,$A0
 DB 00 ;DAMMY
	DB	$9F,$40,$13
;;    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
 DB $A0,$A0,$A0,$A0,$A0,$A0,$80,$81,$80,$81,$80,$81,$80,$81,$A0,$A0,$A0,$A0,$A0,$A0
 DB 00 ;DAMMY
	DB	$9F,$60,$13
;;    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
 DB $A0,$A0,$A0,$A0,$A0,$A0,$90,$91,$90,$91,$90,$91,$90,$91,$A0,$A0,$A0,$A0,$A0,$A0
 DB 00 ;DAMMY
	DB	$9F,$80,$13
;;    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
 DB $A0,$A0,$A0,$A0,$A0,$A0,$80,$81,$80,$81,$80,$81,$80,$81,$A0,$A0,$A0,$A0,$A0,$A0
 DB 00 ;DAMMY
	DB	$9F,$A0,$13
;;    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
 DB $A0,$A0,$A0,$A0,$A0,$A0,$90,$91,$90,$91,$90,$91,$90,$91,$A0,$A0,$A0,$A0,$A0,$A0
 DB 00 ;DAMMY
	DB	$9F,$C0,$13
;;    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
 DB $A0,$A0,$A0,$A0,$A0,$A0,$80,$81,$80,$81,$80,$81,$80,$81,$A0,$A0,$A0,$A0,$A0,$A0
 DB 00 ;DAMMY
	DB	$9F,$E0,$13
;;    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
 DB $A0,$A0,$A0,$A0,$A0,$A0,$90,$91,$90,$91,$90,$91,$90,$91,$A0,$A0,$A0,$A0,$A0,$A0
 DB 00 ;DAMMY

;-----------------------------------------------------------
;	水柱 アトリビュートデータ
;-----------------------------------------------------------
EMIZURD_ATR
;;    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
 DB $00,$00,$00,$00,$00,$00,$02,$01,$00,$00,$00,$00,$01,$02,$00,$00,$00,$00,$00,$00
 DB 00 ;DAMMY
EMIZURD_END
EMIZURD_CNT	EQU	(EMIZURD_END-EMIZURD_ATR)
;---------------------------------
EAL000
	CALL	EMIZUCS
;
	LD	A,(ENYPSL+$0E)	;星移動！
	ADD	A,$04
	LD	(ENYPSL+$0E),A
;
	LD	A,(EDCNT1)
	INC	A
	LD	(EDCNT1),A
;
;;	LD	A,(FRCNT)
	AND	$07
	JR	NZ,EALL008
;
	LD	A,(EDCNT2)
	CP	$08
	JR	Z,EALL008
	INC	A
	LD	(EDCNT2),A
EALL008
	LD	A,(EDCNT2)
	LD	E,A
	LD	A,(SCCV)
	ADD	A,E  ;$002
	LD	(SCCV),A
	CALL	SCVPLS
;
	LD	A,(PLYPSL)
	CP	$F0
	JR	C,EALL00A
;
	XOR	A
	LD	(ENMODE+$0F),A	;PLAYER CLEAR !
EALL00A
	LD	A,(EDCNT1)
	AND	$01
	RET	NZ
;
	LD	A,(EDWRK1)
	CP	$20
	JR	NZ,EALL010
;
	CALL	ERCLER
;
	CALL	EDINC
	RET
EALL010
	LD	E,A
	INC	A
	LD	(EDWRK1),A
	LD	D,$00
	SLA	E
	RL	D
	SLA	E
	RL	D
	SLA	E
	RL	D
	LD	A,E
;
	SLA	E
	RL	D
	ADD	A,E	; x $18
	LD	E,A
;
	LD	A,D
	ADC	A,$00
	LD	D,A
;
	LD	HL,EMIZURD
	ADD	HL,DE

		PUSH	HL	; DE じゃないよ
;
	LD	DE,VRAMD+1
;
	LD	C,$18
EAL030
	LD	A,(HLI)
	LD	(DE),A
	INC	DE
;
	DEC	C
	JR	NZ,EAL030

;-----------------------------------------------------------
;	水柱 アトリビュートセット
;-----------------------------------------------------------
		POP	HL

		LD	A,(CGBFLG)
		AND	A
		RET	Z

		LD	DE,VRAMD_AT+1

		LD	A,(HLI)
		LD	(DE),A
		INC	DE
		LD	A,(HLI)
		LD	(DE),A
		INC	DE
		LD	A,$14-1		; 横、１４Ｈ個
		LD	(DE),A
		INC	DE

		LD	HL,EMIZURD_ATR
		LD	C,EMIZURD_CNT
EAL040
		LD	A,(HLI)
		LD	(DE),A
		INC	DE
		DEC	C
		JR	NZ,EAL040

	RET
;---------------------------------------------
EAMBGC
;0
	DB	%00100111
	DB	%00100111
	DB	%00100111
	DB	%00100111
;1
	DB	%00010110
	DB	%00010110
	DB	%00010110
	DB	%00010110
;2
	DB	%00000001
	DB	%00000001
	DB	%00000001
	DB	%00000001
;3
	DB	%00000000
	DB	%00000000
	DB	%00000000
	DB	%00000000
EAMO0C
	DB	%00011100
	DB	%00011100
	DB	%00011100
	DB	%00011100
	DB	%00011100
	DB	%00011100
	DB	%00011000
	DB	%00011000
	DB	%00001000
	DB	%00001000
	DB	%00001000
	DB	%00001000
	DB	%00000000
	DB	%00000000
	DB	%00000000
	DB	%00000000
EAMO1C
	DB	%10010000
	DB	%10010000
	DB	%10010000
	DB	%10010000
	DB	%01010000
	DB	%01010000
	DB	%01010000
	DB	%01010000
	DB	%00000000
	DB	%00000000
	DB	%00000000
	DB	%00000000
	DB	%00000000
	DB	%00000000
	DB	%00000000
	DB	%00000000
; - - - - - - - - - - - - - - - - - -
EAM000
	LD	A,(ENYPSL+$0E)	;星移動！
	ADD	A,$02
	LD	(ENYPSL+$0E),A
;
;;	CALL	EMIZUCS
;
	LD	A,(SCCV)
	ADD	A,$04
	LD	(SCCV),A
;
	LD	A,(FRCNT)
	AND	$07
;;	AND	$03
	JR	NZ,EAM010
;
	LD	A,(EDCNT0)
	CP	$0C
	JR	NZ,EAM008
;
	CALL	ERCLER
;
	LD	A,$C0
	LD	(EDTIM0),A
	JP	EDINC
EAM008
	INC	A
	LD	(EDCNT0),A

		LD	A,(CGBFLG)
		AND	A
		JR	Z,EAM010

		LD	A,(EDCNT0)
		DEC	A
		JP	END_FADEOUT	; フェードアウト
EAM010
	LD	A,(FRCNT)
	AND	$03
	LD	E,A
	LD	A,(EDCNT0)
	ADD	A,E
	LD	E,A
	LD	D,$00
	LD	HL,EAMBGC
	ADD	HL,DE
	LD	A,(HL)
	LD	(BGPFG),A
	LD	HL,EAMO0C
	ADD	HL,DE
	LD	A,(HL)
	LD	(OBP0FG),A
	LD	HL,EAMO1C
	ADD	HL,DE
	LD	A,(HL)
	LD	(OBP1FG),A
	RET
;=================================================
EAN000
	LD	A,(EDTIM0)
	AND	A
	JR	NZ,EAN010
;
	XOR	A
	LD	(EDMODE),A
;;	LD	(ENMODE+$0D),A
	LD	(ENMODE+$0E),A	;星消す！
	LD	(ENMODE+$0F),A
	LD	(NAMIOTO),A
;
	LD	A,$80
	LD	(KAMOSE),A
;
	LD	HL,LCDCB
	RES	3,(HL)
;
	LD	HL,ITMODE
	INC	(HL)	;エンディング Ｃヘ
EAN010
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	B2					  %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;-------------------------------------
ENDB2
	CALL	NAMISE
;
	LD	DE,$98E0
	CALL	NAMIVS
;
	CALL	ENEMYL
;
	LD	A,(EDMODE)
	RST	00
	DW	EB21000
	DW	EB22000
	DW	EB23000
	DW	EB24000
;-------------------------------------
EB21000
	LD	A,ECHB2
	LD	(BLNKFG),A
;
;-------------------------------------------------------------
		XOR	A		; フェードインフラグＯＮ
		LD	(FADEMDFG),A
;-------------------------------------------------------------
;
;	XOR	A
;	LD	(SCCH),A
;	LD	(SCCV),A
;	LD	(TILTXD),A
;	LD	(TILTYD),A
;
	CALL	ERCLER

		LD	A,(CGBFLG)
		AND	A
		JP	Z,EDINC

		LD	HL,LCDCB
		RES	2,(HL)	; ＯＢＪ ８×８モード

	JP	EDINC
;-------------------------------------
EB22000
	LD	A,EBGB2
	LD	(VRFLG),A
;
	LD	A,EDAI
	CALL	ENIDSHL	;リンクセット！
;
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),$48
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),$60
;
	LD	HL,ENWRK0
	ADD	HL,DE
	LD	(HL),$04
;
	LD	A,EDAI
	CALL	ENIDSHL	;wood 1 セット！
;
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),$28
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),$68
;
	LD	HL,ENWRK0
	ADD	HL,DE
	LD	(HL),$05
;
	LD	A,EDAI
	CALL	ENIDSHL	;wood 2 セット！
;
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),$78
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),$60
;
	LD	HL,ENWRK0
	ADD	HL,DE
	LD	(HL),$05
;
	LD	HL,ENCHPT
	ADD	HL,DE
	INC	(HL)
	JP	EDINC
;-------------------------------------
EB23BGC
;3
;	DB	%00000000
;	DB	%00000000
;	DB	%00000000
;	DB	%00000000
;	DB	%00000101
;	DB	%00000101
;	DB	%00000101
;	DB	%00000101
;	DB	%00011001
;	DB	%00011001
;	DB	%00011010
;	DB	%00011010
;	DB	%00011110
;	DB	%00011110
;	DB	%00011110
;	DB	%00011110
EB23O0C
	DB	%00000000
	DB	%00000000
	DB	%00000000
	DB	%00000000
	DB	%00000101
	DB	%00000101
	DB	%00000101
	DB	%00000101
	DB	%00011001
	DB	%00011001
	DB	%00011010
	DB	%00011010
	DB	%00011110
	DB	%00011110
	DB	%00011110
	DB	%00011110
EB23O1C
	DB	%00000000
	DB	%00000000
	DB	%00000000
	DB	%00000000
	DB	%00000000
	DB	%00000001
	DB	%00000001
	DB	%00000001
	DB	%01010001
	DB	%01010001
	DB	%01010010
	DB	%01010010
	DB	%10010010
	DB	%10010010
	DB	%10010010
	DB	%10010010
; - - - - - - - - - - - - - - - - - -
EB23000
;	LD	A,(FRCNT)
;	AND	$07
;	JR	NZ,EB23010
;;
;	LD	A,(EDCNT0)
;	CP	$0C
;	JR	NZ,EB23008
;
	CALL	ERCLER
;
	LD	A,$60
	LD	(EDTIM3),A
	JP	EDINC
;EB23008
;	INC	A
;	LD	(EDCNT0),A
;EB23010
;	LD	A,(FRCNT)
;	AND	$03
;	LD	E,A
;	LD	A,(EDCNT0)
;	ADD	A,E
;	LD	E,A
;	LD	D,$00
;	LD	HL,EB23BGC
;	ADD	HL,DE
;	LD	A,(HL)
;	LD	(BGPFG),A
;	LD	(OBP0FG),A
;	LD	HL,EB23O0C
;	ADD	HL,DE
;	LD	A,(HL)
;	LD	(OBP0FG),A
;	LD	HL,EB23O1C
;	ADD	HL,DE
;	LD	A,(HL)
;	LD	(OBP1FG),A
;	RET
;==========================================
EB24000
	LD	A,(EDTIM3)
	AND	A
	JR	NZ,EB24010
;
;	LD	A,(KEYA2)
;	AND	$30
;	JR	Z,EB24010
;
	XOR	A
	LD	(EDMODE),A
	LD	(ENMODE+$0C),A	;ＬＩＮＫ ＣＬＥＡＲ
	LD	(ENMODE+$0D),A	;ＬＩＮＫ ＣＬＥＡＲ
	LD	(ENMODE+$0E),A	;ＬＩＮＫ ＣＬＥＡＲ
	LD	(ENMODE+$0F),A	;ＬＩＮＫ ＣＬＥＡＲ
;
		LD	A,:EB24000	; 戻りバンク
		CALL	AllWhiteSetSub	; オールホワイト
;
	LD	HL,ITMODE
	INC	(HL)	;エンディング Ｂヘ
EB24010
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	C					  %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;-------------------------------------
ENDC
	CALL	NAMISE
;
	CALL	ENEMYL
;
	LD	A,(EDMODE)
	RST	00
	DW	EC1000
	DW	EC2000
	DW	EC3000
	DW	EC4000
	DW	EC5000
;-------------------------------------
EC1000
	LD	A,ECHC
	LD	(BLNKFG),A
;
;-------------------------------------------------------------
		LD	A,$001		; フェードインフラグＯＮ
		LD	(FADEMDFG),A
;-------------------------------------------------------------
;
	XOR	A
	LD	(SCCH),A
	LD	(SCCV),A
	LD	(TILTXD),A
	LD	(TILTYD),A
;
	LD	A,$3D
	LD	(SOUND4),A	;(S)
;
	CALL	ERCLER
	JP	EDINC
;-------------------------------------
EC2000
	LD	A,EBGC
	LD	(VRFLG),A
;
	LD	A,EDAI
	CALL	ENIDSHL	;かもめ 1 セット！
;
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),$18
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),$20
;
	LD	HL,ENWRK0
	ADD	HL,DE
	LD	(HL),$06
;
	LD	HL,ENXSPD
	ADD	HL,DE
	LD	(HL),$03
;
	LD	A,EDAI
	CALL	ENIDSHL	;かもめ 2 セット！
;
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),$78
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),$78
;
	LD	HL,ENWRK0
	ADD	HL,DE
	LD	(HL),$06
;
	LD	HL,ENXSPD
	ADD	HL,DE
	LD	(HL),$FD
;
	LD	HL,ENCHPT
	ADD	HL,DE
	LD	(HL),$03
;
	LD	A,EDAI
	CALL	ENIDSHL	; 光 セット！
;
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),$68
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),$60
;
	LD	HL,ENWRK0
	ADD	HL,DE
	LD	(HL),$07
;
	LD	A,$60
	LD	(EDTIM3),A
	JP	EDINC
;-------------------------------------
EBCBGC
;3
;	DB	%00000000
;	DB	%00000000
;	DB	%00000000
;	DB	%00000000
;	DB	%00000101
;	DB	%00000101
;	DB	%00000101
;	DB	%00000101
;	DB	%00000101
;	DB	%00000101
;	DB	%00000101
;	DB	%00000101
;	DB	%00011001
;	DB	%00011001
;	DB	%00011010
;	DB	%00011010
;	DB	%00011110
;	DB	%00011110
;	DB	%00011110
;	DB	%00011110
EBCO0C
	DB	%00000000
	DB	%00000000
	DB	%00000000
	DB	%00000000
	DB	%00000101
	DB	%00000101
	DB	%00000101
	DB	%00000101
	DB	%00000101
	DB	%00000101
	DB	%00000101
	DB	%00000101
	DB	%00011001
	DB	%00011001
	DB	%00011010
	DB	%00011010
	DB	%00011110
	DB	%00011110
	DB	%00011110
	DB	%00011110
EBCO1C
	DB	%00000000
	DB	%00000000
	DB	%00000000
	DB	%00000000
	DB	%00000000
	DB	%00000001
	DB	%00000001
	DB	%00000001
	DB	%00000001
	DB	%00000001
	DB	%00000001
	DB	%00000001
	DB	%01010001
	DB	%01010001
	DB	%01010001
	DB	%01010010
	DB	%01010010
	DB	%10010010
	DB	%10010010
	DB	%10010010
	DB	%10010010
EC3000
	LD	A,(FRCNT)
	AND	$0F
	JR	NZ,EC3010
;
	LD	A,(EDCNT0)
	CP	$10
	JR	NZ,EBC008
;
	CALL	ERCLER
;
	LD	A,$60
	LD	(EDTIM3),A
	JP	EDINC
EBC008
	INC	A
	LD	(EDCNT0),A

		LD	A,(CGBFLG)
		AND	A
		JR	Z,EC3010

		LD	A,(EDCNT0)
		DEC	A
		JP	END_FADEIN	; フェードイン
EC3010
	LD	A,(FRCNT)
	AND	$03
	LD	E,A
	LD	A,(EDCNT0)
	ADD	A,E
	LD	E,A
	LD	D,$00
	LD	HL,EBCBGC
	ADD	HL,DE
	LD	A,(HL)
	LD	(BGPFG),A
;;	LD	(OBP0FG),A
	LD	HL,EBCO0C
	ADD	HL,DE
	LD	A,(HL)
	LD	(OBP0FG),A
	LD	HL,EBCO1C
	ADD	HL,DE
	LD	A,(HL)
	LD	(OBP1FG),A
	RET
;-------------------------------------
EC4000
	LD	A,(EDTIM3)
	AND	A
	JR	NZ,EC4010
;
;	LD	A,(KEYA2)
;	AND	$30
;	JR	Z,EC4010
;
;	XOR	A
;	LD	(EDMODE),A
;	LD	(ENMODE+$0D),A	;ＬＩＮＫ ＣＬＥＡＲ
;	LD	(ENMODE+$0E),A	;ＬＩＮＫ ＣＬＥＡＲ
;	LD	(ENMODE+$0F),A	;ＬＩＮＫ ＣＬＥＡＲ
;;
;	LD	HL,ITMODE
;	INC	(HL)	;エンディング B へ
;
	CALL	ERCLER
	JP	EDINC
EC4010
	RET
;-------------------------------------
;EBCBGC2
;;3
;	DB	%00011110
;	DB	%00011110
;	DB	%00011110
;	DB	%00011110
;	DB	%00011010
;	DB	%00011010
;	DB	%00011010
;	DB	%00011010
;	DB	%00000101
;	DB	%00000101
;	DB	%00000101
;	DB	%00000101
;	DB	%00000000
;	DB	%00000000
;	DB	%00000000
;	DB	%00000000
;EBCO0C2
;	DB	%00011110
;	DB	%00011110
;	DB	%00011110
;	DB	%00011110
;	DB	%00011010
;	DB	%00011010
;	DB	%00011010
;	DB	%00011010
;	DB	%00000101
;	DB	%00000101
;	DB	%00000101
;	DB	%00000101
;	DB	%00000000
;	DB	%00000000
;	DB	%00000000
;	DB	%00000000
;EBCO1C2
;	DB	%00000000
;	DB	%00000000
;	DB	%00000000
;	DB	%00000000
;	DB	%00000001
;	DB	%00000001
;	DB	%00000001
;	DB	%00000001
;	DB	%01010001
;	DB	%01010001
;	DB	%01010001
;	DB	%01010010
;	DB	%10010010
;	DB	%10010010
;	DB	%10010010
;	DB	%10010010
;-------------------------------------
EC5000
;	LD	A,(FRCNT)
;	AND	$07
;	JR	NZ,EC5010
;;
;	LD	A,(EDCNT0)
;	CP	$0C
;	JR	NZ,EC5008
;
	CALL	ERCLER
;
	XOR	A
	LD	(EDMODE),A
	LD	(ENMODE+$0D),A	;ＬＩＮＫ ＣＬＥＡＲ
	LD	(ENMODE+$0E),A	;ＬＩＮＫ ＣＬＥＡＲ
	LD	(ENMODE+$0F),A	;ＬＩＮＫ ＣＬＥＡＲ
;
		LD	A,:EC5000	; 戻りバンク
		CALL	AllWhiteSetSub	; オールホワイト
;
	LD	HL,ITMODE
	INC	(HL)	;エンディング B２ へ
	RET
;;	JP	EDINC
;EC5008
;	INC	A
;	LD	(EDCNT0),A
;EC5010
;	LD	A,(FRCNT)
;	AND	$03
;	LD	E,A
;	LD	A,(EDCNT0)
;	ADD	A,E
;	LD	E,A
;	LD	D,$00
;	LD	HL,EBCBGC2
;	ADD	HL,DE
;	LD	A,(HL)
;	LD	(BGPFG),A
;	LD	HL,EBCO0C2
;	ADD	HL,DE
;	LD	A,(HL)
;	LD	(OBP0FG),A
;	LD	HL,EBCO1C2
;	ADD	HL,DE
;	LD	A,(HL)
;	LD	(OBP1FG),A
;	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	B					  %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;-------------------------------------
ENDB
	CALL	NAMISE
;
	LD	DE,$98E0
	CALL	NAMIVS
;
	CALL	ENEMYL
;
;;	LD	A,(FRCNT)
;;	AND	$03
;;	JR	NZ,EB3020
;
	LD	A,(EDCNT4)
	INC	A
	LD	(EDCNT4),A
	CP	$05
	JR	C,EB3020
;
	XOR	A
	LD	(EDCNT4),A
;
	LD	A,(EDCNT0)
	INC	A
	CP	$2B
	JR	NZ,EB3010
	XOR	A
EB3010
	LD	(EDCNT0),A
EB3020
	LD	A,(EDCNT0)
	LD	E,A
	LD	D,$00
	LD	HL,EBSCYD
	ADD	HL,DE
	LD	A,(HL)
;;	SUB	$08
	ADD	A,$00
	LD	(EDWRK0),A	;スクロールポイント！
;
		CALL	BLINKMV2	; 寝てるりんく
;
	LD	A,(EDMODE)
	RST	00
	DW	EB1000
	DW	EB2000
	DW	EB3000
	DW	EB4000
	DW	EB5000
;-------------------------------------
EB1000
	LD	A,ECHB
	LD	(BLNKFG),A
;
;-------------------------------------------------------------
		XOR	A		; フェードインフラグＯＦＦ
		LD	(FADEMDFG),A
;-------------------------------------------------------------
;
	JP	EDINC
;-------------------------------------
EB2000
	LD	A,EBGB
	LD	(VRFLG),A
;
	LD	HL,IE
	SET	1,(HL)	;部分スクロールセット！
;
	LD	A,$42
	LD	(LYC),A
;
	LD	A,EDAI
	CALL	ENIDSHL	; 浮遊物１ セット！
;
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),$18
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),$55
;
	LD	HL,ENWRK0
	ADD	HL,DE
	LD	(HL),$08
;
	LD	HL,ENCHPT
	ADD	HL,DE
	LD	(HL),$02	;木
;
	LD	A,EDAI
	CALL	ENIDSHL	; 浮遊物2 セット！
;
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),$68
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),$58
;
	LD	HL,ENWRK0
	ADD	HL,DE
	LD	(HL),$08
;
	LD	HL,ENCHPT
	ADD	HL,DE
	INC	(HL)  ;,$01	;たる
;
	LD	A,EDAI
	CALL	ENIDSHL	; 浮遊物3 セット！
;
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),$88
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),$60
;
	LD	HL,ENWRK0
	ADD	HL,DE
	LD	(HL),$08
;
	LD	A,EDAI
	CALL	ENIDSHL	; かもめ セット！
;
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),$08
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),$50
;
	LD	HL,ENWRK0
	ADD	HL,DE
	LD	(HL),$09
;
	LD	HL,ENXSPD
	ADD	HL,DE
	LD	(HL),$08
;
	LD	HL,ENYSPD
	ADD	HL,DE
	LD	(HL),$F8
;
	CALL	ERCLER
;
	LD	A,$50
	LD	(EDTIM3),A

		LD	A,(CGBFLG)
		AND	A
		JP	Z,EDINC

		LD	A,EDAI
		CALL	ENIDSHL	; 寝てるりんくセット！
;
		LD	HL,ENXPSL
		ADD	HL,DE
		LD	(HL),$40
		LD	HL,ENYPSL
		ADD	HL,DE
		LD	(HL),$70
;
		LD	HL,ENWRK0
		ADD	HL,DE
		LD	(HL),$11
;
;;;;		LD	HL,ENXSPD
;;;;		ADD	HL,DE
;;;;		LD	(HL),$08
;
;;;;		LD	HL,ENYSPD
;;;;		ADD	HL,DE
;;;;		LD	(HL),$F8

		LD	HL,LCDCB
		RES	2,(HL)	; ＯＢＪ ８×８モード

	JP	EDINC
;-------------------------------------
EBSCYD	;リンク揺れ SCCV
;;    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F
 DB $00,$00,$00,$00,$01,$01,$01,$02,$02,$03,$03,$04,$05,$06,$07,$08
;;   10	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F
 DB $09,$0A,$0A,$0B,$0B,$0C,$0C,$0C,$0B,$0B,$0A,$0A,$09,$08,$07,$06
;;   20	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F
 DB $05,$04,$03,$03,$02,$02,$01,$01,$01,$00,$00,$00,$00,$00,$00,$00
;-------------------------------------
EBNAMID
	DB	$0D
 DB $4C,$4D,$4E,$4F,$4C,$4D,$4E,$4F,$4C,$4D,$4E,$4F,$4C,$4D,$00
	DB	$0D
 DB $5C,$5D,$5E,$5F,$5C,$5D,$5E,$5F,$5C,$5D,$5E,$5F,$5C,$5D,$00
	DB	$0D
 DB $6C,$6D,$6E,$6F,$6C,$6D,$6E,$6F,$6C,$6D,$6E,$6F,$6C,$6D,$00
	DB	$0D
 DB $7C,$7D,$7E,$7F,$7C,$7D,$7E,$7F,$7C,$7D,$7E,$7F,$7C,$7D,$00
;- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
EB3000
	LD	A,(FRCNT)
	AND	$07
	JR	NZ,EB3008	;波書き換え！
;
	LD	HL,VRAMD+1
	LD	A,$9A
	LD	(HLI),A
	LD	A,$23
	LD	(HLI),A
;
	LD	A,(EDCNT1)
	INC	A
	AND	$03
	LD	(EDCNT1),A
	RLA
	RLA
	RLA
	RLA
	AND	$F0
	LD	E,A
	LD	D,$00
	LD	HL,EBNAMID
	ADD	HL,DE
;
	LD	DE,VRAMD+3
	LD	C,$10
EB3002
	LD	A,(HLI)
	LD	(DE),A
	INC	DE
	DEC	C
	JR	NZ,EB3002
;
	JR	EB300C
EB3008
	CALL	ELINKKAO	;顔 転送！
EB300C
	LD	A,(EDWRK1)
	RST	00
	DW	EB31000
	DW	EB32000
	DW	EB33000
;-----------------------------------------
EB31000
	LD	A,(EDTIM3)
	AND	A
	JR	NZ,EB31010
;
;;	CALL	EDW1INC
EDW1INC
	LD	HL,EDWRK1
	INC	(HL)
EB31010
	RET
;-----------------------------------------
EBKAOPT
 DB $01,$00,$01,$02,$01,$02,$03,$04,$05,$06,$07,$08
EBKAOTM
 DB $20,$18,$20,$18,$18,$18,$20,$40,$0C,$0C,$0C,$40
;-----------------------------------------
EB32000
	LD	A,(EDTIM0)
	AND	A
	JR	NZ,EB32030
;
	LD	A,(EDCNT3)
	LD	E,A
	LD	D,$00
	LD	HL,EBKAOPT
	ADD	HL,DE
	LD	A,(HL)
	LD	(EDWRK2),A
	LD	HL,EBKAOTM
	ADD	HL,DE
	LD	A,(HL)
	LD	(EDTIM0),A
;
	LD	A,E
	INC	A
	LD	(EDCNT3),A
	CP	$0C
	JR	NZ,EB32030
;
	JP	EDW1INC
EB32030
	RET
;-----------------------------------------
EB33000
	LD	A,(EDTIM0)
	AND	A
	JR	NZ,EB33030
;
;	LD	A,(KEYA2)
;	AND	%00100000
;	JR	Z,EB33010
;
;;;	CALL	ERCLER
	XOR	A
	LD	(EDWRK5),A
;
	CALL	EDINC
	RET
;
EB33010
;	LD	A,(KEYA2)
;	AND	%00010000
;	JR	Z,EB33030
;;
;	XOR	A
;	LD	(EDWRK2),A
;	LD	(EDCNT3),A
;	LD	(EDTIM0),A
;;
;	LD	HL,EDWRK1
;	DEC	(HL)
;	DEC	(HL)
;;
;	LD	A,$20
;	LD	(EDTIM3),A
EB33030
	RET
;=========================================
;-------------------------------------
EBBGC
;3
;	DB	%00011110
;	DB	%00011110
;	DB	%00011110
;	DB	%00011110
;	DB	%00011010
;	DB	%00011010
;	DB	%00011001
;	DB	%00011001
;	DB	%00000101
;	DB	%00000101
;	DB	%00000101
;	DB	%00000101
;	DB	%00000000
;	DB	%00000000
;	DB	%00000000
;	DB	%00000000
EBO0C
	DB	%00011110
	DB	%00011110
	DB	%00011110
	DB	%00011110
	DB	%00011010
	DB	%00011010
	DB	%00011001
	DB	%00011001
	DB	%00000101
	DB	%00000101
	DB	%00000101
	DB	%00000101
	DB	%00000000
	DB	%00000000
	DB	%00000000
	DB	%00000000
EBO1C
	DB	%10010010
	DB	%10010010
	DB	%10010010
	DB	%10010010
	DB	%10010010
	DB	%10010010
	DB	%01010001
	DB	%01010001
	DB	%01000001
	DB	%01000001
	DB	%00000000
	DB	%00000000
	DB	%00000000
	DB	%00000000
	DB	%00000000
	DB	%00000000
;- - - - - - - - - - - - - - - - -
EB4000
		LD	A,(EDFADE)
		AND	A		; ＯＢＪフェード？
		JP	NZ,END_FADEOUT	; ＹＥＳ

	LD	A,(FRCNT)
	AND	$07
	JR	NZ,EB4010
;
	LD	A,(EDWRK5)
	CP	$0C
	JR	NZ,EB4008
;
	LD	A,$C0
	LD	(EDTIM0),A
;
	XOR	A
	LD	(BGPFG),A
	LD	(OBP0FG),A
	LD	(OBP1FG),A
;
	JP	EDINC
EB4008
	INC	A
	LD	(EDWRK5),A

		LD	A,(CGBFLG)
		AND	A
		JR	Z,EB4010

		LD	A,(EDWRK5)
		DEC	A
		AND	%00000001	; 奇数フレーム（ＯＢＪ）？
		RET	NZ		; ＹＥＳ

		LD	HL,EDFADE
		INC	(HL)		; ＯＢＪフェードフラグＯＮ
		JP	END_FADEOUT	; フェードアウト（ＢＧ）
EB4010
	LD	A,(FRCNT)
	AND	$03
	LD	E,A
	LD	A,(EDWRK5)
	ADD	A,E
	LD	E,A
	LD	D,$00
	LD	HL,EBBGC
	ADD	HL,DE
	LD	A,(HL)
	LD	(BGPFG),A
	LD	HL,EBO0C
	ADD	HL,DE
	LD	A,(HL)
	LD	(OBP0FG),A
	LD	HL,EBO1C
	ADD	HL,DE
	LD	A,(HL)
	LD	(OBP1FG),A
	RET
;=========================================
EB5000
	LD	A,(EDTIM0)
	AND	A
	JR	NZ,EB5020
;
ENDDST
ENDNXT
	XOR	A
	LD	(EDMODE),A
	LD	(ENMODE+$07),A	;ＬＩＮＫ ＣＬＥＡＲ
	LD	(ENMODE+$08),A	;ＬＩＮＫ ＣＬＥＡＲ
	LD	(ENMODE+$09),A	;ＬＩＮＫ ＣＬＥＡＲ
	LD	(ENMODE+$0A),A	;ＬＩＮＫ ＣＬＥＡＲ
	LD	(ENMODE+$0B),A	;ＬＩＮＫ ＣＬＥＡＲ
	LD	(ENMODE+$0C),A	;ＬＩＮＫ ＣＬＥＡＲ
	LD	(ENMODE+$0D),A	;ＬＩＮＫ ＣＬＥＡＲ
	LD	(ENMODE+$0E),A	;ＬＩＮＫ ＣＬＥＡＲ
	LD	(ENMODE+$0F),A	;ＬＩＮＫ ＣＬＥＡＲ
	LD	(SCCV),A
	LD	(EDCNT4),A
	LD	(EDCNT5),A
;
	CALL	ERCLER
;
	LD	HL,IE
	RES	1,(HL)	;部分スクロール リセット！
;
	LD	HL,LCDCB
	SET	2,(HL)	; OBJ 8x16 mode
;
	LD	HL,ITMODE
	INC	(HL)	;エンディング D へ
	LD	A,(HL)
;;;;;;	CP	ENDFS+1
		CP	ENDFS+2
	JR	NZ,EB5020
;
	LD	(HL),$00
EB5020
	RET
;=========================================
EKAODT
;00
	DB	$99,$46,$05
	DB	$AC,$AC,$AC,$AC,$AC,$AC
	DB	$99,$66,$05
	DB	$AC,$AC,$86,$87,$88,$89
	DB	$99,$86,$05
	DB	$94,$95,$96,$97,$98,$99
	DB	$99,$A6,$05
	DB	$A4,$A5,$A6,$A7,$A8,$A9
	DB	$99,$C6,$05
	DB	$B4,$B5,$B6,$B7,$B8,$B9
	DB	$99,$E6,$05
	DB	$C4,$C5,$C6,$C7,$C8,$C9
EKAODT1
;01
	DB	$99,$46,$05
	DB	$AC,$AC,$AC,$AC,$AC,$AC
	DB	$99,$66,$05
	DB	$AC,$AC,$86,$87,$88,$89
	DB	$99,$86,$05
	DB	$94,$95,$96,$97,$98,$99
	DB	$99,$A6,$05
	DB	$A4,$A5,$A6,$A7,$A8,$A9
	DB	$99,$C6,$05
	DB	$B4,$B5,$8A,$8B,$B8,$B9
	DB	$99,$E6,$05
	DB	$C4,$C5,$9A,$9B,$C8,$C9
EKAODT2
;02
	DB	$99,$46,$05
	DB	$AC,$AC,$AC,$AC,$AC,$AC
	DB	$99,$66,$05
	DB	$AC,$AC,$86,$87,$88,$89
	DB	$99,$86,$05
	DB	$94,$95,$96,$97,$98,$99
	DB	$99,$A6,$05
	DB	$A4,$A5,$A6,$A7,$A8,$A9
	DB	$99,$C6,$05
	DB	$B4,$B5,$8C,$8D,$B8,$B9
	DB	$99,$E6,$05
	DB	$C4,$C5,$9C,$C7,$C8,$C9
EKAODT3
;03
	DB	$99,$46,$05
	DB	$AC,$AC,$AC,$AC,$AC,$AC
	DB	$99,$66,$05
	DB	$AC,$AC,$86,$87,$88,$89
	DB	$99,$86,$05
	DB	$94,$95,$96,$97,$98,$99
	DB	$99,$A6,$05
	DB	$A4,$A5,$A6,$A7,$A8,$A9
	DB	$99,$C6,$05
	DB	$B4,$B5,$8E,$8F,$B8,$B9
	DB	$99,$E6,$05
	DB	$C4,$C5,$9E,$C7,$C8,$C9
EKAODT4
;04
	DB	$99,$46,$05
	DB	$AC,$AC,$AC,$AC,$AC,$AC
	DB	$99,$66,$05
	DB	$AC,$AC,$86,$87,$88,$89
	DB	$99,$86,$05
	DB	$94,$95,$96,$97,$98,$99
	DB	$99,$A6,$05
	DB	$A4,$A5,$A6,$A7,$A8,$A9
	DB	$99,$C6,$05
	DB	$B4,$B5,$E9,$EA,$B8,$B9
	DB	$99,$E6,$05
	DB	$C4,$C5,$F9,$C7,$C8,$C9
EKAODT5
;05
	DB	$99,$46,$05
	DB	$AC,$AC,$AC,$AC,$AC,$AC
	DB	$99,$66,$05
	DB	$AC,$AC,$86,$87,$88,$89
	DB	$99,$86,$05
	DB	$94,$95,$96,$97,$98,$99
	DB	$99,$A6,$05
	DB	$A4,$A5,$A6,$A7,$A8,$A9
	DB	$99,$C6,$05
	DB	$B4,$B5,$EB,$EC,$B8,$B9
	DB	$99,$E6,$05
	DB	$C4,$C5,$FB,$C7,$C8,$C9
EKAODT6
;06
	DB	$99,$46,$05
	DB	$AC,$AC,$AC,$AC,$AC,$AC
	DB	$99,$66,$05
	DB	$AC,$AC,$86,$87,$88,$89
	DB	$99,$86,$05
	DB	$94,$95,$96,$97,$98,$99
	DB	$99,$A6,$05
	DB	$A4,$A5,$A6,$A7,$A8,$A9
	DB	$99,$C6,$05
	DB	$B4,$B5,$ED,$EE,$B8,$B9
	DB	$99,$E6,$05
	DB	$C4,$C5,$FB,$C7,$C8,$C9
EKAODT7
;07
	DB	$99,$46,$05
	DB	$AC,$AC,$AC,$AC,$AC,$AC
	DB	$99,$66,$05
	DB	$00,$01,$02,$03,$04,$AC
	DB	$99,$86,$05
	DB	$10,$11,$12,$13,$14,$15
	DB	$99,$A6,$05
	DB	$20,$21,$22,$23,$24,$25
	DB	$99,$C6,$05
	DB	$30,$31,$32,$33,$34,$35
	DB	$99,$E6,$05
	DB	$40,$41,$42,$43,$44,$C9
EKAODT8
;08
	DB	$99,$46,$05
	DB	$0C,$0D,$1C,$1D,$AC,$AC
	DB	$99,$66,$05
	DB	$06,$07,$08,$09,$0A,$AC
	DB	$99,$86,$05
	DB	$16,$17,$18,$19,$1A,$1B
	DB	$99,$A6,$05
	DB	$26,$27,$28,$29,$2A,$2B
	DB	$99,$C6,$05
	DB	$36,$37,$38,$39,$3A,$3B
	DB	$99,$E6,$05
	DB	$46,$47,$48,$49,$4A,$C9
;
EKAOAD
	DW	EKAODT
	DW	EKAODT1
	DW	EKAODT2
	DW	EKAODT3
	DW	EKAODT4
	DW	EKAODT5
	DW	EKAODT6
	DW	EKAODT7
	DW	EKAODT8
;- - - - - - - - - - - - - - - - - - -
EKAODT_ATR
;00,01,02,03,04,05,06
	DB	$99,$46,$05
	DB	$04,$04,$04,$04,$04,$04
	DB	$99,$66,$05
	DB	$04,$04,$03,$03,$03,$03
	DB	$99,$86,$05
	DB	$01,$01,$01,$05,$05,$03
	DB	$99,$A6,$05
	DB	$01,$01,$05,$05,$05,$02
	DB	$99,$C6,$05
	DB	$01,$01,$05,$05,$01,$02
	DB	$99,$E6,$05
	DB	$02,$02,$05,$05,$02,$02
EKAODT7_ATR
;07
	DB	$99,$46,$05
	DB	$04,$04,$04,$04,$04,$04
	DB	$99,$66,$05
	DB	$01,$07,$03,$03,$03,$03
	DB	$99,$86,$05
	DB	$01,$01,$01,$01,$05,$03
	DB	$99,$A6,$05
	DB	$01,$01,$05,$05,$05,$02
	DB	$99,$C6,$05
	DB	$07,$07,$05,$05,$05,$02
	DB	$99,$E6,$05
	DB	$02,$02,$02,$02,$02,$02
EKAODT8_ATR
;08
	DB	$99,$46,$05
	DB	$07,$01,$07,$07,$04,$04
	DB	$99,$66,$05
	DB	$01,$01,$01,$01,$07,$04
	DB	$99,$86,$05
	DB	$01,$05,$05,$01,$07,$03
	DB	$99,$A6,$05
	DB	$01,$05,$05,$05,$07,$02
	DB	$99,$C6,$05
	DB	$07,$05,$05,$05,$05,$02
	DB	$99,$E6,$05
	DB	$02,$02,$02,$02,$02,$02
;
EKAOAD_ATR
	DW	EKAODT_ATR
	DW	EKAODT_ATR
	DW	EKAODT_ATR
	DW	EKAODT_ATR
	DW	EKAODT_ATR
	DW	EKAODT_ATR
	DW	EKAODT_ATR
	DW	EKAODT7_ATR
	DW	EKAODT8_ATR
;- - - - - - - - - - - - - - - - - - -
ELINKKAO
	LD	A,(FRCNT)
	AND	$01
	CP	$01
	JR	NZ,ELK020
;
	LD	A,(EDWRK2)	;顔パターン
	SLA	A
	LD	E,A
	LD	D,$00
		PUSH	DE
	LD	HL,EKAOAD
	ADD	HL,DE
	LD	A,(HLI)
	LD	H,(HL)
	LD	L,A
;
	LD	DE,VRAMD+1
	LD	C,54
ELK002
	LD	A,(HLI)
	LD	(DE),A
	INC	DE
	DEC	C
	JR	NZ,ELK002
;
	XOR	A
	LD	(DE),A

;-----------------------------------------------------------
;	リンク顔 アトリビュートセット
;-----------------------------------------------------------
		POP	DE

		LD	A,(CGBFLG)
		AND	A
		RET	Z

		LD	HL,EKAOAD_ATR
		ADD	HL,DE
		LD	A,(HLI)
		LD	H,(HL)
		LD	L,A
;
		LD	DE,VRAMD_AT+1
		LD	C,54
ELK003
		LD	A,(HLI)
		LD	(DE),A
		INC	DE
		DEC	C
		JR	NZ,ELK003
;
		XOR	A
		LD	(DE),A
;-----------------------------------------------------------
ELK020
	RET

;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	D					  %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;-------------------------------------
ENDD
	CALL	ENEMYL
;
	LD	A,(EDMODE)
	RST	00
	DW	ED1000
	DW	ED2000
	DW	ED3000
	DW	ED4000
	DW	ED5000
	DW	ED6000
	DW	ED7000
	DW	ED8000
	DW	ED9000
;-------------------------------------
ED1000
	LD	A,ECHD
	LD	(BLNKFG),A
;
;-------------------------------------------------------------
		LD	A,$001		; フェードインフラグＯＮ
		LD	(FADEMDFG),A
;-------------------------------------------------------------
;
	JP	EDINC
;-------------------------------------
ED2000
	LD	A,EBGD
	LD	(VRFLG),A
;
	LD	A,EDAI	;リンクセット
	CALL	ENIDSHL
;
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),$40
;
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),$4E
;
	LD	HL,ENWRK0
	ADD	HL,DE
	LD	(HL),$0A
	JP	EDINC
;-------------------------------------
ED3000
	LD	DE,$9960
	CALL	NAMIVS
;
	LD	A,(FRCNT)
	AND	$03
	JR	NZ,ED3010
;
	LD	A,(EDCNT0)
	CP	$0C
	JR	NZ,ED3008
;
	CALL	ERCLER
;
	LD	A,$60
	LD	(EDTIM3),A
	JP	EDINC
ED3008
	INC	A
	LD	(EDCNT0),A

		LD	A,(CGBFLG)
		AND	A
		JR	Z,ED3010

		LD	A,(EDCNT0)
		DEC	A
		JP	END_FADEIN	; フェードイン
ED3010
	LD	A,(FRCNT)
	AND	$03
	LD	E,A
	LD	A,(EDCNT0)
	ADD	A,E
	LD	E,A
	LD	D,$00
	LD	HL,EB23BGC
	ADD	HL,DE
	LD	A,(HL)
	LD	(BGPFG),A
	LD	(OBP0FG),A
	LD	HL,EB23O0C
	ADD	HL,DE
	LD	A,(HL)
	LD	(OBP0FG),A
	LD	HL,EB23O1C
	ADD	HL,DE
	LD	A,(HL)
	LD	(OBP1FG),A
	RET
;-------------------------------------
ED4000
	LD	DE,$9960
	CALL	NAMIVS
;
	LD	A,(EDTIM3)
	AND	A
	JR	NZ,ED4010
;
	CALL	ERCLER
;
	JP	EDINC
ED4010
	RET
;-------------------------------------
ED5O0P
	DB	%00011110
	DB	%00011110
	DB	%00011110
	DB	%00011110
	DB	%00101110
	DB	%00101110
	DB	%00101110
	DB	%00101110
	DB	%01101110
	DB	%01101110
	DB	%01101110
	DB	%01101110
;- - - - - - - - - - - - - - -
ED5000
	LD	DE,$9960
	CALL	NAMIVS
;
	LD	A,(FRCNT)
	AND	$07
	JR	NZ,ED5010
;
	LD	A,(EDCNT0)
	CP	$08
	JR	NZ,ED5008
;
	CALL	ERCLER
;
	LD	A,$20
	LD	(EDTIM0),A
;
	JP	EDINC
ED5008
	INC	A
	LD	(EDCNT0),A

		LD	A,(CGBFLG)
		AND	A
		JP	NZ,LINK_FADE7
ED5010
	LD	A,(FRCNT)
	AND	$03
	LD	E,A
	LD	A,(EDCNT0)
	ADD	A,E
	LD	E,A
	LD	D,$00
	LD	HL,ED5O0P
	ADD	HL,DE
	LD	A,(HL)
	LD	(OBP0FG),A
	RET
;-----------------------------------
;	シーン７：リンクフェード
;-----------------------------------
LINK_FADE_7
;< 0 >
		DW	$4cc5,$7fff,$56ab,$41e0	; ( 0 )
		DW	$7eb3,$0000,$3100,$3228	; ( 1 )
		DW	$7eb3,$0000,$121f,$27fe	; ( 2 )
		DW	$7eb3,$0000,$21bf,$4b1f	; ( 3 )
		DW	$7eb3,$0000,$046b,$1915	; ( 0 )
		DW	$7eb3,$0000,$1915,$4b1f	; ( 1 )
;< 1 >
		DW	$4cc5,$7fff,$528b,$3dc0	; ( 4 )
		DW	$7eb3,$0000,$2d00,$2e08	; ( 5 )
		DW	$7eb3,$0000,$11fd,$27bc	; ( 6 )
		DW	$7eb3,$0000,$219d,$46dd	; ( 7 )
		DW	$7eb3,$0000,$046a,$1913	; ( 4 )
		DW	$7eb3,$0000,$1913,$46dd	; ( 5 )
;< 2 >
		DW	$4cc5,$7fff,$4a4a,$39a0	; ( 0 )
		DW	$7eb3,$0000,$28e0,$29c7	; ( 1 )
		DW	$7eb3,$0000,$11da,$2359	; ( 2 )
		DW	$7eb3,$0000,$1d7a,$3e9a	; ( 3 )
		DW	$7eb3,$0000,$0469,$14f1	; ( 0 )
		DW	$7eb3,$0000,$14f1,$3e9a	; ( 1 )
;< 3 >
		DW	$4cc5,$7fff,$4209,$3160	; ( 4 )
		DW	$7eb3,$0000,$24c0,$25a6	; ( 5 )
		DW	$7eb3,$0000,$1197,$1ef6	; ( 6 )
		DW	$7eb3,$0000,$1957,$3657	; ( 7 )
		DW	$7eb3,$0000,$0468,$14cf	; ( 4 )
		DW	$7eb3,$0000,$14cf,$3657	; ( 5 )
;< 4 >
		DW	$4cc5,$7fff,$3de8,$2d40	; ( 0 )
		DW	$7eb3,$0000,$20c0,$2166	; ( 1 )
		DW	$7eb3,$0000,$0d74,$1a93	; ( 2 )
		DW	$7eb3,$0000,$1934,$31f4	; ( 3 )
		DW	$7eb3,$0000,$0447,$10cd	; ( 0 )
		DW	$7eb3,$0000,$10cd,$31f4	; ( 1 )
;< 5 >
		DW	$4cc5,$7fff,$35a7,$2500	; ( 4 )
		DW	$7eb3,$0000,$1ca0,$1d45	; ( 5 )
		DW	$7eb3,$0000,$0d31,$1630	; ( 6 )
		DW	$7eb3,$0000,$1511,$29b1	; ( 7 )
		DW	$7eb3,$0000,$0446,$10ab	; ( 4 )
		DW	$7eb3,$0000,$10ab,$29b1	; ( 5 )
;< 6 >
		DW	$4cc5,$7fff,$2d66,$20e0	; ( 0 )
		DW	$7eb3,$0000,$1880,$1904	; ( 1 )
		DW	$7eb3,$0000,$0d0e,$11cd	; ( 2 )
		DW	$7eb3,$0000,$10ee,$216e	; ( 3 )
		DW	$7eb3,$0000,$0445,$0c89	; ( 0 )
		DW	$7eb3,$0000,$0c89,$216e	; ( 1 )
;< 7 >
		DW	$4cc5,$7fff,$2525,$18a0	; ( 4 )
		DW	$7eb3,$0000,$1060,$10c3	; ( 5 )
		DW	$7eb3,$0000,$08cb,$0d6a	; ( 6 )
		DW	$7eb3,$0000,$0cab,$190b	; ( 7 )
		DW	$7eb3,$0000,$0424,$0867	; ( 4 )
		DW	$7eb3,$0000,$0867,$190b	; ( 5 )

LINK_FADE7
		LD	A,(EDCNT0)
		DEC	A
		SWAP	A		; Ｘ３０
		LD	C,A
		SLA	A
		ADD	A,C
		LD	C,A
		LD	A,$0
		ADC	A,$0
		LD	B,A

		LD	HL,LINK_FADE_7
		ADD	HL,BC
		LD	BC,$0030	; ６パレット
		LD	DE,CGWORK+0040H
		CALL	DATA_MOV	; データ転送

		XOR	A
		LD	(COLOFS),A	; 転送オフセット
		LD	A,4*6
		LD	(COLLNG),A	; 転送長さ
		LD	A,OBJCOL_BITFG|$80
		LD	(CGDMAF),A	; 転送フラグ（部分転送）
		RET
;-----------------------------------
ED6000
	LD	DE,$9960
	CALL	NAMIVS
;
	LD	A,(EDTIM0)
	AND	A
	JR	NZ,ED6010
;
	LD	A,$0A
	LD	(EDTIM0),A
;
	LD	A,(EDWRK0)	;顔上げ！
	INC	A
	LD	(EDWRK0),A
	CP	$02
	JR	NZ,ED6010
;
	LD	A,$20
	LD	(EDTIM0),A
;
	JP	EDINC
ED6010
	RET
;-----------------------------------
ED7000
	LD	DE,$9960
	CALL	NAMIVS
;
	LD	A,(EDTIM0)
	AND	A
	JR	NZ,ED7008
;
;;;	CALL	ERCLER
	JP	EDINC
;
ED7008
;	LD	A,(KEYA2)
;	AND	$30
;	JR	Z,ED7010
;;
;	LD	A,$20
;	LD	(EDTIM3),A
;;
;	XOR	A
;	LD	(EDWRK0),A
;;
;	LD	HL,EDMODE
;	LD	(HL),$03
ED7010
	RET
;-----------------------------------
;(CGB)ED8DATA
;(CGB)	DB	$9B,$E0,$13
;(CGB);0    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC
;(CGB)
;(CGB) DB  00;Dammy
;(CGB)	DB	$9B,$C0,$13
;(CGB);1    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC
;(CGB) DB  00;Dammy
;(CGB)	DB	$9B,$A0,$13
;(CGB);2    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC
;(CGB) DB  00;Dammy
;(CGB)	DB	$9B,$80,$13
;(CGB);3    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $60,$61,$62,$63,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC
;(CGB) DB  00;Dammy
;(CGB)	DB	$9B,$60,$13
;(CGB);4    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $50,$51,$52,$53,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC
;(CGB) DB  00;Dammy
;(CGB)	DB	$9B,$40,$13
;(CGB);5    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC
;(CGB) DB  00;Dammy
;(CGB)	DB	$9B,$20,$13
;(CGB);6    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC
;(CGB) DB  00;Dammy
;(CGB)	DB	$9B,$00,$13
;(CGB);7    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC
;(CGB) DB  00;Dammy
;(CGB)	DB	$9A,$E0,$13
;(CGB);8    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$60,$61,$62,$63,$AC,$AC,$AC
;(CGB) DB  00;Dammy
;(CGB)	DB	$9A,$C0,$13
;(CGB);9    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$50,$51,$52,$53,$AC,$AC,$AC
;(CGB) DB  00;Dammy
;(CGB)	DB	$9A,$A0,$13
;(CGB);A    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC
;(CGB) DB  00;Dammy
;(CGB)	DB	$9A,$80,$13
;(CGB);B    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC
;(CGB) DB  00;Dammy
;(CGB)	DB	$9A,$60,$13
;(CGB);C    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$60,$61
;(CGB) DB  00;Dammy
;(CGB)	DB	$9A,$40,$13
;(CGB);D    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$50,$51
;(CGB) DB  00;Dammy
;(CGB)	DB	$9A,$20,$13
;(CGB);E    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC
;(CGB) DB  00;Dammy
;(CGB)	DB	$9A,$00,$13
;(CGB);F    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $6B,$6C,$6D,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC
;(CGB) DB  00;Dammy
;(CGB)	DB	$99,$E0,$13
;(CGB);10   0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $5B,$5C,$5D,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$68,$69,$6A,$6B,$6C,$6D,$AC,$AC
;(CGB) DB  00;Dammy
;(CGB)	DB	$99,$C0,$13
;(CGB);11   0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$58,$59,$5A,$5B,$5C,$5D,$AC,$AC
;(CGB) DB  00;Dammy
;(CGB)	DB	$99,$A0,$13
;(CGB);12   0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC
;(CGB) DB  00;Dammy
;(CGB)	DB	$99,$80,$13
;(CGB);13   0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC
;(CGB) DB  00;Dammy
;(CGB)	DB	$99,$60,$13
;(CGB);14   0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$68,$69
;(CGB) DB  00;Dammy
;(CGB)	DB	$99,$40,$13
;(CGB);15   0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $AC,$AC,$AC,$AC,$68,$69,$6A,$6B,$6C,$6D,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$58,$59
;(CGB) DB  00;Dammy
;(CGB)	DB	$99,$20,$13
;(CGB);16   0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $AC,$AC,$AC,$AC,$58,$59,$5A,$5B,$5C,$5D,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC
;(CGB) DB  00;Dammy
;(CGB)	DB	$99,$00,$13
;(CGB);17   0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC
;(CGB) DB  00;Dammy
;(CGB)	DB	$98,$E0,$13
;(CGB);18   0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC
;(CGB) DB  00;Dammy
;(CGB)	DB	$98,$C0,$13
;(CGB);19   0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC
;(CGB) DB  00;Dammy
;(CGB)	DB	$98,$A0,$13
;(CGB);1A   0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC
;(CGB) DB  00;Dammy
;(CGB)	DB	$98,$80,$13
;(CGB);1B   0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC
;(CGB) DB  00;Dammy
;(CGB)	DB	$98,$60,$13
;(CGB);1C   0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC
;(CGB) DB  00;Dammy
;(CGB)	DB	$98,$40,$13
;(CGB);1D   0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC
;(CGB) DB  00;Dammy
;(CGB)	DB	$98,$20,$13
;(CGB);1E   0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$40,$41,$42,$43
;(CGB) DB  00;Dammy
;(CGB)	DB	$98,$00,$13
;(CGB);1F   0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$1B,$2E,$2E,$2E
;(CGB) DB  00;Dammy
;(CGB)	DB	$9B,$E0,$13
;(CGB);20   0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $41,$42,$43,$54,$55,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$9C,$9E,$BE,$E9
;(CGB) DB  00;Dammy
;(CGB)	DB	$9B,$C0,$13
;(CGB);21   0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $2E,$2E,$2E,$2E,$2F,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC
;(CGB) DB  00;Dammy
;(CGB)	DB	$9B,$A0,$13
;(CGB);22   0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $9E,$BE,$E9,$F9,$FB,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC
;(CGB) DB  00;Dammy
;(CGB)	DB	$9B,$80,$13
;(CGB);23   0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC
;(CGB) DB  00;Dammy
;(CGB);#############################################################
;(CGB)	DB	$9B,$60,$13
;(CGB);24   0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC
;(CGB) DB  00;Dammy
;(CGB)	DB	$9B,$40,$13
;(CGB);25   0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $43,$54,$55,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC
;(CGB) DB  00;Dammy
;(CGB)	DB	$9B,$20,$13
;(CGB);26   0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $2E,$2E,$2F,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC
;(CGB) DB  00;Dammy
;(CGB)	DB	$9B,$00,$13
;(CGB);27   0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $E9,$F9,$FB,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC
;(CGB) DB  00;Dammy
;(CGB)	DB	$9A,$E0,$13
;(CGB);28   0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC
;(CGB) DB  00;Dammy
;(CGB)	DB	$9A,$C0,$13
;(CGB);29   0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC
;(CGB) DB  00;Dammy
;(CGB)	DB	$9A,$A0,$13
;(CGB);2A   0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC
;(CGB) DB  00;Dammy
;(CGB)	DB	$9A,$80,$13
;(CGB);2B   0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $AC,$AC,$AC,$AC,$AC,$AC,$AC,$40,$41,$42,$43,$54,$55,$AC,$AC,$AC,$AC,$AC,$AC,$AC
;(CGB) DB  00;Dammy
;(CGB)	DB	$9A,$60,$13
;(CGB);2C   0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $AC,$AC,$AC,$AC,$AC,$AC,$AC,$1B,$2E,$2E,$2E,$2E,$2F,$AC,$AC,$AC,$AC,$AC,$AC,$AC
;(CGB) DB  00;Dammy
;(CGB)	DB	$9A,$40,$13
;(CGB);2D   0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $AC,$AC,$AC,$AC,$AC,$AC,$AC,$9C,$9E,$BE,$E9,$F9,$FB,$AC,$AC,$AC,$AC,$AC,$AC,$AC
;(CGB) DB  00;Dammy
;(CGB)	DB	$9A,$20,$13
;(CGB);2E   0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC
;(CGB) DB  00;Dammy
;(CGB)	DB	$9A,$00,$13
;(CGB);2F   0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC
;(CGB) DB  00;Dammy
;(CGB)	DB	$99,$E0,$13
;(CGB);30   0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC
;(CGB) DB  00;Dammy
;(CGB)	DB	$99,$C0,$13
;(CGB);31   0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC
;(CGB) DB  00;Dammy
;(CGB)	DB	$99,$A0,$13
;(CGB);32   0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC
;(CGB) DB  00;Dammy
;(CGB)	DB	$99,$80,$13
;(CGB);33   0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$40,$41,$42,$43
;(CGB) DB  00;Dammy
;(CGB)	DB	$99,$60,$13
;(CGB);34   0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$1B,$2E,$2E,$2E
;(CGB) DB  00;Dammy
;(CGB)	DB	$99,$40,$13
;(CGB);35   0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $40,$41,$42,$43,$54,$55,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$9C,$9E,$BE,$E9
;(CGB) DB  00;Dammy
;(CGB)	DB	$99,$20,$13
;(CGB);36   0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $1B,$2E,$2E,$2E,$2E,$2F,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC
;(CGB) DB  00;Dammy
;(CGB)	DB	$99,$00,$13
;(CGB);37   0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $9C,$9E,$BE,$E9,$F9,$FB,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC
;(CGB) DB  00;Dammy
;(CGB)	DB	$98,$E0,$13
;(CGB);38   0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC
;(CGB) DB  00;Dammy
;(CGB)	DB	$98,$C0,$13
;(CGB);39   0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC
;(CGB) DB  00;Dammy
;(CGB);#########################################################
;(CGB)	DB	$98,$A0,$13
;(CGB);3A   0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC
;(CGB) DB  00;Dammy
;(CGB)	DB	$98,$80,$13
;(CGB);3B   0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC
;(CGB) DB  00;Dammy
;(CGB)	DB	$98,$60,$13
;(CGB);3C   0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC
;(CGB) DB  00;Dammy
;(CGB)	DB	$98,$40,$13
;(CGB);3D   0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC
;(CGB) DB  00;Dammy
;(CGB)	DB	$98,$20,$13
;(CGB);3E   0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC
;(CGB) DB  00;Dammy
;(CGB)	DB	$98,$00,$13
;(CGB);3F   0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC
;(CGB) DB  00;Dammy
;(CGB)	DB	$9B,$E0,$13
;(CGB);40   0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC
;(CGB) DB  00;Dammy
;(CGB)	DB	$9B,$C0,$13
;(CGB);41   0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC
;(CGB) DB  00;Dammy
;(CGB)	DB	$9B,$A0,$13
;(CGB);42   0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC
;(CGB) DB  00;Dammy
;(CGB)	DB	$9B,$80,$13
;(CGB);43   0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC
;(CGB) DB  00;Dammy
;(CGB)	DB	$9B,$60,$13
;(CGB);44   0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $3C,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC
;(CGB) DB  00;Dammy
;(CGB)	DB	$9B,$40,$13
;(CGB);45   0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $2C,$2D,$AC,$AC,$AC,$AC,$AC,$AC,$78,$79,$3C,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC
;(CGB) DB  00;Dammy
;(CGB)	DB	$9B,$20,$13
;(CGB);46   0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $AE,$AE,$3D,$3F,$AC,$AC,$AC,$AC,$45,$AE,$2C,$2D,$AC,$AC,$AC,$7B,$3D,$3F,$78,$79
;(CGB) DB  00;Dammy
;(CGB)	DB	$9B,$00,$13
;(CGB);47   0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $AE,$AE,$AE,$3E,$AC,$AC,$AC,$AC,$72,$AE,$AE,$75,$AC,$AC,$7A,$4B,$AE,$3E,$45,$AE
;(CGB) DB  00;Dammy
;(CGB)	DB	$9A,$E0,$13
;(CGB);48   0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $AE,$AE,$AE,$AE,$3D,$3F,$AC,$AC,$56,$73,$74,$67,$AC,$AC,$72,$AE,$AE,$AE,$AE,$AE
;(CGB) DB  00;Dammy
;(CGB)	DB	$9A,$C0,$13
;(CGB);49   0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $AE,$AE,$AE,$AE,$AE,$3E,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$56,$73,$AE,$AE,$AE,$AE
;(CGB) DB  00;Dammy
;(CGB)	DB	$9A,$A0,$13
;(CGB);4A   0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $AE,$AE,$AE,$AE,$AE,$75,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$70,$71,$AE,$AE
;(CGB) DB  00;Dammy
;(CGB)	DB	$9A,$80,$13
;(CGB);4B   0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $AE,$AE,$AE,$AE,$74,$67,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$57,$AE,$AE
;(CGB) DB  00;Dammy
;(CGB)	DB	$9A,$60,$13
;(CGB);4C   0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $72,$AE,$76,$77,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$7B,$AE,$AE
;(CGB) DB  00;Dammy
;(CGB)	DB	$9A,$40,$13
;(CGB);4D   0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $56,$73,$66,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$7A,$4B,$AE,$AE
;(CGB) DB  00;Dammy
;(CGB)	DB	$9A,$20,$13
;(CGB);4E   0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $AC,$AC,$AC,$7B,$3D,$3F,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$72,$AE,$AE,$AE
;(CGB) DB  00;Dammy
;(CGB)	DB	$9A,$00,$13
;(CGB);4F   0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $AC,$AC,$7A,$4B,$AE,$3E,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$56,$73,$AE,$AE
;(CGB) DB  00;Dammy
;(CGB)	DB	$99,$E0,$13
;(CGB);50   0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $AC,$AC,$72,$AE,$AE,$75,$AC,$AC,$FE,$FF,$05,$0B,$AC,$AC,$AC,$AC,$AC,$AC,$70,$71
;(CGB) DB  00;Dammy
;(CGB)	DB	$99,$C0,$13
;(CGB);51   0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $AC,$AC,$56,$73,$74,$67,$AC,$AC,$F8,$FA,$FC,$FD,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$57
;(CGB) DB  00;Dammy
;(CGB)	DB	$99,$A0,$13
;(CGB);52   0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$A2,$A3,$BF,$F0,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC
;(CGB) DB  00;Dammy
;(CGB)	DB	$99,$80,$13
;(CGB);53   0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$84,$85,$9D,$9F,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC
;(CGB) DB  00;Dammy
;(CGB)	DB	$99,$60,$13
;(CGB);54   0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC
;(CGB) DB  00;Dammy
;(CGB)	DB	$99,$40,$13
;(CGB);55   0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC
;(CGB) DB  00;Dammy
;(CGB)	DB	$99,$20,$13
;(CGB);56   0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $3C,$AC,$78,$79,$3C,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$7B,$3D,$3F,$AC,$AC
;(CGB) DB  00;Dammy
;(CGB)	DB	$99,$00,$13
;(CGB);57   0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $2C,$2D,$45,$AE,$2C,$2D,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$AC,$7A,$4B,$AE,$3E,$AC,$AC
;(CGB) DB  00;Dammy
;(CGB)	DB	$98,$E0,$13
;(CGB);58   0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $AE,$AE,$AE,$AE,$AE,$75,$AC,$AC,$AC,$AC,$AC,$AC,$78,$79,$AE,$AE,$AE,$AE,$3C,$AC
;(CGB) DB  00;Dammy
;(CGB)	DB	$98,$C0,$13
;(CGB);59   0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $AE,$AE,$AE,$AE,$74,$67,$AC,$AC,$AC,$AC,$AC,$AC,$45,$AE,$AE,$AE,$AE,$AE,$2C,$2D
;(CGB) DB  00;Dammy
;(CGB)
;(CGB);-----------------------------------------------------------
;(CGB);	雲（太陽のところ）アトリビュートデータ
;(CGB);-----------------------------------------------------------
;(CGB)ED8DATA_ATR
;(CGB);;    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F  10	 11  12	 13
;(CGB) DB $00,$00,$00,$00,$00,$00,$00,$00,$07,$07,$07,$07,$00,$00,$00,$00,$00,$00,$00,$00
;(CGB) DB 00 ;DAMMY
;(CGB)ED8DATA_END
;(CGB)ED8DATA_CNT	EQU	(ED8DATA_END-ED8DATA_ATR)
;--------------------------------------------------------------------
ED8SPD
;0    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F
 DB $02,$04,$06,$08,$0A,$0C,$0E,$10,$12,$14,$16,$18,$1A,$1C,$1E,$20
;1    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F
 DB $22,$24,$26,$28,$28,$28,$28,$28,$28,$28,$28,$28,$28,$28,$28,$28
;2    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F
 DB $28,$28,$28,$28,$28,$28,$28,$28,$28,$28,$28,$28,$28,$28,$28,$28
;3    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F
 DB $28,$28,$28,$27,$26,$25,$24,$23,$22,$21,$20,$1F,$1E,$1D,$1C,$1B
;4    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F
 DB $1A,$19,$18,$17,$16,$15,$14,$13,$12,$11,$10,$0F,$0E,$0D,$0C,$0B
;5    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F
 DB $0A,$09,$08,$07,$06,$05,$04,$04,$04,$04,$04,$04,$00,$00,$00,$00
;--------------------------------------------------------------------
ED8CLD
;0    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F
 DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
;1    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F
 DB $00,$00,$00,$00,$00,$00,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
;2    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F
 DB $02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$03,$03,$03,$03,$03,$03
;3    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F
 DB $03,$03,$03,$03,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04
;4    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F
 DB $04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04
;5    0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F
 DB $04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04
;--------------------------------------------------------------------
ED8BGP
;0
	DB	%00011110
	DB	%00011110
	DB	%00011110
	DB	%00011110
;4
	DB	%00011111
	DB	%00011111
	DB	%00011111
	DB	%00011111
;8
	DB	%00011010
	DB	%00011010
	DB	%00011010
	DB	%00011010
;C
	DB	%00010101
	DB	%00010101
	DB	%00010101
	DB	%00010101
;10
	DB	%00010000
	DB	%00010000
	DB	%00010000
	DB	%00010000
;14
	DB	%00010000
	DB	%00010000
	DB	%00010000
	DB	%00010000
;18
	DB	%00010000
	DB	%00010000
	DB	%00010000
	DB	%00010000
;1C
	DB	%00010101
	DB	%00010101
	DB	%00010101
	DB	%00010101
;20
	DB	%00011001
	DB	%00011001
	DB	%00011010
	DB	%00011010
;24
	DB	%00011110
	DB	%00011110
	DB	%00011110
	DB	%00011110
;--------------------------------------------------------------------
ED8000
	LD	A,(EDCNT3)
	CP	$0E
	JR	NC,ED8005
;
	LD	DE,$9960
	CALL	NAMIVS
ED8005
	LD	A,(EDCNT3)
	LD	E,A
	LD	D,$00
	LD	HL,ED8CLD
	ADD	HL,DE
	LD	A,(HL)
	LD	(EDCNT2),A	;ぬきカラーダウン！
;
	LD	A,(FRCNT)
	AND	$03
	LD	E,A
	LD	A,(EDCNT2)
	ADD	A,E
	LD	E,A
	LD	D,$00
	LD	HL,ED8BGP
	ADD	HL,DE
	LD	A,(HL)
	LD	(BGPFG),A
;
	LD	A,(EDCNT3)
	LD	E,A
	LD	D,$00
;
	CP	$59
	JR	NZ,ED8010
;
	LD	A,(SCCV)
	CP	$30
	JR	NZ,ED8010
;
	LD	A,$FF
	LD	(EDTIM2),A
;
	LD	A,$A8
	LD	(EDTIM3),A
;
	JP	EDINC
;
ED8010
	LD	HL,ED8SPD
	ADD	HL,DE
	LD	A,(HL)
	CPL
	INC	A
	SLA	A
	LD	(ENXSPD),A
;
	LD	BC,$00
	LD	A,(ENXPSL)
	PUSH	AF
	CALL	EDXCLC
;
	LD	A,(ENXPSL)
	LD	(SCCV),A
	AND	$F8
	LD	E,A
	POP	AF
	AND	$F8
	CP	E
;(CGB)	JR	Z,ED8090
		RET	Z
;
	LD	A,(EDCNT3)
	CP	$59
;(CGB)	JR	Z,ED8090
		RET	Z
	INC	A
	LD	(EDCNT3),A
;
		LD	A,(CGBFLG)
		AND	A
		JR	Z,ED8010_100

		CALL	KUMO_FADE7	; 雲フェード
ED8010_100
		LD	A,(EDCNT3)

	CP	$44
	JR	NZ,ED8020
;
	LD	A,%11100011
	LD	(OBP1FG),A
;
	LD	A,EDAI
	CALL	ENIDSHL	;くじらセット
;
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),$50
;
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),$80
;
	LD	HL,ENWRK0
	ADD	HL,DE
	LD	(HL),$0B
;
	LD	HL,ENTIM0
	ADD	HL,DE
KUJTM
	LD	(HL),$A8
ED8020
;	LD	A,(KEYA2)
;	AND	%00110000
;	JR	Z,ED80010
;;
;	LD	HL,EDCNT3
;	INC	(HL)
;;
;	LD	A,(SCCV)
;	SUB	$08
;	LD	(SCCV),A
;
ED80010
;;;;;;;		CALL	ED8000_call	; 雲スクロール

		LD	HL,CallBank
		LD	A,:ED8000_sub
		LD	(HLI),A
		LD	A,>ED8000_sub
		LD	(HLI),A
		LD	A,<ED8000_sub
		LD	(HLI),A
		LD	A,:ED8000
		LD	(HL),A
		JP	JSL_CALL


;(CGB)	LD	A,(EDCNT3)
;(CGB)	LD	E,A
;(CGB)	LD	D,$00
;(CGB)	SLA	E
;(CGB)	RL	D
;(CGB)	SLA	E
;(CGB)	RL	D
;(CGB)	SLA	E
;(CGB)	RL	D
;(CGB)	LD	A,E
;(CGB)	LD	L,D
;(CGB);
;(CGB)	SLA	E
;(CGB)	RL	D
;(CGB)	ADD	A,E	; x $18
;(CGB)	LD	E,A
;(CGB);
;(CGB)	LD	A,D
;(CGB)	ADC	A,$00
;(CGB)	ADD	A,L
;(CGB)	LD	D,A
;(CGB);
;(CGB)	LD	HL,ED8DATA
;(CGB)	ADD	HL,DE
;(CGB)
;(CGB)		PUSH	HL	; DE じゃないよ
;(CGB);
;(CGB)	LD	DE,VRAMD+1
;(CGB);
;(CGB)	LD	C,$18
;(CGB)ED8070
;(CGB)	LD	A,(HLI)
;(CGB)	LD	(DE),A
;(CGB)	INC	DE
;(CGB);
;(CGB)	DEC	C
;(CGB)	JR	NZ,ED8070
;(CGB)
;(CGB);-----------------------------------------------------------
;(CGB);	雲 アトリビュートセット
;(CGB);-----------------------------------------------------------
;(CGB)		POP	HL
;(CGB)
;(CGB)		LD	A,(CGBFLG)
;(CGB)		AND	A
;(CGB)		RET	Z
;(CGB)
;(CGB)		LD	DE,VRAMD_AT+1
;(CGB)
;(CGB)		LD	A,(EDCNT3)
;(CGB)		CP	$50		; 太陽セット？
;(CGB)		JR	Z,ED8080	;
;(CGB)		CP	$51		;
;(CGB)		JR	Z,ED8080	;
;(CGB)		CP	$52		;
;(CGB)		JR	Z,ED8080	;
;(CGB)		CP	$53		;
;(CGB)		JR	Z,ED8080	;
;(CGB)
;(CGB)		LD	A,(HLI)
;(CGB)		LD	(DE),A
;(CGB)		INC	DE
;(CGB)		LD	A,(HLI)
;(CGB)		LD	(DE),A
;(CGB)		INC	DE
;(CGB)		LD	A,%01000000 | $14-1	; 横、共通、０ＥＨ
;(CGB)		LD	(DE),A
;(CGB)		INC	DE
;(CGB) 		XOR	A
;(CGB)		LD	(DE),A		; アトリビュート０
;(CGB)		INC	DE
;(CGB)		LD	(DE),A		; エンドコード
;(CGB)
;(CGB)		RET
;(CGB)
;(CGB);-----------------------------------------------------------
;(CGB);	太陽のところ アトリビュートセット
;(CGB);-----------------------------------------------------------
;(CGB)ED8080
;(CGB)		LD	A,(HLI)
;(CGB)		LD	(DE),A
;(CGB)		INC	DE
;(CGB)		LD	A,(HLI)
;(CGB)		LD	(DE),A
;(CGB)		INC	DE
;(CGB)		LD	A,$14-1		; 横、１４Ｈ個
;(CGB)		LD	(DE),A
;(CGB)		INC	DE
;(CGB)
;(CGB)		LD	HL,ED8DATA_ATR
;(CGB)		LD	C,ED8DATA_CNT
;(CGB)ED8081
;(CGB)		LD	A,(HLI)
;(CGB)		LD	(DE),A
;(CGB)		INC	DE
;(CGB)		DEC	C
;(CGB)		JR	NZ,ED8081
;(CGB)
;(CGB)ED8090
;(CGB)	RET
;------------------------------------------------------
KUMO_FADE7
		LD	HL,CallBank
		LD	A,:KUMO_FADE7_sub
		LD	(HLI),A
		LD	A,>KUMO_FADE7_sub
		LD	(HLI),A
		LD	A,<KUMO_FADE7_sub
		LD	(HLI),A
		LD	A,:KUMO_FADE7
		LD	(HL),A
		JP	JSL_CALL
;------------------------------------------------------
ED9000
	LD	A,(EDTIM3)
	AND	A
	JR	NZ,ED9010
;
	XOR	A
	LD	(BGPFG),A
;
		LD	A,:ED9000	; 戻りバンク
		CALL	AllWhiteSetSub	; オールホワイト
;
	JP	ENDNXT
ED9010
	LD	A,(FRCNT)
	AND	$03
	LD	E,A
	LD	A,(EDCNT2)
	ADD	A,E
	LD	E,A
	LD	D,$00
	LD	HL,ED8BGP
	ADD	HL,DE
	LD	A,(HL)
	LD	(BGPFG),A
;
;	LD	A,(KEYA2)
;	AND	$30
;	JR	Z,ED9020
;;
;	XOR	A
;	LD	(ENXPSL),A
;	LD	(ENXSPD),A
;	LD	(ENXSDR),A
;	LD	(ENMODE+$0A),A
;	LD	(ENMODE+$0B),A
;	LD	(ENMODE+$0C),A
;	LD	(ENMODE+$0D),A
;	LD	(ENMODE+$0E),A
;	LD	(ENMODE+$0F),A
;;
;	CALL	ENDDST
;;
;	LD	HL,ITMODE
;	LD	(HL),ENDDS
;ED9020
;	LD	A,(ENYPSL+$0F)
;	CP	$4C
;	JR	NC,ED9030
	LD	A,(EDTIM2)
	AND	A
	JR	NZ,ED9030
;
	LD	A,(EDCNT1)
	INC	A
	LD	(EDCNT1),A
;;	LD	A,(FRCNT)
	AND	$07
;;	AND	$1F
	JR	NZ,ED9030
;
	LD	A,(EDCNT2)
	CP	$24
;;;	CP	$08
	JR	Z,ED9030

		LD	A,(CGBFLG)
		AND	A
		JR	Z,ED9010_100

		CALL	KUMO_BRIGHT7	; 雲明るくなる
ED9010_100
		LD	A,(EDCNT2)

	INC	A
	LD	(EDCNT2),A	;ぬきアップ！
	CP	$05
	JR	NZ,ED9030
;
	LD	A,%00011110
	LD	(OBP0FG),A
;
	LD	A,EDAI
	CALL	ENIDSHL	;光セット！
;
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),$60+2
;
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),$58+2
;
	LD	HL,ENWRK0
	ADD	HL,DE
	LD	(HL),$0C
;
	LD	HL,ENTIM0
	ADD	HL,DE
	LD	(HL),$60
ED9030
	RET
;------------------------------------------------------
KUMO_BRIGHT7
		LD	HL,CallBank
		LD	A,:KUMO_BRIGHT7_sub
		LD	(HLI),A
		LD	A,>KUMO_BRIGHT7_sub
		LD	(HLI),A
		LD	A,<KUMO_BRIGHT7_sub
		LD	(HLI),A
		LD	A,:KUMO_BRIGHT7
		LD	(HL),A
		JP	JSL_CALL

;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	E					  %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;-------------------------------------
ENDE
	CALL	ENEMYL
;
	LD	A,(EDMODE)
	RST	00
	DW	EE1000
	DW	EE2000
	DW	EE3000
	DW	EE4000
	DW	EE5000
	DW	EE6000
	DW	EE7000
;-------------------------------------
EE1000
	LD	A,ECHE
	LD	(BLNKFG),A
;
;-------------------------------------------------------------
		XOR	A		; フェードインフラグＯＦＦ
		LD	(FADEMDFG),A
		DEC	A
		LD	(LINKFADE),A	; りんくフェードカウント
;-------------------------------------------------------------
;
	JP	EDINC
;-------------------------------------
EE2000
	LD	A,EBGE
	LD	(VRFLG),A
;
	CALL	ERCLER
	LD	A,%00011110
	LD	(BGPFG),A
	LD	A,%01101110
	LD	(OBP0FG),A
;
	LD	A,EDAI	;リンクセット
	CALL	ENIDSHL
;
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),$38
;
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),$50
;
	LD	HL,ENWRK0
	ADD	HL,DE
	LD	(HL),$0D
;
	LD	A,$20
	LD	(EDTIM0),A
	JP	EDINC
;-------------------------------------
EE3000
	LD	A,(EDTIM0)
	AND	A
	JR	NZ,EE3008
;
	CALL	EDINC
EE3008
;----------------------------------------
EESCST
	LD	A,(FRCNT)
	AND	$03
	JR	NZ,EE3020
;
	LD	A,(EDCNT4)
	INC	A
	CP	$31
	JR	NZ,EE3010
	XOR	A
EE3010
	LD	(EDCNT4),A
EE3020
	LD	A,(EDCNT4)
	LD	E,A
	LD	D,B
	LD	HL,DLINKYD
	ADD	HL,DE
	LD	A,(HL)
	SRA	A
	LD	(SCCV),A
	RET
;--------------------------------------
EEOBCL
	DB	%01101110
	DB	%01101110
	DB	%01101110
	DB	%01101110
	DB	%00011110
	DB	%00011110
	DB	%00011110
	DB	%00011110
;
EE4000
	CALL	EESCST
;
	LD	A,(FRCNT)
	AND	$07
	JR	NZ,EE4010
;
	LD	A,(EDCNT0)
	INC	A
	LD	(EDCNT0),A
	CP	$04
	JR	NZ,EE4010
;
	LD	A,$FF
	LD	(EDTIM0),A
;
	JP	EDINC
EE4010
		LD	A,(CGBFLG)
		AND	A
		JR	NZ,LINK_FADE8	; りんくフェード

	LD	A,(FRCNT)
	AND	$03
	LD	E,A
	LD	A,(EDCNT0)
	ADD	A,E
	LD	E,A
	LD	D,$00
	LD	HL,EEOBCL
	ADD	HL,DE
	LD	A,(HL)
	LD	(OBP0FG),A
	RET
;=====================================
LINK_FADE8
		LD	HL,CallBank
		LD	A,:LINK_FADE8_sub
		LD	(HLI),A
		LD	A,>LINK_FADE8_sub
		LD	(HLI),A
		LD	A,<LINK_FADE8_sub
		LD	(HLI),A
		LD	A,:LINK_FADE8
		LD	(HL),A
		JP	JSL_CALL
;=====================================
EE5000
	CALL	EESCST
;
		LD	A,(CGBFLG)
		AND	A
		JR	Z,EE5000_100

		CALL	LINK_FADE8	; りんくフェード
EE5000_100

	LD	A,(EDTIM0)
	AND	A
	JR	NZ,EE5010
;
;	LD	A,(KEYA2)
;	AND	$30
;	JR	Z,EE5008
;;
;	XOR	A
;	LD	(EDMODE),A
;	LD	(ENMODE+$0F),A
;------------------------------------------
ETIM1
	LD	A,$E0
	LD	(EDTIM0),A
;
	JP	EDINC
;	CALL	ENDNXT
EE5008
	RET
EE5010
	CP	$44
	JR	Z,EE5018
	CP	$50
	JR	NZ,EE5020
EE5018
	LD	HL,EDWRK3
	INC	(HL)
EE5020
	RET
;=======================================
EE6000
	CALL	EESCST
;
	LD	HL,EDTIM0
	LD	A,(FRCNT)
	AND	$07
	OR	(HL)
;(CGB)	JR	NZ,EE6010
		JR	NZ,EE6010_100
;
	LD	A,(EDWRK2)
	INC	A
	LD	(EDWRK2),A
	CP	$0C
	JR	NZ,EE6010
;
	LD	A,$40
	LD	(EDTIM0),A
;
	CALL	EDINC
EE6010
		LD	A,(CGBFLG)
		AND	A
		JR	Z,EE6010_100

		LD	A,(EDWRK2)
		DEC	A
		JP	END_FADEOUT	; フェードアウト
EE6010_100
	LD	A,(FRCNT)
	AND	$03
	LD	E,A
	LD	A,(EDWRK2)
	ADD	A,E
	LD	E,A
	LD	D,$00
	LD	HL,EBBGC
	ADD	HL,DE
	LD	A,(HL)
	LD	(BGPFG),A
	LD	HL,EBO0C
	ADD	HL,DE
	LD	A,(HL)
	LD	(OBP0FG),A
	LD	HL,EBO1C
	ADD	HL,DE
	LD	A,(HL)
	LD	(OBP1FG),A
	RET
;=======================================
EE7000
	LD	A,(EDTIM0)
	AND	A
	JR	NZ,EE7010
;
	JP	ENDNXT
EE7010
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	F					  %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;-------------------------------------
ENDF
	LD	DE,$99A0
	CALL	NAMIVS
;
	CALL	STAFFST

		LD	A,(ITMODE)
		CP	END10S	; エンディング１０行く？
		RET	Z	; ＹＥＳ
;
	CALL	ENEMYL
;
	LD	A,(EDMODE)
	RST	00
	DW	EF0000
	DW	EF1000
	DW	EF2000
	DW	EF3000
	DW	EF4000
	DW	EF5000
;-------------------------------------
EF0000
	LD	A,ECHF
	LD	(BLNKFG),A
;
;-------------------------------------------------------------
		LD	A,$001		; フェードインフラグＯＮ
		LD	(FADEMDFG),A
;-------------------------------------------------------------
;
	LD	HL,LCDCB
	RES	2,(HL)	; OBJ 8x8 mode
;
	JP	EDINC
;-------------------------------------
EF1000
	LD	A,EBGF
	LD	(VRFLG),A
;
	CALL	ERCLER
;
	LD	A,EDAI	;リンクセット
	CALL	ENIDSHL
;
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),$50
;
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),$78
;
	LD	HL,ENWRK0
	ADD	HL,DE
	LD	(HL),$0E
;
	XOR	A
;;;	LD	(EDWRK5),A
	LD	(STMODE),A
	DEC	A	;FF
	LD	(STWRK0),A
;
ETIM2
	LD	A,$40+$60+$10
	LD	(EDTIM3),A	;スタッフロール始まり待ち！
;;;;;	LD	(EDTIM1),A	;スタッフロール始まり待ち！
;
	XOR	A
	LD	(FRCNT),A
;;;	LD	(OBP0FG),A
	LD	(OBP1FG),A
	JP	EDINC
;-------------------------------------
EFBGC
EIBGC2
	DB	%00000000
	DB	%00000000
	DB	%00000000
	DB	%00000000
	DB	%00000100
	DB	%00000100
	DB	%00000100
	DB	%00000100
	DB	%00011001
	DB	%00011001
	DB	%00011001
	DB	%00011001
	DB	%00011110
	DB	%00011110
	DB	%00011110
	DB	%00011110
;- - - - - - - - - - - - - - -
EF2000
	LD	A,(FRCNT)
	AND	$07
;(CGB)	JR	NZ,EF2010
		JR	NZ,EF2010_100
;
	LD	A,(EDWRK2)
	INC	A
	LD	(EDWRK2),A
	CP	$0C
	JR	NZ,EF2010
;
;;	LD	A,$C0
;;	LD	(EDTIM0),A
;
ETIM3
	LD	A,$FF
	LD	(EDTIM4),A
	XOR	A
	LD	(FRCNT),A
;
	CALL	EDINC
EF2010
		LD	A,(CGBFLG)
		AND	A
		JR	Z,EF2010_100

		LD	A,(EDWRK2)
		DEC	A
		JP	END_FADEIN	; フェードイン
EF2010_100
	LD	A,(FRCNT)
	AND	$03
	LD	E,A
	LD	A,(EDWRK2)
	ADD	A,E
	LD	E,A
	LD	D,$00
	LD	HL,EFBGC
	ADD	HL,DE
	LD	A,(HL)
	LD	(BGPFG),A
;;;;	LD	(OBP1FG),A
	LD	(OBP0FG),A
	RET
;-------------------------------------
EF3000
	LD	A,(EDTIM4)
	AND	A
	JR	NZ,EF3090
;
	LD	A,(FRCNT)
	AND	$07
	JR	NZ,EF3090
;
	LD	HL,SCCV
	DEC	(HL)
;
;;	LD	A,(EDTIM3)
;;	AND	A
;;	JR	NZ,EF3030
;
	LD	A,(HL)
	CP	$70
	JR	NZ,EF3030
;
;;;	CALL	ERCLER
	JP	EDINC
EF3030
	CP	$A0
	JR	NZ,EF3050
;
	LD	HL,ENMODE+$0F	;リンク消す！
	LD	(HL),$00
;
	JP	EFBGRV
EF3050
	CP	$C0
	JR	NZ,EF3090
;
;	LD	HL,LCDCB
;	RES	2,(HL)	; OBJ 8x8 mode
;
	LD	A,EDAI	;鯨せっと!
	CALL	ENIDSHL
;
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),$18
;
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),$B0
;
	LD	HL,ENWRK0
	ADD	HL,DE
	LD	(HL),$0F
EF3090
	RET
;-------------------------------------
EF4000	;くじら消え待ち！
;	XOR	A
;;;;	LD	(EDWRK5),A
;	LD	(STMODE),A
;	DEC	A	;FF
;	LD	(STWRK0),A
	RET
;-------------------------------------
EF5000
;;	CALL	STAFFST
	RET
;========================================
EFBGDT
EFB0
	DB	$99,$C1,$05
	DB	$58,$59,$5A,$5B,$5C,$5D
	DB	$99,$E1,$05
	DB	$68,$69,$6A,$6B,$6C,$6D
;
	DB	$99,$F1,$02
	DB	$58,$59,$5A
	DB	$9A,$11,$02
	DB	$68,$69,$6A
;
	DB	$9A,$20,$01
	DB	$5C,$5D
	DB	$00
EFB1
;-----------------------------------------------------
;	雲 アトリビュートデータ
;-----------------------------------------------------
EFBGDT_ATR
EFB0_ATR
	DB	$99,$c0,$53,$00
	DB	$99,$e0,$53,$00
	DB	$9a,$00,$53,$00
	DB	$9a,$20,$53,$00
	DB	$00
EFB1_ATR
;-----------------------------------------------------
EFBGRV
	LD	HL,EFBGDT
	LD	DE,VRAMD+1
;
	LD	C,EFB1-EFB0
EFBR10
	LD	A,(HLI)
	LD	(DE),A
	INC	DE
;
	DEC	C
	JR	NZ,EFBR10
;
;-----------------------------------------------------------
;	雲 アトリビュートセット
;-----------------------------------------------------------
		LD	A,(CGBFLG)
		AND	A
		RET	Z

		LD	HL,EFBGDT_ATR
		LD	DE,VRAMD_AT+1
;
		LD	C,EFB1_ATR-EFB0_ATR
EFBR20
		LD	A,(HLI)
		LD	(DE),A
		INC	DE
;
		DEC	C
		JR	NZ,EFBR20
;
	RET

;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	エンディング１０（ＣＧＢ専用）		  %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
END10
		LD	A,(EDMODE)
		RST	00
		DW	END10_0000	; ( 0 ) "THE END" 表示待ち
		DW	END10_1000	; ( 1 ) "THE END"表示中
		DW	END10_2000	; ( 2 ) かもめまりん
		DW	END10_3000	; ( 3 ) フェードアウト
		DW	END10_4000	; ( 4 ) メッセージＣＨＲ転送
		DW	END10_5000	; ( 5 ) メッセージＳＣＲ転送
		DW	END10_6000	; ( 6 ) メッセージ表示

;--------------------------------------------------------
;-	"THE END" 表示待ち				-
;--------------------------------------------------------
END10_0000
		LD	A,(EDTIM5)
		AND	A		; "THE END" 表示待ち？
		RET	NZ		; ＹＥＳ

		LD	HL,CGWORK+0046H	; 文字カラーセット
		LD	A,<$7fff
		LD	(HLI),A
		LD	A,>$7fff
		LD	(HL),A

		LD	A,3
		LD	(COLOFS),A	; 転送オフセット
		LD	A,1
		LD	(COLLNG),A	; 転送長さ
		LD	A,OBJCOL_BITFG|$80
		LD	(CGDMAF),A	; 転送フラグ（部分転送）

		LD	A,60*3		; 約３秒
		LD	(EDTIM0),A	; "THE END"表示タイマー
		JP	EDINC

;--------------------------------------------------------
;-	"THE END"表示中					-
;--------------------------------------------------------
END10_1000
		CALL	STDSP1
		CALL	STDSP2

		LD	HL,DETHCT
		LD	A,(HLI)
		OR	(HL)		; １回でも死んだ？
		RET	NZ		; ＹＥＳ（永久ループ）

; ノーミスクリア
		LD	A,(EDTIM0)
		AND	A		; "THE END"表示中？
		RET	NZ		; ＹＥＳ

		LD	A,7
		LD	(SLEVEL),A
		SWAP	A
		LD	(SLEVEL2),A
;;;;;;		LD	A,$77
;;;;;;		LD	($FF24),A
		LD	A,60*3		; 約３秒
		LD	(EDTIM0),A	; まりん表示待ちタイマー
		JP	EDINC

;--------------------------------------------------------
;-	かもめまりん					-
;--------------------------------------------------------
END10_2000
		LD	A,(EDTIM0)
		AND	A		; まりん表示待ち？
		RET	NZ		; ＹＥＳ

		CALL	ENEMYL
		RET

;--------------------------------------------------------
;-	フェードアウト					-
;--------------------------------------------------------
END10_3000
;;;;;;;		LD	A,(EDTIM0)
;;;;;;;		AND	A		; フェードアウト待ち？
;;;;;;;		RET	NZ		; ＹＥＳ
;
		LD	A,(FRCNT)
		AND	%00000111
		RET	NZ

		CALL	BLACK_FADEOUT

		LD	A,(EDFADE)
		INC	A
		LD	(EDFADE),A
		CP	$10		; フェード終了？
		JP	Z,EDINC		; ＹＥＳ
		RET

;--------------------------------------------------------
;-	メッセージＣＨＲ、ＣＯＬ転送			-
;--------------------------------------------------------
END10_4000
		LD	A,ENDMS
		LD	(BLNKFG),A

		LD	HL,CGWORK+8	; 文字カラーセット
		LD	A,<$47ff
		LD	(HLI),A
		LD	A,>$47ff
		LD	(HL),A

		LD	A,4
		LD	(COLOFS),A	; 転送オフセット
		LD	A,1
		LD	(COLLNG),A	; 転送長さ
		LD	A,BGCOL_BITFG|$80
		LD	(CGDMAF),A	; 転送フラグ（部分転送）

		LD	A,$fa
		LD	(SCCH),A	; Ｈスクロールセット
		XOR	A
		LD	(SCCV),A	; Ｖスクロールクリア

		JP	EDINC

;--------------------------------------------------------
;-	メッセージＳＣＲ転送				-
;--------------------------------------------------------
; ＜ キャラクターデータ ＞
ENDMES_CHR
		DB	$98,$a2,$0e
		DB		$01,$02,$03,$00,$04,$05,$06,$07
		DB		$08,$09,$0a,$0b,$0c,$0d,$0e
		DB	$98,$e2,$0e
		DB		$0e,$10,$11,$12,$00,$13,$14,$15
		DB		$16,$17,$00,$18,$19,$1a,$1b
		DB	$99,$22,$0b
		DB		$1c,$1d,$00,$1e,$1f,$20,$21,$22
		DB		$00,$23,$24,$25
		DB	$99,$62,$0b
		DB		$26,$27,$28,$00,$29,$2a,$2b,$2c
		DB		$2d,$2e,$2f,$0f
		DB	00
ENDMES_CHEND
ENDMES_CHCNT	EQU	(ENDMES_CHEND-ENDMES_CHR)

; ＜ アトリビュートデータ ＞
ENDMES_ATR
		DB	$98,$a2,$4e,$01
		DB	$98,$e2,$4e,$01
		DB	$99,$22,$4b,$01
		DB	$99,$62,$4b,$01
		DB	00
ENDMES_ATEND
ENDMES_ATCNT	EQU	(ENDMES_ATEND-ENDMES_ATR)
;========================================================

END10_5000
;-----<	キャラクターセット >--------------------------------
		LD	HL,ENDMES_CHR
		LD	DE,VRAMD+1
;
		LD	C,ENDMES_CHCNT
END10_5100
		LD	A,(HLI)
		LD	(DE),A
		INC	DE
		DEC	C
		JR	NZ,END10_5100

;-----<	アトリビュートセット >------------------------------
		LD	HL,ENDMES_ATR
		LD	DE,VRAMD_AT+1
;
		LD	C,ENDMES_ATCNT
END10_5200
		LD	A,(HLI)
		LD	(DE),A
		INC	DE
		DEC	C
		JR	NZ,END10_5200

		JP	EDINC

;--------------------------------------------------------
;-	メッセージ表示					-
;--------------------------------------------------------
END10_6000
		RET

;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	F くじら		 %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
FKUJIRACD
;0
	DB	$08,$00,$5C,$00
	DB	$10,$00,$5D,$00
	DB	$00,$08,$C0,$00
	DB	$08,$08,$C1,$00
	DB	$00,$10,$CE,$00
	DB	$08,$10,$CF,$00
	DB	$00,$18,$DE,$00
	DB	$08,$18,$DF,$00
	DB	$00,$20,$EA,$00
	DB	$08,$20,$EB,$00
;1
	DB	$08,$00,$5E,$00
	DB	$10,$00,$5F,$00
	DB	$00,$08,$C0,$00
	DB	$08,$08,$C1,$00
	DB	$00,$10,$CE,$00
	DB	$08,$10,$CF,$00
	DB	$00,$18,$DE,$00
	DB	$08,$18,$DF,$00
	DB	$00,$20,$EA,$00
	DB	$08,$20,$EB,$00
;2
	DB	$08,$00,$EC,$00
	DB	$10,$00,$ED,$00
	DB	$00,$08,$D0,$00
	DB	$08,$08,$D1,$00
	DB	$00,$10,$CE,$00
	DB	$08,$10,$CF,$00
	DB	$00,$18,$DE,$00
	DB	$08,$18,$DF,$00
	DB	$00,$20,$EA,$00
	DB	$08,$20,$EB,$00
;3
	DB	$08,$00,$EE,$00
	DB	$10,$00,$EF,$00
	DB	$00,$08,$D0,$00
	DB	$08,$08,$D1,$00
	DB	$00,$10,$CE,$00
	DB	$08,$10,$CF,$00
	DB	$00,$18,$DE,$00
	DB	$08,$18,$DF,$00
	DB	$00,$20,$EA,$00
	DB	$08,$20,$EB,$00
;- - - - - - - - - - - - - - - - - - - -
FKUJIRA
	LD	A,108-$30
	LD	(ENOMID),A
;
	LD	A,(SCCV)
	LD	E,A
	LD	A,(ENDSYP)
	SUB	E
	LD	(ENDSYP),A
;
		LD	A,(CGBFLG)
		AND	A
		JR	Z,FKUJIRA_100

		CALL	FKUJIRA_CGB
		JR	FKUJIRA_200
FKUJIRA_100
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	RRA
	RRA
	AND	$03
	RLA
	RLA
;
	RLA
	AND	%11111000
	LD	E,A
	RLA
	RLA
	AND	%11100000
	ADD	A,E
	LD	E,A
	LD	D,B
	LD	HL,FKUJIRACD
	ADD	HL,DE
	LD	C,10
	CALL	ENOMST2
;
	LD	A,10
	CALL	NXOMSBL
;
FKUJIRA_200
	LD	A,(FRCNT)
	AND	$01
	JR	NZ,FKU100
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),$04
;
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),$FF
;
	CALL	EDMVCL
;
	LD	A,(ENSVXL)
	CP	$A8
	RET	C
;
	CALL	EDINC
;
;	LD	HL,LCDCB
;	RES	2,(HL)	; OBJ 8x8 mode
;
;	XOR	A
;	LD	(OBP0FG),A
;	LD	(OBP1FG),A
;
	JP	EDCLER
FKU100
	RET

;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	F くじら（ ＣＧＢ ）	 %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
FKUJIRA_CGB
		LD	HL,CallBank
		LD	A,:FKUJIRA_CGB_sub
		LD	(HLI),A
		LD	A,>FKUJIRA_CGB_sub
		LD	(HLI),A
		LD	A,<FKUJIRA_CGB_sub
		LD	(HLI),A
		LD	A,:FKUJIRA_CGB
		LD	(HL),A
		JP	JSL_CALL


;- - - - - - - - - - - - - - - - - - - -
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	F かもめまりん		 %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
FMARINCD
;0
	DB	$00,$00,$00,$00
	DB	$08,$00,$01,$00
	DB	$00,$08,$02,$00
	DB	$08,$08,$03,$00
;
	DB	$00,$FA,$10,$00
	DB	$08,$FA,$11,$00
;
	DB	$00,$0E,$10,$20
	DB	$08,$0E,$11,$20
;1
	DB	$00,$00,$00,$00
	DB	$08,$00,$01,$00
	DB	$00,$08,$02,$00
	DB	$08,$08,$03,$00
;
	DB	$08,$FA,$10,$40
	DB	$00,$FA,$11,$40
;
	DB	$08,$0E,$10,$60
	DB	$00,$0E,$11,$60
;2
	DB	$00,$08,$00,$20
	DB	$08,$08,$01,$20
	DB	$00,$00,$02,$20
	DB	$08,$00,$03,$20
;
	DB	$00,$FA,$10,$00
	DB	$08,$FA,$11,$00
;
	DB	$00,$0E,$10,$20
	DB	$08,$0E,$11,$20
;3
	DB	$00,$08,$00,$20
	DB	$08,$08,$01,$20
	DB	$00,$00,$02,$20
	DB	$08,$00,$03,$20
;
	DB	$08,$FA,$10,$40
	DB	$00,$FA,$11,$40
;
	DB	$08,$0E,$10,$60
	DB	$00,$0E,$11,$60
;- - - - - - - - - - - - - - - - - - -
FMARINMV
	LD	HL,DETHCT
	LD	A,(HLI)
	OR	(HL)
	JR	NZ,FMAR100
;;	RET	NZ	;ノーミスクリアー？
;--			;YES !

		LD	A,(CGBFLG)
		AND	A
		JR	NZ,FMARINMV_CGB

	LD	A,$1C
	LD	(OBP0FG),A
;
	LD	A,108-$30
	LD	(ENOMID),A
;
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	AND	$03
	RLA
	RLA
	RLA
	RLA
	RLA
	AND	%11100000
	LD	E,A
	LD	D,B
	LD	HL,FMARINCD
	ADD	HL,DE
	LD	C,08
	CALL	ENOMST2
;
	LD	A,08
	CALL	NXOMSBL
FMAR100
	CALL	EDMVCL
;
	LD	A,(FRCNT)
	AND	$0F
	JR	NZ,FMAR110
;
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	A,(HL)
	CP	$FC
	JR	Z,FMAR110
;
	DEC	(HL)
FMAR110
	LD	A,(ENSVXL)
	CP	$A8
	JP	Z,EDCLER
;
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	INC	A
	LD	(HL),A
	AND	$7F
	JR	NZ,FMAR120
;
	LD	A,$21
	LD	(SOUND1),A	;(S)
FMAR120
	RET

;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	F かもめまりん（ ＣＧＢ ）	 %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
FMARINMV_CGB
		LD	HL,CallBank
		LD	A,:FMARINMV_CGB_sub
		LD	(HLI),A
		LD	(PBANK),A
		LD	A,>FMARINMV_CGB_sub
		LD	(HLI),A
		LD	A,<FMARINMV_CGB_sub
		LD	(HLI),A
		LD	A,:FMARINMV_CGB
		LD	(HL),A
		CALL	JSL_CALL

		LD	A,:FMARINMV_CGB
		LD	(PBANK),A
		RET

;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	F リンク		 %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
FLINKCD
;0
	DB	$00,$00,$4C,$00
	DB	$08,$00,$4D,$00
	DB	$00,$08,$4E,$00
	DB	$08,$08,$4F,$00
	DB	$10,$F8,$60,$00
	DB	$18,$F8,$61,$00
	DB	$10,$00,$62,$00
	DB	$18,$00,$63,$00
	DB	$10,$08,$64,$00
	DB	$18,$08,$65,$00
	DB	$10,$10,$66,$00
	DB	$18,$10,$67,$00
;1
	DB	$00,$00,$4C,$00
	DB	$08,$00,$4D,$00
	DB	$00,$08,$4E,$00
	DB	$08,$08,$4F,$00
	DB	$10,$F8,$68,$00
	DB	$18,$F8,$69,$00
	DB	$10,$00,$6A,$00
	DB	$18,$00,$6B,$00
	DB	$10,$08,$6C,$00
	DB	$18,$08,$6D,$00
	DB	$10,$10,$6E,$00
	DB	$18,$10,$6F,$00
;2
	DB	$00,$00,$4C,$00
	DB	$08,$00,$4D,$00
	DB	$00,$08,$4E,$00
	DB	$08,$08,$4F,$00
	DB	$10,$F8,$70,$00
	DB	$18,$F8,$71,$00
	DB	$10,$00,$72,$00
	DB	$18,$00,$73,$00
	DB	$10,$08,$74,$00
	DB	$18,$08,$75,$00
	DB	$10,$10,$76,$00
	DB	$18,$10,$77,$00
;3
	DB	$00,$00,$4C,$00
	DB	$08,$00,$4D,$00
	DB	$00,$08,$4E,$00
	DB	$08,$08,$4F,$00
	DB	$10,$F8,$78,$00
	DB	$18,$F8,$79,$00
	DB	$10,$00,$7A,$00
	DB	$18,$00,$7B,$00
	DB	$10,$08,$7C,$00
	DB	$18,$08,$7D,$00
	DB	$10,$10,$7E,$00
	DB	$18,$10,$7F,$00
;--------------------------------------
FLINKMV
	LD	A,108-$30
	LD	(ENOMID),A
;
	LD	A,(FRCNT)
	AND	$03
	JR	NZ,FLK100
;
	LD	A,(EDCNT4)
	INC	A
	CP	$31
	JR	C,FLK080
	XOR	A
FLK080
	LD	(EDCNT4),A
FLK100
	LD	A,(EDCNT4)
	LD	E,A
	LD	D,B
	LD	HL,DLINKYD
	ADD	HL,DE
;
	LD	A,(SCCV)
	LD	D,A
;
	LD	A,(HL)
	SRA	A
	LD	E,A
	LD	A,(ENDSYP)
	ADD	A,E
	SUB	D
	LD	(ENDSYP),A
;
		LD	A,(CGBFLG)
		AND	A
		JR	NZ,FLINKMV_CGB

	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	AND	$03
	RLA
	RLA
;
	RLA
	RLA
	AND	%11110000
	LD	E,A
	RLA
	AND	%11100000
	ADD	A,E
	LD	E,A
	LD	D,B
	LD	HL,FLINKCD
	ADD	HL,DE
	LD	C,12
	CALL	ENOMST2
;
	LD	A,12
	CALL	NXOMSBL
	RET

;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	F リンク（ ＣＧＢ ）	 %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
FLINKMV_CGB
		LD	HL,CallBank
		LD	A,:FLINKMV_CGB_sub
		LD	(HLI),A
		LD	A,>FLINKMV_CGB_sub
		LD	(HLI),A
		LD	A,<FLINKMV_CGB_sub
		LD	(HLI),A
		LD	A,:FLINKMV_CGB
		LD	(HL),A
		JP	JSL_CALL

;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	E リンク		 %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ELINKCD
;0
	DB	$00,$00,$00,$00
	DB	$00,$08,$02,$00
	DB	$00,$10,$04,$00
	DB	$00,$18,$06,$00
	DB	$00,$20,$08,$00
	DB	$00,$28,$0A,$00
;
;	DB	$10,$00,$0C,$00
;	DB	$10,$08,$0E,$00
;	DB	$10,$10,$10,$00
;	DB	$10,$18,$12,$00
	DB	$10,$20,$14,$00
	DB	$10,$28,$16,$00
;
;	DB	$20,$08,$18,$00
;	DB	$20,$10,$1A,$00
;	DB	$20,$18,$1C,$00
	DB	$20,$20,$1E,$00
	DB	$20,$28,$20,$00
;
	DB	$30,$00,$50,$00
	DB	$30,$08,$22,$00
	DB	$30,$10,$24,$00
	DB	$30,$18,$26,$00
	DB	$30,$20,$28,$00
	DB	$30,$28,$2A,$00
	DB	$30,$30,$2C,$00
	DB	$30,$38,$2E,$00
;
	DB	$40,$00,$30,$00
	DB	$40,$08,$32,$00
	DB	$40,$10,$34,$00
	DB	$40,$18,$36,$00
	DB	$40,$20,$38,$00
	DB	$40,$28,$3A,$00
	DB	$40,$30,$3C,$00
	DB	$40,$38,$3E,$00
	DB	$40,$40,$40,$00
ELKAOCD
;0
	DB	$10,$00,$0C,$00
	DB	$10,$08,$0E,$00
	DB	$10,$10,$10,$00
	DB	$10,$18,$12,$00
	DB	$20,$08,$18,$00
	DB	$20,$10,$1A,$00
	DB	$20,$18,$1C,$00
	DB	$FF,$FF,$FF,$FF
;1
	DB	$10,$00,$0C,$00
	DB	$10,$08,$42,$00
	DB	$10,$10,$44,$00
	DB	$10,$18,$46,$00
	DB	$20,$08,$18,$00
	DB	$20,$10,$48,$00
	DB	$20,$18,$4A,$00
	DB	$FF,$FF,$FF,$FF
;2
	DB	$10,$00,$0C,$00
	DB	$10,$08,$52,$00
	DB	$10,$10,$54,$00
	DB	$10,$18,$56,$00
	DB	$20,$08,$18,$00
	DB	$20,$10,$58,$00
	DB	$20,$18,$5A,$00
	DB	$FF,$FF,$FF,$FF
;----------------------------------------
ELINKMV
	LD	A,(EDCNT4)
	LD	E,A
	LD	D,B
	LD	HL,DLINKYD
	ADD	HL,DE
	LD	A,(HL)
	SRA	A
	LD	E,A
	LD	A,(ENDSYP)
	ADD	A,E
	LD	(ENDSYP),A
;
		LD	A,(CGBFLG)
		AND	A
		JR	NZ,ELINKMV_CGB

	LD	HL,ELINKCD
	LD	C,27
	CALL	ENOMST2
;
	LD	A,27
	CALL	NXOMSBL
;
	LD	A,(EDWRK3)
	RLA
	RLA
	RLA
	RLA
	RLA
	AND	%11100000
	LD	E,A
	LD	D,B
	LD	HL,ELKAOCD
	ADD	HL,DE
	LD	C,$07
;
	LD	A,$70-$30
	LD	(ENOMID),A
;
	CALL	ENOMST
;
	LD	A,$7
	CALL	NXOMSBL
	RET

;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	E リンク（ ＣＧＢ ）	 %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ELINKMV_CGB
		LD	HL,CallBank
		LD	A,:ELINKMV_CGB_sub
		LD	(HLI),A
		LD	A,>ELINKMV_CGB_sub
		LD	(HLI),A
		LD	A,<ELINKMV_CGB_sub
		LD	(HLI),A
		LD	A,:ELINKMV_CGB
		LD	(HL),A
		JP	JSL_CALL

;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	D ひかり		 %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
DHIKARICD
	DB	$00,$00,$70,$07
	DB	$00,$00,$70,$07
	DB	$00,$00,$70,$07
;
	DB	$00,$00,$70,$07
	DB	$08,$08,$5C,$07
	DB	$08,$08,$5C,$07
;
	DB	$00,$00,$70,$07
	DB	$08,$08,$5E,$07
	DB	$08,$10,$60,$07
;- - - - - - - - - - - - - - - - - -
DHIKARI
	LD	HL,ENMOD0
	ADD	HL,BC
	LD	(HL),%11000011
;
	LD	A,(ENCHPT2)
	RLA
	RLA
	AND	%11111100
	LD	E,A
	RLA
	AND	%11111000
	ADD	A,E
	LD	E,A
	LD	D,B
	LD	HL,DHIKARICD
	ADD	HL,DE
	LD	C,$03
	CALL	ENOMST
;
	CALL	LDTIM0
	CP	$01
	JR	Z,DHKAR08
	CP	$30
	JR	NZ,DHKAR10
DHKAR08
	LD	HL,ENCHPT
	ADD	HL,BC
	INC	(HL)
DHKAR10
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	D くじら		 %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
DKUJIRACD
	DB	$00,$00,$62,$10
	DB	$00,$08,$62,$30
;
	DB	$10,$F0,$64,$10
	DB	$10,$F8,$66,$10
	DB	$10,$00,$68,$10
	DB	$10,$08,$68,$30
	DB	$10,$10,$66,$30
	DB	$10,$18,$64,$30
;
	DB	$20,$00,$6A,$10
	DB	$20,$08,$6A,$30
;
	DB	$30,$F8,$6C,$10
	DB	$30,$00,$6E,$10
	DB	$30,$08,$6E,$30
	DB	$30,$10,$6C,$30
;- - - - - - - - - - - - - - - - - - - - - - -
DKUJIRA
	XOR	A
	LD	(ENOMID),A
;
	LD	HL,SCCV
	LD	A,(ENDSYP)
	SUB	(HL)
	LD	(ENDSYP),A
;
	LD	HL,DKUJIRACD
	LD	C,$0E
	CALL	ENOMST
;
	LD	A,$0E
	CALL	NXOMSBL
;
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),$FE
;
	CALL	EDYCLC
;
	LD	A,(ENSTAT2)
	CP	$02
	JR	NC,DKUJ090
;
	CALL	LDTIM0
	JR	NZ,DKUJ090
;
	LD	(HL),$C0 ;$A8
;
	CALL	STATINC
;
	LD	A,$17
	LD	(SOUND2),A	;(S)
DKUJ090
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	D リンク		 %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
DLINKCD
;0
	DB	$00,$08,$B2,$00
	DB	$00,$10,$B4,$00
	DB	$00,$18,$B6,$00
	DB	$00,$20,$B8,$00
;
	DB	$10,$10,$BA,$00
	DB	$10,$18,$BC,$00
	DB	$10,$20,$86,$00
;
	DB	$20,$00,$88,$00
	DB	$20,$08,$8A,$00
	DB	$20,$10,$8C,$00
	DB	$20,$18,$8E,$00
	DB	$20,$20,$94,$00
;
	DB	$30,$00,$98,$00
	DB	$30,$08,$9A,$00
	DB	$30,$10,$A4,$00
	DB	$30,$18,$A8,$00
	DB	$30,$20,$AA,$00
;1
	DB	$00,$08,$C2,$00
	DB	$00,$10,$C4,$00
	DB	$00,$18,$C6,$00
	DB	$00,$20,$C8,$00
;
	DB	$10,$10,$CA,$00
	DB	$10,$18,$CC,$00
	DB	$10,$20,$96,$00
;
	DB	$20,$00,$88,$00
	DB	$20,$08,$8A,$00
	DB	$20,$10,$8C,$00
	DB	$20,$18,$8E,$00
	DB	$20,$20,$94,$00
;
	DB	$30,$00,$98,$00
	DB	$30,$08,$9A,$00
	DB	$30,$10,$A4,$00
	DB	$30,$18,$A8,$00
	DB	$30,$20,$AA,$00
;2
	DB	$00,$08,$D2,$00
	DB	$00,$10,$D4,$00
	DB	$00,$18,$D6,$00
	DB	$00,$20,$D8,$00
;
	DB	$10,$10,$DA,$00
	DB	$10,$18,$DC,$00
	DB	$10,$20,$A6,$00
;
	DB	$20,$00,$88,$00
	DB	$20,$08,$8A,$00
	DB	$20,$10,$8C,$00
	DB	$20,$18,$8E,$00
	DB	$20,$20,$94,$00
;
	DB	$30,$00,$98,$00
	DB	$30,$08,$9A,$00
	DB	$30,$10,$A4,$00
	DB	$30,$18,$A8,$00
	DB	$30,$20,$AA,$00
;----------------------------------------
DLINKYD
  DB	$00,$00,$00,$00,$00,$00,$01,$01,$01,$01
  DB	$02,$02,$02,$03,$03,$04,$05,$05,$06,$06
  DB	$06,$07,$07,$07,$07,$08,$08,$08,$08,$08
  DB	$08,$07,$07,$07,$07,$06,$06,$06,$05,$05
  DB	$04,$03,$02,$02,$02,$01,$01,$01,$01
; - - - - - - - - - - - - - - - - - - - - -
DLINKMV
	LD	A,$00
	LD	(ENOMID),A
;
	LD	A,(SCCV)
	LD	D,A
	SRA	A
	ADD	A,D
;;;	SLA	A
	LD	(WORK0),A
;
	LD	A,(FRCNT)
	AND	$03
	JR	NZ,DLNK10
;
	LD	A,(EDCNT4)
	INC	A
	CP	$31
	JR	C,DLNK08
	XOR	A
DLNK08
	LD	(EDCNT4),A
DLNK10
;	LD	A,(FRCNT)
;	RRA
;	RRA
;;;	RRA
;	NOP
;	AND	$1F
	LD	A,(EDCNT4)
	LD	E,A
	LD	D,B
	LD	HL,DLINKYD
	ADD	HL,DE
	LD	A,(ENDSYP)
	ADD	A,(HL)
	LD	HL,WORK0 ;SCCV
	SUB	(HL)
	LD	(ENDSYP),A
	CP	$A8
	JP	NC,EDCLER
;
		LD	A,(CGBFLG)
		AND	A
		JR	NZ,DLINKMV_CGB

	LD	A,(EDWRK0)
	RLA
	RLA
;
	AND	%11111100
	LD	E,A
	RLA
	RLA
	RLA
	RLA
	AND	%11000000
	ADD	A,E
	LD	E,A
	LD	D,B
	LD	HL,DLINKCD
	ADD	HL,DE
	LD	C,$11
	CALL	ENOMST
;
	LD	A,$11
	CALL	NXOMSBL
	RET

;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	D リンク（ ＣＧＢ ）	 %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
DLINKMV_CGB
		LD	HL,CallBank
		LD	A,:DLINKMV_CGB_sub
		LD	(HLI),A
		LD	A,>DLINKMV_CGB_sub
		LD	(HLI),A
		LD	A,<DLINKMV_CGB_sub
		LD	(HLI),A
		LD	A,:DLINKMV_CGB
		LD	(HL),A
		JP	JSL_CALL

;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	太陽光			 %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
HIKARICD
	DB	$00,$00,$70,$07
	DB	$08,$08,$5E,$07
	DB	$08,$10,$60,$07
;- - - - - - - - - - - - - - - - - -
HIKARIMV
	LD	HL,ENMOD0
	ADD	HL,BC
	LD	(HL),%11000011
;
	LD	HL,HIKARICD
	LD	C,$03
	CALL	ENOMST
;
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	C かもめ		 %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
CTORICD
	DB	$50,$00 ;0
	DB	$52,$00 ;1
	DB	$54,$00 ;2
	DB	$56,$00 ;3
	DB	$57,$00 ;4
	DB	$5A,$00 ;5
;- - - - - - - - - - - - - -
CTORIMV
	LD	A,(FRCNT)
	AND	$07
	JR	NZ,CTORI08
;
	LD	HL,ENCHPT
	ADD	HL,BC
	LD	A,(HL)
	INC	A
	CP	$06
	JR	NZ,CTORI02
	XOR	A
CTORI02
	LD	(HL),A
CTORI08
	LD	HL,ENMOD0
	ADD	HL,BC
	LD	(HL),%11000001
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	A,(HL)
	AND	%10000000
	JR	Z,CTORI10
;
	LD	HL,ENFLCL
	SET	5,(HL)
CTORI10
	LD	DE,CTORICD
	CALL	EN1CST
;
	CALL	EDXCLC
;
	LD	A,(ENSVXL)
	CP	$B0
	JP	NC,EDCLER
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	B2 リンク		 %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
B2LINKCD
	DB	$00,$08,$0E,$00
	DB	$00,$10,$1E,$00
	DB	$00,$18,$2E,$00
;
	DB	$10,$00,$50,$00
	DB	$10,$08,$52,$00
	DB	$10,$10,$54,$00
	DB	$10,$18,$58,$00
B2LINKCD2
	DB	$00,$08,$0E,$00
	DB	$00,$10,$1E,$00
	DB	$00,$18,$2E,$00
;
	DB	$10,$00,$60,$00
	DB	$10,$08,$62,$00
	DB	$10,$10,$64,$00
	DB	$10,$18,$68,$00
;-----------------------------------------------
B2LINKYD
	DB	$00,$00,$00,$01,$02,$02,$02,$01
B2WOODYD
	DB	$00,$00,$00,$00,$01,$01,$01,$01
;- - - - - - - - - - - - -
B2LINKMV
	LD	HL,ENMOD0
	ADD	HL,BC
	LD	(HL),%11000111
;
	LD	A,$00
	LD	(ENOMID),A
;
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	RRA
;	NOP
;	NOP
	AND	$07
	LD	E,A
	LD	D,B
	LD	HL,B2LINKYD
	ADD	HL,DE
	LD	A,(ENDSYP)
	ADD	A,(HL)
	LD	(ENDSYP),A
;
		LD	A,(CGBFLG)
		AND	A
		JR	NZ,B2LINKMV_CGB
;
	LD	HL,B2LINKCD
	LD	A,(FRCNT)
	AND	$10
	JR	Z,B2L010
	LD	HL,B2LINKCD2
B2L010
	LD	C,$07
	CALL	ENOMST
	RET

;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	B2 リンク（ ＣＧＢ ）	 %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
B2LINKMV_CGB
		LD	HL,CallBank
		LD	A,:B2LINKMV_CGB_sub
		LD	(HLI),A
		LD	A,>B2LINKMV_CGB_sub
		LD	(HLI),A
		LD	A,<B2LINKMV_CGB_sub
		LD	(HLI),A
		LD	A,:B2LINKMV_CGB
		LD	(HL),A
		JP	JSL_CALL

;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	B2   浮遊物		 %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
B2WOODCD
	DB	$5A,$03
	DB	$6A,$03
B2WOODMV
	LD	HL,ENMOD0
	ADD	HL,BC
	LD	(HL),%11000001
;
	LD	A,C
	RLA
	AND	%00000110
	LD	E,A
;
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	RRA
;	NOP
;	NOP
	ADD	A,E ;$04
	AND	$07
	LD	E,A
	LD	D,B
	LD	HL,B2WOODYD
	ADD	HL,DE
	LD	A,(ENDSYP)
	ADD	A,(HL)
	LD	(ENDSYP),A
;
		LD	A,(CGBFLG)
		AND	A
		JR	NZ,B2WOODMV_CGB
;
	LD	DE,B2WOODCD
	CALL	EN1CST
	RET

;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	B2   浮遊物（ ＣＧＢ ）	 %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
B2WOODMV_CGB
		LD	HL,CallBank
		LD	A,:B2WOODMV_CGB_sub
		LD	(HLI),A
		LD	A,>B2WOODMV_CGB_sub
		LD	(HLI),A
		LD	A,<B2WOODMV_CGB_sub
		LD	(HLI),A
		LD	A,:B2WOODMV_CGB
		LD	(HL),A
		JP	JSL_CALL

;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	B  浮遊物		 %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
BWOODCD
	DB	$54,$04,$64,$04	;たる1
	DB	$64,$24,$54,$24	;    2
	DB	$4E,$04,$7E,$04	; 木
;- - - - - - - - - - - - - - - - -
BWOODMV
	LD	HL,ENMOD0
	ADD	HL,BC
	LD	(HL),%11000010
;
	LD	A,(ENCHPT2)
	CP	$01
	JR	Z,TARU1MV
	CP	$02
	JR	Z,KI1MV
;
	LD	A,(EDCNT0)
BWODCSB
	LD	E,A
	LD	D,B
	LD	HL,EBSCYD
	ADD	HL,DE
	LD	A,(HL)
	SUB	$04
BWODCSB2
	CPL
	INC	A
	SRA	A
	LD	E,A
	LD	A,(ENDSYP)
	ADD	A,E
	LD	(ENDSYP),A
;
		LD	A,(CGBFLG)
		AND	A
		JR	NZ,BWOODMV_CGB
;
	LD	DE,BWOODCD
	CALL	EN2CST
	RET
;-------------------------------
TARU1MV
	LD	A,(EDCNT0)
	ADD	A,$06
	CP	$2B
	JR	C,TR1M10
	SUB	$2B
TR1M10
	JR	BWODCSB
;---------------------------------
KI1MV
	LD	A,(EDCNT0)
	ADD	A,$18
	CP	$2B
	JR	C,KI1M10
	SUB	$2B
KI1M10
	LD	E,A
	LD	D,$00
	LD	HL,EBSCYD
	ADD	HL,DE
	LD	A,(HL)
	SUB	$04
	SRA	A
	JR	BWODCSB2

;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	B  浮遊物（ ＣＧＢ ）	 %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
BWOODMV_CGB
		LD	HL,CallBank
		LD	A,:BWOODMV_CGB_sub
		LD	(HLI),A
		LD	A,>BWOODMV_CGB_sub
		LD	(HLI),A
		LD	A,<BWOODMV_CGB_sub
		LD	(HLI),A
		LD	A,:BWOODMV_CGB
		LD	(HL),A
		JP	JSL_CALL

;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	B  かもめ		 %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
BTORICD
	DB	$72,$00,$72,$20 ;0
	DB	$74,$00,$74,$20 ;1
	DB	$76,$00,$76,$20 ;2
	DB	$78,$00,$78,$20 ;3
	DB	$7A,$00,$7A,$20 ;4
	DB	$7C,$00,$7C,$20 ;5
;
BTORITM
	DB	$08 ;0
	DB	$06 ;1
	DB	$06 ;2
	DB	$06 ;3
	DB	$06 ;4
	DB	$08 ;5
;
BTORIMV
	LD	HL,ENMOD0
	ADD	HL,BC
	LD	(HL),%11000010
;
		LD	A,(CGBFLG)
		AND	A
		JR	Z,BTORIMV_100

		CALL	BTORIMV_CGB
		JR	BTORIMV_200
BTORIMV_100
	LD	DE,BTORICD
	CALL	EN2CST
BTORIMV_200
	CALL	LDTIM0
	JR	NZ,BTOR100
;
	PUSH	HL
;
	LD	HL,ENCHPT
	ADD	HL,BC
	LD	A,(HL)
	INC	A
	CP	$06
	JR	NZ,BTOR080
;
	XOR	A
BTOR080
	LD	(HL),A
;
	LD	E,A
	LD	D,B
	LD	HL,BTORITM
	ADD	HL,DE
	LD	A,(HL)
	POP	HL
	LD	(HL),A
BTOR100
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	INC	A
	LD	(HL),A
	AND	$1F
	JR	NZ,BTOR110
;
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	A,(HL)
	CP	$FF
	JR	Z,BTOR110
;
	INC	(HL)
BTOR110
	CALL	EDMVCL
;
	LD	A,(ENSVXL)
	CP	$B0
	JP	NC,EDCLER
	RET

;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	B  かもめ（ ＣＧＢ ）	 %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
BTORIMV_CGB
		LD	HL,CallBank
		LD	A,:BTORIMV_CGB_sub
		LD	(HLI),A
		LD	A,>BTORIMV_CGB_sub
		LD	(HLI),A
		LD	A,<BTORIMV_CGB_sub
		LD	(HLI),A
		LD	A,:BTORIMV_CGB
		LD	(HL),A
		JP	JSL_CALL

;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	B  寝てるりんく（ ＣＧＢのみ ）	 %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
BLINKMV
		RET		; 何もしない！

BLINKMV2
		LD	A,(CGBFLG)
		AND	A
		RET	Z

		LD	HL,CallBank
		LD	A,:BLINKMV2_sub
		LD	(HLI),A
		LD	A,>BLINKMV2_sub
		LD	(HLI),A
		LD	A,<BLINKMV2_sub
		LD	(HLI),A
		LD	A,:BLINKMV2
		LD	(HL),A
		JP	JSL_CALL

;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	OBJ楽器			 %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
EGAKKICD
	DB	$D0,$01,$D2,$01
	DB	$D4,$01,$D6,$01
	DB	$D8,$01,$DA,$01
	DB	$DC,$01,$DE,$01
	DB	$E0,$01,$E2,$01
	DB	$E4,$01,$E6,$01
	DB	$E8,$01,$EA,$01
	DB	$EC,$01,$EE,$01
;- - - - - - - - - - - - - - - - -
EGAKKIMV
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	A,(HL)
	ADD	A,$50
	LD	(WORK0),A
;
		CALL	SEIR_COL_SET_end	; 楽器レインボー
;
	LD	DE,EGAKKICD
	CALL	ED2CST
;
	CALL	LDTIM3
	RET	Z
;;	JP	Z,EDCLER
;
	CALL	EDMVCL
;
	RET
;+----------------------------------------------+
;|	七色に光る楽器（ maked by aada ）	|
;+----------------------------------------------+
SEIR_COL_DAT_end
		DW	$2680,$6395
		DW	$3A20,$6B75
		DW	$51A0,$7335
		DW	$7D08,$7F18
		DW	$78AD,$7EF9
		DW	$5C50,$76DA
		DW	$4012,$6ABB
		DW	$3015,$66BC
		DW	$1417,$5EBD
		DW	$04D7,$56FD
		DW	$0537,$571D
		DW	$0997,$5B3D
		DW	$09F5,$5B5C
		DW	$0A10,$5B5A
		DW	$064B,$5779
		DW	$02A0,$5795
;
SEIR_COL_SET_end
		LD	A,(CGBFLG)
		AND	A
		RET	Z
		LD	A,(EDMODE)
		CP	$13		; 回想シーン以降？
		RET	NC		; ＹＥＳ

;;;;;;		LD	A,(FADEMDFG)
;;;;;;		LD	A,(SBHR)
;;;;;;		CP	$04
;;;;;;		RET	NZ
;
		LD	A,(FRCNT)
		SRL	A
		AND	%00111100
		LD	E,A
		LD	D,$000
		LD	HL,SEIR_COL_DAT_end
		ADD	HL,DE
		LD	DE,OBCGWK+$00C
;;;KK;;;		LD	DE,OBCGWK+((($007*$004)+$002)*$002)
SEIR_COL_LOP_end
		LD	A,(HLI)
		LD	(DE),A
		INC	DE
		LD	A,E
		AND	$003
		JR	NZ,SEIR_COL_LOP_end
		LD	A,OBJCOL_BITFG
		LD	(CGDMAF),A
		RET
;-------------------------------------------------------
ED2CST
	PUSH	BC
;
	PUSH	DE	; Chr data addr push !
;
	LD	A,(WORK0)
	LD	E,A
	LD	D,B ;$0
	LD	HL,OAM
	ADD	HL,DE
	PUSH	HL
	POP	DE
;
	LD	A,(ENDSYP)  ;(HL)
	LD	(DE),A		; Y L
	INC	DE
;
	LD	A,(TILTXD)
	LD	C,A
;
	LD	A,(ENFLCL)
	AND	%00100000
	RRA
	RRA
;
	LD	HL,ENSVXL
	ADD	A,(HL)
	SUB	C
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
	POP	HL	; Chrs data addr. !
	ADD	HL,BC
	LD	A,(HLI)
	LD	(DE),A		; C L
	INC	DE
	LD	A,(HLI)
	PUSH	HL
;
	LD	HL,ENFLCL
	XOR	(HL)
	LD	(DE),A		; A L
	INC	DE
;
;- - Right - - -
	LD	A,(ENDSYP)   ;(HL)
	LD	(DE),A		; Y R
	INC	DE
;
	LD	A,(TILTXD)
	LD	C,A
;
	LD	A,(ENFLCL)
	AND	%00100000
	XOR	%00100000
	RRA
	RRA
;
	LD	HL,ENSVXL
	SUB	C
	ADD	A,(HL)	;$08  ;10
	LD	(DE),A		; X R
	INC	DE
;
	POP	HL
	LD	A,(HLI)
	LD	(DE),A		; C R
;
	INC	DE
	LD	A,(HL)
	LD	HL,ENFLCL
	XOR	(HL)
	LD	(DE),A		; A R
;
	POP	BC
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	台			 %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
EDAIMV
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	RST	00
	DW	EDAIMV2	 ;0 台
	DW	EHOSIMV	 ;1 星
	DW	EFUKUMV	 ;2 ふくろう
	DW	EGAKKIMV ;3 楽器
	DW	B2LINKMV ;4 斜め後ろリンク
	DW	B2WOODMV ;5 木の破片
	DW	CTORIMV	 ;6 かもめ
	DW	HIKARIMV ;7 太陽光
	DW	BWOODMV	 ;8 浮遊物
	DW	BTORIMV	 ;9 飛び立つかもめ
	DW	DLINKMV	 ;A 横向きリンク
	DW	DKUJIRA	 ;B くじら（下から）
	DW	DHIKARI	 ;C 太陽光
	DW	ELINKMV	 ;D 笑顔リンク
	DW	FLINKMV	 ;E 後ろ姿リンク
	DW	FKUJIRA	 ;F くじら（横から）
;
	DW	FMARINMV ;10 かもめまりん
	DW	BLINKMV	 ;11 寝てるりんく（ CGB:ENDB )
;-------------------------------------
EDAIMV2
	CALL	EDAICS
;
	LD	A,(ENSTAT2)
	RST	00
	DW	EDAI100
	DW	EDAI200
	DW	EDAI300
	DW	EDAI400
	DW	EDAI500
;=======================================
EDAI100
	LD	A,(ENDSYP)
	CP	$60
	JP	Z,STATINC
;
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),$08
;
	CALL	EDYCLC
;
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	A,(HL)
	CP	$F0
	JR	NZ,EDAI10
;
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	A,(HL)
	CP	$08
	JR	NC,EDAI10
	INC	A
	LD	(HL),A
;
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	(HL),$E0
EDAI10
	LD	A,$FF
	LD	(PLYSPD),A
;----------------------------------------
EPMVCL
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	AND	$01
	ADD	A,$00
	LD	(PLCHPT),A
;
EPMVCL2
	PUSH	BC
	XOR	A
	LD	(PLXSPD),A
	CALL	MVCALC
	CALL	EPLCST
	POP	BC
	RET
;=======================================
EDAI200
	LD	A,$F8
	LD	(PLYSPD),A
;
	CALL	EPMVCL
;
	LD	A,(PLYPSL)
	CP	$5C
	JR	NZ,EDAI220
;
	XOR	A
	LD	(PLYSPD),A
;
	LD	A,$02
	LD	(PLCHPT),A
;
	LD	A,EDAI
	CALL	ENIDSHL	;ふくろうセット！
;
	LD	HL,ENWRK0
	ADD	HL,DE
	LD	(HL),$02
;
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),$50
;
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),$00
;
FUKUST
	LD	HL,ENYSPD
	ADD	HL,DE
	LD	(HL),$14
;
	LD	HL,ENTIM0
	ADD	HL,DE
	LD	(HL),$30
;
	CALL	STATINC
EDAI220
	RET
;=======================================
;EDAIPD
;	DB	4,4,3,2,1,0
;
EDAI300
;	CALL	LDTIM0
;	JR	Z,EDAI3010
;
;	DEC	A
;	JP	Z,EDCLER
;	RRA
;	RRA
;	RRA
;	AND	$07
;	LD	E,A
;	LD	D,B
;	LD	HL,EDAIPD
;	ADD	HL,DE
;	CALL	ENPTST
;EDAI3010
;(CGB)	CALL	EPMVCL2
;(CGB)	RET
		JR	EDAI500
;-----------------------------------------------
EDAI400
	CALL	EPMVCL2
;
	CALL	LDTIM0
	JR	NZ,EDAI410
;
	LD	(HL),$08
;
	LD	HL,ENCHPT
	ADD	HL,BC
	LD	A,(HL)
	INC	A
	LD	(HL),A
	CP	$05
	JR	NZ,EDAI410
;
	CALL	STATINC
EDAI410
;(CGB)	CALL	EPMVCL2
;(CGB)	RET
;-----------------------------------------------
EDAI500
	CALL	EPMVCL2
	RET
;
;
;
;
;
;------------------------------------------------
;(CGB)EDAICD
;(CGB)EDCA
;(CGB)	DB	$00,$00,$10,$17
;(CGB)	DB	$00,$08,$04,$17
;(CGB)	DB	$00,$10,$06,$17
;(CGB)	DB	$00,$18,$06,$37
;(CGB)	DB	$00,$20,$04,$37	;メッセージカーソルが消す！
;(CGB)	DB	$00,$28,$10,$37
;(CGB);
;(CGB)	DB	$10,$00,$08,$17
;(CGB)	DB	$10,$08,$0A,$17
;(CGB)	DB	$10,$10,$0C,$17
;(CGB)	DB	$10,$18,$0C,$37
;(CGB)	DB	$10,$20,$0A,$37
;(CGB)	DB	$10,$28,$08,$37
;(CGB);
;(CGB)EDC9
;(CGB)	DB	$20,$10,$20,$17
;(CGB)	DB	$20,$18,$30,$17
;(CGB)EDC8
;(CGB)	DB	$30,$10,$20,$17
;(CGB)	DB	$30,$18,$30,$17
;(CGB);;;	DB	$00,$20,$04,$37	;メッセージカーソルがけすため!
;(CGB)EDC7
;(CGB)	DB	$40,$10,$20,$17
;(CGB)	DB	$40,$18,$30,$17
;(CGB)EDC6
;(CGB)	DB	$50,$10,$20,$17
;(CGB)	DB	$50,$18,$30,$17
;(CGB);
;(CGB)EDC5
;(CGB)	DB	$60,$10,$20,$17
;(CGB)	DB	$60,$18,$30,$17
;(CGB);
;(CGB)EDC4
;(CGB)	DB	$70,$10,$20,$17
;(CGB)	DB	$70,$18,$30,$17
;(CGB);
;(CGB)EDC3
;(CGB)	DB	$80,$10,$20,$17
;(CGB)	DB	$80,$18,$30,$17
;(CGB);
;(CGB)EDC2
;(CGB)	DB	$90,$10,$20,$17
;(CGB)	DB	$90,$18,$30,$17
;(CGB);
;(CGB)EDC1
;(CGB)	DB	$A0,$10,$20,$17
;(CGB)	DB	$A0,$18,$30,$17
;(CGB);
;(CGB)EDC0
;(CGB)	DB	$B0,$10,$20,$17
;(CGB)	DB	$B0,$18,$30,$17
;(CGB)EDCF
;(CGB);------------------------------------------------
;(CGB)EDAICD2
;(CGB)	DB	$00,$00,$12,$17
;(CGB)	DB	$00,$08,$14,$17
;(CGB)	DB	$00,$10,$16,$17
;(CGB)	DB	$00,$18,$16,$37
;(CGB)	DB	$00,$20,$14,$37	;メッセージカーソルが消す！
;(CGB)	DB	$00,$28,$12,$37
;(CGB);
;(CGB)	DB	$10,$00,$18,$17
;(CGB)	DB	$10,$08,$1A,$17
;(CGB)	DB	$10,$10,$1C,$17
;(CGB)	DB	$10,$18,$1C,$37
;(CGB)	DB	$10,$20,$1A,$37
;(CGB)	DB	$10,$28,$18,$37
;(CGB);
;(CGB)	DB	$20,$10,$40,$17
;(CGB)	DB	$20,$18,$50,$17
;(CGB);
;(CGB)	DB	$30,$10,$40,$17
;(CGB)	DB	$30,$18,$50,$17
;(CGB);
;(CGB)	DB	$40,$10,$40,$17
;(CGB)	DB	$40,$18,$50,$17
;(CGB);
;(CGB)	DB	$50,$10,$40,$17
;(CGB)	DB	$50,$18,$50,$17
;(CGB);
;(CGB)	DB	$60,$10,$40,$17
;(CGB)	DB	$60,$18,$50,$17
;(CGB);
;(CGB)	DB	$70,$10,$40,$17
;(CGB)	DB	$70,$18,$50,$17
;(CGB);
;(CGB)	DB	$80,$10,$40,$17
;(CGB)	DB	$80,$18,$50,$17
;(CGB);
;(CGB)	DB	$90,$10,$40,$17
;(CGB)	DB	$90,$18,$50,$17
;(CGB);
;(CGB)	DB	$A0,$10,$40,$17
;(CGB)	DB	$A0,$18,$50,$17
;(CGB);
;(CGB)	DB	$B0,$10,$40,$17
;(CGB)	DB	$B0,$18,$50,$17
;(CGB);------------------------------------------------
;(CGB)EDAICD3
;(CGB)	DB	$00,$00,$22,$17
;(CGB)	DB	$00,$08,$24,$17
;(CGB)	DB	$00,$10,$26,$17
;(CGB)	DB	$00,$18,$26,$37
;(CGB)	DB	$00,$20,$24,$37	;メッセージカーソルが消す！
;(CGB)	DB	$00,$28,$22,$37
;(CGB);
;(CGB)	DB	$10,$00,$28,$17
;(CGB)	DB	$10,$08,$2A,$17
;(CGB)	DB	$10,$10,$2C,$17
;(CGB)	DB	$10,$18,$2C,$37
;(CGB)	DB	$10,$20,$2A,$37
;(CGB)	DB	$10,$28,$28,$37
;(CGB);
;(CGB)	DB	$20,$10,$60,$17
;(CGB)	DB	$20,$18,$70,$17
;(CGB);
;(CGB)	DB	$30,$10,$60,$17
;(CGB)	DB	$30,$18,$70,$17
;(CGB);
;(CGB)	DB	$40,$10,$60,$17
;(CGB)	DB	$40,$18,$70,$17
;(CGB);
;(CGB)	DB	$50,$10,$60,$17
;(CGB)	DB	$50,$18,$70,$17
;(CGB);
;(CGB)	DB	$60,$10,$60,$17
;(CGB)	DB	$60,$18,$70,$17
;(CGB);
;(CGB)	DB	$70,$10,$60,$17
;(CGB)	DB	$70,$18,$70,$17
;(CGB);
;(CGB)	DB	$80,$10,$60,$17
;(CGB)	DB	$80,$18,$70,$17
;(CGB);
;(CGB)	DB	$90,$10,$60,$17
;(CGB)	DB	$90,$18,$70,$17
;(CGB);
;(CGB)	DB	$A0,$10,$60,$17
;(CGB)	DB	$A0,$18,$70,$17
;(CGB);
;(CGB)	DB	$B0,$10,$60,$17
;(CGB)	DB	$B0,$18,$70,$17
;(CGB);------------------------------------------------
;(CGB)EDAICD4
;(CGB)	DB	$00,$00,$32,$17
;(CGB)	DB	$00,$08,$34,$17
;(CGB)	DB	$00,$10,$36,$17
;(CGB)	DB	$00,$18,$36,$37
;(CGB)	DB	$00,$20,$34,$37	;メッセージカーソルが消す！
;(CGB)	DB	$00,$28,$32,$37
;(CGB);
;(CGB)	DB	$10,$00,$38,$17
;(CGB)	DB	$10,$08,$3A,$17
;(CGB)	DB	$10,$10,$3C,$17
;(CGB)	DB	$10,$18,$3C,$37
;(CGB)	DB	$10,$20,$3A,$37
;(CGB)	DB	$10,$28,$38,$37
;(CGB);
;(CGB)	DB	$20,$10,$52,$17
;(CGB)	DB	$20,$18,$62,$17
;(CGB);
;(CGB)	DB	$30,$10,$52,$17
;(CGB)	DB	$30,$18,$62,$17
;(CGB);
;(CGB)	DB	$40,$10,$52,$17
;(CGB)	DB	$40,$18,$62,$17
;(CGB)
;(CGB)	DB	$50,$10,$52,$17
;(CGB)	DB	$50,$18,$62,$17
;(CGB);
;(CGB)	DB	$60,$10,$52,$17
;(CGB)	DB	$60,$18,$62,$17
;(CGB);
;(CGB)	DB	$70,$10,$52,$17
;(CGB)	DB	$70,$18,$62,$17
;(CGB);
;(CGB)	DB	$80,$10,$52,$17
;(CGB)	DB	$80,$18,$62,$17
;(CGB);
;(CGB)	DB	$90,$10,$52,$17
;(CGB)	DB	$90,$18,$62,$17
;(CGB);
;(CGB)	DB	$A0,$10,$52,$17
;(CGB)	DB	$A0,$18,$62,$17
;(CGB);
;(CGB)	DB	$B0,$10,$52,$17
;(CGB)	DB	$B0,$18,$62,$17
;(CGB);------------------------------------------------
;(CGB)EDAICD5
;(CGB)	DB	$00,$00,$42,$17
;(CGB)	DB	$00,$08,$44,$17
;(CGB)	DB	$00,$10,$46,$17
;(CGB)	DB	$00,$18,$46,$37
;(CGB)	DB	$00,$20,$44,$37	;メッセージカーソルが消す！
;(CGB)	DB	$00,$28,$42,$37
;(CGB);
;(CGB)	DB	$10,$00,$48,$17
;(CGB)	DB	$10,$08,$4A,$17
;(CGB)	DB	$10,$10,$4C,$17
;(CGB)	DB	$10,$18,$4C,$37
;(CGB)	DB	$10,$20,$4A,$37
;(CGB)	DB	$10,$28,$08,$37
;(CGB);
;(CGB)	DB	$20,$10,$56,$17
;(CGB)	DB	$20,$18,$66,$17
;(CGB);
;(CGB)	DB	$30,$10,$56,$17
;(CGB)	DB	$30,$18,$66,$17
;(CGB);
;(CGB)	DB	$40,$10,$56,$17
;(CGB)	DB	$40,$18,$66,$17
;(CGB);
;(CGB)	DB	$50,$10,$56,$17
;(CGB)	DB	$50,$18,$66,$17
;(CGB);
;(CGB)	DB	$60,$10,$56,$17
;(CGB)	DB	$60,$18,$66,$17
;(CGB);
;(CGB)	DB	$70,$10,$56,$17
;(CGB)	DB	$70,$18,$66,$17
;(CGB);
;(CGB)	DB	$80,$10,$56,$17
;(CGB)	DB	$80,$18,$66,$17
;(CGB);
;(CGB)	DB	$90,$10,$56,$17
;(CGB)	DB	$90,$18,$66,$17
;(CGB);
;(CGB)	DB	$A0,$10,$56,$17
;(CGB)	DB	$A0,$18,$66,$17
;(CGB);
;(CGB)	DB	$B0,$10,$56,$17
;(CGB)	DB	$B0,$18,$66,$17
;(CGB);================================================================
;(CGB)EDASTD
;(CGB)	DB	EDC1-EDCA
;(CGB)	DB	EDC2-EDCA
;(CGB)	DB	EDC3-EDCA
;(CGB)	DB	EDC4-EDCA
;(CGB)	DB	EDC5-EDCA
;(CGB)	DB	EDC6-EDCA
;(CGB)	DB	EDC7-EDCA
;(CGB)	DB	EDC8-EDCA
;(CGB)	DB	EDC9-EDCA
;(CGB)	DB	EDC9-EDCA
;(CGB)	DB	EDC9-EDCA
;(CGB)	DB	EDC9-EDCA
;(CGB)	DB	EDC9-EDCA
;(CGB)	DB	EDC9-EDCA
;(CGB)	DB	EDCF-EDCA
;(CGB)	DB	EDC0-EDCA
;- - - - - - - - - - - - - - - - -
EDAICS
		LD	HL,CallBank
		LD	A,:EDAICS_sub
		LD	(HLI),A
		LD	A,>EDAICS_sub
		LD	(HLI),A
		LD	A,<EDAICS_sub
		LD	(HLI),A
		LD	A,:EDAICS
		LD	(HL),A
		JP	JSL_CALL


;(CGB)	PUSH	BC
;(CGB);
;(CGB)	LD	A,(ENDSYP)
;(CGB)	SWAP	A
;(CGB)	AND	$0F
;(CGB)	LD	E,A
;(CGB)	LD	D,B
;(CGB)	LD	HL,EDASTD
;(CGB)	ADD	HL,DE
;(CGB)	LD	B,(HL)
;(CGB);
;(CGB)	LD	HL,EDAICD
;(CGB);
;(CGB)	LD	A,(ENCHPT2)
;(CGB)	CP	$05
;(CGB)	JR	Z,EDAC090
;(CGB)	AND	A
;(CGB)	JR	Z,EDC000S
;(CGB);
;(CGB)	LD	HL,EDAICD2
;(CGB)	DEC	A
;(CGB)	JR	Z,EDC000S
;(CGB);
;(CGB)	LD	HL,EDAICD3
;(CGB)	DEC	A
;(CGB)	JR	Z,EDC000S
;(CGB);
;(CGB)	LD	HL,EDAICD4
;(CGB)	DEC	A
;(CGB)	JR	Z,EDC000S
;(CGB);
;(CGB)	LD	HL,EDAICD5
;(CGB)EDC000S
;(CGB)	LD	DE,OAM+$0C
;(CGB);
;(CGB)	LD	C,$00
;(CGB)EDAC010
;(CGB)	LD	A,C
;(CGB)	AND	$03
;(CGB)	CP	$00
;(CGB)	JR	NZ,EDAC020
;(CGB);
;(CGB)	LD	A,(ENDSYP)
;(CGB)	JR	EDAC030
;(CGB)EDAC020
;(CGB)	CP	$01
;(CGB)	JR	NZ,EDAC040
;(CGB);
;(CGB)	PUSH	HL
;(CGB)	LD	HL,TILTXD
;(CGB)	LD	A,(ENSVXL)
;(CGB)	SUB	(HL)
;(CGB)	POP	HL
;(CGB)EDAC030
;(CGB)	ADD	A,(HL)
;(CGB)	JR	EDAC050
;(CGB)EDAC040
;(CGB)	LD	A,(HL)
;(CGB)EDAC050
;(CGB)	LD	(DE),A
;(CGB)	INC	HL
;(CGB)	INC	DE
;(CGB);
;(CGB)	INC	C
;(CGB)	LD	A,C
;(CGB)	CP	B    ;EDCE-EDCA
;(CGB)	JR	NZ,EDAC010
;(CGB);
;(CGB)EDAC090
;(CGB)	POP	BC
;(CGB)	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	星			 %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;(CGB)EHOSIMV
;(CGB)	CALL	EHOSICS
;(CGB)	RET
;------------------------------------------------
EHOSIXD
;;;   0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F
 DB $20,$40,$60,$78,$10,$48,$68,$90,$30,$50,$80,$90,$18,$38,$68,$78
EHOSIYD
;;;   0	  1   2	  3   4	  5   6	  7   8	  9   A	  B   C	  D   E	  F
 DB $28,$08,$28,$00,$48,$40,$4C,$38,$68,$70,$58,$68,$78,$88,$98,$80
EHOSICD
	DB	$1E,$1E,$1E,$2E,$2E,$3E,$2E,$2E
;----------------------------------------
EHOSIMV				; (CGB) ここに移動！
EHOSICS
	LD	DE,OAM+$90
;
	PUSH	BC
;
	LD	A,(FRCNT)
	AND	$01
	LD	C,A
EHCS10
	LD	HL,EHOSIYD
	ADD	HL,BC
	LD	A,(ENDSYP)
	ADD	A,(HL)
	CP	$98
	JR	C,EHSC010
;
	SUB	$88
EHSC010
	LD	(DE),A
	INC	DE
;
	LD	HL,EHOSIXD
	ADD	HL,BC
	LD	A,(HL)
	LD	(DE),A
	INC	DE
;
	PUSH	BC
;
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	RRA
	NOP
	XOR	C
	AND	$07
	LD	C,A
	LD	B,$00
	LD	HL,EHOSICD
	ADD	HL,BC
	LD	A,(HL)
	LD	(DE),A
	INC	DE
;
	POP	BC
;
;(CGB)	LD	A,%10010000
		LD	A,%10010110	; ＡＴＲ６
	LD	(DE),A
	INC	DE
;
	INC	C
	INC	C
	LD	A,C
	CP	$10
	JR	C,EHCS10
;
	POP	BC
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	ふくろう		 %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
EFUKUCD
;0
	DB	$00,$F8,$58,$01
	DB	$00,$00,$68,$01
	DB	$00,$08,$68,$21
	DB	$00,$10,$58,$21
;1
	DB	$00,$F8,$5A,$01
	DB	$00,$00,$6A,$01
	DB	$00,$08,$6A,$21
	DB	$00,$10,$5A,$21
;2
	DB	$00,$F8,$5C,$01
	DB	$00,$00,$6C,$01
	DB	$00,$08,$6C,$21
	DB	$00,$10,$5C,$21
;3
	DB	$00,$F8,$5E,$01
	DB	$00,$00,$6E,$01
	DB	$00,$08,$6E,$21
	DB	$00,$10,$5E,$21
;- - - - - - - - - - - - - - - - - - -
EFUKUMV
	LD	A,$50
	LD	(ENOMID),A
;
;	LD	HL,ENWRK3
;	ADD	HL,BC
;	LD	A,(HL)
;	AND	$01
;	JR	NZ,EFUK000
;
	LD	HL,EFUKUCD
	LD	A,(ENCHPT2)
	RLA
	RLA
	RLA
	RLA
	AND	$F0
	LD	E,A
	LD	D,B
	ADD	HL,DE
	LD	C,$04
	CALL	ENOMST
;
	LD	A,$04
	CALL	NXOMSBL
;
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	AND	$03
	CALL	ENPTST
EFUK000
	LD	A,(ENSTAT2)
	RST	00
	DW	EFUK1000
	DW	EFUK2000
	DW	EFUK3000
	DW	EFUK4000
;-----------------------------------------------
EFUK1000
	CALL	LDTIM0
	JR	NZ,EFUK1010
;
	CALL	EDYCLC
;
	LD	A,(FRCNT)
	AND	$03
	JR	NZ,EFUK1010
;
	LD	HL,ENYSPD
	ADD	HL,BC
	DEC	(HL)
	JR	NZ,EFUK1010
;
	CALL	LDTIM0
	LD	(HL),$80
;
	CALL	STATINC
EFUK1010
	RET
;-----------------------------------------------
EFUKZD
	DB	0,0,0,1,1,2,3,3,4,4,4,3,3,2,1,1
;-----------------------------------------------
EFUK2000
	CALL	LDTIM0
	JR	NZ,EFUK2020
;
	LD	A,$CF
	CALL	EDMSCK
;
	LD	A,$19
	LD	(FKMSFG),A
;;	CALL	MSGCHK	;EDMSCK
;
	CALL	STATINC
EFUK2020
;- - - - - - - - - - - - - -
EFKHOB
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	LD	A,(HL)
	INC	(HL)
	RRA
	RRA
	AND	$0F
	LD	E,A
	LD	D,B
	LD	HL,EFUKZD
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	(HL),A
;
	RET
;-----------------------------------------------
EFUK3000
	CALL	EFKHOB
;
	LD	A,(MSGEFG)
	AND	A
	JR	NZ,EFUK3030
;
	CALL	LDTIM0
	LD	(HL),$FF
;
	CALL	STATINC
EFUK3030
	RET
;-----------------------------------------------
EFUK4000
	CALL	EFKHOB
;
	CALL	LDTIM0
	JR	NZ,EFUK4030
;
EFNEXT
	CALL	EDINC
EDCLER
	LD	HL,ENMODE
	ADD	HL,BC
	LD	(HL),B
	RET
;
;------------------------------
;EFKTND
;	DB	$FF,$00,$00,$00,$00,$00,$00,$00
;	DB	$FF,$00,$00,$00,$FF,$00,$00,$00
;	DB	$FF,$00,$00,$FF,$00,$FF,$00,$00
;	DB	$FF,$00,$FF,$00,$FF,$00,$FF,$00
;	DB	$FF,$00,$FF,$FF,$00,$FF,$00,$FF
;	DB	$FF,$FF,$00,$FF,$FF,$00,$FF,$FF
;	DB	$FF,$FF,$FF,$00,$FF,$FF,$FF,$FF
;	DB	$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
;
EFUK4030
	CP	$E0
	JR	NC,EFUK4050
;
	CP	$DF
	JR	NZ,EFUK4010
;
	LD	A,$26
	LD	(SOUND1),A	;(S)
EFUK4010
	LD	HL,ENWRK2
	ADD	HL,BC
	LD	E,(HL)
	LD	A,(HL)
	CP	$FC
	JR	NC,EFNEXT
;;	JR	NC,EFUK4040
;
	ADD	A,$02
	LD	(HL),A
;
	LD	HL,ENWRK3
	ADD	HL,BC
	LD	A,(HL)
	ADD	A,E
	LD	(HL),A
	JR	NC,EFUK4050
;
EFUK4040
	LD	A,$FF
	CALL	ENPTST
EFUK4050
	RET
;-----------------------------------------------
EDMSCK
	LD	E,A
;
	LD	A,(PLYPSL)
	PUSH	AF
;
	LD	A,$10
	LD	(PLYPSL),A
;
	LD	A,E
	CALL	MSGCHK
;
	POP	AF
	LD	(PLYPSL),A
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	りんく			 %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;EPLCDT
;	DB	$00,$00,$02,$00
;EPLCDT2
;	DB	$02,$20,$00,$20
EPLCDT
	DB	$00,$00,$02,$00;0
	DB	$02,$20,$00,$20;1
	DB	$44,$00,$46,$00;2
	DB	$48,$00,$4A,$00;3
	DB	$4C,$00,$4C,$20;4
	DB	$D8,$20,$D6,$20;5
	DB	$D4,$00,$D4,$20;6
	DB	$D6,$00,$D8,$00;7
	DB	$DA,$00,$DC,$00;8
	DB	$DE,$00,$E0,$00;9
	DB	$E2,$00,$E2,$20;A
	DB	$E0,$20,$DE,$20;B
	DB	$DC,$20,$DA,$20;C
;- - - - - - - - - - - - - - - - - - - -
EPLCST
	LD	A,(PLCHPT)
	RLA
	RLA
	AND	%11111100
	LD	E,A
	LD	D,$00
	LD	HL,EPLCDT
	ADD	HL,DE
	PUSH	HL
	POP	DE
;
;	LD	DE,EPLCDT
;	LD	A,(PLCHPT)
;	AND	A
;	JR	Z,EPLC10
;;
;	LD	DE,EPLCDT2
;EPLC10
	LD	HL,OAM+$04
;
	LD	A,(PLYPSL)
	LD	(HLI),A
	LD	A,(TILTXD)
	LD	C,A
	LD	A,(PLXPSL)
	SUB	C
	LD	(HLI),A
	LD	A,(DE)
	INC	DE
	LD	(HLI),A

		PUSH	HL
		LD	HL,WORK0
		LD	A,(CLOTHFG)	; りんくの服色は？
		AND	A
		JR	Z,EPLCST_100
		INC	A
EPLCST_100
		LD	(HL),A

	LD	A,(DE)
		OR	(HL)
		POP	HL
	INC	DE
	LD	(HLI),A
;
	LD	A,(PLYPSL)
	LD	(HLI),A
	LD	A,(PLXPSL)
	SUB	C
	ADD	A,$08
	LD	(HLI),A
	LD	A,(DE)
	INC	DE
	LD	(HLI),A
		PUSH	HL
		LD	HL,WORK0
	LD	A,(DE)
		OR	(HL)
		POP	HL
	LD	(HL),A
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%				 %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;=====================================================
;=====================================================
YAOBYD
	DB	$37,$7F
;
YAOBJSTS
	LD	A,(FRCNT)
	AND	%00010000
	RET	NZ
;
	LD	E,$00
	LD	A,(MSGEFG)
	AND	%10000000
	JR	Z,YOS010
	INC	E
YOS010
	LD	D,$00
;
	LD	A,(GMMODE)
	CP	ENDG
	JR	Z,YOSED
;
	LD	HL,YAOBYD
	ADD	HL,DE
	LD	A,(HL)
	LD	(OAM+$18),A
	LD	A,$97
	LD	(OAM+$19),A
	LD	A,$A2
	LD	(OAM+$1A),A
;(CGB)	LD	A,$40
	LD	A,$42		; あかいろ
	LD	(OAM+$1B),A
	RET
;=====================================================
YOSED
	LD	HL,YAOBYD
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,SCCV
	SUB	(HL)
	LD	(OAM+$00),A
	LD	A,$97
	LD	(OAM+$01),A
	LD	A,$FE
	LD	(OAM+$02),A
	LD	A,$40
	LD	(OAM+$03),A
	RET
;=====================================================
MSQYAD
	DB	$30,$78
MSQXAD
	DB	$30,$58
;
MSCURST
	LD	E,$00
	LD	A,(MSGEFG)
	AND	%10000000
	JR	Z,MSQ010
	INC	E
MSQ010
	LD	D,$00
;
	LD	A,(GMMODE)
	CP	ENDG
	JR	Z,MSCRS10
;
	LD	HL,MSQYAD
	ADD	HL,DE
	LD	A,(HL)
	LD	(OAM+$18),A
;
	LD	E,$00
	LD	A,(MSANSR)
	AND	%00000001
	JR	Z,MSQ020
	INC	E
MSQ020
	LD	HL,MSQXAD
	ADD	HL,DE
	LD	A,(HL)
	LD	(OAM+$19),A
	LD	A,$3E
	LD	(OAM+$1A),A
	LD	A,$00
	LD	(OAM+$1B),A
MSQ030
	RET
;-------------------------------------
MSCRS10
	LD	HL,MSQYAD
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,SCCV
	SUB	(HL)
	LD	(OAM+$00),A
;
	LD	E,$00
	LD	A,(MSANSR)
	AND	%00000001
	JR	Z,MSQ220
	INC	E
MSQ220
	LD	HL,MSQXAD
	ADD	HL,DE
	LD	A,(HL)
	LD	(OAM+$01),A
	LD	A,$9E
	LD	(OAM+$02),A
	LD	A,$00
	LD	(OAM+$03),A
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%				 %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%				 %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%				 %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%				 %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
EDMVCL
;
	CALL	EDXCLC		; X calc
;
EDYCLC
	PUSH	BC
	LD	A,C
	ADD	A,<ENNO
	LD	C,A

	CALL	EDXCLC		; Y calc
	POP	BC
	RET
;-----------------------------------------
EDXCLC
	LD	HL,ENXSPD
	ADD	HL,BC
;
	LD	A,(HL)
	AND	A
	JR	Z,EDL090
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
EDL00
	ADD	HL,BC
;
	POP	AF
;
	LD	E,$0
	BIT	7,A
	JR	Z,EDC00
	LD	E,$F0
EDC00
	SWAP	A
	AND	$0F
	OR	E
	RR	D
	ADC	A,(HL)
	LD	(HL),A
EDL090
	RET
;====================================================
EDZCLC
	LD	HL,ENZSPD
	ADD	HL,BC
;
	LD	A,(HL)
	AND	A
	JR	Z,EDL090
;
	PUSH	AF
	SWAP	A
	AND	$F0
	LD	HL,ENZSDR
	ADD	HL,BC
	ADD	A,(HL)
	LD	(HL),A
	RL	D
;
	LD	HL,ENZPSL
	JR	EDL00
;------------------------------------------------
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	フェードＩＮ							x
;x----------------------------------------------------------------------x
;x	    ＥＮＴＲＹ							x
;x		Ａ         ： 転送カラー 奇数 → ＯＢＪ			x
;x			   ：            偶数 → ＢＧ			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
Fade_add_Red	EQU	1*6
Fade_add_Green	EQU	2*6
Fade_add_Blue	EQU	4*6
;========================================================================

END_FADEIN
		AND	1		; ＢＧ ｏｒ ＯＢＪ？
		JR	Z,END_WhiteIn_100
		LD	A,OBJCOL_BITFG
		JR	END_WhiteIn_900
;
END_WhiteIn_100
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
		LD	A,BGCOL_BITFG
END_WhiteIn_900
		LD	(CGDMAF),A	; 転送フラグセット
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
;x	フェードＯＵＴ							x
;x----------------------------------------------------------------------x
;x	    ＥＮＴＲＹ							x
;x		Ａ         ： 転送カラー 奇数 → ＯＢＪ			x
;x			   ：            偶数 → ＢＧ			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
END_FADEOUT
		AND	1		; ＢＧ ｏｒ ＯＢＪ？
		JR	Z,END_WhiteOut_100

		XOR	A
		LD	(EDFADE),A	; ＯＢＪフェードフラグＯＦＦ
		LD	A,OBJCOL_BITFG
		JR	END_WhiteOut_900
;
END_WhiteOut_100
		LD	A,Fade_add_Red
		LD	(WORKD),A
		LD	A,Fade_add_Green
		LD	(WORKE),A
		LD	A,Fade_add_Blue
		LD	(WORKF),A
		LD	HL,CGWORK
		LD	D,$040
;
		CALL	END_WhiteOutLoop
		LD	A,BGCOL_BITFG
END_WhiteOut_900
		LD	(CGDMAF),A	; 転送フラグセット
		XOR	A
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

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ブラックフェードＯＵＴ（ＢＧのみ）				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
BLACK_FADEOUT
		LD	HL,CallBank
		LD	A,:BLACK_FADEOUT_sub
		LD	(HLI),A
		LD	A,>BLACK_FADEOUT_sub
		LD	(HLI),A
		LD	A,<BLACK_FADEOUT_sub
		LD	(HLI),A
		LD	A,:BLACK_FADEOUT
		LD	(HL),A
		JP	JSL_CALL


;------------------------------------------------
	END
