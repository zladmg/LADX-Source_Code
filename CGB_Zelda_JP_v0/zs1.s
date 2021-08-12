
		onbankgroup

	NLIST
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
		EXTERN	OPBGS_CGB
;
;============== バンク１ ================================================
BANK1		GROUP	1
;-------------<	ZTI >-------------
		EXTERN	ITMINC,PSLCTGO,TSV4000,SCRRCLR,TBGEND
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
;
BANK1	GROUP	1
	LIB	ZBN
	LIB	ZRAM
;
;========================================================================
	LIST
;;;kk;;;	ORG	$5CF0
	KANJI
	isdmg
;
;****************************************
;*	OAM RAM CLEAR			*
;****************************************
OAMCLR
	LD	HL,$0000

	LD	A,(CGBFLG)
	AND	A		; カラーゲームボーイ？
	JR	Z,OCL001	; ＮＯ

	LD	(HL),$0		;(CGB)セーブデータ保護！
	JR	OCL002
OCL001
	LD	(HL),$FF	;セーブデータ保護！
OCL002
;-------------------------------------------------------------
;
	LD	B,$28
;;;11/06	XOR	A
		ld	a,0f4h
	LD	HL,OAM
OCL010
	LD	(HLI),A
	INC	HL
	INC	HL
	INC	HL
	DEC	B
	JR	NZ,OCL010
;
	RET
;=========================================================================
MSOMCL
	LD	A,(WNDFLG)
	AND	A
	JR	Z,MSOC00
;
	LD	HL,OAM
	LD	A,(WNDYPS)
	ADD	A,$08
	LD	D,A
;
	LD	E,$28
MSOC081
	LD	A,(HL)
	CP	D
	JR	C,MSOC201
;
	LD	(HL),$0
MSOC201
	INC	HL
	INC	HL
	INC	HL
	INC	HL
	DEC	E
	JR	NZ,MSOC081
	RET
;=====================================================
MSOC00
	LD	A,(WNDYPS)
	AND	A
	RET	Z
;				; yes !
	LD	A,(MSGEFG)
	AND	A
	RET	Z
;			; yes !
	LD	D,$3E
	LD	A,(MSGEFG)
	AND	%10000000
	JR	Z,MSOC02
	LD	D,$58
MSOC02
;;	LD	E,32
;;	LD	HL,OAM+$20
	LD	E,31
	LD	HL,OAM+$24
MSOC08
	LD	A,(HL)
	CP	D    ;$40
	LD	A,(MSGEFG)
	BIT	7,A
	JR	NZ,MSOC10
	CCF
MSOC10
	JR	C,MSOC20
;
	LD	A,(MSGENO)
	CP	$4F
	JR	NZ,MSOC11
;
	LD	A,(MSGENOH)
	AND	A
	JR	NZ,MSOC11
;
	INC	HL
	INC	HL
	LD	A,(HLD)
;
	DEC	HL
;
	CP	$9A
	JR	C,MSOC11	; Mesege obj ?
	CP	$A0
	JR	C,MSOC20
;				; no
MSOC11
	LD	(HL),$0
MSOC20
	INC	HL
	INC	HL
	INC	HL
	INC	HL
	DEC	E
	JR	NZ,MSOC08
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	部屋脱出ワンワン&マリンセットチェック	%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
WANWANCK
	LD	A,(DJFLAG)
	AND	A
	JR	Z,WACK001
;
	LD	A,(YKFLAG)
	AND	A
	RET	NZ
;
	LD	A,(DNJNNO)
	CP	$16	;アモス
;;	CP	$14	;アモス
	RET	Z
	CP	$14	;カナレットの城！
	RET	Z
	CP	$13	;ベッドルーム
	RET	Z
	CP	DJMAX
	RET	C
;
	LD	A,(GRNDPT)
;;	CP	$A0	;UFO Game
;;	RET	Z
	CP	$FD	;MANBO room
	RET	Z
	CP	$B1	;FISHG room
	RET	Z
;
WACK001
	LD	A,(NIWATFG)
;;	AND	A
	CP	$01
	JR	NZ,NWCK10
;
;	LD	A,(YKFLAG)
;	AND	A
;	RET	NZ
;
	LD	E,ENNO-1
	LD	D,$00
NWCK011
	LD	HL,ENMYNO
	ADD	HL,DE
	LD	A,(HL)
	CP	NIWAX
	JR	NZ,NWCK012
;
	LD	HL,ENMODE
	ADD	HL,DE
	LD	A,(HL)
	AND	A
	JR	Z,NWCK012	; Old NIWAX clear !
;
	LD	(HL),D
NWCK012
	DEC	E
	LD	A,E
	CP	$FF
	JR	NZ,NWCK011
;
	LD	A,NIWAX
	CALL	ENIDSHL
;
	LD	A,(PLXPSL)
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	A,(PLZPSL)
	LD	HL,ENZPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	A,(PLYPSL)
	LD	HL,PLDSYD
	ADD	A,(HL)
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),A
;
NWCK10
	LD	A,(OBAKEFG)
	CP	$01
	JR	Z,OBCK210
	CP	$02
	JR	NZ,OBCK10
;
	LD	A,(DJFLAG)
	AND	A
	JR	NZ,OBCK10
;
	LD	A,(GRNDPT)
	CP	$40
	JR	C,OBCK10
;
	LD	A,(WARPSV+$03)
	AND	%00000010
	JR	Z,OBCK10	;4 CLEAR?
;				;YES !
	LD	A,(BULLEV)
	CP	$02
	JR	C,OBCK0E	;6 ITEM HAVE?
;
	XOR	A
	JR	OBCK0F
OBCK0E
	LD	A,$01
OBCK0F
	LD	(OBAKEFG),A
	JR	OBCK10
;
OBCK200
;;	AND	A
;	LD	A,(OBAKEFG)
;	CP	$01
;	JR	NZ,OBCK10
;
OBCK210
	LD	E,ENNO-1
	LD	D,$00
OBCK011
	LD	HL,ENMYNO
	ADD	HL,DE
	LD	A,(HL)
	CP	OBAKE
	JR	NZ,OBCK012
;
	LD	HL,ENMODE
	ADD	HL,DE
	LD	A,(HL)
	AND	A
	JR	Z,OBCK012	; Old OBAKE clear !
;
	LD	(HL),D
OBCK012
	DEC	E
	LD	A,E
	CP	$FF
	JR	NZ,OBCK011
;
	LD	A,OBAKE
	CALL	ENIDSHL
;
	LD	A,(PLXPSL)
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	A,(PLYPSL)
	LD	HL,PLDSYD
	ADD	A,(HL)
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,ENWRK0
	ADD	HL,DE
	INC	(HL)
;
	LD	A,$2D
	LD	(SOUND1),A	;(S)
OBCK10
	LD	A,(MARINFG)
	AND	A
	JP	Z,MACK90
;
	LD	E,ENNO-1
	LD	D,$00
MACK011
	LD	HL,ENMYNO
	ADD	HL,DE
	LD	A,(HL)
	CP	GIRL1
	JR	NZ,MACK012
;
	LD	HL,ENMODE
	ADD	HL,DE
	LD	A,(HL)
	AND	A
	JR	Z,MACK012	; Old GIRL1 clear !
;
	LD	(HL),D
MACK012
	DEC	E
	LD	A,E
	CP	$FF
	JR	NZ,MACK011
;
	LD	A,GIRL1
	CALL	ENIDSHL
;
;;	LD	HL,ENMODE
;;	ADD	HL,DE
;;	LD	(HL),EINIT
;
	LD	A,(PLXPSL)
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A
	LD	HL,MAXBUF
	CALL	MRTRSB2
;
	LD	A,(PLYPSL)
	LD	HL,PLDSYD
	ADD	A,(HL)
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),A
	LD	HL,MAYBUF
	CALL	MRTRSB2
;
	LD	A,(PLZPSL)
	LD	HL,ENZPSL
	ADD	HL,DE
	LD	(HL),A
	LD	HL,MAZBUF
	CALL	MRTRSB2
;
	LD	HL,ENWRK3
	ADD	HL,DE
	LD	(HL),$01
;
	LD	HL,ENTIM1
	ADD	HL,DE
	LD	(HL),$0C
;
GOMEN
	LD	A,(GRNDPT)
	CP	$A4
	JR	NZ,GOMEN10
;
	LD	A,(DNJNNO)
	CP	$11
	JR	NZ,GOMEN10
;
	LD	A,$08
	LD	(SOUND1),A	;(S)
	LD	(ITEMNOT),A
;
	LD	HL,ENTIM2
	ADD	HL,DE
	LD	(HL),$99-$20	;アッ ゴメン！
GOMEN10
	LD	A,(PLCMKI)
	LD	HL,MAMBUF
	CALL	MRTRSB2
;
	LD	A,(MAWAIT)
	AND	A
	JR	Z,MAST190
;
	LD	A,(PLXPSL)
	LD	HL,ENXPSL
	ADD	HL,DE
	ADD	A,$20
	LD	(HL),A
;;	LD	HL,MAXBUF
;;	CALL	MRTRSB2
;
	LD	A,(PLYPSL)
	LD	HL,ENYPSL
	ADD	HL,DE
	ADD	A,$10
	LD	(HL),A
;;	LD	HL,MAYBUF
;;	CALL	MRTRSB2
;;;
;;	XOR	A
;;	LD	HL,MAZBUF
;;	CALL	MRTRSB2
;;
;	LD	A,$18
;	LD	(MAWTIM),A
MAST190
	RET
;=============================================
MRTRSB2
	LD	C,$10
MAR00042
	LD	(HLI),A
	DEC	C
	JR	NZ,MAR00042
	RET
;-------------------------------------------------
MACK90
	LD	A,(GRNDPT)
	CP	$A7
	RET	Z	;マスターの家？
;				;NO!
	LD	A,(WANFLG)
	CP	$01
	JR	NZ,WACK90
;
	LD	E,ENNO-1
	LD	D,$00
WACK011
	LD	HL,ENMYNO
	ADD	HL,DE
	LD	A,(HL)
	CP	WANWAN
	JR	NZ,WACK012
;
	LD	HL,ENMODE
	ADD	HL,DE
	LD	A,(HL)
	AND	A
	JR	Z,WACK012	; Old wanwan clear !
;
	LD	(HL),D
WACK012
	DEC	E
	LD	A,E
	CP	$FF
	JR	NZ,WACK011
;
	LD	A,WANWAN
	CALL	ENIDSHL
;
;;	LD	HL,ENMODE
;;	ADD	HL,DE
;;	LD	(HL),EINIT
;
	LD	A,(PLXPSL)
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	A,(PLYPSL)
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	A,(PLZPSL)
	LD	HL,ENZPSL
	ADD	HL,DE
	LD	(HL),A
WACK90
	RET
;=============================================
;****************************************
;*	 サブルーチン			*
;****************************************
GMRESET
	CALL	SOUNDCLR	;(S)
;
	XOR	A
;;	LD	A,$000
	LD	(GMMODE),A
	LD	(ITMODE),A
;
;;	XOR	A
	LD	(OBP0FG),A
	LD	(OBP1FG),A
	LD	(BGPFG),A
	LD	(BGP),A
	LD	(OBP0),A
	LD	(OBP1),A
	LD	(SCCV),A
	LD	(SCCH),A

	LD	(ONOFFG),A	; On off block time
	LD	(ONOFTM),A	; Flag !
;
	LD	A,$18
	LD	(OPKYTM),A	; Logo display wait !
;;	CALL	RAMCLR
;
	RET
;===============================
MSTADL
	DW	CHRDAT+$1700
	DW	CHRDAT+$1710
	DW	CHRDAT+$1720
	DW	CHRDAT+$1730
	DW	CHRDAT+$1740
	DW	CHRDAT+$1750
	DW	CHRDAT+$1760
	DW	CHRDAT+$1770
	DW	CHRDAT+$1780
	DW	CHRDAT+$1790
	DW	CHRDAT+$1800
	DW	CHRDAT+$1810
	DW	CHRDAT+$1820
	DW	CHRDAT+$1830
	DW	CHRDAT+$1840
	DW	CHRDAT+$1850
;--------------------------------
MSGTEST ; メッセージ テスト 田辺バージョン
	LD	A,(MSTNO)
	AND	$0F
	SLA	A
	LD	E,A
	LD	D,$00
	LD	HL,MSTADL
	ADD	HL,DE
	LD	A,(HLI)
	LD	H,(HL)
	LD	L,A
;
	LD	DE,CHRRAM+$16D0
	LD	BC,$0010
	LD	A,$0F
	CALL	DATA_MOV2
;
	LD	A,(MSTNO)
	SWAP	A
	AND	$0F
	SLA	A
	LD	E,A
	LD	D,$00
	LD	HL,MSTADL
	ADD	HL,DE
	LD	A,(HLI)
	LD	H,(HL)
	LD	L,A
;
	LD	DE,CHRRAM+$16C0
	LD	BC,$0010
	LD	A,$0F
	CALL	DATA_MOV2
;
	LD	A,$6C
	LD	($9909),A
	INC	A
	LD	($990A),A
MEST90
	RET
;==============================
DJMSCK	;ダンジョン案内メッセージセットチェック！
	LD	A,(PLMODE)
	CP	PMOVE
	JR	NZ,DMSCK10
;
	LD	A,(BGCKOF)
	AND	A
	JR	NZ,DMSCK10
;
	LD	A,(DNJNNO)
	ADD	A,$56
	CALL	MSGCHK
DMSCK10
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	海岸熱いデモ！			 %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
LOVEDEMO
	LD	A,(MSGEFG)
	AND	A
	JR	NZ,LOV000
;
	LD	A,(LVTIM0)
	AND	A
	JR	Z,LOV000
;
	DEC	A
	LD	(LVTIM0),A
LOV000
	LD	A,(LVWRK0)
	AND	A
	JR	Z,LOV001
;
	DEC	A
	LD	(LVWRK0),A
LOV001
	LD	A,(ITMODE)
	RST	0
	DW	LOV0000	;カラーデータの退避
	DW	LOV0800
	DW	LOV1000
	DW	LOV2000
	DW	LOV2800
	DW	LOV3000
	DW	LOV4000
	DW	LOV5000
	DW	LOV6000
	DW	LOV7000
	DW	LOV8000
	DW	LOV9000
	DW	LOVA000
	DW	LOVB000
;
	DW	TSV4000
;=====================================
LOV0000
		CALL	ITMINC
		LD	A,(CGBFLG)
		AND	A
		JR	Z,LOV0800
		LD	HL,CGWORK
		LD	C,$080
		DI			;割り込み禁止
LOV0000_000
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
		JR	NZ,LOV0000_000
		XOR	A
		LD	(SVBK),A
		EI			;割り込み許可
;
;=====================================
LOV0800
	LD	A,$01
	LD	(ITEMNOT),A
;
	CALL	FDIN
;
	LD	A,(SBHR)
	CP	$04
	JR	NZ,LOV0810
;
;
;	LD	A,$03
;	LD	(SLEVEL),A
;	LD	A,$30
;	LD	(SLEVEL+1),A
;
	CALL	ITMINC
;
	XOR	A
	LD	(SCXAD),A
;
	CALL	SCRRCLR
	CALL	KAMOCL
;
	LD	A,VRMB2	 ;CL
;;	LD	A,VRMCL
	LD	(BLNKFG),A
LOV0810
	RET
;=====================================
LOV1000
	LD	A,LOVCD
	LD	(BLNKFG),A
;
	XOR	A
	LD	(OVSLCT),A
;
	JP	ITMINC
;=====================================
LOV2000
	LD	A,LOVBG
	LD	(VRFLG),A
;
	LD	A,$FF
	LD	(WNDYPS),A
;
	XOR	A
	LD	(SCCH),A
	LD	(SBHR),A
	LD	(SBCNT),A
;
	LD	A,$90
	LD	(SCCV),A
;
	LD	A,$40
	LD	(NAMIOTO),A
	LD	A,$A0
	LD	(KAMOSE),A

;-------------------------------------------------------------
		LD	A,$001		; フェードインフラグＯＮ
		LD	(FADEMDFG),A
;-------------------------------------------------------------

;- - - - -
KAMOSET
;;1
	LD	A,$E0
	LD	(EXYPSL),A
	LD	A,$00
	LD	(EXXPSL),A
	LD	A,$01
	LD	(EXMODE),A
	LD	A,$0C
	LD	(EXYSPD),A
	LD	A,$08
	LD	(EXXSPD),A
	LD	A,$00
	LD	(EXTIM0),A
	LD	(LDWRK0),A
;-2 - - - -
	LD	A,$20
	LD	(EXYPSL+1),A
	LD	A,$A0
	LD	(EXXPSL+1),A
	LD	A,$01
	LD	(EXMODE+1),A
	LD	A,$08
	LD	(EXYSPD+1),A
	LD	A,$F8
	LD	(EXXSPD+1),A
	LD	A,$40
	LD	(EXTIM0+1),A
	LD	A,$24
	LD	(LDWRK0+1),A
;-3 - - - -
	LD	A,$48
	LD	(EXYPSL+2),A
	LD	A,$30
	LD	(EXXPSL+2),A
	LD	A,$02
	LD	(EXMODE+2),A
	LD	A,$00
	LD	(EXYSPD+2),A
	LD	A,$00
	LD	(EXXSPD+2),A
	LD	A,$00
	LD	(EXTIM0+2),A
	LD	A,$02
	LD	(LDWRK0+2),A
;-4 - - - -
	LD	A,$3C
	LD	(EXYPSL+3),A
	LD	A,$40
	LD	(EXXPSL+3),A
	LD	A,$02
	LD	(EXMODE+3),A
	LD	A,$00
	LD	(EXYSPD+3),A
	LD	A,$00
	LD	(EXXSPD+3),A
	LD	A,$00
	LD	(EXTIM0+3),A
	LD	A,$00
	LD	(LDWRK0+3),A
;
;-5 - - - -
	LD	A,$40
	LD	(EXYPSL+4),A
	LD	A,$50
	LD	(EXXPSL+4),A
	LD	A,$02
	LD	(EXMODE+4),A
	LD	A,$00
	LD	(EXYSPD+4),A
	LD	A,$00
	LD	(EXXSPD+4),A
	LD	A,$00
	LD	(EXTIM0+4),A
	LD	A,$00
	LD	(LDWRK0+4),A
;
;-6 - - - -
	LD	A,$3C
	LD	(EXYPSL+5),A
	LD	A,$60
	LD	(EXXPSL+5),A
	LD	A,$02
	LD	(EXMODE+5),A
	LD	A,$00
	LD	(EXYSPD+5),A
	LD	A,$00
	LD	(EXXSPD+5),A
	LD	A,$00
	LD	(EXTIM0+5),A
	LD	A,$00
	LD	(LDWRK0+5),A
;
;-7 - - - -
	LD	A,$44
	LD	(EXYPSL+6),A
	LD	A,$68
	LD	(EXXPSL+6),A
	LD	A,$02
	LD	(EXMODE+6),A
	LD	A,$00
	LD	(EXYSPD+6),A
	LD	A,$00
	LD	(EXXSPD+6),A
	LD	A,$00
	LD	(EXTIM0+6),A
	LD	A,$00
	LD	(LDWRK0+6),A
;
	JP	ITMINC
;=====================================
LOVBGD
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
LOVOBD
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
LOV2800
		LD	A,(CGBFLG)
		AND	A
		JR	Z,LOV2800_100

;-------------------------------------------------
;	ＣＧＢ用 ホワイトイン
;-------------------------------------------------
		LD	A,(FRCNT)	; ＜－－－
		AND	%00000111	; 普通のホワイトインより
		JR	NZ,LOV3000	; ゆっくりめ

		CALL	FDOUT

		LD	A,(SBHR)
		CP	$04
		JR	NZ,LOV3000

		CALL	ITMINC
		JR	LOV3000
LOV2800_100
;-------------------------------------------------

	LD	A,(FRCNT)
	AND	$07
	JR	NZ,LOV2810
;
	LD	A,(LVWRK1)
	INC	A
	LD	(LVWRK1),A
	CP	$0C
	JR	NZ,LOV2810
;
	CALL	ITMINC
LOV2810
	LD	A,(FRCNT)
	AND	$03
	LD	E,A
	LD	A,(LVWRK1)
	ADD	A,E
	LD	E,A
	LD	D,$00
	LD	HL,LOVBGD
	ADD	HL,DE
	LD	A,(HL)
	LD	(BGPFG),A
	LD	(OBP1FG),A
	LD	HL,LOVOBD
	ADD	HL,DE
	LD	A,(HL)
	LD	(OBP0FG),A
;
;=====================================
LOV3000
	LD	A,(FRCNT)
	AND	$03
	JR	NZ,LOV3010
;
	LD	A,(SCCV)
	INC	A
	LD	(SCCV),A
	CP	$00
	JR	NZ,LOV3010
;
	LD	A,$80
	LD	(LVTIM0),A
;
	CALL	ITMINC
LOV3010
	CALL	LVOBJ
	RET
;=====================================
LOV4000
	CALL	LVOBJ
;
	LD	A,(MSGEFG)
	AND	A
	JR	NZ,LOV4060
;
	LD	A,(LVTIM0)
	AND	A
	JR	NZ,LOV4010
;
	LD	A,$D8
	CALL	MSGCH22
;
	CALL	ITMINC
LOV4010
	RET
LOV4060
	LD	A,$02
	LD	(LVWRK0),A
	RET
;=====================================
LOV5000
	CALL	LVOBJ
;
	LD	A,(MSGEFG)
	AND	A
	JR	NZ,LOV5010
;
	LD	A,$80
	LD	(LVWRK0),A
;
	LD	A,$C0
	LD	(LVTIM0),A
;
	CALL	ITMINC
LOV5010
	RET
;=====================================
LOV6000
	CALL	LVOBJ
;
	LD	A,(LVTIM0)
	AND	A
	JR	NZ,LOV6010
;
	LD	A,$D9
	CALL	MSGCH22
;
	JP	ITMINC
LOV6010
	RET
;=====================================
LOV7000
	CALL	LVOBJ
;
	LD	A,(MSGEFG)
	AND	A
	JR	NZ,LOV7010
;
	LD	A,$80
	LD	(LVWRK0),A
;
	LD	A,$C0
	LD	(LVTIM0),A
;
	CALL	ITMINC
LOV7010
	RET
;=====================================
LOV8000
	CALL	LVOBJ
;
	LD	A,(LVTIM0)
	AND	A
	JR	NZ,LOV8010
;
	LD	A,$DA
	CALL	MSGCH22
;
	JP	ITMINC
LOV8010
	RET
;=====================================
LOV9000
	CALL	LVOBJ
;
	LD	A,(MSGEFG)
	AND	A
	JR	NZ,LOV9090
;
	LD	A,(MSANSR)
	AND	A
	JR	NZ,LOV9080
;
	LD	A,$DB
	CALL	MSGCH22
;
	CALL	ITMINC
	RET
LOV9080
	LD	A,$DE
	CALL	MSGCH22
;
;(CGB)	LD	A,$05
		LD	A,$05+1
	LD	(ITMODE),A
;
	LD	A,$05
	LD	(LVTIM0),A
	RET
LOV9090
	LD	A,$02
	LD	(LVWRK0),A
	RET
;=====================================
LOVA000
	CALL	LVOBJ
;
	LD	A,(MSGEFG)
	AND	A
	JR	NZ,LOVA0A0
;
	LD	A,$DC
	CALL	MSGCH22
;
	LD	A,$30
	LD	(LVTIM0),A
;
	CALL	ITMINC
LOVA0A0
	RET
;=====================================
LOVB000
	CALL	LVOBJ
;
	LD	A,$02
	LD	(LVWRK0),A
;
	LD	A,(LVTIM0)
	AND	A
	RET	NZ
;
	CALL	SOUNDCLR	;(S)
;;	RET
;
	CALL	ITNEXT
;-----------------------------------
	LD	A,$01
	LD	(MARINFG),A	;マリンオプションON!
KAMOCL
	LD	E,$10
;
	LD	HL,EXMODE
	XOR	A
LOVB010
	LD	(HLI),A
	DEC	E
	JR	NZ,LOVB010
	RET
;===========================================
LMARINCD			; マリン１
	DB	$40,$01,$40,$21
LMARINCD2			; マリン２
	DB	$46,$01,$48,$01
LLINKCD				; リンク
	DB	$42,$00,$44,$00
LLINKCD1			; リンク（赤服）
	DB	$42,$02,$44,$02
LLINKCD2			; リンク（青服）
	DB	$42,$03,$44,$03
;- - - - - - - - - - - - - - - - - - - -
LVOBJ
	CALL	KAMOME
;
	LD	A,(NAMIOTO)
	INC	A
	CP	$A0
	JR	NZ,LMEX10	; sound set !
;
	LD	A,$0F
	LD	(SOUND3),A	;(S)
;
	XOR	A
LMEX10
	LD	(NAMIOTO),A
;
	LD	A,(KAMOSE)
	AND	A
	JR	NZ,LKMSE10
;
	LD	A,$21
	LD	(SOUND1),A	;(S)
;
	CALL	RNDSUB
	AND	$7F
	ADD	A,$60
	LD	(KAMOSE),A
LKMSE10
	DEC	A
	LD	(KAMOSE),A
;
	LD	A,(SCCV)
	DEC	A
	CP	$C0
	RET	C
;
	LD	DE,LMARINCD
;
	LD	A,(LVWRK0)
	AND	A
	JR	Z,LVO010
	CP	$60
	JR	NC,LVO010
;
	LD	DE,LMARINCD2
LVO010
	LD	A,$7C
	LD	(ENDSYP),A
;
	LD	A,$58
	LD	(ENSVXL),A
;
	LD	HL,ENOAM
	CALL	LVCSET
;
	LD	A,$48
	LD	(ENSVXL),A
;
	LD	DE,LLINKCD
		ld	a,(CLOTHFG)
		and	a
		jr	z,LVO010_050
;
		ld	de,LLINKCD1
		cp	001
		jr	z,LVO010_050
;
		ld	de,LLINKCD2
;
LVO010_050
	LD	HL,ENOAM+$08
	CALL	LVCSET
	RET
;===========================================
LVCSET
	PUSH	BC
;
	LD	A,(SCCV)
	LD	C,A
;
	LD	A,(ENDSYP)
	SUB	C
	LD	(ENHELP),A
	LD	(HLI),A		; Y L
;
	LD	A,(ENSVXL)
	LD	(HLI),A		; X L
;
	LD	A,(DE)
	INC	DE
	LD	(HLI),A		; C L
;
	LD	A,(DE)
	INC	DE
	LD	(HLI),A		; A L
;- - Right - - -
	LD	A,(ENDSYP)   ;(HL)
	SUB	C
	LD	(HLI),A		; Y R
;
	LD	A,(ENSVXL)
	ADD	A,$08
	LD	(HLI),A		; X R
;
	LD	A,(DE)
	INC	DE
	LD	(HLI),A		; C R
;
	LD	A,(DE)
	LD	(HL),A		; A R
;
	POP	BC
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%					 %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
KAMOME
	LD	C,$08
	LD	B,$00
KAMO008
	LD	HL,EXMODE
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,KAMO010
;
	PUSH	AF
;
	LD	HL,EXXPSL
	ADD	HL,BC
	LD	A,(HL)
	LD	(ENSVXL),A
;
	LD	HL,EXYPSL
	ADD	HL,BC
	LD	A,(HL)
	LD	(ENDSYP),A
;
	LD	HL,EXTIM0
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,KAMO002
;
	DEC	(HL)
KAMO002
	POP	AF
;
	CALL	KAMOMAIN
KAMO010
	DEC	C
	LD	A,C
	CP	$FF
	JR	NZ,KAMO008
	RET
;=========================================
KAMOMAIN
	DEC	A
	RST	00
	DW	KAMOME1
	DW	KAMOME2
;--------------------------------------
KM1CHPT
	DW	KAMO1CD
	DW	KAMO2CD
	DW	KAMO3CD
	DW	KAMO4CD
	DW	KAMO5CD
	DW	KAMO6CD
;================================
KAMO1CD
	DB	$50,$00,$50,$20
KAMO2CD
	DB	$52,$00,$52,$20
KAMO3CD
	DB	$54,$00,$54,$20
KAMO4CD
	DB	$56,$00,$56,$20
KAMO5CD
	DB	$58,$00,$58,$20
KAMO6CD
	DB	$5A,$00,$5A,$20
KM1PTDT
;;	DB	3,3,3,3,3,3
;;	DB	3,3,3,3,3,3
;;	DB	3,3,3,3,3,3
	DB	3,3,3,3,3,3
	DB	3,3,3,3,4,5
	DB	0,1,2,3,4,5
	DB	0,1,2,3,4,5
	DB	0,1,2,3,4,5
	DB	0,1,2,3,4,5
	DB	0,1,2,3,4,5
	DB	0,1,2,3,3,3
;;	DB	3,3,3,3,3,3
	DB	3,3,3,3,3,3
	DB	3,3,3,3,3,3
	DB	3,3,3,3,4,5
	DB	0,1,2,3,4,5
	DB	0,1,2,3,4,5
	DB	0,1,2,3,4,5
	DB	0,1,2,3,4,5
	DB	0,1,2,3,4,5
	DB	0,1,2,3,4,5
	DB	0,1,2,3,4,5
;- - - - - - - - - - - - - - - - -
KAMOME1
	LD	HL,EXTIM0
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	RET	NZ
;
;;	LD	A,(FRCNT)
;;	AND	$03
;;	JR	NZ,KMO1008
;
	LD	HL,LDWRK1
	ADD	HL,BC
	LD	A,(HL)
	INC	A
	LD	(HL),A
	CP	$06
	JR	C,KMO1008
;
	LD	(HL),B
;
	LD	HL,LDWRK0
	ADD	HL,BC
	INC	(HL)
KMO1008
	LD	HL,LDWRK0
	ADD	HL,BC
	LD	E,(HL)
	LD	D,B
	LD	HL,KM1PTDT
	ADD	HL,DE
	LD	E,(HL)
	SLA	E
	LD	D,B
	LD	HL,KM1CHPT
	ADD	HL,DE
	LD	A,(HLI)
	LD	D,(HL)
	LD	E,A
;
	PUSH	DE
;
	LD	HL,ENOAM+$10
	LD	A,C
	RLA
	RLA
	RLA
	AND	%01111000
	LD	E,A
	LD	D,B
	ADD	HL,DE
;
	POP	DE
	CALL	LVCSET
;
	CALL	KMMVCL
;
	LD	A,(FRCNT)
	AND	$07
	JR	NZ,KMO1010
;
	LD	HL,EXYSPD
	ADD	HL,BC
	LD	A,(HL)
	CP	$FB
;;	CP	$F8
	JR	Z,KMO1010
;
	DEC	(HL)
KMO1010
	LD	A,(ENHELP)
	CP	$F0
	JR	C,KMO1020
;
	LD	HL,EXYSPD
	ADD	HL,BC
	LD	A,(HL)
	AND	%10000000
	RET	Z
;==================================
KMCLER
	LD	HL,EXMODE
	ADD	HL,BC
	LD	(HL),B
KMO1020
	RET
;- - - - - - - - - - - - - - - - -
;--------------------------------------
KM2CHPT
	DW	KAM21CD
	DW	KAM22CD
	DW	KAM23CD
	DW	KAM24CD
;================================
KAM21CD
	DB	$4C,$00,$4C,$20
KAM22CD
	DB	$4E,$00,$4E,$20
KAM23CD
	DB	$5C,$00,$5C,$20
KAM24CD
	DB	$5E,$00,$5E,$20
K2FSPD
	DB	$01,$FF,$01,$FF
	DB	$FE,$02,$01,$FF
K2XCHK
	DB	$4C
	DB	$52
	DB	$58
	DB	$5C
	DB	$60
;------------------------------------------
KAMOME2
	LD	HL,EXYSPD
	ADD	HL,BC
	LD	A,(HL)
	LD	E,$03
	AND	%10000000
	JR	Z,KMO2020
;
	LD	HL,LDWRK0
	ADD	HL,BC
;
	LD	A,(FRCNT)
	AND	$07
	JR	NZ,KMO2010
;
	LD	A,(HL)
	INC	A
	AND	$03
	LD	(HL),A
;
KMO2010
	LD	E,(HL)
KMO2020
	SLA	E
	LD	D,B
	LD	HL,KM2CHPT
	ADD	HL,DE
	LD	A,(HLI)
	LD	D,(HL)
	LD	E,A
;
	PUSH	DE
;
	LD	HL,ENOAM+$10
	LD	A,C
	RLA
	RLA
	RLA
	AND	%01111000
	LD	E,A
	LD	D,B
	ADD	HL,DE
;
	POP	DE
	CALL	LVCSET
;
	CALL	KMMVCL
;- - - - - - - - - - - - - - - - - - -
	LD	A,C
	SLA	A
	SLA	A
	SLA	A
	SLA	A
	LD	E,A
	LD	A,(FRCNT)
	ADD	A,E
	LD	(ENHELP2),A
	AND	$3F
	JR	NZ,K1F020
;
	CALL	RNDSUB
	AND	$07
	LD	E,A
	LD	D,B
	LD	HL,K2FSPD
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,EXXSPD
	ADD	HL,BC
	LD	(HL),A
;
K1F020
	LD	A,(ENHELP2)
	ADD	A,$40
	AND	$3F
	JR	NZ,K1F030
;
	CALL	RNDSUB
	AND	$07
	LD	E,A
	LD	D,B
	LD	HL,K2FSPD
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,EXYSPD
	ADD	HL,BC
	LD	(HL),A
K1F030
;;	LD	A,(FRCNT)
;;	AND	$1F
;;	JR	NZ,K1F050
;
	LD	HL,EXSTAT
	ADD	HL,BC
	LD	A,(HL)
	INC	A
	LD	(HL),A
	CP	$13
	JR	C,K1F050
;
	LD	(HL),B
;
	LD	HL,K2XCHK-2
	ADD	HL,BC
	LD	D,(HL)
;
	LD	HL,EXXPSL
	ADD	HL,BC
	LD	A,(HL)
	SUB	D  ;$58
	LD	E,$01
	AND	%10000000
	JR	NZ,K1F040
;
	LD	E,$FF
K1F040
	LD	A,(HL)
	ADD	A,E
	LD	(HL),A
;
	LD	HL,EXYPSL
	ADD	HL,BC
	LD	A,(HL)
	SUB	$48
	LD	E,$01
	AND	%10000000
	JR	NZ,K1F042
	LD	E,$FF
K1F042
	LD	A,(HL)
	ADD	A,E
	LD	(HL),A
K1F050
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%				 %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
KMMVCL
;
	CALL	KMXCLC		; X calc
;
KMYCLC
	PUSH	BC
	LD	A,C
	ADD	A,EXNO
	LD	C,A

	CALL	KMXCLC		; Y calc
	POP	BC
	RET
;-----------------------------------------
KMXCLC
	LD	HL,EXXSPD
	ADD	HL,BC
;
	LD	A,(HL)
;;	AND	A
;;	JR	Z,KML090
;
	PUSH	AF
	SWAP	A
	AND	$F0
	LD	HL,EXXSDR
	ADD	HL,BC
	ADD	A,(HL)
	LD	(HL),A
	RL	D
;
	LD	HL,EXXPSL
KML00
	ADD	HL,BC
;
	POP	AF
;
	LD	E,$0
	BIT	7,A
	JR	Z,KMC00
	LD	E,$F0
KMC00
	SWAP	A
	AND	$0F
	OR	E
	RR	D
	ADC	A,(HL)
	LD	(HL),A
KML090
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
MSGCH22
	LD	E,A
;
	LD	A,(PLYPSL)
	PUSH	AF
;
	LD	A,$60
	LD	(PLYPSL),A
;
	LD	A,E
	CALL	MSGCH2
;
	POP	AF
	LD	(PLYPSL),A
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	ピーチ写真！			 %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
PEACHSB
	LD	A,(ITMODE)
	RST	0
	DW	PEC0000	;カラーデータの退避
	DW	PEC0800
	DW	PEC1000
	DW	PEC2000
	DW	PEC2800
	DW	PEC3000
	DW	TSV4000
;---------------------------
	DW	TBG1000
	DW	TBG2000
	DW	TBG3000
	DW	TBGEND
;
;
;
;
;=====================================
PEC0000
		CALL	ITMINC
		LD	A,(CGBFLG)
		AND	A
		JR	Z,PEC0800
		LD	HL,CGWORK
		LD	C,$080
		DI			;割り込み禁止
PEC0000_0600
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
		JR	NZ,PEC0000_0600
		XOR	A
		LD	(SVBK),A
		EI			;割り込み許可
;
;=====================================
PEC0800
	LD	A,$01
	LD	(ITEMNOT),A
;
	CALL	FDIN
;
	LD	A,(SBHR)
	CP	$04
	JR	NZ,PEC0810
;
	CALL	SCRRCLR
;
	LD	A,(DNJNNO)
	CP	$06
	JR	Z,PEC0808	;塔デモ？
;
	LD	A,$03
	LD	(SLEVEL),A
	LD	A,$30
	LD	(SLEVEL+1),A
PEC0808
	CALL	ITMINC
;
	XOR	A
	LD	(SCXAD),A
;
	LD	A,VRMB2	 ;CL
;;	LD	A,VRMCL
	LD	(BLNKFG),A
PEC0810
	RET
;=====================================
PEC1000
	LD	E,TOUCD
	LD	A,(DNJNNO)
	CP	$06
	JR	Z,PEC1010
;;	LD	A,GVCHG
	LD	A,(GRNDPT)
	CP	$DD
;
	LD	E,PECCD
;
	JR	NZ,PEC1010
;
	LD	E,KABCD
PEC1010
	LD	A,E
	LD	(BLNKFG),A
;
	XOR	A
	LD	(OVSLCT),A
;
	JP	ITMINC
;=====================================
PEC2000
;;	LD	A,SPTST
;;	LD	(BLNKFG),A
	LD	E,TOUBG
	LD	A,(DNJNNO)
	CP	$06
	JR	Z,PEC2020
;
	LD	A,(GRNDPT)
	CP	$DD
	LD	E,PECBG
	JR	NZ,PEC2020
	LD	E,KABBG
PEC2020
	LD	A,E
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
	LD	E,$8
	LD	HL,BGMCNT
PEC2808
	LD	(HLI),A
	DEC	E
	JR	NZ,PEC2808
;
;-------------------------------------------------------------
		LD	A,$001		; フェードインフラグＯＮ
		LD	(FADEMDFG),A
;-------------------------------------------------------------
;
	JP	ITMINC
;=====================================
PEC2800
	CALL	TBGCST
;
	CALL	FDOUT
;
	LD	A,(SBHR)
	CP	$04
	JR	NZ,PEC2810
;
	CALL	ITMINC
;
	LD	A,$80
	LD	(BGMCNT),A
PEC2810
	RET
;=====================================
PEC3000
	LD	A,(DNJNNO)
	CP	$06
	JR	NZ,PEC3008
;
	CALL	TBGCST
;
;(CGB)	LD	A,$06
		LD	A,$06+1	; < PEC0000 > 追加の為
	LD	(ITMODE),A
	RET
;--------------------------
PEC3008
	LD	A,(KEYA2)
	AND	%10110000
	JR	Z,PEC3010
;
	LD	A,$13
	LD	(SOUND1),A	;(S)
;
ITNEXT
	CALL	ITMINC
;
	XOR	A
	LD	(SBHR),A
	LD	(SBCNT),A
PEC3010
	RET
;--------------------------------------
TBG1000
	CALL	TBGCST
;
	LD	A,(BGMCNT)
	DEC	A
	LD	(BGMCNT),A
	JR	NZ,TBG1010
;
	LD	(TILTYD),A
;
	LD	A,$20
	LD	(BGMCNT),A
	JP	ITMINC
;---------------------------------------
TBG1010
	LD	E,$00
	AND	$04
	JR	Z,TBG1020
	LD	E,$FE
TBG1020
	LD	A,E
	LD	(TILTYD),A
;
	RET
;--------------------------------------
TBG2000
	CALL	TBGCST
	CALL	TBGTILT
;
	LD	A,(BGMCNT)
	DEC	A
	LD	(BGMCNT),A
	JR	NZ,TBG2010
;
	CALL	BBSDST	;(S)
;
	LD	A,$30
	LD	(BGMCNT),A
;
	LD	A,$30
	LD	(BGMTIM0),A
;
	LD	A,$18
	LD	(BGMWRK0),A
;
	LD	A,(BGMCNT2)
	ADD	A,$08
	LD	(BGMCNT2),A
;
	LD	A,(BGMCNT4)
	INC	A
	LD	(BGMCNT4),A
	CP	$04
	JR	NZ,TBG2010
;
	LD	A,$80
;;	LD	A,$30
	LD	(BGMCNT),A
;
	CALL	ITMINC
TBG2010
	RET
;------------------------------------
TBG3000
	CALL	TBGCST
	CALL	TBGTILT
;
;;	LD	A,(KEYA2)
;;	AND	%10110000
;;	RET	Z
	LD	HL,BGMCNT
	DEC	(HL)
	RET	NZ
;
	CALL	ITMINC
;
	XOR	A
	LD	(SBHR),A
	LD	(SBCNT),A
	RET
;------------------------------
TBGTILT
	XOR	A
	LD	(TILTYD),A
;
	LD	A,(BGMWRK0)
	AND	A
	JR	Z,TBT100
	DEC	A
	LD	(BGMWRK0),A
	LD	E,$FE
	AND	$04
	JR	Z,TBT080
	LD	E,$00
TBT080
	LD	A,E
	LD	(TILTYD),A
TBT100
	RET
;==============================================
TBGCNT
	DB	20,20,16,16,12,12
TBGCNT_CGB
	DB	20+3,20+3,16+3,16+3,12+3,12+3
TBGCDT
;
	DB	$00,$00,$CC,$10
	DB	$00,$08,$CE,$10
	DB	$00,$10,$DC,$10
	DB	$00,$18,$CC,$30
;
	DB	$10,$00,$DE,$10
	DB	$10,$08,$E0,$10
	DB	$10,$10,$E2,$10
	DB	$10,$18,$DE,$30
;
	DB	$20,$00,$E4,$10
	DB	$20,$08,$E6,$10
	DB	$20,$10,$E8,$10
	DB	$20,$18,$E4,$30
;
	DB	$30,$00,$DE,$10
	DB	$30,$08,$E0,$10
	DB	$30,$10,$E0,$30
	DB	$30,$18,$DE,$30
;
	DB	$40,$00,$DE,$10
	DB	$40,$08,$E0,$10
	DB	$40,$10,$E0,$30
	DB	$40,$18,$DE,$30
;
TBGCDT_CGB
	DB	$00,$10,$DC,$16		; 階段
	DB	$10,$10,$E2,$16
	DB	$20,$10,$E8,$16
;
	DB	$00,$00,$CC,$15
	DB	$00,$08,$CE,$15
	DB	$00,$10,$CE,$35
	DB	$00,$18,$CC,$35
;
	DB	$10,$00,$DE,$15
	DB	$10,$08,$E0,$15
	DB	$10,$10,$E0,$35
	DB	$10,$18,$DE,$35
;
	DB	$20,$00,$E4,$15
	DB	$20,$08,$E6,$15
	DB	$20,$10,$E6,$35
	DB	$20,$18,$E4,$35
;
	DB	$30,$00,$DE,$15
	DB	$30,$08,$E0,$15
	DB	$30,$10,$E0,$35
	DB	$30,$18,$DE,$35
;
	DB	$40,$00,$DE,$15
	DB	$40,$08,$E0,$15
	DB	$40,$10,$E0,$35
	DB	$40,$18,$DE,$35
;
TBGSMD
;0
	DB	$48,$08,$F0,$07
	DB	$48,$10,$F2,$07
	DB	$48,$18,$F4,$07
	DB	$48,$20,$F4,$27
	DB	$48,$28,$F2,$27
	DB	$48,$30,$F0,$27
TBGSMD1
;1
	DB	$48,$08,$F6,$07
	DB	$48,$10,$F8,$07
	DB	$48,$18,$FA,$07
	DB	$48,$20,$FA,$27
	DB	$48,$28,$F8,$27
	DB	$48,$30,$F6,$27
TBGSMD2
;2
	DB	$48,$08,$FC,$07
	DB	$48,$10,$FE,$07
	DB	$48,$18,$EE,$07
	DB	$48,$20,$EE,$27
	DB	$48,$28,$FE,$27
	DB	$48,$30,$FC,$27
TBGSMAD
	DW	TBGSMD
	DW	TBGSMD1
	DW	TBGSMD2
;------------------------------------------
TBGCST
	LD	A,(DNJNNO)
	CP	$06
	RET	NZ
;
	XOR	A
	LD	(ENCHPT2),A
	LD	(ENFLCL),A
	LD	(ENCHNO),A
;
	LD	A,$38
	LD	(ENSVXL),A
	LD	A,(TILTYD)
	LD	E,A
	LD	A,$20
	SUB	E
	LD	(ENDSYP),A
;
	LD	A,(BGMTIM0)
	AND	A
	JR	Z,TBGC10
;
	DEC	A
	LD	(BGMTIM0),A
;
	LD	A,(FRCNT)
	AND	$07
	LD	A,(BGMCNT3)
	JR	NZ,TBGC08
	INC	A
	CP	$03
	JR	NZ,TBGC08
	XOR	A
TBGC08
	LD	(BGMCNT3),A
;
	RLA
	AND	%00000110
	LD	E,A
	LD	D,B
	LD	HL,TBGSMAD
	ADD	HL,DE
	LD	A,(HLI)
	LD	H,(HL)
	LD	L,A
;
	LD	C,$06
	CALL	ENOMST2
;----------------------------------
TBGC10
	LD	A,$48
	LD	(ENSVXL),A
	LD	A,(TILTYD)
	LD	E,A
	LD	A,(BGMCNT2)
	ADD	A,$20
	SUB	E
	LD	(ENDSYP),A
;
	LD	A,(BGMCNT4)
	LD	E,A
	LD	D,$00
	LD	HL,TBGCNT
		LD	A,(CGBFLG)
		AND	A
		JR	Z,TBGC10_100

		LD	HL,TBGCNT_CGB
TBGC10_100
	ADD	HL,DE
	LD	C,(HL)
;
	XOR	A
	LD	(ENOMID),A
;
	LD	HL,TBGCDT
		LD	A,(CGBFLG)
		AND	A
		JR	Z,TBGC10_200

		LD	HL,TBGCDT_CGB
TBGC10_200
	CALL	ENOMST
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	クジラ壁画			 %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
KABE1SB
	LD	A,(ITMODE)
	RST	0
	DW	KB10400	;カラーデータの退避
	DW	KB10800
	DW	KB11000
	DW	KBS2000
	DW	KBS3000
	DW	KBS4000
;;	DW	PEC2800
;;	DW	PEC3000
	DW	TSV4000
;=====================================
KB10400
		CALL	ITMINC
		LD	A,(CGBFLG)
		AND	A
		JR	Z,KB10800
		LD	HL,CGWORK
		LD	C,$080
		DI			;割り込み禁止
KB10400_0600
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
		JR	NZ,KB10400_0600
		XOR	A
		LD	(SVBK),A
		EI			;割り込み許可
;
;=====================================
KB10800
	LD	A,$01
	LD	(ITEMNOT),A
;
	CALL	FDIN
;
	LD	A,(SBHR)
	CP	$04
	JR	NZ,KB10810
;
	CALL	SCRRCLR
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
;
	LD	A,KB1CD
	LD	(BLNKFG),A
KB10810
	RET
;=====================================
KB11000
	LD	A,KB1BG
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
;-------------------------------------------------------------
		LD	A,$001		;フェードインフラグＯＮ
		LD	(FADEMDFG),A
;-------------------------------------------------------------
;
	JP	ITMINC
;=====================================
KBS2000
	CALL	FDOUT
;
	LD	A,(SBHR)
	CP	$04
	JR	NZ,KB12810
;
	CALL	ITMINC
;
	XOR	A
	LD	(LVWRK0),A
KB12810
	RET
;=====================================
KBS3000
	LD	A,(MSGEFG)
	AND	A
	RET	NZ
;
	LD	A,(LVWRK0)
	INC	A
	LD	(LVWRK0),A
	JP	Z,ITMINC
	CP	$80
	JR	NZ,KBS3010
;
	LD	A,$E7
	CALL	MSGCHK
KBS3010
	RET
;=====================================
KBS4000
	LD	A,(KEYA2)
	AND	%10110000
	JR	Z,KBS4010
;
	LD	A,$13
	LD	(SOUND1),A	;(S)
;
	CALL	ITNEXT
KBS4010
	RET
;======================================
;┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
;┃	zplsub.s にプログラムを移動					 ┃
;┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
;(CGB)TXSCYDEND
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $00,$00,$00,$00,$00,$00,$00,$00
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $00,$00,$00,$00,$00,$00,$00,$00
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $00,$00,$00,$00,$00,$00,$00,$00
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $00,$00,$00,$00,$00,$00,$00,$00
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $00,$00,$00,$00,$00,$00,$00,$00
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $00,$00,$00,$00,$00,$00,$00,$00
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $00,$00,$00,$00,$00,$00,$00,$00
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $00,$00,$00,$00,$00,$00,$00,$00
;(CGB);==========================================
;(CGB)TXSCYD48
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $E0,$E0,$E0,$E0,$E0,$E2,$E5,$E8
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $EB,$EE,$F1,$F4,$F7,$FA,$FD,$00
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $03,$06,$09,$0C,$0F,$12,$15,$18
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $1B,$1E,$21,$24,$27,$2A,$2D,$30
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $33,$36,$39,$3C,$3F,$42,$45,$48
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $33,$36,$39,$3C,$3F,$42,$45,$48
;(CGB);==========================================
;(CGB)TXSCYD30
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $F0,$F0,$F0,$F0,$F0,$F0,$F0,$E0
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $E2,$E4,$E6,$E8,$EA,$EC,$EE,$F0
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $F2,$F4,$F6,$F8,$FA,$FC,$FE,$00
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $02,$04,$06,$08,$0A,$0C,$0E,$10
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $12,$14,$16,$18,$1A,$1C,$1D,$1E
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $20,$22,$24,$26,$28,$2A,$2C,$2E
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $20,$22,$24,$26,$28,$2A,$2C,$2E
;(CGB);==========================================
;(CGB)TXSCYD24
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $F0,$DF,$E0,$E2,$E3,$E5,$E6,$E8
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $E9,$EB,$EC,$EE,$EF,$F1,$F2,$F4
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $F5,$F7,$F8,$FA,$FB,$FD,$FE,$00
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $01,$03,$04,$06,$07,$09,$0A,$0C
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $0D,$0F,$10,$12,$13,$15,$16,$18
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $19,$1B,$1C,$1E,$1F,$21,$22,$24
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $19,$1B,$1C,$1E,$1F,$21,$22,$24
;(CGB);==========================================
;(CGB)TXSCYD22
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $F0,$F0,$E2,$E3,$E5,$E6,$E8,$E9
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $EB,$EC,$EE,$F0,$F2,$F3,$F6,$F7
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $F8,$F9,$FA,$FC,$FD,$FE,$FF,$00
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $01,$03,$04,$06,$07,$09,$0A,$0C
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $0D,$0F,$10,$12,$13,$15,$16,$18
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $19,$1B,$1C,$1E,$1F,$21,$22,$22
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $24,$25,$27,$29,$2B,$2C,$2E,$2F
;(CGB);==========================================
;(CGB)TXSCYD20
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $E1,$E2,$E4,$E5,$E6,$E8,$E9,$EA
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $EC,$ED,$EE,$F0,$F1,$F2,$F4,$F5
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $F6,$F8,$F9,$FA,$FC,$FE,$FF,$00
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $01,$02,$04,$05,$06,$08,$09,$0A
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $0C,$0D,$0E,$10,$11,$12,$14,$15
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $16,$18,$19,$1A,$1C,$1D,$1E,$20
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $22,$23,$24,$25,$27,$28,$2A,$2B
;(CGB);==========================================
;(CGB)TXSCYD1E
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $F0,$F0,$F0,$F0,$F0,$F0,$F0,$E2
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $E3,$E4,$E5,$E6,$E8,$E9,$EA,$EC
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $ED,$EE,$EF,$F1,$F2,$F3,$F5,$F6
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $F8,$F9,$FA,$FB,$FD,$FE,$FF,$00
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $01,$02,$03,$05,$06,$07,$08,$0A
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $0B,$0C,$0D,$0F,$10,$11,$12,$14
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $15,$16,$17,$19,$1A,$1B,$1D,$1E
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $20,$21,$22,$23,$25,$26,$27,$28
;(CGB);==========================================
;(CGB)TXSCYD1C
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $F0,$F0,$F0,$F0,$F0,$F0,$E3,$E4
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $E5,$E6,$E7,$E8,$E9,$EB,$EC,$ED
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $EE,$F0,$F1,$F2,$F3,$F4,$F6,$F7
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $F8,$F9,$FB,$FC,$FD,$FE,$FF,$00
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $01,$02,$03,$04,$06,$07,$08,$09
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $0A,$0B,$0C,$0E,$10,$11,$12,$13
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $14,$15,$16,$18,$19,$1A,$1B,$1C
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $1D,$1F,$20,$21,$22,$23,$24,$25
;(CGB);==========================================
;(CGB)TXSCYD1A
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $F0,$F0,$F0,$F0,$F0,$E4,$E5,$E6
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $E7,$E8,$E9,$EA,$EB,$EC,$EE,$EF
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $F0,$F1,$F2,$F3,$F4,$F5,$F6,$F8
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $F9,$FA,$FB,$FC,$FD,$FE,$FF,$00
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $01,$02,$03,$04,$05,$06,$07,$08
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $09,$0A,$0C,$0D,$0E,$0F,$10,$11
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $12,$13,$15,$16,$17,$18,$19,$1A
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $1B,$1C,$1D,$1E,$1F,$21,$22,$23
;(CGB);==========================================
;(CGB)TXSCYD18
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $F0,$F0,$F0,$F0,$E5,$E6,$E7,$E8
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $E9,$EA,$EB,$EC,$ED,$EE,$EF,$F0
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $F1,$F2,$F3,$F4,$F5,$F6,$F7,$F8
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $F9,$FA,$FB,$FC,$FD,$FE,$FF,$00
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $01,$02,$03,$04,$05,$06,$07,$08
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $09,$0A,$0B,$0C,$0D,$0E,$0F,$10
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $11,$12,$13,$14,$15,$16,$17,$18
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $19,$1A,$1B,$1C,$1D,$1E,$1F,$20
;(CGB);==========================================
;(CGB)TXSCYD16
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $F0,$F0,$F0,$E6,$E7,$E8,$E8,$E9
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $EA,$EB,$EC,$ED,$EE,$EF,$F0,$F0
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $F1,$F2,$F3,$F4,$F5,$F6,$F7,$F8
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $F8,$F9,$FA,$FB,$FC,$FD,$FE,$FF
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $00,$01,$02,$03,$04,$05,$06,$07
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $07,$08,$09,$0A,$0B,$0C,$0D,$0E
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $0F,$10,$11,$12,$13,$14,$15,$16
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $17,$18,$19,$1A,$1A,$1B,$1C,$1D
;(CGB);==========================================
;(CGB)TXSCYD14
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $F0,$F0,$E7,$E8,$E9,$EA,$EB,$EC
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $EC,$EC,$ED,$EE,$EF,$F0,$F1,$F2
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $F2,$F3,$F4,$F5,$F6,$F7,$F7,$F8
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $F9,$FA,$FB,$FC,$FC,$FD,$FE,$FF
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $00,$01,$02,$03,$04,$04,$05,$06
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $07,$08,$09,$09,$0A,$0B,$0C,$0D
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $0E,$0E,$0F,$10,$11,$12,$13,$14
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $15,$16,$16,$17,$18,$19,$1A,$1B
;(CGB);==========================================
;(CGB)TXSCYD12
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $F0,$E9,$E9,$EA,$EB,$EB,$EC,$ED
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $EE,$EE,$EF,$F0,$F0,$F1,$F2,$F3
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $F4,$F4,$F5,$F6,$F7,$F8,$F8,$F9
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $FA,$FB,$FC,$FC,$FD,$FE,$FF,$00
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $00,$01,$02,$03,$03,$04,$05,$06
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $06,$07,$08,$09,$0A,$0A,$0B,$0C
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $0C,$0D,$0E,$0E,$10,$11,$12,$12
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $13,$14,$15,$15,$16,$17,$18,$18
;(CGB);==========================================
;(CGB)TXSCYD10
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $EB,$EC,$EC,$ED,$EE,$EE,$EF,$F0
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $F0,$F1,$F2,$F2,$F3,$F4,$F4,$F5
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $F6,$F6,$F7,$F8,$F8,$F9,$FA,$FA
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $FB,$FC,$FC,$FD,$FE,$FE,$FF,$00
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $00,$01,$02,$02,$03,$04,$04,$05
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $06,$06,$07,$08,$08,$09,$0A,$0A
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $0B,$0C,$0C,$0D,$0E,$0E,$0F,$10
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $10,$11,$12,$12,$13,$14,$14,$15
;(CGB);==========================================
;(CGB)TXSCYD0E
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $ED,$EE,$EE,$EF,$F0,$F0,$F1,$F1
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $F2,$F2,$F3,$F3,$F3,$F4,$F5,$F5
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $F6,$F6,$F7,$F8,$F8,$F9,$F9,$FA
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $FB,$FB,$FC,$FC,$FE,$FF,$FF,$00
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $00,$01,$01,$02,$03,$03,$04,$04
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $05,$06,$06,$07,$07,$08,$09,$09
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $0A,$0A,$0B,$0C,$0C,$0D,$0D,$0E
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $0F,$0F,$10,$10,$11,$12,$12,$13
;(CGB);==========================================
;(CGB)TXSCYD0C
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $F0,$F1,$F1,$F2,$F2,$F3,$F3,$F4
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $F4,$F5,$F5,$F6,$F6,$F7,$F7,$F8
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $F8,$F9,$F9,$FA,$FA,$FB,$FB,$FC
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $FC,$FD,$FD,$FE,$FE,$FF,$FF,$00
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $00,$01,$01,$02,$02,$03,$03,$04
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $04,$05,$05,$06,$06,$07,$07,$08
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $08,$09,$09,$0A,$0A,$0B,$0B,$0C
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $0C,$0D,$0D,$0E,$0E,$0F,$0F,$10
;(CGB);==========================================
;(CGB)TXSCYD0A
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $F3,$F4,$F4,$F4,$F5,$F5,$F6,$F6
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $F6,$F7,$F7,$F8,$F8,$F8,$F9,$F9
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $FA,$FA,$FA,$FB,$FB,$FC,$FC,$FC
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $FD,$FD,$FE,$FE,$FF,$FF,$00,$00
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $00,$01,$01,$02,$02,$03,$03,$03
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $04,$04,$05,$05,$05,$06,$06,$07
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $07,$07,$08,$08,$09,$09,$09,$0A
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $0A,$0B,$0B,$0B,$0C,$0C,$0D,$0D
;(CGB);==========================================
;(CGB)TXSCYD08
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $F5,$F6,$F6,$F6,$F7,$F7,$F7,$F8
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $F8,$F8,$F9,$F9,$F9,$FA,$FA,$FA
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $FB,$FB,$FB,$FC,$FC,$FC,$FD,$FD
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $FD,$FE,$FE,$FE,$FF,$FF,$FF,$00
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $00,$01,$01,$01,$02,$02,$02,$03
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $03,$03,$04,$04,$04,$05,$05,$05
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $06,$06,$06,$07,$07,$07,$08,$08
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $08,$09,$09,$09,$0A,$0A,$0A,$0B
;(CGB);==========================================
;(CGB)TXSCYD06
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $FC,$FC,$FB,$FB,$FB,$FB,$FA,$FA
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $FA,$FA,$FB,$FB,$FB,$FB,$FC,$FC
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $FC,$FC,$FD,$FD,$FD,$FD,$FE,$FE
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $FE,$FE,$FF,$FF,$FF,$FF,$00,$00
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $00,$00,$01,$01,$01,$01,$02,$02
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $02,$02,$03,$03,$03,$03,$04,$04
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $04,$04,$05,$05,$05,$05,$06,$06
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $06,$06,$07,$07,$07,$07,$08,$08
;(CGB);==========================================
;(CGB)TXSCYD04
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $FB,$FB,$FB,$FB,$FB,$FC,$FC,$FC
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $FC,$FC,$FC,$FD,$FD,$FD,$FD,$FD
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $FE,$FE,$FE,$FE,$FE,$FE,$FF,$FF
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $FF,$FF,$FF,$FF,$00,$00,$00,$00
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $00,$00,$01,$01,$01,$01,$01,$01
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $02,$02,$02,$02,$02,$02,$03,$03
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $03,$03,$03,$03,$04,$04,$04,$04
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $04,$04,$05,$05,$05,$05,$05,$05
;(CGB);==========================================
;(CGB)TXSCYD02
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $FE,$FE,$FE,$FE,$FE,$FE,$FE,$FE
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $FE,$FE,$FF,$FE,$FF,$FF,$FF,$FF
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $FF,$FF,$FF,$00,$00,$00,$00,$00
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $00,$00,$00,$00,$00,$01,$01,$01
;(CGB);	     0	 1   2	 3   4	 5   6	 7
;(CGB)	DB $01,$01,$01,$01,$01,$01,$01,$02
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $02,$02,$02,$02,$02,$02,$02,$02
;(CGB);	     8	 9   A	 B   C	 D   E	 F
;(CGB)	DB $02,$03,$03,$03,$03,$03,$03,$03
;(CGB);
;(CGB);
;(CGB);
;(CGB);
;(CGB);------------------------------------
;(CGB)TLSCY
;(CGB)	DW	TXSCYD48
;(CGB)	DW	TXSCYD30
;(CGB)	DW	TXSCYD24
;(CGB);;	DW	TXSCYD22
;(CGB)	DW	TXSCYD20
;(CGB);;	DW	TXSCYD1E
;(CGB)	DW	TXSCYD1C
;(CGB)	DW	TXSCYD1A
;(CGB);;	DW	TXSCYD18
;(CGB)	DW	TXSCYD16
;(CGB)	DW	TXSCYD14
;(CGB)	DW	TXSCYD12
;(CGB);;	DW	TXSCYD10
;(CGB)	DW	TXSCYD0E
;(CGB)	DW	TXSCYD0C
;(CGB)	DW	TXSCYD0A
;(CGB)	DW	TXSCYD08
;(CGB)	DW	TXSCYD06
;(CGB)	DW	TXSCYD04
;(CGB)	DW	TXSCYD02
;(CGB)	DW	TXSCYDEND
;(CGB)TXLIMIT
;(CGB)	DB	$28,$2A,$2C,$2C,$2E,$2E
;(CGB)	DB	$30,$30,$31,$33,$33,$34
;(CGB)	DB	$35,$36,$38,$3A,$3A
;(CGB);
;(CGB);	DB	$28,$2A,$2C,$2C,$2C,$2E,$2E,$2E
;(CGB);	DB	$2F,$30,$30,$31,$32,$33,$33,$34
;(CGB);	DB	$35,$36,$38,$3A,$3A
;(CGB);====================================================================
;(CGB)TITLX
;(CGB);
;(CGB)	LD	HL,WAVCNT
;(CGB)	XOR	A
;(CGB)	LD	(HLI),A
;(CGB)	LD	(HLI),A
;(CGB);
;(CGB)	LD	D,$00
;(CGB);
;(CGB);	LD	A,(KEYA2)
;(CGB);	AND	%01000000
;(CGB);	JR	Z,TXE00
;(CGB);
;(CGB)	LD	A,(FRCNT)
;(CGB)	AND	$01
;(CGB)	JR	NZ,TXE00
;(CGB);
;(CGB)	LD	A,(WAVCNT3)
;(CGB)	INC	A
;(CGB)	CP	$10
;(CGB)	JR	C,TXEF0
;(CGB)	LD	A,$10
;(CGB)TXEF0
;(CGB)	LD	(WAVCNT3),A
;(CGB)TXE00
;(CGB)	LD	A,(WAVCNT3)
;(CGB)	LD	E,A
;(CGB)	LD	HL,TXLIMIT
;(CGB)	ADD	HL,DE
;(CGB)	LD	A,(HL)
;(CGB)	LD	(WORK0),A
;(CGB)	SLA	E
;(CGB)	LD	HL,TLSCY
;(CGB)	ADD	HL,DE
;(CGB);
;(CGB)	LD	A,(HLI)
;(CGB)	LD	B,(HL)
;(CGB)	LD	C,A
;(CGB);
;(CGB)TLX00
;(CGB)	LD	A,(LY)
;(CGB)	CP	$10
;(CGB)	JR	NZ,TLX00
;(CGB)TLX10
;(CGB)	LD	A,(STAT)
;(CGB)	AND	%00000011
;(CGB)	JR	NZ,TLX10
;(CGB)TLX18
;(CGB)	LD	A,(WAVCNT2)
;(CGB)	INC	A
;(CGB)	LD	(WAVCNT2),A
;(CGB)	AND	$01
;(CGB)	JR	NZ,TLX18
;(CGB);
;(CGB)	LD	A,(WORK0)
;(CGB)	LD	L,A
;(CGB);
;(CGB)	LD	A,(WAVCNT)
;(CGB)	LD	E,A
;(CGB)	INC	A
;(CGB)	LD	(WAVCNT),A
;(CGB)	CP	$3A
;(CGB)	JR	Z,TLX20
;(CGB)	CP	L
;(CGB)	JR	C,TLX1A
;(CGB);
;(CGB);-------------------------------------------------------------
;(CGB)	LD	A,(CGBFLG)
;(CGB)	AND	A		; カラーゲームボーイ？
;(CGB)	JR	Z,TLX19		; ＮＯ
;(CGB)
;(CGB)	PUSH	BC
;(CGB)	PUSH	DE
;(CGB)	CALL	TLX_COL		; (CGB)カラーセット
;(CGB)	POP	DE
;(CGB)	POP	BC
;(CGB)	JR	TLX10
;(CGB)TLX19
;(CGB);(CGB)	LD	A,%01010101	; 雲なしタイトル用
;(CGB)	XOR	A		; 雲ありタイトル用
;(CGB)	LD	(BGP),A
;(CGB)	JR	TLX10
;(CGB);-------------------------------------------------------------
;(CGB)TLX1A
;(CGB)	LD	HL,$00 ;TXSCYD
;(CGB)	ADD	HL,DE
;(CGB)	ADD	HL,BC
;(CGB)	LD	A,(HL)
;(CGB)	LD	HL,SCCV
;(CGB)	ADD	A,(HL)
;(CGB)	LD	(SCY),A
;(CGB)	JR	TLX10
;(CGB);
;(CGB)TLX20
;(CGB);;	LD	A,$00
;(CGB)	LD	A,(SCCV)
;(CGB)	LD	(SCY),A
;(CGB);
;(CGB);-------------------------------------------------------------
;(CGB)	LD	A,(CGBFLG)
;(CGB)	AND	A		; カラーゲームボーイ？
;(CGB)	JR	Z,TLX30		; ＮＯ
;(CGB)
;(CGB)	LD	A,%10000000 | BGCOL_BITFG
;(CGB)	LD	(CGDMAF),A	; (CGB) ＢＧカラー部分転送
;(CGB)	LD	A,$04+3		;       １－３から
;(CGB)	LD	(COLOFS),A	;       転送オフセット
;(CGB)	LD	A,$05		;       ５パレット
;(CGB)	LD	(COLLNG),A	;       転送長さ
;(CGB)	JR	TLX40
;(CGB)TLX30
;(CGB)	LD	A,(BGPFG)
;(CGB)	LD	(BGP),A
;(CGB)TLX40
;(CGB);-------------------------------------------------------------
;(CGB)	RET
;(CGB);
;(CGB);xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;(CGB);x	ＺＥＬＤＡロゴ 圧縮デモ カラーパレットセット			x
;(CGB);xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;(CGB)CHG_COL_DT
;(CGB)		DW	$7fff,$7fff,$7fff,$7fff	; ( 0 ) すべてしろ
;(CGB)		DW	$7fff,$7fff,$7fff,$7fff	; ( 1 ) すべてしろ
;(CGB);========================================================================
;(CGB)
;(CGB)TLX_COL
;(CGB)
;(CGB);;;;; ＜ パターン１ ＞
;(CGB);;;;
;(CGB);;;;		LD	DE,CHG_COL_DT
;(CGB);;;;		LD	A,%10001110	; 自動ｉｎｃ、パレット1-3
;(CGB);;;;		LD	(BCPS),A	; ＢＧ
;(CGB);;;;		LD	HL,BCPD
;(CGB);;;;		LD	B,$05*2		; パレット個数５
;(CGB);;;;					; 1-3 から 2-3 まで
;(CGB);;;;TLX_COL_100
;(CGB);;;;		LD	A,(DE)
;(CGB);;;;		LD	(HL),A
;(CGB);;;;		INC	DE
;(CGB);;;;		DEC	B
;(CGB);;;;		JR	NZ,TLX_COL_100
;(CGB)
;(CGB); ＜ パターン２ ＞
;(CGB)
;(CGB)		LD	A,%10001110	; 自動ｉｎｃ、パレット１－３から
;(CGB)		LD	(BCPS),A	; ＢＧ
;(CGB)		LD	HL,BCPD
;(CGB)		LD	B,$05		; パレット個数
;(CGB)TLX_COL_100
;(CGB)		LD	(HL),$ff
;(CGB)		LD	(HL),$7f
;(CGB)		DEC	B
;(CGB)		JR	NZ,TLX_COL_100
;(CGB)
;(CGB)		RET

;==========================================
;==========================================
;==========================================
;==========================================
;==========================================
;==========================================
;==========================================
;==========================================
;==========================================
;==========================================
;==========================================
CURSDST
	LD	A,(KEYA2)
;;;KK;;;	AND	%01001100
	AND	%00001100
	JR	Z,CCS010
;
CURSDSS
	PUSH	AF
;
	LD	A,$0A
	LD	(SOUND1),A	;(S)
;
	POP	AF
CCS010
	RET
;;;;;;;;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;;;;;;;;%	オープニング			     %
;;;;;;;;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;;;;;;;IZFLCD
;;;;;;;;;	DB	%11000110	; Display flash data !
;;;;;;;;;	DB	%00000110
;;;;;;;	DB	%11000110
;;;;;;;	DB	%11000010
;;;;;;;	DB	%11000000
;;;;;;;	DB	%11000010
;;;;;;;;- - - - - - - - - - - - - - - - - - -
;;;;;;;OPENING
;;;;;;;	LD	A,(OPKYTM)
;;;;;;;	AND	A
;;;;;;;	JR	Z,OPES10
;;;;;;;;
;;;;;;;	DEC	A
;;;;;;;	LD	(OPKYTM),A
;;;;;;;	JP	OPN010
;;;;;;;;
;;;;;;;OPES10
;;;;;;;	LD	A,(KEYA2)
;;;;;;;	AND	%10000000
;;;;;;;	JR	Z,OPN010
;;;;;;;;
;;;;;;;	CALL	SOUNDCLR	;(S)
;;;;;;;;
;;;;;;;	LD	A,(ITMODE)
;;;;;;;	CP	OPLG
;;;;;;;;;	JR	OPP100
;;;;;;;	JR	Z,OPP100
;;;;;;;;
;;;;;;;	LD	A,$28
;;;;;;;	LD	(OPKYTM),A	; Logo display wait !
;;;;;;;;
;;;;;;;	LD	A,LOGOS		; いきなりタイトルロゴ
;;;;;;;	LD	(VRFLG),A
;;;;;;;;
;;;;;;;;-------------------------------------------------------------
;;;;;;;		LD	A,(CGBFLG)
;;;;;;;		AND	A
;;;;;;;		JR	NZ,OPES10_100
;;;;;;;
;;;;;;;		LD	A,(DX_color_data_GB0+3)
;;;;;;;		LD	(OBP0FG),A	; ＯＢＪパレット（０）
;;;;;;;		LD	A,(DX_color_data_GB1+3)
;;;;;;;		LD	(OBP1FG),A	; ＯＢＪパレット（１）
;;;;;;;		LD	A,4		; ＧＢ
;;;;;;;		JR	OPES10_110
;;;;;;;OPES10_100
;;;;;;;		XOR	A		; フェードインフラグＯＦＦ
;;;;;;;		LD	(FADEMDFG),A
;;;;;;;		LD	A,8		; ＣＧＢ
;;;;;;;OPES10_110
;;;;;;;		LD	(DXCLPT),A	; カラー転送しない！
;;;;;;;;-------------------------------------------------------------
;;;;;;;;
;;;;;;;;;	LD	A,OPBS2		; Bank set!
;;;;;;;;;	LD	(BLNKFG),A
;;;;;;;;
;;;;;;;	LD	A,OPLGW
;;;;;;;	LD	(ITMODE),A
;;;;;;;;
;;;;;;;	XOR	A
;;;;;;;;;	LD	(SCCH),A
;;;;;;;;;	LD	(SCCV),A
;;;;;;;	LD	(ENMODE),A
;;;;;;;	LD	(ENMODE+1),A
;;;;;;;	LD	(ENMODE+2),A
;;;;;;;	LD	(ENMODE+3),A
;;;;;;;	LD	(ENMODE+4),A
;;;;;;;	LD	(BGP),A
;;;;;;;	LD	(BGPFG),A
;;;;;;;;
;;;;;;;	LD	A,$10
;;;;;;;	LD	(WAVCNT3),A	;ロゴイキナリ出す！
;;;;;;;	CALL	LOGOINT
;;;;;;;;
;;;;;;;	LD	A,$0D
;;;;;;;	LD	(SOUND4),A	;(S)
;;;;;;;;
;;;;;;;	LD	(OPWRK8),A
;;;;;;;	CALL	NMCHTRS
;;;;;;;	JR	IEINIT
;;;;;;;;
;;;;;;;OPP100
;;;;;;;;(SOUND TEST)		LD	B,A		; (A) PUSH
;;;;;;;;(SOUND TEST)		XOR	A
;;;;;;;;(SOUND TEST)		LD	($ff24),A	; サウンドＯＦＦ
;;;;;;;;(SOUND TEST)		LD	(SLEVEL),A	; サウンドレベル１ ＭＩＮ
;;;;;;;;(SOUND TEST)		LD	(SLEVEL2),A	; サウンドレベル２ ＭＩＮ
;;;;;;;;(SOUND TEST)		LD	A,B		; (A) POP
;;;;;;;
;;;;;;;	JP	PSLCTGO
;;;;;;;OPSTART
;;;;;;;	XOR	A
;;;;;;;	LD	(ITMODE),A
;;;;;;;	LD	(SCCH),A
;;;;;;;	LD	(SCCV),A
;;;;;;;	LD	(BGP),A
;;;;;;;	LD	(BGPFG),A
;;;;;;;;
;;;;;;;	LD	HL,GMMODE
;;;;;;;	INC	(HL)
;;;;;;;;
;;;;;;;IEINIT
;;;;;;;	LD	A,%00000001
;;;;;;;	LD	(IE),A
;;;;;;;;
;;;;;;;	LD	A,$4F
;;;;;;;	LD	(LYC),A
;;;;;;;	RET
;;;;;;;OPN010
;;;;;;;;;	JP	OPSTART
;;;;;;;	LD	A,(ITMODE)
;;;;;;;	CP	OPAF
;;;;;;;	JR	NC,OPN080
;;;;;;;;
;;;;;;;	LD	A,(OPWRK0)
;;;;;;;	AND	A
;;;;;;;	JR	Z,INZ000
;;;;;;;	DEC	A
;;;;;;;	LD	(OPWRK0),A
;;;;;;;INZ000
;;;;;;;	RRA
;;;;;;;;;	RRA
;;;;;;;	NOP
;;;;;;;	AND	$03
;;;;;;;;;	AND	$01
;;;;;;;	LD	E,A
;;;;;;;	LD	D,$00
;;;;;;;	LD	HL,IZFLCD
;;;;;;;	ADD	HL,DE
;;;;;;;	LD	A,(HL)
;;;;;;;	LD	(BGPFG),A
;;;;;;;;
;;;;;;;	CALL	OpenFlashSub
;;;;;;;;
;;;;;;;OPN080
;;;;;;;	LD	A,(ITMODE)
;;;;;;;	RST	00
;;;;;;;	DW	OP10000	; (0) 
;;;;;;;	DW	OP20000	; (1) 
;;;;;;;	DW	OP30000	; (2)
;;;;;;;	DW	OP80000 ; (3) On sea
;;;;;;;	DW	OP90000 ; (4) Link up
;;;;;;;	DW	OPAF000 ; (5) Yoko yama Bank set !
;;;;;;;	DW	OPA0000 ; (6) Yoko yama Wait !!
;;;;;;;	DW	OPB0000 ; (7) Yoko yama Scroll !!
;;;;;;;	DW	OPC0000 ; (8) "ZELDA" Logo set
;;;;;;;	DW	OPD0000 ; (9) "ZELDA" Logo XXX
;;;;;;;	DW	OPE0000 ; (A) Nontendo TR.
;;;;;;;	DW	OPF0000 ; (B) Loop wait.
;;;;;;;	DW	OPF8000 ; (C) Fade out !
;;;;;;;	DW	OPF9000 ; (D) いきなりタイトルバンクセット！
;;;;;;;;
;;;;;;;OP8	EQU	$3
;;;;;;;OP9	EQU	$4
;;;;;;;OPAF	EQU	$5
;;;;;;;OPA	EQU	$6
;;;;;;;OPB	EQU	$7
;;;;;;;TLX	EQU	$9
;;;;;;;OPLG	EQU	$0B
;;;;;;;OPLGW	EQU	$0D
;;;;;;;;======================================
;;;;;;;OP10000
;;;;;;;	CALL	RAMCL2
;;;;;;;;
;;;;;;;	CALL	SOUNDCLR	;(S)
;;;;;;;;
;;;;;;;	LD	A,$1A	;20
;;;;;;;;;	LD	(SOUND4),A	;(S)
;;;;;;;	CALL	BGMON	;(S)
;;;;;;;;
;;;;;;;	LD	A,VRMCL
;;;;;;;	LD	(BLNKFG),A
;;;;;;;;
;;;;;;;	XOR	A
;;;;;;;	LD	(FRCNT),A
;;;;;;;	LD	A,$A2
;;;;;;;	LD	(RNDFLG),A
;;;;;;;;
;;;;;;;	LD	A,(LCDC)
;;;;;;;	AND	%11011111	; Window OFF!
;;;;;;;	LD	(LCDCB),A
;;;;;;;	LD	(LCDC),A
;;;;;;;;
;;;;;;;;;;;;;;		CALL	KIRA_WAIT_CLC	; きらり待ち時間計算
;;;;;;;		LD	A,60*3		; 最初は３秒待つ！
;;;;;;;		LD	(KIRAWL),A
;;;;;;;		XOR	A
;;;;;;;		LD	(KIRAWH),A
;;;;;;;	JP	ITMINC
;;;;;;;;======================================
;;;;;;;OP20000
;;;;;;;	LD	A,OPBST		; Bank set!
;;;;;;;	LD	(BLNKFG),A
;;;;;;;;
;;;;;;;	JP	ITMINC
;;;;;;;;======================================
;;;;;;;OP30000
;;;;;;;	CALL	OPSCRL	; Part scroll sub !
;;;;;;;;
;;;;;;;;-------------------------------------------------------------
;;;;;;;	LD	A,(CGBFLG)
;;;;;;;	AND	A		; カラーゲームボーイ？
;;;;;;;	JR	Z,OP30010	; ＮＯ
;;;;;;;
;;;;;;;	LD	A,OPBGS_CGB
;;;;;;;	JR	OP30020
;;;;;;;OP30010
;;;;;;;	LD	A,OPBGS
;;;;;;;OP30020
;;;;;;;	LD	(VRFLG),A
;;;;;;;;-------------------------------------------------------------
;;;;;;;;
;;;;;;;	LD	A,%11000110
;;;;;;;	LD	(BGPFG),A
;;;;;;;;
;;;;;;;	LD	A,%00011100
;;;;;;;	LD	(OBP0FG),A
;;;;;;;	LD	A,%11100000
;;;;;;;	LD	(OBP1FG),A
;;;;;;;;
;;;;;;;	LD	A,%00000011
;;;;;;;	LD	(IE),A
;;;;;;;;
;;;;;;;	LD	A,$00
;;;;;;;	LD	(LYC),A
;;;;;;;;
;;;;;;;	LD	E,$10+1
;;;;;;;	LD	HL,OPWRK0
;;;;;;;	XOR	A
;;;;;;;OP3010
;;;;;;;	LD	(HLI),A
;;;;;;;	DEC	E
;;;;;;;	JR	NZ,OP3010
;;;;;;;;
;;;;;;;;	LD	(OPWRK0),A
;;;;;;;;	LD	(OPWRK1),A
;;;;;;;;	LD	(OPWRK2),A
;;;;;;;;	LD	(OPWRK3),A
;;;;;;;;	LD	(OPWRK4),A
;;;;;;;;	LD	(OPWRK5),A
;;;;;;;;	LD	(OPWRK6),A
;;;;;;;;
;;;;;;;;
;;;;;;;	LD	(ENMODE+0),A
;;;;;;;	LD	(ENMODE+1),A
;;;;;;;	LD	(ENCHPT),A
;;;;;;;	LD	(ENCHPT+1),A
;;;;;;;	LD	(ENCHPT+2),A
;;;;;;;	LD	(ENFLCL),A
;;;;;;;;
;;;;;;;	LD	A,$05
;;;;;;;	LD	(ENMODE+2),A
;;;;;;;;
;;;;;;;	LD	A,$C0
;;;;;;;	LD	(ENXPSL+2),A
;;;;;;;	LD	A,$4E
;;;;;;;	LD	(ENYPSL+2),A
;;;;;;;;
;;;;;;;	XOR	A
;;;;;;;	LD	(ENMOD0+0),A
;;;;;;;	LD	(ENMOD0+1),A
;;;;;;;	LD	(ENMOD0+2),A
;;;;;;;	LD	(ENMOD0+3),A
;;;;;;;;
;;;;;;;	JP	ITMINC
;;;;;;;;
;;;;;;;;======================================
;;;;;;;INBGCD
;;;;;;;	DB	%10000001
;;;;;;;	DB	%01000000
;;;;;;;	DB	%00000000
;;;;;;;	DB	%00000000
;;;;;;;	DB	%00000000
;;;;;;;	DB	%00000000
;;;;;;;	DB	%00000000
;;;;;;;	DB	%00000000
;;;;;;;	DB	%00000000
;;;;;;;INOBCD
;;;;;;;	DB	%00001000
;;;;;;;	DB	%00001000
;;;;;;;	DB	%00001000
;;;;;;;	DB	%00000100
;;;;;;;	DB	%00000000
;;;;;;;	DB	%00000000
;;;;;;;	DB	%00000000
;;;;;;;	DB	%00000000
;;;;;;;	DB	%00000000
;;;;;;;;
;;;;;;;OP80000		; 広大な海と船
;;;;;;;;;	CALL	OPSCRL	; Part scroll sub !
;;;;;;;;
;;;;;;;	CALL	RAINCS	; 雨
;;;;;;;	CALL	OPOBJ	; 雷+ふね
;;;;;;;;
;;;;;;;	LD	A,(OPWRK2)
;;;;;;;	AND	A
;;;;;;;	JR	Z,OP8001	; 稲妻 ちょくげき?
;;;;;;;;				; yes !
;;;;;;;	INC	A
;;;;;;;	LD	(OPWRK2),A
;;;;;;;;
;;;;;;;	CP	$18
;;;;;;;	JR	C,OP8F090
;;;;;;;;
;;;;;;;	SUB	$18
;;;;;;;	RRA
;;;;;;;	RRA
;;;;;;;	RRA
;;;;;;;	AND	%00001111
;;;;;;;;
;;;;;;;	LD	E,A
;;;;;;;	LD	D,$00
;;;;;;;	LD	HL,INBGCD
;;;;;;;	ADD	HL,DE
;;;;;;;	LD	A,(HL)
;;;;;;;	LD	(BGPFG),A
;;;;;;;	LD	HL,INOBCD
;;;;;;;	ADD	HL,DE
;;;;;;;	LD	A,(HL)
;;;;;;;	LD	(OBP0FG),A
;;;;;;;;
;;;;;;;	CALL	OpenWhiteOutSub
;;;;;;;;
;;;;;;;	LD	A,E
;;;;;;;	CP	$08
;;;;;;;	JP	NZ,OP8F090
;;;;;;;;
;;;;;;;	XOR	A
;;;;;;;	LD	(ENMODE),A
;;;;;;;	LD	(ENMODE+1),A
;;;;;;;	LD	(ENMODE+2),A
;;;;;;;	LD	(ENSTAT),A
;;;;;;;;
;;;;;;;	LD	A,OPAF
;;;;;;;	LD	(ITMODE),A	; Yoko display go !
;;;;;;;;
;;;;;;;	LD	(OPWRK8),A
;;;;;;;	CALL	NMCHTRS ; !!
;;;;;;;;
;;;;;;;	LD	A,OPBS2		; Bank set!
;;;;;;;	LD	(BLNKFG),A
;;;;;;;;
;;;;;;;;;	CALL	SOUNDOUT ;CLR	;(S)
;;;;;;;;
;;;;;;;	LD	A,$FF
;;;;;;;	LD	(OPWRK1),A	; Fade time !!
;;;;;;;;
;;;;;;;	XOR	A
;;;;;;;	LD	(SCCH),A
;;;;;;;	LD	(SCCH1),A
;;;;;;;	LD	(SCCH3),A
;;;;;;;	LD	(SCCH4),A
;;;;;;;S2S
;;;;;;;	LD	A,$92
;;;;;;;;;	LD	A,$92+3	 ;A0-56-B8
;;;;;;;	LD	(SCCH2),A	; Mountain scroll initial !
;;;;;;;;
;;;;;;;	LD	A,$03
;;;;;;;	LD	(IE),A
;;;;;;;;
;;;;;;;;	LD	A,$30
;;;;;;;;	LD	(LYC),A
;;;;;;;OP8F090
;;;;;;;	RET
;;;;;;;;--------------------------------
;;;;;;;OP8001
;;;;;;;	LD	A,(ENXPSL+2)
;;;;;;;	CP	$50
;;;;;;;	JR	NZ,OP8002
;;;;;;;;
;;;;;;;;;	LD	A,(KEYA2)
;;;;;;;;;	AND	%00100000
;;;;;;;;;	JR	Z,OP8002	; TEST !!!
;;;;;;;;
;;;;;;;	LD	A,OP9
;;;;;;;	LD	(ITMODE),A
;;;;;;;;
;;;;;;;	LD	A,OPBG2
;;;;;;;	LD	(VRFLG),A
;;;;;;;;
;;;;;;;	LD	A,%00000001
;;;;;;;	LD	(IE),A
;;;;;;;;
;;;;;;;	XOR	A
;;;;;;;	LD	(SCCH),A
;;;;;;;;
;;;;;;;	RET
;;;;;;;OP8002
;;;;;;;;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;;;;;;;	CALL	OPSCRL	; Part scroll sub !
;;;;;;;;
;;;;;;;	LD	A,(FRCNT)
;;;;;;;	AND	$07
;;;;;;;;;	JR	NZ,OP8007
;;;;;;;	JP	NZ,OP8070
;;;;;;;;
;;;;;;;	LD	HL,SCCH
;;;;;;;	INC	(HL)
;;;;;;;;
;;;;;;;	LD	HL,ENXPSL
;;;;;;;	DEC	(HL)
;;;;;;;	INC	HL
;;;;;;;	DEC	(HL)
;;;;;;;	INC	HL
;;;;;;;	DEC	(HL)
;;;;;;;OP8007
;;;;;;;;	LD	A,(FRCNT)
;;;;;;;;	AND	$0F
;;;;;;;;	JR	NZ,OP8070
;;;;;;;;;
;;;;;;;;	CALL	RNDSUB
;;;;;;;;	AND	$07
;;;;;;;;	JR	NZ,OP8070
;;;;;;;;
;;;;;;;	LD	C,$00
;;;;;;;	LD	A,(SCCH)
;;;;;;;	CP	$10
;;;;;;;	JR	Z,OP80077
;;;;;;;	INC	C
;;;;;;;	CP	$30
;;;;;;;	JR	Z,OP80077
;;;;;;;	INC	C
;;;;;;;	CP	$38
;;;;;;;	JR	Z,OP80077
;;;;;;;	INC	C
;;;;;;;	CP	$58
;;;;;;;	JR	Z,OP80077
;;;;;;;	INC	C
;;;;;;;	CP	$5A
;;;;;;;	JR	Z,OP80077
;;;;;;;	INC	C
;;;;;;;	CP	$69
;;;;;;;	JR	NZ,OP8070
;;;;;;;;
;;;;;;;OP80077
;;;;;;;	LD	E,$01
;;;;;;;	LD	D,$00
;;;;;;;OP8008
;;;;;;;	LD	HL,ENMODE
;;;;;;;	ADD	HL,DE
;;;;;;;	LD	A,(HL)
;;;;;;;	AND	A
;;;;;;;	JR	Z,OP8010
;;;;;;;	DEC	E
;;;;;;;	LD	A,E
;;;;;;;	CP	$FF
;;;;;;;	JR	NZ,OP8008
;;;;;;;	RET
;;;;;;;;--------------------------
;;;;;;;INSXPS
;;;;;;;	DB	$28,$78,$60,$38
;;;;;;;	DB	$68,$58
;;;;;;;INAZMDD
;;;;;;;	DB	4,2,1,4
;;;;;;;	DB	3,1
;;;;;;;;- - - - - - - - - - - - - - - - - -
;;;;;;;OP8010
;;;;;;;	LD	B,$00
;;;;;;;	LD	HL,INAZMDD
;;;;;;;	ADD	HL,BC
;;;;;;;	LD	A,(HL)
;;;;;;;	LD	HL,ENMODE
;;;;;;;	ADD	HL,DE
;;;;;;;	LD	(HL),A
;;;;;;;;
;;;;;;;	LD	HL,INSXPS
;;;;;;;	ADD	HL,BC
;;;;;;;	LD	A,(HL)
;;;;;;;	LD	HL,ENXPSL
;;;;;;;	ADD	HL,DE
;;;;;;;	LD	(HL),A
;;;;;;;;
;;;;;;;	LD	HL,ENYPSL
;;;;;;;	ADD	HL,DE
;;;;;;;	LD	(HL),$30
;;;;;;;;
;;;;;;;	LD	HL,ENTIM0
;;;;;;;	ADD	HL,DE
;;;;;;;	LD	(HL),$20
;;;;;;;;
;;;;;;;INFLST
;;;;;;;	LD	A,$1C
;;;;;;;	LD	(OPWRK0),A
;;;;;;;	CALL	BBSDST	;(S)
;;;;;;;OP8070
;;;;;;;	RET
;;;;;;;;======================================
;;;;;;;OP90000		; リンク ピンチ
;;;;;;;	CALL	RAINCS
;;;;;;;;
;;;;;;;;;	LD	A,(KEYA2)
;;;;;;;;;	AND	%00100000
;;;;;;;;;	JR	Z,OP9010
;;;;;;;	LD	A,(OPWRK1)
;;;;;;;	INC	A
;;;;;;;	LD	(OPWRK1),A
;;;;;;;	CP	$80
;;;;;;;	JR	NZ,OP9008
;;;;;;;;
;;;;;;;	PUSH	AF
;;;;;;;;;	CALL	SOUNDCLR	;(S)
;;;;;;;	CALL	LINKKAO ; Link kao chenge !
;;;;;;;	POP	AF
;;;;;;;;
;;;;;;;OP9008
;;;;;;;	CP	$90
;;;;;;;	JR	NZ,OP900A
;;;;;;;;
;;;;;;;	CALL	INFLST
;;;;;;;OP900A
;;;;;;;	CP	$A0
;;;;;;;	JR	NZ,OP9010
;;;;;;;;
;;;;;;;	LD	A,OP8
;;;;;;;	LD	(ITMODE),A
;;;;;;;;
;;;;;;;;-------------------------------------------------------------
;;;;;;;	LD	A,(CGBFLG)
;;;;;;;	AND	A		; カラーゲームボーイ？
;;;;;;;	JR	Z,OP90010	; ＮＯ
;;;;;;;
;;;;;;;	LD	A,OPBGS_CGB
;;;;;;;	JR	OP90020
;;;;;;;OP90010
;;;;;;;	LD	A,OPBGS
;;;;;;;OP90020
;;;;;;;	LD	(VRFLG),A
;;;;;;;;-------------------------------------------------------------
;;;;;;;;
;;;;;;;	LD	A,%00000011
;;;;;;;	LD	(IE),A
;;;;;;;;
;;;;;;;	XOR	A
;;;;;;;	LD	(ENMODE+0),A	; 古い稲妻消す！
;;;;;;;	LD	(ENMODE+1),A
;;;;;;;;
;;;;;;;	LD	A,$01
;;;;;;;	LD	(OPWRK2),A	; 稲妻船に落ちるタイム
;;;;;;;	RET
;;;;;;;OP9010
;;;;;;;	LD	A,(FRCNT)
;;;;;;;	AND	$7F
;;;;;;;	JR	NZ,OP9020
;;;;;;;;
;;;;;;;	CALL	RNDSUB
;;;;;;;	AND	$00
;;;;;;;	JR	NZ,OP9020
;;;;;;;;
;;;;;;;	CALL	INFLST
;;;;;;;OP9020
;;;;;;;	RET
;;;;;;;;======================================
;;;;;;;OPAF000
;;;;;;;	LD	A,OPBG3
;;;;;;;	LD	(VRFLG),A
;;;;;;;;
;;;;;;;;-------------------------------------------------------------
;;;;;;;		LD	A,$001		; フェードインフラグＯＮ
;;;;;;;		LD	(FADEMDFG),A
;;;;;;;;-------------------------------------------------------------
;;;;;;;;
;;;;;;;	CALL	ITMINC
;;;;;;;	RET
;;;;;;;;----------------------------
;;;;;;;OPABGC
;;;;;;;	DB	%00000000
;;;;;;;	DB	%00000000
;;;;;;;	DB	%00000000
;;;;;;;	DB	%00000000
;;;;;;;	DB	%01000000
;;;;;;;	DB	%01000000
;;;;;;;	DB	%01000000
;;;;;;;	DB	%10000000
;;;;;;;	DB	%10000101
;;;;;;;	DB	%10000101
;;;;;;;	DB	%10000101
;;;;;;;	DB	%11000101
;;;;;;;	DB	%11001001
;;;;;;;	DB	%11001001
;;;;;;;	DB	%11001001
;;;;;;;	DB	%11001001
;;;;;;;;
;;;;;;;;	DB	%11001001
;;;;;;;;	DB	%11000100
;;;;;;;;	DB	%10000000
;;;;;;;;	DB	%01000000
;;;;;;;OPAOBC
;;;;;;;	DB	%00000000
;;;;;;;	DB	%00000000
;;;;;;;	DB	%00000000
;;;;;;;	DB	%00000000
;;;;;;;	DB	%00000100
;;;;;;;	DB	%00000100
;;;;;;;	DB	%00000100
;;;;;;;	DB	%00000100
;;;;;;;	DB	%00011000
;;;;;;;	DB	%00011000
;;;;;;;	DB	%00011000
;;;;;;;	DB	%00011000
;;;;;;;	DB	%00011100
;;;;;;;	DB	%00011100
;;;;;;;	DB	%00011100
;;;;;;;	DB	%00011100
;;;;;;;;
;;;;;;;;	DB	%00011100
;;;;;;;;	DB	%00001000
;;;;;;;;	DB	%00000100
;;;;;;;;	DB	%00000000
;;;;;;;OPAO1C
;;;;;;;	DB	%00000000
;;;;;;;	DB	%00000000
;;;;;;;	DB	%00000000
;;;;;;;	DB	%00000000
;;;;;;;	DB	%01000000
;;;;;;;	DB	%01000000
;;;;;;;	DB	%01000000
;;;;;;;	DB	%01000000
;;;;;;;	DB	%10010000
;;;;;;;	DB	%10010000
;;;;;;;	DB	%10010000
;;;;;;;	DB	%10010000
;;;;;;;	DB	%11100000
;;;;;;;	DB	%11100000
;;;;;;;	DB	%11100000
;;;;;;;	DB	%11100000
;;;;;;;;
;;;;;;;;	DB	%11100000
;;;;;;;;	DB	%10010000
;;;;;;;;	DB	%01000000
;;;;;;;;	DB	%00000000
;;;;;;;;- - - - - - - - - - - - - - - - - -
;;;;;;;OPA0000		; 横すくろーる 1
;;;;;;;	CALL	NAMISDST
;;;;;;;;
;;;;;;;	LD	A,(OPWRK1)
;;;;;;;	CP	$A0
;;;;;;;	JR	NZ,OPA001
;;;;;;;;
;;;;;;;	PUSH	AF
;;;;;;;;
;;;;;;;;;	LD	A,$15
;;;;;;;;;	CALL	BGMON	;(S)
;;;;;;;	LD	A,$02
;;;;;;;	LD	(LYC),A
;;;;;;;	POP	AF
;;;;;;;OPA001
;;;;;;;	DEC	A
;;;;;;;	LD	(OPWRK1),A
;;;;;;;	JR	NZ,OPA010
;;;;;;;;
;;;;;;;	LD	A,OPB
;;;;;;;	LD	(ITMODE),A
;;;;;;;;
;;;;;;;	LD	A,$06	; Girl set !
;;;;;;;	LD	(ENMODE+0),A
;;;;;;;;
;;;;;;;	LD	A,$B0
;;;;;;;	LD	(ENXPSL+0),A
;;;;;;;	LD	A,$68
;;;;;;;	LD	(ENYPSL+0),A
;;;;;;;	LD	A,$01
;;;;;;;	LD	(ENCONT+0),A
;;;;;;;	RET
;;;;;;;OPA010
;;;;;;;	CP	$34
;;;;;;;	JR	NC,OPA020
;;;;;;;;;	CP	$20
;;;;;;;;;	JR	NC,OPA020
;;;;;;;;
;;;;;;;;;	RRA
;;;;;;;;;	RRA
;;;;;;;;;	RRA
;;;;;;;;;	AND	$03
;;;;;;;	AND	$03
;;;;;;;	JR	NZ,OPA018
;;;;;;;;
;;;;;;;	LD	A,(OPFDCT)
;;;;;;;	CP	$0C
;;;;;;;	JR	Z,OPA018
;;;;;;;;
;;;;;;;	INC	A
;;;;;;;	LD	(OPFDCT),A
;;;;;;;OPA018
;;;;;;;	LD	A,(FRCNT)
;;;;;;;	AND	$03
;;;;;;;	LD	E,A
;;;;;;;	LD	A,(OPFDCT)
;;;;;;;	ADD	A,E
;;;;;;;	LD	E,A
;;;;;;;	LD	D,$00
;;;;;;;	LD	HL,OPABGC
;;;;;;;	ADD	HL,DE
;;;;;;;	LD	A,(HL)
;;;;;;;	LD	(BGPFG),A
;;;;;;;	LD	HL,OPAOBC
;;;;;;;	ADD	HL,DE
;;;;;;;	LD	A,(HL)
;;;;;;;	LD	(OBP0FG),A
;;;;;;;	LD	HL,OPAO1C
;;;;;;;	ADD	HL,DE
;;;;;;;	LD	A,(HL)
;;;;;;;	LD	(OBP1FG),A
;;;;;;;;
;;;;;;;	CALL	OpenWhiteInSub
;;;;;;;;
;;;;;;;OPA020
;;;;;;;	RET
;;;;;;;;- - - - - - - - - - - - - - - - - -
;;;;;;;;=======================================
;;;;;;;OPB0000		; 横すくろーる
;;;;;;;	CALL	OPOBJ	;
;;;;;;;;
;;;;;;;	RET
;;;;;;;;=======================================
;;;;;;;NAMISDST
;;;;;;;	LD	A,(ENSTAT+1)
;;;;;;;	CP	$02
;;;;;;;	JR	NC,NMSS20	; Sroll up ?
;;;;;;;;				; Yes !
;;;;;;;	LD	A,(NAMIOTO)
;;;;;;;	INC	A
;;;;;;;	CP	$A0
;;;;;;;	JR	NZ,NMSS10
;;;;;;;;
;;;;;;;	LD	A,$0F
;;;;;;;	LD	(SOUND3),A	;(S)
;;;;;;;;
;;;;;;;	XOR	A
;;;;;;;NMSS10
;;;;;;;	LD	(NAMIOTO),A
;;;;;;;NMSS20
;;;;;;;	RET
;;;;;;;;=======================================
;;;;;;;ZELDADT6
;;;;;;; DB  $9A,$16,$0F
;;;;;;; DB  $80,$81,$82,$83,$84,$85,$86,$87,$88,$89,$8A,$8B,$8C,$8D,$8E,$8F
;;;;;;;ZELDADT4
;;;;;;; DB  $9A,$36,$0F
;;;;;;; DB  $90,$91,$92,$93,$94,$95,$96,$97,$98,$99,$9A,$9B,$9C,$9D,$9E,$9F
;;;;;;;ZELDADT2
;;;;;;; DB  $9A,$56,$0F
;;;;;;; DB  $A0,$A1,$A2,$A3,$A4,$A5,$A6,$A7,$A8,$A9,$AA,$AB,$AC,$AD,$AE,$AF
;;;;;;;ZELDADT1
;;;;;;; DB  $9A,$76,$0F
;;;;;;; DB  $B0,$B1,$B2,$B3,$B4,$B5,$B6,$B7,$B8,$B9,$BA,$BB,$BC,$BD,$BE,$BF
;;;;;;;ZELDADT3
;;;;;;; DB  $9A,$96,$0F
;;;;;;; DB  $C0,$C1,$C2,$C3,$C4,$C5,$C6,$C7,$C8,$C9,$CA,$CB,$CC,$CD,$CE,$CF
;;;;;;;ZELDADT5
;;;;;;; DB  $9A,$B6,$0F
;;;;;;; DB  $D0,$D1,$D2,$D3,$D4,$D5,$D6,$D7,$D8,$D9,$DA,$DB,$DC,$DD,$DE,$DF
;;;;;;;ZELDADT7
;;;;;;; DB  $9A,$D6,$0F
;;;;;;; DB  $E0,$E1,$E2,$E3,$E4,$E5,$E6,$E7,$E8,$E9,$EA,$EB,$EC,$ED,$EE,$EF
;;;;;;;;------------------------------------------------
;;;;;;;ZELDAAD
;;;;;;;	DW	ZELDADT1
;;;;;;;	DW	ZELDADT2
;;;;;;;	DW	ZELDADT3
;;;;;;;	DW	ZELDADT4
;;;;;;;	DW	ZELDADT5
;;;;;;;	DW	ZELDADT6
;;;;;;;	DW	ZELDADT7
;;;;;;;;---------------------------------------------------------------------
;;;;;;;OPC0000
;;;;;;;	LD	A,(OPWRK2)
;;;;;;;	SLA	A
;;;;;;;	LD	E,A
;;;;;;;	LD	D,$00
;;;;;;;	LD	HL,ZELDAAD
;;;;;;;	ADD	HL,DE
;;;;;;;	LD	A,(HLI)
;;;;;;;	LD	D,(HL)
;;;;;;;	LD	E,A
;;;;;;;;
;;;;;;;	LD	HL,VRAMD+1
;;;;;;;	LD	C,$13
;;;;;;;OPC010
;;;;;;;	LD	A,(DE)
;;;;;;;	INC	DE
;;;;;;;	LD	(HLI),A
;;;;;;;	DEC	C
;;;;;;;	JR	NZ,OPC010
;;;;;;;;
;;;;;;;	LD	(HL),$00
;;;;;;;;
;;;;;;;;-------------------------------------------------------------
;;;;;;;	LD	A,(CGBFLG)
;;;;;;;	AND	A		; カラーゲームボーイ？
;;;;;;;	JR	Z,OPC015	; ＮＯ
;;;;;;;
;;;;;;;	CALL	ZELDA_AT	; (CGB)アトリビュートセット
;;;;;;;OPC015
;;;;;;;;-------------------------------------------------------------
;;;;;;;;
;;;;;;;	LD	A,(OPWRK2)
;;;;;;;	INC	A
;;;;;;;	LD	(OPWRK2),A
;;;;;;;	CP	$07
;;;;;;;	JR	NZ,OPC020
;;;;;;;;
;;;;;;;	CALL	ITMINC
;;;;;;;OPC020
;;;;;;;	RET
;;;;;;;;
;;;;;;;;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;;;;;;;;x	ＺＥＬＤＡロゴ アトリビュートセット				x
;;;;;;;;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;;;;;;;AT_ZELDADT6
;;;;;;;	DB	$9A,$16,$0F
;;;;;;;	DB	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
;;;;;;;AT_ZELDADT4
;;;;;;;	DB	$9A,$36,$0F
;;;;;;;	DB	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
;;;;;;;AT_ZELDADT2
;;;;;;;	DB	$9A,$56,$0F
;;;;;;;	DB	$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
;;;;;;;AT_ZELDADT1
;;;;;;;	DB	$9A,$76,$0F
;;;;;;;	DB	$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
;;;;;;;;;;;;AT_ZELDADT3
;;;;;;;;;;;;	DB	$9A,$96,$0F
;;;;;;;;;;;;	DB	$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
;;;;;;;;;;;;AT_ZELDADT5
;;;;;;;;;;;;	DB	$9A,$B6,$0F
;;;;;;;;;;;;	DB	$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02
;;;;;;;;;;;;AT_ZELDADT7
;;;;;;;;;;;;	DB	$9A,$D6,$0F
;;;;;;;;;;;;	DB	$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02
;;;;;;;AT_ZELDADT3
;;;;;;;	DB	$9A,$96,$0F
;;;;;;;	DB	$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02
;;;;;;;AT_ZELDADT5
;;;;;;;	DB	$9A,$B6,$0F
;;;;;;;	DB	$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02
;;;;;;;AT_ZELDADT7
;;;;;;;	DB	$9A,$D6,$0F
;;;;;;;	DB	$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02
;;;;;;;;------------------------------------------------------------------------
;;;;;;;AT_ZELDAAD
;;;;;;;	DW	AT_ZELDADT1
;;;;;;;	DW	AT_ZELDADT2
;;;;;;;	DW	AT_ZELDADT3
;;;;;;;	DW	AT_ZELDADT4
;;;;;;;	DW	AT_ZELDADT5
;;;;;;;	DW	AT_ZELDADT6
;;;;;;;	DW	AT_ZELDADT7
;;;;;;;;========================================================================
;;;;;;;
;;;;;;;ZELDA_AT
;;;;;;;	LD	A,(OPWRK2)
;;;;;;;	SLA	A
;;;;;;;	LD	E,A
;;;;;;;	LD	D,$00
;;;;;;;	LD	HL,AT_ZELDAAD
;;;;;;;	ADD	HL,DE
;;;;;;;	LD	A,(HLI)
;;;;;;;	LD	D,(HL)
;;;;;;;	LD	E,A
;;;;;;;
;;;;;;;	LD	HL,VRAMD_AT+1
;;;;;;;	LD	C,$13
;;;;;;;ZEL_AT_100
;;;;;;;	LD	A,(DE)
;;;;;;;	INC	DE
;;;;;;;	LD	(HLI),A
;;;;;;;	DEC	C
;;;;;;;	JR	NZ,ZEL_AT_100
;;;;;;;
;;;;;;;	LD	(HL),$00
;;;;;;;
;;;;;;;	RET
;;;;;;;;------------------------------------------------------------------------
;;;;;;;
;;;;;;;;==============================================
;;;;;;;;ZLFLDT
;;;;;;;;	DB	$09,$49,$89,$C9,$C9,$89,$49,$09
;;;;;;;OPD0000
;;;;;;;	LD	A,(WAVCNT3)
;;;;;;;	CP	$10
;;;;;;;	JR	C,OPD090
;;;;;;;;
;;;;;;;	LD	A,$19
;;;;;;;	LD	(SOUND3),A	;(S)
;;;;;;;;
;;;;;;;	CALL	ITMINC
;;;;;;;OPD090
;;;;;;;;
;;;;;;;;	LD	A,(FRCNT)
;;;;;;;;	RRA
;;;;;;;;	RRA
;;;;;;;;	RRA
;;;;;;;;	RRA
;;;;;;;;	AND	$07
;;;;;;;;	LD	E,A
;;;;;;;;	LD	D,$0
;;;;;;;;	LD	HL,ZLFLDT
;;;;;;;;	ADD	HL,DE
;;;;;;;;	LD	A,(HL)
;;;;;;;;	LD	(BGPFG),A
;;;;;;;	RET
;;;;;;;;
;;;;;;;;---------------------------------------
;;;;;;;NINDT
;;;;;;;;(CGB)	DB	$9B,$B9,$09
;;;;;;;;(CGB)	DB	$65,$66,$67,$68,$69,$6A,$6B,$6C,$6D,$6E
;;;;;;;;(CGB)	DB	$00
;;;;;;;	DB	$9B,$B7,$0D
;;;;;;;	DB	$65,$66,$67,$68,$69,$6A,$6B,$6C,$6D,$6E
;;;;;;;	DB	$6f,$70,$71,$72
;;;;;;;	DB	$00
;;;;;;;;- - - - - - - - - - - - - - - - - - - -
;;;;;;;OPE0000
;;;;;;;	LD	DE,NINDT
;;;;;;;	LD	HL,VRAMD+1
;;;;;;;;(CGB)	LD	C,14
;;;;;;;	LD	C,18
;;;;;;;OPE010
;;;;;;;	LD	A,(DE)
;;;;;;;	INC	DE
;;;;;;;	LD	(HLI),A
;;;;;;;	DEC	C
;;;;;;;	JR	NZ,OPE010
;;;;;;;;
;;;;;;;;-------------------------------------------------------------
;;;;;;;		LD	A,(CGBFLG)
;;;;;;;		AND	A		; カラーゲームボーイ？
;;;;;;;		JR	NZ,OPE020	; ＹＥＳ
;;;;;;;
;;;;;;;;;;;;;;		XOR	A		; カラー１パターン目
;;;;;;;		CALL	DX_GB_COLSET	; ＤＸカラー転送
;;;;;;;		JR	OPE021
;;;;;;;OPE020
;;;;;;;		XOR	A		; カラー１パターン目
;;;;;;;		CALL	DX_CGB_COLSET	; ＤＸカラー転送
;;;;;;;		CALL	NINTENDO_AT	; アトリビュートセット
;;;;;;;OPE021
;;;;;;;		LD	A,DX_wait_time	; ＤＸ表示待ち時間
;;;;;;;		LD	(DXCLWT),A
;;;;;;;;-------------------------------------------------------------
;;;;;;;	CALL	ITMINC
;;;;;;;;
;;;;;;;LOGOINT
;;;;;;;	LD	A,$A0
;;;;;;;	LD	(OPWRK1),A
;;;;;;;;
;;;;;;;	XOR	A
;;;;;;;	LD	(OPWRK2),A
;;;;;;;;
;;;;;;;	LD	A,$FF
;;;;;;;	LD	(OPWRK3),A
;;;;;;;	RET
;;;;;;;;
;;;;;;;;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;;;;;;;;x	ＮＩＮＴＥＮＤＯロゴ アトリビュートセット			x
;;;;;;;;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;;;;;;;AT_NINDT
;;;;;;;		DB	$9B,$B7		; ＶＲＡＭアドレス
;;;;;;;		DB	%01000000 | $0E-1	; 横、共通、０ＥＨ
;;;;;;;		DB	$07		; アトリビュート
;;;;;;;		DB	$00		; エンドコード
;;;;;;;;========================================================================
;;;;;;;
;;;;;;;NINTENDO_AT
;;;;;;;		LD	DE,AT_NINDT
;;;;;;;		LD	HL,VRAMD_AT+1
;;;;;;;		LD	C,18
;;;;;;;NIN_AT_100
;;;;;;;		LD	A,(DE)
;;;;;;;		INC	DE
;;;;;;;		LD	(HLI),A
;;;;;;;		DEC	C
;;;;;;;		JR	NZ,NIN_AT_100
;;;;;;;
;;;;;;;		RET
;;;;;;;;------------------------------------------------------------------------
;;;;;;;;
;;;;;;;;=================================================
;;;;;;;OPZFLX
;;;;;;;	DB	$18,$18,$38,$40,$58,$60,$80,$88
;;;;;;;OPZFLY
;;;;;;;	DB	$20,$48,$44,$28,$44,$28,$28,$40
;;;;;;;;- - - - - - - - - - - - - - - - - -
;;;;;;;OPF0000
;;;;;;;	CALL	OPOBJ
;;;;;;;		CALL	DX_OBJ	; ＤＸ セット
;;;;;;;;
;;;;;;;	LD	A,(FRCNT)
;;;;;;;	AND	$3F
;;;;;;;	JR	NZ,OPF008
;;;;;;;;
;;;;;;;	LD	E,$01
;;;;;;;	LD	D,$0
;;;;;;;OPF001
;;;;;;;	LD	HL,ENMODE
;;;;;;;	ADD	HL,DE
;;;;;;;	LD	A,(HL)
;;;;;;;	AND	A
;;;;;;;	JR	Z,OPF0002
;;;;;;;	DEC	E
;;;;;;;	LD	A,E
;;;;;;;	CP	$FF
;;;;;;;	JR	NZ,OPF001
;;;;;;;	JR	OPF008
;;;;;;;;
;;;;;;;OPF0002
;;;;;;;	LD	(HL),$08
;;;;;;;;
;;;;;;;	LD	HL,ENTIM0
;;;;;;;	ADD	HL,DE
;;;;;;;	LD	(HL),$3F
;;;;;;;;
;;;;;;;;;	CALL	RNDSUB
;;;;;;;	LD	A,(OPWRK3)
;;;;;;;	INC	A
;;;;;;;	LD	(OPWRK3),A
;;;;;;;	AND	$07
;;;;;;;	LD	C,A
;;;;;;;	LD	B,$00
;;;;;;;	LD	HL,OPZFLX
;;;;;;;	ADD	HL,BC
;;;;;;;	LD	A,(HL)
;;;;;;;	LD	HL,ENXPSL
;;;;;;;	ADD	HL,DE
;;;;;;;	LD	(HL),A
;;;;;;;;
;;;;;;;	LD	HL,OPZFLY
;;;;;;;	ADD	HL,BC
;;;;;;;	LD	A,(HL)
;;;;;;;	LD	HL,ENYPSL
;;;;;;;	ADD	HL,DE
;;;;;;;	LD	(HL),A
;;;;;;;;
;;;;;;;OPF008
;;;;;;;;;	LD	A,(FRCNT)
;;;;;;;	LD	A,(OPWRK2)
;;;;;;;	INC	A
;;;;;;;	LD	(OPWRK2),A
;;;;;;;	AND	$0F
;;;;;;;	JR	NZ,OPF010
;;;;;;;;
;;;;;;;;(CGB)	LD	A,(OPWRK1),A
;;;;;;;	LD	A,(OPWRK1)
;;;;;;;	DEC	A
;;;;;;;	LD	(OPWRK1),A
;;;;;;;;
;;;;;;;;;	JR	OPF010
;;;;;;;	JR	NZ,OPF010
;;;;;;;;
;;;;;;;;;	JP	GMRESET
;;;;;;;	CALL	ITMINC
;;;;;;;;
;;;;;;;	XOR	A
;;;;;;;	LD	(SBHR),A
;;;;;;;	LD	(SBCNT),A
;;;;;;;;
;;;;;;;	CALL	SOUNDOUT	;(S)
;;;;;;;OPF010
;;;;;;;	RET
;;;;;;;;=================================================
;;;;;;;OPF8000
;;;;;;;	CALL	FDIN
;;;;;;;;
;;;;;;;	LD	A,(SBHR)
;;;;;;;	CP	$04
;;;;;;;	JR	NZ,OPF8010
;;;;;;;;
;;;;;;;	JP	GMRESET
;;;;;;;OPF8010
;;;;;;;	RET
;;;;;;;;======================================
;;;;;;;OPF9000
;;;;;;;;;	LD	A,LOGOS
;;;;;;;;;	LD	(VRFLG),A
;;;;;;;	LD	A,OPBS2
;;;;;;;	LD	(BLNKFG),A
;;;;;;;;
;;;;;;;	LD	A,OPLG
;;;;;;;	LD	(ITMODE),A
;;;;;;;;
;;;;;;;	LD	A,$C9
;;;;;;;	LD	(BGPFG),A
;;;;;;;	LD	A,$1C
;;;;;;;	LD	(OBP0FG),A
;;;;;;;;
;;;;;;;	XOR	A
;;;;;;;	LD	(SCCH),A
;;;;;;;		LD	A,$FF	; １ドット下げる（ＤＸがずれる為）
;;;;;;;	LD	(SCCV),A
;;;;;;;	RET
;;;;;;;;======================================
;;;;;;;;======================================
;;;;;;;RAINCS
;;;;;;;	CALL	RNDSUB
;;;;;;;	AND	$18
;;;;;;;	ADD	A,$10
;;;;;;;;;	LD	A,$18
;;;;;;;	LD	(WORK1),A	; Initial Y
;;;;;;;	CALL	RNDSUB
;;;;;;;	AND	$18
;;;;;;;	ADD	A,$10
;;;;;;;	LD	(WORK0),A	;	"  X
;;;;;;;;
;;;;;;;	LD	HL,OAM+$4C
;;;;;;;;
;;;;;;;	LD	C,16
;;;;;;;	LD	A,(ITMODE)
;;;;;;;	CP	OP9
;;;;;;;	JR	NZ,RAC010
;;;;;;;;
;;;;;;;	LD	C,21
;;;;;;;;
;;;;;;;RAC010
;;;;;;;	LD	A,(WORK1)
;;;;;;;	LD	(HLI),A
;;;;;;;	LD	A,(WORK0)
;;;;;;;	LD	(HLI),A
;;;;;;;;
;;;;;;;	CALL	RNDSUB
;;;;;;;	AND	$01
;;;;;;;	LD	A,$28
;;;;;;;	JR	Z,RAC011
;;;;;;;;
;;;;;;;	CALL	RNDSUB
;;;;;;;	AND	%00000110
;;;;;;;	ADD	A,$70
;;;;;;;RAC011
;;;;;;;	LD	(HLI),A
;;;;;;;;
;;;;;;;	LD	A,$00
;;;;;;;	LD	(HLI),A
;;;;;;;;
;;;;;;;	LD	A,(WORK0)
;;;;;;;	ADD	A,$1C
;;;;;;;	LD	(WORK0),A
;;;;;;;	CP	$A0
;;;;;;;	JR	C,RAC020
;;;;;;;;
;;;;;;;	SUB	$98
;;;;;;;	LD	(WORK0),A
;;;;;;;;
;;;;;;;	LD	A,(WORK1)
;;;;;;;	ADD	A,$25
;;;;;;;	LD	(WORK1),A
;;;;;;;RAC020
;;;;;;;;
;;;;;;;	DEC	C
;;;;;;;	JR	NZ,RAC010
;;;;;;;;
;;;;;;;	RET
;;;;;;;;======================================
;;;;;;;LKKAOD
;;;;;;;	DB	$99,$2B,$83,$1E,$20,$22,$24
;;;;;;;	DB	$99,$2C,$83,$1F,$21,$23,$25
;;;;;;;	DB	$00
;;;;;;;;
;;;;;;;LINKKAO
;;;;;;;	LD	DE,VRAMD+1
;;;;;;;	LD	HL,LKKAOD
;;;;;;;;
;;;;;;;	LD	C,$0F
;;;;;;;LKK010
;;;;;;;	LD	A,(HLI)
;;;;;;;	LD	(DE),A
;;;;;;;	INC	DE
;;;;;;;	DEC	C
;;;;;;;	JR	NZ,LKK010
;;;;;;;	RET
;;;;;;;;======================================
;;;;;;;;- - - - - - - - - - - - -
;;;;;;;OPOBJ ;INAZUMA
;;;;;;;	XOR	A
;;;;;;;	LD	(ENOMID),A
;;;;;;;;
;;;;;;;	LD	C,$02
;;;;;;;	LD	B,$00
;;;;;;;INZ010
;;;;;;;	LD	A,C
;;;;;;;	LD	(INDEX),A
;;;;;;;;
;;;;;;;	LD	HL,ENMODE
;;;;;;;	ADD	HL,BC
;;;;;;;	LD	A,(HL)
;;;;;;;	AND	A
;;;;;;;	JR	Z,INZ090
;;;;;;;;
;;;;;;;	LD	HL,ENXPSL
;;;;;;;	ADD	HL,BC
;;;;;;;	LD	A,(HL)
;;;;;;;	LD	(ENSVXL),A
;;;;;;;	LD	HL,ENYPSL
;;;;;;;	ADD	HL,BC
;;;;;;;	LD	A,(HL)
;;;;;;;	LD	(ENDSYP),A
;;;;;;;;
;;;;;;;	LD	HL,ENCHPT
;;;;;;;	ADD	HL,BC
;;;;;;;	LD	A,(HL)
;;;;;;;	LD	(ENCHPT2),A
;;;;;;;;
;;;;;;;	LD	HL,ENSTAT
;;;;;;;	ADD	HL,BC
;;;;;;;	LD	A,(HL)
;;;;;;;	LD	(ENSTAT2),A
;;;;;;;;
;;;;;;;	CALL	INZMAIN
;;;;;;;INZ090
;;;;;;;	DEC	C
;;;;;;;	LD	A,C
;;;;;;;	CP	$FF
;;;;;;;	JR	NZ,INZ010
;;;;;;;	RET
;;;;;;;;-----------------------------------
;;;;;;;INZMAIN
;;;;;;;	LD	HL,ENMODE
;;;;;;;	ADD	HL,BC
;;;;;;;	LD	A,(HL)
;;;;;;;	CP	$05
;;;;;;;	JR	Z,FUNEMV
;;;;;;;	CP	$06
;;;;;;;	JP	Z,GIRLMV
;;;;;;;	CP	$07
;;;;;;;	JP	Z,LINKMV
;;;;;;;	CP	$08
;;;;;;;	JP	Z,ZFLASH
;;;;;;;;
;;;;;;;	CALL	LDTIM0
;;;;;;;	JR	NZ,INZM10
;;;;;;;;
;;;;;;;	LD	HL,ENMODE
;;;;;;;	ADD	HL,BC
;;;;;;;	LD	(HL),B
;;;;;;;	RET
;;;;;;;INZM10
;;;;;;;	DEC	(HL)
;;;;;;;;
;;;;;;;	CALL	INZCS
;;;;;;;	RET
;;;;;;;;----------------------------------
;;;;;;;FUNECD
;;;;;;;	DB	$00,$00,$1C,$02
;;;;;;;	DB	$00,$08,$1E,$02
;;;;;;;	DB	$10,$F8,$20,$02
;;;;;;;	DB	$10,$00,$22,$02
;;;;;;;	DB	$10,$08,$24,$02
;;;;;;;	DB	$10,$10,$26,$02
;;;;;;;BIGINZ
;;;;;;;	DB	$F8,$04,$32,$01
;;;;;;;	DB	$E8,$04,$32,$01
;;;;;;;	DB	$D8,$04,$32,$01
;;;;;;;	DB	$C8,$04,$32,$01
;;;;;;;FNSCYD
;;;;;;;	DB	2,1,0,0,0,1,2,2
;;;;;;;;
;;;;;;;FUNEMV
;;;;;;;	LD	A,(OPWRK2)
;;;;;;;	AND	A
;;;;;;;	LD	A,$00
;;;;;;;	JR	NZ,FNM002
;;;;;;;;
;;;;;;;	LD	A,(FRCNT)
;;;;;;;	ADD	A,$D0
;;;;;;;	RRA
;;;;;;;	RRA
;;;;;;;	RRA
;;;;;;;	RRA
;;;;;;;	AND	$07
;;;;;;;FNM002
;;;;;;;	LD	E,A
;;;;;;;	LD	D,$0
;;;;;;;	LD	HL,FNSCYD
;;;;;;;	ADD	HL,DE
;;;;;;;	LD	A,(HL)
;;;;;;;;;	RRA
;;;;;;;;;	AND	$0F
;;;;;;;	LD	HL,ENDSYP
;;;;;;;	ADD	A,(HL)
;;;;;;;	LD	(HL),A
;;;;;;;;
;;;;;;;	LD	HL,FUNECD
;;;;;;;	LD	DE,OAM+$00
;;;;;;;;
;;;;;;;	PUSH	BC
;;;;;;;;
;;;;;;;	LD	C,$06
;;;;;;;FNC010
;;;;;;;	LD	A,(ENDSYP)
;;;;;;;	ADD	A,(HL)
;;;;;;;	INC	HL
;;;;;;;	LD	(DE),A
;;;;;;;	INC	DE
;;;;;;;;
;;;;;;;	LD	A,(ENSVXL)
;;;;;;;	ADD	A,(HL)
;;;;;;;	INC	HL
;;;;;;;	LD	(DE),A
;;;;;;;	INC	DE
;;;;;;;;
;;;;;;;	LD	A,(HLI)
;;;;;;;	LD	(DE),A
;;;;;;;	INC	DE
;;;;;;;;
;;;;;;;	LD	A,(HLI)
;;;;;;;	LD	(DE),A
;;;;;;;	INC	DE
;;;;;;;;
;;;;;;;	DEC	C
;;;;;;;	JR	NZ,FNC010
;;;;;;;;--------------------
;;;;;;;	LD	A,(OPWRK2)
;;;;;;;	CP	$10
;;;;;;;	JR	C,FNC020	; 稲妻直撃？
;;;;;;;;				; YES !
;;;;;;;	LD	HL,BIGINZ
;;;;;;;	LD	DE,OAM+$18
;;;;;;;;
;;;;;;;	LD	C,$04
;;;;;;;FNC060
;;;;;;;	LD	A,(ENDSYP)
;;;;;;;	ADD	A,(HL)
;;;;;;;	INC	HL
;;;;;;;	LD	(DE),A
;;;;;;;	INC	DE
;;;;;;;;
;;;;;;;	LD	A,(ENSVXL)
;;;;;;;	ADD	A,(HL)
;;;;;;;	INC	HL
;;;;;;;	LD	(DE),A
;;;;;;;	INC	DE
;;;;;;;;
;;;;;;;	LD	A,(HLI)
;;;;;;;	LD	(DE),A
;;;;;;;	INC	DE
;;;;;;;;
;;;;;;;	LD	A,(HLI)
;;;;;;;	LD	(DE),A
;;;;;;;	INC	DE
;;;;;;;;
;;;;;;;	DEC	C
;;;;;;;	JR	NZ,FNC060
;;;;;;;FNC020
;;;;;;;	POP	BC
;;;;;;;	RET
;;;;;;;;----------------------------------
;;;;;;;INZCDT
;;;;;;;;0
;;;;;;;	DB	$00,$00,$34,$01
;;;;;;;	DB	$00,$08,$36,$01
;;;;;;;	DB	$10,$00,$2C,$01
;;;;;;;	DB	$20,$F8,$2C,$01
;;;;;;;	DB	$28,$00,$2E,$21
;;;;;;;	DB	$30,$F0,$2E,$01
;;;;;;;;1
;;;;;;;	DB	$08,$00,$36,$21
;;;;;;;	DB	$08,$08,$34,$21
;;;;;;;	DB	$18,$00,$30,$01
;;;;;;;	DB	$18,$08,$2C,$21
;;;;;;;	DB	$28,$10,$2E,$21
;;;;;;;	DB	$28,$10,$2E,$21
;;;;;;;;2
;;;;;;;	DB	$00,$08,$34,$21
;;;;;;;	DB	$00,$00,$36,$21
;;;;;;;	DB	$10,$08,$2C,$21
;;;;;;;	DB	$20,$10,$2C,$21
;;;;;;;	DB	$28,$08,$2E,$01
;;;;;;;	DB	$30,$18,$2E,$21
;;;;;;;;3
;;;;;;;	DB	$08,$08,$36,$01
;;;;;;;	DB	$08,$00,$34,$01
;;;;;;;	DB	$18,$08,$30,$21
;;;;;;;	DB	$18,$00,$2C,$01
;;;;;;;	DB	$28,$F8,$2E,$01
;;;;;;;	DB	$28,$F8,$2E,$01
;;;;;;;;- - - - - - - - - - - - - - - - -
;;;;;;;INZCS
;;;;;;;	LD	HL,ENMODE
;;;;;;;	ADD	HL,BC
;;;;;;;	LD	A,(HL)
;;;;;;;	DEC	A
;;;;;;;	SLA	A
;;;;;;;	SLA	A
;;;;;;;;
;;;;;;;	SLA	A
;;;;;;;	LD	E,A
;;;;;;;	SLA	A
;;;;;;;	ADD	A,E
;;;;;;;	LD	E,A
;;;;;;;	LD	D,B
;;;;;;;	LD	HL,INZCDT
;;;;;;;	ADD	HL,DE
;;;;;;;;
;;;;;;;	LD	C,$06
;;;;;;;;
;;;;;;;	CALL	ENOMST
;;;;;;;;
;;;;;;;	LD	A,(ENOMID)
;;;;;;;	ADD	A,$4*6
;;;;;;;	LD	(ENOMID),A
;;;;;;;	RET
;;;;;;;;======================================
;;;;;;;GIRLCD
;;;;;;;	DB	$00,$03,$02,$03
;;;;;;;	DB	$04,$03,$06,$03
;;;;;;;	DB	$08,$03,$0A,$03
;;;;;;;	DB	$0C,$03,$0E,$03
;;;;;;;; - - - - - - - - - - - - -
;;;;;;;GIRLMV
;;;;;;;	CALL	NAMISDST
;;;;;;;;
;;;;;;;	XOR	A
;;;;;;;	LD	(ENMOD0),A
;;;;;;;;
;;;;;;;	LD	DE,GIRLCD
;;;;;;;	CALL	EN2CST
;;;;;;;;
;;;;;;;	LD	A,(ENOMID)
;;;;;;;	ADD	A,$08
;;;;;;;	LD	(ENOMID),A
;;;;;;;;
;;;;;;;	LD	A,(ENSTAT2)
;;;;;;;	RST	0
;;;;;;;	DW	GIRLWRK
;;;;;;;	DW	GIRLSTP
;;;;;;;	DW	GIRLRUN
;;;;;;;	DW	GIRLRUN2
;;;;;;;	DW	GIRLHLP
;;;;;;;;--------------------------------------
;;;;;;;GIRLWRK
;;;;;;;	CALL	OPSCRL2 ; Part scroll sub !
;;;;;;;;
;;;;;;;	LD	A,(FRCNT)
;;;;;;;	RRA
;;;;;;;	RRA
;;;;;;;	RRA
;;;;;;;	AND	$01
;;;;;;;	CALL	ENPTST
;;;;;;;;
;;;;;;;	LD	A,(ENSVXL)
;;;;;;;	CP	$48
;;;;;;;	JR	NC,GLW010
;;;;;;;;
;;;;;;;	CALL	LDTIM0
;;;;;;;	LD	(HL),$40
;;;;;;;;
;;;;;;;	CALL	STATINC
;;;;;;;GLW010
;;;;;;;;;	LD	A,(FRCNT)
;;;;;;;;;	AND	$03
;;;;;;;;;	JR	NZ,GLW030
;;;;;;;	LD	HL,ENCONT
;;;;;;;	ADD	HL,BC
;;;;;;;	DEC	(HL)
;;;;;;;	JR	NZ,GLW030
;;;;;;;;
;;;;;;;	LD	(HL),$04
;;;;;;;;
;;;;;;;	LD	HL,ENXPSL
;;;;;;;	ADD	HL,BC
;;;;;;;	DEC	(HL)
;;;;;;;GLW030
;;;;;;;	RET
;;;;;;;;--------------------------------------
;;;;;;;GIRLSTP
;;;;;;;	CALL	NMCHTR	; Nami CHR tr !
;;;;;;;;
;;;;;;;	LD	A,$01
;;;;;;;	CALL	ENPTST
;;;;;;;;
;;;;;;;	CALL	LDTIM0
;;;;;;;	JR	NZ,GLS010
;;;;;;;;
;;;;;;;	CALL	STATINC
;;;;;;;;
;;;;;;;	LD	A,$07
;;;;;;;	LD	(ENMODE+1),A	; Link set !!
;;;;;;;;
;;;;;;;	LD	A,$FE  ;+5
;;;;;;;;;	LD	A,$F8  ;+5
;;;;;;;	LD	(ENXPSL+1),A
;;;;;;;	LD	A,$6E ;70  ;6C
;;;;;;;	LD	(ENYPSL+1),A
;;;;;;;;
;;;;;;;	XOR	A
;;;;;;;	LD	(ENSTAT+1),A
;;;;;;;	LD	(ENTIM0+1),A
;;;;;;;	LD	(FRCNT),A
;;;;;;;;
;;;;;;;	RET
;;;;;;;GLS010
;;;;;;;	DEC	(HL)
;;;;;;;	RET
;;;;;;;;
;;;;;;;;
;;;;;;;;
;;;;;;;;--------------------------------------
;;;;;;;GIRLRUN
;;;;;;;	CALL	OPSCRL2
;;;;;;;;
;;;;;;;	LD	A,(ENXPSL+1)
;;;;;;;	DEC	A
;;;;;;;	LD	(ENXPSL+1),A	; Link 接近
;;;;;;;;
;;;;;;;	LD	A,(FRCNT)
;;;;;;;	AND	$01
;;;;;;;	JR	NZ,GLR010
;;;;;;;;
;;;;;;;	LD	HL,SCCH
;;;;;;;	INC	(HL)
;;;;;;;	LD	A,(HL)
;;;;;;;PNT1
;;;;;;;	CP	$30
;;;;;;;;;	CP	$40
;;;;;;;	JR	NZ,GLR008
;;;;;;;;
;;;;;;;	CALL	LDTIM0
;;;;;;;	LD	(HL),$40
;;;;;;;;
;;;;;;;;
;;;;;;;;
;;;;;;;;;	CP	$56
;;;;;;;;;	JR	NZ,GLR008
;;;;;;;;
;;;;;;;;	LD	A,$A0
;;;;;;;;	LD	(HL),A
;;;;;;;;	LD	(SCX),A
;;;;;;;;;
;;;;;;;;	LD	A,$01
;;;;;;;;	LD	(IE),A
;;;;;;;;;
;;;;;;;;	CALL	LDTIM0
;;;;;;;;	LD	(HL),$FF
;;;;;;;;
;;;;;;;	JP	STATINC
;;;;;;;GLR008
;;;;;;;	CP	$20
;;;;;;;	JR	NZ,GLR0088
;;;;;;;;
;;;;;;;	CALL	YAMARV1
;;;;;;;;
;;;;;;;	XOR	A
;;;;;;;GLR0088
;;;;;;;	CP	$22
;;;;;;;	JR	NZ,GLR0089
;;;;;;;;
;;;;;;;	CALL	YAMARV2
;;;;;;;;
;;;;;;;	XOR	A
;;;;;;;GLR0089
;;;;;;;;	CP	$4E
;;;;;;;;	JR	NZ,GLR0088
;;;;;;;;;
;;;;;;;;	CALL	YAMARV3
;;;;;;;;;
;;;;;;;;	XOR	A
;;;;;;;;GLR0088
;;;;;;;;	CP	$20
;;;;;;;;	JR	NZ,GLR009
;;;;;;;;;
;;;;;;;;	CALL	YAMARV1
;;;;;;;;;
;;;;;;;;	XOR	A
;;;;;;;;GLR009
;;;;;;;;	CP	$21
;;;;;;;;	JR	NZ,GLR010
;;;;;;;;;
;;;;;;;;	CALL	YAMARV2
;;;;;;;GLR010
;;;;;;;	LD	A,(FRCNT)
;;;;;;;	RRA
;;;;;;;	RRA
;;;;;;;	AND	$01
;;;;;;;	CALL	ENPTST
;;;;;;;;
;;;;;;;;	LD	A,(FRCNT)
;;;;;;;;	AND	$01
;;;;;;;;	JR	NZ,GLR030
;;;;;;;;;
;;;;;;;;	LD	HL,ENXPSL
;;;;;;;;	ADD	HL,BC
;;;;;;;;	INC	(HL)
;;;;;;;GLR030
;;;;;;;	RET
;;;;;;;;--------------------------------------
;;;;;;;GIRLRUN2
;;;;;;;	CALL	LDTIM0
;;;;;;;	JR	NZ,GLR2A0
;;;;;;;;
;;;;;;;;	LD	A,(FRCNT)
;;;;;;;;	AND	$03
;;;;;;;;	JR	NZ,GLR202
;;;;;;;;
;;;;;;;	CALL	OPSCRL22
;;;;;;;;
;;;;;;;GLR202
;;;;;;;	LD	A,(FRCNT)
;;;;;;;	AND	$01
;;;;;;;	JR	NZ,GLR210
;;;;;;;;
;;;;;;;	LD	A,(ENXPSL+1)
;;;;;;;	DEC	A
;;;;;;;	LD	(ENXPSL+1),A	; Link 接近
;;;;;;;;
;;;;;;;	LD	A,(FRCNT)
;;;;;;;	AND	$03
;;;;;;;	JR	NZ,GLR210
;;;;;;;;
;;;;;;;PNT2
;;;;;;;	LD	HL,SCCH
;;;;;;;	INC	(HL)
;;;;;;;	LD	A,(HL)
;;;;;;;	CP	$40
;;;;;;;	JR	Z,TTYY
;;;;;;;	CP	$3A
;;;;;;;	JR	NZ,TTYU
;;;;;;;;
;;;;;;;	CALL	LDTIM0
;;;;;;;	LD	(HL),$30
;;;;;;;	JR	TTYU
;;;;;;;TTYY
;;;;;;;	CALL	LDTIM0
;;;;;;;	LD	(HL),$50
;;;;;;;TTYU
;;;;;;;	LD	A,(SCCH)
;;;;;;;;
;;;;;;;;
;;;;;;;;
;;;;;;;;
;;;;;;;;;	CP	$56
;;;;;;;;99	CP	$54
;;;;;;;	CP	$56
;;;;;;;	JR	NZ,GLR208
;;;;;;;;
;;;;;;;	LD	A,$A0
;;;;;;;	LD	(HL),A
;;;;;;;	LD	(SCX),A
;;;;;;;;
;;;;;;;	LD	A,$01
;;;;;;;	LD	(IE),A
;;;;;;;;
;;;;;;;	CALL	LDTIM0
;;;;;;;	LD	(HL),$E0
;;;;;;;;;;	LD	(HL),$FF
;;;;;;;;
;;;;;;;	JP	STATINC
;;;;;;;GLR208
;;;;;;;	CP	$20
;;;;;;;	JR	NZ,GLR2088
;;;;;;;;
;;;;;;;	CALL	YAMARV1
;;;;;;;;
;;;;;;;	XOR	A
;;;;;;;GLR2088
;;;;;;;	CP	$22
;;;;;;;	JR	NZ,GLR2089
;;;;;;;;
;;;;;;;	CALL	YAMARV2
;;;;;;;;
;;;;;;;	XOR	A
;;;;;;;GLR2089
;;;;;;;GLR210
;;;;;;;	LD	A,(FRCNT)
;;;;;;;	RRA
;;;;;;;	RRA
;;;;;;;	RRA
;;;;;;;	RRA
;;;;;;;	AND	$01
;;;;;;;	CALL	ENPTST
;;;;;;;GLR290
;;;;;;;	RET
;;;;;;;GLR2A0
;;;;;;;	DEC	(HL)
;;;;;;;;
;;;;;;;	CALL	NMCHTR	; Nami CHR tr !
;;;;;;;;
;;;;;;;	LD	A,$01
;;;;;;;	JP	ENPTST
;;;;;;;;--------------------------------------
;;;;;;;GIRLHLP
;;;;;;;	CALL	NMCHTR	; Nami CHR tr !
;;;;;;;;
;;;;;;;	LD	A,(FRCNT)
;;;;;;;	AND	$01
;;;;;;;	JR	NZ,GLH020
;;;;;;;;
;;;;;;;	LD	A,$02
;;;;;;;;;	LD	A,$01
;;;;;;;	CALL	ENPTST
;;;;;;;;
;;;;;;;	LD	A,$00
;;;;;;;	LD	(ENCHPT+1),A	; Link pt
;;;;;;;;
;;;;;;;	CALL	LDTIM0
;;;;;;;	JR	Z,GLH008
;;;;;;;	DEC	(HL)
;;;;;;;GLH008
;;;;;;;	CP	$A0
;;;;;;;	JR	NC,GLH020
;;;;;;;	CP	$90
;;;;;;;	JR	NC,GLH010
;;;;;;;	CP	$50
;;;;;;;	JR	NC,GLH020
;;;;;;;	CP	$4A
;;;;;;;	JR	NC,GLH010
;;;;;;;	CP	$3C
;;;;;;;	JR	NC,GLH020
;;;;;;;	CP	$36
;;;;;;;	JR	C,GLH020
;;;;;;;GLH010
;;;;;;;	LD	A,$03
;;;;;;;;;	LD	A,$02
;;;;;;;	CALL	ENPTST
;;;;;;;;
;;;;;;;	LD	A,$01
;;;;;;;	LD	(ENCHPT+1),A
;;;;;;;GLH020
;;;;;;;	RET
;;;;;;;;=========================================
;;;;;;;ZFLCD
;;;;;;;	DB	$38,$00,$38,$20
;;;;;;;	DB	$3A,$00,$3A,$20
;;;;;;;	DB	$3A,$00,$3A,$20
;;;;;;;	DB	$3C,$00,$3E,$00
;;;;;;;	DB	$3C,$00,$3E,$00
;;;;;;;	DB	$3A,$00,$3A,$20
;;;;;;;	DB	$3A,$00,$3A,$20
;;;;;;;	DB	$38,$00,$38,$20
;;;;;;;; - - - - - - - - - - - - - - - - -
;;;;;;;ZFLASH
;;;;;;;		XOR	A
;;;;;;;		LD	(ENOMIS),A
;;;;;;;
;;;;;;;	CALL	LDTIM0
;;;;;;;	DEC	(HL)
;;;;;;;	JR	NZ,ZFL010
;;;;;;;;
;;;;;;;	LD	HL,ENMODE
;;;;;;;	ADD	HL,BC
;;;;;;;	LD	(HL),B
;;;;;;;	RET
;;;;;;;ZFL010
;;;;;;;	LD	A,(HL)
;;;;;;;	RRA
;;;;;;;	RRA
;;;;;;;	RRA
;;;;;;;	AND	$07
;;;;;;;	LD	(ENCHPT2),A
;;;;;;;;
;;;;;;;	XOR	A
;;;;;;;	LD	(ENMOD0),A
;;;;;;;;
;;;;;;;	LD	DE,ZFLCD
;;;;;;;	CALL	EN2CST
;;;;;;;;
;;;;;;;	LD	A,(ENOMID)
;;;;;;;	ADD	A,$08
;;;;;;;	LD	(ENOMID),A
;;;;;;;	RET
;;;;;;;;=========================================
;;;;;;;;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;;;;;;;;x	ＤＸ 表示							x
;;;;;;;;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;;;;;;;DX_wait_time	EQU	60		; 表示待ち時間
;;;;;;;DX_oam_xpos	EQU	$79		; Ｘポジション
;;;;;;;DX_oam_ypos	EQU	$46		; Ｙポジション
;;;;;;;;------------------------------------------------------------------------
;;;;;;;GB_chgnge_fct	EQU	12		; カラー転送フレーム（ＧＢ）
;;;;;;;CGB_chgnge_fct	EQU	8		; カラー転送フレーム（ＣＧＢ）
;;;;;;;;------------------------------------------------------------------------
;;;;;;;DX2_oam_data_GB				; 島に重ねる部分
;;;;;;;		DB	$40-$40,$10,$2C,$05
;;;;;;;		DB	$50-$40,$10,$2A,$05
;;;;;;;		DB	$40-$40,$10,$28,$05
;;;;;;;		DB	$50-$40,$08,$26,$05
;;;;;;;		DB	$40-$40,$08,$24,$05
;;;;;;;		DB	$50-$40,$00,$22,$05
;;;;;;;		DB	$40-$40,$00,$20,$05
;;;;;;;DX_oam_data_GB
;;;;;;;		DB	$10,$18,$4f,$16
;;;;;;;		DB	$00,$18,$4d,$16
;;;;;;;		DB	$10,$10,$4b,$16
;;;;;;;		DB	$00,$10,$49,$16
;;;;;;;		DB	$10,$08,$47,$16
;;;;;;;		DB	$00,$08,$45,$16
;;;;;;;		DB	$10,$00,$43,$16
;;;;;;;		DB	$00,$00,$41,$16
;;;;;;;DX_oam_end_GB
;;;;;;;DX2_oam_cnt_GB	EQU	(DX_oam_end_GB-DX2_oam_data_GB)/4
;;;;;;;DX_oam_cnt_GB	EQU	(DX_oam_end_GB-DX_oam_data_GB)/4
;;;;;;;
;;;;;;;DX2_oam_data_CGB			; 島に重ねる部分
;;;;;;;		DB	$50-$40,$10,$2A,$05
;;;;;;;		DB	$40-$40,$10,$28,$05
;;;;;;;		DB	$50-$40,$08,$26,$05
;;;;;;;		DB	$40-$40,$08,$24,$05
;;;;;;;		DB	$50-$40,$00,$22,$05
;;;;;;;		DB	$40-$40,$00,$20,$05
;;;;;;;DX_oam_data_CGB
;;;;;;;		DB	$10,$15,$5A,$07
;;;;;;;		DB	$00,$15,$58,$07
;;;;;;;		DB	$10,$0D,$56,$07
;;;;;;;		DB	$00,$0D,$54,$07
;;;;;;;		DB	$10,$05,$52,$07
;;;;;;;		DB	$00,$05,$50,$07
;;;;;;;
;;;;;;;		DB	$10,$18,$4E,$16
;;;;;;;		DB	$00,$18,$4C,$16
;;;;;;;		DB	$10,$10,$4A,$16
;;;;;;;		DB	$00,$10,$48,$16
;;;;;;;		DB	$10,$08,$46,$16
;;;;;;;		DB	$00,$08,$44,$16
;;;;;;;		DB	$10,$00,$42,$16
;;;;;;;		DB	$00,$00,$40,$16
;;;;;;;DX_oam_end_CGB
;;;;;;;DX2_oam_cnt_CGB	EQU	(DX_oam_end_CGB-DX2_oam_data_CGB)/4
;;;;;;;DX_oam_cnt_CGB	EQU	(DX_oam_end_CGB-DX_oam_data_CGB)/4
;;;;;;;
;;;;;;;Kirari_oam_data
;;;;;;;		DB	$30-$20,$00,$5E,$14	; (0)
;;;;;;;		DB	$20-$20,$00,$5C,$14
;;;;;;;
;;;;;;;		DB	$30-$20,$00,$62,$14	; (1)
;;;;;;;		DB	$20-$20,$60,$60,$14
;;;;;;;
;;;;;;;		DB	$30-$20,$04,$66,$14	; (2)
;;;;;;;		DB	$20-$20,$04,$64,$14
;;;;;;;
;;;;;;;		DB	$30-$20,$08,$6A,$14	; (3)
;;;;;;;		DB	$20-$20,$08,$68,$14
;;;;;;;
;;;;;;;		DB	$30-$20,$0C,$6E,$14	; (4)
;;;;;;;		DB	$20-$20,$0C,$6C,$14
;;;;;;;
;;;;;;;		DB	$30-$20,$10,$72,$14	; (5)
;;;;;;;		DB	$20-$20,$10,$70,$14
;;;;;;;
;;;;;;;		DB	$30-$20,$14,$76,$14	; (6)
;;;;;;;		DB	$20-$20,$14,$74,$14
;;;;;;;
;;;;;;;		DB	$30-$20,$18,$7A,$14	; (7)
;;;;;;;		DB	$20-$20,$18,$78,$14
;;;;;;;
;;;;;;;		DB	$30-$20,$18,$7E,$14	; (8)
;;;;;;;		DB	$20-$20,$18,$7C,$14
;;;;;;;Kirari_oam_end
;;;;;;;Kirari_oam_cnt	EQU	(Kirari_oam_end-Kirari_oam_data)/(4*9)
;;;;;;;
;;;;;;;;------------------------------------------------------------------------
;;;;;;;;	ＧＢ カラーデータ
;;;;;;;;------------------------------------------------------------------------
;;;;;;;DX_color_data_GB0				; パレット０
;;;;;;;		DB	%10101100		; ( 0 )
;;;;;;;		DB	%10101100		; ( 1 )
;;;;;;;		DB	%01101100		; ( 2 )
;;;;;;;		DB	%00011100		; ( 3 )
;;;;;;;DX_color_data_GB1				; パレット１
;;;;;;;		DB	%00000000		; ( 0 )
;;;;;;;		DB	%00000100		; ( 1 )
;;;;;;;		DB	%00011000		; ( 2 )
;;;;;;;		DB	%00011100		; ( 3 )
;;;;;;;
;;;;;;;;------------------------------------------------------------------------
;;;;;;;;	ＣＧＢ カラーデータ
;;;;;;;;------------------------------------------------------------------------
;;;;;;;DX_color_data_CGB
;;;;;;;;( 0 )
;;;;;;;		DW	$7af5,$0000,$0000,$0000	; ( 5 )
;;;;;;;		DW	$7af5,$7fff,$7fff,$7fff	; ( 6 )
;;;;;;;		DW	$7af5,$7fff,$7fff,$0000	; ( 7 )
;;;;;;;;( 1 )
;;;;;;;		DW	$7af5,$0484,$0042,$0000	; ( 5 )
;;;;;;;		DW	$7af5,$6fbe,$6b9c,$6b5a	; ( 6 )
;;;;;;;		DW	$7af5,$7fff,$6b7b,$14a5	; ( 7 )
;;;;;;;;( 2 )
;;;;;;;		DW	$7af5,$08e8,$0063,$0000	; ( 5 )
;;;;;;;		DW	$7af5,$5f9e,$5b39,$5ad6	; ( 6 )
;;;;;;;		DW	$7af5,$7fff,$5af7,$2529	; ( 7 )
;;;;;;;;( 3 )
;;;;;;;		DW	$7af5,$094c,$00a5,$0000	; ( 5 )
;;;;;;;		DW	$7af5,$4f7d,$46d6,$4631	; ( 6 )
;;;;;;;		DW	$7af5,$7fff,$4673,$39ce	; ( 7 )
;;;;;;;;( 4 )
;;;;;;;		DW	$7af5,$0db0,$00c6,$0000	; ( 5 )
;;;;;;;		DW	$7af5,$3f3d,$3673,$35ad	; ( 6 )
;;;;;;;		DW	$7af5,$7fff,$3610,$4a52	; ( 7 )
;;;;;;;;( 5 )
;;;;;;;		DW	$7af5,$0e14,$0108,$0000	; ( 5 )
;;;;;;;		DW	$7af5,$2f1c,$2210,$2108	; ( 6 )
;;;;;;;		DW	$7af5,$7fff,$218c,$5ef7	; ( 7 )
;;;;;;;;( 6 )
;;;;;;;		DW	$7af5,$1278,$0129,$0000	; ( 5 )
;;;;;;;		DW	$7af5,$1efc,$11ad,$1084	; ( 6 )
;;;;;;;		DW	$7af5,$7fff,$1108,$6f7b	; ( 7 )
;;;;;;;;( 7 )
;;;;;;;		DW	$7af5,$12dc,$014a,$0000	; ( 5 )
;;;;;;;		DW	$7af5,$12dc,$014a,$0000	; ( 6 )
;;;;;;;		DW	$7af5,$7fff,$00a5,$7fff	; ( 7 )
;;;;;;;;========================================================================
;;;;;;;
;;;;;;;DX_OBJ
;;;;;;;;------------------------------------------------------------------------
;;;;;;;;	ウエイトチェック
;;;;;;;;------------------------------------------------------------------------
;;;;;;;		LD	HL,DXCLWT
;;;;;;;		LD	A,(HL)
;;;;;;;		AND	A
;;;;;;;		JR	Z,DX_OBJ_050
;;;;;;;
;;;;;;;		DEC	(HL)
;;;;;;;		RET
;;;;;;;;------------------------------------------------------------------------
;;;;;;;DX_OBJ_050
;;;;;;;		LD	A,DX_oam_xpos
;;;;;;;		LD	(ENSVXL),A	; Ｘポジション
;;;;;;;		LD	A,DX_oam_ypos
;;;;;;;		LD	(ENDSYP),A	; Ｙポジション
;;;;;;;
;;;;;;;		LD	A,(CGBFLG)
;;;;;;;		AND	A
;;;;;;;		JR	NZ,DX_OBJ_070
;;;;;;;
;;;;;;;;------------------------------------------------------------------------
;;;;;;;;	ＧＢ ＤＸカラー転送
;;;;;;;;------------------------------------------------------------------------
;;;;;;;		LD	A,(DXCLPT)
;;;;;;;		CP	4		; ＤＸカラー転送中？
;;;;;;;		JR	Z,DX_OBJ_100	; ＮＯ
;;;;;;;
;;;;;;;		LD	HL,DXCLFC
;;;;;;;		INC	(HL)
;;;;;;;		LD	A,(HL)
;;;;;;;		CP	GB_chgnge_fct	; カラー転送？
;;;;;;;		JP	NZ,DX_OBJ_300	; ＮＯ
;;;;;;;
;;;;;;;		XOR	A
;;;;;;;		LD	(HL),A
;;;;;;;		LD	HL,DXCLPT
;;;;;;;		INC	(HL)
;;;;;;;		LD	A,(HL)
;;;;;;;		CP	4		; ４パターン終了？
;;;;;;;		JP	Z,DX_OBJ_300	; ＹＥＳ
;;;;;;;
;;;;;;;		CALL	DX_GB_COLSET
;;;;;;;		JP	DX_OBJ_300
;;;;;;;
;;;;;;;;------------------------------------------------------------------------
;;;;;;;;	ＣＧＢ ＤＸカラー転送
;;;;;;;;------------------------------------------------------------------------
;;;;;;;DX_OBJ_070
;;;;;;;		LD	A,(DXCLPT)
;;;;;;;		CP	8		; ＤＸカラー転送中？
;;;;;;;		JR	Z,DX_OBJ_100	; ＮＯ
;;;;;;;
;;;;;;;		LD	HL,DXCLFC
;;;;;;;		INC	(HL)
;;;;;;;		LD	A,(HL)
;;;;;;;		CP	CGB_chgnge_fct	; カラー転送？
;;;;;;;		JR	NZ,DX_OBJ_200	; ＮＯ
;;;;;;;
;;;;;;;		XOR	A
;;;;;;;		LD	(HL),A
;;;;;;;		LD	HL,DXCLPT
;;;;;;;		INC	(HL)
;;;;;;;		LD	A,(HL)
;;;;;;;		CP	8		; ８パターン終了？
;;;;;;;		JR	Z,DX_OBJ_200	; ＹＥＳ
;;;;;;;
;;;;;;;		CALL	DX_CGB_COLSET
;;;;;;;		JR	DX_OBJ_200
;;;;;;;
;;;;;;;;------------------------------------------------------------------------
;;;;;;;;	きらり
;;;;;;;;------------------------------------------------------------------------
;;;;;;;DX_OBJ_100
;;;;;;;		LD	HL,KIRAWL
;;;;;;;		LD	A,(HLI)
;;;;;;;		LD	B,(HL)
;;;;;;;		OR	B		; きらり開始？
;;;;;;;		JR	Z,DX_OBJ_105	; ＹＥＳ
;;;;;;;
;;;;;;;		DEC	HL
;;;;;;;		LD	A,(HL)
;;;;;;;		SUB	1
;;;;;;;		LD	(HLI),A
;;;;;;;		LD	A,(HL)
;;;;;;;		SBC	A,0
;;;;;;;		LD	(HL),A
;;;;;;;		JR	DX_OBJ_200
;;;;;;;DX_OBJ_105
;;;;;;;		LD	HL,KIRAFC
;;;;;;;		INC	(HL)
;;;;;;;		LD	A,(HL)
;;;;;;;		CP	6		; ６フレーム毎
;;;;;;;		JR	NZ,DX_OBJ_120
;;;;;;;
;;;;;;;		XOR	A
;;;;;;;		LD	(HL),A
;;;;;;;		LD	A,(KIRAPT)
;;;;;;;		INC	A
;;;;;;;		CP	9		; ９パターン終了？
;;;;;;;		JR	NZ,DX_OBJ_110	; ＮＯ
;;;;;;;
;;;;;;;		CALL	KIRA_WAIT_CLC	; きらり待ち時間計算
;;;;;;;		XOR	A
;;;;;;;		LD	(KIRAPT),A
;;;;;;;		JR	DX_OBJ_200
;;;;;;;DX_OBJ_110
;;;;;;;		LD	(KIRAPT),A
;;;;;;;DX_OBJ_120
;;;;;;;		LD	HL,Kirari_oam_data
;;;;;;;		LD	A,(KIRAPT)
;;;;;;;		SLA	A
;;;;;;;		SLA	A
;;;;;;;		SLA	A
;;;;;;;		LD	B,$0
;;;;;;;		LD	C,A
;;;;;;;		ADD	HL,BC
;;;;;;;		LD	C,Kirari_oam_cnt
;;;;;;;
;;;;;;;		CALL	ENOMST
;;;;;;;
;;;;;;;		LD	A,(ENOMID)
;;;;;;;		ADD	A,Kirari_oam_cnt*4
;;;;;;;		LD	(ENOMID),A
;;;;;;;
;;;;;;;;------------------------------------------------------------------------
;;;;;;;;	ＤＸ
;;;;;;;;------------------------------------------------------------------------
;;;;;;;DX_OBJ_200
;;;;;;;		LD	A,(CGBFLG)
;;;;;;;		AND	A
;;;;;;;		JR	Z,DX_OBJ_300
;;;;;;;
;;;;;;;;-----<	ＣＧＢ >---------------------------------------------------------
;;;;;;;		LD	A,(DXCLPT)
;;;;;;;		CP	8
;;;;;;;		JR	Z,DX_OBJ_250
;;;;;;;
;;;;;;;		LD	HL,DX2_oam_data_CGB
;;;;;;;		LD	C,DX2_oam_cnt_CGB
;;;;;;;		JR	DX_OBJ_400
;;;;;;;DX_OBJ_250
;;;;;;;		LD	HL,DX_oam_data_CGB
;;;;;;;		LD	C,DX_oam_cnt_CGB
;;;;;;;		JR	DX_OBJ_400
;;;;;;;
;;;;;;;;-----<	ＧＢ >-----------------------------------------------------------
;;;;;;;DX_OBJ_300
;;;;;;;		LD	A,(DXCLPT)
;;;;;;;		CP	4
;;;;;;;		JR	Z,DX_OBJ_350
;;;;;;;
;;;;;;;		LD	HL,DX2_oam_data_GB
;;;;;;;		LD	C,DX2_oam_cnt_GB
;;;;;;;		JR	DX_OBJ_400
;;;;;;;DX_OBJ_350
;;;;;;;		LD	HL,DX_oam_data_GB
;;;;;;;		LD	C,DX_oam_cnt_GB
;;;;;;;DX_OBJ_400
;;;;;;;		CALL	ENOMST
;;;;;;;
;;;;;;;		RET
;;;;;;;
;;;;;;;;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;;;;;;;;x	ＧＢ版 ＤＸカラー転送						x
;;;;;;;;x----------------------------------------------------------------------x
;;;;;;;;x	    ＥＮＴＲＹ							x
;;;;;;;;x		Ａ         ： カラーパターンＮｏ．			x
;;;;;;;;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;;;;;;;DX_GB_COLSET
;;;;;;;		LD	B,$0
;;;;;;;		LD	C,A
;;;;;;;		LD	HL,DX_color_data_GB0
;;;;;;;		ADD	HL,BC
;;;;;;;		LD	A,(HL)
;;;;;;;		LD	(OBP0FG),A	; ＯＢＪパレット（０）
;;;;;;;		LD	HL,DX_color_data_GB1
;;;;;;;		ADD	HL,BC
;;;;;;;		LD	A,(HL)
;;;;;;;		LD	(OBP1FG),A	; ＯＢＪパレット（１）
;;;;;;;		RET
;;;;;;;
;;;;;;;;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;;;;;;;;x	ＣＧＢ版 ＤＸカラー転送						x
;;;;;;;;x----------------------------------------------------------------------x
;;;;;;;;x	    ＥＮＴＲＹ							x
;;;;;;;;x		Ａ         ： カラーパターンＮｏ．			x
;;;;;;;;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;;;;;;;DX_CGB_COLSET
;;;;;;;		LD	B,A
;;;;;;;		SLA	A
;;;;;;;		ADD	A,B
;;;;;;;		SLA	A
;;;;;;;		SLA	A
;;;;;;;		SLA	A		; ×１８
;;;;;;;		LD	B,$0
;;;;;;;		LD	C,A
;;;;;;;		LD	HL,DX_color_data_CGB
;;;;;;;		ADD	HL,BC
;;;;;;;		LD	BC,CGWORK+0068H	; アトリビュート６＆７
;;;;;;;		LD	E,$18
;;;;;;;DXCSET_100
;;;;;;;		LD	A,(HLI)
;;;;;;;		LD	(BC),A
;;;;;;;		INC	BC
;;;;;;;		DEC	E
;;;;;;;		JR	NZ,DXCSET_100
;;;;;;;
;;;;;;;		LD	A,5*4		; ５－１から
;;;;;;;		LD	(COLOFS),A	; 転送オフセット
;;;;;;;		LD	A,4*3		; ３列
;;;;;;;		LD	(COLLNG),A	; 転送長さ
;;;;;;;		LD	A,OBJCOL_BITFG|$80
;;;;;;;		LD	(CGDMAF),A	; 転送フラグ（部分転送）
;;;;;;;		RET
;;;;;;;
;;;;;;;;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;;;;;;;;x	きらり 待ち時間計算						x
;;;;;;;;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;;;;;;;KIRA_WAIT_CLC
;;;;;;;		CALL	RNDSUB		; らんだむ
;;;;;;;
;;;;;;;		OR	%00100000	; ＋２０Ｈ
;;;;;;;		LD	(KIRAWL),A
;;;;;;;		LD	A,$01
;;;;;;;		LD	(KIRAWH),A
;;;;;;;		RET
;;;;;;;;=========================================
;;;;;;;YMRVD1
;;;;;;;	DB	$98,$00,$43,$7D
;;;;;;;	DB	$98,$20,$43,$7D
;;;;;;;	DB	$98,$40,$43,$7D
;;;;;;;	DB	$98,$60,$43,$7D
;;;;;;;	DB	$00
;;;;;;;YMRVD2
;;;;;;;	DB	$98,$04,$03
;;;;;;;	DB	    $7D,$7D,$4C,$4D
;;;;;;;	DB	$98,$24,$43,$7D
;;;;;;;	DB	$98,$44,$43,$7D
;;;;;;;	DB	$98,$64,$43,$7D
;;;;;;;	DB	$00
;;;;;;;;YMRVD1
;;;;;;;;	DB	$98,$00,$48,$7D
;;;;;;;;	DB	$98,$20,$48,$7D
;;;;;;;;	DB	$98,$40,$48,$7D
;;;;;;;;	DB	$00
;;;;;;;;;
;;;;;;;;YMRVD2
;;;;;;;;	DB	$98,$60,$47,$7D
;;;;;;;;	DB	$98,$80,$47,$7D
;;;;;;;;	DB	$00
;;;;;;;;YMRVD3
;;;;;;;;	DB	$98,$0C,$45,$7D
;;;;;;;;	DB	$98,$2C,$43,$7D
;;;;;;;;	DB	$00
;;;;;;;;;-- -- -- -- -- -- -- -- -- -- -- -- --
;;;;;;;;YAMARV3
;;;;;;;;	LD	HL,YMRVD3
;;;;;;;;	JR	YMR008
;;;;;;;YAMARV2
;;;;;;;	LD	HL,YMRVD2
;;;;;;;	JR	YMR008
;;;;;;;YAMARV1
;;;;;;;	LD	HL,YMRVD1
;;;;;;;YMR008
;;;;;;;	LD	DE,VRAMD+1
;;;;;;;	PUSH	BC
;;;;;;;	LD	C,$18
;;;;;;;YMR010
;;;;;;;	LD	A,(HLI)
;;;;;;;	LD	(DE),A
;;;;;;;	INC	DE
;;;;;;;	DEC	C
;;;;;;;	JR	NZ,YMR010
;;;;;;;;
;;;;;;;	POP	BC
;;;;;;;	RET
;;;;;;;;======================================
;;;;;;;LINKCD
;;;;;;;	DB	$10,$00,$12,$00
;;;;;;;	DB	$14,$00,$16,$00
;;;;;;;;;0
;;;;;;;;	DB	$00,$00,$0C,$00
;;;;;;;;	DB	$00,$08,$10,$00
;;;;;;;;	DB	$10,$00,$0E,$00
;;;;;;;;	DB	$10,$08,$0E,$20
;;;;;;;;;1
;;;;;;;;	DB	$00,$00,$38,$00
;;;;;;;;	DB	$00,$08,$3A,$00
;;;;;;;;	DB	$10,$00,$14,$00
;;;;;;;;	DB	$10,$08,$14,$20
;;;;;;;;;2
;;;;;;;;	DB	$00,$00,$12,$00
;;;;;;;;	DB	$00,$08,$16,$00
;;;;;;;;	DB	$10,$00,$14,$00
;;;;;;;;	DB	$10,$08,$14,$20
;;;;;;;;;3
;;;;;;;;	DB	$00,$00,$18,$00
;;;;;;;;	DB	$00,$08,$1A,$00
;;;;;;;;	DB	$10,$00,$14,$00
;;;;;;;;	DB	$10,$08,$14,$20
;;;;;;;;;4
;;;;;;;;	DB	$00,$00,$1A,$20
;;;;;;;;	DB	$00,$08,$18,$20
;;;;;;;;	DB	$10,$00,$14,$00
;;;;;;;;	DB	$10,$08,$14,$20
;;;;;;;;- - - - - - - - - - - - - - - - - -
;;;;;;;LINKMV
;;;;;;;	LD	A,(ENSVXL)
;;;;;;;	CP	$F0
;;;;;;;	JR	NC,LKM00C0
;;;;;;;;
;;;;;;;	XOR	A
;;;;;;;	LD	(ENMOD0),A
;;;;;;;;
;;;;;;;	LD	DE,LINKCD
;;;;;;;	CALL	EN2CST
;;;;;;;;
;;;;;;;	LD	A,(ENOMID)
;;;;;;;	ADD	A,$08
;;;;;;;	LD	(ENOMID),A
;;;;;;;;
;;;;;;;LKM00C0
;;;;;;;;
;;;;;;;;	LD	A,(ENCHPT2)
;;;;;;;;	SLA	A
;;;;;;;;	SLA	A
;;;;;;;;	SLA	A
;;;;;;;;	SLA	A
;;;;;;;;	LD	E,A
;;;;;;;;	LD	D,B
;;;;;;;;	LD	HL,LINKCD
;;;;;;;;	ADD	HL,DE
;;;;;;;;	LD	C,$04
;;;;;;;;	CALL	ENOMST
;;;;;;;;;
;;;;;;;;	LD	A,(ENOMID)
;;;;;;;;	ADD	A,$10
;;;;;;;;	LD	(ENOMID),A
;;;;;;;;
;;;;;;;	LD	A,(ENSTAT2)
;;;;;;;	RST	00
;;;;;;;	DW	LINKWT
;;;;;;;	DW	LINKUP
;;;;;;;	DW	LINKED
;;;;;;;	DW	LINKTM
;;;;;;;;-------------------------------
;;;;;;;LINKWT
;;;;;;;	CALL	LDTIM0
;;;;;;;	DEC	(HL)
;;;;;;;	JR	NZ,LKW010
;;;;;;;;
;;;;;;;	LD	(HL),$90
;;;;;;;;
;;;;;;;	CALL	STATINC
;;;;;;;LKW010
;;;;;;;	RET
;;;;;;;;-------------------------------
;;;;;;;;LKCHPT
;;;;;;;;	DB	3,3,3,3,3,3,3,3
;;;;;;;;	DB	3,3,3,3,3,3,3,2
;;;;;;;;	DB	3,3,2,4,4,4,4,2
;;;;;;;;	DB	2,2,2,2,2,2,2,1
;;;;;;;;	DB	2,1,2,2,2,1,1,1
;;;;;;;;	DB	1,1,1,1,0,0,0,0
;;;;;;;;	DB	0,0,0,0,0,0,0,0
;;;;;;;;	DB	0,0,0,0,0,0,0,0
;;;;;;;;- - - - - - - - - - - - - - - - - -
;;;;;;;LINKUP
;;;;;;;	LD	A,(FRCNT)
;;;;;;;	AND	$03
;;;;;;;	JR	NZ,LKU090
;;;;;;;;
;;;;;;;	CALL	LDTIM0
;;;;;;;	DEC	(HL)
;;;;;;;	JR	Z,LKU0B0
;;;;;;;;;	JR	LKU0B0
;;;;;;;;;
;;;;;;;;	LD	A,(HL)
;;;;;;;;	RRA
;;;;;;;;	RRA
;;;;;;;;	AND	$3F
;;;;;;;;	LD	E,A
;;;;;;;;	LD	D,B
;;;;;;;;	LD	HL,LKCHPT
;;;;;;;;	ADD	HL,DE
;;;;;;;;	LD	A,(HL)
;;;;;;;;	CALL	ENPTST
;;;;;;;LKU090
;;;;;;;	RET
;;;;;;;LKU0B0
;;;;;;;;;	LD	(HL),$80
;;;;;;;;;;
;;;;;;;	JP	STATINC
;;;;;;;;-------------------------------
;;;;;;;LINKED
;;;;;;;	LD	A,(YAMACT)
;;;;;;;	CP	$13
;;;;;;;	JR	Z,LKE090
;;;;;;;;
;;;;;;;;;	LD	A,(FRCNT)
;;;;;;;;;	AND	$03
;;;;;;;;(CGB)	LD	A,(OPWRK7),A
;;;;;;;	LD	A,(OPWRK7)
;;;;;;;	INC	A
;;;;;;;	LD	(OPWRK7),A
;;;;;;;	AND	$03
;;;;;;;	JR	NZ,LKE020
;;;;;;;;
;;;;;;;	LD	A,(ENYPSL)
;;;;;;;	CP	$A0
;;;;;;;	JR	NC,LKE010
;;;;;;;	INC	A
;;;;;;;	LD	(ENYPSL),A
;;;;;;;LKE010
;;;;;;;	LD	A,(ENYPSL+1)
;;;;;;;	CP	$A0
;;;;;;;	JR	NC,LKE018
;;;;;;;	INC	A
;;;;;;;	LD	(ENYPSL+1),A
;;;;;;;LKE018
;;;;;;;;
;;;;;;;	LD	A,(SCCV)
;;;;;;;	PUSH	AF
;;;;;;;	DEC	A
;;;;;;;	LD	(SCCV),A
;;;;;;;	POP	AF
;;;;;;;	AND	$07
;;;;;;;	JR	NZ,LKE020
;;;;;;;;
;;;;;;;	PUSH	BC
;;;;;;;	CALL	EGGMWT
;;;;;;;	POP	BC
;;;;;;;	LD	A,(YAMACT)
;;;;;;;	CP	$0B
;;;;;;;	JR	NZ,LKE020
;;;;;;;;;
;;;;;;;	LD	A,$01
;;;;;;;	LD	(SOUND4),A	;(S)
;;;;;;;;
;;;;;;;;	CALL	SOUNDOUT	;(S)
;;;;;;;LKE020
;;;;;;;	RET
;;;;;;;LKE090
;;;;;;;	CALL	STATINC
;;;;;;;	CALL	LDTIM0
;;;;;;;	LD	(HL),$17 ;58
;;;;;;;;
;;;;;;;;;	LD	A,$01
;;;;;;;;;	LD	(SOUND4),A	;(S)
;;;;;;;;
;;;;;;;	LD	A,$07
;;;;;;;	LD	(SLEVEL),A
;;;;;;;	LD	A,$70
;;;;;;;	LD	(SLEVEL2),A
;;;;;;;	RET
;;;;;;;;====================================================
;;;;;;;LINKTM
;;;;;;;	LD	A,(FRCNT)
;;;;;;;	AND	$03
;;;;;;;	JR	NZ,LKT010
;;;;;;;;
;;;;;;;	CALL	LDTIM0
;;;;;;;	DEC	(HL)
;;;;;;;	JR	NZ,LKT010
;;;;;;;;
;;;;;;;;	XOR	A
;;;;;;;;	LD	(BGPFG),A
;;;;;;;;	LD	(BGP),A
;;;;;;;;;
;;;;;;;;	JP	OPSTART
;;;;;;;	CALL	ITMINC	; Goto "ZELDA" logo set mode !
;;;;;;;;
;;;;;;;	XOR	A
;;;;;;;	LD	(OPWRK2),A
;;;;;;;	LD	(OPWRK3),A
;;;;;;;	LD	(OPWRK4),A
;;;;;;;;
;;;;;;;	LD	(ENMODE+0),A
;;;;;;;	LD	(ENMODE+1),A
;;;;;;;LKT010
;;;;;;;	RET
;;;;;;;;======================================================
;;;;;;;;=	森田さん やってくれますか 飯おごりますんで！  =
;;;;;;;;======================================================
;;;;;;;EGGMDT
;;;;;;;;(CGB);9BE0
;;;;;;;;(CGB)	DB	$7C,$7C,$44,$45,$7D,$7D,$7D,$7D,$7D,$7D,$7D
;;;;;;;;(CGB)	DB	$7D,$7D,$7D,$7D,$7D,$4C,$4D,$7C,$7C
;;;;;;;;(CGB);9BC0
;;;;;;;;(CGB)	DB	$7C,$7C,$7C,$7C,$44,$45,$7D,$7D,$7D,$7D,$7D
;;;;;;;;(CGB)	DB	$7D,$7D,$7D,$4C,$4D,$7C,$7C,$7C,$7C
;;;;;;;;(CGB);9BA0
;;;;;;;;(CGB)	DB	$7C,$7C,$7C,$7C,$7C,$70,$71,$72,$73,$74,$75
;;;;;;;;(CGB)	DB	$76,$77,$78,$79,$7C,$7C,$7C,$7C,$7C
;;;;;;;;(CGB);9B80
;;;;;;;;(CGB)	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$46,$7D,$7D,$7D
;;;;;;;;(CGB)	DB	$7D,$4B,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;;;;;;(CGB);9B60
;;;;;;;;(CGB)	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$5C,$5D,$5E
;;;;;;;;(CGB)	DB	$5F,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;;;;;;(CGB);9B40
;;;;;;;;(CGB)	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$58,$59,$5A
;;;;;;;;(CGB)	DB	$5B,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;;;;;;(CGB);9B20
;;;;;;;;(CGB)	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$54,$55,$56
;;;;;;;;(CGB)	DB	$57,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;;;;;;(CGB);9B00
;;;;;;;;(CGB)	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$50,$51,$52
;;;;;;;;(CGB)	DB	$53,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;;;;;;(CGB);9AE0
;;;;;;;;(CGB)	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$2B,$2C
;;;;;;;;(CGB)	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;;;;;;(CGB);9AC0
;;;;;;;;(CGB)	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;;;;;;(CGB)	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;;;;;;(CGB);9AA0
;;;;;;;;(CGB)	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;;;;;;(CGB)	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;;;;;;(CGB);9A80
;;;;;;;;(CGB)	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;;;;;;(CGB)	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;;;;;;(CGB);9A60
;;;;;;;;(CGB)	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;;;;;;(CGB)	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;;;;;;(CGB);9A40
;;;;;;;;(CGB)	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;;;;;;(CGB)	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;;;;;;(CGB);9A20
;;;;;;;;(CGB)	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;;;;;;(CGB)	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;;;;;;(CGB);9A00
;;;;;;;;(CGB)	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;;;;;;(CGB)	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;;;;;;(CGB);99E0
;;;;;;;;(CGB)	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;;;;;;(CGB)	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;;;;;;(CGB);99C0
;;;;;;;;(CGB)	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;;;;;;(CGB)	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;;;;;;(CGB);99A0
;;;;;;;;(CGB)	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;;;;;;(CGB)	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;;;;;;(CGB);9980
;;;;;;;;(CGB)	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;;;;;;(CGB)	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;;;;;;(CGB);9960
;;;;;;;;(CGB)	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;;;;;;(CGB)	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;;;;;;(CGB);9940
;;;;;;;;(CGB)	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;;;;;;(CGB)	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;;;;;;(CGB);9920
;;;;;;;;(CGB)	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;;;;;;(CGB)	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;;;;;;(CGB);9900
;;;;;;;;(CGB)	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;;;;;;(CGB)	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;;;;;;(CGB);98E0
;;;;;;;;(CGB)	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;;;;;;(CGB)	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;;;;;;(CGB);98C0
;;;;;;;;(CGB)	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;;;;;;(CGB)	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;;;;;;(CGB);98A0
;;;;;;;;(CGB)	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;;;;;;(CGB)	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;;;;;;(CGB);9880
;;;;;;;;(CGB)	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;;;;;;(CGB)	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;;;;;;(CGB);9860
;;;;;;;;(CGB)	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;;;;;;(CGB)	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;;;;;;(CGB);9840
;;;;;;;;(CGB)	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;;;;;;(CGB)	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;;;;;;(CGB);9820
;;;;;;;;(CGB)	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;;;;;;(CGB)	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;;;;;;(CGB);9800
;;;;;;;;(CGB)	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;;;;;;(CGB)	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;;;;;;
;;;;;;;;9BE0（実際は9B4F）
;;;;;;;	DB	$7C,$7C,$44,$45,$7D,$7D,$7D,$7D,$7D,$7D,$7D
;;;;;;;	DB	$7D,$7D,$7D,$7D,$7D,$4C,$4D,$7C,$7C
;;;;;;;;9BC0
;;;;;;;	DB	    $7C,$7C,$7C,$7c,$44,$45,$7d,$2d,$2e,$2d
;;;;;;;	DB	    $2e,$2d,$2e,$7d,$4c,$4d,$7c,$7c,$7c,$7c
;;;;;;;;9BA0
;;;;;;;	DB	    $7C,$7C,$7C,$7c,$7c,$77,$46,$7e,$7e,$7e
;;;;;;;	DB	    $7e,$7e,$7e,$4b,$79,$7c,$7c,$7c,$7c,$7c
;;;;;;;;9B80
;;;;;;;	DB	    $7C,$7C,$7C,$77,$75,$7e,$7e,$7e,$7e,$7e
;;;;;;;	DB	    $7e,$7e,$7e,$7e,$7e,$75,$78,$7C,$7C,$7C
;;;;;;;;9B60
;;;;;;;	DB	    $7C,$7C,$77,$7a,$7a,$74,$73,$74,$5C,$5D
;;;;;;;	DB	    $5E,$5F,$73,$74,$73,$7a,$7e,$78,$7C,$7C
;;;;;;;;9B40
;;;;;;;	DB	    $7C,$7C,$73,$75,$78,$77,$78,$79,$58,$59
;;;;;;;	DB	    $5A,$5B,$79,$79,$77,$75,$7e,$74,$7c,$7C
;;;;;;;;9B20
;;;;;;;	DB	    $7C,$7C,$7C,$73,$74,$76,$73,$7a,$54,$55
;;;;;;;	DB	    $56,$57,$7a,$74,$76,$73,$74,$7C,$7C,$7C
;;;;;;;;9B00
;;;;;;;	DB	    $77,$78,$7C,$79,$7C,$7C,$7C,$7C,$50,$51
;;;;;;;	DB	    $52,$53,$7C,$7C,$7C,$7C,$7C,$7C,$77,$78
;;;;;;;;9AE0
;;;;;;;	DB	    $7e,$7e,$75,$7e,$78,$77,$75,$78,$79,$2B
;;;;;;;	DB	    $2C,$79,$79,$77,$75,$78,$77,$75,$7e,$7e
;;;;;;;;9AC0
;;;;;;;	DB	    $7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e
;;;;;;;	DB	    $7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e
;;;;;;;;9AA0
;;;;;;;	DB	    $7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e
;;;;;;;	DB	    $7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e
;;;;;;;;9A80
;;;;;;;	DB	    $7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e
;;;;;;;	DB	    $7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e
;;;;;;;;9A60
;;;;;;;	DB	    $7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e
;;;;;;;	DB	    $7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e
;;;;;;;;9A40
;;;;;;;	DB	    $7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e
;;;;;;;	DB	    $7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e
;;;;;;;;9A20
;;;;;;;	DB	    $7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e
;;;;;;;	DB	    $7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e
;;;;;;;;9A00
;;;;;;;	DB	    $7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e
;;;;;;;	DB	    $7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e
;;;;;;;;;;;;;;99E0
;;;;;;;;;;;;;	DB	    $7e,$7e,$7e,$7a,$74,$76,$76,$73,$7a,$74
;;;;;;;;;;;;;	DB	    $76,$73,$7a,$7e,$7e,$74,$76,$73,$7a,$74
;;;;;;;;;;;;;;99C0
;;;;;;;;;;;;;	DB	    $73,$74,$76,$7c,$7c,$7c,$7c,$7c,$7c,$7c
;;;;;;;;;;;;;	DB	    $7c,$7c,$7c,$76,$76,$7c,$7c,$7c,$7C,$7C
;;;;;;;;;;;;;;99A0
;;;;;;;;;;;;;	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;;;;;;;;;;;	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;;;;;;99E0（雲ベタ）
;;;;;;;	DB	    $7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e
;;;;;;;	DB	    $7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e
;;;;;;;;99C0（雲ベタ）
;;;;;;;	DB	    $7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e
;;;;;;;	DB	    $7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e
;;;;;;;;99A0（雲ベタ）
;;;;;;;	DB	$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e
;;;;;;;	DB	$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e,$7e
;;;;;;;
;;;;;;;;(TEST)   このデータは 雲なしタイトル用
;;;;;;;;(TEST);（実際は9B4F）
;;;;;;;;(TEST)	DB	$7C,$7C,$44,$45,$7D,$7D,$7D,$7D,$7D,$7D,$7D
;;;;;;;;(TEST)	DB	$7D,$7D,$7D,$7D,$7D,$4C,$4D,$7C,$7C
;;;;;;;;(TEST);9BC0
;;;;;;;;(TEST)	DB	    $7C,$7C,$7C,$7c,$44,$45,$7d,$2d,$2e,$2d
;;;;;;;;(TEST)	DB	    $2e,$2d,$2e,$7d,$4c,$4d,$7c,$7c,$7c,$7c
;;;;;;;;(TEST);9BA0
;;;;;;;;(TEST)	DB	    $7C,$7C,$7C,$7c,$7c,$77,$46,$7e,$7e,$7e
;;;;;;;;(TEST)	DB	    $7e,$7e,$7e,$4b,$79,$7c,$7c,$7c,$7c,$7c
;;;;;;;;(TEST);9B80
;;;;;;;;(TEST)	DB	    $7C,$7C,$7C,$77,$75,$7e,$7e,$7e,$7e,$7e
;;;;;;;;(TEST)	DB	    $7e,$7e,$7e,$7e,$7e,$75,$78,$7C,$7C,$7C
;;;;;;;;(TEST);9B60
;;;;;;;;(TEST)	DB	    $7C,$7C,$77,$7a,$7a,$74,$73,$74,$5C,$5D
;;;;;;;;(TEST)	DB	    $5E,$5F,$73,$74,$73,$7a,$7e,$78,$7C,$7C
;;;;;;;;(TEST);9B40
;;;;;;;;(TEST)	DB	    $7C,$7C,$73,$75,$78,$77,$78,$79,$58,$59
;;;;;;;;(TEST)	DB	    $5A,$5B,$79,$79,$77,$75,$7e,$74,$7c,$7C
;;;;;;;;(TEST);9B20
;;;;;;;;(TEST)	DB	    $7C,$7C,$7C,$73,$74,$76,$73,$7a,$54,$55
;;;;;;;;(TEST)	DB	    $56,$57,$7a,$74,$76,$73,$74,$7C,$7C,$7C
;;;;;;;;(TEST);9B00
;;;;;;;;(TEST)	DB	    $7d,$7d,$7d,$7d,$7d,$7d,$7d,$7d,$50,$51
;;;;;;;;(TEST)	DB	    $52,$53,$7d,$7d,$7d,$7d,$7d,$7d,$7d,$7d
;;;;;;;;(TEST);9AE0
;;;;;;;;(TEST)	DB	    $7d,$7d,$7d,$7d,$7d,$7d,$7d,$7d,$7d,$2B
;;;;;;;;(TEST)	DB	    $2C,$7d,$7d,$7d,$7d,$7d,$7d,$7d,$7d,$7d
;;;;;;;;(TEST);9AC0
;;;;;;;;(TEST)	DB	    $7d,$7d,$7d,$7d,$7d,$7d,$7d,$7d,$7d,$7d
;;;;;;;;(TEST)	DB	    $7d,$7d,$7d,$7d,$7d,$7d,$7d,$7d,$7d,$7d
;;;;;;;;(TEST);9AA0
;;;;;;;;(TEST)	DB	    $7d,$7d,$7d,$7d,$7d,$7d,$7d,$7d,$7d,$7d
;;;;;;;;(TEST)	DB	    $7d,$7d,$7d,$7d,$7d,$7d,$7d,$7d,$7d,$7d
;;;;;;;;(TEST);9A80
;;;;;;;;(TEST)	DB	    $7d,$7d,$7d,$7d,$7d,$7d,$7d,$7d,$7d,$7d
;;;;;;;;(TEST)	DB	    $7d,$7d,$7d,$7d,$7d,$7d,$7d,$7d,$7d,$7d
;;;;;;;;(TEST);9A60
;;;;;;;;(TEST)	DB	    $7d,$7d,$7d,$7d,$7d,$7d,$7d,$7d,$7d,$7d
;;;;;;;;(TEST)	DB	    $7d,$7d,$7d,$7d,$7d,$7d,$7d,$7d,$7d,$7d
;;;;;;;;(TEST);9A40
;;;;;;;;(TEST)	DB	    $7d,$7d,$7d,$7d,$7d,$7d,$7d,$7d,$7d,$7d
;;;;;;;;(TEST)	DB	    $7d,$7d,$7d,$7d,$7d,$7d,$7d,$7d,$7d,$7d
;;;;;;;;(TEST);9A20
;;;;;;;;(TEST)	DB	    $7d,$7d,$7d,$7d,$7d,$7d,$7d,$7d,$7d,$7d
;;;;;;;;(TEST)	DB	    $7d,$7d,$7d,$7d,$7d,$7d,$7d,$7d,$7d,$7d
;;;;;;;;(TEST);9A00
;;;;;;;;(TEST)	DB	    $7d,$7d,$7d,$7d,$7d,$7d,$7d,$7d,$7d,$7d
;;;;;;;;(TEST)	DB	    $7d,$7d,$7d,$7d,$7d,$7d,$7d,$7d,$7d,$7d
;;;;;;;;(TEST);99E0
;;;;;;;;(TEST)	DB	    $7d,$7d,$7d,$7d,$7d,$7d,$7d,$7d,$7d,$7d
;;;;;;;;(TEST)	DB	    $7d,$7d,$7d,$7d,$7d,$7d,$7d,$7d,$7d,$7d
;;;;;;;;(TEST);99C0
;;;;;;;;(TEST)	DB	    $7d,$7d,$7d,$7d,$7d,$7d,$7d,$7d,$7d,$7d
;;;;;;;;(TEST)	DB	    $7d,$7d,$7d,$7d,$7d,$7d,$7d,$7d,$7d,$7d
;;;;;;;;(TEST);99A0
;;;;;;;;(TEST)	DB	    $7d,$7d,$7d,$7d,$7d,$7d,$7d,$7d,$7d,$7d
;;;;;;;;(TEST)	DB	    $7d,$7d,$7d,$7d,$7d,$7d,$7d,$7d,$7d,$7d
;;;;;;;
;;;;;;;;(CGB:いらんはず)
;;;;;;;;(CGB:いらんはず);9980
;;;;;;;;(CGB:いらんはず)	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;;;;;;(CGB:いらんはず)	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;;;;;;(CGB:いらんはず);9960
;;;;;;;;(CGB:いらんはず)	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;;;;;;(CGB:いらんはず)	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;;;;;;(CGB:いらんはず);9940
;;;;;;;;(CGB:いらんはず)	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;;;;;;(CGB:いらんはず)	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;;;;;;(CGB:いらんはず);9920
;;;;;;;;(CGB:いらんはず)	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;;;;;;(CGB:いらんはず)	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;;;;;;(CGB:いらんはず);9900
;;;;;;;;(CGB:いらんはず)	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;;;;;;(CGB:いらんはず)	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;;;;;;(CGB:いらんはず);98E0
;;;;;;;;(CGB:いらんはず)	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;;;;;;(CGB:いらんはず)	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;;;;;;(CGB:いらんはず);98C0
;;;;;;;;(CGB:いらんはず)	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;;;;;;(CGB:いらんはず)	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;;;;;;(CGB:いらんはず);98A0
;;;;;;;;(CGB:いらんはず)	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;;;;;;(CGB:いらんはず)	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;;;;;;(CGB:いらんはず);9880
;;;;;;;;(CGB:いらんはず)	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;;;;;;(CGB:いらんはず)	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;;;;;;(CGB:いらんはず);9860
;;;;;;;;(CGB:いらんはず)	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;;;;;;(CGB:いらんはず)	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;;;;;;(CGB:いらんはず);9840
;;;;;;;;(CGB:いらんはず)	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;;;;;;(CGB:いらんはず)	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;;;;;;(CGB:いらんはず);9820
;;;;;;;;(CGB:いらんはず)	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;;;;;;(CGB:いらんはず)	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;;;;;;(CGB:いらんはず);9800
;;;;;;;;(CGB:いらんはず)	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;;;;;;(CGB:いらんはず)	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;;;;;;;;
;;;;;;;EGGMWT
;;;;;;;	LD	A,(YAMACT)
;;;;;;;	AND	A
;;;;;;;	JR	NZ,EGG010
;;;;;;;;
;;;;;;;	LD	A,$F4
;;;;;;;	LD	(EGGZL),A
;;;;;;;;
;;;;;;;	LD	A,$9B
;;;;;;;	LD	(EGGZH),A
;;;;;;;;
;;;;;;;EGG010
;;;;;;;	LD	A,(YAMACT)
;;;;;;;	LD	E,A
;;;;;;;	LD	D,$00
;;;;;;;	SLA	E
;;;;;;;	RL	D
;;;;;;;	SLA	E
;;;;;;;	RL	D
;;;;;;;	LD	A,E
;;;;;;;	SLA	E
;;;;;;;	RL	D
;;;;;;;	SLA	E
;;;;;;;	RL	D
;;;;;;;	ADD	A,E
;;;;;;;	LD	E,A
;;;;;;;	LD	A,D
;;;;;;;	ADC	A,$00
;;;;;;;	LD	D,A
;;;;;;;;
;;;;;;;	LD	C,$00
;;;;;;;;
;;;;;;;EGVSET
;;;;;;;	LD	HL,VRAMD+$01
;;;;;;;	LD	A,(EGGZH)
;;;;;;;;
;;;;;;;	LD	(HLI),A
;;;;;;;;
;;;;;;;	LD	A,(EGGZL)
;;;;;;;	LD	(HLI),A
;;;;;;;;
;;;;;;;	LD	A,$13
;;;;;;;	LD	(HLI),A
;;;;;;;;
;;;;;;;EGGLP
;;;;;;;	PUSH	HL
;;;;;;;;
;;;;;;;	LD	HL,EGGMDT
;;;;;;;	ADD	HL,DE
;;;;;;;	LD	A,(HL)
;;;;;;;;
;;;;;;;	POP	HL
;;;;;;;;
;;;;;;;	LD	(HLI),A
;;;;;;;;
;;;;;;;	INC	DE
;;;;;;;	INC	C		;デ－タのカウンタ－($0-$13)
;;;;;;;	LD	A,C
;;;;;;;	CP	$14
;;;;;;;	JR	NZ,EGGLP
;;;;;;;;
;;;;;;;	LD	(HL),$00
;;;;;;;;
;;;;;;;;-------------------------------------------------------------
;;;;;;;	LD	A,(CGBFLG)
;;;;;;;	AND	A		; カラーゲームボーイ？
;;;;;;;	JR	Z,EGGLP_10	; ＮＯ
;;;;;;;
;;;;;;;	CALL	EGGMWT_AT	; (CGB)アトリビュートセット
;;;;;;;EGGLP_10
;;;;;;;;-------------------------------------------------------------
;;;;;;;;
;;;;;;;	LD	HL,YAMACT
;;;;;;;	INC	(HL)
;;;;;;;;
;;;;;;;	LD	A,(EGGZL)   ;座標Ｌｏｗの設定(($E0-$009)(毎-$20))
;;;;;;;	SUB	$20
;;;;;;;	LD	(EGGZL),A
;;;;;;;;
;;;;;;;	LD	A,(EGGZH)   ;座標Ｈｉｇｈの設定($9B,$9A,$99)
;;;;;;;	SBC	A,$00
;;;;;;;	LD	(EGGZH),A
;;;;;;;;
;;;;;;;	RET
;;;;;;;
;;;;;;;;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;;;;;;;;x	EGGMWT アトリビュートセット					x
;;;;;;;;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;;;;;;;EGGMWT_AT
;;;;;;;		LD	HL,VRAMD_AT+$01
;;;;;;;		LD	A,(EGGZH)
;;;;;;;		LD	(HLI),A		; ＶＲＡＭアドレスＨＩＧＨ
;;;;;;;		LD	A,(EGGZL)
;;;;;;;		SUB	$14
;;;;;;;		LD	(HLI),A		; ＶＲＡＭアドレスＬＯＷ
;;;;;;;
;;;;;;;		LD	A,%01000000 | $20-1	; 横、共通、２０Ｈ
;;;;;;;		LD	(HLI),A
;;;;;;;		LD	A,$03		; アトリビュート
;;;;;;;		LD	(HLI),A
;;;;;;;		LD	(HL),$00	; エンドコード
;;;;;;;
;;;;;;;		RET
;;;;;;;;------------------------------------------------------------------------
;;;;;;;
;;;;;;;;======================================
;;;;;;;;======================================
;;;;;;;;======================================
;;;;;;;;======================================
;;;;;;;OPSEAD	; Sea chr adress 1
;;;;;;;	DW	CHRDAT+$1000
;;;;;;;	DW	CHRDAT+$1080
;;;;;;;	DW	CHRDAT+$1100
;;;;;;;	DW	CHRDAT+$1180
;;;;;;;OPSEA2	; Sea chr adress 2
;;;;;;;	DW	CHRDAT+$1200
;;;;;;;	DW	CHRDAT+$1280
;;;;;;;	DW	CHRDAT+$1300
;;;;;;;	DW	CHRDAT+$1380
;;;;;;;OPSECT
;;;;;;;	DB	0,2,4,6,6,4,2,0
;;;;;;;OPSCYD
;;;;;;;	DB	3,2,1,0,0,1,2,3
;;;;;;;;	DB	4,5,6,6
;;;;;;;;	DB	6,5,4,3
;;;;;;;;	DB	2,1,0,0
;;;;;;;;
;;;;;;;;- - - - - - - - - - - - - - -
;;;;;;;OPSCRL
;;;;;;;	LD	HL,SCCH1
;;;;;;;;
;;;;;;;	LD	A,(FRCNT)
;;;;;;;	AND	$07
;;;;;;;	JR	NZ,OPN020
;;;;;;;;
;;;;;;;	INC	(HL)
;;;;;;;OPN020
;;;;;;;	INC	HL
;;;;;;;;
;;;;;;;	LD	A,(FRCNT)
;;;;;;;	AND	$0F
;;;;;;;	JR	NZ,OPN030
;;;;;;;;
;;;;;;;	INC	(HL)
;;;;;;;OPN030
;;;;;;;	INC	HL
;;;;;;;;
;;;;;;;	LD	A,(FRCNT)
;;;;;;;	AND	$1F
;;;;;;;	JR	NZ,OPN050
;;;;;;;;
;;;;;;;	INC	(HL)
;;;;;;;OPN050
;;;;;;;	INC	HL
;;;;;;;;
;;;;;;;	LD	A,(FRCNT)
;;;;;;;	AND	$0F
;;;;;;;	JR	NZ,OPN060
;;;;;;;;
;;;;;;;	INC	(HL)
;;;;;;;OPN060
;;;;;;;	INC	HL
;;;;;;;;
;;;;;;;;;	LD	A,(FRCNT)
;;;;;;;;;	AND	$07
;;;;;;;;;	JR	NZ,OPN068
;;;;;;;	LD	A,(OPWRK4)
;;;;;;;	ADD	A,$28
;;;;;;;	LD	(OPWRK4),A
;;;;;;;	JR	NC,OPN068
;;;;;;;;
;;;;;;;	INC	(HL)
;;;;;;;;	LD	A,(HL)
;;;;;;;;	ADD	A,$08
;;;;;;;;	LD	(HL),A
;;;;;;;OPN068
;;;;;;;	LD	A,(FRCNT)
;;;;;;;	ADD	A,$FC
;;;;;;;	RRA
;;;;;;;	RRA
;;;;;;;	RRA
;;;;;;;	RRA
;;;;;;;	AND	$07
;;;;;;;	LD	E,A
;;;;;;;	LD	D,$0
;;;;;;;	LD	HL,OPSCYD
;;;;;;;	ADD	HL,DE
;;;;;;;	LD	A,$00
;;;;;;;	SUB	(HL)
;;;;;;;	LD	(SCCV1),A
;;;;;;;;- -  Nami chr TR. - -
;;;;;;;NMCHTR
;;;;;;;	LD	A,(FRCNT)
;;;;;;;	AND	$0F
;;;;;;;	CP	$04
;;;;;;;	JR	C,NMT7000
;;;;;;;;
;;;;;;;NMCHTRS
;;;;;;;	LD	A,(FRCNT)
;;;;;;;	RRA
;;;;;;;	RRA
;;;;;;;	RRA
;;;;;;;	RRA
;;;;;;;	AND	%00000111
;;;;;;;	LD	E,A
;;;;;;;	LD	D,$00
;;;;;;;	LD	HL,OPSECT
;;;;;;;	ADD	HL,DE
;;;;;;;	LD	E,(HL)
;;;;;;;	LD	HL,OPSEAD
;;;;;;;;;	LD	A,(ITMODE)
;;;;;;;;;	CP	OPAF
;;;;;;;;;	JR	C,NMTR08
;;;;;;;	LD	A,(OPWRK8)
;;;;;;;	AND	A
;;;;;;;	JR	Z,NMTR08
;;;;;;;	LD	HL,OPSEA2
;;;;;;;NMTR08
;;;;;;;	ADD	HL,DE
;;;;;;;	LD	A,(HLI)
;;;;;;;	LD	H,(HL)
;;;;;;;	LD	L,A
;;;;;;;;
;;;;;;;	LD	DE,CHRRAM+$0900
;;;;;;;;
;;;;;;;;;	LD	A,(ITMODE)
;;;;;;;;;	CP	OPAF
;;;;;;;;;	JR	C,NMTR10
;;;;;;;	LD	A,(OPWRK8)
;;;;;;;	AND	A
;;;;;;;	JR	Z,NMTR10
;;;;;;;;
;;;;;;;	LD	DE,CHRRAM+$1300
;;;;;;;NMTR10
;;;;;;;	LD	A,(FRCNT)
;;;;;;;	AND	%00000011
;;;;;;;;;	JR	Z,PT2010
;;;;;;;	SLA	A
;;;;;;;	SLA	A
;;;;;;;	SLA	A
;;;;;;;	SLA	A
;;;;;;;	SLA	A
;;;;;;;;
;;;;;;;	LD	E,A
;;;;;;;	ADD	A,L
;;;;;;;;;	LD	A,L
;;;;;;;;;	ADD	A,$40
;;;;;;;	LD	L,A
;;;;;;;;
;;;;;;;;;	LD	E,$0040
;;;;;;;PT2010
;;;;;;;	LD	A,L
;;;;;;;	LD	(NMCH0L),A
;;;;;;;	LD	A,H
;;;;;;;	LD	(NMCH0H),A
;;;;;;;	LD	A,E
;;;;;;;	LD	(NMCH1L),A
;;;;;;;	LD	A,D
;;;;;;;	LD	(NMCH1H),A
;;;;;;;NMT7000
;;;;;;;	RET
;;;;;;;;======================================
;;;;;;;OPSCRL2
;;;;;;;	LD	HL,SCCH1
;;;;;;;;
;;;;;;;	LD	A,(FRCNT)
;;;;;;;	AND	$07
;;;;;;;	JR	NZ,OPN220
;;;;;;;;
;;;;;;;	INC	(HL)
;;;;;;;OPN220
;;;;;;;;;	INC	HL
;;;;;;;OPS2SUB
;;;;;;;	LD	HL,SCCH2
;;;;;;;;
;;;;;;;	LD	A,(OPWRK4)
;;;;;;;	ADD	A,$50
;;;;;;;	LD	(OPWRK4),A
;;;;;;;	JR	NC,OPN230
;;;;;;;;
;;;;;;;	INC	(HL)
;;;;;;;OPN230
;;;;;;;	INC	HL
;;;;;;;;
;;;;;;;	LD	A,(OPWRK5)
;;;;;;;	ADD	A,$58
;;;;;;;	LD	(OPWRK5),A
;;;;;;;	JR	NC,OPN250
;;;;;;;;
;;;;;;;	INC	(HL)
;;;;;;;OPN250
;;;;;;;	INC	HL
;;;;;;;;
;;;;;;;	LD	A,(OPWRK6)
;;;;;;;	ADD	A,$B0
;;;;;;;	LD	(OPWRK6),A
;;;;;;;	JR	NC,OPN260
;;;;;;;;
;;;;;;;	INC	(HL)
;;;;;;;OPN260
;;;;;;;	JP	NMCHTR
;;;;;;;;======================================
;;;;;;;OPSCRL22
;;;;;;;	LD	HL,SCCH1
;;;;;;;;
;;;;;;;	LD	A,(FRCNT)
;;;;;;;	AND	$0F
;;;;;;;	JR	NZ,OPN2202
;;;;;;;;
;;;;;;;	INC	(HL)
;;;;;;;OPN2202
;;;;;;;;;	INC	HL
;;;;;;;OPS2SUB2
;;;;;;;	LD	HL,SCCH2
;;;;;;;;
;;;;;;;	LD	A,(OPWRK4)
;;;;;;;	ADD	A,$28
;;;;;;;	LD	(OPWRK4),A
;;;;;;;	JR	NC,OPN2302
;;;;;;;;
;;;;;;;	INC	(HL)
;;;;;;;OPN2302
;;;;;;;	INC	HL
;;;;;;;;
;;;;;;;	LD	A,(OPWRK5)
;;;;;;;	ADD	A,$2C
;;;;;;;	LD	(OPWRK5),A
;;;;;;;	JR	NC,OPN2502
;;;;;;;;
;;;;;;;	INC	(HL)
;;;;;;;OPN2502
;;;;;;;	INC	HL
;;;;;;;;
;;;;;;;	LD	A,(OPWRK6)
;;;;;;;	ADD	A,$58
;;;;;;;	LD	(OPWRK6),A
;;;;;;;	JR	NC,OPN2602
;;;;;;;;
;;;;;;;	INC	(HL)
;;;;;;;OPN2602
;;;;;;;	JP	NMCHTR
;;;;;;;;
;====================================================
;=	柴原 やれい！				    =
;====================================================
GAKKIST
	LD	A,(BKCHCT)
	CP	$08
	JP	C,GKCH10
	JR	NZ,GKSS10
;===========================
	CALL	GAKKISB
	LD	HL,BKCHCT
	INC	(HL)
	RET
;===========================
GKSS10
	CALL	GAKKISB2
;===========================
;===========================
	XOR	A
	LD	(BKCHFG),A
	LD	(BKCHCT),A
	RET
;====================================================
;====================================================
;====================================================
;=	柴原 やれい！				    =
;====================================================
ZAHYODT
	DB	$0F,$51,$B1,$EF,$EC,$AA,$4A,$0C
;
NOCDT
	DB	$B1,$B2,$B3,$B4,$B5,$B6,$B7,$B8
;
GAKCDT
	DB	$D0,$D2,$D4,$D6,$D8,$DA,$DC,$DE
;
PZAHYO
	DB	$01,$1F,$01
;
GAKKISB2
	LD	C,$08
	LD	E,$04
	JR	GS010
GAKKISB
	LD	C,$04
	LD	E,$00
GS010
	LD	A,C
	LD	(WORK9),A
	LD	D,$00
GAKMAIN
	XOR	A
	LD	(WORK0),A
	LD	(WORK1),A
	LD	(WORK2),A
	LD	(WORK3),A
	LD	HL,WARPSV
	ADD	HL,DE
	LD	A,(HL)
	BIT	1,A
	JP	NZ,GGGSET
;
NOMSET
	LD	C,$00
	LD	B,C
	LD	HL,ZAHYODT
	ADD	HL,DE
	LD	A,(HL)
	LD	L,A
	LD	H,$9D
;
	PUSH	HL
;
	LD	A,$7C
	LD	(WORK0),A
	LD	(WORK1),A
	LD	(WORK2),A
	LD	HL,NOCDT
	ADD	HL,DE
	LD	A,(HL)
	LD	(WORK3),A
;
	POP	HL
;
	JR	KYOTUSET
;
GGGSET
	LD	C,$00
	LD	B,C
	LD	HL,ZAHYODT
	ADD	HL,DE
	LD	A,(HL)
	LD	L,A
	LD	H,$9D
;
	PUSH	HL
;
	LD	HL,GAKCDT
	ADD	HL,DE
	LD	A,(HL)
	LD	(WORK0),A
	INC	A
	LD	(WORK1),A
	ADD	A,$0F
	LD	(WORK2),A
	INC	A
	LD	(WORK3),A
;
	POP	HL
;
KYOTUSET
	LD	A,(WORK0)
	LD	(HL),A
;
;;;;;;	INC	C
	CALL	SPSET
;
	LD	A,(WORK1)
	LD	(HL),A
;
	INC	C
	CALL	SPSET
;
	LD	A,(WORK2)
	LD	(HL),A
;
	INC	C
	CALL	SPSET
;
	LD	A,(WORK3)
	LD	(HL),A
;
	INC	E
	LD	A,E
	LD	HL,WORK9
	CP	(HL) ;$09
	JP	NZ,GAKMAIN
;
	RET
;
SPSET
	PUSH	HL
;
	LD	HL,PZAHYO
	ADD	HL,BC
	LD	A,(HL)
;
	POP	HL
;
	ADD	A,L
	LD	L,A
;;	XOR	A
	LD	A,H
	ADC	A,$00
	LD	H,A
	RET
;====================================================
;====================================================
;====================================================
;====================================================
;====================================================
;========================================
;========================================
;========================================
;========================================
;========================================
;========================================
GKCH10
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
	LD	HL,CHRRAM+$0D00 ; キャラクタ ＲＡＭ
	ADD	HL,BC
		ld	e,l
		ld	d,h
;;10/31;	PUSH	HL
;;10/31;	POP	DE
;
	LD	HL,CHRDAT+$0D00 ; 普通部屋キャラクタ転送
	ADD	HL,BC
;
;;	LD	BC,$0040	; 個数
;;	CALL	DATA_MOV	; キャラクタ 転送
	CALL	GKCHRV	;;
;
	LD	A,(BKCHCT)
	INC	A
	LD	(BKCHCT),A
	RET
;====================================================
;====================================================
;************************************++++++++++++++++++++
;*	柴原 でいたあ	(SBDT)	    *+			+
;************************************+++++++++++++	+
;;SB	EQU	$FF				;+	+
;						;+	+
SBDT						;+	+
	DB	$00,$01,$02,$03,$04,$05,$06	;+	+
	DB	$07,$08,$09,$0A,$0B,$10,$1B	;+	+
	DB	$20,$2B,$30,$3B,$40,$4B,$50	;+	+
	DB	$5B,$60,$6B,$70,$7B,$80,$8B	;+	+
	DB	$90,$91,$92,$93,$94,$95,$96	;+	+
	DB	$97,$98,$99,$9A,$9B,$FF		;+	+
;						;+	+
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%+++++++++++++	+
;%	柴原 サブるうちん	    %+			+
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%++++++++++++++++++++
SBHRSB
;;;;	PUSH	BC
	LD	BC,SBDT
;
SBBB
	LD	A,(BC)
	CP	$FF
	JR	Z,SBBF
;
	LD	E,A
	LD	D,$0
	LD	HL,BGUNDT
	ADD	HL,DE
;;	LD	A,$0FF
	LD	(HL),$FF ;A
	INC	BC
	JR	SBBB
;
SBBF
;;	POP	BC
	RET
;====================================================
;====================================================
V_RAMDS
	LD	BC,$400
;
	LD	HL,$9800	; 9800-?<<SPACE
;
VRD1
	LD	E,$00
	LD	A,L
	AND	%00100000
	JR	Z,VRD15
	INC	E
VRD15
	LD	D,$AE
	LD	A,L
	AND	%00000001
	XOR	E
	JR	Z,VRD2
	INC	D
VRD2
	LD	A,L
	AND	$1F
	CP	$14
	JR	NC,VRD3
;
	LD	(HL),D
VRD3
	INC	HL
;
	DEC	BC
	LD	A,B
	OR	C
	JR	NZ,VRD1
;
;-------------------------------------------------------------
	LD	A,(CGBFLG)
	AND	A		; カラーゲームボーイ？
	JR	Z,VRD4		; ＮＯ

	CALL	V_RAMDS_AT	; (CGB)カラーセット
VRD4
;-------------------------------------------------------------
;
	RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	V_RAMDS アトリビュートセット					x
;x----------------------------------------------------------------------x
;x	    アトリビュートＮＯ．					x
;x		・ゲームオーバー画面	：  ５				x
;x		・強制セーブ画面	：  ６				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
V_RAMDS_AT
		LD	D,$05
		LD	A,(GMMODE)
		CP	GPLAY		; ゲームオーバー画面？
		JR	Z,VRAM_AT_100	; ＹＥＳ

		LD	D,$06
VRAM_AT_100
		LD	A,$01
		LD	(VBK),A		; バンク（１）セット

		LD	HL,$9800
		LD	BC,$400
VRAM_AT_200
		LD	A,D
		LD	(HLI),A
		DEC	BC
		LD	A,B
		OR	C
		JR	NZ,VRAM_AT_200

		LD	A,$00
		LD	(VBK),A		; バンク（０）セット

		RET

;--------------------------------------------------------------------
;-   DMASUB		ＤＭＡ転送ルーチン			    -
;-								    -
;-	ＯＢＪＲＡＭ($C000-$C09F) －－＞ ＯＡＭ ($FE00-$FE9F)	    -
;-								    -
;-	ＥＮＴＲＹ						    -
;-	   無							    -
;-								    -
;-	ＲＥＴＵＲＮ						    -
;-	   無							    -
;-	ロケーション   DMASUB =	 $FF80				    -
;-								    -
;-	   使用レジスタ	 Ａのみ					    -
;-								    -
;--------------------------------------------------------------------
DMASET
	LD	C,$C0	; DMASUB=FFC0H
;;	LD	C,$80
	LD	B,10		; DMADATA  １０バイト分
	LD	HL,DMADATA
L2	LD	A,(HLI)
	LD	(C),A
	INC	C
	DEC	B
	JR	NZ,L2
	RET
;- - - - - - - - - - - - - - - - - - - -
DMADATA				;	DMASUB の内容
	DB	$3E,$C0		;	LD	A,LABEL2
	DB	$E0,$46		;	LD	(DMA),A
	DB	$3E,$28		;	LD	A,40	; 160サイクル
	DB	$3D		; L1	DEC	A	;    ウエイト
	DB	$20,$FD		;	JR	NZ,L1
	DB	$C9		;	RET
;=========================================
;WUPCDT
;	DB	%00001001,%00001001
;	DB	%01100010,%01100010
;	DB	%00011000,%00011000
;	DB	%01000110,%01000110
;	DB	%00000110,%00000110
;	DB	%00100110,%00100110
;	DB	%00000011,%00000011
;	DB	%00010011,%00010011
;;
;	DB	%00000011,%00000011
;	DB	%00000101,%00000101
;	DB	%00000001,%00000001
;	DB	%00000001,%00000001
;	DB	%00000000,%00000000
;	DB	%00000000,%00000000
;	DB	%00000000,%00000000
;	DB	%00000000,%00000000
;
;KUSCDT
;	DB	%00000000,%11000000
;	DB	%00000000,%01100000
;	DB	%00000000,%01100000
;	DB	%00000000,%01110000
;	DB	%00000000,%00110001
;	DB	%00000000,%00110110
;	DB	%00000000,%00110110
;	DB	%00000000,%00010100
;;
;	DB	%00000000,%00000000
;	DB	%00000000,%00000000
;	DB	%00000000,%00000000
;	DB	%00000000,%00000000
;	DB	%00000000,%00000000
;	DB	%00000000,%00000000
;	DB	%00000000,%00000000
;	DB	%00000000,%00000000
;TENDT
;	DB	%00000000,%00000000
;	DB	%00000000,%00000000
;	DB	%00000000,%00000000
;	DB	%00000000,%00000000
;	DB	%00000000,%00000000
;	DB	%00000000,%00000000
;	DB	%00000101,%00000101
;	DB	%00000101,%00000101
;SENDT
;	DB	%00000000,%00000000
;	DB	%00000000,%00000000
;	DB	%00000000,%00000000
;	DB	%00000000,%00000000
;	DB	%00000000,%00000000
;	DB	%00000000,%00000000
;	DB	%11111111,%11111111
;	DB	%11111111,%11111111
;;
;	DB	%00000000,%00000000
;	DB	%00000000,%00000000
;	DB	%00000000,%00000000
;	DB	%00000000,%00000000
;	DB	%00000000,%00000000
;	DB	%00000000,%00000000
;	DB	%00000000,%00000000
;	DB	%00000000,%00000000
;ZZZDT
;	DB	%00000000,%00000000
;	DB	%00000000,%00000000
;	DB	%00000000,%00000000
;	DB	%01111100,%01111100
;	DB	%00001000,%00001000
;	DB	%00010000,%00010000
;	DB	%00100000,%00100000
;	DB	%01111100,%01111100
;;
;	DB	%00000000,%00000000
;	DB	%00000000,%00000000
;	DB	%00000000,%00000000
;	DB	%00000000,%00000000
;	DB	%00000000,%00000000
;	DB	%00000000,%00000000
;	DB	%00000000,%00000000
;	DB	%00000000,%00000000
AMEDT
;1
	DB	%10000000,%10000000
	DB	%01000000,%01000000
	DB	%00100000,%00100000
	DB	%00010000,%00010000
	DB	%00001000,%00001000
	DB	%00000100,%00000100
	DB	%00000010,%00000010
	DB	%00000001,%00000001
;
	DB	%00000000,%00000000
	DB	%00000000,%00000000
	DB	%00000000,%00000000
	DB	%00000000,%00000000
	DB	%00000000,%00000000
	DB	%00000000,%00000000
	DB	%00000000,%00000000
	DB	%00000000,%00000000
;2
	DB	%10000000,%10000000
	DB	%01000000,%01000000
	DB	%00100000,%00100000
	DB	%00010000,%00010000
	DB	%00001000,%00001000
	DB	%00000100,%00000100
	DB	%00000000,%00000000
	DB	%00000000,%00000000
;
	DB	%00000000,%00000000
	DB	%00000000,%00000000
	DB	%00000000,%00000000
	DB	%00000000,%00000000
	DB	%00000000,%00000000
	DB	%00000000,%00000000
	DB	%00000000,%00000000
	DB	%00000000,%00000000
;3
	DB	%10000000,%10000000
	DB	%01000000,%01000000
	DB	%00100000,%00100000
	DB	%00010000,%00010000
	DB	%00000000,%00000000
	DB	%00000000,%00000000
	DB	%00000000,%00000000
	DB	%00000000,%00000000
;
	DB	%00000000,%00000000
	DB	%00000000,%00000000
	DB	%00000000,%00000000
	DB	%00000000,%00000000
	DB	%00000000,%00000000
	DB	%00000000,%00000000
	DB	%00000000,%00000000
	DB	%00000000,%00000000
;4
	DB	%10000000,%10000000
	DB	%01000000,%01000000
	DB	%00100000,%00100000
	DB	%00010000,%00010000
	DB	%00001000,%00001000
	DB	%00000100,%00000100
	DB	%00000010,%00000010
	DB	%00000001,%00000001
;
	DB	%00000000,%00000000
	DB	%00000000,%00000000
	DB	%00000000,%00000000
	DB	%00000000,%00000000
	DB	%00000000,%00000000
	DB	%00000000,%00000000
	DB	%00000000,%00000000
	DB	%00000000,%00000000
;---------------------------------------
;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
;@						    @
;@	      洞窟内初歩部屋書矢印命令群	    @
;@						    @
;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
;- - - - - - - - - - - - - - - - - - - - - - - - - - -
DMEXDT
	DW	$9E0E	;Lv,1
	DW	$9E0D	;Lv,2
	DW	$9E0C	;Lv,3
	DW	$9E0E	;Lv,4
	DW	$9E12	;Lv,5
	DW	$9E0E	;Lv,6
	DW	$9E0C	;Lv,7
	DW	$9E0E	;Lv,8
;;	DW	$9E2C	;Lv,9
	DW	$0000
	DW	$0000
	DW	$0000
	DW	$0000
	DW	$0000
	DW	$0000
	DW	$0000
	DW	$9E0D	;新ダンジョン入り口
;;;CGB;;;	DW	$9E2D	;Lv,1
;;;CGB;;;	DW	$9E2C	;Lv,2
;;;CGB;;;	DW	$9E2B	;Lv,3
;;;CGB;;;	DW	$9E2D	;Lv,4
;;;CGB;;;	DW	$9E31	;Lv,5
;;;CGB;;;	DW	$9E2D	;Lv,6
;;;CGB;;;	DW	$9E2B	;Lv,7
;;;CGB;;;	DW	$9E2D	;Lv,8
;;;CGB;;;;;	DW	$9E2C	;Lv,9
;- - - - - - - - - - - - - - - - - - - - - - - - - - -
DMEXST
	LD	A,(HIMITSU2)
	AND	A
	RET	NZ
;
	LD	A,(DJFLAG)
	AND	A
	JR	Z,DMEX10
;
	LD	A,(DNJNNO)
;
		CP	NEWDJ		;新ダンジョン？
		JR	NZ,DMEX10_PASS	;	NO --> DMEX10_PASS
		LD	A,$00F
		JR	DMEX10_SET
DMEX10_PASS
;
;;	CP	DJMAX ;$20
	CP	$08
	JR	NC,DMEX10
;
DMEX10_SET
	SLA	A
	LD	E,A
	LD	D,$0
	LD	HL,DMEXDT
	ADD	HL,DE
	LD	A,(HLI)		;下位8ﾋﾞｯﾄを取り出す
	LD	H,(HL)		;上位8ﾋﾞｯﾄを取り出す
	LD	L,A		;矢印
	LD	(HL),$A3
;
	LD	A,(YKFLAG)
	AND	A
	JR	Z,DMEX10
;
	LD	(HL),$7F
DMEX10
	RET

;┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
;┃	zplsub.s にプログラムを移動				       ┃
;┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
;(CGB);-------------------------------------------------------
;(CGB);    地上マップ展開
;(CGB);-------------------------------------
;(CGB);=====================================================
;(CGB)GMAPCDT
;(CGB) DB  $27,$6A,$6C,$21,$22,$23,$24,$25,$26,$6A,$FF,$6C,$6A,$6C,$6A,$6C
;(CGB) DB  $65,$65,$66,$31,$32,$33,$34,$35,$36,$67,$68,$64,$67,$69,$65,$66
;(CGB) DB  $40,$40,$41,$42,$43,$44,$FA,$FA,$63,$40,$40,$40,$40,$40,$40,$60
;(CGB);(CGB) DB  $FF,$FA,$48,$49,$4A,$FA,$FA,$FA,$62,$6D,$6D,$6D,$6D,$6D,$6D,$FF
;(CGB) DB  $FF,$FA,$48,$49,$4A,$FA,$FA,$ff,$62,$6D,$6D,$6D,$6D,$6D,$6D,$FF
;(CGB);				  ↑ カメラ屋追加
;(CGB) DB  $00,$01,$00,$01,$FA,$FF,$5E,$5F,$04,$05,$06,$07,$28,$29,$29,$2A
;(CGB) DB  $10,$11,$10,$11,$FA,$FA,$6E,$6F,$14,$15,$16,$17,$38,$20,$20,$3A
;(CGB) DB  $00,$01,$00,$01,$FB,$FF,$FE,$FE,$08,$09,$0A,$0B,$38,$20,$20,$3A
;(CGB) DB  $10,$11,$10,$11,$FB,$FB,$FE,$FE,$18,$19,$1A,$1B,$48,$49,$49,$4A
;(CGB) DB  $FB,$FF,$0C,$0D,$40,$40,$40,$40,$FA,$FA,$FF,$58,$0E,$0F,$FA,$FA
;(CGB) DB  $FB,$FB,$1C,$1D,$FA,$FA,$FA,$FA,$FA,$FA,$FA,$5D,$1E,$1F,$FA,$FA
;(CGB) DB  $0C,$0D,$0C,$0D,$FB,$FB,$28,$2A,$FA,$FA,$FA,$58,$2D,$2E,$2E,$2F
;(CGB) DB  $1C,$1D,$1C,$1D,$FB,$56,$61,$4A,$FA,$FA,$59,$5A,$3D,$3E,$3E,$3F
;(CGB) DB  $FD,$FD,$FD,$FD,$FB,$FB,$FB,$FB,$28,$29,$5B,$FA,$FF,$FF,$54,$54
;(CGB) DB  $FD,$FD,$FD,$FD,$FB,$FB,$FF,$FB,$38,$30,$3A,$FA,$FF,$FF,$54,$54
;(CGB) DB  $FD,$FD,$FD,$FF,$FD,$FD,$FB,$FB,$48,$FE,$4A,$FA,$56,$57,$54,$54
;(CGB) DB  $03,$12,$13,$12,$13,$02,$FF,$FB,$5C,$2B,$FA,$FA,$FA,$FA,$54,$54
;(CGB)
;(CGB)GMAPCDT_ATR
;(CGB);      2   3   4   5   6   7   8   9   a   b   c   d   e   f  10  11
;(CGB)  db $03,$03,$03,$03,$03,$03,$02,$03,$03,$03,$00,$03,$03,$03,$03,$03 ; 1
;(CGB)  db $03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03 ; 2
;(CGB)  db $03,$03,$04,$04,$04,$04,$00,$00,$04,$03,$03,$03,$03,$03,$03,$03 ; 3
;(CGB)  db $01,$00,$04,$04,$04,$04,$00,$01,$04,$04,$04,$04,$04,$04,$04,$01 ; 4
;(CGB)  db $00,$00,$00,$00,$00,$02,$01,$01,$04,$04,$04,$04,$04,$04,$04,$04 ; 5
;(CGB)  db $00,$00,$00,$00,$00,$00,$01,$01,$04,$06,$04,$04,$04,$07,$07,$04 ; 6
;(CGB)  db $00,$00,$00,$00,$00,$01,$01,$01,$04,$06,$04,$04,$04,$07,$07,$04 ; 7
;(CGB)  db $00,$00,$00,$00,$00,$00,$01,$01,$04,$04,$04,$04,$04,$04,$04,$04 ; 8
;(CGB)  db $00,$01,$02,$02,$03,$03,$03,$03,$00,$00,$00,$04,$02,$07,$00,$00 ; 9
;(CGB)  db $00,$00,$02,$02,$00,$00,$00,$00,$00,$00,$00,$04,$07,$07,$00,$00 ; a
;(CGB)  db $07,$07,$01,$01,$00,$00,$04,$04,$00,$00,$00,$04,$05,$03,$03,$03 ; b
;(CGB)  db $07,$07,$01,$01,$00,$04,$04,$04,$00,$00,$04,$04,$03,$03,$03,$03 ; c
;(CGB)  db $03,$03,$03,$03,$00,$00,$00,$00,$04,$04,$04,$00,$07,$01,$03,$03 ; d
;(CGB)  db $03,$03,$03,$03,$00,$00,$02,$00,$04,$04,$04,$00,$00,$02,$03,$03 ; e
;(CGB)  db $03,$03,$03,$07,$03,$03,$00,$00,$04,$04,$04,$00,$04,$04,$03,$03 ; f
;(CGB)  db $04,$04,$04,$04,$04,$04,$07,$00,$04,$04,$00,$00,$00,$00,$03,$03 ; 10
;(CGB);----------------------------------------
;(CGB)GMCHSB
;(CGB)		LD	A,<GMAPCDT
;(CGB)		LD	(WORKA),A	; データアドレスＬＯＷ
;(CGB)		LD	A,>GMAPCDT
;(CGB)		LD	(WORKB),A	; データアドレスＨＩＧＨ
;(CGB)		XOR	A
;(CGB)		LD	(WORKC),A	; フラグ
;(CGB)
;(CGB)		CALL	GMCHSB_SUB	; キャラＮｏ．セット
;(CGB)
;(CGB)		LD	A,(CGBFLG)
;(CGB)		AND	A
;(CGB)		RET	Z
;(CGB)
;(CGB)		LD	A,<GMAPCDT_ATR
;(CGB)		LD	(WORKA),A	; データアドレスＬＯＷ
;(CGB)		LD	A,>GMAPCDT_ATR
;(CGB)		LD	(WORKB),A	; データアドレスＨＩＧＨ
;(CGB)		LD	HL,WORKC
;(CGB)		INC	(HL)		; フラグ
;(CGB)
;(CGB)		CALL	GMCHSB_SUB	; アトリビュートセット
;(CGB)
;(CGB)		RET
;(CGB)
;(CGB);----------------------------------------
;(CGB)GMCHSB_SUB
;(CGB)	LD	DE,$9822
;(CGB)	LD	BC,$00
;(CGB)GMCS08
;(CGB)	LD	A,(GMAPFG)
;(CGB)	AND	A
;(CGB)	JR	NZ,GMCS0A	;本からの。。
;(CGB);
;(CGB)	LD	A,(GMMODE)
;(CGB)	CP	ENDG
;(CGB)	JR	Z,GMCS0A
;(CGB);
;(CGB)	LD	HL,GRRMSV
;(CGB)	ADD	HL,BC
;(CGB)	LD	A,(HL)
;(CGB)	AND	%10000000
;(CGB)	LD	A,$2C
;(CGB)	JR	Z,GMCS10
;(CGB);
;(CGB)GMCS0A
;(CGB);(CGB)	LD	HL,GMAPCDT
;(CGB)		LD	A,(WORKA)
;(CGB)		LD	L,A
;(CGB)		LD	A,(WORKB)
;(CGB)		LD	H,A
;(CGB)	ADD	HL,BC
;(CGB)	LD	A,(HL)
;(CGB)GMCS10
;(CGB)		LD	H,A		; PUSH A
;(CGB)		LD	A,(WORKC)
;(CGB)		AND	A		; キャラクターセット？
;(CGB)		JR	Z,GMCS10_100	; ＹＥＳ
;(CGB)
;(CGB)		LD	A,$01
;(CGB)		LD	(VBK),A		; バンク（１）セット
;(CGB)		LD	A,H		; POP A
;(CGB)		CP	$2C		; もう行った？
;(CGB)		JR	NZ,GMCS10_050	; ＹＥＳ
;(CGB)		LD	A,$01
;(CGB)GMCS10_050
;(CGB)		LD	(DE),A
;(CGB)		XOR	A
;(CGB)		LD	(VBK),A		; バンク（０）セット
;(CGB)		JR	GMCS10_200
;(CGB)GMCS10_100
;(CGB)		LD	A,H
;(CGB)	LD	(DE),A
;(CGB)GMCS10_200
;(CGB)	INC	C
;(CGB)	JR	Z,GMCS30
;(CGB);
;(CGB)	INC	E
;(CGB)	LD	A,E
;(CGB)	AND	$1F
;(CGB)	CP	$12
;(CGB)	JR	NZ,GMCS20
;(CGB);
;(CGB)	LD	A,E
;(CGB)	AND	%11100000
;(CGB)	ADD	A,$22
;(CGB)	LD	E,A
;(CGB);
;(CGB)	LD	A,D
;(CGB)	ADC	A,$00
;(CGB)	LD	D,A
;(CGB)GMCS20
;(CGB)	JR	GMCS08
;(CGB)GMCS30
;(CGB)	RET
;=============================
;(CGB:これはいるのか？)ARIMOTO
;(CGB:これはいるのか？);0
;(CGB:これはいるのか？)	DB	%00001111,%00000000
;(CGB:これはいるのか？)	DB	%00011111,%00000000
;(CGB:これはいるのか？)	DB	%00111111,%00000000
;(CGB:これはいるのか？)	DB	%00111111,%00010001
;(CGB:これはいるのか？)	DB	%00111111,%00011111
;(CGB:これはいるのか？)	DB	%00111111,%00011111
;(CGB:これはいるのか？)	DB	%00111111,%00011001
;(CGB:これはいるのか？)	DB	%00111111,%00010001
;(CGB:これはいるのか？);0
;(CGB:これはいるのか？)	DB	%00111111,%00000011
;(CGB:これはいるのか？)	DB	%11111111,%00011111
;(CGB:これはいるのか？)	DB	%11111111,%01000000
;(CGB:これはいるのか？)	DB	%11111111,%01001010
;(CGB:これはいるのか？)	DB	%11111111,%01010001
;(CGB:これはいるのか？)	DB	%11111111,%01011111
;(CGB:これはいるのか？)	DB	%11111110,%01011111
;(CGB:これはいるのか？)	DB	%01111110,%00011111
;(CGB:これはいるのか？);0
;(CGB:これはいるのか？)	DB	%00111110,%00011111
;(CGB:これはいるのか？)	DB	%00111100,%00011111
;(CGB:これはいるのか？)	DB	%00111111,%00011111
;(CGB:これはいるのか？)	DB	%00111111,%00011111
;(CGB:これはいるのか？)	DB	%00111111,%00011111
;(CGB:これはいるのか？)	DB	%00111111,%00011111
;(CGB:これはいるのか？)	DB	%00111010,%00011101
;(CGB:これはいるのか？)	DB	%00111001,%00010111
;(CGB:これはいるのか？);0
;(CGB:これはいるのか？)	DB	%00110011,%00011111
;(CGB:これはいるのか？)	DB	%00111011,%00010110
;(CGB:これはいるのか？)	DB	%00111001,%00011111
;(CGB:これはいるのか？)	DB	%00011100,%00001011
;(CGB:これはいるのか？)	DB	%00001111,%00000101
;(CGB:これはいるのか？)	DB	%00000111,%00000011
;(CGB:これはいるのか？)	DB	%00000011,%00000000
;(CGB:これはいるのか？)	DB	%00000000,%00000000
;
;;;CGB;;;;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;;;CGB;;;;%						   %
;;;CGB;;;;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;;;CGB;;;DJYKBK	; Danjyon yuka bank adress !
;;;CGB;;;	DB	$4C ;00	 LV1
;;;CGB;;;	DB	$62 ;01	 LV2
;;;CGB;;;	DB	$63 ;02	 LV3
;;;CGB;;;	DB	$66 ;03	 LV4
;;;CGB;;;	DB	$6B ;04	 LV5
;;;CGB;;;	DB	$63 ;05	 LV6
;;;CGB;;;	DB	$65 ;06	 LV7
;;;CGB;;;	DB	$64 ;07	 LV8
;;;CGB;;;	DB	$60 ;08	 LV9
;;;CGB;;;	DB	$4C ;09	 予備
;;;CGB;;;	DB	$4D ;0A	 山の洞窟
;;;CGB;;;	DB	$4C ;0B
;;;CGB;;;	DB	$4C ;0C
;;;CGB;;;	DB	$4C ;0D
;;;CGB;;;	DB	$4E ;0E ;買い物
;;;CGB;;;	DB	$4E ;0F ;サブゲーム
;;;CGB;;;;- - - - - - - - - - - - - - - - - - -
;;;CGB;;;	DB	$4E ;10 : 民家
;;;CGB;;;	DB	$4D ;11 : 洞窟
;;;CGB;;;	DB	$4D ;12 : ワンワンの小屋
;;;CGB;;;	DB	$4F ;13 : ベッドルーム
;;;CGB;;;	DB	$61 ;14 : 城
;;;CGB;;;	DB	$63 ;15 : モリブリンの住処
;;;CGB;;;	DB	$63 ;16 : 廃墟の神殿
;;;CGB;;;	DB	$00 ;17 :
;;;CGB;;;	DB	$00 ;18 :
;;;CGB;;;	DB	$00 ;19 :
;;;CGB;;;	DB	$00 ;1A :
;;;CGB;;;	DB	$00 ;1B :
;;;CGB;;;	DB	$00 ;1C :
;;;CGB;;;	DB	$4E ;1D : うるりら図書館
;;;CGB;;;	DB	$4E ;1E : 秘密の部屋(民家編)
;;;CGB;;;	DB	$4D ;1F : 秘密の部屋(洞窟編)
;;;CGB;;;;=========================================
;;;CGB;;;;壁バンク
;;;CGB;;;DJKBBK	; Danjyon Kabe bank adress !
;;;CGB;;;	DB	$40 ;00	 LV1
;;;CGB;;;	DB	$40 ;01	 LV2
;;;CGB;;;	DB	$6C ;02	 LV3
;;;CGB;;;	DB	$40 ;03	 LV4
;;;CGB;;;	DB	$40 ;04	 LV5
;;;CGB;;;	DB	$6C ;05	 LV6
;;;CGB;;;	DB	$40 ;06	 LV7
;;;CGB;;;	DB	$6E ;07	 LV8
;;;CGB;;;	DB	$4A ;08	 LV9
;;;CGB;;;	DB	$40 ;09	 予備
;;;CGB;;;	DB	$46 ;0A	 山の洞窟
;;;CGB;;;	DB	$40 ;0B
;;;CGB;;;	DB	$40 ;0C
;;;CGB;;;	DB	$40 ;0D
;;;CGB;;;	DB	$48 ;0E ;買い物
;;;CGB;;;	DB	$48 ;0F ;サブゲーム
;;;CGB;;;;- - - - - - - - - - - - - - - - - - -
;;;CGB;;;	DB	$48 ;10 : 民家
;;;CGB;;;	DB	$46 ;11 : 洞窟
;;;CGB;;;	DB	$48 ;12 : ワンワンの小屋
;;;CGB;;;	DB	$4A ;13 : ベッドルーム
;;;CGB;;;	DB	$40 ;14 : 城
;;;CGB;;;	DB	$46 ;15 : モリブリンの住処
;;;CGB;;;	DB	$6C ;16 : 廃墟の神殿
;;;CGB;;;	DB	$00 ;17 :
;;;CGB;;;	DB	$00 ;18 :
;;;CGB;;;	DB	$00 ;19 :
;;;CGB;;;	DB	$00 ;1A :
;;;CGB;;;	DB	$00 ;1B :
;;;CGB;;;	DB	$00 ;1C :
;;;CGB;;;	DB	$48 ;1D : うるりら図書館
;;;CGB;;;	DB	$48 ;1E : 秘密の部屋(民家編)
;;;CGB;;;	DB	$46 ;1F : 秘密の部屋(洞窟編)
;;;CGB;;;;=========================================
;;;CGB;;;DJCABK	; Danjyon 持ち上げるものなど bank adress !
;;;CGB;;;	DB	$79 ;00	 LV1
;;;CGB;;;	DB	$79 ;01	 LV2
;;;CGB;;;	DB	$77 ;02	 LV3
;;;CGB;;;	DB	$79 ;03	 LV4
;;;CGB;;;	DB	$79 ;04	 LV5
;;;CGB;;;	DB	$77 ;05	 LV6
;;;CGB;;;	DB	$78 ;06	 LV7
;;;CGB;;;	DB	$79 ;07	 LV8
;;;CGB;;;	DB	$79 ;08	 LV9
;;;CGB;;;	DB	$63 ;09	 予備
;;;CGB;;;	DB	$7A ;0A	 山の洞窟
;;;CGB;;;	DB	$00 ;0B
;;;CGB;;;	DB	$00 ;0C
;;;CGB;;;	DB	$00 ;0D
;;;CGB;;;;
;;;CGB;;;	DB	$7B ;0E ; 買い物
;;;CGB;;;	DB	$7B ;0F ; サブゲーム
;;;CGB;;;;- - - - - - - - - - - - - - - - - - -
;;;CGB;;;	DB	$7B ;10 : 民家
;;;CGB;;;	DB	$7A ;11 : 洞窟
;;;CGB;;;	DB	$7B ;12 : ワンワンの小屋
;;;CGB;;;	DB	$79 ;13 : ベッドルーム
;;;CGB;;;	DB	$7C ;14 : 城
;;;CGB;;;	DB	$7A ;15 : モリブリンの住処
;;;CGB;;;	DB	$77 ;16 : 廃墟の神殿
;;;CGB;;;	DB	$00 ;17 :
;;;CGB;;;	DB	$00 ;18 :
;;;CGB;;;	DB	$00 ;19 :
;;;CGB;;;	DB	$00 ;1A :
;;;CGB;;;	DB	$00 ;1B :
;;;CGB;;;	DB	$00 ;1C :
;;;CGB;;;	DB	$7C ;1D : うるりら図書館
;;;CGB;;;	DB	$7B ;1E : 秘密の部屋(民家編)
;;;CGB;;;	DB	$7A ;1F : 秘密の部屋(洞窟編)
;=============================
	END
