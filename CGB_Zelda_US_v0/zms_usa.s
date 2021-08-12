;-- U S A --
;
		onbankgroup
;
		nlist
		lib	zram.s
		lib	zbn.s
		list
;
BANK1C	GROUP	$1C
;
	PUBALL
;
		kanji
		isdmg
;
		list
;
	ORG	$4000
;
USA
	DB	$01	; 0:Japan 1:USA
;=====================================
;���
XU	EQU	$F0
XD	EQU	$F1
XL	EQU	$F2
XR	EQU	$F3
; �G����
MK1	EQU	$DA	;��
MK2	EQU	$DB	;��
MK3	EQU	$DC	;�t����
MK4	EQU	$DD	;�����N
MK5	EQU	$DE	;�}����
MK6	EQU	$DF	;�^����
MK7	EQU	$BF	; R �I�J���i
MK8	EQU	$EE	; + �L�[
;
IT1	EQU	$E0	;���b�V�[
IT2	EQU	$E1	;���{��
IT3	EQU	$E2	;�h�b�O�t�[�h
IT4	EQU	$E3	;�o�i�i
IT5	EQU	$E4	;�_
IT6	EQU	$E5	;�n�`�̑�
IT7	EQU	$E6	;�p�C��
IT8	EQU	$E7	;�n�C�r�X�J�X
IT9	EQU	$E8	;�z�E�L
ITA	EQU	$E9	;�j
ITB	EQU	$EA	;�u���W���[
ITC	EQU	$EB	;�E���R
ITD	EQU	$EC	;���K�l
ITE	EQU	$ED	;�u���}�C�h
;
NM	EQU	'#'	; Name display 
XX	EQU	' '	; Space !
WE2	EQU	$FE	; Question check 
WED	EQU	$FF	; Set end
;=====================================================
;=====================================================
MSGEAD
	DW	MS00,MS01,MS02,MS03,MS04,MS05,MS06,MS07
	DW	MS08,MS09,MS0A,MS0B,MS0C,MS0D,MS0E,MS0F
	DW	MS10,MS11,MS12,MS13,MS14,MS15,MS16,MS17
	DW	MS18,MS19,MS1A,MS1B,MS1C,MS1D,MS1E,MS1F
	DW	MS20,MS21,MS22,MS23,MS24,MS25,MS26,MS27
	DW	MS28,MS29,MS2A,MS2B,MS2C,MS2D,MS2E,MS2F
	DW	MS30,MS31,MS32,MS33,MS34,MS35,MS36,MS37
	DW	MS38,MS39,MS3A,MS3B,MS3C,MS3D,MS3E,MS3F
	DW	MS40,MS41,MS42,MS43,MS44,MS45,MS46,MS47
	DW	MS48,MS49,MS4A,MS4B,MS4C,MS4D,MS4E,MS4F
	DW	MS50,MS51,MS52,MS53,MS54,MS55,MS56,MS57
	DW	MS58,MS59,MS5A,MS5B,MS5C,MS5D,MS5E,MS5F
	DW	MS60,MS61,MS62,MS63,MS64,MS65,MS66,MS67
	DW	MS68,MS69,MS6A,MS6B,MS6C,MS6D,MS6E,MS6F
	DW	MS70,MS71,MS72,MS73,MS74,MS75,MS76,MS77
	DW	MS78,MS79,MS7A,MS7B,MS7C,MS7D,MS7E,MS7F
	DW	MS80,MS81,MS82,MS83,MS84,MS85,MS86,MS87
	DW	MS88,MS89,MS8A,MS8B,MS8C,MS8D,MS8E,MS8F
	DW	MS90,MS91,MS92,MS93,MS94,MS95,MS96,MS97
	DW	MS98,MS99,MS9A,MS9B,MS9C,MS9D,MS9E,MS9F
	DW	MSA0,MSA1,MSA2,MSA3,MSA4,MSA5,MSA6,MSA7
	DW	MSA8,MSA9,MSAA,MSAB,MSAC,MSAD,MSAE,MSAF
	DW	MSB0,MSB1,MSB2,MSB3,MSB4,MSB5,MSB6,MSB7
	DW	MSB8,MSB9,MSBA,MSBB,MSBC,MSBD,MSBE,MSBF
	DW	MSC0,MSC1,MSC2,MSC3,MSC4,MSC5,MSC6,MSC7
	DW	MSC8,MSC9,MSCA,MSCB,MSCC,MSCD,MSCE,MSCF
	DW	MSD0,MSD1,MSD2,MSD3,MSD4,MSD5,MSD6,MSD7
	DW	MSD8,MSD9,MSDA,MSDB,MSDC,MSDD,MSDE,MSDF
	DW	MSE0,MSE1,MSE2,MSE3,MSE4,MSE5,MSE6,MSE7
	DW	MSE8,MSE9,MSEA,MSEB,MSEC,MSED,MSEE,MSEF
	DW	MSF0,MSF1,MSF2,MSF3,MSF4,MSF5,MSF6,MSF7
	DW	MSF8,MSF9,MSFA,MSFB,MSFC,MSFD,MSFE,MSFF
;
	DW	M100,M101,M102,M103,M104,M105,M106,M107
	DW	M108,M109,M10A,M10B,M10C,M10D,M10E,M10F
	DW	M110,M111,M112,M113,M114,M115,M116,M117
	DW	M118,M119,M11A,M11B,M11C,M11D,M11E,M11F
	DW	M120,M121,M122,M123,M124,M125,M126,M127
	DW	M128,M129,M12A,M12B,M12C,M12D,M12E,M12F
	DW	M130,M131,M132,M133,M134,M135,M136,M137
	DW	M138,M139,M13A,M13B,M13C,M13D,M13E,M13F
	DW	M140,M141,M142,M143,M144,M145,M146,M147
	DW	M148,M149,M14A,M14B,M14C,M14D,M14E,M14F
	DW	M150,M151,M152,M153,M154,M155,M156,M157
	DW	M158,M159,M15A,M15B,M15C,M15D,M15E,M15F
	DW	M160,M161,M162,M163,M164,M165,M166,M167
	DW	M168,M169,M16A,M16B,M16C,M16D,M16E,M16F	;,M16E,M16F
	DW	M170,M171,M172,M173,M174,M175,M176,M177
	DW	M178,M179,M17A,M17B,M17C,M17D,M17E,M17F
	DW	M180,M181,M182,M183,M184,M185,M186,M187
	DW	M188,M189,M18A,M18B,M18C,M18D,M18E,M18F
	DW	M190,M191,M192,M193,M194,M195,M196,M197
	DW	M198,M199,M19A,M19B,M19C,M19D,M19E,M19F
	DW	M1A0,M1A1,M1A2,M1A3,M1A4,M1A5,M1A6,M1A7
	DW	M1A8,M1A9,M1AA,M1AB,M1AC,M1AD,M1AE,M1AF
	DW	M1B0,M1B1,M1B2,M1B3,M1B4,M1B5,M1B6,M1B7
	DW	M1B8,M1B9,M1BA,M1BB,M1BC,M1BD,M1BE,M1BF
	DW	M1C0,M1C1,M1C2,M1C3,M1C4,M1C5,M1C6,M1C7
	DW	M1C8,M1C9,M1CA,M1CB,M1CC,M1CD,M1CE,M1CF
	DW	M1D0,M1D1,M1D2,M1D3,M1D4,M1D5,M1D6,M1D7
	DW	M1D8,M1D9,M1DA,M1DB,M1DC,M1DD,M1DE,M1DF
	DW	M1E0,M1E1,M1E2,M1E3,M1E4,M1E5,M1E6,M1E7
	DW	M1E8,M1E9,M1EA,M1EB,M1EC,M1ED,M1EE,M1EF
	DW	M1F0,M1F1,M1F2,M1F3,M1F4,M1F5,M1F6,M1F7
	DW	M1F8,M1F9,M1FA,M1FB,M1FC,M1FD,M1FE,M1FF
;
;
	DW	M200,M201,M202,M203,M204,M205,M206,M207
	DW	M208,M209,M20A,M20B,M20C,M20D,M20E,M20F
	DW	M210,M211,M212,M213,M214,M215,M216,M217
	DW	M218,M219,M21A,M21B,M21C,M21D,M21E,M21F
	DW	M220,M221,M222,M223,M224,M225,M226,M227
	DW	M228,M229,M22A,M22B,M22C,M22D,M22E,M22F
	DW	M230,M231,M232,M233,M234,M235,M236,M237
	DW	M238,M239,M23A,M23B,M23C,M23D,M23E,M23F
	DW	M240,M241,M242,M243,M244,M245,M246,M247
	DW	M248,M249,M24A,M24B,M24C,M24D,M24E,M24F
	DW	M250,M251,M252,M253,M254,M255,M256,M257
	DW	M258,M259,M25A,M25B,M25C,M25D,M25E,M25F
	DW	M260,M261,M262,M263,M264,M265,M266,M267
	DW	M268,M269,M26A,M26B,M26C,M26D,M26E,M26F
	DW	M270,M271,M272,M273,M274,M275,M276,M277
	DW	M278,M279,M27A,M27B,M27C,M27D,M27E,M27F
	DW	M280,M281,M282,M283,M284,M285,M286,M287
	DW	M288,M289,M28A,M28B,M28C,M28D,M28E,M28F
	DW	M290,M291,M292,M293,M294,M295,M296,M297
	DW	M298,M299,M29A,M29B,M29C,M29D,M29E,M29F
	DW	M2A0,M2A1,M2A2,M2A3,M2A4,M2A5,M2A6,M2A7
	DW	M2A8,M2A9,M2AA,M2AB,M2AC,M2AD,M2AE,M2AF

;;
;===========================================================
;(1)
MJ1DTL
	DB	$00,$10,$20,$30,$40,$50,$60,$70
	DB	$80,$90,$A0,$B0,$C0,$D0,$E0,$F0
	DB	$00,$10,$20,$30,$40,$50,$60,$70
	DB	$80,$90,$A0,$B0,$C0,$D0,$E0,$F0
MJ1DTH
	DB	$8D,$8D,$8D,$8D,$8D,$8D,$8D,$8D
	DB	$8D,$8D,$8D,$8D,$8D,$8D,$8D,$8D
	DB	$8E,$8E,$8E,$8E,$8E,$8E,$8E,$8E
	DB	$8E,$8E,$8E,$8E,$8E,$8E,$8E,$8E
;=============================================================
;(2)
MJ2DT
	DB	$D0,$D1,$D2,$D3,$D4,$D5,$D6,$D7
	DB	$D8,$D9,$DA,$DB,$DC,$DD,$DE,$DF
	DB	$E0,$E1,$E2,$E3,$E4,$E5,$E6,$E7
	DB	$E8,$E9,$EA,$EB,$EC,$ED,$EE,$EF
;	DB	$D0,$D1,$D2,$D3,$D4,$D5,$D6,$D7
;	DB	$D8,$D9,$DA,$DB,$DC,$DD,$DE,$DF
;	DB	$E0,$E1,$E2,$E3,$E4,$E5,$E6,$E7
;	DB	$E8,$E9,$EA,$EB,$EC,$ED,$EE,$EF
;
MJ2DTH
	DB	$98,$98,$98,$98,$98,$98,$98,$98
	DB	$98,$98,$98,$98,$98,$98,$98,$98
	DB	$98,$98,$98,$98,$98,$98,$98,$98
	DB	$98,$98,$98,$98,$98,$98,$98,$98
	DB	$99,$99,$99,$99,$99,$99,$99,$99
	DB	$99,$99,$99,$99,$99,$99,$99,$99
	DB	$99,$99,$99,$99,$99,$99,$99,$99
	DB	$99,$99,$99,$99,$99,$99,$99,$99
;
MJ2DTL
	DB	$42,$43,$44,$45,$46,$47,$48,$49
	DB	$4A,$4B,$4C,$4D,$4E,$4F,$50,$51
	DB	$82,$83,$84,$85,$86,$87,$88,$89
	DB	$8A,$8B,$8C,$8D,$8E,$8F,$90,$91
	DB	$62,$63,$64,$65,$66,$67,$68,$69
	DB	$6A,$6B,$6C,$6D,$6E,$6F,$70,$71
	DB	$A2,$A3,$A4,$A5,$A6,$A7,$A8,$A9
	DB	$AA,$AB,$AC,$AD,$AE,$AF,$B0,$B1
;=============================================================
;=============================================================
MSCHNO	; �����̔ԍ� ASCII code �Ή�
;
;     0   1   2   3   4   5   6   7   8   9   A   B   C   D   E   F
 DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;0
 DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;1
 DB $7E,$3D,$41,$00,$8A,$8B,$44,$40,$45,$46,$8C,$8D,$3A,$3F,$3B,$00 ;2
 DB $70,$71,$72,$73,$74,$75,$76,$77,$78,$79,$42,$43,$8E,$00,$8F,$3C ;3
 DB $00,$00,$01,$02,$03,$04,$05,$06,$07,$08,$09,$0A,$0B,$0C,$0D,$0E ;4
 DB $0F,$10,$11,$12,$13,$14,$15,$16,$17,$18,$19,$00,$00,$00,$40,$00 ;5
 DB $00,$1A,$1B,$1C,$1D,$1E,$1F,$20,$21,$22,$23,$24,$25,$26,$27,$28 ;6
 DB $29,$2A,$2B,$2C,$2D,$2E,$2F,$30,$31,$32,$3E,$00,$00,$00,$00,$00 ;7
 DB $47,$48,$49,$4A,$4B,$4C,$4D,$4E,$4F,$50,$51,$52,$53,$59,$5A,$5B ;8
 DB $5C,$5D,$59,$5A,$5B,$5C,$5D,$32,$6F,$6D,$6E,$00,$00,$00,$00,$00 ;9
 DB $3D,$3C,$3F,$7E,$39,$3A,$3B,$7A,$7B,$00,$00,$00,$00,$00,$00,$00 ;A
 DB $70,$71,$72,$73,$74,$75,$76,$77,$78,$79,$9B,$9C,$9D,$9E,$9F,$38 ;B
 DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;C
 DB $80,$81,$82,$83,$84,$85,$86,$87,$88,$89,$8A,$8B,$8C,$8D,$8E,$8F ;D
 DB $88,$90,$91,$92,$93,$94,$95,$89,$96,$97,$98,$99,$9A,$87,$86,$00 ;E
 DB $34,$35,$36,$37,$00,$00,$00,$00,$00,$00,$00,$00,$00,$7E,$00,$00 ;F
;- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
MSCHN2  ; ���_ ���邩
;     0   1   2   3   4   5   6   7   8   9   A   B   C   D   E   F
; DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;0
; DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;1
; DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;2
; DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;3
; DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;4
; DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;5
; DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;6
; DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;7
; DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;8
; DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;9
; DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;A
; DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;B
; DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;C
; DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;D
; DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;E
; DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;F
;=============================================================
MSCANC	;    00000000
;	     | ||||||  �f�[�^�o���N No.
;            |
;            |
;            |_________�L�����Z���o���Ȃ��I
;
;
;BANK 14
;;    0   1   2   3   4   5   6   7   8   9   A   B   C   D   E   F
 DB $14,$94,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$94 ;0
 DB $14,$14,$14,$94,$14,$14,$94,$14,$14,$14,$14,$14,$14,$14,$14,$14 ;1
 DB $14,$14,$14,$14,$14,$14,$94,$14,$14,$14,$14,$14,$14,$14,$14,$14 ;2
 DB $14,$14,$14,$14,$14,$14,$94,$14,$94,$14,$14,$14,$14,$14,$14,$14 ;3
 DB $14,$14,$14,$14,$14,$94,$94,$94,$94,$94,$94,$94,$94,$94,$94,$94 ;4
 DB $94,$94,$94,$94,$94,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14 ;5
 DB $14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14 ;6
 DB $14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14 ;7
;BANK 16
 DB $14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14,$14 ;8
 DB $94,$94,$94,$94,$94,$94,$94,$94,$94,$94,$94,$94,$94,$94,$94,$94 ;9
 DB $94,$94,$94,$94,$96,$96,$96,$96,$96,$96,$96,$96,$96,$96,$96,$96 ;A
 DB $96,$96,$96,$96,$96,$96,$96,$96,$96,$96,$96,$96,$96,$96,$96,$96 ;B
 DB $96,$96,$96,$96,$96,$96,$96,$96,$96,$96,$96,$96,$96,$96,$96,$96 ;C
 DB $96,$96,$96,$96,$96,$96,$96,$96,$96,$96,$16,$16,$96,$16,$16,$16 ;D
 DB $16,$96,$96,$96,$96,$96,$16,$16,$16,$96,$16,$16,$16,$16,$16,$16 ;E
 DB $16,$16,$16,$16,$16,$96,$96,$96,$16,$16,$16,$16,$16,$16,$96,$16 ;F
;;    0   1   2   3   4   5   6   7   8   9   A   B   C   D   E   F
;BANK 1C
 DB $16,$16,$16,$16,$16,$16,$16,$16,$9C,$9C,$9C,$9C,$9C,$9C,$9C,$9C ;0
 DB $9C,$9C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C ;1
 DB $1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C ;2
 DB $1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C ;3
 DB $1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C ;4
 DB $1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C ;5
 DB $1C,$1C,$1C,$1C,$1C,$1C,$1C,$9C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C ;6
 DB $1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C ;7
;BANK 1D
 DB $1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C ;8
 DB $1D,$9D,$1D,$1D,$9D,$1D,$1D,$1D,$1D,$1D,$1D,$1D,$1D,$1D,$1D,$1D ;9
 DB $1D,$1D,$1D,$1D,$1D,$1D,$1D,$1D,$1D,$1D,$1D,$1D,$1D,$1D,$1D,$1D ;A
 DB $1D,$1D,$1D,$1D,$1D,$1D,$1D,$1D,$1D,$1D,$1D,$1D,$1D,$1D,$1D,$1D ;B
 DB $1D,$9D,$1D,$1D,$1D,$1D,$1D,$1D,$1D,$1D,$1D,$1D,$1D,$1D,$1D,$1D ;C
 DB $1D,$1D,$1D,$1D,$1D,$9D,$1D,$1D,$9D,$9D,$1D,$1D,$1D,$1D,$1D,$1D ;D
 DB $1D,$1D,$1D,$1D,$1D,$1D,$1D,$1D,$1D,$1D,$1D,$9D,$1D,$1D,$1D,$1D ;E
 DB $1D,$1D,$1D,$1D,$1D,$9D,$1D,$1D,$1D,$1D,$1D,$1D,$1D,$1D,$9D,$9D ;F
;;    0   1   2   3   4   5   6   7   8   9   A   B   C   D   E   F
 DB $1D,$1D,$1D,$1D,$1D,$1D,$1D,$1D,$1D,$1D,$1D,$1D,$1D,$1D,$1D,$1D ;0
 DB $9D,$9D,$1D,$9D,$9D,$9D,$9D,$1D,$1D,$1D,$1D,$1D,$1D,$1D,$1D,$1D ;1
 DB $1D,$1D,$1D,$1D,$1D,$1D,$1D,$1D,$1D,$1D,$1D,$1D,$1D,$1D,$1D,$1D ;2
 DB $1D,$1D,$1D,$1D,$1D,$9D,$9D,$9D,$9D,$9D,$9D,$9D,$1D,$1D,$1D,$1D ;3
 DB $1D,$1D,$1D,$1D,$1D,$1D,$1D,$1D,$1D,$1D,$1D,$1D,$1D,$1D,$09,$09 ;4
 DB $09,$09,$09,$09,$09,$09,$09,$09,$09,$09,$89,$89,$89,$89,$09,$09 ;5
 DB $09,$09,$09,$09,$09,$09,$09,$09,$89,$09,$09,$89,$89,$09,$09,$09 ;6
 DB $09,$09,$09,$09,$09,$09,$09,$09,$09,$09,$09,$09,$09,$09,$09,$09 ;7
;;    0   1   2   3   4   5   6   7   8   9   A   B   C   D   E   F
 DB $89,$89,$89,$89,$89,$89,$89,$89,$89,$89,$89,$89,$89,$89,$89,$89 ;8
 DB $89,$89,$89,$89,$89,$89,$09,$09,$89,$89,$89,$89,$89,$89,$89,$89 ;9
 DB $89,$89,$89,$89,$89,$89,$09,$09,$09,$09,$09,$09,$09,$09,$09,$89 ;A
;=============================================================
;	ZPL.S����MJBI10�̒����ړ����Ă���
;===============================================================
MJBI10_SUB
	LD	A,(MJSTCT)
	AND	$1F
	LD	E,A
	LD	D,0
;
	LD	C,$01
	LD	B,$00
;
	LD	HL,MJ1DTH
	ADD	HL,DE
	LD	A,(HL)
	LD	HL,VRAMD
	ADD	HL,BC
	LD	(HLI),A
;
	PUSH	HL
	LD	HL,MJ1DTL
	ADD	HL,DE
	LD	A,(HL)
	POP	HL
;
	LD	(HLI),A
;
	LD	A,$4F
	LD	(HLI),A	
;
	LD	A,$FF	; Beta 3
	LD	(HLI),A
;
	LD	(HL),$00 ;A
	RET



;��������������������������������������������������������������������������
;��	zpl.s �̃v���O�����������Ɉړ�					 ��
;��������������������������������������������������������������������������
;1998/09/28;;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;1998/09/28;;%	�Č� �T�u�邤����@�Q	    %
;1998/09/28;;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;1998/09/28;MSBGAD
;1998/09/28;	DB	00,36,72
;1998/09/28;	DB	00,36,72
;1998/09/28;MSVRAH
;1998/09/28;	DB	$98,$98,$98
;1998/09/28;	DB	$99,$99,$99
;1998/09/28;MSVRAL
;1998/09/28;	DB	$21,$61,$A1
;1998/09/28;	DB	$41,$81,$C1
;1998/09/28;;--------------------------------------
;1998/09/28;MSVRSV
;1998/09/28;	LD	A,(MSGEFG)
;1998/09/28;	BIT	7,A
;1998/09/28;	JR	Z,MVS010
;1998/09/28;;
;1998/09/28;	AND	%01111111
;1998/09/28;	ADD	A,$3
;1998/09/28;MVS010
;1998/09/28;	LD	E,A
;1998/09/28;	LD	D,$0
;1998/09/28;;
;1998/09/28;	LD	HL,MSBGAD-1-1
;1998/09/28;	ADD	HL,DE
;1998/09/28;;;;;;;;;	LD	A,(HL)
;1998/09/28;;;;;;;;;	LD	C,A
;1998/09/28;;;;;;;;;	LD	B,$0
;1998/09/28;;;;;;;;;	LD	HL,MSBGBF
;1998/09/28;;;;;;;;;	ADD	HL,BC
;1998/09/28;;;;;;;;;	PUSH	HL
;1998/09/28;;;;;;;;;	POP	BC
;1998/09/28;	LD	A,(HL)		; (CGB)�������� 
;1998/09/28;	ADD	A,<MSBGBF	;
;1998/09/28;	LD	C,A		;
;1998/09/28;	LD	A,>MSBGBF	;
;1998/09/28;	ADC	A,$0		;
;1998/09/28;	LD	B,A		;
;1998/09/28;;
;1998/09/28;	LD	HL,MSVRAL-1-1
;1998/09/28;	ADD	HL,DE
;1998/09/28;	LD	A,(SCVRML)
;1998/09/28;	ADD	A,(HL)
;1998/09/28;	LD	L,A
;1998/09/28;	LD	(WORK0),A
;1998/09/28;;
;1998/09/28;	LD	HL,MSVRAH-1-1
;1998/09/28;	ADD	HL,DE
;1998/09/28;	LD	A,(SCVRMH)
;1998/09/28;	ADD	A,(HL)
;1998/09/28;	LD	H,A
;1998/09/28;	LD	A,(WORK0)
;1998/09/28;	LD	L,A
;1998/09/28;;
;1998/09/28;	XOR	A
;1998/09/28;	LD	E,A
;1998/09/28;	LD	D,A
;1998/09/28;MSV02
;1998/09/28;	LD	A,(HL)
;1998/09/28;	LD	(BC),A
;1998/09/28;
;1998/09/28;;-------------------------------------------------------------
;1998/09/28;;	�A�g���r���[�g�Ҕ�
;1998/09/28;;-------------------------------------------------------------
;1998/09/28;		LD	A,(CGBFLG)
;1998/09/28;		AND	A
;1998/09/28;		JR	Z,MSV02_100
;1998/09/28;
;1998/09/28;		LD	A,$01
;1998/09/28;		LD	(VBK),A		; �u�|�q�`�l�o���N�i�P�j�Z�b�g
;1998/09/28;		LD	A,$02
;1998/09/28;		LD	(SVBK),A	; �q�`�l�o���N�i�Q�j�Z�b�g
;1998/09/28;		LD	A,(HL)		; �A�g���r���[�g�f�d�s
;1998/09/28;		LD	(BC),A		; �A�g���r���[�g�Ҕ�
;1998/09/28;		XOR	A
;1998/09/28;		LD	(VBK),A		; �u�|�q�`�l�o���N�i�O�j�Z�b�g
;1998/09/28;		LD	(SVBK),A	; �q�`�l�o���N�i�O�j�Z�b�g
;1998/09/28;MSV02_100
;1998/09/28;;-------------------------------------------------------------
;1998/09/28;
;1998/09/28;	INC	BC
;1998/09/28;;
;1998/09/28;	LD	A,L
;1998/09/28;	ADD	A,$01
;1998/09/28;	AND	$1F
;1998/09/28;	JR	NZ,LSTA
;1998/09/28;;
;1998/09/28;	LD	A,L
;1998/09/28;	AND	$E0
;1998/09/28;	LD	L,A
;1998/09/28;	JR	RSTA
;1998/09/28;;
;1998/09/28;LSTA
;1998/09/28;	INC	L
;1998/09/28;RSTA
;1998/09/28;	INC	E
;1998/09/28;	LD	A,E
;1998/09/28;	CP	$12
;1998/09/28;	JR	NZ,MSV02
;1998/09/28;;
;1998/09/28;	LD	E,$00
;1998/09/28;	LD	A,(WORK0)
;1998/09/28;	ADD	A,$20
;1998/09/28;	LD	(WORK0),A
;1998/09/28;	JR	NC,HSORT
;1998/09/28;;
;1998/09/28;	INC	H
;1998/09/28;HSORT
;1998/09/28;	LD	L,A
;1998/09/28;	INC	D
;1998/09/28;	LD	A,D
;1998/09/28;	CP	$02  ;05
;1998/09/28;	JR	NZ,MSV02
;1998/09/28;;
;1998/09/28;	RET
;1998/09/28;;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	���b�Z�[�W�E�C���h�E �Z�b�g					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
KWDTL
	DB	$61,$41,$81,$21,$A1	;��̐l
	DB	$81,$61,$A1,$41,$C1	;���̐l
KWDTH
	DB	$98,$98,$98,$98,$98	;��̐l
	DB	$99,$99,$99,$99,$99	;���̐l
;
MSMASKS_SUB
	LD	A,(MSGEFG)
	LD	C,A
;
	LD	A,(MSSTCT)
	CP	$05
	JR	Z,MSFIN
;
	BIT	7,C
	JR	Z,MSUP
;
	ADD	A,$05
MSUP
	LD	C,A
	LD	B,$0
;
	LD	E,$01
	LD	D,$00
;
	LD	A,(SCVRMH)
	LD	HL,KWDTH
	ADD	HL,BC
	ADD	A,(HL)
	LD	HL,VRAMD
	ADD	HL,DE	
	LD	(HLI),A
	PUSH	HL
;
	LD	A,(SCVRML)
	LD	HL,KWDTL
	ADD	HL,BC
	ADD	A,(HL)
	POP	HL
;
	LD	(HLI),A
;
	LD	A,$51
	LD	(HLI),A
;
	LD	A,(ENHELP) ;$7E
	LD	(HLI),A
;
	LD	(HL),$00 ;A
;
		LD	A,(CGBFLG)
		AND	A
		JR	Z,MSMASKS_100

		CALL	MSMASKS_ATR	; (CGB)���b�Z�[�W�A�g���r���[�g�Z�b�g
MSMASKS_100

	LD	HL,MSSTCT
	INC	(HL)
	RET
;---------------------
MSFIN
	LD	HL,MSGEFG
	INC	(HL)
	RET


;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	���b�Z�[�W�A�g���r���[�g�Z�b�g					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
MSMASKS_ATR
		LD	HL,VRAMD_AT
		LD	DE,VRAMD
		LD	B,$04		; �J�E���^
MSMA_ATR_100
		LD	A,(DE)
		LD	(HLI),A
		INC	DE
		DEC	B
		JR	NZ,MSMA_ATR_100

		LD	A,$01		; �A�g���r���[�g�m�n�D
		LD	(HLI),A
		XOR	A
		LD	(HL),A

		RET


;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	���b�Z�[�W ���^�[��						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
REDL
	DB	$A1,$21,$81,$41,$61	;��̐l
	DB	$C1,$41,$A1,$61,$81	;���̐l
REDH
	DB	$98,$98,$98,$98,$98	;��̐l
	DB	$99,$99,$99,$99,$99	;���̐l
MSGZDT
	DB	$48,$00,$36,$12,$24
	DB	$48,$00,$36,$12,$24

;
MSRETN_SUB
	LD	A,(MSGEFG)
	LD	C,A
;
	LD	A,(MSSTCT)
	CP	$05
	JR	Z,MSFIN
;
	BIT	7,C
	JR	Z,MSRUP
;
	ADD	A,$05
MSRUP
	LD	C,A
	LD	B,$0
;
	LD	E,$01
	LD	D,$00
;
	LD	A,(SCVRMH)
	LD	HL,REDH
	ADD	HL,BC
	ADD	A,(HL)
	LD	HL,VRAMD
	ADD	HL,DE	
	LD	(HLI),A
	PUSH	HL
;
	LD	A,(SCVRML)
	LD	HL,REDL
	ADD	HL,BC
	ADD	A,(HL)
	POP	HL
;
	LD	(HLI),A
;
	LD	A,$11
	LD	(HLI),A
;
	PUSH	HL
;
	LD	HL,MSGZDT
	ADD	HL,BC
	LD	A,(HL)
	LD	C,A
	LD	B,$00
	LD	HL,MSBGBF
	ADD	HL,BC
	PUSH	HL
	POP	BC
;
	POP	HL
	LD	E,$12	
;
MRITA
	LD	A,(BC)
	INC	BC
	LD	(HLI),A
	DEC	E
	JR	NZ,MRITA
;
	LD	(HL),$00 ;A
;
		LD	A,(CGBFLG)
		AND	A
		JR	Z,MSRETN_100

		CALL	MSRETN_ATR	; (CGB)���b�Z�[�W�A�g���r���[�g���A
MSRETN_100
;
	LD	HL,MSSTCT
	INC	(HL)
	RET


;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	���b�Z�[�W�A�g���r���[�g���A					x
;x----------------------------------------------------------------------x
;x	    �d�m�s�q�x							x
;x		�a�b    �F �f�[�^�A�h���X�i���ۂ� �|$12 ����������j	x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
MSRETN_ATR
;------------------------------------------------------------------------
;	�A�h���X�A��
;------------------------------------------------------------------------
		PUSH	BC

		LD	HL,VRAMD_AT
		LD	DE,VRAMD
		LD	B,$04		; �J�E���^
MSRT_ATR_100
		LD	A,(DE)
		LD	(HLI),A
		INC	DE
		DEC	B
		JR	NZ,MSRT_ATR_100

		POP	BC

;------------------------------------------------------------------------
;	�f�[�^
;------------------------------------------------------------------------
		LD	A,C
		SUB	$12		; �f�[�^�̐擪��
		LD	C,A
		LD	E,$12		; �J�E���^
MSRT_ATR_200
		LD	A,$02
		LD	(SVBK),A	; �q�`�l�o���N�i�Q�j�Z�b�g
		LD	A,(BC)		; �A�g���r���[�g�f�d�s
		LD	D,A
		XOR	A
		LD	(SVBK),A	; �q�`�l�o���N�i�O�j�Z�b�g
		LD	A,D
		LD	(HLI),A
		INC	BC
		DEC	E
		JR	NZ,MSRT_ATR_200

		LD	(HL),$0		; �d�m�c�R�[�h
MSRT_ATR_900
		RET



;=============================================================
;=============================================================
	LIB	gbmsdt_usa	;US
	END

