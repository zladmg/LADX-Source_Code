
		onbankgroup

;==============	�o���N�O ================================================
BANK0		GROUP	0
;-------------<	ZCO >-------------
		EXTERN	RNDSUB,OBJBG,SOUNDCLR,BGMSET
;
;-------------<	ZPL >-------------
		EXTERN	PLPSRV,MSGCHK,MSGCHK2,DUSHCL,KNCSET,KNFLSH,PLSHST
		EXTERN	MVCALC,FLASHST,EXIDSH,NXGOTO,LDTIM0,PLXCLC,ENHNCL
		EXTERN	BBSDST,MSGCH2,NXGOTO3,YOSSISET,LDTIM1,LDTIM3,ENDG
		EXTERN	PLPTSTL,DUSHCL2,MSGCH3,CARITMD,PTOBI,PBULE,POVER
		EXTERN	PINDR1,PMOVE,PFOLE,PTATE,PMGIC,POKAR,PEACH,FDIN
		EXTERN	GMAP,GPLAY
;
;-------------<	ZES >-------------
		EXTERN	ISIBRKL,CRENENL,PLDMST0,ENMOVE,ENBGCKL,ENBGCK2L
		EXTERN	ENPTST,STATINC,ENIDSHL,ENIDSH2L,BSSDCK,CREPKEL
		EXTERN	CRENPLL,CRENPL2L,EN2CST,EN1CST,PSERCHL,PSERCH2L
		EXTERN	CRKNENL,ENFEND,CRENPSL,ENPSSV,ENSDCL,NXOMSBL
		EXTERN	PLBGCKL,ENALCL,HNSMST,ENOMST,ENSZST,SADWSTL,SHRVSE
		EXTERN	ITEMGETS,ENBITON,WAENCK,EFAIL,EFOLE,EFIRE,EINIT
		EXTERN	EMOVE,ESTOP,ECACH,ESHOT
;
;-------------<	ZBS >-------------
		EXTERN	DJRMRD,HABATAKI
;
;-------------<	ZMA >-------------
		EXTERN	PBSET,BG1UNIT_ATR_SUB,OKARINA_COLST_SUB
;
;==============	�o���N�Q ================================================
BANK2		GROUP	2
;-------------<	ZEX >-------------
		EXTERN	SPUNDT,SMK1,RZNZ,FLSH,FUCKS,BFZN
;
;==============	�o���N�R ================================================
BANK3		GROUP	3
;-------------<	ZEN >-------------
		EXTERN	EFLSST,BHFIR,HARTB,R7BEM,RENO7,BGKAO,UFOCH,TERSA
		EXTERN	FISHG,SBOMB,BOMBR,NINTM,HAYAB,KTOBJ,BSLIM,SLIMB
		EXTERN	TBOSS,BSNAK,GORMA,BSKEL,BFIRE,BBIRD,BFISH,SWTRP
		EXTERN	NIWAT,KODOMA,PAPA0,KAMEI,YOSSI,BHANA,SHANA,HEIS0
		EXTERN	MORI1,OCTA1,KODOMB,IZUMI,SONIC,MONKY,WANWAN,ONPU
		EXTERN	BLANKA,IKADA,KAIIN,BABA0
;
;==============	�o���N�W ================================================
BANK8		GROUP	8
;-------------<	ZBD >-------------
		EXTERN	GRBGCR,DJBGCR
;
;==============	�o���N�P�S ==============================================
BANK14		GROUP	$14
;-------------<	ZEX >-------------
		EXTERN	WTUP
;
;========================================================================
	PUBALL
;
BANK5	GROUP	05
;
	LIB	ZRAM
	LIB	ZBN
;
;------------------------------------------------
	KANJI
	PAGE
;
	isdmg
;
	LIST
	ORG	$4000
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�������� 				%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
WANWANCD2
	DB	$70,$03,$70,$23
	DB	$72,$03,$72,$23
	DB	$74,$03,$76,$03
	DB	$78,$03,$7A,$03
	DB	$76,$23,$74,$23
	DB	$7A,$23,$78,$23
	DB	$7C,$03,$7C,$23
;
WANWANCD
	DB	$40,$03,$40,$23
	DB	$42,$03,$42,$23
	DB	$44,$03,$46,$03
	DB	$48,$03,$4A,$03
	DB	$46,$23,$44,$23
	DB	$4A,$23,$48,$23
	DB	$4C,$03,$4C,$23
;
WANWANMV
	LD	A,C
	LD	(WAINDX3),A	;�����̃C���f�b�N�X�I�i�΂���p�j
;
	LD	A,(WANFLG)
	CP	$01
	JR	NZ,WA0F00	;�����N�Ɉ��������H
;				; YES !
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
WA0F00
	LD	DE,WANWANCD	;�I�v�V�����p�I
;
	LD	A,(WANFLG)
	AND	A
	JR	NZ,WAN0003
;
	LD	DE,WANWANCD2
WAN0003
	CALL	EN2CST
;
	LD	A,(SCRLFG)
	AND	A
	JR	Z,WA00103
;
	LD	A,(WANFLG)
	CP	$01
	JP	Z,WA1099
;
	LD	HL,ENGRPT
	ADD	HL,BC
	LD	A,(GRNDPT)
	CP	(HL)
		ret	Z
;;;;;;;;	JP	Z,WA109A
	JP	WA1099
;
WA00103
	LD	A,(ENSTFG)
	LD	HL,MSGEFG
	OR	(HL)
	LD	HL,WNDFLG
	OR	(HL)
	JP	NZ,WA1099
;
	LD	A,(SBHR)
	CP	$04
	RET	NZ
;
	CALL	WAPTST
;
	CALL	ENHNCL
;
	LD	A,(WANFLG)
	AND	A
	JR	NZ,WA0F090
;
	CALL	CRKNENL
;
WA0F090
WA1000
	CALL	WANMOV
WA1099
		jp	WACHANE
;;;;;;;;	CALL	WACHANE
;;;;;;;;WA109A
;;;;;;;;	RET
;
;
;
;----------------------------------
WANMOV
	LD	HL,ENWRK3
	ADD	HL,BC
	LD	A,(HL)
	RST	00
	DW	WAN0000 
	DW	WAN1000
;--------------------------------------
WAN0000 
	LD	HL,ENXPSL
	ADD	HL,BC
	LD	A,(HL)
	ADD	A,$04
	LD	(HL),A
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	(HL),A
;
	LD	E,$10
	LD	HL,WAXBUF
WANI10
	LD	(HLI),A
	DEC	E
	JR	NZ,WANI10
;
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	A,(HL)
	ADD	A,$08
	LD	(HL),A
;
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	(HL),A
;
	LD	HL,ENZPSL
	ADD	HL,BC
	SUB	(HL)
;
	LD	E,$10
	LD	HL,WAYBUF
WANI20
	LD	(HLI),A
	DEC	E
	JR	NZ,WANI20
;
	LD	HL,ENWRK3
	ADD	HL,BC
	INC	(HL)
	RET
;--------------------------------------
WAN1000
	LD	A,(WANFLG)
	AND	A
	JR	Z,WAN1010	;�A����H
;				; YES !
	CP	$80
	JR	Z,WAN1002
;
	LD	A,(PLXPSL)	;�����N�ɘA����
	LD	(WORK0),A
	LD	A,(PLDSYP)
	LD	(WORK1),A
	JR	WAN1003
WAN1002
	LD	A,(PLYPSL)
	SUB	$40
	ADD	A,$10
	CP	$20
	JR	NC,WAN1022
;
	LD	A,(PLXPSL)
	SUB	$88
	ADD	A,$10
	CP	$20
	JR	NC,WAN1022
;
	LD	A,(PLCBFG)
	AND	A
	JR	Z,WAN1022
;
	LD	A,$10
	LD	(SOUND4),A	;(S)
;
	LD	A,$6C
	CALL	MSGCH2	; �Ȃ��I
;
	LD	A,$18
	LD	(SOUND2),A	;(S)
;
	LD	A,$01
	LD	(WANFLG),A	;�����N�Ɏt��
WAN1022
	JR	WAN1010
WAN1003
	LD	A,(WORK0)
	LD	HL,ENWRK0 ;XPSL
	ADD	HL,BC
	LD	(HL),A
;
	LD	A,(WORK1)
	LD	HL,ENWRK1 ;YPSL
	ADD	HL,BC
	LD	(HL),A
WAN1010
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	LD	(WACTXP),A	; 
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	A,(HL)
	LD	(WACTYP),A
;
	CALL	E3ZCLC
;
	LD	HL,ENZSPD
	ADD	HL,BC
	DEC	(HL)
	DEC	(HL)
;
		ld	e,l
		ld	d,h
;;10/31;	PUSH	HL
;;10/31;	POP	DE
;
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	AND	%10000000
	LD	(ENHELP),A
	JR	Z,WAN000
;
	XOR	A
;
	LD	(HL),A
	LD	(DE),A
WAN000
	CALL	ENBGCKL
;
	LD	A,(ENSTAT2)
	RST	00
	DW	WANM100	;0 ���낤�� 1
	DW	WANM200	;1 ���낤�� 2
	DW	WANM300	;2 �v���C���[ �U��
	DW	WANM400	;3 �Î~
	DW	WANM500	;4 �G �U��
;===================================
WAUROXS
	DB	$04,$08,$0C,$08
	DB	$FC,$F8,$F4,$F8
WAUROYS
	DB	$F4,$F8,$04,$08
	DB	$0C,$08,$FC,$F8
;- - - - - - - - - - - - - - - - - -
WANM100
	CALL	LDTIM0
	JR	Z,WAATST	
;
	CALL	LDTIM1
	JR	NZ,WANM130
;
	CALL	RNDSUB
	AND	$3F
	ADD	A,$20
	LD	(HL),A
;
	CALL	STATINC	
;
	CALL	RNDSUB
	AND	$07
	LD	E,A
	LD	D,B
	LD	HL,WAUROXS
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
	LD	HL,WAUROYS
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),A
WANM130
	RET
;- - - - - - - -
WAATST
	CALL	LDTIM0
	LD	(HL),$28
;
	LD	A,(WANFLG)
	AND	A
	JR	Z,WAAS10
;
		jp	WESECH	;�G�T�[�`�I
;;;;;;;;	CALL	WESECH	;�G�T�[�`�I
;;;;;;;;	RET
WAAS10
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),$20
;
	CALL	STATINC
	LD	(HL),$02
;
	LD	A,$20
		jp	PSERCHL
;;;;;;;;	CALL	PSERCHL
;;;;;;;;	RET
;===================================
WANM200
	CALL	LDTIM1
	JR	NZ,WANM210
;
	LD	(HL),$20
;
	CALL	STATINC
	LD	(HL),B
WANM210
	LD	A,(ENHELP)
	AND	A
	JR	Z,WANM220
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),$10
WANM220
	CALL	E3MVCL
		jp	WABGCK
;;;;;;;;	CALL	WABGCK
;;;;;;;;	RET
;===================================
WANM300
;===================================
WANM500
	CALL	LDTIM0
	JR	Z,WANM510
;
	CALL	E3MVCL
	CALL	WABGCK
	DEC	E
	JR	Z,WANM310
;
WANM510
	CALL	ENSDCL
;
	CALL	STATINC
	LD	(HL),$03
;
	CALL	LDTIM0
	LD	(HL),$10
WANM310
	LD	A,(WANFLG)
	AND	A
		ret	Z
;;;;;;;;	JR	Z,WANM590
;
		jp	CRWAEN	;�ΓG�Փ˔���I
;;;;;;;;	CALL	CRWAEN	;�ΓG�Փ˔���I
;;;;;;;;WANM590
;;;;;;;;	RET
;===================================
WANM400
	CALL	LDTIM0
	JR	NZ,WANM410
;
	CALL	RNDSUB
	AND	$3F
	ADD	A,$30
	LD	(HL),A
;
	LD	A,(WANFLG)
	AND	A
	JR	Z,WANM408
;
	LD	(HL),$10
WANM408
	CALL	STATINC
	LD	(HL),B
WANM410
	RET
;============================================
WABGCK
	LD	E,$01
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENXPSL
	ADD	HL,BC
	SUB	(HL)
	ADD	A,$20
	CP	$40
	JR	C,WBC010
;
	LD	A,(ENSVXL)
	LD	(HL),A
;
	INC	E
WBC010
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENYPSL
	ADD	HL,BC
	SUB	(HL)
	ADD	A,$20
	CP	$40
	JR	C,WBC020
;
	LD	A,(ENSVYL)
	LD	(HL),A
	INC	E
WBC020
	RET
;========================================
WACHANE
	CALL	WACALC1	;���Ǐ]
	CALL	WACALC2	;�����ےǏ]
;- - OAM SET - - - -
	LD	A,(ENOMID)
	LD	E,A
	LD	D,$0
	LD	HL,ENOAM
	ADD	HL,DE
		ld	e,l
		ld	d,h
;;10/31;	PUSH	HL
;;10/31;	POP	DE
;
	PUSH	BC
;
	LD	C,$05
WCA060
	LD	A,(FRCNT)
	XOR	C
	RRA
	JR	C,WACHC20
;
	LD	HL,WAYBUF+1-1
	ADD	HL,BC
	LD	A,(HL)
	LD	(DE),A
	INC	DE
	LD	HL,WAXBUF+1-1
	ADD	HL,BC
	LD	A,(HL)
	ADD	A,$04
	LD	(DE),A
	INC	DE
	LD	A,(WANFLG)
	AND	A
	LD	A,$4E
	JR	NZ,WACHC10
	LD	A,$7E
WACHC10
	LD	(DE),A
	INC	DE
	LD	A,$00
	LD	(DE),A
	INC	DE
WACHC20
	DEC	C
	JR	NZ,WCA060
;
	POP	BC
;
	LD	A,$03
		jp	NXOMSBL
;;;;;;;;	CALL	NXOMSBL
;;;;;;;;	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�G �T��				%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
WESECH
	LD	A,(WANFLG)
	CP	$80
	JP	Z,WES080
;
	CALL	RNDSUB
	LD	D,B
	AND	$01
	JR	NZ,WES001
;
	LD	E,ENNO-1
	LD	A,$FF
	LD	(WORK0),A
;;	LD	A,$FF
	JR	WES002
;
WES001
	LD	E,$00
	LD	A,$01
	LD	(WORK0),A
	LD	A,ENNO
WES002
	LD	(WORK1),A
WES010
	LD	A,E
	CP	C
	JR	Z,WES050
;
	LD	HL,ENMODE
	ADD	HL,DE
	LD	A,(HL)
	AND	A
	JR	Z,WES050
	CP	EFAIL
	JR	Z,WES050
;
	LD	HL,ENCHPT
	ADD	HL,DE
	LD	A,(HL)
	DEC	A
	JR	Z,WES050
	PUSH	DE
	LD	HL,ENMYNO
	ADD	HL,DE
	LD	E,(HL)
	CALL	WAENCK
	POP	DE
	AND	A
	JR	Z,WES050	
;
;	LD	HL,ENMYNO
;	ADD	HL,DE
;	LD	A,(HL)
;	CP	MONKY
;	JR	Z,WES011 ;���`�F�b�N
;	CP	BLANKA
;	JR	Z,WES011 ;�s���j�A
;	CP	OCTA1
;	JR	Z,WES011 ;�ԐH���`�F�b�N
;	CP	MORI1
;	JR	Z,WES011 ;�ԐH���`�F�b�N
;	CP	HEIS0
;	JR	Z,WES011 ;�ԐH���`�F�b�N
;	CP	BHANA
;	JR	Z,WES011 ;�ԐH���`�F�b�N
;	CP	SHANA
;	JR	NZ,WES050
WES011
;	LD	HL,ENMOD0
;	ADD	HL,DE
;	LD	A,(HL)
;	AND	%10000000
;	JR	NZ,WES050
;
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	A,(PLXPSL)
	SUB	(HL)
	ADD	A,$2F
	CP	$5E
	JR	NC,WES050
;
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	A,(PLYPSL)
	SUB	(HL)
	ADD	A,$2F
	CP	$5E
	JR	NC,WES050
;
	LD	A,E
	LD	(WAINDX),A
;
	LD	A,(PLYPSL)
	PUSH	AF
	LD	A,(PLXPSL)
	PUSH	AF
	LD	A,(HL)
	LD	(PLYPSL),A
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	A,(HL)
	LD	(PLXPSL),A
;
	LD	A,$30
	CALL	PSERCHL
	POP	AF
	LD	(PLXPSL),A
	POP	AF
	LD	(PLYPSL),A
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),$10
;
	CALL	STATINC
;
	LD	(HL),$04
	RET
;
WES050
	LD	HL,WORK0
	LD	A,E
	ADD	A,(HL)
	LD	E,A
;
	LD	HL,WORK1
	CP	(HL)
;	DEC	E
;	LD	A,E
;	CP	$FF
	JR	NZ,WES010
;
WES080
	CALL	LDTIM0
	LD	(HL),$10
;
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�G�H�׃`�F�b�N			%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
CRWAEN
	LD	A,(WAINDX)
	LD	E,A
	LD	D,B
	LD	HL,ENMODE
	ADD	HL,DE
	LD	A,(HL)
	AND	A
	RET	Z
;;	JR	Z,CWE090
;
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	A,(ENSVXL)
	SUB	(HL)
	ADD	A,$0E
	CP	$1A
	RET	NC
;;	JR	NC,CWE090
;
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	A,(ENDSYP)
	SUB	(HL)
	ADD	A,$10
	CP	$20
	RET	NC
;;	JR	NC,CWE090
;
	LD	HL,ENMYNO
	ADD	HL,DE
	LD	A,(HL)
	CP	KAIIN
	JR	NZ,CWE020
;
	LD	HL,ENWRK3
	ADD	HL,DE
	LD	A,(HL)
	AND	A
	RET	Z
;;	JR	Z,CWE090	;���x�L�k�H
;
	LD	A,(MSGEFG)
	AND	A
	RET	NZ				;YES !
;
	CALL	LDTIM0
	LD	(HL),B
;
	LD	HL,ENTIM2
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	RET	NZ
;
	LD	(HL),$80
;
	LD	A,$15	;�����قꃏ�������I
	JP  	MSGCH2
;;	RET
;
CWE020
;;	LD	HL,ENMODE
;;	ADD	HL,DE
;;	LD	(HL),$00
;
	LD	HL,ENFLSH
	ADD	HL,DE
	LD	A,(HL)
	AND	A
	RET	NZ
;;	JR	NZ,CWE090
;
	LD	A,$03
	LD	(SOUND1),A	;(S)
;
	LD	HL,ENMYNO
	ADD	HL,DE
	LD	A,(HL)
	CP	MONKY
	JR	NZ,CWE080	;���ƃP���J�I
;
	LD	HL,ENFLSH
	ADD	HL,DE
	LD	(HL),$18
;
	LD	HL,ENCONT
	ADD	HL,DE
	INC	(HL)
;	LD	HL,ENXSPD
;	ADD	HL,BC
;	LD	A,(HL)
;	LD	HL,ENHNXS
;	ADD	HL,DE
;	LD	(HL),A
;	LD	HL,ENYSPD
;	ADD	HL,BC
;	LD	A,(HL)
;	LD	HL,ENHNYS
;	ADD	HL,DE
;	LD	(HL),A
;;
;	LD	HL,ENHNFG
;	ADD	HL,DE
;	LD	(HL),$10
;
	RET
CWE080
	PUSH	BC
		ld	c,e
		ld	b,d
;;10/31;	PUSH	DE
;;10/31;	POP	BC
	CALL	ENFEND
	POP	BC
CWE090
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%					%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
WACALC1
;- - - X calc - -
	LD	HL,ENXPSL
	ADD	HL,BC
	LD	A,(HL)
	LD	(WAXBUF),A
;
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENZPSL
	ADD	HL,BC
	SUB	(HL)
	LD	(WAYBUF),A
;
	LD	DE,WAXBUF
	LD	HL,WAXBUF+1
;
	PUSH	BC
;
	LD	C,$05
WCA000
	LD	A,(DE)	;19
	SUB	(HL)	;10
	ADD	A,$07
	CP	$0E
	JR	C,WCA010
;
	BIT	7,A
	JR	NZ,WCA008
;
	INC	(HL)
	INC	(HL)
	INC	(HL)
	INC	(HL)
WCA008
	DEC	(HL)
	DEC	(HL)
;
WCA010
	INC	HL
	INC	DE
;
	DEC	C
	JR	NZ,WCA000
;- - - Y calc - -
	LD	DE,WAYBUF
	LD	HL,WAYBUF+1
;
	LD	C,$05
WCA001
	LD	A,(DE)	;19
	SUB	(HL)	;10
	ADD	A,$07
	CP	$0E
	JR	C,WCA011
;
	BIT	7,A
	JR	NZ,WCA009
;
	INC	(HL)
	INC	(HL)
	INC	(HL)
	INC	(HL)
WCA009
	DEC	(HL)
	DEC	(HL)
;
WCA011
	INC	HL
	INC	DE
;
	DEC	C
	JR	NZ,WCA001
;
	POP	BC
	RET
;============================================
WACALC2
	LD	A,(WANFLG)
	AND	A
;;	JP	Z,W2C0C0	; Tsurerare ?
	RET	Z
;				; yes !
	CP	$80
	RET	Z
;;;	JR	NZ,W2C0F0
;
;	LD	A,(WAINDX2)
;	LD	E,A
;	LD	D,B
;	LD	HL,ENXSPD
;	ADD	HL,DE
;	LD	A,(HL)
;	LD	HL,ENYSPD
;	ADD	HL,DE
;	OR	(HL)
;	JP	Z,W2C0C0	; Moriburin Move ?
;	JR	W2C0F8
W2C0F0
	LD	A,(PLYSPD)
	LD	HL,PLXSPD
	OR	(HL)
	LD	HL,PLZSPD
	OR	(HL)
	JP	Z,W2C0C0	; Plyaer Move ?
W2C0F8
;- - - X calc - -		; Yes ! 
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	LD	(WAXBUF+6),A
;
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	A,(HL)
	LD	(WAYBUF+6),A
;
	LD	DE,WAXBUF+6
	LD	HL,WAXBUF+5
;
	PUSH	BC
;
	LD	BC,$06
WC2000
	LD	A,(DE)	;19
	SUB	(HL)	;10
	ADD	A,$07
	CP	$0E
	JR	C,WC2010
;
	BIT	7,A
	JR	NZ,WC2008
;
	INC	(HL)
	INC	(HL)
	INC	(HL)
	INC	(HL)
	INC	(HL)
	INC	(HL)
WC2008
	DEC	(HL)
	DEC	(HL)
	DEC	(HL)
;
	LD	A,C
	CP	$01
	JR	NZ,WC2010	; Limit ?
;				; Yes !
	INC	B
WC2010
	DEC	HL
	DEC	DE
;
	DEC	C
	JR	NZ,WC2000
;- - - Y calc - -
	LD	DE,WAYBUF+6
	LD	HL,WAYBUF+5
;
	LD	C,$06
WC2001
	LD	A,(DE)	;19
	SUB	(HL)	;10
	ADD	A,$07
	CP	$0E
	JR	C,WC2011
;
	BIT	7,A
	JR	NZ,WC2009
;
	INC	(HL)
	INC	(HL)
	INC	(HL)
	INC	(HL)
	INC	(HL)
	INC	(HL)
WC2009
	DEC	(HL)
	DEC	(HL)
	DEC	(HL)
;
	LD	A,C
	CP	$01
	JR	NZ,WC2011
;
	LD	A,B
	OR	$02
	LD	B,A
WC2011
	DEC	HL
	DEC	DE
;
	DEC	C
	JR	NZ,WC2001
;
	LD	A,B
	LD	(WORK0),A	;���������I
;
	POP	BC
;
	AND	$01
	JR	Z,W2C080
;
	LD	HL,WAYBUF
	LD	E,$06
W2C050
	LD	A,(WACTYP)
	SUB	(HL)
	JR	Z,W2C070
;
	BIT	7,A
	JR	NZ,W2C060
	INC	(HL)
	INC	(HL)
W2C060
	DEC	(HL)
W2C070
	INC	HL
	DEC	E
	JR	NZ,W2C050
;
	CALL	WARVSE
;- - - - - - - - - - - - - -
W2C080
	LD	A,(WORK0)
	AND	$02
	JR	Z,W2C0C0
;
	LD	HL,WAXBUF
	LD	E,$06
W2C090
	LD	A,(WACTXP)
	SUB	(HL)
	JR	Z,W2C0B0
;
	BIT	7,A
	JR	NZ,W2C0A0
	INC	(HL)
	INC	(HL)
W2C0A0
	DEC	(HL)
W2C0B0
	INC	HL
	DEC	E
	JR	NZ,W2C090
;- - - - - - - - - - - - - - - -
WARVSE
	LD	A,(WAYBUF)
	LD	HL,ENZPSL
	ADD	HL,BC
	ADD	A,(HL)
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	(HL),A
;
	LD	A,(WAXBUF)
	LD	HL,ENXPSL
	ADD	HL,BC
	LD	(HL),A
W2C0C0
	RET
;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
;@						    @
;@	              ��������   	            @
;@						    @
;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
WAPTST
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENYSPD
	ADD	HL,BC
	OR	(HL)
	RET	Z
;;	JR	Z,WAPRET
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	A,(HL)
	LD	D,A
	BIT	7,A
	JR	Z,WAPT020
;
	CPL
	INC	A
WAPT020
	LD	E,A
;
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	A,(HL)
	BIT	7,A
	JR	Z,WAPT030
;
	CPL
	INC	A
;
WAPT030
	CP	E	;YSPD-XSPD
	JR	NC,YWAN2
;
;XWAN2- - - - - - - - - - - - - - 
	BIT	7,D
	JR	NZ,XWANL	;LEFT
;
	LD	E,$04
	JR  	WAPT040
;;	RET
;
XWANL
	LD	E,$02
		jp	WAPT040
;;;;;;;;	CALL	WAPT040
;;;;;;;;WAPRET
;;;;;;;;	RET
;
YWAN2
;;;	LD	A,(HL)
	BIT	7,(HL)
	JR	Z,YWANU	;UP
;;	JR	NZ,YWANU	;UP
;
	LD	A,$06
	JP 	ENPTST
;;	RET
;
YWANU
	LD	E,$00
;- - - - - -  - - - - - - - - - - - - - - - - - - - -
WAPT040
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	AND	$01
	ADD	A,E
;
	JP  	ENPTST
;
;;	RET
;
;
;
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�j���g�� 				%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
NWCT	EQU	35
;
NIWATCD
	DB	$50,$01,$52,$01
	DB	$54,$01,$56,$01
;
	DB	$52,$21,$50,$21
	DB	$56,$21,$54,$21
;- - - - - - - - - - - - - - - - - -
NIWATMV
	LD	HL,ENLIFE
	ADD	HL,BC
	LD	(HL),$4C
;
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	NZ,NWT000
;
	LD	A,(ENCHPT2)
	ADD	A,$02
	LD	(ENCHPT2),A
NWT000
	LD	DE,NIWATCD
	CALL	EN2CST
;
	LD	A,(ENMODE2)
	CP	ECACH
	JR	NZ,NWT001
;
	LD	A,(FRCNT)
	AND	$1F
	JR	NZ,NWT011
;
	LD	A,$13
	LD	(SOUND2),A	;(S)
NWT011
	LD	A,(FRCNT)
	RRA
	RRA
	AND	$01
	JP  	ENPTST
;
NWT001
	CALL	E3STCK
;
	CALL	CRKNENL
;
	CALL	ENHNCL
;
	LD	A,(ENSTAT2)
	CP	$03
	JR	Z,NWT010
;
	CALL	E3ZCLC
	LD	HL,ENZSPD
	ADD	HL,BC
	DEC	(HL)
;
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	AND	%10000000
	LD	(ENHELP),A
	JR	Z,NWT010
;
	XOR	A
	LD	(HL),A
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),A
NWT010
	LD	HL,ENFLSH
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,NWT020
;
	CP	$08
	JR	NZ,NWT018
;
	LD	A,(MARINFG)
	AND	A
	JR	Z,NWT013
;
	DEC	(HL)
;
	LD	A,(SBHR)
	CP	$04
	JR	NZ,NWT013
;
;;	LD	A,(COINC2)
;;	CP	$35
	CALL	RNDSUB
MANW
	AND	$3F
	JR	NZ,NWT0112
;
	LD	A,$76
	CALL	MSGCH3
	JR	NWT013
NWT0112
	LD	A,$8F
	CALL	MSGCHK
NWT013
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	CP	NWCT
	JR	Z,NWT018
	INC	(HL)
NWT018
	CALL	STATINC
	LD	A,$02
	LD	(HL),A
	LD	(ENSTAT2),A
NWT020
;- - Cach check - -
	CALL	CRENPSL
	JR	NC,NWTP10
;
	LD	A,(ENSTAT2)
	CP	$03
	JR	Z,NWTP10
;
	LD	A,(POWDRTM)
	AND	A
	JR	NZ,NWTP10
;
	LD	A,(ITEMB)
	CP	PBULE
	JR	NZ,NWT900	; Bulesret check !
;
	LD	A,(KEYA2)
	AND	%00100000
	JR	NZ,NWT910
	JR	NWTP10
NWT900
	LD	A,(ITEMA)
	CP	PBULE
	JR	NZ,NWTP10
;
	LD	A,(KEYA2)
	AND	%00010000
	JR	Z,NWTP10
;
NWT910
	LD	A,(WPLCAMD)
	AND	A
	JR	NZ,NWTP10
;
	INC	A
	LD	(WPLCAMD),A
;;	CALL	CRENPLL
;;	JR	NC,TSTP10
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
	RET
NWTP10
	LD	A,(ENSTAT2)
	RST	00
	DW	NWSTOP
	DW	NWWALK
	DW	NWDUSH
;- - - - - - - - - - - - - - 
	DW	NWFLY
;------------------------------------
NWWKXS
	DB	$00,$04,$06,$04
	DB	$00,$FC,$FA,$FC
;NWWKYS
;	DB	$FA,$FC,$00,$04
;	DB	$06,$04,$00,$FC
;------------------------------------
NWSTOP
	XOR	A
	CALL	ENPTST
	CALL	LDTIM0
		ret	NZ
;;;;;;;;	JR	NZ,NWS010
;
	CALL	RNDSUB
	AND	$07
	LD	E,A
	LD	D,B
	LD	HL,NWWKXS
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
	LD	HL,NWWKXS
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
		jp	STATINC
;;;;;;;;	CALL	STATINC
;;;;;;;;NWS010
;;;;;;;;	RET
;------------------------------------
NWWALK
	CALL	E3MVCL
	CALL	ENBGCKL
;
	LD	A,(ENHELP)
	AND	A
	JR	Z,NWW020
;
	CALL	LDTIM0
	JR	NZ,NWW010
;
	LD	(HL),$30
	CALL	STATINC
	LD	(HL),B
	RET
NWW010
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),$05
;
	LD	HL,ENZPSL
	ADD	HL,BC
	INC	(HL)
NWW020
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	AND	$01
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;	RET
;
;------------------------------------
NWFLXP
	DB	$28,$48,$68,$88
	DB	$18,$38,$58,$78
	DB	$00,$00,$00,$00
	DB	$A0,$A0,$A0,$A0
;
NWFLYP
	DB	$00,$00,$00,$00
	DB	$90,$90,$90,$90
	DB	$20,$40,$60,$80
	DB	$20,$40,$60,$80
;
NWDUSH
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(FRCNT)
	XOR	C
	AND	$1F
	OR	(HL)
	JR	NZ,NWD010
;
	LD	A,$0C
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
NWD010
	CALL	E3MVCL
	CALL	ENBGCKL
;
	LD	A,(FRCNT)
	RRA
	RRA
	AND	$01
	CALL	ENPTST
;
	CALL	E3XCHK
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	A,E
	XOR	$01
	LD	(HL),A
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	CP	NWCT
	JR	NZ,NWD090
;
	LD	HL,DJFLAG
;
	LD	A,(FRCNT)
	AND	$0F
	OR	(HL)
	JR	NZ,NWD090
;
	LD	A,NIWAT
	LD	E,$07
	CALL	ENIDSH2L
	JR	C,NWD090
;
	LD	A,$13
	LD	(SOUND2),A	;(S)
;
	LD	HL,ENSTAT
	ADD	HL,DE
	LD	(HL),$03
;
	LD	HL,ENZPSL
	ADD	HL,DE
	LD	(HL),$10
;
	LD	HL,ENMOD0
	ADD	HL,DE
	LD	(HL),%00010010
	LD	HL,ENMOD1
	ADD	HL,DE
	LD	(HL),%10000000
	LD	HL,ENMOD3
	ADD	HL,DE
	LD	(HL),%01000000
;
	PUSH	BC
;
	CALL	RNDSUB
	AND	$0F
	LD	C,A
	LD	HL,NWFLXP
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A
	LD	HL,NWFLYP
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),A
;
		ld	c,e
		ld	b,d
;;10/31;	PUSH	DE
;;10/31;	POP	BC
;
	LD	A,$18
	CALL	PSERCHL
;
	POP	BC
NWD090
	RET
;------------------------------------
NWFLY
	CALL	CRENPLL
;
	CALL	E3MVCL
;
	LD	A,(ENSVXL)
	CP	$A9
	JP	NC,E3CLER
;
	LD	A,(ENDSYP)
	CP	$91
	JP	NC,E3CLER
;
	LD	A,(FRCNT)
	RRA
	RRA
	AND	$01
	CALL	ENPTST
;
	LD	E,$00
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	A,(HL)
	AND	%10000000
	JR	Z,NWF090
	INC	E
NWF090
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	(HL),E
;
	JP	HABATAKI	;(S)
NWF0A0
	RET	
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	���@�o�o 				%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
BABA0CD
;0
	DB	$00,$00,$60,$01
	DB	$00,$08,$62,$01
	DB	$10,$00,$64,$02
	DB	$10,$08,$66,$02
;1
	DB	$00,$00,$68,$01
	DB	$00,$08,$6A,$01
	DB	$10,$00,$6C,$02
	DB	$10,$08,$6E,$02
;2
	DB	$00,$00,$62,$21
	DB	$00,$08,$60,$21
	DB	$10,$00,$66,$22
	DB	$10,$08,$64,$22
;3
	DB	$00,$00,$68,$01
	DB	$00,$08,$6A,$01
	DB	$10,$00,$6C,$02
	DB	$10,$08,$6E,$02
;;;KK;;;;0
;;;KK;;;	DB	$F0,$00,$60,$01
;;;KK;;;	DB	$F0,$08,$62,$01
;;;KK;;;	DB	$00,$00,$64,$02
;;;KK;;;	DB	$00,$08,$66,$02
;;;KK;;;;1
;;;KK;;;	DB	$F0,$00,$68,$01
;;;KK;;;	DB	$F0,$08,$6A,$01
;;;KK;;;	DB	$00,$00,$6C,$02
;;;KK;;;	DB	$00,$08,$6E,$02
;;;KK;;;;2
;;;KK;;;	DB	$F0,$00,$62,$21
;;;KK;;;	DB	$F0,$08,$60,$21
;;;KK;;;	DB	$00,$00,$66,$22
;;;KK;;;	DB	$00,$08,$64,$22
;;;KK;;;;3
;;;KK;;;	DB	$F0,$00,$68,$01
;;;KK;;;	DB	$F0,$08,$6A,$01
;;;KK;;;	DB	$00,$00,$6C,$02
;;;KK;;;	DB	$00,$08,$6E,$02
;=======================================
BABA0CS
	LD	A,(ENCHPT2)
	RLA
	RLA
;
	RLA
	RLA
	AND	%11110000
	LD	E,A
	LD	D,B
;
	LD	HL,BABA0CD
	ADD	HL,DE
;
	LD	C,$04
		jp	ENOMST
;;;;;;;;	CALL	ENOMST
;;;;;;;;;
;;;;;;;;	RET
;
;================================================================
;	���@���̃o�o�A
;================================================================
BABA0MV
		PUSH	BC
		SLA	C
		SLA	C
		LD	A,$00C
		LD	HL,ENOJSZ
		ADD	HL,BC
		INC	HL
		INC	HL
		LD	(HL),A
		LD	A,$00E
		INC	HL
		LD	(HL),A
		POP	BC
		LD	HL,ENYPSL
		ADD	HL,BC
		LD	A,$040
		LD	(HL),A
;
	CALL	BABA0CS
;
	LD	HL,ENCONT
	ADD	HL,BC
	INC	(HL)
	LD	A,(HL)
	RRA
	RRA
	RRA
	RRA
	AND	$03
	CALL	ENPTST
;
;;	CALL	E3STCK
;
	CALL	M3CROS
;
	LD	A,(ENSTAT2)
	RST	00
	DW	BB1000
	DW	BB1500
	DW	BB2000
	DW	BB3000
	DW	BB4000
	DW	BB5000
	DW	BB6000
	DW	BB7000
;--------------------------------------------
BB1000
	LD	A,(MSGEFG)
	AND	A
		ret	NZ
;;;;;;;;	JR	NZ,BB1030
;
BB1010
	LD	A,(KINOKFG)
	AND	A
	JR	Z,BB1013
;
	CALL	E3MSCK
	LD	A,E
	AND	A
		ret	Z
;;;;;;;;	JR	Z,BB1030
;
	LD	HL,ITEMB
	LD	A,(HL)
	CP	PMGIC
	JR	NZ,BB1012	; Use kinoko ?
;
	LD	A,(KEYA2)
	AND	%00100000
		ret	Z
;;;;;;;;	JR	Z,BB1030
;
	XOR	A
	LD	(DEMOFG),A
	LD	(ENSTFG),A
;
	JR	BB10123
;
BB1012
	INC	HL
	LD	A,(HL)
	CP	PMGIC
	JR	NZ,BB1013
;
	LD	A,(KEYA2)
	AND	%00010000
	RET	Z
;
BB10123
	LD	(HL),B
	JR	BBSUB
BB1013
	CALL	E3MSCK
	RET	NC
;
	LD	A,$0C	; ���̂���T���ė����I
		jp	MSGCHK
;;;;;;;;	CALL	MSGCHK
;;;;;;;;;
;;;;;;;;BB1030
;;;;;;;;	RET
;-------------------------------
BBSUB
	XOR	A
	LD	(KINOKFG),A
;
	CALL	LDTIM0
;;;KK;;;	LD	(HL),$04
	LD	(HL),$008
	JP  	STATINC
;--------------------------------------------
BB1500
		LD	A,(GMMODE)
		CP	GPLAY		;�Q�[�����H
		RET	NZ		;	NO --> return
		LD	A,(SBHR)
		CP	$004		;�t�F�[�h���H
		RET	NZ		;	YES --> return
;
		LD	A,$002
		LD	(PLSTOP),A
		LD	(ITEMNOT),A
;
		CALL	LDTIM0
		RET	NZ
;
		XOR	A
		LD	(ITEMNOT),A
		JP	STATINC
;--------------------------------------------
BB2000
		LD	A,(GMMODE)
		CP	GPLAY		;�Q�[�����H
		RET	NZ		;	NO --> return
		LD	A,(SBHR)
		CP	$004		;�t�F�[�h���H
		RET	NZ		;	YES --> return

;;;KK;;;	CALL	LDTIM0
;;;KK;;;	RET	NZ
;
	LD	A,$09  ; �������񂩂��I�R�b�ō�邵
	CALL	MSGCHK	
;
	CALL	LDTIM0
	LD	(HL),$C0
;
		jp	STATINC
;;;;;;;;	CALL	STATINC
;;;;;;;;BB2010
;;;;;;;;	RET
;--------------------------------------------
BB3000
	LD	A,(MSGEFG)
	AND	A
		ret	NZ
;;;;;;;;	JR	NZ,BB3030
;
	LD	A,(SNDSPD)
	AND	A
	JR	NZ,BB3001
;
	LD	A,(BGMNO)
	LD	(SOUND4),A	;(S)
;
	LD	A,$1
	LD	(SNDSPD),A	; Hi speed (S)
	LD	(ITEMNOT),A	; �\���L�[�ȊO�g���Ȃ�����
BB3001
	LD	(PLSTOP),A
;
	LD	HL,ENCONT
	ADD	HL,BC
	INC	(HL)
	INC	(HL)
	INC	(HL)
	INC	(HL)
;
	CALL	LDTIM0
	RET	NZ
;
	LD	(SNDSPD),A	; Hi speed (S) clear !
	LD	(ITEMNOT),A
;
	LD	A,(BGMNO)
	LD	(SOUND4),A	;(S)
;
	LD	A,$FE	; �ق� �ł�����������[�I
	CALL	MSGCHK
;
		jp	STATINC
;;;;;;;;	CALL	STATINC
;;;;;;;;BB3030
;;;;;;;;	RET
;--------------------------------------------
BB4000
	LD	A,(MSGEFG)
	AND	A
	RET	NZ
;
	LD	A,$2A
	LD	(DEMOTM),A
	LD	A,$03
	LD	(DEMOFG),A
;
	LD	D,PMGIC
	CALL	ITEMGET3
;
	LD	A,(TUBOCT)
	ADD	A,$20
	DAA
	LD	(TUBOCT),A
;
	LD	A,$0B
	LD	(CHTRF2),A	; Powder CHR tr.
;
	LD	A,$01
	LD	(SOUND1),A	;(S)
;
	CALL	STATINC
BB4030
;;	RET
;--------------------------------------------
BB5000
		LD	A,(TOURCT)
		AND	A		;���U�ɉ΂�t�����H
		RET	Z		;	NO --> return
		LD	A,(FADECT)
		AND	A		;���邭�Ȃ����H
		RET	NZ		;	NO --> return
		LD	A,(CGDMAF)
		AND	A		;�J���[�]���I�����Ă�H
		RET	NZ		;	NO --> return
		jp	STATINC
;;;;;;;;		CALL	STATINC
;
;--------------------------------------------
BB6000
		LD	A,$7E		;�܂ق��̂��΂΁i�΂𓔂������j
		CALL	MSGCH2
		JP	STATINC
;
;--------------------------------------------
BB7000
		RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�n�߂̕����̒j(�^�k�L)	�^����		%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
TANUKICD
	DB	$78,$02,$7A,$02	;0
	DB	$7A,$22,$78,$22	;1
	DB	$7C,$02,$7E,$02	;2 ����́I
	DB	$78,$02,$7A,$02	;3 ����́I
;
	DB	$70,$02,$72,$02	;��]�I
	DB	$74,$02,$76,$02
	DB	$76,$22,$74,$22
	DB	$72,$22,$70,$22
PAPA0CD
	DB	$5A,$22,$58,$22	;���ʂɗ����Ă���^����
	DB	$58,$02,$5A,$02
	DB	$50,$02,$52,$02
	DB	$50,$02,$52,$02
PAPA0C2
	DB	$54,$02,$56,$02	;�Q�Ă���^����
PAPA_FUTON
	DB	$7A,$07,$7C,$07
PPEDCD				;�G���f�B���O
	DB	$00,$00,$20,$02
	DB	$00,$08,$22,$02
	DB	$00,$00,$20,$02
	DB	$00,$08,$22,$02
PPEDCD2				;�G���f�B���O�i���̂��j
	DB	$F1,$FA,$2A,$02
	DB	$F1,$02,$2A,$22
	DB	$00,$00,$24,$02
	DB	$00,$08,$28,$02
;- - - - - - - - - - - - - - -
PAPA0MV
	LD	A,(GMMODE)
	CP	ENDG		; �G���f�B���O�H
	JR	NZ,PPED100	; �m�n
;
	LD	HL,ENMOD0
	ADD	HL,BC
	LD	(HL),%11000100
;
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,PPEDCD
;
	CP	$70
	JR	NZ,PPED030
;
	LD	HL,PPEDCD2
PPED030
	LD	C,$04
	CALL	ENOMST
;
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	CP	$70
	RET	Z
;
	INC	(HL)
PPED080
	RET
;
PPED100
	LD	A,(DJFLAG)
	AND	A
	JP	NZ,PAPA00
;- - - �n��̃^�k�L- - -
	LD	A,(DJSVBF)
	AND	%00010000
	JP	NZ,E3CLER
;
	LD	A,(ENSTAT2)
	AND	A
	JR	NZ,TN1012
;
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	RRA
	AND	$01
	CALL	ENPTST	
;
	LD	A,(PLYPSL)
	CP	$30
	JR	NC,TN1010
;
	LD	A,$01
	LD	(DAMASI),A	; ���܂�ON !
;
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	AND	$01
	ADD	A,$02
	CALL	ENPTST	
;
	JR	TN1012
TN1010
	LD	HL,ENWRK3
	ADD	HL,BC
	LD	(HL),B
TN1012
	LD	DE,TANUKICD
	CALL	EN2CST
;
	CALL	E3STCK
;
	LD	A,(ENSTAT2)
	RST	00
	DW	TN1000
	DW	TN2000
	DW	TN2800
	DW	TN3000
;	DW	TN4000
;----------------------------------------
TN1000
	CALL	M3CROS
;
	LD	A,(PLYPSL)
	CP	$20
	JR	NC,TN1020
;
	LD	HL,ENWRK3
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	NZ,TN1020
;
	LD	(HL),$01
;
	LD	A,$21
	JP  	MSGCHK	;�P�b�P�b�P�I
TN1020
	CALL	E3MSCK
	JR	NC,TN1080
;
	LD	A,(POWDRTM)
	AND	A
	RET	NZ
;
	LD	A,$0D	;�I
	JP  	MSGCHK
TN1080
	LD	HL,MSCRFG
	LD	(HL),B
	RET
;-------------------------------
TNSPPT
	DB	0,4,5,6,7,1
;
TN2000
	LD	A,$02
	LD	(PLSTOP),A
	XOR	A
	LD	(POWDRTM),A
;
	CALL	E3XYCK
	LD	A,E
	XOR	$01
	LD	(PLCMKI),A
	PUSH	BC
	CALL	PLPTSTL
	POP	BC
;
	LD	HL,ENWRK2
	ADD	HL,BC
	LD	E,(HL)
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	A,(HL)
	ADD	A,E
	LD	(HL),A
	JR	NC,TN2010
;
	LD	HL,ENWRK4
	ADD	HL,BC
	LD	A,(HL)
	INC	A
	CP	$06
	JR	NZ,TN2008
	XOR	A
TN2008
	LD	(HL),A
TN2010
	LD	HL,ENWRK4
	ADD	HL,BC
	LD	E,(HL)
	LD	D,B
	LD	HL,TNSPPT
	ADD	HL,DE
	LD	A,(HL)
	CALL	ENPTST
;
	CALL	LDTIM3
	JR	NZ,TN2090
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
	LD	A,(WORK3)
	LD	HL,ENZPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,ENWRK3
	ADD	HL,DE
	LD	(HL),$4C	;���������薳���I
;
	LD	HL,ENTIM0
	ADD	HL,DE
	LD	(HL),$20
;
	LD	A,$05+4
	CALL	ENPTST
;
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),B
;
	CALL	STATINC
;
	LD	A,(GRNDPT)
	LD	E,A
	LD	D,B
	LD	HL,GRRMSV
	ADD	HL,DE
	LD	A,(HL)
	OR	%00010000
	LD	(HL),A
	LD	A,$01
	LD	(PAPA0FG),A	; Henshin !!
	RET	
TN2090
	LD	HL,ENWRK2
	ADD	HL,BC
TN20A0
	LD	A,(FRCNT)
	AND	$01
	JR	NZ,TN20B0
;
	LD	A,(HL)
	CP	$F0
	JR	NC,TN20B0
;
	INC	(HL)	
TN20B0
	CALL	E3MVCL
	CALL	ENBGCKL
;
	CALL	LDTIM3
	CP	$06
	JR	NC,TN20C8
;
	LD	A,(ENSVYL)
	CP	$30
	JR	NC,TN20B1
;
	LD	(HL),$08
	JR	TN20C8
TN20B1
	LD	HL,ENZSPD
	ADD	HL,BC
	INC	(HL)
	NOP
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,TN20C0
	AND	%10000000
	JR	Z,TN20B8
	INC	(HL)
	INC	(HL)
TN20B8
	DEC	(HL)
TN20C0
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,TN2YC0
	AND	%10000000
	JR	Z,TN2YB8
	INC	(HL)
	INC	(HL)
TN2YB8
	DEC	(HL)
TN2YC0
	JP  	E3ZCLC
;- - - - - - - - - - - - - - -
TN20C8
	LD	HL,ENCBFG
	ADD	HL,BC
	LD	A,(HL)
	AND	$03
	JR	Z,TN20D0
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	A,(HL)
	CPL
	INC	A
	LD	(HL),A	
;
	LD	A,$09
	LD	(SOUND1),A	;(S)
TN20D0
	LD	HL,ENCBFG
	ADD	HL,BC
	LD	A,(HL)
	AND	$0C
	JR	Z,TN20E0
;
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	A,(HL)
	CPL
	INC	A
	LD	(HL),A	
;
	LD	A,$09
	LD	(SOUND1),A	;(S)
TN20E0
;
;- - - - - - - - - - - - - - - - -
	CALL	LDTIM3
	CP	$60
	JR	NC,TN20CA
;
	LD	A,(FRCNT)
	AND	$03
	JR	NZ,TN20CA
;
	LD	HL,ENXSPD
	CALL	TNSDUP
;
	LD	HL,ENYSPD
TNSDUP
	ADD	HL,BC
	LD	A,(HL)
	CP	$30
	JR	Z,TN20CA
	CP	$D0
	JR	Z,TN20CA
;
	LD	E,$01
	BIT	7,A
	JR	Z,TN20C9
	LD	E,$FF
TN20C9
	ADD	A,E
	LD	(HL),A
TN20CA
	RET
;-------------------------------
TN2800
		LD	A,$002
		LD	(PLSTOP),A
;
	CALL	E3ZCLC
	LD	HL,ENZSPD
	ADD	HL,BC
	DEC	(HL)
;
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	AND	%10000000
		ret	Z
;;;;;;;;	JR	Z,TN2810
;
	LD	(HL),B
;
	XOR	A
	LD	(ITEMNOT),A
;
	LD	A,$23
	LD	(SOUND1),A	;(S) ��Ƃ��I
;
	CALL	BGMSET	;(S)
;
	CALL	LDTIM0
	LD	(HL),$40
;
	CALL	E3XYCK
	ADD	A,$04+4
	CALL	ENPTST
;
	CALL	E3XCHK
	ADD	A,$12
	CP	$24
	JR	NC,TN2808
;
	CALL	E3YCHK
	ADD	A,$12
	CP	$24
	JR	NC,TN2808	;�����N�ɂ݂����H
;				;yes !
	LD	HL,ENWRK0
	ADD	HL,BC
;;;KK;;;	LD	(HL),$01	;�����薳���I
	LD	(HL),$80	;�����薳���I
TN2808
		jp	STATINC
;;;;;;;;	CALL	STATINC
;;;;;;;;TN2810
;;;;;;;;	RET
;-------------------------------
TN3000
	CALL	LDTIM0
	CP	$01
	JR	NZ,TN3008
;
	LD	A,$0A	; �ӂ����A�A
		jp	MSGCHK
;;;;;;;;	CALL	MSGCHK
;;;;;;;;;
;;;;;;;;	RET
;
; - - - - - - - - - - -
TN3008
;;;KK;;;	AND	A
;;;KK;;;	JR	NZ,TN3080
		AND	A
		JR	Z,TN3009
		LD	A,$002
		LD	(PLSTOP),A
		ret
;;;;;;;;		JR	TN3080
;
TN3009
;
	LD	A,(FRCNT)
	AND	%00011111
	JR	NZ,TN3010
;
	CALL	E3XYCK
	ADD	A,$04+4
	CALL	ENPTST
TN3010
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	NZ,TN3020
;
	CALL	M3CROS
;
TN3020
	CALL	E3MSCK
		ret	NC
;;;;;;;;	JR	NC,TN3080
;	
	LD	A,$0B	;���΂炭�₷�񂾂狏�̂��I
		jp	MSGCHK
;;;;;;;;	CALL	MSGCHK
;;;;;;;;TN3080
;;;;;;;;	RET
;
;
;==================================================
ZZZCD
	DB	$78,$00
;==�Ƃ̒�=====
PAPA00
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,PP0M01	; ZZZ?
;				; YES !
	LD	DE,ZZZCD
	CALL	EN1CST
;
	CALL	E3STCK
;
	CALL	E3MVCL
;
	CALL	LDTIM0
	JP	Z,E3CLER
;
	AND	%00010000
	LD	E,$01
	JR	Z,ZZZ010
	LD	E,$FF
ZZZ010
	LD	A,(FRCNT)
	AND	$01
	JR	NZ,ZZZ020
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	A,(HL)
	ADD	A,E
	LD	(HL),A
ZZZ020
	RET
; - - - - - - - - - - - - - - - -
PP0M01
	LD	A,(MARINFG)
	AND	A
	JR	NZ,TAR010
;
	LD	A,(WARPSV+$02)
	AND	%00000010
	JP	NZ,E3CLER	
;
	LD	A,(MEGAF)
	CP	$04
	JP	NC,E3CLER	;�o�i�i�ȏ�I
;
TAR010
	LD	A,(PAPA0FG)
	AND	A
	JR	NZ,PP0M08	;Tanuki ?
;				; Yes!
	LD	A,(KENLEV)	;
	AND	A		;���������Ă���H
	JP	NZ,E3CLER	;�Ƃ̒��͂��Ȃ��I YES --> E3CLER
;
PP0M08
	LD	A,(MARINFG)
	AND	A
	JR	NZ,PPZSET
;
	LD	A,(PAPA0FG)
	AND	A
	JR	Z,PP0M09	;�ƁH
;				;yes !
	CP	$01
	JR	NZ,PP0M09	;�Q�Ă�H
;				;YES !
PPZSET
	LD	HL,ENXPSL
	ADD	HL,BC
	LD	(HL),$18
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	(HL),$34
	CALL	ENPSSV
;
		LD	A,(CGBFLG)
		AND	A
		JR	Z,PPZSET_100
		LD	DE,PAPA_FUTON
		CALL	EN2CST		; �z�c�Z�b�g
PPZSET_100
	LD	DE,PAPA0C2
	JR	PP0M11
PP0M09
	CALL	FLUTCS	;�o�i�ior�h�b�O�t�[�h OAM SET
;
	LD	A,(FRCNT)
	AND	%00011111
	JR	NZ,PP0M10
;
	CALL	E3XYCK
	LD	HL,ENCHPT
	ADD	HL,BC
	LD	(HL),E
PP0M10
	LD	DE,PAPA0CD
PP0M11
	CALL	EN2CST
PP0M11_100
	CALL	E3STCK
;
	CALL	M3CROS	
;
PPM1190
	LD	A,(ENSTAT2)
	RST	00
	DW	PPM1000
	DW	PPM2000
	DW	PPM3000
	DW	PPM4000
	DW	PPM5000
;-----------------------------------
;;;KK;;;BANANA_COL_DAT
;;;KK;;;	DW	$7fff,$0fbe,$0213,$0000
;
PPM1000
	LD	A,(TATLEV)
	AND	A
	JR	Z,PP0M001
;
	CALL	STATINC
	LD	(HL),$03
;
;;;KK;;;		LD	A,(PAPA0FG)	;�o�i�i�J���[�Z�b�g�H
;;;KK;;;		CP	$02		;	NO --> return
;;;KK;;;		RET	NZ		;
;;;KK;;;		LD	A,(MEGAF)	;
;;;KK;;;		CP	$04		;
;;;KK;;;		RET	NC		;
;;;KK;;;;
;;;KK;;;		LD	A,$002
;;;KK;;;		LD	(SVBK),A
;;;KK;;;		LD	HL,OBCGWK+(($007*$004)*$002)
;;;KK;;;		LD	DE,BANANA_COL_DAT
;;;KK;;;BANANA_COL_LOOP
;;;KK;;;		LD	A,(DE)
;;;KK;;;		LD	(HLI),A
;;;KK;;;		INC	DE
;;;KK;;;		LD	A,L
;;;KK;;;		AND	$007
;;;KK;;;		JR	NZ,BANANA_COL_LOOP
;;;KK;;;		XOR	A
;;;KK;;;		LD	(SVBK),A
;
	RET
;
PP0M001
	LD	A,(PLYPSL)
	CP	$7B
	JR	C,PP0M20
;
	SUB	$2
	LD	(PLYPSL),A
;
	LD	A,$00
	JP	MSGCHK
PP0M20
	CALL	E3MSCK
		ret	NC
;;;;;;;;	JR	NC,PP0M010
;
	LD	A,$54
	CALL	MSGCHK	; 
;
		jp	STATINC
;;;;;;;;	CALL	STATINC
;;;;;;;;PP0M010
;;;;;;;;	RET
;
;-----------------------------------
TATE_COL
	DW	$47ff,$5231,$28c5,$0000
;
PPM2000
	LD	A,(MSGEFG)
	AND	A
		ret	NZ
;;;;;;;;	JR	NZ,PPM2090
;
	CALL	LDTIM0
	LD	(HL),$80
;
	LD	A,$10
	LD	(SOUND4),A	;(S)
;
		LD	A,(CGBFLG)
		AND	A
		JR	Z,PPM2080
		LD	HL,OBCGWK+(($007*$004)*$002)
		LD	DE,TATE_COL
TETA_COL_LOOP
		LD	A,(DE)
		LD	(HLI),A
		INC	DE
		LD	A,L
		AND	$007
		JR	NZ,TETA_COL_LOOP
		LD	A,OBJCOL_BITFG
		LD	(CGDMAF),A
;
PPM2080
		jp	STATINC
;;;;;;;;	CALL	STATINC
;;;;;;;;PPM2090
;;;;;;;;	RET
;-----------------------------------
TATCD
	DB	$86,$17
;
PPM3000
	CALL	LDTIM0
	JR	NZ,PPM3010
;
	LD	(ITEMNOT),A	
;
	LD	D,PTATE
	CALL	ITEMGET3
;
	LD	A,$01
	LD	(TATLEV),A
;
	LD	A,$22
	LD	(PLCHPT),A	; �|����|�[�Y
;
	LD	A,$91  ;55
	CALL	MSGCHK
	JP  	STATINC
PPM3010
	LD	A,(PLXPSL)
	LD	(ENSVXL),A
	LD	A,(PLYPSL)
	SUB	$0C
	LD	(ENDSYP),A
;
	XOR	A
	LD	(ENCHPT2),A
;
	LD	DE,TATCD
	CALL	EN1CST
;
	CALL	ENPSSV
;
	LD	A,$6C  ;
	LD	(PLCHPT),A
;
	LD	A,$02
	LD	(PLSTOP),A
;
	LD	A,$03
	LD	(PLCMKI),A
	RET
;-----------------------------------
PPM4000
	LD	A,(PAPA0FG)
	AND	A
	JR	Z,PPM4020	;�ƁH
;				; YES !
	CP	$01
	JR	Z,PPM4001	;�o�i�i�H���Ă�I
;				;YES !
	CALL	E3MSCK
	JR	NC,PPM400F
;
	LD	A,(MARINFG)
	AND	A
	LD	A,$DD	;�n�`�͂������育�肾�I
	JR	NZ,PPM4120
;
	LD	A,(MEGAF)
	CP	$03
	JR	NZ,PPM4110	;�h�b�O�t�[�h�����Ă�H
;				;YES !
	LD	A,$C5
	CALL	MSGCH2
;
PPM400F
	LD	A,(MARINFG)
	AND	A
	JR	NZ,PPM40ZZ
	RET
PPM4110
	LD	A,$C5
PPM4120
		jp	MSGCH2
;;;;;;;;	CALL	MSGCH2
;;;;;;;;	RET
;
PPM4001
	CALL	E3MSCK
	JR	NC,PPM4006
;
	LD	A,(WARPSV)
	BIT	1,A
	LD	A,$11
	JR	Z,PPM4002	;Dundeon 1 cleard ?
;				; yes !
	LD	A,$10
PPM4002
	CALL	MSGCHK
PPM4006
	JR	PPM40A0
;---------------------------------------
PPM4020
	CALL	E3MSCK
		ret	NC
;;;;;;;;	JR	NC,PPM4080
;
	LD	A,$55
		jp	MSGCHK
;;;;;;;;	CALL	MSGCHK
;;;;;;;;PPM4080
;;;;;;;;	RET
;-----------------------------------
PPM40A0
	LD	A,(PAPA0FG)
	CP	$01
	JR	NZ,PPM40C0
;				;YES !
PPM40ZZ
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	ADD	A,$07
	LD	(HL),A
	JR	NC,PPM40C0	; ZZZ SET ?
;				; YES !
ZZZSET
	LD	A,PAPA0
	CALL	ENIDSHL
;
	LD	A,(WORK0)
	ADD	A,$06
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A	
;
	LD	A,(WORK1)
	SUB	$03
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),A	
;
	LD	HL,ENWRK1
	ADD	HL,DE
	LD	(HL),$1
;
	LD	HL,ENXSPD
	ADD	HL,DE
	LD	(HL),$FF
;
	LD	HL,ENYSPD
	ADD	HL,DE
	LD	(HL),$FD
;
	LD	HL,ENTIM0
	ADD	HL,DE
	LD	(HL),$30
;
	LD	HL,ENMOD0
	ADD	HL,DE
	LD	(HL),%11000001
;
	LD	HL,ENMOD1
	ADD	HL,DE
	LD	(HL),%00000000
PPM40C0
	RET
;---------------------------------------
PPM5000
	LD	A,(MSGEFG)
	AND	A
	JR	NZ,PPM5060
;
	LD	A,(MSANSR)
	AND	A
	JR	NZ,PPM5020	;�C�F�X�I
;
	LD	A,$04
	LD	(MEGAF),A	;�o�i�i�Ƃ�������!
;
	LD	A,$0D
	LD	(CHTRF2),A	;�]���I
;
	CALL	YOSSISET
	JR	PPM5030
PPM5020
	LD	A,$C9
	CALL	MSGCH2
;
PPM5030
	CALL	STATINC
	LD	(HL),B
PPM5060
	RET
;&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
;&	�o�i�i			 &
;&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
BANCD
	DB	$74,$07,$76,$07
KANCD
	DB	$70,$00,$72,$00
FLUTCS
	LD	A,(PAPA0FG)
	CP	$02
	RET	NZ
;
	LD	A,(MEGAF)
	CP	$04
	JR	NC,FLTC30	;
;
	LD	A,$78
;
	LD	DE,BANCD	;�o�i�i�Z�b�g�I
	JR	FLTC50
FLTC30
	LD	A,(DJSVBF)
	AND	%00100000
	RET	Z
;				;YES !
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	(HL),$4B
;
	LD	DE,KANCD	;�󂫊ʃZ�b�g�I
;
	LD	A,$7C
FLTC50
	LD	(ENSVXL),A
;
	LD	A,$5C
	LD	(ENDSYP),A
;
	XOR	A
	LD	(ENCHPT2),A
;
	CALL	EN2CST
	CALL	ENPSSV
;
	LD	HL,ENCHPT
	ADD	HL,BC
	LD	A,(HL)
	LD	(ENCHPT2),A
FLTC90
	RET
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�n�߂̕����̏�	�}����			%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
GIRL0CD
	DB	$60,$01,$62,$01
	DB	$62,$21,$60,$21	;	�O
;
	DB	$64,$01,$66,$01
	DB	$66,$21,$64,$21	;	��
;
	DB	$68,$01,$6A,$01
	DB	$6C,$01,$6E,$01	;	��
;
	DB	$6A,$21,$68,$21
	DB	$6E,$21,$6C,$21 ;	�E

;- - - - - - - - - - - - - - - - - 
GIRL0CDG
	DB	$68,$01,$6A,$01
	DB	$6A,$21,$68,$21	;	�O
;
	DB	$66,$01,$66,$21
	DB	$66,$01,$66,$21	;	��
;
	DB	$6C,$01,$6E,$01
	DB	$6C,$01,$6E,$01	;	��
;
	DB	$6E,$21,$6C,$21
	DB	$6E,$21,$6C,$21 ;	�E

;- - - �S �p - - -
	DB	$60,$01,$62,$01	;8
	DB	$64,$01,$64,$21	;9
	DB	$62,$21,$60,$21	;A
GLUTAPT
	DB	8,8,8,9,$A,$A,$A,9
OPSTXD3
	DB	$08,$F8
OPSTXS3
	DB	$06,$01
;- - - - - - - - - - - - - - - - - - - -
GIRL0MV
	LD	A,(GMMODE)
	CP	ENDG
	JP	Z,GR0END
;
	LD	A,(MARINFG)
	AND	A
	JP	NZ,E3CLER
;
	LD	A,(DJFLAG)
	AND	A
	JP	NZ,GIRLD00
;====�����̑O===========================================
	LD	A,(KENLEV)
	AND	A
	JP	Z,E3CLER	; Ken cach 	?
;				; yes !
	LD	A,(GRNDPT)
	CP	$C0
	JR	C,GGCK10	;�������H
;				;YES !
	JR	GGM002
;
GGCK10
	LD	A,(GRRMSV+$08)
	AND	%00010000
	JR	NZ,GGM002	;���̏�~��ꂽ�H
;
	LD	A,(MEGAF)
	CP	$07	;�p�C���I
	JP	NC,E3CLER
;
GGM002
		PUSH	BC
		SLA	C
		RL	B
		SLA	C
		RL	B
		LD	HL,ENOJSZ
		ADD	HL,BC
		INC	HL
		INC	HL
		LD	(HL),$008
		INC	HL
		LD	(HL),$00B
		POP	BC
;
	LD	A,(FRCNT)
	AND	%00011111
	JR	NZ,GGM020
;
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	(HL),$03
;
	CALL	E3XCHK
	ADD	A,$14
	CP	$28
	JR	NC,GGM020
;
	CALL	E3YCHK
	ADD	A,$14
	CP	$28
	JR	NC,GGM020
;
	CALL	E3XYCK
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	(HL),E
GGM020
	CALL	M3PTST
;
	LD	A,(UTAFLG)
;;	AND	A
	CP	$01
	JR	NZ,GGM021	;�̉S���H
;				;YES!
	CALL	LDTIM1
	JR	NZ,GGM021	;���b�Z�[�W�H
;
GR0END
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	RRA
	AND	$07
	LD	E,A
	LD	D,B
	LD	HL,GLUTAPT
	ADD	HL,DE
	LD	A,(HL)
	LD	(ENCHPT2),A
;
	LD	A,(FRCNT)
	ADD	A,$10
	AND	$1F
	JR	NZ,GGM021 
;
	LD	A,ONPU
	CALL	ENIDSHL
	JR	C,GGM021 
;
	LD	A,(WORK1)
	LD	HL,ENYPSL
	ADD	HL,DE
	SUB	$08
	LD	(HL),A
;
	PUSH	BC
;
	LD	A,(FRCNT)
	ADD	A,$10
	RRA
	RRA
	RRA
	RRA
	RRA
	AND	$01
	LD	C,A
	LD	HL,OPSTXD3
	ADD	HL,BC
	LD	A,(WORK0)
	ADD	A,(HL)
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A
	LD	HL,OPSTXS3
	ADD	HL,BC
	LD 	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,ENYSPD
	ADD	HL,DE
	LD	(HL),$FC
;
	LD	HL,ENCONT
	ADD	HL,DE
	LD	(HL),$40
;
	POP	BC	
;
GGM021
	LD	A,C
	LD	(MAINDX),A
;
	LD	DE,GIRL0CDG
	CALL	EN2CST
;
	CALL	M3CROS
;
		ld	a,(GMMODE)
		cp	GMAP
		ret	z		; �}�b�v��ʁ@�H
;					; No !!
		cp	GPLAY
		ret	nz		; �Q�[�����[�h�@�H
;					; No !!
		ld	a,(SBHR)
		cp	004
		ret	nz		; �t�F�[�h���@�H
;					; No !!
	LD	A,(ENSTAT2)
	RST	00
	DW	GGM1000
	DW	GGM2000	
	DW	GGM3000	
	DW	GGM4000	
	DW	GGM5000	
	DW	GGM6000	
;-------------------------------------
GGM1000
	LD	A,(GRNDPT)
	CP	$C0
	JR	NC,GGM10021
;
	LD	A,(UTAFLG)
	AND	A
		ret	NZ		;���ł͂������Ă�Ƃ��͖��������I
;;;;;;;;	JP	NZ,GGM1010	;���ł͂������Ă�Ƃ��͖��������I
GGM10021
	CALL	E3MSCK
		ret	NC
;;;;;;;;	JP	NC,GGM1010
;
	LD	A,(GRRMSV+$08)
	AND	%00010000
	JR	Z,GGMS002	;���̏�~��ꂽ�H
;
	LD	HL,GRRMSV+$92
	LD	A,(HL)
	AND	%01000000
	JR	NZ,GGMS001
;
	SET	6,(HL)
;
	LD	A,$94	;�������͂ǂ����I
	JP	MSGCH2	
;
GGMS001
	LD	A,(ONPUFG)
	AND	%00000100
	JR	Z,GSMS002
;--------------------------------------------
GSM1000
	LD	A,$95	;�ǂ����ɂ������Ⴄ�̂�
	JP	MSGCH2	
;--------------------------------------------
GSMS002
	LD	E,$0B
	LD	HL,ITEMB
GSM1001
	LD	A,(HLI)
	CP	POKAR
	JR	Z,GGMS002	; �I�J���i�����Ă�H
;				; Yes !
	DEC	E
	LD	A,E
	CP	$FF
	JR	NZ,GSM1001
	JR	GSM1000
;--------------------------------------------
GGMS002
	CALL	LDTIM1
	LD	(HL),$10
;
	LD	D,$2F
	LD	E,$03
;
	LD	A,(PAPA0FG)
	AND	A
	JR	Z,GGM1008	;�^�k�L�����₶�ɕϐg�H
;				;YES !
	LD	E,$06	;�^�����͒��Q�I
;
	CP	$02
	JR	NZ,GGM100F	;�^�����N����H
;				;YES!
	LD	E,$05
;
	LD	A,(GRNDPT)
	CP	$C0
	JR	C,GGM100F
;
	PUSH	DE
	CALL	BGMSET  	;(S)
	POP	DE
;
	LD	HL,ENWRK2
	ADD	HL,BC
	LD	(HL),B ;$01	;�������傩�炤�����Ă�I
;
	LD	E,$92
GGM100F
	PUSH	BC
;
	LD	C,$0B
	LD	HL,ITEMB
GGM1001
	LD	A,(HLI)
	CP	POKAR
	JR	NZ,GGM1002	; �I�J���i�����Ă�H
;				; Yes !
	LD	E,$04
	LD	D,$4A	;���̓I�J�V�C�H
;
	LD	A,(ONPUFG)
	AND	%00000100
	JR	Z,GGM1003	;�����f�B�[�o�����H
;				;YES !
	LD	E,$05
	LD	D,$2F
;
	LD	A,(GRNDPT)
	CP	$C0
	JR	C,GGM1003	;�������H
;				;YES!
	LD	E,$92
;
	JR	GGM1003
GGM1002
	DEC	C
	LD	A,C
	CP	$FF
	JR	NZ,GGM1001
;
GGM1003
	POP	BC
GGM1008
	LD	A,E
	CP	$80
	JR	C,GGM1009
	CALL	MSGCH2
	JR	GGM100A
GGM1009
	CALL	MSGCHK
;
GGM100A
	LD	A,(GRNDPT)
	CP	$C0
	JR	C,GGM100B	;�������H
;				;YES!
	LD	HL,ENWRK2
	ADD	HL,BC
	LD	(HL),B ;$01	;�������傩�炤�����Ă�I
;
	PUSH	DE
	CALL	BGMSET  	;(S)
	POP	DE
GGM100B
	LD	HL,ENWRK3
	ADD	HL,BC
	LD	(HL),D
;
		jp	STATINC
;;;;;;;;	CALL	STATINC
;;;;;;;;GGM1010
;;;;;;;;	RET
;-------------------------------------
GGM2000
	CALL	E3STCK
;
	LD	HL,ENWRK3
	ADD	HL,BC
	LD	D,(HL)
;
	LD	HL,ENWRK2
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	LD	A,D
	JR	NZ,GGM2003	;BGM  �Z�b�g�����H
;				; NO!
	INC	(HL)
;
	LD	(SOUND4),A	;(S)
	LD	(BGMNO),A
	LD	(BGMNO2),A	
;
	LD	HL,UTAFLG
	LD	(HL),$01
GGM2003
	CP	$4A
	JR	NZ,GGM2008	;�I�J���i�����Ă��H
;				;YES !
	LD	A,(ONPUFG)
	AND	%00000100
	JR	NZ,GGM2008	;�Ȃ��o�����H
;				;NO!
	CALL	STATINC
;
	XOR	A
	LD	(BGMCNT),A
	LD	(BGMCNT2),A
	RET
;
GGM2008
	CALL	STATINC
	LD	(HL),B
GGM2010
	RET
;-------------------------------------
GGM3000
		LD	A,$02
		LD	(PLSTOP),A
		LD	(ITEMNOT),A
;
	PUSH	BC
	CALL	PLPTSTL
	POP	BC
;
	LD	A,(BGMCNT2)
	CP	$07
	JR	NZ,GGM3010
;
	LD	A,(BGMCNT)
	CP	$E8
	JR	NZ,GGM3010
;
	LD	A,$16
	CALL	MSGCHK
;
	PUSH	BC
	CALL	PLPTSTL
	POP	BC
;
	XOR	A
	LD	(BGMCNT),A
	LD	(BGMCNT2),A
;
	CALL	SOUNDCLR	;(S)
	JP  	STATINC
GGM3010
	CALL	E3XYCK
	LD	A,E
	XOR	$01
	LD	(PLCMKI),A
;
	LD	A,(BGMCNT)
	ADD	A,$01
	LD	(BGMCNT),A
	LD	E,A
;
	LD	A,(BGMCNT2)
	ADC	A,$00
	LD	(BGMCNT2),A
	LD	D,A
;
	LD	A,(BGMCNT2)
	CP	$07
	JR	NZ,GGM3080
;
	LD	A,(BGMCNT)
	CP	$E0
	JR	C,GGM3080
;
	XOR	A
	LD	(UTAFLG),A
;
	RET
GGM3080
	LD	HL,UTAFLG
	LD	(HL),$01
;
	LD	A,E
	SRL	D
	RRA
	SRL	D
	RRA
	SRL	D
	RRA
	SRL	D
	RRA
;
	CP	$1D
	JR	C,GUTA10
	CP	$3B
	JR	NC,GUTA10
;
GUTA08
	INC	(HL)	;UTAFLG=2  : �}�����x���I
GUTA10
	CP	$1D
	RET	C
;
	LD	A,$00
	LD	(PLCHPT),A
;
	LD	A,(FRCNT)
;
	LD	E,$75
	AND	$40
	JR	Z,GOKAR030
	INC	E
GOKAR030
	LD	A,E
	LD	(PLCHPT),A
;
	LD	A,(FRCNT)
	AND	$1F
	JR	NZ,GOKAR090
;
	LD	A,ONPU
	CALL	ENIDSHL
	JR	C,GOKAR090
;
	LD	A,(PLYPSL)
	LD	HL,ENYPSL
	ADD	HL,DE
	SUB	$08
	LD	(HL),A
;
	PUSH	BC
;
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	RRA
	RRA
	AND	$01
	LD	C,A
	LD	B,D
	LD	HL,OPSTXD3
	ADD	HL,BC
	LD	A,(PLXPSL)
	ADD	A,(HL)
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A
	LD	HL,OPSTXS3
	ADD	HL,BC
	LD 	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,DE
	LD	(HL),A
;
	POP	BC
;
	LD	HL,ENYSPD
	ADD	HL,DE
	LD	(HL),$FC
;
	LD	HL,ENCONT
	ADD	HL,DE
	LD	(HL),$40
GOKAR090
	RET
;
;-------------------------------------
GGM4000
	LD	A,(MSGEFG)
	AND	A
	JR	NZ,GBM4070
;
	CALL	STATINC
;
	LD	A,(MSANSR)
	AND	A
	JR	NZ,GBM4010	;���ڂ����H
;				;YES !
		ld	a,001
		ld	(OMHNFG),a
	LD	A,$10
	LD	(SOUND4),A	;(S)
;
	LD	A,:GGM4000
	CALL	OKARINA_COLST_SUB
;
	CALL	LDTIM0
	LD	(HL),$80
;
	RET
GBM4010
	LD	A,$15
	CALL	MSGCHK	;���[���I ���ڂ��Ă�I
;
	CALL	STATINC
	LD	(HL),$01
;
	LD	HL,ENWRK2
	ADD	HL,BC
	LD	(HL),B
;
GBM4070
	RET
;-------------------------------------
MFUECD3
	DB	$90,$17
;- - - - - - - - - - - - -
GGM5000
		ld	a,001
		ld	(OMHNFG),a
	CALL	LDTIM0
	JR	NZ,GMU6010
;
	LD	A,(MSGEFG)
	AND	A
	RET	NZ
;
	LD	HL,ONPUFG
	SET	2,(HL)	;�o�����I
;
	XOR	A
	LD	(FUESLPT),A
;
	CALL	STATINC
	LD	A,(GRNDPT)
	CP	$C0
	JR	C,GMU6002	;�������H
;
	LD	(HL),B
GMU6002
		XOR	A
		LD	(ITEMNOT),A
;
	LD	A,(GRNDPT)
	CP	$C0
	JR	NC,GMU600E
;
	LD	A,$14
	JP	MSGCHK
GMU600E
	LD	A,$93
	JP	MSGCH2
;------------------------------
GMU6010
	CP	$08
	JR	NZ,GMU6030
;
	DEC	(HL)
;
	LD	A,$13
	CALL	MSGCHK
GMU6030
	LD	A,$6C  ;
	LD	(PLCHPT),A
;
	LD	A,$02
	LD	(PLSTOP),A
;
	LD	A,(PLXPSL)
	LD	(ENSVXL),A
	LD	A,(PLYPSL)
	SUB	$0C
	LD	(ENDSYP),A
;
	LD	DE,MFUECD3
	XOR	A
	LD	(ENCHPT2),A
		jp	EN1CST
;;;;;;;;	CALL	EN1CST
;;;;;;;;	RET
;-------------------------------------
GGM6000
	LD	A,(MSGEFG)
	AND	A
	RET	NZ
;
	CALL	E3MSCK
	RET	NC
;
	LD	A,$97
	JP	MSGCH2
;====�����̒�===========================================
TEGAMICD
	DB	$5C,$00,$5C,$20
;
GIRLD00
	LD	A,(MEGAF)
	CP	$07
	JR	C,G0M006	;�N�}�ɉ�����H
;				;YES �莆�I
	LD	A,(GRRMSV+$FD)
	AND	%00110000
	JP	NZ,E3CLER	;�Z�C�E�`�G���h�H
;
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	(HL),$60
	LD	HL,ENXPSL
	ADD	HL,BC
	LD	(HL),$7A
;
	LD	DE,TEGAMICD
	CALL	EN2CST
;
	CALL	E3STCK
;
	CALL	E3MSCK
		ret	NC
;;;;;;;;	JR	NC,G0M001
;
	LD	A,$D7	;�莆�I
		jp	MSGCH2
;;;;;;;;	CALL	MSGCH2
;;;;;;;;G0M001
;;;;;;;;	RET
;
G0M006
	LD	A,(KENLEV)
	AND	A
	JP	NZ,E3CLER
;
	LD	A,(TATLEV)
	AND	A
	JR	Z,G0M008
;
	LD	HL,ENSTAT
	ADD	HL,BC
	LD	A,$03
	LD	(HL),A
	LD	(ENSTAT2),A
G0M008
	LD	A,(ENSTAT2)
	AND	A
	JR	NZ,G0M010	; Initial ?
;				; yes !
	CALL	LDTIM3
	LD	(HL),$7F
;
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	(HL),$01
;
	LD	HL,ENXPSL
	ADD	HL,BC
	LD	A,(HL)
	SUB	$08
	LD	(HL),A
;
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	A,(HL)
	SUB	$08
	LD	(HL),A
;
	LD	(ITEMNOT),A
;
		jp	STATINC
;;;;;;;;	CALL	STATINC
;;;;;;;;	RET
;- - - - - - - - - - - - - - - - - 
G0M010	
	LD	A,(FRCNT)
	AND	%00011111
	JR	NZ,G0M020
;
	CALL	E3XYCK
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	(HL),E
G0M020
	CALL	M3PTST
;
	LD	DE,GIRL0CD
	CALL	EN2CST
;
	LD	A,(ENSTAT2)
	DEC	A
	RST	00
	DW	G0M10000	; Auto demo 
	DW	G0M20000	; Link speak !
	DW	G0M30000
;	DW	G0M40000
;	DW	G0M50000
;------------------------------------------
GLINKCD				;�����N���x�b�g�̏�ł��Ȃ��Ă�
	DB	$40,$07,$42,$07
	DB	$42,$27,$40,$27
	DB	$44,$00,$46,$00
	DB	$48,$00,$4A,$00
	DB	$48,$00,$4C,$00
GLINKCD_BED			;�z�c�̉��n
	DB	$00,$00,$4E,$06	; ��
	DB	$00,$08,$4E,$26	; �E
GLINKPT
	DB	3,3,3,3,3,4,3,4
	DB	3,3,3,2,2,2,2,2
	DB	0,0,1,1,0,0,1,1
	DB	0,0,1,1,0,0,1,1
;- - - - - - - - - - - - - - - -
G0M10000
	CALL	LDTIM3
	JR	NZ,G0M1010
;
	LD	A,$01
	CALL	MSGCHK
;
	LD	(HL),$40
;
	CALL	STATINC
	XOR	A
G0M1010
	RRA
	RRA
	AND	$01F
	LD	E,A
	LD	D,B
	LD	HL,GLINKPT
	ADD	HL,DE
	LD	A,(HL)
;
GLINKCS
	LD	(ENCHPT2),A
	LD	A,$38
	LD	(ENSVXL),A
	LD	(PLXPSL),A
	LD	A,$34
	LD	(ENDSYP),A
	LD	(PLYPSL),A
;
	LD	A,$02
	LD	(PLSTOP),A
	LD	A,$FF
	LD	(PLCHPT),A
;
	LD	DE,GLINKCD
	CALL	EN2CST
;
		LD	A,(CGBFLG)
		AND	A
		JR	Z,GLINKCS_100
;
		LD	HL,GLINKCD_BED
		LD	C,$2
		CALL	ENOMST
GLINKCS_100
;
		jp	ENPSSV
;;;;;;;;	CALL	ENPSSV
;;;;;;;;;
;;;;;;;;	RET
;- - - - - - - - - - - - - - - -
G0M20000
	LD	A,$03
	CALL	GLINKCS
;
	CALL	LDTIM0
	LD	HL,MSGEFG
	OR	(HL)
	JR	NZ,G0M2010
;
	LD	A,(KEYA1)
	AND	$0F
	JR	Z,G0M2010
;
	CALL	STATINC
;
	LD	A,$01
	LD	(PLZPSL),A
	LD	A,$02
	LD	(PLJPFG),A
	LD	A,$12
	LD	(PLZSPD),A
	LD	A,$0C
	LD	(PLXSPD),A
	XOR	A
	LD	(PLYSPD),A
;
	LD	A,$0
	LD	(PLCMKI),A
	LD	(PLSTOP),A
;
	LD	A,$01
	LD	(BEDOFF),A
G0M2010
	RET
;- - - - - - - - - - - - - - - -
G0M30000
	CALL	E3STCK
;
	CALL	M3CROS	
;
	CALL	E3MSCK
		ret	NC
;;;;;;;;	JR	NC,G0M3010
;
	LD	A,$02
		jp	MSGCHK	; 
;;;;;;;;	CALL	MSGCHK	; 
;;;;;;;;G0M3010
;;;;;;;;	RET
;=====================================
ITEMGET3
	LD	HL,ITEMB
	LD	E,$0C
PTG3E0
	LD	A,(HLI)
	CP	D
	JR	Z,PTG330	; Allready have ?
	DEC	E		
	JR	NZ,PTG3E0
;				; no
	LD	HL,ITEMB
;;	LD	E,$00
PTG310
	LD	A,(HL)
	AND	A
	JR	NZ,PTG320
;
	LD	(HL),D  ;$4
	RET
PTG320
	INC	HL
	INC	E
	LD	A,E
	CP	$0C
	JR	NZ,PTG310
PTG330
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	������					%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	������					%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	������					%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	������					%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
IKADJCD
	DB	$60,$00,$62,$00
	DB	$62,$20,$60,$20	;	�O
;
	DB	$64,$00,$66,$00
	DB	$66,$20,$64,$20	;	��
;
	DB	$68,$00,$6A,$00
	DB	$6C,$00,$6E,$00	;	��
;
	DB	$6A,$20,$68,$20
	DB	$6E,$20,$6C,$20 ;	�E
;- - - - - - - - - - - - - - - - - 
IKADAMV
	LD	A,(DJFLAG)
	AND	A
	JR	Z,IKD0000	; �Ƃ̒��H
;--���₶����--			; Yes !
	LD	A,(FRCNT)
	AND	%00011111
	JR	NZ,OYJI00
;
	CALL	E3XYCK
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	(HL),E
;
OYJI00
	CALL	M3PTST
;
	LD	DE,IKADJCD
	CALL	EN2CST
;
	CALL	E3STCK
;
	CALL	M3CROS	
;
	LD	A,(ENSTAT2)
	RST	00
	DW	IKJ1000
	DW	IKJ2000
	DW	IKJ3000
;=========================================
IKJ1000
	LD	A,(IKADAFG)
	AND	A
	JR	NZ,IKJ3000
;
	CALL	E3MSCK
		ret	NC
;;;;;;;;	JR	NC,IKJ090
;
	LD	A,$F0
	CALL	MSGCHK	; Ikada ha dounkane ?
;	
		jp	STATINC
;;;;;;;;	CALL	STATINC
;;;;;;;;IKJ090
;;;;;;;;	RET
;=========================================
IKJ2000
	LD	A,(MSGEFG)
	AND	A
		ret	NZ
;;;;;;;;	JR	NZ,IKJ2010
;
	CALL	STATINC
;
	LD	A,(MSANSR)
	AND	A
	JR	Z,IKJ010
;
	LD	(HL),B
	RET
IKJ010
	LD	A,(COINC2)
	SUB	$0
	LD	A,(COINC1)
	SBC	A,$1
	JR	C,IKJ2020	; Have 100 Rupy ?
;				; Yes !
	LD	A,$64
	LD	(COIND2),A
;
	LD	A,$F1
	LD	(IKADAFG),A
		jp	MSGCHK	; Souka Yaritamae !
;;;;;;;;	CALL	MSGCHK	; Souka Yaritamae !
;;;;;;;;IKJ2010
;;;;;;;;	RET
;================================================
IKJ2020
	LD	(HL),B
;
	LD	A,$4E
	JP  	MSGCHK	; Fuzakeruna !
;=========================================
IKJ3000
	CALL	E3MSCK
		ret	NC
;;;;;;;;	JR	NC,IKJ390
;
	LD	A,$F1
		jp	MSGCHK	; Hayoike!
;;;;;;;;	CALL	MSGCHK	; Hayoike!
;;;;;;;;IKJ390
;;;;;;;;	RET
;
;====����������=============================================
IKADACD
	DB	$5C,$01,$5C,$21
	DB	$5E,$01,$5E,$21
; - - - - - - - - - - - - - - - - -
IKD0000
	LD	HL,ENWRK3
	ADD	HL,BC
	LD	A,(IKADAFG)
	OR	(HL)
	JR	NZ,IKD100	;���������H
;				;NO!
	LD	E,ENNO-1
	LD	D,B
IKCK100
	LD	A,E
	CP	C
	JR	Z,IKCK190
;
	LD	HL,ENMODE
	ADD	HL,DE
	LD	A,(HL)
	AND	A
	JR	Z,IKCK190
;
	LD	HL,ENMYNO
	ADD	HL,DE
	LD	A,(HL)
	CP	IKADA
	JP	Z,E3CLER	;���ɂ���������H
;				;NO!
IKCK190
	DEC	E
	LD	A,E
	CP	$FF
	JR	NZ,IKCK100
;
	LD	DE,IKADACD
	CALL	EN2CST
;
	CALL	E3STCK
;
	JP	M3CROS
IKD100
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	RRA
	AND	$01
	CALL	ENPTST
;
	LD	A,(PLXPSL)
	LD	HL,ENSVXL
	SUB	(HL)
	ADD	A,$10
	CP	$20
	JR	NC,IKD0010
;
	LD	A,(PLYPSL)
	LD	HL,ENSVYL
	SUB	(HL)
	ADD	A,$14
	CP	$1C
	JR	NC,IKD0010
;
	LD	A,$80
	LD	(MSCRFG),A	; Item use OK !!
;
	LD	A,(PLXPSL)
	LD	HL,ENXPSL
	ADD	HL,BC
	LD	(HL),A
IKD0010
	LD	A,(HASGFG)
	AND	A
	JR	Z,IKD3060
;
	CALL	STATINC
	LD	(HL),B
	JR	IKDCST
IKD3060
	LD	A,(ENSTAT2)
	RST	00
	DW	IKD1000
	DW	IKD2000
	DW	IKD3000
;==========================================
IKD1000	; On ikada check 
;;	CALL	CRENPSL
;;	JR	NC,IKD1090
	CALL	E3XCHK
	ADD	A,$08
	CP	$10
	JR	NC,IKD1090
;
	CALL	E3YCHK
	ADD	A,$09
	CP	$12
	JR	NC,IKD1090
;
	CALL	STATINC
;
IKD1090
	JR	IKDCST
;==========================================
IKD2000	; On ikada !!
	LD	A,(ENSVXL)
	LD	(PLXPSL),A
	LD	A,(ENDSYP)
	SUB	$05
	LD	(PLYPSL),A
;
	CALL	STATINC
;
	LD	HL,ENWRK3
	ADD	HL,BC
	LD	(HL),$01
;
	XOR	A
	LD	(IKADAFG),A
;-------------------------------------
IKDON
	LD	A,$01
	LD	(IKADAON),A
;
IKDCST
	CALL	ENPSSV
;
	LD	DE,IKADACD
	JP	EN2CST
;==========================================
IKD3000
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	RRA
	AND	$01
	LD	(PLDSYD),A
;
	LD	A,(GRNDPT)
	LD	HL,ENGRPT
	ADD	HL,BC
	LD	(HL),A
;
	LD	A,(PLXPSL)
	LD	HL,ENXPSL
	ADD	HL,BC
	LD	(HL),A
;
	LD	A,(PLYPSL)
	LD	HL,ENYPSL
	ADD	HL,BC
	ADD	A,$05
	LD	(HL),A
;
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	(HL),B
;
	LD	A,(PLMODE)
	CP	PTOBI
	JR	NZ,IKD3050
;
	LD	A,(PLZPSL)
	LD	(HL),A
IKD3050
	JR	IKDON
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%					%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
M3CROS
	CALL	CRENPSL
	JR	NC,M320E0
;
M3CRSB
	CALL	PLPSRV
;
	CALL	DUSHCL2
;
	LD	A,(PFUCKID)
	AND	A
	JR	Z,M320E0
;	
	LD	E,A
	LD	D,B
	LD	HL,ENMYNO-1
	ADD	HL,DE
	LD	A,(HL)
	CP	FUCKS
	JR	NZ,M320E0
;
	LD	HL,ENSTAT-1	; Fuck return
	ADD	HL,DE
	LD	(HL),$00
M320E0
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%					%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
M3MVPT
	DB	$06,$04,$02,$00
;
M3PTST
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	E,(HL)
;;	LD	E,A
	LD	D,B ;$0
	LD	HL,M3MVPT
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
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	���b�Z�[�W�`�F�b�N					%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
E3MSCK
	LD	E,B
;
		LD	A,(ENMYNO2)
		CP	BABA0
		JR	NZ,E3M_100
		LD	A,(PLYPSL)
		LD	HL,ENSVYL
		SUB	(HL)
		ADD	A,$014
		CP	$02B
		JR	E3MC090
E3M_100
;
	LD	A,(PLYPSL)
	LD	HL,ENSVYL
	SUB	(HL)
	ADD	A,$14
	CP	$28
E3MC090
	JR	NC,E3C0A0
;
	LD	A,(PLXPSL)
	LD	HL,ENSVXL
	SUB	(HL)
	ADD	A,$10
	CP	$20
	JR	NC,E3C0A0
;
	INC	E
;
	LD	A,(ENMYNO2)
	CP	WANWAN
	JR	Z,E3C022
;
	PUSH	DE
	CALL	E3XYCK
	LD	A,(PLCMKI)
	XOR	$01
	CP	E
	POP	DE
	JR	NZ,E3C0A0
;
E3C022
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
	JR	NZ,E3C0A0
;
	LD	A,(WNDYPS)
	CP	$80
	JR	NZ,E3C0A0
;
	LD	A,(KEYA2)
	AND	%00010000
	JR	Z,E3C0A0
;
	SCF
	RET
E3C0A0
	AND	A	; (C) reset !
	RET
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�X�C�b�`�œ����g���b�v			%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
SWTRPMV
;;	RET
;===============================================
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	��   �{�X				%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
BFISHIT
;	LD	HL,ENLIFE
;	ADD	HL,BC
;	LD	(HL),$10
;
;;	CALL	LDTIM0
;;	LD	(HL),$FF
;	LD	HL,ENTIM3
;	ADD	HL,BC
	CALL	LDTIM3
	LD	(HL),$C0
;
	LD	A,$18
	LD	(BSINDX2),A	; Ishi down x pos initial !
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	��   �{�X							%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
BFISHMV
	LD	HL,ENWRK2
	ADD	HL,BC
	LD	A,(HL)
	RST	0
	DW	BFISHSB
	DW	ISHIMV	;����
	DW	AWAMV	;����
	DW	SFISHMV	;�v�N�v�N
;------------------------------------
BFISHSB
	CALL	BSSDCK
;
	CALL	BFISHCS
;
	LD	A,(ENMODE2)
	CP	EMOVE
	JR	Z,BFS0000
;
	LD	(MUTEKI),A	; Player muteki flag !
;
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	A,(HL)
	RST	00
	DW	BFSF100
	DW	BFSF200
;============================================
BFSF100
	CALL	LDTIM0
	LD	(HL),$FF
;
	LD	HL,ENFLSH
	ADD	HL,BC
	LD	(HL),$FF
;
	JP	WRK1INC
;============================================
BFSF200
	CALL	LDTIM0
	JP	Z,BFSF230
;
	LD	HL,ENFLSH
	ADD	HL,BC
	LD	(HL),A
;
	CP	$80
		ret	NC
;;;;;;;;	JR	NC,BFSF210
;
		jp	ESMRN3
;;;;;;;;	CALL	ESMRN3
;;;;;;;;BFSF210
;;;;;;;;	RET
BFSF230
	CALL	HARTBS3
;
	LD	HL,ENTIM4
	ADD	HL,DE
	LD	(HL),$08	; Water up protect !
	RET
;============================================
;============================================
;============================================
;============================================
;============================================
;============================================
;============================================
;   Big fish main 
;============================================
SFSTXD
	DB	$F8,$A8
SFSTXS
	DB	$08,$F8
;
BFS0000
	CALL	E3STCK
;
	LD	HL,ENTIM2
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,BFS0008	; Ishi down time ?
;				; yes !
	AND	$3F
	JR	NZ,BFS0008
;
	LD	A,BFISH
	LD	E,$04
	CALL	ENIDSH2L
	JR	C,BFS0010
;
	LD	HL,ENMOD0
	ADD	HL,DE
	LD	(HL),%00000010
;
	LD	HL,ENMOD1
	ADD	HL,DE
	LD	(HL),%10000000
;
	LD	HL,ENMOD3
	ADD	HL,DE
	LD	(HL),%01000000
;
	LD	HL,ENWRK2
	ADD	HL,DE
	LD	(HL),$01
;
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	A,(BSINDX2)
	LD	(HL),A
	ADD	A,$20
	LD	(BSINDX2),A
	CP	$A8
	JR	C,ISS010
;
	LD	A,$08
	LD	(BSINDX2),A
ISS010
	CALL	RNDSUB
	LD	HL,ENCONT
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),$00
BFS0008
	LD	A,(BSINDX)
	INC	A
	LD	(BSINDX),A
	AND	$7F
	JR	NZ,BFS0010	; Awa set time ?
;				; Yes !
	LD	A,BFISH
	LD	E,$04
	CALL	ENIDSH2L
	JR	C,BFS0010
;
	LD	HL,ENMOD0
	ADD	HL,DE
	LD	(HL),%01000001
;
	LD	HL,ENWRK2
	ADD	HL,DE
	LD	(HL),$02
;
	LD	A,(WORK0)
	SUB	$14
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	A,(WORK1)
	SUB	$04
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),A
;
BFS0010
	LD	HL,ENLIFE
	ADD	HL,BC
	LD	A,(HL)
	CP	$0A
	JR	NC,BFS0020
;
	LD	A,(BSINDX)
	ADD	A,$40
	AND	$FF
	JR	NZ,BFS0020	; Pukupuku set time ?
;				; yes !
	LD	A,BFISH
	LD	E,$04
	CALL	ENIDSH2L
	JR	C,BFS0020
;
	LD	HL,ENMOD2
	ADD	HL,DE
	LD	(HL),D
;
	LD	HL,ENMOD0
	ADD	HL,DE
	LD	(HL),%00000010
;
	LD	HL,ENMOD3
	ADD	HL,DE
	LD	(HL),D ;%00000000
;
	LD	HL,ENLIFE
	ADD	HL,DE
	LD	(HL),D ;$01
;
	LD	HL,ENWRK2
	ADD	HL,DE
	LD	(HL),$03
;
	CALL	RNDSUB
	AND	$3F
	ADD	A,$20
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),A
;
	PUSH	BC
;
	AND	$01
	LD	C,A
;
	LD	HL,SFSTXD
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A
	LD	HL,SFSTXS
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,ENTIM0
	ADD	HL,DE
	LD	(HL),$40	; Limit check not time !
;
	POP	BC
BFS0020
;================================================
	CALL	ENHNCL	
;
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	INC	(HL)
;
	RRA
	RRA
	RRA
	RRA
	AND	$01
	LD	HL,ENCHPT
	ADD	HL,BC
	LD	(HL),A
;
	LD	A,(ENSVXL)
	SUB	$10
	LD	(ENSVXL),A
;
	LD	A,(ENDSYP)
	SUB	$10
	LD	(ENDSYP),A
;
	LD	HL,ENMOD1
	ADD	HL,BC
	LD	(HL),%00000000
	CALL	ENSZST	; Size set
	CALL	CRKNENL	; Head ken cross
;
	CALL	ENPSSV
;
	LD	HL,ENMOD1
	ADD	HL,BC
	LD	(HL),%00010100
	CALL	ENSZST	; Size set
	CALL	CRENPLL		; Body cros check !
;--------------------------------------------------------
	LD	A,(ENSTAT2)
	RST	00
	DW	BFS1000	; Down down
	DW	BFS2000 ; Atack !
	DW	BFS3000	; Back
;-------------------------------------------
BFSYSD
	DB	$08,$F8
BFSYLM
	DB	$60,$18
;- - - - - - - - - - - - - -
BFS1000
;;	CALL	LDTIM0
;;	JR	NZ,BFS1008
;	LD	HL,ENTIM3
;	ADD	HL,BC
;	LD	A,(HL)
;	AND	A
	CALL	LDTIM3
	JR	NZ,BFS1008
;
	CALL	LDTIM0
	LD	(HL),$80
;
	CALL	STATINC
;
	CALL	RNDSUB
	AND	$1F
	ADD	A,$60
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	(HL),A
	RET
BFS1008
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	E,(HL)
	LD	D,B
;
	LD	HL,BFSYLM
	ADD	HL,DE
	LD	A,(ENDSYP)
	CP	(HL)
	JR	NZ,BFS1010
;
	LD	A,E
	XOR	$01
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	(HL),A
BFS1010
	LD	HL,BFSYSD
	ADD	HL,DE
	LD	A,(HL)
;
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),A
;
		jp	E3YCLC	
;;;;;;;;	CALL	E3YCLC	
;;;;;;;;;
;;;;;;;;	RET
;-------------------------------------------
BFS2000
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	INC	(HL)
	INC	(HL)
;
	CALL	LDTIM0
	CP	$60
	JR	NZ,BFS2078
;
	LD	HL,SOUND2
	LD	(HL),$0D	;(S)�U�����I
BFS2078
		ret	NC
;;;;;;;;	JR	NC,BFS2080
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),$D0
	CALL	E3XCLC
;
	LD	A,(ENSVXL)
	CP	$18
		ret	NC
;;;;;;;;	JR	NC,BFS2080
;
	LD	A,$30
	LD	(TILTCT),A
	XOR	A
	LD	(TILTMK),A
;
;;	LD	A,$0C
;;	LD	(SOUND3),A	;(S)
	CALL	BBSDST	;(S)
;
	LD	HL,ENTIM2
	ADD	HL,BC
	LD	(HL),$FF
;
		jp	STATINC
;;;;;;;;	CALL	STATINC
;;;;;;;;BFS2080
;;;;;;;;	RET
;-------------------------------------------
BFS3000
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	INC	(HL)
;
	LD	A,(TILTCT)
	AND	A
	JR	NZ,BFS3090
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),$20
	CALL	E3XCLC
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(ENSVXL)
	CP	(HL)
	JR	C,BFS3090
;
;	CALL	LDTIM0
;	CALL	RNDSUB
;	AND	$7F
;	ADD	A,$80
;	LD	(HL),A
;
	CALL	LDTIM3
	CALL	RNDSUB
	AND	$1F	
	ADD	A,$40
;	LD	HL,ENTIM3
;	ADD	HL,BC
	LD	(HL),A
;
	CALL	STATINC
	LD	(HL),B
BFS3090
	RET
;===========================================
;;;KK;;;BFISHCD
;;;KK;;;;0
;;;KK;;;	DB	$F0,$F0,$40,$00
;;;KK;;;	DB	$F0,$F8,$42,$00
;;;KK;;;	DB	$F0,$00,$44,$04
;;;KK;;;	DB	$F0,$08,$46,$14
;;;KK;;;	DB	$F0,$10,$48,$14
;;;KK;;;	DB	$F0,$18,$4A,$14
;;;KK;;;;
;;;KK;;;	DB	$00,$F0,$4C,$00
;;;KK;;;	DB	$00,$F8,$4E,$00
;;;KK;;;	DB	$00,$00,$50,$10
;;;KK;;;	DB	$00,$08,$52,$14
;;;KK;;;	DB	$00,$10,$54,$14
;;;KK;;;	DB	$00,$18,$56,$14
;;;KK;;;	DB	$00,$20,$58,$14
;;;KK;;;;
;;;KK;;;	DB	$10,$F8,$5A,$14
;;;KK;;;	DB	$10,$00,$5C,$14
;;;KK;;;	DB	$10,$08,$5E,$14
;;;KK;;;	DB	$10,$10,$60,$14
;;;KK;;;	DB	$10,$18,$62,$14
;;;KK;;;	DB	$10,$20,$64,$14
;;;KK;;;;
;;;KK;;;	DB	0,0,$FF,$00	; Dammy
;;;KK;;;;1
;;;KK;;;	DB	$F0,$F0,$66,$00
;;;KK;;;	DB	$F0,$F8,$42,$00
;;;KK;;;	DB	$F0,$00,$44,$04
;;;KK;;;	DB	$F0,$08,$46,$14
;;;KK;;;	DB	$F0,$10,$48,$14
;;;KK;;;	DB	$F0,$18,$4A,$14
;;;KK;;;;
;;;KK;;;	DB	$00,$F0,$68,$00
;;;KK;;;	DB	$00,$F8,$4E,$00
;;;KK;;;	DB	$00,$00,$50,$10
;;;KK;;;	DB	$00,$08,$52,$14
;;;KK;;;	DB	$00,$10,$54,$14
;;;KK;;;	DB	$00,$18,$56,$14
;;;KK;;;	DB	$00,$20,$6A,$14
;;;KK;;;;
;;;KK;;;	DB	$10,$F8,$5A,$14
;;;KK;;;	DB	$10,$00,$5C,$14
;;;KK;;;	DB	$10,$08,$5E,$14
;;;KK;;;	DB	$10,$10,$60,$14
;;;KK;;;	DB	$10,$18,$62,$14
;;;KK;;;	DB	$10,$20,$6C,$14
;;;KK;;;BFISHCD2
;;;KK;;;;0
;;;KK;;;	DB	$F0,$18,$4A,$14
;;;KK;;;	DB	$F0,$08,$46,$14
;;;KK;;;	DB	$F0,$10,$48,$14
;;;KK;;;	DB	$F0,$F8,$42,$00
;;;KK;;;	DB	$F0,$00,$44,$04
;;;KK;;;	DB	$F0,$F0,$40,$00
;;;KK;;;;
;;;KK;;;	DB	$00,$20,$58,$14
;;;KK;;;	DB	$00,$08,$52,$14
;;;KK;;;	DB	$00,$10,$54,$14
;;;KK;;;	DB	$00,$18,$56,$14
;;;KK;;;	DB	$00,$F8,$4E,$00
;;;KK;;;	DB	$00,$00,$50,$10
;;;KK;;;	DB	$00,$F0,$4C,$00
;;;KK;;;;
;;;KK;;;	DB	$10,$20,$64,$14
;;;KK;;;	DB	$10,$10,$60,$14
;;;KK;;;	DB	$10,$18,$62,$14
;;;KK;;;	DB	$10,$00,$5C,$14
;;;KK;;;	DB	$10,$08,$5E,$14
;;;KK;;;	DB	$10,$F8,$5A,$14
;;;KK;;;;
;;;KK;;;	DB	0,0,$FF,$00	; Dammy
;;;KK;;;;1
;;;KK;;;	DB	$F0,$18,$4A,$14
;;;KK;;;	DB	$F0,$08,$46,$14
;;;KK;;;	DB	$F0,$10,$48,$14
;;;KK;;;	DB	$F0,$F8,$42,$00
;;;KK;;;	DB	$F0,$00,$44,$04
;;;KK;;;	DB	$F0,$F0,$66,$00
;;;KK;;;;
;;;KK;;;	DB	$00,$20,$6A,$14
;;;KK;;;	DB	$00,$08,$52,$14
;;;KK;;;	DB	$00,$10,$54,$14
;;;KK;;;	DB	$00,$18,$56,$14
;;;KK;;;	DB	$00,$F8,$4E,$00
;;;KK;;;	DB	$00,$00,$50,$10
;;;KK;;;	DB	$00,$F0,$68,$00
;;;KK;;;;
;;;KK;;;	DB	$10,$20,$6C,$14
;;;KK;;;	DB	$10,$10,$60,$14
;;;KK;;;	DB	$10,$18,$62,$14
;;;KK;;;	DB	$10,$00,$5C,$14
;;;KK;;;	DB	$10,$08,$5E,$14
;;;KK;;;	DB	$10,$F8,$5A,$14
;- - - - - - - - - - - - - - - - - - - -
BFISHCD
;0
	DB	$F0,$F0,$40,$07
	DB	$F0,$F8,$42,$07
	DB	$F0,$00,$44,$07
	DB	$F0,$08,$46,$16
	DB	$F0,$10,$48,$16
	DB	$F0,$18,$4A,$16
;
	DB	$00,$F0,$4C,$07
	DB	$00,$F8,$4E,$07
	DB	$00,$00,$50,$16	;7
	DB	$00,$08,$52,$16
	DB	$00,$10,$54,$16
	DB	$00,$18,$56,$16
	DB	$00,$20,$58,$16
;
	DB	$10,$F8,$5A,$16
	DB	$10,$00,$5C,$16
	DB	$10,$08,$5E,$16
	DB	$10,$10,$60,$16
	DB	$10,$18,$62,$16
	DB	$10,$20,$64,$16
;
	DB	0,0,$FF,$00	; Dammy
;1
	DB	$F0,$F0,$66,$07
	DB	$F0,$F8,$42,$07
	DB	$F0,$00,$44,$07
	DB	$F0,$08,$46,$16
	DB	$F0,$10,$48,$16
	DB	$F0,$18,$4A,$16
;
	DB	$00,$F0,$68,$07
	DB	$00,$F8,$4E,$07
	DB	$00,$00,$50,$16	;3
	DB	$00,$08,$52,$16
	DB	$00,$10,$54,$16
	DB	$00,$18,$56,$16
	DB	$00,$20,$6A,$16
;
	DB	$10,$F8,$5A,$16
	DB	$10,$00,$5C,$16
	DB	$10,$08,$5E,$16
	DB	$10,$10,$60,$16
	DB	$10,$18,$62,$16
	DB	$10,$20,$6C,$16
BFISHCD2
;0
	DB	$F0,$18,$4A,$16
	DB	$F0,$08,$46,$16
	DB	$F0,$10,$48,$16
	DB	$F0,$F8,$42,$07
	DB	$F0,$00,$44,$07
	DB	$F0,$F0,$40,$07
;
	DB	$00,$20,$58,$16
	DB	$00,$08,$52,$16
	DB	$00,$10,$54,$16
	DB	$00,$18,$56,$16
	DB	$00,$F8,$4E,$07
	DB	$00,$00,$50,$16	;3
	DB	$00,$F0,$4C,$07
;
	DB	$10,$20,$64,$16
	DB	$10,$10,$60,$16
	DB	$10,$18,$62,$16
	DB	$10,$00,$5C,$16
	DB	$10,$08,$5E,$16
	DB	$10,$F8,$5A,$16
;
	DB	0,0,$FF,$00	; Dammy
;1
	DB	$F0,$18,$4A,$16
	DB	$F0,$08,$46,$16
	DB	$F0,$10,$48,$16
	DB	$F0,$F8,$42,$07
	DB	$F0,$00,$44,$07
	DB	$F0,$F0,$66,$07
;
	DB	$00,$20,$6A,$16
	DB	$00,$08,$52,$16
	DB	$00,$10,$54,$16
	DB	$00,$18,$56,$16
	DB	$00,$F8,$4E,$07
	DB	$00,$00,$50,$16	;7
	DB	$00,$F0,$68,$07
;
	DB	$10,$20,$6C,$16
	DB	$10,$10,$60,$16
	DB	$10,$18,$62,$16
	DB	$10,$00,$5C,$16
	DB	$10,$08,$5E,$16
	DB	$10,$F8,$5A,$16
;- - - - - - - - - - - - - - - - - - - -
BFISHCS
	LD	A,(ENCHPT2)
	SLA	A
	SLA	A
;
	SLA	A
	SLA	A
	LD	E,A
	SLA	A
	SLA	A
	ADD	A,E
	LD	E,A
	LD	D,B
	LD	HL,BFISHCD
	LD	A,(FRCNT)
	AND	$01
	JR	Z,BFCS10
	LD	HL,BFISHCD2
BFCS10
	ADD	HL,DE
;
	LD	C,19
	CALL	ENOMST
;
	LD	A,19
		jp	NXOMSBL
;;;;;;;;	CALL	NXOMSBL
;;;;;;;;	RET
;===========================================
AWACD
	DB	$72,$00
	DB	$72,$20
;- - - - - - - - - - - - - -
AWAMV
	LD	DE,AWACD
	CALL	EN1CST
;
	CALL	E3STCK
;
	LD	HL,ENCONT
	ADD	HL,BC
	INC	(HL)
;
	LD	A,(HL)
	RRA
	RRA
	RRA
	AND	$01
	CALL	ENPTST
;
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	AND	%00110000
	JR	Z,AWM090
;
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),$F8
;
	CALL	E3YCLC
AWM090
	LD	A,(ENDSYP)
	CP	$10
	JP	C,E3CLER
	RET
;------------------------------------
ISHICD
	DB	$74,$05,$76,$05
	DB	$76,$25,$74,$25
;- - - - - - - - - - - - - - - -
ISHIMV
	LD	DE,ISHICD
	CALL	EN2CST
;
	CALL	E3STCK
;
	CALL	ENHNCL
;
;;	LD	A,(FRCNT)
	LD	HL,ENCONT
	ADD	HL,BC
	INC	(HL)
	LD	A,(HL)
	PUSH	AF
	RRA
	RRA
	RRA
	RRA
	AND	%01
	CALL	ENPTST
;
	CALL	CREPKEL
;
	POP	AF
	LD	E,$FC
	AND	%00010000
	JR	Z,ISIM10
	LD	E,$04
ISIM10
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),E
;
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),$0C
	CALL	E3MVCL
;
	LD	A,(ENDSYP)
	CP	$8B
	JP	NC,E3CLER
;
	RET
;------------------------------------
SFISHCD
	DB	$78,$03,$7A,$03
	DB	$7C,$03,$7E,$03
SFYADT
	DB	$01,$FF
SFYLMT
	DB	$08,$F8
;- - - - - - - - - - - - - - - -
SFISHMV
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	A,(HL)
	CPL
	RRA
	RRA
	AND	%00100000
	LD	(ENFLCL),A	
;
	LD	DE,SFISHCD
	CALL	EN2CST
;
	CALL	E3STCK
;
	CALL	ENHNCL
;
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	RRA
	AND	%01
	CALL	ENPTST
;
	CALL	CREPKEL
;
	LD	A,(FRCNT)
	AND	$03
	JR	NZ,SFM010
;
	LD	HL,ENSTAT
	ADD	HL,BC
	LD	A,(HL)
	AND	$01
	LD	E,A
	LD	D,B
;
	LD	HL,SFYADT
	ADD	HL,DE
	LD	A,(HL)
;
	LD	HL,ENYSPD
	ADD	HL,BC
	ADD	A,(HL)
	LD	(HL),A
;
	LD	HL,SFYLMT
	ADD	HL,DE
	CP	(HL)
	JR	NZ,SFM010
;
	CALL	STATINC
SFM010
	CALL	E3MVCL
;
	CALL	LDTIM0
	JR	NZ,SFM090
;
	LD	A,(ENSVXL)
	CP	$A8
	JP	NC,E3CLER
;
SFM090
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	��   �{�X				%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
BDCHD10
	DB	%00000111,%00000000
	DB	%00001111,%00000111
	DB	%00011110,%00001111
	DB	%00111111,%00011000
	DB	%00111111,%00010000
	DB	%00111111,%00010100
	DB	%00111111,%00010000
	DB	%00100111,%00011011
BDCHD11
	DB	%11100000,%00000000
	DB	%11110000,%11100000
	DB	%00011000,%11110000
	DB	%10001100,%01111000
	DB	%10001100,%01110000
	DB	%00111111,%11000000
	DB	%11111111,%00111110
	DB	%11101111,%11110001
BDCHD20
	DB	%00000000,%00000000
	DB	%00000000,%00000000
	DB	%00000000,%00000000
	DB	%00000000,%00000000
	DB	%00000000,%00000000
	DB	%00000000,%00000000
	DB	%00000011,%00000000
	DB	%00000111,%00000011
BDCHD21
	DB	%00000000,%00000000
	DB	%00000000,%00000000
	DB	%00000000,%00000000
	DB	%00000000,%00000000
	DB	%00000000,%00000000
	DB	%00111111,%00000000
	DB	%11111111,%00111110
	DB	%11101111,%11110001
;=====================================================
BBIRDIT
	LD	HL,ENMOD3
	ADD	HL,BC
	LD	A,(HL)
	AND	%01111111
	LD	(HL),A
;
	LD	E,ENNO-1
	LD	D,B
BBI000
	LD	HL,ENMODE
	ADD	HL,DE
	LD	(HL),B	; Another enemy clear !
	DEC	E
	LD	A,E
	CP	$01
	JR	NZ,BBI000
;
	LD	A,(BIRDFG)
	AND	A
	JR	Z,BBI0F0	; 2 kaime ?
;				; yes only bird set !
	LD	A,$05
	CALL	PBSET
	CALL	BIRDSET2	
;
	LD	HL,ENSTAT
	ADD	HL,DE
	LD	(HL),BDM8
;
	LD	HL,ENTIM0
	ADD	HL,DE
	LD	(HL),$60
;
	LD	A,$01 ;$F0		; Boss ON chr TR.
	LD	(CHTRF2),A ;TOURFG),A
;
	CALL	STATINC
	LD	(HL),$04	; Taiki !!
;
	LD	A,$C0
	LD	(ENYPSL),A
	RET
;- - - - - - - - - - - - - - - - - -
BBI0F0
	LD	A,$02 ;F1		; Boss not chr TR.
	LD	(CHTRF2),A ;TOURFG),A
	LD	(BIRDFG),A
;
	CALL	LDTIM0
	LD	(HL),$80
;
	LD	E,$0C
	XOR	A
	LD	HL,BGUNDT+$90
BBI010
	LD	(HLI),A
	DEC	E
	JR	NZ,BBI010
;
	LD	A,$02
	LD	(BDATNO),A
;
	LD	A,$5C
	LD	(SOUND4),A	;(S)
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	��   �{�X				%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
BZITXD
	DB	$10,$F0
;
BBIRDMV
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	RST	00
	DW	ZAKOMV	; Man
	DW	BIRDMV	; Bird
	DW	ZKBDMV	; Zako bird
	DW	HANEMV	; Hane shot
;===========================================
ZAKOMV
	LD	A,(ENSTAT2)
	RST	0
	DW	ZKM0000
	DW	ZKM1000
	DW	ZKM2000
	DW	ZKM3000
	DW	ZKM4000
ZKM0090
	RET
;-------------------------------------
ZKM0000
	CALL	ZAKOCS
;
	LD	A,(ENMODE2)
	CP	EMOVE
	JR	NZ,ZKM0090
;- - Zako tori set - - -
	LD	A,$02
ZBI010
	LD	(ENHELP),A
;
	LD	A,BBIRD
	CALL	ENIDSHL
;
	PUSH	BC
;
	LD	A,(ENHELP)
	LD	C,A
;
	LD	HL,BZITXD-1
	ADD	HL,BC
	LD	A,(WORK0)
	ADD	A,(HL)
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	A,(WORK1)
	SUB	$10
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),A
;
	POP	BC
;
	LD	HL,ENWRK0
	ADD	HL,DE
	LD	(HL),$02	; Zako bird !
;
	LD	A,(ENHELP)
	DEC	A
	JR	NZ,ZBI010
;
	CALL	LDTIM0
	LD	(HL),$43
;
	JP	STATINC
;------------------------------------
ZKM1000
	CALL	ZAKOCS
;
	CALL	E3STCK
;
	LD	A,$02
	LD	(PLSTOP),A
;
	CALL	LDTIM0
	AND	A
	JR	Z,BIRDSET
	CP	$20
;;	CP	$3E
		ret	NZ
;;;;;;;;	JR	NZ,ZKM1010
;
	LD	A,(PLYPSL)
	PUSH	AF
	LD	A,$10
	LD	(PLYPSL),A
	LD	A,$BA
	CALL	MSGCHK
	POP	AF
	LD	(PLYPSL),A
	RET
;
BIRDSET
	LD	A,$54
	LD	(SOUND4),A	;(S)
;
BIRDSET2
	LD	A,BBIRD
	CALL	ENIDSHL
;
	LD	HL,ENLIFE
	ADD	HL,DE
	LD	(HL),12
;
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),$D0
;
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),$18
;
	LD	HL,ENWRK0
	ADD	HL,DE
	LD	(HL),$01
;
	LD	HL,ENXSPD
	ADD	HL,DE
	LD	(HL),$E0
;
	LD	HL,ENMUKI
	ADD	HL,DE
	LD	(HL),$00
;
	LD	HL,ENTIM0
	ADD	HL,DE
	LD	(HL),$80
;
	CALL	BIRDSS	;(S)
;
		jp	STATINC
;;;;;;;;	CALL	STATINC
;;;;;;;;	RET
;;;;;;;;ZKM1010
;;;;;;;;	RET	
;---------------------------------------
ZKM2000
		jp	ZAKOCS
;;;;;;;;	CALL	ZAKOCS
;;;;;;;;	RET
;---------------------------------------
ZKM3000
	CALL	ZAKOCS
;
	CALL	E3STCK
;
	CALL	E3MVCL
;
	LD	HL,ENYSPD
	ADD	HL,BC
	INC	(HL)
	INC	(HL)
;
	RET
;---------------------------------------
ZKM4000		; On bird
	LD	HL,ENMOD0
	ADD	HL,BC
	LD	(HL),%11000010
	RET
;---------------------------------------
ZAKOCD
	DB	$7E,$02,$7E,$22
	DB	$7E,$42,$7E,$62
;
ZAKOCS
	LD	DE,ZAKOCD
		jp	EN2CST
;;;;;;;;	CALL	EN2CST
;;;;;;;;;
;;;;;;;;	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%					       %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
BDATMD
	DB	2,2,2,0,1,0,1,4,4,4,4
;
BIRDMV
	CALL	BBIRDCS
;
	LD	A,(ENMODE2)
	CP	EMOVE
	JP	NZ,BSFLSB3
;
	CALL	E3STCK
;
	CALL	ENHNCL
;
	LD	A,(ENSTAT2)
	CP	BDMF
	JR	Z,BBD0000
;
	LD	HL,ENFLSH
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,BBD0000
;
	LD	HL,ENFLSH
	ADD	HL,BC
	LD	(HL),$50
;
	CALL	ENSDCL
;
	CALL	STATINC
	LD	(HL),BDMF
;
	LD	A,$31
	LD	(SOUND3),A	;(S)ZZ3
;
	LD	HL,ENMOD0
	ADD	HL,BC
	LD	(HL),%01000010
;
	LD	HL,ENWRK2
	ADD	HL,BC
	INC	(HL)
	LD	A,(HL)
	CP	$08
	JR	NZ,RIII
;
	DEC	(HL)
RIII
	LD	E,A
	LD	D,B
	LD	HL,BDATMD
	ADD	HL,DE
	LD	A,(HL)
	LD	(BDATNO),A
	RET
BBD0000
	LD	A,(ENSTAT2)
	RST	00
	DW	BDM1000 ;Demo 1
	DW	BDM2000 ;2
	DW	BDM3000 ;3
	DW	BDM4000 ;4
	DW	BDM5000 ;5
	DW	BDM6000 ;6
	DW	BDM7000 ;7
;- - - - - - - - - - - - - - -
	DW	BDM8000	;
	DW	BDM9000 ; Hane pata pata atack 1
	DW	BDMA000 ;        "             2
	DW	BDMB000 ; Go away
	DW	BDMC000 ; Hi speed atack 1
	DW	BDMD000 ;      "         2
	DW	BDME000 ; Yoko flying
	DW	BDDAMEG	; Damege
;- - - - -
BDM8	EQU	$07
BDM9	EQU	$08
BDMA	EQU	$09
BDMB	EQU	$0A
BDMC	EQU	$0B
BDMD	EQU	$0C
BDME	EQU	$0D
BDMF	EQU	$0E
;----------------------------------------
BDM1000
	CALL	E3MVCL
;
	CALL	LDTIM0
		ret	NZ
;;;;;;;;	JR	NZ,BDM1010
;
	CALL	STATINC
;
	CALL	LDTIM0
	LD	(HL),$20
;
	LD	A,$FF
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;BDM1010
;;;;;;;;	RET
;----------------------------------------
BDM2000
	CALL	LDTIM0
	JR	NZ,BDM2010
;
	XOR	A
	CALL	ENPTST
;
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	A,(HL)
	ADD	A,$14
	LD	(HL),A
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	A,(HL)
	CPL
	INC	A
	LD	(HL),A
;
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	A,(HL)
	XOR	$04
	LD	(HL),A
;
	LD	HL,ENWRK1
	ADD	HL,BC
	INC	(HL)
	LD	A,(HL)
	CP	$02
	JR	Z,BDM2020
;
	CALL	STATINC
	LD	(HL),B
;
	CALL	LDTIM0
	LD	(HL),$80
;- - - - - - - - - - - - - - -
BIRDSS
	LD	A,$22
	LD	(SOUND3),A	;(S)
BDM2010
	RET
;- - - - - - - - - - - - - -
BDM2020
	CALL	STATINC
;
	CALL	LDTIM0
	LD	(HL),$30
;
	LD	A,$30
	LD	(SOUND3),A	;(S)ZZ1
	RET
;----------------------------------------
BDM3000
	CALL	E3MVCL
;
	CALL	LDTIM0
	CP	$01
	JR	NZ,BDM3002
;
	LD	HL,SOUND1	;(S)   ZZ2
	LD	(HL),$30
BDM3002
	AND	A
		ret	NZ
;;;;;;;;	JR	NZ,BDM3010
;
	LD	HL,ENXSPD
	ADD	HL,BC
	INC	(HL)
	JR	NZ,BDM3008
;
	CALL	STATINC
;
	CALL	LDTIM0
	LD	(HL),$40
;
	LD	HL,ENSTAT+$0E
	INC	(HL)
	INC	HL
	INC	(HL)
BDM3008
		jp	BDPTST2
;;;;;;;;	CALL	BDPTST2
;;;;;;;;BDM3010
;;;;;;;;	RET
;----------------------------------------
BDM4000
	LD	A,$02
	LD	(PLSTOP),A
;
	CALL	LDTIM0
	JR	NZ,BDM4010
;
	LD	(HL),$28
;
	LD	A,$D0
	LD	(ENYSPD),A	; Man jump !
;
	LD	A,$24
	LD	(SOUND1),A	;(S)
;
	LD	A,$12
	LD	(ENXSPD),A
;
	LD	HL,ENSTAT
	INC	(HL)
;
	CALL	STATINC
; - - - - - - - - - - - - - - - -
BDM4010
BDPTST2
	LD	HL,ENCONT
	ADD	HL,BC
	INC	(HL)
	LD	A,(HL)
	AND	%00000100
	LD	A,$01
	JR	Z,BDM4070
	INC	A
BDM4070
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;	RET
;----------------------------------------
BDM5000
	LD	A,$02
	LD	(PLSTOP),A
;
	CALL	LDTIM0
	JR	NZ,BDM5010
;
	LD	A,$01 ;F0
	LD	(CHTRF2),A ;TOURFG),A	; Man on the bird chr TR.
;
	LD	(HL),$20
;
	CALL	STATINC
;
	LD	HL,ENSTAT
	INC	(HL)
;
	LD	A,$C0
	LD	(ENYPSL),A
;
BDM5010
	JP	BDPTST2
;----------------------------------------
BDPTDT
	DB	1,2,3,2
;
BDM6000
	LD	A,$02
	LD	(PLSTOP),A
;
	CALL	LDTIM0
	JR	NZ,BDM6010
;
	CALL	STATINC
;
BDM6010
BDPTST
	LD	HL,ENCONT
	ADD	HL,BC
	INC	(HL)
	LD	A,(HL)
	RRA
	RRA
	RRA
	NOP
	AND	$03
	LD	E,A
	LD	D,B
	LD	HL,BDPTDT
	ADD	HL,DE
	LD	A,(HL)
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;	RET
;----------------------------------------
BDM7000
	CALL	E3MVCL
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	A,(HL)
	CP	$D4
	JR	NZ,BDM7010
;
	LD	A,(ENSVXL)
	AND	$F8
	CP	$C0
	JR	NZ,BDM7003
;
	CALL	STATINC
;
	CALL	LDTIM0
	LD	(HL),$80
;
	RET
;
BDM7003
	LD	A,(FRCNT)
	AND	$00
	JR	NZ,BDM7008
;
	LD	HL,ENYSPD
	ADD	HL,BC
	DEC	(HL)
;
BDM7008
	XOR	A
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;	RET
BDM7010
	DEC	(HL)
	DEC	(HL)
;
	CALL	BDPTST	
	CALL	BDPTST	
	JP	BDPTST	
;=============================================
BDA1XD
	DB	$F8,$A8
BDA1XS
	DB	$30,$D0
BDA2XD
	DB	$30,$70
BDA2XS
	DB	$DC,$24
BDA3XD
	DB	$F8,$A8
BDA3XS
	DB	$20,$E0
BDA1MK
BDA2MK
BDA3MK
	DB	$04,$00
; - - - - - - - - - - - - - -
BDM8000
	CALL	LDTIM0
	JR	NZ,BDM8090
;- - - Atack set - - - - - -
	LD	A,(BDATNO)
	RST	00
	DW	BDATST1		; Hane wind atack set
	DW	BDATST2		; Hi speed atack set
	DW	BDATST3		; Yoko flying
	DW	BDATST3		; Yoko flying ;Dammy
	DW	BDATST2		; Hi speed atack set
;--------------------------------------------
BDATST1
	CALL	RNDSUB
	AND	$03
	LD	(BDATNO),A
;
	LD	E,$00
	LD	A,(PLXPSL)
	CP	$50
	JR	NC,BDM8010
	INC	E
BDM8010
	LD	D,B
	LD	HL,BDA1XD
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENXPSL
	ADD	HL,BC
	LD	(HL),A
;
	LD	HL,BDA1XS
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
;
	LD	HL,BDA1MK
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	(HL),A
;
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	(HL),$00
;
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),$20
;
	CALL	STATINC
	LD	(HL),BDM9
BDM8090
	RET
;= = = = = = = = = = = = = = = = = = = = = = =
BDATST2
	LD	E,$00
	LD	A,(PLXPSL)
	CP	$50
	JR	NC,BDM8210
	INC	E
BDM8210
	LD	D,B
	LD	HL,BDA2XD
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENXPSL
	ADD	HL,BC
	LD	(HL),A
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),B  ;A
;
	LD	HL,BDA2MK
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	(HL),A
;
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	(HL),$F0
;
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),$10
;
;	LD	A,$02
;	LD	(SOUND3),A	;(S)
;
	CALL	STATINC
	LD	(HL),BDMC
;
	CALL	LDTIM0
	LD	(HL),$30
BDM8290
	RET
;= = = = = = = = = = = = = = = = = = = = = = =
BDATST3
	CALL	RNDSUB
	AND	$01
	LD	E,A
	LD	D,B
	LD	HL,BDA3XD
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENXPSL
	ADD	HL,BC
	LD	(HL),A
;
	LD	HL,BDA3XS
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
;
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),B
;
	LD	HL,BDA3MK
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	(HL),A
;
	CALL	RNDSUB
	AND	$3F
	ADD	A,$18
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	(HL),A
;
	LD	A,(PLSTAT)
	AND	A
	JR	Z,AST310
;
	LD	A,(PLYPSL)
	LD	(HL),A
AST310
	CALL	STATINC
	LD	(HL),BDME
;
	CALL	LDTIM0
	LD	(HL),$70
	RET
;----------------------------------------
BDM9000
	LD	A,$01
	CALL	ENPTST
;
	CALL	E3MVCL
;
	LD	HL,ENYSPD
	CALL	BDM9SB
;
	LD	A,(HL)
	AND	A
	JR	Z,BDM90A0
;
	LD	HL,ENXSPD
BDM9SB
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,BDM9090
;
	AND	%10000000
	JR	NZ,BDM9010
	DEC	(HL)
	DEC	(HL)
BDM9010
	INC	(HL)
BDM9090
	RET
BDM90A0
	CALL	STATINC
;
	CALL	LDTIM0
	LD	(HL),$FF
	RET
;----------------------------------------
BDPLXS
	DB	$EE,$12
BDPLX2
	DB	$D0,$30
HANEXD
	DB	$10,$F0
HANEXS
	DB	$D8,$D4,$D0,$CC,$C8,$C4,$C0,$BC
	DB	$28,$2C,$30,$34,$38,$3C,$40,$44
HANEYS
	DB	$30,$2E,$2C,$2A,$28,$26,$24,$22
	DB	$30,$2E,$2C,$2A,$28,$26,$24,$22
;
BDMA000
	CALL	LDTIM0
	JP	Z,BDMA090
;
	LD	HL,ENYPSL
	ADD	HL,BC
;
	LD	A,(FRCNT)
	AND	$03
	JR	NZ,BDMA030
;
	LD	A,(FRCNT)
	AND	%00100000
	JR	Z,BDMA010
;
	INC	(HL)
	INC	(HL)
BDMA010	
	DEC	(HL)
BDMA030	
	CALL	BDPTST
	CALL	BDPTST
;
;- - -  Player wind Osare - - -
	LD	A,(PLSTAT)
	AND	A
	JR	NZ,BDMA060
;
	LD	A,(PLJPFG)
	AND	A
	JR	Z,BDMA060
;
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	A,(HL)
	RRA
	RRA
	AND	$01
	LD	E,A
	LD	D,B
	LD	HL,BDPLX2
	ADD	HL,DE
	LD	A,(HL)
;
	LD	HL,PLXSPD
	SUB	(HL)
	AND	A
	JR	Z,BDMA070
;;	JR	Z,BDMA068
;
	AND	%10000000
	JR	NZ,BDMA055
	INC	(HL)
	INC	(HL)
	INC	(HL)
	INC	(HL)
BDMA055
	DEC	(HL)
	DEC	(HL)
	JR	BDMA070
;;	JR	BDMA068
;- - - - - - - - - - - - - - -
BDMA060
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	E,(HL)
	SRL	E
	SRL	E
	LD	D,B
	LD	HL,BDPLXS
	ADD	HL,DE
	LD	A,(HL)
	LD	(PLXSPD),A
;
BDMA068
	PUSH	BC
	CALL	PLXCLC
	CALL	PLBGCKL
	POP	BC
BDMA070
	LD	A,(BGMCNT)
	INC	A
	CP	$22
	JR	C,BDMA078
;
	LD	A,$32
	LD	(SOUND3),A	;(S)ZZ4
;
	XOR	A
BDMA078
	LD	(BGMCNT),A
;
	CALL	LDTIM0
	CP	$C0
	JR	NC,BDMA080
;
	LD	A,(FRCNT)
	AND	$0F
	JR	NZ,BDMA080
;
HANESET
	LD	A,BBIRD
	LD	E,$03
	CALL	ENIDSH2L
	JR	C,BDMA080
;
	LD	HL,ENWRK0
	ADD	HL,DE
	LD	(HL),$03
;
	PUSH	BC
;
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	C,(HL)
	SRL	C
	SRL	C
	LD	HL,HANEXD
	ADD	HL,BC
;
	LD	A,(WORK0)
	ADD	A,(HL)
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	A,(WORK1)
	LD	HL,ENYPSL
	ADD	HL,DE
	ADD	A,$0C
	LD	(HL),A
;
	LD	HL,ENCHPT
	ADD	HL,DE
	LD	A,C
	XOR	$01
	LD	(HL),A
	LD	HL,ENMUKI
	ADD	HL,DE
	LD	(HL),A
;
	SLA	C
	SLA	C
	SLA	C
;
	CALL	RNDSUB
	AND	$07
	ADD	A,C
	LD	C,A
	LD	HL,HANEYS
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENYSPD
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,HANEXS
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,DE
	LD	(HL),A
;
	POP	BC
;
	LD	HL,ENMOD0
	ADD	HL,DE
	LD	(HL),%00000010
;
	LD	HL,ENMOD3
	ADD	HL,DE
	LD	(HL),%00000000
;
	LD	HL,ENMOD2
	ADD	HL,DE
	LD	(HL),$02
BDMA080
	RET
;- - - - - - - - - - - - - -
BDMA090
	CALL	STATINC
;
	CALL	LDTIM0
	LD	(HL),$50
	RET	
;----------------------------------------
BDMBXS
	DB	$E0,$20
;- - - - - - - - - - - - - - - -
BDMB000
	CALL	E3MVCL
;
	CALL	LDTIM0
	JR	Z,BDMB070
;
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	A,(HL)
	RRA
	RRA
	AND	$01
	LD	E,A
	LD	D,B
	LD	HL,BDMBXS
	ADD	HL,DE
	LD	A,(HL)
;
	LD	HL,ENXSPD
	ADD	HL,BC
	SUB	(HL)
	AND	A
	JR	Z,BDMB050
;
	AND	%10000000
	JR	NZ,BDMB030
	INC	(HL)
	INC	(HL)
BDMB030
	DEC	(HL)
;
	CALL	BDPTST	
		jp	BDPTST	
;;;;;;;;	CALL	BDPTST	
;;;;;;;;;
;;;;;;;;	RET
BDMB050
	XOR	A
	CALL	ENPTST
;
	LD	A,(FRCNT)
	AND	$01
	JR	NZ,BDMB060
;
	LD	HL,ENYSPD
	ADD	HL,BC
	DEC	(HL)
BDMB060
	RET
; - - - - - - - - - - - - - - -
BDMB070
BDNEXT
	LD	HL,ENMOD0
	ADD	HL,BC
	LD	(HL),%00000010
;
	CALL	STATINC
	LD	(HL),BDM8
;
	CALL	LDTIM0
	LD	A,(BDATNO)
	CP	$04
	JR	NZ,BDNX10
;
	LD	(HL),$10
	RET
BDNX10
	LD	(HL),$80
	RET
;----------------------------------------
BDMC000
	CALL	E3MVCL
;
	CALL	LDTIM0
	JR	NZ,BDMC010
;
	LD	(HL),$30
;
	CALL	STATINC
	CALL	ENSDCL
BDMC010
		jp	BDPTST
;;;;;;;;	CALL	BDPTST
;;;;;;;;	RET
;----------------------------------------
BDPLHN
	DB	$E0,$20
;
BDMD000
	CALL	E3MVCL
;
	CALL	LDTIM0
	JR	NZ,BDMD010
;
	LD	A,(ENDSYP)
	CP	$B0
	JP	NC,BDNEXT
;
	LD	A,$01
	CALL	ENPTST
;
	LD	A,(HANEFG)
	AND	A
	JR	NZ,BDMD00C
;
	CALL	CREPKEL
;
	LD	A,(HANEFG)
	AND	A
	JR	Z,BDMD00C
;
	LD	A,$10
	LD	(HANEFG),A
;
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	E,(HL)
	SRL	E
	SRL	E
	LD	D,B
	LD	HL,BDPLHN
	ADD	HL,DE
	LD	A,(HL)
	LD	(PLXSPD),A	
;
	LD	A,$F0
	LD	(PLYSPD),A
;
	LD	HL,PLYPSL
	DEC	(HL)
BDMD00C
	RET
BDMD010
	CP	$01
	JR	NZ,BDMD020
;
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	E,(HL)
	SRL	E
	SRL	E
	LD	D,B
	LD	HL,BDA2XS
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
;
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),$34
BDMD020
	CALL	BDPTST
;
	CALL	LDTIM0
	CP	$40
		ret	NC
;;;;;;;;	JR	NC,BDMD090
;
	CALL	BDPTST
		jp	BDPTST
;;;;;;;;	CALL	BDPTST
;;;;;;;;BDMD090
;;;;;;;;	RET
;----------------------------------------
BDME000
	XOR	A
	CALL	ENPTST
;
	CALL	E3MVCL
;
	CALL	CREPKEL
;
	CALL	LDTIM0
	JP	Z,BDNEXT
	RET
;----------------------------------------
;
BDDAMEG
	LD	HL,ENFLSH
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,BDDM10
;
	CP	$30
		ret	NC
;;;;;;;;	JR	NC,BDDM08
;
	DEC	A
	JR	NZ,BDMM02
;
	LD	A,$31
	LD	(SOUND3),A	;(S)
BDMM02
	CALL	BDPTST
		jp	BDPTST	
;;;;;;;;	CALL	BDPTST	
;;;;;;;;BDDM08
;;;;;;;;	RET
BDDM10
	CALL	BDPTST
	CALL	BDPTST
	CALL	BDPTST	
;
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	A,(HL)
	CP	$D0
	JR	Z,BDDM20
	DEC	(HL)
BDDM20
	CALL	E3MVCL
;
	LD	A,(ENDSYP)
	AND	$F0
	CP	$C0
	JR	NZ,BDDM30
;
	JP	BDNEXT
BDDM30
	RET
;=================================================
BBIRDCD
;0	;�������
	DB	$00,$00,$40,$01	;��
	DB	$00,$08,$42,$01	;
	DB	$00,$10,$44,$02	;
;
	DB	$F8,$18,$46,$02	;��
	DB	$F8,$20,$48,$02	;
	DB	$F8,$28,$4A,$02	;
	DB	$08,$18,$4C,$02	;
	DB	$08,$20,$4E,$02	;
	DB	$08,$28,$50,$02	;
;
	DB	$00,$30,$52,$02	;�K��
	DB	$FF,$FF,$FF,$FF	;
	DB	$FF,$FF,$FF,$FF	;
;1	;�H�΂���(�H��)
	DB	$00,$00,$40,$01	;��
	DB	$00,$08,$42,$01	;
	DB	$00,$10,$5A,$02	;
;
	DB	$00,$18,$5C,$02	;
	DB	$00,$20,$5E,$02	;
;
	DB	$10,$08,$60,$02	;��
	DB	$10,$10,$62,$02	;
	DB	$10,$18,$64,$02	;
	DB	$10,$20,$66,$02	;
;
	DB	$F0,$18,$54,$02	;�H��
	DB	$F0,$20,$56,$02	;
	DB	$F0,$28,$58,$02	;
;2
	DB	$00,$00,$40,$01
	DB	$00,$08,$42,$01
	DB	$00,$10,$5A,$02
	DB	$00,$18,$68,$02
	DB	$00,$20,$6A,$02
;
	DB	$10,$08,$60,$02
	DB	$10,$10,$62,$02
	DB	$10,$18,$64,$02
	DB	$10,$20,$66,$02
	DB	$FF,$FF,$FF,$FF
	DB	$FF,$FF,$FF,$FF
	DB	$FF,$FF,$FF,$FF
;3
	DB	$00,$00,$40,$01
	DB	$00,$08,$42,$01
	DB	$00,$10,$6C,$02
	DB	$00,$18,$6E,$02
	DB	$00,$20,$70,$02
;
	DB	$10,$08,$60,$02
	DB	$10,$10,$72,$02
	DB	$10,$18,$74,$02
	DB	$10,$20,$76,$02
	DB	$FF,$FF,$FF,$FF
	DB	$FF,$FF,$FF,$FF
	DB	$FF,$FF,$FF,$FF
BBIRDC2
;0L
	DB	$00,$08,$40,$21
	DB	$00,$00,$42,$21
	DB	$00,$F8,$44,$22
;
	DB	$F8,$F0,$46,$22
	DB	$F8,$E8,$48,$22
	DB	$F8,$E0,$4A,$22
	DB	$08,$F0,$4C,$22
	DB	$08,$E8,$4E,$22
	DB	$08,$E0,$50,$22
;
	DB	$00,$D8,$52,$22
	DB	$FF,$FF,$FF,$FF
	DB	$FF,$FF,$FF,$FF
;1L
	DB	$00,$08,$40,$21
	DB	$00,$00,$42,$21
	DB	$00,$F8,$5A,$22
	DB	$00,$F0,$5C,$22
	DB	$00,$E8,$5E,$22
;
	DB	$10,$00,$60,$22
	DB	$10,$F8,$62,$22
	DB	$10,$F0,$64,$22
	DB	$10,$E8,$66,$22
;
	DB	$F0,$F0,$54,$22
	DB	$F0,$E8,$56,$22
	DB	$F0,$E0,$58,$22
;2L
	DB	$00,$08,$40,$21
	DB	$00,$00,$42,$21
	DB	$00,$F8,$5A,$22
	DB	$00,$F0,$68,$22
	DB	$00,$E8,$6A,$22
;
	DB	$10,$00,$60,$22
	DB	$10,$F8,$62,$22
	DB	$10,$F0,$64,$22
	DB	$10,$E8,$66,$22
	DB	$FF,$FF,$FF,$FF
	DB	$FF,$FF,$FF,$FF
	DB	$FF,$FF,$FF,$FF
;3L
	DB	$00,$08,$40,$21
	DB	$00,$00,$42,$21
	DB	$00,$F8,$6C,$22
	DB	$00,$F0,$6E,$22
	DB	$00,$E8,$70,$22
;
	DB	$10,$00,$60,$22
	DB	$10,$F8,$72,$22
	DB	$10,$F0,$74,$22
	DB	$10,$E8,$76,$22
	DB	$FF,$FF,$FF,$FF
	DB	$FF,$FF,$FF,$FF
	DB	$FF,$FF,$FF,$FF
;- - - - - - - - - - - - - - -
BDOJSZ	; Obj hit size !
;;               xp  xr  yp  yr   CHPT
	DB	$1C,$1C,$08,$0C	; 0
	DB	$14,$10,$10,$10 ; 1,2,3
;
	DB	$F4,$1C,$08,$0C
	DB	$FC,$10,$10,$10
;- - - - - - - - - - - - - - -
BBIRDCS
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	A,(ENCHPT2)
	ADD	A,(HL)
	LD	HL,BBIRDCD
	CP	$04
	JR	C,BDCS10
	SUB	$04
	LD	HL,BBIRDC2
BDCS10
	LD	E,A
	LD	D,B
;
	SLA	E
	SLA	E
;
	SLA	E
	SLA	E
	LD	A,E
	SLA	E
	ADD	A,E
	LD	E,A
;
	ADD	HL,DE
;
	LD	C,12
	CALL	ENOMST
;
	LD	A,12-2
	CALL	NXOMSBL
;- -  Obj hit size set - - -
	LD	E,$00
	LD	A,(ENCHPT2)
	AND	A
	JR	Z,BSZ010
	LD	E,$04
BSZ010
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,BSZ020
;
	LD	A,E
	ADD	A,$08
	LD	E,A
BSZ020
	LD	D,B
;
	LD	HL,BDOJSZ
	ADD	HL,DE
		ld	e,l
		ld	d,h
;;10/31;	PUSH	HL
;;10/31;	POP	DE
;
	PUSH	BC
	SLA	C
	SLA	C
	LD	HL,ENOJSZ
	ADD	HL,BC
;
	LD	C,$4
BSZ028
	LD	A,(DE)
	INC	DE
	LD	(HLI),A
	DEC	C
	JR	NZ,BSZ028
;
	POP	BC
	RET
;======================================
ZKBDCD
	DB	$7C,$00,$7C,$20
	DB	$7C,$40,$7C,$60
;- - - - - - - - - - - - - - - - - -
ZKBDMV
	LD	A,$02
	LD	(PLSTOP),A
;
	LD	DE,ZKBDCD
	CALL	EN2CST
;	
	CALL	E3STCK
;
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	AND	$01
	CALL	ENPTST
;
	LD	A,(ENSTAT2)
	RST	00
	DW	ZKB1000
	DW	ZKB2000
;------------------------------------------
ZKB1000
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	E,$07
	CALL	ZKBSUB
;
	LD	HL,ENXPSL
	ADD	HL,BC
	LD	E,$00
ZKBSUB
	LD	A,(FRCNT)
	ADD	A,E
	LD	D,A
	AND	$03
	JR	NZ,ZKB1020
	LD	A,D
	RRA
	RRA
	RRA
	RRA
	XOR	C
	AND	$01
	JR	Z,ZKB1010
	INC	(HL)
	INC	(HL)
ZKB1010		
	DEC	(HL)
ZKB1020
	RET
;------------------------------------------
ZKB2000
	CALL	E3MVCL
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	A,(HL)
	CP	$C0
	JR	Z,ZKB2010
	DEC	(HL)
ZKB2010
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	A,(HL)
	CP	$F0
	JR	Z,ZKB2020
	DEC	(HL)
ZKB2020
	LD	A,(ENSVXL)
	CP	$E0
	JP	NC,E3CLER
	RET
;======================================
HANECD
	DB	$7A,$22,$78,$22
	DB	$78,$02,$7A,$02
	DB	$7A,$62,$78,$62
	DB	$78,$42,$7A,$42
;- - - - - - - - - - - - - - - - - -
HANEMV
	LD	DE,HANECD
	CALL	EN2CST
;	
	CALL	E3STCK
;
	CALL	E3MVCL
;
	LD	A,(ENSTAT2)
	RST	00
	DW	HANE00
	DW	HANE10
;--------------------------------------
HANE00
	CALL	CRENPL2L
;
	LD	HL,ENCBFG
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,HNM00A
;
	CALL	STATINC
;
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),$E0
;
	LD	HL,ENCHPT
	ADD	HL,BC
	INC	(HL)
	INC	(HL)
HNM00A
	LD	HL,ENYSPD
	ADD	HL,BC
;
	DEC	(HL)
HNM010
HANE10
	LD	A,(ENSVXL)
	CP	$A8
	JP	NC,E3CLER
	RET
;---------------------------------
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	��   �{�X				%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
BFIREIT
	CALL	LDTIM0
	LD	(HL),$40
;
	LD	HL,ENCHPT
	ADD	HL,BC
	LD	(HL),$FF
;
	LD	HL,ENLIFE
	ADD	HL,BC
	LD	(HL),$FF
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	��   �{�X				%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
BCNT	EQU	$05
;
BFIREMV
	CALL	SHRVSE	;�V���b�^�[������␳�I
;
	CALL	BSSDCK	;(S)
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,BF0000
	CP	$01
	JP	Z,SIBUKIB
	CP	$02
	JP	Z,SIBUKIS
	JP	BKAKER
;-------------------------------------
BF0000
	CALL	BFIRECS
;
	LD	A,(ENMODE2)
	CP	EFAIL
	JR	NZ,BF0001
;
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	A,(HL)
	RST	00
	DW	BFFL000
	DW	BFFL100
;---------------------------------------
BFFL000
	CALL	LDTIM0
	LD	(HL),$FF
;
WRK1INC
	LD	HL,ENWRK1
	ADD	HL,BC
	INC	(HL)
	RET
;---------------------------------------
BFFL100
	CALL	LDTIM0
	JP	Z,BFFL120
;
	LD	HL,ENFLSH
	ADD	HL,BC
	LD	(HL),A
;
	CP	$80
		ret	NC
;;;;;;;;	JR	NC,BFFL110
;
		jp	ESMRN3
;;;;;;;;	CALL	ESMRN3
;;;;;;;;BFFL110
;;;;;;;;	RET
BFFL120
	CALL	HARTBS3
;
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	A,(PLXPSL)
	LD	(HL),A
	LD	HL,ENYPSL
	ADD	HL,DE
;;	LD	A,(PLYPSL)
	LD	(HL),$70 ;A
;
	LD	HL,ENZPSL
	ADD	HL,DE
	LD	(HL),$70
	RET
;======================================
;======================================
;======================================
BF0001
	CALL	E3STCK
;
;	LD	HL,ENHNFG
;	ADD	HL,BC
;	LD	A,(HL)
;	AND	A
;	JR	Z,BF0010
;;
;	DEC	(HL)
;BF0010
	CALL	ENHNCL
;
	LD	A,(ENSTAT2)
	RST	00
	DW	BFM1000
	DW	BFM2000
	DW	BFM3000
	DW	BFM4000
	DW	BFM5000
;----------------------------------------
BFJPXP
	DB	$28,$38,$58,$68
	DB	$28,$38,$58,$68
BFJPYP
	DB	$38,$30,$30,$38
	DB	$50,$58,$58,$50
BFJPXS
	DB	$10,$10,$F0,$F0
	DB	$10,$10,$F0,$F0
BFJPYS
	DB	$FD,$03,$03,$FD
	DB	$03,$FD,$FD,$03
;
BFM1000
	CALL	LDTIM0
		ret	NZ
;;;;;;;;	JR	NZ,BFM1090
;
	CALL	RNDSUB
	AND	$07
	LD	E,A
	LD	D,B
	LD	HL,BFJPXP
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENXPSL
	ADD	HL,BC
	LD	(HL),A
	LD	HL,BFJPYP
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	(HL),A
	LD	HL,BFJPXS
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
	LD	HL,BFJPYS
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),A
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),$18
;
	LD	A,$16
	LD	(SOUND2),A	;(S)
;
	CALL	SIBUKIBST
;;	CALL	SIBUKISST
;
		jp	STATINC
;;;;;;;;	CALL	STATINC
;;;;;;;;BFM1090
;;;;;;;;	RET
;----------------------------------------
BFM2000
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,BFM2010
;
	LD	HL,ENFLSH
	ADD	HL,BC
	LD	A,(HL)
;;	AND	A
	CP	$0B
;;	JR	Z,BFM2010
	JR	C,BFM2010
;
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	CP	BCNT
	JR	NC,BFM200E
;;	JR	NC,BFM2010
;
	CALL	STATINC
;
	CALL	LDTIM0
	LD	(HL),$40
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),$18
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),$18
	LD	HL,ENZSPD
	ADD	HL,BC
	LD	(HL),B
;
;	LD	HL,ENTIM3
;	ADD	HL,BC
	CALL	LDTIM3
	LD	(HL),$40
;;	LD	(HL),$80
;
	LD	A,(ENSVXL)
	ADD	A,$F8
	LD	(WORK0),A
;
	CALL	BFSMST
;
	LD	A,(ENSVXL)
	ADD	A,$08
	LD	(WORK0),A
BFSMST
	LD	A,(ENDSYP)
	SUB	$10
	LD	(WORK1),A
;
	LD	A,SMK1
	CALL	EXIDSH
;
	LD	HL,EXTIM0
	ADD	HL,DE
	LD	(HL),$0F
BFM200E
	RET
;- - - - - - - - - - - - - - - -
BFM2010
	CALL	E3MVCL
	CALL	E3ZCLC
;
	LD	HL,ENZSPD
	ADD	HL,BC
	DEC	(HL)
;
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	AND	%10000000
	JR	Z,BFM2090
;
	LD	(HL),B
;
	CALL	LDTIM0
	LD	(HL),$40
;
	CALL	STATINC
	LD	(HL),B
;
	CALL	SIBUKISST
	CALL	SIBUKIBST
;
	LD	A,$32
	LD	(SOUND1),A	;(S)
;
	LD	A,$FF
	JP	ENPTST
BFM2090
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	CP	BCNT
	JP	NC,BLASTPT
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,BFM20A0	; Damege down ?
;				; no
	LD	A,(FRCNT)
	RRA
;;	RRA
	RRA
	RRA
	AND	$01
	JP	ENPTST
BFM20A0
	RET
;----------------------------------------
BFM3000
	LD	A,$02
	CALL	ENPTST
;
	CALL	LDTIM0
	JR	Z,BFM3020
;
	AND	$02
	LD	E,$08
	JR	Z,BFM3010
	LD	E,$F8
BFM3010
	LD	HL,ENXSPD
	ADD	HL,BC
	PUSH	HL
	LD	A,(HL)
	PUSH	AF
	LD	(HL),E
;
	CALL  	E3XCLC
;
	POP	AF
	POP	HL
	LD	(HL),A
	RET
;
BFM3020
	CALL	CREPKEL
;
;	LD	HL,ENTIM3
;	ADD	HL,BC
;	LD	A,(HL)
;	AND	A
	CALL	LDTIM3
	JR	NZ,BFM3030
;
	LD	A,(ENSVXL)
	CP	$70
	JR	NC,BFM3030
	LD	A,(ENDSYP)
	CP	$50
	JR	NC,BFM3030
;
	CALL	ENSDCL
;	LD	HL,ENZSPD
;	ADD	HL,BC
;	LD	(HL),B
;
	CALL  	STATINC
	LD	(HL),$1
	RET
;
BFM3030
	LD	HL,ENFLSH
	ADD	HL,BC
	LD	A,(HL)
	CP	$08
	JR	NZ,BFM3038
;
	LD	A,(ENSVXL)
	CP	$70
	JR	NC,BFM3038
	LD	A,(ENDSYP)
	CP	$50
	JR	NC,BFM3038
;
	LD	HL,ENCONT
	ADD	HL,BC
	INC	(HL)
	LD	A,(HL)
	CP	BCNT  ;$05
	JR	C,BFM3038
;
	CALL	STATINC
;
	CALL	ENSDCL
;
	CALL	LDTIM0
	LD	(HL),$80
	RET
;- - - - - - - - - - - - - - - - - - -
BFM3038
	LD	HL,ENFLSH
	ADD	HL,BC
	LD	A,(HL)
	CP	$0B
		ret	NC
;;;;;;;;	JR	NC,BFM3090
;
	CALL	E3MVCL
;
	CALL	ENBGCKL
;
	LD	HL,ENCBFG
	ADD	HL,BC
	LD	A,(HL)
	PUSH	AF
	AND	%00000011
	JR	Z,BFM3050
;
	LD	HL,ENXSPD
	CALL	BTURN
BFM3050
	POP 	AF   
	AND	%00001100
	JR	Z,BFM3060
;
	LD	HL,ENYSPD
BTURN
	ADD	HL,BC
	LD	A,(HL)
	CPL
	INC	A
	LD	(HL),A
BFM3060
	LD	A,(FRCNT)
	AND	$07
		ret	NZ
;;;;;;;;	JR	NZ,BFM3090
;
	LD	A,(ENSVXL)
	LD	(WORK0),A
	LD	A,(ENDSYP)
	LD	(WORK1),A
;
	LD	A,BFZN
		jp	EXIDSH
;;;;;;;;	CALL	EXIDSH
;;;;;;;;BFM3090
;;;;;;;;	RET
;----------------------------------------
BFM4000
	CALL	LDTIM0
	CP	$40
	JR	C,BFM4030
	JR	NZ,BFM4008
;
	LD	A,$29
	LD	(SOUND3),A	;(S)�犄���I
;
	CALL	BKAKERST
BFM4008
	AND	$02
	LD	E,$10
	JR	Z,BFM4010
	LD	E,$F0
BFM4010
	LD	HL,ENXSPD
	ADD	HL,BC
	PUSH	HL
	LD	A,(HL)
	PUSH	AF
	LD	(HL),E
;
	CALL  	E3XCLC
;
	POP	AF
	POP	HL
	LD	(HL),A
	RET
;-----------------------------
BFM4030
	AND	A
	JR	NZ,BFM4040
;
	CALL	STATINC
	LD	(HL),$01
;
	CALL	ENSDCL
;
	LD	HL,ENLIFE
	ADD	HL,BC
	LD	(HL),$08
	RET
BFM4040
BLASTPT
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	AND	$01
	ADD	A,$03
		jp	ENPTST	
;;;;;;;;	CALL	ENPTST	
;;;;;;;;	RET
;----------------------------------------
BFM5000
	RET
;
;
;
;
;
	RET
;====================================
;====================================
KBSSXP
	DB	$F8,$08
KBSSXS
	DB	$F8,$08
;- - - - - - - - - - - - - - - - - -
BKAKERST
	LD	A,$02
KBSS10
	LD	(ENHELP),A
;
	LD	A,BFIRE
	CALL	ENIDSHL
	JR	C,KBSS90
;
	LD	HL,ENWRK0
	ADD	HL,DE
	LD	(HL),$03
;
	PUSH	BC
;
	LD	A,(ENHELP)
	LD	C,A
;
	LD	HL,KBSSXP-1
	ADD	HL,BC
	LD	A,(WORK0)
	ADD	A,(HL)
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
	LD	A,(ENHELP)
	DEC	A
	LD	(HL),A
;
	LD	HL,KBSSXS-1
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,ENYSPD
	ADD	HL,DE
	LD	(HL),$04
;
	POP	BC
;
	LD	HL,ENZSPD
	ADD	HL,DE
	LD	(HL),$08
;
	LD	HL,ENMOD0
	ADD	HL,DE
	LD	(HL),%01000010
KBSS90
	LD	A,(ENHELP)
	DEC	A
	JR	NZ,KBSS10
	RET
;====================================
SIBUKIBST
	LD	A,BFIRE
	CALL	ENIDSHL
	JR	C,SBKS090
;
	LD	HL,ENWRK0
	ADD	HL,DE
	LD	(HL),$01
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
	LD	HL,ENTIM0
	ADD	HL,DE
	LD	(HL),$14
;
	LD	HL,ENMOD0
	ADD	HL,DE
	LD	(HL),%11000100
SBKS090
	RET
;====================================
SBSSXP
	DB	$F8,$08,$F8,$08
SBSSYP
	DB	$FC,$FC,$04,$04
SBSSXS
	DB	$F4,$0C,$F4,$0C
SBSSYS
	DB	$F4,$F4,$0C,$0C
;- - - - - - - - - - - - - - - - - -
SIBUKISST
	LD	A,$04
SBSS10
	LD	(ENHELP),A
;
	LD	A,BFIRE
	CALL	ENIDSHL
	JR	C,SBSS90
;
	LD	HL,ENWRK0
	ADD	HL,DE
	LD	(HL),$02
;
	PUSH	BC
;
	LD	A,(ENHELP)
	LD	C,A
;
	LD	HL,SBSSXP-1
	ADD	HL,BC
	LD	A,(WORK0)
	ADD	A,(HL)
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,SBSSYP-1
	ADD	HL,BC
	LD	A,(WORK1)
	ADD	A,(HL)
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,SBSSXS-1
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,SBSSYS-1
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENYSPD
	ADD	HL,DE
	LD	(HL),A
;
	POP	BC
;
	LD	HL,ENZSPD
	ADD	HL,DE
	LD	(HL),$13
;
	LD	HL,ENMOD0
	ADD	HL,DE
	LD	(HL),%01000010
SBSS90
	LD	A,(ENHELP)
	DEC	A
	JR	NZ,SBSS10
	RET
;====================================
BFIRECD
;0
	DB	$F0,$F8,$60,$02
	DB	$F0,$00,$62,$02
	DB	$F0,$08,$64,$02
	DB	$F0,$10,$66,$02
	DB	$00,$F8,$68,$02
	DB	$00,$00,$6A,$02
	DB	$00,$08,$6A,$22
	DB	$00,$10,$68,$22
;1
	DB	$F0,$F8,$66,$21
	DB	$F0,$00,$64,$21
	DB	$F0,$08,$62,$21
	DB	$F0,$10,$60,$21
	DB	$00,$F8,$68,$01
	DB	$00,$00,$6A,$01
	DB	$00,$08,$6A,$21
	DB	$00,$10,$68,$21
;- - - - - - - - - - - - - - - - - -
BFIRECD2
;2
	DB	$00,$F8,$6C,$02
	DB	$00,$00,$6E,$02
	DB	$00,$08,$6E,$22
	DB	$00,$10,$6C,$22
;3
	DB	$00,$FC,$7C,$02
	DB	$00,$04,$7E,$02
	DB	$00,$0C,$7C,$22
	DB	$00,$00,$FF,$00
;4
	DB	$00,$FC,$7C,$02
	DB	$00,$04,$7E,$22
	DB	$00,$0C,$7C,$22
	DB	$00,$00,$FF,$00
;5 (Shibuki big)
	DB	$00,$F8,$74,$02
	DB	$00,$00,$76,$02
	DB	$00,$08,$76,$22
	DB	$00,$10,$74,$22
;6 (Shibuki big)
	DB	$00,$F8,$70,$02
	DB	$00,$00,$72,$02
	DB	$00,$08,$72,$22
	DB	$00,$10,$70,$22
;- - - - - - - - - - - - - - - - - - -
BFSWCD
	DB	$0A,$FB,$26,$02
	DB	$0A,$01,$26,$02
	DB	$0A,$06,$26,$02
	DB	$0A,$0C,$26,$02
;- - - - - - - - - - - - - - - - - -
BFIRECS
	LD	A,(ENCHPT2)
	CP	$02
	JR	NC,BFRCS10
;
	LD	HL,ENMOD0
	ADD	HL,BC
	LD	A,(HL)
	AND	%11110000
	OR	%00001000
	LD	(HL),A
;
	LD	A,(ENCHPT2)
	RLA	
	RLA	
	RLA	
	RLA	
	RLA	
	AND	%11100000
	LD	E,A
	LD	D,B
	LD	HL,BFIRECD
	ADD	HL,DE
;
	LD	C,$08
	CALL	ENOMST
;;	RET
	NOP
;=================================
BFSWST
	LD	A,(ENCHPT2)
	CP	$05
		ret	NC
;;;;;;;;	JR	NC,BSWS90
;
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	DEC	A
	CP	$08
		ret	C
;;;;;;;;	JR	C,BSWS90
;
	LD	HL,ENMOD0
	ADD	HL,BC
	LD	A,(HL)
	AND	%11110000
	OR	%00000100
	LD	(HL),A
;
	LD	A,(ENSVYL)
	LD	(ENDSYP),A
;
	XOR	A
	LD	(ENCHPT2),A
;
	LD	HL,BFSWCD
	LD	C,$04
	CALL	ENOMST
;
		jp	ENPSSV
;;;;;;;;	CALL	ENPSSV
;;;;;;;;BSWS90
;;;;;;;;	RET
;- - - - - - - - - - - - - - - -
BFCSUB
BFRCS10
	LD	HL,ENMOD0
	ADD	HL,BC
	LD	A,(HL)
	AND	%11110000
	OR	%00000100
	LD	(HL),A
;
	LD	A,(ENCHPT2)
	DEC	A
	DEC	A
	RLA
	RLA
	RLA
	RLA
	AND	%11110000
	LD	E,A
	LD	D,B
	LD	HL,BFIRECD2
	ADD	HL,DE
;
	LD	C,$04
	CALL	ENOMST
;
		jp	BFSWST
;;;;;;;;	CALL	BFSWST
;;;;;;;;	RET
;===============================
SIBUKIB
	CALL	LDTIM0
	JP	Z,E3CLER
	CP	$0A
	LD	A,$05
	JR	C,SKB010
	INC	A
SKB010
	LD	(ENCHPT2),A
		jp	BFCSUB	
;;;;;;;;	CALL	BFCSUB	
;;;;;;;;	RET
;===============================
SIBUKISCD	;����ɔ�юU�邵�Ԃ�
	DB	$1E,$02,$1E,$62
	DB	$1E,$42,$1E,$22
	DB	$7A,$02,$7A,$22
	DB	$78,$02,$78,$22
;
SIBUKIS
	LD	DE,SIBUKISCD
	CALL	EN2CST
;
	CALL	E3STCK
;
	CALL	CRENPLL
;
	LD	A,(ENSTAT2)
	RST	00
	DW	SBKS100
	DW	SBKS200
;---------------------------------------
SBKS100
	CALL	E3MVCL
	CALL	E3ZCLC
;
	LD	HL,ENZSPD
	ADD	HL,BC
	DEC	(HL)
;
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	AND	%10000000
	JR	Z,SBKS110
;
	LD	(HL),B
;
	CALL	STATINC
;
	CALL	LDTIM0
	LD	(HL),$0F
SBKS110
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	AND	$01
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;	RET
;---------------------------------------
SBKS200
	CALL	LDTIM0
	JP	Z,E3CLER
	RRA
	RRA
	RRA
	AND	$01
	INC	A
	INC	A
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;	RET
;====================================
BKAKERCD
	DB	$6C,$02,$6E,$02
	DB	$6E,$22,$6C,$22
;- - - - - - - - - - - - - - - - - - - -
BKAKER
	LD	DE,BKAKERCD
	CALL	EN2CST
;
	CALL	E3STCK
;
	CALL	E3MVCL
	CALL	E3ZCLC
	LD	HL,ENZSPD
	ADD	HL,BC
	DEC	(HL)
;
	LD	HL,ENZPSL
	ADD	HL,BC
	LD	A,(HL)
	AND	%10000000
		ret	Z
;;;;;;;;	JR	Z,BKK010
;
	XOR	A
	LD	(HL),A
;
	CALL	LDTIM0
	LD	(HL),$0F
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	(HL),$02
;
	LD	A,$FF
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;BKK010
;;;;;;;;	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�h�h���S				%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
DDNGOIT
;	LD	A,(DNJNNO)
;	LD	E,A
;	LD	D,B
;	LD	HL,WARPSV
;	ADD	HL,DE
;	LD	A,(HL)
;	AND	%00000001
;	JP	NZ,E3CLER
;
	LD	HL,ENJYUN
	ADD	HL,BC
	LD	E,(HL)
	SLA	E
	SLA	E
	SLA	E
	SLA	E
	SLA	E
	SLA	E
	LD	D,B
	LD	HL,XMVBUF
	ADD	HL,DE
	PUSH	DE
;
	LD	E,$20
DDI010
;;	LD	A,(ENSVXL)
	XOR	A
	LD	(HLI),A
	DEC	E
	LD	A,E
	CP	$00
	JR	NZ,DDI010
;
	POP	DE
	LD	HL,YMVBUF
	ADD	HL,DE
;
	LD	E,$20
DDI020
;;	LD	A,(ENDSYP)
	XOR	A
	LD	(HLI),A
	DEC	E
	LD	A,E
	CP	$00
	JR	NZ,DDI020
;
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),$06
;
	CALL	LDTIM0
	LD	(HL),$40
;
;	LD	HL,ENTIM1
;	ADD	HL,BC
	CALL	LDTIM1
	LD	(HL),$40
;
	LD	HL,ENCHPT
	ADD	HL,BC
	LD	(HL),$03
;
	RET
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�h�h���S				%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
DDXSD
	DB	$06,$FA,$00,$00
DDYSD
	DB	$00,$00,$FA,$06
;DDMKD
;;;		0 1 2 3 4 5 6 7 8 9 A B C D E F
;	DB	0,1,0,0,2,0,0,0,3,0,0,0,0,0,0,0
DDMVAD
	DB	$02,$01,$00,$01
DDMVA2
	DB	$21,$22,$23,$22
;
DDNGOMV
	LD	A,(DNJNNO)
	CP	$07
	JR	NZ,DDG100	; Lv.8 ?
;				; Yes!
	LD	A,$10
	LD	(ENCHNO),A	;Bank C -> Bank D !
DDG100
	CALL	DDNGOCS
;
	CALL	E3STCK
;
	CALL	BSSDCK	;(S)
;
	CALL	ENHNCL	; ENHNFG--DEC---->0
;
	CALL	CREPKEL
;
	LD	A,(ENSTAT2)
	RST	0
	DW	DDM1000
	DW	DDM2000
	DW	DDM3000
;==========================================
DDM1000
	CALL	LDTIM0
	JR	NZ,DDM1090
;
	LD	(HL),$00
;
	CALL	STATINC
DDM1090
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	INC	A
	AND	$3F
	LD	(HL),A
	LD	(WORK0),A
;
	RRA
	RRA
	NOP
	AND	$03
	LD	E,A
	LD	D,$00
	LD	HL,DDMVAD
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	(HL),A
	LD	HL,DDMVA2
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	(HL),A
;
	LD	HL,ENJYUN
	ADD	HL,BC
	LD	E,(HL)
	SLA	E
	SLA	E
	SLA	E
	SLA	E
	SLA	E
	SLA	E
	LD	D,$00
	PUSH	DE
;
	LD	HL,XMVBUF
	ADD	HL,DE
	LD	A,(WORK0)
	LD	E,A
	ADD	HL,DE
	LD	A,(ENSVXL)
	LD	(HL),A
;
	POP	DE
;
	LD	HL,YMVBUF
	ADD	HL,DE
	LD	A,(WORK0)
	LD	E,A
	ADD	HL,DE
	LD	A,(ENDSYP)
	LD	(HL),A
;
	CALL	E3MVCL
	CALL	ENBGCKL
;- - - Eat Bomb check - - - - 
	LD	E,ENNO-1
	LD	D,B
ETBC10
	LD	HL,ENMODE
	ADD	HL,DE
	LD	A,(HL)
	CP	EMOVE
	JR	NZ,ETBC20
;
	LD	HL,ENMYNO
	ADD	HL,DE
	LD	A,(HL)
	CP	BOMBR
	JR	NZ,ETBC20
;
	LD	HL,ENTIM0
	ADD	HL,DE
	LD	A,(HL)
	CP	$38
	JR	C,ETBC20
;
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	A,(ENSVXL)
	SUB	(HL)
	ADD	A,$06
	CP	$0C
	JR	NC,ETBC20
;
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	A,(ENDSYP)
	SUB	(HL)
	ADD	A,$06
	CP	$0C
	JR	NC,ETBC20
;
	LD	HL,ENZPSL
	ADD	HL,DE
	LD	A,(HL)
	AND	A
	JR	NZ,ETBC20
;
	LD	HL,ENMODE
	ADD	HL,DE
	LD	(HL),B
;
	CALL	STATINC
	LD	(HL),$02
;
	LD	HL,ENTIM2
	ADD	HL,BC
	LD	(HL),$60
;
	LD	HL,ENFLSH
	ADD	HL,BC
	LD	(HL),$0C
;
	LD	HL,ENWRK3
	ADD	HL,BC
	INC	(HL)
;
	LD	A,$2A
	LD	(SOUND1),A	;(S)
	RET
ETBC20
	DEC	E
	JR	NZ,ETBC10
	RET
;==========================================
DDM2000
	CALL	LDTIM0
	JR	NZ,DDM2090
;
	CALL	RNDSUB
	AND	$1F
	ADD	A,$40
	LD	(HL),A
;
	CALL	STATINC
	LD	(HL),B
;
	LD	HL,ENWRK2
	ADD	HL,BC
	LD	A,(HL)
	INC	A
	AND	$03
	LD	(HL),A
	JR	NZ,DDM2010
;
	CALL	E3XYCK
	JR	DDM2018
DDM2010
	CALL	RNDSUB
	AND	$03
	LD	E,A
;
DDM2018
	LD	HL,ENCHPT2
	XOR	(HL)
	AND	$02
	JR	Z,DDM2010
;
	LD	D,B
	LD	HL,ENCHPT
	ADD	HL,BC
	LD	(HL),E
;
	LD	HL,DDXSD
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
;
	LD	HL,DDYSD
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),A
DDM2090
	RET
;==========================================
DDBRXD	
	DB	$F3,$0D,$00,$00
DDBRYD
	DB	$00,$00,$0D,$F3
DDSMXD
	DB	$0C,$F4,$00,$00
DDSMYD
	DB	$00,$00,$F4,$0C
;
DDM3000
	LD	HL,ENTIM2
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	NZ,DDM3090
;
	CALL	LDTIM0
	LD	(HL),$30
;
	CALL	STATINC
	LD	(HL),$01
	RET
DDM3090
	CP	$24
	JR	NZ,DDM30901
;
;;	LD	HL,SOUND3
;;	LD	(HL),$0C	;(S)
	CALL	BBSDST	;(S)
DDM30901
	CP	$04
	JR	NZ,DDM3092
;
	LD	A,(ENCHPT2)
	LD	E,A
	LD	D,B
	LD	HL,DDSMXD
	ADD	HL,DE
	LD	A,(ENSVXL)
	ADD	A,(HL)
	LD	(WORK0),A
	LD	HL,DDSMYD
	ADD	HL,DE
	LD	A,(ENDSYP)
	ADD	A,(HL)
	LD	(WORK1),A
;
	LD	A,SMK1
	CALL	EXIDSH
;
;;	LD	HL,EXTIM0
;;	ADD	HL,DE
;;	LD	(HL),$0F
	XOR	A
DDM3092
	CP	$20
		ret	NZ
;;;;;;;;	JR	NZ,DDM30A0
;
	LD	HL,ENWRK3
	ADD	HL,BC
	LD	A,(HL)
	CP	$03
		ret	NZ		; 3 times eated ?
;;;;;;;;	JR	NZ,DDM30A0	; 3 times eated ?
;				; Yes !
	LD	A,BOMBR
	CALL	ENIDSHL
		ret	C
;;;;;;;;	JR	C,DDM30A0
;
;;	LD	A,$0C
;;	LD	(SOUND3),A	;(S)
;;	CALL	BBSDST	;(S)
;
	LD	HL,ENTIM0
	ADD	HL,DE
	LD	(HL),$17
;
	PUSH	BC
;
	LD	HL,ENCHPT
	ADD	HL,BC
	LD	C,(HL)
;
	LD	HL,DDBRXD
	ADD	HL,BC
	LD	A,(WORK0)
	ADD	A,(HL)
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,DDBRYD
	ADD	HL,BC
	LD	A,(WORK1)
	ADD	A,(HL)
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),A
;
	POP	BC
;
		jp	BSFLCK	;(S)
;;;;;;;;	CALL	BSFLCK	;(S)
;;;;;;;;DDM30A0
;;;;;;;;	RET
;
;===========================================
DDNGOCD
	DB	$66,$23,$64,$23
	DB	$64,$03,$66,$03
	DB	$62,$03,$62,$23
	DB	$60,$03,$60,$23
;
	DB	$68,$03,$68,$23
;
DDNGOCS
	CALL	LDTIM1
	LD	HL,SCRLFG
	OR	(HL)
	LD	HL,ENTIM2
	ADD	HL,BC
	OR	(HL)
	JP	NZ,DDNGOCSS
;
	LD	A,(ENCHPT2)
	CP	$02
	JR	NZ,DDC010
;
	CALL	DDNGCS2
	CALL	DDNGCS1
;
	JP	ENPSSV
DDC010
	CALL	DDNGCS1
	CALL	DDNGCS2
;
	JP	ENPSSV
;===================================
DDNGCS1
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	LD	(WORK0),A
;
	PUSH	BC
;
	LD	HL,ENJYUN
	ADD	HL,BC
	LD	E,(HL)
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	C,(HL)
;
	SLA	E
	SLA	E
	SLA	E
	SLA	E
	SLA	E
	SLA	E
	LD	D,B
	PUSH	DE
	LD	HL,XMVBUF
	ADD	HL,DE
;
	LD	A,(WORK0)
	SUB	C  ;$24
	AND	$3F
	LD	E,A
	LD	D,B
	ADD	HL,DE
	LD	A,(HL)
	LD	(ENSVXL),A
;
	POP	DE
;
	LD	HL,YMVBUF
	ADD	HL,DE
;
	LD	A,(WORK0)
	SUB	C  ;$24
	AND	$3F
	LD	E,A
	LD	D,B
	ADD	HL,DE
	LD	A,(HL)
	LD	(ENDSYP),A
;
	POP	BC
;
	LD	DE,DDNGOCD
		jp	EN2CST
;;;;;;;;	CALL	EN2CST
;;;;;;;;	RET
;============================================
DDNGCS2
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	LD	(WORK0),A
;
	PUSH	BC
;
	LD	HL,ENJYUN
	ADD	HL,BC
	LD	E,(HL)
;
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	C,(HL)
;
	SLA	E
	SLA	E
	SLA	E
	SLA	E
	SLA	E
	SLA	E
	LD	D,B
	PUSH	DE
	LD	HL,XMVBUF
	ADD	HL,DE
;
	LD	A,(WORK0)
	SUB	C  ;$24
	AND	$3F
	LD	E,A
	LD	D,B
	ADD	HL,DE
	LD	A,(HL)
	LD	(ENSVXL),A
;
	POP	DE
;
	LD	HL,YMVBUF
	ADD	HL,DE
;
	LD	A,(WORK0)
	SUB	C  ;$24
	AND	$3F
	LD	E,A
	LD	D,B
	ADD	HL,DE
	LD	A,(HL)
	LD	(ENDSYP),A
;
	POP	BC
;
	LD	A,$04
	LD	(ENCHPT2),A
	LD	DE,DDNGOCD
	CALL	EN2CST
;
	LD	HL,ENCHPT
	ADD	HL,BC
	LD	A,(HL)
	LD	(ENCHPT2),A
	RET
;=========================================
DDNGOCDS
;0
	DB	$00,$00,$66,$20
	DB	$00,$08,$64,$20
	DB	$00,$F3,$68,$00
	DB	$00,$FB,$68,$20
;1
	DB	$00,$00,$64,$00
	DB	$00,$08,$66,$00
	DB	$00,$0D,$68,$00
	DB	$00,$15,$68,$20
;2
	DB	$00,$00,$62,$00
	DB	$00,$08,$62,$20
	DB	$0D,$00,$68,$00
	DB	$0D,$08,$68,$20
;3
	DB	$00,$00,$60,$00
	DB	$00,$08,$60,$20
	DB	$F3,$00,$68,$00
	DB	$F3,$08,$68,$20
;- - BIG - - 
DDNGOCBS
;0
	DB	$00,$04,$66,$20
	DB	$00,$0C,$64,$20
;
	DB	$F8,$EC,$6C,$00
	DB	$F8,$F4,$6A,$00
	DB	$F8,$FC,$6A,$20
	DB	$F8,$04,$6C,$20
	DB	$08,$EC,$6C,$40
	DB	$08,$F4,$6E,$40
	DB	$08,$FC,$6E,$60
	DB	$08,$04,$6C,$60
;1
	DB	$00,$FC,$64,$00
	DB	$00,$04,$66,$00
;
	DB	$F8,$04,$6C,$00
	DB	$F8,$0C,$6A,$00
	DB	$F8,$14,$6A,$20
	DB	$F8,$1C,$6C,$20
	DB	$08,$04,$6C,$40
	DB	$08,$0C,$6E,$40
	DB	$08,$14,$6E,$60
	DB	$08,$1C,$6C,$60
;2
	DB	$04,$F8,$6C,$00
	DB	$04,$00,$6A,$00
	DB	$04,$08,$6A,$20
	DB	$04,$10,$6C,$20
	DB	$14,$F8,$6C,$40
	DB	$14,$00,$6E,$40
	DB	$14,$08,$6E,$60
	DB	$14,$10,$6C,$60
;
	DB	$FC,$00,$62,$00
	DB	$FC,$08,$62,$20
;3
	DB	$04,$00,$60,$00
	DB	$04,$08,$60,$20
;
	DB	$EC,$F8,$6C,$00
	DB	$EC,$00,$6A,$00
	DB	$EC,$08,$6A,$20
	DB	$EC,$10,$6C,$20
	DB	$FC,$F8,$6C,$40
	DB	$FC,$00,$6E,$40
	DB	$FC,$08,$6E,$60
	DB	$FC,$10,$6C,$60
DDNGOCB2
;S0
	DB	$00,$02,$66,$20
	DB	$00,$0A,$64,$20
;
	DB	$FB,$EF,$6C,$00
	DB	$FB,$F7,$6E,$00
	DB	$FB,$F9,$6E,$20
	DB	$FB,$01,$6C,$20
	DB	$05,$EF,$6C,$40
	DB	$05,$F7,$6E,$40
	DB	$05,$F9,$6E,$60
	DB	$05,$01,$6C,$60
;S1
	DB	$00,$FE,$64,$00
	DB	$00,$02,$66,$00
;
	DB	$FB,$07,$6C,$00
	DB	$FB,$0F,$6E,$00
	DB	$FB,$11,$6E,$20
	DB	$FB,$19,$6C,$20
	DB	$05,$07,$6C,$40
	DB	$05,$0F,$6E,$40
	DB	$05,$11,$6E,$60
	DB	$05,$19,$6C,$60
;S2
	DB	$07,$FB,$6C,$00
	DB	$07,$03,$6E,$00
	DB	$07,$05,$6E,$20
	DB	$07,$0D,$6C,$20
	DB	$11,$FB,$6C,$40
	DB	$11,$03,$6E,$40
	DB	$11,$05,$6E,$60
	DB	$11,$0D,$6C,$60
;
	DB	$FE,$00,$62,$00
	DB	$FE,$08,$62,$20
;S3
	DB	$02,$00,$60,$00
	DB	$02,$08,$60,$20
;
	DB	$EF,$FB,$6C,$00
	DB	$EF,$03,$6E,$00
	DB	$EF,$05,$6E,$20
	DB	$EF,$0D,$6C,$20
	DB	$F9,$FB,$6C,$40
	DB	$F9,$03,$6E,$40
	DB	$F9,$05,$6E,$60
	DB	$F9,$0D,$6C,$60
;- - - - - - - - - - - - - - - - - - - -
DDNGOCSS
	LD	HL,ENTIM2
	ADD	HL,BC
	LD	A,(HL)
	CP	$08
	JR	C,DDCS010
	CP	$28
	JR	NC,DDCS010	; Big ?
;				; Yes !
	LD	HL,DDNGOCB2
	CP	$0E
	JR	C,DDCS008
	CP	$22
	JR	NC,DDCS008
;
	LD	HL,DDNGOCBS
DDCS008
	LD	A,(ENCHPT2)
	LD	E,A
	LD	D,B
;
	SLA	E
	SLA	E
	SLA	E
	LD	A,E
	SLA	E
	SLA	E
	ADD	A,E
	LD	E,A
;
	ADD	HL,DE
;
	LD	C,$0A
	CALL	ENOMST
;
	LD	A,$08
		jp	NXOMSBL
;;;;;;;;	CALL	NXOMSBL
;;;;;;;;	RET
;
;
DDCS010
	LD	A,(ENCHPT2) ;HL)
	RLA
	RLA
	RLA
	RLA
	AND	%11110000
	LD	E,A
	LD	D,B ;$0
	LD	HL,DDNGOCDS
	ADD	HL,DE
;
	LD	C,$4
	CALL	ENOMST
;
	LD	A,$02
		jp	NXOMSBL
;;;;;;;;	CALL	NXOMSBL
;;;;;;;;;
;;;;;;;;	RET	
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�� �� �{�X				%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
BSNAKIT
	CALL	LDTIM0
	LD	(HL),$80
;
	XOR	A
	LD	(BHEADFG),A
	LD	(BHAZUCT),A
	LD	(BSLIFE),A
;
	LD	HL,ENWRK4
	ADD	HL,BC
	LD	(HL),$01
;
	RET
;===================================================
;===================================================
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�t�b�J�[(���x���T�{�X)					%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
BSNAKMV
	CALL	SHRVSE	;�V���b�^�[������␳�I
;
	CALL	BSSDCK	;(S)
;
	CALL	ENHNCL
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
	RST	0
	DW	BSTAIL	; Main ctrl.
	DW	BSHEAD	; Head !
	DW	BSHAZU	; Hazure !
;- - - - - - - - - - - - - - - - - - - - -
BHEAD	EQU	$01
BHAZU	EQU	$02
;- - - - - - - - - - - - - - - - - - - - -
BSTAIL
	LD	A,C
	LD	(BSINDX),A
;
	LD	A,(ENSTAT2)
	RST	0
	DW	BSN1000
	DW	BSN2000
	DW	BSN3000
	DW	BSN4000
;===================================================
BSN1000
	CALL	LDTIM0
		ret	NZ
;;;;;;;;	JR	NZ,BSN1010
;
	LD	(HL),$80
	LD	A,$FF
	LD	(TILTCT),A
;
	LD	A,$3E
	LD	(SOUND3),A	;(S) TODY
	LD	($D3E8),A	;(S)
;
	LD	A,$4
	LD	(TILTMK),A
;
		jp	STATINC
;;;;;;;;	CALL	STATINC
;;;;;;;;BSN1010
;;;;;;;;	RET
;===================================================
BSNBGX
	DB	$20,$60
	DB	$20,$60
BSNBGY
	DB	$00,$00
	DB	$70,$70
BSNBGCH
;
	DB	$08,$08,$08,$08
	DB	$09,$0B,$0B,$0A
;
	DB	$08,$08,$08,$08
	DB	$09,$0B,$0B,$0A
;
	DB	$05,$07,$07,$06
	DB	$04,$04,$04,$04
;
	DB	$05,$07,$07,$06
	DB	$04,$04,$04,$04
;
;---------------------------------------------
BSN2000
	LD	A,$38
	LD	(OBJXP),A	
	ADD	A,$10
	LD	HL,ENXPSL
	ADD	HL,BC
	LD	(HL),A
	LD	A,$30
	LD	(OBJYP),A	
	ADD	A,$18
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	(HL),A
;
	CALL	LDTIM0
	JP	NZ,BSN2020
;
	LD	(HL),$FF
;
	XOR	A
	LD	($D3E8),A	;(S)
;
	CALL	STATINC
;
	LD	A,DANA1
	LD	(BGUNDT+$11+$34),A
	LD	A,DANA1
	LD	(BGUNDT+$11+$35),A
	LD	A,DANA2
	LD	(BGUNDT+$11+$44),A
	LD	A,DANA2
	LD	(BGUNDT+$11+$45),A
;
	CALL	LDTIM1
	LD	(HL),$1F
;
	CALL	LDTIM3
	LD	(HL),$B0
;
	CALL	ISIBRKL
	LD	HL,ENMODE
	ADD	HL,BC
	LD	(HL),EMOVE
;
	LD	HL,ENXPSL
	ADD	HL,BC
	LD	A,(HL)
	ADD	A,$10
	LD	(HL),A
;
	CALL	ISIBRKL
;
	LD	HL,ENMODE
	ADD	HL,BC
	LD	(HL),EMOVE
;
	CALL	ISIBRKL
;
	CALL	BBSDST	;(S)
;
	LD	HL,ENMODE
	ADD	HL,BC
	LD	(HL),EMOVE
;
	CALL	OBJBG
;
		LD	A,(CGBFLG)
		AND	A
		JR	Z,BSN2000_PASS

		PUSH	BC

		LD	A,(VRAMH)
		LD	H,A
		LD	A,(VRAML)
		LD	L,A
		PUSH	HL		; �A�h���X�ۑ�

		INC	L		; �␳�I
		LD	A,L
		LD	(VRAML),A
		PUSH	HL
		LD	A,DANA1
		LD	(UNTATR),A
		LD	A,:BSNSUB
		CALL	BG1UNIT_ATR_SUB	; ����

		LD	A,(VRAML)
		INC	A
		INC	A
		LD	(VRAML),A
;;;;;;		LD	A,DANA1
;;;;;;		LD	(UNITATR),A
		LD	A,:BSNSUB
		CALL	BG1UNIT_ATR_SUB	; �E��

		POP	HL
		LD	DE,$0040
		ADD	HL,DE
		LD	A,H
		LD	(VRAMH),A
		LD	A,L
		LD	(VRAML),A
		LD	A,DANA2
		LD	(UNTATR),A
		LD	A,:BSNSUB
		CALL	BG1UNIT_ATR_SUB	; ����

		LD	A,(VRAML)
		INC	A
		INC	A
		LD	(VRAML),A
;;;;;;		LD	A,DANA1
;;;;;;		LD	(UNITATR),A
		LD	A,:BSNSUB
		CALL	BG1UNIT_ATR_SUB	; �E��
		
		POP	HL
		LD	A,H
		LD	(VRAMH),A
		LD	A,L
		LD	(VRAML),A
		POP	BC
BSN2000_PASS
;
	LD	A,(VRAMD)
	LD	E,A
	LD	D,$00
	LD	HL,VRAMD+1
	ADD	HL,DE
;
	ADD	A,28
	LD	(VRAMD),A
;
	CALL	BSNSUB
	CALL	BSNSUB
	CALL	BSNSUB
BSNSUB
	LD	A,(VRAMH)
	LD	(HLI),A
	LD	A,(VRAML)
	INC	A
	LD	(VRAML),A
	LD	(HLI),A
	LD	A,$83
	LD	(HLI),A
	LD	A,$76
	LD	(HLI),A
	LD	A,$7E
	LD	(HLI),A
	LD	A,$7E
	LD	(HLI),A
	LD	A,$77
	LD	(HLI),A
;
	XOR	A
	LD	(HL),A
	RET
BSN2020
	CP	$40
	JP	NZ,BSN2022	; Hibiware set ?
;				; yes !
	CALL	OBJBG
;
	LD	A,(VRAMD)
	LD	E,A
	LD	D,$00
	LD	HL,VRAMD+1
	ADD	HL,DE
;
	ADD	A,28
	LD	(VRAMD),A
;
	CALL	BSNSUB2
;
BSNSUB2
	LD	A,(VRAMH)
	LD	(HLI),A
	LD	A,(VRAML)
	INC	A
	LD	(VRAML),A
	LD	(HLI),A
	LD	A,$83
	LD	(HLI),A
	LD	A,$1C
	LD	(HLI),A
	LD	A,$1E
	LD	(HLI),A
	LD	A,$1C
	LD	(HLI),A
	LD	A,$1E
	LD	(HLI),A
;
	LD	A,(VRAMH)
	LD	(HLI),A
	LD	A,(VRAML)
	INC	A
	LD	(VRAML),A
	LD	(HLI),A
	LD	A,$83
	LD	(HLI),A
	LD	A,$1D
	LD	(HLI),A
	LD	A,$1F
	LD	(HLI),A
	LD	A,$1D
	LD	(HLI),A
	LD	A,$1F
	LD	(HLI),A
;
	XOR	A
	LD	(HL),A
BSN2022
	RET
;
;===================================================
BSN3000
	LD	HL,ENXPSL
	ADD	HL,BC
	LD	A,(HL)
	PUSH	AF
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	A,(HL)
	PUSH	AF
	CALL	BSN4000
	POP	AF
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	(HL),A
	POP	AF
	LD	HL,ENXPSL
	ADD	HL,BC
	LD	(HL),A
;
	CALL	ENPSSV
;
	CALL	LDTIM0
		jp	z,STATINC
;;;;;;;;	JR	NZ,BSN3010
;;;;;;;;;
;;;;;;;;	CALL	STATINC
;;;;;;;;	RET
BSN3010
	CP	$98
	JR	Z,BSN3021
	CP	$68
	JR	Z,BSN3021
	CP	$38
	JR	Z,BSN3021
	CP	$08
		ret	NZ
;;;;;;;;	JP	NZ,BSN3030
;
BSN3021
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	CP	$04
		ret	Z
;;;;;;;;	JP	Z,BSN3030
;
	INC	(HL)
	LD	E,A
	LD	D,B
	LD	HL,BSNBGX
	ADD	HL,DE
	LD	A,(HL)
	LD	(OBJXP),A	
	LD	HL,BSNBGY
	ADD	HL,DE
	LD	A,(HL)
	LD	(OBJYP),A	
;
	SLA	E
	SLA	E
	SLA	E
	LD	HL,BSNBGCH
	ADD	HL,DE
	PUSH	HL
;
	CALL	OBJBG
;
	LD	A,(VRAMD)
	LD	E,A
	LD	D,$00
	LD	HL,VRAMD+1
	ADD	HL,DE
;
	ADD	A,$0E
	LD	(VRAMD),A
;
	POP	DE
;
	LD	A,(VRAMH)
	LD	(HLI),A
	LD	A,(VRAML)
	LD	(HLI),A
	LD	A,$03
	LD	(HLI),A
	LD	A,(DE)
	INC	DE
	LD	(HLI),A
	LD	A,(DE)
	INC	DE
	LD	(HLI),A
	LD	A,(DE)
	INC	DE
	LD	(HLI),A
	LD	A,(DE)
	INC	DE
	LD	(HLI),A
;
	LD	A,(VRAMH)
	LD	(HLI),A
	LD	A,(VRAML)
	ADD	A,$20
	LD	(HLI),A
	LD	A,$03
	LD	(HLI),A
	LD	A,(DE)
	INC	DE
	LD	(HLI),A
	LD	A,(DE)
	INC	DE
	LD	(HLI),A
	LD	A,(DE)
	INC	DE
	LD	(HLI),A
	LD	A,(DE)
	LD	(HLI),A
	XOR	A
	LD	(HL),A
;- - - - - - - - - - - - - - - -
	LD	A,DKAN0
	LD	(BGUNDT+$11+$02),A
	LD	(BGUNDT+$11+$06),A
	LD	A,DKAN1
	LD	(BGUNDT+$11+$03),A
	LD	(BGUNDT+$11+$07),A
	LD	A,DKAN2
	LD	(BGUNDT+$11+$72),A
	LD	(BGUNDT+$11+$76),A
	LD	A,DKAN3
	LD	(BGUNDT+$11+$73),A
	LD	(BGUNDT+$11+$77),A
;- - - - - - - - - - - - - - - -
	LD	A,BSNAK
	CALL	ENIDSHL
;
	LD	HL,ENWRK0
	ADD	HL,DE
	LD	(HL),BHEAD
;
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	A,(OBJXP)
	ADD	A,$10
	LD	(HL),A
	LD	HL,ENXPSL
	ADD	HL,BC
	LD	(HL),A
;
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	A,(OBJYP)
	ADD	A,$10
	LD	(HL),A
	LD	HL,ENYPSL
	ADD	HL,BC
	ADD	A,$08
	LD	(HL),A
;
	LD	HL,ENTIM0
	ADD	HL,DE
	LD	(HL),$2F
;
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	CP	$03
	LD	A,$00
	JR	C,BSN3028
;
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	A,(HL)
	SUB	$08
	LD	(HL),A
;
	LD	A,$01
BSN3028
	LD	HL,ENMUKI
	ADD	HL,DE
	LD	(HL),A
;
	CALL	ISIBRKL
;
	LD	HL,ENMODE
	ADD	HL,BC
	LD	(HL),EMOVE
;
		jp	BBSDST	;(S)
;;;;;;;;	CALL	BBSDST	;(S)
;;;;;;;;BSN3030
;;;;;;;;	RET
;===================================================
BSTYAD
	DB	$D0,$D1,$D4,$D9,$DF,$E6,$EE,$F7
BSTXAD
	DB	$00,$09,$12,$1A,$21,$27,$2C,$2F
	DB	$30,$2F,$2C,$27,$21,$1A,$12,$09
	DB	$00,$F7,$EE,$E6,$DF,$D9,$D4,$D1
	DB	$D0,$D1,$D4,$D9,$DF,$E6,$EE,$F7
;-------------------------------------------------------
BSTYA2
	DB	$DA,$DB,$DD,$E1,$E6,$EB,$F2,$F9
BSTXA2
	DB	$00,$07,$0E,$15,$1A,$1F,$23,$25
	DB	$26,$25,$23,$1F,$1A,$15,$0E,$07
	DB	$00,$F9,$F2,$EB,$E6,$E1,$DD,$DB
	DB	$DA,$DB,$DD,$E1,$E6,$EB,$F2,$F9
;-------------------------------------------------------
BSTYA3
	DB	$E4,$E5,$E7,$E9,$ED,$F1,$F6,$FB
BSTXA3
	DB	$00,$05,$0A,$0F,$13,$17,$19,$1B
	DB	$1C,$1B,$19,$17,$13,$0F,$0A,$05
	DB	$00,$FB,$F6,$F1,$ED,$E9,$E7,$E5
	DB	$E4,$E5,$E7,$E9,$ED,$F1,$F6,$FB
;-------------------------------------------------------
BSTYA4
	DB	$EE,$EF,$F0,$F2,$F4,$F6,$FA,$FD
BSTXA4
	DB	$00,$03,$06,$0A,$0C,$0E,$10,$11
	DB	$12,$11,$10,$0E,$0C,$0A,$06,$03
	DB	$00,$FD,$FA,$F6,$F4,$F2,$F0,$EF
	DB	$EE,$EF,$F0,$F2,$F4,$F6,$FA,$FD
;-------------------------------------------------------
BSTYA5
	DB	$F8,$F9,$FA,$FB,$FB,$FC,$FD,$FF
BSTXA5
	DB	$00,$01,$03,$04,$05,$05,$06,$07
	DB	$08,$07,$06,$05,$05,$04,$03,$01
	DB	$00,$FF,$FD,$FC,$FB,$FB,$FA,$F9
	DB	$F8,$F9,$FA,$FB,$FB,$FC,$FD,$FF
;----------------------
BSNSWD
	DB	$00,$00,$01,$02,$03,$04,$04,$04
	DB	$04,$04,$04,$03,$02,$01,$00,$00
	DB	$00,$00,$FF,$FE,$FD,$FC,$FC,$FC
	DB	$FC,$FC,$FC,$FD,$FE,$FF,$00,$00
BSNSW2
	DB	$00,$00,$01,$01,$02,$02,$03,$03
	DB	$03,$03,$03,$02,$02,$01,$01,$00
	DB	$00,$00,$FF,$FF,$FE,$FE,$FD,$FD
	DB	$FD,$FD,$FD,$FE,$FE,$FF,$FF,$00
BSNSW3
	DB	$00,$00,$01,$01,$01,$02,$02,$02
	DB	$02,$02,$02,$02,$01,$01,$01,$00
	DB	$00,$00,$FF,$FF,$FF,$FE,$FE,$FE
	DB	$FE,$FE,$FE,$FE,$FF,$FF,$FF,$00
BSNSW4
	DB	$00,$00,$01,$01,$01,$01,$01,$01
	DB	$01,$01,$01,$01,$01,$01,$00,$00
	DB	$00,$00,$FF,$FF,$FF,$FF,$FF,$FF
	DB	$FF,$FF,$FF,$FF,$FF,$FF,$00,$00
;- - - - - - -  - - - - - - - - - - - -
BSTADD
	DW	BSTYA5
	DW	BSTYA4
	DW	BSTYA3
	DW	BSTYA2
	DW	BSTYAD
BSTLRG
	DB	4,3,2,1
;------------------------------------------------------
BSHSTX
	DB	$30,$70
	DB	$30,$70
BSHSTY
	DB	$10,$10
	DB	$80,$80
BSHSTM
	DB	$00,$00
	DB	$01,$01
;- - - - - - - - - - - - - - - - -
BSN4000
;	LD	HL,ENTIM3
;	ADD	HL,BC
	CALL	LDTIM3
;
	LD	A,(BHEADFG)
	AND	A
	JR	Z,BSN4002
;
	LD	(HL),$20
BSN4002
	LD	A,(HL);	OR	(HL)
	AND	A
	JR	NZ,BSN4008
;
	LD	(HL),$2C
;- - - - - - - - - - - - - - - -
	LD	A,BSNAK
	CALL	ENIDSHL
	JR	C,BSN4008
;
	LD	HL,ENLIFE
	ADD	HL,DE
	LD	(HL),$FF
;
	LD	HL,ENCHPT
	ADD	HL,DE
	LD	(HL),$FF
;
	LD	HL,ENWRK0
	ADD	HL,DE
	LD	(HL),BHEAD
;
	LD	HL,ENSTAT
	ADD	HL,DE
	LD	(HL),$01
;
	PUSH	BC
;
	CALL	RNDSUB
	AND	$03
	LD	C,A
	LD	HL,BSHSTX
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,ENWRK1
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,BSHSTY
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,ENWRK2
	ADD	HL,DE
	LD	(HL),A
;
	LD	HL,ENTIM0
	ADD	HL,DE
	LD	(HL),$5F
;
	LD	HL,BSHSTM
	ADD	HL,BC
	LD	A,(HL)
;
	LD	HL,ENMUKI
	ADD	HL,DE
	LD	(HL),A
;
	POP	BC
;===================================
BSN4008
	CALL	LDTIM1
	JR	Z,BSN4009
	RRA
	RRA
	RRA
	AND	$03
	LD	E,A
	LD	D,B
	LD	HL,BSTLRG
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENWRK2
	ADD	HL,BC
	LD	(HL),A
;
BSN4009
	LD	HL,ENWRK3
	ADD	HL,BC
	LD	A,(HL)
	AND	$07
	LD	HL,BHEADFG
	OR	(HL)
	JR	NZ,BSN4010
;
	LD	A,(ENSTAT2)
	CP	$03
	JR	NZ,BSN4010
;
	LD	HL,ENWRK4
	ADD	HL,BC
	LD	E,(HL)
;
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	A,(HL)
	ADD	A,E
	AND	$1F
	LD	(HL),A
;
BSN4010
	LD	A,(BHEADFG)
	AND	A
	LD	A,$00
	JR	NZ,BSN4011
;
	LD	HL,ENWRK3
	ADD	HL,BC
	INC	(HL)
	LD	A,(HL)
	RRA
	RRA
	AND	$1F
BSN4011
	LD	(ENHELP),A
;
	LD	HL,ENXPSL
	ADD	HL,BC
	LD	(HL),$50
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	(HL),$48
;----------------------------------
	LD	A,(ENHELP)
	LD	E,A
	LD	D,B
	LD	HL,BSNSWD
	ADD	HL,DE
	LD	A,(HL)
;
	LD	HL,ENWRK1
	ADD	HL,BC
	ADD	A,(HL)
	AND	$1F
	LD	E,A
	LD	D,B
;
	PUSH	DE
;
	LD	HL,ENWRK2
	ADD	HL,BC
	LD	E,(HL)
	SLA	E
	LD	D,B
	LD	HL,BSTADD
	ADD	HL,DE
	LD	A,(HLI)
	LD	H,(HL)
	LD	L,A
;
	POP	DE
;
	LD	A,$02
	CALL	BSNCSB
;----------------------------------
	LD	A,(ENHELP)
	LD	E,A
	LD	D,B
	LD	HL,BSNSW2
	ADD	HL,DE
	LD	A,(HL)
;
	LD	HL,ENWRK1
	ADD	HL,BC
	ADD	A,(HL)
	AND	$1F
	LD	E,A
	LD	D,B
;
	PUSH	DE
;
	LD	HL,ENWRK2
	ADD	HL,BC
	LD	E,(HL)
	DEC	E
	LD	A,E
	CP	$F0
	JP	NC,BSNC90
	SLA	E
	LD	D,B
	LD	HL,BSTADD
	ADD	HL,DE
	LD	A,(HLI)
	LD	H,(HL)
	LD	L,A
;
	POP	DE
;
	LD	A,$01
	CALL	BSNCSB
;----------------------------------
	LD	A,(ENHELP)
	LD	E,A
	LD	D,B
	LD	HL,BSNSW3
	ADD	HL,DE
	LD	A,(HL)
;
	LD	HL,ENWRK1
	ADD	HL,BC
	ADD	A,(HL)
	AND	$1F
	LD	E,A
	LD	D,B
;
	PUSH	DE
;
	LD	HL,ENWRK2
	ADD	HL,BC
	LD	E,(HL)
	DEC	E
	DEC	E
	LD	A,E
	CP	$F0
	JP	NC,BSNC90
	SLA	E
	LD	D,B
	LD	HL,BSTADD
	ADD	HL,DE
	LD	A,(HLI)
	LD	H,(HL)
	LD	L,A
;
	POP	DE
;
	LD	A,$01
	CALL	BSNCSB
;----------------------------------
	LD	A,(ENHELP)
	LD	E,A
	LD	D,B
	LD	HL,BSNSW4
	ADD	HL,DE
	LD	A,(HL)
;
	LD	HL,ENWRK1
	ADD	HL,BC
	ADD	A,(HL)
	AND	$1F
	LD	E,A
	LD	D,B
;
	PUSH	DE
;
	LD	HL,ENWRK2
	ADD	HL,BC
	LD	E,(HL)
	DEC	E
	DEC	E
	DEC	E
	LD	A,E
	CP	$F0
	JP	NC,BSNC90
	SLA	E
	LD	D,B
	LD	HL,BSTADD
	ADD	HL,DE
	LD	A,(HLI)
	LD	H,(HL)
	LD	L,A
;
	POP	DE
;
	LD	A,$01
	CALL	BSNCSB
;
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	E,(HL)
	LD	D,B
;
	PUSH	DE
;
	LD	HL,ENWRK2
	ADD	HL,BC
	LD	E,(HL)
	DEC	E
	DEC	E
	DEC	E
	DEC	E
	LD	A,E
	CP	$F0
	JP	NC,BSNC90
	SLA	E
	LD	D,B
	LD	HL,BSTADD
	ADD	HL,DE
	LD	A,(HLI)
	LD	H,(HL)
	LD	L,A
;
	POP	DE
;
	LD	A,$00
;=======================================
BSNCSB
	LD	(ENCHPT2),A
;
	ADD	HL,DE
	LD	A,$48
	ADD	A,(HL)
	LD	(ENDSYP),A
	LD	A,L
	ADD	A,$08
	LD	L,A
;
	LD	A,H
	ADC	A,$00
	LD	H,A
;
	LD	A,$50
	ADD	A,(HL)
	LD	(ENSVXL),A
;
	CALL	BSTAILCS
;
	LD	A,(PLXPSL)
	LD	HL,ENSVXL
	SUB	(HL)
	ADD	A,$08
	CP	$10
	JR	NC,BSN4080
;
	LD	A,(PLYPSL)
	LD	HL,ENDSYP
	SUB	(HL)
	ADD	A,$08
	CP	$10
	JR	NC,BSN4080
;
	LD	A,(PLMODE)
	AND	A
	JR	NZ,BSN4080
;
	CALL	PLDMST0
;
	LD	A,$18
	CALL	PSERCH2L
;
	LD	A,(WORK0)
	LD	(PLYSPD),A
	LD	A,(WORK1)
	LD	(PLXSPD),A
BSN4080
	RET
;- - - - - - - - - - - - - -
BSNC90
	POP	DE
	RET
;===================================================
BSTAILCD
	DB	$70,$07,$70,$27
	DB	$72,$07,$72,$27
	DB	$74,$07,$74,$27
	DB	$7C,$06,$7C,$26
	DB	$7E,$06,$7E,$26
;- - - - - - - - - - - - - - - - - - -
BSTAILCS
	LD	DE,BSTAILCD
		jp	EN2CST
;;;;;;;;	CALL	EN2CST
;;;;;;;;	RET
;===================================================
;===================================================
;===================================================
;===================================================
BSHEAD
	CALL	BSHEADCS
;
	CALL	E3STCK
;
	LD	A,(ENSTAT2)
	RST	0
	DW	BSH100
	DW	BSH200
	DW	BSH300
	DW	BSH400
	DW	BSHFAIL
;--------------------------------------
BSHBCD
	DB	$09,$0A,$0B,$0B,$0B,$0B
BSHBC2
	DB	$0C,$0D,$0E,$0E,$0E,$0E
;
BSH100
	CALL	LDTIM0
	JP	Z,BHCLER
	LD	E,A
;
	CP	$18
	JR	NZ,BSH101
;
	LD	A,$16
	LD	(SOUND2),A	;(S)
BSH101
	LD	A,E
	RRA
	RRA
	RRA
	AND	$07
	LD	E,A
	LD	D,B
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	LD	HL,BSHBCD
	JR	Z,BSH110
	LD	HL,BSHBC2
BSH110
	ADD	HL,DE
	LD	A,(HL)
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;	RET
;------------------------------------
BSH2CD
	DB	$09,$09,$0A,$0A
	DB	$0B,$0B,$0B,$0B
	DB	$0B,$0B,$0B,$0B
	DB	$0A,$0A,$09,$09
	DB	$09,$09,$09,$09
	DB	$09,$09,$09,$09
BSH2C2
	DB	$0C,$0C,$0D,$0D
	DB	$0E,$0E,$0E,$0E
	DB	$0E,$0E,$0E,$0E
	DB	$0D,$0D,$0C,$0C
	DB	$0C,$0C,$0C,$0C
	DB	$0C,$0C,$0C,$0C
;------------------
HZITYS
	DB	$18,$D8
HZITMK
	DB	$04,$0C
;
BSH200
	CALL	LDTIM0
	JP	Z,BHCLER
;
	LD	E,A
	CP	$20
	JR	NZ,BSH202
;
	LD	A,$16
	LD	(SOUND2),A	;(S)
BSH202
	LD	A,E
	RRA
	RRA
	AND	$1F
	LD	E,A
	LD	D,B
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	LD	HL,BSH2CD
	JR	Z,BSH210
	LD	HL,BSH2C2
BSH210
	ADD	HL,DE
	LD	A,(HL)
	CALL	ENPTST
;
	CP	$0B
	JR	Z,BSH220
	CP	$0E
	JP	NZ,BSH290
BSH220
	LD	A,(PLCMKI)
	AND	%00000010
	JP	Z,BSH290
;
	LD	A,(PFUCKID)
	AND	A
	JP	Z,BSH290
	DEC	A
	LD	(BSINDX2),A
	LD	E,A
	LD	D,B
	LD	HL,ENMODE
	ADD	HL,DE
	LD	A,(HL)
	AND	A
	JR	Z,BSH290
;
	LD	HL,ENMYNO
	ADD	HL,DE
	LD	A,(HL)
	CP	FUCKS
	JR	NZ,BSH290
;
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	A,(ENSVXL)
	SUB	(HL)
	ADD	A,$08
	CP	$10
	JR	NC,BSH290
;
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	A,(ENDSYP)
	SUB	(HL)
	ADD	A,$0C
	CP	$18
	JR	NC,BSH290
;
	LD	A,(BHAZUCT)
	INC	A
	LD	(BHAZUCT),A
	CP	$04
	JR	C,BSH250
;
	CALL	RNDSUB
	AND	$01
	JR	NZ,BSH250
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	(HL),BHAZU
;
	CALL	LDTIM3
	LD	(HL),$30
;
	LD	HL,ENTIM2
	ADD	HL,BC
	LD	(HL),$20
;
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	E,(HL)
	LD	D,B
	LD	HL,HZITYS
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),A
;
	LD	HL,HZITMK
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENSTAT
	ADD	HL,BC
	LD	(HL),A
;
		jp	BHAZUIT
;;;;;;;;	CALL	BHAZUIT
;;;;;;;;	RET
BSH250
	CALL	STATINC
;
	LD	A,(BSINDX)
	LD	E,A
	LD	D,B
;
	LD	HL,ENWRK4	; Tail Spin muki turn !
	ADD	HL,DE
	LD	A,(HL)
	CPL
	INC	A
	LD	(HL),A
BSH290
	RET
;------------------------------------
BSH300
	CALL	BSKUBICS
;
	LD	A,$01
	LD	(BHEADFG),A
;
	LD	A,(BSINDX2)
	LD	E,A
	LD	D,B
	LD	HL,ENMODE
	ADD	HL,DE
	LD	A,(HL)
	AND	A
	JR	Z,BSH390
;
	LD	A,(PLFLSH)
	AND	A
	JR	NZ,BSH390
;
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	(HL),A	
;
	LD	A,(BSINDX)	; MASTER TAIL DOWWING !!
	LD	E,A
	LD	D,B
	LD	HL,ENWRK2
	ADD	HL,DE
	LD	A,(HL)
	CP	$00
	JR	Z,BSH320
;
	LD	A,(FRCNT)
	AND	$03
	JR	NZ,BSH320
;
	DEC	(HL)
BSH320
	LD	A,(FRCNT)
	AND	$07
	JR	NZ,BSH328
;- - TODDY --
	LD	A,$29
	LD	(SOUND1),A	;(S)
BSH328
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	LD	A,$00
	JR	Z,BSH330
	LD	A,$01
BSH330
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;	RET
;- - - - - - - - - - - - - - - - -
BSH390
	CALL	STATINC
;
	CALL	LDTIM0
	LD	(HL),$5F
	RET
;------------------------------------
BSHRTS
	DB	$10,$10,$0C,$08
	DB	$04,$03,$02,$01
	DB	$01,$01,$01,$01
	DB	$01,$01,$01,$01
	DB	$01,$01,$01,$01
	DB	$01,$01,$01,$01
BSHRT2
	DB	$03,$1F,$1F,$3F
	DB	$3F,$3F,$3F,$3F
	DB	$3F,$3F,$3F,$3F
	DB	$3F,$3F,$3F,$3F
	DB	$3F,$3F,$3F,$3F
	DB	$3F,$3F,$3F,$3F
;- - - - - - - - - - - - - - - - -
BSH400
	CALL	BSKUBICS
;
	LD	A,$01
	LD	(BHEADFG),A
;
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	LD	A,$08
	JR	Z,BSH430
	LD	A,$0F
BSH430
	CALL	ENPTST
;- - - Return to the fole  - - - -
	LD	A,(PLXPSL)
	PUSH	AF
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	A,(HL)
	LD	(PLXPSL),A
	LD	A,(PLYPSL)
	PUSH	AF
	LD	HL,ENWRK2
	ADD	HL,BC
	LD	A,(HL)
	LD	(PLYPSL),A
;
	CALL	LDTIM0
	RRA
	RRA
	AND	$3F
	LD	E,A
	LD	D,B
	LD	HL,BSHRTS
	ADD	HL,DE
	LD	A,(HL)
	CALL	PSERCH2L
;
	LD	A,(WORK1)
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
	LD	A,(WORK0)
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),A
;
	CALL	E3MVCL
;
	LD	A,(PLYPSL)
	LD	HL,ENDSYP
	SUB	(HL)
	ADD	A,$03
	CP	$06
	JR	NC,BSH450	; Return ?
;				; yes !
	CALL	BHCLER
BSH450
	POP	AF
	LD	(PLYPSL),A
	POP	AF
	LD	(PLXPSL),A
;
	CALL	LDTIM0
	RRA
	RRA
	AND	$3F
	LD	E,A
	LD	D,B
	LD	HL,BSHRT2
	ADD	HL,DE
	LD	A,(FRCNT)
	AND	(HL)
	JR	NZ,BSH460
;
	LD	A,(BSINDX)
	LD	E,A
	LD	D,B
	LD	HL,ENWRK2
	ADD	HL,DE
	LD	A,(HL)
	CP	$04
	JR	Z,BSH460	; Boss tail return !!
;
	INC	(HL)
BSH460
	RET
;------------------------------------
BHCLER
	XOR	A
	LD	(BHEADFG),A
;
	JP	E3CLER
;------------------------------------
;==================================================
BSHFAIL
	CALL	BSKUBICS
;
	CALL	LDTIM0
	JP	Z,HARTBS3
;
	LD	HL,ENFLSH
	ADD	HL,BC
	LD	(HL),A
;
	CP	$80
		ret	NC
;;;;;;;;	JR	NC,BSHF10
;
		jp	ESMRN3
;;;;;;;;	CALL	ESMRN3
;;;;;;;;BSHF10
;;;;;;;;	RET
;===========================================
ESMRN3
	AND	$07
		ret	NZ
;;;;;;;;	JR	NZ,K3L310
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
	SUB	$10
	LD	E,A
	LD	HL,ENDSYP
	ADD	A,(HL)
	LD	(HL),A
;
		jp	HBSMS3
;;;;;;;;	CALL	HBSMS3
;;;;;;;;K3L310
;;;;;;;;	RET
;
;===========================================
HBSMS3
	CALL	E3STCK2
;
	LD	A,(ENSVXL)
	LD	(WORK0),A
	LD	A,(ENDSYP)
	LD	(WORK1),A
;
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
HARTBS3
;;	CALL	SOUNDCLR	;(S)
;
	LD	A,HARTB
	CALL	ENIDSHL
;
	JR	HARTBS32
;
HARTBS31
	LD	A,HARTB
	CALL	ENIDSHL
;
	LD	A,$48
	LD	(WORK0),A
	LD	A,$10
	LD	(WORK1),A
;
HARTBS32
	LD	A,(WORK1)
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	A,(WORK0)
	LD	HL,ENXPSL
	ADD	HL,DE
	LD	(HL),A
;
	LD	A,(YKFLAG)
	AND	A
	JR	Z,HBS310
;
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),$F0
	JR	HBS320
HBS310
	LD	HL,ENZSPD
	ADD	HL,DE
	LD	(HL),$10
;
	LD	HL,ENZPSL
	ADD	HL,DE
	LD	(HL),$08
HBS320
	CALL	E3CLER
;
	LD	HL,SOUND3
	LD	(HL),$1A	;(S)
;;	CALL	BBSDST	;(S)
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�����{�X		   %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
BHZCDT
	DB	3,5,0,4,2,6,1,7
BSHAZU
	CALL	BSHAZUCS
;
	CALL	ENPSSV
;
	CALL	E3STCK
;
	LD	A,$01
	LD	(BHEADFG),A
;- - - - - - - - - - - - - - - - -
;	LD	HL,ENTIM3
;	ADD	HL,BC
;	LD	A,(HL)
	CALL	LDTIM3
	CP	$10
	JR	NC,BSHZF0
;
	AND	A
	JR	NZ,BSHZE0
;
	LD	A,(BSINDX)
	LD	E,A
	LD	D,B
	LD	HL,ENTIM1
	ADD	HL,DE
	LD	(HL),$1F
;
	LD	A,BOMBR
	CALL	ENIDSHL
;
;;	LD	A,$0C
;;	LD	(SOUND3),A	;(S)
	CALL	BBSDST	;(S)
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
	LD	HL,ENTIM0
	ADD	HL,DE
	LD	(HL),$17
;
	LD	HL,ENWRK3
	ADD	HL,DE
	LD	(HL),$01	;�v���C���[������I
;
	JP	BHCLER
;
BSHZE0
	LD	A,(FRCNT)
	LD	HL,ENFLSH
	ADD	HL,BC
	LD	(HL),A
	RET
;
BSHZF0
	LD	A,(FRCNT)
	AND	$07
	JR	NZ,BSHZ00
;
	LD	A,(BSINDX)
	LD	E,A
	LD	D,B
	LD	HL,ENWRK2
	ADD	HL,DE
	LD	A,(HL)
	AND	A
	JR	Z,BSHZ00
;
	DEC	(HL)
BSHZ00
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	INC	A
	AND	$7F
	LD	(HL),A
;
	LD	E,A
	LD	D,B
;
	LD	HL,XMVBUF
	ADD	HL,DE
	LD	A,(ENSVXL)
	LD	(HL),A
;
	LD	HL,YMVBUF
	ADD	HL,DE
	LD	A,(ENDSYP)
	LD	(HL),A
;=========================================
;
	LD	HL,ENTIM2
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,BHZ010
;
	CALL	E3MVCL
	JR	BHZ020
BHZ010
	CALL	HYSUB
;
BHZ020
	LD	HL,ENSTAT
	ADD	HL,BC
	LD	E,(HL)
	SRL	E
	LD	D,B
	LD	HL,BHZCDT
	ADD	HL,DE
	LD	A,(HL)
		jp	ENPTST
;;;;;;;;	CALL	ENPTST
;;;;;;;;	RET
;================================
;----------------------------------------------
BSHAZUCS
	LD	A,(ENCHPT2) ;HL)
	RLA
	RLA
	RLA
	RLA
	RLA
	AND	%11100000
	LD	E,A
	LD	D,B ;$0
	LD	HL,BSHEADCD
	ADD	HL,DE
;
	LD	C,$8
	CALL	ENOMST
;
	LD	A,$08
	CALL	NXOMSBL
;
;- - - Tail set - - - -
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	LD	(WORK0),A
;1=======================================
	LD	A,(WORK0)
	SUB	$0C
	AND	$7F
	LD	E,A
	LD	D,B
	LD	HL,XMVBUF
	ADD	HL,DE
	LD	A,(HL)
	LD	(ENSVXL),A
;
	LD	HL,YMVBUF
	ADD	HL,DE
	LD	A,(HL)
	LD	(ENDSYP),A
;
	LD	A,$00
	LD	(ENCHPT2),A
	LD	DE,BSTAILCD
	CALL	EN2CST
;2=====================================
	LD	A,(WORK0)
	SUB	$18
	AND	$7F
	LD	E,A
	LD	D,B
	LD	HL,XMVBUF
	ADD	HL,DE
	LD	A,(HL)
	LD	(ENSVXL),A
;
	LD	HL,YMVBUF
	ADD	HL,DE
	LD	A,(HL)
	LD	(ENDSYP),A
;
	LD	A,$00
	LD	(ENCHPT2),A
	LD	DE,BSTAILCD
	CALL	EN2CST
;3========================================
	LD	A,(WORK0)
	SUB	$24
	AND	$7F
	LD	E,A
	LD	D,B
	LD	HL,XMVBUF
	ADD	HL,DE
	LD	A,(HL)
	LD	(ENSVXL),A
;
	LD	HL,YMVBUF
	ADD	HL,DE
	LD	A,(HL)
	LD	(ENDSYP),A
;
	LD	A,$02
	LD	(ENCHPT2),A
	LD	DE,BSTAILCD
		jp	EN2CST
;;;;;;;;	CALL	EN2CST
;;;;;;;;	RET
;===========================================
;- - - - - - - - - - - - - - - - -
HSSPYD
	DB	$00,$06,$0C,$0E
HSSPXD
	DB	$10,$0E,$0C,$06
	DB	$00,$FA,$F4,$F2
	DB	$F0,$F2,$F4,$FA
	DB	$00,$06,$0C,$0E
HYSUB
	CALL	E3MVCL
;;;;	CALL	CREPKEL
	CALL	CRENPLL
;
	CALL	ENBGCKL
	LD	HL,ENCBFG
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,HS008
;
	CALL	RNDSUB
	RRA
	JR	C,HS00A
;
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	A,(HL)
	CPL
	INC	A
	LD	(HL),A
HS00A
	LD	HL,ENSTAT
	ADD	HL,BC
	LD	A,(HL)
	ADD	A,$08
	AND	$0F
	LD	(HL),A
;
	CALL	LDTIM0
	LD	(HL),$10
HS008
;;	LD	A,(FRCNT)
;;	AND	$03
;;	JR	NZ,HYM050	; Way chenge time ?
;	LD	HL,ENTIM1
;	ADD	HL,BC
;	LD	A,(HL)
;	AND	A
	CALL	LDTIM1
	JR	NZ,HS050
;		
	LD	(HL),$04
;
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,ENSTAT
	ADD	HL,BC
	ADD	A,(HL)
	AND	$0F
	LD	(HL),A
;
	LD	HL,ENSTAT
	ADD	HL,BC
	LD	E,(HL)
	LD	D,B ;$0
;
	LD	HL,HSSPYD
	ADD	HL,DE
;
	LD	A,(HL)
;
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),A
;
	LD	HL,HSSPXD
	ADD	HL,DE
;
	LD	A,(HL)
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
;
HS050
	CALL	LDTIM0
	JR	NZ,HS070
;
	CALL	RNDSUB
	AND	$1F
	ADD	A,$10
	LD	(HL),A
;
	CALL	RNDSUB
	AND	$02
	DEC	A
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	(HL),A
HS070
	RET
;------------------------------------
BHAZUIT
	LD	E,$80
	LD	HL,YMVBUF
BZI010
	XOR	A
	LD	(HLI),A
;
	DEC	E
	JR	NZ,BZI010
;
	RET
;------------------------------------
BSHEADCD
;0
	DB	$F8,$F8,$60,$07
	DB	$F8,$00,$62,$07
	DB	$F8,$08,$62,$27
	DB	$F8,$10,$60,$27
	DB	$08,$F8,$64,$07
	DB	$08,$00,$66,$07
	DB	$08,$08,$66,$27
	DB	$08,$10,$64,$27
;1
	DB	$F8,$F8,$64,$47
	DB	$F8,$00,$66,$47
	DB	$F8,$08,$66,$67
	DB	$F8,$10,$64,$67
	DB	$08,$F8,$60,$47
	DB	$08,$00,$62,$47
	DB	$08,$08,$62,$67
	DB	$08,$10,$60,$67
;2
	DB	$F8,$F8,$68,$07
	DB	$F8,$00,$6A,$07
	DB	$F8,$08,$62,$27
	DB	$F8,$10,$60,$27
	DB	$08,$F8,$68,$47
	DB	$08,$00,$6A,$47
	DB	$08,$08,$62,$67
	DB	$08,$10,$60,$67
;3
	DB	$F8,$F8,$60,$07
	DB	$F8,$00,$62,$07
	DB	$F8,$08,$6A,$27
	DB	$F8,$10,$68,$27
	DB	$08,$F8,$60,$47
	DB	$08,$00,$62,$47
	DB	$08,$08,$6A,$67
	DB	$08,$10,$68,$67
;4
	DB	$F8,$F8,$60,$07
	DB	$F8,$00,$62,$07
	DB	$F8,$08,$62,$27
	DB	$F8,$10,$60,$27
	DB	$08,$F8,$6C,$07
	DB	$08,$00,$6E,$07
	DB	$08,$08,$62,$67
	DB	$08,$10,$60,$67
;5
	DB	$F8,$F8,$60,$07
	DB	$F8,$00,$62,$07
	DB	$F8,$08,$62,$27
	DB	$F8,$10,$60,$27
	DB	$08,$F8,$60,$47
	DB	$08,$00,$62,$47
	DB	$08,$08,$6E,$27
	DB	$08,$10,$6C,$27
;6
	DB	$F8,$F8,$6C,$47
	DB	$F8,$00,$6E,$47
	DB	$F8,$08,$62,$27
	DB	$F8,$10,$60,$27
	DB	$08,$F8,$60,$47
	DB	$08,$00,$62,$47
	DB	$08,$08,$62,$67
	DB	$08,$10,$60,$67
;7
	DB	$F8,$F8,$60,$07
	DB	$F8,$00,$62,$07
	DB	$F8,$08,$6E,$67
	DB	$F8,$10,$6C,$67
	DB	$08,$F8,$60,$47
	DB	$08,$00,$62,$47
	DB	$08,$08,$62,$67
	DB	$08,$10,$60,$67
;8
	DB	$F8,$F8,$60,$07
	DB	$F8,$00,$62,$07
	DB	$F8,$08,$62,$27
	DB	$F8,$10,$60,$27
	DB	$08,$F8,$78,$07
	DB	$08,$00,$7A,$07
	DB	$08,$08,$7A,$27
	DB	$08,$10,$78,$27
;9
	DB	$08,$00,$76,$07
	DB	$08,$08,$76,$27
	DB	$08,$08,$76,$27
	DB	$08,$08,$76,$27
	DB	$08,$08,$76,$27
	DB	$08,$08,$76,$27
	DB	$08,$08,$76,$27
	DB	$08,$08,$76,$27
;A
	DB	$08,$F8,$64,$07
	DB	$08,$00,$66,$07
	DB	$08,$08,$66,$27
	DB	$08,$10,$64,$27
	DB	$08,$F8,$64,$07
	DB	$08,$00,$66,$07
	DB	$08,$08,$66,$27
	DB	$08,$10,$64,$27
;B
	DB	$08,$F8,$78,$07
	DB	$08,$00,$7A,$07
	DB	$08,$08,$7A,$27
	DB	$08,$10,$78,$27
	DB	$08,$F8,$78,$07
	DB	$08,$00,$7A,$07
	DB	$08,$08,$7A,$27
	DB	$08,$10,$78,$27
;C
	DB	$F8,$00,$76,$47
	DB	$F8,$08,$76,$67
	DB	$F8,$08,$76,$67
	DB	$F8,$08,$76,$67
	DB	$F8,$08,$76,$67
	DB	$F8,$08,$76,$67
	DB	$F8,$08,$76,$67
	DB	$F8,$08,$76,$67
;D
	DB	$F8,$F8,$64,$47
	DB	$F8,$00,$66,$47
	DB	$F8,$08,$66,$67
	DB	$F8,$10,$64,$67
	DB	$F8,$F8,$64,$47
	DB	$F8,$00,$66,$47
	DB	$F8,$08,$66,$67
	DB	$F8,$10,$64,$67
;E
	DB	$F8,$F8,$78,$47
	DB	$F8,$00,$7A,$47
	DB	$F8,$08,$7A,$67
	DB	$F8,$10,$78,$67
	DB	$F8,$F8,$78,$47
	DB	$F8,$00,$7A,$47
	DB	$F8,$08,$7A,$67
	DB	$F8,$10,$78,$67
;F
	DB	$08,$F8,$60,$47
	DB	$08,$00,$62,$47
	DB	$08,$08,$62,$67
	DB	$08,$10,$60,$67
	DB	$F8,$F8,$78,$47
	DB	$F8,$00,$7A,$47
	DB	$F8,$08,$7A,$67
	DB	$F8,$10,$78,$67
;- - - - - - - - - - - - - - - - -	
BSHEADCS
	LD	A,(ENCHPT2)
	LD	D,B
	RLA
	RL	D
	RLA
	RL	D
	RLA
	RL	D
	RLA
	RL	D
	RLA
	RL	D
	AND	%11100000
;
	LD	E,A
	LD	HL,BSHEADCD
	ADD	HL,DE
;
	LD	C,$08
	CALL	ENOMST
;
	LD	A,$08
		jp	NXOMSBL
;;;;;;;;	CALL	NXOMSBL
;;;;;;;;	RET
;===================================================
BSKBYD
	DB	$F2,$0E
;
BSKUBICS
	LD	A,(FRCNT)
	AND	%00010000
	LD	A,$03
	JR	Z,BKBC08
	INC	A
BKBC08
	LD	(ENCHPT2),A
	NOP
BKBC10
	LD	HL,ENMUKI
	ADD	HL,BC
	LD	E,(HL)
	LD	D,B
	LD	HL,BSKBYD
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENDSYP
	ADD	A,(HL)
	LD	(HL),A
;
	CP	$14
	JR	C,BKBC90
	CP	$7C
	JR	NC,BKBC90
;
	LD	DE,BSTAILCD
	CALL	EN2CST
;
	LD	A,(ENSTAT2)
	CP	$04
	JR	NC,BKBC80
;
	LD	A,(ENCHPT2)
	AND	A
	JR	Z,BKBC70
;
	XOR	A
	LD	(ENCHPT2),A
;
	CALL	CRKNENL
;
	LD	HL,ENFLSH
	ADD	HL,BC
	LD	A,(HL)
	CP	$16
	JR	NZ,BKBC70
;
	LD	HL,BSLIFE
	INC	(HL)
;
	LD	A,(HL)
	CP	08
;;	CP	18
	JR	NZ,BKBC70
;
	LD	A,(BSINDX)
	LD	E,A
	LD	D,B
	LD	HL,ENMODE
	ADD	HL,DE
	LD	(HL),B
;
;;	CALL	E3CLER
	CALL	STATINC
	LD	(HL),$04
;
	CALL	LDTIM0
	LD	(HL),$FF
;
	CALL	SOUNDCLR	;(S)
;
	LD	A,$03
	LD	(BSFLSD),A	;(S) ���ꉹ�p�I
;
	LD	A,$5E
	LD	(SOUND4),A	;(S)
;
	LD	A,$B5
	CALL	MSGCHK
;LD	A,$0F
;LD	(SOUND2),A	;(S)
BKBC70
	CALL	CRENPLL
BKBC80
	JR	BKBC10
BKBC90
	CALL	ENPSSV
;
	LD	HL,ENFLSH
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	NZ,BKBCA0
;
	LD	HL,ENMOD3
	ADD	HL,BC
	LD	(HL),%11000000
;
	CALL	CRKNENL
;;	CALL	CRENPLL
;
	LD	HL,ENMOD3
	ADD	HL,BC
	LD	(HL),%10000000
;
BKBCA0
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%				 %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;---------------------------------
E3STCK
	LD	A,(ENMODE2)
	CP	EMOVE
	JR	NZ,E3TC12
;
E3STCK2
	LD	A,(GMMODE)
	CP	GMAP
	JR	Z,E3TC12
;
		cp	GPLAY
		jr	nz,E3TC12	; �Q�[�����[�h�@�H
;					; Yes !!
		ld	a,(SBHR)
		cp	004
		jr	nz,E3TC12	; �t�F�[�h���@�H
;					; No !!
	LD	HL,ENSTFG
	LD	A,(MSGEFG)
;;	AND	A
	OR	(HL)
	LD	HL,WNDFLG
	OR	(HL)
	JR	NZ,E3TC12
;
	LD	A,(SCRLFG)
	AND	A
	JR	Z,E3TCF0
E3TC12
	POP	AF
E3TCF0
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%						    %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
E3HNSD
;;	DB	$0,$0,$0,$0,$0
;;;	DB	$7,$3,$1,$0,$0
E3HNSB
	LD	HL,ENHNFG
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,E3HN90
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
;;	LD	HL,E3HNSD
;;	ADD	HL,DE
;;	POP	AF
;;	AND	(HL)
;;	JR	NZ,E3HN30
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
	CALL	E3MVCL
;
	LD	HL,ENMOD3
	ADD	HL,BC
	LD	A,(HL)
	AND	%00100000
	JR	NZ,E3HN28
;
	CALL	ENBGCKL
E3HN28
	LD	HL,ENYSPD
	ADD	HL,BC
	POP	AF
	LD	(HL),A
;
	LD	HL,ENXSPD
	ADD	HL,BC
	POP	AF
	LD	(HL),A
E3HN30
	POP	AF
E3HN90
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%				 %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
E3MVCL	
;
	CALL	E3XCLC 		; X calc
;
E3YCLC
	PUSH	BC
	LD	A,C
	ADD	A,<ENNO
	LD	C,A
	
	CALL	E3XCLC		; Y calc
	POP	BC
	RET
;-----------------------------------------
E3XCLC
	LD	HL,ENXSPD
	ADD	HL,BC 
;
	LD	A,(HL)
	AND	A
	JR	Z,E3L090
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
E3L00
	ADD	HL,BC 
;
	POP	AF
;
	LD	E,$0
	BIT	7,A
	JR	Z,E3C00
	LD	E,$F0
E3C00
	SWAP	A
	AND	$0F
	OR	E
	RR	D
	ADC	A,(HL)
	LD	(HL),A
E3L090
	RET
;====================================================
E3ZCLC
	LD	HL,ENZSPD
	ADD	HL,BC 
;
	LD	A,(HL)
	AND	A
	JR	Z,E3L090
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
	JR	E3L00
;====================================
E3XCHK
	LD	E,$0
;
	LD	A,(PLXPSL)
	LD	HL,ENXPSL
	ADD	HL,BC
	SUB	(HL)
	BIT	7,A
	JR	Z,E3X010
;;	JR	NC,E3X010
	INC	E
E3X010
	LD	D,A
	RET
;====================================
E3YCHK
	LD	E,$2
;
	LD	A,(PLYPSL)
	LD	HL,ENYPSL
	ADD	HL,BC
	SUB	(HL)
	BIT	7,A
	JR	NZ,E3Y010
;;	JR	C,E3Y010
	INC	E
E3Y010
	LD	D,A
	RET
;====================================
E3XYCK
	CALL	E3XCHK
	LD	A,E
	LD	(WORK0),A
;
	LD	A,D
	BIT	7,A
	JR	Z,E32010
	CPL
	INC	A
E32010
	PUSH	AF
;
	CALL	E3YCHK
	LD	A,E
	LD	(WORK1),A
;
	LD	A,D
	BIT	7,A
	JR	Z,E3Y020
	CPL
	INC	A
E3Y020
	POP	DE
	CP	D
	JR	NC,E3Y030
;
	LD	A,(WORK0)
	JR	E3Y050
E3Y030
	LD	A,(WORK1)
E3Y050
	LD	E,A
	RET
;============================
E3CLER
	LD	HL,ENMODE
	ADD	HL,BC
	LD	(HL),B
	RET
;==============================
;   �Č��S�[�}
;==============================
GORSPDT
	DB	$10,$F0
GORHSPD
	DB	$18,$E8
;
GORMACD
;0
	DB	$00,$F0,$64,$00
	DB	$00,$F8,$66,$00
	DB	$00,$00,$60,$00
	DB	$00,$08,$60,$20
	DB	$00,$10,$6A,$20
	DB	$00,$18,$68,$20
;1
	DB	$00,$F0,$6C,$00
	DB	$00,$F8,$6E,$00
	DB	$00,$00,$60,$00
	DB	$00,$08,$60,$20
	DB	$00,$10,$6E,$20
	DB	$00,$18,$6C,$20
;2
	DB	$00,$F0,$68,$00
	DB	$00,$F8,$6A,$00
	DB	$00,$00,$60,$00
	DB	$00,$08,$60,$20
	DB	$00,$10,$66,$20
	DB	$00,$18,$64,$20
;- - - - - - - �ڊJ��- - - - - - - - - 
;3
	DB	$00,$F0,$64,$00
	DB	$00,$F8,$66,$00
	DB	$00,$00,$62,$00
	DB	$00,$08,$62,$20
	DB	$00,$10,$6A,$20
	DB	$00,$18,$68,$20
;4
	DB	$00,$F0,$6C,$00
	DB	$00,$F8,$6E,$00
	DB	$00,$00,$62,$00
	DB	$00,$08,$62,$20
	DB	$00,$10,$6E,$20
	DB	$00,$18,$6C,$20
;5
	DB	$00,$F0,$68,$00
	DB	$00,$F8,$6A,$00
	DB	$00,$00,$62,$00
	DB	$00,$08,$62,$20
	DB	$00,$10,$66,$20
	DB	$00,$18,$64,$20
;
GORMAMV
	LD	A,(OKARFG)
	CP	$01
	JR	NZ,GORS10
;
	CALL	GOR2CT
	LD	HL,ENSTAT
	ADD	HL,BC
	LD	A,(HL)
	LD	(ENSTAT2),A
GORS10
	LD	A,(ENCHPT2) ;HL <- ENCHPT
	RLA
	RLA
	RLA
	AND	%11111000
	LD	C,A
	RLA
	AND	%11110000
	ADD	A,C
	LD	E,A
	LD	D,B ;$0
	LD	HL,GORMACD
	ADD	HL,DE
;
	LD	C,$06
	CALL	ENOMST
;
	LD	A,$06
	CALL	NXOMSBL
;
	LD	A,(ENMODE2)
	CP	EMOVE
	JP	NZ,BSFLSB3
;
	CALL	E3STCK
;
	CALL	BSSDCK	;(S)
;
	CALL	CREPKEL
	CALL	E3MVCL
	CALL	ENBGCKL
;
;==============================
GORMAIN
;	LD	HL,ENHNFG
;	ADD	HL,BC
;	LD	(HL),$00
;
	CALL	ENHNCL
;
;;	LD	HL,ENSTAT
;;	ADD	HL,BC
;;	LD	A,(HL)
	LD	A,(ENSTAT2)
	RST	0
	DW	GORSRT		;FAST XSPD SET
	DW	GORMV0		;XSPD LEFT&RIGHT SET
	DW	GORSCH		;SERCH ATTACK!!
	DW	GOREYE		;EYE OPEN!!!
;
;- - - - - - - - - - - - - - - - - - - - - - - - - - -
GORSRT
	CALL	RNDSUB
;
	AND	$01
	LD	HL,ENWRK0	;����X���-��(�����)���(LEFTorRIGHT)
	ADD	HL,BC
	LD	(HL),A
;
	LD	E,A
	LD	D,B  
	LD	HL,GORSPDT
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
;
;;	LD	HL,ENSTAT
;;	ADD	HL,BC
	CALL	STATINC
	LD	(HL),$01
	RET
;==============================
;==============================
;==============================
;==============================
GORMV0
	LD	HL,ENTIM2	;�ڊJ��������ق���Ă鎞��
	ADD	HL,BC
	LD	A,(HL)
	AND	A
;;	JP	Z,GORMN
;;	RET
	RET	NZ
;
GORMN
;	LD	HL,ENTIM1	;�����^�C�}�|�쓮�����H
;	ADD	HL,BC
;	LD	A,(HL)
;	AND	A
	CALL	LDTIM1
	JP	NZ,GORMV2
;
;;	LD	HL,ENTIM0	;�W�^�o�^�����H
;;	ADD	HL,BC
;;	LD	A,(HL)
;;	AND	A
	CALL	LDTIM0
	JR	Z,GORMV1
;
;;	LD	HL,ENTIM0	;�W�^�o�^���I��������H
;;	ADD	HL,BC
;;	LD	A,(HL)
	CP	$01
	JR	NZ,GORX01
;
	CALL	E3XCHK		;�Eor���H�ǂ�����PLAYER?
	LD	D,B ;$00
	LD	HL,GORHSPD
	ADD	HL,DE
	LD	A,(HL)
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
;
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),B  ;$00
;
	CALL	LDTIM1
	CALL	RNDSUB
	AND	$3F
	ADD	A,$60

;	LD	HL,ENTIM1	;�����^�C�}�|($60����$9F)
;	ADD	HL,BC
	LD	(HL),A
;
	JP	GORMV2
;
GORMV1		            ;PLAYER YPOS > ENMMY YPOS-$08�͈̓`�F�b�N
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	A,(HL)
	ADD	A,$08
	LD	HL,PLYPSL
	CP	(HL)
	JP	C,GORLRM
;
GORXSH		       ;PLAYER YPOS > ENMMY YPOS-$08 �Ȃ�Δ������|�h
;
;;	LD	HL,ENTIM0	;�W�^�o�^�^�C�}�|
;;	ADD	HL,BC
	CALL	LDTIM0
	LD	(HL),$60
;
GORX01
	LD	HL,ENYSPD	;���̏�ŃW�^�o�^
	ADD	HL,BC
	LD	(HL),B ;$00
;
	LD	HL,ENXSPD	;�v���v�����
	ADD	HL,BC
	AND	%00000100
	JR	NZ,GORL
;
	LD	(HL),$08
	JP	GOREND
;
GORL
	LD	(HL),$F8
;
	JP	GOREND
;
GORLRM				;NOMAL GORMA MOVE(LEFT&RIGHT)
;
	LD	HL,ENYPSL       ;�T�|�`�U���������̂P
	ADD	HL,BC		;   (EYPOS-$28<PYPOS<EYPOS)
	LD	A,(PLYPSL)
	SUB	(HL)
	CP	$28
	JR	NC,GORMV2
;
;	CALL	RNDSUB		;�T�|�`�U���������̂Q
;	AND	$3F		;	(�����$40�ȏ�)
;	JP	Z,GOR1CT
;;
;;;GOR2CT				;���̃��|�`��(ENSTAT+2)
;	CALL	RNDSUB
;	AND	$3F
;	JR	NZ,GORMV2
;
;	LD	A,(FRCNT)
;	AND	$3F
;	JR	NZ,GORMV2
;SHARA
	LD	HL,ENTIM4
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	NZ,GORMV2
;
	CALL	RNDSUB
	AND	$7F
	ADD	A,$40
	LD	(HL),A
;
	AND	$03
	JR	Z,GOR1CT
	DEC	A
	JR	NZ,GORMV2
;============================================================
GOR2CT
	CALL	STATINC
	LD	(HL),$03
;
	CALL	ENSDCL
;
	LD	HL,ENTIM2	;�ڋʊJ���O�̒�~����
	ADD	HL,BC
	LD	(HL),$40
;
	LD	A,$01
;
		jp	GORE03		;�C���`�L���|�`���Ăяo���@
;;;;;;;;	CALL	GORE03		;�C���`�L���|�`���Ăяo���@
;;;;;;;;	RET
;
GORMV2
	LD	HL,ENCBFG	;�ǂɓ��������񂩂��H(���E)
	ADD	HL,BC
	LD	A,(HL)
	AND	$03
	JR	Z,GORMV3
;
;	LD	HL,ENTIM1	;�����^�C�}�|�쓮�����H
;	ADD	HL,BC
;	LD	A,(HL)
;	AND	A
	CALL	LDTIM1
	JR	Z,GORNMV
;
	LD	HL,ENXSPD	;�Δ������|�hXSPD�ϊ�
	ADD	HL,BC
	LD	A,(HL)
	XOR	$F0
	LD	(HL),A
	JP	GOREND
;
GORNMV				;NORMAL XSPD CHANGE MODE
;
	LD	HL,ENWRK0	;XSPD���]�I
	ADD	HL,BC
	LD	A,(HL)
	XOR	$01
	LD	(HL),A
;
GORMV3				;�ǂɓ�����Ȃ������ꍇ��XSPD SET
;	LD	HL,ENTIM1
;	ADD	HL,BC
;	LD	A,(HL)
;	AND	A
	CALL	LDTIM1
	JR	NZ,GOREND
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	A,(HL)
;
	LD	E,A
	LD	D,B  ;$00
;
	LD	HL,GORSPDT
	ADD	HL,DE
	LD	A,(HL)
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),A
;
	JR	GORFIN
;
GOR1CT				;���̃��|�`��(ENSTAT+1)
;;	LD	HL,ENTIM0
;;	ADD	HL,BC
	CALL	LDTIM0
	LD	(HL),$60
;
;	LD	HL,ENTIM1
;	ADD	HL,BC
	CALL	LDTIM1
	LD	(HL),B  ;$00
;
;;	LD	HL,ENSTAT
;;	ADD	HL,BC
	CALL	STATINC
	LD	(HL),$02
;
	LD	HL,ENWRK0
	ADD	HL,BC
	LD	(HL),B  ;$00
;
	LD	HL,ENYPSL	;�S�|�}���U��������
	ADD	HL,BC		;���ɕ��A���邽�߂Ɍ��݂�YPOS��*
	LD	A,(HL)
;
	LD	HL,ENWRK2	;*�����Ɏc���Ƃ�
	ADD	HL,BC
	LD	(HL),A
;
	JR	GORFIN
;
GOREND				;ANIMATION OF GORMA
	LD	A,(FRCNT)
	AND	$07
	JR	Z,GORE01
;
	JR	GORE02
;
GORFIN
	LD	A,(FRCNT)
	AND	$0F
	JR	NZ,GORE02
;
GORE01
;
	LD	HL,ENCONT	;�A�j����p�q�`�l(�O�|�Q)
	ADD	HL,BC
	INC	(HL)
	LD	A,(HL)
	CP	$03
	JR	NZ,GORE02
;
	LD	(HL),$00
;
GORE02
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
;
GORE03
;	LD	HL,ENCHPT
;	ADD	HL,BC
;	LD	(HL),A
;;
;	RET
	JP	ENPTST
;
;==============================
;==============================
;==============================
;==============================
GORSCH
	LD	HL,ENWRK0	;�T�|�`�I�����H
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JP	NZ,GORBACK
;
;;	LD	HL,ENTIM0	;�v���v������
;;	ADD	HL,BC
;;	LD	A,(HL)
	CALL	LDTIM0
	CP	$02
	JR	NC,PLZONE
;
	CP	$00
	JR	Z,GORCCK
;
	LD	HL,PLYPSL
	LD	A,(HL)
	LD	HL,ENWRK4
	ADD	HL,BC
	LD	(HL),A
;
	CALL	RNDSUB		;�R��ɂQ��T�|�`�U���I
	AND	$02
	JR	Z,NERAU
;
	CALL	ENSDCL
;
	LD	HL,ENYSPD	;�����^���ɍ~��Ă���̂�
	ADD	HL,BC
	LD	(HL),$10
;
;;	LD	HL,ENXSPD
;;	ADD	HL,BC
;;	LD	(HL),$00
;
	JP	GORCHK
;
NERAU				;�S�|�}�_��(�T�|�`���)
	LD	A,$10
	CALL	PSERCHL
;
GORCHK
	LD	HL,ENYPSL	;�T�|�`���˂��ꍇ
	ADD	HL,BC
	LD	A,(HL)
	ADD	A,$08
	LD	HL,PLYPSL
	CP	(HL)
	JP	NC,GORBAC2
;
	JP	GORSANI
GORCCK				;�S�|�}�͈̓`�F�b�N�I�I
	LD	HL,ENWRK4   ;PLAYER YPOS(SERCH�O) : ENYPOS(����)CK
	ADD	HL,BC
	LD	A,(HL)
	SUB	$08	    ;PLYPSL-$08�i���XPLAYER�̎�O��TURN)
	LD	HL,ENYPSL
	ADD	HL,BC
	CP	(HL)
	JP	NC,GORSANI
;
	LD	HL,ENWRK0	;SERCH END FLAG
	ADD	HL,BC
	INC	(HL)
;
	CALL	ENSDCL
;
	LD	HL,ENYSPD	;RETURN YSPD SET
	ADD	HL,BC
	LD	(HL),$F0
;
	LD	A,$16
	LD	(SOUND2),A	;(S)
;
;;	LD	HL,ENXSPD
;;	ADD	HL,BC
;;	LD	(HL),$00
	JP	GORSANI
;
PLZONE				;�v���v�������
;
	LD	HL,ENXSPD	;�v���v�����
	ADD	HL,BC
	AND	%00000100
	JR	NZ,GORSL
;
	LD	(HL),$08
	JR	GORSANI
;
GORSL
	LD	(HL),$F8
	JR	GORSANI
;
GORBACK
	LD	HL,ENWRK2
	ADD	HL,BC
	LD	A,(HL)
;
	LD	HL,ENYPSL
	ADD	HL,BC
	CP	(HL)
	JR	C,GORSANI
;
GORBAC2
;	LD	HL,ENYSPD
;	ADD	HL,BC
;	LD	(HL),$00
;;
;	LD	HL,ENXSPD
;	ADD	HL,BC
;	LD	(HL),$00
	CALL	ENSDCL
;
	CALL	STATINC
	LD	(HL),$01
;;	LD	HL,ENSTAT
;;	ADD	HL,BC
;;	LD	(HL),$01

GORSANI
	LD	A,(FRCNT)
	AND	$0F
	JR	NZ,GORSA02
;
GORSA01
;
	LD	HL,ENCONT	;�A�j����p�q�`�l(�O�|�Q)
	ADD	HL,BC
	INC	(HL)
	LD	A,(HL)
	CP	$03
	JR	NZ,GORSA02
;
	LD	(HL),$00
;
GORSA02
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
;
	JP	ENPTST
;;	LD	HL,ENCHPT
;;	ADD	HL,BC
;;	LD	(HL),A
;;;
;;	RET
;==============================
;==============================
;==============================
;==============================
GOREYE
	LD	HL,ENTIM2	;�ڊJ����O���ق���Ă鎞��
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,GOREYE2
;
	RET
;
GOREYE2
;	LD	HL,ENTIM1	;�ق��J���Ă��鎞��(��_�I�o)
;	ADD	HL,BC
;	LD	A,(HL)
	CALL	LDTIM1
	CP	$02
	JR	NC,MDCNG1
;
	CP	$00
	JR	Z,TIMSET
;
	LD	HL,ENMOD1	;���ɂ��ǂ��I
	ADD	HL,BC
	LD	(HL),%10000000
;
;;	LD	HL,ENCHPT
;;	ADD	HL,BC
;;	LD	(HL),$01
	LD	A,$01
	CALL	ENPTST
;
;;	LD	HL,ENSTAT
;;	ADD	HL,BC
	CALL	STATINC
	LD	(HL),$01
;
	LD	HL,ENTIM2
	ADD	HL,BC
	LD	(HL),$40
;
	RET
;
TIMSET
;	LD	HL,ENTIM1	;�ق��J���Ă��鎞��(��_�I�o)
;	ADD	HL,BC
	CALL	LDTIM1
	LD	(HL),$30
;
MDCNG1
	CP	$18
	JR	NZ,MDCNG2
;
;	LD	A,(DNJNNO)
;	CP	$07
;	JR	NZ,MDCNG2
;
	LD	A,BHFIR
	CALL	ENIDSHL
	JR	C,GOR4050
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
	INC	(HL)
;
	PUSH	BC
;
		ld	c,e
		ld	b,d
;;10/31;	PUSH	DE
;;10/31;	POP	BC
;
	LD	A,$18
	CALL	PSERCHL
;
	POP	BC
GOR4050
;
MDCNG2
	LD	HL,ENMOD1	;�ڊJ�����|�h
	ADD	HL,BC
	LD	(HL),%00000000
;
	LD	A,$04
	JP	ENPTST
;;	LD	HL,ENCHPT
;;	ADD	HL,BC
;;	LD	(HL),$04
;;;
;;	RET
;
;==============================
;=====================================
BSFLSB3
	LD	HL,ENWRK1
	ADD	HL,BC
	LD	A,(HL)
	RST	00
	DW	NF31000
	DW	NF31800
	DW	NF32000
;-------------------------------------
NF31000
	CALL	LDTIM0
	LD	(HL),$A0
;
	LD	HL,ENFLSH
	ADD	HL,BC
	LD	(HL),$FF
;
INCWRK13
	LD	HL,ENWRK1
	ADD	HL,BC
	INC	(HL)
	RET
;-------------------------------------
NF31800
	CALL	LDTIM0
		ret	NZ
;;;;;;;;	JR	NZ,NF31810
;
	LD	(HL),$C0
;
	LD	HL,ENFLSH
	ADD	HL,BC
	LD	(HL),$FF
;
		jp	INCWRK13
;;;;;;;;	CALL	INCWRK13
;;;;;;;;NF31810
;;;;;;;;	RET
;-------------------------------------
NF32000
	CALL	LDTIM0
	JR	NZ,NF32010
;
;;;	CALL	BBSDST	;(S)
;
BSFLCK
;;	CALL	BBSDST	;(S)
	LD	A,$1A
	LD	(SOUND3),A	;(S)
;
	LD	A,(ENMYNO2)
	CP	BBIRD
	JP	Z,HARTBS31
;
	CALL	ENFEND
;
;;	LD	A,(BGMNO)
;;	LD	(SOUND4),A	;(S)
;
	LD	E,ENNO-1
	LD	D,B
NF32008
	LD	HL,ENMODE
	ADD	HL,DE
	LD	A,(HL)
	AND	A
	JR	Z,NF3200A
;
	LD	HL,ENMOD3
	ADD	HL,DE
	LD	A,(HL)
	AND	%10000000
	JR	NZ,NF3200C
NF3200A
	DEC	E
	LD	A,E
	CP	$FF
	JR	NZ,NF32008	;�܂��{�X����H
;				; NO!
	XOR	A
	LD	(DJSDON),A
;
		jp	BGMSET	;(S)	BGM ���A�I
;;;;;;;;	CALL	BGMSET	;(S)	BGM ���A�I
;;;;;;;;	RET
NF3200C
	LD	A,(DNJNNO)
	CP	$05
	RET	NC
;
	JP  	DJSVSB5	; Save on !
NF32010
		jp	ESMRN3
;;;;;;;;	CALL	ESMRN3
;;;;;;;;	RET
;==============================
;----------------------------------
DJSVSB5
	LD	HL,DJRMSV
	LD	A,(GRNDPT)
	LD	E,A
	LD	D,B
;
	LD	A,(DNJNNO)
;
		CP	NEWDJ		;�V�_���W�����H
		JR	NZ,DJS5B10_PASS	;	NO --> DJS5B10_PASS
		LD	HL,NEWDJRM	;�V�_���W�����̃Z�[�u�q�`�l
		JR	DJS5B10
DJS5B10_PASS
;
	CP	DJROOM2
	JR	NC,DJS5B10
	CP	DJROOM
	JR	C,DJS5B10
;
	INC	D
DJS5B10
	ADD	HL,DE
	SET	5,(HL)
	RET
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	�풓����						%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ONPUCD
	DB	$0E,$03
ONPUMV
	LD	DE,ONPUCD
	CALL	EN1CST
;
	LD	HL,ENCONT
	ADD	HL,BC
	LD	A,(HL)
	DEC	A
	LD	(HL),A
	JP	Z,E3CLER
;
	BIT	4,A
	LD	E,$01
	JR	Z,ONP010
	LD	E,$FF
ONP010
	BIT	0,A
	JR	NZ,ONP020
;
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	A,(HL)
	ADD	A,E
	LD	(HL),A
ONP020
	JP	E3MVCL
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	������������						%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
USAG2CD
	DB	$50,$01,$52,$01
	DB	$52,$21,$50,$21
;
	DB	$54,$01,$56,$01
	DB	$56,$21,$54,$21
;- - - - - - - - - - - - - - - - - - 
USAG2MV
;;;KK;;;	CALL	DOUCHK
	LD	A,(MARINOF)
	AND	A
	JP	Z,E3CLER
;
	LD	DE,USAG2CD
	CALL	EN2CST
;
	LD	A,(MAINDX)
	LD	E,A
	LD	D,B
	LD	HL,ENYPSL
	ADD	HL,DE
	LD	A,(ENSVYL)
	LD	E,$00
	CP	(HL)
	JR	C,USA2060
;
	LD	E,$02
USA2060
	LD	A,(FRCNT)
	RRA
	RRA
	RRA
	RRA
	RRA
	AND	$01
	ADD	A,E
	CALL	ENPTST
;
	CALL	M3CROS
;
	CALL	E3MSCK
		ret	NC
;;;;;;;;	JR	NC,USA2900
;
	LD	A,$96	;�������p�I
		jp	MSGCH2
;;;;;;;;	CALL	MSGCH2
;;;;;;;;USA2900
;;;;;;;;	RET
;
;==============================
	END
;==============================
