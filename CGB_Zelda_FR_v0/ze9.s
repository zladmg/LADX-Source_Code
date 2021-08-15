
		onbankgroup

;****************************************************************
;*								*
;*	タイトル    ：	ＣＧＢゼルダ				*
;*	ファイル名  ：	ZE9.DMG					*
;*	処理内容    ：	服のダンジョン内の敵			*
;*	作成日付    ：  １９９８／０９／０８			*
;*								*
;****************************************************************
;
	NLIST
;
;==============	バンク０ ================================================
BANK0		GROUP	0
;-------------<	ZCO >-------------
		EXTERN	RNDSUB,BGMSET,DATA_MOV,LCDC_OFF
;
;-------------<	ZMA >-------------
		EXTERN	NEWDJ_UNSH_SUB,TRNPRN_CHK_SUB,FUKU_OAM_SET
		EXTERN	JYANPS_SUB,FUKU_WhiteOut_SUB,NEWDJ_DMA
;
;-------------<	ZES >-------------
		EXTERN	EMOVE,ENPTST,ENBGCKL,CREPKEL,EN1CST
		EXTERN	HNSMST,ENHNBC,EN2CST,STATINC,CRKNENL
		EXTERN	ESTOP,EFOLE,ENBITON,ENBITON,CRENPSL
		EXTERN	SADWSTL,BSSDCK,ENFEND,ENIDSHL,PSERCHL
		EXTERN	CRENENL,PSERCH2L,NXOMSBL,SHRVSE,ENCLER
		EXTERN	ITEMGETS,ENOMST,EFAIL,ENSDCL,ENPSSV
		EXTERN	PLBGCKL
;
;-------------<	ZPL >-------------
		EXTERN	GMAP,LDTIM0,EXIDSH,PLPSRV,DUSHCL2,PLSDCL,ENHNCL
		EXTERN	MSGCH3,FDIN,NXGOTO3,PMGIC,LDTIM1,FLASHST,NAZOCLR
		EXTERN	GEKI02,GEKI04,GEKI06,GEKI08,GEKI09,GEKI10,GPLAY
		EXTERN	PLPSRV,DUSHCL2,GEKI11,MSGCH2,GEKI05,PINDR1
		EXTERN	DUSHCL2,GEKI01,MVCALC,GEKI12
		EXTERN	TSVE
;
;==============	バンク１ ================================================
BANK1		GROUP	1
;-------------<	ZEN >-------------
                EXTERN  KTOBJ,C_BOY,BOOK,SHIGE
;
;-------------<	ZTI >-------------
		extern	GPMA
;
;==============	バンク２ ================================================
BANK2		GROUP	2
;-------------<	ZEX >-------------
                EXTERN  SMK1,FUCKS
;
;==============	バンク３ ================================================
BANK3		GROUP	3
;-------------<	ZEN >-------------
		EXTERN	FLYIT,BHFIR,FUKU,SKEL0,PANEL,BOMBR,KUMA0
		EXTERN	R_MUSI,G_MUSI,B_MUSI,R_GOST,G_GOST,B_GOST
		EXTERN	R_BLOCK,G_BLOCK,B_BLOCK,HINOIWA,R_TUCHI,L_TUCHI
;
;==============	バンク２０ ==============================================
BANK20		GROUP	$020
;-------------<	ZWIN >------------
		EXTERN	MUSI_MOVE_DAT0,MUSI_MOVE_DAT1,MUSI_MOVE_DAT2
		EXTERN	MUSI_STOP_DAT0,MUSI_STOP_DAT1,MUSI_STOP_DAT2
		EXTERN	FLY_BND_DAT0,FLY_BND_DAT1,FLY_BND_DAT2
		EXTERN	FLY_BND_DAT3,FLY_BND_DAT4,FLY_BND_DAT5
		EXTERN	FLY_BND_DAT6,FLY_BND_DAT7
		EXTERN	BLK_HINO_DAT0,BLK_HINO_DAT1,BLK_HINO_DAT2
		EXTERN	BLK_HINO_DAT3,FLY_KONA_DAT,GET_FUKU_DATA
		EXTERN	NYORO_SLM_DAT0,NYORO_SLM_DAT1,NYORO_SLM_DAT2
		EXTERN	NYORO_SLM_DAT4,NYORO_SLM_DAT5,NYORO_SLM_DAT6
		EXTERN	NYORO_SLM_DAT7,YOUSEI_DAT0,YOUSEI_DAT1
;
;================================================================
		PUBALL
;
BANK36	GROUP	$036
;
	LIB	ZRAM	; RAM ＥＱＵＡＴＥ ファイル
	LIB	ZBN	; BG unit no file !
;
;---------------------------------------------------------------
	KANJI
	ISDMG
;
	ORG	$4000
	LIST
;
ZE9_BANK	EQU	$036
;
;
;+--------------------------------------------------------------+
;|	ガケ釣り橋のいたマリンを助けた後のデモ			|
;+--------------------------------------------------------------+
GEKA_MARIN
		LD	A,(SCRLFG)
		AND	A		;スクロール中？
		RET	NZ		;	YES --> return
;
		LD	A,(ENSTAT2)
		CP	GK_MRN_STT
		JR	C,GK_MRN_600
		LD	DE,CAMEBOY12_DATA
		CALL	EN2CST
;
GK_MRN_600
		CALL	E9STCK
;
		LD	A,(PHOTOFG+1)
		AND	%00001000	;写真１２持っている？
		JP	NZ,ENCLER
;
		LD	A,(MSGEFG)
		AND	A		;メッセージ表示中？
		RET	NZ		;	YES --> return
;
		LD	A,(ENSTAT2)
		RST	00
GK_MRN_ADR	DW	GK_MRN_0000
		DW	GK_MRN_1000
		DW	GK_MRN_2000
		DW	GK_MRN_3000
GK_MRN_START	DW	GK_MRN_4000
		DW	GK_MRN_5000
		DW	GK_MRN_6000
		DW	GK_MRN_7000
		DW	GK_MRN_8000
		DW	GK_MRN_9000
		DW	GK_MRN_A000
;
GK_MRN_STT	EQU	(GK_MRN_START-GK_MRN_ADR)/2
;
;+------------------------------------------------------+
;|	写真屋の初期ポジション設定			|
;+------------------------------------------------------+
GK_MRN_0000
		LD	A,(PHOTOFG)
		AND	%00000001	;写真１を持ってる？
		CALL	Z,ENCLER	;	NO --> ENCLER
;
		LD	A,(MARINFG)	;オプションを連れてる？
		LD	HL,OBAKEFG	;	YES --> ENCLER
		OR	(HL)		;
		LD	HL,NIWATFG	;
		OR	(HL)		;
		CALL	NZ,ENCLER	;
;
		CALL	E9ENXPSL_ADR
		LD	(HL),$0E8
;
		CALL	E9ENYPSL_ADR
		LD	(HL),$04D
		JP	STATINC
;
;+------------------------------------------------------+
;|	敵全滅したかチェック				|
;+------------------------------------------------------+
GK_MRN_1000
		LD	DE,ENMODE
		LD	HL,ENMYNO
GK_MRN_1100
		LD	A,(HLI)
		AND	A
		JR	Z,GK_MRN_1150
		CP	C_BOY
		JR	Z,GK_MRN_1150
		LD	A,(DE)
		AND	A
		RET	NZ
GK_MRN_1150
		INC	DE
		LD	A,L
		AND	$00F
		JR	NZ,GK_MRN_1100
		JP	STATINC
;
;+------------------------------------------------------+
;|	キャラクター転送初期設定			|
;+------------------------------------------------------+
GK_MRN_2000
		LD	A,(PLXPSL)
		CP	$044
		RET	C
		CP	$048
		RET	NC
;
		LD	A,(PLYPSL)
		CP	$04A
		RET	C
		CP	$051
		RET	NC
;
		XOR	A
		LD	(CHTRCT),A
		LD	A,$011
		LD	(CHTRFG),A
;
		CALL	CMR_PLSTOP
		JP	STATINC
;
;+------------------------------------------------------+
;|	キャラクター転送終了待ち			|
;+------------------------------------------------------+
GK_MRN_3_COL
	DW	$7fff,$0000,$4471,$7d7f
;
GK_MRN_3000
		CALL	CMR_PLSTOP
		LD	HL,ENWRK0
		ADD	HL,BC
		INC	(HL)
		LD	A,(HL)
		AND	$007
		RET	NZ
		LD	(HL),A
;
		DI
		LD	DE,GK_MRN_3_COL
		LD	HL,OBCGWK+(($006*$004)*$002)
GK_MRN_3200
		LD	A,(DE)
		LD	(HLI),A
		INC	DE
		LD	A,L
		AND	$007
		JR	NZ,GK_MRN_3200
		EI
		LD	A,OBJCOL_BITFG
		LD	(CGDMAF),A	; 転送フラグセット
;
		LD	A,$00B
		LD	(CHTRFG),A
		JP	STATINC
;
;+------------------------------------------------------+
;|	リンクに近づく					|
;+------------------------------------------------------+
GK_MRN_4000
		CALL	CMR_PLSTOP
		CALL	E9ENXPSL_ADR
		LD	A,(HL)
		CP	$037
		JR	Z,GK_MRN_4100
		INC	(HL)
		LD	A,(FRCNT)
		AND	$007
		JR	NZ,GK_MRN_4050
		CALL	ENCHPT_ADR
		LD	A,(HL)
		XOR	$001
		LD	(HL),A
GK_MRN_4050
		RET
;
GK_MRN_4100
		LD	A,$006
		LD	(PLCHPT),A
		LD	A,$A7
		CALL	MSGCH3
		JP	STATINC
;
;+------------------------------------------------------+
;|	カメラを構えてメッセージ終了待ち		|
;+------------------------------------------------------+
GK_MRN_5000
		CALL	CMR_PLSTOP
		LD	A,$A8
		JR	GK_MRN_6200
;
;+------------------------------------------------------+
;|	カメラを構えつつ下がる前			|
;+------------------------------------------------------+
GK_MRN_6000
		CALL	CMR_PLSTOP
		LD	A,$A9
GK_MRN_6200
		CALL	MSGCH3
		JP	STATINC
;
;+------------------------------------------------------+
;|	カメラを構えつつ下がる				|
;+------------------------------------------------------+
GK_MRN_7000
		CALL	CMR_PLSTOP
		LD	A,(FRCNT)
		AND	$001
		JR	NZ,GK_MRN_7050
;
		CALL	E9ENXPSL_ADR
		DEC	(HL)
		LD	A,(FRCNT)
		AND	$007
		JR	NZ,GK_MRN_7050
		CALL	ENCHPT_ADR
		LD	A,(HL)
		XOR	$001
		LD	(HL),A
GK_MRN_7050
		LD	HL,ENWRK0
		ADD	HL,BC
		INC	(HL)
		LD	A,(HL)
		CP	$010
		RET	NZ
		XOR	A
		LD	(HL),A
;
		LD	A,$0AA
		JR	GK_MRN_6200
;
;+------------------------------------------------------+
;|	橋から落ちるまで斜めに下がる			|
;+------------------------------------------------------+
GK_MRN_8000
		CALL	CMR_PLSTOP
		LD	A,(FRCNT)
		AND	$001
		JR	NZ,GK_MRN_8050
;
		CALL	E9ENXPSL_ADR
		DEC	(HL)
		CALL	E9ENYPSL_ADR
		INC	(HL)
		LD	A,(FRCNT)
		AND	$007
		JR	NZ,GK_MRN_8050
		CALL	ENCHPT_ADR
		LD	A,(HL)
		XOR	$001
		LD	(HL),A
GK_MRN_8050
		LD	HL,ENWRK0
		ADD	HL,BC
		INC	(HL)
		LD	A,(HL)
		CP	$00A
		RET	NZ
		XOR	A
		LD	(HL),A
;
		LD	A,$0AB
		JR	GK_MRN_6200
;
;+------------------------------------------------------+
;|	写真屋、落下					|
;+------------------------------------------------------+
GK_MRN_9000
		CALL	CMR_PLSTOP
		CALL	E9ENYPSL_ADR
		INC	(HL)
		LD	A,(HL)
		CP	$070
		RET	C
		JP	STATINC
;
;+------------------------------------------------------+
;|	一枚絵モードへ切り替え				|
;+------------------------------------------------------+
GK_MRN_A000
		CALL	CMR_PLSTOP
		LD	A,$040
		LD	(SOUND3),A
		LD	A,GEKI12
		LD	(GMMODE),A
		XOR	A
		LD	(SBHR),A
		LD	(SBCNT),A
		LD	(ITMODE),A
		RET
;
;
;+--------------------------------------------------------------+
;|	ハートの欠片のある井戸の中				|
;+--------------------------------------------------------------+
GEKI_IDO
		LD	DE,CAMEBOY3_DAT
		CALL	EN2CST
		CALL	M9CROS
		CALL	E9STCK2
;
		LD	A,(ENSTAT2)		;キャラクター
		AND	A			;	再転送するかチェック
		JR	Z,GK_IDO_500		;
		LD	A,(SBHR)		;
		AND	A			;
		JR	NZ,GK_IDO_500		;
		LD	A,(GMMODE)		;
		CP	GPLAY			;
		JR	NZ,GK_IDO_500		;
		LD	A,(PLMODE)		;
		CP	PINDR1			;
		JR	Z,GK_IDO_500		;
		CALL	IDO_0000_SUB		;
;
GK_IDO_500
		LD	A,(MSGEFG)
		AND	A		;メッセージ表示中？
		RET	NZ		;	YES --> return
;
		LD	A,(ENSTAT2)
		RST	00
		DW	IDO_0000
		DW	IDO_1000
		DW	IDO_2000
		DW	IDO_3000
		DW	IDO_4000
;
;+----------------------------------------------+
;|	キャラクターＶＲＡＭ配置		|
;+----------------------------------------------+
IDO_0000_SUB
		PUSH	BC
		CALL	LCDC_OFF
;
;;;KK;;;		LD	A,$038
;;;KK;;;		LD	B,$040
;;;KK;;;		LD	C,$006
;;;KK;;;		LD	H,:CAMERA0000
;;;KK;;;		CALL	NEWDJ_DMA
;
		LD	A,$038
		LD	B,$041
		LD	C,$007
		LD	H,:CAMERA0000
		CALL	NEWDJ_DMA
;
		LD	A,(LCDCB)
		LD	(LCDC),A
;
		POP	BC
		DI
		LD	DE,GK_MRN_3_COL
		LD	HL,OBCGWK+(($006*$004)*$002)
		LD	A,$002
		LD	(SVBK),A
IDO_0000_LOOP
		LD	A,(DE)
		LD	(HLI),A
		INC	DE
		LD	A,L
		AND	$007
		JR	NZ,IDO_0000_LOOP
		XOR	A
		LD	(SVBK),A
		EI
		RET
;
;+------------------------------------------------------+
;|	キャラクターＶＲＡＭ配置			|
;+------------------------------------------------------+
IDO_0000
		LD	A,$070
		LD	(PLZPSL),A
		LD	A,$002
		LD	(PLJPFG),A
		LD	A,$0E0
		LD	(PLDSYP),A
		LD	(PLYPS2),A
		LD	A,$001
		LD	(WARPFG2),A
;
		LD	A,(MARINFG)
		AND	A
		JR	Z,IDO_0080
;
		LD	A,$070
		LD	HL,MAZBUF
		LD	E,$010
IDO_0050
		LD	(HLI),A
		DEC	E
		JR	NZ,IDO_0050
		LD	(ENZPSL+$00F),A
;
		LD	A,(PHOTOFG)
		AND	%00000001		;写真１を持ってる？
		JP	Z,IDO_0080		;	NO --> IDO_0080
;
		LD	A,(PHOTOFG)
		AND	%00000100	;写真３持っている？
		JR	Z,IDO_0100	;	NO --> IDO_0100
IDO_0080
		CALL	ENCLER
		RET
IDO_0100
		CALL	IDO_0000_SUB
		JP	STATINC
;
;+------------------------------------------------------+
;|	縦揺れ終了＆リンクダウンポーズ			|
;+------------------------------------------------------+
IDO_1000
;;;KK;;;		LD	A,(PLZPSL)
;;;KK;;;		AND	A
;;;KK;;;		JR	Z,IDO_1100
;;;KK;;;		LD	A,$002
;;;KK;;;		LD	(PLSTOP),A
;;;KK;;;;
;;;KK;;;IDO_1100
		PUSH	BC
		SLA	C
		RL	B
		SLA	C
		RL	B
		LD	HL,ENOJSZ
		ADD	HL,BC
		INC	HL
		LD	(HL),$008
		INC	HL
		INC	HL
		LD	(HL),$00C
		POP	BC
;
		LD	A,(PLCHPT)
		CP	$06A
		RET	NZ
;
		LD	A,$002
		LD	(ITEMNOT),A
;
		LD	A,(TILTCT)
		AND	A
		RET	NZ
;
		LD	A,$0A6		;リンクつぶされた
		CALL	MSGCH3
		JP	STATINC
;
;+------------------------------------------------------+
;|	フラッシュ					|
;+------------------------------------------------------+
IDO_2000
		LD	HL,ENTIM2+$00F
		INC	(HL)
		JP	CAMERA_0000
;
;+------------------------------------------------------+
;|	カメラ屋写真撮り逃げ待ち			|
;+------------------------------------------------------+
IDO_3000
		LD	A,(PLCHPT)
		CP	$06A
		RET	Z
		LD	A,(PHOTOFG)
		OR	%00000100	;写真３をＧＥＴ！！
		LD	(PHOTOFG),A
		JP	STATINC
;
;+------------------------------------------------------+
;|	カメラ屋写真撮り逃げ				|
;+------------------------------------------------------+
IDO_4000
		CALL	E9ENYPSL_ADR
		LD	A,(HL)
		CP	$03B
		JR	C,IDO_4200
		DEC	(HL)
		LD	A,(FRCNT)
		AND	$007
		RET	NZ
		CALL	ENCHPT_ADR
		LD	A,(HL)
		XOR	$001
		LD	(HL),A
		RET
;
IDO_4200
		XOR	A
		LD	(ITEMNOT),A
		CALL	ENCLER
		RET
;
;
;+--------------------------------------------------------------+
;|	カメラ屋の中の劇用					|
;|			ENWRK1：カメラ屋の移動先ポジション	|
;+--------------------------------------------------------------+
GK_CMR_DAT
	DB	$000,$000,$050,$007
	DB	$000,$008,$052,$007
	DB	$000,$010,$054,$007
	DB	$010,$000,$056,$007
	DB	$010,$008,$05C,$007
	DB	$010,$010,$05E,$007
;
GEKI_CAMERA
		CALL	E9ENXPSL_ADR
		LD	A,(HL)
		CP	$020
		JR	NC,GK_CMR_100
		LD	(HL),$014
		CALL	E9ENYPSL_ADR
		LD	(HL),$064
		PUSH	BC
		SLA	C
		RL	B
		SLA	C
		RL	B
		LD	HL,ENOJSZ
		ADD	HL,BC
		INC	HL
		LD	(HL),$010
		INC	HL
		LD	(HL),$007
		INC	HL
		LD	(HL),$00B
		POP	BC
;
		LD	HL,GK_CMR_DAT
		LD	C,$006
		CALL	ENOMST
		LD	A,$006
		CALL	NXOMSBL
		CALL	M9CROS
		CALL	CRENPSL
		RET
;
GK_CMR_100
		CALL	ENCHPT_ADR
		LD	A,(HLI)
		SLA	A
		LD	E,A
		LD	D,$000
		LD	HL,CAMEBOY_DAT
		CALL	HL_RT_SET
		LD	C,$003
		CALL	ENOMST
		LD	A,$003
		CALL	NXOMSBL
		CALL	M9CROS
		CALL	CRENPSL
;
		CALL	E9STCK2
;
		LD	A,(ENSTAT2)
		AND	A
		JR	Z,GK_CMR_500
		LD	A,(SBHR)
		AND	A
		JR	NZ,GK_CMR_500
		LD	A,(GMMODE)
		CP	GPLAY
		JR	NZ,GK_CMR_500
		LD	A,(PLMODE)
		CP	PINDR1
		JR	Z,GK_CMR_500
		CALL	CAMERA0000_SUB
		LD	A,(PHOTOFG)
		AND	%00000001
		JR	Z,GK_CMR_500
		LD	HL,ENMYNO	;アルバムが存在してるか？
GK_CMR_450				;
		LD	A,(HLI)		;
		CP	BOOK		;
		JR	Z,GK_CMR_500	;
		LD	A,L		;
		AND	$00F		;
		JR	NZ,GK_CMR_450	;
		CALL	ALBUM_MAKE	;
;
GK_CMR_500
		LD	A,(MSGEFG)
		AND	A		;メッセージ表示中？
		RET	NZ		;	YES --> return
;
;;;KK;;;		LD	A,(PHOTOFG)
;;;KK;;;		OR	%00000001
;;;KK;;;		LD	(PHOTOFG),A
;;;KK;;;		RET
;
		LD	A,(PHOTOFG)
		AND	%00000001
		JR	Z,GK_CMR_600
		LD	A,GK_FILM
		LD	(ENSTAT2),A
		CALL	E9ENSTAT
;
GK_CMR_600
		LD	A,(ENSTAT2)
		RST	00
GEKI_CMR_ADR	DW	CAMERA0000
		DW	CAMERA1000
		DW	CAMERA2000
GEKI_RINK_ADR	DW	CAMERA3000
		DW	CAMERA4000
		DW	CAMERA5000
GEKI_PHOTO_ADR	DW	CAMERA6000
GEKI_HIT_ADR	DW	CAMERA7000
		DW	CAMERA8000
GEKI_XYMV_ADR	DW	CAMERA9000
		DW	CAMERAA000
GEKI_PHO_ADR	DW	CAMERAB000
GEKI_FLASH_ADR	DW	CAMERA_0000
		DW	CAMERA_1000
		DW	CAMERA_2000
		DW	CAMERA_3000
		DW	CAMERA_4000
		DW	CAMERA_5000
GEKI_FILM_ADR	DW	CAMERA_6000
;
GK_RNK		EQU	(GEKI_RINK_ADR-GEKI_CMR_ADR)/2
GK_PHT		EQU	(GEKI_PHOTO_ADR-GEKI_CMR_ADR)/2
GK_HIT		EQU	(GEKI_HIT_ADR-GEKI_CMR_ADR)/2
GK_XYMV		EQU	(GEKI_XYMV_ADR-GEKI_CMR_ADR)/2
GK_PHO		EQU	(GEKI_PHO_ADR-GEKI_CMR_ADR)/2
GK_FLASH	EQU	(GEKI_FLASH_ADR-GEKI_CMR_ADR)/2
GK_FILM		EQU	(GEKI_FILM_ADR-GEKI_CMR_ADR)/2
;
;+----------------------------------------------+
;|	プレイヤー操作不能			|
;+----------------------------------------------+
CMR_PLSTOP
		LD	A,$002
		LD	(PLSTOP),A
		LD	(ITEMNOT),A
		RET
;
;+----------------------------------------------+
;|	キャラクターＶＲＡＭ配置		|
;+----------------------------------------------+
CAMERA0000_SUB
		PUSH	BC
		CALL	LCDC_OFF
;
		LD	A,$038
		LD	B,$040
		LD	C,$006
		LD	H,:CAMERA0000
		CALL	NEWDJ_DMA
;
		LD	A,$038
		LD	B,$041
		LD	C,$007
		LD	H,:CAMERA0000
		CALL	NEWDJ_DMA
;
		LD	A,$035
		LD	B,$066
		LD	C,$005
		LD	H,:CAMERA0000
		CALL	NEWDJ_DMA
;
		LD	A,(MARINFG)	;何かオプションを
		LD	HL,WANFLG	;	連れている？
		OR	(HL)		;	YES --> CAMERA0500_SUB
		LD	HL,OBAKEFG	;
		OR	(HL)		;
		LD	HL,NIWATFG	;
		OR	(HL)		;
		AND	$07F		;
		JR	NZ,CAMERA0500_SUB
		LD	A,$038
		LD	B,$042
		LD	C,$004
		LD	H,:CAMERA0000
		CALL	NEWDJ_DMA
;
CAMERA0500_SUB
		LD	A,(LCDCB)
		LD	(LCDC),A
;
		POP	BC
		RET
;
;+------------------------------------------------------+
;|	キャラクターＶＲＡＭ配置			|
;+------------------------------------------------------+
CAMERA0000
		CALL	CAMERA0000_SUB
		JP	STATINC
;
;+------------------------------------------------------+
;|	リンクが中に入ってきたかチェック		|
;+------------------------------------------------------+
CAMERA1000
		LD	A,(GMMODE)
		CP	TSVE		; 強制セーブモード？
		RET	Z		; ＹＥＳ

		CALL	E9MSCK
		RET	NC
;
		CALL	E9XCHK
		LD	A,E
		AND	A
		RET	Z
;
		LD	A,(MARINFG)	;何かオプションを
		LD	HL,WANFLG	;	連れている？
		OR	(HL)		;	NO --> CAMERA1800
		LD	HL,OBAKEFG	;
		OR	(HL)		;
		LD	HL,NIWATFG	;
		OR	(HL)		;
		AND	$07F		;
		JR	Z,CAMERA1800	;
		LD	A,$0AD
		CALL	MSGCH3
		RET
;
CAMERA1800
		LD	A,$002
		LD	(ITEMNOT),A
		LD	A,$00C
		CALL	MSGCH2
		JP	STATINC
;
;+------------------------------------------------------+
;|	写真取らせてメッセージ待ち			|
;+------------------------------------------------------+
CAMERA2000
		LD	A,(MSANSR)	;０：ＯＫ
		AND	A		;１：ＮＯ
		JR	NZ,CAMERA2100
		XOR	A
		LD	(ITEMNOT),A
		LD	A,$00D		;奥に行って・・・
		CALL	MSGCH2
		JP	STATINC
;
CAMERA2100
		CALL	CMR_PLSTOP
		LD	A,$094		;ね～撮らせて・・・
		CALL	MSGCH3
		CALL	E9ENXPSL_ADR
		LD	A,(HL)
		LD	HL,ENWRK1
		ADD	HL,BC
		LD	(HL),A
		LD	A,GK_HIT
		CALL	E9ENSTAT
		RET
;
;+------------------------------------------------------+
;|	リンクが奥に行くのを待っている			|
;+------------------------------------------------------+
CAMERA3000
		XOR	A
		LD	(ITEMNOT),A
		CALL	E9MSCK
		JR	NC,CAMERA3100
		LD	A,$00D
		JR	CAMERA3180
;
CAMERA3100
		LD	A,(PLYPSL)
		CP	$078
		JR	C,CAMERA3200
		CALL	DUSHCL2
		LD	A,$077
		LD	(PLYPSL),A
		LD	(WPLYPSL),A
		LD	A,(PLJPFG)
		AND	A
		RET	NZ
		LD	A,$00E
CAMERA3180
		CALL	MSGCH2
		RET
;
CAMERA3200
		CP	$023		;幕の前に行った？
		RET	NC		;	NO --> return
		LD	A,(PLXPSL)	;
		CP	$04E		;
		RET	C		;
		CP	$053		;
		RET	NC		;
		LD	A,(PLCMKI)
		CP	$003
		RET	NZ
		LD	A,(PLCHPT)
		AND	A		;こちらを向いて立っている？
		JR	Z,CAMERA3250	;	YES --> CAMERA3250
		CP	$001		;こちらを向いて立っている？
		JR	Z,CAMERA3250	;	YES --> CAMERA3250
		CP	$022		;立てつきでこちらを向いて立っている？
		JR	Z,CAMERA3250	;	YES --> CAMERA3250
		CP	$023		;立てつきでこちらを向いて立っている？
		JR	Z,CAMERA3250	;	YES --> CAMERA3250
		RET
CAMERA3250
		LD	A,(KENON)
		AND	A		;剣を持っている？
		RET	NZ		;	YES --> return
		CALL	CMR_PLSTOP
		JP	STATINC
;
;+------------------------------------------------------+
;|	写真を撮るためにカメラマン、移動		|
;+------------------------------------------------------+
CAMERA4000
		CALL	CMR_PLSTOP
		LD	A,(FRCNT)
		AND	$007
		JR	NZ,CAMERA4100
		CALL	ENCHPT_ADR
		LD	A,(HL)
		XOR	$001
		LD	(HL),A
CAMERA4100
		CALL	E9ENXPSL_ADR
		LD	A,(HL)
		CP	$050
		JR	C,CAMERA4200
		DEC	(HL)
		RET
CAMERA4200
		CALL	ENCHPT_ADR
		LD	A,(HL)
		OR	$002
		LD	(HL),A
		CALL	E9ENYPSL_ADR
		LD	A,(HL)
		CP	$038
		JR	C,CAMERA4300
		DEC	(HL)
		RET
CAMERA4300
		CALL	LDTIM0
		LD	(HL),$040
		JP	STATINC
;
;+------------------------------------------------------+
;|	"ハイ・チーズ"メッセージ表示待ち		|
;+------------------------------------------------------+
CAMERA5000
		CALL	CMR_PLSTOP
		CALL	LDTIM0
		RET	NZ
		LD	A,$00F
		CALL	MSGCH2
		JP	STATINC
;
;+------------------------------------------------------+
;|	初めての写真モードへ				|
;+------------------------------------------------------+
CAMERA6000
		CALL	CMR_PLSTOP
		LD	A,GK_FLASH
		CALL	E9ENSTAT
		LD	HL,ENWRK0
		ADD	HL,BC
		XOR	A
		LD	(HL),A
;;;KK;;;		LD	A,$040
;;;KK;;;		LD	(SOUND3),A
;;;KK;;;		LD	A,GEKI01
;;;KK;;;		LD	(GMMODE),A
;;;KK;;;		XOR	A
;;;KK;;;		LD	(SBHR),A
;;;KK;;;		LD	(SBCNT),A
;;;KK;;;		LD	(ITMODE),A
		RET
;
;+------------------------------------------------------+
;|	ね～撮らせてよ！				|
;+------------------------------------------------------+
CAMERA7000
		CALL	CMR_PLSTOP
		LD	A,(MSANSR)	;０：ＯＫ
		AND	A		;１：ＮＯ
		JR	NZ,CAMERA7500
		XOR	A
		LD	(ITEMNOT),A
		LD	A,$00D		;奥に行って・・・
		CALL	MSGCH2
		CALL	STATINC
		LD	(HL),GK_RNK
		RET
;
CAMERA7500
		LD	HL,ENWRK1
		ADD	HL,BC
		LD	A,(HL)
		SUB	$010
		LD	(HL),A
		LD	HL,ENWRK0
		ADD	HL,BC
		INC	(HL)
		LD	A,(HL)
		CP	$001		;１回目の断り？
		JP	Z,STATINC	;	YES --> STATINC
;
		CP	$005
		JR	NZ,CAMERA7600
		LD	A,$096		;ひどいよ～
		CALL	MSGCH3
;
CAMERA7600
		CALL	STATINC
		LD	(HL),GK_XYMV
		RET
;
;+------------------------------------------------------+
;|	リンクににじり寄り				|
;+------------------------------------------------------+
CAMERA8000
		CALL	CMR_PLSTOP
		LD	HL,ENWRK1
		ADD	HL,BC
		LD	A,(HL)
		CALL	E9ENXPSL_ADR
		CP	(HL)
		JR	Z,CAMERA8500
		LD	A,(FRCNT)
		AND	$007
		JR	NZ,CAMERA8300
		CALL	ENCHPT_ADR
		LD	A,(HL)
		XOR	$001
		LD	(HL),A
CAMERA8300
		LD	A,$008
		CALL	PSERCHL
		CALL	E9MVCL
		CALL	E9XCHK
		CP	$00C
		JR	NC,CAMERA8500
		LD	HL,ENWRK2
		ADD	HL,BC
		LD	A,$0E2
		LD	(HL),A
;
CAMERA8500
		LD	HL,ENWRK2
		ADD	HL,BC
		LD	A,(HL)
		AND	A
		JR	Z,CAMERA8600
		INC	(HL)
		LD	A,(HL)
		LD	(PLXSPD),A
		PUSH	BC
		CALL	MVCALC
		CALL	PLBGCKL
		POP	BC
		RET
;
CAMERA8600
		LD	HL,ENWRK1
		ADD	HL,BC
		LD	A,(HL)
		CALL	E9ENXPSL_ADR
		CP	(HL)
		RET	NZ
		LD	A,$094		;ね～撮らせて・・・
		CALL	MSGCH3
		LD	A,GK_HIT
		CALL	E9ENSTAT
		RET
;
;+------------------------------------------------------+
;|	リンクを縦方向へと飛ばすための斜め移動		|
;+------------------------------------------------------+
CAMERA9000
		CALL	CMR_PLSTOP
		LD	A,(FRCNT)
		AND	$007
		JR	NZ,CAMERA9100
		CALL	ENCHPT_ADR
		LD	A,(HL)
		XOR	$001
		LD	(HL),A
CAMERA9100
		LD	A,(FRCNT)
		AND	$001
		RET	NZ
		CALL	E9ENXPSL_ADR
		LD	A,(HL)
		CP	$050
		JR	NC,CAMERA9200
		CALL	ENCHPT_ADR
		LD	(HL),$002
		JP	STATINC
CAMERA9200
		DEC	(HL)
		CALL	E9ENYPSL_ADR
		INC	(HL)
		LD	A,(PLYPSL)
		LD	HL,ENWRK1
		ADD	HL,BC		;縦方向の基準リミットセット
		LD	(HL),A		;
		RET
;
;+------------------------------------------------------+
;|	リンクを縦方向へと飛ばす			|
;+------------------------------------------------------+
CAMERAA000
		CALL	CMR_PLSTOP
		LD	HL,ENWRK1
		ADD	HL,BC
		LD	A,(HL)
		CALL	E9ENYPSL_ADR
		CP	(HL)
		JR	Z,CAMERAA500
		LD	A,(FRCNT)
		AND	$007
		JR	NZ,CAMERAA300
		CALL	ENCHPT_ADR
		LD	A,(HL)
		XOR	$001
		LD	(HL),A
CAMERAA300
		LD	HL,ENWRK0
		ADD	HL,BC
		LD	A,(HL)
		CP	$005		;５回断った？
		JR	NZ,CAMERAA350	;	NO --> CAMERAA350
		LD	A,$00C
		CALL	PSERCHL
		CALL	E9MVCL
		CALL	E9YCHK
		CP	$00C		;リンクと当たった？
		JR	NC,CAMERAA500	;	NO --> CAMERAA500
		LD	HL,ENWRK2
		ADD	HL,BC
		LD	A,$0DD
		LD	(HL),A
		JR	CAMERAA500
;
CAMERAA350
		LD	A,$008
		CALL	PSERCHL
		CALL	E9MVCL
		CALL	E9ENYPSL_ADR
		LD	A,(HL)
		CP	$02E
		JR	NC,CAMERAA380
		LD	A,$02D
		LD	(HL),A
CAMERAA380
		CALL	E9YCHK
		CP	$00C		;リンクと当たった？
		JR	NC,CAMERAA500	;	NO --> CAMERAA500
		LD	HL,ENWRK2
		ADD	HL,BC
		LD	A,$0E8
		LD	(HL),A
;
CAMERAA500
		LD	HL,ENWRK2
		ADD	HL,BC
		LD	A,(HL)
		AND	A
		JR	Z,CAMERAA600
		INC	(HL)
		LD	A,(HL)
		LD	(PLYSPD),A
		PUSH	BC
		CALL	MVCALC
		CALL	PLBGCKL
		POP	BC
		RET
;
CAMERAA600
		LD	HL,ENWRK1
		ADD	HL,BC
		LD	A,(HL)
		CALL	E9ENYPSL_ADR
		CP	(HL)
		RET	NZ
		LD	HL,ENWRK0
		ADD	HL,BC
		LD	A,(HL)
		CP	$005		;５回断った？
		JR	NZ,CAMERA7800	;	NO --> CAMERA7800
		XOR	A
		LD	(HL),A
		LD	A,$06A
		LD	(PLCHPT),A
		LD	A,GK_PHO
		JR	CAMERA7900
;
CAMERA7800
		CP	$004
		JR	NZ,CAMERA7850
		LD	A,$095
		JR	CAMERA7880
CAMERA7850
		LD	A,$094		;ね～撮らせて・・・
CAMERA7880
		CALL	MSGCH3
		LD	A,GK_HIT
CAMERA7900
		CALL	E9ENSTAT
		RET
;
;+------------------------------------------------------+
;|	リンクぴよっている				|
;+------------------------------------------------------+
CAMERAB000
		CALL	CMR_PLSTOP
		LD	HL,ENWRK0
		ADD	HL,BC
		INC	(HL)
		LD	A,(HL)
		CP	$040
		RET	NZ
;
		LD	A,(PHOTOFG+1)
		OR	%10000000
		LD	(PHOTOFG+1),A
		XOR	A
		LD	(HL),A
		LD	A,$097
		CALL	MSGCH3
		JP	STATINC
;
;+----------------------------------------------+
;|	フラッシュのためのホワイトセット	|
;+----------------------------------------------+
FLASH_WHITE
		DI
		LD	HL,SVBK
		LD	DE,CGWORK
;
FLSH_WHT_LOOP
		LD	A,(DE)
		LD	(HL),$003
		LD	(DE),A
		XOR	A
		LD	(HL),A
		DEC	A
		LD	(DE),A
		INC	DE
		LD	A,E
		CP	$090
		JR	NZ,FLSH_WHT_LOOP
		LD	A,BGCOL_BITFG
		LD	(CGDMAF),A
		EI
		RET
;
;+----------------------------------------------+
;|	フラッシュのためのカラー再セット	|
;+----------------------------------------------+
FLASH_COLOR
		DI
		LD	HL,SVBK
		LD	DE,CGWORK
;
FLSH_COL_LOOP
		LD	(HL),$003
		LD	A,(DE)
		LD	(HL),$000
		LD	(DE),A
		INC	DE
		LD	A,E
		CP	$090
		JR	NZ,FLSH_COL_LOOP
		LD	A,BGCOL_BITFG
		LD	(CGDMAF),A
		EI
		RET
;
;+------------------------------------------------------+
;|	リンクを撮影する				|
;+------------------------------------------------------+
CAMERA_0000
		CALL	CMR_PLSTOP
		LD	HL,ENWRK0
		ADD	HL,BC
		LD	A,(HL)
		INC	(HL)
		AND	A		;フラッシュ開始？
		JR	NZ,CAMERA_0100	;	NO --> CAMERA_0100
		LD	A,$040
		LD	(SOUND3),A
		LD	HL,BGPFG
		XOR	A
		LD	(HLI),A
		LD	(HLI),A
		LD	(HL),A
		CALL	FLASH_WHITE
		RET
;
CAMERA_0100
		CP	$001		;ループ２回目？
		JR	NZ,CAMERA_0200	;	NO --> CAMERA_0200
		LD	A,(CGBFLG)
		AND	A
		JR	Z,CAMERA_0200
		LD	A,OBJCOL_BITFG
		LD	(CGDMAF),A
		RET
;
CAMERA_0200
		CP	$01E		;フラッシュ終了？
		RET	C		;	NO --> return
		JR	NZ,CAMERA_0300
		CALL	FLASH_COLOR
		RET
;
CAMERA_0300
		LD	A,OBJCOL_BITFG
		LD	(CGDMAF),A
		LD	HL,BGPFG
		LD	A,$0E4
		LD	(HLI),A
		LD	A,$01C
		LD	(HLI),A
		LD	(HL),$0E4
;
		CALL	LDTIM0
		LD	(HL),$030
;
		JP	STATINC
;
;+------------------------------------------------------+
;|	アルバムを置く為に移動するためのＷＡＩＴ	|
;+------------------------------------------------------+
CAMERA_1000
		CALL	CMR_PLSTOP
		CALL	LDTIM0
		RET	NZ
;
		CALL	ENCHPT_ADR
		LD	(HL),$000
		JP	STATINC
;
;+------------------------------------------------------+
;|	アルバムを置く為にＸ移動			|
;+------------------------------------------------------+
CAMERA_2000
		CALL	CMR_PLSTOP
		LD	A,(FRCNT)
		AND	$007
		JR	NZ,CAMERA_2100
		CALL	ENCHPT_ADR
		LD	A,(HL)
		XOR	$001
		LD	(HL),A
CAMERA_2100
		CALL	E9ENXPSL_ADR
		DEC	(HL)
		LD	A,(HL)
		CP	$035
		RET	NC
		CALL	ENCHPT_ADR
		LD	(HL),$002
		JP	STATINC
;
;+------------------------------------------------------+
;|	アルバムを置く為にＹ移動			|
;+------------------------------------------------------+
CAMERA_3000
		CALL	CMR_PLSTOP
		LD	A,(FRCNT)
		AND	$007
		JR	NZ,CAMERA_3100
		CALL	ENCHPT_ADR
		LD	A,(HL)
		XOR	$001
		LD	(HL),A
CAMERA_3100
		CALL	E9ENYPSL_ADR
		DEC	(HL)
		LD	A,(HL)
		CP	$02E
		RET	NC
		LD	A,$098
		CALL	MSGCH3
		CALL	ENCHPT_ADR
		LD	(HL),$000
		JP	STATINC
;
;+----------------------------------------------+
;|	アルバムの誕生				|
;+----------------------------------------------+
ALBUM_MAKE
		LD	A,BOOK
		CALL	ENIDSHL
		LD	HL,ENXPSL
		ADD	HL,DE
		LD	(HL),$028
		LD	HL,ENYPSL
		ADD	HL,DE
		LD	(HL),$030
		RET
;
;+------------------------------------------------------+
;|	アルバムを置く					|
;+------------------------------------------------------+
CAMERA_4000
		CALL	CMR_PLSTOP
		LD	A,$001		;チャラララ～ン
		LD	(SOUND1),A	;
		CALL	ALBUM_MAKE
		CALL	LDTIM0
		LD	(HL),$060
		JP	STATINC
;
;+------------------------------------------------------+
;|	ラスト・メッセージ				|
;+------------------------------------------------------+
CAMERA_5000
		CALL	CMR_PLSTOP
		CALL	LDTIM0
		RET	NZ
;
		XOR	A
		LD	(PLSTOP),A
		LD	(ITEMNOT),A
		LD	A,$099
		CALL	MSGCH3
		LD	A,(PHOTOFG)
		OR	%00000001
		LD	(PHOTOFG),A
		CALL	ENCHPT_ADR
		LD	(HL),$004
		JP	STATINC
;
;+------------------------------------------------------+
;|	残りのフィルム枚数				|
;+------------------------------------------------------+
CAMERA_6000
		CALL	E9MSCK
		RET	NC
;
		LD	E,$000
		LD	A,(PHOTOFG)
CAMERA_6100
		AND	A
		JR	Z,CAMERA_6300
		SRL	A
		BIT	0,A
		JR	Z,CAMERA_6200
		INC	E
CAMERA_6200
		JR	CAMERA_6100
;
CAMERA_6300
		LD	A,(PHOTOFG+1)
		AND	%00001111
CAMERA_6400
		AND	A
		JR	Z,CAMERA_6600
		BIT	0,A
		JR	Z,CAMERA_6500
		INC	E
CAMERA_6500
		SRL	A
		JR	CAMERA_6400
;
CAMERA_6600
		LD	A,E
		ADD	A,$09A
		CALL	MSGCH3
		RET
;
;
;
;+--------------------------------------------------------------+
;|	うるりらジーさんの家の前劇用				|
;+--------------------------------------------------------------+
URURI_BOY
		LD	A,(SCRLFG)
		AND	A
		RET	NZ
;
		LD	DE,CAMEBOY5_DATA
		CALL	EN2CST
;
		CALL	E9STCK
;
		LD	A,(GMMODE)
		CP	GPLAY
		RET	NZ
;
		LD	A,(ENSTAT2)
		AND	A
		JR	Z,URURI_BOY_500
		LD	A,$02		;寸劇中なので
		LD	(PLSTOP),A	;プレイヤーの動きや
		LD	(ITEMNOT),A	;キーを効かなくする
;
URURI_BOY_500
		LD	A,(ENSTAT2)
		RST	00
		DW	URUBOY0000
		DW	URUBOY1000
		DW	URUBOY2000
		DW	URUBOY3000
		DW	URUBOY4000
		DW	URUBOY5000
		DW	URUBOY6000
;
;+------------------------------------------------------+
;|	寸劇スタート待ち				|
;+------------------------------------------------------+
URUBOY0000
		LD	A,(PLXPSL)
		CP	$056
		RET	C
		CP	$05B
		RET	NC
;
		LD	A,(PLYPSL)
		CP	$067
		RET	C
		CP	$06C
		RET	NC
;
		LD	A,(PLCMKI)
		CP	$002
		RET	NZ
;
		LD	A,$004
		LD	(PLCHPT),A
		JP	STATINC
;
;+------------------------------------------------------+
;|	キャラクター転送初期設定			|
;+------------------------------------------------------+
URUBOY1000
		XOR	A
		LD	(CHTRCT),A
		LD	A,$011
		LD	(CHTRFG),A
;
		CALL	E9ENXPSL_ADR
		LD	(HL),$0B0
;
		CALL	E9ENYPSL_ADR
		LD	(HL),$06A
		JP	STATINC
;
;+------------------------------------------------------+
;|	キャラクター転送終了待ち			|
;+------------------------------------------------------+
URUBOY2000
		LD	HL,ENWRK0
		ADD	HL,BC
		INC	(HL)
		LD	A,(HL)
		AND	$007
		RET	NZ
		LD	(HL),A
		LD	A,$003
		LD	(CHTRFG),A
		JP	STATINC
;
;+------------------------------------------------------+
;|	リンクに近づく					|
;+------------------------------------------------------+
URUBOY3000
		LD	A,(FRCNT)
		AND	$007
		JR	NZ,URUBOY3100
		CALL	ENCHPT_ADR
		LD	A,(HL)
		XOR	$001
		LD	(HL),A
;
URUBOY3100
		CALL	E9ENXPSL_ADR
		DEC	(HL)
		LD	A,(HL)
		CP	$06A
		RET	NZ
;
		CALL	LDTIM0
		LD	(HL),$020
		JP	STATINC
;
;+------------------------------------------------------+
;|	リンクがカメラ屋の方を向く			|
;+------------------------------------------------------+
URUBOY4000
		CALL	LDTIM0
		RET	NZ
;
		LD	A,$00A
		LD	(PLCHPT),A
		LD	A,$008
		CALL	MSGCH2
		JP	STATINC
;
;+------------------------------------------------------+
;|	カメラ屋うるりらジーさんを写す			|
;+------------------------------------------------------+
URUBOY5000
		LD	A,(MSGEFG)
		AND	A		;メッセージ表示中？
		RET	NZ		;	YES --> return
;
		LD	A,$004
		LD	(PLCHPT),A
		LD	A,(PLXPSL)
		CP	$051
		JR	Z,URUBOY5100
		DEC	A
		LD	(PLXPSL),A
;
URUBOY5100
		LD	A,(FRCNT)
		AND	$007
		JR	NZ,URUBOY5200
		CALL	ENCHPT_ADR
		LD	A,(HL)
		XOR	$001
		LD	(HL),A
URUBOY5200
		CALL	E9ENXPSL_ADR
		LD	A,(HL)
		CP	$060
		JR	Z,URUBOY5300
		DEC	(HL)
		RET
URUBOY5300
		CALL	ENCHPT_ADR
		LD	(HL),$002
		LD	A,$009
		CALL	MSGCH2
		JP	STATINC
;
;+------------------------------------------------------+
;|	撮影後、１枚絵のモード待ち			|
;+------------------------------------------------------+
URUBOY6000
		LD	A,$040
		LD	(SOUND3),A
		LD	A,GEKI05
		LD	(GMMODE),A
		XOR	A
		LD	(SBHR),A
		LD	(SBCNT),A
		LD	(ITMODE),A
		RET
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	カメラ小僧						%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
CAMEBOY_DAT0
	DB	$000,$000,$06C,$006
	DB	$000,$008,$06E,$006
	DB	$005,$007,$0FF,$006
;
CAMEBOY_DAT1
	DB	$000,$000,$068,$006
	DB	$000,$008,$06A,$006
	DB	$005,$007,$0FF,$006
;
CAMEBOY_DAT2
	DB	$000,$004,$04A,$006
	DB	$000,$000,$070,$006
	DB	$000,$008,$072,$006
;
CAMEBOY_DAT3
	DB	$0FF,$004,$04A,$026
	DB	$000,$000,$074,$006
	DB	$000,$008,$076,$006
;
CAMEBOY_DAT4
	DB	$000,$000,$06E,$026
	DB	$000,$008,$06C,$026
	DB	$005,$007,$0FF,$006
;
CAMEBOY_DAT5
	DB	$000,$000,$06A,$026
	DB	$000,$008,$068,$026
	DB	$005,$007,$0FF,$006
;
CAMEBOY_DAT
	DW	CAMEBOY_DAT0,CAMEBOY_DAT1,CAMEBOY_DAT2
	DW	CAMEBOY_DAT3,CAMEBOY_DAT4,CAMEBOY_DAT5
;
;;;KK;;;	DB	$06C,$006,$06E,$006
;;;KK;;;	DB	$068,$006,$06A,$006
;;;KK;;;;
;;;KK;;;	DB	$070,$006,$072,$006
;;;KK;;;	DB	$074,$006,$076,$006
;;;KK;;;;
;;;KK;;;	DB	$06E,$026,$06C,$026
;;;KK;;;	DB	$06A,$026,$068,$026
;
CAMEBOY9_DAT
	DB	$044,$007,$046,$007
	DB	$048,$007,$04A,$007
;
	DB	$046,$027,$044,$027
	DB	$04A,$027,$048,$027
;
	DB	$040,$007,$042,$007
;
CAMEBOY2_DATA
	DB	$070,$006,$072,$006
	DB	$074,$006,$076,$006
;
	DB	$06A,$026,$068,$026
	DB	$06E,$026,$06C,$026
;;;KK;;;	DB	$070,$003,$072,$003
;;;KK;;;	DB	$074,$003,$076,$003
;;;KK;;;;
;;;KK;;;	DB	$06A,$023,$068,$023
;;;KK;;;	DB	$06E,$023,$06C,$023
;
CAMEBOY3_DAT
	DB	$070,$006,$072,$006
	DB	$074,$006,$076,$006
;
CAMEBOY5_DATA
	DB	$048,$006,$04A,$006
	DB	$04C,$006,$04E,$006
;
	DB	$070,$006,$072,$006
	DB	$074,$006,$076,$006
;
CAMEBOY12_DATA
	DB	$04E,$026,$04C,$026
	DB	$04A,$026,$048,$026
;
;
CAMERA_BOY
		LD	A,(DJFLAG)
		AND	A		;地上？
		JR	Z,CMR_BOY_600	;	NO --> CMR_BOY_600
		LD	A,(GRNDPT)
		CP	$0DA		;動物村の元空家？
		JR	NZ,CMR_BOY_100	;	NO --> CMR_BOY_100
		LD	DE,CAMEBOY2_DATA
		CALL	EN2CST
		RET
;
CMR_BOY_100
		CP	$0B5		;カメラ屋の中？
		JP	Z,GEKI_CAMERA	;	YES --> GEKI_CAMERA
;
		CP	$0A4		;ハートの欠片のある井戸の中？
		JP	Z,GEKI_IDO	;	YES --> GEKI_IDO
;
CMR_BOY_600
		LD	A,(GRNDPT)
		CP	$0B1		;めーべ村？
		JP	Z,URURI_BOY	;	YES --> URURI_BOY
;
		CP	$00D		;吊り橋マリン？
		JP	Z,GEKA_MARIN	;	YES --> GEKA_MARIN
;
;- - - - - - - - - - - - - - - - - - - - 橋の下の釣
		LD	A,(PHOTOFG)
		BIT	0,A		;写真１を持ってる？
		JP	Z,ENCLER	;	NO --> ENCLER
		BIT	7,A		;写真８を持ってる？
		JP	NZ,ENCLER	;	YES --> ENCLER
		LD	A,(MEGAF)
		CP	$00D		;ブラジャー以上のアイテム持ってる？
		JP	C,ENCLER	;	YES --> ENCLER
;
		LD	DE,CAMEBOY9_DAT
		CALL	EN2CST
;
		CALL	E9STCK
;
;;;KK;;;		CALL	ENCHPT_ADR
;;;KK;;;		LD	A,(HL)
;;;KK;;;		AND	$00E
;;;KK;;;		LD	(HL),A
;
		LD	A,(ENSTAT2)
		RST	00
CAM_ADR		DW	CAM_WAIT
		DW	CAM_SPDSET
		DW	CAM_SWIM
		DW	CAM_WAIT
		DW	CAM_SPDSET
		DW	CAM_SWIM
		DW	CAM_WAIT
		DW	CAM_MUKI
CAM_TURI_ADR	DW	CAM_TURI
;
CMTR	EQU	(CAM_TURI_ADR-CAM_ADR)/2
;
;+----------------------------------------------+
;|	泳ぎパターンチェンジ			|
;+----------------------------------------------+
SWIM_PTN
		LD	A,(FRCNT)
		AND	$00F
		RET	NZ
		CALL	ENCHPT_ADR
		LD	A,(HL)
		XOR	$001
		LD	(HL),A
		RET
;
;+------------------------------------------------------+
;|	スピードセット					|
;+------------------------------------------------------+
CAM_SPDSET
		CALL	SWIM_PTN
;
		LD	HL,ENWRK0
		ADD	HL,BC
		LD	A,(HL)
		AND	A
		CALL	E9XSPD_ADR
		LD	E,$0E8
		AND	A		;左向き？
		JR	Z,CAM_SPD_100	;	YES --> CAM_SPD_100
		LD	E,$018
CAM_SPD_100
		LD	(HL),E
		JP	STATINC
;
;+------------------------------------------------------+
;|	泳ぐ！！					|
;+------------------------------------------------------+
CAM_SWIM
		CALL	SWIM_PTN
;
		CALL	E9XSPD_ADR
		LD	A,(HL)
		BIT	7,A
		JR	Z,CAM_SWIM_120
		INC	A
		JR	CAM_SWIM_140
CAM_SWIM_120
		DEC	A
CAM_SWIM_140
		LD	(HL),A
		AND	A
		JR	NZ,CAM_SWIM_300
		CALL	LDTIM0		;減速しきった所での
		LD	(HL),$038	;	ＷＡＩＴタイマーセット
		JP	STATINC
;
CAM_SWIM_300
		PUSH	AF
		SWAP	A
		AND	$F0
		LD	HL,ENXSDR
		ADD	A,(HL)
		LD	(HL),A
		RL	D
;
		LD	HL,ENXPSL
		ADD	HL,BC
;
		POP	AF
		LD	E,$0
		BIT	7,A
		JR	Z,CAM_SWIM_380
		LD	E,$F0
CAM_SWIM_380
		SWAP	A
		AND	$0F
		OR	E
		RR	D
		ADC	A,(HL)
		LD	(HL),A
;
;;;KK;;;		CALL	ENCHPT_ADR
;;;KK;;;		LD	A,(HL)
;;;KK;;;		OR	$001
;;;KK;;;		LD	(HL),A
		RET
;
;+------------------------------------------------------+
;|	待ち						|
;+------------------------------------------------------+
CAM_WAIT
		CALL	SWIM_PTN
;
		CALL	LDTIM0
		RET	NZ
		JP	STATINC
;
;+------------------------------------------------------+
;|	向きを変える					|
;+------------------------------------------------------+
CAM_MUKI
		LD	HL,ENWRK0
		ADD	HL,BC
		LD	A,(HL)
		AND	A
		XOR	$001
		LD	(HL),A
		CALL	ENCHPT_ADR
		LD	A,(HL)
		XOR	$002
		LD	(HL),A
		CALL	STATINC
		XOR	A
		LD	(HL),A
		CALL	LDTIM0
		LD	A,$020
		LD	(HL),A
		RET
;
;+------------------------------------------------------+
;|	針に引っかかったので制御を釣オヤジに渡した	|
;+------------------------------------------------------+
CAM_TURI
		CALL	ENCHPT_ADR
		LD	(HL),$004
		RET
;
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ダンジョン内のヒント石版のデータインデックス		x
;x			戻り値					x
;x			work0：メッセージデータインデックス	x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
DJ1_HINT
	DB	$080,$080,$088
DJ2_HINT
	DB	$081,$08A,$089
DJ3_HINT
	DB	$082,$08B,$08C
DJ4_HINT
	DB	$083,$000,$000
DJ5_HINT
	DB	$084,$08D,$000
DJ6_HINT
	DB	$085,$08E,$08F
DJ7_HINT
	DB	$086,$090,$091
DJ8_HINT
	DB	$087,$092,$093
;
DJ_HINTO_TBL
	DW	DJ1_HINT,DJ2_HINT,DJ3_HINT,DJ4_HINT
	DW	DJ5_HINT,DJ6_HINT,DJ7_HINT,DJ8_HINT
;
DJ1_ROOM
	DB	$003,$00A,$004
;
DJ2_ROOM
	DB	$029,$033,$02F
;
DJ3_ROOM
	DB	$054,$040,$047
;
DJ4_ROOM
	DB	$06F,$000,$000
;
DJ5_ROOM
	DB	$08A,$09A,$000
;
DJ6_ROOM
	DB	$0BB,$0B6,$0D7
;
DJ7_ROOM
	DB	$016,$01C,$004
;
DJ8_ROOM
	DB	$053,$045,$041
;
DJ_ROOM_TBL
	DW	DJ1_ROOM,DJ2_ROOM,DJ3_ROOM,DJ4_ROOM
	DW	DJ5_ROOM,DJ6_ROOM,DJ7_ROOM,DJ8_ROOM
;
;
HINTO_READ
		PUSH	BC
		LD	HL,DJ_ROOM_TBL
		LD	A,(DNJNNO)
		SLA	A
		LD	E,A
		LD	D,$000
		LD	C,D
		LD	B,D
		ADD	HL,DE
		LD	A,(HLI)
		LD	H,(HL)
		LD	L,A
		DEC	HL
HINTO_RD_200
		INC	HL
		LD	A,(GRNDPT)
		CP	(HL)
		JR	Z,HINTO_RD_250
		INC	C
		LD	A,C
		CP	$003
		JR	NZ,HINTO_RD_200
HINTO_RD_250
		LD	HL,DJ_HINTO_TBL
		ADD	HL,DE
		LD	A,(HLI)
		LD	H,(HL)
		LD	L,A
		ADD	HL,BC
		LD	A,(HL)
		LD	(WORK0),A
		POP	BC
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	寸劇のゾーラ						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
GEKI_ZORA
		LD	A,$02
		LD	(PLSTOP),A
		LD	(ITEMNOT),A
;
		LD	A,(ENSTAT2)
		RST	00
		DW	GK_ZORA0000
		DW	GK_ZORA1000
		DW	GK_ZORA2000
		DW	GK_ZORA3000
		DW	GK_ZORA4000
		DW	GK_ZORA5000
		DW	GK_ZORA6000
		DW	GK_ZORA7000
		DW	GK_ZORA8000
		DW	GK_ZORA9000
		DW	GK_ZORAA000
;
;+------------------------------------------------------+
;|	キャラクター転送＆カラーセット			|
;+------------------------------------------------------+
GK_CBOY_COL
;;;KK;;;	DW	$47ff,$0000,$4631,$7e9f
	DW	$7fff,$0000,$4471,$7d7f
;
GK_ZORA0000
		PUSH	BC
		CALL	LCDC_OFF
;
		LD	A,$038
		LD	B,$040
		LD	C,$006
		LD	H,:GK_ZORA0000
		CALL	NEWDJ_DMA
;
		LD	A,$038
		LD	B,$041
		LD	C,$007
		LD	H,:GK_ZORA0000
		CALL	NEWDJ_DMA
;
		LD	A,(LCDCB)
		LD	(LCDC),A
;
		DI
		LD	A,$002
		LD	(SVBK),A
		LD	DE,GK_CBOY_COL
		LD	HL,OBCGWK+(($006*$004)*$002)
GK_ZORA0900
		LD	A,(DE)
		LD	(HLI),A
		INC	DE
		LD	A,L
		AND	$007
		JR	NZ,GK_ZORA0900
		XOR	A
		LD	(SVBK),A
		EI
;
		POP	BC
		JP	STATINC
;
;+------------------------------------------------------+
;|	ホワイト・イン終了待ち				|
;+------------------------------------------------------+
GK_ZORA1000
		LD	A,(SBHR)
		CP	$04
		RET	NZ
;
		CALL	LDTIM0
		LD	(HL),$010
		JP	STATINC
;
;+----------------------------------------------+
;|	リンクのパターンチェンジ		|
;+----------------------------------------------+
GK_RINK_PTN
		LD	A,(FRCNT)
		AND	$007
		RET	NZ
		LD	A,(PLCHPT)
		XOR	$001
		LD	(PLCHPT),A
		RET
;
;+------------------------------------------------------+
;|	ゾーラ前まで移動	Ｙ移動			|
;+------------------------------------------------------+
GK_ZORA2000
		CALL	LDTIM0
		RET	NZ
;
		CALL	GK_RINK_PTN
		LD	HL,PLYPSL
		DEC	(HL)
		LD	A,(HL)
		CP	$042
		RET	NC
		LD	A,$042
		LD	(HL),A
		LD	A,$00A
		LD	(PLCHPT),A
		JP	STATINC
;
;+------------------------------------------------------+
;|	ゾーラ前まで移動	Ｘ移動			|
;+------------------------------------------------------+
GK_ZORA3000
		CALL	GK_RINK_PTN
		LD	HL,PLXPSL
		INC	(HL)
		LD	A,(HL)
		CP	$078
		RET	C
		LD	A,$078
		LD	(HL),A
		LD	A,$004
		LD	(PLCHPT),A
		CALL	LDTIM0
		LD	(HL),$060
		JP	STATINC
;
;+------------------------------------------------------+
;|	ゾーラの正面まで移動				|
;+------------------------------------------------------+
GK_ZORA4000
		CALL	GK_RINK_PTN
		LD	HL,PLYPSL
		DEC	(HL)
		LD	A,(HL)
		CP	$02C
		RET	NC
		LD	A,$02C
		LD	(HL),A
		LD	A,$004
		LD	(PLCHPT),A
		JP	STATINC
;
;+------------------------------------------------------+
;|	ゾーラ出現	(渦巻きの後、顔出し)		|
;+------------------------------------------------------+
GK_ZORA5000
		CALL	LDTIM0
		JR	NZ,GK_ZORA5100
		CALL	STATINC
		LD	A,$0EF
		CALL	MSGCH2
		LD	A,$003
		JP	ENPTST
GK_ZORA5100
		AND	$004
		LD	A,$001
		JR	Z,GK_ZORA5200
		INC	A
GK_ZORA5200
		JP	ENPTST
;
;+------------------------------------------------------+
;|	メッセージ終了待ち＆写真屋発生			|
;+------------------------------------------------------+
GK_ZORA6000
		LD	A,(MSGEFG)
		AND	A		;メッセージ表示中？
		RET	NZ
;
		LD	A,C_BOY
		CALL	ENIDSHL
;
		LD	HL,ENXPSL
		ADD	HL,DE
		LD	(HL),$050
;
		LD	HL,ENYPSL
		ADD	HL,DE
		LD	(HL),$07C
;
		LD	HL,ENWRK4
		ADD	HL,BC
		LD	(HL),E
;
		CALL	LDTIM0
		LD	(HL),$020
		JP	STATINC
;
;+----------------------------------------------+
;|	写真屋のパターンチェンジ		|
;+----------------------------------------------+
C_BOY_CHGPTN
		LD	HL,ENWRK4
		ADD	HL,BC
		LD	E,(HL)
		LD	D,$000
		LD	HL,ENCHPT
		ADD	HL,DE
		LD	A,(FRCNT)
		AND	$007
		RET	NZ
		LD	A,(HL)
		XOR	$001
		LD	(HL),A
		RET
;
;+------------------------------------------------------+
;|	写真屋のＹ移動					|
;+------------------------------------------------------+
GK_ZORA7000
		CALL	LDTIM0
		RET	NZ
;
		CALL	C_BOY_CHGPTN
		LD	HL,ENYPSL
		ADD	HL,DE
		DEC	(HL)
		LD	A,(HL)
		CP	$042
		RET	NC
		LD	A,$042
		LD	(HL),A
		LD	A,$002
GK_ZORA7800
		LD	HL,ENCHPT
		ADD	HL,DE
		LD	(HL),A
		JP	STATINC
;
;+------------------------------------------------------+
;|	写真屋のＸ移動					|
;+------------------------------------------------------+
GK_ZORA8000
		CALL	C_BOY_CHGPTN
		LD	HL,ENXPSL
		ADD	HL,DE
		INC	(HL)
		LD	A,(HL)
		CP	$078
		RET	C
		LD	A,$078
		LD	(HL),A
		CALL	LDTIM0
		LD	(HL),$030
		XOR	A
		JR	GK_ZORA7800
;
;+------------------------------------------------------+
;|	写真屋のメッセージ表示待ち			|
;+------------------------------------------------------+
GK_ZORA9000
		CALL	LDTIM0
		RET	NZ
;
		LD	A,$0F8
		CALL	MSGCH2
		JP	STATINC
;
;+------------------------------------------------------+
;|	写真屋のメッセージ終了待ち			|
;+------------------------------------------------------+
GK_ZORAA000
		LD	A,(MSGEFG)
		AND	A		;メッセージ表示中？
		RET	NZ
;
		LD	A,$040		;シャッター音
		LD	(SOUND3),A
		LD	A,GEKI09
		LD	(GMMODE),A
		XOR	A
		LD	(ITMODE),A
		LD	(SBHR),A
		LD	(SBCNT),A
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	服のダンジョン・ラストボスの子分			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
FK_BOSS_KOBUN
		LD	A,(BSINDX2)
		LD	E,A
		LD	D,$000
		LD	HL,ENMODE
		ADD	HL,DE
		LD	A,(HL)
		CP	EFAIL		;ボス爆発？
		JR	NZ,BS_KBN_200	;	NO --> BS_KBN_200
		CALL	E9CLER
		CALL	SMK_CLS
		RET
;
BS_KBN_200
		LD	A,(PBANK)
		PUSH	AF
		LD	A,:FK_BOSS_KOBUN
		LD	(PBANK),A
		CALL	SADWSTL
		CALL	MODE_KOBUN
		POP	AF
		LD	(PBANK),A
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	各モード処理					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
MODE_KOBUN
		LD	A,(ENSTAT2)
		RST	0
STOP_KBN_ADR	DW	STOP_KOBUN
		DW	WALK_KOBUN
		DW	JUMP_KOBUN
DOWN_KBN_ADR	DW	DOWN_KOBUN
;
DWN_KBN		EQU	(DOWN_KBN_ADR-STOP_KBN_ADR)/2
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	停止してる					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
STOP_KOBUN
		CALL	LDTIM0
		RET	NZ
;
		CALL	STATINC
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	移動中						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
WALK_KOBUN
		LD	A,(FRCNT)
		XOR	C
		AND	$003
		JR	NZ,WALK_KBN_100
;
		LD	A,$08
		CALL	PSERCHL
WALK_KBN_100
		CALL	E9XCHK
		CP	$018
		JR	NC,WALK_KBN_200
		CALL	E9YCHK
		CP	$018
		JR	NC,WALK_KBN_200
;
		CALL	E9ZSPD_ADR
		LD	(HL),$28
;
		LD	A,$10
		CALL	PSERCHL
;
		CALL	STATINC
WALK_KBN_200
		CALL	E9MVCL
		CALL	ENBGCKL
;
		LD	A,(FRCNT)
		RRA
		RRA
		AND	%00000001
		CALL	ENPTST
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ジャンプ(上昇)					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
JUMP_KOBUN
		CALL	E9MVCL
		CALL	ENBGCKL
		CALL	E9ZCLC
;
		CALL	E9ZSPD_ADR
		DEC	(HL)
		DEC	(HL)
		LD	A,(HL)
		CP	$002
		JR	NC,JUMP_KBN_100
		LD	(HL),$0C0
;
		LD	A,$010
		CALL	ENTIM0_SET
;
		CALL	ENSDCL
		CALL	STATINC
JUMP_KBN_100
		LD	A,$002
		CALL	ENPTST
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ジャンプ(下降)					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
DOWN_KOBUN
		CALL	LDTIM0
		RET	NZ
;
		CALL	E9ZCLC
;
		CALL	E9ENZPSL_ADR
		LD	A,(HL)
		BIT	7,A
		RET	Z
;
DOWN_KBN_100
		LD	(HL),B
;
		LD	A,$020
		CALL	ENTIM0_SET
;
		XOR	A
		CALL	E9ENSTAT
;
		LD	HL,ENZSPD
		ADD	HL,BC
		LD	A,(HL)
		LD	(HL),B
		BIT	7,A
		RET	Z
;
		CP	$D0
		RET	NC
;
		LD	A,(ENSVXL)
		LD	(WORK0),A
		LD	A,(ENDSYP)
		ADD	A,$0C
		LD	(WORK1),A
		CALL	FLASHST
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	服のダンジョン・ラストボス				x
;x			注					x
;x			ENTIM0：移動する時間で使用		x
;x			ENTIM1：体力回復カウンターで使用	x
;x			ENWRK0：切られた回数チェック用		x
;x			ENWRK1：体力回復カウンターで使用	x
;x			ENWRK4：死ぬ処理で使用			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
FUKU_BOSS_SIZE
		DB	$01C,$028
;
FUKU_BOSS
		CALL	SHRVSE		;シャッター無理矢理補正！
		LD	A,C
		LD	(BSINDX2),A
;
		CALL	FUKU_BOSS_CSET
;
		LD	A,(ENMODE2)
		CP	EMOVE		;死んだ？
		JP	NZ,HINO_OUT	;	YES --> HINO_OUT
;
		LD	A,(FRCNT)
		AND	$01F		;パターンチェンジ？
		JR	NZ,FK_BOSS_050	;	NO --> FK_BOSS_050
		CALL	ENCHPT_ADR
		LD	A,(HL)
		INC	A
		AND	$001
		LD	(HL),A
;
FK_BOSS_050
		CALL	BSSDCK		;ボスサウンドチェック
		CALL	E9STCK		;ＳＴＯＰチェック
		CALL	E9MVCL
		LD	DE,FUKU_BOSS_SIZE
		CALL	E9BGCK_BOSS
;;;KK;;;		CALL	ENBGCKL
		CALL	CREPKEL
;
		LD	A,(SHUTFG)
		AND	A		;シャッター閉じている？
		RET	Z		;	NO--> return
;
		CALL	LIFE_RTN
		CALL	BOSS_COL_CHG
;
		LD	A,(ENSTAT2)
		RST	0
FK_BOSS_ADR	DW	BLK_TIME_SET
		DW	NOMAL_WAIT
		DW	FK_BOSS_MSGON
		DW	FK_BOSS_MSG
FK_BS_MOVE	DW	FK_BOSS_MOVE
		DW	FK_BOSS_MSG
		DW	FK_BOSS_KODOM
;
FK_BS_MV	EQU	(FK_BS_MOVE-FK_BOSS_ADR)/2
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	体力回復					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
LIFE_RTN
		LD	HL,ENLIFE
		ADD	HL,BC
		LD	A,(HL)
		CP	$010		;体力ＭＡＸになっている？
		JR	NZ,LIFE_RTN_100	;	NO --> LIFE_RTN_100
		LD	HL,ENWRK0
		ADD	HL,BC
		LD	(HL),$000
		RET
;
LIFE_RTN_100
		LD	HL,ENFLSH
		ADD	HL,BC
		LD	A,(HL)
		AND	A
		RET	NZ
;
		CALL	LDTIM1
		RET	NZ
;
		LD	HL,ENWRK1
		ADD	HL,BC
		LD	A,(HL)
		AND	A
		JR	Z,LIFE_RTN_300
		DEC	(HL)
		RET
;
LIFE_RTN_300
		LD	HL,ENLIFE
		ADD	HL,BC
		INC	(HL)
		LD	A,(HL)		;体力ＭＡＸに戻った
		CP	$010		;	メッセージ表示？
		JR	NZ,BS_COL_200	;	NO --> BS_COL_200
		LD	A,$06F
		CALL	MSGCH3
		JR	BS_COL_200
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	体力に合わせてカラーを変える			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
BOSS_COL_DATA
	DW	$001F,$001F,$011F,$021F,$031F,$0731,$0B44,$3A40
	DW	$7CA5
;
BOSS_COL_CHG
		CALL	ENHNCL
		LD	A,(HL)
		AND	A
		JR	NZ,BS_COL_100
		LD	HL,ENFLSH
		ADD	HL,BC
		LD	A,(HL)
		AND	A
		RET	Z
		LD	(HL),$000	;フラッシングフラグクリア
;;;KK;;;		LD	HL,ENWRK0
;;;KK;;;		ADD	HL,BC
;;;KK;;;		INC	(HL)
		RET
;
BS_COL_100
		LD	A,$010		;プレイヤー弾かれる！
		LD	(HANEFG),A	;
		LD	A,$014		;
		CALL	PSERCH2L	;
		LD	A,(WORK0)	;
		LD	(PLYSPD),A	;
		LD	A,(WORK1)	;
		LD	(PLXSPD),A	;
;
BS_COL_200
		LD	HL,ENLIFE
		ADD	HL,BC
		LD	A,(HL)
;;;KK;;;		SLA	E
		AND	$0FE
		LD	E,A
		LD	D,$000
		LD	HL,BOSS_COL_DATA
		ADD	HL,DE
		LD	A,(OBCGWK+$03C)	;すでに色が変わっている？
		CP	(HL)		;	YES --> return
		JR	NZ,BS_COL_300	;	NO ---> BS_COL_300
		INC	HL		;
		LD	A,(OBCGWK+$03D)	;
		CP	(HL)		;
		RET	Z		;
;
		DEC	HL
BS_COL_300
		ld	e,l
		ld	d,h
;;10/31;		PUSH	HL
;;10/31;		POP	DE
		LD	HL,SVBK
		LD	A,(DE)
		LD	(OBCGWK+$03C),A
		LD	(HL),$002
		LD	(OBCGWK+$03C),A
		LD	(HL),$000
		INC	DE
		LD	A,(DE)
		LD	(OBCGWK+$03D),A
		LD	(HL),$002
		LD	(OBCGWK+$03D),A
		LD	(HL),$000
		LD	A,OBJCOL_BITFG
		LD	(CGDMAF),A	; 転送フラグセット
;
		LD	HL,ENTIM1
		ADD	HL,BC
		LD	(HL),$060
		LD	HL,ENWRK1
		ADD	HL,BC
		LD	(HL),$004
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	メッセージセット				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
FK_BOSS_MSGON
		PUSH	BC
		SLA	C
		SLA	C
		LD	HL,ENOJSZ
		ADD	HL,BC
		INC	HL
		INC	HL
		INC	HL
		LD	(HL),$014	;縦の当たり範囲変更
		POP	BC
		LD	A,$06D
		CALL	MSGCH3
		CALL	STATINC
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	メッセージ表示終了待ち				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
FK_BOSS_MSG
		LD	A,(MSGEFG)
		AND	A		;メッセージ表示中？
		RET	NZ		;	YES --> return
		CALL	STATINC
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	骨投げチェック				x
;x		(注)				x
;x		子分がいるときは、骨を投げない	x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
HONE_CHECK
		LD	A,(FRCNT)
		AND	$00F
		RET	NZ
;
		CALL	RNDSUB
		AND	$007
		RET	NZ
;
		CALL	KOBUN_CHECK
		AND	A		;子分が存在してる？
		RET	NZ		;	YES --> return
;
		PUSH	BC
		LD	A,HINOIWA
		CALL	ENIDSHL
		JR	C,HONE_CHK_900
;
		LD	HL,ENSTAT
		ADD	HL,DE
		LD	(HL),$004
;
		CALL	E9ENXPSL_ADR	;Ｘポジションセット
		LD	A,(HL)		;
		LD	HL,ENXPSL	;
		ADD	HL,DE		;
		LD	(HL),A		;
;
		CALL	E9ENYPSL_ADR	;Ｙポジションセット
		LD	A,(HL)		;
		LD	HL,ENYPSL	;
		ADD	HL,DE		;
		LD	(HL),A		;
;
		LD	HL,ENMOD0
		ADD	HL,DE
		LD	(HL),%00010010
;
		LD	HL,ENMOD1
		ADD	HL,DE
		SET	7,(HL)
;
		ld	c,e
		ld	b,d
;;10/31;		PUSH	DE		;リンクに向かって飛ぶ
;;10/31;		POP	BC		;	スピードセット
		LD	A,$010		;
		CALL	PSERCHL		;
;
HONE_CHK_900
		POP	BC
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	移動中						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
FK_BOSS_YSPD
	DB	$FA,$FC
;
FK_BOSS_XSPD
	DB	$00,$04,$06,$04,$00,$FC,$FA,$FC
;
;
FK_BOSS_MOVE
		CALL	HONE_CHECK
;
		LD	HL,ENLIFE
		ADD	HL,BC
		LD	A,(HL)
		AND	A		;すでに死んでいる？
		JR	Z,FK_BS_MV_100	;	YES --> FK_BS_MV_100
		LD	HL,ENWRK0
		ADD	HL,BC
		CP	$002
		JR	NC,FK_BS_MV_050
		LD	A,(HL)
		DEC	A
		AND	A
		JR	NZ,FK_BS_MV_050
		INC	(HL)
		JR	FK_BS_MV_080
FK_BS_MV_050
		CP	$005
		JR	NC,FK_BS_MV_100
		LD	A,(HL)
		AND	A
		JR	NZ,FK_BS_MV_100
		INC	(HL)
		LD	A,$06E
		CALL	MSGCH3
FK_BS_MV_080
		CALL	E9XSPD_ADR
		LD	(HL),A
		CALL	E9YSPD_ADR
		LD	(HL),A
		CALL	STATINC
		RET
;
FK_BS_MV_100
		CALL	LDTIM0
		RET	NZ
;
		CALL	RNDSUB
		AND	$3F
		ADD	A,$30
		LD	(HL),A
;
		AND	$07
		LD	E,A
		LD	D,B
		LD	HL,FK_BOSS_XSPD
		ADD	HL,DE
		LD	A,(HL)
		CALL	E9XSPD_ADR
		LD	(HL),A
		LD	HL,FK_BOSS_YSPD
		ADD	HL,DE
		LD	A,(HL)
		CALL	E9YSPD_ADR
		LD	(HL),A
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	子分チェック				x
;x		戻り値				x
;x		Ａ：子分の個数			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
KOBUN_CHECK
		XOR	A
		LD	(WORK0),A
		LD	E,A
		LD	D,A
KBN_CHK_LOOP
		LD	HL,ENMYNO
		ADD	HL,DE
		LD	A,(HL)
		CP	SKEL0		;子分か？
		JR	NZ,KBN_CHK_PASS	;	NO --> KBN_CHK_PASS
		LD	HL,ENMODE
		ADD	HL,DE
		LD	A,(HL)
		AND	A		;その部屋にいる？
		JR	Z,KBN_CHK_PASS	;	NO --> KBN_CHK_PASS
		LD	HL,(WORK0)
		INC	(HL)
KBN_CHK_PASS
		INC	DE
		LD	A,E
		AND	$00F
		JR	NZ,KBN_CHK_LOOP
		LD	A,(WORK0)
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	子分登場！					x
;x		リンクのいた場所に落ちてくる		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
FK_BOSS_KODOM
		CALL	KOBUN_CHECK
		CP	$002		;子分が２匹以上いる？
		JR	Z,BOSS_KDM_200	;	YES --> BOSS_KDM_200
		LD	A,SKEL0
		CALL	ENIDSHL
		JR	C,BOSS_KDM_200
		LD	A,(PLXPSL)
		LD	HL,ENXPSL
		ADD	HL,DE
		LD	(HL),A
		LD	A,(PLYPSL)
		LD	HL,ENYPSL
		ADD	HL,DE
		LD	(HL),A
		LD	HL,ENZPSL
		ADD	HL,DE
		LD	(HL),$030
		LD	HL,ENZSPD
		ADD	HL,DE
		LD	(HL),$0C0
		LD	HL,ENCHPT
		ADD	HL,DE
		LD	(HL),$002
		LD	HL,ENLIFE
		ADD	HL,DE
		LD	(HL),$002
		LD	HL,ENSTAT
		ADD	HL,DE
		LD	(HL),DWN_KBN
;
		LD	HL,ENLIFE
		ADD	HL,BC
		LD	A,(HL)
		CP	$004
		RET	NC
;
BOSS_KDM_200
		LD	A,FK_BS_MV
		CALL	E9ENSTAT
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	服のダンジョン・ラストボスＯＡＭセット		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
FUKU_BOSS_DAT0
	DB	$0F0,$0F8,$060,$007
	DB	$0F0,$000,$062,$007
	DB	$0F0,$008,$062,$027
	DB	$0F0,$010,$060,$027
	DB	$000,$0F8,$064,$007
	DB	$000,$000,$066,$007
	DB	$000,$008,$066,$027
	DB	$000,$010,$064,$027
	DB	$010,$0F8,$068,$006
	DB	$010,$000,$06A,$006
	DB	$010,$008,$06C,$006
	DB	$010,$010,$06E,$006
;
FUKU_BOSS_DAT1
	DB	$0F0,$0F8,$060,$007
	DB	$0F0,$000,$062,$007
	DB	$0F0,$008,$062,$027
	DB	$0F0,$010,$060,$027
	DB	$000,$0F8,$064,$007
	DB	$000,$000,$066,$007
	DB	$000,$008,$066,$027
	DB	$000,$010,$064,$027
	DB	$010,$0F8,$06E,$026
	DB	$010,$000,$06C,$026
	DB	$010,$008,$06A,$026
	DB	$010,$010,$068,$026
;
FUKU_BOSS_DATA
	DW	FUKU_BOSS_DAT0,FUKU_BOSS_DAT1
;
;
FUKU_BOSS_CSET
		CALL	ENCHPT_ADR
		LD	A,(HL)
		SLA	A
		LD	E,A
		LD	D,$000
		LD	HL,FUKU_BOSS_DATA
		CALL	HL_RT_SET
		LD	C,$00C
		CALL	ENOMST
		LD	A,$00C
		CALL	NXOMSBL
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	服ＧＥＴ！						x
;x			(注)					x
;x			ENWRK0：存在を消すかフラグ		x
;x			ENWRK1：ＧＥＴした服のナンバー		x
;x				０->赤　１->青			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
GET_FUKU
		LD	A,(PBANK)
		PUSH	AF
;
		LD	A,$009		;ヨーロッパ版で追加
		LD	HL,ENMOD2	;
		ADD	HL,BC		;
		LD	(HL),A		;
;
		LD	A,:GET_FUKU
		LD	(PBANK),A
		LD	HL,ENWRK1
		ADD	HL,BC
		LD	A,(HL)
		LD	HL,GET_FUKU_DATA
		AND	A
		JR	NZ,GET_FK050
		LD	HL,GET_FUKU_DATA+8
GET_FK050
		LD	C,$002
		LD	A,:GET_FUKU
		CALL	FUKU_OAM_SET
		LD	A,$002
		CALL	NXOMSBL
		LD	HL,ENWRK0
		ADD	HL,BC
		LD	A,(HL)
		AND	A
		JR	Z,GET_FK_100
		CALL	ENCLER
GET_FK_100
		POP	AF
		LD	(PBANK),A
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	お助けアイテム(飛んでくる魔法の粉)			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
FLY_KONA
		LD	A,(BSINDX2)
		LD	E,A
		LD	D,$000
		LD	HL,ENMODE
		ADD	HL,DE
		LD	A,(HL)
		CP	EFAIL		;ボス爆発？
		JR	NZ,FLY_KN_500	;	NO --> FLY_KN_500
		CALL	E9CLER
		CALL	SMK_CLS
		RET
;
FLY_KN_500
		LD	A,(PBANK)
		PUSH	AF
		LD	A,:FLY_KONA
		LD	(PBANK),A
		LD	HL,FLY_KONA_DAT
		LD	C,$002
		LD	A,:FLY_KONA
		CALL	FUKU_OAM_SET
		LD	A,$002
		CALL	NXOMSBL
		POP	AF
		LD	(PBANK),A
		CALL	E9STCK		;ＳＴＯＰチェック
		LD	A,(PBANK)
		PUSH	AF
		LD	A,:FLY_KONA
		LD	(PBANK),A
;
		CALL	SADWSTL
		CALL	E9XSPD_ADR
		LD	A,(HL)
		RLCA
		RLCA
		AND	$01
		CALL	ENPTST
		CALL	E9MVCL
		CALL	HELP_ITEM_MODE
		LD	A,(PLJPFG)
		AND	A		;ジャンプしてる？
		JR	Z,FLY_KN_900	;	NO --> FLY_KN_900
		CALL	CRENPSL		;キャッチした？
		JR	NC,FLY_KN_900	;	NO --> FLY_KN_900
		CALL	HELP_ITEM_GET
FLY_KN_900
		POP	AF
		LD	(PBANK),A
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	モード別処理					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
HELP_ITEM_MODE
		LD	A,(ENSTAT2)
		RST	0
		DW	CENTER_CHECK
		DW	FUWA_FUWA
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	中心へ向かう					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CENTER_CHECK
		CALL	E9ENYPSL_ADR
		LD	A,(HL)
		CP	$050
		JR	C,CTR_CHK_900
		XOR	A
		CALL	E9XSPD_ADR
		LD	(HL),A
		CALL	E9YSPD_ADR
		LD	(HL),A
		CALL	STATINC
;
CTR_CHK_900
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ふわふわ漂う					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
FUWA_FUWA
		CALL	ENBGCKL
		CALL	LDTIM0
		RET	NZ
;
		LD	(HL),$030
		CALL	RNDSUB
		AND	$00F
		SUB	$008
		CALL	E9XSPD_ADR
		LD	(HL),A
;
		CALL	RNDSUB
		AND	$00F
		SUB	$008
		CALL	E9YSPD_ADR
		LD	(HL),A
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	お助けアイテムＧＥＴ処理			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
HELP_ITEM_GET
		CALL	E9CLER
		LD	A,$01
		LD	(SOUND2),A	;(S)
		LD	D,PMGIC
		CALL	ITEMGETS
		LD	A,$0B
		LD	(CHTRF2),A
;
		LD	HL,PWMAX
		LD	DE,TUBOCT
		LD	A,(DE)
		CP	(HL)
		JR	NC,HP_IT_900
		ADD	A,$10
		DAA
		CP	(HL)
		JR	C,HP_IT_420
		LD	A,(HL)
HP_IT_420
		LD	(DE),A
;
HP_IT_900
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	服のダンジョンの妖精					x
;x			注					x
;x			ENWRK0：ＢＧスクリーンクリアカウント	x
;x			ENWRK1：アカ、アオのどちらを選んだか	x
;x			ENWRK2：服のオブジェナンバー		x
;x			ENWRK3：服の着替えカウンター		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
FUKU_YOUSEI
		LD	HL,YOUSEI_DAT0
		LD	A,(FRCNT)
		AND	$08
		JR	Z,FUKU_YOUSEI_020
		LD	HL,YOUSEI_DAT1
FUKU_YOUSEI_020
		LD	C,$006
		LD	A,:FUKU_YOUSEI
		CALL	FUKU_OAM_SET
		LD	A,(PBANK)
		PUSH	AF
		LD	A,:FUKU_YOUSEI
		LD	(PBANK),A
		LD	A,$006
		CALL	NXOMSBL
		CALL	SADWSTL
		POP	AF
		LD	(PBANK),A
;
		LD	A,(GMMODE)
		CP	GPLAY		;ゲームモード？
		RET	NZ		;	NO --> return
		LD	A,(SBHR)
		CP	004		;フェード中？
		RET	NZ		;	YES --> return
;
		LD	A,(PBANK)
		PUSH	AF
		LD	A,:FUKU_YOUSEI
		LD	(PBANK),A
		CALL	SHRVSE		;シャッター無理矢理補正！
		POP	AF
		LD	(PBANK),A
;
		LD	E,$FE
		LD	HL,ENCONT
		ADD	HL,BC
		INC	(HL)
		LD	A,(HL)
		AND	%01000000
		JR	Z,FUKU_YOUSEI_040
		LD	E,$02
FUKU_YOUSEI_040
		CALL	E9ZSPD_ADR
		LD	(HL),E
		CALL	E9ZCLC
;
		LD	A,(PBANK)
		PUSH	AF
		LD	A,:FUKU_YOUSEI
		LD	(PBANK),A
		CALL	FUKU_YOUSEI_MODE
		POP	AF
		LD	(PBANK),A
;
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	モード別処理					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
FUKU_YOUSEI_MODE
		LD	A,(ENSTAT2)
		RST	0
FK_YOUSEI_ADR	DW	MSG_CHECK
FK_YSI_CHK_ADR	DW	OK_CHECK_WAIT
		DW	MSG_OK_CHECK
		DW	FUKU_GET_DEMO
		DW	FUKU_GET_MSG
		DW	CLOTH_CHANGE_WAIT
		DW	CLOTH_CHANGE
		DW	CLOTH_CHANGE_MSG
		DW	MSGEND_FDEND
		DW	FUKU_BG_CLS
		DW	RTN_GROUND_INIT
		DW	RTN_GROUND
;
FK_YSI_CHK	EQU	(FK_YSI_CHK_ADR-FK_YOUSEI_ADR)/2
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	プレイヤーが妖精の前に来て話はじめるかチェック	x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
MSG_CHECK
		CALL	E9XCHK
		CP	$010
		RET	NC
;
		CALL	E9YCHK
		CP	$024
		RET	NC
;
		LD	A,(PLCMKI)	;プレイヤー、上向いてる？
		CP	$002		;	NO --> return
		RET	NZ
;
		LD	HL,MSCRFG
		LD	(HL),$01
		LD	A,(KEYA2)
		AND	%00010000	;ＡキーＯＮ？
		RET	Z		;	NO --> return
;
		LD	A,$068
		CALL	MSGCH3
		XOR	A
		LD	(SBCNT),A
		LD	(SBHR),A
		LD	(POWRFG),A	;剣パワーアップフラッシュフラグ
		LD	HL,ENWRK0
		ADD	HL,BC
		LD	(HL),A
		CALL	STATINC
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	確認メッセージ表示待ち				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
OK_CHECK_WAIT
		LD	A,(MSGEFG)
		AND	A		;メッセージ表示中？
		RET	NZ		;	YES --> return
;
		LD	A,(MSANSR)	;０：アカ
		AND	A		;１：アオ
;
;					;ヨーロッパ版で
		XOR	$001		;赤と青の選択肢が逆に
;					;なった為にフラグを反転している
;
		LD	HL,ENWRK1
		ADD	HL,BC
		LD	(HL),A
		LD	E,$05D		;ほんまにアカでエエんけ！
		AND	A
		JR	Z,OK_CHK_WT_200
		LD	E,$0AE		;ほんまにアオでエエんけ！
OK_CHK_WT_200
		LD	A,E
;;;KK;;;		LD	A,$05D		;ほんまにそれでエエんけ！
		CALL	MSGCH3
		CALL	STATINC
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ＧＥＴした服が、それでいいかチェック		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
MSG_OK_CHECK
		LD	A,(MSGEFG)
		AND	A		;メッセージ表示中？
		RET	NZ		;	YES --> return
;
		LD	A,(MSANSR)	;０：ハイ
		AND	A		;１：イイエ
		JR	NZ,MSG_OK_CHK_500
		LD	HL,ENWRK1
		ADD	HL,BC
		LD	A,(HL)
		CALL	STATINC
		RET
;
MSG_OK_CHK_500
		LD	A,$05C		;やっぱ、まちがえた！（いいえの時）
		CALL	MSGCH3
		LD	A,FK_YSI_CHK
		CALL	E9ENSTAT
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	服ＧＥＴ！				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
FUKU_GET
		LD	A,:FUKU_GET_DEMO
		CALL	JYANPS_SUB
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	服もらった					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
FUKU_GET_DEMO
		LD	A,$01
		LD	(PLSTOP),A
;
		LD	A,(MSGEFG)
		AND	A		;メッセージ表示中？
		RET	NZ		;	YES --> return
;
		LD	A,$001		;チャラララ～ン!!
		LD	(SOUND1),A
		LD	A,(PLXPSL)
		LD	A,FUKU
		CALL	ENIDSHL
		LD	A,(PLXPSL)
		LD	HL,ENXPSL
		ADD	HL,DE
		LD	(HL),A
		LD	A,(PLYPSL)
		LD	HL,ENYPSL
		ADD	HL,DE
		LD	(HL),A
		LD	HL,ENWRK1
		ADD	HL,BC
		LD	A,(HL)
		LD	HL,ENWRK1
		ADD	HL,DE
		LD	(HL),A
		CALL	FUKU_GET
		LD	A,$060		;ＷＡＩＴタイマーセット
		CALL	ENTIM0_SET
		LD	HL,ENWRK2
		ADD	HL,BC
		LD	(HL),E
		CALL	STATINC
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	服もらったので、メッセージを			x
;x		表示するためのＷＡＩＴ			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
FUKU_GET_MSG
		CALL	FUKU_GET
;
		CALL	LDTIM0
		RET	NZ
;
		LD	A,$06B		;服を脱がされるーっ！（はいの時）
		CALL	MSGCH3
		CALL	STATINC
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	リンク、服を着替え待ち				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CLOTH_CHANGE_WAIT
		LD	A,$02
		LD	(PLSTOP),A
		LD	(ITEMNOT),A
		CALL	FUKU_GET
		LD	A,(MSGEFG)
		AND	A		;メッセージ表示中？
		RET	NZ		;	YES --> return
;
		LD	HL,ENWRK2
		ADD	HL,BC
		LD	(HL),$000
		CALL	STATINC
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	持ち上げた服のキャラクター・クリア	x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
HIGH_FK_CLS_DAT
	DB	$00,$08,$10,$18,$01,$09,$11,$19
	DB	$02,$0A,$12,$1A,$03,$0B,$13,$1B
	DB	$04,$0C,$14,$1C,$05,$0D,$15,$1D
	DB	$06,$0E,$16,$1E,$07,$0F,$17,$1F
;
HIGH_FUKU_CLS
		LD	A,$007
		LD	(CHTRFG),A
;
		LD	HL,ENWRK2
		ADD	HL,BC
		LD	E,(HL)
		LD	D,$000
		LD	HL,HIGH_FK_CLS_DAT
		ADD	HL,DE
		LD	E,(HL)
		LD	HL,FUKU_CHR_BUF
		ADD	HL,DE
		LD	(HL),$000
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	赤にカラーチェンジ			x
;x		戻り値				x
;x			work0：Ｒカラーデータ	x
;x			work1：Ｇカラーデータ	x
;x			work2：Ｂカラーデータ	x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CHANGE_RED
		LD	A,(WORK0)
		INC	A
		BIT	5,A
		JR	Z,CHG_RED_150
		LD	A,%00011111
CHG_RED_150
		LD	(WORK0),A
;
		LD	A,(WORK1)
		SUB	$002
		AND	A
		JR	NZ,CHG_RED_250
		LD	A,%00000010
CHG_RED_250
		LD	(WORK1),A
;
		LD	A,(WORK2)
		SUB	$004
		CP	%00010100
		JR	NC,CHG_RED_350
		LD	A,%00010100
CHG_RED_350
		LD	(WORK2),A
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	青にカラーチェンジ			x
;x		戻り値				x
;x			work0：Ｒカラーデータ	x
;x			work1：Ｇカラーデータ	x
;x			work2：Ｂカラーデータ	x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CHANGE_BLUE
		LD	A,(WORK0)
		DEC	A
		CP	%00000011
		JR	NC,CHG_BLUE_150
		LD	A,%00000011
CHG_BLUE_150
		LD	(WORK0),A
;
		LD	A,(WORK1)
		BIT	5,A
		JR	NZ,CHG_BLUE_220
		ADD	A,$002
		CP	%00100000
		JR	C,CHG_BLUE_250
		LD	A,%00100000
		JR	CHG_BLUE_250
CHG_BLUE_220
		SUB	$002
		CP	%00100000
		JR	NC,CHG_BLUE_250
		LD	A,%00100000
CHG_BLUE_250
		LD	(WORK1),A
;
		LD	A,(WORK2)
		ADD	A,$004
		BIT	7,A
		JR	Z,CHG_BLUE_180
		LD	A,%01111100
CHG_BLUE_180
		LD	(WORK2),A
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	リンク、服を着替える(カラーチェンジ)		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CLOTH_CHANGE
		LD	A,$02
		LD	(PLSTOP),A
		LD	(ITEMNOT),A
		LD	A,(FRCNT)
		AND	$003
		RET	NZ
;
		LD	HL,ENWRK2
		ADD	HL,BC
		INC	(HL)
;
		LD	HL,OBCGWK+$004	;チェンジする
		LD	A,(CLOTHFG)	;	カラーバッファアドレス
		AND	A		;
		JR	Z,CLOTH_CHG_120	;
		INC	A		;
		SWAP	A		;
		SRL	A		;
		LD	E,A		;
		LD	D,$000		;
		ADD	HL,DE		;
;
CLOTH_CHG_120
		PUSH	HL		;
		LD	A,(HL)		;ＲＧＢに分解
		AND	%00011111	;
		LD	(WORK0),A	;
		LD	A,(HLI)		;
		AND	%11100000	;
		SWAP	A		;
		LD	E,A		;
		LD	A,(HL)		;
		AND	%00000011	;
		SWAP	A		;
		OR	E		;
		LD	(WORK1),A	;
		LD	A,(HL)		;
		AND	%01111100	;
		LD	(WORK2),A	;
;
		LD	HL,ENWRK1
		ADD	HL,BC
		LD	A,(HL)
		AND	A			;青服？
		JR	NZ,CLOTH_CHG_140	;	YES --> CLOTH_CHG_140
CLOTH_CHG_130
		CALL	CHANGE_RED
		JR	CLOTH_CHG_160
CLOTH_CHG_140
		CALL	CHANGE_BLUE
;
CLOTH_CHG_160
		POP	HL
		LD	A,(WORK0)
		LD	E,A
		LD	A,(WORK1)
		AND	%00001110
		SWAP	A
		OR	E
		LD	(HLI),A
		LD	A,(WORK1)
		AND	%00110000
		SWAP	A
		LD	E,A
		LD	A,(WORK2)
		OR	E
		LD	(HL),A
;
		LD	A,OBJCOL_BITFG
		LD	(CGDMAF),A	; 転送フラグセット
;
		CALL	HIGH_FUKU_CLS
;
		LD	HL,ENWRK2
		ADD	HL,BC
		LD	A,(HL)
		CP	$020		;消えた？
		RET	NZ		;	NO --> return
;
		LD	HL,ENWRK1
		ADD	HL,BC
		LD	A,(HL)
		INC	A
		LD	(CLOTHFG),A
;
		LD	HL,ENWRK2
		ADD	HL,BC
		LD	E,(HL)
		LD	D,$000
		LD	HL,ENWRK0
		ADD	HL,DE
		LD	(HL),$001
		CALL	STATINC
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	リンク、服を着替えるメッセージ表示待ち		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CLOTH_CHANGE_MSG
;;;KK;;;		CALL	FUKU_GET
;
		LD	A,$02
		LD	(PLSTOP),A
		LD	(ITEMNOT),A
		LD	A,(MSGEFG)
		AND	A		;メッセージ表示中？
		RET	NZ		;	YES --> return
;
		XOR	A
		LD	(CHTRFG),A
		LD	E,$05B		;赤い服をもらった！
		LD	A,(CLOTHFG)
		CP	$001
		JR	Z,FK_GET_MSG_200
		LD	E,$05A		;青い服をもらった！
;
FK_GET_MSG_200
		LD	A,E
		CALL	MSGCH3
		CALL	STATINC
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	めっせーじ終了待ち＆フェードアウト終了待ち	x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
MSGEND_FDEND
;;;KK;;;		CALL	FUKU_GET
;
		LD	A,$02
		LD	(PLSTOP),A
		LD	(ITEMNOT),A
		LD	A,(MSGEFG)
		AND	A		;メッセージ表示中？
		RET	NZ		;	YES --> return
;
		LD	A,(FRCNT)
		AND	$003
		RET	NZ
;
		LD	HL,ENWRK0
		ADD	HL,BC
		PUSH	HL
		LD	A,:MSGEND_FDEND
		CALL	FUKU_WhiteOut_SUB
		POP	HL
		INC	(HL)
		LD	A,(HL)
		CP	$060
		RET	NZ
;
		XOR	A
		LD	(HL),A
;
		LD	(SCCH),A
		LD	(SCCV),A
		LD	(SCVRML),A
		LD	(SCVRMH),A
;
		LD	HL,LCDCB
		RES	5,(HL)		;Window clear !
;
		CALL	STATINC
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ＢＧスクリーンクリア				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
FUKU_BG_CLS_DAT
;0
	DB	$98,$00,$53,$7F,$98,$20,$53,$7F
;1
	DB	$98,$40,$53,$7F,$98,$60,$53,$7F
;2
	DB	$98,$80,$53,$7F,$98,$A0,$53,$7F
;3
	DB	$98,$C0,$53,$7F,$98,$E0,$53,$7F
;4
	DB	$99,$00,$53,$7F,$99,$20,$53,$7F
;5
	DB	$99,$40,$53,$7F,$99,$60,$53,$7F
;6
	DB	$99,$80,$53,$7F,$99,$A0,$53,$7F
;7
	DB	$99,$C0,$53,$7F,$99,$E0,$53,$7F
;8
	DB	$9A,$00,$53,$7F,$9A,$20,$53,$7F
;
FUKU_BG_CLS_DAT_AT
;0
	DB	$98,$00,$53,$00,$98,$20,$53,$00
;1
	DB	$98,$40,$53,$00,$98,$60,$53,$00
;2
	DB	$98,$80,$53,$00,$98,$A0,$53,$00
;3
	DB	$98,$C0,$53,$00,$98,$E0,$53,$00
;4
	DB	$99,$00,$53,$00,$99,$20,$53,$00
;5
	DB	$99,$40,$53,$00,$99,$60,$53,$00
;6
	DB	$99,$80,$53,$00,$99,$A0,$53,$00
;7
	DB	$99,$C0,$53,$00,$99,$E0,$53,$00
;8
	DB	$9A,$00,$53,$00,$9A,$20,$53,$00
;
FUKU_BG_CLS
		CALL	FUKU_GET
;
		PUSH	BC
		LD	HL,ENWRK0
		ADD	HL,BC
		LD	C,(HL)
		SLA	C
		SLA	C
		SLA	C
		LD	HL,FUKU_BG_CLS_DAT
		ADD	HL,BC
		ld	c,l
		ld	b,h
;;10/31;		PUSH	HL
;;10/31;		POP	BC
;
		LD	A,(VRAMD)
		LD	E,A
		ADD	A,$08
		LD	(VRAMD),A
		LD	D,$000
		LD	HL,VRAMD+1
		ADD	HL,DE
;
		LD	E,$08
FK_BG_CLS_050
		LD	A,(BC)
		INC	BC
		LD	(HLI),A
		DEC	E
		JR	NZ,FK_BG_CLS_050
		LD	(HL),$000
;
		POP	BC
;
		PUSH	BC
		LD	HL,ENWRK0
		ADD	HL,BC
		LD	C,(HL)
		SLA	C
		SLA	C
		SLA	C
		LD	HL,FUKU_BG_CLS_DAT_AT
		ADD	HL,BC
		ld	c,l
		ld	b,h
;;10/31;		PUSH	HL
;;10/31;		POP	BC
;
		LD	A,(VRAMD_AT)
		LD	E,A
		ADD	A,$08
		LD	(VRAMD_AT),A
		LD	D,$000
		LD	HL,VRAMD_AT+1
		ADD	HL,DE
;
		LD	E,$08
FK_BG_CLS_150
		LD	A,(BC)
		INC	BC
		LD	(HLI),A
		DEC	E
		JR	NZ,FK_BG_CLS_150
		LD	(HL),$000
;
		POP	BC
;
		LD	HL,ENWRK0
		ADD	HL,BC
		INC	(HL)
		LD	A,(HL)
		CP	(FUKU_BG_CLS_DAT_AT-FUKU_BG_CLS_DAT)/8
		RET	NZ
;
		CALL	STATINC
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	地上へと帰る前の初期設定			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
RTN_GROUND_INIT
		LD	DE,CGWORK+$008
		LD	HL,SVBK
		DI
FK_BG_CLS_250
		LD	(HL),$002		;メッセージを
		LD	A,(DE)			;表示するための
		LD	(HL),$000		;ＢＧのカラーを
		LD	(DE),A			;再セット
		INC	DE			;
		LD	A,E			;
		AND	$007			;
		JR	NZ,FK_BG_CLS_250	;
		LD	A,BGCOL_BITFG		;
		LD	(CGDMAF),A		; 転送フラグセット
		EI
;
		LD	A,$03A		;メッセージを下側に出すために
		LD	(PLYPSL),A	;リンクのポジションを変えている
;
		LD	A,$06C		;ないより・・・
		CALL	MSGCH3
		CALL	STATINC
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	プレイヤーが地上へと帰る			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
RTN_GROUND
		CALL	FUKU_GET
;
		LD	A,(MSGEFG)
		AND	A		;メッセージ表示中？
		RET	NZ		;	YES --> return
;
		CALL	ENCLER
;
		CALL	NXGOTO3
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	魔法の粉が飛んでいるかチェック				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
KONA_CHECK
		LD	A,(KINOKFG)
		AND	A		;キノコを持っている？
		RET	NZ		;	YES --> return
;
		LD	E,$000
		LD	D,E
KN_CHK_100
		LD	HL,ENMYNO
		ADD	HL,DE
		LD	A,(HL)
		CP	FLYIT
		JR	NZ,KN_CHK_160
		LD	HL,ENMODE
		ADD	HL,DE
		LD	A,(HL)
		AND	A		;その部屋にいる？
		RET	NZ		;	YES --> return
KN_CHK_160
		INC	DE
		LD	A,E
		AND	$00F
		JR	NZ,KN_CHK_100
;
		LD	A,FLYIT
		CALL	ENIDSHL
		RET	C
;
		LD	HL,ENXPSL
		ADD	HL,DE
		LD	(HL),$020
		CALL	RNDSUB
		AND	$001
		JR	Z,KN_CHK_180
		LD	(HL),$088
;
KN_CHK_180
		LD	A,(HL)
		LD	HL,ENXSPD
		ADD	HL,DE
		LD	(HL),$00C
		BIT	7,A
		JR	Z,KN_CHK_190
		LD	(HL),$0F4
;
KN_CHK_190
		LD	HL,ENYPSL
		ADD	HL,DE
		LD	(HL),$018
		LD	HL,ENYSPD
		ADD	HL,DE
		LD	(HL),$00C
;
		LD	HL,ENZPSL	;Ｚポジションセット
		ADD	HL,DE		;
		LD	(HL),$010	;
;
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	キノコチェック					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
KINOKO_CHK
		LD	A,(MSGEFG)
		AND	A		;メッセージ表示中？
		RET	NZ		;	YES --> return
		LD	A,(KINOKFG)
		AND	A		;キノコ持ってる？
		RET	Z		;	NO --> return
		LD	A,(ITEMB)
		CP	PMGIC		;Ｂボタンに持ってる？
		JR	NZ,KNK_CHK_100	;	NO --> KNK_CHK_100
		LD	A,(KEYA2)
		AND	%00100000	;Ｂボタン押された？
		RET	Z		;	NO --> return
		JR	KNK_CHK_200
KNK_CHK_100
		LD	A,(ITEMA)
		CP	PMGIC		;Ａボタンに持ってる？
		RET	NZ		;	NO --> return
		LD	A,(KEYA2)
		AND	%00010000	;Ａボタン押された？
		RET	Z		;	NO --> return
KNK_CHK_200
		LD	HL,ENLIFE
		ADD	HL,BC
		LD	(HL),$000
		LD	HL,ENMODE
		ADD	HL,BC
		LD	A,EFAIL
		LD	(HL),A
		POP	AF
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ニョロスライム						x
;x			注					x
;x			"ENWRK0"は、魔法の粉が			x
;x			かかったかどうかに　使われている!!!	x
;x			"ENWRK1"は、電撃の出る方向フラグに使用	x
;x			"ENWRK2"は、ニョロニョロの時に、	x
;x			はじめの１回、切られたかに使用		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
NYORO_SLIME
		CALL	SHRVSE		;シャッター無理矢理補正！
		LD	A,C
		LD	(BSINDX2),A
;
		CALL	NYORO_CSET
;
		LD	A,(ENMODE2)
		CP	EMOVE
		JP	NZ,HINO_OUT
;
		LD	A,(TUBOCT)
		AND	A
		JR	NZ,NYR_SLM_100
		PUSH	BC
		CALL	KONA_CHECK
		POP	BC
;
NYR_SLM_100
		CALL	BSSDCK		;ボスサウンドチェック
		CALL	ENHNCL		;跳ねかえりタイマー減算
		CALL	E9STCK		;ＳＴＯＰチェック
;
		LD	A,(ENSTAT2)
		CP	CHG_NYR
		JR	C,NYR_SLM_500
		CALL	KINOKO_CHK
;
NYR_SLM_500
		LD	A,(ENSTAT2)
		RST	0
NYR_SLM_ADR	DW	NYORO_SLIME_START
		DW	NYORO_SLIME_WAIT0
		DW	NYORO_SLIME_MSG0
CHG_NYR_ADR	DW	NOMAL_WAIT
		DW	CHANGE_NYORO
NYR_MOVE_ADR	DW	NYORO_MOVE
		DW	NYORO_DENNGEKI
CHG_SLM_ADR	DW	NOMAL_WAIT
		DW	CHANGE_SLIME
SLM_JP_ADR	DW	SLIME_JUMP
		DW	SLIME_MOVE
		DW	SLIME_GROUND
;
CHG_NYR		EQU	(CHG_NYR_ADR-NYR_SLM_ADR)/2
NYR_MV		EQU	(NYR_MOVE_ADR-NYR_SLM_ADR)/2
CHG_SLM		EQU	(CHG_SLM_ADR-NYR_SLM_ADR)/2
SLM_JP		EQU	(SLM_JP_ADR-NYR_SLM_ADR)/2
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	普通のＷＡＩＴ					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
NOMAL_WAIT
		LD	A,$01
		LD	(PLSTOP),A
		CALL	LDTIM0
		RET	NZ
		CALL	STATINC
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ファースト・アクション！			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
NYORO_SLIME_START
;;;KK;;;		CALL	E9YCHK
;;;KK;;;		CP	$040
;;;KK;;;		RET	NC
		LD	A,(SHUTFG)
		AND	A		;シャッター閉じている？
		RET	Z		;	NO--> return
;
		XOR	A
		LD	HL,ENWRK0
		ADD	HL,BC
		LD	(HL),A
;
		LD	A,$02
		LD	(PLSTOP),A
		LD	(ITEMNOT),A
		LD	A,(FRCNT)
		AND	$007
		RET	NZ
;
		CALL	ENCHPT_ADR
		INC	(HL)
		LD	A,(HL)
		CP	NYR_SLM_MV_CNT	;１アクション終わった？
		RET	C		;	NO --> return
		XOR	A
		LD	(HL),A
		LD	A,$020		;ＷＡＩＴタイマーセット
		CALL	ENTIM0_SET
		CALL	STATINC
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	最初のメッセージを表示するまでのＷＡＩＴ	x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
NYORO_SLIME_WAIT0
		LD	A,$02
		LD	(PLSTOP),A
		LD	(ITEMNOT),A
		CALL	LDTIM0
		RET	NZ
		LD	A,$061
		CALL	MSGCH3
		CALL	STATINC
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	最初のメッセージ表示中				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
NYORO_SLIME_MSG0
		LD	A,$02
		LD	(PLSTOP),A
		LD	(ITEMNOT),A
		LD	A,(MSGEFG)
		AND	A		;メッセージ表示中？
		RET	NZ		;	YES --> return
		LD	A,$020		;ＷＡＩＴタイマーセット
		CALL	ENTIM0_SET
		XOR	A
		LD	(ITEMNOT),A
		CALL	STATINC
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ニョロニョロへ変身				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CHANGE_NYORO
		LD	A,$01
		LD	(PLSTOP),A
		LD	A,(FRCNT)
		AND	$003
		RET	NZ
;
		CALL	ENCHPT_ADR
		INC	(HL)
		LD	A,(HL)
		CP	CHG_NYR_CNT	;変身終了？
		RET	NZ		;	NO --> return
;
		XOR	A
		LD	(HL),A
;;;KK;;;		LD	HL,ENMOD2
;;;KK;;;		ADD	HL,BC
;;;KK;;;		LD	(HL),$033
		CALL	STATINC
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ニョロニョロ動く				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
NYR_MV_YSPD
	DB	$FA,$FC
;
NYR_MV_XSPD
	DB	$00,$04,$06,$04,$00,$FC,$FA,$FC
;
NYORO_SLIME_SIZE
	DB	$01C,$010
;
;
NYORO_MOVE
		LD	A,(MSGEFG)
		AND	A		;メッセージ表示中？
		RET	NZ		;	YES --> return
;
		LD	HL,ENWRK0
		ADD	HL,BC
		LD	A,(HL)
		AND	A		;魔法の粉がかかった？
		JR	Z,NYR_MV_100	;	NO --> NYR_MV_100
		CALL	ENCHPT_ADR
		LD	A,(HL)
		AND	$001		;直立ポーズ？
		JR	NZ,NYR_MV_100	;	NO --> NYR_MV_100
		LD	(HL),A
		CALL	E9XSPD_ADR
		LD	(HL),A
		CALL	E9YSPD_ADR
		LD	(HL),A
		LD	HL,ENWRK2
		ADD	HL,BC
		LD	(HL),$001	;初めて切られたフラグＯＮ
		LD	A,$020		;ＷＡＩＴタイマーセット
		CALL	ENTIM0_SET
		LD	A,CHG_SLM	;スライムへ変身
		CALL	E9ENSTAT
		RET
;
NYR_MV_100
		CALL	LDTIM0
		JR	NZ,NYR_MV_500
;
		CALL	RNDSUB
		AND	$3F
		ADD	A,$30
		LD	(HL),A
;
		AND	$07
		LD	E,A
		LD	D,B
		LD	HL,NYR_MV_XSPD
		ADD	HL,DE
		LD	A,(HL)
		CALL	E9XSPD_ADR
		LD	(HL),A
		LD	HL,NYR_MV_YSPD
		ADD	HL,DE
		LD	A,(HL)
		CALL	E9YSPD_ADR
		LD	(HL),A
;
NYR_MV_500
		CALL	E9MVCL
		LD	DE,NYORO_SLIME_SIZE
		CALL	E9BGCK_BOSS
;
		LD	HL,ENSTAT
		ADD	HL,BC
		LD	E,(HL)
		LD	HL,ENLIFE
		ADD	HL,BC
		LD	D,(HL)
		PUSH	DE
		LD	(HL),$00F	;ダミー体力セット
		CALL	CREPKEL
		POP	DE
		LD	HL,ENLIFE	;体力を
		ADD	HL,BC		;	元に戻す
		LD	(HL),D		;
		LD	HL,ENSTAT
		ADD	HL,BC
		LD	(HL),E
		LD	HL,ENMODE
		ADD	HL,BC
		LD	(HL),$005
;
		LD	HL,ENFLSH
		ADD	HL,BC
		LD	A,(HL)
		AND	A
		JR	Z,NYR_MV_600
		XOR	A
		LD	(HL),A
		LD	HL,ENHNFG
		ADD	HL,BC
		LD	(HL),A
		LD	A,(KENON)
		LD	HL,(PCUTFG)
		OR	(HL)
		LD	HL,BUMEFG
		OR	(HL)
		AND	A		;剣を振ったか？
		JR	NZ,NYR_MV_550	;	YES --> NYR_MV_550
		LD	HL,ENWRK0
		ADD	HL,BC
		LD	(HL),$001
		JR	NYR_MV_600
;
NYR_MV_550
		LD	HL,ENWRK2
		ADD	HL,BC
		LD	A,(HL)
		AND	A		;初めて切られたか？
		JR	NZ,NYR_MV_580	;	NO --> NYR_MV_580
		LD	(HL),$001
		LD	A,$069		;"剣などきかぬ！"
		CALL	MSGCH3
;
NYR_MV_580
		LD	A,$010		;ぐえ！剣がきかね～
		LD	(HANEFG),A	;プレイヤー弾かれる！
		LD	A,$020		;
		CALL	PSERCH2L	;
		LD	A,(WORK0)	;
		LD	(PLYSPD),A	;
		LD	A,(WORK1)	;
		LD	(PLXSPD),A	;
;
NYR_MV_600
		LD	A,(FRCNT)
		AND	$00F
		RET	NZ
;
		CALL	ENCHPT_ADR
		INC	(HL)
		LD	A,(HL)
		CP	NYR_MV_CNT
		RET	NZ
;
		XOR	A
		LD	(HL),A
;
		CALL	RNDSUB
		AND	$003
		RET	NZ
		CALL	STATINC		;電撃攻撃へ
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	稲妻発生				x
;x	データフォーマット			x
;x	DB	$000,$000,$000,$000,$000	x
;x		  |    |    |    |    +--> パターンナンバー
;x		  |    |    |    +-------> Ｙスピード
;x		  |    |    +------------> Ｙ軸のオフセット位置
;x		  |    +-----------------> Ｘスピード
;x		  +----------------------> Ｘ軸のオフセット位置
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
INAZUMA_DAT0					;十字方向
	DB	$0F8,$000,$0E0,$0F4,$002	;上
	DB	$010,$00C,$0FC,$000,$006	;右
	DB	$0F8,$000,$012,$00C,$002	;下
	DB	$0E0,$0F4,$0FC,$000,$006	;左
;
INAZUMA_DAT1					;×方向
	DB	$010,$00C,$0E2,$0F4,$000	;右上
	DB	$010,$00C,$010,$00C,$004	;右下
	DB	$0E0,$0F4,$010,$00C,$000	;左下
	DB	$0E0,$0F4,$0E2,$0F4,$004	;左上
;
;
MAKE_INAZUMA
		LD	HL,ENWRK1
		ADD	HL,BC
		INC	(HL)
		LD	A,(HL)
		LD	HL,INAZUMA_DAT0
		AND	$001
		JR	NZ,MK_INZM_200
		LD	HL,INAZUMA_DAT1
;
MK_INZM_200
		CALL	MK_INZM
		CALL	MK_INZM
		CALL	MK_INZM
;
MK_INZM
		PUSH	HL
		LD	A,HINOIWA
		CALL	ENIDSHL
		POP	HL
		RET	C
;
		PUSH	HL
		LD	HL,ENSTAT
		ADD	HL,DE
		LD	(HL),$002
;
		CALL	E9ENXPSL_ADR	;Ｘポジションセット
		LD	A,(HL)		;
		POP	HL		;
		ADD	A,(HL)		;
		INC	HL		;
		PUSH	HL		;
		LD	HL,ENXPSL	;
		ADD	HL,DE		;
		LD	(HL),A		;
;
		POP	HL		;Ｘスピードセット
		LD	A,(HLI)		;
		PUSH	HL		;
		LD	HL,ENXSPD	;
		ADD	HL,DE		;
		LD	(HL),A		;
;
		CALL	E9ENYPSL_ADR	;Ｙポジションセット
		LD	A,(HL)		;
		POP	HL		;
		ADD	A,(HL)		;
		INC	HL		;
		PUSH	HL		;
		LD	HL,ENYPSL	;
		ADD	HL,DE		;
		LD	(HL),A		;
;
		POP	HL		;Ｙスピードセット
		LD	A,(HLI)		;
		PUSH	HL		;
		LD	HL,ENYSPD	;
		ADD	HL,DE		;
		LD	(HL),A		;
;
		POP	HL		;パターンナンバーセット
		LD	A,(HLI)		;
		PUSH	HL		;
		LD	HL,ENCHPT	;
		ADD	HL,DE		;
		LD	(HL),A		;
		LD	HL,ENWRK0	;
		ADD	HL,DE		;
		LD	(HL),A		;
;
		LD	HL,ENMOD0
		ADD	HL,DE
		LD	(HL),%00010010
;
		LD	HL,ENMOD1
		ADD	HL,DE
		SET	7,(HL)
		POP	HL
;
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ニョロニョロ電撃攻撃				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
NYORO_DENNGEKI
		LD	A,(FRCNT)
		AND	$003
		RET	NZ
;
		CALL	ENCHPT_ADR
		INC	(HL)
		LD	A,(HL)
		CP	NYR_ATK_CNT
		JR	Z,NYR_ATK_500
		AND	$001
		RET	Z
;
		CALL	MAKE_INAZUMA
		RET
;
NYR_ATK_500
		XOR	A
		LD	(HL),A
		LD	A,NYR_MV
		CALL	E9ENSTAT
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	スライムへ変身					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CHANGE_SLIME
		LD	A,(FRCNT)
		AND	$003
		RET	NZ
;
		CALL	ENCHPT_ADR
		INC	(HL)
		LD	A,(HL)
		CP	CHG_SLM_CNT	;変身終了？
		RET	NZ		;	NO --> return
;
		XOR	A
		LD	(HL),A
;;;KK;;;		LD	HL,ENMOD2
;;;KK;;;		ADD	HL,BC
;;;KK;;;		LD	(HL),$034
		CALL	STATINC
		LD	A,$0F0		;ＷＡＩＴタイマーセット
		CALL	ENTIM0_SET
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	スライム中のＢＧ＆切られチェック	x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
BGCK_KENCROSS
		LD	DE,NYORO_SLIME_SIZE
		CALL	E9BGCK_BOSS
		CALL	CREPKEL
		LD	HL,ENFLSH
		ADD	HL,BC
		LD	A,(HL)
		AND	A		;フラッシングしてる？
		RET	Z		;	NO --> return
;;;KK;;;		CALL	ENHNCL
		LD	HL,ENHNFG
		ADD	HL,BC
		LD	A,(HL)
		AND	A		;フラッシングタイマー切れた？
		RET	NZ		;	NO --> return
		CALL	ENCHPT_ADR
		LD	A,(HL)
		AND	A		;パターンナンバー"０"？
		RET	NZ		;	NO --> return
		LD	(HL),A
		LD	HL,ENFLSH
		ADD	HL,BC
		LD	(HL),A
RETURN_NYORO
		XOR	A
		LD	HL,ENHNFG
		ADD	HL,BC
		LD	(HL),A
		LD	HL,ENWRK0
		ADD	HL,BC
		LD	(HL),A
		LD	A,$020		;ＷＡＩＴタイマーセット
		CALL	ENTIM0_SET
		LD	A,CHG_NYR	;ニョロニョロへ変身
		CALL	E9ENSTAT
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	スライム ジャンプ前				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
SLIME_JUMP
		LD	A,(FRCNT)
		AND	$007
		JR	NZ,SLM_JP_900
		CALL	ENCHPT_ADR
		INC	(HL)
		LD	A,(HL)
		CP	$002
		JR	NZ,SLM_JP_900
		LD	A,$008		;移動スピード
		CALL	PSERCHL		;
		CALL	E9ZSPD_ADR
		LD	(HL),$020
		CALL	STATINC
SLM_JP_900
		CALL	BGCK_KENCROSS
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	スライムジャンプ移動中				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
SLIME_MOVE
		CALL	E9MVCL
		CALL	E9ZCLC
		CALL	E9ZSPD_ADR
		DEC	(HL)
		CALL	E9ENZPSL_ADR
		LD	A,(HL)
		BIT	7,A
		RET	Z
;
		CALL	ENCHPT_ADR
		INC	(HL)
		CALL	STATINC
		RET
;
;;;KK;;;SLIME_MOVE
;;;KK;;;		CALL	LDTIM0
;;;KK;;;		JR	NZ,SLM_MV_100
;;;KK;;;		CALL	ENCHPT_ADR
;;;KK;;;		LD	A,(HL)
;;;KK;;;		AND	A
;;;KK;;;		JR	NZ,SLM_MV_100
;;;KK;;;		LD	(HL),A
;;;KK;;;		CALL	RETURN_NYORO
;;;KK;;;		RET
;;;KK;;;;
;;;KK;;;SLM_MV_100
;;;KK;;;		LD	A,(FRCNT)
;;;KK;;;		AND	$007
;;;KK;;;		JR	NZ,SLM_MV_200
;;;KK;;;		CALL	ENCHPT_ADR
;;;KK;;;		INC	(HL)
;;;KK;;;		LD	A,(HL)
;;;KK;;;		CP	SLM_MV_CNT
;;;KK;;;		JR	NZ,SLM_MV_200
;;;KK;;;		XOR	A
;;;KK;;;		LD	(HL),A
;;;KK;;;;
;;;KK;;;SLM_MV_200
;;;KK;;;		LD	A,$004		;移動スピード
;;;KK;;;		CALL	PSERCHL		;
;;;KK;;;;
;;;KK;;;		CALL	E9MVCL
;;;KK;;;;
;;;KK;;;		CALL	BGCK_KENCROSS
;;;KK;;;		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	スライム着地					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
SLIME_GROUND
		LD	A,(FRCNT)
		AND	$007
		JR	NZ,SLM_GD_100
		CALL	ENCHPT_ADR
		INC	(HL)
		LD	A,(HL)
		CP	SLM_MV_CNT
		JR	NZ,SLM_GD_100
		XOR	A
		LD	(HL),A
		LD	A,SLM_JP	;ジャンプへ
		CALL	E9ENSTAT
		CALL	LDTIM0
		JR	NZ,SLM_GD_100
		CALL	RETURN_NYORO
;
SLM_GD_100
		CALL	BGCK_KENCROSS
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ニョロスライムのＯＡＭセット				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
NYORO_SLM_MOVE
	DW	NYORO_SLM_DAT0,NYORO_SLM_DAT1,NYORO_SLM_DAT2
	DW	NYORO_SLM_DAT1
;
CHG_NYORO_DATA
	DW	NYORO_SLM_DAT0,NYORO_SLM_DAT1,NYORO_SLM_DAT2
	DW	NYORO_SLM_DAT1,NYORO_SLM_DAT0,NYORO_SLM_DAT1
	DW	NYORO_SLM_DAT2,NYORO_SLM_DAT1,NYORO_SLM_DAT0
	DW	NYORO_SLM_DAT1,NYORO_SLM_DAT4
;
NYORO_MOVE_DATA
	DW	NYORO_SLM_DAT4,NYORO_SLM_DAT5,NYORO_SLM_DAT4
	DW	NYORO_SLM_DAT6
;
NYORO_ATTACK_DATA
	DW	NYORO_SLM_DAT4,NYORO_SLM_DAT7,NYORO_SLM_DAT4
;
CHG_SLIME_DATA
	DW	NYORO_SLM_DAT4,NYORO_SLM_DAT1,NYORO_SLM_DAT0
	DW	NYORO_SLM_DAT1,NYORO_SLM_DAT2,NYORO_SLM_DAT1
	DW	NYORO_SLM_DAT0
;
SLIME_MOVE_DATA
	DW	NYORO_SLM_DAT0,NYORO_SLM_DAT1,NYORO_SLM_DAT2
	DW	NYORO_SLM_DAT1
;
NYR_SLM_DATA
;
NYR_SLM_MV_CNT	EQU	(CHG_NYORO_DATA-NYORO_SLM_MOVE)/2
CHG_NYR_CNT	EQU	(NYORO_MOVE_DATA-CHG_NYORO_DATA)/2
NYR_MV_CNT	EQU	(NYORO_ATTACK_DATA-NYORO_MOVE_DATA)/2
NYR_ATK_CNT	EQU	(CHG_SLIME_DATA-NYORO_ATTACK_DATA)/2
CHG_SLM_CNT	EQU	(SLIME_MOVE_DATA-CHG_SLIME_DATA)/2
SLM_MV_CNT	EQU	(NYR_SLM_DATA-SLIME_MOVE_DATA)/2
;
NYORO_SLIME_DATA
	DW	NYORO_SLM_MOVE,NYORO_SLM_MOVE
	DW	NYORO_SLM_MOVE,NYORO_SLM_MOVE
	DW	CHG_NYORO_DATA,NYORO_MOVE_DATA
	DW	NYORO_ATTACK_DATA,NYORO_ATTACK_DATA
	DW	CHG_SLIME_DATA,SLIME_MOVE_DATA
	DW	SLIME_MOVE_DATA,SLIME_MOVE_DATA
;
;
NYORO_CSET
		LD	D,$000
		LD	A,(ENSTAT2)
		SLA	A
		LD	E,A
		LD	HL,NYORO_SLIME_DATA
		CALL	HL_RT_SET
		PUSH	HL
		CALL	ENCHPT_ADR
		LD	E,(HL)
		SLA	E
		POP	HL
		CALL	HL_RT_SET
		LD	C,$006
		LD	A,:NYORO_CSET
		CALL	FUKU_OAM_SET		;ＯＡＭセット
		LD	A,$006
		CALL	NXOMSBL
;
		LD	HL,ENMOD0	;影
		ADD	HL,BC
		LD	A,(HL)
		PUSH	AF
		OR	%00010000
		LD	(HL),A
		PUSH	HL
		CALL	SADWSTL
		POP	HL
		POP	AF
		LD	(HL),A
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	服のダンジョンについて書いてある本			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
FUKU_BOOK_DAT0
		DB	$58,$02
;
FUKU_BOOK_DAT1
		DB	$5A,$00,$5A,$20
;
FUKU_BOOK
		LD	A,(ENCHPT2)
		AND	A
		JR	Z,FUKU_BK_050
		LD	DE,FUKU_BOOK_DAT1-4
		CALL	EN2CST
		JR	FUKU_BK_100
;
FUKU_BK_050
		LD	DE,FUKU_BOOK_DAT0
		CALL	EN1CST
;
FUKU_BK_100
		LD	A,(ENSTAT2)
		RST	0
FKBK_ADDRESS	DW	FKBK_RAKKA
		DW	FKBK_BOUND
		DW	FKBK_BOUND
FKBK_RDCHK	DW	FKBK_READ_CHECK
		DW	FKBK_README
		DW	FKBK_DISP
;
FKBK_RDCK	EQU	(FKBK_RDCHK-FKBK_ADDRESS)/2
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	本棚の上から落ちるかチェック			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
FKBK_RAKKA
		LD	A,(TILTCT)
		AND	A
		JR	Z,FKBK_RK_900
		CP	$005
		JR	NC,FKBK_RK_900
		CALL	E9YSPD_ADR	;Ｙスピードセット
		LD	(HL),$014
		CALL	E9ZSPD_ADR	;落下初期スピードセット
		LD	(HL),$010	;
		CALL	STATINC
;
FKBK_RK_900
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	バウンド					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
FKBK_BOUND
		CALL	E9MVCL
		CALL	E9ZCLC
;
		LD	A,(FRCNT)
		AND	$001
		JR	Z,FKBK_BND_150
		CALL	E9YSPD_ADR
		LD	A,(HL)
		AND	A
		JR	Z,FKBK_BND_150
		DEC	(HL)
FKBK_BND_150
		CALL	E9ZSPD_ADR
		DEC	(HL)
		CALL	E9ENZPSL_ADR
		LD	A,(HL)
		BIT	7,A
		JR	Z,FKBK_BND_900
		XOR	A
		LD	(HL),A
		CALL	E9ZSPD_ADR	;バウンドスピードセット
		LD	(HL),$010	;
		CALL	STATINC
;
FKBK_BND_900
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	本を読むか読まないかチェック			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
FKBK_READ_CHECK
		LD	A,(MSGEFG)
		AND	A		;メッセージ表示中？
		JR	NZ,FKBK_RD_900	;	YES --> FKBK_RD_900
;
		CALL	E9XCHK
		CP	$007
		JR	NC,FKBK_RD_900
		CALL	E9YCHK
		CP	$00B
		JR	NC,FKBK_RD_900
		LD	A,(PLCMKI)
		CP	$002
		JR	NZ,FKBK_RD_900
;
		LD	HL,MSCRFG
		LD	(HL),$01
;
		LD	A,(KEYA2)
		AND	%00010000	;ＡキーＯＮ？
		JR	Z,FKBK_RD_900	;	NO --> FKBK_RD_900
;
		LD	A,$066
		CALL	MSGCH3
		CALL	STATINC
;
FKBK_RD_900
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	本の内容を読むか読まないかチェック		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
FKBK_README
		LD	A,(MSGEFG)
		AND	A		;メッセージ表示中？
		RET	NZ		;	YES --> return
;
		LD	A,(MSANSR)	;０：ＹＥＳ
		AND	A		;１：ＮＯ
		JR	NZ,FKBK_ME_800
		CALL	PTN_0_1_CHG
		LD	A,$067
		CALL	MSGCH3
		CALL	STATINC
		JR	FKBK_ME_900
;
FKBK_ME_800
		LD	A,FKBK_RDCK
		CALL	E9ENSTAT
FKBK_ME_900
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	本を読んでいる					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
FKBK_DISP
		LD	A,(MSGEFG)
		AND	A		;メッセージ表示中？
		JR	NZ,FKBK_DP_900	;	YES --> FKBK_DP_900
		CALL	PTN_0_1_CHG
		LD	A,FKBK_RDCK
		CALL	E9ENSTAT
FKBK_DP_900
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	門番兵							x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
MONBAN_HEI
		PUSH	BC
		SLA	C
		SLA	C
		LD	HL,ENOJSZ
		ADD	HL,BC
		INC	HL
		INC	HL
		LD	A,$006
		LD	(HLI),A
		LD	(HLI),A
		POP	BC
;
		LD	HL,ENLIFE
		ADD	HL,BC
		LD	(HL),$FF
		CALL	MONBAN_CSET
;
		LD	A,(MSGEFG)
		AND	A
		JR	NZ,MONBAN_100
		CALL	M9CROS
		CALL	CRENPSL
;
MONBAN_100
		XOR	A
		LD	HL,ENFLSH
		ADD	HL,BC
		LD	(HL),A
		LD	HL,ENHNFG
		ADD	HL,BC
		LD	(HL),A
;
		LD	A,(GMMODE)
		CP	GPLAY
		RET	NZ
;
		LD	A,(MSGEFG)
		AND	A		;表示中？
		RET	NZ
;
MONBAN_600
		LD	A,(ENSTAT2)
		RST	0
MONBAN_ADR	DW	MSG_DISP_WAIT
		DW	MSG_DISP
		DW	DISP_CLOSE_WAIT
MOV_MONBAN	DW	MOVE_MONBAN
OP_LOAD		DW	OPEN_LOAD
CENTER_MV	DW	CENTER_MOVE
;
MOV_MNBN	EQU	(MOV_MONBAN-MONBAN_ADR)/2
OP_LD		EQU	(OP_LOAD-MONBAN_ADR)/2
CNTR_MV		EQU	(CENTER_MV-MONBAN_ADR)/2
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	相手が動いたかチェック			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
OTHER_MOVE
		LD	HL,ENMYNO
		ADD	HL,BC
		LD	A,(HL)
		XOR	$001
;
		LD	DE,$0FFFF
OTHER_100
		INC	DE
		LD	HL,ENMYNO
		ADD	HL,DE
		CP	(HL)
		JR	NZ,OTHER_100
		LD	HL,ENSTAT
		ADD	HL,DE
		LD	A,(HL)
		CP	MOV_MNBN
		RET	NZ
;
		LD	HL,ENMYNO
		ADD	HL,BC
		LD	A,(HL)
		CALL	E9XSPD_ADR
		LD	(HL),$0FA
		AND	$001
		JR	NZ,OTHER_250
		LD	(HL),$006
OTHER_250
;;;KK;;;		CALL	E9MUKI_ADR
;;;KK;;;		XOR	$001
;;;KK;;;		LD	(HL),A
		LD	A,$004
		CALL	ENPTST
		LD	A,$01
		LD	(PLSTOP),A
		LD	A,CNTR_MV
		CALL	E9ENSTAT
		POP	AF
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	メッセージ表示キー入力待ち			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
MSG_DISP_WAIT
		CALL	OTHER_MOVE
;
		CALL	E9XCHK
		CP	$004
		JR	NC,MSG_WAIT_200
		CALL	E9YCHK
		CP	$00B
		JR	NC,MSG_WAIT_200
		LD	A,E
		AND	$004
		JR	Z,MSG_WAIT_200
;
		LD	HL,MSCRFG
		LD	(HL),$01
;
		LD	A,(KEYA2)
		AND	%00010000	;ＡキーＯＮ？
		JR	Z,MSG_WAIT_200	;	NO --> MSG_WAIT_200
;
		LD	HL,ENWRK0
		ADD	HL,BC
		LD	A,$001
		LD	(HL),A
		LD	E,$060		;色が、わかる？・・・
		LD	A,(CGBFLG)
		AND	A
		JR	NZ,MSG_WAIT_180
		LD	A,$062		;う～ん、ごめんね・・・
		CALL	MSGCH3
		JR	MSG_WAIT_200
MSG_WAIT_180
		LD	A,E
		CALL	MSGCH3
		CALL	STATINC
;
MSG_WAIT_200
		LD	A,(FRCNT)
		SWAP	A
		AND	$01
		CALL	ENPTST
;
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	メッセージ表示中				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
MSG_DISP
		LD	A,(ENMYNO2)
		SUB	R_TUCHI
;
;					;ヨーロッパ版で
		XOR	$001		;赤と青の選択肢が逆に
;					;なった為にフラグを反転している
;
		LD	E,A
		LD	A,(MSANSR)	;０：赤 | １：青 | ２：キャンセル
		CP	E		;
		JR	NZ,MSG_DISP_400
		LD	A,$064		;うそつき・・・
		CALL	MSGCH3
		CALL	STATINC
		RET
;
MSG_DISP_400
		CALL	E9XSPD_ADR
		LD	(HL),$0FA
		LD	A,E
		AND	A
;;11/19;;		JR	Z,MSG_DISP_250
		JR	NZ,MSG_DISP_250		;ヨーロッパ版で変更した
		LD	A,(HL)
		CPL
		INC	A
		LD	(HL),A
MSG_DISP_250
;;;KK;;;		CALL	E9MUKI_ADR
;;;KK;;;		LD	A,E
;;;KK;;;		XOR	$001
;;;KK;;;		LD	(HL),A
		LD	A,$002
		CALL	ENPTST
;;;KK;;;		LD	A,$020
;;;KK;;;		CALL	ENTIM0_SET
		LD	A,$065		;とおっても、いいよ
		CALL	MSGCH3
		LD	A,MOV_MNBN
		CALL	E9ENSTAT
;
MSG_DISP_900
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	メッセージ表示中後ウィンドＣＬＯＳＥ待ち	x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
DISP_CLOSE_WAIT
		XOR	A
		CALL	E9ENSTAT
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	門番兵の移動 (道を開ける)			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
MOVE_MONBAN
		LD	A,$02
		LD	(PLSTOP),A
		LD	(ITEMNOT),A
;
		CALL	E9ENXPSL_ADR
		LD	E,$5F		;墓の門番がどいた後（青）
		LD	A,(HL)
		CP	$03C
		JR	Z,MV_MNBN_150
		LD	E,$5E		;墓の門番がどいた後（赤）
		CP	$063
		JR	NZ,MV_MNBN_200
MV_MNBN_150
		LD	A,(GMMODE)
		CP	GPLAY
		JR	NZ,MV_MNBN_200
		XOR	A
		LD	(ITEMNOT),A
		LD	A,E
		CALL	MSGCH3
		CALL	STATINC
		RET
;
MV_MNBN_200
		CALL	E9MVCL
		CALL	ENCHPT_ADR
		LD	A,(FRCNT)
		SRL	A
		SRL	A
		SRL	A
		AND	$01
		XOR	(HL)
		LD	(HL),A
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	道を開けている					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
OPEN_LOAD
		LD	A,(FRCNT)
		SWAP	A
		AND	$01
		CALL	ENPTST
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	通路の真中へ歩く				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CENTER_MOVE
;;;KK;;;		LD	A,$01
;;;KK;;;		LD	(PLSTOP),A
;
		CALL	E9ENXPSL_ADR
		LD	A,(HL)
		CP	$050
		JR	NZ,MV_MNBN_200
;
		XOR	A
		CALL	E9ENSTAT
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	門番兵のＯＡＭセット				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
R_MONBAN_DAT
	DB	$040,$003,$042,$003
	DB	$042,$023,$040,$023
	DB	$048,$003,$04A,$003
	DB	$04C,$003,$04E,$003
	DB	$04A,$023,$048,$023
	DB	$04E,$023,$04C,$023
;
L_MONBAN_DAT
	DB	$040,$002,$042,$002
	DB	$042,$022,$040,$022
	DB	$04A,$022,$048,$022
	DB	$04E,$022,$04C,$022
	DB	$048,$002,$04A,$002
	DB	$04C,$002,$04E,$002
;
;
MONBAN_DAT
	DW	R_MONBAN_DAT,L_MONBAN_DAT
;
MONBAN_CSET
		LD	D,$000
		LD	A,(ENMYNO2)
		SUB	R_TUCHI
		SLA	A
		LD	E,A
		LD	HL,MONBAN_DAT
		ADD	HL,DE
		LD	E,(HL)
		INC	HL
		LD	D,(HL)
		CALL	EN2CST
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ラスト・ボスの骨投げ攻撃				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
HONE_ATTACK_DATA
	DB	$040,$001,$040,$021
	DB	$042,$001,$042,$021
;
HONE_ATTACK
		LD	DE,HONE_ATTACK_DATA
		CALL	EN2CST
;
		CALL	E9STCK
		CALL	ENHNCL
		CALL	CREPKEL
		CALL	E9MVCL
		CALL	PTN8_CHG	;８フレームパターンチェンジ
;
		JP	HINO_IWA_800
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ニョロニョロの電撃攻撃					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
NYR_ATTACK_DAT
	DB	$074,$001,$076,$001
	DB	$074,$004,$076,$004
;
	DB	$070,$001,$072,$001
	DB	$070,$004,$072,$004
;
	DB	$076,$021,$074,$021
	DB	$076,$024,$074,$024
;
	DB	$078,$001,$07A,$001
	DB	$078,$004,$07A,$004
;
;
NYR_ATTACK
		LD	DE,NYR_ATTACK_DAT
		CALL	EN2CST
;
		CALL	E9STCK
		CALL	ENHNCL
		CALL	CREPKEL
		CALL	E9MVCL
;
		LD	HL,ENWRK0
		ADD	HL,BC
		LD	A,(FRCNT)
		AND	$004
		SRL	A
		SRL	A
		OR	(HL)
		CALL	ENCHPT_ADR
		LD	(HL),A
;
		JP	HINO_IWA_800
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ヒノックスゴーレムの岩					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
HINO_IWA_DAT
		DB	$06C,$007,$06E,$007
		DB	$06E,$027,$06C,$027
		DB	$06E,$067,$06C,$067
		DB	$06C,$047,$06E,$047
;
HINO_IWGXSD
	DB	$0C,$F4,$05,$FB
HINO_IWGYSD
	DB	$08,$0A,$06,$0C
HINO_IWGZSD
	DB	$18,$20,$1C,$28
;
;
HINO_IWA
		LD	A,(BSINDX2)
		LD	E,A
		LD	D,$000
		LD	HL,ENMODE
		ADD	HL,DE
		LD	A,(HL)
		CP	EFAIL		;ボス爆発？
		JR	NZ,HINO_IWA_100	;	NO --> HINO_IWA_100
		CALL	E9CLER
		CALL	SMK_CLS
;
HINO_IWA_100
		LD	A,(ENSTAT2)
		BIT	1,A		;ニョロニョロの攻撃？
		JR	NZ,NYR_ATTACK	;	YES --> NYR_ATTACK
;
		BIT	2,A		;ラスト・ボスの攻撃？
		JP	NZ,HONE_ATTACK	;	YES --> HONE_ATTACK
;
		LD	DE,HINO_IWA_DAT
		CALL	EN2CST
;
		CALL	E9STCK
		CALL	ENHNCL
		CALL	CREPKEL
;
		LD	A,(FRCNT)
		RRA
		RRA
		RRA
		AND	$03
		CALL	ENPTST
;
		CALL	E9MVCL
		LD	A,(ENSTAT2)
		BIT	3,A		;ヒノックスゴーレムが投げた岩？
		JR	NZ,HINO_IWA_800	;	YES --> HINO_IWA_800
;
		CALL	E9ZCLC
		CALL	SADWSTL
;
		CALL	E9ZSPD_ADR
		DEC	(HL)
		DEC	(HL)
;
		CALL	E9ENZPSL_ADR
		LD	A,(HL)
		AND	%10000000
		JR	Z,HINO_IWA_800
		LD	(HL),B
;
		CALL	RNDSUB
		AND	$03
		LD	E,A
		LD	D,B
		LD	HL,HINO_IWGXSD
		ADD	HL,DE
		LD	A,(HL)
		CALL	E9XSPD_ADR
		LD	(HL),A
;
		CALL	RNDSUB
		AND	$03
		LD	E,A
		LD	D,B
		LD	HL,HINO_IWGYSD
		ADD	HL,DE
		LD	A,(HL)
		CALL	E9YSPD_ADR
		LD	(HL),A
;
		CALL	RNDSUB
		AND	$03
		LD	E,A
		LD	D,B
		LD	HL,HINO_IWGZSD
		ADD	HL,DE
		LD	A,(HL)
		CALL	E9ZSPD_ADR
		LD	(HL),A
;
		LD	A,$20
		LD	(SOUND1),A	;(S)	
HINO_IWA_800
		LD	A,(ENSVXL)
		CP	$A8
		JP	NC,E9CLER
;
		LD	A,(ENDSYP)
		CP	$84
		JP	NC,E9CLER
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ヒノックス(ゴーレムバージョン)				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
BLOCK_HINO
		CALL	SHRVSE		;シャッター無理矢理補正！
		LD	A,C
		LD	(BSINDX2),A
		CALL	BLK_HINO_CSET
		CALL	SADWSTL
;
		LD	A,(ENMODE2)
		CP	EMOVE
		JR	NZ,HINO_OUT
;
		CALL	BSSDCK		;ボスサウンドチェック
		CALL	E9STCK		;ＳＴＯＰチェック
;
		LD	A,(SHUTFG)
		AND	A		;シャッター閉じている？
		RET	Z		;	NO--> return
;
		LD	HL,ENFLSH
		ADD	HL,BC
		LD	A,(HL)
		AND	A
		JR	NZ,BLK_HINO_500
		XOR	A
		LD	HL,ENHNFG
		ADD	HL,BC
		LD	(HL),A
;
BLK_HINO_500
		LD	A,(ENSTAT2)
		RST	0
BLK_HINO_ADR	DW	BLK_TIME_SET
		DW	NOMAL_WAIT
		DW	BLK_MSGON
BLK_STOP	DW	BLK_HINO_STOP
		DW	BLK_HINO_GO
		DW	BLK_HINO_BACK
BLK_SIDE	DW	BLK_HINO_SIDE_GO
		DW	BLK_HINO_SIDE_BACK
BLK_IKARI	DW	BLK_HINO_IKARI
BLK_JITABATA	DW	BLK_HINO_JITANDA
BLK_PANCHI	DW	BLK_HINO_PANCHI
;
HINO_STOP	EQU	(BLK_STOP-BLK_HINO_ADR)/2
HINO_SIDE	EQU	(BLK_SIDE-BLK_HINO_ADR)/2
HINO_IKARI	EQU	(BLK_IKARI-BLK_HINO_ADR)/2
HINO_JTBT	EQU	(BLK_JITABATA-BLK_HINO_ADR)/2
HINO_PANCHI	EQU	(BLK_PANCHI-BLK_HINO_ADR)/2
;
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	倒された！処理					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
HINO_OUT
		LD	HL,ENWRK4
		ADD	HL,BC
		LD	A,(HL)
		RST	00
		DW	HINO_OUT1000
		DW	HINO_OUT1800
		DW	HINO_OUT2000
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	倒されたのでフラッシングの初期設定	x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
HINO_OUT1000
		CALL	LDTIM0
		LD	(HL),$A0
;
		LD	HL,ENFLSH
		ADD	HL,BC
		LD	(HL),$FF
;
INCWRK4
		LD	HL,ENWRK4
		ADD	HL,BC
		INC	(HL)
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	倒されたのでフラッシング中		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
HINO_OUT1800
		CALL	LDTIM0
		RET	NZ
;
		LD	(HL),$C0
;
		LD	HL,ENFLSH
		ADD	HL,BC
		LD	(HL),$FF
;
		CALL	INCWRK4
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	倒されたのでフラッシング中		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
HINO_OUT2000
		CALL	LDTIM0
		JR	Z,HINO_OUT2100
		CALL	BOSS_SMOKE_SET
		RET
;
HINO_OUT2100
		LD	A,$1A
		LD	(SOUND3),A	;(S)
;
		CALL	BGMSET	;(S)
;
		CALL	ENFEND
;
		XOR	A
		LD	(ITEMNOT),A
;
		LD	HL,NEWDJRM
		LD	A,(GRNDPT)
		LD	E,A
		LD	D,B
		ADD	HL,DE
		SET	5,(HL)
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	煙の出現場所セット		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
BOSS_SMOKE_SET
		AND	$07
		RET	NZ
;
		CALL	RNDSUB
		AND	$1F
		SUB	$10
		LD	E,A
		LD	HL,ENSVXL
		ADD	A,(HL)
		LD	(HL),A
;
		CALL	RNDSUB
		AND	$1F
		SUB	$10+4
		LD	E,A
		LD	HL,ENDSYP
		ADD	A,(HL)
		LD	(HL),A
;
		CALL	E9STCK2
SMK_CLS
		LD	A,(ENSVXL)
		LD	(WORK0),A
		LD	A,(ENDSYP)
		LD	(WORK1),A
		LD	A,SMK1
		CALL	EXIDSH
;
		LD	A,$13
		LD	(SOUND3),A	;(S)
		RET
;
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	切られチェック				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CROSS_CHECK
		CALL	CREPKEL
		LD	HL,ENFLSH
		ADD	HL,BC
		LD	A,(HL)
		AND	A
		RET	Z
;
		CALL	E9XCHK		;ヨーロッパ版で追加
		LD	D,$020		;
		CP	D		;剣以外でダメージを
		JR	NC,CRS_CHK_500	;受けた時に
		CALL	E9YCHK		;離れているプレイヤーが
		LD	D,$020		;弾けているのを
		CP	D		;防ぐため
		JR	NC,CRS_CHK_500	;
;
		LD	A,$010		;なに！
		LD	(HANEFG),A	;弱いだと！
		LD	A,$020		;じゃあ、プレイヤーを
		CALL	PSERCH2L	;弾けさせよう！！
		LD	A,(WORK0)	;
		LD	(PLYSPD),A	;
		LD	A,(WORK1)	;
		LD	(PLXSPD),A	;
;
CRS_CHK_500
		LD	A,$030		;ダメージ点滅時間セット
		CALL	ENTIM0_SET	;
		LD	HL,ENWRK1	;腕を振り回す
		ADD	HL,BC		;	回数セット
		LD	(HL),$006	;
		LD	A,HINO_IKARI
		CALL	E9ENSTAT
		AND	A
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	タイマーセット					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
BLK_TIME_SET
		LD	A,$010		;ファースト・アクション
		CALL	ENTIM0_SET	;	スタートタイマーセット
		CALL	STATINC
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ヒノックスゴーレムのメッセージセット		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
BLK_MSGON
		LD	A,$06A		;よくばりもの・・・
		CALL	MSGCH3
		CALL	STATINC
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	メッセージ表示後前進する			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
BLK_GOSTART
		LD	A,(MSGEFG)
		AND	A		;メッセージ表示中？
		RET	NZ		;	YES --> return
;
		LD	A,$010		;ファースト・アクション
		CALL	ENTIM0_SET	;	スタートタイマーセット
		CALL	STATINC
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	止まって、何か考えている			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
BLK_HINO_STOP
		CALL	CROSS_CHECK
		RET	NZ
;
		CALL	LDTIM0
		RET	NZ
;
		XOR	A
		CALL	E9XSPD_ADR
		LD	(HL),A
		CALL	E9YSPD_ADR
		LD	(HL),A
;
		LD	HL,ENWRK2
		ADD	HL,BC
		CALL	RNDSUB
		AND	(HL)
		JR	NZ,HINO_STP_200
		LD	(HL),$001
;;;KK;;;		CALL	E9YSPD_ADR
;;;KK;;;		LD	(HL),$0F0
		CALL	E9ZSPD_ADR	;ジャンプのスピードセット
		LD	(HL),$018	;
		LD	HL,ENWRK1
		ADD	HL,BC
		LD	(HL),$000
		LD	A,HINO_JTBT
		CALL	E9ENSTAT
		RET
;
HINO_STP_200
		LD	A,$020		;１歩進むのに
		CALL	ENTIM0_SET	;	かかる時間
		LD	HL,ENWRK0
		ADD	HL,BC		;前進する
		LD	(HL),$006	;	歩数セット
		CALL	E9MUKI_ADR
		LD	(HL),$003
		CALL	STATINC
		CALL	RNDSUB
		AND	$001
		JR	Z,HINO_STP_250
		LD	(HL),HINO_SIDE
		CALL	E9XSPD_ADR
		CALL	RNDSUB
		AND	$001
		JR	NZ,HINO_STP_280
		LD	(HL),$0C0
		RET
HINO_STP_250
		CALL	E9YSPD_ADR
HINO_STP_280
		LD	(HL),$040	;前進スピードセット
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ドシン、ドシンと前進				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
BLK_HINO_GO
		CALL	CROSS_CHECK
		RET	NZ
;
		CALL	LDTIM0
		JR	NZ,HINO_GO_900
		CALL	E9MVCL
		CALL	ENBGCKL
;
		CALL	PTN_0_1_CHG
;
		LD	A,$020		;１歩進むのに
		CALL	ENTIM0_SET	;	かかる時間
;
		LD	HL,ENWRK0
		ADD	HL,BC		;３歩前進する
		DEC	(HL)
		LD	A,(HL)
		AND	A
		JR	NZ,HINO_GO_900
		LD	(HL),$006	;バックする歩数セット
		CALL	E9YSPD_ADR
		LD	(HL),$0C0	;前進スピードセット
		LD	A,$030		;バックするまでの
		CALL	ENTIM0_SET	;	時間セット
		CALL	STATINC
;
HINO_GO_900
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ドシン、ドシンと後進				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
BLK_HINO_BACK
		CALL	CROSS_CHECK
		RET	NZ
;
		CALL	LDTIM0
		JR	NZ,HINO_BK_900
		CALL	E9MVCL
		CALL	ENBGCKL
;
		CALL	PTN_0_1_CHG
;
		LD	A,$020		;１歩進むのに
		CALL	ENTIM0_SET	;	かかる時間
;
		LD	HL,ENWRK0
		ADD	HL,BC		;３歩後進する
		DEC	(HL)
		LD	A,(HL)
		AND	A
		JR	NZ,HINO_BK_900
		LD	A,$030		;何か考えている時間
		CALL	ENTIM0_SET	;
		LD	A,HINO_STOP
		CALL	E9ENSTAT
;
HINO_BK_900
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ドシン、ドシンと左右どちらからへ前進		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
BLK_HINO_SIDE_GO
		CALL	CROSS_CHECK
		RET	NZ
;
		CALL	LDTIM0
		RET	NZ
;
		CALL	E9MVCL
		CALL	ENBGCKL
;
		CALL	PTN_0_1_CHG
;
		LD	A,$020		;１歩進むのに
		CALL	ENTIM0_SET	;	かかる時間
;
		LD	HL,ENWRK0
		ADD	HL,BC		;３歩前進する
		DEC	(HL)
		LD	A,(HL)
		AND	A
		RET	NZ
		LD	(HL),$006	;バックする歩数セット
		CALL	E9XSPD_ADR	;左右へ進んだ後
		LD	A,(HL)		;	戻るスピードセット
		CPL			;
		INC	A		;
		LD	(HL),A		;
		LD	A,$030		;バックするまでの
		CALL	ENTIM0_SET	;	時間セット
		CALL	STATINC
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ドシン、ドシンと左右どちらからかの後進		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
BLK_HINO_SIDE_BACK
		CALL	CROSS_CHECK
		RET	NZ
;
		CALL	LDTIM0
		RET	NZ
;
		CALL	E9MVCL
		CALL	ENBGCKL
;
		CALL	PTN_0_1_CHG
;
		LD	A,$020		;１歩進むのに
		CALL	ENTIM0_SET	;	かかる時間
;
		LD	HL,ENWRK0
		ADD	HL,BC		;３歩後進する
		DEC	(HL)
		LD	A,(HL)
		AND	A
		RET	NZ
		LD	A,$030		;何か考えている時間
		CALL	ENTIM0_SET	;
		LD	A,HINO_STOP
		CALL	E9ENSTAT
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	怒ったぞ～！腕を振り回す			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
BLK_HINO_IKARI
		CALL	LDTIM0
		RET	NZ
;
		CALL	PTN_0_1_CHG
;
		LD	A,$008		;腕を振り回す時間セット
		CALL	ENTIM0_SET	;
;
		LD	HL,ENWRK1
		ADD	HL,BC
		DEC	(HL)
		LD	A,(HL)
		AND	A		;腕を振り回し終わった？
		RET	NZ		;	NO --> return
;
		LD	(HL),$001
		XOR	A
		CALL	E9XSPD_ADR
		LD	(HL),A
		CALL	E9YSPD_ADR
		LD	(HL),A
		CALL	E9ZSPD_ADR	;ジャンプのスピードセット
		LD	(HL),$018	;
		CALL	STATINC
		CALL	E9ENXPSL_ADR
		LD	A,(HL)
		CALL	E9XSPD_ADR
		CP	$050
		JR	Z,HINO_IKARI_800
		JR	NC,HINO_IKARI_850
		LD	(HL),$010
		RET
HINO_IKARI_800
		CALL	E9YSPD_ADR
HINO_IKARI_850
		LD	(HL),$0F0
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ジタンダジャンプ				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
BLK_HINO_JITANDA
		CALL	E9MVCL
		CALL	ENBGCKL
;
		CALL	E9XSPD_ADR
		LD	A,(HL)
		AND	A		;横方向ジャンプ？
		JR	Z,HINO_JTND_200	;	NO --> HINO_JTND_200
		CALL	E9ENXPSL_ADR
		AND	$080			;左方向ジャンプ？
		JR	NZ,HINO_JTND_150	;	YES --> HINO_JTND_150
		LD	A,(HL)
		CP	$050
		JR	C,HINO_JTND_200
		JR	HINO_JTND_190
HINO_JTND_150
		LD	A,(HL)
		CP	$050
		JR	NC,HINO_JTND_200
HINO_JTND_190
		LD	A,$050
		LD	(HL),A
		CALL	E9XSPD_ADR
		XOR	A
		LD	(HL),A
;
HINO_JTND_200
		CALL	E9ZSPD_ADR
		DEC	(HL)
		CALL	E9ZCLC
		LD	A,(HL)
		BIT	7,A		;着地した？
		JR	Z,HINO_JTND_900	;	NO --> HINO_JTND_900
		XOR	A
		LD	(HL),A
		LD	HL,ENFLSH	;フラッシング
		ADD	HL,BC		;	終了
		LD	(HL),A		;
;;;KK;;;		LD	HL,ENHNFG	;跳ねかえり
;;;KK;;;		ADD	HL,BC		;	終了
;;;KK;;;		LD	(HL),A		;
		LD	A,$30		;縦揺れ
		LD	(TILTCT),A	;	タイマーセット
		LD	A,$04		;
		LD	(TILTMK),A	;	向きセット
		CALL	IWA_INIT
		LD	HL,ENWRK1
		ADD	HL,BC
		LD	A,(HL)
		AND	A		;腕、振り回してた？
		JR	Z,HINO_JTND_840	;	NO --> HINO_JTND_840
		CALL	IWA_INIT
HINO_JTND_840
		CALL	ENCHPT_ADR
		LD	A,(HL)
		AND	$001
		JR	NZ,HINO_JTND_860
		LD	A,$080
HINO_JTND_860
		AND	$080
		LD	(HL),A
		LD	A,$020		;タイマー再セット
		CALL	ENTIM0_SET	;
		CALL	STATINC
;
HINO_JTND_900
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	落す岩の初期セット			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
IWA_INIT
		XOR	A
		LD	E,A
		LD	D,A
		LD	(WORK0),A
;
IWA_DISP_CHK
		LD	HL,ENMYNO
		ADD	HL,DE
		LD	A,(HL)
		CP	HINOIWA
		JR	NZ,IWA_CHK_PASS
		LD	HL,ENMODE
		ADD	HL,DE
		LD	A,(HL)
		AND	A
		JR	Z,IWA_CHK_PASS
		LD	HL,WORK0
		INC	(HL)
IWA_CHK_PASS
		INC	DE
		LD	A,E
		AND	$00F
		JR	NZ,IWA_DISP_CHK
		LD	A,(WORK0)
		CP	$006		;６つ以上は、出さない
		RET	NC
;
		LD	A,HINOIWA
		CALL	ENIDSHL
		RET	C
;
		CALL	RNDSUB
		RLA
		RLA
		RLA
		RLA
		AND	$70
		ADD	A,$18
		LD	HL,ENXPSL
		ADD	HL,DE
		LD	(HL),A
;
		LD	HL,ENYPSL
		ADD	HL,DE
		LD	(HL),$10
;
		LD	HL,ENMOD0
		ADD	HL,DE
		LD	(HL),%00010010
;
		LD	HL,ENMOD1
		ADD	HL,DE
		SET	7,(HL)
;
		LD	HL,ENSTAT
		ADD	HL,DE
		INC	(HL)
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	地面へパンチ					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
BLK_HINO_PANCHI
		LD	A,(PLJPFG)
		AND	A
		JR	NZ,HINO_PN_020
		LD	A,$01
		LD	(PLSTOP),A
		LD	A,$6A
		LD	(PLCHPT),A
		LD	(ITEMNOT),A
;
HINO_PN_020
		CALL	LDTIM0
		RET	NZ
;
		XOR	A
		LD	(ITEMNOT),A
		LD	A,$004		;タイマー再セット
		CALL	ENTIM0_SET	;
		CALL	ENCHPT_ADR
		INC	(HL)
		LD	A,(HL)
		AND	$00F
		CP	$003
		JR	NZ,HINO_PN_100
		PUSH	AF
		CALL	IWA_INIT
		POP	AF
HINO_PN_100
		CP	$006
		JR	C,HINO_PN_400
		LD	A,(HL)
		SWAP	A
		SRL	A
		SRL	A
		SRL	A
		AND	$001
		LD	(HL),A
		LD	A,HINO_STOP
		CALL	E9ENSTAT
;
HINO_PN_400
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ヒノックス(ゴーレムバージョン)のＯＡＭセット	x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
HINO_WALK_DATA
	DW	BLK_HINO_DAT0,BLK_HINO_DAT1
;
HINO_PN0_DATA
	DW	BLK_HINO_DAT3,BLK_HINO_DAT0,BLK_HINO_DAT1
	DW	BLK_HINO_DAT2,BLK_HINO_DAT1,BLK_HINO_DAT0
;
HINO_PN1_DATA
	DW	BLK_HINO_DAT2,BLK_HINO_DAT1,BLK_HINO_DAT0
	DW	BLK_HINO_DAT3,BLK_HINO_DAT0,BLK_HINO_DAT1
;
;
BLK_HINO_CSET
		LD	D,$000
		CALL	ENCHPT_ADR
		LD	E,(HL)
		LD	A,(ENSTAT2)
		CP	HINO_PANCHI
		JR	C,HINO_CSET_500
		LD	HL,HINO_PN0_DATA
		SLA	E
		JR	NC,HINO_CSET_600
		LD	HL,HINO_PN1_DATA
		JR	HINO_CSET_600
;
HINO_CSET_500
		SLA	E
		LD	HL,HINO_WALK_DATA
;
HINO_CSET_600
		CALL	HL_RT_SET
		LD	C,$008
		LD	A,:BLK_HINO_CSET
		CALL	FUKU_OAM_SET		;ＯＡＭセット
		LD	A,$008
		CALL	NXOMSBL
		RET
;
;
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	飛んでいるバウンドする敵				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
FLING_BOUND
		CALL	FLING_BOUND_CSET
;
		CALL	E9STCK		;ＳＴＯＰチェック
		CALL	CRKNENL
		CALL	E9MVCL		;移動ルーチン
		CALL	SADWSTL
;
		LD	HL,ENFLSH
		ADD	HL,BC
		LD	A,(HL)
		AND	A
		JR	NZ,FLYING_BND_200
		LD	HL,ENHNFG
		ADD	HL,BC
		LD	(HL),$000
;
FLYING_BND_200
		LD	HL,ENHNFG	;落下チェックの
		ADD	HL,BC		;為に"ENHNFG"の
		LD	A,(HL)		;フラグに１を
		PUSH	AF		;立てておく
		PUSH	HL		;
		LD	(HL),$001	;
		CALL	ENBGCKL
		POP	HL
		POP	AF
		LD	(HL),A
;
FLY_BND_PASS
		LD	A,(ENSTAT2)
		RST	0
FLY_BND_ADR	DW	FLY_BOUND
		DW	FLY_BOUND_UPMV
FLY_DOWN_SPD	DW	FLY_BOUND_DWMV
BND_MAN_ADR	DW	BOUND_MAN
		DW	BOUND_DOWN
;
FlyOrBound	EQU	(BND_MAN_ADR-FLY_BND_ADR)/2
FLY_DWN		EQU	(FLY_DOWN_SPD-FLY_BND_ADR)/2
;
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	バウンドしている敵				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
BOUND_DOWN
		CALL	E9ZSPD_ADR
		DEC	(HL)
		LD	A,(HL)
		LD	(WORK0),A
;
		CALL	E9ZCLC
		LD	A,(HL)
		BIT	7,A		;着地した？
		JR	Z,BND_DW_900
;
		LD	A,(WORK0)
		BIT	7,A		;上昇中？
		JR	Z,BND_DW_900	;	YES --> BND_DW_900
;
		LD	E,$004
		CALL	RNDSUB
		AND	$001
		JR	Z,BND_DW_250
		LD	E,$0FC
BND_DW_250
		CALL	E9XSPD_ADR
		LD	(HL),E
;
		CALL	E9MUKI_ADR
		LD	(HL),$000
		BIT	7,E
		JR	NZ,BND_DW_300
		INC	(HL)
;
BND_DW_300
		LD	E,$003
		CALL	RNDSUB
		AND	$001
		JR	Z,BND_DW_350
		LD	E,$0FD
BND_DW_350
		CALL	E9YSPD_ADR
		LD	(HL),E
;
		CALL	E9ZSPD_ADR
		LD	(HL),$014
;
		LD	A,$00D
		LD	(SOUND1),A
;
		LD	D,$000
		CALL	E9MUKI_ADR
		LD	E,(HL)
		CALL	E9ENXPSL_ADR
		LD	A,(HL)
		LD	(WORK0),A
		CALL	E9ENYPSL_ADR
		LD	A,(HL)
		LD	(WORK1),A
		LD	A,ZE9_BANK
		CALL	NEWDJ_UNSH_SUB
		LD	HL,BGUNDT+$11
		ADD	HL,DE
		LD	A,(HL)
		CP	TRPNG		;トランポリンの上に乗ったか？
		JR	Z,BND_DW_520	;	YES --> BND_DW_520
		CP	TRPNR		;	NO ---> BND_DW_900
		JR	Z,BND_DW_520	;
		CP	TRPNY		;
		JR	NZ,BND_DW_900	;
BND_DW_520
		LD	A,ZE9_BANK
		CALL	TRNPRN_CHK_SUB
;
BND_DW_900
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	バウンドしている敵				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
BOUND_MAN
		XOR	A
		CALL	E9XSPD_ADR
		LD	(HL),A
		CALL	E9YSPD_ADR
		LD	(HL),A
		CALL	ENCHPT_ADR
		LD	(HL),A
		LD	HL,ENHNFG
		ADD	HL,BC
		LD	(HL),A
		CALL	STATINC
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	羽ばたき				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
HABATAKI_BOUND
		LD	HL,ENFLSH
		ADD	HL,BC
		LD	A,(HL)
		AND	A
		JR	Z,HBTK_BND_100
		LD	A,FlyOrBound
		CALL	E9ENSTAT
		LD	HL,ENMOD2
		ADD	HL,BC
		LD	(HL),$000
		JR	HBTK_BND_PASS
;
HBTK_BND_100
		LD	A,(FRCNT)
		AND	$007
		JR	NZ,HBTK_BND_PASS
		CALL	PTN_0_1_CHG
;
HBTK_BND_PASS
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	リンクからの逃げチェック		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
RINKU_NIGE
		CALL	E9XCHK
		CP	$010
		JR	NC,RNK_NG_900
		LD	(WORK0),A
		LD	A,E
		LD	(WORK1),A
;
		CALL	E9YCHK
		CP	$010
		JR	NC,RNK_NG_900
		CALL	E9YSPD_ADR
		LD	(HL),$010
		BIT	1,E
		JR	Z,RNK_NG_550
		LD	(HL),$0F0
RNK_NG_550
		CALL	E9XSPD_ADR
		LD	(HL),$010
		BIT	0,E
		JR	Z,RNK_NG_600
		LD	(HL),$0F0
RNK_NG_600
		LD	A,FLY_DWN
		CALL	E9ENSTAT
;
RNK_NG_900
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	飛んでいるバウンドする敵			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
FLY_BND_SPD_DAT
		DB	$008,$00C,$0F8,$0F4
		DB	$002,$000,$0FE,$000
;
FLY_BOUND
		CALL	HABATAKI_BOUND
;
		CALL	RNDSUB
		AND	$007
		LD	E,A
		LD	D,$000
		LD	HL,FLY_BND_SPD_DAT
		ADD	HL,DE
		LD	A,(HL)
		LD	HL,ENWRK0
		ADD	HL,BC
		LD	(HL),A
		CALL	E9ENXPSL_ADR
		LD	A,(HL)
		SUB	$040
		LD	HL,ENWRK0
		ADD	HL,BC
		BIT	7,A
		JR	Z,FLY_BND_160
		CP	$0D0
		JR	NC,FLY_BND_180
		LD	A,(HL)
		BIT	7,A
		JR	Z,FLY_BND_180
		CPL
		INC	A
		LD	(HL),A
		JR	FLY_BND_180
FLY_BND_160
		CP	$030
		JR	C,FLY_BND_180
FLY_BND_170
		LD	A,(HL)
		BIT	7,A
		JR	NZ,FLY_BND_180
		CPL
		INC	A
		LD	(HL),A
FLY_BND_180
		LD	A,(HL)
		CALL	E9MUKI_ADR
		LD	(HL),$000
		BIT	7,A
		JR	NZ,FLY_BND_200
		INC	(HL)
;
FLY_BND_200
		CALL	RNDSUB
		AND	$007
		LD	E,A
		LD	D,$000
		LD	HL,FLY_BND_SPD_DAT
		ADD	HL,DE
		LD	A,(HL)
		LD	HL,ENWRK1
		ADD	HL,BC
		LD	(HL),A
		CALL	E9ENYPSL_ADR
		LD	A,(HL)
		SUB	$040
		LD	HL,ENWRK1
		ADD	HL,BC
		BIT	7,A
		JR	Z,FLY_BND_260
		CP	$0E0
		JR	NC,FLY_BND_280
		LD	A,(HL)
		BIT	7,A
		JR	Z,FLY_BND_280
		CPL
		INC	A
		LD	(HL),A
		JR	FLY_BND_280
FLY_BND_260
		CP	$020
		JR	C,FLY_BND_280
FLY_BND_270
		LD	A,(HL)
		BIT	7,A
		JR	NZ,FLY_BND_280
		CPL
		INC	A
		LD	(HL),A
FLY_BND_280
;
		CALL	STATINC
;
		CALL	RINKU_NIGE
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	加速して飛びまわる				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
FLY_BOUND_UPMV
		CALL	HABATAKI_BOUND
;
		LD	A,(FRCNT)
		AND	$001
		JR	Z,FLY_BND_UPMV_300
;
		LD	HL,ENWRK0
		ADD	HL,BC
		LD	A,(HL)
		LD	E,A
		CALL	E9XSPD_ADR
		CP	(HL)
		JR	Z,FLY_BND_UPMV_100
		DEC	(HL)
		BIT	7,A
		JR	NZ,FLY_BND_UPMV_100
		INC	(HL)
		INC	(HL)
;
FLY_BND_UPMV_100
		LD	HL,ENWRK1
		ADD	HL,BC
		LD	A,(HL)
		LD	D,A
		CALL	E9YSPD_ADR
		CP	(HL)
		JR	Z,FLY_BND_UPMV_200
		DEC	(HL)
		BIT	7,A
		JR	NZ,FLY_BND_UPMV_200
		INC	(HL)
		INC	(HL)
;
FLY_BND_UPMV_200
		LD	A,(HL)
		CP	D
		JR	NZ,FLY_BND_UPMV_300
		CALL	E9XSPD_ADR
		LD	A,(HL)
		CP	E
		JR	NZ,FLY_BND_UPMV_300
		CALL	STATINC
;
FLY_BND_UPMV_300
		CALL	RINKU_NIGE
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	減速して飛びまわる				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
FLY_BOUND_DWMV
		CALL	HABATAKI_BOUND
;
		LD	A,(FRCNT)
		AND	$001
		JR	Z,FLY_BND_DWMV_300
;
		CALL	E9XSPD_ADR
		LD	A,(HL)
		AND	A
		JR	Z,FLY_BND_DWMV_100
		INC	(HL)
		BIT	7,A
		JR	NZ,FLY_BND_DWMV_100
		DEC	(HL)
		DEC	(HL)
;
FLY_BND_DWMV_100
		CALL	E9YSPD_ADR
		LD	A,(HL)
		AND	A
		JR	Z,FLY_BND_DWMV_200
		INC	(HL)
		BIT	7,A
		JR	NZ,FLY_BND_DWMV_200
		DEC	(HL)
		DEC	(HL)
;
FLY_BND_DWMV_200
		LD	A,(HL)
		AND	A
		JR	NZ,FLY_BND_DWMV_300
		CALL	E9XSPD_ADR
		LD	A,(HL)
		AND	A
		JR	NZ,FLY_BND_DWMV_300
		LD	A,$010
		CALL	ENTIM0_SET
		XOR	A
		CALL	E9ENSTAT
;
		LD	A,(BOMBFG)
		AND	A			;バクダンが存在してる？
		JR	NZ,FLY_BND_DWMV_300	;	YES --> FLY_BND_DWMV_300
		CALL	RNDSUB
		AND	$003
		JR	NZ,FLY_BND_DWMV_300
		LD	A,BOMBR
		CALL	ENIDSHL
		JR	C,FLY_BND_DWMV_300
;
		LD	HL,ENMOD3
		ADD	HL,DE
		RES	0,(HL)
;
		CALL	E9ENXPSL_ADR
		LD	A,(HL)
		LD	HL,ENXPSL
		ADD	HL,DE
		LD	(HL),A
;
		CALL	E9ENYPSL_ADR
		LD	A,(HL)
		LD	HL,ENYPSL
		ADD	HL,DE
		LD	(HL),A
;
		CALL	E9ENZPSL_ADR
		LD	A,(HL)
		LD	HL,ENZPSL
		ADD	HL,DE
		LD	(HL),A
;
		LD	HL,ENZSPD
		ADD	HL,DE
		LD	(HL),$08
;
		LD	HL,ENTIM0
		ADD	HL,DE
		LD	(HL),$048
;
		LD	HL,ENWRK3
		ADD	HL,DE
		LD	(HL),$001
;
FLY_BND_DWMV_300
		CALL	RINKU_NIGE
;
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	飛んでいるバウンドする敵のオブジェセット	x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
FLY_BND_DATA
	DW	FLY_BND_DAT0,FLY_BND_DAT1
	DW	FLY_BND_DAT2,FLY_BND_DAT3
	DW	FLY_BND_DAT4,FLY_BND_DAT5
	DW	FLY_BND_DAT6,FLY_BND_DAT7
;
FLING_BOUND_CSET
		LD	D,$000
		CALL	ENCHPT_ADR
		LD	A,(HL)
		SLA	A
		LD	E,A
		LD	HL,FLY_BND_DATA
		ADD	HL,DE
		PUSH	HL
		CALL	E9MUKI_ADR
		LD	A,(HL)
		SLA	A
		SLA	A
		LD	E,A
		POP	HL
		CALL	HL_RT_SET
		LD	C,$004
		LD	A,:FLING_BOUND_CSET
		CALL	FUKU_OAM_SET		;ＯＡＭセット
		LD	A,$004
		CALL	NXOMSBL
		RET
;
;
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	赤、緑、青のパズルブロック				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
RGB_BLOCK
		LD	HL,ENLIFE
		ADD	HL,BC
		LD	(HL),$FF
;
		CALL	RGB_BLOCK_CSET
;
		CALL	M9CROS
;
		LD	A,(NAZOCL)
		AND	A
		JR	Z,RGB_BLK_500
		XOR	A
		LD	HL,ENFLSH
		ADD	HL,BC
		LD	(HL),A
		LD	HL,ENHNFG
		ADD	HL,BC
		LD	(HL),A
		RET
;
RGB_BLK_500
		LD	A,(ENSTAT2)
		BIT	7,A
		RET	NZ
;
		LD	A,(ENSTAT2)
		RST	0
BLOCK_ADRESS	DW	RGB_BLK_WAIT
		DW	OTHER_CHANGE
BLOCK_CHG	DW	CHG_RGB_BLOCK
;
BLK_START	EQU	$000
;
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	切られ待ち					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
RGB_BLK_WAIT
		CALL	E9STCK		;ＳＴＯＰチェック
		CALL	CRKNENL
		CALL	ENBGCKL
;
		CALL	ENCHPT_ADR
		LD	A,(HL)
		AND	$003		;回転している最中？
		JR	NZ,BLK_WT_900	;	YES --> BLK_WT_900
		LD	HL,ENHNFG
		ADD	HL,BC
		LD	A,(HL)
		AND	A		;切られた？
		JR	Z,BLK_WT_900	;	NO --> BLK_WT_900
		LD	A,$004
		CALL	ENTIM0_SET
		CALL	ENCHPT_ADR
		INC	(HL)
		XOR	A
		LD	HL,ENFLSH
		ADD	HL,BC
		LD	(HL),A
		CALL	NAKAMA_CHG
		CALL	STATINC
		CALL	STATINC
;
BLK_WT_900
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	上下左右の同一ラインのブロックチェンジ		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
NAKAMA_CHG
		CALL	E9ENXPSL_ADR
		LD	A,(HL)
		LD	(WORK0),A
		CALL	E9ENYPSL_ADR
		LD	A,(HL)
		LD	(WORK1),A
;
		LD	DE,$00000
CHECK_LOOP
		LD	A,E
		SUB	C		;自分？
		JR	Z,CHECK_PASS	;	YES --> CHECK_PASS
		LD	HL,ENMYNO
		ADD	HL,DE
		LD	A,(HL)
		CP	R_BLOCK
		JR	Z,ATARI_BLOCK
		CP	G_BLOCK
		JR	Z,ATARI_BLOCK
		CP	B_BLOCK
		JR	NZ,CHECK_PASS
ATARI_BLOCK
		LD	HL,ENSTAT
		ADD	HL,DE
		INC	(HL)
;
		LD	HL,ENXPSL
		ADD	HL,DE
		LD	A,(WORK0)
		CP	(HL)
		JR	NZ,CHG_PTN_YCHK
		LD	A,(GRNDPT)
		CP	$00A
		JR	NZ,CHG_PTN_BLK
		LD	HL,ENYPSL
		ADD	HL,DE
		LD	A,(WORK1)
		SUB	(HL)
		BIT	7,A
		JR	Z,CHG_PTN_X000
		CPL
		INC	A
CHG_PTN_X000
		CP	$020
		JR	NZ,CHG_PTN_YCHK
		JR	CHG_PTN_BLK
CHG_PTN_YCHK
		LD	HL,ENYPSL
		ADD	HL,DE
		LD	A,(WORK1)
		CP	(HL)
		JR	NZ,CHECK_PASS
		LD	A,(GRNDPT)
		CP	$00A
		JR	NZ,CHG_PTN_BLK
		LD	HL,ENXPSL
		ADD	HL,DE
		LD	A,(WORK0)
		SUB	(HL)
		BIT	7,A
		JR	Z,CHG_PTN_Y000
		CPL
		INC	A
CHG_PTN_Y000
		CP	$020
		JR	NZ,CHECK_PASS
CHG_PTN_BLK
		LD	HL,ENCHPT
		ADD	HL,DE
		INC	(HL)
		LD	HL,ENTIM0
		ADD	HL,DE
		LD	(HL),$004
		LD	HL,ENSTAT
		ADD	HL,DE
		INC	(HL)
CHECK_PASS
		INC	DE
		LD	A,E
		AND	$00F
		JR	NZ,CHECK_LOOP
;
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	他のブロックが回っているので待っている		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
OTHER_CHANGE
		LD	DE,$000
OTHER_LOOP
		LD	HL,ENMYNO
		ADD	HL,DE
		LD	A,(HL)
		CP	R_BLOCK
		JR	Z,OTHER_ATARI
		CP	G_BLOCK
		JR	Z,OTHER_ATARI
		CP	B_BLOCK
		JR	NZ,OTHER_PASS
OTHER_ATARI
		LD	HL,ENSTAT
		ADD	HL,DE
		LD	A,(HL)
		CP	BLK_START
		JR	NZ,OTHER_PASS
		LD	HL,ENHNFG
		ADD	HL,BC
		XOR	A
		LD	(HL),A
		LD	A,BLK_START
		CALL	E9ENSTAT
		RET
OTHER_PASS
		INC	DE
		LD	A,E
		AND	$00F
		JR	NZ,OTHER_LOOP
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ブロックが回る					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CHG_RGB_BLOCK
		CALL	LDTIM0
		JR	NZ,CHG_BLK_900
;
		CALL	ENCHPT_ADR
		LD	A,(GRNDPT)
		CP	$008
		JR	Z,CHG_BLK_120
		CALL	RB_CHG_BLK
		JR	CHG_BLK_160
;
CHG_BLK_120
		LD	A,(HL)
		INC	A
CHG_BLK_160
		LD	(HL),A
		CP	$00C
		JR	NZ,CHG_BLK_180
		XOR	A
CHG_BLK_180
		LD	(HL),A
		AND	$003
		JR	NZ,CHG_BLK_200
		LD	HL,ENHNFG
		ADD	HL,BC
		XOR	A
		LD	(HL),A
		LD	A,BLK_START
		CALL	E9ENSTAT
;
CHG_BLK_200
		LD	A,$004
		CALL	ENTIM0_SET
;
CHG_BLK_900
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	赤 <--> 青のパターンナンバーチェンジ	x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
RB_CHG_BLK
		LD	A,(HL)
		INC	A
		CP	$002
		RET	NZ
		LD	A,$006
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	緑 <--> 青のパターンナンバーチェンジ	x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
GB_CHG_BLK
		LD	A,(HL)
		INC	A
		CP	$00A
		RET	NZ
		LD	A,$002
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	赤、緑、青のパズルブロックのオブジェセット	x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
RGB_BLK_DAT
	DB	$070,$002,$070,$022
	DB	$072,$002,$074,$002
	DB	$076,$001,$076,$021
	DB	$074,$021,$072,$021
	DB	$070,$001,$070,$021
	DB	$072,$001,$074,$001
	DB	$076,$003,$076,$023
	DB	$074,$023,$072,$023
	DB	$070,$003,$070,$023
	DB	$072,$003,$074,$003
	DB	$076,$002,$076,$022
	DB	$074,$022,$072,$022
;
;
RGB_BLOCK_CSET
		LD	DE,RGB_BLK_DAT
		CALL	EN2CST
;
		RET
;
;
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	赤、緑、青のゴースト					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
RGB_GOST
		CALL	RGB_GOST_CSET
		LD	A,(ENMODE2)
		CP	EMOVE
		CALL	E9STCK		;ＳＴＯＰチェック
		CALL	ENCHPT_ADR
		LD	A,(HL)
		AND	A
		JR	Z,RGB_GOST_PASS
		CALL	CREPKEL		;切られたかチェック
RGB_GOST_PASS
		LD	A,(SHUTFG)
		AND	A		;シャッター閉じている？
		RET	Z		;	NO--> return
;
		LD	A,(ENSTAT2)
		RST	0
GOST_ADRESS	DW	GOST_INIT
GOST_ATC_WAIT	DW	GOST_ATTACK_WAIT
		DW	GOST_ATTACK_MOVE
		DW	GOST_WAIT
GOST_NOCUT	DW	GOST_BANNZAI
		DW	GOST_BANNZAI
		DW	GOST_BANNZAI
		DW	GOST_BANNZAI
		DW	GOST_BANNZAI
		DW	GOST_BANNZAI
GOST_BANZAI	DW	GOST_BANNZAI
GOST_SEARCH	DW	GOST_TO_SEARCH
;
GOST_WT		EQU	(GOST_ATC_WAIT-GOST_ADRESS)/2
GOST_HIT	EQU	(GOST_NOCUT-GOST_ADRESS)/2
GOST_BNZI	EQU	(GOST_BANZAI-GOST_ADRESS)/2
GOST_SRCH	EQU	(GOST_SEARCH-GOST_ADRESS)/2
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	イニシャル(スタート時のポジション確保)		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
GOST_INIT
		CALL	STATINC
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ゴーストが接近待ちしている			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
GOST_ATTACK_WAIT
		CALL	E9MUKI_ADR
		LD	(HL),$000
;
		CALL	E9XCHK
		CP	$028
		JP	NC,GOST_ATCWT_900
		LD	A,(PLXPSL)
		CALL	E9SAKIX_SET
;
		CALL	E9YCHK
		CP	$028
		JP	NC,GOST_ATCWT_900
		LD	A,(PLYPSL)
		CALL	E9SAKIY_SET
;
		CALL	STATINC
;
GOST_ATCWT_900
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ゴーストが接近している				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
ATTACK_DAT
	DB	$010,$00C,$00E
;
GOST_ATTACK_MOVE
		LD	HL,ATTACK_DAT
		LD	A,(ENMYNO2)
		SUB	R_GOST
		LD	E,A
		LD	D,$000
		ADD	HL,DE
		LD	A,(HL)
		CALL	E9XSPD_ADR
		LD	(HL),A
		CALL	E9YSPD_ADR
		LD	(HL),A
;
		CALL	E9ENXPSL_ADR
		LD	E,(HL)
		CALL	E9SAKIX_GET
		SUB	E
		LD	(WORK0),A
		CALL	E9XSPD_ADR
		AND	A
		JR	NZ,GOST_ATCMV_050
		LD	(HL),A
GOST_ATCMV_050
		BIT	7,A
		JR	Z,GOST_ATCMV_100
		LD	A,(HL)
		CPL
		INC	A
		LD	(HL),A
;
GOST_ATCMV_100
		CALL	E9ENYPSL_ADR
		LD	E,(HL)
		CALL	E9SAKIY_GET
		SUB	E
		LD	(WORK1),A
		CALL	E9YSPD_ADR
		AND	A
		JR	NZ,GOST_ATCMV_150
		LD	(HL),A
GOST_ATCMV_150
		BIT	7,A
		JR	Z,GOST_ATCMV_200
		LD	A,(HL)
		CPL
		INC	A
		LD	(HL),A
;
GOST_ATCMV_200
		LD	A,(WORK0)
		AND	$0FE
		LD	E,A
		LD	A,(WORK1)
		AND	$0FE
		PUSH	AF
		PUSH	DE
		CALL	E9MVCL		;移動ルーチン
		CALL	ENBGCKL		;ＢＧチェック
;
		POP	DE
		POP	AF
		OR	E			;目的地に着いた？
		JR	NZ,GOST_ATCMV_400	;	NO --> GOST_ATCMV_400
		LD	A,$008
		CALL	ENTIM0_SET
		LD	A,$001
		CALL	ENPTST
		CALL	STATINC
		CALL	E9XCHK
		CALL	E9MUKI_ADR
		LD	A,E
		XOR	$001
		LD	(HL),A
		LD	HL,ENMOD0
		ADD	HL,BC
		LD	A,(HL)
		AND	%00001111
		LD	(HL),A
		JR	GOST_ATCMV_500
;
GOST_ATCMV_400
		LD	HL,ENCBFG
		ADD	HL,BC
		LD	A,(HL)
		AND	A			;移動中にＢＧに当たった？
		JR	Z,GOST_ATCMV_500	;	NO --> GOST_ATCMV_500
		LD	HL,ENMOD0
		ADD	HL,BC
		LD	A,(HL)
		AND	%11011111
		LD	(HL),A
		LD	A,GOST_WT
		CALL	E9ENSTAT
;
GOST_ATCMV_500
;
GOST_ATCMV_900
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ゴースト、待ち～万歳へ				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
BANZAI_STAT
	DB	$004,$000,$002
;
GOST_WAIT
		CALL	LDTIM0
		JR	NZ,GOST_WT_900
		LD	A,$008
		CALL	ENTIM0_SET
		CALL	ENCHPT_ADR
		INC	(HL)
		LD	A,(HL)
		CP	$003
		JR	NZ,GOST_WT_900
		LD	A,$010		;万歳タイマーセット
		CALL	ENTIM0_SET
		LD	HL,BANZAI_STAT
		LD	A,(ENMYNO2)
		SUB	R_GOST
		LD	E,A
		LD	D,$000
		ADD	HL,DE
		LD	A,(HL)
		CALL	STATINC
		ADD	A,(HL)
		LD	(HL),A
;
GOST_WT_900
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ゴースト、万歳					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
GOST_BANNZAI
		CALL	LDTIM0
		RET	NZ
;
		CALL	STATINC
		CALL	E9MUKI_ADR
		LD	A,(HL)
		XOR	$001
		LD	(HL),A
		LD	A,$008
		CALL	ENTIM0_SET
		LD	A,(ENSTAT2)
		CP	GOST_BNZI
		JR	C,GOST_BNZI_900
;
		CALL	ENCHPT_ADR
		DEC	(HL)
;
GOST_BNZI_900
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ゴースト、万歳～サーチ状態へ			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
GOST_BASE_DATA
		DB	ENYKR,ENYKG,ENYKB
;
GOST_TO_SEARCH
		CALL	LDTIM0
		JP	NZ,GOST_SRCH_900
;
		LD	A,$008
		CALL	ENTIM0_SET
		CALL	ENCHPT_ADR
		DEC	(HL)
		LD	A,(HL)
		AND	A
		JR	NZ,GOST_SRCH_900
;
GOST_SRCH_860
		LD	A,GOST_WT
		CALL	E9ENSTAT
		LD	HL,ENMOD0
		ADD	HL,BC
		LD	A,(HL)
		OR	%11010000
		LD	(HL),A
;
GOST_SRCH_900
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	赤、緑、青のゴーストのＯＡＭセット		x 
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
GOST_CSET_RDAT0
;;;KK;;;	DB	$0F0,$000,$0FF,$002
;;;KK;;;	DB	$0F0,$008,$0FF,$002
	DB	$000,$000,$060,$002
	DB	$000,$008,$060,$022
;
GOST_CSET_GDAT0
;;;KK;;;	DB	$0F0,$000,$0FF,$000
;;;KK;;;	DB	$0F0,$008,$0FF,$000
	DB	$000,$000,$060,$000
	DB	$000,$008,$060,$020
;
GOST_CSET_BDAT0
;;;KK;;;	DB	$0F0,$000,$0FF,$003
;;;KK;;;	DB	$0F0,$008,$0FF,$003
	DB	$000,$000,$060,$003
	DB	$000,$008,$060,$023
;
GOST_CSET_RDAT1
;;;KK;;;	DB	$0F0,$000,$0FF,$002
;;;KK;;;	DB	$0F0,$008,$0FF,$002
	DB	$000,$000,$062,$002
	DB	$000,$008,$062,$022
;
GOST_CSET_GDAT1
;;;KK;;;	DB	$0F0,$000,$0FF,$000
;;;KK;;;	DB	$0F0,$008,$0FF,$000
	DB	$000,$000,$062,$000
	DB	$000,$008,$062,$020
;
GOST_CSET_BDAT1
;;;KK;;;	DB	$0F0,$000,$0FF,$003
;;;KK;;;	DB	$0F0,$008,$0FF,$003
	DB	$000,$000,$062,$003
	DB	$000,$008,$062,$023
;
GOST_CSET_RDAT2L
;;;KK;;;	DB	$0F0,$000,$0FF,$002
;;;KK;;;	DB	$0F0,$008,$0FF,$002
	DB	$000,$000,$06C,$002
	DB	$000,$008,$06E,$002
;
GOST_CSET_RDAT2R
;;;KK;;;	DB	$0F0,$000,$0FF,$022
;;;KK;;;	DB	$0F0,$008,$0FF,$022
	DB	$000,$008,$06C,$022
	DB	$000,$000,$06E,$022
;
GOST_CSET_GDAT2L
;;;KK;;;	DB	$0F0,$000,$0FF,$000
;;;KK;;;	DB	$0F0,$008,$0FF,$000
	DB	$000,$000,$06C,$000
	DB	$000,$008,$06E,$000
;
GOST_CSET_GDAT2R
;;;KK;;;	DB	$0F0,$000,$0FF,$020
;;;KK;;;	DB	$0F0,$008,$0FF,$020
	DB	$000,$008,$06C,$020
	DB	$000,$000,$06E,$020
;
GOST_CSET_BDAT2L
;;;KK;;;	DB	$0F0,$000,$0FF,$003
;;;KK;;;	DB	$0F0,$008,$0FF,$003
	DB	$000,$000,$06C,$003
	DB	$000,$008,$06E,$003
;
GOST_CSET_BDAT2R
;;;KK;;;	DB	$0F0,$000,$0FF,$023
;;;KK;;;	DB	$0F0,$008,$0FF,$023
	DB	$000,$008,$06C,$023
	DB	$000,$000,$06E,$023
;
GOST_CSET_RDAT3L
	DB	$0F0,$000,$0064,$002
	DB	$0F0,$008,$0066,$002
	DB	$000,$000,$0068,$002
	DB	$000,$008,$006A,$002
;
GOST_CSET_RDAT3R
	DB	$0F0,$000,$0066,$022
	DB	$0F0,$008,$0064,$022
	DB	$000,$000,$006A,$022
	DB	$000,$008,$0068,$022
;
GOST_CSET_GDAT3L
	DB	$0F0,$000,$0064,$000
	DB	$0F0,$008,$0066,$000
	DB	$000,$000,$0068,$000
	DB	$000,$008,$006A,$000
;
GOST_CSET_GDAT3R
	DB	$0F0,$000,$0066,$020
	DB	$0F0,$008,$0064,$020
	DB	$000,$000,$006A,$020
	DB	$000,$008,$0068,$020
;
GOST_CSET_BDAT3L
	DB	$0F0,$000,$0064,$003
	DB	$0F0,$008,$0066,$003
	DB	$000,$000,$0068,$003
	DB	$000,$008,$006A,$003
;
GOST_CSET_BDAT3R
	DB	$0F0,$000,$0066,$023
	DB	$0F0,$008,$0064,$023
	DB	$000,$000,$006A,$023
	DB	$000,$008,$0068,$023
;
;
GOST_CSET_RDATAL
	DW	GOST_CSET_RDAT0,GOST_CSET_RDAT1
	DW	GOST_CSET_RDAT2L,GOST_CSET_RDAT3L
;
GOST_CSET_GDATAL
	DW	GOST_CSET_GDAT0,GOST_CSET_GDAT1
	DW	GOST_CSET_GDAT2L,GOST_CSET_GDAT3L
;
GOST_CSET_BDATAL
	DW	GOST_CSET_BDAT0,GOST_CSET_BDAT1
	DW	GOST_CSET_BDAT2L,GOST_CSET_BDAT3L
;
GOST_CSET_RDATAR
	DW	GOST_CSET_RDAT0,GOST_CSET_RDAT1
	DW	GOST_CSET_RDAT2R,GOST_CSET_RDAT3R
;
GOST_CSET_GDATAR
	DW	GOST_CSET_GDAT0,GOST_CSET_GDAT1
	DW	GOST_CSET_GDAT2R,GOST_CSET_GDAT3R
;
GOST_CSET_BDATAR
	DW	GOST_CSET_BDAT0,GOST_CSET_BDAT1
	DW	GOST_CSET_BDAT2R,GOST_CSET_BDAT3R
;
;
GOST_CSET_DATAL
	DW	GOST_CSET_RDATAL,GOST_CSET_GDATAL,GOST_CSET_BDATAL
;
GOST_CSET_DATAR
	DW	GOST_CSET_RDATAR,GOST_CSET_GDATAR,GOST_CSET_BDATAR
;
;
GOST_CSET_DATA
	DW	GOST_CSET_DATAR,GOST_CSET_DATAL
;
RGB_GOST_CSET
		PUSH	BC
		LD	D,$000
		CALL	E9MUKI_ADR		;右か、左かの
		LD	A,(HL)			;データアドレスセット
		SLA	A			;
		LD	E,A			;
		LD	HL,GOST_CSET_DATA	;
		CALL	HL_RT_SET		;
;
		LD	A,(ENMYNO2)		;ＲＧＢの
		SUB	R_GOST			;データアドレスセット
		SLA	A			;
		LD	E,A			;
		CALL	HL_RT_SET		;
;
		PUSH	HL			;パターンナンバーより
		CALL	ENCHPT_ADR		;データアドレスセット
		LD	A,(HL)			;
		SLA	A			;
		LD	E,A			;
		POP	HL			;
		CALL	HL_RT_SET		;
;
		PUSH	HL
		CALL	ENCHPT_ADR
		LD	C,$002
		LD	A,(HL)
		CP	$003
		JR	C,GOST_CSET_600
		LD	C,$004
GOST_CSET_600
		POP	HL
		PUSH	BC
;;;KK;;;		LD	C,$004
		CALL	ENOMST			;ＯＡＭセット
;
		POP	BC
		LD	A,C
;;;KK;;;		LD	A,$004
		CALL	NXOMSBL
;
		POP	BC
		RET
;
;
;
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	赤、緑、青の丸虫					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
RGB_MUSI
		CALL	RGB_MUSI_CSET
;
		CALL	E9STCK		;ＳＴＯＰチェック
;
		LD	A,(ENSTAT2)
		CP	MUSI_CLR	;穴に落ちている？
		JR	Z,RGB_MUSI_140	;	YES --> RGB_MUSI_140
		CALL	CREPKEL		;
;
RGB_MUSI_140
		LD	A,(ENSTAT2)
		RST	0
MUSI_MODE
MS_FREE_MUKI	DW	MUSI_FREE_MUKI
MS_FREE_MOVE	DW	MUSI_FREE_MOVE
;;;KK;;;MS_MOVE		DW	MUSI_MOVE
MS_ATTACK_WAIT	DW	MUSI_ATTACK_WAIT
MS_ATTACK	DW	MUSI_ATTACK
MS_HANE		DW	MUSI_HANE
		DW	MUSI_STOP
MS_HAME		DW	MUSI_BOUND_INIT
		DW	MUSI_BOUND
		DW	MUSI_HAME
MS_FOLEOUT	DW	MUSI_FOLEOUT
MS_BOUND2	DW	MUSI_BOUND2
		DW	MUSI_WAIT
MS_CLEAR	DW	MUSI_CLEAR
		DW	MUSI_DELETE
;
MUSI_FRMK	EQU	(MS_FREE_MUKI-MUSI_MODE)/2
MUSI_FRMV	EQU	(MS_FREE_MOVE-MUSI_MODE)/2
;;;KK;;;MUSI_MV		EQU	(MS_MOVE-MUSI_MODE)/2
MUSI_ATCWT	EQU	(MS_ATTACK_WAIT-MUSI_MODE)/2
MUSI_ATC	EQU	(MS_ATTACK-MUSI_MODE)/2
MUSI_HN		EQU	(MS_HANE-MUSI_MODE)/2
MUSI_HM		EQU	(MS_HAME-MUSI_MODE)/2
MUSI_OUT	EQU	(MS_FOLEOUT-MUSI_MODE)/2
MUSI_BND2	EQU	(MS_BOUND2-MUSI_MODE)/2
MUSI_CLR	EQU	(MS_CLEAR-MUSI_MODE)/2
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	丸虫が自由に動きまわる為の向きセット		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
MUSI_FREE_MUKI
		CALL	LDTIM0
		JR	NZ,MUSI_FRMK_500
		CALL	RNDSUB
		AND	$006
		SRL	A
		CALL	E9MUKI_ADR
		LD	(HL),A
		LD	A,$040		;丸虫が自由に
		CALL	ENTIM0_SET	;動きまわるタイマーセット
		LD	A,MUSI_FRMV
		CALL	E9ENSTAT
;
MUSI_FRMK_500
		CALL	E9XCHK
		CP	$030
		JP	NC,MUSI_FRMK_900
		CALL	E9YCHK
		CP	$030
		JP	NC,MUSI_FRMK_900
;;;KK;;;		LD	A,MUSI_MV
		LD	A,MUSI_FRMV
		CALL	E9ENSTAT
;
MUSI_FRMK_900
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	丸虫が壁の枠内にいてるかチェック	x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
MUSI_WAKU_CHK
		CALL	E9ENXPSL_ADR
		LD	A,(HL)
		CP	$016
		JR	NC,MUSI_WAKU_240
		LD	A,$016
		JR	MUSI_WAKU_260
MUSI_WAKU_240
		CP	$089
		JR	C,MUSI_WAKU_280
		LD	A,$089
MUSI_WAKU_260
		LD	(HL),A
MUSI_WAKU_280
;
MUSI_WAKU_300
		CALL	E9ENYPSL_ADR
		LD	A,(HL)
		CP	$01E
		JR	NC,MUSI_WAKU_340
		LD	A,$01E
		JR	MUSI_WAKU_360
MUSI_WAKU_340
		CP	$072
		JR	C,MUSI_WAKU_380
		LD	A,$072
MUSI_WAKU_360
		LD	(HL),A
MUSI_WAKU_380
;
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	丸虫の玉打ち				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
MUSI_TAMA
		CALL	RNDSUB
		AND	$00F		;発射タイミング？
		RET	NZ		;	NO --> return
;
		XOR	A
		LD	(WORK0),A
		LD	E,$000
		LD	D,E
MUSI_TAMA_100
		LD	HL,ENMYNO
		ADD	HL,DE
		LD	A,(HL)
		CP	BHFIR
		JR	NZ,MUSI_TAMA_160
		LD	HL,ENMODE
		ADD	HL,DE
		LD	A,(HL)
		AND	A		;その部屋にいる？
		RET	NZ		;	YES --> return
		LD	HL,WORK0
		INC	(HL)
MUSI_TAMA_160
		INC	DE
		LD	A,E
		AND	$00F
		JR	NZ,MUSI_TAMA_100
;
		LD	A,BHFIR
		CALL	ENIDSHL		;セットＯＫ？
		RET	C		;	NO --> return
;
		CALL	E9ENXPSL_ADR
		LD	A,(HL)
		LD	HL,ENXPSL
		ADD	HL,DE
		LD	(HL),A
;
		CALL	E9ENYPSL_ADR
		LD	A,(HL)
		LD	HL,ENYPSL
		ADD	HL,DE
		LD	(HL),A
;
		PUSH	BC
		ld	c,e
		ld	b,d
;;10/31;		PUSH	DE
;;10/31;		POP	BC
		LD	A,$010
		CALL	PSERCHL
		POP	BC
;
MUSI_TAMA_900
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	丸虫が自由に動きまわる				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
MUSI_FREE_X
		DB	$003,$0FD,$000,$000
MUSI_FREE_Y
		DB	$000,$000,$0FD,$003
;
MUSI_FREE_MOVE
;;;KK;;;		CALL	MUSI_TAMA
;
		CALL	E9MUKI_ADR
		LD	A,(HL)
		LD	E,A
		LD	D,$000
		LD	HL,MUSI_FREE_X
		ADD	HL,DE
		LD	A,(HL)
		CALL	E9XSPD_ADR
		LD	(HL),A
;
		LD	HL,MUSI_FREE_Y
		ADD	HL,DE
		LD	A,(HL)
		CALL	E9YSPD_ADR
		LD	(HL),A
		CALL	E9MVCL		;移動ルーチン
		CALL	ENBGCKL		;ＢＧチェック
;
		CALL	MUSI_WAKU_CHK
;
		CALL	LDTIM0
;;;KK;;;		JR	NZ,MUSI_FRMV_500
		JR	NZ,MUSI_FRMV_900
		LD	A,$010		;丸虫が自由に
		CALL	ENTIM0_SET	;向きを変えるタイマーセット
		LD	A,MUSI_FRMK
		JR	MUSI_FRMV_580
;
MUSI_FRMV_500
		CALL	E9XCHK
		CP	$030
		JP	NC,MUSI_FRMV_900
		CALL	E9YCHK
		CP	$030
		JP	NC,MUSI_FRMV_900
;;;KK;;;		LD	A,MUSI_MV
		LD	A,MUSI_FRMV
MUSI_FRMV_580
		CALL	E9ENSTAT
;
;	アタックチェック
		CALL	E9XCHK			;２０Ｘ２０のエリアに
		CP	$020			;はいった？
		JR	NC,MUSI_FRMV_900	;	NO --> MUSI_MV_900
		CALL	E9YCHK			;
		CP	$020			;
		JR	NC,MUSI_FRMV_900	;
		LD	A,$00E
		CALL	PSERCHL
		LD	A,$020		;虫攻撃開始待ち
		CALL	ENTIM0_SET	;タイマーセット
		LD	A,MUSI_ATCWT
		CALL	E9ENSTAT
;
MUSI_FRMV_900
		CALL	PTN8_CHG
		RET
;;;KK;;;;
;;;KK;;;;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;;;KK;;;;x	丸虫の移動処理					x
;;;KK;;;;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;;;KK;;;RGB_MUSI_SPD
;;;KK;;;		DB	$0C,$0C,$0C,$0C
;;;KK;;;;
;;;KK;;;RGB_MUSI_MUKI
;;;KK;;;		DB	$01,$00,$03,$00,$01,$00
;;;KK;;;;
;;;KK;;;MUSI_MOVE
;;;KK;;;		CALL	E9MVCL		;移動ルーチン
;;;KK;;;		CALL	ENBGCKL		;ＢＧチェック
;;;KK;;;;
;;;KK;;;		CALL	MUSI_WAKU_CHK
;;;KK;;;;
;;;KK;;;		XOR	A
;;;KK;;;		CALL	E9XSPD_ADR
;;;KK;;;		LD	(HL),A
;;;KK;;;		CALL	E9YSPD_ADR
;;;KK;;;		LD	(HL),A
;;;KK;;;MUSI_MV_100
;;;KK;;;		CALL	E9XCHK
;;;KK;;;		CP	$030
;;;KK;;;		JP	NC,MUSI_MV_500
;;;KK;;;		LD	HL,WORK0	;work0に距離
;;;KK;;;		LD	(HL),A		;work1に方向
;;;KK;;;		INC	HL		;をセット
;;;KK;;;		LD	(HL),E		;
;;;KK;;;;
;;;KK;;;		LD	A,$030
;;;KK;;;		LD	(WORK2),A
;;;KK;;;		CALL	E9YCHK
;;;KK;;;		CP	$030
;;;KK;;;		JP	NC,MUSI_MV_400
;;;KK;;;		LD	(WORK2),A	;work2にＹ方向距離
;;;KK;;;		PUSH	DE
;;;KK;;;		SWAP	A		;Ｙスピードセット
;;;KK;;;		AND	$00F		;
;;;KK;;;		LD	E,A		;
;;;KK;;;		LD	D,$000		;
;;;KK;;;		LD	HL,RGB_MUSI_SPD	;
;;;KK;;;		ADD	HL,DE		;
;;;KK;;;		LD	A,(HL)		;
;;;KK;;;		CALL	E9YSPD_ADR	;
;;;KK;;;		LD	(HL),A		;
;;;KK;;;		POP	DE		;
;;;KK;;;		PUSH	DE		;
;;;KK;;;		BIT	1,E		;
;;;KK;;;		JR	NZ,MUSI_MV_120	;
;;;KK;;;		CPL			;
;;;KK;;;		INC	A		;
;;;KK;;;		LD	(HL),A		;
;;;KK;;;;
;;;KK;;;MUSI_MV_120
;;;KK;;;		LD	A,(WORK0)	;Ｘスピードセット
;;;KK;;;		SWAP	A		;
;;;KK;;;		AND	$00F		;
;;;KK;;;		LD	E,A		;
;;;KK;;;		LD	D,$000		;
;;;KK;;;		LD	HL,RGB_MUSI_SPD	;
;;;KK;;;		ADD	HL,DE		;
;;;KK;;;		LD	A,(HL)		;
;;;KK;;;		CALL	E9XSPD_ADR	;
;;;KK;;;		LD	(HL),A		;
;;;KK;;;		LD	A,(WORK1)	;
;;;KK;;;		AND	A		;
;;;KK;;;		JR	NZ,MUSI_MV_140	;
;;;KK;;;		LD	A,(HL)		;
;;;KK;;;		CPL			;
;;;KK;;;		INC	A		;
;;;KK;;;		LD	(HL),A		;
;;;KK;;;;
;;;KK;;;MUSI_MV_140
;;;KK;;;		POP	DE		;向きセット
;;;KK;;;		LD	A,(WORK1)
;;;KK;;;		OR	E
;;;KK;;;		LD	E,A
;;;KK;;;		LD	D,$000
;;;KK;;;		LD	HL,RGB_MUSI_MUKI
;;;KK;;;		ADD	HL,DE
;;;KK;;;		LD	A,(HL)
;;;KK;;;		CALL	E9MUKI_ADR
;;;KK;;;		LD	(HL),A
;;;KK;;;;
;;;KK;;;MUSI_MV_200
;;;KK;;;		CALL	PTN8_CHG
;;;KK;;;;
;;;KK;;;MUSI_MV_300
;;;KK;;;		LD	HL,ENHNFG
;;;KK;;;		ADD	HL,BC
;;;KK;;;		LD	A,(HL)
;;;KK;;;		AND	A		;跳ねる？
;;;KK;;;		JR	Z,MUSI_MV_400	;	NO --> MUSI_MV_400
;;;KK;;;		LD	HL,ENMOD0
;;;KK;;;		ADD	HL,BC
;;;KK;;;		LD	A,(HL)
;;;KK;;;		OR	%10000000
;;;KK;;;		LD	(HL),A
;;;KK;;;		LD	A,MUSI_HN
;;;KK;;;		CALL	E9ENSTAT
;;;KK;;;		JR	MUSI_MV_900
;;;KK;;;;
;;;KK;;;MUSI_MV_400
;;;KK;;;		LD	A,(WORK0)	;２０Ｘ２０のエリアに
;;;KK;;;		CP	$020		;はいった？
;;;KK;;;		JR	NC,MUSI_MV_900	;	NO --> MUSI_MV_900
;;;KK;;;		LD	A,(WORK2)	;
;;;KK;;;		CP	$020		;
;;;KK;;;		JR	NC,MUSI_MV_900	;
;;;KK;;;		CALL	E9XSPD_ADR
;;;KK;;;		LD	A,(HL)
;;;KK;;;		CPL
;;;KK;;;		INC	A
;;;KK;;;		LD	(HL),A
;;;KK;;;		CALL	E9YSPD_ADR
;;;KK;;;		LD	A,(HL)
;;;KK;;;		CPL
;;;KK;;;		INC	A
;;;KK;;;		LD	(HL),A
;;;KK;;;		LD	A,$020		;虫攻撃開始待ち
;;;KK;;;		CALL	ENTIM0_SET	;タイマーセット
;;;KK;;;		LD	A,MUSI_ATCWT
;;;KK;;;		CALL	E9ENSTAT
;;;KK;;;		JR	MUSI_MV_900
;;;KK;;;;
;;;KK;;;MUSI_MV_500
;;;KK;;;		LD	A,$010		;丸虫が自由に
;;;KK;;;		CALL	ENTIM0_SET	;向きを変えるタイマーセット
;;;KK;;;		LD	A,MUSI_FRMK
;;;KK;;;		CALL	E9ENSTAT
;;;KK;;;;
;;;KK;;;MUSI_MV_900
;;;KK;;;		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	攻撃待ち！！					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
MUSI_ATTACK_WAIT
		CALL	LDTIM0
		JR	NZ,MUSI_ATC_KAITEN
;
		LD	(HL),$018	;虫攻撃タイマーセット
		LD	A,MUSI_ATC
		CALL	E9ENSTAT
		JR	MUSI_ATC_KAITEN
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	近づきすぎだ！攻撃してやる！！			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
MUKI_KAITEN
		DB	$002,$003,$001,$000
;
MUSI_ATTACK
		CALL	LDTIM0
		JR	NZ,MUSI_ATC_100
;;;KK;;;		LD	A,MUSI_MV	;タイマーが、切れた。
		LD	A,MUSI_FRMV	;タイマーが、切れた。
		CALL	E9ENSTAT	;今日のところは、見逃してやるぜ！
		XOR	A
		CALL	E9XSPD_ADR
		LD	(HL),A
		CALL	E9YSPD_ADR
		LD	(HL),A
;
MUSI_ATC_100
		CALL	E9MVCL		;移動ルーチン
		CALL	ENBGCKL		;ＢＧチェック
		CALL	MUSI_WAKU_CHK
;
MUSI_ATC_KAITEN
		LD	A,(FRCNT)
		AND	$001
		JR	NZ,MUSI_ATC_300
		CALL	ENCHPT_ADR
		LD	A,(HL)
		INC	A
		AND	$001
		LD	(HL),A
		AND	A
		JR	NZ,MUSI_ATC_300
		CALL	E9MUKI_ADR
		LD	A,(HL)
		PUSH	HL
		LD	E,A
		LD	D,$000
		LD	HL,MUKI_KAITEN
		ADD	HL,DE
		LD	A,(HL)
		POP	HL
		LD	(HL),A
;
MUSI_ATC_300
		LD	HL,ENHNFG
		ADD	HL,BC
		LD	A,(HL)
		AND	A		;跳ねる？
		JR	Z,MUSI_ATC_400	;	NO --> MUSI_ATC_400
		LD	HL,ENMOD0
		ADD	HL,BC
		LD	A,(HL)
		OR	%10000000
		LD	(HL),A
		LD	A,MUSI_HN
		CALL	E9ENSTAT
MUSI_ATC_400
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	スピード・ダウン			x
;x			ＩＮ			x
;x			Ｄ：加減算する値	x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
SPEED_DOWN
		LD	A,(HL)
		BIT	7,A
		JR	Z,SPD_DWN_050
		ADD	A,D
		BIT	7,A
		JR	NZ,SPD_DWN_080
		JR	SPD_DWN_070
SPD_DWN_050
		SUB	D
		BIT	7,A
		JR	Z,SPD_DWN_080
SPD_DWN_070
		XOR	A
SPD_DWN_080
		LD	(HL),A
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	丸虫、跳ねる					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
MUSI_HANE
;;;KK;;;		CALL	E9XSPD_ADR
;;;KK;;;		LD	E,(HL)
;;;KK;;;		CALL	E9YSPD_ADR
;;;KK;;;		LD	D,(HL)
;;;KK;;;		PUSH	DE
;;;KK;;;;
;;;KK;;;		LD	E,$000
;;;KK;;;		LD	HL,ENHNXS
;;;KK;;;		ADD	HL,BC
;;;KK;;;		LD	A,(HL)
;;;KK;;;		AND	A		;Ｘ方向に動いてる？
;;;KK;;;		JR	Z,MUSI_HN_100	;	NO --> MUSI_HN_100
;;;KK;;;		LD	D,$004
;;;KK;;;		CALL	SPEED_DOWN
;;;KK;;;		CALL	E9XSPD_ADR
;;;KK;;;		LD	(HL),A
;;;KK;;;		INC	E
;;;KK;;;;
;;;KK;;;MUSI_HN_100
;;;KK;;;		LD	HL,ENHNYS
;;;KK;;;		ADD	HL,BC
;;;KK;;;		LD	A,(HL)
;;;KK;;;		AND	A		;Ｙ方向に動いてる？
;;;KK;;;		JR	Z,MUSI_HN_200	;	NO --> MUSI_HN_200
;;;KK;;;		LD	D,$004
;;;KK;;;		CALL	SPEED_DOWN
;;;KK;;;		CALL	E9YSPD_ADR
;;;KK;;;		LD	(HL),A
;;;KK;;;		INC	E
;;;KK;;;;
;;;KK;;;MUSI_HN_200
;;;KK;;;		LD	A,E
;;;KK;;;		AND	A		;転がっている？
;;;KK;;;		JR	Z,MUSI_HN_300	;	NO --> MUSI_HN_300
;;;KK;;;		CALL	E9MVCL
;;;KK;;;		CALL	ENBGCKL
;;;KK;;;		LD	A,(FRCNT)
;;;KK;;;		AND	$003		;パターンチェンジ？
;;;KK;;;		JR	NZ,MUSI_HN_800	;	NO --> MUSI_HN_800
;;;KK;;;		CALL	ENCHPT_ADR
;;;KK;;;		LD	A,(HL)
;;;KK;;;		INC	A
;;;KK;;;		AND	$003
;;;KK;;;		LD	(HL),A
;;;KK;;;		JR	MUSI_HN_800
;;;KK;;;;
;;;KK;;;MUSI_HN_300
		LD	HL,ENHNFG
		ADD	HL,BC
		LD	(HL),$000
		CALL	STATINC
;;;KK;;;;
;;;KK;;;MUSI_HN_800
;;;KK;;;		POP	DE
;;;KK;;;		CALL	E9YSPD_ADR
;;;KK;;;		LD	(HL),D
;;;KK;;;		CALL	E9XSPD_ADR
;;;KK;;;		LD	(HL),E
;;;KK;;;		CALL	ENHNBC
;
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	丸虫の停止処理					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
MUSI_STOP
		CALL	ENBGCKL		;ＢＧチェック
		LD	HL,ENHNFG
		ADD	HL,BC
		LD	A,(HL)
		AND	A		;再び、跳ねかえり？
		JR	Z,MUSI_SP_100	;	NO --> MUSI_SP_100
		LD	HL,ENMOD0
		ADD	HL,BC
		LD	A,(HL)
		OR	%10000000
		LD	(HL),A
		LD	A,MUSI_HN
		CALL	E9ENSTAT
		JR	MUSI_SP_900
;
MUSI_SP_100
		LD	HL,ENMOD0
		ADD	HL,BC
		LD	A,(HL)
		OR	%10000000
		LD	(HL),A
		LD	A,(ENMODE2)
		CP	ESTOP		;まだ、止まっている状態？
		JR	NC,MUSI_SP_900	;	YES --> MUSI_SP_900
		LD	A,(HL)
		AND	%01111111
		LD	(HL),A
;;;KK;;;		LD	A,MUSI_MV
		LD	A,MUSI_FRMV
		CALL	E9ENSTAT
;
MUSI_SP_900
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	丸虫が穴にはまる時のバウンドイニシャル		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
MUSI_BOUND_INIT
		LD	E,$028
		CALL	E9ENXPSL_ADR
		LD	A,(HL)
		CP	$050		;左の穴？
		JR	C,MUSI_BND_020	;	YES --> MUSI_BND_020
		LD	E,$078
MUSI_BND_020
		LD	(HL),E
;
		LD	E,$030
		CALL	E9ENYPSL_ADR
		LD	A,(HL)
		CP	$048		;上の穴？
		JR	C,MUSI_BND_040	;	YES --> MUSI_BND_040
		LD	E,$060
MUSI_BND_040
		LD	(HL),E
;
		CALL	E9ZSPD_ADR
		LD	(HL),$010
		JR	MUSI_BND_800
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	丸虫が穴にはまる時のバウンド			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
MUSI_BOUND
		CALL	E9ZSPD_ADR
		DEC	(HL)
;
		CALL	E9ZCLC
		LD	A,(HL)
		BIT	7,A		;着地した？
		JR	Z,MUSI_BND_900
		XOR	A
		LD	(HL),A
		CALL	E9ZSPD_ADR
		LD	(HL),A
MUSI_BND_800
		CALL	STATINC
MUSI_BND_900
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	丸虫が自分の穴にはまった？			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
MUSI_ANA_DAT
		DB	RMUSIAL,GMUSIAL,BMUSIAL
;
MUSI_HAME
		LD	A,(ENMYNO2)
		SUB	R_MUSI
		LD	E,A
		LD	D,$000
		LD	HL,MUSI_ANA_DAT
		ADD	HL,DE
		LD	A,(HL)
		PUSH	AF
		CALL	E9CTBC
		POP	AF
		DEC	HL
		CP	(HL)		;自分の穴？
		JR	NZ,MUSI_HM_100	;	NO --> MUSI_HM_100
		LD	A,MUSI_CLR
		CALL	E9ENSTAT
		LD	HL,ENMOD0	;何も当たらないようにする
		ADD	HL,BC		;
		LD	A,(HL)		;
		OR	%11110000	;
		LD	(HL),A		;
		CALL	E9CTBC
		LD	A,(ENMYNO2)
		SUB	R_MUSI
		ADD	A,RMUSION
		LD	(HL),A
		LD	A,$004		;はまった音
		LD	(SOUND3),A	;
		JR	MUSI_HM_900
;
MUSI_HM_100
		LD	A,$01D		;不正解音
		LD	(SOUND1),A	;
		LD	E,$010
		CALL	E9ENXPSL_ADR
		LD	A,(HL)
		CP	$050		;左の穴？
		JR	C,MUSI_HM_120	;	YES --> MUSI_HM_120
		LD	E,$0F0
MUSI_HM_120
		XOR	A
		CALL	E9YSPD_ADR
		LD	(HL),A
		CALL	E9XSPD_ADR
		LD	(HL),E
		CALL	E9ZSPD_ADR
		LD	(HL),$010
		LD	A,$018
		CALL	ENTIM0_SET
		LD	A,MUSI_OUT
		CALL	E9ENSTAT
;
MUSI_HM_900
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ここは、俺の場所じゃね～。飛び出してやる！	x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
MUSI_FOLEOUT
		CALL	LDTIM0
		JR	NZ,MUSI_OUT_900
;
		CALL	E9XSPD_ADR
		LD	A,(HL)
		AND	A
		JR	Z,MUSI_OUT_100
		CALL	E9MVCL
;
MUSI_OUT_100
		CALL	E9ZSPD_ADR
		DEC	(HL)
		CALL	E9ZCLC
;
MUSI_OUT_200
		CALL	ENBGCKL		;ＢＧチェック
;
		CALL	E9ENZPSL_ADR
		LD	A,(HL)
		BIT	7,A		;着地した？
		JR	Z,MUSI_OUT_300	;	NO --> MUSI_OUT_300
		XOR	A
		LD	(HL),A
		CALL	E9ZSPD_ADR
		LD	(HL),$008
		CALL	E9XSPD_ADR
		SRA	(HL)
		LD	A,MUSI_BND2
		CALL	E9ENSTAT
;
MUSI_OUT_300
MUSI_OUT_900
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	飛び出しバウンド				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
MUSI_BOUND2
		CALL	E9MVCL
;
		CALL	E9ZSPD_ADR
		DEC	(HL)
		CALL	E9ZCLC
;
		PUSH	BC
		CALL	ENBGCKL		;ＢＧチェック
		POP	BC
;
		CALL	E9ENZPSL_ADR
		LD	A,(HL)
		BIT	7,A		;着地した？
		JR	Z,MUSI_BND2_900	;	NO --> MUSI_BND2_900
		LD	A,$020
		CALL	ENTIM0_SET
		CALL	STATINC
;
MUSI_BND2_900
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	再始動ＷＡＩＴ					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
MUSI_WAIT
		CALL	LDTIM0
		JR	NZ,MUSI_WT_900
;
		XOR	A
		LD	(HL),A
		CALL	E9ZSPD_ADR
		LD	(HL),A
		CALL	E9XSPD_ADR
		LD	(HL),A
;;;KK;;;		LD	A,MUSI_MV
		LD	A,MUSI_FRMV
		CALL	E9ENSTAT
		LD	HL,ENMOD0
		ADD	HL,BC
		LD	A,(HL)
		AND	%01111111
		LD	(HL),A
;
MUSI_WT_900
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	全て穴に丸虫がはいった？			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
MUSI_CLEAR
		LD	E,$000
		LD	D,E
MUSI_CLR_140
		LD	HL,ENMYNO
		ADD	HL,DE
		LD	A,(HL)
		CP	R_MUSI
		JR	Z,MUSI_CLR_143
		CP	G_MUSI
		JR	Z,MUSI_CLR_143
		CP	B_MUSI
		JR	NZ,MUSI_CLR_145
MUSI_CLR_143
		LD	HL,ENMODE
		ADD	HL,DE
		LD	A,(HL)
		AND	A		;その部屋にいる？
		JR	Z,MUSI_CLR_145	;	NO --> MUSI_CLR_145
		LD	HL,ENSTAT
		ADD	HL,DE
		LD	A,(HL)
		CP	MUSI_CLR
		JR	C,MUSI_CLR_800
MUSI_CLR_145
		INC	E
		LD	A,E
		CP	$010
		JR	NZ,MUSI_CLR_140
;
		LD	A,$018
		CALL	ENTIM0_SET
		CALL	STATINC
;
		CALL	E9CTBC
		LD	A,(ENMYNO2)
		SUB	R_MUSI
		ADD	A,RMUSION
		LD	(HL),A
;
MUSI_CLR_800
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ＷＡＩＴ＆全ての丸虫消滅			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
MS_ANA_DAT
	DB	RMUSIA,GMUSIA,BMUSIA
;
MUSI_DELETE
		CALL	LDTIM0
		JR	NZ,MUSI_DEL_900
;
		LD	A,(ENMYNO2)
		SUB	R_MUSI
		LD	E,A
		LD	D,$000
		LD	HL,MS_ANA_DAT
		ADD	HL,DE
		LD	A,(HL)
		PUSH	AF
		CALL	E9CTBC
		POP	AF
		LD	(HL),A
;
		CALL	E9ENXPSL_ADR
		LD	A,(HL)
		LD	(WORK0),A
;
		CALL	E9ENYPSL_ADR
		LD	A,(HL)
;
		CALL	E9ENZPSL_ADR
		SUB	(HL)
		LD	(WORK1),A
;
		LD	A,SMK1
		CALL	EXIDSH
;
		CALL	ENBITON
;
MUSI_DEL_900
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	丸虫のＯＡＭセット				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
MUSI_MOVE_DATA
	DW	MUSI_MOVE_DAT0,MUSI_MOVE_DAT1,MUSI_MOVE_DAT2
;
MUSI_STOP_DATA
	DW	MUSI_STOP_DAT0,MUSI_STOP_DAT1,MUSI_STOP_DAT2
;
RGB_MUSI_CSET
		LD	A,(ENMYNO2)
		SUB	R_MUSI
		SLA	A
		LD	(WORK0),A
		LD	D,$000
;
		CALL	ENCHPT_ADR
		LD	A,(ENSTAT2)
		CP	MUSI_HM
		JR	NC,MUSI_CSET_020
		LD	A,(ENMODE2)
		CP	EMOVE
		JR	Z,MUSI_CSET_040
;
MUSI_CSET_020
		LD	A,(HL)
		LD	L,A
		SLA	A
		ADD	A,L
		SLA	A
		SLA	A
		LD	E,A
		PUSH	DE
		LD	A,(WORK0)
		LD	E,A
		LD	HL,MUSI_STOP_DATA
		ADD	HL,DE
		LD	A,(HLI)
		LD	H,(HL)
		LD	L,A
		POP	DE
		JR	MUSI_CSET_080
;
MUSI_CSET_040
		LD	A,(HL)
		LD	L,A
		SLA	A
		ADD	A,L
		SLA	A
		SLA	A
		LD	E,A
		PUSH	DE
		LD	A,(WORK0)
		LD	E,A
		LD	HL,MUSI_MOVE_DATA
		ADD	HL,DE
		LD	A,(HLI)
		LD	H,(HL)
		LD	L,A
		POP	DE
		PUSH	HL
		CALL	E9MUKI_ADR
		LD	A,(HL)
		LD	L,A
		SLA	A
		ADD	A,L
		SLA	A
		SLA	A
		SLA	A
		POP	HL
		ADD	HL,DE
		LD	E,A
MUSI_CSET_080
		ADD	HL,DE
		LD	C,$003
		LD	A,:RGB_MUSI_CSET
		CALL	FUKU_OAM_SET	;ＯＡＭセット
		LD	A,$003
		CALL	NXOMSBL
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	敵ＳＴＯＰチェック				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
E9STCK
	LD	A,(ENMODE2)
	CP	EMOVE
	JR	NZ,E9TC12
;
E9STCK2
	LD	A,(GMMODE)
	CP	GMAP
	JR	Z,E9TC12
;
;;;KK;;;		cp	GPLAY
;;;KK;;;		jr	nz,E9TC12	; ゲームモード　？
;;;KK;;;;					; Yes !!
;;;KK;;;		ld	a,(SBHR)
;;;KK;;;		cp	004
;;;KK;;;		jr	nz,E9TC12	; フェード中　？
;					; No !!
	LD	A,(MSGEFG)
	LD	HL,ENSTFG
	OR	(HL)
	LD	HL,WNDFLG
	OR	(HL)
	JR	NZ,E9TC12
;
	LD	A,(SCRLFG)
	AND	A
	JR	Z,E9TCF0
E9TC12
	POP	AF
E9TCF0
	RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	敵移動						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
E9MVCL	
;
	CALL	E9XCLC 		; X calc
;
E9YCLC
	PUSH	BC
	LD	A,C
	ADD	A,<ENNO
	LD	C,A
	
	CALL	E9XCLC		; Y calc
	POP	BC
	RET
;-----------------------------------------
E9XCLC
	CALL	E9XSPD_ADR
	LD	A,(HL)
	AND	A
	RET	Z
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
	CALL	E9ENXPSL_ADR
;
	POP	AF
	LD	E,$0
	BIT	7,A
	JR	Z,E9XC00
	LD	E,$F0
E9XC00
	SWAP	A
	AND	$0F
	OR	E
	RR	D
	ADC	A,(HL)
	LD	(HL),A
	RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	メッセージチェック				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
E9MSCK
	LD	E,$000
;
	LD	A,(PLYPSL)
	LD	HL,ENSVYL
	SUB	(HL)
	ADD	A,$004
	CP	$008
E9MSSB
	JR	NC,E9C0A0
;
	LD	A,(PLXPSL)
	LD	HL,ENSVXL
	SUB	(HL)
	ADD	A,$10
	CP	$18
	JR	NC,E9C0A0
;
	INC	E
;
	LD	A,(ENMYNO2)
	CP	KUMA0
	JR	Z,E9C022
;
	PUSH	DE
	CALL	E9XYCK
	LD	A,(PLCMKI)
	XOR	$01
	CP	E
	POP	DE
	JR	NZ,E9C0A0
;
E9C022
	LD	HL,MSCRFG
	LD	(HL),$01
;
	LD	A,(MSGEFG)
	LD	HL,WNDFLG
	OR	(HL)
	LD	HL,PLJPFG
	OR	(HL)
	LD	HL,MSOFTM
	OR	(HL)
	JR	NZ,E9C0A0
;
	LD	A,(WNDYPS)
	CP	$80
	JR	NZ,E9C0A0
;
	LD	A,(KEYA2)
	AND	%00010000
	JR	Z,E9C0A0
;
	SCF
	RET
E9C0A0
	AND	A	; (C) reset !
	RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ジャンプ					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
E9ZCLC
		CALL	E9ZSPD_ADR
		LD	A,(HL)
		AND	A		;ジャンプ終了？
		RET	Z		;	YES --> return
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
		CALL	E9ENZPSL_ADR
;
		POP	AF
		LD	E,$0
		BIT	7,A
		JR	Z,E9C00
		LD	E,$F0
E9C00
		SWAP	A
		AND	$0F
		OR	E
		RR	D
		ADC	A,(HL)
		LD	(HL),A
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	敵跳ね返り処理					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
E9HNSB
	LD	HL,ENHNFG
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,E9HN90
;
	DEC	A
	LD	(HL),A
;
	CALL	HNSMST
;
	CALL	E9XSPD_ADR
	LD	A,(HL)
	PUSH	AF
	CALL	E9YSPD_ADR
	LD	A,(HL)
	PUSH	AF
;
	LD	HL,ENHNXS
	ADD	HL,BC
	LD	A,(HL)
	CALL	E9XSPD_ADR
	LD	(HL),A
;
	LD	HL,ENHNYS
	ADD	HL,BC
	LD	A,(HL)
	CALL	E9YSPD_ADR
	LD	(HL),A
;
	CALL	E9MVCL
;
	LD	HL,ENMOD3
	ADD	HL,BC
	LD	A,(HL)
	AND	%00100000
	JR	NZ,E9HN28
;
	CALL	ENBGCKL
E9HN28
	CALL	E9YSPD_ADR
	POP	AF
	LD	(HL),A
;
	CALL	E9XSPD_ADR
	POP	AF
	LD	(HL),A
	POP	AF
;
	CALL	ENHNBC
E9HN90
	RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x							x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
M9CROS
	CALL	CRENPSL
	JR	NC,M920E0
;
M9CRSB
	CALL	PLPSRV
;
	LD	A,(PFUCKID)
	AND	A
	JR	Z,M920D0
;	
	LD	E,A
	LD	D,B
	LD	HL,ENMYNO-1
	ADD	HL,DE
	LD	A,(HL)
	CP	FUCKS
	JR	NZ,M920D0
;
	LD	HL,ENSTAT-1	; Fuck return
	ADD	HL,DE
	LD	(HL),$00
M920D0
	LD	A,(DUSHFG)
	LD	E,A
	CALL	DUSHCL2
	CALL	PLSDCL
	LD	A,E
	SCF
	RET	
M920E0
	AND	A
	RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	リンクＸ軸チェック				x
;x			戻り値				x
;x			Ａ：リンクまでの相対距離	x
;x			Ｅ：０で右、１でリンクが左にいるx
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
E9XCHK
	LD	E,$0
	LD	A,(PLXPSL)
	CALL	E9ENXPSL_ADR
	SUB	(HL)
	BIT	7,A
	JR	Z,E9X010
	INC	E
	CPL
	INC	A
E9X010
	RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	リンクＹ軸チェック				x
;x			戻り値				x
;x			Ａ：リンクまでの相対距離	x
;x			Ｅ：２で上、４でリンクが下にいるx
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
E9YCHK
	LD	E,$4
	LD	A,(PLYPSL)
	CALL	E9ENYPSL_ADR
	SUB	(HL)
	BIT	7,A
	JR	Z,E9Y010
	LD	E,$2
	CPL
	INC	A
E9Y010
	RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	リンクＸＹ軸チェック				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
E9XYCK
		CALL	E9XCHK
		LD	D,A
		PUSH	AF
		LD	A,E
		LD	(WORK0),A
		CALL	E9YCHK
		LD	D,A
		LD	A,E
		XOR	$006
		CP	$004
		JR	NZ,E9XYCK_100
		LD	A,$003
E9XYCK_100
		LD	(WORK1),A
		LD	A,D
		POP	DE
		CP	D
		JR	NC,E9XYCK_200
		LD	A,(WORK0)
		JR	E9XYCK_300
E9XYCK_200
		LD	A,(WORK1)
E9XYCK_300
		LD	E,A
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	オブジェの中心のＢＧユニットチェック		x
;x			戻り値				x
;x			　Ａ：ＢＧユニットナンバー	x
;x			ＨＬ：バッファアドレス		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
E9CTBC
		CALL	E9ENXPSL_ADR
		LD	A,(HL)
		SUB	$08-$07
;
		AND	$F0
		SWAP	A
		LD	E,A
;
		CALL	E9ENYPSL_ADR
		LD	A,(HL)
		SUB	$10-$09
;
		AND	$F0
		OR	E
		LD	E,A
		LD	D,$0
		LD	HL,BGUNDT+$11
		LD	A,H
		ADD	HL,DE
		LD	H,A
		LD	A,(HL)
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ＸスピードのアドレスをＧＥＴ				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
E9XSPD_ADR
		LD	HL,ENXSPD
		ADD	HL,BC
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ＹスピードのアドレスをＧＥＴ				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
E9YSPD_ADR
		LD	HL,ENYSPD
		ADD	HL,BC
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ＺスピードのアドレスをＧＥＴ				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
E9ZSPD_ADR
		LD	HL,ENZSPD
		ADD	HL,BC
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	向きＲＡＭアドレスをＧＥＴ				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
E9MUKI_ADR
		LD	HL,ENMUKI
		ADD	HL,BC
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	パターンＲＡＭアドレスをＧＥＴ				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
ENCHPT_ADR
		LD	HL,ENCHPT
		ADD	HL,BC
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	モード・ナンバーセット					x
;x			セット値				x
;x				Ａ：セットする値		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
E9ENSTAT
		LD	HL,ENSTAT
		ADD	HL,BC
		LD	(HL),A
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	０と１のパターンチェンジ				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
PTN_0_1_CHG
		CALL	ENCHPT_ADR
		LD	A,(HL)
		XOR	$001
		LD	(HL),A
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	８フレームパターンチェンジ				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
PTN8_CHG
		LD	A,(FRCNT)
		AND	$007		;パターンチェンジ？
		RET	NZ		;	NO --> return
		CALL	ENCHPT_ADR
		LD	A,(HL)
		INC	A
		AND	$001
		LD	(HL),A
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	現在のＸポジションのアドレスをＧＥＴ			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
E9ENXPSL_ADR
		LD	HL,ENXPSL
		ADD	HL,BC
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	現在のＹポジションのアドレスをＧＥＴ			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
E9ENYPSL_ADR
		LD	HL,ENYPSL
		ADD	HL,BC
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	現在のＺポジションのアドレスをＧＥＴ			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
E9ENZPSL_ADR
		LD	HL,ENZPSL
		ADD	HL,BC
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	移動先のＸポジションのアドレスをＧＥＴ			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
E9SAKIX_ADR
		LD	HL,ENSAKIX
		ADD	HL,BC
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	移動先のＹポジションのアドレスをＧＥＴ			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
E9SAKIY_ADR
		LD	HL,ENSAKIY
		ADD	HL,BC
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	元のＸポジションのアドレスをＧＥＴ			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
E9MOTOX_ADR
		LD	HL,ENMOTOX
		ADD	HL,BC
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	元のＹポジションのアドレスをＧＥＴ			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
E9MOTOY_ADR
		LD	HL,ENMOTOY
		ADD	HL,BC
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	移動先のＸポジションに値をセット			x
;x			Ａ：セットする値			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
E9SAKIX_SET
		LD	HL,SVBK
		LD	(HL),$002
		PUSH	HL
		CALL	E9SAKIX_ADR
		LD	(HL),A
		POP	HL
		LD	(HL),$000
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	移動先のＹポジションに値をセット			x
;x			Ａ：セットする値			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
E9SAKIY_SET
		LD	HL,SVBK
		LD	(HL),$002
		PUSH	HL
		CALL	E9SAKIY_ADR
		LD	(HL),A
		POP	HL
		LD	(HL),$000
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	移動先のＸポジションの値をゲット			x
;x			Ａ：セットする値			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
E9SAKIX_GET
		LD	HL,SVBK
		LD	(HL),$002
		PUSH	HL
		CALL	E9SAKIX_ADR
		LD	A,(HL)
		POP	HL
		LD	(HL),$000
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	移動先のＹポジションの値をゲット			x
;x			Ａ：セットする値			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
E9SAKIY_GET
		LD	HL,SVBK
		LD	(HL),$002
		PUSH	HL
		CALL	E9SAKIY_ADR
		LD	A,(HL)
		POP	HL
		LD	(HL),$000
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	テーブルＤＡＴＡを"ＨＬ"に再セット			x
;x			セット値				x
;x				ＤＥ：インデックス		x
;x				ＨＬ：テーブルアドレス		x
;x			戻り値					x
;x				ＨＬ：アドレス			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
HL_RT_SET
		ADD	HL,DE
		LD	A,(HLI)
		LD	H,(HL)
		LD	L,A
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	"ENTIM0"に値をセット					x
;x				Ａ：セットする値		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
ENTIM0_SET
		LD	HL,ENTIM0
		ADD	HL,BC
		LD	(HL),A
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	敵クリア						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
E9CLER
	LD	HL,ENMODE
	ADD	HL,BC
	LD	(HL),$000
	RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	特殊ＢＧチェック					x
;x		入力値						x
;x		ＤＥ：Ｘ，Ｙの順番のデータのアドレス		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
E9BGCK_BOSS
		LD	A,(DE)
		LD	L,A
		INC	DE
		LD	A,(DE)
		LD	D,A		;Ｙ方向の幅
		LD	E,L		;Ｘ方向の幅
		CALL	E9ENXPSL_ADR
		LD	A,(HL)
		CP	$01C
		JR	NC,E9BGCK_050
		LD	A,$01C
		JR	E9BGCK_080
E9BGCK_050
		ADD	A,E
		CP	$0A0
		JR	C,E9BGCK_100
		LD	A,$0A0
		SUB	E
E9BGCK_080
		LD	(HL),A
;
E9BGCK_100
		CALL	E9ENYPSL_ADR
		LD	A,(HL)
		CP	$020
		JR	NC,E9BGCK_150
		LD	A,$020
		JR	E9BGCK_180
E9BGCK_150
		ADD	A,E
		CP	$080
		JR	C,E9BGCK_200
		LD	A,$080
		SUB	E
E9BGCK_180
		LD	(HL),A
;
E9BGCK_200
		RET
;
;---------------------------------------------------------------
;	服のダンジョンの入れ替え用カラーデータ
;---------------------------------------------------------------
FDJCOL0
		DW	$47ff,$0e39,$00c7,$0000	; ( 7 )
;- - - - - - - - - - - - - - - - - - - - - - - - - - - - -
FDJCOL1
		DW	$318C,$26C4,$1524,$0000	; ( 7 )
;- - - - - - - - - - - - - - - - - - - - - - - - - - - - -
FDJCOL2
		DW	$47ff,$7d87,$3c83,$0000	; ( 7 )
;- - - - - - - - - - - - - - - - - - - - - - - - - - - - -
FDJCOL3
		DW	$760d,$7d45,$3ca4,$0000	; ( 7 )
;- - - - - - - - - - - - - - - - - - - - - - - - - - - - -
FDJCOL4
		DW	$51f3,$0000,$0d6d,$1717	; ( 7 )
;- - - - - - - - - - - - - - - - - - - - - - - - - - - - -
FDJCOL5
		DW	$51f3,$0000,$7c00,$7eae	; ( 7 )
;- - - - - - - - - - - - - - - - - - - - - - - - - - - - -
FDJCOL6
		DW	$47ff,$51f3,$2867,$0000	; ( 7 )
;- - - - - - - - - - - - - - - - - - - - - - - - - - - - -
FDJCOL7
		DW	$47ff,$51f3,$2867,$0000	; ( 7 )
;- - - - - - - - - - - - - - - - - - - - - - - - - - - - -
FDJCOLF
		DW	$51f3,$0000,$01b4,$7fff	; ( 6 )
		DW	$51f3,$0000,$7ca5,$7fff	; ( 7 )
;
;
;---------------------------------------------------------------
;	服のダンジョン	(１画面ごとにカラー転送)
;			ＢＧもしくは、ＯＢＪだけ
;---------------------------------------------------------------
FukuBGIndex
	DB	$000,$004,          $000,$000
	DB	$000,$000,$000,$003,$000,$003
	DB	     $001,$001,$000,$001
	DB	     $001,$000,$001,$000
	DB	     $000,$002,$000,$000
;
FukuOBJIndex
	DB	$080,$000,          $007,$006
	DB	$000,$000,$007,$000,$000,$000
	DB	     $000,$000,$005,$000
	DB	     $000,$000,$000,$007
	DB	     $000,$000,$000,$000
;
FukuColDataTbl
	DW	FDJCOL0,FDJCOL1,FDJCOL2,FDJCOL3
	DW	FDJCOL4,FDJCOL5,FDJCOL6,FDJCOL7
;
FukuDNJ_COL
		LD	A,(DNJNNO)
		CP	NEWDJ		; 新ダンジョン？
		RET	NZ
;
		LD	D,$000
		LD	A,(GRNDPT)
		LD	E,A
		LD	HL,FukuBGIndex
		ADD	HL,DE
		LD	A,(HL)
		AND	A
		JR	Z,FukuDNJ_500
;
		SLA	A
		LD	E,A
		LD	HL,FukuColDataTbl-2
		ADD	HL,DE
		LD	A,(HLI)
		LD	H,(HL)
		LD	L,A
		LD	DE,BGCGWK+$38	; 転送先アドレス
		LD	BC,$0008	; 個数
		CALL	DATA_MOV	; データ転送
;
		LD	A,BGCOL_BITFG
		LD	(CGDMAF),A	; 転送フラグセット
;
		RET
;
FukuDNJ_500
		LD	HL,FukuOBJIndex
		ADD	HL,DE
		LD	A,(HL)
		AND	A
		RET	Z
;
		BIT	7,A		;ラストボスカラーセット？
		JR	Z,FukuDNJ_600	;	NO --> FukuDNJ_600
		LD	HL,FDJCOLF
		LD	DE,OBCGWK+$30	; 転送先アドレス
		LD	BC,$0010	; 個数
		JR	FukuDNJ_650
;
FukuDNJ_600
		SLA	A
		LD	E,A
		LD	HL,FukuColDataTbl-2
		ADD	HL,DE
		LD	A,(HLI)
		LD	H,(HL)
		LD	L,A
		LD	DE,OBCGWK+$38	; 転送先アドレス
		LD	BC,$0008	; 個数
FukuDNJ_650
		CALL	DATA_MOV	; データ転送
;
		LD	A,OBJCOL_BITFG
		LD	(CGDMAF),A	; 転送フラグセット
;
		RET
;
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	パネル順番秘密						%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
PANELCD
	DB	$FF,$00,$FF,$20
	DB	$3A,$00,$3A,$20
	DB	$3C,$00,$3C,$20
	DB	$3C,$00,$3C,$20
PNCKXP
	DB	$58,$78,$78,$28,$28
	DB	$28,$78,$58,$28,$78
	DB	$28,$78,$28,$78,$58
	DB	$58,$28,$78,$28,$78
PNCKYP
	DB	$40,$30,$50,$50,$30
	DB	$30,$50,$40,$50,$30
	DB	$50,$50,$30,$30,$40
	DB	$40,$50,$30,$30,$50
;- - - - - - - - - - - - - - - - - - - 
PNFLCD
;0
	DB	$F2,$00,$3A,$00
	DB	$F2,$08,$3A,$20
	DB	$0E,$00,$3A,$00
	DB	$0E,$08,$3A,$20
;1
	DB	$F6,$0A,$3A,$00
	DB	$F6,$12,$3A,$20
	DB	$0A,$F6,$3A,$00
	DB	$0A,$FE,$3A,$20
;2
	DB	$00,$0E,$3A,$00
	DB	$00,$16,$3A,$20
	DB	$00,$F2,$3A,$00
	DB	$00,$FA,$3A,$20
;3
	DB	$0A,$0A,$3A,$00
	DB	$0A,$12,$3A,$20
	DB	$F6,$F6,$3A,$00
	DB	$F6,$FE,$3A,$20
;- - - - - - - - - - - - - - - - - - - 
PANELMV
PANEL2MV
	LD	A,(ENSTAT2)
	AND	A
	JR	Z,PN0000	;当たりフラッシュ？
;				;YES !
	CALL	LDTIM0
	JP	Z,E9CLER
	RLA
	RLA
	AND	%00110000
	LD	E,A
	LD	D,B
	LD	HL,PNFLCD
	ADD	HL,DE
	LD	C,$04
	CALL	ENOMST
;
	LD	A,$02
	CALL	NXOMSBL
	RET	
;
PN0000
	CALL	E9STCK
;
	LD	A,(ENMYNO2)
	CP	PANEL
	JR	NZ,PN0001
;
	LD	A,(FRCNT)
	RRA
	RRA
	AND	$03
	CALL	ENPTST
;
	LD	DE,PANELCD
	CALL	EN2CST
PN0001
	LD	HL,ENCONT
	ADD	HL,BC
;
	LD	A,(PANELMD)
	LD	E,A
	SLA	A
	SLA	A
	ADD	A,E
	ADD	A,(HL)
	LD	E,A
	LD	D,B
;
	LD	HL,PNCKXP
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENXPSL
	ADD	HL,BC
	LD	(HL),A
	LD	HL,PNCKYP
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	(HL),A
;
	CALL	ENPSSV
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(FTUNNO)
	CP	(HL)
	JR	Z,PN00A0
	CP	DTURZ
	JR	NZ,PN00A0
;
	CALL	CRENPSL
	JR	NC,PN0090
;
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	CP	$04
	JR	NZ,PN0030
;
	CALL	E9CLER
;
	CALL	NAZOCLR	;(S)
;
	JR	PN00A0
PN0030
	INC	(HL)
;
	LD	A,$13
	LD	(SOUND1),A	;(S)
;
	LD	A,PANEL
	CALL	ENIDSHL
	JR	C,PN0038
;
	LD	A,(WORK0)
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	A,(WORK1)
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),A
;
	PUSH	BC
		ld	c,e
		ld	b,d
;;10/31;	PUSH	DE
;;10/31;	POP	BC
;
	CALL	STATINC
	CALL	LDTIM0
	LD	(HL),$18
;
	POP	BC
PN0038
	JR	PN00A0
;
PN0090
	LD	HL,ENCONT
	ADD	HL,BC
	LD	(HL),B
;
PN00A0
	LD	A,(FTUNNO)
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	(HL),A
	RET
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	ＺＥ５．Ｓの中にあったのをここに移動			%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	パックン 花					%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
PACKNMV
	LD	HL,ENHNXS
	ADD	HL,BC
	LD	(HL),B
	LD	HL,ENHNYS
	ADD	HL,BC
	LD	(HL),B
;
	CALL	PACKNCS
;
		LD	A,(GMMODE)
		CP	GPLAY		;ゲームモード？
		RET	NZ		;	NO --> return
		LD	A,(SBHR)
		CP	$004		;フェード終わっている？
		RET	NZ		;	NO --> return
;
	CALL	E9STCK
;
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	NZ,PAC0010
;
	INC	(HL)
;
	LD	A,(ENSVYL)
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	(HL),A
PAC0010
	CALL	E9HNSB
;
	LD	A,(ENSTAT2)
	RST	00
	DW	PAC1000	;静止
	DW	PAC2000	;上昇！
	DW	PAC3000	;静止
	DW	PAC4000	;下降！
;----------------------------------------
PAC1000
	CALL	LDTIM0
	JR	NZ,PAC1090
;
	LD	(HL),$40
;
;;;KK;;;	CALL	E9XCHK
	LD	E,$0
	LD	A,(PLXPSL)
	CALL	E9ENXPSL_ADR
	SUB	(HL)
	BIT	7,A
	JR	Z,PAC1050
	INC	E
PAC1050
	LD	D,A
	ADD	A,$10
	CP	$20
	JR	C,PAC1090	;接近チェック！
;
	CALL	STATINC
PAC1090
	RET
;----------------------------------------
PACCDD
	DB	$04,$04,$03,$02,$01,$00,$00,$00
PACADD
	DB	$E0,$E0,$E8,$F0,$00,$00,$00,$00
;
PAC2000
	CALL	CREPKEL
;
	CALL	LDTIM0
	JR	NZ,PAC2010
;
	LD	(HL),$80
;
	CALL	STATINC
	RET
PAC2010
	RRA
	RRA	
	RRA	
	AND	$07
	LD	E,A
	LD	D,B
	LD	HL,PACCDD
	ADD	HL,DE
	LD	A,(HL)
	CALL	ENPTST
;
	LD	HL,PACADD
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENWRK0
	ADD	HL,BC
	ADD	A,(HL)
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	(HL),A
PAC2020
	RET
;----------------------------------------
PAC3000
	CALL	CREPKEL
;
	CALL	LDTIM0
	JR	NZ,PAC3090
;
	LD	(HL),$40
;
	CALL	STATINC
PAC3090
	LD	E,$04
	AND	%00010000
	JR	NZ,PAC30A0
	INC	E
PAC30A0
	LD	A,E
	CALL	ENPTST
	RET
;----------------------------------------
PACCDD2
	DB	$00,$00,$00,$00,$01,$02,$03,$05
PACADD2
	DB	$00,$00,$00,$00,$00,$F0,$E8,$E0
;
PAC4000
	CALL	CREPKEL
;
	CALL	LDTIM0
	JR	NZ,PAC4010
;
	LD	(HL),$40
;
	CALL	STATINC
	LD	(HL),B
	RET
PAC4010
	RRA
	RRA	
	RRA	
	AND	$07
	LD	E,A
	LD	D,B
	LD	HL,PACCDD2
	ADD	HL,DE
	LD	A,(HL)
	CALL	ENPTST
;
	LD	HL,PACADD2
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENWRK0
	ADD	HL,BC
	ADD	A,(HL)
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	(HL),A
	RET
;=======================================
PACKNCD
;0
	DB	$FF,$FF,$FF,$FF
	DB	$FF,$FF,$FF,$FF
	DB	$FF,$FF,$FF,$FF
	DB	$FF,$FF,$FF,$FF
;1
	DB	$F0,$00,$74,$02
	DB	$F0,$08,$74,$22
	DB	$FF,$FF,$FF,$FF
	DB	$FF,$FF,$FF,$FF
;2
	DB	$00,$00,$70,$02
	DB	$00,$08,$70,$22
	DB	$FF,$FF,$FF,$FF
	DB	$FF,$FF,$FF,$FF
;3
	DB	$00,$00,$70,$02
	DB	$00,$08,$70,$22
;;;KK;;;	DB	$F8,$00,$74,$02
;;;KK;;;	DB	$F8,$08,$74,$22
	DB	$08,$00,$76,$00
	DB	$08,$08,$76,$20
;4
	DB	$00,$00,$70,$02
	DB	$00,$08,$70,$22
	DB	$10,$00,$72,$00
	DB	$10,$08,$72,$20
;5
	DB	$00,$00,$78,$02
	DB	$00,$08,$78,$22
	DB	$10,$00,$72,$00
	DB	$10,$08,$72,$20
;- - - - - - - - - - - - - - - - - -
PACKNCS
	LD	A,(ENCHPT2)
	RLA
	RLA
	RLA
	RLA
	AND	%11110000
	LD	E,A
	LD	D,B
	LD	HL,PACKNCD
	ADD	HL,DE
;
	LD	C,$04
	CALL	ENOMST
	RET
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	オカリナカラーセット					%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
OKARINA_COLDT
	DW	$47ff,$1419,$100a,$0000
;
OKARINA_COLST
		LD	HL,OBCGWK+(($007*$004)*$002)
		LD	DE,OKARINA_COLDT
OKARINA_LOOP
		LD	A,(DE)
		LD	(HLI),A
		INC	DE
		LD	A,L
		AND	$007
		JR	NZ,OKARINA_LOOP
		LD	A,OBJCOL_BITFG
		LD	(CGDMAF),A
;
		RET
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	ＺＥＮ．Ｓのなかにあったのをここに移動			%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
BSBXAD
	DB	$08,$18 ;,$18
	DB	$08,$18 ;,$18
BSBYAD
	DB	$10,$10 ;,$10
	DB	$20,$20 ;,$20
;- - - - - - - - - - - - - - - - - - - - -
BBGBRST
	PUSH	BC
;
	LD	C,$3
	LD	B,$0
BSB010
	LD	A,KTOBJ
	CALL	ENIDSHL
	JR	C,BSB090
;
	LD	HL,ENTIM1
	ADD	HL,DE
	LD	(HL),$0F
;
	LD	A,(OBJXP)
	LD	HL,BSBXAD
	ADD	HL,BC
	ADD	A,(HL)
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	A,(OBJYP)
	LD	HL,BSBYAD
	ADD	HL,BC
	ADD	A,(HL)
	LD	HL,WORK3
	SUB	(HL)
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,ENMOD0
	ADD	HL,DE
	LD	(HL),%11000100
;
BSB090
	DEC	C
	LD	A,C
	CP	$FF
	JR	NZ,BSB010
;
	POP	BC
;
	RET
;
;
;
;+----------------------------------------------+
;|	七色に光る楽器				|
;+----------------------------------------------+
GAKKI_COL_DAT
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
GAKKI_COL_SET
		LD	A,(FADEMDFG)
		LD	A,(SBHR)
		CP	$04
		RET	NZ
		XOR	A		;ヨーロッパ版で追加
		LD	(CGWORK+$042),A	;
		LD	A,(CGBFLG)
		AND	A
		RET	Z
;
		LD	A,(FRCNT)
		SRL	A
		AND	%00111100
		LD	E,A
		LD	D,$000
		LD	HL,GAKKI_COL_DAT
		ADD	HL,DE
		LD	DE,OBCGWK+$00C
GAKKI_COL_LOP
		LD	A,(HLI)
		LD	(DE),A
		INC	DE
		LD	A,E
		AND	$003
		JR	NZ,GAKKI_COL_LOP
		LD	A,OBJCOL_BITFG
		LD	(CGDMAF),A
		RET
;
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	２番の寸劇チェック				%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
GEKI02_CHECK
		LD	A,(MARINFG)
		AND	A		;マリン連れている？
		JP	Z,NO_GEKI	;	NO --> NO_GEKI
;
		LD	A,(PHOTOFG)
		AND	%00000010	;２番の写真を持ってる？
		JP	NZ,NO_GEKI	;	YES --> NO_GEKI
;
		LD	A,(PLXPSL)
		CP	$024
		JP	C,NO_GEKI
		CP	$02C
		JP	NC,NO_GEKI
;
		LD	A,(PLYPSL)
		CP	$04E
		JP	C,NO_GEKI
		CP	$052
		JP	NC,NO_GEKI
		LD	E,GEKI02	;２番の寸劇
		JP	GO_GEKI
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	４番の寸劇チェック				%
;%				風見鶏			%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
GEKI04_CHECK
		LD	A,(MARINFG)
		AND	A		;マリンを連れている？
		JP	Z,NO_GEKI	;	NO --> NO_GEKI
;
		LD	A,(PHOTOFG)
		AND	%00001000	;４番の写真持ってる？
		JP	NZ,NO_GEKI	;	YES --> NO_GEKI
;
		LD	A,(PLXPSL)
		CP	$050
		JP	C,NO_GEKI
		CP	$060
		JP	NC,NO_GEKI
		LD	A,(PLYPSL)
		CP	$058
		JP	C,NO_GEKI
		CP	$068
		JP	NC,NO_GEKI
		LD	E,GEKI04	;４番の寸劇
		JP	GO_GEKI
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	５番の寸劇チェック				%
;%		注：ヤッホーばーさんからＣＡＬＬされる	%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
C_BOY5_COL
;;;KK;;;	DW	$47ff,$0000,$4631,$7e9f
	DW	$7fff,$0000,$4471,$7d7f
;
GEKI05_CHECK
		LD	A,(GRNDPT)
		CP	$0B1		;うるりらジーさんの家の前？
		RET	NZ		;	NO --> return
;
		LD	A,(PHOTOFG)
		AND	%00000001	;１枚目の写真を持ってる？
		RET	Z		;	NO --> return
		LD	A,(PHOTOFG)
		AND	%00010000	;５番の写真持ってる？
		RET	NZ		;	YES --> return
;
		LD	A,(MARINFG)	;何か、オプションを
		LD	HL,OBAKEFG	;	付けている？
		OR	(HL)		;	YES --> return
		LD	HL,NIWATFG	;
		OR	(HL)		;
		LD	HL,WANFLG	;
		OR	(HL)		;
		AND	$07F		;
		RET	NZ		;
;
		PUSH	BC
		LD	A,(PBANK)
		PUSH	AF
		LD	A,:GEKI05_CHECK
		LD	(PBANK),A
		LD	A,C_BOY
		CALL	ENIDSHL
		POP	AF
		LD	(PBANK),A
;
		LD	HL,ENXPSL
		ADD	HL,DE
		LD	(HL),$020
;
		LD	A,(SCRLFG)
		AND	A
		JR	NZ,GK5_CHK_500
		LD	(HL),$0E0
;
GK5_CHK_500
		LD	HL,ENYPSL
		ADD	HL,DE
		LD	(HL),$06A
		POP	BC
;
		RET
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	６番の寸劇チェック				%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
GEKI06_CHECK
		LD	A,(PHOTOFG)
		AND	%00100000	;６番の写真を持ってる？
		JP	NZ,NO_GEKI	;	YES --> NO_GEKI
;
		LD	HL,ITEMB
		LD	E,$00C
NXT_CHK_LOOP				;剣を持ってる？
		LD	A,(HLI)		;	NO --> NO_GEKI
		CP	$001
		JR	Z,NXT_CHK_100
		DEC	E
		LD	A,E
		AND	A
		JR	NZ,NXT_CHK_LOOP
		JP	NO_GEKI
NXT_CHK_100
		LD	A,(WANFLG)
		AND	A		;ワンワンいる？
		JP	NZ,NO_GEKI	;	NO --> NO_GEKI
;
		LD	A,(MARINFG)	;何か、オプションを
		LD	HL,OBAKEFG	;	付けている？
		OR	(HL)		;	YES --> NO_GEKI
		LD	HL,NIWATFG	;
		OR	(HL)		;
		AND	A		;
		JP	NZ,NO_GEKI	;
;
		LD	A,(PLXPSL)
		CP	$038
		JP	C,NO_GEKI
		CP	$058
		JP	NC,NO_GEKI
		LD	A,(PLYPSL)
		CP	$050
		JP	C,NO_GEKI
		CP	$060
		JP	NC,NO_GEKI
		LD	E,GEKI06	;６番の寸劇
		JP	GO_GEKI
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	１０番の寸劇チェック				%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
GEKI10_CHECK
		LD	A,(GRRMSV+$79)
		AND	%00010000	;門閉じている？
		JP	NZ,NO_GEKI	;	NO --> NO_GEKI
;
		LD	A,(PHOTOFG+1)
		AND	%00000010	;１０番の写真を持ってる？
		JR	NZ,NO_GEKI	;	YES --> NO_GEKI
;
		LD	A,(GRKEY5)	;葉っぱを集め終えて
		CP	$005		;	リチャードイベント終了？
		JR	NC,NO_GEKI	;	YES --> NO_GEKI
;
		LD	A,(PLXPSL)
		CP	$050
		JR	C,NO_GEKI
		CP	$060
		JR	NC,NO_GEKI
;
		LD	E,GEKI10	;１０番の寸劇
		LD	A,(PLYPSL)
		CP	$038
		JR	C,NO_GEKI
		CP	$040
		JR	C,GO_GEKI
		JR	NO_GEKI
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	１１番の寸劇チェック				%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
GEKI11_CHECK
		LD	A,(PHOTOFG+1)
		AND	%00000100	;１１番の写真を持ってる？
		JR	NZ,NO_GEKI	;	YES --> NO_GEKI
;
		LD	A,(GRKEY5)
		CP	$006		;リチャードイベント終了？
		JR	NZ,NO_GEKI	;	NO --> NO_GEKI
;
		LD	HL,DJRMSV
		LD	DE,$000E3
		ADD	HL,DE
		LD	A,(HL)
		AND	%01000000	;オバケイベントの後？
		JR	Z,NO_GEKI	;	NO --> NO_GEKI
		LD	A,(PLXPSL)
		CP	$025
		JR	C,NO_GEKI
		CP	$030
		JR	NC,NO_GEKI
;
		LD	E,GEKI11	;１１番の寸劇
		LD	A,(PLYPSL)
		CP	$068
		JR	C,NO_GEKI
		CP	$06E
		JR	C,GO_GEKI
		JR	NO_GEKI
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	寸劇モードへいくかチェック				%
;%			戻り値					%
;%			Ａ：０以外　寸劇モードへ行かない	%
;%			　　０　　　寸劇モードへ行く		%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
GEKI_CHECK
		LD	A,(SCRLFG)
		AND	A		;スクロール中？
		JR	NZ,NO_GEKI	;	YES --> NO_GEKI
;
		LD	A,(PHOTOFG)
		AND	%00000001	;１番の写真を持ってる？
		JR	Z,NO_GEKI	;	NO --> NO_GEKI
;
		LD	A,(DJFLAG)
		AND	A		;地上？
		JR	NZ,GK_CHK_200	;	NO --> GK_CHK_200
;
		LD	A,(GRNDPT)
		CP	$0F0		;マップ左下の崖？
		JP	Z,GEKI02_CHECK	;	YES --> GEKI02_CHECK
;
		CP	$092		;風見鶏のところ？
		JP	Z,GEKI04_CHECK	;	YES --> GEKI04_CHECK
;
		CP	$0A1		;ワンワンの家の前？
		JP	Z,GEKI06_CHECK	;	YES --> GEKI06_CHECK
;
		CP	$079		;お城の門の前？
		JP	Z,GEKI10_CHECK	;	YES --> GEKI10_CHECK
;
		CP	$064		;ひとつだけあるお墓のところ？
		JP	Z,GEKI11_CHECK	;	YES --> GEKI11_CHECK
;
NO_GEKI
		LD	A,$001
		RET
;
GO_GEKI
		LD	A,$02
		LD	(PLSTOP),A
		LD	A,E
		LD	(GMMODE),A
		XOR	A
		LD	(SBHR),A
		LD	(SBCNT),A
		LD	(ITMODE),A
		RET
;
GK_CHK_200				;地上以外の場所チェック
		LD	A,(DNJNNO)
		CP	$00F
		JR	NZ,GK_CHK_400
;
		LD	A,(YKFLAG)
		AND	A		;横画面？
		JR	Z,NO_GEKI	;	NO --> NO_GEKI
;
GK_CHK_400				;地上以外の場所チェック
		JR	NO_GEKI
;
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	壷 ボスのイニシャル			%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
TBOSSIT
		XOR	A
		LD	HL,ENWRK4
		ADD	HL,BC
		LD	(HL),A
;
	LD	HL,ENXPSL
	ADD	HL,BC
	LD	A,(HL)
	ADD	A,$08
	LD	(HL),A
	RET
;
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x		ＯＡＭを逆にセットする処理				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
OAMGYAK
		ld	a,(CGDMAF)
		and	a
		ret	nz		; カラー転送　？
;					; No !!
		ld	a,(CGBFLG)
		and	a
		ret	z		; ＣＧＢ　？enxpsl
;					; Yes !!
		ld	a,(OMHNFG)
		and	a
		ret	z		; ＯＡＭの順番を変える　？
;					; No !!
		ld	a,(GMMODE)
		cp	GPLAY
		ret	nz		; ゲーム中　？
;					; Yes !!
		ld	a,(ITMODE)
		cp	GPMA
		ret	nz
;
		xor	a
		ld	(OMHNFG),a
;
		ld	hl,OAM
		ld	de,OAM+09ch
		ld	b,0a0h/4/2
;
OAMGYAK_100
		ld	c,(hl)
		ld	a,(de)
		ld	(hli),a
		ld	a,c
		ld	(de),a
		inc	de
;
		ld	c,(hl)
		ld	a,(de)
		ld	(hli),a
		ld	a,c
		ld	(de),a
		inc	de
;
		ld	c,(hl)
		ld	a,(de)
		ld	(hli),a
		ld	a,c
		ld	(de),a
		inc	de
;
		ld	c,(hl)
		ld	a,(de)
		ld	(hli),a
		ld	a,c
		ld	(de),a
;
		ld	c,007
		ld	a,e
		sub	c
		ld	e,a
		dec	b
		jr	nz,OAMGYAK_100
;
;;;;;;;;		ld	hl,OAM+090h
;;;;;;;;		ld	de,OAM+09ch
;;;;;;;;		ld	b,010h/4/2
;;;;;;;;;
;;;;;;;;OAMGYAK_150
;;;;;;;;		ld	c,(hl)
;;;;;;;;		ld	a,(de)
;;;;;;;;		ld	(hli),a
;;;;;;;;		ld	a,c
;;;;;;;;		ld	(de),a
;;;;;;;;		inc	de
;;;;;;;;;
;;;;;;;;		ld	c,(hl)
;;;;;;;;		ld	a,(de)
;;;;;;;;		ld	(hli),a
;;;;;;;;		ld	a,c
;;;;;;;;		ld	(de),a
;;;;;;;;		inc	de
;;;;;;;;;
;;;;;;;;		ld	c,(hl)
;;;;;;;;		ld	a,(de)
;;;;;;;;		ld	(hli),a
;;;;;;;;		ld	a,c
;;;;;;;;		ld	(de),a
;;;;;;;;		inc	de
;;;;;;;;;
;;;;;;;;		ld	c,(hl)
;;;;;;;;		ld	a,(de)
;;;;;;;;		ld	(hli),a
;;;;;;;;		ld	a,c
;;;;;;;;		ld	(de),a
;;;;;;;;;
;;;;;;;;		ld	c,007
;;;;;;;;		ld	a,e
;;;;;;;;		sub	c
;;;;;;;;		ld	e,a
;;;;;;;;		dec	b
;;;;;;;;		jr	nz,OAMGYAK_150
;;;;;;;;;
		ret
;
;----------------------------------------------------------------
	END
;----------------------------------------------------------------
