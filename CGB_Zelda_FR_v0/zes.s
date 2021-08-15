;
		onbankgroup
;
;==============	バンク０ ================================================
BANK0		GROUP	0
;-------------<	ZCO >-------------
		extern	RNDSUB,OBJBG,DATA_MOV
;
;-------------<	ZPL >-------------
		extern	PLPSRV,MSGCHK,MSGCHK2,DUSHCL,KNCSET,KNFLSH,PLSHST
		extern	MVCALC,FLASHST,EXIDSH,NXGOTO,PLCSET,LDTIM0,CARITMD
		extern	PTOBI,PBULE,PINDR1,POVER,PKEN,ENDG
;
;-------------<	ZBS >-------------
		extern	DJRMRD
;
;-------------<	ZMA >-------------
		extern	PBSET,PBRETN
;
;==============	バンク１ ================================================
BANK1		GROUP	1
;-------------<	ZS1 >-------------
		extern	WANWANCK
;
;==============	バンク２ ================================================
BANK2		GROUP	2
;-------------<	ZEX >-------------
		extern	SPUNDT,PLBGCK,COINIT,HARTIT,ITEMDP,PLDMST00
		extern	TAKARST,WTUP,SMK1,HNSM
;
;==============	バンク３ ================================================
BANK3		GROUP	3
;-------------<	ZEN >-------------
		extern	ISIBRK,ENIDSH2,PSERCH,PSERCH2,ENIDSH,CRENEN,ENFAIL
		extern	ENFOLE,ENFIRE,ENINIT,ENSTOP,ENCACH,ENSHOT,CRENPS
		extern	ENBGCK,ENBGCK2,CREPKE,CRENPL,CRENPL2,CRKNKN,CRKNEN
		extern	ENITMS,ENMDSTS,ITEMGET,ENMDST,KTFLST,EPBANK,KWUSO
		extern	IKADA,TUKAI,RANEM,HASIR,PYAAAMV,BOMBRMV,PRTBMMV
		extern	KTOBJMV,BLOCKMV,OCTA1MV,OCTAMMV,MORI1MV,MORYAMV
		extern	BOMBOMV,HIPLPMV,BOSS1MV,KWUSOMV,HART1MV,RUPY1MV
		extern	YOSEIMV,KEYSMMV,PLTATMV,HMASKMV,POWERMV,KINOMMV
		extern	KAKERMV,HARTBMV,ALOW1MV,BOMB1MV,GAKKIMV,KINOKMV
		extern	MGPOWMV,KAKINMV,KAIINMV,MSTESFMV,EPXYCK
;
;==============	バンク４ ================================================
BANK4		GROUP	4
;-------------<	ZE2 >-------------
		extern	YMVSUB,HAYAMIT,HAYABIT,BGKAOIT,BSLIMIT,TBOSSIT
		extern	RIVERMV,GHOSTMV,GHOSBMV,GHOSSMV,HAYAMMV,RENO7MV
		extern	NYAMAMV,CHUNLIMV,UFOCHMV,TEKYUMV,BHOLEMV,BHOL2MV
		extern	FISHGMV,SBOMBMV,OBOMBMV,NINJAMV,NINTMMV,HAYABMV
		extern	BGKAOMV,BSLIMMV,TBOSSMV
;
;==============	バンク５ ================================================
BANK5		GROUP	5
;-------------<	ZE3 >-------------
		extern	BSNAKIT,BFIREIT,DDNGOIT,BBIRDIT,BFISHIT,BDCHD10
		extern	BDCHD11,BDCHD20,BDCHD21,GIRL0MV,PAPA0MV,BABA0MV
		extern	BSNAKMV,GORMAMV,DDNGOMV,BFIREMV,BBIRDMV,BFISHMV
		extern	SWTRPMV,IKADAMV,NIWATMV,WANWANMV
;
;==============	バンク６ ================================================
BANK6		GROUP	6
;-------------<	ZE4 >-------------
		extern	GKFLSHL,TEKTAMV,KUZUHMV,BABULMV,SPARKMV,SPAR2MV
		extern	PORUSMV,BLBATMV,SKEL0MV,SLIMBMV,SLIMSMV,MUMMYMV
		extern	MOTOSMV,MAGE0MV,SONICMV,LAIKUMV,TRAP0MV,FUKUROMV
		extern	TERSAMV,BTFLYMV,KODOMAMV,KODOMBMV,KODOMCMV,KODOMDMV
		extern	URURIMV,OZWANMV,MSWANMV,KARASMV,TRYCYMV,BHANAMV
		extern	BHFIRMV,SHANAMV,DENWAMV,OBAQMV,OBQBARMV,BEDINMV
		extern	IZUMIMV,HATO0MV,FLYITMV,RANEMMV,NOMOSMV,HINO0MV
		extern	PANELMV,PANEL2MV,SWBLKMV,SWBLK2MV,MIZUBMV,SLOTMV
		extern	KARBYMV,OCHANMV,HEISMMV,RICHDMV,FLYIT2MV
;
;==============	バンク７ ================================================
BANK7		GROUP	7
;-------------<	ZE5 >-------------
		extern	TAKARMV,HEIS0MV,INOSIMV,BSKELMV,HEISBMV,DAISUMV
		extern	AMENBMV,YUKABMV,YSLIMMV,BALEEMV,TBEAMMV,KURI0MV
		extern	PIHATMV,LOPEMV,PACKNMV,LIFTXMV,LIFTYMV,LIFTDMV
		extern	LIFTTMV,HASIRMV,TAMA0MV,GESSOMV,MONKYMV,OCTAJMV
		extern	YOSSIMV,AMUSIMV,YUKASMV,HANNYMV,PAPA2MV,KUMA0MV
		extern	PAPALMV,MAMADMV,TURIMV,SHIGEMV
;
;==============	バンク８ ================================================
BANK8		GROUP	8
;-------------<	ZBD >-------------
		extern	GRBGCR,DJBGCR
;
;==============	バンク１４ ==============================================
BANK14		GROUP	14H
;-------------<	ZEX >-------------
		extern	ENSUB0,SHRVSES,CAOFCKS,ENWAN
;
;==============	バンク１５ ==============================================
BANK15		GROUP	15H
;-------------<	ZE8 >-------------
		extern	NXOMSB,SADWST,NXOMCL,ENRMCLL,SKEL1MV,R7BEMMV,EWOODMV
		extern	MSPNTMV,IWAGOMV,SWBLKUMV,SWBLKDMV,SWBLKLMV,SWBLKRMV
		extern	ONOFSMV,MVHASMV,AMUSTMV,UNIUNIMV,KANIMV,BLANKAMV
		extern	SARUKMV,MOUSEMV,HODAIMV,SANBOMV,MBOSSMV,BOSSMV
		extern	SIROSMV
;
;==============	バンク１７ ==============================================
BANK17		GROUP	17H
;-------------<	ZEND >-------------
		extern	EDAIMV
;
;==============	バンク１８ ==============================================
BANK18		GROUP	18H
;-------------<	ZE6 >-------------
		extern	FUCKSMV,POWDRMV,HINTOMV,PSCRLMV,HIKUSMV,TANABEMV
		extern	MAMA0MV,MAMA1MV,PAPA1MV,KAMEIMV,NYOROMV,PKURIMV
		extern	TUKAIMV,ARIMAMV,BOXERMV,ZONBIMV,KHIMIMV,GIRL1MV
		extern	GIRL2MV,MAMUUMV,TODDMV,MANBOMV,USAGIMV,ONPUMV
		extern	AKUMAMV,ZORAMV,MAMAD2MV,USAG2MV,KUMASMV,NTORIMV
		extern	GMUSIMV
;
;==============	バンク１９ ==============================================
BANK19		GROUP	19H
;-------------<	ZE7 >-------------
		extern	ENSCRL,KTFLCS,BUMERMV,COPYAMV,WARPMV,FOXDOGMV
		extern	HEIHOMV,KAERUMV,SWIMPMV,MOAIMV,PUKPKMV,PUKPVMV
		extern	PUKPJMV,WANIMV,GAGEMV,OBAKEMV,NIWAXMV,YTUBOMV
		extern	DOSNSMV,DOSNBMV,TAIATMV,FIREBMV,BABUBMV,KAZAMMV
		extern	BOOKMV,SEIRENMV,KENBMMV
;
;============== バンク２０ ==============================================
BANK20		GROUP	$20
;-------------<	ZJP >-------------
		EXTERN	GET_ENHL,ENEMY_SUB
		EXTERN	EPBANK,GET_ENHL_DATA
;
;-------------<	ZWIN >------------
		EXTERN	PWKEND2,ITSEL_SUB
;
;============== バンク３６ ==============================================
BANK36		GROUP	$36
;-------------<	ZE9 >-------------
		EXTERN	TBOSSIT
;
;========================================================================
	PUBALL
BANK0	GROUP	00

	LIB	ZRAM
	LIB	ZBN
;
;;;;;;;;	EXTERN	RNDSUB,PLPSRV,MSGCHK,MSGCHK2,DUSHCL,OBJBG,KNCSET,KNFLSH,ISIBRK
;;;;;;;;	EXTERN	PLSHST,MVCALC,FLASHST,DJRMRD,EXIDSH,ENIDSH2,SPUNDT,NXGOTO,DATA_MOV
;;;;;;;;	EXTERN	PBSET,ENSCRL,ENSUB0,PBRETN,PSERCH,PSERCH2,ENIDSH,PLBGCK,CRENEN
;;;;;;;;	EXTERN	ENFAIL,ENFOLE,ENFIRE,ENINIT,ENSTOP,ENCACH,ENSHOT,CRENPS,NXOMSB
;;;;;;;;	EXTERN	ENBGCK,ENBGCK2,CREPKE,CRENPL,CRENPL2,CRKNKN,CRKNEN,SADWST,NXOMCL
;;;;;;;;	EXTERN	YMVSUB,HAYAMIT,HAYABIT,BGKAOIT,BSLIMIT,TBOSSIT,BSNAKIT,BFIREIT,PLCSET
;;;;;;;;	EXTERN	COINIT,HARTIT,ITEMDP,PWKEND2,DDNGOIT,ENITMS,ENMDSTS,ITEMGET,BBIRDIT
;;;;;;;;	EXTERN	BFISHIT,ENMDST,KTFLST,WANWANCK,LDTIM0
;;;;;;;;	EXTERN	SHRVSES,GKFLSHL,PLDMST00,TAKARST,KTFLCS
;;;;;;;;	EXTERN	CAOFCKS,ENRMCLL
;;;;;;;;;
;;;;;;;;	EXTERN	CARITMD,GRBGCR,DJBGCR,PTOBI,WTUP,PBULE,SMK1,PINDR1,EPBANK
;;;;;;;;	EXTERN	POVER,HNSM,PKEN,KWUSO,IKADA,TUKAI,RANEM
;;;;;;;;	EXTERN	BDCHD10,BDCHD11,BDCHD20,BDCHD21,HASIR
;;;;;;;;	EXTERN	ENWAN
;;;;;;;;;
;;;;;;;;	EXTERN	PYAAAMV
;;;;;;;;	EXTERN	BUMERMV
;;;;;;;;;;	EXTERN	TESTMV  ;BUMERMV
;;;;;;;;	EXTERN	BOMBRMV
;;;;;;;;	EXTERN	FUCKSMV
;;;;;;;;	EXTERN	PRTBMMV
;;;;;;;;;
;;;;;;;;	EXTERN	KTOBJMV
;;;;;;;;	EXTERN	BLOCKMV
;;;;;;;;	EXTERN	TAKARMV
;;;;;;;;	EXTERN	POWDRMV
;;;;;;;;;
;;;;;;;;	EXTERN	OCTA1MV
;;;;;;;;	EXTERN	OCTAMMV
;;;;;;;;	EXTERN	MORI1MV
;;;;;;;;	EXTERN	MORYAMV
;;;;;;;;	EXTERN	TEKTAMV
;;;;;;;;	EXTERN	RIVERMV
;;;;;;;;	EXTERN	KUZUHMV
;;;;;;;;	EXTERN	GHOSTMV
;;;;;;;;	EXTERN	GHOSBMV
;;;;;;;;	EXTERN	GHOSSMV
;;;;;;;;	EXTERN	BOMBOMV
;;;;;;;;	EXTERN	HEIS0MV
;;;;;;;;	EXTERN	BABULMV
;;;;;;;;	EXTERN	SPARKMV
;;;;;;;;	EXTERN	SPAR2MV
;;;;;;;;	EXTERN	PORUSMV
;;;;;;;;	EXTERN	BLBATMV
;;;;;;;;	EXTERN	SKEL0MV
;;;;;;;;	EXTERN	SLIMBMV
;;;;;;;;	EXTERN	SLIMSMV
;;;;;;;;;;	EXTERN	BASSFMV
;;;;;;;;	EXTERN	SKEL1MV
;;;;;;;;	EXTERN	MUMMYMV
;;;;;;;;	EXTERN	MOTOSMV
;;;;;;;;	EXTERN	MAGE0MV
;;;;;;;;	EXTERN	SONICMV
;;;;;;;;	EXTERN	LAIKUMV
;;;;;;;;	EXTERN	HIPLPMV
;;;;;;;;	EXTERN	BOSS1MV
;;;;;;;;	EXTERN	KWUSOMV
;;;;;;;;	EXTERN	TRAP0MV
;;;;;;;;	EXTERN	COPYAMV
;;;;;;;;	EXTERN	HAYAMMV
;;;;;;;;	EXTERN	RENO7MV
;;;;;;;;	EXTERN	R7BEMMV
;;;;;;;;	EXTERN	INOSIMV
;;;;;;;;;
;;;;;;;;	EXTERN	HART1MV
;;;;;;;;	EXTERN	RUPY1MV
;;;;;;;;	EXTERN	YOSEIMV
;;;;;;;;	EXTERN	KEYSMMV
;;;;;;;;	EXTERN	PLTATMV
;;;;;;;;	EXTERN	HMASKMV
;;;;;;;;	EXTERN	POWERMV
;;;;;;;;	EXTERN	KINOMMV
;;;;;;;;	EXTERN	KAKERMV
;;;;;;;;	EXTERN	HARTBMV
;;;;;;;;	EXTERN	ALOW1MV ;MSTESTMV
;;;;;;;;	EXTERN	BOMB1MV
;;;;;;;;	EXTERN	GAKKIMV
;;;;;;;;	EXTERN	KINOKMV
;;;;;;;;	EXTERN	MGPOWMV
;;;;;;;;	EXTERN	KAKINMV
;;;;;;;;	EXTERN	KAIINMV
;;;;;;;;	EXTERN	GIRL0MV
;;;;;;;;	EXTERN	PAPA0MV
;;;;;;;;	EXTERN	BABA0MV
;;;;;;;;	EXTERN	FUKUROMV
;;;;;;;;	EXTERN	HINTOMV
;;;;;;;;;;	EXTERN	00 ;TOBIDMV
;;;;;;;;	EXTERN	EWOODMV
;;;;;;;;	EXTERN	MSPNTMV
;;;;;;;;	EXTERN	IWAGOMV
;;;;;;;;	EXTERN	SWBLKUMV
;;;;;;;;	EXTERN	SWBLKDMV
;;;;;;;;	EXTERN	SWBLKLMV
;;;;;;;;	EXTERN	SWBLKRMV
;;;;;;;;;- - - - - - - - - - - - - - - - - -
;;;;;;;;;;	EXTERN	STESTMV
;;;;;;;;	EXTERN	MSTESFMV
;;;;;;;;;;	EXTERN	FRBARMV
;;;;;;;;	EXTERN	NYAMAMV
;;;;;;;;	EXTERN	CHUNLIMV
;;;;;;;;	EXTERN	UFOCHMV
;;;;;;;;	EXTERN	TERSAMV
;;;;;;;;	EXTERN	TEKYUMV
;;;;;;;;	EXTERN	BHOLEMV
;;;;;;;;	EXTERN	BHOL2MV
;;;;;;;;	EXTERN	FISHGMV
;;;;;;;;	EXTERN	SBOMBMV
;;;;;;;;	EXTERN	OBOMBMV
;;;;;;;;	EXTERN	NINJAMV
;;;;;;;;	EXTERN	NINTMMV
;;;;;;;;	EXTERN	HAYABMV
;;;;;;;;	EXTERN	BGKAOMV
;;;;;;;;	EXTERN	BSLIMMV
;;;;;;;;	EXTERN	TBOSSMV
;;;;;;;;	EXTERN	BSNAKMV
;;;;;;;;	EXTERN	GORMAMV
;;;;;;;;	EXTERN	BSKELMV
;;;;;;;;	EXTERN	DDNGOMV
;;;;;;;;	EXTERN	WARPMV
;;;;;;;;	EXTERN	BFIREMV
;;;;;;;;	EXTERN	BBIRDMV
;;;;;;;;	EXTERN	PSCRLMV
;;;;;;;;	EXTERN	BFISHMV
;;;;;;;;	EXTERN	ONOFSMV
;;;;;;;;	EXTERN	SWTRPMV
;;;;;;;;	EXTERN	MVHASMV
;;;;;;;;	EXTERN	HIKUSMV
;;;;;;;;	EXTERN	IKADAMV
;;;;;;;;	EXTERN	TANABEMV
;;;;;;;;	EXTERN	NIWATMV
;;;;;;;;	EXTERN	WANWANMV
;;;;;;;;	EXTERN	BTFLYMV
;;;;;;;;	EXTERN	FOXDOGMV
;;;;;;;;	EXTERN	KODOMAMV
;;;;;;;;	EXTERN	KODOMBMV
;;;;;;;;	EXTERN	KODOMCMV
;;;;;;;;	EXTERN	KODOMDMV
;;;;;;;;	EXTERN	MAMA0MV
;;;;;;;;	EXTERN	MAMA1MV
;;;;;;;;	EXTERN	PAPA1MV
;;;;;;;;	EXTERN	URURIMV
;;;;;;;;	EXTERN	OZWANMV
;;;;;;;;	EXTERN	MSWANMV
;;;;;;;;	EXTERN	KARASMV
;;;;;;;;	EXTERN	TRYCYMV
;;;;;;;;	EXTERN	BHANAMV
;;;;;;;;	EXTERN	BHFIRMV
;;;;;;;;	EXTERN	SHANAMV
;;;;;;;;	EXTERN	KAMEIMV
;;;;;;;;	EXTERN	DENWAMV
;;;;;;;;	EXTERN	OBAQMV
;;;;;;;;	EXTERN	OBQBARMV
;;;;;;;;	EXTERN	BEDINMV 
;;;;;;;;	EXTERN	IZUMIMV 
;;;;;;;;	EXTERN	HATO0MV 
;;;;;;;;	EXTERN	FLYITMV 
;;;;;;;;	EXTERN	RANEMMV 
;;;;;;;;	EXTERN	NOMOSMV 
;;;;;;;;	EXTERN	HINO0MV 
;;;;;;;;	EXTERN	PANELMV 
;;;;;;;;	EXTERN	PANEL2MV 
;;;;;;;;	EXTERN	SWBLKMV  
;;;;;;;;	EXTERN	SWBLK2MV 
;;;;;;;;	EXTERN	MIZUBMV 
;;;;;;;;	EXTERN	HEIHOMV 
;;;;;;;;	EXTERN	SLOTMV 
;;;;;;;;	EXTERN	KARBYMV 
;;;;;;;;	EXTERN	OCHANMV 
;;;;;;;;	EXTERN	HEISMMV 
;;;;;;;;	EXTERN	HEISBMV 
;;;;;;;;	EXTERN	RICHDMV 
;;;;;;;;	EXTERN	KAERUMV 
;;;;;;;;	EXTERN	SWIMPMV 
;;;;;;;;	EXTERN	DAISUMV 
;;;;;;;;	EXTERN	AMENBMV 
;;;;;;;;	EXTERN	YUKABMV 
;;;;;;;;	EXTERN	YSLIMMV 
;;;;;;;;	EXTERN	BALEEMV 
;;;;;;;;	EXTERN	MOAIMV 
;;;;;;;;	EXTERN	TBEAMMV 
;;;;;;;;	EXTERN	KURI0MV 
;;;;;;;;	EXTERN	PIHATMV 
;;;;;;;;	EXTERN	LOPEMV 
;;;;;;;;	EXTERN	PACKNMV 
;;;;;;;;	EXTERN	LIFTXMV 
;;;;;;;;	EXTERN	LIFTYMV 
;;;;;;;;	EXTERN	LIFTDMV 
;;;;;;;;	EXTERN	LIFTTMV 
;;;;;;;;	EXTERN	HASIRMV 
;;;;;;;;	EXTERN	TAMA0MV 
;;;;;;;;	EXTERN	GESSOMV 
;;;;;;;;	EXTERN	PUKPKMV 
;;;;;;;;	EXTERN	PUKPVMV 
;;;;;;;;	EXTERN	PUKPJMV 
;;;;;;;;	EXTERN	MONKYMV 
;;;;;;;;	EXTERN	OCTAJMV 
;;;;;;;;	EXTERN	YOSSIMV 
;;;;;;;;	EXTERN	AMUSIMV 
;;;;;;;;	EXTERN	YUKASMV 
;;;;;;;;	EXTERN	AMUSTMV 
;;;;;;;;	EXTERN	HANNYMV 
;;;;;;;;	EXTERN	PAPA2MV 
;;;;;;;;	EXTERN	KUMA0MV 
;;;;;;;;	EXTERN	PAPALMV 
;;;;;;;;	EXTERN	MAMADMV 
;;;;;;;;	EXTERN	TURIMV 
;;;;;;;;	EXTERN	NYOROMV 
;;;;;;;;	EXTERN	PKURIMV 
;;;;;;;;	EXTERN	SHIGEMV 
;;;;;;;;	EXTERN	TUKAIMV 
;;;;;;;;	EXTERN	ARIMAMV 
;;;;;;;;	EXTERN	BOXERMV 
;;;;;;;;	EXTERN	ZONBIMV 
;;;;;;;;	EXTERN	KHIMIMV 
;;;;;;;;	EXTERN  GIRL1MV 
;;;;;;;;	EXTERN  GIRL2MV 
;;;;;;;;	EXTERN  MAMUUMV 
;;;;;;;;	EXTERN  TODDMV 
;;;;;;;;	EXTERN  UNIUNIMV 
;;;;;;;;	EXTERN  KANIMV 
;;;;;;;;	EXTERN  MANBOMV 
;;;;;;;;	EXTERN  USAGIMV 
;;;;;;;;	EXTERN  ONPUMV 
;;;;;;;;	EXTERN  AKUMAMV 
;;;;;;;;	EXTERN  ZORAMV 
;;;;;;;;	EXTERN  BLANKAMV 
;;;;;;;;	EXTERN  WANIMV 
;;;;;;;;	EXTERN  MAMAD2MV 
;;;;;;;;	EXTERN  GAGEMV 
;;;;;;;;	EXTERN	USAG2MV
;;;;;;;;	EXTERN	KUMASMV
;;;;;;;;	EXTERN	NTORIMV
;;;;;;;;	EXTERN	GMUSIMV
;;;;;;;;	EXTERN	OBAKEMV
;;;;;;;;	EXTERN	NIWAXMV
;;;;;;;;	EXTERN	YTUBOMV
;;;;;;;;	EXTERN	DOSNSMV
;;;;;;;;	EXTERN	DOSNBMV
;;;;;;;;	EXTERN	TAIATMV
;;;;;;;;	EXTERN	FIREBMV
;;;;;;;;	EXTERN	BABUBMV
;;;;;;;;	EXTERN	KAZAMMV
;;;;;;;;	EXTERN  BOOKMV 
;;;;;;;;	EXTERN  SEIRENMV 
;;;;;;;;	EXTERN	KENBMMV
;;;;;;;;	EXTERN	SARUKMV
;;;;;;;;	EXTERN	MOUSEMV
;;;;;;;;	EXTERN	HODAIMV
;;;;;;;;	EXTERN	SANBOMV
;;;;;;;;	EXTERN	MBOSSMV
;;;;;;;;	EXTERN	FLYIT2MV 
;;;;;;;;	EXTERN  BOSSMV 
;;;;;;;;	EXTERN  SIROSMV 
;;;;;;;;	EXTERN  EDAIMV 
;------------------------------
;------------------------------------------------
	KANJI
	PAGE
	isdmg
;
	LIST
;;;11/17	ORG	$37E6
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%				   %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
WAENCK
	LD	A,$14
	LD	($2100),A
;
	LD	HL,ENWAN
	ADD	HL,DE
	LD	A,(HL)
;
	LD	HL,$2100
	LD	(HL),$05
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%				   %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
KTFLCSL
	LD	A,$19
	CALL	PBSET
	CALL	KTFLCS
	LD	A,$03
	JP	PBSET
;;	JP	PBRETN
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%				   %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
KTFLSTL
	LD	A,$03
	LD	($2100),A
	CALL	KTFLST
	JP	PBRETN
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%				   %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
SHRVSE
	LD	A,$14
	LD	($2100),A
;
	CALL	SHRVSES
;
	JP	PBRETN
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%				   %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
WANWANCKL
	LD	A,$01
	CALL	PBSET
;
	CALL	WANWANCK
;
	LD	A,$02
	JP	PBSET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%				   %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ENMDSTL
	LD	A,$03
	LD	($2100),A
	CALL	ENMDST
	JP	PBRETN
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%				   %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
EPXYCKL
	LD	A,$03
	LD	($2100),A
	CALL	EPXYCK
	JP	PBRETN
;============================
CAOFCKL
	LD	A,$14
	LD	($2100),A
	CALL	CAOFCKS
	LD	A,$03
	LD	($2100),A
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%				   %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ENOMDT
	DB	$00,$08,$10,$18
;	DB	$00,$08,$10,$18
;	DB	$00,$08,$10,$18
;	DB	$00,$08,$10,$18
;
;	DB	$00,$10,$20,$30
;	DB	$08,$18,$28,$38
;	DB	$28,$18,$38,$08
;	DB	$18,$28,$38,$18
;
ENEMY
	LD	HL,BSFLSD
	LD	A,(HL)
	AND	A
	JR	Z,ENBOS10
;
	DEC	(HL)
	JR	NZ,ENBOS10
;
	LD	A,$10
	LD	(SOUND2),A	;(S)	ボスやられ音！
ENBOS10
	LD	A,(MSGEFG)
	AND	A
	JR	NZ,EN10E0
;
	LD	A,(ENSTTM)
	LD	(ENSTFG),A
	AND	A
	JR	Z,EN10E0
;
	DEC	A
	LD	(ENSTTM),A
EN10E0
	LD	A,(PLMODE)
	CP	POVER
	RET	Z
;
	XOR	A
	LD	(ENOMIS),A	; OAM set count reset !
;
	LD	A,(DNJNNO)
	CP	DJMAX ;$20
;
	LD	A,(FRCNT)
	JR	C,E00010
	XOR	A
E00010
	AND	$03
	LD	E,A
	LD	D,$00
	LD	HL,ENOMDT
	ADD	HL,DE
	LD	A,(HL)		; Enemy OAM index set !
	LD	(ENOMID),A	; For 10's over calc !!
;
		LD	A,$20
		LD	($2100),A
		CALL	ENEMY_SUB
		XOR	A
		LD	($2100),A
;;;; ZJPへ移動した!!!
;;;KK;;;	LD	A,(FIREBFG)
;;;KK;;;	LD	(WFIREBFG),A
;;;KK;;;	XOR	A
;;;KK;;;	LD	(FIREBFG),A
;;;KK;;;;;	LD	(SHOPFG),A	; Shop in flag (Not item use)
;;;KK;;;	LD	(DAMASI),A	; たぬきだましフラグ！
;;;KK;;;	LD	(IKADAON),A	; Player Ikada on flag !
;;;KK;;;	LD	(SLIMFG),A	;スライムヒッツキ!
;;;KK;;;	LD	(WARPFG),A	
;;;KK;;;	LD	(ONLFFG),A	;リフト載りフラグ！
;;;KK;;;	LD	(PLCANO),A
;;;KK;;;	LD	(TOBIOF),A
;
	LD	A,(MSGEFG)
	AND	A
	JR	NZ,ENFF00
;
;;	XOR	A
	LD	(MSCRFG),A	; Peaple cros flag (Not item set)
ENFF00
		LD	A,$20
;;;KK;;;		CALL	PBSET
		LD	(PBANK),A
		LD	($2100),A
		CALL	PWKEND2	; Meter ken flashing
;
;;;KK;;;	LD	A,$02
;;;KK;;;	CALL	PBSET
;
	LD	B,$0
	LD	C,<ENNO-1
EN0000
	LD	A,C
	LD	(INDEX),A
;
	LD	HL,ENMODE
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,EN0001
;
	LD	(ENMODE2),A
;
	CALL	ENMAIN
EN0001
	DEC	C
	LD	A,C
	CP	$FF
	JR	NZ,EN0000
ENNOTH
	RET
;==============================
ENRMCL
	LD	A,$15
	LD	($2100),A
	CALL	ENRMCLL
	LD	A,$03
	LD	($2100),A
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%				   %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ENMAIN
	LD	HL,ENMYNO
	ADD	HL,BC
	LD	A,(HL)
	LD	(ENMYNO2),A
	LD	HL,ENSTAT
	ADD	HL,BC
	LD	A,(HL)
	LD	(ENSTAT2),A
	LD	HL,ENCHPT
	ADD	HL,BC
	LD	A,(HL)
	LD	(ENCHPT2),A
;
	LD	A,$19
;;;KK;;;	CALL	PBSET
	LD	(PBANK),A
	LD	($2100),A
;
	LD	A,(ENMYNO2)
	CP	IKADA
	JR	NZ,ENMA01
;
	LD	A,(IKADAON)
	AND	A
	JR	NZ,ENMA03
ENMA01
	LD	A,(ENMODE2)
	CP	ECACH
	JR	NZ,ENMA10
;
ENMA03
	CALL	ENSCRL
	CALL	ENPSSV
	JR	ENMA20
ENMA10
	CALL	ENPSSV
	CALL	ENSCRL
ENMA20
	LD	A,$14
;;;KK;;;	CALL	PBSET
	LD	(PBANK),A
	LD	($2100),A
;
	CALL	ENSUB0
;
	LD	A,$03
;;;KK;;;	CALL	PBSET
	LD	(PBANK),A
	LD	($2100),A
	LD	A,(ENMODE2)
	CP	EMOVE
	JP	Z,ENMOVE
	RST	0
	DW	ENNOTH
	DW	ENFAIL
	DW	ENFOLE
	DW	ENFIRE
	DW	ENINIT
	DW	ENMOVE ; Dammy
	DW	ENSTOP
	DW	ENCACH
	DW	ENSHOT
;- - - - - - - - - - - -
EFAIL	EQU	1
EFOLE	EQU	2
EFIRE	EQU	3
EINIT	EQU	4
EMOVE	EQU	5
ESTOP	EQU	6
ECACH	EQU	7
ESHOT	EQU	8
;----------------------------
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%				   %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ENMOVEL
	CALL	ENMOVE
;
	LD	A,$03
;;;KK;;;	JP	PBSET
	LD	(PBANK),A
	LD	($2100),A
	RET
;- - - - - - - - - - - - - - - - - - - -
ENMOVE
		ld	a,:GET_ENHL_DATA
		ld	(02100h),a
		ld	a,(ENMYNO2)
		ld	e,a
		ld	d,b
		ld	hl,GET_ENHL_DATA
		add	hl,de
		add	hl,de
		add	hl,de
		ld	e,(hl)
		inc	hl
		ld	d,(hl)
		inc	hl
		ld	a,(hl)
		ld	l,e
		ld	h,d
		ld	(PBANK),a
		ld	(02100h),a
		jp	(hl)
;
;;;KK;;;	LD	A,(ENMYNO2)
;;;KK;;;	LD	E,A
;;;KK;;;	LD	D,B
;;;KK;;;	LD	HL,EPBANK
;;;KK;;;	ADD	HL,DE
;;;KK;;;	LD	A,(HL)
;;;KK;;;	CALL	PBSET
;;;KK;;;;
;;;KK;;;;;	LD	A,(ENMYNO2)
;;;KK;;;	LD	A,E
;;;KK;;;	RST	0
;;;KK;;;	DW	PYAAAMV
;;;KK;;;	DW	BUMERMV
;;;KK;;;	DW	BOMBRMV
;;;KK;;;	DW	FUCKSMV
;;;KK;;;	DW	PRTBMMV
;;;KK;;;;
;;;KK;;;	DW	KTOBJMV
;;;KK;;;	DW	BLOCKMV
;;;KK;;;	DW	TAKARMV
;;;KK;;;	DW	POWDRMV
;;;KK;;;;
;;;KK;;;	DW	OCTA1MV
;;;KK;;;	DW	OCTAMMV
;;;KK;;;	DW	MORI1MV
;;;KK;;;	DW	MORYAMV
;;;KK;;;	DW	TEKTAMV
;;;KK;;;	DW	RIVERMV
;;;KK;;;	DW	KUZUHMV
;;;KK;;;	DW	GHOSTMV
;;;KK;;;	DW	GHOSBMV
;;;KK;;;	DW	GHOSSMV
;;;KK;;;	DW	BOMBOMV
;;;KK;;;	DW	HEIS0MV
;;;KK;;;	DW	BABULMV
;;;KK;;;	DW	SPARKMV
;;;KK;;;	DW	SPAR2MV
;;;KK;;;	DW	PORUSMV
;;;KK;;;	DW	BLBATMV
;;;KK;;;	DW	SKEL0MV
;;;KK;;;	DW	SLIMBMV
;;;KK;;;	DW	SLIMSMV
;;;KK;;;	DW	00 ;BASSFMV
;;;KK;;;	DW	SKEL1MV
;;;KK;;;	DW	MUMMYMV
;;;KK;;;	DW	MOTOSMV
;;;KK;;;	DW	MAGE0MV
;;;KK;;;	DW	SONICMV
;;;KK;;;	DW	LAIKUMV
;;;KK;;;	DW	HIPLPMV
;;;KK;;;	DW	BOSS1MV
;;;KK;;;	DW	KWUSOMV
;;;KK;;;	DW	TRAP0MV
;;;KK;;;	DW	COPYAMV
;;;KK;;;	DW	HAYAMMV
;;;KK;;;	DW	RENO7MV
;;;KK;;;	DW	R7BEMMV
;;;KK;;;	DW	INOSIMV
;;;KK;;;;
;;;KK;;;	DW	HART1MV
;;;KK;;;	DW	RUPY1MV
;;;KK;;;	DW	YOSEIMV
;;;KK;;;	DW	KEYSMMV
;;;KK;;;	DW	PLTATMV
;;;KK;;;	DW	HMASKMV
;;;KK;;;	DW	POWERMV
;;;KK;;;	DW	KINOMMV
;;;KK;;;	DW	KAKERMV
;;;KK;;;	DW	HARTBMV
;;;KK;;;	DW	ALOW1MV ;MSTESTMV
;;;KK;;;	DW	BOMB1MV
;;;KK;;;	DW	GAKKIMV
;;;KK;;;	DW	KINOKMV
;;;KK;;;	DW    	MGPOWMV
;;;KK;;;	DW    	KAKINMV
;;;KK;;;	DW    	KAIINMV
;;;KK;;;	DW	GIRL0MV
;;;KK;;;	DW	PAPA0MV
;;;KK;;;	DW	BABA0MV
;;;KK;;;	DW	FUKUROMV
;;;KK;;;	DW	HINTOMV
;;;KK;;;;;DW	00 ;TOBIDMV
;;;KK;;;	DW	EWOODMV
;;;KK;;;	DW	MSPNTMV
;;;KK;;;	DW	IWAGOMV
;;;KK;;;	DW    	SWBLKUMV
;;;KK;;;	DW    	SWBLKDMV
;;;KK;;;	DW    	SWBLKLMV
;;;KK;;;	DW    	SWBLKRMV
;;;KK;;;;- - - - - - - - - - - - - - - - - -
;;;KK;;;	DW	00  ;STESTMV
;;;KK;;;	DW	MSTESFMV
;;;KK;;;	DW	00 ;FRBARMV
;;;KK;;;	DW	NYAMAMV
;;;KK;;;	DW	CHUNLIMV
;;;KK;;;	DW	UFOCHMV
;;;KK;;;	DW	TERSAMV
;;;KK;;;	DW	TEKYUMV
;;;KK;;;	DW	BHOLEMV
;;;KK;;;	DW	BHOL2MV
;;;KK;;;	DW	FISHGMV
;;;KK;;;	DW	SBOMBMV
;;;KK;;;	DW	OBOMBMV
;;;KK;;;	DW	NINJAMV
;;;KK;;;	DW	NINTMMV
;;;KK;;;	DW	HAYABMV
;;;KK;;;	DW	BGKAOMV
;;;KK;;;	DW	BSLIMMV
;;;KK;;;	DW	TBOSSMV
;;;KK;;;	DW	BSNAKMV
;;;KK;;;	DW	GORMAMV
;;;KK;;;	DW	BSKELMV
;;;KK;;;	DW	DDNGOMV
;;;KK;;;	DW	WARPMV
;;;KK;;;	DW	BFIREMV
;;;KK;;;	DW	BBIRDMV
;;;KK;;;	DW	PSCRLMV
;;;KK;;;	DW	BFISHMV
;;;KK;;;	DW	ONOFSMV
;;;KK;;;	DW	SWTRPMV
;;;KK;;;	DW	MVHASMV
;;;KK;;;	DW	HIKUSMV
;;;KK;;;	DW	IKADAMV
;;;KK;;;	DW	TANABEMV
;;;KK;;;	DW	NIWATMV
;;;KK;;;	DW	WANWANMV
;;;KK;;;	DW    	BTFLYMV
;;;KK;;;	DW    	FOXDOGMV
;;;KK;;;	DW    	KODOMAMV
;;;KK;;;	DW    	KODOMBMV
;;;KK;;;	DW    	KODOMCMV
;;;KK;;;	DW    	KODOMDMV
;;;KK;;;	DW    	MAMA0MV
;;;KK;;;	DW    	MAMA1MV
;;;KK;;;	DW    	PAPA1MV
;;;KK;;;	DW    	URURIMV
;;;KK;;;	DW      OZWANMV
;;;KK;;;	DW    	MSWANMV
;;;KK;;;	DW    	KARASMV
;;;KK;;;	DW    	TRYCYMV
;;;KK;;;	DW    	BHANAMV
;;;KK;;;	DW    	BHFIRMV
;;;KK;;;	DW    	SHANAMV
;;;KK;;;	DW    	KAMEIMV
;;;KK;;;	DW    	DENWAMV
;;;KK;;;	DW    	OBAQMV
;;;KK;;;	DW    	OBQBARMV
;;;KK;;;	DW    	BEDINMV   
;;;KK;;;	DW    	IZUMIMV   
;;;KK;;;	DW    	HATO0MV   
;;;KK;;;	DW    	FLYITMV   
;;;KK;;;	DW    	RANEMMV   
;;;KK;;;	DW    	NOMOSMV   
;;;KK;;;	DW    	HINO0MV   
;;;KK;;;	DW    	PANELMV   
;;;KK;;;	DW    	PANEL2MV   
;;;KK;;;	DW    	SWBLKMV   
;;;KK;;;	DW    	SWBLK2MV   
;;;KK;;;	DW    	MIZUBMV   
;;;KK;;;	DW    	HEIHOMV   
;;;KK;;;	DW    	SLOTMV   
;;;KK;;;	DW    	KARBYMV   
;;;KK;;;	DW    	OCHANMV   
;;;KK;;;	DW    	HEISMMV   
;;;KK;;;	DW    	HEISBMV   
;;;KK;;;	DW    	RICHDMV   
;;;KK;;;	DW    	KAERUMV   
;;;KK;;;	DW    	SWIMPMV   
;;;KK;;;	DW    	DAISUMV   
;;;KK;;;	DW    	AMENBMV   
;;;KK;;;	DW    	YUKABMV   
;;;KK;;;	DW    	YSLIMMV   
;;;KK;;;	DW    	BALEEMV   
;;;KK;;;	DW    	MOAIMV   
;;;KK;;;	DW    	TBEAMMV   
;;;KK;;;	DW    	KURI0MV   
;;;KK;;;	DW    	PIHATMV   
;;;KK;;;	DW    	LOPEMV   
;;;KK;;;	DW    	PACKNMV   
;;;KK;;;	DW    	LIFTXMV 
;;;KK;;;	DW    	LIFTYMV 
;;;KK;;;	DW    	LIFTDMV 
;;;KK;;;	DW    	LIFTTMV 
;;;KK;;;	DW    	HASIRMV 
;;;KK;;;	DW    	TAMA0MV 
;;;KK;;;	DW    	GESSOMV 
;;;KK;;;	DW    	PUKPKMV 
;;;KK;;;	DW    	PUKPVMV 
;;;KK;;;	DW    	PUKPJMV 
;;;KK;;;	DW    	MONKYMV 
;;;KK;;;	DW    	OCTAJMV 
;;;KK;;;	DW    	YOSSIMV 
;;;KK;;;	DW    	AMUSIMV 
;;;KK;;;	DW    	YUKASMV 
;;;KK;;;	DW    	AMUSTMV 
;;;KK;;;	DW    	HANNYMV 
;;;KK;;;	DW    	PAPA2MV 
;;;KK;;;	DW    	KUMA0MV 
;;;KK;;;	DW    	PAPALMV 
;;;KK;;;	DW    	MAMADMV 
;;;KK;;;	DW    	TURIMV 
;;;KK;;;	DW    	NYOROMV 
;;;KK;;;	DW    	PKURIMV 
;;;KK;;;	DW    	SHIGEMV 
;;;KK;;;	DW    	TUKAIMV 
;;;KK;;;	DW    	ARIMAMV 
;;;KK;;;	DW    	BOXERMV 
;;;KK;;;	DW    	ZONBIMV 
;;;KK;;;	DW    	KHIMIMV 
;;;KK;;;	DW    	GIRL1MV 
;;;KK;;;	DW    	GIRL2MV 
;;;KK;;;	DW    	MAMUUMV 
;;;KK;;;	DW    	TODDMV 
;;;KK;;;	DW    	UNIUNIMV 
;;;KK;;;	DW    	KANIMV 
;;;KK;;;	DW    	MANBOMV 
;;;KK;;;	DW    	USAGIMV 
;;;KK;;;	DW    	ONPUMV 
;;;KK;;;	DW    	AKUMAMV 
;;;KK;;;	DW    	ZORAMV 
;;;KK;;;	DW    	BLANKAMV 
;;;KK;;;	DW    	WANIMV 
;;;KK;;;	DW    	MAMAD2MV 
;;;KK;;;	DW    	GAGEMV 
;;;KK;;;	DW    	USAG2MV
;;;KK;;;	DW    	KUMASMV
;;;KK;;;	DW    	NTORIMV
;;;KK;;;	DW    	GMUSIMV
;;;KK;;;	DW    	OBAKEMV
;;;KK;;;	DW    	NIWAXMV
;;;KK;;;	DW    	YTUBOMV
;;;KK;;;	DW    	DOSNSMV
;;;KK;;;	DW    	DOSNBMV
;;;KK;;;	DW    	TAIATMV
;;;KK;;;	DW    	FIREBMV
;;;KK;;;	DW    	BABUBMV
;;;KK;;;	DW    	KAZAMMV
;;;KK;;;	DW    	BOOKMV 
;;;KK;;;	DW    	SEIRENMV 
;;;KK;;;	DW    	KENBMMV
;;;KK;;;;-
;;;KK;;;	DW	SARUKMV
;;;KK;;;	DW 	MOUSEMV
;;;KK;;;	DW 	HODAIMV
;;;KK;;;	DW 	SANBOMV
;;;KK;;;	DW 	MBOSSMV
;;;KK;;;	DW    	FLYIT2MV   
;;;KK;;;	DW    	BOSSMV 
;;;KK;;;	DW    	SIROSMV 
;;;KK;;;;-
;;;KK;;;	DW    	EDAIMV 
;------------------------------
ENOJSD
;;		Cnt Lng C   L
;;		 x   x   y   y
	DB	$08,$05,$08,$05 ;0 Normal
	DB	$08,$0A,$08,$0A ;1 BLOCK
	DB	$08,$0A,$08,$0A	;2 GHOSB,HAYAB
	DB	$08,$10,$04,$0A	;3 OYAJI
	DB	$08,$02,$08,$02	;4 SLIMS ; Small size
	DB	$08,$13,$08,$13	;5 BFISH body
	DB	$08,$06,$06,$08	;6 Speaking people
 	DB	$08,$07,$06,$0A	;7 Item
 	DB	$08,$06,$10,$30	;8 OBQBAR
 	DB	$08,$07,$04,$0A	;9 MOAI
 	DB	$0C,$07,$FC,$04	;A BSKEL
 	DB	$10,$10,$0C,$12	;B LIFT?
 	DB	$08,$08,$02,$08	;C LIFT短い！
 	DB	$10,$0C,$08,$10	;D クマコック
 	DB	$08,$07,$0C,$08	;E FLYIT
 	DB	$08,$08,$02,$08	;F YTUBO
; - - - - - - - - - - - - -
ENSZST	; Size set !
	LD	HL,ENMOD1
	ADD	HL,BC
	LD	A,(HL)
	AND	%01111100  ;$1F
	LD	E,A
	LD	D,B
	LD	HL,ENOJSD
	ADD	HL,DE
		ld	e,l
		ld	d,h
;;;KK;;;	PUSH	HL
;;;KK;;;	POP	DE
;
	PUSH	BC
	SLA	C
	SLA	C
	LD	HL,ENOJSZ
	ADD	HL,BC
;- - Obj cross size set ! - -
	LD	C,$4
ENMS02
	LD	A,(DE)
	INC	DE
	LD	(HLI),A
	DEC	C
	JR	NZ,ENMS02
;
	POP	BC
	RET
;-------------------------------------------
;-------------------------------------------
ENPTST
	LD	HL,ENCHPT
	ADD	HL,BC
	LD	(HL),A
	RET
;-------------------------------------------
STATINC
	LD	HL,ENSTAT
	ADD	HL,BC
	INC	(HL)
	RET
;============================
PLDMST0	;プレイヤーダメージセット
	LD	A,$02
	LD	($2100),A
;
	CALL	PLDMST00
	JP	PBRETN
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%						  %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ENBGCKL
	LD	A,$03
	LD	($2100),A
	CALL	ENBGCK
	JP	PBRETN
;RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%						  %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ENBGCK2L
	LD	A,$03
	LD	($2100),A
	CALL	ENBGCK2
	JP	PBRETN
;;	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%						  %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
CREPKEL
	LD	A,$03
	LD	($2100),A
	CALL	CREPKE
	JP	PBRETN
;;	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%						  %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
CRENPLL
	LD	A,$03
	LD	($2100),A
	CALL	CRENPL
	JP	PBRETN
;;	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%						  %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
CRENPL2L
	LD	A,$03
	LD	($2100),A
	CALL	CRENPL2
	JP	PBRETN
;;	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%						  %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
CRENPSL
	LD	A,$03
	LD	($2100),A
	CALL	CRENPS
	JP	PBRETN
;;	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%						  %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
CRKNKNL
	LD	A,$03
	LD	($2100),A
	CALL	CRKNKN
	JP	PBRETN
;;	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%						  %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
CRKNENL
	LD	A,$03
	LD	($2100),A
	CALL	CRKNEN
	JP	PBRETN
;;	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%						  %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
CRENENL
	LD	A,$03
	LD	($2100),A
	CALL	CRENEN
	JP	PBRETN
;;	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%						  %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ENIDSHL
	PUSH	AF
	LD	A,$03
	LD	($2100),A
	POP	AF
	CALL	ENIDSH
	RR	L
	CALL	PBRETN
	RL	L
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%						  %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ENIDSH2L
	PUSH	AF
	LD	A,$03
	LD	($2100),A
	POP	AF
	CALL	ENIDSH2
	RR	L
	CALL	PBRETN
	RL	L
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%						  %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
PSERCHL
	LD	HL,$2100
	LD	(HL),$03
	CALL	PSERCH
	JP	PBRETN
;;	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%						  %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
PSERCH2L
	LD	HL,$2100
	LD	(HL),$03
	CALL	PSERCH2
	JP	PBRETN
;;	RET
;- - - - - - - - - - - - - - - - - - - - - - - - -
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%						  %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;E2CSRT
;	RET
EN2CST
	LD	A,(ENCHPT2)
	INC	A
	RET	Z
;
	CALL	O2MCHK
;
	PUSH	DE	; Chr data addr push !
;
	LD	A,(ENOMID)
	LD	E,A
	LD	D,B ;$0
	LD	HL,ENOAM
	ADD	HL,DE
		ld	e,l
		ld	d,h
;;;KK;;;	PUSH	HL
;;;KK;;;	POP	DE
;
	LD	A,(ENDSYP)  ;(HL)
	LD	(DE),A		; Y L
	INC	DE
;
	LD	A,(TILTXD)
	LD	C,A
;
	LD	A,(ENFLCL)
	AND	%00100000
	RRA
	RRA
;
	LD	HL,ENSVXL
	ADD	A,(HL)
	SUB	C
	LD	(DE),A		; X L
	INC	DE
;
;;	LD	HL,ENCHPT
;;	ADD	HL,BC
	LD	A,(ENCHPT2)  ;HL)
	LD	C,A
	LD	B,$0
	SLA	C
	RL	B
	SLA	C
	RL	B
	POP	HL	; Chrs data addr. !
	ADD	HL,BC
	LD	A,(ENCHNO)
	LD	C,A
	LD	A,(HLI)
	ADD	A,C
	LD	(DE),A		; C L
	AND	$0F
	CP	$0F
	JR	NZ,E1C050	; Space ?
	DEC	DE
	LD	A,$F0
	LD	(DE),A		; yes not set
	INC	DE
E1C050
	INC	DE
	LD	A,(HLI)
	PUSH	HL
;
	LD	HL,ENFLCL
	XOR	(HL)
		ld	(de),a
;
		ld	a,(CGBFLG)
		and	a
		jr	z,E1C050_PASS
;
		ld	a,(ENFLCL)
		and	00010000b
		jr	z,E1C050_PASS
;
		ld	a,(de)
		and	11111000b
		or	00000100b
		ld	(de),a
;
E1C050_PASS
		inc	de
;
;;;KK;;;	LD	(DE),A		; A L
;;;KK;;;	INC	DE
;
;- - Right - - -
	LD	A,(ENDSYP)   ;(HL)
	LD	(DE),A		; Y R
	INC	DE
;
	LD	A,(TILTXD)
	LD	C,A
;
	LD	A,(ENFLCL)
	AND	%00100000
	XOR	%00100000
	RRA
	RRA
;
	LD	HL,ENSVXL
	SUB	C
	ADD	A,(HL)   ;$08  ;10
	LD	(DE),A		; X R
	INC	DE
;
	POP	HL
	LD	A,(ENCHNO)
	LD	C,A
	LD	A,(HLI)
	ADD	A,C
	LD	(DE),A		; C R
;
	AND	$0F
	CP	$0F
	JR	NZ,E1C070	; Space ?
	DEC	DE
	LD	A,$F0
	LD	(DE),A		; not set
	INC	DE
E1C070
	INC	DE
	LD	A,(HL)
	LD	HL,ENFLCL
	XOR	(HL)
		ld	(de),a
;
		ld	a,(CGBFLG)
		and	a
		jr	z,E1C070_PASS
;
		ld	a,(ENFLCL)
		and	00010000b
		jr	z,E1C070_PASS
;
		ld	a,(de)
		and	11111000b
		or	00000100b
		ld	(de),a
;
E1C070_PASS
;;;KK;;;;
;;;KK;;;	LD	(DE),A		; A R
;
ECSSUB
	LD	A,(INDEX)
	LD	C,A
	LD	B,$0
;
	LD	A,$15
;;	LD	A,$03
	LD	($2100),A
;
	CALL	NXOMCL
SDSSB
	CALL	SADWST
;
	JP	PBRETN
;;	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%				 %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
EN1CST
	LD	A,(ENCHPT2)
	INC	A
	RET	Z
;
	CALL	O2MCHK
;
	PUSH	DE	; Chr data addr push !
;
	LD	A,(ENOMID)
	LD	L,A
	LD	H,$0
	LD	BC,ENOAM
	ADD	HL,BC
		ld	e,l
		ld	d,h
;;;KK;;;	PUSH	HL
;;;KK;;;	POP	DE
;
	LD	A,(INDEX)
	LD	C,A
	LD	B,$0
;
	LD	A,(YKFLAG)
	AND	A
	LD	A,(ENDSYP)  ;(HL)
	JR	Z,E1C003
;
	SUB	$4
	LD	(ENDSYP),A
E1C003
	LD	(DE),A		; Y
	INC	DE
;
	LD	A,(TILTXD)
	LD	H,A
;
	LD	A,(ENSVXL)
	ADD	A,$04
	SUB	H
	LD	(DE),A		; X
	INC	DE
;
	LD	A,(ENCHPT2)  ;HL)
	LD	C,A
	LD	B,$0
	SLA	C
	RL	B
	POP	HL	; Chrs data addr. !
	ADD	HL,BC
	LD	A,(HLI)
	LD	(DE),A		; C 
	INC	DE
;
		LD	A,(CGBFLG)
		AND	A
		JR	Z,E1C003_500
		LD	A,(GMMODE)
		CP	ENDG		; エンディング？
		JR	Z,E1C003_500	; ＹＥＳ
		LD	A,(ENFLCL)
		AND	A
		JR	Z,E1C003_500
		LD	A,(HL)
		AND	$0F8
		OR	$004		;フラッシングアトリビュートセット
		LD	(DE),A
		JR	E1C003_900
E1C003_500
;
		LD	A,(HLI)
		LD	HL,ENFLCL
		XOR	(HL)
		LD	(DE),A		;アトリビュートセット
E1C003_900
		INC	DE
;
	JR	ECSSUB
;
;=======================
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%				 %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
SADWSTL
	LD	A,$15
;;	LD	A,$03
	LD	($2100),A
	JR	SDSSB
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%				 %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ENOMST2
	PUSH	HL
	LD	HL,OAM
	JR	EOS001
ENOMST
	LD	A,(ENCHPT2)
	INC	A
;;	CP	$FF
	JR	Z,EOS090
;
	PUSH	HL
	LD	A,(ENOMID)
	LD	E,A
	LD	D,$0
	LD	HL,ENOAM
	ADD	HL,DE
EOS001
		ld	e,l
		ld	d,h
;;;KK;;;	PUSH	HL
;;;KK;;;	POP	DE
;
	POP	HL
;
	LD	A,C
	LD	(WORK0),A
	LD	A,(INDEX)
	LD	C,A
	CALL	O2MCHK
	LD	A,(WORK0)
	LD	C,A
ENOM10
	LD	A,(ENDSYP)
	ADD	A,(HL)
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
;
	POP	AF
	CP	$FF
	JR	NZ,EOS900
	DEC	DE
	XOR	A
	LD	(DE),A
	INC	DE
EOS900
	POP	BC
	INC	DE
;
	LD	A,(ENFLCL)
	XOR	(HL)
		ld	(de),a
		inc	hl
;
		ld	a,(CGBFLG)
		and	a
		jr	z,EOS900_900
;
		ld	a,(ENFLCL)
		and	a
		jr	z,EOS900_900
;
		ld	a,(de)
		and	11111000b
		or	00000100b
		ld	(de),a
;
EOS900_900
		inc	de
;
;;;KK;;;	INC	HL
;;;KK;;;	LD	(DE),A
;;;KK;;;	INC	DE
;
	DEC	C
	JR	NZ,ENOM10
;
	LD	A,(INDEX)
	LD	C,A
;
	LD	A,$15
	LD	($2100),A
;
	CALL	NXOMCL
;
	JP	PBRETN
EOS090
	LD	A,(INDEX)
	LD	C,A
;
	RET
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%				 %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
O2MCHK
	PUSH	HL
;
	LD	A,(SCRLFG)
	AND	A
	JR	Z,O2CK10
;
	LD	A,(ENSVXL)
	DEC	A
	CP	$C0
	JR	NC,O2CK08
;
	LD	A,(ENDSYP)
	DEC	A
	CP	$88
;;	CP	$A0
	JR	NC,O2CK08
;
	LD	HL,ENXPSH
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	NZ,O2CK08
;
	LD	HL,ENYPSH
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	JR	Z,O2CK10
O2CK08
	POP	AF	; Display out not c set !
O2CK10
	POP	HL
	RET
;===================================
ENSDCL
	LD	HL,ENXSPD
	ADD	HL,BC
	LD	(HL),B
	LD	HL,ENYSPD
	ADD	HL,BC
	LD	(HL),B
	RET
;===================================
ENPSSV
	LD	HL,ENXPSL	; Enemy old pos save
	ADD	HL,BC
	LD	A,(HL)
	LD	(ENSVXL),A
	LD	HL,ENYPSL
	ADD	HL,BC
	LD	A,(HL)
	LD	(ENSVYL),A
;
	LD	HL,ENZPSL
	ADD	HL,BC
	SUB	(HL)
	LD	(ENDSYP),A
	RET
;------------------------------
NXOMSBL
	LD	HL,$2100
	LD	(HL),$15
;
	CALL	NXOMSB
;
	JP	PBRETN
;;	RET
;------------------------------
HAYAMITL
	LD	HL,$2100
	LD	(HL),$04
;
	CALL	HAYAMIT
;
	JP	PBRETN
;;	RET
;------------------------------
HAYABITL
	LD	HL,$2100
	LD	(HL),$04
;
	CALL	HAYABIT
;
	JP	PBRETN
;;	RET
;------------------------------
BGKAOITL
	LD	HL,$2100
	LD	(HL),$04
;
	CALL	BGKAOIT
;
	JP	PBRETN
;;	RET
;------------------------------
BSLIMITL
	LD	HL,$2100
	LD	(HL),$04
;
	CALL	BSLIMIT
;
	JP	PBRETN
;;	RET
;------------------------------
TBOSSITL
	LD	HL,$2100
;;;KK;;;	LD	(HL),$04
	LD	(HL),:TBOSSIT
;
	CALL	TBOSSIT
;
	JP	PBRETN
;;	RET
;------------------------------
BSNAKITL
	LD	HL,$2100
	LD	(HL),$05
;
	CALL	BSNAKIT
;
	JP	PBRETN
;;	RET
;------------------------------
DDNGOITL
	LD	HL,$2100
	LD	(HL),$05
;
	CALL	DDNGOIT
;
	JP	PBRETN
;;	RET
;------------------------------
BFIREITL
	LD	HL,$2100
	LD	(HL),$05
;
	CALL	BFIREIT
;
	JP	PBRETN
;;	RET
;------------------------------
BBIRDITL
	LD	HL,$2100
	LD	(HL),$05
;
	CALL	BBIRDIT
;
	JP	PBRETN
;------------------------------
BFISHITL
	LD	HL,$2100
	LD	(HL),$05
;
	CALL	BFISHIT
;
	JP	PBRETN
;;	RET
;------------------------------
PLBGCKL
;;	LD	HL,$2100
;;	LD	(HL),$02
;
	LD	A,(PBANK)
	PUSH	AF
;
	LD	A,$02
	CALL	PBSET
;
	CALL	PLBGCK
;
;;	LD	A,$04	;From ENMY2
	POP	AF
	JP	PBSET
;	JP	PBRETN
;;	RET
;------------------------------
YMVSUBL
	LD	HL,$2100
	LD	(HL),$04
;
	CALL	YMVSUB
;
	JP	PBRETN
;;;	RET
;------------------------------
ISIBRKL
	LD	HL,$2100
	LD	(HL),$03
;
	CALL	ISIBRK
;
	JP	PBRETN
;;	RET
;------------------------------
COHTITL
	LD	HL,$2100
	LD	(HL),$02
;
	CALL	COINIT
	CALL	HARTIT
;
	JP	PBRETN
;;	RET
;------------------------------
TAKARSTL
	LD	A,$02
	CALL	PBSET
;
	CALL	TAKARST
;
	LD	A,$03
	JP	PBSET
;------------------------------
ITEMDPL
	LD	HL,$2100
	LD	(HL),$20
;;;KK;;;	LD	(HL),$02
;;;KK;;;;
;;;KK;;;	CALL	ITEMDP
;
		LD	C,$01
		LD	B,$00
		LD	E,$FF
		CALL	ITSEL_SUB
;
	JP	PBRETN
;;;	RET
;------------------------------
ITEMGETS
	LD	HL,$2100
	LD	(HL),$03
;
	CALL	ITEMGET
;
	JP	PBRETN
;;	RET
;------------------------------
GKFLSH
	LD	A,$06
	CALL	PBSET
;
	CALL	GKFLSHL
;
	LD	A,$03
	JP	PBSET
;------------------------------
ENALCL
;;	LD	E,$00
	LD	E,ENNO
	LD	HL,ENMODE
EAL010
	XOR	A
	LD	(HLI),A
;
;	INC	E
;	LD	A,E
;	CP	ENNO
	DEC	E
	JR	NZ,EAL010
	RET
;------------------------------
HNSMST
	LD	HL,ENHNMD
	ADD	HL,BC
	LD	A,(HL)
	AND	A
	RET	Z
;;	JR	Z,HSS090
;
	LD	A,(FRCNT)
	XOR	C
	AND	$03
	RET	NZ
;;	JR	NZ,HSS090
;
	LD	A,(ENSVXL)
	LD	(WORK0),A
	LD	A,(ENDSYP)
	LD	(WORK1),A
;
	LD	A,HNSM
	CALL	EXIDSH
;
	LD	HL,EXTIM0
	ADD	HL,DE
	LD	(HL),$0F
HSS090
	RET
;------------------------------
ENHNBC
	LD	HL,ENHNXS
	ADD	HL,BC
	LD	A,(HL)
	BIT	7,A
	JR	Z,EHBC10
	CPL
	INC	A
EHBC10
	LD	(WORK0),A
;
	LD	HL,ENHNYS
	ADD	HL,BC
	LD	A,(HL)
	BIT	7,A
	JR	Z,EHBC20
	CPL
	INC	A
EHBC20
	LD	E,%00000011
	LD	HL,WORK0
	CP	(HL)
	JR	C,EHBC30
	LD	E,%00001100
EHBC30
	LD	A,E
;
	LD	HL,ENCBFG
	ADD	HL,BC
	AND	(HL)
	JR	Z,EHBC40
;
	LD	HL,ENHNFG
	ADD	HL,BC
	LD	(HL),B
EHBC40
	RET
;====================================
;DJBSSD
;	DB	$19 ;1
;	DB	$19 ;2
;	DB	$19 ;3
;	DB	$19 ;4
;	DB	$19 ;5
;	DB	$19 ;6
;	DB	$19 ;7
;	DB	$19 ;8
;	DB	$19 ;9
;
DJBSMS
	DB	$B0 ;1 HAYAB
	DB	$B4 ;2 TUBO
	DB	$B1 ;3 BSLIM
	DB	$B2 ;4 BFISH
	DB	$B3 ;5 BSNAK
	DB	$B6 ;6 BGKAO
	DB	$BA ;7 BBIRD
	DB	$BC ;8 BFIRE
	DB	$B8 ;9
;
BSSDCK
	LD	HL,WNDFLG
	LD	A,(SCRLFG)
	OR	(HL)
	RET	NZ
;
	LD	A,(BSSDTM)
	AND	A
	JR	Z,BSDCK08
;
	DEC	A
	LD	(BSSDTM),A
	RET
;
BSDCK08
	LD	A,(BSSDFG)
	AND	A
	RET	NZ
;
	INC	A
	LD	(BSSDFG),A
;
	LD	HL,ENMOD3
	ADD	HL,BC
	LD	A,(HL)
	AND	%00000100
	LD	A,$19	;大ボス
	JR	Z,BSDCK02
;
	LD	A,$50	;中ボス
BSDCK02
	LD	(SOUND4),A	;(S)
	LD	(BGMNO2),A
;
	LD	A,(SBHR)
	CP	$04
	RET	NZ
;
	LD	A,(ENMYNO2)
	CP	RANEM
	JR	NZ,BSDCK022
;
	LD	A,$DA
	JR	BSDCK0E
BSDCK022
	CP	TUKAI
	JR	NZ,BSDCK03	;鳥ツカイ！
;
	LD	A,$26
	JR	BSDCK0E
BSDCK03
	LD	HL,ENMOD3
	ADD	HL,BC
	LD	A,(HL)
	AND	%00000100
		ret	NZ		;	NO --> RETURN
;;;KK;;;	JR	NZ,BSDCK10	;大ボス?
;				;yes !
		LD	A,(DNJNNO)
		CP	NEWDJ		;新ダンジョン？
		ret	Z		;	NO --> BSDCK03_PASS
;;;;;;;;		JR	NZ,BSDCK03_PASS	;	NO --> BSDCK03_PASS
;;;;;;;;		JR	BSDCK10
BSDCK03_PASS
;
	CP	$05	;顔ボスメッセージは後で！
		ret	Z
;;;;;;;;	JR	Z,BSDCK10
	LD	E,A
	LD	D,B
	LD	HL,DJBSMS
	ADD	HL,DE
	LD	A,(HL)
BSDCK0E
	jp	MSGCHK	;戦闘メッセージ！
;;;KK;;;	CALL	MSGCHK	;戦闘メッセージ！
;;;KK;;;BSDCK10
;;;KK;;;	RET
;----------------------------------------------
ENONBT
	DB	%00000001
	DB	%00000010
	DB	%00000100
	DB	%00001000
	DB	%00010000
	DB	%00100000
	DB	%01000000
	DB	%10000000
;
ENFEND
EFE00E
	LD	A,$03
	LD	(EFLFLG),A	; 全部穴落ちフラグ放棄！
	LD	($2100),A
	CALL	ENITMS
	CALL	PBRETN
;
ENBITON
	LD	HL,ENJYUN
	ADD	HL,BC
	LD	A,(HL)
	CP	$FF
	JR	Z,EFE090	; Data set enemy ?
;				; yes ! fail jyunban count set !(for nazo)
	PUSH	AF
;
	LD	A,(ENFLPT)
	LD	E,A
	LD	D,B
	INC	A
	LD	(ENFLPT),A
;
	LD	A,(HL)
	LD	HL,ENFLBF
	ADD	HL,DE
	LD	(HL),A
;- - - -Data save - - -
	POP	AF
ENDTON
	CP	$08
	JR	NC,EFE090	; Save ok ?
;				; yes !
	LD	E,A
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
EFE090
;	LD	E,30
;	LD	A,(HARTMX)
;	CP	07
;	JR	C,EFE091
;	LD	E,50
;	CP	11
;	JR	C,EFE091
;	LD	E,80
;EFE091
;	LD	HL,ENFLCT	; All fail counter for level up !
;	INC	(HL)
;	LD	A,(HL)
;;;	AND	$1F
;	CP	E
;	JR	C,EFE098
;;
;	LD	(HL),B
;;
;	LD	A,$08
;	CALL	MSGCHK
;;
;	LD	A,$01
;	LD	(POWRFG),A
;;
;	XOR	A
;	LD	(POWRCT),A
EFE098
ENCLER
;;	XOR	A
	LD	HL,ENMODE
	ADD	HL,BC
	LD	(HL),B
	RET
;=====================================================
;  Bired boss character chenge
;=====================================================
BDCHT1
	LD	A,$05
	LD	($2100),A
;
	LD	HL,BDCHD10	; 常ちゆうキャラクタ データ
	LD	DE,CHRRAM+$460	; キャラクタ ＲＡＭ ($8000 - $97FF)
	LD	BC,$010		; 個数
	CALL	DATA_MOV	; キャラクタ 転送
;
	LD	HL,BDCHD11	; 常ちゆうキャラクタ データ
	JR	BDCHSB
; - - - - - - - - - - - - - -
BDCHT2
	LD	A,$05
	LD	($2100),A
;
	LD	HL,BDCHD20	; 常ちゆうキャラクタ データ
	LD	DE,CHRRAM+$460	; キャラクタ ＲＡＭ ($8000 - $97FF)
	LD	BC,$010		; 個数
	CALL	DATA_MOV	; キャラクタ 転送
;
	LD	HL,BDCHD21	; 常ちゆうキャラクタ データ
BDCHSB
	LD	DE,CHRRAM+$480	; キャラクタ ＲＡＭ ($8000 - $97FF)
	LD	BC,$010		; 個数
	CALL	DATA_MOV	; キャラクタ 転送
	XOR	A
;;	LD	(TOURFG),A
	LD	(CHTRF2),A
;
	LD	A,$0C
	LD	($2100),A
	JP	PLCSET
;=========================
;
;+------------------------------------------------------+
;|	アイテムセレクト用オブジェキャラクタセット	|
;+------------------------------------------------------+
ITSEL_CHR_SET
		LD	B,$34
		LD	A,(CGBFLG)
		AND	A
		JR	Z,ITSEL_CHR_PASS
		INC	B
ITSEL_CHR_PASS
		LD	A,B
		LD	($2100),A
		LD	HL,CHRDAT
		LD	DE,CHRRAM+$400	;キャラクタ ＲＡＭ ($8400 - $87FF)
		LD	BC,$400		;個数
		CALL	DATA_MOV	;キャラクタ 転送
;
		LD	A,$20
		LD	($2100),A
		RET
;
;-----------------------------------------------------------------------
;
	END
