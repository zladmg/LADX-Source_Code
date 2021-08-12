
		onbankgroup

;************************************************************************
;*									*
;*	タイトル    ：	ＣＧＢゼルダ					*
;*	ファイル名  ：	ZCHR.S						*
;*	処理内容    ：	キャラクター＆サウンド データ			*
;*	作成日付    ：  １９９８／０６／１７				*
;*									*
;************************************************************************

		PUBALL
		ISDMG

;------------------------------------------------------------------------
		LIST
		KANJI

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	条件分岐フラグの設定						x
;x			０：ゲームボーイ				x
;x			１：カラーゲームボーイ				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
Select_Check	EQU	1

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	サウンド							x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
BANK1B		GROUP	$1b
		ORG	$4000
		binset	$0,$37ff
;1998/08/20		libbin	bgm_1.bin
		libbin	new_sound/bgm_1.bin

BANK1E		GROUP	$1e
		ORG	$4000
		binset	$0,$4000
;1998/08/20		libbin	bgm_2.bin
		libbin	new_sound/bgm_2.bin

BANK1F		GROUP	$1f
		ORG	$4000
		binset	$0,$3bff
;1998/08/20		libbin	se.bin
		libbin	new_sound/se.bin


;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	キャラクター（ ゲームボーイ ）					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
BANKC		GROUP	$0c
		ORG	$4000
		binset	$0,$4000
		libbin	cgx/ugb_1.cgx

BANKD		GROUP	$0d
		ORG	$4000
		binset	$0,$4000
		libbin	cgx/g2.cgx

BANKE		GROUP	$0e
		ORG	$4000
		binset	$0,$4000
		libbin	cgx/g3.cgx

BANKF 		GROUP	$0f
		ORG	$4000
		binset	$0,$4000
		libbin	cgx/ugb_4.cgx

BANK10		GROUP	$10
		ORG	$4000
		binset	$0,$4000
		libbin	cgx/ugb_5.cgx

BANK11		GROUP	$11
		ORG	$4000
		binset	$0,$4000
		libbin	cgx/g6.cgx

BANK12		GROUP	$12
		ORG	$4000
		binset	$0,$4000
		libbin	cgx/ugb_7.cgx

BANK13		GROUP	$13
		ORG	$4000
		binset	$0,$4000
		libbin	cgx/g8.cgx

BANK34		GROUP	$34
		ORG	$4000
		binset	$0,$4000
		libbin	cgx/ugb_9.cgx


;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	キャラクター（ カラーゲームボーイ ）				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
BANK2C		GROUP	$2c
		ORG	$4000
		binset	$0,$4000
		libbin	cgx/uscg1.cgx

BANK2D		GROUP	$2d
		ORG	$4000
		binset	$0,$4000
		libbin	cgx/clz2.cgx

BANK2E		GROUP	$2e
		ORG	$4000
		binset	$0,$4000
		libbin	cgx/clz3.cgx

BANK2F 		GROUP	$2f
		ORG	$4000
		binset	$0,$4000
		libbin	cgx/uscg4.cgx

BANK30		GROUP	$30
		ORG	$4000
		binset	$0,$4000
		libbin	cgx/uscg5.cgx

BANK31		GROUP	$31
		ORG	$4000
		binset	$0,$4000
		libbin	cgx/clz6.cgx

BANK32		GROUP	$32
		ORG	$4000
		binset	$0,$4000
		libbin	cgx/uscg7.cgx

BANK33		GROUP	$33
		ORG	$4000
		binset	$0,$4000
		libbin	cgx/clz8.cgx

BANK35		GROUP	$35
		ORG	$4000
		binset	$0,$2000
		libbin	cgx/uscg9.cgx

;;;;;;;;FUKU_DJ_CHR	EQU	$6000
;;;;;;;;CAMERA_CHR	EQU	$6000+$0600
;;;;;;;;		ORG	$6000
		binset	$0,$2000
FUKU_DJ_CHR	libbin	cgx/uscga.cgx
CAMERA_CHR	equ	FUKU_DJ_CHR+0600h

BANK38		GROUP	$38
		ORG	$4000
		binset	$0,$300
		libbin	Geki/syasinya.cgx

		ORG	$5000
		binset	$2000,$2000
		libbin	cgx/uscga.cgx

		ORG	$7000
		binset	0,$800
		libbin	Geki/tenso.cgx


;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	寸劇キャラクター						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
BANK39		GROUP	$39
;------------------------------------------------------------------------
;	風見鶏
;------------------------------------------------------------------------
		ORG	$4000
		binset	$0,$1000
		libbin	Geki/gekitori.cgx

;;;;;;;;		ORG	$5000
		binset	$0,$1000
		libbin	Geki/gekigake1.cgx

;;;;;;;;		ORG	$6000
		binset	$0,$1000
		libbin	Geki/gekisiro.cgx

;;;;;;;;		ORG	$7000
		binset	$0,$1000
		libbin	Geki/gekiwan.cgx

BANK3A		GROUP	$3A
		ORG	$4000
		binset	$0,$1000
		libbin	Geki/gekitoric.cgx

;;;;;;;;		ORG	$5000
		binset	$0,$1000
		libbin	Geki/gekigake1c.cgx

;;;;;;;;		ORG	$6000
		binset	$0,$1000
		libbin	Geki/gekihaka.cgx

;;;;;;;;		ORG	$7000
		binset	$0,$1000
		libbin	Geki/gekiwanc.cgx

BANK3B		GROUP	$3B
		ORG	$4000
		binset	$0,$1000
		libbin	Geki/gekihakac.cgx

;;;;;;;;		ORG	$5000
		binset	$0,$1000
		libbin	Geki/gekisiroc.cgx

;;;;;;;;		ORG	$6000
		binset	$0,$1000
		libbin	Geki/gekigake1.cgx

;------------------------------------------------------------------------
;	（１）写真屋 ぴよぴよりんく ＜ＳＣＲ＞
;------------------------------------------------------------------------
		binset	$0,$1000
Photo_00p_cgx	libbin	photo/phoshasinya_p.cgx

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	データバンク ラベル						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
Bank_23		EQU	$23	; エンディング ＳＣＲ
Bank_28		EQU	$28	; プリンタ ＳＣＲ
Bank_29		EQU	$29	; プリンタ ＣＧＸ（１）→（４）
Bank_2a		EQU	$2a	; プリンタ ＣＧＸ（５）→（８）
Bank_2b		EQU	$2b	; プリンタ ＣＧＸ（９）→（１２）


;□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□
;□	バンク２３						       □
;□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□
BANK23		GROUP	Bank_23
;------------------------------------------------------------------------
;	（１）ワンワン
;------------------------------------------------------------------------
;;;;;;;;Kaisou_01_scr	EQU	$236800
		ORG	$6800
		binset	$0,$02d0
Kaisou_01_scr	libbin	ending/kaiso_1.csd

;------------------------------------------------------------------------
;	（２）図書館
;------------------------------------------------------------------------
;;;;;;;;Kaisou_02_scr	EQU	$236ad0
;;;;;;;;		ORG	$6ad0
		binset	$0,$02d0
Kaisou_02_scr	libbin	ending/kaiso_2.csd

;------------------------------------------------------------------------
;	（３）浜辺
;------------------------------------------------------------------------
;;;;;;;;Kaisou_03_scr	EQU	$236da0
;;;;;;;;		ORG	$6da0
		binset	$0,$02d0
Kaisou_03_scr	libbin	ending/kaiso_3.csd

;------------------------------------------------------------------------
;	（４）森のタリン
;------------------------------------------------------------------------
;;;;;;;;Kaisou_04_scr	EQU	$237070
;;;;;;;;		ORG	$7070
		binset	$0,$02d0
Kaisou_04_scr	libbin	ending/kaiso_4.csd

;------------------------------------------------------------------------
;	（５）風見鳥のマリン
;------------------------------------------------------------------------
;;;;;;;;Kaisou_05_scr	EQU	$237340
;;;;;;;;		ORG	$7340
		binset	$0,$02d0
Kaisou_05_scr	libbin	ending/kaiso_5.csd

;○●○●○●○●○●○●○●○●○●○●○●○●○●○●
;●						       ○
;○	２３バンクのこれ以下のエリア 23:7610 からは    ●
;●	zatr.s で使用しているので、使ってはいけない！  ○
;●						       ○
;○●○●○●○●○●○●○●○●○●○●○●○●○●○●


;□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□
;□	バンク２８						       □
;□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□
BANK28		GROUP	Bank_28
;------------------------------------------------------------------------
;	（１）写真屋  ぴよぴよりんく ＜ＳＣＲ＞
;------------------------------------------------------------------------
		ORG	$5550
		binset	$0,$02d0
Photo_00p_scr	libbin	photo/phoshasinya_P.csd
;------------------------------------------------------------------------
;	（１）写真屋  Ｖサインりんく ＜ＳＣＲ＞
;------------------------------------------------------------------------
;;;;;;;;Photo_00_scr	EQU	$285820
		ORG	$5820
		binset	$0,$02d0
Photo_00_scr	libbin	photo/phoshasinya.csd
;------------------------------------------------------------------------
;	（２）？？？ ＜ＳＣＲ＞
;------------------------------------------------------------------------
;;;;;;;;Photo_01_scr	EQU	$285af0
;;;;;;;;		ORG	$5af0
		binset	$0,$02d0
Photo_01_scr	libbin	photo/camegake1.csd
;------------------------------------------------------------------------
;	（３）マリンのヒップドロップ！ ＜ＳＣＲ＞
;------------------------------------------------------------------------
;;;;;;;;Photo_02_scr	EQU	$286090
;;;;;;;;		ORG	$6090
		binset	$0,$02d0
Photo_02_scr	libbin	photo/ph_4.csd
;------------------------------------------------------------------------
;	（４）風見鶏の前 ＜ＳＣＲ＞
;------------------------------------------------------------------------
;;;;;;;;Photo_03_scr	EQU	$286360
;;;;;;;;		ORG	$6360
		binset	$0,$02d0
Photo_03_scr	libbin	photo/cametori.csd
;------------------------------------------------------------------------
;	（５）うるりらじじい ＜ＳＣＲ＞
;------------------------------------------------------------------------
;;;;;;;;Photo_04_scr	EQU	$286630
;;;;;;;;		ORG	$6630
		binset	$0,$02d0
Photo_04_scr	libbin	photo/ph_uru_p.csd
;------------------------------------------------------------------------
;	（６）ワンワンに襲われ、危うしリンク！ ＜ＳＣＲ＞
;------------------------------------------------------------------------
;;;;;;;;Photo_05_scr	EQU	$286900
;;;;;;;;		ORG	$6900
		binset	$0,$02d0
Photo_05_scr	libbin	photo/ph_a1p.csd
;------------------------------------------------------------------------
;	（７）万引き野郎！リンク ＜ＳＣＲ＞
;------------------------------------------------------------------------
;;;;;;;;Photo_06_scr	EQU	$286bd0
;;;;;;;;		ORG	$6bd0
		binset	$0,$02d0
Photo_06_scr	libbin	photo/phodoro.csd
;------------------------------------------------------------------------
;	（８）釣りおやじ溺れる！ ＜ＳＣＲ＞
;------------------------------------------------------------------------
;;;;;;;;Photo_07_scr	EQU	$286ea0
;;;;;;;;		ORG	$6ea0
		binset	$0,$02d0
Photo_07_scr	libbin	photo/cameturi.csd
;------------------------------------------------------------------------
;	（９）おったんか！ゾーラ ＜ＳＣＲ＞
;------------------------------------------------------------------------
;;;;;;;;Photo_08_scr	EQU	$287170
;;;;;;;;		ORG	$7170
		binset	$0,$02d0
Photo_08_scr	libbin	photo/camezolata.csd
;------------------------------------------------------------------------
;	（１０）リチャードと城の前 ＜ＳＣＲ＞
;------------------------------------------------------------------------
;;;;;;;;Photo_09_scr	EQU	$287440
;;;;;;;;		ORG	$7440
		binset	$0,$02d0
Photo_09_scr	libbin	photo/camesiro.csd
;------------------------------------------------------------------------
;	（１１）恐怖の心霊写真 ＜ＳＣＲ＞
;------------------------------------------------------------------------
;;;;;;;;Photo_0a_scr	EQU	$287710
;;;;;;;;		ORG	$7710
		binset	$0,$02d0
Photo_0a_scr	libbin	photo/camehaka.csd
;------------------------------------------------------------------------
;	（１２）えっちなリンク ＜ＳＣＲ＞
;------------------------------------------------------------------------
;;;;;;;;Photo_0b_scr	EQU	$2879e0
;;;;;;;;		ORG	$79e0
		binset	$0,$02d0
Photo_0b_scr	libbin	photo/camegake2.csd

;------------------------------------------------------------------------
;	これは必ずいるぞ！アルバム用データ
;------------------------------------------------------------------------
;;;;;;;;Photo_scr	EQU	$287cb0
;;;;;;;;		ORG	$7cb0
		binset	$0,$02d0
Photo_scr	libbin	photo/fhoto.csd
;;;;;;;;Photo_col	EQU	$287F80
;;;;;;;;		ORG	$7F80
		binset	$0,$0080
Photo_col	libbin	photo/fhoto.ccd


;□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□
;□	バンク２９						       □
;□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□
BANK29		GROUP	Bank_29
;------------------------------------------------------------------------
;	（１）写真屋 ＜ＣＧＸ＞
;------------------------------------------------------------------------
;;;;;;;;Photo_00_cgx	EQU	$294000
		ORG	$4000
		binset	$0,$1000
Photo_00_cgx	libbin	photo/phoshasinya.cgx
;------------------------------------------------------------------------
;	（２）？？？ ＜ＣＧＸ＞
;------------------------------------------------------------------------
;;;;;;;;Photo_01_cgx	EQU	$295000
;;;;;;;;		ORG	$5000
		binset	$0,$1000
Photo_01_cgx	libbin	photo/camegake1.cgx
;------------------------------------------------------------------------
;	（３）マリンのヒップドロップ！ ＜ＣＧＸ＞
;------------------------------------------------------------------------
;;;;;;;;Photo_02_cgx	EQU	$296000
;;;;;;;;		ORG	$6000
		binset	$0,$1000
Photo_02_cgx	libbin	photo/ph_4.cgx
;------------------------------------------------------------------------
;	（４）風見鶏の前 ＜ＣＧＸ＞
;------------------------------------------------------------------------
;;;;;;;;Photo_03_cgx	EQU	$297000
;;;;;;;;		ORG	$7000
		binset	$0,$1000
Photo_03_cgx	libbin	photo/cametori.cgx


;□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□
;□	バンク２Ａ						       □
;□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□
BANK2A		GROUP	Bank_2a
;------------------------------------------------------------------------
;	（５）うるりらじじい ＜ＣＧＸ＞
;------------------------------------------------------------------------
;;;;;;;;Photo_04_cgx	EQU	$2a4000
		ORG	$4000
		binset	$0,$1000
Photo_04_cgx	libbin	photo/ph_uru_p.cgx
;------------------------------------------------------------------------
;	（６）ワンワンに襲われ、危うしリンク！ ＜ＣＧＸ＞
;------------------------------------------------------------------------
;;;;;;;;Photo_05_cgx	EQU	$2a5000
;;;;;;;;		ORG	$5000
		binset	$0,$1000
Photo_05_cgx	libbin	photo/ph_a1p.cgx
;------------------------------------------------------------------------
;	（７）万引き野郎！リンク ＜ＣＧＸ＞
;------------------------------------------------------------------------
;;;;;;;;Photo_06_cgx	EQU	$2a6000
;;;;;;;;		ORG	$6000
		binset	$0,$1000
Photo_06_cgx	libbin	photo/phodoro.cgx
;------------------------------------------------------------------------
;	（８）釣りおやじ溺れる！ ＜ＣＧＸ＞
;------------------------------------------------------------------------
;;;;;;;;Photo_07_cgx	EQU	$2a7000
;;;;;;;;		ORG	$7000
		binset	$0,$1000
Photo_07_cgx	libbin	photo/cameturi.cgx


;□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□
;□	バンク２Ｂ						       □
;□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□
BANK2B		GROUP	Bank_2b
;------------------------------------------------------------------------
;	（９）おったんか！ゾーラ ＜ＣＧＸ＞
;------------------------------------------------------------------------
;;;;;;;;Photo_08_cgx	EQU	$2b4000
		ORG	$4000
		binset	$0,$1000
Photo_08_cgx	libbin	photo/camezolat.cgx
;------------------------------------------------------------------------
;	（１０）リチャードと城の前 ＜ＣＧＸ＞
;------------------------------------------------------------------------
;;;;;;;;Photo_09_cgx	EQU	$2b5000
;;;;;;;;		ORG	$5000
		binset	$0,$1000
Photo_09_cgx	libbin	photo/camesiro.cgx
;------------------------------------------------------------------------
;	（１１）恐怖の心霊写真 ＜ＣＧＸ＞
;------------------------------------------------------------------------
;;;;;;;;Photo_0a_cgx	EQU	$2b6000
;;;;;;;;		ORG	$6000
		binset	$0,$1000
Photo_0a_cgx	libbin	photo/camehaka.cgx
;------------------------------------------------------------------------
;	（１２）えっちなリンク ＜ＣＧＸ＞
;------------------------------------------------------------------------
;;;;;;;;Photo_0b_cgx	EQU	$2b7000
;;;;;;;;		ORG	$7000
		binset	$0,$1000
Photo_0b_cgx	libbin	photo/camegake2.cgx


;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x		ピクチャーフレーム　データ				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
BANK3C		group	03ch
		org	04000h
		binset	00000h,02000h
pic_cgx		libbin	pic/zelpic.cgx
;
		binset	00000h,00800h
pic_scr		libbin	pic/zelpic.scr
;
		binset	00080h,00060h
pic_col		libbin	pic/zelpic.col
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	キャラクター（ ツール ）					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;;;;;BANK3F		GROUP	$3F
;;;;;		ORG	$7000
;;;;;		binset	$0,$1000
;;;;;		libbin	cgx/ctool.cgx


;------------------------------------------------------------------------
		END
;------------------------------------------------------------------------
