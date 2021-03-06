;;;;;;;;	PUBALL
;;BANK0	GROUP	0
;************************************************
;*	<<<<<  ＲＡＭ  ＥＱＵ. >>>>>		*
;************************************************
;	FF80->FF8F :SOUND USE
;	FFC0->FFC9 :DMA SUB
;	ORG	$FF8A
;
BKCHFG	EQU	$FF90
BKCHF2	EQU	$FF91
BKCHCT	EQU	$FF92
BKCHC2	EQU	$FF93
BKCHNO	EQU	$FF94
BKCHN2	EQU	$FF95
;
SCCH	EQU	$FF96
SCCV	EQU	$FF97
;
PLXPSL	EQU	$FF98	
PLYPSL	EQU	$FF99	
PLXSPD	EQU	$FF9A	
PLYSPD	EQU	$FF9B
PLSTAT	EQU	$FF9C	
PLCHPT	EQU	$FF9D
PLCMKI	EQU	$FF9E
PLSVXL	EQU	$FF9F
PLSVYL	EQU	$FFA0
PLSTOP	EQU	$FFA1
PLZPSL	EQU	$FFA2
PLZSPD	EQU	$FFA3
CHTRFG	EQU	$FFA4	; 常時 Character 転送 種類フラグ
CHTRF2	EQU	$FFA5	; 特殊 Character 転送 種類フラグ
CHTRCT	EQU	$FFA6	;
CHTRC2	EQU	$FFA7	;
SDOUTFG	EQU	$FFA8	; SOUND fade out flag !
SLEVEL	EQU	$FFA9	; SOUND level 1 flag !
SLEVEL2	EQU	$FFAA	; SOUND level 2 flag !
SDONFG	EQU	$FFAB	; SOUND fade IN flag !
EXITFG	EQU	$FFAC	; Dundeon Exit hit check mode
EXITXP	EQU	$FFAD
EXITYP	EQU	$FFAE
UNITNO	EQU	$FFAF
BGMNO	EQU	$FFB0	; Now BGM no.
BGMSTF	EQU	$FFB1	; BGM Chenge flag!
IKADAON	EQU	$FFB2	; Player Ikada on flag !
PLDSYP	EQU	$FFB3	; PLYPSL+PLZPSL
DJMSTM	EQU	$FFB4	; Dundeon message set time !
OPKYTM	EQU	$FFB5	;Opening key wait !
KNKNTM	EQU	$FFB6	; Ken vs Ken protect time !
PLTIM0	EQU	$FFB7	;
FTUNNO	EQU	$FFB8	;Foot unit no.
PANELMD	EQU	$FFB9	;ひみつパネル順番テーブル
HIKUSFG	EQU	$FFBA	;引っ張るスイッチ
ONOFHELP EQU	$FFBB	;スクロール前凹凸ブロック転送フラグ！
;;;BSFLFG	EQU	$FFBB	;ボスやられフラグ(専用サウンドセット）
BGMNOT	EQU	$FFBC	; BGM initial set noth flag !
BGMNO2	EQU	$FFBD
ENBGRV	EQU	$FFBE	;BG check don't revise
TODYFG	EQU	$FFBF	;ファンファーレからの復帰するためのBGMの番号！
;
SVSTS	EQU	$FFCA ;	DS	1	; セーブステータス
CNT1	EQU	$FFCB ;	DS	1	; コントローラ キー 情報 ベタ 入力
TRG1	EQU	$FFCC ;	DS	1	; コントローラ キー 情報 トリガ 入力
OBJYP	EQU	$FFCD ;	DS	1	; ＯＢＪ Ｙ 座標
OBJXP	EQU	$FFCE ;	DS	1	; ＯＢＪ Ｘ 座標
VRAMH	EQU	$FFCF ;	DS	1	; ＶＲＡＭ 上位 アドレス
VRAML	EQU	$FFD0 ;	DS	1	; ＶＲＡＭ 下位 アドレス
VBLANK_F EQU 	$FFD1 ;	DS	1	; Ｖ−ＢＬＡＮＫ 終了 フラグ
IEB	EQU	$FFD2 ;	DS	1	; 割り込み許可フラグのバッファ
;
W_SEQ	EQU	$FFD3 ;	DS	1	; ＯＢＪ-ＲＡＭ転送イニシャルフラグ
;
S_DATA	EQU	$FFD4 ;	DS	2
;
BGTM	EQU	$FFD6 ;	DS	1
;
WORK	EQU	$FFD7
WORK0	EQU	$FFD7
WORK1	EQU	$FFD8
WORK2	EQU	$FFD9
WORK3	EQU	$FFDA
WORK4	EQU	$FFDB
WORK5	EQU	$FFDC
WORK6	EQU	$FFDD
WORK7	EQU	$FFDE
WORK8	EQU	$FFDF
WORK9	EQU	$FFE0
WORKA	EQU	$FFE1
WORKB	EQU	$FFE2
WORKC	EQU	$FFE3
WORKD	EQU	$FFE4
WORKE	EQU	$FFE5
WORKF	EQU	$FFE6
FRCNT	EQU	$FFE7
ENHELP	EQU	$FFE8	; Enemy work 1
ENHELP2	EQU	$FFE9	; Enemy work 2
ENMODE2	EQU	$FFEA
ENMYNO2	EQU	$FFEB
ENDSYP	EQU	$FFEC
ENFLCL	EQU	$FFED
ENSVXL	EQU	$FFEE
ENSVYL	EQU	$FFEF
ENSTAT2	EQU	$FFF0
ENCHPT2	EQU	$FFF1
;
SOUND1	EQU	$FFF2
SOUND2	EQU	$FFF3
SOUND3	EQU	$FFF4
SOUND4	EQU	$D368
;;;;;;SOUND4	EQU	$FFF5
;
ENCHNO	EQU	$FFF5
;
GRNDPT	EQU	$FFF6
DNJNNO	EQU	$FFF7
DJSVBF	EQU	$FFF8
YKFLAG	EQU	$FFF9	;たぶん、横画面フラグ
FTUNAD	EQU	$FFFA	;Foot BG unit Adress !
WFTUNAD	EQU	$FFFB	;   " save !
NMIFG	EQU	$FFFD
CGBFLG	EQU	$FFFE		; カラーゲームボーイ フラグ
KEYA1	EQU	CNT1
KEYA2	EQU	TRG1
;********************************
;*	制御用レジスタ		*
;********************************

P1	EQU	$FF00		; キーポート
SSB	EQU	$FF01		; シリアル転送 データ
SB	EQU	SSB		;       ”
SSC	EQU	$FF02		; シリアル コントロール
SC	EQU	SSC		;       ”
DIV	EQU	$FF04		; ディバイダー
TIMA	EQU	$FF05		; タイマー レジスタ
TMA	EQU	$FF06		; モジュロ レジスタ
TAC	EQU	$FF07		; タイマー コントロール
IF	EQU	$FF0F		; 割り込み要求フラグ
IE	EQU	$FFFF		; 割り込み許可フラグ
LCDC	EQU	$FF40		; ＬＣＤ コントロール
STAT	EQU	$FF41		; ＬＣＤＣ ステータス
SCY	EQU	$FF42		; スクロール Ｘ
SCX	EQU	$FF43		; スクロール Ｙ
LY	EQU	$FF44		; ＬＣＤＣ Ｙ 座標
LYC	EQU	$FF45		; ＬＹ コンペア レジスタ
DMA	EQU	$FF46		; ＤＭＡ 転送
BGP	EQU	$FF47		; ＢＧ パレット
OBP0	EQU	$FF48		; ＯＢＪ パレット 0
OBP1	EQU	$FF49		; ＯＢＪ パレット 1
WDY	EQU	$FF4A		; ウインド Ｘ 座標
WDX	EQU	$FF4B		; ウインド Ｙ 座標
;
HDMA1	EQU	$FF51		; 転送元指定(ＨＩＧＨ)
HDMA2	EQU	$FF52		; 転送元指定(ＬＯＷ)
HDMA3	EQU	$FF53		; 転送先指定(ＨＩＧＨ)
HDMA4	EQU	$FF54		; 転送先指定(ＬＯＷ)
HDMA5	EQU	$FF55		; 転送スタート及び転送数
;
OTO	EQU	$DFE8

;--------------------------------------------------------------
;	ＣＧＢ使用
;--------------------------------------------------------------
KEY1	EQU	$FF4D		; スピード切り替え
BCPS	EQU	$FF68		; カラーパレット ＢＧ側書き込み指定
BCPD	EQU	$FF69		; カラーパレット ＢＧ側書き込みデータ
OCPS	EQU	$FF6A		; カラーパレット ＯＢＪ側書き込み指定
OCPD	EQU	$FF6B		; カラーパレット ＯＢＪ側書き込みデータ
;
VBK	EQU	$FF4F		; ＬＣＤ表示用ＲＡＭバンクレジスタ
SVBK	EQU	$FF70		; ワークメモリ用バンクレジスタ
;
;********************************
;*	ＤＭＡ    		*
;********************************
DMASUB	EQU	$FFC0		; ＤＭＡ転送サブルーチン
OBJRAM	EQU	$C000		; ＯＡＭ 原簿
OAM	EQU	$C000
POAM	EQU	$C008
;;;;;;		+A0
ENOAM	EQU	$C030
;;;;;   0A0H use  (C0A0->C0FFEQUDammy)
;********************************
;*	GAME USE RAM   		*
;********************************
SCCH1	EQU	$C100	; Opening part scroll counter !
SCCH2	EQU	$C101
SCCH3	EQU	$C102
SCCH4	EQU	$C103
SCCH5	EQU	$C104
OPSCCT	EQU	$C105	; Line check counter !
SCCV1	EQU	$C106	;
BGMFLG	EQU	$C107	; BGM select TEST flag !
NMSTCT	EQU	$C108	; Mesege NAME in count !
MSTNO	EQU	$C109	; Message test No.
BEDOFF	EQU	$C10A	; Start demo bed off flag !(Not BG check)
SNDSPD	EQU	$C10B	; Sound speed !
DAMASI	EQU	$C10C	; タヌキだましフラグ！
EBCHF2	EQU	$C10D	; 敵転送フラグ２
BKCHF3	EQU	$C10E	; "
BKCHC3	EQU	$C10F	; "
PINCHCT	EQU	$C110	; ライフ危険サウンドセットタイミング！
ENSTTM	EQU	$C111	; 敵ストップタイム
MSGENOH	EQU	$C112	; メッセージナンバー High!
EFLFLG	EQU	$C113	; 敵全部穴落ちたフラグ！
NAMIOTO	EQU	$C114	; 波際 ＳE COUNT
KDMSCT	EQU	$C115	;子供メッセージカウント
ZZZFLG	EQU	$C116	;タリン ＺＺＺ 転送フラグ(いらん）
SLIMFG	EQU	$C117	;スライムひっつき！
;MSSDWT	EQU	$C117
;
;
PLXPSH	EQU	$C118
PLYPSH	EQU	$C119
PLXSDR	EQU	$C11A
PLYSDR	EQU	$C11B
PLMODE	EQU	$C11C
PLFLPL	EQU	$C11D
PLFLPR	EQU	$C11E
HASGFG	EQU	$C11F
PLWKCT	EQU	$C120
SPCTTM	EQU	$C121
SPCTWT	EQU	$C122
INDEX	EQU	$C123
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
SCRLFG	EQU	$C124
SCRLMK	EQU	$C125
SCRADH	EQU	$C126
SCRADL	EQU	$C127
SCRLC1	EQU	$C128
SCRLC2	EQU	$C129
SCUNTA	EQU	$C12A
SCRLTM	EQU	$C12B
SCCHNX	EQU	$C12C
SCCVNX	EQU	$C12D
SCVRMH	EQU	$C12E
SCVRML	EQU	$C12F
WHASGFG	EQU	$C130
;;;GRNDPT	EQU	$C130
;PLSVXL	EQU	$C131
;PLSVYL	EQU	$C132
PLCBFG	EQU	$C133
MSOFTM	EQU	$C134	;メッセージ連続防止タイム！
;;UNITNO	EQU	$C134
PLPRIO	EQU	$C135
PKENPT	EQU	$C136
PCUTFG	EQU	$C137
PCUTTM	EQU	$C138
PKENYD	EQU	$C139
PKENXD	EQU	$C13A
PLDSYD	EQU	$C13B
PLDSXD	EQU	$C13C
RNDFLG	EQU	$C13D
HANEFG	EQU	$C13E
OVSLCT	EQU	$C13F
PKCRX1	EQU	$C140
PKCRX2	EQU	$C141
PKCRY1	EQU	$C142
PKCRY2	EQU	$C143
PLOSHI	EQU	$C144
PLYPS2	EQU	$C145
PLJPFG	EQU	$C146
ONLFFG	EQU	$C147	;リフト 載りフラグ！
;PLZPSL	EQU	$C147
;PLZSPD	EQU	$C148
PLZSDR	EQU	$C149
DUSHFG	EQU	$C14A
DUSHCT	EQU	$C14B
PYAATM	EQU	$C14C
BUMEFG	EQU	$C14D
PRTBMFG	EQU	$C14D
BOMBFG	EQU	$C14E
;----------------------
WNDFLG	EQU	$C14F
WNDSPD	EQU	$C150
WNDSTT	EQU	$C151
PLJCPT	EQU	$C152
PLJCCT	EQU	$C153
WDITFG	EQU	$C154
TILTXD	EQU	$C155
TILTYD	EQU	$C156
TILTCT	EQU	$C157
TILTMK	EQU	$C158
MPWRK0	EQU	$C159
TATEFG	EQU	$C15A
TATEON	EQU	$C15B
PLCAMD	EQU	$C15C
PLCAMK	EQU	$C15D
;PLSTOP	EQU	$C15E
PLHKCT	EQU	$C15F
PCUTOF	EQU	$C160
WTBGCT	EQU	$C161
WTBGC2	EQU	$C162
PINCHFG	EQU	$C163
MJSTCTH	EQU	$C164	;メッセージ文字数カウントＨ
BSSDTM	EQU	$C165	;ボス メッセージ セット タイマー
OKARFG	EQU	$C166	;オカリナ吹きフラグ！
ITEMNOT	EQU	$C167	;アイテム不可！
SARUFG	EQU	$C168	;猿 指導フラグ！
DAMSEFG	EQU	$C169	;ズクロールエンドたぬきだまし音セットフラグ！
;------------------
;BKCHFG	EQU	$C163
;BKCHF2	EQU	$C164
;BKCHCT	EQU	$C165
;BKCHC2	EQU	$C166
;BKCHNO	EQU	$C167
;BKCHN2	EQU	$C168
;PLSTAT	EQU	$C169
;--------------------
WCUTFG	EQU	$C16A
SBHR	EQU	$C16B
SBCNT	EQU	$C16C
CARITM	EQU	$C16D	; Ken chari time
KENON	EQU	$C16E	; ken butoon on !
MSSTCT	EQU	$C16F
MJSTCT	EQU	$C170
MJSTCT2	EQU	$C171
MJSTTM	EQU	$C172
MSGENO	EQU	$C173
PWORK0	EQU	$C174
MSVRMH	EQU	$C175
MSVRML	EQU	$C176
MSANSR	EQU	$C177
TLCRTM	EQU	$C178
TLCRXL	EQU	$C179
TLCRYL	EQU	$C17A
BGCKOF	EQU	$C17B
WAVCNT	EQU	$C17C
WAVCNT2	EQU	$C17D
WAVCNT3	EQU	$C17E
WAVFLG	EQU	$C17F
WAVTIM	EQU	$C180
FTBGNO	EQU	$C181
WDMVCT	EQU	$C182
PLSWTM	EQU	$C183
PCTRALH	EQU	$C184
PCTRALL	EQU	$C185
PCTRARH	EQU	$C186
PCTRARL	EQU	$C187
DROPFG	EQU	$C188
DROPMD	EQU	$C189
SHSTCT	EQU	$C18A
SHSTCT2	EQU	$C18B
SHOPEN	EQU	$C18C
SHSHUT	EQU	$C18D
NAZOFG	EQU	$C18E
NAZOCL	EQU	$C18F
SHUTFG	EQU	$C190
BLOSTM	EQU	$C191
EBANK0	EQU	$C193
EBANK1	EQU	$C194
EBANK2	EQU	$C195
EBANK3	EQU	$C196
EBCHFG	EQU	$C197
KURDCT	EQU	$C198
DUSHTM	EQU	$C199
DUSHMK	EQU	$C19A
POWDRTM	EQU	$C19B
DOORCT	EQU	$C19C
WARPFG	EQU	$C19D
;;PLTIM0	EQU	$C19D
ATCKNO	EQU	$C19E
MSGEFG	EQU	$C19F
SPDMAPL	EQU	$C1A0	; Danjyon Map special character TR. data adress L
SPDMAPH	EQU	$C1A1	; H
TOURCT	EQU	$C1A2
LIKEFG	EQU	$C1A3	;Like like yabaa flag !
PFUCKFG	EQU	$C1A4 ;Fuck shot flag !
BELTFG	EQU	$C1A5
PFUCKID	EQU	$C1A6 ;Fuck shot index
TOGEFG	EQU	$C1A7	; Toge BG flag
ENSTFG	EQU	$C1A8	; Enemy stop flag !
DEMOFG	EQU	$C1A9	; Player demo flag
DEMOTM	EQU	$C1AA	; " time 
MSKYOF	EQU	$C1AB	; Mesege key not check
KENOFF	EQU	$C1AC
MSCRFG	EQU	$C1AD	; Peaple cros flag
SLIMCNT	EQU	$C1AE	; Boss small slime set count !
BSFLFG	EQU	$C1AF	;ボスやられフラグ(専用サウンドセット）
;;BGMNOT	EQU	$C1AF	; BGM initial set noth flag !
ICONWRK	EQU	$C1B0	; G map icon set ram
ICONFG	EQU	$C1B1
ICONTM	EQU	$C1B2
ICONTM2	EQU	$C1B3
WGMAPPT	EQU	$C1B4	; GMAPPT save
FUEFLG	EQU	$C1B5	; Window fue display flag !
WITEMPT	EQU	$C1B6	; Item waku point save
FUECPT	EQU	$C1B7	; Fue chr pt
FUETM	EQU	$C1B8	; Fue window set timer !
FUETM2	EQU	$C1B9	;         "
FUEAUT	EQU	$C1BA	; Auto window off flag !
FLDWTM	EQU	$C1BB	; Player fole down help time !
DJCLTM	EQU	$C1BC	; Danjyon clear time !
BSSDFG	EQU	$C1BD	; Boss sound set flag
BOSSFG	EQU	$C1BE	; Boss room flag
SCXAD	EQU	$C1BF	; Part Scroll ADD count
BMYATM	EQU	$C1C0	; Bomber alow time !
BMINDX	EQU	$C1C1	; Bomber use index 
YAINDX	EQU	$C1C2	; ya use index 
CARISTM	EQU	$C1C3	; BG ken cyari set timing flag !
KNBGTM	EQU	$C1C4	; Ken BG check protect time !
MJSTCT3	EQU	$C1C5	; Test
MUTEKI	EQU	$C1C6	; Player no damege flag !
ANAHFG	EQU	$C1C7	; Ana hori flag !
ANAHTM	EQU	$C1C8	; Ana hori time !
FLBKTM	EQU	$C1C9	; 壊れる床タイム
SWCHCT	EQU	$C1CA	; 乗る SWICH on count
SWCHTM	EQU	$C1CB	;  " Return  Timer !!
MJSDON	EQU	$C1CC	;メッセージ送り音セットフラグ！
BSXPSL	EQU	$C1CD	;Boss woak ram (RANEM suna set pos.)
BSYPSL	EQU	$C1CE
DJSDON	EQU	$C1CF	;ダンジョンスクロールBGMセットフラグ！
;- - - - - - - - - - - - - -
DROBPX	EQU	$C1D0	;シャッターアドレス
DROBPY	EQU	$C1E0	;
DRUNPS	EQU	$C1F0	;   " UNIT ADRESS
;===SOUND TEST =====
SDFLAG	EQU	$C1FE
SDTIME	EQU	$C1FF
;- -  敵 専用- - - - - - - -
ENNO	EQU	$10
ENXPSL	EQU	$C200
ENYPSL	EQU	$C210
ENXPSH	EQU	$C220
ENYPSH	EQU	$C230
ENXSPD	EQU	$C240
ENYSPD	EQU	$C250
ENXSDR	EQU	$C260
ENYSDR	EQU	$C270
ENMODE	EQU	$C280
ENSTAT	EQU	$C290
ENCBFG	EQU	$C2A0
ENWRK0	EQU	$C2B0
ENWRK1	EQU	$C2C0
ENWRK2	EQU	$C2D0
ENTIM0	EQU	$C2E0
ENTIM1	EQU	$C2F0
ENTIM2	EQU	$C300
ENZPSL	EQU	$C310
ENZSPD	EQU	$C320
ENZSDR	EQU	$C330
ENMOD0	EQU	$C340
ENMOD1	EQU	$C350
ENLIFE	EQU	$C360
ENBANK	EQU	$C370
ENMUKI	EQU	$C380
ENWRK4	EQU	$C390
ENMYNO	EQU	$C3A0
ENCHPT	EQU	$C3B0
ENOMID	EQU	$C3C0
ENOMIS	EQU	$C3C1
;---------------------------
PLWRK0	EQU	$C3C2
MSNXMJ	EQU	$C3C3	;メッセージ先読み用！
LVWRK0	EQU	$C3C4	;海岸熱いデモ用！
LVWRK1	EQU	$C3C5
LVWRK2	EQU	$C3C6
LVTIM0	EQU	$C3C7
UTAFLG	EQU	$C3C8	;マリン唄フラグ！
PIMODE	EQU	$C3C9	;マリンダンジョン入る、、、、
WAVCNT4	EQU	$C3CA	;ヱーブ
;- - - - - - - - - - - 
FADEON	EQU	$C3CB	;Fade on set
FADECT	EQU	$C3CC	;Now count
FADECT2	EQU	$C3CD	;Max count
COINWT	EQU	$C3CE	;コインカウントアップメッセージ待ち！
WPLCAMD	EQU	$C3CF	;かつぎフラグセーブ！
;;;;;;;;;;BGFLSH	EQU	$C3CE	;BG フラッシュ
;;;;	Fury !!
ENCONT	EQU	$C3D0
ENGRPT  EQU	$C3E0
ENHNXS	EQU	$C3F0	;Ｘポジション
ENHNYS	EQU	$C400	;Ｙポジション
ENHNFG	EQU	$C410	;跳ね返りフラグ
ENFLSH	EQU	$C420	;フラッシングフラグ
ENMOD3	EQU	$C430
ENWRK3	EQU	$C440
ENTIM3	EQU	$C450	; Long timer !
ENJYUN	EQU	$C460	; Enemy set jyunban count 0,1,2,3....
ENWATR	EQU	$C470	; In water flag !
ENTIM4	EQU	$C480
ENCAST	EQU	$C490
ENHNMD	EQU	$C4A0	; Hanekeri 
ENFLXP	EQU	$C4B0	; Fole down serch xpos
ENFLYP	EQU	$C4C0	;        "        y
ENMOD2	EQU	$C4D0
ENITMF	EQU	$C4E0	;強制アイテムセットフラグ
ENBCOF	EQU	$C4F0	;BG チェック無視！
;
MAMUUFG	EQU	$C500	;マムーウインドウ
FKINDX	EQU	$C501	;ふくろうインデックス
OTOFLG	EQU	$C502
ENBGLR	EQU	$C503
SPEKFG	EQU	$C504
SHOHIN	EQU	$C505
;;;;;	+4
SHOHFG	EQU	$C509
SHOPFG	EQU	$C50A	;No atack flag !
SHOHID	EQU	$C50B	;SHOHIN  Index !
KTINDX	EQU	$C50C	;KTOBJ use index
ENBGUD	EQU	$C50D
TAKISDF	EQU	$C50E	;滝音セットフラグ！
MAINDX	EQU	$C50F	;マリンオプションインデックス
;----------------------
EXNO	EQU	$10
EXMODE	EQU	$C510
EXTIM0	EQU	$C520
EXXPSL	EQU	$C530
EXYPSL	EQU	$C540
EXXSPD	EQU	$C550
EXYSPD	EQU	$C560
EXXSDR	EQU	$C570
EXYSDR	EQU	$C580
EXSTAT	EQU	$C590
;--------------
EXWRK0	EQU	$C5A0	;未使用！
EXWRK1	EQU	$C5B0	;   ”
;--------------
FIREBFG	EQU	$C5A0
WFIREBFG EQU	$C5A1
GMAPFG	EQU	$C5A2	;本からの地上マップ用！
SEIRENFG EQU	$C5A3	;セイレーン楽器デモ用！
OKACNT	EQU	$C5A4	;  タイミング！
OKACNT2	EQU	$C5A5
IWAMSFG	EQU	$C5A6	;１回のみ岩もちあげられます！msgeflag!
BSFLSD	EQU	$C5A7	;ボスやられ音セット時間さ用！
PLCANO	EQU	$C5A8	;かついでる敵のＮo.
HARTFUL	EQU	$C5A9	;ライフまんたんフラグ！
L9NZCT	EQU	$C5AA	;レベル９謎カウント！
FKMSFG	EQU	$C5AB	;フクロウメッセージ音！フラグ！
HABACNT	EQU	$C5AC	;はばたき音セットカウント！
FADEBP	EQU	$C5AD	;フェード  BGPFG
CACHTM	EQU	$C5AE	;敵投げプロテクト！
BGMSTM	EQU	$C5AF	;BGM時間差セット！
KENTAT	EQU	$C5B0	;剣か盾かどっちか(当たり判定)
;- - - - - - - - -
EXSTCT	EQU	$C5C0
ENSHMK	EQU	$C5D0	;プレイヤー武器投げ向き
ENSHUN	EQU	$C5E0	;プレイヤー武器投げ現在ユニット
;----------------------
ENONCT	EQU	$CE80	; Enemy on off check room count
ENONBF	EQU	$CE81	;         "               Buffer
;;;	+6
;----------------------
ENONOF	EQU	$CF00	; Enemy fail bit on off data Max 256
;----------------------
XMVBUF	EQU	$D000
YMVBUF	EQU	$D100
ZMVBUF	EQU	$D200
;----------------------
KRENC1	EQU	$D200	;クレーンゲーム
KRENC2	EQU	$D201
BUTNC1	EQU	$D202
BUTNC2	EQU	$D203
KRENXP	EQU	$D204
KRENYP	EQU	$D205
KRENAD	EQU	$D206
;----------------------
LUREXP	EQU	$D000
LUREYP	EQU	$D001
FISHON	EQU	$D002
LUREID	EQU	$D003
FISHCT	EQU	$D004
;----------------------
OYAJIXS	EQU	$D000
OYAJIYS	EQU	$D001
TBINDX	EQU	$D002
;--Boss use-----------
BHEADFG	EQU	$D200
BSINDX	EQU	$D201
BSINDX2	EQU	$D202
BHAZUCT	EQU	$D203
BSLIFE	EQU	$D204
BDATNO	EQU	$D205	; Big bird atack No.
;--BSKEL use--
BSTTPT	EQU	$D206
BSKNPT	EQU	$D207
BSUPPT	EQU	$D208
BSDWPT	EQU	$D209
BSTTXP	EQU	$D20A
BSTTYP	EQU	$D20B
BSKNXP	EQU	$D20C
BSKNYP	EQU	$D20D
BSUPYP	EQU	$D20E
BSDWYP	EQU	$D20F
;-- Manbou & Mamuu use ---
BGMCNT	EQU	$D210
BGMCNT2	EQU	$D211
BGMCNT3	EQU	$D212
BGMCNT4	EQU	$D213
BGMTIM0	EQU	$D214
BGMWRK0	EQU	$D215
BGMWRK1	EQU	$D216
BGMCNT5	EQU	$D217
BGMTIM1	EQU	$D218
;---------------------
LDWRK0	EQU	$D200
LDWRK1	EQU	$D210
;-- ラストボス use ---
BOSSNO	EQU	$D219
BSCSOFF	EQU	$D21A
AGWPPX	EQU	$D21B
AGWPPY	EQU	$D21C
AGTMFG	EQU	$D21D
BSMUKI	EQU	$D21E
BSATCT	EQU	$D21F
BSDMCT	EQU	$D220
BSWRK0	EQU	$D221
BSWRK1	EQU	$D222
BSWRK2	EQU	$D223
GABOFG	EQU	$D224
GABOXD	EQU	$D225
GABOYD	EQU	$D226
BSKBMK	EQU	$D227
BSKBPT	EQU	$D228
;----------------------
NAMEOK	EQU	$D000
NMCPP1	EQU	$D001
NMCPP2	EQU	$D002
;----------------------
TLSCCT	EQU	$D000
TLSCCT2	EQU	$D001
;----------------------
OPWRK0	EQU	$D000	; Opening & ending use !
OPWRK1	EQU	$D001
OPWRK2	EQU	$D002
OPWRK3	EQU	$D003
OPWRK4	EQU	$D004
OPWRK5	EQU	$D005
NMCH0L	EQU	$D006	; Nami Chr TR. ADRESS !
NMCH0H	EQU	$D007
NMCH1L	EQU	$D008
NMCH1H	EQU	$D009
YAMACT	EQU	$D00A	; Yama BG write count !
EGGZL	EQU	$D00B	;      "    adress
EGGZH	EQU	$D00C	; 	"     H
OPWRK6	EQU	$D00D	;
OPWRK7	EQU	$D00E	;
OPWRK8	EQU	$D00F	;
OPFDCT	EQU	$D010	;Fade count
KIRAPT		EQU	$D011	;きらり パターン
KIRAFC		EQU	$D012	;きらり フレームカウンタ
DXCLPT		EQU	$D013	;ＤＸ カラー転送 パターン
DXCLFC		EQU	$D014	;ＤＸ カラー転送 フレームカウンタ
DXCLWT		EQU	$D015	;ＤＸ カラー転送 ウエイト
KIRAWL		EQU	$D016	;きらり ウエイト ＬＯＷ
KIRAWH		EQU	$D017	;きらり ウエイト ＨＩＧＨ
SKIPFG		EQU	$D018	;タイトルスキップフラグ
;--Ending USE--------------------	(注)アイテムセレクトと共用
EDWRK0	EQU	$D000
EDWRK1	EQU	$D001
EDWRK2	EQU	$D002
EDWRK3	EQU	$D003
EDWRK4	EQU	$D004
EDWRK5	EQU	$D005
EDTIM0	EQU	$D006
EDTIM1	EQU	$D007
EDTIM2	EQU	$D008
EDTIM3	EQU	$D009
EDCNT0	EQU	$D00A
EDCNT1	EQU	$D00B
EDCNT2	EQU	$D00C
EDCNT3	EQU	$D00D
EDMODE	EQU	$D00E
;- Not ERCLER --
EDCNT4	EQU	$D00F
EDCNT5	EQU	$D00F
;- Staff role -
STWRK0	EQU	$D010
STWRK1	EQU	$D011
STMODE	EQU	$D012
EDTIM4	EQU	$D013
;- for CGB -
KUJIRA_CLEAR	EQU	$D014	; くじらの下クリアしたライン数
KMARINMD	EQU	$D015	; かもめまりん モード
KMARINPT	EQU	$D016	; かもめまりん パターン
KMARINFC	EQU	$D017	; かもめまりん フレームカウンタ
MARINPT		EQU	$D018	; まりん カラー転送 パターン
KAMOMPT		EQU	$D019	; かもめ カラー転送 パターン
KMARINCHPT	EQU	$D01A	; かもめまりん キャラ転送 パターン
KAMOMOVE	EQU	$D01B	; かもめ キャラパターン
MARINSD		EQU	$D01C	; マリンの唄タイマー
MARINSD2	EQU	$D01D	;     ”
EDTIM5		EQU	$D01E	; 名前表示ウエイトタイマー
EDFADE		EQU	$D01F	; ＯＢＪフェードフラグ
KAMOTM		EQU	$D020	; かもめウエイトタイマー
EDSFADE		EQU	$D021	; サウンドフェード
LINKFADE	EQU	$D022	; りんくフェードカウント
;---------------
WAXBUF	EQU	$D100	; WANWAN calc buffer
WAYBUF	EQU	$D110	; WANWAN calc buffer
WAXBUF2	EQU	$D120	; WANWAN calc buffer Save
WAYBUF2	EQU	$D130	; WANWAN calc buffer Save
WACTXP	EQU	$D150	; 中心
WACTYP	EQU	$D151	;
WAINDX	EQU	$D152	; 対敵インデックス
WAINDX2	EQU	$D153	;モリブリン捕まりインデックス
WAINDX3	EQU	$D154	;ワンワン自分インデクス
;---------------------------------
MAXBUF	EQU	$D155	;マリンオプシヨンバッフアー
MAYBUF	EQU	$D175	;マリンオプシヨンバッフアー
MAZBUF	EQU	$D195	;マリンオプシヨンバッフアー
MAMBUF	EQU	$D1B5	;マリンオプシヨンバッフアー
;===============================
SOUNRAM EQU	$D300	; SOUND USE !!
;=Not clear=======================
;YKFLAG	EQU	$D400	; Yoko display flag !
;- - Next goto paramater - - - -
NXRMMD	EQU	$D401
NXDJNO	EQU	$D402
NXRMNO	EQU	$D403
NXRMPX	EQU	$D404
NXRMPY	EQU	$D405
;	EQU	$D406
;	EQU	$D407
;	EQU	$D408
;	EQU	$D409
;	EQU	$D40A
;	EQU	$D40B
;	EQU	$D40C
;	EQU	$D40D
;	EQU	$D40E
;	EQU	$D40F
;	EQU	$D410
;	EQU	$D411
;	EQU	$D412
;	EQU	$D413
;	EQU	$D414
;----------------------------
ENFLCT	EQU	$D415	;パワーセット用カウント！
;----------------------------
DRPSBF	EQU	$D416
;;;	+4
;----------------------
TOBIOF	EQU	$D45E	;プレイヤー飛び降り無し！
GMPTIM	EQU	$D45F	;地上マップキー待ち！
EFLFLG2	EQU	$D460	;１匹でも敵おちた
SEINDX	EQU	$D461	;たまご山インデックス
KEYSDON	EQU	$D462	;カギ謎 S E
WPLMODE	EQU	$D463	;PLMODE 前！
NYOTIM	EQU	$D464	;ニョロニョロしびれタイム！
SEIRENFG2 EQU	$D465	;楽器 BGM NO.
KAMOSE	EQU	$D466	;かもめ音！
;MAWTIM2	EQU	$D467	;マリン外まってるTIME(ごうけい）
MAWTIM	EQU	$D468	;マリン外まってるTIME！
;MAWAIT	EQU	$D469	;マリン外まってるフラグ！
LIFLG	EQU	$D46A	;ライン割り込みフラグ！
WDNJNPT	EQU	$D46B	;ダンジョンマップポイントひょうじ用！
BSFLFG2	EQU	$D46C	;ボスやられフラグ(専用サウンドセット）
PCTRAL	EQU	$D46D ;プレイヤー転送アドレス 左！
;;;;;;	EQU	$D46E
PCTRAR	EQU	$D46F ;プレイヤー転送アドレス 右！
;;;;;;	EQU	$D470
;-  -  -  -  -  -  -  -  -  -
ENFLCT2	EQU	$D471	;木のみセット用カウント！
KHIMICT	EQU	$D472	;カンバンひみつ順番カウント！
KHIMIFG	EQU	$D473	;     "    フラグ！
OKWARPF	EQU	$D474	;オカリナワープフラグ！
WARPFG2	EQU	$D475	;ワープ後回転落下フラグ！
FUKUROF	EQU	$D476	;ダンジョン１クリアー後ふくろうセットフラグ！
IKADAFG	EQU	$D477	; Ikada setted flag !
BIRDFG	EQU	$D478	; Boss bird seted flag !
TESTMD	EQU	$D479
POWRCT	EQU	$D47A	; Ken power up fail count
STARTFG	EQU	$D47B	; First start flag (sound set NAME REGI)
POWRFG	EQU	$D47C	; Ken power up flag !
;;MANBIKI	EQU	$D47D
MANBIKIF EQU	$D47E
RMINCT	EQU	$D47F
;----------------------
DJMPBF	EQU	$D480
;----------------------
DJGOFG	EQU	$D4C0
;----------------------
MSBGBF	EQU	$D500	; Mesege Before BG vram save buffer !
;----------------------
ENOJSZ	EQU	$D580	; Enemy OBJ hit size 
ENKNSZ	EQU	$D5C0	; Enemy ken cross size!
;----------------------
VRAMD	EQU	$D600
VRAMD2	EQU	$D650
;;;;;
;----------------------
;;;;GRNDPTW	EQU	$D6F7	; ダンジョン用地上マップ位置セーブ
ONOFTM	EQU	$D6F8	; On off block chenge time !
ONBGFG	EQU	$D6F9	; Player Foot BG on flag !
ONOFBLF	EQU	$D6FA	; On off block set flag !
ONOFFG	EQU	$D6FB	; On off block (which) flag !
PAUSFG	EQU	$D6FC
LCDCB	EQU	$D6FD
BLNKFG	EQU	$D6FE
VRFLG	EQU	$D6FF
;- - - - - - - - - - - - -
BGUNDT	EQU	$D700
TOURBF	EQU	$D7C0
;=======Save data work===============
SAVERM	EQU	$D800
GRRMSV	EQU	$D800		;
DJRMSV	EQU	$D900		;
;;;;;+$100
;-- Item table --
SAVEBF	EQU	$DB00
ITEMB	EQU	$DB00
ITEMA	EQU	$DB01
ITEMF	EQU	$DB02
;;;;            $DB0B
SPITF	EQU	$DB0C
HIREF	EQU	$DB0C	;アングラーの水かきを持っているかフラグ
KBINF	EQU	$DB0D	;秘密の薬を持っているかフラグ
MEGAF	EQU	$DB0E	;今、何を持っているかのわらしべフラグ
CLC20	EQU	$DB0F	;貝殻をいくつ集めたか？フラグ
MAWAIT	EQU	$DB10	;マリン外まってるフラグ！
;LUCKY	EQU	$DB0E
;MAMOR	EQU	$DB0F
;- - - - - -
GRKEY1	EQU	$DB11	; Ｌ１（テール）のカギ
GRKEY2	EQU	$DB12	; Ｌ４（アングラー）のカギ
GRKEY3	EQU	$DB13	; Ｌ６（フェイス）のカギ
GRKEY4	EQU	$DB14	; Ｌ７（バード）のカギ
GRKEY5	EQU	$DB15	; ６：Ｌ３（スライム）のカギ、０〜５：黄金のはっぱ
;
DMAPF1	EQU	$DB16
KONPF1	EQU	$DB17
PENDF1	EQU	$DB18
BKEYF1	EQU	$DB19
SKEYF1	EQU	$DB1A
;
DMAPF2	EQU	$DB1B
KONPF2	EQU	$DB1C
PENDF2	EQU	$DB1D
BKEYF2	EQU	$DB1E
SKEYF2	EQU	$DB1F
;
DMAPF3	EQU	$DB20
KONPF3	EQU	$DB21
PENDF3	EQU	$DB22
BKEYF3	EQU	$DB23
SKEYF3	EQU	$DB24
;
DMAPF4	EQU	$DB25
KONPF4	EQU	$DB26
PENDF4	EQU	$DB27
BKEYF4	EQU	$DB28
SKEYF4	EQU	$DB29
;
DMAPF5	EQU	$DB2A
KONPF5	EQU	$DB2B
PENDF5	EQU	$DB2C
BKEYF5	EQU	$DB2D
SKEYF5	EQU	$DB2E
;
DMAPF6	EQU	$DB2F
KONPF6	EQU	$DB30
PENDF6	EQU	$DB31
BKEYF6	EQU	$DB32
SKEYF6	EQU	$DB33
;
DMAPF7	EQU	$DB34
KONPF7	EQU	$DB35
PENDF7	EQU	$DB36
BKEYF7	EQU	$DB37
SKEYF7	EQU	$DB38
;
DMAPF8	EQU	$DB39
KONPF8	EQU	$DB3A
PENDF8	EQU	$DB3B
BKEYF8	EQU	$DB3C
SKEYF8	EQU	$DB3D
;
DMAPF9	EQU	$DB3E
KONPF9	EQU	$DB3F
PENDF9	EQU	$DB40
BKEYF9	EQU	$DB41
SKEYF9	EQU	$DB42
;
BULLEV	EQU	$DB43
TATLEV	EQU	$DB44
YAAACT	EQU	$DB45
MANBIKI	EQU	$DB46
;;;;;;;;;;;;;;	EQU	$DB46
RODCT 	EQU	$DB47	;(未使用）
MAWTIM2	EQU	$DB47	;マリン外まってるTIME(ごうけい）
PAPA0FG	EQU	$DB48
ONPUFG	EQU	$DB49	;リンクが覚えた曲数(ＢＩＴフラグ)
FUESLPT	EQU	$DB4A
KINOKFG	EQU	$DB4B
TUBOCT	EQU	$DB4C
BOMBCT	EQU	$DB4D
KENLEV	EQU	$DB4E
;
NAME	EQU	$DB4F	; Player name 5 of Words
;;	EQU	$DB50
;;	EQU	$DB51
;;	EQU	$DB52
;;	EQU	$DB53
;- - - - - - - - - - - -
;;;;;;;;;;;;;;;;;;;Fury	EQU	$DB54
GRNDPTW	EQU	$DB54
;- - - - - - - - - - - -
URURIFG	EQU	$DB55	; うるりらじいさん進行状況！
WANFLG	EQU	$DB56	; ワンワン状態！
DETHCT	EQU	$DB57	; コンチニュー回数！ Max 999
;;;;	+1
URAFLG	EQU	$DB59
HARTCT	EQU	$DB5A	;体力値
HARTMX	EQU	$DB5B	;ハート数
KAKERCT	EQU	$DB5C	; Hart kakera cach count !
COINC1	EQU	$DB5D
COINC2	EQU	$DB5E
CONTBF	EQU	$DB5F	; Continue start pos. 5 bytes
WARPSV	EQU	$DB65	; Danjyon warp point set flag 
;; x9
;
KEYECT	EQU	$DB6D   ; Key of E colect count !
MANBICT	EQU	$DB6E	; マンビキ カウント！
;;;CLC20	EQU	$DB6E   ; Ken power chip Max 20
;------------------------------
TAMA0PT	EQU	$DB6F	; 柱壊し玉座標！
TAMA0XP	EQU	$DB70	; -
TAMA0YP	EQU	$DB71	; -
HASRCNT	EQU	$DB72	; 柱壊しカウント
MARINFG	EQU	$DB73	; マリンオプションフラグ！
MARINOF	EQU	$DB74	; マリンオプションはなれフラグ！
TRYCYCT	EQU	$DB75	; トレーシー薬売りカウント
PWMAX	EQU	$DB76	; 粉持てる数
BOMAX	EQU	$DB77	; バクダン持てる数
YAMAX	EQU	$DB78	; 矢持てる数
OBAKEFG	EQU	$DB79	; オバケオプションフラグ
OBAKEFG2 EQU    $DB7A	; オバケオプションフラグ 2
NIWATFG	EQU	$DB7B	; ニワトリ オプションフラグ
L9NZFG	EQU	$DB7C	; レベル９謎内容！
BUMENO	EQU	$DB7D	; ブーメランのひきかえ ITEM NO.
KDMSCTS	EQU	$DB7E	;子供メッセージカウント(セーブ用）
WARAFG	EQU	$DB7F	; わらしべアイテム表示なしフラグ！
;===============================================
;
;
;
;- - - For name registration use work - - -
NAMEBF	EQU	$DB80
;;;;; 5 Words x 3 men
;- - - - - - - - - - - - -
COINU1	EQU	$DB8F
COINU2	EQU	$DB90
COIND1	EQU	$DB91
COIND2	EQU	$DB92
HARTUP	EQU	$DB93	; 体力増やすぞフラグ
HARTDW	EQU	$DB94	; 体力減らすぞフラグ
;----------------------
GMMODE	EQU	$DB95
ITMODE	EQU	$DB96
BGPFG	EQU	$DB97
OBP0FG	EQU	$DB98
OBP1FG	EQU	$DB99
WNDYPS	EQU	$DB9A
;GRNDPT	EQU	$DB9B
WGRNDPT	EQU	$DB9C
WPLXPSL	EQU	$DB9D
WPLYPSL	EQU	$DB9E
WPLXPS2	EQU	$DB9F
WPLYPS2	EQU	$DBA0
;PLCMKI	EQU	$DBA1
;PLCHPT	EQU	$DBA2
ITEMPT	EQU	$DBA3	; Window item waku point
ITEMMX	EQU	$DBA4
DJFLAG	EQU	$DBA5
;;;MSGEFG	EQU	$DBA4
NMSLPT	EQU	$DBA6
NAMEON	EQU	$DBA7
NRNMPT	EQU	$DBA8
NRWDPT	EQU	$DBA9
MRWDPT	EQU	$DBAA		;;;;;;;;; BOMB
;DJSVBF	EQU	$DBAB
INCNT	EQU	$DBAC
;DNJNNO	EQU	$DBAD
DNJNPT	EQU	$DBAE
PBANK	EQU	$DBAF
DAMPFG	EQU	$DBB0
PLITXS	EQU	$DBB1
PLITYS	EQU	$DBB2
DALVFG	EQU	$DBB3		;;;;;;;;; BOMB
GMAPPT	EQU	$DBB4	; Ground map cursol point!
ENFLPT	EQU	$DBB5	; Enemy fail buffer pointer !
ENFLBF	EQU	$DBB6   ; Enemy fail buffer !
;;;; 16 of
GMOVFG	EQU	$DBC6
PLFLSH	EQU	$DBC7
NXRMPZ	EQU	$DBC8
TOUROU	EQU	$DBC9
;TOURFG	EQU	$DBCA
ANAFLG	EQU	$DBCB
;- - Danjyon item buffer -For display - - -
DMAPF	EQU	$DBCC
KONPF	EQU	$DBCD
PENDF	EQU	$DBCE
BKEYF	EQU	$DBCF
SKEYF	EQU	$DBD0
;- - - - - - 
SAVEFG	EQU	$DBD1	; Non save Continue flag !
;- - - - - -
DETHCTF	EQU	$DC00
HARTCTF	EQU	$DC06
HARTMXF	EQU	$DC09
PHOTOFG	EQU	$DC0C	; 写真フラグ（撮ったんか？）
;	EQU	$DC0E
;
CLOTHFG	EQU	$DC0F	;リンクが着ている服ナンバー
;			０：普通、元のまま
;			１：攻撃力ＵＰ
;			２：防御力ＵＰ
;
;--------------------------------------------------------------
;	ＣＧＢ使用
;--------------------------------------------------------------
CGWORK		EQU	$DC10		; カラーデータ用ワーク
BGCGWK		EQU	CGWORK		; （ＢＧ）
OBCGWK		EQU	BGCGWK+$40	; （ＯＢＪ）
;		EQU	OBCGWK+$40
VRAMD_AT	EQU	$DC90		; ＢＧアトリビュート用
;			VRAMD_AT+$30
;
;--------------------------------------------------------------
BELTBF	EQU	$DCC0			; Belt convear Chr. buffer
FUKU_CHR_BUF	EQU	BELTBF		;服のキャラクターを消すのに使用
;
;-----------------------------------------------
;	場合分けカラーＤＭＡ転送ビットフラグ
;-----------------------------------------------
BGCOL_BITFG	EQU	%00000001
OBJCOL_BITFG	EQU	%00000010
COLDMA_BITFG	EQU	%00000011
;
;--------------------------------------------------------------
;	ＣＧＢ使用
;--------------------------------------------------------------
;		EQU	BELTBF+$40	; 多分４０Ｈ使ってる？
;;;kk;;;CGBFLG		EQU	$DD00		; カラーゲームボーイ フラグ
CGDMAF		EQU	$DDD1		; カラー転送フラグ
COLFLG		EQU	$DDD2		; カラーＮＯフラグ
COLOFS		EQU	$DDD3		; カラー部分転送オフセット
COLLNG		EQU	$DDD4		;       ”      長さ
FADEMDFG	EQU	$DDD5		; フェード用モードフラグ
MORIFLG		EQU	$DDD6		; 迷いの森 カラーチェンジフラグ
MORIFCT		EQU	$DDD7		;       ”       フレームカウンタ
DARKFLG		EQU	MORIFLG		; 暗い部屋 カラーチェンジフラグ
DARKFCT		EQU	MORIFCT		;       ”       フレームカウンタ
UNTATR		EQU	$DDD8		;アトリビュートデータ読み込み用
HAKAFG		EQU	$DDD9		;墓石を順番に触れたチェック
;
;
;--------------------------------------------------------------
;	新ダンジョン用
;--------------------------------------------------------------
DMAPFS		EQU	$DDDA		;
KONPFS		EQU	$DDDB		;
PENDFS		EQU	$DDDC		;
BKEYFS		EQU	$DDDD		;
SKEYFS		EQU	$DDDE		;
;
NEWDJRM		EQU	$DDE0
;	$DDE0から$DDFFまで新ダンジョンに使用
;
;--------------------------------------------------------------
;	ＣＧＢ専用
;--------------------------------------------------------------
OMHNFG		equ	0de00h		; ＯＡＭソートフラグ
CallBank	EQU	0de01h		; ＣＡＬＬバンク
CallHigh	EQU	0de02h		; ＣＡＬＬハイ
CallLow		EQU	0de03h		; ＣＡＬＬロー
ReturnBank	EQU	0de04h		; リターンバンク
MSOFTM2		EQU	ReturnBank+1	; メッセージ連続防止タイム（プリンタ）
;
;-----------------------------------------------
;	アイテムセレクト
;-----------------------------------------------
ITS_CNT		EQU	MSOFTM2+1	;楽器レインボーカウンタ
ITS_IDX		EQU	ITS_CNT+1	;楽器レインボーＩＮＤＥＸ
PUSH_CNT	EQU	ITS_IDX+1	;ＰＵＳＨ ＳＥＬＥＣＴカウンタ
PUSH_IDX	EQU	PUSH_CNT+1	;ＰＵＳＨ ＳＥＬＥＣＴＩＮＤＥＸ
PUSH_YCNT	EQU	PUSH_IDX+1	;ＰＵＳＨ ＳＥＬＥＣＴ Ｙカウンタ
;-----------------------------------------------
BIRDOFF		EQU	PUSH_YCNT+1	;レベル７鳥ボス倒したフラグ
koko		EQU	BIRDOFF+1	;ここから使うべし！
;
;--------------------------------------------------------------
;	ＣＧＢ専用でバンク２を使用
;--------------------------------------------------------------
COINBF		EQU	$D000
ENSAKIX		EQU	$D030
ENSAKIY		EQU	$D040
ENMOTOX		EQU	$D050
ENMOTOY		EQU	$D060
;			$D070
;
;--------------------------------------------------------------
;バンク３のカラーバッファにデータがすでにあるかフラグ
;		(注)このＲＡＭは、バンク３を使用している
;--------------------------------------------------------------
COLBK3FG	EQU	$D000		;
;
;
;-----------------------------------------------
;	地上ユニットバンク２ 書き換えビット
;-----------------------------------------------
UNIT_TRAN_BIT	EQU	%10000000
;
;--------------------------------------------------------------
;	ポケットプリンタ用
;--------------------------------------------------------------
sseq		EQU	ITMODE
prnbuf		EQU	$C200		; キャラクターＮｏ．バッファー
;		EQU	prnbuf+2*20*16	; サイズ ２８０Ｈ
scrbuf		EQU	$D000		; プリンター転送データバッファー
;					; サイズ １６８Ｈ
chradr		EQU	scrbuf+18*20	;
PhaseNo		EQU	chradr+3	; パケット送信Phase分け
SioWatchDogF	EQU	PhaseNo+1	; 
PrinterStatus	EQU	SioWatchDogF+1	; プリンタステータス
Concentration	EQU	PrinterStatus+2	; 濃度
EndofTrans	EQU	Concentration+1	; １パケット送信終了、２＝完全
SioIntOccur	EQU	EndofTrans+1	; ＳＩＯ割込みあり
DuringTransPKT	EQU	SioIntOccur+1	; パケット送信中フラグ
PreambleSendF	EQU	DuringTransPKT+1; プリアンブル送信済みフラグ
HeaderSendF	EQU	PreambleSendF+1	; ヘッダー送信終了フラグ
Data1SendEndF	EQU	HeaderSendF+1	; データ／データパケット送信済み
CheckSumSendF	EQU	Data1SendEndF+1	; チェックサム送信済み
DummySendF	EQU	CheckSumSendF+1	; ダミーバイト送信済み
SioCheckSum_S	EQU	DummySendF+1	; 送信チェックサム
BufPointer	EQU	SioCheckSum_S+2	; 送信バッファポインタ
ForceEnd	EQU	BufPointer+2	;	
BusyFlag	EQU	ForceEnd+1	;
NumofFeed	EQU	BusyFlag+1	;Feed行数
NumofSheet	EQU	NumofFeed+1	;印字枚数
ValueofParette	EQU	NumofSheet+1	;パレット値
NmiTimer	EQU	ValueofParette+1
PrnTimer	EQU	NmiTimer+1	;WatchDogTimer
BufPointer_base	EQU	PrnTimer+1	;送信バッファアドレス
BufPointer_base1	EQU	BufPointer_base+2	;送信バッファアドレス待避１
BufPointer_base2	EQU	BufPointer_base1+2	;送信バッファアドレス待避２
TransCount	EQU	BufPointer_base2+2	;送信中データのカウンタ
TransCount1	EQU	TransCount+2	;送信カウンタ待避１
TransCount2	EQU	TransCount1+2	;送信カウンタ待避２
SBbak		EQU	TransCount2+2	;for プリンタステータス
FollowingData	EQU	SBbak+1		; 印字指示、データパケット
RequestPhaseNo	EQU	FollowingData+1	; Requested Phase No
LastPhaseNo	EQU	RequestPhaseNo+1;直前のパケット送信
PrinterStatusLast	EQU	LastPhaseNo+1	; プリンタステータス
LineCount	EQU	PrinterStatusLast+1	;１組み２ライン×９＝１８ライン
PrnDataAddress	EQU	LineCount+1	;------ＮｏｔＵｓｅｄ
scradr		EQU	PrnDataAddress+2;
CompressF	EQU	scradr+2	;圧縮or非圧縮
CompressNum	EQU	CompressF+1	;パケット毎の圧縮データバイト数
CompressFtbl	EQU	CompressNum+2*9	;パケット毎の圧縮or非圧縮フラグ
CompressFReal	EQU	CompressFtbl+1*9;圧縮or非圧縮
LastBlock	EQU	CompressFReal+1	;最後のブロックとEODの送信
HeaderWork	EQU	LastBlock+1	;ヘッダー以降送信バッファ
PrinterErrorNo	EQU	HeaderWork+14	;プリンタエラー番号
sseqbak		EQU	PrinterErrorNo+1;
DelayNMI6	EQU	sseqbak+1	;
print_timer	EQU	DelayNMI6+1	; プリントタイマー
print_xpos	equ	print_timer+1	; プリントＯＡＭ　Ｘポジション
print_muki	equ	print_xpos+1	; プリントＯＡＭ　向き
PHOTONO		equ	print_muki+1	; 写真Ｎｏ．
YUBIPOS		EQU	PHOTONO+1	; 指ポジション
YUBIXPS		EQU	YUBIPOS+1	; 指Ｘポジション
YUBIYPS		EQU	YUBIXPS+1	; 指Ｙポジション
YUBIMOD		EQU	YUBIYPS+1	; 指モード
YUBIFCT		EQU	YUBIMOD+1	; 指フレームカウンタ
MSGFIRST	EQU	YUBIFCT+1	; メッセージしゃべった？
printer_ram_end	EQU	MSGFIRST+1	; 
;
;--------------------------------------------------------------
;	寸劇で使用(敵のＲＡＭエリアと共用)
;--------------------------------------------------------------
GEKI_OAM_IDX	EQU	ENXPSL
G_PLPTN		EQU	GEKI_OAM_IDX+1
G_PLXPS		EQU	G_PLPTN+1
G_PLYPS		EQU	G_PLXPS+1
G_PLCNT		EQU	G_PLYPS+1
G_PLMOD		EQU	G_PLCNT+1
G_PLXSTP	EQU	G_PLMOD+1
G_MRNPTN	EQU	G_PLXSTP+1
G_MRNXPS	EQU	G_MRNPTN+1
G_MRNYPS	EQU	G_MRNXPS+1
G_MRNCNT	EQU	G_MRNYPS+1
G_MRNMOD	EQU	G_MRNCNT+1
G_KZMCNT	EQU	G_MRNMOD+1
G_KZMPTN	EQU	G_KZMCNT+1
G_TRNMOD	EQU	G_KZMPTN+1
G_TRNCNT	EQU	G_TRNMOD+1
G_TRNPTN	EQU	G_TRNCNT+1
G_TRNXPS	EQU	G_TRNPTN+1
G_TRNYPS	EQU	G_TRNXPS+1
G_TIMER		EQU	G_TRNYPS+1
G_PHOTOFG	EQU	G_TIMER+1
G_LCDMOD	EQU	G_PHOTOFG+1
G_LCDYPS	EQU	G_LCDMOD+1
G_LCDXPS	EQU	G_LCDYPS+1
G_LCDXSTP	EQU	G_LCDXPS+1
G_LCDPTN	EQU	G_LCDXSTP+1
G_LCDCNT	EQU	G_LCDPTN+1
G_PHTPTN	EQU	G_LCDCNT+1
G_PHTXPS	EQU	G_PHTPTN+1
G_PHTYPS	EQU	G_PHTXPS+1
G_PHTMOD	EQU	G_PHTYPS+1
G_PHTCNT	EQU	G_PHTMOD+1
G_PHTXSTP	EQU	G_PHTCNT+1
G_WANPTN	EQU	G_PHTXSTP+1
G_WANYPS	EQU	G_WANPTN+1
G_WANXPS	EQU	G_WANYPS+1
G_WANMOD	EQU	G_WANXPS+1
G_KACHINFG	EQU	G_WANMOD+1
G_WANCNT	EQU	G_KACHINFG+1
G_ZORAPTN	EQU	G_WANCNT+1
G_ZORAXPS	EQU	G_ZORAPTN+1
G_ZORAYPS	EQU	G_ZORAXPS+1
G_TR_CNT	EQU	G_ZORAYPS+1		;転送量
G_MOTO_ADR	EQU	G_TR_CNT+(2*4)		;転送元アドレス
G_SAKI_ADR	EQU	G_MOTO_ADR+(2*4)	;転送先アドレス
G_MOTOBANK	EQU	G_SAKI_ADR+(2*4)	;転送元バンク
G_ANIM_CNT	EQU	G_MOTOBANK+(1*4)	;表示フレームカウンタ
G_TRNC_NO	EQU	G_ANIM_CNT+(1*4)	;各転送キャラクターＩＮＤＥＸ
G_CMRPTN	EQU	G_TRNC_NO+(1*4)
G_CMRYPS	EQU	G_CMRPTN+1
G_CMRXPS	EQU	G_CMRYPS+1
G_WAXBUF	EQU	G_CMRXPS+1
G_WAYBUF	EQU	G_WAXBUF+$010
G_WANYSPD	EQU	G_WAYBUF+$010
G_WANYSDR	EQU	G_WANYSPD+1
G_WANMK		EQU	G_WANYSDR+1	;０：右　１：左　２：正面
G_TIMER1	EQU	G_WANMK+1
G_WANSTP	EQU	G_TIMER1+1
G_PLXSPD	EQU	G_WANSTP+1
G_PLXSDR	EQU	G_PLXSPD+1
G_KOUKAXPS	EQU	G_PLXSDR+1
G_KOUKAYPS	EQU	G_KOUKAXPS+1
G_PHTMK		EQU	G_KOUKAYPS+1
;		EQU	G_PHTMK+1
;
;
;--------------------------------------------------------------
;- - TEST SAVE DATA - - -
;********************************
;*	スペース キャラクタ	*
;********************************
;
SPACE	EQU	$7F		; クリア キャラクタ コード
BETA	EQU	$7E		; べた キャラクタ コード
;
;********************************
;*	スタック   		*
;********************************
;
STACK	EQU	$DFFF
;
;********************************
;*	サウンド   		*
;********************************
;
;SOUNDIT	EQU	$4000
;SOUNDCL	EQU	$4003
;SOUNDSB	EQU	$4006
;;
;;
;;SOUND	EQU	$7FF0
;--------------------------------
CHRDAT	EQU	$4000
PLCHDT	EQU	$4000+$1800
CHRRAM	EQU	$8000
;
;********************************
;*	セーブ エリア   	*
;********************************
SAVEDT	EQU	$A000+$100
;
SAVED1	EQU	$A000+$100		;セーブチェック用 1,2,3,4,5
SAVEB1	EQU	SAVED1+$05		;部屋情報
SAVEI1	EQU	SAVEB1+$100+$200	;使用アイテム用
SAVES1	EQU	SAVEI1+$7F+$01
;
SAVED2	EQU	SAVES1+$05+$20+$01+$02
SAVEB2	EQU	SAVED2+$05
SAVEI2	EQU	SAVEB2+$100+$200
SAVES2	EQU	SAVEI2+$7F+$01
;
SAVED3	EQU	SAVES2+$05+$20+$01+$02
SAVEB3	EQU	SAVED3+$05
SAVEI3	EQU	SAVEB3+$100+$200
SAVES3	EQU	SAVEI3+$7F+$01
;
;;;;	+7
;
;	ORG	$A000
;
;SAVE_CK		DS	$10
;SAVE_AREA	DS	$100
;SAVE_SUM	DS	$02
;- - - - - - -
DJROOM	EQU	$06	; Danjyon room no. 0xx or 1xx check no.
DJMAX	EQU	$0A	; Dundeon : Minka
DJROOM2	EQU	$1A	; Room No. 0xx
NEWDJ	EQU	$0FF	; 新ダンジョンナンバー
;===============================================
;;;;;;;;	END
