
		onbankgroup

;************************************************************************
;*									*
;*	�^�C�g��    �F	�[���_�̓`�� �c�w				*
;*	�t�@�C����  �F	ZPRSUB.S					*
;*	�������e    �F	�|�P�b�g�v�����^����				*
;*	�쐬���t    �F  �P�X�X�W�^�P�O�^�Q�Q				*
;*									*
;************************************************************************
;
;========================================================================
		PUBALL
		NLIST
		KANJI
		isdmg
;------------------------------------------------------------------------
		LIB	ZRAM		; RAM �d�p�t�`�s�d �t�@�C��
		LIB	ZBN		; BG unit no file !
;------------------------------------------------------------------------
		LIST


;������������������������������������������������������������������������
;��	�o���N�Q�W						       ��
;������������������������������������������������������������������������
BANK28		GROUP	$28
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x		�v�����g���̂n�`�l�f�[�^				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
prnomdt
		db	050h,010h,02eh,001h
		db	050h,018h,04ch,001h
		db	050h,020h,04eh,001h
		db	050h,028h,050h,001h
		db	050h,030h,052h,001h
		db	050h,038h,054h,001h
		db	050h,040h,056h,001h
		db	04fh,048h,020h,021h
		db	050h,051h,038h,001h
		db	050h,059h,03ah,001h
;
		db	050h,00fh,02eh,001h
		db	050h,017h,04ch,001h
		db	050h,01fh,04eh,001h
		db	050h,027h,050h,001h
		db	050h,02fh,052h,001h
		db	050h,037h,054h,001h
		db	050h,03fh,056h,001h
		db	050h,048h,022h,001h
		db	04eh,052h,03ch,001h
		db	04eh,05ah,03eh,001h
;
		db	050h,010h,02eh,001h
		db	050h,018h,04ch,001h
		db	050h,020h,04eh,001h
		db	050h,028h,050h,001h
		db	050h,030h,052h,001h
		db	050h,038h,054h,001h
		db	050h,040h,056h,001h
		db	051h,048h,022h,001h
		db	050h,051h,03ch,001h
		db	050h,059h,03eh,001h
;
		db	050h,011h,02eh,001h
		db	050h,019h,04ch,001h
		db	050h,021h,04eh,001h
		db	050h,029h,050h,001h
		db	050h,031h,052h,001h
		db	050h,039h,054h,001h
		db	050h,041h,056h,001h
		db	053h,048h,020h,021h
		db	051h,050h,038h,001h
		db	051h,058h,03ah,001h
;
;
;
		end
;
