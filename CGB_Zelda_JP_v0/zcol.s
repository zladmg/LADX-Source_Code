
		onbankgroup

;************************************************************************
;*									*
;*	�^�C�g��    �F	�b�f�a�[���_					*
;*	�t�@�C����  �F	ZCOL.DMG					*
;*	�������e    �F	�J���[�]��					*
;*	�쐬���t    �F  �P�X�X�W�^�O�U�^�O�S				*
;*									*
;************************************************************************
;
;==============	�o���N�O ================================================
BANK0		GROUP	0
;-------------<	ZCO >----------------------------------------------------
		EXTERN	DATA_MOV,VRAMTR,VRAMTR1
		EXTERN	RBGS
;
;-------------<	ZPL >----------------------------------------------------
		EXTERN	ENDG
;
;==============	�o���N�P ================================================
BANK1		GROUP	1
;-------------<	ZTI >----------------------------------------------------
		EXTERN	GPMA
;
;==============	�o���N�Q�P ==============================================
BANK21		GROUP	021h
;-------------<	ZCOLSUB >------------------------------------------------
		extern	CL_OPBKS2
;
;========================================================================
		PUBALL
		NLIST

BANK21		GROUP	$21

		LIB	ZRAM		; RAM �d�p�t�`�s�d �t�@�C��
		LIB	ZBN		; BG unit no file !

;------------------------------------------------------------------------
		LIST
		KANJI
		isdmg

		org	04000h

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�J���[�]�����C��						x
;x----------------------------------------------------------------------x
;x	    �d�m�s�q�x							x
;x		CGDMAF  �F �]���t���O					x
;x			   10000011					x
;x			   |	 |+----	�a�f	BGCOL_BITFG		x
;x			   |	 +-----	�n�a�i	OBJCOL_BITFG		x
;x			   +-----------	�����]��			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
COLOR_TRAN
		LD	A,(CGDMAF)
		AND	A		; �J���[�]���H
		RET	Z		; �m�n
;------------------------------------------------------------------------
		BIT	$07,A		; �����]���H
		JR	NZ,COLOR_TRAN2	; �x�d�r
;
;------------------------------------------------------------------------
;	�a�f�J���[�f�[�^�]��
;------------------------------------------------------------------------
		AND	BGCOL_BITFG	;�a�f�J���[�f�[�^�]���n�j�H
		JR	Z,COL_TR_500	;	NO -> COL_TR_500
;
;;;;;;;;		LD	DE,CGWORK
;;;;;;;;		LD	HL,BCPS		; �a�f�������ݎw��
		ld	hl,CGWORK
		ld	de,BCPS
		CALL	COLOR_TRAN_SUB
;
;------------------------------------------------------------------------
;	�n�a�i�J���[�f�[�^�]��
;------------------------------------------------------------------------
COL_TR_500
		LD	A,(CGDMAF)
		AND	OBJCOL_BITFG	;�n�a�i�J���[�f�[�^�]���n�j�H
		JR	Z,COL_TR_800	;	no -> COL_TR_800
;
;;;;;;;;		LD	DE,CGWORK+$40
;;;;;;;;		LD	HL,OCPS		; �n�a�i�������ݎw��
		ld	hl,CGWORK+40h
		ld	de,OCPS
		CALL	COLOR_TRAN_SUB
COL_TR_800
		XOR	A
		LD	(CGDMAF),A	; �t���O�N���A
;------------------------------------------------------------------------
COL_TR_900
		RET

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�J���[�]�����C���Q�i�����]���j					x
;x----------------------------------------------------------------------x
;x	    �d�m�s�q�x							x
;x		COLOFS	�F �]���I�t�Z�b�g�i���p���b�g�ڂ���]���H�j	x
;x			   �i��j�J���[�p���b�g�m�n�D�i�s�j -->  �Q	x
;x				 �p���b�g�f�[�^�m�n�D�i��j -->  �R	x
;x				 �Q���S�i��j�{�R���P�P�i�O���g�j	x
;x		COLLNG	�F �]�������i�p���b�g���j			x
;x			    (���j���ۂ̓]���ʂ�	�]���������Q�i�o�C�g�j	x
;x		CGDMAF  �F �]���t���O					x
;x			   00000011					x
;x				 |+----	�a�f	BGCOL_BITFG		x
;x				 +-----	�n�a�i	OBJCOL_BITFG		x
;x----------------------------------------------------------------------x
;x	 (���j�a�f�Ƃn�a�i�𓯎��ɂ͓]���ł��Ȃ�			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
COLOR_TRAN2
		LD	A,%10000000	; ����������
		LD	HL,COLOFS
		LD	E,(HL)
		SLA	E
		OR	E

		LD	B,A
		LD	A,(CGDMAF)
		AND	BGCOL_BITFG
		LD	A,B		; �n�a�i�J���[�f�[�^�]���H
		JR	Z,COL_TR2_010	; �x�d�r

		LD	(BCPS),A	; �a�f�������ݎw��
		LD	BC,BCPD		; �a�f���������݃f�[�^
		LD	HL,CGWORK
		JR	COL_TR2_020
COL_TR2_010
		LD	(OCPS),A	; �n�a�i���������ݎw��
		LD	BC,OCPD		; �n�a�i���������݃f�[�^
		LD	HL,CGWORK+0040H
;;;;;;		LD	HL,CGWORK
COL_TR2_020
		LD	D,$0
		ADD	HL,DE
		ld	e,c
		ld	d,b
;;;;;;;;		LD	D,H		; �]�����A�h���X�i�g�h�f�g�j
;;;;;;;;		LD	E,L		;     �h        �i�k�n�v�j
;;;;;;;;		LD	H,B		; HL <-- BC
;;;;;;;;		LD	L,C
		LD	A,(COLLNG)
		SLA	A
		LD	B,A		; ��

		CALL	COL_TR_SUB_100	; �f�[�^�]��

		XOR	A
		LD	(CGDMAF),A	; �t���O�N���A
		RET

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�J���[�]���T�u���[�`��						x
;x----------------------------------------------------------------------x
;x	  COLOR_TRAN_SUB�i�]���ʌŒ�p �a�f or �n�a�i�j			x
;x	    �d�m�s�q�x							x
;x		�c�d    �F �]�����A�h���X�i CGWORK or CGWORK+$40 �j	x
;x		�g�k    �F �������ݎw��i BCPS or OCPS �j		x
;x----------------------------------------------------------------------x
;x	  COLOR_TRAN_100�i�����]���p�j					x
;x	    �d�m�s�q�x							x
;x		�a      �F �]����					x
;x		�c�d    �F �]�����A�h���X				x
;x		�g�k    �F �������ݎw��i BCPD or OCPD �j		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
COLOR_TRAN_SUB
		LD	B,$40		; �p���b�g���Q�O����
		LD	A,%10000000	; ����������
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
;x	�J���[�q�`�l�Z�b�g						x
;x----------------------------------------------------------------------x
;x	    �d�m�s�q�x							x
;x		COLFLG	�F �p���b�g�m���i BLNKFG �ɑΉ� �j		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
COLOR_SET
		LD	A,(COLFLG)
		AND	A		; �q�`�l�Z�b�g�H
		RET	Z		; �m�n
;------------------------------------------------------------------------
;;;;;;;		CP	RBGST		; �P��ʃZ�b�g�H
;;;;;;;		JR	Z,ROOM_COL_SET	; �x�d�r
		BIT	$07,A		; ����Z�b�g�H
		JP	NZ,SPE_COL_SET	; �x�d�r

		LD	HL,COLOR_ADRS
		LD	B,$0
		DEC	A
		SLA	A
		LD	C,A
		ADD	HL,BC
		LD	A,(HLI)		; �k�n�v
		LD	C,A
		LD	B,(HL)		; �g�h�f�g

		OR	B		; �]������H
		JR	Z,COL_SET_800	; �m�n

		LD	H,B		; �]�����A�h���X
		LD	L,C		;     �h

COLOR_SET_100
		LD	DE,CGWORK	; �]����A�h���X
		LD	BC,$0080	; ��

COLOR_SET_200
		LD	A,(FADEMDFG)
		AND	A		;�t�F�[�h�C������H
		JR	NZ,COL_SET_500	;	YES --> COL_SET_500

		PUSH	BC
		PUSH	DE
		PUSH	HL
		CALL	DATA_MOV	; �f�[�^�]��
		POP	HL
		POP	DE
		POP	BC
COL_SET_500
		LD	A,$002
		LD	(SVBK),A
		CALL	DATA_MOV	; �f�[�^�]��
		XOR	A
		LD	(SVBK),A

		LD	A,COLDMA_BITFG
		LD	(CGDMAF),A	; �]���t���O�Z�b�g
COL_SET_800
		XOR	A
		LD	(COLFLG),A	; �t���O�N���A
;------------------------------------------------------------------------
COL_SET_900
		RET

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�J���[�q�`�l�Z�b�g�i �n��A�_���W���� �j			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
GAME_COLOR_SET
;;;;;;		LD	A,(CGBFLG)
;;;;;;		AND	A		; �J���[�Q�[���{�[�C�H
;;;;;;		RET	Z		; �m�n
;------------------------------------------------------------------------
		CALL	SPECOL_CHECK	; �J���[����Z�b�g�`�F�b�N

		LD	A,(CGDMAF)
		LD	B,A
		LD	A,(COLFLG)
		OR	B		; �J���[����Z�b�g����H
		RET	NZ		; �x�d�r
;------------------------------------------------------------------------
		CALL	MORI_CHECK	; �����̐X�`�F�b�N

		LD	A,(MORIFLG)
		AND	A		; �����̐X�J���[�Z�b�g����H
		RET	NZ		; �x�d�r
;------------------------------------------------------------------------
		LD	A,(ITMODE)
		CP	GPMA		; �Q�[�����X�N���[���H
		JR	Z,GMCOLST_100	; �x�d�r

		LD	A,$01		; �t�F�[�h�C���t���O�n�m
		LD	(FADEMDFG),A
GMCOLST_100
		CALL	ROOM_COL_SET	; �P��ʃJ���[�Z�b�g

		XOR	A		; �t�F�[�h�C���t���O�n�e�e
		LD	(FADEMDFG),A
;------------------------------------------------------------------------
		RET

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�J���[�q�`�l�Z�b�g�i�P��ʐ�p�FCOLFLG���P�̏ꍇ�j		x
;x----------------------------------------------------------------------x
;x	      �n��ł́A�X�N���[�����ɃJ���[���Z�b�g			x
;x	      �_���W�����ł́A��{�I�ɓ�����̂݃J���[���Z�b�g		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
ROOM_COL_SET
		LD	A,(DJFLAG)
		AND	A		; �n��H
		JR	NZ,ROOM_COL_DNJ	; �m�n

;------------------------------------------------------------------------
;	�n��
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
		LD	H,B		; �]�����A�h���X
		LD	L,A		;     �h

;;;;;;;;		CALL	COLOR_SET_100
		call	color_set_kas

;-----<	�����{�n�a�i�p >-------------------------------------------------

		LD	A,(GRNDPT)
		CP	$92		; �����{�G���A�H
		RET	NZ		; �m�n

		LD	HL,CGWORK+007AH
		LD	A,(CL_CZ_3+003EH)
		LD	(HLI),A		; �a�f�V�|�R �� �n�a�i�V�|�P
		LD	A,(CL_CZ_3+003FH)
		LD	(HLI),A
		LD	A,(CL_CZ_3+003AH)
		LD	(HLI),A		; �a�f�V�|�P �� �n�a�i�V�|�Q
		LD	A,(CL_CZ_3+003BH)
		LD	(HLI),A	
		LD	A,(CL_CZ_3+0038H)
		LD	(HLI),A		; �a�f�V�|�O �� �n�a�i�V�|�R
		LD	A,(CL_CZ_3+0039H)
		LD	(HL),A

		RET

;------------------------------------------------------------------------
;	��{�_���W����
;------------------------------------------------------------------------
ROOM_COL_DNJ
		LD	A,(SCRLMK)
		CP	Muki_inout	; ��ʃC�j�V�����H
		RET	NZ		; �m�n
RMCL_DNJ_010
		LD	A,(DNJNNO)
		CP	NEWDJ		; �V�_���W�����H
		JR	NZ,RMCL_DNJ_020	;	NO --> RMCL_DNJ_020
		LD	HL,NEW_DJCOL
;;;;;;;;		JP	COLOR_SET_100
		JP	color_set_kas

RMCL_DNJ_020
		CP	DJMAX		; �Ƃ������A�H
		JR	NC,RMCL_DNJ_HUS	; �x�d�r

		SLA	A
		LD	E,A
		LD	D,$0
		LD	HL,DUN_COL_ADRS

		LD	A,(YKFLAG)
		AND	A		; ���X�N���[����ʁH
		JR	Z,RMCL_DNJ_050	; �m�n

;-----<	���x���W ����ʂQ >----------------------------------------------

		LD	A,(DNJNNO)
		CP	$7		; �k�d�u�d�k�|�W�H
		JR	NZ,RMCL_DNJ_040	; �m�n

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
		LD	A,(HLI)		; �k�n�v
		LD	B,(HL)		; �g�h�f�g
		LD	H,B		; �]�����A�h���X
		LD	L,A		;     �h
RMCL_DNJ_060
;;;;;;;;		JP	COLOR_SET_100
		jr	color_set_kas

;------------------------------------------------------------------------
;	�ƁA���A
;------------------------------------------------------------------------
RMCL_DNJ_HUS
;;;;;;		LD	A,(DNJNNO)
		CP	$10
		JR	NZ,RMCL_HUS_100
		LD	A,(GRNDPT)
		CP	$A3		; �}�����̉ƁH
		JR	NZ,RMCL_HUS_100	; �m�n
		LD	A,(PAPA0FG)
		CP	$001		;�^�����Q�Ă�H
		JR	Z,RMCL_HUS_080	;	YES --> RMCL_HUS_080
		CP	$002		;�^�����Q�Ă�H
		JR	Z,RMCL_HUS_080	;	YES --> RMCL_HUS_080
		LD	A,(TATLEV)
		AND	A		; ����������H
		JR	NZ,RMCL_HUS_100	; �x�d�r
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
;;;;;;;		AND	A		; �����N�����Ă��镞�͗΁H
;;;;;;;		JR	Z,RMCL_HUS_200	; �x�d�r
;;;;;;;
;;;;;;;		LD	HL,CL_ONEMUTYPE0_red	; ��
;;;;;;;		CP	1
;;;;;;;		JR	Z,RMCL_HUS_200
;;;;;;;
;;;;;;;		LD	HL,CL_ONEMUTYPE0_blue	; ��
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
		LD	A,(HLI)		; �k�n�v
		LD	B,(HL)		; �g�h�f�g
		LD	H,B		; �]�����A�h���X
		LD	L,A		;     �h
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
;		��h�̓� �n�a�i�J���[����ւ�
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
;		�������A �n�a�i�J���[����ւ�
;------------------------------------------------------------------------
col_kas_200
		ld	a,(GRNDPT)
		cp	$aa
		jr	nz,col_kas_end
;
		LD	A,(CLOTHFG)
		AND	A			; �����N�����Ă��镞�͗΁H
		JR	Z,col_kas_end		; �x�d�r
;
		LD	HL,Nemu_link_red	; ��
		CP	1
		JR	Z,col_kas_210
;
		LD	HL,Nemu_link_blue	; ��
col_kas_210
		LD	C,$2			; �P�p���b�g
		ld	de,CGWORK+07ch		; �V�|�Q
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
		LD	(COLFLG),A	; �t���O�N���A
		ret

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�J���[�q�`�l�Z�b�g�i����Z�b�g COLFLG��$80 �ȏ�̏ꍇ�j		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
SPE_COL_SET
		LD	A,BGCOL_BITFG	; �]���t���O�Z�b�g�i�a�f�̂݁j
		LD	(CGDMAF),A
		LD	HL,SPE_COL_ADRS
		LD	A,(COLFLG)
		AND	%00111111
		SLA	A
		LD	C,A
		LD	B,$0
		ADD	HL,BC
		LD	A,(HLI)		; �k�n�v
		LD	B,(HL)		; �g�h�f�g
		LD	H,B		; �]�����A�h���X
		LD	L,A		;     �h
		LD	DE,CGWORK	; �]����A�h���X
		LD	BC,$0040	; ��
;
		LD	A,(GMMODE)
		CP	ENDG		; �G���f�B���O�H
		JR	Z,SPE_COL_300	; �x�d�r

		LD	A,(COLFLG)
		BIT	$06,A		; �n�a�i�]���H
		JR	Z,SPE_COL_200	; �m�n

		ADD	HL,BC
		LD	BC,$0010	; ���i�U�C�V�̂݁j
;1998/10/10;		LD	DE,CGWORK+$0040
		LD	DE,CGWORK+$0070
		LD	A,OBJCOL_BITFG	; �]���t���O�Z�b�g�i�n�a�i�̂݁j
		LD	(CGDMAF),A
SPE_COL_200
;;;;;;;		CALL	COLOR_SET_200
		CALL	DATA_MOV	; �f�[�^�]��

		XOR	A
		LD	(COLFLG),A	; �t���O�N���A
		RET

;------------------------------------------------------------------------
;	�G���f�B���O
;------------------------------------------------------------------------
SPE_COL_300
		LD	A,$002
		LD	(SVBK),A
		CALL	DATA_MOV	; �f�[�^�]��
		XOR	A
		LD	(SVBK),A

		LD	A,BGCOL_BITFG	; �]���t���O�Z�b�g�i�a�f�̂݁j
		LD	(CGDMAF),A	; �]���t���O�Z�b�g
		XOR	A
		LD	(COLFLG),A	; �t���O�N���A
		RET

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�J���[�f�[�^ �A�h���X�e�[�u���i �n�� �j				x
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
c_cz_3b		DW	CL_CZ_3b	; (1B) cz3a.col(�������̃��b�z�[�I�o����)
c_cz_e		DW	CL_CZ_e		; (1C) czd.col(�l���̂Ƃ���)
c_cz_5a		DW	CL_CZ_5a	; (1D) cz5a.col
c_ururira	DW	CL_CZ_URURIRA	; (1E) ������W�[����̉Ƃ̑O

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
;x	�n�� �J���[�m���i GRNDPT �ɑΉ� �j				x
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
;x	�J���[�f�[�^ �A�h���X�e�[�u���i �_���W���� �j			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
DUN_COL_ADRS
		DW	CL_DUNGEON_1_0	; (0) �k�d�u�d�k�P
		DW	CL_DUNGEON_2	; (1)     �h    �Q
		DW	CL_DUNGEON_3_3	; (2)     �h    �R
		DW	CL_DUNGEON_4	; (3)     �h    �S
		DW	CL_DUNGEON_5_0	; (4)     �h    �T
		DW	CL_DUNGEON_6	; (5)     �h    �U
		DW	CL_DUNGEON_7_2	; (6)     �h    �V
		DW	CL_DUNGEON_8	; (7)     �h    �W
		DW	CL_DUNGEON_EGG	; (8) �����Ȃ�^�}�S

DUN_COL_ADRS_YOKO
		DW	CL_DUNGEON_1Y	; (0) �k�d�u�d�k�P ���X�N���[��
		DW	CL_DUNGEON_2Y	; (1)     �h    �Q     �h
		DW	CL_DUNGEON_3Y	; (2)     �h    �R     �h
		DW	CL_DUNGEON_4Y	; (3)     �h    �S     �h
		DW	CL_DUNGEON_5Y	; (4)     �h    �T     �h
		DW	CL_DUNGEON_6Y	; (5)     �h    �U     �h
		DW	CL_DUNGEON_7_1	; (6)     �h    �V     �h
		DW	CL_DUNGEON_8Y	; (7)     �h    �W     �h
		DW	CL_DUNGEON_EGG	; (8) �����Ȃ�^�}�S�i�_�~�[�j


;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�J���[�m���f�[�^ �A�h���X�e�[�u���i �ƁA���A �j			x
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
;x	�J���[�f�[�^�A�h���X �e�[�u���i �ƁA���A �j			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
HOUSE_COL_ADRS
c_turi		DW	CL_TURI		; ( 0) �ނ�x�A�}���{���߂��낤
c_idotype0	DW	CL_IDOTYPE0	; ( 1) ��ˌ^ �^�C�v�O
c_idotype1	DW	CL_IDOTYPE1	; ( 2)   �h   �^�C�v�P
c_idotype2	DW	CL_IDOTYPE2	; ( 3)   �h   �^�C�v�Q
c_idotype3	DW	CL_IDOTYPE3	; ( 4)   �h   �^�C�v�R
c_moriburin	DW	CL_MORIBURIN	; ( 5) �����u�����̃A�W�g
c_ietype0	DW	CL_IETYPE0	; ( 6) �ƌ^ �^�C�v�O
c_ietype1	DW	CL_IETYPE1	; ( 7)   �h �^�C�v�P
c_ietype2	DW	CL_IETYPE2	; ( 8)   �h �^�C�v�Q
c_ietype3	DW	CL_IETYPE3	; ( 9)   �h �^�C�v�R
c_ietype4	DW	CL_IETYPE4	; ( a)   �h �^�C�v�S
c_ietype5	DW	CL_IETYPE5	; ( b)   �h �^�C�v�T
c_ietype6	DW	CL_IETYPE6	; ( c)   �h �^�C�v�U
c_ietype7	DW	CL_IETYPE7	; ( d)   �h �^�C�v�V
c_ietype8	DW	CL_IETYPE8	; ( e)   �h �^�C�v�W
c_ietype9	DW	CL_IETYPE9	; ( f)   �h �^�C�v�X
c_ietypeA	DW	CL_IETYPEA	; (10)   �h �^�C�v�`
c_ietypeB	DW	CL_IETYPEB	; (11)   �h �^�C�v�a
c_ietypeC	DW	CL_IETYPEC	; ( 7)   �h �^�C�v�P(�S���q�̕�e)
c_ietypeD	DW	CL_IETYPED	; ( c)   �h �^�C�v�U(������ꃏ������)
c_ietypeE	DW	CL_IETYPEE	; ( 7)   �h �^�C�v�P(�o�i�i��)
c_ietypeF	DW	CL_IETYPEF	; ( 7)   �h �^�C�v�P(�N���X�e�B�[�k�̉�)
c_shiro0	DW	CL_SHIROTYPE0	; (12) �J�i���b�g��
c_shiro1	DW	CL_SHIROTYPE1	; (13) �J�i���b�g��
c_onemu0	DW	CL_ONEMUTYPE0	; (14) �������A
c_onemu1	DW	CL_ONEMUTYPE1	; (15) �������A
c_kao		DW	CL_DUNGEON_6	; (16) �_�a�̓�
c_camera	DW	CL_CAMERA	; (17) �J������
c_turi2		DW	CL_TURI2	; (18) ���̉��̒ނ�I���W
c_idotype4	DW	CL_IDOTYPE4	; (19) �����{�̒n��
c_idotype5	DW	CL_IDOTYPE5	; (1A) ��ˌ^ �^�C�v�O(���ʂ������Y)
c_idotype6	DW	CL_IDOTYPE6	; (1B)   �h   �^�C�v�Q(�q��������)
c_yume		DW	CL_YUMENOHOKORA	; (1C) ���̂ق���
c_manbou	DW	CL_MANBOU	; (1D) �}���{�E�̓��A
c_manuuu	DW	CL_MANUUUU	; (1E) �}���[�̓��A

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
;x	�ƁA���A �J���[�m���i DNJNNO = 0A  GRNDPT �ɑΉ� �j		x
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
;x	�ƁA���A �J���[�m���i DNJNNO = 0E  GRNDPT �ɑΉ� �j		x
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
;x	�ƁA���A �J���[�m���i DNJNNO = 0F  GRNDPT �ɑΉ� �j		x
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
;x	�ƁA���A �J���[�m���i DNJNNO = 10  GRNDPT �ɑΉ� �j		x
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
;x	�ƁA���A �J���[�m���i DNJNNO = 11  GRNDPT �ɑΉ� �j		x
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
;x	�ƁA���A �J���[�m���i DNJNNO = 12  GRNDPT �ɑΉ� �j		x
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
;x	�ƁA���A �J���[�m���i DNJNNO = 13  GRNDPT �ɑΉ� �j		x
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
;x	�ƁA���A �J���[�m���i DNJNNO = 14  GRNDPT �ɑΉ� �j		x
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
;x	�ƁA���A �J���[�m���i DNJNNO = 15  GRNDPT �ɑΉ� �j		x
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
;x	�ƁA���A �J���[�m���i DNJNNO = 16  GRNDPT �ɑΉ� �j		x
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
;x	�ƁA���A �J���[�m���i DNJNNO = 1D  GRNDPT �ɑΉ� �j		x
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
;x	�ƁA���A �J���[�m���i DNJNNO = 1E  GRNDPT �ɑΉ� �j		x
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
;x	�ƁA���A �J���[�m���i DNJNNO = 1F  GRNDPT �ɑΉ� �j		x
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
;x	�J���[����Z�b�g�`�F�b�N					x
;x----------------------------------------------------------------------x
;x	 (���jGRNDNO�i�����m�n�j���`�F�b�N����ꍇ�A			x
;x	      �_���W�����ł́A�X�N���[������O�̕����m�n���A		x
;x	      �n��ł́A�X�N���[�������̕����m�n�������Ă���B	x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
SPECOL_CHECK
		LD	A,(DJFLAG)
		AND	A		; �n��H
		JR	Z,SPEC_CHK_GRND	; �x�d�r

;------------------------------------------------------------------------
;	�_���W����
;------------------------------------------------------------------------
		LD	B,SRE_COL_CNT	; �J�E���^
		LD	HL,SRE_COL_DATA
SPEC_CHK_050
		LD	A,(DNJNNO)
		LD	E,A
		LD	A,(HLI)
		CP	E		; �_���W�����m���H
		JR	NZ,SPEC_CHK_100	; �m�n

		LD	A,(GRNDPT)
		LD	E,A
		LD	A,(HLI)
		CP	E		; �����m���H
		JR	NZ,SPEC_CHK_110	; �m�n

		LD	A,(SCRLMK)
		LD	E,A
		LD	A,(HLI)
		CP	E		; �X�N���[�������H
		JR	NZ,SPEC_CHK_120	; �m�n

		LD	A,(HLI)
		LD	(COLFLG),A	; �J���[�t���O�Z�b�g

		LD	A,E
		CP	Muki_inout	; ��ʃC�j�V�����H
		JR	NZ,SPEC_CHK_900	; �m�n

;---------- �����ɓ]���I

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
		LD	A,(HLI)		; �k�n�v
		LD	B,(HL)		; �g�h�f�g
		LD	H,B		; �]�����A�h���X
		LD	L,A		;     �h

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
;	�n��
;------------------------------------------------------------------------
SPEC_CHK_GRND
		LD	B,SGR_COL_CNT	; �J�E���^
		LD	HL,SGR_COL_DATA
SPGR_CHK_050
		LD	A,(GRNDPT)
		LD	E,A
		LD	A,(HLI)
		CP	E		; �����m���H
		JR	NZ,SPGR_CHK_110	; �m�n

		LD	A,(SCRLMK)
		LD	E,A
		LD	A,(HLI)
		CP	E		; �X�N���[�������H
		JR	NZ,SPGR_CHK_120	; �m�n

		LD	A,(HLI)
		LD	(COLFLG),A	; �J���[�t���O�Z�b�g
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
;x	�J���[����Z�b�g �`�F�b�N�f�[�^					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;-----<	�J���[�f�[�^�A�h���X >-------------------------------------------
SPE_COL_ADRS
;�y �_���W���� �z
spdun0		DW	CL_DUNGEON_1_0	; (80) ���x���P �_�b�V���ŉ󂹂��
spdun1		DW	CL_DUNGEON_1_1	; (81) ���x���P �����
spdun2		DW	CL_DUNGEON_3_3	; (82) ���x���R �_�b�V���ŉ󂹂��
spdun3		DW	CL_DUNGEON_3_1	; (83) ���x���R �����
spdun4		DW	CL_DUNGEON_5_0	; (84) ���x���T ��
spdun5		DW	CL_DUNGEON_5_1	; (85) ���x���T �����
spdun6		DW	CL_DUNGEON_5_3	; (86) ���x���T ���ŉ󂹂��
spdun7		DW	CL_DUNGEON_7_0	; (87) ���x���V �����
spdun8		DW	CL_DUNGEON_7_1	; (88) ���x���V ���̊O�i�{�X�j
spdun9		DW	CL_DUNGEON_7_2	; (89) ���x���V
spdunA		DW	CL_DUNGEON_1_2	; (CA) ���x���P ���{�X(�I�o�p)
spdunB		DW	CL_DUNGEON_4	; (8B) ���x���S
spdunC		DW	CL_DUNGEON_4_1	; (8C) ���x���S �V�W
spdunD		DW	CL_DUNGEON_4_2-$40	; (8d) ���x���S �d�e
spdunE		DW	CL_DUNGEON_5_4-$40	; (8e) ���x���T �{�X����
spdunF		DW	CL_DUNGEON_8	; (CA) ���x���W
spdun10		DW	CL_DUNGEON_2_0-$40	; (D0) ���x���Q�c�{�{�X
spdun11		DW	CL_DUNGEON_6		;���x���U�p���t���u���X���b�g
spdun12		DW	CL_DUNGEON_6_1-$40	;���x���U	�̂��镔������
spdun13		DW	CL_DUNGEON_7_3-$40	;���x���V ���r�����̕���

;�y �n�� �z
spgrd0		DW	CL_CZ_b		; (8b) czb.col
spgrd1		DW	CL_06_1_COL	; (8c) 06col.col(BANK1)
spgrd2		DW	CL_CZ_11	; (8d) cz11.col
spgrd3		DW	CL_CZ_5SP2	; (8e) cz5.col�i����Q�j
spgrd4		DW	CL_CZ_ca	; (8f) czca.col
spgrd5		DW	CL_10_COL	; (90) 10col.col
spgrd6		DW	CL_CZ_5SP	; (91) cz5.col�i����j
spgrd7		DW	CL_08_COL	; (92) 08col.col

;�y ��̐_�a �z
spmnm6		DW	CL_KAO_6F-$40
spmnm7		DW	CL_KAO_7F-$40
spmnm8		DW	CL_KAO_8F-$40

;�y �G���f�B���O �z
ending3		DW	CL_CZ_1		; �l��
ending4		DW	CL_CZ_0		; �X�̃^����
ending5		DW	CL_CZ_3		; �����{�̃}����

;-----<	�_���W�����m���D�i DNJNNO �j>------------------------------------
Level_1		EQU	0
Level_2		EQU	1
Level_3		EQU	2
Level_4		EQU	3
Level_5		EQU	4
Level_6		EQU	5
Level_7		EQU	6
Level_8		EQU	7

Minami		EQU	$16

;-----<	�X�N���[�������i SCRLMK �j>--------------------------------------
Muki_up		EQU	2	; ��
Muki_down	EQU	3	; ��
Muki_left	EQU	1	; ��
Muki_right	EQU	0	; �E
Muki_inout	EQU	4	; �_���W�����A�� �h�m�^�n�t�s

;-----<	�J���[�t���O >---------------------------------------------------
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
;*	�_���W�����p�f�[�^						*
;*	   �� �f�[�^�̓��e ��						*
;*		�_���W�����m���D					*
;*		�����m���D						*
;*		�X�N���[������						*
;*		�J���[�t���O�m���D					*
;************************************************************************

SRE_COL_DATA
;------------------------------------------------------------------
;	�k�d�u�d�k�|�P
;------------------------------------------------------------------
;�i�P�V�j
						; �����
		DB	Level_1,$17,Muki_inout,SP_DUN11
;�i�P�R�j
						; �P�R�|���P�Q
		DB	Level_1,$13,Muki_left ,SP_DUN10
						; �P�R�|���P�S
		DB	Level_1,$13,Muki_right,SP_DUN10
						; �P�R�|���P�V
		DB	Level_1,$13,Muki_down ,SP_DUN11
;�i�P�O�j
						; �P�O�|���P�P
		DB	Level_1,$10,Muki_right,SP_DUN12

;�i�P�b�j
						; �P�b�|���P�c
		DB	Level_1,$1C,Muki_up   ,SP_DUN13

;------------------------------------------------------------------
;	�k�d�u�d�k�|�Q
;------------------------------------------------------------------
;�i�Q�c�j
						; �Q�c�|���Q�a
		DB	Level_2,$2D,Muki_up   ,SP_DUN20

;------------------------------------------------------------------
;	�k�d�u�d�k�|�R
;------------------------------------------------------------------
;�i�T�Q�j
						; �����
		DB	Level_3,$52,Muki_inout,SP_DUN31
;�i�T�P�j
						; �T�P�|���S�e
		DB	Level_3,$51,Muki_up   ,SP_DUN33
						; �T�P�|���T�Q
		DB	Level_3,$51,Muki_down ,SP_DUN31

;------------------------------------------------------------------
;	�k�d�u�d�k�|�S
;------------------------------------------------------------------
;�i�V�W�j
						; �V�W�|���V�V
		DB	Level_4,$78,Muki_left ,SP_DUN40
						; �V�W�|���V�X
		DB	Level_4,$78,Muki_right,SP_DUN40
						; �V�W�|���V�a
		DB	Level_4,$78,Muki_down ,SP_DUN41
;�i�d�e�j
						; �d�e�|���{�X������
		DB	Level_4,$EF,Muki_down ,SP_DUN42

;------------------------------------------------------------------
;	�k�d�u�d�k�|�T
;------------------------------------------------------------------
;�i�`�P�j
						; �����
		DB	Level_5,$A1,Muki_inout,SP_DUN51
;�i�X�e�j
						; �X�e�|���X�c
		DB	Level_5,$9F,Muki_up   ,SP_DUN53
						; �X�e�|���`�O
		DB	Level_5,$9F,Muki_right,SP_DUN51
;�i�X�b�j
						; �X�b�|���X�X
		DB	Level_5,$9C,Muki_up   ,SP_DUN50
						; �X�b�|���X�a
		DB	Level_5,$9C,Muki_left ,SP_DUN50
						; �X�b�|���X�c
		DB	Level_5,$9C,Muki_right,SP_DUN53
;�i�X�T�j
						; �X�T�|���X�U
		DB	Level_5,$95,Muki_right,SP_DUN50
						; �X�T�|���X�`
		DB	Level_5,$95,Muki_down ,SP_DUN53
;�i�W�P�j
						; �K�i
		DB	Level_5,$81,Muki_inout,SP_DUN53
;�i�W�a�j
						; �W�a�|���W�T
		DB	Level_5,$8B,Muki_up   ,SP_DUN54
						; �W�T�|���W�a
		DB	Level_5,$85,Muki_down ,SP_DUN55

;------------------------------------------------------------------
;	�k�d�u�d�k�|�T
;------------------------------------------------------------------
;�i�b�d�j
						; �c�Q�|���b�d
		DB	Level_6,$D2,Muki_up   ,SP_DUN61
						; �b�d�|���b�W
		DB	Level_6,$CE,Muki_up   ,SP_DUN60

;------------------------------------------------------------------
;	�k�d�u�d�k�|�V
;------------------------------------------------------------------
;�i�P�Q�d�j
						; �K�i
		DB	Level_7,$2E,Muki_inout,SP_DUN72
;�i�P�e�W�j
						; �K�i
		DB	Level_7,$F8,Muki_inout,SP_DUN71
;�i�P�O�d�j
						; �����
		DB	Level_7,$0E,Muki_inout,SP_DUN70
;�i�P�O�c�j
						; �P�O�c�|���P�O�X
		DB	Level_7,$0D,Muki_up   ,SP_DUN72
						; �P�O�c�|���P�O�d
		DB	Level_7,$0D,Muki_right,SP_DUN70
;�i�P�O�e�j
						; �P�O�e�|���P�O�a
		DB	Level_7,$0F,Muki_up   ,SP_DUN72
						; �P�O�e�|���P�P�O
		DB	Level_7,$0F,Muki_right,SP_DUN72
						; �P�O�e�|���P�O�d
		DB	Level_7,$0F,Muki_left ,SP_DUN70
;�i�P�P�V�j
						; �P�P�V�|���P�P�R
		DB	Level_7,$17,Muki_up   ,SP_DUN73
						; �P�P�S�[���P�P�R
		DB	Level_7,$14,Muki_left ,SP_DUN73
						; �P�P�R�[���P�P�S
		DB	Level_7,$13,Muki_right,SP_DUN700

;------------------------------------------------------------------
;	�k�d�u�d�k�|�W
;------------------------------------------------------------------
;�i�P�T�S�j
						; �P�T�T�|���P�T�S
		DB	Level_8,$55,Muki_left ,SP_DUN12

;�i�P�T�T�j
						; �P�T�S�|���P�T�T
		DB	Level_8,$54,Muki_right,SP_DUN154

;�i�P�T�b�j
						; �P�T�S�|���P�T�b
		DB	Level_8,$54,Muki_down ,SP_DUN154

;�i�P�S�b�j
						; �P�T�S�|���P�S�b
		DB	Level_8,$54,Muki_up   ,SP_DUN154


;------------------------------------------------------------------
;	��̐_�a
;------------------------------------------------------------------
;�i�U�e�j
						; �V�e�|���U�e
		DB	Minami ,$6F,Muki_up   ,SP_MNM6
;�i�V�e�j
						; �W�e�|���V�e
		DB	Minami ,$7F,Muki_up   ,SP_MNM7

;�i�W�e�j
						; �V�e�|���W�e
		DB	Minami ,$8F,Muki_down  ,SP_MNM8

SRE_COL_END

SRE_COL_CNT	EQU	(SRE_COL_END-SRE_COL_DATA)/4

;************************************************************************
;*	�n��p�f�[�^							*
;*	   �� �f�[�^�̓��e ��						*
;*		�����m���D						*
;*		�X�N���[������						*
;*		�J���[�t���O�m���D					*
;************************************************************************
SGR_COL_DATA
;�i ���t�߁@�j
;						; �R�S�|���S�S
		DB	$44,Muki_down ,SP_GRD0
;						; �R�T�|���R�U
		DB	$36,Muki_right,SP_GRD0
;�i ���܂��t�� �j
;						; �Q�U�|���P�U
		DB	$16,Muki_up   ,SP_GRD1
;						; �P�U�|���Q�U
		DB	$26,Muki_down ,SP_GRD1
;						; �Q�V�|���P�V
		DB	$17,Muki_up   ,SP_GRD1
;						; �P�V�|���Q�V
		DB	$27,Muki_down ,SP_GRD1
;						; �P�W�|���O�W
		DB	$08,Muki_up   ,SP_GRD7
;						; �P�W�|���P�V
		DB	$17,Muki_left ,SP_GRD7
;�i �_�a�t�� �j
;						; �X�a�|���X�b
		DB	$9c,Muki_right,SP_GRD2
;						; �`�e�|���X�e
		DB	$9f,Muki_up   ,SP_GRD3
;						; �X�c�|���X�d
		DB	$9e,Muki_right,SP_GRD6
;�i �� ���k�S������� �t�� �j
;						; �Q�b�|���Q�c
		DB	$2c,Muki_right,SP_GRD4
;�i �R�̓d�b�{�b�N�X�t�� �j
;						; �P�P�|���P�Q
		DB	$12,Muki_right,SP_GRD5
;�i ���@�g���̃I�o�o�̉ƕt�� �j
;						; �V�T�|���U�T
		DB	$65,Muki_up   ,SP_GRD4
SGR_COL_END

SGR_COL_CNT	EQU	(SGR_COL_END-SGR_COL_DATA)/3



;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�����̐X �J���[����Z�b�g�`�F�b�N				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;-----<	�J���[�ւ� �t���[���J�E���^ >------------------------------------
MORI_FRCNT	EQU	11
;========================================================================

MORI_CHECK
		LD	A,(DJFLAG)
		AND	A		; �n��H
		JR	NZ,MORI_CHK_900	; �m�n
;------------------------------------------------------------------------
		LD	B,MORI_COL_CNT	; �J�E���^
		LD	HL,MORI_COL_DATA
MORI_CHK_250
		LD	A,(GRNDPT)
		LD	E,A
		LD	A,(HLI)
		CP	E		; �����m���H
		JR	NZ,MORI_CHK_300	; �m�n

		LD	A,(SCRLMK)
		LD	E,A
		LD	A,(HLI)
		CP	E		; �X�N���[�������H
		JR	NZ,MORI_CHK_310	; �m�n

		LD	A,(HLI)
		LD	(MORIFLG),A
		LD	A,MORI_FRCNT	; �t���[���J�E���^
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
;x	�J���[����Z�b�g �`�F�b�N�f�[�^�i �����̐X �j			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;-----<	�����̐X�h�m�^�n�t�s�i MORIFLG ) >-------------------------------
MORI_IN		EQU	%01000000	; �X�ɓ���
MORI_OUT	EQU	%10000000	; �X����o��
;========================================================================

;------------------------------------------------------------------------
;	�� �f�[�^�̓��e ��
;		�����m���D
;		�X�N���[������
;		�����̐X �J���[�`�F���W�t���O
;------------------------------------------------------------------------
MORI_COL_DATA
						; �i�R�O�|���S�O�j
		DB	$40,Muki_down, MORI_IN
						; �i�S�O�|���R�O�j
		DB	$30,Muki_up  , MORI_OUT
						; �i�S�R�|���S�S�j
		DB	$44,Muki_right,MORI_OUT
						; �i�S�S�|���S�R�j
		DB	$43,Muki_left, MORI_IN
						; �i�V�O�|���W�O�j
		DB	$90,Muki_down, MORI_OUT
						; �i�W�O�|���V�O�j
		DB	$80,Muki_up,   MORI_IN
MORI_COL_END

MORI_COL_CNT	EQU	(MORI_COL_END-MORI_COL_DATA)/3


;;;;;;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;;;;;;x	�����̐X �J���[�`�F���W						x
;;;;;;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;;;;;;------------------------------------------------------------------------
;;;;;;	�J���[�f�[�^�A�h���X
;;;;;;------------------------------------------------------------------------
;;;;;;-----<	�����̐X�h�m >---------------------------------------------------
;;;;;MORIIN_COL_ADRS
;;;;;		DW	CL_MORI_2	; (0) ���ԁi�Q�j
;;;;;		DW	CL_MORI_2+0020H	; (1)      �h
;;;;;		DW	CL_MORI_1	; (2) ���ԁi�P�j
;;;;;		DW	CL_MORI_1+0020H	; (3)      �h
;;;;;		DW	CL_CZ_0		; (4) bg_0.col �����̐X
;;;;;		DW	CL_CZ_0+0020H	; (5)      �h
;;;;;
;;;;;;-----<	�����̐X�n�t�s >-------------------------------------------------
;;;;;MORIOUT_COL_ADRS
;;;;;		DW	CL_MORI_1	; (0) ���ԁi�P�j
;;;;;		DW	CL_MORI_1+0020H	; (1)      �h
;;;;;		DW	CL_MORI_2	; (2) ���ԁi�Q�j
;;;;;		DW	CL_MORI_2+0020H	; (3)      �h
;;;;;		DW	CL_CZ_3		; (4) cz3.col  ���[�x�̑�
;;;;;		DW	CL_CZ_3+0020H	; (5)      �h
;;;;;
;;;;;;------------------------------------------------------------------------
;;;;;;	�J���[�]����A�h���X
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
;;;;;		AND	A		; �J���[�Q�[���{�[�C�H
;;;;;		RET	Z		; �m�n
;;;;;		LD	A,(DJFLAG)
;;;;;		AND	A		; �n��H
;;;;;		RET	NZ		; �m�n
;;;;;		LD	A,(MORIFLG)
;;;;;		AND	A		; �J���[�`�F���W�H
;;;;;		RET	Z		; �m�n
;;;;;;------------------------------------------------------------------------
;;;;;		LD	A,(MORIFCT)
;;;;;		DEC	A
;;;;;		LD	(MORIFCT),A	; ���ʂQ�O�g�`�F���W�H
;;;;;		JR	Z,MORI_COL_050	; �x�d�r
;;;;;		CP	$01		; ��ʂQ�O�g�`�F���W�H
;;;;;		RET	NZ		; �m�n
;;;;;MORI_COL_050
;;;;;		LD	A,(MORIFLG)
;;;;;		BIT	7,A		; �����̐X���o��H
;;;;;		JR	NZ,MORI_COL_100	; �x�d�r
;;;;;;------------------------------------------------------------------------
;;;;;;	�����̐X�h�m
;;;;;;------------------------------------------------------------------------
;;;;;		LD	HL,MORIIN_COL_ADRS
;;;;;		JR	MORI_COL_150
;;;;;;------------------------------------------------------------------------
;;;;;;	�����̐X�n�t�s
;;;;;;------------------------------------------------------------------------
;;;;;MORI_COL_100
;;;;;		LD	HL,MORIOUT_COL_ADRS
;;;;;;------------------------------------------------------------------------
;;;;;MORI_COL_150
;;;;;		LD	A,(MORIFCT)
;;;;;		CP	$01
;;;;;		JR	Z,MORI_COL_160
;;;;;
;;;;;		LD	A,MORI_FRCNT	; �t���[���J�E���^���Z�b�g
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
;;;;;		LD	E,A		; �]����A�h���X�i�k�n�v�j
;;;;;		LD	D,(HL)		;     �h        �i�g�h�f�g�j
;;;;;		POP	HL
;;;;;		ADD	HL,BC
;;;;;		LD	A,(HLI)
;;;;;		LD	H,(HL)		; �]�����A�h���X�i�k�n�v�j
;;;;;		LD	L,A		;     �h        �i�g�h�f�g�j
;;;;;		LD	BC,$0020	; ��
;;;;;
;;;;;		CALL	DATA_MOV	; �f�[�^�]��
;;;;;
;;;;;		LD	A,(MORIFLG)
;;;;;		AND	%00000001
;;;;;		SWAP	A		; 0 or 4*4
;;;;;		LD	(COLOFS),A	; �]���I�t�Z�b�g
;;;;;		LD	A,4*4
;;;;;		LD	(COLLNG),A	; �]������
;;;;;		LD	A,BGCOL_BITFG|$80
;;;;;		LD	(CGDMAF),A	; �]���t���O�i�����]���j
;;;;;
;;;;;		LD	A,(MORIFLG)
;;;;;		INC	A
;;;;;		LD	(MORIFLG),A
;;;;;		AND	%00111111
;;;;;		CP	%00000110	; �X�J���[�`�F���W�I���H
;;;;;		RET	NZ		; �m�n
;;;;;
;;;;;		XOR	A
;;;;;		LD	(MORIFLG),A	; �t���O�N���A
;;;;;		RET
;;;;;
;;;;;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�Â����� �J���[�Z�b�g�i CALL by FADECK )			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
Dark_colset_sub
;------------------------------------------------------------------------
;	��{�J���[�Z�b�g
;------------------------------------------------------------------------
;;;;;;;;;		CALL	RMCL_DNJ_010

		CALL	Dark_base_color

;------------------------------------------------------------------------

		LD	A,(FADECT)
		AND	%00001110	; �Q�A�S�C�W
		RET	Z		; �O�͌v�Z���Ȃ��I

		LD	A,$1
		LD	(WORKA),A	; �����]���t���O�Z�b�g
		CALL	Dark_rst_100

		RET

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�Â����� ��{�J���[�Z�b�g					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
Dark_base_color
		LD	A,(DNJNNO)
		CP	DJMAX		; �Ƃ������A�H
		JR	NC,Darkclsb_HUS	; �x�d�r

		SLA	A
		LD	E,A
		LD	D,$0
		LD	HL,DUN_COL_ADRS
		ADD	HL,DE
		LD	A,(HLI)		; �k�n�v
		LD	B,(HL)		; �g�h�f�g
		LD	H,B		; �]�����A�h���X
		LD	L,A		;     �h
		JR	Darkclsb_SET

;------------------------------------------------------------------------
;	�ƁA���A
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
		LD	A,(HLI)		; �k�n�v
		LD	B,(HL)		; �g�h�f�g
		LD	H,B		; �]�����A�h���X
		LD	L,A		;     �h

Darkclsb_SET
		LD	DE,CGWORK	; �]����A�h���X
		LD	BC,$0040	; ���i�a�f�̂݁j

		PUSH	BC
		PUSH	DE
		PUSH	HL
		CALL	DATA_MOV	; �f�[�^�]��
		POP	HL
		POP	DE
		POP	BC

		LD	A,$002
		LD	(SVBK),A
		CALL	DATA_MOV	; �f�[�^�]��
		XOR	A
		LD	(SVBK),A

		RET

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	���b�Z�[�W�Ŗ��邭���� �J���[�Z�b�g�i CALL by <ZEX> MSOKCKL )	x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
Message_bright
		CALL	Dark_base_color	; ��{�J���[�Z�b�g

		LD	A,$1
		LD	(WORKA),A	; �����]���t���O�Z�b�g
		CALL	Dark_rst_102
Mesbright_100
		XOR	A
		LD	(COLOFS),A	; �]���I�t�Z�b�g
		LD	A,4*8
		LD	(COLLNG),A	; �]������
		LD	A,BGCOL_BITFG|$80
		LD	(CGDMAF),A	; �]���t���O�i�����]���j

		RET

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	���b�Z�[�W��A�Â����� �J���[�Z�b�g�i CALL by <ZMSSUB> MSGEND )	x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
Message_dark
		CALL	Dark_base_color	; ��{�J���[�Z�b�g

		LD	A,$1
		LD	(WORKA),A	; �����]���t���O�Z�b�g
		CALL	Dark_rst_100

		JR	Mesbright_100

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�Â����� �J���[����Z�b�g					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;------------------------------------------------------------------------
;	�Â����� �J���[�`�F���W�t���O
;------------------------------------------------------------------------
BRIGHT		EQU	%01000000	; ���邭�Ȃ�
DARK		EQU	%10000000	; �Â��Ȃ�
;------------------------------------------------------------------------
;	�Â����� �J���[�`�F���W�t���[���J�E���^
;------------------------------------------------------------------------
DARK_FRCNT	EQU	11
DARK_FRCNT_L8	EQU	10		; ���x���W
;------------------------------------------------------------------------
;	�O���f�[�V�����m���D �f�[�^
;------------------------------------------------------------------------
TOUROU_0_GRA				; ���邢���|�|���P�����Ă� �̊�
		DB	11,13,13,13,11,11,11,11
TOUROU_1_GRA				; �Ƃ��낤�P�����Ă�
		DB	7,9,9,9,7,7,7,7
TOUROU_2_GRA				; �Ƃ��낤�Q�����Ă�
		DB	4,5,5,5,4,4,4,4
;========================================================================

Dark_room_set
		XOR	A
		LD	(WORKA),A	; �����]���t���O�N���A

;------------------------------------------------------------------------
;	�Â����� �`�F�b�N
;------------------------------------------------------------------------
		LD	A,(CGBFLG)
		AND	A
		RET	Z
		LD	A,(DJFLAG)
		AND	A		; �n��H
		RET	Z		; �x�d�r
		LD	HL,FADECT
		LD	A,(FADECT2)
		CP	(HL)		; ���邳�ς��H
		RET	Z		; �m�n
;------------------------------------------------------------------------
		LD	A,(SCRLFG)
		AND	A		; �X�N���[������H
		LD	A,(FADECT2)	; �X�N���[�����Ȃ��ꍇ�́AFADECT2 �ɂ���
		JR	Z,Dark_rst_101	; �m�n

		LD	HL,FADECT
		LD	A,(FADECT2)
		CP	(HL)		; �Â��Ȃ�H
		JR	NC,Dark_rst_050	; �x�d�r

		LD	A,BRIGHT
		JR	Dark_rst_060
Dark_rst_050
		LD	A,DARK
Dark_rst_060
		LD	(DARKFLG),A

		LD	A,(DNJNNO)
		CP	$07		; ���x���W�H
		JR	NZ,Dark_rst_070	; �m�n

;;;;;;;		LD	A,DARK_FRCNT_L8	; ���x���W�����^�C�~���O���炷
		LD	A,$17		; ���x���W�����^�C�~���O���炷
		JR	Dark_rst_080
Dark_rst_070
		LD	A,DARK_FRCNT
Dark_rst_080
		LD	(DARKFCT),A
		RET

;------------------------------------------------------------------------
;	�Â����� �Z�b�g
;------------------------------------------------------------------------
Dark_rst_100
		LD	A,(FADECT)
Dark_rst_101
		LD	HL,TOUROU_2_GRA
		CP	$8		; �Ƃ��낤�Q�����Ă�H
		JR	Z,Dark_rst_110	; �x�d�r

		CP	$2
		JR	Z,Dark_rst_105
Dark_rst_102
		LD	HL,TOUROU_1_GRA	; �Ƃ��낤�P�����Ă�
		JR	Dark_rst_110
Dark_rst_105
		LD	HL,TOUROU_0_GRA	; �Ƃ��낤�P�����Ă� ���� ���邢
;------------------------------------------------------------------------
Dark_rst_110
		LD	B,$0
Dark_rst_120
		LD	A,(HLI)
		LD	C,A
		CALL	Dark_palet_set	; ���Z�b�g
		INC	B
		LD	A,B
		CP	$08
		JR	NZ,Dark_rst_120
;------------------------------------------------------------------------
		LD	A,(WORKA)
		AND	A		; �����]���H
		JR	NZ,Dark_rst_800	; �x�d�r

		LD	A,(SCRLFG)
		AND	A		; �X�N���[�����H
		JR	Z,Dark_rst_900	; �m�n
Dark_rst_800
		LD	A,BGCOL_BITFG
		LD	(CGDMAF),A	; �]���t���O�i�a�f�j
Dark_rst_900
		RET

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�Â����� �p���b�g�f�[�^�Z�b�g					x
;x----------------------------------------------------------------------x
;x	    �d�m�s�q�x							x
;x		�a	�F �p���b�g�m���D				x
;x		�b	�F �O���f�[�V�����m���D�i�P�U�����j		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
Dark_palet_set
		PUSH	BC
		PUSH	HL

		LD	HL,CGWORK
		LD	A,B
		SLA	A
		SLA	A
		SLA	A		; �~�W
		LD	E,A
		LD	D,$0
		ADD	HL,DE
Dark_pst_100
		PUSH	HL

;------------------------------------------------------------------------
;	�J���[�f�[�^ �q�d�`�c
;------------------------------------------------------------------------
		LD	A,(WORKA)
		AND	A
		JR	NZ,Dark_pst_200

		LD	A,(SCRLFG)
		AND	A		; �X�N���[�����H
		JR	NZ,Dark_pst_200	; �x�d�r

		LD	A,$02
		LD	(SVBK),A	; �q�`�l�o���N�i�Q�j�Z�b�g
		LD	A,(HLI)
		LD	E,A		; DE <-- CGWORK
		LD	D,(HL)		; 
		XOR	A
		LD	(SVBK),A	; �q�`�l�o���N�i�O�j�Z�b�g
		JR	Dark_pst_210
Dark_pst_200
		LD	A,(HLI)
		LD	E,A		; DE <-- CGWORK
		LD	D,(HL)		; 
Dark_pst_210
;------------------------------------------------------------------------
;	�q�f�a
;------------------------------------------------------------------------
		LD	A,E
		AND	%00011111
		CALL	RGB_16
		LD	(WORK8),A	; �q

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
		LD	(WORK9),A	; �f

		LD	A,D
		AND	%01111100
		SRL	A
		SRL	A
		CALL	RGB_16		; �a

;------------------------------------------------------------------------
;	�q�f�a����
;------------------------------------------------------------------------
		SLA	A
		SLA	A
		LD	D,A
		LD	A,(WORK9)
		SLA	A
		SWAP	A
		AND	%00000011
		OR	D
		LD	D,A		; �g�h�f�g

		LD	A,(WORK9)
		AND	%00000111
		SWAP	A
		SLA	A
		LD	E,A
		LD	A,(WORK8)
		OR	E
		LD	E,A		; �k�n�v

;------------------------------------------------------------------------
;	�J���[�f�[�^ �v�q�h�s�d
;------------------------------------------------------------------------
		POP	HL

		LD	A,(WORKA)
		AND	A
		JR	NZ,Dark_pst_300

		LD	A,(SCRLFG)
		AND	A		; �X�N���[�����H
		JR	NZ,Dark_pst_300	; �x�d�r

		LD	A,$02
		LD	(SVBK),A	; �q�`�l�o���N�i�Q�j�Z�b�g
		LD	A,E
		LD	(HLI),A		; CGWORK <-- DE
		LD	A,D		;
		LD	(HLI),A		; 
		XOR	A
		LD	(SVBK),A	; �q�`�l�o���N�i�O�j�Z�b�g
		JR	Dark_pst_310
Dark_pst_300
		LD	A,E
		LD	(HLI),A		; CGWORK <-- DE
		LD	A,D		;
		LD	(HLI),A		; 
Dark_pst_310
		LD	A,L
		AND	%00000111	; �P��I���H
		JR	NZ,Dark_pst_100	; �m�n
;------------------------------------------------------------------------
		POP	HL
		POP	BC
		RET

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�q�f�a �O���f�[�V�����Z�b�g					x
;x----------------------------------------------------------------------x
;x	    �d�m�s�q�x							x
;x		�`	�F �q�f�a�f�[�^					x
;x		�b	�F �O���f�[�V�����m���D�i�P�U�����j		x
;x	    �q�d�s�t�q�m						x
;x		�`	�F �q�f�a�f�[�^�i�v�Z��j			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
RGB_16
		PUSH	DE

		LD	B,A
		AND	%00001111
		SWAP	A
		LD	E,A		; �����_
		LD	A,B
		SWAP	A
		AND	%00000001
		LD	D,A		; ����
		XOR	A
		LD	H,A		; �v�Z�p ����
		LD	L,A		; �v�Z�p �����_
		LD	B,C		; �J�E���^
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
;x		�n�a�i�@�풓�J���[�f�[�^				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
obj_col
		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
		DW	$7fff,$1adf,$001b,$0000	; ( 4 )
		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )

obj_col_1
		DW	$7fff,$1e0c,$0104,$0000	; ( 5 )��h�̓� ����

Nemu_link_red	EQU	obj_col+014h		; �������A �����N��
Nemu_link_blue	EQU	obj_col+01ch		; �������A �����N��

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	CZ_0 �n�� �J���[�f�[�^						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_RMBGST
CL_CZ_0
; �� �a�f�F cz0.col BANK=0 ��
		DW	$76f3,$098d,$0ca9,$0000	; ( 0 )
		DW	$76f3,$51ac,$2066,$0000	; ( 1 )
		DW	$76f3,$1417,$100c,$0000	; ( 2 )
		DW	$76f3,$0997,$088b,$0000	; ( 3 )
		DW	$76f3,$30c0,$1801,$0000	; ( 4 )
		DW	$094f,$098d,$0ca9,$0000	; ( 5 )
		DW	$76f3,$3626,$1963,$0000	; ( 6 )
		DW	$47ff,$76f3,$2562,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
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
;x	CZ_1 �n�� �J���[�f�[�^						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_CZ_1
; �� �a�f�F cz1.col ��
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1419,$100a,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$7fff,$7d68,$4cc5,$0000	; ( 4 )
		DW	$1a1b,$26c4,$1521,$0000	; ( 5 )
		DW	$47ff,$12ec,$15a6,$0000	; ( 6 )
		DW	$47ff,$11d9,$1521,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )BG
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	CZ_1a �n�� �J���[�f�[�^	�i�d�R�F�Z�[���̉�  ��p �j		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_CZ_1a
; �� �a�f�F cz1.col ��
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1419,$100a,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$7fff,$7d68,$4cc5,$0000	; ( 4 )
		DW	$1a1b,$26c4,$1521,$0000	; ( 5 )
		DW	$47ff,$12ec,$15a6,$0000	; ( 6 )
		DW	$47ff,$11d9,$1521,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$0000,$26c4,$1521,$0000	; ( 6 )
		DW	$0000,$0000,$0e3b,$2b9f	; ( 7 ) �΂Ȃ�

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	CZ_2 �n�� �J���[�f�[�^						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_CZ_2
; �� �a�f�F cz2.col ��
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1419,$100a,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$47ff,$7cc3,$2c00,$0000	; ( 4 )
		DW	$11d9,$26c4,$1521,$0000	; ( 5 )
		DW	$47ff,$12ec,$15a6,$0000	; ( 6 )
		DW	$47ff,$1e52,$0ce5,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )BG
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	CZ_3 �n�� �J���[�f�[�^						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_CZ_3
; �� �a�f�F cz3.col ��
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1419,$100a,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$47ff,$7cc3,$2c00,$0000	; ( 4 )
		DW	$11d9,$26c4,$1521,$0000	; ( 5 )
		DW	$47ff,$12ec,$15a6,$0000	; ( 6 )
		DW	$47ff,$7c75,$3c07,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )BG
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	CZ_7 �n�� �J���[�f�[�^						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_CZ_7
; �� �a�f�F cz7.col ��
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1419,$100a,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$47ff,$7d68,$7c79,$0000	; ( 4 )
		DW	$11d9,$26c4,$1521,$0000	; ( 5 )
		DW	$47ff,$12ec,$15a6,$0000	; ( 6 )
		DW	$141f,$47ff,$027f,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )BG
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	CZ_2a �n�� �J���[�f�[�^						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_CZ_2a
; �� �a�f�F cz2a.col ��
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1419,$100a,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$47ff,$7cc3,$2c00,$0000	; ( 4 )
		DW	$11d9,$26c4,$1521,$0000	; ( 5 )
		DW	$47ff,$12ec,$15a6,$0000	; ( 6 )
		DW	$7ff4,$12ec,$740d,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )BG
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	CZ_4 �n�� �J���[�f�[�^						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_CZ_4
; �� �a�f�F cz4.col ��
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$7fff,$7d68,$4cc5,$0000	; ( 4 )
		DW	$11d9,$26c4,$1521,$0000	; ( 5 )
		DW	$47ff,$12ec,$15a6,$0000	; ( 6 )
		DW	$7fff,$3615,$100c,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )BG
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	CZ_4 �n�� �J���[�f�[�^						x
;x			���̂Ƃ���					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_CZ_4a
; �� �a�f�F cz4.col ��
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$7fff,$7d68,$4cc5,$0000	; ( 4 )
		DW	$11d9,$26c4,$1521,$0000	; ( 5 )
		DW	$47ff,$12ec,$15a6,$0000	; ( 6 )
		DW	$7fff,$3615,$100c,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )BG
		DW	$47ff,$0fbe,$0213,$0000	; ( 7 )

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	CZ_c �n�� �J���[�f�[�^						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_CZ_c
; �� �a�f�F czc.col ��
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1419,$100a,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$57ff,$7d68,$4cc5,$0000	; ( 4 )
		DW	$11d9,$26c4,$1521,$0000	; ( 5 )
		DW	$47ff,$12ec,$15a6,$0000	; ( 6 )
		DW	$47ff,$09af,$04e6,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )BG
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	CZ_ca �n�� �J���[�f�[�^						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_CZ_ca
; �� �a�f�F czca.col ��
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1419,$100a,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$7fff,$7d68,$4cc5,$0000	; ( 4 )
		DW	$11d9,$26c4,$1521,$0000	; ( 5 )
		DW	$47ff,$12ec,$15a6,$0000	; ( 6 )
		DW	$1a1b,$51f3,$2867,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )BG
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	CZ_d �n�� �J���[�f�[�^						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_CZ_d
; �� �a�f�F czd.col ��
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$7fff,$7d68,$4cc5,$0000	; ( 4 )
		DW	$11d9,$26c4,$1521,$0000	; ( 5 )
		DW	$47ff,$12ec,$15a6,$0000	; ( 6 )
		DW	$7fff,$51f3,$2867,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )BG
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	CZ_d �n�� �J���[�f�[�^						x
;x			�l���̂Ƃ���					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_CZ_e
; �� �a�f�F czd.col ��
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$7fff,$7d68,$4cc5,$0000	; ( 4 )
		DW	$11d9,$26c4,$1521,$0000	; ( 5 )
		DW	$47ff,$12ec,$15a6,$0000	; ( 6 )
		DW	$7fff,$51f3,$2867,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )BG
		DW	$47ff,$2c7f,$140e,$0000	; ( 7 )

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	CZ_11 �n�� �J���[�f�[�^						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_CZ_11
; �� �a�f�F cz11.col ��
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1419,$100a,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$7fff,$7d68,$4cc5,$0000	; ( 4 )
		DW	$11d9,$26c4,$1521,$0000	; ( 5 )
		DW	$47ff,$12ec,$15a6,$0000	; ( 6 )
		DW	$47ff,$09af,$04e6,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )BG
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	CZ_3a �n�� �J���[�f�[�^						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_CZ_3a
; �� �a�f�F cz3a.col ��
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$47ff,$7d68,$4cc5,$0000	; ( 4 )
		DW	$11d9,$26c4,$1521,$0000	; ( 5 )
		DW	$47ff,$12ec,$15a6,$0000	; ( 6 )
		DW	$47ff,$501f,$200f,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )BG
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	CZ_3b �n�� �J���[�f�[�^						x
;x			�������̃��b�z�[�I�o����			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_CZ_3b
; �� �a�f�F cz3a.col ��
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$47ff,$7d68,$4cc5,$0000	; ( 4 )
		DW	$11d9,$26c4,$1521,$0000	; ( 5 )
		DW	$47ff,$12ec,$15a6,$0000	; ( 6 )
		DW	$47ff,$501f,$200f,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )BG
		DW	$47ff,$5231,$28c5,$0000	; ( 7 )

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	CZ_3b �n�� �J���[�f�[�^						x
;x			������W�[����̉Ƃ̑O			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_CZ_URURIRA
; �� �a�f�F cz3a.col ��
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1419,$100a,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$47ff,$7cc3,$2c00,$0000	; ( 4 )
		DW	$11d9,$26c4,$1521,$0000	; ( 5 )
		DW	$47ff,$12ec,$15a6,$0000	; ( 6 )
		DW	$47ff,$7c75,$3c07,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
		DW	$7fff,$0000,$4471,$7d7f
		DW	$47ff,$5231,$28c5,$0000	; ( 7 )

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	CZ_6 �n�� �J���[�f�[�^						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_CZ_6
; �� �a�f�F cz6.col ��
		DW	$1f9d,$01fe,$7c00,$7c00	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$1f19,$019a,$7c00,$7c00	; ( 4 )
		DW	$11d9,$26c4,$1521,$0000	; ( 5 )
		DW	$1a96,$0136,$7c00,$7c00	; ( 6 )
		DW	$7fff,$31d6,$1185,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
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
;x	CZ_6a �n�� �J���[�f�[�^						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_CZ_6a
; �� �a�f�F cz6a.col ��
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$7fff,$7d68,$4cc5,$0000	; ( 4 )
		DW	$11d9,$26c4,$1521,$0000	; ( 5 )
		DW	$47ff,$12ec,$15a6,$0000	; ( 6 )
		DW	$7fff,$31d6,$1185,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )BG
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	CZ_b �n�� �J���[�f�[�^						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_CZ_b
; �� �a�f�F czb.col ��
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1419,$100a,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$47ff,$1e52,$10ce,$0000	; ( 4 )
		DW	$11d9,$26c4,$1521,$0000	; ( 5 )
		DW	$47ff,$12ec,$15a6,$0000	; ( 6 )
		DW	$7fff,$26c4,$011f,$0069	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$76f3,$098d,$0ca9,$0000	; ( 0 )BG ���n�a�i��p
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	00_COL �n�� �J���[�f�[�^					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_00_COL
; �� �a�f�F 00col.col ��
		DW	$7d68,$11d9,$10ce,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1419,$100a,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$7fff,$7d68,$4cc5,$0000	; ( 4 )
		DW	$4cc5,$11d9,$10ce,$0000	; ( 5 )
		DW	$47ff,$12ec,$15a6,$0000	; ( 6 )
		DW	$225b,$51f3,$2867,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG
		DW	$225b,$51f3,$2867,$0000	; ( 7 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	10_COL �n�� �J���[�f�[�^					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_10_COL
; �� �a�f�F 10col.col ��
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1419,$100a,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$269b,$26c4,$1521,$0000	; ( 4 )
		DW	$11d9,$26c4,$1521,$0000	; ( 5 )
		DW	$47ff,$12ec,$15a6,$0000	; ( 6 )
		DW	$225b,$51f3,$2867,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )BG ���J���[
		DW	$225b,$51f3,$2867,$0000	; ( 7 )

CL_K10_COL
; �� �a�f�F 10col.col ��
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1419,$100a,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$269b,$26c4,$1521,$0000	; ( 4 )
		DW	$11d9,$26c4,$1521,$0000	; ( 5 )
		DW	$47ff,$12ec,$15a6,$0000	; ( 6 )
		DW	$225b,$51f3,$2867,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$11d9,$6233,$38c8,$0000	; ( 6 )
		DW	$11d9,$0000,$16aa,$7fff	; ( 7 )

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	CZ_9 �n�� �J���[�f�[�^						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_CZ_9
; �� �a�f�F cz9.col ��
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$7fff,$7d68,$4cc5,$0000	; ( 4 )
		DW	$11d9,$26c4,$1521,$0000	; ( 5 )
		DW	$47ff,$12ec,$15a6,$0000	; ( 6 )
		DW	$7d68,$132e,$0926,$1044	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
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
;x	CZ_5 �n�� �J���[�f�[�^						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_CZ_5
; �� �a�f�F cz5.col ��
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1419,$100a,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$57ff,$7d68,$4cc5,$0000	; ( 4 )
		DW	$4ffc,$3665,$40c2,$1a3c	; ( 5 )
		DW	$1a3c,$6657,$350c,$1444	; ( 6 )
		DW	$1a3c,$47ff,$09ef,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )

		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG
		DW	$7fff,$47ff,$09ef,$0000	; ( 7 )BG �A���X

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	CZ_5a �n�� �J���[�f�[�^						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_CZ_5a
; �� �a�f�F cz5.col ��
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1419,$100a,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$57ff,$7d68,$4cc5,$0000	; ( 4 )
		DW	$4ffc,$3665,$40c2,$1a3c	; ( 5 )
		DW	$1a3c,$6657,$350c,$1444	; ( 6 )
		DW	$1a3c,$51f3,$2867,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )

		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG
		DW	$1a3c,$51f3,$2867,$0000	; ( 7 )�A���X

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	CZ_5�i����j�n�� �J���[�f�[�^					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_CZ_5SP
; �� �a�f�F cz5.col ��
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1419,$100a,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$57ff,$7d68,$4cc5,$0000	; ( 4 )
		DW	$4ffc,$3665,$40c2,$1a3c	; ( 5 )
		DW	$1a3c,$6657,$350c,$1444	; ( 6 )
		DW	$1a3c,$0000,$09ef,$47ff	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )BG
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	CZ_5�i����Q�j �n�� �J���[�f�[�^				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_CZ_5SP2
; �� �a�f�F cz5.col ��
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1419,$100a,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$57ff,$7d68,$4cc5,$0000	; ( 4 )
		DW	$4ffc,$3665,$40c2,$1a3c	; ( 5 )
		DW	$1a3c,$6657,$350c,$1444	; ( 6 )
		DW	$1a3c,$0000,$09ef,$47ff	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )

		DW	$47ff,$26c4,$1521,$0000	; ( 0 ) ��
		DW	$47ff,$51f3,$2867,$0000	; ( 1 ) �A���X 

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	06_COL �n�� �J���[�f�[�^					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_06_COL
; �� �a�f�F 06col.col ��
		DW	$7d68,$11d9,$10ce,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1419,$100a,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$7fff,$7d68,$4cc5,$0000	; ( 4 )
		DW	$4cc5,$11d9,$10ce,$0000	; ( 5 )
		DW	$47ff,$4c9d,$7d68,$0000	; ( 6 )
		DW	$225b,$51f3,$2867,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$47ff,$0000,$2867,$0000	; ( 1 )BG �Z�C���[���y��
		DW	$225b,$51f3,$2867,$0000	; ( 7 )BG

;-----<	����Z�b�g�p >---------------------------------------------------
CL_06_1_COL
; �� �a�f�F 06col.col BANK=1 ��
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1419,$100a,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$7fff,$7d68,$4cc5,$0000	; ( 4 )
		DW	$4cc5,$11d9,$10ce,$0000	; ( 5 )
		DW	$47ff,$12ec,$15a6,$0000	; ( 6 )
		DW	$225b,$51f3,$2867,$0000	; ( 7 )

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	07_COL �n�� �J���[�f�[�^					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_07_COL
; �� �a�f�F 07col.col ��
		DW	$7d68,$11d9,$10ce,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1419,$100a,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$7fff,$7d68,$4cc5,$0000	; ( 4 )
		DW	$4cc5,$11d9,$10ce,$0000	; ( 5 )
		DW	$1a1b,$26c4,$1521,$0000	; ( 6 )
		DW	$225b,$51f3,$2867,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG
		DW	$225b,$51f3,$2867,$0000	; ( 7 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	08_COL �n�� �J���[�f�[�^					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_08_COL
; �� �a�f�F 08col.col ��
		DW	$7d68,$11d9,$10ce,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1419,$100a,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$7fff,$7d68,$4cc5,$0000	; ( 4 )
		DW	$4cc5,$11d9,$10ce,$0000	; ( 5 )
		DW	$47ff,$26c4,$1521,$0000	; ( 6 )
		DW	$225b,$51f3,$2867,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
;;;KK;;;		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )BG ���J���[
		DW	$225b,$51f3,$2867,$0000	; ( 7 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	0e_COL �n�� �J���[�f�[�^					x
;x----------------------------------------------------------------------x
;x	�n�a�i�J���[�Q�C�R�́A�k�V������o���f�����A����ւ�		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_0e_COL
; �� �a�f�F 0ecol.col ��
		DW	$225b,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1419,$100a,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$7fff,$7d68,$4cc5,$0000	; ( 4 )
		DW	$4cc5,$11d9,$10ce,$0000	; ( 5 )
		DW	$47ff,$1e0c,$0104,$0000	; ( 6 )
		DW	$225b,$51f3,$2867,$0000	; ( 7 )
;;;;;;; �� �n�a�i�F objcol_c.col ��
;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )�f��������ւ�
;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )�f��������ւ�
;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
;;;;;;		DW	$26c4,$0000,$1e0c,$47ff	; �h�n�a�i��p
;;;;;;		DW	$225b,$51f3,$2867,$0000	; ( 7 )BG
; �� �n�a�i�F 0ecol.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$1e0c,$0104,$0000	; ( 5 )����
		DW	$7fff,$0000,$1e0c,$47ff	; ( 6 )�h�A�K�i
		DW	$225b,$51f3,$2867,$0000	; ( 7 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	2B_COL �n�� �J���[�f�[�^					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_2B_COL
; �� �a�f�F 2bcol.col ��
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1419,$100a,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$7fff,$7d68,$4cc5,$0000	; ( 4 )
		DW	$11d9,$26c4,$1521,$0000	; ( 5 )
		DW	$47ff,$12ec,$15a6,$0000	; ( 6 )
		DW	$225b,$51f3,$2867,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG
		DW	$225b,$51f3,$2867,$0000	; ( 7 )BG

;;;;;;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;;;;;;x	�����̐X ����ւ��J���[�f�[�^�i�P�j				x
;;;;;;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;;;;;CL_MORI_1
;;;;;; �� �a�f�F cz0.col BANK=1 ��
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
;;;;;;x	�����̐X ����ւ��J���[�f�[�^�i�Q�j				x
;;;;;;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;;;;;CL_MORI_2
;;;;;; �� �a�f�F cz0.col BANK=2 ��
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
;x	�k�d�u�d�k�|�P �_���W���� �J���[�f�[�^				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;-----<	�_�b�V���ŉ󂹂�� >---------------------------------------------
CL_DUNGEON_1_0
; �� �a�f�F lv_1col.col ��
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$5a7f,$38df,$0c12,$0000	; ( 4 )
		DW	$7d87,$44e6,$760d,$0000	; ( 5 )
		DW	$7d87,$7e16,$388d,$0000	; ( 6 )
		DW	$4a52,$39ce,$2529,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$7d87,$7e16,$606c,$0000	; ( 6 )BG
;;;KK;;;		DW	$57ff,$11d9,$10ce,$0000	; ( 3 ) �A�C�e���Z���N�g�̂a�f
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG

;-----<	����ʐ�p  >----------------------------------------------------
CL_DUNGEON_1Y
; �� �a�f�F lv_1col.col BANK=2 ��
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$5a7f,$38df,$0c12,$0000	; ( 4 )
		DW	$47ff,$7dea,$4105,$0000	; ( 5 )
		DW	$760d,$7d87,$44e6,$0000	; ( 6 )
		DW	$4a52,$39ce,$2529,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$760d,$7d87,$44e6,$0000	; ( 6 )BG
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG

;-----<	�_���W�����o����� >---------------------------------------------
CL_DUNGEON_1_1
; �� �a�f�F lv_1col.col BANK=1 ��
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$5a7f,$38df,$0c12,$0000	; ( 4 )
		DW	$7d87,$44e6,$760d,$0000	; ( 5 )
		DW	$47ff,$26c4,$19e2,$0ce0	; ( 6 )
		DW	$4a52,$39ce,$2529,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$47ff,$26c4,$19e2,$0ce0	; ( 6 )BG
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG

;-----<	���{�X(�I�o�p) >---------------------------------------------
CL_DUNGEON_1_2
; �� �a�f�F lv_1col.col BANK=0 ��
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$5a7f,$38df,$0c12,$0000	; ( 4 )
		DW	$7d87,$44e6,$760d,$0000	; ( 5 )
		DW	$7d87,$7e16,$606c,$0000	; ( 6 )
		DW	$4a52,$39ce,$2529,$0000	; ( 7 )
; �� �n�a�i�F objcol_oba.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$4eff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$4eff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$4eff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7d43,$4eff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$7fff,$0000,$341a,$6dbf	; ( 6 )
		DW	$6f7f,$0000,$418b,$6b17	; ( 7 )

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�k�d�u�d�k�|�Q �_���W���� �J���[�f�[�^				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_DUNGEON_2
; �� �a�f�F l2col.col ��
		DW	$7e94,$7dcd,$3465,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$7f12,$7ce7,$3400,$0000	; ( 4 )
		DW	$3aba,$0970,$08c9,$0000	; ( 5 )
		DW	$2e57,$11d9,$10ce,$0000	; ( 6 )
		DW	$5b18,$5e0a,$5ce0,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$2e57,$11d9,$10ce,$0000	; ( 6 )BG
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG
;
;-----<	����ʐ�p  >----------------------------------------------------
CL_DUNGEON_2Y
; �� �a�f�F l2col.col ��
		DW	$7e94,$7dcd,$3465,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$7f12,$7ce7,$3400,$0000	; ( 4 )
		DW	$3aba,$0970,$08c9,$0000	; ( 5 )
		DW	$2e57,$11d9,$10ce,$0000	; ( 6 )
		DW	$5b18,$5e0a,$5ce0,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$6233,$023f,$0533,$0000	; ( 1 )BG
		DW	$6233,$4b18,$2d4d,$0000	; ( 6 )BG

;
;-----<	�c�{�{�X  >----------------------------------------------------
CL_DUNGEON_2_0
		DW	$6233,$0000,$0533,$023f	; ( 6 )BG
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�k�d�u�d�k�|�R �_���W���� �J���[�f�[�^				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_DUNGEON_3_3
; �� �a�f�F lv_3col.col BANK=3 ��
		DW	$1610,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$4736,$264e,$0146,$0000	; ( 4 )
		DW	$1610,$0129,$1a72,$0000	; ( 5 )
		DW	$1610,$11d9,$10ce,$0000	; ( 6 )
		DW	$524f,$3967,$2cc2,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$1610,$11d9,$10ce,$0000	; ( 6 )BG
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG

;-----<	����ʐ�p  >----------------------------------------------------
CL_DUNGEON_3Y
; �� �a�f�F lv_3col.col BANK=2 ��
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$5a7f,$38df,$0c12,$0000	; ( 4 )
		DW	$47ff,$7dea,$4105,$0000	; ( 5 )
		DW	$760d,$7d87,$44e6,$0000	; ( 6 )
		DW	$4a52,$39ce,$2529,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$760d,$7d87,$44e6,$0000	; ( 6 )BG
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG

;-----<	����� ( GRNDPT = 51 �œ���ւ� ) >------------------------------
CL_DUNGEON_3_1
; �� �a�f�F lv_3col.col BANK=1 ��
		DW	$47ff,$7d45,$3ca4,$2062	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$4736,$264e,$0146,$0000	; ( 4 )
		DW	$1610,$0129,$1a72,$0000	; ( 5 )
		DW	$1610,$11d9,$10ce,$0000	; ( 6 )
		DW	$524f,$3967,$2cc2,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$1610,$11d9,$10ce,$0000	; ( 6 )BG
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�k�d�u�d�k�|�S �_���W���� �J���[�f�[�^				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_DUNGEON_4
; �� �a�f�F l4col.col BANK=0 ��
		DW	$1652,$11d9,$10ce,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$73de,$3aa0,$1540,$0000	; ( 4 )
		DW	$1652,$156b,$04a5,$0000	; ( 5 )
		DW	$77e0,$3a00,$2140,$0000	; ( 6 )
		DW	$760d,$7d45,$3ca4,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$1652,$11d9,$10ce,$0000	; ( 0 )BG
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG

;-----<	����ʐ�p  >----------------------------------------------------
CL_DUNGEON_4Y
; �� �a�f�F l4col.col BANK=0 ��
		DW	$1652,$11d9,$10ce,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$73de,$3aa0,$1540,$0000	; ( 4 )
		DW	$1652,$156b,$04a5,$0000	; ( 5 )
		DW	$77e0,$3a00,$2140,$0000	; ( 6 )
		DW	$760d,$7d45,$3ca4,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$6233,$023f,$0533,$0000	; ( 1 )BG
		DW	$6233,$4b18,$2d4d,$0000	; ( 6 )BG

;-----<	�V�a�p ( GRNDPT = 78 �œ���ւ� ) >------------------------------
CL_DUNGEON_4_1
; �� �a�f�F l4col.col BANK=1 ��
		DW	$1652,$7e16,$606c,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$73de,$3aa0,$1540,$0000	; ( 4 )
		DW	$1652,$156b,$04a5,$0000	; ( 5 )
		DW	$77e0,$3a00,$2140,$0000	; ( 6 )
		DW	$760d,$7d45,$3ca4,$0000	; ( 7 )


;-----<	���x���S�̃��X�g�E�{�X >-----------------------------------------
CL_DUNGEON_4_2
; �� �n�a�i�F objcol_4.col ��
;;;;;;;;		DW	$0000,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$0000,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$0000,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$0000,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$0000,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$0000,$7e03,$5c07,$0000	; ( 5 )
		DW	$0000,$1adf,$78ad,$0000	; ( 6 )
		DW	$0000,$0000,$1adf,$7fff	; ( 7 )

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�k�d�u�d�k�|�T �_���W���� �J���[�f�[�^				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_DUNGEON_5_0
; �� �a�f�F lv_5col.col BANK=0 ��
		DW	$0274,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$52d7,$2991,$14ec,$0000	; ( 4 )
		DW	$0274,$016b,$2319,$0000	; ( 5 )
		DW	$0274,$11d9,$10ce,$0000	; ( 6 )
		DW	$760d,$7d45,$3ca4,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$0274,$11d9,$10ce,$0000	; ( 6 )BG
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG

;-----<	����ʐ�p  >----------------------------------------------------
CL_DUNGEON_5Y
; �� �a�f�F lv_5col.col BANK=2 ��
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$5a7f,$38df,$0c12,$0000	; ( 4 )
		DW	$7ed3,$7d87,$44e6,$0000	; ( 5 )
		DW	$47ff,$51f3,$44e6,$0000	; ( 6 )
		DW	$479b,$264e,$0146,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$6233,$023f,$0533,$0000	; ( 1 )BG
		DW	$6233,$4b18,$2d4d,$0000	; ( 6 )BG

;-----<	����� ( GRNDPT = a1 �œ���ւ� ) >------------------------------
CL_DUNGEON_5_1
; �� �a�f�F lv_5col.col BANK=1 ��
		DW	$0274,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$52d7,$2991,$14ec,$0000	; ( 4 )
		DW	$0274,$016b,$2319,$0000	; ( 5 )
		DW	$47ff,$1610,$0129,$00a5	; ( 6 )
		DW	$760d,$7d45,$3ca4,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$0274,$11d9,$10ce,$0000	; ( 6 )BG �ڃJ���[
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG

;-----<	���ŉ󂹂�� ( GRNDPT = a0 �œ���ւ� ) >------------------------
CL_DUNGEON_5_3
; �� �a�f�F lv_5col.col BANK=3 ��
		DW	$0274,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$52d7,$2991,$14ec,$0000	; ( 4 )
		DW	$0274,$016b,$2319,$0000	; ( 5 )
		DW	$0274,$7e16,$606c,$0000	; ( 6 )
		DW	$760d,$7d45,$3ca4,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$0274,$7e16,$606c,$0000	; ( 6 )BG
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG

;-----<	�{�X���� ( GRNDPT = 8B �œ���ւ� ) >------------------------
CL_DUNGEON_5_4
; �� �n�a�i�F objcol_5.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$0274,$0000,$141f,$7fff	; ( 6 )
		DW	$47ff,$0000,$514e,$7fff	; ( 7 )

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�k�d�u�d�k�|�U �_���W���� �J���[�f�[�^				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_DUNGEON_6
; �� �a�f�F l6col.col BANK=0 ��
		DW	$2e52,$11d9,$10ce,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$73de,$51be,$3014,$0000	; ( 4 )
		DW	$2e52,$01ad,$00c6,$0000	; ( 5 )
		DW	$363f,$255a,$14af,$0000	; ( 6 )
		DW	$760d,$7d45,$3ca4,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
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
; �� �n�a�i�F objcol_c.col ��
		DW	$2e52,$11d9,$10ce,$0000	; ( 0 )BG
		DW	$47ff,$1417,$1008,$0000	; ( 2 )BG

;-----<	����ʐ�p  >----------------------------------------------------
CL_DUNGEON_6Y
; �� �a�f�F l6col.col BANK=1 ��
		DW	$47ff,$26ca,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$73de,$51be,$3014,$0000	; ( 4 )
		DW	$2e52,$01ad,$00c6,$0000	; ( 5 )
		DW	$363f,$255a,$14af,$0000	; ( 6 )
		DW	$760d,$7d45,$3ca4,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$363f,$255a,$14af,$0000	; ( 6 )BG
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�k�d�u�d�k�|�V �_���W���� �J���[�f�[�^				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_DUNGEON_7_0
; �� �a�f�F lv_7col.col BANK=0 ��
		DW	$01a7,$71ec,$3ca4,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$6739,$4a52,$2529,$0000	; ( 4 )
		DW	$01a7,$0102,$022b,$0000	; ( 5 )
		DW	$01a7,$11d9,$10ce,$0000	; ( 6 )
		DW	$47ff,$29d6,$1d2e,$0c86	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$01a7,$11d9,$10ce,$0000	; ( 6 )BG
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG

;-----<	���̊O�i�{�X�j >-------------------------------------------------
CL_DUNGEON_7_1
; �� �a�f�F lv_7col.col BANK=1 ��
		DW	$47ff,$0576,$0029,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$7fff,$7d8d,$7fff,$0000	; ( 4 )
		DW	$47ff,$1e0c,$0104,$0000	; ( 5 )
		DW	$7fff,$7fff,$0104,$0000	; ( 6 )
		DW	$47ff,$1e0c,$11d9,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$63fe,$32db,$25d3,$1cc7	; ( 3 )BG
		DW	$63fe,$5a94,$396a,$1cc7	; ( 1 )BG

;-----<	����� ( GRNDPT = 10e �œ���ւ� ) >-----------------------------
CL_DUNGEON_7_2
; �� �a�f�F lv_7col.col BANK=2 ��
		DW	$01a7,$71ec,$3ca4,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$6739,$4a52,$2529,$0000	; ( 4 )
		DW	$01a7,$0102,$022b,$0000	; ( 5 )
		DW	$01a7,$11d9,$10ce,$0000	; ( 6 )
		DW	$47ff,$492b,$2867,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$01a7,$11d9,$10ce,$0000	; ( 6 )BG
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG

;-----<	���r�����̕���( GRNDPT = 113 �œ���ւ� ) >-----------------------------
CL_DUNGEON_7_3
		DW	$01a7,$11d9,$10ce,$0000	; ( 6 )BG
		DW	$47ff,$4a52,$2529,$0000	; ( 1 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�k�d�u�d�k�|�W �_���W���� �J���[�f�[�^				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_DUNGEON_8
; �� �a�f�F l8col.col BANK=0 ��
		DW	$029f,$11d9,$10ce,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$311f,$0015,$000b,$0000	; ( 4 )
		DW	$029f,$00df,$0053,$0000	; ( 5 )
		DW	$47ff,$093f,$0009,$0000	; ( 6 )
		DW	$63fe,$7f12,$7de5,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$029f,$11d9,$10ce,$0000	; ( 0 )BG
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG

;-----<	����ʐ�p  >----------------------------------------------------
CL_DUNGEON_8Y
; �� �a�f�F l8col.col BANK=1 ��
		DW	$47ff,$51f3,$2867,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$311f,$0015,$000b,$0000	; ( 4 )
		DW	$029f,$00df,$0053,$0000	; ( 5 )
		DW	$47ff,$093f,$0009,$0000	; ( 6 )
		DW	$63fe,$7f12,$7de5,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$6233,$023f,$0533,$0000	; ( 1 )BG
		DW	$6233,$4b18,$2d4d,$0000	; ( 6 )BG

;-----<	����ʐ�p�Q  >--------------------------------------------------
CL_DUNGEON_8Y2
; �� �a�f�F l8col.col BANK=2 ��
		DW	$47ff,$11d9,$10ce,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$311f,$0015,$000b,$0000	; ( 4 )
		DW	$029f,$00df,$0053,$0000	; ( 5 )
		DW	$47ff,$093f,$0009,$0000	; ( 6 )
		DW	$63fe,$7f12,$7de5,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
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
;x	��̐_�a		�i�U�e�j				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_KAO_6F
; �� �n�a�i�F objcol_c.col ��
		DW	$2e52,$0000,$24c5,$36d7	; ( 6 )
		DW	$47ff,$12bb,$0151,$0000	; ( 7 )

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	��̐_�a		�i�V�e�j				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_KAO_7F
; �� �n�a�i�F objcol_c.col ��
		DW	$2e52,$11d9,$10ce,$0000	; ( 0 )BG
		DW	$47ff,$12bb,$0151,$0000	; ( 7 )


;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	��̐_�a		�i�W�e�j				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_KAO_8F
; �� �n�a�i�F objcol_c.col ��
		DW	$2e52,$11d9,$10ce,$0000	; ( 0 )BG
		DW	$47ff,$12bb,$0151,$0000	; ( 7 )

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	���̃_���W���� �J���[�f�[�^					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
NEW_DJCOL
; �� �a�f�F fukucol.col ��
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$4736,$264e,$0146,$0000	; ( 4 )
		DW	$318c,$2108,$4210,$0000	; ( 5 )
		DW	$318c,$11d9,$10ce,$0000	; ( 6 )
		DW	$47ff,$0e39,$00c7,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )BG
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�����Ȃ�^�}�S �J���[�f�[�^					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_DUNGEON_EGG
; �� �a�f�F tamacol.col ��
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$6696,$55b1,$38a9,$0000	; ( 4 )
		DW	$3967,$2cc2,$4a0d,$0000	; ( 5 )
		DW	$7fff,$7fff,$7fff,$0000	; ( 6 )
		DW	$7d87,$2c7c,$000f,$0808	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$47ff,$093f,$0009,$0000	; ( 6 )BG
		DW	$0000,$1b9b,$4590,$0000	; �͂���

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�ނ�x �J���[�f�[�^						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_TURI
; �� �a�f�F turi_ol2.col ��
		DW	$63fe,$7e6f,$7d04,$0822	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$7ff4,$11d9,$10ce,$0000	; ( 4 )
		DW	$7ff4,$3383,$1225,$0822	; ( 5 )
		DW	$5755,$428b,$7d04,$0822	; ( 6 )
		DW	$63fe,$2e58,$7d04,$0822	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$63fe,$2eba,$1550,$0822	; ( 3 )BG
		DW	$6f7f,$1e52,$0ce5,$0000	; ( 7 )


;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	���̉��̒ނ�I���W �J���[�f�[�^					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_TURI2
; �� �a�f�F turi_ol2.col ��
		DW	$63fe,$7e6f,$7d04,$0822	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$7ff4,$11d9,$10ce,$0000	; ( 4 )
		DW	$7ff4,$3383,$1225,$0822	; ( 5 )
		DW	$5755,$428b,$7d04,$0822	; ( 6 )
		DW	$63fe,$2e58,$7d04,$0822	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$7fff,$0000,$4471,$7d7f	; ( 7 ) �J�������m
;;;KK;;;		DW	$6f7f,$1e52,$0ce5,$0000	; ( 7 )

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�}���{�E�̓��A							x
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
; �� �n�a�i�F objcol_c.col ��
		DW	$63fe,$2eba,$1550,$0822	; ( 3 )BG
		DW	$47ff,$1419,$100a,$0000	; ( 7 )

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�}���[�̓��A							x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_MANUUUU
; �� �a�f�F idotype_0.col ��
		DW	$0e39,$51f3,$2867,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$3b7f,$11d9,$10ce,$0000	; ( 4 )
		DW	$0e39,$1911,$63fe,$0000	; ( 5 )
		DW	$760d,$7d45,$3ca4,$0000	; ( 6 )
		DW	$0e39,$26c4,$1521,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
		DW	$0e39,$26c4,$1521,$0000	; ( 7 )BG
		DW	$47ff,$1419,$100a,$0000	; ( 7 )

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	��ˌ^�_���W���� �^�C�v�O �J���[�f�[�^				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_IDOTYPE0
; �� �a�f�F idotype_0.col ��
		DW	$0e39,$51f3,$2867,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$3b7f,$11d9,$10ce,$0000	; ( 4 )
		DW	$0e39,$1911,$63fe,$0000	; ( 5 )
		DW	$760d,$7d45,$3ca4,$0000	; ( 6 )
		DW	$0e39,$26c4,$1521,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$0e39,$26c4,$1521,$0000	; ( 7 )BG
		DW	$0e39,$51f3,$2867,$0000	; ( 0 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	��ˌ^�_���W���� �^�C�v�P �J���[�f�[�^				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_IDOTYPE1
; �� �a�f�F idotype_1.col ��
		DW	$0e39,$51f3,$2867,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$3b7f,$11d9,$10ce,$0000	; ( 4 )
		DW	$0e39,$1911,$63fe,$0000	; ( 5 )
		DW	$0e39,$7eb5,$7d47,$0000	; ( 6 )
		DW	$0e39,$26c4,$1521,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$0e39,$26c4,$1521,$0000	; ( 7 )BG
		DW	$0e39,$51f3,$2867,$0000	; ( 0 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	��ˌ^�_���W���� �^�C�v�Q �J���[�f�[�^				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_IDOTYPE2
; �� �a�f�F idotype_2.col ��
		DW	$0e39,$51f3,$2867,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$3b7f,$7cff,$2810,$0000	; ( 4 )
		DW	$0e39,$1911,$63fe,$0000	; ( 5 )
		DW	$760d,$7d45,$3ca4,$0000	; ( 6 )
		DW	$0e39,$26c4,$1521,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$0e39,$26c4,$1521,$0000	; ( 7 )BG
		DW	$0e39,$51f3,$2867,$0000	; ( 0 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	��ˌ^�_���W���� �^�C�v�Q �J���[�f�[�^				x
;x			�q��������					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_IDOTYPE6
; �� �a�f�F idotype_2.col ��
		DW	$0e39,$51f3,$2867,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$3b7f,$7cff,$2810,$0000	; ( 4 )
		DW	$0e39,$1911,$63fe,$0000	; ( 5 )
		DW	$760d,$7d45,$3ca4,$0000	; ( 6 )
		DW	$0e39,$26c4,$1521,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$0e39,$26c4,$1521,$0000	; ( 7 )BG
		DW	$6233,$011a,$0fff,$7fff	; ( 7 )

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	��ˌ^�_���W���� �^�C�v�R �J���[�f�[�^				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_IDOTYPE3
; �� �a�f�F idotype_3.col ��
		DW	$0e39,$51f3,$2867,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$3b7f,$11d9,$10ce,$0000	; ( 4 )
		DW	$0e39,$1911,$63fe,$0000	; ( 5 )
		DW	$760d,$7d45,$3ca4,$0000	; ( 6 )
		DW	$0e39,$03f7,$00c7,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$0e39,$26c4,$1521,$0000	; ( 7 )BG
		DW	$0e39,$51f3,$2867,$0000	; ( 0 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	��ˌ^�_���W���� �^�C�v�S �J���[�f�[�^				x
;x					�����{�̒n��			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_IDOTYPE4
; �� �a�f�F idotype_0.col ��
		DW	$0e39,$51f3,$2867,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$3b7f,$11d9,$10ce,$0000	; ( 4 )
		DW	$0e39,$1911,$63fe,$0000	; ( 5 )
		DW	$760d,$7d45,$3ca4,$0000	; ( 6 )
		DW	$0e39,$26c4,$1521,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$0000,$5c07,$7e03,$7fff	; ( 6 )
		DW	$0000,$0000,$7e03,$7fff	; ( 7 )

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	��ˌ^�_���W���� �^�C�v�O �J���[�f�[�^				x
;x			���ʂ������Y					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_IDOTYPE5
; �� �a�f�F idotype_0.col ��
		DW	$0e39,$51f3,$2867,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$3b7f,$11d9,$10ce,$0000	; ( 4 )
		DW	$0e39,$1911,$63fe,$0000	; ( 5 )
		DW	$760d,$7d45,$3ca4,$0000	; ( 6 )
		DW	$0e39,$26c4,$1521,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$0e39,$26c4,$1521,$0000	; ( 7 )BG
		DW	$0e39,$7eae,$7c00,$0000	; ( 7 )

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�����u�����̃A�W�g �J���[�f�[�^					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_MORIBURIN
; �� �a�f�F ajitocol.col ��
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$4736,$264e,$0146,$0000	; ( 4 )
		DW	$1610,$0129,$1a72,$0000	; ( 5 )
		DW	$1610,$51f3,$2867,$0000	; ( 6 )
		DW	$264e,$0146,$4736,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$264e,$0146,$4736,$0000	; ( 7 )BG
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�ƌ^�_���W���� �^�C�v�O �J���[�f�[�^				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_IETYPE0
; �� �a�f�F heyall_a.col BANK=0 ��
		DW	$47ff,$2efd,$15b5,$0000	; ( 0 )
		DW	$47ff,$5231,$28c5,$0000	; ( 1 )
		DW	$47ff,$2c7f,$140e,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$09f4,$7fff,$09f4,$0000	; ( 4 )
		DW	$45fe,$2c7f,$140e,$0000	; ( 5 )
		DW	$2efd,$11d9,$10ce,$0000	; ( 6 )
		DW	$2efd,$03ff,$01d3,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$2efd,$11d9,$10ce,$0000	; ( 6 )BG
		DW	$47ff,$5231,$28c5,$0000	; ( 1 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�ƌ^�_���W���� �^�C�v�P �J���[�f�[�^				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_IETYPE1
; �� �a�f�F heyall_a.col BANK=1 ��
		DW	$47ff,$2efd,$15b5,$0000	; ( 0 )
		DW	$47ff,$5231,$28c5,$0000	; ( 1 )
		DW	$47ff,$2c7f,$140e,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$09f4,$7fff,$09f4,$0000	; ( 4 )
		DW	$760d,$7d45,$3ca4,$0000	; ( 5 )
		DW	$2efd,$11d9,$10ce,$0000	; ( 6 )
		DW	$2efd,$03ff,$01d3,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$2efd,$11d9,$10ce,$0000	; ( 6 )BG
		DW	$47ff,$5231,$28c5,$0000	; ( 1 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�ƌ^�_���W���� �^�C�v�Q �J���[�f�[�^				x
;x				�A�C�e���V���b�v			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_IETYPE2
; �� �a�f�F heyall_a.col BANK=2 ��
		DW	$47ff,$2efd,$15b5,$0000	; ( 0 )
		DW	$47ff,$5231,$28c5,$0000	; ( 1 )
		DW	$47ff,$2c7f,$140e,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$09f4,$7fff,$09f4,$0000	; ( 4 )
		DW	$63fe,$63fe,$63fe,$63fe	; ( 5 )
		DW	$2efd,$7f36,$7d45,$0000	; ( 6 )
		DW	$63fe,$26c4,$1521,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$2efd,$7f36,$7d45,$0000	; ( 6 )BG
		DW	$47ff,$5231,$28c5,$0000	; ( 1 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�ƌ^�_���W���� �^�C�v�R �J���[�f�[�^				x
;x		���s�̓X�i�t�e�n�L���b�`���[�j				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_IETYPE3
; �� �a�f�F heyall_a.col BANK=3 ��
		DW	$47ff,$2efd,$15b5,$0000	; ( 0 )
		DW	$47ff,$5231,$28c5,$0000	; ( 1 )
		DW	$47ff,$2c7f,$140e,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$281a,$7fff,$281a,$0000	; ( 4 )
		DW	$3f4f,$26c4,$1521,$0000	; ( 5 )
		DW	$2efd,$11d9,$10ce,$0000	; ( 6 )
		DW	$63fe,$26c4,$1521,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$2efd,$11d9,$10ce,$0000	; ( 6 )BG
		DW	$47ff,$7fff,$0642,$0000	; ( 7 )

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�ƌ^�_���W���� �^�C�v�S �J���[�f�[�^				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_IETYPE4
; �� �a�f�F heyall_b.col BANK=0 ��
		DW	$47ff,$2efd,$15b5,$0000	; ( 0 )
		DW	$47ff,$5231,$28c5,$0000	; ( 1 )
		DW	$47ff,$2c7f,$140e,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$7d45,$7fff,$7d45,$0000	; ( 4 )
		DW	$45fe,$2c7f,$140e,$0000	; ( 5 )
		DW	$2efd,$11d9,$10ce,$0000	; ( 6 )
		DW	$2efd,$03ff,$01d3,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$2efd,$11d9,$10ce,$0000	; ( 6 )BG
		DW	$47ff,$5231,$28c5,$0000	; ( 1 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�ƌ^�_���W���� �^�C�v�T �J���[�f�[�^				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_IETYPE5
; �� �a�f�F heyall_b.col BANK=1 ��
		DW	$47ff,$2efd,$15b5,$0000	; ( 0 )
		DW	$47ff,$5231,$28c5,$0000	; ( 1 )
		DW	$47ff,$2c7f,$140e,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$09f4,$7fff,$09f4,$0000	; ( 4 )
		DW	$3f4f,$26c4,$1521,$0000	; ( 5 )
		DW	$2efd,$11d9,$10ce,$0000	; ( 6 )
		DW	$2efd,$03ff,$01d3,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$2efd,$11d9,$10ce,$0000	; ( 6 )BG
		DW	$47ff,$5231,$28c5,$0000	; ( 1 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�ƌ^�_���W���� �^�C�v�U �J���[�f�[�^				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_IETYPE6
; �� �a�f�F heyall_b.col BANK=2 ��
		DW	$47ff,$2efd,$15b5,$0000	; ( 0 )
		DW	$47ff,$5231,$28c5,$0000	; ( 1 )
		DW	$47ff,$2c7f,$140e,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$281a,$7fff,$281a,$0000	; ( 4 )
		DW	$0e58,$1930,$63fe,$0000	; ( 5 )
		DW	$2efd,$11d9,$10ce,$0000	; ( 6 )
		DW	$2efd,$03ff,$01d3,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$2efd,$11d9,$10ce,$0000	; ( 6 )BG
		DW	$47ff,$5231,$28c5,$0000	; ( 1 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�ƌ^�_���W���� �^�C�v�V �J���[�f�[�^				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_IETYPE7
; �� �a�f�F heyall_b.col BANK=3 ��
		DW	$47ff,$2efd,$15b5,$0000	; ( 0 )
		DW	$47ff,$5231,$28c5,$0000	; ( 1 )
		DW	$47ff,$2c7f,$140e,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$0203,$7fff,$0203,$0000	; ( 4 )
		DW	$760d,$7d45,$3ca4,$0000	; ( 5 )
		DW	$2efd,$11d9,$10ce,$0000	; ( 6 )
		DW	$2efd,$03ff,$01d3,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$2efd,$11d9,$10ce,$0000	; ( 6 )BG
		DW	$47ff,$5231,$28c5,$0000	; ( 1 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�ƌ^�_���W���� �^�C�v�W �J���[�f�[�^				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_IETYPE8
; �� �a�f�F heyall_c.col BANK=0 ��
		DW	$47ff,$2efd,$15b5,$0000	; ( 0 )
		DW	$47ff,$5231,$28c5,$0000	; ( 1 )
		DW	$47ff,$2c7f,$140e,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$281a,$7fff,$281a,$0000	; ( 4 )
		DW	$45fe,$2c7f,$140e,$0000	; ( 5 )
		DW	$2efd,$11d9,$10ce,$0000	; ( 6 )
		DW	$2efd,$03ff,$01d3,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$2efd,$11d9,$10ce,$0000	; ( 6 )BG
		DW	$47ff,$5231,$28c5,$0000	; ( 1 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�ƌ^�_���W���� �^�C�v�X �J���[�f�[�^				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_IETYPE9
; �� �a�f�F heyall_c.col BANK=1 ��
		DW	$47ff,$2efd,$15b5,$0000	; ( 0 )
		DW	$47ff,$5231,$28c5,$0000	; ( 1 )
		DW	$47ff,$2c7f,$140e,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$3c15,$7fff,$3c15,$0000	; ( 4 )
		DW	$7dbf,$5c17,$300c,$0000	; ( 5 )
		DW	$2efd,$11d9,$10ce,$0000	; ( 6 )
		DW	$2efd,$03ff,$01d3,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$2efd,$11d9,$10ce,$0000	; ( 6 )BG
		DW	$47ff,$5231,$28c5,$0000	; ( 1 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�ƌ^�_���W���� �^�C�v�` �J���[�f�[�^				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_IETYPEA
; �� �a�f�F heyall_c.col BANK=2 ��
		DW	$47ff,$2efd,$15b5,$0000	; ( 0 )
		DW	$47ff,$5231,$28c5,$0000	; ( 1 )
		DW	$47ff,$2c7f,$140e,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$281a,$7fff,$281a,$0000	; ( 4 )
		DW	$7dbf,$5c17,$300c,$0000	; ( 5 )
		DW	$2efd,$11d9,$10ce,$0000	; ( 6 )
		DW	$2efd,$03ff,$01d3,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$2efd,$11d9,$10ce,$0000	; ( 6 )BG
		DW	$47ff,$5231,$28c5,$0000	; ( 1 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�ƌ^�_���W���� �^�C�v�a �J���[�f�[�^				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_IETYPEB
; �� �a�f�F heyall_a.col BANK=0 ��
		DW	$47ff,$2efd,$15b5,$0000	; ( 0 )
		DW	$47ff,$5231,$28c5,$0000	; ( 1 )
		DW	$47ff,$2c7f,$140e,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$09f4,$7fff,$09f4,$0000	; ( 4 )
		DW	$45fe,$2c7f,$140e,$0000	; ( 5 )
		DW	$2efd,$11d9,$10ce,$0000	; ( 6 )
		DW	$2efd,$03ff,$01d3,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col �V�Ԃ���oc_pine.col�̂U�ԁ@��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$2efd,$11d9,$10ce,$0000	; ( 6 )BG
		DW	$7fff,$05ff,$22a2,$0000	; ( 6 )

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�ƌ^�_���W���� �^�C�v�w�w �J���[�f�[�^				x
;x			�S���q�̕�e�̉�				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_IETYPEC
; �� �a�f�F heyall_a.col BANK=1 ��
		DW	$47ff,$2efd,$15b5,$0000	; ( 0 )
		DW	$47ff,$5231,$28c5,$0000	; ( 1 )
		DW	$47ff,$2c7f,$140e,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$09f4,$7fff,$09f4,$0000	; ( 4 )
		DW	$760d,$7d45,$3ca4,$0000	; ( 5 )
		DW	$2efd,$11d9,$10ce,$0000	; ( 6 )
		DW	$2efd,$03ff,$01d3,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$2efd,$11d9,$10ce,$0000	; ( 6 )BG
		DW	$47ff,$2c7f,$140e,$0000	; ( 7 )

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�ƌ^�_���W���� �^�C�v�U �J���[�f�[�^				x
;x			������ꃏ�������̕���				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_IETYPED
; �� �a�f�F heyall_b.col BANK=2 ��
		DW	$47ff,$2efd,$15b5,$0000	; ( 0 )
		DW	$47ff,$5231,$28c5,$0000	; ( 1 )
		DW	$47ff,$2c7f,$140e,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$281a,$7fff,$281a,$0000	; ( 4 )
		DW	$0e58,$1930,$63fe,$0000	; ( 5 )
		DW	$2efd,$11d9,$10ce,$0000	; ( 6 )
		DW	$2efd,$03ff,$01d3,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
		DW	$2efd,$11d9,$10ce,$0000	; ( 6 )BG
;;;KK;;;		DW	$47ff,$5231,$28c5,$0000	; ( 7 )
		DW	$47ff,$7FFF,$5231,$0000	; ( 7 )

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�ƌ^�_���W���� �^�C�v�P �J���[�f�[�^				x
;x			�o�i�i��					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_IETYPEE
; �� �a�f�F heyall_a.col BANK=1 ��
		DW	$47ff,$2efd,$15b5,$0000	; ( 0 )
		DW	$47ff,$5231,$28c5,$0000	; ( 1 )
		DW	$47ff,$2c7f,$140e,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$09f4,$7fff,$09f4,$0000	; ( 4 )
		DW	$760d,$7d45,$3ca4,$0000	; ( 5 )
		DW	$2efd,$11d9,$10ce,$0000	; ( 6 )
		DW	$2efd,$03ff,$01d3,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$2efd,$11d9,$10ce,$0000	; ( 6 )BG
		DW	$47ff,$0fbe,$0213,$0000	; ( 7 )

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�ƌ^�_���W���� �^�C�v�P �J���[�f�[�^				x
;x			�N���X�e�B�[�k�̉�				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_IETYPEF
; �� �a�f�F heyall_a.col BANK=1 ��
		DW	$47ff,$2efd,$15b5,$0000	; ( 0 )
		DW	$47ff,$5231,$28c5,$0000	; ( 1 )
		DW	$47ff,$2c7f,$140e,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$09f4,$7fff,$09f4,$0000	; ( 4 )
		DW	$760d,$7d45,$3ca4,$0000	; ( 5 )
		DW	$2efd,$11d9,$10ce,$0000	; ( 6 )
		DW	$2efd,$03ff,$01d3,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$2efd,$11d9,$10ce,$0000	; ( 6 )BG
		DW	$47ff,$7fff,$083d,$0000	; ( 7 )

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�J�i���b�g�� �^�C�v�O �J���[�f�[�^				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_SHIROTYPE0
; �� �a�f�F shirocol.col BANK=0 ��
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$035a,$0252,$014a,$0000	; ( 4 )
		DW	$7d87,$44e6,$760d,$0000	; ( 5 )
		DW	$7d87,$11d9,$10ce,$0000	; ( 6 )
		DW	$7d87,$38df,$0c12,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$7d87,$11d9,$10ce,$0000	; ( 6 )BG
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�J�i���b�g�� �^�C�v�P �J���[�f�[�^				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_SHIROTYPE1
; �� �a�f�F shirocol.col BANK=1 ��
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$7ff4,$3383,$1521,$0822	; ( 4 )
		DW	$7fff,$3615,$100c,$0000	; ( 5 )
		DW	$47ff,$1e52,$0ce5,$0000	; ( 6 )
		DW	$3383,$11d9,$10ce,$0822	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$47ff,$1e52,$0ce5,$0000	; ( 6 )BG
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	���̂ق���							x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_YUMENOHOKORA
; �� �a�f�F onemucol.col BANK=0 ��
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$4736,$264e,$0146,$0000	; ( 4 )
		DW	$1610,$0129,$1a72,$0000	; ( 5 )
		DW	$524f,$3967,$2cc2,$0000	; ( 6 )
		DW	$1610,$26c4,$1521,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
		DW	$47ff,$0000,$5231,$47ff	; ( 6 )�z�c
		DW	$47ff,$1419,$100a,$0000	; ( 7 )

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�������A  �^�C�v�O �J���[�f�[�^					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_ONEMUTYPE0
; �� �a�f�F onemucol.col BANK=0 ��
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$4736,$264e,$0146,$0000	; ( 4 )
		DW	$1610,$0129,$1a72,$0000	; ( 5 )
		DW	$524f,$3967,$2cc2,$0000	; ( 6 )
		DW	$1610,$26c4,$1521,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$47ff,$0000,$5231,$47ff	; ( 6 )�z�c
		DW	$47ff,$0000,$22a2,$47ff	; ( 7 )���Ȃ��ꃊ���N

CL_ONEMUTYPE0_red
; �� �a�f�F onemucol.col BANK=0 ��
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$4736,$264e,$0146,$0000	; ( 4 )
		DW	$1610,$0129,$1a72,$0000	; ( 5 )
		DW	$524f,$3967,$2cc2,$0000	; ( 6 )
		DW	$1610,$26c4,$1521,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$47ff,$0000,$5231,$47ff	; ( 6 )�z�c
		DW	$47ff,$0000,$143f,$47ff	; ( 7 )���Ȃ��ꃊ���N

CL_ONEMUTYPE0_blue
; �� �a�f�F onemucol.col BANK=0 ��
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$4736,$264e,$0146,$0000	; ( 4 )
		DW	$1610,$0129,$1a72,$0000	; ( 5 )
		DW	$524f,$3967,$2cc2,$0000	; ( 6 )
		DW	$1610,$26c4,$1521,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$47ff,$0000,$5231,$47ff	; ( 6 )�z�c
		DW	$47ff,$0000,$7e03,$47ff	; ( 7 )���Ȃ��ꃊ���N

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�������A  �^�C�v�P �J���[�f�[�^					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_ONEMUTYPE1
; �� �a�f�F onemucol.col BANK=1 ��
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1417,$1008,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$2867,$7d87,$44e6,$0000	; ( 4 )
		DW	$2867,$1c04,$201f,$0000	; ( 5 )
		DW	$2867,$26c4,$1562,$0000	; ( 6 )
		DW	$2867,$03ff,$01ad,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$2867,$26c4,$1562,$0000	; ( 6 )BG
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�J������ �J���[�f�[�^						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_CAMERA
; �� �a�f�F camera.col ��
		DW	$47ff,$2efd,$15b5,$0000	; ( 0 )
		DW	$63fe,$5231,$28c5,$0000	; ( 1 )
		DW	$63fe,$2c7f,$140e,$0000	; ( 2 )
		DW	$63fe,$11d9,$10ce,$0000	; ( 3 )
		DW	$09f4,$7fff,$09f4,$0000	; ( 4 )
		DW	$3f4f,$26c4,$1521,$0000	; ( 5 )
		DW	$2efd,$7f36,$7d45,$0000	; ( 6 )
		DW	$2efd,$11d9,$10ce,$0000	; ( 7 )
; �� �n�a�i�F camera.col ��
;;;KK;;;		DW	$7fe0,$63fe,$5231,$0000	; ( 6 )
		DW	$7fff,$0000,$4471,$7d7f	; ( 6 )
		DW	$7fff,$0000,$5231,$63fe	; ( 7 )

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	���Ȃ��ꃊ���N  �J���[�f�[�^					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_UNASARE
; �� �a�f�F heyall_a.col BANK=0 ��
		DW	$47ff,$2efd,$15b5,$0000	; ( 0 )
		DW	$47ff,$5231,$28c5,$0000	; ( 1 )
		DW	$47ff,$2c7f,$140e,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$09f4,$7fff,$09f4,$0000	; ( 4 )
		DW	$45fe,$2c7f,$140e,$0000	; ( 5 )
		DW	$2efd,$11d9,$10ce,$0000	; ( 6 )
		DW	$2efd,$03ff,$01d3,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$47ff,$0000,$5231,$47ff	; ( 6 )�z�c
		DW	$47ff,$0000,$22a2,$47ff	; ( 7 )���Ȃ��ꃊ���N

CL_UNASARE_red
; �� �a�f�F heyall_a.col BANK=0 ��
		DW	$47ff,$2efd,$15b5,$0000	; ( 0 )
		DW	$47ff,$5231,$28c5,$0000	; ( 1 )
		DW	$47ff,$2c7f,$140e,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$09f4,$7fff,$09f4,$0000	; ( 4 )
		DW	$45fe,$2c7f,$140e,$0000	; ( 5 )
		DW	$2efd,$11d9,$10ce,$0000	; ( 6 )
		DW	$2efd,$03ff,$01d3,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$47ff,$0000,$5231,$47ff	; ( 6 )�z�c
		DW	$47ff,$0000,$143f,$47ff	; ( 7 )���Ȃ��ꃊ���N

CL_UNASARE_blue
; �� �a�f�F heyall_a.col BANK=0 ��
		DW	$47ff,$2efd,$15b5,$0000	; ( 0 )
		DW	$47ff,$5231,$28c5,$0000	; ( 1 )
		DW	$47ff,$2c7f,$140e,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$09f4,$7fff,$09f4,$0000	; ( 4 )
		DW	$45fe,$2c7f,$140e,$0000	; ( 5 )
		DW	$2efd,$11d9,$10ce,$0000	; ( 6 )
		DW	$2efd,$03ff,$01d3,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$47ff,$0000,$5231,$47ff	; ( 6 )�z�c
		DW	$47ff,$0000,$7e03,$47ff	; ( 7 )���Ȃ��ꃊ���N

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�Q�Ă�^���� �J���[�f�[�^					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_NERUTARIN
; �� �a�f�F heyall_a.col BANK=0 ��
		DW	$47ff,$2efd,$15b5,$0000	; ( 0 )
		DW	$47ff,$5231,$28c5,$0000	; ( 1 )
		DW	$47ff,$2c7f,$140e,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$09f4,$7fff,$09f4,$0000	; ( 4 )
		DW	$45fe,$2c7f,$140e,$0000	; ( 5 )
		DW	$2efd,$11d9,$10ce,$0000	; ( 6 )
		DW	$2efd,$03ff,$01d3,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
;;;;;;;;		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
;;;;;;;;		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
;;;;;;;;		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
;;;;;;;;		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;;;;;;;;		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
;;;;;;;;		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$2efd,$11d9,$10ce,$0000	; ( 6 )BG
		DW	$47ff,$0000,$5231,$47ff	; ( 7 )�z�c




;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�J���[�f�[�^�A�h���X �e�[�u���i BLNKFG �ɑΉ� �j		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
COLOR_ADRS
		DW	$0000		; ( 1) �P��ʃZ�b�g�H
		DW	$0000		; ( 2) �u�q�`�l�N���A
		DW	CL_BANKST	; ( 3)
		DW	CL_BANKS2	; ( 4)
		DW	$0000		; ( 5)
		DW	$0000		; ( 6) �_���W���� BG bank set !
		DW	$0000		; ( 7) �n�� BG bank set !
		DW	CL_V_RAMB	; ( 8) �v���C���[�Z���N�g
		DW	$0000		; ( 9)
		DW	CL_VRRET	; ( A)
		DW	CL_GMAPBKST	; ( B) �S�̃}�b�v���
		DW	CL_VRRET	; ( C) ODMBKST
		DW	CL_GOVBKST	; ( D) �Q�[���I�[�o�[
		DW	$0000		; ( E) �S�̃}�b�v���
		DW	$0000		; ( F) V_RAMD
		DW	CL_OPBKST	; (10) Opening bank(Sea & Mt.) set !
		DW	CL_OPBKS2	; (11) Opening bank(ZELDA) set !
		DW	CL_PEACHBKST	; (12) �s�[�`�ʐ^�I
		DW	CL_LOVEBKST	; (13) �C�݃f���I
		DW	CL_KAB1BKST	; (14) �ǉ�I
;--- Ending - -
		DW	CL_ENDCHA	; (15) �G���f�B���O A CHR.TR
		DW	CL_ENDCHB2	; (16) �G���f�B���O B2 CHR.TR
		DW	CL_ENDCHC	; (17) �G���f�B���O C  CHR.TR
		DW	CL_ENDCHB	; (18) �G���f�B���O B  CHR.TR
		DW	CL_ENDCHD	; (19) �G���f�B���O D  CHR.TR
		DW	CL_ENDCHE	; (1A) �G���f�B���O E  CHR.TR
		DW	CL_ENDCHF	; (1B) �G���f�B���O F  CHR.TR
		DW	CL_ENDCHG	; (1C) �G���f�B���O G  CHR.TR
;
		DW	CL_ENDCHA1	; (1D) �G���f�B���O A(�n��jCHR.TR
		DW	CL_ENDCHYM	; (1E) �G���f�B���O A(�R���i�jCHR.TR
		DW	CL_ENDCHA2	; (1F) �G���f�B���O A2(LINK OBJ) CHR.TR
;- - - -
		DW	CL_KABABKST	; (20) �J�o�̊G�I
		DW	CL_TOUBGCH	; (21) �V���f���I
;
		DW	$0000		; (22) �����߂܂��i�b�f�a��p�j
		DW	$0000		; (23) �G���f�B���O���b�Z�[�W�i�b�f�a��p�j
;
;;;KK;;;ItemSelColNo	DW	CL_ITEMSEL	; (22) �A�C�e���Z���N�g
;;;KK;;;;
;;;KK;;;ITSELCOL	EQU	(ItemSelColNo-COLOR_ADRS)/2
;
;
;------------------------------------------------------------------------
;	BLNKFG ���x���m��
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
;PECCD	EQU	$12	; �s�[�`�ʐ^�I
;LOVCD	EQU	$13	; �C�݃f���I
;KB1CD	EQU	$14
;;------Ending-------- 
;ECHA	EQU	$15	; �G���f�B���O A CHR.Tr. 
;ECHB2	EQU	$16	; �G���f�B���O B2 CHR.Tr. 
;ECHC	EQU	$17	; �G���f�B���O C CHR.Tr. 
;ECHB	EQU	$18	; �G���f�B���O B CHR.Tr. 
;ECHD	EQU	$19	; �G���f�B���O D CHR.Tr. 
;ECHE	EQU	$1A	; �G���f�B���O E CHR.Tr. 
;ECHF	EQU	$1B	; �G���f�B���O F CHR.Tr. 
;ECHG	EQU	$1C	; �G���f�B���O G CHR.Tr. 
;;- - - - -
;ECHA1	EQU	$1D	; �G���f�B���O A (�n��j CHR.Tr.
;ECHYM	EQU	$1E	; �G���f�B���O A (���R�S�i�j CHR.Tr.
;ECHA2	EQU	$1F	; �G���f�B���O A2 (LINK OBJ�j CHR.Tr.
;;-----------------------------------
;KABCD	EQU	$20
;TOUCD	EQU	$21
;;-----------------------------------
;;
;SPTST	EQU	$14	; TEST TEST shibahara big test !
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�J���[ ���f�[�^							x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_V_RAMC		; ( 2)
CL_BANKST		; ( 3)
CL_BANKS2		; ( 4)
CL_BANKS3		; ( 5)
CL_VRRET		; ( A)
CL_V_RAMD		; ( F)

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�I�[�v�j���O�P�i���̊C�j					x
;x	�I�[�v�j���O�Q�i�����N���₤���I�j				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_OPBKST
; �� �a�f�F open1c.col ��
		DW	$3228,$13be,$3100,$0000	; ( 0 )
		DW	$1915,$31a2,$480a,$0000	; ( 1 )
		DW	$1915,$4b1f,$480a,$0000	; ( 2 )
		DW	$1915,$4b1f,$31a2,$0000	; ( 3 )
		DW	$121f,$27fe,$480a,$0000	; ( 4 )
		DW	$21bf,$4b1f,$480a,$0000	; ( 5 )
		DW	$5480,$39aa,$2947,$14e3	; ( 6 )
		DW	$61e3,$7fff,$5c83,$3402	; ( 7 )
; �� �n�a�i�Farasi.col ��
		DW	$7e40,$0000,$0642,$4eff	; ( 0 )
		DW	$7e40,$5a94,$175f,$7ee0	; ( 1 )
		DW	$7e40,$4986,$6f38,$2820	; ( 2 )
		DW	$7e40,$0000,$1a39,$4eff	; ( 3 )
		DW	$7fff,$00f2,$2a19,$175f	; ( 4 )
		DW	$7fff,$108b,$2a19,$175f	; ( 5 )
		DW	$0000,$0000,$0000,$0000	; ( 6 )
		DW	$0000,$0000,$0000,$0000	; ( 7 )

;==============	�y�b�n�k�r�t�a�D�r�Ɉړ� ==============
;;;;;;;;;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;;;;;;;;;x	�I�[�v�j���O�R�i�ʎq�R�ӂ��Ɓj					x
;;;;;;;;;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;;;;;;;;CL_OPBKS2
;;;;;;;;; �� �a�f�F open0c.col ��
;;;;;;;;		DW	$7fff,$14dd,$1417,$0000	; ( 0 )
;;;;;;;;		DW	$7fff,$131f,$11df,$0000	; ( 1 )
;;;;;;;;		DW	$7fff,$2b2c,$0851,$0000	; ( 2 )
;;;;;;;;		DW	$7fff,$7d8d,$1ca0,$4c9d	; ( 3 )
;;;;;;;;		DW	$4bff,$12dc,$018c,$0000	; ( 4 )
;;;;;;;;		DW	$4bff,$2b2c,$1ca0,$0000	; ( 5 )
;;;;;;;;		DW	$7fff,$265b,$4134,$7d8d	; ( 6 )
;;;;;;;;		DW	$7fff,$7d8d,$1ca0,$0000	; ( 7 )
;;;;;;;;; �� �n�a�i�Farasi.col + dx.col ��
;;;;;;;;		DW	$7e40,$0000,$0642,$4eff	; ( 0 )
;;;;;;;;		DW	$7e40,$5a94,$175f,$7ee0	; ( 1 )
;;;;;;;;		DW	$7e40,$4986,$6f38,$2820	; ( 2 )
;;;;;;;;		DW	$7e40,$0000,$1a39,$4eff	; ( 3 )
;;;;;;;;		DW	$7975,$4b7e,$42b5,$21ef	; ( 4 ) DX �����
;;;;;;;;		DW	$7af5,$12dc,$014a,$0000	; ( 5 ) DX ��������
;;;;;;;;		DW	$7af5,$12dc,$014a,$0000	; ( 6 ) DX ���n
;;;;;;;;		DW	$7af5,$7fff,$00a5,$7fff	; ( 7 ) DX ��
;;;;;;;;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�v���C���[�Z���N�g�A�Q�[���I�[�o�[�A�����Z�[�u			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_V_RAMB
CL_GOVBKST
; �� �a�f�F na-sa0c.col ��
		DW	$7fff,$3f6b,$0d84,$0000	; ( 0 )
		DW	$7fff,$6e4e,$4105,$0000	; ( 1 )
		DW	$7fff,$385f,$1872,$0000	; ( 2 )
		DW	$7fff,$2b9f,$0150,$0000	; ( 3 )
		DW	$7fff,$2e3f,$0071,$0000	; ( 4 )
		DW	$7fff,$4694,$0166,$0000	; ( 5 )
		DW	$7fff,$4255,$080d,$0000	; ( 6 )
		DW	$7fff,$0dae,$0d24,$0000	; ( 7 )
; �Ƃ肠����
; �� �n�a�i�Farasi.col ��
		DW	$7e40,$0000,$0642,$4eff	; ( 0 )
		DW	$7e40,$5a94,$175f,$7ee0	; ( 1 )
		DW	$7e40,$4986,$6f38,$2820	; ( 2 )
		DW	$7e40,$0000,$1a39,$4eff	; ( 3 )
		DW	$7fff,$00f2,$2a19,$175f	; ( 4 )
		DW	$7fff,$108b,$2a19,$175f	; ( 5 )
		DW	$0000,$0000,$0000,$0000	; ( 6 )
		DW	$0000,$0000,$0000,$0000	; ( 7 )

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�C�݃f��							x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_LOVEBKST
; �� �a�f�F love.col ��
		DW	$7fff,$72f1,$6661,$0000	; ( 0 )
		DW	$47ff,$1659,$112d,$0000	; ( 1 )
		DW	$7fff,$12ec,$15a6,$0000	; ( 2 )
		DW	$7fff,$7d68,$15a6,$0000	; ( 3 )
		DW	$12ec,$15a6,$6661,$0000	; ( 4 )
		DW	$7399,$5291,$5e07,$3503	; ( 5 )
		DW	$1659,$112d,$15a6,$0000	; ( 6 )
		DW	$47ff,$22bc,$0000,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )���
		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )�܂��
		DW	$7fff,$0000,$143f,$46ff	; ( 2 )���b�Z�[�W���
		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�s�[�`�ʐ^ �J���[�f�[�^						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_PEACHBKST
; �� �a�f�F piti_0c.col ��
		DW	$4b1f,$395e,$1c14,$0444	; ( 0 )
		DW	$4b1f,$2ddc,$10f7,$0444	; ( 1 )
		DW	$7fff,$0edd,$1c14,$0444	; ( 2 )
		DW	$4b1f,$0edd,$10f7,$0444	; ( 3 )
		DW	$4b1f,$395e,$608c,$0444	; ( 4 )
		DW	$4b1f,$395e,$10f7,$0444	; ( 5 )
		DW	$7fff,$0edd,$608c,$0444	; ( 6 )
		DW	$4b1f,$2ddc,$23ce,$0444	; ( 7 )

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�ǉ� �J���[�f�[�^						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_KAB1BKST
; �� �a�f�F hekiga0c.col ��
		DW	$7bff,$3a31,$24c5,$0c21	; ( 0 )
		DW	$4f7b,$11cf,$04c5,$0000	; ( 1 )
		DW	$7bff,$3a31,$146d,$0c21	; ( 2 )
		DW	$7c00,$7c00,$7c00,$7c00	; ( 3 )
		DW	$7c00,$7c00,$7c00,$7c00	; ( 4 )
		DW	$7c00,$7c00,$7c00,$7c00	; ( 5 )
		DW	$7c00,$7c00,$7c00,$7c00	; ( 6 )
		DW	$7c00,$7c00,$7c00,$7c00	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
		DW	$7fff,$0000,$143f,$46ff	; ( 2 )���b�Z�[�W���

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�J�o�̊G �J���[�f�[�^						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_KABABKST
; �� �a�f�F kaiga_0c.col ��
		DW	$5bff,$1e1d,$1631,$1c64	; ( 0 )
		DW	$5bff,$2abd,$1511,$1c64	; ( 1 )
		DW	$5bff,$373b,$4549,$1c64	; ( 2 )
		DW	$5bff,$3d9c,$4549,$1c64	; ( 3 )
		DW	$5bff,$3faf,$4549,$1c64	; ( 4 )
		DW	$5bff,$3faf,$65d3,$1c64	; ( 5 )
		DW	$5bff,$3d9c,$2458,$1c64	; ( 6 )
		DW	$5bff,$373b,$1e1d,$1c64	; ( 7 )

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�V���f�� �J���[�f�[�^						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_TOUBGCH
; �� �a�f�F tou_demo.col ��
		DW	$7fff,$7d68,$0000,$0000	; ( 0 )
		DW	$7fff,$7fff,$7fff,$7fff	; ( 1 )
		DW	$7fff,$7fff,$7fff,$7fff	; ( 2 )
		DW	$7fff,$7fff,$7fff,$7fff	; ( 3 )
		DW	$7fff,$7fff,$7fff,$7fff	; ( 4 )
		DW	$47ff,$1e0c,$0104,$0000	; ( 5 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 6 )
		DW	$4c83,$0000,$1e0c,$47ff	; ( 7 )
; �� �n�a�i�F tou_demo.col ��
		DW	$7fff,$7d68,$4c83,$0000	; ( 0 )
		DW	$7fff,$7fff,$7fff,$7fff	; ( 1 )
		DW	$7fff,$7fff,$7fff,$7fff	; ( 2 )
		DW	$7fff,$7fff,$7fff,$7fff	; ( 3 )
		DW	$7fff,$7fff,$7fff,$7fff	; ( 4 )
		DW	$7fff,$1e0c,$0104,$0000	; ( 5 )
		DW	$7fff,$11d9,$10ce,$0000	; ( 6 )
		DW	$7fff,$0000,$1e0c,$47ff	; ( 7 )

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�S�̃}�b�v��� �J���[�f�[�^					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_GMAPCHST
;
;	�Ƃ肠�����I
;
; �� �a�f�F cz1.col ��
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1419,$100a,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$7fff,$7d68,$4cc5,$0000	; ( 4 )
		DW	$11d9,$26c4,$1521,$0000	; ( 5 )
		DW	$47ff,$12ec,$15a6,$0000	; ( 6 )
		DW	$47ff,$11d9,$1521,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )BG
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�n��}�b�v �J���[�f�[�^						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_GMAPBKST
; �� �a�f�F map1.col ��
		DW	$47ff,$26c4,$14a5,$0000	; ( 0 )
		DW	$47ff,$51f3,$14a5,$0000	; ( 1 )
		DW	$47ff,$1417,$14a5,$0000	; ( 2 )
		DW	$47ff,$11d9,$088c,$0000	; ( 3 )
		DW	$47ff,$7d68,$088c,$0000	; ( 4 )
		DW	$47ff,$1417,$088c,$0000	; ( 5 )
		DW	$47ff,$088c,$14a5,$0000	; ( 6 )
		DW	$47ff,$7d68,$14a5,$0000	; ( 7 )
; �� �n�a�i�F map1.col ��
		DW	$47ff,$0000,$22a2,$4eff	; ( 0 )
		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
		DW	$7fff,$0000,$143f,$4eff	; ( 2 )
		DW	$7fff,$7fff,$7fff,$7fff	; ( 3 )
		DW	$47ff,$018c,$22a2,$0000	; ( 4 )
		DW	$47ff,$143f,$143f,$7fff	; ( 5 )
		DW	$47ff,$0000,$1153,$2adc	; ( 6 )
		DW	$47ff,$0000,$7e03,$7fff	; ( 7 )

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�G���f�B���O�i �d�O�S���O�T�F�����h�J���I �j			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_ENDCHA
; �� �a�f�F fine_3.col ��
		DW	$0000,$4cc5,$7d68,$7fff	; ( 0 )
		DW	$0000,$3c62,$68e5,$5ed6	; ( 1 )
		DW	$0000,$2000,$5000,$35ad	; ( 2 )
		DW	$0000,$660f,$6ed6,$7fff	; ( 3 )
		DW	$660f,$660f,$6ed6,$7fff	; ( 4 )
		DW	$59ac,$660f,$6ed6,$7fff	; ( 5 )
		DW	$4d49,$660f,$6ed6,$7fff	; ( 6 )
		DW	$0000,$0000,$0000,$0000	; ( 7 )
; �� �n�a�i�F fine_3.col ��
		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )���
		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )�ӂ��낤
		DW	$7fff,$0000,$143f,$46ff	; ( 2 )���b�Z�[�W���A��񂭐�
		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )��񂭐�
		DW	$0000,$6ffe,$6ffe,$6ffe	; ( 4 )
		DW	$0000,$6ffe,$6ffe,$6ffe	; ( 5 )
		DW	$0000,$03ff,$0273,$01ce	; ( 6 )��
		DW	$0000,$1b9b,$4590,$30a9	; ( 7 )�䁕�͂���

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�G���f�B���O�i �d�O�X�F�����N�Ղ��Ղ� �΂ߌ����� �j		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_ENDCHB2
; �� �a�f�F fine_5.col ��
		DW	$7d68,$5e52,$5e52,$7fff	; ( 0 )
		DW	$4c83,$0000,$0000,$0000	; ( 1 )
		DW	$4c83,$0000,$0000,$0000	; ( 2 )
		DW	$4c83,$0000,$0000,$0000	; ( 3 )
		DW	$4c83,$0000,$7d26,$7e71	; ( 4 )
		DW	$4c83,$0000,$0000,$0000	; ( 5 )
		DW	$4c83,$0000,$0000,$0000	; ( 6 )
		DW	$7d68,$0e39,$33ff,$7fff	; ( 7 )
; �� �n�a�i�F fine_5.col ��
		DW	$7eb3,$0000,$7d68,$7fff	; ( 0 )
		DW	$7eb3,$0000,$3228,$121f	; ( 1 )
		DW	$7eb3,$0000,$1915,$4b1f	; ( 2 )
		DW	$7eb3,$0000,$1915,$046b	; ( 3 )
		DW	$7eb3,$7fff,$7fff,$7fff	; ( 4 )
		DW	$7eb3,$7fff,$7fff,$7fff	; ( 5 )
		DW	$7eb3,$7fff,$7fff,$7fff	; ( 6 )
		DW	$7eb3,$7fff,$7fff,$7fff	; ( 7 )

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�G���f�B���O�i �d�O�W�F�^���� �j				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_ENDCHC
; �� �a�f�F fine_4.col ��
		DW	$7d68,$5e52,$5e52,$7fff	; ( 0 )
		DW	$4c83,$0000,$0000,$0000	; ( 1 )
		DW	$4c83,$0000,$0000,$0000	; ( 2 )
		DW	$4c83,$0000,$0000,$0000	; ( 3 )
		DW	$4c83,$0000,$7d26,$7e71	; ( 4 )
		DW	$4c83,$0000,$0000,$0000	; ( 5 )
		DW	$4c83,$0000,$0000,$0000	; ( 6 )
		DW	$7d68,$0e39,$33ff,$7fff	; ( 7 )
; �� �n�a�i�F fine_4.col ��
		DW	$7d68,$2c88,$1f33,$7fff	; ( 0 )
		DW	$7fff,$7fff,$7fff,$7fff	; ( 1 )
		DW	$7fff,$7fff,$7fff,$7fff	; ( 2 )
		DW	$7fff,$7fff,$7fff,$7fff	; ( 3 )
		DW	$7fff,$7fff,$7fff,$7fff	; ( 4 )
		DW	$7fff,$7fff,$7fff,$7fff	; ( 5 )
		DW	$7fff,$7fff,$7fff,$7fff	; ( 6 )
		DW	$7eb3,$0000,$27fe,$7fff	; ( 7 )

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�G���f�B���O�i �d�O�`���O�b�F�����N�Ղ��Ղ� �O���� �j		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_ENDCHB
; �� �a�f�F fine_6.col ��
		DW	$7d68,$5e52,$5e52,$7fff	; ( 0 )
		DW	$4c83,$0000,$121f,$1915	; ( 1 )
		DW	$046b,$0000,$1915,$4b1f	; ( 2 )
		DW	$4c83,$0000,$3228,$4b1f	; ( 3 )
		DW	$4c83,$0000,$7d26,$7e71	; ( 4 )
		DW	$1915,$0000,$21bf,$4b1f	; ( 5 )
		DW	$4c83,$0000,$046b,$1915	; ( 6 )
		DW	$4c83,$0000,$1915,$4b1f	; ( 7 )
; �� �n�a�i�F fine_6.col ��
		DW	$00e0,$0000,$7d68,$7fff	; ( 0 )
		DW	$00e0,$3100,$121f,$3228	; ( 1 )
		DW	$00e0,$3228,$121f,$27fe	; ( 2 )
		DW	$00e0,$4c83,$7fff,$7fff	; ( 3 )
		DW	$00e0,$0000,$1915,$4b1f	; ( 4 )
		DW	$00e0,$21bf,$121f,$7fff	; ( 5 )
		DW	$00e0,$1915,$121f,$27fe	; ( 6 )
		DW	$00e0,$3100,$21bf,$3228	; ( 7 )

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�G���f�B���O�i �d�O�c���P�Q�F�����N�Ղ��Ղ� ������ �j		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_ENDCHD
; �� �a�f�F fine_7.col ��
		DW	$7d68,$5e52,$5e52,$7fff	; ( 0 )
		DW	$4c83,$0000,$0000,$0000	; ( 1 )
		DW	$4c83,$0000,$0000,$0000	; ( 2 )
		DW	$4c83,$0000,$0000,$0000	; ( 3 )
		DW	$4c83,$0000,$7d26,$7e71	; ( 4 )
		DW	$4c83,$0000,$0000,$0000	; ( 5 )
		DW	$4c83,$0000,$0000,$0000	; ( 6 )
		DW	$7d68,$0e39,$33ff,$7fff	; ( 7 )
; �� �n�a�i�F fine_7.col ��
		DW	$4cc5,$7fff,$56ab,$41e0	; ( 0 )
		DW	$7eb3,$0000,$3100,$3228	; ( 1 )
		DW	$7eb3,$0000,$121f,$27fe	; ( 2 )
		DW	$7eb3,$0000,$21bf,$4b1f	; ( 3 )
		DW	$7eb3,$0000,$046b,$1915	; ( 4 )
		DW	$7eb3,$0000,$1915,$4b1f	; ( 5 )
		DW	$7eb3,$7fff,$7fff,$7fff	; ( 6 )
		DW	$7eb3,$0000,$27fe,$7fff	; ( 7 )

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�G���f�B���O�i �d�P�R�F�����N�΂� �j				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_ENDCHE
; �� �a�f�F fine_8.col ��
		DW	$7d68,$5e52,$5e52,$7fff	; ( 0 )
		DW	$4c83,$0000,$0000,$0000	; ( 1 )
		DW	$4c83,$0000,$0000,$0000	; ( 2 )
		DW	$4c83,$0000,$0000,$0000	; ( 3 )
		DW	$4c83,$0000,$7d26,$7e71	; ( 4 )
		DW	$4c83,$0000,$0000,$0000	; ( 5 )
		DW	$4c83,$0000,$0000,$0000	; ( 6 )
		DW	$7d68,$0e39,$33ff,$7fff	; ( 7 )
; �� �n�a�i�F fine_8.col ��
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
;x	�G���f�B���O�i �d�P�S���P�T�F�����N�Ղ��Ղ� ������ �j		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_ENDCHF
; �� �a�f�F fine_9.col ��
		DW	$7d68,$5e52,$5e52,$7fff	; ( 0 )
		DW	$4c83,$0000,$0000,$0000	; ( 1 )
		DW	$4c83,$0000,$0000,$0000	; ( 2 )
		DW	$4c83,$0000,$0000,$0000	; ( 3 )
		DW	$4c83,$0000,$7d26,$7e71	; ( 4 )
		DW	$4c83,$0000,$0000,$0000	; ( 5 )
		DW	$4c83,$0000,$0000,$0000	; ( 6 )
		DW	$7d68,$0e39,$33ff,$7fff	; ( 7 )
; �� �n�a�i�F fine_9.col ��
;;;;;;;		DW	$4cc5,$0000,$3228,$4b1f	; ( 0 )
		DW	$4cc5,$0000,$3228,$7fff	; ( 0 ) �����𔒂�
		DW	$7eb3,$4b1f,$3100,$3228	; ( 1 )
		DW	$7eb3,$0000,$121f,$1915	; ( 2 )
		DW	$7eb3,$0000,$4b1f,$1915	; ( 3 )
		DW	$7eb3,$0000,$046b,$1915	; ( 4 )
		DW	$7eb3,$0000,$41e0,$7fff	; ( 5 )
		DW	$7eb3,$7c0f,$38df,$02b5	; ( 6 )
		DW	$7eb3,$0000,$7d68,$7fff	; ( 7 )

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�G���f�B���O�i�f�j						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_ENDCHG
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�G���f�B���O A�i ��z�V�[���F���������j				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_ENDCHA1
; �� �a�f�F kaiso_1.col ��
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )
		DW	$47ff,$1419,$100a,$0000	; ( 2 )
		DW	$47ff,$11d9,$10ce,$0000	; ( 3 )
		DW	$47ff,$7cc3,$2c00,$0000	; ( 4 )
		DW	$11d9,$26c4,$1521,$0000	; ( 5 )
		DW	$47ff,$12ec,$15a6,$0000	; ( 6 )
		DW	$47ff,$7c75,$3c07,$0000	; ( 7 )
; �� �n�a�i�F objcol_c.col ��
		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )
		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )
		DW	$7fff,$0000,$143f,$46ff	; ( 2 )
		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )
		DW	$7fff,$1adf,$187d,$0000	; ( 4 )
		DW	$7fff,$7eae,$7c00,$0000	; ( 5 )
		DW	$47ff,$26c4,$1521,$0000	; ( 0 )BG
		DW	$47ff,$51f3,$2867,$0000	; ( 1 )BG

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�G���f�B���O A�i �d�O�R�F���܂��R���i �j			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_ENDCHYM
; �� �a�f�F fine_2.col ��
		DW	$7e6f,$5e52,$5e52,$7fff	; ( 0 )
		DW	$7e6f,$0000,$0000,$0000	; ( 1 )
		DW	$7e6f,$4e0b,$5ebe,$7fff	; ( 2 )
		DW	$7e6f,$1d86,$4e0b,$5ebe	; ( 3 )
		DW	$4c83,$0000,$7d26,$7e71	; ( 4 )
		DW	$7e6f,$0000,$0000,$0000	; ( 5 )
		DW	$7e6f,$0000,$0000,$0000	; ( 6 )
		DW	$7e6f,$0000,$0000,$0000	; ( 7 )
; �� �n�a�i�F fine_0.col ��
		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )���
		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )�ӂ��낤
		DW	$7fff,$0000,$143f,$46ff	; ( 2 )���b�Z�[�W���
		DW	$0000,$6ffe,$6ffe,$6ffe	; ( 3 )
		DW	$0000,$6ffe,$6ffe,$6ffe	; ( 4 )
		DW	$0000,$6ffe,$6ffe,$6ffe	; ( 5 )
		DW	$0000,$03ff,$0273,$01ce	; ( 6 )��
		DW	$0000,$1b9b,$4590,$30a9	; ( 7 )�䁕�͂���

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�G���f�B���O A2�i �d�O�O���O�Q�F�����N���� �j			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_ENDCHA2
; �� �a�f�F fine_0.col ��
		DW	$0000,$62e8,$41e8,$73fe	; ( 0 )
		DW	$0000,$2f06,$1a61,$73fe	; ( 1 )
		DW	$0000,$02b5,$15ef,$73fe	; ( 2 )
		DW	$0000,$519f,$3115,$73fe	; ( 3 )
		DW	$0000,$44da,$2cd0,$73fe	; ( 4 )
		DW	$0000,$6556,$44cf,$73fe	; ( 5 )
		DW	$0000,$7190,$7d09,$73fe	; ( 6 )
		DW	$0000,$1a3f,$1193,$73fe	; ( 7 )
; �� �n�a�i�F fine_0.col ��
		DW	$47ff,$0000,$22a2,$46ff	; ( 0 )���
		DW	$47ff,$0000,$05ff,$46ff	; ( 1 )�ӂ��낤
		DW	$7fff,$0000,$143f,$46ff	; ( 2 )���b�Z�[�W���A��񂭐�
		DW	$7fff,$0000,$7e03,$46ff	; ( 3 )��񂭐�
		DW	$0000,$6ffe,$6ffe,$6ffe	; ( 4 )
		DW	$0000,$6ffe,$6ffe,$6ffe	; ( 5 )
		DW	$0000,$03ff,$0273,$01ce	; ( 6 )��
		DW	$0000,$1b9b,$4590,$30a9	; ( 7 )�䁕�͂���


;------------------------------------------------------------------------
		END
;------------------------------------------------------------------------
;
