;;   おフランス 
;
;
;
		onbankgroup
;
;************************************************************************
;*									*
;*	タイトル    ：	ＣＧＢゼルダ					*
;*	ファイル名  ：	zatrsub_f.s					*
;*	処理内容    ：	アトリビュートセット				*
;*	作成日付    ：  １９９８／１１／１１				*
;*									*
;************************************************************************
;
		PUBALL

BANK24		GROUP	$24
		KANJI
		isdmg

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	オープニング３（玉子山ふもと）					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
AT_OPENBG3
	DB	$98,$00,$5F,$03
;;;;;	DB	$98,$00,$1F
;;;;;	DB	    $03,$03,$03,$03,$03,$03,$03,$03
;;;;;	DB	    $03,$03,$03,$03,$03,$03,$03,$03
;;;;;	DB	    $03,$03,$03,$03
;;;;;	DB	    $03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03
;
	DB	$98,$20,$5F,$03
;;;;;	DB	$98,$20,$1F
;;;;;	DB	    $03,$03,$03,$03,$03,$03,$03,$03
;;;;;	DB	    $03,$03,$03,$03,$03,$03,$03,$03
;;;;;	DB	    $03,$03,$03,$03
;;;;;	DB	    $03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03
;
	DB	$98,$40,$5F,$03
;;;;;	DB	$98,$40,$1F
;;;;;	DB	    $03,$03,$03,$03,$03,$03,$03,$03
;;;;;	DB	    $03,$03,$03,$03,$03,$03,$03,$03
;;;;;	DB	    $03,$03,$03,$03
;;;;;	DB	    $03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03
;
	DB	$98,$60,$5F,$03
;;;;;	DB	$98,$60,$1F
;;;;;	DB	    $03,$03,$03,$03,$03,$03,$03,$03
;;;;;	DB	    $03,$03,$03,$03,$03,$03,$03,$03
;;;;;	DB	    $03,$03,$03,$03
;;;;;	DB	    $03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03
;----------------------------------------------------
	DB	$98,$80,$5F,$03
	DB	$98,$A0,$5F,$03
	DB	$98,$C0,$5F,$03
	DB	$98,$E0,$5F,$03
;
	DB	$99,$00,$5F,$01
;;;;;	DB	$99,$00,$1F
;;;;;	DB          $05,$05,$05,$05,$05,$05,$05,$05
;;;;;	DB          $05,$05,$05,$05,$05,$05,$05,$05
;;;;;	DB          $05,$05,$05,$05,$05,$05,$05,$05
;;;;;	DB          $05,$05,$05,$05,$05,$05,$05,$05
;
	DB	$99,$20,$5F,$01
;;;;;	DB	$99,$20,$1F
;;;;;	DB	    $05,$05,$05,$05,$05,$05,$05,$05
;;;;;	DB	    $05,$05,$05,$05,$05,$05,$05,$05
;;;;;	DB	    $05,$05,$05,$05,$05,$05,$05,$05
;;;;;	DB	    $05,$05,$05,$05,$05,$05,$05,$05
;
	DB	$99,$40,$5F,$04
;;;;;	DB	$99,$40,$1F
;;;;;	DB	    $04,$04,$04,$04,$04,$04,$04,$04
;;;;;	DB	    $04,$04,$04,$04,$04,$04,$04,$04
;;;;;	DB	    $04,$04,$04,$04,$04,$04,$04,$04
;;;;;	DB	    $04,$04,$04,$04,$04,$04,$04,$04
;
	DB	$99,$60,$5F,$04
;;;;;	DB	$99,$60,$1F
;;;;;	DB	    $04,$04,$04,$04,$04,$04,$04,$04
;;;;;	DB	    $04,$04,$04,$04,$04,$04,$04,$04
;;;;;	DB	    $04,$04,$04,$04,$04,$04,$04,$04
;;;;;	DB	    $04,$04,$04,$04,$04,$04,$04,$04
;
	DB	$99,$80,$5F,$04
	DB	$99,$A0,$5F,$04
	DB	$99,$C0,$5F,$04
;
	DB	$99,$E0,$5F,$06
;;;;;	DB	$99,$E0,$1F
;;;;;	DB	    $06,$06,$06,$06,$06,$06,$06,$06
;;;;;	DB	    $06,$06,$06,$06,$06,$06,$06,$06
;;;;;	DB	    $06,$06,$06,$06,$06,$06,$06,$06
;;;;;	DB	    $06,$06,$06,$06,$06,$06,$06,$06
;
	DB	$9A,$00,$5F,$07
;;;;;	DB	$9A,$00,$1F
;;;;;	DB	    $07,$07,$07,$07,$07,$07,$07,$07
;;;;;	DB	    $07,$07,$07,$07,$07,$07,$07,$07
;;;;;	DB	    $07,$07,$07,$07,$07,$07,$07,$07
;;;;;	DB	    $07,$07,$07,$07,$07,$07,$07,$07
;
	DB	$9A,$20,$5F,$07
;
	DB	0
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	無理矢理タイトルロゴ！						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
AT_LOGODT
	DB	$98,$00,$53,$03
	DB	$98,$20,$53,$03
	DB	$98,$40,$13
	DB	    $03,$03,$00,$00,$00,$00,$00,$00,$00,$00
	DB	    $00,$00,$00,$00,$00,$00,$00,$00,$03,$03
	DB	$98,$60,$13
	DB	    $03,$03,$00,$00,$00,$00,$00,$00,$00,$00
	DB	    $00,$00,$00,$00,$00,$00,$00,$00,$03,$03
	DB	$98,$80,$13
	DB	    $03,$03,$00,$00,$00,$00,$00,$00,$00,$00
	DB	    $00,$00,$00,$00,$00,$00,$00,$00,$03,$03
	DB	$98,$A0,$13
	DB	    $03,$03,$00,$00,$00,$00,$00,$00,$00,$00
	DB	    $00,$00,$00,$00,$00,$00,$00,$00,$03,$03
	DB	$98,$C0,$13
	DB	    $03,$03,$00,$00,$00,$00,$00,$00,$00,$00
	DB	    $00,$00,$00,$00,$00,$00,$00,$00,$03,$03
	DB	$98,$E0,$13
	DB	    $03,$03,$00,$00,$00,$00,$00,$00,$00,$00
	DB	    $00,$00,$00,$00,$00,$00,$00,$00,$03,$03
	DB	$99,$00,$13
	DB	    $03,$03,$00,$00,$00,$00,$00,$00,$00,$00
	DB	    $00,$00,$00,$00,$00,$00,$00,$00,$03,$03
	DB	$99,$20,$53,$03
	DB	$99,$40,$53,$03
	DB	$99,$60,$53,$03
	DB	$99,$80,$53,$03
	DB	$99,$a0,$53,$03
	DB	$99,$c0,$53,$03
	DB	$99,$E0,$13
	DB	    $03,$03,$03,$07,$07,$07,$07,$07,$07,$07
	DB	    $07,$07,$07,$07,$07,$07,$07,$03,$03,$03
	DB	$9a,$00,$53,$03
	DB	$9a,$20,$53,$03
;
	DB	00
;



;------------------------------------------------------------------------
		END
;------------------------------------------------------------------------
