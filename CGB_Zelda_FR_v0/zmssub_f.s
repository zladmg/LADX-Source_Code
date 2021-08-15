;
		onbankgroup
;
;==============	バンク０ ================================================
BANK0		group	0
;-------------<	zpl >-------------
		extern	ENDG,GMAP,PRN,GPLAY
;
;-------------<	ZMA >-------------
		extern	PBRETN
;
;==============	バンク１４ ==============================================
BANK14		GROUP	$14
;-------------<	ZEX >-------------
		extern	MSOKCKL
;
;==============	バンク１７ ==============================================
BANK17		GROUP	$17
;-------------<	ZEND >-------------
		extern	MSCURST,YAOBJSTS
;
;==============	バンク１Ｃ ==============================================
BANK1C          GROUP   $1C
;-------------<	ZMS >-------------
		extern	MSMASKS_SUB,MSRETN_SUB,MJBI10_SUB,MJ2DTH,MJ2DTL
		extern	MJ2DT,MJ1DTH,MJ1DTL,MSGEAD,MSCANC,WE2,WED,XX,NM
		extern	MSCHNO
;
;==============	バンク２１ ==============================================
BANK21          GROUP   $21
;-------------<	ZCOL >------------
		EXTERN	Message_dark
;
;========================================================================
		puball
;
BANK0		group	0
		nlist
		lib	zram.s
		lib	zbn.s
		list
;
		kanji
		isdmg
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%				       %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
MESEGE
	LD	A,(MSGEFG)
	AND	A
	RET	Z
;
	LD	E,A
;
	LD	A,(GMMODE)
	CP	ENDG
	LD	A,$7E
	JR	NZ,MJBI010
;
	LD	A,$7F
MJBI010
	LD	(ENHELP),A	;べた No.
;
	LD	A,(MJSTCTH)
	AND	A
	LD	A,(MJSTCT)
	JR	NZ,MJBI18
;
	CP	$20
	JR	C,MJBI20
MJBI18
	AND	$0F
	OR	$10
MJBI20
	LD	(MJSTCT2),A
;
	LD	A,E
	AND	%01111111
	DEC	A
	RST	0
	DW	MSOKCK	; Vram check !S
;
	DW	MSVRSV2	;Vram save 1
	DW	MSVRSV2 ;2
	DW	MSVRSV2 ;3
	DW	MSMASKS ;Window BG set
;
MJSA	DW	MJBGIT
	DW	MJBGST
	DW	MJCHST
;
MSCC1	DW	MSSCR1	; Mesege scroll 1
MSCC2	DW	MSSCR2	;
MSCC3	DW	MSSCR3	;
;
MSK	DW	MSRWIT	; Return key in check (TEST)
MQE	DW	MSQUES	; Question check 
;
MBR	DW	MSRETN	;BG return
	DW	MSGEND
;
MJST	EQU	$5+1
MSSC1	EQU	$8+1
MSSC2	EQU	$9+1
MSSC3	EQU	$A+1
MSKYW	EQU	$B+1
MSQUE	EQU	$C+1
MSBGR	EQU	$D+1
;--------------------------------------------------
MSOKCK
	LD	A,$14
	LD	($2100),A
;
	JP  	MSOKCKL
;---メッセージナンバーが１００をこえる場合---------------
MSGCH2
	CALL	MSGCHK
	LD	A,$01
	LD	(MSGENOH),A
	RET
;---メッセージナンバーが２００をこえる場合---------------
MSGCH3
	CALL	MSGCHK
	LD	A,$02
	LD	(MSGENOH),A
	RET
;------------------------------------
MSGCHK
	PUSH	AF
;
	XOR	A
	LD	(MSANSR),A
;
	POP	AF
MSGCHK2
	LD	(MSGENO),A
;
	XOR	A
	LD	(MSSTCT),A
	LD	(MJSTCT),A
	LD	(MJSTCTH),A
	LD	(NMSTCT),A
	LD	(MSGENOH),A	; MSXX or M1XX
;
	LD	A,$0F
	LD	(FKMSFG),A	;話 音！
;
	LD	A,(PLYPSL)
	CP	$48
	RRA
	AND	%10000000
	OR	$1
	LD	(MSGEFG),A
	RET
;=====================================================
MSVRSV2
	RET	
;=====================================================
MSGEND
	XOR	A
	LD	(MSGEFG),A
;
	LD	A,$18
	LD	(MSOFTM),A	;メッセージ連続防止タイム！

;--------------------------------------------------
;	メッセージ終了後、部屋を暗くする
;--------------------------------------------------
		LD	A,(CGBFLG)
		AND	A
		RET	Z

		LD	A,(GMMODE)
		CP	GPLAY
		RET	NZ

		LD	A,(FADECT)
		CP	8		; 明るい ｏｒ 暗１？
		RET	C		; ＹＥＳ

		LD	A,:Message_dark
		LD	($2100),A
		JP	Message_dark


;┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
;┃	zms.s にプログラムを移動					 ┃
;┠───────────────────────────────────┨
;┃	こめんと： Ｖ－ＢＬＡＮＫ中の処理だけに、０バンク以外に		 ┃ 
;┃		   飛ばさないほうがいいのかな・・・・・			 ┃
;┃		   メッセージがおかしくなったら、すぐ戻すべし。		 ┃
;┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%	柴原 サブるうちん　２	    %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
MSBGAD
	DB	00,36,72
	DB	00,36,72
MSVRAH
	DB	$98,$98,$98
	DB	$99,$99,$99
MSVRAL
	DB	$21,$61,$A1
	DB	$41,$81,$C1
;--------------------------------------
MSVRSV
	LD	A,(MSGEFG)
	BIT	7,A
	JR	Z,MVS010
;
	AND	%01111111
	ADD	A,$3
MVS010
	LD	E,A
	LD	D,$0
;
	LD	HL,MSBGAD-1-1
	ADD	HL,DE
;;;;;;;;	LD	A,(HL)
;;;;;;;;	LD	C,A
;;;;;;;;	LD	B,$0
;;;;;;;;	LD	HL,MSBGBF
;;;;;;;;	ADD	HL,BC
;;;;;;;;	PUSH	HL
;;;;;;;;	POP	BC
	LD	A,(HL)		; (CGB)書き直し 
	ADD	A,<MSBGBF	;
	LD	C,A		;
	LD	A,>MSBGBF	;
	ADC	A,$0		;
	LD	B,A		;
;
	LD	HL,MSVRAL-1-1
	ADD	HL,DE
	LD	A,(SCVRML)
	ADD	A,(HL)
	LD	L,A
	LD	(WORK0),A
;
	LD	HL,MSVRAH-1-1
	ADD	HL,DE
	LD	A,(SCVRMH)
	ADD	A,(HL)
	LD	H,A
	LD	A,(WORK0)
	LD	L,A
;
	XOR	A
	LD	E,A
	LD	D,A
;
		ld	a,(CGBFLG)
		and	a
		jr	nz,MSV02_CGB	; ＣＧＢ　？
;					; No !!
MSV02
;;;(CGB)	LD	A,(HL)
	LD	A,(HLI)
	LD	(BC),A
	INC	BC
;
	LD	A,L
;;;(CGB)	ADD	A,$01
	AND	$1F
	JR	NZ,LSTA
;
	LD	A,L
		dec	a
	AND	$E0
	LD	L,A
;;;(CGB)	JR	RSTA
;;;(CGB);
LSTA
;;;(CGB)	INC	L
;;;(CGB)RSTA
	INC	E
	LD	A,E
	CP	$12
	JR	NZ,MSV02
;
	LD	E,$00
	LD	A,(WORK0)
	ADD	A,$20
	LD	(WORK0),A
	JR	NC,HSORT
;
	INC	H
HSORT
	LD	L,A
	INC	D
	LD	A,D
	CP	$02  ;05
	JR	NZ,MSV02
;
		ret
;
;--------------	ＣＧＢの時 --------------
MSV02_CGB
	LD	A,(HL)
	LD	(BC),A

;-------------------------------------------------------------
;	アトリビュート待避
;-------------------------------------------------------------
		LD	A,$01
		LD	(VBK),A		; Ｖ－ＲＡＭバンク（１）セット
		LD	A,$02
		LD	(SVBK),A	; ＲＡＭバンク（２）セット
		LD	A,(HL)		; アトリビュートＧＥＴ
		LD	(BC),A		; アトリビュート待避
		XOR	A
		LD	(VBK),A		; Ｖ－ＲＡＭバンク（０）セット
		LD	(SVBK),A	; ＲＡＭバンク（０）セット
;-------------------------------------------------------------

	INC	BC
;
	LD	A,L
	ADD	A,$01
	AND	$1F
	JR	NZ,LSTA_CGB
;
	LD	A,L
	AND	$E0
	LD	L,A
	JR	RSTA_CGB
;
LSTA_CGB
	INC	L
RSTA_CGB
	INC	E
	LD	A,E
	CP	$12
	JR	NZ,MSV02_CGB
;
	LD	E,$00
	LD	A,(WORK0)
	ADD	A,$20
	LD	(WORK0),A
	JR	NC,HSORT_CGB
;
	INC	H
HSORT_CGB
	LD	L,A
	INC	D
	LD	A,D
	CP	$02  ;05
	JR	NZ,MSV02_CGB
;
	RET
;=====================================================
;=====================================================
;-----------------------------------------------------
;=====================================================
;┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
;┃	zms.s にプログラムを移動					 ┃
;┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
;(CGB)KWDTL
;(CGB)	DB	$61,$41,$81,$21,$A1	;上の人
;(CGB)	DB	$81,$61,$A1,$41,$C1	;下の人
;(CGB)KWDTH
;(CGB)	DB	$98,$98,$98,$98,$98	;
;(CGB)	DB	$99,$99,$99,$99,$99	;
;
MSMASKS
		LD	A,:MSMASKS_SUB
		LD	($2100),A
		JP	MSMASKS_SUB


;(CGB)	LD	A,(MSGEFG)
;(CGB)	LD	C,A
;(CGB);
;(CGB)	LD	A,(MSSTCT)
;(CGB)	CP	$05
;(CGB)	JR	Z,MSFIN
;(CGB);
;(CGB)	BIT	7,C
;(CGB)	JR	Z,MSUP
;(CGB);
;(CGB)	ADD	A,$05
;(CGB)MSUP
;(CGB)	LD	C,A
;(CGB)	LD	B,$0
;(CGB);
;(CGB)	LD	E,$01
;(CGB)	LD	D,$00
;(CGB);
;(CGB)	LD	A,(SCVRMH)
;(CGB)	LD	HL,KWDTH
;(CGB)	ADD	HL,BC
;(CGB)	ADD	A,(HL)
;(CGB)	LD	HL,VRAMD
;(CGB)	ADD	HL,DE	
;(CGB)	LD	(HLI),A
;(CGB)	PUSH	HL
;(CGB);
;(CGB)	LD	A,(SCVRML)
;(CGB)	LD	HL,KWDTL
;(CGB)	ADD	HL,BC
;(CGB)	ADD	A,(HL)
;(CGB)	POP	HL
;(CGB);
;(CGB)	LD	(HLI),A
;(CGB);
;(CGB)	LD	A,$51
;(CGB)	LD	(HLI),A
;(CGB);
;(CGB)	LD	A,(ENHELP) ;$7E
;(CGB)	LD	(HLI),A
;(CGB);
;(CGB)	LD	(HL),$00 ;A
;(CGB);
;(CGB)	LD	HL,MSSTCT
;(CGB)	INC	(HL)
;(CGB)	RET
;(CGB);---------------------
;(CGB)MSFIN
;
MSNEXT
	LD	HL,MSGEFG
	INC	(HL)
MSRET
	RET
;=====================================================
MSRWIT
	LD	A,(MSKYOF)
	AND	A
	JR	NZ,MSRW10	; Key check ok ?
;				; yes !
	LD	A,(KEYA2)
	AND	%00110000
	JR	Z,MSRW10
;
BGRSET
	XOR	A
	LD	(MSSTCT),A
;
		LD	A,(GMMODE)
		CP	PRN		; ポケットプリンタ？
		JR	NZ,BGRSET_100	; ＮＯ

		XOR	A
		JR	BGRSET_200
BGRSET_100
	LD	A,(MSGEFG)
	AND	$F0
	OR	MSBGR	; Game BG return
BGRSET_200
	LD	(MSGEFG),A
MSRW10
	RET
;=====================================================
;=====================================================
;=====================================================
;┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
;┃	zms.s にプログラムを移動					 ┃
;┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
;(CGB)REDL
;(CGB)	DB	$A1,$21,$81,$41,$61	;上の人
;(CGB)	DB	$C1,$41,$A1,$61,$81	;下の人
;(CGB)REDH
;(CGB)	DB	$98,$98,$98,$98,$98	;
;(CGB)	DB	$99,$99,$99,$99,$99	;
;(CGB)MSGZDT
;(CGB)	DB	$48,$00,$36,$12,$24
;(CGB)	DB	$48,$00,$36,$12,$24
;
;
MSRETN
		LD	A,:MSRETN_SUB
		LD	($2100),A
		JP	MSRETN_SUB


;(CGB)	LD	A,(MSGEFG)
;(CGB)	LD	C,A
;(CGB);
;(CGB)	LD	A,(MSSTCT)
;(CGB)	CP	$05
;(CGB)	JR	Z,MSFIN
;(CGB);
;(CGB)	BIT	7,C
;(CGB)	JR	Z,MSRUP
;(CGB);
;(CGB)	ADD	A,$05
;(CGB)MSRUP
;(CGB)	LD	C,A
;(CGB)	LD	B,$0
;(CGB);
;(CGB)	LD	E,$01
;(CGB)	LD	D,$00
;(CGB);
;(CGB)	LD	A,(SCVRMH)
;(CGB)	LD	HL,REDH
;(CGB)	ADD	HL,BC
;(CGB)	ADD	A,(HL)
;(CGB)	LD	HL,VRAMD
;(CGB)	ADD	HL,DE	
;(CGB)	LD	(HLI),A
;(CGB)	PUSH	HL
;(CGB);
;(CGB)	LD	A,(SCVRML)
;(CGB)	LD	HL,REDL
;(CGB)	ADD	HL,BC
;(CGB)	ADD	A,(HL)
;(CGB)	POP	HL
;(CGB);
;(CGB)	LD	(HLI),A
;(CGB);
;(CGB)	LD	A,$11
;(CGB)	LD	(HLI),A
;(CGB);
;(CGB)	PUSH	HL
;(CGB);
;(CGB)	LD	HL,MSGZDT
;(CGB)	ADD	HL,BC
;(CGB)	LD	A,(HL)
;(CGB)	LD	C,A
;(CGB)	LD	B,$00
;(CGB)	LD	HL,MSBGBF
;(CGB)	ADD	HL,BC
;(CGB)	PUSH	HL
;(CGB)	POP	BC
;(CGB);
;(CGB)	POP	HL
;(CGB)	LD	E,$12	
;(CGB);
;(CGB)MRITA
;(CGB)	LD	A,(BC)
;(CGB)	INC	BC
;(CGB)	LD	(HLI),A
;(CGB)	DEC	E
;(CGB)	JR	NZ,MRITA
;(CGB);
;(CGB)	LD	(HL),$00 ;A
;(CGB);
;(CGB)		LD	A,:MSRETN_ATR
;(CGB)		LD	($2100),A
;(CGB)		CALL	MSRETN_ATR	; (CGB)メッセージアトリビュート復帰
;(CGB);
;(CGB)	LD	HL,MSSTCT
;(CGB)	INC	(HL)
;(CGB)	RET
;=====================================================
;-----------------------------------------------------	
MJBGIT
	LD	A,$1C
	LD	($2100),A
;
	LD	A,(MJSTTM)
	AND	A
	JR	Z,MJBI10
;
	DEC	A
	LD	(MJSTTM),A
	RET
MJBI10
	CALL	MJBI10_SUB
;
;;;KK;;;	LD	A,(MJSTCT)
;;;KK;;;	AND	$1F
;;;KK;;;	LD	E,A
;;;KK;;;	LD	D,0
;;;KK;;;;
;;;KK;;;	LD	C,$01
;;;KK;;;	LD	B,$00
;;;KK;;;;
;;;KK;;;	LD	HL,MJ1DTH
;;;KK;;;	ADD	HL,DE
;;;KK;;;	LD	A,(HL)
;;;KK;;;	LD	HL,VRAMD
;;;KK;;;	ADD	HL,BC
;;;KK;;;	LD	(HLI),A
;;;KK;;;;
;;;KK;;;	PUSH	HL
;;;KK;;;	LD	HL,MJ1DTL
;;;KK;;;	ADD	HL,DE
;;;KK;;;	LD	A,(HL)
;;;KK;;;	POP	HL
;;;KK;;;;
;;;KK;;;	LD	(HLI),A
;;;KK;;;;
;;;KK;;;	LD	A,$4F
;;;KK;;;	LD	(HLI),A	
;;;KK;;;;
;;;KK;;;	LD	A,$FF	; Beta 3
;;;KK;;;	LD	(HLI),A
;;;KK;;;;
;;;KK;;;	LD	(HL),$00 ;A
;
	JP  	MSNEXT
;=====================================================
MJBGST
	LD	A,$1C
	LD	($2100),A
;
	LD	A,(MSGEFG)
	LD	C,A
;
	LD	A,(MJSTCT2)
	BIT	7,C
	JR	Z,MJ2UP
;
	ADD	A,$20
MJ2UP
	LD	C,A
	LD	B,$0
;
	LD	E,$01
	LD	D,$00
;
	LD	A,(SCVRMH)
	LD	HL,MJ2DTH
	ADD	HL,BC
	ADD	A,(HL)
	LD	HL,VRAMD
	ADD	HL,DE
	LD	(HLI),A
	LD	(MSVRMH),A
;
	PUSH	HL
;
	LD	HL,MJ2DTL
	ADD	HL,BC
	LD	A,(HL)
	AND	$E0
	ADD	A,$20
	LD	E,A
;
	LD	A,(SCVRML)
	ADD	A,(HL)
	LD	D,A
	CP	E
	JR	C,MJ2010
;
	LD	A,D
	SUB	$20
	LD	D,A
MJ2010
	LD	A,D
	LD	(MSVRML),A
	POP	HL
;
	LD	(HLI),A
	XOR	A
	LD	(HLI),A
;
	PUSH	HL
;
	LD	A,(MJSTCT)
	AND	$1F
	LD	C,A
	LD	HL,MJ2DT
	ADD	HL,BC
	LD	A,(HL)
;
	POP	HL
;
	LD	(HLI),A
	CALL	MSNEXT
	JP	MJCHST
;=====================================================
MJCHST
	LD	A,$1C
	LD	($2100),A
;
	LD	A,(MJSTCT) ;3)
	AND	$1F
;
	LD	C,A
	LD	B,0
;
	LD	E,$05  ;1
	LD	D,$00
;
	LD	HL,MJ1DTH
	ADD	HL,BC
	LD	A,(HL)
	LD	HL,VRAMD
	ADD	HL,DE
	LD	(HLI),A
;
	PUSH	HL
	LD	HL,MJ1DTL
	ADD	HL,BC
	LD	A,(HL)
;
	POP	HL
	LD	(HLI),A
;
	LD	A,$0F
	LD	(HLI),A
;
	PUSH	HL
;
	LD	A,(MSGENOH)
	LD	D,A
;
	LD	A,(MSGENO)
	LD	E,A
	SLA	E
	RL	D
;
	LD	HL,MSGEAD
	ADD	HL,DE
	LD	A,(HLI)
	LD	E,A
	LD	D,(HL)
	PUSH	DE
;					; USA
		ld	a,(MSGENO)	; USA
		ld	e,a		; USA
		ld	a,(MSGENOH)	; USA
		ld	d,a		; USA
		ld	hl,MSCANC	; USA
		add	hl,de		; USA
		ld	a,(hl)		; USA
		and	%00111111	; USA
		ld	(2100h),a	; USA
;					; USA
	POP	HL
;
;(CGB)	LD	E,$1C
;(CGB)	LD	A,(MSGENOH)
;(CGB)	AND	A
;(CGB)	JR	Z,MSBKSSS
;(CGB);
;(CGB)	LD	E,$1D
;(CGB)	CP	$01
;(CGB)	JR	Z,MSBKSSS
;(CGB);
;(CGB)	LD	E,$14
;(CGB)MSBKSSS
;(CGB)	LD	A,E
;(CGB)	LD	($2100),A
;(CGB);
	LD	A,(MJSTCT) ;3)
	LD	E,A
	LD	A,(MJSTCTH)
	LD	D,A  ;$0
	ADD	HL,DE
	LD	A,(HLI)
;
	LD	E,A
	LD	A,(HL)
	LD	(MSNXMJ),A	;次の文字 No. 
;
	CALL	PBRETN
	LD	A,E
;
	LD	(WORK0),A
	CP	WE2
	JR	NZ,MJCS06	; Question check ?
;				; yes !
	POP	HL
	XOR	A
	LD	(VRAMD+1),A
;
MSQUESS
	LD	A,(MSGEFG)
	AND	$F0
	OR	MSQUE
	LD	(MSGEFG),A
;---------------------------------------
YASDST
	LD	A,$15
	LD	(SOUND1),A	;(S)矢印音
	RET
;-------------------------------------
MJCS06
	CP	WED
	JR	NZ,MJCS08
;
	POP	HL
;
	XOR	A
	LD	(VRAMD+1),A
;
MSENDS
	LD	A,(MSGEFG)
	AND	$F0
	OR	MSKYW
	LD	(MSGEFG),A
	RET
;========================================
DOROBOU
	DB	$57,$50,$5A,$50,$56  ; V O Y O U
;;	DB	$3D,$2B,$42,$A3,$00
;
MJCS08
	CP	XX
	JR	Z,MJCS081
;
	PUSH	AF
;
	LD	A,(FKMSFG)
	LD	D,A
	LD	E,$01
	CP	$0F
	JR	Z,MJCS0808
;
	LD	E,$07
	CP	$19	;フクロウ！
	JR	Z,MJCS0808
	LD	E,$03
;
MJCS0808
	LD	A,(MJSTCT)
	ADD	A,$04
	AND	E
	JR	NZ,MJCS080A
;
	LD	A,D
	LD	(SOUND2),A	;(S)
MJCS080A
	POP	AF
MJCS081
	LD	D,$00
	CP	NM   ;E   ;NM1
	JR	NZ,NMCK10	; Name ?
;				; yes !
	LD	A,(NMSTCT)
	LD	E,A
	INC	A
	CP	$05
	JR	NZ,NMCK0D
;
	XOR	A
NMCK0D
	LD	(NMSTCT),A
;
	LD	HL,NAME
	LD	A,(MANBICT)
	AND	A
	JR	Z,NMCK0E
;
	LD	HL,DOROBOU
NMCK0E
	ADD	HL,DE
	LD	A,(HL)
	DEC	A
	CP	$FF
	JR	NZ,NMCK10
;
	LD	A,XX
NMCK10
	LD	(WORK1),A
	LD	E,A
;
	LD	A,$1C
	LD	($2100),A
;
	LD	HL,MSCHNO
	ADD	HL,DE
	LD	E,(HL)
	LD	D,$00
;
	SLA	E
	RL	D
	SLA	E
	RL	D
	SLA	E
	RL	D
	SLA	E
	RL	D
;
	CALL	PBRETN
;
	LD	HL,$5000
	ADD	HL,DE
		ld	c,l
		ld	b,h
;;;11/03	PUSH	HL
;;;11/03	POP	BC
;
	POP	HL
;
	LD	E,$10
MJCS0C
	LD	A,(BC)
	LD	(HLI),A
;
	INC	BC
;
	DEC	E
	JR	NZ,MJCS0C
;
	LD	(HL),$00 ;A
;
	PUSH	HL
;
	LD	A,$1C
	LD	($2100),A
;
	LD	A,(WORK1)
	LD	E,A
	LD	D,$00
;(USA)	LD	HL,MSCHN2
;(USA)	ADD	HL,DE
;(USA);
;(USA)	LD	A,(HL)
	xor	a		; USA
	POP	HL
	AND	A
;
;
	JR	Z,MJCS88	; Dakuten ?
;				; yes !
	LD	E,A
;
	LD	A,(MSVRMH)
	LD	(HLI),A
	LD	A,(MSVRML)
	SUB	$20
	LD	(HLI),A
	LD	A,$00
	LD	(HLI),A
	LD	A,$C9	; Tenten
	RR	E
	JR	C,MJCS80
	DEC	A	; Maru
MJCS80
	LD	(HLI),A
	LD	(HL),$00 ;A
MJCS88
	LD	A,(MJSTCT)
	ADD	A,$01 ;	INC	A
	LD	(MJSTCT),A
	LD	A,(MJSTCTH)
	ADC	A,$00
	LD	(MJSTCTH),A
;
	XOR	A
	LD	(MJSDON),A
;
	LD	A,(MJSTCT2)
	CP	$1F
	JR	Z,MJCS10
;
MJAGAN
	LD	A,(MSGEFG)
	AND	$F0
	OR	MJST
	LD	(MSGEFG),A
;
	LD	A,$0
	LD	(MJSTTM),A
	RET
;
MJCS10
	JP  	MSNEXT
;=====================================================
MSSC1L
	DB	$22,$42
MSSC1H
	DB	$98,$99
MSSCR1
	LD	A,(MJSTCT)
	AND	$1F
	JR	NZ,MSCR080	; 1 page end ?
;				; yes ! key wait !
	LD	A,(MSNXMJ)  ;WORK2)
	CP	WED
	JP	Z,MSENDS	;先読み！
	CP	WE2
	JP	Z,MSQUESS
;
	LD	A,(MJSDON)
	AND	A
	JR	NZ,MSSCR101
;
	INC	A
	LD	(MJSDON),A
;
	CALL	YASDST	;(S)
MSSCR101
	CALL	YAOBJST
;
	LD	A,(KEYA2)
	BIT	4,A  ;	AND	%00100000
	JR	NZ,MSSCST
;
	BIT	5,A
	JR	Z,MSCR150
;
	LD	A,$1C
	LD	($2100),A
;
	LD	A,(GMMODE)
	CP	GMAP
	JP	Z,QBGRSET	;マップ上はキャンセル出来る！
;
	LD	A,(MSGENO)
	LD	E,A
	LD	A,(MSGENOH)
	LD	D,A
	LD	HL,MSCANC
	ADD	HL,DE
	BIT	7,(HL)
	JP	Z,QBGRSET	; Cansel Not ?
;				; yes !
;-------------------------------------
MSSCST
MSCR080
	LD	E,$00
	LD	A,(MSGEFG)
	AND	%10000000
	JR	Z,MSCR100
	INC	E
MSCR100
	LD	D,$00
;
	LD	HL,MSSC1H
	ADD	HL,DE
	LD	A,(SCVRMH)
	ADD	A,(HL)
	LD	(VRAMD+1),A
;
	LD	HL,MSSC1L
	ADD	HL,DE
	LD	A,(SCVRML)
	ADD	A,(HL)
	LD	(VRAMD+2),A
;
	LD	A,$4F
	LD	(VRAMD+3),A
	LD	A,(ENHELP) ;$7E
	LD	(VRAMD+4),A
	XOR	A
	LD	(VRAMD+5),A
;
	CALL	MSNEXT
MSCR150
;=====================================================
MSSCR2
;;;	IN V BLANKING !!!
	RET
;=====================================================
MSSC2L
	DB	$62,$82
MSSC2H
	DB	$98,$99
MSSCR2S
	LD	E,$00
	LD	A,(MSGEFG)
	AND	%10000000
	JR	Z,MSCR200
	INC	E
MSCR200
	LD	D,$00
;
	LD	HL,MSSC2H
	ADD	HL,DE
	LD	A,(SCVRMH)
	ADD	A,(HL)
	LD	B,A
	LD	HL,MSSC2L
;----------------------------------
MSCRSUB
	ADD	HL,DE
	LD	A,(SCVRML)
	ADD	A,(HL)
	LD	C,A
;
	LD	E,$10
MSCR210
	LD	A,C
	SUB	$20
	LD	L,A
	LD	H,B
;
	LD	A,(BC)
	LD	(HL),A
	PUSH	BC
;
	LD	A,C
	ADD	A,$20
	LD	C,A
	LD	A,L
	ADD	A,$20
	LD	L,A
;
	LD	A,(BC)
	LD	(HL),A
;
	LD	A,L
	ADD	A,$20
	LD	L,A
;
	LD	A,(ENHELP)
	LD	(HL),A  ;$7E ;A
;
	POP	BC
;
	INC	BC
	LD	A,C
	AND	$1F
	JR	NZ,MSCR220
	LD	A,C
	SUB	$20
	LD	C,A
MSCR220
	DEC	E
	JR	NZ,MSCR210
;
	LD	A,$08
	LD	(MJSTTM),A
;
	JP  	MSNEXT
;=====================================================
MSSCR3
;;;	IN V BLANKING !!!
	RET
;=====================================================
MSSC3L
	DB	$42,$62
MSSC3H
	DB	$98,$99
MSSCR3S
	LD	E,$00
	LD	A,(MSGEFG)
	AND	%10000000
	JR	Z,MSCR300
	INC	E
MSCR300
	LD	D,$00
;
	LD	HL,MSSC3H
	ADD	HL,DE
	LD	A,(SCVRMH)
	ADD	A,(HL)
	LD	B,A
	LD	HL,MSSC3L
;
	CALL	MSCRSUB
	JP	MJAGAN
;=====================================================
QBGRSET
	LD	A,$2
	LD	(MSANSR),A
	JP	BGRSET
;
MSQUES
	LD	A,(KEYA2)
;;;KK;;;	BIT	5,A
;;;KK;;;	JR	NZ,QBGRSET
;;;KK;;;;
;;;KK;;;	AND	%00010000
	BIT	4,A		;Ａボタン押された？
	JP	NZ,MSQ080	;	YES --> MSQ080
;
;;;KK;;;	LD	A,(KEYA2)
;;;11/04	AND	%01000011	;左右＆セレクトボタン押された？
	AND	%00000011	;左右＆セレクトボタン押された？
	JR	Z,MSQ008	;	NO --> MSQ008
;
	LD	HL,MSANSR
	LD	A,(HL)
	INC	A
	AND	$1
	LD	(HL),A
;
	LD	A,$0A
	LD	(SOUND1),A	;(S)
MSQ008
	LD	A,(FRCNT)
	AND	$10
	RET	Z
;
	LD	A,$17
	LD	($2100),A
	JP	MSCURST
;
MSQ080
	CALL	BGRSET
;
	RET
;
;=====================================================
YAOBJST
	LD	A,$17
	LD	($2100),A
	JP  	YAOBJSTS
;	
		end
;
