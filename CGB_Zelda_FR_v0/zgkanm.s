
		onbankgroup

;****************************************************************
;*								*
;*	�^�C�g��    �F	�b�f�a�[���_				*
;*	�t�@�C����  �F	ZGKANM.S				*
;*	�������e    �F	�����̃A�j���[�V�����֌W		*
;*	�쐬���t    �F  �P�X�X�W�^�P�O�^�O�P			*
;*								*
;****************************************************************
;
	NLIST
;
;==============	�o���N�O ========================================
BANK0		GROUP	0
;-------------<	ZCO >-------------
		EXTERN	DATA_MOV
;
;================================================================
		PUBALL
;
BANK38	GROUP	$038
;
	LIB	ZRAM	; RAM �d�p�t�`�s�d �t�@�C��
;
;---------------------------------------------------------------
	KANJI
	ISDMG
;
	ORG	$7800
	LIST
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�J�������m�̃L�����N�^�[�u�q�`�l�Z�b�g			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
C_BOY_CHRADR
	DW	$4000,$4040,$4080,$40C0
	DW	$4100,$4140,$4180,$41C0
;
C_BOY_VRMADR
	DW	$8400,$8440,$8480,$84C0
	DW	$8700,$8740,$8780,$87C0
;
C_BOY_VRMADR2
	DW	$8400,$8440,$8480,$84C0
	DW	$8600,$8640,$8680,$86C0
;
;
C_BOY_CHR_SET
		LD	HL,C_BOY_VRMADR	;�]�����A�h���X
		LD	A,(GRNDPT)	;
		CP	$00D		;
		JR	NZ,C_BOY_CHR000	;
		LD	HL,C_BOY_VRMADR2
C_BOY_CHR000				;
		LD	A,(CHTRCT)	;
		DEC	A		;
		AND	$007		;
		SLA	A		;
		LD	C,A		;
		LD	B,$000		;
		ADD	HL,BC		;
		LD	A,(HLI)		;
		LD	D,(HL)		;
		LD	E,A		;
		LD	HL,C_BOY_CHRADR	;�]����A�h���X
		ADD	HL,BC		;
		LD	A,(HLI)		;
		LD	H,(HL)		;
		LD	L,A		;
		LD	BC,$0040	;�]���o�C�g��
		LD	A,:C_BOY_CHR_SET
		CALL	DATA_MOV
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�A�j���[�V�����L�����N�^�[�]���A�h���X			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
ANIME_TRNC
		LD	A,(MSGEFG)
		AND	A		;���b�Z�[�W�\�����H
		RET	NZ		;	YES --> return
		LD	A,(CGDMAF)
		AND	A		;�J���[�]�����悤�Ƃ��Ă�H
		RET	NZ		;	YES --> return
;
		LD	BC,$0000
;
ANM_TRNC_LOOP
		PUSH	BC
		LD	HL,G_MOTOBANK
		ADD	HL,BC
		LD	A,(HL)
		AND	A
		JR	Z,ANM_TRNC_PASS
		PUSH	BC
		SLA	C
		LD	HL,G_SAKI_ADR
		ADD	HL,BC
		LD	E,(HL)
		INC	HL
		LD	D,(HL)
		LD	HL,G_MOTO_ADR
		ADD	HL,BC
		LD	A,(HLI)
		LD	H,(HL)
		LD	L,A
		POP	BC
		PUSH	HL
		LD	HL,G_TR_CNT
		ADD	HL,BC
		LD	C,(HL)
		LD	B,$000
		POP	HL
		LD	A,:ANIME_TRNC
		CALL	DATA_MOV
ANM_TRNC_PASS
		POP	BC
		INC	BC
		LD	A,C
		AND	$003
		JR	NZ,ANM_TRNC_LOOP
		RET
;
;
;----------------------------------------------------------------
	END
;----------------------------------------------------------------
