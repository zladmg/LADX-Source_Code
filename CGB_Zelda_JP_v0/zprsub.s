
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
		db	050h,010h,014h,001h
		db	050h,018h,016h,001h
		db	050h,020h,018h,001h
		db	050h,028h,01ah,001h
		db	050h,030h,01ch,001h
		db	050h,038h,01eh,001h
		db	050h,040h,020h,001h
		db	050h,048h,020h,021h
		db	050h,050h,038h,001h
		db	050h,058h,03ah,001h
;
		db	050h,00eh,014h,001h
		db	050h,016h,016h,001h
		db	050h,01eh,018h,001h
		db	050h,026h,01ah,001h
		db	050h,030h,046h,001h
		db	050h,038h,048h,001h
		db	050h,040h,020h,001h
		db	050h,048h,022h,001h
		db	04eh,052h,03ch,001h
		db	04eh,05ah,03eh,001h
;
		db	050h,010h,014h,001h
		db	050h,018h,016h,001h
		db	050h,020h,018h,001h
		db	050h,028h,01ah,001h
		db	050h,030h,01ch,001h
		db	050h,038h,01eh,001h
		db	051h,040h,022h,021h
		db	051h,048h,022h,001h
		db	050h,051h,03ch,001h
		db	050h,059h,03eh,001h
;
		db	050h,011h,014h,001h
		db	050h,019h,016h,001h
		db	050h,021h,018h,001h
		db	050h,029h,01ah,001h
		db	04eh,030h,01ch,001h
		db	04eh,038h,01eh,001h
		db	050h,040h,022h,021h
		db	050h,048h,020h,021h
		db	050h,050h,038h,001h
		db	050h,058h,03ah,001h
;
;
;
		end
;
