;
		onbankgroup
;
;==============	�o���N�O ================================================
BANK0		GROUP	0
;-------------<	ZCO >-------------
		extern	RNDSUB,OBJBG,BGMSET,SOUNDCLR
;
;-------------<	ZPL >-------------
		extern	PLPSRV,MSGCHK,MSGCHK2,DUSHCL,KNCSET,KNFLSH,PLSHST
		extern	MVCALC,FLASHST,EXIDSH,NXGOTO,LDTIM0,PLXCLC,ENHNCL
		extern	ENSZST,BBSDST,MSGCH2,YOSSISET,NAZOCLR,NOSDST,PBULE
		extern	NXGOTO3,LDTIM1,LDTIM3,MSGCH3,DUSHCL2,CARITMD,PTOBI
		extern	POVER,PINDR1,PMOVE,PFOLE,PTATE,PMGIC,POKAR,FDIN
		extern	PSWIM,ENDG,GMAP,GPLAY
;
;-------------<	ZES >-------------
		extern	ISIBRKL,CRENENL,PLDMST0,ENMOVE,ENBGCKL,ENBGCK2L
		extern	ENPTST,STATINC,ENIDSHL,ENIDSH2L,BSSDCK,CREPKEL
		extern	CRENPLL,CRENPL2L,EN2CST,EN1CST,PSERCHL,PSERCH2L
		extern	CRKNENL,ENFEND,CRENPSL,ENPSSV,ENSDCL,NXOMSBL
		extern	PLBGCKL,ENALCL,HNSMST,ENOMST,SADWSTL,SHRVSE
		extern	ITEMGETS,ENBITON,ENMDSTL,EFAIL,EFOLE,EFIRE,EINIT
		extern	EMOVE,ESTOP,ECACH,ESHOT,ENONBT
;
;-------------<	ZBS >-------------
		extern	FKMSCK,HABATAKI
;
;-------------<	ZMA >-------------
		extern	PBSET,FUKU_YOUSEI_SUB,FLY_KONA_SUB,FK_BOSS_KOBUN_SUB
;
;==============	�o���N�Q ================================================
BANK2		GROUP	2
;-------------<	ZEX >-------------
		extern	DJRMRD,SPUNDT,WTUP,SMK1,RZNZ,FLSH,BFZN,DSZN
;
;==============	�o���N�R ================================================
BANK3		GROUP	3
;-------------<	ZEN >-------------
		extern	EFLSST,BHFIR,HARTB,R7BEM,RENO7,BGKAO,FUCKS,UFOCH
		extern	TERSA,FISHG,SBOMB,BOMBR,NINTM,HAYAB,KTOBJ,BSLIM
		extern	SLIMB,TBOSS,BSNAK,GORMA,BSKEL,BFIRE,BBIRD,SWBLK2
		extern	BFISH,SWTRP,NIWAT,KODOMA,PAPA0,KAMEI,RANEM,PANEL
		extern	KODOMB,IZUMI,SONIC,KEYSM,MIZUB,SLOT,HART1,RUPY1
		extern	OCHAN,KAKIN,SLIMS,OZWAN,HINO0,NOMOS
		extern	BHANA,SHANA,HEIS0,MORI1,OCTA1,KODOMC,URURI,TRYCY
;
;==============	�o���N�W ================================================
BANK8		GROUP	8
;-------------<	ZBD >-------------
		extern	GRBGCR,DJBGCR
;
;========================================================================
	PUBALL
;
BANK6	GROUP	06
;
	LIB	ZRAM
	LIB	ZBN
;
;;;;;;;;	EXTERN	RNDSUB,PLPSRV,MSGCHK,MSGCHK2,DUSHCL,OBJBG,KNCSET,KNFLSH,ISIBRKL
;;;;;;;;	EXTERN	PLSHST,MVCALC,FLASHST,DJRMRD,EXIDSH,SPUNDT,NXGOTO,CRENENL,PLDMST0
;;;;;;;;	EXTERN	ENMOVE,ENBGCKL,ENBGCK2L,LDTIM0,ENPTST,STATINC,ENIDSHL,ENIDSH2L,BSSDCK
;;;;;;;;	EXTERN	CREPKEL,CRENPLL,CRENPL2L,EN2CST,EN1CST,PSERCHL,PSERCH2L,CRKNENL,ENFEND
;;;;;;;;	EXTERN	CRENPSL,ENPSSV,ENSDCL,NXOMSBL,EFLSST,PLBGCKL,ENALCL,HNSMST,ENOMST
;;;;;;;;	EXTERN	PLXCLC,PBSET,ENHNCL,ENSZST,BBSDST,SADWSTL,MSGCH2,BHFIR,BGMSET,YOSSISET
;;;;;;;;	EXTERN	SHRVSE,SOUNDCLR,ITEMGETS,ENBITON,NAZOCLR,ENMDSTL,NOSDST,NXGOTO3
;;;;;;;;	EXTERN	LDTIM1,LDTIM3,MSGCH3,DUSHCL2,FKMSCK,HABATAKI
;;;;;;;;;
;;;;;;;;	EXTERN	CARITMD,GRBGCR,DJBGCR,PTOBI,WTUP,PBULE,POVER,SMK1,PINDR1,HARTB
;;;;;;;;	EXTERN	EFAIL,EFOLE,EFIRE,EINIT,EMOVE,ESTOP,ECACH,ESHOT,R7BEM,RENO7,BGKAO
;;;;;;;;	EXTERN	RZNZ,FLSH,PMOVE,FUCKS,UFOCH,TERSA,FISHG,SBOMB,BOMBR,NINTM,HAYAB
;;;;;;;;	EXTERN	PFOLE,KTOBJ,BSLIM,SLIMB,TBOSS,BSNAK,GORMA,BSKEL,BFIRE,BFZN,BBIRD,SWBLK2
;;;;;;;;	EXTERN	BFISH,SWTRP,PTATE,PMGIC,POKAR,NIWAT,KODOMA,PAPA0,KAMEI,RANEM,PANEL
;;;;;;;;	EXTERN	BHANA,SHANA,HEIS0,MORI1,OCTA1,FDIN,KODOMB,IZUMI,SONIC,KEYSM,DSZN
;;;;;;;;	EXTERN	MIZUB,SLOT,HART1,RUPY1,OCHAN,KAKIN,SLIMS,PSWIM,OZWAN
;;;;;;;;	EXTERN	ENONBT,HINO0,ENDG,NOMOS
;;;;;;;;	EXTERN	GMAP
;------------------------------------------------
	KANJI
	PAGE
	isdmg
;
	LIST
	ORG	$4000
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	���T���� ���`���[�h		  %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
RICHDCD
	DB	$50,$03,$52,$03
	DB	$54,$03,$56,$03
;
	DB	$50,$03,$52,$03
	DB	$54,$03,$56,$03
;
	DB	$58,$03,$5A,$03
	DB	$5C,$03,$5E,$03
;
	DB	$5A,$23,$58,$23
	DB	$5E,$23,$5C,$23
;
;- - - - - - - - - - - - - - - - - - - - -
RICHDMV
	LD	A,$21
	LD	(ENDSYP),A
;
	LD	DE,RICHDCD
	CALL	EN2CST
;
	CALL	E4STCK
;
	LD	A,(FRCNT)
	AND	%00011111
	JR	NZ,RHD020
;
	CALL	E4XYCK
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	(HL),E
RHD020
	CALL	M4PTST
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	NZ,RHD030
;
	CALL	M4CROS
RHD030
	LD	A,(ENSTAT2)
	RST	00
	DW	RHD0000
	DW	RHD1000
	DW	RHD2000
	DW	RHD3000
	DW	RHD4000
;=========================================
RHD0000
	CALL	STATINC
;
	LD	A,(GRKEY5)
	CP	$06
	RET	C
;
	LD	(HL),$04
;
	LD	HL,ENXPSL
	ADD	HL,BC
	LD	(HL),$58
	RET
;=========================================
RHD1000
	CALL	E4MSCK
		ret	NC
;;;11/11	JR	NC,RHD1090
;
	LD	A,(WANFLG)
	AND	A
	JR	Z,RHD1002
;
	LD	E,$2D
	JP	RHD1080
;
RHD1002
	LD	A,(DJSVBF)
	AND	%00010000
	JR	Z,RHD1010
;
	LD	A,(GRKEY5)
	AND	A
	JR	NZ,RHD1020
;
RHD1010
	LD	A,(DJSVBF)
	OR	%00010000
	LD	(DJSVBF),A
	LD	(DJRMSV+$1C7),A
;
	LD	A,$3A
	CALL	MSGCH2
;
	LD	A,(URURIFG)
	CP	$02
	JR	NC,RHD1018
;
	LD	A,$02
	LD	(URURIFG),A
RHD1018
	JP  	STATINC
RHD1020
;	LD	E,$3E
;	CP	$06
;	JR	Z,RHD1080
;;	CP	$FF
;;	JR	Z,RHD1080
	LD	E,$3F
	CP	$05
	JR	C,RHD1080
;
	CALL	STATINC
	LD	(HL),$03
;
	CALL	LDTIM0
	LD	(HL),$20
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	(HL),$01
;
	LD	A,$FF
	LD	(GRKEY5),A	
;
	LD	A,$09
	LD	(CHTRF2),A	;���]���I
;
	LD	E,$3D
RHD1080
	LD	A,E
		jp	MSGCH2
;;;11/11	CALL	MSGCH2
;;;11/11RHD1090
;;;11/11	RET
;=========================================
RHD2000
	LD	A,(MSANSR)
	AND	A
	LD	A,$3B
	JR	Z,RHD2010
	LD	A,$3C
RHD2010
	CALL	MSGCH2
;
	CALL	STATINC
	LD	(HL),$01
	RET
;=========================================
RHD3000
	CALL	LDTIM0
	JR	NZ,RHD3010
;
	CALL	STATINC
RHD3010
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),$F8
		jp	E4XCLC
;;;11/11	CALL	E4XCLC
;;;11/11	RET
;=========================================
RHD4000
	CALL	E4MSCK
	JR	NC,RHD4090
;
	LD	A,(GRKEY5)
	CP	$06
	LD	A,$3E
	JR	Z,RHD4010
	LD	A,$3D
RHD4010
	CALL	MSGCH2
RHD4090
	LD	A,(PLXPSL)
	SUB	$78
	ADD	A,$02
	CP	$04
		ret	NC		;Kaidan cros check !
;;;11/11	JR	NC,RHD40A0	;Kaidan cros check !
;
	LD	A,(PLYPSL)
	SUB	$20
	ADD	A,$05
	CP	$0A
		ret	NC
;;;11/11	JR	NC,RHD40A0
;
	LD	HL,NXRMMD
;
	LD	A,DNJ
	LD	(HLI),A
	LD	A,$11
	LD	(HLI),A
	LD	A,$D8
	LD	(HLI),A
	LD	A,$88
	LD	(HLI),A
	LD	A,$70
	LD	(HLI),A
;
	CALL	E4CLER
	JP	NXGOTO
;;;11/11RHD40A0
;;;11/11	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�����m				  %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
HEISMCD
	DB	$FF,$00,$FF,$20
;
	DB	$70,$02,$70,$22
	DB	$72,$02,$72,$22
	DB	$74,$02,$76,$02
	DB	$76,$22,$74,$22
;
HEISMXD
	DB	$28,$38,$58,$58,$78,$88
	DB	$28,$88
HEISMYD
	DB	$40,$70,$20,$50,$70,$40
	DB	$40,$40
;
HEISMMV
	LD	A,(DJSVBF)
	AND	%00010000
	JP	NZ,E4CLER
;
	LD	HL,ENITMF
	ADD	HL,BC
	LD	(HL),KAKIN	;�͂���
;
	LD	HL,ENJYUN
	ADD	HL,BC
	LD	(HL),$FF
;
	LD	DE,HEISMCD
	CALL	EN2CST
;
	CALL	E4STCK
;
	CALL	ENHNCL
;
	LD	A,(ENSTAT2)
	RST	00
	DW	HSM0000
	DW	HSM1000
	DW	HSM2000
	DW	HSM3000
	DW	HSM4000
;====================================
HSM0000
	CALL	LDTIM0
	LD	(HL),$40
	JP	STATINC
;====================================
HSM1000
	CALL	LDTIM0
		ret	NZ
;;;11/11	JR	NZ,HSM10A0
;
	CALL	RNDSUB
	AND	$07
	LD	E,A
	LD	D,B
	LD	HL,HEISMXD
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENXPSL
	ADD	HL,BC
	LD	(HL),A
	LD	HL,HEISMYD
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	(HL),A
;
	CALL	E4XCHK
	ADD	A,$20
	CP	$40
	JR	NC,HSM1090
;
	CALL	E4YCHK
	ADD	A,$20
	CP	$40
		ret	C
;;;11/11	JR	C,HSM10A0
HSM1090
	CALL	LDTIM0
	LD	(HL),$18
;
		jp	STATINC
;;;11/11	CALL	STATINC
;;;11/11HSM10A0
;;;11/11	RET
;====================================
HSM2000
	CALL	LDTIM0
	JR	NZ,HSM2020
;
	LD	(HL),$30
	JP	STATINC
HSM2020
	CP	$0C
	LD	A,$01
	JR	NC,HSM2030
	INC	A
HSM2030
		jp	ENPTST
;;;11/11	CALL	ENPTST
;;;11/11	RET
;====================================
HSM3000
	CALL	CREPKEL
;
	CALL	LDTIM0
	JR	NZ,HSM3020
;
	LD	(HL),$10
	CALL	STATINC
;
	LD	HL,ENFLSH
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	NZ,HSM3010
;
	LD	A,BOMBR
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
	LD	HL,ENZPSL
	ADD	HL,DE
	LD	(HL),$04
;
E4BOSET
	LD	HL,ENZSPD
	ADD	HL,DE
	LD	(HL),$18
;
	LD	HL,ENTIM0
	ADD	HL,DE
	LD	(HL),$40
;
	LD	HL,ENWRK3
	ADD	HL,DE
	LD	(HL),$01
;
	PUSH	BC
		ld	c,e
		ld	b,d
;;;11/11	PUSH	DE
;;;11/11	POP	BC
;
	LD	A,$10
	CALL	PSERCHL
	POP	BC
;
	LD	A,$08
	LD	(SOUND1),A	;(S)
;
HSM3010
	RET
HSM3020
	AND	$20
	LD	A,$03
	JR	NZ,HSM3030
	INC	A
HSM3030
		jp	ENPTST
;;;11/11	CALL	ENPTST
;;;11/11	RET
	
;====================================
HSM4000
	CALL	LDTIM0
	JR	NZ,HSM4020
;
	CALL	STATINC
	LD	(HL),B
;
	LD	A,$FF
		jp	ENPTST
;;;11/11	CALL	ENPTST
;;;11/11	RET
HSM4020
	CP	$08
	LD	A,$01
	JR	C,HSM4030
	INC	A
HSM4030
		jp	ENPTST
;;;11/11	CALL	ENPTST
;;;11/11	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�J�[�r�C			  %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
KARBYMV
	CALL	KARBYCS
;
	CALL	E4STCK
;
	CALL	E4HNSB
;
	CALL	E4ZCLC
	LD	HL,ENZSPD
	ADD	HL,BC
	DEC	(HL)
	DEC	(HL)
	DEC	(HL)
;
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	AND	%10000000
	LD	(ENHELP),A
	JR	Z,KBY0010
;
	LD	(HL),B
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),B
KBY0010
	LD	A,(ENSTAT2)
	RST	00
	DW	KBY1000	;�ړ��P
	DW	KBY2000	;    �Q
	DW	KBY3000	;��������
	DW	KBY4000	;����
	DW	KBY5000	;�͂�����
;--------------------------------------
KBY1000
	CALL	LDTIM0
	JR	NZ,KBY1090
;
	CALL	ENSDCL
;
;	LD	HL,ENTIM3
;	ADD	HL,BC
;	LD	A,(HL)
;	AND	A
	CALL	LDTIM3
	JR	NZ,KBY1010
;
	CALL	E4XCHK
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	A,(HL)
	AND	$01
	CP	E
	JR	NZ,KBY1010
;
	CALL	STATINC
	LD	(HL),$02
;
	CALL	LDTIM0
	LD	(HL),$FF
;
	LD	A,$3B
	LD	(SOUND3),A	;(S)
	RET
;
KBY1010
	CALL	LDTIM0
;
	CALL	RNDSUB
	AND	$1F
	ADD	A,$10
	LD	(HL),A
;
	CALL	STATINC
KBY1090
KBMVSB
	LD	A,(ENHELP)
	AND	A
	JR	Z,KBY10A0
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),$10
KBY10A0
	CALL	E4MVCL
	CALL	ENBGCKL
;
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	A,(HL)
	RLA
	AND	%00000110
	CALL	ENPTST
;
		jp	CREPKEL
;;;11/11	CALL	CREPKEL
;;;11/11	RET
;--------------------------------------
KBYXSD
	DB	$08,$F8,$08,$F8
KBYYSD
	DB	$F8,$F8,$08,$08
;
KBY2000
	CALL	LDTIM0
	JR	NZ,KBY2090
;
	CALL	RNDSUB
	AND	$1F
	ADD	A,$20
	LD	(HL),A
;
	CALL	STATINC
	LD	(HL),B
;
	CALL	RNDSUB
	BIT	2,A
	JR	Z,KBY2020	
;
	AND	$03
	JR	KBY2030	
KBY2020
	CALL	E4XCHK
	PUSH	DE
	CALL	E4YCHK
	LD	A,E
	AND	%00000011
	DEC	A
	DEC	A
	SLA	A
	POP	DE
	OR	E
KBY2030
	LD	E,A
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	(HL),E
;
	LD	D,B
	LD	HL,KBYXSD
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
	LD	HL,KBYYSD
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),A
KBY2090
	JP	KBMVSB
;---------------------------------------------
KBY3000
	CALL	CRKNENL
;
	CALL	LDTIM0
	JR	NZ,KBY3010
;
KBRETN
	CALL	STATINC
	LD	(HL),B
;
;	LD	HL,ENTIM3
;	ADD	HL,BC
	CALL	LDTIM3
	CALL	RNDSUB
	AND	$1F
	ADD	A,$08
;;	AND	$1F
;;	ADD	A,$10
	LD	(HL),A
	RET
;
KBY3010
	LD	A,$01
	LD	($D3E6),A	;(S) �z�����I
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),B
;
	LD	A,(FRCNT)
	AND	$03
	JR	NZ,KBY3030
;
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	SUB	$0C
	JR	Z,KBY3030
;
	AND	%10000000
	JR	Z,KBY3020
;
	INC	(HL)
	INC	(HL)
KBY3020
	DEC	(HL)
KBY3030
	LD	A,(PLCHPT)
	CP	$FF
	JR	Z,KBY3050
;
;	LD	HL,ENMUKI
;	ADD	HL,BC
;	LD	A,(HL)
;	RLA
;	AND	%00000110
;	OR	$01
;	CALL	ENPTST
;
	CALL	E4XCHK
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	A,(HL)
	AND	$01
	CP	E
	JR	NZ,KBY3050
;
	CALL	E4XCHK
	ADD	A,$40
	CP	$80
	JR	NC,KBY3050
;
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	A,(HL)
	PUSH	HL
	PUSH	AF
	LD	A,(ENDSYP)
	LD	(HL),A
	CALL	E4YCHK
	LD	E,A
	POP	AF
	POP	HL
	LD	(HL),A
	LD	A,E
	ADD	A,$30
	CP	$60
	JR	NC,KBY3050
;
	LD	A,$08
	CALL	PSERCH2L
;
	LD	A,(WORK0)
	CPL
	INC	A
	LD	(PLYSPD),A
;
	LD	A,(WORK1)
	CPL
	INC	A
	LD	(PLXSPD),A
;
	PUSH	BC
	CALL	MVCALC
	CALL	PLBGCKL
	POP	BC
;
	LD	HL,ENSVXL
	LD	A,(PLXPSL)
	SUB	(HL)
	ADD	A,$04
	CP	$08
	JR	NC,KBY3050
;
	LD	HL,ENDSYP
	LD	A,(PLYPSL)
	SUB	(HL)
	ADD	A,$04
	CP	$08
	JR	NC,KBY3050
;
	CALL	LDTIM0
	LD	(HL),$80
;
	CALL	STATINC
KBY3050
KBPTST2
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	A,(HL)
	RLA
	AND	%00000110
	OR	$01
		jp	ENPTST
;;;11/11	CALL	ENPTST
;;;11/11	RET
;===============================
KBY4000
	CALL	LDTIM0
	JR	Z,KBY4030
;
	LD	A,(ENHELP)
	AND	A
	JR	Z,KBY4010
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	NZ,KBY4010
;
	INC	(HL)
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),$0C
;
	LD	A,$09
	LD	(SOUND1),A	;(S) Bomb set !
KBY4010
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	A,(HL)
	ADD	A,$08
	CALL	ENPTST
;
	LD	A,$FF
	LD	(PLCHPT),A
;
	LD	A,$02
	LD	(PLSTOP),A
	RET
KBY4030
	LD	(HL),$0C
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	(HL),B
;
	XOR	A
	LD	(PLYSPD),A
;
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	A,(HL)
	AND	$01
	LD	A,$18
	JR	Z,KBY4040
	LD	A,$E8
KBY4040
	LD	(PLXSPD),A
;
	LD	A,$10
	LD	(PLZSPD),A
	LD	A,$20
	LD	(PLFLSH),A
;
	LD	A,$02
	LD	(PLJPFG),A
;
	LD	A,$02
	LD	(HARTDW),A
;
	LD	A,$08
	LD	(SOUND1),A	;(S)
;
		jp	STATINC
;;;11/11	CALL	STATINC
;;;11/11	RET
;===============================
KBY5000
	CALL	LDTIM0
	JP	Z,KBRETN
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),B
;
	JP	KBPTST2
;===============================
KARBYCD
;0
	DB	$62,$21,$60,$21
	DB	$68,$21,$66,$21
;2
	DB	$60,$01,$62,$01
	DB	$66,$01,$68,$01
;4
	DB	$62,$21,$60,$21
	DB	$68,$21,$66,$21
;6
	DB	$60,$01,$62,$01
	DB	$66,$01,$68,$01
;----------------------------
KARBYCD2
;8
	DB	$00,$FC,$62,$21
	DB	$00,$04,$6A,$21
	DB	$00,$0C,$64,$21
;9
	DB	$00,$FC,$64,$01
	DB	$00,$04,$6A,$01
	DB	$00,$0C,$62,$01
;A
	DB	$00,$FC,$62,$21
	DB	$00,$04,$6A,$21
	DB	$00,$0C,$64,$21
; 
	DB	$00,$FC,$64,$01
	DB	$00,$04,$6A,$01
	DB	$00,$0C,$62,$01
;
KBAIRCD
;0
	DB	$00,$0E,$24,$01
	DB	$F8,$18,$24,$01
	DB	$08,$18,$24,$01
;1
	DB	$FE,$13,$24,$01
	DB	$03,$13,$24,$01
	DB	$03,$13,$FF,$01
;2
	DB	$00,$FA,$24,$01
	DB	$F8,$F0,$24,$01
	DB	$08,$F0,$24,$01
;3
	DB	$FE,$F5,$24,$01
	DB	$03,$F5,$24,$01
	DB	$03,$F5,$FF,$01
;------------------------------------
KARBYCS
	LD	A,(ENCHPT2)
	CP	$08
	JR	NC,KBY000
;
	LD	DE,KARBYCD
	CALL  	EN2CST
;
	LD	A,(ENSTAT2)
	CP	$02
		ret	NZ		;�z���H
;;;11/11	JR	NZ,KBCS10	;�z���H
;				;yes !
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	A,(HL)
	RLA
	AND	$02
	LD	E,A
;
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	AND	$01
	OR	E
	RLA
	RLA
	AND	%11111100
	LD	E,A
	RLA
	AND	%11111000
	ADD	A,E
	LD	E,A
	LD	D,B
	LD	HL,KBAIRCD
	ADD	HL,DE
	LD	C,$03
	CALL	ENOMST
;
	LD	A,$03
		jp	NXOMSBL
;;;11/11	CALL	NXOMSBL
;;;11/11KBCS10
;;;11/11	RET
;------------------------------------
KBY000
	SUB	$08
	RLA
	RLA
	AND	%11111100
	LD	E,A
	SLA	A
	ADD	A,E
	LD	E,A
	LD	D,B
	LD	HL,KARBYCD2
	ADD	HL,DE
;
	LD	C,$03
	CALL  	ENOMST
;
	JP	SADWSTL
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	O �����			  %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
OCHANMV
	LD	HL,ENWRK3
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JP	NZ,OBALLMV	; Ball ?
;
	LD	A,C
	LD	(BSINDX2),A
;
	LD	HL,ENWRK2
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	NZ,OCH0F00	;Ball initial set !
;
	INC	(HL)
;
	LD	A,OCHAN
	CALL	ENIDSHL
;
	LD	A,E
	LD	(BSINDX),A
;
	LD	A,(WORK1)
	ADD	A,$10
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),A
	LD	A,(WORK0)
	ADD	A,$30
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,ENWRK3
	ADD	HL,DE
	INC	(HL)
OCH0F00
	CALL	OCHANCS
;
	CALL	BSSDCK	;(S)
;
	LD	A,(ENMODE2)
	CP	EMOVE
	JP	NZ,BSFLSB
;
	CALL	E4STCK
;
	CALL	E4HNSB
;
	CALL	CREPKEL
;
	CALL	E4ZCLC
	LD	HL,ENZSPD
	ADD	HL,BC
	DEC	(HL)
	DEC	(HL)
	DEC	(HL)
;
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	AND	%10000000
	LD	(ENHELP),A
	JR	Z,OCH0000
;
	LD	(HL),B
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),B
OCH0000
	LD	A,(ENSTAT2)
	RST	00
	DW	OCBLSH	
	DW	OCNIGE	
	DW	OCCACH1
	DW	OCCACH2
	DW	OCSHOT
;=========================================
OCBLSH
	LD	A,(BSINDX)
	LD	E,A
	LD	D,B
	LD	HL,ENSTAT
	ADD	HL,DE
	LD	A,(HL)
	CP	$00
	JR	NZ,OCBS30	;�v���C���[���{�[�����������H
;				; NO
	LD	A,(PLXPSL)
	PUSH	AF
	LD	A,(PLYPSL)
	PUSH	AF
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	A,(HL)
	LD	(PLXPSL),A
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	A,(HL)
	LD	(PLYPSL),A
;
	LD	A,$10
	CALL	PSERCHL
;
	CALL	E4MVCL
;
	CALL	ENBGCKL
;
	CALL	E4XCHK
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	(HL),E
	ADD	A,$0C
	CP	$18
	JR	NC,OCBS10
	CALL	E4YCHK
	ADD	A,$0C
	CP	$18
	JR	NC,OCBS10
;
	CALL	STATINC
	LD	(HL),$02
;
	LD	A,(BSINDX)
	LD	E,A
	LD	D,B
	LD	HL,ENSTAT
	ADD	HL,DE
	LD	(HL),$01
;
	CALL	LDTIM0
	LD	(HL),$1F
;
	LD	A,$1C
	LD	(SOUND2),A	;(S)
OCBS10
	POP	AF
	LD	(PLYPSL),A
	POP	AF
	LD	(PLXPSL),A
	JR	OCJPST
;
OCBS30
	CALL	STATINC
OCJPST
	LD	A,(ENHELP)
	AND	A
	JR	Z,OCBS40
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),$10
OCBS40
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	A,(HL)
	AND	$01
		jp	ENPTST
;;;11/11	CALL	ENPTST
;;;11/11;
;;;11/11	RET	
;=====================================
OCNXSD
	DB	$0C,$F4,$0C,$F4
OCNYSD
	DB	$FC,$FC,$04,$04
;
OCNIGE
	LD	A,(BSINDX)
	LD	E,A
	LD	D,B
	LD	HL,ENSTAT
	ADD	HL,DE
	LD	A,(HL)
	CP	$00
	JR	NZ,OCN008	;�{�[�����~�����H
;				; YES !
	CALL	STATINC
	LD	(HL),B
OCN008
	CALL	LDTIM0
	JR	NZ,OCN010
;
	CALL	RNDSUB
	AND	$1F
	ADD	A,$10
	LD	(HL),A
;
	AND	$03
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	(HL),A
	LD	E,A
;
	LD	D,B
	LD	HL,OCNXSD
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
	LD	HL,OCNYSD
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),A
OCN010
	CALL	E4MVCL
	CALL	ENBGCKL
;
	CALL	OCJPST
;
	LD	A,(FRCNT)
	AND	%00001000
	JR	Z,OCN020
;
	INC	(HL)
	INC	(HL)
OCN020
	RET
;=====================================
OCCAXD
	DB	$00,$02,$04,$06
	DB	$08,$0A,$0C,$0E
	DB	$00,$FE,$FC,$FA
	DB	$F8,$F6,$F4,$F2
OCCAYD
	DB	$F0,$F1,$F2,$F4
	DB	$F6,$F8,$FA,$FE
	DB	$F0,$F1,$F2,$F4
	DB	$F6,$F8,$FA,$FE
;	DB	$F0,$F1,$F2,$F4
;	DB	$F6,$F8,$FA,$FE
;	DB	$F0,$F1,$F2,$F4
;	DB	$F6,$F8,$FA,$FE
OCCACH1
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	A,(HL)
	AND	$01
	RLA	
	RLA	
	RLA	
	AND	%00001000
	LD	E,A
;
	CALL	LDTIM0
	JR	NZ,OCC1010
;
	LD	(HL),$20
;
		jp	STATINC
;;;11/11	CALL	STATINC
;;;11/11	RET
OCC1010
	RRA
	RRA
	AND	$07
	OR	E
OCCAPS
	PUSH	BC
	LD	C,A
	LD	A,(BSINDX)
	LD	E,A
	LD	D,B
;
	LD	A,(ENSVXL)
;
	LD	HL,OCCAXD
	ADD	HL,BC
	ADD	A,(HL)
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A
;
;;	LD	A,(ENSVYL)
;
	LD	HL,OCCAYD
	ADD	HL,BC
;;	ADD	A,(HL)
	LD	A,(HL)
	CPL
	INC	A
;
	POP	BC
	LD	HL,ENZPSL
	ADD	HL,BC
	ADD	A,(HL)
;
	LD	HL,ENZPSL
;;	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	A,(HL)
	ADD	A,$02
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),A
;
OCCAPT
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	A,(HL)
	AND	$01
	OR	$02
		jp	ENPTST
;;;11/11	CALL	ENPTST
;;;11/11	RET
;=====================================
OCCACH2	
	XOR	A
	CALL	OCCAPS
;
	CALL	LDTIM0
	JR	NZ,OCC2010
;
	LD	(HL),$20
;
	LD	A,(BSINDX)
	LD	E,A
	LD	D,B
	LD	HL,ENSTAT
	ADD	HL,DE
	LD	(HL),$04
;
	PUSH	BC
		ld	c,e
		ld	b,d
;;;11/11	PUSH	DE
;;;11/11	POP	BC
;
	LD	A,$20
	CALL	PSERCHL
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),$18
	POP	BC
;
;;	CALL	ENSDCL
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),$20
;
	LD	A,$08
	LD	(SOUND1),A	;(S)
;
		jp	STATINC
;;;11/11	CALL	STATINC
;;;11/11	RET
OCC2010
	CALL	OCJPST
;
	LD	A,$04
	CALL	PSERCHL
;
	CALL	E4XCHK
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	(HL),E
;
	CALL	OCCAPT
;
	CALL	E4MVCL
		jp	ENBGCKL
;;;11/11	CALL	ENBGCKL
;;;11/11	RET
;=====================================
OCSHOT
	CALL	LDTIM0
	JR	NZ,OCSH010
;
	CALL	STATINC
	LD	(HL),B
OCSH010
;;;	CALL	OCJPST
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	A,(HL)
	AND	$01
		jp	ENPTST
;;;11/11	CALL	ENPTST
;;;11/11	RET
;=====================================
;=====================================
;=====================================
;=====================================
;
;
;=====================================
OCHANCD
;0
	DB	$00,$FC,$64,$21
	DB	$00,$04,$62,$21
	DB	$00,$0C,$60,$21
	DB	$F0,$FC,$6C,$21
;1	NORMAL
	DB	$00,$FC,$60,$01
	DB	$00,$04,$62,$01
	DB	$00,$0C,$64,$01
	DB	$F0,$0C,$6C,$01
;2
	DB	$00,$FC,$6A,$21
	DB	$00,$04,$68,$21
	DB	$00,$0C,$66,$21
	DB	$F0,$FC,$6C,$01
;3	CACH
	DB	$00,$FC,$66,$01
	DB	$00,$04,$68,$01
	DB	$00,$0C,$6A,$01
	DB	$F0,$0C,$6C,$21
;-----------------------------------
OCHANCS
	LD	A,(ENCHPT2)
	RLA
	RLA
	RLA
	RLA
	AND	%11110000
	LD	E,A
	LD	D,B
	LD	HL,OCHANCD
	ADD	HL,DE
	LD	C,$04
	CALL	ENOMST
;
	JP	SADWSTL
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	O ����� �{�[��			  %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
OBALLCD
	DB	$6E,$01,$6E,$21
OBALLMV
	LD	HL,ENMOD0
	ADD	HL,BC
	LD	(HL),%10010010
;
	LD	HL,ENSHMK
	ADD	HL,BC
	LD	(HL),%11111111	;�i���`�F�b�N�����I
;
	LD	DE,OBALLCD
	CALL	EN2CST
;
	CALL	E4STCK
;
	CALL	ENHNCL
;
	CALL	CRKNENL
;
	CALL	E4MVCL
	CALL	E4ZCLC
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
	JR	Z,OBL0000
;
	LD	(HL),B
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	A,(HL)
	SRA	A
	CPL
	CP	$07
	JR	NC,OBL00F0
;
	XOR	A
	JR	OBL00F2
OBL00F0
	LD	A,$09
	LD	(SOUND1),A	;(S)�o�E���h�I
OBL00F2
	LD	(HL),A
;
	LD	HL,ENXSPD
	ADD	HL,BC
	SRA	(HL)	
	SRA	(HL)	
	LD	HL,ENYSPD
	ADD	HL,BC
	SRA	(HL)	
	SRA	(HL)	
OBL0000
	CALL	ENBGCKL
;
	LD	A,(ENSTAT2)
	RST	00
	DW	OBL1000	;�]����
	DW	OBL2000	;�G�L���b�`
	DW	OBL3000	;�v���C���[�L���b�`
	DW	OBL4000	;�v���C���[�������I
	DW	OBL5000	;�G�������I
;================================================
OBL1000
	LD	A,(ENHELP2)
	DEC	A
	AND	%10000000
	JR	Z,OBL1010
;
	LD	HL,ENYSPD
	CALL	OBSDDW
	LD	HL,ENXSPD
OBSDDW
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,OBL1010
;
	AND	%10000000
	JR	Z,OBL1008
;
	INC	(HL)
	INC	(HL)
OBL1008
	DEC	(HL)
OBL1010
	CALL	CRENPSL
	JR	NC,OBL1060
;
	LD	A,(POWDRTM)
	AND	A
	JR	NZ,OBL1060
;
	LD	A,(ITEMB)
	CP	PBULE
	JR	NZ,OBL1020	; Bulesret check !
;
	LD	A,(KEYA2)
	AND	%00100000
	JR	NZ,OBL1030
	JR	OBL1060
OBL1020
	LD	A,(ITEMA)
	CP	PBULE
	JR	NZ,OBL1060
;
	LD	A,(KEYA2)
	AND	%00010000
	JR	Z,OBL1060
;
OBL1030
	LD	A,(WPLCAMD)
	AND	A
	JR	NZ,OBL1060
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
OBL1060
	RET
;================================================
OBL2000
	RET
;================================================
OBL3000
	RET
;================================================
OBL4000
	LD	A,(BSINDX2)
	LD	E,A
	LD	D,B
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	A,(ENSVXL)
	SUB	(HL)
	ADD	A,$0C
	CP	$18
	JP	NC,OBL4002
;
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	A,(ENDSYP)
	SUB	(HL)
	ADD	A,$0C
	CP	$18
	JR	NC,OBL4002
;
	LD	HL,ENHNFG
	ADD	HL,DE
	LD	(HL),$10
;
	LD	HL,ENFLSH
	ADD	HL,DE
	LD	(HL),$20
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	A,(HL)
	PUSH	HL
	LD	HL,ENHNXS
	ADD	HL,DE
	LD	(HL),A
	POP	HL
	CPL
	INC	A
	SRA	A
	LD	(HL),A	
;
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	A,(HL)
	PUSH	HL
	LD	HL,ENHNYS
	ADD	HL,DE
	LD	(HL),A
	POP	HL
	CPL
	INC	A
	SRA	A
	LD	(HL),A	
;
	LD	A,$07
	LD	(SOUND2),A	;(S)
;
	LD	HL,ENLIFE
	ADD	HL,DE
	LD	A,(HL)
	SUB	$02
	LD	(HL),A
	DEC	A
	AND	%10000000
	JR	Z,OBL4001	;Fail ?
;				;Yes !
	LD	HL,ENMODE
	ADD	HL,DE
	LD	(HL),EFAIL ;A
;
;	LD	HL,ENTIM4
;	ADD	HL,DE
;	LD	(HL),$2F
;;
;	LD	HL,ENMOD0
;	ADD	HL,DE
;	LD	A,(HL)
;	LD	(HL),$04		; OAM use count 4 of set !
;;
;	LD	HL,ENMOD3
;	ADD	HL,DE
;	RES	7,(HL)
;
	LD	HL,ENMODE
	ADD	HL,BC
	LD	(HL),EFAIL ;A
;
	LD	HL,ENTIM4
	ADD	HL,BC
	LD	(HL),$1F
;
	LD	HL,ENMOD0
	ADD	HL,BC
	LD	A,(HL)
	LD	(HL),$04		; OAM use count 4 of set !
;
	LD	HL,ENMOD3
	ADD	HL,BC
	RES	7,(HL)
;
	LD	A,$10
	LD	(SOUND2),A	;(S)
;
;;	CALL	BGMSET	;(S)
;;	LD	A,$06
;;	LD	(SOUND1),A	;(S)
OBL4001
	CALL	STATINC
	LD	(HL),B
OBL4002
;
;
;
;
;
;
	JR	OBL5010
;
OBL5000
	LD	HL,ENMOD0
	ADD	HL,BC
	LD	(HL),%00010010
;
	CALL	CRENPLL
;
	LD	HL,ENMOD0
	ADD	HL,BC
	LD	(HL),%10010010
;
OBL5010
	LD	A,(ENHELP)
	AND	A
	JR	NZ,OBL4010
;
	LD	HL,ENCBFG
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,OBL4020
;
	AND	$03
	JR	Z,OBL4008
;
	LD	HL,ENXSPD
	JR	OBL400A
OBL4008
	LD	HL,ENYSPD
OBL400A
	ADD	HL,BC
	LD	A,(HL)
	CPL
	INC	A
	SRA	A
	LD	(HL),A
OBL4010
	CALL	STATINC
	LD	(HL),B
OBL4020
	RET
;================================================
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�g�����v �X���b�g		  %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
SLOTCD
;Heart
	DB	$74,$02,$76,$02
	DB	$76,$22,$74,$22
;Daiya
	DB	$70,$01,$72,$01
	DB	$72,$21,$70,$21
;Spead
	DB	$78,$00,$7A,$00
	DB	$7A,$20,$78,$20
;Club 
	DB	$7C,$03,$7E,$03
	DB	$7E,$23,$7C,$23
;- - - - - - - - - - - - - - -
SLOTMV
	LD	HL,ENLIFE
	ADD	HL,BC
	LD	(HL),$20
;
	LD	DE,SLOTCD
	CALL	EN2CST
;
	CALL	E4STCK
;
	CALL	ENHNCL
;
	CALL	E4MVCL
	CALL	ENBGCKL
;
	LD	A,(ENSTAT2)
	RST	00
	DW	SLTWLK
	DW	SLTSTP
	DW	SLTGO
;-------------------------------------
SLTWLK
	CALL	CREPKEL
;
	CALL	LDTIM0
	JR	NZ,SLW090
;
	LD	(HL),$20
;
	CALL	ENSDCL
;
	CALL	STATINC
SLW090
	LD	HL,ENCONT
	ADD	HL,BC
	INC	(HL)
SLPTST
	LD	HL,ENMUKI
	ADD	HL,BC
;
	LD	A,(FRCNT)
	AND	$0F
	JR	NZ,SLGC08
;
	LD	A,(HL)
	INC	A
	AND	$03
	LD	(HL),A
SLGC08
;;	LD	HL,ENMUKI
;;	ADD	HL,BC
	LD	E,(HL)
	SLA	E
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	RRA
	RRA
	RRA
	AND	$01
	OR	E
	CALL	ENPTST
SLGOCK
	LD	HL,ENHNFG
	ADD	HL,BC
	LD	A,(HL)
	AND	A
		ret	Z
;;;11/11	JR	Z,SLGC10
;
	CALL	STATINC
	LD	(HL),$02
;
	CALL	LDTIM0
	LD	(HL),$40
;
		jp	ENSDCL
;;;11/11	CALL	ENSDCL
;;;11/11SLGC10
;;;11/11	RET
;-------------------------------------
SLWKXS
	DB	$0C,$F4,$00,$00
SLWKYS
	DB	$00,$00,$F4,$0C
;- - - - - - - - - - - - - - - - - -
SLTSTP
	CALL	CREPKEL
;
	CALL	LDTIM0
	JR	NZ,SLS090
;
	CALL	RNDSUB
	AND	$1F
	ADD	A,$20
	LD	(HL),A
;
	CALL	STATINC
	LD	(HL),B
;
	CALL	RNDSUB
	AND	$03
	LD	E,A
	LD	D,B
	LD	HL,SLWKXS
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
	LD	HL,SLWKYS
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),A
SLS090
	JR	SLPTST
;-------------------------------------
SLTGO 
	LD	HL,ENJYUN
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JP	NZ,SLG090
;
	LD	(WORK0),A
;
	LD	E,ENNO-1
	LD	D,B
SLG020
	LD	HL,ENMODE
	ADD	HL,DE
	LD	A,(HL)
	AND	A
	JR	Z,SLG050
;
	LD	HL,ENMYNO
	ADD	HL,DE
	LD	A,(HL)
	CP	SLOT
	JR	NZ,SLG050
;
	LD	HL,ENSTAT
	ADD	HL,DE
	LD	A,(HL)
	CP	$02
	JR	NZ,SLG050
;
	LD	HL,ENTIM0
	ADD	HL,DE
	LD	A,(HL)
	AND	A
	JR	NZ,SLG050
;
	LD	A,(WORK0)
	INC	A
	LD	(WORK0),A
SLG050
	DEC	E
	LD	A,E
	CP	$FF
	JR	NZ,SLG020
;
	LD	A,(WORK0)
	CP	$03
	JP	NZ,SLG090	;All stop ?
;				;yes !
	PUSH	BC
	LD	C,B
;
	LD	E,ENNO-1
	LD	D,B
SLG058
	LD	HL,ENMODE
	ADD	HL,DE
	LD	A,(HL)
	AND	A
	JR	Z,SLG060
;
	LD	HL,ENMYNO
	ADD	HL,DE
	LD	A,(HL)
	CP	SLOT
	JR	NZ,SLG060
;
	LD	HL,ENMUKI
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,WORK2
	ADD	HL,BC
	LD	(HL),A
	INC	BC
SLG060
	DEC	E
	LD	A,E
	CP	$FF
	JR	NZ,SLG058
;
	POP	BC
;
	CALL	NOSDST	;(S)
;
	LD	E,$00
;
	LD	A,(WORK2)
;;	CP	$02
;;	JR	NC,SLG068
;;	JR	NC,SLG070
	LD	HL,WORK3
	CP	(HL)
	JR	NZ,SLG068
;;	JR	NZ,SLG070
	INC	HL
	CP	(HL)
	JR	NZ,SLG068	;�S�������H
;;	JR	NZ,SLG070	;�S�������H
;				;YES !

		LD	HL,SOUND1	; ���̃T�E���h�Z�b�g��
		LD	(HL),$02	; �����Ɉړ�

	LD	E,$FF
	CP	$02
	JR	NC,SLG068	;������H(�n�[�gor�_�C���j
;
;(CGB)�T�E���h�Z�b�g��	LD	HL,SOUND1
;(CGB)��Ɉړ�����	LD	(HL),$02	;(S)	; yes !
;
	LD	E,HART1
	CP	$01
	JR	NZ,SLG068
	LD	E,RUPY1
SLG068
	LD	A,E
	LD	(ENHELP),A
;
SLG070
	LD	E,ENNO-1
	LD	D,B
SLG078
	LD	HL,ENMODE
	ADD	HL,DE
	LD	A,(HL)
	AND	A
	JR	Z,SLG07A
;
	LD	HL,ENMYNO
	ADD	HL,DE
	LD	A,(HL)
	CP	SLOT
	JR	NZ,SLG07A
;
	LD	A,(ENHELP)
	AND	A
	JR	NZ,SLG079
;
	LD	HL,ENSTAT
	ADD	HL,DE
	LD	(HL),D
	JR	SLG07A
SLG079
	LD	HL,ENITMF
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,ENTIM4
	ADD	HL,DE
	LD	(HL),$1F
	LD	HL,ENMODE
	ADD	HL,DE
	LD	(HL),EFAIL
;
	LD	HL,ENMOD0
	ADD	HL,DE
	LD	(HL),%00000100
;
	LD	HL,SOUND3	;(S)
	LD	(HL),$13
;
;;	LD	HL,SOUND1	;(S)
;;	LD	(HL),$06
SLG07A
	DEC	E
	LD	A,E
	CP	$FF
	JR	NZ,SLG078
;
;
;
;
SLG090
	RET
;=====================================
;=				     =
;=====================================
SKEL0CD
	DB	$4A,$00,$4C,$00
	DB	$4C,$20,$4A,$20
	DB	$4E,$00,$4E,$20
;- - - - - - - - - - - - - - - - - - - -
SKEL0MV
	LD	DE,SKEL0CD
	CALL	EN2CST
;
	CALL	E4STCK
;
	CALL	E4HNSB
	CALL	CREPKEL
;
		LD	A,(DNJNNO)
		CP	NEWDJ		;���̃_���W�������H
		JR	NZ,SKEL0MV_PASS	;	NO --> SKEL0MV_PASS
		LD	A,:SKEL0MV
		jp	FK_BOSS_KOBUN_SUB
;;;;;;;;		CALL	FK_BOSS_KOBUN_SUB
;;;;;;;;		RET
SKEL0MV_PASS
;
	LD	A,(ENSTAT2)
	RST	0
	DW	SKSTOP
	DW	SKWALK
	DW	SKJUMP
	DW	SKDOWN
;=========================================
SKSTOP
	CALL	LDTIM0
		ret	NZ
;;;11/11	JR	NZ,SKS010
;
		jp	STATINC
;;;11/11	CALL	STATINC
;;;11/11SKS010
;;;11/11	RET
;=========================================
SKWALK
	LD	A,(FRCNT)
	XOR	C
	AND	$3
	JR	NZ,SKW010
;
	LD	A,$08
	CALL	PSERCHL
SKW010
	CALL	E4XCHK
	ADD	A,$1C
	CP	$38
	JR	NC,SKW020
	CALL	E4YCHK
	ADD	A,$1C
	CP	$38
	JR	NC,SKW020
;
;;;	LD	A,$28
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),$28 ;A
;
	LD	A,$10
	CALL	PSERCHL
;
	CALL	STATINC
SKW020
	CALL	E4MVCL
	CALL	ENBGCKL
;
	LD	A,(FRCNT)
	RRA
	RRA
	AND	%00000001
		jp	ENPTST
;;;11/11	CALL	ENPTST
;;;11/11	RET
;=========================================
SKJUMP
	CALL	E4MVCL
	CALL	ENBGCKL
	CALL	E4ZCLC
;
	LD	HL,ENZSPD
	ADD	HL,BC
	DEC	(HL)
	DEC	(HL)
	LD	A,(HL)
	CP	$2
	JR	NC,SKJ010
;
;;	LD	A,$C0
	LD	(HL),$C0 ;A
;
	CALL	LDTIM0
;;	LD	A,$10
	LD	(HL),$10 ;A
;
	CALL	ENSDCL
;
	CALL	STATINC
SKJ010
	LD	A,$2
		jp	ENPTST
;;;11/11	CALL	ENPTST
;;;11/11	RET
;=========================================
SKDOWN
	CALL	LDTIM0
		ret	NZ
;;;11/11	JR	NZ,SKD090
;
	CALL	E4ZCLC
;
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,SKD010
	AND	%10000000
		ret	Z
;;;11/11	JR	Z,SKD090
;
SKD010
	LD	(HL),B
;
	CALL	LDTIM0
;;	LD	A,$20
	LD	(HL),$20 ;A
;
	CALL	STATINC
	LD	(HL),B
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	A,(HL)
	LD	(HL),B
	BIT	7,A
		ret	Z
;;;11/11	JR	Z,SKD090
;
	CP	$D0
		ret	NC
;;;11/11	JR	NC,SKD090
;
	LD	A,(ENSVXL)
	LD	(WORK0),A
	LD	A,(ENDSYP)
	ADD	A,$C
	LD	(WORK1),A
		jp	FLASHST
;;;11/11	CALL	FLASHST
;;;11/11SKD090
;;;11/11	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�� �� ���{�X			  %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
MZMKCK
	DB	$00,$03,$01,$02
;;;	DB	$01,$02,$00,$03
;
MIZUBMV
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JP	NZ,MIZUSMV
;
	LD	HL,ENWRK2
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	NZ,MZBI100
;
	INC	(HL)
;
	LD	HL,ENLIFE
	ADD	HL,BC
	LD	(HL),$08
;
	LD	HL,ENWRK3
	ADD	HL,BC
	LD	(HL),$01
MZBI100
	CALL	SHRVSE
;
	CALL	MIZUBCS
;
	LD	A,(ENMODE2)
	CP	EMOVE
	JP	NZ,BSFLSB
;
	CALL	E4STCK
;
	CALL	BSSDCK	;(S)
;
	CALL	ENHNCL
;
	CALL	CRENPLL
;
	CALL	E4MVCL
;
	LD	A,(PLJPFG)
	AND	A
	JR	NZ,MZB000
;
	LD	HL,ENMOD3
	ADD	HL,BC
	LD	(HL),%11000100
;
	LD	A,(ENSTAT2)
	AND	A
	JR	NZ,MZB0F8
;
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	E,(HL)
	LD	D,B
	LD	HL,MZMKCK
	ADD	HL,DE
	LD	A,(HL)
	PUSH	AF
	CALL	E4XYCK
	POP	AF
	CP	E
	JR	Z,MZB0F8
;
	LD	HL,ENMOD3
	ADD	HL,BC
	LD	(HL),%10000100
MZB0F8
	CALL	CRKNENL
MZB000
	LD	A,(ENSTAT2)
	RST	00
	DW	MZB1000
	DW	MZB2000
;---------------------------------------
MZXSPD
	DB	$14,$00,$EC,$00
;;	DB	$18,$00,$E8,$00
MZYSPD
	DB	$00,$14,$00,$EC
;;	DB	$00,$18,$00,$E8
;----------------------------------
MZCHPT
	DB	6,7
	DB	0,1
	DB	4,5
	DB	2,3
MZSXAD
	DB	$10,$10
	DB	$F4,$0C
	DB	$F0,$F0
	DB	$F4,$0C
MZSYAD
	DB	$F4,$0C
	DB	$10,$10
	DB	$F4,$0C
	DB	$F0,$F0
MZSXSD
	DB	$80,$80
	DB	$80,$7F
	DB	$7F,$7F
	DB	$80,$7F
MZSYSD
	DB	$80,$7F
	DB	$80,$80
	DB	$80,$7F
	DB	$7F,$7F
MZSCPT
	DB	$00,$02
	DB	$00,$01
	DB	$01,$03
	DB	$02,$03
;
;--------------------------------------
MZB1000
	LD	HL,ENFLSH
	ADD	HL,BC
	LD	A,(HL)
;;	CP	$05
	AND	A
	JR	Z,MZB1002
;
	CALL	MZB1003
;
	CALL	STATINC
;
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENWRK4
	ADD	HL,BC
	LD	(HL),A
;
	CALL	LDTIM0
	LD	(HL),$58
;
	CALL	RNDSUB
	AND	$01
	JR	NZ,MZB0900
;
	LD	HL,ENWRK3
	ADD	HL,BC
	LD	A,(HL)
	CPL
	INC	A
	LD	(HL),A
;
MZB0900
		jp	ENSDCL
;;;11/11	CALL	ENSDCL
;;;11/11;
;;;11/11	RET
;---------------------------------
MZB1002
	CALL	LDTIM0
	JR	Z,MZB1003
;
;;;	CALL	ENSDCL
;
	CP	$01
	JR	Z,MZBNEXT
	RET
MZB1003
;;	LD	HL,ENWRK3
;;	ADD	HL,BC
;	LD	HL,ENLIFE
;	ADD	HL,BC
;	LD	A,(HL)
;	CP	$05
;	JR	Z,MZB1025
;	CP	$06
;	JR	Z,MZB1025
;	CP	$07
;	JR	Z,MZB1025
;	CP	$08
;	JR	NZ,MZB1028
;;
;MZB1025
;	LD	(HL),$04
;
;	CALL	STATINC
;	CALL	LDTIM0
;	LD	(HL),$6A
;;
;	LD	HL,ENWRK3
;	ADD	HL,BC
;	LD	A,(HL)
;	CPL
;	INC	A
;	LD	(HL),A
;
;;	LD	HL,ENWRK3
;;	ADD	HL,BC
;;	LD	(HL),$04
MZB1028
	LD	HL,ENXPSL
	ADD	HL,BC
	LD	A,(HL)
	CP	$20
	JR	C,MZB1010
	CP	$80
	JR	NC,MZB1010
;
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	A,(HL)
	CP	$28
	JR	C,MZB1008
	CP	$68
	JR	C,MZB1050
;
MZB1008
	LD	A,(ENSVYL)
	LD	(HL),A
	JR	MZB1020
MZB1010
;;;	CALL	ENPSSV
	LD	A,(ENSVXL)
	LD	(HL),A
MZB1020
	CALL	LDTIM0
	LD	(HL),$15
;
		jp	ENSDCL
;;;11/11	CALL	ENSDCL
;;;11/11	RET
;
;
MZBNEXT
;;	LD	E,$01
;;	LD	HL,ENLIFE
;;	ADD	HL,BC
;;	LD	A,(HL)
;;	CP	$05
;;	JR	NC,MZB1030
	LD	HL,ENWRK3
	ADD	HL,BC
	LD	E,(HL)
;
;;	LD	E,$FF
MZB1030
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	A,(HL)
	ADD	A,E
	AND	$03
	LD	(HL),A
MZSDST
MZB1050
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	A,(HL)
;;	LD	HL,ENWRK3
;;	ADD	HL,BC
;;	OR	(HL)
	LD	E,A
	LD	D,B
	LD	HL,MZXSPD
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
	LD	HL,MZYSPD
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),A
;
	SLA	E
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	AND	$01
	OR	E
	AND	%00000111
	LD	E,A
	LD	D,B
	LD	HL,MZCHPT
	ADD	HL,DE
	LD	A,(HL)
	CALL	ENPTST
;
	LD	A,(FRCNT)
	AND	$0F
	JR	NZ,MZB10A0
;
	LD	A,$2F
	LD	(SOUND3),A	;(S)
;
	LD	A,$01
MZB1090
	LD	(ENHELP),A
;
	LD	A,MIZUB
	CALL	ENIDSHL
	JR	C,MZB10A0
;
	PUSH	BC
;
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	A,(HL)
	SLA	A
	LD	HL,ENHELP
	OR	(HL)
	LD	C,A
	LD	HL,MZSXAD
	ADD	HL,BC
	LD	A,(WORK0)
	ADD	A,(HL)
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,MZSYAD
	ADD	HL,BC
	LD	A,(WORK1)
	ADD	A,(HL)
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,MZSXSD
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,MZSYSD
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENYSPD
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,MZSCPT
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENCHPT
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,ENWRK0
	ADD	HL,DE
	LD	(HL),$01
;
	LD	HL,ENMOD0
	ADD	HL,DE
	LD	(HL),%11000010
	LD	HL,ENMOD3
	ADD	HL,DE
	LD	(HL),%00000000
;
	LD	HL,ENTIM0
	ADD	HL,DE
	LD	(HL),$0C
;
	POP	BC
;
	LD	A,(ENHELP)
	DEC	A
	CP	$FF
	JR	NZ,MZB1090
;
MZB10A0
	RET
;=====================================
MZB2000
	CALL	LDTIM0
	JR	NZ,MZB2010
;
;;;	LD	(HL),$20
;
	LD	HL,ENWRK4
	ADD	HL,BC
	LD	A,(HL)
	XOR	$02
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	(HL),A
;
	CALL	STATINC
	LD	(HL),B
	RET
;;	JP	MZSDST
MZB2010
	AND	$03
	JR	NZ,MZB2020
;
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	A,(HL)
	INC	A
	AND	$03
	LD	(HL),A
MZB2020
	CALL	MZSDST
		jp	ENSDCL
;;;11/11	CALL	ENSDCL
;;;11/11;
;;;11/11	RET
;=====================================
MIZUBCD
;0	D1
	DB	$F8,$F8,$60,$02
	DB	$F8,$00,$62,$02
	DB	$F8,$08,$62,$22
	DB	$F8,$10,$60,$22
	DB	$08,$F8,$64,$02
	DB	$08,$00,$66,$02
	DB	$08,$08,$66,$22
	DB	$08,$10,$64,$22
;1	D2
	DB	$FA,$F8,$60,$02
	DB	$FA,$00,$62,$02
	DB	$FA,$08,$62,$22
	DB	$FA,$10,$60,$22
	DB	$08,$F8,$64,$02
	DB	$08,$00,$66,$02
	DB	$08,$08,$66,$22
	DB	$08,$10,$64,$22
;2	U1
	DB	$F8,$F8,$64,$42
	DB	$F8,$00,$66,$42
	DB	$F8,$08,$66,$62
	DB	$F8,$10,$64,$62
	DB	$08,$F8,$60,$42
	DB	$08,$00,$62,$42
	DB	$08,$08,$62,$62
	DB	$08,$10,$60,$62
;3	U2
	DB	$F8,$F8,$64,$42
	DB	$F8,$00,$66,$42
	DB	$F8,$08,$66,$62
	DB	$F8,$10,$64,$62
	DB	$06,$F8,$60,$42
	DB	$06,$00,$62,$42
	DB	$06,$08,$62,$62
	DB	$06,$10,$60,$62
;4	L1
	DB	$F8,$F8,$68,$02
	DB	$F8,$00,$6A,$02
	DB	$F8,$08,$62,$22
	DB	$F8,$10,$60,$22
	DB	$08,$F8,$68,$42
	DB	$08,$00,$6A,$42
	DB	$08,$08,$62,$62
	DB	$08,$10,$60,$62
;5	L2
	DB	$F8,$F8,$68,$02
	DB	$F8,$00,$6A,$02
	DB	$F8,$06,$62,$22
	DB	$F8,$0E,$60,$22
	DB	$08,$F8,$68,$42
	DB	$08,$00,$6A,$42
	DB	$08,$06,$62,$62
	DB	$08,$0E,$60,$62
;6	R1
	DB	$F8,$F8,$60,$02
	DB	$F8,$00,$62,$02
	DB	$F8,$08,$6A,$22
	DB	$F8,$10,$68,$22
	DB	$08,$F8,$60,$42
	DB	$08,$00,$62,$42
	DB	$08,$08,$6A,$62
	DB	$08,$10,$68,$62
;7	R2
	DB	$F8,$FA,$60,$02
	DB	$F8,$02,$62,$02
	DB	$F8,$08,$6A,$22
	DB	$F8,$10,$68,$22
	DB	$08,$FA,$60,$42
	DB	$08,$02,$62,$42
	DB	$08,$08,$6A,$62
	DB	$08,$10,$68,$62
;- - - - - - - - - - - - - - - - - - - -
MIZUBCS
	LD	A,(ENCHPT2)
	RLA
	RLA
	RLA
	RLA
	RLA
	AND	%11100000
	LD	E,A
	LD	D,B
	LD	HL,MIZUBCD
	ADD	HL,DE
;
	LD	C,$08
		jp	ENOMST
;;;11/11	CALL	ENOMST
;;;11/11	RET
;===============================================
;=					       =
;===============================================
MIZUSCD
	DB	$6C,$00,$6E,$00
	DB	$6E,$20,$6C,$20
	DB	$6C,$40,$6E,$40
	DB	$6E,$60,$6C,$60
;
MIZUSMV
	LD	DE,MIZUSCD
	CALL	EN2CST
;
	CALL	E4STCK
;
	CALL	LDTIM0
	JP	Z,E4CLER
;
	CP	$06
		ret	NZ
;;;11/11	JR	NZ,MZS010
;
		jp	E4MVCL
;;;11/11	CALL	E4MVCL
;;;11/11MZS010
;;;11/11	RET
;===============================================
;=					       =
;===============================================
SWBLKCD
	DB	$F8,$10,$FA,$10
;--------------------------------------
SWBLKMV
	LD	A,(ENSTAT2)
	AND	A
	JR	NZ,SWI100
;
	LD	HL,ENXPSL
	ADD	HL,BC
	LD	A,(HL)
	ADD	A,$08
	LD	(HL),A
;
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	(HL),$10
	JP	STATINC
;---------------------------------
SWI100
	LD	DE,SWBLKCD
	CALL	EN2CST
;
	CALL	E4STCK
;
;	LD	A,(ENSTAT2)
;	DEC	A
;	RST	00
;	DW	SWB1000
;	DW	SWB2000
;;----------------------------------
;SWB1000
;	LD	A,(ENSVXL)
;	LD	HL,ENWRK1
;	ADD	HL,BC
;	LD	(HL),A
;	SUB	$18
;	LD	HL,ENWRK0
;	ADD	HL,BC
;	LD	(HL),A
;;
;	JP	STATINC
;;----------------------------------
;SWB2000
	LD	A,(HIKUSFG)
	CP	$02
	JR	Z,SWB2050
	AND	A
	JR	Z,SWB2010
;
	LD	HL,ENCONT
	ADD	HL,BC
	INC	(HL)
	LD	A,(HL)
	CP	$0A
	JR	NZ,SWB2008
;
	LD	(HL),B
;
	LD	A,$11
	LD	(SOUND3),A	;(S)
;
SWB2002
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	CP	$20
	JR	NC,SWB2008
;
	INC	(HL)
SWB2008
	RET
;-------------------------------------
SWB2010
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,SWB2060
;
	LD	A,(FRCNT)
	AND	$0F
	JR	NZ,SWB2050
;
	DEC	(HL)
SWB2050
	LD	A,(HL)
	CP	$04
	JR	NC,SWB2058
;
	CALL	CRENPSL
		ret	NC
;;;11/11	JR	NC,SWB2070
;
	LD	A,$08
	LD	(HANEFG),A	
;
	LD	A,$10
	CALL	PSERCH2L
;
	LD	A,(WORK0)
	LD	(PLYSPD),A
	LD	A,(WORK1)
	LD	(PLXSPD),A
SWB2058
	RET
;
;SWB205A
;	CALL	E4XCHK
;	LD	A,E
;	CP	$00
;;
;	LD	A,$10
;	JR	Z,SWB205B 
;	LD	A,$F0
;SWB205B
;	LD	(PLXSPD),A
;	RET
SWB2060
	CALL	CRENPSL
		ret	NC
;;;11/11	JR	NC,SWB2070
;
		jp	M4CRSB
;;;11/11	CALL	M4CRSB
;;;11/11SWB2070
;;;11/11	RET
;----------------------------------
;--------------------------------------
SWBLK2MV
	LD	A,(ENSTAT2)
	AND	A
	JP	NZ,SWI100
;
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	A,(HL)
	ADD	A,$08
	LD	(HL),A
;
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	(HL),$10
	JP	STATINC
;===============================================
;=					       =
;===============================================
MOTOSCD
	DB	$44,$01,$44,$21
	DB	$46,$01,$46,$21
MOTOSCD2
	DB	$64,$01,$64,$21
	DB	$66,$01,$66,$21
;- - - - - - - - - - - - - - - - - - - -
;
MOTOSMV
	LD	DE,MOTOSCD
;
	LD	A,(DNJNNO)
	CP	$0A
	JR	NZ,MT0010
;
	LD	DE,MOTOSCD2
MT0010
	CALL	EN2CST
;
	CALL	E4STCK
;
	CALL	E4HNSB
	CALL	CREPKEL
;
	CALL	E4MVCL
	CALL	ENBGCKL
;---------------------------------------
MOMAIN
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	AND	$01
;
	CALL	ENPTST
;
	LD	A,(FRCNT)
	XOR	C
	AND	$03
	JR	NZ,MOWARI
;
	CALL	RNDSUB
	XOR	C
	AND	$07
	ADD	A,$04
;
MOSUB
	CALL	PSERCH2L
;
	LD	A,(WORK0)
	LD	HL,ENYSPD
	CALL	RURURU
;
	LD	HL,ENCBFG
	ADD	HL,BC
	LD	A,(HL)
	AND	$0C
	JR	Z,MXCHK
;
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),B ;$00
;
MXCHK
	LD	A,(WORK1)
	LD	HL,ENXSPD
	CALL	RURURU
;
	LD	HL,ENCBFG
	ADD	HL,BC
	LD	A,(HL)
	AND	$03
	JR	Z,MMFIN
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),B ;$00
;
MMFIN
	RET
;
RURURU
;
	ADD	HL,BC
	SUB	(HL)
	JR	Z,MOWARI
;
	BIT	7,A
	JR	Z,MOINC
;
	DEC	(HL)
	JR	MOWARI
;
MOINC
	INC	(HL)
;
MOWARI
	RET
;
;;;11/11;		�y�d�X�D�r�Ɉړ������I�I�I
;;;11/11;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;;;11/11;%	�p�l�����Ԕ閧				%
;;;11/11;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;;;11/11PANELCD
;;;11/11	DB	$FF,$00,$FF,$20
;;;11/11	DB	$3A,$00,$3A,$20
;;;11/11	DB	$3C,$00,$3C,$20
;;;11/11	DB	$3C,$00,$3C,$20
;;;11/11PNCKXP
;;;11/11	DB	$58,$78,$78,$28,$28
;;;11/11	DB	$28,$78,$58,$28,$78
;;;11/11	DB	$28,$78,$28,$78,$58
;;;11/11	DB	$58,$28,$78,$28,$78
;;;11/11PNCKYP
;;;11/11	DB	$40,$30,$50,$50,$30
;;;11/11	DB	$30,$50,$40,$50,$30
;;;11/11	DB	$50,$50,$30,$30,$40
;;;11/11	DB	$40,$50,$30,$30,$50
;;;11/11;- - - - - - - - - - - - - - - - - - - 
;;;11/11PNFLCD
;;;11/11;0
;;;11/11	DB	$F2,$00,$3A,$00
;;;11/11	DB	$F2,$08,$3A,$20
;;;11/11	DB	$0E,$00,$3A,$00
;;;11/11	DB	$0E,$08,$3A,$20
;;;11/11;1
;;;11/11	DB	$F6,$0A,$3A,$00
;;;11/11	DB	$F6,$12,$3A,$20
;;;11/11	DB	$0A,$F6,$3A,$00
;;;11/11	DB	$0A,$FE,$3A,$20
;;;11/11;2
;;;11/11	DB	$00,$0E,$3A,$00
;;;11/11	DB	$00,$16,$3A,$20
;;;11/11	DB	$00,$F2,$3A,$00
;;;11/11	DB	$00,$FA,$3A,$20
;;;11/11;3
;;;11/11	DB	$0A,$0A,$3A,$00
;;;11/11	DB	$0A,$12,$3A,$20
;;;11/11	DB	$F6,$F6,$3A,$00
;;;11/11	DB	$F6,$FE,$3A,$20
;;;11/11;- - - - - - - - - - - - - - - - - - - 
;;;11/11PANELMV
;;;11/11PANEL2MV
;;;11/11	LD	A,(ENSTAT2)
;;;11/11	AND	A
;;;11/11	JR	Z,PN0000	;������t���b�V���H
;;;11/11;				;YES !
;;;11/11	CALL	LDTIM0
;;;11/11	JP	Z,E4CLER
;;;11/11	RLA
;;;11/11	RLA
;;;11/11	AND	%00110000
;;;11/11	LD	E,A
;;;11/11	LD	D,B
;;;11/11	LD	HL,PNFLCD
;;;11/11	ADD	HL,DE
;;;11/11	LD	C,$04
;;;11/11	CALL	ENOMST
;;;11/11;
;;;11/11	LD	A,$02
;;;11/11	CALL	NXOMSBL
;;;11/11	RET	
;;;11/11;
;;;11/11PN0000
;;;11/11	CALL	E4STCK
;;;11/11;
;;;11/11	LD	A,(ENMYNO2)
;;;11/11	CP	PANEL
;;;11/11	JR	NZ,PN0001
;;;11/11;
;;;11/11	LD	A,(FRCNT)
;;;11/11	RRA
;;;11/11	RRA
;;;11/11	AND	$03
;;;11/11	CALL	ENPTST
;;;11/11;
;;;11/11	LD	DE,PANELCD
;;;11/11	CALL	EN2CST
;;;11/11PN0001
;;;11/11	LD	HL,ENCONT
;;;11/11	ADD	HL,BC
;;;11/11;
;;;11/11	LD	A,(PANELMD)
;;;11/11;;	AND	$07
;;;11/11	LD	E,A
;;;11/11	SLA	A
;;;11/11	SLA	A
;;;11/11	ADD	A,E
;;;11/11	ADD	A,(HL)
;;;11/11	LD	E,A
;;;11/11	LD	D,B
;;;11/11;
;;;11/11	LD	HL,PNCKXP
;;;11/11	ADD	HL,DE
;;;11/11	LD	A,(HL)
;;;11/11;;;	LD	(ENSVXL),A
;;;11/11	LD	HL,ENXPSL
;;;11/11	ADD	HL,BC
;;;11/11	LD	(HL),A
;;;11/11	LD	HL,PNCKYP
;;;11/11	ADD	HL,DE
;;;11/11	LD	A,(HL)
;;;11/11	LD	HL,ENYPSL
;;;11/11	ADD	HL,BC
;;;11/11	LD	(HL),A
;;;11/11;;;	LD	(ENDSYP),A
;;;11/11;
;;;11/11	CALL	ENPSSV
;;;11/11;
;;;11/11	LD	HL,ENWRK0
;;;11/11	ADD	HL,BC
;;;11/11	LD	A,(FTUNNO)
;;;11/11	CP	(HL)
;;;11/11	JR	Z,PN00A0
;;;11/11	CP	DTURZ
;;;11/11	JR	NZ,PN00A0
;;;11/11;
;;;11/11	CALL	CRENPSL
;;;11/11	JR	NC,PN0090
;;;11/11;
;;;11/11	LD	HL,ENCONT
;;;11/11	ADD	HL,BC
;;;11/11	LD	A,(HL)
;;;11/11	CP	$04
;;;11/11	JR	NZ,PN0030
;;;11/11;
;;;11/11	CALL	E4CLER
;;;11/11;
;;;11/11	CALL	NAZOCLR	;(S)
;;;11/11;
;;;11/11;;	LD	HL,PANELMD
;;;11/11;;	SET	7,(HL)
;;;11/11;;	RET
;;;11/11	JR	PN00A0
;;;11/11PN0030
;;;11/11	INC	(HL)
;;;11/11;
;;;11/11	LD	A,$13
;;;11/11	LD	(SOUND1),A	;(S)
;;;11/11;
;;;11/11	LD	A,PANEL
;;;11/11	CALL	ENIDSHL
;;;11/11	JR	C,PN0038
;;;11/11;
;;;11/11	LD	A,(WORK0)
;;;11/11	LD	HL,ENXPSL
;;;11/11	ADD	HL,DE
;;;11/11	LD	(HL),A
;;;11/11;
;;;11/11	LD	A,(WORK1)
;;;11/11	LD	HL,ENYPSL
;;;11/11	ADD	HL,DE
;;;11/11	LD	(HL),A
;;;11/11;
;;;11/11	PUSH	BC
;;;11/11	PUSH	DE
;;;11/11	POP	BC
;;;11/11;
;;;11/11	CALL	STATINC
;;;11/11	CALL	LDTIM0
;;;11/11	LD	(HL),$18
;;;11/11;
;;;11/11	POP	BC
;;;11/11PN0038
;;;11/11	JR	PN00A0
;;;11/11;;	RET
;;;11/11;
;;;11/11PN0090
;;;11/11	LD	HL,ENCONT
;;;11/11	ADD	HL,BC
;;;11/11	LD	(HL),B
;;;11/11;
;;;11/11PN00A0
;;;11/11	LD	A,(FTUNNO)
;;;11/11	LD	HL,ENWRK0
;;;11/11	ADD	HL,BC
;;;11/11	LD	(HL),A
;;;11/11	RET
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	���J����  ���� �d��			%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
HNMVXS
	DB	$08,$F8,$00,$00
HNMVYS
	DB	$00,$00,$F8,$08
;
HINO0MV
	CALL	HINO0CS
;
	XOR	A
	LD	(ITEMNOT),A
;
	LD	A,(ENMODE2)
	CP	EMOVE
	JP	NZ,BSFLSB
;
	CALL	E4STCK
;
	CALL	BSSDCK	;(S)
;
	CALL	E4HNSB
;
	CALL	LDTIM1
	JR	Z,HNM01110
;
	CALL	HNHELP	;�R�E�`���N�I
HNM01110
	LD	A,(ENSTAT2) ;HL)
	CP	$04
	JR	NC,HIN0000
;
	LD	HL,ENFLSH
	ADD	HL,BC
	LD	A,(HL)
	CP	$03
	JR	NZ,HIN0000
;
	CALL	STATINC
	LD	(HL),$05
;
	CALL	LDTIM0
	LD	(HL),$20
	RET
HIN0000
	LD	A,(ENSTAT2) ;HL)
	RST	00	
	DW	HN1WLK
	DW	HNSTOP
	DW	HNATWT
	DW	HNATCK
	DW	HNCACH
	DW	HNBOMB
;
;;	AND	A
;;	JR	Z,HN1WLK
;----------------------------------
HNSTOP
	CALL	CREPKEL
;- - STOP - -
	CALL	LDTIM0
	JR	Z,HN1S02
;
	CP	$0A
	JR	NZ,HN1S01	; Shot chance ?
;				; yes 
	CALL	E4XYCK
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	A,E
	CP	(HL)
	JR	NZ,HN1S01
;
;;	BOMBR SET
HN1S01
		jp	ENBGCKL
;;;11/11	CALL	ENBGCKL
;;;11/11	RET
;--------------------------------
HN1S02
	LD	HL,ENWRK2
	ADD	HL,BC
	INC	(HL)
	LD	A,(HL)
	CP	$02
	JR	NZ,HN1S03	; Atack time ?
;				; yes !
	LD	(HL),B
;
	CALL	RNDSUB
	AND	$01
	JR	NZ,HN1S03
;
	CALL	STATINC
	LD	(HL),$02
;
	CALL	LDTIM0
	LD	(HL),$30
	RET
HN1S03
	CALL	LDTIM0
	CALL	RNDSUB
	AND	$1F
	OR	$20
	LD	(HL),A
;
	CALL	STATINC
	LD	(HL),B
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	INC	A
	AND	$3
	LD	(HL),A
	CP	$00
	JR	NZ,HN1S08	; 4 move 1 serch !
;
	CALL	E4XYCK
	JR	HN1S0A
HN1S08
	CALL	RNDSUB
HN1S0A
	AND	$03
;
	LD	E,A
	LD	D,B ;$0
	LD	HL,HNMVXS
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
	LD	HL,HNMVYS
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),A
HN1S10
	RET
;------------------------------------------
;- - WALK - -
HN1WLK
	CALL	CREPKEL
;
	LD	HL,ENCBFG
	ADD	HL,BC
	LD	A,(HL)
	AND	%00001111
	JR	NZ,HN1STS
;
	CALL	LDTIM0
	JR	NZ,HN1M10
HN1STS
	CALL	RNDSUB
	AND	$0F
	OR	$10
	LD	(HL),A
;
	CALL	STATINC
;
	CALL	ENSDCL
HN1M10
	CALL	E4MVCL
	CALL	ENBGCKL
;=====================================
HNPTST
	LD	HL,ENCONT
	ADD	HL,BC
	INC	(HL)
	LD	A,(HL)
	RRA
	RRA
	RRA
	RRA
;;	RRA
	AND	$01
		jp	ENPTST
;;;11/11	CALL	ENPTST
;;;11/11	RET
;------------------------------------------
HNATWT
	CALL	CREPKEL
;
	CALL	LDTIM0
	JR	NZ,HNAW10
;
	LD	(HL),$20
;
	CALL	STATINC
;
	LD	A,$18
	CALL	PSERCHL
HNAW10
HNPTS2
	CALL	HNPTST
	CALL	HNPTST
;
	LD	A,(FRCNT)
	AND	$0F
	JR	NZ,HNP210
;
	LD	A,$20
	LD	(SOUND1),A	;(S)
;
HNP210
	RET
;------------------------------------------
HNATCK
	CALL	CREPKEL
;
	CALL	LDTIM0
	JR	NZ,HNAT10
;
	CALL	STATINC
	LD	(HL),B
;
HNAT10
	CALL	E4MVCL
	CALL	ENBGCKL
;
	CALL	E4XCHK
	ADD	A,$18
	CP	$30
	JR	NC,HNAT30
;
	CALL	E4YCHK
	ADD	A,$18
	CP	$30
	JR	NC,HNAT30
;
	LD	A,(PLMODE)
	CP	PMOVE
	JR	NZ,HNAT30
;
	CALL	STATINC
;
	CALL	LDTIM0
	LD	(HL),$3F+$10
;
	LD	A,$16
	LD	(SOUND2),A	;(S)
HNAT30
	LD	A,(FRCNT)
	AND	$07
	JR	NZ,HNAT50
;
	LD	A,(ENSVXL)
	LD	(WORK0),A
;
	LD	A,(ENDSYP)
	ADD	A,$0A
	LD	(WORK1),A
;
	LD	A,DSZN
	CALL	EXIDSH
HNAT50
	JR	HNPTS2
;---------------------------------------
HNCAPT
	DB	$00,$00,$00,$00,$01,$01,$01,$01,$00,$00
HNCAXD
	DB	$EF,$EF,$EF,$EF,$EF,$EF,$EF,$EF,$F3,$F7,$FB,$00
HNCAZD
	DB	$15,$15,$15,$15,$15,$14,$14,$14,$10,$08,$04,$00
;- - - - - - -
HNCACH
	CALL	LDTIM0
	JR	NZ,HNCA10
;
	CALL	STATINC
	LD	(HL),B
	RET
;----------------------------------------
HNCA10
	CP	$20
	JR	NZ,HNCA20
;
	LD	A,$20
	LD	(PLYSPD),A
	LD	A,(PLXPSL)
	CP	$50
	LD	A,$E0
	JR	NC,HNCA11
	LD	A,$20
HNCA11
	LD	(PLXSPD),A
;
	LD	A,$10
	LD	(PLZSPD),A
;
	LD	A,$02
	LD	(PLJPFG),A
;
	LD	A,$08
	LD	(SOUND1),A	;(S)
;
	LD	A,$08
	LD	(HARTDW),A
;
	LD	A,(ENSVXL)
	LD	(PLXPSL),A
	LD	A,(ENSVYL)
	LD	(PLYPSL),A
;
	CALL	LDTIM1
	LD	(HL),$50
;
	RET
;-------------------------------------------
HNCA20
	RRA
	RRA
	RRA
	AND	$0F
	LD	E,A
	LD	D,B
	LD	HL,HNCAPT
	ADD	HL,DE
	LD	A,(HL)
	CALL	ENPTST
;
	CALL	LDTIM0
	CP	$20
	JR	C,HNCA90
	SUB	$20
	RRA
	RRA
	AND	$0F
	LD	E,A
	LD	D,B
	LD	HL,HNCAXD
	ADD	HL,DE
	LD	A,(ENSVXL)
	ADD	A,(HL)
	LD	(PLXPSL),A
	LD	HL,HNCAZD
	ADD	HL,DE
	LD	A,(HL)
	LD	(PLZPSL),A
;
	LD	A,$02
	LD	(PLJPFG),A
;
	LD	A,(ENSVYL)
	LD	(PLYPSL),A
;
HNHELP
	LD	A,$01
	LD	(PLSTOP),A
;
	LD	A,$6A
	LD	(PLCHPT),A
;
	LD	(ITEMNOT),A
HNCA90
	RET
;---------------------------------
HNBOMB
	CALL	CREPKEL
;
	CALL	LDTIM0
	JR	NZ,HNBO10
;
	CALL	STATINC
	LD	(HL),B
	RET
HNBO10
	LD	E,$00
	CP	$10
	JR	C,HNBO20
	INC	E
HNBO20
	CP	$10
	JR	NZ,HNBO30
;
	LD	A,BOMBR
	CALL	ENIDSHL
	JR	C,HNBO30
;
	LD	A,(WORK0)
	SUB	$0C
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	A,(WORK1)
	SUB	$00
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,ENZPSL
	ADD	HL,DE
	LD	(HL),$10
;
	JP	E4BOSET
;
HNBO30
	LD	A,E
		jp	ENPTST
;;;11/11	CALL	ENPTST
;;;11/11	RET
;---------------------------------
;==========================================
HINO0CD
;0
	DB	$F4,$F8,$60,$01
	DB	$F4,$00,$62,$01
	DB	$F4,$08,$64,$01
	DB	$F4,$10,$66,$01
	DB	$04,$F8,$68,$01
	DB	$04,$00,$6A,$01
	DB	$04,$08,$6C,$01
	DB	$04,$10,$6E,$01
;1
	DB	$F4,$F8,$66,$21
	DB	$F4,$00,$64,$21
	DB	$F4,$08,$62,$21
	DB	$F4,$10,$60,$21
	DB	$04,$F8,$6E,$21
	DB	$04,$00,$6C,$21
	DB	$04,$08,$6A,$21
	DB	$04,$10,$68,$21
;
HINO0CD7
;0
	DB	$F4,$F8,$60,$02
	DB	$F4,$00,$62,$02
	DB	$F4,$08,$64,$02
	DB	$F4,$10,$66,$02
	DB	$04,$F8,$68,$02
	DB	$04,$00,$6A,$02
	DB	$04,$08,$6C,$02
	DB	$04,$10,$6E,$02
;1
	DB	$F4,$F8,$66,$22
	DB	$F4,$00,$64,$22
	DB	$F4,$08,$62,$22
	DB	$F4,$10,$60,$22
	DB	$04,$F8,$6E,$22
	DB	$04,$00,$6C,$22
	DB	$04,$08,$6A,$22
	DB	$04,$10,$68,$22
;
HINO0CD8
;0
	DB	$F4,$F8,$60,$03
	DB	$F4,$00,$62,$03
	DB	$F4,$08,$64,$03
	DB	$F4,$10,$66,$03
	DB	$04,$F8,$68,$03
	DB	$04,$00,$6A,$03
	DB	$04,$08,$6C,$03
	DB	$04,$10,$6E,$03
;1
	DB	$F4,$F8,$66,$23
	DB	$F4,$00,$64,$23
	DB	$F4,$08,$62,$23
	DB	$F4,$10,$60,$23
	DB	$04,$F8,$6E,$23
	DB	$04,$00,$6C,$23
	DB	$04,$08,$6A,$23
	DB	$04,$10,$68,$23
;
HINO0CS
	LD	A,(ENCHPT2)
	RLA
	RLA
	RLA
	RLA
	RLA
	AND	%11100000
	LD	E,A
	LD	D,B
;
;
		LD	HL,HINO0CD8
		LD	A,(DNJNNO)
		CP	$007		;���x���W�_���W�����H
		JR	Z,HINO_SET	;	YES --> HINO_SET
		LD	HL,HINO0CD7
		CP	$006		;���x���V�_���W�����H
		JR	Z,HINO_SET	;	YES --> HINO_SET
		LD	HL,HINO0CD
HINO_SET
;
	ADD	HL,DE
	LD	C,$08
		jp	ENOMST
;;;11/11	CALL	ENOMST
;;;11/11	RET
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�m���X					%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
NOMOSMV
	LD	HL,ENJYUN
	ADD	HL,BC
	LD	(HL),$FF
;
	LD	HL,ENITMF
	ADD	HL,BC
	LD	(HL),KEYSM ; #6 �J�M
;
	LD	HL,ENLIFE
	ADD	HL,BC
	LD	A,(HL)
	CP	08	;Max 12
	JR	NC,NM0000
;
	LD	E,$02
	CP	04
	JR	NC,NM00F8
;
	LD	E,$03
NM00F8
	LD	A,E
	CALL	ENPTST
NM0000
	CALL	NOMOSCS
;
	LD	A,(ENMODE2)
	CP	EMOVE
	JR	Z,NM0001
;=====================================
BSFLSB
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	A,(HL)
	RST	00
	DW	NFL1000
	DW	NFL1800
	DW	NFL2000
	DW	NFL3000
;-------------------------------------
NFL1000
	CALL	LDTIM0
	LD	(HL),$A0
;
	LD	HL,ENFLSH
	ADD	HL,BC
	LD	(HL),$FF
;
		jp	INCWRK1
;;;11/11	CALL	INCWRK1
;;;11/11	RET
;-------------------------------------
NFL1800
	CALL	LDTIM0
		ret	NZ
;;;11/11	JR	NZ,NFL1810
;
	LD	(HL),$C0
;
	LD	HL,ENFLSH
	ADD	HL,BC
	LD	(HL),$FF
;
		jp	INCWRK1
;;;11/11	CALL	INCWRK1
;;;11/11NFL1810
;;;11/11	RET
;-------------------------------------
NFL2000
	CALL	LDTIM0
	JR	NZ,NFL2010
;
	LD	A,$1A
	LD	(SOUND3),A	;(S)
;
	CALL	BGMSET	;(S)
;
	CALL	ENFEND
;
	LD	A,(ENMYNO2)
	CP	NOMOS
	RET	Z
;
	LD	A,(ENMYNO2)
	CP	HINO0
	JR	Z,NFL20001
	CP	MIZUB
	JR	Z,NFL20001
	CP	OCHAN
	JR	NZ,NFL20011
;
NFL20001
	LD	A,(DNJNNO)
	CP	$06
	RET	NC
;
NFL20011
	JP  	DJSVSB	; Save on !
NFL2010
		jp	ESMRN4
;;;11/11	CALL	ESMRN4
;;;11/11	RET
;-------------------------------------
NFL3000
	RET
;
;=========================================
NM0001
	CALL	E4STCK
;
	CALL	BSSDCK
;
	CALL	CRKNENL
;
	CALL	M4CROS
;
	CALL	E4ZCLC
	LD	HL,ENZSPD
	ADD	HL,BC
	DEC	(HL)
	DEC	(HL)
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	AND	%10000000
	LD	(ENHELP),A
	JR	Z,NOM0010
;
	LD	(HL),B
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),B
NOM0010
	CALL	LDTIM1
	JR	Z,NOM0020
;
	LD	A,$02
	LD	(PLSTOP),A
;
	LD	A,$6A
	LD	(PLCHPT),A
NOM0020
	LD	HL,ENLIFE
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENWRK0
	ADD	HL,BC
	CP	(HL)
	LD	(HL),A
	JP	Z,NOM0050
;
	CP	$08
	JR	NC,NOM0050
	CP	$04
	JR	NC,NOM0030
;
;=============================================
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	CP	$02
	JR	NC,NOM0050
;
	INC	(HL)
;
	LD	A,KTOBJ
	CALL	ENIDSHL
	JR	C,NOM0050
;
	LD	A,(WORK0)
	LD	HL,ENXPSL
	ADD	HL,DE
	DEC	A
	LD	(HL),A
	LD	(WORK0),A
;
	LD	A,(WORK1)
	LD	HL,WORK3
	SUB	(HL)
	LD	HL,ENYPSL
	ADD	HL,DE
	SUB	$10
	JR	NOM0040
;
NOM0030
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	CP	$01
	JR	NC,NOM0050
;
	INC	(HL)
;=============================================
	LD	A,KTOBJ
	CALL	ENIDSHL
	JR	C,NOM0050
;
	LD	A,(WORK0)
	LD	HL,ENXPSL
	ADD	HL,DE
	ADD	A,$07
	LD	(HL),A
	LD	(WORK0),A
;
	LD	A,(WORK1)
	LD	HL,WORK3
	SUB	(HL)
	LD	HL,ENYPSL
	ADD	HL,DE
NOM0040
	LD	(HL),A
	LD	(WORK1),A
;
	LD	HL,ENTIM1
	ADD	HL,DE
	LD	(HL),$0F
;
	LD	HL,ENMOD0
	ADD	HL,DE
	LD	(HL),%11000100
;
	LD	A,SMK1
	CALL	EXIDSH
;
	LD	A,$29
	LD	(SOUND3),A	;(S)
NOM0050
	LD	A,(ENSTAT2)
	RST	00
	DW	NOM1000
	DW	NOM1800
	DW	NOM2000
	DW	NOM3000
	DW	NOM4000
	DW	NOM5000
	DW	NOM6000
	DW	NOM7000
;-----------------------------------------
NOM1000
	CALL	ENHNCL
;
	CALL	E4XCHK
	ADD	A,$20
	CP	$40
	JR	NC,NOM1010
;
	CALL	E4YCHK
	ADD	A,$20
	CP	$40
	JR	NC,NOM1010
;
	CALL	STATINC
;
	CALL	LDTIM0
	LD	(HL),$30
NOM1010
	RET
;-----------------------------------------
NOM1800
	CALL	ENHNCL
;
	CALL	LDTIM0
	JR	NZ,NOM1890
;
	LD	(HL),$80
;
	CALL	STATINC
NOM1890
	RRA
	RRA
	AND	$01
		jp	ENPTST
;;;11/11	CALL	ENPTST
;;;11/11	RET
;-----------------------------------------
NOM2000
	CALL	ENHNCL
;
	CALL	LDTIM0
	JR	NZ,NOM2090
;
	LD	(HL),$50
;
	CALL	STATINC
;
	LD	HL,ENMOD0
	ADD	HL,BC
	RES	7,(HL)
;
	LD	HL,ENMOD1
	ADD	HL,BC
	RES	7,(HL)
;
	LD	HL,ENMOD3
	ADD	HL,BC
	RES	6,(HL)
	RET
;
NOM2090
	LD	E,$08
	AND	%00000100
	JR	Z,NOM20A0
	LD	E,$F8
NOM20A0
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),E
;
		jp	E4XCLC
;;;11/11	CALL	E4XCLC
;;;11/11	RET
;-----------------------------------------
NOM3000
	CALL	E4HNSB
;
	CALL	LDTIM0
	JR	NZ,NOM3008
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),$30
;
	CALL	STATINC
;
E4JPSD
	LD	A,$24
	LD	(SOUND1),A	;(S)
	RET
;
NOM3008
	LD	A,(ENHELP)
	AND	A
	JR	Z,NOM3010
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),$0C
;
	LD	HL,ENLIFE
	ADD	HL,BC
	LD	A,(HL)
	CP	$05
	LD	A,$08
	JR	NC,NOM300A
	LD	A,$0C
NOM300A
	CALL	PSERCHL
;
	LD	A,$20
	LD	(SOUND1),A	;(S)
NOM3010	
		jp	E4MVCL
;;;11/11	CALL	E4MVCL
;;;11/11	RET
;-----------------------------------------
NOM4000
	CALL	E4HNSB
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	A,(HL)
	AND	%11111110
	JR	NZ,NOM4030
;
	CALL	LDTIM0
	LD	(HL),$10
;
	CALL	ENSDCL
;
	CALL	STATINC
NOM4030
		jp	E4MVCL
;;;11/11	CALL	E4MVCL
;;;11/11	RET
;-----------------------------------------
NOM5000
	CALL	E4HNSB
;
	CALL	LDTIM0
	LD	A,$00
	JR	NZ,NOM5010
;
	CALL	STATINC
;
	LD	A,$B0
NOM5010
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),A
	RET
;-----------------------------------------
NOM6000
	CALL	E4HNSB
;
	LD	A,(ENHELP)
	AND	A
		ret	Z
;;;11/11	JR	Z,NOM6030
;
	LD	A,$30
	LD	(TILTCT),A
;
	LD	A,$04
	LD	(TILTMK),A
;
	LD	A,$0B
	LD	(SOUND1),A	;(S)
;
	CALL	LDTIM0
	LD	(HL),$30
;
	LD	A,(PLJPFG)
	AND	A
	JR	NZ,NOM6010	;�v���C���[�n�ʁH
;				; YES !
	CALL	LDTIM1
	LD	(HL),$40	;���т�^�C��
NOM6010
		jp	STATINC
;;;11/11	CALL	STATINC
;;;11/11NOM6030
;;;11/11	RET
;-----------------------------------------
NOM7000
	CALL	E4HNSB
;
	CALL	LDTIM0
	JR	NZ,NOM7020
;
	CALL	STATINC
	LD	(HL),$02
NOM7020
	RET
;===================================
NOMOSCD
;0
	DB	$F4,$F8,$70,$03
	DB	$F4,$00,$72,$03
	DB	$F4,$08,$72,$23
	DB	$F4,$10,$70,$23
	DB	$04,$F8,$74,$03
	DB	$04,$00,$76,$03
	DB	$04,$08,$7A,$03
	DB	$04,$10,$7A,$23
;1
	DB	$F4,$F8,$70,$02
	DB	$F4,$00,$78,$02
	DB	$F4,$08,$78,$22
	DB	$F4,$10,$70,$22
	DB	$04,$F8,$74,$02
	DB	$04,$00,$76,$02
	DB	$04,$08,$7A,$02
	DB	$04,$10,$7A,$22
;2
	DB	$F4,$F8,$70,$02
	DB	$F4,$00,$72,$02
	DB	$F4,$08,$72,$22
	DB	$F4,$10,$70,$22
	DB	$04,$F8,$74,$02
	DB	$04,$00,$76,$02
	DB	$04,$08,$76,$22
	DB	$04,$10,$74,$22
;3
	DB	$F4,$F8,$7C,$02
	DB	$F4,$00,$7E,$02
	DB	$F4,$08,$7E,$22
	DB	$F4,$10,$7C,$22
	DB	$04,$F8,$74,$02
	DB	$04,$00,$76,$02
	DB	$04,$08,$76,$22
	DB	$04,$10,$74,$22
;-----------------------------------
NOMOSSWD
	DB	$0C,$FB,$26,$00
	DB	$0C,$01,$26,$00
	DB	$0C,$07,$26,$00
	DB	$0C,$0D,$26,$00
;-----------------------------------
NOMOSCS
	LD	A,(ENCHPT2)
	RLA
	RLA
	RLA
	RLA	
	RLA
	AND	%11100000
	LD	E,A
	LD	D,B
	LD	HL,NOMOSCD
	ADD	HL,DE
	LD	C,$08
	CALL	ENOMST
;
	LD	A,$04
	CALL	NXOMSBL
;
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,NMCS10
;
	LD	A,(ENSVYL)
	LD	(ENDSYP),A
;
	LD	HL,NOMOSSWD
	LD	C,$4
	CALL	ENOMST
NMCS10
	JP	ENPSSV
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�������l���[��				%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
	DB	00
RSSXAD
	DB	$04,$FC
RSSXSD
	DB	$08,$F8
;----------------------------------------
RANEMMV
	LD	HL,ENWRK2
	ADD	HL,BC
	LD	A,(HL)
	CP	$02
	JP	Z,RSUNA
;
	CP	$00
	JR	NZ,RN00E0	; Initial ?
;				; yes !
	INC	(HL)
;
	LD	A,$50
	LD	(BGMNO),A	;(S)
;
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	(HL),$FF
;
	CALL	LDTIM0
	LD	(HL),$50
;
	LD	E,$00
;
	LD	A,$FF
	LD	HL,ZMVBUF
RN00D0
	LD	(HLI),A
	DEC	E
	JR	NZ,RN00D0
RN00E0
	CALL	RANEMCS
;
	LD	A,(ENMODE2)
	CP	EFAIL
	JP	NZ,RN00F0
;
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	A,(HL)
	RST	00
	DW	RFL1000
	DW	RFL2000
	DW	RFL3000
	DW	RFL4000
;------------------------------------------
RFL1000
	LD	HL,ENFLSH
	ADD	HL,BC
	LD	(HL),$FF
;
	CALL	LDTIM0
	LD	(HL),$60
;
INCWRK1
	LD	HL,ENWRK1
	ADD	HL,BC
	INC	(HL)
	RET
;-----------------------------------------
RFL2000
	CALL	LDTIM0
	JR	NZ,RFL2010
;
	LD	(HL),$CF
;
	CALL	INCWRK1	
;
	LD	HL,ENWRK3
	ADD	HL,BC
	LD	(HL),$05
RFL2010
	RET
;-----------------------------------------
RFL3000
	CALL	LDTIM0
	JR	NZ,RFL3002
;
	CALL	BGMSET	;(S)
;
	LD	A,KEYSM
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
	LD	A,(WORK3)
	LD	HL,ENZPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,ENCHPT
	ADD	HL,DE
	LD	(HL),$02
;
	LD	HL,ENZSPD
	ADD	HL,DE
	LD	(HL),$10
;
	LD	HL,ENTIM1
	ADD	HL,DE
	LD	(HL),$10
;
	CALL	E4CLER
;----------------------------------
	LD	A,(ENSVXL)
	LD	(WORK0),A
	LD	A,(ENDSYP)
	JR	RFL3008
;
RFL3002
	AND	$1F
	JR	NZ,RFL3010
;
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
;
	LD	HL,ENWRK3
	ADD	HL,BC
	LD	E,(HL)
	DEC	(HL)
	LD	D,B
	LD	HL,RNPSAD
	ADD	HL,DE
	SUB	(HL)
	LD	E,A
	LD	D,B
;
	LD	HL,XMVBUF
	ADD	HL,DE
	LD	A,(HL)
	LD	(WORK0),A
;
	LD	HL,ZMVBUF
	ADD	HL,DE
	LD	A,(HL)
	AND	%10000000
	JR	NZ,RFL3010
;
	PUSH	HL
	LD	HL,YMVBUF
	ADD	HL,DE
	LD	A,(HL)
	POP	HL
	SUB	(HL)
	LD	(HL),$FF
RFL3008
	LD	(WORK1),A
;
	LD	A,SMK1
	CALL	EXIDSH
;
	LD	A,$13
	LD	(SOUND3),A	;(S)
;;	LD	A,$06
;;	LD	(SOUND1),A	;(S)
RFL3010
	RET
;-----------------------------------------
RFL4000
	RET
;&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
;&					     &
;&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
RN00F0
	CALL	E4STCK
;
	CALL	BSSDCK
;
;	LD	HL,ENTIM1
;	ADD	HL,BC
;	LD	A,(HL)
;	AND	A
	CALL	LDTIM1
	JR	Z,RN0000
;
	AND	$0F
	JR	NZ,RN0000
;
	LD	A,$02
RSS010
	LD	(ENHELP),A
;
	LD	A,RANEM
	CALL	ENIDSHL
	JR	C,RN0000
;
	PUSH	BC
;
	LD	A,(ENHELP)
	LD	C,A
;
	LD	HL,ENCHPT
	ADD	HL,DE
	AND	$02
	LD	(HL),A
;
	LD	A,(BSXPSL)
	LD	HL,RSSXAD-1
	ADD	HL,BC
;
	ADD	A,(HL)
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,RSSXSD-1
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,DE
	LD	(HL),A
;
	LD	A,(BSYPSL)
	ADD	A,$00
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,ENYSPD
	ADD	HL,DE
	LD	(HL),$F0
;
	LD	HL,ENWRK2
	ADD	HL,DE
	LD	(HL),$02
;
	LD	HL,ENMOD0
	ADD	HL,DE
	LD	(HL),%11000001
;
	POP	BC
;
	LD	A,(ENHELP)
	DEC	A
	JR	NZ,RSS010
;
RN0000
	CALL	RAPTST
;
	CALL	ENHNCL
;
	LD	A,(ENSTAT2)
	CP	$02
	JR	C,RN0010
;
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	INC	(HL)
	AND	$FF
	LD	E,A
	LD	D,B
	LD	HL,XMVBUF
	ADD	HL,DE
	LD	A,(ENSVXL)
	LD	(HL),A
	LD	HL,YMVBUF
	ADD	HL,DE
	LD	A,(ENSVYL)
	LD	(HL),A
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ZMVBUF
	ADD	HL,DE
	LD	(HL),A
;
RN0010
	LD	A,(ENSTAT2)
	RST	00
	DW	RN1000	;�o���҂�1
	DW	RN2000	;�o���҂�2
	DW	RN3000	;�㏸
	DW	RN4000	;�ړ�
	DW	RN5000	;���~
	DW	RN6000	;
;=============================================
RNSTXS
	DB	$28,$38,$48,$58,$68,$78,$88
	DB	$28
RNSTYS
	DB	$30,$40,$50,$60,$70,$30,$40
	DB	$50
;- - - - - - - - - - - - - - - -
RN1000
	CALL	LDTIM0
		ret	NZ
;;;11/11	JR	NZ,RN1010
;
	CALL	LDTIM0
	LD	(HL),$18
;
	CALL	RNDSUB
	AND	$07
	LD	E,A
	LD	D,B
	LD	HL,RNSTXS
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENXPSL
	ADD	HL,BC
	LD	(HL),A
;
	CALL	RNDSUB
	AND	$07
	LD	E,A
	LD	HL,RNSTYS
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	(HL),A
;
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	(HL),B
;
	CALL	ENPSSV
;
		jp	STATINC
;;;11/11	CALL	STATINC
;;;11/11RN1010
;;;11/11	RET
;=============================================
RN2000
	CALL	LDTIM0
	JR	NZ,RN2010
;
	LD	(HL),$20
;
	LD	A,(PLXPSL)
	PUSH	AF
	LD	A,(PLYPSL)
	PUSH	AF
;
	LD	A,$58
	LD	(PLXPSL),A
	LD	A,$50
	LD	(PLYPSL),A
;
	LD	A,$08
	CALL	PSERCHL
;
	POP	AF
	LD	(PLYPSL),A
	POP	AF
	LD	(PLXPSL),A
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),$08
;
	LD	A,(ENSVXL)
	LD	(BSXPSL),A
	LD	A,(ENSVYL)
	LD	(BSYPSL),A
;
;	LD	HL,ENTIM1
;	ADD	HL,BC
	CALL	LDTIM1
	LD	(HL),$61
;
	CALL	STATINC
RN2010
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	RRA
	AND	$01
	ADD	A,$05
		jp	ENPTST
;;;11/11	CALL	ENPTST
;;;11/11	RET
;=============================================
RN3000
	CALL	LDTIM0
	JR	NZ,RN3010
;
	CALL	RNDSUB
	AND	$1F
	ADD	A,$20
	LD	(HL),A
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	(HL),$20
;
	CALL	STATINC
RN3010
	CALL	E4MVCL
	CALL	E4ZCLC
;
		jp	CREPKEL
;;;11/11	CALL	CREPKEL
;;;11/11	RET
;=============================================
RN4000
	CALL	LDTIM0
	JR	NZ,RN4008
;
	LD	(HL),$80
;
	CALL	STATINC
;
RN4008
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	INC	(HL)
	LD	A,(HL)
	BIT	0,A
	JR	NZ,RN4020
;
	LD	HL,ENZSPD
	ADD	HL,BC
	AND	$20
	JR	NZ,RN4010
;
	INC	(HL)
	INC	(HL)
RN4010
	DEC	(HL)
RN4020
	CALL	E4MVCL
	CALL	E4ZCLC
;
		jp	CREPKEL
;;;11/11	CALL	CREPKEL
;;;11/11	RET
;=============================================
RN5000
	CALL	LDTIM0
	JR	NZ,RN5008
;
	LD	(HL),$60	
;
	CALL	STATINC
	LD	(HL),B
	RET
RN5008
	CP	$78
	JR	NZ,RN500C
;
	LD	A,(ENSVXL)
	LD	(BSXPSL),A
	LD	A,(ENSVYL)
	LD	(BSYPSL),A
;
;	LD	HL,ENTIM1
;	ADD	HL,BC
	CALL	LDTIM1
	LD	(HL),$60
;
	LD	A,$23
	LD	(SOUND3),A	;(S) ������I
RN500C
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	A,(HL)
	SUB	$F4
	AND	%10000000
	JR	NZ,RN5010
;
	DEC	(HL)
RN5010
	LD	A,(FRCNT)
	AND	$07
	JR	NZ,RN5030	
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,RN5020
;
	AND	%10000000
	JR	Z,RN5018
	INC	(HL)
	INC	(HL)
RN5018
	DEC	(HL)
RN5020
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,RN5030
;
	AND	%10000000
	JR	Z,RN5028
	INC	(HL)
	INC	(HL)
RN5028
	DEC	(HL)
RN5030
	CALL	E4MVCL
	CALL	E4ZCLC
;
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	AND	%10000000
	JR	NZ,RN5060
;
	CALL	CREPKEL
;
RN5060
	LD	A,$02
		jp	ENPTST
;;;11/11	CALL	ENPTST
;;;11/11	RET
;=============================================
RN6000
;===================================
RANEMCD
	DB	$72,$03,$74,$03
	DB	$74,$23,$72,$23
	DB	$70,$03,$70,$23
	DB	$70,$43,$70,$63
	DB	$76,$03,$76,$23
;
	DB	$7A,$01,$7A,$61	;�\����������
	DB	$7A,$41,$7A,$21	;
;
	DB	$78,$03,$78,$63	;Tail
	DB	$78,$43,$78,$23
;----------------------------
RNPSAD
	DB	$0C,$18,$24,$30,$3C,$48
;
RANEMCS
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	AND	%10000000
	JR	NZ,RNC008
;
	LD	DE,RANEMCD
	CALL	EN2CST
RNC008
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	LD	(WORK0),A			
;
	LD	A,(FRCNT)
	AND	$01
	JR	Z,RNC010
;
	LD	A,$06
	LD	(ENHELP2),A
	LD	A,$00
	JR	RNC020
RNC010
	LD	A,$FF
	LD	(ENHELP2),A
	LD	A,$05
RNC020
	LD	(ENHELP),A
;
	LD	E,A
	LD	D,B
	LD	HL,RNPSAD
	ADD	HL,DE
;
	LD	A,(WORK0)
	SUB	(HL)
	AND	$FF
	LD	E,A
	LD	D,$00
	LD	HL,XMVBUF
	ADD	HL,DE
	LD	A,(HL)
	LD	(ENSVXL),A		
	LD	HL,YMVBUF
	ADD	HL,DE
	LD	A,(HL)
	LD	(ENSVYL),A
	LD	HL,ZMVBUF
	ADD	HL,DE
	SUB	(HL)
	LD	(ENDSYP),A		
;
	LD	A,(HL)
	AND	%10000000
	JR	NZ,RNC012
;
	LD	A,(ENHELP)
	CP	$05
	LD	A,$04
	JR	NZ,RNC028	;Tail ?
;				; yes !
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	AND	$01
	ADD	A,$07
RNC028
	LD	(ENCHPT2),A
;
	LD	DE,RANEMCD
	CALL	EN2CST
;
RNC012
	LD	E,$FF
	LD	A,(FRCNT)
	AND	$01
	JR	Z,RNC018
;
	LD	E,$01
RNC018
	LD	HL,ENHELP2
	LD	A,(ENHELP)
	ADD	A,E
	CP	(HL)
	JR	NZ,RNC020
;
;
	JP	ENPSSV
;
;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
RAPTST
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	A,(HL)
	LD	D,A
	BIT	7,A
	JR	Z,RAPT020
;
	CPL
	INC	A
RAPT020
	LD	E,A
;
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	A,(HL)
	BIT	7,A
	JR	Z,RAPT030
;
	CPL
	INC	A
;
RAPT030
	CP	E	;YSPD-XSPD
	JR	NC,YRAN2
;
;XRAN2- - - - - - - - - - - - - - 
	BIT	7,D
	JR	NZ,XRANL	;LEFT
;
	LD	A,$01
	JR	RAPT040
;
XRANL
	LD	A,$00
	JR	RAPT040
;
YRAN2
	BIT	7,(HL)
	JR	NZ,YRANU	;UP
;
	LD	A,$02
	JR	RAPT040
YRANU
	LD	A,$03
;- - - - - -  - - - - - - - - - - - - - - - - - - - -
RAPT040
		jp	ENPTST
;;;11/11	CALL	ENPTST
;;;11/11	RET
;=======================================
RSUNACD
	DB	$7C,$21
	DB	$7E,$21
	DB	$7C,$01
	DB	$7E,$01
;
RSUNA
	LD	DE,RSUNACD
	CALL	EN1CST
;
	CALL	E4STCK
;
	CALL	E4MVCL
;
	LD	HL,ENYSPD
	ADD	HL,BC
	INC	(HL)
	LD	A,(HL)
	AND	A
	JR	NZ,RS0010
;
	LD	HL,ENCHPT
	ADD	HL,BC
	INC	(HL)
RS0010
	CP	$10
		ret	NZ
;;;11/11	JR	NZ,RS0020
;
		jp	E4CLER
;;;11/11	CALL	E4CLER
;;;11/11RS0020
;;;11/11	RET	
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�����~��������				%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
OZWANCD
	DB	$70,$02,$72,$02
	DB	$74,$02,$76,$02
;
	DB	$72,$22,$70,$22
	DB	$76,$22,$74,$22
;ENDING
	DB	$00,$02,$02,$02
	DB	$04,$02,$06,$02
;
	DB	$02,$22,$00,$22
	DB	$06,$22,$04,$22
OZWANCD2  ;���{���t
	DB	$78,$02,$7A,$02
	DB	$7C,$02,$7E,$02
;
	DB	$7A,$22,$78,$22
	DB	$7E,$22,$7C,$22
;ENDING
	DB	$10,$02,$12,$02
	DB	$14,$02,$16,$02
;
	DB	$12,$22,$10,$22
	DB	$16,$22,$14,$22
;- - - - - - - - - - - - - - - - - -
OZWANMV
	LD	A,(MSGEFG)
	AND	A
	JR	Z,OZW000
;
	LD	A,(MSGENO)
	CP	$82
	JR	Z,OZW000
;
	CALL	E4XCHK
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	(HL),E
;
	CALL	ENSDCL
;
	LD	A,(MJSTCT)
	LD	E,$00
	AND	%00000110
	JR	Z,OZW0E0
	INC	E
OZW0E0
	LD	A,E
	LD	(ENCHPT2),A
OZW000
;;	LD	HL,ENLIFE
;;	ADD	HL,BC
;;	LD	(HL),$4C
;
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	NZ,OZT000
;
	LD	A,(ENCHPT2)
	ADD	A,$02
	LD	(ENCHPT2),A
OZT000
	LD	DE,OZWANCD
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	NZ,OZR900	;ENDING USE !
;
	LD	A,(GRNDPT)
	CP	$B2
	JR	NZ,OZT001	;���X��������H
;				;yes !
	LD	A,(MEGAF)
	CP	$03
	JR	C,OZT001	;���{��������H
;				;YES !
OZR900
	LD	DE,OZWANCD2	;���{���t
OZT001
	LD	A,(GMMODE)
	CP	ENDG
	JR	NZ,OZT002
;
	LD	A,(ENCHPT2)
	ADD	A,$04
	LD	(ENCHPT2),A
OZT002
	CALL	EN2CST
;
;;	CALL	CRKNENL
	CALL	E4STCK
;
	CALL	ENHNCL
;
;;	LD	A,(ENSTAT2)
;;	CP	$03
;;	JR	Z,OZT010
;
	CALL	E4ZCLC
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
	JR	Z,OZT010
;
	XOR	A
	LD	(HL),A
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),A
OZT010
;	LD	HL,ENFLSH
;	ADD	HL,BC
;	LD	A,(HL)
;	AND	A
;	JR	Z,OZT020
;;
 ;	CP	$08
;	JR	NZ,OZT018
;;
;	CALL	STATINC
;	LD	A,$02
;	LD	(HL),A
;	LD	(ENSTAT2),A
;;
;	CALL	LDTIM0
;	LD	(HL),$10
;
;	LD	HL,ENWRK0
;	ADD	HL,BC
;	LD	A,(HL)
;	CP	NWCT
;	JR	Z,OZT018
;	INC	(HL)
OZT018
;	CALL	STATINC
;	LD	A,$02
;	LD	(HL),A
;	LD	(ENSTAT2),A
OZT020
;	LD	A,(ENSTAT2)
;	CP	$02
;	JR	NC,OZT050
;
;;;;;;;;;
;
;	LD	HL,ENTIM1
;	ADD	HL,BC
;	LD	A,(HL)
;	AND	A
;	JR	Z,OZT028
;
;	CP	$20
;	JR	NZ,OZT023
;;
;	DEC	(HL)
;;
;;	LD	A,$03
;;	LD	(MEGAF),A	;�h�b�O�t�[�h�ƌ����I
;;;
;;	LD	A,$0D
;;	LD	(CHTRF2),A	;�]���I
;;;
;;	CALL	YOSSISET
;OZT023
;	RET
;
OZT028
	LD	A,(ENSTAT2)
	CP	$02
	JR	NC,OZT050
;
	CALL	E4MSCK
	JR	NC,OZT050
;
	LD	E,$23
;
	LD	A,(GRNDPT)
	CP	$B2
	JR	NZ,OZT030	;�����H(���X���������j
;				;YES!
	LD	E,$80
;
	LD	A,(MEGAF)
	CP	$02
	JR	NZ,OZT027	;�����N�����{�������Ă���H
;				;YES !
	CALL	STATINC
	LD	(HL),$02
;
	LD	E,$81
OZT027
	LD	A,E
	CALL  	MSGCH2
	JP  	WASDST	;(S)
;;	JR	OZT050
OZT030
	LD	A,E
	CALL	MSGCHK
;
	CALL	WASDST	;(S)
OZT050
	LD	A,(ENSTAT2)
	RST	00
	DW	OZSTOP
	DW	OZWALK
	DW	OZMSGE
	DW	OZMSGE2
;;	DW	OZATWT
;;	DW	OZATCK
;======================================
OZMSGE
	LD	A,(MSGEFG)
	AND	A
	JR	NZ,OZMS80
;
	LD	A,(MSANSR)
	AND	A
	JR	NZ,OZMS70
;
	LD	A,$03
	LD	(MEGAF),A
	LD	A,$0D
	LD	(CHTRF2),A
;
	LD	A,$83
	CALL	MSGCH2
;
	CALL	WASDST	;(S)
;
		jp	STATINC
;;;11/11	CALL	STATINC
;;;11/11	RET
OZMS70
	CALL	STATINC
	LD	(HL),B
;
	LD	A,$84
	CALL	MSGCH2	
;
WASDST
	LD	A,$18
	LD	(SOUND2),A	;(S)
;;	CALL	WASDST	;(S)
OZMS80
	RET
;======================================
OZMSGE2
	LD	A,(MSGEFG)
	AND	A
	JR	NZ,OZM210
;
	CALL	YOSSISET
;
	CALL	STATINC
	LD	(HL),B
OZM210
	RET
;------------------------------------
OZWKXS
	DB	$02,$08,$0C,$08
	DB	$FE,$F8,$F4,$F8
;NWWKYS
;	DB	$FA,$FC,$00,$04
;	DB	$06,$04,$00,$FC
;------------------------------------
OZSTOP
	XOR	A
	CALL	ENPTST
	CALL	LDTIM0
	JR	NZ,OZS010
;
	CALL	RNDSUB
	AND	$07
	LD	E,A
	LD	D,B
	LD	HL,OZWKXS
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
;
	LD	A,E
	AND	$04
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	(HL),A
;
	CALL	RNDSUB
	AND	$07
	LD	E,A
	LD	HL,OZWKXS
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),A
;
	CALL	LDTIM0
	CALL	RNDSUB
	AND	$1F
	ADD	A,$30
	LD	(HL),A
;
	CALL	STATINC
OZS010
	JP	OZPTST
;------------------------------------
OZWALK
	CALL	E4MVCL
	CALL	ENBGCKL
;
	LD	A,(ENHELP)
	AND	A
	JR	Z,OZW020
;
	CALL	LDTIM0
	JR	NZ,OZW010
;
	LD	(HL),$30
	CALL	STATINC
	LD	(HL),B
	RET
OZW010
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),$08
;
	LD	HL,ENZPSL
	ADD	HL,BC
	INC	(HL)
OZW020
OZPTST
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	AND	$01
		jp	ENPTST
;;;11/11	CALL	ENPTST
;;;11/11	RET
;
;------------------------------------
;OZATWT
;	CALL	LDTIM0
;	JR	NZ,OAW090
;;
;	CALL	STATINC
;;
;	LD	A,$24
;	CALL	PSERCHL
;;
;	LD	HL,ENZSPD
;	ADD	HL,BC
;	LD	(HL),$18
;;
;	CALL	E4XCHK
;	LD	HL,ENMUKI
;	ADD	HL,BC
;	LD	A,E
;	LD	(HL),A
;
;OAW090
;	LD	A,(FRCNT)
;	RRA
;	RRA
;	AND	$01
;	CALL	ENPTST
;	RET
;
;------------------------------------
;OZATCK
;	CALL	E4MVCL
;	CALL	ENBGCKL
;;
;	LD	HL,ENMOD0
;	ADD	HL,BC
;	LD	(HL),%01010010
;;
;	CALL	CRENPLL
;;
;	LD	HL,ENMOD0
;	ADD	HL,BC
;	LD	(HL),%10010010
;;
;	LD	A,(ENHELP)
;	AND	A
;	JR	Z,OZAT10
;
;	CALL	STATINC
;	LD	(HL),B
;;
;	CALL	LDTIM0
;	LD	(HL),$20
;OZAT10
;	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	����������l				%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
MSWANCD
;	DB	$60,$00,$62,$00
;	DB	$62,$20,$60,$20	;	�O
;;
;	DB	$64,$00,$66,$00
;	DB	$66,$20,$64,$20	;	��
;;
;	DB	$68,$00,$6A,$00
;	DB	$6C,$00,$6E,$00	;	��
;;
;	DB	$6A,$20,$68,$20
;	DB	$6E,$20,$6C,$20 ;	�E
;- - - - - - - - - - - - - - - - - 
	DB	$60,$01,$62,$01
	DB	$62,$21,$60,$21
;
	DB	$64,$01,$66,$01
	DB	$66,$21,$64,$21
;
	DB	$68,$01,$6A,$01
	DB	$6C,$01,$6E,$01
;
	DB	$6A,$21,$68,$21
	DB	$6E,$21,$6C,$21
;- - - - - - - - - - - - - - - - - - - - -
MSWANMV
	CALL	LDTIM0
	CP	$01
	JR	NZ,MSWE00
	LD	(HL),B
;
	LD	A,$FF
	LD	(HARTUP),A
MSWE00
;;	LD	A,(HARTMX)
;;	CP	10
;;	JR	NC,MWM0002	;TEST!
;
;	LD	A,(WARPSV+1)
;	AND	%00000010
;	JR	Z,MWM0002	;�_���W�����Q�N���A�[��H
;;				;YES !
;	XOR	A
;	LD	(WANFLG),A	;�����������Ƃɖ߂��I
;MWM0002
	LD	A,(FRCNT)
	AND	%00011111
	JR	NZ,MWM020
;
	CALL	E4XYCK
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	(HL),E
MWM020
	CALL	M4PTST
;
	LD	DE,MSWANCD
	CALL	EN2CST
;
	LD	A,(WANFLG)
	CP	$80
	JR	NZ,MWM022	;���������s���`�H
;				; YES !
	CALL	E4ZCLC		;�I�o�`�����W�����v�I
	LD	HL,ENZSPD
	ADD	HL,BC
	DEC	(HL)
	DEC	(HL)
;
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,MWM01E
	AND	%10000000
	JR	Z,MWM021
;
MWM01E
	LD	(HL),B
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),B
;
	LD	A,(FRCNT)
	AND	$3F
	JR	NZ,MWM021
;
	LD	(HL),$10
MWM021
;
MWM022
	CALL	E4STCK
;
	LD	A,(ENSVYL)
	LD	(ENDSYP),A
;
	CALL	M4CROS
;
	CALL	ENPSSV
;
;	CALL	LDTIM0
;	JR	Z,MWM012
;	CP	$01
;	JR	Z,MWM028
;;
;	CP	$20
;	JR	NZ,MWM011
;;
;	DEC	(HL)
;	CALL	YOSSISET
;MWM011
;	RET
;
MWM012
	CALL	E4MSCK
		ret	NC
;;;11/11	JR	NC,MWM1010
;
;	LD	A,(MEGAF)
;	CP	$02
;	JR	NZ,MWM028	;���{�������Ă���H
;;				;YES !
;	LD	A,$03
;	LD	(MEGAF),A	;�h�b�O�t�[�h�ƌ����I
;	LD	A,$0D
;	LD	(CHTRF2),A	;�]���I
;;
;	CALL	LDTIM0
;	LD	(HL),$30
;;
;	LD	A,$30
;	CALL	MSGCH2
;	RET
;
;;	CALL	YOSSISET
;
MWM028
;	LD	HL,ENWRK3
;	ADD	HL,BC
;	LD	A,(HL)
;	PUSH	AF
;	INC	A
;	CP	$03
;	JR	NZ,MSM1002
;	XOR	A
;MSM1002
;	LD	(HL),A
;	POP	AF
;	ADD	A,$30
	LD	E,$30
;
;;	LD	A,(WARPSV+1)
;;	AND	%00000010
;;	JR	NZ,MWM100C	;��ݼޮ�2�ر�?
;				;No!
	LD	A,(WARPSV+1)
	AND	%00000010
	JR	Z,MWM0002	;�_���W�����Q�N���A�[��H
;				;YES !
	LD	A,(WANFLG)
	CP	$01
	JR	NZ,MWM0002	;���������A��A�����H
;				;yes !
	XOR	A
	LD	(WANFLG),A	;�����������Ƃɖ߂��I
;
	CALL	LDTIM0
	LD	(HL),$10	;���C�t������!
;
	LD	E,$2F	;���肪�Ƃ��I
	JR	MWM100C
MWM0002
	LD	A,(WANFLG)
	AND	A
	JR	Z,MWM100C
	LD	E,$31		;�������������ꂽ!
	CP	$01
	JR	NZ,MWM100C	;���������A��ċA�����H
;				; YES !
	LD	E,$32		;
MWM100C
	LD	A,E
		jp	MWMSCK
;;;11/11	CALL	MWMSCK
;;;11/11;;	CALL	MSGCH2
;;;11/11MWM1010
;;;11/11	RET
;=============================
MWMSCK
;;	LD	E,A
;;;
;;	LD	A,(PLYPSL)
;;	PUSH	AF
;;;
;;	LD	A,$10
;;	LD	(PLYPSL),A
;
	LD	A,E
	CALL	MSGCH2
;;	POP	AF
;;	LD	(PLYPSL),A
	LD	HL,MSGEFG
	SET	7,(HL)
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	������ �������� 			%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
URURIMV
		LD	HL,ENYPSL
		ADD	HL,BC
		LD	A,$049
		LD	(HL),A
		PUSH	BC
		SLA	C
		SLA	C
		LD	HL,ENOJSZ
		ADD	HL,BC
		INC	HL
		INC	HL
		LD	A,$008
		LD	(HL),A
		INC	HL
		LD	A,$00A
		LD	(HL),A
		POP	BC
;
	CALL	URURICS
;
	CALL	E4STCK
;
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	RRA
	RRA
	AND	$01
	CALL	ENPTST
;
	CALL	M4CROS
;
	CALL	E4MSCK
		ret	NC
;;;11/11	JR	NC,URU010
;
	LD	A,(URURIFG)
	AND	A
	JR	NZ,URUMS10
;
	LD	A,$01
	LD	(URURIFG),A	;������t���O�I
;
URUMS10
	LD	A,$40
		jp	MSGCH2
;;;11/11	CALL	MSGCH2
;;;11/11URU010
;;;11/11	RET
;===============================================
URURICD
;0
	DB	$F7,$00,$70,$02
	DB	$F7,$08,$72,$02
	DB	$07,$00,$74,$02
	DB	$07,$08,$76,$02
;1
	DB	$F7,$00,$78,$02
	DB	$F7,$08,$7A,$02
	DB	$07,$00,$7C,$02
	DB	$07,$08,$7E,$02
;
;;;KK;;;;0
;;;KK;;;	DB	$F0,$00,$70,$02
;;;KK;;;	DB	$F0,$08,$72,$02
;;;KK;;;	DB	$00,$00,$74,$02
;;;KK;;;	DB	$00,$08,$76,$02
;;;KK;;;;1
;;;KK;;;	DB	$F0,$00,$78,$02
;;;KK;;;	DB	$F0,$08,$7A,$02
;;;KK;;;	DB	$00,$00,$7C,$02
;;;KK;;;	DB	$00,$08,$7E,$02
;
URURICS
	LD	A,(ENCHPT2)
	RLA
	RLA
;
	RLA
	RLA
	AND	%11110000
	LD	E,A
	LD	D,B
	LD	HL,URURICD
	ADD	HL,DE
;
	LD	C,$04
	CALL	ENOMST
;
	LD	A,$04
		jp	NXOMSBL
;;;11/11	CALL	NXOMSBL
;;;11/11	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%					%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
KARASCD
	DB	$50,$03,$52,$03
	DB	$54,$03,$56,$03
	DB	$52,$23,$50,$23
	DB	$56,$23,$54,$23
;- - - - - - - - - - - - - - - - - 
KARASMV
	LD	A,(GRNDPT)
	CP	$58
	JR	NZ,KRS0090	;��H
;				; YES !
		LD	HL,ENHNFG
		ADD	HL,BC
		LD	A,(HL)
		CP	$010
		JR	C,KRS0010
		SRL	A
		SRL	A		;���[���b�p�łŒǉ�����
		LD	(HL),A
;
KRS0010
	LD	A,(DJSVBF)
	AND	%00010000
	JP	NZ,E4CLER
;
	LD	HL,ENJYUN
	ADD	HL,BC
	LD	(HL),$FF
;
	LD	HL,ENITMF
	ADD	HL,BC
	LD	(HL),KAKIN	;�͂���
;
KRS0090
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	A,(HL)
	AND	A        
	JR	NZ,KRM010
;
	LD	A,(ENCHPT2)
	ADD	A,$02
	LD	(ENCHPT2),A
KRM010
	LD	DE,KARASCD
	CALL	EN2CST
;
	LD	A,(ENSTAT2)
	AND	A
	JR	NZ,KRM012	; Initial ?
;				; Yes !
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	A,(HL)
	SUB	$04
	LD	(HL),A
;
	CALL	STATINC
	LD	A,(HL)
	LD	(ENSTAT2),A
KRM012
	CALL	E4STCK
;
	CALL	E4HNSB
;
	LD	A,(ENSTAT2)
	DEC	A
	RST	00
	DW	KAR100
	DW	KAR200
	DW	KAR300
	DW	KAR400
;------------------------------------
KAR100
	LD	A,(GRNDPT)
	CP	$58
	JP	NZ,KAR108	;��J���X�H
;				; yes !
		LD	HL,ENXPSL
		ADD	HL,BC
		LD	A,(HL)
		LD	(WORK0),A
		LD	HL,ENYPSL
		ADD	HL,BC
		LD	A,(HL)
		LD	(WORK1),A
		LD	DE,$0000
KAR100_LOOP
		LD	HL,ENMYNO
		ADD	HL,DE
		LD	A,(HL)
		CP	BOMBR
		JR	NZ,KAR100_PASS
		LD	HL,ENFLSH
		ADD	HL,DE
		LD	A,(HL)
		AND	A		;�t���b�V���O�͂��߂��H
		JR	Z,KAR100_PASS	;	NO --> KAR100_PASS
		LD	HL,ENTIM0
		ADD	HL,DE
		LD	A,(HL)
		CP	$022
		JR	NC,KAR100_PASS
		LD	HL,ENXPSL
		ADD	HL,DE
		LD	L,(HL)
		LD	A,(WORK0)
		SUB	L
		BIT	7,A
		JR	Z,KAR100_050
		CPL
		INC	A
KAR100_050
		CP	$020
		JR	NC,KAR100_PASS
;
		LD	HL,ENYPSL
		ADD	HL,DE
		LD	L,(HL)
		LD	A,(WORK1)
		SUB	L
		BIT	7,A
		JR	Z,KAR100_150
		CPL
		INC	A
KAR100_150
		CP	$020
		JR	NC,KAR100_PASS
		JR	KAR10A
KAR100_PASS
		INC	DE
		LD	A,E
		AND	$00F
		JR	NZ,KAR100_LOOP
;
	LD	A,(KTINDX)
	LD	E,A
	LD	D,B
	LD	HL,ENMODE
	ADD	HL,DE
	LD	A,(HL)
	AND	A
		ret	Z
;;;11/11	JR	Z,KAR110
;
	LD	HL,ENMYNO
	ADD	HL,DE
	LD	A,(HL)
	CP	KTOBJ
		ret	NZ
;;;11/11	JR	NZ,KAR110
;
	LD	HL,ENTIM1
	ADD	HL,DE
	LD	A,(HL)
	AND	A
		ret	Z
;;;11/11	JR	Z,KAR110
;
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	A,(ENSVXL)
	SUB	(HL)
	ADD	A,$10
	CP	$20
		ret	NC
;;;11/11	JR	NC,KAR110
;
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	A,(ENDSYP)
	SUB	(HL)
	ADD	A,$28
	CP	$50
		ret	NC		;���Ԃ����H
;;;11/11	JR	NC,KAR110	;���Ԃ����H
;				;YES !
	JR	KAR10A
;
KAR108
	CALL	E4XCHK
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	(HL),E
	ADD	A,$18
	CP	$30
		ret	NC
;;;11/11	JR	NC,KAR110
;
	CALL	E4YCHK
	ADD	A,$30
	CP	$60
		ret	NC
;;;11/11	JR	NC,KAR110
;
KAR10A
	LD	HL,ENMOD0
	ADD	HL,BC
	LD	(HL),%00010010
;
	CALL	LDTIM0
	LD	(HL),$22
;
		jp	STATINC
;;;11/11	CALL	STATINC
;;;11/11KAR110
;;;11/11	RET
;------------------------------------
KAR200
	CALL	CREPKEL
;
	CALL	LDTIM0
	JR	NZ,KAR210
;
	LD	(HL),$30
;
	JP	STATINC
;
KAR210
	CALL	ENSDCL
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),$08
	CALL	E4ZCLC
;
	JR	KRPTST
;------------------------------------
KAR300
	CALL	CREPKEL
;
	CALL	LDTIM0
	JP	Z,STATINC
;
	AND	$01
	JR	NZ,KAR330
;
	LD	A,$20
	CALL	PSERCH2L
;
	LD	A,(WORK0)
	LD	HL,ENYSPD
	ADD	HL,BC
	SUB	(HL)
	AND	%10000000
	JR	NZ,KAR310
	INC	(HL)
	INC	(HL)
KAR310
	DEC	(HL)
;
	LD	A,(WORK1)
	LD	HL,ENXSPD
	ADD	HL,BC
	SUB	(HL)
	AND	%10000000
	JR	NZ,KAR320
	INC	(HL)
	INC	(HL)
KAR320
	DEC	(HL)
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	A,(HL)
	AND	%10000000
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	(HL),A
KAR330
	CALL	E4MVCL
;
;;	LD	HL,ENCONT
;;	ADD	HL,BC
;;	INC	(HL)
	CALL	KASDST
KRPTST
;;	LD	HL,ENCONT
;;	ADD	HL,BC
;;	INC	(HL)
	CALL	KASDST
	LD	A,(HL)
	RRA
	RRA
	RRA
	AND	$01
	JP	ENPTST
;------------------------------------
KASDST
;	LD	HL,ENCONT
;	ADD	HL,BC
;	INC	(HL)
;	LD	A,(HL)
;	AND	$0F
;	JR	NZ,KSDS10
;;
;	LD	A,$07
;	LD	(SOUND3),A	;(S)
		jp	HABATAKI	;(S)
;;;11/11	CALL	HABATAKI	;(S)
;;;11/11KSDS10
;;;11/11	RET
;------------------------------------
KAR400
	CALL	CREPKEL
;
	LD	A,(FRCNT)
	AND	$03
	JR	NZ,KAR430
;
	LD	A,$20
	CALL	PSERCH2L
;
	LD	A,(WORK0)
	CPL
	INC	A
	LD	HL,ENYSPD
	ADD	HL,BC
	SUB	(HL)
	AND	%10000000
	JR	NZ,KAR410
	INC	(HL)
	INC	(HL)
KAR410
	DEC	(HL)
;
	LD	A,(WORK1)
	CPL
	INC	A
	LD	HL,ENXSPD
	ADD	HL,BC
	SUB	(HL)
	AND	%10000000
	JR	NZ,KAR420
	INC	(HL)
	INC	(HL)
KAR420
	DEC	(HL)
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	A,(HL)
	AND	%10000000
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	(HL),A
KAR430
	CALL	KAR330
;------------------------------------
E4GAWY
	LD	A,(ENDSYP)
	CP	$88
	JP	NC,E4CLER
;
	LD	A,(ENSVXL)
	CP	$A8
	JP	NC,E4CLER
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�d���g���C�V�[				%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
TRYCYCD
;0 <-
	DB	$00,$00,$64,$02
	DB	$00,$08,$66,$02
	DB	$10,$00,$68,$02
	DB	$10,$08,$6A,$02
;1 
	DB	$00,$00,$60,$02
	DB	$00,$08,$62,$02
	DB	$10,$00,$68,$02
	DB	$10,$08,$6A,$02
;2 ->
	DB	$00,$00,$66,$22
	DB	$00,$08,$64,$22
	DB	$10,$00,$6A,$22
	DB	$10,$08,$68,$22
;
;;;KK;;;;0 <-
;;;KK;;;	DB	$F8,$00,$64,$02
;;;KK;;;	DB	$F8,$08,$66,$02
;;;KK;;;	DB	$08,$00,$68,$02
;;;KK;;;	DB	$08,$08,$6A,$02
;;;KK;;;;1 
;;;KK;;;	DB	$F8,$00,$60,$02
;;;KK;;;	DB	$F8,$08,$62,$02
;;;KK;;;	DB	$08,$00,$68,$02
;;;KK;;;	DB	$08,$08,$6A,$02
;;;KK;;;;2 ->
;;;KK;;;	DB	$F8,$00,$66,$22
;;;KK;;;	DB	$F8,$08,$64,$22
;;;KK;;;	DB	$08,$00,$6A,$22
;;;KK;;;	DB	$08,$08,$68,$22
TTUBOCD
	DB	$A0,$14
;- - - - - - - - - - - - - - - - - - - - -
TRYCYMV
		PUSH	BC
		SLA	C
		SLA	C
		LD	HL,ENOJSZ
		ADD	HL,BC
		INC	HL
		INC	HL
		INC	HL
		LD	A,$00A
		LD	(HL),A
		POP	BC
		LD	HL,ENYPSL
		ADD	HL,BC
		LD	A,$028
		LD	(HL),A
;
	CALL	LDTIM0
	JR	Z,TRY0010
;
	LD	A,(PLXPSL)
	LD	(ENSVXL),A
;
	LD	A,(PLYPS2)
	SUB	$10
	LD	(ENDSYP),A
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
;
	LD	DE,TTUBOCD
	CALL	EN1CST
;
	CALL	ENPSSV
TRY0010
	LD	E,$00
	LD	A,(PLXPSL)
	CP	$30
	JR	C,TRYC10
	LD	E,$01
	CP	$60
	JR	C,TRYC10
	LD	E,$02
TRYC10
	LD	A,E
	LD	(ENCHPT2),A
;
	RLA
	RLA
	RLA
	RLA
	AND	%11110000
	LD	E,A
	LD	D,B
;
	LD	HL,TRYCYCD
	ADD	HL,DE
;
	LD	A,(ENDSYP)
	SUB	$04
	LD	(ENDSYP),A
;
	LD	C,$04
	CALL	ENOMST
;
	LD	A,$04
	CALL	NXOMSBL
;
	CALL	ENPSSV
;
	CALL	E4STCK
;
	CALL	M4CROS
;
	LD	A,(ENSTAT2)
	RST	00
	DW	TRY1000
	DW	TRY2000
	DW	TRY3000
	DW	TRY4000
	DW	TRY5000
;------------------------------------------
TRMSCK
	LD	A,(PLYPSL)
	LD	HL,ENSVYL
	SUB	(HL)
	ADD	A,$28
	CP	$50
		jp	E4MSSB
;;;11/11	CALL	E4MSSB
;;;11/11	RET
;;	CALL	E4MSCK
;---------------------------------
TRY1000
	CALL	TRMSCK
		ret	NC
;;;11/11	JR	NC,TRY1010
;
	LD	A,$17	;�킽�����܂���g���C�V�[�A�A�A
	CALL	MSGCHK
	LD	HL,MSGEFG
	SET	7,(HL)
;
	LD	A,(ENFLCT)
	AND	$01
;;	LD	E,A
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	(HL),A
;
	LD	A,(TRYCYCT)
	CP	$07
	JR	NZ,TRY1008	;�W��ځI
;
	INC	(HL)
	INC	(HL)
TRY1008
		jp	STATINC
;;;11/11	CALL	STATINC
;;;11/11TRY1010
;;;11/11	RET
;------------------------------------------
TRY2000
;;	CALL	E4MSCK
	CALL	TRMSCK
	RET	NC
;;	JR	NC,TRY2020
;
	LD	A,(KBINF)
	AND	A
	JR	NZ,TRY2010
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	AND	$01
	LD	A,$18	; �Q�W���s�[�ŁA�A
	JR	Z,TRY2008
;
	LD	A,$19 	; 42���s�[�ŁA�A�A
TRY2008
	CALL	MSGCHK
	LD	HL,MSGEFG
	SET	7,(HL)
	JP  	STATINC
;;TRY2020
;;	RET
TRY2010
	LD	A,$1C	;�ł��A���񂽂ɂ͂���Ȃ��I
	CALL  	MSGCHK
	LD	HL,MSGEFG
	SET	7,(HL)
	RET
;------------------------------------------
TRYRUPL
	DB	$28,$42,$07,$07
TRYRUPH
	DB	$00,$00,$00,$00
TRYRUPL2
	DB	$1C,$2A,$07,$07
TRYRUPH2
	DB	$00,$00,$00,$00
;IZHARTD2
;;                 3   4   5   6   7   8   9  10  11  12  13  14
;	DB	$18,$20,$28,$30,$38,$40,$48,$50,$58,$60,$68,$70
;- - - - - - - - - - - - - - - - - - - - -
TRY3000
	LD	A,(MSGEFG)
	AND	A
	JP	NZ,TRY3070
;
	LD	A,(MSANSR)
	AND	A
	JR	NZ,TRY3010	;�͂��I
;
;;	LD	E,$00
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	E,(HL)
;;	LD	A,E
;;	LD	(WORK0),A
	LD	D,B
	LD	HL,TRYRUPH
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,TRYRUPL
	ADD	HL,DE
	LD	E,(HL)
	LD	D,A
;
	LD	A,(COINC2)
	SUB	E
	LD	A,(COINC1)
	SBC	A,D
	JR	NC,TRY300C ; Not Rupy ?
;				; yes !
	LD	A,$1B
	JR	TRMSST	;�łȂ����ȁI
;;TRY3009
;;	LD	A,$1C	;�ł��A���񂽂ɂ͂���Ȃ��I
;;	JR	TRMSST
;- - - - - - - - - - - - - -
TRY300C
	LD	A,(TRYCYCT)
	INC	A
	AND	$07
	LD	(TRYCYCT),A
	JR	NZ,TRY3008
;
	LD	A,$1E	;����ς�V�ł����I
	CALL	MSGCHK
	LD	HL,MSGEFG
	SET	7,(HL)
	JP	STATINC
TRY3008
;;	LD	A,(WORK0)	
TRYGET
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	E,(HL)
	LD	D,B
	LD	HL,TRYRUPL2
	ADD	HL,DE
	LD	A,(COIND2)
	ADD	A,(HL)
	LD	(COIND2),A
	RL	A	; Cary save 
;
	LD	HL,TRYRUPH2
	ADD	HL,DE
	RR	A	; Cary read
	LD	A,(COIND1)
	ADC	A,(HL)
	LD	(COIND1),A
;
	LD	HL,KBINF
	INC	(HL)
;
	LD	A,$1A	;�ǂ��A�A���K�g�E�I
	CALL	TRMSST
;
	CALL	STATINC
	LD	(HL),$04
;
	CALL	LDTIM0
	LD	(HL),$20
;
	LD	A,$01
	LD	(SOUND1),A	;(S)
;
;	LD	A,(HARTMX)
;	LD	E,A
;	LD	D,B
;	LD	HL,IZHARTD2-3
;	ADD	HL,DE
;	LD	A,(HARTCT)
;	CP	(HL)
;	RET	NZ
;;
;	CALL	STATINC
;	LD	(HL),B
	RET
;------------------------------
TRY3010
	LD	A,$1D	;�Ȃɂ��A�v���v���A�A
TRMSST	
	CALL	MSGCHK
	LD	HL,MSGEFG
	SET	7,(HL)
;
	CALL	STATINC
	LD	(HL),B
TRY3070
	RET
;----------------------------------------------
TRY4000
	LD	A,(MSGEFG)
	AND	A
	JR	NZ,TRY4030
;
	JR	TRYGET
TRY4030
	RET
;----------------------------------------------
TRY5000
	CALL	LDTIM0
	RET	NZ
;
	LD	A,(MSGEFG)
	AND	A
	JR	NZ,TRY5010
;
	LD	A,(HARTFUL)
	AND	A
	JR	NZ,TRY5008
;
	LD	A,$FF
	LD	(HARTUP),A
;
	LD	A,$9A
	CALL	MSGCH2	;���C�t�T�[�r�X��I
	LD	HL,MSGEFG
	SET	7,(HL)
;
TRY5008
	CALL	STATINC
	LD	(HL),B
TRY5010
	LD	A,$02
	LD	(PLSTOP),A
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�q�� A,B,C,D				%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
KODOMOCD
	DB	$70,$00,$72,$00
	DB	$72,$20,$70,$20
	DB	$74,$00,$76,$00
	DB	$76,$20,$74,$20
;
KODOMOCD3
	DB	$70,$02,$72,$02
	DB	$72,$22,$70,$22
	DB	$74,$02,$76,$02
	DB	$76,$22,$74,$22
;
KODOMOCD2			;�L���b�`�{�[�����Ă�K�L!!!
	DB	$78,$02,$7A,$02	;�E
	DB	$7C,$02,$7E,$02	;
	DB	$7A,$20,$78,$20	;��
	DB	$7E,$20,$7C,$20	;
KDBALLCD
	DB	$3E,$00
;-----------------------
KODOMBMV
KODOMCMV
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,KDM0000
;--- Ball ----
	LD	DE,KDBALLCD
	CALL	EN1CST
;
	CALL	E4STCK
;
	CALL	E4MVCL
	CALL	E4ZCLC
;
	LD	HL,ENZSPD
	ADD	HL,BC
	DEC	(HL)
;
	CALL	LDTIM0
	JP	Z,E4CLER
	RET
;=================================
KDM0000
	LD	A,(WANFLG)
	CP	$80
	JP	NZ,KDM0010
;
	LD	A,(GMMODE)
	CP	ENDG
	JP	Z,KDM0010
;
		LD	DE,KODOMOCD
		LD	HL,ENMYNO
		ADD	HL,BC
		LD	A,(HL)
		CP	KODOMC
		JR	NZ,KDM0000_PASS
		LD	DE,KODOMOCD3
KDM0000_PASS
		CALL	EN2CST
;
	CALL	E4YCHK
	LD	A,E
	DEC	A
	AND	$02
	XOR	$02
	LD	E,A
;
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	AND	$01
	ADD	A,E
	CALL	ENPTST
;
	LD	HL,ENWRK2
	ADD	HL,BC
	LD	A,(HL)
	RST	00
	DW	KDW1000
	DW	KDW2000
	DW	KDW3000
;----------------------------------
KDW1000
	CALL	E4STCK
;
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	(HL),$30
;
	LD	A,$0E
	LD	(SOUND4),A	;(S)
	LD	(BGMNO),A
	LD	(BGMNO2),A
WRK2INC
	LD	HL,ENWRK2
	ADD	HL,BC
	INC	(HL)
	RET
;----------------------------------
KDW2000
	CALL	E4STCK
;
	CALL	E4YCHK
	ADD	A,$20
	CP	$40
	JR	C,KDW2010
;
	LD	HL,ENWRK1
	ADD	HL,BC
	DEC	(HL)
	JR	NZ,KDW2020
;
KDW2010
	LD	A,(SBHR)
	CP	$04
	RET	NZ
;
	LD	A,(ENMYNO2)
	CP	KODOMB
	JR	NZ,KDW2018
;
	LD	A,$20
	CALL	MSGCH3
;
KDW2018
	JP  	WRK2INC
KDW2020
	LD	A,$08
	CALL	PSERCHL
	CALL	E4MVCL
;
	LD	A,$02
	LD	(PLSTOP),A
	LD	(ITEMNOT),A
	RET
;----------------------------------
KDW3000
	XOR	A
	LD	(ITEMNOT),A
;
	LD	A,(ENSVYL)
	LD	(ENDSYP),A
	CALL	M4CROS
	CALL	ENPSSV
;
	CALL	E4MSCK
	JR	NC,KDW3010
;
	LD	A,$20
	CALL	MSGCH3
KDW3010
	CALL	E4ZCLC
	LD	HL,ENZSPD
	ADD	HL,BC
	DEC	(HL)
	DEC	(HL)
;
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,KDW3018
	AND	%10000000
	JR	Z,KDW3020
;
KDW3018
	LD	(HL),B
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),B
;
	LD	A,(FRCNT)
	AND	$1F
	JR	NZ,KDW3020
;
	LD	(HL),$10
KDW3020
	RET
;==============================================
KDM0010
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	A,(ENCHPT2)
	OR	(HL)
	LD	(ENCHPT2),A
;
	LD	DE,KODOMOCD2
	CALL	EN2CST
;
	CALL	E4STCK
;
	CALL	KODMSCK
;
	CALL	E4ZCLC
	LD	HL,ENZSPD
	ADD	HL,BC
	DEC	(HL)
;
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	AND	%10000000
	LD	(ENHELP),A
	JR	Z,KDB010
;
	XOR	A
	LD	(HL),A
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),A
KDB010
	LD	A,(ENSTAT2)
	RST	00
	DW	KDCA100
	DW	KDCA200
;-----------------------------------
KDCA100
	CALL	LDTIM0
	JR	NZ,KDCA110
;
	LD	(HL),$80
;
	CALL	STATINC
;
	LD	A,$01
	CALL	ENPTST
;-- Ball shot --
	LD	A,KODOMB
	CALL	ENIDSHL
	JR	C,KDCA110
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
	LD	(HL),$01
;
	LD	HL,ENZSPD
	ADD	HL,DE
	LD	(HL),$10
;
	LD	A,(ENMYNO2)
	CP	KODOMB	
	LD	A,$14
	JR	Z,BAST10
	LD	A,$EC
BAST10
	LD	HL,ENXSPD
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,ENTIM0
	ADD	HL,DE
	LD	(HL),$24
KDCA110
	RET
;-----------------------------------
KDCA200
	CALL	LDTIM0
	JR	NZ,KDCA210
;
	LD	(HL),$60
;
	CALL	STATINC
	LD	(HL),B
	RET
KDCA210
	CP	$60
		ret	NC
;;;11/11	JR	NC,KDCA220
;
	CP	$40
	JR	NC,KDCA218
;
	LD	A,(ENHELP)
	AND	A
	JR	Z,KDCA218
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),$08
KDCA218
	XOR	A
		jp	ENPTST
;;;11/11	CALL	ENPTST
;;;11/11KDCA220
;;;11/11	RET
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�����{�����̂ق���̂Ƃ���̎q��			%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
KODOMAMV
KODOMDMV
	LD	A,(GRNDPT)
	CP	$92		;�����{�̂Ƃ���H
	JR	NZ,KDAD10	;	NO --> KDAD10
;
	LD	A,(MEGAF)
	CP	$07
	JP	C,E4CLER	;�}�����C�ɂ���I
;
KDAD10
	LD	DE,KODOMOCD
	CALL	EN2CST
;
	CALL	E4STCK
;
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	RRA
	AND	$01
	CALL	ENPTST
;
KODMSCK
	LD	A,(ENSVYL)
	LD	(ENDSYP),A
	CALL	M4CROS
	CALL	ENPSSV
;
	CALL	E4MSCK		;�����N�ɘb���|����H
		ret	NC		;	NO --> KDM090
;;;11/11	JR	NC,KDM090;	NO --> KDM090
;
		LD	A,(MEGAF)
		CP	$00A		;�z�E�L�������Ă�H
		JR	NZ,KDAD_000	;	NO --> KDAD_000
		LD	A,(WARPSV+$04)	;���|�����΂���A
		AND	%00000010	;	�������ɂ���H
		LD	A,$6F		;
		JP	NZ,MSGCH2	;	YES --> ���b�Z�[�W�\��
KDAD_000
;
	LD	A,(MARINOF)
	AND	A		;�}�����A�s���s���H
	JR	Z,KDMS077	;	NO --> KDMS077
;
	LD	A,$23
	JP	MSGCH2
KDMS077
	LD	A,(MARINFG)
	AND	A		;�}�����A��Ă���H
	JR	Z,KDMS078	;	NO --> KDMS078
;
	LD	A,$21
	JP	MSGCH2
KDMS078
	LD	A,(GRNDPT)
	CP	$92		;�����{�̂Ƃ���H
	JR	NZ,KDMS090	;	NO --> KDMS090
;
	LD	A,(GRRMSV+$FD)
	AND	%00110000	;�Z�C�E�`�ނ����H
	JR	NZ,KDMS090	;	NO --> KDMS090
;
	LD	A,$20
	JP	MSGCH2
KDMS090
	LD	A,(WARPSV+$01)
	AND	%00000010	;���x���Q�@�N���A�H
	JR	Z,KDMS098	;	NO --> KDMS098
;
	LD	A,(DJRMSV+$1BE)
	AND	%00010000	;�I�J���i������H
	JR	NZ,KDMS098	;	YES --> KDMS098
;
	LD	A,(GRNDPT)
	CP	$83		;���̂ق���̂Ƃ���H
	JR	NZ,KDMS098	;	NO --> KDMS098
;
	LD	A,$22
	JP	MSGCH2
KDMS098
	LD	HL,KDMSCTS	;�K�L�̋Y���A�S��ނ̃��[�v
	LD	A,(HL)		;
	PUSH	AF		;
	INC	A		;
	CP	$04		;
	JR	NZ,KDM080	;
	XOR	A		;
KDM080				;
	LD	(HL),A		;
;
	LD	A,(WARPSV)
	AND	%00000010	;���x���P�@�N���A�H
	JR	NZ,KDM088	;	YES --> KDM088
;
	POP	AF
	ADD	A,$18
	JP  	MSGCH2
KDM088
	POP	AF
	LD	A,(ENMYNO2)
	SUB	KODOMA
	ADD	A,$1C
		jp	MSGCH2
;;;11/11	CALL	MSGCH2
;;;11/11KDM090
;;;11/11	RET
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�A�i���l�A							%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
BHANAMV
	CALL	BHANACS
;
	CALL	E4STCK
;
	CALL	ENHNCL
;
	CALL	CRKNENL
	CALL	M4CROS
;
	LD	A,(ENSTAT2)
	RST	00
	DW	BHN1000
	DW	BHN2000
	DW	BHN3000
;----------------------------------
BHN1000
	CALL	LDTIM0
	LD	(HL),$C0
	JP	STATINC
;----------------------------------
BHN2000
	CALL	LDTIM0
	JR	NZ,BHN2010
;
	LD	(HL),$50
;
	CALL	STATINC
BHN2010
	RRA
	RRA
	RRA
	RRA
	AND	$01
		jp	ENPTST
;;;11/11	CALL	ENPTST
;;;11/11	RET
;----------------------------------
BHN3000
	CALL	LDTIM0
	JR	NZ,BHM3010
;
	CALL	STATINC
	LD	(HL),B
BHM3010
	CP	$4A
	JR	NZ,BHM3020
;
	LD	A,BHFIR
	CALL	ENIDSHL
	JR	C,BHM3020
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
;;;11/11	PUSH	DE
;;;11/11	POP	BC
;
	LD	A,$0C
	CALL	PSERCHL
;
	POP	BC
BHM3020
	LD	A,$02
		jp	ENPTST
;;;11/11	CALL	ENPTST
;;;11/11	RET
;====================================
BHANACD
;0
	DB	$F8,$F8,$70,$02
	DB	$F8,$00,$72,$02
	DB	$F8,$08,$72,$22
	DB	$F8,$10,$70,$22
	DB	$08,$F8,$74,$02
	DB	$08,$00,$76,$02
	DB	$08,$08,$76,$22
	DB	$08,$10,$74,$22
;1
	DB	$F9,$F9,$70,$02
	DB	$F9,$01,$72,$02
	DB	$F9,$07,$72,$22
	DB	$F9,$0F,$70,$22
	DB	$07,$F9,$74,$02
	DB	$07,$01,$76,$02
	DB	$07,$07,$76,$22
	DB	$07,$0F,$74,$22
;2
	DB	$F8,$F8,$78,$02
	DB	$F8,$00,$7A,$02
	DB	$F8,$08,$7A,$22
	DB	$F8,$10,$78,$22
	DB	$08,$F8,$7C,$02
	DB	$08,$00,$7E,$02
	DB	$08,$08,$7E,$22
	DB	$08,$10,$7C,$22
BHANACS
	LD	A,(ENCHPT2)
	RLA
	RLA
;
	RLA
	RLA
	RLA
	AND	%11100000
	LD	E,A
	LD	D,B
	LD	HL,BHANACD
	ADD	HL,DE
	LD	C,$08
	CALL	ENOMST
;
	LD	A,$08
		jp	NXOMSBL
;;;11/11	CALL	NXOMSBL
;;;11/11;
;;;11/11	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%					%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
BHFIRCD
	DB	$1E,$02,$1E,$62	;�΂̋�
	DB	$1E,$42,$1E,$22
;
	DB	$32,$00,$32,$20	; Fail!
	DB	$30,$00,$30,$20
;- - - - - - - - - - - - - - - - - -
BHFIRMV
	LD	HL,ENLIFE
	ADD	HL,BC
	LD	(HL),$30
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,BHFR100	;�]�[���r�[���H
;				; YES !
	LD	A,(FRCNT)
	RLA
	RLA
	AND	$10
	LD	(ENFLCL),A	;���I
BHFR100
	LD	DE,BHFIRCD
	CALL	EN2CST
;
	CALL	LDTIM0
	JR	Z,BHF008
	DEC	A
	JP	Z,E4CLER
;
	RRA
	RRA
	RRA
	AND	$01
	ADD	A,$02
	JP	ENPTST
;
BHF008
	LD	HL,ENHNFG
	ADD	HL,BC
	LD	A,(HL)
	CP	$02
	JR	C,BHF010
;
	CALL	LDTIM0
	LD	(HL),$10
	RET
;
BHF010
	LD	(HL),B
;
	CALL	E4STCK
;
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	AND	$01
	CALL	ENPTST
;
	CALL	CREPKEL
;
	CALL	E4MVCL
;
	JP	E4GAWY
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	���l�A								%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
SHANACD
	DB	$50,$02,$50,$22
	DB	$52,$02,$52,$22
SHANAMV
	LD	DE,SHANACD
	CALL	EN2CST
;
	CALL	E4STCK
;
	CALL	ENHNCL
;
	CALL	CRKNENL
	CALL	M4CROS
;
	LD	A,(FRCNT)
	LD	E,B
	AND	%00110000
	JR	Z,SHNC10
	INC	E
SHNC10
	LD	A,E
		jp	ENPTST
;;;11/11	CALL	ENPTST
;;;11/11	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%					%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%					%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%					%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%					%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
M4CROS
	CALL	CRENPSL
	JR	NC,M420E0
;
M4CRSB
	CALL	PLPSRV
;
	CALL	DUSHCL2
;
	LD	A,(PFUCKID)
	AND	A
	JR	Z,M420E0
;	
	LD	E,A
	LD	D,B
	LD	HL,ENMYNO-1
	ADD	HL,DE
	LD	A,(HL)
	CP	FUCKS
	JR	NZ,M420E0
;
	LD	HL,ENSTAT-1	; Fuck return
	ADD	HL,DE
	LD	(HL),$00
M420E0
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%					%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
M4MVPT
	DB	$06,$04,$02,$00
;
M4PTST
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	E,(HL)
;;	LD	E,A
	LD	D,B ;$0
	LD	HL,M4MVPT
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
E4MSCK
	LD	E,B
;
		LD	A,(ENMYNO2)
		CP	URURI
		JR	Z,E4M_050
		CP	TRYCY
		JR	NZ,E4M_100
E4M_050
		LD	A,(PLYPSL)
		LD	HL,ENSVYL
		SUB	(HL)
		ADD	A,$14
		CP	$2C
		JR	E4MSSB
E4M_100
;
	LD	A,(PLYPSL)
	LD	HL,ENSVYL
	SUB	(HL)
	ADD	A,$14
	CP	$28
;======================================
E4MSSB
	JR	NC,E4C0A0
;
	LD	A,(PLXPSL)
	LD	HL,ENSVXL
	SUB	(HL)
	ADD	A,$10
	CP	$20
	JR	NC,E4C0A0
;
	INC	E
;
	LD	A,(ENMYNO2)
	CP	OZWAN
	JR	Z,E4C022
;
	PUSH	DE
	CALL	E4XYCK
	LD	A,(PLCMKI)
	XOR	$01
	CP	E
	POP	DE
	JR	NZ,E4C0A0
;
E4C022
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
	JR	NZ,E4C0A0
;
	LD	A,(WNDYPS)
	CP	$80
	JR	NZ,E4C0A0
;
	LD	A,(KEYA2)
	AND	%00010000
	JR	Z,E4C0A0
;
	SCF
	RET
E4C0A0
	AND	A	; (C) reset !
	RET
;============================================
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%				 %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;---------------------------------
E4STCK
	LD	A,(ENMODE2)
	CP	EMOVE
	JR	NZ,E4TC12
;
E4STCK2
	LD	A,(GMMODE)
	CP	GMAP
	JR	Z,E4TC12
;
		CP	ENDG
		JR	Z,E4STCK2_100	; �G���f�B���O�H
;					; �m��
		cp	GPLAY
		jr	nz,E4TC12	; �Q�[�����[�h�@�H
;					; Yes !!
		ld	a,(SBHR)
		cp	004
		jr	nz,E4TC12	; �t�F�[�h���@�H
;					; No !!
E4STCK2_100
	LD	HL,ENSTFG
	LD	A,(MSGEFG)
;;	AND	A
	OR	(HL)
	LD	HL,WNDFLG
	OR	(HL)
	JR	NZ,E4TC12
;
	LD	A,(SCRLFG)
	AND	A
	JR	Z,E4TCF0
E4TC12
	POP	AF
E4TCF0
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%						    %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
E4HNSD
;;	DB	$0,$0,$0,$0,$0
;;;	DB	$7,$3,$1,$0,$0
E4HNSB
	LD	HL,ENHNFG
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,E4HN90
;
	DEC	A
	LD	(HL),A
;
	CALL	HNSMST
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	A,(HL)
	PUSH	AF
	LD	HL,ENYSPD
	ADD	HL,BC
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
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),A
;
	CALL	E4MVCL
;
	LD	HL,ENMOD3
	ADD	HL,BC
	LD	A,(HL)
	AND	%00100000
	JR	NZ,E4HN28
;
	CALL	ENBGCKL
E4HN28
	LD	HL,ENYSPD
	ADD	HL,BC
	POP	AF
	LD	(HL),A
;
	LD	HL,ENXSPD
	ADD	HL,BC
	POP	AF
	LD	(HL),A
E4HN30
	POP	AF
E4HN90
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%				 %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
E4MVCL	
;
	CALL	E4XCLC 		; X calc
;
E4YCLC
	PUSH	BC
	LD	A,C
	ADD	A,<ENNO
	LD	C,A
	
	CALL	E4XCLC		; Y calc
	POP	BC
	RET
;-----------------------------------------
E4XCLC
	LD	HL,ENXSPD
	ADD	HL,BC 
;
	LD	A,(HL)
	AND	A
	JR	Z,E4L090
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
E4L00
	ADD	HL,BC 
;
	POP	AF
;
	LD	E,$0
	BIT	7,A
	JR	Z,E4C00
	LD	E,$F0
E4C00
	SWAP	A
	AND	$0F
	OR	E
	RR	D
	ADC	A,(HL)
	LD	(HL),A
E4L090
	RET
;====================================================
E4ZCLC
	LD	HL,ENZSPD
	ADD	HL,BC 
;
	LD	A,(HL)
	AND	A
	JR	Z,E4L090
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
	JR	E4L00
;====================================
E4XCHK
	LD	E,$0
;
	LD	A,(PLXPSL)
	LD	HL,ENXPSL
	ADD	HL,BC
	SUB	(HL)
	BIT	7,A
	JR	Z,E4X010
	INC	E
E4X010
	LD	D,A
	RET
;====================================
E4YCHK
	LD	E,$2
;
	LD	A,(PLYPSL)
	LD	HL,ENYPSL
	ADD	HL,BC
	SUB	(HL)
	BIT	7,A
	JR	NZ,E4Y010
	INC	E
E4Y010
	LD	D,A
	RET
;====================================
E4XYCK
	CALL	E4XCHK
	LD	A,E
	LD	(WORK0),A
;
	LD	A,D
	BIT	7,A
	JR	Z,E42010
	CPL
	INC	A
E42010
	PUSH	AF
;
	CALL	E4YCHK
	LD	A,E
	LD	(WORK1),A
;
	LD	A,D
	BIT	7,A
	JR	Z,E4Y020
	CPL
	INC	A
E4Y020
	POP	DE
	CP	D
	JR	NC,E4Y030
;
	LD	A,(WORK0)
	JR	E4Y050
E4Y030
	LD	A,(WORK1)
E4Y050
	LD	E,A
	RET
;============================
E4CLER
	LD	HL,ENMODE
	ADD	HL,BC
	LD	(HL),B
	RET
;==============================
;===============================================
;=	�\�j�b�N �a�[��			       =
;===============================================
;==============RIGHT,LEFT,UP,DOWN===============
;- - - - - - - - - - - - - - - - -
SONICCD
	DB	$6A,$23,$68,$23
	DB	$68,$03,$6A,$03
	DB	$6C,$43,$6C,$63
	DB	$6C,$03,$6C,$23
SONICMV
	LD	A,(FRCNT)
	RLA
	RLA
	AND	%00010000
	LD	(ENFLCL),A
;
	LD	DE,SONICCD
	CALL	EN2CST
	CALL	E4STCK
	CALL	CRENPL2L
;
	CALL	E4MVCL
	CALL	ENBGCK2L
;
	LD	HL,ENCBFG
	ADD	HL,BC
	LD	A,(HL)
	AND	A
		ret	Z
;;;11/11	JR	Z,SNM010
;
		jp	E4CLER
;;;11/11	CALL	E4CLER
;;;11/11SNM010
;;;11/11	RET
;==============================
;===============================================
;=					       =
;===============================================
SPARKCD
;;BABULCD
	DB	$5C,$00,$5C,$20
	DB	$5C,$14,$5C,$34
;
STYDT
	DB	$00,$10,$00,$F0,$00,$F0,$00,$10
;
STXDT
	DB	$10,$00,$F0,$00,$10,$00,$F0,$00
;
OHATARI
	DB	$01,$08,$02,$04,$01,$04,$02,$08
;
SPARKMV
SPAR2MV
	LD	A,$01
	LD	(ENBGRV),A	;BG check don't revise
;
	LD	A,(FRCNT)
	RRA
	AND	$01
	LD	(ENCHPT2),A
;
	LD	DE,SPARKCD
	CALL	EN2CST
;
	CALL	E4STCK
;
	CALL	E4HNSB
	CALL	CRENPLL
	CALL	E4MVCL
	CALL	ENBGAL	;�S�|�C���g�a�f��������
;--------------------------------
SPARKMAIN
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	LD	E,A
	LD	D,B ;$0
;
	LD	HL,ENWRK1	;;;;;;;
	ADD	HL,BC		;;;;;;;
;
	ADD	A,(HL)		;;;;;;;
	LD	E,A		;;;;;;;
;
	LD	HL,OHATARI	
	ADD	HL,DE
;
	PUSH	HL
;	
	LD	HL,ENCBFG
	ADD	HL,BC
	LD	A,(HL)
;
	POP	HL
	AND	(HL)
	JR	NZ,ATARI2
;
ATARI
	CALL	LDTIM0
	JR	NZ,STIMCK
;
	LD	HL,ENCBFG
	ADD	HL,BC
	LD	A,(HL)
	AND	$0F
	JR	NZ,SPMOVE
;
	CALL	LDTIM0
;;	LD	A,$09
	LD	(HL),$09 ;A
	JR	SPMOVE
;
ATARI2
	LD	HL,ENWRK0
	ADD	HL,BC
	INC	(HL)
	LD	A,(HL)
	AND	$03
	LD	(HL),A
	JR	SPMOVE
;
STIMCK
	CP	$06
;;;	CP	$01
	JR	NZ,SPMOVE
;
	LD	HL,ENWRK0
	ADD	HL,BC
	DEC	(HL)
	LD	A,(HL)
	AND	$03
	LD	(HL),A
;
SPMOVE
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	LD	E,A
	LD	D,B ;$0
;
	LD	HL,ENWRK1	;;;;;;;
	ADD	HL,BC		;;;;;;;
;
	ADD	A,(HL)		;;;;;;;
	LD	E,A		;;;;;;;
;
	LD	HL,STYDT
	ADD	HL,DE
;
	LD	A,(HL)
;
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),A
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	LD	E,A
	LD	D,B ;$0
;
	LD	HL,ENWRK1	;;;;;;;
	ADD	HL,BC		;;;;;;;
;
	ADD	A,(HL)		;;;;;;;
	LD	E,A		;;;;;;;
;
	LD	HL,STXDT
	ADD	HL,DE
;
	LD	A,(HL)
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%				 %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;---------------------------------
ENBGAL
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	A,(HL)
	PUSH	AF
;;	LD	A,$1
	LD	(HL),$01 ;A
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	A,(HL)
	PUSH	AF
;;	LD	A,$1
	LD	(HL),$01 ;A
;
	CALL	ENBGCKL
;
	LD	HL,ENCBFG
	ADD	HL,BC
	LD	A,(HL)
	PUSH	AF
;
	LD	HL,ENXSPD
	ADD	HL,BC
;;	LD	A,$FF
	LD	(HL),$FF ;A
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),$FF ;A
;
	CALL	ENBGCKL
;
	LD	HL,ENCBFG
	ADD	HL,BC
	POP	AF
	OR	(HL)
	LD	(HL),A
;
	POP	AF
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),A
	POP	AF
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
	RET
;
;========================================================================
;=	�L�[�X(���A�R�E����)						=
;========================================================================
BLBATCD
	DB	$42,$00,$42,$20
	DB	$40,$00,$40,$20
BLBATCD2
	DB	$62,$00,$62,$20
	DB	$60,$00,$60,$20
;
BYSPDT
	DB	$00,$05,$0A,$0D
BXSPDT
	DB	$0E,$0D,$0A,$05
	DB	$00,$FB,$F6,$F3
	DB	$F2,$F3,$F6,$FB
	DB	$00,$05,$0A,$0D
;
BSCDT
	DB	$0C,$04,$08,$00
;
BLBATMV
	LD	DE,BLBATCD
;
	LD	A,(DNJNNO)
	CP	$0A
	JR	NZ,BLBT100
;
	LD	DE,BLBATCD2
BLBT100
	CALL	EN2CST
	CALL	E4STCK
	CALL	E4HNSB
	CALL	CREPKEL
;-------------------------------------------------------------
BATMAIN
	LD	A,(ENSTAT2)
	RST	0
	DW	BLSTOP
	DW	BMOVE
;=================================================
BLSTOP
	CALL	LDTIM0
	JP	NZ,BCHNG
;
	CALL	E4XCHK
;
	ADD	A,$20
	CP	$40
	JP	NC,BCHNG
;
	CALL	E4YCHK
;
	ADD	A,$20
	CP	$40
	JP	NC,BCHNG
;
	CALL	E4XYCK	
;
	LD	D,$0
	LD	HL,BSCDT
	ADD	HL,DE
	LD	A,(HL)
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	(HL),A
;
	CALL	LDTIM0
	CALL	RNDSUB
	AND	$3F
	ADD	A,$50
	LD	(HL),A
;
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	(HL),$01 ;A
;
	CALL	STATINC
;
	JP	BCHNG
;=================================================
BMOVE
	CALL	E4MVCL
	CALL	ENBGCKL
;
	CALL	LDTIM0
	JR	NZ,BBMOVE	; Move stop ?
;				; yes!
	LD	(HL),$20 ;A
;
	CALL	STATINC
	LD	(HL),B
;
	JR	BCHNG
;
BBMOVE
	LD	HL,ENWRK2
	ADD	HL,BC
	INC	(HL)
	LD	A,(HL)
	CP	$0A
	JR	C,BCHNG
;
	LD	(HL),B	
;
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENWRK0
	ADD	HL,BC
	ADD	A,(HL)
	AND	$0F
	LD	(HL),A
;
BSPSET
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	E,(HL)
;;	LD	E,A
	LD	D,B ;$0
;
	LD	HL,BYSPDT
	ADD	HL,DE
;
	LD	A,(HL)
;
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),A
;
	LD	HL,BXSPDT
	ADD	HL,DE
;
	LD	A,(HL)
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
;
	CALL	RNDSUB
	AND	$01F
	JR	NZ,BCHNG
;
	CALL	RNDSUB
	AND	$02
	DEC	A
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	(HL),A
;
BCHNG
	LD	A,(ENSTAT2)
	AND	A
	JR	Z,BFIN
;
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	AND	$01
;
BFIN
	JP	ENPTST
;==========================
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�ӂ��낤 				%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
FUKUROMV
	LD	A,C
	LD	(FKINDX),A
;
	LD	A,(GRNDPT)
	CP	$64
	JR	NZ,FKM0030
;
	LD	A,(DJRMSV+$0E3)
	AND	%01000000
	RET	Z	;���΂��A�����H	
;
	LD	A,(WARPSV+$04)
	AND	%00000010
	JP	NZ,E4CLER
FKM0030
	LD	A,(GRNDPT)
	CP	$AC
	JR	NZ,FKM100
;
	LD	A,(DJSVBF)
	AND	%00010000
	JP	Z,E4CLER	
FKM100
	LD	A,(GRNDPT)
	CP	$41
	JR	NZ,FKM0001	;�_���W����1�̓�����H
;
	LD	A,(GRKEY1)
	AND	A
	RET	Z
;
	CALL	LDTIM1
	RET	NZ
;;	JP	Z,E4CLER	;�X�̂�ɉ������H
; 				; YES !
FKM0001
	LD	A,(GRNDPT)
	CP	$EE
	JR	NZ,FKM0EE
;
	LD	A,(GRKEY2)
	AND	A
	JR	DJCHEK2
;
FKM0EE
	LD	A,(GRNDPT)
	CP	$D2
	JR	Z,FKM036
	CP	$36
	JR	NZ,FKM0002
;
	LD	A,(WARPSV+$01)
	AND	A
	JP	NZ,E4CLER
;
	LD	A,(WANFLG)
	CP	$01
	JP	NZ,E4CLER
;
FKM036
	LD	A,(WARPSV+0)
	JR	DJCHEK
;;	AND	%00000010
;;	JP	Z,E4CLER	;�_���W����1�N���A�[��H
; 				; YES !
FKM0002
	LD	A,(GRNDPT)
	CP	$08
	JR	NZ,FKM08
;
	LD	A,(WARPSV+$07)
	AND	%00000010
	JP	NZ,E4CLER	;8 cleard?
;
	LD	A,(GRRMSV+$08)
	AND	%00010000
;;	JP	Z,E4CLER
	RET	Z
	JR	FKCC90		;�}��������������I
;
;;	LD	A,(WARPSV+6)
;;	JR	DJCHEK
FKM08
	CP	$9D
	JR	NZ,FKM9D
;
	LD	A,(WARPSV+4)
	JR	DJCHEK
FKM9D
	CP	$06
	JR	NZ,FKM06
;
	LD	A,(GRRMSV+$06) ;DJSVBF)
	AND	%00010000
	RET	Z
	JR	FKCC90		;�v��ꂽ��I
FKM06
	CP	$B6
	JR	NZ,FKM0008
;
	LD	A,(WARPSV+2)
	JR	DJCHEK
FKM0008
	CP	$17
	JR	Z,FKM0V6
	CP	$9C
	JR	NZ,FKM09C
;
FKM0V6
	LD	A,(WARPSV+5)
	JR	DJCHEK
FKM09C
	CP	$16
	JR	NZ,FKM009
;
	LD	A,(WARPSV+1)
DJCHEK
	AND	%00000010
DJCHEK2
	JP	Z,E4CLER	;�_���W����2�N���A�[��H
FKM009
FKCC90
FKCHK090
	LD	A,(GRNDPT)
	CP	$D2
	JR	Z,FKSETON2
	CP	$16
	JR	Z,FKSETON2
	CP	$36
	JR	Z,FKSETON2
;
	LD	A,(ENSTAT2)
	CP	$00
	JR	Z,FKM00F0
;
FKSETON2
	CALL	FUKUROCS
FKM00F0
	LD	A,(FRCNT)
	AND	%10110000
	LD	A,$00
	JR	NZ,FKM010
	INC	A
FKM010
	CALL	ENPTST
FKM000
	LD	A,(SCRLFG)
	AND	A
	RET	NZ
;;	CALL	E4STCK
;
	LD	A,(ENSTAT2)
	RST	00
	DW	FKM0000
	DW	FKM4000
	DW	FKM1000
	DW	FKM2000
	DW	FKM3000
;------------------------------
;	DW	FKM5000
;	DW	FKM6000
;-----------------------------------------
FKM0000
	LD	A,(GRNDPT)
	CP	$F2
	JR	NZ,FKM0010
;
	LD	A,$1D
	LD	(BGMNO),A
;
	LD	A,(PLYPSL)
	CP	$44
	RET	C
	LD	A,(PLXPSL)
	SUB	$58
	ADD	A,$18
	CP	$30
	RET	NC
;
FKM00111
	JR	FKM0020
;
FKM0010
	LD	A,(KENLEV)
	AND	A
	JP	Z,E4CLER
;
FKM0020
	LD	A,(BGMNO)
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	(HL),A
;
	LD	A,$22
	LD	(SOUND4),A	;(S)
	LD	(BGMNO),A
	LD	(BGMNO2),A
;- - - -Furou set - -
	LD	A,(GRNDPT)
	CP	$16
	JR	Z,FKSETON
	CP	$36
	JR	Z,FKSETON
	CP	$D2
	JR	NZ,FK0022	;���̏�Z�b�g�I�I
;
FKSETON
	CALL	STATINC
	LD	(HL),$02
	RET
FK0022
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	(HL),$20
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),$18
;
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),$10
;
		jp	STATINC
;;;11/11	CALL	STATINC
;;;11/11FKM0090
;;;11/11	RET
;-----------------------------------------
FKM4000
	CALL	E4XYCK
	LD	A,E
	XOR	$01
	LD	(PLCMKI),A
;
	LD	A,$02
	LD	(PLSTOP),A
	LD	A,$05
	LD	(ENSTTM),A
;
	CALL	FKM2010
;
	CALL	E4MVCL
;
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	NZ,FKM4010
;
		jp 	STATINC
;;;11/11	CALL 	STATINC
;;;11/11	RET
FKM4010
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),$FC
	CALL	E4ZCLC
;
	CALL	HABATAKI	;(S)
;
	LD	A,(FRCNT)
	AND	$03
		ret	NZ
;;;11/11	JR	NZ,FK4050
;
	LD	A,$00
	LD	HL,ENYSPD
	CALL	FKSUB
	LD	A,$00
	LD	HL,ENXSPD
		jp	FKSUB
;;;11/11	CALL	FKSUB
;;;11/11FK4050
;;;11/11	RET
;-------------------------------------
FKM1000
	CALL	E4STCK
;
	CALL	M4CROS
;
	LD	A,(SBHR)
	CP	$04
	RET	NZ
;
	LD	A,(BGCKOF)
	AND	A
	RET	NZ
;
FKM0202
	LD	A,(GRNDPT)
	CP	$06
	JR	NZ,FKM01A
;
	LD	A,$CD
	CALL	MSGCHK
	JR	FKM01B
FKM01A
	CALL	FKMSCK
FKM01B
	LD	A,$19
	LD	(FKMSFG),A	;�ӂ��낤���b�Z�[�W���I
;
	CALL	STATINC
;
	CALL	LDTIM0
	LD	(HL),$10
FKM020
	RET
;-----------------------------------------
FKM2000
	CALL	E4STCK
;
	LD	A,(GRNDPT)
	CP	$06
	JR	Z,FKM2012
;
	CALL	LDTIM0
	JR	NZ,FKM2010
;
	CALL	STATINC
;
FKM2012
	LD	A,(GRNDPT)
;	CP	$D3
;	JR	Z,FKM2010	;Danjyon 1 exit ?
;				;No
	LD	E,A		
	LD	D,B
	LD	HL,GRRMSV
	ADD	HL,DE
	SET	5,(HL)	; %00100000
	RET
FKM2010
	LD	A,$02
	LD	(PLSTOP),A
;
	LD	A,(FRCNT)
	RRA
	RRA
	AND	$02
		jp	ENPTST
;;;11/11	CALL	ENPTST
;;;11/11;
;;;11/11	RET
;-----------------------------------------
FKM3000
	CALL	E4STCK
;
	CALL	FKM2010
;
	CALL	E4MVCL
;
	CALL	E4GAWY
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),$04
	CALL	E4ZCLC
;
	LD	HL,ENMODE
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	NZ,FKM3011
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	LD	(SOUND4),A	;(S)
;
FKM3016
	LD	(BGMNO),A
;
	LD	A,(POWRFG)
	AND	A
	JR	Z,FKSD10
;
;;;12/04		LD	A,(CLOTHFG)	;�h��͂������́A
;;;12/04		AND	A		;	�U���͂t�o���Ă�H
;;;12/04		JR	NZ,FKSD10	;	NO --> FKSD10
;
	LD	A,$49
	LD	(SOUND4),A	;(S)
	LD	(BGMNO2),A
FKSD10
	RET
FKM3011
	LD	A,(FRCNT)
	AND	$07
	JR	NZ,FK3012
;
	LD	A,$05
	LD	(SOUND3),A	;(S)
FK3012
	LD	A,(FRCNT)
	AND	$01
	JR	NZ,FK3050
;
	LD	A,$20
	CALL	PSERCH2L
;
	LD	A,(WORK0)
	CPL
	INC	A
	LD	HL,ENYSPD
	CALL	FKSUB
	LD	A,(WORK1)
	CPL
	INC	A
	LD	HL,ENXSPD
FKSUB
	ADD	HL,BC
	SUB	(HL)
	JR	Z,FK3050
;
	BIT	7,A
	JR	Z,FK3020
;
	DEC	(HL)
	DEC	(HL)
FK3020
	INC	(HL)
FK3050
	RET
;====================================
FUKUROCD
	DB	$78,$01,$78,$21
	DB	$7A,$01,$7A,$21
FUKUROC2
	DB	$00,$F8,$7C,$01
	DB	$00,$00,$7E,$01
	DB	$00,$08,$7E,$21
	DB	$00,$10,$7C,$21
;------------------------------------------
FUKUROCS
	LD	A,(ENCHPT2)
	CP	$02
	JR	NC,FKCS10
;
	LD	DE,FUKUROCD
	JP  	EN2CST
FKCS10
	LD	HL,FUKUROC2
;
	LD	C,$04
	CALL	ENOMST
;
	LD	A,$04
	CALL	NXOMSBL
;
	LD	A,(GRNDPT)
	CP	$08
	JR	Z,FUKCS90
;
		jp	SADWSTL
;;;11/11	CALL	SADWSTL
;;;11/11	RET
FUKCS90
	LD	HL,ENMOD0
	ADD	HL,BC
	RES	4,(HL)	;�e�����I
	RET
;=============================================
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�d�b��				    %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
DENWACD
	DB	$50,$02,$52,$02
;- - - - - - - - - - - - - - - -
DENWAMV
	LD	A,(ENDSYP)
	SUB	$05
	LD	(ENDSYP),A
;
	LD	DE,DENWACD
	CALL	EN2CST
;
	CALL	E4STCK
;
	CALL	E4MSCK
	RET	NC
;
	LD	E,$FD
;
	LD	A,(GRNDPT)
	CP	$A9
	JP	Z,DEN090	;�����炶������̉ƁI
;
		LD	E,$6E
		LD	A,(MEGAF)
		CP	$00A		;�z�E�L�������Ă�H
		JR	NZ,DENWA_150	;	NO --> DENWA_150
		LD	A,(WARPSV+$04)	;���|�����΂���A
		AND	%00000010	;	�������ɂ���H
		JP	NZ,DEN090	;	YES --> DEN090
DENWA_150
;
	LD	E,$41
	LD	A,(DJRMSV+$1A9)
	AND	%00100000
	JP	Z,DEN090
;
	LD	E,$46
	LD	A,(WARPSV+$00)
	AND	%00000010
	JP	Z,DEN090
;
	LD	E,$42
	LD	A,(WANFLG)
	CP	$80
	JP	Z,DEN090
;
	LD	E,$43
	LD	A,(WARPSV+$01)
	AND	%00000010
	JP	Z,DEN090	;2 CLER?
;				;YES !
	LD	E,$44
	LD	A,(WANFLG)
	CP	$01
	JP	Z,DEN0A0	;���������܂��Ԃ��ĂȂ��I	
;
	LD	E,$44
	LD	A,(URURIFG)
	CP	$02
	JP	NZ,DEN090
;
	LD	E,$45
	LD	A,(MEGAF)
	CP	$05
	JP	C,DEN090	
;
		LD	A,(GRKEY5)	;�����̗t���ς�
		CP	$05		;	�W�߂Ă���Œ��H
		JR	NC,GOLD_HAPPA
		LD	HL,ENWRK0
		ADD	HL,BC
		INC	(HL)
		LD	A,(HL)
		CP	$003
		JR	NZ,GOLD_HAPPA_100
		XOR	A
		LD	(HL),A
GOLD_HAPPA_100
		LD	E,$028
		ADD	A,E
		LD	E,A
		JP	DEN0A0
;;;KK;;;		JP	C,DEN090	;	YES --> DEN090
GOLD_HAPPA
;
	LD	E,$48
	JP	Z,DEN090
;
	CP	$06
	JP	NZ,DEN090
;
	LD	E,$49
	LD	A,(WARPSV+$02)
	AND	%00000010
	JP	Z,DEN090
;
	LD	E,$4A
	LD	A,(GRKEY2)
	AND	A
	JP	Z,DEN090
;
	LD	E,$40
	LD	A,(WARPSV+$03)
	AND	%00000010
	JP	Z,DEN0A0
;
	LD	A,(OBAKEFG)
	AND	A
	JR	Z,DEN0OB	
;
	LD	E,$4B
	LD	A,(DJRMSV+$0E3)	;�������A�����H
	AND	%01000000
	JR	Z,DEN090
;
DEN0OB
	LD	E,$4C
	LD	A,(WARPSV+$04)
	AND	%00000010
	JR	Z,DEN090
;
	LD	E,$45
	LD	A,(ONPUFG)
	AND	%00000001	;������̂������o�����H
	JP	Z,DEN0A0	;YES !
;
	LD	E,$4D
	LD	A,(WARPSV+$05)
	AND	%00000010
	JR	Z,DEN090
;
	LD	E,$4E
	LD	A,(NIWATFG)
	AND	A
	JR	Z,DEN078
;
	LD	E,$46
	LD	A,(GRKEY4)
	AND	A
	JP	Z,DEN0A0	
;
	LD	E,$41
DEN078
	LD	A,(WARPSV+$06)
	AND	%00000010
	JR	NZ,DEN07A
;
	LD	A,E
	CP	$4E
	JR	Z,DEN090
	JR	DEN0A0
;
DEN07A
	LD	E,$4F
	LD	A,(GRRMSV+$10)	;�J���C���J�����H
	AND	%00110000
	JR	Z,DEN090
;
	LD	E,$48
	LD	A,(WARPSV+$07)
	AND	%00000010
	JR	Z,DEN0A0
;
	LD	E,$42
	LD	A,(GRRMSV+$06)
	AND	%00110000
	JR	Z,DEN0A0	;���܂���ܓ������H
;				;YES !
	LD	E,$43
	LD	A,(DJRMSV+$174) ;�{�X�ɉ�����H
	AND	%01000000
	JR	Z,DEN0A0
;
	LD	E,$47
	LD	A,(KENLEV)
	CP	$02
	JR	C,DEN0A0
;
	LD	E,$48
	JR	DEN0A0
;
DEN090
	LD	A,E
	CALL	MSGCH2
	JR	DEN0A8
DEN0A0
	LD	A,E
	CALL	MSGCH3
;
DEN0A8
	LD	HL,DJRMSV+$1A9
	SET	5,(HL)
DEW100
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�`���E�`�� 				%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
BTFLYCD
	DB	$5E,$01
	DB	$5E,$41
;;	DB	$5E,$00,$5E,$20
;;	DB	$5E,$40,$5E,$60
BTFSPD
	DB	$04,$FC,$03,$FD
	DB	$02,$FE,$05,$FA
;- - - - - - - - - - - - - - - - - - -
BTFLYMV
	LD	A,(ENCHPT2)
	CP	$01
	JR	NZ,BTF010
;
	LD	A,(ENDSYP)
	SUB	$00
	LD	(ENDSYP),A
BTF010
	LD	DE,BTFLYCD
	CALL	EN1CST
;
	CALL	E4STCK
;
	LD	A,C
	SLA	A
	SLA	A
	SLA	A
;
	LD	HL,FRCNT
;
	ADD	A,(HL)
	LD	(ENSTAT2),A
	RRA
	RRA
	RRA
	AND	$01
	CALL	ENPTST
;
	CALL	E4MVCL
;
	LD	A,(ENSTAT2)
	AND	$1F
	JR	NZ,BTF020
;
	CALL	RNDSUB
	AND	$07
	LD	E,A
	LD	D,B
	LD	HL,BTFSPD
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENWRK0
	ADD	HL,BC
	ADD	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
;
BTF020
	LD	A,(ENSTAT2)
	ADD	A,$10
	AND	$1F
	JR	NZ,BTF030
;
	CALL	RNDSUB
	AND	$07
	LD	E,A
	LD	D,B
	LD	HL,BTFSPD
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENWRK1
	ADD	HL,BC
	ADD	A,(HL)
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),A
BTF030
	LD	A,(ENSTAT2)
	AND	$3F
	JR	NZ,BTF050	;�l�ԃT�[�`�I
;
	LD	A,(PLXPSL)
	PUSH	AF
	LD	A,(PLYPSL)
	PUSH	AF
;
	LD	A,(MAINDX)
	CP	$FF
	JR	Z,BTF080	;�}��������H
;				;YES !
	LD	E,A
	LD	D,B
;
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	A,(HL)
	LD	(PLXPSL),A
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	A,(HL)
	LD	(PLYPSL),A
;
BTF080
	LD	A,$02
	CALL	PSERCH2L
;
	POP	AF
	LD	(PLYPSL),A
	POP	AF
	LD	(PLXPSL),A
;
	LD	A,(WORK0)
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	(HL),A
;
	LD	A,(WORK1)
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	(HL),A
BTF050
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%   �I�o�P�̂p���Y�i�̖{�j		%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
OBAQMV
	LD	A,C
	LD	(BSINDX2),A
	LD	A,(DNJNNO)
	CP	$07
	JR	NZ,OQ00SB
;
	LD	A,$10
	LD	(ENCHNO),A	;Bank chenge !
OQ00SB
	CALL	OBAQCS
;
	CALL	BSSDCK	;(S)
;
	CALL	SHRVSE
;
	LD	A,(ENMODE2)
	CP	EMOVE
	JR	Z,OBQ010
;
	LD	HL,ENMOD3
	ADD	HL,BC
	LD	(HL),%10000000	;�t�F�C�����[�`�����烀�[�u�֋����I
;- - - FAIL - - - -
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	RST	00
	DW	OBFL100 
	DW	OBFL200 
;------------------------------
OBFL100
	CALL	LDTIM0
	LD	(HL),$FF
;
	LD	HL,ENFLSH
	ADD	HL,BC
	LD	(HL),$FF
;
OBWKINC
	LD	HL,ENWRK0
	ADD	HL,BC
	INC	(HL)
	RET
;--------------------------
OBFL200
	CALL	LDTIM0
	JP	Z,OBFL230
;
	LD	HL,ENFLSH
	ADD	HL,BC
	LD	(HL),A
;
	CP	$80
	JR	NC,OBFL210
;
	CALL	ESMRN4
OBFL210
	RET
OBFL230
	CALL	BGMSET	;(S)
;
	CALL	ENFEND
;----------------------------------
	LD	A,(DNJNNO)
	CP	$07
	RET	Z
DJSVSB
	LD	HL,DJRMSV
	LD	A,(GRNDPT)
	LD	E,A
	LD	D,B
;
	LD	A,(DNJNNO)
		CP	NEWDJ		;�V�_���W�����H
		JR	NZ,DJSSB10_PASS	;	NO --> DJSSB10_PASS
		LD	HL,NEWDJRM	;�V�_���W�����̃Z�[�u�q�`�l
		JR	DJSSB10
DJSSB10_PASS
;
	CP	DJROOM2
	JR	NC,DJSSB10
	CP	DJROOM
	JR	C,DJSSB10
;
	INC	D
DJSSB10
	ADD	HL,DE
	SET	5,(HL)
	RET
;
;======================================
;======================================
;======================================
;======================================
OBQ010
	CALL	E4STCK
;
	CALL	E4HNSB
	CALL	CREPKEL
;
	LD	HL,ENLIFE
	ADD	HL,BC
	LD	A,(HL)
	LD	(ENHELP2),A
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,OBQ090
;
	LD	E,$00
	AND	%10000000
	JR	NZ,OBQ080
	LD	E,$03
OBQ080
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	(HL),E
OBQ090
	CALL	E4ZCLC
;
	LD	HL,ENZSPD
	ADD	HL,BC
	DEC	(HL)
	DEC	(HL)
	NOP
	NOP
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	AND	%10000000
	LD	(ENHELP),A
	JR	Z,OBQ0A0
;
	LD	(HL),B
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	A,(HL)
	LD	(HL),B
	CP	$F2
	JR	NC,OBQ0A0
;
	LD	A,$20
	LD	(SOUND1),A	;(S)
OBQ0A0
	LD	A,(ENSTAT2)
	RST	00
	DW	OBQ1000
	DW	OBQ2000
	DW	OBQ3000
	DW	OBQ4000
;========================================
OBQ1000	;�_�ɋ߂�
	CALL	LDTIM0
		ret	NZ
;;;11/11	JR	NZ,OBQ1090
;
	LD	A,(BSINDX)
	LD	E,A
	LD	D,B
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	A,(ENSVXL)
	SUB	(HL)
	LD	E,$08
	BIT	7,A
	JR	NZ,OBQ1010
	LD	E,$F8
OBQ1010
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),E	
;
	ADD	A,$10
	CP	$20
	JR	NC,OBQ020
;
	CALL	LDTIM0
	LD	(HL),$18
;
		jp	STATINC
;;;11/11	CALL	STATINC
;;;11/11	RET
;- - - - - - - - - - - - - - -
OBQ020
	CALL	E4XCLC
;
	LD	A,(ENHELP)
	AND	A
	JR	Z,OBQ030
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),$0C
OBQ030
	LD	A,$01
		jp	ENPTST
;;;11/11	CALL	ENPTST
;;;11/11OBQ1090
;;;11/11	RET
;===========================================
OBQ2000
	CALL	LDTIM0
		ret	NZ
;;;11/11	JR	NZ,OBQ2050
;
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	LD	A,$10
	JR	NZ,OBQ2010
;
	LD	A,$F0
OBQ2010	
	PUSH	AF
	LD	A,(BSINDX)
	LD	E,A
	LD	D,B
	LD	HL,ENXSPD
	ADD	HL,DE
	POP	AF
	LD	(HL),A
;
	LD	HL,ENSTAT
	ADD	HL,DE
	LD	(HL),$01
;
	CALL	LDTIM0
	LD	(HL),$20
;
	CALL	STATINC
;
		xor	a
		jp	ENPTST
;;;11/11	LD	A,$00
;;;11/11	CALL	ENPTST
;;;11/11OBQ2050
;;;11/11	RET
;===========================================
OBQ3000
	CALL	LDTIM0
		ret	NZ
;;;11/11	JR	NZ,OBQ3020
;
		jp	STATINC
;;;11/11	CALL	STATINC
;;;11/11;;;	LD	(HL),B
;;;11/11OBQ3020
;;;11/11	RET
;===========================================
OBQ4000
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	CP	$08
	LD	A,$01
	JR	C,OBQ4001
	INC	A
OBQ4001
	CALL	ENPTST
;
	CALL	LDTIM0
	CP	$01
	JR	Z,OBQ4008
	CP	$00
		ret	NZ
;;;11/11	JP	NZ,OBQ4060
;
	LD	A,(ENHELP)
	AND	A
	JR	Z,OBQ4050
;
	CALL	LDTIM0
	LD	(HL),$10
	RET
;
OBQ4008
	LD	E,$10
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),$19
	LD	A,(ENHELP2)	;Life
	CP	$05
	JR	NC,OBQ4009
;
	LD	E,$14
	LD	(HL),$16
OBQ4009
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	LD	A,E
	JR	NZ,OBQ4010
;
	CPL
	INC	A
OBQ4010	
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
;
	LD	A,(ENDSYP)
	CP	$50
	LD	A,E
	JR	C,OBQ4030
	CPL
	INC	A
OBQ4030
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),A
;
;;	LD	A,$0D
;;	LD	(SOUND1),A	;(S)
;;	CALL	E4JPSD	;(S)
OBQ4050
	CALL	E4MVCL
	CALL	ENBGCKL
;
	LD	HL,ENCBFG
	ADD	HL,BC
	LD	A,(HL)
	AND	$03
		ret	Z
;;;11/11	JR	Z,OBQ4060
;
	CALL	STATINC
	LD	(HL),B
;
	CALL	LDTIM0
	LD	(HL),$08
;
		jp	ENSDCL
;;;11/11	CALL	ENSDCL
;;;11/11OBQ4060
;;;11/11	RET
;========================================
OBAQCD
;0
	DB	$00,$F8,$60,$06
	DB	$00,$00,$62,$06
	DB	$00,$08,$64,$06
	DB	$F0,$00,$6E,$26
;1
	DB	$00,$F8,$66,$06
	DB	$00,$00,$68,$06
	DB	$00,$08,$6A,$06
	DB	$F0,$00,$6E,$06
;1#
	DB	$00,$F8,$66,$06
	DB	$00,$00,$68,$06
	DB	$00,$08,$6A,$06
	DB	$F0,$06,$6E,$26
;2
	DB	$00,$00,$64,$26
	DB	$00,$08,$62,$26
	DB	$00,$10,$60,$26
	DB	$F0,$08,$6E,$06
;3
	DB	$00,$00,$6A,$26
	DB	$00,$08,$68,$26
	DB	$00,$10,$66,$26
	DB	$F0,$08,$6E,$26
;3#
	DB	$00,$00,$6A,$26
	DB	$00,$08,$68,$26
	DB	$00,$10,$66,$26
	DB	$F0,$02,$6E,$06
;- - - - - - - - - - - - - - - - -
OBAQCS
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	A,(ENCHPT2)
	ADD	A,(HL)
	RLA
	RLA
;
	RLA
	RLA
	AND	%11110000
	LD	E,A
	LD	D,B
;
	LD	HL,OBAQCD
;
	ADD	HL,DE
;
	LD	C,$04
	CALL	ENOMST
;
	LD	A,$04
	CALL	NXOMSBL
;--- sadow set --
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	AND	A
		ret	Z
;;;11/11	JR	Z,OBQC10
;
	LD	A,(FRCNT)
	AND	$01
		ret	NZ
;;;11/11	JR	NZ,OBQC10
;
	LD	A,(ENOMID)
	LD	E,A
	LD	D,B ;$0
	LD	HL,ENOAM
	ADD	HL,DE
;
	LD	A,(ENSVYL)
	ADD	A,$0C
	LD	(HLI),A
	LD	A,(ENSVXL)
	ADD	A,$02
	LD	(HLI),A
	LD	A,$26
	LD	(HLI),A
	LD	A,$00
	LD	(HLI),A
;
	LD	A,(ENSVYL)
	ADD	A,$0C
	LD	(HLI),A
	LD	A,(ENSVXL)
	ADD	A,$04
	LD	(HLI),A
	LD	A,$26
	LD	(HLI),A
	LD	A,$00
	LD	(HLI),A
;
	LD	A,$02
		jp	NXOMSBL
;;;11/11	CALL	NXOMSBL
;;;11/11OBQC10
;;;11/11	RET
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%   �I�o�p�o�[				%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
OBQBARCD
	DB	$6C,$07,$6C,$27
	DB	$6C,$47,$6C,$67
OBBFLYD
	DB	$70,$60,$50,$40,$30,$20
;- - - - - - - - - - - - - - - - - - - -
OBQBARMV
	LD	A,(DNJNNO)
	CP	$07
	JR	NZ,OQB0SB
;
	LD	A,$10
	LD	(ENCHNO),A	;Bank chenge !
OQB0SB
	LD	A,(DJSVBF)
	AND	%00100000
	JP	NZ,E4CLER
;
	LD	A,C
	LD	(BSINDX),A
;
	CALL	OBQBARCS
;
	CALL	E4STCK
;
	LD	A,(BSINDX2)
	LD	E,A
	LD	D,B
	LD	HL,ENMODE
	ADD	HL,DE
	LD	A,(HL)
	CP	EFAIL
	RET	Z
	AND	A
	JR	NZ,OBQB00
;
	CALL	LDTIM0
	JR	NZ,OBBF10
;
	LD	(HL),$03
;
	LD	HL,ENWRK0
	ADD	HL,BC
;
	LD	A,(ENSVXL)
	LD	(WORK0),A
	LD	E,(HL)
	INC	(HL)
	LD	A,(HL)
	CP	$06
	JR	NZ,OBBF02
;
	CALL	E4CLER
;
	LD	HL,ENJYUN
	ADD	HL,BC
	LD	E,(HL)
	LD	D,B
	LD	HL,ENONBT
	ADD	HL,DE
;
	LD	A,(GRNDPT)
	LD	E,A
	LD	D,B
;
	LD	A,(HL)
	LD	HL,ENONOF
	ADD	HL,DE
	OR	(HL)
	LD	(HL),A	
OBBF02
	LD	D,B
	LD	HL,OBBFLYD
	ADD	HL,DE
	LD	A,(HL)
	LD	(WORK1),A
;
	JP	SMKSDST	;(S)
OBBF10
	RET
;=====================================
OBQB00
	CALL	ENHNCL
;
	LD	A,(PLZPSL)
	AND	A
	JR	NZ,OBQB02
;
	CALL	CREPKEL
OBQB02
	CALL	E4XCLC
;
	CALL	ENBGCKL
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,OBQB80
;
	BIT	7,A
	JR	Z,OBQB10
;
	CPL
	INC	A
OBQB10
	LD	E,%00000100
	CP	$08
	JR	NC,OBQB20
	LD	E,%00001000
OBQB20
	CP	$04
	JR	NC,OBQB30
	LD	E,%00010000
OBQB30
	CP	$02
	JR	NC,OBQB40
	LD	E,%00100000
OBQB40
	LD	D,B
	LD	A,(FRCNT)
	AND	E
	JR	Z,OBQB50
	INC	D
OBQB50
	LD	A,D
	CALL	ENPTST
OBQB80
	LD	A,(ENSTAT2)
	RST	00
	DW	OBB1000	;STOP
	DW	OBB2000	;MOVE
	DW	OBB3000	;SPEED DOWN
;=====================================
OBB1000
	RET
;=====================================
OBB2000
	LD	HL,ENCBFG
	ADD	HL,BC
	LD	A,(HL)
	AND	$03
	JR	Z,OBB2010
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	A,(HL)
	SRA	A
	CPL
	INC	A
	LD	(HL),A
;
	LD	A,$20
	LD	(TILTCT),A
	XOR	A
	LD	(TILTMK),A
;
	LD	A,$0B
	LD	(SOUND1),A	;(S)
;
	CALL	STATINC
OBB2010
OBBSDST
	LD	A,(BGMCNT)
	INC	A
	CP	$09
	JR	C,OBB2020
;
	LD	A,$1A
	LD	(SOUND2),A	;(S)
;
	XOR	A
OBB2020
	LD	(BGMCNT),A
	RET	
;=====================================
OBB3000
	LD	A,(FRCNT)
	AND	$07
	JR	NZ,OBB3020	
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,OBB3080
	AND	%10000000
	JR	Z,OBB3010
	INC	(HL)
	INC	(HL)
OBB3010
	DEC	(HL)
OBB3020
	RET
OBB3080
	CALL	STATINC
	LD	(HL),B
;
	CALL	LDTIM0
	LD	(HL),$50
	RET
;========================================
OBBCYL
	DB	$80,$70,$60,$50,$40,$30
;
OBQBARCS
	LD	A,$20
	LD	(ENDSYP),A
OBQBC10
	LD	DE,OBQBARCD
;
	CALL	EN2CST
;
	LD	A,(ENDSYP)
	ADD	A,$10
	LD	(ENDSYP),A
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	E,(HL)
	LD	D,B
	LD	HL,OBBCYL
	ADD	HL,DE
	CP	(HL)
	JR	NZ,OBQBC10
;
		jp	ENPSSV
;;;11/11	CALL	ENPSSV
;;;11/11OBQBC20
;;;11/11	RET
;
;
;
;=================================================
;=================================================
;===========================================
ESMRN4
	AND	$07
		ret	NZ
;;;11/11	JR	NZ,K4L310
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
		jp	HBSMS4
;;;11/11	CALL	HBSMS4
;;;11/11K4L310
;;;11/11	RET
;
;===========================================
HBSMS4
	CALL	E4STCK2
;
	LD	A,(ENSVXL)
	LD	(WORK0),A
	LD	A,(ENDSYP)
	LD	(WORK1),A
;----------------------------------
SMKSDST
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
HARTBS4
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
	JR	Z,HBS410
;
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),$F0
	JR	HBS420
HBS410
	LD	HL,ENZSPD
	ADD	HL,DE
	LD	(HL),$10
;
	LD	HL,ENZPSL
	ADD	HL,DE
	LD	(HL),$08
HBS420
	CALL	E4CLER
;
;;	LD	HL,SOUND3
;;	LD	(HL),$0C	;(S)
		jp	BBSDST	;(S)
;;;11/11	CALL	BBSDST	;(S)
;;;11/11	RET

;��������������������������������������������������������������������������
;��	ze8.s �Ƀv���O�������ړ�					 ��
;��������������������������������������������������������������������������
;;;11/11;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;;;11/11;%   �x�b�h �Q�鏈��			%
;;;11/11;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;;;11/11BEDINMV
;;;11/11	LD	A,(ENSTAT2)
;;;11/11	RST	00
;;;11/11	DW	BDIN000
;;;11/11	DW	BDIN100
;;;11/11	DW	BDIN200
;;;11/11;;	DW	BDIN300
;;;11/11;-------------------------------------
;;;11/11BDIN000
;;;11/11	CALL	E4XCHK
;;;11/11	ADD	A,$0E
;;;11/11	CP	$1C
;;;11/11	JR	NC,BDIN090
;;;11/11;
;;;11/11	CALL	E4YCHK
;;;11/11	ADD	A,$0C
;;;11/11	CP	$18
;;;11/11	JR	NC,BDIN090
;;;11/11;
;;;11/11	LD	A,(PLCMKI)
;;;11/11	AND	A
;;;11/11	JR	NZ,BDIN090
;;;11/11;
;;;11/11	LD	A,(PLCBFG)
;;;11/11	AND	A
;;;11/11	JR	Z,BDIN090
;;;11/11;
;;;11/11	CALL	STATINC
;;;11/11;
;;;11/11	CALL	LDTIM0
;;;11/11	LD	(HL),$A0
;;;11/11;
;;;11/11	LD	A,$01
;;;11/11	LD	(PLZPSL),A
;;;11/11	LD	A,$02
;;;11/11	LD	(PLJPFG),A
;;;11/11	LD	A,$12
;;;11/11	LD	(PLZSPD),A
;;;11/11	LD	A,$0C
;;;11/11	LD	(PLXSPD),A
;;;11/11	XOR	A
;;;11/11	LD	(PLYSPD),A
;;;11/11;
;;;11/11	LD	A,$0
;;;11/11	LD	(PLCMKI),A
;;;11/11;
;;;11/11	LD	A,$01
;;;11/11	LD	(BEDOFF),A
;;;11/11;
;;;11/11	LD	A,$1E
;;;11/11	LD	(SOUND4),A	;(S)
;;;11/11;
;;;11/11	XOR	A
;;;11/11	LD	(SBHR),A
;;;11/11	LD	(SBCNT),A
;;;11/11BDIN090
;;;11/11	RET
;;;11/11;-------------------------------------
;;;11/11BLINKCD
;;;11/11	DB	$50,$00,$52,$00
;;;11/11;;	DB	$42,$20,$40,$20
;;;11/11	DB	$54,$00,$56,$00
;;;11/11;;	DB	$48,$00,$4A,$00
;;;11/11;;	DB	$48,$00,$4C,$00
;;;11/11;- - - - - - - - - - - - - - - -
;;;11/11BDTRAD	;�g�E���E�ꏊ
;;;11/11	DB	$98,$42
;;;11/11	DB	$98,$50
;;;11/11	DB	$99,$90
;;;11/11	DB	$99,$82
;;;11/11;
;;;11/11BDIN100
;;;11/11	LD	A,(PLJPFG)
;;;11/11	AND	A
;;;11/11	JP	NZ,BDIN1C0
;;;11/11;
;;;11/11	CALL	LDTIM0
;;;11/11	JR	NZ,BDIN190
;;;11/11;
;;;11/11	LD	A,$01
;;;11/11	LD	(WAVFLG),A
;;;11/11	XOR	A
;;;11/11	LD	(WAVTIM),A
;;;11/11	LD	A,$08
;;;11/11	LD	(WAVCNT4),A
;;;11/11;
;;;11/11	CALL	STATINC
;;;11/11;;	RET
;;;11/11	XOR	A
;;;11/11BDIN190
;;;11/11	PUSH	AF
;;;11/11;
;;;11/11	CP	$80
;;;11/11	JR	NC,BDIN198
;;;11/11;
;;;11/11	PUSH	AF
;;;11/11;
;;;11/11	AND	$1F
;;;11/11	JR	NZ,BDIN191
;;;11/11;
;;;11/11	LD	A,(SBHR)
;;;11/11	CP	$02
;;;11/11	JR	Z,BDIN191
;;;11/11;
;;;11/11	LD	A,$03
;;;11/11	LD	(SBCNT),A
;;;11/11	PUSH	BC
;;;11/11	CALL	FDIN
;;;11/11	POP	BC
;;;11/11BDIN191
;;;11/11	POP	AF
;;;11/11	AND	$0F
;;;11/11	JR	NZ,BDIN198
;;;11/11;
;;;11/11	LD	HL,ENWRK1
;;;11/11	ADD	HL,BC
;;;11/11	LD	A,(HL)
;;;11/11	CP	$04
;;;11/11	JR	Z,BDIN198
;;;11/11;;
;;;11/11;	CP	$01
;;;11/11;	JR	NZ,BDIN192
;;;11/11;;
;;;11/11;	LD	A,$90
;;;11/11;	LD	(BGPFG),A
;;;11/11;	LD	(OBP1FG),A
;;;11/11;	LD	A,$08
;;;11/11;	LD	(OBP0FG),A
;;;11/11;;
;;;11/11;BDIN192
;;;11/11	LD	A,(VRAMD)
;;;11/11	LD	E,A
;;;11/11	LD	D,B
;;;11/11	ADD	A,$5
;;;11/11	LD	(VRAMD),A
;;;11/11	LD	HL,VRAMD+1
;;;11/11	ADD	HL,DE
;;;11/11	PUSH	HL
;;;11/11;
;;;11/11	LD	HL,ENWRK1
;;;11/11	ADD	HL,BC
;;;11/11	LD	A,(HL)
;;;11/11	INC	(HL)
;;;11/11	SLA	A
;;;11/11	LD	E,A
;;;11/11	LD	D,B
;;;11/11	LD	HL,BDTRAD
;;;11/11	ADD	HL,DE
;;;11/11	PUSH	HL
;;;11/11	POP	DE
;;;11/11	POP	HL
;;;11/11	LD	A,(DE)
;;;11/11	INC	DE
;;;11/11	LD	(HLI),A
;;;11/11	LD	A,(DE)
;;;11/11	LD	(HLI),A
;;;11/11;
;;;11/11	LD	A,$01
;;;11/11	LD	(HLI),A
;;;11/11;
;;;11/11	LD	A,$64
;;;11/11	LD	(HLI),A
;;;11/11;
;;;11/11	LD	A,$65
;;;11/11	LD	(HLI),A
;;;11/11;
;;;11/11	LD	(HL),B
;;;11/11BDIN198
;;;11/11	POP	AF
;;;11/11	LD	E,$00
;;;11/11	CP	$80
;;;11/11	JR	C,BDIN1A0
;;;11/11	INC	E
;;;11/11BDIN1A0
;;;11/11	LD	A,E
;;;11/11;------------------------------------
;;;11/11BEDLINKCS
;;;11/11	LD	(ENCHPT2),A	
;;;11/11	LD	A,$58
;;;11/11	LD	(ENSVXL),A
;;;11/11	LD	(PLXPSL),A
;;;11/11	LD	A,$44
;;;11/11	LD	(ENDSYP),A
;;;11/11	LD	(PLYPSL),A
;;;11/11;
;;;11/11	LD	A,$02
;;;11/11	LD	(PLSTOP),A
;;;11/11	LD	A,$FF
;;;11/11	LD	(PLCHPT),A
;;;11/11;
;;;11/11	LD	DE,BLINKCD
;;;11/11	CALL	EN2CST
;;;11/11;
;;;11/11	CALL	ENPSSV
;;;11/11;
;;;11/11BDIN1C0
;;;11/11	RET
;;;11/11;-------------------------------------
;;;11/11BDIN200
;;;11/11	XOR	A
;;;11/11	CALL	BEDLINKCS
;;;11/11;
;;;11/11	LD	A,(WAVFLG)
;;;11/11	AND	A
;;;11/11	JR	NZ,BDIN210
;;;11/11;
;;;11/11;	CALL	LDTIM0
;;;11/11;	JR	NZ,BDIN210
;;;11/11;;
;;;11/11;	LD	(HL),$08
;;;11/11;;
;;;11/11;	CALL	FDIN
;;;11/11;;
;;;11/11;	LD	A,(SBHR)
;;;11/11;	CP	$04
;;;11/11;	JR	NZ,BDIN210
;;;11/11;
;;;11/11	XOR	A
;;;11/11	LD	(PLCHPT),A
;;;11/11;
;;;11/11	LD	HL,NXRMMD
;;;11/11	LD	A,DNJ
;;;11/11	LD	(HLI),A
;;;11/11	LD	A,(DNJNNO)
;;;11/11	LD	(HLI),A
;;;11/11	LD	A,$CE
;;;11/11	LD	(HLI),A
;;;11/11	LD	A,$50
;;;11/11	LD	(HLI),A
;;;11/11	LD	A,$7C
;;;11/11	LD	(HL),A
;;;11/11;
;;;11/11	CALL	E4CLER
;;;11/11;;	CALL	STATINC
;;;11/11	JP	NXGOTO3
;;;11/11;
;;;11/11BDIN210
;;;11/11	RET
;;;11/11;-------------------------------------
;;;11/11;BDIN300
;;;11/11;	XOR	A
;;;11/11;	CALL	BEDLINKCS
;;;11/11;
;;;11/11;	RET
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%   �d���̐�				%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
IZUMICD
;0
	DB	$F0,$FC,$50,$01
	DB	$F0,$04,$52,$01
	DB	$F0,$0C,$54,$01
	DB	$00,$FC,$56,$01
	DB	$00,$04,$58,$01
	DB	$00,$0C,$5A,$01
;1
IZUMICD2
	DB	$F0,$FC,$50,$01
	DB	$F0,$04,$52,$01
	DB	$F0,$0C,$54,$01
	DB	$00,$FC,$5C,$01
	DB	$00,$04,$58,$01
	DB	$00,$0C,$5E,$01
;----------------------------------------
IZHARTCD
	DB	$A8,$14
IZHXAD
	DB	$01,$FF
IZHXLM
	DB	$18,$E8
;----------------------------------------
IZUMIMV
		LD	A,(DJFLAG)
		AND	A
		JR	Z,YOUSEI_PASS
		LD	A,(DNJNNO)
		CP	NEWDJ		;���̃_���W�����H
		JR	NZ,YOUSEI_PASS	;	YES --> YOUSEI_PASS
		LD	A,:IZUMIMV
		jp	FUKU_YOUSEI_SUB
;;;;;;;;		CALL	FUKU_YOUSEI_SUB
;;;;;;;;		RET
YOUSEI_PASS
;
	LD	HL,ENWRK2
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JP	Z,IZM0000
;- - - Heart spining - - -
	LD	HL,ENMODE
	LD	A,(BSINDX)
	LD	E,A
	LD	D,B
	ADD	HL,DE
	LD	A,(HL)
	AND	A
	JP	Z,E4CLER
;
	LD	A,(BSINDX2)
	LD	(ENCHPT2),A
;
	LD	DE,IZHARTCD
	CALL	EN1CST
;
	LD	A,(FRCNT)
	AND	$01
	JR	NZ,IZH200
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	E,(HL)
	LD	D,B
	LD	HL,IZHXAD
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,BC
	ADD	A,(HL)
	LD	(HL),A
	LD	HL,IZHXLM
	ADD	HL,DE
	CP	(HL)
	JR	NZ,IZH100
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	XOR	$01
	LD	(HL),A
IZH100
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	E,(HL)
	LD	D,B
	LD	HL,IZHXAD
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENYSPD
	ADD	HL,BC
	ADD	A,(HL)
	LD	(HL),A
	LD	HL,IZHXLM
	ADD	HL,DE
	CP	(HL)
	JR	NZ,IZH200
;
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	A,(HL)
	XOR	$01
	LD	(HL),A
IZH200
		jp	E4MVCL
;;;11/11	CALL	E4MVCL
;;;11/11	RET
;==========================================
IZM0000
	LD	HL,IZUMICD
;
	LD	A,(FRCNT)
	AND	$08
	JR	Z,IZC010
;
	LD	HL,IZUMICD2
IZC010
	LD	C,$06
	CALL	ENOMST
;
	LD	A,$06
	CALL	NXOMSBL
;
	CALL	SADWSTL
;
	LD	E,$FE
	LD	HL,ENCONT
	ADD	HL,BC
	INC	(HL)
	LD	A,(HL)
	AND	%01000000
	JR	Z,IZM0001
;
	LD	E,$02
IZM0001
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),E
;
	CALL	E4ZCLC
;
	CALL	E4STCK
;
	LD	A,(ENSTAT2)
	RST	0
	DW	IZM1000
	DW	IZM2000
	DW	IZM3000
;--------------------------------
IZM1000
	XOR	A
	LD	(BSINDX2),A
	LD	A,C
	LD	(BSINDX),A
;
	LD	A,(PLXPSL)
	SUB	$50
	ADD	A,$08
	CP	$10
		ret	NC
;;;11/11	JR	NC,IZM1010
;
	LD	A,(PLYPSL)
	SUB	$58
	ADD	A,$08
	CP	$10
		ret	NC
;;;11/11	JR	NC,IZM1010
;
	CALL	STATINC
;
;;	CALL	LDTIM0
;;	LD	(HL),$FF
;	LD	HL,ENTIM3
;	ADD	HL,BC
	CALL	LDTIM3
	LD	(HL),$48
;
	LD	A,$24
		jp	MSGCHK
;;;11/11	CALL	MSGCHK
;;;11/11IZM1010
;;;11/11	RET
;=================================================
IZM2000
;;	CALL	LDTIM0
;	LD	HL,ENTIM3
;	ADD	HL,BC
;	LD	A,(HL)
;	AND	A
	CALL	LDTIM3
	JR	NZ,IZM2010
;
	CALL	LDTIM0
	LD	(HL),$48
;
	CALL	STATINC
;
	LD	A,$26
	LD	(SOUND1),A	;(S)
	RET
IZM2010
	LD	A,$02
	LD	(PLSTOP),A
;
	LD	A,$1A
	LD	(SOUND1),A	;(S)
;
	CALL	E4STCK
;
;;	CALL	LDTIM0
;;	AND	$0F
;;	JR	NZ,IZM2020
;
	LD	HL,ENTIM2
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	NZ,IZM2002
;
	LD	(HL),$01
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	CP	04
	JR	C,IZM2002
;
	LD	A,$04
	LD	(HARTUP),A
IZM2002
;	LD	HL,ENTIM1
;	ADD	HL,BC
;	LD	A,(HL)
;	AND	A
	CALL	LDTIM1
	JR	NZ,IZM2020
;
	LD	(HL),$13
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	CP	10
	JR	Z,IZM2020
;
	INC	(HL)
;
;;	LD	A,$06
;;	LD	(SOUND2),A	;(S)
;
	LD	A,IZUMI
	CALL	ENIDSHL
	JR	C,IZM2020
;
	LD	HL,ENWRK2
	ADD	HL,DE
	LD	(HL),$01
;
	LD	A,(WORK0)
	LD	HL,ENXPSL
	ADD	HL,DE
	ADD	A,$00
	LD	(HL),A
;
	LD	A,(WORK1)
	LD	HL,ENYPSL
	ADD	HL,DE
	SUB	$0E
	LD	(HL),A
;
	LD	HL,ENXSPD
	ADD	HL,DE
	LD	(HL),$E8
IZM2020
	RET
;=================================================
IZM3000
	CALL	LDTIM0
	JP	Z,E4CLER
;
	LD	A,(FRCNT)
	AND	$02
	LD	A,$00
	JR	Z,IZM3010
;
	LD	A,$FF
IZM3010	
	LD	(BSINDX2),A
	CALL	ENPTST
;
	LD	A,$02
	LD	(PLSTOP),A
	RET
;
;=================================================
;=================================================
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%  �n�g�ۂ���			   %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
HATO0CD
;L
	DB	$68,$01,$6A,$01 ;0
	DB	$64,$01,$66,$01 ;1
	DB	$6C,$01,$6E,$01 ;2
;R
	DB	$6A,$21,$68,$21
	DB	$66,$21,$64,$21
	DB	$6E,$21,$6C,$21
;
HATO0CD2
;L
	DB	$68,$00,$6A,$00 ;0
	DB	$64,$00,$66,$00 ;1
	DB	$6C,$00,$6E,$00 ;2
;R
	DB	$6A,$20,$68,$20
	DB	$66,$20,$64,$20
	DB	$6E,$20,$6C,$20
;- - - - - - - - - - - - - - - - - - -
HATO0MV
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	A,(ENCHPT2)
	ADD	A,(HL)
	LD	(ENCHPT2),A
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,HAT0000
;
	AND	%10000000
	LD	A,$00
	JR	NZ,HAT00F0
	LD	A,$03
HAT00F0
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	(HL),A
HAT0000
	LD	DE,HATO0CD
;
	LD	A,(GRNDPT)
	CP	$0D9		;���M�̃N���X�e�B�[�k�̉ƁH
	JR	NZ,HAT0005	;	NO --> HAT0005
	LD	DE,HATO0CD2
HAT0005
	CALL	EN2CST
;
	CALL	E4STCK
;
	LD	A,(DJFLAG)
	AND	A
	JP	Z,HAT1000
;
	CALL	E4ZCLC
	LD	HL,ENZSPD
	ADD	HL,BC
	DEC	(HL)
;
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	AND	%10000000
	LD	(ENHELP),A
	JR	Z,HAT0010
;
	LD	(HL),B
;
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	(HL),B
HAT0010
	LD	A,(ENSTAT2)
	RST	00
	DW	HTSTOP
	DW	HTWALK
	DW	HTFLY 
;------------------------------------
HTWKXS
	DB	$02,$06,$08,$06
	DB	$FE,$FA,$F8,$FA
;------------------------------------
HTSTOP
	CALL	HTFLYCK
;
	XOR	A
	CALL	ENPTST
	CALL	LDTIM0
	JR	NZ,HTS010
;
	CALL	RNDSUB
	AND	$07
	LD	E,A
	LD	D,B
	LD	HL,HTWKXS
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
;
	LD	A,E
	AND	$04
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	(HL),A
;
	CALL	RNDSUB
	AND	$07
	LD	E,A
	LD	HL,HTWKXS
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),A
;
	CALL	LDTIM0
	CALL	RNDSUB
	AND	$1F
	ADD	A,$20
	LD	(HL),A
;
	CALL	STATINC
HTS010
	JP	HTPTST
;------------------------------------
HTWALK
	CALL	HTFLYCK
;
	CALL	E4MVCL
	CALL	ENBGCKL
;
	LD	A,(ENHELP)
	AND	A
	JR	Z,HTW020
;
	CALL	LDTIM0
	JR	NZ,HTW010
;
	LD	(HL),$30
	CALL	STATINC
	LD	(HL),B
	RET
HTW010
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),$08
;
	LD	HL,ENZPSL
	ADD	HL,BC
	INC	(HL)
HTW020
HTPTST
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	AND	$01
		jp	ENPTST
;;;11/11	CALL	ENPTST
;;;11/11	RET
;-------------------------------------
HTFLY
	CALL	E4MVCL
	CALL	ENBGCKL
;
	LD	A,(FRCNT)
	AND	$01
	JR	NZ,HTFL10
;
	LD	HL,ENZSPD
	ADD	HL,BC
	INC	(HL)
HTFL10
	LD	A,(ENHELP)
	AND	A
	JR	Z,HTFL20
;
	CALL	STATINC
	LD	(HL),B
HTFL20
	LD	A,(FRCNT)
	RRA
;;	RRA
	AND	$02
	CALL	ENPTST
;
;	LD	A,(FRCNT)
;	AND	$0F
;	JR	NZ,HTFL30
;;
;	LD	A,$05
;	LD	(SOUND3),A	;(S)
;HTFL30
	RET
;-------------------------------------
HTFLYCK
	LD	A,(PCUTFG)
	CP	$02
	JR	NZ,HTFC90
;
	CALL	E4XCHK
	ADD	A,$18
	CP	$30
	JR	NC,HTFC90
;
	CALL	E4YCHK
	ADD	A,$18
	CP	$30
	JR	NC,HTFC90
;
	CALL	STATINC
	LD	(HL),$02
;
	LD	A,$10
	CALL	PSERCH2L
;
	LD	A,(WORK0)
	CPL
	INC	A
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),A
;
	LD	A,(WORK1)
	CPL
	INC	A
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),$0C
	POP	AF
HTFC90
	RET
;===========================
HAT1000
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	Porus voice		   %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
PORUSCD
	DB	$70,$01,$70,$21
	DB	$72,$01,$72,$21
PORUSMV
	LD	A,(OKARFG)
	CP	$01
	JR	NZ,PRCK10
;
	LD	A,(ONPUFG)
	AND	%00000100
	JR	Z,PRCK10
;
	LD	A,(FUESLPT)
	AND	A
	JR	NZ,PRCK10
;
	LD	A,(ENMODE2)
	CP	EFAIL
	JR	Z,PRCK10
;
	LD	HL,ENTIM4
	ADD	HL,BC
	LD	(HL),$1F
	LD	HL,ENMODE
	ADD	HL,BC
	LD	(HL),EFAIL
;
	LD	HL,ENMOD0
	ADD	HL,BC
	LD	(HL),$04
;
	LD	HL,SOUND3	;(S)
	LD	(HL),$13
	RET
;--------------------------------------------
PRCK10
	LD	DE,PORUSCD
	CALL	EN2CST
;
	CALL	E4STCK
;
	CALL	E4HNSB
;
	CALL	E4MVCL
	LD	HL,ENHNFG
	ADD	HL,BC
	LD	(HL),$01
	PUSH	HL
	CALL	ENBGCKL
	POP	HL
	LD	(HL),B
;
	CALL	CREPKEL
;
	LD	A,(ENSTAT2)
	AND	$1
	RST	0
	DW	PRSTOP
	DW	PRJUMP
;------------------------------------------
PRJPXS
	DB	$08,$08,$F8,$F8,$04,$FC
PRJPYS
	DB	$FC,$04,$FC,$04,$08,$F8
PRSTOP
	LD	HL,ENCHPT
	ADD	HL,BC
;;	LD	A,$01
	LD	(HL),$01 ;A
;
	CALL	LDTIM0
		ret	NZ
;;;11/11	JR	NZ,PRST90
;
	CALL	STATINC
;
	CALL	RNDSUB
	AND	$7
	ADD	A,$10
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),A
;
	CALL	RNDSUB
	AND	$07
	CP	$6
	JR	C,PRST50
;
	LD	A,$0A
	CALL	PSERCHL
	JR	PRST60
PRST50	
	LD	E,A
	LD	D,B
;
	LD	HL,PRJPXS
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A	
;
	LD	HL,PRJPYS
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),A	
;
PRST60	
;	LD	HL,ENCHPT
;	ADD	HL,BC
;	XOR	A
;	LD	(HL),A
	XOR	A
		jp	ENPTST
;;;11/11	CALL	ENPTST
;;;11/11PRST90
;;;11/11	RET
;------------------------------------------
PRJUMP
;;	CALL	E4MVCL
;;	CALL	ENBGCKL
	CALL	E4ZCLC
	LD	HL,ENZSPD
	ADD	HL,BC
	DEC	(HL)
;
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	AND	%10000000
		ret	Z
;;;11/11	JR	Z,PRJ010
;
	XOR	A
	LD	(HL),A
;
	CALL	STATINC
;
	CALL	LDTIM0
;;	LD	A,$20
	CALL	RNDSUB
	AND	$0F
	ADD	A,$18
	LD	(HL),A
;
		jp	ENSDCL
;;;11/11	CALL	ENSDCL
;;;11/11PRJ010
;;;11/11	RET

;=================================================
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	���@�̕��H						%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
KUZUHCD
	DB	$60,$07,$62,$07
	DB	$64,$07,$66,$07
;- - - - - - - - - - - - - - - - - - - - - -
KUZUHMV
	LD	DE,KUZUHCD
	CALL	EN2CST
;
	CALL	E4STCK
	CALL	E4HNSB
;
;;	CALL	CREPKE
;
	XOR	A
	LD	(ENHELP),A
;
	CALL	CRKNENL
	CALL	CRENPSL
	JR	NC,KZH000
;
	LD	A,$01
	LD	(ENHELP),A
;
	LD	A,(ENSTAT2)
	CP	$02
	JR	NC,KZH000
;
	CALL	PLPSRV
KZH000
	CALL	E4MVCL
;	CALL	E4ZCLC
;	LD	HL,ENZSPD
;	ADD	HL,BC
;	DEC	(HL)
;	DEC	(HL)
;	LD	HL,ENZPSL
;	ADD	HL,BC
;	LD	A,(HL)
;	AND	%10000000
;	LD	(ENHELP2),A
;	JR	Z,KZH001
;;
;	LD	(HL),B
;;
;	LD	HL,ENZSPD
;	ADD	HL,BC
;	LD	(HL),B
;KZH001
	CALL	ENBGCKL
;-------------------------------------------
	LD	A,(ENSTAT2)
	RST	00
	DW	SBA1000
	DW	SBA2000
	DW	SBA3000
;---------------------------------------
SBA1000
	LD	A,(ENHELP)
	AND	A
	JR	Z,SBA1010
;
;	CALL	E4XYCK
;	LD	A,E
;	CP	$03
;	JR	NZ,SBA1010
;
	CALL	STATINC
;
	CALL	LDTIM0
	LD	(HL),$30
;
	LD	HL,ENFLSH
	ADD	HL,BC
	LD	(HL),$18
SBA1010
	RET
;---------------------------------------
SBA2000
	CALL	LDTIM0
	JR	NZ,SBA2030
;
	CALL	STATINC
;
	LD	HL,ENMOD0
	ADD	HL,BC
	RES	7,(HL)
;
	LD	HL,ENMOD1
	ADD	HL,BC
	RES	7,(HL)
;
	LD	HL,ENMOD3
	ADD	HL,BC
	RES	6,(HL)
;
		jp	ENSDCL
;;;11/11	CALL	ENSDCL
;;;11/11	RET
SBA2030
	LD	E,$08
	AND	$04
	JR	Z,SBA2050
	LD	E,$F8
SBA2050
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),E
	RET	
;---------------------------------------
SBAYSD
	DB	$F8,$FA
SBAXSD
	DB	$00,$06,$08,$06,$00,$FA,$F8,$FA
;- - - - - - - - - - - - - - - -
SBA3000
;	LD	A,(ENHELP2)
;	AND	A
;	JR	Z,SBA3010
;;
;	LD	HL,ENZSPD
;	ADD	HL,BC
;	LD	(HL),$10
;
	CALL	LDTIM0
	JR	NZ,SBA3010
;
	CALL	RNDSUB
	AND	$3F
	ADD	A,$20
	LD	(HL),A
;
	AND	$07
	LD	E,A
	LD	D,B
	LD	HL,SBAXSD
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
	LD	HL,SBAYSD
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),A
SBA3010
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	RRA
	AND	$01
		jp	ENPTST
;;;11/11	CALL	ENPTST
;;;11/11	RET
;-------------------------------------------
;-------------------------------------------
;-------------------------------------------
;-------------------------------------------
;-------------------------------------------
;-------------------------------------------
;-------------------------------------------
;	LD	HL,ENWRK0
;	ADD	HL,BC
;	LD	A,(HL)
;	AND	A
;	JR	NZ,AMOVE
;;	
;	CALL	E4XCHK
;	LD	A,D
;	ADD	A,$1E
;	CP	$3C
;	JR	NC,IRAN
;;
;	CALL	E4YCHK
;	LD	A,D
;	ADD	A,$1E
;	CP	$3C
;	JR	C,FLGIN
;IRAN
;	RET
;;
;FLGIN
;;;	LD	A,$01
;	LD	HL,ENWRK0
;	ADD	HL,BC
;	LD	(HL),$01 ;A
;;
;;;	LD	HL,ENTIM0
;;;	ADD	HL,BC
;	CALL	LDTIM0
;;;;	LD	A,$50
;	LD	(HL),$50 ;A
;	RET
;;
;AMOVE	
;	CP	$01
;	JR	NZ,ATTACK
;;
;;;	LD	HL,ENTIM0
;;;	ADD	HL,BC
;;;	LD	A,(HL)
;	CALL	LDTIM0
;;;	AND	A
;	JR	NZ,BULBUL
;;
;;;;	LD	A,$02
;	LD	HL,ENWRK0
;	ADD	HL,BC
;	LD	(HL),$02 ;A
;;
;	LD	HL,ENMOD0
;	ADD	HL,BC
;	LD	A,(HL)
;	AND	%01111111	; Damege on !
;	LD	(HL),A
;;
;	LD	HL,ENMOD1
;	ADD	HL,BC
;	LD	A,(HL)
;	AND	%01111111	; Damege on !
;	LD	(HL),A
;BULBUL 
;;;	LD	HL,ENTIM0
;;;	ADD	HL,BC
;;;	LD	A,(HL)
;	CALL	LDTIM0
;	LD	HL,ENXSPD
;	ADD	HL,BC
;	AND	%00000100
;	JR	NZ,LEFT
;;
;;;	LD	A,$08
;	LD	(HL),$08 ;A
;	RET
;LEFT
;;;	LD	A,$F8
;	LD	(HL),$F8 ;A
;	RET
;ATTACK
;;-------------------------------------------
;	CALL    E4ZCLC
;	LD	HL,ENZSPD
;	ADD	HL,BC
;	DEC	(HL)
;	DEC	(HL)
;;
;	LD	HL,ENZPSL
;	ADD	HL,BC
;	LD	A,(HL)
;	BIT	7,A
;	JR	Z,OWARI
;;
;	XOR	A
;	INC	A
;	LD	(HL),A
;	LD	A,$10
;	LD	HL,ENZSPD
;	ADD	HL,BC
;	LD	(HL),A
;	LD	A,$08
;	CALL	PSERCHL
;OWARI
;	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�g���b�v						%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
TRAP0CD
	DB	$50,$02,$50,$22
;
TPATXS
	DB	$20,$E0,$00,$00
TPRTXS
	DB	$F8,$08,$00,$00
TPATYS
	DB	$00,$00,$E0,$20
TPRTYS
	DB	$00,$00,$08,$F8
;- - - - - - - - - - - - - - - - - - - -
;�A��p�k�����x���e�W����
;- - - - - - - - - - - - - - - - - - - -
TP0XYT
	DB	$30,$20
;
;
TRAP0MV
	LD	A,$01
	LD	(ENBGRV),A	;BG check don't revise
;
	LD	DE,TRAP0CD
	CALL	EN2CST
	CALL	E4STCK
	CALL	ENHNCL
	CALL	CREPKEL
;
	LD	A,(ENSTAT2)
	RST	00
	DW	TPINIT
	DW	TPSERCH
	DW	TPATACK
	DW	TPRETRN
;------------------------------------------
TPINIT
	LD	A,(ENSVXL)
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	(HL),A
;
	LD	A,(ENDSYP)
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	(HL),A
	JP	STATINC
;-----------------------------------------
TPSERCH
	CALL	LDTIM0
	JR	NZ,TPSH90
;
	CALL	ENSDCL
;
	CALL	E4YCHK
	ADD	A,$12
	CP	$24
	JR	NC,TPSH20
;
	CALL	E4XCHK
	LD	D,B
	LD	HL,TPATXS
	ADD	HL,DE
	LD	A,(HL)
;
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	(HL),E
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
;
	LD	E,$18		;;;; �������X�s�[�h�^�C���i���j
	JR	TPSH60
;
TPSH20
	CALL	E4XCHK
	ADD	A,$12
	CP	$24
	JR	NC,TPSH90
;
	CALL	E4YCHK
	LD	D,B
	LD	HL,TPATYS
	ADD	HL,DE
	LD	A,(HL)
;
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	(HL),E
;
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),A
;
	LD	E,$10		;;;;;; �c�����X�s�[�h�^�C���i���j
TPSH60
	CALL	LDTIM0
	LD	(HL),E
;
	CALL	ENBGCKL
	LD	HL,ENCBFG
	ADD	HL,BC
	LD	A,(HL)
	AND	$0F
	JR	Z,TPSHA0
;
	CALL	LDTIM0
	LD	(HL),B
TPSH90
	RET
TPSHA0
	LD	A,$0A
	LD	(SOUND3),A	;(S)
;
		jp	STATINC
;;;11/11	CALL	STATINC
;;;11/11	RET
;=======================================
TPATACK
	CALL	E4MVCL
;
	CALL	LDTIM0
	JR	NZ,TPAT10
TPAT08
	LD	A,$07
	LD	(SOUND1),A	;(S)
;
	CALL	LDTIM0
	LD	(HL),$20
;
	JP  	STATINC
TPAT10
	CALL	ENBGCKL
	LD	HL,ENCBFG
	ADD	HL,BC
	LD	A,(HL)
	AND	$0F
	JR	NZ,TPAT08
	RET
;=======================================
TPRETRN
	CALL	LDTIM0
		ret	NZ
;;;11/11	JR	NZ,TPR090
;
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	E,(HL)
	LD	D,B
	LD	HL,TPRTXS
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
	LD	HL,TPRTYS
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),A
;
	CALL	E4MVCL
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENXPSL
	ADD	HL,BC
	CP	(HL)
		ret	NZ
;;;11/11	JR	NZ,TPR090
;
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENYPSL
	ADD	HL,BC
	CP	(HL)
		ret	NZ
;;;11/11	JR	NZ,TPR090
;
	CALL	LDTIM0
	LD	(HL),$20
;
	CALL	STATINC
	LD	(HL),$01
TPR090
	RET
;
;===============================================
;=					       =
;===============================================
MAGE0CD
	DB	$6E,$00,$6E,$20
	DB	$66,$20,$64,$20
	DB	$64,$00,$66,$00
	DB	$62,$00,$62,$20
	DB	$60,$00,$60,$20
MTSXAD
	DB	$08,$F8,$00,$00
MTSYAD
	DB	$00,$00,$F8,$08
MTSXSD
	DB	$20,$E0,$00,$00
MTSYSD
	DB	$00,$00,$E0,$20
;- - - - - - - - - - - - - - - - - - - - - - 
MAGE0MV
	LD	DE,MAGE0CD
	CALL	EN2CST
;
	CALL	E4STCK
	CALL	E4HNSB
	CALL	E4MVCL
	CALL	ENBGCKL
;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
MAGE0MAIN
	LD	HL,ENSTAT
	ADD	HL,BC
	LD	A,(HL)
;
	RST	0
	DW	MA0CLER		;��������[��
	DW	TELPORT		;���Œ�
	DW	MA0STOP		;�o���I
	DW	MA0BEEM		;�\�j�b�N�u�`������!!!!!!
;
;*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*
MA0CLER
	LD	HL,ENTIM0
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	NZ,MA0C090
;
	CALL	STATINC
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	(HL),$01
;
	CALL	LDTIM1
	LD	(HL),$20
;
MA0C090
	JR	MGCHFF
;
TELPORT
	CALL	LDTIM1
	JR	NZ,TELP020
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
;
	LD	HL,ENSTAT
	ADD	HL,BC
	ADD	A,(HL)
	LD	(HL),A
;
	LD	HL,ENTIM0
	ADD	HL,BC
	LD	(HL),$30
		jp	MGMODSET
;;;11/11	CALL	MGMODSET
;;;11/11	RET
;
TELP020
	LD	A,(HL)
	AND	$02
	JR	NZ,TELP090
;
MGCHFF
	LD	A,$FF
	CALL	ENPTST
		jp	MGMODSET
;;;11/11	CALL	MGMODSET
;;;11/11	RET
;
TELP090
	XOR	A
	CALL	ENPTST
;
		jp	MGMODSET
;;;11/11	CALL	MGMODSET
;;;11/11	RET
;
MA0STOP
	XOR	A
	CALL	ENPTST
;
	CALL	LDTIM1
	CP	$02
	JR	NC,MA0S090
;
	LD	A,(HL)
	CP	$01
	JR	Z,MA0ATTC
;
	LD	(HL),$18
		jp	MGMODSET
;;;11/11	CALL	MGMODSET
;;;11/11;
;;;11/11	RET
;
MA0ATTC
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
;
	LD	HL,ENSTAT
	ADD	HL,BC
	ADD	A,(HL)
	LD	(HL),A
;
	CP	$01
	JR	NZ,MA0S090
;
	CALL	LDTIM1
	LD	(HL),$20
MA0S090
;
		jp	MGMODSET
;;;11/11	CALL	MGMODSET
;;;11/11	RET
;
MA0BEEM
	CALL	CREPKEL
;
	CALL	LDTIM1
	CP	$28
	JR	Z,MA0BATT
;
	CP	$02
	JR	NC,SS0010

	LD	A,(HL)
	CP	$01
	JR	Z,MAMAMA
;
	LD	(HL),$40
;
	CALL	E4XYCK
;
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	(HL),A
;
	INC	A
;
	LD	HL,ENCHPT
	ADD	HL,BC
	LD	(HL),A
;
	RET
;
MAMAMA
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	(HL),$FF
;
	LD	HL,ENSTAT
	ADD	HL,BC
	DEC	(HL)
	RET
;
MA0BATT
	LD	A,SONIC
	CALL	ENIDSHL
	JR	C,SS0010
;
	PUSH	BC
;
	LD	A,(WORK2)
	LD	HL,ENMUKI
	ADD	HL,DE
	LD	(HL),A
;
	LD	C,A
;
	LD	HL,MTSXAD
	ADD	HL,BC
;
	LD	A,(WORK0)
	ADD	A,(HL)
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,MTSYAD
	ADD	HL,BC
;
	LD	A,(WORK1)
	ADD	A,(HL)
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,MTSXSD
	ADD	HL,BC
;
	LD 	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,MTSYSD
	ADD	HL,BC
;
	LD 	A,(HL)
	LD	HL,ENYSPD
	ADD	HL,DE
	LD	(HL),A
;
	POP	BC
	LD 	A,(WORK2)
	LD	HL,ENCHPT
	ADD	HL,DE
	LD	(HL),A
SS0010
	LD	HL,ENMOD0
	ADD	HL,BC
	LD	A,%00000010
	LD	(HL),A
	RET
;
;===============================================
;=					       =
;===============================================
MGMODSET
	LD	HL,ENMOD0
	ADD	HL,BC
;;;;;;	LD	A,%01000010
;;;;;;	          %00000010 ;MAGE0
	LD	(HL),%01000010
	RET
;==================================
GKFLSHCD
;0
	DB	$00,$D8,$60,$00
	DB	$00,$E0,$60,$20
;
	DB	$00,$28,$60,$00
	DB	$00,$30,$60,$20
;
	DB	$D8,$00,$62,$00
	DB	$D8,$08,$62,$20
;
	DB	$28,$00,$62,$00
	DB	$28,$08,$62,$20
;
	DB	$F0,$F0,$6A,$00
	DB	$F0,$F8,$6A,$60
;
	DB	$F0,$10,$6A,$40
	DB	$F0,$18,$6A,$20
;
	DB	$10,$F0,$6A,$40
	DB	$10,$F8,$6A,$20
;
	DB	$10,$10,$6A,$00
	DB	$10,$18,$6A,$60
;1
	DB	$00,$E8,$60,$00
	DB	$00,$F0,$60,$20
;
	DB	$00,$18,$60,$00
	DB	$00,$20,$60,$20
;
	DB	$E8,$00,$62,$00
	DB	$E8,$08,$62,$20
;
	DB	$18,$00,$62,$00
	DB	$18,$08,$62,$20
;
	DB	$F0,$F0,$FF,$00
	DB	$F0,$F8,$FF,$00
;
	DB	$F0,$10,$FF,$00
	DB	$F0,$18,$FF,$00
;
	DB	$10,$F0,$FF,$00
	DB	$10,$F8,$FF,$00
;
	DB	$10,$10,$FF,$00
	DB	$10,$18,$FF,$00
;2
	DB	$E0,$E0,$68,$00
	DB	$E0,$E8,$68,$60
;
	DB	$20,$E0,$68,$40
	DB	$20,$E8,$68,$20
;
	DB	$E0,$20,$68,$40
	DB	$E0,$28,$68,$20
;
	DB	$20,$20,$68,$00
	DB	$20,$28,$68,$60
;--
	DB	$00,$F0,$64,$00
	DB	$00,$F8,$64,$20
;
	DB	$F0,$00,$66,$00
	DB	$F0,$08,$66,$20
;
	DB	$00,$10,$64,$00
	DB	$00,$18,$64,$20
;
	DB	$10,$00,$66,$00
	DB	$10,$08,$66,$20
;3
	DB	$E8,$E8,$68,$00
	DB	$E8,$F0,$68,$60
;
	DB	$18,$E8,$68,$40
	DB	$18,$F0,$68,$20
;
	DB	$E8,$18,$68,$40
	DB	$E8,$20,$68,$20
;
	DB	$18,$18,$68,$00
	DB	$18,$20,$68,$60
;--
	DB	$00,$F0,$FF,$00
	DB	$00,$F8,$FF,$20
;
	DB	$F0,$00,$FF,$00
	DB	$F0,$08,$FF,$20
;
	DB	$00,$10,$FF,$00
	DB	$00,$18,$FF,$20
;
	DB	$10,$00,$FF,$00
	DB	$10,$08,$FF,$20
;=========================================
GKFLSHL
	CALL	E4STCK
;
	LD	A,(FRCNT)
	RRA	
	RRA	
	RRA	
	AND	%00000011
	LD	E,A
	LD	D,B
	SLA	E
	RL	D
	SLA	E
	RL	D
	SLA	E
	RL	D
	SLA	E
	RL	D
	SLA	E
	RL	D
	SLA	E
	RL	D
	LD	HL,GKFLSHCD
	ADD	HL,DE
;
	LD	C,$10
	CALL	ENOMST
;
	LD	A,$10
		jp	NXOMSBL
;;;11/11	CALL	NXOMSBL
;;;11/11	RET
;
;========================================================================
;=	�o�u��								=
;========================================================================
BABULCD
	DB	$5A,$00,$5A,$20
	DB	$5A,$14,$5A,$34
;
BABULMV
	LD	DE,BABULCD
	CALL	EN2CST
	CALL	E4STCK
	CALL	E4HNSB
	CALL	CREPKEL
	CALL	E4MVCL
	CALL	ENBGCKL
;--------------------------------
BABMAIN
	LD	HL,ENCBFG
	ADD	HL,BC
	LD	A,(HL)
	AND	$03
	JR	NZ,BXTURN
;
	LD	A,(HL)
	AND	$0C
	JR	NZ,BYTURN
;
	JR	BAMOVE
;
BXTURN
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	A,(HL)
	CPL
	INC	A
	LD	(HL),A
	JR	BAMOVE
;	
BYTURN
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	A,(HL)
	CPL
	INC	A
	LD	(HL),A
;
BAMOVE
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	AND	$01
		jp	ENPTST
;;;11/11	CALL	ENPTST
;;;11/11BABFIN		
;;;11/11	RET
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�e�N�^�C�g					%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
TEKTACD
	DB	$58,$02,$58,$22
	DB	$5A,$02,$5A,$22
TKJPXS
	DB	$10,$F0,$10,$F0
TKJPYS
	DB	$10,$10,$F0,$F0
;
TEKTAMV
	LD	DE,TEKTACD
	CALL	EN2CST
	CALL	E4STCK
;
	CALL	E4HNSB
;
	CALL	CREPKEL
;
	CALL	E4MVCL
	CALL	ENBGCKL
;
	LD	HL,ENCBFG
	ADD	HL,BC
	LD	A,(HL)
	AND	%00000011
	JR	Z,TKM010
	CALL	E4XTUR
TKM010
	LD	A,(HL)
	AND	%00001100
	JR	Z,TKM018
	CALL	E4YTUR
TKM018
	LD	A,(ENSTAT2) ;HL)
	AND	A
	JR	NZ,TKM030
;- - Jumping - -
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	AND	%10000000
	JR	Z,TKM020	; on floor ?
;				; yes !
	XOR	A
	LD	(HL),A
	CALL	ENSDCL
;
	LD	HL,ENSTAT
	ADD	HL,BC
	INC	(HL)
;
	CALL	LDTIM0
;
	CALL	RNDSUB
	AND	$3F
	ADD	A,$10
;
	LD	(HL),A
;
	LD	A,$1
		jp	ENPTST
;;;11/11	CALL	ENPTST
;;;11/11	RET
TKM020
	CALL	E4ZCLC
	LD	HL,ENZSPD
	ADD	HL,BC
	DEC	(HL)
	RET
;- - Stopping - -
TKM030
	LD	HL,ENCONT
	ADD	HL,BC
	INC	(HL)
	LD	A,(HL)
	AND	%00010000
	SRL	A
	SRL	A
	SRL	A
	SRL	A
	CALL	ENPTST
;
	AND	A
		ret	NZ
;;;11/11	JR	NZ,TKM060
;
	CALL	LDTIM0
		ret	NZ
;;;11/11	JR	NZ,TKM060
;
	CALL	RNDSUB
	AND	$07
	ADD	A,$10
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),A
;
	CALL	E4ZCLC
;
	CALL	RNDSUB
	AND	$3
	LD	E,A
	LD	D,B ;$0
	LD	HL,TKJPXS
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
	LD	HL,TKJPYS
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),A
;
	CALL	RNDSUB
	AND	%1
	JR	Z,TKM050
;
	LD	A,$14
	CALL	PSERCHL
TKM050
	LD	HL,ENSTAT
	ADD	HL,BC
	XOR	A
	LD	(HL),A
;-------------------------------------------
		jp	ENPTST
;;;11/11	CALL	ENPTST
;;;11/11TKM060
;;;11/11	RET
;------------------------------
E4XTUR
	LD	HL,ENXSPD
	JR	T4SUB
;------------------------------
E4YTUR
	LD	HL,ENXSPD
	ADD	HL,BC
T4SUB
	LD	A,(HL)
	CPL
	INC	A
	SRA	A
	LD	(HL),A
	RET
;------------------------------
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%		�Ăꂳ			%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
TERSACD
	DB	$62,$20,$60,$20	;RIGHT1
	DB	$66,$20,$64,$20	;RIGHT2
	DB	$60,$00,$62,$00	;LEFT1
	DB	$64,$00,$66,$00	;LEFT2
	DB	$68,$00,$68,$20	;PYOPYO1
	DB	$6A,$00,$6A,$20	;PYOPYO2
	DB	$6E,$20,$6C,$20 ;TERPORTR
	DB	$6C,$00,$6E,$00 ;TERPORTL
;
TERSAMV
	LD	DE,TERSACD
	CALL	EN2CST
;
	CALL	E4STCK
	CALL	E4HNSB
;
	CALL	E4MVCL
;
	CALL	E4GAWY
;--------------------------------
TRSAMAIN
;
	LD	A,(ENSTAT2)
	RST	0
	DW	TEATCK
	DW	TEEXIT
;
;================================
TEATCK
	LD	A,(TOURCT)	;���U�ɉ΂��������H
	AND	A
	JP	NZ,TENINC
;
	CALL	LDTIM0
	JR	NZ,TETENOW
;
	CALL	LDTIM1
	JR	NZ,TETE010
;
	LD	A,(PCUTFG)	;���͂ӂ������H
	CP	$03
	JR	Z,TTELE
;
	CALL	RNDSUB		;�e�e���T�ʈړ��v�Z���@
	XOR	C
	AND	$07
	ADD	A,$06
;
	CALL	PSERCH2L
	LD	A,(WORK0)
	LD	HL,ENYSPD
	CALL	RRRIRA
;
	LD	A,(WORK1)
	LD	HL,ENXSPD
	CALL	RRRIRA
;
	CALL	CRENPLL
;
	JR	TEMOVE
;
TTELE
	CALL	E4XCHK		;���a�Q�S���Ō����ӂ�ꂽ���ǂ���
	ADD	A,$24		;�̃`�F�b�N
	CP	$48
	JR	NC,TEMOVE
;
	CALL	E4YCHK
	ADD	A,$24
	CP	$48
	JR	NC,TEMOVE
;
	CALL	LDTIM0
	LD	(HL),$20
;
TETENOW
	CALL	ENSDCL ;TEXYCLR
	CALL	TERTPRT
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	AND	A
		ret	Z
;;;11/11	JR	Z,TEREEE
;
	CALL	TEWARP
;
TETE010
	CALL	ENSDCL ;TEXYCLR
		jp	TERTPRT
;;;11/11	CALL	TERTPRT
;;;11/11	RET
;
TEMOVE
	CALL	E4XCHK
	SLA	E
;
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	RRA
	AND	$01
	ADD	A,E
;
		jp	ENPTST
;;;11/11	CALL	ENPTST
;;;11/11;
;;;11/11TEREEE
;;;11/11	RET
;
TENINC
	CALL	STATINC
	LD	(HL),$01
	RET
;============================================================
TEEXIT
	LD	A,(TOURCT)
	AND	A
	JR	Z,TENDEC
;
	LD	HL,ENLIFE
	ADD	HL,BC
	LD	(HL),$01
;
	CALL	CREPKEL
;
	LD	A,$04
	CALL	PSERCH2L
;
	LD	A,(WORK0)
	CPL
	INC	A
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),A
;
	LD	A,(WORK1)
	CPL
	INC	A
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
;
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	RRA
	AND	$01
	ADD	A,$04
;
	LD	HL,ENCHPT
	ADD	HL,BC
	LD	(HL),A
	RET
;
TENDEC
	CALL	STATINC
	LD	(HL),B ;$00
	RET
;
RRRIRA
	ADD	HL,BC
	SUB	(HL)
	JR	Z,RRRARI
;
	BIT	7,A
	JR	Z,RRRNC
;
	DEC	(HL)
	DEC	(HL)
	DEC	(HL)
	DEC	(HL)
	JR	RRRARI
;
RRRNC
	INC	(HL)
	INC	(HL)
	INC	(HL)
	INC	(HL)
;
RRRARI
	RET
;============================================================
TEWARP
	CALL	LDTIM1
	LD	(HL),$20
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	(HL),$00
;====================================
SWARP
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	A,(HL)
	SUB	$48
	LD	E,A
;
	LD	A,$48
	SUB	E
	LD	(HL),A
;
	LD	HL,ENXPSL
	ADD	HL,BC
	LD	A,(HL)
	SUB	$50
	LD	E,A
;
	LD	A,$50
	SUB	E
	LD	(HL),A
	RET
;
;============================================================
TERTPRT
	LD	A,(FRCNT)
	RRA
	RRA
	AND	$01
	JR	Z,KIETA
;
	CALL	E4XCHK
	SRL	E
	JR	C,TERH
;
	LD	A,$06
	JR	TER090
;
TERH
	LD	A,$07
	JR	TER090
;
KIETA
	LD	A,$FF
TER090
	CALL	ENPTST
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	(HL),B ;$00
;
	CALL	LDTIM0
	CP	$01
		ret	NZ
;;;11/11	JR	NZ,TRE999
;
	LD	HL,ENWRK0
	ADD	HL,BC
	INC	(HL)
TRE999
	RET
;================================
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	���ł�A�C�e��					%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
FLYITCD			;YX
	DB	$A6,$15 ;00 ������
	DB	$8E,$16 ;01 ����
	DB	$80,$15 ;10 �΂�����
	DB	$A6,$15 ;11 ������
;
	DB	$A9,$14 ;20 �n�[�g
FLYITCD2
	DB	$2A,$41,$2A,$61 ;��
;
FLYITC2
;0
	DB	$00,$FC,$22,$00
	DB	$00,$0C,$22,$20
;1
	DB	$00,$FC,$22,$40
	DB	$00,$0C,$22,$60
FLITZD
	DB	$0F,$0F,$10,$11,$11,$11,$10,$0F
FLITZD2
	DB	0,0,1,2,2,2,1,0
;- - - - - - - - - - - - - - - - - -
FLYITMV
		LD	A,(DJFLAG)
		AND	A
		JR	Z,FLYITMV_PASS
		LD	A,(DNJNNO)
		CP	NEWDJ		;���̃_���W�����H
		JR	NZ,FLYITMV_PASS	;	YES --> FLYITMV_PASS
		LD	A,:FLYITMV
		jp	FLY_KONA_SUB
;;;;;;;;		CALL	FLY_KONA_SUB
;;;;;;;;		RET
FLYITMV_PASS
;
FLYIT2MV
		LD	A,(DJFLAG)
		AND	A
		JR	Z,FLYIT_900
		LD	A,(DNJNNO)
		AND	A
		JR	NZ,FLYIT_900
		LD	A,(GRNDPT)
		CP	$01C
		JR	NZ,FLYIT_900
		LD	A,$001
		LD	(OMHNFG),A
FLYIT_900
;
	LD	HL,FLITZD
	LD	A,(YKFLAG)
	AND	A
	JR	Z,FLI0000
	LD	HL,FLITZD2
FLI0000
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	AND	$07
	LD	E,A
	LD	D,B
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	(HL),A
;
	LD	A,(ENCHPT2)
	CP	$05
	JR	NZ,FLYI0E0
;
	LD	DE,FLYITCD2-20
	CALL	EN2CST
	JR	FLYI0F0
;
FLYI0E0
	LD	DE,FLYITCD
	CALL	EN1CST
;
FLYI0F0
	LD	A,(FRCNT)
	AND	%00001000
	LD	E,A
	LD	D,B
	LD	HL,FLYITC2
	ADD	HL,DE
	LD	C,$02
	CALL	ENOMST
;
	LD	A,$02-1
	CALL	NXOMSBL
;
	CALL	ENPSSV
;
	CALL	E4STCK
;
	LD	A,(YKFLAG)
	AND	A
	JR	NZ,FLIT18
;
	LD	A,(PLZPSL)
	CP	$0C
		ret	C
;;;11/11	JR	C,FLIT20
;
FLIT18
	CALL	CRENPSL	
		ret	NC
;;;11/11	JR	NC,FLIT20
;
;;	CALL	ENFEND
	CALL	ENBITON
	CALL	E4CLER
;
	LD	A,$01
	LD	(SOUND2),A	;(S)
;
;	DB	$8E,$10 ;00 ������
;	DB	$8E,$10 ;01 ����
;	DB	$8E,$10 ;10 �΂�����
;	DB	$8E,$10 ;11 ������
	LD	A,(ENCHPT2)
	RST	00
	DW	FCOINGT
	DW	FTUBOGT
	DW	FBOMBGT
	DW	FCOINGT
;
	DW	FHARTGT
	DW	FYAGT
;-----------------------------------
FHARTGT
	LD	A,(HARTUP)
	ADD	A,$18
	JR	NC,FHG10
	LD	A,$FF
FHG10
	LD	(HARTUP),A
	RET
;-----------------------------------
FYAGT
	LD	A,(YAAACT)
	ADD	A,$10
	DAA
	LD	(YAAACT),A
	RET
;-----------------------------------
;-----------------------------------
FCOINGT
	LD	A,10
	LD	(COINU2),A
FLIT20
	RET
;-----------------------------------
FTUBOGT
	LD	D,PMGIC
	CALL	ITEMGETS
;
	LD	A,$0B
	LD	(CHTRF2),A	;
;
	LD	HL,PWMAX
	LD	DE,TUBOCT
	JR	MAXSUB4
;-----------------------------------
FBOMBGT
	LD	HL,BOMAX
	LD	DE,BOMBCT
;=======================================
MAXSUB4
	LD	A,(DE)
	CP	(HL)
		ret	NC
;;;11/11	JR	NC,MAX410
	ADD	A,$10
	DAA
	CP	(HL)
	JR	C,MAX408
;
	LD	A,(HL)
MAX408
	LD	(DE),A
MAX410
	RET
;
MEGACK4
	LD	A,(DNJNNO)
	CP	$0A
	RET	NZ
;
	LD	A,(GRNDPT)
	CP	$97
	JR	Z,MECK410
	CP	$98
	RET	NZ
;
MECK410
	LD	A,(WARAFG)
	AND	A
	RET	Z
;
	LD	A,$FF
	LD	(ENCHPT2),A
	RET
;
;===============================================
;=					       =
;===============================================
SLIMSCD
	DB	$56,$02
	DB	$56,$22
;- - - - - - - - - - - - - - - - - - - - - -
SLIMSMV
	CALL	MEGACK4
;
	LD	DE,SLIMSCD
	CALL	EN1CST
	JR	SLIMSUB
;
;===============================================
;=					       =
;===============================================
SLIMBCD
	DB	$52,$02,$52,$22
	DB	$54,$02,$54,$22
SLIMBCD2
	DB	$52,$00,$52,$20
	DB	$54,$00,$54,$20
;- - - - - - - - - - - - - - - - - - - - - -
SLIMBMV
SLB0010
	CALL	MEGACK4
;
		LD	DE,SLIMBCD
		LD	HL,ENLIFE
		ADD	HL,BC
		LD	A,(HL)
		AND	$002
		JR	NZ,SLB0010_SET
		LD	DE,SLIMBCD2
SLB0010_SET
		CALL	EN2CST
;
SLIMSUB
	LD	HL,SLIMCNT
	INC	(HL)
;
	CALL	E4STCK
;
	CALL	E4ZCLC
	LD	HL,ENZSPD
	ADD	HL,BC
	DEC	(HL)
	DEC	(HL)
	DEC	(HL)
;
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	AND	%10000000
	LD	(ENHELP),A
	JR	Z,SLS008
;
	LD	(HL),B
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),B
SLS008
	LD	A,(ENMYNO2)
	CP	SLIMB
	JR	NZ,SLS011
;
	LD	HL,ENFLSH
	ADD	HL,BC
	LD	A,(HL)
	CP	$08
	JR	NZ,SLS011	; Damgege?
;				; Yes!
;- - - - ���g - - - - - -
	LD	(HL),B
;
	LD	HL,ENJYUN
	ADD	HL,BC
	LD	A,(HL)
	PUSH	HL
	PUSH	AF
;
	LD	HL,ENMYNO
	ADD	HL,BC
	LD	(HL),SLIMS
	CALL	ENMDSTL
;
	POP	AF
	POP	HL
	LD	(HL),A
;
	LD	HL,ENXPSL
	ADD	HL,BC
	LD	A,(HL)
	SUB	$04
	LD	(HL),A
;
	CALL	ENSDCL
;
	LD	HL,ENHNFG
	ADD	HL,BC
	LD	(HL),B
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),$20
;
;- - - - - - - - - - - - - - -
	LD	A,SLIMS
	CALL	ENIDSHL
	JR	C,SLS011
;
	LD	HL,ENJYUN
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENJYUN
	ADD	HL,DE
	LD	(HL),A
;
	LD	A,(WORK0)
	ADD	A,$08
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	A,(WORK1)
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	A,(WORK3)
	LD	HL,ENZPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,ENZSPD
	ADD	HL,DE
	LD	(HL),$20
SLS011
	CALL	E4HNSB
;-------------------------------------------
	LD	HL,ENTIM2
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	NZ,SLLP010
;
	LD	A,(ENSTAT2)
	AND	$01
	LD	HL,ENCHPT
	ADD	HL,BC
	LD	(HL),A
;
	DEC	A
	JR	NZ,SLLP010
;
	LD	HL,ENTIM2
	ADD	HL,BC
	LD	(HL),$08
;
SLLP010
	LD	A,(ENSTAT2)
	CP	$04
	JR	Z,SLLP011	;�Ђ����H
;				; NO
	LD	HL,ENTIM4
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	NZ,SLLP011	;�v���e�N�g�^�C���H
;				; no
	CALL	CREPKEL		;�{�f�B�`�F�b�N�I
SLLP011
	LD	A,(ENSTAT2)
	RST	0
	DW	SLSTOP
	DW	SLMOVE
	DW	SBLBUL
	DW	SLJUMP
	DW	SLPLAY
;
;-----------------------------
SLMOVE
	CALL	LDTIM0
	JR	NZ,SLM010
;
	LD	(HL),$10 ;A
;
	CALL	ENSDCL
;
	CALL	RNDSUB
	AND	$0F
	JR	NZ,SLS020
;
	CALL	LDTIM0
	LD	(HL),$50 ;A
	JP  	STATINC
;-------------------------------------
SLS020
	CALL	STATINC
	LD	(HL),B
SLM010
SLMVCL
	CALL	E4MVCL
;
	CALL	LDTIM1
	RET	NZ
;
	LD	HL,ENHNFG
	ADD	HL,BC
	LD	(HL),$02
;
	CALL  	ENBGCKL
;
	LD	HL,ENHNFG
	ADD	HL,BC
	LD	(HL),B
	RET
;-----------------------------
SLSTOP
	CALL	SLMVCL
;
	CALL	LDTIM0
		ret	NZ
;;;11/11	JR	NZ,SLM070
;
	LD	(HL),$07 ;A
;
	CALL	STATINC
;
	LD	A,$04
		jp	PSERCHL
;;;11/11	CALL	PSERCHL
;;;11/11;
;;;11/11SLM070
;;;11/11	RET
;---------------------------------
SBLBUL
	CALL	LDTIM0
	JR	NZ,SBL2
;	
	CALL	STATINC
SLJPST
	LD	A,$10
	CALL	PSERCHL
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),$20
	RET
;
SBL2
	CALL	LDTIM0
	LD	HL,ENXSPD
	ADD	HL,BC
	AND	%00000100
	JR	NZ,SEFT
;
;;;	LD	A,$08
	LD	(HL),$08 ;A
	JR	SBLEND
SEFT
;;	LD	A,$F8
	LD	(HL),$F8 ;A

SBLEND
;;	XOR	A
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),B
;
	JP	SLMVCL
;;	JP  	E4MVCL
;;	RET
;==================================
SLJUMP
	CALL	SLMVCL
;
	LD	A,(ENHELP)
	AND	A
	JR	Z,SLJP10
;
SLRETN
	CALL	STATINC
	LD	(HL),B
SLJP10
	RET
;==================================
SLPLAY
	CALL	LDTIM0
	JR	NZ,SLP010
;
	LD	HL,ENTIM4
	ADD	HL,BC
	LD	(HL),$30
;
	LD	A,$10
	CALL	PSERCHL
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),$20
;
	LD	HL,ENZPSL
	ADD	HL,BC
	INC	(HL)
;
	CALL	STATINC
	LD	(HL),$03
	RET
SLP010
	PUSH	AF
	RRA
	AND	$07
	SUB	$04
	LD	E,A
	LD	A,(PLXPSL)
	SUB	E
	LD	HL,ENXPSL
	ADD	HL,BC
	LD	(HL),A
	POP	AF
	RRA
	RRA
	AND	$07
	SUB	$04
	LD	E,A
	LD	A,(PLYPSL)
	SUB	E
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	(HL),A
;
	LD	A,(PLZPSL)
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	(HL),A
;
	LD	A,$01
	LD	(SLIMFG),A	;Player hittsuki flag !
;
	CALL	ENBGCKL
;
	LD	A,(KEYA2)
	AND	A
	JR	Z,SLP090
;
	CALL	SLP080
	CALL	SLP080
	CALL	SLP080
SLP080
	CALL	LDTIM0
	JR	Z,SLP090
	DEC	(HL)
SLP090
	RET
;
;================================================================
;=	���C�N���C�N						=
;================================================================
LAIKUCD
	DB	$7C,$01,$7C,$21
	DB	$7E,$01,$7E,$21
;- - - - - - - - - - - - - - - - - - - - - -
LAIKUMV
	LD	DE,LAIKUCD
	CALL	EN2CST
	CALL	E4STCK
	CALL	E4HNSB
;
	LD	HL,ENWRK2
	ADD	HL,BC
	LD	A,(HL)
	RST	00
	DW	LIK1000
	DW	LIK2000
;----------------------------------------
LIK1000
;	LD	HL,ENTIM3
;	ADD	HL,BC
;	LD	A,(HL)
;	AND	A
	CALL	LDTIM3
	JR	NZ,LKM010
;
	CALL	CRENPLL
	JR	NC,LKM010
;
	LD	HL,ENWRK2
	ADD	HL,BC
	INC	(HL)
;
	LD	HL,ENCONT
	ADD	HL,BC
	LD	(HL),B
LKM010
	CALL	CRKNENL
	JP	MMYMAIN
;----------------------------------------
LIK2000
;	LD	A,(PCUTFG)
;	CP	$02
;	JR	NZ,LIK2010
	LD	A,(KEYA2)
	AND	%00110000
	JR	Z,LIK2010
;
	LD	HL,ENCONT
	ADD	HL,BC
	INC	(HL)
;;	LD	HL,ENCONT
;;	ADD	HL,BC
	LD	A,(HL)
	CP	$08
;;	CP	$10
	JR	C,LIK2010	;�@�W�񌕐U��H
;
;	LD	HL,ENTIM3
;	ADD	HL,BC
	CALL	LDTIM3
	LD	(HL),$15	;�`�����X�^�C��
;
	LD	HL,ENWRK2
	ADD	HL,BC
	LD	(HL),B
	RET
;
LIK2010
;;	LD	A,$01
;;	LD	(LIKEFG),A
	LD	A,$FF
	LD	(PLCHPT),A
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	NZ,LKM00C
; ������
	LD	HL,ITEMB
	LD	E,B
LKM00A
	LD	A,(HL)
	CP	PTATE
	JR	NZ,LKM00B
;
	LD	A,(TATLEV)
	CP	$02
	JR	NC,LKM00C	;�kV �P�H
;				;YES !
	LD	(HL),B
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(TATLEV)
	LD	(HL),A
	JR	LKM00C
LKM00B
	INC	HL
	INC	E
	LD	A,E
	CP	$02
	JR	NZ,LKM00A
;
LKM00C
	LD	A,(PLMODE)
	CP	PMOVE
	RET	NZ
;
	LD	A,(ENSVXL)
	LD	(PLXPSL),A
	LD	A,(ENSVYL)
	LD	(PLYPSL),A
;
	XOR	A
	LD	(PLJPFG),A
	LD	(PLZPSL),A
	CALL	MUPTST
		jp	MUPTST
;;;11/11	CALL	MUPTST
;;;11/11	RET
;
;===============================================
;=					       =
;===============================================
MUMMYCD
	DB	$74,$02,$76,$02
	DB	$76,$22,$74,$22
MUMMYCD2
	DB	$44,$02,$46,$02
	DB	$46,$22,$44,$22
;- - - - - - - - - - - - - - - - - - - -
MMYMVDT
	DB	$00,$08,$F8,$00,$F8,$08
;---------------------------------------
MUMMYMV
	LD	DE,MUMMYCD
;
	LD	A,(DNJNNO)
	CP	$07
	JR	NZ,MMC1001	;#8 ?
;				;YES !
	LD	DE,MUMMYCD2
MMC1001
	CALL	EN2CST
;
	CALL	E4STCK
;
	CALL	ENHNCL
;
;;;	CALL	E4HNSB
	CALL	CREPKEL
;;	CALL	ENMVCL
;;	CALL	ENBGCK
;-----------------------------------------
MMYMAIN
	CALL	E4MVCL
	CALL	ENBGCKL
;
	LD	HL,ENCBFG
	ADD	HL,BC
	LD	A,(HL)
	AND	$03
	JR	NZ,MLRHIT
;
	LD	A,(HL)
	AND	$0C
	JR	Z,MUCHK
;
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	A,(HL)
;
	XOR	$F0
	LD	(HL),A
	JR	MUCHK
;
MLRHIT
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	A,(HL)
;
	XOR	$F0
	LD	(HL),A
;
MUCHK
	LD	HL,ENSTAT
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	NZ,MUSPSET
;
	CALL	RNDSUB
	AND	$3F
	JR	NZ,MUAMV
;
MUSPSET
	XOR	A
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),A
;
	CALL	RNDSUB
	AND	$03
	LD	E,A
	LD	D,B ;$00
;
	LD	HL,MMYMVDT
	ADD	HL,DE
	LD	A,(HL)
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
	AND	A
	JR	NZ,MUAMV
;
MUMYYY
;
	CALL	RNDSUB
	AND	$01
	ADD	A,$04
	LD	E,A
	LD	D,B ;$0
;
	LD	HL,MMYMVDT
	ADD	HL,DE
	LD	A,(HL)
;
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),A
;-----------------------------------------
MUAMV
	LD	HL,ENSTAT
	ADD	HL,BC
	XOR	A
	LD	(HL),A	
;
;;	LD	A,(FRCNT)
MUPTST
	LD	HL,ENWRK3
	ADD	HL,BC
	LD	A,(HL)
	INC	(HL)
	RRA
	RRA
	RRA
	RRA
	AND	$01
;
;;;	LD	HL,ENCHPT
;;;	ADD	HL,BC
;;;	LD	(HL),A
	JP	ENPTST
;
;;	RET
;
;
;
;
;
;===================================
        END
;===============================================
;=					       =
;===============================================
SWBLKCD
	DB	$F8,$10,$FA,$10
;--------------------------------------
SWBLKMV
	LD	A,(ENSTAT2)
	AND	A
	JR	NZ,SWI100
;
	LD	HL,ENXPSL
	ADD	HL,BC
	LD	A,(HL)
	ADD	A,$20
	LD	(HL),A
	JP	STATINC
;---------------------------------
SWI100
	LD	DE,SWBLKCD
	CALL	EN2CST
;
	CALL	E4STCK
;
	CALL	CRENPSL
	JR	NC,SWI110
;
	CALL	M4CRSB
;
	LD	A,$10
	CALL	PSERCH2L
	LD	A,(WORK0)
	LD	(PLYSPD),A
	LD	A,(WORK1)
	LD	(PLXSPD),A
;
;;	PUSH	BC
;;	CALL	MVCALC
;;	POP	BC
;
	LD	A,$02
	LD	(HANEFG),A
SWI110
	LD	A,(ENSTAT2)
	DEC	A
	RST	00
	DW	SWB1000
	DW	SWB2000
;----------------------------------
SWB1000
	LD	A,(ENSVXL)
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	(HL),A
	SUB	$18
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	(HL),A
;
	JP	STATINC
;----------------------------------
SWB2000
	LD	A,(HIKUSFG)
	CP	$02
	JR	Z,SWB2050
	AND	A
	JR	Z,SWB2010
;
	LD	HL,ENCONT
	ADD	HL,BC
	INC	(HL)
	LD	A,(HL)
	CP	$0F
	JR	NZ,SWB2008
;
	LD	(HL),B
;
	LD	A,$11
	LD	(SOUND3),A	;(S)
;
SWB2002
	LD	HL,ENWRK1	;20
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENXPSL	;10
	ADD	HL,BC
	CP	(HL)
	JR	C,SWB2008
;
	INC	(HL)
SWB2008
	RET
;-------------------------------------
SWB2010
	LD	A,(FRCNT)
	AND	$0F
	JR	NZ,SWB2050
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENXPSL
	ADD	HL,BC
	CP	(HL)
	JR	Z,SWB2050
;;	JR	C,SWB2050
;
	LD	A,(PLCBFG)
	AND	A
	JR	NZ,SWB2050
;
	DEC	(HL)
SWB2050
	RET
;----------------------------------
;--------------------------------------
SWBLK2MV
	LD	A,(ENSTAT2)
	AND	A
	JR	NZ,S2I100
;
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	A,(HL)
	ADD	A,$20
	LD	(HL),A
	JP	STATINC
;---------------------------------
S2I100
	LD	DE,SWBLKCD
	CALL	EN2CST
;
	CALL	E4STCK
;
	LD	A,(ENSTAT2)
	DEC	A
	RST	00
	DW	SW21000
	DW	SW22000
;----------------------------------
SW21000
	LD	A,(ENSVYL)
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	(HL),A
	SUB	$18
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	(HL),A
;
	JP	STATINC
;----------------------------------
SW22000
	LD	A,(HIKUSFG)
	CP	$02
	JR	Z,SW22050
	AND	A
	JR	Z,SW22010
;
	LD	HL,ENCONT
	ADD	HL,BC
	INC	(HL)
	LD	A,(HL)
	CP	$0F
	JR	NZ,SW22008
;
	LD	(HL),B
;
	LD	A,$11
	LD	(SOUND3),A	;(S)
;
SW22002
	LD	HL,ENWRK1	;20
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENYPSL	;10
	ADD	HL,BC
	CP	(HL)
	JR	C,SW22008
;
	INC	(HL)
SW22008
	RET
;-------------------------------------
SW22010
	LD	A,(FRCNT)
	AND	$0F
	JR	NZ,SW22050
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENYPSL
	ADD	HL,BC
	CP	(HL)
	JR	Z,SW22050
;
	DEC	(HL)
SW22050
	RET
;===============================================
;=					       =
;===============================================
BASSFCD
	DB	$40,$00,$42,$00
	DB	$44,$00,$46,$00
	DB	$42,$20,$40,$20
	DB	$46,$20,$44,$20
;- - - - - - - - - - - - - - - - - - - -
BASMVDT
	DB	$FF,$01
;---------------------------------------
BASSFMV
	LD	DE,BASSFCD
	CALL	EN2CST
	CALL	E4STCK
	CALL	E4HNSB
	CALL	CREPKEL
	CALL	E4MVCL
	CALL	ENBGCKL
;-----------------------------------------
BMMAIN
	LD	HL,ENYSPD
	ADD	HL,BC
	XOR	A
	LD	(HL),A
;
	LD	A,(PLSTAT)
	CP	$02
	JR	NZ,BAM222
; - - - - - - - - - - - - - - - 
BASSCK
;
	CALL	E4XCHK
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	A,(HL)
	AND	$80
	RLA
	RLA
;
	CP	E
	JR	NZ,BAM222
;
	LD	A,D
	ADD	A,$28
	CP	$50
	JR	C,BAM222
;
	CALL	E4YCHK
	LD	A,E
	CP	$02
	JR	Z,BPLUP
;
	LD	HL,ENYSPD
	ADD	HL,BC
;;;	LD	A,$04
	LD	(HL),$04 ;A
	JR	BAM222
;
BPLUP
	LD	HL,ENYSPD
	ADD	HL,BC
;;	LD	A,$FC
	LD	(HL),$FC  ;A
;- - - - - - - - - - - - - - - 
BAM222
;
	LD	HL,ENTIM0
	ADD	HL,BC
	XOR	A
	LD	(HL),A
;
	LD	HL,ENCBFG
	ADD	HL,BC
	LD	A,(HL)
	AND	$03
	JP	NZ,BSTURN
;
	LD	HL,ENSTAT
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	NZ,BASAMV
;
	CALL	RNDSUB
	AND	$02
	JR	NZ,BASAMV
;
	LD	HL,ENCONT
	ADD	HL,BC
	LD	E,(HL)
;;	LD	E,A
	LD	D,B ;$0
;
	LD	HL,BASMVDT
	ADD	HL,DE
	LD	A,(HL)
;
	LD	HL,ENXSPD
	ADD	HL,BC
	ADD	A,(HL)
	LD	(HL),A
;
	BIT	7,A
	JR	Z,BHANDN
;
	CPL
	INC	A
BHANDN
;
	CP	$10
	JR	C,BASAMV
;
	LD	HL,ENSTAT
	ADD	HL,BC
	INC	(HL)
	JR	BASAMV
;
BSTURN
;
	XOR	A
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
;
	LD	HL,ENSTAT
	ADD	HL,BC
	LD	(HL),A
;
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	XOR	$01
	LD	(HL),A
;
BASAMV
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	AND	$01
	LD	E,A
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	A,(HL)
	AND	$C0
	JR	NZ,BASA3
;
	LD	A,E
	ADD	A,$02
	LD	E,A
BASA3
;
	LD	HL,ENCHPT
	ADD	HL,BC
	LD	(HL),E
BSEEE
	RET
