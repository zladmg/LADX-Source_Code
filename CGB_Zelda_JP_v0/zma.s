
		onbankgroup

;==============	�o���N�O ================================================
BANK0		GROUP	0
;-------------<	ZCO >-------------
		EXTERN	IDJMP,CONT,LCDC_OFF,V_RAMC,RAMCLR,V_RAMB,SVOPEN
		EXTERN	V_RAMD,RMCLSB,VRAMTR,VRAMTR1,VRAMTR2,DATA_MOV
;
;-------------<	ZPL >-------------
		EXTERN	PLAY,FDIN,FDOUT,MSSCR2S,MSSCR3S,PLCSET,PLCHTR
		EXTERN	GPLAY,ONOFSUB,MSSC2,MSSC3,OPING,PSLCT,NMCPY,LOVED
		EXTERN	ENDG,GEKI00,ITSEL
;
;-------------<	ZES >-------------
		EXTERN	ENOMST
;
;-------------<	ZBS >-------------
		EXTERN	DJBKST,GRBKST,BANKTR,GMAPBKST,GOVBKST,GMAPCHST
		EXTERN	PEACHBKST,LOVEBKST,KAB1BKST,KABABKST,BANKST
		EXTERN	BANKS2,BANKS3,RMBGST,OPBKST,OPBKS2,BKTRBD
		EXTERN	TOUBGCH,ENDCHA,ENDCHB2,ENDCHC,ENDCHB,ENDCHD,ENDCHE
		EXTERN	ENDCHF,ENDCHG,ENDCHA1,ENDCHYM,ENDCHA2
;
;-------------<	ZMSSUB >-------------
		EXTERN	MESEGE
;
;==============	�o���N�P ================================================
BANK1		GROUP	1
;-------------<	ZS1 >-------------
;(CGB)		EXTERN	MSOMCL,DMASET,GAKKIST,TITLX,OAMCLR,OPA,TLX
		EXTERN	MSOMCL,DMASET,GAKKIST,OAMCLR,OPA,TLX
;
;-------------<	ZTI >-------------
		EXTERN	DMAPSUB,ODEMOSUB,DSPINT,NAMESET,GPMA
		EXTERN	PRN
;
;==============	�o���N�Q ================================================
BANK2		GROUP	2
;-------------<	ZEX >-------------
		EXTERN	DIMAPS,DIMAP2,DIMAP3,DIMAP4
;
;==============	�o���N�R ================================================
BANK3		GROUP	3
;-------------<	ZEN >-------------
		EXTERN	JYANPS
;
;==============	�o���N�V ================================================
BANK7		GROUP	7
;-------------<	ZE5 >-------------
		EXTERN	TAKIBMV
;
;==============	�o���N�W ================================================
BANK8		GROUP	8
;-------------<	ZVD >-------------
		EXTERN	PEACHDT,LOVEDT,KABADT,PSLCTBG,WINDBG,PSLCTBG2
		EXTERN	NSLCTBG,NCLERBG,GMAPBG,GOVERBG,GMAPCLB,NCOPYBG
		EXTERN	TSAVEBG,OPENBG,OPENBG2,OPENBG3,LOGODT,WINDBG2
		EXTERN	MAMUUBG,KABEDT1,TOUBGDT,ENDYMBG,EWAKUBG,EWAKUBG2
		EXTERN	ENDBGA1,ENDBGA2,ENDBGA3,ENDBGA4,ENDBGA5,ENDBGA
		EXTERN	ENDBGB2,ENDBGC,ENDBGB,ENDBGD,ENDBGE,ENDBGF,ENDBGG
;
;==============	�o���N�P�S ==============================================
BANK14		GROUP	$14
;-------------<	ZEX >--------------
		EXTERN	OKWARPST,WAVDT,CLCHDB,CLCHDB2,CLCHDO,CLCHDO2
		EXTERN	OKARINA_FADE,WAV_SCRL
;
;==============	�o���N�P�V ==============================================
BANK17		GROUP	$17
;-------------<	ZEND >-------------
		EXTERN	ENDWAVE,ENDBS
;
;==============	�o���N�P�` ==============================================
BANK1A		GROUP	$1A
;-------------<	ZBDATR >-------------
		EXTERN	BgAtrAddress,DR_AT_Address
;-------------<	ZMAP >------------
		EXTERN	Unit_check
;
;==============	�o���N�P�b ==============================================
BANK1C		GROUP	$1C
;-------------<	ZMS >-------------
                EXTERN  MSVRSV
;
;==============	�o���N�P�e ==============================================
BANK1F		GROUP	$1F
;-------------<	ZSD >-------------
                EXTERN  SOUNDSB,SOUNDST,SOUNDIT,SOUNDCL
;
;==============	�o���N�Q�O ==============================================
BANK20		GROUP	$20
;-------------<	ZJP >-------------
		EXTERN	VRADR_SET,BLNKSUB_JMP,NewDJChrSet
		EXTERN	GET_INIT_EN
;-------------<	ZFADE >-----------
		EXTERN	OpenWhiteOut,OpenWhiteIn,OpenFlash
		EXTERN	AllWhiteSet,AllColorSet,DownColorSet
		EXTERN	CGB_OKARINA_FADE,GK_WhiteOut,FUKU_WhiteOut
;-------------<	ZPLSUB >----------
		EXTERN	TITLX,HakaCheck,NEWDJ_COIN_CHK,NEWDJ_COINBF_CLR
		EXTERN	NEWDJ_TEKI_CHR,NEWDJ_UNSH,TRNPRN_CHK
;-------------<	ZMAP >------------
		EXTERN	Unit_check
;
;==============	�o���N�Q�P ==============================================
BANK21		GROUP	$21
;-------------<	ZCOL >------------
		EXTERN  COLOR_SET,COLOR_TRAN
;
;==============	�o���N�Q�S ==============================================
BANK24		GROUP	$24
;-------------<	ZATR >------------
		EXTERN	VRAMST_ATR,VRAMTR_ATR,V_RAMC_ATR
;
;==============	�o���N�Q�W ==============================================
BANK28		GROUP	$28
;-------------<	ZCA >------------
		EXTERN	CHR_TRANSFER,SCR_TRANSFER,COL_TRANSFER
		EXTERN	SCR_VRAM_ADRS,RETURN_GAME
;-------------<	ZPR >------------
		EXTERN	SioWatchDog,detaset,SioInt_sub
		EXTERN	P_fdin,P_retn
;
;============== �o���N�R�U ==============================================
BANK36		GROUP	$36
;-------------<	ZE9 >-------------
		EXTERN	ZE9_BANK,FUKU_YOUSEI,FLY_KONA,GET_FUKU
		EXTERN	FK_BOSS_KOBUN,BBGBRST,OAMGYAK,OKARINA_COLST
		EXTERN	GAKKI_COL_SET,GEKI_ZORA,HINTO_READ,GEKI05_CHECK
;
;============== �o���N�R�W ==============================================
BANK38		GROUP	$38
;-------------<	ZGKANM >-----------
		EXTERN	ANIME_TRNC
;
;============== �o���N�R�b ==============================================
BANK3C		GROUP	03ch
;-------------<	ZGKSCR >-----------
		EXTERN	GEKI_SCRN
;-------------<	zsgb >-----------
		extern	sgbchk
;
;============== �o���N�R�c ==============================================
BANK3D		GROUP	$3D
;-------------<	ZGKSCR >-----------
		EXTERN	GEKI_SCRN
;
;========================================================================
	PUBALL
;
BANK0	GROUP	0

	LIB	ZRAM		; RAM �d�p�t�`�s�d �t�@�C��
	LIB	ZBN		; BG unit no file !
	LIB	ZROM ;NINTENDO	; �o�^ �f�[�^ �t�@�C��
;;;;;	lib	../cgb_zeldausa/cgb/zrom1
	KANJI
;************************************************
;*	���荞�� �i�t�l�o �s�`�a�k�d		*
;************************************************

	ORG	$00
	JP	IDJMP		; �q�r�s �O
;
HIMITSU
	DB	$00
HIMITSU2
	DB	$00
HIMI2
	DB	$00
;------- �u�|�a�k�`�m�j ���荞�� -------

	ORG	$40
	JP	V_BLANK
;
;------- �k�b�c�b �X�e�[�^�X ���荞�� -------

	ORG	$48
;
;	NOP
;	NOP
;	NOP
;	NOP
	JP	LCDCI	; Part scroll !!
;	RETI
;
;------- �s�h�l�d�q ���荞�� -------

	ORG	$50
	RETI
;
;------- �r�h�n ���荞�� -------

	ORG	$58
	jp	SioInt
;
;------- �j�d�x���� ���荞�� -------

	ORG	$60
	RETI
	ORG	$62
;==================================
HARTCH1
	LD	HL,CHRDAT+$2900	; �L�����N�^ �f�[�^
	LD	DE,CHRRAM+$09A0	; �L�����N�^ �q�`�l ($8000 - $97FF)
	JR	HRTC00
;==================================
HARTCH2
	LD	HL,CHRDAT+$2930	; �L�����N�^ �f�[�^
	LD	DE,CHRRAM+$09D0	; �L�����N�^ �q�`�l ($8000 - $97FF)
	JR	HRTC00
;==================================
HARTCH3
	LD	HL,CHRDAT+$09D0	; �L�����N�^ �f�[�^
	LD	DE,CHRRAM+$09D0	; �L�����N�^ �q�`�l ($8000 - $97FF)
	JR	HRTC00
;==================================
HARTCH4
	LD	HL,CHRDAT+$09A0	; �L�����N�^ �f�[�^
	LD	DE,CHRRAM+$09A0	; �L�����N�^ �q�`�l ($8000 - $97FF)
;
HRTC00
	LD	BC,$0030	; �� 
	CALL	DATA_MOV	; �L�����N�^ �]��
;
	XOR	A
	LD	(BKCHFG),A
	LD	(BKCHCT),A
BKCHG10
	LD	A,$0C
	LD	($2100),A
	RET
;-------------------------------------
;************************************************
;*	�v���O���� �X�^�[�g			*
;************************************************

	ORG	$150

RESET
;--------------------------------------------------------
;	(CGB)  �{�̔���
;--------------------------------------------------------
;;;;;	nop		; RESET10 �ɔ�΂��i�f�a�p�j�̏ꍇ
;;;;;	nop		; �P�T�O�Ԓn�� 18,1B �����

	CP	$11		; �J���[�Q�[���{�[�C�H
	JR	NZ,RESET10	; �m�n
;--------------------------------------------------------
;	(CGB)  �����e�X�g
;--------------------------------------------------------
	LD	A,(KEY1)
	AND	%10000000	;���ɍ������[�h�ɂȂ��Ă���H
	JR	NZ,RESET00	;	YES --> RESET00
	LD	A,$30
	LD	(P1),A
	LD	A,$01
	LD	(KEY1),A
	XOR	A
	LD	(IE),A
	STOP
RESET00
	XOR	A
	LD	(SVBK),A
	LD	A,$01
	JR	RESET20
RESET10
	XOR	A
RESET20
	LD	(CGBFLG),A	; �b�f�a�t���O �Z�b�g
;--------------------------------------------------------
;
	CALL	LCDC_OFF	; �k�b�c�b �X�g�b�v

	LD	SP,STACK	; �X�^�b�N ���P�[�V���� �ύX

		ld	a,:sgbchk
		ld	(2100h),a
		call	sgbchk
;
	XOR	A
	LD	(BGP),A
	LD	(OBP0),A
	LD	(OBP1),A
;
	LD	HL,CHRRAM
	LD	BC,$1800
	CALL	RMCLSB		; Character All clear !!
;
;-------------------------------------------------------------
	LD	A,:V_RAMC_ATR	; (CGB)
	LD	($2100),A	; (CGB)
	CALL	V_RAMC_ATR	; (CGB)�u�|�q�`�l �A�g���r���[�g�N���A
;-------------------------------------------------------------
;
	CALL	V_RAMC		; �u�|�q�`�l �N���A
;
	CALL	RAMCLR		; RAM clear !
;
;-------------------------------------------------------------
;
	LD	A,$01
	LD	($2100),A
	CALL	DMASET		; �c�l�` �v���O�������q�`�l�ɓW�J
	CALL	DMASUB
;
	CALL	DSPINT
;
	CALL	BANKST		; Chr bank set
;
	LD	A,%01000100
	LD	(STAT),A
	LD	A,$4F
	LD	(LYC),A		; Part scroll line set !
	LD	A,$01
	LD	(PBANK),A
;- - - - Play initial - - -
	LD	A,%00000001	; V BLANK only (& LCDC)  ���荞�� ����
	LD	(IE),A
;
	CALL	NAMESET	
;
	LD	A,$1F
	LD	($2100),A
	CALL	SOUNDIT
;
	LD	A,$18
	LD	(OPKYTM),A	; Opening Logo display wait !
;
	EI			; ���荞�� �C�l�[�u��
;
	LD	A,$020
	LD	($2100),A
	CALL	NEWDJ_COINBF_CLR
;
	JP	MAIN00
;****************************************
;*       �l�`�h�m �o�q�n�f�q�`�l        *
;****************************************
MAIN
	LD	A,$1
	LD	(NMIFG),A
;---- Normal game ---
;
	LD	A,(MAMUUFG)
	AND	A
	JR	Z,HMIT108	;�閧�����I
;
	LD	A,(GMMODE)
	CP	GPLAY
	JR	NZ,HMIT108
;
	LD	A,(FRCNT)
	RRCA
	AND	%10000000
	JR	HMIT10A		;�閧�����I
;
HMIT108
	LD	HL,TILTYD	; SCROLL COUNT SET !
	LD	A,(SCCV)
	ADD	A,(HL)
HMIT10A
	LD	(SCY),A
;
HMIT10C
	LD	A,(SCCH)
	LD	HL,TILTXD
	ADD	A,(HL)
	LD	HL,SCXAD
	ADD	A,(HL)
	LD	(SCX),A
HMIT110
	LD	A,(BLNKFG)
	AND	A
	JR	NZ,MA0F0
;
	LD	A,(VRFLG)
	CP	0
	JR	Z,MA000
;
MA0F0
	LD	A,(GMMODE)
	CP	LOVED
	JR	Z,MA0EE
	CP	NMCPY+1
	JR	C,MA0EE
	CP	GPLAY
	JR	NZ,MA0DE
;
	LD	A,(ITMODE)
	CP	GPMA
	JR	NC,MA0DE	
;				
MA0EE
	CALL	SOUND		; Sound
	CALL	SOUND		; Sound
MA0DE
	DI
	CALL	VRAMST
	EI
;
	CALL	SOUND		; Sound
	CALL	SOUND		; Sound
;
	JP	MAIN00
;-------------------------------
MA000	
	LD	A,(LCDCB)
	AND	$7F
	LD	E,A
;
	LD	A,(LCDC)
	AND	%10000000
	OR	E
	LD	(LCDC),A
;
	LD	HL,FRCNT
	INC	(HL)
;
	LD	A,(GMMODE)
	CP	$00
	JR	NZ,MA0011
;
	LD	A,(ITMODE)
	CP	TLX-1
	JR	C,MA0011
;
;(CGB)	LD	A,$1
	LD	A,:TITLX
	LD	($2100),A
	CALL	TITLX		; (CGB) ZS1����ZPLSUB�Ɉړ�
;
MA0011
	LD	A,(WAVFLG)
	AND	A
	JP	Z,MA00001
;
	INC	A		;Ending wave ?
	JR	NZ,WAV100	;	NO --> WAV100
;
WAV080
	LD	A,$17
	LD	($2100),A
;
	CALL	ENDWAVE
	JP	MA00001		
;
WAV100
	INC	A		;FE?
	JR	Z,WAV080
;
	LD	A,$14		; YES !
	LD	($2100),A
;
	LD	A,(WAVTIM)
	INC	A
	LD	(WAVTIM),A
	CP	$C0  ;00
	JR	NZ,RURUR
;
	LD	A,(WAVFLG)
	CP	$2
	JR	NZ,WVS100	;�I�J���i���[�v�H
;		
	CALL	OKWARPST	;NXGOTO!
WVS100
	XOR	A
	LD	(WAVFLG),A
	LD	(WAVCNT4),A
	JP	MA00001
;
RURUR
		PUSH	AF
		CP	$60
		JR	C,WAV0100
;
		LD	A,(CGBFLG)
		AND	A
		JR	Z,GB_OKARINA
		LD	A,$20
		LD	($2100),A
		CALL	CGB_OKARINA_FADE
		JR	WAV0100
GB_OKARINA
		CALL	OKARINA_FADE
;
;;;CGB;;;	PUSH	AF
;;;CGB;;;;
;;;CGB;;;	AND	$07
;;;CGB;;;	JR	NZ,WAV0068
;;;CGB;;;;
;;;CGB;;;	LD	A,(WAVCNT4)
;;;CGB;;;	CP	$0C
;;;CGB;;;	JR	Z,WAV0080
;;;CGB;;;	INC	A
;;;CGB;;;	LD	(WAVCNT4),A
;;;CGB;;;;
;;;CGB;;;WAV0068
;;;CGB;;;	LD	A,(WAVCNT4)
;;;CGB;;;	LD	E,A
;;;CGB;;;	LD	A,(FRCNT)
;;;CGB;;;	AND	$03
;;;CGB;;;	ADD	A,E
;;;CGB;;;	LD	E,A
;;;CGB;;;	LD	D,$0
;;;CGB;;;;
;;;CGB;;;	LD	A,(WAVFLG)
;;;CGB;;;	CP	$03
;;;CGB;;;	JR	Z,WAV0078
;;;CGB;;;;
;;;CGB;;;	LD	HL,CLCHDB
;;;CGB;;;	ADD	HL,DE
;;;CGB;;;	LD	A,(HL)
;;;CGB;;;	LD	(BGPFG),A
;;;CGB;;;	LD	(OBP1FG),A
;;;CGB;;;	LD	HL,CLCHDO
;;;CGB;;;	ADD	HL,DE
;;;CGB;;;	LD	A,(HL)
;;;CGB;;;	LD	(OBP0FG),A
;;;CGB;;;	JR	WAV0080
;;;CGB;;;WAV0078
;;;CGB;;;	LD	HL,CLCHDB2
;;;CGB;;;	ADD	HL,DE
;;;CGB;;;	LD	A,(HL)
;;;CGB;;;	LD	(BGPFG),A
;;;CGB;;;	LD	(OBP1FG),A
;;;CGB;;;	LD	HL,CLCHDO2
;;;CGB;;;	ADD	HL,DE
;;;CGB;;;	LD	A,(HL)
;;;CGB;;;	LD	(OBP0FG),A
;;;CGB;;;WAV0080
;;;CGB;;;	POP	AF
;
WAV0100
		LD	A,$14
		LD	($2100),A
		POP	AF
		CALL	WAV_SCRL
;
;;;CGB;;;	SRL	A
;;;CGB;;;	SRL	A
;;;CGB;;;	LD	(WORK0),A
;;;CGB;;;	LD	A,(WAVTIM)
;;;CGB;;;	NOP
;;;CGB;;;	AND	%11100000
;;;CGB;;;	LD	E,A
;;;CGB;;;	LD	A,(WAVFLG)
;;;CGB;;;	CP	$03
;;;CGB;;;	JR	NZ,WAV1001
;;;CGB;;;;
;;;CGB;;;	LD	A,E
;;;CGB;;;	XOR	%11100000
;;;CGB;;;	LD	E,A
;;;CGB;;;WAV1001
;;;CGB;;;	LD	A,E
;;;CGB;;;	LD	(WORK1),A
;;;CGB;;;;
;;;CGB;;;	LD	HL,WAVCNT
;;;CGB;;;	XOR	A
;;;CGB;;;	LD	(HLI),A
;;;CGB;;;	LD	(HLI),A
;;;CGB;;;	LD	(HLI),A
;;;CGB;;;;
;;;CGB;;;MA001
;;;CGB;;;	LD	A,(STAT)
;;;CGB;;;	AND	%00000011
;;;CGB;;;	JR	NZ,MA001
;;;CGB;;;;
;;;CGB;;;	LD	D,$0
;;;CGB;;;MA002
;;;CGB;;;	LD	A,(WAVCNT3)
;;;CGB;;;	INC	A
;;;CGB;;;	LD	(WAVCNT3),A
;;;CGB;;;	AND	$01
;;;CGB;;;	JR	NZ,MA002	; Wait !
;;;CGB;;;;
;;;CGB;;;	LD	A,(WAVCNT)
;;;CGB;;;	ADD	A,$1
;;;CGB;;;	LD	(WAVCNT),A
;;;CGB;;;	LD	A,(WAVCNT2)
;;;CGB;;;	ADC	A,$0
;;;CGB;;;	LD	(WAVCNT2),A
;;;CGB;;;	LD	A,(WAVCNT)
;;;CGB;;;	CP	$58  ;68
;;;CGB;;;	JP	Z,MAIN00B
;;;CGB;;;MAA01
;;;CGB;;;	LD	C,$0
;;;CGB;;;;
;;;CGB;;;	LD	A,(WAVFLG)
;;;CGB;;;	CP	$01
;;;CGB;;;	JR	Z,MAAA10
;;;CGB;;;;
;;;CGB;;;	INC	C
;;;CGB;;;MAAA10
;;;CGB;;;	LD	HL,WAVCNT
;;;CGB;;;	LD	A,(WORK0)
;;;CGB;;;	ADD	A,(HL)
;;;CGB;;;	AND	$1F
;;;CGB;;;	LD	HL,WORK1
;;;CGB;;;	OR	(HL)
;;;CGB;;;	LD	E,A
;;;CGB;;;	LD	HL,WAVDT
;;;CGB;;;	ADD	HL,DE
;;;CGB;;;	LD	A,(WAVTIM)
;;;CGB;;;	AND	C ;%0
;;;CGB;;;	LD	A,(HL)
;;;CGB;;;	JR	Z,MASS0
;;;CGB;;;	CPL	
;;;CGB;;;	INC	A
;;;CGB;;;MASS0
;;;CGB;;;	PUSH	AF
;;;CGB;;;	LD	HL,SCCH
;;;CGB;;;	ADD	A,(HL)
;;;CGB;;;	LD	(SCX),A
;;;CGB;;;	POP	AF
;;;CGB;;;	LD	HL,SCCV
;;;CGB;;;	ADD	A,(HL)
;;;CGB;;;	LD	(SCY),A
;;;CGB;;;;
;;;CGB;;;	JP	MA001
;;;CGB;;;MAIN00B
;
	CALL	SOUND		; Sound
;
	LD	A,(BGPFG)	; color set !!
	LD	(BGP),A
	LD	A,(OBP0FG)
	LD	(OBP0),A
	LD	A,(OBP1FG)
	LD	(OBP1),A
	JP	MAIN00
;-------------------------------
MA00001
	LD	A,(WNDYPS)	; Window y pos set !
	LD	(WDY),A
;
	LD	A,(BGPFG)	; color set !!
	LD	(BGP),A
	LD	A,(OBP0FG)
	LD	(OBP0),A
	LD	A,(OBP1FG)
	LD	(OBP1),A
;
	CALL	SOUND		; Sound
;
	CALL	CONT		; �L�[ ����
;
	LD	A,(BKCHFG)
	LD	HL,BKCHF2
	OR	(HL)
	LD	HL,BKCHF3
	OR	(HL)
	JR	NZ,PSCK10
;
;-----------------------------------------------------------------
	LD	A,(HIMITSU)
	AND	A
	JR	Z,PSCK0A
;
	LD	A,(PAUSFG)
	AND	A
	JR	NZ,PSCK08
;
	LD	A,(KEYA1)
	AND	$0F
	JR	Z,PSCK09
;
PSCK08
	LD	A,(KEYA2)
	AND	%01000000
	JR	Z,PSCK09
;
	LD	A,(PAUSFG)
	XOR	$01
	LD	(PAUSFG),A
;
	JR	NZ,PSCK10
;
	LD	A,(BGCKOF)
	XOR	$10
	LD	(BGCKOF),A
;
	JR	PSCK10
PSCK09
	LD	A,(PAUSFG)
	AND	A
	JR	NZ,PSCK10
;
PSCK0A
		ld	a,(GMMODE)
		cp	ITSEL
		jr	nz,PSCK0A_050
;
		ld	a,(ITMODE)
		cp	002
		jr	c,PSCK0A_100
;
PSCK0A_050
	LD	A,$01
	CALL	PBSET
	CALL	OAMCLR
;
PSCK0A_100
	CALL	PLAY		; GAME SUB!

;------------------------------------------------------------------------
		LD	A,(CGBFLG)
		AND	A		; �J���[�Q�[���{�[�C�H
		JR	Z,COL_SET_PASS	;	NO --> COL_SET_PASS
		LD	A,$21
;(CGB)		LD	($2100),A
			call	PBSET
	CALL	COLOR_SET	; (CGB)�J���[�q�`�l�Z�b�g
COL_SET_PASS
		XOR	A
		LD	(COLFLG),A	; �t���O�N���A
;------------------------------------------------------------------------
	LD	A,$01
;(CGB)	LD	($2100),A
		call	PBSET
	CALL	MSOMCL		; In mesege window oam clear !
PSCK10
;-----------------------------------------------------------------
MAIN00
	LD	A,$1F
;(CGB)	LD	($2100),A
		call	PBSET
	CALL	SOUNDST
	LD	A,$0C
	CALL	Char_bank_set	; (CGB) �L�����N�^�[�o���N�Z�b�g
;(CGB)	LD	($2100),A
		call	PBSET
;
	XOR	A
	LD	(NMIFG),A
;
	HALT			; �V�X�e�� �N���b�N ��~ �d�͐ߖ�
	NOP			; �K���m�n�o
;
MAIN10
	LD	A,(VBLANK_F)	; �u�|�a�k�`�m�j �҂�
	AND	A
	JR	Z,MAIN10
;-----------------------------------------------------------------
	XOR	A
	LD	(VBLANK_F),A
;
	JP	MAIN
;-----------------------------------
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%    �I�[�v�j���O �����X�N���[��			%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
LYCDT
	DB	$20,$30,$40,$60
	DB	$00
LYCDT2
	DB	$30,$56,$68,$00
;- - - - - - - - - - - - - -
LCDCI
	DI
;
	PUSH	AF
;
	PUSH	HL
	PUSH	DE
		push bc
		ld	a,(SVBK)
		ld	c,a
		xor	a
		ld	(SVBK),a
;
	LD	A,(GMMODE)
	CP	ENDG		;�G���f�B���O�H
	JR	NZ,LII002	;	NO --> LII002
;
	LD	A,(ITMODE)
	CP	ENDBS ;;$05
	JR	NZ,LII0ED
;
	LD	A,(EDWRK0)
	JR	LII0ED2
;
LII0ED
	LD	A,(SCCV)
LII0ED2
	LD	(SCY),A
	JP	LII020
;
LII002
	CP	OPING		;�I�[�v�j���O�H
	JR	NZ,LII010	;	NO --> LII010
;
;+----------------------------------------------+
;|	�I�[�v�j���O�̕����X�N���[��		|
;+----------------------------------------------+
	LD	A,(OPSCCT)
	LD	E,A
	LD	D,$00
;
	LD	HL,SCCH1
	ADD	HL,DE	
	LD	A,(HL)
	LD	HL,SCCH
	ADD	A,(HL)
	LD	(SCX),A
;
	LD	A,(ITMODE)
	CP	OPA		;�z���C�g�C���I���H
	JR	C,OPENSUB	;	YES --> OPENSUB
;
	LD	HL,LYCDT2
	ADD	HL,DE
	LD	A,(HL)
	LD	(LYC),A
;
	LD	A,E
	INC	A
	AND	$03
	LD	(OPSCCT),A
;
	JR	LII020
;
;+----------------------------------------------+
;|	���l��ʕ������X�N���[��		|
;+----------------------------------------------+
OPENSUB
	LD	HL,LYCDT
	ADD	HL,DE
	LD	A,(HL)
	LD	(LYC),A
;
	LD	A,E
	INC	A
	CP	$05
	JR	NZ,OPS009
	XOR	A
OPS009
	LD	(OPSCCT),A
;
	NOP
	CP	$04
	JR	NZ,LII020
;;;CGB;;;	JR	NZ,OPS010
;
	LD	A,(SCCV1)
	LD	(SCY),A
	CPL
	INC	A
	ADD	A,$60
	LD	(LYC),A
;;;CGB;;;OPS010
	JR	LII020
;
LII010
	XOR	A
	LD	(SCX),A
LII020
		ld	a,c
		ld	(SVBK),a
		pop	bc
	POP	DE
	POP	HL
	POP	AF
;
	EI
;
	RETI
;
;
;+------------------------------------------------------+
;|	�Q�[���� �A�C�e���J���[�]���i CGB �Ă��� �j	|
;+------------------------------------------------------+
;;;;;;GPL_LCDCI_COL
;;;;;;		DW	$0000,$0000,$0000,$0000	; ( 1 ) ���ׂĂ���
;;;;;;
;;;;;;		DW	$385f,$385f,$385f,$385f	; ( 1 ) ���ׂĂ���
;;;;;;		DW	$4105,$4105,$4105,$4105	; ( 2 ) ���ׂĂ���
;;;;;;		DW	$7fff,$7fff,$7fff,$7fff	; ( 3 ) ���ׂĂ���
;;;;;;;========================================================================
;;;;;;
;;;;;;GPLAY_LCDCI
;;;;;;		LD	A,(LYC)
;;;;;;		AND	A		; �k�x���O�H
;;;;;;		JR	NZ,GPL_LCD_100	; �m�n
;;;;;;
;;;;;;		LD	A,$40		; �E�C���h�E�|�W�V����
;;;;;;		LD	(LYC),A
;;;;;;
;;;;;;;�Ă���
;;;;;;;�Ă���		LD	A,$0
;;;;;;;�Ă���		LD	(SCX),A
;;;;;;;�Ă���		JR	LII020
;;;;;;;�Ă���
;;;;;;;�Ă���GPL_LCD_100
;;;;;;;�Ă���		XOR	A
;;;;;;;�Ă���		LD	(LYC),A
;;;;;;;�Ă���		LD	A,$20
;;;;;;;�Ă���		LD	(SCX),A
;;;;;;;�Ă���		JR	LII020
;;;;;;
;;;;;;
;;;;;;		LD	DE,CGWORK
;;;;;;		JR	GPL_LCD_110
;;;;;;
;;;;;;;-----------------------------------------------
;;;;;;GPL_LCD_100
;;;;;;		XOR	A
;;;;;;		LD	(LYC),A
;;;;;;
;;;;;;		LD	DE,GPL_LCDCI_COL
;;;;;;GPL_LCD_110
;;;;;;;;;;;		LD	A,%10001000	; �����������A�p���b�g1-0
;;;;;;		LD	A,%10000000	; �����������A�p���b�g0-0
;;;;;;		LD	(BCPS),A	; �a�f
;;;;;;		LD	HL,BCPD
;;;;;;		LD	B,$04*2		; �p���b�g���T
;;;;;;;;;;;		LD	B,$12*2		; �p���b�g���T
;;;;;;					; 1-0 ���� 3-3 �܂�
;;;;;;GPL_LCD_120
;;;;;;		LD	A,(DE)
;;;;;;		LD	(HL),A
;;;;;;		INC	DE
;;;;;;		DEC	B
;;;;;;		JR	NZ,GPL_LCD_120
;;;;;;
;;;;;;		JR	LII020
;;;;;;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�r�h�n����M  ������				%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
SioInt
		PUSH	AF
		LD	A,:SioInt_sub
		LD	($2100),A
		CALL	SioInt_sub
		LD	A,(PBANK)
		LD	($2100),A
		POP	AF
		RETI
;
;
;;;;;;;;;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;;;;;;;;VRDATA
;;;;;;;;	DEFW	00   ;VRAMD+1
;;;;;;;;	DEFW	ENDYMBG	;�G���f�B���O�R���i  BG;00 ;TITLBG
;;;;;;;;	DEFW	WINDBG
;;;;;;;;	DEFW	PSLCTBG
;;;;;;;;	DEFW	PSLCTBG2
;;;;;;;;	DEFW	NSLCTBG
;;;;;;;;	DEFW	NCLERBG
;;;;;;;;	DEFW	VRAMD2+1
;;;;;;;;	DEFW	GMAPBG
;;;;;;;;	DEFW	GMAPCLB
;;;;;;;;	DEFW	GOVERBG
;;;;;;;;	DEFW	WINDBG2  ;ODEMOBG
;;;;;;;;	DEFW	NCOPYBG
;;;;;;;;	DEFW	TSAVEBG ;�����Z�[�u
;;;;;;;;	DEFW	OPENBG ; Opening BG !
;;;;;;;;	DEFW	OPENBG2 ; Opening BG 2!
;;;;;;;;	DEFW	OPENBG3 ; Opening BG 3!
;;;;;;;;	DEFW	LOGODT	;������^�C�g�����S�I
;;;;;;;;	DEFW	PEACHDT	;�s�[�`�ʐ^�I
;;;;;;;;	DEFW	LOVEDT	;�C�݃f���I
;;;;;;;;	DEFW	MAMUUBG	;�}���[�����x�^�I
;;;;;;;;	DEFW	KABEDT1	;�ǉ�P
;;;;;;;;;----------------------------------------------
;;;;;;;;	DEFW	ENDBGA	;�G���f�B���O A BG
;;;;;;;;	DEFW	ENDBGB2	;�G���f�B���O B2 BG
;;;;;;;;	DEFW	ENDBGC 	;�G���f�B���O C BG
;;;;;;;;	DEFW	ENDBGB 	;�G���f�B���O B BG
;;;;;;;;	DEFW	ENDBGD 	;�G���f�B���O D BG
;;;;;;;;	DEFW	ENDBGE 	;�G���f�B���O E BG
;;;;;;;;	DEFW	ENDBGF 	;�G���f�B���O F BG
;;;;;;;;	DEFW	ENDBGG 	;�G���f�B���O G BG
;;;;;;;;;- - - - - - - - - - - - - - - - - - - - - - -
;;;;;;;;	DW	ENDBGA1
;;;;;;;;	DW	ENDBGA2
;;;;;;;;	DW	ENDBGA3
;;;;;;;;	DW	ENDBGA4
;;;;;;;;	DW	ENDBGA5
;;;;;;;;;
;;;;;;;;	DW	KABADT ;�J�o�̊G�I
;;;;;;;;	DW	TOUBGDT	;�V���f���I
;;;;;;;;;;	DEFW	EWAKUBG	;�G���f�B���O �}�b�v�g BG
;;;;;;;;;;	DEFW	EWAKUBG2 ;�G���f�B���O �}�b�v�g BG2
;;;;;;;;;- - - - - - - - - - - - - - - 
;- VRFLG table - -
;;TITLBGS	EQU	1
EBGY	EQU	1
;
WINDBGS	EQU	2
PSLBGS	EQU	3
PSLBG2	EQU	4
NSLBGS	EQU	5
NCLBGS	EQU	6
BLVRDS	EQU	7
GMAPBGS	EQU	8	; G. map waku BG 
GMAPCL	EQU	9
GOVBG	EQU	$A
;;ODMBG	EQU	$B
WINDBGS2 EQU	$B
NCPBGS	EQU	$C
TSVBG	EQU	$D
OPBGS	EQU	$E
OPBG2	EQU	$F
OPBG3	EQU	$10
LOGOS	EQU	$11
PECBG	EQU	$12
LOVBG	EQU	$13
MMBG	EQU	$14
KB1BG	EQU	$15
;- - - - - - - - - - - -
EBGA	EQU	$16
EBGB2	EQU	$17
EBGC 	EQU	$18
EBGB 	EQU	$19
EBGD 	EQU	$1A
EBGE 	EQU	$1B
EBGF 	EQU	$1C
EBGG 	EQU	$1D
EBGA1	EQU	$1E
EBGA2	EQU	$1F
EBGA3	EQU	$20
EBGA4	EQU	$21
EBGA5	EQU	$22
;
KABBG	EQU	$23
TOUBG	EQU	$24
;
OPBGS_CGB	EQU	$25	; (CGB) �I�[�v�j���O
;
EWAKU 	EQU	$1E	;���g�p�I
EWAKU2 	EQU	$1F	;  "
;-----------------------------------
; BLNKFG table - -
RBGST	EQU	1
VRMCL	EQU	2
BKCHG	EQU	3
BKCH2	EQU	4
BKCH3	EQU	5
DJBST	EQU	6
GRBST	EQU	7	; Ground map bank set
VRMBT	EQU	8
BNKTR	EQU	$9 ; Game Room all bank set !
TLCHG	EQU	$A ; Title bank
GMBST	EQU	$B ; Ground map bank
ODCHG	EQU	$0C	; Title demo bank 
GVCHG	EQU	$0D	; Game over bank 
GRCST	EQU	$0E	; Ground map unit BG set
VRMB2	EQU	$0F	; 
OPBST	EQU	$10	; Opening BANK 1 (Sea & Mt.)Set !
OPBS2	EQU	$11	; Opening BANK 2 (ZELDA)Set !
;
PECCD	EQU	$12	;�s�[�`�ʐ^�I
LOVCD	EQU	$13	;�C�݃f���I
KB1CD	EQU	$14
;------Ending-------- 
ECHA	EQU	$15	;�G���f�B���O A CHR.Tr. 
ECHB2	EQU	$16	;�G���f�B���O B2 CHR.Tr. 
ECHC	EQU	$17	;�G���f�B���O C CHR.Tr. 
ECHB	EQU	$18	;�G���f�B���O B CHR.Tr. 
ECHD	EQU	$19	;�G���f�B���O D CHR.Tr. 
ECHE	EQU	$1A	;�G���f�B���O E CHR.Tr. 
ECHF	EQU	$1B	;�G���f�B���O F CHR.Tr. 
ECHG	EQU	$1C	;�G���f�B���O G CHR.Tr. 
;- - - - -
ECHA1	EQU	$1D	;�G���f�B���O A (�n��j CHR.Tr.
ECHYM	EQU	$1E	;�G���f�B���O A (���R�S�i�j CHR.Tr.
ECHA2	EQU	$1F	;�G���f�B���O A2 (LINK OBJ�j CHR.Tr.
;-----------------------------------
KABCD	EQU	$20
TOUCD	EQU	$21
;-----------------------------------
KMARIN	EQU	$22	;�����߂܂��i�b�f�a��p�j
ENDMS	EQU	$23	;�G���f�B���O���b�Z�[�W�i�b�f�a��p�j
;-----------------------------------
;
SPTST	EQU	$14	; TEST TEST shibahara big test !
;-----------------------------------
;-----------------------------------
;-----------------------------------
;-----------------------------------
;-----------------------------------
;-----------------------------------
;BKCHFG2 	1: OBJ room bank chenge
;- - - - - - - -
;BKCHFG	Table	1: BG room bank chenge
DMPCH	EQU	2
HRTC1	EQU	3 ; Mesege heart chr set 1
HRTC2	EQU	4 ; Mesege heart         2
HRTC3	EQU	5 ; Mesege heart revise  1
HRTC4	EQU	6 ; Mesege heart         2
GAKCH	EQU	7	; Ground gakki set !
FUEC1	EQU	8 ; Window fue select chr set 1
FUEC2	EQU	9 ;		"	      2
FUEC3	EQU	$A;		 revise       3
FUEC4	EQU	$B ; 	        "             1
FUEC5	EQU	$C ; 	        "             2
FUEC6	EQU	$D ; 	        "             3
;----------------------------------------------
VRAMST
;--- VRAM many TR. ---
	LD	A,(BLNKFG)
	AND	A
	JR	Z,VRST80
;
	LD	(COLFLG),A	; (CGB) �Ă���  BLNKFG --> COLFLG

		CP	ENDMS
		JR	Z,VRAMST_100

	PUSH	AF
	CALL	LCDC_OFF
	POP	AF

VRAMST_100
	CALL	BLNKSUB
	JR	VRST90
;
BLNKSUB
		LD	E,A		;�i�`�j���i�d�j
		LD	A,$20
		LD	($2100),A
		CALL	BLNKSUB_JMP	; (CGB) �A�h���X�Z�b�g
		JP	(HL)

;(CGB)	DEC	A
;(CGB)	RST	0
;(CGB)	DW	RMBGST		; ( 1)
;(CGB)	DW	V_RAMC		; ( 2)
;(CGB)	DW	BANKST		; ( 3)
;(CGB)	DW	BANKS2		; ( 4)
;(CGB)	DW	BANKS3		; ( 5)
;(CGB)	DW	DJBKST		; ( 6) �_���W���� BG bank set !
;(CGB)	DW	GRBKST		; ( 7) �n�� BG bank set !
;(CGB)	DW	V_RAMB		; ( 8)
;(CGB)	DW	BANKTR		; ( 9)
;(CGB);;	DW	TITLCHST
;(CGB)	DW	VRRET		; ( A)
;(CGB)	DW	GMAPBKST	; ( B)
;(CGB)	DW	VRRET		; ( C) ODMBKST
;(CGB)	DW	GOVBKST		; ( D)
;(CGB)	DW	GMAPCHST	; ( E)
;(CGB)	DW	V_RAMD		; ( F)
;(CGB)	DW	OPBKST		; (10) Opening bank(Sea & Mt.) set !
;(CGB)	DW	OPBKS2		; (11) Opening bank(ZELDA) set !
;(CGB)	DW	PEACHBKST	; (12)	;�s�[�`�ʐ^�I
;(CGB)	DW	LOVEBKST	; (13)	;�C�݃f���I
;(CGB)	DW	KAB1BKST	; (14)	;�ւ����I
;(CGB);--- Ending - -
;(CGB)	DW	ENDCHA		; (15);�G���f�B���O A CHR.TR
;(CGB)	DW	ENDCHB2		; (16);�G���f�B���O B2 CHR.TR
;(CGB)	DW	ENDCHC		; (17);�G���f�B���O C  CHR.TR
;(CGB)	DW	ENDCHB		; (18);�G���f�B���O B  CHR.TR
;(CGB)	DW	ENDCHD		; (19);�G���f�B���O D  CHR.TR
;(CGB)	DW	ENDCHE		; (1A);�G���f�B���O E  CHR.TR
;(CGB)	DW	ENDCHF		; (1B);�G���f�B���O F  CHR.TR
;(CGB)	DW	ENDCHG		; (1C);�G���f�B���O G  CHR.TR
;(CGB);
;(CGB)	DW	ENDCHA1		; (1D);�G���f�B���O A(�n��j  CHR.TR
;(CGB)	DW	ENDCHYM		; (1E);�G���f�B���O A(�R���i�j  CHR.TR
;(CGB)	DW	ENDCHA2		; (1F);�G���f�B���O A2(LINK OBJ) CHR.TR
;(CGB);- - - -
;(CGB)	DW	KABABKST	; (20) ;�J�o�̊G�I
;(CGB)	DW	TOUBGCH		; (21);�V���f���I
;
;
;;	DW	SPTEST
;
VRST80
	CALL	LCDC_OFF

	LD	A,:VRAMST_ATR	; (CGB)
	LD	($2100),A	; (CGB)
	CALL	VRAMST_ATR	; (CGB)�A�g���r���[�g
;-------------------------------------------------------------
	LD	A,$20
	LD	($2100),A
	CALL	VRADR_SET
;
;;;;;;;;	LD	HL,VRDATA
;;;;;;;;	LD	B,$0
;;;;;;;;	LD	A,(VRFLG)
;;;;;;;;	SLA	A
;;;;;;;;	LD	C,A
;;;;;;;;	ADD	HL,BC
;;;;;;;;	LD	A,(HL)
;;;;;;;;	LD	E,A
;;;;;;;;	INC	HL
;;;;;;;;	LD	A,(HL)
;;;;;;;;	LD	D,A
;
	LD	A,$08
	LD	($2100),A
	CALL	VRAMTR1
	LD	A,$0C
	CALL	Char_bank_set	; (CGB) �L�����N�^�[�o���N�Z�b�g
	LD	($2100),A
;
VRST90
	XOR	A
	LD	(VRFLG),A
	LD	(BLNKFG),A
;
	LD	A,(LCDCB)	; �n�a�i �a�f �n�m �k�b�c�b �X�^�[�g
	LD	(LCDC),A
VRRET
	RET
;****************************************
;*       �u�|�a�k�`�m�j ���荞��        *
;****************************************
ONHELPAD
	DB	$07,$09
V_BLANK
	PUSH	AF
	PUSH	BC
	PUSH	DE
	PUSH	HL
;
		ld	a,(SVBK)
		and	007h
		ld	c,a
		xor	a
		ld	(SVBK),a
		push	bc
;
	DI
;
		LD	A,(GMMODE)
		CP	PRN
		JR	NZ,V_BLANK_000
		LD	A,(ITMODE)
		CP	P_fdin
		JR	C,V_BLANK_000
		CP	P_retn
		JP	C,V_BLANK_P	; �|�P�b�g�v�����^�p
V_BLANK_000
	LD	A,(NMIFG)
	AND	A		; ���ԃI�[�o�[�H
	JP	NZ,VBL018	; �x�d�r
;
	LD	A,(MSGEFG)
	AND	%01111111
	JR	Z,VBL002
	CP	$01
	JR	Z,VBL002
;
	CP	$04+1
	JR	NC,VBL0022
;
	CALL	MSVRSV	; ���� maked
;;;;;;;;		LD	A,:MSVRSV
;;;;;;;;		LD	($2100),A
;;;;;;;;		CALL	MSVRSV	; ���� maked
;
	LD	HL,MSGEFG
	INC	(HL)
;
;(CGB)	JR	VBL018
	JP	VBL018
VBL0022
	CP	MSSC2
	JR	NZ,VBL023
;
	CALL	MSSCR2S
;(CGB)	JR	VBL018
	JP	VBL018
VBL023
	CP	MSSC3
	JR	NZ,VBL033
;
	LD	A,(MJSTTM)
	AND	A
	JR	Z,VBL025
;
	DEC	A
	LD	(MJSTTM),A
	JR	VBL033
VBL025
	CALL	MSSCR3S
	JP	VBL018
VBL033
;---------------------------------------------
VBL002
		LD	A,(GMMODE)
		CP	GEKI00		;�������[�h�H
		JR	C,VBL002_PASS	;	NO --> VBL002_PASS
		LD	A,(ITMODE)
		CP	$006
		JR	C,BCH2000_100
		LD	A,:ANIME_TRNC
		LD	($2100),A
		CALL	ANIME_TRNC
		JR	BCH2000_100
VBL002_PASS
;
	LD	A,(BLNKFG)
	AND	A
	JR	NZ,VBL018	; BG set a little ?
;				; yes ! in V blank set ok !
	LD	A,(BKCHFG)
	LD	(ENHELP),A
	LD	HL,BKCHF2
	OR	(HL)  ;AND	A
	LD	HL,BKCHF3
	OR	(HL)  ;AND	A
	JR	Z,VBL012	; Bank chenge ?
;				; yes !
	CALL	BANKCH
;
	LD	A,(ENHELP)
	CP	FUEC1
	JR	NC,VBL003
;
VBL0118
	CALL	PLCSET
VBL003
	CALL	DMASUB		; �n�`�l�@�c�l�` �]��
	JR	VBL018
;-------------------------------------------------
VBL012
;;;;;;===============================================
;;;;;;	�ł΂���  �X�N���[������
;;;;;;===============================================
;;;;;		LD	A,(SCRLFG)
;;;;;		AND	A		; �X�N���[�����H
;;;;;		JR	NZ,BCH2000_100	; �x�d�r
;;;;;;===============================================

	LD	A,(ONOFHELP)
	AND	A
	JR	Z,BCH2000
;
	DEC	A
	LD	(ONOFHELP),A
;
	LD	E,A
	LD	D,$00
	LD	HL,ONHELPAD
	ADD	HL,DE
	LD	A,(HL)
	LD	(ONOFTM),A
	CALL	ONOFSUB
	JR	VBL0118
;;	RET
BCH2000
		LD	A,(GMMODE)
		CP	PRN		; �|�P�b�g�v�����^�H
		JR	Z,BCH2000_100	; �x�d�r

	CALL	PLCHTR		; Player character TR. & OAM set 
BCH2000_100
;-----------------------------------------------------------------
	LD	A,(CGBFLG)
	AND	A		; �J���[�Q�[���{�[�C�H
	JR	Z,VBL013	; �m�n

	LD	A,:VRAMTR_ATR	; (CGB)
	LD	($2100),A	; (CGB)
	CALL	VRAMTR_ATR	; (CGB)�A�g���r���[�g
VBL013
;-----------------------------------------------------------------
	LD	DE,VRAMD+1	; VRAMD TR.
	CALL	VRAMTR
;
	XOR	A
	LD	(VRAMD),A
	LD	(VRAMD+1),A
	LD	(VRAMD_AT),A	; (CGB)
	LD	(VRAMD_AT+1),A	; (CGB)
;
		ld	a,:OAMGYAK
		ld	(2100h),a
		call	OAMGYAK
;
	CALL	DMASUB		; �n�`�l�@�c�l�` �]��
;-----------------------------------------------------------------
	LD	A,(CGBFLG)
	AND	A		; �J���[�Q�[���{�[�C�H
	JR	Z,VBL018	; 	NO --> VBL018
	LD	A,$21		; (CGB)
	LD	($2100),A	; (CGB)
	CALL	COLOR_TRAN	; (CGB)�J���[�]��
	LD	A,(PBANK)	; (CGB)
	LD	($2100),A	; (CGB)
;-----------------------------------------------------------------
VBL018
;
	EI
;-----------------------------------------------------------------
VBL020
		pop	bc
		ld	a,c
		ld	(SVBK),a
	POP	HL
	POP	DE
	POP	BC
;
	LD	A,1		; �u�|�a�k�`�m�j�I�� �t���O �Z�b�g
	LD	(VBLANK_F),A
;
	POP	AF
;
	RETI
;
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	 �|�P�b�g�v�����^�p �u�|�a�k�`�m�j ���荞��			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
V_BLANK_P
		ld	a,(PBANK)
		push	af
;
		ld	a,(NMIFG)
		and	a
		jr	nz,V_BLANK_P_050
;
		CALL	DMASUB		; �n�`�l�@�c�l�` �]��
;
;;;;;;;;		EI
V_BLANK_P_100
		LD	A,(CGBFLG)
		AND	A		; �J���[�Q�[���{�[�C�H
		JR	Z,VBLPR_100	; �m�n

		LD	A,:COLOR_TRAN
		call	PBSET
		CALL	COLOR_TRAN	; �J���[�]��

		LD	A,:VRAMTR_ATR
		call	PBSET
		CALL	VRAMTR_ATR	; �A�g���r���[�g�]��
VBLPR_100
		LD	DE,VRAMD+1	; VRAMD TR.
		CALL	VRAMTR		; �L�����N�^�[�]��

		XOR	A
		LD	(VRAMD),A
		LD	(VRAMD+1),A
		LD	(VRAMD_AT),A
		LD	(VRAMD_AT+1),A

V_BLANK_P_050
;;;;;;;;		ei
;
;/////////// �P�O�Omsec����NUL PACKET�𑗐M���邽�߁@//////////
		ld	a,:SioWatchDog
;;;;;;;;		ld	(2100h),a
		call	PBSET
		call	SioWatchDog
;//////////////////////////////////////////////////////////////

		pop	af
		LD	(PBANK),a
		LD	($2100),A
		JR	VBL020
;------------------------------------------------------------------------
















;------------------------------------------------------------------------
;
;==== Character bank chenge ====
BANKCH
	LD	A,(BKCHFG)
	AND	A
	JP	Z,BKCH20
;
	CP	GAKCH	; �K�b�L�Z�b�g
	JP	Z,GAKKICH
	CP	HRTC1
	JP	Z,HARTCH1
	CP	HRTC2
	JP	Z,HARTCH2
	CP	HRTC3
	JP	Z,HARTCH3
	CP	HRTC4
	JP	Z,HARTCH4
	CP	FUEC1
	JP	NC,FUECHG
;
	LD	A,(DJFLAG)
	AND	A
	JP	Z,BCH010
;
	LD	A,(BKCHFG)
	CP	DMPCH  ;$02
	JP	Z,DMAPCS	; Danjyon map use character tr.
;
	LD	A,$0D
	CALL	Char_bank_set	; (CGB) �L�����N�^�[�o���N�Z�b�g
	LD	($2100),A
;
	LD	A,(BKCHCT)
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
	LD	HL,CHRRAM+$1000	; �L�����N�^ �q�`�l 
	ADD	HL,BC
		ld	e,l
		ld	d,h
;;10/31;	PUSH	HL
;;10/31;	POP	DE
;
	LD	HL,CHRDAT+$1000	; �a�f�L�����N�^���ꊷ�� �f�[�^
;
		LD	A,(DNJNNO)
		CP	NEWDJ		;�V�_���W�����H
		JR	NZ,ONHL100_PASS	;	NO --> ONHL100_PASS
		LD	A,:NewDJChrSet
		LD	($2100),A
		CALL	NewDJChrSet
		LD	($2100),A
		JR	ONHL100
ONHL100_PASS
;
	LD	A,(BKCHNO)
	ADD	A,$50
	LD	H,A
	ADD	HL,BC
;
	LD	A,(ONOFHELP)
	AND	A
	JR	Z,ONHL100	;���ʃu���b�N�H
;
	LD	A,(BKCHCT)
	DEC	A
	CP	$02
	JR	C,ONHL110	;���̂܂܁I
;
ONHL100
	LD	BC,$0040	; �� 
	CALL	DATA_MOV	; �L�����N�^ �]��
ONHL110
	LD	A,(BKCHCT)
	INC	A
	LD	(BKCHCT),A
	CP	$04
	JR	NZ,BCH008
;
	XOR	A
	LD	(BKCHFG),A
	LD	(BKCHCT),A
BCH008
	RET
;-------------------------------------
BCH010
;(CGB)	LD	HL,$2100
;(CGB)	LD	(HL),$0F
		LD	A,$0F
		CALL	Char_bank_set	; (CGB) �L�����N�^�[�o���N�Z�b�g
		LD	($2100),A
;
	LD	A,(BKCHCT)
;
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
	LD	HL,CHRRAM+$1000	; �L�����N�^ �q�`�l 
	ADD	HL,BC
		ld	e,l
		ld	d,h
;;10/31;	PUSH	HL
;;10/31;	POP	DE
;
	LD	A,(BKCHNO)
	ADD	A,$40	 ;"4": CHRDAT/100H
	LD	H,A
	LD	L,$00
;
	ADD	HL,BC
;
	LD	BC,$0040	; �� 
	CALL	DATA_MOV	; �L�����N�^ �]��
;
	LD	A,(BKCHCT)
	INC	A
	LD	(BKCHCT),A
	CP	$08
	JR	NZ,BKCH15
;
	XOR	A
	LD	(BKCHFG),A
	LD	(BKCHCT),A
BKCH15
	RET
;---------------------------------
BKCH20
		LD	A,(CGBFLG)
		AND	A
		JR	Z,BKCH20_PASS
		LD	A,(DNJNNO)
		CP	NEWDJ		;�V�_���W�����H
		JR	NZ,BKCH20_PASS	;	NO --> BKCH20_PASS
		LD	A,:NEWDJ_TEKI_CHR
		LD	($2100),A
		CALL	NEWDJ_TEKI_CHR
		XOR	A
		LD	(BKCHF3),A
		LD	(BKCHC3),A
		LD	HL,CHRRAM+$1000	; �L�����N�^ �q�`�l 
		LD	BC,$00000
		CALL	NewDJChrSet
		LD	C,$090
		LD	B,H
		LD	H,:BKCH20
		CALL	NEWDJ_DMA
		JR	BKCH28
BKCH20_PASS
;
	LD	A,(BKCHF2)
	AND	A
	JP	Z,BKC120	; Enemy bank set ?
;
	LD	A,(EBCHFG)
	LD	E,A
	LD	D,$0
	LD	HL,EBANK0
	ADD	HL,DE
	LD	A,(HL)
MRCH11
	PUSH	AF
;
	AND	$3F
	LD	D,A
	LD	E,$00
;
	POP	AF
;
	SWAP	A
	RRA
	RRA
	AND	$03
	LD	C,A
	LD	B,00
	LD	HL,BKTRBD
;
	ADD	HL,BC
	LD	A,(HL)
		and	a		; �L�����N�^�[�]������H
		jr	z,MRCH11_PASS	; �m�n
		CALL	Char_bank_set	; (CGB) �L�����N�^�[�o���N�Z�b�g
MRCH11_PASS
	LD	($2100),A
;
	LD	A,(BKCHC2)
	LD	C,A
;
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
	LD	HL,CHRDAT+$0000
	ADD	HL,BC
	ADD	HL,DE
	PUSH	HL
;
	LD	A,(EBCHFG)
	LD	D,A
	LD	HL,CHRRAM+$0400	; �L�����N�^ �q�`�l ($8000 - $97FF)
	ADD	HL,BC
	ADD	HL,DE
		ld	e,l
		ld	d,h
;;10/31;	PUSH	HL
;;10/31;	POP	DE
;
	POP	HL
;
	LD	BC,$0040	; �� 
	CALL	DATA_MOV	; �L�����N�^ �]��
;
BKCH25
	LD	A,(BKCHC2)
	INC	A
	LD	(BKCHC2),A
	CP	$04
	JR	NZ,BKCH30
;- - - - - - - - - - - - - - - - - - - - - - - - - - - -
BKCH28
	XOR	A
	LD	(BKCHF2),A
	LD	(BKCHC2),A
BKCH30
	RET
;---------------------------------
BKC120				;�G�L�����N�^�o���N�Z�b�g
		LD	A,(EBCHF2)
		LD	E,A
		LD	D,$0
		LD	HL,EBANK0
		ADD	HL,DE
		LD	A,(HL)
;
		PUSH	AF
		AND	$3F
		LD	D,A
		LD	E,$00
		POP	AF
;
		SWAP	A
		RRA
		RRA
		AND	$03
		LD	C,A
		LD	B,00
		LD	HL,BKTRBD
;
		ADD	HL,BC
		LD	A,(HL)
		and	a		; �L�����N�^�[�]������H
		jr	z,BKC120_PASS	; �m�n
		CALL	Char_bank_set	; (CGB) �L�����N�^�[�o���N�Z�b�g
BKC120_PASS
		LD	($2100),A
;
		LD	A,(BKCHC3)
		LD	C,A
;
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
		LD	HL,CHRDAT+$0000
		ADD	HL,BC
		ADD	HL,DE
;
		PUSH	HL
		LD	A,(EBCHF2)
		LD	D,A
		LD	HL,CHRRAM+$0400	; �L�����N�^ �q�`�l ($8000 - $97FF)
		ADD	HL,BC
		ADD	HL,DE
		ld	e,l
		ld	d,h
;;10/31;		PUSH	HL
;;10/31;		POP	DE
		POP	HL
;
		LD	BC,$0040	; �� 
		CALL	DATA_MOV	; �L�����N�^ �]��
;
		LD	A,(BKCHC3)
		INC	A
		LD	(BKCHC3),A
		CP	$04
		JR	NZ,BKC130
;- - - - - - - - - - - - - - - - - - - - - - - - - - - -
		XOR	A
		LD	(BKCHF3),A
		LD	(BKCHC3),A
BKC130
		RET
;==================================
GAKKICH
	LD	A,$01
	LD	($2100),A
	CALL	GAKKIST		; �y��Z�b�g
	JP	BKCHG10
;==================================
FUEAD1
	DW	CHRDAT+$2960
	DW	CHRDAT+$29A0
	DW	CHRDAT+$29C0
	DW	CHRDAT+$0200
	DW	CHRDAT+$0240
	DW	CHRDAT+$0260
FUEAD2
	DW	CHRRAM+$0200
	DW	CHRRAM+$0240
	DW	CHRRAM+$0260
	DW	CHRRAM+$0200
	DW	CHRRAM+$0240
	DW	CHRRAM+$0260
;
FUECHG
	SUB	FUEC1
	SLA	A
	LD	E,A
	LD	D,$00
	LD	HL,FUEAD1
	ADD	HL,DE
	PUSH	HL	
	LD	HL,FUEAD2
	ADD	HL,DE
	LD	E,(HL)
	INC	HL
	LD	D,(HL)
;
	POP	HL
	LD	A,(HLI)
	LD	H,(HL)
	LD	L,A
;
	LD	A,$0C
	CALL	Char_bank_set	; (CGB) �L�����N�^�[�o���N�Z�b�g
	LD	($2100),A
;
	LD	BC,$0040	; �� 
	CALL	DATA_MOV	; �L�����N�^ �]��
;
	LD	A,(BKCHFG)
	CP	FUEC3
	JR	Z,FUCS10
	CP	FUEC6
	JR	Z,FUCS10
;
	LD	A,(BKCHFG)
	INC	A
	LD	(BKCHFG),A
	RET
FUCS10
	XOR	A
	LD	(BKCHFG),A
	RET
;======================================
PBSET
	LD	(PBANK),A
	LD	($2100),A
	RET
;======================================
;	(CGB) �v���O�����o���N�Z�b�g
;		�L�����N�^�]���p
;======================================
PBSET_CGB
	CALL	Char_bank_set		; �L�����N�^�[�o���N�Z�b�g

	LD	(PBANK),A
	LD	($2100),A
	RET
;======================================
PBRETN
	PUSH	AF
	LD	A,(PBANK)
	LD	($2100),A
	POP	AF
	RET
;
;========================================
DMAPCS
	LD	A,$12
	CALL	Char_bank_set	; (CGB) �L�����N�^�[�o���N�Z�b�g
	LD	($2100),A
;
	LD	A,(BKCHCT)
	CP	$08
	JR	C,DMCS00
	JR	NZ,DMS030
;
	LD	A,$2
	LD	($2100),A
	CALL	DIMAPS
;
	LD	HL,BKCHCT
	INC	(HL)
	RET
DMS030
	CP	$09
	JR	NZ,DMS038
;
	LD	A,$2
	LD	($2100),A
	CALL	DIMAP2
;
	LD	HL,BKCHCT
	INC	(HL)
	RET
;
DMS038
	CP	$0A
	JR	NZ,DMS039
;
	LD	A,$2
	LD	($2100),A
	CALL	DIMAP3
;
	LD	HL,BKCHCT
	INC	(HL)
	RET
DMS039
	LD	A,$2
	LD	($2100),A
	CALL	DIMAP4
;
	XOR	A
	LD	(BKCHFG),A
	LD	(BKCHCT),A
	RET
;
DMCS00
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
	LD	HL,CHRRAM+$0D00	; �L�����N�^ �q�`�l 
	ADD	HL,BC
		ld	e,l
		ld	d,h
;;10/31;	PUSH	HL
;;10/31;	POP	DE
;
	LD	HL,CHRDAT+$3E00	; ���ʕ����L�����N�^�]��
	ADD	HL,BC
;
	LD	BC,$0040	; �� 
	CALL	DATA_MOV	; �L�����N�^ �]��
;
	LD	A,(BKCHCT)
	INC	A
	LD	(BKCHCT),A
;
;	CP	$08   ;10
;	JR	NZ,DCH008
;;
;	XOR	A
;	LD	(BKCHFG),A
;	LD	(BKCHCT),A
DCH008
	RET
;======================================
SOUND
	LD	A,$1F
;(CGB)	LD	($2100),A
		CALL	PBSET
;
	CALL	SOUNDSB	; SE
;
	LD	A,(SOUND2)
	AND	A
	JR	NZ,SDS12	;???
;
	LD	A,(SNDSPD)
	AND	A
	JR	Z,SOUND101
;
	CP	$02
	JR	NZ,SOUND100
;
	LD	A,(FRCNT)
	AND	$01
	JR	NZ,SDS12
;
	JR	BGMSUB
SOUND100
	CALL	BGMSUB	; BGM
SOUND101
;===================================
BGMSUB
	LD	A,$1B
;(CGB)	LD	($2100),A
		CALL	PBSET
	CALL	SOUNDSB
;;	NOP
;;	NOP
;;	NOP
;
	LD	A,$1E
;(CGB)	LD	($2100),A
		CALL	PBSET
	CALL  	SOUNDSB
;
;	LD	A,($D3BD)
;	AND	A
;	JR	Z,SDS12
;;
;	XOR	A
;	LD	($D3BD),A	
SDS12
	RET
;- - - - - - - - - - - - 
;
;
;+----------------------------------------------+
;|	�I�[�v�j���O�f����			|
;|		�z���C�g�A�E�g���[�`���b�`�k�k�p|
;+----------------------------------------------+
OpenWhiteOutSub
		LD	A,$20
		LD	($2100),A
		CALL	OpenWhiteOut
PBANK_SET_RT
		LD	A,(PBANK)
		LD	($2100),A
		RET
;
;+----------------------------------------------+
;|	�I�[�v�j���O�f����			|
;|		�z���C�g�C�����[�`���b�`�k�k�p	|
;+----------------------------------------------+
OpenWhiteInSub
		LD	A,$20
		LD	($2100),A
		CALL	OpenWhiteIn
		JR	PBANK_SET_RT
;
;+----------------------------------------------+
;|	�I�[�v�j���O�f����			|
;|		��ȃt���b�V�����[�`���b�`�k�k�p|
;+----------------------------------------------+
OpenFlashSub
		LD	A,$20
		LD	($2100),A
		CALL	OpenFlash
		JR	PBANK_SET_RT
;
;+----------------------------------------------+
;|	�I�[���z���C�g�Z�b�g���[�`���b�`�k�k�p	|
;|			�h�m			|
;|			�`  �F�߂�o���N�l	|
;+----------------------------------------------+
AllWhiteSetSub
		PUSH	AF
		LD	A,$020
		LD	($2100),A
		CALL	AllWhiteSet
;;;;;;;		JR	MO_DO_RU
		JR	POP_SET_RT
;
;+----------------------------------------------+
;|	�I�[���J���[�Z�b�g���[�`���b�`�k�k�p	|
;+----------------------------------------------+
AllColorSetSub
		LD	A,$020
		LD	($2100),A
		CALL	AllColorSet
		JR	MO_DO_RU
;
;+--------------------------------------------------+
;|�v���C���[�_�E�����̃J���[�Z�b�g���[�`���b�`�k�k�p|
;+--------------------------------------------------+
DownColorSetSub
		LD	A,$020
		LD	($2100),A
		CALL	DownColorSet
MO_DO_RU
		LD	A,$001
		LD	($2100),A
		RET
;
;+------------------------------------------------------+
;|	�P���j�b�g�a�f���������̃A�g���r���[�g�Z�b�g	|
;|			�h�m				|
;|			�`  �F�߂�o���N�l		|
;|			�a�b�F�t�m�h�s�i���o�[���S	|
;+------------------------------------------------------+
BG1UNIT_ATR_SUB
		PUSH	AF
		LD	B,$000
		LD	A,(UNTATR)
		SLA	A
		RL	B
		SLA	A
		RL	B
		LD	C,A
		JR	BG1UNIT_000
BG1UNIT_ATR
		PUSH	AF
BG1UNIT_000
		LD	A,:BgAtrAddress
		LD	($2100),A
;
		CALL	BgAtrAddress
;
		LD	A,(WORK8)
		LD	($2100),A
;
		LD	HL,VRAMD_AT+1
		LD	A,(VRAMD_AT)
		LD	E,A
		ADD	A,10
		LD	(VRAMD_AT),A
		LD	D,$00
		ADD	HL,DE
;
		LD	A,(WORK9)
		LD	D,A
		LD	A,(WORKA)
		LD	E,A
;
		LD	A,(VRAMH)
		LD	(HLI),A
		LD	A,(VRAML)
		LD	(HLI),A
		LD	A,$81
		LD	(HLI),A
		LD	A,(DE)
		LD	(HLI),A
		INC	DE
		INC	DE
		LD	A,(DE)
		LD	(HLI),A
		DEC	DE
;
		LD	A,(VRAMH)
		LD	(HLI),A
		LD	A,(VRAML)
		INC	A
		LD	(HLI),A
		LD	A,$81
		LD	(HLI),A
		LD	A,(DE)
		LD	(HLI),A
		INC	DE
		INC	DE
		LD	A,(DE)
		LD	(HLI),A
;
		XOR	A
		LD	(HLI),A
;
POP_SET_RT
		POP	AF
		LD	($2100),A
		RET
;
;+------------------------------------------------------+
;|	�y�����������̃z���C�g�C��			|
;+------------------------------------------------------+
GK_WhiteOutSub
		PUSH	AF
		LD	A,$020
		LD	($2100),A
		CALL	GK_WhiteOut
		JR	POP_SET_RT
;
;+------------------------------------------------------+
;|	�P���j�b�g�a�f����������			|
;|		�A�g���r���[�g����Z�b�g		|
;|			(�_���W�����̃h�A��)		|
;|			�h�m				|
;|			�`  �F�߂�o���N�l		|
;+------------------------------------------------------+
DR_AT_Sub
		LD	A,:DR_AT_Address
		LD	($2100),A
		CALL	DR_AT_Address
		LD	A,(WORK8)
		LD	($2100),A
		LD	A,(WORK9)
		LD	H,A
		LD	A,(WORKA)
		LD	L,A
		LD	A,(HL)
		INC	DE
		RET
;
DR_AT_SetSub
		PUSH	AF
;
		PUSH	BC
		CALL	DR_AT_Sub
		LD	(WORK0),A
		POP	BC
		CALL	DR_AT_Sub
		LD	(WORK1),A
;
		LD	A,(VRAMD_AT)
		LD	C,A
		LD	B,$00
		ADD	A,$05
		LD	(VRAMD_AT),A
;
		LD	HL,VRAMD_AT+1
		ADD	HL,BC
		LD	A,(VRAMH)
		LD	(HLI),A
		LD	A,(VRAML)
		LD	(HLI),A
		LD	A,$01
		LD	(HLI),A
;
		LD	A,(WORK0)
		LD	(HLI),A
		LD	A,(WORK1)
		LD	(HLI),A
		XOR	A
		LD	(HLI),A
;
		JR	POP_SET_RT
;
;+------------------------------------------------------+
;|	��΂����Ԃɉ��������`�F�b�N(�V�_���W�����p)	|
;+------------------------------------------------------+
HakaCheck_SUB
		PUSH	AF
		LD	A,$20
		LD	($2100),A
		CALL	HakaCheck
		JR	POP_SET_RT
;
;+------------------------------------------------------+
;|	�G�̃C�j�V�����v���O�����̃A�h���X�T�[�`	|
;+------------------------------------------------------+
GET_INIT_EN_SUB
		PUSH	AF
		LD	A,$20
		LD	($2100),A
		CALL	GET_INIT_EN
		JR	POP_SET_RT
;
;+------------------------------------------------------+
;|	���̃_���W������p���j�b�g�|�W�V�����T�[�`	|
;+------------------------------------------------------+
NEWDJ_UNSH_SUB
		PUSH	AF
		LD	A,$20
		LD	($2100),A
		CALL	NEWDJ_UNSH
		JR	POP_SET_RT
;
;+------------------------------------------------------+
;|	���̃_���W�����Ńg�����|�����̂a�f������������	|
;+------------------------------------------------------+
TRNPRN_CHK_SUB
		PUSH	AF
		LD	A,$20
		LD	($2100),A
		CALL	TRNPRN_CHK
		JP	POP_SET_RT
;
;+------------------------------------------------------+
;|	�a�f�R�C�����j�b�g�Z�b�g�`�F�b�N		|
;+------------------------------------------------------+
COIN_CHK_SUB
		PUSH	AF
		LD	A,$020
		LD	($2100),A
		CALL	NEWDJ_COIN_CHK
		JP	POP_SET_RT
;
;+------------------------------------------------------+
;|	���̃_���W�����ŁA�b�f�a�ȊO�Ńf�[�^�]��	|
;|	����Ƃ��́@�c�l�`�]��				|
;+------------------------------------------------------+
NOMAL_DMA
		PUSH	HL
		LD	L,$000
		LD	E,L
		LD	H,B
		LD	A,C
		ADD	A,$080
		LD	D,A
		LD	BC,$0100
		CALL	DATA_MOV
		POP	HL
		JR	MODORU_DMA
;
;+------------------------------------------------------+
;|	���̃_���W�����̓G�L�����N�^�[��V�c�l�`�œ]��	|
;|			�@�`�F�]�����̃o���N		|
;|			�@�a�F�]�����A�h���X�̂g�h�f�g	|
;|			�@�b�F�]����A�h���X�̂g�h�f�g	|
;|			�@�g�F�߂�o���N		|
;+------------------------------------------------------+
NEWDJ_DMA
		LD	($2100),A
;
		LD	A,(CGBFLG)
		AND	A
		JR	Z,NOMAL_DMA
;
		LD	A,B		;�]�����A�h���X�Z�b�g
		LD	(HDMA1),A	;
		LD	A,$000		;
		LD	(HDMA2),A	;
;
		LD	A,C		;�]����A�h���X�Z�b�g
		LD	(HDMA3),A	;
		LD	A,$000		;
		LD	(HDMA4),A	;
;
		LD	A,$00F		;���Z�b�g
		LD	(HDMA5),A	;	�]���X�^�[�g
;
MODORU_DMA
;;;KK;;;		LD	A,$020
		LD	A,H
		LD	($2100),A
		RET
;
;+------------------------------------------------------+
;|	���L�����N�^�[���q�`�l�o�b�t�@�ɃZ�b�g		|
;+------------------------------------------------------+
FUKU_BUF_SET
		PUSH	AF
		LD	A,$035
		LD	($2100),A
;
		LD	HL,$4F00
		LD	DE,FUKU_CHR_BUF
		LD	BC,$0020
		CALL	DATA_MOV
;
		JP	POP_SET_RT
;
;+------------------------------------------------------+
;|	���̃_���W�����̗d��				|
;+------------------------------------------------------+
FUKU_YOUSEI_SUB
		PUSH	AF
		LD	A,:FUKU_YOUSEI
		LD	($2100),A
		CALL	FUKU_YOUSEI
		JP	POP_SET_RT
;
;+------------------------------------------------------+
;|	���̃_���W�����̔��ł閂�@�̕�		|
;+------------------------------------------------------+
FLY_KONA_SUB
		PUSH	AF
		LD	A,:FLY_KONA
		LD	($2100),A
		CALL	FLY_KONA
		JP	POP_SET_RT
;
;+------------------------------------------------------+
;|	���̃_���W�����̓G�L�����N�^�[�̂n�`�l�Z�b�g	|
;|			���͒l				|
;|			�@�b�F�I�u�W�F�̌�		|
;|			�g�k�F�f�[�^�A�h���X		|
;+------------------------------------------------------+
FUKU_OAM_SET
		PUSH	AF
		LD	A,$020
		LD	($2100),A
		CALL	ENOMST
		JP	POP_SET_RT
;
;+------------------------------------------------------+
;|	���̃_���W�����̃N���A�f���ŁA�����N��		|
;|		�o���U�C�����グ���@����		|
;+------------------------------------------------------+
JYANPS_SUB
		PUSH	AF
		LD	A,$003
		LD	($2100),A
		CALL	JYANPS
		JP	POP_SET_RT
;
;+------------------------------------------------------+
;|	���̃_���W�����łf�d�s������			|
;+------------------------------------------------------+
GET_FUKU_SUB
		PUSH	AF
		LD	A,:GET_FUKU
		LD	($2100),A
		CALL	GET_FUKU
		JP	POP_SET_RT
;
;+------------------------------------------------------+
;|	���̃_���W�����̃N���A�f���̃z���C�g�E�A�E�g	|
;+------------------------------------------------------+
FUKU_WhiteOut_SUB
		PUSH	AF
		LD	A,:FUKU_WhiteOut
		LD	($2100),A
		CALL	FUKU_WhiteOut
		JP	POP_SET_RT
;
;+------------------------------------------------------+
;|	���̃_���W�����E���X�g�{�X�̎q��		|
;+------------------------------------------------------+
FK_BOSS_KOBUN_SUB
		PUSH	AF
		LD	A,:FK_BOSS_KOBUN
		LD	($2100),A
		CALL	FK_BOSS_KOBUN
		JP	POP_SET_RT
;
;+------------------------------------------------------+
;|	���b�Z�[�W�v���O�����b�`�k�k�p			|
;+------------------------------------------------------+
MESEGE_SUB
		PUSH	AF
		LD	A,$0F
		CALL	PBSET		; �����L�����N�^�[�o���N
		CALL	MESEGE
		JP	POP_SET_RT
;
;+------------------------------------------------------+
;|	BBGBRST�v���O�����b�`�k�k�p			|
;+------------------------------------------------------+
BBGBRST_SUB
		PUSH	AF
		LD	A,:BBGBRST
		CALL	PBSET
		CALL	BBGBRST
PB_POP_RTN
		POP	AF
		CALL	PBSET
		RET
;
;+------------------------------------------------------+
;|	����u�q�`�l�c�v���O�����b�`�k�k�p		|
;+------------------------------------------------------+
VRAMD_SET
		PUSH	AF
		LD	A,:VRAMTR_ATR	; (CGB)
		LD	($2100),A	; (CGB)
		CALL	VRAMTR_ATR	; (CGB)�A�g���r���[�g
		LD	DE,VRAMD+1	; VRAMD TR.
		CALL	VRAMTR
		JR	PB_POP_RTN
;
;+------------------------------------------------------+
;|	�I�J���i�J���[�Z�b�g�v���O�����b�`�k�k�p	|
;+------------------------------------------------------+
OKARINA_COLST_SUB
		PUSH	AF
		LD	A,:OKARINA_COLST
		LD	($2100),A
		CALL	OKARINA_COLST
		JP	POP_SET_RT
;
;+------------------------------------------------------+
;|	�y��O���f�[�V�����v���O�����b�`�k�k�p		|
;+------------------------------------------------------+
GAKKI_COL_SET_SUB
		PUSH	AF
		LD	A,:GAKKI_COL_SET
		LD	($2100),A
		CALL	GAKKI_COL_SET
		JP	POP_SET_RT
;
;+------------------------------------------------------+
;|	�����̃]�[���v���O�����b�`�k�k�p		|
;+------------------------------------------------------+
GEKI_ZORA_SUB
		PUSH	AF
		LD	A,:GEKI_ZORA
		CALL	PBSET
		CALL	GEKI_ZORA
		JP	POP_SET_RT
;
;+------------------------------------------------------+
;|	�q���g�Δł̃f�[�^�C���f�b�N�X�b�`�k�k�p	|
;+------------------------------------------------------+
HINTO_READ_SUB
		PUSH	AF
		LD	A,:HINTO_READ
		LD	($2100),A
		CALL	HINTO_READ
		JP	POP_SET_RT
;
;+------------------------------------------------------+
;|	�����̃J�������m�����`�F�b�N�v���O�����b�`�k�k�p|
;+------------------------------------------------------+
GEKI05_CHK_SUB
		PUSH	AF
		LD	A,:GEKI05_CHECK
		LD	($2100),A
		CALL	GEKI05_CHECK
		JP	POP_SET_RT
;
;+------------------------------------------------------+
;|	�����̃X�N���[���������݃v���O�����b�`�k�k�p	|
;+------------------------------------------------------+
GEKI_SCRN_SUB
		LD	A,:GEKI_SCRN
		LD	($2100),A
		CALL	GEKI_SCRN
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�f�a�A�b�f�a�Ή� �L�����N�^�[�o���N�Z�b�g			x
;x----------------------------------------------------------------------x
;x	    �d�m�s�q�x							x
;x		�`      �F �f�a�Ή��L�����N�^�[�o���N			x
;x	    �q�d�s�t�q�m						x
;x		�`      �F �f�a�A�b�f�a�Ή��L�����N�^�[�o���N		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
Char_bank_set
		PUSH	BC

		LD	B,A
		LD	A,(CGBFLG)
		AND	A		; �J���[�Q�[���{�[�C�H
		JR	Z,Cbank_set_100	; �m�n

		LD	A,B
		OR	%00100000	; �{�Q�O�g
;;;;;;		JR	Cbank_set_200
		POP	BC
		RET
Cbank_set_100
		LD	A,B
Cbank_set_200
		POP	BC
		RET

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�l�`�o�f�[�^�Z�b�g �r�t�a					x
;x----------------------------------------------------------------------x
;x	    �d�m�s�q�x							x
;x		�a�b       �F �]����					x
;x		�c�d       �F ���j�b�g�o�b�t�@�A�h���X�i�]����j	x
;x		�v�n�q�j�O �F �l�`�o�f�[�^�A�h���X �a�`�m�j�i�]�����j	x
;x		�g         �F �l�`�o�f�[�^�A�h���X �g�h�f�g�i  �h  �j	x
;x		�k         �F �l�`�o�f�[�^�A�h���X �k�n�v  �i  �h  �j	x
;x	    �q�d�s�t�q�m						x
;x		�g         �F �l�`�o�f�[�^�A�h���X �g�h�f�g�i  �h  �j	x
;x		�k         �F �l�`�o�f�[�^�A�h���X �k�n�v  �i  �h  �j	x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
Map_data_set
		LD	A,(WORK0)	; �f�[�^�o���N�Z�b�g
		LD	($2100),A
		LD	A,$02
		LD	(SVBK),A	; �q�`�l�o���N�i�Q�j�Z�b�g

		CALL	DATA_MOV	; �f�[�^�]��

		XOR	A
		LD	(SVBK),A	; �q�`�l�o���N�i�O�j�Z�b�g
		LD	A,$20
		LD	($2100),A	; �o���N���Z�b�g

		RET

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	���j�b�g�o�b�t�@ �o���N�Q��������				x
;x----------------------------------------------------------------------x
;x	    �d�m�s�q�x							x
;x		�`         �F ���^�[���v���O�����o���N			x
;x		�g         �F ���j�b�g�o�b�t�@�A�h���X �g�h�f�g		x
;x		�k         �F ���j�b�g�o�b�t�@�A�h���X �k�n�v		x
;x----------------------------------------------------------------------x
;x	    �� �F �����������s���̂́A�n��̂݁I			x
;x	          �v���O�����o���N�� Unit_tran_bit�i�W�O�g�j��������	x
;x	          ����ꍇ�A�����I�ɏ����������s��			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
Unit_change
		LD	(WORK2),A	; �o���N�r�`�u�d

		LD	A,(CGBFLG)
		AND	A		; �J���[�Q�[���{�[�C�H
		RET	Z		; �m�n
		LD	A,(DJFLAG)
		AND	A		; �n��H
		RET	NZ		; �m�n
;------------------------------------------------------------------------
		PUSH	BC

		LD	A,(WORK2)
		AND	UNIT_TRAN_BIT	; �����Z�b�g�H
		JR	NZ,Unit_chg_050	; �x�d�r

		LD	A,$20
		LD	($2100),A
		CALL	Unit_check	; ���j�b�g�`�F�b�N
					; �����������j�b�g�H
		JR	C,Unit_chg_100	; �m�n
Unit_chg_050
		LD	B,(HL)		; �q�`�l�o���N�i�O�j�f�[�^
		LD	A,$02
		LD	(SVBK),A	; �q�`�l�o���N�i�Q�j�Z�b�g
		LD	(HL),B		; ���j�b�g�f�[�^�Z�b�g
		XOR	A
		LD	(SVBK),A	; �q�`�l�o���N�i�O�j�Z�b�g
Unit_chg_100
		LD	A,(WORK2)
		AND	%01111111
		LD	($2100),A	; �o���N���Z�b�g

		POP	BC
;------------------------------------------------------------------------
Unit_chg_900
		RET

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�k�S ������o�� �A�g���r���[�g�Z�b�g				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;;;;;;;Taki_atr_set
;;;;;;;		LD	A,:Taki_atr_set_sub
;;;;;;;		LD	($2100),A
;;;;;;;		CALL	Taki_atr_set_sub
;;;;;;;		LD	A,:TAKIBMV
;;;;;;;		LD	($2100),A
;;;;;;;		RET
;;;;;;;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�Â����� �J���[�Z�b�g�i CALL by <ZEX> FADECK )			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;;;;;;;Dark_colset
;;;;;;;		LD	A,:Dark_colset_sub
;;;;;;;		LD	($2100),A
;;;;;;;		CALL	Dark_colset_sub
;;;;;;;		LD	A,:FADECK
;;;;;;;		LD	($2100),A
;;;;;;;		RET
;;;;;;;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�G���f�B���O �_�X�N���[���i CALL by <ZED> ED8000 )		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;;;;;;;ED8000_call
;;;;;;;		LD	A,:ED8000_sub
;;;;;;;		LD	($2100),A
;;;;;;;		CALL	ED8000_sub
;;;;;;;		LD	A,:ED8000
;;;;;;;		LD	($2100),A
;;;;;;;		RET
;;;;;;;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	 �J�������p �L�����]��						x
;x----------------------------------------------------------------------x
;x	    �d�m�s�q�x							x
;x		�a�b       �F �]����					x
;x		�`         �F �f�[�^�A�h���X �a�`�m�j�i�]�����j		x
;x		�g         �F �f�[�^�A�h���X �g�h�f�g�i  �h  �j		x
;x		�k         �F �f�[�^�A�h���X �k�n�v  �i  �h  �j		x
;x		�c         �F �u�q�`�l�A�h���X �g�h�f�g�i�]����j	x
;x		�d         �F �u�q�`�l�A�h���X �k�n�v  �i  �h  �j	x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CAMERA_CHR_TRAN
		LD	($2100),A	; �f�[�^�A�h���X�a�`�m�j

		CALL	DATA_MOV	; �f�[�^�]��

		LD	A,:CHR_TRANSFER
		LD	($2100),A
		RET

;����;;������������������������������������������������������������������������
;����;;��	 ����́A����������\��I				       ��
;����;;������������������������������������������������������������������������
;����;;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;����;;x	 �J�������p �X�N���[���]��					x
;����;;x----------------------------------------------------------------------x
;����;;x	    �d�m�s�q�x							x
;����;;x		�a�b       �F �]����					x
;����;;x		�v�n�q�j�a �F �f�[�^�A�h���X �a�`�m�j�i�]�����j		x
;����;;x		�g         �F �f�[�^�A�h���X �g�h�f�g�i  �h  �j		x
;����;;x		�k         �F �f�[�^�A�h���X �k�n�v  �i  �h  �j		x
;����;;x		�c         �F �u�q�`�l�A�h���X �g�h�f�g�i�]����j	x
;����;;x		�d         �F �u�q�`�l�A�h���X �k�n�v  �i  �h  �j	x
;����;;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;����;CAMERA_SCR_TRAN
;����;		PUSH	DE
;����;		PUSH	HL
;����;
;����;		LD	A,(WORKB)
;����;		LD	($2100),A	; �f�[�^�A�h���X�a�`�m�j
;����;		
;����;;------------------------------------------------------------------------
;����;;	�A�g���r���[�g
;����;;------------------------------------------------------------------------
;����;		LD	A,(CGBFLG)
;����;		AND	A
;����;		JR	Z,CAMERA_SCTR_100
;����;
;����;		INC	HL		; �f�[�^�A�h���X�{�P
;����;		LD	A,$01
;����;		LD	(VBK),A		; �o���N�i�P�j�Z�b�g
;����;		LD	(WORKA),A	; �t���O
;����;
;����;		CALL	CAMERA_SCTR_SUB
;����;
;����;		XOR	A
;����;		LD	(VBK),A		; �o���N�i�O�j�Z�b�g
;����;
;����;;------------------------------------------------------------------------
;����;;	�L�����m���D
;����;;------------------------------------------------------------------------
;����;CAMERA_SCTR_100
;����;		POP	HL
;����;		POP	DE
;����;
;����;		XOR	A
;����;		LD	(WORKA),A	; �t���O
;����;		CALL	CAMERA_SCTR_SUB
;����;
;����;		LD	A,:SCR_TRANSFER
;����;		LD	($2100),A
;����;		RET
;����;
;����;;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;����;;x	 �J�������p �X�N���[���]�� �r�t�a				x
;����;;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;����;CAMERA_SCTR_SUB
;����;		LD	BC,$0400	; ��
;����;CAMERA_STSB_100
;����;		LD	A,(WORKA)	; �L���������A�g���r���[�g
;����;		AND	A
;����;		JR	Z,CAMERA_STSB_110
;����;
;����;		PUSH	DE
;����;		LD	A,(HLI)
;����;		LD	D,A
;����;		AND	%11000000	; �u�g
;����;		SRL	A
;����;		LD	E,A
;����;		LD	A,D
;����;		AND	%00011100	; �`�s�q
;����;		SRL	A
;����;		SRL	A
;����;		OR	E
;����;		POP	DE
;����;		JR	CAMERA_STSB_120
;����;CAMERA_STSB_110
;����;		LD	A,(HLI)
;����;CAMERA_STSB_120
;����;		LD	(DE),A
;����;		INC	HL
;����;		INC	DE
;����;		DEC	BC
;����;		LD	A,B
;����;		OR	C
;����;		JR	NZ,CAMERA_STSB_100
;����;		RET
;����;
;������������������������������������������������������������������������
;��	 ���ꂪ�A�����o�[�W�������I				       ��
;������������������������������������������������������������������������
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	 �J�������p �X�N���[���]���i�G���f�B���O�ł��g�p�j		x
;x----------------------------------------------------------------------x
;x	    �d�m�s�q�x							x
;x		�a�b       �F �]����					x
;x		�`         �F �f�[�^�A�h���X �a�`�m�j�i�]�����j		x
;x		�g         �F �f�[�^�A�h���X �g�h�f�g�i  �h  �j		x
;x		�k         �F �f�[�^�A�h���X �k�n�v  �i  �h  �j		x
;x		�v�n�q�j�e �F ���^�[���o���N				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CAMERA_SCR_TRAN
		PUSH	HL

		LD	($2100),A	; �f�[�^�A�h���X�a�`�m�j
		
;------------------------------------------------------------------------
;	�A�g���r���[�g
;------------------------------------------------------------------------
		LD	A,(CGBFLG)
		AND	A
		JR	Z,CAMERA_SCTR_100

		LD	DE,$0168	; �Q�O�~�P�W
		ADD	HL,DE
		LD	A,$01
		LD	(VBK),A		; �o���N�i�P�j�Z�b�g

		CALL	CAMERA_SCTR_SUB

		XOR	A
		LD	(VBK),A		; �o���N�i�O�j�Z�b�g

;------------------------------------------------------------------------
;	�L�����m���D
;------------------------------------------------------------------------
CAMERA_SCTR_100
		POP	HL
		PUSH	HL

		CALL	CAMERA_SCTR_SUB

		POP	HL
		LD	A,(GMMODE)
		CP	PRN
		JR	NZ,CAMERA_SCTR_200

		CALL	CAMERA_PRBF_TRAN	; �v�����^�o�b�t�@�Z�b�g

CAMERA_SCTR_200
;;;;;;;		LD	A,:SCR_TRANSFER
		LD	A,(WORKF)
		LD	($2100),A
		RET

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	 �J�������p �X�N���[���]�� �r�t�a				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CAMERA_SCTR_SUB
		LD	DE,SCR_VRAM_ADRS; �u�|�q�`�l�A�h���X�i�Œ�j
CAMERA_STSB_100
		LD	A,(HLI)
		LD	(DE),A

		INC	E
		LD	A,E
		AND	%00011111
		CP	20
		JR	NZ,CAMERA_STSB_100
		LD	A,E
		ADD	A,12
		LD	E,A
		LD	A,D
		ADC	A,$0
		LD	D,A
		CP	$9A
		JR	NZ,CAMERA_STSB_100
		LD	A,E
		CP	$40
		JR	NZ,CAMERA_STSB_100
		RET

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	 �|�P�b�g�v�����^�p �X�N���[���o�b�t�@�]��			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CAMERA_PRBF_TRAN
;;;;;;;		LD	BC,18*20	; ��
;;;;;;;		LD	DE,scrbuf	; �q�`�l�A�h���X�i�Œ�j
;;;;;;;CAMERA_PRTR_100
;;;;;;;		LD	A,(HLI)
;;;;;;;		LD	(DE),A
;;;;;;;		INC	DE
;;;;;;;		DEC	BC
;;;;;;;		LD	A,B
;;;;;;;		OR	C
;;;;;;;		JR	NZ,CAMERA_PRTR_100
;;;;;;;		RET


		LD	BC,18*20	; ��
		LD	DE,scrbuf	; �q�`�l�A�h���X�i�Œ�j

		jp	DATA_MOV	; �f�[�^�]��
;;;(CGB)		CALL	DATA_MOV	; �f�[�^�]��
;;;(CGB)
;;;(CGB)		RET

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	 �J�������p �J���[�]��						x
;x----------------------------------------------------------------------x
;x	    �d�m�s�q�x							x
;x		�a         �F �]����					x
;x		�`         �F �f�[�^�A�h���X �a�`�m�j�i�]�����j		x
;x		�g         �F �f�[�^�A�h���X �g�h�f�g�i  �h  �j		x
;x		�k         �F �f�[�^�A�h���X �k�n�v  �i  �h  �j		x
;x		�c         �F �b�f�v�n�q�j�A�h���X �g�h�f�g�i�]����j	x
;x		�d         �F �b�f�v�n�q�j�A�h���X �k�n�v  �i  �h  �j	x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;;;;;;;CAMERA_COL_TRAN
;;;;;;;		LD	($2100),A	; �f�[�^�A�h���X�a�`�m�j
;;;;;;;
;;;;;;;		LD	A,$2
;;;;;;;		LD	(SVBK),A
;;;;;;;
;;;;;;;		CALL	DATA_MOV
;;;;;;;
;;;;;;;		XOR	A
;;;;;;;		LD	(SVBK),A
;;;;;;;
;;;;;;;		LD	A,:COL_TRANSFER
;;;;;;;		LD	($2100),A
;;;;;;;		RET
;;;;;;;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	 �J�������p �풓�L�����N�^�[�]��				x
;x				(��)�`���W�X�^�ɖ߂�o���N�����Ă��Ă�x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CAMERA_CHR_RESET
		PUSH	AF
		CALL	BANKST
		JP	POP_SET_RT

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	 �|�P�b�g�v�����^�p �f�[�^�[�o�b�t�@�[�Z�b�g			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
dtbfset
		ld	a,(chradr+2)
		ld	(2100h),a
;
_loop1
		ld	a,(hli)
		ld	(de),a
		inc	de
		dec	b
		jr	nz,_loop1
;
		ld	a,:detaset
		ld	(2100h),a
		ret

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�o���N�z�� �T�u���[�`��	�b�`�k�k				x
;x----------------------------------------------------------------------x
;x	    �d�m�s�q�x							x
;x		CallBank   �F �R�[���� �a�`�m�j				x
;x		CallHigh   �F �R�[���� �g�h�f�g				x
;x		CallLow    �F �R�[���� �k�n�v				x
;x		ReturnBank �F ���^�[�� �a�`�m�j				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
JSL_CALL
		LD	A,(CallBank)
		LD	($2100),A

		CALL	JSL_CALL_SUB

		LD	A,(ReturnBank)
		LD	($2100),A
		RET

JSL_CALL_SUB
		LD	A,(CallHigh)
		LD	H,A
		LD	A,(CallLow)
		LD	L,A
		JP	(HL)

;===============================================================
	END

;
