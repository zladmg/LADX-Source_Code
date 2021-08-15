
		onbankgroup

;****************************************************************
;*								*
;*	タイトル    ：	ＣＧＢゼルダ				*
;*	ファイル名  ：	ZJP.DMG					*
;*	処理内容    ：	移動したテーブルジャンプ関係		*
;*	作成日付    ：  １９９８／０６／１１			*
;*								*
;****************************************************************
;
	NLIST
;
;============== バンク０ ================================================
BANK0		GROUP	0
;-------------<	ZMA >-------------
		EXTERN	VRRET
;
;-------------<	ZBS >-------------
		EXTERN	RMBGST,BANKST,BANKS2,BANKS3,DJBKST,GRBKST
		EXTERN	BANKTR,GMAPBKST,GOVBKST,GMAPCHST
		EXTERN	OPBKST,OPBKS2,PEACHBKST,LOVEBKST,KAB1BKST
		EXTERN	ENDCHA,ENDCHB2,ENDCHC,ENDCHB,ENDCHD,ENDCHE
		EXTERN	ENDCHF,ENDCHG,ENDCHA1,ENDCHYM,ENDCHA2
		EXTERN	KABABKST,TOUBGCH
		EXTERN	MARINBKST,ENDMSBKST
;
;-------------<	ZCO >-------------
		EXTERN	V_RAMC,V_RAMB,V_RAMD
;
;============== バンク３ ================================================
BANK3		GROUP	3
;-------------<	ZEN >-------------
		EXTERN	PYAAAMV,BOMBRMV,PRTBMMV
		EXTERN	KTOBJMV,BLOCKMV,OCTA1MV,OCTAMMV,MORI1MV,MORYAMV
		EXTERN	BOMBOMV,HIPLPMV,BOSS1MV,KWUSOMV,HART1MV,RUPY1MV
		EXTERN	YOSEIMV,KEYSMMV,PLTATMV,HMASKMV,POWERMV,KINOMMV
		EXTERN	KAKERMV,HARTBMV,ALOW1MV,BOMB1MV,GAKKIMV,KINOKMV
		EXTERN	MGPOWMV,KAKINMV,KAIINMV,MSTESFMV
;
		EXTERN	ENRET,BLOCKIT,TAKARIT,OCTA1IT,MORI1IT,RIVERIT
		EXTERN	GHOSTIT,GHOSBIT,GHOSSIT,BOMBOIT,HEIS0IT,ZORA_INIT
		EXTERN	BABULIT,SPARKIT,SPAR2IT,SLIMBIT,BASSFIT,STATINC
		EXTERN	STATINC,MAGE0IT,BOSS1IT,KWUSOIT,HAYAMITL,HART1IT
		EXTERN	ITEMIT,KEYSMIT,PLTATIT,ENRET2,GAKKIIT,ANAINIT2
		EXTERN	KAIINIT,GIRL0IT,PEOPLIT,BABA0IT,FUKUROIT,TARIN_INIT
		EXTERN	EWOODIT,SHOPIT,EVENTIT,HAYABITL,BGKAOITL
		EXTERN	BSLIMITL,TBOSSITL,BSNAKITL,DDNGOITL,WARPIT,BFIREITL
		EXTERN	BBIRDITL,PSCRLIT,BFISHITL,HIKUSIT,IKADAIT,WANWANIT
		EXTERN	KODOMBIT,KODOMCIT,PAPA1IT,MSWANIT,BHANAIT,DENWAIT
		EXTERN	BEDINIT,IZUMIIT,FLYITIT,RANEMIT,PSADD8,KARBYIT
		EXTERN	RICHDIT,DAISUIT,BALEEIT,TBEAMIT,LOPEIT,LIFTYIT
		EXTERN	MONKYIT,YOSSIIT,PAPA2IT,TURIIT,PKURIIT,SHIGEIT
		EXTERN	GIRL1IT,GIRL2IT,BABUBIT,FLYIT2IT,BOSSIT,RGB_GOSTIT
		EXTERN	R_BLK_INIT,G_BLK_INIT,B_BLK_INIT,FLY_BND_INIT
		EXTERN	BNDMAN_INIT,BLKHINO_INIT,FKBK_INIT,FK_BOSS_INIT
		EXTERN	R_MONBAN_INIT,L_MONBAN_INIT,NYO_SLM_INIT
;
;============== バンク４ ==============================================
BANK4		GROUP	4
;-------------<	ZE2 >-------------
		EXTERN	RIVERMV,GHOSTMV,GHOSBMV,GHOSSMV,HAYAMMV,RENO7MV
		EXTERN	NYAMAMV,CHUNLIMV,UFOCHMV,TEKYUMV,BHOLEMV,BHOL2MV
		EXTERN	FISHGMV,SBOMBMV,OBOMBMV,NINJAMV,NINTMMV,HAYABMV
		EXTERN	BGKAOMV,BSLIMMV,TBOSSMV
;
;============== バンク５ ==============================================
BANK5		GROUP	5
;-------------<	ZE3 >-------------
		EXTERN	GIRL0MV,PAPA0MV,BABA0MV,ONPUMV,USAG2MV
		EXTERN	BSNAKMV,GORMAMV,DDNGOMV,BFIREMV,BBIRDMV,BFISHMV
		EXTERN	SWTRPMV,IKADAMV,NIWATMV,WANWANMV
;
;============== バンク６ ==============================================
BANK6		GROUP	6
;-------------<	ZE4 >-------------
		EXTERN	GKFLSHL,TEKTAMV,KUZUHMV,BABULMV,SPARKMV,SPAR2MV
		EXTERN	PORUSMV,BLBATMV,SKEL0MV,SLIMBMV,SLIMSMV,MUMMYMV
		EXTERN	MOTOSMV,MAGE0MV,SONICMV,LAIKUMV,TRAP0MV,FUKUROMV
		EXTERN	TERSAMV,BTFLYMV,KODOMAMV,KODOMBMV,KODOMCMV,KODOMDMV
		EXTERN	URURIMV,OZWANMV,MSWANMV,KARASMV,TRYCYMV,BHANAMV
		EXTERN	BHFIRMV,SHANAMV,DENWAMV,OBAQMV,OBQBARMV
		EXTERN	IZUMIMV,HATO0MV,FLYITMV,RANEMMV,NOMOSMV,HINO0MV
		EXTERN	SWBLKMV,SWBLK2MV,MIZUBMV,SLOTMV
		EXTERN	KARBYMV,OCHANMV,HEISMMV,RICHDMV,FLYIT2MV
;
;============== バンク７ ==============================================
BANK7		GROUP	7
;-------------<	ZE5 >-------------
		EXTERN	TAKARMV,HEIS0MV,INOSIMV,BSKELMV,HEISBMV,DAISUMV
		EXTERN	AMENBMV,YUKABMV,YSLIMMV,BALEEMV,TBEAMMV,KURI0MV
		EXTERN	PIHATMV,LOPEMV,LIFTXMV,LIFTYMV,LIFTDMV
		EXTERN	LIFTTMV,HASIRMV,TAMA0MV,GESSOMV,MONKYMV,OCTAJMV
		EXTERN	YOSSIMV,AMUSIMV,YUKASMV,HANNYMV,PAPA2MV,KUMA0MV
		EXTERN	PAPALMV,MAMADMV,TURIMV,SHIGEMV
;
;==============	バンク８ ================================================
BANK8		GROUP	8
;-------------<	ZVD >-------------
		EXTERN	PEACHDT,LOVEDT,KABADT,PSLCTBG,WINDBG,PSLCTBG2
		EXTERN	NSLCTBG,NCLERBG,GMAPBG,GOVERBG,GMAPCLB,NCOPYBG
		EXTERN	TSAVEBG,OPENBG,OPENBG2,OPENBG3,LOGODT,WINDBG2
		EXTERN	MAMUUBG,KABEDT1,TOUBGDT,ENDYMBG,EWAKUBG,EWAKUBG2
		EXTERN	ENDBGA1,ENDBGA2,ENDBGA3,ENDBGA4,ENDBGA5,ENDBGA
		EXTERN	ENDBGB2,ENDBGC,ENDBGB,ENDBGD,ENDBGE,ENDBGF,ENDBGG
		EXTERN	OPENBG_CGB
;
;============== バンク１５ ==============================================
BANK15		GROUP	$15
;-------------<	ZE8 >-------------
		EXTERN	NXOMSB,SADWST,NXOMCL,ENRMCLL,SKEL1MV,R7BEMMV
		EXTERN	EWOODMV,MSPNTMV,IWAGOMV,SWBLKUMV,SWBLKDMV,SWBLKLMV
		EXTERN	SWBLKRMV,ONOFSMV,MVHASMV,AMUSTMV,UNIUNIMV,KANIMV
		EXTERN	BLANKAMV,SARUKMV,MOUSEMV,HODAIMV,SANBOMV,MBOSSMV
                EXTERN  BOSSMV,SIROSMV
		EXTERN	BOOKMV,BEDINMV,KUMASMV
;
;============== バンク１７ ==============================================
BANK17		GROUP	$17
		EXTERN	EDAIMV
;
;============== バンク１８ ==============================================
BANK18		GROUP	$18
;-------------<	ZE6 >-------------
		EXTERN	FUCKSMV,POWDRMV,HINTOMV,PSCRLMV,HIKUSMV,TANABEMV
		EXTERN	MAMA0MV,MAMA1MV,PAPA1MV,KAMEIMV,NYOROMV,PKURIMV
		EXTERN	TUKAIMV,ARIMAMV,BOXERMV,ZONBIMV,KHIMIMV,GIRL1MV
		EXTERN	GIRL2MV,MAMUUMV,TODDMV,MANBOMV,USAGIMV
		EXTERN	AKUMAMV,ZORAMV,MAMAD2MV,NTORIMV
                EXTERN  GMUSIMV
;
;============== バンク１９ ==============================================
BANK19		GROUP	$19
;-------------<	ZE7 >-------------
		EXTERN	ENSCRL,KTFLCS,BUMERMV,COPYAMV,WARPMV,FOXDOGMV
		EXTERN	HEIHOMV,KAERUMV,SWIMPMV,MOAIMV,PUKPKMV,PUKPVMV
		EXTERN	PUKPJMV,WANIMV,GAGEMV,OBAKEMV,NIWAXMV,YTUBOMV
		EXTERN	DOSNSMV,DOSNBMV,TAIATMV,FIREBMV,BABUBMV,KAZAMMV
		EXTERN	SEIRENMV,KENBMMV
;
;============== バンク３６ ==============================================
BANK36		GROUP	$36
;-------------<	ZE9 >-------------
		EXTERN	PANELMV,PANEL2MV,ZE9_BANK
		EXTERN	RGB_MUSI,RGB_GOST,RGB_BLOCK,FLING_BOUND
		EXTERN	BLOCK_HINO,HINO_IWA,MONBAN_HEI,FUKU_BOOK
		EXTERN	NYORO_SLIME,FUKU_BOSS,PACKNMV,CAMERA_BOY
;
;
;================================================================
		PUBALL
;
BANK20	GROUP	$20
;
	LIB	ZRAM	; RAM ＥＱＵＡＴＥ ファイル
	LIB	ZBN	; BG unit no file !
;;;;;;;;	LIB	ZROM	; 登録 データ ファイル
;
;---------------------------------------------------------------
	KANJI
	ISDMG
;
	ORG	$4000
	LIST
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ＺＥＳ．ＤＭＧから移動したルーチン			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;
;+--------------------------------------+
;|	敵の各プログラムアドレス	|
;+--------------------------------------+
GET_ENHL_DATA
		DL	PYAAAMV		; 00 飛んでる矢かな？
		DL	BUMERMV		; 01 ブーメラン
		DL	BOMBRMV		; 02 バクダン
		DL	FUCKSMV		; 03 フックショット
		DL	PRTBMMV		; 04 フックショットの頭
		DL	KTOBJMV		; 05 小石みたいなやつ(破片)
		DL	BLOCKMV		; 06 ブロック関係
		DL	TAKARMV		; 07 宝箱から出てくるアイテム
		DL	POWDRMV		; 08 ??Magic powder??
		DL	OCTA1MV		; 09オクタロック
		DL	OCTAMMV		; 0Aオクタロックのタマ
		DL	MORI1MV		; 0B モリブリン
		DL	MORYAMV		; 0C モリブリンの矢
		DL	TEKTAMV		; 0D テクタイト
		DL	RIVERMV		; 0Eリーバー
		DL	KUZUHMV		; 0F 魔法の粉？
		DL	GHOSTMV		; 10 ギーニ
		DL	GHOSBMV		; 11 デグギーニ
		DL	GHOSSMV		; 12
		DL	BOMBOMV		; 13
		DL	HEIS0MV		; 14兵装
		DL	BABULMV		; 15 バブル
		DL	SPARKMV		; 16スパーク
		DL	SPAR2MV		; 17スパーク
		DL	PORUSMV		; 18 ポルスボイス
		DL	BLBATMV		; 19 キース(洞窟コウモリ)
		DL	SKEL0MV		; 1A スタルフォス(攻撃する奴)
		DL	SLIMBMV		; 1B スライム
		DL	SLIMSMV		; 1C スライム
		DL	00		; 1D BASSFMV
		DL	SKEL1MV		; 1E スタルフォス(逃げる奴)
		DL	MUMMYMV		; 1F
		DL	MOTOSMV		; 20 ポーン
		DL	MAGE0MV		; 21
		DL	SONICMV		; 22 ウィズローブ
		DL	LAIKUMV		; 23 ライクライク
		DL	HIPLPMV		; 24 ヒップループ
		DL	BOSS1MV		; 25
		DL	KWUSOMV		; 26
		DL	TRAP0MV		; 27トラップ
		DL	COPYAMV		; 28 マネマネ
		DL	HAYAMMV		; 29 テール(ザコ)
		DL	RENO7MV		; 2A ビム
		DL	R7BEMMV		; 2B ビムのビーム
		DL	INOSIMV		; 2C トゲゾー
		DL	HART1MV		; 2D ツボ等の下から出てくるハート
		DL	RUPY1MV		; 2E ルピー
		DL	YOSEIMV		; 2F 妖精
		DL	KEYSMMV		; 30 落ちてくる鍵
		DL	PLTATMV		; 31 リンクの剣(落ちてるやつ)
		DL	HMASKMV		; 32
		DL	POWERMV		; 33 力のかけら
		DL	KINOMMV		; 34 守りのかけら
		DL	KAKERMV		; 35 ハートのかけら
		DL	HARTBMV		; 36 ハートの器
		DL	ALOW1MV 	; 37 MSTESTMV ツボ等の下から出てくる矢
		DL	BOMB1MV		; 38 ツボ等の下から出てくる爆弾
		DL	GAKKIMV		; 39楽器
		DL	KINOKMV		; 3A 魔法の粉のキノコ
		DL	MGPOWMV		; 3B
		DL	KAKINMV		; 3C 葉っぱ！
		DL	KAIINMV		; 3D 貝殻！
		DL	GIRL0MV		; 3E マリン
		DL	PAPA0MV		; 3F タリン
		DL	BABA0MV		; 40 魔法屋のババア
		DL	FUKUROMV	; 41 フクロウ
		DL	HINTOMV		; 42ヒント石版
		DL	EWOODMV		; 43 話す木
		DL	MSPNTMV		; 44 粉かけると話す！
		DL	IWAGOMV		; 45 岩ゴロゴロ
		DL	SWBLKUMV	; 46 スイッチ引くとウゴク！
		DL	SWBLKDMV	; 47 スイッチ引くとウゴク！
		DL	SWBLKLMV	; 48 スイッチ引くとウゴク！
		DL	SWBLKRMV	; 49 スイッチ引くとウゴク！
		DL	FUKU_BOOK	; 4A 服のダンジョンの本
		DL	MSTESFMV	; 4B
		DL	00		; 4C FRBARMV
		DL	NYAMAMV		; 4Dアイテムショップの店員
		DL	CHUNLIMV	; 4E
		DL	UFOCHMV		; 4FＵＦＯキャッチャー
		DL	TERSAMV		; 50
		DL	TEKYUMV		; 51
		DL	BHOLEMV		; 52
		DL	BHOL2MV		; 53 デスボール
		DL	FISHGMV		; 54 釣りをしているオッサン
		DL	SBOMBMV		; 55 爆弾兵
		DL	OBOMBMV		; 56 爆弾兵 (取り付き)
		DL	NINJAMV		; 57 キョロボー
		DL	NINTMMV		; 58
		DL	HAYABMV		; 59 速虫ボス
		DL	BGKAOMV		; 5A マットフェイス(レベル６ボス)
		DL	BSLIMMV		; 5B デグゾル(レベル３ボス)
		DL	TBOSSMV		; 5C ツボ魔王(レベル２ボス)
		DL	BSNAKMV		; 5D フッカー(レベル５ボス)
		DL	GORMAMV		; 5E
		DL	BSKELMV		; 5F マスタースタルフォス(レベル２中ボス)
		DL	DDNGOMV		; 60 ドドンゴ(レベル３中ボス)
		DL	WARPMV		; 61 ワープポイント
		DL	BFIREMV		; 62 デグフレイム(レベル８ボス)
		DL	BBIRDMV		; 63 アルバトス(レベル７ボス)
		DL	PSCRLMV		; 64
		DL	BFISHMV		; 65 アングラー(ボス)
		DL	ONOFSMV		; 66 水晶スイッチ
		DL	SWTRPMV		; 67
		DL	MVHASMV		; 68
		DL	HIKUSMV		; 69引っ張るレバー
		DL	IKADAMV		; 6A 急流下りのイカダ
		DL	TANABEMV	; 6B
		DL	NIWATMV		; 6C ニワトリ
		DL	WANWANMV	; 6D ワンワン
		DL	BTFLYMV		; 6E ちょうちょ
		DL	FOXDOGMV	; 6F キツネ犬
		DL	KODOMAMV	; 70 夢のほこらの子供
		DL	KODOMBMV	; 71 キャッチボール子供達
		DL	KODOMCMV	; 72 キャッチボール子供達
		DL	KODOMDMV	; 73 風見鶏とゲーム店の所の子供
		DL	MAMA0MV		; 74 子だくさんオバサン
		DL	MAMA1MV		; 75 掃除オバサン
		DL	PAPA1MV		; 76 Dr.ライトorヤギ
		DL	URURIMV		; 77 ウルリラじいさん
		DL	OZWANMV		; 78 おしゃれワンワン
		DL	MSWANMV		; 79ワンワンの飼い主オバサン
		DL	KARASMV		; 7A カラス
		DL	TRYCYMV		; 7B 気まぐれトレイシー
		DL	BHANAMV		; 7C アナモネア
		DL	BHFIRMV		; 7D 飛んでくる火の玉
		DL	SHANAMV		; 7E モネア
		DL	KAMEIMV		; 7F カメ岩
		DL	DENWAMV		; 80電話
		DL	OBAQMV		; 81おばＱ
		DL	OBQBARMV	; 82ローラ
		DL	BEDINMV		; 83 リンクベッドで寝る
		DL	IZUMIMV		; 84 回復してくれる大妖精
		DL	HATO0MV		; 85 鳩
		DL	FLYITMV		; 86 飛んでるアイテム
		DL	RANEMMV		; 87 ラネモーラ(ヤーナ砂漠の中ボス)
		DL	NOMOSMV		; 88 デグアモス(南の神殿のボス)
		DL	HINO0MV		; 89 ヒノックス
		DL	PANELMV		; 8A
		DL	PANEL2MV	; 8B
		DL	SWBLKMV		; 8C
		DL	SWBLK2MV	; 8D
		DL	MIZUBMV		; 8E ヒップループホバー(レベル４中ボス)
		DL	HEIHOMV		; 8F
		DL	SLOTMV		; 90
		DL	KARBYMV		; 91 カービー
		DL	OCHANMV		; 92 ジャッキー(レベル６の中ボス)
		DL	HEISMMV		; 93 もぐら兵士
		DL	HEISBMV		; 94 壁兵士
		DL	RICHDMV		; 95 リチャード
		DL	KAERUMV		; 96リチャード家のカエル
		DL	SWIMPMV		; 97 地上水潜りポイント
		DL	DAISUMV		; 98 サイコロ
		DL	AMENBMV		; 99 あめんぼ
		DL	YUKABMV		; 9A 床 ビュン
		DL	YSLIMMV		; 9B 床スライム
		DL	BALEEMV		; 9C バレリーナ
		DL	MOAIMV		; 9D 石像
		DL	TBEAMMV		; 9E トウロウビーム
		DL	KURI0MV		; 9F 栗ぼん(クリボー)
		DL	PIHATMV		; A0 ピーハット
		DL	LOPEMV		; A1 ロープ
		DL	PACKNMV		; A2 パックン花
		DL	LIFTXMV		; A3 リフト 横
		DL	LIFTYMV		; A4 リフト 縦
		DL	LIFTDMV		; A5 リフト 載ったら落ちる！
		DL	LIFTTMV		; A6 リフト 天秤！
		DL	HASIRMV		; A7 Level 7 柱
		DL	TAMA0MV		; A8 柱ぶつける玉
		DL	GESSOMV		; A9 ゲッソー
		DL	PUKPKMV		; AA 魚(横）
		DL	PUKPVMV		; AB 魚(縦）
		DL	PUKPJMV		; AC 魚（ジャンプ）
		DL	MONKYMV		; AD 猿
		DL	OCTAJMV		; AE パタオクタ
		DL	YOSSIMV		; AF わらしべアイテム！
		DL	AMUSIMV		; B0 穴虫！
		DL	YUKASMV		; B1 床作りブロック
		DL	AMUSTMV		; B2 穴わきだすやつ
		DL	HANNYMV		; B3 ハチの巣
		DL	PAPA2MV		; B4 タリン（ハチの巣）
		DL	KUMA0MV		; B5 クマコック
		DL	PAPALMV		; B6 パパール
		DL	MAMADMV		; B7 人魚
		DL	TURIMV		; B8 橋の下釣りおやじ
		DL	NYOROMV		; B9 ニョロニョロ
		DL	PKURIMV		; BA パタクリ
		DL	SHIGEMV		; BB しげミン！
		DL	TUKAIMV		; BC ピッコロ(レベル７中ボス)
		DL	ARIMAMV		; BD バイア
		DL	BOXERMV		; BE ボクサー
		DL	ZONBIMV		; BF ゾンビ
		DL	KHIMIMV		; C0 看板秘密！
		DL	GIRL1MV		; C1 海岸マリン！
		DL	GIRL2MV		; C2 橋の上マリン！
		DL	MAMUUMV		; C3 笛カエル！
		DL	TODDMV		; C4 セイウチトッド
		DL	UNIUNIMV	; C5 うにうに
		DL	KANIMV		; C6 かに！
		DL	MANBOMV		; C7 マンボウ
		DL	USAGIMV		; C8 マリン呼ぶうさぎ
		DL	ONPUMV		; C9 おんぷ
		DL	AKUMAMV		; CA 小悪魔
		DL	ZORAMV		; CB ゾーラ
		DL	BLANKAMV	; CC ピラニア
		DL	WANIMV		; CD ワニ絵かき
		DL	MAMAD2MV	; CE にんぎょ像！
		DL	GAGEMV		; CF 剣２もらうとこのやつ！
		DL	USAG2MV		; D0 動物村 うさぎ
		DL	KUMASMV		; D1 動物村 小くま
		DL	NTORIMV		; D2 動物村 南国鳥
		DL	GMUSIMV		; D3 動物村 虫（実はうさぎ）
		DL	OBAKEMV		; D4 迷いオバケ（オプション）
		DL	NIWAXMV		; D5 ニワトリ（オプション）
		DL	YTUBOMV		; D6 横用壷
		DL	DOSNSMV		; D7 ドスン Ｓ
		DL	DOSNBMV		; D8 ドスン Ｌ
		DL	TAIATMV		; D9 体当たりおちる奴！
		DL	FIREBMV		; DA ヨコバブル！
		DL	BABUBMV		; DB 大バブル
		DL	KAZAMMV		; DC 風見鳥！&ニワトリオヤジ
		DL	BOOKMV		; DD 図書館の本＆おもひでのアルバム
		DL	SEIRENMV	; DE 卵山楽器デモ！
		DL	KENBMMV		; DF 剣ビーム
		DL	SARUKMV		; E0 木の上猿！
		DL	MOUSEMV		; E1 ねずみ
		DL	HODAIMV		; E2 火のほうだい！
		DL	SANBOMV		; E3 さぼてん！
		DL	MBOSSMV		; E4 モリブリンボス！
		DL	FLYIT2MV	; E5 パタアイテム（矢、ハート）
		DL	BOSSMV		; E6 ラスト ボス！
		DL	SIROSMV		; E7 城スイッチ！
		DL	EDAIMV		; E8 台
		DL	RGB_MUSI	; E9 赤虫
		DL	RGB_MUSI	; EA 緑虫
		DL	RGB_MUSI	; EB 青虫
		DL	RGB_GOST	; EC 赤オバケ
		DL	RGB_GOST	; ED 緑オバケ
		DL	RGB_GOST	; EE 青オバケ
		DL	RGB_BLOCK	; EF 赤ブロック
		DL	RGB_BLOCK	; F0 緑ブロック
		DL	RGB_BLOCK	; F1 青ブロック
		DL	FLING_BOUND	; F2 飛んでいるバウンドする敵
		DL	FLING_BOUND	; F3 バウンドする敵
		DL	BLOCK_HINO	; F4 ヒノックス(ゴーレムバージョン)
		DL	HINO_IWA	; F5 ヒノックスゴーレムの岩
		DL	MONBAN_HEI	; F6 門番兵
		DL	MONBAN_HEI	; F7 門番兵
		DL	NYORO_SLIME	; F8 NYO_SLM
		DL	FUKU_BOSS	; F9 服のダンジョン・ラストボス
		DL	CAMERA_BOY	; FA カメラ小僧
;
;;;;;;;;;+--------------------------------------+
;;;;;;;;;|	敵の各プログラムバンク		|
;;;;;;;;;+--------------------------------------+
;;;;;;;;EPBANK	; Program bank
;;;;;;;;	DB	$03 ;PYAAA	00
;;;;;;;;	DB	$19 ;BUMER	01
;;;;;;;;	DB	$03 ;BOMBR	02
;;;;;;;;	DB	$18 ;FUCKS	03
;;;;;;;;	DB	$03 ;PRTBM	04
;;;;;;;;	DB	$03 ;KTOBJ	05
;;;;;;;;	DB	$03 ;BLOCK	06
;;;;;;;;	DB	$07 ;TAKAR	07
;;;;;;;;	DB	$18 ;POWDR	08
;;;;;;;;	DB	$03 ;OCTA1	09
;;;;;;;;	DB	$03 ;OCTAM	0A
;;;;;;;;	DB	$03 ;MORI1	0B
;;;;;;;;	DB	$03 ;MORYA	0C
;;;;;;;;	DB	$06 ;TEKTA	0D
;;;;;;;;	DB	$04 ;RIVER	0E
;;;;;;;;	DB	$06 ;KUZUH	0F
;;;;;;;;	DB	$04 ;GHOST	10
;;;;;;;;	DB	$04 ;GHOSB	11
;;;;;;;;	DB	$04 ;GHOSS	12
;;;;;;;;	DB	$03 ;BOMBO	13
;;;;;;;;	DB	$07 ;HEIS0	14
;;;;;;;;	DB	$06 ;BABUL	15
;;;;;;;;	DB	$06 ;SPARK	16
;;;;;;;;	DB	$06 ;SPAR2	17
;;;;;;;;	DB	$06 ;PORUS	18
;;;;;;;;	DB	$06 ;BLBAT	19
;;;;;;;;	DB	$06 ;SKEL0	1A
;;;;;;;;	DB	$06 ;SLIMB	1B
;;;;;;;;	DB	$06 ;SLIMS	1C
;;;;;;;;	DB	$06 ;BASSF	1D
;;;;;;;;	DB	$15 ;SKEL1	1E
;;;;;;;;	DB	$06 ;MUMMY	1F
;;;;;;;;	DB	$06 ;MOTOS	20
;;;;;;;;	DB	$06 ;MAGE0	21
;;;;;;;;	DB	$06 ;SONIC	22
;;;;;;;;	DB	$06 ;LAIKU	23
;;;;;;;;	DB	:HIPLPMV	;HIPLP	24
;;;;;;;;	DB	$03 ;BOSS1	25
;;;;;;;;	DB	$03 ;KWUSO	26
;;;;;;;;	DB	$06 ;TRAP0	27
;;;;;;;;	DB	$19 ;COPYA	28
;;;;;;;;	DB	$04 ;HAYAM	29
;;;;;;;;	DB	$04 ;RENO7	2A
;;;;;;;;	DB	$15 ;R7BEM	2B
;;;;;;;;	DB	$07 ;INOSI	2C
;;;;;;;;	DB	$03 ;HART1	2D
;;;;;;;;	DB	$03 ;RUPY1	2E
;;;;;;;;	DB	$03 ;YOSEI	2F
;;;;;;;;	DB	$03 ;KEYSM	30
;;;;;;;;	DB	$03 ;PLTAT	31
;;;;;;;;	DB	$03 ;HMASK	32
;;;;;;;;	DB	$03 ;POWER	33
;;;;;;;;	DB	$03 ;KINOM	34
;;;;;;;;	DB	$03 ;KAKER	35
;;;;;;;;	DB	$03 ;HARTB	36
;;;;;;;;	DB	$03 ;ALOW1	37
;;;;;;;;	DB	$03 ;BOMB1	38
;;;;;;;;	DB	$03 ;GAKKI	39
;;;;;;;;	DB	$03 ;KINOK	3A
;;;;;;;;	DB	$03 ;MGPOW	3B
;;;;;;;;	DB	$03 ;KAKIN	3C
;;;;;;;;	DB	$03 ;KAIIN	3D
;;;;;;;;	DB	$05 ;GIRL0	3E
;;;;;;;;	DB	$05 ;PAPA0	3F
;;;;;;;;	DB	$05 ;BABA0	40
;;;;;;;;	DB	$06 ;FUKURO	41
;;;;;;;;	DB	$18 ;HINTO	42
;;;;;;;;	DB	$15 ;EWOOD	43
;;;;;;;;	DB	$15 ;MSPNT	44
;;;;;;;;	DB	$15 ;IWAGO	45
;;;;;;;;	DB	$15 ;SWBLKU	46
;;;;;;;;	DB	$15 ;SWBLKD	47
;;;;;;;;	DB	$15 ;SWBLKL	48
;;;;;;;;	DB	$15 ;SWBLKR	49
;;;;;;;;	DB	ZE9_BANK	;FUKUBOK	4A
;;;;;;;;	DB	$03 ;MSTESF	4B
;;;;;;;;	DB	$04 ;FRBAR	4C
;;;;;;;;	DB	$04 ;NYAMA	4D
;;;;;;;;	DB	$04 ;CHUNLI	4E
;;;;;;;;	DB	$04 ;UFOCH	4F
;;;;;;;;	DB	$06 ;TERSA	50
;;;;;;;;	DB	$04 ;TEKYU	51
;;;;;;;;	DB	$04 ;BHOLE	52
;;;;;;;;	DB	$04 ;BHOL2	53
;;;;;;;;	DB	$04 ;FISHG	54
;;;;;;;;	DB	$04 ;SBOMB	55
;;;;;;;;	DB	$04 ;OBOMB	56
;;;;;;;;	DB	$04 ;NINJA	57
;;;;;;;;	DB	$04 ;NINTM	58
;;;;;;;;	DB	$04 ;HAYAB	59
;;;;;;;;	DB	$04 ;BGKAO	5A
;;;;;;;;	DB	$04 ;BSLIM	5B
;;;;;;;;	DB	$04 ;TBOSS	5C
;;;;;;;;	DB	$05 ;BSNAK	5D
;;;;;;;;	DB	$05 ;GORMA	5E
;;;;;;;;	DB	$07 ;BSKEL	5F
;;;;;;;;	DB	$05 ;DDNGO	60
;;;;;;;;	DB	$19 ;WARP	61
;;;;;;;;	DB	$05 ;BFIRE	62
;;;;;;;;	DB	$05 ;BBIRD	63
;;;;;;;;	DB	$18 ;PSCRL	64
;;;;;;;;	DB	$05 ;BFISH	65
;;;;;;;;	DB	$15 ;ONOFS	66
;;;;;;;;	DB	$05 ;SWTRP	67
;;;;;;;;	DB	$15 ;MVHAS	68
;;;;;;;;	DB	$18 ;HIKUS	69
;;;;;;;;	DB	$05 ;IKADA	6A
;;;;;;;;	DB	$18 ;TANABE	6B
;;;;;;;;	DB	$05 ;NIWAT	6C
;;;;;;;;	DB	$05 ;WANWAN	6D
;;;;;;;;	DB	$06 ;BTFLY	6E
;;;;;;;;	DB	$19 ;FOXDOG	6F
;;;;;;;;	DB	$06 ;KODOMA	70
;;;;;;;;	DB	$06 ;KODOMB	71
;;;;;;;;	DB	$06 ;KODOMC	72
;;;;;;;;	DB	$06 ;KODOMD	73
;;;;;;;;	DB	$18 ;MAMA0	74
;;;;;;;;	DB	$18 ;MAMA1	75
;;;;;;;;	DB	$18 ;PAPA1	76
;;;;;;;;	DB	$06 ;URURI	77
;;;;;;;;	DB	$06 ;OZWAN	78
;;;;;;;;	DB	$06 ;MSWAN	79
;;;;;;;;	DB	$06 ;KARAS	7A
;;;;;;;;	DB	$06 ;TRYCY	7B
;;;;;;;;	DB	$06 ;BHANA	7C
;;;;;;;;	DB	$06 ;BHFIR	7D
;;;;;;;;	DB	$06 ;SHANA	7E
;;;;;;;;	DB	$18 ;KAMEI	7F
;;;;;;;;	DB	$06 ;DENWA	80
;;;;;;;;	DB	$06 ;OBAQ	81
;;;;;;;;	DB	$06 ;OBQBAR	82
;;;;;;;;	DB	:BEDINMV	; $06 ;BEDIN	83
;;;;;;;;	DB	$06 ;IZUMI	84
;;;;;;;;	DB	$06 ;HATO0	85
;;;;;;;;	DB	$06 ;FLYIT	86
;;;;;;;;	DB	$06 ;RANEM	87
;;;;;;;;	DB	$06 ;NOMOS	88
;;;;;;;;	DB	$06 ;HINO0	89
;;;;;;;;	DB	:PANELMV	;PANEL		8A
;;;;;;;;	DB	:PANEL2MV	;PANEL2		8B
;;;;;;;;	DB	$06 ;SWBLK	8C
;;;;;;;;	DB	$06 ;SWBLK2	8D
;;;;;;;;	DB	$06 ;MIZUB	8E
;;;;;;;;	DB	$19 ;HEIHO	8F
;;;;;;;;	DB	$06 ;SLOT	90
;;;;;;;;	DB	$06 ;KARBY	91
;;;;;;;;	DB	$06 ;OCHAN	92
;;;;;;;;	DB	$06 ;HEISM	93
;;;;;;;;	DB	$07 ;HEISB	94
;;;;;;;;	DB	$06 ;RICHD	95
;;;;;;;;	DB	$19 ;KAERU	96
;;;;;;;;	DB	$19 ;SWIMP	97
;;;;;;;;	DB	$07 ;DAISU	98
;;;;;;;;	DB	$07 ;AMENB	99
;;;;;;;;	DB	$07 ;YUKAB	9A
;;;;;;;;	DB	$07 ;YSLIM	9B
;;;;;;;;	DB	$07 ;BALEE	9C
;;;;;;;;	DB	$19 ;MOAI	9D
;;;;;;;;	DB	$07 ;TBEAM	9E
;;;;;;;;	DB	$07 ;KURI0	9F
;;;;;;;;	DB	$07 ;PIHAT	A0
;;;;;;;;	DB	$07 ;LOPE	A1
;;;;;;;;	DB	:PACKNMV	;PACKN	A2
;;;;;;;;	DB	$07 ;LIFTX	A3
;;;;;;;;	DB	$07 ;LIFTY	A4
;;;;;;;;	DB	$07 ;LIFTD	A5
;;;;;;;;	DB	$07 ;LIFTT	A6
;;;;;;;;	DB	$07 ;HASIR	A7
;;;;;;;;	DB	$07 ;TAMA0	A8
;;;;;;;;	DB	$07 ;GESSO	A9
;;;;;;;;	DB	$19 ;PUKPK	AA
;;;;;;;;	DB	$19 ;PUKPV	AB
;;;;;;;;	DB	$19 ;PUKPJ	AC
;;;;;;;;	DB	$07 ;MONKY	AD
;;;;;;;;	DB	$07 ;OCTAJ	AE
;;;;;;;;	DB	$07 ;YOSSI	AF
;;;;;;;;	DB	$07 ;AMUSI	B0
;;;;;;;;	DB	$07 ;YUKAS	B1
;;;;;;;;	DB	$15 ;AMUST	B2
;;;;;;;;	DB	$07 ;HANNY	B3
;;;;;;;;	DB	$07 ;PAPA2	B4
;;;;;;;;	DB	$07 ;KUMA0	B5
;;;;;;;;	DB	$07 ;PAPAL	B6
;;;;;;;;	DB	$07 ;MAMAD	B7
;;;;;;;;	DB	$07 ;TURI	B8
;;;;;;;;	DB	$18 ;NYORO	B9
;;;;;;;;	DB	$18 ;PKURI	BA
;;;;;;;;	DB	$07 ;SHIGE	BB
;;;;;;;;	DB	$18 ;TUKAI	BC
;;;;;;;;	DB	$18 ;ARIMA	BD
;;;;;;;;	DB	$18 ;BOXER	BE
;;;;;;;;	DB	$18 ;ZONBI	BF
;;;;;;;;	DB	$18 ;KHIMI	C0
;;;;;;;;	DB	$18 ;GIRL1	C1
;;;;;;;;	DB	$18 ;GIRL2	C2
;;;;;;;;	DB	$18 ;MAMUU	C3
;;;;;;;;	DB	$18 ;TODD	C4
;;;;;;;;	DB	$15 ;UNIUNI	C5
;;;;;;;;	DB	$15 ;KANI	C6
;;;;;;;;	DB	$18 ;MANBO	C7
;;;;;;;;	DB	$18 ;USAGI	C8
;;;;;;;;	DB	$05 ;ONPU	C9
;;;;;;;;	DB	$18 ;AKUMA	CA
;;;;;;;;	DB	$18 ;ZORA	CB
;;;;;;;;	DB	$15 ;BLANKA	CC
;;;;;;;;	DB	$19 ;WANI	CD
;;;;;;;;	DB	$18 ;MAMAD2	CE
;;;;;;;;	DB	$19 ;GAGE	CF
;;;;;;;;	DB	$05 ;USAG2	D0
;;;;;;;;	DB	:KUMASMV	; $18 ;KUMAS	D1
;;;;;;;;	DB	$18 ;NTORI	D2
;;;;;;;;	DB	$18 ;GMUSI	D3
;;;;;;;;	DB	$19 ;OBAKE	D4
;;;;;;;;	DB	$19 ;NIWAX	D5
;;;;;;;;	DB	$19 ;YTUBO	D6
;;;;;;;;	DB	$19 ;DOSNS	D7
;;;;;;;;	DB	$19 ;DOSNB	D8
;;;;;;;;	DB	$19 ;TAIAT	D9
;;;;;;;;	DB	$19 ;FIREB	DA
;;;;;;;;	DB	$19 ;BABUB	DB
;;;;;;;;	DB	$19 ;KAZAM	DC
;;;;;;;;	DB	:BOOKMV		; $19 ;BOOK	DD
;;;;;;;;	DB	$19 ;SEIREN	DE
;;;;;;;;	DB	$19 ;KENBM	DF
;;;;;;;;	DB	$15 ;SARUK	E0
;;;;;;;;	DB	$15 ;MOUSE	E1
;;;;;;;;	DB	$15 ;HODAI	E2
;;;;;;;;	DB	$15 ;SANBO	E3
;;;;;;;;	DB	$15 ;MBOSS	E4
;;;;;;;;	DB	$06 ;FLYIT2	E5
;;;;;;;;	DB	$15 ;BOSS	E6
;;;;;;;;	DB	$15 ;SIROS	E7
;;;;;;;;	DB	$17 ;EDAI	E8
;;;;;;;;	DB	ZE9_BANK	;R_MUSI		E9
;;;;;;;;	DB	ZE9_BANK	;G_MUSI		EA
;;;;;;;;	DB	ZE9_BANK	;B_MUSI		EB
;;;;;;;;	DB	ZE9_BANK	;R_GOST		EC
;;;;;;;;	DB	ZE9_BANK	;G_GOST		ED
;;;;;;;;	DB	ZE9_BANK	;B_GOST		EE
;;;;;;;;	DB	ZE9_BANK	;R_BLOCK	EF
;;;;;;;;	DB	ZE9_BANK	;G_BLOCK	F0
;;;;;;;;	DB	ZE9_BANK	;B_BLOCK	F1
;;;;;;;;	DB	ZE9_BANK	;FLYBND		F2
;;;;;;;;	DB	ZE9_BANK	;BNDMAN		F3
;;;;;;;;	DB	ZE9_BANK	;BLNHINO	F4
;;;;;;;;	DB	ZE9_BANK	;HINOIWA	F5
;;;;;;;;	DB	ZE9_BANK	;R_TUCHI	F6
;;;;;;;;	DB	ZE9_BANK	;L_TUCHI	F7
;;;;;;;;	DB	ZE9_BANK	;NYO_SLM	F8
;;;;;;;;	DB	ZE9_BANK	;FK_BOSS	F9
;;;;;;;;	DB	:CAMERA_BOY	;カメラ小僧	FA
;
;+------------------------------------------------------+
;|	敵ＭＯＶＥルーチンへ				|
;|		ジャンプするための			|
;|			アドレスを設定する		|
;|			出力				|
;|			  Ａ：ジャンプするバンク	|
;|			ＨＬ：ジャンプするアドレス	|
;+------------------------------------------------------+
GET_ENHL
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
		ret
;;;;;;;;	LD	A,(ENMYNO2)
;;;;;;;;	LD	E,A
;;;;;;;;	LD	D,B
;;;;;;;;	LD	HL,EPBANK
;;;;;;;;	ADD	HL,DE
;;;;;;;;	LD	A,(HL)
;;;;;;;;	PUSH	AF
;;;;;;;;;
;;;;;;;;	LD	HL,GET_ENHL_DATA
;;;;;;;;	LD	D,$00
;;;;;;;;	SLA	E
;;;;;;;;	RL	D
;;;;;;;;	ADD	HL,DE
;;;;;;;;	LD	E,(HL)
;;;;;;;;	INC	HL
;;;;;;;;	LD	D,(HL)
;;;;;;;;	PUSH	DE
;;;;;;;;	POP	HL
;;;;;;;;	POP	AF
;;;;;;;;	RET
;
;+----------------------------------------------+
;|	敵のメイン処理から移動したルーチン	|
;+----------------------------------------------+
ENEMY_SUB
	LD	A,(FIREBFG)
	LD	(WFIREBFG),A
	XOR	A
	LD	(FIREBFG),A
;;	LD	(SHOPFG),A	; Shop in flag (Not item use)
	LD	(DAMASI),A	; たぬきだましフラグ！
	LD	(IKADAON),A	; Player Ikada on flag !
	LD	(SLIMFG),A	;スライムヒッツキ!
	LD	(WARPFG),A
	LD	(ONLFFG),A	;リフト載りフラグ！
	LD	(PLCANO),A
	LD	(TOBIOF),A
	RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ＺＥＳ．Ｓから移動したルーチン				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;
;+------------------------------------------------------+
;|	敵の各イニシャルプログラムアドレス		|
;+------------------------------------------------------+
GET_INIT_EN_DATA
	DW	ENRET		;		00
	DW	ENRET		;IT ;ENRET	01
	DW	ENRET		;		02
	DW	ENRET		;		03
	DW	ENRET		;		04
	DW	ENRET		;		05
	DW	BLOCKIT		;		06
	DW	TAKARIT 	;1		07
	DW	ENRET   	;2		08
	DW	OCTA1IT 	;3		09
	DW	ENRET   	;4		0A
	DW	MORI1IT 	;5		0B
	DW	ENRET		;		0C
	DW	ENRET		;		0D
	DW	RIVERIT		;		0E
	DW	ENRET		;		0F
	DW	GHOSTIT		;		10
	DW	GHOSBIT		;		11
	DW	GHOSSIT		;		12
	DW	BOMBOIT		;		13
	DW	HEIS0IT		;		14
	DW	BABULIT		;		15
	DW	SPARKIT		;		16
	DW	SPAR2IT		;		17
	DW	ENRET		;		18
	DW	ENRET		;		19
	DW	ENRET		;		1A
	DW	SLIMBIT		;		1B
	DW	ENRET		;		1C
	DW	BASSFIT		;		1D
	DW	STATINC		;SKEL1IT	1E
	DW	STATINC 	;MUMMYIT	1F
	DW	ENRET		;		20
	DW	MAGE0IT		;		21
	DW	ENRET		;		22
	DW	STATINC 	;LAIKUIT	23
	DW	ENRET		;		24
	DW	BOSS1IT		;		25
	DW	KWUSOIT		;		26
	DW	ENRET		;		27
	DW	ENRET		;		28
	DW	HAYAMITL	;		29
	DW	ENRET		; RENO7		2A
	DW	ENRET		; R7BEM		2B
	DW	ENRET		; INOSI		2C
	DW	HART1IT		;ENRET		2D
	DW	ITEMIT		;ENRET		2E
	DW	ITEMIT		;ENRET		2F
	DW	KEYSMIT		;ENRET		30
	DW	PLTATIT		;PLTAT	31
	DW	ITEMIT		;HMASK		32
	DW	ITEMIT		;POWER		33
	DW	ITEMIT		;KINOM		34
	DW	ENRET2		;KAKERIT  ;KAKER	35
	DW	ITEMIT		;HARTB		36
	DW	ITEMIT		;ALOW1		37
	DW	ITEMIT		;BOMB1		38
	DW	GAKKIIT		;GAKKI		39
	DW	ENRET2		;KINOK		3A
	DW	ANAINIT2	;MGPOW		3B
	DW	ANAINIT2	;KAKIN		3C
	DW	KAIINIT		;ANAINIT2 KAIIN	3D
	DW	GIRL0IT		;GIRL0		3E
;;;KK;;;	DW	PEOPLIT		;PAPA0		3F
	DW	TARIN_INIT	;PAPA0		3F
	DW	BABA0IT		;BABA0		40
	DW	FUKUROIT	;FUKURO		41
	DW	ENRET		;HINTO		42
	DW	EWOODIT 	;EWOOD		43
	DW	ENRET2		;MSPNT		44
	DW	ENRET2		;IWAGO		45
	DW	ENRET2		;SWBLKU		46
	DW	ENRET2		;SWBLKD		47
	DW	ENRET2		;SWBLKL		48
	DW	ENRET2		;SWBLKR		49
	DW	FKBK_INIT	;FUKUBOK	4A
	DW	ENRET		;MSTESFIT	4B
	DW	ENRET		;FRBARIT	4C
	DW	SHOPIT		;NYAMAIT	4D
	DW	ENRET		;CHUNLIIT	4E
	DW	EVENTIT		;UFOCHIT	4F
	DW	ENRET		;TERSAIT	50
   	DW	ENRET		;TEKYUIT	51
   	DW	ENRET		;BHOLEIT	52
   	DW	ENRET		;BHOL2IT	53
   	DW	EVENTIT		;FISHGIT	54
	DW	ENRET		;SBOMBIT	55
	DW	ENRET		;OBOMBIT	56
	DW	ENRET		;NINJAIT	57
	DW	ENRET		;NINTMIT	58
	DW	HAYABITL	;HAYABIT	59
	DW	BGKAOITL	;	5A
	DW	BSLIMITL	;	5B
	DW	TBOSSITL	;	5C
	DW	BSNAKITL	;	5D
	DW	ENRET		;GORMAITL	5E
	DW	ENRET		;BSKELITL	5F
	DW	DDNGOITL	;	60
	DW	WARPIT		;STATINC WARP	61
	DW	BFIREITL	;	62
	DW	BBIRDITL	;	63
	DW	PSCRLIT		; Part scroll intial
	DW	BFISHITL	;	65
	DW	ENRET		;ONOFS		66
	DW	ENRET2  	;SWTRP		67
	DW	ENRET2  	;MVHAS		68
	DW	HIKUSIT 	;HIKUS		69
	DW	IKADAIT 	;IKADA		6A
	DW	ENRET2		; TANABE	6B
	DW	ENRET2		; NIWAT		6C
	DW	WANWANIT	; WANWAN	6D
	DW	ENRET2		; BTFLY		6E
	DW	ENRET2		; FOXDOG	6F
	DW	PEOPLIT		; KODOMA	70
	DW	KODOMBIT	; KODOMB	71
	DW	KODOMCIT	; KODOMC	72
	DW	PEOPLIT		; KODOMD	73
	DW	PEOPLIT 	;MAMA0		74
	DW	PEOPLIT 	;MAMA1		75
	DW	PAPA1IT 	;PAPA1		76
	DW	PEOPLIT 	;URURI		77
	DW	ENRET2 		; OZWAN		78
	DW	MSWANIT 	;PEOPLIT MSWAN	79
	DW	ENRET2 		; KARAS		7A
	DW	PEOPLIT		; TRYCY		7B
	DW	BHANAIT		; BHANA		7C
	DW	ENRET2 		; BHFIR		7D
	DW	ENRET2 		; SHANA		7E
	DW	ENRET2 		; KAMEI		7F
	DW	DENWAIT		; DENWA		80
	DW	ENRET2 		; OBAQ		81
	DW	ENRET2 		; OBQBAR	82
	DW	BEDINIT		; BEDIN		83
	DW	IZUMIIT		; IZUMI		84
	DW	ENRET2 		; HATO0		85
	DW	FLYITIT		; FLYIT		86
	DW	RANEMIT 	; RANEM		87
	DW	ENRET2 		; NOMOS		88
	DW	ENRET2 		; HINO0		89
	DW	ENRET2 		; PANEL		8A
	DW	ENRET2 		; PANEL2	8B
	DW	ENRET2 		; SWBLK		8C
	DW	ENRET2 		; SWBLK2	8D
	DW	PSADD8 		; MIZUB		8E
	DW	ENRET2 		; HEIHO		8F
	DW	ENRET2 		; SLOT		90
	DW	KARBYIT		; KARBY		91
	DW	ENRET2 		; OCHAN		92
	DW	ENRET2 		; HEISM		93
	DW	ENRET2 		; HEISB		94
	DW	RICHDIT		; RICHD		95
	DW	ENRET2 		; KAERU		96
	DW	ENRET2 		; SWIMP		97
	DW	DAISUIT 	; DAISU		98
	DW	ENRET2  	; AMENB		99
	DW	ENRET2  	; YUKAB		9A
	DW	ENRET2  	; YSLIM		9B
	DW	BALEEIT 	; BALEE		9C
	DW	ENRET2  	; MOAI		9D
	DW	TBEAMIT 	; TBEAM		9E
	DW	ENRET2  	; KURI0		9F
	DW	ENRET2  	; PIHAT		A0
	DW	LOPEIT  	; LOPE		A1
	DW	ENRET2  	; PACKN		A2
	DW	ENRET2  	; LIFTX		A3
	DW	LIFTYIT 	; LIFTY		A4
	DW	ENRET2  	; LIFTD		A5
	DW	ENRET2  	; LIFTT		A6
	DW	ENRET2  	; HASIR		A7
	DW	ENRET2  	; TAMA0		A8
	DW	ENRET2  	; GESSO		A9
	DW	ENRET2  	; PUKPK		AA
	DW	ENRET2  	; PUKPV		AB
	DW	ENRET2  	; PUKPJ		AC
	DW	MONKYIT 	; MONKY		AD
	DW	ENRET   	; OCTAJ		AE
	DW	YOSSIIT 	; YOSSI		AF
	DW	ENRET2 		; AMUSI		B0
	DW	ENRET2 		; YUKAS		B1
	DW	ENRET2 		; AMUST		B2
	DW	PSADD8		; HANNY		B3
	DW	PAPA2IT		; PAPA2		B4
	DW	ENRET2 		; KUMA0		B5
	DW	ENRET2 		; PAPAL		B6
	DW	ENRET2 		; MAMAD		B7
	DW	TURIIT 		; TURI		B8
	DW	ENRET2 		; NYORO		B9
	DW	PKURIIT		; PKURI		BA
	DW	SHIGEIT		; SHIGE		BB
	DW	PSADD8 		; TUKAI		BC
	DW	ENRET2 		; ARIMA		BD
	DW	ENRET2 		; BOXER		BE
	DW	ENRET2 		; ZONBI		BF
	DW	ENRET2 		; KHIMI		C0
	DW	GIRL1IT		; GIRL1		C1
	DW	GIRL2IT		; GIRL2		C2
	DW	ENRET2		; MAMUU		C3
	DW	ENRET2 		; TODD		C4
	DW	ENRET2 		; UNIUNI	C5
	DW	ENRET2 		; KANI		C6
	DW	ENRET2 		; MANBO		C7
	DW	ENRET2		; USAGI		C8
	DW	ENRET2 		; ONPU		C9
	DW	ENRET2 		; AKUMA		CA
	DW	ZORA_INIT	; ZORA		CB
	DW	ENRET2 		; BLANKA	CC
	DW	ENRET2 		; WANI		CD
	DW	ENRET2 		; MAMAD2	CE
	DW	ENRET2 		; GAGE		CF
	DW	ENRET2  	; USAG2		D0
	DW	ENRET2  	; KUMAS		D1
	DW	ENRET2  	; NTORI		D2
	DW	ENRET2  	; GMUSI		D3
	DW	ENRET2  	; OBAKE		D4
	DW	ENRET2  	; NIWAX		D5
	DW	ENRET2  	; YTUBO		D6
	DW	ENRET2  	; DOSNS		D7
	DW	ENRET2  	; DOSNB		D8
	DW	ENRET2  	; TAIAT		D9
	DW	ENRET2  	; FIREB		DA
	DW	BABUBIT 	; BABUB		DB
	DW	ENRET2  	; KAZAM		DC
	DW	ENRET2  	; BOOK		DD
	DW	ENRET2  	; SEIREN	DE
	DW	ENRET2  	; KENBM		DF
	DW	ENRET2  	; SARUK		E0
	DW	ENRET2  	; MOUSE		E1
	DW	ENRET2  	; HODAI		E2
	DW	ENRET2  	; SANBO		E3
	DW	ENRET2  	; MBOSS		E4
	DW	FLYIT2IT	; FLYIT2	E5
	DW	BOSSIT  	; BOSS		E6
	DW	ENRET2 		; SIROS		E7
	DW	ENRET2 		; EDAI		E8
	DW	ENRET 		; R_MUSI	E9
	DW	ENRET 		; G_MUSI	EA
	DW	ENRET 		; B_MUSI	EB
	DW	RGB_GOSTIT 	; R_GOST	EC
	DW	RGB_GOSTIT 	; G_GOST	ED
	DW	RGB_GOSTIT 	; B_GOST	EE
	DW	R_BLK_INIT	; R_BLOCK	EF
	DW	G_BLK_INIT	; G_BLOCK	F0
	DW	B_BLK_INIT	; B_BLOCK	F1
	DW	FLY_BND_INIT	; FLYBND	F2
	DW	BNDMAN_INIT	; BNDMAN	F3
	DW	BLKHINO_INIT	; BLKHINO	F4
	DW	ENRET2		; HINOIWA	F5
	DW	R_MONBAN_INIT	; R_TUCHI	F6
	DW	L_MONBAN_INIT	; L_TUCHI	F7
	DW	NYO_SLM_INIT	; NYO_SLM	F8
	DW	FK_BOSS_INIT	; FK_BOSS	F9
	DW	ENRET2		; C_BOY		FA
;
;+------------------------------------------------------+
;|	敵イニシャルルーチンへ				|
;|		ジャンプするための			|
;|			アドレスを設定する		|
;|			出力				|
;|			ＨＬ：ジャンプするアドレス	|
;+------------------------------------------------------+
GET_INIT_EN
		LD	A,(ENMYNO2)
		LD	E,A
		LD	D,$000
;
		LD	HL,GET_INIT_EN_DATA
		SLA	E
		RL	D
		ADD	HL,DE
		LD	E,(HL)
		INC	HL
		LD	D,(HL)
		PUSH	DE
		POP	HL
		RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	ＺＭＡ．ＤＭＧから移動したルーチン			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;
;+--------------------------------------+
;|	VRDATAテーブルデータ		|
;+--------------------------------------+
VRDATA
	DEFW	00		;00 VRAMD+1
	DEFW	ENDYMBG		;01 エンディング山遠景  BG;00 ;TITLBG
	DEFW	WINDBG		;02
	DEFW	PSLCTBG		;03
	DEFW	PSLCTBG2	;04
	DEFW	NSLCTBG		;05
	DEFW	NCLERBG		;06
	DEFW	VRAMD2+1	;07
	DEFW	GMAPBG		;08
	DEFW	GMAPCLB		;09
	DEFW	GOVERBG		;0A
	DEFW	WINDBG2		;0B ODEMOBG
	DEFW	NCOPYBG		;0C データコピー
	DEFW	TSAVEBG		;0D 強制セーブ
	DEFW	OPENBG		;0E Opening BG !
	DEFW	OPENBG2		;0F Opening BG 2!
	DEFW	OPENBG3		;10 Opening BG 3!
	DEFW	LOGODT		;11 無理矢理タイトルロゴ！
	DEFW	PEACHDT		;12 ピーチ写真！
	DEFW	LOVEDT		;13 海岸デモ！
	DEFW	MAMUUBG		;14 マムー部屋ベタ！
	DEFW	KABEDT1		;15 壁画１
;----------------------------------------------
	DEFW	ENDBGA		;16 エンディング A BG
	DEFW	ENDBGB2		;17 エンディング B2 BG
	DEFW	ENDBGC		;18 エンディング C BG
	DEFW	ENDBGB		;19 エンディング B BG
	DEFW	ENDBGD		;1A エンディング D BG
	DEFW	ENDBGE		;1B エンディング E BG
	DEFW	ENDBGF		;1C エンディング F BG
	DEFW	ENDBGG		;1D エンディング G BG
;- - - - - - - - - - - - - - - - - - - - - - -
	DW	ENDBGA1		;1E
	DW	ENDBGA2		;1F
	DW	ENDBGA3		;20
	DW	ENDBGA4		;21
	DW	ENDBGA5		;22
;
	DW	KABADT		;23 カバの絵！
	DW	TOUBGDT		;24 ７塔デモ！
;
	DEFW	OPENBG_CGB	;25 Opening BG !（ＣＧＢ専用）
;
;;	DEFW	EWAKUBG		;25 エンディング マップ枠 BG
;;	DEFW	EWAKUBG2	;26 エンディング マップ枠 BG2
;
;+----------------------------------------------+
;|	ＶＲデータアドレス設定			|
;|		出力				|
;|		ＤＥ：ＶＲデータアドレス	|
;+----------------------------------------------+
VRADR_SET
	LD	HL,VRDATA
	LD	B,$0
	LD	A,(VRFLG)
	SLA	A
	LD	C,A
	ADD	HL,BC
	LD	A,(HL)
	LD	E,A
	INC	HL
	LD	A,(HL)
	LD	D,A
	RET
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%						   %
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
DJYKBK	; Danjyon yuka bank adress !
	DB	$4C ;00	 LV1
	DB	$62 ;01	 LV2
	DB	$63 ;02	 LV3
	DB	$66 ;03	 LV4
	DB	$6B ;04	 LV5
	DB	$63 ;05	 LV6
	DB	$65 ;06	 LV7
	DB	$64 ;07	 LV8
	DB	$60 ;08	 LV9
	DB	$4C ;09	 予備
	DB	$4D ;0A	 山の洞窟
	DB	$4C ;0B
	DB	$4C ;0C
	DB	$4C ;0D
	DB	$4E ;0E ;買い物
	DB	$4E ;0F ;サブゲーム
;- - - - - - - - - - - - - - - - - - -
	DB	$4E ;10 : 民家
	DB	$4D ;11 : 洞窟
	DB	$4D ;12 : ワンワンの小屋
	DB	$4F ;13 : ベッドルーム
	DB	$61 ;14 : 城
	DB	$63 ;15 : モリブリンの住処
	DB	$63 ;16 : 廃墟の神殿
	DB	$00 ;17 :
	DB	$00 ;18 :
	DB	$00 ;19 :
	DB	$00 ;1A :
	DB	$00 ;1B :
	DB	$00 ;1C :
	DB	$4E ;1D : うるりら図書館
	DB	$4E ;1E : 秘密の部屋(民家編)
	DB	$4D ;1F : 秘密の部屋(洞窟編)
;
;=========================================
;壁バンク
DJKBBK	; Danjyon Kabe bank adress !
	DB	$40 ;00	 LV1
	DB	$40 ;01	 LV2
	DB	$6C ;02	 LV3
	DB	$40 ;03	 LV4
	DB	$40 ;04	 LV5
	DB	$6C ;05	 LV6
	DB	$40 ;06	 LV7
	DB	$6E ;07	 LV8
	DB	$4A ;08	 LV9
	DB	$40 ;09	 予備
	DB	$46 ;0A	 山の洞窟
	DB	$40 ;0B
	DB	$40 ;0C
	DB	$40 ;0D
	DB	$48 ;0E ;買い物
	DB	$48 ;0F ;サブゲーム
;- - - - - - - - - - - - - - - - - - -
	DB	$48 ;10 : 民家
	DB	$46 ;11 : 洞窟
	DB	$48 ;12 : ワンワンの小屋
	DB	$4A ;13 : ベッドルーム
	DB	$40 ;14 : 城
	DB	$46 ;15 : モリブリンの住処
	DB	$6C ;16 : 廃墟の神殿
	DB	$00 ;17 :
	DB	$00 ;18 :
	DB	$00 ;19 :
	DB	$00 ;1A :
	DB	$00 ;1B :
	DB	$00 ;1C :
	DB	$48 ;1D : うるりら図書館
	DB	$48 ;1E : 秘密の部屋(民家編)
	DB	$46 ;1F : 秘密の部屋(洞窟編)
;
;=========================================
DJKBBK2	; 新ダンジョン 壁バンク アドレス
	DB	$4A ;00	 LV1
;
;=========================================
DJCABK	; Danjyon 持ち上げるものなど bank adress !
	DB	$79 ;00	 LV1
	DB	$79 ;01	 LV2
	DB	$77 ;02	 LV3
	DB	$79 ;03	 LV4
	DB	$79 ;04	 LV5
	DB	$77 ;05	 LV6
	DB	$78 ;06	 LV7
	DB	$79 ;07	 LV8
	DB	$79 ;08	 LV9
	DB	$63 ;09	 予備
	DB	$7A ;0A	 山の洞窟
	DB	$00 ;0B
	DB	$00 ;0C
	DB	$00 ;0D
;
	DB	$7B ;0E ; 買い物
	DB	$7B ;0F ; サブゲーム
;- - - - - - - - - - - - - - - - - - -
	DB	$7B ;10 : 民家
	DB	$7A ;11 : 洞窟
	DB	$7B ;12 : ワンワンの小屋
	DB	$79 ;13 : ベッドルーム
	DB	$7C ;14 : 城
	DB	$7A ;15 : モリブリンの住処
	DB	$77 ;16 : 廃墟の神殿
	DB	$00 ;17 :
	DB	$00 ;18 :
	DB	$00 ;19 :
	DB	$00 ;1A :
	DB	$00 ;1B :
	DB	$00 ;1C :
	DB	$7C ;1D : うるりら図書館
	DB	$7B ;1E : 秘密の部屋(民家編)
	DB	$7A ;1F : 秘密の部屋(洞窟編)
;
;=========================================
;	新ダンジョンのキャラナンバー００Ｈ台の
;	入れ替えバンクアドレス
;=========================================
NEWDJBK
	DW	$2D5E,$2D5E,            $3562,$3562
	DW	$2D5E,$2D5E,$3562,$3562,$3562,$3562
	DW	      $3562,$3562,$3562,$3562
	DW	      $2D50,$3562,$3562,$3562
	DW	      $2D50,$3562,$3562,$3562
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	新ダンジョンのキャラクターナンバー００ｈの		x
;x	辺りのキャラクター転送					x
;x		戻り値						x
;x		　Ａ：バンクアドレス				x
;x		ＨＬ：アドレス					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
NewDJChrSet
		PUSH	DE
		LD	A,(GRNDPT)
		AND	A
		JR	Z,NWDJCH_120
		CP	$005		;凸凹ブロックのある部屋？
		JR	NZ,NWDJCH_200	;	NO --> NWDJCH_200
NWDJCH_120
		LD	A,(ONOFFG)
		AND	A		;凸凹反転してる？
		JR	Z,NWDJCH_200	;	NO --> NWDJCH_200
		LD	A,C
		CP	$040
		JR	Z,NWDJCH_150
		CP	$080
		JR	NZ,NWDJCH_200
NWDJCH_150
		XOR	$0C0
		LD	L,A
		LD	H,$05E
		LD	A,(ONOFFG)
		LD	(ONOFHELP),A
		LD	(ONOFBLF),A
		POP	DE
		LD	A,$02D
		RET
NWDJCH_200
		LD	HL,NEWDJBK
		LD	A,(GRNDPT)
		SLA	A
		LD	E,A
		LD	D,$000
		ADD	HL,DE
		INC	HL
		LD	A,(HL)
		LD	E,A
		DEC	HL
		LD	A,(HL)
		LD	H,A
		LD	L,$000
		ADD	HL,BC
		LD	A,E
		POP	DE
		RET
;
;┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
;┃	zma.s のプログラムここに移動					 ┃
;┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	BLNKSUB ルーチンでジャンプするためのアドレスを設定する		x
;x----------------------------------------------------------------------x
;x	    ＥＮＴＲＹ							x
;x		Ｅ         ： BLNKFG（キャラバンク転送Ｎｏ．）		x
;x	    ＲＥＴＵＲＮ						x
;x		Ｈ         ： キャラバンク転送ルーチン ＨＩＧＨ		x
;x		Ｌ         ：           ”             ＬＯＷ		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
BLNKSUB_JMP
		DEC	E
		SLA	E
		LD	D,$0
		LD	HL,BLNK_TABLE
		ADD	HL,DE
		LD	A,(HLI)
		LD	H,(HL)		; ＨＩＧＨ
		LD	L,A		; ＬＯＷ
		RET

;------------------------------------------------------------------------
;	キャラバンク転送ルーチン テーブルデータ
;------------------------------------------------------------------------
BLNK_TABLE
		DW	RMBGST		; ( 1)
		DW	V_RAMC		; ( 2)
		DW	BANKST		; ( 3)
		DW	BANKS2		; ( 4)
		DW	BANKS3		; ( 5)
		DW	DJBKST		; ( 6) ダンジョン BG bank set !
		DW	GRBKST		; ( 7) 地上 BG bank set !
		DW	V_RAMB		; ( 8)
		DW	BANKTR		; ( 9)
;;		DW	TITLCHST
		DW	VRRET		; ( A)
		DW	GMAPBKST	; ( B)
		DW	VRRET		; ( C) ODMBKST
		DW	GOVBKST		; ( D)
		DW	GMAPCHST	; ( E)
		DW	V_RAMD		; ( F)
		DW	OPBKST		; (10) Opening bank(Sea & Mt.) set !
		DW	OPBKS2		; (11) Opening bank(ZELDA) set !
		DW	PEACHBKST	; (12)	;ピーチ写真！
		DW	LOVEBKST	; (13)	;海岸デモ！
		DW	KAB1BKST	; (14)	;へきが！
;--- Ending - -
		DW	ENDCHA		; (15);エンディング A CHR.TR
		DW	ENDCHB2		; (16);エンディング B2 CHR.TR
		DW	ENDCHC		; (17);エンディング C  CHR.TR
		DW	ENDCHB		; (18);エンディング B  CHR.TR
		DW	ENDCHD		; (19);エンディング D  CHR.TR
		DW	ENDCHE		; (1A);エンディング E  CHR.TR
		DW	ENDCHF		; (1B);エンディング F  CHR.TR
		DW	ENDCHG		; (1C);エンディング G  CHR.TR
;
		DW	ENDCHA1		; (1D);エンディング A(地上）  CHR.TR
		DW	ENDCHYM		; (1E);エンディング A(山遠景）  CHR.TR
		DW	ENDCHA2		; (1F);エンディング A2(LINK OBJ) CHR.TR
;- - - -
		DW	KABABKST	; (20) ;カバの絵！
		DW	TOUBGCH		; (21);７塔デモ！
;
		DW	MARINBKST	; (22) かもめまりん（ＣＧＢ専用）
		DW	ENDMSBKST	; (23) エンディングメッセージ（ＣＧＢ専用）
;
;
;----------------------------------------------------------------
	END
;----------------------------------------------------------------
