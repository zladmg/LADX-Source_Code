
		onbankgroup

;================================================================
;
	NLIST
	PUBALL
;
BANK1C	GROUP	$1C
;
	LIB	ZRAM
	LIB	ZBN
;
;
	KANJI
	isdmg
;
	LIST
;
	ORG	$4000
;
USA
	DB	$00	; 0:Japan 1:USA
;=======================================
;  For mesege No 
;=======================================
;-------------------------------------
; 	�Ђ炪��
;-------------------------------------
WA	EQU	$00
WI	EQU	$01
WU	EQU	$02
WE	EQU	$03
WO	EQU	$04
;
WKA	EQU	$05
WKI	EQU	$06
WKU	EQU	$07
WKE	EQU	$08
WKO	EQU	$09
;
WSA	EQU	$0A
WSI	EQU	$0B
WSU	EQU	$0C
WSE	EQU	$0D
WSO	EQU	$0E
;
WTA	EQU	$0F
WTI	EQU	$10
WTU	EQU	$11
WTE	EQU	$12
WTO	EQU	$13
;
WNA	EQU	$14
WNI	EQU	$15
WNU	EQU	$16
WNE	EQU	$17
WNO	EQU	$18
;
WHA	EQU	$19
WHI	EQU	$1A
WHU	EQU	$1B
WHE	EQU	$1C
WHO	EQU	$1D
;
WMA	EQU	$1E
WMI	EQU	$1F
WMU	EQU	$20
WME	EQU	$21
WMO	EQU	$22
;
WYA	EQU	$23
WYU	EQU	$24
WYO	EQU	$25
;
WRA	EQU	$26
WRI	EQU	$27
WRU	EQU	$28
WRE	EQU	$29
WRO	EQU	$2A
;
WWA	EQU	$2B
WWO	EQU	$2C
WN	EQU	$2D
;
WGA	EQU	$2E
WGI	EQU	$2F
WGU	EQU	$30
WGE	EQU	$31
WGO	EQU	$32
;
WZA	EQU	$33
WZI	EQU	$34
WZU	EQU	$35
WZE	EQU	$36
WZO	EQU	$37
;
WDA	EQU	$38
WDI	EQU	$39
WDU	EQU	$3A
WDE	EQU	$3B
WDO	EQU	$3C
;
WBA	EQU	$3D
WBI	EQU	$3E
WBU	EQU	$3F
WBE	EQU	$40
WBO	EQU	$41
;
WPA	EQU	$42
WPI	EQU	$43
WPU	EQU	$44
WPE	EQU	$45
WPO	EQU	$46
;
WAY	EQU	$47
WUY	EQU	$48
WOY	EQU	$49
WT 	EQU	$4A
;--------------------------------
;        �J�^�J�i
;--------------------------------
KA	EQU	$50
KI	EQU	$51
KU	EQU	$52
KE	EQU	$53
KO	EQU	$54
;
KKA	EQU	$55
KKI	EQU	$56
KKU	EQU	$57
KKE	EQU	$58
KKO	EQU	$59
;
KSA	EQU	$5A
KSI	EQU	$5B
KSU	EQU	$5C
KSE	EQU	$5D
KSO	EQU	$5E
;
KTA	EQU	$5F
KTI	EQU	$60
KTU	EQU	$61
KTE	EQU	$62
KTO	EQU	$63
;
KNA	EQU	$64
KNI	EQU	$65
KNU	EQU	$66
KNE	EQU	$67
KNO	EQU	$68
;
KHA	EQU	$69
KHI	EQU	$6A
KHU	EQU	$6B
KHE	EQU	$6C
KHO	EQU	$6D
;
KMA	EQU	$6E
KMI	EQU	$6F
KMU	EQU	$70
KME	EQU	$71
KMO	EQU	$72
;
KYA	EQU	$73
KYU	EQU	$74
KYO	EQU	$75
;
KRA	EQU	$76
KRI	EQU	$77
KRU	EQU	$78
KRE	EQU	$79
KRO	EQU	$7A
;
KWA	EQU	$7B
KWO	EQU	$7C
KN	EQU	$7D
;
KGA	EQU	$7E
KGI	EQU	$7F
KGU	EQU	$80
KGE	EQU	$81
KGO	EQU	$82
;
KZA	EQU	$83
KZI	EQU	$84
KZU	EQU	$85
KZE	EQU	$86
KZO	EQU	$87
;
KDA	EQU	$88
KDI	EQU	$89
KDU	EQU	$8A
KDE	EQU	$8B
KDO	EQU	$8C
;
KBA	EQU	$8D
KBI	EQU	$8E
KBU	EQU	$8F
KBE	EQU	$90
KBO	EQU	$91
;
KPA	EQU	$92
KPI	EQU	$93
KPU	EQU	$94
KPE	EQU	$95
KPO	EQU	$96
;
KAY	EQU	$97
KUY	EQU	$98
KOY	EQU	$99
KT 	EQU	$9A
;--------------------------------
;       �L��
;--------------------------------
WBC	EQU	$A0	; �I
WQE	EQU	$A1	; �H
WB_	EQU	$A2	; �[
XX	EQU	$A3     ;Space
WSP	EQU	$A3     ;
WTN	EQU	$A4	; �E
WT2	EQU	$A5	; �A
WMR	EQU	$A6	; �B
KG1	EQU	$A7	; �u
KG2	EQU	$A8	;  �v
;--------------------------------
;       ����
;--------------------------------
W0	EQU	$B0
W1	EQU	$B1
W2	EQU	$B2
W3	EQU	$B3
W4	EQU	$B4
W5	EQU	$B5
W6	EQU	$B6
W7	EQU	$B7
W8	EQU	$B8
W9	EQU	$B9
;
SSA	EQU	$BA
SSHI	EQU	$BB
SSU	EQU	$BC
SSE	EQU	$BD
SSO	EQU	$BE
;  �����̖��O
NM	EQU	$C0
;
;���[�}��
RA	EQU	$D0
RB	EQU	$D1
RC	EQU	$D2
RD	EQU	$D3
RE	EQU	$D4
RF	EQU	$D5 
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
WLF	EQU	$FD
WE2	EQU	$FE	; Question check 
WED	EQU	$FF	; Set end
;=====================================================
;
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
	DW	M168,M169,M16A,M16B,M16C,M16D,M16E,M16F
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
MSCHNO	; �����̔ԍ�
;     0   1   2   3   4   5   6   7   8   9   A   B   C   D   E   F
 DB $00,$01,$02,$03,$04,$05,$06,$07,$08,$09,$0A,$0B,$0C,$0D,$0E,$0F ;0
 DB $10,$11,$12,$13,$14,$15,$16,$17,$18,$19,$1A,$1B,$1C,$1D,$1E,$1F ;1
 DB $20,$21,$22,$23,$24,$25,$26,$27,$28,$29,$2A,$2B,$30,$2C,$05,$06 ;2
 DB $07,$08,$09,$0A,$0B,$0C,$0D,$0E,$0F,$10,$11,$12,$13,$19,$1A,$1B ;3
 DB $1C,$1D,$19,$1A,$1B,$1C,$1D,$3E,$2F,$2D,$2E,$00,$00,$00,$00,$00 ;4
 DB $40,$41,$42,$43,$44,$45,$46,$47,$48,$49,$4A,$4B,$4C,$4D,$4E,$4F ;5
 DB $50,$51,$52,$53,$54,$55,$56,$57,$58,$59,$5A,$5B,$5C,$5D,$5E,$5F ;6
 DB $60,$61,$62,$63,$64,$65,$66,$67,$68,$69,$6A,$6B,$31,$6C,$45,$46 ;7
 DB $47,$48,$49,$4A,$4B,$4C,$4D,$4E,$4F,$50,$51,$52,$53,$59,$5A,$5B ;8
 DB $5C,$5D,$59,$5A,$5B,$5C,$5D,$32,$6F,$6D,$6E,$00,$00,$00,$00,$00 ;9
 DB $3D,$3C,$3F,$7E,$39,$3A,$3B,$7A,$7B,$00,$00,$00,$00,$00,$00,$00 ;A
 DB $70,$71,$72,$73,$74,$75,$76,$77,$78,$79,$9B,$9C,$9D,$9E,$9F,$38 ;B
 DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;C
 DB $80,$81,$82,$83,$84,$85,$86,$87,$88,$89,$8A,$8B,$8C,$8D,$8E,$8F ;D
 DB $88,$90,$91,$92,$93,$94,$95,$89,$96,$97,$98,$99,$9A,$87,$86,$00 ;E
 DB $34,$35,$36,$37,$00,$00,$00,$00,$00,$00,$00,$00,$00,$7E,$00,$00 ;F
;
;IT1	EQU	$E0	;���b�V�[
;IT2	EQU	$E1	;���{��
;IT3	EQU	$E2	;�h�b�O�t�[�h
;IT4	EQU	$E3	;�o�i�i
;IT5	EQU	$E4	;�_
;IT6	EQU	$E5	;�n�`�̑�
;IT7	EQU	$E6	;�p�C��
;IT8	EQU	$E7	;�n�C�r�X�J�X
;IT9	EQU	$E8	;�z�E�L
;ITA	EQU	$E9	;�j
;ITB	EQU	$EA	;�u���W���[
;ITC	EQU	$EB	;�E���R
;ITD	EQU	$EC	;���K�l
;ITE	EQU	$ED	;�u���}�C�h
;- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
MSCHN2  ; ���_ ���邩	1:� 2:�
;     0   1   2   3   4   5   6   7   8   9   A   B   C   D   E   F
 DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;0
 DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;1
 DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$01 ;2
 DB $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01 ;3
 DB $01,$01,$02,$02,$02,$02,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;4
 DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;5
 DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;6
 DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$01 ;7
 DB $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01 ;8
 DB $01,$01,$02,$02,$02,$02,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;9
 DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;A
 DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;B
 DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;C
 DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;D
 DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;E
 DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;F
;=============================================================
MSCANC	;�L�����Z���o���Ȃ邩�H  1:�o���Ȃ��I
;;    0   1   2   3   4   5   6   7   8   9   A   B   C   D   E   F	; 000
 DB $00,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01 ;0
 DB $00,$00,$00,$01,$00,$00,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;1
 DB $00,$00,$00,$00,$00,$00,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;2
 DB $00,$00,$00,$00,$00,$00,$01,$00,$01,$00,$00,$00,$00,$00,$00,$00 ;3
 DB $00,$00,$00,$00,$00,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01 ;4
 DB $01,$01,$01,$01,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;5
 DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;6
 DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;7
 DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;8
 DB $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01 ;9
 DB $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01 ;A
 DB $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01 ;B
 DB $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01 ;C
 DB $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$00,$00,$01,$00,$00,$00 ;D
 DB $00,$01,$01,$01,$01,$01,$00,$00,$00,$01,$00,$00,$00,$00,$00,$00 ;E
 DB $00,$00,$00,$00,$00,$01,$01,$01,$00,$00,$00,$00,$00,$00,$01,$00 ;F
;;    0   1   2   3   4   5   6   7   8   9   A   B   C   D   E   F	; 100
 DB $00,$00,$00,$00,$00,$00,$00,$00,$01,$01,$01,$01,$01,$01,$01,$01 ;0
 DB $01,$01,$00,$00,$00,$00,$00,$01,$00,$00,$00,$00,$00,$00,$00,$00 ;1
 DB $00,$00,$00,$00,$01,$01,$00,$00,$00,$00,$00,$00,$00,$00,$01,$00 ;2
 DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;3
 DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;4
 DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;5
 DB $00,$00,$00,$00,$00,$00,$00,$01,$00,$00,$00,$00,$00,$00,$00,$00 ;6
 DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;7
 DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;8
 DB $00,$01,$00,$00,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;9
 DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;A
 DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;B
 DB $00,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;C
 DB $00,$00,$00,$00,$00,$01,$00,$00,$01,$01,$00,$00,$00,$00,$00,$00 ;D
 DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$00,$00,$00,$01 ;E
 DB $00,$00,$00,$00,$00,$01,$01,$00,$01,$00,$00,$00,$00,$00,$01,$01 ;F
;;    0   1   2   3   4   5   6   7   8   9   A   B   C   D   E   F	; 200
 DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;0
 DB $01,$01,$00,$01,$01,$01,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;1
 DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$00,$00,$01,$00,$01,$00 ;2
 DB $00,$00,$00,$00,$00,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01 ;3
 DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;4
 DB $00,$00,$00,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01 ;5
 DB $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01 ;6
 DB $01,$01,$01,$01,$01,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;7
 DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ;8
 DB $00,$00,$00,$00,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01 ;9
 DB $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01 ;A
;
;===============================================================
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
		ld	c,l
		ld	b,h
;;10/31;	PUSH	HL
;;10/31;	POP	BC
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
	LIB	GBMSDT
;;;KK;;;	LIB	GBMSDT_USA
	END
