
		onbankgroup

;==============	�o���N�O ================================================
BANK0		GROUP	0
;-------------<	ZCO >----------------------------------------------------
		EXTERN	RNDSUB,OBJBG,BGMSET,SOUNDCLR,LCDC_OFF
;
;-------------<	ZPL >----------------------------------------------------
		EXTERN	PLPSRV,MSGCHK,MSGCHK2,DUSHCL,KNCSET,KNFLSH
		EXTERN	PLSHST,MVCALC,FLASHST,EXIDSH,NXGOTO,GEKI08
		EXTERN	LDTIM0,PLXCLC,ENHNCL,BBSDST,MSGCH2,NAZOCLR,NOSDST
		EXTERN	YOSSISET,O2MCHK,LDTIM1,LDTIM3,DUSHCL2,CARITMD
		EXTERN	PTOBI,PBULE,POVER,PINDR1,PMOVE,PFOLE,KTOBJ,BSLIM
		EXTERN	SLIMB,TBOSS,PTATE,PMGIC,POKAR,FDIN,PSWIM,GPLAY
		EXTERN	PLHKCK,PLHKC0,PLHKXD,PLHKYD,PKEN,KURUD,PEACH,GMAP
;
;-------------<	ZES >----------------------------------------------------
		EXTERN	ISIBRKL,CRENENL,PLDMST0,ENMOVE,ENBGCKL,ENBGCK2L
		EXTERN	ENPTST,STATINC,ENIDSHL,ENIDSH2L,BSSDCK,CREPKEL
		EXTERN	CRENPLL,CRENPL2L,EN2CST,EN1CST,PSERCHL,PSERCH2L
		EXTERN	CRKNENL,ENFEND,CRENPSL,ENPSSV,ENSDCL,NXOMSBL
		EXTERN	PLBGCKL,ENALCL,HNSMST,ENOMST,ENSZST,SADWSTL,SHRVSE
		EXTERN	ITEMGETS,ENBITON,ENMDSTL,CRKNKNL,EFAIL,EFOLE
		EXTERN	EFIRE,EINIT,EMOVE,ESTOP,ECACH,ESHOT,ENCLER
;
;-------------<	ZBS >----------------------------------------------------
		EXTERN	DJRMRD,BGCRRD
;
;-------------<	ZMA >----------------------------------------------------
		EXTERN	PBSET,BG1UNIT_ATR_SUB,NEWDJ_DMA,
		EXTERN	Unit_change
		EXTERN	JSL_CALL
;
;==============	�o���N�Q ================================================
BANK2		GROUP	2
;-------------<	ZEX >----------------------------------------------------
		EXTERN	SPUNDT,WTUP,SMK1,RZNZ,FLSH,FUCKS,BFZN,DSZN
;
;==============	�o���N�R ================================================
BANK3		GROUP	3
;-------------<	ZEN >----------------------------------------------------
		EXTERN	EFLSST,BHFIR,PUKPJ,HARTB,R7BEM,RENO7,BGKAO,UFOCH
		EXTERN	TERSA,FISHG,SBOMB,BOMBR,NINTM,HAYAB,BSNAK,GORMA
		EXTERN	BSKEL,BFIRE,BBIRD,SWBLK2,BFISH,SWTRP,NIWAT,KODOMA
		EXTERN	PAPA0,KAMEI,RANEM,PANEL,BHANA,SHANA,HEIS0,MORI1
		EXTERN	OCTA1,KODOMB,IZUMI,SONIC,KEYSM,MIZUB,SLOT,HART1
		EXTERN	RUPY1,OCHAN,KAKIN,SLIMS,HASIR,OCTAM,PACKN,LIFTY
		EXTERN	LIFTT,MONKY,AMUST,HANNY,TURI,SHIGE,KUMA0,TBEAM
		EXTERN	OBQBAR,C_BOY
;
;==============	�o���N�W ================================================
BANK8		GROUP	8
;-------------<	ZBD >----------------------------------------------------
		EXTERN	GRBGCR,DJBGCR
;
;==============	�o���N�P�S ==============================================
BANK14		GROUP	$14
;-------------<	ZDB >----------------------------------------------------
		EXTERN	NOT,SLM,BUL,KEN,TAT,BIN
;
;==============	�o���N�P�` ==============================================
BANK1A		GROUP	$1A
;-------------<	ZMAP >---------------------------------------------------
		EXTERN	Taki_atr_set_sub
;
;==============	�o���N�R�V ==============================================
BANK37		GROUP	$37
;-------------<	ZGEKI >--------------------------------------------------
		EXTERN	CMTR
;
;========================================================================
;
	PUBALL
;
BANK7	GROUP	07
;
	LIB	ZRAM
	LIB	ZBN
;
;------------------------------------------------------------------------
;
	KANJI
	PAGE
;
	isdmg
;
	LIST
	ORG	$4000
;==============================================================
;============================
DORSDST5	;�h�A�I�[�v��
	LD	A,$04
	LD	(SOUND3),A	;(S)
	RET
;
;+--------------------------------------------------------------+
;|	ENYSPD�̃A�h���X�f�d�s					|
;+--------------------------------------------------------------+
E5ENYSPD_ADR
		LD	HL,ENYSPD
		ADD	HL,BC
		RET
;
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�V�Q�~��						%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
SHIGECD
	DB	$7C,$02,$7E,$02
	DB	$7E,$22,$7C,$22
SHIGECD2
	DB	$F4,$16,$F6,$16
	DB	$F0,$17,$F2,$17
SHIGECD3
	DB	$F4,$16,$F6,$16
	DB	$F0,$16,$F2,$16
SHIGEMV
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	CP	$02
	JP	Z,SHIGEMV2
	AND	A
	JR	NZ,SGM0001
;
	INC	(HL)
;
	LD	A,(ENSVXL)
	RLA
	RLA
	AND	%01000000
	PUSH	AF
	LD	HL,ENMOD3
	ADD	HL,BC
	OR	(HL)
	LD	(HL),A	;�΂͌��͂˂�����I
	POP	AF
	SLA	A
	LD	HL,ENMOD1
	ADD	HL,BC
	OR	(HL)
	LD	(HL),A
;
	LD	A,(ENSVXL)
	RRA
	RRA
	RRA
	RRA
	AND	%00000001
	LD	HL,ENWRK3
	ADD	HL,BC
	LD	(HL),A	;0:�� 1:��
SGM0001
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	A,(ENDSYP)
	SUB	(HL)
	LD	(ENDSYP),A
;
	LD	HL,ENWRK3
	ADD	HL,BC
	LD	A,(HL)
	LD	(ENCHPT2),A
;
	LD	DE,SHIGECD2
	LD	A,(DJFLAG)
	AND	A		;�n��H
	JR	Z,SGM0100	;	YES --> SGM0100
	LD	DE,SHIGECD3
SGM0100
	CALL	EN2CST		;��or��
;
	CALL	ENPSSV
;
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,SGC090
;
	LD	HL,ENCHPT
	ADD	HL,BC
	LD	A,(HL)
	LD	(ENCHPT2),A
;
	LD	DE,SHIGECD
	CALL	EN2CST		;�{�́I
SGC090
	CALL	E5STCK
;
	LD	HL,ENLIFE
	ADD	HL,BC
	LD	(HL),$04
;
	LD	HL,ENFLSH
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,SGC0A0
;
	LD	(HL),B
;
	LD	HL,ENWRK3
	ADD	HL,BC
	LD	A,(HL)
	XOR	$01
	CALL	ENPTST
;
	LD	HL,ENMYNO
	ADD	HL,BC
	LD	(HL),KTOBJ
;
	LD	HL,SOUND3
	LD	(HL),$05	;(S)
;
;;	LD	HL,ENTIM1
;;	ADD	HL,BC
	CALL	LDTIM1
	LD	(HL),$1F
;
	LD	HL,ENMOD0
	ADD	HL,BC
	LD	A,(HL)
	ADD	A,$2
	LD	(HL),A
;
		jp	SHIGEST
;;;;;;;;	CALL	SHIGEST
;;;;;;;;	RET
;
SGC0A0
	CALL	ENHNCL
;
	CALL	CREPKEL
;
	LD	A,(ENSTAT2)
	RST	00
	DW	SGM1000
	DW	SGM2000
;--------------------------------
SGMXSD
	DB	$10,$F0,$00,$00
SGMYSD
	DB	$00,$00,$F0,$10
;- - - - - - - - - - - - - - - - -
SGM1000
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	(HL),B
;
	CALL	LDTIM0
	JR	NZ,SGM1050
;
	CALL	E5YCHK
	ADD	A,$08
	CP	$10
	JR	C,SGM1002
;
	PUSH	DE
	CALL	E5XCHK
	ADD	A,$08
	POP	DE
	CP	$10
	JR	NC,SGM1050
;
	LD	A,E
	CP	$02
	JR	Z,SGM1050
;
SGM1002
	CALL	STATINC
;
	CALL	E5XYCK
	LD	D,B
	LD	HL,SGMXSD
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
	LD	HL,SGMYSD
	ADD	HL,DE
	LD	A,(HL)
;;;KK;;;	LD	HL,ENYSPD
;;;KK;;;	ADD	HL,BC
	CALL	E5ENYSPD_ADR
	LD	(HL),A
;
	LD	HL,ENMOD0
	ADD	HL,BC
	RES	7,(HL)
	LD	HL,ENMOD1
	ADD	HL,BC
	RES	2,(HL)
;
	CALL	ENSZST
;
	CALL	LDTIM0
	LD	(HL),$30
	RET
SGM1050
;--�����グ�`�F�b�N�I--
	LD	HL,ENMOD0
	ADD	HL,BC
	SET	7,(HL)
	LD	HL,ENMOD1
	ADD	HL,BC
	SET	2,(HL)	;BIG size !
;
	CALL	ENSZST
;
	CALL	CRENPSL
	RET	NC
;
	LD	A,(POWDRTM)
	AND	A
	RET	NZ
;
	LD	A,(ITEMB)
	CP	PBULE
	JR	NZ,SGM1020	; Bulesret check !
;
	LD	A,(KEYA2)
	AND	%00100000
	JR	NZ,SGM1030
	RET
SGM1020
	LD	A,(ITEMA)
	CP	PBULE
	RET	NZ
;
	LD	A,(KEYA2)
	AND	%00010000
	JR	Z,SGM1060
;
SGM1030
	LD	A,(WPLCAMD)
	AND	A
	RET	NZ
;
	INC	A
	LD	(WPLCAMD),A
;
	CALL	STATINC
	LD	(HL),$02
;
	LD	HL,ENMODE
	ADD	HL,BC
	LD	(HL),ECACH
;
	LD	HL,ENWRK4
	ADD	HL,BC
	LD	(HL),$01	;�d���Z�b�g�I
;
	LD	HL,ENCAST
	ADD	HL,BC
	LD	(HL),B
;
	LD	A,(PLCMKI)
	LD	(PLCAMK),A
;
	CALL	LDTIM0
	LD	(HL),$02
;
	LD	HL,SOUND2
	LD	(HL),$02	;(S)
;
	LD	HL,ENMYNO
	ADD	HL,BC
	LD	(HL),KTOBJ
;
	LD	HL,ENWRK3
	ADD	HL,BC
	LD	A,(HL)
	XOR	$01
	CALL	ENPTST
;
SHIGEST
	LD	A,SHIGE
	CALL	ENIDSHL
	RET	C
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
	LD	HL,ENWRK0
	ADD	HL,DE
	LD	(HL),$02
;
	LD	HL,ENTIM0
	ADD	HL,DE
	LD	(HL),$40
SGM1060
	RET
;
;-----------------------------------------
SGM2000
	CALL	LDTIM0
	JR	NZ,SGM2090
;
SGM2END
	CALL	LDTIM0
	LD	(HL),$20
;
	CALL	STATINC
	LD	(HL),B
	RET
SGM2090
	CALL	E5MVCL
	CALL	ENBGCKL
;
	LD	HL,ENCBFG
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	NZ,SGM2END	
;
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	(HL),$04
;
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	AND	$01
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;	RET
;================================================
SG2YSD
	DB	$F0,$F4
SG2XSD
	DB	$00,$0C,$10,$0C,$00,$F4,$F0,$F4
;- - - - - - - - - - - - - - - - -
SHIGEMV2
	LD	DE,SHIGECD
	CALL	EN2CST
;
	CALL	E5STCK
;
	CALL	E5HNSB
;
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	AND	$01
	CALL	ENPTST
;
	CALL	E5MVCL
;
	CALL	ENBGCKL
	CALL	CREPKEL
;
	CALL	LDTIM0
	JR	NZ,SG2M10
;
	CALL	RNDSUB
	AND	$1F
	ADD	A,$20
	LD	(HL),A
;
	AND	$07
	LD	E,A
	LD	D,B
	LD	HL,SG2XSD
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
	LD	HL,SG2YSD
	ADD	HL,DE
	LD	A,(HL)
;;;KK;;;	LD	HL,ENYSPD
;;;KK;;;	ADD	HL,BC
	CALL	E5ENYSPD_ADR
	LD	(HL),A
SG2M10
	RET
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	���̉��肨�₶						%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
TURICD
;0
	DB	$00,$F0,$78,$01
	DB	$00,$F8,$7A,$01
	DB	$00,$00,$70,$01
	DB	$00,$08,$72,$01
;1
	DB	$00,$F0,$7C,$01
	DB	$00,$F8,$7E,$01
	DB	$00,$00,$70,$01
	DB	$00,$08,$72,$01
;2
	DB	$00,$F0,$78,$01
	DB	$00,$F8,$7A,$01
	DB	$00,$00,$74,$01
	DB	$00,$08,$76,$01
;3
	DB	$FC,$F0,$64,$01
	DB	$FC,$F8,$66,$01
	DB	$00,$00,$60,$01
	DB	$00,$08,$62,$01
;4
	DB	$FC,$F0,$64,$01
	DB	$FC,$F8,$66,$01
	DB	$00,$00,$74,$01
	DB	$00,$08,$76,$01
;
TURIMV
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	CP	$02
	JP	Z,HUNEMV
	AND	A
	JR	NZ,TRM010
;
	INC	(HL)
;
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	A,(HL)
	ADD	A,$08
	LD	(HL),A
;
	LD	A,TURI
	CALL	ENIDSHL	;�M�Z�b�g�I
;
	LD	A,(WORK0)
	LD	HL,ENXPSL
	ADD	HL,DE
	ADD	A,$06
	LD	(HL),A
;
	LD	A,(WORK1)
	LD	HL,ENYPSL
	ADD	HL,DE
	ADD	A,$10
	LD	(HL),A
;
	LD	HL,ENWRK0
	ADD	HL,DE
	LD	(HL),$02
;
	LD	HL,ENMOD1
	ADD	HL,DE
	LD	(HL),%10101100 ;
	PUSH	BC
		ld	c,e
		ld	b,d
;;10/31;	PUSH	DE
;;10/31;	POP	BC
	CALL	ENSZST
	POP	BC
TRM010
		LD	A,(ENSTAT2)
		CP	$006
		JR	NC,TRM020
;
	LD	A,(MSGEFG)
	AND	A
	JR	Z,TRM020
;
	LD	A,(ENCHPT2)
	CP	$03
	LD	A,$02
	JR	NZ,TRM018
	LD	A,$04
TRM018
	LD	(ENCHPT2),A
TRM020
	CALL	TURICS
;
		LD	A,(ENSTAT2)
		CP	$00A
		JR	C,TRM020_PASS
		CALL	RINK_PUASE
TRM020_PASS
;
	CALL	E5STCK
;
		LD	A,(PHOTOFG)
		BIT	0,A		;�ʐ^�P�������Ă�H
		JP	Z,TRM030	;	NO --> TRM030
		BIT	7,A		;�ʐ^�W�������Ă�H
		JP	NZ,TRM030	;	YES --> TRM030
		LD	A,(MEGAF)
		CP	$00D		;�u���W���[�ȏ�̃A�C�e�������Ă�H
		JP	C,TRM030	;	YES --> TRM030
		LD	A,(ENSTAT2)
		CP	$002
		JR	C,DEMO_00000
		CALL	DEMO_PLSTOP
DEMO_00000
		LD	A,(ENSTAT2)
		RST	00
DEMO_BASE_ADR	DW	DEMO0000	;�ʐ^���̃C���f�b�N�X�T�[�`
		DW	DEMO1000	;���b�Z�[�W�\���҂�
		DW	DEMO2000	;���̃��b�Z�[�W
		DW	DEMO3000	;�A�N�V�����^�C�}�[�Z�b�g
		DW	DEMO4000	;�Ƃ����Ⴍ���āA�A�N�V������
		DW	DEMO5000	;�ʐ^������������҂�
		DW	TRM3000		;�ʐ^���݂�グ
		DW	DEMO7000	;�ʐ^���A�����グ����
		DW	DEMO8000	;�ʐ^���A���ʏ��
		DW	DEMO9000	;�ʐ^�̂��������������N�̂��߃|�[�Y
		DW	DEMOA000	;�����N�����違�I���W�����҂�
		DW	DEMOB000	;�����N�����違�I���W�����҂�
DEMO_OCHI_ADR	DW	DEMOC000	;�I���W������
		DW	DEMOD000	;���ڂꂽ���b�Z�[�W
;
DM_OCHI		EQU	(DEMO_OCHI_ADR-DEMO_BASE_ADR)/2
;
TRM030
	LD	A,(ENSTAT2)
	RST	00
	DW	TRM1000
	DW	TRM2000
	DW	TRM3000
	DW	TRM4000
	DW	TRM5000
;
;????????????????????????????????????????????????????????
;?	�f���@	�ʐ^���̃C���f�b�N�X�T�[�`		?
;?			ENWRK4�ɃC���f�b�N�X������	?
;????????????????????????????????????????????????????????
DEMO0000
		LD	HL,ENMYNO
DEMO0100
		LD	A,(HLI)
		CP	C_BOY
		JR	Z,DEMO0200
		LD	A,L
		AND	$00F
		JR	NZ,DEMO0100
;
DEMO0200
		LD	A,L
		DEC	A
		AND	$00F
		LD	HL,ENWRK4
		ADD	HL,BC
		LD	(HL),A
;
		JP	STATINC
;
;????????????????????????????????????????????????
;?	�v���C���[�X�g�b�v			?
;????????????????????????????????????????????????
DEMO_PLSTOP
		LD	A,$02
		LD	(PLSTOP),A
		LD	(ITEMNOT),A
		RET
;
;????????????????????????????????????????????????????????
;?	�f���@���b�Z�[�W�\���҂�			?
;????????????????????????????????????????????????????????
DEMO1000
		CALL	E5MSCK
		JP	NC,TUPTST
;
		LD	A,(PLCHPT)	;�����N���ʂ�
		CP	$006		;	�����Ă���H
		JP	NZ,TUPTST	;	NO ---> TUPTST
		CALL	DEMO_PLSTOP
;
		LD	A,$02	;�����N�̕�������
		CALL	ENPTST
		LD	A,$025
DEMO1500
		CALL	MSGCH2
		JP	STATINC
;
;????????????????????????????????????????????????????????
;?	�f���@���̃��b�Z�[�W				?
;????????????????????????????????????????????????????????
DEMO2000
		LD	A,$0E9
		JR	DEMO1500
;
;????????????????????????????????????????????????????????
;?	�f���@�A�N�V�����^�C�}�[�Z�b�g			?
;????????????????????????????????????????????????????????
DEMO3000
		CALL	LDTIM0
		LD	(HL),$040
;
		CALL	STATINC
		JP	TUPTST
;
;????????????????????????????????????????????????????????
;?	�f���@�Ƃ����Ⴍ���āA�A�N�V������		?
;????????????????????????????????????????????????????????
DEMO4000
		CALL	TUPTST
		CALL	LDTIM0
		RET	NZ
;
		JP	STATINC
;
;????????????????????????????????????????????????????????
;?	�f���@�ʐ^������������҂�			?
;????????????????????????????????????????????????????????
DEMO5000
		CALL	TUPTST
		LD	HL,ENWRK4
		ADD	HL,BC
		LD	E,(HL)
		LD	D,$000
		LD	HL,ENXPSL
		ADD	HL,DE
		LD	A,(HL)
		CP	$02A
		RET	NZ
;
		LD	A,CMTR
		LD	HL,ENSTAT
		ADD	HL,DE
		LD	(HL),A
		CALL	LDTIM0
		LD	(HL),$C0
		JP	STATINC
;
;????????????????????????????????????????????????????????
;?	�f���@�ʐ^���A�����グ����			?
;????????????????????????????????????????????????????????
DEMO7000
		LD	A,(FRCNT)
		AND	$007
		RET	NZ
		LD	HL,ENWRK4
		ADD	HL,BC
		LD	E,(HL)
		LD	D,$000
		LD	HL,ENYPSL
		ADD	HL,DE
		DEC	(HL)
		LD	A,(HL)
		CP	$050
		RET	NC
		JP	STATINC
;
;????????????????????????????????????????????????????????
;?	�f���@�ʐ^���A���ʏ��				?
;????????????????????????????????????????????????????????
DEMO8000
		LD	HL,ENWRK4
		ADD	HL,BC
		LD	E,(HL)
		LD	D,$000
		LD	A,(FRCNT)
		AND	$007
		JR	NZ,DEMO8100
		LD	HL,ENXPSL
		ADD	HL,DE
		INC	(HL)
DEMO8100
		LD	A,(FRCNT)
		AND	$001
		RET	NZ
		LD	HL,ENYPSL
		ADD	HL,DE
		DEC	(HL)
		LD	E,(HL)
		LD	HL,ENYPSL
		ADD	HL,BC
		LD	A,(HL)
		ADD	A,$002
		CP	E
		RET	C
		LD	A,$024
		CALL	MSGCH2
		LD	A,$004		;�����N�̕�������
		CALL  	ENPTST
		CALL	LDTIM0
		LD	(HL),$050
		JP	STATINC
;
;????????????????????????????????????????????????
;?	�����N�̂��߃|�[�Y			?
;????????????????????????????????????????????????
RINK_PUASE
		PUSH	BC
		LD	BC,OAM+$10
		LD	A,(PLYPSL)
		LD	(WORK0),A
		LD	A,(PLXPSL)
		LD	(WORK1),A
		LD	A,$006
		LD	(WORK2),A
		LD	H,$0F0
		LD	L,$0FC
		CALL	KNCSET
		POP	BC
		LD	A,$06C
		LD	(PLCHPT),A
		RET
;
;????????????????????????????????????????????????????????
;?	�f���@�ʐ^�̂��������������N�̂��߃|�[�Y	?
;????????????????????????????????????????????????????????
DEMO9000
		LD	A,$004		;�����N�̕�������
		CALL  	ENPTST
		CALL	LDTIM0
		JR	NZ,DEMO9100
		LD	(HL),$030
		CALL	STATINC
DEMO9_SUB
;;;KK;;;		CALL	RINK_PUASE
DEMO9100
		LD	A,(ENSTAT2)
		CP	$00C
		JR	C,DEMO9200
;;;KK;;;		LD	HL,ENYSPD
;;;KK;;;		ADD	HL,BC
		CALL	E5ENYSPD_ADR
		LD	A,(HL)
		BIT	7,A
		RET	Z
DEMO9200
		LD	HL,ENWRK4
		ADD	HL,BC
		LD	E,(HL)
		LD	D,$000
		LD	HL,ENYPSL	;�I���W�̂x�|�W�V������
		ADD	HL,BC		;�J�������m�̂x�|�W�V������
		LD	A,(HL)		;
		LD	HL,ENYPSL	;
		ADD	HL,DE		;
		LD	(HL),A		;
		LD	HL,ENXPSL
		ADD	HL,BC
		LD	A,(HL)		;�I���W�̂w�|�W�V������
		SUB	$01A		;	�J�������m�̂w�|�W�V������
		LD	HL,ENXPSL	;
		ADD	HL,DE		;
		LD	(HL),A		;
		RET
;
;????????????????????????????????????????????????????????
;?	�f���@�����N�����違�I���W�����҂�		?
;????????????????????????????????????????????????????????
DEMOA000
DEMOB000
		CALL	DEMO9_SUB
		CALL	LDTIM0
		RET	NZ
;;;KK;;;		LD	(HL),$020
		LD	(HL),$010
		LD	A,$004		;�����N�̕�������
		CALL  	ENPTST
		CALL	STATINC
		LD	A,(HL)
		CP	DM_OCHI
		RET	NZ
		LD	HL,ENXSPD
		ADD	HL,BC
		LD	(HL),$0F8
;;;KK;;;		LD	HL,ENYSPD
;;;KK;;;		ADD	HL,BC
		CALL	E5ENYSPD_ADR
		LD	(HL),$0F8
		RET
;
;????????????????????????????????????????????????????????
;?	�f���@	�I���W������				?
;????????????????????????????????????????????????????????
DEMOC000
		CALL	DEMO9_SUB
		LD	HL,ENYPSL
		ADD	HL,BC
		LD	A,(HL)
		CP	$04C
		JR	C,DEMOC500
;;;KK;;;		LD	HL,ENXPSL
;;;KK;;;		ADD	HL,BC
;;;KK;;;		LD	A,(HL)
;;;KK;;;		LD	(WORK0),A
;;;KK;;;		LD	HL,ENYPSL
;;;KK;;;		ADD	HL,BC
;;;KK;;;		LD	A,(HL)
;;;KK;;;		LD	(WORK1),A
;;;KK;;;;
;;;KK;;;		LD	A,$0E
;;;KK;;;		LD	(SOUND1),A	;(S)
;;;KK;;;;
;;;KK;;;		LD	A,WTUP
;;;KK;;;		CALL	EXIDSH
		CALL	E5WUPST
		LD	A,$017
		CALL	MSGCH2
		LD	A,$004		;�����N�̕�������
		CALL  	ENPTST
		JP	STATINC
;
DEMOC500
		CALL	E5MVCL
;;;KK;;;		LD	HL,ENYSPD
;;;KK;;;		ADD	HL,BC
		CALL	E5ENYSPD_ADR
		INC	(HL)
		RET
;
;????????????????????????????????????????????????????????
;?	�f��	���ڂꂽ���b�Z�[�W			?
;????????????????????????????????????????????????????????
DEMOD000
		CALL	DEMO9_SUB
		LD	A,$040
		LD	(SOUND3),A
		LD	A,GEKI08
		LD	(GMMODE),A
		XOR	A
		LD	(ITMODE),A
		LD	(SBHR),A
		LD	(SBCNT),A
		RET
;
;
;--------------------------------------
TRM1000
	CALL	E5MSCK
	JR	NC,TRM10A0
;
		LD	A,(PLCHPT)	;�����N�j���ł�H
		CP	$058		;	YES --> TRM10A0
		JR	C,TRM1010	;	NO ---> TRM1010
		CP	$05D+1		;
		JR	C,TRM10A0	;
;
TRM1010
	LD	A,(MEGAF)
	CP	$0B
	JR	NZ,TRM1090	;�j�����Ă�H
;				;YES !
	LD	A,$E8
	CALL	MSGCH2
;
	JP  	STATINC
TRM1090
	CP	$0C
	JR	NC,TRM1098
;
	LD	A,$E7
	JP	MSGCH2	
TRM1098
	LD	A,$ED	;��I
	JP	MSGCH2	
TRM10A0
TUPTST
	LD	A,(FRCNT)
	AND	%00110000
	LD	E,B
	JR	Z,TRM10B0
	INC	E
TRM10B0
	LD	A,E
	JP  	ENPTST
;
;--------------------------------------
TRM2000
	CALL	STATINC
;
	LD	A,(MSANSR)
	AND	A
	JR	NZ,TRM2010	;����H
;				;YES !
	LD	A,$01
	LD	(WARAFG),A
	LD	(ITEMNOT),A
;
	CALL	LDTIM0
	LD	(HL),$D0
;
	LD	A,$E9
	JP  	MSGCH2
TRM2010
	LD	(HL),B
;
	LD	A,$EA
		jp	MSGCH2
;;;;;;;;	CALL	MSGCH2
;;;;;;;;	RET
;--------------------------------------
TRM3000
	LD	A,$02
	LD	(PLSTOP),A
	LD	A,$01
	LD	(SNDSPD),A
;
	CALL	LDTIM0
	JR	NZ,TRM3020
	LD	(HL),$20
;
	LD	A,$EB
	CALL	MSGCH2
;
	CALL	STATINC
TRM3020
	LD	E,$03
	CP	$30
	JR	C,TRM30B0
	CP	$80
	JR	NC,TUPTST
;
	LD	A,(FRCNT)
	AND	%00011000
	LD	E,B
	JR	Z,TRM30B0
	INC	E
TRM30B0
	LD	A,E
	JP  	ENPTST
;--------------------------------------
TRM4000
	LD	A,$02
	LD	(PLSTOP),A
;
	CALL	LDTIM0
	JR	NZ,TRM4010
;
	LD	(SNDSPD),A
;
	CALL	STATINC
;
	LD	A,FISHG	;�u���W���[�ނ肠���Z�b�g
	CALL	ENIDSHL	
;
	LD	A,(WORK0)
	SUB	$20
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A
	LD	(ENSVXL),A
;
	LD	A,(WORK1)
	ADD	A,$08
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),A
	LD	(ENDSYP),A
;
	LD	HL,ENZSPD
	ADD	HL,DE
	LD	(HL),$20
;
	LD	HL,ENWRK3
	ADD	HL,DE
	LD	(HL),$01
;
	PUSH	BC
		ld	c,e
		ld	b,d
;;10/31;	PUSH	DE
;;10/31;	POP	BC
	LD	A,$0A
	CALL	PSERCHL
	POP	BC
;
	CALL	E5WUPST
;
	LD	A,$08
	LD	(SOUND1),A	;(S)
;
	LD	A,$0C
	LD	(MEGAF),A
	LD	A,$0D
	LD	(CHTRF2),A
TRM4010
	LD	A,$03
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;	RET	
;--------------------------------------
TRM5000
	LD	A,$02
	LD	(PLSTOP),A
;
	CALL	STATINC
	LD	(HL),B
	RET
;===================================
TURICS
	LD	A,(ENCHPT2)
	RLA
	RLA
	RLA
	RLA
	AND	%11110000
	LD	E,A
	LD	D,B
	LD	HL,TURICD
	ADD	HL,DE
;
	LD	C,$04
		jp	ENOMST
;;;;;;;;	CALL	ENOMST
;;;;;;;;;
;;;;;;;;	RET
;&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
FNGDT
	DB	$FE,$FE,$FE,$FE
	DB	$FF,$FF,$FF,$FF
	DB	$FF,$00,$00,$01
	DB	$01,$01,$01,$01
	DB	$02,$02,$02,$02
	DB	$02,$02,$02,$02
	DB	$02,$02,$02,$02
	DB	$02,$02,$02,$02
FNADT
	DB	$02,$02,$01,$00,$00,$FF,$FE,$FE
	DB	$01,$01,$01,$00,$00,$FF,$FF,$FF
	DB	$00,$00,$00,$00,$00,$00,$00,$00
	DB	$FF,$FF,$FF,$00,$00,$01,$01,$01
	DB	$FE,$FE,$FF,$00,$00,$01,$02,$02
;------------------------------------
FUNYAD
	DB	0,0,1,2,2,2,1,0
HUNEMV
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	RRA
	RRA
	RRA
	AND	$07
	LD	E,A
	LD	D,B
	LD	HL,FUNYAD
	ADD	HL,DE
	LD	A,(ENDSYP)
	ADD	A,(HL)
	LD	(ENDSYP),A
;;;KK;;;	SUB	$10
;;;KK;;;	LD	(ENYPSL+00),A	;���₶�␳�I
;
		LD	A,(ENSTAT+00)
		CP	DM_OCHI
		JR	NC,HNMV200
		LD	A,(ENDSYP)
		SUB	$010
		LD	(ENYPSL+00),A
;
HNMV200
	CALL	HUNECS
;
	CALL	CRENPSL
	JR	NC,FNCR90
;
	LD	A,(PLYSPD)
	AND	%10000000
	JR	NZ,FNCR90
;
	CALL	E5YCHK
	ADD	A,$08
	BIT	7,A
	JR	Z,FNCR90
;
	LD	A,(ENDSYP)
	SUB	$0F
	LD	(PLYPSL),A
;
	LD	A,$02
	LD	(PLYSPD),A
;
	LD	A,$01
	LD	(ONLFFG),A
;
FNCR90
	CALL	E5STCK
;
	LD	HL,ENCONT
	ADD	HL,BC
	INC	(HL)
;
	LD	A,(HL)
	AND	$07
	JR	NZ,FNM030
;
	LD	E,$48
	LD	A,(ONLFFG)
	AND	A
	JR	Z,FNM010
;
	LD	E,$4B
FNM010
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	A,(HL)
	SUB	E
	JR	Z,FNM030
	AND	%10000000
	JR	Z,FNM020
	INC	(HL)
	INC	(HL)
FNM020
	DEC	(HL)
FNM030
	RET
;
;
;
;
;
;===========================================
;------------------------------------------
HUNECD
;0
	DB	$00,$F8,$68,$02
	DB	$00,$00,$6A,$02
	DB	$00,$08,$6A,$02
	DB	$00,$10,$6A,$02
	DB	$00,$18,$6C,$02
;;===========================================
HUNECS
	LD	HL,HUNECD
;
	LD	C,$05
		jp	ENOMST
;;;;;;;;	CALL	ENOMST
;;;;;;;;;
;;;;;;;;	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%  �l��		    	       %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
MAMADCD
	DB	$72,$21,$70,$21
	DB	$70,$01,$72,$01
	DB	$76,$01,$78,$01
	DB	$78,$21,$76,$21
;	
HAMONCD
	DB	$74,$00,$74,$20
	DB	$74,$10,$74,$30
;
MAMADCD2
	DB	$00,$FC,$7A,$01
	DB	$00,$04,$7C,$01
	DB	$00,$0C,$7E,$01
;
	DB	$00,$FC,$7E,$21
	DB	$00,$04,$7C,$21
	DB	$00,$0C,$7A,$21
;
MMDYAD
	DB	0,0,1,2,2,2,1,0
;---------------------------------------------
MAMADMV
	LD	HL,ENWRK2
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JP	NZ,MAMADMV2
;
	LD	A,(ENSTAT2)
	CP	$02
	JR	NC,MMD0000
;
	LD	A,(DJSVBF)
	AND	%00100000
	JR	Z,MMD000D
;
	INC	(HL)
	RET
MMD000D
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	AND	$07
	LD	E,A
	LD	D,B
	LD	HL,MMDYAD
	ADD	HL,DE
	LD	A,(ENDSYP)
	ADD	A,(HL)
	LD	(ENDSYP),A
;
MMD0000
	LD	A,(ENCHPT2)
	CP	$04
	JR	C,MMD0001
;
	SUB	$04
	RLA
	RLA
	AND	%11111100
	LD	E,A
	RLA
	AND	%11111000
	ADD	A,E
	LD	E,A
	LD	D,B
	LD	HL,MAMADCD2
	ADD	HL,DE
	LD	C,$03
	CALL	ENOMST
	JR	MMD0002
;
MMD0001
	LD	DE,MAMADCD
	CALL	EN2CST
;
	CALL	ENPSSV
;
MMD0002
	LD	A,(ENSTAT2)
	CP	$05
	JR	Z,MMD0003
	CP	$03
	JR	NC,MMD0008
;
MMD0003
	LD	A,(ENDSYP)
	ADD	A,$0B
	LD	(ENDSYP),A
;
	XOR	A
	LD	(ENCHPT2),A
;
	LD	DE,HAMONCD
	CALL	EN2CST
;
	CALL	ENPSSV
;
MMD0008
		LD	A,(ENSTAT2)
		CP	$007
		JR	C,MMD0010
		LD	A,$002
		LD	(PLSTOP),A
		LD	(ITEMNOT),A
MMD0010
;
	CALL	E5STCK
;
	LD	A,(ENSTAT2)
	RST	00
	DW	MMD0800
	DW	MMD1000
	DW	MMD1800
	DW	MMD2000
	DW	MMD3000
;----------------
	DW	MMD5000
	DW	MMD6000
	DW	MMD7000
	DW	MMD8000
	DW	MMD9000
	DW	MMDA000
;====================================
MMD0800
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	(HL),$30
	JP	STATINC
;====================================
;
MMD1000
		LD	A,(GMMODE)
		CP	GPLAY
		RET	NZ
		LD	A,(SBHR)
		CP	$004
		RET	NZ
;
	CALL	E5XCHK
	LD	A,E
	CALL	ENPTST
;
	CALL	M5CROS
;
	CALL	E5XCHK
	ADD	A,$12
	CP	$24
	JR	NC,MMD1080
;
	CALL	E5YCHK
	ADD	A,$12
	CP	$24
	JR	NC,MMD1080
;
	LD	A,(PLSTAT)
	AND	A
	JR	Z,MMD1080	;�����N�������H
;				;YES!
	CALL	STATINC
;
	CALL	LDTIM0
	LD	(HL),$14
;
	LD	A,$F1
		jp	MSGCH2
;;;;;;;;	CALL	MSGCH2
;;;;;;;;	RET
MMD1080
	CALL	E5MSCK
		ret	NC
;;;;;;;;	JR	NC,MMD1090
;
	LD	A,(MEGAF)
	CP	$0C
	JR	NZ,MMD1088
;
	LD	A,$F2		;���`�A����킽���́E�E�E
	CALL	MSGCH2
	CALL	STATINC
	LD	(HL),$05
	RET
;;	JP	STATINC
;
MMD1088
	LD	A,$F0
		jp	MSGCH2
;;;;;;;;	CALL	MSGCH2
;;;;;;;;MMD1090
;;;;;;;;	RET
;=======================================
MMD1800
	JP	STATINC
;=======================================
MMD2000
	LD	A,(MSGEFG)
	AND	A
		ret	NZ
;;;;;;;;	JR	NZ,MMD2090
;
	CALL	LDTIM0
	JR	NZ,MMD2010
;
	LD	(HL),$40
;
	CALL	E5WUPST
;
	CALL	STATINC
;
	LD	A,$FF
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;	RET	
MMD2010
	LD	E,$FF
	CP	$10
	JR	NC,MMD2020
;
	LD	E,$02
	CP	$08
	JR	C,MMD2020
	INC	E
MMD2020
	LD	A,E
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;MMD2090
;;;;;;;;	RET
;============================================
MMD3000
	CALL	LDTIM0
		ret	NZ
;;;;;;;;	JR	NZ,MMD3030
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	CPL
	INC	A
	LD	(HL),A
;
	LD	HL,ENXPSL
	ADD	HL,BC
	ADD	A,(HL)
	LD	(HL),A
	LD	(ENSVXL),A
;
	CALL	STATINC
	LD	(HL),$01
;
		jp	E5WUPST
;;;;;;;;	CALL	E5WUPST
;;;;;;;;MMD3030
;;;;;;;;	RET
;============================================
MMD5000
	CALL  	STATINC	
;
	LD	A,(MSANSR)
	AND	A		;������H
	JR	NZ,MMD5010	;	NO --> MMD5010
;
	CALL	LDTIM0
	LD	(HL),$C0
;;	LD	(HL),$70
;
	RET
MMD5010
	LD	(HL),B
;
	LD	A,$F4		;�������E�E�E
	JP  	MSGCH2
;============================================
MMD6000
	LD	A,(MSGEFG)
	AND	A		;���b�Z�[�W�\�����H
	RET	NZ		;	YES --> return
;;;KK;;;	JR	NZ,MMD6010
;
	CALL	LDTIM0
	JR	Z,MMD6008
	CP	$70
	JR	NZ,MMD6001
;
	DEC	(HL)
;
	PUSH	AF
	LD	A,$F3		;���A����A�E�E
	CALL  	MSGCH2
;
	POP	AF
MMD6001
	CP	$90
	JR	NZ,MMD6002
;
	LD	A,(PLYPSL)
	SUB	$03
	LD	(WORK1),A
	LD	A,(PLXPSL)
	LD	(WORK0),A
;
	LD	A,$0E
	LD	(SOUND1),A	;(S)
;
	LD	A,WTUP
	CALL	EXIDSH
;
	CALL	LDTIM0
MMD6002
	LD	E,$00
	CP	$20
	JR	C,MMD6003
	CP	$90
	JR	NC,MMD6003
	LD	E,$01
MMD6003
	LD	A,E
	LD	(PLSTAT),A
;
	LD	HL,PLSTOP
	LD	(HL),$02
;
	LD	A,$04
	LD	(PLDSYD),A
	RET
MMD6008
	LD	A,$0D
	LD	(MEGAF),A
;;	LD	A,$0D
	LD	(CHTRF2),A
;
	CALL	YOSSISET
;
	CALL	STATINC
;
	CALL	LDTIM0
	LD	(HL),$30
MMD6010
	RET
;============================================
MMD7000
	CALL	LDTIM0
		ret	NZ
;;;;;;;;	JR	NZ,MMD7070
;
	CALL	STATINC
;
	LD	A,(ENCHPT2)
	ADD	A,$04
	CALL	ENPTST
;
	LD	E,$08
	CP	$04
	JR	NZ,MMD7020
	LD	E,$F8
MMD7020
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),E
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),$20
;
	CALL	E5WUPST
;
;;	LD	A,$0D
;;	LD	(SOUND1),A	;(S)
		jp	E5JPSD	;(S)
;;;;;;;;	CALL	E5JPSD	;(S)
;;;;;;;;MMD7070
;;;;;;;;	RET
;============================================
MMD8000
	CALL	E5MVCL
	CALL	E5ZCLC
;
	LD	HL,ENZSPD
	ADD	HL,BC
	DEC	(HL)
	DEC	(HL)
;
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	AND	%10000000
	JR	Z,MMD8010
;
	LD	(HL),B
;
	CALL	STATINC
;
	CALL	E5WUPST
;
	CALL	LDTIM0
	LD	(HL),$10
MMD8010
	RET
;============================================
MMD9000
	CALL	LDTIM0
	JR	NZ,MMD9008
;
	LD	(HL),$20
;
	LD	A,$FF
	CALL	ENPTST
	JP	STATINC
MMD9008
;;	JP	Z,E5CLER
;
	LD	E,$02
	CP	$08
	JR	NC,MMD9010
	INC	E
MMD9010
	LD	A,E
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;	RET
;============================================
MMDA000
	CALL	LDTIM0
	RET	NZ
;
	LD	HL,ENWRK4
	ADD	HL,BC
	LD	A,(HL)
	CP	$03
	JR	NZ,MMDA005
		XOR	A
		LD	(PLSTOP),A
		LD	(ITEMNOT),A
		JP	E5CLER
;;;KK;;;	JP	Z,E5CLER
;
MMDA005
	INC	(HL)
;
	CALL	RNDSUB
	AND	$01
	CALL	ENPTST
;
	LD	E,$10
	AND	A
	JR	Z,MMDA010
	LD	E,$F0
MMDA010
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	A,(HL)
	ADD	A,E
	LD	(HL),A
;
	CALL	STATINC
	LD	(HL),$07
	RET
;-----------------------------------------
E5WUPST
	LD	A,(ENDSYP)
E5WUPSS
	LD	(WORK1),A
	LD	A,(ENSVXL)
	LD	(WORK0),A
;
	LD	A,WTUP
	CALL	EXIDSH
;
	LD	A,$0E
	LD	(SOUND1),A	;(S)
	RET
;===================================
MAMADMV2
		PUSH	BC
		SLA	C
		SLA	C
		LD	HL,ENOJSZ
		ADD	HL,BC
		INC	HL
		LD	A,$00A
		LD	(HLI),A
		LD	A,$0FC
		LD	(HLI),A
		LD	A,$010
		LD	(HL),A
		POP	BC
;
	LD	A,(ENSTAT2)
	RST	00
	DW	MD21000
	DW	MD22000
	DW	MD23000
	DW	MD24000
;=================================
MD21000
	CALL	E5STCK
;
	LD	HL,ENXPSL
	ADD	HL,BC
	LD	(HL),$58
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	(HL),$80
;
	LD	A,(WHASGFG)
	AND	A
		ret	Z
;;;;;;;;	JR	Z,MD21010
;
		jp	STATINC
;;;;;;;;	CALL	STATINC
;;;;;;;;MD21010
;;;;;;;;	RET
;=================================
MD22000
	CALL	E5STCK
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),$20
;
;;;KK;;;	LD	HL,ENYSPD
;;;KK;;;	ADD	HL,BC
	CALL	E5ENYSPD_ADR
	LD	(HL),$FC
;
	CALL	E5WUPST
;
	JP	STATINC
;=================================
MD23000
	CALL	MAMADCS2
;
	CALL	E5STCK
;
	CALL	E5MVCL
	CALL	E5ZCLC
;
	LD	HL,ENZSPD
	ADD	HL,BC
	DEC	(HL)
;
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	AND	%10000000
	JR	Z,MD23010
;
	LD	(HL),B
;
	CALL	STATINC
MD23010
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	RRA
	AND	$01
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;	RET
;=================================
MD24000
		CALL	M5CROS
;
	CALL	E5XCHK
	LD	A,E
	ADD	A,$02
	LD	(ENCHPT2),A
;
	CALL	MAMADCS2
;
	CALL	E5STCK
;
	CALL	E5MSCK
		ret	NC
;;;;;;;;	JR	NC,MD24010
;
	LD	A,$F7
		jp	MSGCH2
;;;;;;;;	CALL	MSGCH2
;;;;;;;;MD24010
;;;;;;;;	RET
;=================================
MAMADCD22
;0
	DB	$F0,$00,$70,$01
	DB	$F0,$08,$72,$01
	DB	$00,$00,$74,$01
	DB	$00,$08,$76,$01
;1
	DB	$F0,$00,$72,$21
	DB	$F0,$08,$70,$21
	DB	$00,$00,$76,$21
	DB	$00,$08,$74,$21
;2
	DB	$F0,$FF,$72,$21
	DB	$F0,$07,$70,$21
	DB	$00,$00,$7A,$21
	DB	$00,$08,$78,$21
;3
	DB	$F0,$01,$70,$01
	DB	$F0,$09,$72,$01
	DB	$00,$00,$78,$01
	DB	$00,$08,$7A,$01
;- - - - - - - - - - - - - - - - -
MAMADCS2
	LD	A,(ENCHPT2)
	RLA
	RLA
	RLA
	RLA
	AND	%11110000
	LD	E,A
	LD	D,B
	LD	HL,MAMADCD22
	ADD	HL,DE
	LD	C,$04
	JP	ENOMST
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%  �p�p�[��		    	       %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
PAPALCD1
	DB	$6E,$20,$6C,$20
	DB	$6C,$00,$6E,$00
PAPALCD
	DB	$70,$00,$72,$01
	DB	$74,$00,$76,$01
;
	DB	$78,$00,$7A,$01
	DB	$7C,$00,$76,$01
PAPALCD2
	DB	$72,$20,$70,$21
	DB	$76,$20,$74,$21
;
	DB	$7A,$20,$78,$21
	DB	$76,$20,$7C,$21
HAIBICD
	DB	$7E,$01,$7E,$21
;
PAPALMV
	LD	A,(DJFLAG)
	AND	A
	JR	Z,PPL0001	;�Ƃ̂Ȃ��H
;
	LD	A,(MEGAF)
	CP	$08
	JR	NC,PPL0000
;
;;;KK;;;	LD	A,(WARPSV+1)
	LD	A,(WARPSV+2)	;���x���R�N���A�H
	AND	%00000010
	JP	NZ,E5CLER
;
PPL0000
	LD	DE,PAPALCD2
;
	LD	A,(MEGAF)
	CP	$08
	JR	NC,PPL01111
;
	CALL	E5XCHK
	LD	A,E
	LD	(ENCHPT2),A
;
	LD	DE,PAPALCD1
PPL01111
	CALL	EN2CST
;
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	RRA
	AND	$01
	CALL	ENPTST
;
	CALL	M5CROS
;
	CALL	E5MSCK
		ret	NC
;;;;;;;;	JR	NC,PL0100
;
	LD	A,(MEGAF)
	CP	$08
	JR	NC,PPL0090
;
	LD	A,$27
	JP	MSGCHK	;	;�ŏ��I
PPL0090
	LD	A,$76
		jp	MSGCH2	;�ǂ���!
;;;;;;;;	CALL	MSGCH2	;�ǂ���!
;;;;;;;;PL0100
;;;;;;;;	RET
;-------------------------------------
PPL0001
	LD	A,(DJSVBF)
	AND	%00100000
	JP	NZ,E5CLER
;
	LD	DE,PAPALCD
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	NZ,PPL000
;
	LD	DE,PAPALCD2
PPL000
	CALL	EN2CST
;
	LD	A,(MEGAF)
	CP	$08
	JR	NC,PPL001
;
	LD	A,(ENSVXL)
	ADD	A,$10
	LD	(ENSVXL),A
;
	LD	A,(ENDSYP)
	SUB	$10
	LD	(ENDSYP),A
;
	XOR	A
	LD	(ENCHPT2),A
;
	LD	DE,HAIBICD
	CALL	EN2CST
;
	CALL	ENPSSV
PPL001
	CALL	E5STCK
;
	CALL	M5CROS
;
	LD	A,(ENSTAT2)
	RST	00
	DW	PPL1000
	DW	PPL2000
	DW	PPL3000
	DW	PPL4000
	DW	PPL5000
;------------------------------------
PPL1000
	CALL	E5XCHK
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	(HL),E
	ADD	A,$24
	CP	$48
	JR	NC,PPL1060
	CALL	E5YCHK
	ADD	A,$24
	CP	$48
	JR	NC,PPL1060
;
	CALL	E5MSCK
	JR	NC,PPL1010
;
	LD	A,(MEGAF)
	CP	$07
	LD	A,$70
	JR	Z,PPL100E	;�p�C�������Ă���H
;				;NO !
	LD	A,$77
PPL100E
	CALL	MSGCH2
;
	CALL	STATINC
;
		ld	a,001
		ld	(ITEMNOT),a
;
PPL1010
PPLHELP
	XOR	A
		jp	ENPTST	
;;;;;;;;	CALL	ENPTST	
;;;;;;;;	RET
;
PPL1060
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	AND	$01
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;	RET
;------------------------------
PPL2000
	LD	A,(MSANSR)
	AND	A
	JR	NZ,PPL2090
;
	LD	A,(MEGAF)
	CP	$07
	JR	NZ,PPL2090	;�p�C�������Ă���H
;				;YES !
	LD	A,$72
	CALL	MSGCH2
;
	CALL	STATINC
;
	CALL	LDTIM0
	LD	(HL),$C0
	RET
PPL2090	
	LD	A,$71
	CALL	MSGCH2
;
		xor	a
		ld	(ITEMNOT),a
;
	CALL	STATINC
	LD	(HL),B
	RET
;-----------------------------
PPL3000
	LD	A,(MSGEFG)
	AND	A
	JR	NZ,PPLEAT
;
	CALL	LDTIM0
	JR	NZ,PPL3020
;
	LD	(SNDSPD),A
;
	LD	A,$73
	CALL	MSGCH2
;
	LD	A,$08
	LD	(MEGAF),A
;
	LD	A,$0D
	LD	(CHTRF2),A
;
	JP  	STATINC
PPL3020
	LD	A,$02
	LD	(PLSTOP),A
;
	LD	A,$01
	LD	(SNDSPD),A
PPLEAT
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	AND	$01
	ADD	A,$02
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;	RET	
;-----------------------------
PPL4000
	LD	A,(MSGEFG)
	AND	A
		ret	NZ
;;;;;;;;	JR	NZ,PPL4010
;
	CALL	YOSSISET
;
		jp	STATINC
;;;;;;;;	CALL	STATINC
;;;;;;;;PPL4010
;;;;;;;;	RET
;-----------------------------
PPL5000
	CALL	PPLEAT
;
	CALL	E5MSCK
		ret	NC
;;;;;;;;	JR	NC,PPL5090
;
		xor	a
		ld	(ITEMNOT),a
;
	LD	A,$75
		jp	MSGCH2
;;;;;;;;	CALL	MSGCH2
;;;;;;;;PPL5090
;;;;;;;;	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%  �N�}�̃R�b�N	    	       %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
KUMA0CD
;0
	DB	$FA,$00,$70,$03
	DB	$FA,$08,$72,$03
	DB	$FA,$10,$74,$03
	DB	$FA,$18,$70,$23
	DB	$0A,$00,$76,$03
	DB	$0A,$08,$78,$03
	DB	$0A,$10,$78,$23
	DB	$0A,$18,$76,$23
KUMA0CD2
;1
	DB	$FA,$00,$70,$03
	DB	$FA,$08,$74,$23
	DB	$FA,$10,$72,$23
	DB	$FA,$18,$70,$23
	DB	$0A,$00,$76,$03
	DB	$0A,$08,$78,$03
	DB	$0A,$10,$78,$23
	DB	$0A,$18,$76,$23
;- - - - - - - - - - - - - - - - - - -
PAINCD
	DB	$7E,$07
NABECD
	DB	$7A,$01,$7C,$01
NABECD2
	DB	$7C,$21,$7A,$21
;
KUMA0MV
	XOR	A
	LD	(ENCHPT2),A
;
	LD	A,$48+2
	LD	(ENDSYP),A
;
	LD	DE,NABECD
	CALL	EN2CST
;	
	LD	A,$68
	LD	(ENSVXL),A
;
	LD	DE,NABECD2
	CALL	EN2CST
;
	LD	A,(MEGAF)
	CP	$06		;�n�`�~�c�����Ă�H
	JR	NZ,KUMC090	;	NO --> KUMC090
;
	LD	A,$74
	LD	(ENSVXL),A
	LD	A,$38
	LD	(ENDSYP),A
;
	LD	DE,PAINCD
	CALL	EN1CST
;
KUMC090
	CALL	ENPSSV
;
	LD	HL,ENCHPT
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,KUMA0CD
	AND	A
	JR	Z,KUMC091
;
	LD	HL,KUMA0CD2
KUMC091
	LD	C,$08
	CALL	ENOMST
;
	LD	A,$08-2
	CALL	NXOMSBL
;
	XOR	A
	CALL	ENPTST
;
	CALL	E5STCK
;
	LD	A,(FRCNT)
	AND	%00100000
	CALL	ENPTST
;
	CALL	M5CROS
;
	LD	A,(ENSTAT2)
	RST	00
	DW	KUM1000
	DW	KUM2000
	DW	KUM3000
;===========================================
KUM1000
	CALL	KMMSCK
		ret	NC
;;;;;;;;	JR	NC,KUM1080
;
	LD	E,$D3
;
	LD	A,(GRRMSV+$FD)	;�Z�C�E�`�I���H
	AND	%00110000
	JR	NZ,KUM1030
;
	LD	A,(MEGAF)
	CP	$06
	JR	NZ,KUM1020
;
	LD	A,$CF
	CALL	KUMMSCK ;MSGCH2
;
	JP	STATINC
KUM1020
	LD	E,$D4
	LD	A,(MARINFG)
	AND	A
	JR	NZ,KUM1030	;�}�����ƈꏏ�H
;
	LD	E,$CE
;
	LD	A,(MEGAF)
	CP	$07
	JR	NZ,KUM1030
KUM1028
	LD	E,$D2
KUM1030
	LD	A,E
		jp	KUMMSCK ;MSGCH2
;;;;;;;;	CALL	KUMMSCK ;MSGCH2
;;;;;;;;KUM1080
;;;;;;;;	RET
;===========================================
KUM2000
	LD	A,(MSGEFG)
	AND	A
	JR	NZ,KUM2090
;
	CALL	STATINC
;
	LD	A,(MSANSR)
	AND	A
	JR	Z,KUM2020
;
	LD	(HL),B
;
	LD	A,$D1
		jp	KUMMSCK ;MSGCH2
;;;;;;;;	CALL	KUMMSCK ;MSGCH2
;;;;;;;;	RET
KUM2020
	LD	A,$07
	LD	(MEGAF),A	;�p�C�������I
;
	LD	A,$0D
	LD	(CHTRF2),A
;
	CALL	YOSSISET
;
	CALL	LDTIM0
	LD	(HL),$70
KUM2090
	RET
;===========================================
KUM3000
	CALL	LDTIM0
	JR	NZ,KUM3010
;
	LD	A,(MSGEFG)
	AND	A
	JR	NZ,KUM3010
;
	CALL	KUM1028
;
	CALL	STATINC
	LD	(HL),B
KUM3010
	RET
;=============================
KUMMSCK
	LD	E,A
;
	LD	A,(PLYPSL)
	PUSH	AF
;
	LD	A,$10
	LD	(PLYPSL),A
;
	LD	A,E
	CALL	MSGCH2
	POP	AF
	LD	(PLYPSL),A
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%  �n�`�̑�&�n�`	     	       %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
HANNYCD
	DB	$70,$01,$70,$21
;
HANNYMV
	LD	A,(DJSVBF)
	AND	%00100000
	JP	NZ,E5CLER
;
	LD	HL,ENWRK3
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JP	NZ,HACHIMV
;
	LD	A,C
	LD	(BSINDX),A
;
	CALL	LDTIM0
	AND	%00100000
	JR	Z,HNY0000
;
	LD	HL,ENSVXL
	DEC	(HL)
HNY0000
	LD	DE,HANNYCD
	CALL	EN2CST
;
	CALL	E5STCK
;
	LD	A,(ENSTAT2)
	RST	00
	DW	HNY1000
	DW	HNY2000
	DW	HNY3000
	DW	HNY4000
	DW	HNY5000
;==================================
HNY1000	;�n�`�Z�b�g
	LD	A,(WARAFG)
;;	AND	A
	CP	$02
	JR	NZ,HNY1002	;�n�`�̑��c���Ăǂ����s����
;				;�߂��ė����Ƃ��H
;;	LD	A,(MEGAF)
;;	CP	$05
;;	JR	NZ,HNY1002	;�_�I
;
	LD	HL,ENYPSL	;yes !���Ƃ��I
	ADD	HL,BC
	LD	A,(HL)
	ADD	A,$10
	LD	(HL),A
;
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	(HL),$10
;
	CALL	STATINC
	LD	(HL),$04
	RET
;- - - - - - - - - - - - -
HNY1002
	XOR	A
	LD	(BSINDX2),A
;
	CALL	STATINC
HACHISET
	LD	A,HANNY
	CALL	ENIDSHL
	JR	C,HNY1010
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
	LD	HL,ENWRK3
	ADD	HL,DE
	LD	(HL),$01
;
	LD	HL,ENXSPD
	ADD	HL,DE
	LD	(HL),$0E
;
	LD	HL,ENMOD0
	ADD	HL,DE
	LD	(HL),%11000001
;
	LD	HL,ENMOD1
	ADD	HL,DE
	LD	(HL),%00000000
;
	AND	A
	RET
HNY1010
	SCF
	RET
;==================================
HNY2000	;�^�����T�[�`�n�`�Z�b�g�҂�
	LD	A,(BSINDX2)
	AND	A
	JP	NZ,STATINC
	RET
;==================================
HNY3000	;�^�����T�[�`�n�`�Z�b�g
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	CP	$05
	JP	Z,STATINC
;
	LD	A,(FRCNT)
	AND	$07
	JR	NZ,HNY3090
;
	CALL	HACHISET
	JR	C,HNY3090
;
	LD	HL,ENCONT
	ADD	HL,BC
	INC	(HL)
	LD	A,(HL)
	LD	HL,ENCONT
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,ENXSPD
	ADD	HL,DE
	LD	(HL),B
HNY3090
	RET
;==================================
HNY4000	;
	RET
;==================================
HNY5000	;
	CALL	LDTIM0
		ret	NZ
;;;;;;;;	JR	NZ,HNY5010
;
	CALL	E5ZCLC
	LD	HL,ENZSPD
	ADD	HL,BC
	DEC	(HL)
	DEC	(HL)
;
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	AND	%10000000
		ret	Z
;;;;;;;;	JR	Z,HNY5010
;
	LD	(HL),B
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),B
;
	CALL	CRENPSL
		ret	NC		;�G�����H
;;;;;;;;	JR	NC,HNY5010	;�G�����H
;				;YES !
	XOR	A
	LD	(WARAFG),A
	LD	A,$06
	LD	(MEGAF),A	;�n�`�̑�������I
	LD	A,$0D
	LD	(CHTRF2),A
;
	CALL	YOSSISET
		jp	E5CLER
;;;;;;;;	CALL	E5CLER
;;;;;;;;HNY5010
;;;;;;;;	RET
;&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
HACHICD
	DB	$72,$00
	DB	$72,$40
HACHIMV
	LD	DE,HACHICD
	CALL	EN1CST
;
	LD	A,(FRCNT)
	RRA
	RRA
	AND	$01
	CALL	ENPTST
;
	CALL	E5STCK
;
	LD	A,(ENSTAT2)
	RST	00
	DW	HCM1000
	DW	HCM2000
	DW	HCM3000
;==================================
HCMVXA
HCMVYA
	DB	$01,$FF
HCMVXL
	DB	$10,$F0
HCMVYL
	DB	$0B,$F5
;--------------------------------------
HCM1000
	LD	A,(FRCNT)
	AND	$01
	JR	NZ,HCM1020
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	E,(HL)
	LD	D,B
;
	LD	HL,HCMVXA
	ADD	HL,DE
	LD	A,(HL)
;
	LD	HL,ENXSPD
	ADD	HL,BC
	ADD	A,(HL)
	LD	(HL),A
;
	LD	HL,HCMVXL
	ADD	HL,DE
	CP	(HL)
	JR	NZ,HCM1010
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	XOR	$01
	LD	(HL),A
HCM1010
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	E,(HL)
	LD	D,B
;
	LD	HL,HCMVYA
	ADD	HL,DE
	LD	A,(HL)
;
;;;KK;;;	LD	HL,ENYSPD
;;;KK;;;	ADD	HL,BC
	CALL	E5ENYSPD_ADR
	ADD	A,(HL)
	LD	(HL),A
;
	LD	HL,HCMVYL
	ADD	HL,DE
	CP	(HL)
	JR	NZ,HCM1020
;
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	A,(HL)
	XOR	$01
	LD	(HL),A
HCM1020
	CALL	E5MVCL
;
	LD	A,(BSINDX2)
	AND	A
	JP	NZ,STATINC	;�T�[�`�X�^�[�g!
	RET
;--------------------------------------
HCSHXD
	DB	$F0,$E8,$E8,$E0,$E0,$D8
	DB	$10,$18,$18,$20,$20,$28
	DB	$00,$F8,$08,$F8,$08,$00
	DB	$00,$08,$F8,$08,$F8,$00
HCSHYD
	DB	$00,$F8,$08,$F8,$08,$00
	DB	$00,$08,$F8,$08,$F8,$00
	DB	$10,$18,$18,$20,$20,$28
	DB	$F0,$E8,$E8,$E0,$E0,$D8
;- - - - - - - - - - - - - - - - - - - - -
HCM2000
	LD	A,$22
	LD	(SOUND1),A	;(S)
;
	LD	A,(BSLIFE)
	LD	E,A
	LD	D,B
	LD	HL,ENMODE
	ADD	HL,DE
	LD	A,(HL)
	AND	A
	JP	Z,E5CLER
;
	LD	A,(FRCNT)
	AND	$07
	LD	HL,ENCONT	
	ADD	HL,BC
	CP	(HL)
	JR	NZ,HCM2090
;
	LD	A,(BSLIFE)	;�^�����C���f�b�N�X
	LD	E,A
	LD	D,B
	LD	HL,ENMUKI
	ADD	HL,DE
	LD	A,(HL)
	LD	E,A
;
	LD	HL,ENCONT
	ADD	HL,BC
;
	RLA
	RLA
	AND	%11111100
	ADD	A,E
	ADD	A,E
	ADD	A,(HL)
	LD	E,A
	LD	D,B
;
	LD	A,(PLXPSL)
	PUSH	AF
	LD	A,(PLYPSL)
	PUSH	AF
;
	PUSH	BC
	LD	A,(BSLIFE)
	LD	C,A
;
	LD	HL,HCSHXD
	ADD	HL,DE
	LD	A,(HL)
;
	LD	HL,ENXPSL
	ADD	HL,BC
	ADD	A,(HL)
	LD	(PLXPSL),A
;
	LD	HL,HCSHYD
	ADD	HL,DE
	LD	A,(HL)
;
	LD	HL,ENYPSL
	ADD	HL,BC
	ADD	A,(HL)
	LD	(PLYPSL),A
;
	POP	BC
	LD	A,$24
	CALL	PSERCHL
;
	POP	AF
	LD	(PLYPSL),A
	POP	AF
	LD	(PLXPSL),A
HCM2090
		jp	E5MVCL
;;;;;;;;	CALL	E5MVCL
;;;;;;;;	RET
;--------------------------------------
HCM3000
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%  �n�`�̑��O�^����		       %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
PAPA2CD
	DB	$5A,$22,$58,$22
	DB	$5E,$22,$5C,$22
;
	DB	$58,$02,$5A,$02
	DB	$5C,$02,$5E,$02
;
	DB	$54,$02,$56,$02
	DB	$56,$22,$54,$22
;
	DB	$50,$02,$52,$02
	DB	$52,$22,$50,$22
;
	DB	$74,$02,$76,$02	; �������[
;- - - - - - - - - - - - - - - - - - - -
PAPA2MV
	LD	A,C
	LD	(BSLIFE),A
;
	LD	HL,ENWRK4
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	NZ,P2M1001	
;
	INC	(HL)
;
	LD	A,(DJSVBF)	;WARAFG)
	AND	%01000000
	JP	NZ,E5CLER
;
P2M1001
;	LD	A,(MEGAF)
;	CP	$05
;	JP	NZ,E5CLER
;
	LD	A,(WARPSV+$02) ;3 clear?
	AND	%00000010
	JP	Z,E5CLER
;
	LD	DE,PAPA2CD
	CALL	EN2CST
;
	CALL	E5STCK
;
	CALL	E5ZCLC
	LD	HL,ENZSPD
	ADD	HL,BC
	DEC	(HL)
	DEC	(HL)
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	AND	%10000000
	JR	Z,PP222
;
	LD	(HL),B
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),B
PP222
	LD	A,(ENSTAT2)
	RST	00
	DW	PP21000
	DW	PP22000
	DW	PP23000
	DW	PP24000
	DW	PP25000
	DW	PP26000
	DW	PP27000
;===================================
PP21000
	LD	A,02
	CALL	ENPTST
;
	LD	HL,ENXPSL
	ADD	HL,BC
	LD	(HL),$60
;
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	(HL),$58
;
	CALL	M5CROS
;
	CALL	E5MSCK
		ret	NC
;;;;;;;;	JR	NC,PP21090
;
	LD	A,$C0
	CALL	MSGCH2
;
		jp	STATINC	
;;;;;;;;	CALL	STATINC	
;;;;;;;;PP21090
;;;;;;;;	RET
;===================================
PP22000
	CALL	M5CROS
;
	LD	A,(MSGEFG)
	AND	A
	JR	NZ,PP22050
;
	LD	A,(MSANSR)
	AND	A
	JR	NZ,PP22010
;
	LD	A,$02
	LD	(WARAFG),A	;�A�C�e���\�������I
;
	LD	HL,GRRMSV+$87
	SET	6,(HL)
;
	CALL	LDTIM0
	LD	(HL),$A0
;
	LD	A,$01
	LD	(SOUND1),A	;(S)
;
	JP	STATINC
;
PP22010
	LD	A,$C2
	CALL	MSGCH2
;
	CALL	STATINC
	LD	(HL),B
PP22050
	RET
;===================================
PPBOUCD
	DB	$78,$01,$FF,$00
	DB	$7A,$01,$7C,$01
;
PP23000
	LD	A,$01
	LD	(PLSTOP),A
	LD	(ITEMNOT),A
;
	CALL	LDTIM0
	CP	$30
	JR	C,PP2308
;
	XOR	A
	LD	(ENCHPT2),A
;
	LD	A,(ENDSYP)
	SUB	$10
	LD	(ENDSYP),A
;
	LD	DE,PPBOUCD
	CALL	EN2CST	
;
	CALL	ENPSSV
;
	LD	A,$08
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;	RET
;
PP2308
	CP	$18
	JR	NC,PP2310
;
	LD	A,$02
	LD	(PLCMKI),A
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),$FE	
;
;;;KK;;;	LD	HL,ENYSPD
;;;KK;;;	ADD	HL,BC
	CALL	E5ENYSPD_ADR
	LD	(HL),$F4
;
	CALL	E5MVCL	
;
	CALL	LDTIM0
	JR	NZ,PP2310	;�c�b�c�L�X�^�[�g�I
;
	LD	A,$34
	LD	(SOUND4),A	;(S)
	LD	(BGMNO),A	
;
	CALL	LDTIM0
	LD	(HL),$C0
;
		jp	STATINC
;;;;;;;;	CALL	STATINC
;;;;;;;;	RET
PP2310
	LD	A,$01
	LD	(ENCHPT2),A
;
	LD	A,(ENSVXL)
	SUB	$0C
	LD	(ENSVXL),A
;
	LD	DE,PPBOUCD
	CALL	EN2CST	
;
	CALL	ENPSSV
;
	CALL	LDTIM0
	RRA
	RRA
	RRA
	RRA
	AND	$01
	ADD	A,$02
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;	RET
;===================================
PP24000
	LD	A,$01
	LD	(PLSTOP),A
;
	CALL	LDTIM0
	JR	NZ,PP24010
;
	LD	(HL),$0C
;
	CALL	STATINC
;
PP24010
	CALL	LDTIM0
	CP	$20
	JR	NZ,PP2401
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),$18
;
	CALL	E5JPSD	;(S)
	XOR	A
PP2401
	CP	$60
	JR	NZ,PP2408
;
	LD	HL,BSINDX2
	INC	(HL)	;�n�`�T�[�`ON
PP2408
	CP	$A0
	JR	NZ,PP2418
;
	LD	A,(BSINDX)
	LD	E,A
	LD	D,B
	LD	HL,ENTIM0
	ADD	HL,DE
	LD	(HL),$A0
PP2418
	AND	%00100000
	JR	Z,PP24020
;
	LD	A,$01
	LD	(ENCHPT2),A
;
	LD	A,(ENSVXL)
	SUB	$0E
	LD	(ENSVXL),A
;
	LD	A,(ENDSYP)
	SUB	$08
	LD	(ENDSYP),A
	JR	PP24030
;
PP24020
	XOR	A
	LD	(ENCHPT2),A
;
	LD	A,(ENDSYP)
	SUB	$10
	LD	(ENDSYP),A
;
PP24030
	LD	DE,PPBOUCD
	CALL	EN2CST	
;
	CALL	ENPSSV
;
	CALL	LDTIM0
	LD	E,$02
	AND	%00100000
	JR	Z,PP24090
	INC	E
PP24090
	LD	A,E
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;;
;;;;;;;;	RET
;===================================
PP2XSD
	DB	$20,$00,$E0,$00
PP2YSD
	DB	$00,$E0,$00,$20
PP2MKI
	DB	$00,$02,$01,$03
PP2TMD
	DB	$16,$28,$28,$28
	DB	$28,$28,$28,$28
	DB	$28,$28,$28,$28
P2MVPT
	DB	$00,$02,$04,$06
;
PP25000
	LD	A,$01
	LD	(PLSTOP),A
;
	CALL	LDTIM0
	JR	NZ,PP25010
;
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	INC	A
	LD	(HL),A
	CP	$0B
	JP	Z,STATINC
	LD	E,A
	LD	D,B
	LD	HL,PP2TMD-1
	ADD	HL,DE
	LD	E,(HL)
	CALL	LDTIM0
	LD	(HL),E
PP25010
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	AND	$03
	LD	E,A
	LD	D,B
	LD	HL,PP2XSD
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
	LD	HL,PP2YSD
	ADD	HL,DE
	LD	A,(HL)
;;;KK;;;	LD	HL,ENYSPD
;;;KK;;;	ADD	HL,BC
	CALL	E5ENYSPD_ADR
	LD	(HL),A
	LD	HL,PP2MKI
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	(HL),A
;
P2PTST
	CALL	E5XYCK
	LD	A,E
	XOR	$01
P2PTSTS
	LD	(PLCMKI),A
;
	CALL	E5MVCL
;
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	E,(HL)
	LD	D,B ;$0
	LD	HL,P2MVPT
	ADD	HL,DE
;
	LD	A,(FRCNT)
	RRA	
	RRA	
	RRA	
	AND	%00000001
	OR	(HL)
	JP	ENPTST
;===================================
PP26000
	LD	A,$01
	LD	(PLSTOP),A
;
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	A,$01
	LD	(HL),A
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),$E4
;;;KK;;;	LD	HL,ENYSPD
;;;KK;;;	ADD	HL,BC
	CALL	E5ENYSPD_ADR
	LD	(HL),$08
	CALL	E5MVCL
;
	LD	A,(ENSVXL)
	CP	$C0
	JR	C,PPM2690
	CP	$C4
	JP	NC,PPM2690
;
	XOR	A
	LD	(ITEMNOT),A
;
	CALL	STATINC
PPM2690
	LD	A,$01
	JR	P2PTSTS
;===================================
PP27000
	LD	A,(BSINDX)	;�n�`�̑����Ƃ��I
	LD	E,A
	LD	D,B
	LD	HL,ENSTAT
	ADD	HL,DE
	INC	(HL)
	LD	HL,ENTIM0
	ADD	HL,DE
	LD	(HL),$50
;
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	A,(HL)
	ADD	A,$10
	LD	(HL),A
;
	LD	HL,ENZPSL
	ADD	HL,DE
	LD	(HL),$10
;
	JP	E5CLER
;
;
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%  �L�[���쏰���u���b�N	       %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
YUKASCD
	DB	$40,$02,$40,$22
	DB	$42,$02,$42,$22
;- - - - - - - - - - - - - - -
YUKASMV
	LD	DE,YUKASCD
	CALL	EN2CST
;
	CALL	E5STCK
;
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	RRA
	AND	$01
	CALL	ENPTST
;
	LD	A,(ENSTAT2)
	RST	00
	DW	YKS1000
	DW	YKS2000
;------------------------------------
YKSTXS
	DB	$08,$F8,$00,$00
YKSTYS
	DB	$00,$00,$F8,$08
;- - - - - - - - - - - - - - - - - -
YKS1000
	CALL	M5CROS
	JR	NC,YKS1010
;
	LD	A,(KEYA1)
	AND	$0F
	JR	Z,YKS1010
;
	LD	A,$01
	LD	(PLOSHI),A
;
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	INC	A
	LD	(HL),A
	CP	$10
	JR	NZ,YKS1020
;
	CALL	STATINC
;
	CALL	E5XYCK
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	A,E
	XOR	$01
	LD	E,A
	LD	(HL),E
YSSDST
	LD	D,B
	LD	HL,YKSTXS
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
	LD	HL,YKSTYS
	ADD	HL,DE
	LD	A,(HL)
;;;KK;;;	LD	HL,ENYSPD
;;;KK;;;	ADD	HL,BC
	CALL	E5ENYSPD_ADR
	LD	(HL),A
	RET
YKS1010
	LD	HL,ENCONT
	ADD	HL,BC
	LD	(HL),B
YKS1020
	RET
;-----------------------------------
;-----------------------------------
YSUNXD
	DB	$10,$F0,$00,$00
YSUNYD
	DB	$00,$00,$F0,$10
;-----------------------------------
YKS2000
	LD	A,$01
	LD	(PLSTOP),A
;
	LD	A,$3E
	LD	(SOUND1),A	;(S)
;
	LD	A,(KEYA2)
	AND	$0F
	LD	D,A
	JR	Z,YKS2070
;
	AND	$03
	JR	Z,YKS2010
;
	LD	E,$00
	AND	$01
	JR	NZ,YKS2008
	INC	E
YKS2008
	JR	YKS2020
YKS2010
	LD	E,$02
	BIT	2,D
	JR	NZ,YKS2020
	INC	E
YKS2020
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	A,(HL)
	XOR	E
	CP	$01
	JR	Z,YKS2070
;
	LD	(HL),E
YKS2070
	CALL	E5MVCL	
;
	LD	HL,ENXPSL
	ADD	HL,BC
	LD	A,(HL)
	SUB	$08
	LD	HL,ENYPSL
	ADD	HL,BC
	OR	(HL)
	AND	$0F
	JP	NZ,YKS20A0
;
	LD	A,(HL)
	SUB	$10
	LD	(OBJYP),A
	LD	HL,ENXPSL
	ADD	HL,BC
	LD	A,(HL)
	SUB	$08
	LD	(OBJXP),A
;
	SWAP	A
	AND	$0F
	LD	E,A
;
	LD	A,(OBJYP)
	AND	$F0
	OR	E
	LD	E,A
	LD	D,B
	LD	HL,BGUNDT+$11
	ADD	HL,DE
	LD	(HL),DTU08 ;A
;
	CALL	OBJBG
;
		LD	A,(CGBFLG)
		AND	A
		JR	Z,YKS2070_PASS
		PUSH	BC
		LD	A,DTU08
		LD	(UNTATR),A
		LD	A,$07
		CALL	BG1UNIT_ATR_SUB
		POP	BC
YKS2070_PASS
;
	LD	HL,VRAMD+1
	LD	A,(VRAMD)
	LD	E,A
	ADD	A,10
	LD	(VRAMD),A
	LD	D,$00
;
	ADD	HL,DE
;
	LD	A,(VRAMH)
	LD	(HLI),A
	LD	A,(VRAML)
	LD	(HLI),A
	LD	A,$81
	LD	(HLI),A
	LD	A,$10
	LD	(HLI),A
	LD	A,$12
	LD	(HLI),A
;
	LD	A,(VRAMH)
	LD	(HLI),A
	LD	A,(VRAML)
	INC	A
	LD	(HLI),A
	LD	A,$81
	LD	(HLI),A
	LD	A,$11
	LD	(HLI),A
	LD	A,$13
	LD	(HLI),A
	LD	(HL),B
;
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	E,(HL)
	CALL	YSSDST
;
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	E,(HL)
	LD	D,B
	LD	HL,YSUNXD
	ADD	HL,DE
	LD	A,(OBJXP)
	ADD	A,(HL)
	SWAP	A
	AND	$0F
	PUSH	AF
;
	LD	HL,YSUNYD
	ADD	HL,DE
	POP	AF
	LD	E,A
	LD	A,(OBJYP)
	ADD	A,(HL)
	AND	$F0
	OR	E
	LD	E,A
	LD	D,B
	LD	HL,BGUNDT+$11
	ADD	HL,DE
	LD	E,(HL)
	LD	D,$01
	CALL	BGCRRD
	CP	$0B
	JR	Z,YKS20A0	;�n��I
	CP	$50		
	JR	Z,YKS20A0	;��1�I
	CP	$51
	JR	Z,YKS20A0	;  2!
;
	LD	A,(ENSVXL)
	LD	(WORK0),A
	LD	A,(ENDSYP)
	LD	(WORK1),A
;
	LD	A,$2F
	LD	(SOUND1),A	;(S)
;
	LD	A,SMK1
	CALL	EXIDSH
;
	LD	HL,EXTIM0
	ADD	HL,DE
	LD	(HL),$0F
;
	CALL	E5CLER
;
	LD	A,(NAZOFG)
	AND	$0F
	CP	$0E
	JR	NZ,YKS20A0	;�S�������ߓ�H
;				;YES!
	PUSH	BC
;
	LD	C,B
;;	LD	D,B
;
	LD	HL,BGUNDT
YKS2088
	LD	A,(HLI)
	PUSH	HL
	LD	E,A
	LD	D,$01
	CALL	BGCRRD
;	LD	HL,DJBGCR
;	ADD	HL,DE
;	LD	A,(HL)
	POP	HL
	CP	$50
	JR	Z,YKS2090
	CP	$51
	JR	Z,YKS2090	
	DEC	C
	JR	NZ,YKS2088	;���S�����߂��H
;				;YES !
	CALL	NAZOCLR	;(S)
YKS2090
	POP	BC
YKS20A0
	RET
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�X�s�[�h -> �P�U�����ϊ�       %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
RMCKDT
	DB	$00,$00,$01,$01,$01,$02,$02,$02
	DB	$00,$00,$0F,$0F,$0F,$0E,$0E,$0E
	DB	$08,$08,$07,$07,$07,$06,$06,$06
	DB	$08,$08,$09,$09,$09,$0A,$0A,$0A
RMCKD2
	DB	$04,$04,$03,$03,$03,$02,$02,$02
	DB	$0C,$0C,$0D,$0D,$0D,$0E,$0E,$0E
	DB	$04,$04,$05,$05,$05,$06,$06,$06
	DB	$0C,$0C,$0B,$0B,$0B,$0A,$0A,$0A
;---------------------------------------------------
MKCK16
	LD	A,(WORK0)
	RLCA
	AND	$01
	LD	E,A
	LD	A,(WORK1)
	RLCA
	RLA
	AND	$02
	OR	E
	RLA	
	RLA	
	RLA	
	AND	%00011000
	LD	H,A
;
	LD	A,(WORK1)
	BIT	7,A
	JR	Z,M16100
	CPL
	INC	A
M16100
	LD	D,A
;
	LD	A,(WORK0)
	BIT	7,A
	JR	Z,M16110
	CPL
	INC	A
M16110
;;	LD	E,A
;
;;;	LD	A,D
	CP	D
	JR	NC,M16120
;
;;;	LD	A,E
	SRA	A
	SRA	A
	ADD	A,H
	LD	E,A
	LD	D,B
	LD	HL,RMCKDT
	ADD	HL,DE
	LD	A,(HL)
	RET
M16120
	LD	A,D
	SRA	A
	SRA	A
	ADD	A,H
	LD	E,A
	LD	D,B
	LD	HL,RMCKD2
	ADD	HL,DE
	LD	A,(HL)
	RET
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	����     	  					%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
AMUSIMV
	LD	HL,ENWATR
	ADD	HL,BC
	LD	(HL),B
	LD	HL,ENHNXS
	ADD	HL,BC
	LD	(HL),B
	LD	HL,ENHNYS
	ADD	HL,BC
	LD	(HL),B
;-------------------------------------
	CALL	AMUSICS
;
	CALL	E5STCK
;
	CALL	ENHNCL
;
	LD	A,(ENSTAT2)
	RST	00
	DW	AMS1000
	DW	AMS2000
	DW	AMS3000
	DW	AMS4000
	DW	AMS4800
	DW	AMS5000
;----------------------------------
AMS1000
	LD	A,(ENSVXL)
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	(HL),A
	LD	A,(ENSVYL)
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	(HL),A
;
		jp	STATINC
;;;;;;;;	CALL	STATINC
;;;;;;;;	RET
;----------------------------------
AMS2000
	CALL	LDTIM0
	JR	NZ,AMS2090
;
	LD	HL,ENMOD0
	ADD	HL,BC
	SET	6,(HL)
;
	CALL	E5XCHK
	ADD	A,$20
	CP	$40
	JR	NC,AMS2090
	CALL	E5YCHK
	ADD	A,$20
	CP	$40
	JR	NC,AMS2090
;
	CALL	LDTIM0
	LD	(HL),$30
;
	CALL	STATINC
AMS2090
	XOR	A
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;	RET	
;----------------------------------
AMS3000
	CALL	LDTIM0
	JR	NZ,AMS3090
;
	LD	HL,ENWRK2
	ADD	HL,BC
	LD	A,(HL)
	CALL  	ENPTST
;
	CALL	LDTIM0
	LD	(HL),$18
;
	LD	HL,ENMOD0
	ADD	HL,BC
	RES	6,(HL)
;
	JP  	STATINC
AMS3090
	CP	$10
	JR	NZ,AMS30A0
;
	LD	A,$1F
	CALL	PSERCHL
;
	CALL	MKCK16
;
	SRA	A
	ADD	A,$02
;
	LD	HL,ENWRK2
	ADD	HL,BC
	LD	(HL),A
;
	LD	A,$18
	CALL	PSERCHL
AMS30A0
	LD	A,$01
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;	RET
;----------------------------------
AMS4000
	CALL	E5MVCL
;
	CALL	LDTIM0
	JR	NZ,AMS4010
;
	LD	(HL),$20
;
	CALL	STATINC
AMS4010
		jp	CREPKEL
;;;;;;;;	CALL	CREPKEL
;;;;;;;;	RET
;----------------------------------
AMS4800
	CALL	LDTIM0
	JR	NZ,AMS4810
;
	CALL	STATINC
AMS4810
		jp	CREPKEL
;;;;;;;;	CALL	CREPKEL
;;;;;;;;	RET
;----------------------------------
AMS5000
	LD	A,(PLXPSL)
	PUSH	AF
	LD	A,(PLYPSL)
	PUSH	AF
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	LD	(PLXPSL),A
;
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	A,(HL)
	LD	(PLYPSL),A
;
	LD	A,$10
	CALL	PSERCHL
;
	CALL	E5XCHK
	ADD	A,$02
	CP	$04
	JR	NC,AMS5030
;
	CALL	E5YCHK
	ADD	A,$02
	CP	$04
	JR	NC,AMS5030
;
	LD	HL,ENXPSL
	ADD	HL,BC
	LD	A,(PLXPSL)
	LD	(HL),A
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	A,(PLYPSL)
	LD	(HL),A
;
	XOR	A
	CALL	ENPTST
;
	CALL	STATINC
	LD	(HL),$01
;
	CALL	LDTIM0
	LD	(HL),$20
AMS5030
	POP	AF
	LD	(PLYPSL),A
	POP	AF
	LD	(PLXPSL),A
;
	CALL	E5MVCL
;
		jp	CREPKEL
;;;;;;;;	CALL	CREPKEL
;;;;;;;;	RET
;=================================
AMUSICD
	DB	$FF,$00,$FF,$20
	DB	$6C,$02,$6C,$22
;
	DB	$64,$22,$62,$22
	DB	$68,$22,$66,$22
	DB	$60,$02,$60,$22
	DB	$66,$02,$68,$02
	DB	$62,$02,$64,$02
	DB	$66,$42,$68,$42
	DB	$60,$42,$60,$62
	DB	$68,$62,$66,$62
AMUSICS
	LD	DE,AMUSICD
	CALL	EN2CST
;
	LD	A,(ENSTAT2)
	CP	$03
	RET	C
;
	LD	A,(ENSVXL)
	LD	HL,ENWRK0
	ADD	HL,BC
	SUB	(HL)
	SRA	A
	SRA	A
	LD	(WORK0),A
	LD	(WORK2),A
;
	LD	A,(ENDSYP)
	LD	HL,ENWRK1
	ADD	HL,BC
	SUB	(HL)
	SRA	A
	SRA	A
	LD	(WORK1),A
	LD	(WORK3),A
;
	LD	A,(ENOMID)
	LD	E,A
	LD	D,$0
	LD	HL,ENOAM
	ADD	HL,DE
		ld	e,l
		ld	d,h
;;;;;;;;	PUSH	HL
;;;;;;;;	POP	DE
;
	LD	A,$3
AMCS10
	LD	(WORK4),A
;
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	A,(WORK1)
	ADD	A,(HL)
	LD	(DE),A
	INC	DE
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(WORK0)
	ADD	A,(HL)
	ADD	A,$4
	LD	(DE),A
	INC	DE
;
	LD	A,$6A		;������
	LD	(DE),A		;
	INC	DE		;
	LD	A,$02		;
	LD	(DE),A		;
	INC	DE		;
;
	LD	A,(WORK0)
	LD	HL,WORK2
	ADD	A,(HL)
	LD	(WORK0),A	
;
	LD	A,(WORK1)
	LD	HL,WORK3
	ADD	A,(HL)
	LD	(WORK1),A	
;
	LD	A,(WORK4)
	DEC	A
	JR	NZ,AMCS10
;
	LD	A,$03
		jp	NXOMSBL
;;;;;;;;	CALL	NXOMSBL
;;;;;;;;AMCS90
;;;;;;;;	RET
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	��炵�׃A�C�e��  	   %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
WARAMSD		  ;   MEGAF
	DB	$44	;1 ���b�V�[
	DB	$29	;2 ���{��
	DB	$82	;3 �h�b�O�t�[�h
	DB	$CB	;4 �o�i�i
	DB	$64	;5 �_
	DB	$C1	;6 �n�`�̑�
	DB	$D0	;7 �p�C��
	DB	$74	;8 �n�C�r�X�J�X
	DB	$6A	;9 �v���}�C�h
	DB	$36	;A �z�E�L
	DB	$5E	;B �ނ�j
	DB	$EC	;C �u���W���[
	DB	$F5	;D �l���̃E���R
	DB	$9D	;E ���K�l
;
BOUCD
YOSSICD
	DB	$9A,$16,$9C,$16
BANNCD
	DB	$74,$00,$76,$00
;HANNCD
;	DB	$70,$00,$70,$20
;
WARASIBECD
	DB	$9A,$17,$9C,$17	;0 ���b�V�[
	DB	$9A,$17,$9C,$17	;1 ���{��
	DB	$9A,$17,$9C,$17	;2 �h�b�O�t�[�h
	DB	$9A,$17,$9C,$17	;3 �o�i�i
	DB	$9A,$14,$9C,$14	;4 �_����
	DB	$9A,$14,$9C,$14	;5 �n�`�~�c
	DB	$9A,$17,$9C,$17	;6 �p�C�i�b�v��
	DB	$9A,$14,$9C,$14	;7 �n�C�r�X�J�X
	DB	$9A,$17,$9C,$17	;8 �莆
	DB	$9A,$16,$9C,$16	;9 �z�E�L
	DB	$9A,$17,$9C,$17	;A �ނ�j
	DB	$9A,$16,$9C,$16	;B �u���W���[
	DB	$9A,$17,$9C,$17	;C �l���̃E���R
	DB	$9A,$17,$9C,$17	;D �݂Ƃ��������Y
;
YOSSIMV
	LD	A,(DJFLAG)
	AND	A
	JR	NZ,YSS010	;��̉��̋��H
;				;YES !
	LD	A,(GRNDPT)
	CP	$6B
	JR	Z,YSS001
	CP	$7A
	JR	Z,YSS001
	CP	$8B
	JR	Z,YSS001
	CP	$7B
	JR	NZ,YSS010
;
YSS001
	LD	A,(GRRMSV+$7B)
	AND	%00010000
	RET	Z		;���ł����H
;				;YES !
YSS010
	LD	A,(DJSVBF)
	AND	%00100000
	JP	NZ,E5CLER
;
		LD	A,(CGBFLG)
		AND	A
		JR	Z,YSS010_900
		LD	A,(YKFLAG)
		AND	A
		JR	Z,YSS010_100
		LD	A,(ENDSYP)
		ADD	A,$02
		LD	(ENDSYP),A
YSS010_100
		PUSH	HL
		LD	DE,WARASIBECD
		LD	A,(MEGAF)
		DEC	A
		SLA	A
		SLA	A
		LD	L,A
		LD	H,$000
		ADD	HL,DE
;;;;;;;;		PUSH	HL
;;;;;;;;		POP	DE
		ld	e,l
		ld	d,h
		POP	HL
		JR	YSS05C
YSS010_900
;
	LD	DE,BANNCD
;
	LD	A,(MEGAF)
	CP	$04
	JR	Z,YSS05C ;�o�i�i
;
YSS050
	LD	A,(YKFLAG)
	AND	A
	JR	Z,YSS058
;
	LD	A,(ENDSYP)
	ADD	A,$02
	LD	(ENDSYP),A
YSS058
	LD	DE,YOSSICD
YSS05C
	CALL	EN2CST
YSS060
	CALL	LDTIM0
	JR	NZ,YSS100
;
	CALL	CRENPSL
	JR	NC,YSS080
;
	LD	A,$10
	LD	(SOUND4),A	;(S)
	LD	(ITEMNOT),A	;;;;;;;;5/11
;
	LD	A,(TODYFG)
	LD	(BGMNO),A	;4/24
;
	CALL	LDTIM0
	LD	A,$68
	LD	(HL),A
		ld	a,066h
	LD	(ENSTTM),A
;
	JP	DUSHCL
YSS080
	RET
;===============================================
YSS100
	CP	$10
	JR	NZ,BOUMV18
;
	DEC	(HL)
;
	LD	A,(MEGAF)
	LD	E,A
	LD	D,B
	LD	HL,WARAMSD-1
	ADD	HL,DE
	LD	A,(HL)
	CP	$9D
	JR	Z,BU0F0
	CP	$44
	JR	NZ,BU100
BU0F0
	CALL	MSGCHK
	JR	BU120
BU100
	CALL	MSGCH2
;
BU120
	XOR	A
BOUMV18
	DEC	A
	JR	NZ,BOUMV20
;
	XOR	A
	LD	(WARAFG),A	;�A�C�e���\���I���I
	LD	(ITEMNOT),A	;;;;;;;;5/11
;
	CALL	E5SVCK
	OR	%00100000
	LD	(HL),A
;;;	LD	(DJSVBF),A
;
	JP	E5CLER
BOUMV20
	LD	A,(PLXPSL)
	LD	HL,ENXPSL
	ADD	HL,BC
	LD	(HL),A
;
	LD	A,(GRNDPT)
	CP	$C9
	JR	NZ,YSM022
;
	LD	A,$04
	LD	(PLDSYD),A
YSM022
	LD	HL,PLDSYD
	LD	A,(PLYPSL)
	ADD	A,(HL)
	LD	HL,ENYPSL
	ADD	HL,BC
	SUB	$10
	LD	(HL),A
;
	LD	A,(PLZPSL)
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	(HL),A
;
	LD	A,$6C  ;
	LD	(PLCHPT),A
;
	LD	A,$02
	LD	(PLSTOP),A
;
	LD	A,$03
	LD	(PLCMKI),A
;
	XOR	A
	LD	(PCUTFG),A
	LD	(WCUTFG),A
	LD	(SPCTWT),A
	LD	(SPCTTM),A
	RET
;===============================
E5SVCK
	LD	HL,GRRMSV
	LD	A,(GRNDPT)
	LD	E,A
	LD	A,(DJFLAG)
	LD	D,A
	LD	A,(DNJNNO)
	CP	DJROOM2
	JR	NC,YOSS010
	CP	DJROOM
	JR	C,YOSS010
	INC	D
YOSS010
	ADD	HL,DE
	LD	A,(HL)
	RET
;###############################################
;#	�p�^ �I�N�^				       #
;###############################################
M5MVXS
	DB	$08,$F8,$00,$00
M5MVYS
	DB	$00,$00,$F8,$08
;
OCTAJCD
	DB	$50,$02,$50,$22 ;D
	DB	$52,$02,$52,$22
	DB	$50,$42,$50,$62 ;U
	DB	$52,$42,$52,$62
	DB	$54,$02,$56,$02 ;L
	DB	$58,$02,$5A,$02
	DB	$56,$22,$54,$22 ;R
	DB	$5A,$22,$58,$22
;- - - - - - - - - - - -
OCTAJMV
	LD	DE,OCTAJCD
	CALL	EN2CST
	CALL	OCHANECS
;
	CALL	E5STCK
;
	LD	HL,ENHNFG
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,E5VS10	;�͂˂�����X�g�b�v�I
;
	LD	HL,ENSTAT
	ADD	HL,BC
	LD	A,$01
	LD	(HL),A
	LD	(ENSTAT2),A
;
	CALL	LDTIM0
	LD	(HL),$40
E5VS10
	CALL	E5HNSB
;
	CALL	E5MVCL
;
	CALL	E5ZCLC
	LD	HL,ENZSPD
	ADD	HL,BC
	DEC	(HL)
;
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	AND	%10000000
	LD	(ENHELP),A
	JR	Z,OJM010
;
	LD	(HL),B
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),B
;
	LD	HL,ENWRK1	;�H�p�^�[��
	ADD	HL,BC
	LD	(HL),B
OJM010
	CALL	ENBGCKL
;
;;	CALL	CREPKEL
	LD	A,(ENSTAT2) ;HL)
	CP	$02
	JP	Z,OCJJUMP
	AND	A
	JR	Z,M51WLK
;- - STOP - -
	CALL	LDTIM0
	JR	Z,M51S02
;
	CP	$0A
	JR	NZ,M51S01	; Shot chance ?
;				; yes 
	CALL	E5XYCK
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	A,E
	CP	(HL)
	JR	NZ,M51S01
;
	CALL	OCTAMJST
;
M51S01
;;	CALL	ENBGCKL
	CALL	ENSDCL
	JP	OCJJPCK
;;	RET
;--------------------------------
M51S02
	CALL	RNDSUB
	AND	$1F
	OR	$20
	LD	(HL),A
;
	LD	HL,ENSTAT
	ADD	HL,BC
;;	LD	A,$0
	LD	(HL),$00 ;A
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	INC	A
	AND	$3
	LD	(HL),A
	CP	$00
	JR	NZ,M51S08	; 4 move 1 serch !
;
	CALL	E5XYCK
	JR	M51S0A
M51S08
	CALL	RNDSUB
M51S0A
	AND	$03
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	(HL),A
;
	LD	E,A
	LD	D,B ;$0
	LD	HL,M5MVXS
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
	LD	HL,M5MVYS
	ADD	HL,DE
	LD	A,(HL)
;;;KK;;;	LD	HL,ENYSPD
;;;KK;;;	ADD	HL,BC
	CALL	E5ENYSPD_ADR
	LD	(HL),A
M51S10
	JP	OCJJPCK
;;	RET
;------------------------------------------
;- - WALK - -
M51WLK
	LD	HL,ENCBFG
	ADD	HL,BC
	LD	A,(HL)
	AND	%00001111
	JR	NZ,M51STS
;
;;	LD	HL,ENTIM0
;;	ADD	HL,BC
;;	LD	A,(HL)
	CALL	LDTIM0
;;	AND	A	;CP	$00
	JR	NZ,M51M10
M51STS
	CALL	RNDSUB
	AND	$0F
	OR	$10
	LD	(HL),A
;
	LD	HL,ENSTAT
	ADD	HL,BC
;;;	LD	A,$1
	LD	(HL),$01 ;A
;
	CALL	ENSDCL
M51M10
	CALL	M5PTST
;==========================================
OCJJPCK
	LD	HL,ENTIM2
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	NZ,OCJC30
;
	CALL	E5XCHK
	ADD	A,$20
	CP	$40
	JR	NC,OCJC30
;
	CALL	E5YCHK
	ADD	A,$20
	CP	$40
	JR	NC,OCJC30
;
	LD	A,(ITEMB)
	CP	PKEN
	JR	NZ,OCJC10 	; Ken furi check!
;
	LD	A,(KEYA2)
	AND	%00100000
	JR	NZ,OCJC20 
	JR	OCJC30
OCJC10 
	LD	A,(ITEMA)
	CP	PKEN
	JR	NZ,OCJC30
;
	LD	A,(KEYA2)
	AND	%00010000
	JR	Z,OCJC30
;--------------------------	;���U��ꂽ�H
OCJC20 				;YES !
	CALL	E5XYCK
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	A,(HL)
	XOR	$01
	CP	E
	JR	Z,OCJC30	;���������킹�H
;				;YES !
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),$18
;
	LD	A,$10
	CALL	PSERCHL
;
	CALL	STATINC
	LD	(HL),$02
;
;;	LD	A,$0D
;;	LD	(SOUND1),A	;(S)
		jp	E5JPSD	;(S)
;;;;;;;;	CALL	E5JPSD	;(S)
;;;;;;;;;
;;;;;;;;	RET
OCJC30
		jp	CREPKEL
;;;;;;;;	CALL	CREPKEL
;;;;;;;;	RET
;===============================================
OCJJUMP
	LD	A,(FRCNT)
	RRA
	RRA
	AND	$01
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	(HL),A
;
	CALL	E5XYCK
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	(HL),E
;
	CALL	M5PTST
;
	LD	A,(ENHELP)
	AND	A
	JR	Z,OCJJ10
;
	CALL	STATINC
	LD	(HL),$01
;
	CALL	LDTIM0
	LD	(HL),$20
OCJJ10
	RET
;===============================================
;###############################################
;#					       #
;###############################################
O5SXAD
	DB	$08,$F8,$00,$00
O5SYAD
	DB	$00,$00,$F8,$08
O5SXSD
	DB	$20,$E0,$00,$00
O5SYSD
	DB	$00,$00,$E0,$20
;- - - - - - - - - - - - - - - - -
OCTAMJST
	LD	A,OCTAM
	CALL	ENIDSHL
	JR	C,O5S090
;
	PUSH	BC
;
	LD	HL,ENCHPT
	ADD	HL,DE
	LD	(HL),$01
;
	LD	A,(WORK2)
	LD	HL,ENMUKI
	ADD	HL,DE
	LD	(HL),A
;
	LD	C,A
;
	LD	HL,O5SXAD
	ADD	HL,BC
;
	LD	A,(WORK0)
	ADD	A,(HL)
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,O5SYAD
	ADD	HL,BC
;
	LD	A,(WORK1)
	ADD	A,(HL)
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,O5SXSD
	ADD	HL,BC
;
	LD 	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,O5SYSD
	ADD	HL,BC
;
	LD 	A,(HL)
	LD	HL,ENYSPD
	ADD	HL,DE
	LD	(HL),A
;
	POP	BC
	AND	A	; CLC
O5S090
	RET
;========================================
OCHANECD
;0
	DB	$00,$FC,$22,$40
	DB	$00,$0C,$22,$60
;1
	DB	$00,$FC,$22,$00
	DB	$00,$0C,$22,$20
OCHANECS
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	A,(HL)
	RLA	
	RLA	
	RLA	
	AND	%11111000
	LD	E,A
	LD	D,B
	LD	HL,OCHANECD
	ADD	HL,DE
	LD	C,$02
		jp	ENOMST
;;;;;;;;	CALL	ENOMST
;;;;;;;;	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%   ��			                  %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
MONKYCD
;0
	DB	$78,$02,$72,$02
	DB	$7A,$02,$72,$02
;
	DB	$70,$02,$72,$02
	DB	$7C,$02,$7E,$02
	DB	$74,$02,$76,$02
MONKYCD2
;0
	DB	$72,$22,$78,$22
	DB	$72,$22,$7A,$22
;
	DB	$72,$22,$70,$22
	DB	$7E,$22,$7C,$22
	DB	$76,$22,$74,$22
;- - - - - - - - - - - - - - - - - - - -
MONKYMV
	LD	A,(DJSVBF)
	AND	%00010000
	JP	NZ,E5CLER
;
	LD	DE,MONKYCD
;
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	NZ,MNK010
;
	LD	DE,MONKYCD2
MNK010
	CALL	EN2CST
;
	LD	HL,ENTIM4
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,MNK011	;�o�i�i�����グ�H
;				;YES !
	XOR	A
	LD	(ENCHPT2),A
;
	LD	A,(ENDSYP)
	SUB	$0E
	LD	(ENDSYP),A
;
	LD	DE,BANANACD
	CALL	EN2CST
;
	CALL	ENPSSV
;
MNK011
	CALL	E5STCK
;
;;	CALL	E5HNSB
	CALL	E5ZCLC
;
	LD	HL,ENZSPD
	ADD	HL,BC
	DEC	(HL)
	DEC	(HL)
;
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	AND	%10000000
	LD	(ENHELP),A
	JR	Z,MNK018
;
	LD	(HL),B
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),B
;
;;;	CALL	ENSDCL
MNK018
	LD	A,(ENSTAT2)
	RST	00
	DW	MON1000
	DW	MON1800	;asking
	DW	MON2000	;�o�i�i�����グ  1 �I
	DW	MON3000	;�o�i�i�����グ  2 �I
	DW	MON4000	;�o�i�i�����グ  3 �I
;-------------------------------------------------
	DW	MON5000	;�΃����������� 1�I
	DW	MON6000	;�΃����������� 2�I
;-------------------------------------------------
	DW	MON7000	;����� 1�I
	DW	MON8000	;����� 2�I
	DW	MON9000	;END�I
;
MNWAN 	EQU	$05
MNHASI	EQU	$07
MNEND	EQU	$09
;====================================
MON1000
	LD	A,(WANFLG)
	CP	$01
	JR	NZ,MON1008
;
	LD	HL,ENFLSH
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	NZ,MON1001
;
	CALL	E5XCHK
	ADD	A,$18
	CP	$30
	JR	NC,MON1007
;
	CALL	E5YCHK
	ADD	A,$18
	CP	$30
	JR	NC,MON1007
;
MON1001
;;	LD	A,$02
;;	CALL	ENPTST
;
	CALL	LDTIM0
	LD	(HL),$10
;
	CALL	STATINC
	LD	(HL),MNWAN ;$04
;
	LD	A,$60
MONMSCK
	CALL	MSGCH2
;
	LD	A,$14
	LD	(FKMSFG),A	;(S)���I
MON1007
	RET		
;
MON1008		;���������A��ĂȂ��I
	CALL	M5CROS
;
	CALL	E5MSCK
	JR	NC,MON1010
;
	LD	A,(MEGAF)
	CP	$04
	JR	NZ,MON100A	;�o�i�i�����Ă���H
;				;YES !
;;	XOR	A
;;	LD	(MEGAF),A
;
	LD	A,$65
	CALL	MONMSCK
;;	CALL	MSGCH2
;
;;	CALL	LDTIM0
;;	LD	(HL),$10
;
		jp	STATINC
;;;;;;;;	CALL	STATINC
;;;;;;;;	RET
MON100A
	LD	A,$61
	CALL	MONMSCK
;;	CALL	MSGCH2
MON1010
MNPTST
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	AND	$01
	CALL	ENPTST
;
	LD	A,(FRCNT)
	AND	$1F
	JR	NZ,MON1020
;
	CALL	RNDSUB
	AND	$01
	JR	NZ,MON1020
;
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	A,(HL)
	XOR	$01
	LD	(HL),A
MON1020
	RET
;==============================
MON1800
	LD	A,(MSGEFG)
	AND	A
		ret	NZ
;;;;;;;;	JR	NZ,MON1890
;
	CALL	STATINC
;
	LD	A,(MSANSR)
	AND	A
	JR	NZ,MON1880
;
	CALL	LDTIM0
	LD	(HL),$10
	RET
MON1880
	LD	(HL),B
;
	LD	A,$61
		jp	MONMSCK
;;;;;;;;	CALL	MONMSCK
;;;;;;;;;;	CALL	MSGCH2
;;;;;;;;MON1890
;;;;;;;;	RET
;==============================
MON2000
	CALL	LDTIM0
	JR	NZ,MON2010
;
	LD	(HL),$80
;
	LD	HL,ENTIM4
	ADD	HL,BC
	LD	(HL),$80	;�o�i�i�����グ�I
;
	LD	A,$01
	LD	(SOUND1),A	;(S)
;
	CALL	STATINC
MON2010
	LD	A,$02
	LD	(PLSTOP),A
	RET
;==============================
BANANACD
	DB	$9A,$17
	DB	$9C,$17
;
MON3000
	LD	A,$03
	CALL	ENPTST
;
	CALL	LDTIM0
	JR	NZ,MON3010
;
	LD	A,$36
	LD	(SOUND4),A	;(S)
	LD	(BGMNO),A	
;
	CALL	LDTIM3
	LD	(HL),$80
;
	JP  	STATINC
MON3010
	CP	$10
	JR	NZ,MON3030
;
	LD	A,$62
	CALL	MONMSCK
MON3030
	LD	A,$02
	LD	(PLSTOP),A
	RET
;==============================
HSPDAX
	DB	$48,$48,$48,$48,$48,$48,$48
HSPDAY
	DB	$18,$20,$28,$30,$38,$40,$48
HSPSAX
	DB	$00,$78,$28,$58,$40,$30,$60
HSPSAY
	DB	$00,$00,$80,$80,$00,$80,$00
MHASYD
	DB	$10,$30,$20
;- - - - - - - - - - - - - - - -
MON4000
	LD	A,$02
	LD	(PLSTOP),A
;
	CALL	MNPTST
;
;	LD	HL,ENTIM3
;	ADD	HL,BC
;	LD	A,(HL)
;	AND	A
	CALL	LDTIM3
	JR	NZ,MON4010
;
	LD	A,$02
	LD	(SOUND1),A	;(S)	
;
	LD	A,(GRRMSV+$7B)
	OR	%00010000
	LD	(GRRMSV+$7B),A
;;	LD	(DJSVBF),A
;
;;	LD	A,$00
;;	LD	(MEGAF),A	;�P�������I
	LD	A,$01
	LD	(WARAFG),A	;
;
	LD	A,$63
	LD	(SARUFG),A	;���I���t���O�I
	CALL	MONMSCK
;;	CALL	MSGCH2
;
;;;	�_�Z�b�g�I
;
	CALL	STATINC
	LD	(HL),MNWAN	;�����I
;;	LD	(HL),MNEND
;
	LD	HL,ENCONT
	ADD	HL,BC
	LD	(HL),$06 ;���������ɂ���ē�����̂Ɠ������ƁI
	RET
MON4010
	CP	$01
	JR	NZ,MON4011
;
	LD	A,$05
	LD	(MEGAF),A	;
;
	LD	A,$0D
	LD	(CHTRF2),A	;�A�C�e�����������I
MON4011
	LD	A,(FRCNT)
	AND	$1F
	JR	NZ,MON4020
;
	LD	HL,ENWRK2
	ADD	HL,BC
	LD	A,(HL)
	CP	$07
	JR	Z,MON4020
;
	LD	A,MONKY
	CALL	ENIDSHL
	JR	C,MON4020
;
	PUSH	BC
;
;;	LD	A,$0D
;;	LD	(SOUND1),A	;(S)
	CALL	E5JPSD	;(S)
;
	LD	HL,ENWRK2
	ADD	HL,BC
	LD	C,(HL)
;
	INC	(HL)	
;
	LD	HL,HSPDAX
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENWRK0
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,HSPDAY
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENWRK1
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,HSPSAX
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,HSPSAY
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,ENSTAT
	ADD	HL,DE
	LD	(HL),MNHASI
;
	LD	HL,ENTIM2
	ADD	HL,DE
	LD	(HL),$80
;
	POP	BC
MON4020
;	LD	HL,ENTIM3
;	ADD	HL,BC
;	LD	A,(HL)
	CALL	LDTIM3
	CP	$40
		ret	NC
;;;;;;;;	JR	NC,MON4030
;
	LD	A,(FRCNT)
	AND	$3F
		ret	NZ
;;;;;;;;	JR	NZ,MON4030
;
	LD	HL,ENWRK3
	ADD	HL,BC
	LD	A,(HL)
	CP	$03
		ret	NC
;;;;;;;;	JR	NC,MON4030
;
	LD	E,A
	LD	D,B
	INC	(HL)
;
	LD	HL,MHASYD
	ADD	HL,DE
	LD	A,(HL)
	LD	(OBJYP),A
	LD	A,$40
	LD	(OBJXP),A
;
	CALL	OBJBG
;
		LD	A,(CGBFLG)
		AND	A
		JR	Z,MON4030_PASS
		PUSH	BC
		LD	A,SARUH
		LD	(UNTATR),A
		LD	A,$07
		CALL	BG1UNIT_ATR_SUB
		POP	BC
MON4030_PASS
;
	LD	HL,VRAMD+1
	LD	A,(VRAMD)
	LD	E,A
	ADD	A,10
	LD	(VRAMD),A
	LD	D,$00
;
	ADD	HL,DE
;
	LD	A,(VRAMH)
	LD	(HLI),A
	LD	A,(VRAML)
	LD	(HLI),A
	LD	A,$81
	LD	(HLI),A
	LD	A,$0C
	LD	(HLI),A
	LD	A,$1C
	LD	(HLI),A
;
	LD	A,(VRAMH)
	LD	(HLI),A
	LD	A,(VRAML)
	INC	A
	LD	(HLI),A
	LD	A,$81
	LD	(HLI),A
	LD	A,$0D
	LD	(HLI),A
	LD	A,$1D
	LD	(HLI),A
	LD	(HL),B	
;
	LD	HL,BGUNDT+$11+$14
	LD	(HL),SARUH	
;--------------------------------------------
;	�����i��j
;--------------------------------------------
		LD	A,$07|UNIT_TRAN_BIT
		CALL	Unit_change	; �o���N�Q���j�b�g��������
;--------------------------------------------
	LD	HL,BGUNDT+$11+$24
	LD	(HL),SARUH	
;--------------------------------------------
;	�����i���j
;--------------------------------------------
		LD	A,$07|UNIT_TRAN_BIT
		CALL	Unit_change	; �o���N�Q���j�b�g��������
;--------------------------------------------
	LD	HL,BGUNDT+$11+$34
	LD	(HL),SARUH	
;--------------------------------------------
;	�����i���j
;--------------------------------------------
		LD	A,$07|UNIT_TRAN_BIT
		jp	Unit_change	; �o���N�Q���j�b�g��������
;;;;;;;;		CALL	Unit_change	; �o���N�Q���j�b�g��������
;--------------------------------------------
;;;;;;;;MON4030
;;;;;;;;	RET
;==============================
MON5000
	CALL	LDTIM0
	JR	NZ,MON5010
;
	CALL	STATINC
;
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	CP	$05
	JR	C,MON5002
;
	CALL	RNDSUB
	AND	$0F
	ADD	A,$10
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),A
;
	LD	E,$10
	AND	$01
	JR	Z,MON5001
	LD	E,$F0
MON5001
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),E
;	
;;;KK;;;	LD	HL,ENYSPD
;;;KK;;;	ADD	HL,BC
	CALL	E5ENYSPD_ADR
	LD	(HL),$F0
		jp	MNMKST
;;;;;;;;	CALL	MNMKST
;;;;;;;;	RET
;
;
MON5002
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),$18
;
	LD	A,(PLXPSL)
	PUSH	AF
	LD	A,(PLYPSL)
	PUSH	AF
;
	LD	A,(WAINDX3)
	LD	E,A
	LD	D,B
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	A,(HL)
	LD	(PLXPSL),A
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	A,(HL)
	LD	(PLYPSL),A
;
	LD	A,$14
	CALL	PSERCHL
;
	POP	AF
	LD	(PLYPSL),A
	POP	AF
	LD	(PLXPSL),A
;
MNMKST
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	A,(HL)
	LD	E,$00
	AND	%10000000
	JR	Z,MON5008
;
	INC	E
MON5008
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	(HL),E
MON5010
;;	LD	A,$02
;;	CALL	ENPTST
	CALL	MNPTST
;
;	LD	HL,ENTIM1
;	ADD	HL,BC
;	LD	A,(HL)
;	AND	A
	CALL	LDTIM1
		ret	Z		;�����I
;;;;;;;;	JR	Z,MON50A0	;�����I
;
	LD	A,$04
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;MON50A0
;;;;;;;;	RET
;==============================
MON6000
	CALL	E5MVCL
;
	LD	A,(ENSVYL)
	CP	$08
	JP	C,E5CLER
;
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	CP	$05
	JR	NC,MON6001
;
	CALL	ENBGCKL
MON6001
	LD	A,(ENHELP)
	AND	A
	JR	Z,MON6010
;
	CALL	STATINC
	LD	(HL),MNWAN ;$04+1
;
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	CP	$05
	JR	C,MON6008
;
	CALL	LDTIM0
	LD	(HL),$10
;
;	LD	HL,ENTIM1
;	ADD	HL,BC
	CALL	LDTIM1
	LD	(HL),$10
	RET
;
MON6008
	CALL	LDTIM0
	CALL	RNDSUB
	AND	$3F
	ADD	A,$30
	LD	(HL),A
MON6010
	LD	A,$03
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;	RET
;=====================================
MON7000
	CALL	LDTIM0
	JR	NZ,MON7010
;
	LD	A,(PLXPSL)
	PUSH	AF
	LD	A,(PLYPSL)
	PUSH	AF
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	LD	(PLXPSL),A
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	A,(HL)
	LD	(PLYPSL),A
;
	LD	HL,ENTIM2
	ADD	HL,BC
	LD	A,(SARUFG)
	OR	(HL)
	LD	A,$10
	LD	E,$10
	JR	NZ,MON7003
	LD	A,$08
	LD	E,$08
MON7003
	PUSH	DE
	CALL	PSERCHL
;
	POP	DE
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),E
;
	LD	A,(SARUFG)
	AND	A
	JR	Z,MON7005	;���I���H
;				; YES !
	LD	A,(WORK0)
;;;KK;;;	LD	HL,ENYSPD
;;;KK;;;	ADD	HL,BC
	CALL	E5ENYSPD_ADR
	CPL
	INC	A
	LD	(HL),A
;
	LD	A,(WORK1)
	LD	HL,ENXSPD
	ADD	HL,BC
	CPL
	INC	A
	LD	(HL),A
;
	LD	A,(ENSVYL)
	CP	$90
	JR	C,MON7005
;
	CALL	E5CLER
MON7005
	POP	AF
	LD	(PLYPSL),A
	POP	AF
	LD	(PLXPSL),A
;
	CALL	STATINC
;
	CALL	MNMKST
MON7010
;;;KK;;;	LD	HL,ENYSPD
;;;KK;;;	ADD	HL,BC
	CALL	E5ENYSPD_ADR
	LD	A,(HL)
	AND	%10000000
	LD	A,$02
	JR	Z,MON7090
	LD	A,$04
MON7090
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;	RET
;=====================================
MON8000
	LD	A,(ENHELP)
	AND	A
	JR	Z,MON8010
;
	CALL	LDTIM0
	LD	(HL),$08
;
	CALL	STATINC
	DEC	(HL)
	DEC	(HL)
MON8010
	LD	A,$03
	CALL	ENPTST
;
		jp	E5MVCL
;;;;;;;;	CALL	E5MVCL
;;;;;;;;	RET
;======================================
MON9000
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%   �Q�b�\�[                             %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
GESSOCD
	DB	$6A,$00,$6A,$20
	DB	$68,$00,$68,$20
;- - - - - - - - - - - - - - - - -
GESSOMV
	LD	DE,GESSOCD
	CALL	EN2CST
;
	CALL	E5STCK
;
	CALL	E5HNSB
;
	CALL	CREPKEL
;
	CALL	E5MVCL
	CALL	ENBGCKL
;
	LD	HL,ENWATR
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	NZ,GES0010
;
	LD	HL,ENTIM4
	ADD	HL,BC
	LD	(HL),$10
;
	LD	A,(ENSVXL)
	LD	HL,ENXPSL
	ADD	HL,BC
	LD	(HL),A
;
	LD	A,(ENSVYL)
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	(HL),A
GES0010
	XOR	A
	CALL	ENPTST
;
	LD	A,(ENSTAT2)
	RST	00
	DW	GES1000
	DW	GES2000
;---------------------------------
GES1000
	CALL	LDTIM0
	JR	NZ,GES1010
;
	CALL	E5YCHK
	LD	A,E
	CP	$03
	JR	Z,GES1010
;
GESUPST
	CALL	ENSDCL
;
	CALL	LDTIM0
	LD	(HL),$25
;
	CALL	E5XCHK
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	(HL),E
;
	CALL 	STATINC
	LD	(HL),$01
	RET
GES1010
;;;KK;;;	LD	HL,ENYSPD
;;;KK;;;	ADD	HL,BC
	CALL	E5ENYSPD_ADR
	LD	A,(HL)
	SUB	$04
	JR	Z,GES1020	
	AND	%10000000
	JR	Z,GES1018
	INC	(HL)
	INC	(HL)
GES1018
	DEC	(HL)
;
GES1020
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,GES1030
;
	AND	%10000000
	JR	Z,GES1028
	INC	(HL)
	INC	(HL)
GES1028
	DEC	(HL)
GES1030
	RET
;---------------------------------
GESXAD
	DB	$01,$FF
;
GES2000
	CALL	LDTIM0
	JR	NZ,GES2010
;
	LD	(HL),$40
;
	CALL	STATINC
	LD	(HL),B
	RET
GES2010		
	LD	A,(FRCNT)
	AND	$01
	JR	NZ,GES2050
;
;;;KK;;;	LD	HL,ENYSPD
;;;KK;;;	ADD	HL,BC
	CALL	E5ENYSPD_ADR
	DEC	(HL)
;
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	E,(HL)
	LD	D,B
	LD	HL,GESXAD
	ADD	HL,DE
	LD	A,(HL)
;
	LD	HL,ENXSPD
	ADD	HL,BC
	ADD	A,(HL)
	LD	(HL),A
GES2050
	LD	A,$01
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;	RET
;---------------------------------
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%				 %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
HENOMST
	LD	A,(ENCHPT2)
	INC	A
;;	CP	$FF
	JR	Z,HEOS090
;
	PUSH	HL
	LD	A,(ENOMID)
	LD	E,A
	LD	D,$0
	LD	HL,ENOAM
	ADD	HL,DE
HEOS001
		ld	e,l
		ld	d,h
;;10/31;	PUSH	HL
;;10/31;	POP	DE
;
	POP	HL
;
;	LD	A,C
;	LD	(WORK0),A
;	LD	A,(INDEX)
;	LD	C,A
;	CALL	O2MCHK
;	LD	A,(WORK0)
;	LD	C,A
HENOM10
	LD	A,(ENDSYP)
	ADD	A,(HL)
	CP	$7E
	JR	C,HENO10
	XOR	A
HENO10
	LD	(DE),A
	INC	HL
	INC	DE
;
	PUSH	BC
;
	LD	A,(TILTXD)
	LD	C,A
;
	LD	A,(ENSVXL)
	ADD	A,(HL)
	SUB	C
	LD	(DE),A
	INC	HL
	INC	DE
;
	LD	A,(ENCHNO)	; Chr bank revise !
	LD	C,A
	LD	A,(HLI)
	PUSH	AF
	ADD	A,C
	LD	(DE),A
;;	POP	BC
;
	POP	AF
;;	AND	$0F
	CP	$FF
	JR	NZ,HEOS900
	DEC	DE
	XOR	A
	LD	(DE),A
	INC	DE
HEOS900
	POP	BC
	INC	DE
;
	LD	A,(ENFLCL)
	XOR	(HL)
	INC	HL
	LD	(DE),A
	INC	DE
;
	DEC	C
	JR	NZ,HENOM10
;
	LD	A,(INDEX)
	LD	C,A
;
	LD	A,10
		jp	NXOMSBL
;;;;;;;;	CALL	NXOMSBL
;;;;;;;;	RET
HEOS090
	LD	A,(INDEX)
	LD	C,A
;
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%   ��                                   %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
HASIRCD
	DB	$00,$00,$4C,$07
	DB	$00,$08,$4C,$27
	DB	$F0,$00,$4A,$07
	DB	$F0,$08,$4A,$27
	DB	$E0,$00,$4A,$07
	DB	$E0,$08,$4A,$27
	DB	$D0,$00,$4A,$07
	DB	$D0,$08,$4A,$27
	DB	$C0,$00,$48,$07
	DB	$C0,$08,$48,$27
HASIRCD2
	DB	$00,$00,$4A,$07
	DB	$00,$08,$4A,$27
	DB	$F0,$00,$4A,$07
	DB	$F0,$08,$4A,$27
	DB	$E0,$00,$4A,$07
	DB	$E0,$08,$4A,$27
	DB	$D0,$00,$48,$07
	DB	$D0,$08,$48,$27
	DB	$C0,$00,$FF,$07
	DB	$C0,$08,$FF,$27
HASIRCD3
	DB	$00,$00,$4A,$07
	DB	$00,$08,$4A,$27
	DB	$F0,$00,$4A,$07
	DB	$F0,$08,$4A,$27
	DB	$E0,$00,$48,$07
	DB	$E0,$08,$48,$27
	DB	$D0,$00,$FF,$07
	DB	$D0,$08,$FF,$27
	DB	$C0,$00,$FF,$07
	DB	$C0,$08,$FF,$27
HASIRCD4
	DB	$00,$00,$4A,$07
	DB	$00,$08,$4A,$27
	DB	$F0,$00,$48,$07
	DB	$F0,$08,$48,$27
	DB	$E0,$00,$FF,$07
	DB	$E0,$08,$FF,$27
	DB	$D0,$00,$FF,$07
	DB	$D0,$08,$FF,$27
	DB	$C0,$00,$FF,$07
	DB	$C0,$08,$FF,$27
HASIRCD5
	DB	$00,$00,$48,$07
	DB	$00,$08,$48,$27
	DB	$F0,$00,$FF,$07
	DB	$F0,$08,$FF,$27
	DB	$E0,$00,$FF,$07
	DB	$E0,$08,$FF,$27
	DB	$D0,$00,$FF,$07
	DB	$D0,$08,$FF,$27
	DB	$C0,$00,$FF,$07
	DB	$C0,$08,$FF,$27
;- - - - - - - - - - - - - - - - - - - -
HASIRMV
		ld	a,(PLYPSL)
		ld	e,a
		ld	hl,ENYPSL
		add	hl,bc
		ld	a,(hl)
		sub	e
		jr	c,HASIRMV_050
;
		ld	a,1
		ld	(OMHNFG),a
;
HASIRMV_050
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	CP	$02
	JP	Z,HSISHI
	AND	A
	JP	NZ,HSSMOK
;
	LD	A,(DJSVBF)
	AND	%00100000
	JP	NZ,E5CLER
;
	LD	A,(SCRLFG)
	AND	A
	JR	NZ,HSRCK10
;
	LD	HL,ENGRPT
	ADD	HL,BC
	LD	A,(GRNDPT)
	CP	(HL)
	JP	NZ,E5CLER
HSRCK10
	LD	A,(ENCHPT2)
	CP	$05
	JR	NC,HSCS90
	RLA
	RLA
	AND	%11111100
	SLA	A
	LD	E,A
	SLA	A
	SLA	A
	ADD	A,E	; x10
	LD	E,A
	LD	D,B	
;
	LD	HL,HASIRCD
	ADD	HL,DE
;
	LD	C,$0A
	CALL	HENOMST
;
HSCS90
	CALL	ENHNCL
;
	CALL	CRKNENL
;
	CALL	M5CROS
;
	LD	A,(ENSTAT2)
	RST	00
	DW	HSRRT
	DW	HSRBRK1
	DW	HSRBRK2
	DW	HSRBRK3
	DW	HSRBRK4
	DW	HSRBRK5
;===================================
HSRRT
	RET
;===================================
HSRBRK1
	CALL	ENPLST
;
	CALL	LDTIM0
	JR	NZ,HSB1010
;
	JP  	STATINC
HSB1010
HSTLST
	LD	E,$00
	AND	$04
	JR	Z,HSB1020
;
	LD	E,$02
HSB1020
	LD	A,E
	LD	(TILTXD),A
;
	RET
;===================================
HSRBRK2
	CALL	ENPLST
;
HSB2010
	LD	A,(FRCNT)
	CALL	HSTLST
;
	LD	A,(FRCNT)
	AND	$1F
	JR	NZ,HSB2020
;
	LD	HL,ENCHPT
	ADD	HL,BC
	LD	A,(HL)
	INC	A
	LD	(HL),A
	CP	$05
	JP	Z,HSB2008
;
	CALL	RNDSUB
	AND	$03
	JR	Z,HSB2020
;
	CALL	HSISISET ;���΃Z�b�g
HSB2020
	LD	A,(FRCNT)
	AND	$03
	JR	NZ,HSB2030
;
	LD	A,HASIR	;���Z�b�g
	CALL	ENIDSHL
	JR	C,HSB2030
;
	CALL	RNDSUB
	AND	$07
	SUB	$04
	LD	HL,WORK1
	ADD	A,(HL)
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),A
;
	CALL	RNDSUB
	AND	$1F
	SUB	$10
	LD	HL,WORK0
	ADD	A,(HL)
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,ENMOD0
	ADD	HL,DE
	LD	(HL),%11000010
;
	LD	HL,ENTIM0
	ADD	HL,DE
	LD	(HL),$10
;
	LD	HL,ENWRK0
	ADD	HL,DE
	LD	(HL),$01
HSB2030
	RET
HSB2008
	LD	A,$00
	LD	(TILTXD),A
;
	LD	A,(HASRCNT)
	INC	A
	LD	(HASRCNT),A
	CP	$04
	JR	C,HSB2090	;�S�{�󂵂��H
;				;YES !
	CALL	LDTIM0
	LD	(HL),$20
;
		jp	STATINC
;;;;;;;;	CALL	STATINC
;;;;;;;;	RET
HSB2090
	CALL	E5SVST
	JP	E5CLER
;===================================
HSRBRK3
	CALL	LDTIM0
	JR	NZ,HSB3010
;
	LD	(HL),$20
;
	LD	A,PEACH
	LD	(GMMODE),A
;
	XOR	A
	LD	(SBHR),A
	LD	(SBCNT),A
	LD	(ITMODE),A
;
		jp	STATINC
;;;;;;;;	CALL	STATINC
;;;;;;;;	RET
HSB3010
	LD	E,$00
	AND	$04
	JR	Z,HSB3020
;
	LD	E,$02
HSB3020
	LD	A,E
	LD	(TILTXD),A
;
ENPLST
	LD	A,$02
	LD	(PLSTOP),A
	LD	(ENSTTM),A
	RET
;===================================
HSRBRK4
	XOR	A
	LD	(TILTXD),A
;
	CALL	LDTIM0
	JR	NZ,HSB4010
;
	CALL	E5SVST
	LD	HL,WARPSV+6
	SET	2,(HL)
;
		jp	E5CLER
;;;;;;;;	CALL	E5CLER
;;;;;;;;	RET
HSB4010
HSB4020
		jp	ENPLST
;;;;;;;;	CALL	ENPLST
;;;;;;;;	RET
;===================================
HSTILTY
	DB	0,2,4,6
	DB	6,4,2,0
;
HSRBRK5
	XOR	A
	LD	(TILTYD),A
;
	CALL	LDTIM0
	JR	NZ,HSB5010
;
	JP	E5CLER
;
HSB5010
	PUSH	AF
	AND	$07
	LD	E,A
	LD	D,B
	LD	HL,HSTILTY
	ADD	HL,DE
	LD	A,(HL)
	LD	(TILTYD),A
;
	POP	AF
	CP	$20
	JR	NC,HSB5018
;
	AND	$03
	JR	NZ,HSB5018
;
	CALL	HSISISET
	XOR	A
HSB5018	
	CP	$40
	JR	C,HSB5020
	AND	$07
	JR	NZ,HSB5020
;
	LD	HL,SOUND3	;(S)
	LD	(HL),$0C
HSB5020
	RET
;
;===============================================================
;	�����̂a�f�����������ɏo�鉌�n�a�i�Z�b�g
;===============================================================
HSSMOKCD
	DB	$30,$01,$30,$21
	DB	$32,$01,$32,$21
;- - - - - - - - - - - - - - - - - -
HSSMOK
	LD	DE,HSSMOKCD
	CALL	EN2CST
;
	CALL	LDTIM0
	JP	Z,E5CLER
;
	CP	$04
		ret	NZ
;;;;;;;;	JR	NZ,HSSM10
;
	LD	A,$01
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;HSSM10
;;;;;;;;	RET
;===================================
;-------------------------------------
HSISISET
	LD	A,HASIR	;���΃Z�b�g
	CALL	ENIDSHL
	JR	C,HSB2018
;
	LD	HL,ENWRK0
	ADD	HL,DE
	LD	(HL),$02
;
	LD	HL,ENMOD0
	ADD	HL,DE
	LD	(HL),%11010001
;
	LD	HL,ENZPSL
	ADD	HL,DE
	LD	(HL),$70
;
	CALL	RNDSUB
	AND	$3F
	SUB	$20
	LD	HL,WORK0
	ADD	A,(HL)
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A
;
	CALL	RNDSUB
	AND	$3F
	SUB	$20
	LD	HL,WORK1
	ADD	A,(HL)
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),A
HSB2018
	RET
;===================================
HSISHICD
	DB	$16,$03
	DB	$16,$23
ISIBDD
	DB	$18,$10,$0C,$08
ISIXSD
	DB	$0C,$F4,$0C,$F4
ISIYSD
	DB	$F4,$F4,$0C,$0C
;
HSISHI
	LD	A,(ENDSYP)
	ADD	A,$08
	LD	(ENDSYP),A
;
	LD	DE,HSISHICD
	CALL	EN1CST
;
	CALL	E5MVCL
;
	CALL	E5ZCLC
	LD	HL,ENZSPD
	ADD	HL,BC
	DEC	(HL)
	DEC	(HL)
;
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	AND	%10000000
		ret	Z
;;;;;;;;	JR	Z,HSI010
;
	LD	(HL),B
;
	LD	HL,ENSTAT
	ADD	HL,BC
	LD	A,(HL)
	INC	(HL)
	CP	$04
	JP	Z,E5CLER
;
	LD	E,A
	LD	D,B
	LD	HL,ISIBDD
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),A
;
	CALL	RNDSUB
	AND	$03
	LD	E,A
	LD	D,B
	LD	HL,ISIXSD
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
	LD	HL,ISIYSD
	ADD	HL,DE
	LD	A,(HL)
;;;KK;;;	LD	HL,ENYSPD
;;;KK;;;	ADD	HL,BC
	CALL	E5ENYSPD_ADR
	LD	(HL),A
;
	LD	A,E
	AND	$01
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;HSI010
;;;;;;;;	RET
;===================================
;===================================
;===================================
;===================================
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%   ���ɂԂ����                       %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
TAMA0CD
	DB	$4E,$00,$4E,$20
;
TAMA0MV
	LD	A,(ENMODE2)
	CP	ECACH
	JR	NZ,TM0M010
;
	LD	A,(PLMODE)
	CP	KURUD
	JR	NZ,TM0F010
;
	LD	A,$10
	LD	(CACHTM),A
TM0F010
	LD	A,(GRNDPT)
	LD	HL,ENGRPT
	ADD	HL,BC
	LD	(HL),A
;
	LD	HL,ENXPSH
	ADD	HL,BC
	LD	(HL),B
	LD	HL,ENYPSH
	ADD	HL,BC
	LD	(HL),B
;
TM0M010
	LD	DE,TAMA0CD
	CALL	EN2CST
;
	LD	A,(SCRLFG)
	AND	A
	RET	NZ
;;	JR	NZ,TM0M020
;
	LD	A,(GRNDPT)
	LD	(TAMA0PT),A
	LD	A,(ENSVXL)
	LD	(TAMA0XP),A
	LD	A,(ENSVYL)
	LD	(TAMA0YP),A
TM0M020
;;;	LD	HL,MSGEFG
	LD	A,(MSGEFG)
;;;	OR	(HL)
	AND	A
	RET	NZ
;
	LD	A,(ENMODE2)
	CP	EFOLE
	RET	Z
;;	CALL	E5STCK
;
	CALL	ENHNCL
;
	CALL	CRKNENL
;
	CALL	E5MVCL
	CALL	E5ZCLC
;
	LD	HL,ENZSPD
	ADD	HL,BC
	DEC	(HL)
	DEC	(HL)
;
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	LD	(ENHELP2),A
	AND	%10000000
	LD	(ENHELP),A
	JR	Z,TM00000
;
	LD	(HL),B
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	A,(HL)
	SRA	A
	CPL
	CP	$07
	JR	C,TM000F0
;
	PUSH	AF
;
	LD	A,$17
	LD	(SOUND3),A	;(S)
;
	POP	AF
	JR	TM000F1
TM000F0
	XOR	A
TM000F1
	LD	(HL),A
;
	LD	HL,ENXSPD
	ADD	HL,BC
	SRA	(HL)	
;;	SRA	(HL)	
;;;KK;;;	LD	HL,ENYSPD
;;;KK;;;	ADD	HL,BC
	CALL	E5ENYSPD_ADR
	SRA	(HL)	
;;	SRA	(HL)	
TM00000
	LD	HL,ENHNFG
	ADD	HL,BC
	LD	(HL),$03
;
;	LD	E,$00
;	LD	A,(ENSTAT2)
;	CP	$02
;	JR	NZ,TM00002
;;
;	LD	E,$04
;;
;	LD	HL,ENYSPD
;	ADD	HL,BC
;	LD	A,(HL)
;	AND	%10000000
;	JR	NZ,TM00002
;;
;	LD	E,$FC
;TM00002
	LD	E,$03
	LD	A,E
	LD	(ENFLCL),A
;
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	A,(HL)
	ADD	A,E ;$04
	LD	(HL),A
;
	LD	A,(ENSVYL)
	ADD	A,E ;$04
	LD	(ENSVYL),A
;
	CALL	ENBGCKL
;
	LD	A,(ENFLCL)
	LD	E,A
;
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	A,(HL)
	SUB	E ;ADD	A,$FC
	LD	(HL),A
;
	LD	A,(ENSVYL)
	SUB	E ;ADD	A,$FC
	LD	(ENSVYL),A
;
	LD	A,(ENSTAT2)
	RST	00
	DW	TM01000	;�]����
	DW	TM02000	;
	DW	TM03000	;
;================================================
TM01000
	LD	A,(ENHELP2)
	DEC	A
	AND	%10000000
	JR	Z,TM01010
;
	LD	HL,ENYSPD
	CALL	TMSDDW
	LD	HL,ENXSPD
TMSDDW
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,TM01010
;
	AND	%10000000
	JR	Z,TM01008
;
	INC	(HL)
	INC	(HL)
TM01008
	DEC	(HL)
TM01010
	CALL	CRENPSL
	JR	NC,TM01060
;
	LD	A,(POWDRTM)
	AND	A
	JR	NZ,TM01060
;
	LD	A,(ITEMB)
	CP	PBULE
	JR	NZ,TM01020	; Bulesret check !
;
	LD	A,(KEYA2)
	AND	%00100000
	JR	NZ,TM01030
	JR	TM01060
TM01020
	LD	A,(ITEMA)
	CP	PBULE
	JR	NZ,TM01060
;
	LD	A,(KEYA2)
	AND	%00010000
	JR	Z,TM01060
;
TM01030
	LD	A,(WPLCAMD)
	AND	A
	JR	NZ,TM01060
;
	INC	A
	LD	(WPLCAMD),A
;
	LD	A,(ENMODE2)
	CP	ECACH
	JR	Z,TM01060
;
	CALL	STATINC
	LD	(HL),$02
;
	LD	HL,ENMODE
	ADD	HL,BC
	LD	(HL),ECACH
;
	LD	HL,ENCAST
	ADD	HL,BC
	LD	(HL),B
;
	LD	A,(PLCMKI)
	LD	(PLCAMK),A
;
	CALL	LDTIM0
	LD	(HL),$02
;
	LD	HL,SOUND2
	LD	(HL),$02	;(S)
TM01060
	RET
;================================================
TM02000
	RET
;================================================
TM03000
	LD	A,(ENHELP)
	AND	A
	JR	NZ,TM03010
;
	LD	HL,ENCBFG
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,TM03020
;---------------------------------
TMBND
	LD	A,$07
	LD	(SOUND1),A	;(S)
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	A,(HL)
	CPL
	INC	A
	SRA	A
	LD	(HL),A
;
;;;KK;;;	LD	HL,ENYSPD
;;;KK;;;	ADD	HL,BC
	CALL	E5ENYSPD_ADR
	LD	A,(HL)
	CPL
	INC	A
	SRA	A
	LD	(HL),A
TM03010
	LD	HL,ENSHMK
	ADD	HL,BC
	LD	(HL),%11111111	;�i���`�F�b�N�����I
;
	CALL	STATINC
	LD	(HL),B
	RET
; - - - - - - - - - - - - - - - - - - - - -
TM03020
	CALL	E5STCK
;
	LD	A,$0B
	LD	(ATCKNO),A
	CALL	CRENENL
;
	LD	E,ENNO-1
	LD	D,B
TM03050
	LD	HL,ENMODE
	ADD	HL,DE
	LD	A,(HL)
	AND	A
	JR	Z,TM03060
;
	LD	HL,ENMYNO
	ADD	HL,DE
	LD	A,(HL)
	CP	HASIR
	JR	NZ,TM03060
;
	PUSH	DE
	CALL	CRTMHS
	POP	DE
TM03060
	DEC	E
	LD	A,E
	CP	$FF
	JR	NZ,TM03050
	RET
;--------------------------------------
CRTMHS
	CALL	LDTIM0
	JR	NZ,CRTH90
;
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	A,(ENSVXL)
	SUB	(HL)
	ADD	A,$10
	CP	$20
	JR	NC,CRTH10
;
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	A,(ENDSYP)
	SUB	(HL)
	ADD	A,$0C+$0C
	CP	$28
	JR	NC,CRTH10
;
	CALL	TMBND
;
;;	LD	A,$07
;;	LD	(SOUND1),A	;(S)
	LD	A,$25
	LD	(SOUND3),A	;(S)
	LD	A,$0B
	LD	(SOUND1),A	;(S)
;
	CALL	LDTIM0
	LD	(HL),$10
;
	LD	HL,ENSTAT
	ADD	HL,DE
	LD	A,(HL)
	AND	A
	JR	NZ,CRTH10
;
	INC	(HL)
;
	LD	HL,ENTIM0
	ADD	HL,DE
	LD	(HL),$50
;
;	PUSH	BC
;	PUSH	DE
;	POP	BC
;;
;	CALL	ISIBRKL
;;
;	CALL	E5SVST
;
;	POP	BC
CRTH10
CRTH90
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%   �V�����t�g                           %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
LIFTTCD
	DB	$50,$07,$50,$27
;
LIFTTMV
	LD	DE,LIFTTCD
	CALL	EN2CST
;
	CALL	E5STCK
;
	CALL	LFMVSB
;
	LD	HL,ENWRK2
	ADD	HL,BC
	LD	A,(HL)	
	LD	E,A
	AND	A
	JR	NZ,LFT002	;�y�A�[����̗́I
;
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	A,(HL)	
	AND	A
	JR	Z,LFT010	;�����ɍڂ�ꂽ!
;
	CALL	LFTTCK
;
	LD	HL,ENWRK2
	ADD	HL,DE
	LD	(HL),$F0	;�y�A�[�ɍ�p�I
;
	LD	E,$10
LFT002
	LD	A,(FRCNT)
	AND	$01
	JR	NZ,LFT00C
;
;;;KK;;;	LD	HL,ENYSPD
;;;KK;;;	ADD	HL,BC
	CALL	E5ENYSPD_ADR
	LD	A,(HL)
	SUB	E	;$10
	JR	Z,LFT00C
	AND	%10000000
	JR	Z,LFT008
;
	INC	(HL)
	INC	(HL)
LFT008	
	DEC	(HL)
LFT00C	
	LD	HL,ENMOD1
	ADD	HL,BC
	LD	(HL),%00000010
;
;;;KK;;;	LD	HL,ENYSPD
;;;KK;;;	ADD	HL,BC
	CALL	E5ENYSPD_ADR
	LD	A,(HL)
	PUSH	HL
	PUSH	AF
	LD	(HL),E
;
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	A,(HL)
	PUSH	HL
	PUSH	AF
	CALL	ENBGCKL
	POP	AF
	POP	HL
	LD	(HL),A
;
	POP	AF
	POP	HL
	LD	(HL),A
;
	LD	HL,ENMOD1
	ADD	HL,BC
	LD	(HL),%00110000
;
	LD	HL,ENCBFG
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,LFT00E	;BG ���������H
;				;YES !
;;;KK;;;	LD	HL,ENYSPD
;;;KK;;;	ADD	HL,BC
	CALL	E5ENYSPD_ADR
	LD	(HL),B
;
	CALL	LFTTCK
	LD	HL,ENYSPD
	ADD	HL,DE
	LD	(HL),$00	;�y�A�[���Î~�I
LFT00E
	JR	LFT050
;----------------------------------------
LFT010
;;;KK;;;	LD	HL,ENYSPD
;;;KK;;;	ADD	HL,BC
	CALL	E5ENYSPD_ADR
	LD	A,(HL)
	AND	A
	JR	Z,LFT030
;
	AND	%10000000
	JR	Z,LFT028
;
	INC	(HL)
	INC	(HL)
LFT028
	DEC	(HL)
LFT030
	CALL	LFTTCK
;
	LD	HL,ENWRK2
	ADD	HL,DE
	LD	(HL),$00	;�y�A�[�������I
;- - - �� �������� - - - - -
LFT050
	LD	A,(ENSVYL)
	AND	$0F
	CP	$00
	JR	NZ,LFTB090
;
	LD	A,(ENSVYL)
	SUB	$10
	LD	(OBJYP),A
;
	AND	$F0
	LD	E,A
;
	LD	A,(ENSVXL)
	SUB	$08
	LD	(OBJXP),A
	SWAP	A
	AND	$0F
	OR	E
	LD	E,A
	LD	D,B
;
;;;KK;;;	LD	HL,ENYSPD
;;;KK;;;	ADD	HL,BC
	CALL	E5ENYSPD_ADR
	LD	A,(HL)
	AND	A
	JR	Z,LFTB090
	AND	%10000000
	JR	NZ,LFTB010
;------------------------------------
	LD	HL,BGUNDT+$11
	ADD	HL,DE
	LD	(HL),DYCHN   ;�`�F�[��
;
	CALL	OBJBG
;
		LD	A,(CGBFLG)
		AND	A
		JR	Z,LFTB090_PASS
		PUSH	BC
		LD	A,DYCHN
		LD	(UNTATR),A
		LD	A,$07
		CALL	BG1UNIT_ATR_SUB
		POP	BC
LFTB090_PASS
;
	LD	HL,VRAMD+1
	LD	A,(VRAMD)
	LD	E,A
	ADD	A,10
	LD	(VRAMD),A
	LD	D,$00
;
	ADD	HL,DE
;
	LD	A,(VRAMH)
	LD	(HLI),A
	LD	A,(VRAML)
	LD	(HLI),A
	LD	A,$81
	LD	(HLI),A
	LD	A,$44
	LD	(HLI),A
	LD	A,$54
	LD	(HLI),A
;
	LD	A,(VRAMH)
	LD	(HLI),A
	LD	A,(VRAML)
	INC	A
	LD	(HLI),A
	LD	A,$81
	LD	(HLI),A
	LD	A,$45
	LD	(HLI),A
	LD	A,$55
	LD	(HLI),A
	LD	(HL),B	
LFTB090
	RET
;------------------------------------
LFTB010
	LD	HL,BGUNDT+$11
	ADD	HL,DE
	LD	(HL),DBET4   ;���x�^
;
	CALL	OBJBG
;
		LD	A,(CGBFLG)
		AND	A
		JR	Z,LFTB010_PASS
		PUSH	BC
		LD	A,DBET4
		LD	(UNTATR),A
		LD	A,$07
		CALL	BG1UNIT_ATR_SUB
		POP	BC
LFTB010_PASS
;
	LD	HL,VRAMD+1
	LD	A,(VRAMD)
	LD	E,A
	ADD	A,10
	LD	(VRAMD),A
	LD	D,$00
;
	ADD	HL,DE
;
	LD	A,(VRAMH)
	LD	(HLI),A
	LD	A,(VRAML)
	LD	(HLI),A
	LD	A,$81
	LD	(HLI),A
	LD	A,$7E
	LD	(HLI),A
	LD	A,$7E
	LD	(HLI),A
;
	LD	A,(VRAMH)
	LD	(HLI),A
	LD	A,(VRAML)
	INC	A
	LD	(HLI),A
	LD	A,$81
	LD	(HLI),A
	LD	A,$7E
	LD	(HLI),A
	LD	A,$7E
	LD	(HLI),A
	LD	(HL),B	
	RET
;====================================
LFTTCK
	LD	HL,ENJYUN
	ADD	HL,BC
	LD	A,(HL)
	XOR	$01
	LD	(WORK0),A
;
	LD	E,B
	LD	D,B
;
LFTTC10
	LD	HL,ENMODE
	ADD	HL,DE
	LD	A,(HL)
	AND	A
	JR	Z,LFTTC08
;
	LD	HL,ENMYNO
	ADD	HL,DE
	LD	A,(HL)
	CP	LIFTT
	JR	NZ,LFTTC08
;
	LD	HL,ENJYUN
	ADD	HL,DE
	LD	A,(WORK0)
	CP	(HL)
	JR	Z,LFTTC20
LFTTC08
	INC	E
	LD	A,E
	CP	ENNO
	JR	NZ,LFTTC10
;
LFTTC20
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%   ���t�g                               %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
LIFTCD
	DB	$00,$00,$50,$07
	DB	$00,$08,$52,$07
	DB	$00,$10,$52,$27
	DB	$00,$18,$50,$27
;- - - - - - - - - - - - - - - - - - -
LIFTXMV
LIFTYMV
	LD	HL,LIFTCD
;
	LD	C,$04
	CALL	ENOMST
;
	CALL	E5STCK
;
	CALL	LDTIM0
	LD	E,A
;
	LD	HL,ENCONT
	ADD	HL,BC
	INC	(HL)
	LD	A,(HL)
	AND	$03
	OR	E
	JR	NZ,LFXM10
;
	LD	A,(ENMYNO2)
	CP	LIFTY
	JP	Z,LFYMV
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	E,(HL)
	LD	D,B
;
	LD	HL,LFXSAD
	ADD	HL,DE
	LD	A,(HL)
;
	LD	HL,ENXSPD
	ADD	HL,BC
	ADD	A,(HL)		
	LD	(HL),A
;
	LD	HL,LFXSLM
	ADD	HL,DE
	CP	(HL)
	JR	NZ,LFXM10
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	XOR	$01
	LD	(HL),A
;
	CALL	LDTIM0
	LD	(HL),$6A
LFXM10
;-------------------------------------
LFMVSB
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	(HL),B
;
	LD	A,(ENSVXL)
	PUSH	AF
	CALL	E5MVCL
	POP	AF
	LD	E,A
	LD	HL,ENXPSL
	ADD	HL,BC
	LD	A,(HL)
	SUB	E
	LD	(ENHELP),A
;
	CALL	ENBGCKL
;
	CALL	CRENPSL
	JR	NC,LFXM90
;
	LD	A,(PLYSPD)
	AND	%10000000
	JR	NZ,LFXM90
;
	CALL	E5YCHK
	ADD	A,$08
;;	CP	$E0
;;	JR	C,LFXM90
	BIT	7,A
	JR	Z,LFXM90
;
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	A,(HL)
	SUB	$10
	LD	(PLYPSL),A
;
	LD	A,(PLXSPD)
	PUSH	AF
;
	LD	A,(ENHELP)
	LD	(PLXSPD),A
;
	LD	HL,PLXPSL
	ADD	A,(HL)
	LD	(HL),A
;
	PUSH	BC
	CALL	PLBGCKL
	POP	BC
;
	POP	AF
	LD	(PLXSPD),A
;
;
;
;
;
;;	XOR	A
;;	LD	(PLJPFG),A
	LD	A,$02
	LD	(PLYSPD),A
;
	LD	A,$01
	LD	(ONLFFG),A
;
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	(HL),$10	; Speed !
LFXM90
	RET
;======================================
LFXSAD
	DB	$01,$FF
LFXSLM
	DB	$06,$FA
;- - - - - - - - - - - - - - - -
LFYMV
;	LD	HL,ENCONT
;	ADD	HL,BC
;	LD	A,(HL)
;	AND	$07
;	JR	NZ,LFYM10
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	E,(HL)
	LD	D,B
;
	LD	HL,LFXSAD
	ADD	HL,DE
	LD	A,(HL)
;
;;;KK;;;	LD	HL,ENYSPD
;;;KK;;;	ADD	HL,BC
	CALL	E5ENYSPD_ADR
	ADD	A,(HL)		
	LD	(HL),A
;
	LD	HL,LFXSLM
	ADD	HL,DE
	CP	(HL)
	JR	NZ,LFYM10
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	XOR	$01
	LD	(HL),A
;
	CALL	LDTIM0
	LD	(HL),$6A
LFYM10
	JP	LFMVSB
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%   ���t�g�ڂ����痎����I               %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
LIFTDCD
;0
	DB	$00,$00,$50,$07
	DB	$00,$08,$52,$07
	DB	$00,$10,$52,$27
	DB	$00,$18,$50,$27
;- - - - - - - - - - - - - - - - - - -
LIFTDMV
	CALL	LDTIM1
	JR	Z,LFDM10
;
	LD	A,$04
	LD	(ENCHNO),A
LFDM10
	LD	HL,LIFTDCD
	LD	C,$04
	CALL	ENOMST
;
	CALL	E5STCK
;
	CALL	LFMVSB
;
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	A,(HL)	
	AND	A
	JR	Z,LFD010	;�ڂ����H
;
	LD	E,$04
;
	LD	A,(GRNDPT)
	CP	$3B
	JR	Z,LFDSSS
;
	CALL	LDTIM1
	LD	(HL),$08
;
	LD	A,(WPLCAMD)
	AND	A
	JR	Z,LFD010
;
	LD	E,$04
;
LFDSSS
	LD	HL,ENWRK3
	ADD	HL,BC
	LD	A,(HL)
	CP	$04
	JR	Z,LFDSSS2
	INC	(HL)
	CP	$03
	JR	NZ,LFDSSS2
;
	LD	A,$11
	LD	(SOUND3),A	;(S)
LFDSSS2
	LD	A,(FRCNT)
	AND	$03
	JR	NZ,LFD008
;
;;;KK;;;	LD	HL,ENYSPD
;;;KK;;;	ADD	HL,BC
	CALL	E5ENYSPD_ADR
	LD	A,(HL)
	SUB	E  ;$04
	AND	%10000000
	JR	Z,LFD008
;
	INC	(HL)
LFD008	
	RET
LFD010
;;;KK;;;	LD	HL,ENYSPD
;;;KK;;;	ADD	HL,BC
	CALL	E5ENYSPD_ADR
	LD	(HL),B
	LD	HL,ENWRK3
	ADD	HL,BC
	LD	(HL),B
	RET
;
;;;KK;;;;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;;;KK;;;;%   �p�b�N�� ��                          %
;;;KK;;;;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;;;KK;;;PACKNMV
;;;KK;;;	LD	HL,ENHNXS
;;;KK;;;	ADD	HL,BC
;;;KK;;;	LD	(HL),B
;;;KK;;;	LD	HL,ENHNYS
;;;KK;;;	ADD	HL,BC
;;;KK;;;	LD	(HL),B
;;;KK;;;;
;;;KK;;;	CALL	PACKNCS
;;;KK;;;;
;;;KK;;;	CALL	E5STCK
;;;KK;;;;
;;;KK;;;	LD	HL,ENWRK1
;;;KK;;;	ADD	HL,BC
;;;KK;;;	LD	A,(HL)
;;;KK;;;	AND	A
;;;KK;;;	JR	NZ,PAC0010
;;;KK;;;;
;;;KK;;;	INC	(HL)
;;;KK;;;;
;;;KK;;;	LD	A,(ENSVYL)
;;;KK;;;	LD	HL,ENWRK0
;;;KK;;;	ADD	HL,BC
;;;KK;;;	LD	(HL),A
;;;KK;;;PAC0010
;;;KK;;;	CALL	E5HNSB
;;;KK;;;;
;;;KK;;;	LD	A,(ENSTAT2)
;;;KK;;;	RST	00
;;;KK;;;	DW	PAC1000	;�Î~
;;;KK;;;	DW	PAC2000	;�㏸�I
;;;KK;;;	DW	PAC3000	;�Î~
;;;KK;;;	DW	PAC4000	;���~�I
;;;KK;;;;----------------------------------------
;;;KK;;;PAC1000
;;;KK;;;	CALL	LDTIM0
;;;KK;;;	JR	NZ,PAC1090
;;;KK;;;;
;;;KK;;;	LD	(HL),$40
;;;KK;;;;
;;;KK;;;	CALL	E5XCHK
;;;KK;;;	ADD	A,$10
;;;KK;;;	CP	$20
;;;KK;;;	JR	C,PAC1090	;�ڋ߃`�F�b�N�I
;;;KK;;;;
;;;KK;;;	CALL	STATINC
;;;KK;;;PAC1090
;;;KK;;;	RET
;;;KK;;;;----------------------------------------
;;;KK;;;PACCDD
;;;KK;;;	DB	$04,$04,$03,$02,$01,$00,$00,$00
;;;KK;;;PACADD
;;;KK;;;	DB	$E0,$E0,$E8,$F0,$00,$00,$00,$00
;;;KK;;;;
;;;KK;;;PAC2000
;;;KK;;;	CALL	CREPKEL
;;;KK;;;;
;;;KK;;;	CALL	LDTIM0
;;;KK;;;	JR	NZ,PAC2010
;;;KK;;;;
;;;KK;;;	LD	(HL),$80
;;;KK;;;;
;;;KK;;;	CALL	STATINC
;;;KK;;;	RET
;;;KK;;;PAC2010
;;;KK;;;	RRA
;;;KK;;;	RRA	
;;;KK;;;	RRA	
;;;KK;;;	AND	$07
;;;KK;;;	LD	E,A
;;;KK;;;	LD	D,B
;;;KK;;;	LD	HL,PACCDD
;;;KK;;;	ADD	HL,DE
;;;KK;;;	LD	A,(HL)
;;;KK;;;	CALL	ENPTST
;;;KK;;;;
;;;KK;;;	LD	HL,PACADD
;;;KK;;;	ADD	HL,DE
;;;KK;;;	LD	A,(HL)
;;;KK;;;	LD	HL,ENWRK0
;;;KK;;;	ADD	HL,BC
;;;KK;;;	ADD	A,(HL)
;;;KK;;;	LD	HL,ENYPSL
;;;KK;;;	ADD	HL,BC
;;;KK;;;	LD	(HL),A
;;;KK;;;PAC2020
;;;KK;;;	RET
;;;KK;;;;----------------------------------------
;;;KK;;;PAC3000
;;;KK;;;	CALL	CREPKEL
;;;KK;;;;
;;;KK;;;	CALL	LDTIM0
;;;KK;;;	JR	NZ,PAC3090
;;;KK;;;;
;;;KK;;;	LD	(HL),$40
;;;KK;;;;
;;;KK;;;	CALL	STATINC
;;;KK;;;PAC3090
;;;KK;;;	LD	E,$04
;;;KK;;;	AND	%00010000
;;;KK;;;	JR	NZ,PAC30A0
;;;KK;;;	INC	E
;;;KK;;;PAC30A0
;;;KK;;;	LD	A,E
;;;KK;;;	CALL	ENPTST
;;;KK;;;	RET
;;;KK;;;;----------------------------------------
;;;KK;;;PACCDD2
;;;KK;;;	DB	$00,$00,$00,$00,$01,$02,$03,$05
;;;KK;;;PACADD2
;;;KK;;;	DB	$00,$00,$00,$00,$00,$F0,$E8,$E0
;;;KK;;;;
;;;KK;;;PAC4000
;;;KK;;;	CALL	CREPKEL
;;;KK;;;;
;;;KK;;;	CALL	LDTIM0
;;;KK;;;	JR	NZ,PAC4010
;;;KK;;;;
;;;KK;;;	LD	(HL),$40
;;;KK;;;;
;;;KK;;;	CALL	STATINC
;;;KK;;;	LD	(HL),B
;;;KK;;;	RET
;;;KK;;;PAC4010
;;;KK;;;	RRA
;;;KK;;;	RRA	
;;;KK;;;	RRA	
;;;KK;;;	AND	$07
;;;KK;;;	LD	E,A
;;;KK;;;	LD	D,B
;;;KK;;;	LD	HL,PACCDD2
;;;KK;;;	ADD	HL,DE
;;;KK;;;	LD	A,(HL)
;;;KK;;;	CALL	ENPTST
;;;KK;;;;
;;;KK;;;	LD	HL,PACADD2
;;;KK;;;	ADD	HL,DE
;;;KK;;;	LD	A,(HL)
;;;KK;;;	LD	HL,ENWRK0
;;;KK;;;	ADD	HL,BC
;;;KK;;;	ADD	A,(HL)
;;;KK;;;	LD	HL,ENYPSL
;;;KK;;;	ADD	HL,BC
;;;KK;;;	LD	(HL),A
;;;KK;;;	RET
;;;KK;;;;=======================================
;;;KK;;;PACKNCD
;;;KK;;;;0
;;;KK;;;	DB	$FF,$FF,$FF,$FF
;;;KK;;;	DB	$FF,$FF,$FF,$FF
;;;KK;;;	DB	$FF,$FF,$FF,$FF
;;;KK;;;	DB	$FF,$FF,$FF,$FF
;;;KK;;;;1
;;;KK;;;	DB	$F0,$00,$74,$02
;;;KK;;;	DB	$F0,$08,$74,$22
;;;KK;;;	DB	$FF,$FF,$FF,$FF
;;;KK;;;	DB	$FF,$FF,$FF,$FF
;;;KK;;;;2
;;;KK;;;	DB	$00,$00,$70,$02
;;;KK;;;	DB	$00,$08,$70,$22
;;;KK;;;	DB	$FF,$FF,$FF,$FF
;;;KK;;;	DB	$FF,$FF,$FF,$FF
;;;KK;;;;3
;;;KK;;;	DB	$00,$00,$70,$02
;;;KK;;;	DB	$00,$08,$70,$22
;;;KK;;;;;;KK;;;	DB	$F8,$00,$74,$02
;;;KK;;;;;;KK;;;	DB	$F8,$08,$74,$22
;;;KK;;;	DB	$08,$00,$76,$00
;;;KK;;;	DB	$08,$08,$76,$20
;;;KK;;;;4
;;;KK;;;	DB	$00,$00,$70,$02
;;;KK;;;	DB	$00,$08,$70,$22
;;;KK;;;	DB	$10,$00,$72,$00
;;;KK;;;	DB	$10,$08,$72,$20
;;;KK;;;;5
;;;KK;;;	DB	$00,$00,$78,$02
;;;KK;;;	DB	$00,$08,$78,$22
;;;KK;;;	DB	$10,$00,$72,$00
;;;KK;;;	DB	$10,$08,$72,$20
;;;KK;;;;- - - - - - - - - - - - - - - - - -
;;;KK;;;PACKNCS
;;;KK;;;	LD	A,(ENCHPT2)
;;;KK;;;	RLA
;;;KK;;;	RLA
;;;KK;;;	RLA
;;;KK;;;	RLA
;;;KK;;;	AND	%11110000
;;;KK;;;	LD	E,A
;;;KK;;;	LD	D,B
;;;KK;;;	LD	HL,PACKNCD
;;;KK;;;	ADD	HL,DE
;;;KK;;;;
;;;KK;;;	LD	C,$04
;;;KK;;;	CALL	ENOMST
;;;KK;;;	RET
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%   �_���W�����N���A�[�f��BG���������I   %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
DJSBAD
;0
	DB	$98,$00,$53,$7F
	DB	$98,$20,$53,$7F
;1
	DB	$98,$40,$53,$7F
	DB	$98,$60,$53,$7F
;2
	DB	$98,$80,$53,$7F
	DB	$98,$A0,$53,$7F
;3
	DB	$98,$C0,$53,$7F
	DB	$98,$E0,$53,$7F
;4
	DB	$99,$00,$53,$7F
	DB	$99,$20,$53,$7F
;5
	DB	$99,$40,$53,$7F
	DB	$99,$60,$53,$7F
;6
	DB	$99,$80,$53,$7F
	DB	$99,$A0,$53,$7F
;7
	DB	$99,$C0,$53,$7F
	DB	$99,$E0,$53,$7F
;8
	DB	$9A,$00,$53,$7F
	DB	$9A,$20,$53,$7F
;	
DJSBAD_AT
;0
	DB	$98,$00,$53,$01
	DB	$98,$20,$53,$01
;1
	DB	$98,$40,$53,$01
	DB	$98,$60,$53,$01
;2
	DB	$98,$80,$53,$01
	DB	$98,$A0,$53,$01
;3
	DB	$98,$C0,$53,$01
	DB	$98,$E0,$53,$01
;4
	DB	$99,$00,$53,$01
	DB	$99,$20,$53,$01
;5
	DB	$99,$40,$53,$01
	DB	$99,$60,$53,$01
;6
	DB	$99,$80,$53,$01
	DB	$99,$A0,$53,$01
;7
	DB	$99,$C0,$53,$01
	DB	$99,$E0,$53,$01
;8
	DB	$9A,$00,$53,$01
	DB	$9A,$20,$53,$01
;	
DJCLRSB
	XOR	A
	LD	(SCCH),A
	LD	(SCCV),A
	LD	(SCVRML),A
	LD	(SCVRMH),A
;
	LD	HL,LCDCB
	RES	5,(HL)		;Window clear !
;
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	CP	$09
	JR	Z,DJSB90
;
	LD	A,(VRAMD)
	LD	E,A
	ADD	A,$08
	LD	(VRAMD),A
	LD	D,B
;
	PUSH	BC
;
	LD	HL,ENCONT
	ADD	HL,BC
	LD	C,(HL)
;;;CGB;;;	INC	(HL)
;
	SLA	C
	SLA	C
	SLA	C
	LD	HL,DJSBAD
	ADD	HL,BC
		ld	c,l
		ld	b,h
;;10/31;	PUSH	HL
;;10/31;	POP	BC
;
	LD	HL,VRAMD+1
	ADD	HL,DE
;
	LD	E,$08
DJSB10
	LD	A,(BC)
	INC	BC
	LD	(HLI),A
	DEC	E
	JR	NZ,DJSB10
;
;;;KK;;;	LD	(HL),B
	LD	(HL),$000		;�Ђ��`�I�悭�����Ă��ȁ`�I
;
;---------------------------------------
		LD	A,(CGBFLG)
		AND	A
		JR	Z,DJSB10_900
		POP	BC
		LD	A,(VRAMD_AT)
		LD	E,A
		ADD	A,$08
		LD	(VRAMD_AT),A
		LD	D,B
;
		PUSH	BC
;
		LD	HL,ENCONT
		ADD	HL,BC
		LD	C,(HL)
;
		SLA	C
		SLA	C
		SLA	C
		LD	HL,DJSBAD
		ADD	HL,BC
			ld	c,l
			ld	b,h
;;10/31;		PUSH	HL
;;10/31;		POP	BC
;
		LD	HL,VRAMD_AT+1
		ADD	HL,DE
;
		LD	E,$08
DJSB10_500
		LD	A,(BC)
		INC	BC
		LD	(HLI),A
		DEC	E
		JR	NZ,DJSB10_500
;
		LD	(HL),$000
DJSB10_900
;---------------------------------------
;
	POP	BC
	LD	HL,ENCONT
	ADD	HL,BC
	INC	(HL)
	RET
DJSB90
	CALL	LDTIM0
	RET	NZ
;
	LD	A,(DNJNNO)
	ADD	A,$50
	CALL	MSGCH2
;
	LD	A,$E4
	LD	(BGPFG),A
;
;---------------------------------------
		LD	A,(CGBFLG)
		AND	A
		JR	Z,DJSB90_900
		LD	DE,CGWORK+$008
		LD	HL,SVBK
		DI
DJSB90_200
		LD	(HL),$002	;���b�Z�[�W��
		LD	A,(DE)		;�\�����邽�߂�
		LD	(HL),$000	;�a�f�̃J���[��
		LD	(DE),A		;�ăZ�b�g
		INC	DE		;
		LD	A,E		;
		AND	$007		;
		JR	NZ,DJSB90_200	;
		LD	A,BGCOL_BITFG	;
		LD	(CGDMAF),A	; �]���t���O�Z�b�g
		EI
DJSB90_900
;---------------------------------------
;
	JP	E5CLER
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�N���{��	              	  %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
KURI0CD
	DB	$4A,$02,$4C,$02
	DB	$4C,$22,$4A,$22
	DB	$4E,$02,$4E,$22
KURI0MV
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JP	NZ,DJCLRSB	;�_���W�����N���A�[�f��BG���������I
;
	LD	DE,KURI0CD
	CALL	EN2CST
;
	CALL	E5STCK
;
	CALL	E5HNSB
;
	LD	A,(YKFLAG)
	AND	A
	JP	NZ,KURI0MV2	;�悱���?
;
	LD	A,(ENSTAT2)
	RST	00
	DW	KRO1000
	DW	KRO2000
	DW	KRO3000	;���܂�I
;====================================
KR0XSD
	DB	$08,$F8,$00,$00
KR0YSD
	DB	$00,$00,$F8,$08
;- - - - - - - - - - - - - - - - - - -
KRO1000
	CALL	CRKNENL
	CALL	CRKRPL
;
	CALL	LDTIM0
	JR	NZ,KRO1010
;
	CALL	RNDSUB
	AND	$3F
	ADD	A,$30
	LD	(HL),A
;
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	INC	A
	LD	(HL),A
	CP	$04
	JR	NZ,KRO1008
;
	LD	(HL),B
;
	CALL	E5XYCK
	JR	KRO100A
;
KRO1008
	CALL	RNDSUB
	AND	$03
	LD	E,A
KRO100A
	LD	D,B
	LD	HL,KR0XSD
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
	LD	HL,KR0YSD
	ADD	HL,DE
	LD	A,(HL)
;;;KK;;;	LD	HL,ENYSPD
;;;KK;;;	ADD	HL,BC
	CALL	E5ENYSPD_ADR
	LD	(HL),A
;
	CALL	STATINC
KRO1010
	JR	KURPTST
;====================================
KRO2000
	CALL	CRKNENL
	CALL	CRKRPL
;
	CALL	LDTIM0
	JR	NZ,KRO2010
;
	LD	(HL),$20
;
	CALL	STATINC
	LD	(HL),B
KRO2010
	CALL	E5MVCL
	CALL	ENBGCKL
;===================================
KURPTST
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	RRA
	AND	$01
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;	RET
;====================================
KRO3000
	LD	HL,ENMOD0
	ADD	HL,BC
	LD	(HL),%11000010
;
	CALL	LDTIM0
	JR	NZ,KRO3010
;
;	CALL	E5CLER
;
	LD	HL,ENITMF
	ADD	HL,BC
	LD	(HL),HART1
;
	LD	HL,ENTIM4
	ADD	HL,BC
	LD	(HL),$0C
;
	LD	HL,ENMODE
	ADD	HL,BC
	LD	(HL),EFAIL
;
	LD	HL,ENMOD0
	ADD	HL,BC
	LD	(HL),$04
;
;;	LD	HL,SOUND3	;(S)
;;	LD	(HL),$13
KRO3010
	LD	A,$02
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;	RET
;=========================================
KURI0MV2
	LD	A,(ENSTAT2)
	CP	$02
	JR	Z,KRO3000
;
	CALL	CRKNENL
	CALL	CRKRPL2
;
	LD	A,(ENSTAT2)
	RST	00
	DW	KR2M1000
	DW	KR2M2000
;--------------------------------
KR2M1000
	CALL	E5XCHK
	LD	A,$08
	DEC	E
	JR	NZ,KR2M1010
	LD	A,$F8
KR2M1010
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
;
	JP	STATINC
;--------------------------------
KR2M2000
	CALL	E5MVCL
;
;;;KK;;;	LD	HL,ENYSPD
;;;KK;;;	ADD	HL,BC
	CALL	E5ENYSPD_ADR
	INC	(HL)
	INC	(HL)
;
	CALL	ENBGCKL
;
	LD	HL,ENCBFG
	ADD	HL,BC
	LD	A,(HL)
	AND	$03
	JR	Z,KR2M2008
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	A,(HL)
	CPL
	INC	A
	LD	(HL),A
KR2M2008
	LD	HL,ENCBFG
	ADD	HL,BC
	LD	A,(HL)
	AND	%00001000
	JR	Z,KR20010
;
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	A,(HL)
	AND	$F0
	ADD	A,$03
	LD	(HL),A
;
;;;KK;;;	LD	HL,ENYSPD
;;;KK;;;	ADD	HL,BC
	CALL	E5ENYSPD_ADR
	LD	(HL),B
	JP	KURPTST
KR20010
	XOR	A
	JP  	ENPTST	
;
;======================================
CRKRPL
	LD	A,(PLZPSL)
	AND	A
	JP	Z,CRENPSL
;
	CP	$08
	JP	C,CRENPSL
	RET
;======================================
CRKRPL2
	JP	CRENPSL
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�s�[�n�b�g	            	  %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
PIHATCD
	DB	$40,$02,$40,$22
	DB	$42,$02,$42,$22
PIHATMV
	LD	DE,PIHATCD
	CALL	EN2CST
;
	CALL	E5STCK
;
	CALL	E5HNSB
;
	CALL	CREPKEL
;
	CALL	E5MVCL
	CALL	E5ZCLC
	CALL	ENBGCKL
;
	LD	HL,ENMOD1
	ADD	HL,BC
	SET	7,(HL)	;���풵�˕Ԃ�I
	LD	HL,ENMOD3
	ADD	HL,BC
	SET	6,(HL)	;�������蒵�˕Ԃ�I
;
	LD	A,(ENSTAT2)
	RST	00
	DW	PIH0000
	DW	PIH1000
	DW	PIH2000
;=================================
PIH0000
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,PIH000C
;
	LD	A,(FRCNT)
	AND	$07
	JR	NZ,PIH000D
;
	DEC	(HL)
	JR	PIH000D
PIH000C
	LD	HL,ENMOD1
	ADD	HL,BC
	RES	7,(HL)	;����OK�I
	LD	HL,ENMOD3
	ADD	HL,BC
	RES	6,(HL)	;��������OK!
PIH000D
	LD	A,(FRCNT)
	AND	$07
	JR	NZ,PIH0030
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,PIH0010
;
	AND	%10000000
	JR	Z,PIH000E
	INC	(HL)
	INC	(HL)
PIH000E
	DEC	(HL)
PIH0010
;;;KK;;;	LD	HL,ENYSPD
;;;KK;;;	ADD	HL,BC
	CALL	E5ENYSPD_ADR
	LD	A,(HL)
	AND	A
	JR	Z,PIH0030
;
	AND	%10000000
	JR	Z,PIH0020
	INC	(HL)
	INC	(HL)
PIH0020
	DEC	(HL)
PIH0030
;;	CALL	LDTIM0
;	LD	HL,ENTIM3
;	ADD	HL,BC
;	LD	A,(HL)
;	AND	A
	CALL	LDTIM3
	JR	NZ,PIH0060
;
	CALL	STATINC
PIH0060
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,PIH0070
;
	LD	A,(FRCNT)
	AND	$1F
;;	AND	$0F
	JR	NZ,PIH0070
;
	DEC	(HL)
PIH0070
	JP	PHPTST
;;	RET
;=================================
PIH1000
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	CP	$08
	JR	C,PIH1008
;
;;	CALL	LDTIM0
;	LD	HL,ENTIM3
;	ADD	HL,BC
	CALL	LDTIM3
	CALL	RNDSUB
	AND	$1F
	ADD	A,$80
	LD	(HL),A
;
	JP  	STATINC
PIH1008
	LD	A,(FRCNT)
	AND	$0F
	JR	NZ,PIH1010
;
	INC	(HL)
PIH1010
;;;;;	RET
PHPTST
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENCONT
	ADD	HL,BC
	ADD	A,(HL)
	LD	(HL),A
;
	RRA
	RRA
	RRA
	RRA
	RRA
	AND	$01
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;	RET
;=================================
PHYSPD
	DB	$00,$05,$0A,$0D
PHXSPD
	DB	$0E,$0D,$0A,$05
	DB	$00,$FB,$F6,$F3
	DB	$F2,$F3,$F6,$FB
	DB	$00,$05,$0A,$0D
;- - - - - - - - - - - - - -
PIH2000
	CALL	PHPTST
;
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	CP	$10
	JR	Z,PIH2020
;
	LD	A,(FRCNT)
	AND	$07
	JR	NZ,PIH2010
;
	INC	(HL)
PIH2010
	RET
PIH2020
;;	CALL	LDTIM0
;	LD	HL,ENTIM3
;	ADD	HL,BC
;	LD	A,(HL)
;	AND	A
	CALL	LDTIM3
	JR	NZ,PIH2030
;
	LD	(HL),$60
;
	CALL	STATINC
	LD	(HL),B
PIH2030
	LD	HL,ENWRK2
	ADD	HL,BC
	INC	(HL)
	LD	A,(HL)
	CP	$18
	JR	C,PH2090
;
	LD	(HL),B	
;
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENWRK3
	ADD	HL,BC
	ADD	A,(HL)
	AND	$0F
	LD	(HL),A
;
	LD	HL,ENWRK3
	ADD	HL,BC
	LD	E,(HL)
	LD	D,B ;$0
;
	LD	HL,PHYSPD
	ADD	HL,DE
;
	LD	A,(HL)
;
	SRA	A
;;;KK;;;	LD	HL,ENYSPD
;;;KK;;;	ADD	HL,BC
	CALL	E5ENYSPD_ADR
	LD	(HL),A
;
	LD	HL,PHXSPD
	ADD	HL,DE
;
	LD	A,(HL)
;
	SRA	A
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
;
	CALL	RNDSUB
	AND	$07
	JR	NZ,PH2090
;
	CALL	RNDSUB
	AND	$02
	DEC	A
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	(HL),A
PH2090
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	 ���[�v			   	  %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
LOPECD
	DB	$44,$03,$46,$03
	DB	$44,$03,$48,$03
	DB	$46,$23,$44,$23
	DB	$48,$23,$44,$23
LOPEMV
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	A,(ENCHPT2)
	ADD	A,(HL)
	LD	(ENCHPT2),A
;
	LD	DE,LOPECD
	CALL	EN2CST
;
	CALL	E5STCK
;
	CALL	E5HNSB
;
	CALL	CREPKEL
;
	CALL	E5MVCL
	CALL	ENBGCKL
;
	LD	HL,ENCBFG
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,LOP0010
;
	CALL	STATINC
	LD	(HL),B
;
	CALL	LDTIM0
	LD	(HL),$08
;
;	LD	HL,ENTIM1
;	ADD	HL,BC
	CALL	LDTIM1
	LD	(HL),$20
LOP0010
	LD	A,(ENSTAT2)
	RST	00
	DW	LOP1000
	DW	LOP2000
	DW	LOP3000
;================================
LOPXSD
	DB	$08,$F8,$00,$00
LOPYSD
	DB	$00,$00,$F8,$08
LOPMKI
	DB	$02,$00,$FF,$FF
;- - - - - - - - - - - - 
LOP1000
	CALL	LDTIM0
	JR	NZ,LOP1090
;
	CALL	STATINC
;
	CALL	LDTIM0
	CALL	RNDSUB
	AND	$1F
	ADD	A,$30
	LD	(HL),A
;
	AND	$03
	LD	E,A
LOPSDST
	LD	D,B
	LD	HL,LOPXSD
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
	LD	HL,LOPYSD
	ADD	HL,DE
	LD	A,(HL)
;;;KK;;;	LD	HL,ENYSPD
;;;KK;;;	ADD	HL,BC
	CALL	E5ENYSPD_ADR
	LD	(HL),A
	LD	HL,LOPMKI
	ADD	HL,DE
	LD	A,(HL)
	CP	$FF
	JR	Z,LOP1080
;
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	(HL),A
LOP1080
	RET
LOP1090
	CALL	ENSDCL
	CALL	LOPATCK
;
	JR	LOPPTST
;================================
LOP2000
	CALL	LDTIM0
	JR	NZ,LOP2010
;
	LD	(HL),$18
;
	CALL	STATINC
	LD	(HL),B
LOP2010	
	CALL	LOPATCK
;
LOPPTST
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	AND	$01
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;	RET
;=========================
LOPATCK
;	LD	HL,ENTIM1
;	ADD	HL,BC
;	LD	A,(HL)
;	AND	A
	CALL	LDTIM1
	JR	NZ,LPAC90
;
	CALL	E5XCHK
	ADD	A,$08
	CP	$10
	JR	NC,LPAC10
;
	CALL	E5YCHK
LPACSB
	CALL	LOPSDST
;
	LD	HL,ENXSPD
	ADD	HL,BC
	SLA	(HL)
;;;KK;;;	LD	HL,ENYSPD
;;;KK;;;	ADD	HL,BC
	CALL	E5ENYSPD_ADR
	SLA	(HL)
;
	CALL	STATINC
	LD	(HL),$02
;
	CALL	LDTIM0
	LD	(HL),$30
LPAC90
	RET
LPAC10
	CALL	E5YCHK
	ADD	A,$08
	CP	$10
	JR	NC,LPAC20
;
	CALL	E5XCHK
	JR	LPACSB
LPAC20
	RET
;================================
LOP3000
	CALL	LDTIM0
	JR	NZ,LOP3090
;
	LD	(HL),$20
;
	CALL	STATINC
	LD	(HL),B
;
;	LD	HL,ENTIM1
;	ADD	HL,BC
	CALL	LDTIM1
	LD	(HL),$40
LOP3090
	LD	A,(FRCNT)
	RRA
	RRA
	AND	$01
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�ꏑ������              	  %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;- - - - - - - - - - - - - - - - - - - - - - -
;;;;;;;;TKBGDT
;;;;;;;;  DB	$55,$56,$0A,$0B,$0C,$0D,$0E,$0F,$55,$56
;;;;;;;;  DB	$55,$56,$1A,$1B,$1C,$1D,$1E,$1F,$55,$56
;;;;;;;;;
;;;;;;;;  DB	$55,$56,$04,$05,$64,$65,$06,$07,$55,$56
;;;;;;;;  DB	$55,$56,$14,$15,$66,$67,$16,$17,$55,$56
;;;;;;;;;
;;;;;;;;  DB	$76,$76,$72,$73,$76,$76,$72,$73,$68,$69
;;;;;;;;  DB	$76,$76,$73,$72,$76,$76,$73,$72,$77,$4B
;;;;;;;;;
;;;;;;;;  DB	$6C,$6C,$6C,$6C,$76,$76,$76,$76,$72,$73
;;;;;;;;  DB	$6C,$6C,$6C,$6C,$76,$76,$76,$76,$73,$72
;;;;;;;;;
;;;;;;;;  DB	$6D,$6D,$6C,$6C,$6C,$6C,$6C,$6C,$6C,$6C
;;;;;;;;  DB	$6D,$6D,$6C,$6C,$6C,$6C,$6C,$6C,$6C,$6C
;;;;;;;;TKBGDT2
;;;;;;;;  DB	$55,$56,$6E,$6E,$6E,$6E,$6E,$6E,$55,$56
;;;;;;;;  DB	$55,$56,$6E,$6E,$6E,$6E,$6E,$6E,$55,$56
;;;;;;;;;
;;;;;;;;  DB	$55,$56,$6E,$6E,$6E,$6E,$6E,$6E,$55,$56
;;;;;;;;  DB	$55,$56,$6E,$6E,$6E,$6E,$6E,$6E,$55,$56
;;;;;;;;;
;;;;;;;;  DB	$6D,$6D,$6D,$6D,$6D,$6D,$6D,$6D,$6D,$6D
;;;;;;;;  DB	$6D,$6D,$6D,$6D,$6D,$6D,$6D,$6D,$6D,$6D
;;;;;;;;;
;;;;;;;;  DB	$6D,$6D,$6D,$6D,$6D,$6D,$6D,$6D,$6D,$6D
;;;;;;;;  DB	$6D,$6D,$6D,$6D,$6D,$6D,$6D,$6D,$6D,$6D
;;;;;;;;;
;;;;;;;;  DB	$6D,$6D,$6D,$6D,$6D,$6D,$6D,$6D,$6D,$6D
;;;;;;;;  DB	$6D,$6D,$6D,$6D,$6D,$6D,$6D,$6D,$6D,$6D
;- - - - - - - - - - - - - - - - - - - - - - - - -
TKBGUN
	DB	GAK14,BASU0,BASU1,BASU2,GAK14
	DB	GAK14,UWOD2,ANA00,UWOD3,GAK14
	DB	NUKI0,STON2,NUKI0,STON2,SINDO	
	DB	AMIZU,AMIZU,NUKI0,NUKI0,STON2
	DB	MIZU0,AMIZU,AMIZU,AMIZU,AMIZU
;- - - - - - - - - - - - - - - - - - - - - - - - -
;
TKUNAD
	DB	$02
	DB	$12
	DB	$22
	DB	$32
	DB	$42
;- - - - - - - - - - - - - - - - - - - - - - -
TKOBJY
	DB	$00,$08,$10,$18,$20,$28,$30,$38,$40,$48
;- - - - - - - - - - - - - - - - - - - - - - -
TAKIBMV
	CALL	E5STCK
;
;	LD	HL,ENWRK4
;	ADD	HL,BC
;	LD	A,(HL)
;	CP	$02
;	JR	NC,TKBG090
;;
;	INC	(HL)
;	AND	A
;	JR	NZ,TKBG050
;;
;	LD	A,$4C
;	LD	(SOUND4),A	;(S)
;	JR	TKBG090
;TKBG050
;	LD	A,$1D
;	LD	(SOUND3),A	;(S)
;TKBG090
	LD	A,$02
	LD	(PLSTOP),A
	LD	(ITEMNOT),A
;
	LD	A,(ENSTAT2)
	RST	00
	DW	TKBG1000
	DW	TKBG2000
	DW	TKBG3000
	DW	TKBG4000
;-----------------------------
TKBG1000
	CALL	DORSDST5	;(S)
;
	CALL	LDTIM0
	LD	(HL),$28
	JP	STATINC
;-----------------------------
TKBG2000
	CALL	LDTIM0
	RET	NZ
;
	LD	A,$4C
	LD	(SOUND4),A	;(S)
	JP	STATINC
;-----------------------------
TKBG3000
	LD	A,$1D
	LD	(SOUND3),A	;(S)
;
	CALL	LDTIM0
	LD	(HL),$80
	JP	STATINC
;-----------------------------
TKBG4000
	LD	A,(FRCNT)
	LD	E,$00
	AND	$08
	JR	Z,TKB008
;
	LD	E,$02
TKB008
	LD	A,E
	LD	(TILTXD),A
;
	CALL	LDTIM0
	RET	NZ
;;	JP	NZ,TKB090
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	LD	E,A
	INC	A
	LD	(HL),A
	LD	(ENHELP),A
	LD	A,E
	AND	$1F
	JP	NZ,TKB033 ;90
;
;	LD	A,$11
;	LD	(SOUND3),A	;(S)
;;
;	LD	A,$05
;	LD	(SOUND1),A	;(S)
;
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	CP	10
	JP	Z,TKB0A0 ;E5CLER
	INC	A
	LD	(HL),A
;
TKB033
	LD	HL,ENCONT
	ADD	HL,BC
	PUSH	HL
	LD	A,(HL)
	LD	E,A
	LD	D,B
	LD	HL,TKOBJY-1
	ADD	HL,DE
	LD	A,(HL)
	LD	(OBJYP),A
	LD	A,$20
	LD	(OBJXP),A
	CALL	OBJBG
	POP	HL
;
;(CGB)	LD	A,(HL)
;(CGB)	DEC	A
;(CGB)	LD	E,A
;(CGB)	SLA	A
;(CGB)	SLA	A
;(CGB)	SLA	A
;(CGB)	ADD	A,E
;(CGB)	ADD	A,E	;x10
;(CGB)	LD	E,A
;(CGB)	LD	D,B
;(CGB)	LD	HL,TKBGDT
;(CGB)	LD	A,(ENHELP)
;(CGB)	AND	$01
;(CGB)	JR	Z,TKB055
;(CGB)	LD	HL,TKBGDT2
;(CGB)TKB055
;(CGB)	ADD	HL,DE
;(CGB)	PUSH	HL
;(CGB);
;(CGB)	LD	A,(VRAMD)
;(CGB)	LD	E,A
;(CGB)	LD	D,B
;(CGB)	ADD	A,13
;(CGB)	LD	(VRAMD),A
;(CGB);
;(CGB)	LD	HL,VRAMD+1
;(CGB)	ADD	HL,DE
;(CGB)	LD	A,(VRAMH)
;(CGB)	LD	(HLI),A
;(CGB)	LD	A,(VRAML)
;(CGB)	LD	(HLI),A
;(CGB)	LD	A,$09
;(CGB)	LD	(HLI),A
;(CGB);
;(CGB)	POP	DE
;(CGB);
;(CGB)	PUSH	BC
;(CGB);
;(CGB)	LD	C,10
;(CGB)TKB080
;(CGB)	LD	A,(DE)
;(CGB)	INC	DE
;(CGB)	LD	(HLI),A
;(CGB)	DEC	C
;(CGB)	JR	NZ,TKB080
;(CGB);
;(CGB)	LD	(HL),B
;(CGB);
;(CGB)	POP	BC

;;;;;;;		CALL	Taki_atr_set	; �L�������A�g���r���[�g�Z�b�g

		LD	D,H		; DE <--- HL
		LD	E,L
		LD	HL,CallBank
		LD	A,:Taki_atr_set_sub
		LD	(HLI),A
		LD	A,>Taki_atr_set_sub
		LD	(HLI),A
		LD	A,<Taki_atr_set_sub
		LD	(HLI),A
		LD	A,:TAKIBMV
		LD	(HL),A
		CALL	JSL_CALL

	PUSH	BC
;
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	DEC	A
	RRA
	AND	%00000111
	PUSH	AF
	LD	E,A
	LD	D,B
	LD	HL,TKUNAD
	ADD	HL,DE
	LD	E,(HL)
	LD	HL,BGUNDT+$11
	ADD	HL,DE
		ld	c,l
		ld	b,h
;;10/31;	PUSH	HL
;;10/31;	POP	BC
;
	POP	AF
	LD	E,A
	SLA	A
	SLA	A
	ADD	A,E
	LD	E,A
	LD	D,$00
	LD	HL,TKBGUN
	ADD	HL,DE
;
	LD	E,$05
TKUS010
	LD	A,(HLI)
	LD	(BC),A
;--------------------------------------------
;	�ꏑ������
;--------------------------------------------
		PUSH	HL
		LD	H,B		; HL <-- BC
		LD	L,C
		LD	A,$07|UNIT_TRAN_BIT
		CALL	Unit_change	; �o���N�Q���j�b�g��������
		POP	HL
;--------------------------------------------
	INC	BC
	DEC	E
	JR	NZ,TKUS010
;
	POP	BC
TKB090
	RET
TKB0A0
			XOR	A
	LD	(TILTXD),A
	LD	(ITEMNOT),A
;
	CALL	BGMSET	;(S)
;
	JP	E5CLER
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�K�C�R�c���{�X              	  %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
BSKELMV
	LD	HL,ENWRK3
	ADD	HL,BC
	LD	A,(HL)
	CP	$FF
	JP	Z,TAKIBMV	;�ꏑ�������I
	AND	A
	JR	NZ,BSK0F0
;
	INC	(HL)
;
	CALL	BSKINT
BSK0F0
	CALL	BSKELCS
;
	LD	A,(ENMODE2)
	CP	EMOVE
	JP	NZ,BSFLSB5
;
	CALL	E5STCK
;
	CALL	SHRVSE
;
	CALL	BSSDCK
;
	LD	HL,ENFLSH
	ADD	HL,BC
	LD	A,(HL)
	CP	$16
	JR	NZ,BSK0E0
;
	LD	A,(ENSTAT2)
	CP	$09
	JR	NC,BSK0D0	;�m�[�}����ԁH
;				;Yes !
	LD	(HL),B
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),B
;
	CALL	STATINC
	LD	A,$09
	LD	(HL),A
	LD	(ENSTAT2),A
	JR	BSK0E0
;
BSK0D0				;�`�����X��ԁI
	LD	HL,ENCONT
	ADD	HL,BC
	INC	(HL)	;�_���[�W�J�E���g
BSK0E0
	CALL	E5HNSB
;
	CALL	E5ZCLC
;
	LD	HL,ENZSPD
	ADD	HL,BC
	DEC	(HL)
	DEC	(HL)
;
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	AND	%10000000
	LD	(ENHELP),A
	JR	Z,BSK000
;
	LD	(HL),B
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),B
BSK000
	LD	A,(ENSTAT2)
	CP	$09 ;$0D
	JR	NC,BSK001	;�ɂ� ?
;				;no
	CALL	CRKNKNL	;�� vs �v���C���[
;
	LD	HL,ENHNFG
	ADD	HL,BC
	LD	A,(HANEFG)
	OR	(HL)
	AND	A
	JR	NZ,BSK001
;
	CALL	CRENPSL
;
;;	LD	A,(ENSTAT2)
;;	CP	$09
;;	JR	NC,BSK001
;
	CALL	CRKNENL	
BSK001
	LD	A,(ENSTAT2)
	RST	00
	DW	BSK1000	
	DW	BSK2000	
	DW	BSK3000	
	DW	BSK4000	
	DW	BSK5000	
	DW	BSK6000	
	DW	BSK7000	
	DW	BSK8000	
	DW	BSK9000	
	DW	BSKA000	
	DW	BSKB000	
	DW	BSKC000	
	DW	BSKD000	
	DW	BSKE000	
;---------------------------------
BSK1000	;�V��ҋ@
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),B
;
	CALL	LDTIM0
	JR	NZ,BSK1090
;
	LD	(HL),$30
;
	CALL	STATINC	
;
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	(HL),$6F
BSK1090
	RET
;---------------------------------
BSK2000	;����
	CALL	LDTIM0
	JR	Z,BSK2008
;
	CP	$01
	JR	NZ,BSK2003
;
	LD	A,$08
	LD	(SOUND1),A	;(S)
;
BSK2003
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),B
	RET
;
BSK2008
	LD	A,(ENHELP)
	AND	A
	JR	Z,BSK2010
;
	CALL	LDTIM0
	LD	(HL),$40
;
	CALL	STATINC
;
BSFLON
;	LD	A,$17
;	LD	(SOUND3),A	;(S)
BSK2010
	RET
;---------------------------------
BSK3000	;���n
	CALL	LDTIM0
	CP	$01
	JR	NZ,BSK3008
;
	LD	E,$12	;�~��Ă����Ƃ��̃Z���t�I
;
	LD	A,(GRNDPT)
	CP	$92
	JR	Z,BSK3002
	CP	$84
	JR	Z,BSK3002
;
	CP	$80
	JR	NZ,BSK3005
;
	LD	E,$14
BSK3002
	LD	A,E
	CALL	MSGCH2
;
BSK3005
;	LD	HL,ENWRK2
;	ADD	HL,BC
;	LD	(HL),$01
BSK3008
	CALL	LDTIM0
	JR	NZ,BSK3010
;
	LD	(HL),$A0	;�L�����L���������I
;
	LD	A,(GRNDPT)
	CP	$95
	JR	Z,BSK300A
;
	LD	(HL),$20	;�L�����L�����Z���I
BSK300A
	JP  	STATINC
BSK3010
	LD	HL,BSUPYP
	LD	(HL),$F0
	LD	HL,BSTTYP
	LD	(HL),$F8
	LD	HL,BSKNYP
	LD	(HL),$F0
;
	CP	$20
	JR	C,BSK3020
;
	LD	HL,BSUPYP
	LD	(HL),$F2
	LD	HL,BSTTYP
	LD	(HL),$FA
	LD	HL,BSKNYP
	LD	(HL),$F2
BSK3020
	RET
;---------------------------------
BSK4000	;�L�����L����
	CALL	LDTIM0
	JR	NZ,BSK4010
;
	LD	(HL),$20
;
	JP	STATINC
BSK4010
	AND	$3F
	JR	NZ,BSK4020
;
;	LD	A,$17
;	LD	(SOUND3),A	;(S)
BSK4020
	CALL	LDTIM0
	AND	%01000000
	JR	Z,BSRTPS 
;----------------------------
BSLFPS
	CALL	BSKINT2
;
	LD	HL,BSUPPT
	LD	(HL),$01
	LD	HL,BSDWPT
	LD	(HL),B
;
	LD	HL,BSTTXP
	LD	(HL),$F0
	LD	HL,BSTTYP
	LD	(HL),$F8
;
	LD	HL,BSKNYP
	LD	(HL),$F3
	LD	HL,BSKNXP
	LD	(HL),$10
	LD	HL,BSKNPT
	LD	(HL),$00
	RET
;----------------------------
BSRTPS
	CALL	BSKINT2
;
	LD	HL,BSUPPT
	LD	(HL),B
	LD	HL,BSDWPT
	LD	(HL),B
;
	LD	HL,BSTTXP
	LD	(HL),$F8
	LD	HL,BSTTYP
	LD	(HL),$F8
;
	LD	HL,BSKNYP
	LD	(HL),$F0
	LD	HL,BSKNXP
	LD	(HL),$10
	LD	HL,BSKNPT
	LD	(HL),$00
	RET
;---------------------------------
BSK5000	;�Î~
	CALL	BSKJPCK	;�W�����v�`�F�b�N
;
	CALL	LDTIM0
		ret	NZ
;;;;;;;;	JR	NZ,BSK5020
;
	CALL	RNDSUB
	AND	$1F
	ADD	A,$30
	LD	(HL),A
;
	LD	A,$08
	CALL	PSERCHL
;
	CALL	STATINC
;
BSKMKS0
	CALL	E5XCHK
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	(HL),E
BSKMKS
	CALL	BSLFPS
;
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	A,(HL)
	AND	A	;$01
		ret	NZ
;;;;;;;;	JR	NZ,BSK5010
;
		jp	BSRTPS
;;;;;;;;	CALL	BSRTPS
;;;;;;;;BSK5010
;;;;;;;;BSK5020
;;;;;;;;	RET
;---------------------------------
BSK6000	;����
	CALL	BSKJPCK	;�W�����v�`�F�b�N
;
	CALL	E5XCHK
	ADD	A,$20
	CP	$40
	JR	NC,BSK6010
	CALL	E5YCHK
	ADD	A,$1C
	CP	$38
	JR	NC,BSK6010
;
	CALL	STATINC
	LD	(HL),$06
;
	CALL	LDTIM0
	LD	(HL),$30
	RET
;
BSK6010
	CALL	LDTIM0
	JR	NZ,BSK6020
;
	CALL	RNDSUB
	AND	$0F
	ADD	A,$10
	LD	(HL),A
;
	CALL	STATINC
	LD	(HL),$04
	RET
BSK6020
	AND	$0F
	JR	NZ,BSK6030
;
	LD	A,(BSDWPT)
	XOR	$01
	LD	(BSDWPT),A
BSK6030
E5MVSB
	CALL	E5MVCL
		jp	ENBGCKL
;;;;;;;;	CALL	ENBGCKL
;;;;;;;;	RET
;---------------------------------
BSK7000	;���U��
	CALL	LDTIM0
	JR	NZ,BSK7010
;===Stop return ==
BSSTST
	CALL	LDTIM0
	LD	(HL),$20
;
	CALL	STATINC
	LD	(HL),$04
;
	LD	HL,ENMOD1
	ADD	HL,BC
	SET	7,(HL)
	LD	HL,ENMOD3
	ADD	HL,BC
	RES	6,(HL)
	RET
BSK7010
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	NZ,BSK7218
;
BSK7018
	CALL	LDTIM0
	CP	$18
	JR	C,BSK7020
;
	CALL	BSRTPS
;
	LD	A,$08
	LD	(BSKNXP),A
	LD	A,$E0
	LD	(BSKNYP),A
	LD	A,$01
	LD	(BSKNPT),A
	RET
BSK7020
	CP	$10
	JR	C,BSK7030
	CP	$18-1
	JR	NZ,BSK7028
;
	LD	A,$27
	LD	(SOUND3),A	;(S)
;;	LD	A,$16
;;	LD	(SOUND2),A	;(S)
;
	LD	HL,ENTIM2
	ADD	HL,BC
	LD	(HL),$10
BSK7028
	LD	A,$FF
	LD	(BSKNPT),A
;
	LD	A,$F0
	LD	(BSTTXP),A
;
	LD	A,$F4
	LD	(BSTTYP),A
;
	LD	A,$01
	LD	(BSUPPT),A
	RET
BSK7030
	LD	A,$03
	LD	(BSKNPT),A
;
	LD	A,$F8
	LD	(BSKNXP),A
	LD	A,$08
	LD	(BSKNYP),A
;
	LD	A,$F0
	LD	(BSTTXP),A
;
	LD	A,$F0
	LD	(BSTTYP),A
	RET
;-- Left cut --
BSK7218
	CALL	LDTIM0
	CP	$18
	JR	C,BSK7220
;
	CALL	BSLFPS
;
	LD	A,$01
	LD	(BSDWPT),A
;
	LD	A,$F8
	LD	(BSKNXP),A
	LD	A,$E8
	LD	(BSKNYP),A
	LD	A,$00
	LD	(BSKNPT),A
	RET
BSK7220
	CP	$10
	JR	C,BSK7230
	CP	$18-1
	JR	NZ,BSK7228
;
;;	LD	A,$03
;;	LD	(SOUND3),A	;(S)
;
	LD	A,$27
	LD	(SOUND3),A	;(S)
;;	LD	A,$16
;;	LD	(SOUND2),A	;(S)
;
	LD	HL,ENTIM2
	ADD	HL,BC
	LD	(HL),$10
BSK7228
	LD	A,$FF
	LD	(BSKNPT),A
;
	LD	A,$F0
	LD	(BSTTXP),A
;
	LD	A,$F0
	LD	(BSTTYP),A
;
	LD	A,$00
	LD	(BSUPPT),A
	RET
BSK7230
	LD	A,$02
	LD	(BSKNPT),A
;
	LD	A,$10
	LD	(BSKNXP),A
	LD	A,$08
	LD	(BSKNYP),A
;
	LD	A,$F0
	LD	(BSTTXP),A
;
	LD	A,$EC
	LD	(BSTTYP),A
	RET
;---------------------------------
BSK8000	;�W�����v�҂�
	CALL	BSKMKS
;
	CALL	LDTIM0
	JR	NZ,BSK8010
;
	CALL	STATINC
;
;	LD	A,$0D
;	LD	(SOUND1),A	;(S)
	CALL	E5JPSD	;(S)
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),$30
	AND	A
	JR	NZ,BSK8008
;
	LD	(HL),$28
;
	LD	A,$18
	JP  	PSERCHL
;
BSK8008
	LD	A,$08
	CALL	PSERCHL
;
;;;KK;;;	LD	HL,ENYSPD
;;;KK;;;	ADD	HL,BC
	CALL	E5ENYSPD_ADR
	LD	(HL),$F0
	RET
BSK8010
BSUPDW
	LD	A,(BSUPYP)
	ADD	A,$02
	LD	(BSUPYP),A
;
	LD	A,(BSTTYP)
	ADD	A,$02
	LD	(BSTTYP),A
;
	LD	A,(BSKNYP)
	ADD	A,$02
	LD	(BSKNYP),A
	RET
;---------------------------------
BSK9000	;
	CALL	LDTIM0
	JR	Z,BSK9010
;
	DEC	A
	JR	NZ,BSK9008
	CALL	BSSTST
BSK9008
	CALL	BSKMKS
		jp	BSUPDW
;;;;;;;;	CALL	BSUPDW
;;;;;;;;	RET
;
BSK9010
	CALL	E5MVSB
;
	LD	A,(ENHELP)
	AND	A
		ret	Z
;;;;;;;;	JR	Z,BSK9030
;
	CALL	LDTIM0
	LD	(HL),$10
;;	CALL	BSSTST
;
		jp	BSFLON	;(S)
;;;;;;;;	CALL	BSFLON	;(S)
;;;;;;;;BSK9030
;;;;;;;;	RET
;---------------------------------
BSKA000	;���ꏀ��
	LD	A,(ENHELP)
	AND	A
	JR	Z,BSKA080
;
	CALL	STATINC
;
	CALL	LDTIM0
	LD	(HL),$20
;
	LD	HL,ENMOD1
	ADD	HL,BC
	RES	7,(HL)
	LD	HL,ENMOD3
	ADD	HL,BC
	SET	6,(HL)
;
	LD	A,$28
	LD	(SOUND1),A	;(S)
BSKA080
		jp	E5MVSB
;;;;;;;;	CALL	E5MVSB
;;;;;;;;	RET
;---------------------------------
BSKB000	;���ꒆ
	CALL	LDTIM0
	JR	NZ,BSKB010
;
	LD	(HL),$C0
;
		jp	STATINC
;;;;;;;;	CALL	STATINC
;;;;;;;;	RET
;
BSKB010
	LD	HL,BSTTYP
	LD	A,(HL)
	SUB	$03
	JR	Z,BSKB020
	BIT	7,A
	JR	Z,BSKB018
	INC	(HL)
	INC	(HL)
BSKB018
	DEC	(HL)
BSKB020
	LD	HL,BSKNYP
	LD	A,(HL)
	SUB	$03
	JR	Z,BSKB030
	BIT	7,A
	JR	Z,BSKB028
	INC	(HL)
	INC	(HL)
BSKB028
	DEC	(HL)
BSKB030
	CALL	LDTIM0
	CP	$14
	JR	NC,BSKB080
;
	LD	A,(BSUPYP)
	AND	A
	JR	Z,BSKB080
;
	INC	A
	LD	(BSUPYP),A
BSKB080
	RET
;---------------------------------
BSKC000	;���� �Î~
	CALL	LDTIM0
	JR	NZ,BSKC002
;
	LD	(HL),$30
		jp	STATINC
;;;;;;;;	CALL	STATINC
;;;;;;;;	RET
BSKC002
	CP	$30
	JR	NC,BSKC090
;
	AND	$03
	JR	NZ,BSKC090
;
	LD	A,(BSUPYP)
	ADD	A,$02
	CPL
	INC	A
	LD	(BSUPYP),A
BSKC090
	RET
;---------------------------------
BSKD000	;���� ���A
	LD	A,(BSUPYP)
	CP	$F0
	JR	Z,BSKD008
;
	DEC	A
	LD	(BSUPYP),A
BSKD008
	CALL	LDTIM0
	JR	NZ,BSKD00A
;
	LD	E,$FF
;				;YES !
	LD	A,(GRNDPT)
	CP	$80
	JR	Z,BSKD088	;�������̕����H	
;
	LD	E,$03	;�n�߂̕����I
;
	CP	$95
	JR	Z,BSKD088
;
	LD	E,$02
BSKD088
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	CP	E	;$03
	JR	C,BSKD009	; E ��_���[�W�H
;				;YES !
	LD	HL,ENMOD1
	ADD	HL,BC
	SET	7,(HL)
;
	CALL	STATINC
;
	LD	A,$13
	CALL	MSGCH2
;
	CALL	LDTIM0
	LD	(HL),$04
	RET
BSKD009
	JP	BSSTST
;
BSKD00A
	CP	$24
	JR	NC,BSKD030
;
	LD	HL,BSTTYP
	LD	A,(HL)
	SUB	$F8
	JR	Z,BSKD020
	BIT	7,A
	JR	Z,BSKD018
	INC	(HL)
	INC	(HL)
BSKD018
	DEC	(HL)
BSKD020
	LD	HL,BSKNYP
	LD	A,(HL)
	SUB	$F0
	JR	Z,BSKD030
	BIT	7,A
	JR	Z,BSKD028
	INC	(HL)
	INC	(HL)
BSKD028
	DEC	(HL)
BSKD030
	RET
;==============================================
BSKE000
	CALL	BSKMKS
;
	CALL	LDTIM0
	JR	Z,BSKE010
	DEC	A
	JR	NZ,BSKE008
;
	LD	A,$3F
	LD	(SOUND3),A	;(S)
BSKE008
		jp	BSUPDW
;;;;;;;;	CALL	BSUPDW
;;;;;;;;	RET
BSKE010
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),$30
;
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	CP	$78
	JR	C,BSKE020
;
	CALL	BGMSET	;(S)
;
	CALL	E5CLER
;- - Save data set - - - -
E5SVST
	LD	HL,DJRMSV
	LD	A,(GRNDPT)
;
		CP	NEWDJ		;�V�_���W�����H
		JR	NZ,E5SS10_PASS	;	NO --> E5SS10_PASS
		LD	HL,NEWDJRM	;�V�_���W�����̃Z�[�u�q�`�l
		JR	E5SS10
E5SS10_PASS
;
	LD	E,A
	LD	D,B
	LD	A,(DNJNNO)
	CP	DJROOM2
	JR	NC,E5SS10
	CP	DJROOM
	JR	C,E5SS10
	INC	D
E5SS10
	ADD	HL,DE
;
	LD	A,(HL)
	OR	%00100000
	LD	(HL),A
	LD	(DJSVBF),A	; Save data buffer set !
BSKE020
	RET
;==============================================
;==============================================
;==============================================
;==============================================
;==============================================
;==============================================
;==============================================
;==============================================
;==============================================
;==============================================
;==============================================
BSKJPCK
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	(HL),B
;
	CALL	E5XCHK
	ADD	A,$30
	CP	$60
	JR	NC,BSJC08
	CALL	E5YCHK
	ADD	A,$30
	CP	$60
	JR	NC,BSJC08
;
;;	CALL	E5YCHK
	LD	A,E
	CP	$02
		ret	NZ
;;;;;;;;	JR	NZ,BSJC10
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	(HL),$01
BSJC08
	CALL	STATINC
	LD	(HL),$07
;
	CALL	LDTIM0
	LD	(HL),$20
;
		jp	BSKMKS0
;;;;;;;;	CALL	BSKMKS0
;;;;;;;;BSJC10
;;;;;;;;	RET
;==============================================
BSKINT
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	(HL),$7F
;
	CALL	LDTIM0
	LD	(HL),$80
;
	LD	A,(BGMNO)
	LD	HL,ENWRK4
	ADD	HL,BC
	LD	(HL),A
;
	LD	HL,ENLIFE
	ADD	HL,BC
	LD	(HL),$FF
;
	LD	A,(GRNDPT)
	CP	$80
	JR	NZ,BSKINT2	;�Ō�̂ւ�?
;				;YES !
	LD	(HL),$C0		;�Ō�̃��C�t�I
BSKINT2
;---
	LD	A,$F8
	LD	(BSTTXP),A
;
	LD	A,$F8
	LD	(BSTTYP),A
;---
	LD	A,$F0
	LD	(BSUPYP),A
;---
	LD	A,$00
	LD	(BSKNPT),A
	LD	(BSUPPT),A
	LD	(BSDWPT),A
;
	LD	A,$10
	LD	(BSKNXP),A
	LD	A,$F0
	LD	(BSKNYP),A
	RET
;=====================================
;---------------------------------------
BSKTTCD	;�|�I
	DB	$70,$01,$70,$21
;---------------------------------------
BSKUPCD	;���
;0 �E�ނ�
	DB	$00,$F8,$60,$00
	DB	$00,$00,$62,$00
	DB	$00,$08,$64,$00
	DB	$00,$10,$66,$00
;�P���ނ�
	DB	$00,$F8,$66,$20
	DB	$00,$00,$64,$20
	DB	$00,$08,$62,$20
	DB	$00,$10,$60,$20
;---------------------------------------
BSKDWCD	;����
;0 �E�ނ�
	DB	$00,$F8,$68,$00
	DB	$00,$00,$6A,$00
	DB	$00,$08,$6C,$00
	DB	$00,$10,$6E,$00
;�P���ނ�
	DB	$00,$F8,$6E,$20
	DB	$00,$00,$6C,$20
	DB	$00,$08,$6A,$20
	DB	$00,$10,$68,$20
;---------------------------------------
BSKKNCD	;��
;0 �E��
	DB	$00,$00,$72,$03
	DB	$F8,$08,$74,$03
;1 ����
	DB	$F8,$00,$74,$23
	DB	$00,$08,$72,$23
;2 �E�� 
	DB	$00,$00,$72,$43
	DB	$08,$08,$74,$43
;3 ����
	DB	$08,$00,$74,$63
	DB	$00,$08,$72,$63
;---------------------------------------
BSKFLCD
;0
	DB	$10,$00,$76,$00
	DB	$10,$08,$78,$00
	DB	$10,$10,$7A,$00
;
	DB	$08,$18,$7C,$00
	DB	$F8,$18,$7E,$00
BSKFLCD2
;1
	DB	$10,$08,$76,$20
	DB	$10,$00,$78,$20
	DB	$10,$F8,$7A,$20
;
	DB	$08,$F0,$7C,$20
	DB	$F8,$F0,$7E,$20
;---------------------------------------
BSKSWCD
	DB	$0C,$FB,$26,$00
	DB	$0C,$01,$26,$00
	DB	$0C,$07,$26,$00
	DB	$0C,$0D,$26,$00
;- - - - - - - - - - - - - - - - - -
BSKELCS	
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	CP	$70
		ret	NC
;;;;;;;;	JR	NC,BSKC90
;
	CALL	BSKKNCS	;��
	CALL	BSKFLCS	;���c��
	CALL	BSKTTCS	;��
	CALL	BSKUPCS	;���
	CALL	BSKDWCS	;����
;--�e�Z�b�g--
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,BSKC70
;
	LD	A,(ENSVYL)
	SUB	$02
	LD	(ENDSYP),A
;
	LD	HL,BSKSWCD
	LD	C,$04
	CALL	ENOMST
;
	LD	A,$04
	CALL	NXOMSBL
BSKC70
	JP  	ENPSSV
;====================================
BSKKNCS
	LD	A,(BSKNXP)
	LD	HL,ENSVXL
	ADD	A,(HL)
	LD	(HL),A
;
	LD	A,(BSKNYP)
	LD	HL,ENDSYP
	ADD	A,(HL)
	LD	(HL),A
;
	LD	A,(BSKNPT)
	CP	$FF
	JR	Z,BSKNC90
;
	RLA
	RLA
	RLA
	AND	%11111000
	LD	E,A
	LD	D,B
	LD	HL,BSKKNCD
	ADD	HL,DE
;
	LD	C,$02
	CALL	ENOMST
;
	LD	A,$02
	JP	E5NXSB
BSKNC90
		jp	ENPSSV
;;;;;;;;	CALL	ENPSSV
;;;;;;;;BSKC90
;;;;;;;;	RET
;====================================
BSKFLCS
	LD	HL,ENTIM2
	ADD	HL,BC
	LD	A,(HL)
	AND	A
		ret	Z
;;;;;;;;	JR	Z,BSKFL90
;
	CALL	CRBKPL	;�� vs �v���C���[
;
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,BSKFLCD
	AND	A
	JR	Z,BSKFL20
;
	LD	HL,BSKFLCD2
BSKFL20
	LD	C,$05
	CALL	ENOMST
;
	LD	A,$05
E5NXSB
	CALL	NXOMSBL
;
		jp	ENPSSV
;;;;;;;;	CALL	ENPSSV
;;;;;;;;BSKFL90
;;;;;;;;	RET
;====================================
BSKTTCS
	LD	A,(BSTTXP)
	LD	HL,ENSVXL
	ADD	A,(HL)
	LD	(HL),A
;
	LD	A,(BSTTXP)
	ADD	A,$0C
	LD	(ENKNSZ+0),A
;
	LD	A,(BSTTYP)
	LD	HL,ENDSYP
	ADD	A,(HL)
	LD	(HL),A
;
	LD	A,(BSTTYP)
	ADD	A,$08
	LD	(ENKNSZ+2),A
;
	LD	A,$08
	LD	(ENKNSZ+1),A
	LD	A,$06
	LD	(ENKNSZ+3),A
;
	LD	DE,BSKTTCD
	CALL	EN2CST
;
	LD	A,$02
	JP	E5NXSB
	
;====================================
BSKUPCS
	LD	A,(BSUPYP)
	LD	HL,ENDSYP
	ADD	A,(HL)
	LD	(HL),A
;
	LD	A,(BSUPPT)
	RLA
	RLA
	RLA
	RLA
	AND	%11110000
	LD	E,A
	LD	D,B
	LD	HL,BSKUPCD
	ADD	HL,DE
;
	LD	C,$04
	CALL	ENOMST
;
	LD	A,$04
	JP	E5NXSB
;====================================
BSKDWCS
	LD	A,(BSUPYP)
	CP	$00
	RET	Z
;
	LD	A,(BSDWYP)
	LD	HL,ENDSYP
	ADD	A,(HL)
	LD	(HL),A
;
	LD	A,(BSDWPT)
	RLA
	RLA
	RLA
	RLA
	AND	%11110000
	LD	E,A
	LD	D,B
	LD	HL,BSKDWCD
	ADD	HL,DE
;
	LD	C,$04
	CALL	ENOMST
;
	LD	A,$04
	JP	E5NXSB
;=============================================
CRBKPL
	LD	HL,PLJPFG
	LD	A,(PLFLSH)
	OR	(HL)
	JR	NZ,CBK090
;
	LD	A,(ENDSYP)
	ADD	A,$18
	LD	E,A
	LD	A,(PLYPSL)
	LD	HL,PLZPSL
	SUB	(HL)
	ADD	A,$08
	SUB	E
	ADD	A,$0C
	CP	$18
	JR	NC,CBK090
;
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	E,$08
	LD	A,(HL)
	AND	A
	JR	Z,CBK020
	LD	E,$F8
CBK020
	LD	A,(ENSVXL)
	ADD	A,E
	LD	HL,PLXPSL
	SUB	(HL)
	ADD	A,$1A
	CP	$34
	JR	NC,CBK090
;
	LD	A,$28
	CALL	PSERCH2L
	LD	A,(WORK0)
	LD	(PLYSPD),A
	LD	A,(WORK1)
	LD	(PLXSPD),A
;
	LD	A,$02
	LD	(PLJPFG),A
;
	LD	A,$13
	LD	(PLZSPD),A
;
	LD	A,$08
	LD	(HARTDW),A
;
	LD	A,$20
	LD	(PLFLSH),A
;
	LD	A,$03
	LD	(SOUND2),A	;(S)
CBK090
	RET	
;
;
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�g�E���E�r�[��          	  %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
TBSPDT
	DB	$12 ;0
	DB	$14 ;1
	DB	$16 ;2
	DB	$18 ;3
	DB	$19 ;4
	DB	$1A ;5
	DB	$1A ;6
	DB	$1A ;7
	DB	$1A ;8
	DB	$1A ;9
;
TBEAMMV
	CALL	E5STCK
;
	CALL	E5XCHK
	ADD	A,$20
	CP	$40
	JR	NC,TBEM08
;
	CALL	E5YCHK
	ADD	A,$20
	CP	$40
	JR	C,TBEM10
;
TBEM08
	LD	HL,ENCHPT
	ADD	HL,BC
	LD	A,(HL)
	INC	A
	LD	(HL),A
	AND	$7F
	RET	NZ
;;	JR	NZ,TBEM10
;
	LD	E,ENNO-1
	LD	D,B
TBMS02
	LD	HL,ENMYNO
	ADD	HL,DE
	LD	A,(HL)
	CP	OBQBAR
	JR	Z,TBMS08
	CP	TBEAM
	JR	Z,TBMS08
	CP	BHFIR
	JR	Z,TBMS08
;
	LD	HL,ENMOD0
	ADD	HL,DE
	LD	A,(HL)
	AND	%10000000
	JR	NZ,TBMS08
;
	LD	HL,ENMODE
	ADD	HL,DE
	LD	A,(HL)
	CP	EMOVE
	JR	Z,TBMS0A
;
TBMS08
	DEC	E
	LD	A,E
	CP	$FF
	JR	NZ,TBMS02
;
	RET
TBMS0A
	LD	A,(NAZOCL)
	AND	A
	RET	NZ
;
	LD	A,BHFIR
	CALL	ENIDSHL
	JR	C,TBEM10
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
	LD	A,(DNJNNO)
	LD	E,A
	LD	A,$14
	CP	$0A
	JR	NC,TBEM0C
;
	LD	HL,TBSPDT
	ADD	HL,DE
	LD	A,(HL)
TBEM0C
	CALL	PSERCHL
;
	POP	BC
TBEM10
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�Ǖ��m				  %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
HEISBMV
	LD	HL,ENJYUN
	ADD	HL,BC
	LD	A,(HL)
	CP	$00
	JR	NZ,HEIB100
;
	LD	A,(DJSVBF)
	AND	%00010000
	JP	NZ,E5CLER
;
	LD	HL,ENJYUN
	ADD	HL,BC
	LD	(HL),$FF
;
	LD	HL,ENITMF
	ADD	HL,BC
	LD	(HL),KAKIN	;�͂���
;
HEIB100
	CALL	E5STCK
;
	LD	HL,ENCHPT
	ADD	HL,BC
	LD	(HL),B
;
	LD	HL,ENHNFG
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JP	Z,HEIB090	;���e�q�b�g�H
;				; yes 
; 0C,0D
; 0E,0F
;	DHEK1
	LD	A,HEIS0
	CALL	ENIDSHL
	JR	C,HEIB090
;
	LD	HL,ENITMF
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENITMF
	ADD	HL,DE
	LD	(HL),A
;
	LD	A,(WORK0)
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A		
;
	LD	A,(WORK1)
	LD	HL,ENYPSL
	ADD	HL,DE
	ADD	A,$08
	LD	(HL),A		
;
	CALL	ISIBRKL
;
	LD	A,(ENSVXL)
	SUB	$08
	LD	(OBJXP),A
	LD	A,(ENSVYL)
	SUB	$10
	LD	(OBJYP),A
;
	LD	A,(OBJXP)
	SWAP	A
	AND	$0F
	LD	E,A
	LD	A,(OBJYP)
	AND	$F0
	OR	E
	LD	E,A
	LD	D,B
	LD	HL,BGUNDT+$11
	ADD	HL,DE
	LD	(HL),DHEK1
;
	CALL	OBJBG
;
		LD	A,(CGBFLG)
		AND	A
		JR	Z,HEIBSB_PASS
		PUSH	BC
		LD	A,DHEK1
		LD	(UNTATR),A
		LD	A,$07
		CALL	BG1UNIT_ATR_SUB
		POP	BC
HEIBSB_PASS
;
	LD	A,(VRAMD)
	LD	E,A
	LD	D,$00
	LD	HL,VRAMD+1
	ADD	HL,DE
;
	ADD	A,10
	LD	(VRAMD),A
;
	LD	E,$08
	CALL	HEIBSB
;
	LD	E,$09
HEIBSB
	LD	A,(VRAMH)
	LD	(HLI),A
	LD	A,(VRAML)
	LD	(HLI),A
	INC	A
	LD	(VRAML),A
	LD	A,$81
	LD	(HLI),A
	LD	A,E
	LD	(HLI),A
	INC	A
	INC	A
	LD	(HLI),A
;
	XOR	A
	LD	(HL),A
;
HEIB090
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�o�����[�i			  %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
BALEECD
	DB	$74,$01,$74,$21
	DB	$76,$01,$78,$01
	DB	$7A,$01,$7A,$21
	DB	$78,$21,$76,$21
;
	DB	$7C,$01,$7C,$01
;
BALEEMV
	LD	DE,BALEECD
	CALL	EN2CST
	CALL	E5STCK
	CALL	E5HNSB
	CALL	CREPKEL
	CALL	E5MVCL
	CALL	ENBGCKL
;--------------------------------
BALMAIN
	LD	HL,ENCBFG
	ADD	HL,BC
	LD	A,(HL)
	AND	$03
	JR	NZ,LXTURN
;
	LD	A,(HL)
	AND	$0C
	JR	NZ,LYTURN
;
	JR	BLMOVE
;
LXTURN
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	A,(HL)
	CPL
	INC	A
	LD	(HL),A
	JR	BLMOVE
;	
LYTURN
;;;KK;;;	LD	HL,ENYSPD
;;;KK;;;	ADD	HL,BC
	CALL	E5ENYSPD_ADR
	LD	A,(HL)
	CPL
	INC	A
	LD	(HL),A
;
BLMOVE
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	AND	$03
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;BLBFIN		
;;;;;;;;	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	���X���C��			  %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
YSLIMCD
	DB	$FF,$FF,$FF,$FF ;0
	DB	$FF,$FF,$FF,$FF ;1
	DB	$54,$00,$54,$20 ;2
	DB	$52,$00,$52,$20 ;3
YSLIMCD2
	DB	$56,$00	;0
	DB	$56,$00 ;1
;
YSLIMMV
	LD	A,(ENCHPT2)
	CP	$01
	JR	NZ,YSCS10	
;
	LD	DE,YSLIMCD2
	CALL	EN1CST
	JR	YSL0000
YSCS10
	LD	DE,YSLIMCD
	CALL	EN2CST
;
YSL0000
	CALL	E5STCK
;
	CALL	E5HNSB
;
	CALL	E5ZCLC
	LD	HL,ENZSPD
	ADD	HL,BC
	DEC	(HL)
	DEC	(HL)
;
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	AND	%10000000
	LD	(ENHELP),A
	JR	Z,YSL0010
;
	LD	(HL),B
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),B
;
YSL0010
	LD	A,(ENSTAT2)
	RST	00
	DW	YSL1000
	DW	YSL2000
	DW	YSL3000
	DW	YSL4000
	DW	YSL5000
	DW	YSL6000
	DW	YSL7000
;==============================
YSL1000
	CALL	LDTIM0
	JR	NZ,YSL1090
;
	CALL	E5XCHK
	ADD	A,$20
	CP	$40
	JR	NC,YSL1090
;
	CALL	E5YCHK
	ADD	A,$20
	CP	$40
	JR	NC,YSL1090
;
	CALL	STATINC
;
	CALL	LDTIM0
	LD	(HL),$20
;
	CALL	RNDSUB
	AND	$03
	ADD	A,$03
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	(HL),A
YSL1090
	RET
;==============================
YSL2000
	CALL	LDTIM0
	JR	NZ,YSL2010
;
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	(HL),$08
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),$08
;
	LD	HL,ENMOD0
	ADD	HL,BC
	LD	(HL),%00010010
;
	LD	A,$03
	CALL	ENPTST
	CALL	STATINC
;
E5JPSD
	LD	A,$24
	LD	(SOUND1),A	;(S)
	RET
YSL2010
	LD	E,$01
	CP	$10
	JR	NC,YSL2020
	LD	E,$02
YSL2020
	LD	A,E
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;;
;;;;;;;;	RET
;==============================
YSL3000
	LD	A,(ENHELP)
	AND	A
		ret	Z
;;;;;;;;	JR	Z,YSL3010
;
	CALL	LDTIM0
	LD	(HL),$20
;
		jp	STATINC
;;;;;;;;	CALL	STATINC
;;;;;;;;YSL3010
;;;;;;;;	RET
;==============================
YSL4000
	CALL	CRKNENL
;
	CALL	LDTIM0
	JR	NZ,YSL4010
;
	LD	(HL),$10
;
	CALL	ENSDCL
;
		jp	STATINC
;;;;;;;;	CALL	STATINC
;;;;;;;;	RET
YSL4010
	LD	E,$08
	AND	$04
	JR	Z,YSL4020
	LD	E,$F8
YSL4020
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),E
		jp	E5XCLC
;;;;;;;;	CALL	E5XCLC
;;;;;;;;	RET
;==============================
YSL5000
	CALL	CREPKEL
	CALL	E5MVCL
	CALL	YSBGCK
;
	CALL	LDTIM0
	JR	NZ,YSL5010
;
	LD	A,$0C
	CALL	PSERCHL
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),$18
;
	CALL	E5JPSD	;(S)
;
	CALL	STATINC
YSL5010
	LD	A,$03
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;	RET
;==============================
YSL6000
	CALL	CREPKEL
	CALL	E5MVCL
	CALL	YSBGCK
;
	LD	A,(ENHELP)
	AND	A
	JR	Z,YSL6010
;
	CALL	ENSDCL
;
	CALL	STATINC
	LD	(HL),$04
;
	CALL	LDTIM0
	LD	(HL),$20
;
	LD	HL,ENWRK0
	ADD	HL,BC
	DEC	(HL)
	JR	NZ,YSL6010
;
	CALL	STATINC
	LD	(HL),$06
;
	CALL	LDTIM0
	LD	(HL),$30
;
	LD	HL,ENMOD0
	ADD	HL,BC
	LD	(HL),%11010010
YSL6010
	LD	A,$02
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;	RET
;==============================
YSL7000
	CALL	LDTIM0
	JR	NZ,YSL7010
;
	LD	(HL),$50
;
	CALL	STATINC
	LD	(HL),B
;
	XOR	A
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;	RET
YSL7010
	LD	E,$03
	CP	$20
	JR	NC,YSL7050
	LD	E,$01
	CP	$10
	JR	C,YSL7050
	INC	E
YSL7050
	LD	A,E
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;	RET
;=======================================
YSBGCK
	LD	HL,ENHNFG
	ADD	HL,BC
	LD	(HL),$03
;
	CALL	ENBGCKL
;
	LD	HL,ENHNFG
	ADD	HL,BC
	LD	(HL),B
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	���r���� �Z�b�g			  %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
YUKABMV
	CALL	E5STCK
;
	LD	A,(ENSTAT2)
	RST	00
	DW	YKB1000
	DW	YKB2000
;---------------------------------------
YKB1000
	LD	A,(ENSVXL)
	AND	$70
	LD	(BSINDX),A		;Set paturn No. 0..7
;
	CALL	LDTIM0
	LD	(HL),$80
;
		jp	STATINC
;;;;;;;;	CALL	STATINC
;;;;;;;;	RET
;---------------------------------------
YBSTPS
;0
	DB	$23,$56,$26,$53,$32,$47,$42,$37
	DB	$33,$46,$43,$36,$24,$55,$25,$54
;1
	DB	$21,$28,$53,$56,$34,$45,$35,$44
	DB	$31,$48,$38,$41,$14,$66,$15,$63
;2
	DB	$31,$45,$38,$44,$13,$56,$16,$53
	DB	$27,$42,$47,$22,$65,$33,$64,$36
;3
	DB	$23,$56,$26,$53,$32,$47,$42,$37
	DB	$33,$46,$43,$36,$24,$55,$25,$54
;4
	DB	$23,$56,$26,$53,$32,$47,$42,$37
	DB	$33,$46,$43,$36,$24,$55,$25,$54
;5
	DB	$23,$56,$26,$53,$32,$47,$42,$37
	DB	$33,$46,$43,$36,$24,$55,$25,$54
;6
	DB	$23,$56,$26,$53,$32,$47,$42,$37
	DB	$33,$46,$43,$36,$24,$55,$25,$54
;7
	DB	$23,$56,$26,$53,$32,$47,$42,$37
	DB	$33,$46,$43,$36,$24,$55,$25,$54
YKBSPDT
	DB	$30 ;0
	DB	$30 ;1
	DB	$30 ;2
	DB	$30 ;3
	DB	$30 ;4
	DB	$30 ;5
	DB	$30 ;6
	DB	$28 ;7
	DB	$28 ;8
;- - - - - - - - - - - - - - - - - - - - - - - - - - 
YKB2000
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	CP	16
	JP	Z,E5CLER
;
	CALL	LDTIM0
	JR	NZ,YKB2090
;
	PUSH	HL
;
	LD	A,(DNJNNO)
	LD	E,A
	LD	D,B
	LD	HL,YKBSPDT
	ADD	HL,DE
	LD	A,(HL)
	POP	HL
	LD	(HL),A
;
	LD	A,BGKAO
	CALL	ENIDSHL
	JR	C,YKB2090
;
	LD	HL,ENWRK0
	ADD	HL,DE
	LD	(HL),$02
;
	PUSH	BC
;
	LD	A,(BSINDX)
;
	LD	HL,ENCONT
	ADD	HL,BC
	ADD	A,(HL)
	INC	(HL)
	LD	C,A
;
	LD	HL,ENWRK3
	ADD	HL,DE
;
	LD	A,(ENSVYL)
	SUB	%00010000
	AND	%11110000
	JR	Z,YBS019
;
	LD	(HL),A ;$02	;���o��I
YBS019
	LD	A,C
	CP	15
	JR	NZ,YBS020
;
	LD	A,(NAZOFG)
	AND	%00011111
	CP	$03
	JR	NZ,YBS020	;�X�C�b�`�֌W ��H
;				;yes !
	LD	(HL),$01	;�Ō�ɃX�C�b�`�o���I
;
YBS020
	LD	HL,YBSTPS
	ADD	HL,BC
	LD	A,(HL)
	PUSH	AF
;
	SWAP	A
	AND	$F0
	OR	$08
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A
;
	POP	AF
	AND	$F0
	ADD	A,$10
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,ENMOD0
	ADD	HL,DE
	LD	(HL),%00010010
	LD	HL,ENMOD1
	ADD	HL,DE
	LD	(HL),%00000000
	LD	HL,ENMOD3
	ADD	HL,DE
	LD	(HL),%00000000
;
	LD	HL,ENMOD2
	ADD	HL,DE
	LD	(HL),%00000000
;
	POP	BC
YKB2090
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	���߂��			  %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
AMENBCD
	DB	$70,$00,$70,$20
	DB	$72,$00,$72,$20
;
AMENBMV
	LD	DE,AMENBCD
	CALL	EN2CST
;
	CALL	E5STCK
;
	CALL	E5HNSB
;
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	RRA
	AND	$01
	CALL	ENPTST
;
	CALL	E5MVCL
	CALL	ENBGCKL
;
	LD	HL,ENCBFG
	ADD	HL,BC
	LD	A,(HL)
	AND	%00001111
	JR	Z,AME0010
;
	CALL	LDTIM0
	LD	(HL),$10
;
	CALL	ENSDCL
;
	CALL	STATINC
	XOR	A
	LD	(HL),A
	LD	(ENSTAT2),A
AME0010
	CALL	CREPKEL
;
	LD	A,(ENSTAT2)
	RST	00
	DW	AME1000
	DW	AME2000
	DW	AME3000
;==========================
AME1000
	CALL	LDTIM0
	JR	NZ,AME1010
;
	LD	(HL),$20
;
	CALL	STATINC
;
	CALL	RNDSUB
	AND	$02
	DEC	A
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	(HL),A
;
	CALL	RNDSUB
	AND	$02
	DEC	A
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	(HL),A
AME1010
	RET
;===========================
AME2000
	CALL	LDTIM0
	JP	Z,STATINC
;
	AND	$01
	JR	NZ,AME2050
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,BC
	ADD	A,(HL)
	LD	(HL),A	
;
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	A,(HL)
;;;KK;;;	LD	HL,ENYSPD
;;;KK;;;	ADD	HL,BC
	CALL	E5ENYSPD_ADR
	ADD	A,(HL)
	LD	(HL),A	
AME2050
	RET
;===========================
AME3000
	LD	A,(FRCNT)
	AND	$01
	JR	NZ,AME3090
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	NZ,AME3010
;
	CALL	STATINC
	LD	(HL),B
;
	CALL	LDTIM0
	LD	(HL),$10
	RET
AME3010
	CALL	AMEDOWN
;
;;;KK;;;	LD	HL,ENYSPD
;;;KK;;;	ADD	HL,BC
	CALL	E5ENYSPD_ADR
	LD	A,(HL)
AMEDOWN
	BIT	7,A
	JR	Z,AME3020
	INC	(HL)
	INC	(HL)
AME3020
	DEC	(HL)
AME3090
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�T�C�R��			  %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
DAISUCD
	DB	$60,$03,$62,$03
	DB	$64,$03,$66,$03
	DB	$62,$63,$60,$63
	DB	$66,$63,$64,$63
;
	DB	$66,$23,$64,$23
;
DAISUMV
	LD	HL,ENJYUN
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,DAI0E0	;�T�u�T�C�R���C���f�N�X�Z�b�g!
;
	LD	A,C
	LD	(BSINDX),A
DAI0E0
	LD	DE,DAISUCD
	CALL	EN2CST
;
	CALL	E5STCK
;
	CALL	E5MVCL
	CALL	E5ZCLC
	CALL	ENBGCKL
;
	LD	HL,ENZSPD
	ADD	HL,BC
	DEC	(HL)
	DEC	(HL)
;
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	LD	(ENHELP),A
	DEC	A
	AND	%10000000
	JR	Z,DAI000
;
	LD	(HL),B
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	A,(HL)
	LD	(ENHELP2),A
	SRA	A
	CPL
	CP	$07
	JR	NC,DAI0F0 
;
	XOR	A
DAI0F0 
	LD	(HL),A
;
DAI000
	LD	A,(ENSTAT2)
	RST	00
	DW	DAI1000
	DW	DAI2000
	DW	DAI3000
	DW	DAI4000
	DW	DAI5000
;=====================================
DAI1000
;=====================================
DAI2000
		jp	DACACK
;;;;;;;;	CALL	DACACK
;;;;;;;;	RET
;=====================================
DAIXSD
	DB	$00,$0C,$10,$0C,$00,$F4,$F0,$F4
DAIYSD
	DB	$F0,$F4,$00,$0C,$10,$0C,$00,$F4
;
DAIATAD
	DB	0,1,4,0
;
DAI3000
	CALL	LDTIM0
	JR	NZ,DAI3002
;
	CALL	ENSDCL
;
	CALL	STATINC
;
	CALL	RNDSUB
	AND	$03
	LD	E,A
	LD	D,B
	LD	HL,DAIATAD
	ADD	HL,DE
	LD	A,(HL)
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;	RET
DAI3002
	AND	$07
	JR	NZ,DAI3003
;
	LD	HL,ENCHPT
	ADD	HL,BC
	LD	A,(HL)
	INC	A
	AND	$03
	LD	(HL),A
DAI3003
	LD	A,(ENHELP)
	DEC	A
	AND	%10000000
	JR	Z,DAI3050
;
	CALL	DAI3058
;
	LD	A,(ENHELP2)
	SUB	$FC
	AND	%10000000
	JR	NZ,DAI3008
;
	LD	A,(FRCNT)
	AND	$07
	JR	NZ,DAI3050
;
DAI3008
	CALL	RNDSUB
	AND	$01
	LD	E,$01
	JR	Z,DAI3010
	LD	E,$FF
DAI3010				
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	A,(HL)
	ADD	A,E
	AND	$07
	LD	(HL),A
;
	LD	E,A
	LD	D,B
	LD	HL,DAIXSD
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
	LD	HL,DAIYSD
	ADD	HL,DE
	LD	A,(HL)
;;;KK;;;	LD	HL,ENYSPD
;;;KK;;;	ADD	HL,BC
	CALL	E5ENYSPD_ADR
	LD	(HL),A
;
	CALL	DAI3058
DAI3050
	LD	HL,ENCBFG
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,DAI3060
;
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	A,(HL)
	XOR	%00000100
	LD	(HL),A
;
	CALL	LDTIM0
	SRL	(HL)
;
	LD	HL,ENXSPD
	CALL	DTURN
;
	LD	HL,ENYSPD
DTURN
	ADD	HL,BC
	LD	A,(HL)
	CPL
	SRA	A
	INC	A
	LD	(HL),A
;
DAI3058
	LD	HL,ENSHMK
	ADD	HL,BC
	LD	(HL),$FF
DAI3060
	RET
;=====================================
DAI4000
;;;	CALL	DACACK
;
	LD	HL,ENJYUN
	ADD	HL,BC
	LD	A,(HL)
	AND	A
		ret	NZ
;;;;;;;;	JR	NZ,DAI4020
;
	LD	A,(BSINDX)
	LD	E,A
	LD	D,B
	LD	HL,ENSTAT
	ADD	HL,DE
	LD	A,(HL)
	CP	$03
		ret	NZ		;�����~�����H
;;;;;;;;	JR	NZ,DAI4020	;�����~�����H
;				;YES !
	INC	(HL)
	CALL	STATINC
;
	LD	A,(ENCHPT2)
	CP	$00
	JR	NZ,DAI4010
;
	LD	HL,ENCHPT
	ADD	HL,DE
	LD	A,(HL)
	CP	$00
	JP	Z,NAZOCLR	;(S)
DAI4010
	LD	HL,ENTIM0
	ADD	HL,DE
	LD	(HL),$40
;
	CALL	LDTIM0
	LD	(HL),$40
;
	JP	NOSDST	;(S)	�c�O���I
;;;;;;;;DAI4020
;;;;;;;;	RET
;=====================================
DAI5000
	CALL	LDTIM0
	CP	$01
	JR	NZ,DAI5010
;
;;	XOR	A
	LD	A,$01
	CALL	ENPTST	;�����Z�b�g�I
DAI5010
		jp	DACACK
;;;;;;;;	CALL	DACACK
;;;;;;;;;
;;;;;;;;	RET
;=====================================
DACACK
	CALL	CRENPSL
;;	CALL	CRENPLL
	JR	NC,DAI090
;
	LD	A,(POWDRTM)
	AND	A
	JR	NZ,DAI090
;
	LD	A,(ITEMB)
	CP	PBULE
	JR	NZ,DAI020	; Bulesret check !
;
	LD	A,(KEYA2)
	AND	%00100000
	JR	NZ,DAI030
	JR	DAI090
DAI020
	LD	A,(ITEMA)
	CP	PBULE
	JR	NZ,DAI090
;
	LD	A,(KEYA2)
	AND	%00010000
	JR	Z,DAI090
;
DAI030
	LD	A,(WPLCAMD)
	AND	A
	JR	NZ,DAI090
;
;;	LD	A,$01
	INC	A
	LD	(WPLCAMD),A
;
	CALL	STATINC
	LD	(HL),$02
;
	LD	HL,ENMODE
	ADD	HL,BC
	LD	(HL),ECACH
;
	LD	HL,ENCAST
	ADD	HL,BC
	LD	(HL),B
;
	LD	A,(PLCMKI)
	LD	(PLCAMK),A
;
	CALL	LDTIM0
	LD	(HL),$02
;
	LD	HL,SOUND2
	LD	(HL),$02	;(S)
DAI090
	RET
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�g�Q�]�[							%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
INOSICD
	DB	$70,$00,$70,$20
	DB	$72,$00,$72,$20
	DB	$74,$00,$74,$20
	DB	$76,$00,$76,$20
INOSICD2
	DB	$60,$00,$60,$20
	DB	$62,$00,$62,$20
	DB	$64,$00,$64,$20
	DB	$66,$00,$66,$20
;- - - - - - - - - - - - - - - - - - -
INOSIMV
	LD	DE,INOSICD
	LD	A,(DNJNNO)
	CP	$03
	JR	NZ,INCS010	;Dundeon 4 ?
;				; YES !
	LD	DE,INOSICD2
INCS010
	CALL	EN2CST
;
	CALL	E5STCK
;
	LD	HL,ENHNFG
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,IN000
;
	CALL	ENSDCL
IN000
	CALL	E5HNSB
;
	CALL	CREPKEL
;
	CALL	E5MVCL
	CALL	E5ZCLC
;
	CALL	ENBGCKL
;
	LD	HL,ENZSPD
	ADD	HL,BC
	DEC	(HL)
	DEC	(HL)
;
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	BIT	7,A
	JR	NZ,IN2001
	AND	A
	JR	NZ,IN2005
IN2001
	LD	(HL),B
;
	LD	A,(ENSTAT2)
	CP	$03
	JR	NZ,IN2003
;
	LD	HL,ENXSPD
	ADD	HL,BC
	SRA	(HL)
;
;;;KK;;;	LD	HL,ENYSPD
;;;KK;;;	ADD	HL,BC
	CALL	E5ENYSPD_ADR
	SRA	(HL)
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	A,(HL)
	SRA	A
	CPL
	LD	(HL),A
	CP	$07
		jp	NC,IN2005
;;;;;;;;	JR	NC,IN2002
;
	LD	(HL),B
;
	CALL	ENSDCL
	JR	IN2005
;;;;;;;;IN2002
;;;;;;;;	JR	IN2005
;
;
;
IN2003
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),B
;
IN2005
	LD	A,(ENSTAT2)
	CP	$04
	JR	C,IN2006
	RET
IN2006
	RST	0
	DW	INO1000  ;STOP 
	DW	INO1800  ; NOMAL WALK
	DW	INO2000  ;SERCH DUSH
	DW	INO3000  ;PATA PATA
;=======================================
INNXSD
	DB	$06,$FA,$00,$00
INNYSD
	DB	$00,$00,$FA,$06
;- - - - - - - - - - - - - - - - - - -
INO1000
	CALL	ENSDCL
;
	CALL	LDTIM0
	JR	NZ,INO1010
;
	CALL	RNDSUB
	AND	$1F
	ADD	A,$30
	LD	(HL),A
;
	CALL	STATINC
;
	CALL	RNDSUB
	AND	%00000110
	JR	NZ,INO1008
;
	CALL	E5XYCK
	JR	INO1009
INO1008
	CALL	RNDSUB
	AND	$03
	LD	E,A
INO1009
	LD	D,B
	LD	HL,INNXSD
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
	LD	HL,INNYSD
	ADD	HL,DE
	LD	A,(HL)
;;;KK;;;	LD	HL,ENYSPD
;;;KK;;;	ADD	HL,BC
	CALL	E5ENYSPD_ADR
	LD	(HL),A
INO1010
	JR	INSUB
;;	RET
;======================================
INO1800
	CALL	LDTIM0
	JR	NZ,INO1828
;
	LD	(HL),$18
;
	CALL	STATINC
	LD	(HL),B
INO1828
	CALL	INMVPS
;
INSUB
	LD	HL,ENMOD1
	ADD	HL,BC
	LD	(HL),%10000000
	LD	HL,ENMOD3
	ADD	HL,BC
	LD	(HL),%01001000
;
	CALL	E5XCHK
	ADD	A,$06
	CP	$0A
	JR	C,INO1810
;
	CALL	E5YCHK
	ADD	A,$06
	CP	$0A
	JR	NC,INO1820
;
INO1810
	CALL	E5XYCK
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	(HL),E
;
	CALL	STATINC
;
	CALL	LDTIM0
	LD	(HL),$FF
;- - - - - - - - - - - - - - - - - - - - - - - -
INO1820
	RET
;
;
;
;
;
;
;
;	CALL	LDTIM0
;	JR	NZ,IN1010
;;
;	CALL	STATINC
;;
;	CALL	E5XYCK
;
;;	LD	HL,ENMUKI
;	ADD	HL,BC
;	LD	(HL),E
;IN1010
;	JR	INMVPS
;=======================================
INOXSD
	DB	$18,$E8,$00,$00
INOYSD
	DB	$00,$00,$E8,$18
;- - - - - - - - - - - - - - - - -
INO2000
;- - - - - - - - - - - - - - - - -
	CALL	LDTIM0
	JR	Z,IN2033
;
;;	CALL	E5XYCK
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	E,(HL)
	LD	D,B
;
	LD	HL,INOXSD
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,BC
	SUB	(HL)
	JR	Z,IN2010
	AND	%10000000
	JR	NZ,IN2008
;
	INC	(HL)
	INC	(HL)
IN2008
	DEC	(HL)
IN2010
	LD	HL,INOYSD
	ADD	HL,DE
	LD	A,(HL)
;;;KK;;;	LD	HL,ENYSPD
;;;KK;;;	ADD	HL,BC
	CALL	E5ENYSPD_ADR
	SUB	(HL)
	JR	Z,IN2020
	AND	%10000000
	JR	NZ,IN2018
;
	INC	(HL)
	INC	(HL)
IN2018
	DEC	(HL)
IN2020
IN2030
	LD	HL,ENCBFG
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,IN2038
;
IN2033
	CALL	STATINC
	LD	(HL),B
IN2038
;------------------------------
INMVPS
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	RRA
	AND	$01
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;	RET
;=======================================
INO3000
	LD	HL,ENMOD3
	ADD	HL,BC
	LD	(HL),%00001000
	LD	HL,ENMOD1
	ADD	HL,BC
	LD	(HL),%00000000
;
;	CALL	E5ZCLC
;	LD	HL,ENZSPD
;	ADD	HL,BC
;	DEC	(HL)
;	DEC	(HL)
;;
;	LD	HL,ENZPSL
;	ADD	HL,BC
;	LD	A,(HL)
;	AND	%10000000
;	JR	Z,IN3018
;;
;	LD	(HL),B
;;
;	LD	HL,ENXSPD
;	ADD	HL,BC
;	SRA	(HL)
;;
;	LD	HL,ENYSPD
;	ADD	HL,BC
;	SRA	(HL)
;;
;	LD	HL,ENZSPD
;	ADD	HL,BC
;	LD	A,(HL)
;	SRA	A
;	CPL
;	LD	(HL),A
;	CP	$07
;	JR	NC,IN3018
;;
;	LD	(HL),B
;;
;	LD	HL,ENXSPD
;	ADD	HL,BC
;	LD	(HL),B
;	LD	HL,ENYSPD
;	ADD	HL,BC
;	LD	(HL),B
;IN3018
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	RRA
	AND	$01
	INC	A
	INC	A
	CALL	ENPTST
;
	CALL	LDTIM0
	JR	NZ,IN3050
;
	CALL	STATINC
	LD	(HL),B
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),$18
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),B
	RET
;
IN3050
	CP	$60
	JR	NC,IN3060
;
	AND	%00000100
	LD	A,$08
	JR	NZ,IN3058
	LD	A,$F8
IN3058
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
IN3060
;;	CALL	E5MVCL
;
	LD	HL,ENHNFG
	ADD	HL,BC
	LD	A,(HL)
	PUSH	AF
	LD	(HL),$01
	CALL	ENBGCKL
	POP	AF
	LD	HL,ENHNFG
	ADD	HL,BC
	LD	(HL),A
	RET
;===============================================
;=					       =
;===============================================
HEMKCD
	DB	$6,$4,$2,$0
;
HEIS0MV
	LD	A,(DNJNNO)
	CP	$15
	JR	NZ,H0M10E0	;���A�H
;				;YES !
	LD	A,(WANFLG)
	CP	$80
	JP	NZ,E5CLER
;
H0M10E0
	CALL	HEIS0CS
;
	CALL	E5STCK
;
	LD	A,(DNJNNO)
	CP	$15
	JR	Z,HES00F
;
	LD	HL,ENHNFG
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,HES010
;
HES00F
	CALL	HEATST2
HES010
	CALL	E5HNSB
;
	CALL	CRKNKNL
	CALL	CREPKEL
;
	LD	A,(ENSTAT2)
	RST	0
	DW	HEM0000
	DW	HEM1000
	DW	HEM2000
;
HATCK	EQU	2
;===============================================
HEMXSD
	DB	$06,$FA,$00,$00
HEMYSD
	DB	$00,$00,$FA,$06
;
HEM0000
	CALL	ENBGCKL
;
;;	LD	A,$00
	LD	HL,ENCONT
	ADD	HL,BC
	LD	(HL),$00 ;A
;
	CALL	HEATCK	; Atack check !
;
;;	LD	HL,ENTIM0
;;	ADD	HL,BC
;;	LD	A,(HL)
	CALL	LDTIM0
;;	AND	A
	JR	NZ,HEM010
;
;;	LD	A,$80
	LD	(HL),$80 ;A
;
	CALL	STATINC
HEMKTR
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	A,(HL)
	XOR	$1
	LD	(HL),A
;
	LD	E,A
	LD	D,B ;$0
	LD	HL,HEMXSD
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
	LD	HL,HEMYSD
	ADD	HL,DE
	LD	A,(HL)
;;;KK;;;	LD	HL,ENYSPD
;;;KK;;;	ADD	HL,BC
	CALL	E5ENYSPD_ADR
	LD	(HL),A
HEM010
	RET
;===============================================
HEM1000
	CALL	HEATCK	; Atack check !
;
	LD	HL,ENCBFG
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,HEM110
;
	CALL	HEMKTR
HEM110
	CALL	E5MVCL
	CALL	ENBGCKL
	CALL	M5PTST
;
;;	LD	HL,ENTIM0
;;	ADD	HL,BC
;;	LD	A,(HL)
	CALL	LDTIM0
;;	AND	A
	JR	NZ,HEM150
;
;;	LD	A,$30
	LD	(HL),$30 ;A
;
STATCLR2
	CALL	STATINC
	LD	(HL),B
;;	CALL	STATCLR
HEM150
	RET
;===============================================
HEM2000
;	LD	HL,ENTIM1
;	ADD	HL,BC
;	LD	A,(HL)
;;;	CP	$01
;	AND	A
	CALL	LDTIM1
	JR	Z,HEM2001
;
	LD	A,(SBHR)
	CP	$04
	JR	NZ,HEM2001	;�t�F�[�h�I���H
;				;YES !
	LD	A,(DNJNNO)
	CP	$15
	JR	NZ,HEM2001	;�����������A�H
;				;YES !
	LD	HL,ENWRK2
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	NZ,HEM218
;
	INC	(HL)
;
;	LD	A,(GRNDPT)
;	CP	$F0
;	LD	A,$91
;	JR	NZ,HEM20008
	LD	A,$90
;HEM20008
	CALL	MSGCH2	;����ׂ�I
	JR	HEM218
HEM2001
	LD	A,(HL)
	AND	A
	JR	NZ,HEM218
;
;;	LD	HL,ENTIM0
;;	ADD	HL,BC
;;	LD	A,(HL)
	CALL	LDTIM0
;;	AND	A
	JR	NZ,HEM210
;
;;	LD	A,$18
	LD	(HL),$18 ;A
	CALL	STATCLR2
HEM210
	CALL	M5PTST
	CALL	M5PTST
	CALL	E5MVCL
	CALL	ENBGCKL
;
	LD	A,(FRCNT)
	XOR	C
	AND	$F
		ret	NZ
;;;;;;;;	JR	NZ,HEM220
;
	LD	A,$0A
	CALL	PSERCHL
;
HEM218
	CALL	E5XYCK
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	(HL),A
		jp	M5PTST
;;;;;;;;	CALL	M5PTST
;;;;;;;;HEM220
;;;;;;;;	RET
;===============================================
ATCKMK
	DB	$1,$0,$3,$2
;
HEATCK
	LD	A,(OTOFLG)
	AND	A
	JR	NZ,HEATST
;
	CALL	E5XCHK
	ADD	A,$30
	CP	$60
	JR	NC,HEAT90
	CALL	E5YCHK
	ADD	A,$30
	CP	$60
	JR	NC,HEAT90
;
	CALL	E5XYCK
;
;;;	LD	E,A
	LD	D,B ;$0
	LD	HL,ATCKMK
	ADD	HL,DE
	LD	A,(HL)
;
	LD	HL,ENMUKI
	ADD	HL,BC
	CP	(HL)
	JR	Z,HEAT90
;
HEATST
HEATST2
	LD	HL,ENSTAT
	ADD	HL,BC
	LD	A,(HL)
	CP	HATCK
	JR	Z,HEAT30
;
	PUSH	HL
;
;;	LD	A,$10
;	LD	HL,ENTIM1
;	ADD	HL,BC
	CALL	LDTIM1
	LD	(HL),$10 ;A
;
	POP	HL
HEAT30
;;	LD	A,$02
	LD	(HL),HATCK ;$02 ;A
;
;;	LD	HL,ENTIM0
;;	ADD	HL,BC
	CALL	LDTIM0
;;	LD	A,$80
	LD	(HL),$80 ;A
HEAT90
	RET
;
;
;
;
;
;
;
;	LD	A,(KEYA2)
;	AND	$01
;	JR	Z,HEI000
;;
;	LD	HL,ENCHPT
;	ADD	HL,BC
;	LD	A,(HL)
;	INC	A
;	AND	$7
;	LD	(HL),A
;HEI000
;	LD	A,(KEYA2)
;	AND	$02
;	JR	Z,HEI001
;;
;	LD	HL,ENCHPT
;	ADD	HL,BC
;	LD	A,(HL)
;	DEC	A
;	AND	$7
;	LD	(HL),A
;HEI001
;	RET
;
;===============================================================
;	�����L�����N�^�[�Z�b�g					
;===============================================================
HEKNXD
	DB	$00,$00,$F9,$F9,$F8,$F2,$08,$0E
HEKNYD
	DB	$08,$0E,$F8,$F2,$00,$00,$00,$00
HEKNCD
	DB	2,2,6,6,4,4,0,0
CRKNXD
	DB	$0C,$0C,$04,$04,$FC,$FC,$14,$14
CRKNYD
	DB	$14,$14,$FC,$FC,$0C,$0C,$0C,$0C
HEIS0CD
	DB	$60,$03,$62,$03
	DB	$62,$23,$60,$23
	DB	$64,$03,$66,$03
	DB	$66,$23,$64,$23
	DB	$68,$03,$6A,$03
	DB	$6C,$03,$6E,$03
	DB	$6A,$23,$68,$23
	DB	$6E,$23,$6C,$23
;
HEIS0CS
	CALL	O2MCHK
;
	LD	A,(ENCHPT2) ;HL)
	CP	$02
	JR	NC,HEC010
;
	CALL	HTATECS
HEC010
		LD	A,(ENCHPT2)	;�������H
		CP	$002		;	YES --> HEC020
		JR	Z,HEC020	;
		CP	$003		;
		JR	NZ,HEC030	;
;
HEC020
		LD	DE,HEIS0CD
		CALL	EN2CST
;
HEC030
;- - Ken cset - - 
	PUSH	BC
;
	LD	A,(ENDSYP)
	LD	(WORK0),A
	LD	A,(ENSVXL)
	LD	(WORK1),A
;
	LD	A,(ENCHPT2)
	LD	E,A
	LD	D,B ;$0
;
	LD	HL,CRKNXD
	ADD	HL,DE
	LD	A,(HL)
	LD	(ENKNSZ),A
;
	LD	HL,CRKNYD
	ADD	HL,DE
	LD	A,(HL)
	LD	(ENKNSZ+2),A
;
	LD	A,$2
	LD	(ENKNSZ+1),A
	LD	(ENKNSZ+3),A
;
	LD	HL,HEKNCD
	ADD	HL,DE
	LD	A,(HL)
	LD	(WORK2),A
;
	LD	HL,HEKNYD
	ADD	HL,DE
	LD	A,(HL)
;
	LD	HL,HEKNXD
	ADD	HL,DE
;
	LD	L,(HL)
	LD	H,A
	PUSH	HL
;
	LD	A,(ENOMID)
	LD	E,A
	LD	D,$0
	LD	HL,ENOAM
	ADD	HL,DE
		ld	c,l
		ld	b,h
;;10/31;	PUSH	HL
;;10/31;	POP	BC
;
	XOR	A
	LD	(WORK3),A
;
	POP	HL
;
	CALL	KNCSET
	LD	A,$02
	CALL	NXOMSBL
;
	POP	BC
;
		LD	A,(ENCHPT2)	;�������H
		CP	$002		;	YES --> return
		RET	Z		;
		CP	$003		;
		RET	Z		;
;
	LD	DE,HEIS0CD
		jp	EN2CST
;;;;;;;;	CALL	EN2CST
;;;;;;;;;
;;;;;;;;	RET
;
;-------------------------------------------------------
;	�����̎����Ă��鏂�L�����N�^�[�Z�b�g		
;-------------------------------------------------------
HTATECS
	XOR	$01
	PUSH	AF
;
	LD	A,(ENOMID)
	LD	L,A
	LD	H,$0
	LD	DE,ENOAM
	ADD	HL,DE
;
	POP	DE
	LD	A,(ENDSYP)  
	ADD	A,D
	ADD	A,$04
	LD	(HLI),A		; Y 
;
	LD	A,(ENSVXL)
	ADD	A,$FE
	LD	(HLI),A		; X 
;
	LD	A,$86
	LD	(HLI),A
;
	LD	(HL),$16 ;A
;
	LD	A,$01
		jp	NXOMSBL	
;;;;;;;;	CALL	NXOMSBL	
;;;;;;;;	RET
;################################################
;#	��					#
;################################################
; Danjyon Takaramono data 
;BUL	EQU	$0 ; Buleslet
;TAT	EQU	$1 ; Seeld
;BOW	EQU	$2 ; Bow
;FUC	EQU	$3 ; Fuck shot
;ROD	EQU	$4 ; Rods
;KTU	EQU	$5 ; Kutsu
;FUE	EQU	$6 ; Okarina
;WNG	EQU	$7 ; Wing
;BOK	EQU	$8 ; Book
;TBO	EQU	$9 ; Tsubo
;BMB	EQU	$A ; Bomb
;KEN	EQU	$B ; Ken  
;HRE	EQU	$C ; Hire 
;MEG	EQU	$D ; Megane
;YSI	EQU	$E ; Yoshi
;VTR	EQU	$F ; Video tape
;BIN	EQU	$10 ; Kushori bin
;;
;GK1	EQU	$11 ; Ground key 1
;GK2	EQU	$12 ; " 2
;GK3	EQU	$13 ; " 3
;GK4	EQU	$14 ; " 4
;GK5	EQU	$15 ; " 5
;;
;DMP	EQU	$16 ; Danjyon map
;KNP	EQU	$17 ; Konpass
;PND	EQU	$18 ; Pendant
;BKY	EQU	$19 ; Boss key
;SKY	EQU	$1A ; Small key
;C01	EQU	$1B ; Coin 1
;C10	EQU	$1C ; Coin 100
;C20	EQU	$1D ; Coin 200
;C50	EQU	$1E ; Coin 500
;
;;KAI	EQU	$1F ; �L�k
;;NOT	EQU	$20 ; Nothing
;;
;
TAKARCD_SUB
	DB	$82,$17	; �p���[�u���X���b�g ���x���Q
	DB	$86,$14 ; �݂����݂̏�
;
TAKARCD2 ;Obj chr data			�󔠂���o�Ă���A�C�e��
	DB	$82,$15 ; �p���[�u���X���b�g
	DB	$86,$15 ; ��
	DB	$88,$10 ; Bow
	DB	$8A,$10 ; Fuck shot
	DB	$8C,$14 ; �}�W�b�N���b�h
	DB	$98,$16 ; �y�K�T�X�̌C
	DB	$90,$17 ; �I�J���i
	DB	$92,$16 ; ���b�N���̉H��
	DB	$96,$10 ; Book
	DB	$8E,$10 ; Tsubo
	DB	$80,$15 ; �o�N�_��
	DB	$84,$10 ; Ken  
	DB	$94,$15 ; �A���O���[�̐�����
	DB	$9A,$10 ; Megane
	DB	$AE,$10 ; Yoshi
	DB	$9C,$10 ; Video tape
	DB	$A0,$14 ; Kushuri bin
;
	DB	$C0,$14 ; Ground key 1
	DB	$C2,$14 ; Ground key 2
	DB	$C4,$14 ; Ground key 3
	DB	$C6,$14 ; Ground key 4
	DB	$CA,$14 ; Ground key 5
;
	DB	$C0,$14	; �_���W���� �}�b�v
	DB	$C2,$15	; �R���p�X
	DB	$C4,$14	; �Δł̂�����
	DB	$C6,$14	; �{�X�����ւ̌�
;
	DB	$CA,$17	; �������J�M
	DB	$A6,$15 ; �T�O�R�C��
	DB	$A6,$15 ; �Q�O�R�C��
	DB	$A6,$15 ; �P�O�O�R�C��
	DB	$A6,$15 ; �Q�O�O�R�C��
	DB	$A6,$15 ; �T�O�O�R�C��
	DB	$9E,$14 ; �L�k
;
TAKARMSG  ; Mesege data !
	DB	$90 ; Buleslet
	DB	$91 ; Seeld
	DB	$92 ; Bow
	DB	$93 ; Fuck shot
	DB	$94 ; Rods
	DB	$95 ; Kutsu
	DB	$96 ; Okarina
	DB	$97 ; Wing
	DB	$98 ; Book
	DB	$99 ; Tsubo
	DB	$9A ; Bomb
	DB	$9B ; Ken  
	DB	$9C ; Hire 
	DB	$9D ; Megane
	DB	$9E ; Yoshi
	DB	$9F ; Video tape
	DB	$A0 ; Kushuri bin
;
	DB	$A1 ; Ground key 1
	DB	$A2 ; Ground key 2
	DB	$A3 ; Ground key 3
	DB	$A4 ; Ground key 4
	DB	$A5 ; Ground key 5
;
	DB	$A6 ; Danjyon map
	DB	$A7 ; Konpass
	DB	$A8 ; Pendant
	DB	$A9 ; Boss key
	DB	$AA ; Small key
	DB	$AC ; 50 rupy
	DB	$AB ; 20 rupys
	DB	$AD ; 100 rupys
	DB	$AE ; 200 rupys
	DB	$AE ; 500 rupys
	DB	$EF ; �L�k
	DB	$06 ; Not
;;
TAKARSDD  ; Fanfale data !
	DB	$10 ; Buleslet
	DB	$10 ; Seeld
	DB	$10 ; Bow
	DB	$10 ; Fuck shot
	DB	$10 ; Rods
	DB	$10 ; Kutsu
	DB	$10 ; Okarina
	DB	$10 ; Wing
	DB	$10 ; Book
	DB	$01 ; Tsubo
	DB	$01 ; Bomb
	DB	$10 ; Ken  
	DB	$10 ; Hire 
	DB	$10 ; Megane
	DB	$10 ; Yoshi
	DB	$10 ; Video tape
	DB	$01 ; Kushuri bin
;
	DB	$10 ; Ground key 1
	DB	$10 ; Ground key 2
	DB	$10 ; Ground key 3
	DB	$10 ; Ground key 4
	DB	$10 ; Ground key 5
;
	DB	$01 ; Danjyon map
	DB	$01 ; Konpass
	DB	$01 ; Pendant
	DB	$01 ; Boss key
	DB	$01 ; Small key
	DB	$01 ; 50 rupy
	DB	$01 ; 20 rupy
	DB	$01 ; 100 rupys
	DB	$01 ; 200 rupys
	DB	$01 ; 500 rupys
	DB	$01 ; �L�k
	DB	$00 ; Not
;;
TAKARMV
	LD	A,$02
	LD	(PLSTOP),A
;
	XOR	A
	LD	(PCUTFG),A
	LD	(WCUTFG),A
;
	LD	A,(ENCHPT2)
	CP	SLM
	JR	NZ,TKM00E0	;�X���C���o���I
;
	LD	A,SLIMB
	CALL	ENIDSHL
	JP	C,E5CLER
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
	LD	HL,ENZSPD
	ADD	HL,DE
	LD	(HL),$18
;
	LD	HL,ENZPSL
	ADD	HL,DE
	LD	(HL),$06
;
	LD	HL,ENTIM1
	ADD	HL,DE
	LD	(HL),$50	;BG�`�F�b�N�����I
;
	LD	HL,ENXSPD
	ADD	HL,DE
	LD	(HL),$08
;
	LD	HL,ENSTAT
	ADD	HL,DE
	LD	(HL),$03
;
	LD	A,$1D
	LD	(SOUND1),A	;(S)
	JP	E5CLER
TKM00E0
	CP	NOT
	JR	Z,TAKM000
;
		CP	BIN		;�g���C�V�[�̖�H
		JR	NZ,TKM00E0_700	;	NO --> TKM00E0_700
		LD	A,$001
		LD	(KBINF),A
;
TKM00E0_700
		LD	A,(CGBFLG)
		AND	A
		JR	Z,TKM00E0_900
		LD	A,(DNJNNO)
		CP	$005		;���x���U�_���W�����H
		JR	NZ,TKM00E0_800	;	NO --> TKM00E0_800
		LD	A,(GRNDPT)	;�p���[�u���X���b�g
		CP	$0CE		;	���x���Q�̂��镔���H
		JR	NZ,TKM00E0_900	;	NO --> TKM00E0_900
		JR	TKM00E0_880
;
TKM00E0_800
		CP	$006		;���x���V�_���W�����H
		JR	NZ,TKM00E0_900	;	NO --> TKM00E0_900
		LD	A,(GRNDPT)
		CP	$01A		;�݂����݂̏��̂��镔���H
		JR	NZ,TKM00E0_900	;	NO --> TKM00E0_900
TKM00E0_880
		LD	DE,TAKARCD_SUB
		JR	TKM00E5
TKM00E0_900
;
	LD	DE,TAKARCD2
TKM00E5
	CALL	EN1CST
;
TAKM000
	LD	A,(MSGEFG)
	AND	A
		ret	NZ
;;;;;;;;	JP	NZ,TKRM010
;
	CALL	E5MVCL
;
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	INC	A
	LD	(HL),A
	CP	$10
	JR	NZ,TKRM002
;
;;;KK;;;	LD	HL,ENYSPD
;;;KK;;;	ADD	HL,BC
	CALL	E5ENYSPD_ADR
	LD	(HL),$0
;
TKRM002
	CP	$08
	JR	NZ,TKRM003
;
	LD	A,(ENCHPT2)
	LD	E,A
	LD	D,B
	LD	HL,TAKARSDD
	ADD	HL,DE
	LD	A,(HL)
	AND	A
	JR	Z,TKRM025
;
	CP	$01
	JR	NZ,TKRM023
;
	LD	A,$01
	LD	(SOUND1),A	;(S)
	JR	TKRM025
TKRM023
	LD	(SOUND4),A	;(S)
TKRM025
TKRM003
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	CP	$26
	JR	NZ,TKRM00C
;
	LD	A,(ENCHPT2)
	LD	E,A
	LD	D,B
	CP	NOT
	JR	NZ,TKRM006	;��H
;
	LD	A,(GRNDPT)	;YES !
	CP	$96
	JR	NZ,TKRM006	;�K�C�R�c�{�X�����񂾁H
;				;yes !
	LD	A,$11		;��p���b�Z�[�W�I
	CALL	MSGCH2
	JR	TKRM00B
TKRM006
	LD	A,E
	CP	TAT
	JR	NZ,TKRM007T
;
	LD	A,(TATLEV)
	CP	$02
	JR	NZ,TKRM007T
;
	LD	A,$ED	;���x���Q!
	JR	TKRM078
TKRM007T
	LD	A,E
	CP	KEN
	JR	NZ,TKRM007K
;
	LD	A,(KENLEV)
	CP	$02
	JR	NZ,TKRM007K
;
	LD	A,$9F	;���x���Q!
	JR	TKRM078
TKRM007K
	LD	A,E
	CP	BUL
	JR	NZ,TKRM007
;
	LD	A,(BULLEV)
	CP	$02
	JR	NZ,TKRM007
;
	LD	A,$EE	;���x���Q!
	JR	TKRM078
TKRM007
	LD	HL,TAKARMSG
	ADD	HL,DE
;
	LD	A,(HL)
TKRM078
	CALL	MSGCHK
TKRM00B
	XOR	A
TKRM00C
	CP	$28
		ret	NZ
;;;;;;;;	JR	NZ,TKRM010
;
		jp	E5CLER
;;;;;;;;	CALL	E5CLER
;;;;;;;;;
;;;;;;;;TKRM010
;;;;;;;;	RET
;\\\  ���ʃ��[�`��
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%					%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
M5CROS
	CALL	CRENPSL
	JR	NC,M520E0
;
M5CRSB
	CALL	PLPSRV
;
	CALL	DUSHCL2
;
	LD	A,(PFUCKID)
	AND	A
	JR	Z,M520D0
;	
	LD	E,A
	LD	D,B
	LD	HL,ENMYNO-1
	ADD	HL,DE
	LD	A,(HL)
	CP	FUCKS
	JR	NZ,M520D0
;
	LD	HL,ENSTAT-1	; Fuck return
	ADD	HL,DE
	LD	(HL),$00
M520D0
	SCF
	RET	
M520E0
	AND	A
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%					%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
M5MVPT
	DB	$06,$04,$02,$00
;
M5PTST
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	E,(HL)
;;	LD	E,A
	LD	D,B ;$0
	LD	HL,M5MVPT
	ADD	HL,DE
;
	PUSH	HL
	LD	HL,ENCONT
	ADD	HL,BC
	INC	(HL)
;
	LD	A,(HL)  ;(FRCNT)
	RRA	
	RRA	
	RRA	
	RRA	
	POP	HL
	AND	%00000001
	OR	(HL)
;
	JP	ENPTST
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%					%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;----------------------------------
KMMSCK	;���ܗp�I
	LD	E,B
;
	LD	A,(PLYPSL)
	LD	HL,ENSVYL
	SUB	(HL)
	ADD	A,$14
	CP	$38
	JR	E5MSSB
;
E5MSCK
	LD	E,B
;
	LD	A,(PLYPSL)
	LD	HL,ENSVYL
	SUB	(HL)
	ADD	A,$14
	CP	$28
E5MSSB
	JR	NC,E5C0A0
;
	LD	A,(PLXPSL)
	LD	HL,ENSVXL
	SUB	(HL)
	ADD	A,$10
	CP	$20
	JR	NC,E5C0A0
;
	INC	E
;
	LD	A,(ENMYNO2)
	CP	KUMA0
	JR	Z,E5C022
;
	PUSH	DE
	CALL	E5XYCK
	LD	A,(PLCMKI)
	XOR	$01
	CP	E
	POP	DE
	JR	NZ,E5C0A0
;
E5C022
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
	JR	NZ,E5C0A0
;
	LD	A,(WNDYPS)
	CP	$80
	JR	NZ,E5C0A0
;
	LD	A,(KEYA2)
	AND	%00010000
	JR	Z,E5C0A0
;
	SCF
	RET
E5C0A0
	AND	A	; (C) reset !
	RET
;============================================
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%				 %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;---------------------------------
E5STCK
	LD	A,(ENMODE2)
	CP	EMOVE
	JR	NZ,E5TC12
;
E5STCK2
	LD	A,(GMMODE)
	CP	GMAP
	JR	Z,E5TC12
;
		cp	GPLAY
		jr	nz,E5TC12	; �Q�[�����[�h�@�H
;					; Yes !!
		ld	a,(SBHR)
		cp	004
		jr	nz,E5TC12	; �t�F�[�h���@�H
;					; No !!
	LD	A,(MSGEFG)
;;	AND	A
	LD	HL,ENSTFG
	OR	(HL)
	LD	HL,WNDFLG
	OR	(HL)
	JR	NZ,E5TC12
;
	LD	A,(SCRLFG)
	AND	A
	JR	Z,E5TCF0
E5TC12
	POP	AF
E5TCF0
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%						    %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
E5HNSD
;;	DB	$0,$0,$0,$0,$0
;;;	DB	$7,$3,$1,$0,$0
E5HNSB
	LD	HL,ENHNFG
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,E5HN90
;
	DEC	A
	LD	(HL),A
;
;;	PUSH	AF
	CALL	HNSMST
;;	POP	AF
;
;;	PUSH	AF
;;	SRL	A
;;	SRL	A
;;	LD	E,A
;;	LD	D,B ;$0
;;	LD	HL,E5HNSD
;;	ADD	HL,DE
;;	POP	AF
;;	AND	(HL)
;;	JR	NZ,E5HN30
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	A,(HL)
	PUSH	AF
;;;KK;;;	LD	HL,ENYSPD
;;;KK;;;	ADD	HL,BC
	CALL	E5ENYSPD_ADR
	LD	A,(HL)
	PUSH	AF
;
	LD	HL,ENHNXS
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
;
	LD	HL,ENHNYS
	ADD	HL,BC
	LD	A,(HL)
;;;KK;;;	LD	HL,ENYSPD
;;;KK;;;	ADD	HL,BC
	CALL	E5ENYSPD_ADR
	LD	(HL),A
;
	CALL	E5MVCL
;
	LD	HL,ENMOD3
	ADD	HL,BC
	LD	A,(HL)
	AND	%00100000
	JR	NZ,E5HN28
;
	CALL	ENBGCKL
E5HN28
;;;KK;;;	LD	HL,ENYSPD
;;;KK;;;	ADD	HL,BC
	CALL	E5ENYSPD_ADR
	POP	AF
	LD	(HL),A
;
	LD	HL,ENXSPD
	ADD	HL,BC
	POP	AF
	LD	(HL),A
E5HN30
	POP	AF
E5HN90
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%				 %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
E5MVCL	
;
	CALL	E5XCLC 		; X calc
;
E5YCLC
	PUSH	BC
	LD	A,C
	ADD	A,<ENNO
	LD	C,A
	
	CALL	E5XCLC		; Y calc
	POP	BC
	RET
;-----------------------------------------
E5XCLC
	LD	HL,ENXSPD
	ADD	HL,BC 
;
	LD	A,(HL)
	AND	A
	JR	Z,E5L090
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
	LD	HL,ENXPSL
E5L00
	ADD	HL,BC 
;
	POP	AF
;
	LD	E,$0
	BIT	7,A
	JR	Z,E5C00
	LD	E,$F0
E5C00
	SWAP	A
	AND	$0F
	OR	E
	RR	D
	ADC	A,(HL)
	LD	(HL),A
E5L090
	RET
;====================================================
E5ZCLC
	LD	HL,ENZSPD
	ADD	HL,BC 
;
	LD	A,(HL)
	AND	A
	JR	Z,E5L090
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
	LD	HL,ENZPSL
	JR	E5L00
;====================================
E5XCHK
	LD	E,$0
;
	LD	A,(PLXPSL)
	LD	HL,ENXPSL
	ADD	HL,BC
	SUB	(HL)
	BIT	7,A
	JR	Z,E5X010
;;	JR	NC,E5X010
	INC	E
E5X010
	LD	D,A
	RET
;====================================
E5YCHK
	LD	E,$2
;
	LD	A,(PLYPSL)
	LD	HL,ENYPSL
	ADD	HL,BC
	SUB	(HL)
	BIT	7,A
	JR	NZ,E5Y010
;;	JR	C,E5Y010
	INC	E
E5Y010
	LD	D,A
	RET
;====================================
E5XYCK
	CALL	E5XCHK
	LD	A,E
	LD	(WORK0),A
;
	LD	A,D
	BIT	7,A
	JR	Z,E52010
	CPL
	INC	A
E52010
	PUSH	AF
;
	CALL	E5YCHK
	LD	A,E
	LD	(WORK1),A
;
	LD	A,D
	BIT	7,A
	JR	Z,E5Y020
	CPL
	INC	A
E5Y020
	POP	DE
	CP	D
	JR	NC,E5Y030
;
	LD	A,(WORK0)
	JR	E5Y050
E5Y030
	LD	A,(WORK1)
E5Y050
	LD	E,A
	RET
;============================
E5CLER
	LD	HL,ENMODE
	ADD	HL,BC
	LD	(HL),B
	RET
;=====================================
BSFLSB5
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	A,(HL)
	RST	00
	DW	N5L1000
	DW	N5L1800
	DW	N5L2000
;-------------------------------------
N5L1000
	CALL	LDTIM0
	LD	(HL),$A0
;
	LD	HL,ENFLSH
	ADD	HL,BC
	LD	(HL),$FF
;
INCWR51
	LD	HL,ENWRK1
	ADD	HL,BC
	INC	(HL)
	RET
;-------------------------------------
N5L1800
	CALL	LDTIM0
		ret	NZ
;;;;;;;;	JR	NZ,N5L1810
;
	LD	(HL),$C0
;
	LD	HL,ENFLSH
	ADD	HL,BC
	LD	(HL),$FF
;
		jp	INCWR51
;;;;;;;;	CALL	INCWR51
;;;;;;;;N5L1810
;;;;;;;;	RET
;-------------------------------------
N5L2000
	CALL	LDTIM0
	JR	NZ,N5L2010
;
	LD	A,(ENMYNO2)
	CP	BSKEL
	JR	NZ,N5L2008
;
	LD	A,KEYSM	;�ӂ���shot ;KAKER	;??????
	CALL	ENIDSHL
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
	LD	HL,ENZSPD
	ADD	HL,DE
	LD	(HL),$18
;
	LD	HL,ENTIM1
	ADD	HL,DE
	LD	(HL),$20
;
;;	CALL	SOUNDCLR	;(S)
;
	LD	HL,ENWRK4
	ADD	HL,BC
	LD	A,(HL)
	LD	(BGMNO),A
;
	JP	E5CLBB	;(S)
N5L2008
	CALL	BBSDST	;(S)
;
;;	LD	A,(BGMNO)
;;	LD	(SOUND4),A	;(S)
	CALL	BGMSET	;(S)
	JP	ENFEND
N5L2010
		jp	ESMRN5
;;;;;;;;	CALL	ESMRN5
;;;;;;;;	RET
;===========================================
ESMRN5
	AND	$07
		ret	NZ
;;;;;;;;	JR	NZ,K5L310
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
		jp	HBSMS5
;;;;;;;;	CALL	HBSMS5
;;;;;;;;K5L310
;;;;;;;;	RET
;
;===========================================
HBSMS5
	CALL	E5STCK2
;
	LD	A,(ENSVXL)
	LD	(WORK0),A
	LD	A,(ENDSYP)
	LD	(WORK1),A
;----------------------------------
SMKSDS5
	LD	A,SMK1
	CALL	EXIDSH
;
	LD	A,$13
	LD	(SOUND3),A	;(S)
;;	LD	A,$06
;;	LD	(SOUND1),A	;(S)
	RET
;
;---------------------------------------
HARTBS5
;;	CALL	SOUNDCLR	;(S)
;
	LD	A,HARTB
	CALL	ENIDSHL
;
	LD	A,(WORK0)
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A
	LD	A,(WORK1)
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	A,(YKFLAG)
	AND	A
	JR	Z,HBS510
;
;;;KK;;;	LD	HL,ENYSPD
;;;KK;;;	ADD	HL,BC
	CALL	E5ENYSPD_ADR
	LD	(HL),$F0
	JR	HBS520
HBS510
	LD	HL,ENZSPD
	ADD	HL,DE
	LD	(HL),$10
;
	LD	HL,ENZPSL
	ADD	HL,DE
	LD	(HL),$08
HBS520
E5CLBB
	CALL	E5CLER
;
	LD	HL,SOUND3
	LD	(HL),$1A	;(S)
;;	CALL	BBSDST	;(S)
	RET
;==============================
;==============================
;==============================
;==============================
;==============================
;==============================
;==============================
;==============================
;==============================
;==============================
;==============================
	END
;==============================
;==============================
;==============================
;==============================
;==============================
;==============================
;==============================
;==============================
;==============================
;==============================
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	��э~������              	  %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
TOBIUMV
	RET
	CALL	E5STCK
;
	CALL	E5XCHK
	ADD	A,$08
	CP	$10
	JR	NC,TBU010
;
	CALL	E5YCHK
	ADD	A,$10
	CP	$20
	JR	NC,TBU010
;
	LD	A,(PLJPFG)
	AND	A
	JR	NZ,TBU010
;
	LD	A,(DUSHFG)
	AND	A
	JR	NZ,TBU008
;
	LD	A,(KEYA1)
	AND	%0000100
	JR	Z,TBU010
;
	LD	A,(PLCBFG)
	AND	A
	JR	Z,TBU010
;
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	INC	A
	LD	(HL),A
	CP	$0C
	JR	C,TBU020
;
TBU008
	CALL	DUSHCL
;
	LD	A,$F0
	LD	(PLYSPD),A
;
	XOR	A
	LD	(PLXSPD),A
;
	LD	A,$1C
	LD	(PLZSPD),A
;
	JP	TOBISUB
;	LD	A,$02
;	LD	(PLJPFG),A
;;
;	LD	A,$01
;	LD	(BEDOFF),A	;BG �`�F�b�N����
;;
;	LD	A,$08
;	LD	(SOUND1),A	;(S)
TBU010
	LD	HL,ENCONT
	ADD	HL,BC
	LD	(HL),B
TBU020
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	��э~�艺����              	  %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
TOBIDMV
	RET
	CALL	E5STCK
;
	CALL	E5XCHK
	ADD	A,$08
	CP	$10
	JR	NC,TBD010
;
	CALL	E5YCHK
	ADD	A,$10
	CP	$20
	JR	NC,TBD010
;
	LD	A,(PLJPFG)
	AND	A
	JR	NZ,TBD010
;
	LD	A,(DUSHFG)
	AND	A
	JR	NZ,TBD008
;
	LD	A,(KEYA1)
	AND	%0001000
	JR	Z,TBD010
;
	LD	A,(PLCBFG)
	AND	A
	JR	Z,TBD010
;
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	INC	A
	LD	(HL),A
	CP	$0C
	JR	C,TBD020
;
TBD008
	CALL	DUSHCL
;
	LD	A,$10
	LD	(PLYSPD),A
;
	XOR	A
	LD	(PLXSPD),A
;
	LD	A,$1C
	LD	(PLZSPD),A
;
TOBISUB
	LD	A,$02
	LD	(PLJPFG),A
;
	LD	A,$01
	LD	(BEDOFF),A	;BG �`�F�b�N����
;
	LD	A,$08
	LD	(SOUND1),A	;(S)
TBD010
	LD	HL,ENCONT
	ADD	HL,BC
	LD	(HL),B
TBD020
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	��э~�荶�E����              	  %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
TOBILMV
	RET
	CALL	E5STCK
;
	CALL	E5YCHK
	ADD	A,$08
	CP	$10
	JR	NC,TBL010
;
	CALL	E5XCHK
	ADD	A,$10
	CP	$20
	JR	NC,TBL010
;
	LD	A,(PLJPFG)
	AND	A
	JR	NZ,TBL010
;
	LD	A,(DUSHFG)
	AND	A
	JR	NZ,TBL008
;
	LD	A,(KEYA1)
	AND	%0000010
	JR	Z,TBL010
;
	LD	A,(PLCBFG)
	AND	A
	JR	Z,TBL010
;
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	INC	A
	LD	(HL),A
	CP	$0C
	JR	C,TBL020
;
TBL008
	CALL	DUSHCL
;
	XOR	A
	LD	(PLYSPD),A
;
	LD	A,$F0
	LD	(PLXSPD),A
;
	LD	A,$1C
	LD	(PLZSPD),A
;
	JP	TOBISUB
TBL010
	LD	HL,ENCONT
	ADD	HL,BC
	LD	(HL),B
TBL020
	RET
;===============================================
TOBIRMV
	RET
	CALL	E5STCK
;
	CALL	E5YCHK
	ADD	A,$08
	CP	$10
	JR	NC,TBR010
;
	CALL	E5XCHK
	ADD	A,$10
	CP	$20
	JR	NC,TBR010
;
	LD	A,(PLJPFG)
	AND	A
	JR	NZ,TBR010
;
	LD	A,(DUSHFG)
	AND	A
	JR	NZ,TBR008
;
	LD	A,(KEYA1)
	AND	%0000001
	JR	Z,TBR010
;
	LD	A,(PLCBFG)
	AND	A
	JR	Z,TBR010
;
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	INC	A
	LD	(HL),A
	CP	$0C
	JR	C,TBR020
;
TBR008
	CALL	DUSHCL
;
	XOR	A
	LD	(PLYSPD),A
;
	LD	A,$10
	LD	(PLXSPD),A
;
	LD	A,$1C
	LD	(PLZSPD),A
;
	JP	TOBISUB
TBR010
	LD	HL,ENCONT
	ADD	HL,BC
	LD	(HL),B
TBR020
	RET
;
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	Fishing game !		 		         %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
FISHGC0  ;�В�
;0
	DB	$00,$F0,$78,$00
	DB	$00,$F8,$7A,$00
	DB	$00,$00,$70,$00
	DB	$00,$08,$72,$00
FISHGC1  ;�В�
;1
	DB	$00,$F0,$7C,$00
	DB	$00,$F8,$7E,$00
	DB	$00,$00,$70,$00
	DB	$00,$08,$72,$00
FISHGC2  ;�В�
;2
	DB	$00,$F0,$78,$00
	DB	$00,$F8,$7A,$00
	DB	$00,$00,$74,$00
	DB	$00,$08,$76,$00
BLAJCD
	DB	$9A,$00
;- - - - - - - - - - - - - - - - - -
FISHGMV
	LD	A,(YKFLAG)
	AND	A
	JP	NZ,FG2000
;=== In ground speaking ==
	LD	HL,ENWRK3
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,FSG000	;���ł���u���W���[�H
;				;YES !
	LD	DE,BLAJCD
	CALL	EN1CST
;
	CALL	E2MVCL
	CALL	E2ZCLC
;
	LD	HL,ENZSPD
	ADD	HL,BC
	DEC	(HL)
;
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	AND	%10000000
	JR	Z,FSG001
;
;;;	CALL	YOSSISET
;
	CALL	E2CLER
;
	XOR	A
	LD	(WARAFG),A
	LD	(ITEMNOT),A
;
	JP  	YOSSISET
;- - - - - - - - - - - - -
FSG001
	LD	A,$02
	LD	(PLSTOP),A
	RET	
;
FSG000
	LD	HL,ENMOD0
	ADD	HL,BC
	LD	(HL),%10000100
;
	LD	HL,ENWRK4
	ADD	HL,BC
	LD	A,(HL)
	LD	(ENHELP),A
;
;	LD	A,(FRCNT)
;	AND	%00011111
;	JR	NZ,FG0000
;;
;	CALL	E2XYCK
;	LD	A,E
;	LD	HL,ENMUKI
;	ADD	HL,BC
;	LD	(HL),A
;;
;FG0000
;	CALL	M2PTST
;
	LD	A,(MSGEFG)
	AND	A
	LD	HL,FISHGC2
	JR	NZ,FG0000
;
;;;	LD	A,(FRCNT)
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	INC	(HL)
;
	LD	HL,FISHGC0
;
	AND	%00110000
	JR	Z,FG0000
	LD	HL,FISHGC1
FG0000
	LD	C,$04
	CALL	ENOMST
;
	LD	A,$04
	CALL	NXOMSBL
;
	CALL	M2CROS
;
	LD	A,(ENSTAT2)
	RST	0
	DW	FG01000  ;�ǂ����ˁH
	DW	FG02000  ;��������
	DW	FG03000  ;��肽�܂��I
;--------------------------------------------
	DW	FG04000
;;	DW	FG05000
;;	DW	FG06000
;================================================
FG01000
	CALL	E2MSCK
		ret	NC
;;;;;;;;	JR	NC,FG01010
;
	LD	A,(GRNDPT)
	AND	$0F
	CP	$01
	JR	Z,FG01001	;�X�P�x�ނ�l�H
;				;YES !
	LD	HL,ENWRK4
	ADD	HL,BC
	LD	(HL),$01
;
	LD	A,(MEGAF)
	CP	$0B
	LD	A,$E7
	JP	C,MSGCH2
;
	LD	A,(MEGAF)
	CP	$0C
	LD	A,$ED
	JP	NC,MSGCH2
;
	LD	A,$E8
	CALL	MSGCH2
;
		jp	STATINC
;;;;;;;;	CALL	STATINC
;;;;;;;;	RET
;------------------------------------
FG01001
	LD	A,$45
	CALL	MSGCHK
;
		jp	STATINC
;;;;;;;;	CALL	STATINC
;;;;;;;;FG01010
;;;;;;;;	RET
;================================================
FG02000
	LD	A,(MSGEFG)
	AND	A
		ret	NZ
;;;;;;;;	JR	NZ,FG02010
;
	CALL	STATINC
;
	LD	A,(MSANSR)
	AND	A
	JR	Z,FG02008
;
	LD	(HL),B
;
	LD	A,(ENHELP)
	AND	A
	JR	Z,FG02001
;
	LD	A,$EA
	JP	MSGCH2
FG02001
	LD	A,$46
	JP	MSGCHK
;------------------------------------
FG02008
	LD	A,(ENHELP)
	AND	A
	JR	Z,FG0200A
;
	LD	A,$01
	LD	(WARAFG),A
;
	LD	A,$0C
	LD	(MEGAF),A
;
	LD	A,$0D
	LD	(CHTRF2),A
;
	LD	A,$E9
	CALL	MSGCH2
;
;;	CALL	STATINC
;
	CALL	LDTIM0
	LD	(HL),$E0
	RET
;
FG0200A
	LD	A,(COINC2)
	SUB	$10
	LD	A,(COINC1)
	SBC	A,$0
	JR	C,FG02030	; Not Rupy ?
;				; NO !
	LD	A,$0A
	LD	(COIND2),A
;
	LD	A,$47
		jp	MSGCHK
;;;;;;;;	CALL	MSGCHK
;;;;;;;;FG02010
;;;;;;;;	RET
;================================================
FG02030
	LD	(HL),B
;
	LD	A,$4E
		jp	MSGCHK
;;;;;;;;	CALL	MSGCHK
;;;;;;;;	RET	
;================================================
FG03000
	LD	A,(ENHELP)
	AND	A
	JR	Z,FG03008
;
	CALL	LDTIM0
	JR	NZ,FG3003	
;
	LD	(HL),$50
;
	LD	A,$EB
	CALL	MSGCH2
	JP	STATINC
FG3003
	CP	$50
	JR	NC,FG3005
;
	LD	HL,ENCONT
	ADD	HL,BC
	INC	(HL)
FG3005	
	LD	A,$02
	LD	(PLSTOP),A
	LD	(ITEMNOT),A
	RET
;
;
;
;
;
;
FG03008
	LD	A,(MSGEFG)
	AND	A
		ret	NZ
;;;;;;;;	JR	NZ,FG03010
;
	CALL	ENALCL
		jp	FGNXGO
;;;;;;;;	CALL	FGNXGO
;;;;;;;;FG03010
;;;;;;;;	RET
;=======================================
FG04000
	CALL	LDTIM0
	AND	A
	JR	NZ,FG04002
;
	CALL	STATINC
	LD	(HL),B
	RET
FG04002
	CP	$30
	JR	NZ,FG04010
;
	DEC	(HL)
;
	LD	A,FISHG	;�u���W���[�ނ肠���Z�b�g
	CALL	ENIDSHL	
;
	LD	A,(WORK0)
	SUB	$28
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A
	LD	(ENSVXL),A
;
	LD	A,(WORK1)
	ADD	A,$08
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),A
	LD	(ENDSYP),A
;
	LD	HL,ENZSPD
	ADD	HL,DE
	LD	(HL),$20
;
	LD	HL,ENWRK3
	ADD	HL,DE
	LD	(HL),$01
;
	PUSH	BC
		ld	c,e
		ld	b,d
;;10/31;	PUSH	DE
;;10/31;	POP	BC
	LD	A,$0A
	CALL	PSERCHL
	POP	BC
;
	CALL	FGWUPST
FG04010
	LD	HL,ENCONT
	ADD	HL,BC
	LD	(HL),B
;
	LD	A,$02
	LD	(PLSTOP),A
	RET	
