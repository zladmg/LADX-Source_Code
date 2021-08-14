
		onbankgroup

;************************************************************************
;*									*
;*	タイトル    ：	ゼルダの伝説　夢を見る島ＤＸ （どいつ）		*
;*	ファイル名  ：	ZCOLSUB.S					*
;*	処理内容    ：	カラー転送データＳＵＢ				*
;*	作成日付    ：  １９９８／１１／１１				*
;*									*
;************************************************************************
;
;========================================================================
		PUBALL
		NLIST

BANK21		GROUP	$21
;------------------------------------------------------------------------
		LIST
		KANJI
		isdmg

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	オープニング３（玉子山ふもと）					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
CL_OPBKS2
; ＜ ＢＧ： open0c.col ＞
		DW	$7fff,$213f,$1417,$0000	; ( 0 )
		DW	$0089,$0dc5,$1ca0,$0000	; ( 1 )
		DW	$7fff,$2b2c,$0851,$0000	; ( 2 )
		DW	$7fff,$7d8d,$1ca0,$4c9d	; ( 3 )
		DW	$4bff,$12dc,$018c,$0000	; ( 4 )
		DW	$4bff,$2b2c,$1ca0,$0000	; ( 5 )
		DW	$7fff,$265b,$4134,$7d8d	; ( 6 )
		DW	$7fff,$7d8d,$1ca0,$0000	; ( 7 )
; ＜ ＯＢＪ：arasi.col + dx.col ＞
		DW	$7e40,$0000,$0642,$4eff	; ( 0 )
		DW	$7e40,$5a94,$175f,$7ee0	; ( 1 )
		DW	$7e40,$4986,$6f38,$2820	; ( 2 )
		DW	$7e40,$0000,$1a39,$4eff	; ( 3 )
		DW	$7975,$4b7e,$42b5,$21ef	; ( 4 ) DX きらり
		DW	$7af5,$0000,$21b1,$3f5f	; ( 5 ) DX 島かくし
		DW	$7af5,$0000,$21b1,$3f5f	; ( 6 ) DX 下地
		DW	$7af5,$7fff,$00a5,$7fff	; ( 7 ) DX 白




		end
