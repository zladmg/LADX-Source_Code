
		onbankgroup

;==============	�o���N�O ================================================
BANK0		GROUP	0
;-------------<	ZCO >-------------
		EXTERN	DATA_MOV
;
;-------------<	ZMA >-------------
		EXTERN	PBSET,PBRETN,SOUND
		EXTERN	PBSET_CGB,Char_bank_set
		EXTERN	Unit_change
;
;-------------<	ZPL >-------------
		EXTERN	PMOVE,CHRTRSB,GRKEY5TR,KINOKOTR
;
;-------------<	ZES >-------------
		EXTERN	EINIT,ENIDSHL
;
;==============	�o���N�P ================================================
BANK1		GROUP	1
;-------------<	ZTI >-------------
		EXTERN	ENISSUB,ENBTCK,FKMSCKL
;
;-------------<	ZS1 >-------------
		EXTERN	SBHRSB,GMAPCDT,AMEDT,DMEXST
;
;==============	�o���N�Q ================================================
BANK2		GROUP	2
;-------------<	ZEX >-------------
		EXTERN	UFOBELT
;
;==============	�o���N�R ================================================
BANK3		GROUP	3
;-------------<	ZEN >-------------
		EXTERN	ENMDST2,TAMA0
;
;==============	�o���N�W ================================================
BANK8		GROUP	8
;-------------<	ZBD >-------------
		EXTERN	DJUNCH,GRBGCR
		EXTERN	DJUNCH2,DJBGCR2,DJUNCH_CGB
;
;============== �o���N�X ================================================
BANK9		GROUP	9
;-------------<	ZGB >-------------
                EXTERN  GRBGAD,GB01B2,GB02B2,GB00E2,GB0062,GB0792
;
;==============	�o���N�` ================================================
BANKA		GROUP	$0A
;-------------<	ZDB >-------------
		EXTERN	DJBGAD,DB0F52,NEWDJAD
;
;==============	�o���N�a ================================================
BANKB		GROUP	$0B
;-------------<	ZDB2 >-------------
		EXTERN	DJBGA2
;
;==============	�o���N�P�S ==============================================
BANK14		GROUP	$14
;-------------<	ZDB >-------------
		EXTERN	DJRMDT,DJNZDT,D7DAT2,DJTKDT
		EXTERN	NEWDJDAT,NEWDJNZ,NEWDJTK
;
;-------------<	ZEX >-------------
		EXTERN	DJRMSTS,DJRMRD_SUB
		EXTERN	DJTKCK_SUB,BGDTST_SUB
;
;==============	�o���N�P�U ==============================================
BANK16		GROUP	$16
;-------------< ZED >-------------
		EXTERN	GRENAD,DJENAD
		EXTERN	DJENAD2
;
;============== �o���N�P�` ==============================================
BANK1A          GROUP   $1A
;-------------< ZGB >-------------
                EXTERN  GB08C2
;
;-------------<	ZBDATR >-------------
		EXTERN	BgAtrAddress
;
;-------------<	ZMAP >-------------
		EXTERN	BGUNCH,BGUNCH_CGB
;
;============== �o���N�Q�O ==============================================
BANK20          GROUP   $20
;-------------< ZJP >-------------
		EXTERN	DJYKBK,DJKBBK,DJCABK
		EXTERN	DJKBBK2,NEWDJBK
;
;-------------< ZBS >-------------
                EXTERN  HABATAKI_SUB,RAMCLR_SUB
;
;-------------<	ZMAP >-------------
		EXTERN	CGB_MAP_SET
		EXTERN	DJYKBK,DJKBBK,DJCABK
;
;-------------<	ZPLSUB >-----------
		EXTERN	NEWDJ_COINBF_CLR,NEWDJ_COIN_CHK,NEWDJ_TEKI_CHR
		EXTERN	GMCHSB
;
;-------------<	ZEND2 >------------
		EXTERN	ENDMS_CHR_TRAN
;
;==============	�o���N�Q�P ==============================================
BANK21		GROUP	$21
;-------------< ZCOL >------------
		EXTERN	GAME_COLOR_SET
;
;==============	�o���N�Q�S ==============================================
BANK24		GROUP	$24
;-------------< ZATR >------------
		EXTERN	Dark_room_set,Ground_SPunit_set
;
;==============	�o���N�Q�V ==============================================
BANK27		GROUP	$27
;-------------< ZEND2 >-----------
		EXTERN	MARIN_CHR_TRAN
;
;============== �o���N�R�T ==============================================
BANK35		GROUP   $35
;-------------< ZGB >-------------
		EXTERN	FUKU_DJ_CHR,CAMERA_CHR
;
;============== �o���N�R�U ==============================================
BANK36		GROUP   $36
;-------------< ZE9 >-------------
		EXTERN	FukuDNJ_COL
;
;========================================================================
	PUBALL
;
BANK0	GROUP	0
;
	LIB	ZRAM
	LIB	ZBN
;
	PAGE
	KANJI
	isdmg
;
	LIST
;;CGB;;	ORG	$29B8
;==================================================
;==================================================
;==================================================
;==================================================
DJTKCK
	LD	A,$14
	LD	($2100),A
;
	CALL	DJTKCK_SUB
;
;;;KK;;;		LD	A,(DNJNNO)
;;;KK;;;		CP	NEWDJ		;�V�_���W�����i���o�[�H
;;;KK;;;		JR	NZ,DJTKCK_PASS	;	NO --> DJTKCK_PASS
;;;KK;;;		LD	HL,NEWDJTK
;;;KK;;;		JR	DJTKCK_SET
;;;KK;;;DJTKCK_PASS
;;;KK;;;;
;;;KK;;;	LD	HL,DJTKDT
;;;KK;;;DJTKCK_SET
;;;KK;;;	ADD	HL,DE
;;;KK;;;	LD	A,(HL)
	JP	PBRETN
;==================================================
;==================================================
;==================================================
HABATAKI
	LD	A,$20
	LD	($2100),A
	CALL	HABATAKI_SUB
	LD	A,(PBANK)
	LD	($2100),A
	RET
;;;;;;;;	LD	A,(HABACNT)
;;;;;;;;	AND	A
;;;;;;;;	JR	NZ,HABAT10
;;;;;;;;;
;;;;;;;;	LD	A,$2D
;;;;;;;;	LD	(SOUND3),A	;(S)
;;;;;;;;HABAT10
;;;;;;;;	RET
;==================================================
;OKWARPSTL	;�ӂ��낤���b�Z�[�W�Z�b�g�I
;	LD	A,$01
;	LD	($2100),A
;;
;	CALL	OKWARPST2
;;
;	JP	PBRETN
;==================================================
FKMSCK	;�ӂ��낤���b�Z�[�W�Z�b�g�I
	LD	A,$01
	LD	($2100),A
;
	CALL	FKMSCKL
;
	JP	PBRETN
;
;==================================================
BGCRRD_SUB
		LD	A,$08
		LD	($2100),A
;
		LD	HL,GRBGCR
		LD	A,(DNJNNO)
		CP	NEWDJ		;�V�_���W�����i���o�[�H
		JR	NZ,BGCR_PASS	;	NO --> BGCR_PASS
		LD	HL,DJBGCR2
BGCR_PASS
		ADD	HL,DE
		LD	A,(HL)
		RET
;
;==================================================
BGCRRD
	CALL	BGCRRD_SUB
	JP	PBRETN
;;;KK;;;	LD	A,$08
;;;KK;;;	LD	($2100),A
;;;KK;;;;
;;;KK;;;	LD	HL,GRBGCR
;;;KK;;;	ADD	HL,DE
;;;KK;;;	LD	A,(HL)
;;;KK;;;	JP	PBRETN
;==================================================
BGCRRD2	;	For ENBGCKL
	CALL	BGCRRD_SUB
;;;KK;;;	LD	A,$08
;;;KK;;;	LD	($2100),A
;;;KK;;;;
;;;KK;;;	LD	HL,GRBGCR
;;;KK;;;	ADD	HL,DE
;;;KK;;;	LD	A,(HL)
;
	PUSH	AF
;
	LD	A,$03
	LD	($2100),A
;
	POP	AF
	RET
;========================================================
ENDCHYM
	LD	A,$13
		CALL	Char_bank_set	; (CGB) �L�����N�^�[�o���N�Z�b�g
	LD	($2100),A
;
	LD	HL,CHRDAT+$2800
	LD	DE,CHRRAM+$1000
;
	LD	BC,$0800
	CALL   	DATA_MOV
;
	LD	HL,CHRDAT+$3000
	LD	DE,CHRRAM+$0800
;
	LD	BC,$0800
	JP     	DATA_MOV
;========================================================
ENDCHA2
	CALL	ENDCHA
;
	LD	DE,CHRRAM+$0400
	LD	HL,CHRDAT+$3600
	LD	BC,$0100
	JP  	DATA_MOV
;========================================================
ENDCHA
	LD	A,$13
		CALL	Char_bank_set	; �L�����N�^�[�o���N�Z�b�g
	LD	($2100),A
;
	LD	HL,CHRDAT+$0000
	LD	DE,CHRRAM+$0000
;
	LD	BC,$1800
	CALL  	DATA_MOV
;
	LD	A,$0C
		CALL	Char_bank_set	; �L�����N�^�[�o���N�Z�b�g
	LD	($2100),A	;�x�^
;
	LD	HL,CHRDAT+$17E0
	LD	DE,CHRRAM+$17F0
	LD	BC,$0010
	CALL  	DATA_MOV
;
	LD	A,$12
		CALL	Char_bank_set	; �L�����N�^�[�o���N�Z�b�g
	LD	($2100),A	;�����N
;
	LD	HL,CHRDAT+$3500
	LD	DE,CHRRAM+$0000
	LD	BC,$0040
	CALL  	DATA_MOV
;
	LD	DE,CHRRAM+$0D00
	LD	HL,CHRDAT+$3500
	LD	BC,$0200
	JP  	DATA_MOV
;========================================================
ENDCHA1
	LD	A,$0C
		CALL	Char_bank_set	; �L�����N�^�[�o���N�Z�b�g
	LD	($2100),A
;
	LD	HL,CHRDAT+$1000
	LD	DE,CHRRAM+$1000
;
	LD	BC,$0800
	CALL  	DATA_MOV
;
	LD	A,$12
		CALL	Char_bank_set	; �L�����N�^�[�o���N�Z�b�g
	LD	($2100),A
;
	LD	HL,CHRDAT+$2000
	LD	DE,CHRRAM+$0000
	LD	BC,$0800
	CALL  	DATA_MOV
;
	LD	A,$0F
		CALL	Char_bank_set	; �L�����N�^�[�o���N�Z�b�g
	LD	($2100),A
;
	LD	HL,CHRDAT+$2000
	LD	DE,CHRRAM+$0800
	LD	BC,$0800
	JP    	DATA_MOV
;============================================================
ENDCHB 
	LD	HL,CHRDAT+$0000
;(CGB)	JR	ENDCHB2S

		LD	A,(CGBFLG)
		AND	A		; �J���[�Q�[���{�[�C�H
		JR	Z,ENDCHB2S	; �m�n

		LD	HL,CHRDAT+$2800	; clza.cgx
		LD	A,$35		; 800 �`
		JR	ENDCHB2S_100
;========================================================
ENDCHC 
	LD	HL,CHRDAT+$0800
	JR	ENDCHB2S
;- - - - - - - - - - - - - - - - -
ENDCHB2
	LD	HL,CHRDAT+$2000
ENDCHB2S
	LD	A,$13
		CALL	Char_bank_set	; �L�����N�^�[�o���N�Z�b�g
ENDCHB2S_100
	LD	($2100),A
;
	LD	DE,CHRRAM+$0000
;
	LD	BC,$0800
	CALL  	DATA_MOV
;
		LD	A,$13		; �o���N���Z�b�g�I
		CALL	Char_bank_set	; �L�����N�^�[�o���N�Z�b�g
		LD	($2100),A
;
	LD	HL,CHRDAT+$1800
	LD	DE,CHRRAM+$0800
;
	LD	BC,$1000
	JP    	DATA_MOV
;========================================================
ENDCHF 
	CALL	SOUND
;
	LD	HL,CHRDAT+$2800
;
	LD	A,$10
	CALL	ENDCHDS2
;
	CALL	SOUND
;
	LD	A,$12
		CALL	Char_bank_set	; �L�����N�^�[�o���N�Z�b�g
	LD	($2100),A
;
	LD	HL,CHRDAT+$2600
	LD	DE,CHRRAM+$0000
;
	LD	BC,$0080
	CALL  	DATA_MOV		; �����߂܂��
;
	CALL	SOUND
;
;(CGB)	LD	A,$0C
;(CGB)	LD	($2100),A
;(CGB);
;(CGB)	LD	HL,CHRDAT+$0220
;(CGB)	LD	DE,CHRRAM+$0100
;(CGB);
;(CGB)	LD	BC,$0020
;(CGB)	JP    	DATA_MOV

		LD	A,(CGBFLG)
		AND	A
		JR	NZ,ENDCHF_100

		LD	A,$10		; clz5.cgx
		LD	($2100),A	; 2900 �`
		LD	HL,CHRDAT+$2900
		LD	DE,CHRRAM+$0100
		LD	BC,$0700
		JP	DATA_MOV
ENDCHF_100
		LD	A,$38		; clza.cgx
		LD	($2100),A	; 2000 �`
		LD	HL,CHRDAT+$1000
		LD	DE,CHRRAM+$0000
		LD	BC,$0800
		JP	DATA_MOV
;========================================================
ENDCHG 
;========================================================
ENDCHE 
	LD	HL,CHRDAT+$3800
;(CGB)	JR	ENDCHDS

		LD	A,(CGBFLG)
		AND	A
		JR	Z,ENDCHDS

		LD	HL,CHRDAT+$3800	; clza.cgx
		LD	A,$35		; 1800 �`
		JR	ENDCHDS2_100
;========================================================
ENDCHD 
	LD	HL,CHRDAT+$0800

		LD	A,(CGBFLG)
		AND	A		; �J���[�Q�[���{�[�C�H
		JR	Z,ENDCHDS	; �m�n

		LD	HL,CHRDAT+$3000	; clza.cgx
		LD	A,$35		; 1000 �`
		JR	ENDCHDS2_100

ENDCHDS 
	LD	A,$13
ENDCHDS2 
		CALL	Char_bank_set	; �L�����N�^�[�o���N�Z�b�g
ENDCHDS2_100
	LD	($2100),A
;
	LD	DE,CHRRAM+$0000
;
	LD	BC,$0800
	CALL  	DATA_MOV
;
	LD	A,$13
		CALL	Char_bank_set	; �L�����N�^�[�o���N�Z�b�g
	LD	($2100),A
;
	LD	HL,CHRDAT+$3000
	LD	DE,CHRRAM+$0800
;
	LD	BC,$0800
	CALL  	DATA_MOV
;
	LD	HL,CHRDAT+$2800
	LD	DE,CHRRAM+$1000
;
	LD	BC,$0800
	JP    	DATA_MOV
;;=====================================
;;=====================================
;;=====================================
;YADT
;	DB	%00000000,%00000000
;	DB	%00000000,%00000000
;	DB	%00000000,%00000000
;	DB	%00000000,%00000000
;	DB	%11111110,%11111110
;	DB	%01111100,%01111100
;	DB	%00111000,%00111000
;	DB	%00010000,%00010000
;;
;	DB	%00000000,%00000000
;	DB	%00000000,%00000000
;	DB	%00000000,%00000000
;	DB	%00000000,%00000000
;	DB	%00000000,%00000000
;	DB	%00000000,%00000000
;	DB	%00000000,%00000000
;	DB	%00000000,%00000000
;MZDATA
 ; DB  $00,$20,$20,$60,$20,$E0,$40,$B0,$50,$BC,$2C,$5F,$1B,$27,$03,$0C
;  DB  $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
;  DB  $00,$20,$20,$60,$20,$E0,$40,$F0,$50,$EC,$2C,$73,$1B,$3C,$03,$0F
;  DB  $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
;
;SBICDT
;	DB	%00000000,%00000000
;	DB	%00000000,%00000000
;	DB	%00000100,%00000100
;	DB	%00000100,%00000100
;	DB	%10000000,%10000000
;	DB	%01000000,%01000000
;	DB	%00000000,%00000000
;	DB	%00000000,%00000000
;
;	DB	%00000000,%00000000
;	DB	%00000000,%00000000
;	DB	%00000000,%00000000
;	DB	%00000000,%00000000
;	DB	%00000000,%00000000
;	DB	%00000000,%00000000
;	DB	%00000000,%00000000
;	DB	%00000000,%00000000
;SBACDT
;	DB	%00001111,%00000000
;	DB	%00111111,%00000001
;	DB	%01111111,%00000111
;	DB	%11110011,%00001111
;	DB	%11111111,%00000000
;	DB	%01111111,%00101110
;	DB	%01111111,%00110110
;;	DB	%01111110,%00111101
;;
;	DB	%00111100,%00000011
;	DB	%00011111,%00001110
;	DB	%01111000,%00000000
;	DB	%01111111,%00100000
;	DB	%00110000,%00001111
;	DB	%00011110,%00000001
;	DB	%00011111,%00001100
;	DB	%00011110,%00000000
;;
;	DB	%11110000,%00000000
;	DB	%11111100,%10000000
;	DB	%11111110,%11100000
;	DB	%11001111,%11110000
;	DB	%11111111,%00000000
;	DB	%11111110,%01110100
;	DB	%11111110,%01101100
;	DB	%01111110,%10111100
;;
;	DB	%00111100,%11000000
;	DB	%11111000,%01110000
;	DB	%11111100,%11100000
;	DB	%11111110,%00001100
;	DB	%00011110,%11101100
;	DB	%00011100,%11100000
;	DB	%11110000,%00000000
;	DB	%01110000,%00000000
;
;
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
;TENDT
;	DB	%00000000,%00000000
;	DB	%00000000,%00000000
;	DB	%00000000,%00000000
;	DB	%00000000,%00000000
;	DB	%00000000,%00000000
;	DB	%00000000,%00000000
;	DB	%00000101,%00000101
;	DB	%00000101,%00000101
;MARUDT
;	DB	%11111111,%11111111
;	DB	%11111111,%11111111
;	DB	%11111111,%11111111
;	DB	%11111111,%11111111
;	DB	%11111111,%11111111
;	DB	%11111000,%11111000
;	DB	%11111010,%11111010
;	DB	%11111000,%11111000
;====================
DJRMRD
	PUSH	BC
;
	LD	A,$14
	LD	($2100),A
;
		CALL	DJRMRD_SUB
;
;;;CGB;;;	LD	HL,DJRMDT
;;;CGB;;;	LD	A,(DNJNNO)
;;;CGB;;;	CP	DJMAX+1
;;;CGB;;;	JR	NC,DRR0F0
;;;CGB;;;	SWAP	A
;;;CGB;;;	LD	C,A
;;;CGB;;;	LD	B,$00
;;;CGB;;;	SLA	C
;;;CGB;;;	RL	B
;;;CGB;;;	SLA	C
;;;CGB;;;	RL	B
;;;CGB;;;	ADD	HL,BC
;;;CGB;;;;
;;;CGB;;;	LD	A,(DNJNNO)
;;;CGB;;;	CP	$06
;;;CGB;;;	JR	NZ,D7CK10	;���x���V�H
;;;CGB;;;;				;YES!
;;;CGB;;;	LD	A,(WARPSV+$06)
;;;CGB;;;	AND	%00000100
;;;CGB;;;	JR	Z,D7CK10	;�͂��痎�����H
;;;CGB;;;;
;;;CGB;;;	LD	HL,D7DAT2	;YES !
;;;CGB;;;D7CK10
;;;CGB;;;	ADD	HL,DE
;;;CGB;;;	LD	A,(HL)
;;;CGB;;;	LD	E,A
;;;CGB;;;	LD	D,$00
;;;CGB;;;	LD	A,(DNJNNO)
;;;CGB;;;	CP	DJROOM2 ;$20
;;;CGB;;;	JR	NC,DRR010
;;;CGB;;;	CP	DJROOM ;$20
;;;CGB;;;	JR	C,DRR010
;;;CGB;;;	INC	D
;;;CGB;;;DRR010
;;;CGB;;;	LD	HL,DJRMSV
;;;CGB;;;	ADD	HL,DE
;;;CGB;;;DRR0F0
	CALL	PBRETN
	POP	BC
	RET
;****************************************
;*      Character bank set   �@     	*
;****************************************
BANKST
	LD	A,$C
;;	LD	($2100),A
;(CGB)	CALL	PBSET
	CALL	PBSET_CGB	; �L�����N�^�[�o���N�Z�b�g
;
	LD	HL,CHRDAT	; �킿�䂤�L�����N�^ �f�[�^
	LD	DE,CHRRAM	; �L�����N�^ �q�`�l ($8000 - $97FF)
	LD	BC,$0400	; �� 
	CALL	DATA_MOV	; �L�����N�^ �]��
;
	LD	A,$C
;;	LD	($2100),A
;(CGB)	CALL	PBSET
	CALL	PBSET_CGB	; �L�����N�^�[�o���N�Z�b�g
;
	LD	HL,CHRDAT+$0800	; �a�f���h�s�d�l�@�L�����N�^ �f�[�^
	LD	DE,CHRRAM+$0800	; �L�����N�^ �q�`�l ($8000 - $97FF)
	LD	BC,$1000	; �� 
	CALL	DATA_MOV	; �L�����N�^ �]��
;
	LD	HL,CHRDAT+$07A0 ;SENDT
	LD	DE,CHRRAM+$E00
	LD	BC,$0020
	CALL	DATA_MOV	; �L�����N�^ �]��
;
	LD	A,$01
	CALL	PBSET
;
	RET
;
;==========================================
BANKS2	; NAME REGI.
	CALL	BANKST
;
	LD	A,$0F
;(CGB)	CALL	PBSET
	CALL	PBSET_CGB	; �L�����N�^�[�o���N�Z�b�g
	LD	HL,CHRDAT+$0000
	LD	DE,CHRRAM+$0800
	LD	BC,$0400
	CALL	DATA_MOV	; �L�����N�^ �]��
;
	LD	A,$F
;(CGB)	CALL	PBSET
	CALL	PBSET_CGB	; �L�����N�^�[�o���N�Z�b�g
	LD	HL,CHRDAT+$1000
	LD	DE,CHRRAM+$1000
	LD	BC,$0800
	JP  	DATA_MOV	; �L�����N�^ �]��
;;	RET
;================================================
DJBKST
;- - ���o���N�Z�b�g - -
;;;CGB;;;	LD	A,$01
	LD	A,$20
	CALL	PBSET
;
	LD	HL,DJYKBK
	LD	A,(DNJNNO)
	LD	E,A
	LD	D,$00
;
		CP	NEWDJ		;�V�_���W�����H
		JR	NZ,DJBKST_000	;	NO --> DJBKST_000
		LD	A,$035
		LD	($2100),A
		LD	HL,FUKU_DJ_CHR+$200
		LD	DE,CHRRAM+$1000
		LD	BC,$100
		CALL	DATA_MOV	; �L�����N�^ �]��
		LD	E,$000
		LD	D,E
		LD	HL,FUKU_DJ_CHR
		PUSH	DE
		JR	DJBKST_050
DJBKST_000
;
	PUSH	DE
	ADD	HL,DE
	LD	H,(HL)
	LD	L,$0
;
	LD	A,$D
;(CGB)	CALL	PBSET
	CALL	PBSET_CGB	; �L�����N�^�[�o���N�Z�b�g
DJBKST_050
	LD	DE,CHRRAM+$1100
	LD	BC,$0100
	CALL	DATA_MOV	; �L�����N�^ �]��
;
;- - �풓�o���N�Z�b�g- -
	LD	A,$D
;(CGB)	CALL	PBSET
	CALL	PBSET_CGB	; �L�����N�^�[�o���N�Z�b�g
	LD	HL,CHRDAT+$0000
	LD	DE,CHRRAM+$1200
	LD	BC,$0600
	CALL	DATA_MOV	; �L�����N�^ �]��
;- - �ǃo���N�Z�b�g - - - 
;;;CGB;;;	LD	A,$01
	LD	A,$20
	LD	($2100),A
;
	POP	DE
	PUSH	DE
	LD	HL,DJKBBK
;
		LD	A,(DNJNNO)
		CP	NEWDJ		;�V�_���W�����H
		JR	NZ,DJBKST_100	;	NO --> DJBKST_100
		LD	HL,DJKBBK2
DJBKST_100
;
	ADD	HL,DE
	LD	H,(HL)
	LD	L,$00
;
	CALL	PBRETN
;
	LD	DE,CHRRAM+$1200
	LD	BC,$0200
	CALL	DATA_MOV	; �L�����N�^ �]��
;
	LD	A,$0C
		CALL	Char_bank_set	; �L�����N�^�[�o���N�Z�b�g
	LD	($2100),A
	LD	HL,CHRDAT+$07C0
	LD	DE,BELTBF	; BELTCONV data set !
	LD	BC,$0040
	CALL	DATA_MOV	; �L�����N�^ �]��
;
	CALL	MZCHTR	; Mizu chr & ITEM bank set !
;
;;;CGB;;;	LD	A,$1
	LD	A,$20
	LD	($2100),A
;- - �����グ���镨�Ȃǃo���N�Z�b�g- - 
	POP	DE
	LD	HL,DJCABK
;
	ADD	HL,DE
	LD	H,(HL)
	LD	L,$00
;
	LD	A,$12 ;D
;(CGB)	CALL	PBSET
	CALL	PBSET_CGB	; �L�����N�^�[�o���N�Z�b�g
;
		LD	A,(DNJNNO)
		CP	NEWDJ		;�V�_���W�����H
		JR	NZ,DJBKST_200	;	NO --> DJBKST_200
		LD	HL,FUKU_DJ_CHR+$100
		LD	A,$035
		LD	($2100),A
DJBKST_200
;
	LD	DE,CHRRAM+$0F00
	LD	BC,$0100
	CALL	DATA_MOV	; �L�����N�^ �]��
;
	LD	A,(PBANK)
	LD	($2100),A
;
;- - �y�� or ���񂶂�񂠂��Ă� - -
	LD	HL,CHRDAT+$3D00 ;2000
;
	LD	A,(DNJNNO)
	CP	NEWDJ
	JR	Z,DKSS10
	CP	DJMAX ;$20
	JR	C,DKSS10
;
	LD	A,$C
;(CGB)	CALL	PBSET
	CALL	PBSET_CGB	; �L�����N�^�[�o���N�Z�b�g
;
	LD	HL,CHRDAT+$0C00
DKSS10
	LD	DE,CHRRAM+$0C00	; Item !!
	LD	BC,$0300
	CALL  	DATA_MOV	; �L�����N�^ �]��
;===== ����܂�D�܂����Ȃ��]��=======
ANMARI
	LD	A,(KINOKFG)
	AND	A
	JR	Z,ANM005
;
	CALL	KINOKOTR	; Kinoko item set!
ANM005
;	LD	A,(CLC20)
;	CP	$20
;	JR	C,ANM008
;;
;	CALL	RODTR	; Ken chip-> Rod CHR!
ANM008
	LD	A,(DJFLAG)
	AND	A
	JR	Z,ANM010
;
	LD	A,(DNJNNO)
	CP	NEWDJ
	JR	Z,ANM050
	CP	DJMAX ;$20
	JR	C,ANM050
ANM010
	LD	A,(GRKEY5)
	CP	$06
	JR	C,ANM030
;
	CALL	GRKEY5TR	; ���T��
ANM030
;;	RET
ANM050
	LD	A,(MEGAF)
	CP	$02		;0:Nashi 1:���b�V�[�͎n�߂��炢��I
	JR	C,ANM051
;
	LD	A,$0D
	LD	(CHTRF2),A	;��炵�׃A�C�e���]���I
ANM051
;;;	CALL	OGAKKITR	; OBJ �y��!
	RET
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%					           %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
BANKS3
GRBKST
	LD	A,$C
;;	LD	($2100),A
;(CGB)	CALL	PBSET
	CALL	PBSET_CGB	; �L�����N�^�[�o���N�Z�b�g
;
	LD	HL,CHRDAT+$1200
	LD	DE,CHRRAM+$1200
	LD	BC,$0600
	CALL	DATA_MOV	; �L�����N�^ �]��
;
	LD	HL,CHRDAT+$0C00
	LD	DE,CHRRAM+$0C00
	LD	BC,$0400
	CALL	DATA_MOV	; �L�����N�^ �]��
;TTTTTTTTTTT
	CALL	MZCHTR
	JP	ANMARI
;
MZCHTR
	XOR	A
	LD	(CHTRCT),A
	LD	(CHTRC2),A
	CALL	CHRTRSB
;TTTTTTTTTTT
	LD	A,$0C
		CALL	Char_bank_set	; �L�����N�^�[�o���N�Z�b�g
	LD	($2100),A
	LD	HL,CHRDAT+$0800	; I�s�d�l�@�L�����N�^ �f�[�^
	LD	DE,CHRRAM+$0800	; �L�����N�^ �q�`�l ($8000 - $97FF)
	LD	BC,$0800	; �� 
	CALL	DATA_MOV	; �L�����N�^ �]��
;
	LD	HL,CHRDAT+$0200
	LD	DE,CHRRAM+$0200
	LD	BC,$0100
	CALL	DATA_MOV	; �L�����N�^ �]��
	RET
;
;===========================================
OPBKST	; Opening Sea & mountain !
	LD	A,$01
	CALL	PBSET
;
	LD	HL,AMEDT	;�J�e�X�g
	LD	DE,CHRRAM+$0700
	LD	BC,$0080
	CALL	DATA_MOV	; �L�����N�^ �]��
;
	LD	A,$10
;(CGB)	CALL	PBSET
	CALL	PBSET_CGB	; �L�����N�^�[�o���N�Z�b�g
;
	LD	HL,CHRDAT+$1400
	LD	DE,CHRRAM+$0000
	LD	BC,$0600
	CALL	DATA_MOV	; �L�����N�^ �]��
;
	LD	HL,CHRDAT+$0000
	LD	DE,CHRRAM+$0800
	LD	BC,$1000
	JP	DATA_MOV	; �L�����N�^ �]��
;===========================================
OPBKS2	; Opening ZELDA logo set !
	LD	A,$0F
;;	LD	A,$0C
;(CGB)	CALL	PBSET
	CALL	PBSET_CGB	; �L�����N�^�[�o���N�Z�b�g
;
	LD	HL,CHRDAT+$0900
;;	LD	HL,CHRDAT+$3800
	LD	DE,CHRRAM+$0800
	LD	BC,$0700
;(CGB)	JP  	DATA_MOV	; �L�����N�^ �]��
		CALL  	DATA_MOV	; �L�����N�^ �]��
;
		LD	A,$38
		CALL	PBSET
;
		LD	A,(CGBFLG)
		AND	A
		JR	NZ,OPBKS2_100

		LD	HL,CHRDAT+$1C00	; �f�a�p
		JR	OPBKS2_110
OPBKS2_100
		LD	HL,CHRDAT+$1800	; �b�f�a�p
OPBKS2_110
		LD	DE,CHRRAM+$0400
		LD	BC,$0400
		CALL  	DATA_MOV	; �c�w �L�����N�^ �]��

		LD	A,(CGBFLG)
		AND	A
		JR	NZ,OPBKS2_200

		LD	HL,CHRDAT+$2600	; �f�a�p
		JR	OPBKS2_210
OPBKS2_200
		LD	HL,CHRDAT+$2500	; �b�f�a�p
OPBKS2_210
		LD	DE,CHRRAM+$0200
		LD	BC,$0100
		JP	DATA_MOV
;===========================================
GMAPBKST
	LD	A,$C
;(CGB)	CALL	PBSET
	CALL	PBSET_CGB	; �L�����N�^�[�o���N�Z�b�g
;
	LD	HL,CHRDAT+$3800
	LD	DE,CHRRAM+$0F00
	LD	BC,$0800
	CALL	DATA_MOV	; �L�����N�^ �]��
;
;;	LD	A,$C
;;	CALL	PBSET
;
	LD	HL,CHRDAT+$1000
	LD	DE,CHRRAM+$0200
	LD	BC,$0100
	JP	DATA_MOV	; �L�����N�^ �]��
;;	RET
;===========================================
KAB1BKST	;������ǉ�!
	LD	HL,CHRDAT+$3000
	JR	PEBKSS
;===========================================
KABABKST	;�J�o�̊G!
	LD	HL,CHRDAT+$3800
	JR	PEBKSS
PEACHBKST	;�s�[�`�ʐ^!
	LD	HL,CHRDAT+$1800
PEBKSS
	LD	A,$10
;(CGB)	CALL	PBSET
	CALL	PBSET_CGB	; �L�����N�^�[�o���N�Z�b�g
;
	LD	DE,CHRRAM+$1000
;
	LD	BC,$0800
	JP  	DATA_MOV	; �L�����N�^ �]��
;===========================================
TOUBGCH	;�V���f���I
	LD	A,$13
		CALL	Char_bank_set	; �L�����N�^�[�o���N�Z�b�g
	LD	($2100),A
;
	LD	HL,CHRDAT+$3C00
	LD	DE,CHRRAM+$0C00
	LD	BC,$0400
	CALL	DATA_MOV
;
	LD	HL,CHRDAT+$2800
	LD	DE,CHRRAM+$1000
	LD	BC,$0400
	JP  	DATA_MOV
;===========================================
LOVEBKST	;�C�ݔM���f���I
	LD	A,$10
;(CGB)	CALL	PBSET
	CALL	PBSET_CGB	; �L�����N�^�[�o���N�Z�b�g
;
	LD	HL,CHRDAT+$2700
	LD	DE,CHRRAM+$0400
	LD	BC,$0400
	CALL  	DATA_MOV	; �L�����N�^ �]��
;
	LD	HL,CHRDAT+$2000
	LD	DE,CHRRAM+$1000
	LD	BC,$0600
	JP  	DATA_MOV	; �L�����N�^ �]��
;
;===========================================
GOVBKST
	LD	A,$F
	CALL	PBSET
;
	LD	HL,CHRDAT+$0400
	LD	DE,CHRRAM+$0800
	LD	BC,$0500
	JP	DATA_MOV	; �L�����N�^ �]��
;;	RET
; Room in out use character bank initial  ==
;===========================================
;  40-7F  :11
;  80-BF  :0E
;  C0-FF  :12
BKTRBD
	DB	00,$11,$0E,$12
;
BANKTR
	LD	A,(DNJNNO)
	CP	NEWDJ		;�V�_���W�����H
	JR	NZ,BKTR10_PASS	;	NO --> BKTR10_PASS
	LD	A,:NEWDJ_TEKI_CHR
	LD	($2100),A
	CALL	NEWDJ_TEKI_CHR
	JP	BG_INIT_SET
;
BKTR10_PASS
	XOR	A
BKTR10
	LD	(WORK0),A
;
	LD	HL,EBANK0
	LD	E,A
	LD	D,$0
;
	ADD	HL,DE
;
	AND	A
	JR	NZ,MATR10
;
	LD	A,(DJFLAG)
	AND	A
	JR	Z,MATR0F
;
	LD	A,(YKFLAG)
	AND	A
	JR	NZ,MATR10
;
	LD	A,(DNJNNO)
	CP	$14	;��I
	JR	Z,MATR10
	CP	DJMAX
	JR	C,MATR10
;
	LD	A,(GRNDPT)
	CP	$FD
	JR	Z,MATR10	;�}���{�E���[���I
	CP	$B1
	JR	Z,MATR10	;�ނ�ڂ�I
;
MATR0F
	LD	A,(WANFLG)
	CP	$01		;���������A��Ă���H
	LD	A,$A4
	JR	Z,MATR101	;	YES --> MATR101
;
	LD	A,(OBAKEFG)
	AND	A		;�I�o�P�A��Ă���H
	LD	A,$D8
	JR	NZ,MATR101	;	YES --> MATR101
;
	LD	A,(NIWATFG)
	AND	A		;�j���g���A��Ă���H
	LD	A,$DD
	JR	NZ,MATR101	;	YES --> MATR101
;
	LD	A,(MARINFG)
	AND	A		;�}�����A��Ă���H
	JR	Z,MATR10	;	NO --> MATR10
;
OBKTRS
;
MATR100
	LD	A,$8F
MATR101
	JR	MATR11
MATR10
	LD	A,(HL)
MATR11
		AND	A
		JR	Z,ECHR_PASS
	PUSH	AF
;
	AND	$3F
	LD	B,A
	LD	C,$00
;
;  40-7F  :11
;  80-BF  :0E
;  C0-FF  :12
;
	POP	AF
;
	SWAP	A
	RRA
	RRA
	AND	%00000011
	LD	E,A
	LD	D,$00
	LD	HL,BKTRBD
;
	ADD	HL,DE
	LD	A,(HL)
		AND	A		; �L�����N�^�[�]������H
		JR	Z,EBTR23	; �m�n
		CALL	Char_bank_set	; �L�����N�^�[�o���N�Z�b�g
EBTR23
	LD	($2100),A
;
	LD	A,(WORK0)
	LD	D,A
	LD	E,$0
;
	LD	HL,CHRRAM+$0400
	ADD	HL,DE
		ld	e,l
		ld	d,h
;;;11/03	PUSH	HL
;;;11/03	POP	DE
;
	LD	HL,CHRDAT+$0000
	ADD	HL,BC
;
	LD	BC,$0100
	CALL	DATA_MOV
;
ECHR_PASS
	LD	A,(WORK0)
	INC	A
	CP	$4
	JP	NZ,BKTR10
;
;==BG=================================
BG_INIT_SET
	LD	DE,CHRRAM+$1000	; �L�����N�^ �q�`�l 
;
	LD	A,(DJFLAG)
	AND	A		; �n��H
	JP	Z,BGB010	; �x�d�r
;
	LD	A,$0D
		CALL	Char_bank_set	; �L�����N�^�[�o���N�Z�b�g
	LD	($2100),A
;
	LD	A,(YKFLAG)
	AND	A
	JR	Z,BBTR10
;
SBAHARA
	LD	HL,CHRDAT+$3000+$0000	;A
;
	LD	A,(DNJNNO)
	CP	$06
	JR	Z,SBHR100
	CP	DJMAX
	JR	NC,SBHR080
;
SBHR070
	LD	HL,CHRDAT+$3000+$0800	;B
	JR	SBHR100
SBHR080
	LD	A,(GRNDPT)
	CP	$E9
	JR	Z,SBHR070
SBHR100
	LD	DE,CHRRAM+$1000
	LD	BC,$0800	; �� 
	CALL	DATA_MOV	; �L�����N�^ �]��
	RET
BBTR10
		LD	A,(DNJNNO)
		CP	NEWDJ		;�V�_���W�����H
		JR	NZ,BBTR10_PASS	;	YES --> BBTR10_PASS
		LD	A,(GRNDPT)
		CP	$012
		JR	NZ,BBTR11
BBTR10_PASS
;
	LD	HL,CHRDAT+$1000	; �a�f�L�����N�^���ꊷ�� �f�[�^
;
	LD	A,(BKCHNO)
	CP	$FF
	JR	Z,BBTR11
	ADD	A,$50
	LD	H,A
;
	LD	BC,$0100	; �� 
BBTR10_PASS3
	CALL	DATA_MOV	; �L�����N�^ �]��
BBTR11
		LD	A,(DNJNNO)
		CP	$10
		JR	NZ,BBTR12
		LD	A,(GRNDPT)
		CP	$B5		; �J����������H
		JR	NZ,BBTR12	; �m�n

		LD	A,$35
		LD	($2100),A
		LD	HL,CAMERA_CHR	; �]����
		LD	DE,CHRRAM+$0F00	; �]����
		LD	BC,$0200	; ��
		CALL	DATA_MOV	; �L�����N�^ �]��

	RET
;-------------------------------------
;	���x���P �ǉ�
;-------------------------------------
BBTR12
		LD	A,(CGBFLG)
		AND	A
		RET	Z
		LD	A,(DNJNNO)
		AND	A
		RET	NZ

		LD	A,$35
		LD	($2100),A
		LD	HL,FUKU_DJ_CHR+$0e00	; �]����
		LD	DE,CHRRAM+$1690	; �]����
		LD	BC,$0010	; ��
		CALL	DATA_MOV	; �L�����N�^ �]��

		LD	HL,FUKU_DJ_CHR+$0e10	; �]����
		LD	DE,CHRRAM+$1790	; �]����
		LD	BC,$0010	; ��
		CALL	DATA_MOV	; �L�����N�^ �]��
		RET
;-------------------------------------
BGB010
	LD	A,$0F
		CALL	Char_bank_set	; �L�����N�^�[�o���N�Z�b�g
	LD	($2100),A
;
	LD	A,(BKCHNO)
	CP	$0F
	JR	Z,BBTR21
;
	ADD	A,$40
	LD	H,A
	LD	L,$00
;
	LD	BC,$0200	; �� 
	CALL	DATA_MOV	; �L�����N�^ �]��
BBTR21
	RET
;****************************************************************
;*	�a�f �f�|�^ �Z��ginitial				*
;****************************************************************
BG_InitSetSub
		LD	A,(HLI)
		LD	(DE),A
		INC	DE	
		LD	A,(HLI)
		LD	(DE),A
		RET
;
;
GbInitSub
		LD	A,(HL)
		LD	C,A
		LD	B,$00
		SLA	C
		RL	B
		SLA	C
		RL	B
		LD	HL,BGUNCH
;
		LD	A,(DNJNNO)
		CP	NEWDJ		;�V�_���W�����H
;NOT;		JR	NZ,RMBS20_PASS	;	NO --> RMBS20_PASS
		JR	Z,RMBS10_PASS	;	YES--> RMBS10_PASS

		CP	$10
		JR	NZ,RMBS20_PASS
		LD	A,(GRNDPT)
		CP	$B5		; �J�������H
		JR	NZ,RMBS20_PASS	; �m�n
RMBS10_PASS
		LD	HL,DJUNCH2
		JR	RMBS20
RMBS20_PASS
;
		LD	A,(DJFLAG)
		AND	A
		JR	Z,RMBS20
		LD	HL,DJUNCH
RMBS20
		ADD	HL,BC
		LD	A,(HLI)
		LD	(DE),A
		INC	DE	
		LD	A,(HLI)
		LD	(DE),A
;
		LD	A,E
		ADD	A,$1F
		LD	E,A
		LD	A,D
		ADC	A,$0
		LD	D,A
;
		LD	A,(HLI)
		LD	(DE),A
		INC	DE	
		LD	A,(HL)
		LD	(DE),A
		RET
;
;
;---------------------------------------
;	�n��V�l�`�o�p
;---------------------------------------
CgbInitSub2
		LD	A,$02
		LD	(SVBK),A	; �q�`�l�o���N�i�Q�j�Z�b�g
		LD	C,(HL)
		XOR	A
		LD	(SVBK),A	; �q�`�l�o���N�i�O�j�Z�b�g
		JR	CgbInitSub_100
;---------------------------------------

CgbInitSub
		LD	C,(HL)
CgbInitSub_100
		LD	B,$00
		SLA	C
		RL	B
		SLA	C
		RL	B
;
		LD	A,:BgAtrAddress
		LD	($2100),A
		CALL	BgAtrAddress
;NOT;		LD	A,$08
;NOT;		LD	($2100),A
		CALL	Unit_bank_set	; ���j�b�g�o���N�Z�b�g
;
		LD	A,(DJFLAG)
		AND	A		; �n��H
		JR	Z,CGB_RMBS10	; �x�d�r

		LD	HL,DJUNCH_CGB
		LD	A,(DNJNNO)
		CP	NEWDJ		;�V�_���W�����H
;NOT;		JR	NZ,CGB_RMBS20	;	NO --> CGB_RMBS20
		JR	Z,CGB_RMBS05	;	YES--> CGB_RMBS05

		CP	$10
		JR	NZ,CGB_RMBS20
		LD	A,(GRNDPT)
		CP	$B5		; �J�������H
		JR	NZ,CGB_RMBS20	; �m�n
CGB_RMBS05
		LD	HL,DJUNCH2
		JR	CGB_RMBS20
CGB_RMBS10
		LD	HL,BGUNCH_CGB
CGB_RMBS20
		PUSH	DE
		ADD	HL,BC
		CALL	BG_InitSetSub
		POP	DE
;
		PUSH	HL
		LD	A,(WORK8)
		LD	($2100),A
		LD	A,(WORK9)
		LD	H,A
		LD	A,(WORKA)
		LD	L,A
		LD	A,$001
		LD	(VBK),A
		CALL	BG_InitSetSub
		XOR	A
		LD	(VBK),A
;NOT;		LD	A,$8
;NOT;		LD	($2100),A
		CALL	Unit_bank_set	; ���j�b�g�o���N�Z�b�g
		LD	A,H
		LD	(WORK9),A
		LD	A,L
		LD	(WORKA),A
		POP	HL
;
		LD	A,E
		ADD	A,$1F
		LD	E,A
		LD	A,D
		ADC	A,$0
		LD	D,A
;
		PUSH	DE
		CALL	BG_InitSetSub
		POP	DE
;
		LD	A,(WORK8)
		LD	($2100),A
		LD	A,(WORK9)
		LD	H,A
		LD	A,(WORKA)
		LD	L,A
		LD	A,$001
		LD	(VBK),A
		CALL	BG_InitSetSub
		XOR	A
		LD	(VBK),A
;NOT;		LD	A,$8
;NOT;		LD	($2100),A
		CALL	Unit_bank_set	; ���j�b�g�o���N�Z�b�g
		RET
;
;
RMBGST
;NOT;	LD	A,$8
		CALL	Unit_bank_set	; ���j�b�g�o���N�Z�b�g
					; A <-- $2100
	CALL	PBSET
;
	LD	DE,$9800
	LD	HL,BGUNDT+$11
;
	LD	C,$80
RMBS10
		PUSH	DE
		PUSH	HL
		PUSH	BC
;
		LD	A,(CGBFLG)
		AND	A		;�b�f�a���[�h�H
		JR	NZ,CGB_INIT_SET	;	YES --> CGB_INIT_SET
		CALL	GbInitSub
		JR	INIT_SET_PASS
CGB_INIT_SET
		LD	A,(DJFLAG)
		AND	A		; �n��H
		JR	Z,CGB_INIT_000	; �x�d�r

		CALL	CgbInitSub	;(CGB)
		JR	CGB_INIT_100
CGB_INIT_000
		CALL	CgbInitSub2	;(CGB) �n��V�l�`�o�p
CGB_INIT_100
;
INIT_SET_PASS
		POP	BC
		POP	HL
		POP	DE
;			; Next set addr set
	INC	HL
	LD	A,L
	AND	%00001111
	CP	$0A+1
;;	CP	$0A
	JR	NZ,RMBS28
;
	LD	A,L
	AND	%11110000
	ADD	A,$10+1
	LD	L,A
RMBS28
	LD	A,E
	ADD	A,$02
	LD	E,A
	AND	%00011111
	CP	$14
	JR	NZ,RMBS30
;
	LD	A,E
	AND	%11100000
	ADD	A,$40
	LD	E,A
	LD	A,D
	ADC	A,$00
	LD	D,A
RMBS30
	DEC	C
	JR	NZ,RMBS10
;
RMBS50
	LD	A,$01
	LD	($2100),A
	JP  	DMEXST	; �_���W�����}�b�v�����Z�b�g 
;
;;	RET
;****************************************
;*      �a�f �f�|�^ �Z��g�@     	*
;****************************************
BGDTST
	LD	A,%00000001
	LD	(IE),A
;
	LD	HL,RMINCT	; ROOM in count
	INC	(HL)
;
	LD	A,$20
	LD	($2100),A
	CALL	RAMCLR_SUB
;
;-------------------------------------------------------------
;	�b�f�a �J���[���l�`�o �Z�b�g
;-------------------------------------------------------------
		LD	A,(CGBFLG)
		AND	A		; �J���[�Q�[���{�[�C�H
		JR	Z,BGDTST_000	; �m�n

		LD	A,$21
		LD	($2100),A
		CALL	GAME_COLOR_SET	; �J���[�q�`�l�Z�b�g
		LD	A,$20
		LD	($2100),A
		CALL	CGB_MAP_SET	; �l�`�o�Z�b�g
BGDTST_000
;-------------------------------------------------------------
;
	LD	A,$9
	LD	($2100),A	;�n��BG bank 1

;
;;;CGB;;;	XOR	A
;;;CGB;;;	LD	(WORKF),A  ; Next goto ram set pointer reset !
;;;CGB;;;	LD	(DOORCT),A	; Door set counter clear!
;;;CGB;;;	LD	(SPEKFG),A
;;;CGB;;;	LD	(NXRMPZ),A	; Next (Z)pos reset (for fole down)
;;;CGB;;;	LD	(TOUROU),A	; Tourou set flag !
;;;CGB;;;	LD	(TOURCT),A	; Tourou set COUNT !
;;;CGB;;;;;;	LD	(BELTFG),A	; Belt conv. CHR TR flag
;;;CGB;;;;;;	LD	(TOGEFG),A	; Toge. CHR TR flag
;;;CGB;;;	LD	(MUTEKI),A	; Player Muteki flag !
;;;CGB;;;	LD	(ONOFBLF),A	; On off block TR flag !
;;;CGB;;;	LD	(SHOPFG),A	; Shop flag !!
;;;CGB;;;	LD	(EXITFG),A	; Dundeon EXIT flag !
;;;CGB;;;	LD	(EFLFLG),A	; ENMY ANA OCHI FLAG !
;;;CGB;;;	LD	(EFLFLG2),A	; ENMY ANA OCHI FLAG !
;;;CGB;;;	LD	(BOSSFG),A	; �{�X����FLAG
;;;CGB;;;	LD	(TAKISDF),A	; �� SE FLAG
;;;CGB;;;	LD	(UTAFLG),A	; �}������FLAG
;;;CGB;;;	LD	(IWAMSFG),A	;��������������b�Z�[�W�t���O�I
;;;CGB;;;	LD	(KEYSDON),A
;;;CGB;;;;
;;;CGB;;;	LD	(FADECT2),A	;Fade test
;
;;	LD	(CHTRCT),A
;;	LD	(CHTRC2),A
;
;;;CGB;;;	LD	A,$FF
;;;CGB;;;	LD	(NXRMMD),A
;;;CGB;;;	LD	(MAINDX),A	;�}�����C���f�b�N�X�I
;
	LD	A,(DJFLAG)
	AND	A
	JR	Z,BDS010
;
	LD	A,$14
	LD	($2100),A
	LD	(ENHELP),A
;
		CALL	BGDTST_SUB
;
;;;KK;;;		LD	A,(DNJNNO)
;;;KK;;;		CP	NEWDJ		;�V�_���W�����i���o�[�H
;;;KK;;;		JR	NZ,BD7000_PASS	;	NO --> BD7000_PASS
;;;KK;;;		LD	HL,NEWDJDAT
;;;KK;;;		JR	BD7010
;;;KK;;;BD7000_PASS
;;;KK;;;;
;;;KK;;;;;;KK;;;	LD	A,(DNJNNO)
;;;KK;;;	CP	DJMAX+1		 ;$20
;;;KK;;;	JR	NC,BDS00D
;;;KK;;;;
;;;KK;;;	LD	HL,DJRMDT
;;;KK;;;;
;;;KK;;;	SWAP	A
;;;KK;;;	LD	E,A
;;;KK;;;	LD	D,$00
;;;KK;;;	SLA	E
;;;KK;;;	RL	D	
;;;KK;;;	SLA	E
;;;KK;;;	RL	D	
;;;KK;;;	ADD	HL,DE
;;;KK;;;;
;;;KK;;;	LD	A,(DNJNNO)
;;;KK;;;	CP	$06
;;;KK;;;	JR	NZ,BD7010	;���x���V�H
;;;KK;;;;
;;;KK;;;	LD	A,(WARPSV+$06)
;;;KK;;;	AND	%00000100
;;;KK;;;	JR	Z,BD7010	;���󂵂��H
;;;KK;;;;				;YES !
;;;KK;;;	LD	HL,D7DAT2
;;;KK;;;BD7010
;;;KK;;;	LD	A,(DNJNPT)
;;;KK;;;	LD	E,A
;;;KK;;;	LD	D,$0
;;;KK;;;;
;;;KK;;;	ADD	HL,DE
;;;KK;;;	LD	A,(HL)
;;;KK;;;	LD	(GRNDPT),A
;;;KK;;;BDS00D
;;;KK;;;	LD	A,(GRNDPT)
;;;KK;;;	LD	C,A
;;;KK;;;	LD	B,$00
;;;KK;;;;
;;;KK;;;		LD	A,(DNJNNO)
;;;KK;;;		CP	NEWDJ		;�V�_���W�����i���o�[�H
;;;KK;;;		JR	NZ,BDS0D3_PASS	;	NO --> BDS0D3_PASS
;;;KK;;;		LD	HL,NEWDJNZ
;;;KK;;;		JR	BDS0D3_SET
;;;KK;;;BDS0D3_PASS
;;;KK;;;;
;;;KK;;;;;;KK;;;	LD	A,(DNJNNO)
;;;KK;;;	CP	DJROOM2 ;$20
;;;KK;;;	JR	NC,BDS0D3
;;;KK;;;	CP	DJROOM ;$20
;;;KK;;;	JR	C,BDS0D3
;;;KK;;;;
;;;KK;;;	INC	B
;;;KK;;;BDS0D3
;;;KK;;;	LD	HL,DJNZDT
;;;KK;;;BDS0D3_SET
;;;KK;;;	ADD	HL,BC
;;;KK;;;	LD	A,(HL)
;;;KK;;;	LD	(NAZOFG),A
;;;KK;;;;
;;;KK;;;	XOR	A
;;;KK;;;	LD	(SHSTCT),A	; Shatter set flag (for open)!
;;;KK;;;	LD	(SHSTCT2),A	; Shatter set flag (for shut)!
;;;KK;;;	LD	(SHUTFG),A	; Shatter shuted flag reset !
;;;KK;;;	LD	(NAZOCL),A	; Nazo clear flag reset !
;
	LD	E,A
	LD	HL,ENFLPT
BDS00F
	XOR	A
	LD	(HLI),A
	INC	E
	LD	A,E
	CP	$10+1
	JR	NZ,BDS00F
;---------------------------------------
BDS010
;SVBFST
	LD	A,(GRNDPT)
	LD	E,A
	LD	D,$0
	LD	HL,GRRMSV
	LD	A,(DJFLAG)
	AND	A
	JR	Z,SVS010
;
	LD	HL,DJRMSV
;
	LD	A,(DNJNNO)
;
		CP	NEWDJ		;�V�_���W�����H
		JR	NZ,SVS010_PASS	;	NO --> SVS010_PASS
		LD	HL,NEWDJRM	;�V�_���W�����̃Z�[�u�q�`�l
		JR	SVS010
SVS010_PASS
;
	CP	DJROOM2  ;$20
	JR	NC,SVS010
	CP	DJROOM  ;$20
	JR	C,SVS010
;
	LD	HL,DJRMSV+$100
SVS010
	ADD	HL,DE
	LD	A,(YKFLAG)
	AND	A
	LD	A,(HL)
	JR	NZ,SVS011
	OR	%10000000
	LD	(HL),A
SVS011
	LD	(DJSVBF),A	; Save data buffer set !
;-------------------------------------
	LD	A,(GRNDPT)
	LD	C,A
	LD	B,$00
	SLA	C
	RL	B
;
	LD	A,(DJFLAG)
	AND	A
	JR	Z,GBS010	; Danjyon ?
;				; yes !
	LD	A,$0A
	LD	($2100),A
	LD	(ENHELP),A
;
		LD	A,(DNJNNO)
		CP	NEWDJ			;�V�_���W�����i���o�[�H
		JR	NZ,DBSSCK10_PASS	;	NO --> DBSSCK10_PASS
		LD	HL,NEWDJAD
		JP	GBS018
DBSSCK10_PASS
;
;;;KK;;;	LD	A,(DNJNNO)
	CP	$1F
	JR	NZ,DBSSCK10
;
	LD	A,(GRNDPT)
	CP	$F5
	JR	NZ,DBSSCK10
;
	LD	A,(MEGAF)
	CP	$0E
	JR	NZ,DBSSCK10
;
	LD	BC,DB0F52
	JP	GBS01A12
;
DBSSCK10
	LD	HL,DJBGAD
	LD	A,(DNJNNO)
;
	CP	DJROOM2 ;$20
	JR	NC,GBS018
	CP	DJROOM ;$20
	JR	C,GBS018
;
	LD	A,$0B
	LD	($2100),A
	LD	(ENHELP),A
;
	LD	HL,DJBGA2
	JR	GBS018
;
GBS010
	LD	A,(GRNDPT)
	CP	$0E
	JR	NZ,GBSE011	;��V�̃G���A�H
;				;yes !
	LD	A,(GRRMSV+$0E)
	AND	%00010000
	JR	Z,GBS012
;
	LD	BC,GB00E2
	JR	GBS01A
GBSE011
	CP	$8C
	JR	NZ,GBS1011	;��U�̃G���A�i�k�U�����j�H
;				;yes !
	LD	A,(GRRMSV+$8C)
	AND	%00010000
	JR	Z,GBS012
;
	LD	BC,GB08C2
	JR	GBS01A
GBS1011
	CP	$79
	JR	NZ,GBS0179	;���̃G���A�H
;				;yes !
	LD	A,(GRRMSV+$79)
	AND	%00010000
	JR	Z,GBS012
;
	LD	BC,GB0792
	JR	GBS01A
GBS0179
	CP	$06
	JR	NZ,GBS0116	;���܂��̃G���A�H
;				;yes !
	LD	A,(GRRMSV+$06)
	AND	%00010000
	JR	Z,GBS012
;
	LD	BC,GB0062
	JR	GBS01A
GBS0116
	CP	$1B
	JR	NZ,GBS011	;��̌��̃G���A�̏�H
;				;yes !
	LD	A,(GRRMSV+$2B)
	AND	%00010000
	JR	Z,GBS012
;
	LD	BC,GB01B2
	JR	GBS01A
GBS011
	CP	$2B
	JR	NZ,GBS012	;��̌��̃G���A�i�k�S�����j�H
;				;yes !
	LD	A,(GRRMSV+$2B)
	AND	%00010000
	JR	Z,GBS012
;
	LD	BC,GB02B2
	JR	GBS01A
GBS012
	LD	HL,GRBGAD
GBS018
	ADD	HL,BC
;
	LD	A,(HLI)
	LD	C,A
	LD	A,(HL)
	LD	B,A		; (BC):Data addr.
;
	LD	A,(DJFLAG)
	AND	A
	JR	NZ,GBS01A12
;
GBS01A
	LD	A,(GRNDPT)
	CP	$80
	JR	C,GBS01A12
;
	LD	A,$1A
	LD	($2100),A	;Bank 2!!!!
GBS01A12
	LD	A,(BC)
	CP	BEND
	JR	Z,GBDS10	; data aru?
;				; yes
	LD	(CHTRFG),A
	INC	BC
;
	LD	A,(DJFLAG)
	AND	A
	JR	Z,GBDS0B
;
	LD	A,(BC)
	AND	$0F
	CALL	BACKBS		; Back ground BG set.
	LD	A,(BC)
	SWAP	A
	AND	$0F
;
	CALL	DJRMST	; Base room data set !
	JR	GBDS0C
;
GBDS0B
	LD	A,(BC)
	CALL	BACKBS		; Back ground BG set.
;
GBDS0C
	INC	BC
	LD	A,(BC)
	AND	%11111100
	CP	NXGO
	JR	NZ,GBDS0D	; Next goto set ?
;
	LD	A,(WORKF)
	LD	E,A
	LD	D,$00
	LD	HL,NXRMMD
	ADD	HL,DE
;
	LD	A,(BC)

	AND	%00000011
	LD	(HLI),A		; 0:Danjyon 1:Ground 2:Yoko display
;
	INC	BC
	LD	A,(BC)
	LD	(HLI),A		; Danjyon No.
;
	INC	BC
	LD	A,(BC)
	LD	(HLI),A		; Room No.
;
	INC	BC
	LD	A,(BC)
	LD	(HLI),A		; Player set X pos.
;
	INC	BC
	LD	A,(BC)
	LD	(HLI),A		;  "   Y pos.
;
	LD	A,E
	ADD	A,$05
	LD	(WORKF),A
;
	JR	GBDS0C
;
GBDS0D
	LD	A,(BC)
	CP	BEND   ;$FF
	JR	Z,GBDS10	; End ?
;
	CALL	UNITST
	JR	GBDS0C
GBDS10
	LD	A,$01
	LD	($2100),A
	CALL	SBHRSB		; Display out unit FF set !
;
		LD	A,:FukuDNJ_COL
		LD	($2100),A
		CALL	FukuDNJ_COL
;
		LD	A,:Dark_room_set
		LD	($2100),A
		CALL	Dark_room_set	; �Â������Z�b�g
;
	JP	PBRETN
;
;================================================
UNITST
	XOR	A
	LD	(WORK0),A	; 0:normal
;
	LD	A,(BC)
	BIT	7,A
	JR	Z,UNS010	; Kahen set ?
	BIT	4,A
	JR	NZ,UNS010	; Display out set UNIT ?
;				; NO
	LD	(WORK0),A	; Paramater set
;
	INC	BC
UNS010
	INC	BC
	LD	A,(DJSVBF)
	LD	E,A
;
	LD	A,(DJFLAG)
	AND	A
	JR	NZ,UNS022
;- - Ground set ---
	LD	A,(BC)
	SUB	EXUNST
	JR	C,UN1SET
;(CGB)	RST	0

;----------------------------------------------------
;	���ꃆ�j�b�g�Z�b�g��ʃo���N��
;----------------------------------------------------
		LD	A,(BC)
		LD	D,A			; (A) PUSH ���j�b�g�m�n
		DEC	BC
		LD	A,(BC)
		LD	E,A			; (A) PUSH ���j�b�g��
		INC	BC

		LD	A,:Ground_SPunit_set
		LD	($2100),A
		CALL	Ground_SPunit_set	; ���ꃆ�j�b�g�Z�b�g
		CALL	BGdata_Bank_Return	; �f�[�^�o���N ���^�[��
		RET

;
;(CGB)	DW	BWOOD0ST	; (F5) Big wood
;(CGB)	DW	HOUSE0ST	; (F6) Side long home (house)
;(CGB)	DW	HOUSE2ST	; (F7) Nomal home (house)
;(CGB)	DW	SEKIZOST	; (F8) Sekizou and dangon in
;(CGB)	DW	CASINSET	; (F9) Casle in set(iriguchi)
;(CGB)	DW	BOMGZSET	; (FA) Bomb de kowareru big iwa00
;(CGB)	DW	UWOODSET	; (FB) �C�̖�
;(CGB)	DW	TOIRESET	; (FC) �g�C���Z�b�g
;(CGB)	DW	PREHBSET	; (FD) �v���n�u(�풓�̉�)
;- - Danjyon set ---
UNS022
	LD	A,(BC)
	SUB	DXUNST
	JP	C,DN1SET
	RST	0
;
	DW	DKEYUSET	; Danjon key's door up set
	DW	DKEYDSET	; Danjon key's door down set 
	DW	DKEYLSET	; Danjon key's door left set
	DW	DKEYRSET	; Danjon key's door right set
;
	DW	DSHIUSET	; Danjon shutter's door up set
	DW	DSHIDSET	; Danjon shutter's door down set 
	DW	DSHILSET	; Danjon shutter's door left set
	DW	DSHIRSET	; Danjon shutter's door right set
;
	DW	DTURUSET	; Danjon turo (non door) up set
	DW	DTURDSET	; Danjon turo (non door) down set 
	DW	DTURLSET	; Danjon turo (non door) left set
	DW	DTURRSET	; Danjon turo (non door) right set
;
	DW	DSPCLSET	; Danjon Big key's (Boss room) door set
	DW	DOHANSET	; Danjon giga no ohhhhana
	DW	DKURUSET	; Danjon kurukuru mawaru kaiten menu
	DW	DKUUUSET	; Danjon kurukuru mawaru kaiten menu URA varsion
	DW	DEXITSET	; Danjon Exit
	DW	DAHOUSET	; House no naka no iriguhi set dayooon!
;-------------------------------------
UN1SET
	ADD	A,EXUNST
	PUSH	AF
;
	LD	D,A
;
	CP	TAKI0
	JR	NZ,U1S0111	;��H
;				; YES !
	LD	(TAKISDF),A	;SE �Z�b�g�I
U1S0111
	CP	KAZA1
	JR	NZ,U1S0221	;�������K�i�ω��I
;
	BIT	5,E
	JR	NZ,U1S0023
;				; yes !
U1S0221
	CP	KAZA0
	JR	NZ,U1S0223
;
	BIT	5,E
	JR	Z,U1S0223
;				; yes !
	POP	AF
	LD	A,KAZA1		; Hashi set !
	LD	D,A
	PUSH	AF
U1S0223
	CP	HKAZA
	JR	NZ,U1S0222
;
	BIT	5,E
	JR	Z,U1S0222
;				; yes !
	POP	AF
	LD	A,KAZA0		; Hashi set !
	LD	D,A
	PUSH	AF
U1S0222
	CP	GSAV0
	JR	Z,U1S0006	; ���� ?
	CP	GSAV1
	JR	Z,U1S0006	;  ?
	CP	GSAV2
	JR	NZ,U1S0008	;  ?
;				; yes !
U1S0006
	BIT	4,E
	JR	Z,U1S0008	; Already set ?
;				; yes !
	POP	AF
	LD	A,SARUH		; Hashi set !
	LD	D,A
	PUSH	AF
U1S0008
	CP	DIN00
	JR	NZ,U1S001	; Ground Key door ?
;				; yes !
	BIT	4,E
	JR	Z,U1S001	; Already open ?
;				; yes !
	POP	AF
	LD	A,ANA02		; open unit set !
	LD	D,A
	PUSH	AF
U1S001
	LD	A,D
	CP	BK000
	JR	NZ,U1S002	; Ground bakudan hole ?
;				
	BIT	2,E
	JR	Z,U1S002	; Already break ?
;				; yes !
	POP	AF
	LD	A,ANA00		; open unit set !
	LD	D,A
	PUSH	AF
U1S002
	LD	A,D
	CP	ANFLW
	JR	NZ,U1S003
;
	BIT	4,E
	JR	Z,U1S003
;
	LD	A,(GRNDPT)
	CP	$75
	JR	Z,U1S0023				; yes !
	CP	$07
	JR	Z,U1S0023				; yes !
	CP	$AA
	JR	Z,U1S0023				; yes !
	CP	$4A
	JR	NZ,U1S003				; yes !
;
U1S0023
	POP	AF
	LD	A,SINDO		; open unit set !
	LD	D,A
	PUSH	AF
U1S003
	LD	A,D
	LD	(WORK9),A
	CP	DIN00
	JR	Z,SSSS11
	CP	ANA00
	JR	Z,SSSS11
	CP	MEGGC
	JR	Z,SSSS11
	CP	BK000
	JR	Z,SSSS11
	CP	IDO00
	JR	Z,SSSS11
	CP	SINDO
	JR	Z,SSSS11
	CP	OHAMV
	JR	Z,SSSS11
	CP	ANA01
	JR	Z,SSSS11
	CP	ANA02
	JR	NZ,SSSS2	; Danjyon in ana ?
SSSS11				; yes !
	LD	A,(DOORCT)	; Door pos save ! For nextgoto !
	LD	E,A
	INC	A
	AND	$003		;�b�f�a�Œǉ�
	LD	(DOORCT),A
	LD	D,$00
	LD	HL,DRPSBF
	ADD	HL,DE
	DEC	BC
	LD	A,(BC)
	LD	(HL),A
	INC	BC
;
SSSS2
	LD	A,(WORK9)
	CP	OHAMV
	JP	Z,DJEXST	; Kaidan ana hit obj set !
	CP	SINDO
	JP	Z,DJEXST	; Kaidan ana hit obj set !
;
	JP	U1SET
;-------------------------------------
DN1SET
	ADD	A,DXUNST
U1S000
	LD	(WORK9),A
;
DUS0004
	PUSH	AF
;
	CP	BELTD
	JR	C,D1S0088	; Bletconb. ?
	CP	BELTR+1
	JR	NC,D1S0088	; Bletconb. ?
;				; yes ! Tr. flag set !
	LD	HL,BELTFG
	INC	(HL)
D1S0088
	CP	DSOK0
	JR	NZ,D1S009	; Not fire tourou ?
;
	XOR	A
	LD	(FADEON),A
;
	LD	A,(GRNDPT)
	CP	$C4	;�Â��Ȃ��I
	LD	A,(WORK9)
	JR	Z,D1S009				; yes ! Dark set !
;
	LD	HL,TOUROU
	INC	(HL)
;
	LD	(FADEON),A
;
	PUSH	AF
	LD	A,(FADECT2)
	ADD	A,$04
	LD	(FADECT2),A
;
		LD	A,(CGBFLG)
		AND	A
		JR	NZ,D1S009_PASS
;
	LD	A,$04
	LD	(SBHR),A
D1S009_PASS
	POP	AF
D1S009
	CP	STUBO
	JR	Z,D1S00188	; ����BLOCK ?
	CP	DSWCH
	JR	Z,D1S00188	; Push swich !
	CP	DBL02
	JR	Z,D1S0018	; Push swich !
	CP	DBL01
	JR	NZ,D1S0019
;;;				; yes ! 
D1S0018
	LD	HL,ONOFBLF
	LD	(HL),$02
	JR	D1S0019
D1S00188
	LD	HL,ONOFBLF	; On off block chr TR Flag !
	LD	(HL),$01
D1S0019
	CP	DBOMU
	JR	Z,DBMS010	;�_���W�������e���ǁH
	CP	DTUBU	
	JR	NZ,DBMS020
DBMS010
	BIT	2,E
	JR	NZ,DBMS038	;��ꂽ��H
DBMS020
	CP	DBOMD
	JR	Z,DBMS030	;�_���W�������e���ǁH
	CP	DTUBD	
	JR	NZ,DBMS040
DBMS030
	BIT	3,E
	JR	Z,DBMS040	;��ꂽ��H
DBMS038				;YES!
	POP	AF
	LD	A,DBMUD		;�ʘH�I
	PUSH	AF
DBMS040
	CP	DBOML
	JR	Z,DBMS110	;�_���W�������e���ǁH
	CP	DTUBL	
	JR	NZ,DBMS120
DBMS110
	BIT	1,E
	JR	NZ,DBMS138	;��ꂽ��H
DBMS120
	CP	DBOMR
	JR	Z,DBMS130	;�_���W�������e���ǁH
	CP	DTUBR	
	JR	NZ,DBMS140
DBMS130
	BIT	0,E
	JR	Z,DBMS140	;��ꂽ��H
DBMS138				;YES!
	POP	AF
	LD	A,DBMLR		;�ʘH�I
	PUSH	AF
DBMS140
;==============================================
	CP	DTOP0
	JR	NZ,U1S00C	; Nazo takara ?
;				; yes !
	BIT	4,E
	JR	NZ,U1S00C	; already have ?
;				; no.
	POP	AF
	LD	A,(ENHELP2) ;DTU08		; nuki set!
	PUSH	AF
U1S00C
	CP	DNTK0
	JR	NZ,U1S00D	; Nazo KAIDAN ?
;				; yes !
	BIT	4,E
	JR	NZ,U1S00D	; already SET ?
;				; no.
	POP	AF
	RET
U1S00D
	CP	DTKD0	; 
	JR	Z,DJEXST
	CP	DNTK0	; NAZO
	JR	Z,DJEXST
	CP	DTKU0
	JR	NZ,DJEX90	; Dundeon exit ?
DJEXST				; Yes! hit check mode set !!
	DEC	BC
	LD	A,$01
	LD	(EXITFG),A
	LD	A,(BC)
	AND	$F0
	ADD	A,$10
	LD	(EXITYP),A	
;
	LD	A,(BC)
	SWAP	A
	AND	$F0
	ADD	A,$8
	LD	(EXITXP),A
;
	INC	BC
	JP	U1SET
;
DJEX90
	CP	DKAN1
	JR	Z,U1S00E
	CP	DKAN0
	JR	NZ,U1S0FF
U1S00E
	BIT	4,E
	JR	NZ,U1S0FF
;
	POP	AF
	LD	A,DNC00
	PUSH	AF
U1S0FF
	CP	DKAN2
	JR	Z,U1S0F0
;
	CP	DKAN3
	JR	NZ,U1S0F2
U1S0F0
	BIT	4,E
	JR	NZ,U1S0F2
;
	POP	AF
	LD	A,DNC01
	PUSH	AF
U1S0F2
	LD	A,(DNJNNO)
	CP	DJMAX
	LD	A,(WORK9)
	JR	C,UISDBB	;�ǂ��������Z�[�u�I
;	
	CP	DBOMB
	JR	Z,U1S0F3
UISDBB
	CP	DKEYB
	JR	NZ,U1S0F5
U1S0F3
	BIT	6,E
	JR	Z,U1S0F5	; ?
;				; Yes !
	POP	AF
	LD	A,DTU08
	PUSH	AF
U1S0F5
;------------------------------------
U1SET
	CP	DTRE0
	JR	NZ,U1S008	; Takara ?
;				
	BIT	4,E
	JR	Z,U1S008	; Already have ?
;				; yes !
	POP	AF
	LD	A,DTOP0		; open unit set !
	PUSH	AF
U1S008
;
	LD	D,$0
	LD	A,(WORK0)
	AND	A
	JR	Z,U1S010
;
	DEC	BC
	LD	A,(BC)
	LD	E,A
	LD	HL,BGUNDT+$11
	ADD	HL,DE
;
	LD	A,(WORK0)
	AND	$0F
	LD	E,A
;
	POP	AF
	LD	D,A
;
;	LD	A,$020
;	LD	($2100),A
;	CALL	NEWDJ_COIN_CHK
;
U1S018
	LD	A,D
	LD	(HLI),A
	LD	A,(WORK0)
	AND	%01000000
	JR	Z,U1S020
;
	LD	A,L
	ADD	A,$10-1
	LD	L,A
U1S020
	DEC	E
	JR	NZ,U1S018
;
	INC	BC
U1S00F
	RET

;==========================================================
;	�o���N�Q���j�b�g���������i�f�[�^�o���N�ʁj
;	    �d�m�s�q�x  �`�F���j�b�g�m�n�D
;==========================================================
Unit_change_B
		CP	KUSA0		; (04) ���̒n�ʁH
		RET	Z		; �x�d�r
		CP	STON2		; (09) �΂̒n�ʁH
		JR	NZ,Unit_chgB_010; �m�n

		LD	A,(GRNDPT)
		CP	$97		; ���C�I����H
		RET	NZ		; �m�n
		JR	Unit_chgB_100	; �x�d�r
;----------------------------------------------------------
Unit_chgB_010
		CP	ANA00		; ���A���̌�(E1) �H
		JR	NZ,Unit_chgB_050; �m�n

		LD	A,(GRNDPT)
		CP	$0E		; ��h�̓��i�k�V�j�H
		RET	Z		; �x�d�r

		CP	$0C		; ��������錊�H
		RET	Z		;
		CP	$1B		;
		RET	Z		;

;----------------------------------------------------------
;	�a�f�f�[�^ �o���N�Z�b�g
;----------------------------------------------------------
Unit_chgB_050
		LD	A,(GRNDPT)
		CP	$80
		JR	NC,Unit_chgB_100

		LD	A,$09		; GB000
		JR	Unit_chgB_200
Unit_chgB_100
		LD	A,$1A		; GB080
Unit_chgB_200
		CALL	Unit_change
Unit_chgB_900
		RET
;==========================================================

U1S010
	DEC	BC
	LD	A,(BC)
	LD	E,A
	LD	HL,BGUNDT+$11
	ADD	HL,DE
	POP	AF
	LD	(HL),A

;--------------------------------------------
;   �i�X�N���[�����j
;	���̒n��
;	�k�P �����
;	���e�ǉ�ꁕ������o��
;	�����{
;	�d�s�b�D�D�D�D
;--------------------------------------------
		CALL	Unit_change_B	; �o���N�Q���j�b�g��������
U1S010_100
;--------------------------------------------

	INC	BC
	RET
;-------------------------------------
;(CGB)BWOOD0ST
;(CGB)	DEC	BC
;(CGB);
;(CGB)	LD	A,(BC)
;(CGB)	ADD	A,$11
;(CGB)	LD	E,A
;(CGB)	AND	$0F
;(CGB)	JR	NZ,BWS010
;(CGB);
;(CGB)	LD	A,E
;(CGB)	SUB	$10
;(CGB)	LD	E,A
;(CGB)BWS010
;(CGB)	LD	D,$0
;(CGB)	LD	HL,BGUNDT
;(CGB)	ADD	HL,DE
;(CGB);
;(CGB)	LD	A,(WORK0)
;(CGB)	AND	A
;(CGB)	JR	Z,WD0SUB	; Kahen ?
;(CGB);				; yes !
;(CGB)	AND	$0F
;(CGB)	LD	E,A
;(CGB)WD0S06
;(CGB)	CALL	WD0SUB
;(CGB)	DEC	BC
;(CGB);
;(CGB)	LD	A,(WORK0)
;(CGB)	AND	%01000000
;(CGB)	LD	D,$F1
;(CGB)	JR	Z,WD0S08
;(CGB)	LD	D,$0F
;(CGB)WD0S08
;(CGB)	LD	A,L
;(CGB)	ADD	A,D
;(CGB)	LD	L,A
;(CGB)	DEC	E
;(CGB)	JR	NZ,WD0S06
;(CGB);
;(CGB)	INC	BC
;(CGB)	RET
;(CGB);-------------------------------------
;(CGB)WD0SUB
;(CGB);- - Uper set - -
;(CGB)	LD	A,(HL)
;(CGB)	CP	$10  ;WOD00
;(CGB)	LD	A,WOD00
;(CGB)	JR	C,WD0S10	; Already seted ?
;(CGB)	ADD	A,$04		; yes ! mixed unit set !
;(CGB)WD0S10
;(CGB)	LD	(HLI),A
;(CGB);
;(CGB)	LD	A,(HL)
;(CGB)	CP	$10  ;WOD00
;(CGB)	LD	A,WOD01
;(CGB)	JR	C,WD0S20
;(CGB)	ADD	A,$04
;(CGB)WD0S20
;(CGB)	LD	(HLD),A
;(CGB);- - Lower set - -
;(CGB)	LD	A,L
;(CGB)	ADD	A,$10
;(CGB)	LD	L,A
;(CGB);
;(CGB)	LD	A,(HL)
;(CGB)	CP	STB06
;(CGB)	JR	NC,WD0S28
;(CGB)	CP	$10  ;WOD00
;(CGB)	LD	A,WOD02
;(CGB)	JR	C,WD0S30	; Already set->Mix set
;(CGB);
;(CGB)	LD	A,WOD05
;(CGB)	JR	WD0S30
;(CGB)WD0S28
;(CGB)	LD	A,MWOD1
;(CGB)WD0S30
;(CGB)	LD	(HLI),A
;(CGB)	LD	A,(HL)
;(CGB)	CP	STB06
;(CGB)	JR	NC,WDS038
;(CGB)	CP	$10  ;WOD00
;(CGB)	LD	A,WOD03
;(CGB)	JR	C,WDS050
;(CGB);
;(CGB)	LD	A,WOD04
;(CGB)	JR	WDS050
;(CGB)WDS038
;(CGB)	LD	A,MWOD2
;(CGB)WDS050
;(CGB)	LD	(HL),A
;(CGB)	INC	BC
;(CGB)	RET
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�n��a�f�f�[�^�o���N ���A�i �n����ꃆ�j�b�g��p �j		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
BGdata_Bank_Return
		LD	A,(GRNDPT)
		CP	$80
		JR	NC,BG_BankR_100

		LD	A,$09		; GB000
		JR	BG_BankR_200
BG_BankR_100
		LD	A,$1A		; GB080
BG_BankR_200
		LD	($2100),A
		RET
;=========================================
;
UNSTSB
BWLOOP	
	PUSH	HL
	PUSH	DE
;
	LD	A,(BC)
	LD	E,A
	LD	D,$0
	ADD	HL,DE
	POP	DE
	LD	A,(DE)
;
	CP	ANA00
	JR	Z,SSSS1S
	CP	ANA01
	JR	Z,SSSS1S
	CP	ANA02
	JR	NZ,SSSS2S	; Danjyon in ana ?
SSSS1S				; yes !
	PUSH	AF
	PUSH	HL
	PUSH	DE
;
	LD	A,L
	SUB	$11
	PUSH	AF	;Set address 
;
	LD	A,(DOORCT)	; Door pos save ! For nextgoto !
	LD	E,A
	INC	A
	AND	$003		;�b�f�a�Œǉ�
	LD	(DOORCT),A
	LD	D,$00
	LD	HL,DRPSBF
	ADD	HL,DE
	POP	AF
	LD	(HL),A
;
	POP	DE
	POP	HL
	POP	AF
SSSS2S
	LD	(HL),A

;--------------------------------------------
;	�炢�����i�X�N���[�����j
;--------------------------------------------
		CALL	Unit_change_B	; �o���N�Q���j�b�g��������
;--------------------------------------------

	INC	DE
	INC	BC
	POP	HL
	LD	A,(BC)
	AND	A
	CP      $0FF
	JR	NZ,BWLOOP
;
	POP	BC
;	
	RET
;=========================================
;	�n�� ���ꃆ�j�b�g�Z�b�g ��p
;=========================================
UNSTSB_SP
BWLOOP_SP
	PUSH	HL
	PUSH	DE
;
	LD	A,(BC)
	LD	E,A
	LD	D,$0
	ADD	HL,DE
	POP	DE
	LD	A,(DE)
;
	CP	ANA00
	JR	Z,SSSS1S_SP
	CP	ANA01
	JR	Z,SSSS1S_SP
	CP	ANA02
	JR	NZ,SSSS2S_SP	; Danjyon in ana ?
SSSS1S_SP			; yes !
	PUSH	AF
	PUSH	HL
	PUSH	DE
;
	LD	A,L
	SUB	$11
	PUSH	AF	;Set address 
;
	LD	A,(DOORCT)	; Door pos save ! For nextgoto !
	LD	E,A
	INC	A
	AND	$003		;�b�f�a�Œǉ�
	LD	(DOORCT),A
	LD	D,$00
	LD	HL,DRPSBF
	ADD	HL,DE
	POP	AF
	LD	(HL),A
;
	POP	DE
	POP	HL
	POP	AF
SSSS2S_SP
	LD	(HL),A

;--------------------------------------------
;	�炢�����i�X�N���[�����j
;--------------------------------------------
		CALL	Unit_change_B_SP; �o���N�Q���j�b�g��������
;--------------------------------------------

	INC	DE
	INC	BC
	POP	HL
	LD	A,(BC)
	AND	A
	CP      $0FF
	JR	NZ,BWLOOP_SP
;
	POP	BC
;	
	RET
;==========================================================
;	�o���N�Q���j�b�g���������i�f�[�^�o���N�ʁj
;	�n�� ���ꃆ�j�b�g�Z�b�g ��p
;	    �d�m�s�q�x  �`�F���j�b�g�m�n�D
;==========================================================
Unit_change_B_SP
		CP	KUSA0		; (04) ���̒n�ʁH
		RET	Z		; �x�d�r
		CP	STON2		; (09) �΂̒n�ʁH
		JR	NZ,Unit_chgB_SP_010; �m�n

		LD	A,(GRNDPT)
		CP	$97		; ���C�I����H
		RET	NZ		; �m�n
		JR	Unit_chgB_SP_050; �x�d�r
;----------------------------------------------------------
Unit_chgB_SP_010
		CP	ANA00		; ���A���̌�(E1) �H
		JR	NZ,Unit_chgB_SP_050; �m�n

		LD	A,(GRNDPT)
		CP	$0E		; ��h�̓��i�k�V�j�H
		RET	Z		; �x�d�r

		CP	$0C		; ��������錊�H
		RET	Z		;
		CP	$1B		;
		RET	Z		;

;----------------------------------------------------------
;	�a�f�f�[�^ �o���N�Z�b�g
;----------------------------------------------------------
Unit_chgB_SP_050
		LD	A,:Ground_SPunit_set	; �Œ�I
		CALL	Unit_change
		RET
;==========================================================
;(CGB)SEKISAD
;(CGB)	DB      $00,$01,$02
;(CGB)	DB      $10,$11,$12
;(CGB)	DB	$0FF
;(CGB)SEKISNO
;(CGB)	DB	SEKZ0,SEKZ1,SEKZ2
;(CGB)	DB	SEKZ3,ANA02,SEKZ4
;(CGB)	
;-------------------------------------
;-------------------------------------
;(CGB)SEKIZOST
;(CGB)	PUSH    BC
;(CGB);
;(CGB)	CALL	SSUB
;(CGB);
;(CGB)	LD	BC,SEKISAD
;(CGB);
;(CGB)	LD	DE,SEKISNO
;(CGB)	JP	UNSTSB
;-------------------------------------
SSUB
	DEC	BC
	LD	A,(BC)
	LD	E,A
	LD	D,$0
	LD	HL,BGUNDT+$11
	ADD	HL,DE
	RET
;
;-------------------------------------
;(CGB)HOU0SAD
;(CGB)	DB      $00,$01,$02,$03,$04
;(CGB)	DB      $10,$11,$12,$13,$14
;(CGB)	DB      $20,$21,$22,$23,$24
;(CGB)	DB	$0FF
;(CGB)HOU0SNO
;(CGB)	DB	YANE2,YANE7,YANE7,YANE7,YANE3
;(CGB)	DB	YANE4,YANE6,YANE6,YANE6,YANE5
;(CGB)	DB	WIND0,ANA01,WIND0,ANA01,WIND0
;=========================================
;(CGB)HOUSE0ST
;(CGB)	PUSH    BC
;(CGB);
;(CGB)	CALL	SSUB
;(CGB);
;(CGB)	LD	BC,HOU0SAD
;(CGB);
;(CGB)	LD	DE,HOU0SNO
;(CGB)	JP	UNSTSB
;=========================================
;(CGB)HOU2SAD
;(CGB)	DB      $00,$01,$02
;(CGB)	DB      $10,$11,$12
;(CGB)	DB      $20,$21,$22
;(CGB)	DB	$0FF
;(CGB)HOU2SNO
;(CGB)	DB	YANE2,YANE7,YANE3
;(CGB)	DB	YANE4,YANE6,YANE5
;(CGB)	DB	WIND0,ANA01,WIND0
;=========================================
;(CGB)HOUSE2ST
;(CGB)	PUSH    BC
;(CGB);
;(CGB)	CALL	SSUB
;(CGB);
;(CGB)	LD	BC,HOU2SAD
;(CGB);
;(CGB)	LD	DE,HOU2SNO
;(CGB)	JP	UNSTSB
;=========================================
;(CGB)CASISAD
;(CGB)	DB      $00,$01,$02
;(CGB)	DB      $10,$11,$12
;(CGB);	DB      $20,$21,$22
;(CGB);	DB      $30,$31,$32
;(CGB)	DB	$0FF
;(CGB)CASISNO
;(CGB)	DB	CAIN0,CAIN1,CAIN2
;(CGB)	DB	CAIN3,ANA02,CAIN4
;(CGB);	DB	TIL01,TIL00,TIL01
;(CGB);	DB	TIL01,TIL01,TIL01
;=========================================
;(CGB)CASINSET
;(CGB)	PUSH    BC
;(CGB);
;(CGB)	CALL	SSUB
;(CGB);
;(CGB)	LD	BC,CASISAD
;(CGB);
;(CGB)	LD	DE,CASISNO
;(CGB)	JP	UNSTSB
;=========================================
;=========================================
;=========================================
;(CGB)BOMGSAD
;(CGB)	DB      $00,$01
;(CGB)	DB      $10,$11
;(CGB)	DB	$0FF
;(CGB)BOMGSNO
;(CGB)	DB	BOMG0,BOMG1
;(CGB)	DB	BOMG2,BOMG3
;(CGB);
;(CGB)BOMG2NO
;(CGB)	DB	STON2,STON2
;(CGB)	DB	STON2,STON2
;=========================================
;(CGB)BOMGZSET
;(CGB)	PUSH    BC
;(CGB);
;(CGB)	CALL	SSUB
;(CGB);
;(CGB)	LD	BC,BOMGSAD
;(CGB);
;(CGB)	LD	DE,BOMGSNO
;(CGB);
;(CGB)	LD	A,(DJSVBF)
;(CGB)	AND	%00000100
;(CGB)	JR	Z,BO2020
;(CGB);
;(CGB)	LD	DE,BOMG2NO
;(CGB)BO2020
;(CGB)	JP	UNSTSB
;=========================================
;=========================================
;=========================================
;=========================================
;=========================================
;=========================================
;(CGB)UWOODAD
;(CGB)	DB      $00,$01
;(CGB)	DB      $10,$11
;(CGB)	DB	$0FF
;(CGB)UWOODNO
;(CGB)	DB	UWOD0,UWOD1
;(CGB)	DB	UWOD2,UWOD3
;=========================================
;(CGB)UWOODSET
;(CGB)	PUSH    BC
;(CGB);
;(CGB)	CALL	SSUB
;(CGB);
;(CGB)	LD	BC,UWOODAD
;(CGB);
;(CGB)	LD	DE,UWOODNO
;(CGB)	JP	UNSTSB
;=========================================
;=========================================
;=========================================
;(CGB)TOIREAD
;(CGB)	DB      	$00,$01,$02
;(CGB)	DB     	        $10,$11,$12
;(CGB)	DB          $1F,$20,$21,$22,$23
;(CGB)	DB              $30,$31,$32
;(CGB)	DB	        $0FF
;(CGB)TOIRENO
;(CGB)	DB	      GAK00,GAK01,GAK02
;(CGB)	DB	      GAK10,ANA03,GAK12
;(CGB)	DB	KUSA2,GAK08,GAK04,GAK09,KUSA2
;(CGB)	DB	      KUSA2,KUSA2,KUSA2
;=========================================
;(CGB)TOIRESET
;(CGB)	PUSH    BC
;(CGB);
;(CGB)	CALL	SSUB
;(CGB);
;(CGB)	LD	BC,TOIREAD
;(CGB);
;(CGB)	LD	DE,TOIRENO
;(CGB)	JP	UNSTSB
;=========================================
;=========================================
;=========================================
;=========================================
;(CGB)PREHBAD
;(CGB)	DB	$00,$01,$02
;(CGB)	DB	$10,$11,$12
;(CGB)	DB	$0FF
;(CGB)PREHBNO
;(CGB)	DB	YANEZ,YANEZ,YANEZ
;(CGB)	DB	WIND0,ANA01,WIND0
;=========================================
;(CGB)PREHBSET
;(CGB)	PUSH    BC
;(CGB);
;(CGB)	CALL	SSUB
;(CGB);
;(CGB)	LD	BC,PREHBAD
;(CGB);
;(CGB)	LD	DE,PREHBNO
;(CGB)	JP	UNSTSB
;=========================================
;=========================================
;=========================================
;=========================================
;=========================================
;=========================================
;=========================================
;=========================================
;=========================================
;=========================================
;-------------------------------------------------------
;[      �n�����A���H���t���������t������ݗ����ߌQ     ]
;-------------------------------------------------------
DKEYUNO
	DB	DKEY0,DKEY1
;=========================================
DKEYUSET
	LD	E,$00
	CALL	DRPSST
;
	LD	A,(DJSVBF)
	AND	%00000100
	JP	NZ,DTURUSET
;
	PUSH    BC
;
	CALL	SSUB
;
	LD	BC,DKEYUAD
;
	LD	DE,DKEYUNO
;
	JP	UNSTSB
;-------------------------------------
;-------------------------------------
DKEYDNO
	DB	DKEY2,DKEY3
;=========================================
DKEYDSET
	LD	E,$01
	CALL	DRPSST
;
	LD	A,(DJSVBF)
	AND	%00001000
	JP	NZ,DTURDSET
;
	PUSH    BC
;
	CALL	SSUB
;
	LD	BC,DKEYDAD
;
	LD	DE,DKEYDNO
	JP	UNSTSB
;-------------------------------------
;-------------------------------------
DKEYLNO
	DB	DKEY4,DKEY5
;=========================================
DKEYLSET
	LD	E,$02
	CALL	DRPSST
;
	LD	A,(DJSVBF)
	AND	%00000010
	JP	NZ,DTURLSET
;
	PUSH    BC
;
	CALL	SSUB
;
	LD	BC,DKEYLAD
;
	LD	DE,DKEYLNO
	JP	UNSTSB
;-------------------------------------
;-------------------------------------
DKEYRNO
	DB	DKEY6,DKEY7
;=========================================
DKEYRSET
	LD	E,$03
	CALL	DRPSST
;
	LD	A,(DJSVBF)
	AND	%00000001
	JP	NZ,DTURRSET
;
	PUSH    BC
;
	CALL	SSUB
;
	LD	BC,DKEYRAD
;
	LD	DE,DKEYRNO
	JP	UNSTSB
;-------------------------------------
;-------------------------------------
;DSHIUAD
;	DB      $00,$01
;	DB	$0FF
;DSHIUNO
;	DB	DSHI0,DSHI1
;=========================================
DSHIUSET
	LD	E,$04
	CALL	DRPSST
;
	LD	A,(SHSTCT)
	OR	%00000001
	LD	(SHSTCT),A
	LD	(SHSTCT2),A
;
	JP	DTURUSET
;
;-------------------------------------
;-------------------------------------
;DSHIDAD
;	DB      $00,$01
;	DB	$0FF
;DSHIDNO
;	DB	DSHI2,DSHI3
;=========================================
DSHIDSET
	LD	E,$05
	CALL	DRPSST
;
	LD	A,(SHSTCT)
	OR	%00000010
	LD	(SHSTCT),A
	LD	(SHSTCT2),A
;
	JP	DTURDSET
;
;-------------------------------------
;-------------------------------------
;DSHILAD
;	DB      $00,$10
;	DB	$0FF
;DSHILNO
;	DB	DSHI4,DSHI5
;=========================================
DSHILSET
	LD	E,$06
	CALL	DRPSST
;
;
	LD	A,(SHSTCT)
	OR	%00000100
	LD	(SHSTCT),A
	LD	(SHSTCT2),A
;
	JP	DTURLSET
;
;-------------------------------------
;-------------------------------------
;DSHIRAD
;	DB      $00,$10
;	DB	$0FF
;DSHIRNO
;	DB	DSHI6,DSHI7
;=========================================
DSHIRSET
	LD	E,$07
	CALL	DRPSST
;
	LD	A,(SHSTCT)
	OR	%00001000
	LD	(SHSTCT),A
	LD	(SHSTCT2),A
;
	JP	DTURRSET
;
;-------------------------------------
;-------------------------------------
DTURUNO
	DB	DTU00,DTU01
;=========================================
DTURUSET
	LD	A,%00000100
	CALL	TURSTS
;
	PUSH    BC
;
	CALL	SSUB
;
	LD	BC,DTURUAD
;
	LD	DE,DTURUNO
	JP	UNSTSB
;-------------------------------------
TURSTS	; Turo set save data set (for map set)
	PUSH	AF
	LD	HL,DJRMSV
	LD	A,(GRNDPT)
	LD	E,A
	LD	D,$0
	LD	A,(DNJNNO)
;
		CP	NEWDJ		;�V�_���W�����H
		JR	NZ,TSS010_PASS	;	NO -->TSS010_PASS
		LD	HL,NEWDJRM	;�V�_���W�����̃Z�[�u�q�`�l
		JR	TSS010
TSS010_PASS
;
	CP	DJROOM2 ;$20
	JR	NC,TSS010
	CP	DJROOM ;$20
	JR	C,TSS010
	INC	D
TSS010
	ADD	HL,DE
	POP	AF
	OR	(HL)
	LD	(HL),A
	LD	(DJSVBF),A	; Save data buffer set !
	RET
;-------------------------------------
DTURDNO
	DB	DTU02,DTU03
;=========================================
DTURDSET
	LD	A,%00001000
	CALL	TURSTS
;
	PUSH    BC
;
	CALL	SSUB
;
	LD	BC,DTURDAD
;
	LD	DE,DTURDNO
	JP	UNSTSB
;-------------------------------------
;-------------------------------------
DTURLNO
	DB	DTU04,DTU05
;=========================================
DTURLSET
	LD	A,%00000010
	CALL	TURSTS
;
	PUSH    BC
;
	CALL	SSUB
;
	LD	BC,DTURLAD
;
	LD	DE,DTURLNO
	JP	UNSTSB
;-------------------------------------
;-------------------------------------
DTURRNO
	DB	DTU06,DTU07
;=========================================
DTURRSET
	LD	A,%00000001
	CALL	TURSTS
;
	PUSH    BC
;
	CALL	SSUB
;
	LD	BC,DTURRAD
;
	LD	DE,DTURRNO
	JP	UNSTSB
;-------------------------------------
;-------------------------------------
DSPCLNO
	DB	DBO00,DBO01
;=========================================
DSPCLSET
	LD	E,$08
	CALL	DRPSST
;
	LD	A,(DJSVBF)
	AND	%00000100
	JP	NZ,DTURUSET
;
	PUSH    BC
;
;	DEC	BC
;	LD	A,(BC)
;	LD	E,A
;	LD	D,$0
;	LD	HL,BGUNDT+$11
;	ADD	HL,DE
;
	CALL	SSUB
;
	LD	BC,DSPCLAD
;
	LD	DE,DSPCLNO
	JP	UNSTSB
;-------------------------------------
;-------------------------------------
;-------------------------------------
DRPSST	;�V���b�^�[�J�p�|�W�V�����Z�b�g
	LD	D,$00
	LD	HL,DRUNPS
	ADD	HL,DE
	DEC	BC
	LD	A,(BC)
	LD	(HL),A
;
	PUSH	AF
	AND	$F0
	LD	HL,DROBPY
	ADD	HL,DE
	LD	(HL),A
	POP	AF
	SWAP	A
	AND	$F0
	LD	HL,DROBPX
	ADD	HL,DE
	LD	(HL),A
;
	INC	BC
	RET
;-------------------------------------
;-------------------------------------
;-------------------------------------
;-------------------------------------
;-------------------------------------
DOHANNO
	DB	DANA1,DANA2
;=========================================
DOHANSET
	PUSH    BC
;
;	DEC	BC
;	LD	A,(BC)
;	LD	E,A
;	LD	D,$0
;	LD	HL,BGUNDT+$11
;	ADD	HL,DE
;
	CALL	SSUB
;
	LD	BC,DOHANAD
;
	LD	DE,DOHANNO
	JP	UNSTSB
;-------------------------------------
;-------------------------------------
DKURUNO
	DB	DKUR0,DKUR1
;=========================================
DKURUSET
	PUSH    BC
;
	CALL	SSUB
;
	LD	BC,DKURUAD
;
	LD	DE,DKURUNO
	JP	UNSTSB
;-------------------------------------
;-------------------------------------
;-------------------------------------
DKUUUNO
	DB	DKUU0,DKUU1
;=========================================
DKUUUSET
	PUSH    BC
;
	CALL	SSUB
;
	LD	BC,DKUUUAD
;
	LD	DE,DKUUUNO
	JP	UNSTSB
;-------------------------------------
;-------------------------------------
;-------------------------------------
DEXITAD
	DB	$00,$01,$02,$03
	DB	$10,$11,$12,$13
	DB	$20,$21,$22,$23
	DB	$0FF
DEXITNO
	DB	DEXT0,DEXT1,DEXT1,DEXT2
	DB	DEXT3,DEXT4,DEXT5,DEXT6
	DB	DEXT7,DEXT8,DEXT9,DEXTA
;=========================================
DEXITSET
	LD	A,%00001000
	CALL	TURSTS
;
	PUSH    BC
;
	CALL	SSUB
;
	LD	BC,DEXITAD
;
	LD	DE,DEXITNO
	JP	UNSTSB
;-------------------------------------
;-------------------------------------
;-------------------------------------
;-------------------------------------
;-------------------------------------
;-------------------------------------
;-------------------------------------
;-------------------------------------
DAHOUNO
	DB	DHINL,DHINR
;=========================================
DAHOUSET
	LD	A,(DNJNNO)
	CP	DJROOM2 ;$20
	JR	NC,DAS010
	CP	DJROOM ;$20
	JR	C,DAS010
;
	LD	A,(GRNDPT)
	CP	$0D3
	JR	NZ,DAS010
;
	LD	A,(MANBIKI)
	AND	A
	JR	Z,DAS010
;
	JP	DSHIDSET
DAS010
	LD	A,%00000001
	CALL	TURSTS
;
	PUSH    BC
;
	CALL	SSUB
;
	LD	BC,DAHOUAD
;
	LD	DE,DAHOUNO
	JP	UNSTSB
;-------------------------------------
;-------------------------------------
;-------------------------------------
;-------------------------------------
DKEYUAD
;	DB      $00,$01
;	DB	$0FF
DKEYDAD
;	DB      $00,$01
;	DB	$0FF
DTURUAD
;	DB      $00,$01
;	DB	$0FF
DTURDAD
;	DB      $00,$01
;	DB	$0FF
DSPCLAD
;	DB      $00,$01
;	DB	$0FF
DKAIDAD
;	DB      $00,$01
;	DB	$0FF
DKAIUAD
;	DB      $00,$01
;	DB	$0FF
DKURUAD
;	DB      $00,$01
;	DB	$0FF
DKUUUAD
;	DB      $00,$01
;	DB	$0FF
DBOMUAD
;	DB      $00,$01
;	DB	$0FF
DBOMDAD
;	DB      $00,$01
;	DB	$0FF
DBMUADD
;	DB      $00,$01
;	DB	$0FF
DBMDADD
DAHOUAD
	DB      $00,$01
	DB	$0FF
DKEYLAD
;	DB      $00,$10
;	DB	$0FF
DKEYRAD
;	DB      $00,$10
;	DB	$0FF
DTURLAD
;	DB      $00,$10
;	DB	$0FF
DTURRAD
;	DB      $00,$10
;	DB	$0FF
DOHANAD
;	DB      $00,$10
;	DB	$0FF
DBOMLAD
;	DB      $00,$10
;	DB	$0FF
DBOMRAD
;	DB      $00,$10
;	DB	$0FF
DBMLADD
;	DB      $00,$10
;	DB	$0FF
DBMRADD
	DB      $00,$10
	DB	$0FF
;-------------------------------------
;-------------------------------------
;-------------------------------------
;-------------------------------------
;-------------------------------------
;-------------------------------------
;================================================
;  Back ground BG set
BACKBS
	LD	(ENHELP2),A	; BASE NO.
;	PUSH	AF
;;
;	LD	D,$00
;;
;	LD	HL,BGUNDT
;	LD	A,$FF		; Display oyt data !
;GBDS02
;	LD	(HLI),A
;	DEC	D
;	JR	NZ,GBDS02
;
;	POP	AF
;	RST	0
;	DW	NUKI0SST
;	DW	KUSA0SST
;	DW	KUSA1SST
;	DW	SABAKSST
;	DW	BETA2SST
;;---------------------------------------------
;BETA2SST
;	LD	A,BETA2
;	JR	BKS010
;NUKI0SST
;	LD	A,NUKI0
;	JR	BKS010
;KUSA1SST
;	LD	A,KUSA1
;	JR	BKS010
;KUSA0SST
;	LD	A,KUSA0
;	JR	BKS010
;SABAKSST
;	LD	A,SUNA0
;BKS010
;---------------------------------
	LD	D,$80
;
	LD	HL,BGUNDT+$11
	LD	E,A
GBDS08
	LD	A,L
	AND	$0F
	JR	Z,GBDS0A
	CP	$0A+1
	JR	NC,GBDS0A	; Display out not set !
;
;;	LD	A,E
	LD	(HL),E ;A
GBDS0A
	INC	HL
;
	DEC	D
	JR	NZ,GBDS08
;
	RET
;- - - 
;---------------------------------------------------------------
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	Enemy set data            		       %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;==================================
ENDTST
	LD	A,$01
	LD	($2100),A
	CALL	ENBTCK		; Room bit on off clear check !!
;
	LD	A,$16
;;	LD	A,$08
	LD	($2100),A
;
	XOR	A
	LD	(WORKD),A	; Enemy jyunban set count !
;
	LD	A,(GRNDPT)
	LD	C,A
	LD	B,$00
	SLA	C
	RL	B
;
	LD	HL,GRENAD
;
	LD	A,(DJFLAG)
	AND	A
	JR	Z,EDS008	; Danjyon ?
;				; yes !
	LD	A,(DNJNNO)
	CP	$06
	JR	NZ,EDS0030	;Level 7?
;				;yes !
	LD	A,(TAMA0PT)
	LD	HL,GRNDPT
	CP	(HL)
	JR	NZ,EDS0030	;�e�b�L���E�����镔���H
;				;YES !
	LD	A,TAMA0
	CALL	ENIDSHL
;
	LD	A,(TAMA0XP)
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	A,(TAMA0YP)
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),A
;
	CALL	ENIS00C
;;	CALL	ENIS010
;
	LD	HL,ENJYUN
	ADD	HL,DE
	LD	(HL),$FF
;
	XOR	A
	LD	(WORKD),A
EDS0030
	LD	HL,DJENAD
	LD	A,(DNJNNO)
;
		CP	NEWDJ		;�V�_���W�����H
		JR	NZ,EDS0030_PASS	;	NO --> EDS0030_PASS
		LD	HL,DJENAD2
		JR	EDS010
EDS0030_PASS
;
	CP	DJROOM2 ;$20
	JR	NC,EDS010
	CP	DJROOM ;$20
	JR	C,EDS010
;
	INC	H
	INC	H
;
;;;	JR	EDS010
EDS008
EDS010
	ADD	HL,BC
	LD	A,(HLI)
	LD	C,A
	LD	A,(HL)
	LD	B,A		; (BC):Data addr.
GEDS0C
	LD	A,(BC)
	CP	$FF
	JR	Z,GEDS10	; End ?
;
	CALL	ENITST
	JR	GEDS0C
GEDS10
;LD	A,$01
;LD	($2100),A
	CALL	PBRETN
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%				       %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ENCKBT
	DB	%00000001
	DB	%00000010
	DB	%00000100
	DB	%00001000
	DB	%00010000
	DB	%00100000
	DB	%01000000
	DB	%10000000
;------------------------------------------
ENITST
	LD	A,(WORKD)
	CP	$08
	JR	NC,ENIS08
	LD	E,A
	LD	D,$00
	LD	HL,ENCKBT
	ADD	HL,DE
;
	LD	A,(GRNDPT)
	LD	E,A
	LD	A,(HL)
	LD	HL,ENONOF
	ADD	HL,DE
	AND	(HL)
	JR	NZ,ENIS18	; Fail enemy ?
;				; yes !
ENIS08
	LD	E,$00
	LD	D,E  ;$00
ENIS10
	LD	HL,ENMODE
	ADD	HL,DE
	LD	A,(HL)
	CP	$00
	JR	Z,ENIS20
	INC	E
	LD	A,E
	CP	$10  ;FF
	JR	NZ,ENIS10
;
ENIS18
	LD	HL,WORKD
	INC	(HL)
;
	INC	BC
	INC	BC
	RET
;- - - - - - - - - - - - - - - - - -
ENIS20
	LD	(HL),EINIT ;A
;
	LD	A,(BC)
	AND	$F0
	LD	HL,ENYPSL
	ADD	HL,DE
	ADD	A,$10
	LD	(HL),A
;
	LD	A,(BC)
	INC	BC
	SWAP	A
	AND	$F0
	LD	HL,ENXPSL
	ADD	HL,DE
	ADD	A,$08
	LD	(HL),A
;
	LD	HL,ENMYNO
	ADD	HL,DE
	LD	A,(BC)
	INC	BC
	LD	(HL),A
;
ENIS00C
	LD	A,$03
	LD	($2100),A
	CALL	ENMDST2
;
ENIS010
	LD	A,$01
	LD	($2100),A
;
	CALL	ENISSUB
;
	LD	A,$16   ;(PBANK)
;;	LD	A,$08   ;(PBANK)
	LD	($2100),A
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%      �n�����A���H��{�Ɖ����z      %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
DJRMST
	LD	E,A
;
	LD	A,$14
	LD	($2100),A
;
	LD	A,E
	PUSH	BC
	CALL	DJRMSTS
	POP	BC
	LD	A,(ENHELP) ;$A
;;	LD	A,(PBANK)
	LD	($2100),A
	RET
;=============================================
GMAPCHST
;(CGB)	LD	A,$01
	LD	A,:GMCHSB
	LD	($2100),A
;
	CALL	GMCHSB
;
	RET
;
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	���j�b�g�o���N�Z�b�g						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
Unit_bank_set
		LD	A,(DJFLAG)
		AND	A
		JR	NZ,Unit_bk_set_100

		LD	A,:BGUNCH	; �n��
		JR	Unit_bk_set_200
Unit_bk_set_100
		LD	A,:DJUNCH	; �_���W����
Unit_bk_set_200
		LD	($2100),A
		RET

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�����߂܂�� �L�����N�^�[�]��					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
MARINBKST
		LD	A,:MARIN_CHR_TRAN
		LD	($2100),A
		JP	MARIN_CHR_TRAN

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�����߂܂�� �L�����N�^�[�]��					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
ENDMSBKST
		LD	A,:ENDMS_CHR_TRAN
		LD	($2100),A
		JP	ENDMS_CHR_TRAN


;---------------------------------------------------------------
;EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
;EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
;EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
;EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
	END
;---------------------------------------------------------------
