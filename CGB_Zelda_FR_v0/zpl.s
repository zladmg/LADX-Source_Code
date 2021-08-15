;;   Ver. ドイツ
;
		onbankgroup
;
;==============	バンク０ ================================================
BANK0		GROUP	0
;-------------<	ZCO >-------------
		extern	DATA_MOV,RAMCLR,RAMCL2,BGMSET,RNDSUB,OBJBG,RAMCL3
		extern	SOUNDCLR,DJITRV,SVOPEN
;
;-------------<	ZES >-------------
		extern	ENEMY,BDCHT1,BDCHT2,KTFLSTL,ECACH,EMOVE,EFAIL
		extern	ENIDSHL
;
;-------------<	ZBS >-------------
		extern	BGDTST,ENDTST,BGCRRD
		EXTERN	Unit_bank_set
;
;-------------<	ZMA >-------------
		extern	PBSET,PBRETN,VRMCL,VRMBT,BKCHG,BKCH2,BKCH3
		extern	WINDBGS,RBGST,PSLBGS,NSLBGS,DJBST,GRBST,GOVBG
		extern	BLVRDS,BNKTR,TLCHG,GMAPCL,GVCHG,VRMB2
		EXTERN	Char_bank_set
;
;-------------<	ZMSSUB >-------------
		extern	MESEGE,MSGCHK,MSGCH2,MSGCH3
;
;==============	バンク１ ================================================
BANK1		GROUP	1
;-------------<	ZTI >-------------
		extern	PLSLCTS,NMREGIS,NMCLERS,DMAPSUB,GRMAPSB,GPSUB
		extern	NMCOPYS,GMSTART,DTSAVE,TSAVESB,PLOVERS,DAMPFGD
		extern	GPMA
;
;-------------<	ZS1 >-------------
		extern	MSGTEST,PEACHSB,LOVEDEMO,KABE1SB,DJYKBK
		extern	ARIMOTO,OPA,DJMSCK
;
;-------------<	ZS1SUB >----------
		EXTERN	OPENING
;
;==============	バンク２ ================================================
BANK2		GROUP	2
;-------------<	ZEX >-------------
		extern	EXSTRA,TAKARST,PLBELT,COINIT,HARTIT,ITEMDP,WINDOW
		extern	ITEMDP2,WUPSET,WUPSET2,DOORSUB,FUCKSST,PLYKMV
		extern	PLYKBC,PRTBMSTS,PLROTCS,PLTOBIS,PLOBORS,KNPWUPS
		extern	PLFOLES,KURDORS,SCROLLS,ANAHORIS,BG1CHS,PLCTBC
		extern	ITEMUP,PWDRUP,PLJUMP,ANBGSB,OKARINA,PLBOXER,OKARST
		extern	DEFUP,DJMPST,PLMOVES,PLIDBC,FLSH,PLBGCK,PLBGC0
		extern	PLCUT,PLCUT2,PLCUT3,PCUTED,PLSWIMS,KPWF,DSZN,SMK1
		extern	PLIDBC2,PMVXD,PMVYD,PLCMDT,PLCHPD,PLCHP2,PLCHP28
		extern	PLCHP3,PLCHP38,PLCHPO,PLCHPC,PLCHSW,PLCHDB,PLCHYSW
		extern	WTUP2
;
;==============	バンク３ ================================================
BANK3		GROUP	3
;-------------<	ZEN >-------------
		extern	ENCAPS,BOMBR,BUMER,KTOBJ,PYAAA,BLOCK,FUCKS,KEYSM
		extern	POWDR,RUPY1,HART1,PRTBM,FUKURO,YOSSI,KENBM
;
;==============	バンク４ ================================================
BANK4		GROUP	4
;-------------<	ZE2 >-------------
		extern	SHOPGET
;
;==============	バンク６ ================================================
BANK6		GROUP	6
;-------------<	ZE4 >-------------
		extern	ENDING
;
;==============	バンク８ ================================================
BANK8		GROUP	8
;-------------<	ZBD >-------------
		EXTERN	GRBGCR,DJBGCR,DJUNCH,DJUNCH2,DJUNCH_CGB
;
;==============	バンク１４ ==============================================
BANK14		GROUP	14H
;-------------<	ZDB >-------------
		extern	DJRMDT,D7DAT2,DJTKDT,KAI,C02
		EXTERN	NEWDJDAT
;
;-------------<	ZEX >-------------
		extern	MSOKCKL,TUBOITEM,TILTCK,KNBNMSD,EXSEST,FADECK
		extern	BG1CHGSB,WPDJPT,WPDJPTN
		EXTERN	WPDJPT2,TRC_SUB
;
;==============	バンク１７ ==============================================
BANK17		GROUP	17H
;-------------<	ZEND >-------------
		extern	YAOBJSTS,MSCURST,YMCLER
;
;==============	バンク１９ ==============================================
BANK19		GROUP	19H
;-------------<	ZE7 >-------------
		extern	PLWARP,BELTCK
;
;==============	バンク１Ａ ==============================================
BANK1A		GROUP	$1A
;-------------<	ZBDATR >-------------
		EXTERN	BgAtrAddress
;
;-------------<	ZMAP >-------------
		EXTERN	BGUNCH,BGUNCH_CGB
;
;==============	バンク１Ｃ ==============================================
BANK1C		GROUP	1CH
;-------------<	ZMS >-------------
		extern	MSCANC,MSCHNO,MSCHN2,USA,MSGEAD,MJ2DT,MJ2DTH,MJ2DTL
		extern	MJ1DTL,MJ1DTH,XX,WED,WE2,NM
;
;==============	バンク２０ ==============================================
BANK20		GROUP	$20
;-------------<	ZFADE >-------------
		EXTERN	WhiteOut,WhiteIn
;-------------<	ZPLSUB >-------------
		EXTERN	TLCRST_SUB,SCRL_SUB,SCROLL_INIT
		EXTERN	KNCSET_SUB,PLY100_SUB,BOMBRST_SUB
		EXTERN	BYTM,TATEST2_SUB,BUMERST_SUB,NEWDJ_BGCRS,NEWDJ_CHR
		EXTERN	MGICPW_SUB,PLTROK_SUB,SI2130_SUB
		EXTERN	FDIN_SUB,FDOUT_SUB
;-------------<	ZWIN >------------
		EXTERN	ITEM_SELECT,ITSEL_SUB
;-------------<	ZMAP >------------
		EXTERN	GBBKDT,DBBKDT,GREBDT
		EXTERN	DJEBDT,GEBANKD,DEBANKD
		EXTERN	DBBKDT2,DJEBDT2
		EXTERN	CCC
;
;==============	バンク２４ ==============================================
BANK24		GROUP	$24
;-------------<	ZATR >------------
		EXTERN	MORI_COL_CHANGE
;
;==============	バンク２８ ==============================================
BANK28		GROUP	$28
;-------------<	ZPR >------------
		EXTERN	PRINTER_MAIN
;
;==============	バンク３６ ==============================================
BANK36		GROUP	$36
;-------------<	ZE9 >------------
		EXTERN	GEKI_CHECK
;
;==============	バンク３７ ==============================================
BANK37		GROUP	$37
;-------------<	ZGEKI >----------
		EXTERN	GEKI_MODE
;
;==============	バンク３８ ==============================================
BANK38		GROUP	$38
;-------------<	ZGKANM >---------
		EXTERN	C_BOY_CHR_SET
;
;========================================================================
	PUBALL
;
BANK0	GROUP	0
	LIB	ZRAM
	LIB	ZBN
;
;---sub---------------------------------------
;;;;;;;;	EXTERN	DATA_MOV,ENEMY,EXSTRA,RAMCLR,RAMCL2,BGDTST,TAKARST,PLBELT,BGMSET
;;;;;;;;	EXTERN	ENDTST,COINIT,HARTIT,ITEMDP,RNDSUB,WINDOW,ITEMDP2,DJRMDT,PBSET,PBRETN
;;;;;;;;	EXTERN	OBJBG,ENCAPS,PLSLCTS,NMREGIS,NMCLERS,WUPSET,WUPSET2,DOORSUB,DMAPSUB,FUCKSST
;;;;;;;;	EXTERN	PLYKMV,PLYKBC,RAMCL3,GRMAPSB,PRTBMSTS,PLROTCS,PLTOBIS,BGCRRD
;;;;;;;;	EXTERN	GPSUB,NMCOPYS,GMSTART,DTSAVE,SOUNDCLR,DJITRV,SVOPEN,D7DAT2,MSOKCKL
;;;;;;;;	EXTERN	TSAVESB,PLOBORS,KNPWUPS,PLOVERS,PLFOLES,KURDORS,BDCHT1,BDCHT2
;;;;;;;;	EXTERN	MSCANC,MSCHNO,MSCHN2,SCROLLS,ANAHORIS,KTFLSTL,BG1CHS,OPENING,TUBOITEM
;;;;;;;;	EXTERN	TILTCK,USA,MSGTEST,PLCTBC,KNBNMSD,ITEMUP,PWDRUP,PLJUMP,ANBGSB,OKARINA
;;;;;;;;	EXTERN	PLWARP,PLBOXER,PEACHSB,OKARST,LOVEDEMO,DEFUP,EXSEST,DJMPST ;TITLSUB,TITLMAIN,
;;;;;;;;	EXTERN	ENDING,PLMOVES,YAOBJSTS,MSCURST,FADECK,KABE1SB,BELTCK,YMCLER,PLIDBC
;;;;;;;;;- -lavel -
;;;;;;;;	EXTERN	VRMCL,VRMBT,BKCHG,BKCH2,BKCH3,WINDBGS,RBGST,BOMBR,BUMER,KTOBJ,GRBGCR,DJBGCR
;;;;;;;;	EXTERN	BGUNCH,DJUNCH,ECACH,PYAAA,GBBKDT,DBBKDT,EMOVE,EFAIL,PSLBGS,NSLBGS,DJBST,GRBST,GOVBG
;;;;;;;;	EXTERN	BLOCK,MSGEAD,GREBDT,DJEBDT,BLVRDS,BNKTR,FLSH,FUCKS,TLCHG,KEYSM,DJTKDT,POWDR
;;;;;;;;	EXTERN	RUPY1,HART1,PRTBM,DAMPFGD,PLBGCK,PLBGC0,DJYKBK,SHOPGET
;;;;;;;;	EXTERN	PLCUT,PLCUT2,PLCUT3,PCUTED,BG1CHGSB,PLSWIMS,FUKURO,ARIMOTO
;;;;;;;;	EXTERN	KPWF,GMAPCL,GVCHG,VRMB2,DSZN,SMK1,OPA,DJMSCK,PLIDBC2
;;;;;;;;	EXTERN	MJ2DT,MJ2DTH,MJ2DTL,MJ1DTL,MJ1DTH,GEBANKD,DEBANKD
;;;;;;;;	EXTERN	PMVXD,PMVYD,PLCMDT,PLCHPD,PLCHP2,PLCHP28,PLCHP3,PLCHP38,PLCHPO
;;;;;;;;	EXTERN	PLCHPC,PLCHSW,PLCHDB,PLCHYSW,ENIDSHL,YOSSI  ;,ZZZDT
;;;;;;;;	EXTERN	XX,WED,WE2,NM,GPMA,KAI,C02  ;,WLF TITLBGS,
;;;;;;;;	EXTERN	WPDJPT,WPDJPTN,WTUP2,KENBM
;
	KANJI
	isdmg
;
	LIST
;;;11/17	ORG	$087C
;-----------------------------------------------------
;========================================
PLPTSTL
	LD	A,$02
	LD	($2100),A
	CALL	PLPTST
	JP	PBRETN
;========================================
LDTIM3 
	LD	HL,ENTIM3
	JR	LDTSUB
;========================================
LDTIM1 
	LD	HL,ENTIM1
	JR	LDTSUB
;========================================
LDTIM0
	LD	HL,ENTIM0
LDTSUB
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	RET
;-----------------------------------------------------
;-----------------------------------------------------
YOSSISET
	LD	A,YOSSI
	CALL	ENIDSHL
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
	RET
;
;-----------------------------------------------------
;-----------------------------------------------------
;-----------------------------------------------------
NOSDST	;残念音！
	LD	A,$1D
	LD	(SOUND1),A	;(S)
	RET
;-----------------------------------------------------
MSCHNOR
	LD	HL,MSCHNO
	JR	MSCHN2RS
;-----------------------------------------------------
MSCHN2R
	LD	HL,MSCHN2
MSCHN2RS
	LD	A,$1C
	LD	($2100),A
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,$2100
	LD	(HL),$01
	RET
;-----------------------------------------------------
GKCHRV	; 楽器キャラクター RETURN SUB!
	LD	A,$0C
	LD	($2100),A
;
	LD	BC,$0040	; 個数 
	CALL	DATA_MOV	; キャラクタ 転送
;
	LD	A,$01
	LD	($2100),A
	RET
;-----------------------------------------------------
BBSDST
	LD	HL,SOUND3
	LD	(HL),$0C	;(S)
;
OTOSET
	LD	HL,OTOFLG
	LD	(HL),$04
	RET
;-----------------------------------------------------
ENHNCL
	LD	HL,ENHNFG
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,EHNC10
;
	DEC	(HL)
EHNC10
	RET
;-----------------------------------------------------
NAZOCLR
	PUSH	AF
;
	LD	A,(NAZOCL)
	AND	A
	JR	NZ,NZCLR10
;
	LD	(DJSDON),A	;中ボス用サウンドセットクリアー
	INC	A
	LD	(NAZOCL),A
	LD	(IWAMSFG),A	;ヒントメッセージ！クリアー
;
	LD	A,(WARPFG)
	AND	A
	JR	NZ,NZCLR10
;
	LD	A,$02
	LD	(SOUND1),A	;(S)
NZCLR10
	POP	AF
	RET
;-----------------------------------------------------
;===============================================
NXGOTO
	LD	A,$30
	LD	(SDOUTFG),A	; BGM Fade OUT 
	JR	NXG010
;===============================================
NXGOTO4
	LD	A,$30
	LD	(SDOUTFG),A	; BGM Fade OUT 
	JR	NXG011
;- - - - - - - - - - - - - - - -
NXGOTO2
	LD	A,(NXRMMD)
	CP	DNJ
	JR	NZ,NXGOTO
;
	LD	A,(DJFLAG)
	AND	A
	JR	Z,NXGOTO
;
	LD	A,$01
	LD	(BGMNOT),A
NXG010
	LD	A,$06
	LD	(SOUND3),A	;(S)
NXG011
;
NXGOTO3
	LD	A,PINDR1
	LD	(PLMODE),A	; Goto next room !
;
	XOR	A
	LD	(SBHR),A
	LD	(SBCNT),A
	LD	(BIRDFG),A
;
	AND	A	; CLC
	RET
;===========================================
DUSHCL
	XOR	A
	LD	(SPCTTM),A
	LD	(SPCTWT),A
DUSHCL2
	XOR	A
	LD	(DUSHCT),A
	LD	(DUSHFG),A
	RET
;=========================================
PLPSRV
	LD	A,(PLSVXL)
	LD	(PLXPSL),A
	LD	A,(PLSVYL)
	LD	(PLYPSL),A
	RET
;=============================
EXIDSH
	PUSH	AF
;
	LD	E,EXNO-1
	LD	D,$00
WUS010
	LD	HL,EXMODE
	ADD	HL,DE
	LD	A,(HL)
	AND	A
	JR	Z,WUS020
	DEC	E
	LD	A,E
	CP	$FF
	JR	NZ,WUS010
;
	LD	HL,EXSTCT
	DEC	(HL)
	LD	A,(HL)
	CP	$FF
	JR	NZ,WUS018
;
	LD	A,EXNO-1
	LD	(EXSTCT),A
WUS018
	LD	A,(EXSTCT)
	LD	E,A
WUS020
	POP	AF
EXSET
	LD	HL,EXMODE
	ADD	HL,DE
	LD	(HL),A
;
	LD	A,(WORK1)   ;PLYPSL)
	LD	HL,EXYPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	A,(WORK0)  ;PLXPSL)
	LD	HL,EXXPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,EXTIM0
	ADD	HL,DE
	LD	(HL),$0F ;A
	RET
;===================================
KNFLSH
	LD	A,(PKCRX1)
	SUB	$08
	LD	(WORK0),A
	LD	A,(PKCRY1)
	SUB	$08
	LD	(WORK1),A
FLASHST
	LD	A,$07
	LD	(SOUND1),A	;(S)
;
	LD	A,FLSH
	JP	EXIDSH
;
;================================
BGBKST	; BG bank set 
;(CGB)	LD	A,$8
	LD	A,$20		; データを ZMAP に移動
	LD	($2100),A
;
	LD	A,(DJFLAG)
	AND	A
	JR	Z,BKS011
;
	LD	A,(GRNDPT)
	LD	E,A
	LD	D,$0
;
	LD	HL,DBBKDT
;
		LD	A,(DNJNNO)
		CP	NEWDJ
		JR	NZ,DBS990_PASS
		LD	HL,DBBKDT2
		JR	DBS990
DBS990_PASS
;
;;;KK;;;	LD	A,(DNJNNO)
	CP	DJROOM2
	JR	NC,DBS990
;
	CP	DJROOM ;$20
	JR	C,DBS990
;
	INC	H
DBS990
	ADD	HL,DE
	LD	A,(BKCHNO)
	LD	E,A
	LD	A,(HL)
	CP	E
	JR	Z,BKS008	; bank change ?
	LD	(BKCHNO),A
	CP	$FF
	JR	Z,BKS008	; bank change ?
;
	LD	A,$1
	LD	(BKCHFG),A
BKS008
	JR	BKST09
;
;
;
BKS011
	LD	A,(GRNDPT)
	CP	$07
	JR	NZ,BKS01122
	INC	A
BKS01122
	LD	D,A
	SRL	A
	SRL	A
	AND	%11111000
	LD	E,A
	LD	A,D ;(GRNDPT)
	SRL	A
	AND	%00000111
	OR	E
;
	LD	E,A
	LD	D,$0
;
	LD	HL,GBBKDT
	ADD	HL,DE
	LD	A,(BKCHNO)
	LD	E,A
	LD	A,(HL)
	CP	E
	JR	Z,BKST09	; bank change ?
	CP	$0F		; yes !
	JR	Z,BKST09	; set ? (F):Not set
;				; yes !

		CP	CCC		; 26,27,36,37 エリア？
		JR	NZ,BKST08	; ＮＯ

		LD	A,(GRNDPT)
		CP	$37		; 37(カメラ屋さん)？
		JR	NZ,BKST09	; ＮＯ

		LD	A,(HL)
BKST08
	LD	(BKCHNO),A
	LD	A,$1
	LD	(BKCHFG),A
BKST09
;- - Enemy bank check - - 
	XOR	A
	LD	(WORK0),A
;
	LD	A,(GRNDPT)
	LD	E,A
	LD	D,$00
	LD	HL,GREBDT
	LD	A,(DJFLAG)
	LD	D,A
	LD	A,(DNJNNO)
	CP	DJROOM2 ;$20
	JR	NC,EBK010
	CP	DJROOM ;$20
	JR	C,EBK010
	INC	D
EBK010
	ADD	HL,DE
	LD	E,(HL)
;
	LD	A,D
	AND	A
;(CGB)	JR	NZ,EBK0211	;地上？
;(CGB);				;YES !

		JR	Z,EBK010_100	; 地上？
					; ＮＯ
		LD	A,(DNJNNO)
		CP	$10
		JR	NZ,EBK0211
		LD	A,(GRNDPT)
		CP	$B5		; カメラ屋？
		JR	NZ,EBK0211	; ＮＯ
		LD	E,$3D		; 図書館と同じ！
		JR	EBK0211
EBK010_100

	LD	A,E
	CP	$23
	JR	NZ,EBK0111	;人魚？
;				;YES ! $71
	LD	A,(GRRMSV+$C9)
	AND	%00100000
	JR	Z,EBK0111	;イベント後？
;				;YES!
	INC	E
EBK0111
	LD	A,E
	CP	$21
	JR	NZ,EBK0211	;トッド？
;				;YES ! $71
	LD	A,(GRRMSV+$FD)
	AND	%00100000
	JR	Z,EBK0211	;イベント後？
;				;YES!
	INC	E
EBK0211
	LD	D,$00
	SLA	E
	RL	D
	SLA	E
	RL	D
;
		LD	A,(DNJNNO)
		CP	NEWDJ		;新ダンジョン？
		JR	NZ,EBK022_PASS	;	NO --> EBK022_PASS
		LD	A,$001
		LD	(BKCHF2),A
		JR	EBCH30
EBK022_PASS
	LD	HL,GEBANKD
	LD	A,(DJFLAG)
	AND	A
	JR	Z,EBK022
	LD	HL,DEBANKD
EBK022
	ADD	HL,DE
;
	LD	D,$00
	LD	BC,EBANK0
EBCH10
	LD	E,(HL)
	LD	A,(BC)
	CP	E
	JR	Z,EBCH20	; Bank chenge ?
;				; yes !
	LD	A,E
	CP	$FF
	JR	Z,EBCH20
;
	LD	(BC),A
;
	LD	A,(WORK0)
	AND	A
	JR	Z,EBCH11	; Second set ?
;				; yes !
	LD	A,D
	LD	(EBCHF2),A	; Port 2
	LD	A,$1
	LD	(BKCHF3),A
	JR	EBCH20
EBCH11
	INC	A
	LD	(WORK0),A
;
	LD	A,D
	LD	(EBCHFG),A	; Port 1
	LD	A,$1
	LD	(BKCHF2),A
EBCH20
	INC	HL
	INC	BC
	INC	D
	LD	A,D
	CP	$4
	JR	NZ,EBCH10
EBCH30
;
	JP  	PBRETN
;
;
CARITMD	EQU	$0C	; Ken chari time
;====================================================
;= すべての始まり！				    =
;====================================================
PLAY
;
PLAY001
	LD	A,(GMMODE)
	CP	GMAP
	JR	C,GPM900	;ゲーム中？
;
	CP	GPLAY	
	JR	NZ,PLAY005
;
	LD	A,(ITMODE)
	CP	GPMA
	JR	NZ,GPM900
;
PLAY005
	LD	A,(SBHR)
	CP	$04
	JR	NZ,GPM900
;				; YES !
	LD	A,(MSGEFG)
	LD	HL,ITEMNOT
	OR	(HL)
	LD	HL,SCRLFG
	OR	(HL)
	JR	NZ,GPM900
;				; YES !
		LD	A,(GMMODE)	;アイテムセレクトモード
		CP	ITSEL		;	以降のモードナンバー？
		JR	NC,GPM900	;	YES --> GPM900
;
	LD	A,(KEYA1)
	CP	%11110000
	JR	NZ,GPM900	;強制セーブモード?
;
		LD	A,(OKWARPF)
		AND	A		; オカリナワープ？ 
		JR	NZ,GPM900	; ＹＥＳ
		LD	A,(NYOTIM)
		AND	A		; ニョロニョロびりびり中？
		JR	NZ,GPM900	; ＹＥＳ
;
	XOR	A		;YES !
	LD	(SBHR),A
	LD	(SBCNT),A
	LD	(MSGEFG),A
;
	LD	(ITMODE),A
	LD	A,TSVE
	LD	(GMMODE),A
;
;---------------------------------
GPM900
	LD	A,(GMMODE)
;
	RST	0
	DW	OPNING
	DW	ENDINGS ;TITLE
	DW	PLSLCT
	DW	NMREGI
	DW	NMCLER
	DW	NMCOPY
	DW	TSAVE	; Hot save mode !
	DW	GRMAP	; Ground map mode !
	DW	PEACHS	; ピーチ写真 !
	DW	LOVEDM	; 海岸デモ !
	DW	KABE1S	; クジラ壁画!
	DW	GMPLAY  ; GAME MAIN !!
;( for CGB )
	DW	ITEMSEL	; (C) アイテムセレクト
	DW	PRINTER	; (D) ポケットプリンタ
	DW	GEKI_MD	; 0E Ｎｏ.００　寸劇
	DW	GEKI_MD	; 0F Ｎｏ.０１　寸劇
	DW	GEKI_MD	; 10 Ｎｏ.０２　寸劇
	DW	GEKI_MD	; 11 Ｎｏ.０３　寸劇
	DW	GEKI_MD	; 12 Ｎｏ.０４　寸劇
	DW	GEKI_MD	; 13 Ｎｏ.０５　寸劇
	DW	GEKI_MD	; 14 Ｎｏ.０６　寸劇
	DW	GEKI_MD	; 15 Ｎｏ.０７　寸劇
	DW	GEKI_MD	; 16 Ｎｏ.０８　寸劇
	DW	GEKI_MD	; 17 Ｎｏ.０９　寸劇
	DW	GEKI_MD	; 18 Ｎｏ.１０　寸劇
	DW	GEKI_MD	; 19 Ｎｏ.１１　寸劇
	DW	GEKI_MD	; 1A Ｎｏ.１２　寸劇
;
OPING	EQU	0
ENDG	EQU	1 
TITL	EQU	1 ;(いまはもうない）
PSLCT	EQU	2
NMREG	EQU	3
NMCLR	EQU	4
NMCPY	EQU	5
TSVE	EQU	6
GMAP	EQU	7
PEACH	EQU	8
LOVED	EQU	9
KABE1	EQU	$0A
GPLAY	EQU	$0B
;( for CGB )
ITSEL	EQU	$0C
PRN	EQU	$0D
GEKI00	EQU	$0E
GEKI01	EQU	$0F
GEKI02	EQU	$10
GEKI03	EQU	$11
GEKI04	EQU	$12
GEKI05	EQU	$13
GEKI06	EQU	$14
GEKI07	EQU	$15
GEKI08	EQU	$16
GEKI09	EQU	$17
GEKI10	EQU	$18
GEKI11	EQU	$19
GEKI12	EQU	$1A
;
;************************************************
;*	クジラ壁画				*
;************************************************
KABE1S
	CALL	KABE1SB
;
	JP  	MSSUBS
;
;************************************************
;*	ピーチ写真				*
;************************************************
PEACHS
	CALL	PEACHSB
;
	JP  	MSSUBS
;
;************************************************
;*	海岸デモ				*
;************************************************
LOVEDM
	CALL	LOVEDEMO
;
	JP  	MSSUBS
;
;************************************************
;*	地上マップ表示				*
;************************************************
GRMAP
	CALL	GRMAPSB
;
	JP  	MSSUBS
;
;************************************************
;*						*
;************************************************
TSAVE
		ld	a,:TSAVESB
		call	PBSET
	JP  	TSAVESB
;
;************************************************
;*	オープニング				*
;************************************************
OPNING
	JP  	OPENING		; (CGB) ZPLSUB に移動
;
;************************************************
;*	エンディング				*
;************************************************
ENDINGS
	LD	A,$17
	CALL	PBSET
;
	CALL  	ENDING
;
	JP  	MSSUBS
;=============================
ENEMYL
	LD	A,$03
	LD	($2100),A
	LD	A,$17
ENL10
	PUSH	AF
	CALL	ENEMY
	POP	AF
	JP  	PBSET
;=============================
ENEMYL1
	LD	A,$03
	LD	($2100),A
	LD	A,$01
	JR	ENL10
;=============================
ENEMYL2
	LD	A,$03
	LD	($2100),A
	LD	A,$02
	JR	ENL10

;************************************************
;*	プレイヤーセレクト			*
;************************************************
PLSLCT
	JP  	PLSLCTS
;
;*************************************************
;*      NAME REGIST 名前登録                     *
;*************************************************
NMREGI
	JP  	NMREGIS
;
;************************************************
;*	NAME CLEAR データ消去			*
;************************************************
NMCLER
	JP  	NMCLERS
;
;************************************************
;*	NAME COPY データコピー			*
;************************************************
NMCOPY
	JP  	NMCOPYS
;
;****************************************
;*       GAME Play      	        *
;****************************************
GMPLAY ;PLINIT
	LD	A,$14
	LD	($2100),A
	CALL	FADECK
	CALL	EXSEST	;特殊地形SE set
;
	LD	A,$01
	CALL	PBSET
	JP  	GPSUB
;
;****************************************
;*	アイテムセレクト (CGB)		*
;****************************************
ITEMSEL
	LD	A,$20
	CALL	PBSET

	JP	ITEM_SELECT

;****************************************
;*	ポケットプリンタ (CGB)		*
;****************************************
PRINTER
	LD	A,:PRINTER_MAIN
	CALL	PBSET

	CALL	PRINTER_MAIN

	JP	MSSUBS

;****************************************
;*	寸劇				*
;****************************************
GEKI_MD
	LD	A,:GEKI_MODE
	CALL	PBSET

	JP	GEKI_MODE

;****************************************
;*       GAME Play  Main                *
;****************************************
GPMAIN   ;PLAY00
	LD	A,$02
	CALL	PBSET	;For exstra sub!
;
	LD	A,(MSGEFG)
	AND	A
	JR	NZ,PLY0F0
;
	LD	HL,DJMSTM
	LD	A,(HL)
	AND	A
	JR	Z,PLYD00
;
	LD	A,(WNDYPS)
	CP	$80
	JR	NZ,PLYD00
;
	LD	A,(WNDFLG)
	AND	A
	JR	NZ,PLYD00
;
	DEC	(HL)
	JR	NZ,PLYD00
;
	LD	A,$01
	LD	($2100),A
	CALL	DJMSCK	;ダンジョン案内メッセージセット!
	CALL	PBRETN
PLYD00
	LD	A,(MSGEFG)
	AND	A
	JR	NZ,PLY0F0
;
	LD	A,(DJCLTM)
	AND	A
	JR	Z,PLY0F0
;
	LD	HL,PLSTOP
	LD	(HL),$02
;
	DEC	A
	LD	(DJCLTM),A
	JR	NZ,PLY0F0
;
	JP	NXGOTO
;
PLY0F0
	LD	HL,PLFLSH
	LD	A,(HL)
	AND	A
	JR	Z,PLY000
	DEC	(HL)
PLY000
	LD	A,(PLXPSL)
	LD	(PLSVXL),A
	LD	A,(PLYPSL)
	LD	(PLSVYL),A
	LD	HL,PLZPSL
	SUB	(HL)
	LD	(PLDSYP),A
;
	CALL	WINDOW	; Item window 
;
	XOR	A
	LD	(PKCRX1),A
	LD	(PLDSXD),A
	LD	(PLDSYD),A
;
	LD	HL,PLFLPL
	RES	7,(HL)
	LD	HL,PLFLPR
	RES	7,(HL)
;
	CALL	DOORSUB	; Dandyon door open sub !
;
	LD	A,$2
	CALL	PBSET
	CALL	SCROLLS	; BG write & scroll
;
	CALL	PLAYER	; Player
;
	LD	A,(PLCAMD)
	LD	(WPLCAMD),A
;
		LD	A,$20
		LD	($2100),A
		CALL	PLY100_SUB
;
;1998/11/10;	XOR	A
;1998/11/10;;;;	LD	(PRTBMFG),A	; ROT  shot falg clear !
;1998/11/10;	LD	(BOMBFG),A	; Bomber  shot falg clear !
;1998/11/10;	LD	(BUMEFG),A	; Bomber  shot falg clear !
;1998/11/10;	LD	(PFUCKFG),A	; Bomber  shot falg clear !
;1998/11/10;	LD	(PLCAMD),A	; Player cach flag 
;1998/11/10;;;	LD	(LIKEFG),A	; LIKE LIKE CACH flag 
;1998/11/10;	LD	(SLIMCNT),A	; Boss small slime set count
;1998/11/10;;
;1998/11/10;	LD	A,(PLOSHI)
;1998/11/10;	AND	A
;1998/11/10;	JR	Z,PLY100
;1998/11/10;	DEC	A
;1998/11/10;	LD	(PLOSHI),A	; Player oshi flag 
;1998/11/10;PLY100
;
	LD	A,$19
	CALL	PBSET
;
	CALL	BELTCK	; ベルトコンベアー転送計算！(IN ENMY7)
;
	CALL	ENEMY	; Enemy
;
	LD	A,$2
	CALL	PBSET
;
	CALL	EXSTRA	; Exstra 
;
	LD	HL,VRAMD+1
	LD	A,(FRCNT)
	AND	$3		;なぜ４フレームに１回なのか？
	OR	(HL)
	JR	NZ,LFU030
;
	LD	A,(PLMODE)
	CP	PMOVE+2
	JR	NC,LFU030
;
	LD	C,$01
	LD	B,$00
	LD	E,$00
;
	LD	A,(FRCNT)
	AND	%00000100	;なぜ４フレームに１回なのか？
	JR	Z,LFU020
;
	DEC	C
	DEC	E
LFU020
		LD	A,$20
		LD	($2100),A
		CALL	ITSEL_SUB	; BG chenge
;;;CGB;;;	CALL	ITEMDP2		; BG chenge
;
LFU030
	LD	A,$14
	CALL	PBSET
	CALL	TILTCK
MSSUBS
	LD	A,$0F
	CALL	PBSET	;文字キャラクターバンク
;
	CALL	MESEGE

;------------------------------------------
		LD	A,(CGBFLG)
		AND	A
		RET	Z

		LD	A,:MORI_COL_CHANGE
		CALL	PBSET
		jp	MORI_COL_CHANGE	; 迷いの森カラーチェンジ


;;;(CGB)	CALL	MORI_COL_CHANGE	; (CGB) 迷いの森カラーチェンジ
;;;(CGB);------------------------------------------
;;;(CGB)
;;;(CGB)	RET
;****************************************
;*       PLAYER		                *
;****************************************
DMMSDT
	DB	$08,$0E,$99,$28,$EC  ;,$8E
;
PLAYER
	LD	A,(PLYPSL)
	LD	HL,PLZPSL
	SUB	(HL)
	LD	(PLYPS2),A
;
	LD	A,(DEMOFG)
	AND	A
	JR	Z,PY1080
;
	LD	A,(MSGEFG)
	AND	A
	JR	NZ,PY1010
;
	LD	HL,DEMOTM
	DEC	(HL)
	LD	A,(HL)
	CP	$02
	JR	NZ,PY100E
;
	LD	A,(DEMOFG)
	LD	E,A
	LD	D,$00
	LD	HL,DMMSDT-1
	ADD	HL,DE
	LD	A,(HL)
	CALL	MSGCHK
;
	LD	A,$01
PY100E
	AND	A
	JR	NZ,PY1010
;
	XOR	A
	LD	(DEMOFG),A
	LD	(ENSTFG),A
;
	JR	PY1080
PY1010
	LD	A,(DEMOFG)
	LD	(ENSTFG),A
	DEC	A
	RST	0
	DW	KNPWUPS ;1 剣パワーアップデモ
	DW	ITEMUP	;2 何に使うかわからんアイテムデモ(きのこ）
	DW	PWDRUP	;3 魔法の粉持ち上げデモ！ 
	DW	ITEMUP	;4 何に使うかわからんアイテムデモ（かいがら）
	DW	DEFUP	;5 木のみ守りアップ！
;========================================
PY1080
	LD	A,(KEYA1)
	AND	%10110000
	JR	NZ,GMP0000
;
	LD	A,(KEYA1)
	AND	%01000000
	JR	Z,GMP0000
;
	LD	A,(GMPTIM)
	INC	A
	LD	(GMPTIM),A
	CP	$04
	JR	C,GMP00001
;
	LD	A,(PLSTOP)
	CP	$02
	JR	Z,GMP0000
;
	LD	A,(PLCHPT)
	CP	$FF
	JR	Z,GMP0000
;
	LD	A,(PLMODE)
	CP	PMOVE+2
	JR	NC,GMP0000
;
	LD	A,(MSGEFG)
	LD	HL,ITEMNOT
	OR	(HL)
	LD	HL,SCRLFG 
	OR	(HL)
	JR	NZ,GMP0000
;
		LD	A,(NYOTIM)
		AND	A		; ニョロニョロびりびり中？
		JR	NZ,GMP0000	; ＹＥＳ
;
	XOR	A
	LD	(SBHR),A
	LD	(SBCNT),A
;
	LD	(ITMODE),A
	LD	A,GMAP
	LD	(GMMODE),A
;
	LD	A,$02
	LD	($2100),A
	CALL	PLIDBC2
	CALL	PLCSET
	CALL	ENEMY
;
	POP	AF
;==============================
	RET
GMP0000
	XOR	A
	LD	(GMPTIM),A
GMP00001
;=================================
	LD	A,(PLTIM0)
	AND	A
	JR	Z,PLAYER00
;
	DEC	A
	LD	(PLTIM0),A
PLAYER00
	LD	A,(KNKNTM)
	AND	A
	JR	Z,PLAYER01
;
	DEC	A
	LD	(KNKNTM),A
PLAYER01
	LD	A,(MSGEFG)
	AND	A
	JP	NZ,PLWPCS
;
	LD	A,(SCRLFG)
	AND	A
	JP	NZ,PL0B0
;
	LD	A,(PLMODE)
	CP	POVER
	JR	Z,PLAYER10
;
	LD	A,(HARTCT)
	LD	HL,SHOPFG
	OR	(HL)
	LD	HL,WNDFLG
	OR	(HL)
	JR	NZ,PLAYER08
;
	LD	A,POVER
	LD	(PLMODE),A
	LD	A,$7F+$40
	LD	(PLTIM0),A
	LD	A,$10
	LD	(FADECT),A
;
	XOR	A
	LD	(PLFLSH),A
	LD	(PLSTAT),A
;
		LD	(DARKFLG),A
		LD	(DARKFCT),A
		LD	(NYOTIM),A	; ニョロニョロびりびり
;
	CALL	SOUNDCLR	;(S)
;
	LD	A,$08
	LD	(SOUND2),A	;(S)
PLAYER08
	LD	A,(PLMODE)
PLAYER10
	RST	0
	DW	PLMOVE
	DW	PLSWIMS	; Swiming !
	DW	PLTOBIS	; Tobiori 
	DW	PLINDR1 ; In room  1
	DW	PLINDR2 ;          2
	DW	KURDORS	; Kurukuru door !
	DW	PLFOLES	; Fole fall !
	DW	PLOVER	; Game over
	DW	PLOBORS	; Mizu obore
	DW	PLWARPS	; 固定ワープ
	DW	PLBOXER	; ボクサーパンチぶっ飛び！
;
;- - - - - - - - - - - - - - - - - - -
PMOVE	EQU	$0
PSWIM	EQU	$1
PTOBI	EQU	$2
PINDR1	EQU	$3
PINDR2	EQU	$4
POTDR1	EQU	3  ;$5
POTDR2	EQU	4  ;$6
KURUD	EQU	5  ;$7
PFOLE	EQU	6  ;$8
POVER	EQU	7  ;$8
POBOR	EQU	8
PWARP	EQU	9
PBOXER	EQU	$A
; - - - In scroll - - - - - -
PL0B0
;========================================
	CALL	PLWPCS		; Wepon character set
	JP   	PLCSET
;=============================
PLWARPS
	LD	A,$19
	CALL	PBSET
;
	JP	PLWARP
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	Game over  			     %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
PLOVER
	LD	A,$01
	CALL	PBSET
	JP	PLOVERS
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	歩く				     %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
PLMOVE
		LD	A,$036
		LD	($2100),A
		CALL	GEKI_CHECK
		AND	A
		RET	Z
;
	LD	A,$02
	CALL	PBSET
;
	jp	PLMOVES
;;;(CGB)	CALL	PLMOVES
;;;(CGB)	RET
;
;---------------------------------
PKEN	EQU	$01
PBOMB	EQU	$02
PBULE	EQU	$03
PTATE	EQU	$04
PYAST	EQU	$05
PFUCK	EQU	$06
PROD	EQU	$07
PSHSE	EQU	$08
POKAR	EQU	$09
PHANE	EQU	$0A
PSKOP	EQU	$0B
PMGIC	EQU	$0C
PBUME	EQU	$0D
;- - - - - - - - - - - - - - - - - 
PLTOOL
	LD	A,(SHOPFG)
	LD	HL,ITEMNOT
	OR	(HL)
	LD	HL,PFUCKFG
	OR	(HL)
	RET	NZ
;
	LD	A,(DUSHFG)
	AND	A
	JR	Z,TOL158
;
	LD	A,(ITEMA)
	CP	PKEN
	JR	Z,TOL120
	LD	A,(ITEMB)
	CP	PKEN
	JR	Z,TOL120
;
	LD	A,(ITEMA)
	CP	PTATE
	JR	Z,TOL110
	LD	A,(ITEMB)
	CP	PTATE
	JR	NZ,TOL150
;
TOL110
	CALL	TATEST
	JR	TOL150
TOL120
	LD	A,(PCUTFG)
	DEC	A
	CP	$04
	JR	C,TOL150
;
	LD	A,$4+1
	LD	(PCUTFG),A
	LD	(WCUTFG),A	; Ken kamae set !
TOL150
	JR	TOL160
;=============================================
TOL158
	XOR	A
	LD	(TATEON),A
	LD	(TATEFG),A
;
TOL160
	LD	A,(SLIMFG)
	AND	A
	JP	NZ,PLTL20	;スライムひっついた？
;				;NO.
	LD	A,(PLCAMD)
	AND	A ;OR	(HL) ;AND	A
	JP	NZ,PLTL20
;
	LD	A,(PCUTFG)
	AND	A
	JR	Z,PLTL1A
;
	CP	$03
	JR	NZ,PLTL1A
;
	LD	A,(PCUTTM)	; yes !
	CP	$03
	JR	NC,PLTL1B
;
PLTL1A
	LD	A,(PLSTOP)
	AND	A
	JP	NZ,PLTL20
PLTL1B
;===Level input====
	LD	A,(ITEMB)
	CP	PSHSE
	JR	NZ,PLTL015
;
	LD	A,(KEYA1)
	AND	%00100000
	JR	Z,PLTL01
;
	CALL	DUSHST
	JR	PLTL015
;-- - - - - - - - - - - - - -
PLTL01
	XOR	A
	LD	(DUSHCT),A
PLTL015
	LD	A,(ITEMA)
	CP	PSHSE
	JR	NZ,PLTL0C
;
	LD	A,(KEYA1)
	AND	%00010000
	JR	Z,PLTL08
;
	CALL	DUSHST
	JR	PLTL0C
PLTL08
	XOR	A
	LD	(DUSHCT),A
PLTL0C
	LD	A,(ITEMA)
	CP	PTATE
	JR	NZ,PLTL0E
;
	LD	A,(TATLEV)
	LD	(TATEFG),A
;
	LD	A,(KEYA1)
	AND	%00010000
	JR	Z,PLTL0E
;
	LD	A,(MSCRFG)
	CP	$01
	JR	Z,PLTL0E
	CP	$02
	JR	Z,PLTL0E
;
	CALL	TATEST
PLTL0E
	LD	A,(ITEMB)
	CP	PTATE
	JR	NZ,PLTL0F
;
	LD	A,(TATLEV)
	LD	(TATEFG),A
;
	LD	A,(KEYA1)
	AND	%00100000
	JR	Z,PLTL0F
;
	CALL	TATEST
PLTL0F
;===Triger input====
	LD	A,(KEYA2)
	AND	%00100000
	JR	Z,PLTL10
;
	LD	A,(MSCRFG)
	CP	$02
	JR	Z,PLTL10	; タカラ＆カンバン ?
;				; no !
	LD	A,(ITEMB)
	CALL	TLCHEK
;-- - - - - - - - - - - - - -
PLTL10
	LD	A,(KEYA2)
	AND	%00010000
	JR	Z,PLTL201
;
	LD	A,(MSCRFG)
	CP	$01
	JR	Z,PLTL201	; Peaple cros ?
	CP	$02
	JR	Z,PLTL201	; Peaple cros ?
;				; no !
	LD	A,(ITEMA)
	CALL	TLCHEK
;
PLTL201
	LD	A,(KEYA1)
	AND	%00100000
	JR	Z,PLTL110
;
	LD	A,(ITEMB)
	CALL	TLCHEK2
PLTL110
	LD	A,(KEYA1)
	AND	%00010000
	JR	Z,PLTL120
;
	LD	A,(ITEMA)
	CALL	TLCHEK2
PLTL120
;
		LD	A,$020
		LD	($2100),A
		CALL	NEWDJ_BGCRS
		LD	A,(PBANK)
		LD	($2100),A
;
	RET
;=========================================
;-- For triger input check - -
TLCHEK
	LD	C,A
;
	CP	PKEN
	JP	Z,PCUTST
	CP	PTATE
	JP	Z,TATESDS
	CP	PBOMB
	JP	Z,BOMBRST
	CP	PBULE
	JP	Z,BULESST
	CP	PYAST
	JP	Z,PYAAAST
	CP	PBUME
	JP	Z,BUMERST
	CP	PFUCK
	JP	Z,PFUCKST
	CP	PHANE
	JP	Z,JUMPST
	CP	POKAR
	JP	Z,OKARST
	CP	PMGIC
	JP	Z,MGICPW
	CP	PSKOP  ;MEMO
	JP	Z,ANAHST ;MEMOOK
	CP	PROD
	JR	NZ,PLTL20
;
	LD	HL,PCUTFG	; Yes ! Rod start !
	LD	A,(POWDRTM)
	OR	(HL)
	JR	NZ,PLTL20
;
	LD	A,(BUMEFG)
	CP	$02
	JR	NC,PLTL20
;
	LD	A,$0E+$80
	LD	(POWDRTM),A
PLTL20
	RET
;=========================================
TATESDS
	LD	A,(PLOSHI)
	AND	A
	RET	NZ
;
	LD	A,$16
	LD	(SOUND3),A	;(S)
;
	RET
;=========================================
ANAHST  ;MEMOOK
	LD	A,(ANAHFG)
	LD	HL,PLJPFG
	OR	(HL)
	RET	NZ
;
	CALL	ANBGSB		;掘る前BGチェック！
	JR	NC,ANAHS08	;掘れない？
;				;YES !
	LD	A,$07		
	LD	(SOUND1),A	;(S) カッキーン!
	JR	ANAHS0C
;
ANAHS08
	LD	A,$0E
	LD	(SOUND3),A	;(S)
ANAHS0C
		CALL	DUSHCL2	;ヨーロッパ版で追加
;
	LD	A,$01
	LD	(ANAHFG),A
;
	XOR	A
	LD	(ANAHTM),A
ANAHS10
	RET
;=========================================
PFUCKST
	LD	A,(PFUCKFG)
;
	AND	A
	RET	NZ
	jp	FUCKSST
;;;(CGB)	CALL	FUCKSST
;;;(CGB);
;;;(CGB)PFS900
;;;(CGB)	RET
;=========================================
;-- For revel input check - -
TLCHEK2
	CP	PKEN
	RET	NZ
;------------------------------
PCUTST2
	LD	HL,PCUTFG
	LD	A,(MSCRFG)
	AND	$03
	OR	(HL)
	RET	NZ
;
	LD	A,(PCUTOF)
	AND	A
	RET	NZ
;
	XOR	A
	LD	(KENOFF),A
;
	LD	A,$4+1
	LD	(PCUTFG),A
	LD	(KENTAT),A
PCS230
	RET
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%				  %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;;;KK;;;TTCRX1
;;;KK;;;	DB	$10,$00,$08,$08
;;;KK;;;TTCRX2
;;;KK;;;	DB	$03,$03,$08,$08
;;;KK;;;TTCRY1
;;;KK;;;	DB	$08,$08,$00,$0D
;;;KK;;;TTCRY2
;;;KK;;;	DB	$08,$08,$03,$04
;---------------------------------------
TATEST
	LD	A,$1
	LD	(TATEON),A
;
	LD	A,(TATLEV)
	LD	(TATEFG),A
TATEST2
;
		LD	A,$20
		LD	($2100),A
		CALL	TATEST2_SUB
		LD	A,(PBANK)
		LD	($2100),A
		RET
;
;;;KK;;;	LD	A,(PLCMKI)
;;;KK;;;	LD	E,A
;;;KK;;;	LD	D,$0
;;;KK;;;;
;;;KK;;;	LD	HL,TTCRX1
;;;KK;;;	ADD	HL,DE
;;;KK;;;;
;;;KK;;;	LD	A,(PLXPSL)
;;;KK;;;	ADD	A,(HL)
;;;KK;;;	LD	(PKCRX1),A
;;;KK;;;;
;;;KK;;;	LD	HL,TTCRX2
;;;KK;;;	ADD	HL,DE
;;;KK;;;	LD	A,(HL)
;;;KK;;;	LD	(PKCRX2),A
;;;KK;;;;
;;;KK;;;	LD	HL,TTCRY1
;;;KK;;;	ADD	HL,DE
;;;KK;;;;
;;;KK;;;	LD	A,(PLYPS2)
;;;KK;;;	ADD	A,(HL)
;;;KK;;;	LD	(PKCRY1),A
;;;KK;;;;
;;;KK;;;	LD	HL,TTCRY2
;;;KK;;;	ADD	HL,DE
;;;KK;;;	LD	A,(HL)
;;;KK;;;	LD	(PKCRY2),A
;;;KK;;;;
;;;KK;;;	XOR	A
;;;KK;;;	LD	(KENTAT),A
;;;KK;;;;
;;;KK;;;	RET
;
;###############################################
;#					       #
;###############################################
;;;KK;;;BBSTXP	
;;;KK;;;	DB	$08,$F8,$00,$00	
;;;KK;;;BBSTYP	
;;;KK;;;	DB	$00,$00,$FD,$04	
;- - - - - - - - - - - - - - - - - - - -
BOMBRST
	LD	A,(BOMBFG)
	CP	$1  ;2
	RET	NC
;
	LD	A,(BOMBCT)
	AND	A
	JP	Z,NOSDST
;
	SUB	$1
	DAA
	LD	(BOMBCT),A
;
	LD	A,BOMBR
	CALL	PLSHST
	RET	C
;
		LD	A,$20
		LD	($2100),A
		CALL	BOMBRST_SUB
		LD	A,(PBANK)
		LD	($2100),A
		RET
;
;;;KK;;;	LD	HL,ENTIM1
;;;KK;;;	ADD	HL,DE
;;;KK;;;	LD	(HL),$10	; CACH protect !!
;;;KK;;;;
;;;KK;;;	LD	A,(BMYATM)
;;;KK;;;	AND	A
;;;KK;;;	JP	Z,BBST001	; Bomb alow chance ?
;;;KK;;;;				; Yes !
;;;KK;;;	XOR	A
;;;KK;;;	LD	(BMYATM),A
;;;KK;;;;
;;;KK;;;	LD	A,(YAINDX)	; Old alow -> Bomb alow chenge !
;;;KK;;;	LD	C,A
;;;KK;;;	LD	B,D
;;;KK;;;	LD	HL,ENSTAT
;;;KK;;;	ADD	HL,BC
;;;KK;;;	LD	(HL),$01
;;;KK;;;	RET
;;;KK;;;;
;;;KK;;;BYTM	EQU	$06	; Bomb alow chance time !
;;;KK;;;;
;;;KK;;;BBST001
;;;KK;;;	LD	A,BYTM ;$06
;;;KK;;;	LD	(BMYATM),A
;;;KK;;;;
;;;KK;;;	LD	A,E
;;;KK;;;	LD	(BMINDX),A
;;;KK;;;;
;;;KK;;;	LD	A,$0C
;;;KK;;;	LD	(POWDRTM),A
;;;KK;;;;
;;;KK;;;	LD	HL,ENTIM0
;;;KK;;;	ADD	HL,DE
;;;KK;;;;;	LD	A,$FF
;;;KK;;;	LD	(HL),$A0  ;$FF  ;A
;;;KK;;;;
;;;KK;;;	LD	HL,ENCHPT
;;;KK;;;	ADD	HL,DE
;;;KK;;;;;	XOR	A
;;;KK;;;	LD	(HL),D ;$00 ;A
;;;KK;;;;
;;;KK;;;	LD	HL,ENTIM4
;;;KK;;;	ADD	HL,DE
;;;KK;;;	LD	(HL),$3 ; Water up protect
;;;KK;;;;
;;;KK;;;;K	LD	A,(YKFLAG)
;;;KK;;;;K	AND	A
;;;KK;;;;K	JR	NZ,BBS0888
;;;KK;;;;;K
;;;KK;;;;K	LD	HL,ENZSPD
;;;KK;;;;K	ADD	HL,DE
;;;KK;;;;K	LD	(HL),$10  ;A
;;;KK;;;BBS088
;;;KK;;;;K	LD	A,(PLCBFG)
;;;KK;;;;K	AND	A
;;;KK;;;;K	JR	NZ,BBS089
;;;KK;;;;
;;;KK;;;BBS0888
;;;KK;;;;K	LD	A,$08
;;;KK;;;;K	LD	(SOUND1),A	;(S) Bomb Shot !
;;;KK;;;;
;;;KK;;;;K	LD	A,(KEYA1)
;;;KK;;;;K	AND	%00001111
;;;KK;;;;K	JR	NZ,BBS090
;;;KK;;;;
;;;KK;;;	LD	A,(YKFLAG)
;;;KK;;;	AND	A
;;;KK;;;	JR	NZ,BBS089
;;;KK;;;;
;;;KK;;;	LD	A,$09
;;;KK;;;	LD	(SOUND1),A	;(S) Bomb set !
;;;KK;;;	JR	BBS08C
;;;KK;;;;
;;;KK;;;BBS089
;;;KK;;;	LD	HL,ENZPSL
;;;KK;;;	ADD	HL,DE
;;;KK;;;	LD	(HL),D
;;;KK;;;BBS08C
;;;KK;;;	LD	HL,ENXSPD
;;;KK;;;	ADD	HL,DE
;;;KK;;;	LD	(HL),D
;;;KK;;;	LD	HL,ENYSPD
;;;KK;;;	ADD	HL,DE
;;;KK;;;	LD	(HL),D	
;;;KK;;;;
;;;KK;;;	LD	HL,ENZSPD
;;;KK;;;	ADD	HL,DE
;;;KK;;;	LD	(HL),D
;;;KK;;;;
;;;KK;;;	LD	A,(PLCMKI)
;;;KK;;;	LD	C,A
;;;KK;;;	LD	B,D
;;;KK;;;	LD	HL,BBSTXP
;;;KK;;;	ADD	HL,BC
;;;KK;;;	LD	A,(PLXPSL)
;;;KK;;;	ADD	A,(HL)
;;;KK;;;	LD	HL,ENXPSL
;;;KK;;;	ADD	HL,DE
;;;KK;;;	LD	(HL),A
;;;KK;;;;
;;;KK;;;	LD	HL,BBSTYP
;;;KK;;;	ADD	HL,BC
;;;KK;;;	LD	A,(PLYPSL)
;;;KK;;;	ADD	A,(HL)
;;;KK;;;	LD	HL,ENYPSL
;;;KK;;;	ADD	HL,DE
;;;KK;;;	LD	(HL),A
;;;KK;;;;
;;;KK;;;;	LD	A,(PLCMKI)
;;;KK;;;;	LD	C,A
;;;KK;;;;	LD	B,D
;;;KK;;;;	LD	HL,BBSTXS
;;;KK;;;;	ADD	HL,BC
;;;KK;;;;	LD	A,(HL)
;;;KK;;;;;
;;;KK;;;;	LD	HL,ENXSPD
;;;KK;;;;	ADD	HL,DE
;;;KK;;;;	LD	(HL),A
;;;KK;;;;;
;;;KK;;;;	LD	HL,BBSTYS
;;;KK;;;;	ADD	HL,BC
;;;KK;;;;	LD	A,(HL)
;;;KK;;;;	LD	HL,ENYSPD
;;;KK;;;;	ADD	HL,DE
;;;KK;;;;	LD	(HL),A
;;;KK;;;;;
;;;KK;;;BBS090
;;;KK;;;	RET
;
;###############################################
;#					       #
;###############################################
BULESST
	RET
;
;################################################################
;#	リンクがブーメランを投げる				#
;################################################################
;;;KK;;;BRSXSD
;;;KK;;;	DB	$18,$E8,$00
;;;KK;;;BRSYSD
;;;KK;;;	DB	$E8,$18,$00
;
BUMERST
	LD	A,(BUMEFG)
	AND	A
	RET	NZ
;
	LD	A,BUMER
	CALL	PLSHST
	RET	C
;
		LD	A,$20
		LD	($2100),A
		CALL	BUMERST_SUB
		LD	A,(PBANK)
		LD	($2100),A
		RET
;
;;;KK;;;	LD	HL,ENTIM0
;;;KK;;;	ADD	HL,DE
;;;KK;;;;;	LD	A,$28
;;;KK;;;	LD	(HL),$28  ;A
;;;KK;;;;
;;;KK;;;	LD	C,$4
;;;KK;;;	LD	B,$0
;;;KK;;;	LD	A,(KEYA1)
;;;KK;;;BRS080
;;;KK;;;	SRL	A
;;;KK;;;	JR	NC,BRS070
;;;KK;;;;
;;;KK;;;	INC	B
;;;KK;;;BRS070
;;;KK;;;	DEC	C
;;;KK;;;	JR	NZ,BRS080
;;;KK;;;;
;;;KK;;;	LD	A,B
;;;KK;;;	CP	$2
;;;KK;;;	JR	C,BRS090
;;;KK;;;;
;;;KK;;;	LD	A,(KEYA1)
;;;KK;;;	AND	%00000011
;;;KK;;;	LD	C,A
;;;KK;;;	LD	B,$0
;;;KK;;;	LD	HL,BRSXSD-1
;;;KK;;;	ADD	HL,BC
;;;KK;;;	LD	A,(HL)
;;;KK;;;	LD	HL,ENXSPD
;;;KK;;;	ADD	HL,DE
;;;KK;;;	LD	(HL),A
;;;KK;;;;
;;;KK;;;	LD	A,(KEYA1)
;;;KK;;;	SRL	A
;;;KK;;;	SRL	A
;;;KK;;;	AND	%00000011
;;;KK;;;	LD	C,A
;;;KK;;;	LD	B,$0
;;;KK;;;	LD	HL,BRSYSD-1
;;;KK;;;	ADD	HL,BC
;;;KK;;;	LD	A,(HL)
;;;KK;;;	LD	HL,ENYSPD
;;;KK;;;	ADD	HL,DE
;;;KK;;;	LD	(HL),A
;;;KK;;;BRS090
;;;KK;;;	RET
;
;###############################################
;#					       #
;###############################################
PYSXAD
	DB	$00,$00,$00,$00
PYSYAD
	DB	$00,$00,$00,$00
PYSXSD
	DB	$20,$E0,$00,$00
PYSYSD
	DB	$00,$00,$E0,$20
PYSXS2
	DB	$30,$D0,$00,$00
	DB	$40,$C0,$00,$00
PYSYS2
	DB	$00,$00,$D0,$30
	DB	$00,$00,$C0,$40
;- - - - - - - - - - - - - - - - -
PYAAAST
	LD	A,(PYAATM)
	AND	A
	RET	NZ
;
	LD	A,(BUMEFG)
	CP	$02
	JR	NC,PYST900
;
	LD	A,$10
	LD	(PYAATM),A
;
	LD	A,(YAAACT)
	AND	A
	JP	Z,NOSDST
;
	SUB	$1
	DAA
	LD	(YAAACT),A
;
	CALL	PLCMST	;PLCMKI set
;
	LD	A,PYAAA
	CALL	PLSHST
	RET	C
;
	LD	A,E
	LD	(YAINDX),A
;
	LD	A,(BMYATM)
	AND	A
	JR	Z,PYST001	; Bom alow chance ?
;				; Yes !
	LD	A,(BMINDX)
	LD	C,A
	LD	B,D
	LD	HL,ENMODE
	ADD	HL,BC
	LD	(HL),B		; Old bomb clear !
;
	LD	HL,ENSTAT
	ADD	HL,DE
	LD	(HL),$01
;
	XOR	A
	JR	PYST002
;- - - - - - - - - - - - - - -
PYST001
	LD	A,$0A
	LD	(SOUND3),A	;(S)
;
	LD	A,BYTM ;$04
PYST002
	LD	(BMYATM),A
;
	LD	A,(PLCMKI)
	LD	C,A
	LD	B,$00
;-------------------------------
TLSDST
	LD	A,(POWRFG)
	CP	$01
	JR	NZ,PYST800
;
	LD	A,C
	ADD	A,$4
	LD	C,A
PYST800
	LD	HL,PYSXS2
	ADD	HL,BC
;
	LD 	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,PYSYS2
	ADD	HL,BC
;
	LD 	A,(HL)
	LD	HL,ENYSPD
	ADD	HL,DE
	LD	(HL),A
PYST900
	RET
;===================================
PLSHST
	CALL	ENIDSHL
	RET	C
;
	LD	A,$0C
	LD	(POWDRTM),A
;
	PUSH	BC
;
	LD	A,(PLCMKI)
	LD	C,A
	LD	B,$00
;
	LD	HL,PYSXAD
	ADD	HL,BC
;
	LD	A,(PLXPSL)
	ADD	A,(HL)
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,PYSYAD
	ADD	HL,BC
;
	LD	A,(PLYPSL)
	ADD	A,(HL)
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	A,(PLZPSL)
	INC	A
	LD	HL,ENZPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,PYSXSD
	ADD	HL,BC
;
	LD 	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,PYSYSD
	ADD	HL,BC
;
	LD 	A,(HL)
	LD	HL,ENYSPD
	ADD	HL,DE
	LD	(HL),A
;
	LD 	A,(PLCMKI)
	LD	HL,ENCHPT
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,ENMUKI
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,ENSHMK
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,ENBCOF
	ADD	HL,DE
	LD	(HL),$01
;
	POP	BC
;
	SCF
	CCF	; CLC
PYS090
	RET
;
;################################################################
;#	リンクが魔法の粉を使う					#
;################################################################
;;;KK;;;PWSXAD
;;;KK;;;	DB	$0E,$F2,$00,$00
;;;KK;;;PWSYAD
;;;KK;;;	DB	$00,$00,$F4,$0C
;
MGICPW
	LD	A,(POWDRTM)
	AND	A
	RET	NZ
;
	LD	A,(KINOKFG)
	AND	A
	JR	Z,MGP100	; きのこ持っている？
;-----------------------------------------
	LD	A,(PLZPSL)
	AND	A
	RET	NZ
;
	LD	A,$02
CACHDMS
	LD	(DEMOFG),A
;				; Yes !
	LD	A,$2A
	LD	(DEMOTM),A	; なんにもつかえないデモ
	RET
;
MGP100
	LD	A,(TUBOCT)
	AND	A
	JP	Z,NOSDST
;
	LD	A,POWDR
	CALL	ENIDSHL
	RET	C
;
		LD	A,$20
		LD	($2100),A
		CALL	MGICPW_SUB
		LD	A,(PBANK)
		LD	($2100),A
		RET
;
;;;KK;;;	LD	A,$05
;;;KK;;;	LD	(SOUND1),A	;(S)
;;;KK;;;;
;;;KK;;;	LD	A,$0E
;;;KK;;;	LD	(POWDRTM),A
;;;KK;;;;
;;;KK;;;	LD	A,(TUBOCT)
;;;KK;;;;;	DEC	A
;;;KK;;;	SUB	$01
;;;KK;;;	DAA
;;;KK;;;	LD	(TUBOCT),A
;;;KK;;;	JR	NZ,MGCL20	;なくなった？
;;;KK;;;;
;;;KK;;;;;	LD	A,$0B
;;;KK;;;;;	LD	(CHTRF2),A				
;;;KK;;;;
;;;KK;;;	LD	HL,ITEMB	;アイテム枠から消去！
;;;KK;;;;
;;;KK;;;	LD	A,(HL)
;;;KK;;;	CP	PMGIC
;;;KK;;;	JR	NZ,MGCL10
;;;KK;;;	LD	(HL),$00
;;;KK;;;MGCL10
;;;KK;;;	INC	HL
;;;KK;;;	LD	A,(HL)
;;;KK;;;	CP	PMGIC
;;;KK;;;	JR	NZ,MGCL20
;;;KK;;;	LD	(HL),$00
;;;KK;;;MGCL20
;;;KK;;;	PUSH	BC
;;;KK;;;;
;;;KK;;;	LD	A,(PLCMKI)
;;;KK;;;	LD	C,A
;;;KK;;;;
;;;KK;;;	LD	HL,PWSXAD
;;;KK;;;	ADD	HL,BC
;;;KK;;;;
;;;KK;;;	LD	A,(PLXPSL)
;;;KK;;;	ADD	A,(HL)
;;;KK;;;	LD	HL,ENXPSL
;;;KK;;;	ADD	HL,DE
;;;KK;;;	LD	(HL),A
;;;KK;;;;
;;;KK;;;	LD	HL,PWSYAD
;;;KK;;;	ADD	HL,BC
;;;KK;;;;
;;;KK;;;	LD	A,(PLYPSL)
;;;KK;;;	ADD	A,(HL)
;;;KK;;;	LD	HL,ENYPSL
;;;KK;;;	ADD	HL,DE
;;;KK;;;	LD	(HL),A
;;;KK;;;;
;;;KK;;;	LD	A,(PLZPSL)
;;;KK;;;	LD	HL,ENZPSL
;;;KK;;;	ADD	HL,DE
;;;KK;;;	LD	(HL),A
;;;KK;;;;
;;;KK;;;	LD	HL,ENTIM0
;;;KK;;;	ADD	HL,DE
;;;KK;;;	LD	(HL),$17
;;;KK;;;;
;;;KK;;;	POP	BC
;;;KK;;;PWS090
;;;KK;;;	RET
;===========================================
;
;################################################################
;#	リンクがジャンプする					#
;################################################################
PLDSJX
	DB	$1C,$E4,$00,$00	;ダッシュジャンプスピード
PLDSJY
	DB	$00,$00,$E4,$1C
;
JUMPST
	LD	A,(WHASGFG)
	CP	$07
	RET	Z
;
	LD	A,(PLJPFG)
	AND	A
	RET	NZ
;
	LD	A,$1
	LD	(PLJPFG),A
;
	XOR	A
	LD	(PLJCPT),A
	LD	(PLJCCT),A
;
	LD	A,$0D
	LD	(SOUND1),A	;(S)
;
	LD	A,(YKFLAG)
	AND	A
	JR	Z,JS0010
;
	CALL	JS0010
	LD	A,(KEYA1)
	AND	$03
	LD	A,$EA
	JR	Z,YJS010
	LD	A,$E8
YJS010
	LD	(PLYSPD),A
;
	XOR	A
	LD	(PLZSPD),A
;
	CALL	MVCALC
	LD	A,$02
	CALL	PBSET
	jp	PLBGCK
;;;(CGB)	CALL	PLBGCK
;;;(CGB);
;;;(CGB)	RET
JS0010
	LD	A,$20
	LD	(PLZSPD),A
;
	LD	A,(DUSHFG)
	AND	A
	RET	Z
;
	LD	A,(PLCMKI)
	LD	E,A
	LD	D,B
	LD	HL,PLDSJX
	ADD	HL,DE
	LD	A,(HL)
	LD	(PLXSPD),A
;	
	LD	HL,PLDSJY
	ADD	HL,DE
	LD	A,(HL)
	LD	(PLYSPD),A
JPS010
	RET
;=====================================================
KENSDD	;剣振りサウンド ランダム セット！
	DB	$02,$14,$15,$18
;
PCUTST
	LD	A,(CARITM)
	LD	HL,SPCTTM
	OR	(HL)
	RET	NZ
;
	LD	A,$03  ;(PCTTMD)
	LD	(PCUTTM),A
;
	LD	A,$01
	LD	(PCUTFG),A
	LD	(KENTAT),A
;
	XOR	A
	LD	(PCUTOF),A	; Oshippanashi reset
	LD	(KENOFF),A
;
	CALL	RNDSUB
	AND	$03
	LD	E,A
	LD	D,$00
	LD	HL,KENSDD
	ADD	HL,DE
	LD	A,(HL)
	LD	(SOUND3),A	;(S)
;
	CALL	PLCMST
;
	LD	A,(PLJPFG)
	AND	A
	JR	NZ,PCUT10
;
	CALL	DUSHCL
	CALL	PLSDCL
PCUT10
	LD	A,(BUMEFG)
	AND	A
	RET	NZ
;
	LD	A,(HARTFUL)
	AND	A
	RET	Z
;
	LD	A,(KENLEV)
	CP	$02
	RET	NZ
;
	LD	A,KENBM
	CALL	PLSHST	
;
	XOR	A
	LD	(POWDRTM),A
	RET
;=====================================================
;=================================
PLCMST
	LD	A,(KEYA1)
	AND	$0F
	LD	E,A
	LD	D,$00
;
	LD	HL,PLCMDT
	ADD	HL,DE
	LD	A,(HL)
	CP	$0F
	JR	Z,PCSST00
;
	LD	(PLCMKI),A
PCSST00
	RET
;=======================================
;============================================
;=					    =
;============================================
KNBGXD
	DB	$16,$FA,$08,$08	; For normal cut
;;;		  0   1   2   3   4   5   6   7
	DB	$16,$16,$08,$FA,$FA,$FA,$08,$16	; For spin cut !
KNBGYD
	DB	$08,$08,$FA,$16
	DB	$08,$16,$16,$16,$08,$FA,$FA,$FA
;
KNBGCK
	CALL	KNBGCKL
	LD	A,$02
	JP	PBSET
;=====================================
KNBGCKL
	LD	A,(KNBGTM)
	AND	A
	RET	NZ
;
	LD	A,(DUSHFG)
	AND	A
	JR	NZ,KBCKF0
;
	LD	A,(WCUTFG)
	CP	$4+1
	RET	Z   ;JR	Z,PCED10	; ken kamae ?
;
KBCKF0
	LD	A,(SPCTTM)
	AND	A
	JR	Z,KBCK02	; spin cut ?
;				; yes !
	LD	A,(PKENPT)
	ADD	A,$4
	JR	KBCK03
KBCK02
	LD	A,(PLCMKI)
KBCK03
	LD	E,A
	LD	D,$00
;
	LD	HL,KNBGXD
	ADD	HL,DE
	LD	A,(PLXPSL)
	ADD	A,(HL)
	SUB	$08
	AND	$F0
	LD	(OBJXP),A
;
	SWAP	A
	LD	C,A
;
	LD	HL,KNBGYD
	ADD	HL,DE
	LD	A,(PLYPSL)
	ADD	A,(HL)
	SUB	$10
	AND	$F0
	LD	(OBJYP),A
;
	OR	C
	LD	E,A
	LD	HL,BGUNDT+$11
	ADD	HL,DE
	LD	A,H
	CP	$D7
	RET	NZ
	PUSH	DE
	LD	A,(HL)
	LD	(UNITNO),A
	LD	E,A
	LD	A,(DJFLAG)
	LD	D,A
	CALL	BGCRRD
	POP	DE
	CP	$D0
	JP	C,KBGFL10
	CP	$D3+1
	JP	C,KBGFLS
;
KBGFL10
	CP	$90
	JP	NC,KBGFLS
	CP	$01
	JP	Z,KBGFLS	;かたいとこで火花が出る！
;
	LD	C,$00
;
	LD	A,(DJFLAG)
	AND	A
	LD	A,(UNITNO)
	JR	Z,KBCK033
	CP	DSKEB
	JR	Z,KBCK05
	RET
;
KBCK033
	INC	C
	CP	ANFLW
	JR	Z,KBCK05
	CP	FLW00
	JR	Z,KBCK05
	CP	KUSA2
	RET	NZ
;
	LD	C,$FF
KBCK05
	LD	A,C
	LD	(ENCHPT2),A	; Kusa or ishi !!
;
	CALL	BG1CHG
;
	LD	A,(DUSHFG)
	AND	A
	JR	NZ,KBCK08
;
	LD	A,(WCUTFG)
	CP	$4+1
	JR	NZ,KBCK08
;
	XOR	A
	LD	(SPCTWT),A	; Spin cut wait time reset
;
	LD	A,CARITMD
KBCK06
	LD	(CARITM),A
KBCK08
;-- Kusa break --
	LD	A,KTOBJ
	CALL	PLSHST
	JR	C,KBCK80
;
	XOR	A
	LD	(POWDRTM),A	
;
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	A,(OBJXP)
	ADD	A,$8
	LD	(HL),A
;
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	A,(OBJYP)
	ADD	A,$10
	LD	(HL),A
;
	LD	HL,ENCHPT
	ADD	HL,DE
	LD	A,(ENCHPT2)
	LD	(HL),A ;$01  ;A
;
		ld	c,e
		ld	b,d
;;10/31;	PUSH	DE
;;10/31;	POP	BC
	CALL	KTFLSTL	
KBCK80
	CALL	RNDSUB
	AND	$07
	RET	NZ
;
	LD	A,(UNITNO)
	CP	ANFLW
	RET	Z
;
	CALL	RNDSUB
	RRA
	LD	A,RUPY1
	JR	NC,KBCK88
	LD	A,HART1
KBCK88
	CALL	ENIDSHL  ;PLSHST
	RET	C
;
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	A,(OBJXP)
	ADD	A,$8
	LD	(HL),A
;
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	A,(OBJYP)
	ADD	A,$10
	LD	(HL),A
;
	LD	HL,ENTIM3
	ADD	HL,DE
	LD	(HL),$80 ;A
;
	LD	HL,ENTIM1
	ADD	HL,DE
	LD	(HL),$18  ;A
;
	LD	HL,ENZSPD
	ADD	HL,DE
	LD	(HL),$10
;
KBCK90
	RET
;
;================================
;----------------------------------------
PKFLXD
	DB	$12,$EE,$FC,$04
PKFLYD
	DB	$04,$04,$EE,$12
;---------------------------------
KBGFLS
	LD	C,A
;
	LD	A,(CARITM)
	AND	A
	RET	Z
;
	LD	A,(PLCMKI)
	LD	E,A
	LD	D,$00
	LD	HL,PKFLXD
	ADD	HL,DE
	LD	A,(PLXPSL)
	ADD	A,(HL)
	LD	(WORK0),A
	LD	HL,PKFLYD
	ADD	HL,DE
	LD	A,(PLYPSL)
	ADD	A,(HL)
	LD	(WORK1),A
;
	LD	A,$4
	LD	(OTOFLG),A
;
	CALL	FLASHST
;
	LD	A,$10
	LD	(KNBGTM),A	; Protect !!
;
	LD	A,C
	AND	$F0
	CP	$90
	JR	Z,KBFS08
;
	LD	A,$07
	LD	(SOUND1),A	;(S)
KBFS10
	RET
KBFS08
	LD	A,$17
	LD	(SOUND3),A	;(S)
	RET
;============================================
;=					    =
;============================================
DUSXSD
	DB	$20,$E0,$00,$00
DUSYSD
	DB	$00,$00,$E0,$20
;- - - - - - - - - - - - - - - - - 
DUSHST
	LD	A,(YKFLAG)
	AND	A
	JR	Z,DUSS08	
;
	LD	A,(PLSTAT)
	AND	A
	RET	NZ
;
	LD	A,(PLCMKI)
	AND	%00000010
	RET	NZ
;
DUSS08
	LD	A,(DUSHFG)
	AND	A
	RET	NZ
;
	LD	A,(PLZPSL)
	LD	HL,PLJPFG
	OR	(HL)
	RET	NZ
;
	LD	A,(PLWKCT)
	ADD	A,$2
	LD	(PLWKCT),A	; Move count clear !
;
	CALL	DSSDST
;
	LD	A,(DUSHCT)
	INC	A
	LD	(DUSHCT),A
	CP	$20
	RET	NZ
;
	LD	(DUSHFG),A
;
	XOR	A
	LD	(SPCTTM),A
	LD	(SPCTWT),A
;
	LD	A,(PLCMKI)
	LD	E,A
	LD	D,$0
	LD	HL,DUSXSD
	ADD	HL,DE
	LD	A,(HL)
	LD	(PLXSPD),A
;
	LD	HL,DUSYSD
	ADD	HL,DE
	LD	A,(HL)
	LD	(PLYSPD),A
;
	XOR	A
	LD	(KENOFF),A
DUSS10
	RET
;----------------------
DSSDST
	LD	A,(FRCNT)
	AND	$07
	LD	HL,PLZPSL
	OR	(HL)
	LD	HL,PLSTOP
	OR	(HL) ;AND	A
	LD	HL,PLJPFG
	OR	(HL) ;AND	A
	RET	NZ
;
	LD	A,(PLXPSL)
	LD	(WORK0),A
;
	LD	A,(FTBGNO)
	CP	$05
	JR	Z,DSSS20	
;
	LD	A,$07
	LD	(SOUND3),A	;(S)
;
	LD	A,(PLYPSL)
	ADD	A,$06
	LD	(WORK1),A
;
	LD	A,DSZN
	JP  	EXIDSH
;
DSSS20
	LD	A,(PLYPSL)
	LD	(WORK1),A
;
	LD	A,$0E
	LD	(SOUND1),A	;(S)
;
	LD	A,WTUP2
	JP  	EXIDSH
;------------------------
PLSDCL
	XOR	A
	LD	(PLXSPD),A
	LD	(PLYSPD),A
	RET
;===================================
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	Sword C set				 %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;
PLWPCS
	CALL	PLCTBC	; Center BG check (Sadow etc set)
;
PLWPCS2
	LD	A,(PLMODE)
	CP	PSWIM
	RET	Z
;
	LD	A,(WCUTFG)
	AND	A
	JR	Z,PWPC90
;
	LD	BC,OAM+$10
;
	LD	A,(PLYPS2)
	LD	HL,PLDSYD
	ADD	A,(HL)
	LD	(WORK0),A
	LD	A,(PLXPSL)
	LD	(WORK1),A
;
	LD	HL,WORK3
	LD	(HL),$00
;
	LD	A,(SPCTWT)
	CP	$28
	JR	C,PWPC8A	; Spin cut chance ?
;				; yes !
	LD	A,(FRCNT)
	RLA
	RLA
	AND	%00010000
	LD	(HL),A
PWPC8A
	LD	A,(PKENYD)
	LD	H,A
	LD	A,(PKENXD)
	LD	L,A
;
	LD	A,(PKENPT)
	LD	(WORK2),A
;
	LD	A,(PLYPSL)
	CP	$88
	RET	NC
;
	JP	KNCSET
PWPC90
	LD	A,(POWDRTM)
	PUSH	AF
	BIT	7,A
	JP	Z,PWPC92	; Rot ?
;				; yes !
	LD	A,$02
	CALL	PBSET
	CALL	PLROTCS
;
	LD	A,(POWDRTM)
	AND	$7F
	CP	$0C
	JR	NZ,PWPC92
;
	LD	HL,MSGEFG
	LD	A,(SCRLFG)
	OR	(HL)
	JR	NZ,PWPC92
;
	CALL	PLCMST	;PLCMKI set
;
	LD	A,PRTBM
	CALL	PLSHST
	JR	C,PWPC92
;
	LD	A,$0D
	LD	(SOUND3),A	;(S)
;
	LD	A,$02
	CALL	PBSET
	CALL	PRTBMSTS
PWPC92
	POP	AF
	LD	(POWDRTM),A	
	RET
;
;--------------------------------------------------------
;							 |
;	ＫＮＣＳＥＴ	；　剣 キャラセット		 |
;							 |
;	Input						 |
;	BC   :Set OAM start addres			 |
;	WORK0:Main X pos				 |
;	WORK1:Main Y pos				 |
;	H    :Y add value				 |
;	L    :X add value				 |
;	WORK2:Ken. paturn 0-7				 |
;							 |
;--------------------------------------------------------
KNCSET
		LD	A,$20
		LD	($2100),A
		CALL	KNCSET_SUB
		LD	A,(PBANK)
		LD	($2100),A
		RET
;
;;;CGB;;;KNCSCD
;;;CGB;;;	DB	$08,$06	;0
;;;CGB;;;	DB	$0C,$0A	;1
;;;CGB;;;	DB	$FF,$04	;2
;;;CGB;;;	DB	$0A,$0C	;3
;;;CGB;;;	DB	$06,$08	;4
;;;CGB;;;	DB	$0A,$0C	;5
;;;CGB;;;	DB	$FF,$04	;6
;;;CGB;;;	DB	$0C,$0A	;7
;;;CGB;;;KNCSAD
;;;CGB;;;	DB	$20,$20	;0
;;;CGB;;;	DB	$60,$60	;1
;;;CGB;;;	DB	$00,$00	;2
;;;CGB;;;	DB	$40,$40	;3
;;;CGB;;;	DB	$00,$00	;4
;;;CGB;;;	DB	$00,$00	;5
;;;CGB;;;	DB	$40,$40	;6
;;;CGB;;;	DB	$20,$20	;7
;;;CGB;;;;===========================================
;;;CGB;;;KNCSET
;;;CGB;;;	PUSH	HL
;;;CGB;;;;
;;;CGB;;;	LD	A,(WORK0)
;;;CGB;;;	ADD	A,H
;;;CGB;;;	LD	(BC),A		; Y left
;;;CGB;;;	INC	BC
;;;CGB;;;	LD	A,(WORK1)
;;;CGB;;;	ADD	A,L
;;;CGB;;;	LD	(BC),A		; X left
;;;CGB;;;	INC	BC
;;;CGB;;;;
;;;CGB;;;	LD	HL,KNCSCD
;;;CGB;;;	LD	A,(WORK2)
;;;CGB;;;	SLA	A
;;;CGB;;;	LD	E,A
;;;CGB;;;	LD	D,$0
;;;CGB;;;	ADD	HL,DE
;;;CGB;;;	LD	A,(HL)
;;;CGB;;;	LD	(BC),A		; Chr left
;;;CGB;;;	CP	$FF
;;;CGB;;;	JR	NZ,KNC010	; Not chr ?
;;;CGB;;;;				; yes ! clear
;;;CGB;;;	DEC	BC
;;;CGB;;;	LD	A,$F0
;;;CGB;;;	LD	(BC),A
;;;CGB;;;	INC	BC
;;;CGB;;;KNC010
;;;CGB;;;	INC	BC
;;;CGB;;;	LD	HL,KNCSAD
;;;CGB;;;	ADD	HL,DE
;;;CGB;;;	LD	A,(HL)
;;;CGB;;;	LD	HL,WORK3	; Color
;;;CGB;;;	OR	(HL)
;;;CGB;;;	LD	(BC),A		; Atr left
;;;CGB;;;	INC	BC
;;;CGB;;;;
;;;CGB;;;	POP	HL
;;;CGB;;;;
;;;CGB;;;	LD	A,(WORK0)
;;;CGB;;;	ADD	A,H
;;;CGB;;;	LD	(BC),A		; Y pos right
;;;CGB;;;	INC	BC
;;;CGB;;;	LD	A,(WORK1)
;;;CGB;;;	ADD	A,L
;;;CGB;;;	ADD	A,$08
;;;CGB;;;	LD	(BC),A		; X pos right
;;;CGB;;;	INC	BC
;;;CGB;;;;
;;;CGB;;;	LD	HL,KNCSCD+1
;;;CGB;;;;;	LD	A,(KENPT)
;;;CGB;;;;;	SLA	A
;;;CGB;;;;;	LD	E,A
;;;CGB;;;;;	LD	D,$0
;;;CGB;;;	ADD	HL,DE
;;;CGB;;;	LD	A,(HL)
;;;CGB;;;	LD	(BC),A		; Chr right
;;;CGB;;;	INC	BC
;;;CGB;;;	LD	HL,KNCSAD+1
;;;CGB;;;	ADD	HL,DE
;;;CGB;;;	LD	A,(HL)
;;;CGB;;;	LD	HL,WORK3	; Color
;;;CGB;;;	OR	(HL)
;;;CGB;;;	LD	(BC),A		; Atr right
;;;CGB;;;	RET
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	Item cros check size set	%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
TLCRST
		LD	A,$20
		LD	($2100),A
		CALL	TLCRST_SUB
		LD	A,(PBANK)
		LD	($2100),A
		RET
;
;;;;;;;;TLCRXD
;;;;;;;;	DB	$10,$F0,$08,$08
;;;;;;;;TLCRYD
;;;;;;;;	DB	$0C,$0C,$F0,$10
;;;;;;;;;- - - - - - - - - - - - - - - - - - - - - -
;;;;;;;;TLCRST
;;;;;;;;	LD	A,(PLCMKI)
;;;;;;;;	LD	E,A
;;;;;;;;	LD	D,$0
;;;;;;;;;
;;;;;;;;	LD	HL,TLCRXD
;;;;;;;;	ADD	HL,DE
;;;;;;;;	LD	A,(PLXPSL)
;;;;;;;;	ADD	A,(HL)
;;;;;;;;	LD	(TLCRXL),A
;;;;;;;;;
;;;;;;;;	LD	HL,TLCRYD
;;;;;;;;	ADD	HL,DE
;;;;;;;;	LD	A,(PLYPSL)
;;;;;;;;	ADD	A,(HL)
;;;;;;;;	LD	(TLCRYL),A
;;;;;;;;;
;;;;;;;;	LD	A,$02
;;;;;;;;	LD	(TLCRTM),A
;;;;;;;;	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	Player in door & window close		 %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
PLINDR1
	CALL	PLIDBC
;
	LD	A,(PIMODE)
	AND	A
	JR	Z,PIDR0A0
;
	XOR	A
	LD	(PIMODE),A
;
	JP	NXGOTO
PIDR0A0
	CALL	FDIN
;
	XOR	A
	LD	(TILTCT),A
;
	INC	A
	LD	(ENSTFG),A
;
	LD	A,(SBHR)
	CP	$4
	JP	NZ,PLID1F0
;
	XOR	A
	LD	(SCCH),A
	LD	(SCCV),A
	LD	(DJMSTM),A	;ダンジョン案内メッセージ！
		LD	(MORIFLG),A	; 森カラーチェンジ（＝DARKFLG）
		LD	(MORIFCT),A	;       ”	  （＝DARKFCT）
;
	LD	E,ENNO
	LD	HL,ENMODE	;敵全部クリアー
PID1020
	LD	(HLI),A
	DEC	E
	JR	NZ,PID1020
;
	LD	A,(SHOHFG)
	AND	A
	JR	Z,PID009	; Shop manbiki ?
;			; yes !
	PUSH	AF
;
	LD	A,$4
	CALL	PBSET
;
	POP	AF
	CALL	SHOPGET	; Seiko
;
	LD	HL,MANBICT
	INC	(HL)
	LD	HL,MANBIKI
	INC	(HL)
;
		LD	A,(PHOTOFG)	;万引写真ＧＥＴ！
		OR	%01000000	;
		LD	(PHOTOFG),A	;
;
	LD	A,$01
	LD	(MANBIKIF),A
	XOR	A
	LD	(PLCHPT),A
PID009
	LD	A,(YKFLAG)
	LD	(WORKD),A
;
	LD	A,GPLAY  ;INIT
	LD	(GMMODE),A
;
	XOR	A
	LD	(ITMODE),A
	LD	(FADEON),A
;
	LD	(YKFLAG),A
;- - - - - - - - - - - - - - - - -
	LD	HL,NXRMMD
	LD	A,(DJFLAG)
	LD	(WORKF),A
	AND	A
	JR	NZ,PID00C	; Many door ?
;
	LD	HL,DRPSBF
;
	LD	C,$00
SSS3
	LD	A,(PLXPSL)
	SWAP	A
	AND	$0F
	LD	E,A
	LD	A,(PLYPSL)
	SUB	$08
	AND	$F0
	OR	E
	CP	(HL)
	JR	Z,SSSW
;
	INC	HL
	INC	C
	LD	A,C
	CP	$04
	JR	NZ,SSS3
;
SSSW
	LD	A,C
	SLA	A
	SLA	A
	ADD	A,C	;*5
	LD	E,A
	LD	D,$00
;
	LD	HL,NXRMMD
	ADD	HL,DE		; Yes !
;
PID00C
	PUSH	HL
;
	LD	A,(HLI)
	LD	(DJFLAG),A
	CP	$02
	JR	NZ,PID010
;
	LD	(YKFLAG),A
	DEC	A	;(A)
	LD	(DJFLAG),A
;
	LD	A,$01
	LD	(PLSTAT),A	;ハシゴ登り！
PID010
	LD	A,(HLI)
	LD	(DNJNNO),A
;
	LD	A,(DJFLAG)
	AND	A
	LD	A,(HLI)
	LD	(GRNDPT),A
	JR	NZ,PLID180
;
	LD	A,(WORKF)
	AND	A
	JR	Z,PID012	;ダンジョンから地上？
;				;YES !
	XOR	A
	LD	(POWRFG),A
PID012
	JR	PLID1A0
;-----------------------------
PLID180
	LD	C,A
;
	LD	A,$14
	CALL	PBSET
;
	PUSH	HL
;
	LD	A,(DNJNNO)
	SWAP	A
	LD	E,A
	LD	D,$00
	SLA	E
	RL	D
	SLA	E
	RL	D
	LD	HL,DJRMDT
	ADD	HL,DE
;
		LD	A,(DNJNNO)
		CP	NEWDJ		;新ダンジョンナンバー？
		JR	NZ,PLID180_PASS	;	NO --> PLID180_PASS
		LD	HL,NEWDJDAT
		JR	DICK10
PLID180_PASS
;
;;;KK;;;	LD	A,(DNJNNO)
	CP	$06
	JR	NZ,DICK10	;レベル７？
;				;YES!
	LD	A,(WARPSV+$06)
	AND	%00000100
	JR	Z,DICK10	;はしら落ちた？
;
	LD	HL,D7DAT2	;YES !
DICK10
	LD	E,$00
PLID188
	LD	A,(HLI)
	CP	C
	JR	Z,PLID190
	INC	E
	LD	A,E
	CP	$40
	JR	NZ,PLID188
PLID190
	LD	A,E
	LD	(DNJNPT),A
;
	LD	A,(WORKF)
	AND	A
	JR	NZ,PLID19F	;地上からダンジョン？
;				;YES !
	XOR	A
	LD	(POWRFG),A
;
	LD	A,(DNJNNO)
	CP	DJMAX
	JR	NC,PLID19F
;
	LD	A,$02
	CALL	PBSET
	CALL	DJMPST	;マップバッフアーセット
;
	LD	A,$30
	LD	(DJMSTM),A	;ダンジョン案内メッセージセット！
;
	XOR	A
	LD	(ONOFFG),A
	LD	(ONOFTM),A	; On off block time reset !
PLID19F
	POP	HL
PLID1A0
	LD	A,(HLI)
	LD	(WPLXPSL),A
	LD	A,(HL)
	LD	(WPLYPSL),A
;
	POP	HL
;
	LD	A,(YKFLAG)
	AND	A
	JR	NZ,PLID1F00
	LD	A,(WORKD)
	AND	A
	JR	NZ,PLID1F0	; Yoko gamen not save !
;
	LD	A,(DJFLAG)
	AND	A
	JR	Z,DID010
;				;YES !
	LD	A,(DNJNNO)
;
		CP	NEWDJ		;新ダンジョン？
		JR	NZ,PLID_PASS	;	NO --> PLID_PASS
		LD	HL,WPDJPT2
		JR	PLID_SET
PLID_PASS
;
	CP	DJMAX
	JR	NC,DID010	;決闘ダンジョン？
;				;YES !
	LD	E,A	;入り口！
	SLA	A
	SLA	A
	ADD	A,E
	LD	E,A
	LD	D,$00
	LD	HL,WPDJPT
	ADD	HL,DE
;
PLID_SET
	LD	A,$14
	LD	($2100),A
;
	CALL	DID010
;
	PUSH	DE
	LD	A,(DNJNNO)
;
		CP	NEWDJ		;新ダンジョン？
		JR	NZ,PLID1_PASS	;	NO --> PLID1_PASS
		LD	A,$3A
		JR	PLID1_SET
PLID1_PASS
;
	LD	E,A
	LD	D,$00
	LD	HL,WPDJPTN	;入り口ダンジョンポイント！
	ADD	HL,DE
	LD	A,(HL)
PLID1_SET
	POP	DE
	LD	(DE),A	;DNJNPT
	RET
;-------------------------------------
DID010
;;;11/26	LD	A,$00	;ヨーロッパ版で変更
		XOR	A	;
;
	LD	(WORK0),A
	LD	DE,CONTBF	; Continue start pos save buffer
PID00D
	LD	A,(HLI)
	LD	(DE),A
	INC	DE
	LD	A,(WORK0)
	INC	A
	LD	(WORK0),A
	CP	$05
	JR	NZ,PID00D
;
	LD	A,(DNJNPT)
	LD	(DE),A
PLID1F0
	RET
PLID1F00
	XOR	A
	LD	(PLCMKI),A
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%				         %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
PLINDR2
	CALL	PLIDBC
;
	LD	A,(OKWARPF)
	AND	A
	JR	Z,PLID210
;
	XOR	A
	LD	(OKWARPF),A
;
	LD	A,$30
	LD	(WAVTIM),A
	LD	A,$03
	LD	(WAVFLG),A
;
	LD	A,$04
	LD	(SBHR),A
	JR	PLID220
;
PLID210
	CALL	FDOUT
;
	LD	A,(SBHR)
	CP	$04
;;;11/26	JR	NZ,PLID290	;ヨーロッパ版で変更
		RET	NZ		;
;
PLID220
	LD	A,(WPLMODE)
	CP	PSWIM
	JR	Z,PLID221
;
	LD	A,PMOVE
PLID221
	LD	(PLMODE),A
;
	LD	A,(MANBIKIF)
	AND	A
;;;11/26	JR	Z,PLID270	;ヨーロッパ版で変更
		RET	Z		;
;
	XOR	A
	LD	(MANBIKIF),A
;
	LD	A,$36
	jp	MSGCHK
;;;(CGB)	CALL	MSGCHK
;;;11/26PLID270				;ヨーロッパ版で削除
;;;11/26PLID290				;
;;;11/26	RET			;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	"FDIN"になってるけどフェードアウト	%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
FDIN
		LD	A,$20
		LD	($2100),A
		CALL	WhiteOut
;;;;;;;		LD	A,(PBANK)
;;;;;;;		LD	($2100),A
;
		LD	A,:FDIN_SUB
		LD	($2100),A
		CALL	FDIN_SUB
		LD	A,(PBANK)
		LD	($2100),A
		RET

;(CGB)	LD	HL,SBCNT
;(CGB)	INC	(HL)
;(CGB)	LD	A,(SBCNT)
;(CGB)	AND	$03
;(CGB)	JR	NZ,N3
;(CGB);
;(CGB)	LD	HL,SBHR
;(CGB)	LD	A,(HL)
;(CGB)	CP	$04
;(CGB)	JR	Z,PIDEND2
;(CGB)	INC	(HL)
;(CGB);
;(CGB)	XOR	A
;(CGB)	LD	(WORK0),A
;(CGB)SNUTS	
;(CGB)	LD	A,(WORK0)
;(CGB)	CP	$03
;(CGB)	JR	Z,N3		
;(CGB);
;(CGB)	LD	HL,BGPFG
;(CGB)	LD	E,A
;(CGB)	LD	D,$0
;(CGB)	ADD	HL,DE
;(CGB)	LD	A,(HL)
;(CGB)	LD	C,A
;(CGB)	LD	B,$0
;(CGB)LOPN
;(CGB)	LD	A,C
;(CGB)	AND	$03
;(CGB)	JR	Z,N2
;(CGB)	DEC	C
;(CGB)N2
;(CGB)	RRC	C
;(CGB)	RRC	C
;(CGB)	INC	B
;(CGB)	LD	A,B
;(CGB)	CP	$04
;(CGB)	JR	NZ,LOPN
;(CGB);
;(CGB)	LD	A,C
;(CGB)	LD	(HL),A
;(CGB);
;(CGB)	LD	HL,WORK0
;(CGB)	INC	(HL)
;(CGB)	JR	SNUTS
;(CGB)N3
;(CGB)PIDEND
;(CGB)PIDEND2
;(CGB)	RET
;(CGB);====================================================
;(CGB)SBHRDT
;(CGB)	DB	%00000000
;(CGB)	DB	%00000001
;(CGB)	DB	%00000010
;(CGB)	DB	%00000011
;(CGB);
;(CGB)	DB	%00000000
;(CGB)	DB	%00000011
;(CGB)	DB	%00000001
;(CGB)	DB	%00000000
;(CGB);
;(CGB)	DB	%00000000
;(CGB)	DB	%00000001
;(CGB)	DB	%00000010
;(CGB)	DB	%00000011
;------------------------------------------
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	"FDOUT"になってるけどフェードイン	%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
FDOUT
		LD	A,$20
		LD	($2100),A
		CALL	WhiteIn
;;;;;;;		LD	A,(PBANK)
;;;;;;;		LD	($2100),A
;
		LD	A,:FDOUT_SUB
		LD	($2100),A
		CALL	FDOUT_SUB
		LD	A,(PBANK)
		LD	($2100),A
		RET

;(CGB)	LD	HL,SBCNT
;(CGB)	INC	(HL)
;(CGB)	LD	A,(SBCNT)
;(CGB)	AND	$03
;(CGB)	JR	NZ,N23
;(CGB);
;(CGB)	LD	HL,SBHR
;(CGB)	LD	A,(HL)
;(CGB)	INC	(HL)
;(CGB)	CP	$04
;(CGB)	JR	Z,PIDEND
;(CGB);
;(CGB)	XOR	A
;(CGB)	LD	(WORK0),A
;(CGB)SNUTS2	
;(CGB)	LD	A,(WORK0)
;(CGB)	CP	$03
;(CGB)	JR	Z,N23		
;(CGB);
;(CGB)	LD	HL,BGPFG
;(CGB)	LD	E,A
;(CGB)	LD	D,$0
;(CGB)	ADD	HL,DE
;(CGB)	LD	A,(HL)
;(CGB)	PUSH	HL
;(CGB)	LD	C,A
;(CGB)	LD	B,$0
;(CGB)LOPN2
;(CGB)	LD	A,(WORK0)
;(CGB)	SLA	A
;(CGB)	SLA	A
;(CGB)	OR	B
;(CGB)	LD	E,A
;(CGB)	LD	HL,SBHRDT
;(CGB)	ADD	HL,DE
;(CGB)	LD	A,C
;(CGB)	AND	$03
;(CGB)	CP	(HL)    ;$03
;(CGB)	JR	Z,N22
;(CGB)	INC	C
;(CGB)N22
;(CGB)	RRC	C
;(CGB)	RRC	C
;(CGB)	INC	B
;(CGB)	LD	A,B
;(CGB)	CP	$04
;(CGB)	JR	NZ,LOPN2
;(CGB);
;(CGB)	LD	A,C
;(CGB)	POP	HL
;(CGB)	LD	(HL),A
;(CGB);
;(CGB)	LD	HL,WORK0
;(CGB)	INC	(HL)
;(CGB)	JR	SNUTS2
;(CGB)N23
;(CGB)	RET
;--------------------------------
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	Player charactert tr. 			 %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;(CGB);=============================================
;(CGB)PLCHNO	; Character data !!
;(CGB);		; L   R
;(CGB)	DB	$00,$02	;0
;(CGB)	DB	$02,$00	;1
;(CGB)	DB	$10,$02	;2
;(CGB)	DB	$12,$00	;3
;(CGB)	DB	$04,$06	;4
;(CGB)	DB	$06,$04	;5
;(CGB)	DB	$08,$0A	;6
;(CGB)	DB	$0C,$0E	;7
;(CGB)	DB	$18,$0A	;8
;(CGB)	DB	$1C,$0E	;9
;(CGB)	DB	$0A,$08	;A
;(CGB)	DB	$0E,$0C	;B
;(CGB)	DB	$0A,$18	;C
;(CGB)	DB	$0E,$1C	;D
;(CGB);
;(CGB)	DB	$20,$22	;E
;(CGB)	DB	$24,$26	;F
;(CGB)	DB	$28,$2A	;10
;(CGB)	DB	$2A,$28	;1
;(CGB)	DB	$30,$32	;2
;(CGB)	DB	$20,$22	;3
;(CGB)	DB	$34,$36	;4
;(CGB)	DB	$24,$26	;5
;(CGB)	DB	$38,$3A	;6
;(CGB)	DB	$28,$2A	;7
;(CGB)	DB	$3A,$38	;8
;(CGB)	DB	$2A,$28	;9
;(CGB)	DB	$40,$40	;A
;(CGB)	DB	$42,$42	;B
;(CGB)	DB	$44,$46	;C
;(CGB)	DB	$48,$4A	;D
;(CGB)	DB	$4C,$4E	;E
;(CGB)	DB	$50,$52	;F
;(CGB)	DB	$4E,$4C	;20
;(CGB)	DB	$52,$50	;21
;(CGB);-
;(CGB)	DB	$80,$02	;22
;(CGB)	DB	$82,$00	;23
;(CGB)	DB	$84,$86	;24
;(CGB)	DB	$88,$8A	;25
;(CGB)	DB	$8C,$8E	;26
;(CGB)	DB	$90,$92	;27
;(CGB)	DB	$94,$96	;28
;(CGB)	DB	$98,$9A	;29
;(CGB)	DB	$9C,$9E	;2A
;(CGB)	DB	$9A,$A2	;2B
;(CGB)	DB	$A4,$08	;2C
;(CGB)	DB	$A6,$0C	;2D
;(CGB)	DB	$A8,$AA	;2E
;(CGB)	DB	$AC,$AE	;2F
;(CGB)	DB	$B0,$B2	;30
;(CGB)	DB	$B4,$B6	;31
;(CGB)	DB	$B0,$B2	;32
;(CGB)	DB	$B4,$B6	;33
;(CGB)	DB	$04,$C0	;34
;(CGB)	DB	$06,$C2	;35
;(CGB);
;(CGB)	DB	$5A,$58	;36
;(CGB)	DB	$5E,$5C	;37
;(CGB)	DB	$58,$5A	;38
;(CGB)	DB	$5C,$5E	;39
;(CGB)	DB	$44,$46	;3A
;(CGB)	DB	$6E,$6E	;3B
;(CGB)	DB	$40,$40	;3C
;(CGB)	DB	$56,$56	;3D
;(CGB);
;(CGB)	DB	$7A,$78	;3E
;(CGB)	DB	$7E,$7C	;3F
;(CGB)	DB	$78,$7A	;40
;(CGB)	DB	$7C,$7E	;41
;(CGB)	DB	$74,$76	;42
;(CGB)	DB	$76,$74	;43
;(CGB)	DB	$70,$72	;44
;(CGB)	DB	$72,$70	;45
;(CGB);
;(CGB)	DB	$CA,$C8	;46
;(CGB)	DB	$D6,$D4	;47
;(CGB)	DB	$C8,$CA	;48
;(CGB)	DB	$D4,$D6	;49
;(CGB)	DB	$CC,$CE	;4A
;(CGB)	DB	$D8,$DA	;4B
;(CGB)	DB	$C4,$C4	;4C
;(CGB)	DB	$C6,$C6	;4D
;(CGB)	DB	$DC,$DC	;4E ;潜り１
;(CGB)	DB	$DE,$DE	;4F ;潜り２
;(CGB);- Kurukuru door - -
;(CGB)	DB	$EA,$EC ;50
;(CGB)	DB	$EE,$F0 ;51
;(CGB)	DB	$F2,$F4 ;52
;(CGB)	DB	$F6,$F6 ;53
;(CGB)	DB	$F8,$FA ;54
;(CGB);- -Fall down --
;(CGB)	DB	$E0,$E2	;55
;(CGB)	DB	$E4,$E6	;56
;(CGB)	DB	$E8,$E8	;57
;(CGB);- Yoko swim --
;(CGB)	DB	$10,$12	;58
;(CGB)	DB	$14,$16	;59
;(CGB)	DB	$18,$1C	;5A
;(CGB)	DB	$12,$10	;5B
;(CGB)	DB	$16,$14	;5C
;(CGB)	DB	$1C,$18	;5D
;(CGB);- -Kaiten jump - -
;(CGB)	DB	$66,$68 ;5E
;(CGB)	DB	$6A,$6C ;5F
;(CGB)	DB	$68,$66 ;60
;(CGB)	DB	$68,$66 ;61
;(CGB)	DB	$6C,$6A ;62
;(CGB)	DB	$66,$68 ;63
;(CGB)	DB	$60,$60 ;64
;(CGB)	DB	$62,$62 ;65
;(CGB)	DB	$64,$64 ;66
;(CGB)	DB	$62,$62 ;67
;(CGB)	DB	$64,$64 ;68
;(CGB)	DB	$60,$60 ;69
;(CGB);- Fail - -
;(CGB)	DB	$54,$54 ;6A
;(CGB);- Ken power up demo - -
;(CGB)	DB	$3C,$3E ;6B
;(CGB);- Item chach ---
;(CGB)	DB	$FE,$FE ;6C
;(CGB);- Ana hori ---
;(CGB)	DB	$18,$1A	;6D	
;(CGB)	DB	$1C,$1E	;6E	
;(CGB)	DB	$2C,$2E	;6F	
;(CGB)	DB	$B8,$BA	;70	
;(CGB)	DB	$2E,$2C	;71	
;(CGB)	DB	$BA,$B8	;72	
;(CGB)	DB	$BC,$BE	;73	
;(CGB)	DB	$D0,$D2	;74	
;(CGB);- -オカリナ ふき
;(CGB)	DB	$A0,$FC	;75
;(CGB)	DB	$FC,$A0	;76
;(CGB);=====================================
;(CGB)PLFLPD	; Flip data
;(CGB)	DB	$00,$00	;0
;(CGB)	DB	$20,$20	;1
;(CGB)	DB	$00,$00	;2
;(CGB)	DB	$00,$20	;3
;(CGB)	DB	$00,$00	;4
;(CGB)	DB	$20,$20	;5
;(CGB)	DB	$00,$00	;6
;(CGB)	DB	$00,$00	;7
;(CGB)	DB	$00,$00	;8
;(CGB)	DB	$00,$00	;9
;(CGB)	DB	$20,$20	;A
;(CGB)	DB	$20,$20	;B
;(CGB)	DB	$20,$20	;C
;(CGB)	DB	$20,$20	;D
;(CGB);
;(CGB)	DB	$00,$00	;E
;(CGB)	DB	$00,$00 ;F
;(CGB)	DB	$00,$00	;10
;(CGB)	DB	$20,$20	;1
;(CGB)	DB	$00,$00	;2
;(CGB)	DB	$00,$00	;3
;(CGB)	DB	$00,$00	;4
;(CGB)	DB	$00,$00	;5
;(CGB)	DB	$00,$00	;6
;(CGB)	DB	$00,$00	;7
;(CGB)	DB	$20,$20	;8
;(CGB)	DB	$20,$20	;9
;(CGB)	DB	$00,$20	;A
;(CGB)	DB	$00,$20	;B
;(CGB)	DB	$00,$00	;C
;(CGB)	DB	$00,$00	;D
;(CGB)	DB	$00,$00	;E
;(CGB)	DB	$00,$00	;F
;(CGB)	DB	$20,$20	;20
;(CGB)	DB	$20,$20	;21
;(CGB);
;(CGB)	DB	$00,$00	;22
;(CGB)	DB	$00,$20	;23
;(CGB)	DB	$00,$00	;24
;(CGB)	DB	$00,$00	;25
;(CGB)	DB	$00,$00	;26
;(CGB)	DB	$00,$00	;27
;(CGB)	DB	$00,$00	;28
;(CGB)	DB	$00,$00	;29
;(CGB)	DB	$00,$00	;2A
;(CGB)	DB	$20,$00	;2B
;(CGB)	DB	$00,$20	;2C
;(CGB)	DB	$00,$20	;2D
;(CGB)	DB	$00,$00	;2E
;(CGB)	DB	$00,$00	;2F
;(CGB)	DB	$00,$00	;30
;(CGB)	DB	$00,$00	;31
;(CGB)	DB	$00,$00	;32
;(CGB)	DB	$00,$00	;33
;(CGB)	DB	$00,$00	;34
;(CGB)	DB	$20,$00	;35
;(CGB);
;(CGB)	DB	$20,$20	;36
;(CGB)	DB	$20,$20	;37
;(CGB)	DB	$00,$00	;38
;(CGB)	DB	$00,$00	;39
;(CGB)	DB	$00,$00	;3A
;(CGB)	DB	$00,$20	;3B
;(CGB)	DB	$00,$20	;3C
;(CGB)	DB	$00,$20	;3D
;(CGB);
;(CGB)	DB	$20,$20	;3E
;(CGB)	DB	$20,$20	;3F
;(CGB)	DB	$00,$00	;40
;(CGB)	DB	$00,$00	;41
;(CGB)	DB	$00,$00	;42
;(CGB)	DB	$20,$20	;43
;(CGB)	DB	$00,$00	;44
;(CGB)	DB	$20,$20	;45
;(CGB);
;(CGB)	DB	$20,$20	;46
;(CGB)	DB	$20,$20	;47
;(CGB)	DB	$00,$00	;48
;(CGB)	DB	$00,$00	;49
;(CGB)	DB	$00,$00	;4A
;(CGB)	DB	$00,$00	;4B
;(CGB)	DB	$00,$20	;4C
;(CGB)	DB	$00,$20	;4D
;(CGB)	DB	$00,$20	;4E
;(CGB)	DB	$00,$20	;4F
;(CGB);- - Kuru kuru door - -
;(CGB)	DB	$00,$00	;50
;(CGB)	DB	$00,$00	;51
;(CGB)	DB	$00,$00	;52
;(CGB)	DB	$00,$20	;53
;(CGB)	DB	$00,$00	;54
;(CGB);- -Fall down --
;(CGB)	DB	$00,$00	;55
;(CGB)	DB	$00,$00	;56
;(CGB)	DB	$00,$20	;57
;(CGB);- -Yoko swim --
;(CGB)	DB	$00,$00	;58
;(CGB)	DB	$00,$00	;59
;(CGB)	DB	$00,$00	;5A
;(CGB)	DB	$20,$20	;5B
;(CGB)	DB	$20,$20	;5C
;(CGB)	DB	$20,$20	;5D
;(CGB);- -Kaiten jump - -
;(CGB)	DB	$00,$00 ;5E
;(CGB)	DB	$00,$00 ;5F
;(CGB)	DB	$60,$60 ;60
;(CGB)	DB	$20,$20 ;61
;(CGB)	DB	$20,$20 ;62
;(CGB)	DB	$40,$40 ;63
;(CGB)	DB	$00,$20 ;64
;(CGB)	DB	$00,$20 ;65
;(CGB)	DB	$00,$20 ;66
;(CGB)	DB	$40,$60 ;67
;(CGB)	DB	$40,$60 ;68
;(CGB)	DB	$40,$60 ;69
;(CGB);- Fail - -
;(CGB)	DB	$00,$20 ;6A
;(CGB);- Ken power up demo - -
;(CGB)	DB	$00,$00 ;6B
;(CGB);- Item chach ---
;(CGB)	DB	$00,$20 ;6C
;(CGB);- Ana hori ---
;(CGB)	DB	$00,$00	;6D	
;(CGB)	DB	$00,$00	;6E	
;(CGB)	DB	$00,$00	;6F	
;(CGB)	DB	$00,$00	;70	
;(CGB)	DB	$20,$20	;71	
;(CGB)	DB	$20,$20	;72	
;(CGB)	DB	$00,$00	;73	
;(CGB)	DB	$00,$00	;74	
;(CGB);- - Okarina - -
;(CGB)	DB	$00,$00	;75
;(CGB)	DB	$20,$20	;76
;------------------------------------------
;- Character paturn set ---
PLPTST
	LD	A,(PLWKCT)
	SRA	A
	SRA	A
	SRA	A
	AND	$1
	LD	D,A
	LD	A,(PLCMKI)
	SLA	A
	OR	D
	LD	C,A
	LD	B,$0
;
	LD	HL,PLCHSW
	LD	A,(PLMODE)
	CP	PSWIM		;リンク泳ぐ？
	JR	NZ,PLMAF0	;	NO --> PLMAF0
;
	LD	A,(PLSTAT)
	AND	A
	JR	Z,PLMAE8
;
	LD	HL,PLCHDB
PLMAE8
	JR	PLMA10
;--------------------------------
PLMAF0
	LD	A,(YKFLAG)
	AND	A		;横画面？
	JR	Z,PLMAF1	;	NO --> PLMAF1
;
	LD	A,(PLSTAT)
	CP	$02
	JR	NZ,PLMAF1
;
	LD	HL,PLCHYSW
	JR	PLMA10
PLMAF1
	LD	A,(PLCAMD)
	CP	$1
	JR	Z,PLMA0C
;
	LD	A,(IKADAON)
	AND	A		;イカダに乗ってる？
	JR	NZ,PLMAF2	;	YES --> PLMAF2
;
	LD	A,(PLOSHI)
	AND	A		;押しポーズ？
	JR	NZ,PLMA08	;	YES --> PLMA08
;
PLMAF2
	LD	A,(TATEFG)
	AND	A		;盾構え？
	JR	NZ,PLMA00	;	YES --> PLMA00
;
	LD	HL,PLCHPD
	JR	PLMA10
PLMA00
	LD	HL,PLCHP2
	CP	$2
	JR	NZ,PLMA02	;Big tate ?
;				;yes !
	LD	HL,PLCHP3
PLMA02
	LD	A,(TATEON)
	AND	A
	JR	Z,PLMA03	; Tate using ?
;				; yes !
	LD	A,L
	ADD	A,$8
	LD	L,A
;
	LD	A,H
	ADC	A,$0
	LD	H,A
PLMA03
	JR	PLMA10
PLMA08
	LD	HL,PLCHPO
	JR	PLMA10
PLMA0C
	LD	HL,PLCHPC
PLMA10
	ADD	HL,BC
	LD	A,(HL)
	LD	(PLCHPT),A
	RET
;============================================
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%				      %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;-----------------------------------------------
LOVETR
	LD	A,(VRAMD+1)
	AND	A
	RET	NZ
;
	LD	A,$10
	CALL	Char_bank_set	; (CGB) キャラクターバンクセット
	LD	($2100),A
;
	LD	HL,CHRDAT+$2500
	LD	DE,CHRRAM+$1500
;
	LD	A,(FRCNT)
	AND	%00001111
	JR	Z,LVTR10	
	CP	$08
	RET	NZ
;
	LD	L,$40
	LD	E,L
LVTR10
	LD	A,(FRCNT)
	AND	%00110000
	LD	C,A
	LD	B,$0
	SLA	C
	RL	B
	SLA	C
	RL	B
	SLA	C
	RL	B
;
	ADD	HL,BC
;
	LD	BC,$0040
	JP	DATA_MOV

ROUSAD
TAKIAD
	DB	$20,$60,$A0,$E0
	DB	$E0,$E0,$A0,$60
;
PLCHTR
	LD	A,(GMMODE)
	CP	LOVED
	JR	Z,LOVETR
	CP	OPING
	JR	NZ,PT8000	; Opening Demo?
;
	LD	A,(VRAMD+1)
	AND	A
	JP	NZ,PT7000
;
	LD	A,(FRCNT)
	AND	$0F
	CP	$04
	JR	C,PT7000
;
	LD	A,$10
	CALL	Char_bank_set	; (CGB) キャラクターバンクセット
	LD	($2100),A
;
	LD	A,(NMCH0L)
	LD	L,A
	LD	A,(NMCH0H)
	LD	H,A
	LD	A,(NMCH1L)
	LD	E,A
	LD	A,(NMCH1H)
	LD	D,A
;
	LD	BC,$0020
	jp	DATA_MOV
;;;(CGB)	CALL	DATA_MOV
PT7000
	RET
;
PT8000
	LD	A,(GMMODE)
	CP	ENDG
	JR	NZ,PCTR558
;
	LD	A,(CHTRF2)
	AND	A
	JR	NZ,PCTR561
;
	RET
PCTR558
	CP	GPLAY
	JP	C,PLCSNOT
;
	LD	A,(WNDYPS)
	CP	$80
	JP	NZ,PLCSNOT
;
	LD	A,(WNDFLG)
	AND	A
	JP	NZ,PLTRNOT
;
	LD	HL,SCRLFG
	LD	A,(VRAMD+1)
	OR	(HL)
	JP	NZ,PLTRNOT  ;088 ;30
;
	LD	A,(ONOFTM)
	AND	A
	JR	Z,PCTR560	; 凹凸ブロック作動 ?
;				; Yes !
	CALL	ONOFSUB
	JP	PCTR30
;
PCTR560
	LD	A,(CHTRF2)
	AND	A
	JR	Z,PCTR088
;
PCTR561
	CP	$01 ;F0
	JP	Z,BDCHT1	; 大鳥の人間キャラクター転送!
	CP	$02 ;F1
	JP	Z,BDCHT2
	CP	$03 ;F2
	JP	Z,SWCHTR1	; 乗るスイッチ ON !
	CP	$04 ;F3
	JP	Z,SWCHTR2	;      "       RETURN !
	CP	$08
	JP	Z,EGAKKIRV 	;F ;エンディング楽器もどす転送
	CP	$09
	JP	Z,GRKEY5TR	; Key "E" colect !!
	CP	$0A
	JP	Z,KINOKOTR	; きのこ !!
	CP	$0B
	JP	Z,MGPWDRTR	; 魔法の粉
	CP	$0C
	JP	Z,EGAKKITR 	;F ;エンディング楽器転送
	CP	$0D
	JP	Z,MEGANETR	; わらしべアイテム！
	CP	$0E
	JR	Z,YMCLERS	;エンディング山消す！
	CP	$0F
	JP	Z,MARINTR1
	CP	$10
	JP	Z,MARINTR2
;
	JP	PCTR30
;
YMCLERS
	LD	A,$17
	LD	($2100),A
	JP	YMCLER
;================================
PCTR088
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%   いろいろ キャラクター転送		 %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
; PLTROK  : プレイヤー転送＋OAM set OK !!
; PLTRNOT : プレイヤー転送あかんけど OAM set OK !!
; PLCSNOT : プレイヤーはいない！
CHRTR
;===========================================
CTR010
	LD	A,(CHTRCT)
	INC	A
	LD	(CHTRCT),A	; Timing counter !
;=================================================
CHRTRSB
	LD	A,(CHTRFG)
	RST	0
	DW	PLTROK 	;0
	DW	MESTEST	;1 Message TEST No. display !
	DW	GRSER2	;2 ;地上 波ぎわ
	DW	GRSER1	;3 ;地上 滝＋深水＋浅水
	DW	DJTOUR	;4 ;ダンジョン 燈篭＋ロウソク＋針
	DW	YKTOUR	;5 ;横画面用
	DW	BSYOUG	;6 ;溶岩ボス
	DW	BELTTR	;7 ;ベルトコンベアー＋ロウソク
	DW	RYUSATR	;8 ;流砂
	DW	JYANTR	;9 ;ジャングル 水流
	DW	JYANTR2	;A ;ジャングル 水流＋滝
	DW	YAMASEA	;B ;山 遠景水
	DW	DMIZUTR	;C ;ダンジョン水
	DW	GAGETR	;D ;剣２もらう部屋
	DW	HIMITR 	;E ;氷
	DW	YYOGTR 	;F ;横溶岩！
	DW	KAZATR 	;10 ;風見鳥!
	DW	C_BOY_CHR	;11 写真屋のキャラクタ転送
;-----------------------------------------------------
;-----------------------------------------------------
MESTEST
	LD	A,(CHTRCT)
	AND	$07
	JP	NZ,PLTROK
;
	LD	A,$01
	LD	($2100),A
	CALL	MSGTEST
	LD	A,$0C
	CALL	Char_bank_set	; (CGB) キャラクターバンクセット
	LD	($2100),A
	JP	PLTRNOT
;=======================================
CH4TR1
	LD	L,A
	JR	CH4TR
;-----------------------------------------------------
GRSER2
	LD	H,$6B
	JR	CHTRF
;-----------------------------------------------------
GRSER1
	LD	H,$6C
	JR	CHTRF
;=====================================
DMIZUTR
	LD	H,$73
	JR	CHTRF
;=====================================
YAMASEA
	LD	H,$6A
CHTRF
	LD	A,(CHTRCT)
	AND	$0F
	JP	NZ,PLTROK
;
	CALL	CC2INC
;
	JP	CH4TR1
;-----------------------------------------------------
DTTRTRD
	DB	$00,$40,$80,$C0
	DB	$C0,$C0,$80,$40
;
DJTOUR
	LD	A,(CHTRCT)
	AND	$07
	JP	NZ,PLTROK
;
	LD	A,(CHTRCT)
	RRA
	RRA
	RRA
	AND	$07
	LD	E,A
	LD	D,$00
	LD	HL,DTTRTRD
	ADD	HL,DE
;
	LD	L,(HL)
	LD	H,$6D
;- - - - - - - - - - - - - -
CH4TR
	LD	DE,CHRRAM+$16C0
CH4TR2
	LD	BC,$0040
	CALL	DATA_MOV
;
		LD	A,(DNJNNO)
		CP	NEWDJ		;新ダンジョン？
		JR	NZ,DJTOUR_PASS	;	NO --> DJTOUR_PASS
		LD	A,$20
		LD	($2100),A
		LD	B,$001
		CALL	NEWDJ_CHR
		JR	Z,DJTOUR_100
		LD	($2100),A
		CALL	DATA_MOV
DJTOUR_100
		LD	A,$20
		LD	($2100),A
		LD	B,$000
		CALL	NEWDJ_CHR
		JR	Z,DJTOUR_PASS
		LD	($2100),A
		LD	DE,CHRRAM+$16C0
		CALL	DATA_MOV
DJTOUR_PASS
;
	JP	PLTRNOT
;=====================================
YKTOUR
	LD	H,$6E
	JR	CHTRF
;=====================================
BSYOUG
	LD	A,(CHTRCT)
	AND	$07
	JP	NZ,PLTROK
;
	LD	A,(CHTRCT)
	RRA
	RRA
	RRA
	AND	$07
	LD	E,A
	LD	D,$00
	LD	HL,DTTRTRD
	ADD	HL,DE
;
	LD	L,(HL)
	LD	H,$6F
	JP	CH4TR
;=====================================
BELTTR
		LD	HL,BELTBF
		LD	A,(DNJNNO)
		CP	NEWDJ		;新ダンジョン？
		JR	NZ,BELTTR_PASS	;	NO --> BELTTR_PASS
		LD	DE,$8400	; キャラクタ ＲＡＭ
		JP	CH4TR2
BELTTR_PASS
;
	LD	A,(CHTRCT)
	INC	A
	AND	$03
	JP	NZ,DJTOUR
;
	LD	DE,$90C0	; キャラクタ ＲＡＭ ($8000 - $97FF)
	JP	CH4TR2
;
;-----------------------------------------------------
;===================================
RYUSATR
	LD	H,$70
;
CHTR7
	LD	A,(CHTRCT)
	AND	$07
	JP	NZ,PLTROK
;
	CALL	CC2INC
;
	JP	CH4TR1
;===================================
JYANTR
	LD	H,$71
CHTR3
	LD	A,(CHTRCT)
	AND	$03
	JP	NZ,PLTROK
;
	CALL	CC2INC
;
	JP	CH4TR1
;===================================
JYANTR2
	LD	H,$72
	JR	CHTR3
;=====================================
CC2INC
	LD	A,(CHTRC2)	; A bus adress chenge !
	ADD	A,$40
	LD	(CHTRC2),A
	RET
;=====================================
GAGETR
	LD	H,$75
	JR	CHTR3
;=====================================
YYOGTR
	LD	H,$74
	JR	CHTR7
;=====================================
KAZATR
	LD	H,$77
	JR	CHTR7
;=====================================
HIMITR
	LD	H,$76
	JR	CHTR7
;=====================================
C_BOY_CHR
		LD	A,:C_BOY_CHR_SET
		LD	($2100),A
		CALL	C_BOY_CHR_SET
		JP	PLTRNOT
;-----------------------------------------------------
PCTR09

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	 プレイヤーキャラクターＶＲＡＭ転送				x
;x----------------------------------------------------------------------x
;x	    ＥＮＴＲＹ							x
;x		Ｂ         ： データアドレス ＨＩＧＨ（転送元）		x
;x		Ｃ         ： データアドレス ＬＯＷ  （  ”  ）		x
;x		Ｄ         ： 転送個数					x
;x		Ｈ         ： ＶＲＡＭアドレス ＨＩＧＨ（転送先）	x
;x		Ｌ         ： ＶＲＡＭアドレス ＬＯＷ  （  ”  ）	x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
PLCHR_TRAN
		LD	A,$0C
		CALL	Char_bank_set	; (CGB) キャラクターバンクセット
		LD	($2100),A
PLCHR_TRAN_100	
		LD	A,(BC)
		INC	BC
		LD	(HLI),A
		DEC	D
		JR	NZ,PLCHR_TRAN_100

		LD	A,:PLTROK_SUB
		LD	($2100),A
		RET

;================================================
;=	プレイヤーキャラクター転送		=
;================================================
PLTROK
;- - Player Character TR. - -

		LD	A,:PLTROK_SUB
		LD	($2100),A
		CALL	PLTROK_SUB
		LD	A,$0C
		CALL	Char_bank_set	; (CGB) キャラクターバンクセット
		LD	($2100),A

;(CGB);- - Left - -
;(CGB)	LD	A,(PLCHPT)
;(CGB)	CP	$FF
;(CGB)	JP	Z,PCTR30
;(CGB);
;(CGB)	LD	HL,PLCHNO
;(CGB)	SLA	A
;(CGB)	LD	C,A
;(CGB)	LD	B,$0
;(CGB)	ADD	HL,BC
;(CGB)	LD	E,(HL)
;(CGB);
;(CGB)	PUSH	HL
;(CGB);
;(CGB)	LD	HL,PLFLPD
;(CGB)	ADD	HL,BC
;(CGB)	LD	A,(PLFLPL)
;(CGB)	AND	%10011111
;(CGB)	OR	(HL)
;(CGB)	LD	(PLFLPL),A
;(CGB);
;(CGB)	INC	HL
;(CGB);
;(CGB)	LD	A,(PLFLPR)
;(CGB)	AND	%10011111
;(CGB)	OR	(HL)
;(CGB)	LD	(PLFLPR),A
;(CGB);
;(CGB)	LD	D,$0
;(CGB)	SLA	E
;(CGB)	RL	D
;(CGB)	SLA	E
;(CGB)	RL	D
;(CGB)	SLA	E
;(CGB)	RL	D
;(CGB)	SLA	E
;(CGB)	RL	D
;(CGB)	LD	HL,PLCHDT
;(CGB)	ADD	HL,DE
;(CGB)	PUSH	HL
;(CGB)	POP	BC
;(CGB);
;(CGB)	LD	HL,$8000
;(CGB);
;(CGB)	LD	D,$20
;(CGB)PCTR10
;(CGB)	LD	A,(BC)
;(CGB)	INC	BC
;(CGB)	LD	(HLI),A
;(CGB)	DEC	D
;(CGB)	JR	NZ,PCTR10
;(CGB);- - Right - -
;(CGB);
;(CGB)	POP	HL
;(CGB)	INC	HL
;(CGB)	LD	E,(HL)
;(CGB);
;(CGB)	LD	D,$0
;(CGB)	SLA	E
;(CGB)	RL	D
;(CGB)	SLA	E
;(CGB)	RL	D
;(CGB)	SLA	E
;(CGB)	RL	D
;(CGB)	SLA	E
;(CGB)	RL	D
;(CGB)	LD	HL,PLCHDT
;(CGB)	ADD	HL,DE
;(CGB)	PUSH	HL
;(CGB)	POP	BC
;(CGB);
;(CGB)	LD	HL,$8020
;(CGB);
;(CGB)	LD	D,$20
;(CGB)PCTR20
;(CGB)	LD	A,(BC)
;(CGB)	INC	BC
;(CGB)	LD	(HLI),A
;(CGB)	DEC	D
;(CGB)	JR	NZ,PCTR20

PCTR30
PLTRNOT
;
;****************************************
;*       PLAYER	Character OAM set       *
;****************************************
PLCSET
	LD	A,(PLCHPT)
	INC	A
	RET	Z
;;;KK;;;	JP	Z,PLCS70
;
		LD	A,(CGBFLG)
		AND	A
		JR	Z,PLCSET_100
		LD	A,(PLFLSH)
		AND	$04
		JR	Z,PLCSET_200
		LD	A,$04
		JR	PLCSET_200
;
PLCSET_100
		LD	A,(PLFLSH)
		RLA
		RLA
		AND	$10
PLCSET_200
		LD	(PLPRIO),A
;
;- LEFT -
	LD	HL,POAM
;
	LD	A,(PLDSYD)
	LD	C,A
;
	LD	A,(PLYPS2)
	ADD	A,C
	CP	$88
	RET	NC
;;;KK;;;	JR	NC,PLCS70
	PUSH	AF
	LD	(HLI),A		; YPOS
;
	LD	A,(PLDSXD)
	LD	C,A
;
	LD	A,(PLXPSL)
	ADD	A,C
	LD	(HLI),A		; XPOS
;
;;;11/26	LD	A,$00		;ヨーロッパ版で変更
		XOR	A		;
	LD	(HLI),A		; CHR NO.
;
	LD	A,(PLPRIO)
	LD	D,A
	LD	A,(PLFLPL)
	OR	D
;;;KK;;;	LD	(HLI),A		; ATR.
	LD	(HL),A		; ATR.
;
		LD	A,(CGBFLG)
		AND	A		;ＣＧＢ？
		JR	Z,PLCSET_500	;	NO --> PLCSET_500
		LD	A,(PLFLSH)
		AND	$004		;フラッシング中？
		JR	NZ,PLCSET_500	;	YES --> PLCSET_500
		LD	A,(PLCHPT)
		CP	$050		;くるりんドア？
		JR	C,PLCSET_300	;	NO --> PLCSET_300
		CP	$054+1		;
		JR	NC,PLCSET_300	;
		LD	A,(HL)
		OR	$007
		LD	(HL),A
		JR	PLCSET_500
PLCSET_300
		LD	A,(CLOTHFG)
		AND	A
		JR	Z,PLCSET_400
		INC	A
		OR	(HL)
		LD	(HL),A
PLCSET_400
		LD	A,(PLCHPT)	;リンク潜水してる？
		CP	$04E		;	YES --> PLCSET_450
		JR	Z,PLCSET_450	;	NO ---> PLCSET_500
		CP	$04F		;
		JR	NZ,PLCSET_500	;

PLCSET_450
		LD	(HL),$003
PLCSET_500
		INC	HL
;
;- - - RIGHT - -
	POP 	AF
	LD	(HLI),A		; YPOS
;
	LD	A,(PLXPSL)
	ADD	A,C
	ADD	A,$08  ;10
	LD	(HLI),A		; XPOS
;
	LD	A,$02
	LD	(HLI),A		; CHR NO.
;
	LD	A,(PLPRIO)
	LD	D,A
	LD	A,(PLFLPR)
	OR	D
;;;KK;;;	LD	(HLI),A		; ATR.
	LD	(HL),A		; ATR.
;
		LD	A,(CGBFLG)
		AND	A		;ＣＧＢ？
		JR	Z,PLCSET_900	;	NO --> PLCSET_900
		LD	A,(PLFLSH)
		AND	$004		;フラッシング中？
		JR	NZ,PLCSET_900	;	YES --> PLCSET_900
		LD	A,(PLCHPT)
		CP	$050		;くるりんドア？
		JR	C,PLCSET_700	;	NO --> PLCSET_700
		CP	$054+1		;
		JR	NC,PLCSET_700	;
		LD	A,(HL)
		OR	$007
		LD	(HL),A
		JR	PLCSET_900
PLCSET_700
		LD	A,(CLOTHFG)
		AND	A
		JR	Z,PLCSET_800
		INC	A
		OR	(HL)
		LD	(HL),A
PLCSET_800
		LD	A,(PLCHPT)	;リンク潜水してる？
		CP	$04E		;	YES --> PLCSET_850
		JR	Z,PLCSET_850	;	NO ---> PLCSET_900
		CP	$04F		;
		JR	NZ,PLCSET_900	;

PLCSET_850
		LD	(HL),$023
PLCSET_900
		INC	HL
;
PLCS70
PLCSNOT
	RET
;
;======================================================
; タリン ＺＺＺ 書き換え
;======================================================
MARINTR2
	LD	HL,CHRDAT+$0F00       
	LD	A,$0E
	JR	MARINTRS
;======================================================
MARINTR1
	LD	A,$12
	LD	HL,CHRDAT+$2080       
MARINTRS
	LD	($2100),A
	LD	DE,CHRRAM+$0400
	LD	BC,$0040
	JP	DTMOVS
;======================================================
; わらしべアイテム用
;======================================================
MEGANETR
	LD	A,(MEGAF)
	CP	$02
	JP	C,DTMOVS2 ;PLCSNOTS	;0:なし 1:ヨッシー(はじめから持ってる！）
;
	SUB	$02
	LD	D,A
	LD	E,$00
;
	SRA	D
	RR	E	
	SRA	D
	RR	E	
;
	LD	HL,CHRDAT+$0400
	ADD	HL,DE
	LD	DE,CHRRAM+$09A0
	LD	BC,$0040
;
	LD	A,$0C
	CALL	Char_bank_set	; (CGB) キャラクターバンクセット
	LD	($2100),A
;
	JP	DTMOVS
;======================================================
; 魔法の粉がきのこに変わる書き換え
;======================================================
KINOKOTR
	LD	HL,CHRDAT+$28C0	; 
;
	LD	DE,CHRRAM+$08E0
	JR	IRANSUB
;======================================================
;       OBJ 楽器 書き換え			      :
;======================================================
EGAKKITR
	LD	A,$11
	CALL	Char_bank_set	; (CGB) キャラクターバンクセット
	LD	($2100),A
;
	LD	A,(EDWRK0)
	SWAP	A
	AND	$F0
	LD	E,A
	LD	D,$00
	SLA	E
	RL	D
	SLA	E
	RL	D
;
	LD	HL,CHRRAM+$0D00
	ADD	HL,DE
	PUSH	HL
;
	LD	HL,CHRDAT+$1000
EGAKSUB
	ADD	HL,DE
	POP	DE

	LD	BC,$0040
	CALL	DATA_MOV
;
	XOR	A
	LD	(CHTRF2),A
;
	LD	A,$0C
	CALL	Char_bank_set	; (CGB) キャラクターバンクセット
	LD	($2100),A
	RET
;
;======================================================
;       OBJ 楽器 書き換え			      :
;======================================================
EGAKKIRV
	LD	A,$13
	CALL	Char_bank_set	; (CGB) キャラクターバンクセット
	LD	($2100),A
;
	LD	A,(EDWRK0)
	SWAP	A
	AND	$F0
	LD	E,A
	LD	D,$00
	SLA	E
	RL	D
	SLA	E
	RL	D
;
	LD	HL,CHRRAM+$0D00
	ADD	HL,DE
	PUSH	HL
;
	LD	HL,CHRDAT+$0D00
	JR	EGAKSUB
;
;======================================================
; きのこが魔法の粉に変わる書き換え
;======================================================
MGPWDRTR
	LD	HL,CHRDAT+$08E0	; 
;
	LD	DE,CHRRAM+$08E0
;
	LD	A,$0C
	CALL	Char_bank_set	; (CGB) キャラクターバンクセット
	LD	($2100),A
;
	LD	BC,$0020
	JP	DTMOVS
;======================================================
; 鍵５番をもらうために集めるやつが鍵５番に書き換え
;======================================================
GRKEY5TR
	LD	HL,CHRDAT+$28E0	; Kagi E
	LD	DE,CHRRAM+$0CA0
;
IRANSUB
	LD	A,$0C
	CALL	Char_bank_set	; (CGB) キャラクターバンクセット
	LD	($2100),A
;
	LD	BC,$0020
	JP	DTMOVS
;======================================================
; 乗るスイッチ書き換え
;======================================================
SWCHTR1		; ON !
	LD	HL,CHRDAT+$3F00
	LD	A,$12
	JR	SWTR10
SWCHTR2		; Return !
	LD	HL,CHRDAT+$0C40
	LD	A,$0D
SWTR10
	CALL	Char_bank_set	; (CGB) キャラクターバンクセット
	LD	($2100),A
;
	LD	DE,CHRRAM+$1140
;
	JP	CHR4TR
;======================================================
ONOFA11
ONOFA21
	DW	$6840
	DW	$6840
ONOFA12
	DW	$6800
ONOFA22
	DW	$6880
	DW	$6800
;- - - - - - - - - - - - - - - - - - - - - -
;	水晶スイッチ ブロック凹凸
;- - - - - - - - - - - - - - - - - - - - - -
ONOFSUB		; On off block character chenge !
;(CGB)	LD	HL,$2100
;(CGB)	LD	(HL),$0C
		PUSH	AF
		LD	A,$0C
		CALL	Char_bank_set	; (CGB) キャラクターバンクセット
		LD	($2100),A
		POP	AF
;
	LD	HL,PLSTOP
	LD	(HL),$01
;
	LD	HL,ONOFFG
	LD	E,(HL)
	LD	D,$00
;
	INC	A
	CP	$03
	JR	NZ,ONOFS10
;
	PUSH	AF
	LD	A,(ONOFFG)
	XOR	%00000010
	LD	(ONOFFG),A
	POP	AF
;
ONOFS10
	LD	(ONOFTM),A
;
	CP	$04
	JR	NZ,ONOFS20
;
	LD	HL,ONOFA11
	JR	OFSUB1
ONOFS20
	CP	$08
	JR	NZ,ONOFS30
;
	LD	HL,ONOFA12
OFSUB1
	ADD	HL,DE
	LD	DE,$9040
;
	JR	OFSUB3
;
ONOFS30
	CP	$06
	JR	NZ,ONOFS40
;
	LD	HL,ONOFA21
	JR	OFSUB2
ONOFS40
	CP	$0A
	JR	NZ,ONOFS50
;
	XOR	A
	LD	(ONOFTM),A
;
	LD	HL,ONOFA22
OFSUB2
	ADD	HL,DE
	LD	DE,$9080
OFSUB3
	LD	BC,$0040
	LD	A,(HLI)
	LD	H,(HL)
	LD	L,A
	JP  	DATA_MOV
ONOFS50
	JP	PLCSET
;
;======================================================
CHR4TR
	LD	BC,$0040
DTMOVS
	CALL	DATA_MOV
;
DTMOVS2
	XOR	A
	LD	(CHTRF2),A
;
	LD	A,$0C
	LD	($2100),A
;
	JP	PLCSET
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	1 Unit BG chenge  		     %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
BGCAXD
	DB	$0C,$03,$08,$08
BGCAYD
	DB	$0A,$0A,$05,$10
PLHKC0
	DB	$36,$38,$3A,$3C
PLHKCK
	DB	%00000010
	DB	%00000001
	DB	%00001000
	DB	%00000100
PLHKXD
	DB	$FC,$04,0,0
PLHKYD
	DB	$00,$00,$04,$00
;----------------------------------
BGCACH
	CALL	BGCACHS
;
	LD	A,$02
	JP	PBSET
;
BGCACHS
	LD	HL,DUSHFG
	LD	A,(PLCAMD)
	OR	(HL)
	LD	HL,PLZPSL
	OR	(HL)
	LD	HL,PLMODE
	OR	(HL)
;;;11/26	JP	NZ,UNCG90	;ヨーロッパ版で変更
		RET	NZ		;
;
	LD	A,(PLCMKI)
	LD	E,A
	LD	D,$00
;
	LD	HL,BGCAXD
	ADD	HL,DE
	LD	A,(PLXPSL)
	ADD	A,(HL)
	SUB	$08
	AND	$F0
	LD	(OBJXP),A
;
	SWAP	A
	LD	C,A
;
	LD	HL,BGCAYD
	ADD	HL,DE
	LD	A,(PLYPSL)
	ADD	A,(HL)
	SUB	$10
	AND	$F0
	LD	(OBJYP),A
;
	OR	C
	LD	E,A
	LD	(WORK1),A
	LD	HL,BGUNDT+$11
	ADD	HL,DE
	LD	A,H
	CP	$D7
	JP	NZ,PLHK20
	LD	A,(HL)
	LD	(WORK0),A
	LD	E,A
;
	LD	A,(DJFLAG)
	LD	D,A
;
	CALL	BGCRRD
	LD	(WORK5),A
;
	LD	A,(WORK0)
	CP	DHTN1		; タンス？
	JR	Z,PLHK211
;
	LD	A,(WORK5) ;HL)
	CP	$00  
	JP	Z,PLHK20	; door etc
	CP	$01
	JR	Z,PLHK11
	CP	$50
	JP	Z,PLHK20
	CP	$51
	JP	Z,PLHK20
	CP	$10+1  ;GAK2D+1
	JP	C,PLHK20	; Tobiori
	CP	$D3+1
	JP	NC,PLHK20
	CP	$D0
	JR	NC,PLHK11
	CP	$7C
	JP	NC,PLHK20
;
PLHK11
	LD	A,(WORK0)
	LD	E,A
	CP	FUKRO		; ふくろう像
	JR	Z,PLHK211T
	CP	KAZA1		; 風見鳥！
	JR	Z,PLHK211T
	CP	KNBAN		; 看板？
	JP	NZ,PLHK222
;
PLHK211T
	LD	A,(DJFLAG)
	AND	A
	LD	A,E
	JP	NZ,PLHK222
;
PLHK211
	LD	E,A
	LD	A,(PLCMKI)
	CP	02
	JP	NZ,UNR510
;
	LD	A,$02
	LD	(MSCRFG),A	; Not item set !
;
	LD	A,(KEYA2)
	AND	%00110000
	JP	Z,UNR510
;
	LD	A,E
	CP	KAZA1
	LD	A,$8E
	JR	Z,PLHK2321
	LD	A,E
	CP	FUKRO
	JR	Z,PLHK212	;
	CP	KNBAN
	JR	Z,PLHK212	;タンス メッセージ ?
;				; YES !
	LD	A,(MARINFG)
	AND	A
	JR	Z,PLTANS
;
	LD	A,$78
	CALL	MSGCH3
	JP	UNR510
;
PLTANS
	LD	A,(KENLEV)
	AND	A
	LD	A,(GRNDPT)
	JR	NZ,PLHK216
;
	LD	E,$FF	;てい！そんなこと、どこでおぼえた？
;
	CP	$A3	;タリンの家？
	JR	Z,PLHK2322
PLHK216
	LD	E,$FC	
	CP	$FA	;図書館？
	JR	Z,PLHK2322	
;
	LD	E,$FD	;あああああは、タンスをしらべた、、、
PLHK2322
	LD	A,E
	JR	PLHK232
PLHK212
	LD	A,(GRNDPT)
	LD	E,A
	LD	D,$00
	LD	A,$14 ;$01
	LD	($2100),A
	LD	HL,KNBNMSD
	ADD	HL,DE
	LD	A,(ONPUFG)
	LD	E,A
	LD	A,(HL)
	CP	$A9
	JR	NZ,PLHK123
;
	BIT	0,E
	JR	Z,PLHK123	;カエルの唄を覚えた？
;				; YES !
	LD	A,$AF
PLHK123
	CP	$AF
	JR	NZ,HKKN10	;秘密看板？
;
	BIT	0,E
	JR	NZ,HKKN10	;カエルの唄を覚えた？
;				; YES !
	LD	A,(OBJXP)
	SWAP	A
	AND	$0F
	LD	E,A
	LD	A,(OBJYP)
	AND	$F0
	OR	E				;YES !
	LD	(KHIMIFG),A	;チェック！
	JP	UNR510
HKKN10
	CP	$83
	JR	Z,PLHK232

		CP	$2D		; １－Ｅ ふくろう？
		JR	Z,PLHK233	; ＹＥＳ
PLHK2321
	CALL	MSGCH2
	JP	UNR510
PLHK232
	CALL	MSGCHK
	JR	UNR510
PLHK233
		CALL	MSGCH3
		JR	UNR510
PLHK222
	CP	DTRE0
	JR	NZ,UNR510	; Takara box ?
;				; yes !
	LD	A,(NAZOFG)
	AND	%00011111
	CP	$0D
	JR	Z,UNR510
;
	LD	A,(PLCMKI)
	CP	$02
	JR	NZ,UNR510
;
	LD	(MSCRFG),A	; Not item set !
;
	LD	A,(KEYA2)
	AND	%00110000
	JR	Z,UNR510
;
	LD	A,(YKFLAG)
	AND	A
	JR	NZ,PLHK13
;
	LD	A,(PLCMKI)
	CP	$2
	JR	NZ,UNR510	; Ue muki ?
;
PLHK13
	LD	A,$14
	LD	($2100),A
;
		CALL	TRC_SUB
;
;;;KK;;;	LD	A,(GRNDPT)
;;;KK;;;	LD	E,A
;;;KK;;;;
;;;KK;;;	LD	A,(DJFLAG)
;;;KK;;;	LD	D,A
;;;KK;;;;
;;;KK;;;	LD	A,(DNJNNO)
;;;KK;;;	CP	DJROOM2 ;$20
;;;KK;;;	JR	NC,TRC010
;;;KK;;;	CP	DJROOM ;$20
;;;KK;;;	JR	C,TRC010
;;;KK;;;	INC	D
;;;KK;;;TRC010
;;;KK;;;	LD	HL,DJTKDT
;;;KK;;;	ADD	HL,DE
;;;KK;;;	LD	A,(HL)
;;;KK;;;	CP	KAI
;;;KK;;;	JR	NZ,TRC011
;;;KK;;;;
;;;KK;;;	LD	A,(KENLEV)
;;;KK;;;	CP	$02
;;;KK;;;	LD	A,KAI
;;;KK;;;	JR	C,TRC011	;剣２取ったら貝殻はいらん！
;;;KK;;;;
;;;KK;;;	LD	A,C02
;;;KK;;;TRC011
;;;KK;;;	LD	(WORK8),A	; Takara No. !
;
	LD	A,$2
	LD	($2100),A
;
	CALL	TAKARST		; open set !
UNR510
	LD	A,(ITEMB)
	CP	PBULE
	JR	NZ,BCA900	; Bulesret check !
;
	LD	A,(KEYA1)
	AND	%00100000
	JR	NZ,BCA910
	RET
BCA900
	LD	A,(ITEMA)
	CP	PBULE
;;;11/26	JP	NZ,UNCG90	;ヨーロッパ版で変更
		RET	NZ		;
;
	LD	A,(KEYA1)
	AND	%00010000
;;;11/26	JP	Z,UNCG90	;ヨーロッパ版で変更
		RET	Z		;
;
BCA910
	LD	A,$02
	LD	($2100),A
	CALL	PCUTED		; cutting clear !
;
	LD	A,$01
	LD	(PLSTOP),A
;
	LD	A,(PLCMKI)
	LD	E,A
	LD	D,$0
	LD	HL,PLHKC0
	ADD	HL,DE
	LD	A,(HL)
	LD	(PLCHPT),A
;
	LD	HL,PLHKCK
	ADD	HL,DE
	LD	A,(KEYA1)
	AND	(HL) ;C
	JR	Z,PLHK20
;
	LD	HL,PLHKXD
	ADD	HL,DE
	LD	A,(HL)
	LD	(PLDSXD),A
;
	LD	HL,PLHKYD
	ADD	HL,DE
	LD	A,(HL)
	LD	(PLDSYD),A
;
	LD	HL,PLCHPT
	INC	(HL)
;
	LD	E,$08
	LD	A,(POWRFG)
	CP	$01
	JR	NZ,PLHK09
;
	LD	E,$03
PLHK09
	LD	HL,PLHKCT
	INC	(HL)
	LD	A,(HL)
	CP	E  ;$08
;;;11/26	JR	C,PLHK10	;ヨーロッパ版で変更
		RET	C		;
;
	XOR	A
	LD	(WORKE),A
;
	LD	A,(WORK0)
	CP	STUBO
	JR	Z,PLHKTBO ;50
	CP	IWA00
	JR	Z,PLHKTBO ;50
;
	LD	A,(DJFLAG)
	AND	A
;;;11/26	JR	NZ,PLHK10	;ヨーロッパ版で変更
		RET	NZ		;
;
	LD	A,(WORK0)
	CP	FLW00
	JR	Z,PLHK58
;;;11/26PLHK10				;ヨーロッパ版で削除
	RET
PLHK20
	XOR	A
	LD	(PLHKCT),A
	RET
;
;
PLHKTBO
	CALL	PLHK50
;
	LD	A,$14
	LD	($2100),A
;
	CALL	TUBOITEM ;壷内部アイテムセットチェック
;
	JP  	PBRETN
;
PLHK58
	LD	A,$01
	LD	(WORKE),A
PLHK50
	LD	A,(WORK1)
	LD	E,A
	LD	A,(WORK0)
	LD	(UNITNO),A
	CALL	BG1CHG
;
	LD	A,(PLCMKI)
	LD	(PLCAMK),A
;
	jp	KTOSET
;;;(CGB)	CALL	KTOSET
;;;11/26UNCG90				;ヨーロッパ版で削除
;;;11/26	RET			;
;=============================
BG1CHG
	LD	A,$14
	LD	($2100),A
;
	CALL	BG1CHGSB
;
	JP	PBRETN
;========================================
KTOSET
	LD	A,KTOBJ
	CALL	PLSHST
;;;11/26	JR	C,KOS090	;ヨーロッパ版で変更
		RET	C		;
;
	LD	A,$02
	LD	(SOUND2),A	;(S)
;
	LD	HL,ENMODE
	ADD	HL,DE
	LD	(HL),ECACH  ;A
;
	LD	HL,ENCHPT
	ADD	HL,DE
	LD	A,(WORKE)
	LD	(HL),A
;
		ld	c,e
		ld	b,d
;;10/31;	PUSH	DE
;;10/31;	POP	BC
	LD	E,$1
	LD	A,$03
	CALL	PBSET
;
	jp	ENCAPS
;;;(CGB)	CALL	ENCAPS
;;;11/26KOS090			;ヨーロッパ版で削除
;;;11/26	RET		;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	Move calc			     %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
MVCALC
	LD	A,(WNDFLG)
	AND	A
	RET	NZ
;
	LD	C,$1
	CALL	XCALC
PLXCLC
	LD	C,$0
	LD	(WORK0),A
;-----------------------------------------
XCALC	
	LD	B,$0		;INDEX (H)
;
	LD	HL,PLXSPD
	ADD	HL,BC 
;
	LD	A,(HL)
	PUSH	AF
	SWAP	A
	AND	$F0
	LD	HL,PLXSDR
	ADD	HL,BC 
	ADD	A,(HL)
	LD	(HL),A
	RL	D
;
	LD	HL,PLXPSL
	ADD	HL,BC 
;
	POP	AF
;
	LD	E,$0
	BIT	7,A
	JR	Z,XC00
	LD	E,$F0
XC00
	SWAP	A
	AND	$0F
	OR	E
	RR	D
	ADC	A,(HL)
	LD	(HL),A
	RET
;-----------------------------------------
;-----------------------------------------
PLZCLC	
	LD	A,(PLZSPD)
	PUSH	AF
	SWAP	A
	AND	$F0
	LD	HL,PLZSDR
	ADD	A,(HL)
	LD	(HL),A
	RL	D
;
	LD	HL,PLZPSL
;
	POP	AF
;
	LD	E,$0
	BIT	7,A
	JR	Z,ZC00
	LD	E,$F0
ZC00
	SWAP	A
	AND	$0F
	OR	E
	RR	D
	ADC	A,(HL)
	LD	(HL),A
	RET
;
;1998/11/10;;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;1998/11/10;;%				       %
;1998/11/10;;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;1998/11/10;MESEGE
;1998/11/10;	LD	A,(MSGEFG)
;1998/11/10;	AND	A
;1998/11/10;	RET	Z
;1998/11/10;;;	JR	Z,MSG090
;1998/11/10;;
;1998/11/10;	LD	E,A
;1998/11/10;;
;1998/11/10;	LD	A,(GMMODE)
;1998/11/10;	CP	ENDG
;1998/11/10;	LD	A,$7E
;1998/11/10;	JR	NZ,MJBI010
;1998/11/10;;
;1998/11/10;	LD	A,$7F
;1998/11/10;MJBI010
;1998/11/10;	LD	(ENHELP),A	;べた No.
;1998/11/10;;
;1998/11/10;	LD	A,(MJSTCTH)
;1998/11/10;	AND	A
;1998/11/10;	LD	A,(MJSTCT)
;1998/11/10;	JR	NZ,MJBI18
;1998/11/10;;
;1998/11/10;	CP	$20
;1998/11/10;	JR	C,MJBI20
;1998/11/10;MJBI18
;1998/11/10;	AND	$0F
;1998/11/10;	OR	$10
;1998/11/10;MJBI20
;1998/11/10;	LD	(MJSTCT2),A
;1998/11/10;;
;1998/11/10;	LD	A,E
;1998/11/10;	AND	%01111111
;1998/11/10;	DEC	A
;1998/11/10;	RST	0
;1998/11/10;	DW	MSOKCK	; Vram check !S
;1998/11/10;;
;1998/11/10;	DW	MSVRSV2	;Vram save 1
;1998/11/10;	DW	MSVRSV2 ;2
;1998/11/10;	DW	MSVRSV2 ;3
;1998/11/10;	DW	MSMASKS ;Window BG set
;1998/11/10;;
;1998/11/10;MJSA	DW	MJBGIT
;1998/11/10;	DW	MJBGST
;1998/11/10;	DW	MJCHST
;1998/11/10;;
;1998/11/10;MSCC1	DW	MSSCR1	; Mesege scroll 1
;1998/11/10;MSCC2	DW	MSSCR2	;
;1998/11/10;MSCC3	DW	MSSCR3	;
;1998/11/10;;
;1998/11/10;MSK	DW	MSRWIT	; Return key in check (TEST)
;1998/11/10;MQE	DW	MSQUES	; Question check 
;1998/11/10;;
;1998/11/10;MBR	DW	MSRETN	;BG return
;1998/11/10;	DW	MSGEND
;1998/11/10;;
;1998/11/10;MJST	EQU	$5+1
;1998/11/10;MSSC1	EQU	$8+1
;1998/11/10;MSSC2	EQU	$9+1
;1998/11/10;MSSC3	EQU	$A+1
;1998/11/10;MSKYW	EQU	$B+1
;1998/11/10;MSQUE	EQU	$C+1
;1998/11/10;MSBGR	EQU	$D+1
;1998/11/10;;--------------------------------------------------
;1998/11/10;MSOKCK
;1998/11/10;	LD	A,$14
;1998/11/10;	LD	($2100),A
;1998/11/10;;
;1998/11/10;	JP  	MSOKCKL
;1998/11/10;;---メッセージナンバーが１００をこえる場合---------------
;1998/11/10;MSGCH2
;1998/11/10;	CALL	MSGCHK
;1998/11/10;	LD	A,$01
;1998/11/10;	LD	(MSGENOH),A
;1998/11/10;	RET
;1998/11/10;;---メッセージナンバーが２００をこえる場合---------------
;1998/11/10;MSGCH3
;1998/11/10;	CALL	MSGCHK
;1998/11/10;	LD	A,$02
;1998/11/10;	LD	(MSGENOH),A
;1998/11/10;	RET
;1998/11/10;;------------------------------------
;1998/11/10;MSGCHK
;1998/11/10;	PUSH	AF
;1998/11/10;;
;1998/11/10;	XOR	A
;1998/11/10;	LD	(MSANSR),A
;1998/11/10;;
;1998/11/10;	POP	AF
;1998/11/10;MSGCHK2
;1998/11/10;	LD	(MSGENO),A
;1998/11/10;;
;1998/11/10;	XOR	A
;1998/11/10;	LD	(MSSTCT),A
;1998/11/10;	LD	(MJSTCT),A
;1998/11/10;	LD	(MJSTCTH),A
;1998/11/10;	LD	(NMSTCT),A
;1998/11/10;	LD	(MSGENOH),A	; MSXX or M1XX
;1998/11/10;;;	LD	(MJSTCT3),A
;1998/11/10;;
;1998/11/10;	LD	A,$0F
;1998/11/10;	LD	(FKMSFG),A	;話 音！
;1998/11/10;;
;1998/11/10;	LD	A,(PLYPSL)
;1998/11/10;	CP	$48
;1998/11/10;	RRA
;1998/11/10;	AND	%10000000
;1998/11/10;	OR	$1
;1998/11/10;	LD	(MSGEFG),A
;1998/11/10;;;DGG
;1998/11/10;	RET
;1998/11/10;;=====================================================
;1998/11/10;MSVRSV2
;1998/11/10;;;	CALL	MSVRSV	; In V_blanking !!
;1998/11/10;	RET	
;1998/11/10;;=====================================================
;1998/11/10;MSGEND
;1998/11/10;	XOR	A
;1998/11/10;	LD	(MSGEFG),A
;1998/11/10;;
;1998/11/10;	LD	A,$18
;1998/11/10;	LD	(MSOFTM),A	;メッセージ連続防止タイム！
;1998/11/10;;;	LD	A,$0C
;1998/11/10;;;	LD	(CHTRF2),A	;OBJ 楽器転送！
;1998/11/10;	RET
;1998/11/10;;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;1998/11/10;;%	柴原 サブるうちん　２	    %
;1998/11/10;;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;1998/11/10;MSBGAD
;1998/11/10;	DB	00,36,72
;1998/11/10;	DB	00,36,72
;1998/11/10;MSVRAH
;1998/11/10;	DB	$98,$98,$98
;1998/11/10;	DB	$99,$99,$99
;1998/11/10;MSVRAL
;1998/11/10;	DB	$21,$61,$A1
;1998/11/10;	DB	$41,$81,$C1
;1998/11/10;;--------------------------------------
;1998/11/10;MSVRSV
;1998/11/10;	LD	A,(MSGEFG)
;1998/11/10;	BIT	7,A
;1998/11/10;	JR	Z,MVS010
;1998/11/10;;
;1998/11/10;	AND	%01111111
;1998/11/10;	ADD	A,$3
;1998/11/10;MVS010
;1998/11/10;	LD	E,A
;1998/11/10;	LD	D,$0
;1998/11/10;;
;1998/11/10;	LD	HL,MSBGAD-1-1
;1998/11/10;	ADD	HL,DE
;1998/11/10;	LD	A,(HL)
;1998/11/10;	LD	C,A
;1998/11/10;	LD	B,$0
;1998/11/10;	LD	HL,MSBGBF
;1998/11/10;	ADD	HL,BC
;1998/11/10;	PUSH	HL
;1998/11/10;	POP	BC
;1998/11/10;;
;1998/11/10;	LD	HL,MSVRAL-1-1
;1998/11/10;	ADD	HL,DE
;1998/11/10;	LD	A,(SCVRML)
;1998/11/10;	ADD	A,(HL)
;1998/11/10;	LD	L,A
;1998/11/10;	LD	(WORK0),A
;1998/11/10;;
;1998/11/10;	LD	HL,MSVRAH-1-1
;1998/11/10;	ADD	HL,DE
;1998/11/10;	LD	A,(SCVRMH)
;1998/11/10;	ADD	A,(HL)
;1998/11/10;	LD	H,A
;1998/11/10;	LD	A,(WORK0)
;1998/11/10;	LD	L,A
;1998/11/10;;
;1998/11/10;	XOR	A
;1998/11/10;	LD	E,A
;1998/11/10;	LD	D,A
;1998/11/10;MSV02
;1998/11/10;	LD	A,(HL)
;1998/11/10;	LD	(BC),A
;1998/11/10;	INC	BC
;1998/11/10;;
;1998/11/10;	LD	A,L
;1998/11/10;	ADD	A,$01
;1998/11/10;	AND	$1F
;1998/11/10;	JR	NZ,LSTA
;1998/11/10;;
;1998/11/10;	LD	A,L
;1998/11/10;	AND	$E0
;1998/11/10;	LD	L,A
;1998/11/10;	JR	RSTA
;1998/11/10;;
;1998/11/10;LSTA
;1998/11/10;	INC	L
;1998/11/10;RSTA
;1998/11/10;	INC	E
;1998/11/10;	LD	A,E
;1998/11/10;	CP	$12
;1998/11/10;	JR	NZ,MSV02
;1998/11/10;;
;1998/11/10;	LD	E,$00
;1998/11/10;	LD	A,(WORK0)
;1998/11/10;	ADD	A,$20
;1998/11/10;	LD	(WORK0),A
;1998/11/10;	JR	NC,HSORT
;1998/11/10;;
;1998/11/10;	INC	H
;1998/11/10;HSORT
;1998/11/10;	LD	L,A
;1998/11/10;	INC	D
;1998/11/10;	LD	A,D
;1998/11/10;	CP	$02  ;05
;1998/11/10;	JR	NZ,MSV02
;1998/11/10;;
;1998/11/10;	RET
;1998/11/10;;=====================================================
;1998/11/10;;=====================================================
;1998/11/10;;-----------------------------------------------------------
;1998/11/10;;=====================================================
;1998/11/10;KWDTL
;1998/11/10;	DB	$61,$41,$81,$21,$A1	;上の人
;1998/11/10;	DB	$81,$61,$A1,$41,$C1	;下の人
;1998/11/10;KWDTH
;1998/11/10;	DB	$98,$98,$98,$98,$98	;
;1998/11/10;	DB	$99,$99,$99,$99,$99	;
;1998/11/10;;
;1998/11/10;MSMASKS
;1998/11/10;;	LD	A,(VRAMD+1)
;1998/11/10;;	AND	A
;1998/11/10;;	JR	NZ,MSRET
;1998/11/10;;
;1998/11/10;	LD	A,(MSGEFG)
;1998/11/10;	LD	C,A
;1998/11/10;;
;1998/11/10;	LD	A,(MSSTCT)
;1998/11/10;	CP	$05
;1998/11/10;	JR	Z,MSFIN
;1998/11/10;;
;1998/11/10;	BIT	7,C
;1998/11/10;	JR	Z,MSUP
;1998/11/10;;
;1998/11/10;	ADD	A,$05
;1998/11/10;MSUP
;1998/11/10;	LD	C,A
;1998/11/10;	LD	B,$0
;1998/11/10;;
;1998/11/10;	LD	E,$01
;1998/11/10;	LD	D,$00
;1998/11/10;;
;1998/11/10;	LD	A,(SCVRMH)
;1998/11/10;	LD	HL,KWDTH
;1998/11/10;	ADD	HL,BC
;1998/11/10;	ADD	A,(HL)
;1998/11/10;	LD	HL,VRAMD
;1998/11/10;	ADD	HL,DE	
;1998/11/10;	LD	(HLI),A
;1998/11/10;	PUSH	HL
;1998/11/10;;
;1998/11/10;	LD	A,(SCVRML)
;1998/11/10;	LD	HL,KWDTL
;1998/11/10;	ADD	HL,BC
;1998/11/10;	ADD	A,(HL)
;1998/11/10;	POP	HL
;1998/11/10;;
;1998/11/10;	LD	(HLI),A
;1998/11/10;;
;1998/11/10;	LD	A,$51
;1998/11/10;	LD	(HLI),A
;1998/11/10;;
;1998/11/10;	LD	A,(ENHELP) ;$7E
;1998/11/10;	LD	(HLI),A
;1998/11/10;;
;1998/11/10;;;	XOR	A
;1998/11/10;	LD	(HL),$00 ;A
;1998/11/10;;
;1998/11/10;	LD	HL,MSSTCT
;1998/11/10;	INC	(HL)
;1998/11/10;	RET
;1998/11/10;;---------------------
;1998/11/10;MSFIN
;1998/11/10;;;	NOP
;1998/11/10;;
;1998/11/10;MSNEXT
;1998/11/10;	LD	HL,MSGEFG
;1998/11/10;	INC	(HL)
;1998/11/10;MSRET
;1998/11/10;	RET
;1998/11/10;;=====================================================
;1998/11/10;MSRWIT
;1998/11/10;;	LD	A,(MSSDWT)
;1998/11/10;;	AND	A
;1998/11/10;;	JR	Z,MSRWI10
;1998/11/10;;;
;1998/11/10;;	LD	A,($D369)
;1998/11/10;;	AND	A
;1998/11/10;;	JR	NZ,MSRW10
;1998/11/10;;;
;1998/11/10;;	XOR	A
;1998/11/10;;	LD	(MSSDWT),A
;1998/11/10;;MSRWI10
;1998/11/10;	LD	A,(MSKYOF)
;1998/11/10;	AND	A
;1998/11/10;	JR	NZ,MSRW10	; Key check ok ?
;1998/11/10;;				; yes !
;1998/11/10;	LD	A,(KEYA2)
;1998/11/10;	AND	%00110000
;1998/11/10;	JR	Z,MSRW10
;1998/11/10;;
;1998/11/10;;;	CALL	MSNEXT
;1998/11/10;BGRSET
;1998/11/10;	XOR	A
;1998/11/10;	LD	(MSSTCT),A
;1998/11/10;;
;1998/11/10;	LD	A,(MSGEFG)
;1998/11/10;	AND	$F0
;1998/11/10;	OR	MSBGR	; Game BG return
;1998/11/10;	LD	(MSGEFG),A
;1998/11/10;MSRW10
;1998/11/10;	RET
;1998/11/10;;=====================================================
;1998/11/10;;=====================================================
;1998/11/10;;=====================================================
;1998/11/10;;	
;1998/11/10;REDL
;1998/11/10;	DB	$A1,$21,$81,$41,$61	;上の人
;1998/11/10;	DB	$C1,$41,$A1,$61,$81	;下の人
;1998/11/10;REDH
;1998/11/10;	DB	$98,$98,$98,$98,$98	;
;1998/11/10;	DB	$99,$99,$99,$99,$99	;
;1998/11/10;MSGZDT
;1998/11/10;	DB	$48,$00,$36,$12,$24
;1998/11/10;	DB	$48,$00,$36,$12,$24
;1998/11/10;
;1998/11/10;;
;1998/11/10;MSRETN
;1998/11/10;	LD	A,(MSGEFG)
;1998/11/10;	LD	C,A
;1998/11/10;;
;1998/11/10;	LD	A,(MSSTCT)
;1998/11/10;	CP	$05
;1998/11/10;	JR	Z,MSFIN
;1998/11/10;;
;1998/11/10;	BIT	7,C
;1998/11/10;	JR	Z,MSRUP
;1998/11/10;;
;1998/11/10;	ADD	A,$05
;1998/11/10;MSRUP
;1998/11/10;	LD	C,A
;1998/11/10;	LD	B,$0
;1998/11/10;;
;1998/11/10;	LD	E,$01
;1998/11/10;	LD	D,$00
;1998/11/10;;
;1998/11/10;	LD	A,(SCVRMH)
;1998/11/10;	LD	HL,REDH
;1998/11/10;	ADD	HL,BC
;1998/11/10;	ADD	A,(HL)
;1998/11/10;	LD	HL,VRAMD
;1998/11/10;	ADD	HL,DE	
;1998/11/10;	LD	(HLI),A
;1998/11/10;	PUSH	HL
;1998/11/10;;
;1998/11/10;	LD	A,(SCVRML)
;1998/11/10;	LD	HL,REDL
;1998/11/10;	ADD	HL,BC
;1998/11/10;	ADD	A,(HL)
;1998/11/10;	POP	HL
;1998/11/10;;
;1998/11/10;	LD	(HLI),A
;1998/11/10;;
;1998/11/10;	LD	A,$11
;1998/11/10;	LD	(HLI),A
;1998/11/10;;
;1998/11/10;	PUSH	HL
;1998/11/10;;
;1998/11/10;	LD	HL,MSGZDT
;1998/11/10;	ADD	HL,BC
;1998/11/10;	LD	A,(HL)
;1998/11/10;	LD	C,A
;1998/11/10;	LD	B,$00
;1998/11/10;	LD	HL,MSBGBF
;1998/11/10;	ADD	HL,BC
;1998/11/10;	PUSH	HL
;1998/11/10;	POP	BC
;1998/11/10;;
;1998/11/10;	POP	HL
;1998/11/10;	LD	E,$12	
;1998/11/10;;
;1998/11/10;MRITA
;1998/11/10;	LD	A,(BC)
;1998/11/10;	INC	BC
;1998/11/10;	LD	(HLI),A
;1998/11/10;	DEC	E
;1998/11/10;	JR	NZ,MRITA
;1998/11/10;;
;1998/11/10;;;	XOR	A
;1998/11/10;	LD	(HL),$00 ;A
;1998/11/10;;
;1998/11/10;	LD	HL,MSSTCT
;1998/11/10;	INC	(HL)
;1998/11/10;	RET
;1998/11/10;;=====================================================
;1998/11/10;;-----------------------------------------------------	
;1998/11/10;MJBGIT
;1998/11/10;	LD	A,$1C
;1998/11/10;	LD	($2100),A
;1998/11/10;;
;1998/11/10;	LD	A,(MJSTTM)
;1998/11/10;	AND	A
;1998/11/10;	JR	Z,MJBI10
;1998/11/10;;
;1998/11/10;	DEC	A
;1998/11/10;	LD	(MJSTTM),A
;1998/11/10;	RET
;1998/11/10;MJBI10
;1998/11/10;	LD	A,(MJSTCT)
;1998/11/10;	AND	$1F
;1998/11/10;	LD	E,A
;1998/11/10;	LD	D,0
;1998/11/10;;
;1998/11/10;	LD	C,$01
;1998/11/10;	LD	B,$00
;1998/11/10;;
;1998/11/10;	LD	HL,MJ1DTH
;1998/11/10;	ADD	HL,DE
;1998/11/10;	LD	A,(HL)
;1998/11/10;	LD	HL,VRAMD
;1998/11/10;	ADD	HL,BC
;1998/11/10;	LD	(HLI),A
;1998/11/10;;
;1998/11/10;	PUSH	HL
;1998/11/10;	LD	HL,MJ1DTL
;1998/11/10;	ADD	HL,DE
;1998/11/10;	LD	A,(HL)
;1998/11/10;	POP	HL
;1998/11/10;;
;1998/11/10;	LD	(HLI),A
;1998/11/10;;
;1998/11/10;	LD	A,$4F
;1998/11/10;	LD	(HLI),A	
;1998/11/10;;
;1998/11/10;	LD	A,$FF	; Beta 3
;1998/11/10;	LD	(HLI),A
;1998/11/10;;
;1998/11/10;;;	XOR	A
;1998/11/10;	LD	(HL),$00 ;A
;1998/11/10;;
;1998/11/10;	JP  	MSNEXT
;1998/11/10;;RET
;1998/11/10;;=====================================================
;1998/11/10;;;(2)
;1998/11/10;;MJ2DT
;1998/11/10;;	DB	$D0,$D1,$D2,$D3,$D4,$D5,$D6,$D7
;1998/11/10;;	DB	$D8,$D9,$DA,$DB,$DC,$DD,$DE,$DF
;1998/11/10;;	DB	$E0,$E1,$E2,$E3,$E4,$E5,$E6,$E7
;1998/11/10;;	DB	$E8,$E9,$EA,$EB,$EC,$ED,$EE,$EF
;1998/11/10;;;	DB	$D0,$D1,$D2,$D3,$D4,$D5,$D6,$D7
;1998/11/10;;;	DB	$D8,$D9,$DA,$DB,$DC,$DD,$DE,$DF
;1998/11/10;;;	DB	$E0,$E1,$E2,$E3,$E4,$E5,$E6,$E7
;1998/11/10;;;	DB	$E8,$E9,$EA,$EB,$EC,$ED,$EE,$EF
;1998/11/10;;;
;1998/11/10;;MJ2DTH
;1998/11/10;;	DB	$98,$98,$98,$98,$98,$98,$98,$98
;1998/11/10;;	DB	$98,$98,$98,$98,$98,$98,$98,$98
;1998/11/10;;	DB	$98,$98,$98,$98,$98,$98,$98,$98
;1998/11/10;;	DB	$98,$98,$98,$98,$98,$98,$98,$98
;1998/11/10;;	DB	$99,$99,$99,$99,$99,$99,$99,$99
;1998/11/10;;	DB	$99,$99,$99,$99,$99,$99,$99,$99
;1998/11/10;;	DB	$99,$99,$99,$99,$99,$99,$99,$99
;1998/11/10;;	DB	$99,$99,$99,$99,$99,$99,$99,$99
;1998/11/10;;;
;1998/11/10;;MJ2DTL
;1998/11/10;;	DB	$42,$43,$44,$45,$46,$47,$48,$49
;1998/11/10;;	DB	$4A,$4B,$4C,$4D,$4E,$4F,$50,$51
;1998/11/10;;	DB	$82,$83,$84,$85,$86,$87,$88,$89
;1998/11/10;;	DB	$8A,$8B,$8C,$8D,$8E,$8F,$90,$91
;1998/11/10;;	DB	$62,$63,$64,$65,$66,$67,$68,$69
;1998/11/10;;	DB	$6A,$6B,$6C,$6D,$6E,$6F,$70,$71
;1998/11/10;;	DB	$A2,$A3,$A4,$A5,$A6,$A7,$A8,$A9
;1998/11/10;;	DB	$AA,$AB,$AC,$AD,$AE,$AF,$B0,$B1
;1998/11/10;;;--------------------------------------------------
;1998/11/10;MJBGST
;1998/11/10;	LD	A,$1C
;1998/11/10;	LD	($2100),A
;1998/11/10;;
;1998/11/10;	LD	A,(MSGEFG)
;1998/11/10;	LD	C,A
;1998/11/10;;
;1998/11/10;	LD	A,(MJSTCT2)
;1998/11/10;	BIT	7,C
;1998/11/10;	JR	Z,MJ2UP
;1998/11/10;;
;1998/11/10;	ADD	A,$20
;1998/11/10;MJ2UP
;1998/11/10;	LD	C,A
;1998/11/10;	LD	B,$0
;1998/11/10;;
;1998/11/10;	LD	E,$01
;1998/11/10;	LD	D,$00
;1998/11/10;;
;1998/11/10;	LD	A,(SCVRMH)
;1998/11/10;	LD	HL,MJ2DTH
;1998/11/10;	ADD	HL,BC
;1998/11/10;	ADD	A,(HL)
;1998/11/10;	LD	HL,VRAMD
;1998/11/10;	ADD	HL,DE
;1998/11/10;	LD	(HLI),A
;1998/11/10;	LD	(MSVRMH),A
;1998/11/10;;
;1998/11/10;	PUSH	HL
;1998/11/10;;
;1998/11/10;	LD	HL,MJ2DTL
;1998/11/10;	ADD	HL,BC
;1998/11/10;	LD	A,(HL)
;1998/11/10;	AND	$E0
;1998/11/10;	ADD	A,$20
;1998/11/10;	LD	E,A
;1998/11/10;;
;1998/11/10;	LD	A,(SCVRML)
;1998/11/10;	ADD	A,(HL)
;1998/11/10;	LD	D,A
;1998/11/10;	CP	E
;1998/11/10;	JR	C,MJ2010
;1998/11/10;;
;1998/11/10;	LD	A,D
;1998/11/10;	SUB	$20
;1998/11/10;	LD	D,A
;1998/11/10;MJ2010
;1998/11/10;	LD	A,D
;1998/11/10;	LD	(MSVRML),A
;1998/11/10;	POP	HL
;1998/11/10;;
;1998/11/10;	LD	(HLI),A
;1998/11/10;	XOR	A
;1998/11/10;	LD	(HLI),A
;1998/11/10;;
;1998/11/10;	PUSH	HL
;1998/11/10;;
;1998/11/10;	LD	A,(MJSTCT)
;1998/11/10;	AND	$1F
;1998/11/10;	LD	C,A
;1998/11/10;	LD	HL,MJ2DT
;1998/11/10;	ADD	HL,BC
;1998/11/10;	LD	A,(HL)
;1998/11/10;;
;1998/11/10;	POP	HL
;1998/11/10;;
;1998/11/10;	LD	(HLI),A
;1998/11/10;;;	XOR	A
;1998/11/10;;;	LD	(HLI),A
;1998/11/10;;
;1998/11/10;	CALL	MSNEXT
;1998/11/10;;;	RET
;1998/11/10;	JP	MJCHST
;1998/11/10;;=====================================================
;1998/11/10;;(3)
;1998/11/10;;MJ3DTL
;1998/11/10;;	DB	$00,$10,$20,$30,$40,$50,$60,$70
;1998/11/10;;	DB	$80,$90,$A0,$B0,$C0,$D0,$E0,$F0
;1998/11/10;;	DB	$00,$10,$20,$30,$40,$50,$60,$70
;1998/11/10;;	DB	$80,$90,$A0,$B0,$C0,$D0,$E0,$F0
;1998/11/10;;	DB	$00,$10,$20,$30,$40,$50,$60,$70
;1998/11/10;;	DB	$80,$90,$A0,$B0,$C0,$D0,$E0,$F0
;1998/11/10;;	DB	$00,$10,$20,$30,$40,$50,$60,$70
;1998/11/10;;	DB	$80,$90,$A0,$B0,$C0,$D0,$E0,$F0
;1998/11/10;;;
;1998/11/10;;MJ3DTH
;1998/11/10;;	DB	$00,$00,$00,$00,$00,$00,$00,$00
;1998/11/10;;	DB	$00,$00,$00,$00,$00,$00,$00,$00
;1998/11/10;;	DB	$01,$01,$01,$01,$01,$01,$01,$01
;1998/11/10;;	DB	$01,$01,$01,$01,$01,$01,$01,$01
;1998/11/10;;	DB	$02,$02,$02,$02,$02,$02,$02,$02
;1998/11/10;;	DB	$02,$02,$02,$02,$02,$02,$02,$02
;1998/11/10;;	DB	$03,$03,$03,$03,$03,$03,$03,$03
;1998/11/10;;	DB	$03,$03,$03,$03,$03,$03,$03,$03
;1998/11/10;;-----------------------------------------------------
;1998/11/10;;=================================
;1998/11/10;MJCHST
;1998/11/10;	LD	A,$1C
;1998/11/10;	LD	($2100),A
;1998/11/10;;
;1998/11/10;;	LD	HL,WORK0
;1998/11/10;;	LD	A,%00000000
;1998/11/10;;	LD	E,$10
;1998/11/10;;MJCS00
;1998/11/10;;	LD	(HLI),A
;1998/11/10;;	DEC	E
;1998/11/10;;	JR	NZ,MJCS00
;1998/11/10;;
;1998/11/10;	LD	A,(MJSTCT) ;3)
;1998/11/10;	AND	$1F
;1998/11/10;;
;1998/11/10;	LD	C,A
;1998/11/10;	LD	B,0
;1998/11/10;;
;1998/11/10;	LD	E,$05  ;1
;1998/11/10;	LD	D,$00
;1998/11/10;;
;1998/11/10;	LD	HL,MJ1DTH
;1998/11/10;	ADD	HL,BC
;1998/11/10;	LD	A,(HL)
;1998/11/10;	LD	HL,VRAMD
;1998/11/10;	ADD	HL,DE
;1998/11/10;	LD	(HLI),A
;1998/11/10;;
;1998/11/10;	PUSH	HL
;1998/11/10;	LD	HL,MJ1DTL
;1998/11/10;	ADD	HL,BC
;1998/11/10;	LD	A,(HL)
;1998/11/10;;
;1998/11/10;	POP	HL
;1998/11/10;	LD	(HLI),A
;1998/11/10;;
;1998/11/10;	LD	A,$0F
;1998/11/10;	LD	(HLI),A
;1998/11/10;;
;1998/11/10;	PUSH	HL
;1998/11/10;;
;1998/11/10;	LD	A,(MSGENOH)
;1998/11/10;	LD	D,A
;1998/11/10;;
;1998/11/10;	LD	A,(MSGENO)
;1998/11/10;	LD	E,A
;1998/11/10;	SLA	E
;1998/11/10;	RL	D
;1998/11/10;;
;1998/11/10;	LD	HL,MSGEAD
;1998/11/10;	ADD	HL,DE
;1998/11/10;	LD	A,(HLI)
;1998/11/10;	LD	E,A
;1998/11/10;	LD	D,(HL)
;1998/11/10;	PUSH	DE
;1998/11/10;;;	POP	HL
;1998/11/10;;
;1998/11/10;	LD	A,(MSGENO)
;1998/11/10;	LD	E,A
;1998/11/10;	LD	A,(MSGENOH)
;1998/11/10;	LD	D,A
;1998/11/10;	LD	HL,MSCANC
;1998/11/10;	ADD	HL,DE
;1998/11/10;	LD	A,(HL)
;1998/11/10;	AND	%00011111
;1998/11/10;	LD	($2100),A
;1998/11/10;;
;1998/11/10;	POP	HL
;1998/11/10;;
;1998/11/10;;;	LD	A,(HL)
;1998/11/10;;	LD	E,$1C
;1998/11/10;;	LD	A,(MSGENOH)
;1998/11/10;;	AND	A
;1998/11/10;;	JR	Z,MSBKSSS
;1998/11/10;;;
;1998/11/10;;	LD	E,$1D
;1998/11/10;;	CP	$01
;1998/11/10;;	JR	Z,MSBKSSS
;1998/11/10;;;
;1998/11/10;;	LD	E,$14
;1998/11/10;;MSBKSSS
;1998/11/10;;	LD	A,E
;1998/11/10;;	LD	($2100),A
;1998/11/10;;
;1998/11/10;;	LD	A,(MSGENO)
;1998/11/10;;	CP	$3C
;1998/11/10;;	JR	NZ,SBS
;1998/11/10;;;
;1998/11/10;;	LD	HL,MW3BCC
;1998/11/10;;SBS
;1998/11/10;	LD	A,(MJSTCT) ;3)
;1998/11/10;	LD	E,A
;1998/11/10;	LD	A,(MJSTCTH)
;1998/11/10;	LD	D,A  ;$0
;1998/11/10;	ADD	HL,DE
;1998/11/10;	LD	A,(HLI)
;1998/11/10;;
;1998/11/10;	LD	E,A
;1998/11/10;	LD	A,(HL)
;1998/11/10;	LD	(MSNXMJ),A	;次の文字 No. 
;1998/11/10;;
;1998/11/10;;;	LD	A,$0D
;1998/11/10;;;	LD	($2100),A
;1998/11/10;	CALL	PBRETN
;1998/11/10;	LD	A,E
;1998/11/10;;
;1998/11/10;	LD	(WORK0),A
;1998/11/10;	CP	WE2
;1998/11/10;	JR	NZ,MJCS06	; Question check ?
;1998/11/10;;				; yes !
;1998/11/10;	POP	HL
;1998/11/10;	XOR	A
;1998/11/10;	LD	(VRAMD+1),A
;1998/11/10;;
;1998/11/10;MSQUESS
;1998/11/10;	LD	A,(MSGEFG)
;1998/11/10;	AND	$F0
;1998/11/10;	OR	MSQUE
;1998/11/10;	LD	(MSGEFG),A
;1998/11/10;;---------------------------------------
;1998/11/10;YASDST
;1998/11/10;	LD	A,$15
;1998/11/10;	LD	(SOUND1),A	;(S)矢印音
;1998/11/10;	RET
;1998/11/10;;-------------------------------------
;1998/11/10;MJCS06
;1998/11/10;	CP	WED
;1998/11/10;	JR	NZ,MJCS08
;1998/11/10;;
;1998/11/10;	POP	HL
;1998/11/10;;
;1998/11/10;	XOR	A
;1998/11/10;	LD	(VRAMD+1),A
;1998/11/10;;
;1998/11/10;MSENDS
;1998/11/10;;	LD	A,(MSGENO)
;1998/11/10;;	INC	A
;1998/11/10;;	CP	$02
;1998/11/10;;	JR	NZ,MJCS07
;1998/11/10;;	XOR	A
;1998/11/10;;MJCS07
;1998/11/10;;	LD	(MSGENO),A	; Test 4of mesege rotation!
;1998/11/10;;
;1998/11/10;	LD	A,(MSGEFG)
;1998/11/10;	AND	$F0
;1998/11/10;	OR	MSKYW
;1998/11/10;	LD	(MSGEFG),A
;1998/11/10;	RET
;1998/11/10;;;;	JP	MSNEXT
;1998/11/10;;========================================
;1998/11/10;DOROBOU
;1998/11/10;	DB	$45,$4A,$46,$43,$00 ;  D I E B _
;1998/11/10;;
;1998/11/10;MJCS08
;1998/11/10;;	CP	WLF
;1998/11/10;;	JR	NZ,MJCS0808
;1998/11/10;;;
;1998/11/10;;	LD	A,(MJSTCT)
;1998/11/10;;	ADD	A,$0F
;1998/11/10;;	AND	$10
;1998/11/10;;	LD	(MJSTCT),A
;1998/11/10;;;
;1998/11/10;;	LD	A,(MJSTCT3)
;1998/11/10;;	INC	A
;1998/11/10;;	LD	(MJSTCT3),A
;1998/11/10;;;
;1998/11/10;;	XOR	A
;1998/11/10;;	LD	(VRAMD+1),A
;1998/11/10;;	JP	MSNEXT
;1998/11/10;;;	RET
;1998/11/10;;MJCS0808
;1998/11/10;	CP	XX
;1998/11/10;	JR	Z,MJCS081
;1998/11/10;;
;1998/11/10;	PUSH	AF
;1998/11/10;;
;1998/11/10;	LD	A,(FKMSFG)
;1998/11/10;	LD	D,A
;1998/11/10;	LD	E,$01
;1998/11/10;	CP	$0F
;1998/11/10;	JR	Z,MJCS0808
;1998/11/10;;
;1998/11/10;	LD	E,$07
;1998/11/10;	CP	$19	;フクロウ！
;1998/11/10;	JR	Z,MJCS0808
;1998/11/10;	LD	E,$03
;1998/11/10;;
;1998/11/10;;	LD	E,$01
;1998/11/10;;	LD	D,$0F
;1998/11/10;;;
;1998/11/10;;	LD	A,(MSGENOH)
;1998/11/10;;;;	AND	A
;1998/11/10;;	CP	$01
;1998/11/10;;	JR	NZ,MJCS0808	
;1998/11/10;;;
;1998/11/10;;	LD	A,(MSGENO)
;1998/11/10;;	CP	$60
;1998/11/10;;	JR	Z,MJCS0807
;1998/11/10;;	CP	$61
;1998/11/10;;	JR	Z,MJCS0807
;1998/11/10;;	CP	$62
;1998/11/10;;	JR	Z,MJCS0807
;1998/11/10;;	CP	$63
;1998/11/10;;	JR	Z,MJCS0807
;1998/11/10;;	CP	$65
;1998/11/10;;	JR	NZ,MJCS0808
;1998/11/10;;;
;1998/11/10;;MJCS0807
;1998/11/10;;	LD	D,$14
;1998/11/10;;	LD	E,$03
;1998/11/10;MJCS0808
;1998/11/10;	LD	A,(MJSTCT)
;1998/11/10;	ADD	A,$04
;1998/11/10;	AND	E
;1998/11/10;	JR	NZ,MJCS080A
;1998/11/10;;
;1998/11/10;	LD	A,D
;1998/11/10;	LD	(SOUND2),A	;(S)
;1998/11/10;MJCS080A
;1998/11/10;	POP	AF
;1998/11/10;MJCS081
;1998/11/10;;;	LD	(WORK1),A
;1998/11/10;;;	AND	%00111111
;1998/11/10;;
;1998/11/10;	LD	D,$00
;1998/11/10;;;	CP	$C0
;1998/11/10;	CP	NM   ;E   ;NM1
;1998/11/10;	JR	NZ,NMCK10	; Name ?
;1998/11/10;;				; yes !
;1998/11/10;;;	SUB	$C0
;1998/11/10;	LD	A,(NMSTCT)
;1998/11/10;	LD	E,A
;1998/11/10;	INC	A
;1998/11/10;	CP	$05
;1998/11/10;	JR	NZ,NMCK0D
;1998/11/10;;
;1998/11/10;	XOR	A
;1998/11/10;NMCK0D
;1998/11/10;	LD	(NMSTCT),A
;1998/11/10;;
;1998/11/10;;;	LD	D,$00
;1998/11/10;;
;1998/11/10;	LD	HL,NAME
;1998/11/10;	LD	A,(MANBICT)
;1998/11/10;	AND	A
;1998/11/10;	JR	Z,NMCK0E
;1998/11/10;;
;1998/11/10;	LD	HL,DOROBOU
;1998/11/10;NMCK0E
;1998/11/10;	ADD	HL,DE
;1998/11/10;	LD	A,(HL)
;1998/11/10;	DEC	A
;1998/11/10;	CP	$FF
;1998/11/10;	JR	NZ,NMCK10
;1998/11/10;;
;1998/11/10;	LD	A,XX
;1998/11/10;NMCK10
;1998/11/10;	LD	(WORK1),A
;1998/11/10;	LD	E,A
;1998/11/10;;
;1998/11/10;;	SLA	E
;1998/11/10;;	RL	D
;1998/11/10;;	SLA	E
;1998/11/10;;	RL	D
;1998/11/10;;	SLA	E
;1998/11/10;;	RL	D
;1998/11/10;;	SLA	E
;1998/11/10;;	RL	D
;1998/11/10;;
;1998/11/10;	LD	A,$1C
;1998/11/10;	LD	($2100),A
;1998/11/10;;
;1998/11/10;	LD	HL,MSCHNO
;1998/11/10;	ADD	HL,DE
;1998/11/10;	LD	E,(HL)
;1998/11/10;	LD	D,$00
;1998/11/10;;
;1998/11/10;	SLA	E
;1998/11/10;	RL	D
;1998/11/10;	SLA	E
;1998/11/10;	RL	D
;1998/11/10;	SLA	E
;1998/11/10;	RL	D
;1998/11/10;	SLA	E
;1998/11/10;	RL	D
;1998/11/10;;
;1998/11/10;	CALL	PBRETN
;1998/11/10;;
;1998/11/10;	LD	HL,$5000
;1998/11/10;;;	LD	HL,$6C00
;1998/11/10;;	LD	A,(WORK1)
;1998/11/10;;	CP	$C0
;1998/11/10;;	JR	C,MJCS0B
;1998/11/10;;	CP	$CA
;1998/11/10;;	JR	NC,MJCS0B	; Number ?
;1998/11/10;;;				; yes !
;1998/11/10;;	LD	HL,$4B00 ;-$0010
;1998/11/10;;;
;1998/11/10;;	LD	A,$C
;1998/11/10;;	LD	($2100),A
;1998/11/10;;MJCS0B
;1998/11/10;	ADD	HL,DE
;1998/11/10;	PUSH	HL
;1998/11/10;	POP	BC
;1998/11/10;;
;1998/11/10;	POP	HL
;1998/11/10;;
;1998/11/10;	LD	E,$10
;1998/11/10;MJCS0C
;1998/11/10;;	LD	A,(WORK1)
;1998/11/10;;	CP	$C0
;1998/11/10;;	JR	C,MJCS0D
;1998/11/10;;	CP	$CA
;1998/11/10;;	JR	NC,MJCS0D	; Number ?
;1998/11/10;;;				; yes ! Bit hanten
;1998/11/10;;	LD	A,(BC)
;1998/11/10;;	XOR	$FF
;1998/11/10;;	JR	MJCS0E
;1998/11/10;;MJCS0D
;1998/11/10;	LD	A,(BC)
;1998/11/10;;MJCS0E
;1998/11/10;	LD	(HLI),A
;1998/11/10;;
;1998/11/10;	INC	BC
;1998/11/10;;
;1998/11/10;	DEC	E
;1998/11/10;	JR	NZ,MJCS0C
;1998/11/10;;
;1998/11/10;;;	LD	A,(PBANK)
;1998/11/10;;;	LD	($2100),A
;1998/11/10;;
;1998/11/10;;;	XOR 	A
;1998/11/10;	LD	(HL),$00 ;A
;1998/11/10;;
;1998/11/10;	PUSH	HL
;1998/11/10;;
;1998/11/10;	LD	A,$1C
;1998/11/10;	LD	($2100),A
;1998/11/10;;
;1998/11/10;	LD	A,(WORK1)
;1998/11/10;	LD	E,A
;1998/11/10;	LD	D,$00
;1998/11/10;	LD	HL,MSCHN2	;濁点？
;1998/11/10;	ADD	HL,DE
;1998/11/10;;
;1998/11/10;	LD	A,(HL)
;1998/11/10;	POP	HL
;1998/11/10;	AND	A
;1998/11/10;;
;1998/11/10;;
;1998/11/10;;
;1998/11/10;;
;1998/11/10;;;;	LD	A,(WORK0)
;1998/11/10;;;;	AND	%11000000
;1998/11/10;	JR	Z,MJCS88	; Dakuten ?
;1998/11/10;;;;	CP	%11000000
;1998/11/10;;;;	JR	Z,MJCS88	; Dakuten ?
;1998/11/10;;				; yes !
;1998/11/10;	LD	E,A
;1998/11/10;;
;1998/11/10;	LD	A,(MSVRMH)
;1998/11/10;	LD	(HLI),A
;1998/11/10;	LD	A,(MSVRML)
;1998/11/10;	SUB	$20
;1998/11/10;	LD	(HLI),A
;1998/11/10;	LD	A,$00
;1998/11/10;	LD	(HLI),A
;1998/11/10;	LD	A,$C9	; Tenten
;1998/11/10;	RR	E
;1998/11/10;;;	RL	E
;1998/11/10;	JR	C,MJCS80
;1998/11/10;	DEC	A	; Maru
;1998/11/10;MJCS80
;1998/11/10;	LD	(HLI),A
;1998/11/10;;;	LD	A,$00
;1998/11/10;	LD	(HL),$00 ;A
;1998/11/10;MJCS88
;1998/11/10;;	CALL	MSNEXT
;1998/11/10;;	RET
;1998/11/10;;=====================================================
;1998/11/10;;;MJCHST
;1998/11/10;	LD	A,(MJSTCT)
;1998/11/10;	ADD	A,$01 ;	INC	A
;1998/11/10;	LD	(MJSTCT),A
;1998/11/10;	LD	A,(MJSTCTH)
;1998/11/10;	ADC	A,$00
;1998/11/10;	LD	(MJSTCTH),A
;1998/11/10;;
;1998/11/10;	XOR	A
;1998/11/10;	LD	(MJSDON),A
;1998/11/10;;
;1998/11/10;;	LD	A,(MJSTCT3)
;1998/11/10;;	INC	A
;1998/11/10;;	LD	(MJSTCT3),A
;1998/11/10;;
;1998/11/10;	LD	A,(MJSTCT2)
;1998/11/10;	CP	$1F
;1998/11/10;	JR	Z,MJCS10
;1998/11/10;;
;1998/11/10;MJAGAN
;1998/11/10;	LD	A,(MSGEFG)
;1998/11/10;	AND	$F0
;1998/11/10;	OR	MJST
;1998/11/10;	LD	(MSGEFG),A
;1998/11/10;;
;1998/11/10;	LD	A,$0
;1998/11/10;	LD	(MJSTTM),A
;1998/11/10;	RET
;1998/11/10;;
;1998/11/10;MJCS10
;1998/11/10;	JP  	MSNEXT
;1998/11/10;;=====================================================
;1998/11/10;MSSC1L
;1998/11/10;	DB	$22,$42
;1998/11/10;MSSC1H
;1998/11/10;	DB	$98,$99
;1998/11/10;MSSCR1
;1998/11/10;	LD	A,(MJSTCT)
;1998/11/10;	AND	$1F
;1998/11/10;	JR	NZ,MSCR080	; 1 page end ?
;1998/11/10;;				; yes ! key wait !
;1998/11/10;	LD	A,(MSNXMJ)  ;WORK2)
;1998/11/10;	CP	WED
;1998/11/10;	JP	Z,MSENDS	;先読み！
;1998/11/10;	CP	WE2
;1998/11/10;	JP	Z,MSQUESS
;1998/11/10;;
;1998/11/10;	LD	A,(MJSDON)
;1998/11/10;	AND	A
;1998/11/10;	JR	NZ,MSSCR101
;1998/11/10;;
;1998/11/10;	INC	A
;1998/11/10;	LD	(MJSDON),A
;1998/11/10;;
;1998/11/10;;;	LD	A,$15
;1998/11/10;;;	LD	(SOUND1),A	;(S)矢印音
;1998/11/10;	CALL	YASDST	;(S)
;1998/11/10;MSSCR101
;1998/11/10;	CALL	YAOBJST
;1998/11/10;;
;1998/11/10;	LD	A,(KEYA2)
;1998/11/10;	BIT	4,A  ;	AND	%00100000
;1998/11/10;	JR	NZ,MSSCST
;1998/11/10;;
;1998/11/10;	BIT	5,A
;1998/11/10;	JR	Z,MSCR150
;1998/11/10;;
;1998/11/10;	LD	A,$1C
;1998/11/10;	LD	($2100),A
;1998/11/10;;
;1998/11/10;	LD	A,(GMMODE)
;1998/11/10;	CP	GMAP
;1998/11/10;	JP	Z,QBGRSET	;マップ上はキャンセル出来る！
;1998/11/10;;
;1998/11/10;	LD	A,(MSGENO)
;1998/11/10;	LD	E,A
;1998/11/10;	LD	A,(MSGENOH)
;1998/11/10;	LD	D,A
;1998/11/10;	LD	HL,MSCANC
;1998/11/10;	ADD	HL,DE
;1998/11/10;;;	LD	A,(HL)
;1998/11/10;;;	AND	A
;1998/11/10;	BIT	7,(HL)
;1998/11/10;	JP	Z,QBGRSET	; Cansel Not ?
;1998/11/10;;;;				; yes !
;1998/11/10;;;	JP	NZ,QBGRSET
;1998/11/10;;
;1998/11/10;;;	AND	%00110000
;1998/11/10;;;	JR	Z,MSCR150
;1998/11/10;;
;1998/11/10;;-------------------------------------
;1998/11/10;MSSCST
;1998/11/10;MSCR080
;1998/11/10;	LD	E,$00
;1998/11/10;	LD	A,(MSGEFG)
;1998/11/10;	AND	%10000000
;1998/11/10;	JR	Z,MSCR100
;1998/11/10;	INC	E
;1998/11/10;MSCR100
;1998/11/10;	LD	D,$00
;1998/11/10;;
;1998/11/10;	LD	HL,MSSC1H
;1998/11/10;	ADD	HL,DE
;1998/11/10;	LD	A,(SCVRMH)
;1998/11/10;	ADD	A,(HL)
;1998/11/10;	LD	(VRAMD+1),A
;1998/11/10;;
;1998/11/10;	LD	HL,MSSC1L
;1998/11/10;	ADD	HL,DE
;1998/11/10;	LD	A,(SCVRML)
;1998/11/10;	ADD	A,(HL)
;1998/11/10;	LD	(VRAMD+2),A
;1998/11/10;;
;1998/11/10;	LD	A,$4F
;1998/11/10;	LD	(VRAMD+3),A
;1998/11/10;	LD	A,(ENHELP) ;$7E
;1998/11/10;	LD	(VRAMD+4),A
;1998/11/10;	XOR	A
;1998/11/10;	LD	(VRAMD+5),A
;1998/11/10;;
;1998/11/10;	CALL	MSNEXT
;1998/11/10;MSCR150
;1998/11/10;;RET
;1998/11/10;;=====================================================
;1998/11/10;MSSCR2
;1998/11/10;;;;	IN V BLANKING !!!
;1998/11/10;	RET
;1998/11/10;;=====================================================
;1998/11/10;MSSC2L
;1998/11/10;	DB	$62,$82
;1998/11/10;MSSC2H
;1998/11/10;	DB	$98,$99
;1998/11/10;MSSCR2S
;1998/11/10;	LD	E,$00
;1998/11/10;	LD	A,(MSGEFG)
;1998/11/10;	AND	%10000000
;1998/11/10;	JR	Z,MSCR200
;1998/11/10;	INC	E
;1998/11/10;MSCR200
;1998/11/10;	LD	D,$00
;1998/11/10;;
;1998/11/10;	LD	HL,MSSC2H
;1998/11/10;	ADD	HL,DE
;1998/11/10;	LD	A,(SCVRMH)
;1998/11/10;	ADD	A,(HL)
;1998/11/10;	LD	B,A
;1998/11/10;	LD	HL,MSSC2L
;1998/11/10;;----------------------------------
;1998/11/10;MSCRSUB
;1998/11/10;	ADD	HL,DE
;1998/11/10;	LD	A,(SCVRML)
;1998/11/10;	ADD	A,(HL)
;1998/11/10;	LD	C,A
;1998/11/10;;
;1998/11/10;	LD	E,$10
;1998/11/10;MSCR210
;1998/11/10;	LD	A,C
;1998/11/10;	SUB	$20
;1998/11/10;	LD	L,A
;1998/11/10;	LD	H,B
;1998/11/10;;
;1998/11/10;	LD	A,(BC)
;1998/11/10;	LD	(HL),A
;1998/11/10;	PUSH	BC
;1998/11/10;;
;1998/11/10;	LD	A,C
;1998/11/10;	ADD	A,$20
;1998/11/10;	LD	C,A
;1998/11/10;	LD	A,L
;1998/11/10;	ADD	A,$20
;1998/11/10;	LD	L,A
;1998/11/10;;
;1998/11/10;	LD	A,(BC)
;1998/11/10;	LD	(HL),A
;1998/11/10;;
;1998/11/10;	LD	A,L
;1998/11/10;	ADD	A,$20
;1998/11/10;	LD	L,A
;1998/11/10;;
;1998/11/10;;;	LD	A,$7E
;1998/11/10;	LD	A,(ENHELP)
;1998/11/10;	LD	(HL),A  ;$7E ;A
;1998/11/10;;
;1998/11/10;	POP	BC
;1998/11/10;;
;1998/11/10;	INC	BC
;1998/11/10;	LD	A,C
;1998/11/10;	AND	$1F
;1998/11/10;	JR	NZ,MSCR220
;1998/11/10;	LD	A,C
;1998/11/10;	SUB	$20
;1998/11/10;	LD	C,A
;1998/11/10;MSCR220
;1998/11/10;	DEC	E
;1998/11/10;	JR	NZ,MSCR210
;1998/11/10;;
;1998/11/10;	LD	A,$08
;1998/11/10;	LD	(MJSTTM),A
;1998/11/10;;
;1998/11/10;	JP  	MSNEXT
;1998/11/10;;=====================================================
;1998/11/10;MSSCR3
;1998/11/10;;;;	IN V BLANKING !!!
;1998/11/10;	RET
;1998/11/10;;=====================================================
;1998/11/10;MSSC3L
;1998/11/10;	DB	$42,$62
;1998/11/10;MSSC3H
;1998/11/10;	DB	$98,$99
;1998/11/10;MSSCR3S
;1998/11/10;	LD	E,$00
;1998/11/10;	LD	A,(MSGEFG)
;1998/11/10;	AND	%10000000
;1998/11/10;	JR	Z,MSCR300
;1998/11/10;	INC	E
;1998/11/10;MSCR300
;1998/11/10;	LD	D,$00
;1998/11/10;;
;1998/11/10;	LD	HL,MSSC3H
;1998/11/10;	ADD	HL,DE
;1998/11/10;	LD	A,(SCVRMH)
;1998/11/10;	ADD	A,(HL)
;1998/11/10;	LD	B,A
;1998/11/10;	LD	HL,MSSC3L
;1998/11/10;;
;1998/11/10;	CALL	MSCRSUB
;1998/11/10;	JP	MJAGAN
;1998/11/10;;=====================================================
;1998/11/10;QBGRSET
;1998/11/10;	LD	A,$2
;1998/11/10;	LD	(MSANSR),A
;1998/11/10;	JP	BGRSET
;1998/11/10;;
;1998/11/10;MSQUES
;1998/11/10;	LD	A,(KEYA2)
;1998/11/10;	BIT	5,A
;1998/11/10;	JR	NZ,QBGRSET
;1998/11/10;;
;1998/11/10;	AND	%00010000
;1998/11/10;	JP	NZ,MSQ080
;1998/11/10;;
;1998/11/10;	LD	A,(KEYA2)
;1998/11/10;	AND	%01000011
;1998/11/10;	JR	Z,MSQ008
;1998/11/10;;
;1998/11/10;	LD	HL,MSANSR
;1998/11/10;	LD	A,(HL)
;1998/11/10;	INC	A
;1998/11/10;	AND	$1
;1998/11/10;	LD	(HL),A
;1998/11/10;;
;1998/11/10;	LD	A,$0A
;1998/11/10;	LD	(SOUND1),A	;(S)
;1998/11/10;MSQ008
;1998/11/10;	LD	A,(FRCNT)
;1998/11/10;	AND	$10
;1998/11/10;	RET	Z
;1998/11/10;;;	JR	NZ,MSQ030
;1998/11/10;;
;1998/11/10;	LD	A,$17
;1998/11/10;	LD	($2100),A
;1998/11/10;	JP	MSCURST
;1998/11/10;;
;1998/11/10;MSQ080
;1998/11/10;;	LD	A,(MSGEFG)
;1998/11/10;;	AND	$F0
;1998/11/10;;	OR	MSSC1
;1998/11/10;;	LD	(MSGEFG),A
;1998/11/10;;;
;1998/11/10;;	LD	HL,MSGENO
;1998/11/10;;	INC	(HL)
;1998/11/10;;;
;1998/11/10;;;;	LD	HL,MJSTCT
;1998/11/10;;;;	INC	(HL)
;1998/11/10;;;
;1998/11/10;;	LD	A,$00
;1998/11/10;;	LD	(MJSTCT),A
;1998/11/10;;;
;1998/11/10;	CALL	BGRSET
;1998/11/10;;
;1998/11/10;	RET
;1998/11/10;;
;1998/11/10;;	LD	A,(MSGEFG)
;1998/11/10;;	AND	$F0
;1998/11/10;;	OR	MJST
;1998/11/10;;	LD	(MSGEFG),A
;1998/11/10;;	RET
;1998/11/10;;=====================================================
;1998/11/10;YAOBJST
;1998/11/10;	LD	A,$17
;1998/11/10;	LD	($2100),A
;1998/11/10;	JP  	YAOBJSTS
;1998/11/10;;	
;=====================================================
;=====================================================
;=====================================================
;1998/11/10;;****************************************
;1998/11/10;;*      Scroll                          *
;1998/11/10;;****************************************
;1998/11/10;SCROLL
;1998/11/10;	LD	A,$02
;1998/11/10;	CALL	PBSET
;1998/11/10;;
;1998/11/10;	CALL	SCROLLS
;1998/11/10;;
;1998/11/10;;;	CALL	PBRETN
;1998/11/10;	RET
;1998/11/10;;
;========================================
;1998/11/11;SCVRAL
;1998/11/11;	DB	$01,$01,$20,$20
;1998/11/11;SCVRAT
;1998/11/11;	DB	$93,$93,$13,$13
SCNXUN
	DB	$10,$10,$01,$01
;1998/11/11;SCRCD11
;1998/11/11;	DB	$08,$08,$0A,$0A		; Set unit count 
;1998/11/11;SCNLUN
;1998/11/11;	DB	$01,$FF,$F0,$10
;1998/11/11;SCNLAH
;1998/11/11;	DB	$00,$00,$03,$00
;1998/11/11;SCNLAL
;1998/11/11;	DB	$02,$1E,$C0,$40
;- - - - - - - - - - - - - - - - - - - - - - - - 
SCRMV1S
	LD	A,$8
	LD	($2100),A
;
	CALL	SCRMV1SS
	jp	PBRETN
;;;(CGB)	CALL	PBRETN
;;;(CGB)	RET
;
;--Tate scroll-------------------------------
TATE_SET
		ld	a,(SCRADL)
		and	020h
		jr	z,TATE_SET_050
;
		inc	hl
		inc	hl
;
TATE_SET_050
		ld	a,(hli)
		ld	(bc),a
		inc	bc
		ld	a,(hl)
		ld	(bc),a
		inc	bc
		ret
;;;(CGB)	LD	A,(HLI)		; Unit NO -> 4x4 Character
;;;(CGB)	LD	(BC),A
;;;(CGB)	INC	BC
;;;(CGB)	LD	A,(HLI)
;;;(CGB)	LD	(BC),A
;;;(CGB)	INC	BC
;;;(CGB);
;;;(CGB)	LD	A,(HLI)		; Unit NO -> 4x4 Character
;;;(CGB)	LD	(DE),A
;;;(CGB)	INC	DE
;;;(CGB)	LD	A,(HL)
;;;(CGB)	LD	(DE),A
;;;(CGB)	INC	DE
;;;(CGB)	RET
;
;--Yoko scroll-------------------------------
YOKO_SET
		ld	a,(SCRADL)
		and	001h
		jr	z,YOKO_SET_050
;
		inc	hl
;
YOKO_SET_050
		ld	a,(hli)
		ld	(bc),a
		inc	hl
		inc	bc
		ld	a,(hl)
		ld	(bc),a
		inc	bc
		ret
;;;(CGB)	LD	A,(HLI)		; Unit NO -> 4x4 Character
;;;(CGB)	LD	(BC),A
;;;(CGB)	LD	A,(HLI)
;;;(CGB)	LD	(DE),A
;;;(CGB);
;;;(CGB)	INC	BC
;;;(CGB)	INC	DE
;;;(CGB);
;;;(CGB)	LD	A,(HLI)		; Unit NO -> 4x4 Character
;;;(CGB)	LD	(BC),A
;;;(CGB)	LD	A,(HL)
;;;(CGB)	LD	(DE),A
;;;(CGB);
;;;(CGB)	INC	BC
;;;(CGB)	INC	DE
;;;(CGB)	RET
;
;===============================
SCRMV1SS
;;;(CGB)	LD	A,(SCRLTM)
;;;(CGB)	CP	$0
;;;(CGB)	JR	Z,SCM100	; Scroll speed wait !
;;;(CGB);
;;;(CGB)	DEC	A
;;;(CGB)	LD	(SCRLTM),A
;;;(CGB)	RET
;
;-- CGB --
SCM100
		LD	A,$20
		LD	($2100),A
		CALL	SCROLL_INIT
		LD	A,$8
		LD	($2100),A
;-- CGB --
;
;;;CGB;;;SCM100
;;;CGB;;;	LD	A,(SCRLMK)
;;;CGB;;;	LD	C,A
;;;CGB;;;	LD	B,$00
;;;CGB;;;;
;;;CGB;;;	LD	A,$01
;;;CGB;;;	LD	(SCRLTM),A
;;;CGB;;;;
;;;CGB;;;	LD	A,(SCUNTA)
;;;CGB;;;	LD	(WORK2),A
;;;CGB;;;;
;;;CGB;;;	LD	HL,SCVRAL
;;;CGB;;;	ADD	HL,BC
;;;CGB;;;;
;;;CGB;;;	LD	A,(SCRADL)
;;;CGB;;;	LD	(VRAMD+2),A
;;;CGB;;;	ADD	A,(HL) ;E
;;;CGB;;;	RL	D		; PUSH CY
;;;CGB;;;	LD	(VRAMD+$19),A
;;;CGB;;;;
;;;CGB;;;	LD	A,(SCRADH)
;;;CGB;;;	OR	$98
;;;CGB;;;	LD	(VRAMD+1),A
;;;CGB;;;	RR	D		; POP CY
;;;CGB;;;	ADC	A,$00
;;;CGB;;;	LD	(VRAMD+$18),A
;;;CGB;;;;
;;;CGB;;;	LD	HL,SCVRAT
;;;CGB;;;	ADD	HL,BC
;;;CGB;;;	LD	A,(HL)
;;;CGB;;;	LD	(VRAMD+3),A
;;;CGB;;;	LD	(VRAMD+$1A),A
;;;CGB;;;;
;;;CGB;;;	LD	A,$00
;;;CGB;;;	LD	(VRAMD+$2F),A
;;;CGB;;;	LD	A,$EE  ;FE 	; FE:Not write  for yoko scroll !
;;;CGB;;;	LD	(VRAMD+$14),A
;;;CGB;;;	LD	(VRAMD+$15),A
;;;CGB;;;	LD	(VRAMD+$16),A
;;;CGB;;;	LD	(VRAMD+$17),A
;;;CGB;;;	LD	(VRAMD+$2B),A
;;;CGB;;;	LD	(VRAMD+$2C),A
;;;CGB;;;	LD	(VRAMD+$2D),A
;;;CGB;;;	LD	(VRAMD+$2E),A
;;;CGB;;;;
;;;CGB;;;	LD	B,>(VRAMD+4)
;;;CGB;;;	LD	C,<(VRAMD+4)
;;;CGB;;;;
;;;CGB;;;	LD	D,>(VRAMD+$1B)
;;;CGB;;;	LD	E,<(VRAMD+$1B)
SI2100
	PUSH	BC
	PUSH	DE
;
	LD	A,(WORK2)
	LD	C,A
	LD	B,$0
	LD	HL,BGUNDT+$11
	ADD	HL,BC
	LD	B,$0

;--------------------------------------
;	地上新ＭＡＰ用
;--------------------------------------
	LD	C,(HL)		; Unit NO.

		LD	A,(CGBFLG)
		AND	A		; ＣＧＢモード？
		JR	Z,SI2100_100	; ＮＯ
		LD	A,(DJFLAG)
		AND	A		; ダンジョン？
		JR	NZ,SI2100_100	; ＹＥＳ

		LD	A,$02
		LD	(SVBK),A	; ＲＡＭバンク（２）セット
		LD	C,(HL)		; Unit NO.
		XOR	A
		LD	(SVBK),A	; ＲＡＭバンク（０）セット
SI2100_100
;--------------------------------------

	SLA	C
	RL	B
	SLA	C
	RL	B
;
;1998/11/11;	LD	HL,BGUNCH
;1998/11/11;	LD	A,(DJFLAG)
;1998/11/11;	AND	A
;1998/11/11;	JR	Z,SI2101
;1998/11/11;	LD	HL,DJUNCH
;1998/11/11;SI2101
;
		LD	A,(DJFLAG)
		AND	A		; 地上？
		JR	Z,SI2100_200	; ＹＥＳ

;＜ ダンジョン ＞
		LD	HL,DJUNCH
		LD	A,(CGBFLG)
		AND	A		; ＣＧＢモード？
		JR	Z,SI2101_PASS	; ＮＯ

		LD	HL,DJUNCH_CGB
		LD	A,(DNJNNO)
		CP	NEWDJ		;新ダンジョン？
		JR	NZ,SI2100_PASS	;	NO --> SI2100_PASS
		LD	HL,DJUNCH2
		JR	SI2100_PASS
;＜ 地上 ＞
SI2100_200
		LD	HL,BGUNCH
		LD	A,(CGBFLG)
		AND	A		; ＣＧＢモード？
		JR	Z,SI2101_PASS	; ＮＯ

		LD	HL,BGUNCH_CGB
SI2100_PASS
;
;-- CGB --
;;;;;		LD	A,(CGBFLG)
;;;;;		AND	A		;ＣＧＢモード？
;;;;;		JR	Z,SI2101_PASS	;	no --> SI2101_PASS
		LD	A,:BgAtrAddress
		LD	($2100),A
		CALL	BgAtrAddress
;NOT;		LD	A,$08
;NOT;		LD	($2100),A
SI2101_PASS
		CALL	Unit_bank_set	; ユニットバンクセット
;-- CGB --
;
	ADD	HL,BC
;
	POP	DE
	POP	BC
;
	LD	A,(SCRLMK)
	AND	%00000010
	JR	Z,SI2118
;--Tate scroll-------------------------------
		CALL	TATE_SET
;
;-- CGB --
		LD	A,(CGBFLG)
		AND	A		;ＣＧＢモード？
		JR	Z,TATE_ATR_PASS	;	no --> TATE_ATR_PASS
		PUSH	BC
		PUSH	DE
		LD	A,$20
		LD	($2100),A
		CALL	SCRL_SUB
		LD	A,(WORK8)
		LD	($2100),A
		CALL	TATE_SET
		LD	A,B
		LD	(WORKB),A
		LD	A,C
		LD	(WORKC),A
		LD	A,D
		LD	(WORKD),A
		LD	A,E
		LD	(WORKE),A
;NOT;		LD	A,$8
;NOT;		LD	($2100),A
		CALL	Unit_bank_set	; ユニットバンクセット
		POP	DE
		POP	BC
TATE_ATR_PASS
;-- CGB --
;
	JR	SI2130

;1998/11/11;	LD	A,(HLI)		; Unit NO -> 4x4 Character
;1998/11/11;	LD	(BC),A
;1998/11/11;	INC	BC
;1998/11/11;	LD	A,(HLI)
;1998/11/11;	LD	(BC),A
;1998/11/11;	INC	BC
;1998/11/11;;
;1998/11/11;	LD	A,(HLI)		; Unit NO -> 4x4 Character
;1998/11/11;	LD	(DE),A
;1998/11/11;	INC	DE
;1998/11/11;	LD	A,(HL)
;1998/11/11;	LD	(DE),A
;1998/11/11;	INC	DE
;1998/11/11;	JR	SI2130
;--Yoko scroll-------------------------------
SI2118
		CALL	YOKO_SET
;
;-- CGB --
		LD	A,(CGBFLG)
		AND	A		;ＣＧＢモード？
		JR	Z,YOKO_ATR_PASS	;	no --> YOKO_ATR_PASS
		PUSH	BC
		PUSH	DE
		LD	A,$20
		LD	($2100),A
		CALL	SCRL_SUB
		LD	A,(WORK8)
		LD	($2100),A
		CALL	YOKO_SET
		LD	A,B
		LD	(WORKB),A
		LD	A,C
		LD	(WORKC),A
		LD	A,D
		LD	(WORKD),A
		LD	A,E
		LD	(WORKE),A
;NOT;		LD	A,$8
;NOT;		LD	($2100),A
		CALL	Unit_bank_set	; ユニットバンクセット
		POP	DE
		POP	BC
YOKO_ATR_PASS
;-- CGB --
;
;1998/11/11;	LD	A,(HLI)		; Unit NO -> 4x4 Character
;1998/11/11;	LD	(BC),A
;1998/11/11;	LD	A,(HLI)
;1998/11/11;	LD	(DE),A
;1998/11/11;;
;1998/11/11;	INC	BC
;1998/11/11;	INC	DE
;1998/11/11;;
;1998/11/11;	LD	A,(HLI)		; Unit NO -> 4x4 Character
;1998/11/11;	LD	(BC),A
;1998/11/11;	LD	A,(HL)
;1998/11/11;	LD	(DE),A
;1998/11/11;;
;1998/11/11;	INC	BC
;1998/11/11;	INC	DE
;
SI2130
;- - Next unit adress set - - 
	PUSH	BC
;
	LD	A,(SCRLMK)
	LD	C,A
	LD	B,$00
;
	LD	HL,SCNXUN
	ADD	HL,BC
	LD	A,(WORK2)
	ADD	A,(HL)  ;E
	LD	(WORK2),A	; Next load address set !
;
	POP	BC
;
	LD	A,(SCRLC1)
	DEC	A
	LD	(SCRLC1),A
	JP	NZ,SI2100	; 1 line end ?
;				; yes !

		LD	A,:SI2130_SUB
		LD	($2100),A
		JP	SI2130_SUB

;┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
;┃	zplsub.s にプログラムを移動				       ┃
;┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
;(CGB)	LD	A,(SCRLMK)
;(CGB)	LD	C,A
;(CGB)	LD	B,$00
;(CGB);
;(CGB)	LD	HL,SCRCD11	; Next count set !
;(CGB)	ADD	HL,BC
;(CGB)	LD	A,(HL)
;(CGB)	LD	(SCRLC1),A
;(CGB);- - Next Line adress set - - 
;(CGB)	LD	HL,SCNLUN
;(CGB)	ADD	HL,BC
;(CGB)	LD	A,(SCUNTA)
;(CGB)	ADD	A,(HL)  ;E
;(CGB)	LD	(SCUNTA),A	; Next load address set !
;(CGB);
;(CGB)	LD	HL,SCNLAL
;(CGB)	ADD	HL,BC
;(CGB)	LD	A,(SCRADL)
;(CGB)	ADD	A,(HL)  ;E
;(CGB)	RR	D		; PUSH C
;(CGB)	AND	%11011111
;(CGB)	LD	(SCRADL),A
;(CGB);
;(CGB)	LD	HL,SCNLAH
;(CGB)	ADD	HL,BC
;(CGB)	LD	A,(SCRADH)
;(CGB)	RL	D		; POP C
;(CGB)	ADC	A,(HL)  ;E
;(CGB)	AND	$03
;(CGB)	LD	(SCRADH),A
;(CGB);
;(CGB)	LD	A,(SCRLC2)
;(CGB)	DEC	A
;(CGB)	LD	(SCRLC2),A
;(CGB)	JR	NZ,SI2120	; All clear ?
;(CGB);				; yes !
;(CGB)	JP	SCRNXT2
;(CGB)SI2120
;(CGB)	RET
;(CGB)SCRNXT2
;(CGB)	LD	A,(SCRLFG)
;(CGB)	INC	A
;(CGB)	LD	(SCRLFG),A
;(CGB)	RET
;=====================================================
;=====================================================
;=====================================================
;=====================================================
;=====================================================
	END
;=====================================================
