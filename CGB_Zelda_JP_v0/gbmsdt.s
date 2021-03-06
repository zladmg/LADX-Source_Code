 	KANJI
;
BANK1C	GROUP	$1C
;(CGB)	ORG	$4A70
  ;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  ;%						   %
  ;%	  黒点式表示携帯遊技的器具		   %
  ;%						   %
  ;%						   %
  ;%	      ＊   伝説的柴原   ＊		   %
  ;%						   %
  ;%						   %
  ;%	     人為的会話記号列集団		   %
  ;%						   %
  ;%						   %
  ;%	  体制調査的開発株式公司      森田	   %
  ;%  	       (Ｓ Ｒ Ｄ）			   %
  ;%						   %
  ;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;========== ひらがな=============================================
;
;  あ  い  う  え  お   か  き  く  け  こ   さ  し  す  せ  そ
;  WA  WI  WU  WE  WO   WKA WKI WKU WKE WKO  WSA WSI WSU WSE WSO
;
;  た  ち  つ  て  と   な  に  ぬ  ね  の   は  ひ  ふ  へ  ほ
;  WTA WTI WTU WTE WTO  WNA WNI WNU WNE WNO  WHA WHI WHU WHE WHO
;
;  ま  み  む  め  も      や  ゆ  よ    ら  り  る  れ  ろ  
;  WMA WMI WMU WME WMO    WYA WYU WYO    WRA WRI WRU WRE WRO
;
;  わ  を   ん
;  WWA WWO  WN
;
;  が  ぎ  ぐ  げ  ご   ざ  じ  ず  ぜ  ぞ   だ  ぢ  づ  で  ど
;  WGA WGI WGU WGE WGO  WZA WZI WZU WZE WZO  WDA WDI WDU WDE WDO
;
;  ば  び  ぶ  べ  ぼ      ゃ  ゅ  ょ   っ    ぱ  ぴ  ぷ  ぺ  ぽ 
;  WBA WBI WBU WBE WBO     WAY WUY WOY  WT   WPA WPI WPU WPE WPO
;
;========== カタカナ=============================================
;
;  ア  イ  ウ  エ  オ  カ  キ  ク  ケ  コ   サ  シ  ス  セ  ソ
;  KA  KI  KU  KE  KO  KKA KKI KKU KKE KKO  KSA KSI KSU KSE KSO
;  
;  タ  チ  ツ  テ  ト   ナ  ニ  ヌ  ネ  ノ   ハ  ヒ  フ  ヘ  ホ
;  KTA KTI KTU KTE KTO  KNA KNI KNU KNE KNO  KHA KHI KHU KHE KHO
;
;  マ  ミ  ム  メ  モ      ヤ  ユ  ヨ    ラ  リ  ル  レ  ロ  
;  KMA KMI KMU KME KMO     KYA KYU KYO   KRA KRI KRU KRE KRO  
;
;  ワ  ヲ   ン
;  KWA KWO  KN
;
;  ガ  ギ  グ  ゲ  ゴ   ザ  ジ  ズ  ゼ  ゾ   ダ  ヂ  ヅ  デ  ド
;  KGA KGI KGU KGE KGO  KZA KZI KZU KZE KZO  KDA KDI KDU KDE KDO
;
;  バ  ビ  ブ  ベ  ボ       ﾔ   ﾕ   ﾖ   ッ   パ  ピ  プ  ペ  ポ 
;  KBA KBI KBU KBE KBO     KAY KUY KOY  KT   KPA KPI KPU KPE KPO
;
;  ァ  ィ   ウ  ェ  ォ
;  SSA SSHI SSU SSE SSO
;
;
;
;  ０  １  ２  ３  ４  ５  ６  ７  ８  ９
;  W0  W1  W2  W3  W4  W5  W6  W7  W8  W9
;
;  A   B   C   D   E   F  
;  RA  RB  RC  RD  RE  RF 
;
;  矢印 
;  上  下  左  右  
;  XU  XD  XL  XR 
;========== 記号 =============================================
;
;  ！  ？  ー  space  ・   、  。  「  」
;  WBC WQE WB_  XX    WTN WT2 WMR KG1 KG2
;
; 絵文字
;	MK1 :足
;	MK2 :伏せ字
;	MK3 :どくろ
;	MK4 :リンク
;	MK5 :マリン
;	MK6 :タリン
;	MK7 :オカリナ
;	MK8 :釣竿
; アイテム文字
;	IT1 ;ヨッシー
;	IT2 ;リボン
;	IT3 ;ドッグフード
;	IT4 ;バナナ
;	IT5 ;棒
;	IT6 ;ハチの巣
;	IT7 ;パイン
;	IT8 ;ハイビスカス
;	IT9 ;ホウキ
;	ITA ;針
;	ITB ;ブラジャー
;	ITC ;ウロコ
;	ITD ;メガネ
;	ITE ;ブロマイド
;
;
;  WED ： 終了コード
;
;  WE2 ： 質問文 −−＞  はい  or  いいえ
;
;	プレイヤーの名前をメッセージに表示するとき、
;		NM,NM,NM,NM,NM,
;	と　５文字分として、５つセット
;                      
;     注意   メセージ数が３２文字（終了コードは含まず）
;            を越えるとキー入力により自動改行を行なう。
;**************************************************************
;
;**************************************************************
;**********
;*タリン１*
;**********
;+----------------------------------------------+
;|	ちょーっと、まったあ！			|
;|	こっちさ、くるだよ。			|
;+----------------------------------------------+
MS00	;  盾をくれる人のめっせいじ　（盾を持たずに外出しようとすると）
        DB      WTI,WOY,WB_,WT,WTO,WT2,WMA,WT,WTA,WA,WBC,XX,XX,XX,XX,XX
        DB      WKO,WT,WTI,WSA,WT2,WKU,WRU,WDA,WYO,WMR
        DB      WED

;********
;*マリン*
;********
;+----------------------------------------------+
;|	あっ！きがついたのね！よかった。	|
;|	もうダメかとおもった・・・・・		|
;|	こわいユメを、みていたみたい・・	|
;|	ひどく、うなされていたよ。		|
;|	・・・　・・・えっ？　ゼルダ？？	|
;|	ちがうわ。わたしは、マリン。		|
;|	いしきが、はっきりしてないのね		|
;|	ここは、コホリントじまよ。		|
;+----------------------------------------------+
MS01	;少女まりん　（オープニング）
        DB     WA,WT,WBC,WKI,WGA,WTU,WI,WTA
        DB     WNO,WNE,WBC,WYO,WKA,WT,WTA,WMR
        DB     WMO,WU,KDA,KME,WKA,WTO,WO,WMO
        DB     WT,WTA,WTN,WTN,WTN,WTN,WTN,XX
;      
        DB     WKO,WWA,WI,KYU,KME,WWO,WT2,WMI,WTE
        DB     WI,WTA,WMI,WTA,WI,WTN,WTN
        DB     WHI,WDO,WKU,WT2,WU,WNA,WSA,WRE,WTE
        DB     WI,WTA,WYO,WMR,XX,XX,XX
;
        DB     WTN,WTN,WTN,XX,WTN,WTN,WTN,WE
        DB     WT,WQE,XX,KZE,KRU,KDA,WQE,WQE
        DB     WTI,WGA,WU,WWA,WMR,XX,WWA,WTA
        DB     WSI,WHA,WT2,KMA,KRI,KN,WMR,XX
;       
        DB     WI,WSI,WKI,WGA,WT2,WHA,WT
        DB     WKI,WRI,WSI,WTE,WNA,WI,WNO,WNE,XX
        DB     WKO,WKO,WHA,WT2,KKO,KHO,KRI,KN,KTO
        DB     WZI,WMA,WYO,WMR,XX,XX,XX
        DB     WED
;
;+----------------------------------------------+
;|	みちにそって、ミナミにあるけば		|
;|	あなたの、ながれついた、はまべよ	|
;|	ただ、あなたが、しまにきてから		|
;|	かいぶつたちが、このあたりにも		|
;|	ウロウロするようになったの。		|
;|	きをつけていってね。			|
;+----------------------------------------------+
MS02	;少女まりん　（繰り返し）
        DB     WMI,WTI,WNI,WSO,WT,WTE,WT2,KMI
        DB     KNA,KMI,WNI,WA,WRU,WKE,WBA,XX
        DB     WA,WNA,WTA,WNO,WT2,WNA,WGA,WRE,WTU
        DB     WI,WTA,WT2,WHA,WMA,WBE,WYO
;
        DB     WTA,WDA,WT2,WA,WNA,WTA,WGA,XX
        DB     WSI,WMA,WNI,WKI,WTE,WKA,WRA,XX
        DB     WKA,WI,WBU,WTU,WTA,WTI,WGA,WT2
        DB     WKO,WNO,WA,WTA,WRI,WNI,WMO,XX
;
        DB     KU,KRO,KU,KRO,WSU,WRU,WYO,WU
        DB     WNI,WNA,WT,WTA,WNO,WMR,XX,XX
        DB     WKI,WWO,WTU,WKE,WTE,WI,WT,WTE,WNE
        DB     WMR,XX,XX,XX,XX,XX,XX
        DB     WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS03	;少女まりん　（風見鶏の横で歌う編）
        DB     WA,WT,WBC,NM,NM,NM,NM,NM,KTA,KRI,KN,WHA,WMO,WRI,WHE,XX
        DB     KKI,KNO,KKO,WTO,WRI,WNI,WT2,WDE,WKA,WKE,WTI,WAY,WT,WTA,WNO,XX
;
        DB     WWA,WTA,WSI,WHA,WT2,WU,WTA,WU,WNO,WGA,XX,WDA,WI,WSU,WKI,WBC
        DB     WKI,WI,WTE,WBC,KG1,WKA,WZE,WNO,WSA,WKA,WNA,KG2,WNO,WU,WTA,WYO
        DB     WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS04	;少女まりん　（おかりなを持ってるとき）
        DB     WA,WRE,WQE,XX,WSU,WTE,WKI,WNA,KHU,KE,WMI,WTU,WKE,WTA,WNO,WNE
        DB     WWA,WTA,WSI,WNO,WU,WTA,WNI,WA,WWA,WSE,WTE,WHU,WI,WTE,WMI,WTE
        DB     WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS05	;少女まりん　（歌を覚えた後）
        DB     WYA,WT,WPA,WRI,WWA,WTA,WSI,WHA,WT2,WU,WTA,WGA,WSU,WKI,WBC,XX
        DB     NM,NM,NM,NM,NM,WHA,WT2,WNA,WNI,WGA,WSU,WKI,WQE
        DB     WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS06	;少女まりん　（タリンとあった後）
        DB     NM,NM,NM,NM,NM,XX,KTA,KRI
        DB     KN,WHA,WT2,WO,WU,WTI,WDE,XX
        DB     WO,WHI,WRU,WNE,WSI,WTE,WRU,WNO
        DB     WMR,XX,XX,XX,XX,XX,XX,XX
;
        DB     WWA,WTA,WSI,WHA,WT2,WU,WTA,WWO
        DB     WU,WTA,WU,WWA,WBC,XX,XX,XX
        DB     WSO,WU,KG1,WKA,WZE,WNO,WSA,WKA
        DB     WNA,KG2,WNO,XX,WU,WTA,WYO,WMR
	DB	WED
;

;**************
;*いろんな時１*
;**************
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS07	;大きなカギのかかったドア 　（カギのないとき）
        DB     KMU,KMU,KT,WBC,KKA,KGI,WGA,WT2
        DB     WKA,WKA,WT,WTE,WI,WRU,WZO,WBC
        DB     KBO,KSU,WNO,KKA,KGI,WDE,WT2,WA,WKE
        DB     WRA,WRE,WRU,WHA,WZU,WDA,WMR
	DB	WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS08	;パワ−チップを手に入れた時
	DB WTI,WKA,WRA,WNO,WKA,WKE,WRA,WWO,WT2,WMI,WTU,WKE,WTA,WBC,XX,XX
	DB WNA,WN,WDA,WKA,XX,WTI,WKA,WRA,WGA,WWA,WI,WTE,WKI,WTA,WBC	
	DB	WED

;
;******************
;*タヌキのイベント*
;******************
;+----------------------------------------------+
;|	おうおう、それはネボケタケじゃ！	|
;|	３びょうでイイもんつくってやろう	|
;+----------------------------------------------+
MS09	;魔法おばば　（きのこあり）
        DB     WO,WU,WO,WU,WT2,WSO,WRE,WHA,KNE,KBO,KKE,KTA,KKE,WZI,WAY,WBC
        DB     W3,WBI,WOY,WU,WDE,KI,KI,WMO,WN,WTU,WKU,WT,WTE,WYA,WRO,WU
        DB     WED
;
;+----------------------------------------------+
;|	ふうーっ、キノコかじったら、　　	|
;|	タヌキになった　ゆめをみてただ。	|
;|	なにをやったあ、おぼえてねえだが	|
;|	なんだか、たのしかっただよ。　　	|
;+----------------------------------------------+
MS0A	;狸になったタリン
        DB     WHU,WU,WB_,WT,WT2,KKI,KNO,KKO,WKA,WZI,WT,WTA,WRA,WT2,XX,XX
        DB     KTA,KNU,KKI,WNI,WNA,WT,WTA,XX,KYU,KME,WWO,WMI,WTE,WTA,WDA,WMR
;
        DB     WNA,WNI,WWO,WYA,WT,WTA,WKA,WT2,WO,WBO,WE,WTE,WNE,WE,WDA,WGA
        DB     WNA,WN,WDA,WKA,WT2,WTA,WNO,WSI,WKA,WT,WTA,WDA,WYO,WMR,XX,XX
        DB     WED 
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS0B	;タリン　繰り返し
        DB     WO,WRA,WHA,WT2,WMO,WU,WSU,WKO,WSI,WYA,WSU,WN,WDE,WKA,WRA,XX
        DB     WU,WTI,WHE,XX,WKA,WE,WRU,WKO,WTO,WNI,WSU,WRU,WDA,WMR
        DB     WED
;
;+----------------------------------------------+
;|	トローリトロリ　もりのキノコで		|
;|	まほうのこな　トローリトロリ		|
;+----------------------------------------------+
MS0C	;魔法おばば　（きのこ無し）
 DB KTO,KRO,WB_,KRI,KTO,KRO,KRI,XX,WMO,WRI,WNO,KKI,KNO,KKO,WDE,XX
 DB WMA,WHO,WU,WNO,WKO,WNA,XX,KTO,KRO,WB_,KRI,KTO,KRO,KRI
 DB WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS0D	;　たぬき　（たりん）
   DB  KO,KRA,WHA,WT2,WI,WTA,WZU,WRA
   DB  KTA,KNU,KKI,WDA,WTN,WTN,WTN,WTN
   DB  KKO,KNA,WT,WPO,WI,WMO,WNO,WGA
   DB  WT2,WKI,WRA,WI,WDA,WB_,WYO,WMR
   DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS0E	;森で拾ったキノコだ！ 何に使うんやろう？
  DB  KKI,KNO,KKO,WWO,WKA,WKA,WGE,WTA
  DB  WBC,XX,WHO,WU,WZI,WUY,WN,WNA
  DB  WKA,WHO,WRI,WGA,WT2,WA,WTA,WRI,WNI,WHI,WRO,WGA,WRU
  DB  WTN,WTN,WTN
  DB	WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS0F	;キノコを拾った！
 DB  KKI,KNO,KKO,WWO,WHI,WRO,WT,WTA,WBC,XX,WHO,WU,WZI,WUY,WN,WNA
 DB  WKA,WHO,WRI,WGA,WT2,WHA,WNA,WNO,WO,WKU,WNI,WHI,WRO,WGA,WRU,WMR
 DB	WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS10	;タリンの寝言
     DB  KU,WB_,KN,XX,WWA,WKA,WRA,WN
     DB  WKO,WTO,WHA,WT2,WU,WRU,WRI,WRA
     DB  WZI,WI,WSA,WN,WNI,XX,KDE,KN,KWA
     DB  WSU,WRU,WTO,WE,WB_,WDA,WYO
;
     DB  WTN,WTN,WTN,XX,KGU,WB_,XX,XX
     DB  KGU,WB_,XX,XX,KGU,WB_
     DB   WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS11	;森から帰った　タリン
 DB  KU,WB_,KN,XX,WO,WRA,WT2
 DB  WTU,WKA,WRE,WTA,WDA,WMR,XX,XX,XX
 DB  WSU,WKO,WSI,WNE,WRU,WDA,WTN,WTN,WTN
 DB  XX,KGU,WB_,XX,KGU,WB_
 DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS12	;しゃべる  き
   DB   KHU,KI,WB_,WB_,KT,WBC,XX,KBI
   DB   KT,KKU,KRI,WSI,WTA,WNA,WA,WBC
   DB   WDE,WMO,WT2,WI,WI,WKO,WTO,XX
   DB   WO,WSI,WE,WTE,WA,WGE,WRU,WYO
;
   DB   KDA,KN,KZI,KOY,KN,WNO,WKA,WBE
   DB   WWO,XX,KKE,KN,WDE,XX,XX,XX
   DB   KTU,KN,KTU,KN,WSI,WTE,WGO,WRA
   DB   WN,WMR,XX,XX,XX,XX,XX,XX
;
   DB   WO,WTO,WGA,WTI,WGA,WU,WTO,WKO
   DB   WRO,WHA,WT2,KBA,KKU,KDA,KN,WDE
   DB   WKO,WWA,WSE,WRU,WN,WDA,WYO,WBC
   DB   XX,WKI,WGA,WTU,WI,WTE,WTA,WQE
	DB	WED
;
;**********************************
;*マリンの歌をおぼえた　メーベの村*
;**********************************
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS13	;曲を覚えた　（マリン編）
        DB      KG1,WKA,WZE,WNO,WSA,WKA,WNA,KG2
        DB      WNO,WU,WTA,WWO,XX,XX,XX,XX
        DB      WO,WSI,WE,WTE,WMO,WRA,WT,WTA
        DB      WBC,XX,XX,XX,XX,XX,XX,XX
;
        DB      KMA,KRI,KN,WNO,WU,WTA,WGO
        DB      WE,WGA,XX,XX,XX,XX,XX,XX,XX
        DB      WKO,WKO,WTI,WYO,WKU,XX,WMI,WMI
        DB      WNI,WNO,WKO,WRU,WMR,XX,XX,XX
        DB      WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS14	;１６　はいの時
        DB      WKO,WNO,WU,WTA,WT2,WWA,WSU,WRE
        DB      WNA,WI,WYO,WU,WNI,XX,XX,XX
        DB      WTO,WKI,WDO,WKI,XX,WU,WTA,WT
        DB      WTE,WNE,WBC
        DB      WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS15	;１６　いいえの時
        DB      WE,WB_,WT,WBC,XX,WTI,WAY,WN,WTO,WO,WBO,WE,WTE,WNE,WBC,XX
        DB      WWA,WTA,WSI,WNO,WSU,WKI,WNA,XX,WU,WTA,WNA,WN,WDA,WKA,WRA
        DB      WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS16	;ちゃんと覚えた
        DB      WDO,WU,WQE,XX,KHA,WB_,KTO,WNI,WSI,WMI,WRU,WU,WTA,WDE,WSI,WOY
        DB      WTI,WAY,WN,WTO,XX,WO,WBO,WE,WTA,WQE,XX,XX,XX,XX,XX,XX
;
        DB      XX,XX,XX,XX,WU,WN,XX,XX,XX,WTI,WT,WTO,WMO
        DB      WE2

;
;**********************
;*トレーシーの薬屋さん*
;**********************
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS17	;薬売り　トレーシー
    DB   WWA,WTA,WSI,WT2,WKI,WMA,WGU,WRE
    DB   KTO,KRE,WB_,KSI,WB_,WBC,XX,XX
    DB   WGE,WN,WKI,WNI,WNA,WRU,KHI,KMI,KTU
    DB   XX,WU,WT,WTE,WRU,WNO,WMR
    DB   WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS18	; 薬持ってないとき１
    DB   XX,W2,W8,KRU,KPI,WB_,WDE,XX
    DB   KHI,KMI,KTU,WSU,WRU,WQE,XX,XX
    DB   XX,XX,XX,XX,WSU,WRU,XX,XX,XX,WSI,WNA,WI
    DB   WE2
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS19	;薬持ってないとき２
    DB   XX,W4,W2,KRU,KPI,WB_,WDE,XX
    DB   KHI,KMI,KTU,WSU,WRU,WQE,XX,XX
    DB   XX,XX,XX,XX,WSU,WRU,XX,XX,XX,WSI,WNA,WI
    DB   WE2
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS1A	;買ったとき
    DB   XX,KNU,KRI,XX,KNU,KRI,XX
    DB   WDO,WMO,XX,WA,WRI,WGA,WTO,WT,WBC
    DB   KHI,KMI,KTU,WNO,WKU,WSU,WRI,XX
    DB   WNU,WT,WTE,WO,WI,WTA,WWA,WBC
;
    DB   KHA,WB_,KTO,WGA,W0,WNI,WNA,WT,WTA,WRA
    DB   WKI,WKU,WWA,WYO,WMR,XX
    DB   WMA,WTA,WT2,WYO,WT,WTE,WRA,WSI,WTE,WNE,WE,WN,WTN,WTN,WTN
    DB   WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS1B	;お金ないよ
    DB   WTI,WOY,WT,WTO,WB_,WBC,XX
    DB   KA,KN,KTA,WT2,KKA,KNE,WGA,XX,XX
    DB   WTA,WRI,WNA,WI,WWA,WYO,WN,WMR
    DB   WDE,WNA,WO,WSI,WTO,WI,WDE,WBC
    DB   WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS1C	;薬持っているとき
    DB   XX,WTN,WTN,WTN,XX,WTN,WTN,WTN
    DB   XX,WTN,WTN,WTN,XX,XX,XX,XX
    DB   WDE,WMO,WT2,WA,WN,WTA,WNI,WHA,XX,WU,WRA,WNA,WI,WBC
    DB   WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS1D	;買わない
    DB   WNA,WNI,WSA,WT2,WSE,WT,WKA,WKU
    DB   WGE,WN,WKI,WGA,WDE,WRU,WT,WTE
    DB   WI,WT,WTE,WRU,WNO,WNI,WTN,WTN
    DB   WTN,WI,WKU,WZI,WNA,WSI,WT,WBC
    DB    WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS1E	;　薬持ってないとき３
    DB   WTN,WTN,WTN,WTN,WTN,KA,KN,KTA
    DB   WT2,WKA,WWA,WI,WI,WKA,WRA,XX
    DB   W7,KRU,KPI,WB_,WNI,XX,KO,KMA,KKE
    DB   WSI,WTI,WAY,WU,WWA,WA,WN
    DB   WED
;
;**************
;*いろんな時２*
;**************
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS1F	;マリン ナンパ成功！
  DB  WYA,WT,WTA,WBC,XX,KMA,KRI,KN,WWO,XX,WO,WKA,WRI,WSI,WTA,WBC
  DB  XX,XX,XX,XX,KTI,KAY,WT2,KTI,KAY,KN,KSU,WBC,WQE
  DB  WED
;
;+----------------------------------------------+
;|	コーン　コンコン　カキクケコーン	|
;+----------------------------------------------+
MS20	;きつね
    DB  KKO,WB_,KN,XX,KKO,KN,KKO,KN
    DB  XX,KKA,KKI,KKU,KKE,KKO,WB_,KN
    DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS21	; 狸の笑い声
    DB  KI,KT,KSI,KT,KSI,KT,KSI,KT
    DB  XX,WHU,WSI,WGI,WNO,WMO,WRI,WDE
    DB  KPO,KN,KPO,KKO,KPO,KKO,KRI,KN
    DB  XX,WMA,WYO,WU,WDA,WBE,WB_,WBC
    DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS22	;　ワンワンの鳴き声
    DB  KBA,KU,KBA,KU,KT,XX,XX,XX
    DB  KBA,KU,KBA,KU,KT,XX,XX,XX
    DB  WED
;
;+----------------------------------------------+
;|	キャン　キャン　キャン　キャン		|
;+----------------------------------------------+
MS23	; 御座敷ワンワン
    DB  KKI,KAY,KN,XX,KKI,KAY,KN,XX
    DB  KKI,KAY,KN,XX,KKI,KAY,KN,XX
    DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS24	; 妖精の泉
    DB  WKI,WZU,WTO,WTU,WKA,WRE,WWO,XX
    DB  WI,WYA,WSI,WMA,WSI,WOY,WU,WMR
    DB  WSU,WKO,WSI,WNO,WA,WI,WDA,WT2
    DB  WME,WWO,WTO,WZI,WTE,WTN,WTN
    DB  WED
;
;************
;*＃７中ボス*
;************
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS25	;鳥ツカイのほえずら！
  DB WYO,WKU,WMO,WT2,WO,WRE,WSA,WMA,WNO,XX,WKA,WWA,WI,WI,XX,XX
  DB WTE,WSI,WTA,WWO,WT2,WYA,WRI,WYA,WGA,WT,WTA,WNA,WBC,XX,XX,XX
  DB WA,WTO,WDE,XX,WHO,WE,WDU,WRA,WKA,WKU,WNA,WYO,WBC,XX,XX,XX
  DB WO,WBO,WE,WTE,WYA,WGA,WRE,WT,WBC,XX,WKE,WT,XX,WPE,WT,WBC
  DB WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS26	;鳥ツカイの前話！
  DB  WHE,WB_,WI,XX,XX,WSO,WKO,WNO,WT2,KO,KTI,KBI,WSA,WN,XX,XX
  DB  WO,WRE,WSA,WMA,WTO,WT2,WSI,WOY,WU,WBU,WSU,WRU,WKI,WKA,WQE,XX
  DB  WYO,WSI,XX,WZI,WOY,WU,WTO,WU,WDE,WI,XX,WYA,WRO,WU,WDO,WMO
  DB  WTA,WTA,WN,WZI,WMA,WI,WNA,WBC,XX,WPE,WT,WBC
  DB  WED
;
;+----------------------------------------------+
;|	あっしが、４つごのおやじ		|
;|	そのなもパパールっていうっスよ！	|
;|	いずれ、やまでそうなんするっスよ	|
;|	そのときゃあ、たのむっスよ！		|
;+----------------------------------------------+
MS27	;パパールの最初！
  DB  WA,WT,WSI,WGA,WT2,W4,WTU,WGO
  DB  WNO,WO,WYA,WZI,XX,XX,XX,XX
  DB  WSO,WNO,WNA,WMO,KPA,KPA,WB_,KRU
  DB  WT,WTE,WI,WU,WT,KSU,WYO,WBC
;
  DB  WI,WZU,WRE,WT2,WYA,WMA,WDE,WSO
  DB  WU,WNA,WN,WSU,WRU,WT,KSU,WYO
  DB  WSO,WNO,WTO,WKI,WAY,WA,WT2,WTA
  DB  WNO,WMU,WT,KSU,WYO,WBC
  DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS28	;マリンオプション時壷割り変則
  DB   KKI,KAY,WB_,WB_,WB_,KT,WBC,XX,WWA,WT,WTE,WBC,WWA,WT,WTE,WBC 
  DB   WDO,WN,WDO,WN,XX,KBU,KTI,WKO,WWA,WSI,WTE,WT,WBC,WBC,XX,XX
;
  DB   XX,XX,XX,XX,XX,XX,XX,XX,XX,XX,XX,XX,XX,XX,XX,XX
  DB   WE,WT,WQE,XX,WNA,WNI,WQE,XX,WDO,WU,WKA,WSI,WTA,WNO,WQE   
   DB   WED
;
;+----------------------------------------------+
;|	おっと、そいつをかってもムダだぜ	|
;|	まだまだべんきょうが、たりねえな	|
;+----------------------------------------------+
MS29	;持ってるものを買おうとしたとき
        DB    WO,WT,WTO,WT2,WSO,WI,WTU,WWO
        DB    WKA,WT,WTE,WMO,KMU,KDA,WDA,WZE
;
        DB    WMA,WDA,WMA,WDA,WBE,WN,WKI,WOY,WU,WGA
        DB    WT2,WTA,WRI,WNE,WE,WNA
        DB    WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS2A	;ライフ満タン　（ＵＦＯキャッチャー）
        DB    WGE,WN,WKI,WNO,WKA,WTA,WMA,WRI,WWO
        DB    XX,WTE,WNI,WI,WRE,WTA,WMR
        DB    KDO,KT,KKU,KN,KDO,KT,KKU,KN
        DB    XX,KHA,WB_,KTO,WMA,WN,WTA,WN
        DB    WED
;
;
;****************
;*村の道具やさん*
;****************
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS2B	;Not used
;;;;;;;;MS2B	;商品メッセージ（ロッドの素）
;;;;;;;;        DB    KRO,KT,KDO,WNO,WMO,WTO,XX
;;;;;;;;        DB    W1,W0,KKO,XX,W1,W0,KRU,KPI,WB_
;;;;;;;;;
;;;;;;;;        DB    XX,XX,XX,XX,WKA,WU
;;;;;;;;        DB    XX,XX,XX,WHO,WSI,WKU,WNA,WI
;;;;;;;;        DB    WE2
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS2C	;商品メッセージ（弓矢セット編）
        DB    WYU,WMI,XX,WYA,XX,KSE,KT,KTO
        DB    XX,W9,W8,W0,KRU,KPI,WB_,XX
;
        DB    XX,XX,XX,XX,WKA,WU
        DB    XX,XX,XX,WTA,WKA,WSU,WGI,WRU,WYO,WBC
        DB    WE2
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS2D	;商品メッセージ（矢１０本編）
        DB    XX,WYA,XX,W1,W0,WPO,WN,XX
        DB    XX,W1,W0,KRU,KPI,WB_,XX,XX
;
        DB    XX,XX,XX,XX,WKA,WU,XX
        DB    XX,XX,WI,WRA,WNA,WI,WYO
        DB    WE2
;
;+----------------------------------------------+
;|	いらっしゃい！　ほしいしなもんは	|
;|	ここへ、もってきてくだせえ。		|
;+----------------------------------------------+
MS2E	;西山さんの売り口上（商品を持ってない場合）
;
	DB	WI,WRA,WT,WSI,WAY,WI,WBC,XX,WHO,WSI,WI,WSI,WNA,WMO,WN,WHA
        DB      WKO,WKO,WHE,WT2,WMO,WT,WTE,WKI,WTE,WKU,WDA,WSE,WE,WMR,XX,XX
;
	DB	WED
;
;+----------------------------------------------+
;|	おおーっと！そいつはいけねえや！	|
;|	ちゃんとカネはらってくだせえ。		|
;+----------------------------------------------+
MS2F	;怒りの西山！（万引きしょうとした場合）
	DB	WO,WO,WB_,WT,WTO,WBC,WSO,WI,WTU,WHA,WI,WKE,WNE,WE,WYA,WBC
	DB	WTI,WAY,WN,WTO,KKA,KNE,WHA,WRA,WT,WTE,WKU,WDA,WSE,WE,WMR
;
	DB	WED
;
;+----------------------------------------------+
;|	いかしたスコップ　２００ルピー		|
;|	　　　＊かう　　　かわないよ		|
;+----------------------------------------------+
MS30	;商品メッセージ（スコップ編）
	DB	WI,WKA,WSI,WTA,KSU,KKO,KT,KPU,XX
	DB	W2,W0,W0,KRU,KPI,WB_,XX
;
	DB	XX,XX,XX,XX,WKA,WU,XX
	DB	XX,XX,WI,WRA,WNA,WI,WYO
	DB	WE2
;
;+----------------------------------------------+
;|	ハート　３こ　１０ルピー		|
;|	　　　＊かう　　　かわないよ		|
;+----------------------------------------------+
MS31	;商品メッセージ（ハート３コ編）
	DB	KHA,WB_,KTO,XX,W3,WKO,XX,W1,W0,KRU,KPI,WB_
	DB	XX,XX,XX,XX
;
	DB	XX,XX,XX,XX,WKA,WU,XX
	DB	XX,XX,WKA,WWA,WNA,WI,WYO,WBC
	DB	WE2
;
;+----------------------------------------------+
;|	タテ　２０ルピーなまえもいれます	|
;|	　　　＊かう　　　かわないよ		|
;+----------------------------------------------+
MS32	;商品メッセージ（楯 LV1 編）
	DB	KTA,KTE,XX,W2,W0,KRU,KPI,WB_
	DB	WNA,WMA,WE,WMO,WI,WRE,WMA,WSU
;
	DB	XX,XX,XX,XX,WKA,WU,XX
	DB	XX,XX,WKA,WWA,WNA,WI,WYO
	DB	WE2
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS33	;商品メッセージ（爆弾１０個編）
        DB      KBA,KKU,KDA,KN,XX,W1,W0,KKO,XX
        DB      XX,XX,W1,W0,KRU,KPI,WB_
;
        DB      XX,XX,XX,XX,WKA,WU,XX
        DB      XX,XX,WKA,WWA,WNA,WI,WYO
        DB      WE2
;
;+----------------------------------------------+
;|	おおっと、カネがたりないんじゃあ	|
;|	しかたねー。でなおしておくんな！	|
;+----------------------------------------------+
MS34	;金を持ってないとき
  DB  WO,WO,WT,WTO,WT2,KKA,KNE,WGA,WTA,WRI,WNA,WI,WN,WZI,WAY,WA
  DB  WSI,WKA,WTA,WNE,WB_,WMR,WDE,WNA,WO,WSI,WTE,WO,WKU,WN,WNA,WBC
  DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS35	;おおきに
  DB  WA,WRI,WGA,WTO,WU,WGO,WZA,WI,WYA,WSI,WTA,WBC,XX,XX,XX,XX
  DB  WMA,WTA,XX,WYO,WT,WTE,WKU,WDA,WSE,WE,WMR
  DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS36	;万引きに成功したとき
  DB  XX,XX,XX,XX,XX,WNA,WN,WTO,WT,WBC,WQE,XX,XX,XX,XX,XX
  DB  WTA,WDA,WDE,WMO,WNO,WWO,WTE,WNI,WI,WRE,WTE,WSI,WMA,WT,WTA,WBC
;
  DB  XX,XX,WTN,WTN,WTN,XX,WTN,WTN,WTN,XX,WTN,WTN,WN,WQE,WQE
  DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS37	;Not Used
;;;;;;;;MS37	;騙されて商品を買ったとき
;;;;;;;;  DB  WHA,WT,WHA,WT,WHA,WT,XX,W9,W8,W0,KRU,KPI,WB_,WMO,XX,XX
;;;;;;;;  DB  WKU,WRE,WYO,WT,WTA,WWA,WI,XX,WSE,WKE,WN,WSI,WRA,WZU,WME
;;;;;;;;  DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS38	;万引き後，再び来店したとき
  DB  WA,WRE,WHO,WDO,WT2,WTI,WAY,WN
  DB  WTO,KKA,KNE,WHA,WRA,WE,WT,WTE
  DB  WI,WT,WTA,WNO,WNI,WTN,WTN,WTN
  DB  XX,XX,WSI,WKA,WTA,WGA,WNA,WI
  DB  WSI,WN,WDE,WMO,WRA,WU,WBC
  DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS39	;カナレット城の門が開いた！
  DB  KO,KO,KT,WQE,WO,WSI,WRO
  DB  WNO,WMO,WN,WGA,WHI,WRA,WI,WTA,WBC
  DB  WKO,WRE,WDE,WT2,WKA,WE,WRI,WHA,XX
  DB  KRA,KKU,KTI,KN,WDA,WT,WBC
  DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS3A	;Not used
;;;;;;;;MS3A	;商品メッセージ　（爆弾２０個　編）
;;;;;;;;  DB  KBA,KKU,KDA,KN,XX,W2,W0,KKO,XX,XX,W2,W0,KRU,KPI,WB_,XX
;;;;;;;;  DB  XX,XX,XX,XX,WKA,WU,XX,XX,XX,WYA,WB_,WME,WYO,WT,WBC
;;;;;;;;  DB  WE2

;-------------------------------------------------------------------------;
;**************
;*はやりの遊び*
;**************
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS3B	;ＵＦＯキャッチャ−
  DB  WHA,WYA,WRI,WNO,KGE,WB_,KMU,XX,W1,WKA,WI,W1,W0,KRU,KPI,WB_
  DB  XX,XX,XX,XX,WYA,WRU,XX
  DB  XX,XX,WYA,WME,WTO,WKU
  DB  WE2
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS3C	;ＵＦＯキャッチャ−操作方法説明
  DB  KBO,KTA,KN,WWO,WO,WSI,WTE
  DB  KKU,KRE,WB_,KN,WWO,WU,WGO,WKA,WSU
  DB  WTN,WTN,WA,WTO,WHA,WT2,WSO,WNO
  DB  KTA,KI,KMI,KN,KGU,WDA,WKE,WBC
;
  DB  WSA,WA,WT2,KBO,KTA,KN,WNO,WMA
  DB  WE,WHE,WT2,WI,WT,WTO,WKU,WRE
  DB  KGA,KN,KBA,WT,WTE,WNE,WBC
  DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS3D	;Ｌ１の盾を取ったとき
  DB  KTA,KTE,WWO,WTE,WNI,WI,WRE,WTA
  DB  WBC,XX,XX,XX,XX,XX,XX,XX
  DB  WU,WRA,WNI,WNA,WMA,WE,WWO,XX
  DB  WKA,WI,WTE,WO,WKO,WB_,WBC
  DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS3E	;再度挑戦させるとき
  DB  WMO,WI,WTI,WDO,WYA,WT,WTE,WMI,WTI,WAY,WB_,WDO,WU,WDA,WI,WQE
  DB	XX,XX,XX,XX,WYA,WRU,XX
  DB	XX,XX,WMO,WU,WYA,WME,WRU
  DB	WE2
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS3F	;再度挑戦したとき
  DB  WMA,WT,WT2,WGA,WN,WBA,WT,WTE,WO,WKU,WN,WNA,WBC,XX,XX,XX,XX
  DB	WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS40	;全部取ったとき
  DB  WMO,WU,XX,WKI,WOY,WU,WHA,WT2,WMI,WSE,WZI,WMA,WI,WDA,WYO,XX
  DB  WMA,WTA,WT2,WA,WSO,WBI,WNI
  DB  WKI,WTE,WTI,WOY,WB_,WDA,WI,WBC
  DB	WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS41	;魔法の粉を取った時
  DB  WMA,WHO,WU,WNO,WKO,WNA,WWO
  DB  WTO,WT,WTA,WBC,XX,XX,XX,XX,XX
  DB  WI,WRO,WN,WNA,WMO,WNO,WNI,XX,KHU 
  DB  KRI,KHU,KRI,WSI,WYO,WU,WBC
  DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS42	;３０ルピーを取った時
  DB  W3,W0,KRU,KPI,WB_,WWO,WTO,WT,WTA,WBC
  DB  XX,XX,XX,XX,XX,XX
  DB  WKO,WRE,WDE,WA,WTO,XX,W3,WKA,WI
  DB  WHA,WT2,WDE,WKI,WRU,WYO,WMR
  DB	WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS43	;おばけのおはか
  DB   WTN,WTN,WTN,XX,KGO,KHO,KGO,KHO
  DB   XX,KGO,KHO,KGO,KHO,XX,WTN,WTN
  DB   XX,XX,XX,XX,XX,XX,XX,XX
  DB   XX,XX,XX,XX,XX,XX,XX,XX
;
  DB   WTN,WTN,WTN,XX,WKO,WNA,XX,WKA
  DB   WKE,WNA,WI,WDE,XX,WTN,WTN,WTN
  DB   XX,XX,XX,XX,XX,XX,XX,XX
  DB   XX,XX,XX,XX,XX,XX,XX,XX
;
  DB   WTN,WTN,WTN,XX,WTA,WTA,WRU,WYO
  DB   WT,WBC,XX,KGO,KHO,XX,WTN,WTN
  DB   XX,XX,XX,XX,XX,XX,XX,XX
  DB   XX,XX,XX,XX,XX,XX,XX,XX
  DB 	WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS44	;ヨッシ−人形を取った時
  DB  KYO,KT,KSI,WB_,WDA,WT,WBC,XX
  DB  WKO,WNO,WGO,WRO,WI,WRO,WN,WNA
  DB  KGE,WB_,KMU,WDE,WT2,WMI,WKA,WKE,WRU,WNA,WB_,WMR
  DB  WED
;

;
;********
;*釣り堀*
;********
;+----------------------------------------------+
;|	つりはどうかね？　１０ルピーだよ	|
;|	　　　＊します　　けっこうです		|
;+----------------------------------------------+
MS45	;釣り堀
  DB  WTU,WRI,WHA,WDO,WU,WKA,WNE,WQE,XX,W1,W0,KRU,KPI,WB_,WDA,WYO
  DB  XX,XX,XX,XX,WSI,WMA,WSU
  DB  XX,XX,WKE,WT,WKO,WU,WDE,WSU
  DB  WE2
;
;+----------------------------------------------+
;|	もっと　じょうねつをもたないと		|
;|	だめだよ！				|
;+----------------------------------------------+
MS46	;釣りしないとき
  DB  WMO,WT,WTO,XX,WZI,WOY,WU,WNE,WTU,WWO,WMO,WTA,WNA,WI,WTO,XX
  DB  WDA,WME,WDA,WYO,WBC
  DB  WED
;
;+----------------------------------------------+
;|	そうか・・・では　十　キーの　　	|
;|	左右　でポイントがかわるから　　	|
;|	あとはボタンを　れんしゃしなさい	|
;|	ガンバルのだよ！			|
;+----------------------------------------------+
MS47	;釣りするとき
  DB  WSO,WU,WKA,WTN,WTN,WTN,WDE,WHA
  DB  XX,MK8,XX,KKI,WB_,WNO,XX,XX
  DB  XL,XR,XX,WDE,KPO,KI,KN,KTO
  DB  WGA,WKA,WWA,WRU,WKA,WRA,XX,XX
;
  DB  WA,WTO,WHA,KBO,KTA,KN,WWO,XX
  DB  WRE,WN,WSI,WAY,WSI,WNA,WSA,WI
  DB  KGA,KN,KBA,KRU,WNO,WDA,WYO,WBC
  DB  WED
;
;+----------------------------------------------+
;|	まだ、するかね？　　　　　　　　	|
;|	　　　　もちろん　けっこうです		|
;+----------------------------------------------+
MS48	;再度挑戦させるとき
  DB  WMA,WDA,WT2,WSU,WRU,WKA,WNE,WQE,XX,XX,XX,XX,XX,XX,XX,XX
  DB  XX,XX,XX,XX,WMO,WTI,WRO
  DB  WN,XX,WKE,WT,WKO,WU,WDE,WSU
  DB  WE2
;
;+----------------------------------------------+
;|	あらら、いとがきれちゃったよ！　	|
;|	またするかね？　　　　　　　　　	|
;|	　　　　もちろん　けっこうです		|
;+----------------------------------------------+
MS49	;糸がきれたとき
  DB  WA,WRA,WRA,WT2,WI,WTO,WGA,WKI,WRE,WTI,WAY,WT,WTA,WYO,WBC,XX
  DB  WMA,WTA,WSU,WRU,WKA,WNE,WQE,XX,XX,XX,XX,XX,XX,XX,XX,XX
  DB  XX,XX,XX,XX,WMO,WTI,WRO
  DB  WN,XX,WKE,WT,WKO,WU,WDE,WSU
  DB  WE2
;
;+----------------------------------------------+
;|	おっ　これはでかい！　よろしい　	|
;|	しょうきん２０ルピーあげよう！　	|
;|	またするかね？　　　　　　　　　	|
;|	　　　　もちろん　けっこうです		|
;+----------------------------------------------+
MS4A	;大物を釣ったとき
  DB  WO,WT,XX,WKO,WRE,WHA,WDE,WKA
  DB  WI,WBC,XX,WYO,WRO,WSI,WI,XX
  DB  WSI,WOY,WU,WKI,WN,W2,W0,KRU
  DB  KPI,WB_,WA,WGE,WYO,WU,WBC,XX
  DB  WMA,WTA,WSU,WRU,WKA,WNE,WQE,XX,XX,XX,XX,XX,XX,XX,XX,XX
  DB	XX,XX,XX,XX,WMO,WTI,WRO
  DB	WN,XX,WKE,WT,WKO,WU,WDE,WSU
  DB  WE2
;
;+----------------------------------------------+
;|	もう、さかなはいないよ。　　　　	|
;|	つぎは、うみでどうかね？　　　　	|
;|	　　　　もちろん　けっこうです		|
;+----------------------------------------------+
MS4B	;全部釣ったとき
  DB  WMO,WU,WT2,WSA,WKA,WNA,WHA,WI,WNA,WI,WYO,WMR,XX,XX,XX,XX
  DB  WTU,WGI,WHA,WT2,WU,WMI,WDE,WDO,WU,WKA,WNE,WQE,XX,XX,XX,XX
  DB  XX,XX,XX,XX,WMO,WTI,WRO
  DB  WN,XX,WKE,WT,WKO,WU,WDE,WSU
  DB  WE2
;
;+----------------------------------------------+
;|	いやー、やっぱりそれはむりだよ。	|
;|	　　では、ごきげんよう！		|
;+----------------------------------------------+
MS4C	;魚全部釣ってＭＳ４Ｂはいの時
   DB   WI,WYA,WB_,WT2,WYA,WT,WPA,WRI
   DB   WSO,WRE,WHA,WMU,WRI,WDA,WYO,WMR
   DB   XX,XX,WDE,WHA,WT2,WGO,WKI,WGE,WN,WYO,WU,WBC
   DB   WED
;
;+----------------------------------------------+
;|	もっと、おおきいのをつらないと　	|
;|	だめだよ。しょうきん５ルピーだな	|
;|	　　まだするかね？　　　　　　　	|
;|	　　　　もちろん　けっこうです		|
;+----------------------------------------------+
MS4D	;子魚を釣ったとき
   DB  WMO,WT,WTO,WT2,WO,WO,WKI,WI,WNO,WWO
   DB  WTU,WRA,WNA,WI,WTO,XX
   DB  WDA,WME,WDA,WYO,WMR,WSI,WOY,WU
   DB  WKI,WN,W5,KRU,KPI,WB_,WDA,WNA
   DB  XX,XX,WMA,WTA,WSU,WRU,WKA,WNE,WQE,XX,XX,XX,XX,XX,XX,XX
   DB  XX,XX,XX,XX,WMO,WTI,WRO
   DB  WN,XX,WKE,WT,WKO,WU,WDE,WSU
   DB  WE2
;
;+----------------------------------------------+
;|	おかねが　ないのかね？			|
;|	おかねがたまったら、またきなさい	|
;+----------------------------------------------+
MS4E	; お金が足りない時
  DB  WO,WKA,WNE,WGA,XX,WNA,WI,WNO,WKA,WNE,WQE,XX,XX,XX,XX,XX
  DB  WO,WKA,WNE,WGA,WTA,WMA,WT,WTA,WRA,WT2,WMA,WTA,WKI,WNA,WSA,WI
  DB  WED
;
;+----------------------------------------------+
;|	ハートのかけらをてにいれた！　　	|
;|						|
;|	サブがめんでセレクトボタンを　　	|
;|	おせば　かくにんできるよ！終		|
;+----------------------------------------------+
MS4F	; ハ−トのかけらを手に入れたとき
	DB	KHA,WB_,KTO,WNO,WKA,WKE,WRA,WWO,WTE,WNI,WI,WRE,WTA,WBC,XX,XX
	DB	XX,XX,XX,XX,XX,XX,XX,XX,XX,XX,XX,XX,XX,XX,XX,XX
	DB	KSA,KBU,WGA,WME,WN ,WDE,KSE,KRE,KKU,KTO,KBO,KTA,KN ,WWO,XX ,XX 
	DB	WO ,WSE,WBA,XX ,WKA,WKU,WNI,WN ,WDE,WKI,WRU,WYO,WBC,WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS50	; ハ−トのかけらが４つになったとき
  DB  KHA,WB_,KTO,WNO,WKA,WKE,WRA,WGA,XX,W4,WTU,WSO,WRO,WT,WTA,WBC
  DB  KHA,WB_,KTO,WNO,WU,WTU,WWA,WGA,XX,W1,WTU,WHU,WE,WTA,WBC
	DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS51	; 氷ブロックの秘密
 DB WMA,WT,WSA,WO,WNA,WT2,WKO,WO,WRI,WDA,WBC,WTN,WTN,WTN,WTN,XX
 DB WO,WO,WT,WQE,XX,WTU,WT2,WTU,WME,WTA,WI,WZO,WBC,WBC
;  DB  WKO,WNO,KBU,KRO,KT,KKU,WHA,WTN,WTN,WTN,WHI,WMI,WTU,WDE,WSU,WMR
	DB  WED
;***********
;*壷大魔王1*
;***********
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS52	; 壷大魔王のおたけび
  DB  KU,KHI,KOY,KHI,KOY,KHI,KOY,KT
  DB  WBC,XX,WKO,WNO,WTU,WBO,WGA,XX
  DB  WA,WRU,WKA,WGI,WRI,WT2,WHU,WZI
  DB  WMI,WDE,WGO,WZI,WAY,WRU,WYO,WBC
	DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS53	; 壷大魔王が壷を壊されて発狂したとき
  DB  WNA,WN,WTE,WKO,WTO,WWO,XX,WSU,WRU,WDE,WGO,WZI,WAY,WRU,WKA,XX
  DB  KWA,KSI,KAY,WMO,WU,WYU,WRU,WSA,WN,WDE,WGO,WZI,WAY,WRU,WYO,WBC
	DB  WED
;


;**********
;*タリン２*
;**********
;+----------------------------------------------+
;|	やあ、＿＿＿＿＿＿おきただか？		|
;|	おらは、タリン。きぶんはどーだ？	|
;|	ん？！どーしてなまえがわかるのか	|
;|	ふしぎだってか・・・？			|
;|	タテのうらにかいてある、なまえを	|
;|	みただよ。　ほーら、このタテだ！	|
;+----------------------------------------------+
MS54	; 盾くれる人（タリン）のメッセ−ジ（もらう前）
  DB  WYA,WA,WT2,NM,NM,NM,NM,NM,XX,WO,WKI,WTA,WDA,WKA,WQE,XX
  DB  WO,WRA,WHA,WT2,KTA,KRI,KN,WMR,WKI,WBU,WN,WHA,WDO,WB_,WDA,WQE
;
  DB  WN,WQE,WBC,WDO,WB_,WSI,WTE,WNA,WMA,WE,WGA,WWA,WKA,WRU,WNO,WKA
  DB  WHU,WSI,WGI,WDA,WT,WTE,WKA
  DB  WTN,WTN,WTN,WQE,XX,XX,XX,XX,XX
;
  DB  KTA,KTE,WNO,WU,WRA,WNI
  DB  WKA,WI,WTE,WA,WRU,WT2,WNA,WMA,WE,WWO
  DB  WMI,WTA,WDA,WYO,WMR,XX
  DB  WHO,WB_,WRA,WT2,WKO,WNO,KTA,KTE,WDA,WBC
  DB   WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS55	; 盾くれる人（タリン）のメッセ−ジ（もらった後）
  DB  WSO,WU,WSO,WU,WT2,WHA,WMA,WBE,WNI,WHA
  DB  WHO,WKA,WNI,WMO,XX,XX
  DB  WU,WTI,WA,WGE,WRA,WRE,WTA,WMO
  DB  WNO,WGA,WT2,WA,WT,WTA,WDA,WYO
;
  DB  WMO,WSI,XX,WSA,WGA,WSI,WNI,XX
  DB  WI,WKU,WNA,WRA,WT2,XX,XX,XX
  DB  WKA,WI,WBU,WTU,WNI,XX,WKI,WWO
  DB  WTU,WKE,WRU,WDA,WYO,WMR,XX,XX
;
  DB  NM,NM,NM,NM,NM,WGA,WT2,WSI
  DB  WMA,WNI,WKI,WTE,WKA,WRA,XX,XX
  DB  KU,KRO,WTU,WKU,WYO,WU,WNI,XX
  DB  WNA,WT,WTA,WDA,WMR
  DB   WED
;
;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
;@   地形メッセ−ジ（マップ上） @
;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS56	;　ＬＥＶＥＬ１
  DB  XX,KRE,KBE,KRU,W1,XX,XX,XX,XX,XX,XX,XX,XX,XX,XX,XX
  DB  XX,XX,XX,KTE,WB_,KRU,WNO,WHO,WRA,WA,WNA
  DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS57	;　ＬＥＶＥＬ２
  DB  XX,KRE,KBE,KRU,W2,XX,XX,XX,XX,XX,XX,XX,XX,XX,XX,XX
  DB  XX,XX,XX,XX,WTU,WBO,WNO,WDO,WU,WKU,WTU
	DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS58	;　ＬＥＶＥＬ３
  DB  XX,KRE,KBE,KRU,W3,XX,XX,XX,XX,XX,XX,XX,XX,XX,XX,XX
  DB  XX,XX,XX,XX,KKA,KGI,WNO,WA,WNA,WGU,WRA
	DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS59	;　ＬＥＶＥＬ４
  DB  XX,KRE,KBE,KRU,W4,XX,XX,XX,XX,XX,XX,XX,XX,XX,XX,XX
  DB  XX,XX,KA,KN,KGU,KRA,WB_,WNO,WTA,WKI,WTU,WBO
	DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS5A	;　ＬＥＶＥＬ５
  DB  XX,KRE,KBE,KRU,W5,XX,XX,XX,XX,XX,XX,XX,XX,XX,XX,XX
  DB  XX,XX,XX,XX,KNA,KMA,KZU,WNO,WO,WO,WGU,WTI
	DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS5B	;　ＬＥＶＥＬ６
  DB  XX,KRE,KBE,KRU,W6,XX,XX,XX,XX,XX,XX,XX,XX,XX,XX,XX
  DB  XX,XX,XX,XX,WKA,WO,WNO,WSI,WN,WDE,WN
	DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS5C 	;　ＬＥＶＥＬ７
  DB  XX,KRE,KBE,KRU,W7,XX,XX,XX,XX,XX,XX,XX,XX,XX,XX,XX
  DB  XX,XX,XX,XX,KO,KO,KWA,KSI,WNO,WTO,WU
	DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS5D	;　ＬＥＶＥＬ８
  DB  XX,KRE,KBE,KRU,W8,XX,XX,XX,XX,XX,XX,XX,XX,XX,XX,XX
  DB  XX,XX,XX,XX,XX,XX,KKA,KME,KI,KWA
	DB  WED
;
;- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS5E    ;聖なる卵
  DB  XX,XX,XX,XX,WSE,WI,WNA,WRU,KTA,KMA,KGO	
  DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS5F    ;Not used
;;;;;;;;MS5F    ;テールのカギ　　
;;;;;;;;  DB  XX,XX,XX,XX,KTE,WB_,KRU,WNO,KKA,KGI
;;;;;;;;	DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS60	;山の吊り橋 
   DB  XX,XX,XX,XX,XX,XX,WTU,WRI,WBA,WSI,XX,XX,XX,XX,XX,XX
   DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS61	;バナナうり　セールのいえ
   DB  XX,XX,KBA,KNA,KNA,WU,WRI,XX,KSE,WB_,KRU,WNO,WI,WE,XX,XX
   DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS62	;アナボコ畑
   DB  XX,XX,XX,XX,KA,KNA,KBO,KKO,WBA,WTA,WKE,XX,XX,XX,XX,XX
   DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS63	;暗い空き家
   DB  XX,XX,XX,XX,XX,WI,WRI,WE,WNO,WI,WE,XX,XX,XX,XX,XX
   DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS64    ;流行のゲーム
  DB  XX,XX,XX,WI,WMA,WHA,WYA,WRI,WNO,KGE,WB_,KMU
	DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS65    ;村の道具屋
  DB  XX,XX,XX,WMU,WRA,WNO,WDO,WU,WGU,WYA,WSA,WN
	DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS66    ;マリンとタリンの家
  DB  XX,XX,XX,KMA,KRI,KN,WTO,KTA,KRI,KN,WNO,WI,WE 
	DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS67    ;魔法使いの家
  DB  XX,XX,XX,WMA,WHO,WU,WNO,WKO,WNA,WWO,WTU,WKU,WRU,XX,XX,XX
  DB  XX,XX,XX,XX,XX,XX,WO,WBA,WA,WSA,WN
	DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS68    ;ヤーナ　砂漠
  DB  XX,XX,XX,XX,KYA,WB_,KNA,XX,WSA,WBA,WKU
	DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS69    ;ウクク　草原
  DB  XX,XX,XX,XX,KU,KKU,KKU,XX,WSO,WU,WGE,WN
	DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS6A    ;不思議の森
  DB  XX,XX,XX,XX,XX,WHU,WSI,WGI,WNO,WMO,WRI
	DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS6B    ;タマランチ　山
  DB  XX,XX,XX,XX,KTA,KMA,KRA,KN,KTI,XX,WYA,WMA
	DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS6C    ;タルタル　山脈
  DB  XX,XX,XX,KTA,KRU,KTA,KRU,XX,WSA,WN,WMI,WAY,WKU
	DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS6D	;マリオンの泉
  DB  XX,XX,XX,XX,KKA,KN,KBA,KN,WNO,WME,WI,WRO
	DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS6E	;メーベの村
  DB  XX,XX,XX,XX,XX,KME,WB_,KBE,WNO,WMU,WRA
	DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS6F	;動物村
  DB  XX,XX,XX,XX,XX,WDO,WU,WBU,WTU,WMU,WRA
	DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS70	;墓地
  DB  XX,XX,XX,XX,XX,XX,XX,WBO,WTI
	DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS71	;急流滑り
  DB  XX,XX,XX,WKI,WUY,WU,WRI,WUY,WU,WSU,WBE,WRI
	DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS72	;コホリント 平原
  DB  XX,XX,XX,KKO,KHO,KRI,KN,KTO,XX,WHE,WI,WGE,WN
	DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS73	;トロンボ海岸
  DB  XX,XX,XX,KTO,KRO,KN,KBO,XX,WKA,WI,WGA,WN
	DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS74	;マーサの入り江
  DB  XX,XX,XX,XX,KMA,WB_,KSA,WNO,WI,WRI,WE
	DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS75    ;入り江の東
  DB  XX,XX,XX,XX,WI,WRI,WE,WNO,WHI,WGA,WSI
	DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS76    ;ワキーガの沼
  DB  XX,XX,XX,XX,KGO,KPO,KN,KGA,WNO,WNU,WMA
	DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS77    ;顔の神殿
  DB  XX,XX,XX,XX,WKA,WO,WNO,WSI,WN,WDE,WN
	DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS78    ;カナレットの城
  DB  XX,XX,XX,XX,KKA,KNA,KRE,KT,KTO,WNO,WSI,WRO
	DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS79    ;タルタル高地
  DB  XX,XX,XX,XX,KTA,KRU,KTA,KRU,XX,WKO,WU,WTI
	DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS7A    ;タバールの林
  DB  XX,XX,XX,XX,KTA,KBA,WB_,KRU,WNO,WHA,WYA,WSI
	DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS7B    ;村の南
  DB  XX,XX,XX,XX,XX,WMU,WRA,WNO,WMI,WNA,WMI
	DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS7C	; 柴原池（釣り堀）
  DB  XX,XX,XX,XX,XX,WTU,WRI,WBO,WRI
	DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS7D	;ワンワンのいる家
  DB  XX,XX,KMA,KDA,KMU,KNI,KAY,KN
  DB  KNI,KAY,KN,WNO,WI,WE,XX,XX
  DB  XX,XX,XX,KWA,KN,KWA,KN,WNI
  DB  WTI,WUY,WU,WI,WBC,XX,XX,XX
  DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS7E	;うるりらじいさんの家
  DB  XX,XX,WU,WRU,WRI,WRA,WZI,WI,WSA,WN,WNO,WI,WE
	DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS7F	;変なおじさんの家
  DB  XX,XX,XX,XX,WHE,WN,WNA,WO,WZI,WSA,WN,XX,XX,XX,XX,XX
  DB  XX,XX,XX,XX,XX,KRA,KI,KTO,WNO,WI,WE
	DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS80    ; トレーシーの薬屋さん
  DB  XX,XX,XX,WKI,WMA,WGU,WRE,KTO,KRE,WB_,KSI,WB_,WNO,XX,XX,XX
  DB  XX,XX,XX,XX,XX,WKU,WSU,WRI,WYA,WSA,WN
  DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS81    ;４つ子の家
  DB  XX,XX,XX,XX,XX,W4,WTU,WGO,WNO,WI,WE
	DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS82    ; 夢のほこら
  DB  XX,XX,XX,XX,XX,KYU,KME,WNO,WHO,WKO,WRA
	DB  WED
;
;+----------------------------------------------+
;|	　　　　でんわボックス　　　　　	|
;|	　　下　カンバンのめいろ　　　		|
;+----------------------------------------------+
MS83    ;電話ボックス
	DB	XX,XX,XX,XX,WDE,WN,WWA,KBO,KT,KKU,KSU,XX,XX,XX,XX,XX
	db	XX,XX,XD,XX,KKA,KN,KBA,KN,WNO,WME,WI,WRO
	DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS84	;貝殻の館  
  DB  XX,XX,XX,XX,WKA,WI,WGA,WRA,WNO,WYA,WKA,WTA
	DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS85	;リチャードの別荘
  DB  XX,XX,XX,KRI,KTI,KAY,WB_,KDO,WNO,WBE,WT,WSO,WU
	DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS86	;山のニワトリ小屋
  DB  XX,XX,XX,XX,XX,KNI,KWA,KTO,KRI,WGO,WYA 
	DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS87	;村の図書館
  DB  XX,XX,XX,XX,WMU,WRA,WNO,WTO,WSI,WOY,WKA,WN
	DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS88	;筏屋
    DB  XX,XX,XX,XX,XX,XX,WI,WKA,WDA,WYA,XX,XX,XX
    DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS89	;ワープ穴
    DB  XX,XX,XX,XX,XX,KWA,WB_,KPU,WNO,WA,WNA
    DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS8A	;爆弾で壊れる岩
        DB KMU,KMU,KT,WBC,WKA,WNA,WRI,WT2
        DB KHI,KBI,KWA,KRE,WTE,WRU,WQE,XX
        DB WNA,WN,WTO,WKA,WSU,WRE,WBA,WT2
        DB WKO,WWA,WSE,WSO,WU,WDA,WZO,WBC
	DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS8B	;体当たりで壊れる岩
        DB KMU,KT,WQE,WE,WTA,WI,WNO,WSI
        DB WRE,WNA,WI,KKA,KTA,KMA,KRI,WDA
        DB WI,WT,WKI,WNI,WTU,WT,WKO
        DB WME,WBA,XX,WKO,WWA,WSE,WRU,WKA,WMO
        DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS8C	;カギブロック
        DB WN,WQE,WKO,WNO,KBU,KRO,KT,KKU
        DB XX,KKA,KGI,WA,WNA,WGA,WA,WRU
        DB KKA,KGI,WWO,WMO,WT,WTE,XX,WMA
        DB WTA,WKO,WYO,WU,WBC,WBC,XX,XX
	DB  WED
;
;+----------------------------------------------+
;|	ウッ！！　こいつは　おもいぞ！		|
;|	すでじゃ　ムリみといだ・・・		|
;+----------------------------------------------+
MS8D	;かつげる　岩、壷
        DB KU,KT,WBC,WBC,XX,WKO,WI,WTU,WHA
        DB XX,WO,WMO,WI,WZO,WBC,XX
        DB WSU,WDE,WZI,WAY,XX,KMU,KRI,WMI
        DB WTA,WI,WDA,WTN,WTN,WTN,XX,XX
	DB  WED
;------------------------------------------------
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS8E	;　　曲を覚えてない時オカリナを吹いた
	DB  KO,KKA,KRI,KNA,WDA,WBC,XX,WSI
        DB  WT2,WSI,WKA,WSI,WTN,WTN,WTN,WTN
        DB  WMA,WDA,KKI,KOY,KKU,WWO,XX,WO,WBO
        DB  WE,WTE,WNA,WKA,WT,WTA,WMR
        DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS8F	;マリンをつれてニワトリをきりつけた時
  DB  KDA,KME,WB_,WB_,KT,WBC,XX,KNI,KWA,KTO,KRI,WSA,WN,WGA,XX,XX
  DB  WKA,WWA,WI,WSO,WU,WZI,WAY,WNA,WI,WBC,XX,KMO,KO,KT,WBC
	DB  WED
;
;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
;@                           @ 
;@ アイテムを手にいれたとき  @
;@                           @ 
;@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS90	; ブレスレット１を手にいれたとき
  DB  KPA,KWA,WB_,KBU,KRE,KSU,KRE,KT,KTO,WWO,XX,WMI,WTU,WKE,WTA,WBC
  DB  WKO,WRE,WDE,WT2,KTU,KBO,WYA,WI,WWA,WGA,XX,WKA,WTU,WGE,WRU,WZO
  DB  WED
;
;+----------------------------------------------+
;|	タテが、もどってきた！			|
;|	おしてるあいだ、テキをはじけるよ	|
;+----------------------------------------------+
;(CGB)MS91	; シ−ルドを手にいれたとき
;(CGB)  DB   KTA,KTE,WGA,WT2,WMO,WDO,WT,WTE,WKI,WTA,WBC,XX,XX,XX,XX,XX
;(CGB)  DB   KBO,KTA,KN,WWO,WO,WSE,WBA,WT2,KTE,KKI,WWO,WHA,WZI,WKE,WRU,WYO
;(CGB)	DB  WED

MS91	;シ−ルドを手にいれたとき（改）
	DB	KTA,KTE,WGA,WT2,WMO,WDO,WT,WTE,WKI,WTA,WBC,XX,KBO,KTA,KN,WWO
	DB	WO,WSI,WTE,WRU,WA,WI,WDA,WT2,KTE,KKI,WWO,WHA,WZI,WKE,WRU,WYO
	DB	WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS92	; さばくのほね
   DB   KHI,KAY,KT,KHO,KU,WBC,XX,WI
   DB   WKI,WKA,WE,WRU,WZE,WT,WBC,XX
   DB   WSO,WRE,WZI,WAY,WT2,WO,WMA,WE
   DB   WNI,WO,WSI,WE,WTE,WYA,WRO,WU
;
   DB   WSU,WNA,WNI,WNO,WMI,WKO,WMA,WRE
   DB   WTE,XX,WO,WTI,WRU,WTO,WKO,WMR
   DB   WA,WSO,WKO,WDE,WT2,KBA,KKU,KDA
   DB   KN,WTU,WKA,WT,WTE,WMI,WNA,WMR
;
   DB   WKA,WBE,WNO,WMU,WKO,WU,WNI,XX
   DB   WNA,WNI,WKA,WGA,WA,WRU,WZE,WBC
   DB   WZI,WAY,WA,WNA,WT,WBC,XX,XX
   DB   KPO,KKI,KPO,KKI,KPO,KKI,KT,WBC
	DB  WED
;
;+----------------------------------------------+
;|	フックショットをてにいれた！　　	|
;|	ボヨヨーンと　のばしてつかおう！	|
;+----------------------------------------------+
MS93	; フックショットを手にいれたとき
  DB   KHU,KT,KKU,KSI,KOY,KT,KTO,WWO,WTE,WNI,WI,WRE,WTA,WBC,XX,XX
  DB   KBO,KYO,KYO,WB_,KN,WTO,XX,WNO,WBA,WSI,WTE,WTU,WKA,WO,WU,WBC
  DB   WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS94	; ロッドを手にいれたとき
  DB   KMA,KZI,KT,KKU,KRO,KT,KDO,WWO
  DB   XX,WTE,WNI,WI,WRE,WTA,WBC,XX
  DB   WMO,WYA,WSE,WBC,WMO,WYA,WSE,WBC
  DB   WYA,WKI,WTU,WKU,WSE,WBC,WBC
	DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS95    ; ペガサスの靴を手にいれたとき
  DB   KPE,KGA,KSA,KSU,WNO,WKU,WTU,WWO,WTE,WNI,WI,WRE,WTA,WBC,XX,XX
  DB   KBO,KTA,KN,WWO,WO,WSI,WTU,WDU,WKE,WRU,WTO,KDA,KT,KSI,KUY,WDA
	DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS96	; オカリナを手にいれたとき
  DB   KO,KKA,KRI,KNA,WWO,XX,WTE,WNI,WI,WRE,WTA,WBC,XX,XX,XX,XX
  DB   WI,WRO,WN,WNA,WKI,WOY,WKU,WGA,XX,WHU,WKE,WRU,WTO,WI,WI,WNA
	DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS97	; ウイングを手にいれたとき
  DB  KRO,KT,KKU,WTI,WOY,WU,WNO,KHA,KNE,WWO,WTE,WNI,WI,WRE,WTA,WBC
  DB  WNA,WN,WDA,WKA,WT2,WKA,WRA,WDA,WGA,WKA,WRU,WKU,WNA,WRU,WMR
	DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS98	; スコップを手にいれたとき
  DB   KSU,KKO,KT,KPU,WWO,WTE,WNI,WI,WRE,WTA,WBC,XX,WHO,WRO,WU,WBC
  DB   WTU,WTI,WWO,WHO,WRU,WYO,WRO,WKO,WBI,WWO,WA,WZI,WWA,WO,WU,WMR
	DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS99	; 魔法の粉を手にいれたとき
  DB   WMA,WHO,WU,WNO,WKO,WNA,WWO,XX,WTE,WNI,WI,WRE,WTA,WBC,XX,XX
  DB   WI,WRO,WN,WNA,WMO,WNO,WNI,XX,WHU,WRI,WKA,WKE,WTE,WMI,WYO,WU 
	DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS9A	; 爆弾を手にいれたとき
  DB   KBA,KKU,KDA,KN,WWO,XX,WTE,WNI,WI,WRE,WTA,WBC,XX,XX,XX,XX
  DB   KDO,WB_,KN,WTO,WI,WKO,WU,WT2,KDO,WB_,KN,WTO,WBC
	DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS9B	; 剣を手にいれたとき
  DB   WNA,WKU,WSI,WTA,WKE,WN,WWO,XX,WTE,WNI,WI,WRE,WTA,WBC,XX,XX
  DB   WNA,WMA,WE,WI,WRI,WDA,WKA,WRA,XX,WMA,WTI,WGA,WI,WNA,WI,WBC
	DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS9C	; 水かきを手にいれたとき
  DB   KA,KN,KGU,KRA,WB_,WNO,WMI,WZU
  DB   WKA,WKI,WDA,WT,WBC,XX,XX,XX
  DB   RB,KBO,KTA,KN,WWO,WO,WSE,WBA
  DB   XX,WMO,WGU,WRE,WRU,WZO,WT,WBC
	DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS9D	; 虫メガネを手にいれたとき

  DB   WNA,WN,WTO,WBC,XX,WKO,WRE,WHA
  DB   WT2,WHU,WSI,WGI,WNA,KME,KGA,KNE
  DB   KG1,WMI,WTO,WO,WSI,KRE,KN,KZU
  DB   KG2,WDA,WB_,WT,WBC,XX,XX,XX
; 
  DB   WI,WMA,WMA,WDE,WMI,WE,WNA,WKA
  DB   WT,WTA,KA,KRE,WYA,KKO,KRE,WGA
  DB   WMI,WE,WRU,WYO,WU,WNI,WNA,WRU
  DB   WZO,WT,WBC,WBC,XX,XX,XX,XX
  DB   WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS9E	;
;;;;;;;;MS9E	; ヨッシーを手にいれたとき
;;;;;;;;  DB   WWA,WT,XX,KYO,KT,KSI,WB_,WYA,WBC
;;;;;;;;	DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MS9F	; 剣２を手にいれたとき
  DB   WA,WTA,WRA,WSI,WI,WKE,WN,WWO
  DB   XX,WTE,WNI,WI,WRE,WTA,WT,WBC
  DB   WSA,WT,WSO,WKU,WT2,WNA,WMA,WE
  DB   WWO,WKA,WI,WTE,WO,WKO,WU,WBC
	DB  WED
;
;+----------------------------------------------+
;|	なんと？これはヒミツのくすりだ！	|
;|	ヌリ　ヌリ・・・じぶんでぬった。	|
;+----------------------------------------------+
MSA0	; 薬を手にいれたとき？
;;;KK;;;	DB	WNA,WN,WTO,XX,WYA,WKU,WSO,WU,WWO,WMI,WTU,WKE,WTA,WBC
;;;KK;;;	DB	WED
	DB	WNA,WN,WTO,WQE,WKO,WRE,WHA,KHI,KMI,KTU,WNO,WKU,WSU,WRI,WDA,WBC
	DB	KNU,KRI,XX,KNU,KRI,WTN,WTN,WTN,WZI,WBU,WN,WDE,WNU,WT,WTA,WMR
	DB	WED
;
;****************
;*ダンジョンキー*
;****************
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSA1	; テールの鍵を手にいれたとき
  DB   KTE,WB_,KRU,WNO,KKA,KGI,WWO,XX,WTE,WNI,WI,WRE,WTA,WBC,XX,XX
  DB   WKO,WRE,WDE,WT2,KTE,WB_,KRU,WNO,WTO,WBI,WRA,WGA,WHI,WRA,WKU,WBC
	DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSA2	; スライムの鍵を手にいれたとき
  DB    KSU,KRA,KI,KMU,WNO,WKA,WGI,WWO
  DB    XX,WTE,WNI,WI,WRE,WTA,WBC,XX
  DB    KU,KKU,KKU,WSO,WU,WGE,WN,WNO
  DB    WI,WRI,WGU,WTI,WHE,WYU,WKO,WU
	DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSA3	; 魚の鍵を手にいれたとき
  DB   KA,KN,KGU,KRA,WB_,WNO,WKA,WGI,WWO,XX,WTE,WNI,WI,WRE,WTA,WBC
	DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSA4	; 顔の鍵を手にいれたとき
  DB   KHU,SSE,KI,KSU,WNO,WKA,WGI,WWO,XX,WTE,WNI,WI,WRE,WTA,WBC
	DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSA5	; 鳥の鍵を手にいれたとき
  DB   KBA,WB_,KDO,WNO,WKA,WGI,WWO,XX,WTE,WNI,WI,WRE,WTA,WBC,XX,XX
  DB   KTI,WB_,KMU,KWA,WB_,KKU,WNO,WSI,WOY,WU,WRI,WDA,WT,WBC,XX,XX
  DB   WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSA6	; マップを手にいれたとき
  DB   WYA,WT,WTO,XX,WTI,WZU,WWO,WMI,WTU,WKE,WTA,WBC,XX,XX,XX,XX
  DB   KSU,KTA,WB_,KTO,KBO,KTA,KN,WDE,XX,WMI,WYO,WU,WBC
   	DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSA7	; コンパスを手にいれたとき
  DB   KKO,KN,KPA,KSU,WWO,XX,WTE,WNI,WI,WRE,WTA,WBC,XX,XX,XX,XX
  DB   KBO,KSU,WTO,WTA,WKA,WRA,WNO,WBA,WSI,WOY,WGA,WWA,WKA,WRU,WZO,WBC
;
  DB   WSA,WRA,WNI,WT,WBC,XX,KKA,KGI,WNO,WA,WRU,WHE,WYA,WWO,XX,XX 
  DB   WO,WTO,WDE,WSI,WRA,WSE,WRU,XX,WSI,WN,WKI,WNO,WU,WTU,WKI,WBC
  DB  WED
;
;+----------------------------------------------+
;|	せきぞうのくちばしを　みつけた！	|
;|	フクロウのせきぞうをさがそう。		|
;+----------------------------------------------+
MSA8	;石版のかけら 
;;;;;;;;  DB   WSE,WKI,WBA,WN,WNO,KKA,KKE,KRA,WWO,XX,WMI,WTU,WKE,WTA,WBC,XX
;;;;;;;;  DB   WKO,WRE,WDE,XX,KKA,KBE,WNO,WMO,WZI,WGA,WYO,WME,WRU,WZO,WMR,XX
	db	WSE,WKI,WZO,WU,WNO,WKU,WTI,WBA,WSI,WWO,XX,WMI,WTU,WKE,WTA,WBC
	db	KHU,KKU,KRO,KU,WNO,WSE,WKI,WZO,WU,WWO,WSA,WGA,WSO,WU,WMR
	DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSA9	; ボスの鍵を手にいれたとき
  DB   KBO,KSU,WNO,WKA,WGI,WWO,WTE,WNI,WI,WRE,WTA,WBC,XX,XX,XX,XX
  DB   KBO,KSU,WNO,WHE,WYA,WNO,WTO,WBI,WRA,WWO,WA,WKE,WRA,WRE,WRU,WZO
	DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSAA	; 鍵を手にいれたとき
  DB   WTI,WI,WSA,WNA,KKA,KGI,WWO,XX,WTE,WNI,WI,WRE,WTA,WBC,XX,XX
  DB   KKA,KGI,WNO,WKA,WKA,WT,WTA,WT2,WTO,WBI,WRA,WGA,WHI,WRA,WKU,WZO
	DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSAB	; ２０ルピーを手にいれたとき

  DB   W2,W0,KRU,KPI,WB_,XX,WTE,WNI,WI,WRE,WTA,WBC,XX,XX,XX,XX
  DB   WTI,WOY,WT,WTO,WU,WRE,WSI,WI,WMR
	DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSAC	; ５０ルピーを手にいれたとき
  DB   W5,W0,KRU,KPI,WB_,XX,WTE,WNI,WI,WRE,WTA,WBC,XX,XX,XX,XX
  DB   WWA,WRI,WTO,WU,WRE,WSI,WI,WMR
	DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSAD    ; １００ルピーを手にいれたとき
  DB   W1,W0,W0,KRU,KPI,WB_,XX,WTE,WNI,WI,WRE,WTA,WBC,XX,XX,XX
  DB   WKA,WNA,WRI,WU,WRE,WSI,WI,WMR
        DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSAE    ; ２００ルピーを手にいれたとき
  DB   W2,W0,W0,KRU,KPI,WB_,XX,WTE,WNI,WI,WRE,WTA,WBC,XX,XX,XX
  DB   WSU,WGO,WKU,WU,WRE,WSI,WI,WBC
        DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSAF	;カバ変則
   DB   WA,WN,WMA,WRI,WSI,WTU,WKO,WI,WTO,XX,KO,KZI,KSA,KN,WTE,XX
   DB   WNA,WMA,WE,WTU,WKE,WTI,WAY,WU,WWA,WYO,WT,WBC,XX,KMO,KU,WBC
   DB  WED
;
;********
;*ボス敵*
;********
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSB0	;＃１ボス大速虫
    DB  KN,KGA,KHU,KHU,WBC,WBC,XX,KN
    DB  KGA,KHU,KHU,WBC,WBC,XX,XX,XX
    DB  KYO,KSO,KMO,KNO,WBC,XX,KZI,KAY,KMA,KMO,KNO,WBC
    DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSB1	;＃３ボス大すらいむ
    DB  KPU,KYO,KYO,WB_,KN,WBC,XX,XX
    DB  KPU,KYO,KYO,WB_,KN,WBC,XX,XX
    DB  KBO,KKU,KT,KTI,KAY,KN,XX,KDO,KKO
    DB  KDE,KT,KTI,KOY,WB_,WBC
    DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSB2	;＃４ボス魚
    DB  KGA,KBO,KBO,KN,WBC,XX,KGO,KBA
    DB  KBE,KBA,KT,XX,KGO,KBO,KN,WBC
    DB  KE,KZA,XX,KE,KZA,XX,KGI,KDA
    DB  WBC,XX,KGI,KDA,WBC
    DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSB3	;＃５ボス釣り長虫
    DB  KO,KME,WB_,WKA,KG1,WKA,WZE
    DB  WNO,WSA,WKA,WNA,KG2,WWO,XX,XX,XX
    DB  WO,WKO,WSI,WNI,WKI,WTA,WT2,WYO
    DB  WSO,WMO,WN,WHA,WTN,WTN,WTN,WTN
;
    DB  KKI,KSI,KSI,KSI,KSI,KT,WBC,XX
    DB  KKI,KSI,KSI,KSI,KSI,KT,WBC,XX
    DB  XX,XX,XX,XX,XX,WKU,WT,WTI,WAY,WRU,WBC,WBC
    DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSB4	;＃２ボス　壷大魔王の壷登場
    DB  KU,KHI,KOY,KHI,KOY,WBC,XX,WKO,WN
    DB  WDO,WNO,WA,WI,WTE,WHA,XX
    DB  KWA,KSI,WDE,WGO,WZI,WAY,WRU,WYO
    DB  WBC,KU,KHI,KOY,KHI,KOY,WBC
    DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSB5	;＃5ボス釣り長虫２
    DB  KSI,KE,WB_,WB_,WB_,WB_,KT,WBC
    DB  XX,WKU,WT,WKU,WT,WKU,WT,XX
    DB  WKU,WYA,WSI,WI,WB_,WB_,WT,WBC
    DB  WBC,XX,XX,XX,XX,XX,XX,XX            

    DB  KO,KT,KO,KME,WB_,XX,WMA,WDA,WT2
    DB  WKO,WNO,WSI,WMA,WGA,XX,XX
    DB  WDO,WN,WNA,WTO,WKO,WKA,WT2
    DB  WWA,WKA,WT,WTE,WNE,WB_,WNA,WQE,XX
;
    DB  KKI,KSI,KSI,KSI,KT,WBC,XX,WO
    DB  WHI,WTO,WYO,WSI,WNA,KYA,KTU,WBC
    DB  XX,XX,KKI,KT,KSI,KT,KSI,KT
    DB  XX,KSI,KT,XX,KSI,KT,XX,XX
;
    DB  XX,XX,XX,WTN,XX,WTN,XX,WTN,XX,WTN,XX,WTN
    DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSB6	;＃６ボス　１
    DB  KHI,KN,KTO,WBC,XX,KO,KI,KRA
    DB  XX,MK2,MK2,MK2,MK2,WGA,XX,XX
    DB  KNI,KGA,KTE,WDE,WYA,WN,WSU
    DB  WYO,WBC,XX,XX,XX,XX,XX,XX,XX
;
    DB   KHI,SSHI,SSE,KT,KHI,SSE,KT,WBC
    DB   XX,WO,WMO,WWA,WZU,KKU,KTI,WGA
    DB   WSU,WBE,WT,WTI,WMA,WI,WYA,WSI
    DB   WTA,WYO,WMR,XX,KHI,SSE,KT,WBC
    DB   WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSB7	;＃６ボス　２
    DB   KA,KHI,WB_,KT,WBC,XX,WMA,WTA
    DB   WMA,WTA,KKU,KTI,WGA,XX,XX,XX
    DB   WSU,WBE,WT,WTI,WMA,WI,WSO,WB_
    DB   WDE,WYA,WN,WSU,WBC,XX,XX,XX
;
    DB   KG1,WKA,WZE,WNO,WSA,WKA,WNA,KG2
    DB   WGA,WO,WKI,WTI,WMA,WT,WTA,WRA
    DB   WMI,WB_,WN,WNA,WT2,WKI,WE,WTI
    DB   WMA,WU,WN,WDE,WGE,WSU,WYO,WBC
;
    DB   WSI,WMA,WNO,WMO,WNO,WHA,WT2,WMI
    DB   WB_,WN,WNA,WT2,WHO,WN,WTO,WMR
    DB   KHI,SSHI,SSE,KT,WBC,XX,KHI,SSHI,SSE,KT,WBC
    DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSB8	;Not Used
;;;;;;;;MSB8	;　＃７のボス１Ｘ
;;;;;;;;    DB   WDO,WU,WMO,WT2,WI,WKE,WNE,WE
;;;;;;;;    DB   WNA,XX,KO,KTI,KBI,WSA,WN,WYO
;;;;;;;;    DB   WO,WRE,WSA,WMA,WT2,KHO,KN,KKI
;;;;;;;;    DB   WDE,WO,WKO,WT,WTI,WMA,WT,WTA
;;;;;;;;;
;;;;;;;;    DB   WI,WNO,WTI,WGO,WI,WSI,WTE,WMO
;;;;;;;;    DB   WT2,KMU,KDA,WDA,WZE,WBC,XX,XX
;;;;;;;;    DB   WKA,WKU,WGO,WSI,WNA,WT,WBC,XX
;;;;;;;;    DB   KKA,WB_,KT,XX,KPE,KT,WBC
;;;;;;;;    DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSB9	;　＃７のボス２Ｘ
    DB   WMA,WT2,WMA,WKE,WTA,WZE,WTN,WTN
    DB   WTN,WHE,WHE,WT,XX,XX,XX,XX
    DB   WMA,WT,KSI,KRO,WNI,WT2,WMO,WE
    DB   WTU,WKI,WTI,WMA,WT,WTA,WTN,WTN
;
    DB   WDA,WGA,WYO,WT2,KO,KME,KE,WMO
    DB   XX,WKI,WE,WRU,WNO,WSA,WMR,XX
    DB   KG1,WKA,WZE,WNO,WSA,WKA,WNA,KG2
    DB   WGA,WO,WKI,WTI,WMA,WE,WBA,WNA
;
    DB   KO,KME,KE,WMO,WT2,KO,KRE,WSA
    DB   WMA,WTO,WO,WNA,WZI,WT2,XX,XX
    DB   KYA,KTU,WNO,KYU,KME,WTN,WDA,WTN,WKA,WTN,WRA
    DB   WTN,WTN,WNA,WTN,WTN
    DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSBA	;　最後の７ボス１Ｘ
    DB   WPE,WT,WBC,XX,WPE,WT,WBC,XX
    DB   XX,XX,XX,XX,XX,XX,XX,XX
    DB   WKO,WN,WDO,WKO,WSO,XX,WYO,WU
    DB   WSI,WAY,WSI,WNE,WE,WZE,WBC,XX
;
    DB   W4,WTU,WNI,WTA,WTA,WN,WDE,WT2
    DB   KHA,KNA,WKA,WN,WDE,WYA,WRA,WBC
    DB   WI,WKU,WZE,WBC,XX,WTI,WT,WKO
    DB   WI,WNO,WBC,WBC,XX,XX,XX,XX
    DB   WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSBB	;Not used
;;;;;;;;MSBB	;　最後の７ボス２Ｘ
;;;;;;;;    DB   WMA,WT2,WMA,WKE,WTA,WZE,WTN,WTN
;;;;;;;;    DB   WTN,WHE,WHE,WT,XX,XX,XX,XX
;;;;;;;;    DB   WMA,WT,KSI,KRO,WNI,WT2,WMO,WE
;;;;;;;;    DB   WTU,WKI,WTI,WMA,WT,WTA,WTN,WTN
;;;;;;;;;
;;;;;;;;    DB   WDA,WGA,WYO,WT2,KO,KME,KE,WMO
;;;;;;;;    DB   XX,WKI,WE,WRU,WNO,WSA,WMR,XX
;;;;;;;;    DB   KG1,WKA,WZE,WNO,WSA,WKA,WNA,KG2
;;;;;;;;    DB   WGA,WO,WKI,WTI,WMA,WE,WBA,WNA
;;;;;;;;;
;;;;;;;;    DB   KO,KME,KE,WMO,WT2,KO,KRE,WSA
;;;;;;;;    DB   WMA,WTO,WO,WNA,WZI,WT2,XX,XX
;;;;;;;;    DB   KYA,KTU,WNO,KYU,KME,WDA,WKA,WRA
;;;;;;;;    DB   WNA,WT,WBC,XX,WHE,WT,WBC
;;;;;;;;    DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSBC	;＃８ボス　１

    DB   KBU,KO,KT,WBC,XX,KBU,KO,KT
    DB   WBC,XX,KBU,KO,KT,WBC,XX,XX
    DB   WKO,WKO,WMA,WDE,WDA,WBC,XX,KMU,KSI
    DB   KKE,KRA,WME,WBC,WBC,WBC,XX

    DB   KG1,KSE,KI,KRE,WB_,KN,WNO,WGA
    DB   WT,WKI,KG2,WHA,WT2,XX,XX,XX
    DB   KKI,KSA,KMA,WNI,WHA,WT2,WTU,WKA
    DB   WWA,WSE,WN,WBC,XX,XX
    DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSBD	;＃８ボス　２
    DB   WNA,WT2,WNA,WZE,WDA,WBC,KKI,KSA
    DB   KMA,WGA,WKO,WNA,WKE,WRE,WBA,XX
    DB   WNA,WNI,WMO,WT2,WKA,WWA,WRA,WNU
    DB   WMO,WNO,WWO,WTN,WTN,WTN,XX,XX
;
    DB   KG1,WKA,WZE,WNO,WSA,WKA,WNA,KG2
    DB   WHA,WT2,KKI,KSA,KMA,WNI,WHA,XX
    DB   WO,WKO,WSU,WKO,WTO,WHA,XX,WDE
    DB   WKI,WNU,WT,WBC,XX,XX,XX,XX
;
    DB   WWA,WSU,WRE,WRU,WNA,WYO,WTN,WTN
    DB   WTN,XX,WKO,WKO,WGA,XX,XX,XX
    DB   KYU,KME,WNO,WNA,WKA,WDA,WTO,WI
    DB   WU,WKO,WTO,WWO,WNA,WTN,WTN,WTN
    DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSBE	;Not used
;;;;;;;;MSBE	;最後の＃８ボス　１Ｘ
;;;;;;;;    DB   WKO,WRE,WGA,WSA,WI,WGO,WDA,WBC
;;;;;;;;    DB   XX,WKO,WZO,WU,WBC,XX,XX,XX
;;;;;;;;    DB   WKI,WE,WRU,WNO,WHA,WT2,KKI,KSA
;;;;;;;;    DB   KMA,WDA,WKE,WDE,WYO,WI,WBC,XX
;;;;;;;;;
;;;;;;;;    DB   WMA,WN,WMA,WTO,XX,WA,WNO,KHU
;;;;;;;;    DB   KKU,KRO,KU,WNI,XX,XX,XX,XX
;;;;;;;;    DB   WRI,WYO,WU,WSA,WRE,WYO,WT,WTE
;;;;;;;;    DB   WTN,WTN,WTN,WI,WKU,WZO,WT,WBC
;;;;;;;;    DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSBF	;Not used
;;;;;;;;MSBF	;最後の＃８ボス　Ｘ
;;;;;;;;    DB   KGU,KRO,KU,KO,KO,WBC,XX,KKI
;;;;;;;;    DB   WT2,KKI,KSA,KMA,WHA,WT2,XX,XX
;;;;;;;;    DB   WKI,WE,WRU,WNO,WGA,WT2,WO,WSO
;;;;;;;;    DB   WRO,WSI,WKU,WNA,WI,WNO,WKA,WQE
;;;;;;;;;
;;;;;;;;    DB   WWA,WKA,WRA,WN,WQE,XX,WNA,WZE
;;;;;;;;    DB   WSO,WKO,WMA,WDE,WSI,WTE,WTN,WTN
;;;;;;;;    DB   WWA,WTN,WKA,WTN,WRA,WTN,WN,WTN
;;;;;;;;    DB   WTN,WTN,WTN,WTN,WTN,WTN,WTN,WTN
;;;;;;;;    DB   WED
;
;**********
;*フクロウ*
;**********
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSC0	;森のふくろう　（森の中）
     DB   KHO,KHO,KU,WBC,WHU,WSI,WGI,WNO
     DB   WMO,WRI,WNI,WT2,WYO,WU,WKO,WSO 
     DB   WME,WZA,WME,WWO,WTU,WGE,WSI
     DB   WT2,WYU,WU,WSI,WAY,WDO,WNO,XX,XX
;
     DB   WKO,WNO,WSI,WMA,WHA,WT2,KKO,KHO,KRI
     DB   KN,KTO,WTO,WI,WU,XX,XX
     DB   WTI,WZU,WNI,WHA,WKE,WT,WSI,WTE 
     DB   WT2,WNO,WRA,WNU,WSI,WMA,WDI,WAY
;
     DB   WBO,WU,WYA,WNO,WSE,WKA,WI,WTO
     DB   WT2,WTI,WTO,WTI,WGA,WU,XX,XX
     DB   WKO,WTO,WWA,WRI,WDE,XX,WNA,WRI
     DB   WTA,WT,WTE,WO,WRU,WMR,XX,XX
;
     DB   WSI,WMA,WKA,WRA,WDE,WRU,WNO
     DB   WHA,WT2,WMU,WRI,WDI,WAY,WNO,WU,WMR
     DB   KKO,KHO,KRI,KN,KTO,WZI,WMA,WWO,WT2,WO
     DB   WSA,WME,WRU,KKA,KMI,XX
;
     DB   KG1,WKA,WZE,WNO,WSA,WKA,WNA,KG2
     DB   WGA,WNE,WMU,WRU,WKA,WGI,WRI,XX
     DB   WSO,WTO,WHE,WNO,WMI,WTI,WHA,WT2
     DB   WHI,WRA,WKA,WRE,WNU,WMR,XX,XX
;
     DB   WTN,WTN,WTO,WKO,WRO,WDE,WT2,WMU
     DB   WRA,WNO,KMI,KNA,KMI,WNO,XX,XX
     DB   KG1,KTE,WB_,KRU,WNO,WHO,WRA,WA
     DB   WNA,KG2,WHA,WT2,WMI,WTA,WKA,WQE
; 
     DB   WKO,WNO,WMO,WRI,WNI,WA,WRU,XX
     DB   KKA,KGI,WWO,WMO,WT,WTE,XX,XX
     DB   KG1,KTE,WB_,KRU,WNO,WHO,WRA,WA
     DB   WNA,KG2,WNI,WI,WKU,WGA,WYO,WI
;
     DB   KG1,WKA,WZE,WNO,WSA,WKA,WNA,KG2
     DB   WHA,WT2,WMI,WTE,WO,WRU,WZO,XX
     DB   XX,XX,KHO,KT,KHO,KU,WBC,XX
     DB   KHO,KT,KHO,KU,WBC,XX,XX,XX
     DB   WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSC1	;森のふくろう　カギを手に入れた
    DB   XX,KHO,KT,WBC,XX,WSO,WNO,KKA,KGI
    DB   WWO,WMO,WT,WTE,XX,XX,XX
    DB   KG1,KTE,WB_,KRU,WNO,WHO,WRA,WA
    DB   WNA,KG2,WNI,WI,WKU,WGA,WYO,WI
;
    DB   WSO,WNO,WO,WKU,WNI,WNE,WMU,WRU
    DB   XX,WGA,WT,WKI,WWO,XX,XX,XX
    DB   WMI,WTU,WKE,WDA,WSI,WTE,WMI,WYO
    DB   WBC,XX,XX,XX,XX,XX,XX,XX
;
    DB   KG1,WKA,WZE,WNO,WSA,WKA,WNA,KG2
    DB   WHA,WT2,WMA,WT,WTE,WO,WRU,WZO
    DB   XX,XX,XX,KHO,KT,KHO,KU,WBC,XX
    DB   KHO,KT,KHO,KU,WBC,XX,XX
    DB   WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSC2	;＃１クリア後
    DB   XX,XX,KHO,KT,KHO,KU,WBC,XX
    DB   KHO,KT,KHO,KU,WBC,XX,XX,XX
    DB   WSO,WRE,WKO,WSO,KG1,KSE,KI,KRE
    DB   WB_,KN,WNO,WGA,WT,WKI,KG2,WBC
;
    DB   WYA,WHA,WRI,XX,WBO,WU,WYA,WHA,WT2
    DB   WHO,WN,WMO,WNO,WDI,WAY,WBC
    DB   WKA,WSA,WNA,WRU,WBU,WRE,WI,WWO
    DB   WT2,WYU,WRU,WSA,WRE,WYO,WTN,WTN
;
    DB   WSO,WNO,WGA,WT,WKI,WHA,WT2,KG1
    DB   WKA,WZE,WNO,WSA,WKA,WNA,KG2,WWO
    DB   WO,WKO,WSU,WTI,WKA,WRA,WWO,WT2
    DB   WMO,WT,WTE,WO,WRU,WMR,XX,XX
;
    DB   WGA,WT,WKI,WHA,WT2,WZE,WN,WBU
    DB   WDE,XX,W8,WTU,WA,WRU,WMR,XX
    DB   W8,WTU,XX,WSU,WBE,WTE,WA,WTU
    DB   WME,WRU,WNO,WDI,WAY,WMR,XX,XX
;
    DB   KWA,KSI,WHA,WT2,WBO,WU,WYA,WNO
    DB   XX,WYU,WKU,WBE,WKI,WMI,WTI,WWO
    DB   WSI,WME,WSA,WN,WGA,WTA,WME,WT2,WTU
    DB   WKA,WWA,WSA,WRE,WTA,WMO,WNO
;
    DB   KKI,KTA,WNI,WA,WRU,KG1,KGO,KPO
    DB   KN,KGA,WNO,WNU,WMA,KG2,WNI,XX
    DB   WI,WKI,WNA,WSA,WRE,WMR,XX
    DB   KHO,KT,KHO,KU,WBC,XX,XX,XX,XX    
    DB   WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSC3	;山のふくろう　（ワンワン救出後）
    DB   XX,XX,XX,KHO,KT,KHO,KU,WBC
    DB   XX,KHO,KT,KHO,KU,WBC,XX,XX
    DB   WBU,WT,WSO,WU,WNA,KYA,KTU,WWO
    DB   WT2,WTU,WRE,WTO,WRU,WNO,WU,WMR
;
    DB   WTU,WGI,WNA,WRU,KG1,KSE,KI,KRE
    DB   WB_,KN,WNO,WGA,WT,WKI,KG2,WHA
    DB   KG1,KGO,KPO,KN,KGA,WNO,WNU,WMA,KG2
    DB   WDI,WAY,WZO,WMR,XX,XX,XX,XX
;
    DB   WWA,WSU,WRE,WNA,WSA,WRU,WNA,WYO
    DB   WMR,XX,XX,XX,XX,XX,XX,XX
    DB   XX,XX,XX,KHO,KT,KHO,KU,WBC
    DB   XX,KHO,KT,KHO,KU,WBC
    DB   WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSC4	;山のふくろう　（＃２クリア後）
     DB  KHO,KT,KHO,KU,WBC,KG1,WKA
     DB  WZE,WNO,WSA,WKA,WNA,KG2,WHA,XX,XX
     DB  WKO,WNO,WU,WE,WNO,WT2,KTA
     DB  KMA,KGO,WNO,WNA,WKA,WDE,XX,XX,XX
;
     DB  WI,WTU,XX,WO,WWA,WRU,WTO,WMO
     DB  WWA,WKA,WRA,WNU,XX,XX,XX,XX
     DB  WNA,WGA,WI,XX,KYU,KME,WWO,WT2
     DB  WMI,WTU,WDU,WKE,WTE,WO,WRU,WMR
;
     DB  W8,WTU,WNO,WGA,WT,WKI,WWO,WT2
     DB  KTA,KMA,KGO,WNO,WMA,WE,WDE,XX
     DB  WKA,WNA,WDE,WTA,WT2,WSO,WNO,WTO
     DB  WKI,WKO,WSO,XX,XX,XX,XX,XX
;
     DB  KG1,WKA,WZE,WNO,WSA,WKA,WNA,KG2
     DB  WHA,KYU,KME,WKA,WRA,WSA,WME,WRU
     DB  WSO,WRE,WGA,WT2,WSI,WMA,WWO,WDE
     DB  WRU,WT2,WTA,WDA,WHI,WTO,WTU,WNO
;
     DB  WHO,WU,WHO,WU,WDI,WAY,WTE,WTN
     DB  WTN,WTN,XX,XX,XX,XX,XX,XX
     DB  XX,XX,KHO,KT,KHO,KU,WBC 
     DB  XX,KHO,KT,KHO,KU,WBC,XX,XX,XX
     DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSC5	;   ふくろう　（＃３の横）
    DB   KHO,KHO,KU,WBC,KG1,KSE,KI,KRE
    DB   WB_,KN,WNO,WGA,WT,WKI,KG2,WHA
    DB   WI,WKU,WTU,XX,WA,WTU,WME,WRA
    DB   WRE,WTA,WKA,WNA,WQE,XX,XX,XX
;
    DB   W8,WTU,WNO,WGA,WT,WKI,WWO,WT2
    DB   WKA,WNA,WDE,WRU,WTO,WKI,XX,XX
    DB   KG1,WKA,WZE,WNO,WSA,WKA,WNA,KG2
    DB   WHA,WME,WZA,WME,WRU,WNO,WDI,WAY
;   
    DB   WSO,WNO,WTO,WKI,WKO,WSO,WT2,WBO
    DB   WU,WYA,WHA,XX,XX,XX,XX,XX
    DB   WKO,WNO,WSI,WMA,WWO,WT2,WDE,WRU
    DB   WKO,WTO,WNI,WNA,WRO,WU,WMR,XX
;
    DB   KYA,WB_,KNA,WSA,WBA,WKU,WNI
    DB   WI,WKI,WNA,WSA,WRE,WMR,XX,XX,XX
    DB   WSU,WNA,WNI,WSU,WMU,WT2,WKU,WRO,WKI
    DB   KMA,KMO,KNO,WGA,WT2,XX,XX
;
    DB   WYU,WKU,WMI,WTI,WNO,WT2,WTE,WGA
    DB   WKA,WRI,WTO,WNA,WRO,WU,WMR,XX
    DB   XX,XX,XX,KHO,KT,KHO,KU,WBC
    DB   XX,KHO,KT,KHO,KU,WBC
    DB   WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSC6	;ヤーナ砂漠のふくろう
    DB   XX,XX,XX,KHO,KT,KHO,KU,WBC
    DB   XX,KHO,KT,KHO,KU,WBC,XX,XX
    DB   WSO,WNO,KKA,KGI,WHA,WT2,WTA,WKI
    DB   WWO,XX,WNO,WBO,WRI,WYU,WKU,XX
;
    DB   WSA,WKA,WNA,WWO,WT2,WA,WRA,WWA
    DB   WSI,WTE,WO,WRU,WNO,WU,WMR,XX
    DB   KHO,KT,WBC,WYA,WMA,WNO,WTA,WKI,WHE,WMU
    DB   WKA,WU,WNO,WDI,WAY,WBC
;
    DB   WMI,WZU,WGA,WT2,WNO,WBO,WRI,WTU
    DB   WME,WTA,WNA,WRA,XX,XX,XX,XX
    DB   WA,WTO,WHA,WT2,WTO,WBI,WO
    DB   WRI,WRU,WDA,WKE,WDI,WAY,WTE,WTN,WTN
;
    DB   XX,XX,XX,KHO,KT,KHO,KU,WBC,XX
    DB   KHO,KT,KHO,KU,WBC,XX
    DB   WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSC7	;川辺のふくろう　
    DB   KHO,KT,KHO,KU,WBC,XX,WKO,WKO
    DB   WNO,WT2,WSU,WGU,XX,XX,XX,XX
    DB   KKI,KTA,WTO,KMI,KNA,KMI,WNI,WT2
    DB   WSI,WN,WDE,WN,WGA,WA,WRU,WMR
;
    DB   WMA,WZU,WHA,WT2,KMI,KNA,KMI,WNI
    DB   WMU,WKA,WI,WNA,WSA,WRE,WMR,XX
    DB   KG1,WKA,WZE,WNO,WSA,WKA,WNA,KG2
    DB   WTO,WT2,WYU,WKA,WRI,WNO,WA,WRU
;
    DB   WA,WRE,WHA,WTE,WTA,WT2,WKO,WDA
    DB   WI,WNO,KI,KSE,KKI,WDI,WAY,WMR
    DB   WSO,WKO,WDE,WT2,WNA,WNI,WWO
    DB   WMI,WRU,WNO,WKA,WNO,WU,WTN,WTN,XX
;
    DB   XX,XX,KHO,KT,KHO,KU,WBC,XX,KHO
    DB   KT,KHO,KU,WBC,XX,XX,XX
    DB   WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSC8	;神殿のふくろう　
    DB   WTN,WTN,WTN,WKO,WNO,WNA,WKA,WNI
    DB   WA,WRU,XX,KSE,KKI,KBA,KN,WHA
    DB   WI,WNI,WSI,WE,WYO,WRI,WT2,WTU
    DB   WTA,WWA,WRU,WMO,WNO,WMR,XX,XX
;
    DB   WKO,WNO,WSI,WMA,WGA,KG1,WKA
    DB   WZE,WNO,WSA,WKA,WNA,KG2,WNO,XX,XX
    DB   KYU,KME,WNO,WNA,WKA,WNI,WA,WRU
    DB   WTO,WT2,WSI,WRU,WSI,WTE,WO,WRU
;
    DB   WYU,WME,WKA,WT2,WU,WTU,WTU,WKA
    DB   WNA,WDO,WT2,WDA,WRE,WNI,WMO,XX
    DB   WTA,WSI,WKA,WME,WRU,WKO,WTO,WHA
    DB   WDE,WKI,WN,WDI,WAY,WRO,WU,WMR
; 
    DB   KTA,KKA,KRA,WNO,KHA,KKO,WHA,WT2
    DB   WA,WKE,WTE,WMI,WNA,WKE,WRE,WBA
    DB   WNA,WKA,WMI,WWO,XX,WSI,WRU,WKO,WTO
    DB   WGA,WDE,WKI,WN,WYO,WU,WNI
;
    DB   KYU,KME,WMO,WT2,WO,WKI,WTE,WMI
    DB   WRU,WMA,WDE,WHA,XX,XX,XX,XX
    DB   KYU,KME,WTO,WT2,WWA,WKA,WRA,WN
    DB   WMO,WNO,WDI,WAY,WTN,WTN,WTN,XX
;
    DB   WHO,WN,WTO,WU,WNO,WKO,WTO,WWO
    DB   WT2,WSI,WRU,WMO,WNO,WHA,XX,XX
    DB   KG1,WKA,WZE,WNO,WSA,WKA,WNA,KG2
    DB   WDA,WKE,WNA,WNO,WDI,WAY,WYO,WMR
;
    DB   WTN,WTN,WTN,WSI,WN,WZI,WRU,WMI  
    DB   WTI,WWO,WT2,WI,WKI,WNA,WSA,WRE
    DB   XX,WI,WZU,WRE,WT2,WKO,WTA,WE,WHA
    DB   WMI,WE,WTE,WKO,WYO,WU,WMR
;   
    DB   XX,XX,XX,KHO,KT,KHO,KU,WBC
    DB   XX,KHO,KT,KHO,KU,WBC,XX,XX
    DB   WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSC9	;神殿のふくろう　（＃６クリア後）
   DB   KMA,KMO,KNO,WTA,WTI,WHA,KG1,WKA
   DB   WZE,WNO,WSA,WKA,WNA,KG2,WNO,XX
   DB   WME,WZA,WME,WWO,WT2,WO,WSO,WRE
   DB   WTE,WO,WRU,WMR,XX,XX,XX,XX
;
   DB   KMA,KMO,KNO,WNO,WTI,WKA,WRA,WHA
   DB   XX,WGE,WN,WZI,WTU,WDI,WAY,WMR
   DB   WI,WZU,WRE,WT2,WSI,WMA,WZI,WUY,WU
   DB   WWO,WSI,WHA,WI,WSI,XX,XX
;
   DB   WZI,WAY,WMA,WNA,WMO,WNO,WWO,WT2
   DB   WKE,WSU,WDI,WAY,WRO,WU,WMR,XX
   DB   WSO,WRE,WMO,WT2,WZI,WKA,WN,WNO,WMO   
   DB   WN,WDA,WI,WDI,WAY,WTN,WTN
;
   DB   WYA,WMA,WNO,WTO,WU,WHE,WT2,WMU
   DB   WKA,WI,WNA,WSA,WRE,WBC,XX,XX 
   DB   KTO,KRI,WNO,WGO,WTO,WKU,WT2,WHA
   DB   WBA,WTA,WI,WTE,WNA,WTN,WTN,XX
;
   DB   XX,XX,KHO,KT,KHO,KU,WBC,XX
   DB   KHO,KT,KHO,KU,WBC,XX,XX
   DB   WED
;
;+----------------------------------------------+
;|	ホッホウ！　これより　みちのりは	|
;|	さらに　けわしくなるぢゃろう。　	|
;|	のこりは　わずか・・ヒガシとニシ	|
;|	　このやまの　りょうよくにある。	|
;|	まず　ヒガシのとうをめざすのぢゃ	|
;|	・・すべて　ぼうやにかかっておる	|
;|	「かぜのさかな」の　めざめは、　	|
;|	ちかづいておるぞ。　ホッホウ！終	|
;+----------------------------------------------+
MSCA	;聖なる玉子の横のふくろう　
	DB	KHO,KT,KHO,KU,WBC,XX,WKO,WRE,WYO,WRI,XX,WMI,WTI,WNO,WRI,WHA
	DB	WSA,WRA,WNI,XX,WKE,WWA,WSI,WKU,WNA,WRU,WDI,WAY,WRO,WU,WMR,XX
	DB	WNO,WKO,WRI,WHA,XX,WWA,WZU,WKA,WTN,WTN,KHI,KGA,KSI,WTO,KNI,KSI
	DB	XX,WKO,WNO,WYA,WMA,WNO,XX,WRI,WOY,WU,WYO,WKU,WNI,WA,WRU,WMR
	DB	WMA,WZU,XX,KHI,KGA,KSI,WNO,WTO,WU,WWO,WME,WZA,WSU,WNO,WDI,WAY
	DB	WTN,WTN,WSU,WBE,WTE,XX,WBO,WU,WYA,WNI,WKA,WKA,WT,WTE,WO,WRU
	DB	KG1,WKA,WZE,WNO,WSA,WKA,WNA,KG2,WNO,XX,WME,WZA,WME,WHA,WT2,XX
	DB	WTI,WKA,WDU,WI,WTE,WO,WRU,WZO,WMR,XX,KHO,KT,KHO,KU,WBC,WED
;;;KK;;;    DB   KHO,KT,KHO,KU,WBC,XX,WKO,WRE
;;;KK;;;    DB   WYO,WRI,XX,WMI,WTI,WNO,WRI,WHA
;;;KK;;;    DB   WSA,WRA,WNI,XX,WKE,WWA,WSI,WKU
;;;KK;;;    DB   WNA,WRU,WDI,WAY,WRO,WU,WMR,XX
;;;KK;;;;
;;;KK;;;    DB   WNO,WKO,WRI,WHA,XX,WWA,WZU,WKA
;;;KK;;;    DB   WTN,WTN,KHI,KGA,KSI,WTO,KNI,KSI
;;;KK;;;    DB   WYA,WMA,WNO,XX,WRI,WOY,WU,WYO
;;;KK;;;    DB   WKU,WNI,WA,WRU,WMR,XX,XX,XX
;;;KK;;;;
;;;KK;;;    DB   WMA,WZU,XX,KHI,KGA,KSI,WNO,WTO
;;;KK;;;    DB   WU,WWO,WME,WZA,WSU,WNO,WDI,WAY
;;;KK;;;    DB   WTN,WTN,WSU,WBE,WTE,XX,WBO,WU
;;;KK;;;    DB   WYA,WNI,WKA,WKA,WT,WTE,WO,WRU
;;;KK;;;;
;;;KK;;;    DB   KG1,WKA,WZE,WNO,WSA,WKA,WNA,KG2
;;;KK;;;    DB   WNO,XX,WME,WZA,WME,WHA,WT2,XX
;;;KK;;;    DB   WTI,WKA,WDU,WI,WTE,WO,WRU,WZO
;;;KK;;;    DB   WMR,XX,KHO,KT,KHO,KU,WBC
;;;KK;;;    DB   WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSCB	;　幽霊の実家
    DB   XX,XX,XX,KHO,KT,KHO,KU,WBC
    DB   XX,KHO,KT,KHO,KU,WBC,XX,XX
    DB   WGO,WBU,WSA,WTA,WDI,WAY,WT,WTA
    DB   WNO,WU,XX,WBO,WU,WYA,WMR,XX
;
    DB   KMA,WB_,KSA,WNO,WI,WRI,WE,WNO
    DB   WT2,WHU,WKA,WMI,WYO,WRI,XX,XX
    DB   KG1,KNA,KMA,KZU,WNO,WO,WO,WGU
    DB   WTI,KG2,WNI,WHA,WI,WRA,WRE,WYO
;
    DB   KG1,WKA,WZE,WNO,WSA,WKA,WNA,KG2
    DB   WHA,WT2,WBO,WU,WYA,WGA,XX,XX
    DB   WTI,WKA,WDU,WKU,WNI,WTU,WRE,WT2
    DB   WME,WZA,WME,WNI,WMU,WKA,WU,XX
;
    DB   WA,WYU,WMI,XX,WTU,WDU,WKE,WNA
    DB   WSA,WRE,WTN,WTN,WTN,XX,XX
    DB   XX,XX,XX,KHO,KT,KHO,KU
    DB   WBC,XX,KHO,KT,KHO,KU,WBC,XX
    DB   WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSCC	;吊り橋のふくろう　
    DB   WTN,WTN,WTN,WA,WNO,WMU,WSU,WME
    DB   WT2,KTA,KMA,KGO,WNO,WMA,WE,WDE
    DB   WME,WZA,WME,WNO,WU,WTA,WWO,XX,WU
    DB   WTA,WT,WTA,WNO,WDI,WAY,XX
;
    DB   KG1,WKA,WZE,WNO,WSA,WKA,WNA,KG2   
    DB   WNO,WU,WTA,WHA,WT2,XX,XX,XX
    DB   WME,WZA,WME,WWO,WTU,WGE,WRU,WU
    DB   WTA,WTN,WTN,WTN,WTN,XX,XX,XX
;
    DB   WMA,WSA,WKA,KMA,KRI,KN,WHA
    DB   KG1,WKA,WZE,WNO,WSA,WKA,WNA,KG2,WWO
    DB   WO,WKO,WSO,WU,WTO,WTN,WTN,WTN
    DB   XX,XX,XX,XX,XX,XX,XX,XX
;
    DB   KHO,KT,KHO,KU,WBC,XX,WTU,WGI
    DB   WNA,WRU,WGA,WT,WKI,WHA,XX,XX
    DB   KNI,KSI,WNO,WYA,WMA,WNO,KG1,KKA
    DB   KME,KI,KWA,KG2,WDI,WAY,WBC,WBC
;
    DB   KKA,KME,WNO,WKA,WTA,WTI,WWO,WSI
    DB   WTA,XX,WI,WWA,WNI,XX,XX,XX
    DB   WI,WBU,WKI,WWO,WT2,WHU,WKI,WKO,WMI
    DB   XX,XX,XX,XX,XX,XX,XX

    DB   WO,WSO,WRE,WZU,XX,WYU,WU,WKI
    DB   WWO,WSI,WME,WSU,WNO,WDI,WAY,WBC
    DB   KG1,WKA,WZE,WNO,WSA,WKA,WNA,KG2
    DB   WHA,XX,WMA,WT,WTE,WO,WRU,WZO
    DB   WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSCD
    DB   KHO,KT,KHO,KU,WBC,XX,KG1,WKA
    DB   WZE,WNO,WSA,WKA,WNA,KG2,WHA,XX
    DB   KTA,KMA,KGO,WNO,WNA,WKA,WDE,WT2
    DB   WMA,WT,WTE,WO,WRU,WMR,XX,XX
;
    DB   WSA,WA,WBC,KKA,KRA,WNO,WNA,WKA
    DB   WNI,WHA,WI,WRU,WNO,WZI,WAY,WBC
    DB   XX,XX,XX,KHO,KT,KHO,KU,WBC
    DB   XX,KHO,KT,KHO,KU,WBC,XX,XX
    DB   WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSCE	;Not used
;;;;;;;;MSCE	;森のふくろう　（聖なる玉子）2
;;;;;;;;    DB   KHO,KT,KHO,KU,WBC,XX,KG1,WKA
;;;;;;;;    DB   WZE,WNO,WSA,WKA,WNA,KG2,WHA,XX
;;;;;;;;    DB   KTA,KMA,KGO,WNO,WNA,WKA,WDE,WT2
;;;;;;;;    DB   WMA,WT,WTE,WO,WRU,WMR,XX,XX
;;;;;;;;;
;;;;;;;;    DB   WSA,WA,WBC,KKA,KRA,WNO,WNA,WKA
;;;;;;;;    DB   WNI,WHA,WI,WRU,WNO,WZI,WAY,WBC
;;;;;;;;    DB   XX,XX,XX,KHO,KT,KHO,KU,WBC
;;;;;;;;    DB   XX,KHO,KT,KHO,KU,WBC,XX,XX
;;;;;;;;    DB   WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSCF	;森のふくろう　（最後の部屋の中）
;
;	デバッグ用 メッセージ	DEBUG
;
;;;;;;;	    DB   XX,KDE,KBA,KT,KGU,XX,WO,WTU,WKA
;;;;;;;	    DB   WRE,WSA,WMA,KHO,KU,WBC
;;;;;;;	    DB   WED
;
;	ここからが本物
;
    DB  XX,XX,XX,KHO,KT,KHO,KU,WBC
    DB  XX,KHO,KT,KHO,KU,WBC,XX,XX
    DB  XX,XX,XX,XX,XX,XX,XX,XX
    DB  XX,XX,XX,XX,XX,XX,XX,XX 
;
    DB   WBO,WU,WYA,WTN,WTN,WTN,WI,WYA
    DB   NM,NM,NM,NM,NM,WDO,WNO,WBC
    DB   WYO,WKU,WZO,WT2,WA,WKU,WMU,WNI
    DB   WU,WTI,WKA,WT,WTA,WBC,XX,XX
;
    DB   WSO,WNO,WT2,WTI,WE,XX,WTI
    DB   WKA,WRA,XX,WYU,WU,WKI,WHA,WT2,XX
    DB   WMA,WKO,WTO,WT2,WYU,WU,WSI,WAY
    DB   WNO,XX,WA,WKA,WSI,WDI,WAY,WBC
; 
    DB   XX,WTN,WTN,WTN,WTN,XX,WTN,WTN
    DB   WTN,WTN,XX,WTN,WTN,WTN,WTN,XX
    DB   XX,WTN,WTN,WTN,WTN,XX,WTN,WTN
    DB   WTN,WTN,XX,WTN,WTN,WTN,WTN,XX         
;
    DB   WWA,WSI,WHA,KG1,WKA,WZE,WNO,WSA
    DB   WKA,WNA,KG2,WNO,XX,XX,XX,XX 
    DB   WKO,WKO,WRO,WNO,WT2,WHI,WTO,WTU,WNA
    DB   WNO,WDI,WAY,WMR,XX,XX,XX
;
    DB   KG1,WKA,WZE,WNO,WSA,WKA,WNA,KG2
    DB   WGA,WT2,WNE,WMU,WRU,WA,WI,WDA
    DB   KYU,KME,WNO,WSE,WKA,WI,WWO,XX
    DB   WMA,WMO,WRU,WKO,WTO,WGA,XX,XX
;
    DB   WWA,WSI,WNO,XX,WYA,WKU,WME,WDI,WAY
    DB   WT,WTA,WMR,XX,XX,XX,XX
    DB   WTN,WTN,WTN,WDI,WAY,WGA,WT2
    DB   WA,WRU,WTO,WKI,XX,XX,XX,XX,XX
;
    DB   KYU,KME,WNO,WSA,WKE,WME,WKA,WRA
    DB   XX,WA,WKU,WMU,WGA,WME,WBA,WE
    DB   WSI,WMA,WWO,WT2,WMU,WSI,WBA,WMI
    DB   WDA,WSI,WTA,WNO,WDI,WAY,WMR,XX
;
    DB   WTN,WTN,WTN,WSO,WKO,WHE,WT2
    DB   WME,WZA,WME,WNO,WSI,WSI,WAY,XX,XX
    DB   WTU,WMA,WRI,NM,NM,NM,NM,NM
    DB   WDO,WNO,WGA,WT2,WKO,WRA,WRE,WTA
;   
    DB   WWA,WSI,WHA,WT2,WSI,WN,WZI,WTE
    DB   WO,WT,WTA,WMR,WO,WNU,WSI,WHA
    DB   WA,WKU,WMU,WNI,XX,WMA,WKE,WRU
    DB   WKO,WTO,WNO,WNA,WI,XX,XX,XX
;
    DB   WTU,WYO,WI,WT2,WYU,WU,WKI,WNO,WMO,WTI,WNU
    DB   WSI,WDI,WAY,WTO,WNA
    DB   XX,XX,KHO,KT,KHO,KU,WBC,XX
    DB   KHO,KT,KHO,KU,WBC,XX,XX,XX
;
    DB   WA,WRI,WGA,WTO,WU,NM,NM,NM,NM
    DB   NM,WDO,WNO,WTN,WTN,WTN,XX
    DB   WKO,WRE,WDE,WT2,WWA,WSI,WNO,WYA
    DB   WKU,WME,WHA,XX,WO,WWA,WT,WTA
;
    DB   KG1,WKA,WZE,WNO,WSA,WKA,WNA,KG2
    DB   WNI,WKA,WE,WRU,WTO,WSI,WYO,WU
    DB   WSA,WRA,WBA,WDI,WAY,WBC,XX,XX
    DB   KHO,KT,KHO,KU,WBC,XX,XX,XX
    DB   WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSD0	;風の魚
;
;	デバッグ用 メッセージ	DEBUG
;
;;;;;;;	    DB   XX,KKA,KRA,WB_,KGE,WB_,KMU,KBO,WB_,KI
;;;;;;;	    DB   XX,WKA,WT,WTE,WNE,XX
;;;;;;;	    DB   XX,XX,XX,XX,XX,XX,KBA,KI,XX,WHA,WBU,WRI,WN
;;;;;;;	    DB   WED
;
;	ここからが本物
;
    DB   XX,WTN,WTN,WTN,WTN,XX,WTN,WTN,WTN
    DB   WTN,XX,WTN,WTN,WTN,WTN,XX
    DB   WTN,WTN,WWA,WTA,WSI,WHA,WT2
    DB   WKA,WZE,WNO,WSA,WKA,WNA,WTN,WTN,WTN
;
    DB   WTN,WTN,WTN,WNE,WMU,WRI,WNI,WTU 
    DB   WI,WTE,WT2,WI,WT,WTA,WI,XX
    DB   WDO,WRE,WKU,WRA,WI,WTO,WKI,WGA
    DB   WTA,WT,WTA,WNO,WKA,WTN,WTN,WTN 
;
    DB   WTN,WTN,WTN,WHA,WZI,WME,WT2,WWA   
    DB   WTA,WSI,WHA,WTN,WTN,WTN,XX,XX
    DB   KTA,KMA,KGO,WNO,KYU,KME,WWO,WT2
    DB   WMI,WTE,WI,WTA,WTN,WTN,WTN,XX
;
    DB   WYA,WGA,WTE,WT2,KTA,KMA,KGO,WNO
    DB   WMA,WWA,WRI,WNI,XX,WSI,WMA,WGA
    DB   WDE,WKI,WT2,WHI,WTO,WYA,WT2
    DB   WDO,WU,WBU,WTU,WGA,WT2,WU,WMA,WRE
;
    DB    WTN,WTN,WTN,WSE,WKA,WI,WGA,XX
    DB    WU,WMA,WRE,WTA,WTN,WTN,WTN,XX
    DB    XX,XX,XX,XX,XX,XX,XX,XX
    DB    XX,XX,XX,XX,XX,XX,XX,XX
;
    DB   XX,WTN,WTN,WTN,WTN,XX,WTN,WTN,WTN
    DB   WTN,XX,WTN,WTN,WTN,WTN,XX
    DB   XX,WTN,WTN,WTN,WTN,XX,WTN,WTN,WTN
    DB   WTN,XX,WTN,WTN,WTN,WTN,XX
;
    DB   WDA,WGA,WT2,KYU,KME,WHA,XX,WSA
    DB   WME,WRU,WMO,WNO,XX,XX,XX,XX
    DB   WSO,WRE,WGA,WT2,WSI,WZE,WN,WNO
    DB   WSA,WDA,WME,WNA,WNO,WDA,WMR,XX
;
    DB   WWA,WTA,WSI,WGA,WT2,WME,WZA,WME
    DB   WRU,WTO,WT2,XX,XX,XX,XX,XX
    DB   KKO,KHO,KRI,KN,KTO,WZI,WMA,WHA
    DB   WKI,WE,WRU,WDA,WRO,WU,XX,XX
;
    DB   WSI,WKA,WSI,WT2,WKO,WNO,WSI,WMA
    DB   WNO,XX,WO,WMO,WI,WDE,WHA,XX
    DB   WGE,WN,WZI,WTU,WTO,WSI,WTE,WT2
    DB   WKO,WKO,WRO,WNI,WNO,WKO,WRU,WMR
;
    DB   WSO,WSI,WTE,WTN,WTN,WTN,KKI,KMI
    DB   WHA,WI,WTU,WKA,XX,XX,XX,XX
    DB   WKO,WNO,WSI,WMA,WWO,XX,WO,WMO
    DB   WI,WDA,WSU,WDA,WRO,WU,WMR,XX 
;
    DB   WKO,WNO,XX,WO,WMO,WI,WDE,WKO
    DB   WSO,WT2,WHO,WN,WTO,WU,WNO,XX
    DB   KYU,KME,WNO,WSE,WKA,WI,WDE,WHA
    DB   WT2,WNA,WI,WDA,WRO,WU,WKA,XX
;
    DB   XX,WTN,WTN,WTN,WTN,XX,WTN,WTN
    DB   WTN,WTN,XX,WTN,WTN,WTN,WTN,XX
    DB   WA,WRI,WGA,WTO,WU,XX,NM,NM,NM
    DB   NM,NM,WTN,WTN,WTN,WTN,XX
;
    DB   XX,XX,XX,XX,WTO,WKI,WHA,WMI,WTI,WTA,WBC,XX,XX,XX,XX,XX
    DB   XX,XX,XX,WTO,WMO,WNI,WME,WZA,WME,WYO,WU,WBC,WBC,XX,XX,XX
    DB   WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSD1	;Not used
;;;;;;;;MSD1	;風の魚　
;;;;;;;;    DB   XX,XX,XX,XX,WSA,WA,WBC,XX,WKA,WNA,WDE,WYO,WBC,XX,XX,XX
;;;;;;;;    DB   XX,XX,XX,XX,WME,WZA,WME,WNO,WU,WTA,WWO,WBC,XX,XX,XX,XX
;;;;;;;;    DB   WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSD2	;風の魚　
    DB   XX,XX,WSA,WA,WBC,XX,WKA,WNA,WDE,WRU,WNO,WDA,WBC,XX,XX,XX
    DB   XX,XX,XX,XX,WME,WZA,WME,WNO,WU,WTA,WWO,WBC,XX,XX,XX,XX
    DB   WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSD3	;Not used
;;;;;;;;MSD3	;風の魚　（Ｄ０　Ｄ１　ＮＯのとき）
;;;;;;;;    DB   WSO,WU,WKA,WT2,WSO,WU,WDA,WNE
;;;;;;;;    DB   WTN,WTN,WTN,WTN,WTN,WTN,WTN,WTN
;;;;;;;;    DB   WMA,WDA,WT2,WHA,WYA,WI,WNO,WKA,WMO
;;;;;;;;    DB   WSI,WRE,WNA,WI,WMR,XX,XX
;;;;;;;;;
;;;;;;;;    DB   WBO,WKU,WHA,WT2,WI,WTU,WMA,WDE
;;;;;;;;    DB   WMO,XX,WMA,WT,WTE,WI,WRU,WMR
;;;;;;;;    DB   WTN,WTN,WTN,WTN,WTN,WTN,WTN,WTN
;;;;;;;;    DB   WTN,WTN,WTN,WTN,WTN,WTN,WTN,WTN
;;;;;;;;    DB   WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSD4	;Not used
;;;;;;;;MSD4	;森のふくろう　Ｘ
;;;;;;;;    DB   KTA,KMA,KGO,WNO,WNA,WKA,WHA,WT2
;;;;;;;;    DB   KYU,KME,WTO,WGE,WN,WZI,WTU,WNO
;;;;;;;;    DB   WI,WRI,WMI,WDA,WRE,WTA,WT2,WZI
;;;;;;;;    DB   WKU,WU,WNO,WHA,WZA,WMA,WMR,XX
;;;;;;;;;
;;;;;;;;    DB   WZI,WAY,WA,WKU,WNA,WRU,WMO,WNO
;;;;;;;;    DB   WNO,WT2,WKE,WHA,WI,WMO,XX,XX
;;;;;;;;    DB   WKA,WN,WZI,WRU,WTN,WTN,WTN,XX
;;;;;;;;    DB   KHO,KT,KHO,KU,WBC,XX,XX,XX
;;;;;;;;;
;;;;;;;;    DB   WKO,WKO,WRO,WNI,WT2,KSU,KKI,WWO
;;;;;;;;    DB   WTU,WKU,WRU,WDE,WNA,WI,WZO,WBC
;;;;;;;;    DB   KG1,WKA,WZE,WNO,WSA,WKA,WNA,KG2
;;;;;;;;    DB   WHA,WT2,WMO,WU,WSU,WGU,WZI,WAY
;;;;;;;;    DB   WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSD5	;立て札 人魚像
    DB   XX,XX,XX,XX,WNI,WN,WGI,WOY,WZO,WU 
    DB    WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSD6	;Not used
;;;;;;;;MSD6	;森のふくろう　（＃２クリアー後ウクク草原）
;;;;;;;;    DB   KHO,KT,KHO,KU,WBC,XX,WKO,WNO
;;;;;;;;    DB   WSI,WMA,WHA,WT2,WHI,WRO,WI,XX
;;;;;;;;    DB   WBO,WU,WYA,WNI,XX,WA,WRA,WTA
;;;;;;;;    DB   WNA,KTI,KKA,KRA,WGA,WTU,WKE,WBA
;;;;;;;;;
;;;;;;;;    DB  WMI,WTI,WHA,XX,WZU,WT,WTO,XX
;;;;;;;;    DB  WHI,WRO,WGA,WRU,WZI,WAY,WRO,WU
;;;;;;;;    DB  WTN,WTN,WTN,KU,KKU,KKU,WSO,WU
;;;;;;;;    DB  WGE,WN,WNI,WI,WKI,WNA,WSA,WRE
;;;;;;;;;
;;;;;;;;    DB  WSO,WKO,WDE,XX,WA,WRU,XX,WKA
;;;;;;;;    DB  WWA,WT,WTA,KO,KTO,KKO,WNI,XX
;;;;;;;;    DB  WA,WU,WKO,WTO,WNI,WNA,WRU,WZI
;;;;;;;;    DB  WAY,WRO,WU,XX,XX,XX,XX,XX    
;;;;;;;;;
;;;;;;;;    DB  KG1,WKA,WZE,WNO,WSA,WKA,WNA,KG2
;;;;;;;;    DB  WHA,XX,WME,WZA,WME,WWO,WMA,WT
;;;;;;;;    DB  WTE,WO,WRU,WZO,WTN,WTN,WTN,WTN
;;;;;;;;    DB   WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSD7	;森のふくろう　
    DB   WTN,WTN,WTN,WTN,WTN,WTN,NM,NM
    DB   NM,NM,NM,WYO,XX,XX,XX,XX
    DB   WYO,WKU,WZO,XX,WA,WKU,WMU,WNI
    DB   XX,WU,WTI,WKA,WT,WTA,WBC,XX
;
    DB   XX,XX,XX,XX,WA,WGA,WT,WTE,WKI,WNA,WSA,WI,WMR
    DB   WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSD8	;シュ−ル2
    DB   WNA,WT,WBC,XX,WNA,WNI,WMI,WTE,WRU,KZA,KN,KSU,WBC,XX,XX,XX
    DB   KSI,KOY,KGE,WB_,WB_,KT,WBC,XX,WMO,WT,WMO,WSI,WYA,WT,WQE,XX
;
    DB   KG1,WMI,WTO,WO,WSI,KRE,KN,KZU,KG2,KZA,KN,KSU,WNE,WQE,WBC,XX
    DB   KYA,KME,KTE,WB_,KT,WBC,XX,KMI,WB_,WWO,WMI,WRU,WNO,WHA,WT,WBC
    DB   WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSD9	;海岸のふくろう
    DB   XX,XX,KHO,KT,KHO,KU,WBC,XX
    DB   KHO,KT,KHO,KU,WBC,XX,XX,XX
    DB   WBO,WU,WYA,WGA,WT2,WSO,WNO,WTU
    DB   WRU,WGI,WNO,XX,WA,WRU,WZI,WKA
;
    DB   KHO,KHO,KU,XX,WNA,WRU,WHO,WDO
    DB   XX,WNA,WRU,WHO,WDO,XX,XX,XX
    DB   KMA,KMO,KNO,WDO,WMO,WGA,XX,WA,WBA
    DB   WRE,WDA,WSU,WWA,WKE,WDI,WAY
;
    DB   KG1,WKA,WZE,WNO,WSA,WKA,WNA,KG2
    DB   WNO,WME,WZA,WME,WWO,WTU,WGE,WRU
    DB   WSI,WSI,WAY,WGA,XX,WA,WRA,WWA
    DB   WRE,WTA,WNO,WDI,WAY,WKA,WRA,WNA
;
    DB   KG1,WKA,WZE,WNO,WSA,WKA,WNA,KG2
    DB   WWO,WT2,WO,WKO,WSA,WNE,WBA,XX
    DB   WSO,WNO,WSI,WSI,WAY,WHA,WT2,WSI
    DB   WMA,WKA,WRA,WDE,WRE,WNU,WTO,WKA
;
    DB   KHO,KT,WBC,XX,WMU,WRA,WNO,XX,KKI,KTA
    DB   WNI,WA,WRU,XX,XX,XX
    DB   WHU,WSI,WGI,WNO,WMO,WRI,WMA,WDE
    DB   XX,WKU,WRU,WGA,WYO,WI,WMR,XX
;
    DB   WMA,WT,WTE,WO,WRU,WZO,WTN,WTN
    DB   WTN,XX,XX,XX,XX,XX,XX,XX
    DB   XX,XX,XX,KHO,KT,KHO,KU,WBC
    DB   XX,KHO,KT,KHO,KU,WBC,XX,XX
    DB   WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSDA	;砂漠のボス　ラネモーラ
   DB    XX,XX,XX,KU,KGO,KGO,WBC,KU,KGO
   DB    KGO,WBC,XX,XX,XX,XX,XX
   DB    KZI,KAY,KMA,KGE,KZI,KT,WBC,XX
   DB    KME,KZA,KWA,KRI,KGE,KZI,KT,WBC
   DB    WED
;

;************************
;*マムー　かえるのソウル*
;************************
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSDB	;蛙げろげろ　（笛無し）
    DB   KGE,KRO,KGE,KRO,WBC,KBO,WB_
    DB   KKA,KRU,WNO,XX,KMA,KMU,WB_,WDA,WBC
    DB   WA,WN,WTA,WT2,KMI,KUY,WB_,KZI
    DB   KT,KKU,WNO,XX,KI,KRO,KHA,WMO
;
    DB   WSI,WRA,WNE,WE,KTU,KRA,WDA,WNA
    DB   WMR,XX,KTI,KT,KTI,KT,KTI,KT
    DB   KHU,KE,WMO,WT,WTE,XX,WDE
    DB   WNA,WO,WSI,WTE,WKI,WNA,WT,WBC
    DB   WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSDC	;　笛あり（１曲　３００るぴー）
    DB   KGE,KRO,KGE,KRO,WMR,KBO,WB_
    DB   KKA,KRU,WNO,XX,KMA,KMU,WB_,WDA,WBC
    DB   WKO,WKO,WRA,WZI,WAY,XX,WSI,WRA
    DB   WNA,WI,KYA,KTU,WHA,WI,WNE,WE
;
    DB   KO,KRE,WT,WTI,WNO,XX,WTA,WMA,WSI
    DB   WI,WNO,XX,WU,WTA,WWO,XX
    DB   WKI,WKI,WTA,WI,WNO,WKA,WI,WQE
    DB   XX,KTI,KT,KTI,KT,KTI,KT,XX
;
    DB   KO,KRE,WT,WTI,KBA,KN,KDO,WHA
    DB   WT2,WYA,WSU,WI,WSI,WGO,WTO,WHA
    DB   WO,WKO,WTO,WWA,WRI,WDA,WZE,XX
    DB   KBE,KI,KBI,WB_,WBC,XX,XX,XX
;
    DB   WMA,WA,WT2,W1,WKI,WOY,WKU,XX
    DB   XX,XX,XX,XX,XX,XX,XX,XX
    DB   W3,W0,W0,KRU,KPI,WB_,WT,WTE
    DB   XX,WTO,WKO,WDA,WNA,WMR,XX,XX
;
    DB   WDO,WU,WSU,WN,WDA,WQE,XX,XX,XX,XX,XX,XX,XX,XX,XX,XX
    DB   XX,XX,XX,XX,WHA,WRA,WU,XX,XX,WSA,WI,WNA,WRA
    DB   WE2
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSDD	;ＭＳＤＣ　はいのとき
    DB   KSE,KN,KKI,KUY,KU,WBC,WBC,WA,WRI,WGA,WTO,WO,WT,WBC,WBC,WBC
    DB   KGE,KRO,KT,KGE,WB_,WB_,WB_,KRO,WBC,WBC,XX,XX,XX,XX,XX,XX
    DB   WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSDE	;ＭＳＤＣ　いいえのとき
    DB   WWA,WRI,WI,WNA,WMR,XX,KO,KRE,WT,WTI,KBA,KN,KDO,WHA,XX,XX
    DB   KBO,KRA,KN,KTE,SSHI,KA,WHA,XX,WSI,WNE,WE,WN,WDA,WMR,XX,XX
    DB   WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSDF	;歌を覚えた　（かえる編）
    DB   KG1,KKA,KE,KRU,WNO,KSO,KU,KRU,KG2,WWO,WO,WBO,WE,WTA,WBC,XX
    DB   WTA,WMA,WSI,WI,WWO,XX,WYU,WSA,WBU,WRU,XX,WU,WTA,WDA,WZE,WBC
;
    DB   WKO,WI,WTU,WNO,KNE,KI,KRO,WDE,WT2,WI,WNO,WTI,WNO,WNA,WI,XX
    DB   WMO,WNO,WNI,XX,WTA,WMA,WSI,WI,WWO,WI,WRE,WYO,WU,WBC,WBC,XX
    DB   WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSE0	;覚えた後
    DB   WKO,WNO,WU,WTA,WWO,XX,WU,WTA,WYA,WA,XX,WTA,WMA,WSI,WI,XX
    DB   KBI,KN,KBI,KN,WDA,WZE,WBC,XX,KNI,WB_,KTI,KAY,KN,WMR,XX,XX 
    DB   WED

;******************
;*小悪魔　イビール*
;******************
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSE1	;　小悪魔　イビール
    DB   KYA,KI,KT,WBC,WKO,WZO,WU,WT2
    DB   WYO,WKU,WMO,KO,KRE,KSA,KMA,WWO
    DB   WME,WZA,WME,WSA,WSE,WTE,WKU,WRE
    DB   WTA,WNA,WT,WBC,XX,XX,XX,XX
;
    DB   WTN,WTN,WTN,WDO,WU,WMO,WA,WRI
    DB   WGA,WTO,WU,XX,XX,XX,XX,XX
;
    DB   WO,WRE,WI,WWO,WSI,WTE,WYA,WRU
    DB   WT2,WKA,WKU,WGO,WSI,WYA,WGA,WRE
    DB   WTN,WTN,WTN,WYO,WRO,WSI,WI,WDE
    DB   WSU,WKA,WQE,XX,XX,XX,XX,XX
    DB   WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSE2	;　魔法の粉
    DB   WZI,WAY,WA,WT2,WMA,WHO,WU,WNO
    DB   WKO,WNA,WWO,WMO,WT,WTO,XX,XX
    DB   WMO,WTE,WRU,WYO,WU,WNI,XX,WSI
    DB   WTE,WYA,WRU,WBC,KI,KHI,KHI,KT
;
    DB   WYO,WRO,WSI,WI,WDE,WSU,WKA,WQE
    DB   XX,XX,XX,XX,XX,XX,XX,XX
    DB   XX,XX,XX,XX,WI,WI,WZO,XX
    DB   XX,WKA,WN,WBE,WN,WSI,WTE,WBC
    DB   WE2
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSE3	;　爆弾を増やすぞ
    DB   WZI,WAY,WA,WT2,KBA,KKU,KDA,KN
    DB   WWO,WMO,WT,WTO,XX,XX,XX,XX
    DB   WMO,WTE,WRU,WYO,WU,WNI,XX,WSI
    DB   WTE,WYA,WRU,WBC,KI,KHI,KHI,KT
;
    DB   WYO,WRO,WSI,WI,WDE,WSU,WKA,WQE
    DB   XX,XX,XX,XX,XX,XX,XX,XX
    DB   XX,XX,XX,XX,WI,WI,WZO,XX
    DB   XX,WKA,WN,WBE,WN,WSI,WTE,WBC
    DB   WE2
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSE4	;　矢を増やすぞ
    DB   WZI,WAY,WA,WT2,WYA,XX,WWO,WMO
    DB   WT,WTO,WMO,WT,WTO,XX,XX,XX
    DB   WMO,WTE,WRU,WYO,WU,WNI,XX,WSI
    DB   WTE,WYA,WRU,WBC,KI,KHI,KHI,KT
;
    DB   WYO,WRO,WSI,WI,WDE,WSU,WKA,WQE
    DB   XX,XX,XX,XX,XX,XX,XX,XX
    DB   XX,XX,XX,XX,WI,WI,WZO,XX
    DB   XX,WKA,WN,WBE,WN,WSI,WTE,WBC
    DB   WE2
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSE5	;　小悪魔　捨て台詞
    DB   KI,KHI,KHI,KT,WBC,WZA,WMA,WA
    DB   WMI,WYA,WGA,WRE,WBC,XX,XX,XX
    DB   WMO,WTE,WRU,WKA,WZU,WGA,WT2,WHU
    DB   WE,WTE,WSI,WMA,WT,WTA,WZO,WBC
;
    DB   WZI,WAY,WA,WT2,KGE,KN,KKI,WDE
    DB   WNE,WTN,WTN,WTN,XX,XX,XX,XX
    DB   WMA,WTA,WT2,WA,WO,WU,WZO,WT,WBC
    DB   WED
;--------------------------------------------

;****************
;*神殿のレリーフ*
;****************
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSE6	;レリーフ１
    DB   WQE,WQE,XX,KKA,KBE,WNI,XX,WE
    DB   WGA,WHO,WT,WTE,WA,WRU,WMR,XX
    DB   WTN,WTN,WTN,WKU,WRA,WKU,WTE,WT2
    DB   WYO,WKU,WMI,WE,WNA,WI,WMR,XX
    DB   WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSE7	;レリーフ２
    DB   KG1,KKO,KRE,KNI,XX,KHU,KRE,KSI
    DB   XX,KMO,KNO,KNI,KTU,KGU,XX,XX
    DB   XX,KKO,KHO,KRI,KN,KTO,KHA,XX
    DB   KSI,KMA,KNI,XX,KA,KRA,KZU,XX
;
    DB   XX,KSO,KRA,XX,KU,KMI,XX,KYA,KMA
    DB   XX,KHI,KTO,XX,KMA,KMO,KNO
    DB   XX,KMI,KNA,XX,KSU,KBE,KTE,XX,KTU
    DB   KKU,KRI,KMO,KNO,KNA,KRI,XX 
; 
    DB   XX,KKA,KZE,KNO,KSA,KKA,KNA,KNO,XX
    DB   KMI,KTE,KI,KRU,XX,XX,XX
    DB   XX,KYU,KME,XX,KNO,XX,KSE,KKA,KI
    DB   XX,KNA,KRI,XX,XX,XX,XX
;
    DB   XX,KKA,KZE,KNO,KSA,KKA,KNA,XX,KME
    DB   KZA,KME,KRU,XX,KTO,KKI,XX
    DB   XX,KKO,KHO,KRI,KN,KTO,KHA,XX,KA
    DB   KWA,XX,KTO,XX,KNA,KRU,XX
;  
    DB   XX,KWA,KRE,XX,KNA,KGA,KRE,KTU,KKI
    DB   KSI,XX,KMO,KNO,KNI,XX,XX
    DB   XX,KSI,KN,KZI,KTU,XX,KWO,XX
    DB   KTU,KTA,KE,KRU,KG2,XX,XX,XX
;
    DB   WQE,WQE,XX,WTU,WKU,WRI,WMO,WNO 
    DB   WTN,WTN,WTN,WTN,WQE,XX,XX,XX
    DB   WED

;----------------------------------------------
;************************
;*黄金のはっぱのイベント*
;************************
;+----------------------------------------------+
;|	「おうごんのはっぱ」をみつけた！	|
;|	スタートボタンでかくにんしよう！	|
;+----------------------------------------------+
MSE8	;黄金の葉っぱを見つけたとき
	DB	KG1,WO,WU,WGO,WN,WNO,WHA,WT,WPA,KG2,WWO,WMI,WTU,WKE,WTA,WBC
	DB	KSU,KTA,WB_,KTO,KBO,KTA,KN,WDE,WKA,WKU,WNI,WN,WSI,WYO,WU,WBC
	DB	WED
;;;KK;;;    DB   KG1,WO,WU,WGO,WN,WNO,WHA,WT
;;;KK;;;    DB   WPA,KG2,WWO,WMI,WTU,WKE,WTA,WBC
;;;KK;;;    DB   KSA,KBU,WGA,WME,WN,WDE,WT2,WKA
;;;KK;;;    DB   WKU,WNI,WN,WDE,WKI,WRU,WYO,WBC
;;;KK;;;    DB   WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSE9	;黄金の葉っぱ最後の１枚を手にいれたとき
    DB   WTU,WT2,WTU,WT2,WTU,WI,WNI,WT2
    DB   WSA,WI,WGO,WNO,W1,WMA,WI,WWO
    DB   WTE,WNI,WI,WRE,WTI,WAY,WT,WTA
    DB   WZE,WB_,WB_,WT,WBC,WTN,WTN,WTN
;
    DB   WZI,WAY,WT2,WTO,WRI,WA,WE,WZU
    DB   KRI,KTI,KAY,WB_,KDO,WNO,WTO,WKO
    DB   WMO,WT,WTE,WI,WT,WTE,WT2,KKA
    DB   KGI,WNO,WKO,WTO,XX,WKI,WKO,WU
    DB   WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSEA	;Not used
;;;;;;;;MSEA	;　ぴたり賞　１
;;;;;;;;    DB   WO,WME,WDE,WTO,WU,WBC,XX,KPI
;;;;;;;;    DB   KTA,KRI,WSI,WOY,WU,WDA,WYO,WBC
;;;;;;;;    DB   WSI,WOY,WU,WHI,WN,WWO,WO,WU
;;;;;;;;    DB   WKE,WTO,WRI,WKU,WDA,WSA,WI,WBC
;;;;;;;;    DB   WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSEB	;Not used
;;;;;;;;MSEB	;　ぴたり賞　２
;;;;;;;;    DB   WO,WME,WDE,WTO,WU,WBC,XX,KPI
;;;;;;;;    DB   KT,KTA,KRI,WSI,WOY,WU,WDA,WBC
;;;;;;;;    DB   KPU,KRE,KZE,KN,KTO,WHA,WT2,WKO
;;;;;;;;    DB   WTI,WRA,WDE,WSU,WBC
;;;;;;;;    DB   WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSEC	;　守りの木ノ実
    DB   WMA,WMO,WRI,WNO,WKI,WNO,WMI,WWO
    DB   XX,WTE,WNI,WI,WRE,WTA,WBC,XX
    DB   KTE,KKI,WKA,WRA,WNO,KDA,KME,WB_
    DB   KZI,WWO,WHA,WN,WGE,WN,WSU,WRU
    DB   WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSED	;　　盾２を手にいれた
    DB   WKA,WGA,WMI,WNO,WTA,WTE,WWO,XX
    DB   WTE,WNI,WI,WRE,WTA,WBC,XX,XX
    DB   WHU,WSE,WGE,WNA,WKA,WT,WTA,KBI
    DB   WB_,KMU,WMO,WHA,WNE,WKA,WE,WSE
    DB   WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSEE	;　ぶれすれっと２を手にいれた
    DB   KPA,KWA,KHU,KRU,KBU,KRE,KSU,KRE
    DB   KT,KTO,WWO,WTE,WNI,WI,WRE,WTA
    DB   WKO,WN,WDO,WHA,WT2,KZO,KU,WDA
    DB   WT,WTE,WKA,WTU,WGE,WRU,WZO,WBC
    DB   WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSEF	;　秘密の貝殻を手にいれた
    DB   KHI,KMI,KTU,WNO,KKA,KI,WGA,WRA
    DB   WWO,WTE,WNI,WI,WRE,WTA,WBC,XX
    DB   WTA,WKU,WSA,WN,WA,WTU,WME,WTE
    DB   WI,WI,WMO,WNO,WMO,WRA,WO,WU
    DB   WED
;
;- - -  筏乗り - -
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSF0	;筏屋の親父
 DB W1,W0,W0,KRU,KPI,WB_,WDE,KI,KKA,KDA,WNI,WNO,WRU,WKA,WI,WQE
 DB XX,XX,XX,XX,WNO,WRU,XX,XX,XX,WI,WYA,WDA
 DB WE2
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSF1	;はい
 DB WYO,WSI,WBC,XX,WO,WMO,WTE,WNI,XX,WDA,WSI,WTO,WI,WTA,WKA,WRA
 DB WZO,WN,WBU,WN,WNI,XX,WTA,WNO,WSI,WN,WDE,KTI,KOY,WB_,KDA,KI
 DB WED
;
;**********
;たてふだ *
;**********
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSF2	;神殿の滝
    DB   XX,XX,XX,XX,WSI,WN,WDE,WN,WNO,WTA,WKI
    DB   WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSF3	;神殿の南
    DB   XX,XX,XX,XX,WSI,WN,WDE,WN,WNO,WMI,WNA,WMI
    DB   WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSF4	;どうぶつ村入口
    DB   XX,XX,XX,WDO,WU,WBU,WTU,WMU,WRA,WI,WRI,WGU,WTI
    DB   WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSF5	;最終ボス　１
    DB   WWA,WRE,WRA,WHA,WT2,WA,WKU,WMU
    DB   WNO,WNA,WKA,WYO,WRI,XX,XX,XX
    DB   WU,WMA,WRE,XX,WI,WDE,WSI,WMO
    DB   WNO,WTN,WTN,WTN,WTN,XX,XX,XX
;
    DB   KYU,KME,WTO,WI,WU,XX,WTO,WZA
    DB   WSA,WRE,WTA,XX,WSE,WKA,WI,WNI
    DB   WTI,WTU,WZI,WOY,WWO,XX,WKI,WZU
    DB   WKU,WGA,WTA,WME,WT2,XX,XX,XX
;
    DB   KG1,WKA,WZE,WNO,WSA,WKA,WNA,KG2
    DB   WNI,WT2,WE,WI,WE,WN,WNO,XX
    DB   WNE,WMU,WRI,WWO,XX,WA,WTA,WE
    DB   WTA,WTN,WTN,WTN,WTN,XX,XX,XX
;
    DB   WKO,WRE,WDE,WT2,WME,WZA,WME,WNI
    DB   WYO,WT,WTE,XX,WSI,WMA,WGA,XX
    DB   WKI,WE,WTE,WSI,WMA,WU,WKO,WTO
    DB   WHA,WNA,WI,WMR,XX,XX,XX,XX
;
    DB   WWA,WRE,WWA,WRE,WKO,WSO,WT2,KKA
    DB   KMI,WNA,WNO,WDA,WBC,XX,XX,XX
    DB   WTN,WTN,WTN,WTN,WTN,WTN,WTN,WTN
    DB   WTN,WTN,WTN,WTN,WTN,WTN,WTN,WTN
;
    DB   WTN,WTN,WTN,WDA,WGA,WT2,WO,WMA
    DB   WE,WHA,WT2,WKI,WTA,WTN,WTN,WTN
    DB   WWA,WRE,WRA,WNO,XX,WZI,WAY,WMA
    DB   WWO,WSI,WNI,WNA,WT,WBC,XX,XX
;
    DB   KKU,KT,KKU,KT,KKU,KT,WMR,XX
    DB   WO,WMA,WE,WNI,WHA,WT2,XX,XX
    DB   WWA,WRE,WRA,WWO,XX,WTA,WO,WSU
    DB   WKO,WTO,WHA,XX,WDE,WKI,WNU,WBC
;
    DB   XX,XX,XX,XX,XX,WI,WKU,WZO,WBC,WBC
    DB   XX,XX,XX,XX,XX,XX
    DB   XX,XX,XX,XX,XX,XX,XX,XX
    DB   XX,XX,XX,XX,XX,XX,XX,XX
    DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSF6	;最終ボス　２
    DB   WKI,WE,WTE,WSI,WMA,WU,WTN,WTN
    DB   WTN,WKO,WWA,WRE,WTE,WSI,WMA,WU
    DB   WWA,WRE,WRA,WNO,WSI,WMA,WGA,XX
    DB   WWA,WRE,WRA,WNO,WSE,WKA,WI,WGA
;
    DB   WTN,WTN,WWA,WTN,WRE,WTN,WRA,WTN
    DB   WNO,WTN,WSI,WTN,WMA,WTN,WTN,WTN
    DB   XX,XX,XX,XX,XX,XX,XX,XX
    DB   XX,XX,XX,XX,XX,XX,XX,XX
;
    DB   WTN,WTN,WTN,WTN,WWA,WTN,WTN,WTN
    DB   WRE,WTN,WTN,WTN,WRA,WTN,WTN,WTN
    DB   XX,XX,XX,XX,XX,XX,XX,XX
    DB   XX,XX,XX,XX,XX,XX,XX,XX
;
    DB   WTN,XX,WTN,XX,WTN,XX,WTN,XX
    DB   WTN,XX,WTN,XX,WTN,XX,WTN,XX
    DB   XX,XX,XX,XX,XX,XX,XX,XX
    DB   XX,XX,XX,XX,XX,XX,XX,XX
  DB  WED
;
;**********************************
;*オプションマリン　はやりのゲーム*
;**********************************
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSF7	;マリンオプション　はやりのゲーム
    DB  KKI,KAY,WB_,WB_,KT,WBC,XX,WNE
    DB  WE,WNE,WE,NM,NM,NM,NM,NM
    DB  WYA,WT,WTE,WI,WI,WBC,WQE,XX
    DB  WYA,WT,WTE,WI,WI,WBC,WQE,XX
;
    DB  WDO,WU,WSI,WYO,WU,WQE,XX,XX
    DB  XX,XX,XX,XX,XX,XX,XX,XX
    DB  XX,XX,XX,XX,WI,WI,WYO,XX
    DB  XX,KDA,WB_,KME,WBC,XX,XX,XX
    DB  WE2
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSF8	;マリンオプション２（Ｆ７が NOの時）　
    DB  WYA,WRI,WTA,WI,WBC,XX,WYA,WRI,WTA
    DB  WI,WBC,WBC,XX,XX,XX,XX
    DB  XX,XX,XX,XX,WI,WI,WYO,XX
    DB  XX,WSI,WOY,WU,WGA,WNE,WE,WNA
    DB  WE2
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSF9	;はやりのゲーム　店員
    DB  WI,WI,KU,KDE,XX,WSI,WTE,WN
    DB  WZI,WAY,WNE,WB_,WKA,WMR,XX,XX
    DB  KO,KME,WB_,WSA,WTE,WHA,WTN,WTN
    DB  WTN,KPU,KRO,WDA,WNA,WT,WBC,WQE
;
    DB  KPU,KRO,WHA,XX,WO,WKO,WTO,WWA
    DB  WRI,WDA,WYO,WT,WBC,WBC,XX,XX
    DB  WKE,WB_,WB_,WN,WNA,WT,WBC,WBC
    DB  XX,XX,KKE,KT,WBC,XX,XX,XX 
    DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSFA	;カバのモデル1
    DB  XX,XX,XX,XX,XX,KI,KYA,WB_,KN,WBC,XX,XX,XX,XX,XX
    DB  XX,XX,XX,XX,XX,XX,XX,XX,XX,XX,XX,XX,XX,XX,XX,XX
    DB  WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSFB	;カバのモデル2
    DB  XX,XX,XX,XX,XX,KKA,KBA,WB_,KN,WBC,XX,XX,XX,XX,XX,XX
    DB  XX,XX,XX,XX,XX,XX,XX,XX,XX,XX,XX,XX,XX,XX,XX,XX
    DB  WED
;
;+----------------------------------------------+
;|	これは、タンスではありません		|
;|	えっ？　しってるって？　あっそう	|
;+----------------------------------------------+
MSFC	;タンスを開けたとき
 DB WKO,WRE,WHA,WT2,KTA,KN,KSU,WDE,WHA,WA,WRI,WMA,WSE,WN,XX,XX
 DB WE,WT,WQE,XX,WSI,WT,WTE,WRU,WT,WTE,WQE,XX,WA,WT,WSO,WU 
 DB WED
;
;+----------------------------------------------+
;|	＿＿＿＿＿＿はタンスをしらべた。	|
;|	　　　　　　　　　　　　　　　　	|
;|	ウーン　なかなか　いいタンスだ。	|
;+----------------------------------------------+
MSFD	;タンスを開けたとき
 DB NM,NM,NM,NM,NM,WHA,KTA,KN,KSU,WWO,WSI,WRA,WBE,WTA,WMR,XX
 DB XX,XX,XX,XX,XX,XX,XX,XX,XX,XX,XX,XX,XX,XX,XX,XX
; 
   DB   KU,WB_,KN,XX,WNA,WKA,WNA,WKA
   DB   XX,WI,WI,KTA,KN,KSU,WDA,WMR
 DB WED
;
;+----------------------------------------------+
;|	|
;|	|
;+----------------------------------------------+
MSFE	;魔法の粉　できあがり
 DB   WHO,WRE,WT,XX,WDE,WKI,WA
 DB   WGA,WRI,WZI,WAY,WBC,XX,XX,XX,XX
 DB   WKA,WI,WSU,WU,WNI,WT2,WKI,WWO
 DB   WTU,WKE,WTE,WTU,WKA,WE,WYO,WMR
;
   DB   WMA,WZU,WHA,WT2,WKO,WNO,WHE,WYA
   DB   WNO,WDO,WRE,WKA,WNI,XX,XX,XX
   DB   WHU,WRI,WKA,WKE,WTE,WGO,WRA,WN
   DB   WTN,WTN,WTN,WMR
	DB	WED
;
;+----------------------------------------------+
;|	てい！　ひとのタンスをかってに		|
;|	・・・そんなことどこでおぼえただ	|
;+----------------------------------------------+
MSFF	;タンスを開けて怒られた
 DB WTE,WI,WBC,XX,WHI,WTO,WNO,KTA,KN,KSU,WWO,WKA,WT,WTE,WNI,XX
 DB WTN,WTN,WTN,WSO,WN,WNA,WKO,WTO,WDO,WKO,WDE,WO,WBO,WE,WTA,WDA
	DB	WED
;
;----------------------------------------------------
BANK1D	GROUP	$1D
	ORG	$4000
;===============================================

;
;**************
;*アイテム入手*
;**************
M100;   ＃１　満月のバイオリン　
    DB  KG1,WMA,WN,WGE,WTU,WNO,KBA,KI,KO,KRI,KN,KG2,WDA,WT,WBC
    DB  WED
;
M101;   ＃２ 巻き貝のホルン
    DB  KG1,WMA,WKI,WGA,WI,WNO,KHO,KRU,KN,KG2,WWO,WMI,WTU,WKE,WTA,WBC
    DB  WED
;
M102;   ＃３　海百合のベル
    DB  KG1,WU,WMI,WYU,WRI,WNO,KBE,KRU,KG2,WWO,WTE,WNI,WI,WRE,WTA,WBC
    DB  WED
;
M103;   ＃４　潮騒のハープ
    DB  KG1,WSI,WO,WSA,WI,WNO,KHA,WB_,KPU,KG2,WWO,WMI,WTU,WKE,WTA,WBC
    DB  WED
;
M104;   ＃８　嵐のマリンバ
    DB  KG1,WA,WRA,WSI,WNO,KMA,KRI,KN,KBA,KG2,WWO,WMI,WTU,WKE,WTA,WBC
    DB  WED
;
M105;   ＃６　珊瑚のトライアングル
    DB  KG1,WSA,WN,WGO,WNO,KTO,KRA,KI,KA,KN,KGU,KRU,KG2,WDA,WT,WBC
    DB  WED
;
M106;   ＃７　夕凪のオルガン
    DB  KG1,WYU,WU,WNA,WGI,WNO,KO,KRU,KGA,KN,KG2,WWO,WMI,WTU,WKE,WTA
    DB  WED
;
M107;   ＃５　遠雷のドラム
    DB  KG1,WE,WN,WRA,WI,WNO,KDO,KRA,KMU,KG2,WWO,WMI,WTU,WKE,WTA,WBC
    DB  WED
;
;;;KK;;;;****************	１０８〜１０Ｆまでのメッセージデータの場所を
;;;KK;;;;*ヒントを言う壁*	２８０以降に変えた
;;;KK;;;;****************
;;;KK;;;M108;＃１のヒントを言う壁
;;;KK;;;;
;;;KK;;;     DB   KTO,KGE,XX,KSU,KRU,KDO,KKI,KMO,KNO,XX
;;;KK;;;     DB   KTA,KTE,KNI,KTE,XX,XX
;;;KK;;;     DB   KHA,KZI,KKI,XX,KTO,KBA,KSU,KBE,KSI,WTN,WTN,WTN
;;;KK;;;     DB   WED
;;;KK;;;;
;;;KK;;;M109;＃２のヒントを言う壁
;;;KK;;;;
;;;KK;;;     DB   KSA,KI,KSI,KOY,XX,KO,KO,KMI
;;;KK;;;     DB   KMI,KNO,KMA,KMO,KNO,WTN,WTN,WTN
;;;KK;;;     DB   KSA,KI,KGO,XX,XX,KDO,KKU,KRO,KNA,KI,KTO
;;;KK;;;     DB   WTN,WTN,WTN
;;;KK;;;     DB   WED
;;;KK;;;;
;;;KK;;;M10A;＃３のヒントを言う壁
;;;KK;;;;
;;;KK;;;     DB   KTO,KO,KI,XX,KTO,KKO,KRO,WTN
;;;KK;;;     DB   WTN,WTN,WTN,XX,XX,XX,XX,XX
;;;KK;;;     DB   KO,KSO,KRE,KZU,XX,KHA,KSI,KRI
;;;KK;;;     DB   XX,KTO,KBU,KBE,KSI,WTN,WTN,WTN
;;;KK;;;     DB   WED
;;;KK;;;;
;;;KK;;;M10B;＃４のヒントを言う壁
;;;KK;;;;
;;;KK;;;     DB   KHI,KKA,KRU,KYU,KKA,XX,KSO,KNO
;;;KK;;;     DB   XX,KU,KGO,KKI,KSI,KRU,KMO,KNO
;;;KK;;;     DB   KKA,KNA,KRA,KZU,XX,KMI,KTI,KBI,KKA,KRE,KRU,WTN,WTN,WTN
;;;KK;;;     DB   WED
;;;KK;;;;
;;;KK;;;M10C;＃５のヒントを言う壁
;;;KK;;;;
;;;KK;;;     DB   KRO,KU,KSO,KKU,KNO,KA,KKA,KRI
;;;KK;;;     DB   XX,KMA,KZI,KWA,KRU,KTO,KKO,KRO
;;;KK;;;     DB   KHU,KKA,KKU,XX,KMO,KGU,KRU,KBE,KSI,WTN,WTN,WTN
;;;KK;;;     DB   WED
;;;KK;;;;
;;;KK;;;M10D;＃６のヒントを言う壁
;;;KK;;;;
;;;KK;;;     DB   KTI,KZU,KNI,XX,KU,KKA,KBU,XX,KKA,KO,XX,KRI,KOY,KU,KNO,XX
;;;KK;;;     DB   KME,KNI,XX,KKA,KBE,KWA,KRI,KTE,XX,KHA,KI,KRU,KBE,KSI
;;;KK;;;     DB    WED
;;;KK;;;;
;;;KK;;;M10E;＃７のヒントを言う壁
;;;KK;;;;
;;;KK;;;     DB   W4,KHO,KN,KNO,XX,KHA,KSI,KRA
;;;KK;;;     DB   XX,KTA,KO,KRE,KRU,KTO,KKI,XX
;;;KK;;;     DB   KNA,KZO,XX,KTO,KKE,KRI
;;;KK;;;     DB   WED
;;;KK;;;;
;;;KK;;;M10F;＃８のヒントを言う壁
;;;KK;;;;
;;;KK;;;     DB    KMI,KTI,KTU,KKU,KRU,XX,KI,KWA,XX,MK8,XX,KKI,WB_,KNI,KTE,XX
;;;KK;;;     DB    KA,KYA,KTU,KRI,XX,KYU,KKA,XX,KSU,KBE,KTE,KU,KME,KRU,KBE,KSI
;;;KK;;;     DB    WED
;
;+----------------------------------------------+
;|	しゃしんスキスキしゃしんやさん！	|
;|	うるりらさんが　きになるのかい？	|
;+----------------------------------------------+
M108	;写真５：うるりらじーさんの巻
	DB	WSI,WAY,WSI,WN ,KSU,KKI,KSU,KKI,WSI,WAY,WSI,WN ,WYA,WSA,WN ,WBC
	DB	WU ,WRU,WRI,WRA,WSA,WN ,WGA,XX ,WKI,WNI,WNA,WRU,WNO,WKA,WI ,WQE
	DB	WED
;
;+----------------------------------------------+
;|	だいめい「げきしゃ！名名名名名は	|
;|	うるりらの　ヒミツを　みた！」終	|
;+----------------------------------------------+
M109	;写真５：写真屋撮影！
	DB	WDA,WI ,WME,WI ,KG1,WGE,WKI,WSI,WAY,WBC,NM ,NM ,NM ,NM ,NM ,WHA
	DB	WU ,WRU,WRI,WRA,WNO,XX ,KHI,KMI,KTU,WWO,XX ,WMI,WTA,WBC,KG2,WED
;
;+----------------------------------------------+
;|	それじゃ　みつかるまえに　　　　	|
;|	名名名名名もにげろよ！じゃっ終		|
;+----------------------------------------------+
M10A	;写真５：撮影後！
	DB	WSO,WRE,WZI,WAY,XX ,WMI,WTU,WKA,WRU,WMA,WE ,WNI,XX ,XX ,XX ,XX 
	DB	NM ,NM ,NM ,NM ,NM ,WMO,WNI,WGE,WRO,WYO,WBC,WZI,WAY,WT ,WED
;
;+----------------------------------------------+
;|	それじゃ、げんぞうしときますから	|
;|	できたしゃしんも　みにきてね！終	|
;+----------------------------------------------+
M10B	;撮影後
	DB	WSO,WRE,WZI,WAY,WT2,WGE,WN ,WZO,WU ,WSI,WTO,WKI,WMA,WSU,WKA,WRA
	DB	WDE,WKI,WTA,WSI,WAY,WSI,WN ,WMO,XX ,WMI,WNI,WKI,WTE,WNE,WBC,WED
;
;+----------------------------------------------+
;|	しゃしんスキスキしゃしんやさん！	|
;|	しゃしん　とらせて！　　　　　　	|
;|	　　　　とって　　ヤダ！選		|
;+----------------------------------------------+
M10C
	DB	WSI,WAY,WSI,WN ,KSU,KKI,KSU,KKI,WSI,WAY,WSI,WN ,WYA,WSA,WN ,WBC
	DB	WSI,WAY,WSI,WN ,XX ,WTO,WRA,WSE,WTE,WBC,XX ,XX ,XX ,XX ,XX ,XX 
	DB	XX ,XX ,XX ,XX ,WTO,WT ,WTE,XX ,XX ,KYA,KDA,WBC,WE2
;
;+----------------------------------------------+
;|	じゃ、おくにいって！マクのまえ！	|
;+----------------------------------------------+
M10D
	DB	WZI,WAY,WT2,WO ,WKU,WNI,WI ,WT ,WTE,WBC,KMA,KKU,WNO,WMA,WE ,WBC
	DB	WED
;
;+----------------------------------------------+
;|	まだ　とってないよ・・・　　　　	|
;|	さつえいは、マクのまえだよ！　　	|
;+----------------------------------------------+
M10E
	DB	WMA,WDA,XX ,WTO,WT ,WTE,WNA,WI ,WYO,WTN,WTN,WTN,XX ,XX ,XX ,XX 
	DB	WSA,WTU,WE ,WI ,WHA,WT2,KMA,KKU,WNO,WMA,WE ,WDA,WYO,WBC,XX ,XX 
	DB	WED
;
;+----------------------------------------------+
;|	だいめい「ゆうしゃ、ここにたつ」	|
;|	　　　　　はい、チーズ！　　　　	|
;+----------------------------------------------+
M10F
	DB	WDA,WI ,WME,WI ,KG1,WYU,WU ,WSI,WAY,WT2,WKO,WKO,WNI,WTA,WTU,KG2
	DB	XX ,XX ,XX ,XX ,XX ,WHA,WI ,WT2,KTI,WB_,KZU,WBC,XX ,XX ,XX ,XX 
	DB	WED
;
;+----------------------------------------------+
;|	くちばしのない　せきぞうがなにか	|
;|	をいっている。・・・ききとれない	|
;+----------------------------------------------+
M110;　ヒントを言う石版（かけら無し）
;;;;;;;;     DB   WSE,WKI,WBA,WN,WNI,WT2,WMO,WZI
;;;;;;;;     DB   WGA,WKA,WI,WTE,WA,WRU,WMR,XX
;;;;;;;;     DB   WTN,WTN,WTN,WQE,WTN,WTN,WTN,WKA
;;;;;;;;     DB   WKE,WTE,WTE,WYO,WME,WNA,WI,WMR
	db	WKU,WTI,WBA,WSI,WNO,WNA,WI,XX,WSE,WKI,WZO,WU,WGA,WNA,WNI,WKA
	db	WWO,WI,WT,WTE,WI,WRU,WMR,WTN,WTN,WTN,WKI,WKI,WTO,WRE,WNA,WI
     DB   WED
;

;**********
;*中ボス敵*
;**********
M111;　中ぼすの台詞　（宝箱のメッセージ）
     DB   WHA,WKO,WNO,WNA,WKA,WMI,WHA,WT2
     DB   WO,WRE,WSA,WMA,WGA,WI,WTA,WDA
     DB   WI,WTA,WBC,WHO,WSI,WKE,WRI,WAY
     DB   WTU,WKA,WMA,WE,WTE,WMI,WNA,WBC
;
     DB   XX,XX,XX,KMA,KSU,KTA,WB_,KSU
     DB   KTA,KRU,KHU,SSO,KN,XX,MK3
     DB   WED
;
M112;  中ぼすの台詞　（再登場　部屋に入ったとき）
     DB   KGE,KT,WBC,XX,WMI,WTU,WKA,WT,WTI
     DB   WMA,WT,WTA,WBC,XX,XX,XX
     DB   WSI,WTU,WKO,WI,KYA,KRO,WB_,WDA,WZE,WBC
     DB   WED
;
M113;  中ぼすの台詞　（部屋から逃げるとき）
     DB   KTI,WB_,KKU,KSI,KOY,WB_,KT,WBC
     DB   XX,WKA,WNA,WWA,WNE,WB_,WYA,WBC
     DB   WKO,WKO,WHA,WHI,WTO,WMA,WZU,WT2
     DB   WTA,WI,WSA,WN,WSU,WRU,WZE,WBC
     DB   WED
;
M114;　中ぼすの台詞　（再再登場　部屋に入ったとき）
     DB   KGE,KGE,KT,WBC,WMA,WTA,WKI,WYA
     DB   WGA,WT,WTA,WBC,XX,XX,XX,XX
     DB   KHO,KN,KTO,WNI,WA,WKI,WRA,WME,WNO
     DB   WWA,WRU,WI,KYA,KRO,WB_,WDA
;
     DB   WSO,WNO,WSE,WI,WKA,WKU,WT2,WO
     DB   WRE,WSA,WMA,WGA,WNA,WO,WSI,WTE
     DB   WYA,WRU,WZE,WB_,WT,WBC
     DB   WED
;
M115;ここほれ  わんわん
     DB   XX,KKO,KKO,KHO,KRE,XX,KBA,KU,KT,WBC,XX,KBA,KU,KT,WBC
     DB   WED
M116;人魚像にウロコはめた
     DB   WNI,WN,WGI,WOY,WNO,KU,KRO,KKO,WWO,XX,KKA,KKE,WTE,WRU,XX,XX
     DB   WTO,WKO,WRO,WNI,XX,WHA,WME,WKO,WN,WDA,WBC,XX,XX,XX,XX,XX
     DB   WED
;
;+----------------------------------------------+
;|	・・・　つりをするときと　・・・	|
;|	カッコつけるときは・・・アップ　	|
;|	もっと・・・まわりを・・・よく　	|
;|	みなくちゃ　だめだよ！　アップ終	|
;+----------------------------------------------+
M117	;釣りおやじ（写真屋とおやじ落ちる。アップ画面で）
	DB	WTN,WTN,WTN,XX ,WTU,WRI,WWO,WSU,WRU,WTO,WKI,WTO,XX ,WTN,WTN,WTN
	DB	KKA,KT ,KKO,WTU,WKE,WRU,WTO,WKI,WHA,WTN,WTN,WTN,KA ,KT ,KPU,XX 
	DB	WMO,WT ,WTO,WTN,WTN,WTN,WMA,WWA,WRI,WWO,WTN,WTN,WTN,WYO,WKU,XX 
	DB	WMI,WNA,WKU,WTI,WAY,XX ,WDA,WME,WDA,WYO,WBC,XX ,KA ,KT ,KPU
	DB	WED
;
;****************
;*四つ子の男の子*
;****************
;
;+----------------------------------------------+
;|	にいちゃん！セーブがしたいときは	|
;|	ぜんぶのボタンをどうじにおすんだ	|
;|	でも、おいらこどもだから、なんの	|
;|	ことやら、さっぱりわかんないや。	|
;+----------------------------------------------+
M118;   男の子Ａ、Ｂ、Ｃ、Ｄ　その１
    DB  WNI,WI,WTI,WAY,WN,WBC,KSE,WB_,KBU,WGA,WSI,WTA,WI,WTO,WKI,WHA
    DB  WZE,WN,WBU,WNO,KBO,KTA,KN,WWO,WDO,WU,WZI,WNI,WO,WSU,WN,WDA
;
    DB  WDE,WMO,WT2,WO,WI,WRA,WKO,WDO,WMO,WDA,WKA,WRA,WT2,WNA,WN,WNO
    DB  WKO,WTO,WYA,WRA,WT2,WSA,WT,WPA,WRI,WWA,WKA,WN,WNA,WI,WYA,WMR
    DB  WED
;
;+----------------------------------------------+
;|	セーブごのさいスタートは、さいご	|
;|	にくぐった、でいりぐちらしいけど	|
;|	でも、おいらこどもだから、なんの	|
;|	ことやら、さっぱりわかんないや。	|
;+----------------------------------------------+
M119;   男の子Ａ、Ｂ、Ｃ、Ｄ　その２
    DB  KSE,WB_,KBU,WGO,WNO,WSA,WI,KSU,KTA,WB_,KTO,WHA,WT2,WSA,WI,WGO
    DB  WNI,WKU,WGU,WT,WTA,WT2,WDE,WI,WRI,WGU,WTI,WRA,WSI,WI,WKE,WDO
;
    DB  WDE,WMO,WT2,WO,WI,WRA,WKO,WDO,WMO,WDA,WKA,WRA,WT2,WNA,WN,WNO
    DB  WKO,WTO,WYA,WRA,WT2,WSA,WT,WPA,WRI,WWA,WKA,WN,WNA,WI,WYA,WMR
    DB  WED
;
;+----------------------------------------------+
;|	このしまの、ちずをみるときはね		|
;|	セレクトボタンをおすんだってさ。	|
;|	でも、おいらこどもだから、なんの	|
;|	ことやら、さっぱりわかんないや。	|
;+----------------------------------------------+
M11A;   男の子Ａ、Ｂ、Ｃ、Ｄ　その３
    DB  WKO,WNO,WSI,WMA,WNO,WT2,WTI,WZU,WWO,WMI,WRU,WTO,WKI,WHA,WNE,XX
    DB  KSE,KRE,KKU,KTO,KBO,KTA,KN,WWO,WO,WSU,WN,WDA,WT,WTE,WSA,WMR
;
    DB  WDE,WMO,WT2,WO,WI,WRA,WKO,WDO,WMO,WDA,WKA,WRA,WT2,WNA,WN,WNO
    DB  WKO,WTO,WYA,WRA,WT2,WSA,WT,WPA,WRI,WWA,WKA,WN,WNA,WI,WYA,WMR
    DB  WED
;
;+----------------------------------------------+
;|	ハートがなくなりそうなときは、		|
;|	いえやどうくつに、はいるといいよ	|
;|	でも、おいらこどもだから、なんの	|
;|	ことやら、さっぱりわかんないや。	|
;+----------------------------------------------+
M11B;  男の子Ａ、Ｂ、Ｃ、Ｄ　その４
    DB  KHA,WB_,KTO,WGA,WNA,WKU,WNA,WRI,WSO,WU,WNA,WTO,WKI,WHA,WT2,XX
    DB  WI,WE,WYA,WDO,WU,WKU,WTU,WNI,WT2,WHA,WI,WRU,WTO,WI,WI,WYO
;
    DB  WDE,WMO,WT2,WO,WI,WRA,WKO,WDO,WMO,WDA,WKA,WRA,WT2,WNA,WN,WNO
    DB  WKO,WTO,WYA,WRA,WT2,WSA,WT,WPA,WRI,WWA,WKA,WN,WNA,WI,WYA,WMR
    DB  WED
;
M11C;  男の子Ａ　タムタム（ダンジョン１クリア後）
    DB  WNE,WE,WT2,WNI,WI,WTI,WAY,WN,WMR,KMA,KRI,KN,WNO,WKO,WTO,XX
    DB  WDO,WU,XX,WO,WMO,WT,WTE,WRU,WNO,WSA,WA,WQE,XX,XX,XX,XX
;
    DB  WDE,WMO,WT2,WO,WI,WRA,WKO,WDO,WMO,WDA,WKA,WRA
    DB  WSA,WT,WPA,WRI,WWA,WKA,WRA,WN,WKO,WTO,WNI,WSI,WTO,WKU,WYO,WMR
    DB  WED
;
M11D;  男の子Ｂ　テンテン（ダンジョン１クリア後）
    DB  WNI,WI,WTI,WAY,WN,WHA,WT2,WDO,WT,WKA,WRA,WKI,WTA,WNO,WQE,XX
    DB  WTN,WTN,WTN,WSI,WMA,WNO,WSO,WTO,WT,WQE,WBC,XX,XX,XX,XX,XX
;
    DB  KG1,WSO,WTO,KG2,WT,WTE,WNA,WA,WNI,WQE,XX,XX,XX,XX,XX,XX
    DB  WO,WI,WRA,WT2,WKA,WN,WGA,WE,WTA,WKO,WTO,WMO,WNE,WE,WYA,WMR
    DB  WED
;
M11E;  男の子Ｃ　トムトム（ダンジョン１クリア後）
    DB  KTA,KMA,KRA,KN,KTI,WYA,WMA,WNO,WSE,WI,WNA,WRU,WTA,WMA,WGO,WMR
    DB  KG1,WKA,WZE,WNO,WSA,WKA,WNA,KG2,WHA,WSO,WNO,WNA,WKA,WDE,WT2,XX
;
    DB  WNE,WMU,WT,WTE,WRU,WN,WDA,WT,WTE,WSA,WMR,XX,WNA,WZE,WQE,XX
    DB  WO,WI,WRA,WMO,WT2,WSO,WN,WNA,WKO,WTO,WSI,WRA,WNA,WI,WYO,WMR
    DB  WED
;
M11F;  男の子Ｄ　ケンケン（ダンジョン１クリア後）
    DB  WE,WT,WQE,XX,WO,WI,WRA,WTA,WTI,WHA,WT2,WI,WTU,WKA,WRA,XX
    DB  WKO,WNO,WSI,WMA,WNI,WSU,WN,WDE,WRU,WKA,WT,WTE,WTN,WTN,WTN,WQE
;
    DB  KG1,WI,WTU,KG2,WT,WTE,WNA,WN,WDA,WRO,WQE,XX,XX,XX,XX,XX
    DB  WSO,WN,WNA,WKO,WTO,WT2,WWA,WKA,WN,WNE,WE,WYA,WMR
    DB  WED
;
M120;　風見鶏の男の子　その１
    DB   KMA,KRI,KN,WHA,XX,WI,WTU,WMO
    DB   WSU,WNA,WHA,WMA,WHE,WI,WT,WTE
    DB   WHI,WTO,WRI,WDE,XX,WU,WMI,WWO
    DB   WMI,WTE,WRU,WN,WDA,WMR,XX,XX
;
    DB   WNA,WN,WDE,WKA,WNA,WTN,WTN,WO
    DB   WI,WRA,WKO,WDO,WMO,WDA,WKA,WRA
    DB   WWA,WKA,WN,WNA,WI,WYA,WMR,XX
    DB  WED
M121;　男の子　その２
    DB   XX,KHI,KUY,WB_,WBC,KHI,KUY,WB_
    DB   WBC,KHI,KUY,WB_,WBC,XX,XX,XX
    DB   KNE,KE,KNE,KE,XX,WHU,WTA,WRI,WDE
    DB   WDO,WKO,WI,WKU,WNO,WQE,XX
;
    DB   WO,WI,WRA,XX,WKO,WDO,WMO,WDA,WKA
    DB   WRA,WT2,WWA,WKA,WN,WNA,WI
    DB   WKO,WTO,WNI,WSI,WTO,WKU,WYO,WMR
    DB  WED
;
M122;男の子　夢のほこらについて
   DB   XX,KNE,KE,XX,KNE,KE,XX,WNI
   DB   WI,WTI,WYA,WN,WBC,XX,XX,XX
   DB   WSO,WKO,WNO,XX,KYU,KME,WNO,WHO
   DB   WKO,WRA,XX,WNA,WN,WDA,WKE,WDO
;
   DB   WNA,WKA,WNI,MK2,MK2,MK2,WGA,XX
   DB   WA,WRU,WN,WDA,WKE,WDO,KSA,SSA
   DB   XX,XX,WTN,WTN,WTN,XX,WTN,WTN
   DB   WTN,XX,WTN,WTN,WTN,XX,XX,XX
;
   DB   WO,WI,WRA,WKO,WDO,WMO,WDA,WKA
   DB   WRA,XX,WKO,WRE,WI,WZI,WOY,WU
   DB   WI,WWA,WNA,WI,WKO,WTO,WNI,WSU
   DB   WRU,WYO,WMR,XX,XX,XX,XX,XX
   DB    WED

M123;マリンを置いてきて帰ってきたとき
   DB   WA,WRE,WT,WQE,XX,KMA,KRI,KN,WTI
   DB   WAY,WN,XX,WI,WNA,WI,WNE
   DB   WTN,WTN,WTN,XX,WDO,WU,WSI,WTA,WN
   DB   WDA,WRO,WQE,XX,XX,XX,XX
   DB   WED
;
;+----------------------------------------------+
;|	これは、スゴイおおものだ！　　　	|
;|	ちょうどいい！　しゃしんやさん、	|
;|	わしらを　１まいとってくれ！さあ	|
;|	名名名名名も　ポーズをとるのだ！	|
;+----------------------------------------------+
M124	;写真屋を釣ったおやじ
	DB	WKO,WRE,WHA,WT2,KSU,KGO,KI ,WO ,WO ,WMO,WNO,WDA,WBC,XX ,XX ,XX 
	DB	WTI,WOY,WU ,WDO,WI ,WI ,WBC,XX ,WSI,WAY,WSI,WN ,WYA,WSA,WN ,WT2
	DB	WWA,WSI,WRA,WWO,XX ,W1 ,WMA,WI ,WTO,WT ,WTE,WKU,WRE,WBC,WSA,WA 
	DB	NM ,NM ,NM ,NM ,NM ,WMO,XX ,KPO,WB_,KZU,WWO,WTO,WRU,WNO,WDA,WBC
	DB	WED
;
;+----------------------------------------------+
;|	また、おおものがつれそうだと、　	|
;|	プロのカンが、つげている。終		|
;+----------------------------------------------+
M125	;写真８：釣りおやじの船にのった（ぶらじゃのあと）
	DB	WMA,WTA,WT2,WO ,WO ,WMO,WNO,WGA,WTU,WRE,WSO,WU ,WDA,WTO,WT2,XX 
	DB	KPU,KRO,WNO,KKA,KN ,WGA,WT2,WTU,WGE,WTE,WI ,WRU,WMR,WED
;
;+----------------------------------------------+
;|	イイことおしえてやるから　　　　	|
;|	オレのこと、ダレにもヒミツだゼ！	|
;|	トロンボかいがんの　ドウクツに　	|
;|	いってみな！　　　　　　　　　　	|
;|	オレとおなじく、みとおしレンズが	|
;|	ないと　みえないヤツが　いるゼ！	|
;+----------------------------------------------+
M126	;写真後のゾーラ（繰り返し）
	DB	KI ,KI ,WKO,WTO,WO ,WSI,WE ,WTE,WYA,WRU,WKA,WRA,XX ,XX ,XX ,XX 
	DB	KO ,KRE,WNO,WKO,WTO,WT2,KDA,KRE,WNI,WMO,KHI,KMI,KTU,WDA,KZE,WBC
	DB	KTO,KRO,KN ,KBO,WKA,WI ,WGA,WN ,WNO,XX ,KDO,KU ,KKU,KTU,WNI,XX 
	DB	WI ,WT ,WTE,WMI,WNA,WBC,XX ,XX ,XX ,XX ,XX ,XX ,XX ,XX ,XX ,XX 
	DB	KO ,KRE,WTO,WO ,WNA,WZI,WKU,WT2,WMI,WTO,WO ,WSI,KRE,KN ,KZU,WGA
	DB	WNA,WI ,WTO,XX ,WMI,WE ,WNA,WI ,KYA,KTU,WGA,XX ,WI ,WRU,KZE,WBC
	DB	WED

;************************
;*ヨッシー交換　わらしべ*
;************************
M127;　Ｍ１２Ｂ　いいえの時
    DB    KA,KRA,WT2,WZA,WN,WNE,WN,WDA
    DB    WNE,KE,WTN,WTN,WTN
    DB    WED
;
M128;　Ｍ１２Ｂ　はいの時
    DB    WMA,WA,WT2,WA,WRI,WGA,WTO,WU
    DB    WBC,WYA,WSA,WSI,WI,WNE,WE,WMR
    DB    WSO,WU,WDA,WT2,WKA,WWA,WRI,WNI
    DB    WKO,WRE,WWO,XX,WA,WGE,WYO,WU
    DB    WED
;
M129;　リボンをもらった
    DB    IT1,XX,WTO,KRI,KBO,KN,XX,IT2
    DB    XX,WWO,WKO,WU,WKA,WN,WSI,WTA
    DB    WKO,WRE,WMO,WT2,WKO,WU,WKA,WN
    DB    WDE,WKI,WRU,WKA,WMO,WTN,WTN,WQE
    DB    WED
;
;+----------------------------------------------+
;|	おんなじかおが、よっつもあると		|
;|	あたしでも、まよっちゃうよ。		|
;|	ところで、このこが、ヨッシーの		|
;|	にんぎょうを、ほしがってねー。		|
;|	むらの　ゲームやに　あるんだけど	|
;|	むずかしくて、とれないんだよ。終	|
;+----------------------------------------------+
;(CGB)M12A	;  子沢山母さん ママーシャ
;(CGB)    DB   WO,WN,WNA,WZI,WKA,WO,WGA,WT2
;(CGB)    DB   WYO,WT,WTU,WMO,WA,WRU,WTO,XX
;(CGB)    DB   WA,WTA,WSI,WDE,WMO,WT2,WMA,WYO
;(CGB)    DB   WT,WTI,WAY,WU,WYO,WMR,XX,XX
;(CGB);
;(CGB)    DB   WTO,WKO,WRO,WDE,WT2,WKO,WNO,WKO
;(CGB)    DB   WGA,WT2,KYO,KT,KSI,WB_,WNO,XX
;(CGB)    DB   WNI,WN,WGI,WOY,WU,WWO,WT2,WHO
;(CGB)    DB   WSI,WGA,WT,WTE,WNE,WB_,WMR,XX
;(CGB);
;(CGB)    DB   WKO,WMA,WT,WTA,WMO,WN,WDA,WYO
;(CGB)    DB   WMR
;(CGB)    DB   WED

M12A	;子沢山母さんママーシャ（改）
	DB	WO,WN,WNA,WZI,WKA,WO,WGA,WT2,WYO,WT,WTU,WMO,WA,WRU,WTO,XX
	DB	WA,WTA,WSI,WDE,WMO,WT2,WMA,WYO,WT,WTI,WAY,WU,WYO,WMR,XX,XX
	DB	WTO,WKO,WRO,WDE,WT2,WKO,WNO,WKO,WGA,WT2,KYO,KT,KSI,WB_,WNO,XX
	DB	WNI,WN,WGI,WOY,WU,WWO,WT2,WHO,WSI,WGA,WT,WTE,WNE,WB_,WMR,XX
	DB	WMU,WRA,WNO,XX,KGE,WB_,KMU,WYA,WNI,XX,WA,WRU,WN,WDA,WKE,WDO
	DB	WMU,WZU,WKA,WSI,WKU,WTE,WT2,WTO,WRE,WNA,WI,WN,WDA,WYO,WMR,WED
;
M12B; ヨッシー人形を持っているとき
;
    DB   KA,KRA,WT2,WSO,WNO,XX,IT1,XX
    DB   WWO,WKO,WNO,WKO,WNI,XX,XX,XX
    DB   KPU,KRE,KZE,KN,KTO,WSI,WTE,WKU
    DB   WRE,WRU,WNO,WKA,WI,WQE,XX,XX
;
    DB  XX,XX,XX,XX,WI,WI,WYO
    DB  XX,XX,WYA,WDA,WYO,WB_,WN
    DB   WE2
;
M12C;　リボンと交換した後
;
    DB   WO,WN,WNA,WZI,WKA,WO,WGA,WT2
    DB   WYO,WT,WTU,WMO,WA,WRU,WTO,XX
    DB   WA,WTA,WSI,WDE,WMO,WT2,WMA,WYO,WT
    DB   WTI,WAY,WU,WYO,WMR
    DB   WED
;

;****************
;*リチャード追加*
;****************
M12D;
    DB  KA,KT,WBC,XX,KKO,KRA,KKO,KRA 
    DB  XX,WDA,WME,WDE,WSI,WOY,WB_,WMR
    DB  KWA,KN,KWA,KN,WNA,WN,WKA,XX
    DB  WTU,WRE,WTE,WKI,WTI,WAY,WMR,XX
;
    DB  KBO,KKA,SSA,WT2,WSO,WU,WI,WU
    DB  KYA,KBA,KN,WNA,WDO,WU,WBU,WTU
    DB  WSU,WKI,WNI,WNA,WRE,WNA
    DB  WI,WN,WDA,WYO,WNA,WB_,WMR,XX,XX,XX
;
    DB   KSO,KI,KTU,WNO,WI,WNA,WI,WTO
    DB   WKI,WNI,WT2,WMA,WTA,WA,WO,WU
    DB   WZI,WAY,WT2,WSA,WYO,WNA,WRA,WB_
    DB   WMR
    DB  WED
;
;+----------------------------------------------+
;|	なるほど、あのユーレイさんが　　	|
;|	どうなったか　きになるんだね。　	|
;|	名名名名名のおかげで、きっと　　	|
;|	ユーレイさんも　しあわせだよ！　	|
;|	しゃしんを、とってあげるから　　　	|
;|	ニッコリわらってね！			|
;+----------------------------------------------+
M12E	;写真11：ユーレイの墓の巻
	DB	WNA,WRU,WHO,WDO,WT2,WA ,WNO,KYU,WB_,KRE,KI ,WSA,WN ,WGA,XX ,XX 
	DB	WDO,WU ,WNA,WT ,WTA,WKA,XX ,WKI,WNI,WNA,WRU,WN ,WDA,WNE,WMR,XX 
	DB	NM ,NM ,NM ,NM ,NM ,WNO,WO ,WKA,WGE,WDE,WT2,WKI,WT ,WTO,XX ,XX 
	DB	KYU,WB_,KRE,KI ,WSA,WN ,WMO,XX ,WSI,WA ,WWA,WSE,WDA,WYO,WBC,XX 
	DB	WSI,WAY,WSI,WN ,WWO,WT2,WTO,WT ,WTE,WA ,WGE,WRU,WKA,WRA,XX ,XX 
	DB	KNI,KT ,KKO,KRI,WWA,WRA,WT ,WTE,WNE,WBC,XX ,XX ,XX ,XX ,XX ,XX 
	DB	WED
;**************************
;*ワンワンのイベント　夫人*
;**************************
M12F;　マダム　ニャンニャン ＃２　クリア後
;
    DB   KHO,WB_,KHO,KT,KHO,KT,KHO,KT
    DB   XX,KWA,KN,KWA,KN,WNO,WKO,WTO
    DB   WTO,WT,WTE,WMO,WT2,WKA,WN,WSI
    DB   WAY,WSI,WTE,WRU,WZA,WMA,WSU,WMR
;
    DB   WHO,WN,WTO,WT2,WSI,WN,WSE,WTU
    DB   WNA,WBO,WU,WYA,WZA,WMA,WSU,WWA
    DB   WO,WRE,WI,WHA,WT2,WKO,WRE,WZA
    DB   WMA,WSU,WMR,XX,XX,XX,XX,XX
;
    DB  XX,XX,XX,XX,WBU,WTI,WYU,WT,WBC,WBC,XX,XX,XX,XX,XX,XX
    DB  XX,XX,XX,XX,XX,XX,XX,XX,XX,XX,XX,XX,XX,XX,XX,XX    
;
    DB  WTN,WTN,WTN,KMA,KDA,KMU,KNI,KAY,KN,KNI,KAY,KN,WKA,WRA,XX,XX
    DB  WO,WRE,WI,WWO,XX,WMO,WRA,WT,WTA,WTN,WTN,WTN,XX,XX,XX,XX
;
    DB   WTN,WTN,WTN,XX,WTN,WTN,WTN,XX
    DB   WTN,WTN,WTN,XX,WTN,WTN,WTN,XX
    DB   WTN,WTN,WTN,XX,KRA,WT2,KRA,KT
    DB   KKI,WB_,WBC
    DB   WED
;
;+----------------------------------------------+
;|	ホーホッホッ　うちのワンワンは、	|
;|	けなみがじまんざますのよ　ホッ		|
;+----------------------------------------------+
M130;  ワンワン主人　マダム　ニャンニャン  
    DB   KHO,WB_,KHO,KT,KHO,KT,XX
    DB   WU,WTI,WNO,KWA,KN,KWA,KN,WHA,WT2
    DB   WKE,WNA,WMI,WGA,WZI,WMA,WN
    DB   WZA,WMA,WSU,WNO,WYO,XX,KHO,KT
    DB   WED
;
M131;　ワンワン迷子編
    DB   WTA,WI,WHE,WN,WZA,WN,WSU,XX
    DB   WTA,WB_,WI,WHE,WN,WZA,WN,WSU
    DB   WU,WTI,WNO,KWA,KN,KWA,KN,WGA
    DB   WT2,KMO,KT,XX,KMO,KT,XX,XX
;
    DB   KMO,KRI,KBU,KRI,KN,WNI,WT2
    DB   WSA,WRA,WWA,WRE,WTA,WZA,WMA,WSU,WBC
    DB   WO,WO,WT2,WDA,WRE,WKA,KWA,KN,KWA,KN,WWO
    DB   WTA,WSU,WKE,WTE,WB_
;
    DB   WED
;
M132;　＃２クリア前
    DB   KMA,SSA,WT2,WYO,WB_,WKU,WU,WTI
    DB   WNO,KWA,KN,KWA,KN,WTU,WRE,WTE
    DB   WKI,WTE,WKU,WDA,WSA,WT,WTA,WZA,WMA,WSU
    DB   WBC,WU,WRE,WSI,WI,WWA
;
    DB   WA,WB_,WRA,WBC,XX,WTU,WI,WDE
    DB   WNI,XX,WO,WSA,WN,WPO,WMA,WDE
    DB   WSI,WTE,WI,WTA,WDA,WKE,WRU,WN
    DB   WZA,WMA,WSU,WKA,WA,WTN,WTN,WTN
;
    DB   WTA,WA,WSU,WKA,WRU,WZA,WMA,WSU,WWA,WA,WMR
    DB   XX,XX,XX,XX,XX
    DB   WSO,WRE,WZI,WAY,WT2,WO,WNE,WGA,WI
    DB   WSU,WRU,WZA,WMA,WSU,WT,WBC
    DB   WED

;
;****************
;*ライトさん文通*
;****************
M133;  変なおじさん　ライト
    DB   WBO,WKU,WHA,WT2,KBU,KN,KTU,KU,WGA
    DB   WSI,WUY,WMI,WNO,XX,XX,XX
    DB   KNA,KI,KSU,WNA,WO,WZI,WSA,WN
    DB   XX,KRA,KI,KTO,WDE,WSU,WBC,XX
;
    DB   WDE,WMO,WT2,WI,WTI,WDO,WMO,WHE
    DB   WN,WZI,WGA,XX,WKA,WE,WT,WTE
    DB   WKO,WNA,WI,WNO,WDE,WSU,WMR,XX
    DB   WKA,WNA,WSI,WI,WNA,WB_,WMR
    DB   WED
;
M134; へんじをもっているとき
    DB   WNA,WT,WT2,WNA,WN,WTO,WBU,WN
    DB   WTU,WU,WNO,WO,WHE,WN,WZI,WWO
    DB   WMO,WT,WTE,WKI,WTE,WKU,WRE,WTA
    DB   WN,WDE,WSU,WKA,WBC,WBC,XX,XX
;
    DB   WU,WT,WT2,WU,WRE,WSI,WB_,WB_
    DB   WB_,WB_,WT,WBC,WBC,XX,XX,XX
    DB   WA,WT,WBC,WSI,WKA,WMO,KBU,KRO
    DB   KMA,KI,KDO,WTU,WKI,WDA,WB_,WBC
    DB   WED
;
M135;  ほうきと交換
    DB   KU,WB_,WB_,KN,XX,WNA,WN,WTO
    DB   WU,WTU,WKU,WSI,WI,WBC,XX,XX
    DB   WTN,WTN,WTN,WA,WT,WT2,WO,WRE
    DB   WI,WWO,WSI,WNA,WKU,WTE,WHA,WBC
;
    DB   WDE,WMO,WT2,KHO,KU,KKI,WKU,WRA
    DB   WI,WSI,WKA,WNA,WI,WN,WDE,WSU
    DB   WKO,WRE,WDE,WT2,WYO,WRO,WSI,WI
    DB   WDE,WSU,WKA,WQE,XX,XX,XX,XX
;
    DB   XX,XX,XX,XX,WI,WI,WYO,XX,XX,WI,WYA,WDA
    DB   WE2
;
M136;  M135 はいの時
    DB   WO,WRE,WI,WNI,KHO,KU,KKI,XX
    DB   IT9,XX,WWO,WMO,WRA,WT,WTA,WBC
    DB   WSI,WKA,WSI,WT2,WA,WNO,KBU,KRO
    DB   KMA,KI,KDO,WHA,WTN,WTN,WTN,WTN
    DB   WED
;
M137;  M135 いいえのとき
    DB   WO,WNE,WGA,WI,WDE,WSU,WBC,XX,KHO
    DB   KU,KKI,XX,IT9,XX,WWO,XX
    DB   WU,WKE,WTO,WT,WTE,WKU,WDA,WSA
    DB   WI,WBC,XX,XX,XX,XX,XX,XX
;
    DB   XX,XX,XX,XX,WWA,WKA,WT,WTA,XX,WDA,WB_,WME
    DB   WE2
;
M138;  交換終わったあと
    DB   WI,WYA,WA,WT2,WBU,WN,WTU,WU
    DB   WT,WTE,XX,WHO,WN,WTO,WB_,WNI
    DB   WI,WI,WMO,WN,WDE,WSU,WYO,WBC
    DB   WED
;
M139;  部屋を出ると
    DB   WYA,WA,WT2,WI,WMA,KKU,KRI,KSU
    DB   KTI,WB_,KNU,WNI,XX,XX,XX,XX
    DB   WTE,WGA,WMI,WWO,XX,WKA,WI,WTE,WRU
    DB   WTO,WKO,WRO,WDE,WSU,WYO,WMR
    DB   WED

;*******************
;*  リチャード王子 *
;*******************
;
M13A ;　元城主　リチャード
    DB  WYA,WA,WT2,KBO,KKA,SSA,WKO,WU
    DB  WMI,WE,WTE,WMO,KO,KSI,KRO,WNI
    DB  WSU,WN,WDE,WTA,WKO,WTO,WMO,WT2
    DB  WA,WRU,WN,WDA,WKE,WDO,WSA,WMR
;
    DB  WKE,WRA,WI,WNI,KMA,KMO,KNO,WGA
    DB  WT2,WTO,WRI,WTU,WI,WTA,WN,WDE
    DB  WNI,WGE,WTE,WKI,WTI,WAY,WT,WTA
    DB  WN,WDA,WYO,WNA,WA,WTN,WTN,WTN
;
    DB  WTO,WKO,WRO,WDE,WKI,WMI,WHA,WT2
    DB  KU,KKU,KKU,WSO,WU,WGE,WN,WNO
    DB  WI,WRI,WGU,WTI,WNO,KKA,KGI,WGA
    DB  WHO,WSI,WI,WN,WDE,WSI,WOY,WQE
;
    DB  KBO,KKA,SSA,WSI,WRA,WNA,WI,WWA
    DB  WKE,WZI,WAY,WNA,WI,WN,WDA,WGA
    DB  WTN,WTN,WTN,XX,WNE,WE,WT2
    DB  WTO,WRI,WHI,WKI,WSI,WYO,WU,WYO,WMR
;
    DB  WNI,WGE,WDA,WSU,WTO,WKI,XX,KO
    DB  KSI,KRO,WNI,WO,WI,WTE,WKI,WTA
    DB  KG1,WO,WU,WGO,WN,WNO,WHA,WT
    DB  WPA,KG2,WWO,XX,XX,XX,XX,XX
;
    DB  KMA,KMO,KNO,WKA,WRA,XX,WTO,WRI,WKA
    DB  WE,WSI,WTE,WHO,WSI,WI,WBC
    DB  XX,XX,XX,XX,WWA,WKA,WT,WTA,XX,WI,WYA,WDA
    DB  WE2
;
;+----------------------------------------------+
;|	いやあ、かんげきだなあ！　　　　	|
;|	じつは「はっぱ」は、５まいなんだ	|
;|	あっ、もどってくるまえにスコップ	|
;|	かっといてねー。じゃ、よろしくー	|
;+----------------------------------------------+
M13B;　１３Ａ　はいの時
	DB	WI,WYA,WA,WT2,WKA,WN,WGE,WKI,WDA,WNA,WA,WBC,XX,XX,XX,XX
	DB	WZI,WTU,WHA,KG1,WHA,WT,WPA,KG2,WHA,WT2,W5,WMA,WI,WNA,WN,WDA
	DB	WA,WT,WT2,WMO,WDO,WT,WTE,WKU,WRU,WMA,WE,WNI,KSU,KKO,KT,KPU
	DB	WKA,WT,WTO,WI,WTE,WNE,WB_,WMR,WZI,WAY,WT2,WYO,WRO,WSI,WKU,WB_
	DB	WED
;;;KK;;;    DB  WI,WYA,WA,WT2,WKA,WN,WGE,WKI
;;;KK;;;    DB  WDA,WNA,WA,WBC,XX,XX,XX,XX
;;;KK;;;    DB  WZI,WTU,WHA,KG1,WHA,WT,WPA,KG2
;;;KK;;;    DB  WHA,WT2,W5,WMA,WI,WNA,WN,WDA
;;;KK;;;;
;;;KK;;;    DB  WA,WT,WT2,KSU,KKO,KT,KPU,WKA
;;;KK;;;    DB  WT,WTO,WI,WTE,WNE,WB_,WMR,XX
;;;KK;;;    DB  WZI,WAY,WT2,WYO,WRO,WSI,WKU,WB_,WMR
;;;KK;;;    DB  WED
;
M13C;　１３Ａ　いいえの時
    DB  KBO,KKA,SSA,WKI,WMI,WNO,WYO,WU,WNA
    DB  XX,WI,WKU,WZI,WNA,WSI,WHA
    DB  WKA,WO,WMO,WMI,WTA,WKU,WNA,WI,WYO,WBC
    DB  XX,KSI,KT,KSI,KT
    DB  WED
;
M13D;　５つ揃えたとき
    DB  KU,WB_,WB_,WB_,KN,XX,KTO,KRE
    DB  KBI,KA,WB_,KN,WBC,XX,XX,XX
    DB  WHA,WT,WPA,WGA,WSU,WBE,WTE,WT2
    DB  WSO,WRO,WT,WTA,WN,WDA,WNE,WBC
;
    DB  WSA,WA,WT2,WKO,WNO,WKI,WBA,WKO
    DB  WWO,WU,WGO,WKA,WSI,WTA,WMA,WE
    DB  KBO,KKU,WKA,WRA,WNO,XX,WO,WRE,WI
    DB  WNO,WSI,WRU,WSI,WDA,WYO,WBC
    DB  WED
;
M13E;　５つ揃えた後　繰り返し
    DB  WKI,WMI,WNO,WO,WKA,WGE,WDE,XX
    DB  WHA,WT,WPA,WMO,WMO,WDO,WT,WTE
    DB  KBO,KKA,SSA,XX,WSI,WA,WWA,WSE,WDA,WNA,WA,WB_,WBC
    DB  WED
;
M13F;　はっぱを１枚ー４枚までもっているとき
    DB  KBO,KN,KZI,KUY,WB_,KRU,XX,NM
    DB  NM,NM,NM,NM,XX,XX,XX,XX
    DB  WA,WI,WTO,XX,WSE,WI,WGI,WTO,WT2
    DB  WSO,WRE,WKA,WRA,WTN,WTN,WTN
;
    DB  KBO,KKU,WNO,WSI,WA,WWA,WSE,WNO
    DB  WTA,WME,WNI,WT2,WHA,WT,WPA,WWO
    DB  WSU,WBE,WTE,WT2,WSO,WRO,WE,WTE
    DB  WKU,WRE,WTA,WMA,WE,WBC

    DB  WED
;
;**************************
;*ウルリラじいさんのヒント*
;**************************
;+----------------------------------------------+
;|	うむ・・　・・・　・・・　・・・	|
;|	なんというか・・・　・・・　　　	|
;|	デンワ・・・　デンワしてくれ・・	|
;|	・・・　・・・　そとからな・・・	|
;|	・・・・・・・・・・・・・・・・	|
;|	どうやら、うるりらじいさんは、		|
;|	とても、むくちなひとのようです。	|
;+----------------------------------------------+
M140; 　ウルリラじいさん
    DB   WU,WMU,WTN,WTN,XX,WTN,WTN,WTN
    DB   XX,WTN,WTN,WTN,XX,WTN,WTN,WTN
    DB   WNA,WN,WTO,WI,WU,WKA,WTN,WTN
    DB   WTN,XX,WTN,WTN,WTN,XX,XX,XX
;
    DB   KDE,KN,KWA,WTN,WTN,WTN,XX,KDE
    DB   KN,KWA,WSI,WTE,WKU,WRE,WTN,WTN
    DB   WTN,WTN,WTN,XX,WTN,WTN,WTN,XX
    DB   WSO,WTO,WKA,WRA,WNA,WTN,WTN,WTN
;
    DB   WTN,WTN,WTN,WTN,WTN,WTN,WTN,WTN
    DB   WTN,WTN,WTN,WTN,WTN,WTN,WTN,WTN
    DB   WDO,WU,WYA,WRA,WT2,WU,WRU,WRI
    DB   WRA,WZI,WI,WSA,WN,WHA,WT2,XX
;
    DB   WTO,WTE,WMO,WT2,WMU,WKU,WTI,WNA
    DB   WHI,WTO,WNO,WYO,WU,WDE,WSU,WMR
    DB   WED
;
;+----------------------------------------------+
;|	「チャッ　ジーコ　ジーコ　ジーコ	|
;|	・・・　プルルル　プルル　ガチャ	|
;|	ハロー！　うるりらじいさんじゃ		|
;|	しまのことなら　わしにおまかせ！	|
;|	まよったら、わたしにデンワしてく	|
;|	ださい、どぞよろしく・・ガチャ」	|
;+----------------------------------------------+
M141; 　私に電話してください編
;
    DB   KG1,KTI,KAY,KT,XX,KZI,WB_,KKO
    DB   XX,KZI,WB_,KKO,XX,KZI,WB_,KKO
    DB   WTN,WTN,WTN,XX,KPU,KRU,KRU,KRU
    DB   XX,KPU,KRU,KRU,XX,KGA,KTI,KAY
;
    DB   KHA,KRO,WB_,WBC,XX,WU,WRU,WRI,WRA
    DB   WZI,WI,WSA,WN,WZI,WAY,XX
    DB   WSI,WMA,WNO,WKO,WTO,WNA,WRA,XX
    DB   WWA,WSI,WNI,WO,WMA,WKA,WSE,WBC
;
    DB   WMA,WYO,WT,WTA,WRA,WT2,WWA,WTA
    DB   WSI,WNI,KDE,KN,KWA,WSI,WTE,WKU
    DB   WDA,WSA,WI,WT2,WDO,WZO,WYO,WRO
    DB   WSI,WKU,WTN,WTN,KGA,KTI,KAY,KG2
    DB   WED
;
M142; 　モリブリンの住処編
    DB   KG1,KTI,KAY,KT,XX,KZI,WB_,KKO
    DB   XX,KZI,WB_,KKO,XX,KZI,WB_,KKO
    DB   WTN,WTN,WTN,XX,KPU,KRU,KRU,KRU
    DB   XX,KPU,KRU,KRU,XX,KGA,KTI,KAY
;
    DB   KHA,KRO,WB_,WBC,XX,WU,WRU,WRI,WRA
    DB   WZI,WI,WSA,WN,WZI,WAY,XX
    DB   WHU,WMU,WT2,KMO,KRI,KBU,KRI,KN
    DB   WNO,WHO,WTO,WN,WDO,WGA,XX,XX
;
    DB   WMO,WRI,WNI,WSU,WN,WDE,WI,WRU
    DB   WN,WZI,WAY,WGA,WT2,WTA,WMA,WNI
    DB   KTA,KRU,KTA,KRU,WKO,WU,WTI,WNO
    DB   WDO,WU,WKU,WTU,WNI,WMO,WO,WRU
;
    DB   WTN,WTN,WTN,XX,WNA,WNI,WKA,WNO
    DB   WYA,WKU,WNI,WTA,WTU,WKA,WNA,WQE
    DB   WU,WRU,WRI,WRA,WB_,WB_,WB_,XX
    DB   KGA,KTI,KAY,KT,KG2
    DB   WED
;
M143;   ワンワンの好物編
    DB   KG1,KTI,KAY,KT,XX,KZI,WB_,KKO
    DB   XX,KZI,WB_,KKO,XX,KZI,WB_,KKO
    DB   WTN,WTN,WTN,XX,KPU,KRU,KRU,KRU
    DB   XX,KPU,KRU,KRU,XX,KGA,KTI,KAY
;
    DB   KHA,KRO,WB_,WBC,XX,WU,WRU,WRI,WRA
    DB   WZI,WI,WSA,WN,WZI,WAY,XX
    DB   KGO,KPO,KN,KGA,WNU,WMA,WNI
    DB   XX,WSA,WI,WTO,WRU,KHA,KNA,WTN,WTN
;
    DB   WKO,WRE,WGA,WT2,KWA,KN,KWA,KN
    DB   WNO,XX,WDA,WI,WKO,WU,WBU,WTU
    DB   WTO,WT2,WI,WU,WHA,WNA,WSI,WZI
    DB   WAY,WMR,XX,XX,XX,XX,XX,XX
;
    DB   WSA,WN,WPO,WSU,WRU,WNA,WRA,WT2
    DB   WYO,WT,WTE,WMI,WTI,WAY,WA,XX
    DB   WDO,WU,WDA,WI,WQE,XX,WU
    DB   WRU,WRI,WRA,WB_,XX,KGA,KTI,KAY,KG2
    DB   WED
 ;
M144;　リチャードのヒント編
    DB   KG1,KTI,KAY,KT,XX,KZI,WB_,KKO
    DB   XX,KZI,WB_,KKO,XX,KZI,WB_,KKO
    DB   WTN,WTN,WTN,XX,KPU,KRU,KRU,KRU
    DB   XX,KPU,KRU,KRU,XX,KGA,KTI,KAY
;
    DB   WWA,WSI,WZI,WAY,WT2,WU,WRU,WRI
    DB   WRA,WZI,WI,WSA,WN,WZI,WAY,WBC
    DB   WKO,WNO,WSI,WMA,WNO,WMI,WN,WNA
    DB   WNI,WHA,WT2,WA,WT,WTA,WKA,WQE
;
    DB   WMU,WRA,WNO,KNA,KN,KTO,KU,XX
    DB   KA,KNA,KBO,KKO,WBA,WTA,WKE,WNI
    DB   KRI,KTI,KAY,WB_,KDO,WTO,WI,WU
    DB   WO,WTO,WKO,WGA,WO,WRU,WTN,WTN
;
    DB   WI,WTI,WDO,WT2,WA,WT,WTE,WMI
    DB   WTE,WHA,WDO,WU,WKA,WNE,WQE,XX
    DB   WDE,WHA,WT2,WU,WRU,WRI,WRA,WB_
    DB   XX,KGA,KTI,KAY,KT,WBC,XX,KG2
    DB   WED
;
M145;　ばななのもらい方
    DB   KG1,KTI,KAY,KT,XX,KZI,WB_,KKO
    DB   XX,KZI,WB_,KKO,XX,KZI,WB_,KKO
    DB   WTN,WTN,WTN,XX,KPU,KRU,KRU,KRU
    DB   XX,KPU,KRU,KRU,XX,KGA,KTI,KAY
;
    DB   WWA,WSI,WZI,WAY,WT2,WU,WRU,WRI
    DB   WRA,WZI,WI,WSA,WN,WZI,WAY,WT
    DB   WTO,WKO,WRO,WDE,KBA,KNA,KNA,WHA
    DB   WT2,WI,WRA,WN,WKA,WNO,WU,WQE
;
    DB   WMO,WU,WI,WTI,WDO,WT2,WMU,WRA
    DB   WNO,WHI,WTO,WTO,WHA,WNA,WSI,WTE
    DB   WMI,WRU,WTO,WI,WI,WZI,WAY,WRO,WU
    DB   WTN,WTN,WTN,XX,XX,XX,XX,XX
;
    DB   WU,WRU,WRI,WRA,WB_,XX,XX,XX
    DB   KGA,KTI,KAY,WBC,XX,KG2
    DB   WED
;
;+----------------------------------------------+
;|	「チャッ　ジーコ　ジーコ　ジーコ	|
;|	・・・　プルルル　プルル　ガチャ	|
;|	ハロー！　うるりらじいさんじゃ		|
;|	むらには　としょかんがある・・・	|
;|	どうしていいか　わからんときは		|
;|	そこで　いろいろしらべなさい		|
;|	では・・・　うるりらー　ガチャ」	|
;+----------------------------------------------+
M146;　図書館編
    DB   KG1,KTI,KAY,KT,XX,KZI,WB_,KKO
    DB   XX,KZI,WB_,KKO,XX,KZI,WB_,KKO
    DB   WTN,WTN,WTN,XX,KPU,KRU,KRU,KRU
    DB   XX,KPU,KRU,KRU,XX,KGA,KTI,KAY

    DB   KHA,KRO,WB_,WBC,XX,WU,WRU,WRI
    DB   WRA,WZI,WI,WSA,WN,WZI,WAY,XX
    DB   WMU,WRA,WNI,WHA,XX,WTO,WSI,WOY
    DB   WKA,WN,WGA,WA,WRU,WTN,WTN,WTN
;
    DB   WDO,WU,WSI,WTE,WI,WI,WKA,XX
    DB   WWA,WKA,WRA,WN,WTO,WKI,WHA,XX
    DB   WSO,WKO,WDE,XX,WI,WRO,WI,WRO
    DB   WSI,WRA,WBE,WNA,WSA,WI,XX,XX
;
    DB   WDE,WHA,WTN,WTN,WTN,XX,WU,WRU
    DB   WRI,WRA,WB_,XX,KGA,KTI,KAY,KG2
    DB   WED
;
;(CGB)M147;　黄金の葉っぱ編
;(CGB)    DB   KG1,KTI,KAY,KT,XX,KZI,WB_,KKO
;(CGB)    DB   XX,KZI,WB_,KKO,XX,KZI,WB_,KKO
;(CGB)    DB   WTN,WTN,WTN,XX,KPU,KRU,KRU,KRU
;(CGB)    DB   XX,KPU,KRU,KRU,XX,KGA,KTI,KAY
;(CGB);
;(CGB)    DB   WU,WRU,WRI,WRA,WZI,WAY,WMR,XX
;(CGB)    DB   KHU,KMU,WT2,KG1,WHA,WT,WPA,KG2
;(CGB)    DB   WGA,WT2,W5,WMA,WI,WSO,WRO,WWA
;(CGB)    DB   WN,WTO,WNA,WTN,WTN,WTN,WQE,XX
;(CGB);
;(CGB)    DB   WYO,WKU,WWA,WKA,WRA,WN,WGA,XX
;(CGB)    DB   WTN,WTN,WTN,KKA,KRA,KSU,WTN,WTN
;(CGB)    DB   WO,WSI,WRO,WNO,KKA,KRA,KSU,WGA,XX
;(CGB)    DB   WA,WYA,WSI,WI,WNO,WU,XX
;(CGB);
;(CGB)    DB   WI,WRO,WI,WRO,WYA,WT,WTE,WMI
;(CGB)    DB   WTE,WHA,XX,WDO,WU,WKA,WNA,WQE
;(CGB)    DB   WU,WRU,WRI,WRA,WB_,WB_,XX,XX
;(CGB)    DB   KGA,KTI,KAY,KT,KG2
;(CGB)    DB   WED
;
;+----------------------------------------------+
;|	「チャッ　ジーコ　ジーコ　ジーコ	|
;|	・・・　プルルル　プルル　ガチャ	|
;|	うるりらじゃ。　フム、「はっぱ」	|
;|	が、５まいそろわんとな・・・？　	|
;|	よくわからんが　・・・カラス・・	|
;|	おしろのカラスが　あやしいのう　	|
;|	すこしおどかしてみてはどうかな？	|
;|	うるりらーー　　ガチャッ」終		|
;+----------------------------------------------+
M147;　黄金の葉っぱ編
	DB	KG1,KTI,KAY,KT ,XX ,KZI,WB_,KKO,XX ,KZI,WB_,KKO,XX ,KZI,WB_,KKO
	DB	WTN,WTN,WTN,XX ,KPU,KRU,KRU,KRU,XX ,KPU,KRU,KRU,XX ,KGA,KTI,KAY
	DB	WU ,WRU,WRI,WRA,WZI,WAY,WMR,XX ,KHU,KMU,WT2,KG1,WHA,WT ,WPA,KG2
	DB	WGA,WT2,W5 ,WMA,WI ,WSO,WRO,WWA,WN ,WTO,WNA,WTN,WTN,WTN,WQE,XX 
	DB	WYO,WKU,WWA,WKA,WRA,WN ,WGA,XX ,WTN,WTN,WTN,KKA,KRA,KSU,WTN,WTN
	DB	WO ,WSI,WRO,WNO,KKA,KRA,KSU,WGA,XX ,WA ,WYA,WSI,WI ,WNO,WU ,XX 
	DB	WSU,WKO,WSI,WO ,WDO,WKA,WSI,WTE,WMI,WTE,WHA,WDO,WU ,WKA,WNA,WQE
	DB	WU ,WRU,WRI,WRA,WB_,WB_,XX ,XX ,KGA,KTI,KAY,KT ,KG2,WED
;
M148;　スコップ買いなさい編
    DB   KG1,KTI,KAY,KT,XX,KZI,WB_,KKO
    DB   XX,KZI,WB_,KKO,XX,KZI,WB_,KKO
    DB   WTN,WTN,WTN,XX,KPU,KRU,KRU,KRU
    DB   XX,KPU,KRU,KRU,XX,KGA,KTI,KAY
;
    DB   WU,WRU,WRI,WRA,WZI,WAY,WMR,XX
    DB   KSU,KKO,KT,KPU,WTN,WTN,WTN,XX
    DB   KSU,KKO,KT,KPU,WHA,WT2,WKA,WT
    DB   WTA,WKA,WNA,WQE,XX,XX,XX,XX
;
    DB   WA,WTI,WKO,WTI,XX,WHO,WRU,WTO
    DB   XX,WNA,WNI,WKA,WA,WRU,XX,XX
    DB   WKA,WMO,WSI,WRE,WN,WZO,WMR,XX
    DB   XX,KGA,KTI,KAY,KT,KG2
    DB   WED
;
M149;　ウクク草原編
    DB   KG1,KTI,KAY,KT,XX,KZI,WB_,KKO
    DB   XX,KZI,WB_,KKO,XX,KZI,WB_,KKO
    DB   WTN,WTN,WTN,XX,KPU,KRU,KRU,KRU
    DB   XX,KPU,KRU,KRU,XX,KGA,KTI,KAY
;
    DB   WU,WRU,WRI,WRA,WZI,WAY,WMR,XX
    DB   KU,KKU,KKU,WSO,WU,WGE,WN,WNO
    DB   KKA,KGI,WNO,WA,WNA,WGU,WRA,WNI
    DB   XX,WI,WKU,WNI,KKA,KGI,WRU,WBC
;
    DB  WTN,WTN,WTN,WBE,WTU,WNI,XX,KSI,KAY
    DB  KRE,WZI,WAY,WNA,WI,WZO,XX
    DB  WTN,WTN,WTN,WTN,WTN,WTN,WTN,WTN
    DB  KGA,KTI,KAY,KT,WBC,KG2
    DB   WED
;
M14A;　ヤーナ砂漠へ行け編
    DB   KG1,KTI,KAY,KT,XX,KZI,WB_,KKO
    DB   XX,KZI,WB_,KKO,XX,KZI,WB_,KKO
    DB   WTN,WTN,WTN,XX,KPU,KRU,KRU,KRU
    DB   XX,KPU,KRU,KRU,XX,KGA,KTI,KAY
;
    DB   WU,WRU,WRI,WRA,WZI,WAY,WMR,XX
    DB   WSI,WMA,WNO,WT2,XX,XX,XX,XX
    DB   KNA,KN,KTO,KU,WNI,WA,WRU,XX
    DB   KYA,WB_,KNA,WSA,WBA,WKU,WNI,XX
;
    DB   KG1,KA,KN,KGU,KRA,WB_,WNO,KKA
    DB   KGI,KG2,WTO,WI,WU,WMO,WNO,WGA
    DB   WA,WRU,WSO,WU,WZI,WAY,WYO,WMR
    DB   XX,XX,XX,XX,XX,XX,XX,XX
;
    DB   WWA,WSI,WNO,KHI,KN,KTO,WMO,XX
    DB   WDA,WI,WBU,KRO,KKO,KTU,WNI,XX
    DB   WNA,WT,WTE,WKI,WTA,WNO,WB_,XX
    DB   KGA,KTI,KAY,KT,KG2
    DB   WED
;
M14B;幽霊くんのとりかた
    DB   KG1,KTI,KAY,KT,XX,KZI,WB_,KKO
    DB   XX,KZI,WB_,KKO,XX,KZI,WB_,KKO
    DB   WTN,WTN,WTN,XX,KPU,KRU,KRU,KRU
    DB   XX,KPU,KRU,KRU,XX,KGA,KTI,KAY
;
    DB   WU,WRU,WRI,WRA,WZI,WAY,WMR,XX
    DB   WHE,WN,WNA,XX,KO,KBA,KKE,WNI
    DB   KTO,KRI,WTU,WKA,WRE,WTA,WTO,WNA
    DB   WQE,XX,WSO,WU,WZI,WAY,WNO,WU
;
    DB   WSO,WI,WTU,WNO,XX,WI,WKI,WTA,WI
    DB   WTO,WKO,WRO,WNI,XX,XX,XX
    DB   WTU,WRE,WTE,WI,WT,WTE,XX,WYA,WT 
    DB   WTA,WRA,WDO,WU,WKA,WNA,WQE
;
    DB   XX,XX,WU,WRU,WRI,WRA,WB_,XX,XX,KGA
    DB   KTI,KAY,KT,WBC,KG2
    DB   WED
;
M14C;なまずの大口
    DB   KG1,KTI,KAY,KT,XX,KZI,WB_,KKO
    DB   XX,KZI,WB_,KKO,XX,KZI,WB_,KKO
    DB   WTN,WTN,WTN,XX,KPU,KRU,KRU,KRU
    DB   XX,KPU,KRU,KRU,XX,KGA,KTI,KAY
;
    DB   WU,WRU,WRI,WRA,WZI,WAY,WMR
    DB   WI,WRI,WE,WDE,XX,KNA,KMA,KZU,WGA
    DB   WO,WO,WGU,WTI,WWO,WT2,WA,WKE
    DB   WTE,WO,WRU,WNO,WU,WTN,WTN,WTN
;
    DB   WO,WYO,WI,WDE,XX,WI,WT,WTE
    DB   WMI,WTE,WHA,WDO,WU,WKA,WNA
    DB   XX,XX,XX,WU,WRU,WRI,WRA,WB_
    DB   XX,XX,KGA,KTI,KAY,KT,WBC,KG2
    DB   WED
;
M14D;顔の神殿の位置
    DB   KG1,KTI,KAY,KT,XX,KZI,WB_,KKO
    DB   XX,KZI,WB_,KKO,XX,KZI,WB_,KKO
    DB   WTN,WTN,WTN,XX,KPU,KRU,KRU,KRU
    DB   XX,KPU,KRU,KRU,XX,KGA,KTI,KAY
;
    DB   WU,WRU,WRI,WRA,WZI,WAY,WMR,KKA
    DB   KO,WNO,WSI,WN,WDE,WN,WNI,WHA
    DB   WI,WT,WTE,WMI,WTA,WKA,WI,WQE
    DB   XX,XX,XX,XX,XX,XX,XX,XX
; 
    DB   WDO,WU,WBU,WTU,WMU,WRA,WNO,XX
    DB   KKI,KTA,WNI,WA,WRU,XX,XX,XX
    DB   WTO,WTE,WMO,WTA,WME,WNI,WNA,WRU
    DB   XX,KI,KSE,KKI,WZI,WAY,WYO,XX

    DB   XX,XX,WU,WRU,WRI,WRA,WB_,XX,XX
    DB   XX,KGA,KTI,KAY,KT,WBC,KG2 
    DB   WED
;
M14E;空飛ぶニワトリについて
    DB   KG1,KTI,KAY,KT,XX,KZI,WB_,KKO
    DB   XX,KZI,WB_,KKO,XX,KZI,WB_,KKO
    DB   WTN,WTN,WTN,XX,KPU,KRU,KRU,KRU
    DB   XX,KPU,KRU,KRU,XX,KGA,KTI,KAY
;
    DB   WU,WRU,WRI,WRA,WZI,WAY,WMR,XX
    DB   KME,WB_,KBE,WNO,WMU,WRA,WNO,XX
    DB   WSO,WRA,WTO,WBU,KNI,KWA,KTO,KRI
    DB   WWO,WSI,WT,WTE,WRU,WKA,WNA,WQE
;
    DB   WMU,WKA,WSI,WHA,XX,WA,WRE,WWO
    DB   WKA,WTU,WI,WDE,XX,XX,XX,XX
    DB   KPA,KTA,KPA,KTA,WSO,WRA,WWO,XX
    DB   WTO,WN,WDA,WMO,WN,WZI,WAY,WMR
; 
    DB   WI,WMA,WMO,XX,WKA,WZA,WMI,WDO
    DB   WRI,WNO,WSI,WTA,WNI,XX,XX,XX
    DB   WU,WMA,WT,WTE,WO,WRU,WSO,WU
    DB   WZI,WAY,WYO,WMR,XX,XX,XX,XX
;
    DB   WYA,WKU,WNI,XX,WTA,WT,WTA,WKA,WNA
    DB   WQE,XX,XX,XX,XX,XX,XX
    DB   XX,XX,WU,WRU,WRI,WRA,WB_,XX
    DB   XX,XX,KGA,KTI,KAY,KT,KG2,XX
    DB   WED
;
M14F;カメイワの倒し方
    DB   KG1,KTI,KAY,KT,XX,KZI,WB_,KKO
    DB   XX,KZI,WB_,KKO,XX,KZI,WB_,KKO
    DB   WTN,WTN,WTN,XX,KPU,KRU,KRU,KRU
    DB   XX,KPU,KRU,KRU,XX,KGA,KTI,KAY
;
    DB   WU,WRU,WRI,WRA,WZI,WAY,WMR,XX,KKA
    DB   KME,KI,KWA,WNO,XX,XX,XX
    DB   WA,WTA,WMA,WGA,KZI,KAY,KMA,WKA
    DB   WNO,WU,WQE,XX,XX,XX,XX,XX
;
    DB   WI,WNO,WTI,WWO,WHU,WKI,WKO,WME
    DB   WBA,WT2,WU,WGO,WKU,WKA,WMO,XX
    DB   WSI,WRE,WN,WZO,WMR,XX,XX
    DB   WHO,WN,WTO,WT2,WHO,WN,WTO,XX,XX
;
    DB   WYA,WKU,WNI,WTA,WT,WTA,WKA,WNA 
    DB   WQE,XX,XX,XX,XX,XX,XX,XX
    DB   XX,WU,WRU,WRI,WRA,WB_,XX,XX
    DB   KGA,KTI,KAY,KT,KG2,XX,XX,XX
    DB   WED
;
;*************************
;*ダンジョン  クリアデモ *
;*************************

M150;　クリアＤＥＭＯ　ＬＥＶＥＬ１
     DB   WTN,WTN,WTN,WNU,WMA,WTN,WTN,WTN
     DB   KHA,KNA,WSA,WKU,XX,WNU,WMA,WNI
     DB   WA,WRA,WTA,WNA,XX,WMI,WTI,WGA
     DB   XX,WTU,WDU,WI,WTE,WI,WRU,XX
     DB   WED
;
M151;  クリアＤＥＭＯ　ＬＥＶＥＬ２
     DB   WTN,WTN,WTN,WSO,WU,WGE,WN,WTN
     DB   WTN,WTN,WSO,WU,WGE,WN,XX,XX
     DB   WSO,WU,WGE,WN,WGA,WT2,WMA,WT
     DB   WTE,WI,WRU,WTN,WTN,WTN,XX
     DB   WED
;
M152;  クリアＤＥＭＯ　ＬＥＶＥＬ３
     DB   WTN,WTN,WTN,KTA,KKI,WTN,WTN,WTN
     DB   KTA,KKI,WNO,WNA,WKA,WNI,WTN,WTN
     DB   WKA,WKU,WSA,WRE,WTE,WI,WRU,WTN
     DB   WTN,WTN,WTN,WTN,XX,XX,XX,XX
     DB   WED
;
M153;　　クリアＤＥＭＯ　ＬＥＶＥＬ４
     DB   WTN,WTN,WTN,WI,WRI,WE,WTN,WTN
     DB   WI,WRI,WE,WNO,WNA,WKA,WNI,WMO
     DB   WO,WMA,WE,WNO,WYU,WKU,WMI,WTI
     DB   WHA,XX,WTU,WDU,WI,WTE,WRU,XX
     DB   WED
;
M154;　　クリアＤＥＭＯ　ＬＥＶＥＬ５
     DB   WTN,WTN,WTN,WSI,WN,WDE,WN,WTN
     DB   WTN,WTN,WSI,WN,WDE,WN,WNI,XX
     DB   WSI,WMA,WNO,KHI,KMI,KTU,WGA,WA
     DB   WRU,WTN,WTN,WTN,WTN,WTN,WTN,WTN
     DB   WED
;
M155;　　クリアＤＥＭＯ　ＬＥＶＥＬ６
     DB   WTN,WTN,WTN,WYA,WMA,WTN,WTN,WTN
     DB   WTN,WTN,WYA,WMA,WNO,WU,WE,WDE
     DB   WO,WMA,WE,WWO,XX,WYO,WN,WDE,WRU
     DB   WTN,WTN,WTN,WTN,WTN,WTN,WTN
     DB   WED
;
M156;　　クリアＤＥＭＯ　ＬＥＶＥＬ７
     DB   WTN,WTN,WTN,KHU,KE,WTN,WTN
     DB   WTN,KHU,KE,WNO,WNE,WGA,XX,XX,XX
     DB   WO,WMA,WE,WWO,XX,WMI,WTI,WBI
     DB   WKU,WTN,WTN,WTN,WTN,WTN,XX,XX
     DB   WED
;
M157;　　クリアＤＥＭＯ　ＬＥＶＥＬ８
     DB   WTN,WTN,WTN,WTO,WKI,WHA,XX
     DB   WMI,WTI,WTA,WTN,WTN,WTN,XX,XX,XX
     DB   WSE,WI,WNA,WRU,KTA,KMA,KGO,WGA
     DB   XX,WYO,WN,WDE,WI,WRU,WTN,WTN
     DB   WED
;
M158;　　Not used

;****************************
;*ヤッホーばあさん　わらしべ*
;****************************
M159;    M15C いいえのとき
    DB   KO,KYA,KO,KYA,XX,WZI,WAY,WA
    DB   WT2,WA,WN,WTA,WGA,XX,XX,XX
    DB   WKO,WNO,WSI,WMA,XX,WSO,WU,WZI
    DB   WSI,WTE,WKU,WRE,WRU,WNO,WKA,WI
    DB   WED
;
;+----------------------------------------------+
;|	イヤッホー！　あたしゃげんきだよ	|
;|	あんたもげんきでやっとるかー！		|
;+----------------------------------------------+
M15A;  やっほーばあさん
    DB   KI,KYA,KT,KHO,WB_,WBC,XX
    DB   WA,WTA,WSI,WAY,WGE,WN,WKI,WDA,WYO
    DB   WA,WN,WTA,WMO,WGE,WN,WKI,WDE
    DB   WYA,WT,WTO,WRU,WKA,WB_,WBC
    DB   WED
;
M15B;  やっほーばあさん ＃５　クリア後
    DB   KI,KYA,KT,KHO,WB_,WBC,XX
    DB   WA,WTA,WSI,WAY,WGE,WN,WKI,WDA,WYO
    DB   WDE,WMO,WT2,WTI,WOY,WI,WTO,WHA
    DB   WRI,WKI,WRI,WSU,WGI,WTA,WKA,WNE
;
    DB   WTO,WU,WTO,WU,XX,WHO,WU,WKI
    DB   WMO,KBO,KRO,KBO,KRO,WNI,XX,XX
    DB   WKO,WWA,WRE,WTE,WNA,WKU,WNA,WT
    DB   WTI,WAY,WT,WTA,WYO,WBC
    DB   WED
;
M15C;  ほうきとこうかん
    DB   KI,KYA,KT,KHO,WB_,WBC,XX,XX
    DB   KI,KYA,KT,KHO,WB_,WBC,XX,XX
    DB   WA,WTA,WRA,WSI,WI,XX,KHO,KU
    DB   KKI,WKA,WI,WQE,XX,XX,XX,XX
;
    DB   WWA,WRU,WI,WNE,XX,WA,WTA,WSI
    DB   WNI,WKU,WRE,WRU,WN,WDA,WRO,WQE
    DB   XX,XX,XX,XX,WSO,WDA,WYO,XX,XX,WYA,WDA,WYO
    DB   WE2
;
M15D;  15C はいの時
    DB   WSO,WRE,WZI,WAY,WO,WRE,WI,WNI
    DB   WT2,WKA,WWA,WDE,WHI,WRO,WT,WTA
    DB   WTU,WRI,WBA,WRI,WDE,WMO,XX,WA
    DB   WGE,WYO,WU,WKA,WNE,WE,WMR
    DB   WED
;
M15E;   交換した
    DB   IT9,XX,WTO,WTU,WRI,WBA,WRI,XX
    DB   ITA,XX,WWO,WKO,WU,WKA,WN,XX
    DB   WSI,WTA,WBC,WKO,WN,WDO,WHA,WT2
    DB   WNA,WN,WNI,WNA,WRU,WDA,WRO,WU
    DB   WED
;
M15F;   交換したあと
    DB   KI,KYA,KT,KHO,WB_,WBC,WBC,XX,WO
    DB   KNI,KUY,WB_,WNO,KHO,KU,KKI
    DB   WNA,WKA,WNA,WKA,WI,WI,WYO,WBC
    DB   WED
;
;*****************************
;*さる　キッキッ　わらしべ 　*
;*****************************
M160;  さる　キッキッ　（ワンワンを連れているとき）
;
    DB   KNA,KN,KDA,WB_,KT,WBC,WKO,WNO
    DB   KWA,KN,KWA,KN,WYA,WRO,WU,WBC
    DB   WSI,WOY,WU,WBU,WDA,WBC,WBC,XX
    DB   KU,KKI,KKI,KT,KKI,WB_,KT,WBC
    DB   WED
;
M161;  さる　キッキッ　（ばななを持っていないとき M165 いいえのとき）
;
    DB   KTI,KKI,WB_,KTA,XX,KTI,KKI,WB_,KTA
    DB   XX,KSA,KRU,KKI,KT,KKI,XX
    DB   WO,WNA,WKA,WGA,WSU,WI,WTA,WYO
    DB   XX,KSA,KRU,KKI,KT,KKI,WBC
    DB   WED
;
M162;  さる　キッキッ　（M165 はいのとき）
;
    DB   IT4,XX,WDA,XX,IT4,XX,WDA,WT2
    DB   KU,KT,KKI,KT,KKI,KT,WBC,XX
    DB   WMI,WN,WNA,WA,WTU,WMA,WRE,WT2
    DB   WO,WRE,WI,WWO,WSU,WRU,WZO,WB_
    DB   WED
;
M163;  さる　キッキッ　（さるが去るとき）
;
    DB   WO,KSA,KRU,WNO,WHA,WSI,WNO,XX
    DB   WDE,WKI,WA,WGA,WRI,WBC,XX,XX
    DB   WDE,WHA,WT2,WSA,WRA,WBA,WDA,WBC
    DB   XX,KU,KKI,KKI,KT,KKI,WB_,WBC
    DB   WED
;
M164;  さるの棒を拾った
;
    DB   WO,KSA,KRU,WGA,WNO,WKO,WSI,WTE
    DB   WI,WT,WTA,WT2,WBO,WU,WKI,WRE
    DB   WWO,WHI,WRO,WT,WTA,WTN,WTN,WTN
    DB   WMO,WRA,WT,WTO,WKO,WU,WMR
    DB   WED
;
M165;  ばななをもっているとき
    DB   IT4,XX,WDA,XX,IT4,XX,WDA,WT2
    DB   KU,KT,KKI,KT,KKI,KT,WBC,XX
    DB   WSO,WI,WTU,WWO,XX,KO,KI,KRA,WNI
    DB   WKU,WRE,WNA,WI,WKA,WQE,XX
;
    DB   XX,XX,XX,XX,WU,WN,XX,XX,XX,WI,WYA,WDA
    DB   WE2

;
;******************************
;*　クリスチーヌ　わらしべ　　*
;******************************
M166;  クリスチーヌ　山羊ﾞ
    DB   WO,WTO,WME,WNO,WHE,WYA,WWO,WT2
    DB   WO,WTO,WZU,WRE,WRU,WTO,WKI,WNO
    DB   KE,KTI,KKE,KT,KTO,WT2,WGO,WZO
    DB   WN,WZI,WNA,WI,WNO,WQE,XX,XX
;
    DB   WO,WHA,WNA,WKU,WRA,WI,WT2,WI
    DB   WTA,WDA,WKE,WRE,WBA,XX,XX,XX
    DB   WO,WHA,WNA,WSI,WSU,WRU,WKI,WNI
    DB   WMO,WNA,WRU,WN,WDE,WSU,WKE,WDO
;
    DB   WSO,WU,WT2,KHA,KI,KBI,KSU,KKA
    DB   KSU,WGA,WSU,WKI,WDE,WSU,WNO,XX
    DB   WWA,WTA,WKU,WSI,WNO,WBA,WA,WI
    DB   WTN,WTN,WTN,XX,WTN,WTN,WTN
    DB   WED
;
M167;  ハイビスカスをもっているとき
    DB   WA,WRA,WT2,WWA,WTA,WKU,WSI,WNI
    DB   WSO,WNO,XX,IT8,XX,WWO,XX,XX
    DB   WKU,WDA,WSA,WRU,WNO,WQE,XX,WDO,WU
    DB   WMO,WA,WRI,WGA,WTO,WU,WMR
;
    DB   WA,WNO,WB_,WTN,WTN,WTN,WTO,WT
    DB   WTE,WMO,WSI,WN,WSI,WTE,WKI,WNA
    DB   WA,WNA,WTA,WNI,XX,WO,WNE,WGA
    DB   WI,WGA,WGO,WZA,WI,WMA,WSU,WNO
;
    DB   WKI,WI,WTE,WKU,WDA,WSA,WI,WMA
    DB   WSU,WQE,XX,XX,XX,XX,XX,XX
    DB   XX,XX,XX,XX,WE,WE,XX,XX,XX,WI,WI,WE
    DB   WE2
;
M168;  Ｍ１６７　はいの時
    DB   WMO,WRI,WNO,WHA,WZU,WRE,WNO,XX
    DB   KRA,KI,KTO,WSA,WMA,WNI,XX,XX
    DB   WTE,WGA,WMI,WWO,XX,WTO,WDO,WKE
    DB   WTE,WI,WTA,WDA,WKI,WTA,WI,WNO
;
    DB   WYO,WRO,WSI,WKU,XX,WO,WNE,WGA,WI
    DB   WI,WTA,WSI,WMA,WSU,WWA,WBC
    DB   WED
;
M169;  Ｍ１６７　いいえの時
    DB   WTN,WTN,WTN,WSO,WU,WNA,WNO,WMR
    DB   WWA,WTA,WKU,WSI,WA,WNA,WTA,WHA
    DB   WI,WI,WKA,WTA,WDA,WTO,XX,WO
    DB   WMO,WI,WMA,WSI,WTA,WNO,WNI,WMR
    DB	 WED
;
M16A;  手紙を貰った
    DB   IT8,XX,WGA,KYA,KGI,WNO,WTE,WGA
    DB   WMI,XX,ITE,XX,WNI,WNA,WT,WTA
    DB   WTN,WTN,WTN,WTN,WNA,WN,WKA,WTN
    DB   WTN,WTN,WSU,WGO,WI,WZO,WBC
    DB   WED
;
M16B;  交換したあと
    DB   WWA,WTA,WKU,WSI,WT2,WO,WI,WSI
    DB   WSO,WU,WNA,XX,WKA,WMI,WDA,WTO
    DB   WTA,WTO,WE,KRA,KI,KTO,WSA,WN
    DB   WNO,XX,WO,WTE,WGA,WMI,WDE,WMO
;
    DB   WTA,WBE,WTE,WSI,WMA,WU,WKO,WTO
    DB   WGA,WT2,WA,WRI,WMA,WSU,WNO,XX
    DB   WTN,WTN,WTN,WO,WHA,WZU,WKA,WSI
    DB   WI,WTN,WTN,WTN,WTN,WTN,WTN,WTN
    DB   WED
;
;******************
;*イベントその他１*
;******************
M16C;　ワンワン助けた時
    DB   KWA,KN,KWA,KN,WWO,XX,WKI,WUY
    DB   WU,WSI,WUY,WTU,WSI,WTA,WBC,XX
    DB   WTI,WKA,WKU,WDE,WMI,WRU,WTO,WT2
    DB   WYA,WT,WPA,WRI,KKO,KWA,KI,WMR
    DB   WED
;
M16D;　骨鶏にこな掛けた時
    DB   WNA,WN,WTO,WT2,KNI,KWA,KTO,KRI
    DB   WGA,WYO,WMI,WGA,WE,WT,WTA,WBC
    DB   WNA,WN,WDA,WKA,WT2,WYO,WRO,WKO
    DB   WN,WDE,WRU,WMI,WTA,WI,WDA,WMR
    DB   WED
;
;+----------------------------------------------+
;|	「チャッ　ジーコ　ジーコ　ジーコ	|
;|	・・・　プルルル　プルル　ガチャ	|
;|	・・・うるりらじゃ・・・フゥ　　	|
;|	・・・ばあさんが、どうぶつむらに	|
;|	いっておるので　さみしいんじゃ。	|
;|	そうじがおわったら、はやくかえる	|
;|	ように　つたえてくれんかのう・・	|
;|	うるりらー・・・　　ガチャッ！」	|
;+----------------------------------------------+
M16E	;うるりらヒント（ばあさんが動物村にいるとき）
	DB	KG1,KTI,KAY,KT,XX,KZI,WB_,KKO,XX,KZI,WB_,KKO,XX,KZI,WB_,KKO
	DB	WTN,WTN,WTN,XX,KPU,KRU,KRU,KRU,XX,KPU,KRU,KRU,XX,KGA,KTI,KAY
	DB	WTN,WTN,WTN,WU,WRU,WRI,WRA,WZI,WAY,WTN,WTN,WTN,KHU,SSU,XX,XX
	DB	WTN,WTN,WTN,WBA,WA,WSA,WN,WGA,WT2,WDO,WU,WBU,WTU,WMU,WRA,WNI
	DB	WI,WT,WTE,WO,WRU,WNO,WDE,XX,WSA,WMI,WSI,WI,WN,WZI,WAY,WMR
	DB	WSO,WU,WZI,WGA,WO,WWA,WT,WTA,WRA,WT2,WHA,WYA,WKU,WKA,WE,WRU
	DB	WYO,WU,WNI,XX,WTU,WTA,WE,WTE,WKU,WRE,WN,WKA,WNO,WU,WTN,WTN
	DB	WU,WRU,WRI,WRA,WB_,WTN,WTN,WTN,XX,XX,KGA,KTI,KAY,KT,WBC,KG2
	DB	WED
;
;+----------------------------------------------+
;|	ヤッホーばあさんがいない？！　　	|
;|	　・・・　・・・　ナゾはとけた！	|
;|	うるりらじいさんの　な　にかけて	|
;|	どうぶつむらにいるよ！　　　　　	|
;|	・・・・　ほんとは、おいら　　　	|
;|	でんわで　きいたんだけどね・・・	|
;+----------------------------------------------+
M16F	;町の子供（ばあさんが動物村にいるとき）
	DB	KYA,KT,KHO,WB_,WBA,WA,WSA,WN,WGA,WI,WNA,WI,WQE,WBC,XX,XX
	DB	XX,WTN,WTN,WTN,XX,WTN,WTN,WTN,XX,KNA,KZO,WHA,WTO,WKE,WTA,WBC
	DB	WU,WRU,WRI,WRA,WZI,WI,WSA,WN,WNO,XX,WNA,XX,WNI,WKA,WKE,WTE
	DB	WDO,WU,WBU,WTU,WMU,WRA,WNI,WI,WRU,WYO,WBC,XX,XX,XX,XX,XX
	DB	WTN,WTN,WTN,WTN,XX,WHO,WN,WTO,WHA,WT2,WO,WI,WRA,XX,XX,XX
	DB	WDE,WN,WWA,WDE,XX,WKI,WI,WTA,WN,WDA,WKE,WDO,WNE,WTN,WTN,WTN
	DB	WED
;
;********************
;*パパール　わらしべ*
;********************
M170;  子沢山父さん　パパール (ぱいんをもってるとき)
    DB   WI,WYA,WA,WT2,WYA,WKU,WSO,WKU
    DB   WDO,WU,WRI,XX,KPA,KPA,WB_,KRU
    DB   WSO,WU,WNA,WN,WSI,WTA,WT,KSU
    DB   WYO,WT,WBC,XX,XX,XX,XX,XX
;
    DB   KHA,KRA,WGA,WHE,WT,WTE,WT2,WU
    DB   WGO,WKE,WNA,WI,WT,KSU,WYO,WMR
    DB   WNA,WN,WKA,WT2,WKU,WI,WMO,WN
    DB   WKU,WRE,WNA,WI,WT,KSU,WKA,WQE
    DB   XX,XX,XX,XX,WI,WI,WTO,WMO,XX,KDA,KME,WBC
    DB   WE2
;
M171;　Ｍ１７０　いいえの時
    DB   WA,WN,WTA,WT2,WTU,WME,WTA,WI
    DB   WHI,WTO,WT,KSU,WNE,WTN,WTN,WTN
    DB   WED
;
M172;　Ｍ１７０　はいの時
    DB   WKO,WRI,WAY,WT2,WU,WMA,WSO,WU
    DB   WNA,XX,IT7,XX,WDA,WBC,WBC,XX
    DB   WSO,WRE,WZI,WAY,XX,IT7,XX,WWO
    DB   WI,WT,WTA,WDA,WKI,WYA,WB_,KSU
    DB   WED
;
M173;　ぱぱーるの御礼
    DB   WO,WT,WT2,WSO,WU,WDA,WBC,XX
    DB   WO,WRE,WI,WTO,WI,WT,WTI,WAY
    DB   WNA,WN,WNA,WN,KSU,WKE,WDO,WTN
    DB   WTN,WTN,WTN,WTN,WTN,WTN,WTN,WTN
;
    DB   WKO,WI,WTU,XX,IT8,XX,WWO,WSA
    DB   WSI,WA,WGE,WRU,WT,KSU,WYO,WMR
    DB   KHA,KI,KBI,KSU,KKA,KSU,WT
    DB   WTE,KHA,KNA,WDE,WSA,WA,WMR,XX
    DB   WED
;
M174;　ハイビスカス　をもらった
    DB   IT7,XX,WTO,KHA,KI,KBI,KSU,KKA
    DB   KSU,XX,IT8,XX,WWO,XX,XX,XX
    DB   WKO,WU,WKA,WN,WSI,WTA,WBC
    DB   WED
;
M175;　食べ続ける　ぱぱーる
    DB   WU,WMA,WI,WT,KSU,WYO,XX,WU
    DB   WMA,WI,WT,KSU,WYO,WBC,XX,XX
    DB   WTI,WKA,WRA,WDE,WRU,WT,WSU,WYO,WBC
    DB   WED
;
M176;　家に帰った　ぱぱーる
    DB   WI,WYA,WA,WT2,WKO,WNO,WA,WI
    DB   WDA,WHA,XX,XX,XX,XX,XX,XX
    DB   WDO,WU,WMO,WT,KSU,WMR
    DB   WED
;
M177;  子沢山父さん　パパール (ぱいんをもって無いとき)
    DB   WI,WYA,WA,WT2,WYA,WKU,WSO,WKU
    DB   WDO,WU,WRI,XX,KPA,KPA,WB_,KRU
    DB   WSO,WU,WNA,WN,WSI,WTA,WT,KSU
    DB   WYO,WT,WBC,XX,XX,XX,XX,XX
;
    DB   KHA,KRA,WGA,WHE,WT,WTE,WT2,WU
    DB   WGO,WKE,WNA,WI,WT,KSU,WYO,WMR
    DB   WNA,WN,WKA,WT2,WKU,WI,WMO,WN
    DB   WKU,WRE,WNA,WI,WT,KSU,WKA,WQE
    DB   XX,XX,XX,XX,WA,WGE,WNA,WI,XX,KDA,KME,WBC
    DB   WE2
;
;******************
;*イベントその他２*
;******************
M178;　ヤッホーばあさん　（ワンワン居ない時）
    DB   WA,WN,WTA,WT2,WO,WMU,WKA,WI
    DB   WSA,WN,XX,WSO,WRI,WAY,WA,XX
    DB   WTA,WI,WHE,WN,WDA,WT,WTA,WN
    DB   WDA,WYO,WB_,WBC,XX,XX,XX,XX
;
    DB   WA,WTA,WSI,WAY,WT2,WO,WSO,WU
    DB   WZI,WKU,WRA,WI,WSI,WKA,XX,XX
    DB   WSI,WTE,WA,WGE,WRA,WRE,WNA,WI
    DB   WKE,WDO,WNE,WE,WTN,WTN,WTN
    DB   WED
;
;+----------------------------------------------+
;|	・・・だれもいない　やかたに・・	|
;|	・・・こえがひびく・・・　　　　	|
;|	「ワタシは　カイがらのやかたに　	|
;|	　やどりしもの・・・　　　　　　	|
;|	　ヤミの　チカラに　いどむものを	|
;|	　まっていた・・・　　　　　　　	|
;|	　・・・しまに　かくされた　　　	|
;|	　ヒミツのカイがらを　あつめよ！	|
;|	　あつめしカイがらをもちて、　　	|
;|	　ゲートを　くぐるが　よい・・・	|
;|	　しかくあるものに　ひかりの　　	|
;|	　チカラもつ　けんをあたえる！」	|
;|	よしっ、たくさん　カイがらを　　	|
;|	あつめて、ゲートをくぐってみよう	|
;+----------------------------------------------+
M179	;貝殻の館説明（最初）
	DB	WTN,WTN,WTN,WDA,WRE,WMO,WI,WNA,WI,XX,WYA,WKA,WTA,WNI,WTN,WTN
	DB	WTN,WTN,WTN,WKO,WE,WGA,WHI,WBI,WKU,WTN,WTN,WTN,XX,XX,XX,XX
	DB	KG1,KWA,KTA,KSI,WHA,XX,KKA,KI,WGA,WRA,WNO,WYA,WKA,WTA,WNI,XX
	DB	XX,WYA,WDO,WRI,WSI,WMO,WNO,WTN,WTN,WTN,XX,XX,XX,XX,XX,XX
	DB	XX,KYA,KMI,WNO,XX,KTI,KKA,KRA,WNI,XX,WI,WDO,WMU,WMO,WNO,WWO
	DB	XX,WMA,WT,WTE,WI,WTA,WTN,WTN,WTN,XX,XX,XX,XX,XX,XX,XX
	DB	XX,WTN,WTN,WTN,WSI,WMA,WNI,XX,WKA,WKU,WSA,WRE,WTA,XX,XX,XX
	DB	XX,KHI,KMI,KTU,WNO,KKA,KI,WGA,WRA,WWO,XX,WA,WTU,WME,WYO,WBC
	DB	XX,WA,WTU,WME,WSI,KKA,KI,WGA,WRA,WWO,WMO,WTI,WTE,WT2,XX,XX
	DB	XX,KGE,WB_,KTO,WWO,XX,WKU,WGU,WRU,WGA,XX,WYO,WI,WTN,WTN,WTN
	DB	XX,WSI,WKA,WKU,WA,WRU,WMO,WNO,WNI,XX,WHI,WKA,WRI,WNO,XX,XX
	DB	XX,KTI,KKA,KRA,WMO,WTU,XX,WKE,WN,WWO,WA,WTA,WE,WRU,WBC,KG2
;
	DB	WYO,WSI,WT,WT2,WTA,WKU,WSA,WN,XX,KKA,KI,WGA,WRA,WWO,XX,XX
	DB	WA,WTU,WME,WTE,WT2,KGE,WB_,KTO,WWO,WKU,WGU,WT,WTE,WMI,WYO,WU
	DB	WED
;
;+----------------------------------------------+
;|	　・・・はんのうが　ない・・・　	|
;|	カイがらが　たりないようだ・・・	|
;+----------------------------------------------+
M17A	;貝殻が足りていないとき
	DB	XX,WTN,WTN,WTN,WHA,WN,WNO,WU,WGA,XX,WNA,WI,WTN,WTN,WTN,XX
	DB	KKA,KI,WGA,WRA,WGA,XX,WTA,WRI,WNA,WI,WYO,WU,WDA,WTN,WTN,WTN
	DB	WED
;
;+----------------------------------------------+
;|	「・・これで・・・ようやく・・・	|
;|	　ワタシの　やくめも　おわった」	|
;+----------------------------------------------+
M17B	;貝殻が20個を越えたとき（剣イベント前）
	DB	KG1,WTN,WTN,WKO,WRE,WDE,WTN,WTN,WTN,WYO,WU,WYA,WKU,WTN,WTN,WTN
	DB	XX,KWA,KTA,KSI,WNO,XX,WYA,WKU,WME,WMO,XX,WO,WWA,WT,WTA,KG2
	DB	WED
;
;+----------------------------------------------+
;|	ねえねえ、タルタルこうちには、　	|
;|	しゃしんやがあるんだって。　　　	|
;|	にいちゃん、しってる？　　　　　	|
;|	わかいひとの、いまのはやりは　　	|
;|	キレイなじぶんを　しゃしんに　　	|
;|	のこすことなんだってさ。　　　　	|
;|	おいら、わかいけど、なんのこと　	|
;|	やら、さっぱりわかんないや。終		|
;+----------------------------------------------+
M17C	;町の子供（モリブリン後）
	DB	WNE,WE,WNE,WE,WT2,KTA,KRU,KTA,KRU,WKO,WU,WTI,WNI,WHA,WT2,XX
	DB	WSI,WAY,WSI,WN,WYA,WGA,WA,WRU,WN,WDA,WT,WTE,WMR,XX,XX,XX
	DB	WNI,WI,WTI,WAY,WN,WT2,WSI,WT,WTE,WRU,WQE,XX,XX,XX,XX,XX
	DB	WWA,WKA,WI,WHI,WTO,WNO,WT2,WI,WMA,WNO,WHA,WYA,WRI,WHA,XX,XX
	DB	KKI,KRE,KI,WNA,WZI,WBU,WN,WWO,XX,WSI,WAY,WSI,WN,WNI,XX,XX
	DB	WNO,WKO,WSU,WKO,WTO,WNA,WN,WDA,WT,WTE,WSA,WMR,XX,XX,XX,XX
	DB	WO,WI,WRA,WT2,WWA,WKA,WI,WKE,WDO,WT2,WNA,WN,WNO,WKO,WTO,XX
	DB	WYA,WRA,WT2,WSA,WT,WPA,WRI,WWA,WKA,WN,WNA,WI,WYA,WMR,WED
;
;+----------------------------------------------+
;|	　　　　　しゃしんや　　　　　		|
;|	　　きねんしゃしん　とります　		|
;+----------------------------------------------+
M17D	;写真屋：地形メッセージ（地図用）追加
	DB	XX ,XX ,XX ,XX ,XX ,WSI,WAY,WSI,WN ,WYA,XX ,XX ,XX ,XX ,XX ,XX 
	DB	XX ,XX ,WKI,WNE,WN ,WSI,WAY,WSI,WN ,XX ,WTO,WRI,WMA,WSU,WED
;
;+----------------------------------------------+
;|	うむ、それでいい。テキのなかにも	|
;|	へんかするやつが　いるかもしれん	|
;|	なくなったら、もりで　キノコを　	|
;|	とってくるがいい。　　　　　　　	|
;|	あたらしく　つくってやろう・・・	|
;+----------------------------------------------+
M17E	;　まほうのおばば（火を灯した時）
	DB	WU,WMU,WT2,WSO,WRE,WDE,WI,WI,WMR,KTE,KKI,WNO,WNA,WKA,WNI,WMO
	DB	WHE,WN,WKA,WSU,WRU,WYA,WTU,WGA,XX,WI,WRU,WKA,WMO,WSI,WRE,WN
	DB	WNA,WKU,WNA,WT,WTA,WRA,WT2,WMO,WRI,WDE,XX,KKI,KNO,KKO,WWO,XX
	DB	WTO,WT,WTE,WKU,WRU,WGA,WI,WI,WMR,XX,XX,XX,XX,XX,XX,XX
	DB	WA,WTA,WRA,WSI,WKU,XX,WTU,WKU,WT,WTE,WYA,WRO,WU,WTN,WTN,WTN
	DB	WED
;
;+----------------------------------------------+
;|	・・・！　　うごけないでごじゃる	|
;|	でも、だいじょうぶでごじゃる。　	|
;|	そんな　なまくらな　けんでは、　	|
;|	このつぼは　こわせないでごじゃる	|
;|	ここの　かべのほうが、　　　　　	|
;|	よっぽど、かたいでごじゃる。終		|
;+----------------------------------------------+
M17F	;　ＬＶ２ボス（壷の突進を剣で止めた時・壁にぶつけられるまで）
	DB	WTN,WTN,WTN,WBC,XX,XX,WU,WGO,WKE,WNA,WI,WDE,WGO,WZI,WAY,WRU
	DB	WDE,WMO,WDA,WI,WZI,WOY,WU,WBU,WDE,WGO,WZI,WAY,WRU,WMR,XX,XX
	DB	WSO,WN,WNA,XX,WNA,WMA,WKU,WRA,WNA,XX,WKE,WN,WDE,WHA,WT2,XX
	DB	WKO,WNO,WTU,WBO,WHA,XX,WKO,WWA,WSE,WNA,WI,WDE,WGO,WZI,WAY,WRU
	DB	WKO,WKO,WNO,XX,WKA,WBE,WNO,WHO,WU,WGA,WT2,XX,XX,XX,XX,XX
	DB	WYO,WT,WPO,WDO,WT2,WKA,WTA,WI,WDE,WGO,WZI,WAY,WRU,WMR
	DB	WED
;
;************************
;*キャンキャン　わらしべ*
;************************
;
;+----------------------------------------------+
;|	わたし、オシャレがだーいすき！		|
;|	ピチピチボディのキャンキャンよ！	|
;|	アーア・・・なんか、カワイイ		|
;|	アクセサリーが、ほしいなあー。		|
;+----------------------------------------------+
M180;　キャンキャン　　その１
    DB   WWA,WTA,WSI,WT2,KO,KSI,KAY,KRE
    DB   WGA,WDA,WB_,WI,WSU,WKI,WBC,XX
    DB   KPI,KTI,KPI,KTI,KBO,KDE,KI,WNO
    DB   KKI,KAY,KN,KKI,KAY,KN,WYO,WBC
;
    DB   KA,WB_,KA,WTN,WTN,WTN,WNA,WN
    DB   WKA,WT2,KKA,KWA,KI,KI,XX,XX
    DB   KA,KKU,KSE,KSA,KRI,WB_,WGA,WT2
    DB   WHO,WSI,WI,WNA,WA,WB_,WMR
    DB   WED
;
M181;　キャンキャン　　その２
;
    DB   WWA,WTA,WSI,WT2,KO,KSI,KAY,KRE
    DB   WGA,WDA,WB_,WI,WSU,WKI,WBC,XX
    DB   KPI,KTI,KPI,KTI,KBO,KDE,KI,WNO
    DB   KKI,KAY,KN,KKI,KAY,KN,WYO,WBC
;
    DB   KI,KYA,WB_,KN,WSO,WNO,XX,IT2
    DB   XX,KME,KTI,KAY,KKA,KWA,KI,KI
    DB   KDO,KT,KGU,KHU,WB_,KDO,WTO,WT2
    DB   WTO,WRI,WKA,WE,WTE,WYO,WNE,WBC
;
    DB  XX,XX,XX,XX,WWA,WKA,WT,WTA,XX,WI,WYA,WDA
    DB  WE2
;
M182;　ドックフードをもらった
    DB   IT2,XX,WTO,KDO,KT,KGU,KHU,WB_
    DB   KDO,XX,IT3,XX,WWO,XX,XX,XX
    DB   WTO,WRI,WKA,WE,WTA,WBC,KBI,WB_
    DB   KHU,WGA,WTA,WT,WPU,WRI,WDA,WBC
    DB   WED
;
M183;　Ｍ１８１　はいの時
    DB   KRA,KT,KKI,WB_,WBC,XX,WA,WRI,WGA
    DB   WTO,WU,WMR,XX,XX,XX,XX
    DB   WZI,WAY,WT,WT2,XX,IT3,XX,WTO
    DB   WKO,WU,WKA,WN,WNE,WT,WBC
    DB   WED
;
M184;　Ｍ１８１　いいえの時
    DB   KE,KT,KE,WB_,WB_,WB_,WB_,WB_
    DB   KT,WBC,WBC,XX,XX,XX,XX,XX
    DB   WSI,WN,WZI,WRA,WN,WNA,WA,WI
    DB   WBC,WMO,WU,KSA,KI,KTE,WB_,WBC
    DB   WED
;
;************************
;*まんぼうの歌をおぼえる*
;************************
M185;　うーーー　まんぼう
    DB   KBO,KKU,WT2,KMA,KN,KBO,KU,WNO
    DB   WKO,WDO,WMO,XX,XX,XX,XX,XX
    DB   WNA,WMA,WE,WHA,WT2,KMA,KN,KBO
    DB   WTA,WME,WGO,WRO,WU,WBC,XX,XX
;
    DB   WA,WN,WTA,KHU,KE,WMO,WT,WTE
    DB   WRU,WQE,XX,XX,XX,XX,XX,XX
    DB   XX,XX,XX,XX,WA,WRU,WYO,XX,XX,WMO,WT,WTE,WNA,WI
    DB   WE2
;
M186;　Ｍ１８５　いいえの時
    DB   WA,WT2,WSO,WU,WTN,WTN,WTN,WTN
    DB   WTN,WTN,WTN,WTN,WTN,WTN,WTN,WTN
    DB   KBU,KKU,XX,KBU,KKU,XX,KBU,KKU
    DB   WED
;
M187;　Ｍ１８５　はいの時
    DB   WZI,WAY,WT2,W1,WKI,WOY,WKU,XX
    DB   WO,WSI,WE,WTE,WA,WGE,WRU,WBC
    DB   WED
;
M188;　まんぼうの曲を覚えた
    DB   KMA,KN,KBO,KU,WNO,KMA,KN,KBO
    DB   WWO,WO,WBO,WE,WTA,WMR,XX,XX
    DB   WMI,WZU,WNO,WSO,WTO,WHE,WDE,WTA
    DB   WRA,WT2,WHU,WI,WTE,WMI,WYO,WU
    DB   WED
;
M189;　交換した後
    DB   KBO,KKU,WT2,KMA,KN,KBO,KU,WNO
    DB   WKO,WDO,WMO,XX,XX,XX,XX,XX
    DB   WNA,WMA,WE,WHA,WT2,KMA,KN,KBO
    DB   WTA,WME,WGO,WRO,WU,WBC,XX,XX
;
    DB   KBO,KKU,WNO,WKI,WOY,WKU,WWO,XX
    DB   WHU,WKE,WBA,XX,XX,XX,XX,XX
    DB   KMA,KN,KBO,KGA,WI,WKE,WHE,WT2
    DB   KWA,WB_,KPU,WDE,WKI,WRU,WYO,WBC
;
    DB   KDA,KN,KZI,KOY,KN,XX,WNO,WNA
    DB   WKA,WDE,WMO,XX,XX,XX,XX,XX
    DB   WHU,WI,WTE,WMI,WTE,WYO,WNE,WMR
    DB   XX,XX,XX,WU,WB_,WT,WBC
    DB   WED
;
M18A;オカリナ持ってないとき
    DB   WA,WT2,XX,WGA,WT,WKI,WNA,WI
    DB   WNO,WTN,WTN,WTN,WSO,WU,WTN,WTN
    DB   KBU,KKU,XX,KBU,KKU,XX,KBU,KKU
    DB   WED
;
;********************
;*山のニワトリ小屋　*
;********************
M18B;　鶏小屋の主人
    DB   WSA,WB_,WI,WKI,WN,WNO,KKO,KKE
    DB   KKO,KT,KKO,WDO,WMO,WHA,XX,XX
    DB   WKO,WN,WZI,WOY,WU,WGA,WT2,WNA
    DB   WT,WTE,WNE,WE,WDA,WYO,WMR,XX
;
    DB   KO,KRA,WGA,WT2,WMU,WKA,WSI,XX
    DB   WKA,WT,WTO,WT,WTA,KYA,KTU,WHA
    DB   KPA,WB_,KTA,KPA,KTA,WSO,WRA,WWO
    DB   XX,WTO,WN,WDA,WDA,WYO,WBC,XX
;
    DB   WI,WYA,WT2,WHO,WN,WTO,XX,WU
    DB   WSO,WZI,WAY,WNE,WE,WDA,WYO,WMR
    DB   WHO,WRE,WT2,KTO,WB_,KTO,WB_,KTO
    DB   WB_,XX,KTO,WB_,KTO,WB_,KT
    DB   WED
;
M18C;　鶏小屋の主人　（鶏を連れている時）
    DB   WA,WN,WRE,WMA,WA,WB_,WT2,WSO
    DB   WNO,KKO,KKE,KKO,KT,KKO,WHA,XX
    DB   WHO,WN,WTO,WNI,WT2,WTO,WN,WDE
    DB   WRU,WDE,WNE,WE,WDA,WKA,WTN,WTN
;
    DB   WI,WT2,WI,WYA,WA,KO,KRA,WNO
    DB   WI,WT,WTA,WTO,WU,WRI,WDA,WBE
    DB   WU,WN,WT2,WSO,WNO,KKO,KT,KKO
    DB   WKA,WTU,WI,WDE,WMI,WRU,WDA,WYO
    DB   WED
;
M18D;　鶏小屋の主人　（鶏が小屋に戻ってから）
    DB   WI,WYA,WT2,WYA,WT,WPA,WSI,XX
    DB   WSO,WRA,WTO,WBU,KKO,KT,KKO,WGA
    DB   WI,WTI,WBA,WN,WI,WI,WDA,WYO,WBC
    DB   WED
;
;+----------------------------------------------+
;|	　　　　そらとぶニワトリ　　　　	|
;|	　　　　　ここにねむる　　　　		|
;+----------------------------------------------+
M18E;　風見鶏の台座
    DB   XX,XX,XX,XX,WSO,WRA,WTO,WBU
    DB   KNI,KWA,KTO,KRI,XX,XX,XX,XX
    DB   XX,XX,XX,XX,XX,WKO,WKO,WNI
    DB   WNE,WMU,WRU,XX,XX,XX,XX
    DB   WED
;
;+----------------------------------------------+
;|	もしかして、それは　にんぎょの　	|
;|	ウロコじゃ　ないザンスか！　　　	|
;|	ミーは、この　えを　かいてるから	|
;|	ちょっと、てが　はなせないザンス	|
;|	ミーの　かわりに、にんぎょぞうを	|
;|	かんせい　させて　ほしいザンス。	|
;+----------------------------------------------+
M18F	;　えっちなワニの芸術家（うろこ入手後）
	DB	WMO,WSI,WKA,WSI,WTE,WT2,WSO,WRE,WHA,XX,WNI,WN,WGI,WOY,WNO,XX
	DB	KU,KRO,KKO,WZI,WAY,XX,WNA,WI,KZA,KN,KSU,WKA,WBC,XX,XX,XX
	DB	KMI,WB_,WHA,WT2,WKO,WNO,XX,WE,WWO,XX,WKA,WI,WTE,WRU,WKA,WRA
	DB	WTI,WOY,WT,WTO,WT2,WTE,WGA,XX,WHA,WNA,WSE,WNA,WI,KZA,KN,KSU
	DB	KMI,WB_,WNO,XX,WKA,WWA,WRI,WNI,WT2,WNI,WN,WGI,WOY,WZO,WU,WWO
	DB	WKA,WN,WSE,WI,XX,WSA,WSE,WTE,XX,WHO,WSI,WI,KZA,KN,KSU,WMR
	DB	WED
;
;********************************
;*ワンワンを助けろ！のモリブリン*
;********************************
M190;　洞窟のモリブリン　その１
    DB   KNU,KT,WT2,WNA,WNI,WYA,WTU,WBC
    DB   WA,WYA,WSI,WI,WKO,WZO,WU,WDA
    DB   WMI,WNA,WNO,WMO,WNO,WT2,WDE,WA
    DB   WE,WT,WBC,WDE,WA,WE,WB_,WBC
    DB   WED
;
M191;  洞窟のモリブリン　その２
    DB   KE,KE,KI,WT2,KWA,KN,KWA,KN
    DB   WWO,WNE,WRA,WT,WTE,WKI,WTA,WKA
    DB   WSA,WTE,WHA,WO,WNU,WSI,WT2,KWA
    DB   KN,KWA,KN,WNO,WA,WRU,WZI,WT2
;
    DB   KMA,KDA,KMU,KNI,KAY,KN,KNI
    DB   KAY,KN,WNO,XX,WHA,WNA,WT,WTA,XX
    DB   WSI,WKA,WKU,WDE,WA,WRO,WU,WT2
    DB   WKA,WE,WRI,WU,WTI,WZI,WAY,WBC
	DB   WED
;
;********************************
;*マリンの歌をおぼえる　動物村編*
;********************************
M192;　動物村のマリン　（笛無し　ＯＲ　
    DB   WA,WT,WT2,NM,NM,NM,NM,NM
    DB   XX,WWA,WTA,WSI,WNE,WT2,WYO,WKU
    DB   WKO,WNO,WMU,WRA,WNI,WMO,WT2,WU
    DB   WTA,WI,WNI,WKI,WTE,WRU,WNO,WBC
;
    DB   WMI,WN,WNA,KG1,WKA,WZE,WNO,WSA
    DB   WKA,WNA,KG2,WNO,WU,WTA,WGA,XX
    DB   WI,WTI,WBA,WN,WNO,XX,WO,WKI
    DB   WNI,WI,WRI,WMI,WTA,WI,WNE,WMR
;
    DB   NM,NM,NM,NM,NM,WHA,WT2,WNA
    DB   WNI,WGA,WSU,WKI,WKA,WSI,WRA,WQE
    DB   WED
;
M193;　動物村のマリン　（曲を覚えた直後）
    DB   KG1,WKA,WZE,WNO,WSA,WKA,WNA,KG2
    DB   WNO,WU,WTA,XX,XX,XX,XX,XX
    DB   WZE,WT,WTA,WI,XX,WWA,WSU,WRE
    DB   WNA,WI,WDE,WNE,WBC,XX,XX,XX
;
    DB   WSO,WRE,WKA,WRA,WT2,WWA,WTA,WSI
    DB   WNO,WKO,WTO,WMO,WTN,WTN,WTN,XX
    DB   WED
;
;********************
;*吊り橋のイベント後*
;********************
M194;　メーベの村のマリン１　
    DB   WSA,WT,WKI,WHA,WT2,WA,WRI,WGA
    DB   WTO,WTN,WTN,WTN,WTN,XX,XX,XX
    DB   NM,NM,NM,NM,NM,WSU,WT,WGO
    DB   WKU,KKA,KT,KKO,WYO,WKA,WT,WTA
;
    DB   WWA,WTA,WSI,KG1,WKA,WZE,WNO,WSA
    DB   WKA,WNA,KG2,WNI,XX,XX,XX,XX
    DB   WO,WNE,WGA,WI,WSI,WTE,WTA,WNO
    DB   WTN,WTN,WTN,WTN,XX,XX,XX,XX
;
    DB   WE,WT,WQE,XX,WDO,WN,WNA,XX
    DB   WO,WNE,WGA,WI,WKA,WT,WTE,WQE
    DB   WSO,WRE,WHA,WTN,WTN,WTN,WTN,WDA
    DB   WB_,WME,WT2,KHI,KMI,KTU,WBC
    DB   WED
;
M195;　メーベの村のマリン２　
    DB   NM,NM,NM,NM,NM,XX,WI,WTU
    DB   WKA,XX,WKO,WNO,WSI,WMA,XX,XX
    DB   WDE,WTE,WT,WTI,WAY,WU,WN,WDA
    DB   WYO,WNE,WTN,WTN,WTN,WTN,XX,XX
;
    DB   WNA,WN,WTO,WNA,WKU,WTN,WTN,WWA
    DB   WKA,WRU,WNO,WTN,WTN,WTN,XX,XX
    DB   NM,NM,NM,NM,NM,WGA,XX,WI,WT
    DB   WTI,WAY,WU,WKO,WTO,WMR,XX
;
    DB   WTN,WTN,WWA,WTA,WSI,WNO,WKO,WTO
    DB   WT2,WWA,WSU,WRE,WNA,WI,WDE,WNE
    DB   WWA,WSU,WRE,WTA,WRA,WT2,WSI,WOY
    DB   WU,WTI,WSI,WNA,WI,WKA,WRA,WBC
    DB   WED
;
M196;　動物村の動物達
    DB   WTN,WTN,WTN,WTN,WTN,WTN,WTN,WTN
    DB   WTN,WTN,WTN,WTN,WTN,WTN,WTN,WTN
    DB   WU,WT,WTO,WRI,WT2,WU,WTA,WNI
    DB   WKI,WKI,WHO,WRE,WTE,WI,WRU,WMR
    DB   WED
;
M197;　メーベの村のマリン３　
    DB   KG1,WKA,WZE,WNO,WSA,WKA,WNA,KG2
    DB   WNO,WU,WTA,WHA,XX,XX,XX,XX
    DB   WME,WZA,WME,WNO,XX,WU,WTA,WNA,WN
    DB   WDA,WT,WTE,WMR,XX,XX,XX
;
    DB   WMO,WSI,WT2,WKA,WMI,WSA,WMA,WGA
    DB   XX,WO,WKI,WTA,WRA,WTN,WTN,WTN
    DB   WWA,WTA,WSI,WNO,XX,WNE,WGA,WI
    DB   WKI,WI,WTE,WKU,WRE,WRU,WKA,WNA
    DB   WED
;
;********************
;*オプション　マリン*
;********************
M198;  洞窟に入ろうとしたとき
    DB   WE,WT,WQE,XX,WNA,WKA,WNI,XX,WHA,WI,WRU,WNO,WQE,XX,XX,XX
    DB   WWA,WTA,WSI,WT2,WKO,WKO,WDE,WMA,WT,WTE,WRU,WTN,WTN,WTN,XX,XX
    DB   WKI,WWO,WTU,WKE,WTE,KNE,NM,NM,NM,NM,NM,WTN,WTN,WTN,XX,XX
    DB    WED

;
M199;　壷を壊したとき　
   DB  XX,XX,XX,XX,XX,WA,WB_,WB_,WT,WBC,XX,XX,XX,XX,XX,XX  
   DB  WTN,WTN,WTN,XX,WA,WB_,WA,WT2,KI,KKE,KNA,KI,WN,WDA,WA,WBC
   DB  WED
;
;************
;*トレーシー*
;************
M19A;トレーシー　ライフ満タン（薬買った時）
   DB  WKO,WRE,WHA,WT2,WWA,WTA,WSI,WKA
   DB  WRA,WNO,KSA,WB_,KBI,KSU,WT2,XX
   DB  WHO,WB_,WRA,WT2,KHA,WB_,KTO,XX
   DB  WMA,WN,KTA,KN,WYO,WO,WN,WBC
   DB  WED
;
;******************
;*人魚像のイベント*
;******************
M19B;シュールさん 
   DB  KMI,WB_,WGA,WT2,WYU,WU,WME,WI
   DB  WNA,KGE,KI,KZI,KUY,KTU,KKA,XX
   DB  KSI,KUY,WB_,KRU,WTN,KDO,KNA,KPI,KT
   DB  KTI,XX,KZA,KN,KSU,WBC,XX
; 
   DB  WI,WRI,WE,WNO,WT2,WNI,WN,WGI,WOY
   DB  WZO,WU,WMO,XX,XX,XX,XX
   DB  KMI,WB_,WNO,XX,WZI,WSI,WN,WSA,WKU
   DB  KZA,KN,KSU,WMR,XX,XX,XX
;   
   DB  WTN,WTN,WTN,WZI,WTU,WHA,WA,WNO
   DB  WZO,WU,XX,KWA,KKE,KA,KRI,WDE
   DB  WMI,WKA,WN,WSE,WI,WNA,WN,KZA
   DB  KN,KSU,XX,KHO,KT,KHO,KT,WBC
;
   DB  KMI,WB_,WNO,KGE,KI,KZI,KUY,KTU
   DB  WHA,KMU,KZU,KKA,KSI,WSU,WGI,WTE
   DB  KA,KN,KTA,WNI,WHA,WT2,WMU,WRI
   DB  KZA,KN,KSU,WNE,WTN,WTN,WTN,WTN
   DB  WED
;
M19C;岬の人魚像
   DB  XX,KG1,WKA,WNA,WSI,WMI,WNO,WNI
   DB  WN,WGI,WOY,WZO,WU,KG2,XX,XX 
   DB  XX,XX,XX,XX,XX,XX,KSI,KUY
   DB  WB_,KRU,WSA,WKU,XX,XX,XX,XX
;
   DB  XX,XX,XX,XX,XX,XX,XX,XX
   DB  XX,XX,XX,XX,XX,XX,XX,XX
   DB  WQE,WTN,WTN,KU,KRO,KKO,WGA,W1
   DB  WMA,WI,XX,WKA,WKE,WTE,WRU,WMR
   DB  WED
;
;************
;*　立て札　*
;************
M19D;貝殻の館
    DB   XX,XX,XX,XX,WKA,WI,WGA,WRA,WNO,WYA,WKA,WTA
    DB   WED
;
M19E;ヤーナ砂漠
    DB   XX,XR,XX,KYA,WB_,KNA,WSA,WBA,WKU,XX,WI,WRI,WGU,WTI
    DB   WED
;
;------------------------------------------------------------------------
M19F;	Not used
;    DB   KG1,WKA,WZE,WNO,WSA,WKA,WNA,KG2,WHA,XX,KYU,KME,WNO,WNA,WKA,XX
;    DB   WSA,WME,WRU,WKO,WTO,WNA,WKI,XX,KYU,KME,WNO,WNA,WKA,XX,XX,XX
;
;    DB   WSA,WME,WNA,WI,KYU,KME,WNO,XX,WSA,WME,WRU,WTO,WKI,XX,XX,XX
;    DB   WKO,WNO,WYO,WMO,WKI,WRI,WTO,WT2,WNA,WRI,WNI,WKE,WRU,WTN,WTN,WTN
;    DB   WED
;-----------------------------------------------------------------------
;
;+----------------------------------------------+
;|	　　　　　ふしぎのもり			|
;|	　ほんのちょっと、ふしぎです		|
;+----------------------------------------------+
M1A0	;森の立て札
    DB   XX,XX,XX,XX,XX,WHU,WSI,WGI,WNO,WMO,WRI,XX,XX,XX,XX,XX
    DB   XX,WHO,WN,WNO,WTI,WOY,WT,WTO,WT2,WHU,WSI,WGI,WDE,WSU,XX,XX
    DB    WED
;
M1A1;筏屋の前
    DB   WA,WNA,WTA,WMO,XX,KTI,KAY,KRE,KN,KZI,WBC,XX,XX,XX,XX,XX
    DB   KI,KKA,KDA,WDE,WT2,WKI,WUY,WU,WRI,WUY,WU,WKU,WDA,WRI
    DB   XX,XX,XX,WZI,WMU,WSI,WOY,WHE,XX,WDO,WU,WZO
    DB   WED
;
;+----------------------------------------------+
;|	　ひがし＞　ウククそうげん		|
;|	　ずっとひがし　どうぶつむら		|
;+----------------------------------------------+
M1A2	;村の東
    DB   XX,WHI,WGA,WSI,XR,XX,KU,KKU
    DB   KKU,WSO,WU,WGE,WN,XX,XX,XX
    DB   XX,WZU,WT,WTO,WHI,WGA,WSI,XX
    DB   WDO,WU,WBU,WTU,WMU,WRA
    DB   WED
;
M1A3;卵山の前
    DB   XX,XX,XX,XX,KTA,KMA,KRA,KN,KTI,XX,WYA,WMA,XX,XX,XX
    DB   WED
;
;+----------------------------------------------+
;|	　＞　　　テールのほらあな		|
;|	　Ｖ　　　トロンボ　かいがん		|
;+----------------------------------------------+
M1A4	;村の出口
    DB   XX,XR,XX,XX,XX,KTE,WB_,KRU,WNO,WHO,WRA,WA,WNA,XX,XX,XX
    DB   XX,XD,XX,XX,XX,KTO,KRO,KN,KBO,XX,WKA,WI,WGA,WN
    DB   WED
;
M1A5;沼の西
    DB   XX,XR,XX,XX,XX,KGO,KPO,KN,KGA,WNO,WNU,WMA,XX,XX,XX,XX
    DB   XX,XD,XX,XX,XX,WHU,WSI,WGI,WNO,XX,WMO,WRI
    DB   WED
;
M1A6;森の中
    DB   KHI,KBI,KWA,KRE,WYU,WKA,WNI,XX,WTI,WUY,WU,WI,WBC,XX,XX,XX
    DB   WO,WMO,WTA,WI,WHI,WTO,WHA,XX,WNO,WRA,WNA,WI,WYO,WU,WNI,WBC
    DB   WED
;
;+----------------------------------------------+
;|	　　　　でんわボックス　　　　　	|
;|						|
;+----------------------------------------------+
M1A7;電話ボックス
    DB   XX,XX,XX,XX,WDE,WN,WWA,KBO,KT,KKU,KSU,XX,XX,XX,XX,XX
    DB   WED
;
M1A8;ワンワン以外立入禁止
    DB   XX,XX,XX,XX,XX,XX,KKI,KKE
    DB   KN,WBC,XX,XX,XX,XX,XX,XX
    DB   KWA,KN,KWA,KN,WI,WGA,WI,XX
    DB   WTA,WTI,WI,WRI,WKI,WN,WSI,WBC
    DB   WED
;
M1A9;　マリオンの泉　下へ進め
    DB   XX,XD,XX,WNO,XX,WHO,WU,WKO,WU
    DB   WHE,WSU,WSU,WME
    DB   WED
;
M1AA;　上へ進め
    DB   XX,XU,XX,WNO,XX,WHO,WU,WKO,WU
    DB   WHE,WSU,WSU,WME
    DB   WED
;
M1AB;　右へ進め
    DB   XX,XR,XX,WNO,XX,WHO,WU,WKO,WU
    DB   WHE,WSU,WSU,WME
    DB   WED
;
M1AC;　左へ進め
    DB   XX,XL,XX,WNO,XX,WHO,WU,WKO,WU
    DB   WHE,WSU,WSU,WME
    DB   WED
;
M1AD;　元の位置へ帰れ
    DB   XX,XX,WMO,WU,WI,WTI,WDO,XX
    DB   WSA,WI,WSI,WOY,WKA,WRA,XX
    DB   XX,XX,XX,XX,WYA,WRI,WNA,WO,WSI,WBC
    DB   WED
;
M1AE;　おめでとう
    DB   WO,WMI,WGO,WTO,WBC,WKO,WRE,WDE
    DB   XX,KKU,KRI,KA,XX,WDE,WSU,WBC
    DB   WGO,WHO,WU,WBI,WHA,WA,WTI,WRA
    DB   XX,XR,XX,XX,XX,XX,XX,XX
    DB   WO,WTA,WNO,WSI,WMI,WNI,WBC,XX
    DB   WED
M1AF;  引っ越ししました
    DB   WZI,WUY,WN,WGI,WOY,WU,WNO,WTA,WME,XX
    DB   WTA,WBI,WNI,WDE,WMA,WSU,XX,XX,XX,XX,XX
    DB   XX,XX,XX,XX,XX,XX,KMA,KMU,WB_,XX,XX
    DB   WED
M1B0;　　マンボが池
    DB  XX,XR,XX,XX,WKI,WMA,WGU,WRE
    DB  KTO,KRE,WB_,KSI,WB_,WNO,WI,WE
    DB  XX,XD,XX,XX,KMA,KN,KBO,KGA
    DB  WI,WKE,XX,XX,XX,XX,XX,XX
    DB  WED

M1B1;東、動物村　南、マーサの入り江
    DB  XX,XR,XX,WDO,WU,WBU,WTU,WMU
    DB  WRA,XX,XX,XX,XX,XX,XX,XX
    DB  XX,XD,XX,KMA,WB_,KSA,WNO,WI
    DB  WRI,WE,XX,XX,XX,XX,XX,XX
    DB  WED
M1B2;動物村の前
    DB  XX,XR,XX,WDO,WU,WBU,WTU,WMU
    DB  WRA,XX,WNI,WYO,WU,WKO,WSO,WBC
    DB  WED

M1B3;墓地
    DB  XX,XR,XX,WBO,WTI,XX,XX,XX
    DB  XX,XX,XX,XX,XX,XX,XX,XX
    DB  XX,XD,XX,KU,KKU,KKU,XX,WSO
    DB  WU,WGE,WN,XX,XX,XX,XX,XX
    DB  WED
;
;+----------------------------------------------+
;|	　　このへん　タルタルこうち　　	|
;|	　　右　しゃしんや　すぐそば　　	|
;+----------------------------------------------+
M1B4	;タルタル　高地（改）看板
	DB	XX,XX,WKO,WNO,WHE,WN,XX,KTA,KRU,KTA,KRU,WKO,WU,WTI,XX,XX
	DB	XX,XX,XR,XX,WSI,WAY,WSI,WN,WYA,XX,WSU,WGU,WSO,WBA,XX,XX
	DB	WED
;
M1B5;タマランチ山　ワキーガの沼
   DB  XX,XR,XX,KTA,KMA,KRA,KN,KTI 
   DB  WYA,WMA,XX,XX,XX,XX,XX,XX
   DB  XX,XL,XX,KGO,KPO,KN,KGA,WNO
   DB  WNU,WMA,XX,XX,XX,XX,XX,XX
   DB  WED

;
;****************
;*フクロウの石像*
;****************
M1B6; 　ふくろうの石碑１
   DB  KKA,KMI,WNO,KTA,KMA,KGO,WNI,WA
   DB  WI,WNI,WYU,WKE,XX,XX,XX,XX
   DB  WNE,WI,WRO,WNI,XX,KKA,KMI,WHA
   DB  WKO,WTA,WE,WYO,WU,XX,XX,XX 
   DB  WED
;
M1B7; 　ふくろうの石碑２
   DB   KG1,WKA,WZE,WNO,WSA,WKA,WNA,KG2
   DB   WHA,WSA,WKA,WNA,WNI,WA,WRA,WZU
   DB   WKA,WZE,WWO,WYO,WBU,WGA,XX,WTO
   DB   WRI,WNI,WMO,WA,WRA,WZU,XX,XX
   DB   WED
;
M1B8; 　ふくろうの石碑３
 DB   XX,XX,XX,WA,WSI,WMO,WTO,WNI,XX,KHI,KMI,KTU,WA,WRI
 DB   WED
;
M1B9; 　ふくろうの石碑４
 DB   XX,XX,XX,WA,WSI,WMO,WTO,WNI,XX,KHI,KMI,KTU,WA,WRI
 DB   WED
;
M1BA; 　ふくろうの石碑５
  DB  XX,XX,XX,WKO,WNO,WA,WTA,WRI,XX,KHI,KMI,KTU,WA,WRI
  DB  WED
;
M1BB; 　ふくろうの石碑６
  DB  XX,XX,XX,KHA,KSI,WNO,WSI,WTA,XX,KHI,KMI,KTU,WA,WRI
  DB  WED
;
M1BC; 　ふくろうの石碑７
  DB  XX,XX,XX,WKO,WNO,WA,WTA,WRI,XX,KHI,KMI,KTU,WNA,WSI
  DB  WED
;
M1BD; 　ふくろうの石碑８
 DB   KG1,WKA,WZE,WNO,WSA,WKA,WNA,KG2
 DB   WNO,WME,WZA,WME,XX,WNA,WKU,WBA
 DB   WYU,WU,WSI,WAY,WHA,XX,WSI,WMA
 DB   WNO,WTU,WTI,WNI,WNA,WRU,XX,XX
 DB   WED
;
M1BE; 　ふくろうの石碑９
   DB   KYU,KME,WGA,WSA,WME,WTA,WRA,XX
   DB   KA,KWA,WNI,WNA,WRU,XX,XX,XX
   DB   KMA,KMO,KNO,WMO,WMI,WN,WNA,XX
   DB   KA,KWA,WNI,WNA,WRU,XX,XX,XX
;
   DB   WDA,WKA,WRA,KMA,KMO,KNO,WHA,XX
   DB   WZI,WAY,WMA,WWO,WSU,WRU,XX,XX
   DB   WME,WZA,WME,WNO,WSI,WSI,WAY,WNO
   DB   XX,WZI,WAY,WMA,WWO,WSU,WRU
   DB   WED
;
;**************************
;*タリンの蜂の巣　わらしべ*
;**************************
M1BF	;Not used
;;;;;;;;M1BF	
;;;;;;;;;棒を持たずにタリンに会ったとき
;;;;;;;;       DB    WYA,WA,WT2,NM,NM,NM,NM,NM
;;;;;;;;       DB    KO,KRA,WT2,KHA,KTI,KMI,KTU,XX
;;;;;;;;       DB    WTO,WRI,WTA,WI,WDA,WYO,WMR,WBO
;;;;;;;;       DB    WU,WSA,WGA,WSI,WTE,WRU,WDA,WYO
;;;;;;;;       DB    WED
M1C0
;棒を持ってタリンに会いに行った時
	DB	WO,WT,WQE,XX,NM,NM,NM,NM,NM,XX,XX,XX,XX,XX,XX,XX
	DB	WI,WI,WMO,WNO,WMO,WT,WTE,WRU,WDA,WNA,WMR,XX,XX,XX,XX,XX
;
	DB	WU,WN,WMA,WI,KHA,KTI,KMI,KTU,WWA,WKE,WTE,WYA,WRU,WKA,WRA,XX
	DB	WSO,WNO,WBO,WU,WKI,WRE,XX,WKA,WSI,WTE,WHO,WSI,WB_,WDA,WYO,WMR
;
	DB	XX,XX,XX,XX,WI,WI,WYO,XX,XX,WDA,WB_,WME
	DB	WE2
;
M1C1
;素直に棒を貸してやった時
	DB	XX,IT5,XX,WGA,XX,XX,XX,XX,XX,XX,XX,XX,XX,XX,XX,XX
	DB	KHA,KTI,WNO,WSU,XX,IT6,XX,WNI,WNA,WT,WTA,WMR,XX,XX,XX,XX
;
	DB	WQE,WQE,XX,WNA,WN,WKA,WYO,WKU,WWA,WKA,WRA,WNA,WI,WKE,WDO,XX,XX
	DB	WTO,WRI,WA,WE,WZU,XX,WMO,WRA,WT,WTE,WO,WKO,WU,WBC
	DB	WED
;
M1C2
;いけずして貸してやらねかった時
	DB	WU,WB_,WN,XX,NM,NM,NM,NM,NM,WI,WKE,WZU,WDA,WB_,WYO,WMR
	DB	WED

;********************
;*その他　立て札など*
;********************
;+----------------------------------------------+
;|	　　　　ウニ　ちゅうい！		|
;|	　　すでで　さわらないように！		|
;+----------------------------------------------+
M1C3	;　ウニ　に注意
    DB   XX,XX,XX,XX,KU,KNI,XX,WTI,WUY,WU,WI,WBC,XX,XX,XX,XX
    DB   XX,XX,WSU,WDE,WDE,XX,WSA,WWA,WRA,WNA,WI,WYO,WU,WNI,WBC
    DB   WED
;
M1C4;	Not used
;;;;;;;;M1C4;　メモ機能有り
;;;;;;;;    DB   KSE,KRE,KKU,KTO,KBO,KTA,KN,WWO
;;;;;;;;    DB   WO,WSI,KMA,KT,KPU,WWO,WMI,WRU
;;;;;;;;    DB   KKA,WB_,KSO,KRU,WWO,WU,WGO,WKA
;;;;;;;;    DB   WSI,WT2,RA,KBO,KTA,KN,WO,WSU
;;;;;;;;;
;;;;;;;;    DB   WTI,WME,WI,WYA,KHU,KKU,KRO,KU
;;;;;;;;    DB   WNO,KME,KT,KSE,WB_,KZI,WGA,XX
;;;;;;;;    DB   WYO,WME,WRU,WYO,WBC,XX,XX,XX
;;;;;;;;    DB   KSU,KTA,KT,KHU,WYO,KRI
;;;;;;;;    DB   WED
;
M1C5;　ばななを食べるタリン
   DB   WHA,WRA,WGA,WHE,WT,WTA,WDE,WT2
   DB   WHA,WMA,WBE,WDE,KBA,KNA,KNA,WWO
   DB   WMO,WRA,WT,WTE,WKI,WTA,WDA,WYO
   DB   XX,KMO,KGU,KMO,KGU,XX,XX,XX
;
   DB   NM,NM,NM,NM,NM,WMO,WHO,WSI
   DB   WKA,WT,WTA,WRA,XX,XX,XX,XX
   DB   WMO,WRA,WT,WTE,WKU,WRU,WTO,XX
   DB   WE,WE,WDA,WYO,WTN,WTN,WTN,WTN
   DB   WED
;

;**************************
;*バナナをセール　わらしべ*
;**************************
M1C6
;ドッグフードを持って無い時にセールに会った時
   DB   KWA,KSI,WHA,WT2,WKO,WKO,WNO,WKA
   DB   WN,WRI,WNI,WN,WNO,XX,XX,XX
   DB   KSE,WB_,KRU,WT,WTI,WUY,WU,WMO
   DB   WN,WYA,WBC,XX,XX,XX,XX,XX
;
   DB   KWA,KSI,WHA,WT2,WME,WZU,WRA,WSI
   DB   WI,KG1,KKA,KN,KDU,KME,KG2,WWO
   DB   WA,WTU,WME,WRU,WNO,WGA,XX,WSI
   DB   WUY,WMI,WNA,WN,WYA,WKE,WDO,XX
;
   DB   WO,WTO,WU,WTO,WHA,WT2,WDO,WKO
   DB   WZO,WDE,KGE,KI,KZI,KUY,KTU,KKA
   DB   WWO,WYA,WT,WTO,WRU,WRA,WSI,WI
   DB   WN,WYA,WMR,XX,XX,XX,XX,XX
;
   DB   WU,WMA,WI,WMO,WN,WT2,WKU,WU
   DB   WTE,WTA,WHO,WU,WGA,WT2,XX,XX
   DB   KE,KE,WTO,XX,WO,WMO,WU,WN
   DB   WYA,WKE,WDO,WNA,WA,WTN,WTN,WTN
   DB   WED
;
M1C7
;ドッグフードを持ってセールに会った時
   DB   WNA,WN,WYA,WT2,WSO,WRE,WT2,WBC
   DB   XX,KKA,WT2,KKA,KN,KDU,KME,XX
   DB   WMO,WT,WTE,WRU,WN,WTI,WAY,WU
   DB   WNO,WT,WBC,WQE,XX,XX,XX,XX
;
   DB   WO,WNE,WGA,WI,WYA,WMR,XX,WSO
   DB   WNO,KKA,KN,KDU,KME,XX,IT3,XX
   DB   WWA,WSI,WNI,WTI,WOY,WB_,WDA,WI
   DB   WBC,XX,WO,WNE,WGA,WI,WYA,WBC
;
   DB   WDO,WU,WSU,WRU,WQE,XX,XX,XX
   DB   XX,XX,XX,XX,XX,XX,XX,XX
   DB   XX,XX,XX,XX,WE,WE,WYO,XX,XX,WI,WYA,WYA
   DB   WE2
;
M1C8
;ドッグフードとバナナを交換してやった時
   DB   WO,WO,WKI,WNI,WT2,WA,WRI,WGA
   DB   WTO,WU,WT,WBC,XX,XX,XX,XX
   DB   WHO,WNA,WT2,WI,WTA,WDA,WKI,WMA
   DB   WB_,WSU,WT,WBC,XX,XX,XX,XX
	DB	WED
;
M1C9
;ドッグフードとバナナを交換してやらなかった時
   DB   WHO,WNA,WT2,WSI,WAY,WB_,WNA,WI
   DB   WNA,WA,WTN,WTN,WTN,WTN,WTN,WTN
   DB   WMA,WTA,WT2,WKI,WGA,WKA,WWA,WT
   DB   WTA,WRA,WI,WU,WTE,WYA,WMR
   DB   WED
;
M1CA
;ドッグフードを食べた直後
   DB   KMO,KGU,XX,KMO,KGU,XX,KMO,KGU
   DB   WTN,WTN,WTN,WTN,WTN,WTN,WTN,WTN
   DB   WKO,WRI,WAY,WT2,WU,WMA,WI,WWA
   DB   WBC,WBC,XX,XX,XX,XX,XX,XX
;
   DB   WHO,WNA,WT2,WO,WRE,WI,WNI,KBA
   DB   KNA,KNA,WWO,WA,WGE,WRU,WNA,WMR
   DB   WI,WYA,WT2,WHO,WN,WMA,WT2,WO
   DB   WI,WSI,WKA,WT,WTA,WWA,WBC
   DB   WED
;
M1CB;　バナナとドッグフードを交換した
   DB   XX,IT3,XX,WWO,WA,WGE,WTA,WRA
   DB   KBA,KNA,KNA,XX,IT4,XX,WWO,XX
   DB   WMO,WRA,WT,WTA,WBC,XX,XX,XX
   DB   XX,XX,XX,XX,XX,XX,XX,XX
;
   DB   WNA,WN,WKA,WT2,WGO,WT,WTU,XX
   DB   WE,WE,WKA,WN,WZI,WBC
   DB	WED
;
M1CC;　交換後話掛けると
   DB   WDO,WB_,WMO,WT2,WGO,WTI,WSO,WU
   DB   WSA,WN,WDE,WSI,WTA,WBC
   DB   WED
;
M1CD;　繰り返し
   DB   WMA,WI,WDO,WT2,WO,WNI,WI,WTI
   DB   WAY,WN,WBC,XX,WA,WN,WTA,XX
   DB   WKI,WUY,WU,WRI,WUY,WU,WSU,WBE
   DB   WRI,WSI,WTA,WKO,WTO,WA,WRU,WQE
;
   DB   KTA,KRU,KTA,KRU,WKO,WU,WTI,WNO
   DB   KHI,KGA,KSI,WNO,WHA,WZU,WRE,WNI
   DB   WA,WRU,WWA,WT2,WI,WT,WPE,WN,WI
   DB   WT,WTE,WMI,WI,WNA,WMR
   DB   WED

;****************************
;*クマのコックさん　わらしべ*
;****************************
M1CE;蜂の巣を持って無い時にクマのコックに会った場合
	DB	WRI,WOY,WU,WRI,WNO,XX,WZA,WI,WRI,WOY,WU,WGA,XX,XX,XX,XX
	DB	WTA,WRI,WNE,WE,WYA,WMR,XX,WKO,WN,WTI,WKI,WSI,WOY,WU,WBC,XX
;
	DB	KHA,KTI,KMI,KTU,WGA,WA,WRI,WAY
        DB      WB_,WT2,WBE,WRA,WBO,WU,WNI,XX
        DB      WU,WMA,WKU,WNA,WRU,WN,WDA,KZE,WMR
	DB	WED
;
M1CF
;蜂の巣を持っている時にクマのコックに会った場合
	DB	KHA,KI,KHO,WB_,WBC,XX,WO,WME
        DB      WE,WSA,WN,WT2,WSO,WI,WTU,WA
	DB	WHI,WOY,WT,WTO,WSU,WRU,WTO,XX,IT6,XX,WZI,WAY,WNE,WE,WKA,WQE
;
	DB	WTI,WOY,WU,WDO,WT2,KHA,KTI,KMI
        DB      KTU,WKI,WRA,WSI,WTE,WN,WDA,WBC
	DB	KPA,KI,KNA,KT,KPU,KRU,WTO,WKO
        DB      WU,WKA,WN,WSI,WNE,WE,WKA,WQE
;
	DB	XX,XX,XX,XX,WI,WI,WYO,XX,XX,WYA,WDA
	DB	WE2
;
M1D0
;蜂の巣とパイナップルを取り替えた時
	DB	XX,IT6,XX,WWO,XX,XX,XX,XX,XX,XX,XX,XX,XX,XX,XX,XX
	DB	KPA,KI,KNA,KT,KPU,KRU,XX,IT7,XX,WTO,WTO,WRI,WKA,WE,WTA,WBC
;
	DB	WSU,WT,WPA,WB_,WI,WKE,WDO,XX,WO,WI,WSI,WI,WBC,XX,XX,XX
	DB	WO,WI,WSI,WB_,WKE,WDO,XX,WSU,WT,WPA,WI,WBC
	DB	WED
M1D1
;蜂の巣とパイナップルを交換してやらんかった時
	DB	KKI,KSI,KOY,WB_,KT,WBC,XX,XX,WO,WSI,WI,KZE,WMR,XX,XX,XX
	DB	WME,WT,WTA,WNI,WNE,WE,XX,KTI,KN,KMI,WNA,WNO,WNI,WYO,WU,WMR
	DB	WED
;
M1D2
;交換後のクマのメッセージ
   DB   KO,KU,WBC,KO,KU,WBC,XX,KYA
   DB   WB_,KNA,WSA,WBA,WKU,WNE,XX,XX
   DB   WSI,WT,WTE,WRU,WZE,WMR,WKO,WNO
   DB   WMU,WRA,WNO,XX,KMI,KNA,KMI,WNI
;   
   DB   WI,WRI,WGU,WTI,WGA,XX,WA,WRU
   DB   WN,WDA,WGA,WNA,WT2,XX,XX,XX
   DB   WHE,WN,WNA,KYA,KTU,WGA,XX,WMI
   DB   WTI,WWO,WHU,WSA,WI,WDE,WN,WDA
;
   DB   WTN,WTN,WTN,WA,WI,WTU,WHA,XX
   DB   WI,WTI,WDO,WNE,WTI,WMA,WU,WTO
   DB   WZU,WB_,WB_,WB_,WB_,WT,WTO,WBC
   DB   WU,WGO,WKA,WNE,WB_,WSI,WNA,WMR
;
   DB   WSO,WT,WBC,XX,KMA,KRI,KN,WTI,WAY
   DB   WN,WTU,WRE,WTE,WKI,WNA,WBC
   DB   WA,WNO,KKO,WNO,WU,WTA,WDE,XX
   DB   WO,WKO,WSI,WTI,WMA,WE,WYO,WBC
;
   DB  KBI,KT,KKU,KRI,WBC,XX,WTO,WBI
   DB  WO,WKI,WRU,WZE,XX,WKI,WT,WTO
   DB  XX,XX,XX,WHE,WT,WHE,WT,WHE,WT
   DB  WBC,XX,XX
   DB  WED
;
M1D3	;おいらのユメは、、、、、、
 DB	WO,WI,WRA,WNO,KYU,KME,WHA,WT2,KME,WB_,KBE,WNO,WMU,WRA,WNI,XX
 DB	KTI,SSE,WB_,KN,WTE,WN,WWO,XX,WDA,WSU,WKO,WTO,WNA,WN,WDA,WMR
 DB 	WED
;
M1D4	;マリンを連れてる時
   DB   KHA,KI,KHO,WB_,WBC,WBC,WBC,XX
   DB   KMA,KRI,KN,WTI,WAY,WN,XX,XX
   DB   WI,WRA,WT,WSI,WAY,WA,WI,WMR
   DB   XX,XX,XX,XX,XX,XX,XX,XX
;
   DB   WTN,WTN,WTN,WTN,WTN,WTN,WTN,WTN
   DB   WO,WT,WTO,WQE,XX,KI,KKE,KNE
   DB   KA,KN,KTA,WMO,WI,WTA,WNO,WKA
   DB   XX,KSU,KMA,KN,KSU,KMA,KN,WMR
   DB   WED

;
;**********************
;*マリン　秘密の砂浜編*
;**********************
M1D5;　まりん　秘密の砂浜編　
    DB   WA,WRA,WT2,NM,NM,NM,NM,NM
    DB   XX,XX,XX,XX,XX,XX,XX,XX
    DB   WKO,WKO,WGA,WYO,WKU,WWA,WKA,WT
    DB   WTA,WWA,WNE,WMR,XX,XX,XX,XX
;
    DB   WSU,WKO,WSI,XX,WWA,WTA,WSI,WTO
    DB   WO,WHA,WNA,WSI,WSI,WNA,WI,WQE
    DB  XX,XX,XX,XX,WI,WI,WYO,XX,XX,WSI,WNA,WI
    DB  WE2
;
M1D6;　Ｍ１Ｄ５　いいえの時
    DB   WSO,WU,WT2,WWA,WTA,WSI,XX,WMO
    DB   WU,WTI,WOY,WT,WTO,WDA,WKE,XX
    DB   WKO,WKO,WDE,XX,WU,WMI,WWO,WMI
    DB   WTE,WRU,WWA,WMR
    DB   WED
;
M1D7;　まりんの置き手紙
    DB   XX,XX,WHA,WMA,WBE,WNI,WI,WT
    DB   WTE,WMA,WSU,XX,XX,XX,XX,XX
    DB   XX,XX,XX,XX,XX,XX,XX,XX
    DB   XX,XX,KMA,KRI,KN,XX,MK5,XX
    DB   WED
;
M1D8;　Ｍ１Ｄ５　はいの時
    DB   WKO,WNO,KYA,KSI,WNO,WMI,WHA
    DB   WT2,WI,WT,WTA,WI,XX,XX,XX,XX
    DB   WDO,WKO,WKA,WRA,WKU,WRU,WNO,WKA
    DB   WNA,WTN,WTN,WTN,WTN,XX,XX,XX
;
    DB   WU,WMI,WNO,WMU,WKO,WU
    DB   WNI,WHA,WT2,WNA,WNI,WMO,WNA,WI,WT,WTE
    DB   KTA,KRI,KN,WHA,WI,WT,WTE
    DB   WTA,WKE,WRE,WDO,WTN,WTN,WTN,XX,XX
;
    DB   WKI,WT,WTO,WT2,WNA,WNI,WKA,WGA,WA
    DB   WRU,WT,WTE,XX,XX,XX,XX
    DB   WWA,WTA,WSI,XX,WSI,WN,WZI,WTE
    DB   WRU,WNO,WBC,XX,XX,XX,XX,XX
;
    DB   XX,WTN,WTN,WTN,WTN,XX,WTN,WTN
    DB   WTN,WTN,XX,WTN,WTN,WTN,WTN,XX
    DB   XX,XX,XX,XX,XX,XX,XX,XX
    DB   XX,XX,XX,XX,XX,XX,XX,XX
;    
    DB   NM,NM,NM,NM,NM,WWO,WT2,WMI,WTU
    DB   WKE,WTA,WTO,WKI,XX,XX,XX
    DB   WWA,WTA,WSI,KDO,KKI,KDO,KKI,WSI
    DB   WTA,WWA,WMR,XX,XX,XX,XX,XX
;    
    DB   WKO,WNO,WHI,WTO,WHA,WT2,WU,WMI
    DB   WNO,WMU,WKO,WU,WKA,WRA,XX,XX
    DB   WNA,WNI,WKA,WWO,WT2,WTU,WGE,WNI
    DB   WKI,WTA,WN,WDA,WT,WTE,XX,XX
    DB   WED
;
M1D9;　しばし沈黙
    DB   XX,WTN,WTN,WTN,WTN,XX,WTN,WTN
    DB   WTN,WTN,XX,WTN,WTN,WTN,WTN,XX
    DB   XX,XX,XX,XX,XX,XX,XX,XX
    DB   XX,XX,XX,XX,XX,XX,XX,XX
;
    DB   WWA,WTA,WSI,WGA,WT2,KKA,KMO,KME,WDA
    DB   WT,WTA,WRA,WTN,WTN,WTN,WTN
    DB   WZU,WT,WTO,WT2,WTO,WO,WKU,WHE
    DB   WT2,WTO,WN,WDE,WI,WKU,WNO,WNI
;   
    DB   WI,WRO,WN,WNA,WTO,WKO,WRO,WHE
    DB   XX,WI,WT,WTE,WT2,XX,XX,XX
    DB   WI,WRO,WN,WNA,WHI,WTO,WTA,WTI
    DB   WTO,XX,WU,WTA,WU,WNO,XX,XX
;
    DB   KG1,WKA,WZE,WNO,WSA,WKA,WNA,KG2
    DB   WNI,WT2,WI,WNO,WRE,WBA,XX,XX
    DB   WWA,WTA,WSI,WNO,WO,WNE,WGA,WI
    DB   XX,WKA,WNA,WU,WNO,WKA,WSI,WRA
    DB   WED
;
M1DA;　ちゃんと聞いてる？
    DB   WNE,WE,NM,NM,NM,NM,NM,WTI
    DB   WAY,WN,WTO,WKI,WI,WTE,WRU,WQE 
;
    DB   XX,XX,XX,XX,WU,WN,XX,XX,XX,WZE,WN,WZE,WN
    DB   WE2
;
M1DB;　Ｍ１ＤＡ　はいの時
    DB   WI,WTU,WKA,WT2,NM,NM,NM,NM
    DB   NM,WNO,WHU,WRU,WSA,WTO,WNI,XX
    DB   WI,WT,WTE,WMI,WTA,WI,WNA,WTN
    DB   WTN,WTN,WTN,WTN,WTN,XX,XX,XX
;
    DB   WNA,WA,WN,WTE,WNE,WBC,XX,XX
    DB   KHU,KHU,KHU,WTN,WTN,WTN
    DB   WED
;
M1DC;　一緒にいくわ
    DB   WE,WQE,XX,KSE,KI,KU,KTI,WSA
    DB   WN,WGA,WQE,WQE,XX,XX,XX,XX
    DB   WTN,WTN,WTN,XX,WI,WI,WWA,WT2
    DB   WI,WT,WSI,WOY,WNI,WI,WKU,WBC
    DB   WED
;
M1DD; たりん　蜂にやられた
    DB   WU,WB_,WN,XX,WU,WB_,WN,XX
    DB   WTN,WTN,WTN,WTN,XX,XX,XX,XX
    DB   KHA,KTI,WHA,WMO,WU,XX,WKO,WRI
    DB   WGO,WRI,WDA,WA,WYO,WMR,XX,XX
    DB   WED
;
M1DE; Ｍ１ＤＡ　いいえの時（ちゃんと聞いてよ！）
    DB  KMO,KU,WBC,WU,WWA,WNO,WSO,WRA
    DB  WNA,WN,WDA,WKA,WRA,WA,WTN,WTN
    DB  WKO,WN,WDO,WHA,WT2,WTI,WAY,WN
    DB  WTO,WKI,WI,WTE,WNE,WMR,XX,XX 
    DB  WED 
;
;+----------------------------------------------+
;|	１ぴきでも　いきのこっていれば　	|
;|	それで　じゅうぶんだぜ！　ぺっ！	|
;|	いくらでも　なかまを　よんで　　	|
;|	これるしな！いくぜ！オチビさん！	|
;+----------------------------------------------+
M1DF	;　ＬＶ７ダンジョンのボスが蝙蝠をつかうとこ（１回で全滅させなかった時、１回だけ）
	DB	W1,WPI,WKI,WDE,WMO,XX,WI,WKI,WNO,WKO,WT,WTE,WI,WRE,WBA,XX
	DB	WSO,WRE,WDE,XX,WZI,WUY,WU,WBU,WN,WDA,WZE,WBC,XX,WPE,WT,WBC
	DB	WI,WKU,WRA,WDE,WMO,XX,WNA,WKA,WMA,WWO,XX,WYO,WN,WDE,XX,XX
	DB	WKO,WRE,WRU,WSI,WNA,WBC,WI,WKU,WZE,WBC,KO,KTI,KBI,WSA,WN,WBC
	DB	WED


;***********************
;*ヤーナ砂漠　セイウチ *
;***********************
M1E0;　せいうちの悶え
    DB   WTN,WTN,WTN,WTN,KO,KU,WTN,WTN
    DB   WTN,WTN,KO,KU,WTN,WTN,WTN,WTN
    DB   WTN,WTN,WTN,WTN,XX,MK5,XX,WTN
    DB   WTN,WTN,XX,MK5,XX,WTN,WTN,WTN
    DB   WED
;
M1E1;　せいうちとまりん
    DB   WA,WRA,WQE,XX,WI,WKE,WNA,WI
    DB   KSE,KI,KU,KTI,WSA,WN,WNE,WMR
    DB   WTI,WOY,WT,WTO,KBI,KT,KKU,KRI
    DB   WSA,WSE,WTI,WAY,WO,WU,WKA,WQE
;
    DB   XX,XX,XX,XX,WU,WN,XX,XX
    DB   XX,WYA,WME,WTO,WKO,WU
    DB   WE2
;
M1E2;　１Ｅ１　はいの時
    DB   KA,KHA,KHA,KHA,KT,WBC,XX,WNE,WO
    DB   WKI,WNO,XX,WI,WI,KKO,WNE
    DB   WED
;
M1E3;　兎が呼んでいる
    DB   WA,WRE,WT,WQE,XX,WWA,WTA,WSI
    DB   WWO,WYO,WN,WDE,WRU,WTN,WTN,WTN
    DB   WKI,WT,WTO,WT2,WI,WTU,WMO,WNO
    DB   KA,KRE,WNE,WTN,WTN,KHU,KHU,KHU
    DB   WED
;
M1E4;１Ｅ１　いいえの時
    DB   WSO,WU,WNE,WMR,XX,WKA,WWA,WI
    DB   WSO,WU,WDA,WKA,WRA,XX,XX,XX
    DB   WSO,WT,WTO,WT2,WNE,WKA,WSE,WTE
    DB   WA,WGE,WYO,WU,WNE,WMR
    DB   WED
;
M1E5;　兎が呼んでる２
    DB   WWA,WTA,WSI,WT2,WDO,WU,WBU,WTU
    DB   WMU,WRA,WHE,WI,WT,WTE,WRU,WWA
    DB   NM,NM,NM,NM,NM,WMO,WT2,WKI,WT
    DB   WTO,WYO,WT,WTE,WNE,WBC,XX
    DB   WED
;
M1E6;  マリンあとの去った後のセイウチ
   DB    KO,KU,KT,WBC,XX,XX,XX,KO,KU,KT,WBC,XX,XX,XX,XX,XX
   DB   XX,MK5,XX,MK5,XX,WBC,XX,MK5,XX,MK5,XX,WBC,XX,XX,XX,XX
   DB   WTN,WTN,WTN,WTN,WTN,XX,MK4,XX,WQE,WQE,XX,XX,XX,XX,XX,XX
   DB   WED

;
;******************
;*釣り人　わらしべ*
;******************
M1E7;  釣りをするひと
    DB   WI,WYA,WA,WT2,WMA,WI,WT,WTA
    DB   WYO,WMR,XX,KSA,KKA,KNA,WNI,XX
    DB   KHA,KRI,WWO,WT2,WTO,WRA,WRE,WTE
    DB   WSI,WMA,WT,WTE,WNE,WTN,WTN,WTN
;
    DB   WI,WTO,WDA,WKE,WT2,WTA,WRA,WSI,WTE
    DB   WO,WRU,WN,WDA,WGA,XX,XX
    DB   WYA,WT,WPA,WRI,WNA,WNI,WMO,XX
    DB   WTU,WRE,WN,WYO,WU,WDA,WYO,WMR
    DB   WED
;
M1E8;  はりを持っている時
    DB   WO,WO,WBC,XX,WKI,WMI,WNO,WMO
    DB   WT,WTE,WI,WRU,WNO,WHA,XX,XX
    DB   WTU,WRI,WBA,WRI,WDE,WHA,WT2,WNA
    DB   WI,WKA,WNE,WQE,XX,XX,XX,XX
;
    DB   WSO,WRE,WWO,XX,WWA,WTA,WSI,WNI,WT2
    DB   WKU,WRE,WN,WKA,WNE,WQE,XX
    DB   WNA,WNI,WKA,WTU,WRE,WTA,WRA,WKO
    DB   WU,WKA,WN,WDE,WDO,WU,WDA,WQE
;
    DB   XX,XX,XX,XX,WU,WN,XX,XX,XX,WI,WYA
    DB   WE2
;
M1E9;  M1E8 はいの時
    DB   WDE,WHA,WT2,KPU,KRO,WNO,WWA,WZA
    DB   WTO,WI,WU,WYA,WTU,WWO,XX,XX
    DB   WSI,WKA,WTO,XX,WMI,WTE,WI,WNA,WSA,WI,WBC
    DB   WED
;
M1EA;  M1E8 いいえのとき
    DB   WMO,WT,WTO,WT2,WYA,WSA,WSI,WSA
    DB   WWO,XX,WMO,WTA,WNA,WI,WTO,XX
    DB   WDA,WME,WDA,WYO,WBC
    DB   WED
;
M1EB;  釣れた時
    DB   WO,WT,WBC,XX,XX,WKO,WRE,WHA
    DB   WDE,WKA,WI,WZO,WBC,XX,XX,XX
    DB   WDE,WKA,WI,WT,WT2,WDE,WKA,WI
    DB   WZO,WBC,XX,XX,XX,XX,XX,XX
;    
    DB   XX,XX,XX,XX,XX,WSO,WRI,WAY
    DB   WB_,WBC,WBC,XX,XX,XX,XX,XX
    DB   XX,XX,XX,XX,XX,XX,XX,XX
    DB   XX,XX,XX,XX,XX,XX,XX,XX
    DB   WED
;
M1EC;  ブラをてにいれた
    DB   ITA,XX,WGA,XX,KPI,KN,KKU,WNO,KBU
    DB   KRA,KZI,KAY,WB_,XX,ITB,XX
    DB   WNI,WNA,WT,WTE,WSI,WMA,WT,WTA,WBC
    DB   KRA,WT2,KRA,KT,KKI,WB_,WBC
    DB   WED
;
M1ED;  交換したあと
    DB   WTU,WGI,WHA,XX,WNA,WNI,WGA,WTU,WRE
    DB   WRU,WKA,XX,XX,XX,XX,XX
    DB   WHO,WN,WTO,WU,WNI,WTA,WNO,WSI,WMI,WDA,WYO,WBC
    DB   WED
;
;+----------------------------------------------+
;|	うちのひと・・・やくそくどおり、	|
;|	そうなんしたみたいだよ。　　　　	|
;|	だれか、たべものをもっていって　	|
;|	たすけにいってくれないかねー。終	|
;+----------------------------------------------+
M1EE	;パパール遭難後の子沢山母さんママーシャ！
	DB	WU,WTI,WNO,WHI,WTO,WTN,WTN,WTN,WYA,WKU,WSO,WKU,WDO,WO,WRI,WT2
	DB	WSO,WU,WNA,WN,WSI,WTA,WMI,WTA,WI,WDA,WYO,WMR,XX,XX,XX,XX
	DB	WDA,WRE,WKA,WT2,WTA,WBE,WMO,WNO,WWO,WMO,WT,WTE,XX,XX,XX,XX
	DB	WTA,WSU,WKE,WNI,WI,WT,WTE,WKU,WRE,WNA,WI,WKA,WNE,WB_,WMR
	DB	WED
;
;+----------------------------------------------+
;|	ウォ、バレちまった。　　　　　　	|
;|	チッ、みとおしレンズか・・・　　	|
;|	オレは、ほかのヤツラとちがって　	|
;|	シズカにくらしたいだけなのにナ。	|
;+----------------------------------------------+
M1EF	;写真９：ゾーラの巻（みとおしレンズで見える）
	DB	KU ,SSO,WT2,KBA,KRE,WTI,WMA,WT ,WTA,WMR,XX ,XX ,XX ,XX ,XX ,XX 
	DB	KTI,KT ,WT2,WMI,WTO,WO ,WSI,KRE,KN ,KZU,WKA,WTN,WTN,WTN,XX ,XX 
	DB	KO ,KRE,WHA,WT2,WHO,WKA,WNO,KYA,KTU,KRA,WTO,WTI,WGA,WT ,WTE,XX 
	DB	KSI,KZU,KKA,WNI,WKU,WRA,WSI,WTA,WI ,WDA,WKE,WNA,WNO,WNI,KNA,WMR
	DB	WED
;
;********************
;*人魚さん　わらしべ*
;********************
M1F0;  人魚
    DB   WI,WRI,WE,WDE,XX,WO,WYO,WI,WDE
    DB   WTA,WRA,XX,WMI,WZU,WGI,WWO
    DB   WNA,WMI,WNI,WT2,WSA,WRA,WWA,WRE
    DB   WTI,WAY,WT,WTA,WNO,WTN,WTN,WTN
;
    DB   WMI,WTU,WKE,WTE,WKU,WRE,WTA,WRA
    DB   WNE,WB_,WT2,WWA,WTA,WSI,WNO,XX
    DB   MK2,MK2,MK2,XX,WA,WTN
    DB   WGE,WTN,WRU,WBC
    DB   WED
;
M1F1;  潜った時
    DB   KKI,KAY,WB_,KT,WBC,XX,KE,KT
    DB   KTI,WBC,XX,KE,KT,KTI,WB_,WBC
    DB   WED
;
M1F2;  みずぎをもっているとき
    DB   WA,WB_,WT,WBC,WSO,WRE,WT2,WWA
    DB   WTA,WSI,WNO,WMI,WZU,WGI,WYO,WBC
    DB   WNE,WE,WNE,WE,WT2,WKA,WE,WSI
    DB   WTE,WBC,WKA,WE,WSI,WTE,WYO,WBC
;
    DB   WSO,WSI,WTA,WRA,WT2,WWA,WTA,WSI
    DB   WNO,WKA,WRA,WDA,WKA,WRA,XX,XX
    DB   W1,WMA,WI,KU,KRO,KKO,WWO,WTO
    DB   WRA,WSE,WTE,WA,WGE,WRU,WKA,WRA
;
    DB   XX,XX,XX,XX,WKA,WE,WSU,WBC,XX,WYA,WDA,WYO
    DB   WE2
M1F3;  1F2 はいの時
    DB   WA,WT2,WA,WN,WT2,W1,WMA,WI
    DB   WDA,WKE,WYO,WN,WBC
    DB   WED
;
M1F4;  1F2 いいえのとき
    DB   KKU,KSU,KN,WT2,KKU,KSU,KN,XX
    DB   WI,WZI,WWA,WRU,WB_,WT,WBC
    DB   WED
;
M1F5;  鱗をてにいれた
    DB   ITB,XX,WWO,WKA,WE,WSI,WTE,WT2
    DB   WNI,WN,WGI,WOY,WNO,KU,KRO,KKO
    DB   ITC,XX,WWO,W1,WMA,WI,WTO,WRA
    DB   WSE,WTE,WMO,WRA,WT,WTA,WBC,XX
;
    DB   WTI,WKU,WSI,WOY,WU,WBC,XX,WU
    DB   WRE,WSI,WI,WZO,WT,WBC
    DB   WED
;
;
;+----------------------------------------------+
;|	じゃ、とるよ！　・・・・だいめい	|
;|	「きょうふ！ワタシはみた！？」終	|
;+----------------------------------------------+
M1F6	;写真11：ユーレイの墓の巻
	DB	WZI,WAY,WT2,WTO,WRU,WYO,WBC,XX ,WTN,WTN,WTN,WTN,WDA,WI ,WME,WI 
	DB	KG1,WKI,WOY,WU ,WHU,WBC,KWA,KTA,KSI,WHA,WMI,WTA,WBC,WQE,KG2
	DB	WED
;
M1F7;　繰り返し
    DB   WMA,WE,WNI,WT2,KE,KT,KTI,WNA
    DB   KGE,KI,KZI,KUY,KTU,KKA,WNI,XX
    DB   KMO,KDE,KRU,WWO,WTA,WNO,WMA,WRE
    DB   WTA,WKO,WTO,WGA,WA,WT,WTA,WWA
;
    DB   WSO,WU,WI,WE,WBA,WT2,KA,KI
    DB   KTU,WMO,WWA,WTA,WSI,WNO,XX,XX
    DB   KU,KRO,KKO,WWO,WHO,WSI,WGA,WT
    DB   WTE,WTA,WWA,WNE,WE,XX,XX,XX
;  
    DB   WYA,WT,WPA,WRI,WT2,KG1,WMI,WTO
    DB   WO,WSI,KRE,KN,KZU,KG2,WNO,XX
    DB   KU,KWA,KSA,XX,WHO,WN,WTO,WNA
    DB   WNO,WKA,WSI,WRA,WTN,WTN,WTN
    DB   WED
;
;+----------------------------------------------+
;|	しゃしんスキスキしゃしんやさん！	|
;|	なんと？！ゾーラがいえのなかに！	|
;|	ほっほー、これはめずらしい。　　	|
;|	これは、しゃしんをとらなくては！	|
;|	さーさ、とりますよー　　だいめい	|
;|	「はっけん！名名名名名ゾーラ」！	|
;+----------------------------------------------+
M1F8	;写真屋
	DB	WSI,WAY,WSI,WN ,KSU,KKI,KSU,KKI,WSI,WAY,WSI,WN ,WYA,WSA,WN ,WBC
	DB	WNA,WN ,WTO,WQE,WBC,KZO,WB_,KRA,WGA,WI ,WE ,WNO,WNA,WKA,WNI,WBC
	DB	WHO,WT ,WHO,WB_,WT2,WKO,WRE,WHA,WME,WZU,WRA,WSI,WI ,WMR,XX ,XX 
	DB	WKO,WRE,WHA,WT2,WSI,WAY,WSI,WN ,WWO,WTO,WRA,WNA,WKU,WTE,WHA,WBC
	DB	WSA,WB_,WSA,WT2,WTO,WRI,WMA,WSU,WYO,WB_,XX ,XX ,WDA,WI ,WME,WI 
	DB	KG1,WHA,WT ,WKE,WN ,WBC,NM ,NM ,NM ,NM ,NM ,KZO,WB_,KRA,KG2,WBC
	DB	WED
;************
;*　立て札２*
;************
M1F9;リチャードの家
    DB   XX,XX,XX,KRI,KTI,KAY,WB_,KDO
    DB   WNO,WBE,WT,WSO,WU,XX,XX,XX
    DB   WED

M1FA  ;カナレットの城  １０分
    DB   XX,XX,XX,KKA,KNA,KRE,KT,KTO
    DB   WNO,WSI,WRO,WMA,WDE,XX,XX,XX
    DB   XX,XX,XX,WA,WTO,XX,W1,W0
    DB   WPU,WN,XX,XR,XX,XU,XX,XX
    DB   WED
;
M1FB  ;カナレットの城　５分  →↑
    DB   XX,XX,XX,KKA,KNA,KRE,KT,KTO
    DB   WNO,WSI,WRO,WMA,WDE,XX,XX,XX
    DB   XX,XX,XX,XX,WA,WTO,XX,W5,WHU
    DB   WN,XX,XR,XX,XX,XX,XX
    DB   WED
;
M1FC  ;カナレットの城　５０歩↑
    DB   XX,XX,XX,KKA,KNA,KRE,KT,KTO
    DB   WNO,WSI,WRO,WMA,WDE,XX,XX,XX
    DB   XX,XX,XX,XX,WA,WTO,XX,W5,W0
    DB   WPO,XX,XU,XX,XX,XX,XX
    DB   WED
;- - - - - - -
;+----------------------------------------------+
;|	「トウルルル・トウルルル・・		|
;|	ツルルル・・ツル　　　ガチャッ		|
;|	はーい　バケットマウスです。		|
;|	まいど。・・ええっと　　プチッ		|
;|	ブー　ブー　ブー　ブー」　？？？	|
;|	ばんごうを、まちがえたみたいだ		|
;+----------------------------------------------+
M1FD
;うるりらじいさん電話メッセージ（バケットマウス）
 DB KG1,KTO,KU,KRU,KRU,KRU,WTN,KTO,KU,KRU,KRU,KRU,WTN,WTN,XX,XX
 DB KTU,KRU,KRU,KRU,WTN,WTN,KTU,KRU,XX,XX,XX,KGA,KTI,KAY,KT,XX
 DB WHA,WB_,WB_,WI,XX,KBA,KKE,KT,KTO,KMA,KU,KSU,WDE,WSU,WMR,XX
 DB WMA,WI,WDO,WMR,WTN,WTN,WE,WE,WT,WTO,XX,XX,KPU,KTI,KT,XX
 DB KBU,WB_,XX,KBU,WB_,XX,KBU,WB_,XX,KBU,WB_,KG2,XX,WQE,WQE,WQE 
 DB WBA,WN,WGO,WU,WWO,WT2,WMA,WTI,WGA,WE,WTA,WMI,WTA,WI,WDA,XX
	DB	WED
;- - - - - - -
M1FE
;ハートのかけら入りの魚を釣ったとき
  DB  WO,WT,WBC,WKO,WRE,WHA,WT2,WDE,WKA,WI,WBC,XX,XX,WSI,WKA,WMO
  DB  KHA,WB_,KTO,WNO,WKA,WKE,WRA,WWO,XX,WMO,WT,WTE,WI,WTA,WBC,XX
  DB  WSA,WRA,WNI,WT2,WSI,WOY,WU,WKI,WN,W2,W0,KRU,KPI,WB_,WDA,WBC
;
  DB  WMA,WTA,WSU,WRU,WKA,WNE,WQE,XX,XX,XX,XX,XX,XX,XX,XX,XX
  DB  XX,XX,XX,XX,WMO,WTI,WRO
  DB  WN,XX,WKE,WT,WKO,WU,WDE,WSU
  DB  WE2
M1FF
;ハートのかけら入りの魚を釣ってうつわが増えたとき
  DB  WO,WT,WBC,WKO,WRE,WHA,WT2,WDE,WKA,WI,WBC,XX,XX,WSI,WKA,WMO
  DB  KHA,WB_,KTO,WNO,WKA,WKE,WRA,WWO,XX,WMO,WT,WTE,WI,WTA,WBC,XX
  DB  WKO,WRE,WDE,WT2,WU,WTU,WWA,WGA,W1,KKO,WHU,WE,WTA,WBC,XX,XX
  DB  WSA,WRA,WNI,WT2,WSI,WOY,WU,WKI,WN,W2,W0,KRU,KPI,WB_,WDA,WBC
;
  DB  WMA,WTA,WSU,WRU,WKA,WNE,WQE,XX,XX,XX,XX,XX,XX,XX,XX,XX
  DB  XX,XX,XX,XX,WMO,WTI,WRO
  DB  WN,XX,WKE,WT,WKO,WU,WDE,WSU
  DB  WE2
;=================================================
BANK14	GROUP	$14
;(CGB)	ORG	$6000
; ***************
; *　村の図書館 *
; ***************
;+----------------------------------------------+
;|	　　　「タテのつかいかた」		|
;|	このほんを　よもうかな？		|
;|	　　　＊よむ　　　よまない		|
;+----------------------------------------------+
M200	;　盾の使い方
    DB   XX,XX,XX,KG1,KTA,KTE,WNO,WTU
    DB   WKA,WI,WKA,WTA,KG2,XX,XX,XX
    DB   WKO,WNO,WHO,WN,WWO,XX,WYO,WMO,WU
    DB   WKA,WNA,WQE,XX,XX,XX,XX
;
    DB   XX,XX,XX,XX,WYO,WMU,XX,XX,XX,WYO,WMA,WNA,WI
    DB   WE2
;
;+----------------------------------------------+
;|	タテをもっているほうの　ボタンを	|
;|	おしつづければ、そのあいだ		|
;|	テキのこうげきをふせいだり、		|
;|	テキをはじいたりできます。		|
;|	さらに、ビームをふせげる		|
;|	「かがみのタテ」があるそうです。	|
;+----------------------------------------------+
M201	; ２００　はいの時
    DB   KTA,KTE,WWO,WMO,WT,WTE,WI,WRU
    DB   WHO,WU,WNO,XX,KBO,KTA,KN,WWO
    DB   WO,WSI,WTU,WDU,WKE,WRE,WBA,WT2
    DB   WSO,WNO,WA,WI,WDA,XX,XX,XX
;
    DB   KTE,KKI,WNO,WKO,WU,WGE,WKI,WWO
    DB   WHU,WSE,WI,WDA,WRI,WT2,XX,XX
    DB   KTE,KKI,WWO,WHA,WZI,WI,WTA,WRI
    DB   WDE,WKI,WMA,WSU,WMR,XX,XX,XX
;
    DB   WSA,WRA,WNI,WT2,KBI,WB_,KMU,WMO
    DB   WHU,WSE,WGE,WRU,XX,XX,XX,XX
    DB   KG1,WKA,WGA,WMI,WNO,KTA,KTE,KG2
    DB   WGA,WA,WRU,WSO,WU,WDE,WSU,WMR
    DB   WED
;
;+----------------------------------------------+
;|	「アイテムのセレクトほうほう」		|
;|	このほんを　よもうかな？		|
;|	　　　＊よむ　　　よまない		|
;+----------------------------------------------+
M202	;　アイテムのセレクト方法
    DB   KG1,KA,KI,KTE,KMU,WNO,KSE,KRE
    DB   KKU,KTO,WHO,WU,WHO,WU,KG2,XX
    DB   WKO,WNO,WHO,WN,WWO,XX,WYO,WMO,WU
    DB   WKA,WNA,WQE,XX,XX,XX,XX
;
    DB   XX,XX,XX,XX,WYO,WMU,XX,XX,XX,WYO,WMA,WNA,WI
    DB   WE2
;
;+----------------------------------------------+
;|	サブがめんで、Ａ　Ｂ　それぞれの	|
;|	ボタンに、すきなアイテムを		|
;|	せんたくすることが、できます。		|
;|	たとえば、ケンは　もたないで		|
;|	たたかうことも　できるわけです。	|
;|	いろいろ、おためしあれ！		|
;+----------------------------------------------+
M203	;　Ｍ２０２　はいの時
    DB   KSA,KBU,WGA,WME,WN,WDE,WT2,RA
    DB   XX,RB,XX,WSO,WRE,WZO,WRE,WNO
    DB   KBO,KTA,KN,WNI,WT2,WSU,WKI,WNA
    DB   KA,KI,KTE,KMU,WWO,XX,XX,XX
;
    DB   WSE,WN,WTA,WKU,WSU,WRU,WKO,WTO
    DB   WGA,WT2,WDE,WKI,WMA,WSU,WMR,XX
    DB   WTA,WTO,WE,WBA,WT2,KKE,KN,WHA
    DB   XX,WMO,WTA,WNA,WI,WDE,XX,XX
;
    DB   WTA,WTA,WKA,WU,WKO,WTO,WMO,XX
    DB   WDE,WKI,WRU,WWA,WKE,WDE,WSU,WMR
    DB   WI,WRO,WI,WRO,WT2,WO,WTA,WME
    DB   WSI,WA,WRE,WBC
    DB   WED
;
;+----------------------------------------------+
;|	　　「マップがめんとメモ」		|
;|	このほんを　よもうかな？		|
;|	　　　＊よむ　　　よまない		|
;+----------------------------------------------+
M204	;　マップ画面とメモ
    DB   XX,XX,KG1,KMA,KT,KPU,WGA,WME
    DB   WN,WTO,KME,KMO,KG2,XX,XX,XX
    DB   WKO,WNO,WHO,WN,WWO,XX,WYO,WMO,WU
    DB   WKA,WNA,WQE,XX,XX,XX,XX
;
    DB   XX,XX,XX,XX,WYO,WMU,XX,XX,XX,WYO,WMA,WNA,WI
    DB   WE2
;
;+----------------------------------------------+
;|	セレクトボタンをおすと、しまの		|
;|	ちずをみることが、できます。		|
;|	くろくなって　みえないところは、	|
;|	まだ、いってないところです。		|
;|	カーソルをあわせて　Ａ　ボタンを	|
;|	おせば、ちめいや　フクロウの		|
;|	メッセージなどをよむことができ、	|
;|	メモをとらなくてもよいわけです。	|
;|	ううーん　べんり！			|
;+----------------------------------------------+
M205	;　２０４　はいの時
    DB   KSE,KRE,KKU,KTO,KBO,KTA,KN,WWO
    DB   WO,WSU,WTO,WT2,WSI,WMA,WNO,XX
    DB   WTI,WZU,WWO,WMI,WRU,WKO,WTO,WGA
    DB   WT2,WDE,WKI,WMA,WSU,WMR,XX,XX
;
    DB   WKU,WRO,WKU,WNA,WT,WTE,XX,WMI,WE
    DB   WNA,WI,WTO,WKO,WRO,WHA,WT2
    DB   WMA,WDA,WT2,WI,WT,WTE,WNA,WI
    DB   WTO,WKO,WRO,WDE,WSU,WMR,XX,XX
;
    DB   KKA,WB_,KSO,KRU,WWO,WA,WWA,WSE
    DB   WTE,XX,RA,XX,KBO,KTA,KN,WWO
    DB   WO,WSE,WBA,WT2,WTI,WME,WI,WYA
    DB   XX,KHU,KKU,KRO,KU,WNO,XX,XX
;
    DB   KME,KT,KSE,WB_,KZI,WNA,WDO,WWO
    DB   WYO,WMU,WKO,WTO,WGA,WDE,WKI,WT2
    DB   KME,KMO,WWO,WTO,WRA,WNA,WKU,WTE
    DB   WMO,WYO,WI,WWA,WKE,WDE,WSU,WMR
;
    DB   WU,WU,WB_,WB_,WN,XX,WBE,WN,WRI,WBC
    DB   WED
;
;+----------------------------------------------+
;|	「ひでん！　かいてんぎり」		|
;|	このほんを　よもうかな？		|
;|	　　　＊よむ　　　よまない		|
;+----------------------------------------------+
M206	;　回転切り
    DB   XX,KG1,WHI,WDE,WN,WBC,XX,WKA
    DB   WI,WTE,WN,WGI,WRI,KG2,XX,XX
    DB   WKO,WNO,WHO,WN,WWO,XX,WYO,WMO,WU
    DB   WKA,WNA,WQE,XX,XX,XX,XX
;
    DB   XX,XX,XX,XX,WYO,WMU,XX,XX,XX,WYO,WMA,WNA,WI
    DB   WE2
;
;+----------------------------------------------+
;|	あるいちぞくの　ち　をひくもの		|
;|	だけにつたわる、ひけんがある		|
;|	ケンを　もっているほうのボタンを	|
;|	おしつづけ、チカラをためろ！		|
;|	たまったら、ボタンをはなすのだ！	|
;|	はたして、あなたは、できるか？		|
;+----------------------------------------------+
M207	;　２０６　はいの時
    DB   WA,WRU,WI,WTI,WZO,WKU,WNO,XX
    DB   WTI,XX,WWO,WHI,WKU,WMO,WNO,XX
    DB   WDA,WKE,WNI,WTU,WTA,WWA,WRU,WT2
    DB   WHI,WKE,WN,WGA,WA,WRU,WMR,XX
;
    DB   KKE,KN,WWO,XX,WMO,WT,WTE,WI
    DB   WRU,WHO,WU,WNO,KBO,KTA,KN,WWO
    DB   WO,WSI,WTU,WDU,WKE,WT2,KTI,KKA
    DB   KRA,WWO,WTA,WME,WRO,WBC,XX,XX
;
    DB   WTA,WMA,WT,WTA,WRA,WT2,KBO,KTA
    DB   KN,WWO,WHA,WNA,WSU,WNO,WDA,WBC
    DB   WHA,WTA,WSI,WTE,WT2,WA,WNA,WTA
    DB   WNI,WHA,WT2,WDE,WKI,WRU,WKA,WQE
    DB   WED
;
;+----------------------------------------------+
;|	　　　「ワープのほうそく」		|
;|	このほんを　よもうかな？		|
;|	　　　＊よむ　　　よまない		|
;+----------------------------------------------+
M208	;　ワープの法則
    DB   XX,XX,XX,KG1,KWA,WB_,KPU,WNO
    DB   WHO,WU,WSO,WKU,KG2,XX,XX,XX
    DB   WKO,WNO,WHO,WN,WWO,XX,WYO,WMO,WU
    DB   WKA,WNA,WQE,XX,XX,XX,XX
;
    DB   XX,XX,XX,XX,WYO,WMU,XX,XX,XX,WYO,WMA,WNA,WI
    DB   WE2
;
;+----------------------------------------------+
;|	このしまには、「ワープのあな」		|
;|	というものが、あります。		|
;|	このあなにとびこめば、ほかの		|
;|	あなへワープすることができます。	|
;|	ワープしたばしょのあなに、とびこ	|
;|	めば、つぎのあなにワープします。	|
;|	ただし、１どもみたことのない		|
;|	あなには、ワープできません！		|
;+----------------------------------------------+
M209	;　２０８　はいの時
    DB   WKO,WNO,WSI,WMA,WNI,WHA,WT2,KG1
    DB   KWA,WB_,KPU,WNO,WA,WNA,KG2,XX
    DB   WTO,WI,WU,WMO,WNO,WGA,WT2,WA
    DB   WRI,WMA,WSU,WMR,XX,XX,XX,XX
;
    DB   WKO,WNO,WA,WNA,WNI,WTO,WBI,WKO
    DB   WME,WBA,WT2,WHO,WKA,WNO,XX,XX
    DB   WA,WNA,WHE,KWA,WB_,KPU,WSU,WRU
    DB   WKO,WTO,WGA,WDE,WKI,WMA,WSU,WMR
;
    DB   KWA,WB_,KPU,WSI,WTA,WBA,WSI,WOY
    DB   WNO,WA,WNA,WNI,WT2,WTO,WBI,WKO
    DB   WME,WBA,WT2,WTU,WGI,WNO,WA,WNA
    DB   WNI,KWA,WB_,KPU,WSI,WMA,WSU,WMR
;
    DB   WTA,WDA,WSI,WT2,W1,WDO,WMO,WMI
    DB   WTA,WKO,WTO,WNO,WNA,WI,XX,XX
    DB   WA,WNA,WNI,WHA,WT2,KWA,WB_,KPU
    DB   WDE,WKI,WMA,WSE,WN,WBC,XX,XX
    DB   WED
;
;+----------------------------------------------+
;|	　　「バクダンは　かつげる」		|
;|	このほんを　よもうかな？		|
;|	　　　＊よむ　　　よまない		|
;+----------------------------------------------+
M20A	;　爆弾は担げる
    DB   XX,XX,KG1,KBA,KKU,KDA,KN,WHA
    DB   XX,WKA,WTU,WGE,WRU,KG2,XX,XX
    DB   WKO,WNO,WHO,WN,WWO,XX,WYO,WMO,WU
    DB   WKA,WNA,WQE,XX,XX,XX,XX
;
    DB   XX,XX,XX,XX,WYO,WMU,XX,XX,XX,WYO,WMA,WNA,WI
    DB   WE2
;
;+----------------------------------------------+
;|	おいた　バクダン　をもういちど		|
;|	ボタンをおせば、かつげるのです。	|
;|	かついだバクダンは、さらにボタン	|
;|	をおして、なげられます！		|
;|	　　　　　しってた？			|
;+----------------------------------------------+
M20B	;　２０Ａ　はいの時
    DB   WO,WI,WTA,XX,KBA,KKU,KDA,KN
    DB   WHA,XX,WMO,WU,WI,WTI,WDO,XX
    DB   KBO,KTA,KN,WWO,WO,WSE,WBA,WT2
    DB   WKA,WTU,WGE,WRU,WNO,WDE,WSU,WMR
;
    DB   WKA,WTU,WI,WDA,KBA,KKU,KDA,KN
    DB   WHA,WT2,WSA,WRA,WNI,KBO,KTA,KN
    DB   WWO,WO,WSI,WTE,WT2,WNA,WGE,WRA
    DB   WRE,WMA,WSU,WBC,XX,XX,XX,XX
;U
    DB   XX,XX,XX,XX,XX,WSI,WT,WTE,WTA,WQE
    DB   WED
;
;+----------------------------------------------+
;|	　　「コホリントしまのちず」		|
;|	カーソルをうごかし　Ａ　ボタンを	|
;|	おせば、ちめいがしらべられます。	|
;|						|
;|	このちずを　みようかな？		|
;|	　　　＊みる　　　みない		|
;+----------------------------------------------+
M20C	;　コホリント島の地図
    DB   XX,XX,KG1,KKO,KHO,KRI,KN,KTO
    DB   WZI,WMA,WNO,WTI,WZU,KG2,XX,XX
    DB   KKA,WB_,KSO,KRU,WWO,WU,WGO,WKA
    DB   WSI,XX,RA,XX,KBO,KTA,KN,WWO
;
    DB   WO,WSE,WBA,WT2,WTI,WME,WI,WGA
    DB   WSI,WRA,WBE,WRA,WRE,WMA,WSU,WMR
    DB   XX,XX,XX,XX,XX,XX,XX,XX
    DB   XX,XX,XX,XX,XX,XX,XX,XX
;
    DB   WKO,WNO,WTI,WZU,WWO,XX,WMI,WYO,WU
    DB   WKA,WNA,WQE,XX,XX,XX,XX
    DB   XX,XX,XX,XX,WMI,WRU,XX,XX,XX,WMI,WNA,WI
    DB   WE2
;
;+----------------------------------------------+
;|	　　　「ヒミツのほん？！」		|
;|	このほんよみたい・・・？		|
;|	　　　＊うん　　べ、べつに		|
;+----------------------------------------------+
M20D	;　秘密の本
    DB   XX,XX,XX,KG1,KHI,KMI,KTU,WNO
    DB   WHO,WN,WQE,WBC,KG2,XX,XX,XX
    DB   WKO,WNO,WHO,WN,WYO,WMI,WTA,WI
    DB   WTN,WTN,WTN,WQE,XX,XX,XX,XX
;
    DB   XX,XX,XX,XX,WU,WN,WBC,XX,XX,WBE,WT2,WBE,WTU,WNI
    DB   WE2
;
;+----------------------------------------------+
;|	おおっと！　こ、これはっ！		|
;|	・・・・・・・・・・・・・・・・	|
;|	・・・・・・・・・・・・・・・・	|
;|	このほんは、「みとおしレンズ」		|
;|	が、なければ　よめません。		|
;|	　　　ゴメンね！			|
;+----------------------------------------------+
M20E	;　２０Ｄ　はいの時（虫メガネ無し）
    DB   WO,WO,WT,WTO,WBC,XX,WKO,WT2
    DB   WKO,WRE,WHA,WT,WBC,XX,XX,XX
    DB   WTN,WTN,WTN,WTN,WTN,WTN,WTN,WTN
    DB   WTN,WTN,WTN,WTN,WTN,WTN,WTN,WTN
;
    DB   WTN,WTN,WTN,WTN,WTN,WTN,WTN,WTN
    DB   WTN,WTN,WTN,WTN,WTN,WTN,WTN,WTN
    DB   WKO,WNO,WHO,WN,WHA,WT2,KG1,WMI
    DB   WTO,WO,WSI,KRE,KN,KZU,KG2,XX
;
    DB   WGA,WT2,WNA,WKE,WRE,WBA,XX,WYO,WME
    DB   WMA,WSE,WN,WMR,XX,XX,XX
    DB   XX,XX,XX,KGO,KME,KN,WNE,WBC
    DB   WED
;
M20F;	Not used
;;;;;;;;M20F;　２０Ｄ　はいの時（虫メガネ有り）
;;;;;;;;    DB   KGA,KNO,KN,WNO,WZI,WYA,WKU,WTE
;;;;;;;;    DB   WN,WHA,WT2,XX,XX,XX,XX,XX
;;;;;;;;    DB   KG1,WGI,WN,WNO,WYA,KG2,WDE,WSU,WMR
;;;;;;;;    DB   WED
;
;********************
;*オプション　幽霊君*
;********************
M210
;　幽霊君　１　家を出てから
    DB   WTN,WTN,WTN,WO,WHA,WKA,WTN,WTN
    DB   WTU,WRE,WTE,WT,WTE,WTN,WTN,WTN
    DB   XX,XX,XX,XX,XX,XX,XX,XX
    DB   XX,XX,XX,XX,XX,XX,XX,XX
;
    DB   WTN,WTN,WTN,KBO,KKU,WNO,WTN,WTN
    DB   WTN,WO,WHA,WKA,WTN,WTN,WTN,WTN
    DB   XX,XX,XX,XX,XX,XX,XX,XX
    DB   XX,XX,XX,XX,XX,XX,XX,XX
    DB   WED
;
M211
;　幽霊君　２
    DB   WTN,WTN,WTN,WO,WU,WTI,WTN,WTN
    DB   WTN,WTU,WRE,WTE,WT,WTE,WTN,WTN
    DB   XX,XX,XX,XX,XX,XX,XX,XX
    DB   XX,XX,XX,XX,XX,XX,XX,XX
;   
    DB   WTN,WTN,WI,WRI,WE,WNO,WTN
    DB   WTN,WTN,WO,WU,WTI,WTN,WTN,WTN
    DB   XX,XX,XX,XX,XX,XX,XX,XX
    DB   XX,XX,XX,XX,XX,XX,XX,XX
    DB   WED
;
M212
;　幽霊君　３　ダンジョンに入ろうとした時
    DB   WTN,WTN,WTN,WI,WYA,WBC,WTN,WTN
    DB   WSO,WKO,WTN,WTN,WI,WYA,WTN,WTN
    DB   XX,XX,XX,XX,XX,XX,XX,XX
    DB   XX,XX,XX,XX,XX,XX,XX,XX
    DB   WED
;
M213
;　幽霊君　４　家の近く
    DB   WTN,WTN,WTN,WTN,WKO,WKO,WBC,WTN
    DB   WTN,WHA,WI,WT,WTE,WTN,WTN,WTN
    DB   XX,XX,XX,XX,XX,XX,XX,XX
    DB   XX,XX,XX,XX,XX,XX,XX,XX
;
    DB   WTN,WTN,WTN,KBO,KKU,WNO,WU,WTI
    DB   WTN,WTN,WTN,WTN,WTN,WTN,WTN,WTN
    DB   XX,XX,XX,XX,XX,XX,XX,XX
    DB   XX,XX,XX,XX,XX,XX,XX,XX
    DB   WED
;
M214
;　幽霊君　５　家の中
    DB   WTN,WTN,WTN,WTN,WTN,WNA,WTU,WKA
    DB   WSI,WI,WTN,WTN,WTN,WTN,WTN,WTN
    DB   XX,XX,XX,XX,XX,XX,XX,XX
    DB   XX,XX,XX,XX,XX,XX,XX,XX
;
    DB   WTN,WTN,WTN,WTN,WTN,WKA,WWA,WT
    DB   WTE,WNA,WI,WTN,WTN,WTN,WTN,WTN
    DB   XX,XX,XX,XX,XX,XX,XX,XX
    DB   XX,XX,XX,XX,XX,XX,XX,XX
;
    DB   WTN,WTN,WTN,WTN,KU,KT,KU,KT
    DB   KU,KT,KU,KT,WTN,WTN,WTN,WTN
    DB   XX,XX,XX,XX,XX,XX,XX,XX
    DB   XX,XX,XX,XX,XX,XX,XX,XX
    DB   WED
;
M215
;　幽霊君　６　家の中
    DB   WTN,WTN,WTN,WTN,WMO,WU,WTN,WTN
    DB   WTN,WI,WI,WTN,WTN,WTN,WTN,WTN
    DB   XX,XX,XX,XX,XX,XX,XX,XX
    DB   XX,XX,XX,XX,XX,XX,XX,XX
;
    DB   WTN,WTN,WTN,WO,WHA,WKA,WTN,WTN
    DB   WTN,WKA,WE,WRU,WTN,WTN,WTN,WTN
    DB   XX,XX,XX,XX,XX,XX,XX,XX
    DB   XX,XX,XX,XX,XX,XX,XX,XX
;
    DB   WTN,WTN,WTN,WO,WHA,WKA,WTN,WTN
    DB   WTU,WRE,WTE,WT,WTE,WTN,WTN,WTN
    DB   XX,XX,XX,XX,XX,XX,XX,XX
    DB   XX,XX,XX,XX,XX,XX,XX,XX
    DB   WED
;
M216
;　幽霊君　７　バイバイ
    DB   WTN,WTN,WTN,WTN,WTN,WTN,WA,WRI
    DB   WGA,WTO,WTN,WTN,WTN,WTN,WTN,WTN
    DB   XX,XX,XX,XX,XX,XX,XX,XX
    DB   XX,XX,XX,XX,XX,XX,XX,XX
;
    DB   WTN,WTN,WTN,WTN,KBO,KKU,WNO,XX
    DB   WU,WTI,WNO,WTN,WTN,WTN,WTN,WTN
    DB   XX,XX,XX,XX,XX,XX,XX,XX
    DB   XX,XX,XX,XX,XX,XX,XX,XX
;
    DB   WTN,WTN,WTN,WTN,KTU,KBO,WTN,WTN
    DB   WTN,WSI,WRA,WBE,WTE,WTN,WTN,WTN
    DB   XX,XX,XX,XX,XX,XX,XX,XX
    DB   XX,XX,XX,XX,XX,XX,XX,XX
;
    DB   WTN,WTN,WTN,WTN,WTN,KBA,KI,XX
    DB   KBA,KI,WTN,WTN,WTN,WTN,WTN,WTN
    DB   XX,XX,XX,XX,XX,XX,XX,XX
    DB   XX,XX,XX,XX,XX,XX,XX,XX
    DB   WED
;
;**********************************
;*秘密の本　ラストダンジョンヒント*
;**********************************
M217;秘密の本１（虫メガネ有り）
    DB   WME,WGU,WRU,WME,WGU,WRU,XX,KTA
    DB   KMA,KGO,WNO,XX,KRO,KU,KKA,XX
    DB   XX,XL,XX,XL,XX,XU,XX,XR
    DB   XX,XR,XX,XU,XX,XL,XX,XU
;
    DB   WQE,WQE,WTN,WTN,WTN,WU,WB_,WN   
    DB   XX,WHI,WMI,WTU,WNO,XX,XX,XX
    DB   KNI,KO,KI,WGA,XX,WSU,WRU,KZO,WMR,XX,XX
    DB   WED
;
M218;秘密の本２（虫メガネ有り）
    DB   WME,WGU,WRU,WME,WGU,WRU,XX,KTA
    DB   KMA,KGO,WNO,XX,KRO,KU,KKA,XX
    DB   XX,XR,XX,XU,XX,XU,XX,XR
    DB   XX,XU,XX,XU,XX,XR,XX,XU
;
    DB   WQE,WQE,WTN,WTN,WTN,WU,WB_,WN   
    DB   XX,WHI,WMI,WTU,WNO,XX,XX,XX
    DB   KNI,KO,KI,WGA,XX,WSU,WRU,KZO,WMR,XX,XX
    DB   WED
;
M219;秘密の本３（虫メガネ有り）
    DB   WME,WGU,WRU,WME,WGU,WRU,XX,KTA
    DB   KMA,KGO,WNO,XX,KRO,KU,KKA,XX
    DB   XX,XL,XX,XU,XX,XR,XX,XU
    DB   XX,XL,XX,XU,XX,XR,XX,XU
;
    DB   WQE,WQE,WTN,WTN,WTN,WU,WB_,WN   
    DB   XX,WHI,WMI,WTU,WNO,XX,XX,XX
    DB   KNI,KO,KI,WGA,XX,WSU,WRU,KZO,WMR,XX,XX
    DB   WED
;
M21A;秘密の本４（虫メガネ有り）
    DB   WME,WGU,WRU,WME,WGU,WRU,XX,KTA
    DB   KMA,KGO,WNO,XX,KRO,KU,KKA,XX
    DB   XX,XR,XX,XR,XX,XR,XX,XR
    DB   XX,XU,XX,XU,XX,XU,XX,XU
;
    DB   WQE,WQE,WTN,WTN,WTN,WU,WB_,WN   
    DB   XX,WHI,WMI,WTU,WNO,XX,XX,XX
    DB   KNI,KO,KI,WGA,XX,WSU,WRU,KZO,WMR,XX,XX
    DB   WED
;
;-------------------------------------------------------------

M21B;マリンオプション洞窟（おそいぞ！）
    DB   WTN,WTN,WTN,WO,WSO,WKA,WT,WTA,WNE,WMR,XX,XX,WMO,WU,XX,XX
    DB   WKA,WE,WT,WTE,WKO,WNA,WI,WKA,WTO,WO,WMO,WT,WTA,WTN,WTN,WTN
    DB   WED
;
M21C;マリンオプション洞窟（ハートなくなりそう）
    DB    KKI,KAY,WB_,WB_,WB_,WT,WBC,WBC,XX,WSU,WGO,WI,KKE,KGA,KT,WBC
    DB    WMO,WU,WT,WBC,XX,KMU,KTI,KAY,WSI,WTI,WAY,WDA,WME,WBC,XX
    DB    WED
;
M21D;マリンオプション洞窟（普通）
    DB    WA,WT,WBC,XX,WO,WKA,WE,WRI,NM,NM,NM,NM,NM,XX,XX,XX
    DB    KKE,KGA,WSI,WNA,WKA,WT,WTA,WQE
    DB    WED
;
M21E;マリンオプション洞窟（死にぞこない）
    DB    XX,XX,XX,XX,XX,XX,XX,XX
    DB    XX,XX,XX,XX,XX,XX,XX,XX
    DB    XX,XX,XX,WI,WWA,WN
    DB    WKO,WT,WTI,WAY,WNA,WI,WTN,WTN,WTN,WTN
;
    DB    WE,WT,WBC,WQE,WNA,WNI,WBC,WQE
    DB    WWA,WTA,WSI,WNA,WN,WNI,WMO,XX
    DB    WKI,WKO,WE,WNA,WI,WWA,WYO,WT
    DB    WBC,XX,WHO,WN,WTO,WYO,WBC,XX
    DB    WED
M21F;	Not used
M220;　４つ子ＤＥＭＯ　ワンワンさらわれた
    DB   WA,WT,WBC,XX,WNI,WI,WTI,WAY
    DB   WN,WT2,WTA,WI,WHE,WN,WBC,XX
    DB   WTA,WI,WHE,WN,WDA,WYO,WB_,WBC
    DB   XX,WA,WNO,WNE,WA,WNO,WNE,XX
;
    DB   WSO,WU,WNA,WN,WDA,WYO,WBC,XX
    DB   WTA,WI,WHE,WN,WNA,WN,WDA,WYO
    DB   KMO,KRI,KBU,KRI,KN,WGA,WT2,XX
    DB   WMU,WRA,WNI,WYA,WT,WTE,WTN,WTN
;
    DB   WA,WNO,WNE,WT2,WMO,WRI,KBU,WRI
    DB   KN,WGA,WT2,WTA,WKU,WSA,WN,XX
    DB   WHA,WI,WT,WTE,WKI,WTA,WN,WDA
    DB   WBC,XX,WSO,WI,WDE,WNE,WTN,WTN
;
    DB   WSO,WU,WNA,WN,WDA,WYO,WBC,XX
    DB   WSU,WGU,WSO,WKO,WNO,WI,WE,WNI
    DB   WA,WTU,WMA,WT,WTE,WKI,WTN,WTN
    DB   WDA,WKA,WRA,WNE,WT2,WA,WNO,WNE
;
    DB   KWA,KN,KWA,KN,WNO,WI,WRU,WI
    DB   WE,WDE,WNE,WT2,WNA,WN,WKA,WT2
    DB   WYA,WT,XX,WSO,WU,WSO,WU,XX
    DB   WSO,WU,WNA,WN,WDA,WYO,WBC,XX
;
    DB   KMO,KRI,WBU,WRI,KN,WNO,WYA,WTU
    DB   WNA,WN,WTO,XX,WA,WNO,WNE,XX
    DB   WDA,WKA,WRA,WNE,WT2,WA,WNO,WNE
    DB   WTN,WTN,WTN,WTN,WTN,WTN,WTN,WTN
;
    DB   XX,XX,XX,XX,XX,XX,XX,XX  
    DB   XX,XX,XX,XX,XX,XX,XX,XX
    DB   XX,XX,XX,XX,XX,XX,XX,XX  
    DB   XX,XX,XX,XX,XX,XX,XX,XX
;
    DB   WZI,WBU,WN,WDE,WT2,WTA,WSI,WKA
    DB   WME,WTA,WHO,WU,WGA,XX,XX,XX
    DB   WHA,WYA,WSO,WU,WDE,WA,WRU,WMR
    DB   WED
;
;********************
;*ブーメラン交換さん*
;********************
M221;　ブーメラン交換さん１
    DB   WHA,WMA,WBE,WDE,WT2,WI,WB_,WMO
    DB   WN,WHI,WRO,WT,WTA,WYO,WTN,WTN
    DB   RB,KBO,KTA,KN,WNO,KA,KI,KTE
    DB   KMU,WTO,WTO,WRI,WKA,WE,WYO,WU
;
    DB   XX,XX,XX,XX,WI,WI,WYO,XX
    DB   XX,WYA,WDA,WNE,XX,XX
    DB   WE2
;
M222;　ブーメラン交換さん２　（２２１はいの時）
    DB   WZI,WAY,WA,WT2,WKO,WU,WKA,WN
    DB   WDA,WBC,XX,XX,XX,XX,XX,XX
    DB   WI,WRA,WNA,WKU,WNA,WT,WTA,WRA
    DB   XX,WMA,WTA,WKI,WTE,KNE,XX,XX
    DB   WED
;
M223;　ブーメラン交換さん３　（２２１いいえの時）
    DB   WA,WT2,WSO,WU,WTN,WTN,WTN
    DB   WED
;
M224;　ブーメランと交換した
    DB   WTE,WMO,WTI,WNO,KA,KI,KTE,KMU
    DB   WTO,XX,WKO,WU,WKA,WN,WDE,XX
    DB   KBU,WB_,KME,KRA,KN,WWO,XX,WTE
    DB   WNI,WI,WRE,WTA,WBC,XX,XX,XX
    DB   WED
;
M225;　交換さん　その４　（ブーメラン持ってる時）
    DB   KBU,WB_,KME,KRA,KN,XX,WKA,WE,WSI
    DB   WTE,WTI,WOY,WB_,WDA,WI,WMR
    DB   WKO,WU,WKA,WN,WSI,WTA,WT2,KA
    DB   KI,KTE,KMU,WKA,WE,WSU,WKA,WRA
;
    DB   XX,XX,XX,XX,WI,WI,WYO
    DB   XX,XX,WYA,WDA,WNE
    DB   WE2
;
M226;　アイテム帰ってきた
    DB   KA,KI,KTE,KMU,WGA,WT2,WKA,WE
    DB   WT,WTE,WKI,WTA,WBC,XX,XX,XX
    DB   KBU,WB_,KME,KRA,KN,WHA,WT2,WO
    DB   WKA,WE,WSI,WSI,WTA,WMR
    DB   WED
;
M227;　剣、盾、ブレスレットと交換しようとした時
    DB   WA,WT,WBC,WTN,WTN,WTN,WSO,WNO
    DB   KA,KI,KTE,KMU,WHA,XX,KDA,KME
    DB   WHO,WKA,WNO,WNI,WSI,WTE,KTI,KOY
    DB   WB_,KDA,KI,WMR,XX,XX,XX,XX
    DB   WED
;
;+----------------------------------------------+
;|	「チャッ　ジーコ　ジーコ　ジーコ	|
;|	・・・　プルルル　プルル　ガチャ	|
;|	うるりらじゃ。　フム、「はっぱ」	|
;|	が、５まいそろわんとな・・・？　	|
;|	うーむ・・・　テキの　へいしが　	|
;|	もっておるのかも　しれんのう。　	|
;|	　　うるりらー　　ガチャッ！」終	|
;+----------------------------------------------+
M228	;　黄金の葉っぱ編（１）
	DB	KG1,KTI,KAY,KT,XX,KZI,WB_,KKO,XX,KZI,WB_,KKO,XX,KZI,WB_,KKO
	DB	WTN,WTN,WTN,XX,KPU,KRU,KRU,KRU,XX,KPU,KRU,KRU,XX,KGA,KTI,KAY
	DB	WU,WRU,WRI,WRA,WZI,WAY,WMR,XX,KHU,KMU,WT2,KG1,WHA,WT,WPA,KG2
	DB	WGA,WT2,W5,WMA,WI,WSO,WRO,WWA,WN,WTO,WNA,WTN,WTN,WTN,WQE,XX
	DB	WU,WB_,WMU,WTN,WTN,WTN,XX,KTE,KKI,WNO,XX,WHE,WI,WSI,WGA,XX
	DB	WMO,WT,WTE,WO,WRU,WNO,WKA,WMO,XX,WSI,WRE,WN,WNO,WU,WMR,XX
	DB	XX,XX,WU,WRU,WRI,WRA,WB_,XX,XX,KGA,KTI,KAY,KT,WBC,KG2
	DB	WED
;
;+----------------------------------------------+
;|	「チャッ　ジーコ　ジーコ　ジーコ	|
;|	・・・　プルルル　プルル　ガチャ	|
;|	うるりらじゃ。　フム、「はっぱ」	|
;|	が、５まいそろわんとな・・・？　	|
;|	そうじゃのう・・あやしいところに	|
;|	バクダンをおいてみてはどうじゃ。	|
;|	やくに　たったかな？　　　　　　	|
;|	　　うるりらー　　　ガチャッ」終	|
;+----------------------------------------------+
M229	;　黄金の葉っぱ編（２）
	DB	KG1,KTI,KAY,KT,XX,KZI,WB_,KKO,XX,KZI,WB_,KKO,XX,KZI,WB_,KKO
	DB	WTN,WTN,WTN,XX,KPU,KRU,KRU,KRU,XX,KPU,KRU,KRU,XX,KGA,KTI,KAY
	DB	WU,WRU,WRI,WRA,WZI,WAY,WMR,XX,KHU,KMU,WT2,KG1,WHA,WT,WPA,KG2
	DB	WGA,WT2,W5,WMA,WI,WSO,WRO,WWA,WN,WTO,WNA,WTN,WTN,WTN,WQE,XX
	DB	WSO,WU,WZI,WAY,WNO,WU,WTN,WTN,WA,WYA,WSI,WI,WTO,WKO,WRO,WNI
	DB	KBA,KKU,KDA,KN,WWO,WO,WI,WTE,WMI,WTE,WHA,WDO,WU,WZI,WAY,WMR
	DB	WYA,WKU,WNI,XX,WTA,WT,WTA,WKA,WNA,WQE,XX,XX,XX,XX,XX,XX
	DB	XX,XX,WU,WRU,WRI,WRA,WB_,XX,XX,XX,KGA,KTI,KAY,KT,KG2
	DB	WED
;
;+----------------------------------------------+
;|	「チャッ　ジーコ　ジーコ　ジーコ	|
;|	・・・　プルルル　プルル　ガチャ	|
;|	うるりらじゃ。　フム、「はっぱ」	|
;|	が、５まいそろわんとな・・・？　	|
;|	よくわからんが　・・・カラス・・	|
;|	おしろのカラスが　あやしいのう　	|
;|	すこしおどかしてみてはどうかな？	|
;|	うるりらーー　　ガチャッ」終		|
;+----------------------------------------------+
M22A	;　黄金の葉っぱ編（３）
	DB	KG1,KTI,KAY,KT,XX,KZI,WB_,KKO,XX,KZI,WB_,KKO,XX,KZI,WB_,KKO
	DB	WTN,WTN,WTN,XX,KPU,KRU,KRU,KRU,XX,KPU,KRU,KRU,XX,KGA,KTI,KAY
	DB	WU,WRU,WRI,WRA,WZI,WAY,WMR,XX,KHU,KMU,WT2,KG1,WHA,WT,WPA,KG2
	DB	WGA,WT2,W5,WMA,WI,WSO,WRO,WWA,WN,WTO,WNA,WTN,WTN,WTN,WQE,XX
	DB	WYO,WKU,WWA,WKA,WRA,WN,WGA,XX,WTN,WTN,WTN,KKA,KRA,KSU,WTN,WTN
	DB	WO,WSI,WRO,WNO,KKA,KRA,KSU,WGA,XX,WA,WYA,WSI,WI,WNO,WU,XX
	DB	WU,WRU,WRI,WRA,WB_,WB_,XX,XX,KGA,KTI,KAY,KT,KG2
	DB	WED
;
;+----------------------------------------------+
;|	　「でんせつの　名名名名名！」　	|
;|	このアルバムをみる？　　　　　　	|
;|	　　　　みる　　　みない選		|
;+----------------------------------------------+
M22B	;アルバムメッセージ
	DB	XX ,KG1,WDE,WN ,WSE,WTU,WNO,XX ,NM ,NM ,NM ,NM ,NM ,WBC,KG2,XX 
	DB	WKO,WNO,KA ,KRU,KBA,KMU,WWO,WMI,WRU,WQE,XX ,XX ,XX ,XX ,XX ,XX 
	DB	XX ,XX ,XX ,XX ,WMI,WRU,XX ,XX ,XX ,WMI,WNA,WI ,WE2
;
;+----------------------------------------------+
;|	どのしゃしんが　みたい？　　　　　	|
;|	）キーで　しゃしんを　えらんで　　	|
;|	Ａボタンでけってい！　　　　　　　	|
;|	Ｂボタンでキャンセルだよ。　　　　	|
;|	終　					|
;+----------------------------------------------+
M22C	;アルバム見るとき
	DB	WDO,WNO,WSI,WAY,WSI,WN ,WGA,XX ,WMI,WTA,WI ,WQE,XX ,XX ,XX ,XX 
	DB	MK8,KKI,WB_,WDE,XX ,WSI,WAY,WSI,WN ,WWO,XX ,WE ,WRA,WN ,WDE,XX 
	DB	RA ,KBO,KTA,KN ,WDE,WKE,WT ,WTE,WI ,WBC,XX ,XX ,XX ,XX ,XX ,XX 
	DB	RB ,KBO,KTA,KN ,WDE,KKI,KAY,KN ,KSE,KRU,WDA,WYO,WMR,XX ,XX ,XX 
	DB	WED
;
;+----------------------------------------------+
;|	このさき　オオワシのとう　あり　	|
;|	ちゅうい！このあたり　カギなし終	|
;+----------------------------------------------+
M22D
	DB	WKO,WNO,WSA,WKI,XX ,KO ,KO ,KWA,KSI,WNO,WTO,WU ,XX ,WA ,WRI,XX 
	DB	WTI,WUY,WU ,WI ,WBC,WKO,WNO,WA ,WTA,WRI,XX ,KKA,KGI,WNA,WSI,WED

;	ぼく はぶりん よろしくね！
;;;;;	DB	WBO,WKU,XX ,WHA,WBU,WRI,WN ,XX ,XX ,XX ,XX ,XX ,XX ,XX ,XX ,XX 
;;;;;	DB	XX ,XX ,WYO,WRO,WSI,WKU,WNE,XX ,WBC
;;;;;	DB	WED
;
;+----------------------------------------------+
;|	あ、名名名名名、しゃしんスキスキ	|
;|	しゃしんやさん　だよ！　　　　　	|
;|	ショボイおしろ　だけど、　　　　	|
;|	１まい　とるかい？終			|
;+----------------------------------------------+
M22E	;写真10：お城の門の巻（写真屋）
	DB	WA,WT2,NM,NM,NM,NM,NM,WT2,WSI,WAY,WSI,WN,KSU,KKI,KSU,KKI
	DB	WSI,WAY,WSI,WN,WYA,WSA,WN,XX,WDA,WYO,WBC,XX,XX,XX,XX,XX
	DB	KSI,KOY,KBO,KI,WO,WSI,WRO,XX,WDA,WKE,WDO,WT2,XX,XX,XX,XX
	DB	W1,WMA,WI,XX,WTO,WRU,WKA,WI,WQE
	DB	WED
;
M22F;	Not used
;;;;;;;;M22F;　宝箱のタリン
;;;;;;;;    DB   WI,WYA,WA,WT2,WMI,WTU,WKA,WT
;;;;;;;;    DB   WTI,WMA,WT,WTA,WDA,WKA,WTN,WTN
;;;;;;;;    DB   WZI,WTU,WHA,WT2,WKA,WKU,WRE,WN
;;;;;;;;    DB   WBO,WSI,WTE,WTA,WRA,WT2,XX,XX
;;;;;;;;;
;;;;;;;;    DB   WKA,WGI,WGA,WKA,WKA,WT,WTE,WT2
;;;;;;;;    DB   WKO,WMA,WT,WTE,WTA,WDA,WYO,WMR
;;;;;;;;    DB   NM,NM,NM,NM,NM,WMO,WKI,WWO
;;;;;;;;    DB   WTU,WKE,WRU,WDA,WYO,WMR
;;;;;;;;    DB   WED
;

;********************
;*カギ穴のメッセージ*
;********************
;+----------------------------------------------+
;|	ムッ、こんなところにカギあなが？	|
;|	「テールのカギあな」とかいてある	|
;+----------------------------------------------+
M230	;　テールのカギ穴
    DB   KMU,KT,WT2,WKO,WN,WNA,WTO,WKO
    DB   WRO,WNI,KKA,KGI,WA,WNA,WGA,WQE
    DB   KG1,KTE,WB_,KRU,WNO,KKA,KGI,WA
    DB   WNA,KG2,WTO,WKA,WI,WTE,WA,WRU
    DB   WED
;
M231;　スライムのカギ穴
    DB   KMU,KT,WT2,WKO,WN,WNA,WTO,WKO
    DB   WRO,WNI,KKA,KGI,WA,WNA,WGA,WQE
    DB   KG1,KSU,KRA,KI,KMU,WNO,KKA,KGI
    DB   WA,WNA,KG2,WDA,WT,WTE,WSA,WMR
    DB   WED
;
M232;　魚のカギ穴
    DB   KMU,KT,WT2,WKO,WN,WNA,WTO,WKO
    DB   WRO,WNI,KKA,KGI,WA,WNA,WGA,WQE
    DB   KG1,KA,KN,KGU,KRA,WB_,WNO,KKA
    DB   KGI,WA,WNA,KG2,WDA,WT,WTE,WSA
    DB   WED
;
M233;　鳥のカギ穴
    DB   KMU,KT,WT2,WKO,WN,WNA,WTO,WKO
    DB   WRO,WNI,KKA,KGI,WA,WNA,WGA,WQE
    DB   KG1,KBA,WB_,KDO,WNO,KKA,KGI,WA
    DB   WNA,KG2,WTO,WKA,WI,WTE,WA,WRU
    DB   WED
;
M234;　顔のカギ穴
    DB   KMU,KT,WT2,WKO,WN,WNA,WTO,WKO
    DB   WRO,WNI,KKA,KGI,WA,WNA,WGA,WQE
    DB   KG1,KHU,SSE,KI,KSU,WNO,KKA,KGI
    DB   WA,WNA,KG2,WDA,WT,WTE,WSA,WMR
    DB   WED
;

;******************
;*マリンの吊り橋編*
;******************
M235;　マリン　山の吊り橋編　１
    DB   XX,XX,WDA,WA,WRE,WKA,WA,WB_
    DB   WB_,WB_,WB_,WB_,WB_,WBC,XX
    DB   WED
;
M236;　その２
    DB   WA,WT,WBC,NM,NM,NM,NM,NM
    DB   WBC,XX,KMA,KMO,KNO,WTA,WTI,WGA
    DB   KI,KZI,KWA,KRU,WSI,WTE,WT2,WKO
    DB   WN,WNA,WTO,WKO,WRO,WNI,WTN,WTN
;
    DB   WTN,WTN,WTN,XX,WTN,WTN,WTN,XX
    DB   WDO,WU,WSI,WYO,WU,WMR,XX,XX
    DB   WKO,WWA,WKU,WTE,XX,WU,WGO,WKE
    DB   WNA,WI,WYO,WU,WTN,WTN,WTN,WTN
    DB   WED
;
M237;　その３
    DB   XX,XX,XX,XX,XX,KKI,KAY,KT
    DB   WBC,XX,XX,XX,XX,XX,XX,XX     
    DB   XX,WTN,WTN,WTN,XX,WTN,WTN,WTN
    DB   XX,KBI,KT,KKU,KRI,WSI,WTA,WBC
;
    DB   NM,NM,NM,NM,NM,XX,WA,WRI
    DB   WGA,WTO,WU,WBC
    DB   WED
;
M238;　その４
    DB   WTN,WTN,WTN,WTN,WTN,WTN,WTN,WTN
    DB   WTN,WTN,WTN,WTN,WTN,WTN,WTN,WTN
    DB   XX,XX,XX,XX,XX,XX,XX,XX
    DB   XX,XX,XX,XX,XX,XX,XX,XX
;
    DB   WTN,WTN,WTN,WTN,WTN,WTN,WTN,WTN
    DB   WTN,WTN,WA,WNO,WNE,WTN,WTN,WTN
    DB   XX,XX,XX,XX,XX,XX,XX,XX
    DB   XX,XX,XX,XX,XX,XX,XX,XX
;
    DB   WTN,WTN,WTN,XX,NM,NM,NM,NM
    DB   NM,XX,WA,WNO,WNE,WTN,WTN,WTN
    DB   XX,XX,XX,XX,XX,XX,XX,XX
    DB   XX,XX,XX,XX,XX,XX,XX,XX
    DB   WED
;
M239;　その５
    DB   WTN,WTN,WTN,WTN,WTN,WTN,WTN,WTN
    DB   WWA,WTA,WSI,WTN,WTN,WTN,WTN,WTN
    DB   XX,XX,XX,XX,XX,XX,XX,XX
    DB   XX,XX,XX,XX,XX,XX,XX,XX
;
    DB   WTN,WTN,WTN,WTN,WTN,WTN,WTN,WTN
    DB   WWA,WTA,WSI,WTN,WTN,WTN,WTN,WTN
    DB   XX,XX,XX,XX,XX,XX,XX,XX
    DB   XX,XX,XX,XX,XX,XX,XX,XX
    DB   WED
;
M23A;　その６
    DB   XX,XX,XX,XX,WA,WT,WBC,XX
    DB   KTA,KRI,KN,WBC,WQE,WQE,XX,XX
    DB   WTN,WTN,WTN,WTN,WTN,WTN,WTN,WTN
    DB   WTN,WTN,WTN,WTN,WTN,WTN,WTN,WTN
;
    DB   WTN,WTN,WTN,KGO,KME,KN,WTN,WTN
    DB   WNA,WN,WDE,WMO,WNA,WI,WTN,WTN
    DB   XX,XX,XX,XX,XX,XX,XX,XX
    DB   XX,XX,XX,XX,XX,XX,XX,XX
;
    DB   WWA,WTA,WSI,WTN,WTN,WTN,WTN,WMO
    DB   WU,WI,WKU,WNE,WMR,XX,XX,XX
    DB   XX
    DB   WED
;
M23B;  タリン吊り橋
    DB   XX,XX,XX,XX,XX,KMA,KRI,WB_
    DB   KN,WBC,WBC,WBC,WBC,XX,XX,XX
    DB   XX,XX,XX,XX,XX,XX,XX,XX
    DB   XX,XX,XX,XX,XX,XX,XX,XX
    DB   WED
;
;+----------------------------------------------+
;|	キミたち、このボクのオシロに　　	|
;|	みとれているのかい？　　　　　　	|
;|	じつは、このオシロのもん　　　　	|
;|	おかね　かかってんだよねー！		|
;|	いや　しかし、ボクの　このゆうき	|
;|	キネンをのこすに　あたいするね！	|
;|	よし、１まいとることをゆるすぞ。	|
;+----------------------------------------------+
M23C	;リチャード登場！
	DB	KKI,KMI,WTA,WTI,WT2,WKO,WNO,KBO,KKU,WNO,KO,KSI,KRO,WNI,XX,XX
	DB	WMI,WTO,WRE,WTE,WI,WRU,WNO,WKA,WI,WQE,XX,XX,XX,XX,XX,XX
	DB	WZI,WTU,WHA,WT2,WKO,WNO,KO,KSI,KRO,WNO,WMO,WN,XX,XX,XX,XX
	DB	WO,WKA,WNE,XX,WKA,WKA,WT,WTE,WN,WDA,WYO,WNE,WB_,WBC,XX,XX
	DB	WI,WYA,XX,WSI,WKA,WSI,WT2,KBO,KKU,WNO,XX,WKO,WNO,WYU,WU,WKI
	DB	KKI,KNE,KN,WWO,WNO,WKO,WSU,WNI,XX,WA,WTA,WI,WSU,WRU,WNE,WBC
	DB	WYO,WSI,WT2,W1,WMA,WI,WTO,WRU,WKO,WTO,WWO,WYU,WRU,WSU,WZO,WBC
	DB	WED
;
;+----------------------------------------------+
;|	おっ、マリンと名名名名名　　　　	|
;|	なにやってるだ？・・しゃしんか！	|
;|	しゃしんはみんなでとるもんだよ！	|
;|	おらも、まぜてほしいだよ。　　　	|
;+----------------------------------------------+
M23D	;写真４：タリン
	DB	WO,WT,WT2,KMA,KRI,KN,WTO,NM,NM,NM,NM,NM,XX,XX,XX,XX
	DB	WNA,WNI,WYA,WT,WTE,WRU,WDA,WQE,WTN,WTN,WSI,WAY,WSI,WN,WKA,WBC
	DB	WSI,WAY,WSI,WN,WHA,WMI,WN,WNA,WDE,WTO,WRU,WMO,WN,WDA,WYO,WBC
	DB	WO,WRA,WMO,WT2,WMA,WZE,WTE,WHO,WSI,WI,WDA,WYO,WMR
	DB	WED
;
;+----------------------------------------------+
;|	これで、しゃしん　とるだよ！　　	|
;|	よし、じゅんびは　いいだか？　　	|
;|	ニッコリ　わらうだよー　　　　　	|
;|	　　　　　　　　　　　　　　　　	|
;|	　　　　はい、キノコ！終		|
;+----------------------------------------------+
M23E	;写真４：タリン割り込む！
	DB	WKO,WRE,WDE,WT2,WSI,WAY,WSI,WN,XX,WTO,WRU,WDA,WYO,WBC,XX,XX
	DB	WYO,WSI,WT2,WZI,WUY,WN,WBI,WHA,XX,WI,WI,WDA,WKA,WQE,XX,XX
	DB	KNI,KT,KKO,KRI,XX,WWA,WRA,WU,WDA,WYO,WB_,XX,XX,XX,XX,XX
	DB	XX,XX,XX,XX,XX,XX,XX,XX,XX,XX,XX,XX,XX,XX,XX,XX
	DB	XX,XX,XX,XX,WHA,WI,WT2,KKI,KNO,KKO,WBC
	DB	WED
;
;+----------------------------------------------+
;|	よし、しゃしんも　とったことだし	|
;|	おら、もとのいちに　もどるだよ。	|
;+----------------------------------------------+
M23F	;写真４：タリン撮影後
	DB	WYO,WSI,WT2,WSI,WAY,WSI,WN,WMO,XX,WTO,WT,WTA,WKO,WTO,WDA,WSI
	DB	WO,WRA,WT2,WMO,WTO,WNO,WI,WTI,WNI,XX,WMO,WDO,WRU,WDA,WYO,WMR
	DB	WED
;---------------------------------------------------------------
;**************************
;*うるりらじいさんヒント２*
;**************************
M240;うるりらじいさんの電話（山の滝編）
    DB   KG1,KTI,KAY,KT,XX,KZI,WB_,KKO
    DB   XX,KZI,WB_,KKO,XX,KZI,WB_,KKO
    DB   WTN,WTN,WTN,XX,KPU,KRU,KRU,KRU
    DB   XX,KPU,KRU,KRU,XX,KGA,KTI,KAY
;
    DB   WU,WRU,WRI,WRA,WZI,WAY,WMR,XX
    DB   XX,XX,XX,XX,XX,XX,XX,XX
    DB   KU,KTI,WNO,WT2,WBA,WB_,WSA,WN,WNI
    DB   WYO,WRU,WTO,WZI,WAY,WNA,XX
;
    DB   KTA,KRU,KTA,KRU,WSA,WN,WMI,WAY
    DB   WKU,WNO,KTA,KKI,WNO,WU,WRA,WNI
    DB   WNA,WNI,WKA,XX,WKA,WKU,WRE,WTE
    DB   WO,WRU,WSO,WU,WZI,WAY,WMR,XX
;
    DB   WYA,WKU,WNI,WTA,WT,WTA,WKA,WNA
    DB   WQE,XX,XX,XX,XX,XX,XX,XX
    DB   XX,XX,XX,WU,WRU,WRI,WRA,WB_
    DB   XX,XX,KGA,KTI,KAY,KT,WBC,KG2
    DB   WED
;
M241;山の東の塔編
    DB   KG1,KTI,KAY,KT,XX,KZI,WB_,KKO
    DB   XX,KZI,WB_,KKO,XX,KZI,WB_,KKO
    DB   WTN,WTN,WTN,XX,KPU,KRU,KRU,KRU
    DB   XX,KPU,KRU,KRU,XX,KGA,KTI,KAY
;
    DB   WU,WRU,WRI,WRA,WZI,WAY,WMR,XX
    DB   XX,XX,XX,XX,XX,XX,XX,XX
    DB   WWA,WSI,WGA,WWA,WKA,WI,WKO,WRO
    DB   XX,WYA,WMA,WNO,KHI,KGA,KSI,WNI
;
    DB   WTA,WKA,WI,XX,WTO,WU,WGA,WT2
    DB   WA,WT,WTA,WNO,WU,WMR,XX,XX
    DB   WI,WT,WTE,WMI,WTE,WHA,XX,WDO
    DB   WU,WZI,WAY,WNE,WQE,XX,XX,XX
;
    DB   XX,XX,XX,WU,WRU,WRI,WRA,WB_
    DB   XX,XX,KGA,KTI,KAY,KT,WBC,KG2
    DB   WED
;
M242;　タマゴ山に行け
    DB   KG1,KTI,KAY,KT,XX,KZI,WB_,KKO
    DB   XX,KZI,WB_,KKO,XX,KZI,WB_,KKO
    DB   WTN,WTN,WTN,XX,KPU,KRU,KRU,KRU
    DB   XX,KPU,KRU,KRU,XX,KGA,KTI,KAY
;
    DB   WU,WRU,WRI,WRA,WZI,WAY,WMR,XX
    DB   KTA,KMA,KRA,KN,KTI,WYA,WMA,WNO
    DB   WSE,WI,WNA,WRU,KTA,KMA,KGO,WNI
    DB   XX,WMU,WKA,WI,WNA,WSA,WRE,WMR
;
    DB   NM,NM,NM,NM,NM,XX,WKI,WWO
    DB   WTU,WKE,WTE,WNO,WMR,XX,XX,XX
    DB   XX,XX,XX,WU,WRU,WRI,WRA,WB_
    DB   XX,XX,KGA,KTI,KAY,KT,WBC,KG2
    DB   WED
;
M243;タマゴの迷路で迷った！
    DB   KG1,KTI,KAY,KT,XX,KZI,WB_,KKO
    DB   XX,KZI,WB_,KKO,XX,KZI,WB_,KKO
    DB   WTN,WTN,WTN,XX,KPU,KRU,KRU,KRU
    DB   XX,KPU,KRU,KRU,XX,KGA,KTI,KAY
;
    DB   WU,WRU,WRI,WRA,WZI,WAY,WMR,XX
    DB   KTA,KMA,KGO,WNO,KME,KI,KRO,WDE
    DB   WMA,WYO,WT,WTA,WTO,WNA,WQE,XX
    DB   WU,WB_,WMU,WTN,WTN,WTN,XX,XX
;
    DB   WWA,WSI,WNI,WHA,XX,WWA,WKA,WRA
    DB   WN,WYO,WMR,WSU,WMA,WN,WNO,WU
    DB   WTO,WSI,WOY,WKA,WN,WDE,WT2,WSI
    DB   WRA,WBE,WTE,WKU,WRE,WN,WKA,WMR
;
    DB   WKO,WRE,WNI,XX,WKO,WRI,WZU,WNI
    DB   XX,KDE,KN,KWA,WSI,WTE,WNE,WMR
    DB   XX,WZI,WAY,WT2,WU,WRU,WRI,WRA
    DB   WB_,XX,KGA,KTI,KAY,KT,KG2,XX
    DB   WED
;
M244;　ワンワンを帰そう！
    DB   KG1,KTI,KAY,KT,XX,KZI,WB_,KKO
    DB   XX,KZI,WB_,KKO,XX,KZI,WB_,KKO
    DB   WTN,WTN,WTN,XX,KPU,KRU,KRU,KRU
    DB   XX,KPU,KRU,KRU,XX,KGA,KTI,KAY
;
    DB   WU,WRU,WRI,WRA,WZI,WAY,WMR
    DB   XX,KWA,KN,KWA,KN,WWO,WT2,XX,XX
    DB   WKA,WE,WSI,WTE,WYA,WT,WTE,WHA,WDO,WU
    DB   WKA,WNO,WU,WQE,XX,XX
;   
    DB   KMA,KDA,KMU,KNI,KAY,KN,KNI,KAY
    DB   KN,WMO,WT2,WYO,WRO,WKO,WBU,WYO   
    DB   XX,XX,XX,WU,WRU,WRI,WRA,WB_
    DB   XX,XX,KGA,KTI,KAY,KT,WBC,KG2
    DB   WED
;
M245;　カエルのソウル編
    DB   KG1,KTI,KAY,KT,XX,KZI,WB_,KKO
    DB   XX,KZI,WB_,KKO,XX,KZI,WB_,KKO
    DB   WTN,WTN,WTN,XX,KPU,KRU,KRU,KRU
    DB   XX,KPU,KRU,KRU,XX,KGA,KTI,KAY
;
    DB   WU,WRU,WRI,WRA,WZI,WAY,WMR
    DB   WU,WTA,WHA,WT2,WSU,WKI,WKA,WNA,WQE
    DB   KKA,KN,KBA,KN,WNO,WME,WI,WRO
    DB   WNI,XX,WSU,WN,WDE,WO,WRU,XX
;
    DB   KKA,KE,KRU,WNO,KMA,KMU,WB_,WGA
    DB   WT2,WO,WSI,WE,WTO,WRU,WYO,XX
    DB   WTN,WTN,WTI,WOY,WT,WPI,WRI,WT2
    DB   KNE,WGA,WHA,WRU,WGA,WNA,WMR,XX
;
    DB   XX,XX,XX,WU,WRU,WRI,WRA,WB_
    DB   XX,XX,KGA,KTI,KAY,KT,WBC,KG2
    DB   WED
;
M246  ;バードのカギ編
    DB   KG1,KTI,KAY,KT,XX,KZI,WB_,KKO
    DB   XX,KZI,WB_,KKO,XX,KZI,WB_,KKO
    DB   WTN,WTN,WTN,XX,KPU,KRU,KRU,KRU
    DB   XX,KPU,KRU,KRU,XX,KGA,KTI,KAY
;
    DB   WU,WRU,WRI,WRA,WZI,WAY,WMR,XX
    DB   WGA,WN,WBA,WT,WTO,WRU,WNO,WU
    DB   WZI,WAY,WGA,WT2,WSO,WNO,WKU,WRO
    DB   WU,WMO,WA,WTO,WSU,WKO,WSI,XX
;
    DB   WTN,WTN,WTN,WTO,WKO,WRO,WDE,WT2
    DB   WYA,WMA,WNO,WU,WE,WNO,XX,XX
    DB   KNI,KWA,KTO,KRI,WGO,WYA,WHE,WHA
    DB   WT2,WI,WT,WTE,WMI,WTA,WKA,WQE
;
    DB   WKO,WYA,WNO,WTI,WKA,WKU,WNI,XX
    DB   WDO,WU,WKU,WTU,WGA,WA,WRU,WMR
    DB   WSO,WKO,WDE,WT2,WDA,WI,WZI,WNA
    DB   WMO,WN,WWO,WTO,WRI,WNA,WSA,WRE
;
    DB   XX,XX,XX,WU,WRU,WRI,WRA,WB_
    DB   XX,XX,KGA,KTI,KAY,KT,WBC,KG2
    DB   WED
;
M247;　剣２編
    DB   KG1,KTI,KAY,KT,XX,KZI,WB_,KKO
    DB   XX,KZI,WB_,KKO,XX,KZI,WB_,KKO
    DB   WTN,WTN,WTN,XX,KPU,KRU,KRU,KRU
    DB   XX,KPU,KRU,KRU,XX,KGA,KTI,KAY
;
    DB   WU,WRU,WRI,WRA,WZI,WAY,WMR,XX
    DB   XX,XX,XX,XX,XX,XX,XX,XX
    DB   KTE,KKI,WHA,WT2,WTE,WGO,WWA,WI
    DB   WKA,WTN,WTN,WTN,WQE,XX,XX,XX
;
    DB   WNA,WRA,WBA,WT2,WSU,WBE,WTE,WNO
    DB   XX,KKA,KI,WGA,WRA,WWO,XX,XX
    DB   WA,WTU,WME,WRU,WGA,WYO,WKA,WRO
    DB   WU,WTN,WTN,WTN,XX,XX,XX,XX
;
    DB   WSA,WI,WGO,WMA,WDE,XX,WZI,WBU
    DB   WN,WWO,WSI,WN,WZI,XX,XX,XX
    DB   WSI,WT,WKA,WRI,XX,WO,WYA,WRI
    DB   WNA,WSA,WI,WTN,WTN,WTN,XX,XX
;
    DB   WGE,WN,WKI,WDE,WNO,WU,XX,XX
    DB   WU,WRU,WRI,WRA,WB_,WB_,XX,XX
    DB   XX,XX,KGA,KTI,KAY,KT,XX,KG2
    DB   WED
;
M248
    DB   KG1,KTI,KAY,KT,XX,KZI,WB_,KKO
    DB   XX,KZI,WB_,KKO,XX,KZI,WB_,KKO
    DB   WTN,WTN,WTN,XX,KPU,KRU,KRU,KRU
    DB   XX,KPU,KRU,KRU,XX,KGA,KTI,KAY
;
    DB   WU,WRU,WRI,WRA,WZI,WAY,WMR,XX
    DB   WGA,WN,WBA,WRE,WT,WBC,XX,XX
    DB   WA,WTO,WHI,WTO,WI,WKI,WZI,WAY
    DB   WT,WBC,XX,XX,XX,XX,XX,XX
;
    DB   WWA,WSI,WMO,WT2,WO,WU,WE,WN,WSI
    DB   WTE,WO,WRU,WZO,WBC,XX,XX
    DB   XX,XX,WU,WRU,WRI,WRA,WB_,WB_
    DB   XX,XX,XX,KGA,KTI,KAY,KT,KG2
    DB   WED
;
;+----------------------------------------------+
;|	さあ、どこからでも　とるがいい！	|
;+----------------------------------------------+
M249	;リチャード写真の催促
	DB	WSA,WA,WT2,WDO,WKO,WKA,WRA,WDE,WMO,XX,WTO,WRU,WGA,WI,WI,WBC
	DB	WED

;-------------------------------------------------------------
;****************
;*動物村の子供達*
;****************
M24A;ウサギの四つ子１　マリンが来る前
    DB  KYA,WB_,KNA,WSA,WBA,WKU,WQE,XX
    DB  KMI,KNA,KMI,WNO,WHO,WU,WNI,XX
    DB  WI,WRI,WGU,WTI,WGA,WA,WRU,WKE
    DB  WDO,WTN,WTN,WTN,WTN,XX,XX,XX
;
    DB  KA,KI,KTU,WGA,WT2,WMI,WTI,WWO,XX
    DB  WHU,WSA,WI,WZI,WAY,WT,WTE
    DB  WI,WKE,WNA,WI,WKA,WMO,WNA,WA
    DB  WMR,XX,XX,XX,XX,XX,XX,XX
    DB  WED
;
M24B;ウサギの四つ子２マリンが来る前
    DB  WA,WB_,WA,XX,WKO,WN,WNA,WHI
    DB  WNI,WHA,WTN,WTN,WYA,WT,WPA,XX
    DB  KA,KRE,WDA,WYO,WNA,XX,KA,KRE
    DB  WTN,WTN,WTN,WTN,XX,XX,XX,XX
    DB  WED

M24C;ウサギの四つ子３マリンが来る前
    DB  WDO,WU,WBU,WTU,WMU,WRA,WTO,WT2
    DB  KME,WB_,KBE,WNO,WMU,WRA,WHA,XX
    DB  WSI,WMA,WI,WTE,WI,WKE,WI,WTO
    DB  WSI,XX,WNA,WN,WDA,XX,XX,XX
;
    DB  WTO,WSI,WT,WTE,XX,WI,WU,WHO,WDO
    DB  WZI,WAY,XX,XX,XX,XX,XX
    DB  WNA,WI,WKE,WDO,WNE,WTN,WTN,WTN
    DB  XX,XX,XX,XX,XX,XX,XX,XX
;
    DB  KKA,KN,KKE,KI,WNA,WI,WKE,WDO
    DB  WT2,KME,WB_,KBE,WNO,WMU,WRA,WNI
    DB  KYU,KME,WNO,WHO,WKO,WRA,WT,WTE
    DB  WNO,WGA,WA,WRU,WDE,WSI,WOY,WMR
;
    DB  WA,WRU,XX,WTA,WSI,WKA,WNA,KSU
    DB  KZI,WNO,WHA,WNA,WSI,WZI,WAY,XX
    DB  MK2,MK2,MK2,WGA,WT2,WO,WI,WTE
    DB  WA,WRU,WN,WDA,WT,WTE,WSA,WMR 
;
    DB  KHO,KN,KTO,WKA,WNA,WQE,WTN,WTN,WTN 
    DB  WED
;
;+----------------------------------------------+
;|	さいきん　かいぶつがふえちゃって	|
;|	メーベのむらに　いけなくってさ　	|
;|	ハァ・・・マリンちゃん　　　　　	|
;|	げんきかな・・・・　　　　　　　	|
;+----------------------------------------------+
M24D;ウサギの四つ子４マリンが来る前
	DB	WSA,WI,WKI,WN,XX,WKA,WI,WBU,WTU,WGA,WHU,WE,WTI,WAY,WT,WTE
	DB	KME,WB_,KBE,WNO,WMU,WRA,WNI,XX,WI,WKE,WNA,WKU,WT,WTE,WSA,XX
	DB	KHA,SSA,WTN,WTN,WTN,KMA,KRI,KN,WTI,WAY,WN,XX,XX,XX,XX,XX
	DB	WGE,WN,WKI,WKA,WNA,WTN,WTN,WTN,WTN,XX,XX,XX,XX,XX,XX,XX
	DB	WED
;;;KK;;;    DB  WSA,WI,WKI,WN,XX,WKA,WI,WBU 
;;;KK;;;    DB  WTU,WGA,XX,WHU,WE,WTI,WAY,WTE
;;;KK;;;    DB  KME,WB_,KBE,WNO,WMU,WRA,WNI,XX
;;;KK;;;    DB  WI,WKE,WNA,WKU,WT,WTE,WSA,XX
;;;KK;;;;
;;;KK;;;    DB  KHA,SSA,WTN,WTN,WTN,KMA,KRI,KN
;;;KK;;;    DB  WTI,WAY,WN,XX,XX,XX,XX,XX
;;;KK;;;    DB  WGE,WN,WKI,WKA,WNA,WTN,WTN,WTN
;;;KK;;;    DB  WTN,XX,XX,XX,XX,XX,XX,XX
;;;KK;;;    DB  WED
;
M24E;ウサギの四つ子マリンが帰った後
    DB  WSO,WRA,WTO,WBU,KNI,KWA,KTO,KRI
    DB  WT,WTE,XX,WSI,WT,WTE,WRU,WQE
    DB  WMU,WKA,WSI,KME,WB_,KBE,WNO,WMU
    DB  WRA,WNI,WI,WTA,WN,WDA,WT,WTE
;
    DB  WHO,WN,WTO,WKA,WNA,WQE
    DB  WED


M24F;ウサギの四つ子マリンが帰った後
    DB  WA,WB_,WA,XX,KMA,KRI,KN,WTI,WAY
    DB  WN,XX,WKO,WNA,WI,WKA,WNA
    DB  WYA,WT,WPA,KA,KRE,WDA,WYO
    DB  WNA,WMR,XX,KU,KN,KU,KN,XX,XX
    DB  WED
;
M250;ウサギの四つ子マリンが帰った後
    DB  WO,WI,WRA,WT2,WYU,WU,WBE,XX
    DB  KNI,KN,KZI,KN,WNI,WNA,WRU,XX 
    DB  KYU,KME,WWO,WMI,WTA,WN,WDA,WMR
    DB  XX,XX,XX,XX,XX,XX,XX,XX
;
    DB  WTN,WTN,WTN,WTI,WOY,WT,WTO,XX
    DB  KHU,KKU,KZA,KTU,WNA,XX,XX,XX
    DB  WKI,WMO,WTI,WNI,WNA,WT,WTI
    DB  WAY,WT,WTA,WYO,WMR,XX,XX,XX,XX
    DB  WED
;
M251;ウサギの四つ子マリンが帰った後
    DB  WE,WT,WQE,XX,WO,WI,WRA,WTA,WTI,XX
    DB  WDO,WU,WBU,WTU,WGA,XX
    DB  WDO,WU,WSI,WTE,XX,WSI,WAY,WBE
    DB  WRU,WNO,WKA,WT,WTE,WQE,XX,XX
; 
    DB  WNA,WN,WDE,WKA,WNA,WQE,XX,WO,WI
    DB  WRA,KU,KSA,KGI,WDA,WKA,WRA
    DB  WWA,WKA,WN,WNE,WB_,WYA,WMR
    DB  WED
;
M252;マリンを連れてきた時のウサギ（共通）
    DB  WA,WT,WBC,XX,KMA,KRI,KN,WTI  
    DB  WAY,WN,WDA,WBC,WBC,XX,XX,XX
    DB  WED
;
;+----------------------------------------------+
;|	　「ひとりでいどむ　ゆうきが　　	|
;|	　　ないもの、ちからなきもの！　　	|
;|	　　そのようなものがおしても　　	|
;|	　　このはかは　うごかせぬ！」終	|
;+----------------------------------------------+
M253
	DB	XX,KG1,WHI,WTO,WRI,WDE,WI,WDO,WMU,XX,WYU,WU,WKI,WGA,XX,XX
	DB	XX,XX,WNA,WI,WMO,WNO,WT2,WTI,WKA,WRA,WNA,WKI,WMO,WNO,WBC,XX
	DB	XX,XX,WSO,WNO,WYO,WU,WNA,WMO,WNO,WGA,WO,WSI,WTE,WMO,XX,XX
	DB	XX,XX,WKO,WNO,WHA,WKA,WHA,XX,WU,WGO,WKA,WSE,WNU,WBC,KG2
	DB	WED
;
;+----------------------------------------------+
;|	コワイわけじゃないんだが、ボカァ	|
;|	いえでまつことにするよ！じゃっ！	|
;+----------------------------------------------+
M254	;リチャード退場！
	DB	KKO,KWA,KI,WWA,WKE,WZI,WAY,WNA,WI,WN,WDA,WGA,WT2,KBO,KKA,SSA
	DB	WI,WE,WDE,WMA,WTU,WKO,WTO,WNI,WSU,WRU,WYO,WBC,WZI,WAY,WT,WBC
	DB	WED
;
;+----------------------------------------------+
;|	・・・いっしょに　あるくのって　	|
;|	はじめてだね、名名名名名　　　　	|
;+----------------------------------------------+
M255	;写真２：崖っぷちの巻（マリン）
	DB	WTN,WTN,WTN,WI,WT,WSI,WOY,WNI,XX,WA,WRU,WKU,WNO,WT,WTE,XX
	DB	WHA,WZI,WME,WTE,WDA,WNE,WT2,NM,NM,NM,NM,NM
	DB	WED
;
;+----------------------------------------------+
;|	　・・・・　・・・・　・・・・　	|
;+----------------------------------------------+
M256	;写真２：無言のリンク
	DB	XX,WTN,WTN,WTN,WTN,XX,WTN,WTN,WTN,WTN,XX,WTN,WTN,WTN,WTN,XX
	DB	WED
;
;+----------------------------------------------+
;|	うふふ、このみさきも　ふたりだけ	|
;|	のヒミツだね・・・　　　　　　　	|
;+----------------------------------------------+
M257	;写真２：崖っぷちの巻（マリン）
	DB	WU,WHU,WHU,WT2,WKO,WNO,WMI,WSA,WKI,WMO,XX,WHU,WTA,WRI,WDA,WKE
	DB	WNO,KHI,KMI,KTU,WDA,WNE,WTN,WTN,WTN
	DB	WED
;
;+----------------------------------------------+
;|	やーだ、名名名名名も　なにか　　	|
;|	いってよ・・てれくさいじゃない。	|
;+----------------------------------------------+
M258	;写真２：崖っぷちの巻（マリン）
	DB	WYA,WB_,WDA,WT2,NM,NM,NM,NM,NM,WMO,XX,WNA,WNI,WKA,XX,XX
	DB	WI,WT,WTE,WYO,WTN,WTN,WTE,WRE,WKU,WSA,WI,WZI,WAY,WNA,WI,WMR
	DB	WED
;
;+----------------------------------------------+
;|	しゃしんスキスキしゃしんやさん！	|
;|	ときどきヤボな　しゃしんやです！	|
;|	どうです？むらのひとに　ジャマ　	|
;|	されないように、ここで１まい！　	|
;|	もちろんとりますよね！だいめいは	|
;|	「・・・・　・・・・　・・・・」	|
;+----------------------------------------------+
M259	;写真屋あらわる！
	DB	WSI,WAY,WSI,WN,KSU,KKI,KSU,KKI,WSI,WAY,WSI,WN,WYA,WSA,WN,WBC
	DB	WTO,WKI,WDO,WKI,KYA,KBO,WNA,XX,WSI,WAY,WSI,WN,WYA,WDE,WSU,WBC
	DB	WDO,WU,WDE,WSU,WQE,WMU,WRA,WNO,WHI,WTO,WNI,XX,KZI,KAY,KMA,XX
	DB	WSA,WRE,WNA,WI,WYO,WU,WNI,WT2,WKO,WKO,WDE,W1,WMA,WI,WBC,XX
	DB	WMO,WTI,WRO,WN,WTO,WRI,WMA,WSU,WYO,WNE,WBC,WDA,WI,WME,WI,WHA
	DB	KG1,WTN,WTN,WTN,WTN,XX,WTN,WTN,WTN,WTN,XX,WTN,WTN,WTN,WTN,KG2
	DB	WED
;
;+----------------------------------------------+
;|	あおいふくを　てにいれた！　　　　	|
;|	これでハートがへりにくくなった。	|
;+----------------------------------------------+
M25A	;青い服をもらった！
	DB	WA,WO,WI,WHU,WKU,WWO,XX,WTE,WNI,WI,WRE,WTA,WBC,XX,XX,XX
	DB	WKO,WRE,WDE,KHA,WB_,KTO,WGA,WHE,WRI,WNI,WKU,WKU,WNA,WT,WTA,WMR
	DB	WED
;
;+----------------------------------------------+
;|	あかいふくを　てにいれた！　　　	|
;|	からだに、ちからがみなぎってくる	|
;+----------------------------------------------+
M25B	;赤い服をもらった！
	DB	WA,WKA,WI,WHU,WKU,WWO,XX,WTE,WNI,WI,WRE,WTA,WBC,XX,XX,XX
	DB	WKA,WRA,WDA,WNI,WT2,WTI,WKA,WRA,WGA,WMI,WNA,WGI,WT,WTE,WKU,WRU
	DB	WED
;
;+----------------------------------------------+
;|	こうげきのアカ、ぼうぎょのアオ、	|
;|	どちらを　えらぶのですか？　　　	|
;|	　　　　アカ　　　アオ選		|
;+----------------------------------------------+
M25C	;やっぱ、まちがえた！（いいえの時）
	DB	WKO,WU,WGE,WKI,WNO,KA,KKA,WT2,WBO,WU,WGI,WOY,WNO,KA,KO,WT2
	DB	WDO,WTI,WRA,WWO,WE,WRA,WBU,WNO,WDE,WSU,WKA,WQE,XX,XX,XX,XX
	DB	XX,XX,XX,XX,KA,KKA,XX,XX,XX,KA,KO,WE2
;;;KK;;;;
;;;KK;;;;+----------------------------------------------+
;;;KK;;;;|	ほんとうに、それでよいのですね？	|
;;;KK;;;;|	　　　　はい　　　いいえ選		|
;;;KK;;;;+----------------------------------------------+
;;;KK;;;M25D	;ほんまにそれでエエんけ！
;;;KK;;;	DB	WHO,WN,WTO,WU,WNI,WT2,WSO,WRE,WDE,WYO,WI,WNO,WDE,WSU,WNE,WQE
;;;KK;;;	DB	XX,XX,XX,XX,WHA,WI,XX,XX,XX,WI,WI,WE,WE2
;
;+----------------------------------------------+
;|	あかいふくで　よいのですね？　　	|
;|	　　　　はい　　　いいえ選		|
;+----------------------------------------------+
M25D	;ほんまに赤でエエんけ！
	DB	WA,WKA,WI,WHU,WKU,WDE,XX,WYO,WI,WNO,WDE,WSU,WNE,WQE,XX,XX
	DB	XX,XX,XX,XX,WHA,WI,XX,XX,XX,WI,WI,WE,WE2
;
;+----------------------------------------------+
;|	ようせいの　じょーおうさまが、　	|
;|	まってるよ！				|
;+----------------------------------------------+
M25E	;墓の門番がどいた後（赤）
	DB	WYO,WU,WSE,WI,WNO,XX,WZI,WOY,WB_,WO,WU,WSA,WMA,WGA,WT2,XX
	DB	WMA,WT,WTE,WRU,WYO,WBC
	DB	WED
;
;+----------------------------------------------+
;|	こな、もってる？　まほうのこな！	|
;|	ないのなら、もどったほうがいいよ	|
;+----------------------------------------------+
M25F	;墓の門番がどいた後（青）
	DB	WKO,WNA,WT2,WMO,WT,WTE,WRU,WQE,XX,WMA,WHO,WU,WNO,WKO,WNA,WBC
	DB	WNA,WI,WNO,WNA,WRA,WT2,WMO,WDO,WT,WTA,WHO,WU,WGA,WI,WI,WYO
	DB	WED
;
;+----------------------------------------------+
;|	ボクとコイツは、ちがう　イロ！　	|
;|	ボクがアカなら、コイツはアオ！　	|
;|	コイツがアカなら、ボクはアオ！　	|
;|	くらべてみよう、カラーでね！　　	|
;|	さて、ボクのふくは　なにいろ？　	|
;|	　　　＊アカ　　　アオ			|
;+----------------------------------------------+
M260
	DB	KBO,KKU,WTO,KKO,KI,KTU,WHA,WT2
	DB	WTI,WGA,WU,XX,KI,KRO,WBC,XX
	DB	KBO,KKU,WGA,KA,KKA,WNA,WRA,WT2
	DB	KKO,KI,KTU,WHA,KA,KO,WBC,XX
	DB	KKO,KI,KTU,WGA,KA,KKA,WNA,WRA
	DB	WT2,KBO,KKU,WHA,KA,KO,WBC,XX
	DB	WKU,WRA,WBE,WTE,WMI,WYO,WU,WT2
	DB	KKA,KRA,WB_,WDE,WNE,WBC,XX,XX
	DB	WSA,WTE,WT2,KBO,KKU,WNO,WHU,WKU
	DB	WHA,XX,WNA,WNI,WI,WRO,WQE,XX
	DB	XX,XX,XX,XX,KA,KKA
	DB	XX,XX,XX,KA,KO,WE2
;
;+----------------------------------------------+
;|	ボヨヨン！　オレたちが　ザコじゃ	|
;|	ないことを　おもいしらせてやる！	|
;|	オマエのニガテな、アイツに　　　	|
;|	ヘンシンだ！ケンなど　きかぬゾ！	|
;+----------------------------------------------+
M261	;服ダンジョン、中ボス（青）スライムからニョロ変化前
	DB	KBO,KYO,KYO,KN,WBC,XX,KO,KRE,WTA,WTI,WGA,XX,KZA,KKO,WZI,WAY
	DB	WNA,WI,WKO,WTO,WWO,XX,WO,WMO,WI,WSI,WRA,WSE,WTE,WYA,WRU,WBC
	DB	KO,KMA,KE,WNO,KNI,KGA,KTE,WNA,WT2,KA,KI,KTU,WNI,XX,XX,XX
	DB	KHE,KN,KSI,KN,WDA,WBC,KKE,KN,WNA,WDO,XX,WKI,WKA,WNU,KZO,WBC
	DB	WED
;
;+----------------------------------------------+
;|	うーん、ゴメンね。このダンジョン	|
;|	はべつめい、カラーダンジョン！　	|
;|	カラーせんようなんだ。ボクたちの	|
;|	どっちが　アカで、どっちがアオの	|
;|	ふくを　きているか　わかったら　	|
;|	はいれるようになるよ。またね。		|
;+----------------------------------------------+
M262
	DB	WU,WB_,WN,WT2,KGO,KME,KN,WNE
	DB	WMR,WKO,WNO,KDA,KN,KZI,KOY,KN
	DB	WHA,WBE,WTU,WME,WI,WT2,KKA,KRA
	DB	WB_,KDA,KN,KZI,KOY,KN,WBC,XX
	DB	KKA,KRA,WB_,WSE,WN,WYO,WU,WNA
	DB	WN,WDA,WMR,KBO,KKU,WTA,WTI,WNO
	DB	WDO,WT,WTI,WGA,KA,KKA,WDE,WT2
	DB	WDO,WT,WTI,WGA,KA,KO,WNO,XX
	DB	WHU,WKU,WWO,XX,WKI,WTE,WI,WRU
	DB	WKA,XX,WWA,WKA,WT,WTA,WRA,XX
	DB	WHA,WI,WRE,WRU,WYO,WU,WNI,WNA
	DB	WRU,WYO,WMR,WMA,WTA,WNE,WMR
	DB	WED
;
;+----------------------------------------------+
;|	イロ　ツキシ　トコロ　タタクベシ	|
;|	スベテ　アオ　ニテ　ナゾ　トケリ	|
;+----------------------------------------------+
M263	;＃０のヒントを言う壁
	DB	KI,KRO,XX,KTU,KKI,KSI,XX,KTO,KKO,KRO,XX,KTA,KTA,KKU,KBE,KSI
	DB	KSU,KBE,KTE,XX,KA,KO,XX,KNI,KTE,XX,KNA,KZO,XX,KTO,KKE,KRI
	DB	WED
;
;+----------------------------------------------+
;|	ちがうよ、ちがうよ、　　　　　　	|
;|	もう１ど　よくみて　こたえて！		|
;+----------------------------------------------+
M264
	DB	WTI,WGA,WU,WYO,WT2,WTI,WGA,WU
	DB	WYO,WT2,XX,XX,XX,XX,XX,XX
	DB	WMO,WU,W1,WDO,XX,WYO,WKU,WMI
	DB	WTE,XX,WKO,WTA,WE,WTE,WBC
	DB	WED
;
;+----------------------------------------------+
;|	みんなには、ナイショだよ・・・		|
;+----------------------------------------------+
M265
	DB	WMI,WN,WNA,WNI,WHA,WT2,KNA,KI,KSI,KOY,WDA,WYO,WTN,WTN,WTN
	DB	WED
;
;+----------------------------------------------+
;|	　　「いろのちからについて」　　	|
;|	このほんをよんでみる？　　　　　	|
;|	　　　＊よむ　　　よまない		|
;+----------------------------------------------+
M266
	DB	XX,XX,KG1,WI,WRO,WNO,WTI,WKA
	DB	WRA,WNI,WTU,WI,WTE,KG2,XX,XX
	DB	WKO,WNO,WHO,WN,WWO,WYO,WN,WDE
	DB	WMI,WRU,WQE,XX,XX,XX,XX,XX
	DB	XX,XX,XX,XX,WYO,WMU
	DB	XX,XX,XX,WYO,WMA,WNA,WI,WE2
;
;+----------------------------------------------+
;|	あたらしき　カラーの　せかい　　	|
;|	５つならぶ　はかの　ちかにあり。　　　	|
;|	　　　３上　　４右　　５上　　　	|
;|	　　　２左　　１下　　　　　　　	|
;|	ちからのかぎり　おしつづけるべし	|
;|	あたらしき　みちが　ひらかれる！	|
;|	しかくあるものには　いろの　　　	|
;|	チカラが　ふくに　やどる。　　　	|
;|	うむむ？・・カラーの　せかいって	|
;|	どういうことだろう？			|
;+----------------------------------------------+
M267
	DB	WA,WTA,WRA,WSI,WKI,XX,KKA,KRA
	DB	WB_,WNO,XX,WSE,WKA,WI,XX,XX
	DB	W5,WTU,WNA,WRA,WBU,XX,WHA,WKA
	DB	WNO,XX,WTI,WKA,WNI,WA,WRI,WMR
	DB	XX,XX,XX,W3,XU,XX,XX,W4
	DB	XR,XX,XX,W5,XU,XX,XX,XX
	DB	XX,XX,XX,W2,XL,XX,XX,W1
	DB	XD,XX,XX,XX,XX,XX,XX,XX
	DB	WTI,WKA,WRA,WNO,WKA,WGI,WRI,XX
	DB	WO,WSI,WTU,WDU,WKE,WRU,WBE,WSI
	DB	WA,WTA,WRA,WSI,WKI,XX,WMI,WTI
	DB	WGA,XX,WHI,WRA,WKA,WRE,WRU,WBC
	DB	WSI,WKA,WKU,WNO,WA,WRU,WMO,WNO
	DB	WNI,WHA,XX,WI,WRO,WNO,XX,XX
	DB	KTI,KKA,KRA,WGA,XX,WHU,WKU,WNI
	DB	XX,WYA,WDO,WRU,WMR,XX,XX,XX
	DB	WU,WMU,WMU,WQE,WTN,WTN,KKA,KRA
	DB	WB_,WNO,XX,WSE,WKA,WI,WT,WTE
	DB	WDO,WU,WI,WU,WKO,WTO,WDA,WRO
	DB	WU,WQE
	DB	WED
;
;+----------------------------------------------+
;|	めざめのししゃ、名名名名名よ！　	|
;|	よく、ここまでたどりつきました。	|
;|	あなたをしかくあるものと　みとめ	|
;|	いろのちからを　あたえましょう！	|
;|	あなたが、こうげきのちからを　　	|
;|	もとめるのならば、アカを！　　　	|
;|	ぼうぎょのちからを　もとめるの　	|
;|	ならば、アオをえらびなさい！　　	|
;|	さあ、どちらを　えらぶのですか？	|
;|	　　　　アカ　　　アオ			|
;+----------------------------------------------+
M268	;妖精の女王
	DB	WME,WZA,WME,WNO,WSI,WSI,WAY,WT2,NM,NM,NM,NM,NM,WYO,WBC,XX
	DB	WYO,WKU,WT2,WKO,WKO,WMA,WDE,WTA,WDO,WRI,WTU,WKI,WMA,WSI,WTA,WMR
	DB	WA,WNA,WTA,WWO,WSI,WKA,WKU,WA,WRU,WMO,WNO,WTO,XX,WMI,WTO,WME
	DB	WI,WRO,WNO,WTI,WKA,WRA,WWO,XX,WA,WTA,WE,WMA,WSI,WOY,WU,WBC
	DB	WA,WNA,WTA,WGA,WT2,WKO,WU,WGE,WKI,WNO,WTI,WKA,WRA,WWO,XX,XX
	DB	WMO,WTO,WME,WRU,WNO,WNA,WRA,WBA,WT2,KA,KKA,WWO,WBC,XX,XX,XX
	DB	WBO,WU,WGI,WOY,WNO,WTI,WKA,WRA,WWO,XX,WMO,WTO,WME,WRU,WNO,XX
	DB	WNA,WRA,WBA,WT2,KA,KO,WWO,WE,WRA,WBI,WNA,WSA,WI,WBC,XX,XX
	DB	WSA,WA,WT2,WDO,WTI,WRA,WWO,XX,WE,WRA,WBU,WNO,WDE,WSU,WKA,WQE
	DB	XX,XX,XX,XX,KA,KKA,XX,XX,XX,KA,KO,WE2
;
;+----------------------------------------------+
;|	バカめ、ケンなど　きかんわ！コナ	|
;|	でも、テッポウでも　もってこい！	|
;+----------------------------------------------+
M269	;大ニョロを剣で切る！（変化後切ったとき１回目に出す）
	DB	KBA,KKA,WME,WT2,KKE,KN,WNA,WDO,XX,WKI,WKA,WN,WWA,WBC,KKO,KNA
	DB	WDE,WMO,WT2,KTE,KT,KPO,KU,WDE,WMO,XX,WMO,WT,WTE,WKO,WI,WBC
	DB	WED
;
;+----------------------------------------------+
;|	このよくばりものめ・・・　　　　	|
;|	さらにチカラを　もとめるとは！　	|
;|	オマエのようなオロカモノは、この	|
;|	ハカのそこで、くちはてるがよい！	|
;+----------------------------------------------+
M26A	;服ダンジョン、中ボス（黄）
	DB	WKO,WNO,WYO,WKU,WBA,WRI,WMO,WNO,WME,WTN,WTN,WTN,XX,XX,XX,XX
	DB	WSA,WRA,WNI,KTI,KKA,KRA,WWO,XX,WMO,WTO,WME,WRU,WTO,WHA,WBC,XX
	DB	KO,KMA,KE,WNO,WYO,WU,WNA,KO,KRO,KKA,KMO,KNO,WHA,WT2,WKO,WNO
	DB	KHA,KKA,WNO,WSO,WKO,WDE,WT2,WKU,WTI,WHA,WTE,WRU,WGA,WYO,WI,WBC
	DB	WED
;
;+----------------------------------------------+
;|	いろのちからを　さずけましょう。	|
;|	すこしのあいだ、めをとじて・・・	|
;+----------------------------------------------+
M26B	;服を脱がされるーっ！（はいの時）
	DB	WI,WRO,WNO,WTI,WKA,WRA,WWO,XX,WSA,WZU,WKE,WMA,WSI,WOY,WU,WMR
	DB	WSU,WKO,WSI,WNO,WA,WI,WDA,WT2,WME,WWO,WTO,WZI,WTE,WTN,WTN,WTN
	DB	WED
;
;+----------------------------------------------+
;|	あなたを　ちじょうまで、　　　　	|
;|	おくりとどけてあげましょう！　　	|
;+----------------------------------------------+
M26C	;用が済んだら追い出された！
	DB	WA,WNA,WTA,WWO,XX,WTI,WZI,WOY,WU,WMA,WDE,XX,XX,XX,XX,XX
	DB	WO,WKU,WRI,WTO,WDO,WKE,WTE,WA,WGE,WMA,WSI,WOY,WU,WBC
	DB	WED
;
;+----------------------------------------------+
;|	アオ、アンゼン　アンゼン！　　　	|
;|	キイロ、チュウイ！アカ・・キケン	|
;+----------------------------------------------+
M26D	;服ダンジョン最後のボス
	DB	KA,KO,WT2,KA,KN,KZE,KN,XX,KA,KN,KZE,KN,WBC,XX,XX,XX
	DB	KKI,KI,KRO,WT2,KTI,KUY,KU,KI,WBC,KA,KKA,WTN,WTN,KKI,KKE,KN
	DB	WED
;
;+----------------------------------------------+
;|	キイロ、チュウイ！アカ、キケン！	|
;|	ジカンカセギ・・・ジカンカセギ！	|
;+----------------------------------------------+
M26E	;ピンチ！骸骨が降ってくる！
	DB	KKI,KI,KRO,WT2,KTI,KUY,KU,KI,WBC,KA,KKA,WT2,KKI,KKE,KN,WBC
	DB	KZI,KKA,KN,KKA,KSE,KGI,WTN,WTN,WTN,KZI,KKA,KN,KKA,KSE,KGI,WBC
	DB	WED
;
;+----------------------------------------------+
;|	フッカツ！　アオ・・・フリダシ！	|
;|	キイロ、チュウイ！アカ、キケン！	|
;+----------------------------------------------+
M26F	;復活！青に戻った！！
	DB	KHU,KT,KKA,KTU,WBC,XX,KA,KO,WTN,WTN,WTN,KHU,KRI,KDA,KSI,WBC
	DB	KKI,KI,KRO,WT2,KTI,KUY,KU,KI,WBC,KA,KKA,WT2,KKI,KKE,KN,WBC
	DB	WED
;
;+----------------------------------------------+
;|	あ、いいな！いいかんじ。　　　　	|
;|	だいめい「ワンワンと　たわむれる	|
;|	名名名名名！」　じゃ、名名名名名	|
;|	もっと　ワンワンのそばに！　　　終	|
;+----------------------------------------------+
M270	;写真６：ワンワンの巻
	DB	WA,WT2,WI,WI,WNA,WBC,WI,WI,WKA,WN,WZI,WMR,XX,XX,XX,XX
	DB	WDA,WI,WME,WI,KG1,KWA,KN,KWA,KN,WTO,XX,WTA,WWA,WMU,WRE,WRU
	DB	NM,NM,NM,NM,NM,WBC,KG2,XX,WZI,WAY,WT2,NM,NM,NM,NM,NM
	DB	WMO,WT,WTO,XX,KWA,KN,KWA,KN,WNO,WSO,WBA,WNI,WBC
	DB	WED
;
;+----------------------------------------------+
;|	　　　　　　バウッ！　　　　　終	|
;+----------------------------------------------+
M271	;写真６：歩くと剣がワンワンにあたる！
	DB	XX,XX,XX,XX,XX,XX,KBA,KU,KT,WBC
	DB	WED
;
;+----------------------------------------------+
;|	名名名名名、もっとちかづいて！終	|
;+----------------------------------------------+
M272	;写真６：もっと近く！
	DB	NM,NM,NM,NM,NM,WT2,WMO,WT,WTO,WTI,WKA,WDU,WI,WTE,WBC
	DB	WED
;
;+----------------------------------------------+
;|	　　　　バウッ！バウッ！　　　終	|
;+----------------------------------------------+
M273	;写真６：また剣がワンワンにあたる！
	DB	XX,XX,XX,XX,KBA,KU,KT,WBC,KBA,KU,KT,WBC
	DB	WED
;
;+----------------------------------------------+
;|	よーし　とるよー、カッコつけてー	|
;+----------------------------------------------+
M274	;写真６：もっともっと近く！
	DB	WYO,WB_,WSI,XX,WTO,WRU,WYO,WB_,WT2,KKA,KT,KKO,WTU,WKE,WTE,WB_
	DB	WED
;
;+----------------------------------------------+
;|	　　バウッ！バウッ！バウッ！　終	|
;+----------------------------------------------+
M275	;写真６：またまた剣がワンワンにあたる！
	DB	XX,XX,KBA,KU,KT,WBC,KBA,KU,KT,WBC,KBA,KU,KT,WBC
	DB	WED
;
M276 ;マリンオプション時ニワトリやってまえー
    DB  KKI,KAY,KHA,KT,WBC,XX,XX,WYA,WRE,WB_,WBC,XX,WYA,WRE,WB_,WBC
    DB  WMO,WT,WTO,WYA,WRE,WB_,WBC,XX,XX,WTN,XX,WTN,XX,WTN,XX,WTN
    DB  XX,XX,XX,XX,XX,XX,XX,XX,XX,XX,XX,XX,XX,XX,XX,XX
    DB  WI,WYA,WT,XX,WNA,WN,WDE,WMO,WNA,WI,WWA,WTN,WTN,WTN
    DB  WED
M277;マリンオプション時笛を吹いた（へたくそ）
    DB  XX,XX,XX,XX,XX,XX,XX,XX
    DB  XX,XX,XX,XX,XX,XX,XX,XX
    DB  XX,XX,XX,XX,XX,KI,KMA,KI,KTI,WTN,WTN,WTN,XX,XX,XX,XX  
  ;
    DB  WE,WT,WBC,WQE,XX,WWA,WTA,WSI
    DB  XX,WNA,WNI,WKA,WI,WT,WTA,WQE
    DB  WKI,WNO,WSE,WB_,WYO,WBC,XX,WKI,WNO
    DB  WSE,WB_,WBC,XX,XX
    DB  WED
;
M278;マリンオプション時たんすを開けた
    DB  NM,NM,NM,NM,NM,WT,WTE,XX
    DB  WI,WTU,WMO,XX,XX,XX,XX,XX
    DB  WKO,WN,WNA,WKO,WTO,WSI,WTE
    DB  WRU,WNO,WQE,WQE,XX,XX,XX,XX,XX
    DB  WED
;
M279;マリンオプション時　スコップ３．４回使った
    DB  XX,KKI,KAY,WB_,KT,WBC,XX
    DB  WHO,WT,WTE,WBC,WHO,WT,WTE,WBC,XX 
    DB  WDO,WN,WDO,WN,XX,WHO,WRI,WMA
    DB  WKU,WT,WTE,WBC,WBC,XX,XX,XX
    DB  WED
M27A
  DB WHU,WU,WT,WTN,WTN,XX,XX,WBI,WT,WKU,WRA,WKO,WI,WTA,WMR
  DB WED
M27B
  DB XX,KGI,KAY,WB_,WB_,KT,WBC,XX,XX,KGO,KME,KN,KNA,KSA,KI,XX
  DB WDA,WI,WZI,WOY,WU,WBU,WQE,XX,XX,NM,NM,NM,NM,NM,WQE
  DB WED
;---- Ｒモト 会話 ----
M27C
	DB	WA,WN,WNE,WQE,XX,WMA,WT,WE,WE,WKA,WO,WMO,WT,WTE,WNE,WTN,WTN,WTN
	DB	WED
M27D
	DB	WBE,WTU,WNI,WTN,WTN,WTN
	DB	WED
M27E
	DB	WU,WN,XX,WWA,WKA,WT,WTE,WRU,WYO,WMR
	DB	WED
M27F
	DB	WI,WYA,WT,XX,WMO,WU,WA,WRU,WYO,WMR
        DB      XX,XX,XX,XX,XX,XX
        DB      WTN,WTN,WTN,WI,WZI,WOY,WU,XX,MK7
        DB      KMO,KTO,WGO,WRO,WKU,XX,XX
;
        DB      KGE,WB_,KMU,WTO,WHA,WT2,WI,WT
        DB      WSA,WI,WKA,WN,WKE,WI,XX,XX
        DB      WGO,WZA,WI,WMA,WSE,WN,WBC
	DB	WED
;=================================================
;
;****************
;*フクロウの石像*
;****************
M280	; Ｌｖ１の石碑
	DB	KTO,KGE,XX,KSU,KRU,KDO,KKI,KMO,KNO,XX
	DB	KTA,KTE,KNI,KTE,XX,XX
	DB	KHA,KZI,KKI,XX,KTO,KBA,KSU,KBE,KSI,WTN,WTN,WTN
	DB	WED
;
M281	; Ｌｖ２の石碑
	DB	KSA,KI,KSI,KOY,XX,KO,KO,KMI
	DB	KMI,KNO,KMA,KMO,KNO,WTN,WTN,WTN
	DB	KSA,KI,KGO,XX,XX,KDO,KKU,KRO,KNA,KI,KTO
	DB	WTN,WTN,WTN
	DB	WED
;
M282	; Ｌｖ３の石碑
	DB	KTO,KO,KI,XX,KTO,KKO,KRO,WTN
	DB	WTN,WTN,WTN,XX,XX,XX,XX,XX
	DB	KO,KSO,KRE,KZU,XX,KHA,KSI,KRI
	DB	XX,KTO,KBU,KBE,KSI,WTN,WTN,WTN
	DB	WED
;
M283	; Ｌｖ４の石碑
	DB	KHI,KKA,KRU,KYU,KKA,XX,KSO,KNO
	DB	XX,KU,KGO,KKI,KSI,KRU,KMO,KNO
	DB	KKA,KNA,KRA,KZU,XX,KMI,KTI,KBI,KKA,KRE,KRU,WTN,WTN,WTN
	DB	WED
;
M284	; Ｌｖ５の石碑
	DB	KRO,KU,KSO,KKU,KNO,KA,KKA,KRI
	DB	XX,KMA,KZI,KWA,KRU,KTO,KKO,KRO
	DB	KHU,KKA,KKU,XX,KMO,KGU,KRU,KBE,KSI,WTN,WTN,WTN
	DB	WED
;
M285	; Ｌｖ６の石碑
	DB	KTI,KZU,KNI,XX,KU,KKA,KBU,XX,KKA,KO,XX,KRI,KOY,KU,KNO,XX
	DB	KME,KNI,XX,KKA,KBE,KWA,KRI,KTE,XX,KHA,KI,KRU,KBE,KSI
	DB	WED
;
M286	; Ｌｖ７の石碑
	DB	W4,KHO,KN,KNO,XX,KHA,KSI,KRA
	DB	XX,KTA,KO,KRE,KRU,KTO,KKI,XX
	DB	KNA,KZO,XX,KTO,KKE,KRI
	DB	WED
;
M287	; Ｌｖ８の石碑
	DB	KMI,KTI,KTU,KKU,KRU,XX,KI,KWA,XX,MK8,XX,KKI,WB_,KNI,KTE,XX
	DB	KA,KYA,KTU,KRI,XX,KYU,KKA,XX,KSU,KBE,KTE,KU,KME,KRU,KBE,KSI
	DB	WED
;
;+----------------------------------------------+
;|	ミチ　トザサレシ　ヘヤノ　トビラ	|
;|	シカクノ　イシヲ　ウゴカスベシ終	|
;+----------------------------------------------+
M288	; Ｌｖ１の石碑（その２）
	DB	KMI,KTI,XX ,KTO,KZA,KSA,KRE,KSI,XX ,KHE,KYA,KNO,XX ,KTO,KBI,KRA
	DB	KSI,KKA,KKU,KNO,XX ,KI ,KSI,KWO,XX ,KU ,KGO,KKA,KSU,KBE,KSI,WED
;
;+----------------------------------------------+
;|	ユカノ　モヨウヲ　１ツニ　スレバ	|
;|	アラタナ　ミチガ　ヒラカレル・・終	|
;+----------------------------------------------+
M289	; Ｌｖ２の石碑（その２）
	DB	KYU,KKA,KNO,XX ,KMO,KYO,KU ,KWO,XX ,W1 ,KTU,KNI,XX ,KSU,KRE,KBA
	DB	KA ,KRA,KTA,KNA,XX ,KMI,KTI,KGA,XX ,KHI,KRA,KKA,KRE,KRU,WTN,WTN
	DB	WED
;
;+----------------------------------------------+
;|	ミチヲ　フサグ　トビデタル　ユカ	|
;|	アオキ　クリスタルヲ　タタケ　終	|
;+----------------------------------------------+
M28A	; Ｌｖ２の石碑（その３）
	DB	KMI,KTI,KWO,XX ,KHU,KSA,KGU,XX ,KTO,KBI,KDE,KTA,KRU,XX ,KYU,KKA
	DB	KA ,KO ,KKI,XX ,KKU,KRI,KSU,KTA,KRU,KWO,XX ,KTA,KTA,KKE,XX ,WED
;
;+----------------------------------------------+
;|	カタキ　カラヲモツ　クロキマモノ	|
;|	ウチガワヨリ　コウゲキ　クワエヨ	|
;+----------------------------------------------+
M28B	; Ｌｖ３の石碑（その２）
	DB	KKA,KTA,KKI,XX ,KKA,KRA,KWO,KMO,KTU,XX ,KKU,KRO,KKI,KMA,KMO,KNO
	DB	KU ,KTI,KGA,KWA,KYO,KRI,XX ,KKO,KU ,KGE,KKI,XX ,KKU,KWA,KE ,KYO
	DB	WED
;
;+----------------------------------------------+
;|	アヤシキ　カベヲ　ケンデ　ツツケ	|
;|	オトノ　チガイニ　キヲツケルベシ	|
;+----------------------------------------------+
M28C	; Ｌｖ３の石碑（その３）
	DB	KA ,KYA,KSI,KKI,XX ,KKA,KBE,KWO,XX ,KKE,KN ,KDE,XX ,KTU,KTU,KKE
	DB	KO ,KTO,KNO,XX ,KTI,KGA,KI ,KNI,XX ,KKI,KWO,KTU,KKE,KRU,KBE,KSI
	DB	WED
;
;+----------------------------------------------+
;|	ケンデ　タオセヌ　ガイコツケンシ	|
;|	クズレタ　トコロヲ　バクハスベシ	|
;+----------------------------------------------+
M28D	;Ｌｖ５の石碑（その２）
	DB	KKE,KN ,KDE,XX ,KTA,KO ,KSE,KNU,XX ,KGA,KI ,KKO,KTU,KKE,KN ,KSI
	DB	KKU,KZU,KRE,KTA,XX ,KTO,KKO,KRO,KWO,XX ,KBA,KKU,KHA,KSU,KBE,KSI
	DB	WED
;
;+----------------------------------------------+
;|	ツボニ　カコマレシ　タカラバコ　	|
;|	ショウゲキヲ　アタエ　アケルベシ	|
;+----------------------------------------------+
M28E	;Ｌｖ６の石碑（その２）
	DB	KTU,KBO,KNI,XX ,KKA,KKO,KMA,KRE,KSI,XX ,KTA,KKA,KRA,KBA,KKO,XX 
	DB	KSI,KOY,KU ,KGE,KKI,KWO,XX ,KA ,KTA,KE ,XX ,KA ,KKE,KRU,KBE,KSI
	DB	WED
;
;+----------------------------------------------+
;|	ミチヲ　フサグ　クリスタルノユカ	|
;|	ウエニ　ノリテ　サキ　ススムベシ	|
;+----------------------------------------------+
M28F	;Ｌｖ６の石碑（その３）
	DB	KMI,KTI,KWO,XX ,KHU,KSA,KGU,XX ,KKU,KRI,KSU,KTA,KRU,KNO,KYU,KKA
	DB	KU ,KE ,KNI,XX ,KNO,KRI,KTE,XX ,KSA,KKI,XX ,KSU,KSU,KMU,KBE,KSI
	DB	WED
;
;+----------------------------------------------+
;|	サキニ　ススメヌ　サクノ　ムコウ	|
;|	ソノテニ　モツモノ　ナゲコムベシ	|
;+----------------------------------------------+
M290	;Ｌｖ７の石碑（その２）
	DB	KSA,KKI,KNI,XX ,KSU,KSU,KME,KNU,XX ,KSA,KKU,KNO,XX ,KMU,KKO,KU 
	DB	KSO,KNO,KTE,KNI,XX ,KMO,KTU,KMO,KNO,XX ,KNA,KGE,KKO,KMU,KBE,KSI
	DB	WED
;
;+----------------------------------------------+
;|	タカキ　ダイノウエノ　タカラバコ	|
;|	サラナル　タカサヨリ　オチルベシ	|
;+----------------------------------------------+
M291	;Ｌｖ７の石碑（その３）
	DB	KTA,KKA,KKI,XX ,KDA,KI ,KNO,KU ,KE ,KNO,XX ,KTA,KKA,KRA,KBA,KKO
	DB	KSA,KRA,KNA,KRU,XX ,KTA,KKA,KSA,KYO,KRI,XX ,KO ,KTI,KRU,KBE,KSI
	DB	WED
;
;+----------------------------------------------+
;|	カギヲ　マモリシ　２ヒキノマモノ	|
;|	ソトヨリタカキニ　マワリコムベシ	|
;+----------------------------------------------+
M292	;Ｌｖ８の石碑（その２）
	DB	KKA,KGI,KWO,XX ,KMA,KMO,KRI,KSI,XX ,W2 ,KHI,KKI,KNO,KMA,KMO,KNO
	DB	KSO,KTO,KYO,KRI,KTA,KKA,KKI,KNI,XX ,KMA,KWA,KRI,KKO,KMU,KBE,KSI
	DB	WED
;
;+----------------------------------------------+
;|	アヤシキ　ヒトツメノ　セキゾウ　	|
;|	ソノメヲ　ヤ　ニテ　イヌクベシ終	|
;+----------------------------------------------+
M293	;Ｌｖ８の石碑（その３）
	DB	KA ,KYA,KSI,KKI,XX ,KHI,KTO,KTU,KME,KNO,XX ,KSE,KKI,KZO,KU ,XX 
	DB	KSO,KNO,KME,KWO,XX ,KYA,XX ,KNI,KTE,XX ,KI ,KNU,KKU,KBE,KSI,WED
;
;+----------------------------------------------+
;|	イヤ？　しゃしん、とろうよ！　　	|
;|	　　　　いいよ　　やっぱりヤダ！	|
;+----------------------------------------------+
M294	;写真屋会話（いいえのとき：写真屋１ユニットずつ近づく）
	DB	KI ,KYA,WQE,XX ,WSI,WAY,WSI,WN ,WT2,WTO,WRO,WU ,WYO,WBC,XX ,XX 
	DB	XX ,XX ,XX ,XX ,WI ,WI ,WYO,XX ,XX ,WYA,WT ,WPA,WRI,KYA,KDA,WBC
	DB	WE2
;
;+----------------------------------------------+
;|	どうしてもイヤ？　ウソだよね？　	|
;|	　　　　ウソ　　　ホント！選		|
;+----------------------------------------------+
M295	;写真屋会話（いいえ５回目のとき）
	DB	WDO,WU ,WSI,WTE,WMO,KI ,KYA,WQE,XX ,KU ,KSO,WDA,WYO,WNE,WQE,XX 
	DB	XX ,XX ,XX ,XX ,KU ,KSO,XX ,XX ,XX ,KHO,KN ,KTO,WBC,WE2
;
;+----------------------------------------------+
;|	ヒドイよ！ヒドイよーっ！終		|
;+----------------------------------------------+
M296	;写真屋タックル！（ホント選択）
	DB	KHI,KDO,KI ,WYO,WBC,KHI,KDO,KI ,WYO,WB_,WT ,WBC,WED
;
;+----------------------------------------------+
;|	あ・・・ゲージュツ！　　　　　　	|
;|	だいめい　「ゲーム　オーバー」終	|
;+----------------------------------------------+
M297	;写真屋撮影（飛ばされたとき）
	DB	WA ,WTN,WTN,WTN,KGE,WB_,KZI,KUY,KTU,WBC,XX ,XX ,XX ,XX ,XX ,XX 
	DB	WDA,WI ,WME,WI ,XX ,KG1,KGE,WB_,KMU,XX ,KO ,WB_,KBA,WB_,KG2,WED
;
;+----------------------------------------------+
;|	あ、おきゃくさん・・・なまえは？	|
;|	そう、名名名名名！　　　　　　　	|
;|	これが、名名名名名のアルバムだ。	|
;|	かえるまえに、みておいてくれ！終	|
;+----------------------------------------------+
M298	;撮影後（アルバムを置くとき）
	DB	WA ,WT2,WO ,WKI,WAY,WKU,WSA,WN ,WTN,WTN,WTN,WNA,WMA,WE ,WHA,WQE
	DB	WSO,WU ,WT2,NM ,NM ,NM ,NM ,NM ,WBC,XX ,XX ,XX ,XX ,XX ,XX ,XX 
	DB	WKO,WRE,WGA,WT2,NM ,NM ,NM ,NM ,NM ,WNO,KA ,KRU,KBA,KMU,WDA,WMR
	DB	WKA,WE ,WRU,WMA,WE ,WNI,WT2,WMI,WTE,WO ,WI ,WTE,WKU,WRE,WBC,WED
;
;+----------------------------------------------+
;|	いつも、チャンスをまってるから　	|
;|	アルバムをいっぱいにしようね！終	|
;+----------------------------------------------+
M299	;かえり
	DB	WI ,WTU,WMO,WT2,KTI,KAY,KN ,KSU,WWO,WMA,WT ,WTE,WRU,WKA,WRA,XX 
	DB	KA ,KRU,KBA,KMU,WWO,WI ,WT ,WPA,WI ,WNI,WSI,WYO,WU ,WNE,WBC,WED
;
;+----------------------------------------------+
;|	のこりのフィルム１１まい！　　　	|
;|	どんなしゃしんを　とろうかな？終	|
;+----------------------------------------------+
M29A
	DB	WNO,WKO,WRI,WNO,KHU,SSHI,KRU,KMU,W1 ,W1 ,WMA,WI ,WBC,XX ,XX ,XX 
	DB	WDO,WN ,WNA,WSI,WAY,WSI,WN ,WWO,XX ,WTO,WRO,WU ,WKA,WNA,WQE,WED
;
;+----------------------------------------------+
;|	のこりのフィルム１０まい！　　　	|
;|	どんなしゃしんを　とろうかな？終	|
;+----------------------------------------------+
M29B
	DB	WNO,WKO,WRI,WNO,KHU,SSHI,KRU,KMU,W1 ,W0 ,WMA,WI ,WBC,XX ,XX ,XX 
	DB	WDO,WN ,WNA,WSI,WAY,WSI,WN ,WWO,XX ,WTO,WRO,WU ,WKA,WNA,WQE,WED
;
;+----------------------------------------------+
;|	のこりのフィルム９まい！　	　　	|
;|	どんなしゃしんを　とろうかな？終	|
;+----------------------------------------------+
M29C
	DB	WNO,WKO,WRI,WNO,KHU,SSHI,KRU,KMU,W9 ,WMA,WI ,WBC,XX ,XX ,XX ,XX
	DB	WDO,WN ,WNA,WSI,WAY,WSI,WN ,WWO,XX ,WTO,WRO,WU ,WKA,WNA,WQE,WED
;
;+----------------------------------------------+
;|	のこりのフィルム８まい！　	　　	|
;|	どんなしゃしんを　とろうかな？終	|
;+----------------------------------------------+
M29D
	DB	WNO,WKO,WRI,WNO,KHU,SSHI,KRU,KMU,W8 ,WMA,WI ,WBC,XX ,XX ,XX ,XX
	DB	WDO,WN ,WNA,WSI,WAY,WSI,WN ,WWO,XX ,WTO,WRO,WU ,WKA,WNA,WQE,WED
;
;+----------------------------------------------+
;|	のこりのフィルム７まい！	　　　	|
;|	どんなしゃしんを　とろうかな？終	|
;+----------------------------------------------+
M29E
	DB	WNO,WKO,WRI,WNO,KHU,SSHI,KRU,KMU,W7 ,WMA,WI ,WBC,XX ,XX ,XX ,XX
	DB	WDO,WN ,WNA,WSI,WAY,WSI,WN ,WWO,XX ,WTO,WRO,WU ,WKA,WNA,WQE,WED
;
;+----------------------------------------------+
;|	のこりのフィルム６まい！	　　　	|
;|	どんなしゃしんを　とろうかな？終	|
;+----------------------------------------------+
M29F
	DB	WNO,WKO,WRI,WNO,KHU,SSHI,KRU,KMU,W6 ,WMA,WI ,WBC,XX ,XX ,XX ,XX
	DB	WDO,WN ,WNA,WSI,WAY,WSI,WN ,WWO,XX ,WTO,WRO,WU ,WKA,WNA,WQE,WED
;
;+----------------------------------------------+
;|	のこりのフィルム５まい！	　　　	|
;|	どんなしゃしんを　とろうかな？終	|
;+----------------------------------------------+
M2A0
	DB	WNO,WKO,WRI,WNO,KHU,SSHI,KRU,KMU,W5 ,WMA,WI ,WBC,XX ,XX ,XX ,XX
	DB	WDO,WN ,WNA,WSI,WAY,WSI,WN ,WWO,XX ,WTO,WRO,WU ,WKA,WNA,WQE,WED
;
;+----------------------------------------------+
;|	のこりのフィルム４まい！	　　　	|
;|	どんなしゃしんを　とろうかな？終	|
;+----------------------------------------------+
M2A1
	DB	WNO,WKO,WRI,WNO,KHU,SSHI,KRU,KMU,W4 ,WMA,WI ,WBC,XX ,XX ,XX ,XX
	DB	WDO,WN ,WNA,WSI,WAY,WSI,WN ,WWO,XX ,WTO,WRO,WU ,WKA,WNA,WQE,WED
;
;+----------------------------------------------+
;|	のこりのフィルム３まい！	　　　	|
;|	どんなしゃしんを　とろうかな？終	|
;+----------------------------------------------+
M2A2
	DB	WNO,WKO,WRI,WNO,KHU,SSHI,KRU,KMU,W3 ,WMA,WI ,WBC,XX ,XX ,XX ,XX
	DB	WDO,WN ,WNA,WSI,WAY,WSI,WN ,WWO,XX ,WTO,WRO,WU ,WKA,WNA,WQE,WED
;
;+----------------------------------------------+
;|	のこりのフィルム２まい！　　　		|
;|	どんなしゃしんを　とろうかな？終	|
;+----------------------------------------------+
M2A3
	DB	WNO,WKO,WRI,WNO,KHU,SSHI,KRU,KMU,W2 ,WMA,WI ,WBC,XX ,XX ,XX ,XX
	DB	WDO,WN ,WNA,WSI,WAY,WSI,WN ,WWO,XX ,WTO,WRO,WU ,WKA,WNA,WQE,WED
;
;+----------------------------------------------+
;|	のこりのフィルム１まい！　　　		|
;|	どんなしゃしんを　とろうかな？終	|
;+----------------------------------------------+
M2A4
	DB	WNO,WKO,WRI,WNO,KHU,SSHI,KRU,KMU,W1 ,WMA,WI ,WBC,XX ,XX ,XX ,XX
	DB	WDO,WN ,WNA,WSI,WAY,WSI,WN ,WWO,XX ,WTO,WRO,WU ,WKA,WNA,WQE,WED
;
;+----------------------------------------------+
;|	ざんねん！フィルム　もうないよ！	|
;|	アルバムだけでも　みていってね。	|
;+----------------------------------------------+
M2A5
	DB	WZA,WN ,WNE,WN ,WBC,KHU,SSHI,KRU,KMU,XX ,WMO,WU ,WNA,WI ,WYO,WBC
	DB	KA ,KRU,KBA,KMU,WDA,WKE,WDE,WMO,XX ,WMI,WTE,WI ,WT ,WTE,WNE,WMR
	DB	WED
;
;+----------------------------------------------+
;|	しゃしんスキスキしゃしんやさん！	|
;|	おーっ、キチョーな　しゅんかん！	|
;|	だいめい「ずじょう　ちゅうい！」	|
;+----------------------------------------------+
M2A6	;写真３：リンクつぶしマリンの巻（写真屋）
	DB	WSI,WAY,WSI,WN ,KSU,KKI,KSU,KKI,WSI,WAY,WSI,WN ,WYA,WSA,WN ,WBC
	DB	WO ,WB_,WT ,WT2,KKI,KTI,KOY,WB_,WNA,XX ,WSI,WUY,WN ,WKA,WN ,WBC
	DB	WDA,WI ,WME,WI ,KG1,WZU,WZI,WOY,WU ,XX ,WTI,WUY,WU ,WI ,WBC,KG2
	DB	WED
;
;+----------------------------------------------+
;|	やほー、しゃしんやさん　だよ！　	|
;|	あ、これはまさしく、名名名名名の	|
;|	ぼうけん、ってかんじだね！終		|
;+----------------------------------------------+
M2A7	;ガケ下つりばしの巻（写真12）
	DB	WYA,WHO,WB_,WT2,WSI,WAY,WSI,WN ,WYA,WSA,WN ,XX ,WDA,WYO,WBC,XX 
	DB	WA ,WT2,WKO,WRE,WHA,WMA,WSA,WSI,WKU,WT2,NM ,NM ,NM ,NM ,NM ,WNO
	DB	WBO,WU ,WKE,WN ,WT2,WT ,WTE,WKA,WN ,WZI,WDA,WNE,WBC,WED
;
;+----------------------------------------------+
;|	だいめい「ききいっぱつ！　　　　	|
;|	つなわたりじんせい」・・・・・・	|
;+----------------------------------------------+
M2A8	;写真屋危機一髪
	DB	WDA,WI ,WME,WI ,KG1,WKI,WKI,WI ,WT ,WPA,WTU,WBC,XX ,XX ,XX ,XX 
	DB	WTU,WNA,WWA,WTA,WRI,WZI,WN ,WSE,WI ,KG2,WTN,WTN,WTN,WTN,WTN,WTN
	DB	WED
;
;+----------------------------------------------+
;|	うーん、かおしか　うつらないな。	|
;+----------------------------------------------+
M2A9	;写真屋危機一髪
	DB	WU ,WB_,WN ,WT2,WKA,WO ,WSI,WKA,XX ,WU ,WTU,WRA,WNA,WI ,WNA,WMR
	DB	WED
;
;+----------------------------------------------+
;|	・・ちょっと　ちかすぎるのかな。	|
;|	さがらないと・・・　　　　　　　	|
;+----------------------------------------------+
M2AA	;写真屋危機一髪
	DB	WTN,WTN,WTI,WOY,WT ,WTO,XX ,WTI,WKA,WSU,WGI,WRU,WNO,WKA,WNA,WMR
	DB	WSA,WGA,WRA,WNA,WI ,WTO,WTN,WTN,WTN,XX ,XX ,XX ,XX ,XX ,XX ,XX 
	DB	WED
;
;+----------------------------------------------+
;|	　　　　あーーーっ？！　　　　　	|
;+----------------------------------------------+
M2AB	;写真屋危機一髪
	DB	XX ,XX ,XX ,XX ,WA ,WB_,WB_,WB_,WT ,WQE,WBC,XX ,XX ,XX ,XX ,XX
	DB	WED
;
;+----------------------------------------------+
;|	このままー・・・みせまでー・・・	|
;|	かえりまーっす・・・・　・・・・	|
;+----------------------------------------------+
M2AC	;写真屋バイバイ
	DB	WKO,WNO,WMA,WMA,WB_,WTN,WTN,WTN,WMI,WSE,WMA,WDE,WB_,WTN,WTN,WTN
	DB	WKA,WE ,WRI,WMA,WB_,WT ,WSU,WTN,WTN,WTN,WTN,XX ,WTN,WTN,WTN,WTN
	DB	WED
;
;+----------------------------------------------+
;|	ひとりのときに、またきてね！　　	|
;+----------------------------------------------+
M2AD	;最初にオプションを連れてきたときの写真屋
	DB	WHI,WTO,WRI,WNO,WTO,WKI,WNI,WMA,WTA,WKI,WTE,WNE,WBC
	DB	WED
;
;+----------------------------------------------+
;|	あおいふくで　よいのですね？　　	|
;|	　　　　はい　　　いいえ選		|
;+----------------------------------------------+
M2AE	;ほんまに青でいいの！
	DB	WA,WO,WI,WHU,WKU,WDE,XX,WYO,WI,WNO,WDE,WSU,WNE,WQE,XX,XX
	DB	XX,XX,XX,XX,WHA,WI,XX,XX,XX,WI,WI,WE,WE2
;
;+----------------------------------------------+
;|	しゃしんスキスキしゃしんやさん！	|
;|	名名名名名　そこでなにしてんの？	|
;+----------------------------------------------+
M2AF
	DB	WSI,WAY,WSI,WN ,KSU,KKI,KSU,KKI,WSI,WAY,WSI,WN ,WYA,WSA,WN ,WBC
	DB	NM ,NM ,NM ,NM ,NM ,XX ,WSO,WKO,WDE,WNA,WNI,WSI,WTE,WN ,WNO,WQE
	DB	WED
;
;
;=================================================
;=================================================
;=================================================
	END
