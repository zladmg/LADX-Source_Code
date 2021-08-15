
		onbankgroup

;****************************************************************
;*								*
;*	タイトル    ：	ＣＧＢゼルダ				*
;*	ファイル名  ：	ZBDATR.DMG				*
;*	処理内容    ：	ユニットデータのアトリビュート		*
;*	作成日付    ：  １９９８／０６／２９			*
;*								*
;****************************************************************
;
	NLIST
;
;================================================================
	PUBALL
;
	LIB	ZRAM	; RAM ＥＱＵＡＴＥ ファイル
	LIB	ZBN	; BG unit no file !
;
	KANJI
	ISDMG
;
;========================================================
;	地上用ＭＡＰデータ
;========================================================
BANK26		GROUP	$26		; ００ ～ ＣＢ
		ORG	$4000
		binset	$0,$3fc0
		libbin	MAP/zel_map1.mdt

BANK27		GROUP	$27		; ＣＣ ～ ＦＦ
		ORG	$4000		; たまご
		binset	$0,$1220	; Ｌ７ 大鷲の塔
		libbin	MAP/zel_map2.mdt; Ｌ４ 入り口の上
					; Ｌ４ 入り口
					; 城門
					; Ｌ６ 神殿 入り口

;========================================================
;	アトリビュートデータ バンク
;========================================================
Bank_22		EQU	$22	; 地上（１）
Bank_23		EQU	$23	; 基本ダンジョン
Bank_24		EQU	$24	; 家と洞窟
Bank_25		EQU	$25	; 地上（２）
Bank_27		EQU	$27	; 地上（３）

;========================================================
;	地上アトリビュート１（ＢＡＮＫ２２）
;========================================================
BANK22		GROUP	Bank_22
cz_a_0pn_bank	EQU	Bank_22
cz_a_0pn	EQU	$4000
		ORG	$4000
		binset	$0,$400
		libbin	atr2/cz_a-0pn.pdt
;
cz_a_2pn_bank	EQU	Bank_22
cz_a_2pn	EQU	$4400
;;;11/17		ORG	$4400
		binset	$0,$400
		libbin	atr2/cz_a-2pn.pdt
;
cz_b_1pn_bank	EQU	Bank_22
cz_b_1pn	EQU	$4800
;;;11/17		ORG	$4800
		binset	$0,$400
		libbin	atr2/cz_b-1pn.pdt
;
cz_c_2pn_bank	EQU	Bank_22
cz_c_2pn	EQU	$4C00
;;;11/17		ORG	$4C00
		binset	$0,$400
		libbin	atr2/cz_c-2pn.pdt
;
cz_e_0pn_bank	EQU	Bank_22
cz_e_0pn	EQU	$5000
;;;11/17		ORG	$5000
		binset	$0,$400
		libbin	atr2/cz_e-0pn.pdt
;
cz_c_4pn_bank	EQU	Bank_22
cz_c_4pn	EQU	$5400
;;;11/17		ORG	$5400
		binset	$0,$400
		libbin	atr2/cz_c-4pn.pdt
;
cz_a_4pn_bank	EQU	Bank_22
cz_a_4pn	EQU	$5800
;;;11/17		ORG	$5800
		binset	$0,$400
		libbin	atr2/cz_a-4pn.pdt
;
cz_c_dpn_bank	EQU	Bank_22
cz_c_dpn	EQU	$5c00
;;;11/17		ORG	$5c00
		binset	$0,$400
		libbin	atr2/cz_c-dpn.pdt
;
cz_a_8pn_bank	EQU	Bank_22
cz_a_8pn	EQU	$6000
;;;11/17		ORG	$6000
		binset	$0,$400
		libbin	atr2/cz_a-8pn.pdt
;
cz_e_8pn_bank	EQU	Bank_22
cz_e_8pn	EQU	$6400
;;;11/17		ORG	$6400
		binset	$0,$400
		libbin	atr2/cz_e-8pn.pdt
;
cz_c_cpn_bank	EQU	Bank_22
cz_c_cpn	EQU	$6800
;;;11/17		ORG	$6800
		binset	$0,$400
		libbin	atr2/cz_c-cpn.pdt
;
cz_c_epn_bank	EQU	Bank_22
cz_c_epn	EQU	$6c00
;;;11/17		ORG	$6c00
		binset	$0,$400
		libbin	atr2/cz_c-epn.pdt
;
cz_d_dpn_bank	EQU	Bank_22
cz_d_dpn	EQU	$7000
;;;11/17		ORG	$7000
		binset	$0,$400
		libbin	atr2/cz_d-dpn.pdt
;
cz_2_2pn_bank	EQU	Bank_22
cz_2_2pn	EQU	$7400
;;;11/17		ORG	$7400
		binset	$0,$400
		libbin	atr2/cz_2-2pn.pdt
;
cz_3_0pn_bank	EQU	Bank_22
cz_3_0pn	EQU	$7800
;;;11/17		ORG	$7800
		binset	$0,$400
		libbin	atr2/cz_3-0pn.pdt
;
cz_3_7pn_bank	EQU	Bank_22
cz_3_7pn	EQU	$7c00
;;;11/17		ORG	$7c00
		binset	$0,$400
		libbin	atr2/cz_3-7pn.pdt
;
;========================================================
;	地上アトリビュート２（ＢＡＮＫ２５）
;========================================================
BANK25		GROUP	Bank_25
cz_4_0pn_bank	EQU	Bank_25
cz_4_0pn	EQU	$4000
		ORG	$4000
		binset	$0,$400
		libbin	atr2/cz_4-0pn.pdt
;
cz_8_0pn_bank	EQU	Bank_25
cz_8_0pn	EQU	$4400
;;;11/17		ORG	$4400
		binset	$0,$400
		libbin	atr2/cz_8-0pn.pdt
;
cz_8_2pn_bank	EQU	Bank_25
cz_8_2pn	EQU	$4800
;;;11/17		ORG	$4800
		binset	$0,$400
		libbin	atr2/cz_8-2pn.pdt
;
cz_8_3pn_bank	EQU	Bank_25
cz_8_3pn	EQU	$4C00
;;;11/17		ORG	$4C00
		binset	$0,$400
		libbin	atr2/cz_8-3pn.pdt
;
cz_4_8pn_bank	EQU	Bank_25
cz_4_8pn	EQU	$5000
;;;11/17		ORG	$5000
		binset	$0,$400
		libbin	atr2/cz_4-8pn.pdt
;
cz_6_8pn_bank	EQU	Bank_25
cz_6_8pn	EQU	$5400
;;;11/17		ORG	$5400
		binset	$0,$400
		libbin	atr2/cz_6-8pn.pdt
;
cz_6_apn_bank	EQU	Bank_25
cz_6_apn	EQU	$5800
;;;11/17		ORG	$5800
		binset	$0,$400
		libbin	atr2/cz_6-apn.pdt
;
cz_8_6pn_bank	EQU	Bank_25
cz_8_6pn	EQU	$5C00
;;;11/17		ORG	$5C00
		binset	$0,$400
		libbin	atr2/cz_8-6pn.pdt
;
cz_8_7pn_bank	EQU	Bank_25
cz_8_7pn	EQU	$6000
;;;11/17		ORG	$6000
		binset	$0,$400
		libbin	atr2/cz_8-7pn.pdt
;
cz_8_apn_bank	EQU	Bank_25
cz_8_apn	EQU	$6400
;;;11/17		ORG	$6400
		binset	$0,$400
		libbin	atr2/cz_8-apn.pdt
;
cz_4_4pn_bank	EQU	Bank_25
cz_4_4pn	EQU	$6800
;;;11/17		ORG	$6800
		binset	$0,$400
		libbin	atr2/cz_4-4pn.pdt
;
cz_4_6pn_bank	EQU	Bank_25
cz_4_6pn	EQU	$6c00
;;;11/17		ORG	$6c00
		binset	$0,$400
		libbin	atr2/cz_4-6pn.pdt
;
cz_7_5pn_bank	EQU	Bank_25
cz_7_5pn	EQU	$7000
;;;11/17		ORG	$7000
		binset	$0,$400
		libbin	atr2/cz_7-5pn.pdt
;
pnl_00_bank	EQU	Bank_25
pnl_00		EQU	$7400
;;;11/17		ORG	$7400
		binset	$0,$400
		libbin	atr2/00pnl.pdt
;
pnl_11_bank	EQU	Bank_25
pnl_11		EQU	$7800
;;;11/17		ORG	$7800
		binset	$0,$400
		libbin	atr2/11pnl.pdt
;
cz_8_cpn_bank	EQU	Bank_25
cz_8_cpn	EQU	$7c00
;;;11/17		ORG	$7c00
		binset	$0,$400
		libbin	atr2/cz_8-cpn.pdt
;
;========================================================
;	地上アトリビュート３（ＢＡＮＫ２７）
;========================================================
BANK27		GROUP	Bank_27
cz_8_epn_bank	EQU	Bank_27
;cz_8_epn	EQU	$5220
		ORG	$5220
		binset	$0,$400
cz_8_epn		libbin	atr2/cz_8-epn.pdt
;
pnl_06_bank	EQU	Bank_27
;pnl_06		EQU	$5620
;;;11/17		ORG	$5620
		binset	$0,$400
pnl_06		libbin	atr2/06pnl.pdt
;
pnl_08_bank	EQU	Bank_27
;pnl_08		EQU	$5a20
;;;11/17		ORG	$5a20
		binset	$0,$400
pnl_08		libbin	atr2/08pnl.pdt
;
pnl_0e_bank	EQU	Bank_27
;pnl_0e		EQU	$5e40
;;;11/17		ORG	$5e40
		binset	$0,$400
pnl_0e		libbin	atr2/0epnl.pdt
;
pnl_1a_bank	EQU	Bank_27
;pnl_1a		EQU	$6240
;;;11/17		ORG	$6240
		binset	$0,$400
pnl_1a		libbin	atr2/1apnl.pdt
;
cz_2_8pn_bank	EQU	Bank_27
;cz_2_8pn	EQU	$6640
;;;11/17		ORG	$6640
		binset	$0,$400
cz_2_8pn		libbin	atr2/cz_2-8pn.pdt
;
cz_2_fpn_bank	EQU	Bank_27
;cz_2_fpn	EQU	$6a40
;;;11/17		ORG	$6a40
		binset	$0,$400
cz_2_fpn		libbin	atr2/cz_2-fpn.pdt
;
cz_4_cpn_bank	EQU	Bank_27
;cz_4_cpn	EQU	$6e40
;;;11/17		ORG	$6e40
		binset	$0,$400
cz_4_cpn		libbin	atr2/cz_4-cpn.pdt
;
;========================================================
;	ダンジョンアトリビュート（ＢＡＮＫ２３）
;========================================================
BANK23		GROUP	Bank_23
Dungeon_Atr	EQU	$4000
Dungeon_1_Atr	EQU	$4000
		ORG	$4000
		binset	$0,$400
		libbin	atr/lv_1pnl.pdt
;
Dungeon_2_Atr	EQU	$4400
;;;11/17		ORG	$4400
		binset	$0,$400
		libbin	atr/l2pnl.pdt
;
Dungeon_4_Atr	EQU	$4800
;;;11/17		ORG	$4800
		binset	$0,$400
		libbin	atr/l4pnl.pdt
;
Dungeon_6_Atr	EQU	$4C00
;;;11/17		ORG	$4C00
		binset	$0,$400
		libbin	atr/l6pnl.pdt
;
Dungeon_8_Atr	EQU	$5000
;;;11/17		ORG	$5000
		binset	$0,$400
		libbin	atr/l8pnl.pdt
;
Dungeon_3_Atr	EQU	$5400
;;;11/17		ORG	$5400
		binset	$0,$400
		libbin	atr/lv_3pnl.pdt
;
Dungeon_5_Atr	EQU	$5800
;;;11/17		ORG	$5800
		binset	$0,$400
		libbin	atr/lv_5pnl.pdt
;
Dungeon_7_Atr	EQU	$5c00
;;;11/17		ORG	$5c00
		binset	$0,$400
		libbin	atr/lv_7pnl.pdt
;
New_Dungeon_Atr	EQU	$6000
;;;11/17		ORG	$6000
		binset	$0,$400
		libbin	atr/fukupnl.pdt
;
Tamago_Atr	EQU	$6400
;;;11/17		ORG	$6400
		binset	$0,$400
		libbin	atr/tamapnl.pdt
;
;-------------------------------------------------------
;	注 ： 23:6800 から 23:760F は ZCHR で使用
;-------------------------------------------------------
;-------------------------------------------------------
;	注 ： 23:7610 からは ZATR で使用
;-------------------------------------------------------
;
;========================================================
;	家と洞窟アトリビュート（ＢＡＮＫ２４）
;========================================================
BANK24		GROUP	Bank_24
House_Atr	EQU	$4000
		ORG	$4000
		binset	$0,$400
		libbin	atr/ietype_1.pdt
;
Doukutsu_Atr	EQU	$4400
;;;11/17		ORG	$4400
		binset	$0,$400
		libbin	atr/idogata1.pdt
;
Turi_Atr	EQU	$4800
;;;11/17		ORG	$4800
		binset	$0,$400
		libbin	atr/turitype.pdt
;
Shiro_Atr	EQU	$4c00
;;;11/17		ORG	$4c00
		binset	$0,$400
		libbin	atr/shiropnl.pdt
;
Onemu_Atr	EQU	$5000
;;;11/17		ORG	$5000
		binset	$0,$400
		libbin	atr/onemupnl.pdt
;
Ajito_Atr	EQU	$5400
;;;11/17		ORG	$5400
		binset	$0,$400
		libbin	atr/ajitopnl.pdt
;
Camera_Atr	EQU	$5800
;;;11/17		ORG	$5800
		binset	$0,$400
		libbin	atr/camera.pdt
;
;-------------------------------------------------------
;	注 ： 24:5c00 からは ZATR で使用
;-------------------------------------------------------
;
;===============================================================
BANK1A	GROUP	$1A
	LIST
;;;;;	ORG	$4000
;
;========================================================
;
;+------------------------------------------------------+
;|	ＢＧアトリビュートデータアドレステーブル	|
;+------------------------------------------------------+
AtrAddress_Tbl			;＜地上＞
	DW	pnl_00		;000
	DW	pnl_00		;001
	DW	pnl_00		;002
	DW	pnl_00		;003
	DW	pnl_00		;004
	DW	pnl_00		;005
	DW	pnl_06		;006
	DW	pnl_06		;007
	DW	pnl_08		;008
	DW	pnl_08		;009
	DW	pnl_08		;00A
	DW	pnl_08		;00B
	DW	pnl_1a		;00C
	DW	pnl_08		;00D
	DW	pnl_0e		;00E
	DW	pnl_0e		;00F
;
	DW	pnl_00		;010
	DW	pnl_11		;011
	DW	pnl_00		;012
	DW	pnl_00		;013
	DW	pnl_00		;014
	DW	pnl_00		;015
	DW	pnl_06		;016
	DW	pnl_06		;017
	DW	pnl_08		;018
	DW	pnl_08		;019
	DW	pnl_1a		;01A
	DW	pnl_1a		;01B
	DW	pnl_1a		;01C
	DW	pnl_08		;01D
	DW	pnl_08		;01E
	DW	pnl_08		;01F
;
	DW	cz_8_3pn	;020
	DW	cz_8_3pn	;021
	DW	cz_2_2pn	;022
	DW	cz_2_2pn	;023
	DW	cz_2_2pn	;024
	DW	cz_2_2pn	;025
	DW	cz_3_7pn	;026
	DW	cz_3_7pn	;027
	DW	cz_2_8pn	;028
	DW	cz_2_8pn	;029
	DW	cz_2_8pn	;02A
	DW	cz_2_8pn	;02B
	DW	cz_2_8pn	;02C
	DW	cz_2_8pn	;02D
	DW	cz_2_fpn	;02E
	DW	cz_2_fpn	;02F
;
	DW	cz_3_0pn	;030
	DW	cz_3_0pn	;031
	DW	cz_2_2pn	;032
	DW	cz_2_2pn	;033
	DW	cz_2_2pn	;034
	DW	cz_2_2pn	;035
	DW	cz_3_7pn	;036
	DW	cz_3_7pn	;037
	DW	cz_2_8pn	;038
	DW	cz_2_8pn	;039
	DW	cz_2_8pn	;03A
	DW	cz_2_8pn	;03B
	DW	cz_2_8pn	;03C
	DW	cz_2_8pn	;03D
	DW	cz_2_fpn	;03E
	DW	cz_2_fpn	;03F
;
	DW	cz_4_0pn	;040
	DW	cz_4_0pn	;041
	DW	cz_4_0pn	;042
	DW	cz_4_0pn	;043
	DW	cz_4_4pn	;044
	DW	cz_4_4pn	;045
	DW	cz_4_6pn	;046
	DW	cz_4_6pn	;047
	DW	cz_4_8pn	;048
	DW	cz_4_8pn	;049
	DW	cz_4_8pn	;04A
	DW	cz_4_8pn	;04B
	DW	cz_4_cpn	;04C
	DW	cz_4_cpn	;04D
	DW	cz_4_cpn	;04E
	DW	cz_4_cpn	;04F
;
	DW	cz_4_0pn	;050
	DW	cz_4_0pn	;051
	DW	cz_4_0pn	;052
	DW	cz_4_0pn	;053
	DW	cz_4_4pn	;054
	DW	cz_4_4pn	;055
	DW	cz_4_6pn	;056
	DW	cz_4_6pn	;057
	DW	cz_4_8pn	;058
	DW	cz_4_8pn	;059
	DW	cz_4_8pn	;05A
	DW	cz_4_8pn	;05B
	DW	cz_4_cpn	;05C
	DW	cz_4_cpn	;05D
	DW	cz_4_cpn	;05E
	DW	cz_4_cpn	;05F
;
	DW	cz_4_0pn	;060
	DW	cz_4_0pn	;061
	DW	cz_4_0pn	;062
	DW	cz_4_0pn	;063
	DW	cz_4_4pn	;064
	DW	cz_4_4pn	;065
	DW	cz_4_6pn	;066
	DW	cz_4_6pn	;067
	DW	cz_6_8pn	;068
	DW	cz_6_8pn	;069
	DW	cz_6_apn	;06A
	DW	cz_6_apn	;06B
	DW	cz_4_cpn	;06C
	DW	cz_4_cpn	;06D
	DW	cz_4_cpn	;06E
	DW	cz_4_cpn	;06F
;
	DW	cz_4_0pn	;070
	DW	cz_4_0pn	;071
	DW	cz_4_0pn	;072
	DW	cz_4_0pn	;073
	DW	cz_4_4pn	;074
	DW	cz_7_5pn	;075
	DW	cz_4_6pn	;076
	DW	cz_4_6pn	;077
	DW	cz_6_8pn	;078
	DW	cz_6_8pn	;079
	DW	cz_6_apn	;07A
	DW	cz_6_apn	;07B
	DW	cz_4_cpn	;07C
	DW	cz_4_cpn	;07D
	DW	cz_4_cpn	;07E
	DW	cz_4_cpn	;07F
;
	DW	cz_8_0pn	;080
	DW	cz_8_0pn	;081
	DW	cz_8_2pn	;082
	DW	cz_8_3pn	;083
	DW	cz_8_3pn	;084
	DW	cz_8_3pn	;085
	DW	cz_8_6pn	;086
	DW	cz_8_7pn	;087
	DW	cz_e_8pn	;088
	DW	cz_e_8pn	;089
	DW	cz_8_apn	;08A
	DW	cz_8_apn	;08B
	DW	cz_8_cpn	;08C
	DW	cz_8_cpn	;08D
	DW	cz_8_epn	;08E
	DW	cz_8_epn	;08F
;
	DW	cz_8_0pn	;090
	DW	cz_8_0pn	;091
	DW	cz_8_2pn	;092
	DW	cz_8_3pn	;093
	DW	cz_8_3pn	;094
	DW	cz_8_3pn	;095
	DW	cz_8_6pn	;096
	DW	cz_8_6pn	;097
	DW	cz_e_8pn	;098
	DW	cz_e_8pn	;099
	DW	cz_8_apn	;09A
	DW	cz_8_apn	;09B
	DW	cz_8_cpn	;09C
	DW	cz_8_cpn	;09D
	DW	cz_8_epn	;09E
	DW	cz_8_epn	;09F
;
	DW	cz_a_0pn	;0A0
	DW	cz_a_0pn	;0A1
	DW	cz_a_2pn	;0A2
	DW	cz_a_2pn	;0A3
	DW	cz_a_4pn	;0A4
	DW	cz_a_4pn	;0A5
	DW	cz_a_4pn	;0A6
	DW	cz_a_4pn	;0A7
	DW	cz_a_8pn	;0A8
	DW	cz_a_8pn	;0A9
	DW	cz_a_8pn	;0AA
	DW	cz_a_8pn	;0AB
	DW	cz_8_cpn	;0AC
	DW	cz_8_cpn	;0AD
	DW	cz_8_cpn	;0AE
	DW	cz_8_cpn	;0AF
;
	DW	cz_a_0pn	;0B0
	DW	cz_b_1pn	;0B1
	DW	cz_a_2pn	;0B2
	DW	cz_a_2pn	;0B3
	DW	cz_a_4pn	;0B4
	DW	cz_a_4pn	;0B5
	DW	cz_a_4pn	;0B6
	DW	cz_a_4pn	;0B7
	DW	cz_a_8pn	;0B8
	DW	cz_a_8pn	;0B9
	DW	cz_a_8pn	;0BA
	DW	cz_a_8pn	;0BB
	DW	cz_8_cpn	;0BC
	DW	cz_8_cpn	;0BD
	DW	cz_8_cpn	;0BE
	DW	cz_8_cpn	;0BF
;
	DW	cz_a_0pn	;0C0
	DW	cz_a_0pn	;0C1
	DW	cz_c_2pn	;0C2
	DW	cz_c_2pn	;0C3
	DW	cz_c_4pn	;0C4
	DW	cz_c_4pn	;0C5
	DW	cz_c_4pn	;0C6
	DW	cz_c_4pn	;0C7
	DW	cz_a_8pn	;0C8
	DW	cz_a_8pn	;0C9
	DW	cz_e_8pn	;0CA
	DW	cz_e_8pn	;0CB
	DW	cz_c_cpn	;0CC
	DW	cz_c_dpn	;0CD
	DW	cz_c_epn	;0CE
	DW	cz_c_epn	;0CF
;
	DW	cz_a_0pn	;0D0
	DW	cz_a_0pn	;0D1
	DW	cz_c_2pn	;0D2
	DW	cz_c_2pn	;0D3
	DW	cz_c_4pn	;0D4
	DW	cz_c_4pn	;0D5
	DW	cz_c_4pn	;0D6
	DW	cz_c_4pn	;0D7
	DW	cz_e_8pn	;0D8
	DW	cz_e_8pn	;0D9
	DW	cz_e_8pn	;0DA
	DW	cz_e_8pn	;0DB
	DW	cz_c_cpn	;0DC
	DW	cz_d_dpn	;0DD
	DW	cz_c_epn	;0DE
	DW	cz_c_epn	;0DF
;
	DW	cz_e_0pn	;0E0
	DW	cz_e_0pn	;0E1
	DW	cz_e_0pn	;0E2
	DW	cz_e_0pn	;0E3
	DW	cz_e_0pn	;0E4
	DW	cz_e_0pn	;0E5
	DW	cz_e_8pn	;0E6
	DW	cz_e_8pn	;0E7
	DW	cz_e_8pn	;0E8
	DW	cz_e_8pn	;0E9
	DW	cz_e_8pn	;0EA
	DW	cz_e_8pn	;0EB
	DW	cz_c_cpn	;0EC
	DW	cz_c_cpn	;0ED
	DW	cz_c_epn	;0EE
	DW	cz_c_epn	;0EF
;
	DW	cz_e_0pn	;0F0
	DW	cz_e_0pn	;0F1
	DW	cz_e_0pn	;0F2
	DW	cz_e_0pn	;0F3
	DW	cz_e_0pn	;0F4
	DW	cz_e_0pn	;0F5
	DW	cz_e_8pn	;0F6
	DW	cz_e_8pn	;0F7
	DW	cz_e_8pn	;0F8
	DW	cz_e_8pn	;0F9
	DW	cz_e_8pn	;0FA
	DW	cz_e_8pn	;0FB
	DW	cz_c_cpn	;0FC
	DW	cz_c_cpn	;0FD
	DW	cz_c_epn	;0FE
	DW	cz_c_epn	;0FF
;--------------------------------------------------------
;					＜ダンジョン＞
	DW	Dungeon_1_Atr	;100	ＬＥＶＥＬ－１
	DW	Dungeon_2_Atr	;101	ＬＥＶＥＬ－２
	DW	Dungeon_3_Atr	;102	ＬＥＶＥＬ－３
	DW	Dungeon_4_Atr	;103	ＬＥＶＥＬ－４
	DW	Dungeon_5_Atr	;104	ＬＥＶＥＬ－５
	DW	Dungeon_6_Atr	;105	ＬＥＶＥＬ－６
	DW	Dungeon_7_Atr	;106	ＬＥＶＥＬ－７
	DW	Dungeon_8_Atr	;107	ＬＥＶＥＬ－８
	DW	Tamago_Atr	;108	せいなるタマゴ
	DW	Dungeon_Atr	;109
	DW	Dungeon_Atr	;10A
	DW	Dungeon_Atr	;10B
	DW	Dungeon_Atr	;10C
	DW	Dungeon_Atr	;10D
	DW	Dungeon_Atr	;10E
	DW	Dungeon_Atr	;10F
;
	DW	Dungeon_Atr	;110
	DW	Dungeon_Atr	;111
	DW	Dungeon_Atr	;112
	DW	Dungeon_Atr	;113
	DW	Dungeon_Atr	;114
	DW	Dungeon_Atr	;115
	DW	Dungeon_Atr	;116
	DW	Dungeon_Atr	;117
	DW	Dungeon_Atr	;118
	DW	Dungeon_Atr	;119
	DW	Dungeon_Atr	;11A
	DW	Dungeon_Atr	;11B
	DW	Dungeon_Atr	;11C
	DW	Dungeon_Atr	;11D
	DW	Dungeon_Atr	;11E
	DW	Dungeon_Atr	;11F
;
	DW	Dungeon_Atr	;120
	DW	Dungeon_Atr	;121
	DW	Dungeon_Atr	;122
	DW	Dungeon_Atr	;123
	DW	Dungeon_Atr	;124
	DW	Dungeon_Atr	;125
	DW	Dungeon_Atr	;126
	DW	Dungeon_Atr	;127
	DW	Dungeon_Atr	;128
	DW	Dungeon_Atr	;129
	DW	Dungeon_Atr	;12A
	DW	Dungeon_Atr	;12B
	DW	Dungeon_Atr	;12C
	DW	Dungeon_Atr	;12D
	DW	Dungeon_Atr	;12E
	DW	Dungeon_Atr	;12F
;
	DW	Dungeon_Atr	;130
	DW	Dungeon_Atr	;131
	DW	Dungeon_Atr	;132
	DW	Dungeon_Atr	;133
	DW	Dungeon_Atr	;134
	DW	Dungeon_Atr	;135
	DW	Dungeon_Atr	;136
	DW	Dungeon_Atr	;137
	DW	Dungeon_Atr	;138
	DW	Dungeon_Atr	;139
	DW	Dungeon_Atr	;13A
	DW	Dungeon_Atr	;13B
	DW	Dungeon_Atr	;13C
	DW	Dungeon_Atr	;13D
	DW	Dungeon_Atr	;13E
	DW	Dungeon_Atr	;13F
;
	DW	Dungeon_Atr	;140
	DW	Dungeon_Atr	;141
	DW	Dungeon_Atr	;142
	DW	Dungeon_Atr	;143
	DW	Dungeon_Atr	;144
	DW	Dungeon_Atr	;145
	DW	Dungeon_Atr	;146
	DW	Dungeon_Atr	;147
	DW	Dungeon_Atr	;148
	DW	Dungeon_Atr	;149
	DW	Dungeon_Atr	;14A
	DW	Dungeon_Atr	;14B
	DW	Dungeon_Atr	;14C
	DW	Dungeon_Atr	;14D
	DW	Dungeon_Atr	;14E
	DW	Dungeon_Atr	;14F
;
	DW	Dungeon_Atr	;150
	DW	Dungeon_Atr	;151
	DW	Dungeon_Atr	;152
	DW	Dungeon_Atr	;153
	DW	Dungeon_Atr	;154
	DW	Dungeon_Atr	;155
	DW	Dungeon_Atr	;156
	DW	Dungeon_Atr	;157
	DW	Dungeon_Atr	;158
	DW	Dungeon_Atr	;159
	DW	Dungeon_Atr	;15A
	DW	Dungeon_Atr	;15B
	DW	Dungeon_Atr	;15C
	DW	Dungeon_Atr	;15D
	DW	Dungeon_Atr	;15E
	DW	Dungeon_Atr	;15F
;
	DW	Dungeon_Atr	;160
	DW	Dungeon_Atr	;161
	DW	Dungeon_Atr	;162
	DW	Dungeon_Atr	;163
	DW	Dungeon_Atr	;164
	DW	Dungeon_Atr	;165
	DW	Dungeon_Atr	;166
	DW	Dungeon_Atr	;167
	DW	Dungeon_Atr	;168
	DW	Dungeon_Atr	;169
	DW	Dungeon_Atr	;16A
	DW	Dungeon_Atr	;16B
	DW	Dungeon_Atr	;16C
	DW	Dungeon_Atr	;16D
	DW	Dungeon_Atr	;16E
	DW	Dungeon_Atr	;16F
;
	DW	Dungeon_Atr	;170
	DW	Dungeon_Atr	;171
	DW	Dungeon_Atr	;172
	DW	Dungeon_Atr	;173
	DW	Dungeon_Atr	;174
	DW	Dungeon_Atr	;175
	DW	Dungeon_Atr	;176
	DW	Dungeon_Atr	;177
	DW	Dungeon_Atr	;178
	DW	Dungeon_Atr	;179
	DW	Dungeon_Atr	;17A
	DW	Dungeon_Atr	;17B
	DW	Dungeon_Atr	;17C
	DW	Dungeon_Atr	;17D
	DW	Dungeon_Atr	;17E
	DW	Dungeon_Atr	;17F
;
	DW	Dungeon_Atr	;180
	DW	Dungeon_Atr	;181
	DW	Dungeon_Atr	;182
	DW	Dungeon_Atr	;183
	DW	Dungeon_Atr	;184
	DW	Dungeon_Atr	;185
	DW	Dungeon_Atr	;186
	DW	Dungeon_Atr	;187
	DW	Dungeon_Atr	;188
	DW	Dungeon_Atr	;189
	DW	Dungeon_Atr	;18A
	DW	Dungeon_Atr	;18B
	DW	Dungeon_Atr	;18C
	DW	Dungeon_Atr	;18D
	DW	Dungeon_Atr	;18E
	DW	Dungeon_Atr	;18F
;
	DW	Dungeon_Atr	;190
	DW	Dungeon_Atr	;191
	DW	Dungeon_Atr	;192
	DW	Dungeon_Atr	;193
	DW	Dungeon_Atr	;194
	DW	Dungeon_Atr	;195
	DW	Dungeon_Atr	;196
	DW	Dungeon_Atr	;197
	DW	Dungeon_Atr	;198
	DW	Dungeon_Atr	;199
	DW	Dungeon_Atr	;19A
	DW	Dungeon_Atr	;19B
	DW	Dungeon_Atr	;19C
	DW	Dungeon_Atr	;19D
	DW	Dungeon_Atr	;19E
	DW	Dungeon_Atr	;19F
;
	DW	Dungeon_Atr	;1A0
	DW	Dungeon_Atr	;1A1
	DW	Dungeon_Atr	;1A2
	DW	Dungeon_Atr	;1A3
	DW	Dungeon_Atr	;1A4
	DW	Dungeon_Atr	;1A5
	DW	Dungeon_Atr	;1A6
	DW	Dungeon_Atr	;1A7
	DW	Dungeon_Atr	;1A8
	DW	Dungeon_Atr	;1A9
	DW	Dungeon_Atr	;1AA
	DW	Dungeon_Atr	;1AB
	DW	Dungeon_Atr	;1AC
	DW	Dungeon_Atr	;1AD
	DW	Dungeon_Atr	;1AE
	DW	Dungeon_Atr	;1AF
;
	DW	Dungeon_Atr	;1B0
	DW	Dungeon_Atr	;1B1
	DW	Dungeon_Atr	;1B2
	DW	Dungeon_Atr	;1B3
	DW	Dungeon_Atr	;1B4
	DW	Dungeon_Atr	;1B5
	DW	Dungeon_Atr	;1B6
	DW	Dungeon_Atr	;1B7
	DW	Dungeon_Atr	;1B8
	DW	Dungeon_Atr	;1B9
	DW	Dungeon_Atr	;1BA
	DW	Dungeon_Atr	;1BB
	DW	Dungeon_Atr	;1BC
	DW	Dungeon_Atr	;1BD
	DW	Dungeon_Atr	;1BE
	DW	Dungeon_Atr	;1BF
;
	DW	Dungeon_Atr	;1C0
	DW	Dungeon_Atr	;1C1
	DW	Dungeon_Atr	;1C2
	DW	Dungeon_Atr	;1C3
	DW	Dungeon_Atr	;1C4
	DW	Dungeon_Atr	;1C5
	DW	Dungeon_Atr	;1C6
	DW	Dungeon_Atr	;1C7
	DW	Dungeon_Atr	;1C8
	DW	Dungeon_Atr	;1C9
	DW	Dungeon_Atr	;1CA
	DW	Dungeon_Atr	;1CB
	DW	Dungeon_Atr	;1CC
	DW	Dungeon_Atr	;1CD
	DW	Dungeon_Atr	;1CE
	DW	Dungeon_Atr	;1CF
;
	DW	Dungeon_Atr	;1D0
	DW	Dungeon_Atr	;1D1
	DW	Dungeon_Atr	;1D2
	DW	Dungeon_Atr	;1D3
	DW	Dungeon_Atr	;1D4
	DW	Dungeon_Atr	;1D5
	DW	Dungeon_Atr	;1D6
	DW	Dungeon_Atr	;1D7
	DW	Dungeon_Atr	;1D8
	DW	Dungeon_Atr	;1D9
	DW	Dungeon_Atr	;1DA
	DW	Dungeon_Atr	;1DB
	DW	Dungeon_Atr	;1DC
	DW	Dungeon_Atr	;1DD
	DW	Dungeon_Atr	;1DE
	DW	Dungeon_Atr	;1DF
;
	DW	Dungeon_Atr	;1E0
	DW	Dungeon_Atr	;1E1
	DW	Dungeon_Atr	;1E2
	DW	Dungeon_Atr	;1E3
	DW	Dungeon_Atr	;1E4
	DW	Dungeon_Atr	;1E5
	DW	Dungeon_Atr	;1E6
	DW	Dungeon_Atr	;1E7
	DW	Dungeon_Atr	;1E8
	DW	Dungeon_Atr	;1E9
	DW	Dungeon_Atr	;1EA
	DW	Dungeon_Atr	;1EB
	DW	Dungeon_Atr	;1EC
	DW	Dungeon_Atr	;1ED
	DW	Dungeon_Atr	;1EE
	DW	Dungeon_Atr	;1EF
;
	DW	Dungeon_Atr	;1F0
	DW	Dungeon_Atr	;1F1
	DW	Dungeon_Atr	;1F2
	DW	Dungeon_Atr	;1F3
	DW	Dungeon_Atr	;1F4
	DW	Dungeon_Atr	;1F5
	DW	Dungeon_Atr	;1F6
	DW	Dungeon_Atr	;1F7
	DW	Dungeon_Atr	;1F8
	DW	Dungeon_Atr	;1F9
	DW	Dungeon_Atr	;1FA
	DW	Dungeon_Atr	;1FB
	DW	Dungeon_Atr	;1FC
	DW	Dungeon_Atr	;1FD
	DW	Dungeon_Atr	;1FE
	DW	Dungeon_Atr	;1FF
;--------------------------------------------------------
;					＜家、洞窟＞
	DW	House_Atr	;200	ＵＦＯキャッチャー
	DW	House_Atr	;201
	DW	House_Atr	;202
	DW	House_Atr	;203
	DW	House_Atr	;204
	DW	House_Atr	;205
	DW	House_Atr	;206
	DW	House_Atr	;207
	DW	House_Atr	;208
	DW	House_Atr	;209
	DW	Doukutsu_Atr	;20A	03,08,0e,0f,14,15,1c,1d,1e,1f
				;	20,21,22,23,24,25,26,27,28
	DW	House_Atr	;20B
	DW	House_Atr	;20C
	DW	House_Atr	;20D
	DW	House_Atr	;20E	お店,35,36
	DW	Turi_Atr	;20F	釣り堀,マンボ(19),橋の下(45)
				;	なまず入り口
;
	DW	House_Atr	;210	マリン、４つ子、でんわ、うるりら
				;	マダムニャンニャン、ライト(33)
				;	34,37,3C,3D,3E,3F,40,41,42
	DW	Doukutsu_Atr	;211	01,05,06,09,0a,0c,0d,11
	DW	House_Atr	;212	キャンキャン
	DW	Onemu_Atr	;213	眠い洞窟
	DW	Shiro_Atr	;214	カナレット城、城の洞窟
	DW	Ajito_Atr	;215	モリブリンのアジト(07)
	DW	Dungeon_6_Atr	;216	神殿の南
	DW	House_Atr	;217
	DW	House_Atr	;218
	DW	House_Atr	;219
	DW	House_Atr	;21A
	DW	House_Atr	;21B
	DW	House_Atr	;21C
	DW	House_Atr	;21D	図書館
	DW	House_Atr	;21E	32
	DW	Doukutsu_Atr	;21F	00,02,04,0b,10,12,13,16,17,18,1a
;					1b,29
	DW	Camera_Atr	;220
	DW	House_Atr	;221
	DW	House_Atr	;222
	DW	House_Atr	;223
	DW	House_Atr	;224
	DW	House_Atr	;225
	DW	House_Atr	;226
	DW	House_Atr	;227
	DW	House_Atr	;228
	DW	House_Atr	;229
	DW	House_Atr	;22A
	DW	House_Atr	;22B
	DW	House_Atr	;22C
	DW	House_Atr	;22D
	DW	House_Atr	;22E
	DW	House_Atr	;22F
;
	DW	House_Atr	;230
	DW	House_Atr	;231
	DW	House_Atr	;232
	DW	House_Atr	;233
	DW	House_Atr	;234
	DW	House_Atr	;235
	DW	House_Atr	;236
	DW	House_Atr	;237
	DW	House_Atr	;238
	DW	House_Atr	;239
	DW	House_Atr	;23A
	DW	House_Atr	;23B
	DW	House_Atr	;23C
	DW	House_Atr	;23D
	DW	House_Atr	;23E
	DW	House_Atr	;23F
;
	DW	House_Atr	;240
	DW	House_Atr	;241
	DW	House_Atr	;242
	DW	House_Atr	;243
	DW	House_Atr	;244
	DW	House_Atr	;245
	DW	House_Atr	;246
	DW	House_Atr	;247
	DW	House_Atr	;248
	DW	House_Atr	;249
	DW	House_Atr	;24A
	DW	House_Atr	;24B
	DW	House_Atr	;24C
	DW	House_Atr	;24D
	DW	House_Atr	;24E
	DW	House_Atr	;24F
;
	DW	House_Atr	;250
	DW	House_Atr	;251
	DW	House_Atr	;252
	DW	House_Atr	;253
	DW	House_Atr	;254
	DW	House_Atr	;255
	DW	House_Atr	;256
	DW	House_Atr	;257
	DW	House_Atr	;258
	DW	House_Atr	;259
	DW	House_Atr	;25A
	DW	House_Atr	;25B
	DW	House_Atr	;25C
	DW	House_Atr	;25D
	DW	House_Atr	;25E
	DW	House_Atr	;25F
;
	DW	House_Atr	;260
	DW	House_Atr	;261
	DW	House_Atr	;262
	DW	House_Atr	;263
	DW	House_Atr	;264
	DW	House_Atr	;265
	DW	House_Atr	;266
	DW	House_Atr	;267
	DW	House_Atr	;268
	DW	House_Atr	;269
	DW	House_Atr	;26A
	DW	House_Atr	;26B
	DW	House_Atr	;26C
	DW	House_Atr	;26D
	DW	House_Atr	;26E
	DW	House_Atr	;26F
;
	DW	House_Atr	;270
	DW	House_Atr	;271
	DW	House_Atr	;272
	DW	House_Atr	;273
	DW	House_Atr	;274
	DW	House_Atr	;275
	DW	House_Atr	;276
	DW	House_Atr	;277
	DW	House_Atr	;278
	DW	House_Atr	;279
	DW	House_Atr	;27A
	DW	House_Atr	;27B
	DW	House_Atr	;27C
	DW	House_Atr	;27D
	DW	House_Atr	;27E
	DW	House_Atr	;27F
;
	DW	House_Atr	;280
	DW	House_Atr	;281
	DW	House_Atr	;282
	DW	House_Atr	;283
	DW	House_Atr	;284
	DW	House_Atr	;285
	DW	House_Atr	;286
	DW	House_Atr	;287
	DW	House_Atr	;288
	DW	House_Atr	;289
	DW	House_Atr	;28A
	DW	House_Atr	;28B
	DW	House_Atr	;28C
	DW	House_Atr	;28D
	DW	House_Atr	;28E
	DW	House_Atr	;28F
;
	DW	House_Atr	;290
	DW	House_Atr	;291
	DW	House_Atr	;292
	DW	House_Atr	;293
	DW	House_Atr	;294
	DW	House_Atr	;295
	DW	House_Atr	;296
	DW	House_Atr	;297
	DW	House_Atr	;298
	DW	House_Atr	;299
	DW	House_Atr	;29A
	DW	House_Atr	;29B
	DW	House_Atr	;29C
	DW	House_Atr	;29D
	DW	House_Atr	;29E
	DW	House_Atr	;29F
;
	DW	House_Atr	;2A0
	DW	House_Atr	;2A1
	DW	House_Atr	;2A2
	DW	House_Atr	;2A3
	DW	House_Atr	;2A4
	DW	House_Atr	;2A5
	DW	House_Atr	;2A6
	DW	House_Atr	;2A7
	DW	House_Atr	;2A8
	DW	House_Atr	;2A9
	DW	House_Atr	;2AA
	DW	House_Atr	;2AB
	DW	House_Atr	;2AC
	DW	House_Atr	;2AD
	DW	House_Atr	;2AE
	DW	House_Atr	;2AF
;
	DW	House_Atr	;2B0
	DW	House_Atr	;2B1
	DW	House_Atr	;2B2
	DW	House_Atr	;2B3
	DW	House_Atr	;2B4
	DW	House_Atr	;2B5
	DW	House_Atr	;2B6
	DW	House_Atr	;2B7
	DW	House_Atr	;2B8
	DW	House_Atr	;2B9
	DW	House_Atr	;2BA
	DW	House_Atr	;2BB
	DW	House_Atr	;2BC
	DW	House_Atr	;2BD
	DW	House_Atr	;2BE
	DW	House_Atr	;2BF
;
	DW	House_Atr	;2C0
	DW	House_Atr	;2C1
	DW	House_Atr	;2C2
	DW	House_Atr	;2C3
	DW	House_Atr	;2C4
	DW	House_Atr	;2C5
	DW	House_Atr	;2C6
	DW	House_Atr	;2C7
	DW	House_Atr	;2C8
	DW	House_Atr	;2C9
	DW	House_Atr	;2CA
	DW	House_Atr	;2CB
	DW	House_Atr	;2CC
	DW	House_Atr	;2CD
	DW	House_Atr	;2CE
	DW	House_Atr	;2CF
;
	DW	House_Atr	;2D0
	DW	House_Atr	;2D1
	DW	House_Atr	;2D2
	DW	House_Atr	;2D3
	DW	House_Atr	;2D4
	DW	House_Atr	;2D5
	DW	House_Atr	;2D6
	DW	House_Atr	;2D7
	DW	House_Atr	;2D8
	DW	House_Atr	;2D9
	DW	House_Atr	;2DA
	DW	House_Atr	;2DB
	DW	House_Atr	;2DC
	DW	House_Atr	;2DD
	DW	House_Atr	;2DE
	DW	House_Atr	;2DF
;
	DW	House_Atr	;2E0
	DW	House_Atr	;2E1
	DW	House_Atr	;2E2
	DW	House_Atr	;2E3
	DW	House_Atr	;2E4
	DW	House_Atr	;2E5
	DW	House_Atr	;2E6
	DW	House_Atr	;2E7
	DW	House_Atr	;2E8
	DW	House_Atr	;2E9
	DW	House_Atr	;2EA
	DW	House_Atr	;2EB
	DW	House_Atr	;2EC
	DW	House_Atr	;2ED
	DW	House_Atr	;2EE
	DW	House_Atr	;2EF
;
	DW	House_Atr	;2F0
	DW	House_Atr	;2F1
	DW	House_Atr	;2F2
	DW	House_Atr	;2F3
	DW	House_Atr	;2F4
	DW	House_Atr	;2F5
	DW	House_Atr	;2F6
	DW	House_Atr	;2F7
	DW	House_Atr	;2F8
	DW	House_Atr	;2F9
	DW	House_Atr	;2FA
	DW	House_Atr	;2FB
	DW	House_Atr	;2FC
	DW	House_Atr	;2FD
	DW	House_Atr	;2FE
	DW	Camera_Atr	;2FF
;
;
;+--------------------------------------------------------------+
;|	ＢＧアトリビュートＢＡＮＫデータアドレステーブル	|
;|	（ 地上専用　）						|
;+--------------------------------------------------------------+
AtrAddress_Bank
	DB	pnl_00_bank	;000
	DB	pnl_00_bank	;001
	DB	pnl_00_bank	;002
	DB	pnl_00_bank	;003
	DB	pnl_00_bank	;004
	DB	pnl_00_bank	;005
	DB	pnl_06_bank	;006
	DB	pnl_06_bank	;007
	DB	pnl_08_bank	;008
	DB	pnl_08_bank	;009
	DB	pnl_08_bank	;00A
	DB	pnl_08_bank	;00B
	DB	pnl_1a_bank	;00C
	DB	pnl_08_bank	;00D
	DB	pnl_0e_bank	;00E
	DB	pnl_0e_bank	;00F

	DB	pnl_00_bank	;010
	DB	pnl_11_bank	;011
	DB	pnl_00_bank	;012
	DB	pnl_00_bank	;013
	DB	pnl_00_bank	;014
	DB	pnl_00_bank	;015
	DB	pnl_06_bank	;016
	DB	pnl_06_bank	;017
	DB	pnl_08_bank	;018
	DB	pnl_08_bank	;019
	DB	pnl_08_bank	;01A
	DB	pnl_08_bank	;01B
	DB	pnl_1a_bank	;01C
	DB	pnl_08_bank	;01D
	DB	pnl_0e_bank	;01E
	DB	pnl_0e_bank	;01F

	DB	cz_8_3pn_bank	;020
	DB	cz_8_3pn_bank	;021
	DB	cz_2_2pn_bank	;022
	DB	cz_2_2pn_bank	;023
	DB	cz_2_2pn_bank	;024
	DB	cz_2_2pn_bank	;025
	DB	cz_3_7pn_bank	;026
	DB	cz_3_7pn_bank	;027
	DB	cz_2_8pn_bank	;028
	DB	cz_2_8pn_bank	;029
	DB	cz_2_8pn_bank	;02A
	DB	cz_2_8pn_bank	;02B
	DB	cz_2_8pn_bank	;02C
	DB	cz_2_8pn_bank	;02D
	DB	cz_2_fpn_bank	;02E
	DB	cz_2_fpn_bank	;02F

	DB	cz_3_0pn_bank	;030
	DB	cz_3_0pn_bank	;031
	DB	cz_2_2pn_bank	;032
	DB	cz_2_2pn_bank	;033
	DB	cz_2_2pn_bank	;034
	DB	cz_2_2pn_bank	;035
	DB	cz_3_7pn_bank	;036
	DB	cz_3_7pn_bank	;037
	DB	cz_2_8pn_bank	;038
	DB	cz_2_8pn_bank	;039
	DB	cz_2_8pn_bank	;03A
	DB	cz_2_8pn_bank	;03B
	DB	cz_2_8pn_bank	;03C
	DB	cz_2_8pn_bank	;03D
	DB	cz_2_fpn_bank	;03E
	DB	cz_2_fpn_bank	;03F

	DB	cz_4_0pn_bank	;040
	DB	cz_4_0pn_bank	;041
	DB	cz_4_0pn_bank	;042
	DB	cz_4_0pn_bank	;043
	DB	cz_4_4pn_bank	;044
	DB	cz_4_4pn_bank	;045
	DB	cz_4_6pn_bank	;046
	DB	cz_4_6pn_bank	;047
	DB	cz_4_8pn_bank	;048
	DB	cz_4_8pn_bank	;049
	DB	cz_4_8pn_bank	;04A
	DB	cz_4_8pn_bank	;04B
	DB	cz_4_cpn_bank	;04C
	DB	cz_4_cpn_bank	;04D
	DB	cz_4_cpn_bank	;04E
	DB	cz_4_cpn_bank	;04F

	DB	cz_4_0pn_bank	;050
	DB	cz_4_0pn_bank	;051
	DB	cz_4_0pn_bank	;052
	DB	cz_4_0pn_bank	;053
	DB	cz_4_4pn_bank	;054
	DB	cz_4_4pn_bank	;055
	DB	cz_4_6pn_bank	;056
	DB	cz_4_6pn_bank	;057
	DB	cz_4_8pn_bank	;058
	DB	cz_4_8pn_bank	;059
	DB	cz_4_8pn_bank	;05A
	DB	cz_4_8pn_bank	;05B
	DB	cz_4_cpn_bank	;05C
	DB	cz_4_cpn_bank	;05D
	DB	cz_4_cpn_bank	;05E
	DB	cz_4_cpn_bank	;05F

	DB	cz_4_0pn_bank	;060
	DB	cz_4_0pn_bank	;061
	DB	cz_4_0pn_bank	;062
	DB	cz_4_0pn_bank	;063
	DB	cz_4_4pn_bank	;064
	DB	cz_4_4pn_bank	;065
	DB	cz_4_6pn_bank	;066
	DB	cz_4_6pn_bank	;067
	DB	cz_6_8pn_bank	;068
	DB	cz_6_8pn_bank	;069
	DB	cz_6_apn_bank	;06A
	DB	cz_6_apn_bank	;06B
	DB	cz_4_cpn_bank	;06C
	DB	cz_4_cpn_bank	;06D
	DB	cz_4_cpn_bank	;06E
	DB	cz_4_cpn_bank	;06F

	DB	cz_4_0pn_bank	;070
	DB	cz_4_0pn_bank	;071
	DB	cz_4_0pn_bank	;072
	DB	cz_4_0pn_bank	;073
	DB	cz_4_4pn_bank	;074
	DB	cz_7_5pn_bank	;075
	DB	cz_4_6pn_bank	;076
	DB	cz_4_6pn_bank	;077
	DB	cz_6_8pn_bank	;078
	DB	cz_6_8pn_bank	;079
	DB	cz_6_apn_bank	;07A
	DB	cz_6_apn_bank	;07B
	DB	cz_4_cpn_bank	;07C
	DB	cz_4_cpn_bank	;07D
	DB	cz_4_cpn_bank	;07E
	DB	cz_4_cpn_bank	;07F

	DB	cz_8_0pn_bank	;080
	DB	cz_8_0pn_bank	;081
	DB	cz_8_2pn_bank	;082
	DB	cz_8_3pn_bank	;083
	DB	cz_8_3pn_bank	;084
	DB	cz_8_3pn_bank	;085
	DB	cz_8_6pn_bank	;086
	DB	cz_8_7pn_bank	;087
	DB	cz_e_8pn_bank	;088
	DB	cz_e_8pn_bank	;089
	DB	cz_8_apn_bank	;08A
	DB	cz_8_apn_bank	;08B
	DB	cz_8_cpn_bank	;08C
	DB	cz_8_cpn_bank	;08D
	DB	cz_8_epn_bank	;08E
	DB	cz_8_epn_bank	;08F

	DB	cz_8_0pn_bank	;090
	DB	cz_8_0pn_bank	;091
	DB	cz_8_2pn_bank	;092
	DB	cz_8_3pn_bank	;093
	DB	cz_8_3pn_bank	;094
	DB	cz_8_3pn_bank	;095
	DB	cz_8_6pn_bank	;096
	DB	cz_8_6pn_bank	;097
	DB	cz_e_8pn_bank	;098
	DB	cz_e_8pn_bank	;099
	DB	cz_8_apn_bank	;09A
	DB	cz_8_apn_bank	;09B
	DB	cz_8_cpn_bank	;09C
	DB	cz_8_cpn_bank	;09D
	DB	cz_8_epn_bank	;09E
	DB	cz_8_epn_bank	;09F

	DB	cz_a_0pn_bank	;0A0
	DB	cz_a_0pn_bank	;0A1
	DB	cz_a_2pn_bank	;0A2
	DB	cz_a_2pn_bank	;0A3
	DB	cz_a_4pn_bank	;0A4
	DB	cz_a_4pn_bank	;0A5
	DB	cz_a_4pn_bank	;0A6
	DB	cz_a_4pn_bank	;0A7
	DB	cz_a_8pn_bank	;0A8
	DB	cz_a_8pn_bank	;0A9
	DB	cz_a_8pn_bank	;0AA
	DB	cz_a_8pn_bank	;0AB
	DB	cz_8_cpn_bank	;0AC
	DB	cz_8_cpn_bank	;0AD
	DB	cz_8_cpn_bank	;0AE
	DB	cz_8_cpn_bank	;0AF

	DB	cz_a_0pn_bank	;0B0
	DB	cz_b_1pn_bank	;0B1
	DB	cz_a_2pn_bank	;0B2
	DB	cz_a_2pn_bank	;0B3
	DB	cz_a_4pn_bank	;0B4
	DB	cz_a_4pn_bank	;0B5
	DB	cz_a_4pn_bank	;0B6
	DB	cz_a_4pn_bank	;0B7
	DB	cz_a_8pn_bank	;0B8
	DB	cz_a_8pn_bank	;0B9
	DB	cz_a_8pn_bank	;0BA
	DB	cz_a_8pn_bank	;0BB
	DB	cz_8_cpn_bank	;0BC
	DB	cz_8_cpn_bank	;0BD
	DB	cz_8_cpn_bank	;0BE
	DB	cz_8_cpn_bank	;0BF

	DB	cz_a_0pn_bank	;0C0
	DB	cz_a_0pn_bank	;0C1
	DB	cz_c_2pn_bank	;0C2
	DB	cz_c_2pn_bank	;0C3
	DB	cz_c_4pn_bank	;0C4
	DB	cz_c_4pn_bank	;0C5
	DB	cz_c_4pn_bank	;0C6
	DB	cz_c_4pn_bank	;0C7
	DB	cz_a_8pn_bank	;0C8
	DB	cz_a_8pn_bank	;0C9
	DB	cz_e_8pn_bank	;0CA
	DB	cz_e_8pn_bank	;0CB
	DB	cz_c_cpn_bank	;0CC
	DB	cz_c_dpn_bank	;0CD
	DB	cz_c_epn_bank	;0CE
	DB	cz_c_epn_bank	;0CF

	DB	cz_a_0pn_bank	;0D0
	DB	cz_a_0pn_bank	;0D1
	DB	cz_c_2pn_bank	;0D2
	DB	cz_c_2pn_bank	;0D3
	DB	cz_c_4pn_bank	;0D4
	DB	cz_c_4pn_bank	;0D5
	DB	cz_c_4pn_bank	;0D6
	DB	cz_c_4pn_bank	;0D7
	DB	cz_e_8pn_bank	;0D8
	DB	cz_e_8pn_bank	;0D9
	DB	cz_e_8pn_bank	;0DA
	DB	cz_e_8pn_bank	;0DB
	DB	cz_c_cpn_bank	;0DC
	DB	cz_d_dpn_bank	;0DD
	DB	cz_c_epn_bank	;0DE
	DB	cz_c_epn_bank	;0DF

	DB	cz_e_0pn_bank	;0E0
	DB	cz_e_0pn_bank	;0E1
	DB	cz_e_0pn_bank	;0E2
	DB	cz_e_0pn_bank	;0E3
	DB	cz_e_0pn_bank	;0E4
	DB	cz_e_0pn_bank	;0E5
	DB	cz_e_8pn_bank	;0E6
	DB	cz_e_8pn_bank	;0E7
	DB	cz_e_8pn_bank	;0E8
	DB	cz_e_8pn_bank	;0E9
	DB	cz_e_8pn_bank	;0EA
	DB	cz_e_8pn_bank	;0EB
	DB	cz_c_cpn_bank	;0EC
	DB	cz_c_cpn_bank	;0ED
	DB	cz_c_epn_bank	;0EE
	DB	cz_c_epn_bank	;0EF

	DB	cz_e_0pn_bank	;0F0
	DB	cz_e_0pn_bank	;0F1
	DB	cz_e_0pn_bank	;0F2
	DB	cz_e_0pn_bank	;0F3
	DB	cz_e_0pn_bank	;0F4
	DB	cz_e_0pn_bank	;0F5
	DB	cz_e_8pn_bank	;0F6
	DB	cz_e_8pn_bank	;0F7
	DB	cz_e_8pn_bank	;0F8
	DB	cz_e_8pn_bank	;0F9
	DB	cz_e_8pn_bank	;0FA
	DB	cz_e_8pn_bank	;0FB
	DB	cz_c_cpn_bank	;0FC
	DB	cz_c_cpn_bank	;0FD
	DB	cz_c_epn_bank	;0FE
	DB	cz_c_epn_bank	;0FF


;+------------------------------------------------------+
;|	ＢＧアトリビュートデータアドレスセット		|
;|		ＩＮ					|
;|		ＢＣ：ユニットナンバー＊４		|
;|		ＯＵＴ					|
;|		work8：アトリビュートデータアドレスＢ	|
;|		work9：アトリビュートデータアドレスＨ	|
;|		workA：アトリビュートデータアドレスＬ	|
;+------------------------------------------------------+
BgAtrAddress
		PUSH	HL
		PUSH	BC

		LD	A,(DJFLAG)
		AND	A		;地上？
		JP	NZ,BAA_010	;	NO --> BAA_010

		LD	B,$0
		LD	A,(GRNDPT)
		LD	C,A
		LD	HL,AtrAddress_Bank
		ADD	HL,BC
		LD	A,(HL)
		LD	(WORK8),A	; 地上 バンクセット
BAA_010
		LD	B,$000
		LD	A,(GRNDPT)
		SLA	A
		LD	C,A
		RL	B
		LD	HL,AtrAddress_Tbl

		LD	A,(DJFLAG)
		AND	A		;地上？
		JP	Z,BAA_100	;	YES --> BAA_100

		LD	A,$23		; ダンジョン バンクセット
		LD	(WORK8),A
		INC	H
		INC	H
		LD	B,$000
;
;---- 特殊　-------------------------------------------------------
		LD	A,(DNJNNO)
		CP	NEWDJ		;新ダンジョン？
		JR	NZ,BAA_050_PASS	;	NO --> BAA_050_PASS
		LD	HL,New_Dungeon_Atr
		JP	BAA_150
BAA_050_PASS
;------------------------------------------------------------------
;
		LD	C,A
		SLA	C
		RL	B
;1998/07/29		CP	DJROOM2		;
;1998/07/29		JR	NC,BAA_100	;普通のダンジョン？
;;;;;;		CP	DJROOM		;	YES --> BAA_100
		CP	9		;	YES --> BAA_100
		JR	C,BAA_100	;

;---- アトリビュートデータ アドレス チェンジ ------------
		CP	$0a		;
		JR	NZ,BAA_055	;
		LD	A,(GRNDPT)	;
		CP	$fd		; マンボためごろう？
		JR	Z,BAA_05F	; ＹＥＳ
BAA_055
		LD	A,(DNJNNO)	;
		CP	$11		;
		JR	NZ,BAA_060	;
		LD	A,(GRNDPT)	;
		CP	$C0		;
		JR	Z,BAA_05F	;
		CP	$C1		; なまず入り口？
		JR	NZ,BAA_060	; ＮＯ
BAA_05F
		LD	C,$0f*2		; 強制 釣り堀セット
		JR	BAA_0F0
;--------------------------------------------------------
BAA_060
		LD	A,(DNJNNO)	;
		CP	$0f		;
		JR	NZ,BAA_070	;
		LD	A,(GRNDPT)	;
		CP	$a0		; ＵＦＯキャッチャー？
		JR	NZ,BAA_070	; ＮＯ

		LD	C,$00*2		; 強制 町の家セット
		JR	BAA_0F0
;--------------------------------------------------------
BAA_070
		LD	A,(DNJNNO)	;
		CP	$1f		;
		JR	NZ,BAA_080	;
		LD	A,(GRNDPT)	;
		CP	$EB		;
		JR	Z,BAA_071	;
		CP	$EC		; 城の洞窟？
		JR	NZ,BAA_080	; ＮＯ
BAA_071
		LD	C,$14*2		; 強制 カナレット城セット
		JR	BAA_0F0
;--------------------------------------------------------
BAA_080
		LD	A,(DNJNNO)	;
		CP	$10		;
		JR	NZ,BAA_090	;
		LD	A,(GRNDPT)	;
		CP	$E9		; 貝がらの館？
;NOT;		JR	NZ,BAA_090	; ＮＯ
		JR	NZ,BAA_081	; ＮＯ

		LD	C,$13*2		; 強制 眠い洞窟セット
		JR	BAA_0F0
;--------------------------------------------------------
BAA_081
		CP	$B5		; カメラ屋？
		JR	NZ,BAA_090	; ＮＯ

		LD	BC,$ff*2	; 強制 カメラ屋セット
		JR	BAA_0F0
;--------------------------------------------------------
BAA_090
		LD	A,(DNJNNO)	;
		CP	$16		;
		JR	NZ,BAA_0F0	;
		LD	A,(GRNDPT)	;
		CP	$6f		; 
		JR	Z,BAA_0F1	; 神殿の南は
		CP	$7f		; ＬＥＶＥＬ６
		JR	Z,BAA_0F1	; ダンジョンと
		CP	$8f		; 同じデータを使用
		JR	Z,BAA_0F1	; バンクは２３
;--------------------------------------------------------
BAA_0F0
		LD	A,$24		; 家と洞窟 バンクセット
		LD	(WORK8),A
BAA_0F1		INC	H
		INC	H
BAA_100
		ADD	HL,BC
		LD	C,(HL)
		INC	HL
		LD	B,(HL)
		PUSH	BC
		POP	HL
BAA_150
		POP	BC
		ADD	HL,BC
		LD	A,H
		LD	(WORK9),A
		LD	A,L
		LD	(WORKA),A
		POP	HL
		RET
;
;+------------------------------------------------------+
;|	ＢＧアトリビュートデータ読み込み		|
;|		ダンジョンのドア等用			|
;|		ＩＮ					|
;|		ＤＥ：データ読み込みインデックス	|
;+------------------------------------------------------+
HANBN_AT
	DB	DKEY0,DKEY1,DTU00,DTU01	;鍵付シャッター (上)
	DB	DTU02,DTU03,DKEY2,DKEY3	;		(下)
	DB	DKEY4,DTU04,DKEY5,DTU05	;		(左)
	DB	DTU06,DKEY6,DTU07,DKEY7	;		(右)
;
	DB	DSHI0,DSHI1,DTU00,DTU01	;シャッター	(上)
	DB	DTU02,DTU03,DSHI2,DSHI3	;		(下)
	DB	DSHI4,DTU04,DSHI5,DTU05	;		(左)
	DB	DTU06,DSHI6,DTU07,DSHI7	;		(右)
;
	DB	DBO00,DBO01,DTU00,DTU01	;たぶん、これだ！（ボス扉）
;
	DB	DTU00,DTU01,DTU00,DTU01	;鍵付シャッター (上)
	DB	DTU02,DTU03,DTU02,DTU03	;		(下)
	DB	DTU04,DTU04,DTU05,DTU05	;		(左)
	DB	DTU06,DTU06,DTU07,DTU07	;		(右)
;
	DB	DTU00,DTU01,DTU00,DTU01	;シャッター	(上)
	DB	DTU02,DTU03,DTU02,DTU03	;		(下)
	DB	DTU04,DTU04,DTU05,DTU05	;		(左)
	DB	DTU06,DTU06,DTU07,DTU07	;		(右)
;
	DB	DTU00,DTU01,DTU00,DTU01	;たぶん、これだ！（ボス扉）
;
;
SHANBN_AT
	DB	DSHI0,DSHI1,DTU00,DTU01	;シャッター	(上)
	DB	DTU02,DTU03,DSHI2,DSHI3	;		(下)
	DB	DSHI4,DTU04,DSHI5,DTU05	;		(左)
	DB	DTU06,DSHI6,DTU07,DSHI7	;		(右)
;
	DB	DSHI0,DSHI1,DSHI0,DSHI1	;シャッター	(上)
	DB	DSHI2,DSHI3,DSHI2,DSHI3	;		(下)
	DB	DSHI4,DSHI4,DSHI5,DSHI5	;		(左)
	DB	DSHI6,DSHI6,DSHI7,DSHI7	;		(右)
;
;
HANBN_DATA
		DB	03,02,03,02
		DB	01,00,01,00
		DB	03,03,01,01
		DB	02,02,00,00
;
		DB	03,02,03,02
		DB	01,00,01,00
		DB	03,03,01,01
		DB	02,02,00,00
;
		DB	01,00,03,02	;たぶん、これだ！（ボス扉）
;
		DB	01,00,03,02
		DB	01,00,03,02
		DB	02,03,00,01
		DB	02,03,00,01
;
		DB	01,00,03,02
		DB	01,00,03,02
		DB	02,03,00,01
		DB	02,03,00,01
;
		DB	01,00,03,02	;たぶん、これだ！（ボス扉）
;
;
SHANBN_DATA
		DB	03,02,03,02
		DB	01,00,01,00
		DB	03,03,01,01
		DB	02,02,00,00
;
		DB	01,00,03,02
		DB	01,00,03,02
		DB	02,03,00,01
		DB	02,03,00,01
;
;
DR_AT_Address
		LD	HL,HANBN_AT
		PUSH	BC
		LD	A,B
		AND	A
		JR	Z,DR_AT_Adr_050
		LD	HL,SHANBN_AT
DR_AT_Adr_050
		ADD	HL,DE
		LD	B,$000
		LD	A,(HL)
		SLA	A
		RL	B
		SLA	A
		RL	B
		LD	C,A
		CALL	BgAtrAddress
		POP	BC
		LD	HL,HANBN_DATA
		LD	A,B
		AND	A
		JR	Z,DR_AT_Adr_080
		LD	HL,SHANBN_DATA
DR_AT_Adr_080
		ADD	HL,DE
		LD	B,$000
		LD	A,(HL)
		LD	C,A
		LD	A,(WORK9)
		LD	H,A
		LD	A,(WORKA)
		LD	L,A
		ADD	HL,BC
		LD	A,H
		LD	(WORK9),A
		LD	A,L
		LD	(WORKA),A
		RET
;
;
;
	END
;
