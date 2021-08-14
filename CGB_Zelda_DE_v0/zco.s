;
		onbankgroup
;
;==============	�o���N�O ================================================
BANK0		GROUP	0
;-------------<	ZMA >-------------
		extern	PBRETN,PBSET
;
;-------------<	zpl >-------------
		extern	GPLAY,POVER
;
;==============	�o���N�P ================================================
BANK1		GROUP	1
;-------------<	ZTI >-------------
		extern	DJITRS,GPMA
;
;-------------<	ZS1 >-------------
		extern	V_RAMDS
;
;==============	�o���N�Q ================================================
BANK2		GROUP	2
;-------------<	ZEX >-------------
		extern	BGMSETS
;
;==============	�o���N�P�e ==============================================
BANK1F		GROUP	1FH
;-------------<	ZSD >-------------
		extern	SOUNDCL
;
;========================================================================
	PUBALL
;
BANK0	GROUP	0
;
	LIB	ZRAM
;
;;;;;;;;	EXTERN	PBRETN,BGMSETS,DJITRS,SOUNDCL,V_RAMDS,PBSET
;
;;;11/17	ORG	$27A8
;
	PAGE
	isdmg
	KANJI
;========================
BGMON
	LD	(SOUND4),A	;(S)
	LD	(TODYFG),A	;(S)
;;	LD	A,$07
;;	LD	(SLEVEL),A	; Max!
;;	LD	A,$70
;;	LD	(SLEVEL2),A	; Max!
	LD	A,$38
	LD	(SDONFG),A	
;
	XOR	A
	LD	(SDOUTFG),A	;
	RET
;========================
SVOPEN
	PUSH	HL
	LD	HL,$4000	; (CGB)
	LD	(HL),$0		; (CGB)
	LD	HL,$0000
	LD	(HL),$0A
	POP	HL
	RET
;========================
BGMSET
	LD	A,$02
	LD	($2100),A
;
	PUSH	BC
	CALL	BGMSETS
	POP	BC
;
	JP	PBRETN
;========================
SOUNDOUT
	LD	A,$38
	LD	(SDOUTFG),A
	XOR	A
	LD	(SDONFG),A
	RET
;========================
SOUNDCLR
	LD	A,(BGMNOT)
	AND	A
	JR	NZ,SDCLR10
;
	LD	A,$1F
	LD	($2100),A
;
	CALL	SOUNDCL
;
SDCLR10
	JP	PBRETN
;===============================
DJITRV
;- - Danjyon item buffer => Save buffer - - -
	LD	A,$01
	LD	($2100),A
;
	CALL	DJITRS
;
	JP	PBRETN
;************************************************
;*	�Q�[���{�[�C �T�u���[�`�� 		*
;*	                       			*
;*		Start on 1988�N11�� 10��	*
;*		modify on 1989�N 1�� 27��	*
;************************************************
RNDSUB
	PUSH	HL
;
	LD	A,(FRCNT)
	LD	HL,RNDFLG
	ADD	A,(HL)
	LD	HL,LY
	ADD	A,(HL)
	RRCA
	LD	(RNDFLG),A
;
	POP	HL
	RET
;
	PAGE
;--------------------------------------------------------------------
;-   CONT	        �L�|���̓��|�`��			    -
;-								    -
;-	�d�m�s�q�x						    -
;-	   ��							    -
;-								    -
;-	�q�d�s�t�q�m						    -
;-	   CNT1 = �������|�N�q�`�l��	; �ׂ����͕ێ��p	    -
;-	   TRG1 = �������|�N�q�`�l��	; �g���K���͕ێ��p	    -
;-								    -
;-	   �g�p���W�X�^  �`�C�a�C�b				    -
;-								    -
;--------------------------------------------------------------------
;     		******************************
;     		*                            *
;     		*     7                      *
;     		*  6     5   3  4    2   1   *
;     		*     8			     *
;     		*			     *
;     		******************************
CONT	
	LD	A,(SCRLFG)
	AND	A
	JR	NZ,CONTRT
;
		ld	a,(GMMODE)
		cp	GPLAY
		jr	nz,CONT_100
;
		ld	a,(ITMODE)
		cp	GPMA
		jr	nz,CONT_050
;
		LD	A,(PLMODE)
		CP	POVER		; �Q�[���I�[�o�[�H
		JR	NZ,CONT_030	; �m�n
		LD	A,(PLSTAT)
		CP	$4		; �Z�[�u�����ʁH
		JR	Z,CONT_100	; �x�d�r
CONT_030
		ld	a,(SBHR)
		cp	004
		jr	nz,CONT_050
;
		ld	a,(FADEMDFG)
		and	a
		jr	z,CONT_100	; �t�F�[�h���@�H
;					; Yes !!
CONT_050
		xor	a
		ld	(CNT1),a
		ld	(TRG1),a
		ret
;
CONT_100
	LD	A,$20
	LD	(P1),A
;
	LD	A,(P1)
	LD	A,(P1)
	CPL
	AND	$0F
	LD	B,A
;
	LD	A,$10
	LD	(P1),A
;
	LD	A,(P1)
	LD	A,(P1)
	LD	A,(P1)
	LD	A,(P1)
	LD	A,(P1)
	LD	A,(P1)
	LD	A,(P1)
	LD	A,(P1)
	SWAP	A
	CPL
	AND	$0F0
	OR	B
	LD	C,A
	LD	A,(CNT1)
	XOR	C
	AND	C
	LD	(TRG1),A
	LD	A,C
	LD	(CNT1),A
;
	LD	A,$30
	LD	(P1),A
;
CONTRT
	RET
;--------------------------------------------------------------------
;-   DMASET	�c�l�`�]�����[�`����������[�N�q�`�l�ɓW�J����      -
;-								    -
;-	  (   �P�O�o�C�g�g�p����    )				    -
;-								    -
;-								    -
;-	   ���e�e�W�O		  	 ;  �ݒu�擪�Ԓn	    -
;-	   ���b�O�O�O	�@ 		 ;  �n�`�l����擪�Ԓn	    -
;-								    -
;-	   �g�p���W�X�^  �`�C�a�C�b				    -
;-								    -
	PAGE
;--------------------------------------------------------------------
;-   OBJBG	�n�a�i���W�ʒu�ɑΉ�����u�q�`�l�A�h���X���Z�o����  -
;-								    -
;-	�d�m�s�q�x						    -
;-	   OBJYP =  �������|�N�q�`�l��	 ; �n�a�i�@�x���W�ێ��p	    -
;-	   OBJXP =  �������|�N�q�`�l��@ ; �n�a�i�@�w���W�ێ��p	    -
;-								    -
;-	�q�d�s�t�q�m						    -
;-	   VRAMH =  �������|�N�q�`�l��	 ;�u�q�`�l��ʃA�h���X�ێ��p-
;-	   VRAML =  �������|�N�q�`�l��	 ;�u�q�`�l���ʃA�h���X�ێ��p-
;-								    -
;-								    -
;-	   �g�p���W�X�^  �`�C�a�C�c�d�C�g�k			    -
;-								    -
;--------------------------------------------------------------------
OBJBG
	PUSH	BC
;
	LD	A,(OBJYP)	;HL=(OBJY-10H)/8*020H+09841H
	LD	HL,SCCV
	ADD	A,(HL)
;;;	SUB	$10		;
	AND	$F8
	SRL	A		;
	SRL	A		;
	SRL	A		;
	LD	DE,$000		;
	LD	E,A		;
	LD	HL,$09800	;
	LD	B,$020		;
OBJBG1	ADD	HL,DE		;
	DEC	B		;
	JR	NZ,OBJBG1	;---------------------

	PUSH	HL
	LD	A,(OBJXP)	;DE=(OBJX-08H)/8
	LD	HL,SCCH
	ADD	A,(HL)
	POP	HL
;;	SUB	$08		;
	AND	$F8
	SRL	A		;
	SRL	A		;
	SRL	A		;
	LD	DE,$000		;
	LD	E,A		;---------------------
	ADD	HL,DE		;HL=HL+DE
	LD	A,H		;SAVE TO VRAMH,VRAML
	LD	(VRAMH),A	;
	LD	A,L		;
	LD	(VRAML),A	;---------------------
;
	POP	BC
	RET


	PAGE
;--------------------------------------------------------------------
;-   BGOBJ	�u�q�`�l�A�h���X�ɂn�a�i���W�ʒu�Ή�������Z�o����  -
;-								    -
;-	�d�m�s�q�x						    -
;-	   VRAMH =  �������|�N�q�`�l��	 ;�u�q�`�l��ʃA�h���X�ێ��p-
;-	   VRAML =  �������|�N�q�`�l��	 ;�u�q�`�l���ʃA�h���X�ێ��p-
;-								    -
;-	�q�d�s�t�q�m						    -
;-	   OBJYP =  �������|�N�q�`�l��	 ; �n�a�i�@�x���W�ێ��p	    -
;-	   OBJXP =  �������|�N�q�`�l��@ ; �n�a�i�@�w���W�ێ��p	    -
;-								    -
;-		     ��L���Z�b�g����				    -
;-								    -
;-	   �g�p���W�X�^  �`�C�a�C�c�d�C�g�k			    -
;-								    -
;--------------------------------------------------------------------
;BGOBJ
;	LD	A,(VRAMH)	;DE=VRAM ADDRESS
;	LD	D,A		;
;	LD	A,(VRAML)	;
;	LD	E,A		;---------------
;	LD	B,4		;DE R-SHIFT
;BGOBJ1	RR	D		;    4 TIMES
;	RR	E		;
;	DEC	B		;
;	JR	NZ,BGOBJ1	;---------------
;	LD	A,E		;(E-084H)*4
;	SUB	$084		;
;	AND	$0FE		;
;	RLCA			;
;	RLCA			;---------------
;	ADD	A,$08		;
;	LD	(OBJYP),A	;SAVE TO OBJY
;
;	LD	A,(VRAML)	;CALICURATE
;	AND	$01F		;  OBJ H-POSITION
;	RLA			;
;	RLA			;
;	RLA			;
;	ADD	A,$08		;---------------
;	LD	(OBJXP),A	;SAVE TO OBJX
;
;	RET


	PAGE
;--------------------------------------------------------------------
;-   RST 0      	�h�c�i�l�o  				    -
;-								    -
;-								    -
;-	   �A�h���X���O�O�Ԓn��    JP	IDJMP 	�܂��͉��L��	    -
;-	   �v���O�����𒼐ڐݒu���Ă���				    -
;-								    -
;-	�d�m�s�q�x						    -
;-	   �`���W�X�^    �I���i���o�|                 		    -
;-								    -
;-	   �g�p���W�X�^  �`�C�c�d�C�g�k				    -
;-								    -
;--------------------------------------------------------------------
IDJMP
	LD	E,A
	LD	D,$00
	SLA	E
	RL	D
;
;;	ADD	A,A
;;	LD	E,A
;;	LD	D,00
	POP	HL
	ADD	HL,DE
	LD	E,(HL)
	INC	HL
	LD	D,(HL)
;;;;;;;;	PUSH	DE
;;;;;;;;	POP	HL
		ld	l,e
		ld	h,d
;
	JP	(HL)

	PAGE
;--------------------------------------------------------------------
;-                                           �ύX 1989-1-27         -
;-   LCDC_OFF   	�k�b�c�b �X�g�b�v                	    -
;-								    -
;-	�d�m�s�q�x						    -
;-	   ��                                  			    -
;-								    -
;-	�q�d�s�t�q�m						    -
;-	  ��							    -
;-								    -
;-								    -
;-	   �g�p���W�X�^ �`  (�h�d�a)   				    -
;-								    -
;--------------------------------------------------------------------
;
LCDC_OFF
	LD	A,(IE)
	LD	(IEB),A		; ���荞�݋��t���O�ޔ�
	RES	0,A		; �����u�����N���荞�݋֎~
		ld	(IE),a
LCDC_OF10
	LD	A,(LY)		; �u�|�a�k�`�m�j �҂�
	CP	145
;;	JR	C,LCDC_OF10
	JR	NZ,LCDC_OF10

	LD	A,(LCDC)	; �k�b�c�b �X�g�b�v
	AND	%01111111
	LD	(LCDC),A

	LD	A,(IEB)
	LD	(IE),A		; ���荞�݋��t���O���A
	RET


	PAGE
;--------------------------------------------------------------------
;-   RAMC     	�q�`�l �N���A�[				 	    -
;-								    -
;-	�d�m�s�q�x						    -
;-	   �g�k �q�`�l �A�h���X                			    -
;-	   �a   ��	                			    -
;-								    -
;-	�q�d�s�t�q�m						    -
;-	  ��							    -
;-								    -
;-								    -
;-								    -
;-	   �g�p���W�X�^ �`, �a�b, �g�k			    	    -
;-								    -
;--------------------------------------------------------------------
;
;RAMC
;	LD	A,00
;RAMC10
;	LD	(HLI),A
;	DEC	BC
;	LD	A,C
;	OR	B
;	JR	NZ,RAMC
;	RET
;

;--------------------------------------------------------------------
;-   V_RAMC     	�u�|�q�`�l ( $9800 - $9BFF ) �N���A�[ 	    -
;-								    -
;-	�d�m�s�q�x						    -
;-	   ��                                  			    -
;-								    -
;-	�q�d�s�t�q�m						    -
;-	  ��							    -
;-								    -
;-								    -
;-	   SPACE   =   �N���A �L�����N�^  			    -
;-								    -
;-								    -
;-	   �g�p���W�X�^ �`, �a�b, �c�d�C�g�k			    -
;-								    -
;--------------------------------------------------------------------
;
V_RAMD
	LD	A,$01
	CALL	PBSET
	jp	V_RAMDS
;;;(CGB)	CALL	V_RAMDS
;;;(CGB)	RET
V_RAMB
	LD	A,BETA  ;$DF
VCF00
	LD	BC,$400
	JR	VRC0
V_RAMC
	LD	A,SPACE
	LD	BC,$800
VRC0
	LD	D,A
;;	JR	KUSAST		; TEST !
;
	LD	HL,$9800	; 9800-?<<SPACE
VRC1	LD	A,D    ;SPACE
	LD	(HLI),A
	DEC	BC
	LD	A,B
	OR	C
	JR	NZ,VRC1
;
	RET
;;-------Small kusa set-----------------------------
;KUSAST	LD	HL,$9BFF	; 9800-9BFF<<KUSA
;	LD	BC,$400
;KRC1	LD	A,$61 
;	PUSH	AF
;	LD	A,L
;	RLC	A
;	RLC	A
;	RLC	A
;	XOR	C
;	AND	$1
;	JR	Z,KRC33
;	POP	AF
;	LD	A,SPACE
;	PUSH	AF
;KRC33	
;	POP	AF
;	LD	(HLD),A
;	DEC	BC
;	LD	A,B
;	OR	C
;	JR	NZ,KRC1
;;- - - - 9C00
;	LD	HL,$9FFF	; 9C00-9FFF<<SPACE
;	LD	BC,$400
;VRC5	LD	A,SPACE
;	LD	(HLD),A
;	DEC	BC
;	LD	A,B
;	OR	C
;	JR	NZ,VRC5
;	RET
;
	PAGE
;
;--------------------------------------------------------------------
;-   DATA_MOV   	�f�[�^ �\�t�g �]��               	    -
;-								    -
;-								    -
;-	�d�m�s�q�x						    -
;-	   �g�k    =   �]���� �擪 �A�h���X			    -
;-	   �c�d    =   �]���� �擪 �A�h���X			    -
;-	   �a�b    =   �]�� ��     				    -
;-								    -
;-	�q�d�s�t�q�m						    -
;-	  ��							    -
;-								    -
;-	   �g�p���W�X�^ �`, �a�b, �c�d�C�g�k			    -
;-								    -
;--------------------------------------------------------------------
;

DATA_MOV2	; Message test !!
	LD	($2100),A
	CALL	DATA_MOV
	LD	A,$01
	LD	($2100),A
	RET
;
DATA_MOV
	LD	A,(HLI)
	LD	(DE),A
	INC	DE
	DEC	BC
	LD	A,B
	OR	C
	JR	NZ,DATA_MOV
	RET

	PAGE
;
;--------------------------------------------------------------------
;-   VRAMTR     	�u�|�q�`�l �g���X�t�@�[ (NORMAL)          	    -
;-   VRAMTR2     	�u�|�q�`�l �g���X�t�@�[ (SCROLL)          	    -
;-								    -
;-								    -
;-	�d�m�s�q�x						    -
;-	   �c�d    =   �f�[�^ �擪 �A�h���X			    -
;-								    -
;-	�q�d�s�t�q�m						    -
;-	  ��							    -
;-								    -
;-	�f�[�^�t�H�[�}�b�g					    -
;-		VRAM-H ADDR					    -
;-		VRAM-L ADDR					    -
;-		DATA-SIZE (D7=0:��/1:�c, D6=0:������ް�/1:�����ް�) -
;-			  (D5-D0 =�f�[�^��)			    -
;-		DATA1						    -
;-		DATA2						    -
;-		  �	FF:Not write					    -
;-		  �						    -
;-		$00	( �G���h �R�[�h )				    -
;-								    -
;-								    -
;-								    -
;-	   �g�p���W�X�^ �`, �a�b, �c�d�C�g�k			    -
;-								    -
;--------------------------------------------------------------------
;
VRTR20
	INC	DE
	LD	H,A	; ADDR.HIGH
	LD	A,(DE)
	LD	L,A	; ADDR.LOW
	INC	DE

	; (DE)=VRAM START ADDR.

	LD	A,(DE)	; CNT.CODE
			; D7 = 0:��/1:�c
			; D6 = 0:����/1:�A��
			; D5-D0 = ��-1
	INC	DE
	CALL	VRAMTR_EX	; Need	[(DE)=WRITE DATA ADDR.]
				;	[(HL)=WRITE ADDR.]
				;	[Areg.=CNT.CODE]
VRAMTR
	LD	A,(SCRLFG)
	AND	A
	JR	NZ,VRAMTR2
;
VRAMTR1
	LD	A,(DE)
	AND	A
	JR	NZ,VRTR20

	RET
;=======================================
VRT220
	INC	DE
	LD	H,A	; ADDR.HIGH
	LD	A,(DE)
	LD	L,A	; ADDR.LOW
	INC	DE
	
	; (DE)=VRAM START ADDR.

	LD	A,(DE)	; CNT.CODE
			; D7 = 0:��/1:�c
			; D6 = 0:����/1:�A��
			; D5-D0 = ��-1
	INC	DE
	CALL	VRAMT2_EX	; Need	[(DE)=WRITE DATA ADDR.]
				;	[(HL)=WRITE ADDR.]
				;	[Areg.=CNT.CODE]
VRAMTR2
	LD	A,(DE)
	AND	A
	JR	NZ,VRT220

	RET
;<<<<< >>>>>
VRAMTR_EX	; Need	[(DE)=WRITE DATA ADDR.]
		;	[(HL)=WRITE ADDR.]
		;	[Areg.=CNT.CODE]
	PUSH	AF
	AND	%00111111
	LD	B,A	; ��
	INC	B	;  " +1
	POP	AF
	RLCA
	RLCA
	AND	%00000011
	JR	Z,VRAMTR_E_00
	DEC	A
	JR	Z,VRAMTR_E_01
	DEC	A
	JR	Z,VRAMTR_E_10
	JR	VRAMTR_E_11

; ��,����
VRAMTR_E_00
	LD	A,(DE)
;;	CP	$FE		; Not set chr !
;;	JR	Z,VTR000
;
	LD	(HLI),A
	LD	A,L
	AND	%00011111
	JR	NZ,VTR001	; Line limit over ?
;				; yes !
		dec	hl
		ld	a,l
		and	0e0h
		ld	l,a
;;;(CGB)	LD	A,L
;;;(CGB)	SUB	%00100000	; Line not chenge !
;;;(CGB)	LD	L,A
;;;(CGB)	LD	A,H
;;;(CGB)	SBC	A,$0
;;;(CGB)	LD	H,A
VTR001
VTR000
	INC	DE
	DEC	B
	JR	NZ,VRAMTR_E_00
	RET
; ��,�A��
VRAMTR_E_01
VRAMTR_E_013
	LD	A,(DE)
;	CP	$FE		; not set chr !
;	JR	Z,VTR010
	LD	(HLI),A
;
	LD	A,L
	AND	%00011111
	JR	NZ,VTR002	; Line limit over ?
;				; yes !
		dec	hl
		ld	a,l
		and	0e0h
		ld	l,a
;;;(CGB)	LD	A,L
;;;(CGB)	SUB	%00100000	; Line not chenge !
;;;(CGB)	LD	L,A
;;;(CGB)	LD	A,H
;;;(CGB)	SBC	A,$0
;;;(CGB)	LD	H,A
VTR002
VTR010
	DEC	B
	JR	NZ,VRAMTR_E_013
	INC	DE
	RET
; �c,����
VRAMTR_E_10
	LD	A,(DE)
;	CP	$FE		; not set chr
;	JR	Z,VTR020
	LD	(HL),A
;VTR020
	INC	DE
	LD	A,B	; Breg. SAVE
	LD	BC,$0020
	ADD	HL,BC
	LD	B,A	; Breg. LOAD
	DEC	B
	JR	NZ,VRAMTR_E_10
	RET
; �c,�A��
VRAMTR_E_11
	LD	A,(DE)
;	CP	$FE		; not set chr
;	JR	Z,VTR030
	LD	(HL),A
;VTR030
	LD	A,B	; Breg. SAVE
	LD	BC,$0020
	ADD	HL,BC
	LD	B,A	; Breg. LOAD
	DEC	B
	JR	NZ,VRAMTR_E_11
	INC	DE
	RET
;
;<<<<< >>>>> FOR SCROLL BG WRITE ONLY 
VRAMT2_EX	; Need	[(DE)=WRITE DATA ADDR.]
		;	[(HL)=WRITE ADDR.]
		;	[Areg.=CNT.CODE]
	PUSH	AF
	AND	%00111111
	LD	B,A	; ��
	INC	B	;  " +1
	POP	AF
	AND	%10000000
	JR	NZ,VRAMT2_E_10
;;	RLCA
;;	RLCA
;;	AND	%00000011
;;	JR	Z,VRAMTR_E_00
;;	DEC	A
;;	JR	Z,VRAMTR_E_01
;;	DEC	A
;;	JR	Z,VRAMTR_E_10
;;	JR	VRAMTR_E_11

; ��,����
VRAMT2_E_00
	LD	A,(DE)
	CP	$EE		; Not set chr !
	JR	Z,VT2000
;
	LD	(HLI),A
	LD	A,L
	AND	%00011111
	JR	NZ,VT2001	; Line limit over ?
;				; yes !
		dec	hl
		ld	a,l
		and	0e0h
		ld	l,a
;;;(CGB)	LD	A,L
;;;(CGB)	SUB	%00100000	; Line not chenge !
;;;(CGB)	LD	L,A
;;;(CGB)	LD	A,H
;;;(CGB)	SBC	A,$0
;;;(CGB)	LD	H,A
VT2001
VT2000
	INC	DE
	DEC	B
	JR	NZ,VRAMT2_E_00
	RET
; �c,����
VRAMT2_E_10
	LD	A,(DE)
	CP	$EE		; not set chr
	JR	Z,VT2020
	LD	(HL),A
VT2020
	INC	DE
	LD	A,B	; Breg. SAVE
	LD	BC,$0020
	ADD	HL,BC
	LD	B,A	; Breg. LOAD
	DEC	B
	JR	NZ,VRAMT2_E_10
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%				          %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
RAMCL2
	LD	BC,$1600 ; GAME USE RAM CLEAR !		
	JR	RMCL10
RAMCL3
	LD	BC,$1300 ; GAME USE RAM CLEAR !		
	JR	RMCL10
RAMCLR4
	LD	BC,$FFBF-$FF90
	JR	RMCL80
RAMCLR
	LD	BC,$FFFD-$FF90
RMCL80
	LD	HL,$FF90
	CALL	OBJ_CLR_30	; FF page clear !
;
	LD	BC,$1F00 ; ALL WORK RAM CLEAR !
RMCL10
	LD	HL,$C000 ;OBJRAM ; 0C000H for 0CEFFH (CF00.. STACK)
OBJ_CLR_30
RMCLSB
	LD	A,(CGBFLG)	; �b�f�a�t���O �Ҕ�
	PUSH	AF
RMCLSB_100
	XOR	A
	LD	(HLI),A
	DEC	BC
	LD	A,B
	OR	C
;(CGB)	JR	NZ,RMCLSB
	JR	NZ,RMCLSB_100
	POP	AF
	LD	(CGBFLG),A	; �b�f�a�t���O ���A
	RET
;----------------------
	END
;--------------------------------------------------------------------
;-   CONT	        �L�|���̓��|�`��			    -
;-								    -
;-	�d�m�s�q�x						    -
;-	   ��							    -
;-								    -
;-	�q�d�s�t�q�m						    -
;-	   CNT1 = �������|�N�q�`�l��	; �ׂ����͕ێ��p	    -
;-	   TRG1 = �������|�N�q�`�l��	; �g���K���͕ێ��p	    -
;-								    -
;-	   �g�p���W�X�^  �`�C�a�C�b				    -
;-								    -
;--------------------------------------------------------------------
;     		******************************
;     		*                            *
;     		*     7                      *
;     		*  6     5   3  4    2   1   *
;     		*     8			     *
;     		*			     *
;     		******************************
CONT	LD	A,$20
	LD	(P1),A
	LD	A,(P1)
	LD	A,(P1)
	CPL
	AND	$0F
	SWAP	A
	LD	B,A
	LD	A,$10
	LD	(P1),A
	LD	A,(P1)
	LD	A,(P1)
	LD	A,(P1)
	LD	A,(P1)
	LD	A,(P1)
	LD	A,(P1)
	CPL
	AND	$0F
	OR	B
	LD	C,A
	LD	A,(CNT1)
	XOR	C
	AND	C
	LD	(TRG1),A
	LD	A,C
	LD	(CNT1),A
;
	LD	A,$30
	LD	(P1),A
	RET
;
