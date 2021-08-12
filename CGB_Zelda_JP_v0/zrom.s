

;***************************************************************
;*							       *
;*		 カセット登録 データ	      		       *
;* 		        				       *
;***************************************************************

	ORG	$100
;
	isdmg
;
;-------------- スタートベクトル-------------------
	nop
	jp	$150			; ユ−ザ−プログラム
					; スタ−ト アドレス


;----------   任天堂 ロゴ キャラクタデ−タ -----------


	defb	$CE,$ED,$66,$66
	defb	$CC,$0D,$00,$0B
	defb	$03,$73,$00,$83
	defb	$00,$0C,$00,$0D
	defb	$00,$08,$11,$1F
	defb	$88,$89,$00,$0E
	defb	$DC,$CC,$6E,$E6
	defb	$DD,$DD,$D9,$99
	defb	$BB,$BB,$67,$63
	defb	$6E,$0E,$EC,$CC
	defb	$DD,$DC,$99,$9F
	defb	$BB,$B9,$33,$3E

;       タイトル他  登録エリア

;--------------  ゲームタイトル -------------------
;;  Z E L D A
	defb	$5A,$45,$4C,$44		; ＭＡＸ１６バイト
	defb	$41,$00,$00,$00
	defb	$00,$00,$00,$00
	defb	$00,$00,$00		; １バイト消去
;(CGB)	defb	$00,$00,$00,$00

;---------------  カラー対応コード（１４３Ｈ） ----

	defb	$80			; 0:非対応 3:対応

;---------------  メーカーコード ------------------

	defb	$30,$31

;---------------  本体コード --------------------

	defb	$03			; ＣＧＢ対応 0:非対応 3:対応

;-------------- カセット タイプ -------------------

	defb	$1B			; 0:ROMのみ,1:ROM+MMC
					; 2:ROM+MBC+バックアップRAM
				        ; 3:?
;-------------- ＲＯＭサイズ ----------------------

	defb	$05			; 0:256K,1:512K,2:1M
					; 3:2M  ,4:4M  ,5:8M
;-------------- ＲＡＭサイズ ----------------------

	defb	$03			; 0:無,1:16K,2:64K,3:256K

;-------------- 仕向地コード ----------------------

;;;;;;;;	defb	$01			; 海外版
	defb	$00			; 日本版

;-------------- ？？？ ----------------------------

	defb	$33

;-------------- バージョン Ｎｏ．------------------

	defb	$00			;

;-------------- 補数チェック ----------------------
;;;;;;;;	defb	$3c			; アメリカ版
	defb	$3d			; 日本版
;;;;;;	defb	$e7			; 登録デ−タ(134H-14CH)の総和＋25 の補数 
					; $E7は開発用

;-------------- チェック サム ---------------------

;;;;;;;;	defb	$00,$00
;;;;;;;;	defb	$e3,$fd			; アメリカ版
	defb	$98,$72			; 日本版
					; カセットのＲＯＭのサムチェック
					; この値を 00 にしてサムチェックをとり,
					; その後ここにデータをセット
					; 順番は ＨＩ ＬＯＷ
;;;;;;;;	end
