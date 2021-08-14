;
		onbankgroup
;
	NLIST
;==============	バンク０ ================================================
BANK0		GROUP	0
;-------------<	ZCO >-------------
		extern	DATA_MOV,RAMCLR,RAMCL2,RNDSUB,OBJBG,SVOPEN,RAMCL3
		extern	SOUNDCLR,DJITRV,SOUNDOUT,BGMON,DATA_MOV2
;
;-------------<	ZES >-------------
		extern	ENEMY,ENIDSHL,COHTITL,ITEMDPL,ENOMST,EN2CST,NXOMSBL
		extern	ENPTST,STATINC,ENOMST2,ECACH,EMOVE,EFAIL,EINIT
		extern	
;
;-------------<	ZBS >-------------
		extern	BGDTST,ENDTST,BGBKST
;
;-------------<	ZPL >-------------
		extern	MSGCHK,FDIN,FDOUT,NXGOTO,ENEMYL,GKCHRV,LDTIM0
		extern	BBSDST,MSGCH2,PLSDCL,PLPTSTL,NXGOTO4,LDTIM1,LDTIM3
		extern	GPLAY,PMOVE,NMREG,NMCLR,PSLCT,PINDR2,GPMAIN,PINDR1
		extern	ENDG,GMAP
;
;-------------<	ZMA >-------------
		extern	VRMCL,VRMBT,BKCH2,BKCH3,WINDBGS,RBGST,PSLBGS,GVCHG
		extern	GOVBG,PSLBG2,NSLBGS,NCLBGS,GMAPBGS,VRMB2,OPBGS
		extern	DJBST,GRBST,GMBST,BLVRDS,GMAPCL,BNKTR,NMCPY,SPTST
		extern	BKCHG,TLCHG,ODCHG,NCPBGS,GRCST,TSVBG,OPBST,OPBG2
		extern	OPBG3,OPBS2,LOGOS,PECBG,PECCD,LOVBG,LOVCD,KB1BG
		extern	KB1CD,HIMITSU2,KABBG,KABCD,HIMITSU,TOUBG,TOUCD
;
;==============	バンク１ ================================================
BANK1		GROUP	1
;-------------<	ZTI >-------------
		extern	ITMINC,PSLCTGO,TSV4000,SCRRCLR,TBGEND
;
;==============	バンク２０ ================================================
BANK2		GROUP	2
;-------------<	ZEX >-------------
		extern	EXSTRA,COINIT,HARTIT,ITEMDP,WINDOW,ITEMDP2
;
;==============	バンク３ ================================================
BANK3		GROUP	3
;-------------<	ZEN >-------------
		extern	ENCAPS,BOMBR,BUMER,KTOBJ,PYAAA,GIRL1,WANWAN,RANEM
		extern	KAMEI,OBAKE,NIWAX
;
;==============	バンク８ ================================================
BANK8		GROUP	8
;-------------<	ZBD >-------------
		extern	GRBGCR,BGUNCH
;
;========================================================================
	PUBALL
;
BANK1	GROUP	1
	LIB	ZBN
	LIB	ZRAM
;;;;;;;;;---sub---------------------------------------
;;;;;;;;	EXTERN	DATA_MOV,ENEMY,EXSTRA,RAMCLR,RAMCL2,BGDTST	
;;;;;;;;	EXTERN	ENDTST,COINIT,HARTIT,ITEMDP,RNDSUB,WINDOW,ITEMDP2,MSGCHK
;;;;;;;;	EXTERN	ENIDSHL,OBJBG,ENCAPS,FDIN,FDOUT,NXGOTO,ENEMYL,SVOPEN,GKCHRV
;;;;;;;;	EXTERN	COHTITL,ITEMDPL,RAMCL3,BGBKST,SOUNDCLR,DJITRV,ENOMST,EN2CST
;;;;;;;;	EXTERN	ITMINC,LDTIM0,NXOMSBL,BBSDST,ENPTST,STATINC,SOUNDOUT,BGMON
;;;;;;;;	EXTERN	PSLCTGO,TSV4000,MSGCH2,SCRRCLR,DATA_MOV2,PLSDCL,PLPTSTL,NXGOTO4
;;;;;;;;	EXTERN	LDTIM1,LDTIM3,ENOMST2
;;;;;;;;;- -lavel -
;;;;;;;;	EXTERN	VRMCL,VRMBT,BKCH2,BKCH3,WINDBGS,RBGST,BOMBR,BUMER,KTOBJ,GRBGCR
;;;;;;;;	EXTERN	BGUNCH,ECACH,PYAAA,EMOVE,EFAIL,PSLBGS,GPLAY,GVCHG,GOVBG,PMOVE
;;;;;;;;	EXTERN	PSLBG2,NSLBGS,NMREG,NMCLR,NCLBGS,PSLCT,GMAPBGS,VRMB2,OPBGS
;;;;;;;;	EXTERN	PINDR2,DJBST,GRBST,GMBST,BLVRDS,GMAPCL,BNKTR,NMCPY,SPTST
;;;;;;;;	EXTERN	BKCHG,TLCHG,ODCHG,GPMAIN,NCPBGS,GRCST,TSVBG,PINDR1,GIRL1
;;;;;;;;	EXTERN	OPBST,OPBG2,OPBG3,OPBS2,WANWAN,EINIT,LOGOS,PECBG,PECCD,LOVBG,LOVCD
;;;;;;;;	EXTERN	ENDG,RANEM,KAMEI,KB1BG,KB1CD,OBAKE,NIWAX
;;;;;;;;	EXTERN	HIMITSU2,KABBG,KABCD,GMAP,HIMITSU,TOUBG,TOUCD
;;;;;;;;	EXTERN	TBGEND
;- - - - - - - - - - - - - - - - - - -
	LIST
	isdmg
;;;11/17	ORG	$5D60
	KANJI
;****************************************
;*      OAM RAM CLEAR                   *
;****************************************
OAMCLR	
	LD	HL,$0000
;
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
;%	部屋脱出ワンワン&マリンセットチェック   %
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
;*       サブルーチン                   *
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
MSGTEST	; メッセージ テスト 田辺バージョン
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
;%	海岸熱いデモ！                   %
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
	LD	A,VRMB2  ;CL
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
	JP  	ITMINC
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
	JP  	ITMINC
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
	CALL	KMXCLC 		; X calc
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
;%	ピーチ写真！                     %
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
	LD	A,VRMB2  ;CL
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
;%	クジラ壁画                       %
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
;1998/11/11;TXSCYDEND
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11; 	DB $00,$00,$00,$00,$00,$00,$00,$00
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11; 	DB $00,$00,$00,$00,$00,$00,$00,$00
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $00,$00,$00,$00,$00,$00,$00,$00
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11; 	DB $00,$00,$00,$00,$00,$00,$00,$00
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $00,$00,$00,$00,$00,$00,$00,$00
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11; 	DB $00,$00,$00,$00,$00,$00,$00,$00
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $00,$00,$00,$00,$00,$00,$00,$00
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $00,$00,$00,$00,$00,$00,$00,$00
;1998/11/11;;==========================================
;1998/11/11;TXSCYD48
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11;	DB $F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11;	DB $F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $E0,$E0,$E0,$E0,$E0,$E2,$E5,$E8
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11; 	DB $EB,$EE,$F1,$F4,$F7,$FA,$FD,$00
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $03,$06,$09,$0C,$0F,$12,$15,$18
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11; 	DB $1B,$1E,$21,$24,$27,$2A,$2D,$30
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $33,$36,$39,$3C,$3F,$42,$45,$48
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $33,$36,$39,$3C,$3F,$42,$45,$48
;1998/11/11;;==========================================
;1998/11/11;TXSCYD30
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11;	DB $F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11;	DB $F0,$F0,$F0,$F0,$F0,$F0,$F0,$E0
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $E2,$E4,$E6,$E8,$EA,$EC,$EE,$F0
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11; 	DB $F2,$F4,$F6,$F8,$FA,$FC,$FE,$00
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $02,$04,$06,$08,$0A,$0C,$0E,$10
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11; 	DB $12,$14,$16,$18,$1A,$1C,$1D,$1E
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $20,$22,$24,$26,$28,$2A,$2C,$2E
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $20,$22,$24,$26,$28,$2A,$2C,$2E
;1998/11/11;;==========================================
;1998/11/11;TXSCYD24
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11;	DB $F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11;	DB $F0,$DF,$E0,$E2,$E3,$E5,$E6,$E8
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $E9,$EB,$EC,$EE,$EF,$F1,$F2,$F4
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11; 	DB $F5,$F7,$F8,$FA,$FB,$FD,$FE,$00
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $01,$03,$04,$06,$07,$09,$0A,$0C
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11; 	DB $0D,$0F,$10,$12,$13,$15,$16,$18
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $19,$1B,$1C,$1E,$1F,$21,$22,$24
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $19,$1B,$1C,$1E,$1F,$21,$22,$24
;1998/11/11;;==========================================
;1998/11/11;TXSCYD22
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11;	DB $F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11;	DB $F0,$F0,$E2,$E3,$E5,$E6,$E8,$E9
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $EB,$EC,$EE,$F0,$F2,$F3,$F6,$F7
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11; 	DB $F8,$F9,$FA,$FC,$FD,$FE,$FF,$00
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $01,$03,$04,$06,$07,$09,$0A,$0C
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11; 	DB $0D,$0F,$10,$12,$13,$15,$16,$18
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $19,$1B,$1C,$1E,$1F,$21,$22,$22
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $24,$25,$27,$29,$2B,$2C,$2E,$2F
;1998/11/11;;==========================================
;1998/11/11;TXSCYD20
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11;	DB $F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11;	DB $E1,$E2,$E4,$E5,$E6,$E8,$E9,$EA
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $EC,$ED,$EE,$F0,$F1,$F2,$F4,$F5
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11; 	DB $F6,$F8,$F9,$FA,$FC,$FE,$FF,$00
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $01,$02,$04,$05,$06,$08,$09,$0A
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11; 	DB $0C,$0D,$0E,$10,$11,$12,$14,$15
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $16,$18,$19,$1A,$1C,$1D,$1E,$20
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $22,$23,$24,$25,$27,$28,$2A,$2B
;1998/11/11;;==========================================
;1998/11/11;TXSCYD1E
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11;	DB $F0,$F0,$F0,$F0,$F0,$F0,$F0,$E2
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11;	DB $E3,$E4,$E5,$E6,$E8,$E9,$EA,$EC
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $ED,$EE,$EF,$F1,$F2,$F3,$F5,$F6
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11; 	DB $F8,$F9,$FA,$FB,$FD,$FE,$FF,$00
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $01,$02,$03,$05,$06,$07,$08,$0A
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11; 	DB $0B,$0C,$0D,$0F,$10,$11,$12,$14
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $15,$16,$17,$19,$1A,$1B,$1D,$1E
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $20,$21,$22,$23,$25,$26,$27,$28
;1998/11/11;;==========================================
;1998/11/11;TXSCYD1C
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11;	DB $F0,$F0,$F0,$F0,$F0,$F0,$E3,$E4
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11;	DB $E5,$E6,$E7,$E8,$E9,$EB,$EC,$ED
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $EE,$F0,$F1,$F2,$F3,$F4,$F6,$F7
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11; 	DB $F8,$F9,$FB,$FC,$FD,$FE,$FF,$00
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $01,$02,$03,$04,$06,$07,$08,$09
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11; 	DB $0A,$0B,$0C,$0E,$10,$11,$12,$13
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $14,$15,$16,$18,$19,$1A,$1B,$1C
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $1D,$1F,$20,$21,$22,$23,$24,$25
;1998/11/11;;==========================================
;1998/11/11;TXSCYD1A
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11;	DB $F0,$F0,$F0,$F0,$F0,$E4,$E5,$E6
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11;	DB $E7,$E8,$E9,$EA,$EB,$EC,$EE,$EF
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $F0,$F1,$F2,$F3,$F4,$F5,$F6,$F8
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11; 	DB $F9,$FA,$FB,$FC,$FD,$FE,$FF,$00
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $01,$02,$03,$04,$05,$06,$07,$08
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11; 	DB $09,$0A,$0C,$0D,$0E,$0F,$10,$11
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $12,$13,$15,$16,$17,$18,$19,$1A
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $1B,$1C,$1D,$1E,$1F,$21,$22,$23
;1998/11/11;;==========================================
;1998/11/11;TXSCYD18
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11;	DB $F0,$F0,$F0,$F0,$E5,$E6,$E7,$E8
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11;	DB $E9,$EA,$EB,$EC,$ED,$EE,$EF,$F0
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $F1,$F2,$F3,$F4,$F5,$F6,$F7,$F8
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11; 	DB $F9,$FA,$FB,$FC,$FD,$FE,$FF,$00
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $01,$02,$03,$04,$05,$06,$07,$08
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11; 	DB $09,$0A,$0B,$0C,$0D,$0E,$0F,$10
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $11,$12,$13,$14,$15,$16,$17,$18
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $19,$1A,$1B,$1C,$1D,$1E,$1F,$20
;1998/11/11;;==========================================
;1998/11/11;TXSCYD16
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11;	DB $F0,$F0,$F0,$E6,$E7,$E8,$E8,$E9
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11;	DB $EA,$EB,$EC,$ED,$EE,$EF,$F0,$F0
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $F1,$F2,$F3,$F4,$F5,$F6,$F7,$F8
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11; 	DB $F8,$F9,$FA,$FB,$FC,$FD,$FE,$FF
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $00,$01,$02,$03,$04,$05,$06,$07
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11; 	DB $07,$08,$09,$0A,$0B,$0C,$0D,$0E
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $0F,$10,$11,$12,$13,$14,$15,$16
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $17,$18,$19,$1A,$1A,$1B,$1C,$1D
;1998/11/11;;==========================================
;1998/11/11;TXSCYD14
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11;	DB $F0,$F0,$E7,$E8,$E9,$EA,$EB,$EC
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11;	DB $EC,$EC,$ED,$EE,$EF,$F0,$F1,$F2
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $F2,$F3,$F4,$F5,$F6,$F7,$F7,$F8
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11; 	DB $F9,$FA,$FB,$FC,$FC,$FD,$FE,$FF
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $00,$01,$02,$03,$04,$04,$05,$06
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11; 	DB $07,$08,$09,$09,$0A,$0B,$0C,$0D
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $0E,$0E,$0F,$10,$11,$12,$13,$14
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $15,$16,$16,$17,$18,$19,$1A,$1B
;1998/11/11;;==========================================
;1998/11/11;TXSCYD12
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11;	DB $F0,$E9,$E9,$EA,$EB,$EB,$EC,$ED
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11;	DB $EE,$EE,$EF,$F0,$F0,$F1,$F2,$F3
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $F4,$F4,$F5,$F6,$F7,$F8,$F8,$F9
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11; 	DB $FA,$FB,$FC,$FC,$FD,$FE,$FF,$00
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $00,$01,$02,$03,$03,$04,$05,$06
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11; 	DB $06,$07,$08,$09,$0A,$0A,$0B,$0C
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $0C,$0D,$0E,$0E,$10,$11,$12,$12
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $13,$14,$15,$15,$16,$17,$18,$18
;1998/11/11;;==========================================
;1998/11/11;TXSCYD10
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11;	DB $EB,$EC,$EC,$ED,$EE,$EE,$EF,$F0
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11;	DB $F0,$F1,$F2,$F2,$F3,$F4,$F4,$F5
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $F6,$F6,$F7,$F8,$F8,$F9,$FA,$FA
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11; 	DB $FB,$FC,$FC,$FD,$FE,$FE,$FF,$00
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $00,$01,$02,$02,$03,$04,$04,$05
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11; 	DB $06,$06,$07,$08,$08,$09,$0A,$0A
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $0B,$0C,$0C,$0D,$0E,$0E,$0F,$10
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $10,$11,$12,$12,$13,$14,$14,$15
;1998/11/11;;==========================================
;1998/11/11;TXSCYD0E
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11;	DB $ED,$EE,$EE,$EF,$F0,$F0,$F1,$F1
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11;	DB $F2,$F2,$F3,$F3,$F3,$F4,$F5,$F5
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $F6,$F6,$F7,$F8,$F8,$F9,$F9,$FA
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11; 	DB $FB,$FB,$FC,$FC,$FE,$FF,$FF,$00
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $00,$01,$01,$02,$03,$03,$04,$04
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11; 	DB $05,$06,$06,$07,$07,$08,$09,$09
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $0A,$0A,$0B,$0C,$0C,$0D,$0D,$0E
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $0F,$0F,$10,$10,$11,$12,$12,$13
;1998/11/11;;==========================================
;1998/11/11;TXSCYD0C
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11;	DB $F0,$F1,$F1,$F2,$F2,$F3,$F3,$F4
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11;	DB $F4,$F5,$F5,$F6,$F6,$F7,$F7,$F8
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $F8,$F9,$F9,$FA,$FA,$FB,$FB,$FC
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11; 	DB $FC,$FD,$FD,$FE,$FE,$FF,$FF,$00
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $00,$01,$01,$02,$02,$03,$03,$04
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11; 	DB $04,$05,$05,$06,$06,$07,$07,$08
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $08,$09,$09,$0A,$0A,$0B,$0B,$0C
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $0C,$0D,$0D,$0E,$0E,$0F,$0F,$10
;1998/11/11;;==========================================
;1998/11/11;TXSCYD0A
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11;	DB $F3,$F4,$F4,$F4,$F5,$F5,$F6,$F6
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11;	DB $F6,$F7,$F7,$F8,$F8,$F8,$F9,$F9
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $FA,$FA,$FA,$FB,$FB,$FC,$FC,$FC
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11; 	DB $FD,$FD,$FE,$FE,$FF,$FF,$00,$00
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $00,$01,$01,$02,$02,$03,$03,$03
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11; 	DB $04,$04,$05,$05,$05,$06,$06,$07
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $07,$07,$08,$08,$09,$09,$09,$0A
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $0A,$0B,$0B,$0B,$0C,$0C,$0D,$0D
;1998/11/11;;==========================================
;1998/11/11;TXSCYD08
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11;	DB $F5,$F6,$F6,$F6,$F7,$F7,$F7,$F8
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11;	DB $F8,$F8,$F9,$F9,$F9,$FA,$FA,$FA
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $FB,$FB,$FB,$FC,$FC,$FC,$FD,$FD
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11; 	DB $FD,$FE,$FE,$FE,$FF,$FF,$FF,$00
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $00,$01,$01,$01,$02,$02,$02,$03
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11; 	DB $03,$03,$04,$04,$04,$05,$05,$05
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $06,$06,$06,$07,$07,$07,$08,$08
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $08,$09,$09,$09,$0A,$0A,$0A,$0B
;1998/11/11;;==========================================
;1998/11/11;TXSCYD06
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11;	DB $FC,$FC,$FB,$FB,$FB,$FB,$FA,$FA
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11;	DB $FA,$FA,$FB,$FB,$FB,$FB,$FC,$FC
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $FC,$FC,$FD,$FD,$FD,$FD,$FE,$FE
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11; 	DB $FE,$FE,$FF,$FF,$FF,$FF,$00,$00
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $00,$00,$01,$01,$01,$01,$02,$02
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11; 	DB $02,$02,$03,$03,$03,$03,$04,$04
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $04,$04,$05,$05,$05,$05,$06,$06
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $06,$06,$07,$07,$07,$07,$08,$08
;1998/11/11;;==========================================
;1998/11/11;TXSCYD04
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11;	DB $FB,$FB,$FB,$FB,$FB,$FC,$FC,$FC
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11;	DB $FC,$FC,$FC,$FD,$FD,$FD,$FD,$FD
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $FE,$FE,$FE,$FE,$FE,$FE,$FF,$FF
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11; 	DB $FF,$FF,$FF,$FF,$00,$00,$00,$00
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $00,$00,$01,$01,$01,$01,$01,$01
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11; 	DB $02,$02,$02,$02,$02,$02,$03,$03
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $03,$03,$03,$03,$04,$04,$04,$04
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $04,$04,$05,$05,$05,$05,$05,$05
;1998/11/11;;==========================================
;1998/11/11;TXSCYD02
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11;	DB $FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11;	DB $FE,$FE,$FE,$FE,$FE,$FE,$FE,$FE
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $FE,$FE,$FF,$FE,$FF,$FF,$FF,$FF
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11; 	DB $FF,$FF,$FF,$00,$00,$00,$00,$00
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $00,$00,$00,$00,$00,$01,$01,$01
;1998/11/11;;            0   1   2   3   4   5   6   7
;1998/11/11; 	DB $01,$01,$01,$01,$01,$01,$01,$02
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $02,$02,$02,$02,$02,$02,$02,$02
;1998/11/11;;            8   9   A   B   C   D   E   F
;1998/11/11; 	DB $02,$03,$03,$03,$03,$03,$03,$03
;1998/11/11;;
;1998/11/11;;
;1998/11/11;;
;1998/11/11;;
;1998/11/11;;------------------------------------
;1998/11/11;TLSCY
;1998/11/11;	DW	TXSCYD48
;1998/11/11;	DW	TXSCYD30
;1998/11/11;	DW	TXSCYD24
;1998/11/11;;;	DW	TXSCYD22
;1998/11/11;	DW	TXSCYD20
;1998/11/11;;;	DW	TXSCYD1E
;1998/11/11;	DW	TXSCYD1C
;1998/11/11;	DW	TXSCYD1A
;1998/11/11;;;	DW	TXSCYD18
;1998/11/11;	DW	TXSCYD16
;1998/11/11;	DW	TXSCYD14
;1998/11/11;	DW	TXSCYD12
;1998/11/11;;;	DW	TXSCYD10
;1998/11/11;	DW	TXSCYD0E
;1998/11/11;	DW	TXSCYD0C
;1998/11/11;	DW	TXSCYD0A
;1998/11/11;	DW	TXSCYD08
;1998/11/11;	DW	TXSCYD06
;1998/11/11;	DW	TXSCYD04
;1998/11/11;	DW	TXSCYD02
;1998/11/11;	DW	TXSCYDEND
;1998/11/11;TXLIMIT
;1998/11/11;	DB	$28,$2A,$2C,$2C,$2E,$2E
;1998/11/11;	DB	$30,$30,$31,$33,$33,$34
;1998/11/11;	DB	$35,$36,$38,$3A,$3A
;1998/11/11;;
;1998/11/11;;	DB	$28,$2A,$2C,$2C,$2C,$2E,$2E,$2E
;1998/11/11;;	DB	$2F,$30,$30,$31,$32,$33,$33,$34
;1998/11/11;;	DB	$35,$36,$38,$3A,$3A
;1998/11/11;;====================================================================
;1998/11/11;TITLX
;1998/11/11;;
;1998/11/11;	LD	HL,WAVCNT
;1998/11/11;	XOR	A
;1998/11/11;	LD	(HLI),A
;1998/11/11;	LD	(HLI),A
;1998/11/11;;
;1998/11/11;	LD	D,$00
;1998/11/11;;
;1998/11/11;;	LD	A,(KEYA2)
;1998/11/11;;	AND	%01000000
;1998/11/11;;	JR	Z,TXE00
;1998/11/11;;
;1998/11/11;	LD	A,(FRCNT)
;1998/11/11;	AND	$01
;1998/11/11;	JR	NZ,TXE00
;1998/11/11;;
;1998/11/11;	LD	A,(WAVCNT3)
;1998/11/11;	INC	A
;1998/11/11;	CP	$10
;1998/11/11;	JR	C,TXEF0
;1998/11/11;	LD	A,$10
;1998/11/11;TXEF0
;1998/11/11;	LD	(WAVCNT3),A
;1998/11/11;TXE00
;1998/11/11;	LD	A,(WAVCNT3)
;1998/11/11;	LD	E,A
;1998/11/11;	LD	HL,TXLIMIT
;1998/11/11;	ADD	HL,DE
;1998/11/11;	LD	A,(HL)
;1998/11/11;	LD	(WORK0),A
;1998/11/11;	SLA	E
;1998/11/11;	LD	HL,TLSCY	
;1998/11/11;	ADD	HL,DE
;1998/11/11;;
;1998/11/11;	LD	A,(HLI)
;1998/11/11;	LD	B,(HL)
;1998/11/11;	LD	C,A
;1998/11/11;;
;1998/11/11;TLX00
;1998/11/11;	LD	A,(LY)
;1998/11/11;	CP	$10
;1998/11/11;	JR	NZ,TLX00
;1998/11/11;TLX10
;1998/11/11;	LD	A,(STAT)
;1998/11/11;	AND	%00000011
;1998/11/11;	JR	NZ,TLX10
;1998/11/11;TLX18
;1998/11/11;	LD	A,(WAVCNT2)
;1998/11/11;	INC	A
;1998/11/11;	LD	(WAVCNT2),A
;1998/11/11;	AND	$01
;1998/11/11;	JR	NZ,TLX18
;1998/11/11;;
;1998/11/11;	LD	A,(WORK0)
;1998/11/11;	LD	L,A
;1998/11/11;;
;1998/11/11;	LD	A,(WAVCNT)
;1998/11/11;	LD	E,A
;1998/11/11;	INC	A
;1998/11/11;	LD	(WAVCNT),A
;1998/11/11;	CP	$3A
;1998/11/11;	JR	Z,TLX20
;1998/11/11;	CP	L
;1998/11/11;	JR	C,TLX1A
;1998/11/11;;
;1998/11/11;	LD	A,%01010101
;1998/11/11;	LD	(BGP),A
;1998/11/11;	JR	TLX10
;1998/11/11;TLX1A
;1998/11/11;	LD	HL,$00 ;TXSCYD
;1998/11/11;	ADD	HL,DE
;1998/11/11;	ADD	HL,BC
;1998/11/11;	LD	A,(HL)
;1998/11/11;	LD	HL,SCCV
;1998/11/11;	ADD	A,(HL)
;1998/11/11;	LD	(SCY),A
;1998/11/11;	JR	TLX10
;1998/11/11;;
;1998/11/11;TLX20
;1998/11/11;;;	LD	A,$00
;1998/11/11;	LD	A,(SCCV)
;1998/11/11;	LD	(SCY),A
;1998/11/11;;
;1998/11/11;	LD	A,(BGPFG)
;1998/11/11;	LD	(BGP),A
;1998/11/11;	RET	
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
;1998/11/11;;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;1998/11/11;;%	オープニング       		     %
;1998/11/11;;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;1998/11/11;IZFLCD
;1998/11/11;;;	DB	%11000110	; Display flash data !
;1998/11/11;;;	DB	%00000110
;1998/11/11;	DB	%11000110
;1998/11/11;	DB	%11000010
;1998/11/11;	DB	%11000000
;1998/11/11;	DB	%11000010
;1998/11/11;;- - - - - - - - - - - - - - - - - - -
;1998/11/11;OPENING
;1998/11/11;	LD	A,(OPKYTM)
;1998/11/11;	AND	A
;1998/11/11;	JR	Z,OPES10
;1998/11/11;;
;1998/11/11;	DEC	A
;1998/11/11;	LD	(OPKYTM),A
;1998/11/11;	JR	OPN010
;1998/11/11;;
;1998/11/11;OPES10
;1998/11/11;	LD	A,(KEYA2)
;1998/11/11;	AND	%10000000
;1998/11/11;	JR	Z,OPN010
;1998/11/11;;
;1998/11/11;	CALL	SOUNDCLR	;(S)
;1998/11/11;;
;1998/11/11;	LD	A,(ITMODE)
;1998/11/11;	CP	OPLG
;1998/11/11;;;	JR	OPP100	
;1998/11/11;	JR	Z,OPP100	
;1998/11/11;;
;1998/11/11;	LD	A,$28
;1998/11/11;	LD	(OPKYTM),A	; Logo display wait !
;1998/11/11;;
;1998/11/11;	LD	A,LOGOS
;1998/11/11;	LD	(VRFLG),A
;1998/11/11;;
;1998/11/11;;;	LD	A,OPBS2		; Bank set!
;1998/11/11;;;	LD	(BLNKFG),A
;1998/11/11;;
;1998/11/11;	LD	A,OPLGW
;1998/11/11;	LD	(ITMODE),A
;1998/11/11;;
;1998/11/11;	XOR	A
;1998/11/11;;;	LD	(SCCH),A
;1998/11/11;;;	LD	(SCCV),A
;1998/11/11;	LD	(ENMODE),A
;1998/11/11;	LD	(ENMODE+1),A
;1998/11/11;	LD	(ENMODE+2),A
;1998/11/11;	LD	(ENMODE+3),A
;1998/11/11;	LD	(ENMODE+4),A
;1998/11/11;	LD	(BGP),A
;1998/11/11;	LD	(BGPFG),A
;1998/11/11;;
;1998/11/11;	LD	A,$10
;1998/11/11;	LD	(WAVCNT3),A	;ロゴイキナリ出す！
;1998/11/11;	CALL	LOGOINT
;1998/11/11;;
;1998/11/11;	LD	A,$0D
;1998/11/11;	LD	(SOUND4),A	;(S)
;1998/11/11;;
;1998/11/11;	LD	(OPWRK8),A
;1998/11/11;	CALL	NMCHTRS
;1998/11/11;	JR	IEINIT
;1998/11/11;;
;1998/11/11;OPP100
;1998/11/11;	JP	PSLCTGO
;1998/11/11;OPSTART
;1998/11/11;	XOR	A
;1998/11/11;	LD	(ITMODE),A
;1998/11/11;	LD	(SCCH),A
;1998/11/11;	LD	(SCCV),A
;1998/11/11;	LD	(BGP),A
;1998/11/11;	LD	(BGPFG),A
;1998/11/11;;
;1998/11/11;	LD	HL,GMMODE
;1998/11/11;	INC	(HL)
;1998/11/11;;
;1998/11/11;IEINIT
;1998/11/11;	LD	A,%00000001
;1998/11/11;	LD	(IE),A
;1998/11/11;;
;1998/11/11;	LD	A,$4F
;1998/11/11;	LD	(LYC),A
;1998/11/11;	RET
;1998/11/11;OPN010
;1998/11/11;;;	JP	OPSTART
;1998/11/11;	LD	A,(ITMODE)
;1998/11/11;	CP	OPAF
;1998/11/11;	JR	NC,OPN080
;1998/11/11;;
;1998/11/11;	LD	A,(OPWRK0)
;1998/11/11;	AND	A
;1998/11/11;	JR	Z,INZ000
;1998/11/11;	DEC	A
;1998/11/11;	LD	(OPWRK0),A
;1998/11/11;INZ000
;1998/11/11;	RRA
;1998/11/11;;;	RRA
;1998/11/11;	NOP
;1998/11/11;	AND	$03
;1998/11/11;;;	AND	$01
;1998/11/11;	LD	E,A
;1998/11/11;	LD	D,$00
;1998/11/11;	LD	HL,IZFLCD
;1998/11/11;	ADD	HL,DE
;1998/11/11;	LD	A,(HL)
;1998/11/11;	LD	(BGPFG),A
;1998/11/11;OPN080
;1998/11/11;	LD	A,(ITMODE)
;1998/11/11;	RST	00
;1998/11/11;	DW	OP10000
;1998/11/11;	DW	OP20000
;1998/11/11;	DW	OP30000
;1998/11/11;	DW	OP80000	; On sea
;1998/11/11;	DW	OP90000	; Link up
;1998/11/11;	DW	OPAF000	; Yoko yama Bank set !
;1998/11/11;	DW	OPA0000	; Yoko yama Wait !!
;1998/11/11;	DW	OPB0000	; Yoko yama Scroll !!
;1998/11/11;	DW	OPC0000	; "ZELDA" Logo set 
;1998/11/11;	DW	OPD0000	; "ZELDA" Logo XXX 
;1998/11/11;	DW	OPE0000	; Nontendo TR.
;1998/11/11;	DW	OPF0000	; Loop wait.
;1998/11/11;	DW	OPF8000	; Fade out !
;1998/11/11;	DW	OPF9000	;いきなりタイトルバンクセット！
;1998/11/11;;
;1998/11/11;OP8	EQU	$3
;1998/11/11;OP9	EQU	$4
;1998/11/11;OPAF	EQU	$5
;1998/11/11;OPA	EQU	$6
;1998/11/11;OPB	EQU	$7
;1998/11/11;TLX	EQU	$9
;1998/11/11;OPLG	EQU	$0B
;1998/11/11;OPLGW	EQU	$0D
;1998/11/11;;======================================
;1998/11/11;OP10000
;1998/11/11;	CALL	RAMCL2
;1998/11/11;;
;1998/11/11;	CALL	SOUNDCLR	;(S)
;1998/11/11;;
;1998/11/11;	LD	A,$1A   ;20
;1998/11/11;;;	LD	(SOUND4),A	;(S)
;1998/11/11;	CALL	BGMON	;(S)
;1998/11/11;;
;1998/11/11;	LD	A,VRMCL
;1998/11/11;	LD	(BLNKFG),A
;1998/11/11;;
;1998/11/11;	XOR	A
;1998/11/11;	LD	(FRCNT),A
;1998/11/11;	LD	A,$A2
;1998/11/11;	LD	(RNDFLG),A
;1998/11/11;;
;1998/11/11;	LD	A,(LCDC)
;1998/11/11;	AND	%11011111	; Window OFF!
;1998/11/11;	LD	(LCDCB),A
;1998/11/11;	LD	(LCDC),A
;1998/11/11;;
;1998/11/11;	JP	ITMINC
;1998/11/11;;======================================
;1998/11/11;OP20000
;1998/11/11;	LD	A,OPBST		; Bank set!
;1998/11/11;	LD	(BLNKFG),A
;1998/11/11;;	
;1998/11/11;	JP	ITMINC
;1998/11/11;;======================================
;1998/11/11;OP30000
;1998/11/11;	CALL	OPSCRL	; Part scroll sub !
;1998/11/11;;
;1998/11/11;	LD	A,OPBGS
;1998/11/11;	LD	(VRFLG),A
;1998/11/11;;
;1998/11/11;	LD	A,%11000110
;1998/11/11;	LD	(BGPFG),A
;1998/11/11;;
;1998/11/11;	LD	A,%00011100
;1998/11/11;	LD	(OBP0FG),A
;1998/11/11;	LD	A,%11100000
;1998/11/11;	LD	(OBP1FG),A
;1998/11/11;;
;1998/11/11;	LD	A,%00000011
;1998/11/11;	LD	(IE),A
;1998/11/11;;
;1998/11/11;	LD	A,$00
;1998/11/11;	LD	(LYC),A
;1998/11/11;;
;1998/11/11;	LD	E,$10+1
;1998/11/11;	LD	HL,OPWRK0
;1998/11/11;	XOR	A
;1998/11/11;OP3010
;1998/11/11;	LD	(HLI),A
;1998/11/11;	DEC	E
;1998/11/11;	JR	NZ,OP3010
;1998/11/11;;
;1998/11/11;;	LD	(OPWRK0),A
;1998/11/11;;	LD	(OPWRK1),A
;1998/11/11;;	LD	(OPWRK2),A
;1998/11/11;;	LD	(OPWRK3),A
;1998/11/11;;	LD	(OPWRK4),A
;1998/11/11;;	LD	(OPWRK5),A
;1998/11/11;;	LD	(OPWRK6),A
;1998/11/11;;
;1998/11/11;;
;1998/11/11;	LD	(ENMODE+0),A
;1998/11/11;	LD	(ENMODE+1),A
;1998/11/11;	LD	(ENCHPT),A
;1998/11/11;	LD	(ENCHPT+1),A
;1998/11/11;	LD	(ENCHPT+2),A
;1998/11/11;	LD	(ENFLCL),A
;1998/11/11;;
;1998/11/11;	LD	A,$05
;1998/11/11;	LD	(ENMODE+2),A
;1998/11/11;;
;1998/11/11;	LD	A,$C0
;1998/11/11;	LD	(ENXPSL+2),A
;1998/11/11;	LD	A,$4E
;1998/11/11;	LD	(ENYPSL+2),A
;1998/11/11;;
;1998/11/11;	XOR	A
;1998/11/11;	LD	(ENMOD0+0),A
;1998/11/11;	LD	(ENMOD0+1),A
;1998/11/11;	LD	(ENMOD0+2),A
;1998/11/11;	LD	(ENMOD0+3),A
;1998/11/11;;
;1998/11/11;	JP	ITMINC
;1998/11/11;;======================================
;1998/11/11;INBGCD
;1998/11/11;	DB	%10000001
;1998/11/11;	DB	%01000000
;1998/11/11;	DB	%00000000
;1998/11/11;	DB	%00000000
;1998/11/11;	DB	%00000000
;1998/11/11;	DB	%00000000
;1998/11/11;	DB	%00000000
;1998/11/11;	DB	%00000000
;1998/11/11;	DB	%00000000
;1998/11/11;INOBCD
;1998/11/11;	DB	%00001000
;1998/11/11;	DB	%00001000
;1998/11/11;	DB	%00001000
;1998/11/11;	DB	%00000100
;1998/11/11;	DB	%00000000
;1998/11/11;	DB	%00000000
;1998/11/11;	DB	%00000000
;1998/11/11;	DB	%00000000
;1998/11/11;	DB	%00000000
;1998/11/11;;
;1998/11/11;OP80000		; 広大な海と船
;1998/11/11;;;	CALL	OPSCRL	; Part scroll sub !
;1998/11/11;;
;1998/11/11;	CALL	RAINCS	; 雨
;1998/11/11;	CALL	OPOBJ   ; 雷+ふね
;1998/11/11;;
;1998/11/11;	LD	A,(OPWRK2)
;1998/11/11;	AND	A
;1998/11/11;	JR	Z,OP8001	; 稲妻 ちょくげき?
;1998/11/11;;				; yes !
;1998/11/11;	INC	A
;1998/11/11;	LD	(OPWRK2),A
;1998/11/11;;
;1998/11/11;	CP	$18
;1998/11/11;	JR	C,OP8F090
;1998/11/11;;
;1998/11/11;	SUB	$18
;1998/11/11;	RRA
;1998/11/11;	RRA
;1998/11/11;	RRA
;1998/11/11;	AND	%00001111
;1998/11/11;;
;1998/11/11;	LD	E,A
;1998/11/11;	LD	D,$00
;1998/11/11;	LD	HL,INBGCD
;1998/11/11;	ADD	HL,DE
;1998/11/11;	LD	A,(HL)
;1998/11/11;	LD	(BGPFG),A
;1998/11/11;	LD	HL,INOBCD
;1998/11/11;	ADD	HL,DE
;1998/11/11;	LD	A,(HL)
;1998/11/11;	LD	(OBP0FG),A
;1998/11/11;	LD	A,E
;1998/11/11;	CP	$08
;1998/11/11;	JP	NZ,OP8F090
;1998/11/11;;
;1998/11/11;	XOR	A
;1998/11/11;	LD	(ENMODE),A
;1998/11/11;	LD	(ENMODE+1),A
;1998/11/11;	LD	(ENMODE+2),A
;1998/11/11;	LD	(ENSTAT),A
;1998/11/11;;
;1998/11/11;	LD	A,OPAF
;1998/11/11;	LD	(ITMODE),A	; Yoko display go !
;1998/11/11;;
;1998/11/11;	LD	(OPWRK8),A
;1998/11/11;	CALL	NMCHTRS	; !!
;1998/11/11;;
;1998/11/11;	LD	A,OPBS2		; Bank set!
;1998/11/11;	LD	(BLNKFG),A
;1998/11/11;;
;1998/11/11;;;	CALL	SOUNDOUT ;CLR	;(S)
;1998/11/11;;
;1998/11/11;	LD	A,$FF
;1998/11/11;	LD	(OPWRK1),A	; Fade time !!
;1998/11/11;;
;1998/11/11;	XOR	A
;1998/11/11;	LD	(SCCH),A
;1998/11/11;	LD	(SCCH1),A
;1998/11/11;	LD	(SCCH3),A
;1998/11/11;	LD	(SCCH4),A
;1998/11/11;S2S
;1998/11/11;	LD	A,$92
;1998/11/11;;;	LD	A,$92+3  ;A0-56-B8
;1998/11/11;	LD	(SCCH2),A	; Mountain scroll initial !
;1998/11/11;;
;1998/11/11;	LD	A,$03
;1998/11/11;	LD	(IE),A
;1998/11/11;;
;1998/11/11;;	LD	A,$30
;1998/11/11;;	LD	(LYC),A
;1998/11/11;OP8F090
;1998/11/11;	RET
;1998/11/11;;--------------------------------
;1998/11/11;OP8001
;1998/11/11;	LD	A,(ENXPSL+2)
;1998/11/11;	CP	$50
;1998/11/11;	JR	NZ,OP8002
;1998/11/11;;
;1998/11/11;;;	LD	A,(KEYA2)
;1998/11/11;;;	AND	%00100000
;1998/11/11;;;	JR	Z,OP8002	; TEST !!!
;1998/11/11;;
;1998/11/11;	LD	A,OP9
;1998/11/11;	LD	(ITMODE),A
;1998/11/11;;
;1998/11/11;	LD	A,OPBG2
;1998/11/11;	LD	(VRFLG),A
;1998/11/11;;
;1998/11/11;	LD	A,%00000001
;1998/11/11;	LD	(IE),A
;1998/11/11;;
;1998/11/11;	XOR	A
;1998/11/11;	LD	(SCCH),A
;1998/11/11;;
;1998/11/11;	RET
;1998/11/11;OP8002
;1998/11/11;;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
;1998/11/11;	CALL	OPSCRL	; Part scroll sub !
;1998/11/11;;
;1998/11/11;	LD	A,(FRCNT)
;1998/11/11;	AND	$07
;1998/11/11;;;	JR	NZ,OP8007
;1998/11/11;	JP	NZ,OP8070
;1998/11/11;;
;1998/11/11;	LD	HL,SCCH
;1998/11/11;	INC	(HL)
;1998/11/11;;
;1998/11/11;	LD	HL,ENXPSL
;1998/11/11;	DEC	(HL)
;1998/11/11;	INC	HL
;1998/11/11;	DEC	(HL)
;1998/11/11;	INC	HL
;1998/11/11;	DEC	(HL)
;1998/11/11;OP8007
;1998/11/11;;	LD	A,(FRCNT)
;1998/11/11;;	AND	$0F
;1998/11/11;;	JR	NZ,OP8070
;1998/11/11;;;
;1998/11/11;;	CALL	RNDSUB
;1998/11/11;;	AND	$07
;1998/11/11;;	JR	NZ,OP8070
;1998/11/11;;
;1998/11/11;	LD	C,$00
;1998/11/11;	LD	A,(SCCH)
;1998/11/11;	CP	$10
;1998/11/11;	JR	Z,OP80077
;1998/11/11;	INC	C
;1998/11/11;	CP	$30
;1998/11/11;	JR	Z,OP80077
;1998/11/11;	INC	C
;1998/11/11;	CP	$38
;1998/11/11;	JR	Z,OP80077
;1998/11/11;	INC	C
;1998/11/11;	CP	$58
;1998/11/11;	JR	Z,OP80077
;1998/11/11;	INC	C
;1998/11/11;	CP	$5A
;1998/11/11;	JR	Z,OP80077
;1998/11/11;	INC	C
;1998/11/11;	CP	$69
;1998/11/11;	JR	NZ,OP8070
;1998/11/11;;
;1998/11/11;OP80077
;1998/11/11;	LD	E,$01
;1998/11/11;	LD	D,$00
;1998/11/11;OP8008
;1998/11/11;	LD	HL,ENMODE
;1998/11/11;	ADD	HL,DE
;1998/11/11;	LD	A,(HL)
;1998/11/11;	AND	A
;1998/11/11;	JR	Z,OP8010
;1998/11/11;	DEC	E
;1998/11/11;	LD	A,E
;1998/11/11;	CP	$FF
;1998/11/11;	JR	NZ,OP8008
;1998/11/11;	RET
;1998/11/11;;--------------------------
;1998/11/11;INSXPS
;1998/11/11;	DB	$28,$78,$60,$38
;1998/11/11;	DB	$68,$58
;1998/11/11;INAZMDD
;1998/11/11;	DB	4,2,1,4
;1998/11/11;	DB	3,1
;1998/11/11;;- - - - - - - - - - - - - - - - - -
;1998/11/11;OP8010
;1998/11/11;	LD	B,$00
;1998/11/11;	LD	HL,INAZMDD
;1998/11/11;	ADD	HL,BC
;1998/11/11;	LD	A,(HL)
;1998/11/11;	LD	HL,ENMODE
;1998/11/11;	ADD	HL,DE
;1998/11/11;	LD	(HL),A
;1998/11/11;;
;1998/11/11;	LD	HL,INSXPS
;1998/11/11;	ADD	HL,BC
;1998/11/11;	LD	A,(HL)
;1998/11/11;	LD	HL,ENXPSL
;1998/11/11;	ADD	HL,DE
;1998/11/11;	LD	(HL),A	
;1998/11/11;;
;1998/11/11;	LD	HL,ENYPSL
;1998/11/11;	ADD	HL,DE
;1998/11/11;	LD	(HL),$30
;1998/11/11;;
;1998/11/11;	LD	HL,ENTIM0
;1998/11/11;	ADD	HL,DE
;1998/11/11;	LD	(HL),$20
;1998/11/11;;
;1998/11/11;INFLST
;1998/11/11;	LD	A,$1C
;1998/11/11;	LD	(OPWRK0),A
;1998/11/11;	CALL	BBSDST	;(S)
;1998/11/11;OP8070
;1998/11/11;	RET
;1998/11/11;;======================================
;1998/11/11;OP90000		; リンク ピンチ
;1998/11/11;	CALL	RAINCS
;1998/11/11;;
;1998/11/11;;;	LD	A,(KEYA2)
;1998/11/11;;;	AND	%00100000
;1998/11/11;;;	JR	Z,OP9010
;1998/11/11;	LD	A,(OPWRK1)
;1998/11/11;	INC	A
;1998/11/11;	LD	(OPWRK1),A
;1998/11/11;	CP	$80
;1998/11/11;	JR	NZ,OP9008
;1998/11/11;;
;1998/11/11;	PUSH	AF
;1998/11/11;;;	CALL	SOUNDCLR	;(S)
;1998/11/11;	CALL	LINKKAO	; Link kao chenge !
;1998/11/11;	POP	AF
;1998/11/11;;
;1998/11/11;OP9008
;1998/11/11;	CP	$90
;1998/11/11;	JR	NZ,OP900A
;1998/11/11;;
;1998/11/11;	CALL	INFLST
;1998/11/11;OP900A
;1998/11/11;	CP	$A0
;1998/11/11;	JR	NZ,OP9010
;1998/11/11;;
;1998/11/11;	LD	A,OP8
;1998/11/11;	LD	(ITMODE),A
;1998/11/11;;
;1998/11/11;	LD	A,OPBGS
;1998/11/11;	LD	(VRFLG),A
;1998/11/11;;
;1998/11/11;	LD	A,%00000011
;1998/11/11;	LD	(IE),A
;1998/11/11;;
;1998/11/11;	XOR	A
;1998/11/11;	LD	(ENMODE+0),A	; 古い稲妻消す！
;1998/11/11;	LD	(ENMODE+1),A
;1998/11/11;;
;1998/11/11;	LD	A,$01
;1998/11/11;	LD	(OPWRK2),A	; 稲妻船に落ちるタイム
;1998/11/11;	RET
;1998/11/11;OP9010
;1998/11/11;	LD	A,(FRCNT)
;1998/11/11;	AND	$7F
;1998/11/11;	JR	NZ,OP9020
;1998/11/11;;
;1998/11/11;	CALL	RNDSUB
;1998/11/11;	AND	$00
;1998/11/11;	JR	NZ,OP9020
;1998/11/11;;
;1998/11/11;	CALL	INFLST
;1998/11/11;OP9020
;1998/11/11;	RET
;1998/11/11;;======================================
;1998/11/11;OPAF000
;1998/11/11;	LD	A,OPBG3
;1998/11/11;	LD	(VRFLG),A
;1998/11/11;;
;1998/11/11;	CALL	ITMINC
;1998/11/11;	RET
;1998/11/11;;----------------------------
;1998/11/11;OPABGC
;1998/11/11;	DB	%00000000
;1998/11/11;	DB	%00000000
;1998/11/11;	DB	%00000000
;1998/11/11;	DB	%00000000
;1998/11/11;	DB	%01000000
;1998/11/11;	DB	%01000000
;1998/11/11;	DB	%01000000
;1998/11/11;	DB	%10000000
;1998/11/11;	DB	%10000101
;1998/11/11;	DB	%10000101
;1998/11/11;	DB	%10000101
;1998/11/11;	DB	%11000101
;1998/11/11;	DB	%11001001
;1998/11/11;	DB	%11001001
;1998/11/11;	DB	%11001001
;1998/11/11;	DB	%11001001
;1998/11/11;;
;1998/11/11;;	DB	%11001001
;1998/11/11;;	DB	%11000100
;1998/11/11;;	DB	%10000000
;1998/11/11;;	DB	%01000000
;1998/11/11;OPAOBC
;1998/11/11;	DB	%00000000
;1998/11/11;	DB	%00000000
;1998/11/11;	DB	%00000000
;1998/11/11;	DB	%00000000
;1998/11/11;	DB	%00000100
;1998/11/11;	DB	%00000100
;1998/11/11;	DB	%00000100
;1998/11/11;	DB	%00000100
;1998/11/11;	DB	%00011000
;1998/11/11;	DB	%00011000
;1998/11/11;	DB	%00011000
;1998/11/11;	DB	%00011000
;1998/11/11;	DB	%00011100
;1998/11/11;	DB	%00011100
;1998/11/11;	DB	%00011100
;1998/11/11;	DB	%00011100
;1998/11/11;;
;1998/11/11;;	DB	%00011100
;1998/11/11;;	DB	%00001000
;1998/11/11;;	DB	%00000100
;1998/11/11;;	DB	%00000000
;1998/11/11;OPAO1C
;1998/11/11;	DB	%00000000
;1998/11/11;	DB	%00000000
;1998/11/11;	DB	%00000000
;1998/11/11;	DB	%00000000
;1998/11/11;	DB	%01000000
;1998/11/11;	DB	%01000000
;1998/11/11;	DB	%01000000
;1998/11/11;	DB	%01000000
;1998/11/11;	DB	%10010000
;1998/11/11;	DB	%10010000
;1998/11/11;	DB	%10010000
;1998/11/11;	DB	%10010000
;1998/11/11;	DB	%11100000
;1998/11/11;	DB	%11100000
;1998/11/11;	DB	%11100000
;1998/11/11;	DB	%11100000
;1998/11/11;;
;1998/11/11;;	DB	%11100000
;1998/11/11;;	DB	%10010000
;1998/11/11;;	DB	%01000000
;1998/11/11;;	DB	%00000000
;1998/11/11;;- - - - - - - - - - - - - - - - - -
;1998/11/11;OPA0000		; 横すくろーる 1
;1998/11/11;	CALL	NAMISDST
;1998/11/11;;
;1998/11/11;	LD	A,(OPWRK1)
;1998/11/11;	CP	$A0
;1998/11/11;	JR	NZ,OPA001
;1998/11/11;;
;1998/11/11;	PUSH	AF
;1998/11/11;;
;1998/11/11;;;	LD	A,$15
;1998/11/11;;;	CALL	BGMON	;(S)
;1998/11/11;	LD	A,$02
;1998/11/11;	LD	(LYC),A
;1998/11/11;	POP	AF
;1998/11/11;OPA001
;1998/11/11;	DEC	A
;1998/11/11;	LD	(OPWRK1),A
;1998/11/11;	JR	NZ,OPA010
;1998/11/11;;
;1998/11/11;	LD	A,OPB
;1998/11/11;	LD	(ITMODE),A
;1998/11/11;;
;1998/11/11;	LD	A,$06	; Girl set !
;1998/11/11;	LD	(ENMODE+0),A
;1998/11/11;;
;1998/11/11;	LD	A,$B0
;1998/11/11;	LD	(ENXPSL+0),A
;1998/11/11;	LD	A,$68
;1998/11/11;	LD	(ENYPSL+0),A
;1998/11/11;	LD	A,$01
;1998/11/11;	LD	(ENCONT+0),A
;1998/11/11;	RET
;1998/11/11;OPA010
;1998/11/11;	CP	$34
;1998/11/11;	JR	NC,OPA020
;1998/11/11;;;	CP	$20
;1998/11/11;;;	JR	NC,OPA020
;1998/11/11;;
;1998/11/11;;;	RRA
;1998/11/11;;;	RRA
;1998/11/11;;;	RRA
;1998/11/11;;;	AND	$03
;1998/11/11;	AND	$03
;1998/11/11;	JR	NZ,OPA018
;1998/11/11;;
;1998/11/11;	LD	A,(OPFDCT)
;1998/11/11;	CP	$0C
;1998/11/11;	JR	Z,OPA018
;1998/11/11;;
;1998/11/11;	INC	A
;1998/11/11;	LD	(OPFDCT),A
;1998/11/11;OPA018
;1998/11/11;	LD	A,(FRCNT)
;1998/11/11;	AND	$03
;1998/11/11;	LD	E,A
;1998/11/11;	LD	A,(OPFDCT)
;1998/11/11;	ADD	A,E
;1998/11/11;	LD	E,A
;1998/11/11;	LD	D,$00
;1998/11/11;	LD	HL,OPABGC
;1998/11/11;	ADD	HL,DE
;1998/11/11;	LD	A,(HL)
;1998/11/11;	LD	(BGPFG),A
;1998/11/11;	LD	HL,OPAOBC
;1998/11/11;	ADD	HL,DE
;1998/11/11;	LD	A,(HL)
;1998/11/11;	LD	(OBP0FG),A
;1998/11/11;	LD	HL,OPAO1C
;1998/11/11;	ADD	HL,DE
;1998/11/11;	LD	A,(HL)
;1998/11/11;	LD	(OBP1FG),A
;1998/11/11;;
;1998/11/11;OPA020
;1998/11/11;	RET
;1998/11/11;;- - - - - - - - - - - - - - - - - -
;1998/11/11;;=======================================
;1998/11/11;OPB0000		; 横すくろーる
;1998/11/11;	CALL	OPOBJ	; 
;1998/11/11;;
;1998/11/11;	RET
;1998/11/11;;=======================================
;1998/11/11;NAMISDST
;1998/11/11;	LD	A,(ENSTAT+1)
;1998/11/11;	CP	$02
;1998/11/11;	JR	NC,NMSS20	; Sroll up ?
;1998/11/11;;				; Yes !
;1998/11/11;	LD	A,(NAMIOTO)
;1998/11/11;	INC	A
;1998/11/11;	CP	$A0
;1998/11/11;	JR	NZ,NMSS10
;1998/11/11;;
;1998/11/11;	LD	A,$0F
;1998/11/11;	LD	(SOUND3),A	;(S)
;1998/11/11;;
;1998/11/11;	XOR	A
;1998/11/11;NMSS10
;1998/11/11;	LD	(NAMIOTO),A
;1998/11/11;NMSS20
;1998/11/11;	RET
;1998/11/11;;=======================================
;1998/11/11;ZELDADT6
;1998/11/11; DB  $9A,$16,$0F
;1998/11/11; DB  $80,$81,$82,$83,$84,$85,$86,$87,$88,$89,$8A,$8B,$8C,$8D,$8E,$8F
;1998/11/11;ZELDADT4
;1998/11/11; DB  $9A,$36,$0F
;1998/11/11; DB  $90,$91,$92,$93,$94,$95,$96,$97,$98,$99,$9A,$9B,$9C,$9D,$9E,$9F
;1998/11/11;ZELDADT2
;1998/11/11; DB  $9A,$56,$0F
;1998/11/11; DB  $A0,$A1,$A2,$A3,$A4,$A5,$A6,$A7,$A8,$A9,$AA,$AB,$AC,$AD,$AE,$AF
;1998/11/11;ZELDADT1
;1998/11/11; DB  $9A,$76,$0F
;1998/11/11; DB  $B0,$B1,$B2,$B3,$B4,$B5,$B6,$B7,$B8,$B9,$BA,$BB,$BC,$BD,$BE,$BF
;1998/11/11;ZELDADT3
;1998/11/11; DB  $9A,$96,$0F
;1998/11/11; DB  $C0,$C1,$C2,$C3,$C4,$C5,$C6,$C7,$C8,$C9,$CA,$CB,$CC,$CD,$CE,$CF
;1998/11/11;ZELDADT5
;1998/11/11; DB  $9A,$B6,$0F
;1998/11/11; DB  $D0,$D1,$D2,$D3,$D4,$D5,$D6,$D7,$D8,$D9,$DA,$DB,$DC,$DD,$DE,$DF
;1998/11/11;ZELDADT7
;1998/11/11; DB  $9A,$D6,$0F
;1998/11/11; DB  $E0,$E1,$E2,$E3,$E4,$E5,$E6,$E7,$E8,$E9,$EA,$EB,$EC,$ED,$EE,$EF
;1998/11/11;;------------------------------------------------
;1998/11/11;ZELDAAD
;1998/11/11;	DW	ZELDADT1
;1998/11/11;	DW	ZELDADT2
;1998/11/11;	DW	ZELDADT3
;1998/11/11;	DW	ZELDADT4
;1998/11/11;	DW	ZELDADT5
;1998/11/11;	DW	ZELDADT6
;1998/11/11;	DW	ZELDADT7
;1998/11/11;;---------------------------------------------------------------------
;1998/11/11;OPC0000
;1998/11/11;	LD	A,(OPWRK2)
;1998/11/11;	SLA	A
;1998/11/11;	LD	E,A
;1998/11/11;	LD	D,$00
;1998/11/11;	LD	HL,ZELDAAD
;1998/11/11;	ADD	HL,DE
;1998/11/11;	LD	A,(HLI)
;1998/11/11;	LD	D,(HL)
;1998/11/11;	LD	E,A
;1998/11/11;;
;1998/11/11;	LD	HL,VRAMD+1
;1998/11/11;	LD	C,$13
;1998/11/11;OPC010
;1998/11/11;	LD	A,(DE)
;1998/11/11;	INC	DE
;1998/11/11;	LD	(HLI),A
;1998/11/11;	DEC	C
;1998/11/11;	JR	NZ,OPC010
;1998/11/11;;
;1998/11/11;	LD	(HL),$00
;1998/11/11;;
;1998/11/11;	LD	A,(OPWRK2)
;1998/11/11;	INC	A
;1998/11/11;	LD	(OPWRK2),A
;1998/11/11;	CP	$07
;1998/11/11;	JR	NZ,OPC020
;1998/11/11;;
;1998/11/11;	CALL	ITMINC
;1998/11/11;OPC020
;1998/11/11;	RET
;1998/11/11;;==============================================
;1998/11/11;;ZLFLDT
;1998/11/11;;	DB	$09,$49,$89,$C9,$C9,$89,$49,$09
;1998/11/11;OPD0000
;1998/11/11;	LD	A,(WAVCNT3)
;1998/11/11;	CP	$10
;1998/11/11;	JR	C,OPD090
;1998/11/11;;
;1998/11/11;	LD	A,$19
;1998/11/11;	LD	(SOUND3),A	;(S)
;1998/11/11;;
;1998/11/11;	CALL	ITMINC
;1998/11/11;OPD090
;1998/11/11;;
;1998/11/11;;	LD	A,(FRCNT)
;1998/11/11;;	RRA
;1998/11/11;;	RRA
;1998/11/11;;	RRA
;1998/11/11;;	RRA
;1998/11/11;;	AND	$07
;1998/11/11;;	LD	E,A
;1998/11/11;;	LD	D,$0
;1998/11/11;;	LD	HL,ZLFLDT
;1998/11/11;;	ADD	HL,DE
;1998/11/11;;	LD	A,(HL)
;1998/11/11;;	LD	(BGPFG),A
;1998/11/11;	RET
;1998/11/11;;
;1998/11/11;;---------------------------------------
;1998/11/11;NINDT
;1998/11/11;	DB	$9B,$B9,$09
;1998/11/11;	DB	$65,$66,$67,$68,$69,$6A,$6B,$6C,$6D,$6E
;1998/11/11;	DB	$00
;1998/11/11;;- - - - - - - - - - - - - - - - - - - -
;1998/11/11;OPE0000
;1998/11/11;	LD	DE,NINDT
;1998/11/11;	LD	HL,VRAMD+1
;1998/11/11;	LD	C,14
;1998/11/11;OPE010
;1998/11/11;	LD	A,(DE)
;1998/11/11;	INC	DE
;1998/11/11;	LD	(HLI),A
;1998/11/11;	DEC	C
;1998/11/11;	JR	NZ,OPE010
;1998/11/11;;
;1998/11/11;	CALL	ITMINC
;1998/11/11;;
;1998/11/11;LOGOINT
;1998/11/11;	LD	A,$A0
;1998/11/11;	LD	(OPWRK1),A
;1998/11/11;;
;1998/11/11;	XOR	A
;1998/11/11;	LD	(OPWRK2),A
;1998/11/11;;
;1998/11/11;	LD	A,$FF
;1998/11/11;	LD	(OPWRK3),A
;1998/11/11;	RET
;1998/11/11;;
;1998/11/11;;=================================================
;1998/11/11;OPZFLX
;1998/11/11;	DB	$18,$18,$38,$40,$58,$60,$80,$88
;1998/11/11;OPZFLY
;1998/11/11;	DB	$20,$48,$44,$28,$44,$28,$28,$40
;1998/11/11;;- - - - - - - - - - - - - - - - - -
;1998/11/11;OPF0000
;1998/11/11;	CALL	OPOBJ
;1998/11/11;;
;1998/11/11;	LD	A,(FRCNT)
;1998/11/11;	AND	$3F
;1998/11/11;	JR	NZ,OPF008
;1998/11/11;;
;1998/11/11;	LD	E,$01
;1998/11/11;	LD	D,$0
;1998/11/11;OPF001
;1998/11/11;	LD	HL,ENMODE
;1998/11/11;	ADD	HL,DE
;1998/11/11;	LD	A,(HL)
;1998/11/11;	AND	A
;1998/11/11;	JR	Z,OPF0002
;1998/11/11;	DEC	E
;1998/11/11;	LD	A,E
;1998/11/11;	CP	$FF
;1998/11/11;	JR	NZ,OPF001
;1998/11/11;	JR	OPF008
;1998/11/11;;
;1998/11/11;OPF0002
;1998/11/11;	LD	(HL),$08
;1998/11/11;;
;1998/11/11;	LD	HL,ENTIM0
;1998/11/11;	ADD	HL,DE
;1998/11/11;	LD	(HL),$3F
;1998/11/11;;
;1998/11/11;;;	CALL	RNDSUB
;1998/11/11;	LD	A,(OPWRK3)
;1998/11/11;	INC	A
;1998/11/11;	LD	(OPWRK3),A
;1998/11/11;	AND	$07
;1998/11/11;	LD	C,A
;1998/11/11;	LD	B,$00
;1998/11/11;	LD	HL,OPZFLX
;1998/11/11;	ADD	HL,BC
;1998/11/11;	LD	A,(HL)
;1998/11/11;	LD	HL,ENXPSL
;1998/11/11;	ADD	HL,DE
;1998/11/11;	LD	(HL),A
;1998/11/11;;
;1998/11/11;	LD	HL,OPZFLY
;1998/11/11;	ADD	HL,BC
;1998/11/11;	LD	A,(HL)
;1998/11/11;	LD	HL,ENYPSL
;1998/11/11;	ADD	HL,DE
;1998/11/11;	LD	(HL),A
;1998/11/11;;
;1998/11/11;OPF008
;1998/11/11;;;	LD	A,(FRCNT)
;1998/11/11;	LD	A,(OPWRK2)
;1998/11/11;	INC	A
;1998/11/11;	LD	(OPWRK2),A
;1998/11/11;	AND	$0F
;1998/11/11;	JR	NZ,OPF010
;1998/11/11;;
;1998/11/11;;(CGB)	LD	A,(OPWRK1),A
;1998/11/11;		LD	A,(OPWRK1)
;1998/11/11;	DEC	A
;1998/11/11;	LD	(OPWRK1),A
;1998/11/11;;
;1998/11/11;;;	JR	OPF010
;1998/11/11;	JR	NZ,OPF010
;1998/11/11;;
;1998/11/11;;;	JP	GMRESET
;1998/11/11;	CALL	ITMINC
;1998/11/11;;
;1998/11/11;	XOR	A
;1998/11/11;	LD	(SBHR),A
;1998/11/11;	LD	(SBCNT),A
;1998/11/11;;
;1998/11/11;	CALL	SOUNDOUT	;(S)
;1998/11/11;OPF010
;1998/11/11;	RET
;1998/11/11;;=================================================
;1998/11/11;OPF8000
;1998/11/11;	CALL	FDIN
;1998/11/11;;
;1998/11/11;	LD	A,(SBHR)
;1998/11/11;	CP	$04
;1998/11/11;	JR	NZ,OPF8010
;1998/11/11;;
;1998/11/11;	JP	GMRESET
;1998/11/11;OPF8010
;1998/11/11;	RET
;1998/11/11;;======================================
;1998/11/11;OPF9000
;1998/11/11;;;	LD	A,LOGOS
;1998/11/11;;;	LD	(VRFLG),A
;1998/11/11;	LD	A,OPBS2
;1998/11/11;	LD	(BLNKFG),A
;1998/11/11;;
;1998/11/11;	LD	A,OPLG
;1998/11/11;	LD	(ITMODE),A
;1998/11/11;;
;1998/11/11;	LD	A,$C9
;1998/11/11;	LD	(BGPFG),A
;1998/11/11;	LD	A,$1C
;1998/11/11;	LD	(OBP0FG),A
;1998/11/11;;
;1998/11/11;	XOR	A
;1998/11/11;	LD	(SCCH),A
;1998/11/11;	LD	(SCCV),A
;1998/11/11;	RET
;1998/11/11;;======================================
;1998/11/11;;======================================
;1998/11/11;RAINCS
;1998/11/11;	CALL	RNDSUB
;1998/11/11;	AND	$18
;1998/11/11;	ADD	A,$10
;1998/11/11;;;	LD	A,$18
;1998/11/11;	LD	(WORK1),A	; Initial Y
;1998/11/11;	CALL	RNDSUB
;1998/11/11;	AND	$18
;1998/11/11;	ADD	A,$10
;1998/11/11;	LD	(WORK0),A	;	"  X
;1998/11/11;;
;1998/11/11;	LD	HL,OAM+$4C
;1998/11/11;;
;1998/11/11;	LD	C,16		
;1998/11/11;	LD	A,(ITMODE)
;1998/11/11;	CP	OP9
;1998/11/11;	JR	NZ,RAC010
;1998/11/11;;
;1998/11/11;	LD	C,21
;1998/11/11;;
;1998/11/11;RAC010
;1998/11/11;	LD	A,(WORK1)
;1998/11/11;	LD	(HLI),A
;1998/11/11;	LD	A,(WORK0)
;1998/11/11;	LD	(HLI),A
;1998/11/11;;
;1998/11/11;	CALL	RNDSUB
;1998/11/11;	AND	$01
;1998/11/11;	LD	A,$28
;1998/11/11;	JR	Z,RAC011
;1998/11/11;;
;1998/11/11;	CALL	RNDSUB
;1998/11/11;	AND	%00000110
;1998/11/11;	ADD	A,$70
;1998/11/11;RAC011
;1998/11/11;	LD	(HLI),A
;1998/11/11;;
;1998/11/11;	LD	A,$00
;1998/11/11;	LD	(HLI),A
;1998/11/11;;
;1998/11/11;	LD	A,(WORK0)
;1998/11/11;	ADD	A,$1C
;1998/11/11;	LD	(WORK0),A
;1998/11/11;	CP	$A0
;1998/11/11;	JR	C,RAC020
;1998/11/11;;
;1998/11/11;	SUB	$98
;1998/11/11;	LD	(WORK0),A
;1998/11/11;;
;1998/11/11;	LD	A,(WORK1)
;1998/11/11;	ADD	A,$25
;1998/11/11;	LD	(WORK1),A
;1998/11/11;RAC020	
;1998/11/11;;
;1998/11/11;	DEC	C
;1998/11/11;	JR	NZ,RAC010
;1998/11/11;;
;1998/11/11;	RET
;1998/11/11;;======================================
;1998/11/11;LKKAOD
;1998/11/11;	DB	$99,$2B,$83,$1E,$20,$22,$24
;1998/11/11;	DB	$99,$2C,$83,$1F,$21,$23,$25
;1998/11/11;	DB	$00
;1998/11/11;;
;1998/11/11;LINKKAO
;1998/11/11;	LD	DE,VRAMD+1
;1998/11/11;	LD	HL,LKKAOD
;1998/11/11;;
;1998/11/11;	LD	C,$0F
;1998/11/11;LKK010
;1998/11/11;	LD	A,(HLI)
;1998/11/11;	LD	(DE),A
;1998/11/11;	INC	DE
;1998/11/11;	DEC	C
;1998/11/11;	JR	NZ,LKK010
;1998/11/11;	RET
;1998/11/11;;======================================
;1998/11/11;;- - - - - - - - - - - - -
;1998/11/11;OPOBJ ;INAZUMA
;1998/11/11;	XOR	A
;1998/11/11;	LD	(ENOMID),A
;1998/11/11;;
;1998/11/11;	LD	C,$02
;1998/11/11;	LD	B,$00
;1998/11/11;INZ010
;1998/11/11;	LD	A,C
;1998/11/11;	LD	(INDEX),A
;1998/11/11;;
;1998/11/11;	LD	HL,ENMODE
;1998/11/11;	ADD	HL,BC
;1998/11/11;	LD	A,(HL)
;1998/11/11;	AND	A
;1998/11/11;	JR	Z,INZ090
;1998/11/11;;
;1998/11/11;	LD	HL,ENXPSL
;1998/11/11;	ADD	HL,BC
;1998/11/11;	LD	A,(HL)
;1998/11/11;	LD	(ENSVXL),A
;1998/11/11;	LD	HL,ENYPSL
;1998/11/11;	ADD	HL,BC
;1998/11/11;	LD	A,(HL)
;1998/11/11;	LD	(ENDSYP),A
;1998/11/11;;
;1998/11/11;	LD	HL,ENCHPT
;1998/11/11;	ADD	HL,BC
;1998/11/11;	LD	A,(HL)
;1998/11/11;	LD	(ENCHPT2),A
;1998/11/11;;
;1998/11/11;	LD	HL,ENSTAT
;1998/11/11;	ADD	HL,BC
;1998/11/11;	LD	A,(HL)
;1998/11/11;	LD	(ENSTAT2),A
;1998/11/11;;
;1998/11/11;	CALL	INZMAIN
;1998/11/11;INZ090
;1998/11/11;	DEC	C
;1998/11/11;	LD	A,C
;1998/11/11;	CP	$FF
;1998/11/11;	JR	NZ,INZ010
;1998/11/11;	RET
;1998/11/11;;-----------------------------------
;1998/11/11;INZMAIN
;1998/11/11;	LD	HL,ENMODE
;1998/11/11;	ADD	HL,BC
;1998/11/11;	LD	A,(HL)
;1998/11/11;	CP	$05
;1998/11/11;	JR	Z,FUNEMV
;1998/11/11;	CP	$06
;1998/11/11;	JP	Z,GIRLMV
;1998/11/11;	CP	$07
;1998/11/11;	JP	Z,LINKMV
;1998/11/11;	CP	$08
;1998/11/11;	JP	Z,ZFLASH
;1998/11/11;;
;1998/11/11;	CALL	LDTIM0
;1998/11/11;	JR	NZ,INZM10
;1998/11/11;;
;1998/11/11;	LD	HL,ENMODE
;1998/11/11;	ADD	HL,BC
;1998/11/11;	LD	(HL),B	
;1998/11/11;	RET
;1998/11/11;INZM10
;1998/11/11;	DEC	(HL)
;1998/11/11;;
;1998/11/11;	CALL	INZCS
;1998/11/11;	RET
;1998/11/11;;----------------------------------
;1998/11/11;FUNECD
;1998/11/11;	DB	$00,$00,$1C,$00
;1998/11/11;	DB	$00,$08,$1E,$00
;1998/11/11;	DB	$10,$F8,$20,$00
;1998/11/11;	DB	$10,$00,$22,$00
;1998/11/11;	DB	$10,$08,$24,$00
;1998/11/11;	DB	$10,$10,$26,$00
;1998/11/11;BIGINZ	; 
;1998/11/11;	DB	$F8,$04,$32,$00
;1998/11/11;	DB	$E8,$04,$32,$00
;1998/11/11;	DB	$D8,$04,$32,$00
;1998/11/11;	DB	$C8,$04,$32,$00
;1998/11/11;FNSCYD
;1998/11/11;	DB	2,1,0,0,0,1,2,2
;1998/11/11;;
;1998/11/11;FUNEMV
;1998/11/11;	LD	A,(OPWRK2)
;1998/11/11;	AND	A
;1998/11/11;	LD	A,$00
;1998/11/11;	JR	NZ,FNM002
;1998/11/11;;
;1998/11/11;	LD	A,(FRCNT)
;1998/11/11;	ADD	A,$D0
;1998/11/11;	RRA
;1998/11/11;	RRA
;1998/11/11;	RRA
;1998/11/11;	RRA
;1998/11/11;	AND	$07
;1998/11/11;FNM002
;1998/11/11;	LD	E,A
;1998/11/11;	LD	D,$0
;1998/11/11;	LD	HL,FNSCYD
;1998/11/11;	ADD	HL,DE
;1998/11/11;	LD	A,(HL)
;1998/11/11;;;	RRA
;1998/11/11;;;	AND	$0F
;1998/11/11;	LD	HL,ENDSYP
;1998/11/11;	ADD	A,(HL)
;1998/11/11;	LD	(HL),A
;1998/11/11;;
;1998/11/11;	LD	HL,FUNECD
;1998/11/11;	LD	DE,OAM+$00
;1998/11/11;;
;1998/11/11;	PUSH	BC
;1998/11/11;;
;1998/11/11;	LD	C,$06
;1998/11/11;FNC010
;1998/11/11;	LD	A,(ENDSYP)
;1998/11/11;	ADD	A,(HL)
;1998/11/11;	INC	HL
;1998/11/11;	LD	(DE),A
;1998/11/11;	INC	DE
;1998/11/11;;
;1998/11/11;	LD	A,(ENSVXL)
;1998/11/11;	ADD	A,(HL)
;1998/11/11;	INC	HL
;1998/11/11;	LD	(DE),A
;1998/11/11;	INC	DE
;1998/11/11;;
;1998/11/11;	LD	A,(HLI)
;1998/11/11;	LD	(DE),A
;1998/11/11;	INC	DE
;1998/11/11;;
;1998/11/11;	LD	A,(HLI)
;1998/11/11;	LD	(DE),A
;1998/11/11;	INC	DE
;1998/11/11;;
;1998/11/11;	DEC	C
;1998/11/11;	JR	NZ,FNC010
;1998/11/11;;--------------------
;1998/11/11;	LD	A,(OPWRK2)
;1998/11/11;	CP	$10
;1998/11/11;	JR	C,FNC020	; 稲妻直撃？
;1998/11/11;;				; YES !
;1998/11/11;	LD	HL,BIGINZ
;1998/11/11;	LD	DE,OAM+$18
;1998/11/11;;
;1998/11/11;	LD	C,$04
;1998/11/11;FNC060
;1998/11/11;	LD	A,(ENDSYP)
;1998/11/11;	ADD	A,(HL)
;1998/11/11;	INC	HL
;1998/11/11;	LD	(DE),A
;1998/11/11;	INC	DE
;1998/11/11;;
;1998/11/11;	LD	A,(ENSVXL)
;1998/11/11;	ADD	A,(HL)
;1998/11/11;	INC	HL
;1998/11/11;	LD	(DE),A
;1998/11/11;	INC	DE
;1998/11/11;;
;1998/11/11;	LD	A,(HLI)
;1998/11/11;	LD	(DE),A
;1998/11/11;	INC	DE
;1998/11/11;;
;1998/11/11;	LD	A,(HLI)
;1998/11/11;	LD	(DE),A
;1998/11/11;	INC	DE
;1998/11/11;;
;1998/11/11;	DEC	C
;1998/11/11;	JR	NZ,FNC060
;1998/11/11;FNC020
;1998/11/11;	POP	BC
;1998/11/11;	RET
;1998/11/11;;----------------------------------
;1998/11/11;INZCDT
;1998/11/11;;0
;1998/11/11;	DB	$00,$00,$34,$00
;1998/11/11;	DB	$00,$08,$36,$00
;1998/11/11;	DB	$10,$00,$2C,$00
;1998/11/11;	DB	$20,$F8,$2C,$00
;1998/11/11;	DB	$28,$00,$2E,$20
;1998/11/11;	DB	$30,$F0,$2E,$00
;1998/11/11;;1
;1998/11/11;	DB	$08,$00,$36,$20
;1998/11/11;	DB	$08,$08,$34,$20
;1998/11/11;	DB	$18,$00,$30,$00
;1998/11/11;	DB	$18,$08,$2C,$20
;1998/11/11;	DB	$28,$10,$2E,$20
;1998/11/11;	DB	$28,$10,$2E,$20
;1998/11/11;;2
;1998/11/11;	DB	$00,$08,$34,$20
;1998/11/11;	DB	$00,$00,$36,$20
;1998/11/11;	DB	$10,$08,$2C,$20
;1998/11/11;	DB	$20,$10,$2C,$20
;1998/11/11;	DB	$28,$08,$2E,$00
;1998/11/11;	DB	$30,$18,$2E,$20
;1998/11/11;;3
;1998/11/11;	DB	$08,$08,$36,$00
;1998/11/11;	DB	$08,$00,$34,$00
;1998/11/11;	DB	$18,$08,$30,$20
;1998/11/11;	DB	$18,$00,$2C,$00
;1998/11/11;	DB	$28,$F8,$2E,$00
;1998/11/11;	DB	$28,$F8,$2E,$00
;1998/11/11;;- - - - - - - - - - - - - - - - -
;1998/11/11;INZCS
;1998/11/11;	LD	HL,ENMODE
;1998/11/11;	ADD	HL,BC
;1998/11/11;	LD	A,(HL)
;1998/11/11;	DEC	A
;1998/11/11;	SLA	A
;1998/11/11;	SLA	A
;1998/11/11;;
;1998/11/11;	SLA	A
;1998/11/11;	LD	E,A	
;1998/11/11;	SLA	A
;1998/11/11;	ADD	A,E
;1998/11/11;	LD	E,A
;1998/11/11;	LD	D,B
;1998/11/11;	LD	HL,INZCDT
;1998/11/11;	ADD	HL,DE
;1998/11/11;;
;1998/11/11;	LD	C,$06
;1998/11/11;;
;1998/11/11;	CALL	ENOMST
;1998/11/11;;
;1998/11/11;	LD	A,(ENOMID)
;1998/11/11;	ADD	A,$4*6
;1998/11/11;	LD	(ENOMID),A
;1998/11/11;	RET
;1998/11/11;;======================================
;1998/11/11;GIRLCD
;1998/11/11;	DB	$00,$00,$02,$00
;1998/11/11;	DB	$04,$00,$06,$00
;1998/11/11;	DB	$08,$00,$0A,$00
;1998/11/11;	DB	$0C,$00,$0E,$00
;1998/11/11;; - - - - - - - - - - - - -
;1998/11/11;GIRLMV
;1998/11/11;	CALL	NAMISDST
;1998/11/11;;
;1998/11/11;	XOR	A
;1998/11/11;	LD	(ENMOD0),A
;1998/11/11;;
;1998/11/11;	LD 	DE,GIRLCD
;1998/11/11;	CALL	EN2CST
;1998/11/11;;
;1998/11/11;	LD	A,(ENOMID)
;1998/11/11;	ADD	A,$08
;1998/11/11;	LD	(ENOMID),A
;1998/11/11;;
;1998/11/11;	LD	A,(ENSTAT2)
;1998/11/11;	RST	0
;1998/11/11;	DW	GIRLWRK
;1998/11/11;	DW	GIRLSTP
;1998/11/11;	DW	GIRLRUN
;1998/11/11;	DW	GIRLRUN2
;1998/11/11;	DW	GIRLHLP
;1998/11/11;;--------------------------------------
;1998/11/11;GIRLWRK
;1998/11/11;	CALL	OPSCRL2	; Part scroll sub !
;1998/11/11;;
;1998/11/11;	LD	A,(FRCNT)
;1998/11/11;	RRA
;1998/11/11;	RRA
;1998/11/11;	RRA
;1998/11/11;	AND	$01
;1998/11/11;	CALL	ENPTST
;1998/11/11;;
;1998/11/11;	LD	A,(ENSVXL)
;1998/11/11;	CP	$48
;1998/11/11;	JR	NC,GLW010
;1998/11/11;;
;1998/11/11;	CALL	LDTIM0
;1998/11/11;	LD	(HL),$40
;1998/11/11;;
;1998/11/11;	CALL	STATINC
;1998/11/11;GLW010
;1998/11/11;;;	LD	A,(FRCNT)
;1998/11/11;;;	AND	$03
;1998/11/11;;;	JR	NZ,GLW030
;1998/11/11;	LD	HL,ENCONT
;1998/11/11;	ADD	HL,BC
;1998/11/11;	DEC	(HL)
;1998/11/11;	JR	NZ,GLW030
;1998/11/11;;
;1998/11/11;	LD	(HL),$04
;1998/11/11;;
;1998/11/11;	LD	HL,ENXPSL
;1998/11/11;	ADD	HL,BC
;1998/11/11;	DEC	(HL)	
;1998/11/11;GLW030
;1998/11/11;	RET
;1998/11/11;;--------------------------------------
;1998/11/11;GIRLSTP
;1998/11/11;	CALL	NMCHTR	; Nami CHR tr !
;1998/11/11;;
;1998/11/11;	LD	A,$01
;1998/11/11;	CALL	ENPTST
;1998/11/11;;
;1998/11/11;	CALL	LDTIM0
;1998/11/11;	JR	NZ,GLS010
;1998/11/11;;
;1998/11/11;	CALL	STATINC	
;1998/11/11;;
;1998/11/11;	LD	A,$07
;1998/11/11;	LD	(ENMODE+1),A	; Link set !!
;1998/11/11;;
;1998/11/11;	LD	A,$FE  ;+5
;1998/11/11;;;	LD	A,$F8  ;+5
;1998/11/11;	LD	(ENXPSL+1),A
;1998/11/11;	LD	A,$6E ;70  ;6C
;1998/11/11;	LD	(ENYPSL+1),A
;1998/11/11;;
;1998/11/11;	XOR	A
;1998/11/11;	LD	(ENSTAT+1),A
;1998/11/11;	LD	(ENTIM0+1),A
;1998/11/11;	LD	(FRCNT),A
;1998/11/11;;
;1998/11/11;	RET
;1998/11/11;GLS010
;1998/11/11;	DEC	(HL)
;1998/11/11;	RET
;1998/11/11;;
;1998/11/11;;
;1998/11/11;;
;1998/11/11;;--------------------------------------
;1998/11/11;GIRLRUN
;1998/11/11;	CALL	OPSCRL2
;1998/11/11;;
;1998/11/11;	LD	A,(ENXPSL+1)
;1998/11/11;	DEC	A
;1998/11/11;	LD	(ENXPSL+1),A	; Link 接近
;1998/11/11;;
;1998/11/11;	LD	A,(FRCNT)
;1998/11/11;	AND	$01
;1998/11/11;	JR	NZ,GLR010
;1998/11/11;;
;1998/11/11;	LD	HL,SCCH
;1998/11/11;	INC	(HL)
;1998/11/11;	LD	A,(HL)
;1998/11/11;PNT1
;1998/11/11;	CP	$30
;1998/11/11;;;	CP	$40
;1998/11/11;	JR	NZ,GLR008
;1998/11/11;;
;1998/11/11;	CALL	LDTIM0
;1998/11/11;	LD	(HL),$40
;1998/11/11;;
;1998/11/11;;
;1998/11/11;;
;1998/11/11;;;	CP	$56
;1998/11/11;;;	JR	NZ,GLR008
;1998/11/11;;
;1998/11/11;;	LD	A,$A0
;1998/11/11;;	LD	(HL),A
;1998/11/11;;	LD	(SCX),A
;1998/11/11;;;
;1998/11/11;;	LD	A,$01
;1998/11/11;;	LD	(IE),A
;1998/11/11;;;
;1998/11/11;;	CALL	LDTIM0
;1998/11/11;;	LD	(HL),$FF
;1998/11/11;;
;1998/11/11;	JP	STATINC
;1998/11/11;GLR008
;1998/11/11;	CP	$20
;1998/11/11;	JR	NZ,GLR0088
;1998/11/11;;
;1998/11/11;	CALL	YAMARV1
;1998/11/11;;
;1998/11/11;	XOR	A
;1998/11/11;GLR0088
;1998/11/11;	CP	$22
;1998/11/11;	JR	NZ,GLR0089
;1998/11/11;;
;1998/11/11;	CALL	YAMARV2
;1998/11/11;;
;1998/11/11;	XOR	A
;1998/11/11;GLR0089
;1998/11/11;;	CP	$4E
;1998/11/11;;	JR	NZ,GLR0088
;1998/11/11;;;
;1998/11/11;;	CALL	YAMARV3
;1998/11/11;;;
;1998/11/11;;	XOR	A
;1998/11/11;;GLR0088
;1998/11/11;;	CP	$20
;1998/11/11;;	JR	NZ,GLR009
;1998/11/11;;;
;1998/11/11;;	CALL	YAMARV1
;1998/11/11;;;
;1998/11/11;;	XOR	A
;1998/11/11;;GLR009
;1998/11/11;;	CP	$21
;1998/11/11;;	JR	NZ,GLR010
;1998/11/11;;;
;1998/11/11;;	CALL	YAMARV2
;1998/11/11;GLR010
;1998/11/11;	LD	A,(FRCNT)
;1998/11/11;	RRA
;1998/11/11;	RRA
;1998/11/11;	AND	$01
;1998/11/11;	CALL	ENPTST
;1998/11/11;;
;1998/11/11;;	LD	A,(FRCNT)
;1998/11/11;;	AND	$01
;1998/11/11;;	JR	NZ,GLR030
;1998/11/11;;;
;1998/11/11;;	LD	HL,ENXPSL
;1998/11/11;;	ADD	HL,BC
;1998/11/11;;	INC	(HL)	
;1998/11/11;GLR030
;1998/11/11;	RET
;1998/11/11;;--------------------------------------
;1998/11/11;GIRLRUN2
;1998/11/11;	CALL	LDTIM0
;1998/11/11;	JR	NZ,GLR2A0
;1998/11/11;;
;1998/11/11;;	LD	A,(FRCNT)
;1998/11/11;;	AND	$03
;1998/11/11;;	JR	NZ,GLR202
;1998/11/11;;
;1998/11/11;	CALL	OPSCRL22
;1998/11/11;;
;1998/11/11;GLR202
;1998/11/11;	LD	A,(FRCNT)
;1998/11/11;	AND	$01
;1998/11/11;	JR	NZ,GLR210
;1998/11/11;;
;1998/11/11;	LD	A,(ENXPSL+1)
;1998/11/11;	DEC	A
;1998/11/11;	LD	(ENXPSL+1),A	; Link 接近
;1998/11/11;;
;1998/11/11;	LD	A,(FRCNT)
;1998/11/11;	AND	$03
;1998/11/11;	JR	NZ,GLR210
;1998/11/11;;
;1998/11/11;PNT2
;1998/11/11;	LD	HL,SCCH
;1998/11/11;	INC	(HL)
;1998/11/11;	LD	A,(HL)
;1998/11/11;	CP	$40
;1998/11/11;	JR	Z,TTYY
;1998/11/11;	CP	$3A
;1998/11/11;	JR	NZ,TTYU
;1998/11/11;;
;1998/11/11;	CALL	LDTIM0
;1998/11/11;	LD	(HL),$30
;1998/11/11;	JR	TTYU
;1998/11/11;TTYY
;1998/11/11;	CALL	LDTIM0
;1998/11/11;	LD	(HL),$50
;1998/11/11;TTYU
;1998/11/11;	LD	A,(SCCH)
;1998/11/11;;
;1998/11/11;;
;1998/11/11;;
;1998/11/11;;
;1998/11/11;;;	CP	$56
;1998/11/11;;99	CP	$54
;1998/11/11;	CP	$56
;1998/11/11;	JR	NZ,GLR208
;1998/11/11;;
;1998/11/11;	LD	A,$A0
;1998/11/11;	LD	(HL),A
;1998/11/11;	LD	(SCX),A
;1998/11/11;;
;1998/11/11;	LD	A,$01
;1998/11/11;	LD	(IE),A
;1998/11/11;;
;1998/11/11;	CALL	LDTIM0
;1998/11/11;	LD	(HL),$E0
;1998/11/11;;;;	LD	(HL),$FF
;1998/11/11;;
;1998/11/11;	JP	STATINC
;1998/11/11;GLR208
;1998/11/11;	CP	$20
;1998/11/11;	JR	NZ,GLR2088
;1998/11/11;;
;1998/11/11;	CALL	YAMARV1
;1998/11/11;;
;1998/11/11;	XOR	A
;1998/11/11;GLR2088
;1998/11/11;	CP	$22
;1998/11/11;	JR	NZ,GLR2089
;1998/11/11;;
;1998/11/11;	CALL	YAMARV2
;1998/11/11;;
;1998/11/11;	XOR	A
;1998/11/11;GLR2089
;1998/11/11;GLR210
;1998/11/11;	LD	A,(FRCNT)
;1998/11/11;	RRA
;1998/11/11;	RRA
;1998/11/11;	RRA
;1998/11/11;	RRA
;1998/11/11;	AND	$01
;1998/11/11;	CALL	ENPTST
;1998/11/11;GLR290
;1998/11/11;	RET
;1998/11/11;GLR2A0
;1998/11/11;	DEC	(HL)
;1998/11/11;;
;1998/11/11;	CALL	NMCHTR	; Nami CHR tr !
;1998/11/11;;
;1998/11/11;	LD	A,$01
;1998/11/11;	JP	ENPTST
;1998/11/11;;--------------------------------------
;1998/11/11;GIRLHLP
;1998/11/11;	CALL	NMCHTR	; Nami CHR tr !
;1998/11/11;;
;1998/11/11;	LD	A,(FRCNT)
;1998/11/11;	AND	$01
;1998/11/11;	JR	NZ,GLH020
;1998/11/11;;
;1998/11/11;	LD	A,$02
;1998/11/11;;;	LD	A,$01
;1998/11/11;	CALL	ENPTST
;1998/11/11;;
;1998/11/11;	LD	A,$00
;1998/11/11;	LD	(ENCHPT+1),A	; Link pt
;1998/11/11;;
;1998/11/11;	CALL	LDTIM0
;1998/11/11;	JR	Z,GLH008
;1998/11/11;	DEC	(HL)
;1998/11/11;GLH008
;1998/11/11;	CP	$A0
;1998/11/11;	JR	NC,GLH020
;1998/11/11;	CP	$90
;1998/11/11;	JR	NC,GLH010
;1998/11/11;	CP	$50
;1998/11/11;	JR	NC,GLH020
;1998/11/11;	CP	$4A
;1998/11/11;	JR	NC,GLH010
;1998/11/11;	CP	$3C
;1998/11/11;	JR	NC,GLH020
;1998/11/11;	CP	$36
;1998/11/11;	JR	C,GLH020
;1998/11/11;GLH010
;1998/11/11;	LD	A,$03
;1998/11/11;;;	LD	A,$02
;1998/11/11;	CALL	ENPTST
;1998/11/11;;
;1998/11/11;	LD	A,$01
;1998/11/11;	LD	(ENCHPT+1),A
;1998/11/11;GLH020
;1998/11/11;	RET
;1998/11/11;;=========================================
;1998/11/11;ZFLCD
;1998/11/11;	DB	$38,$00,$38,$20
;1998/11/11;	DB	$3A,$00,$3A,$20
;1998/11/11;	DB	$3A,$00,$3A,$20
;1998/11/11;	DB	$3C,$00,$3E,$00
;1998/11/11;	DB	$3C,$00,$3E,$00
;1998/11/11;	DB	$3A,$00,$3A,$20
;1998/11/11;	DB	$3A,$00,$3A,$20
;1998/11/11;	DB	$38,$00,$38,$20
;1998/11/11;; - - - - - - - - - - - - - - - - -
;1998/11/11;ZFLASH
;1998/11/11;	CALL	LDTIM0
;1998/11/11;	DEC	(HL)
;1998/11/11;	JR	NZ,ZFL010
;1998/11/11;;
;1998/11/11;	LD	HL,ENMODE
;1998/11/11;	ADD	HL,BC
;1998/11/11;	LD	(HL),B
;1998/11/11;	RET
;1998/11/11;ZFL010
;1998/11/11;	LD	A,(HL)
;1998/11/11;	RRA
;1998/11/11;	RRA
;1998/11/11;	RRA
;1998/11/11;	AND	$07
;1998/11/11;	LD	(ENCHPT2),A
;1998/11/11;;
;1998/11/11;	XOR	A
;1998/11/11;	LD	(ENMOD0),A
;1998/11/11;;
;1998/11/11;	LD	DE,ZFLCD
;1998/11/11;	CALL	EN2CST
;1998/11/11;;
;1998/11/11;	LD	A,(ENOMID)
;1998/11/11;	ADD	A,$08
;1998/11/11;	LD	(ENOMID),A
;1998/11/11;	RET
;1998/11/11;;=========================================
;1998/11/11;YMRVD1
;1998/11/11;	DB	$98,$00,$43,$7D
;1998/11/11;	DB	$98,$20,$43,$7D
;1998/11/11;	DB	$98,$40,$43,$7D
;1998/11/11;	DB	$98,$60,$43,$7D
;1998/11/11;	DB	$00
;1998/11/11;YMRVD2
;1998/11/11;	DB	$98,$04,$03
;1998/11/11;   	DB	    $7D,$7D,$4C,$4D
;1998/11/11;	DB	$98,$24,$43,$7D
;1998/11/11;	DB	$98,$44,$43,$7D
;1998/11/11;	DB	$98,$64,$43,$7D
;1998/11/11;	DB	$00
;1998/11/11;;YMRVD1
;1998/11/11;;	DB	$98,$00,$48,$7D
;1998/11/11;;	DB	$98,$20,$48,$7D
;1998/11/11;;	DB	$98,$40,$48,$7D
;1998/11/11;;	DB	$00
;1998/11/11;;;
;1998/11/11;;YMRVD2
;1998/11/11;;	DB	$98,$60,$47,$7D
;1998/11/11;;	DB	$98,$80,$47,$7D
;1998/11/11;;	DB	$00
;1998/11/11;;YMRVD3
;1998/11/11;;	DB	$98,$0C,$45,$7D
;1998/11/11;;	DB	$98,$2C,$43,$7D
;1998/11/11;;	DB	$00
;1998/11/11;;;-- -- -- -- -- -- -- -- -- -- -- -- --	
;1998/11/11;;YAMARV3
;1998/11/11;;	LD	HL,YMRVD3
;1998/11/11;;	JR	YMR008
;1998/11/11;YAMARV2
;1998/11/11;	LD	HL,YMRVD2
;1998/11/11;	JR	YMR008
;1998/11/11;YAMARV1
;1998/11/11;	LD	HL,YMRVD1
;1998/11/11;YMR008
;1998/11/11;	LD	DE,VRAMD+1
;1998/11/11;	PUSH	BC
;1998/11/11;	LD	C,$18
;1998/11/11;YMR010
;1998/11/11;	LD	A,(HLI)
;1998/11/11;	LD	(DE),A
;1998/11/11;	INC	DE
;1998/11/11;	DEC	C
;1998/11/11;	JR	NZ,YMR010
;1998/11/11;;
;1998/11/11;	POP	BC
;1998/11/11;	RET
;1998/11/11;;======================================
;1998/11/11;LINKCD
;1998/11/11;	DB	$10,$00,$12,$00
;1998/11/11;	DB	$14,$00,$16,$00
;1998/11/11;;;0
;1998/11/11;;	DB	$00,$00,$0C,$00
;1998/11/11;;	DB	$00,$08,$10,$00
;1998/11/11;;	DB	$10,$00,$0E,$00
;1998/11/11;;	DB	$10,$08,$0E,$20
;1998/11/11;;;1
;1998/11/11;;	DB	$00,$00,$38,$00
;1998/11/11;;	DB	$00,$08,$3A,$00
;1998/11/11;;	DB	$10,$00,$14,$00
;1998/11/11;;	DB	$10,$08,$14,$20
;1998/11/11;;;2
;1998/11/11;;	DB	$00,$00,$12,$00
;1998/11/11;;	DB	$00,$08,$16,$00
;1998/11/11;;	DB	$10,$00,$14,$00
;1998/11/11;;	DB	$10,$08,$14,$20
;1998/11/11;;;3
;1998/11/11;;	DB	$00,$00,$18,$00
;1998/11/11;;	DB	$00,$08,$1A,$00
;1998/11/11;;	DB	$10,$00,$14,$00
;1998/11/11;;	DB	$10,$08,$14,$20
;1998/11/11;;;4
;1998/11/11;;	DB	$00,$00,$1A,$20
;1998/11/11;;	DB	$00,$08,$18,$20
;1998/11/11;;	DB	$10,$00,$14,$00
;1998/11/11;;	DB	$10,$08,$14,$20
;1998/11/11;;- - - - - - - - - - - - - - - - - -
;1998/11/11;LINKMV
;1998/11/11;	LD	A,(ENSVXL)
;1998/11/11;	CP	$F0
;1998/11/11;	JR	NC,LKM00C0
;1998/11/11;;
;1998/11/11;	XOR	A
;1998/11/11;	LD	(ENMOD0),A
;1998/11/11;;
;1998/11/11;	LD 	DE,LINKCD
;1998/11/11;	CALL	EN2CST
;1998/11/11;;
;1998/11/11;	LD	A,(ENOMID)
;1998/11/11;	ADD	A,$08
;1998/11/11;	LD	(ENOMID),A
;1998/11/11;;
;1998/11/11;LKM00C0
;1998/11/11;;
;1998/11/11;;	LD	A,(ENCHPT2)
;1998/11/11;;	SLA	A
;1998/11/11;;	SLA	A
;1998/11/11;;	SLA	A
;1998/11/11;;	SLA	A
;1998/11/11;;	LD	E,A
;1998/11/11;;	LD	D,B
;1998/11/11;;	LD	HL,LINKCD
;1998/11/11;;	ADD	HL,DE	
;1998/11/11;;	LD	C,$04
;1998/11/11;;	CALL	ENOMST
;1998/11/11;;;
;1998/11/11;;	LD	A,(ENOMID)
;1998/11/11;;	ADD	A,$10
;1998/11/11;;	LD	(ENOMID),A
;1998/11/11;;
;1998/11/11;	LD	A,(ENSTAT2)
;1998/11/11;	RST	00
;1998/11/11;	DW	LINKWT
;1998/11/11;	DW	LINKUP
;1998/11/11;	DW	LINKED
;1998/11/11;	DW	LINKTM
;1998/11/11;;-------------------------------
;1998/11/11;LINKWT
;1998/11/11;	CALL	LDTIM0
;1998/11/11;	DEC	(HL)
;1998/11/11;	JR	NZ,LKW010
;1998/11/11;;
;1998/11/11;	LD	(HL),$90
;1998/11/11;;
;1998/11/11;	CALL	STATINC
;1998/11/11;LKW010
;1998/11/11;	RET
;1998/11/11;;-------------------------------
;1998/11/11;;LKCHPT
;1998/11/11;;	DB	3,3,3,3,3,3,3,3
;1998/11/11;;	DB	3,3,3,3,3,3,3,2
;1998/11/11;;	DB	3,3,2,4,4,4,4,2
;1998/11/11;;	DB	2,2,2,2,2,2,2,1
;1998/11/11;;	DB	2,1,2,2,2,1,1,1
;1998/11/11;;	DB	1,1,1,1,0,0,0,0
;1998/11/11;;	DB	0,0,0,0,0,0,0,0
;1998/11/11;;	DB	0,0,0,0,0,0,0,0
;1998/11/11;;- - - - - - - - - - - - - - - - - -
;1998/11/11;LINKUP
;1998/11/11;	LD	A,(FRCNT)
;1998/11/11;	AND	$03
;1998/11/11;	JR	NZ,LKU090
;1998/11/11;;
;1998/11/11;	CALL	LDTIM0
;1998/11/11;	DEC	(HL)
;1998/11/11;	JR	Z,LKU0B0
;1998/11/11;;;	JR	LKU0B0
;1998/11/11;;;
;1998/11/11;;	LD	A,(HL)
;1998/11/11;;	RRA
;1998/11/11;;	RRA
;1998/11/11;;	AND	$3F
;1998/11/11;;	LD	E,A
;1998/11/11;;	LD	D,B
;1998/11/11;;	LD	HL,LKCHPT
;1998/11/11;;	ADD	HL,DE
;1998/11/11;;	LD	A,(HL)
;1998/11/11;;	CALL	ENPTST
;1998/11/11;LKU090
;1998/11/11;	RET
;1998/11/11;LKU0B0
;1998/11/11;;;	LD	(HL),$80
;1998/11/11;;;;
;1998/11/11;	JP	STATINC
;1998/11/11;;-------------------------------
;1998/11/11;LINKED
;1998/11/11;	LD	A,(YAMACT)
;1998/11/11;	CP	$13
;1998/11/11;	JR	Z,LKE090	
;1998/11/11;;
;1998/11/11;;;	LD	A,(FRCNT)
;1998/11/11;;;	AND	$03
;1998/11/11;;(CGB)	LD	A,(OPWRK7),A
;1998/11/11;		LD	A,(OPWRK7)
;1998/11/11;	INC	A
;1998/11/11;	LD	(OPWRK7),A
;1998/11/11;	AND	$03
;1998/11/11;	JR	NZ,LKE020
;1998/11/11;;
;1998/11/11;	LD	A,(ENYPSL)
;1998/11/11;	CP	$A0
;1998/11/11;	JR	NC,LKE010
;1998/11/11;	INC	A
;1998/11/11;	LD	(ENYPSL),A
;1998/11/11;LKE010
;1998/11/11;	LD	A,(ENYPSL+1)
;1998/11/11;	CP	$A0
;1998/11/11;	JR	NC,LKE018
;1998/11/11;	INC	A
;1998/11/11;	LD	(ENYPSL+1),A
;1998/11/11;LKE018
;1998/11/11;;
;1998/11/11;	LD	A,(SCCV)
;1998/11/11;	PUSH	AF
;1998/11/11;	DEC	A
;1998/11/11;	LD	(SCCV),A
;1998/11/11;	POP	AF
;1998/11/11;	AND	$07
;1998/11/11;	JR	NZ,LKE020
;1998/11/11;;
;1998/11/11;	PUSH	BC
;1998/11/11;	CALL	EGGMWT	
;1998/11/11;	POP	BC
;1998/11/11;	LD	A,(YAMACT)
;1998/11/11;	CP	$0B
;1998/11/11;	JR	NZ,LKE020
;1998/11/11;;;
;1998/11/11;	LD	A,$01
;1998/11/11;	LD	(SOUND4),A	;(S)
;1998/11/11;;
;1998/11/11;;	CALL	SOUNDOUT	;(S)
;1998/11/11;LKE020
;1998/11/11;	RET
;1998/11/11;LKE090
;1998/11/11;	CALL	STATINC
;1998/11/11;	CALL	LDTIM0
;1998/11/11;	LD	(HL),$17 ;58
;1998/11/11;;
;1998/11/11;;;	LD	A,$01
;1998/11/11;;;	LD	(SOUND4),A	;(S)
;1998/11/11;;
;1998/11/11;	LD	A,$07
;1998/11/11;	LD	(SLEVEL),A
;1998/11/11;	LD	A,$70
;1998/11/11;	LD	(SLEVEL2),A
;1998/11/11;	RET
;1998/11/11;;====================================================
;1998/11/11;LINKTM
;1998/11/11;	LD	A,(FRCNT)
;1998/11/11;	AND	$03
;1998/11/11;	JR	NZ,LKT010
;1998/11/11;;
;1998/11/11;	CALL	LDTIM0
;1998/11/11;	DEC	(HL)
;1998/11/11;	JR	NZ,LKT010
;1998/11/11;;
;1998/11/11;;	XOR	A
;1998/11/11;;	LD	(BGPFG),A
;1998/11/11;;	LD	(BGP),A
;1998/11/11;;;
;1998/11/11;;	JP	OPSTART
;1998/11/11;	CALL	ITMINC	; Goto "ZELDA" logo set mode !
;1998/11/11;;
;1998/11/11;	XOR	A
;1998/11/11;	LD	(OPWRK2),A
;1998/11/11;	LD	(OPWRK3),A
;1998/11/11;	LD	(OPWRK4),A
;1998/11/11;;
;1998/11/11;	LD	(ENMODE+0),A
;1998/11/11;	LD	(ENMODE+1),A
;1998/11/11;LKT010
;1998/11/11;	RET
;1998/11/11;;======================================================
;1998/11/11;;=	森田さん やってくれますか 飯おごりますんで！  =
;1998/11/11;;======================================================
;1998/11/11;EGGMDT
;1998/11/11;;9BE0
;1998/11/11;	DB	$7C,$7C,$44,$45,$7D,$7D,$7D,$7D,$7D,$7D,$7D
;1998/11/11;	DB	$7D,$7D,$7D,$7D,$7D,$4C,$4D,$7C,$7C
;1998/11/11;;9BC0
;1998/11/11;	DB	$7C,$7C,$7C,$7C,$44,$45,$7D,$7D,$7D,$7D,$7D
;1998/11/11;	DB	$7D,$7D,$7D,$4C,$4D,$7C,$7C,$7C,$7C
;1998/11/11;;9BA0
;1998/11/11;	DB	$7C,$7C,$7C,$7C,$7C,$70,$71,$72,$73,$74,$75
;1998/11/11;	DB	$76,$77,$78,$79,$7C,$7C,$7C,$7C,$7C
;1998/11/11;;9B80
;1998/11/11;	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$46,$7D,$7D,$7D
;1998/11/11;	DB	$7D,$4B,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;1998/11/11;;9B60
;1998/11/11;	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$5C,$5D,$5E
;1998/11/11;	DB	$5F,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;1998/11/11;;9B40
;1998/11/11;	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$58,$59,$5A
;1998/11/11;	DB	$5B,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;1998/11/11;;9B20
;1998/11/11;	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$54,$55,$56
;1998/11/11;	DB	$57,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;1998/11/11;;9B00
;1998/11/11;	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$50,$51,$52
;1998/11/11;	DB	$53,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;1998/11/11;;9AE0
;1998/11/11;	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$2B,$2C
;1998/11/11;	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;1998/11/11;;9AC0
;1998/11/11;	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;1998/11/11;	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;1998/11/11;;9AA0
;1998/11/11;	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;1998/11/11;	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;1998/11/11;;9A80
;1998/11/11;	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;1998/11/11;	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;1998/11/11;;9A60
;1998/11/11;	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;1998/11/11;	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;1998/11/11;;9A40
;1998/11/11;	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;1998/11/11;	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;1998/11/11;;9A20
;1998/11/11;	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;1998/11/11;	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;1998/11/11;;9A00
;1998/11/11;	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;1998/11/11;	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;1998/11/11;;99E0
;1998/11/11;	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;1998/11/11;	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;1998/11/11;;99C0
;1998/11/11;	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;1998/11/11;	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;1998/11/11;;99A0
;1998/11/11;	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;1998/11/11;	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;1998/11/11;;9980
;1998/11/11;	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;1998/11/11;	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;1998/11/11;;9960
;1998/11/11;	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;1998/11/11;	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;1998/11/11;;9940
;1998/11/11;	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;1998/11/11;	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;1998/11/11;;9920
;1998/11/11;	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;1998/11/11;	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;1998/11/11;;9900
;1998/11/11;	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;1998/11/11;	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;1998/11/11;;98E0
;1998/11/11;	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;1998/11/11;	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;1998/11/11;;98C0
;1998/11/11;	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;1998/11/11;	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;1998/11/11;;98A0
;1998/11/11;	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;1998/11/11;	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;1998/11/11;;9880
;1998/11/11;	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;1998/11/11;	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;1998/11/11;;9860
;1998/11/11;	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;1998/11/11;	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;1998/11/11;;9840
;1998/11/11;	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;1998/11/11;	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;1998/11/11;;9820
;1998/11/11;	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;1998/11/11;	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;1998/11/11;;9800
;1998/11/11;	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;1998/11/11;	DB	$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
;1998/11/11;;
;1998/11/11;EGGMWT
;1998/11/11;	LD	A,(YAMACT)
;1998/11/11;	AND	A
;1998/11/11;	JR	NZ,EGG010
;1998/11/11;;
;1998/11/11;	LD	A,$F4
;1998/11/11;	LD	(EGGZL),A
;1998/11/11;;
;1998/11/11;	LD	A,$9B
;1998/11/11;	LD	(EGGZH),A
;1998/11/11;;
;1998/11/11;EGG010
;1998/11/11;	LD	A,(YAMACT)
;1998/11/11;	LD	E,A
;1998/11/11;	LD	D,$00
;1998/11/11;	SLA	E
;1998/11/11;	RL	D
;1998/11/11;	SLA	E
;1998/11/11;	RL	D
;1998/11/11;	LD	A,E
;1998/11/11;	SLA	E
;1998/11/11;	RL	D
;1998/11/11;	SLA	E
;1998/11/11;	RL	D
;1998/11/11;	ADD	A,E
;1998/11/11;	LD	E,A
;1998/11/11;	LD	A,D
;1998/11/11;	ADC	A,$00
;1998/11/11;	LD	D,A
;1998/11/11;;
;1998/11/11;	LD	C,$00
;1998/11/11;;
;1998/11/11;EGVSET
;1998/11/11;	LD	HL,VRAMD+$01
;1998/11/11;	LD	A,(EGGZH)
;1998/11/11;;
;1998/11/11;	LD	(HLI),A
;1998/11/11;;
;1998/11/11;	LD	A,(EGGZL)
;1998/11/11;	LD	(HLI),A
;1998/11/11;;
;1998/11/11;	LD	A,$13
;1998/11/11;	LD	(HLI),A
;1998/11/11;;
;1998/11/11;EGGLP
;1998/11/11;	PUSH	HL
;1998/11/11;;
;1998/11/11;	LD	HL,EGGMDT
;1998/11/11;	ADD	HL,DE
;1998/11/11;	LD	A,(HL)
;1998/11/11;;
;1998/11/11;	POP	HL
;1998/11/11;;
;1998/11/11;	LD	(HLI),A
;1998/11/11;;
;1998/11/11;	INC	DE
;1998/11/11;	INC	C		;デ－タのカウンタ－($0-$13)
;1998/11/11;	LD	A,C
;1998/11/11;	CP	$14
;1998/11/11;	JR	NZ,EGGLP
;1998/11/11;;
;1998/11/11;	LD	(HL),$00
;1998/11/11;;
;1998/11/11;	LD	HL,YAMACT
;1998/11/11;	INC	(HL)
;1998/11/11;;
;1998/11/11;	LD	A,(EGGZL)   ;座標Ｌｏｗの設定(($E0-$009)(毎-$20))
;1998/11/11;	SUB	$20
;1998/11/11;	LD	(EGGZL),A
;1998/11/11;;
;1998/11/11;	LD	A,(EGGZH)   ;座標Ｈｉｇｈの設定($9B,$9A,$99)
;1998/11/11;	SBC	A,$00
;1998/11/11;	LD	(EGGZH),A
;1998/11/11;;
;1998/11/11;	RET
;1998/11/11;;======================================
;1998/11/11;;======================================
;1998/11/11;;======================================
;1998/11/11;;======================================
;1998/11/11;OPSEAD	; Sea chr adress 1
;1998/11/11;	DW	CHRDAT+$1000
;1998/11/11;	DW	CHRDAT+$1080
;1998/11/11;	DW	CHRDAT+$1100
;1998/11/11;	DW	CHRDAT+$1180
;1998/11/11;OPSEA2	; Sea chr adress 2 
;1998/11/11;	DW	CHRDAT+$1200
;1998/11/11;	DW	CHRDAT+$1280
;1998/11/11;	DW	CHRDAT+$1300
;1998/11/11;	DW	CHRDAT+$1380
;1998/11/11;OPSECT
;1998/11/11;	DB	0,2,4,6,6,4,2,0
;1998/11/11;OPSCYD
;1998/11/11;	DB	3,2,1,0,0,1,2,3
;1998/11/11;;	DB	4,5,6,6
;1998/11/11;;	DB	6,5,4,3
;1998/11/11;;	DB	2,1,0,0
;1998/11/11;;
;1998/11/11;;- - - - - - - - - - - - - - -
;1998/11/11;OPSCRL
;1998/11/11;	LD	HL,SCCH1
;1998/11/11;;
;1998/11/11;	LD	A,(FRCNT)
;1998/11/11;	AND	$07
;1998/11/11;	JR	NZ,OPN020
;1998/11/11;;
;1998/11/11;	INC	(HL)
;1998/11/11;OPN020
;1998/11/11;	INC	HL
;1998/11/11;;
;1998/11/11;	LD	A,(FRCNT)
;1998/11/11;	AND	$0F
;1998/11/11;	JR	NZ,OPN030
;1998/11/11;;
;1998/11/11;	INC	(HL)
;1998/11/11;OPN030
;1998/11/11;	INC	HL
;1998/11/11;;
;1998/11/11;	LD	A,(FRCNT)
;1998/11/11;	AND	$1F
;1998/11/11;	JR	NZ,OPN050
;1998/11/11;;
;1998/11/11;	INC	(HL)
;1998/11/11;OPN050
;1998/11/11;	INC	HL
;1998/11/11;;
;1998/11/11;	LD	A,(FRCNT)
;1998/11/11;	AND	$0F
;1998/11/11;	JR	NZ,OPN060
;1998/11/11;;
;1998/11/11;	INC	(HL)
;1998/11/11;OPN060
;1998/11/11;	INC	HL
;1998/11/11;;
;1998/11/11;;;	LD	A,(FRCNT)
;1998/11/11;;;	AND	$07
;1998/11/11;;;	JR	NZ,OPN068
;1998/11/11;	LD	A,(OPWRK4)
;1998/11/11;	ADD	A,$28
;1998/11/11;	LD	(OPWRK4),A
;1998/11/11;	JR	NC,OPN068
;1998/11/11;;
;1998/11/11;	INC	(HL)
;1998/11/11;;	LD	A,(HL)
;1998/11/11;;	ADD	A,$08
;1998/11/11;;	LD	(HL),A
;1998/11/11;OPN068
;1998/11/11;	LD	A,(FRCNT)
;1998/11/11;	ADD	A,$FC
;1998/11/11;	RRA
;1998/11/11;	RRA
;1998/11/11;	RRA
;1998/11/11;	RRA
;1998/11/11;	AND	$07
;1998/11/11;	LD	E,A
;1998/11/11;	LD	D,$0
;1998/11/11;	LD	HL,OPSCYD
;1998/11/11;	ADD	HL,DE
;1998/11/11;	LD	A,$00
;1998/11/11;	SUB	(HL)
;1998/11/11;	LD	(SCCV1),A
;1998/11/11;;- -  Nami chr TR. - -
;1998/11/11;NMCHTR
;1998/11/11;	LD	A,(FRCNT)
;1998/11/11;	AND	$0F
;1998/11/11;	CP	$04
;1998/11/11;	JR	C,NMT7000
;1998/11/11;;
;1998/11/11;NMCHTRS
;1998/11/11;	LD	A,(FRCNT)
;1998/11/11;	RRA
;1998/11/11;	RRA
;1998/11/11;	RRA
;1998/11/11;	RRA
;1998/11/11;	AND	%00000111
;1998/11/11;	LD	E,A
;1998/11/11;	LD	D,$00
;1998/11/11;	LD	HL,OPSECT
;1998/11/11;	ADD	HL,DE
;1998/11/11;	LD	E,(HL)
;1998/11/11;	LD	HL,OPSEAD
;1998/11/11;;;	LD	A,(ITMODE)
;1998/11/11;;;	CP	OPAF
;1998/11/11;;;	JR	C,NMTR08
;1998/11/11;	LD	A,(OPWRK8)
;1998/11/11;	AND	A
;1998/11/11;	JR	Z,NMTR08
;1998/11/11;	LD	HL,OPSEA2
;1998/11/11;NMTR08
;1998/11/11;	ADD	HL,DE
;1998/11/11;	LD	A,(HLI)
;1998/11/11;	LD	H,(HL)
;1998/11/11;	LD	L,A
;1998/11/11;;
;1998/11/11;	LD	DE,CHRRAM+$0900
;1998/11/11;;
;1998/11/11;;;	LD	A,(ITMODE)
;1998/11/11;;;	CP	OPAF
;1998/11/11;;;	JR	C,NMTR10
;1998/11/11;	LD	A,(OPWRK8)
;1998/11/11;	AND	A
;1998/11/11;	JR	Z,NMTR10
;1998/11/11;;
;1998/11/11;	LD	DE,CHRRAM+$1300
;1998/11/11;NMTR10
;1998/11/11;	LD	A,(FRCNT)
;1998/11/11;	AND	%00000011
;1998/11/11;;;	JR	Z,PT2010
;1998/11/11;	SLA	A
;1998/11/11;	SLA	A
;1998/11/11;	SLA	A
;1998/11/11;	SLA	A
;1998/11/11;	SLA	A
;1998/11/11;;
;1998/11/11;	LD	E,A
;1998/11/11;	ADD	A,L
;1998/11/11;;;	LD	A,L
;1998/11/11;;;	ADD	A,$40
;1998/11/11;	LD	L,A
;1998/11/11;;
;1998/11/11;;;	LD	E,$0040
;1998/11/11;PT2010
;1998/11/11;	LD	A,L
;1998/11/11;	LD	(NMCH0L),A
;1998/11/11;	LD	A,H
;1998/11/11;	LD	(NMCH0H),A
;1998/11/11;	LD	A,E
;1998/11/11;	LD	(NMCH1L),A
;1998/11/11;	LD	A,D
;1998/11/11;	LD	(NMCH1H),A
;1998/11/11;NMT7000
;1998/11/11;	RET
;1998/11/11;;======================================
;1998/11/11;OPSCRL2
;1998/11/11;	LD	HL,SCCH1
;1998/11/11;;
;1998/11/11;	LD	A,(FRCNT)
;1998/11/11;	AND	$07
;1998/11/11;	JR	NZ,OPN220
;1998/11/11;;
;1998/11/11;	INC	(HL)
;1998/11/11;OPN220
;1998/11/11;;;	INC	HL
;1998/11/11;OPS2SUB
;1998/11/11;	LD	HL,SCCH2
;1998/11/11;;
;1998/11/11;	LD	A,(OPWRK4)
;1998/11/11;	ADD	A,$50
;1998/11/11;	LD	(OPWRK4),A
;1998/11/11;	JR	NC,OPN230
;1998/11/11;;
;1998/11/11;	INC	(HL)
;1998/11/11;OPN230
;1998/11/11;	INC	HL
;1998/11/11;;
;1998/11/11;	LD	A,(OPWRK5)
;1998/11/11;	ADD	A,$58
;1998/11/11;	LD	(OPWRK5),A
;1998/11/11;	JR	NC,OPN250
;1998/11/11;;
;1998/11/11;	INC	(HL)
;1998/11/11;OPN250
;1998/11/11;	INC	HL
;1998/11/11;;
;1998/11/11;	LD	A,(OPWRK6)
;1998/11/11;	ADD	A,$B0
;1998/11/11;	LD	(OPWRK6),A
;1998/11/11;	JR	NC,OPN260
;1998/11/11;;
;1998/11/11;	INC	(HL)
;1998/11/11;OPN260
;1998/11/11;	JP	NMCHTR
;1998/11/11;;======================================
;1998/11/11;OPSCRL22
;1998/11/11;	LD	HL,SCCH1
;1998/11/11;;
;1998/11/11;	LD	A,(FRCNT)
;1998/11/11;	AND	$0F
;1998/11/11;	JR	NZ,OPN2202
;1998/11/11;;
;1998/11/11;	INC	(HL)
;1998/11/11;OPN2202
;1998/11/11;;;	INC	HL
;1998/11/11;OPS2SUB2
;1998/11/11;	LD	HL,SCCH2
;1998/11/11;;
;1998/11/11;	LD	A,(OPWRK4)
;1998/11/11;	ADD	A,$28
;1998/11/11;	LD	(OPWRK4),A
;1998/11/11;	JR	NC,OPN2302
;1998/11/11;;
;1998/11/11;	INC	(HL)
;1998/11/11;OPN2302
;1998/11/11;	INC	HL
;1998/11/11;;
;1998/11/11;	LD	A,(OPWRK5)
;1998/11/11;	ADD	A,$2C
;1998/11/11;	LD	(OPWRK5),A
;1998/11/11;	JR	NC,OPN2502
;1998/11/11;;
;1998/11/11;	INC	(HL)
;1998/11/11;OPN2502
;1998/11/11;	INC	HL
;1998/11/11;;
;1998/11/11;	LD	A,(OPWRK6)
;1998/11/11;	ADD	A,$58
;1998/11/11;	LD	(OPWRK6),A
;1998/11/11;	JR	NC,OPN2602
;1998/11/11;;
;1998/11/11;	INC	(HL)
;1998/11/11;OPN2602
;1998/11/11;	JP	NMCHTR
;1998/11/11;;
;====================================================
;=	柴原 やれい！			 	    =
;====================================================
GAKKIST
	LD	A,(BKCHCT)
	CP	$08
	JP	C,GKCH10
	JR	NZ,GKSS10
;===========================
	CALL 	GAKKISB
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
	LD	HL,CHRRAM+$0D00	; キャラクタ ＲＡＭ 
	ADD	HL,BC
		ld	e,l
		ld	d,h
;;10/31;	PUSH	HL
;;10/31;	POP	DE
;
	LD	HL,CHRDAT+$0D00	; 普通部屋キャラクタ転送
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
;*	柴原 でいたあ   (SBDT) 	    *+			+
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
;-	ロケーション   DMASUB =  $FF80         			    -
;-								    -
;-	   使用レジスタ  Ａのみ					    -
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
DMADATA				;       DMASUB の内容
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
;@	      洞窟内初歩部屋書矢印命令群            @
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
;1998/11/11;;-------------------------------------------------------
;1998/11/11;;    地上マップ展開
;1998/11/11;;-------------------------------------
;1998/11/11;;=====================================================
;1998/11/11;GMAPCDT
;1998/11/11; DB  $27,$6A,$6C,$21,$22,$23,$24,$25,$26,$6A,$FF,$6C,$6A,$6C,$6A,$6C
;1998/11/11; DB  $65,$65,$66,$31,$32,$33,$34,$35,$36,$67,$68,$64,$67,$69,$65,$66
;1998/11/11; DB  $40,$40,$41,$42,$43,$44,$FA,$FA,$63,$40,$40,$40,$40,$40,$40,$60
;1998/11/11; DB  $FF,$FA,$48,$49,$4A,$FA,$FA,$FA,$62,$6D,$6D,$6D,$6D,$6D,$6D,$FF
;1998/11/11; DB  $00,$01,$00,$01,$FA,$FF,$5E,$5F,$04,$05,$06,$07,$28,$29,$29,$2A
;1998/11/11; DB  $10,$11,$10,$11,$FA,$FA,$6E,$6F,$14,$15,$16,$17,$38,$20,$20,$3A
;1998/11/11; DB  $00,$01,$00,$01,$FB,$FF,$FE,$FE,$08,$09,$0A,$0B,$38,$20,$20,$3A
;1998/11/11; DB  $10,$11,$10,$11,$FB,$FB,$FE,$FE,$18,$19,$1A,$1B,$48,$49,$49,$4A
;1998/11/11; DB  $FB,$FF,$0C,$0D,$40,$40,$40,$40,$FA,$FA,$FF,$58,$0E,$0F,$FA,$FA
;1998/11/11; DB  $FB,$FB,$1C,$1D,$FA,$FA,$FA,$FA,$FA,$FA,$FA,$5D,$1E,$1F,$FA,$FA
;1998/11/11; DB  $0C,$0D,$0C,$0D,$FB,$FB,$28,$2A,$FA,$FA,$FA,$58,$2D,$2E,$2E,$2F
;1998/11/11; DB  $1C,$1D,$1C,$1D,$FB,$56,$61,$4A,$FA,$FA,$59,$5A,$3D,$3E,$3E,$3F
;1998/11/11; DB  $FD,$FD,$FD,$FD,$FB,$FB,$FB,$FB,$28,$29,$5B,$FA,$FF,$FF,$54,$54
;1998/11/11; DB  $FD,$FD,$FD,$FD,$FB,$FB,$FF,$FB,$38,$30,$3A,$FA,$FF,$FF,$54,$54
;1998/11/11; DB  $FD,$FD,$FD,$FF,$FD,$FD,$FB,$FB,$48,$FE,$4A,$FA,$56,$57,$54,$54
;1998/11/11; DB  $03,$12,$13,$12,$13,$02,$FF,$FB,$5C,$2B,$FA,$FA,$FA,$FA,$54,$54
;1998/11/11;;----------------------------------------
;1998/11/11;GMCHSB
;1998/11/11;	LD	DE,$9822
;1998/11/11;	LD	BC,$00
;1998/11/11;GMCS08
;1998/11/11;	LD	A,(GMAPFG)
;1998/11/11;	AND	A
;1998/11/11;	JR	NZ,GMCS0A	;本からの。。
;1998/11/11;;
;1998/11/11;	LD	A,(GMMODE)
;1998/11/11;	CP	ENDG
;1998/11/11;	JR	Z,GMCS0A
;1998/11/11;;
;1998/11/11;	LD	HL,GRRMSV
;1998/11/11;	ADD	HL,BC
;1998/11/11;	LD	A,(HL)
;1998/11/11;	AND	%10000000
;1998/11/11;	LD	A,$2C
;1998/11/11;	JR	Z,GMCS10
;1998/11/11;;
;1998/11/11;GMCS0A
;1998/11/11;	LD	HL,GMAPCDT
;1998/11/11;	ADD	HL,BC	
;1998/11/11;	LD	A,(HL)
;1998/11/11;GMCS10
;1998/11/11;	LD	(DE),A
;1998/11/11;;
;1998/11/11;	INC	C
;1998/11/11;	JR	Z,GMCS30
;1998/11/11;;
;1998/11/11;	INC	E
;1998/11/11;	LD	A,E
;1998/11/11;	AND	$1F
;1998/11/11;	CP	$12
;1998/11/11;	JR	NZ,GMCS20
;1998/11/11;;
;1998/11/11;	LD	A,E
;1998/11/11;	AND	%11100000
;1998/11/11;	ADD	A,$22
;1998/11/11;	LD	E,A
;1998/11/11;;
;1998/11/11;	LD	A,D
;1998/11/11;	ADC	A,$00
;1998/11/11;	LD	D,A
;1998/11/11;GMCS20
;1998/11/11;	JR	GMCS08
;1998/11/11;GMCS30	
;1998/11/11;	RET
;1998/11/11;;=============================
;1998/11/11;ARIMOTO
;1998/11/11;;;0
;1998/11/11;;	DB	%00001111,%00000000
;1998/11/11;;	DB	%00011111,%00000000
;1998/11/11;;	DB	%00111111,%00000000
;1998/11/11;;	DB	%00111111,%00010001
;1998/11/11;;	DB	%00111111,%00011111
;1998/11/11;;	DB	%00111111,%00011111
;1998/11/11;;	DB	%00111111,%00011001
;1998/11/11;;	DB	%00111111,%00010001
;1998/11/11;;;0
;1998/11/11;;	DB	%00111111,%00000011
;1998/11/11;;	DB	%11111111,%00011111
;1998/11/11;;	DB	%11111111,%01000000
;1998/11/11;;	DB	%11111111,%01001010
;1998/11/11;;	DB	%11111111,%01010001
;1998/11/11;;	DB	%11111111,%01011111
;1998/11/11;;	DB	%11111110,%01011111
;1998/11/11;;	DB	%01111110,%00011111
;1998/11/11;;;0
;1998/11/11;;	DB	%00111110,%00011111
;1998/11/11;;	DB	%00111100,%00011111
;1998/11/11;;	DB	%00111111,%00011111
;1998/11/11;;	DB	%00111111,%00011111
;1998/11/11;;	DB	%00111111,%00011111
;1998/11/11;;	DB	%00111111,%00011111
;1998/11/11;;	DB	%00111010,%00011101
;1998/11/11;;	DB	%00111001,%00010111
;1998/11/11;;;0
;1998/11/11;;	DB	%00110011,%00011111
;1998/11/11;;	DB	%00111011,%00010110
;1998/11/11;;	DB	%00111001,%00011111
;1998/11/11;;	DB	%00011100,%00001011
;1998/11/11;;	DB	%00001111,%00000101
;1998/11/11;;	DB	%00000111,%00000011
;1998/11/11;;	DB	%00000011,%00000000
;1998/11/11;;	DB	%00000000,%00000000
;1998/11/11;;
;1998/11/11;;=============================
;1998/11/11;;;0
;1998/11/11;;	DB	%00001111,%00001111
;1998/11/11;;	DB	%00011111,%00011111
;1998/11/11;;	DB	%00111111,%00111111
;1998/11/11;;	DB	%00100000,%00000000
;1998/11/11;;	DB	%00100000,%00000000
;1998/11/11;;	DB	%00100000,%00000000
;1998/11/11;;	DB	%00100000,%00000000
;1998/11/11;;	DB	%00101110,%00000000
;1998/11/11;;;0
;1998/11/11;;	DB	%00111110,%00000000
;1998/11/11;;	DB	%11100000,%00000000
;1998/11/11;;	DB	%10111111,%00000000
;1998/11/11;;	DB	%10110101,%00000000
;1998/11/11;;	DB	%10101110,%00000000
;1998/11/11;;	DB	%10100000,%00000000
;1998/11/11;;	DB	%10100001,%00000001
;1998/11/11;;	DB	%01100001,%00000001
;1998/11/11;;;0
;1998/11/11;;	DB	%00100001,%00000001
;1998/11/11;;	DB	%00100011,%00000011
;1998/11/11;;	DB	%00100000,%00000000
;1998/11/11;;	DB	%00100000,%00000000
;1998/11/11;;	DB	%00100000,%00000000
;1998/11/11;;	DB	%00100000,%00000000
;1998/11/11;;	DB	%00100111,%00000111
;1998/11/11;;	DB	%00101110,%00001110
;1998/11/11;;;0
;1998/11/11;;	DB	%00101100,%00001100
;1998/11/11;;	DB	%00101101,%00001100
;1998/11/11;;	DB	%00100110,%00000110
;1998/11/11;;	DB	%00010011,%00000011
;1998/11/11;;	DB	%00001000,%00000000
;1998/11/11;;	DB	%00000100,%00000000
;1998/11/11;;	DB	%00000011,%00000000
;1998/11/11;;	DB	%00000000,%00000000
;1998/11/11;;
;1998/11/11;;=============================
;1998/11/11;;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;1998/11/11;;%					           %
;1998/11/11;;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;1998/11/11;DJYKBK	; Danjyon yuka bank adress !
;1998/11/11;	DB	$4C ;00  LV1
;1998/11/11;	DB	$62 ;01  LV2
;1998/11/11;	DB	$63 ;02	 LV3
;1998/11/11;	DB	$66 ;03	 LV4
;1998/11/11;	DB	$6B ;04	 LV5
;1998/11/11;	DB	$63 ;05  LV6
;1998/11/11;	DB	$65 ;06	 LV7
;1998/11/11;	DB	$64 ;07	 LV8
;1998/11/11;	DB	$60 ;08  LV9
;1998/11/11;	DB	$4C ;09  予備
;1998/11/11;	DB	$4D ;0A  山の洞窟
;1998/11/11;	DB	$4C ;0B
;1998/11/11;	DB	$4C ;0C
;1998/11/11;	DB	$4C ;0D
;1998/11/11;	DB	$4E ;0E	;買い物
;1998/11/11;	DB	$4E ;0F	;サブゲーム
;1998/11/11;;- - - - - - - - - - - - - - - - - - -
;1998/11/11;	DB	$4E ;10 : 民家
;1998/11/11;	DB	$4D ;11 : 洞窟
;1998/11/11;	DB	$4D ;12 : ワンワンの小屋
;1998/11/11;	DB	$4F ;13 : ベッドルーム
;1998/11/11;	DB	$61 ;14 : 城
;1998/11/11;	DB	$63 ;15 : モリブリンの住処
;1998/11/11;	DB	$63 ;16 : 廃墟の神殿
;1998/11/11;	DB	$00 ;17 :
;1998/11/11;	DB	$00 ;18 :
;1998/11/11;	DB	$00 ;19 :
;1998/11/11;	DB	$00 ;1A :
;1998/11/11;	DB	$00 ;1B :
;1998/11/11;	DB	$00 ;1C :
;1998/11/11;	DB	$4E ;1D : うるりら図書館
;1998/11/11;	DB	$4E ;1E : 秘密の部屋(民家編)
;1998/11/11;	DB	$4D ;1F : 秘密の部屋(洞窟編)
;1998/11/11;;=========================================
;1998/11/11;;壁バンク
;1998/11/11;DJKBBK	; Danjyon Kabe bank adress !
;1998/11/11;	DB	$40 ;00  LV1
;1998/11/11;	DB	$40 ;01  LV2
;1998/11/11;	DB	$6C ;02	 LV3
;1998/11/11;	DB	$40 ;03	 LV4
;1998/11/11;	DB	$40 ;04	 LV5
;1998/11/11;	DB	$6C ;05  LV6
;1998/11/11;	DB	$40 ;06	 LV7
;1998/11/11;	DB	$6E ;07	 LV8
;1998/11/11;	DB	$4A ;08  LV9
;1998/11/11;	DB	$40 ;09  予備
;1998/11/11;	DB	$46 ;0A  山の洞窟
;1998/11/11;	DB	$40 ;0B
;1998/11/11;	DB	$40 ;0C
;1998/11/11;	DB	$40 ;0D
;1998/11/11;	DB	$48 ;0E	;買い物
;1998/11/11;	DB	$48 ;0F	;サブゲーム
;1998/11/11;;- - - - - - - - - - - - - - - - - - -
;1998/11/11;	DB	$48 ;10 : 民家
;1998/11/11;	DB	$46 ;11 : 洞窟
;1998/11/11;	DB	$48 ;12 : ワンワンの小屋
;1998/11/11;	DB	$4A ;13 : ベッドルーム
;1998/11/11;	DB	$40 ;14 : 城
;1998/11/11;	DB	$46 ;15 : モリブリンの住処
;1998/11/11;	DB	$6C ;16 : 廃墟の神殿
;1998/11/11;	DB	$00 ;17 :
;1998/11/11;	DB	$00 ;18 :
;1998/11/11;	DB	$00 ;19 :
;1998/11/11;	DB	$00 ;1A :
;1998/11/11;	DB	$00 ;1B :
;1998/11/11;	DB	$00 ;1C :
;1998/11/11;	DB	$48 ;1D : うるりら図書館
;1998/11/11;	DB	$48 ;1E : 秘密の部屋(民家編)
;1998/11/11;	DB	$46 ;1F : 秘密の部屋(洞窟編)
;1998/11/11;;=========================================
;1998/11/11;DJCABK	; Danjyon 持ち上げるものなど bank adress !
;1998/11/11;	DB	$79 ;00  LV1
;1998/11/11;	DB	$79 ;01  LV2
;1998/11/11;	DB	$77 ;02	 LV3
;1998/11/11;	DB	$79 ;03	 LV4
;1998/11/11;	DB	$79 ;04	 LV5
;1998/11/11;	DB	$77 ;05  LV6
;1998/11/11;	DB	$78 ;06	 LV7
;1998/11/11;	DB	$79 ;07	 LV8
;1998/11/11;	DB	$79 ;08  LV9
;1998/11/11;	DB	$63 ;09  予備
;1998/11/11;	DB	$7A ;0A  山の洞窟
;1998/11/11;	DB	$00 ;0B
;1998/11/11;	DB	$00 ;0C
;1998/11/11;	DB	$00 ;0D
;1998/11/11;;
;1998/11/11;	DB	$7B ;0E ; 買い物
;1998/11/11;	DB	$7B ;0F ; サブゲーム
;1998/11/11;;- - - - - - - - - - - - - - - - - - -
;1998/11/11;	DB	$7B ;10 : 民家
;1998/11/11;	DB	$7A ;11 : 洞窟
;1998/11/11;	DB	$7B ;12 : ワンワンの小屋
;1998/11/11;	DB	$79 ;13 : ベッドルーム
;1998/11/11;	DB	$7C ;14 : 城
;1998/11/11;	DB	$7A ;15 : モリブリンの住処
;1998/11/11;	DB	$77 ;16 : 廃墟の神殿
;1998/11/11;	DB	$00 ;17 :
;1998/11/11;	DB	$00 ;18 :
;1998/11/11;	DB	$00 ;19 :
;1998/11/11;	DB	$00 ;1A :
;1998/11/11;	DB	$00 ;1B :
;1998/11/11;	DB	$00 ;1C :
;1998/11/11;	DB	$7C ;1D : うるりら図書館
;1998/11/11;	DB	$7B ;1E : 秘密の部屋(民家編)
;1998/11/11;	DB	$7A ;1F : 秘密の部屋(洞窟編)
;=============================
	END
