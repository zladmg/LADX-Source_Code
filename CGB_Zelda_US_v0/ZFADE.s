
		onbankgroup

;****************************************************************
;*								*
;*	�^�C�g��    �F	�b�f�a�[���_				*
;*	�t�@�C����  �F	ZFADE.S					*
;*	�������e    �F	�t�F�[�h�֌W				*
;*	�쐬���t    �F  �P�X�X�W�^�O�U�^�Q�S			*
;*								*
;****************************************************************
;
	NLIST
;
;============== �o���N�P ========================================
BANK1		GROUP	1
;-------------<	ZS1 >-------------
		EXTERN	OPAF
;
;================================================================
		PUBALL
;
BANK20	GROUP	$20
;
	LIB	ZRAM	; RAM �d�p�t�`�s�d �t�@�C��
	LIB	ZBN	; BG unit no file !
;
;----------------------------------------------------------------
	KANJI
	ISDMG
;
;(CGB)	ORG	$5000
	LIST
;
;
;+--------------------------------------------------------------+
;|	�I�[�v�j���O�̃z���C�g�A�E�g				|
;|		�h�m						|
;|			�d<-�J�E���^				|
;|		�g�p���W�X�^					|
;|			�`,�a,�b,�c,�g,�k			|
;|		�g�p���[�N�q�`�l				|
;|			work0,1,2				|
;+--------------------------------------------------------------+
OpenRedData	EQU	$001
OpenGreenData	EQU	$002
OpenBlueData	EQU	$004
;
OpenWhiteOut
		LD	A,(CGBFLG)
		AND	A		;�b�f�a���[�h�H
		jp	Z,OWIL_END		;	NO --> RET
		LD	A,E
		CP	$003
		RET	C
		LD	A,OpenRedData
		LD	(WORKD),A
		LD	A,OpenGreenData
		LD	(WORKE),A
		LD	A,OpenBlueData
		LD	(WORKF),A
		LD	HL,CGWORK
		LD	D,$040
		LD	A,E
		CP	$006
		JR	NC,OWOL_050
		LD	D,$028
;
OWOL_050
		AND	%00010000
		JR	Z,OpenWhiteOutLoop
		LD	A,(WORKD)
		SLA	A
		LD	(WORKD),A
		LD	A,(WORKE)
		SLA	A
		LD	(WORKE),A
		LD	A,(WORKF)
		SLA	A
		LD	(WORKF),A
;
OpenWhiteOutLoop
		PUSH	HL
;
		LD	A,(WORKD)	;��
		LD	C,A
		LD	A,(HL)
		AND	%00011111
		ADD	A,C
		CP	%00100000
		JR	C,OWOL_100
		LD	A,%00011111
OWOL_100
		LD	(WORK0),A
;
		LD	A,(WORKE)	;��
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
		JR	C,OWOL_200
		LD	A,%00111110
OWOL_200
		LD	(WORK1),A
;
		LD	A,(WORKF)	;��
		LD	C,A
		LD	A,(HL)
		AND	%01111100
		ADD	A,C
		CP	%10000000
		JR	C,OWOL_300
		LD	A,%01111100
OWOL_300
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
		LD	A,D
		AND	A
		JR	NZ,OpenWhiteOutLoop
;
		LD	A,COLDMA_BITFG
		LD	(CGDMAF),A	; �]���t���O�Z�b�g
		RET
;
;+--------------------------------------------------------------+
;|	�I�[�v�j���O�̃z���C�g�C��				|
;+--------------------------------------------------------------+
OpenWhiteIn
		LD	A,(CGBFLG)
		AND	A		;�b�f�a���[�h�H
		jp	z,OWIL_END	;	NO --> RET
		LD	A,E
		CP	$006
		RET	C
		LD	A,OpenRedData
		LD	(WORKD),A
		LD	A,OpenGreenData
		LD	(WORKE),A
		LD	A,OpenBlueData
		LD	(WORKF),A
		LD	HL,CGWORK
		LD	A,$40
		LD	(WORK3),A
		LD	A,E
		AND	%00010000
		JR	Z,OpenWhiteInLoop
		LD	A,(WORKD)
		SLA	A
		LD	(WORKD),A
		LD	A,(WORKE)
		SLA	A
		LD	(WORKE),A
		LD	A,(WORKF)
		SLA	A
		LD	(WORKF),A
;
OpenWhiteInLoop
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
		LD	A,(WORKD)	;��
		LD	C,A
		LD	A,E
		AND	%00011111
		LD	B,A
		LD	A,(HL)
		AND	%00011111
		CP	B
		JR	C,OWIL_130
		JR	Z,OWIL_130
		SUB	C
		JR	C,OWIL_130
		CP	B
		JR	NC,OWIL_150
OWIL_130
		LD	A,B
OWIL_150
		LD	(WORK0),A
;
		LD	A,E		;��
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
		JR	C,OWIL_230
		JR	Z,OWIL_230
		SUB	C
		JR	C,OWIL_230
		CP	B
		JR	NC,OWIL_250
OWIL_230
		LD	A,B
OWIL_250
		LD	(WORK1),A
;
		LD	A,(WORKF)	;��
		LD	C,A
		LD	A,D
		AND	%01111100
		LD	B,A
		LD	A,(HL)
		AND	%01111100
		CP	B
		JR	C,OWIL_330
		JR	Z,OWIL_330
		SUB	C
		JR	C,OWIL_330
		CP	B
		JR	NC,OWIL_350
OWIL_330
		LD	A,B
OWIL_350
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
		JP	NZ,OpenWhiteInLoop
;
		LD	A,COLDMA_BITFG
		LD	(CGDMAF),A	; �]���t���O�Z�b�g
;
OWIL_END
		XOR	A
		LD	(FADEMDFG),A
		RET
;
;+------------------------------------------------------+
;|	�q�f�a�Z�b�g					|
;+------------------------------------------------------+
OpenFlashSet
		LD	A,$002
		LD	(SVBK),A
		LD	A,(BC)
		OR	(HL)
		LD	E,A
		INC	BC
		INC	HL
		LD	A,(BC)
		OR	(HL)
		LD	D,A
		DEC	BC
		DEC	HL
		XOR	A
		LD	(SVBK),A
		LD	(HL),E
		INC	HL
		LD	(HL),D
		INC	HL
		RET
;
;+--------------------------------------------------------------+
;|	�I�[�v�j���O�f���̈�ȃt���b�V��			|
;|		�h�m						|
;|		�c�d�F�J�E���^					|
;+--------------------------------------------------------------+
OpenFlashData
		DW	%0000000000000000
		DW	%0001000010000100
		DW	%0011000110001100
		DW	%0001000010000100
;
OpenFlash
		LD	A,(CGBFLG)
		AND	A		;�b�f�a���[�h�H
		jp	Z,OWIL_END	;	NO --> RET
		LD	A,(OPWRK2)
		AND	A		;��� ���傭�����H
		JR	Z,OF_000	;	NO --> OF_000
		CP	$18
		JR	NC,OF_900
;
OF_000
		LD	HL,OpenFlashData
		SLA	E
		ADD	HL,DE
		PUSH	HL
		POP	BC
		LD	HL,CGWORK
		LD	A,$008
		LD	(WORK0),A
;
OpenFlashLoop
		CALL	OpenFlashSet	;�O�r�b�g��
		CALL	OpenFlashSet	;�P�r�b�g��
		CALL	OpenFlashSet	;�Q�r�b�g��
		INC	HL
		INC	HL
;
		LD	A,(WORK0)
		DEC	A
		AND	A
		LD	(WORK0),A
		JR	NZ,OpenFlashLoop
;
		LD	A,BGCOL_BITFG
		LD	(CGDMAF),A	; �]���t���O�Z�b�g
OF_900
		RET
;
;+----------------------------------------------+
;|	�I�[���z���C�g�Z�b�g���[�`��		|
;+----------------------------------------------+
AllWhiteSet
		LD	A,(CGBFLG)
		AND	A		;�b�f�a���[�h�H
		RET	Z		;	NO --> RET
		LD	HL,BGCGWK
		LD	BC,OBCGWK
		LD	D,$20
WhiteSetLoop
		LD	A,$FF
		LD	(HLI),A
		LD	(BC),A
		INC	BC
		LD	(HLI),A
		LD	(BC),A
		INC	BC
		DEC	D
		LD	A,D
		AND	A
		JR	NZ,WhiteSetLoop
		LD	A,COLDMA_BITFG
		LD	(CGDMAF),A
		LD	A,$001		;�t�F�[�h�C���t���O�n�m
		LD	(FADEMDFG),A
		RET
;
;+----------------------------------------------+
;|	�I�[���J���[�Z�b�g���[�`��		|
;+----------------------------------------------+
AllColorSet
		LD	A,(CGBFLG)
		AND	A		;�b�f�a���[�h�H
		jp	Z,OWIL_END	;	NO --> RET
		LD	C,$80
		LD	HL,CGWORK
COL_SET_LOOP
		LD	A,$002
		LD	(SVBK),A
		LD	B,(HL)
		XOR	A
		LD	(SVBK),A
		LD	(HL),B
		INC	HL
		DEC	C
		LD	A,C
		AND	A
		JR	NZ,COL_SET_LOOP
		LD	A,COLDMA_BITFG
		LD	(CGDMAF),A	; �]���t���O�Z�b�g
		XOR	A
		LD	(FADEMDFG),A
		RET
;
;+----------------------------------------------+
;|	�v���C���[�_�E�����̃J���[�Z�b�g���[�`��|
;+----------------------------------------------+
DownColorSet
		LD	A,(CGBFLG)
		AND	A		;�b�f�a���[�h�H
		JR	Z,DCS_PASS	;	NO --> DCS_PASS
		LD	HL,OBCGWK
		LD	A,(CLOTHFG)
		AND	A
		JR	Z,DCS_SET
		INC	A
		SLA	A
		SLA	A
		SLA	A
		LD	C,A
		LD	B,$000
		ADD	HL,BC
DCS_SET
		LD	B,$008
DCS_LOOP
		LD	A,$002
		LD	(SVBK),A
		LD	C,(HL)
		XOR	A
		LD	(SVBK),A
		LD	(HL),C
		INC	HL
		DEC	B
		LD	A,B
		AND	A
		JR	NZ,DCS_LOOP
DCS_PASS
		RET
;
;+--------------------------------------------------------------+
;|	�Q�[�����̃z���C�g�A�E�g				|
;+--------------------------------------------------------------+
WhiteOut
		LD	A,(CGBFLG)
		AND	A		;�b�f�a���[�h�H
		jp	Z,OWIL_END	;	NO --> RET
;
		LD	A,(SBCNT)
		AND	$001
		JR	Z,WhiteOut_100
		LD	A,OBJCOL_BITFG
		JR	WhiteOut_900
;
WhiteOut_100
		LD	A,OpenRedData*4
		LD	(WORKD),A
		LD	A,OpenGreenData*4
		LD	(WORKE),A
		LD	A,OpenBlueData*4
		LD	(WORKF),A
		LD	HL,CGWORK
		LD	D,$040
;
		CALL	OpenWhiteOutLoop
		LD	A,BGCOL_BITFG
WhiteOut_900
		LD	(CGDMAF),A	; �]���t���O�Z�b�g
		RET
;
;+--------------------------------------------------------------+
;|	�Q�[�����̃z���C�g�C��					|
;+--------------------------------------------------------------+
WhiteIn
		LD	A,(CGBFLG)
		AND	A		;�b�f�a���[�h�H
		jp	Z,OWIL_END	;	NO --> RET
;
		LD	A,(SBCNT)
		AND	$001
		JR	Z,WhiteIn_100
		LD	A,OBJCOL_BITFG
		JR	WhiteIn_900
;
WhiteIn_100
		LD	A,OpenRedData*4
		LD	(WORKD),A
		LD	A,OpenGreenData*4
		LD	(WORKE),A
		LD	A,OpenBlueData*4
		LD	(WORKF),A
		LD	HL,CGWORK
		LD	A,$40
		LD	(WORK3),A
;
		CALL	OpenWhiteInLoop
;
		LD	A,BGCOL_BITFG
WhiteIn_900
		LD	(CGDMAF),A	; �]���t���O�Z�b�g
		RET
;
;+--------------------------------------------------------------+
;|	�b�f�a�p�I�J���i���[�v���̃t�F�[�h			|
;+--------------------------------------------------------------+
CGB_OKARINA_FADE
		LD	A,(WAVCNT4)
		CP	$020
		JR	Z,COF0080
;;;;;;		PUSH	AF		; erase
;;;;;;		AND	$003		; erase
		PUSH	AF
		AND	$002
		JR	NZ,TTTTTTTT
		LD	A,$001
TTTTTTTT
		OR	$080
		LD	(CGDMAF),A
;;;;;;		POP	AF		; erase
		ld	a,(wavcnt4)
		and	$01
		SWAP	A
		LD	(COLOFS),A
		LD	A,$10
		LD	(COLLNG),A
		POP	AF
		INC	A
		LD	(WAVCNT4),A
;
COF0068
		LD	A,OpenRedData*8
		LD	(WORKD),A
		LD	A,OpenGreenData*8
		LD	(WORKE),A
		LD	A,OpenBlueData*8
		LD	(WORKF),A
		LD	HL,CGWORK
		LD	A,$40
		LD	(WORK3),A
;;;;;;;;		LD	E,$008
		LD	A,(WAVFLG)
		CP	$03
		JR	Z,COF0078
;
		LD	A,(CGDMAF)	; �]���t���O�Z�b�g
		PUSH	AF
		CALL	OpenWhiteOut
		POP	AF
		LD	(CGDMAF),A	; �]���t���O�Z�b�g
		LD	A,$001
		LD	(FADEMDFG),A
		JR	COF0080
COF0078
		LD	A,(WAVCNT4)
		DEC	A
		AND	$003
		JR	NZ,COF0080
		LD	A,(CGDMAF)	; �]���t���O�Z�b�g
		PUSH	AF
;;;KK;;;		LD	A,OpenRedData*8
;;;KK;;;		LD	(WORKD),A
;;;KK;;;		LD	A,OpenGreenData*8
;;;KK;;;		LD	(WORKE),A
;;;KK;;;		LD	A,OpenBlueData*8
;;;KK;;;		LD	(WORKF),A
;;;KK;;;		LD	HL,CGWORK
;;;KK;;;		LD	A,$40
;;;KK;;;		LD	(WORK3),A
		CALL	OpenWhiteInLoop
		POP	AF
		LD	(CGDMAF),A	; �]���t���O�Z�b�g
COF0080
		RET
;
;;;;;;;;CGB_OKARINA_FADE
;;;;;;;;		LD	A,(WAVCNT4)
;;;;;;;;;;;;;;;;		CP	$0C
;;;;;;;;		CP	$010
;;;;;;;;		JR	Z,COF0080
;;;;;;;;		INC	A
;;;;;;;;		LD	(WAVCNT4),A
;;;;;;;;;
;;;;;;;;COF0068
;;;;;;;;		LD	E,$008
;;;;;;;;		LD	A,(WAVFLG)
;;;;;;;;		CP	$03
;;;;;;;;		JR	Z,COF0078
;;;;;;;;;
;;;;;;;;;;;;;;;;		CALL	OpenWhiteOut
;;;;;;;;		LD	A,$001
;;;;;;;;		LD	(FADEMDFG),A
;;;;;;;;		JR	COF0080
;;;;;;;;COF0078
;;;;;;;;		CALL	OpenWhiteIn
;;;;;;;;COF0080
;;;;;;;;		RET
;
;+------------------------------------------------------+
;|	�y�����������̃z���C�g�A�E�g			|
;+------------------------------------------------------+
GK_WhiteOut
		LD	A,(HL)
		DEC	A
		CP	$004			;�z���C�g�A�E�g�J�n�H
		JR	C,GK_WhiteOut_950	;	NO --> GK_WhiteOut_950
		LD	A,(FRCNT)
		AND	$001
		JR	Z,GK_WhiteOut_120
		LD	A,OBJCOL_BITFG
		JR	GK_WhiteOut_900
GK_WhiteOut_120
		LD	A,(HL)
		DEC	A
		CP	$00E			;�I�u�W�F���z���C�g�A�E�g�J�n�H
		JR	C,GK_WhiteOut_200	;	NO --> GK_WhiteOut_200
		LD	A,OpenRedData
		LD	(WORKD),A
		LD	A,OpenGreenData
		LD	(WORKE),A
		LD	A,OpenBlueData
		LD	(WORKF),A
		LD	HL,CGWORK+$20
		LD	D,$020
		CALL	OpenWhiteOutLoop
GK_WhiteOut_200
		LD	A,OpenRedData
		LD	(WORKD),A
		LD	A,OpenGreenData
		LD	(WORKE),A
		LD	A,OpenBlueData
		LD	(WORKF),A
		LD	HL,CGWORK
		LD	D,$020
		CALL	OpenWhiteOutLoop
;
		LD	A,BGCOL_BITFG
GK_WhiteOut_900
		LD	(CGDMAF),A	; �]���t���O�Z�b�g
GK_WhiteOut_950
		RET
;
;+------------------------------------------------------+
;|	���̃_���W�������N���A�������̃z���C�g�E�A�E�g	|
;|		���͒l					|
;|		�g�k�F���[�v�J�E���^�̂q�`�l�A�h���X	|
;+------------------------------------------------------+
FUKU_WhiteOut
		LD	E,$020
		LD	A,(HL)
		CP	$030
		JR	C,FK_White_040
		LD	HL,OBCGWK
		LD	A,OBJCOL_BITFG
		JR	FK_White_080
FK_White_040
		LD	HL,BGCGWK
		LD	A,BGCOL_BITFG
FK_White_080
		LD	(CGDMAF),A	; �]���t���O�Z�b�g
;
FK_White_LOOP
		PUSH	HL
		LD	A,(HL)
		INC	A
		AND	%00011111
		JR	NZ,FK_White_150
		LD	A,%00011111
FK_White_150
		LD	(WORK0),A
;
		LD	A,(HLI)
		AND	%11100000
		SWAP	A
		LD	D,A
		LD	A,(HL)
		AND	%00000011
		SWAP	A
		OR	D
		ADD	A,$002
		AND	%00111110
		JR	NZ,FK_White_250
		LD	A,%00111110
FK_White_250
		LD	(WORK1),A
;
		LD	A,(HL)
		ADD	A,$004
		AND	%01111100
		JR	NZ,FK_White_350
		LD	A,%01111100
FK_White_350
		LD	(WORK2),A
;
		POP	HL
		LD	A,(WORK0)
		LD	D,A
		LD	A,(WORK1)
		SWAP	A
		AND	%11100000
		OR	D
		LD	(HLI),A
		LD	A,(WORK2)
		LD	D,A
		LD	A,(WORK1)
		SWAP	A
		AND	%00000011
		OR	D
		LD	(HLI),A
		DEC	E
		JR	NZ,FK_White_LOOP
;
		RET
;
;===============================================================
	END
;
