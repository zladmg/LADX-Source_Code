
		onbankgroup

;========================================================================
;==============	バンク０ ================================================
BANK0		group	000
;-------------<	zco >-------------
		extern	LCDC_OFF,DATA_MOV
;
;==============	バンク3Ｃ ==============================================
BANK3C		group	03Ch
;-------------<	zchr >-------------
		extern	pic_cgx,pic_scr,pic_col
;
;========================================================================
;
		puball
;
BANK3C		group	03ch
;
		nlist
		lib	zram
		list
;
		kanji
		isdmg
;
;========================================================================
;;;;;;;;		org	04000h
;
;------------------------------------------------------------------------
;-		データ							-
;------------------------------------------------------------------------
maskon
		db	10111001b
		db	002h,0,0,0,0,0,0,0,0,0,0,0,0,0,0
;
maskoff
		db	10111001b
		db	000h,0,0,0,0,0,0,0,0,0,0,0,0,0,0
;
init1
		db	079h,05dh,008h,000h,00bh
		db	08ch,0d0h,0f4h,060h,000h,000h,000h,000h,000h,000h,000h
init2
		db	079h,052h,008h,000h,00bh
		db	0a9h,0e7h,09fh,001h,0c0h,07eh,0e8h,0e8h,0e8h,0e8h,0e0h
init3
		db	079h,047h,008h,000h,00bh
		db	0c4h,0d0h,016h,0a5h,0cbh,0c9h,005h,0d0h,010h,0a2h,028h
init4
		db	079h,03ch,008h,000h,00bh
		db	0f0h,012h,0a5h,0c9h,0c9h,0c8h,0d0h,01ch,0a5h,0cah,0c9h
init5
		db	079h,031h,008h,000h,00bh
		db	00ch,0a5h,0cah,0c9h,07eh,0d0h,006h,0a5h,0cbh,0c9h,07eh
init6
		db	079h,026h,008h,000h,00bh
		db	039h,0cdh,048h,00ch,0d0h,034h,0a5h,0c9h,0c9h,080h,0d0h
init7
		db	079h,01bh,008h,000h,00bh
		db	0eah,0eah,0eah,0eah,0eah,0a9h,001h,0cdh,04fh,00ch,0d0h
init8
		db	079h,010h,008h,000h,00bh
		db	04ch,020h,008h,0eah,0eah,0eah,0eah,0eah,060h,0eah,0eah
;
com00
		db	00000001b
		dw	05bffh,03f0fh,0222dh,010ebh	; システムカラーパレットデータ
		dw	       03f0fh,0222dh,010ebh
		db	0
;
com05
		db	00101001b
		db	002h,0afh,002h,0,0,0,0,0,0,0,0,0,0,0,0
;
com0e
		db	01110001b
		db	003h,0,0,0,0,0,0,0,0,0,0,0,0,0,0
;
com13_0
		db	10011001b
		db	000h,0,0,0,0,0,0,0,0,0,0,0,0,0,0
;
com13_1
		db	10011001b
		db	001h,0,0,0,0,0,0,0,0,0,0,0,0,0,0
;
com14
		db	10100001b
		db	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
;
com19
		db	11001001b
		db	001h,0,0,0,0,0,0,0,0,0,0,0,0,0,0
;
atf
		db	000h,000h,000h,000h,000h
		db	000h,000h,000h,000h,000h
		db	04fh,0ffh,0f0h,0ffh,0f0h
		db	04fh,0ffh,0f0h,0ffh,0f0h
		db	04fh,0ffh,0ffh,0ffh,000h
		db	04fh,0ffh,0ffh,0ffh,000h
		db	04fh,0ffh,07eh,0bfh,0f0h
		db	04ah,0ffh,07eh,0bfh,0f0h
		db	04ah,0fdh,07fh,0ffh,0f0h
		db	04fh,0fdh,07fh,0ffh,0f0h
		db	04fh,0fdh,0ffh,0dfh,0f0h
		db	04fh,0fdh,0ffh,0dfh,0f0h
		db	04fh,0ffh,0ffh,0d5h,0f0h
		db	04fh,0ffh,0ffh,0d5h,0f0h
		db	04fh,0ffh,0ffh,0dfh,0f0h
		db	04fh,0ffh,0ffh,0dfh,0f0h
		db	055h,055h,055h,055h,055h
		db	000h,000h,000h,000h,000h
;
syscol
		dw	05bffh,03f0fh,0222dh,010ebh	; システムカラーパレットデータ
		dw	05bffh,03f0fh,0222dh,010ebh
		dw	05bffh,03f0fh,0222dh,010ebh
		dw	05bffh,03f0fh,0222dh,010ebh
;
		dw	05bffh,03f0fh,0222dh,010ebh
		dw	05bffh,03f0fh,0222dh,010ebh
		dw	05bffh,03f0fh,0222dh,010ebh
;
;------------------------------------------------------------------------
;-	SGBCHK		ＳＧＢ チェック					-
;-									-
;-		ＥＮＴＲＹ						-
;-		    無							-
;-									-
;-		ＲＥＴＵＲＮ						-
;-		    ＳＧＢ上で動作しているならＣフラグを立てる｡		-
;-		    ＭＧ上で動作しているならＣフラグを立てない｡		-
;-									-
;-		使用レジスタ	Ａ，ＢＣ，ＤＥ，ＨＬ，（ＳＰ）		-
;-									-
;------------------------------------------------------------------------
request_1play
		db	089h,000h,0,0,0,0,0,0,0,0,0,0,0,0,0,0
;
request_2play
		db	089h,001h,0,0,0,0,0,0,0,0,0,0,0,0,0,0
;
;
sgbchk
		ld	a,(CGBFLG)
		and	a
		ret	nz		; カラーゲームボーイ　？
;					; No !!
		ld	bc,30
		call	wait
;
		ld	hl,request_2play
		call	sgbtr
		call	wait4
		ld	a,(P1)
		and	00000011b
		cp	003
		jr	nz,sgbuse
;
		ld	a,020h
		ld	(P1),a
		ld	a,(P1)
		ld	a,(P1)
;
		ld	a,030h
		ld	(P1),a
;
		ld	a,010h
		ld	(P1),a
		ld	a,(P1)
		ld	a,(P1)
		ld	a,(P1)
		ld	a,(P1)
		ld	a,(P1)
		ld	a,(P1)
;
		ld	a,030h
		ld	(P1),a
		ld	a,(P1)
		ld	a,(P1)
		ld	a,(P1)
;
		ld	a,(P1)
		and	00000011b
		cp	003
		jr	nz,sgbuse
;
gbset		ld	hl,request_1play
		call	sgbtr
		call	wait4
		sub	a
		ret
;
;--------------	ＳＧＢの時 --------------
sgbuse
		ld	hl,request_1play
		call	sgbtr
		call	wait4
;
;;;;;;;;		ld	bc,70
;;;;;;;;		call	wait
;;;;;;;;;
		ld	hl,maskon
		call	sgbtr
		ld	bc,006
		call	wait
;
		ld	hl,com19
		call	sgbtr
		ld	bc,006
		call	wait
;
		ld	hl,init1
		call	sgbtr
		ld	bc,006
		call	wait
;
		ld	hl,init2
		call	sgbtr
		ld	bc,006
		call	wait
;
		ld	hl,init3
		call	sgbtr
		ld	bc,006
		call	wait
;
		ld	hl,init4
		call	sgbtr
		ld	bc,006
		call	wait
;
		ld	hl,init5
		call	sgbtr
		ld	bc,006
		call	wait
;
		ld	hl,init6
		call	sgbtr
		ld	bc,006
		call	wait
;
		ld	hl,init7
		call	sgbtr
		ld	bc,006
		call	wait
;
		ld	hl,init8
		call	sgbtr
		ld	bc,006
		call	wait
;
		ld	hl,com00
		call	sgbtr
		ld	bc,006
		call	wait
;
		ld	hl,com05
		call	sgbtr
		ld	bc,006
		call	wait
;
;--------------	新しく追加しました． --------------
		ld	hl,pic_cgx
		ld	de,com13_0
		call	sgbst
;
		ld	hl,pic_cgx+1000h
		ld	de,com13_1
		call	sgbst
;
		ld	hl,pic_scr
		ld	de,com14
		call	sgbst
;
;------------------------------------------------------
;
		ld	hl,08000h
		ld	bc,02000h
;
sgbuse_050
		xor	a
		ld	(hli),a
		dec	bc
		ld	a,c
		or	b
		jr	nz,sgbuse_050
;
		ld	a,10000001b
		ld	(LCDC),a
;
		ld	bc,6
		call	wait
;
		ld	hl,maskoff
		call	sgbtr
		ld	bc,6
		call	wait
;
		xor	a
		ld	(LCDC),a
		ret
;
;------------------------------------------------------------------------
;-	SGBTR		ＳＧＢシステムコマンドトランスファー		-
;-									-
;-		ＥＮＴＲＹ						-
;-		    ＨＬ    =   コマンドデータ 先頭 アドレス		-
;-									-
;-		ＲＥＴＵＲＮ						-
;-		    無							-
;-									-
;-		使用レジスタ	Ａ, ＢＣ, ＤＥ，ＨＬ，（ＳＰ）		-
;-									-
;-	注意：このルーチンをコールする場合、コントローラ読み込み	-
;-	      ルーチン等、アドレス$FF00 を操作する処理が割り込ま	-
;-	      ないように注意して下さい。(特にNMIルーチン)		-
;-									-
;------------------------------------------------------------------------
sgbtr
		ld	a,(hl)		; コマンドデータの先頭
		and	00000111b
		ret	z
;
		ld	b,a		; 送出するパケット数
		ld	c,<P1
;
sgbtr_050
		push	bc
		xor	a		; 書き込みスタート
		ld	(c),a		;
		ld	a,030h		;
		ld	(c),a		;
		ld	b,010h		; 16 BYTE 転送するためのカウンタをセット
sgbtr_100
		ld	e,008		; 8 BIT 転送するためのカウンタをセット
		ld	a,(hli)
		ld	d,a
;
sgbtr_150
		bit	0,d
		ld	a,010h		; P14 = HIGH，P15 = LOW  ( ｢1｣ を 送出 )
		jr	nz,sgbtr_200
;
		ld	a,020h		; P14 = LOW,  P15 = HIGH ( ｢0｣ を 送出 )
;
sgbtr_200
		ld	(c),a
		ld	a,030h		; P14 = HIGH, P15 = HIGH
		ld	(c),a
		rr	d		; 右に1ビットシフト
		dec	e
		jr	nz,sgbtr_150
;
		dec	b
		jr	nz,sgbtr_100
;
		ld	a,020h		; 129 BITめの  ｢0｣ の 送出
		ld	(c),a		;
		ld	a,030h		;
		ld	(c),a		;
;
		pop	bc
		dec	b
		ret	z
;
		call	wait4		; 約4フレーム ソフトウエア ウェイト
		jr	sgbtr_050
;
;------------------------------------------------------------------------
;-	WAIT4		約４フレーム・ソフトウェイトル－チン		-
;-									-
;-		ＥＮＴＲＹ						-
;-		    無							-
;-									-
;-		使用レジスタ	Ａ，Ｄ，Ｅ				-
;-									-
;------------------------------------------------------------------------
wait4
		ld	de,7000
;
wait4_050
		nop			; 1
		nop			; 1
		nop			; 1
		dec	de		; 2
		ld	a,d		; 1
		or	e		; 1
		jr	nz,wait4_050	; 3  合計10サイクル
;
		ret
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x		WAIT							x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
wait
		ld	de,1750
;
wait_050
		nop			; 1
		nop			; 1
		nop			; 1
		dec	de		; 2
		ld	a,d		; 1
		or	e		; 1
		jr	nz,wait_050	; 3  計10サイクル
;
		dec	bc
		ld	a,b
		or	c
		jr	nz,wait
;
		ret
;
;------------------------------------------------------------------------
;-	SGBST								-
;-									-
;-		このサブルーチンは、VRAMを用いたデータ転送を		-
;-		行うコマンド発行の例です。SOU_TRN,DATA_TRN,		-
;-		CHR_TRN,PCT_TRN,ATTR_TRN,OBJ_TRNをご使用の際、		-
;-		参考にして下さい。					-
;-									-
;-		ＥＮＴＲＹ						-
;-		    ＤＥ　＝　コマンドデータ 先頭アドレス		-
;-		    ＨＬ　＝　転送したいデータの 先頭アドレス		-
;-									-
;-		ＲＥＴＵＲＮ						-
;-		    無							-
;-									-
;------------------------------------------------------------------------
sgbst
;;;;;;;;		di			; コントローラ割り込みなども禁止
;
		push	de
;;;;;;;;		call	lcdc_off
;
		ld	a,11100100b	; パレット データ セット
		ld	(BGP),a		;
;
		ld	de,08800h	; CG VRAM ($8800 - $97FF)
		ld	bc,01000h	; 個数
		call	data_mov	; データ => CG VRAM
;
		ld	hl,09800h	; BG VRAM ($9800 - $9BFF) SET
		ld	de,12
		ld	a,080h		; キャラクタ$80から BG VRAM にセット
		ld	c,13		; 縦13行
;
sgbst_050
		ld	b,20		; 20文字
;
sgbst_100
		ld	(hli),a
		inc	a
		dec	b
		jr	nz,sgbst_100
		add	hl,de
		dec	c
		jr	nz,sgbst_050
;
		ld	a,10000001b	; BG ON,OBJ OFF,8*8,WINDOW OFF
		ld	(LCDC),a
		ld	bc,5
		call	wait
;
		pop	hl		; POP DE , HL = DE
;
		call	sgbtr		; コマンド転送
;
		ld	bc,6
		call	wait
;
		xor	a
		ld	(LCDC),a
;
;;;;;;;;		ei
		ret
;
;
		end
;
;
