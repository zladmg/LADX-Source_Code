
		onbankgroup

;****************************************************************
;*								*
;*	�^�C�g��    �F	�b�f�a�[���_				*
;*	�t�@�C����  �F	ZGEKI.S					*
;*	�������e    �F	�����֌W				*
;*	�쐬���t    �F  �P�X�X�W�^�P�O�^�O�P			*
;*								*
;****************************************************************
;
	NLIST
;
;==============	�o���N�O ========================================
BANK0		GROUP	0
;-------------<	ZCO >-------------
		EXTERN	RNDSUB
		EXTERN	SOUNDCLR,RAMCL3,VRAMTR1,DATA_MOV,LCDC_OFF
;
;-------------<	ZMA >-------------
		EXTERN	NEWDJ_DMA,CAMERA_CHR_RESET,MESEGE_SUB,PBSET
		EXTERN	WINDBGS,CAMERA_SCTR_100,DJBST,GRBST
		EXTERN	CAMERA_STSB_100,GEKI_SCRN_SUB
;
;-------------<	ZPL >-------------
		EXTERN	GEKI01,GEKI04,GEKI06,FDOUT,FDIN,GPLAY
		EXTERN	LDTIM0,GEKI11,GEKI09,GEKI08,GEKI05,GEKI00
		EXTERN	GEKI12,GEKI02
;
;-------------<	ZMSSUB >-------------
		EXTERN	MSGCHK,MSGCH2,MSGCH3
;
;-------------<	ZES >-------------
		EXTERN	NXOMSBL,EN2CST,STATINC
;
;==============	�o���N�R�V ======================================
;
;-------------<	ZGKDAT >----------
		EXTERN	GEKI_COL_DATA,SPL_CHR_DAT
		EXTERN	RINK2_OAM_DATA,RINK2_DAT_CNT
		EXTERN	RINK4_OAM_DATA,RINKU4_DAT_CNT
		EXTERN	RINK10_OAM_DATA,RINK10_DAT_CNT
		EXTERN	MARIN_4DATA,MARIN_4DAT_CNT
		EXTERN	MARIN2_4DATA,MARIN2_DAT_CNT
		EXTERN	PHOTO_OAM_DATA,PHOTO_DAT_CNT
		EXTERN	LCHRD_OAM_DATA,LCHRD_DAT_CNT
		EXTERN	WAN_OAM_DATA,WAN_CNT_DAT
		EXTERN	RINK6_OAM_DATA,RINK6_CNT_DAT
		EXTERN	ZORA_OAM_DATA,ZORA_DAT_CNT
		EXTERN	RINK9_OAM_DATA,RINK9_DAT_CNT,RINK9_DAT_CNT2
		EXTERN	RINK11_OAM_DAT,RINK11_DAT_CNT
		EXTERN	CAMEBOY_OAM_DAT,CAMERA_DAT_CNT
		EXTERN	PHOTO10_OAM_DATA,PHOTO10_DAT_CNT
;
;================================================================
		PUBALL
;
BANK37	GROUP	$37
;
	LIB	ZRAM	; RAM �d�p�t�`�s�d �t�@�C��
;
;---------------------------------------------------------------
	KANJI
	ISDMG
;
	ORG	$4000
	LIST
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�����̃��[�h����					%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
GEKI_MODE
		LD	A,(GMMODE)
		SUB	GEKI00
		RST	0
		DW	GEKI00_MODE
		DW	GEKI01_MODE
		DW	GEKI02_MODE
		DW	00000
		DW	GEKI04_MODE
		DW	GEKI05_MODE
		DW	GEKI06_MODE
		DW	00000
		DW	GEKI08_MODE
		DW	GEKI09_MODE
		DW	GEKI10_MODE
		DW	GEKI11_MODE
		DW	GEKI12_MODE
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�P�Ԃ̐����̃��[�h����					%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
GEKI00_MODE
GEKI01_MODE
		LD	A,(ITMODE)
		RST	0
		DW	GEKI_FADE_OUT
		DW	GEKI_RAMCL
		DW	GEKI_CHR
		DW	GEKI_SCRN_SUB
		DW	GEKI_FADE_IN
		DW	GEKI_1MAIN
		DW	GEKI_RETURN
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�Q�Ԃ̐����̃��[�h����					%
;%				���̃K�P			%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
GEKI02_MODE
		LD	A,(ITMODE)
		RST	0
		DW	GEKI_FADE_OUT
		DW	GEKI_SNDCL
		DW	GEKI_RAMCL
		DW	GEKI_CHR
		DW	GEKI_SCRN_SUB
		DW	GEKI_FADE_IN
		DW	GEKI_2MAIN
		DW	GEKI_RETURN
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�S�Ԃ̐����̃��[�h����					%
;%				�����{�O			%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
GEKI04_MODE
		LD	A,(ITMODE)
		RST	0
		DW	GEKI_FADE_OUT
		DW	GEKI_SNDCL
		DW	GEKI_RAMCL
		DW	GEKI_CHR
		DW	GEKI_SCRN_SUB
		DW	GEKI_FADE_IN
		DW	GEKI_4MAIN
		DW	GEKI_RETURN
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�T�Ԃ̐����̃��[�h����					%
;%				������W�[����		%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
GEKI05_MODE
		LD	A,(ITMODE)
		RST	0
		DW	GEKI_FADE_OUT
		DW	GEKI_SNDCL
		DW	GEKI_RAMCL
		DW	GEKI_CHR
		DW	GEKI_SCRN_SUB
		DW	GEKI_FADE_IN
		DW	GEKI_5MAIN
		DW	GEKI_RETURN
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�U�Ԃ̐����̃��[�h����					%
;%				���������ƈꏏ��		%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
GEKI06_MODE
		LD	A,(ITMODE)
		RST	0
		DW	GEKI_FADE_OUT
		DW	GEKI_RAMCL
		DW	GEKI_CHR
		DW	GEKI_SCRN_SUB
		DW	GEKI_FADE_IN
		DW	GEKI_6MAIN
		DW	GEKI_RETURN
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�W�Ԃ̐����̃��[�h����					%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
GEKI08_MODE
		LD	A,(ITMODE)
		RST	0
		DW	GEKI_FADE_OUT
		DW	GEKI_SNDCL
		DW	GEKI_RAMCL
		DW	GEKI_CHR
		DW	GEKI_SCRN_SUB
		DW	GEKI_FADE_IN
		DW	GEKI_8MAIN
		DW	GEKI_RETURN
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�X�Ԃ̐����̃��[�h����					%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
GEKI09_MODE
		LD	A,(ITMODE)
		RST	0
		DW	GEKI_FADE_OUT
		DW	GEKI_RAMCL
		DW	GEKI_CHR
		DW	GEKI_SCRN_SUB
		DW	GEKI_FADE_IN
		DW	GEKI_9MAIN
		DW	GEKI_RETURN
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�P�O�Ԃ̐����̃��[�h����				%
;%				����̖�̑O			%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
GEKI10_MODE
		LD	A,(ITMODE)
		RST	0
		DW	GEKI_FADE_OUT
		DW	GEKI_SNDCL
		DW	GEKI_RAMCL
		DW	GEKI_CHR
		DW	GEKI_SCRN_SUB
		DW	GEKI_FADE_IN
		DW	GEKI_10MAIN
		DW	GEKI_RETURN
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�P�P�Ԃ̐����̃��[�h����				%
;%				����̑O			%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
GEKI11_MODE
		LD	A,(ITMODE)
		RST	0
		DW	GEKI_FADE_OUT
		DW	GEKI_SNDCL
		DW	GEKI_RAMCL
		DW	GEKI_CHR
		DW	GEKI_SCRN_SUB
		DW	GEKI_FADE_IN
		DW	GEKI_11MAIN
		DW	GEKI_RETURN
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�P�Q�Ԃ̐����̃��[�h����				%
;%				�ʐ^���K�P����			%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
GEKI12_MODE
		LD	A,(ITMODE)
		RST	0
		DW	GEKI_FADE_OUT
		DW	GEKI_RAMCL
		DW	GEKI_CHR
		DW	GEKI_SCRN_SUB
		DW	GEKI_FADE_IN
		DW	GEKI_12MAIN
		DW	GEKI_RETURN
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�����̃z���C�g�E�A�E�g					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
RINK_COL_DAT
	DW	$22A2,$46FF
	DW	$143F,$46FF
	DW	$7E03,$46FF
;
GEKI_FADE_OUT
		LD	A,(FRCNT)
		AND	$001
		JR	NZ,GK_FDOUT_100
		LD	HL,SLEVEL
		DEC	(HL)
		LD	A,(HL)
		BIT	7,A
		JR	Z,GK_FDOUT_040
		XOR	A
GK_FDOUT_040
		LD	(HL),A
		LD	A,(SLEVEL+1)
		SUB	$010
		BIT	7,A
		JR	Z,GK_FDOUT_080
		XOR	A
GK_FDOUT_080
		LD	(SLEVEL+1),A
;
GK_FDOUT_100
		CALL	FDIN		; FDIN �����ǃt�F�[�h�A�E�g
		LD	A,(SBHR)
		CP	$04
		RET	NZ
;
		LD	A,$090
		LD	(WNDYPS),A
;
		LD	A,(CGBFLG)
		AND	A
		JR	Z,GEKI_FADE_800
;
		LD	HL,GEKI_COL_DATA	;�]�����A�h���X
		LD	A,(GMMODE)		;
		SUB	GEKI00			;
		SLA	A			;
		LD	E,A			;
		LD	D,$000			;
		ADD	HL,DE			;
		LD	A,(HLI)			;
		LD	H,(HL)			;
		LD	L,A			;
;
		LD	DE,CGWORK	; �]����A�h���X
		LD	BC,$0080	; ��
		LD	A,$002
		LD	(SVBK),A
		CALL	DATA_MOV
		XOR	A
		LD	(SVBK),A
;
		LD	A,(CLOTHFG)
		SLA	A
		SLA	A
		LD	E,A
		LD	D,$000
		LD	HL,RINK_COL_DAT
		ADD	HL,DE
		PUSH	HL
		LD	DE,OBCGWK+((($000*$004)+$002)*$002)
		LD	A,$002
		LD	(SVBK),A
RONK_COL_LOOP
		LD	A,(HLI)
		LD	(DE),A
		INC	DE
		LD	A,E
		AND	$007
		JR	NZ,RONK_COL_LOOP
		XOR	A
		LD	(SVBK),A
;
		POP	HL
		LD	A,(GMMODE)
		CP	GEKI02			;���̃K�P�H
		JR	NZ,GEKI_FADE_800	;	NO --> GEKI_FADE_800
		LD	DE,BGCGWK+((($004*$004)+$002)*$002)
		LD	A,$002
		LD	(SVBK),A
		LD	A,(HLI)
		LD	(DE),A
		INC	DE
		LD	A,(HL)
		LD	(DE),A
		XOR	A
		LD	(SVBK),A
;
GEKI_FADE_800
		XOR	A
		LD	(SCCH),A
		LD	(SCCV),A
		LD	(SCRLFG),A
;
		JP	GEKI_ITMINC
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�����̃T�E���h�E�N���A					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
GEKI_SNDCL
		CALL	SOUNDCLR
GEKI_DUMMY
		JP	GEKI_ITMINC
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�����̂q�`�l�E�N���A					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
GEKI_RAMCL
		CALL	RAMCL3
		JP	GEKI_ITMINC
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�L�����N�^�[�Z�b�g���[�v			x
;x			�`�F�]����o���N		x
;x			�a�F�]�����A�h���X�̂g�h�f�g��	x
;x			�b�F�]����A�h���X�̂g�h�f�g��	x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
GK_CHR_SET_LOOP
		LD	H,:GK_CHR_SET_LOOP
		LD	DE,$0008
GK_CHR_SET_SB
		PUSH	AF
GK_CHR_LOOP
		POP	AF
		PUSH	AF
		PUSH	BC
		PUSH	DE
		PUSH	HL
		CALL	NEWDJ_DMA
		POP	HL
		POP	DE
		POP	BC
		POP	AF
		PUSH	AF
		INC	B
		INC	C
		DEC	DE
		LD	A,E
		AND	A
		JR	NZ,GK_CHR_LOOP
		POP	AF
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�����̃L�����N�^�[�]��					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
OBJ_GB_ADR
	DW	$0000
	DW	$0000,$3B60,$0000,$3940,$0000,$3970
	DW	$0000,$0000,$2B40,$3960,$3A68,$0000
;
BG_GB_ADR
	DW	$3B70
	DW	$2940,$3B68,$0000,$3948,$2A40,$3978
	DW	$0000,$2A70,$2B40,$3968,$3A60,$2B70
;
OBJ_CGB_ADR
	DW	$0000
	DW	$0000,$3A50,$0000,$3A40,$0000,$3A70
	DW	$0000,$0000,$2B40,$3B50,$3B48,$0000
;
BG_CGB_ADR
	DW	$3B70
	DW	$2940,$3A58,$0000,$3A48,$2A40,$3A78
	DW	$0000,$2A70,$2B40,$3B58,$3B40,$2B70
;
C_BOY_FLAG
	DB	$00
	DB	$00,$00,$00,$00,$00,$00
	DB	$00,$00,$00,$01,$01,$00
;
C_BOY_SAKI_ADR
	DB	$00
	DB	$000,$000,$000,$000,$000,$000
	DB	$000,$000,$000,$008,$000,$000
;
;
GEKI_CHR
		CALL	LCDC_OFF
;
		LD	C,$000		;�I�u�W�F�]����A�h���X
;
		LD	A,(GMMODE)	;�]�����A�h���X
		SUB	GEKI00		;
		SLA	A		;
		LD	E,A		;
		LD	D,$000		;
		PUSH	DE		;
		PUSH	DE		;
		LD	HL,OBJ_GB_ADR	;
		LD	A,(CGBFLG)	;
		AND	A		;
		JR	Z,GK_CHR_150	;
		LD	HL,OBJ_CGB_ADR	;
GK_CHR_150				;
		ADD	HL,DE		;
		LD	B,(HL)		;
		INC	HL		;
		LD	A,(HL)		;
		AND	A
		JR	Z,GK_CHR_200
;
		CALL	GK_CHR_SET_LOOP
;
GK_CHR_200
		POP	DE
		LD	C,$010		;�a�f�]����A�h���X
;
		LD	HL,BG_GB_ADR	;�]�����A�h���X
		LD	A,(CGBFLG)	;
		AND	A		;
		JR	Z,GK_CHR_250	;
		LD	HL,BG_CGB_ADR	;
GK_CHR_250				;
		ADD	HL,DE		;
		LD	B,(HL)		;
		INC	HL		;
		LD	A,(HL)		;
		AND	A
		JR	Z,GK_CHR_300
;
		CALL	GK_CHR_SET_LOOP
;
GK_CHR_300
		POP	DE
		LD	A,(GMMODE)
		CP	GEKI11		;����̑O�̐����H
		JR	NZ,GK_CHR_400	;	NO --> GK_CHR_400
		LD	A,(CGBFLG)
		AND	A
		JR	NZ,GK_CHR_320
		LD	A,$03A
		LD	B,$068
		JR	GK_CHR_330
GK_CHR_320
		LD	A,$03B
		LD	B,$048
GK_CHR_330
		LD	C,$008
		LD	H,:GEKI_CHR
		LD	DE,$0004
		CALL	GK_CHR_SET_SB
;
GK_CHR_400
		LD	A,(GMMODE)
		SUB	GEKI00
		LD	E,A
		LD	D,$000
		LD	HL,C_BOY_FLAG
		ADD	HL,DE
		LD	A,(HL)
		AND	A			;�˂��݃L�����N�^�]������H
		JR	Z,GK_CHR_500		;	NO --> GK_CHR_500
		LD	HL,C_BOY_SAKI_ADR
		ADD	HL,DE
		LD	C,(HL)
		LD	H,:GK_CHR_SET_LOOP
		LD	A,$038
		LD	B,$040
;;;KK;;;		LD	DE,$0004
		LD	DE,$0002
		CALL	GK_CHR_SET_SB
		JR	GK_CHR_900
;
GK_CHR_500
		LD	C,$008
		LD	DE,$0008
		LD	A,(GMMODE)
		CP	GEKI09		;�]�[���̎ʐ^�H
		JR	NZ,GK_CHR_600	;	NO --> GK_CHR_600
		LD	A,$02B
		LD	B,$048
		JR	GK_CHR_880
;
GK_CHR_600
		CP	GEKI08		;�ރI���W�̎ʐ^
		JR	NZ,GK_CHR_700	;
		LD	A,$02A
		LD	B,$078
		JR	GK_CHR_880
;
GK_CHR_700
		CP	GEKI05		;������W�[����
		JR	NZ,GK_CHR_750	;
		LD	A,$02A
		LD	B,$048
		JR	GK_CHR_880
;
GK_CHR_750
		CP	GEKI12		;�ʐ^���K�P����
		JR	NZ,GK_CHR_800	;
		LD	A,$02B
		LD	B,$078
		JR	GK_CHR_880
;
GK_CHR_800
		CP	GEKI01		;�ʐ^���ł͂��߂Ă̎B�e
		JR	NZ,GK_CHR_850	;
		LD	A,$029
		LD	B,$048
		JR	GK_CHR_880
;
GK_CHR_850
		CP	GEKI00		;�ʐ^���ł͂��߂Ă̎B�e
		JR	NZ,GK_CHR_900	;	(�s���s�����)
		LD	A,$03B
		LD	B,$078
GK_CHR_880
		LD	H,:GEKI_CHR
		CALL	GK_CHR_SET_SB
		JR	GK_CHR_900
;
GK_CHR_900
		LD	A,%11000111	; �n�a�i �a�f �n�m �k�b�c�b �X�^�[�g
		LD	(LCDCB),A
		LD	(LCDC),A
;
		JP	GEKI_ITMINC
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�����̃z���C�g�E�C��					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
GEKI_FADE_IN
		LD	A,(FRCNT)
		AND	$001
		JR	NZ,GK_FDIN_100
		LD	A,(SLEVEL)
		INC	A
		CP	$007
		JR	C,GK_FDIN_040
		LD	A,$007
GK_FDIN_040
		LD	(SLEVEL),A
		LD	A,(SLEVEL+1)
		ADD	A,$010
		CP	$070
		JR	C,GK_FDIN_080
		LD	A,$070
GK_FDIN_080
		LD	(SLEVEL+1),A
;
GK_FDIN_100
		XOR	A
		LD	(GEKI_OAM_IDX),A
		CALL	OBJ_INIT_POS
		CALL	FADE_OAM
;
		CALL	FDOUT		; FDOUT �����ǃt�F�[�h�C��
		LD	A,(SBHR)
		CP	$04
		RET	NZ
;
		JP	GEKI_ITMINC
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�t�F�[�h�E�C���̍Œ��̂n�`�l�Z�b�g		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
FADE_OAM
		LD	A,$01C
		LD	(GEKI_OAM_IDX),A
;
		LD	A,(GMMODE)
		SUB	GEKI00
		RST	0
		DW	GEKI00_OAM
		DW	GEKI01_OAM
		DW	GEKI02_OAM
		DW	000000
		DW	GEKI04_OAM
		DW	GEKI05_OAM
		DW	GEKI06_OAM
		DW	000000
		DW	GEKI08_OAM
		DW	GEKI09_OAM
		DW	GEKI10_OAM
		DW	GEKI11_OAM
		DW	GEKI12_OAM
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�e���[�h�̃I�u�W�F�̏����|�W�V����		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
OBJ_INIT_POS
		LD	A,(GMMODE)
		SUB	GEKI00
		RST	0
		DW	GEKI_00INIT
		DW	GEKI_01INIT
		DW	GEKI_02INIT
		DW	00000
		DW	GEKI_04INIT
		DW	GEKI_05INIT
		DW	GEKI_06INIT
		DW	00000
		DW	GEKI_08INIT
		DW	GEKI_09INIT
		DW	GEKI_10INIT
		DW	GEKI_11INIT
		DW	GEKI_12INIT
;
;+------------------------------------------------------+
;|	�Q�Ԃ̐����̃C�j�V����				|
;|				���̊R			|
;+------------------------------------------------------+
GEKI_02INIT
		LD	A,$068		;�����N�̏����|�W�V����
		LD	(G_PLXPS),A	;
		LD	A,$038		;
		LD	(G_PLYPS),A	;
		LD	(PLYPSL),A	;���b�Z�[�W�E�B���h�����ɏo�����߁I
		LD	A,$058		;�}�����̏����|�W�V����
		LD	(G_MRNXPS),A	;
		LD	A,$040		;
		LD	(G_MRNYPS),A	;
;
		LD	HL,G_TR_CNT+$003
		LD	(HL),$010
		LD	HL,G_SAKI_ADR+$006
		LD	BC,$92C0
		LD	(HL),C
		INC	HL
		LD	(HL),B
		LD	HL,G_MOTO_ADR+$006
		LD	(HL),$070
		INC	HL
		LD	A,(CGBFLG)
		AND	A
		JR	NZ,GK_02INT_600
		LD	(HL),$075
		RET
;
GK_02INT_600
		LD	(HL),$071
		RET
;
;+------------------------------------------------------+
;|	�S�Ԃ̐����̃C�j�V����				|
;|				�����{			|
;+------------------------------------------------------+
GEKI_04INIT
		CALL	KAZAMI_MAIN
		LD	A,$0E0		;�����N�̏����|�W�V����
		LD	(G_PLXPS),A	;
		LD	A,$068
		LD	(G_PLYPS),A
		LD	A,$058
		LD	(G_PLXSTP),A
		LD	A,$0C8		;�}�����̏����|�W�V����
		LD	(G_MRNXPS),A	;
		LD	A,$0B0		;�^�����̏����|�W�V����
		LD	(G_TRNXPS),A	;
;
		LD	HL,G_TR_CNT
		LD	(HL),$040
		INC	HL
		LD	(HL),$030
		INC	HL
		LD	(HL),$020
		LD	HL,G_SAKI_ADR
		LD	BC,$9000
		LD	(HL),C
		INC	HL
		LD	(HL),B
		INC	HL
		LD	BC,$9500
		LD	(HL),C
		INC	HL
		LD	(HL),B
		INC	HL
		LD	BC,$9530
		LD	(HL),C
		INC	HL
		LD	(HL),B
		LD	HL,G_MOTO_ADR
		LD	A,(CGBFLG)
		AND	A
		JR	NZ,GK_04INT_600
		XOR	A
		LD	(HLI),A
		LD	(HL),$074
		INC	HL
		LD	(HLI),A
		LD	(HL),$075
		INC	HL
		LD	(HL),$030
		INC	HL
		LD	(HL),$075
		RET
;
GK_04INT_600
		XOR	A
		LD	(HLI),A
		LD	(HL),$070
		INC	HL
		LD	(HLI),A
		LD	(HL),$071
		INC	HL
		LD	(HL),$030
		INC	HL
		LD	(HL),$071
		RET
;
;+------------------------------------------------------+
;|	�U�Ԃ̐����̃C�j�V����				|
;|			���������ƈꏏ��		|
;+------------------------------------------------------+
GEKI_06INIT
		LD	A,$080		;�����N�̏����|�W�V����
		LD	(G_PLXPS),A	;
		LD	A,$058
		LD	(G_PLYPS),A
;
		LD	A,$066		;���������̏����|�W�V����
		LD	(G_WANXPS),A
		LD	E,$10
		LD	HL,G_WAXBUF
GK_06INT_100
		LD	(HLI),A
		DEC	E
		JR	NZ,GK_06INT_100
;
		LD	A,$070
		LD	(G_WANYPS),A
		LD	E,$10
		LD	HL,G_WAYBUF
GK_06INT_200
		LD	(HLI),A
		DEC	E
		JR	NZ,GK_06INT_200
;
		XOR	A
		LD	(G_WANPTN),A
;
		LD	A,$020
		LD	(G_TIMER),A
;
		CALL	GEKI_RINK6_OAM
		CALL	GEKI_WAN_OAM
		RET
;
;+------------------------------------------------------+
;|	�O�Ԃ̐����̃C�j�V����				|
;+------------------------------------------------------+
GEKI_00INIT
;
;+------------------------------------------------------+
;|	�P�Ԃ̐����̃C�j�V����				|
;+------------------------------------------------------+
GEKI_01INIT
;
;+------------------------------------------------------+
;|	�T�Ԃ̐����̃C�j�V����				|
;+------------------------------------------------------+
GEKI_05INIT
;
;+------------------------------------------------------+
;|	�W�Ԃ̐����̃C�j�V����				|
;+------------------------------------------------------+
GEKI_08INIT
;
;+------------------------------------------------------+
;|	�X�Ԃ̐����̃C�j�V����				|
;+------------------------------------------------------+
GEKI_09INIT
;
;+------------------------------------------------------+
;|	�P�Q�Ԃ̐����̃C�j�V����			|
;+------------------------------------------------------+
GEKI_12INIT
		RET
;
;+------------------------------------------------------+
;|	�P�O�Ԃ̐����̃C�j�V����			|
;|				����̖�̑O		|
;+------------------------------------------------------+
GEKI_10INIT
		LD	A,$0D6		;�����N�̏����|�W�V����
		LD	(G_PLXPS),A	;
		LD	A,$08A
		LD	(G_PLYPS),A
		LD	(PLYPSL),A	;���b�Z�[�W�E�B���h����ɏo�����߁I
		LD	A,$020
		LD	(G_PLXSTP),A
		LD	A,$088		;���`���[�h�̏����|�W�V����
		LD	(G_LCDYPS),A	;
		LD	A,$0B6		;
		LD	(G_LCDXPS),A	;
		LD	A,$088
		LD	(G_LCDXSTP),A
		LD	A,$05A		;�ʐ^���̏����|�W�V����
		LD	(G_PHTXPS),A	;
		LD	A,$077		;
		LD	(G_PHTYPS),A	;
		RET
;
;+------------------------------------------------------+
;|	�P�P�Ԃ̐����̃C�j�V����			|
;+------------------------------------------------------+
GEKI_11INIT
		LD	A,$04C		;�����N�̏����|�W�V����
		LD	(G_PLXPS),A	;
		LD	A,$05A
		LD	(G_PLYPS),A
		LD	(PLYPSL),A	;���b�Z�[�W�E�B���h����ɏo�����߁I
		LD	A,$0B0
		LD	(G_CMRXPS),A
		LD	A,$066
		LD	(G_CMRYPS),A
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�A�j���[�V�����L�����N�^�[�]���A�h���X			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
ANM_CGB_ADR0
	DW	$7000,$7040,$7080,$7000,$7040,$7080
	DW	$7000,$7040,$7080,$7000,$7040,$7080
ANM_CGB_ADR1
	DW	$7100,$7200,$7300,$7100,$7200,$7300
	DW	$7100,$7200,$7300,$7100,$7200,$7300
ANM_CGB_ADR2
	DW	$7130,$7230,$7330,$7130,$7230,$7330
	DW	$7130,$7230,$7330,$7130,$7230,$7330
ANM_CGB_ADR3
	DW	$7170,$7180,$7190,$71A0,$7170,$7180
	DW	$7190,$71A0,$7170,$7180,$7190,$71A0
;
ANM_CGB_ADR
	DW	ANM_CGB_ADR0,ANM_CGB_ADR1
	DW	ANM_CGB_ADR2,ANM_CGB_ADR3
;
ANM_MAX_CNT
	DB	$020,$018,$010,$008
;
;
ANIME_CHR
		LD	BC,$0000
ANM_CHR_100
		LD	HL,G_MOTOBANK
		ADD	HL,BC
		LD	E,L
		LD	D,H
		XOR	A
		LD	(DE),A
		LD	HL,ANM_MAX_CNT
		ADD	HL,BC
		LD	A,(HL)
		LD	HL,G_ANIM_CNT
		ADD	HL,BC
		INC	(HL)
		CP	(HL)		;�\���ؑփ^�C�~���O�H
		JR	NC,ANM_CHR_600	;	NO --> ANM_CHR_600
		LD	A,(DE)
		AND	A
		JR	NZ,ANM_CHR_600
		LD	A,$039
		LD	(DE),A
		XOR	A
		LD	(HL),A
		LD	HL,G_TRNC_NO
		ADD	HL,BC
		INC	(HL)
		LD	A,(HL)
		CP	$00C		;�p�^�[���O�ɖ߂��H
		JR	NZ,ANM_CHR_200	;	NO --> ANM_CHR_200
		XOR	A
		LD	(HL),A
ANM_CHR_200
		SLA	A
		LD	E,A
		LD	D,$000
		PUSH	BC
		SLA	C
		LD	HL,ANM_CGB_ADR
		ADD	HL,BC
		LD	A,(HLI)
		LD	H,(HL)
		LD	L,A
		ADD	HL,DE
		PUSH	HL
		LD	HL,G_MOTO_ADR
		ADD	HL,BC
		PUSH	HL
		POP	DE
		POP	HL
		POP	BC
		LD	A,(HLI)		;�]�����A�h���X�Z�b�g
		LD	(DE),A		;
		INC	DE		;
		LD	A,(HL)		;
		LD	(DE),A		;
		LD	A,(CGBFLG)
		AND	A
		JR	NZ,ANM_CHR_600
		LD	A,(DE)
		ADD	A,$004
		LD	(DE),A
ANM_CHR_600
		INC	BC
		LD	A,C
		AND	$003
		JR	NZ,ANM_CHR_100
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�ʐ^����������̃t���b�V��				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
GEKI06_COL
	DW	$5b7f,$2e14,$194e,$08a9	; �Z�s�A��
;
PHOTO_FLASH
		LD	A,(G_PHOTOFG)
		AND	A
		RET	Z
;
		CP	$001
		JR	NZ,PHT_FLS_200
		INC	A
		LD	(G_PHOTOFG),A
		LD	A,$040
		LD	(SOUND3),A
		LD	A,(CGBFLG)
		AND	A
		JR	NZ,PHT_FLS_100
		LD	HL,BGPFG
		XOR	A
		LD	(HLI),A
		LD	(HLI),A
		LD	(HL),A
		RET
;
PHT_FLS_100
		LD	HL,SVBK
		LD	DE,CGWORK
;
PHT_FLS_LOOP
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
		JR	NZ,PHT_FLS_LOOP
		LD	A,BGCOL_BITFG
		LD	(CGDMAF),A
		RET
;
PHT_FLS_200
		CP	$00F		;�߂�I�u�W�F�J���[�Z�b�g�H
		JR	Z,PHT_FLS_240	;	YES --> PHT_FLS_240
		CP	$002		;���I�u�W�F�J���[�Z�b�g�H
		JR	NZ,PHT_FLS_300	;	NO --> PHT_FLS_300
PHT_FLS_240
		INC	A
		AND	$00F
		LD	(G_PHOTOFG),A
		LD	A,(CGBFLG)
		AND	A
		JR	NZ,PHT_FLS_250
		LD	A,(G_PHOTOFG)
		AND	A
		RET	NZ
		LD	HL,BGPFG
		LD	A,$0E4
		LD	(HLI),A
		LD	A,$01C
		LD	(HLI),A
		LD	A,$0E4
		LD	(HL),A
		RET
PHT_FLS_250
		LD	A,OBJCOL_BITFG
		LD	(CGDMAF),A
		RET
;
PHT_FLS_300
		CP	$00E		;�߂�a�f�J���[�Z�b�g�H
		JR	NZ,PHT_FLS_400	;	NO --> PHT_FLS_400
		LD	HL,SVBK
		LD	DE,CGWORK
;
PHT_MOTO_LOOP
		LD	(HL),$003
		LD	A,(DE)
		LD	(HL),$000
		LD	(DE),A
		INC	DE
		LD	A,E
		CP	$090
		JR	NZ,PHT_MOTO_LOOP
		LD	A,BGCOL_BITFG
		LD	(CGDMAF),A
		LD	A,(G_PHOTOFG)
;
PHT_FLS_400
		INC	A
		LD	(G_PHOTOFG),A
		CP	$004
		RET	NZ
;
		LD	A,(GMMODE)
		SUB	GEKI00
		SLA	A
		SLA	A
		LD	E,A
		LD	D,$000
		LD	HL,SPL_CHR_DAT
		ADD	HL,DE
		LD	A,(HL)
		AND	A		;����]������H
		RET	Z		;	NO --> return
;
		PUSH	HL
		PUSH	HL
		CALL	LCDC_OFF
		POP	HL
		LD	C,(HL)
		INC	HL
		LD	B,(HL)
		INC	HL
		LD	A,(HL)
		CALL	GK_CHR_SET_LOOP
;
		POP	HL
		LD	A,(HLI)
		ADD	A,$008
		LD	C,A
		LD	A,(HLI)
		SUB	$008
		LD	B,A
		LD	A,(HL)
		CALL	GK_CHR_SET_LOOP
		LD	A,%11100101	; �n�a�i �a�f �n�m �k�b�c�b �X�^�[�g
		LD	(LCDCB),A
		LD	(LCDC),A
		XOR	A
		LD	(WNDYPS),A
		LD	A,(CGBFLG)
		AND	A
		RET	Z
;
		DI
		LD	A,$003
		LD	(SVBK),A
		LD	DE,CGWORK
		LD	HL,GEKI06_COL
GEKI06_COL_LOP
		LD	A,(HLI)
		LD	(DE),A
		INC	DE
		LD	A,E
		AND	$007
		JR	NZ,GEKI06_COL_LOP
		XOR	A
		LD	(SVBK),A
		EI
		RET
;
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�O�Ԃ̐����̂l�`�h�m����				x
;x	�P�Ԃ̐����̂l�`�h�m����				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
GEKI_0MAIN
GEKI_1MAIN
		LD	HL,G_TIMER
		INC	(HL)
		LD	A,(HL)
		CP	$050
		RET	NZ
;
		XOR	A
		LD	(SBCNT),A
		LD	(SBHR),A
;
		LD	A,(PHOTOFG)	;�ʐ^�P�̃t���O�n�m�I
		OR	%00000001	;
		LD	(PHOTOFG),A	;
		LD	A,(GMMODE)
		CP	GEKI00		;�����N�҂�҂�H
		JR	NZ,GEKI_0_1_000
		LD	A,(PHOTOFG+1)
		OR	%10000000	;����ʐ^�P��
		LD	(PHOTOFG+1),A	;	�����N�҂�҂�t���O�n�m�I
;
GEKI_0_1_000
;
		CALL	GEKI_ITMINC
		RET
;
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�Q�Ԃ̐����̂l�`�h�m����				x
;x			�R�Ń}�����ƃ��u���u			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
GEKI_2MAIN
		CALL	ANIME_CHR
		LD	HL,G_MOTOBANK
		XOR	A
		LD	(HLI),A
		LD	(HLI),A
		LD	(HL),A
;;;KK;;;		LD	HL,G_MOTOBANK+$003
;;;KK;;;		LD	(HL),$039
;
		LD	A,$01C
		LD	(GEKI_OAM_IDX),A
;;;KK;;;		LD	A,(KEYA2)
;;;KK;;;		AND	%10000000	;�r�s�`�q�s�L�[ �n�m�H
;;;KK;;;		JR	Z,GK_2MAIN_500	;	NO --> GK_2MAIN_500
;;;KK;;;		XOR	A
;;;KK;;;		LD	(SBCNT),A
;;;KK;;;		LD	(SBHR),A
;;;KK;;;		CALL	GEKI_ITMINC
;
GK_2MAIN_500
		CALL	GEKI02_OAM
;
		CALL	GEKI2_MARIN_MAIN
;
		CALL	PHOTO_FLASH
;
		LD	A,(NAMIOTO)
		INC	A
		CP	$A0
		JR	NZ,GK_2MAIN_610
;
		LD	A,$0F
		LD	(SOUND3),A	;(S)
;
		XOR	A
GK_2MAIN_610
		LD	(NAMIOTO),A
;
		LD	A,(KAMOSE)
		AND	A
		JR	NZ,GK_2MAIN_620
;
		LD	A,$21
		LD	(SOUND1),A	;(S)
;
		CALL	RNDSUB
		AND	$7F
		ADD	A,$60
		LD	(KAMOSE),A
GK_2MAIN_620
		DEC	A
		LD	(KAMOSE),A
;
		LD	A,:GEKI_2MAIN
		CALL	MESEGE_SUB
		LD	A,:GEKI_2MAIN
		CALL	PBSET
		RET
;
;+------------------------------------------------------+
;|	�Q�Ԃ̐����̂n�`�l�Z�b�g			|
;+------------------------------------------------------+
GEKI02_OAM
		CALL	GEKI2_RINK_OAM
		CALL	GEKI2_MARIN_OAM
		RET
;
;+------------------------------------------------------+
;|	�Q�Ԃ̐����̃}�����̂l�`�h�m			|
;+------------------------------------------------------+
GEKI2_TIME
	DB	$008,$012,$008,$012
;
GEKI2_MARIN_MAIN
		LD	HL,G_MRNCNT
		LD	A,(HL)
		AND	A
		JR	Z,GK2_MARIN_100
		DEC	(HL)
		JR	GK2_MARIN_600
;
GK2_MARIN_100
		PUSH	HL
		CALL	RNDSUB
		AND	$003
		LD	E,A
		LD	D,$000
		LD	HL,GEKI2_TIME
		ADD	HL,DE
		LD	A,(HL)
		POP	HL
		LD	(HL),A
;;;KK;;;		CALL	RNDSUB
;;;KK;;;		AND	$003
;;;KK;;;		SWAP	A
;;;KK;;;		LD	(HL),A
		LD	A,(G_MRNPTN)
		XOR	$001
		LD	(G_MRNPTN),A
		LD	A,(G_PLPTN)
		XOR	$001
		LD	(G_PLPTN),A
;
GK2_MARIN_600
		LD	A,(MSGEFG)
		AND	A		;���b�Z�[�W�\�����H
		RET	NZ		;	YES --> return
;
		LD	A,(G_MRNMOD)
		RST	0
		DW	GK2_MSG00
		DW	GK2_MSG01
		DW	GK2_MSG02
		DW	GK2_MSG03
		DW	GK2_MSG04
		DW	GK2_MSG05
		DW	GK2_MSG06
		DW	GK2_FLASH_WAIT
		DW	GK2_PHOTO_WAIT
		DW	GK2_PHOTO_LAST
		DW	PHOTO_WAIT
;
;+----------------------------------------------+
;|	�}�����͂��߂̑䎌			|
;+----------------------------------------------+
GK2_MSG00
		LD	HL,G_TIMER
		INC	(HL)
		LD	A,(HL)
		CP	$020
		RET	NZ
;
		XOR	A
		LD	(HL),A
		LD	A,$055
GK2_MSG00_SB
		CALL	MSGCH3
GK2_MD_INC
		LD	HL,G_MRNMOD
		INC	(HL)
		RET
;
;+----------------------------------------------+
;|	�����̃����N				|
;+----------------------------------------------+
GK2_MSG01
GK2_MSG03
GK2_MSG05
		LD	A,$056
		JR	GK2_MSG00_SB
;
;+----------------------------------------------+
;|	�}�����Ƃ̃q�~�c			|
;+----------------------------------------------+
GK2_MSG02
		LD	A,$057
		JR	GK2_MSG00_SB
;
;+----------------------------------------------+
;|	�}�����A�Ă��				|
;+----------------------------------------------+
GK2_MSG04
		LD	A,$058
		JR	GK2_MSG00_SB
;
;+----------------------------------------------+
;|	�ʐ^���A�ז����ɂ����I			|
;+----------------------------------------------+
GK2_MSG06
		LD	HL,(G_TIMER)
		INC	(HL)
		LD	A,(HL)
		CP	$050
		RET	NZ
;
		XOR	A
		LD	(HL),A
		LD	A,$059
		JR	GK2_MSG00_SB
;
;+------------------------------------------------------+
;|	�Q�Ԃ̐����Ŏʐ^�̃t���b�V���҂�		|
;+------------------------------------------------------+
GK2_FLASH_WAIT
		LD	HL,(G_TIMER)
		INC	(HL)
		LD	A,(HL)
		CP	$020
		RET	NZ
;
		XOR	A
		LD	(HL),A
		LD	HL,G_PHOTOFG
		INC	(HL)
		LD	A,$060
		LD	(G_TIMER),A
		CALL	GK2_MD_INC
		RET
;
;+------------------------------------------------------+
;|	�Q�Ԃ̐����Ŏʐ^�̎���҂�			|
;+------------------------------------------------------+
GK2_PHOTO_WAIT
		LD	A,(G_PHOTOFG)
		AND	A
		RET	NZ
;
		LD	HL,(G_TIMER)
		DEC	(HL)
		LD	A,(HL)
		BIT	7,A
		RET	Z
;
		XOR	A
		LD	(HL),A
;
		LD	A,$00B
		CALL	MSGCH2
		CALL	GK2_MD_INC
		RET
;
;+------------------------------------------------------+
;|	�Q�Ԃ̐������X�g���b�Z�[�W			|
;+------------------------------------------------------+
GK2_PHOTO_LAST
		LD	HL,(G_TIMER)
		INC	(HL)
		LD	A,(HL)
		CP	$030
		RET	NZ
;
		LD	A,(PHOTOFG)	;�ʐ^�Q�̃t���O�n�m�I
		OR	%00000010	;
		LD	(PHOTOFG),A	;
		CALL	GK2_MD_INC
;
		XOR	A
		LD	(SBCNT),A
		LD	(SBHR),A
		CALL	GEKI_ITMINC
		RET
;
;
;+------------------------------------------------------+
;|	�Q�Ԃ̐����̃}�����̂n�`�l�Z�b�g		|
;+------------------------------------------------------+
GEKI2_MARIN_OAM
		LD	C,MARIN2_DAT_CNT
		LD	HL,MARIN2_4DATA
		JP	GK_MARIN_OAM_SB
;
;+------------------------------------------------------+
;|	�Q�Ԃ̐����̃����N�̂n�`�l�Z�b�g		|
;+------------------------------------------------------+
GEKI2_RINK_OAM
		LD	HL,RINK2_OAM_DATA
		LD	C,RINK2_DAT_CNT
		JP	GK_RINK_OAM_SB
;
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�S�Ԃ̐����̂l�`�h�m����				x
;x				�����{�O			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
GEKI_4MAIN
		CALL	ANIME_CHR
		LD	HL,G_MOTOBANK+$003
		LD	(HL),$000
;;;KK;;;		LD	HL,G_MOTOBANK
;;;KK;;;		LD	A,$039
;;;KK;;;		LD	(HLI),A
;;;KK;;;		LD	(HLI),A
;;;KK;;;		LD	(HL),A
;
		LD	A,$01C
		LD	(GEKI_OAM_IDX),A
;;;KK;;;		LD	A,(KEYA2)
;;;KK;;;		AND	%10000000	;�r�s�`�q�s�L�[ �n�m�H
;;;KK;;;		JR	Z,GK_4MAIN_500	;	NO --> GK_4MAIN_500
;;;KK;;;		XOR	A
;;;KK;;;		LD	(SBCNT),A
;;;KK;;;		LD	(SBHR),A
;;;KK;;;		CALL	GEKI_ITMINC
;;;KK;;;		RET
;
GK_4MAIN_500
		LD	A,(G_TRNMOD)
		CP	TRN4_PHOTO
		JR	NC,GK_4MAIN_550
		CALL	GEKI_4MARIN_OAM
		CALL	GEKI_RINK_OAM
		CALL	GEKI_4TARIN_OAM
		CALL	KAZAMI_MAIN
		JR	GK_4MAIN_600
GK_4MAIN_550
		CALL	GEKI04_OAM
;
GK_4MAIN_600
		CALL	GEKI_4TARIN_MAIN
		CALL	GEKI_4RINK_MAIN
		CALL	GEKI_4MARIN_MAIN
;
		CALL	PHOTO_FLASH
;
		LD	A,(GEKI_OAM_IDX)
		CALL	NXOMSBL
		LD	A,:GEKI_4MAIN
		CALL	MESEGE_SUB
		LD	A,:GEKI_4MAIN
		CALL	PBSET
		RET
;
;+------------------------------------------------------+
;|	�S�Ԃ̐����̂n�`�l�Z�b�g			|
;+------------------------------------------------------+
GEKI04_OAM
		CALL	GEKI_4TARIN_OAM
		CALL	GEKI_4MARIN_OAM
		CALL	GEKI_RINK_OAM
		CALL	KAZAMI_MAIN
		RET
;
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�S�Ԃ̐����̃^�����̂l�`�h�m			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
GEKI_4TARIN_MAIN
		LD	A,(G_TRNMOD)
		RST	0
TARIN4_ADR	DW	GEKI_4TARIN_WAIT
		DW	GEKI_4TARIN_MSG
		DW	GEKI_4TARIN_MOV
		DW	GEKI_4TARIN_NOKE
TARIN4_PHOTO	DW	GEKI_4TARIN_PHOTO
		DW	TARIN4_PHOTO_WAIT
		DW	TARIN4_STAGE_OUT_MSG
		DW	TARIN4_STAGE_OUT
;
TRN4_PHOTO	EQU	(TARIN4_PHOTO-TARIN4_ADR)/2
;
;+----------------------------------------------+
;|	�^�����̃��[�h�h�m�b�D			|
;+----------------------------------------------+
TRNMOD_INC
		LD	HL,G_TRNMOD
		INC	(HL)
		RET
;
;+------------------------------------------------------+
;|	�^�����o��҂�					|
;+------------------------------------------------------+
GEKI_4TARIN_WAIT
		LD	A,$068
		LD	(G_TRNYPS),A
		LD	A,(G_PLXPS)
		BIT	7,A
		RET	NZ
;
		CP	$058
		RET	C
;
		LD	HL,G_TRNCNT
		INC	(HL)
		LD	A,(HL)
		CP	10
		RET	C
;
		XOR	A
		LD	(HL),A
		LD	A,(G_TRNPTN)
		INC	A
		AND	$003
		LD	(G_TRNPTN),A
		LD	A,(G_TRNXPS)
		SUB	$004
		BIT	7,A
		JR	NZ,GK_4TRN_WT_260
		CP	$088
		JR	NC,GK_4TRN_WT_260
		XOR	A
		LD	(G_TRNPTN),A
		LD	A,$3D
		CALL	MSGCH3
		CALL	TRNMOD_INC
		LD	A,$080
GK_4TRN_WT_260
		LD	(G_TRNXPS),A
		RET
;
;+------------------------------------------------------+
;|	�^�������b�Z�[�W�I���҂�			|
;+------------------------------------------------------+
GEKI_4TARIN_MSG
		LD	A,(MSGEFG)
		AND	A		;���b�Z�[�W�\�����H
		RET	NZ		;	YES --> return
;
		XOR	A
		LD	(G_TRNPTN),A
		JR	TRNMOD_INC
;
;+------------------------------------------------------+
;|	�S�Ԃ̐����̃^�����̈ړ��֌W			|
;+------------------------------------------------------+
GEKI_4TARIN_MOV
		LD	HL,G_TRNCNT
		INC	(HL)
		LD	A,(HL)
		CP	$005
		RET	C
;
		XOR	A
		LD	(HL),A
		LD	A,(G_TRNPTN)
		INC	A
		AND	$003
		LD	(G_TRNPTN),A
		LD	A,(G_TRNXPS)
		SUB	$004
		CP	$054
		JR	NC,GK_4TRN_MV_260
		CALL	TRNMOD_INC
		LD	A,$004
		LD	(G_TRNPTN),A
		LD	A,$051
GK_4TRN_MV_260
		LD	(G_TRNXPS),A
		RET
;
;+------------------------------------------------------+
;|	�S�Ԃ̐����̃^�����������N�������̂�		|
;+------------------------------------------------------+
GEKI_4TARIN_NOKE
		LD	A,(G_PLXPS)
		CP	$060
		JR	NC,TARIN4_NOKE_500
		INC	A
		LD	(G_PLXPS),A
		RET
;
TARIN4_NOKE_500
		LD	A,(G_MRNXPS)
;;;KK;;;		CP	$040
		CP	$03F
		JR	C,TARIN4_NOKE_800
		DEC	A
		LD	(G_MRNXPS),A
		RET
;
TARIN4_NOKE_800
		LD	A,$3E
		CALL	MSGCH3
		LD	A,$010
		LD	(G_TIMER),A
		CALL	TRNMOD_INC
		RET
;
;+------------------------------------------------------+
;|	�S�Ԃ̐����Ŏʐ^�̃t���b�V���҂�		|
;+------------------------------------------------------+
GEKI_4TARIN_PHOTO
		LD	A,(MSGEFG)
		AND	A		;���b�Z�[�W�\�����H
		RET	NZ		;	YES --> return
;
		LD	HL,(G_TIMER)
		DEC	(HL)
		LD	A,(HL)
		BIT	7,A
		RET	Z
;
		XOR	A
		LD	(HL),A
		LD	HL,G_PHOTOFG
		INC	(HL)
		LD	A,$020
		LD	(G_TIMER),A
		CALL	TRNMOD_INC
		RET
;
;+------------------------------------------------------+
;|	�S�Ԃ̐����Ŏʐ^�̎���҂�			|
;+------------------------------------------------------+
TARIN4_PHOTO_WAIT
		LD	A,(G_PHOTOFG)
		AND	A
		RET	NZ
;
		LD	HL,(G_TIMER)
		DEC	(HL)
		LD	A,(HL)
		BIT	7,A
		RET	Z
;
		XOR	A
		LD	(HL),A
		LD	A,$3F
		CALL	MSGCH3
		CALL	TRNMOD_INC
		RET
;
;+------------------------------------------------------+
;|	�S�Ԃ̐����Ń^�����ޏꁕ�z���C�g�E�A�E�g	|
;+------------------------------------------------------+
TARIN4_STAGE_OUT_MSG
		LD	A,(MSGEFG)
		AND	A		;���b�Z�[�W�\�����H
		RET	NZ		;	YES --> return
;
		XOR	A
		LD	(G_TRNPTN),A
		LD	(SBCNT),A
		LD	(SBHR),A
		CALL	TRNMOD_INC
		RET
;
;+------------------------------------------------------+
;|	�S�Ԃ̐����Ń^�����ޏꁕ�z���C�g�E�A�E�g	|
;+------------------------------------------------------+
TARIN4_STAGE_OUT
		LD	A,(G_TRNXPS)
		CP	$028
		JR	NC,TRN4_STG_OUT_100
		CALL	FDIN		; FDIN �����ǃt�F�[�h�A�E�g
		LD	A,(SBHR)
		CP	$04
		JR	NZ,TRN4_STG_OUT_100
		CALL	GEKI_ITMINC
		LD	A,(PHOTOFG)	;�ʐ^�S�̃t���O�n�m�I
		OR	%00001000	;
		LD	(PHOTOFG),A	;
;
TRN4_STG_OUT_100
		LD	HL,G_TRNCNT
		INC	(HL)
		LD	A,(HL)
		CP	10
		RET	C
;
		XOR	A
		LD	(HL),A
		LD	A,(G_TRNPTN)
		INC	A
		AND	$003
		LD	(G_TRNPTN),A
		LD	A,(G_TRNXPS)
		SUB	$004
		LD	(G_TRNXPS),A
		RET
;
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�S�Ԃ̐����̃^�����n�`�l�Z�b�g			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
TARIN_4DAT0
TARIN_4DAT2
	DB	$000,$000,$06C,$006
	DB	$000,$008,$06E,$006
	DB	$000,$010,$076,$006
	DB	$010,$000,$078,$006
	DB	$010,$008,$07A,$006
	DB	$010,$010,$07C,$006
;
TARIN_4DAT1
	DB	$0F8,$000,$04C,$006
	DB	$0F8,$008,$04E,$006
	DB	$0F8,$010,$050,$006
	DB	$008,$000,$052,$006
	DB	$008,$008,$054,$006
	DB	$008,$010,$056,$006
;
TARIN_4DAT3
	DB	$0F8,$000,$04C,$006
	DB	$0F8,$008,$04E,$006
	DB	$0F8,$010,$050,$006
	DB	$008,$000,$058,$006
	DB	$008,$008,$05A,$006
	DB	$008,$010,$06A,$006
;
TARIN_4DAT4
	DB	$000,$000,$040,$006
	DB	$000,$008,$042,$006
	DB	$000,$010,$044,$006
	DB	$010,$000,$046,$006
	DB	$010,$008,$048,$006
	DB	$010,$010,$04A,$006
TARIN_4DAT5
;
TARIN4_OAM_DAT
	DW	TARIN_4DAT0,TARIN_4DAT1,TARIN_4DAT2
	DW	TARIN_4DAT3,TARIN_4DAT4
;
TARIN_DAT_CNT
	DB	(TARIN_4DAT1-TARIN_4DAT0)
	DB	(TARIN_4DAT3-TARIN_4DAT1)
	DB	(TARIN_4DAT1-TARIN_4DAT2)
	DB	(TARIN_4DAT4-TARIN_4DAT3)
	DB	(TARIN_4DAT5-TARIN_4DAT4)
;
;
GEKI_4TARIN_OAM
		LD	HL,TARIN_DAT_CNT
		LD	A,(G_TRNPTN)
		LD	E,A
		LD	D,$000
		ADD	HL,DE
		LD	C,(HL)
		SLA	E
		LD	HL,TARIN4_OAM_DAT
		ADD	HL,DE
		LD	A,(HLI)
		LD	H,(HL)
		LD	L,A
;
		LD	A,(G_TRNYPS)
		LD	(WORK0),A
		LD	A,(G_TRNXPS)
		LD	(WORK1),A
		CALL	GEKI_OAM
;
		RET
;
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�S�Ԃ̐����̃����N�̂l�`�h�m			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
GEKI_4RINK_MAIN
		LD	A,(G_PLMOD)
		RST	0
		DW	GEKI_4RINK_MOV
		DW	PHOTO_WAIT
;
;+------------------------------------------------------+
;|	�S�Ԃ̐����̃����N�̈ړ��֌W			|
;+------------------------------------------------------+
GEKI_4RINK_MOV
		LD	HL,G_PLCNT
		INC	(HL)
		LD	A,(HL)
		CP	10
		RET	C
;
		XOR	A
		LD	(HL),A
		LD	A,(G_PLPTN)
		INC	A
		AND	$003
		LD	(G_PLPTN),A
		LD	HL,G_PLXSTP
		LD	A,(G_PLXPS)
		ADD	A,$004
		BIT	7,A
		JR	NZ,GK_4RINK_MV_260
		CP	(HL)
		JR	C,GK_4RINK_MV_260
		CALL	RNK_MOD_INC
		LD	A,$004			;�����~�܂�
		LD	(G_PLPTN),A		;	���ʌ���
		LD	A,(G_PLXSTP)
GK_4RINK_MV_260
		LD	(G_PLXPS),A
		RET
;
;+------------------------------------------------------+
;|	�ʐ^�f��҂�					|
;+------------------------------------------------------+
PHOTO_WAIT
		RET
;
;+----------------------------------------------+
;|	�����̃����N�̃��[�h�������D		|
;+----------------------------------------------+
RNK_MOD_INC
		LD	HL,G_PLMOD
		INC	(HL)
		RET
;
;+------------------------------------------------------+
;|	�����̃����N�̂n�`�l�Z�b�g			|
;+------------------------------------------------------+
GEKI_RINK_OAM
		LD	HL,RINKU4_DAT_CNT
		LD	A,(G_PLPTN)
		LD	E,A
		LD	D,$000
		ADD	HL,DE
		LD	C,(HL)
		LD	HL,RINK4_OAM_DATA
GK_RINK_OAM_SB
		LD	A,(G_PLPTN)
		SLA	A
		LD	E,A
		LD	D,$000
		ADD	HL,DE
		LD	A,(HLI)
		LD	H,(HL)
		LD	L,A
;
		LD	A,(G_PLYPS)
		LD	(WORK0),A
		LD	A,(G_PLXPS)
		LD	(WORK1),A
		CALL	GEKI_OAM
;
		RET
;
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�S�Ԃ̐����̃}�����̂l�`�h�m			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
GEKI_4MARIN_MAIN
		LD	A,(G_MRNMOD)
		RST	0
		DW	GEKI_4MARIN_MOV
		DW	PHOTO_WAIT
;
;+------------------------------------------------------+
;|	�S�Ԃ̐����̃}�����̈ړ��֌W			|
;+------------------------------------------------------+
GEKI_4MARIN_MOV
		LD	A,$068
		LD	(G_MRNYPS),A
		LD	HL,G_MRNCNT
		INC	(HL)
		LD	A,(HL)
		CP	10
		RET	C
;
		XOR	A
		LD	(HL),A
		LD	A,(G_MRNPTN)
		INC	A
		AND	$003
		LD	(G_MRNPTN),A
		LD	A,(G_MRNXPS)
		ADD	A,$004
		BIT	7,A
		JR	NZ,GK_4MARIN_MV_260
		CP	$040
		JR	C,GK_4MARIN_MV_260
		LD	HL,G_MRNMOD
		INC	(HL)
		LD	A,$004			;�����~�܂�
		LD	(G_MRNPTN),A		;	���ʌ���
		LD	A,$040
GK_4MARIN_MV_260
		LD	(G_MRNXPS),A
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�S�Ԃ̐����̃}�����n�`�l�Z�b�g			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
GEKI_4MARIN_OAM
		LD	HL,MARIN_4DAT_CNT
		LD	A,(G_MRNPTN)
		LD	E,A
		LD	D,$000
		ADD	HL,DE
		LD	C,(HL)
		LD	HL,MARIN_4DATA
;
GK_MARIN_OAM_SB
		LD	A,(G_MRNPTN)
		SLA	A
		LD	E,A
		LD	D,$000
		ADD	HL,DE
		LD	A,(HLI)
		LD	H,(HL)
		LD	L,A
		LD	A,(G_MRNYPS)
		LD	(WORK0),A
		LD	A,(G_MRNXPS)
		LD	(WORK1),A
		CALL	GEKI_OAM
;
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�����̎ʐ^���n�`�l�Z�b�g			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
GEKI_PHOTO_OAM
		LD	C,PHOTO_DAT_CNT
		LD	HL,PHOTO_OAM_DATA
GK_PHOTO_OAM_SB
		LD	A,(G_PHTPTN)
		SLA	A
		LD	E,A
		LD	D,$000
		ADD	HL,DE
		LD	A,(HLI)
		LD	H,(HL)
		LD	L,A
		LD	A,(G_PHTYPS)
		LD	(WORK0),A
		LD	A,(G_PHTXPS)
		LD	(WORK1),A
		CALL	GEKI_OAM
;
		RET
;
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�S�Ԃ̐����̕����{				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
KAZAMI_DAT0
	DB	$048,$068,$05C,$003
	DB	$058,$068,$05E,$003
;
KAZAMI_DAT1
	DB	$048,$068,$060,$003
	DB	$058,$068,$062,$003
;
KAZAMI_DAT_CNT	EQU	(KAZAMI_DAT1-KAZAMI_DAT0)
;
KAZAMI_MAIN
		LD	HL,G_KZMCNT
		INC	(HL)
		LD	A,(HL)
		CP	10
		JR	C,KZM_MAIN_050
		XOR	A
		LD	(HL),A
		LD	A,(G_KZMPTN)
		XOR	$001
		LD	(G_KZMPTN),A
KZM_MAIN_050
;
		LD	HL,KAZAMI_DAT0
		LD	A,(G_KZMPTN)
		AND	A
		JR	Z,KZM_MAIN_150
		LD	HL,KAZAMI_DAT1
KZM_MAIN_150
		XOR	A
		LD	(WORK0),A
		LD	(WORK1),A
		LD	C,KAZAMI_DAT_CNT
		CALL	GEKI_OAM
		RET
;
;
;
;+--------------------------------------------------------------+
;|	�n�`�l�Z�b�g						|
;|			work0�F�x�|�W�V����			|
;|			work1�F�w�|�W�V����			|
;|			 �@�b�F�f�[�^�̌�			|
;|			 �g�k�F�n�`�l�f�[�^			|
;+--------------------------------------------------------------+
GEKI_OAM
		PUSH	HL
		LD	A,(GEKI_OAM_IDX)
		LD	E,A
		ADD	A,C
		LD	(GEKI_OAM_IDX),A
		LD	D,$000
		LD	HL,OAM
		ADD	HL,DE
		PUSH	HL
		POP	DE
		POP	HL
;
		SRL	C
		SRL	C
;
GEKI_OAM_LOOP
		LD	A,(WORK0)
		ADD	A,(HL)
		LD	(DE),A
		INC	DE
		INC	HL
;
		LD	A,(WORK1)
		ADD	A,(HL)
		LD	(DE),A
		INC	DE
		INC	HL
;
		LD	A,(HL)
		LD	(DE),A
		INC	DE
		INC	HL
;
		LD	A,(HL)
		LD	(DE),A
		INC	DE
		INC	HL
;
		DEC	C
		LD	A,C
		AND	A
		JR	NZ,GEKI_OAM_LOOP
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�T�Ԃ̐����̂l�`�h�m����				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
GEKI_5MAIN
		LD	HL,G_TIMER
		INC	(HL)
		LD	A,(HL)
		CP	$050
		RET	NZ
;
		LD	A,(PHOTOFG)	;�ʐ^�T�̃t���O�n�m�I
		OR	%00010000	;
		LD	(PHOTOFG),A	;
;
		XOR	A
		LD	(HL),A
		XOR	A
		LD	(SBCNT),A
		LD	(SBHR),A
		CALL	GEKI_ITMINC
;
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�U�Ԃ̐����̂l�`�h�m����				x
;x				���������ƈꏏ��		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
GEKI_6MAIN
		LD	A,$01C
		LD	(GEKI_OAM_IDX),A
;;;KK;;;		LD	A,(KEYA2)
;;;KK;;;		AND	%10000000	;�r�s�`�q�s�L�[ �n�m�H
;;;KK;;;		JR	Z,GK_6MAIN_500	;	NO --> GK_6MAIN_500
;;;KK;;;		XOR	A
;;;KK;;;		LD	(SBCNT),A
;;;KK;;;		LD	(SBHR),A
;;;KK;;;		CALL	GEKI_ITMINC
;
GK_6MAIN_500
		CALL	GEKI06_OAM
;
		CALL	WAN_MAIN
;
		CALL	PHOTO_FLASH
;
		LD	A,:GEKI_6MAIN
		CALL	MESEGE_SUB
		LD	A,:GEKI_6MAIN
		CALL	PBSET
		RET
;
;+------------------------------------------------------+
;|	�U�Ԃ̐����̂n�`�l�Z�b�g			|
;+------------------------------------------------------+
GEKI06_OAM
		CALL	KACHIN_OAM
		CALL	GEKI_RINK6_OAM
		CALL	GEKI_WAN_OAM
		LD	A,(G_WANSTP)
		AND	$002
		RET	NZ
		CALL	WAN_KUSARI
GEKI00_OAM
GEKI01_OAM
GEKI05_OAM
GEKI12_OAM
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�U�Ԃ̐����̃����N�n�`�l�Z�b�g			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
GEKI_RINK6_OAM
		LD	HL,RINK6_CNT_DAT
		LD	A,(G_PLPTN)
		LD	E,A
		LD	D,$000
		ADD	HL,DE
		LD	C,(HL)
		LD	HL,RINK6_OAM_DATA
		SLA	E
		LD	D,$000
		ADD	HL,DE
		LD	A,(HLI)
		LD	H,(HL)
		LD	L,A
		LD	A,(G_PLYPS)
		LD	(WORK0),A
		LD	A,(G_PLXPS)
		LD	(WORK1),A
		CALL	GEKI_OAM
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�����̃��������̂l�`�h�m			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
WAN_MAIN
		LD	A,(MSGEFG)
		AND	A		;���b�Z�[�W�\�����H
		RET	NZ		;	YES --> return
;
		LD	A,(G_PHOTOFG)
		AND	A
		RET	NZ
;
		LD	A,(G_WANSTP)
		AND	$002
		CALL	Z,WAN_MOVE
;
WAN_MAIN_100
		LD	A,(G_WANMOD)
		RST	0
		DW	WAN_0000
		DW	WAN_1000
		DW	WAN_2000
		DW	WAN_3000
		DW	WAN_4000
		DW	WAN_5000
		DW	WAN_6000
		DW	WAN_7000
		DW	WAN_8000
		DW	WAN_8400
		DW	WAN_8800
		DW	WAN_9000
		DW	WAN_A000
		DW	WAN_B000
;
;+----------------------------------------------+
;|	�����N�̂w�X�s�[�h�v�Z			|
;+----------------------------------------------+
PLMV_XCALC
		LD	A,(G_PLXSPD)
		PUSH	AF
		SWAP	A
		AND	$F0
		LD	HL,G_PLXSDR
		ADD	A,(HL)
		LD	(HL),A
		RL	D
;
		LD	HL,G_PLXPS
;
		POP	AF
		LD	E,$0
		BIT	7,A
		JR	Z,PLMV_050
		LD	E,$F0
PLMV_050
		SWAP	A
		AND	$0F
		OR	E
		RR	D
		ADC	A,(HL)
		LD	(HL),A
		RET
;
;+----------------------------------------------+
;|	���������A�����܂��			|
;+----------------------------------------------+
WAN_MOVE
		LD	A,(G_WANYSPD)
		PUSH	AF
		SWAP	A
		AND	$F0
		LD	HL,G_WANYSDR
		ADD	A,(HL)
		LD	(HL),A
		RL	D
;
		LD	HL,G_WANYPS
;
		POP	AF
		LD	E,$0
		BIT	7,A
		JR	Z,WAN_MV_050
		LD	E,$F0
WAN_MV_050
		SWAP	A
		AND	$0F
		OR	E
		RR	D
		ADC	A,(HL)
		CP	$070		;�n�ʂ̍����`�F�b�N
		JR	C,WAN_MV_080
		LD	A,$070
WAN_MV_080
		LD	(HL),A
		LD	HL,G_WANYSPD
		LD	A,(HL)
		ADD	A,$004
		LD	(HL),A
;
		LD	A,(G_WANSTP)	;���������X�g�b�v
		AND	A		;	�t���O�n�m�H
		JR	Z,WAN_MV_100	;	NO --> WAN_MV_100
		LD	A,(G_WANYPS)
		CP	$070
		JR	C,WAN_MV_200
		XOR	A
		LD	(G_WANYSPD),A
		JR	WAN_MV_300
;
WAN_MV_100
		LD	A,(G_WANYPS)
		CP	$070		;�W�����v���H
		JR	C,WAN_MV_200	;	YES --> WAN_MV_200
		CALL	RNDSUB
		AND	$00C
		SLA	A
		SLA	A
		CPL
		INC	A
		LD	(G_WANYSPD),A
;
WAN_MV_200
		LD	HL,G_WANXPS
		LD	A,(G_WANMK)
		AND	A
		JR	NZ,WAN_MV_220
		DEC	(HL)
		LD	A,(HL)
		CP	$040
		JR	NC,WAN_MV_260
		LD	A,$040
		JR	WAN_MV_240
WAN_MV_220
		INC	(HL)
		LD	A,(HL)
		CP	$070
		JR	C,WAN_MV_260
		LD	A,$070
WAN_MV_240
		LD	(HL),A		;�ړ�����
		LD	A,(G_WANMK)	;	�`�F���W
		XOR	$001		;
		LD	(G_WANMK),A	;
		LD	A,(G_WANPTN)
		XOR	$002
		LD	(G_WANPTN),A
WAN_MV_260
;
WAN_MV_300
		XOR	A
		LD	(G_WANSTP),A
		RET
;
;+------------------------------------------------------+
;|	�ŏ��̃��b�Z�[�W�\��				|
;+------------------------------------------------------+
WAN_0000
		LD	HL,G_TIMER
		INC	(HL)
		LD	A,(HL)
		CP	$050
		RET	C
;
		XOR	A
		LD	(HL),A
		LD	(G_PLCNT),A
		LD	A,$070
		CALL	MSGCH3
WAN_MODE_INC
		LD	HL,G_WANMOD
		INC	(HL)
		RET
;
;+------------------------------------------------------+
;|	�����N�����������̕�������			|
;+------------------------------------------------------+
WAN_RINK_MV_DT
	DB	$001,$002,$001,$003,$001,$002,$001,$003
	DB	$001,$002,$001,$003,$001,$002,$001,$003
	DB	$001,$002,$001,$003,$001,$002,$001,$003
	DB	$001,$002,$001,$003,$001,$002,$001,$003
	DB	$001,$002,$001,$003,$001,$002,$001,$003
;
WAN_1000
WAN_4000
WAN_6000
		LD	HL,G_TIMER
		INC	(HL)
		LD	A,(HL)
		CP	$008
		RET	C
;
		XOR	A
		LD	(HL),A
		LD	HL,G_PLCNT
		INC	(HL)
		LD	E,(HL)
		LD	D,$000
		LD	HL,WAN_RINK_MV_DT
		ADD	HL,DE
		LD	A,(HL)
		LD	(G_PLPTN),A
		LD	A,(G_PLXPS)
		SUB	$003
		LD	(G_PLXPS),A
;
		LD	A,(G_PLXPS)	;���������Ƃ�
		LD	HL,G_WANXPS	;	�ڐG�҂�
		SUB	(HL)		;
		BIT	7,A		;
		JR	NZ,WAN_146_200	;
		CP	$008		;
		RET	NC		;
;
WAN_146_200
		XOR	A
		LD	(G_TIMER),A
		LD	A,$002
		LD	(G_PLPTN),A
		LD	A,(G_PLXPS)
		SUB	$004
		LD	(G_PLXPS),A
		LD	A,$010
		LD	(G_KACHINFG),A
		LD	A,$007		;�J�b�L�[��
		LD	(SOUND1),A
		LD	A,$028
		LD	(G_PLXSPD),A
		LD	A,(G_PLYPS)
		ADD	A,$003
		LD	(G_KOUKAYPS),A
		LD	A,(G_PLXPS)
		SUB	$00C
		LD	(G_KOUKAXPS),A
		JP	WAN_MODE_INC
;
;+----------------------------------------------+
;|	�����N�A���˕Ԃ���ĉ�����		|
;+----------------------------------------------+
RINK_HANE
		CALL	PLMV_XCALC
		LD	A,(G_PLXSPD)
		AND	A
		RET	Z
		SUB	$003
		BIT	7,A
		JR	Z,RINK_HN_100
		XOR	A
RINK_HN_100
		LD	(G_PLXSPD),A
		RET
;
;+------------------------------------------------------+
;|	���ʃI�u�W�F�I���҂������������A���p�N�p�N	|
;+------------------------------------------------------+
WAN_BAU_DAT
	DB	$000,$001,$000,$001,$000,$001,$001,$000
	DB	$000,$001,$000,$001,$000,$001,$001,$000
;
WAN_2000
		LD	A,$001
		LD	(G_WANSTP),A
		CALL	RINK_HANE
		LD	A,(G_KACHINFG)
		AND	A
		RET	NZ
;
		LD	HL,G_TIMER
		INC	(HL)
		LD	A,(HL)
		AND	$030
		CP	$030
		JR	NZ,WAN_2200
		XOR	A
		LD	(HL),A
		LD	A,$071
		CALL	MSGCH3
		JP	WAN_MODE_INC
;
WAN_2200
		SWAP	A
		LD	E,A
		LD	D,$000
		LD	HL,WAN_BAU_DAT
		ADD	HL,DE
		LD	A,(G_WANPTN)
		AND	$0FE
		OR	(HL)
		LD	(G_WANPTN),A
		RET
;
;+------------------------------------------------------+
;|	�����N�A���ʌ���				|
;+------------------------------------------------------+
WAN_3000
;;;KK;;;		XOR	A
;;;KK;;;		LD	(G_PLPTN),A
		LD	HL,G_TIMER
		INC	(HL)
		LD	A,(HL)
		CP	$020
		RET	NZ
;
		XOR	A
		LD	(HL),A
		LD	(G_PLCNT),A
		LD	A,$072		;�����Ƃ����Â��āI
		CALL	MSGCH3
		JP	WAN_MODE_INC
;
;+------------------------------------------------------+
;|	�����N�A����ɋ߂Â�				|
;+------------------------------------------------------+
WAN_5000
		LD	A,$001
		LD	(G_WANSTP),A
		CALL	RINK_HANE
		LD	A,(G_KACHINFG)
		AND	A
		RET	NZ
;
		LD	HL,G_TIMER
		INC	(HL)
		LD	A,(HL)
		CP	$04F
		JR	NZ,WAN_5200
		XOR	A
		LD	(HL),A
		LD	(G_PLCNT),A
		LD	A,$073
		CALL	MSGCH3
		JP	WAN_MODE_INC
;
WAN_5200
		AND	$070
		SWAP	A
		LD	E,A
		LD	D,$000
		LD	HL,WAN_BAU_DAT
		ADD	HL,DE
		LD	A,(G_WANPTN)
		AND	$0FE
		OR	(HL)
		LD	(G_WANPTN),A
		RET
;
;+------------------------------------------------------+
;|	���������̋@���A�����I				|
;+------------------------------------------------------+
WAN_7000
		LD	A,$001
		LD	(G_WANSTP),A
		CALL	RINK_HANE
		LD	A,(G_KACHINFG)
		AND	A
		RET	NZ
;
		LD	HL,G_TIMER
		INC	(HL)
		LD	A,(HL)
		CP	$068
		JR	NZ,WAN_7200
		LD	A,$002
		LD	(G_WANSTP),A
		XOR	A
		LD	(HL),A
		LD	A,$075
		CALL	MSGCH3
		JP	WAN_MODE_INC
;
WAN_7200
		AND	$070
		SWAP	A
		LD	E,A
		LD	D,$000
		LD	HL,WAN_BAU_DAT
		ADD	HL,DE
		LD	A,(G_WANPTN)
		AND	$0FE
		OR	(HL)
		LD	(G_WANPTN),A
		RET
;
;+------------------------------------------------------+
;|	�ʐ^���ʂ��O					|
;+------------------------------------------------------+
WAN_8000
		LD	A,$002
		LD	(G_WANSTP),A
;;;KK;;;		LD	A,$004
;;;KK;;;		LD	(G_WANPTN),A
;;;KK;;;		XOR	A
;;;KK;;;		LD	(G_PLPTN),A
		LD	A,$074		;�J�b�R���ā[
		CALL	MSGCH3
		JP	WAN_MODE_INC
;
;+------------------------------------------------------+
;|	�ʐ^���ʂ��O	�����N�A���ʂ�����		|
;+------------------------------------------------------+
WAN_8400
		XOR	A
		LD	(G_PLPTN),A
;
		LD	HL,G_TIMER
		INC	(HL)
		LD	A,(HL)
		CP	$040
		RET	NZ
;
		XOR	A
		LD	(HL),A
		LD	A,$004
		LD	(G_PLPTN),A
		JP	WAN_MODE_INC
;
;+------------------------------------------------------+
;|	�ʐ^���ʂ��O	�����N�������������������ʂ�����|
;+------------------------------------------------------+
WAN_8800
		LD	HL,G_TIMER
		INC	(HL)
		LD	A,(HL)
		CP	$030
		RET	NZ
;
		XOR	A
		LD	(HL),A
		LD	A,$004
		LD	(G_WANPTN),A
		JP	WAN_MODE_INC
;
;+------------------------------------------------------+
;|	�����N�A�|�[�Y���Ƃ�				|
;+------------------------------------------------------+
WAN_FURUE
	DB	$002,$0FE
;
WAN_9000
		LD	HL,G_TIMER
		INC	(HL)
		LD	A,(HL)
		AND	$007
		JR	NZ,WAN_9050
		LD	A,(G_WANPTN)
		XOR	$001
		LD	(G_WANPTN),A
WAN_9050
		LD	A,$002
		LD	(G_WANSTP),A
;;;KK;;;		LD	A,$004
;;;KK;;;		LD	(G_PLPTN),A
		LD	A,(HL)
		AND	$003
		JR	NZ,WAN_9080
		LD	A,(HL)
		SRL	A
		SRL	A
		AND	$001
		LD	E,A
		LD	D,$000
		PUSH	HL
		LD	HL,WAN_FURUE
		ADD	HL,DE
		LD	A,(HL)
		LD	HL,G_WANXPS
		ADD	A,(HL)
		LD	(G_WANXPS),A
		LD	HL,G_WANYPS
		DEC	(HL)
		POP	HL
WAN_9080
		LD	A,(HL)
		CP	$030
		RET	NZ
;
		XOR	A
		LD	(HL),A
		LD	A,$006
		LD	(G_WANPTN),A
		LD	A,(G_WANXPS)
		ADD	A,$003
		LD	(G_WANXPS),A
		LD	A,(G_WANYPS)
		SUB	$003
		LD	(G_WANYPS),A
		JP	WAN_MODE_INC
;
;+------------------------------------------------------+
;|	���������A�����N���P���I�I�I			|
;+------------------------------------------------------+
WAN_A000
		LD	A,$002
		LD	(G_WANSTP),A
		LD	HL,G_TIMER
		INC	(HL)
		LD	A,(HL)
		CP	$010
		RET	C
		LD	A,$007
		LD	(G_WANPTN),A
		LD	A,(HL)
		CP	$020
		RET	NZ
;
		LD	A,$001
		LD	(G_PHOTOFG),A
		JP	WAN_MODE_INC
;
;+------------------------------------------------------+
;|	�t���b�V���I���҂�				|
;+------------------------------------------------------+
WAN_B000
		LD	A,(G_PHOTOFG)
		AND	A
		RET	NZ
;
		LD	HL,G_TIMER
		INC	(HL)
		LD	A,(HL)
		CP	$050
		RET	NZ
;
		LD	A,(PHOTOFG)
		OR	%00100000	;�U�Ԃ̎ʐ^�̃t���O�n�m�I
		LD	(PHOTOFG),A
		XOR	A
		LD	(SBCNT),A
		LD	(SBHR),A
		CALL	GEKI_ITMINC
		RET
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	���������̃`�F�[��				%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
WAN_KUSARI
;- - - X calc - -
		LD	A,(G_WANXPS)
		LD	(G_WAXBUF),A
;
		LD	A,(G_WANYPS)
		LD	(G_WAYBUF),A
;
		LD	DE,G_WAXBUF
		LD	HL,G_WAXBUF+1
;
		LD	C,$05
WAN_KSR_000
		LD	A,(DE)
		SUB	(HL)
		ADD	A,$07
		CP	$0E
		JR	C,WAN_KSR_010
;
		BIT	7,A
		JR	NZ,WAN_KSR_008
;
		INC	(HL)
		INC	(HL)
		INC	(HL)
		INC	(HL)
WAN_KSR_008
		DEC	(HL)
		DEC	(HL)
;
WAN_KSR_010
		INC	HL
		INC	DE
;
		DEC	C
		JR	NZ,WAN_KSR_000
;
;- - - Y calc - -
		LD	DE,G_WAYBUF
		LD	HL,G_WAYBUF+1
;
		LD	C,$05
WAN_KSR_100
		LD	A,(DE)
		SUB	(HL)
		ADD	A,$07
		CP	$0E
		JR	C,WAN_KSR_110
;
		BIT	7,A
		JR	NZ,WAN_KSR_109
;
		INC	(HL)
		INC	(HL)
		INC	(HL)
		INC	(HL)
WAN_KSR_109
		DEC	(HL)
		DEC	(HL)
;
WAN_KSR_110
		INC	HL
		INC	DE
;
		DEC	C
		JR	NZ,WAN_KSR_100
;
		LD	A,(FRCNT)
		AND	$001
		JR	Z,WAN_KSR_200
		LD	HL,G_WAYBUF
WAN_KSR_150
		LD	A,(HL)
		CP	$070
		JR	Z,WAN_KSR_180
		INC	(HL)
WAN_KSR_180
		INC	HL
		LD	A,L
		AND	$00F
		JR	NZ,WAN_KSR_150
;
;- - OAM SET - - - -
WAN_KSR_200
		LD	A,(GEKI_OAM_IDX)
		LD	E,A
		ADD	A,$00C
		LD	(GEKI_OAM_IDX),A
		LD	D,$0
		LD	HL,OAM
		ADD	HL,DE
		PUSH	HL
		POP	DE
;
		LD	C,$05
WAN_KSR_210
		LD	A,(FRCNT)
		XOR	C
		RRA
		JR	C,WAN_KSR_260
;
		LD	HL,G_WAYBUF+1-1
		ADD	HL,BC
		LD	A,(HL)
		LD	(DE),A
		INC	DE
		LD	HL,G_WAXBUF+1-1
		ADD	HL,BC
		LD	A,(HL)
		ADD	A,$04
		LD	(DE),A
		INC	DE
		LD	A,$7E		;�L�����N�^�[�i���o�[
		LD	(DE),A
		INC	DE
		LD	A,$00		;�A�g���r���[�g
		LD	(DE),A
		INC	DE
WAN_KSR_260
		DEC	C
		JR	NZ,WAN_KSR_210
;
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�������������ɓ����������ʂ̂n�`�l�Z�b�g	x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
KACHIN_OAM_DAT
		DB	$000,$000,$05E,$020
		DB	$000,$008,$05E,$000
;
;
KACHIN_OAM
		LD	A,(G_KACHINFG)
		AND	A
		RET	Z
;
		DEC	A
		LD	(G_KACHINFG),A
		LD	HL,KACHIN_OAM_DAT
KCN_OAM_100
		LD	A,(G_KOUKAYPS)
		LD	(WORK0),A
		LD	A,(G_KOUKAXPS)
		LD	(WORK1),A
		LD	C,$008
		CALL	GEKI_OAM
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�����̃��������n�`�l�Z�b�g			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
GEKI_WAN_OAM
		LD	HL,WAN_CNT_DAT
		LD	A,(G_WANPTN)
		LD	E,A
		LD	D,$000
		ADD	HL,DE
		LD	C,(HL)
		LD	HL,WAN_OAM_DATA
		SLA	E
		LD	D,$000
		ADD	HL,DE
		LD	A,(HLI)
		LD	H,(HL)
		LD	L,A
		LD	A,(G_WANYPS)
		LD	(WORK0),A
		LD	A,(G_WANXPS)
		LD	(WORK1),A
		CALL	GEKI_OAM
		RET
;
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�W�Ԃ̐����̂l�`�h�m����				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
GEKI_8MAIN
		LD	A,(KEYA2)
		AND	%10000000	;�r�s�`�q�s�L�[ �n�m�H
		JR	Z,GK_8MAIN_500	;	NO --> GK_8MAIN_500
		XOR	A
		LD	(SBCNT),A
		LD	(SBHR),A
		CALL	GEKI_ITMINC
;
GK_8MAIN_500
		CALL	GK8_SBMAIN
;
;;;KK;;;		LD	A,:GEKI_8MAIN
;;;KK;;;		CALL	MESEGE_SUB
;;;KK;;;		LD	A,:GEKI_8MAIN
;;;KK;;;		CALL	PBSET
		RET
;
;+------------------------------------------------------+
;|	�W�Ԃ̐����̂n�`�l�Z�b�g			|
;+------------------------------------------------------+
GEKI08_OAM
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�W�����̃T�u�l�`�h�m				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
GK8_SBMAIN
		LD	A,(MSGEFG)
		AND	A		;���b�Z�[�W�\�����H
		RET	NZ		;	YES --> return
;
		LD	A,(G_PLMOD)
		RST	0
		DW	GK8_MSGCHECK
		DW	PHOTO_WAIT
;
;+------------------------------------------------------+
;|	���b�Z�[�W�\���҂�				|
;+------------------------------------------------------+
GK8_MSGCHECK
		LD	HL,G_TIMER
		INC	(HL)
		LD	A,(HL)
		CP	$070
		RET	NZ
;;;KK;;;		LD	A,$017
;;;KK;;;		CALL	MSGCH2
		XOR	A
		LD	(SBCNT),A
		LD	(SBHR),A
;
		LD	A,(PHOTOFG)	;�ʐ^�W�̃t���O�n�m�I
		OR	%10000000	;
		LD	(PHOTOFG),A	;
;
		CALL	GEKI_ITMINC
		CALL	RNK_MOD_INC
		RET
;
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�X�Ԃ̐����̂l�`�h�m����				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
GEKI_9MAIN
		LD	HL,G_TIMER
		INC	(HL)
		LD	A,(HL)
		CP	$050
		RET	NZ
;
		XOR	A
		LD	(SBCNT),A
		LD	(SBHR),A
;
		LD	A,(PHOTOFG+1)	;�ʐ^�X�̃t���O�n�m�I
		OR	%00000001	;
		LD	(PHOTOFG+1),A	;
;
		CALL	GEKI_ITMINC
		RET
;
;+------------------------------------------------------+
;|	�X�Ԃ̐����̂n�`�l�Z�b�g			|
;+------------------------------------------------------+
GEKI09_OAM
		RET
;
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�P�O�Ԃ̐����̂l�`�h�m����				x
;x					����̖�̑O		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
GEKI_10MAIN
		LD	A,$01C
		LD	(GEKI_OAM_IDX),A
;
		CALL	GEKI10_OAM
;
		CALL	GEKI_10LCHRD_MAIN
;
		CALL	PHOTO_FLASH
;
GK_10MAIN_700
		LD	A,:GEKI_10MAIN
		CALL	MESEGE_SUB
		LD	A,:GEKI_10MAIN
		CALL	PBSET
		RET
;
;+------------------------------------------------------+
;|	�P�O�Ԃ̐����̂n�`�l�Z�b�g			|
;+------------------------------------------------------+
GEKI10_OAM
;;;KK;;;		CALL	GEKI_LCHRD_OAM
		LD	HL,LCHRD_DAT_CNT
		LD	A,(G_LCDPTN)
		LD	E,A
		LD	D,$000
		ADD	HL,DE
		LD	C,(HL)
		LD	HL,LCHRD_OAM_DATA
		SLA	E
		ADD	HL,DE
		LD	A,(HLI)
		LD	H,(HL)
		LD	L,A
		LD	A,(G_LCDYPS)
		LD	(WORK0),A
		LD	A,(G_LCDXPS)
		LD	(WORK1),A
		CALL	GEKI_OAM
;
		LD	HL,RINK10_DAT_CNT
		LD	A,(G_PLPTN)
		LD	E,A
		LD	D,$000
		ADD	HL,DE
		LD	C,(HL)
		LD	HL,RINK10_OAM_DATA
		CALL	GK_RINK_OAM_SB
;
		LD	C,PHOTO10_DAT_CNT
		LD	HL,PHOTO10_OAM_DATA
		CALL	GK_PHOTO_OAM_SB
		RET
;
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�P�O�Ԃ̐����̃��`���[�h�̂l�`�h�m		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
GEKI_10LCHRD_MAIN
		LD	A,(MSGEFG)
		AND	A			;���b�Z�[�W�\�����H
		RET	NZ			;	YES --> return
;
		LD	A,(G_LCDMOD)
		RST	0
GEKI10_ADR	DW	GK10_0000
		DW	GK10_1000
		DW	GK10_0000
		DW	GK10_2000
GEKI10_OUT_ADR	DW	GK10_3000
		DW	GK10_4000
		DW	GK10_5000
		DW	GK10_6000
		DW	GK10_7000
		DW	GK10_8000
;
GK10_OUT	EQU	(GEKI10_OUT_ADR-GEKI10_ADR)/2
;
;+----------------------------------------------+
;|	�����N�ړ�				|
;+----------------------------------------------+
GK10_RINK_MV
		LD	A,(G_PLXPS)
		CP	$03E
		JR	NZ,GK10_RKMV_100
		LD	A,(G_PHTXPS)
		CP	$052
		RET	NZ
		LD	A,$02E		;����ڂ���E�E�E
		CALL	MSGCH3
		CALL	LCDMOD_INC
		LD	(HL),GK10_OUT
		RET
;
GK10_RKMV_100
		LD	HL,G_PLCNT
		INC	(HL)
		LD	A,(HL)
		CP	10
		RET	C
;
		XOR	A
		LD	(HL),A
		LD	A,(G_PLPTN)
		XOR	$001
		LD	(G_PLPTN),A
		LD	HL,G_PLYPS
		DEC	(HL)
		LD	A,(G_PLXPS)
		ADD	A,$004
		LD	(G_PLXPS),A
		BIT	7,A
		RET	NZ
		CP	$03E
		RET	C
;
		LD	A,$002
		LD	(G_PLPTN),A
		LD	A,$03E
		LD	(G_PLXPS),A
		RET
;
;+------------------------------------------------------+
;|	�ʐ^�����낤��(�r�s�n�o)�������N�o��I		|
;+------------------------------------------------------+
GK10_0000
		CALL	GK10_RINK_MV
		LD	HL,G_TIMER
		INC	(HL)
		LD	A,(HL)
		CP	$030
		RET	NZ
		XOR	A
		LD	(HL),A
LCDMOD_INC
		LD	HL,G_LCDMOD
		INC	(HL)
		RET
;
;+------------------------------------------------------+
;|	�ʐ^�����낤��(�E�ɐi��)�������N�o��I		|
;+------------------------------------------------------+
GK10_1000
		CALL	GK10_RINK_MV
		LD	HL,G_PHTCNT
		INC	(HL)
		LD	A,(HL)
		CP	10
		RET	C
;
		XOR	A
		LD	(HL),A
		LD	A,(G_PHTPTN)
		AND	$001
		XOR	$001
		LD	(G_PHTPTN),A
		LD	A,(G_PHTXPS)
		ADD	A,$004
		CP	$070
		JR	C,GK10_1100
		CALL	LCDMOD_INC
		LD	A,$070
GK10_1100
		LD	(G_PHTXPS),A
		RET
;
;+------------------------------------------------------+
;|	�ʐ^�����낤��(���ɐi��)�������N�o��I		|
;+------------------------------------------------------+
GK10_2000
		CALL	GK10_RINK_MV
		LD	HL,G_PHTCNT
		INC	(HL)
		LD	A,(HL)
		CP	10
		RET	C
;
		XOR	A
		LD	(HL),A
		LD	A,(G_PHTPTN)
		OR	$002
		XOR	$001
		LD	(G_PHTPTN),A
		LD	A,(G_PHTXPS)
		SUB	$004
		CP	$054
		JR	NC,GK10_2100
		CALL	LCDMOD_INC
		LD	(HL),$000
		LD	A,$052
GK10_2100
		LD	(G_PHTXPS),A
		RET
;
;+------------------------------------------------------+
;|	���`���[�h�o��I				|
;+------------------------------------------------------+
GK10_3000
		LD	HL,G_LCDCNT
		INC	(HL)
		LD	A,(HL)
		CP	10
		RET	C
;
		XOR	A
		LD	(HL),A
		LD	A,(G_LCDPTN)
		XOR	$001
		LD	(G_LCDPTN),A
		LD	A,(G_LCDXPS)
		SUB	$004
		LD	(G_LCDXPS),A
		CP	$080
		JR	C,GK10_3200
		LD	HL,G_LCDYPS
		DEC	(HL)
		RET
;
GK10_3200
		LD	A,$080
		LD	(G_LCDXPS),A
		XOR	A
		LD	(G_LCDPTN),A
		LD	A,$3C		;���Ƃ�Ă���́E�E�E
		CALL	MSGCH3		;
		CALL	LCDMOD_INC
		RET
;
;+------------------------------------------------------+
;|	���`���[�h�A�����N�ׂ̗ց��J�����}���ޏ�	|
;+------------------------------------------------------+
GK10_4000
		LD	A,$004		;�����N���ʂ�����
		LD	(G_PLPTN),A	;
;
		LD	A,(G_PHTPTN)
		AND	$001
		OR	$004
		LD	(G_PHTPTN),A
		LD	A,(FRCNT)
		AND	$007
		JR	NZ,GK10_4050
		LD	A,(G_PHTPTN)
		XOR	$001
		LD	(G_PHTPTN),A
GK10_4050
		LD	A,(FRCNT)
		AND	$001
		JR	NZ,GK10_4100
		LD	HL,G_PHTYPS
		INC	(HL)
;
GK10_4100
		LD	HL,G_LCDCNT
		INC	(HL)
		LD	A,(HL)
		CP	10
		RET	C
;
		XOR	A
		LD	(HL),A
		LD	A,(G_LCDPTN)
		XOR	$001
		LD	(G_LCDPTN),A
		LD	HL,G_LCDYPS
		DEC	(HL)
		LD	A,(G_LCDXPS)
		SUB	$004
		LD	(G_LCDXPS),A
		CP	$058
		RET	NC
;
		LD	A,$056
		LD	(G_LCDXPS),A
;;;KK;;;		XOR	A
		LD	A,$004		;���`���[�h���ʂ�����
		LD	(G_LCDPTN),A
		LD	A,$49		;�����A�ǂ�����ł�
		CALL	MSGCH3		;	�Ƃ邪�����E�E
		CALL	LCDMOD_INC
		RET
;
;+------------------------------------------------------+
;|	���`���[�h�ƃ����N�A���ʂ��ނ��đ҂�		|
;+------------------------------------------------------+
GK10_5000
		LD	A,$004		;�����N���ʂ�����
		LD	(G_PLPTN),A	;
;;;KK;;;		LD	A,$004
;;;KK;;;		LD	(G_LCDPTN),A
		LD	HL,G_TIMER
		INC	(HL)
		LD	A,(HL)
		CP	$040
		RET	NZ
;
		XOR	A
		LD	(HL),A
		JP	LCDMOD_INC
;
;+------------------------------------------------------+
;|	���`���[�h�ƃ����N�A�|�[�Y������ăt���b�V���҂�|
;+------------------------------------------------------+
GK10_6000
		LD	A,$005		;�����N���ʂ�����
		LD	(G_PLPTN),A	;
		LD	A,$005
		LD	(G_LCDPTN),A
		LD	HL,G_TIMER
		INC	(HL)
		LD	A,(HL)
		CP	$040
		RET	NZ
;
		XOR	A
		LD	(HL),A
		LD	HL,G_PHOTOFG
		INC	(HL)
		JP	LCDMOD_INC
;
;+------------------------------------------------------+
;|	�t���b�V���I���҂�				|
;+------------------------------------------------------+
GK10_7000
		LD	A,(G_PHOTOFG)
		AND	A
		RET	NZ
;
		LD	HL,G_TIMER
		INC	(HL)
		LD	A,(HL)
		CP	$020
		RET	NZ
;
		XOR	A
		LD	(G_LCDPTN),A
		LD	A,$54
		CALL	MSGCH3
		JP	LCDMOD_INC
;
;+------------------------------------------------------+
;|	���`���[�h�A�ޏ�				|
;+------------------------------------------------------+
GK10_8000
		LD	A,$004		;�����N���ʂ�����
		LD	(G_PLPTN),A	;
;
		LD	A,(G_LCDXPS)
		CP	$028
		JR	NC,GK10_8100
		CALL	FDIN		; FDIN �����ǃt�F�[�h�A�E�g
		LD	A,(SBHR)
		CP	$04
		JR	NZ,GK10_8200
		CALL	GEKI_ITMINC
		LD	A,(PHOTOFG+1)	;�ʐ^�P�O�̃t���O�n�m�I
		OR	%00000010	;
		LD	(PHOTOFG+1),A	;
		JR	GK10_8200
;
GK10_8100
		XOR	A
		LD	(SBCNT),A
		LD	(SBHR),A
GK10_8200
		LD	HL,G_LCDCNT
		INC	(HL)
		LD	A,(HL)
		CP	$006
		RET	C
;
		XOR	A
		LD	(HL),A
		LD	A,(G_LCDPTN)
		XOR	$001
		LD	(G_LCDPTN),A
		LD	A,(G_LCDXPS)
		SUB	$004
		LD	(G_LCDXPS),A
;
		LD	HL,G_LCDYPS
		INC	(HL)
		RET
;
;
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�P�P�Ԃ̐����̂l�`�h�m����				x
;x			����̑O				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
GEKI_11MAIN
		LD	A,$01C
		LD	(GEKI_OAM_IDX),A
		LD	A,(KEYA2)
		AND	%10000000	;�r�s�`�q�s�L�[ �n�m�H
		JR	Z,GK_11MAIN_500	;	NO --> GK_11MAIN_500
;
GK_11MAIN_500
		CALL	GEKI11_RINK_OAM
		CALL	GEKI11_CAME_OAM
;
		CALL	GEKI11_SUBMAIN
;
		CALL	PHOTO_FLASH
;
		LD	A,:GEKI_11MAIN
		CALL	MESEGE_SUB
		LD	A,:GEKI_11MAIN
		CALL	PBSET
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�P�P�Ԃ̐����̃T�u�l�`�h�m����			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
GEKI11_SUBMAIN
		LD	A,(G_PLMOD)
		RST	0
		DW	GEKI11_0000
		DW	GEKI11_0500
		DW	GEKI11_1000
		DW	GEKI11_2000
		DW	GEKI11_3000
		DW	GEKI11_4000
		DW	GEKI11_5000
;
;+------------------------------------------------------+
;|	�J�������A�߂Â�				|
;+------------------------------------------------------+
GEKI11_0000
		LD	HL,G_TIMER
		INC	(HL)
		LD	A,(HL)
		CP	008
		RET	NZ
;
		XOR	A
		LD	(HL),A
		LD	A,(G_CMRPTN)
		XOR	$001
		LD	(G_CMRPTN),A
		LD	A,(G_CMRXPS)
		SUB	$003
		LD	(G_CMRXPS),A
		CP	$06C
		RET	NC
;
;;;KK;;;		LD	A,$06C
		LD	A,$06E
		LD	(G_CMRXPS),A
		XOR	A
		LD	(G_CMRPTN),A
		CALL	RNK_MOD_INC
		LD	A,$0AF		;�Ȃɂ��Ă�́H�E�E�E
		CALL	MSGCH3
		RET
;
;+------------------------------------------------------+
;|	���b�Z�[�W�I���҂�				|
;+------------------------------------------------------+
GEKI11_0500
		LD	A,(MSGEFG)
		AND	A			;���b�Z�[�W�\�����H
		RET	NZ			;	YES --> return
;
		LD	A,$02E
		CALL	MSGCH2
		LD	A,$001
		LD	(G_PLPTN),A
		LD	HL,G_PLXPS
		DEC	(HL)
		DEC	(HL)
		CALL	RNK_MOD_INC
		RET
;
;+------------------------------------------------------+
;|	���b�Z�[�W�I���҂�				|
;+------------------------------------------------------+
GEKI11_1000
		LD	A,(MSGEFG)
		AND	A			;���b�Z�[�W�\�����H
		RET	NZ			;	YES --> return
;
;;;KK;;;		LD	A,$002
;;;KK;;;		LD	(G_PLPTN),A
		LD	A,$001
		LD	(G_CMRPTN),A
		CALL	RNK_MOD_INC
		RET
;
;+------------------------------------------------------+
;|	�J�������ƃ����N�A�ʐ^�ʒu��			|
;+------------------------------------------------------+
GEKI11_2000
		CALL	GEKI11_RINK_MV
		LD	HL,G_TIMER
		INC	(HL)
		LD	A,(HL)
		CP	008
		RET	NZ
;
		XOR	A
		LD	(HL),A
		LD	A,(G_CMRPTN)
		XOR	$001
		LD	(G_CMRPTN),A
		LD	A,(G_CMRYPS)
		ADD	A,$002
		LD	(G_CMRYPS),A
		PUSH	AF
		AND	$003
		JR	NZ,GK11_2500
		LD	HL,G_CMRXPS
		DEC	(HL)
GK11_2500
		POP	AF
		CP	$0B0
		RET	C
		CALL	RNK_MOD_INC
		LD	A,$0F6
		CALL	MSGCH2
		RET
;
;+----------------------------------------------+
;|	�����N�ړ�				|
;+----------------------------------------------+
GEKI11_RINK_MV
		LD	A,(G_PLPTN)
		CP	$005		;���ʌ����|�[�Y�H
		RET	Z		;	YES --> return
;
		LD	HL,G_PLCNT
		INC	(HL)
		LD	A,(HL)
		CP	010
		RET	NZ
;
		XOR	A
		LD	(HL),A
		LD	HL,G_PLPTN
		INC	(HL)
		LD	A,(HL)
		CP	$005
		JR	NZ,GK11_RK_MV_120
		LD	A,$001
		LD	(HL),A
GK11_RK_MV_120
		LD	A,(G_PLXPS)
		ADD	A,$004
		CP	$061
		JR	C,GK11_RK_MV_150
		LD	A,$061
GK11_RK_MV_150
		LD	(G_PLXPS),A
;
		LD	A,(G_PLYPS)
		SUB	$001
		CP	$055
		JR	NC,GK11_RK_MV_250
		LD	A,$005
		LD	(G_PLPTN),A
		LD	A,$055
GK11_RK_MV_250
		LD	(G_PLYPS),A
		RET
;
;+------------------------------------------------------+
;|	���b�Z�[�W�I���҂�				|
;+------------------------------------------------------+
GEKI11_3000
		LD	A,(MSGEFG)
		AND	A			;���b�Z�[�W�\�����H
		RET	NZ			;	YES --> return
;
		LD	A,$006		;�����N���߃|�[�Y
		LD	(G_PLPTN),A
		JP	RNK_MOD_INC
;
;+------------------------------------------------------+
;|	�t���b�V���҂�					|
;+------------------------------------------------------+
GEKI11_4000
		LD	HL,G_TIMER
		INC	(HL)
		LD	A,(HL)
		CP	$030
		RET	NZ
;
		XOR	A
		LD	(HL),A
		INC	A
		LD	(G_PHOTOFG),A
		CALL	RNK_MOD_INC
		RET
;
;+------------------------------------------------------+
;|	�P�P�Ԃ̐����̏I���҂�				|
;+------------------------------------------------------+
GEKI11_5000
		LD	A,(G_PHOTOFG)
		AND	A
		RET	NZ
;
		LD	HL,G_TIMER
		INC	(HL)
		LD	A,(HL)
		CP	$050
		RET	NZ
;
		XOR	A
		LD	(HL),A
		LD	(SBCNT),A
		LD	(SBHR),A
		CALL	GEKI_ITMINC
;
		LD	A,(PHOTOFG+1)	;�ʐ^�P�P�̃t���O�n�m�I
		OR	%00000100	;
		LD	(PHOTOFG+1),A	;
;
		RET
;
;+------------------------------------------------------+
;|	�P�P�Ԃ̐����̂n�`�l�Z�b�g			|
;+------------------------------------------------------+
GEKI11_OAM
;
;+------------------------------------------------------+
;|	�P�P�Ԃ̐����̃����N�̂n�`�l�Z�b�g		|
;+------------------------------------------------------+
GEKI11_RINK_OAM
		LD	HL,RINK11_DAT_CNT
		LD	A,(G_PLPTN)
		LD	E,A
		LD	D,$000
		ADD	HL,DE
		LD	C,(HL)
		LD	HL,RINK11_OAM_DAT
		JP	GK_RINK_OAM_SB
;
;+------------------------------------------------------+
;|	�P�P�Ԃ̐����̃J�������m�̂n�`�l�Z�b�g		|
;+------------------------------------------------------+
GEKI11_CAME_OAM
		LD	C,CAMERA_DAT_CNT
		LD	HL,CAMEBOY_OAM_DAT
		LD	A,(G_CMRPTN)
		SLA	A
		LD	E,A
		LD	D,$000
		ADD	HL,DE
		LD	A,(HLI)
		LD	H,(HL)
		LD	L,A
		LD	A,(G_CMRYPS)
		LD	(WORK0),A
		LD	A,(G_CMRXPS)
		LD	(WORK1),A
		CALL	GEKI_OAM
;
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�P�Q�Ԃ̐����̂l�`�h�m����				x
;x			�ʐ^���K�P����				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
GEKI_12MAIN
		LD	HL,G_TIMER
		INC	(HL)
		LD	A,(HL)
		CP	$040
		RET	NZ
;
		LD	A,(PHOTOFG+1)
		OR	%00001000	;�ʐ^�P�Q�f�d�s�I
		LD	(PHOTOFG+1),A	;
;
		XOR	A
		LD	(SBCNT),A
		LD	(SBHR),A
		CALL	GEKI_ITMINC
		RET
;
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	��������Q�[�����[�h�֖߂�				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
RTN_XPOS
	DB	$050
	DB	$050,$028,$000,$058,$059,$050
	DB	$000,$060,$078,$058,$028,$043
;
RTN_YPOS
	DB	$024
	DB	$024,$050,$000,$070,$070,$070
	DB	$000,$03C,$040,$040,$072,$050
;
GEKI_RETURN
		LD	A,(GMMODE)
		CP	GEKI02		;���̊R�f���������H
		JR	NZ,GK_RTN_100	;	NO --> GK_RTN_100
		CALL	FADE_OAM
;
GK_RTN_100
		CALL	FDIN		; FDIN �����ǃt�F�[�h�A�E�g
		LD	A,(SBHR)
		CP	$04
		RET	NZ
;
		CALL	LCDC_OFF	; �k�b�c�b �X�g�b�v
;
		LD	A,:GEKI_RETURN
		CALL	CAMERA_CHR_RESET
;
		LD	A,(GMMODE)
		CP	GEKI11		;���[���C�̂���f�����������H
		JR	NZ,GK_RTN_200	;	NO --> GK_RTN_200
		LD	A,(CGBFLG)
		AND	A		;�b�f�a�H
		JR	NZ,GK_RTN_160	;	YES --> GK_RTN_160
		LD	A,$00E
		JR	GK_RTN_180
GK_RTN_160
		LD	A,$02E
GK_RTN_180
		LD	B,$042
		LD	C,$006
		LD	H,:GEKI_RETURN
		CALL	NEWDJ_DMA
;
GK_RTN_200
		LD	A,%11000111	; �n�a�i �a�f �n�m �k�b�c�b �X�^�[�g
;;;KK;;;		LD	A,(LCDCB)	; �n�a�i �a�f �n�m �k�b�c�b �X�^�[�g
		LD	(LCDCB),A
		LD	(LCDC),A
;
		LD	HL,RTN_XPOS
		LD	A,(GMMODE)
		SUB	GEKI00
		LD	E,A
		LD	D,$000
		ADD	HL,DE
		LD	A,(HL)		;�Q�[���ɖ߂������̃����N��
		LD	(WPLXPSL),A	;	�|�W�V������
		LD	HL,RTN_YPOS	;	�����A�p�^�[���Z�b�g
		ADD	HL,DE		;
		LD	A,(HL)		;
		LD	(WPLYPSL),A	;
		XOR	A		;
		LD	(PLCHPT),A	;
		LD	A,$3		;
		LD	(PLCMKI),A	;
;
		LD	A,GPLAY
		LD	(GMMODE),A
		XOR	A
		LD	(ITMODE),A
		LD	A,WINDBGS
		LD	(VRFLG),A
;
;;;KK;;;		LD	A,$002
;;;KK;;;		LD	(ITMODE),A
;;;KK;;;;
;;;KK;;;		LD	A,(DJFLAG)
;;;KK;;;		AND	A		;�_���W�����H
;;;KK;;;		LD	A,DJBST		;
;;;KK;;;		JR	NZ,GK_RTN_320	;	YES --> GK_RTN_320
;;;KK;;;		LD	A,GRBST		;
;;;KK;;;GK_RTN_320
;;;KK;;;		LD	(BLNKFG),A
;;;KK;;;;
;;;KK;;;		LD	HL,SCRLFG	; Scroll base display reset !
;;;KK;;;		LD	E,$0
;;;KK;;;GK_RTN_340
;;;KK;;;		XOR	A
;;;KK;;;		LD	(HLI),A
;;;KK;;;		INC	E
;;;KK;;;		LD	A,E
;;;KK;;;		CP	$C
;;;KK;;;		JR	NZ,GK_RTN_340
;
		RET
;
;+------------------------------------------------------+
;|	���[�h�h�m�b					|
;+------------------------------------------------------+
GEKI_ITMINC
		LD	HL,ITMODE
		INC	(HL)
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�p�^�[���q�`�l�A�h���X���f�d�s			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
GKCHPT_ADR
		LD	HL,ENCHPT
		ADD	HL,BC
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�w�X�s�[�h�̃A�h���X���f�d�s			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
GKXSPD_ADR
		LD	HL,ENXSPD
		ADD	HL,BC
		RET
;
;----------------------------------------------------------------
	END
;----------------------------------------------------------------
