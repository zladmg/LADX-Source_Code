
		onbankgroup

;************************************************************************
;*									*
;*	�^�C�g��    �F	�b�f�a�[���_					*
;*	�t�@�C����  �F	ZCHR.S						*
;*	�������e    �F	�L�����N�^�[���T�E���h �f�[�^			*
;*	�쐬���t    �F  �P�X�X�W�^�O�U�^�P�V				*
;*									*
;************************************************************************

		PUBALL
		ISDMG

;------------------------------------------------------------------------
		LIST
		KANJI

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	��������t���O�̐ݒ�						x
;x			�O�F�Q�[���{�[�C				x
;x			�P�F�J���[�Q�[���{�[�C				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
Select_Check	EQU	1

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�T�E���h							x
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
;x	�L�����N�^�[�i �Q�[���{�[�C �j					x
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
;x	�L�����N�^�[�i �J���[�Q�[���{�[�C �j				x
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
;x	�����L�����N�^�[						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
BANK39		GROUP	$39
;------------------------------------------------------------------------
;	�����{
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
;	�i�P�j�ʐ^�� �҂�҂��� ���r�b�q��
;------------------------------------------------------------------------
		binset	$0,$1000
Photo_00p_cgx	libbin	photo/phoshasinya_p.cgx

;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�f�[�^�o���N ���x��						x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
Bank_23		EQU	$23	; �G���f�B���O �r�b�q
Bank_28		EQU	$28	; �v�����^ �r�b�q
Bank_29		EQU	$29	; �v�����^ �b�f�w�i�P�j���i�S�j
Bank_2a		EQU	$2a	; �v�����^ �b�f�w�i�T�j���i�W�j
Bank_2b		EQU	$2b	; �v�����^ �b�f�w�i�X�j���i�P�Q�j


;������������������������������������������������������������������������
;��	�o���N�Q�R						       ��
;������������������������������������������������������������������������
BANK23		GROUP	Bank_23
;------------------------------------------------------------------------
;	�i�P�j��������
;------------------------------------------------------------------------
;;;;;;;;Kaisou_01_scr	EQU	$236800
		ORG	$6800
		binset	$0,$02d0
Kaisou_01_scr	libbin	ending/kaiso_1.csd

;------------------------------------------------------------------------
;	�i�Q�j�}����
;------------------------------------------------------------------------
;;;;;;;;Kaisou_02_scr	EQU	$236ad0
;;;;;;;;		ORG	$6ad0
		binset	$0,$02d0
Kaisou_02_scr	libbin	ending/kaiso_2.csd

;------------------------------------------------------------------------
;	�i�R�j�l��
;------------------------------------------------------------------------
;;;;;;;;Kaisou_03_scr	EQU	$236da0
;;;;;;;;		ORG	$6da0
		binset	$0,$02d0
Kaisou_03_scr	libbin	ending/kaiso_3.csd

;------------------------------------------------------------------------
;	�i�S�j�X�̃^����
;------------------------------------------------------------------------
;;;;;;;;Kaisou_04_scr	EQU	$237070
;;;;;;;;		ORG	$7070
		binset	$0,$02d0
Kaisou_04_scr	libbin	ending/kaiso_4.csd

;------------------------------------------------------------------------
;	�i�T�j�������̃}����
;------------------------------------------------------------------------
;;;;;;;;Kaisou_05_scr	EQU	$237340
;;;;;;;;		ORG	$7340
		binset	$0,$02d0
Kaisou_05_scr	libbin	ending/kaiso_5.csd

;��������������������������������������������������������
;��						       ��
;��	�Q�R�o���N�̂���ȉ��̃G���A 23:7610 �����    ��
;��	zatr.s �Ŏg�p���Ă���̂ŁA�g���Ă͂����Ȃ��I  ��
;��						       ��
;��������������������������������������������������������


;������������������������������������������������������������������������
;��	�o���N�Q�W						       ��
;������������������������������������������������������������������������
BANK28		GROUP	Bank_28
;------------------------------------------------------------------------
;	�i�P�j�ʐ^��  �҂�҂��� ���r�b�q��
;------------------------------------------------------------------------
		ORG	$5550
		binset	$0,$02d0
Photo_00p_scr	libbin	photo/phoshasinya_P.csd
;------------------------------------------------------------------------
;	�i�P�j�ʐ^��  �u�T�C����� ���r�b�q��
;------------------------------------------------------------------------
;;;;;;;;Photo_00_scr	EQU	$285820
		ORG	$5820
		binset	$0,$02d0
Photo_00_scr	libbin	photo/phoshasinya.csd
;------------------------------------------------------------------------
;	�i�Q�j�H�H�H ���r�b�q��
;------------------------------------------------------------------------
;;;;;;;;Photo_01_scr	EQU	$285af0
;;;;;;;;		ORG	$5af0
		binset	$0,$02d0
Photo_01_scr	libbin	photo/camegake1.csd
;------------------------------------------------------------------------
;	�i�R�j�}�����̃q�b�v�h���b�v�I ���r�b�q��
;------------------------------------------------------------------------
;;;;;;;;Photo_02_scr	EQU	$286090
;;;;;;;;		ORG	$6090
		binset	$0,$02d0
Photo_02_scr	libbin	photo/ph_4.csd
;------------------------------------------------------------------------
;	�i�S�j�����{�̑O ���r�b�q��
;------------------------------------------------------------------------
;;;;;;;;Photo_03_scr	EQU	$286360
;;;;;;;;		ORG	$6360
		binset	$0,$02d0
Photo_03_scr	libbin	photo/cametori.csd
;------------------------------------------------------------------------
;	�i�T�j�����炶���� ���r�b�q��
;------------------------------------------------------------------------
;;;;;;;;Photo_04_scr	EQU	$286630
;;;;;;;;		ORG	$6630
		binset	$0,$02d0
Photo_04_scr	libbin	photo/ph_uru_p.csd
;------------------------------------------------------------------------
;	�i�U�j���������ɏP���A�낤�������N�I ���r�b�q��
;------------------------------------------------------------------------
;;;;;;;;Photo_05_scr	EQU	$286900
;;;;;;;;		ORG	$6900
		binset	$0,$02d0
Photo_05_scr	libbin	photo/ph_a1p.csd
;------------------------------------------------------------------------
;	�i�V�j��������Y�I�����N ���r�b�q��
;------------------------------------------------------------------------
;;;;;;;;Photo_06_scr	EQU	$286bd0
;;;;;;;;		ORG	$6bd0
		binset	$0,$02d0
Photo_06_scr	libbin	photo/phodoro.csd
;------------------------------------------------------------------------
;	�i�W�j�ނ肨�₶�M���I ���r�b�q��
;------------------------------------------------------------------------
;;;;;;;;Photo_07_scr	EQU	$286ea0
;;;;;;;;		ORG	$6ea0
		binset	$0,$02d0
Photo_07_scr	libbin	photo/cameturi.csd
;------------------------------------------------------------------------
;	�i�X�j�������񂩁I�]�[�� ���r�b�q��
;------------------------------------------------------------------------
;;;;;;;;Photo_08_scr	EQU	$287170
;;;;;;;;		ORG	$7170
		binset	$0,$02d0
Photo_08_scr	libbin	photo/camezolata.csd
;------------------------------------------------------------------------
;	�i�P�O�j���`���[�h�Ə�̑O ���r�b�q��
;------------------------------------------------------------------------
;;;;;;;;Photo_09_scr	EQU	$287440
;;;;;;;;		ORG	$7440
		binset	$0,$02d0
Photo_09_scr	libbin	photo/camesiro.csd
;------------------------------------------------------------------------
;	�i�P�P�j���|�̐S��ʐ^ ���r�b�q��
;------------------------------------------------------------------------
;;;;;;;;Photo_0a_scr	EQU	$287710
;;;;;;;;		ORG	$7710
		binset	$0,$02d0
Photo_0a_scr	libbin	photo/camehaka.csd
;------------------------------------------------------------------------
;	�i�P�Q�j�������ȃ����N ���r�b�q��
;------------------------------------------------------------------------
;;;;;;;;Photo_0b_scr	EQU	$2879e0
;;;;;;;;		ORG	$79e0
		binset	$0,$02d0
Photo_0b_scr	libbin	photo/camegake2.csd

;------------------------------------------------------------------------
;	����͕K�����邼�I�A���o���p�f�[�^
;------------------------------------------------------------------------
;;;;;;;;Photo_scr	EQU	$287cb0
;;;;;;;;		ORG	$7cb0
		binset	$0,$02d0
Photo_scr	libbin	photo/fhoto.csd
;;;;;;;;Photo_col	EQU	$287F80
;;;;;;;;		ORG	$7F80
		binset	$0,$0080
Photo_col	libbin	photo/fhoto.ccd


;������������������������������������������������������������������������
;��	�o���N�Q�X						       ��
;������������������������������������������������������������������������
BANK29		GROUP	Bank_29
;------------------------------------------------------------------------
;	�i�P�j�ʐ^�� ���b�f�w��
;------------------------------------------------------------------------
;;;;;;;;Photo_00_cgx	EQU	$294000
		ORG	$4000
		binset	$0,$1000
Photo_00_cgx	libbin	photo/phoshasinya.cgx
;------------------------------------------------------------------------
;	�i�Q�j�H�H�H ���b�f�w��
;------------------------------------------------------------------------
;;;;;;;;Photo_01_cgx	EQU	$295000
;;;;;;;;		ORG	$5000
		binset	$0,$1000
Photo_01_cgx	libbin	photo/camegake1.cgx
;------------------------------------------------------------------------
;	�i�R�j�}�����̃q�b�v�h���b�v�I ���b�f�w��
;------------------------------------------------------------------------
;;;;;;;;Photo_02_cgx	EQU	$296000
;;;;;;;;		ORG	$6000
		binset	$0,$1000
Photo_02_cgx	libbin	photo/ph_4.cgx
;------------------------------------------------------------------------
;	�i�S�j�����{�̑O ���b�f�w��
;------------------------------------------------------------------------
;;;;;;;;Photo_03_cgx	EQU	$297000
;;;;;;;;		ORG	$7000
		binset	$0,$1000
Photo_03_cgx	libbin	photo/cametori.cgx


;������������������������������������������������������������������������
;��	�o���N�Q�`						       ��
;������������������������������������������������������������������������
BANK2A		GROUP	Bank_2a
;------------------------------------------------------------------------
;	�i�T�j�����炶���� ���b�f�w��
;------------------------------------------------------------------------
;;;;;;;;Photo_04_cgx	EQU	$2a4000
		ORG	$4000
		binset	$0,$1000
Photo_04_cgx	libbin	photo/ph_uru_p.cgx
;------------------------------------------------------------------------
;	�i�U�j���������ɏP���A�낤�������N�I ���b�f�w��
;------------------------------------------------------------------------
;;;;;;;;Photo_05_cgx	EQU	$2a5000
;;;;;;;;		ORG	$5000
		binset	$0,$1000
Photo_05_cgx	libbin	photo/ph_a1p.cgx
;------------------------------------------------------------------------
;	�i�V�j��������Y�I�����N ���b�f�w��
;------------------------------------------------------------------------
;;;;;;;;Photo_06_cgx	EQU	$2a6000
;;;;;;;;		ORG	$6000
		binset	$0,$1000
Photo_06_cgx	libbin	photo/phodoro.cgx
;------------------------------------------------------------------------
;	�i�W�j�ނ肨�₶�M���I ���b�f�w��
;------------------------------------------------------------------------
;;;;;;;;Photo_07_cgx	EQU	$2a7000
;;;;;;;;		ORG	$7000
		binset	$0,$1000
Photo_07_cgx	libbin	photo/cameturi.cgx


;������������������������������������������������������������������������
;��	�o���N�Q�a						       ��
;������������������������������������������������������������������������
BANK2B		GROUP	Bank_2b
;------------------------------------------------------------------------
;	�i�X�j�������񂩁I�]�[�� ���b�f�w��
;------------------------------------------------------------------------
;;;;;;;;Photo_08_cgx	EQU	$2b4000
		ORG	$4000
		binset	$0,$1000
Photo_08_cgx	libbin	photo/camezolat.cgx
;------------------------------------------------------------------------
;	�i�P�O�j���`���[�h�Ə�̑O ���b�f�w��
;------------------------------------------------------------------------
;;;;;;;;Photo_09_cgx	EQU	$2b5000
;;;;;;;;		ORG	$5000
		binset	$0,$1000
Photo_09_cgx	libbin	photo/camesiro.cgx
;------------------------------------------------------------------------
;	�i�P�P�j���|�̐S��ʐ^ ���b�f�w��
;------------------------------------------------------------------------
;;;;;;;;Photo_0a_cgx	EQU	$2b6000
;;;;;;;;		ORG	$6000
		binset	$0,$1000
Photo_0a_cgx	libbin	photo/camehaka.cgx
;------------------------------------------------------------------------
;	�i�P�Q�j�������ȃ����N ���b�f�w��
;------------------------------------------------------------------------
;;;;;;;;Photo_0b_cgx	EQU	$2b7000
;;;;;;;;		ORG	$7000
		binset	$0,$1000
Photo_0b_cgx	libbin	photo/camegake2.cgx


;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x		�s�N�`���[�t���[���@�f�[�^				x
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
;x	�L�����N�^�[�i �c�[�� �j					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;;;;;BANK3F		GROUP	$3F
;;;;;		ORG	$7000
;;;;;		binset	$0,$1000
;;;;;		libbin	cgx/ctool.cgx


;------------------------------------------------------------------------
		END
;------------------------------------------------------------------------
