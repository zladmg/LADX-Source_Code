
		onbankgroup

;****************************************************************
;*								*
;*	�^�C�g��    �F	�b�f�a�[���_				*
;*	�t�@�C����  �F	ZJP.DMG					*
;*	�������e    �F	�ړ������e�[�u���W�����v�֌W		*
;*	�쐬���t    �F  �P�X�X�W�^�O�U�^�P�P			*
;*								*
;****************************************************************
;
	NLIST
;
;============== �o���N�O ================================================
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
;============== �o���N�R ================================================
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
;============== �o���N�S ==============================================
BANK4		GROUP	4
;-------------<	ZE2 >-------------
		EXTERN	RIVERMV,GHOSTMV,GHOSBMV,GHOSSMV,HAYAMMV,RENO7MV
		EXTERN	NYAMAMV,CHUNLIMV,UFOCHMV,TEKYUMV,BHOLEMV,BHOL2MV
		EXTERN	FISHGMV,SBOMBMV,OBOMBMV,NINJAMV,NINTMMV,HAYABMV
		EXTERN	BGKAOMV,BSLIMMV,TBOSSMV
;
;============== �o���N�T ==============================================
BANK5		GROUP	5
;-------------<	ZE3 >-------------
		EXTERN	GIRL0MV,PAPA0MV,BABA0MV,ONPUMV,USAG2MV
		EXTERN	BSNAKMV,GORMAMV,DDNGOMV,BFIREMV,BBIRDMV,BFISHMV
		EXTERN	SWTRPMV,IKADAMV,NIWATMV,WANWANMV
;
;============== �o���N�U ==============================================
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
;============== �o���N�V ==============================================
BANK7		GROUP	7
;-------------<	ZE5 >-------------
		EXTERN	TAKARMV,HEIS0MV,INOSIMV,BSKELMV,HEISBMV,DAISUMV
		EXTERN	AMENBMV,YUKABMV,YSLIMMV,BALEEMV,TBEAMMV,KURI0MV
		EXTERN	PIHATMV,LOPEMV,LIFTXMV,LIFTYMV,LIFTDMV
		EXTERN	LIFTTMV,HASIRMV,TAMA0MV,GESSOMV,MONKYMV,OCTAJMV
		EXTERN	YOSSIMV,AMUSIMV,YUKASMV,HANNYMV,PAPA2MV,KUMA0MV
		EXTERN	PAPALMV,MAMADMV,TURIMV,SHIGEMV
;
;==============	�o���N�W ================================================
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
;============== �o���N�P�T ==============================================
BANK15		GROUP	$15
;-------------<	ZE8 >-------------
		EXTERN	NXOMSB,SADWST,NXOMCL,ENRMCLL,SKEL1MV,R7BEMMV
		EXTERN	EWOODMV,MSPNTMV,IWAGOMV,SWBLKUMV,SWBLKDMV,SWBLKLMV
		EXTERN	SWBLKRMV,ONOFSMV,MVHASMV,AMUSTMV,UNIUNIMV,KANIMV
		EXTERN	BLANKAMV,SARUKMV,MOUSEMV,HODAIMV,SANBOMV,MBOSSMV
                EXTERN  BOSSMV,SIROSMV
		EXTERN	BOOKMV,BEDINMV,KUMASMV
;
;============== �o���N�P�V ==============================================
BANK17		GROUP	$17
		EXTERN	EDAIMV
;
;============== �o���N�P�W ==============================================
BANK18		GROUP	$18
;-------------<	ZE6 >-------------
		EXTERN	FUCKSMV,POWDRMV,HINTOMV,PSCRLMV,HIKUSMV,TANABEMV
		EXTERN	MAMA0MV,MAMA1MV,PAPA1MV,KAMEIMV,NYOROMV,PKURIMV
		EXTERN	TUKAIMV,ARIMAMV,BOXERMV,ZONBIMV,KHIMIMV,GIRL1MV
		EXTERN	GIRL2MV,MAMUUMV,TODDMV,MANBOMV,USAGIMV
		EXTERN	AKUMAMV,ZORAMV,MAMAD2MV,NTORIMV
                EXTERN  GMUSIMV
;
;============== �o���N�P�X ==============================================
BANK19		GROUP	$19
;-------------<	ZE7 >-------------
		EXTERN	ENSCRL,KTFLCS,BUMERMV,COPYAMV,WARPMV,FOXDOGMV
		EXTERN	HEIHOMV,KAERUMV,SWIMPMV,MOAIMV,PUKPKMV,PUKPVMV
		EXTERN	PUKPJMV,WANIMV,GAGEMV,OBAKEMV,NIWAXMV,YTUBOMV
		EXTERN	DOSNSMV,DOSNBMV,TAIATMV,FIREBMV,BABUBMV,KAZAMMV
		EXTERN	SEIRENMV,KENBMMV
;
;============== �o���N�R�U ==============================================
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
	LIB	ZRAM	; RAM �d�p�t�`�s�d �t�@�C��
	LIB	ZBN	; BG unit no file !
;;;;;;;;	LIB	ZROM	; �o�^ �f�[�^ �t�@�C��
;
;---------------------------------------------------------------
	KANJI
	ISDMG
;
	ORG	$4000
	LIST
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�y�d�r�D�c�l�f����ړ��������[�`��			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;
;+--------------------------------------+
;|	�G�̊e�v���O�����A�h���X	|
;+--------------------------------------+
GET_ENHL_DATA
		DL	PYAAAMV		; 00 ���ł��ȁH
		DL	BUMERMV		; 01 �u�[������
		DL	BOMBRMV		; 02 �o�N�_��
		DL	FUCKSMV		; 03 �t�b�N�V���b�g
		DL	PRTBMMV		; 04 �t�b�N�V���b�g�̓�
		DL	KTOBJMV		; 05 ���΂݂����Ȃ��(�j��)
		DL	BLOCKMV		; 06 �u���b�N�֌W
		DL	TAKARMV		; 07 �󔠂���o�Ă���A�C�e��
		DL	POWDRMV		; 08 ??Magic powder??
		DL	OCTA1MV		; 09�I�N�^���b�N
		DL	OCTAMMV		; 0A�I�N�^���b�N�̃^�}
		DL	MORI1MV		; 0B �����u����
		DL	MORYAMV		; 0C �����u�����̖�
		DL	TEKTAMV		; 0D �e�N�^�C�g
		DL	RIVERMV		; 0E���[�o�[
		DL	KUZUHMV		; 0F ���@�̕��H
		DL	GHOSTMV		; 10 �M�[�j
		DL	GHOSBMV		; 11 �f�O�M�[�j
		DL	GHOSSMV		; 12
		DL	BOMBOMV		; 13
		DL	HEIS0MV		; 14����
		DL	BABULMV		; 15 �o�u��
		DL	SPARKMV		; 16�X�p�[�N
		DL	SPAR2MV		; 17�X�p�[�N
		DL	PORUSMV		; 18 �|���X�{�C�X
		DL	BLBATMV		; 19 �L�[�X(���A�R�E����)
		DL	SKEL0MV		; 1A �X�^���t�H�X(�U������z)
		DL	SLIMBMV		; 1B �X���C��
		DL	SLIMSMV		; 1C �X���C��
		DL	00		; 1D BASSFMV
		DL	SKEL1MV		; 1E �X�^���t�H�X(������z)
		DL	MUMMYMV		; 1F
		DL	MOTOSMV		; 20 �|�[��
		DL	MAGE0MV		; 21
		DL	SONICMV		; 22 �E�B�Y���[�u
		DL	LAIKUMV		; 23 ���C�N���C�N
		DL	HIPLPMV		; 24 �q�b�v���[�v
		DL	BOSS1MV		; 25
		DL	KWUSOMV		; 26
		DL	TRAP0MV		; 27�g���b�v
		DL	COPYAMV		; 28 �}�l�}�l
		DL	HAYAMMV		; 29 �e�[��(�U�R)
		DL	RENO7MV		; 2A �r��
		DL	R7BEMMV		; 2B �r���̃r�[��
		DL	INOSIMV		; 2C �g�Q�]�[
		DL	HART1MV		; 2D �c�{���̉�����o�Ă���n�[�g
		DL	RUPY1MV		; 2E ���s�[
		DL	YOSEIMV		; 2F �d��
		DL	KEYSMMV		; 30 �����Ă��錮
		DL	PLTATMV		; 31 �����N�̌�(�����Ă���)
		DL	HMASKMV		; 32
		DL	POWERMV		; 33 �͂̂�����
		DL	KINOMMV		; 34 ���̂�����
		DL	KAKERMV		; 35 �n�[�g�̂�����
		DL	HARTBMV		; 36 �n�[�g�̊�
		DL	ALOW1MV 	; 37 MSTESTMV �c�{���̉�����o�Ă����
		DL	BOMB1MV		; 38 �c�{���̉�����o�Ă��锚�e
		DL	GAKKIMV		; 39�y��
		DL	KINOKMV		; 3A ���@�̕��̃L�m�R
		DL	MGPOWMV		; 3B
		DL	KAKINMV		; 3C �t���ρI
		DL	KAIINMV		; 3D �L�k�I
		DL	GIRL0MV		; 3E �}����
		DL	PAPA0MV		; 3F �^����
		DL	BABA0MV		; 40 ���@���̃o�o�A
		DL	FUKUROMV	; 41 �t�N���E
		DL	HINTOMV		; 42�q���g�Δ�
		DL	EWOODMV		; 43 �b����
		DL	MSPNTMV		; 44 ��������Ƙb���I
		DL	IWAGOMV		; 45 ��S���S��
		DL	SWBLKUMV	; 46 �X�C�b�`�����ƃE�S�N�I
		DL	SWBLKDMV	; 47 �X�C�b�`�����ƃE�S�N�I
		DL	SWBLKLMV	; 48 �X�C�b�`�����ƃE�S�N�I
		DL	SWBLKRMV	; 49 �X�C�b�`�����ƃE�S�N�I
		DL	FUKU_BOOK	; 4A ���̃_���W�����̖{
		DL	MSTESFMV	; 4B
		DL	00		; 4C FRBARMV
		DL	NYAMAMV		; 4D�A�C�e���V���b�v�̓X��
		DL	CHUNLIMV	; 4E
		DL	UFOCHMV		; 4F�t�e�n�L���b�`���[
		DL	TERSAMV		; 50
		DL	TEKYUMV		; 51
		DL	BHOLEMV		; 52
		DL	BHOL2MV		; 53 �f�X�{�[��
		DL	FISHGMV		; 54 �ނ�����Ă���I�b�T��
		DL	SBOMBMV		; 55 ���e��
		DL	OBOMBMV		; 56 ���e�� (���t��)
		DL	NINJAMV		; 57 �L�����{�[
		DL	NINTMMV		; 58
		DL	HAYABMV		; 59 �����{�X
		DL	BGKAOMV		; 5A �}�b�g�t�F�C�X(���x���U�{�X)
		DL	BSLIMMV		; 5B �f�O�]��(���x���R�{�X)
		DL	TBOSSMV		; 5C �c�{����(���x���Q�{�X)
		DL	BSNAKMV		; 5D �t�b�J�[(���x���T�{�X)
		DL	GORMAMV		; 5E
		DL	BSKELMV		; 5F �}�X�^�[�X�^���t�H�X(���x���Q���{�X)
		DL	DDNGOMV		; 60 �h�h���S(���x���R���{�X)
		DL	WARPMV		; 61 ���[�v�|�C���g
		DL	BFIREMV		; 62 �f�O�t���C��(���x���W�{�X)
		DL	BBIRDMV		; 63 �A���o�g�X(���x���V�{�X)
		DL	PSCRLMV		; 64
		DL	BFISHMV		; 65 �A���O���[(�{�X)
		DL	ONOFSMV		; 66 �����X�C�b�`
		DL	SWTRPMV		; 67
		DL	MVHASMV		; 68
		DL	HIKUSMV		; 69�������郌�o�[
		DL	IKADAMV		; 6A �}������̃C�J�_
		DL	TANABEMV	; 6B
		DL	NIWATMV		; 6C �j���g��
		DL	WANWANMV	; 6D ��������
		DL	BTFLYMV		; 6E ���傤����
		DL	FOXDOGMV	; 6F �L�c�l��
		DL	KODOMAMV	; 70 ���̂ق���̎q��
		DL	KODOMBMV	; 71 �L���b�`�{�[���q���B
		DL	KODOMCMV	; 72 �L���b�`�{�[���q���B
		DL	KODOMDMV	; 73 �����{�ƃQ�[���X�̏��̎q��
		DL	MAMA0MV		; 74 �q��������I�o�T��
		DL	MAMA1MV		; 75 �|���I�o�T��
		DL	PAPA1MV		; 76 Dr.���C�gor���M
		DL	URURIMV		; 77 �E��������������
		DL	OZWANMV		; 78 ������ꃏ������
		DL	MSWANMV		; 79���������̎�����I�o�T��
		DL	KARASMV		; 7A �J���X
		DL	TRYCYMV		; 7B �C�܂���g���C�V�[
		DL	BHANAMV		; 7C �A�i���l�A
		DL	BHFIRMV		; 7D ���ł���΂̋�
		DL	SHANAMV		; 7E ���l�A
		DL	KAMEIMV		; 7F �J����
		DL	DENWAMV		; 80�d�b
		DL	OBAQMV		; 81���΂p
		DL	OBQBARMV	; 82���[��
		DL	BEDINMV		; 83 �����N�x�b�h�ŐQ��
		DL	IZUMIMV		; 84 �񕜂��Ă�����d��
		DL	HATO0MV		; 85 ��
		DL	FLYITMV		; 86 ���ł�A�C�e��
		DL	RANEMMV		; 87 ���l���[��(���[�i�����̒��{�X)
		DL	NOMOSMV		; 88 �f�O�A���X(��̐_�a�̃{�X)
		DL	HINO0MV		; 89 �q�m�b�N�X
		DL	PANELMV		; 8A
		DL	PANEL2MV	; 8B
		DL	SWBLKMV		; 8C
		DL	SWBLK2MV	; 8D
		DL	MIZUBMV		; 8E �q�b�v���[�v�z�o�[(���x���S���{�X)
		DL	HEIHOMV		; 8F
		DL	SLOTMV		; 90
		DL	KARBYMV		; 91 �J�[�r�[
		DL	OCHANMV		; 92 �W���b�L�[(���x���U�̒��{�X)
		DL	HEISMMV		; 93 �����畺�m
		DL	HEISBMV		; 94 �Ǖ��m
		DL	RICHDMV		; 95 ���`���[�h
		DL	KAERUMV		; 96���`���[�h�Ƃ̃J�G��
		DL	SWIMPMV		; 97 �n�㐅����|�C���g
		DL	DAISUMV		; 98 �T�C�R��
		DL	AMENBMV		; 99 ���߂��
		DL	YUKABMV		; 9A �� �r����
		DL	YSLIMMV		; 9B ���X���C��
		DL	BALEEMV		; 9C �o�����[�i
		DL	MOAIMV		; 9D �Α�
		DL	TBEAMMV		; 9E �g�E���E�r�[��
		DL	KURI0MV		; 9F �I�ڂ�(�N���{�[)
		DL	PIHATMV		; A0 �s�[�n�b�g
		DL	LOPEMV		; A1 ���[�v
		DL	PACKNMV		; A2 �p�b�N����
		DL	LIFTXMV		; A3 ���t�g ��
		DL	LIFTYMV		; A4 ���t�g �c
		DL	LIFTDMV		; A5 ���t�g �ڂ����痎����I
		DL	LIFTTMV		; A6 ���t�g �V���I
		DL	HASIRMV		; A7 Level 7 ��
		DL	TAMA0MV		; A8 ���Ԃ����
		DL	GESSOMV		; A9 �Q�b�\�[
		DL	PUKPKMV		; AA ��(���j
		DL	PUKPVMV		; AB ��(�c�j
		DL	PUKPJMV		; AC ���i�W�����v�j
		DL	MONKYMV		; AD ��
		DL	OCTAJMV		; AE �p�^�I�N�^
		DL	YOSSIMV		; AF ��炵�׃A�C�e���I
		DL	AMUSIMV		; B0 �����I
		DL	YUKASMV		; B1 �����u���b�N
		DL	AMUSTMV		; B2 ���킫�������
		DL	HANNYMV		; B3 �n�`�̑�
		DL	PAPA2MV		; B4 �^�����i�n�`�̑��j
		DL	KUMA0MV		; B5 �N�}�R�b�N
		DL	PAPALMV		; B6 �p�p�[��
		DL	MAMADMV		; B7 �l��
		DL	TURIMV		; B8 ���̉��ނ肨�₶
		DL	NYOROMV		; B9 �j�����j����
		DL	PKURIMV		; BA �p�^�N��
		DL	SHIGEMV		; BB �����~���I
		DL	TUKAIMV		; BC �s�b�R��(���x���V���{�X)
		DL	ARIMAMV		; BD �o�C�A
		DL	BOXERMV		; BE �{�N�T�[
		DL	ZONBIMV		; BF �]���r
		DL	KHIMIMV		; C0 �Ŕ閧�I
		DL	GIRL1MV		; C1 �C�݃}�����I
		DL	GIRL2MV		; C2 ���̏�}�����I
		DL	MAMUUMV		; C3 �J�J�G���I
		DL	TODDMV		; C4 �Z�C�E�`�g�b�h
		DL	UNIUNIMV	; C5 ���ɂ���
		DL	KANIMV		; C6 ���ɁI
		DL	MANBOMV		; C7 �}���{�E
		DL	USAGIMV		; C8 �}�����ĂԂ�����
		DL	ONPUMV		; C9 �����
		DL	AKUMAMV		; CA ������
		DL	ZORAMV		; CB �]�[��
		DL	BLANKAMV	; CC �s���j�A
		DL	WANIMV		; CD ���j�G����
		DL	MAMAD2MV	; CE �ɂ񂬂呜�I
		DL	GAGEMV		; CF ���Q���炤�Ƃ��̂�I
		DL	USAG2MV		; D0 ������ ������
		DL	KUMASMV		; D1 ������ ������
		DL	NTORIMV		; D2 ������ �썑��
		DL	GMUSIMV		; D3 ������ ���i���͂������j
		DL	OBAKEMV		; D4 �����I�o�P�i�I�v�V�����j
		DL	NIWAXMV		; D5 �j���g���i�I�v�V�����j
		DL	YTUBOMV		; D6 ���p��
		DL	DOSNSMV		; D7 �h�X�� �r
		DL	DOSNBMV		; D8 �h�X�� �k
		DL	TAIATMV		; D9 �̓����肨����z�I
		DL	FIREBMV		; DA ���R�o�u���I
		DL	BABUBMV		; DB ��o�u��
		DL	KAZAMMV		; DC �������I&�j���g���I���W
		DL	BOOKMV		; DD �}���ق̖{�������Ђł̃A���o��
		DL	SEIRENMV	; DE ���R�y��f���I
		DL	KENBMMV		; DF ���r�[��
		DL	SARUKMV		; E0 �؂̏㉎�I
		DL	MOUSEMV		; E1 �˂���
		DL	HODAIMV		; E2 �΂̂ق������I
		DL	SANBOMV		; E3 ���ڂĂ�I
		DL	MBOSSMV		; E4 �����u�����{�X�I
		DL	FLYIT2MV	; E5 �p�^�A�C�e���i��A�n�[�g�j
		DL	BOSSMV		; E6 ���X�g �{�X�I
		DL	SIROSMV		; E7 ��X�C�b�`�I
		DL	EDAIMV		; E8 ��
		DL	RGB_MUSI	; E9 �Ԓ�
		DL	RGB_MUSI	; EA �Β�
		DL	RGB_MUSI	; EB ��
		DL	RGB_GOST	; EC �ԃI�o�P
		DL	RGB_GOST	; ED �΃I�o�P
		DL	RGB_GOST	; EE �I�o�P
		DL	RGB_BLOCK	; EF �ԃu���b�N
		DL	RGB_BLOCK	; F0 �΃u���b�N
		DL	RGB_BLOCK	; F1 �u���b�N
		DL	FLING_BOUND	; F2 ���ł���o�E���h����G
		DL	FLING_BOUND	; F3 �o�E���h����G
		DL	BLOCK_HINO	; F4 �q�m�b�N�X(�S�[�����o�[�W����)
		DL	HINO_IWA	; F5 �q�m�b�N�X�S�[�����̊�
		DL	MONBAN_HEI	; F6 ��ԕ�
		DL	MONBAN_HEI	; F7 ��ԕ�
		DL	NYORO_SLIME	; F8 NYO_SLM
		DL	FUKU_BOSS	; F9 ���̃_���W�����E���X�g�{�X
		DL	CAMERA_BOY	; FA �J�������m
;
;;;;;;;;;+--------------------------------------+
;;;;;;;;;|	�G�̊e�v���O�����o���N		|
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
;;;;;;;;	DB	:CAMERA_BOY	;�J�������m	FA
;
;+------------------------------------------------------+
;|	�G�l�n�u�d���[�`����				|
;|		�W�����v���邽�߂�			|
;|			�A�h���X��ݒ肷��		|
;|			�o��				|
;|			  �`�F�W�����v����o���N	|
;|			�g�k�F�W�����v����A�h���X	|
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
;|	�G�̃��C����������ړ��������[�`��	|
;+----------------------------------------------+
ENEMY_SUB
	LD	A,(FIREBFG)
	LD	(WFIREBFG),A
	XOR	A
	LD	(FIREBFG),A
;;	LD	(SHOPFG),A	; Shop in flag (Not item use)
	LD	(DAMASI),A	; ���ʂ����܂��t���O�I
	LD	(IKADAON),A	; Player Ikada on flag !
	LD	(SLIMFG),A	;�X���C���q�b�c�L!
	LD	(WARPFG),A
	LD	(ONLFFG),A	;���t�g�ڂ�t���O�I
	LD	(PLCANO),A
	LD	(TOBIOF),A
	RET
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�y�d�r�D�r����ړ��������[�`��				x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;
;+------------------------------------------------------+
;|	�G�̊e�C�j�V�����v���O�����A�h���X		|
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
;|	�G�C�j�V�������[�`����				|
;|		�W�����v���邽�߂�			|
;|			�A�h���X��ݒ肷��		|
;|			�o��				|
;|			�g�k�F�W�����v����A�h���X	|
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
;x	�y�l�`�D�c�l�f����ړ��������[�`��			x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;
;+--------------------------------------+
;|	VRDATA�e�[�u���f�[�^		|
;+--------------------------------------+
VRDATA
	DEFW	00		;00 VRAMD+1
	DEFW	ENDYMBG		;01 �G���f�B���O�R���i  BG;00 ;TITLBG
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
	DEFW	NCOPYBG		;0C �f�[�^�R�s�[
	DEFW	TSAVEBG		;0D �����Z�[�u
	DEFW	OPENBG		;0E Opening BG !
	DEFW	OPENBG2		;0F Opening BG 2!
	DEFW	OPENBG3		;10 Opening BG 3!
	DEFW	LOGODT		;11 ������^�C�g�����S�I
	DEFW	PEACHDT		;12 �s�[�`�ʐ^�I
	DEFW	LOVEDT		;13 �C�݃f���I
	DEFW	MAMUUBG		;14 �}���[�����x�^�I
	DEFW	KABEDT1		;15 �ǉ�P
;----------------------------------------------
	DEFW	ENDBGA		;16 �G���f�B���O A BG
	DEFW	ENDBGB2		;17 �G���f�B���O B2 BG
	DEFW	ENDBGC		;18 �G���f�B���O C BG
	DEFW	ENDBGB		;19 �G���f�B���O B BG
	DEFW	ENDBGD		;1A �G���f�B���O D BG
	DEFW	ENDBGE		;1B �G���f�B���O E BG
	DEFW	ENDBGF		;1C �G���f�B���O F BG
	DEFW	ENDBGG		;1D �G���f�B���O G BG
;- - - - - - - - - - - - - - - - - - - - - - -
	DW	ENDBGA1		;1E
	DW	ENDBGA2		;1F
	DW	ENDBGA3		;20
	DW	ENDBGA4		;21
	DW	ENDBGA5		;22
;
	DW	KABADT		;23 �J�o�̊G�I
	DW	TOUBGDT		;24 �V���f���I
;
	DEFW	OPENBG_CGB	;25 Opening BG !�i�b�f�a��p�j
;
;;	DEFW	EWAKUBG		;25 �G���f�B���O �}�b�v�g BG
;;	DEFW	EWAKUBG2	;26 �G���f�B���O �}�b�v�g BG2
;
;+----------------------------------------------+
;|	�u�q�f�[�^�A�h���X�ݒ�			|
;|		�o��				|
;|		�c�d�F�u�q�f�[�^�A�h���X	|
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
	DB	$4C ;09	 �\��
	DB	$4D ;0A	 �R�̓��A
	DB	$4C ;0B
	DB	$4C ;0C
	DB	$4C ;0D
	DB	$4E ;0E ;������
	DB	$4E ;0F ;�T�u�Q�[��
;- - - - - - - - - - - - - - - - - - -
	DB	$4E ;10 : ����
	DB	$4D ;11 : ���A
	DB	$4D ;12 : ���������̏���
	DB	$4F ;13 : �x�b�h���[��
	DB	$61 ;14 : ��
	DB	$63 ;15 : �����u�����̏Z��
	DB	$63 ;16 : �p�Ђ̐_�a
	DB	$00 ;17 :
	DB	$00 ;18 :
	DB	$00 ;19 :
	DB	$00 ;1A :
	DB	$00 ;1B :
	DB	$00 ;1C :
	DB	$4E ;1D : ������}����
	DB	$4E ;1E : �閧�̕���(���ƕ�)
	DB	$4D ;1F : �閧�̕���(���A��)
;
;=========================================
;�ǃo���N
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
	DB	$40 ;09	 �\��
	DB	$46 ;0A	 �R�̓��A
	DB	$40 ;0B
	DB	$40 ;0C
	DB	$40 ;0D
	DB	$48 ;0E ;������
	DB	$48 ;0F ;�T�u�Q�[��
;- - - - - - - - - - - - - - - - - - -
	DB	$48 ;10 : ����
	DB	$46 ;11 : ���A
	DB	$48 ;12 : ���������̏���
	DB	$4A ;13 : �x�b�h���[��
	DB	$40 ;14 : ��
	DB	$46 ;15 : �����u�����̏Z��
	DB	$6C ;16 : �p�Ђ̐_�a
	DB	$00 ;17 :
	DB	$00 ;18 :
	DB	$00 ;19 :
	DB	$00 ;1A :
	DB	$00 ;1B :
	DB	$00 ;1C :
	DB	$48 ;1D : ������}����
	DB	$48 ;1E : �閧�̕���(���ƕ�)
	DB	$46 ;1F : �閧�̕���(���A��)
;
;=========================================
DJKBBK2	; �V�_���W���� �ǃo���N �A�h���X
	DB	$4A ;00	 LV1
;
;=========================================
DJCABK	; Danjyon �����グ����̂Ȃ� bank adress !
	DB	$79 ;00	 LV1
	DB	$79 ;01	 LV2
	DB	$77 ;02	 LV3
	DB	$79 ;03	 LV4
	DB	$79 ;04	 LV5
	DB	$77 ;05	 LV6
	DB	$78 ;06	 LV7
	DB	$79 ;07	 LV8
	DB	$79 ;08	 LV9
	DB	$63 ;09	 �\��
	DB	$7A ;0A	 �R�̓��A
	DB	$00 ;0B
	DB	$00 ;0C
	DB	$00 ;0D
;
	DB	$7B ;0E ; ������
	DB	$7B ;0F ; �T�u�Q�[��
;- - - - - - - - - - - - - - - - - - -
	DB	$7B ;10 : ����
	DB	$7A ;11 : ���A
	DB	$7B ;12 : ���������̏���
	DB	$79 ;13 : �x�b�h���[��
	DB	$7C ;14 : ��
	DB	$7A ;15 : �����u�����̏Z��
	DB	$77 ;16 : �p�Ђ̐_�a
	DB	$00 ;17 :
	DB	$00 ;18 :
	DB	$00 ;19 :
	DB	$00 ;1A :
	DB	$00 ;1B :
	DB	$00 ;1C :
	DB	$7C ;1D : ������}����
	DB	$7B ;1E : �閧�̕���(���ƕ�)
	DB	$7A ;1F : �閧�̕���(���A��)
;
;=========================================
;	�V�_���W�����̃L�����i���o�[�O�O�g���
;	����ւ��o���N�A�h���X
;=========================================
NEWDJBK
	DW	$2D5E,$2D5E,            $3562,$3562
	DW	$2D5E,$2D5E,$3562,$3562,$3562,$3562
	DW	      $3562,$3562,$3562,$3562
	DW	      $2D50,$3562,$3562,$3562
	DW	      $2D50,$3562,$3562,$3562
;
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	�V�_���W�����̃L�����N�^�[�i���o�[�O�O����		x
;x	�ӂ�̃L�����N�^�[�]��					x
;x		�߂�l						x
;x		�@�`�F�o���N�A�h���X				x
;x		�g�k�F�A�h���X					x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
NewDJChrSet
		PUSH	DE
		LD	A,(GRNDPT)
		AND	A
		JR	Z,NWDJCH_120
		CP	$005		;�ʉ��u���b�N�̂��镔���H
		JR	NZ,NWDJCH_200	;	NO --> NWDJCH_200
NWDJCH_120
		LD	A,(ONOFFG)
		AND	A		;�ʉ����]���Ă�H
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
;��������������������������������������������������������������������������
;��	zma.s �̃v���O���������Ɉړ�					 ��
;��������������������������������������������������������������������������
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;x	BLNKSUB ���[�`���ŃW�����v���邽�߂̃A�h���X��ݒ肷��		x
;x----------------------------------------------------------------------x
;x	    �d�m�s�q�x							x
;x		�d         �F BLNKFG�i�L�����o���N�]���m���D�j		x
;x	    �q�d�s�t�q�m						x
;x		�g         �F �L�����o���N�]�����[�`�� �g�h�f�g		x
;x		�k         �F           �h             �k�n�v		x
;xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
BLNKSUB_JMP
		DEC	E
		SLA	E
		LD	D,$0
		LD	HL,BLNK_TABLE
		ADD	HL,DE
		LD	A,(HLI)
		LD	H,(HL)		; �g�h�f�g
		LD	L,A		; �k�n�v
		RET

;------------------------------------------------------------------------
;	�L�����o���N�]�����[�`�� �e�[�u���f�[�^
;------------------------------------------------------------------------
BLNK_TABLE
		DW	RMBGST		; ( 1)
		DW	V_RAMC		; ( 2)
		DW	BANKST		; ( 3)
		DW	BANKS2		; ( 4)
		DW	BANKS3		; ( 5)
		DW	DJBKST		; ( 6) �_���W���� BG bank set !
		DW	GRBKST		; ( 7) �n�� BG bank set !
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
		DW	PEACHBKST	; (12)	;�s�[�`�ʐ^�I
		DW	LOVEBKST	; (13)	;�C�݃f���I
		DW	KAB1BKST	; (14)	;�ւ����I
;--- Ending - -
		DW	ENDCHA		; (15);�G���f�B���O A CHR.TR
		DW	ENDCHB2		; (16);�G���f�B���O B2 CHR.TR
		DW	ENDCHC		; (17);�G���f�B���O C  CHR.TR
		DW	ENDCHB		; (18);�G���f�B���O B  CHR.TR
		DW	ENDCHD		; (19);�G���f�B���O D  CHR.TR
		DW	ENDCHE		; (1A);�G���f�B���O E  CHR.TR
		DW	ENDCHF		; (1B);�G���f�B���O F  CHR.TR
		DW	ENDCHG		; (1C);�G���f�B���O G  CHR.TR
;
		DW	ENDCHA1		; (1D);�G���f�B���O A(�n��j  CHR.TR
		DW	ENDCHYM		; (1E);�G���f�B���O A(�R���i�j  CHR.TR
		DW	ENDCHA2		; (1F);�G���f�B���O A2(LINK OBJ) CHR.TR
;- - - -
		DW	KABABKST	; (20) ;�J�o�̊G�I
		DW	TOUBGCH		; (21);�V���f���I
;
		DW	MARINBKST	; (22) �����߂܂��i�b�f�a��p�j
		DW	ENDMSBKST	; (23) �G���f�B���O���b�Z�[�W�i�b�f�a��p�j
;
;
;----------------------------------------------------------------
	END
;----------------------------------------------------------------
