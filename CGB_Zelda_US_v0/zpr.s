
		onbankgroup

;************************************************************************
;*									*
;*	�^�C�g��    �F	�[���_�̓`�� �c�w				*
;*	�t�@�C����  �F	ZPR.S						*
;*	�������e    �F	�|�P�b�g�v�����^����				*
;*	�쐬���t    �F  �P�X�X�W�^�O�X�^�P�X				*
;*									*
;************************************************************************
;
;==============	�o���N�O ================================================
BANK0		GROUP	0
;-------------<	ZMA >----------------------------------------------------
		EXTERN	DJBST,GRBST,Char_bank_set
		EXTERN	CAMERA_CHR_TRAN,CAMERA_SCR_TRAN
		EXTERN	CAMERA_CHR_RESET
		EXTERN	dtbfset

		EXTERN	HIMI2
;-------------<	ZPL >----------------------------------------------------
		EXTERN	FDIN,FDOUT,GPLAY,MSGCH3
;-------------<	ZCO >----------------------------------------------------
		EXTERN	LCDC_OFF,DATA_MOV
;
;==============	�o���N�Q�W ==============================================
BANK28		GROUP	$28
;-------------<	ZCHR >---------------------------------------------------
		EXTERN	Photo_00p_scr
		EXTERN	Photo_00_scr,Photo_01_scr
		EXTERN	Photo_02_scr,Photo_03_scr
		EXTERN	Photo_04_scr,Photo_05_scr
		EXTERN	Photo_06_scr,Photo_07_scr
		EXTERN	Photo_08_scr,Photo_09_scr
		EXTERN	Photo_0a_scr,Photo_0b_scr
		EXTERN	Photo_scr,Photo_col
;
;-------------<	zprsub >-------------------------------------------------
		extern	prnomdt
;
;==============	�o���N�Q�X ==============================================
BANK29		GROUP	$29
;-------------<	ZCHR >---------------------------------------------------
		EXTERN	Photo_00_cgx,Photo_01_cgx
		EXTERN	Photo_02_cgx,Photo_03_cgx
;
;==============	�o���N�Q�` ==============================================
BANK2A		GROUP	$2A
;-------------<	ZCHR >---------------------------------------------------
		EXTERN	Photo_04_cgx,Photo_05_cgx
		EXTERN	Photo_06_cgx,Photo_07_cgx
;
;==============	�o���N�Q�a ==============================================
BANK2B		GROUP	$2B
;-------------<	ZCHR >---------------------------------------------------
		EXTERN	Photo_08_cgx,Photo_09_cgx
		EXTERN	Photo_0a_cgx,Photo_0b_cgx
;
;==============	�o���N�R�a ==============================================
BANK3B		GROUP	$3B
;-------------<	ZCHR >---------------------------------------------------
		EXTERN	Photo_00p_cgx
;
;========================================================================
		PUBALL
		NLIST
		KANJI
		isdmg
;------------------------------------------------------------------------
		LIB	ZRAM		; RAM �d�p�t�`�s�d �t�@�C��
		LIB	ZBN		; BG unit no file !
;------------------------------------------------------------------------
		LIST


;������������������������������������������������������������������������
;��	�o���N�Q�W						       ��
;������������������������������������������������������������������������
BANK28		GROUP	$28
		ORG	$4000

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�|�P�b�g�v�����^ ���C��						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
PRINTER_MAIN
		call	printom
		LD	A,(ITMODE)
		RST	0
;------------------------------------------------------------------------
PRINTER_TABLE
		DW	PRINTER_CLEAR	; ( 0) �q�`�l�N���A
PINIT		DW	PRINTER_INIT	; ( 1) �C�j�V����
		DW	FADE_OUT	; ( 2) �t�F�[�h�A�E�g
		DW	ALBUM_INIT	; ( 3) �A���o���C�j�V����
		DW	FADE_IN		; ( 4) �t�F�[�h�A�E�g
		DW	ALBUM_PLAY1	; ( 5) �A���o�� �v���C�i�P�j
		DW	ALBUM_PLAY2	; ( 6) �A���o�� �v���C�i�Q�j
PFOUT		DW	FADE_OUT	; ( 7) �t�F�[�h�A�E�g
		DW	TRANSFER_MAIN	; ( 8) �]�����C��
PFDIN		DW	FADE_IN		; ( 9) �t�F�[�h�C��
PPLAY		DW	PRINTER_PLAY	; ( a) �v���C
		dw	key_check	; ( b) �ŏI�̃v�����g�`�F�b�N
PCONT		DW	Test_connect	; ( c)
		DW	Test_datatrans	; ( d)
		DW	Test_inst	; ( e)
PWAIT		DW	Test_wait	; ( f)
PW100		DW	Wait100ms	; (10)
PEROR		DW	Test_error	; (11)
PRETN		DW	FADE_OUT	; (12) �t�F�[�h�A�E�g
		DW	RETURN_GAME	; (13) ���^�[���Q�[��

MAIN_Test_init	EQU	(PINIT-PRINTER_TABLE)/2
P_fout		EQU	(PFOUT-PRINTER_TABLE)/2
P_fdin		EQU	(PFDIN-PRINTER_TABLE)/2
P_play		EQU	(PPLAY-PRINTER_TABLE)/2
P_cont		EQU	(PCONT-PRINTER_TABLE)/2
MAIN_Test_wait	EQU	(PWAIT-PRINTER_TABLE)/2
MAIN_Wait100ms	EQU	(PW100-PRINTER_TABLE)/2
MAIN_Test_error	EQU	(PEROR-PRINTER_TABLE)/2
P_retn		EQU	(PRETN-PRINTER_TABLE)/2


;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x		�v�����g���̂n�`�l�Z�b�g				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;	���̕����͂������������D���Ɉړ]���܂����B
;;;;;;;;prnomdt
;;;;;;;;		db	050h,010h,014h,001h
;;;;;;;;		db	050h,018h,016h,001h
;;;;;;;;		db	050h,020h,018h,001h
;;;;;;;;		db	050h,028h,01ah,001h
;;;;;;;;		db	050h,030h,01ch,001h
;;;;;;;;		db	050h,038h,01eh,001h
;;;;;;;;		db	050h,040h,020h,001h
;;;;;;;;		db	050h,048h,020h,021h
;;;;;;;;		db	050h,050h,038h,001h
;;;;;;;;		db	050h,058h,03ah,001h
;;;;;;;;;
;;;;;;;;		db	050h,00eh,014h,001h
;;;;;;;;		db	050h,016h,016h,001h
;;;;;;;;		db	050h,01eh,018h,001h
;;;;;;;;		db	050h,026h,01ah,001h
;;;;;;;;		db	050h,030h,046h,001h
;;;;;;;;		db	050h,038h,048h,001h
;;;;;;;;		db	050h,040h,020h,001h
;;;;;;;;		db	050h,048h,022h,001h
;;;;;;;;		db	04eh,052h,03ch,001h
;;;;;;;;		db	04eh,05ah,03eh,001h
;;;;;;;;;
;;;;;;;;		db	050h,010h,014h,001h
;;;;;;;;		db	050h,018h,016h,001h
;;;;;;;;		db	050h,020h,018h,001h
;;;;;;;;		db	050h,028h,01ah,001h
;;;;;;;;		db	050h,030h,01ch,001h
;;;;;;;;		db	050h,038h,01eh,001h
;;;;;;;;		db	051h,040h,022h,021h
;;;;;;;;		db	051h,048h,022h,001h
;;;;;;;;		db	050h,051h,03ch,001h
;;;;;;;;		db	050h,059h,03eh,001h
;;;;;;;;;
;;;;;;;;		db	050h,011h,014h,001h
;;;;;;;;		db	050h,019h,016h,001h
;;;;;;;;		db	050h,021h,018h,001h
;;;;;;;;		db	050h,029h,01ah,001h
;;;;;;;;		db	04eh,030h,01ch,001h
;;;;;;;;		db	04eh,038h,01eh,001h
;;;;;;;;		db	050h,040h,022h,021h
;;;;;;;;		db	050h,048h,020h,021h
;;;;;;;;		db	050h,050h,038h,001h
;;;;;;;;		db	050h,058h,03ah,001h
;;;;;;;;;
prncmpd
		db	040h,000h
;
prnclcd
		db	001h,0ffh
;
;
printom
		ld	a,(ITMODE)
		cp	P_play+3
		jr	c,printom_end
;
		cp	MAIN_Test_error
		jr	nc,printom_end
;
		ld	b,000
		ld	a,(print_timer)
		and	001
		jr	nz,printom_030
;
		ld	a,(print_muki)
		ld	c,a
		ld	hl,prnclcd
		add	hl,bc
		ld	a,(print_xpos)
		add	a,(hl)
		ld	(print_xpos),a
		ld	hl,prncmpd
		add	hl,bc
		cp	(hl)
		jr	nz,printom_030
;
		inc	c
		ld	a,c
		and	1
		ld	(print_muki),a
;
printom_030
		ld	hl,print_timer
		inc	(hl)
		ld	a,(hl)
		and	018h
		ld	c,a
		sla	a
		sla	a
		add	a,c
		ld	c,a
		ld	hl,prnomdt
		add	hl,bc
		ld	de,OAM
		ld	c,10
;
printom_050
		ld	a,(hli)
		ld	(de),a
		inc	de
;
		ld	a,(print_xpos)
		add	a,(hl)
		ld	(de),a
		inc	hl
		inc	de
;
		ld	a,(hli)
		ld	(de),a
		inc	de
;
		ld	a,(hli)
		ld	(de),a
		inc	de
;
		dec	c
		jr	nz,printom_050
;
printom_end
		ret
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�t�F�[�h�A�E�g							x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
FADE_OUT
		CALL	FDIN		; FDIN �����ǃt�F�[�h�A�E�g

		LD	A,(SBHR)
		CP	$04
		RET	NZ

		JP	ITMODE_INC

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�t�F�[�h�C��							x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
FADE_IN
		CALL	FDOUT		; FDOUT �����ǃt�F�[�h�C��

		LD	A,(SBHR)
		CP	$04
		RET	NZ

		JP	ITMODE_INC

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�|�P�b�g�v�����^ �q�`�l�N���A					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
PRINTER_CLEAR
		LD	BC,printer_ram_end-chradr+1	; �J�E���^
		LD	HL,chradr
PRNCL_100
		XOR	A
		LD	(HLI),A
		DEC	BC
		LD	A,C
		OR	B
		JR	NZ,PRNCL_100
;------------------------------------------------------------------------
		LD	HL,Yubi_xpos_data
		LD	A,(HL)
		LD	(YUBIXPS),A
		LD	HL,Yubi_ypos_data
		LD	A,(HL)
		LD	(YUBIYPS),A
		LD	A,$01
		LD	(MSGFIRST),A

		LD	A,$03		;�T�E���h�{�����[��������
		LD	(SLEVEL),A	;
		LD	A,$30		;
		LD	(SLEVEL+1),A	;
;------------------------------------------------------------------------

;////////// �v�����^�ւ̑��M�̂��߂̏������@//////////
		CALL	SioInitialize
;//////////�@SIO���荞�݂����@///////////
		ld	a,%00001001	; ���荞�݋��t���O�Z�b�g(v-blank & sio)
		ld	(IE),a
;/////////////////////////////////////////////////////

		JP	ITMODE_INC

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�|�P�b�g�v�����^ �C�j�V����					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
PRINTER_INIT
		XOR	A
		LD	(SBHR),A
;------------------------------------------------------------------------
		CALL	Test_init

		JP	ITMODE_INC

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�A���o�� �C�j�V����						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;------------------------------------------------------------------------
;	�A�h���X�f�[�^
;------------------------------------------------------------------------
Photo_address_data			; �P���ڂ͕K���B���Ă���
		DW	$98e1,$98e5,$98ec,$98f0
		DW	$9961,$9965,$996c,$9970
		DW	$99e1,$99e5,$99ec,$99f0
;========================================================================

ALBUM_INIT
		CALL	LCDC_OFF	; �k�b�c�b �X�g�b�v

;------------------------------------------------------------------------
;	�L�����N�^�[
;------------------------------------------------------------------------
;�i�a�f�j
		LD	A,$35		; clza.cgx
		LD	BC,$200		; �]����
		LD	HL,$4000+1700H
		LD	DE,CHR_VRAM_ADRS+1000H
		CALL	CAMERA_CHR_TRAN

		LD	A,$0C		; clz1.cgx
		CALL	Char_bank_set	; �L�����N�^�[�o���N�Z�b�g
		LD	BC,$40		; �]����
		LD	HL,$4000+17C0H
		LD	DE,CHR_VRAM_ADRS+17C0H
		CALL	CAMERA_CHR_TRAN	; �x�^
;�i�a�f���n�a�i�j
		LD	A,$0C		; clz1.cgx
		CALL	Char_bank_set	; �L�����N�^�[�o���N�Z�b�g
		LD	BC,$300		; �]����
		LD	HL,$4000+0A00H
		LD	DE,CHR_VRAM_ADRS+0A00H
		CALL	CAMERA_CHR_TRAN	; ��󁕐��������b�Z�[�W���_

		LD	A,$35		; clza.cgx
		LD	BC,$200		; �]����
		LD	HL,$6000+0B00H
		LD	DE,CHR_VRAM_ADRS+0D00H
		CALL	CAMERA_CHR_TRAN	; ���b�Z�[�W
;�i�n�a�i�j
		LD	A,$35		; clz9.cgx
		LD	BC,$500		; �]����
		LD	HL,$4000+1200H
		LD	DE,CHR_VRAM_ADRS
		CALL	CAMERA_CHR_TRAN

;------------------------------------------------------------------------
;	�X�N���[��
;------------------------------------------------------------------------

		LD	A,:ALBUM_INIT	; ���^�[���o���N
		LD	(WORKF),A
		LD	A,:Photo_scr	; �f�[�^�o���N
		LD	HL,Photo_scr
		CALL	CAMERA_SCR_TRAN

		CALL	PHOTO_CHECK	; �ʐ^�B�������`�F�b�N
		CALL	MESSAGE_CHECK	; ���b�Z�[�W����ׂ������`�F�b�N

;------------------------------------------------------------------------
;	�J���[
;------------------------------------------------------------------------

;;;;;;;		LD	A,:Photo_col	; �f�[�^�o���N
		LD	BC,$0080	; �]����
		LD	HL,Photo_col
		LD	DE,CGWORK
		CALL	CAMERA_COL_TRAN

;------------------------------------------------------------------------
;;;;;;		LD	A,(LCDCB)	; �n�a�i �a�f �n�m �k�b�c�b �X�^�[�g
		LD	A,%11000111	; �n�a�i �a�f �n�m �k�b�c�b �X�^�[�g
		LD	(LCDCB),A
		LD	(LCDC),A
		XOR	A
		LD	(SBHR),A

		JP	ITMODE_INC

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	 �J�������p �J���[�]��						x
;x----------------------------------------------------------------------x
;x	    �d�m�s�q�x							x
;x		�a         �F �]����					x
;x		�g         �F �f�[�^�A�h���X �g�h�f�g�i  �h  �j		x
;x		�k         �F �f�[�^�A�h���X �k�n�v  �i  �h  �j		x
;x		�c         �F �b�f�v�n�q�j�A�h���X �g�h�f�g�i�]����j	x
;x		�d         �F �b�f�v�n�q�j�A�h���X �k�n�v  �i  �h  �j	x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CAMERA_COL_TRAN
		LD	A,(CGBFLG)
		AND	A
		RET	Z

		LD	A,$2
		LD	(SVBK),A

		CALL	DATA_MOV

		XOR	A
		LD	(SVBK),A

		RET

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�ʐ^�B�������`�F�b�N						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
PHOTO_CHECK

;====================================================
;	�ł΂��� DEBUG
;====================================================
	LD	A,(HIMI2)
	AND	A
	JR	Z,ALINT_000

	LD	A,%11111111	; �Ƃ肠�����S���B����
	LD	(PHOTOFG),A
	LD	A,%00001111
	LD	(PHOTOFG+1),A
ALINT_000
;====================================================

		LD	BC,$0001	; �Q���ڂ���`�F�b�N
ALINT_100
		LD	HL,Photo_high_data
		ADD	HL,BC
		LD	A,(HL)
		LD	E,A
		LD	D,$0
		LD	HL,PHOTOFG
		ADD	HL,DE
		LD	A,(HL)

		LD	HL,Photo_bit_data
		ADD	HL,BC
		AND	(HL)		; �ʐ^�B�����H
		JR	Z,ALINT_120	; �m�n

		LD	D,$0
		LD	HL,Photo_address_data
		LD	A,C
		SLA	A
		LD	E,A
		ADD	HL,DE
		LD	A,(HLI)
		LD	E,A
		LD	A,(HL)
		LD	H,A
		LD	L,E
		PUSH	HL

		LD	A,$02		; ��
		LD	(HLI),A
		LD	A,$03
		LD	(HLI),A
		LD	A,$04
		LD	(HL),A
		LD	A,L		; ��
		ADD	A,$1E
		LD	L,A
		LD	A,H
		ADC	A,$0
		LD	H,A
		LD	A,$0A
		LD	(HLI),A
		LD	A,$0B
		LD	(HLI),A
		LD	A,$0C
		LD	(HL),A

		POP	HL
		LD	A,(CGBFLG)
		AND	A
		JR	Z,ALINT_120

		LD	A,$01
		LD	(VBK),A		; �o���N�i�P�j�Z�b�g

		LD	A,$02		; ��
		LD	(HLI),A
		LD	(HLI),A
		LD	(HL),A
		LD	A,L		; ��
		ADD	A,$1E
		LD	L,A
		LD	A,H
		ADC	A,$0
		LD	H,A
		LD	A,$02
		LD	(HLI),A
		LD	(HLI),A
		LD	(HL),A

		XOR	A
		LD	(VBK),A		; �o���N�i�O�j�Z�b�g
ALINT_120
		INC	C
		LD	A,C
		CP	12
		JR	NZ,ALINT_100

		RET

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	���b�Z�[�W����ׂ������`�F�b�N					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
MESSAGE_CHECK
		LD	A,(MSGFIRST)
		AND	A
		RET	Z

		LD	HL,$9822	; �擪�A�h���X
		LD	D,$7E		; �ׂ�
MSCHK_100
		LD	A,D
		LD	(HLI),A
		LD	A,L
		AND	%00011111
		CP	%00010010
		JR	NZ,MSCHK_100

		LD	A,L
		CP	$92
		RET	Z		; �I���`�F�b�N

		ADD	A,$10
		LD	L,A
		JR	MSCHK_100

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�A���o�� �v���C�i�P�j						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
ALBUM_PLAY1
		LD	A,(MSGFIRST)
		AND	A		; ���b�Z�[�W����ׂ����H
		JR	Z,ALPLY_100	; �x�d�r

		XOR	A
		LD	(MSGFIRST),A
		LD	A,$2C
		LD	(MSGENO),A
		CALL	MSGCH3
		LD	A,$01		; �E�B���h�E����ɏo��
		LD	(MSGEFG),A
ALPLY_100
		JP	ITMODE_INC


;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�A���o�� �v���C�i�Q�j						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
ALBUM_PLAY2
		LD	A,(MSGEFG)
		AND	A
		RET	NZ

		CALL	YUBI_KEYIN	; �j�d�x�`�F�b�N
		CALL	YUBI_CHRSET	; �w�L�����Z�b�g
		CALL	YUBI_OAMSET	; �w�n�`�l�Z�b�g
		RET


;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�j�d�x�`�F�b�N							x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;
;	�ʐ^�m���D YUBIPOS �Ή��\
;
;	( 1 )	( 2 )	( 7 )	( 8 )
;	  0	   1	  3	  4
;	( 3 )	( 4 )	( 9 )	( 10 )
;	  5	  6	  7	  8
;	( 5 )	( 6 )	( 11 )	( 12 )
;	  9	  a	  b	  c
;
;------------------------------------------------------------------------
Yubi_xpos_data
		DB	$20,$40,$78,$98
		DB	$20,$40,$78,$98
		DB	$20,$40,$78,$98
Yubi_ypos_data
		DB	$50,$50,$50,$50
		DB	$70,$70,$70,$70
		DB	$90,$90,$90,$90
Photo_bit_data
		DB	%00000001,%00000010,%01000000,%10000000
		DB	%00000100,%00001000,%00000001,%00000010
		DB	%00010000,%00100000,%00000100,%00001000
Photo_high_data
		DB	0,0,0,0
		DB	0,0,1,1
		DB	0,0,1,1
Photo_number_data
		DB	0, 1, 6, 7
		DB	2, 3, 8, 9
		DB	4, 5,10,11
;========================================================================

YUBI_KEYIN
		LD	A,(YUBIMOD)
		AND	A
		RET	NZ

;------------------------------------------------------------------------
;	�a�{�^�� �`�F�b�N
;------------------------------------------------------------------------
		LD	A,(KEYA2)
		AND	A
		RET	Z
		BIT	5,A		; �a�{�^�� �n�m�H
		JR	Z,ALBPL_100	; �m�n

		ld	a,013h		;�m�r�n
		ld	(sound1),a
		LD	A,P_retn	; �Q�[���ɖ߂�
		LD	(ITMODE),A
		XOR	A
		LD	(SBHR),A
		RET

;------------------------------------------------------------------------
;	���E�L�[ �`�F�b�N
;------------------------------------------------------------------------
ALBPL_100
		BIT	1,A
		JR	Z,ALBPL_200
					; ���L�[�n�m
		LD	A,(YUBIPOS)
		AND	A
		JR	Z,ALBPL_110

		DEC	A
		JR	ALBPL_500
ALBPL_110
		LD	A,11
		JR	ALBPL_500
;------------------------------------------------------------------------
ALBPL_200
		BIT	0,A
		JR	Z,ALBPL_300
					; �E�L�[�n�m
		LD	A,(YUBIPOS)
		CP	11
		JR	Z,ALBPL_210

		INC	A
		JR	ALBPL_500
ALBPL_210
		XOR	A
		JR	ALBPL_500

;------------------------------------------------------------------------
;	�㉺�L�[ �`�F�b�N
;------------------------------------------------------------------------
ALBPL_300
		BIT	2,A
		JR	Z,ALBPL_400
					; ��L�[�n�m
		LD	A,(YUBIPOS)
		CP	4
		JR	C,ALBPL_310

		SUB	4
		JR	ALBPL_500
ALBPL_310
		ADD	A,8
		JR	ALBPL_500
;------------------------------------------------------------------------
ALBPL_400
		BIT	3,A
		JR	Z,ALBPL_600
					; ���L�[�n�m
		LD	A,(YUBIPOS)
		CP	8
		JR	NC,ALBPL_410

		ADD	A,4
		JR	ALBPL_500
ALBPL_410
		SUB	8
		JR	ALBPL_500
;------------------------------------------------------------------------
ALBPL_500
		LD	(YUBIPOS),A

		LD	D,$0
		LD	E,A
		LD	HL,Yubi_xpos_data
		ADD	HL,DE
		LD	A,(HL)
		LD	(YUBIXPS),A
		LD	HL,Yubi_ypos_data
		ADD	HL,DE
		LD	A,(HL)
		LD	(YUBIYPS),A
		LD	A,$0A		; �G���[��
		LD	(SOUND1),A	;�m�r�n

		RET

;------------------------------------------------------------------------
;	���������āA�`�{�^���� �v�����g�A�E�g�H
;------------------------------------------------------------------------
ALBPL_600
		LD	A,(KEYA2)
		BIT	4,A
		ret	z		; �`�{�^�����������@�H
					; Yes !!
		LD	B,$0
		LD	A,(YUBIPOS)
		LD	C,A
		LD	D,A
		LD	HL,Photo_high_data
		ADD	HL,BC
		LD	A,(HL)
		LD	C,A
		LD	HL,PHOTOFG
		ADD	HL,BC
		LD	A,(HL)

		LD	C,D
		LD	HL,Photo_bit_data
		ADD	HL,BC
		AND	(HL)		; �ʐ^�B�����H
		JR	NZ,ALBPL_610	; �x�d�r

		LD	A,$1D		; �G���[��
		LD	(SOUND1),A	;�m�r�n
		LD	A,$ff		; �G���[�ʐ^�m���D
		JR	ALBPL_620
ALBPL_610
		ld	a,013h
		ld	(sound1),a	;�m�r�n
		LD	HL,Photo_number_data
		ADD	HL,BC
		LD	A,(HL)
ALBPL_620
		LD	(PHOTONO),A	; �ʐ^�m���D
		LD	HL,YUBIMOD
		INC	(HL)
		XOR	A
		LD	(YUBIFCT),A
		RET

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�w�L�����N�^�[�Z�b�g						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
Yubi_timer_data
		DB	10	; (0)�_�~�[
		DB	8	; (1)
		DB	8	; (2)
;
YUBI_CHRSET
		LD	A,(YUBIMOD)
		AND	A
		RET	Z

		LD	D,$0
		LD	E,A
		LD	HL,Yubi_timer_data
		ADD	HL,DE
		LD	A,(YUBIFCT)
		CP	(HL)
		JR	Z,YBCST_100

		INC	A
		LD	(YUBIFCT),A
		RET
YBCST_100
		XOR	A
		LD	(YUBIFCT),A
		LD	HL,YUBIMOD
		INC	(HL)
		LD	A,(HL)
		CP	3
		RET	NZ

		XOR	A
		LD	(YUBIMOD),A
		LD	(SBHR),A
		LD	A,(PHOTONO)
		CP	$ff
		RET	Z

		JP	ITMODE_INC

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�w�n�`�l�Z�b�g							x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;------------------------------------------------------------------------
;	�w�n�`�l�f�[�^
;------------------------------------------------------------------------
YUBI_OAM_DATA
		DB	$00,$00,$40,$04
		DB	$00,$08,$42,$04

		DB	$01,$01,$40,$04
		DB	$01,$09,$42,$04

		DB	$03,$02,$40,$04
		DB	$03,$0a,$42,$04
;========================================================================

YUBI_OAMSET
		LD	A,(YUBIMOD)
		SLA	A
		SLA	A
		SLA	A
		LD	E,A
		LD	D,$0
		LD	HL,YUBI_OAM_DATA
		ADD	HL,DE
		LD	DE,OAM
		LD	C,$02
YUBI_OMST_100
		LD	A,(YUBIYPS)
		ADD	A,(HL)
		LD	(DE),A
		INC	DE
		INC	HL
		LD	A,(YUBIXPS)
		ADD	A,(HL)
		LD	(DE),A
		INC	DE
		INC	HL
		LD	A,(HLI)
		LD	(DE),A
		INC	DE
		LD	A,(HLI)
		LD	(DE),A
		INC	DE
		DEC	C
		JR	NZ,YUBI_OMST_100
		RET


;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�]�����C��							x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
TRANSFER_MAIN
		CALL	LCDC_OFF	; �k�b�c�b �X�g�b�v

		CALL	CHR_TRANSFER	; �L�����N�^�[
		CALL	SCR_TRANSFER	; �X�N���[��
		CALL	COL_TRANSFER	; �J���[

;------------------------------------------------------------------------
;;;;;;		LD	A,(LCDCB)	; �n�a�i �a�f �n�m �k�b�c�b �X�^�[�g
		LD	A,%11000111	; �n�a�i �a�f �n�m �k�b�c�b �X�^�[�g
		LD	(LCDCB),A
		LD	(LCDC),A
		XOR	A
		LD	(SBHR),A

		JP	ITMODE_INC

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�L�����N�^�[�]��						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CHR_TRANSFER
		LD	A,(PHOTONO)
		AND	A		; �J�������H
		JR	NZ,CHR_TRAN_100	; �m�n

		LD	A,(PHOTOFG+1)
		AND	%10000000
		JR	Z,CHR_TRAN_100

		LD	A,12		; �s���s�����
CHR_TRAN_100
		LD	B,A
		SLA	A
		ADD	A,B		; �~�R
		LD	D,$0
		LD	E,A
		LD	HL,Chr_data_adrs
		ADD	HL,DE
		PUSH	DE

		LD	A,(HLI)
		LD	C,A
		ld	(chradr+0),a
		LD	A,(HLI)
		LD	B,A
		ld	(chradr+1),a
		LD	A,(HL)		; �a�`�m�j
		ld	(chradr+2),a
		LD	H,B		; �g�h�f�g
		LD	L,C		; �k�n�v
		PUSH	HL

		LD	BC,$800		; �]����
		LD	DE,CHR_VRAM_ADRS+1000H
		CALL	CAMERA_CHR_TRAN	; �a�f

		POP	HL
		LD	BC,$800		; �]����
		ADD	HL,BC
		LD	DE,CHR_VRAM_ADRS+800H
		LD	A,(chradr+2)
		CALL	CAMERA_CHR_TRAN	; �a�f���n�a�i

		POP	DE
		RET

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�X�N���[���]��							x
;x----------------------------------------------------------------------x
;x	    �d�m�s�q�x							x
;x		�c�d       �F �f�[�^�A�h���X�C���f�b�N�X		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
SCR_TRANSFER
		LD	HL,Scr_data_adrs
		ADD	HL,DE

		LD	A,(HLI)
		LD	C,A
		LD	A,(HLI)
		LD	B,A

		LD	A,:SCR_TRANSFER	; ���^�[���o���N
		LD	(WORKF),A
		LD	A,(HL)		; �a�`�m�j
		LD	H,B		; �g�h�f�g
		LD	L,C		; �k�n�v

		CALL	CAMERA_SCR_TRAN

		RET

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�J���[�]��							x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
Photo_color
;;;;;;		DW	$5b7f,$3f0f,$222d,$10eb	; �΃x�[�X
		DW	$5b7f,$2e14,$194e,$08a9	; �Z�s�A��
;========================================================================

COL_TRANSFER
;;;;;;;		LD	A,:Photo_color	; �f�[�^�o���N
		LD	HL,Photo_color
		LD	BC,$0008	; �]����
		LD	DE,CGWORK
		CALL	CAMERA_COL_TRAN

		RET

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�|�P�b�g�v�����^ �v���C						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
plyomdt
		db	078h,070h,00eh,003h
		db	078h,078h,00eh,023h
		db	078h,080h,014h,003h
		db	078h,088h,016h,003h
		db	078h,090h,018h,003h
		db	078h,098h,01ah,003h
;
		db	088h,070h,010h,004h
		db	088h,078h,012h,004h
		db	088h,080h,000h,004h
		db	088h,088h,002h,004h
		db	088h,090h,004h,004h
		db	088h,098h,006h,004h
;
plyomdt_end
;
omcnt		equ	(plyomdt_end-plyomdt)/4
;
;
PRINTER_PLAY
		LD	A,(KEYA2)
		BIT	5,A		; �a�{�^�� �n�m�H
		JR	Z,PRNPL_500	; �m�n

		ld	a,013h
		ld	(sound1),a
;;;;;;;;	LD	A,P_retn	; �Q�[���ɖ߂�
		LD	A,MAIN_Test_init; �A���o���ɖ߂�
		LD	(ITMODE),A
		XOR	A
		LD	(SBHR),A
		RET

;------------------------------------------------------------------------
;	���������āA�`�{�^���� �v�����g�A�E�g�H
;------------------------------------------------------------------------
PRNPL_500
		LD	A,(KEYA2)
		BIT	4,A
		jr	z,PRNPL_600	; �`�{�^�����������@�H
;					; Yes !!
;###################################################
;	�v�����g�A�E�g �C�j�V����������������
;###################################################
		ld	a,013h
		ld	(sound1),a
		xor	a
		ld	(NmiTimer),a
		ld	a,010h
		ld	(FRCNT),a

		call	ITMODE_INC
;
PRNPL_600
		ld	hl,plyomdt
		ld	de,OAM
		ld	c,omcnt
;
PRNPL_650
		ld	a,(hli)
		ld	(de),a
		inc	de
		ld	a,(hli)
		ld	(de),a
		inc	de
		ld	a,(hli)
		ld	(de),a
		inc	de
		ld	a,(hli)
		ld	(de),a
		inc	de
		dec	c
		jr	nz,PRNPL_650
;
		ret
;
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	 ���^�[���Q�[��							x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
RETURN_GAME
		CALL	LCDC_OFF	; �k�b�c�b �X�g�b�v

		LD	A,:RETURN_GAME
		CALL	CAMERA_CHR_RESET
;------------------------------------------------------------------------
		LD	A,(PLXPSL)	; �����N�|�W�V�����ăZ�b�g
		LD	(WPLXPSL),A
		LD	A,(PLYPSL)
		LD	(WPLYPSL),A

		LD	A,GPLAY
		LD	(GMMODE),A
		XOR	A
		LD	(ITMODE),A

		LD	A,$18		; ���b�Z�[�W�A���h�~�^�C��
		LD	(MSOFTM2),A

		LD	A,$07		;�T�E���h�{�����[���グ��
		LD	(SLEVEL),A	;
		LD	A,$70		;
		LD	(SLEVEL+1),A	;

		LD	A,(LCDCB)	; �n�a�i �a�f �n�m �k�b�c�b �X�^�[�g
		LD	(LCDCB),A
		LD	(LCDC),A
		RET


;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	 ���[�h������							x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
ITMODE_INC
		LD	HL,ITMODE
		INC	(HL)
		RET


;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	 �]���f�[�^							x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CHR_VRAM_ADRS	EQU	$8000
SCR_VRAM_ADRS	EQU	$9800

;������������������������������������������������������������������������
;��	�L�����N�^�[�f�[�^ �A�h���X				       ��
;������������������������������������������������������������������������
Chr_data_adrs
		DL	Photo_00_cgx	; �u�T�C�����
		DL	Photo_01_cgx
		DL	Photo_02_cgx
		DL	Photo_03_cgx
		DL	Photo_04_cgx
		DL	Photo_05_cgx
		DL	Photo_06_cgx
		DL	Photo_07_cgx
		DL	Photo_08_cgx
		DL	Photo_09_cgx
		DL	Photo_0a_cgx
		DL	Photo_0b_cgx

		DL	Photo_00p_cgx	; �s���s�����
Chr_data_end

Photo_count	EQU	(Chr_data_end-Chr_data_adrs)/3

;������������������������������������������������������������������������
;��	�X�N���[���[�f�[�^ �A�h���X				       ��
;������������������������������������������������������������������������
Scr_data_adrs
		DL	Photo_00_scr	; �u�T�C�����
		DL	Photo_01_scr
		DL	Photo_02_scr
		DL	Photo_03_scr
		DL	Photo_04_scr
		DL	Photo_05_scr
		DL	Photo_06_scr
		DL	Photo_07_scr
		DL	Photo_08_scr
		DL	Photo_09_scr
		DL	Photo_0a_scr
		DL	Photo_0b_scr

		DL	Photo_00p_scr	; �s���s�����
;==============================================================================
kryoamdt
		db	050h,038h,014h,000h
		db	050h,040h,016h,000h
		db	050h,048h,018h,000h
		db	050h,050h,01ah,000h
		db	050h,058h,008h,000h
		db	050h,060h,00ah,000h
		db	050h,068h,044h,000h
		db	050h,070h,00ch,000h
;
kryoamdt1
		db	078h,070h,00eh,003h
		db	078h,078h,00eh,023h
		db	078h,080h,008h,003h
		db	078h,088h,00ah,003h
		db	078h,090h,044h,003h
		db	078h,098h,02eh,003h
;
		db	088h,070h,010h,004h
		db	088h,078h,012h,004h
		db	088h,080h,000h,004h
		db	088h,088h,002h,004h
		db	088h,090h,004h,004h
		db	088h,098h,006h,004h
;
kryoamdt_end
;
kyomcnt		equ	(kryoamdt_end-kryoamdt)/4
kyomcnt1	equ	(kryoamdt_end-kryoamdt1)/4
;
;
key_check
		ld	a,(KEYA2)
		bit	4,a
		jr	z,key_check_050	; �`�{�^�����������@�H
;					; Yes !!
		xor	a
		ld	(print_timer),a
		ld	(print_muki),a
		ld	a,020h
		ld	(print_xpos),a
		ld	a,022h
		ld	(sound4),a
		call	ITMODE_INC
		jr	key_check_090
;
key_check_050
		bit	5,a
		jr	z,key_check_100	; �a�{�^�����������@�H
;					; Yes !!
		ld	a,P_play
		ld	(ITMODE),a
;
key_check_090
		ld	a,013h
		ld	(sound1),a
;
key_check_100
		ld	de,OAM
		ld	hl,kryoamdt
		ld	c,kyomcnt
		ld	a,(FRCNT)
		inc	a
		ld	(FRCNT),a
		and	030h
		jr	nz,key_check_150
;
		ld	hl,kryoamdt1
		ld	c,kyomcnt1
;
key_check_150
		ld	a,(hli)
		ld	(de),a
		inc	de
		ld	a,(hli)
		ld	(de),a
		inc	de
		ld	a,(hli)
		ld	(de),a
		inc	de
		ld	a,(hli)
		ld	(de),a
		inc	de
		dec	c
		jr	nz,key_check_150
		ret
;
;==============================================================================
Test_init
;;;;;;;;		call	makedata
		xor	a
		ld	(PrinterStatus),a	; �X�e�[�^�X�@�N���A�[
		ld	(PrinterStatus+1),a	; �X�e�[�^�X�@�N���A�[
		ld	a,$13			; ����O��t�B�[�h�@�Z�b�g
		ld	(NumofFeed),a
		ld	a,1
		ld	(NumofSheet),a
		ld	a,%11100100
		ld	(ValueofParette),a
		ld	a,$80
		ld	(Concentration),a

		RET

;
;==============================================================================
retryFromStart
		ld	a,0
		ld	(PhaseNo),a

;;;;;;;;		ld	a,MAIN_Test_init
		ld	a,01dh
		ld	(SOUND1),a
		ld	a,010h
		ld	(FRCNT),a
		ld	a,MAIN_Test_error
		ld	(sseqbak),a

		ld	a,MAIN_Wait100ms
		ld	(sseq),a

		ret


;����������������������������������������������������������������
;����������������������������������������������������������������
;
;		�r�h�n����M  ������
;
;����������������������������������������������������������������
;����������������������������������������������������������������
SioInt_sub
;;;;;;;;		push	af
		ld	a,(SC)
		bit	7,a
		jr	nz,_NoSioInt		;�z���g�ɁH
;
		push	bc
		push	de
		push	hl

		ld	a,1
		ld	(SioIntOccur),a
		call	SioProc

		pop	hl
		pop	de
		pop	bc
_NoSioInt
;;;;;;;;	        pop	af
;;;;;;;;		reti
		RET


;����������������������������������������������������������������
;����������������������������������������������������������������
;
;		SIO WatchDog
;
;����������������������������������������������������������������
;����������������������������������������������������������������
SioWatchDog
		ld	a,(PhaseNo)		;�v�����^�ڑ��H
		cp	1
		ret	nz

		ld	a,(PrinterStatus)	;�v�����^�G���[�H
		cp	$FF
		ret	z

		ld	a,(DuringTransPKT)	;�f�[�^���M���H
		and	a
		ret	nz			;Yes

		ld	hl,PrnTimer
		inc	(hl)
		ld	a,(hl)		
		cp	6			;16.6msec�~6=99.6msec < 100msec
		ret	c
		xor	a
		ld	(hl),a
		ld	(BusyFlag),a
		call	NULTransPRN
		ret


;������������������������������������������������
;
;		�r�h�n�����ݏ���
;
;������������������������������������������������
SioProc
		ld	a,(ForceEnd)
		and	a
		jp	nz,SIOForceEnd

		ld	a,(PhaseNo)
		cp	7
		jp	z,GetPrinterStatus

		ld	a,(PreambleSendF)
		and	a
		jr	nz,_afterHeader
		call	PreambleTrans		;�v���A���u���̑��M
		ret
;-----		jp	SioIntRet

_afterHeader
		ld	a,(HeaderSendF)		;�w�b�_�[���M�I���H
		and	a
		jr	z,_trans

;�����ւ̓f�[�^�p�P�b�g�������Ȃ��A���̑���HeaderSendF���P�ɂȂ���
;���_�Ł@PhaseNo=7�ɂȂ�
		ld	a,(Data1SendEndF)
		and	a
		jr	z,_trans

		ld	a,(CheckSumSendF)
		cp	2
		jr	z,_sendDummy

		call	TransCheckSum		;�`�F�b�N�T���Q�o�C�g���M
		ret
;-----		jr	_ret
_sendDummy
		call	TransDummy		;�_�~�[�f�[�^�Q�o�C�g���M
		ret
;-----		jr	_ret	

;�S�t�F�[�Y������
_trans
		call	Transmit
_ret
		ret
;-----		jp	SioIntRet

;========================================================
PreambleTrans
		ld	hl,BufPointer
		ld	c,(hl)
		inc	(hl)
		ld	b,0
		ld	hl,PreambleData
		add	hl,bc

		ld	a,(hl)
		ld	(SB),a
		ld	a,%00000001		;�����N���b�N
		ld	(SC),a
		ld	a,%10000001		;1 �o�C�g���Mrequest
		ld	(SC),a

		ld	a,(BufPointer)
		cp	2
		ret	nz
		xor	a
		ld	(BufPointer),a
		inc	a
		ld	(PreambleSendF),a
		ret
	

;========================================================
Transmit
		ld	a,(BufPointer)
		ld	c,a
		ld	a,(BufPointer+1)
		ld	b,a

		ld	a,(BufPointer_base)
		ld	l,a
		ld	a,(BufPointer_base+1)
		ld	h,a

		add	hl,bc

		ld	a,(SB)
		ld	(SBbak),a

		ld	a,(hl)
		ld	(SB),a
		ld	l,a
		ld	a,(SioCheckSum_S)
		add	a,l
		ld	(SioCheckSum_S),a
		ld	a,(SioCheckSum_S+1)
		adc	a,0
		ld	(SioCheckSum_S+1),a
	

		ld	a,%00000001		;�����N���b�N
		ld	(SC),a
		ld	a,%10000001		;1 �o�C�g���Mrequest
		ld	(SC),a

		ld	hl,BufPointer
		inc	(hl)
		jr	nz,_skiphi
		inc	hl
		inc	(hl)
_skiphi
		ld	hl,BufPointer
		ld	a,(TransCount)
		cp	(hl)
		jr	nz,_continue	
		inc	hl
		ld	a,(TransCount+1)
		cp	(hl)	
		jr	z,_EndofTrans		;end of Trans
_continue
		ret

_EndofTrans
		ld	hl,HeaderSendF
		ld	a,(hl)
		and	a
		jr	z,_setflag

		ld	hl,Data1SendEndF
_setflag
		inc	(hl)
		ld	a,(FollowingData)
		and	a
		jr	z,SetEndofTrans

		ld	a,(PhaseNo)
		cp	6			;Data End Packet
		jr	z,SetEndofTrans

		ld	hl,Data1SendEndF
		ld	a,(hl)
		and	a
		jr	nz,_datatransend
		xor	a
		ld	(BufPointer),a
		ld	(BufPointer+1),a

		ld	a,(BufPointer_base2)
		ld	(BufPointer_base),a
		ld	a,(BufPointer_base2+1)
		ld	(BufPointer_base+1),a
		ld	a,(TransCount2)
		ld	(TransCount),a
		ld	a,(TransCount2+1)
		ld	(TransCount+1),a
		ret

_datatransend
		call	ForRetry_DataTrans
		ret

SetEndofTrans
		ld	a,(SBbak)
		ld	(PrinterStatus+1),a

SetEndofTrans_data
		ld	a,7			;Get Printer Status
		ld	(PhaseNo),a
		ld	a,1
		ld	(EndofTrans),a
		call	ClearFlags
ForRetry_DataTrans
		ld	a,(TransCount1)
		ld	(TransCount),a
		ld	a,(TransCount1+1)
		ld	(TransCount+1),a
		ld	a,(BufPointer_base1)
		ld	(BufPointer_base),a
		ld	a,(BufPointer_base1+1)
		ld	(BufPointer_base+1),a

		ret

;========================================================
TransCheckSum
		ld	c,a
		ld	b,0
		ld	hl,SioCheckSum_S
		add	hl,bc

		ld	a,(hl)
		ld	(SB),a
		ld	a,%00000001		;�����N���b�N
		ld	(SC),a
		ld	a,%10000001		;1 �o�C�g���Mrequest
		ld	(SC),a

		ld	hl,CheckSumSendF
		inc	(hl)
		ret
;========================================================
TransDummy
		ld	a,(SB)
		ld	(PrinterStatus+1),a	;B is �@��ԍ��H

		xor	a
		ld	(SB),a
		ld	a,%00000001		;�����N���b�N
		ld	(SC),a
		ld	a,%10000001		;1 �o�C�g���Mrequest
		ld	(SC),a

		ld	hl,DummySendF
		inc	(hl)
		ld	a,(hl)
		cp	2
		jr	z,SetEndofTrans_data
		ret




;��������������������������������������������������������
;
;		�v�����^�X�e�[�^�X�̎捞��
;
;��������������������������������������������������������
GetPrinterStatus
		ld	a,(RequestPhaseNo)
		ld	(LastPhaseNo),a

		ld	a,(PrinterStatus)
		ld	(PrinterStatusLast),a
		ld	a,(SB)
		ld	(PrinterStatus),a
		cp	$FF
		jr	nz,_ok

		ld	a,0
		ld	(DuringTransPKT),a		;�N���A
		ld	(PhaseNo),a
;_forceOK
		ld	a,2
		jr	_ng
_ok
		bit	1,a
		jr	z,_ok10
		ld	a,1
		ld	(BusyFlag),a
_ok10
		bit	4,a
		ld	a,0
		ld	(PhaseNo),a
		ld	a,1
		jr	nz,_skip
		ld	(PhaseNo),a
_skip
		inc	a			; a is 2
_ng
		ld	(EndofTrans),a		; EnfofTrans is 2 then over.

		ld	a,(FollowingData)	;During DataTrnasPRN
		and	a
		jr	nz,_skipifDataTrans

		xor	a
		ld	(DuringTransPKT),a
_skipifDataTrans	

SIOForceEnd				;NodataSetting
		ret


;��������������������������������������������������������
;
;		�r�h�n����M  �����݂���̕��A
;
;��������������������������������������������������������
; �G���[���A
;SioErrorRet
;		xor	a
;		ld	(SC),a

; ���한�A
;SioIntRet
;		ret

;
;
;����������������������������������������������������������������
;����������������������������������������������������������������
;
;
;		�v�����^�ʐM�T�u���[�`����
;
;
;����������������������������������������������������������������
;����������������������������������������������������������������

;
;��������������������������������������������������������
;
;	   �r�h�n�͂c�h�r�`�a�k�d  �A�R�l�N�g�s��
;
;��������������������������������������������������������
;
SioHibernate
		xor	a
		ld	(SC),a
		ld	(SB),a


;��������������������������������������������������������
;	�@�@�d���n�m�����̏�����
SioInitialize
		xor	a
		ld	(SB),a
		ld	(SC),a
		ld	(PhaseNo),a
		ld	(SioWatchDogF),a
		dec	a
		ld	(PrinterStatus),a
		ld	(PrinterStatus+1),a
		ld	a,$80
		ld	(Concentration),a	;�Z�x

		call	SioFlagInit
		ret

;��������������������������������������������������������
;	�@�@�p�P�b�g���M�O����
SioFlagInit
		xor	a
		ld	(EndofTrans),a
		ld	(SioIntOccur),a
		ld	(DuringTransPKT),a

;��������������������������������������������������������
;	�@�@�p�P�b�g���M�I����
ClearFlags
		xor	a
		ld	(PreambleSendF),a	; Preamble send end Flag
		ld	(HeaderSendF),a		; Header send end Flag
		ld	(Data1SendEndF),a
		ld	(CheckSumSendF),a
		ld	(DummySendF),a
		ld	(SioCheckSum_S),a
		ld	(SioCheckSum_S+1),a
	        ld	(BufPointer),a
	        ld	(BufPointer+1),a
		ld	(ForceEnd),a
		ld	(BusyFlag),a
		ret


;________________________________________________________________
;����������������������������������������������������������������
;
;		�v�����^�ڑ��m�F
;
;����������������������������������������������������������������
ConnectPRN
		ld	a,(DuringTransPKT)
		and	a
		jr	z,_trans0

		call	CheckEndofTrans
		ret	nc
_trans0
		ld	a,(LastPhaseNo)
		cp	1
		jr	nz,_trans1
		call	CheckEndofTrans
		ret	nc
_trans1
		call	PreparePacket1
		jp	StartStringTrans


;����������������������������������������������������������������
;	�@�@�p�P�b�g�P�ʂ̑��M�I���`�F�b�N
CheckEndofTrans
		ld	a,(EndofTrans)
		cp	2
		jr	c,_TransContinue

		call	WaitNextCall		;���̃t���[����҂�
		jr	nz,_TransContinue

; �p�P�b�g���M�I�����v�����^�X�e�[�^�X�L��
		xor	a

		ld	(PrnTimer),a
		ld	(LastPhaseNo),a
		inc	a
		ld	(PhaseNo),a

		ld	a,(PrinterStatus)
		cp	$ff
		jr	z,_fatal

		bit	0,a			;CheckSum
		jr	nz,_retry	

		bit	1,a			;Busy
		jr	nz,_retry

		and	$f0			;Error?
		jr	z,_ret			;No Error

		xor	a
		ld	(PhaseNo),a
		ld	(LastPhaseNo),a
		ld	a,(PrinterStatus)
		call	SetPrinterErrorNo
		jr	_ret
_retry
		scf				;�đ�
		ret

_Hibernate
		xor	a
		ld	(LastPhaseNo),a		
		dec	a
_fatal
		inc	a
		ld	(PhaseNo),a		;PhaseNo=0
		dec	a
		call	SetPrinterErrorNo
_ret
		and	a
		ret

_TransContinue
		xor	a
		ld	a,$f0			;�v�����^�X�e�[�^�X����/������
		ret


;���̃t���[����҂�
WaitNextCall
		ld	hl,EndofTrans
		ld	a,(hl)
		cp	3
		ret	z			;return flag=z
		inc	a			;       flag=nz
		ld	(hl),a
		ret				;return flag=nz

;________________________________________________________________
;����������������������������������������������������������������
;
;		�v�����^�󎚎w�����M
;
;����������������������������������������������������������������
InstructPRN
		ld	a,(PhaseNo)
		cp	1
		jr	z,_ok
		cp	2
		jr	z,_ok
		and	a
		ld	a,$ff
		ret	z
_forced_return
		ld	a,$f0			;�v�����^�X�e�[�^�X����/������
		ret
_ok
		ld	a,(BusyFlag)
		and	a
		jr	nz,_forced_return
		ld	a,(DuringTransPKT)
		and	a
		jr	z,_trans0
		call	CheckEndofTrans
		ret	nc
_trans0
		ld	a,(LastPhaseNo)
		cp	2
		jr	nz,_trans1
		call	CheckEndofTrans
		ret	nc
_trans1

		ld	a,(PrinterStatus)
		cp	$ff
		jp	z,SetPrinterErrorNo	;�G���[

_prepare
		call	PreparePacket2
		jp	StartStringTrans

;________________________________________________________________
;����������������������������������������������������������������
;
;		�f�[�^�p�P�b�g���M
;		hl <- Data Address
;		a  <- Line Counter
;����������������������������������������������������������������
DataTransPRN
		ld	c,a

		ld	a,(PhaseNo)
		and	a
		ld	a,(PrinterStatus)
		jp	z,SetPrinterErrorNo
_send
		ld	a,(PhaseNo)
		cp	1
		jr	z,_ok
		cp	3
		jr	z,_ok
		ld	a,$f0			;�v�����^�X�e�[�^�X����/������
		ret
_ok
		ld	a,(DuringTransPKT)
		and	a
		jr	nz,_CheckEndofTrans

;�ŏ��̂P��̂�
		ld	a,c
		inc	a
		ld	(LineCount),a		;END OF DATA�̂��߂Ɂ{�P

		ld	a,l
		ld	(PrnDataAddress),a
		ld	a,h
		ld	(PrnDataAddress+1),a
;
		ld	a,<scrbuf
		ld	(scradr),a
		ld	a,>scrbuf
		ld	(scradr+1),a

		ld	a,(PrinterStatus)
		cp	$ff
		jp	z,SetPrinterErrorNo	;�G���[


_send01
;�ォ��~��Ă���͍̂ŏ��̂P��̂�

		ld	a,(CompressF)
		ld	(CompressFReal),a
		and	a
		jr	z,_normal0

		ld	a,(LineCount)
		dec	a
		dec	a

;;;;;;;;		push	af
		ld	c,a
		ld	b,0
		push	hl
		ld	hl,CompressFtbl
		add	hl,bc
		ld	a,(hl)
;;;;;;;;		pop	hl
		ld	(CompressFReal),a

;;;;;;;;		pop	af
;;;;;;;;		add	a,a
;;;;;;;;		ld	c,a
		sla	c
		ld	b,0
;;;;;;;;		push	hl
		ld	hl,CompressNum
		add	hl,bc
		ld	a,(hli)
		ld	b,(hl)
		pop	hl
		ld	c,a
	
		jp	_nextData

_normal0
		ld	bc,$0280		;�Ƃ肠�����Œ�
						;HL�̓A�h���X
_nextData
		call	detaset
		call	PreparePacket3
		jp	StartStringTrans

_CheckEndofTrans
		ld	a,(EndofTrans)
		cp	2
		ld	a,$f0			;�v�����^�X�e�[�^�X����/������
		jp	c,_ret

		call	WaitNextCall		;���̃t���[����҂�
		ld	a,$f0			;�v�����^�X�e�[�^�X����/������
		jp	nz,_ret

		ld	hl,LineCount

		ld	a,(PrinterStatus)
		ld	c,a
		and	$f0
		ld	a,c
		jp	nz,_erPacketEnd

		bit	1,a
		jp	nz,_saisou0		;�đ�(BUSY)
		bit	0,a
		jp	nz,_saisou0		;�đ�(CHECKSUM-ERR)

		ld	a,(hl)			;�f�[�^���M�I�����M�ς�?
		and	a
		ld	a,(PrinterStatus)
		jr	z,_end			;yes

		ld	a,(hl)			;�f�[�^���M�I�����M��
		cp	1
		jp	z,_endofRecord

		dec	(hl)			;�J�E���^Over
		ld	a,(PrinterStatus)
		jr	z,_end
_saisou0
		ld	a,(hl)
		cp	1			;�f�[�^���M�I���p�P�b�g�͎���frame
		ld	a,$f0			;�v�����^�X�e�[�^�X����/������
		jp	z,_ret			;wait�@�P-frame

		ld	bc,$0280

		ld	a,(CompressF)
		ld	(CompressFReal),a
		and	a
		jr	z,_normal

		ld	a,(LineCount)
		dec	a
		dec	a

;;;;;;;;		push	af
		ld	c,a
		ld	b,0
		push	hl
		ld	hl,CompressFtbl
		add	hl,bc
		ld	a,(hl)
;;;;;;;;		pop	hl
		ld	(CompressFReal),a

;;;;;;;;		pop	af

;;;;;;;;		add	a,a
;;;;;;;;		ld	c,a
		sla	c
		ld	b,0
;;;;;;;;		push	hl
		ld	hl,CompressNum
		add	hl,bc
		ld	a,(hli)
		ld	b,(hl)
		pop	hl
		ld	c,a
	

_normal
;nextdata
;�Ƃ肠��������͈��k�͍l���Ȃ�

		ld	a,(PrinterStatus)
		bit	1,a
		jp	nz,_saisou1			;�đ�
_send02
		ld	a,(scradr)
		add	a,2*20
		ld	(scradr),a
		ld	a,(scradr+1)
		adc	a,0
		ld	(scradr+1),a
		ld	a,<prnbuf
		ld	(BufPointer_base2),a
		ld	a,>prnbuf
		ld	(BufPointer_base2+1),a
;;;;;;;;		ld	a,(BufPointer_base2)
;;;;;;;;		add	a,$80
;;;;;;;;		ld	(BufPointer_base2),a
;;;;;;;;		ld	a,(BufPointer_base2+1)
;;;;;;;;		adc	a,$02
;;;;;;;;		ld	(BufPointer_base2+1),a
_saisou1
		ld	a,(BufPointer_base2)
		ld	l,a
		ld	a,(BufPointer_base2+1)
		ld	h,a

		jp	_nextData
;end
_erPacketEnd
		push	af
		ld	a,1
		ld	(ForceEnd),a
		pop	af	
		call	SetPrinterErrorNo
_end
		push	af
		xor	a
		ld	(FollowingData),a
		ld	(DuringTransPKT),a
		pop	af
_ret
		ret

_endofRecord
		ld	a,(LastBlock)
		and	a
		ld	a,(PrinterStatus)
		jr	z,_end
		dec	(hl)			;�J�E���^<-0
		call	PreparePacket6
		jp	StartStringTrans
	
;________________________________________________________________
;����������������������������������������������������������������
;
;		�󎚃u���[�N���M
;
;����������������������������������������������������������������
BreakPRN
		ld	a,(PhaseNo)
		cp	1
		jr	z,_ok
		cp	3
		jr	z,_ok
		and	a
		ld	a,$ff
		ret	z
		ld	a,$f0			;�v�����^�X�e�[�^�X����/������
		ret
_ok
		ld	a,(DuringTransPKT)
		and	a
		jr	z,_trans0
		call	CheckEndofTrans
		ret	nc
_trans0
		ld	a,(LastPhaseNo)
		cp	4
		jr	nz,_trans1
		call	CheckEndofTrans
		ret	nc
_trans1
		ld	a,(PrinterStatus)
		cp	$ff
		jp	z,SetPrinterErrorNo	;�G���[

_send03
		call	PreparePacket4
		jp	StartStringTrans


;________________________________________________________________
;����������������������������������������������������������������
;
;		�m�t�k�p�P�b�g���M
;
;����������������������������������������������������������������
NULTransPRN
		ld	a,(PhaseNo)
		cp	1
		jr	z,_ok
		cp	3
		jr	z,_ok
		and	a
		ld	a,$ff
		ret	z
		ld	a,$f0			;�v�����^�X�e�[�^�X����/������
		ret
_ok
		ld	a,(DuringTransPKT)
		and	a
		jr	z,_trans0
		call	CheckEndofTrans
		ret	nc
_trans0
		ld	a,(PrinterStatus)
		cp	$ff
		jp	z,SetPrinterErrorNo	;�G���[

_prepare
		call	PreparePacket5
		jp	StartStringTrans


;________________________________________________________________
;����������������������������������������������������������������
;
;		�L�����N�^�f�[�^���M�̏�����
;		a  <-- RequestedPhaseNo
;		d  <-- Exist Value data
;		hl <-- Start Address
;		bc <-- Transfer Count
;
;����������������������������������������������������������������

InitDataTrans
		ld	(RequestPhaseNo),a	; Requested Phase No
		ld	a,d
		ld	(FollowingData),a	; �󎚎w���A�f�[�^�p�P�b�g

		ld	a,l			; Header/AfterPreamble address
		ld	(BufPointer_base),a
		ld	(BufPointer_base1),a
		ld	a,h
		ld	(BufPointer_base+1),a
		ld	(BufPointer_base1+1),a

		ld	a,c			; Header/AfterPreamble Count
		ld	(TransCount),a
		ld	(TransCount1),a
		ld	a,b
		ld	(TransCount+1),a
		ld	(TransCount1+1),a

		xor	a
		ld	(EndofTrans),a
		call	ClearFlags
		ret


;���v���A���u���f�[�^
PreambleData
		db	$88,$33
		      ; Code            C-sum   Dummy
Packet1		db	$01,$00,$00,$00,$01,$00,$00,$00	;���ڑ��m�F�p�P�b�g
Packet2		db	$02,$00,$04,$00			;���󎚎w���p�P�b�g
Packet3							;���f�[�^�p�P�b�g
Packet6		db	$04,$00,$00,$00,$04,$00,$00,$00	;���f�[�^�I���p�P�b�g
Packet4		db	$08,$00,$00,$00,$08,$00,$00,$00	;���u���[�N�p�P�b�g
Packet5		db	$0f,$00,$00,$00,$0f,$00,$00,$00	;���m�t�k�p�P�b�g
;________________________________________________________________
;����������������������������������������������������������������
;
;		�ڑ��m�F�p�P�b�g�̐���
;
;����������������������������������������������������������������
PreparePacket1
		ld	a,1			; RequestPhaseNo
		ld	d,0			; Only Fixed Data
		ld	hl,Packet1
		ld	bc,8
		jp	InitDataTrans

;________________________________________________________________
;����������������������������������������������������������������
;
;		�󎚎w���p�P�b�g�̐���
;
;����������������������������������������������������������������
PreparePacket2
		ld	a,2
		ld	d,0			; Only This Data
		ld	hl,HeaderWork
		ld	bc,12
		call	InitDataTrans

		ld	hl,Packet2
		ld	de,HeaderWork
		ld	bc,4
		call	move

;		�󎚎w���f�[�^�̍쐬
		ld	de,$0006		;Packettype:2 + Length:4
		ld	a,(NumofSheet)		;����
		ld	(HeaderWork+4),a
		call	_sumadd
		ld	a,(NumofFeed)		;Feed
		ld	(HeaderWork+5),a
		call	_sumadd
		ld	a,(ValueofParette)		;�p���b�g
		ld	(HeaderWork+6),a
		call	_sumadd

		ld	a,(Concentration)		;�Z�x
		ld	(HeaderWork+7),a
		call	_sumadd
		ld	a,e			;���M�`�F�b�N�T��
		ld	(HeaderWork+8),a
		ld	a,d			;���M�`�F�b�N�T��
		ld	(HeaderWork+9),a
		xor	a
		ld	(HeaderWork+10),a	;Dummy1
		ld	(HeaderWork+11),a	;Dummy2
		ret

_sumadd
		add	a,e
		ld	e,a
		ld	a,d
		adc	a,0
		ld	d,a
		ret

;==============================================================================
;		Move Data

move
		ld	a,(hli)
		ld	(de),a
		inc	de
		dec	bc
		ld	a,c
		or	b
		jr	nz,move
		ret

;________________________________________________________________
;����������������������������������������������������������������
;
;		�f�[�^�p�P�b�g�̐���
;		hl <-- Data Address
;		bc <-- Data Count
;
;����������������������������������������������������������������
PreparePacket3
		ld	a,l			; Data Address
		ld	(BufPointer_base2),a
		ld	a,h
		ld	(BufPointer_base2+1),a

		ld	a,c			; Data Count
		ld	(TransCount2),a
		ld	a,b
		ld	(TransCount2+1),a
		push	bc

		ld	a,3
		ld	d,1			; Not Only following Data
		ld	hl,HeaderWork
		ld	bc,4			; Only Header
		call	InitDataTrans

		ld	a,(Packet3)
		ld	(HeaderWork),a
;		�w�b�_�f�[�^�̍쐬
;		���f�[�^�̍쐬
;		���F���O�Ɉ��k�^�񈳏k�̔��f�����A�o�b�t�@�A�h���X��Work�ɃZ�b�g

		ld	a,(CompressFReal)
		ld	(HeaderWork+1),a	; ���k�@or�@�񈳏k
		pop	bc

		ld	a,c
		ld	(HeaderWork+2),a	; �f�[�^��Low
		ld	a,b
		ld	(HeaderWork+3),a	; �f�[�^��High

		ret

;________________________________________________________________
;����������������������������������������������������������������
;
;		�u���[�N�p�P�b�g�̐���
;
;����������������������������������������������������������������
PreparePacket4
		ld	a,4			; RequestPhaseNo
		ld	d,0			; Only Fixed Data
		ld	hl,Packet4
		ld	bc,8
		jp	InitDataTrans
;________________________________________________________________
;����������������������������������������������������������������
;
;		�m�t�k�p�P�b�g�̐���
;
;����������������������������������������������������������������
PreparePacket5
		ld	a,5			; RequestPhaseNo
		ld	d,0			; Only Fixed Data
		ld	hl,Packet5
		ld	bc,8
		jp	InitDataTrans

;________________________________________________________________
;����������������������������������������������������������������
;
;		�f�[�^�I���p�P�b�g�̐���
;
;����������������������������������������������������������������
PreparePacket6
		ld	a,6			; RequestPhaseNo
		ld	d,1			; Only Fixed Data(but for DATA)
		ld	hl,Packet6
		ld	bc,8
		jp	InitDataTrans
		ret

;________________________________________________________________
;����������������������������������������������������������������
;
;		�f�[�^����M��Kick
;
;����������������������������������������������������������������
StartStringTrans
		ld	a,(PhaseNo)		; ���݂�Phase�͂P�H
		cp	1
		jr	z,_ok			; yes
		and	a
		jr	nz,_ng			; 2�ȏ��error

					; Phase0
		ld	a,(RequestPhaseNo)
		cp	1
		jr	z,_ok_connect
						; ���ڑ��Őڑ��m�F�ȊO�̗v��
_ng						; ���炩��Phase��������
		scf
		ret
_ok
		ld	a,(RequestPhaseNo)
		cp	1
		jr	z,_ng			; ���ł�Phase1�ɂȂ��Ă���

		ld	(PhaseNo),a	
_ok_connect

;�v���A���u���̑�P�o�C�g�ڑ��M�F�p�P�b�g���M�̃g���K
_FirstByte
		xor	a
		ld	(EndofTrans),a
		ld	(LastPhaseNo),a
		ld	a,1
		ld	(BufPointer),a
		ld	(DuringTransPKT),a

		ld	a,(PreambleData)
		ld	(SB),a
		ld	a,$01
		ld	(SC),a
		ld	a,$81
		ld	(SC),a
;
		ld	a,$f0			;�v�����^�X�e�[�^�X����/������
		ret
;
;
;
;________________________________________________________________
;����������������������������������������������������������������
;
;		�v�����^�[�G���[�ԍ��̃Z�b�g
;
;����������������������������������������������������������������
SetPrinterErrorNo
		push	af
		ld	a,(PrinterStatus)
		cp	$ff
		jr	z,_next150	; �P�[�u����d���������Ă���@�H
		bit	7,a		; Yes !!
		jr	z,_next100	; �d�r�����Ղ��Ă���@�H
		ld	a,0		; Yes !!
		jr	_next700
_next100
		bit	6,a
		jr	z,_next130	; �g�p���x�͈͈ȊO�@�H
		ld	a,3		; Yes !!
		jr	_next700
_next130
		bit	5,a
		jr	z,_next150	; ���l�܂�����Ă��܂��@�H
		ld	a,2		; Yes !!
		jr	_next700
_next150
		ld	a,(PrinterStatus+1)
		cp	$81
		jr	z,_next170	; �P�[�u�����ڑ�����Ă���@�H
		ld	a,1		; No !!
		jr	_next700
_next170
		ld	a,1
_next700
		ld	(PrinterErrorNo),a
		pop	af
		ret
;
;________________________________________________________________
;����������������������������������������������������������������
;
;		�L�����f�[�^�Z�b�g
;
;����������������������������������������������������������������
detaset
		push	hl
		push	bc
;
		ld	a,(scradr)
		ld	l,a
		ld	a,(scradr+1)
		ld	h,a
		ld	de,prnbuf
;
		ld	c,20*2
;
_loop1
		ld	a,(hli)
		push	hl
		ld	h,000
		sla	a
		rl	h
		sla	a
		rl	h
		sla	a
		rl	h
		sla	a
		rl	h
		ld	l,a
		ld	a,(chradr+1)
		adc	a,h
		ld	h,a
		ld	b,16
;
		call	dtbfset
;
		pop	hl
		dec	c
		jr	nz,_loop1
;
		pop	bc
		pop	hl
		ret


;==============================================================================
Test_connect
		call	ConnectPRN
		cp	$F0
		jr	z,_ret			;wait connect
		cp	$FF			;retry connect
		jr	z,_reterr


		ld	a,(sseq)
		inc	a
		ld	(sseqbak),a

		xor	a
		ld	(DelayNMI6),a
		ld	a,MAIN_Wait100ms
		ld	(sseq),a
_ret	
		ret

_reterr
		ld	a,01dh
		ld	(SOUND1),a
		ld	a,010h
		ld	(FRCNT),a
		ld	a,MAIN_Test_error
		ld	(sseq),a
;;;;;;;;		restseq	sseq
		ret

;
;==============================================================================
Test_datatrans
		ld	a,(PrinterStatus)
		cp	$FF
		jp	z,retryFromStart

		ld	a,(DuringTransPKT)
		and	a
		jr	z,_print

		ld	a,(PhaseNo)
		cp	3
		jr	z,_print
		cp	1
		jr	z,_print
		jp	retryFromStart

_print	

		ld	a,1
		ld	(LastBlock),a
		ld	hl,prnbuf
		ld	a,9
		call	DataTransPRN
		cp	$ff
		jp	z,retryFromStart
		cp	$f0
		ret	z

;;;;;;;;		nextseq	sseq
;;;;;;;;		ret
		JP	ITMODE_INC

;
;==============================================================================
Test_inst
		ld	a,(PrinterStatus)
		cp	$FF
		jp	z,retryFromStart

		ld	a,(DuringTransPKT)
		and	a
		jr	z,_inst

		ld	a,(PhaseNo)
		cp	2
		jr	z,_inst
		cp	1
		jr	z,_inst
		jr	_ret

_inst
		ld	a,(PrinterStatus)
		bit	1,a
		jr	nz,_ret

		call	InstructPRN
		cp	$ff
		jp	z,retryFromStart
		cp	$f0
		ret	z
_end
		ld	a,3
		ld	(PrnTimer),a

		xor	a
		ld	(DelayNMI6),a
		ld	a,MAIN_Wait100ms
		ld	(sseq),a
		ld	a,MAIN_Test_wait
		ld	(sseqbak),a

_ret
		ret

;
;==============================================================================
Test_wait
		ld	a,(PrinterStatus)
		cp	$FF
		jp	z,retryFromStart
		bit	3,a
		jp	nz,_skip
		bit	1,a
		jp	nz,_skip

;;;;;;;;		restseq	sseq

		LD	A,MAIN_Test_init
		LD	(ITMODE),A
		ld	a,002h
		ld	(sound4),a

		xor	a
		ld	(PhaseNo),a
_skip
		ret	

;
;==============================================================================
Wait100ms
		ld	hl,DelayNMI6
		inc	(hl)
		ld	a,(hl)
		cp	6
		jr	c,_ret
		xor	a
		ld	(hl),a
_jump
		ld	a,(sseqbak)
		ld	(sseq),a
_ret
		ret

;
;==============================================================================
errdat1
		db	050h,030h,014h,000h
		db	050h,038h,016h,000h
		db	050h,040h,018h,000h
		db	050h,048h,01ah,000h
		db	050h,050h,024h,000h
		db	050h,058h,026h,000h
		db	050h,060h,028h,000h
		db	050h,068h,02ah,000h
		db	050h,070h,02ch,000h
		db	050h,078h,030h,000h
		db	0ffh
;
errdat2
		db	050h,030h,014h,000h
		db	050h,038h,016h,000h
		db	050h,040h,018h,000h
		db	050h,048h,01ah,000h
		db	050h,050h,024h,000h
		db	050h,058h,026h,000h
		db	050h,060h,028h,000h
		db	050h,068h,02ah,000h
		db	050h,070h,02ch,000h
		db	050h,078h,032h,000h
		db	0ffh
;
errdat3
		db	050h,030h,014h,000h
		db	050h,038h,016h,000h
		db	050h,040h,018h,000h
		db	050h,048h,01ah,000h
		db	050h,050h,024h,000h
		db	050h,058h,026h,000h
		db	050h,060h,028h,000h
		db	050h,068h,02ah,000h
		db	050h,070h,02ch,000h
		db	050h,078h,034h,000h
		db	0ffh
;
errdat4
		db	050h,030h,014h,000h
		db	050h,038h,016h,000h
		db	050h,040h,018h,000h
		db	050h,048h,01ah,000h
		db	050h,050h,024h,000h
		db	050h,058h,026h,000h
		db	050h,060h,028h,000h
		db	050h,068h,02ah,000h
		db	050h,070h,02ch,000h
		db	050h,078h,036h,000h
		db	0ffh
;
erradrd
		dw	errdat1
		dw	errdat2
		dw	errdat3
		dw	errdat4
;
;
Test_error
;;;;;;;;		ld	a,(keyt1)
		LD	A,(KEYA2)
		and	a
		jr	z,Test_error_050	; �����L�[���������@�H
;						; Yes !!
		ld	a,MAIN_Test_init
		ld	(sseq),a
		ld	a,002h
		ld	(sound4),a
		XOR	A
		LD	(SBHR),A
;;;;;;;;		ret
;
Test_error_050
		ld	a,(FRCNT)
		inc	a
		ld	(FRCNT),a
		and	030h
		jr	nz,Test_error_060
;
		ld	a,01dh
		ld	(SOUND1),a
		ret
;
Test_error_060
		ld	a,(PrinterErrorNo)
		sla	a
		add	a,<erradrd
		ld	l,a
		ld	a,>erradrd
		adc	a,000h
		ld	h,a
		ld	e,(hl)
		inc	hl
		ld	d,(hl)
		ld	hl,oam
;
Test_error_100
		ld	a,(de)
		cp	0ffh
		ret	z
;
		ld	(hli),a
		inc	de
		ld	a,(de)
		ld	(hli),a
		inc	de
		ld	a,(de)
		ld	(hli),a
		inc	de
		ld	a,(de)
		ld	(hli),a
		inc	de
		jr	Test_error_100
;
;
;========================================================================
		END
;========================================================================
