;;;;;;;;	PUBALL
;;BANK0	GROUP	0
;************************************************
;*	<<<<<  �q�`�l  �d�p�t. >>>>>		*
;************************************************
;	FF80->FF8F :SOUND USE
;	FFC0->FFC9 :DMA SUB
;	ORG	$FF8A
;
BKCHFG	EQU	$FF90
BKCHF2	EQU	$FF91
BKCHCT	EQU	$FF92
BKCHC2	EQU	$FF93
BKCHNO	EQU	$FF94
BKCHN2	EQU	$FF95
;
SCCH	EQU	$FF96
SCCV	EQU	$FF97
;
PLXPSL	EQU	$FF98	
PLYPSL	EQU	$FF99	
PLXSPD	EQU	$FF9A	
PLYSPD	EQU	$FF9B
PLSTAT	EQU	$FF9C	
PLCHPT	EQU	$FF9D
PLCMKI	EQU	$FF9E
PLSVXL	EQU	$FF9F
PLSVYL	EQU	$FFA0
PLSTOP	EQU	$FFA1
PLZPSL	EQU	$FFA2
PLZSPD	EQU	$FFA3
CHTRFG	EQU	$FFA4	; �펞 Character �]�� ��ރt���O
CHTRF2	EQU	$FFA5	; ���� Character �]�� ��ރt���O
CHTRCT	EQU	$FFA6	;
CHTRC2	EQU	$FFA7	;
SDOUTFG	EQU	$FFA8	; SOUND fade out flag !
SLEVEL	EQU	$FFA9	; SOUND level 1 flag !
SLEVEL2	EQU	$FFAA	; SOUND level 2 flag !
SDONFG	EQU	$FFAB	; SOUND fade IN flag !
EXITFG	EQU	$FFAC	; Dundeon Exit hit check mode
EXITXP	EQU	$FFAD
EXITYP	EQU	$FFAE
UNITNO	EQU	$FFAF
BGMNO	EQU	$FFB0	; Now BGM no.
BGMSTF	EQU	$FFB1	; BGM Chenge flag!
IKADAON	EQU	$FFB2	; Player Ikada on flag !
PLDSYP	EQU	$FFB3	; PLYPSL+PLZPSL
DJMSTM	EQU	$FFB4	; Dundeon message set time !
OPKYTM	EQU	$FFB5	;Opening key wait !
KNKNTM	EQU	$FFB6	; Ken vs Ken protect time !
PLTIM0	EQU	$FFB7	;
FTUNNO	EQU	$FFB8	;Foot unit no.
PANELMD	EQU	$FFB9	;�Ђ݂p�l�����ԃe�[�u��
HIKUSFG	EQU	$FFBA	;��������X�C�b�`
ONOFHELP EQU	$FFBB	;�X�N���[���O���ʃu���b�N�]���t���O�I
;;;BSFLFG	EQU	$FFBB	;�{�X����t���O(��p�T�E���h�Z�b�g�j
BGMNOT	EQU	$FFBC	; BGM initial set noth flag !
BGMNO2	EQU	$FFBD
ENBGRV	EQU	$FFBE	;BG check don't revise
TODYFG	EQU	$FFBF	;�t�@���t�@�[������̕��A���邽�߂�BGM�̔ԍ��I
;
SVSTS	EQU	$FFCA ;	DS	1	; �Z�[�u�X�e�[�^�X
CNT1	EQU	$FFCB ;	DS	1	; �R���g���[�� �L�[ ��� �x�^ ����
TRG1	EQU	$FFCC ;	DS	1	; �R���g���[�� �L�[ ��� �g���K ����
OBJYP	EQU	$FFCD ;	DS	1	; �n�a�i �x ���W
OBJXP	EQU	$FFCE ;	DS	1	; �n�a�i �w ���W
VRAMH	EQU	$FFCF ;	DS	1	; �u�q�`�l ��� �A�h���X
VRAML	EQU	$FFD0 ;	DS	1	; �u�q�`�l ���� �A�h���X
VBLANK_F EQU 	$FFD1 ;	DS	1	; �u�|�a�k�`�m�j �I�� �t���O
IEB	EQU	$FFD2 ;	DS	1	; ���荞�݋��t���O�̃o�b�t�@
;
W_SEQ	EQU	$FFD3 ;	DS	1	; �n�a�i-�q�`�l�]���C�j�V�����t���O
;
S_DATA	EQU	$FFD4 ;	DS	2
;
BGTM	EQU	$FFD6 ;	DS	1
;
WORK	EQU	$FFD7
WORK0	EQU	$FFD7
WORK1	EQU	$FFD8
WORK2	EQU	$FFD9
WORK3	EQU	$FFDA
WORK4	EQU	$FFDB
WORK5	EQU	$FFDC
WORK6	EQU	$FFDD
WORK7	EQU	$FFDE
WORK8	EQU	$FFDF
WORK9	EQU	$FFE0
WORKA	EQU	$FFE1
WORKB	EQU	$FFE2
WORKC	EQU	$FFE3
WORKD	EQU	$FFE4
WORKE	EQU	$FFE5
WORKF	EQU	$FFE6
FRCNT	EQU	$FFE7
ENHELP	EQU	$FFE8	; Enemy work 1
ENHELP2	EQU	$FFE9	; Enemy work 2
ENMODE2	EQU	$FFEA
ENMYNO2	EQU	$FFEB
ENDSYP	EQU	$FFEC
ENFLCL	EQU	$FFED
ENSVXL	EQU	$FFEE
ENSVYL	EQU	$FFEF
ENSTAT2	EQU	$FFF0
ENCHPT2	EQU	$FFF1
;
SOUND1	EQU	$FFF2
SOUND2	EQU	$FFF3
SOUND3	EQU	$FFF4
SOUND4	EQU	$D368
;;;;;;SOUND4	EQU	$FFF5
;
ENCHNO	EQU	$FFF5
;
GRNDPT	EQU	$FFF6
DNJNNO	EQU	$FFF7
DJSVBF	EQU	$FFF8
YKFLAG	EQU	$FFF9	;���Ԃ�A����ʃt���O
FTUNAD	EQU	$FFFA	;Foot BG unit Adress !
WFTUNAD	EQU	$FFFB	;   " save !
NMIFG	EQU	$FFFD
CGBFLG	EQU	$FFFE		; �J���[�Q�[���{�[�C �t���O
KEYA1	EQU	CNT1
KEYA2	EQU	TRG1
;********************************
;*	����p���W�X�^		*
;********************************

P1	EQU	$FF00		; �L�[�|�[�g
SSB	EQU	$FF01		; �V���A���]�� �f�[�^
SB	EQU	SSB		;       �h
SSC	EQU	$FF02		; �V���A�� �R���g���[��
SC	EQU	SSC		;       �h
DIV	EQU	$FF04		; �f�B�o�C�_�[
TIMA	EQU	$FF05		; �^�C�}�[ ���W�X�^
TMA	EQU	$FF06		; ���W���� ���W�X�^
TAC	EQU	$FF07		; �^�C�}�[ �R���g���[��
IF	EQU	$FF0F		; ���荞�ݗv���t���O
IE	EQU	$FFFF		; ���荞�݋��t���O
LCDC	EQU	$FF40		; �k�b�c �R���g���[��
STAT	EQU	$FF41		; �k�b�c�b �X�e�[�^�X
SCY	EQU	$FF42		; �X�N���[�� �w
SCX	EQU	$FF43		; �X�N���[�� �x
LY	EQU	$FF44		; �k�b�c�b �x ���W
LYC	EQU	$FF45		; �k�x �R���y�A ���W�X�^
DMA	EQU	$FF46		; �c�l�` �]��
BGP	EQU	$FF47		; �a�f �p���b�g
OBP0	EQU	$FF48		; �n�a�i �p���b�g 0
OBP1	EQU	$FF49		; �n�a�i �p���b�g 1
WDY	EQU	$FF4A		; �E�C���h �w ���W
WDX	EQU	$FF4B		; �E�C���h �x ���W
;
HDMA1	EQU	$FF51		; �]�����w��(�g�h�f�g)
HDMA2	EQU	$FF52		; �]�����w��(�k�n�v)
HDMA3	EQU	$FF53		; �]����w��(�g�h�f�g)
HDMA4	EQU	$FF54		; �]����w��(�k�n�v)
HDMA5	EQU	$FF55		; �]���X�^�[�g�y�ѓ]����
;
OTO	EQU	$DFE8

;--------------------------------------------------------------
;	�b�f�a�g�p
;--------------------------------------------------------------
KEY1	EQU	$FF4D		; �X�s�[�h�؂�ւ�
BCPS	EQU	$FF68		; �J���[�p���b�g �a�f���������ݎw��
BCPD	EQU	$FF69		; �J���[�p���b�g �a�f���������݃f�[�^
OCPS	EQU	$FF6A		; �J���[�p���b�g �n�a�i���������ݎw��
OCPD	EQU	$FF6B		; �J���[�p���b�g �n�a�i���������݃f�[�^
;
VBK	EQU	$FF4F		; �k�b�c�\���p�q�`�l�o���N���W�X�^
SVBK	EQU	$FF70		; ���[�N�������p�o���N���W�X�^
;
;********************************
;*	�c�l�`    		*
;********************************
DMASUB	EQU	$FFC0		; �c�l�`�]���T�u���[�`��
OBJRAM	EQU	$C000		; �n�`�l ����
OAM	EQU	$C000
POAM	EQU	$C008
;;;;;;		+A0
ENOAM	EQU	$C030
;;;;;   0A0H use  (C0A0->C0FFEQUDammy)
;********************************
;*	GAME USE RAM   		*
;********************************
SCCH1	EQU	$C100	; Opening part scroll counter !
SCCH2	EQU	$C101
SCCH3	EQU	$C102
SCCH4	EQU	$C103
SCCH5	EQU	$C104
OPSCCT	EQU	$C105	; Line check counter !
SCCV1	EQU	$C106	;
BGMFLG	EQU	$C107	; BGM select TEST flag !
NMSTCT	EQU	$C108	; Mesege NAME in count !
MSTNO	EQU	$C109	; Message test No.
BEDOFF	EQU	$C10A	; Start demo bed off flag !(Not BG check)
SNDSPD	EQU	$C10B	; Sound speed !
DAMASI	EQU	$C10C	; �^�k�L���܂��t���O�I
EBCHF2	EQU	$C10D	; �G�]���t���O�Q
BKCHF3	EQU	$C10E	; "
BKCHC3	EQU	$C10F	; "
PINCHCT	EQU	$C110	; ���C�t�댯�T�E���h�Z�b�g�^�C�~���O�I
ENSTTM	EQU	$C111	; �G�X�g�b�v�^�C��
MSGENOH	EQU	$C112	; ���b�Z�[�W�i���o�[ High!
EFLFLG	EQU	$C113	; �G�S�����������t���O�I
NAMIOTO	EQU	$C114	; �g�� �rE COUNT
KDMSCT	EQU	$C115	;�q�����b�Z�[�W�J�E���g
ZZZFLG	EQU	$C116	;�^���� �y�y�y �]���t���O(�����j
SLIMFG	EQU	$C117	;�X���C���Ђ����I
;MSSDWT	EQU	$C117
;
;
PLXPSH	EQU	$C118
PLYPSH	EQU	$C119
PLXSDR	EQU	$C11A
PLYSDR	EQU	$C11B
PLMODE	EQU	$C11C
PLFLPL	EQU	$C11D
PLFLPR	EQU	$C11E
HASGFG	EQU	$C11F
PLWKCT	EQU	$C120
SPCTTM	EQU	$C121
SPCTWT	EQU	$C122
INDEX	EQU	$C123
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
SCRLFG	EQU	$C124
SCRLMK	EQU	$C125
SCRADH	EQU	$C126
SCRADL	EQU	$C127
SCRLC1	EQU	$C128
SCRLC2	EQU	$C129
SCUNTA	EQU	$C12A
SCRLTM	EQU	$C12B
SCCHNX	EQU	$C12C
SCCVNX	EQU	$C12D
SCVRMH	EQU	$C12E
SCVRML	EQU	$C12F
WHASGFG	EQU	$C130
;;;GRNDPT	EQU	$C130
;PLSVXL	EQU	$C131
;PLSVYL	EQU	$C132
PLCBFG	EQU	$C133
MSOFTM	EQU	$C134	;���b�Z�[�W�A���h�~�^�C���I
;;UNITNO	EQU	$C134
PLPRIO	EQU	$C135
PKENPT	EQU	$C136
PCUTFG	EQU	$C137
PCUTTM	EQU	$C138
PKENYD	EQU	$C139
PKENXD	EQU	$C13A
PLDSYD	EQU	$C13B
PLDSXD	EQU	$C13C
RNDFLG	EQU	$C13D
HANEFG	EQU	$C13E
OVSLCT	EQU	$C13F
PKCRX1	EQU	$C140
PKCRX2	EQU	$C141
PKCRY1	EQU	$C142
PKCRY2	EQU	$C143
PLOSHI	EQU	$C144
PLYPS2	EQU	$C145
PLJPFG	EQU	$C146
ONLFFG	EQU	$C147	;���t�g �ڂ�t���O�I
;PLZPSL	EQU	$C147
;PLZSPD	EQU	$C148
PLZSDR	EQU	$C149
DUSHFG	EQU	$C14A
DUSHCT	EQU	$C14B
PYAATM	EQU	$C14C
BUMEFG	EQU	$C14D
PRTBMFG	EQU	$C14D
BOMBFG	EQU	$C14E
;----------------------
WNDFLG	EQU	$C14F
WNDSPD	EQU	$C150
WNDSTT	EQU	$C151
PLJCPT	EQU	$C152
PLJCCT	EQU	$C153
WDITFG	EQU	$C154
TILTXD	EQU	$C155
TILTYD	EQU	$C156
TILTCT	EQU	$C157
TILTMK	EQU	$C158
MPWRK0	EQU	$C159
TATEFG	EQU	$C15A
TATEON	EQU	$C15B
PLCAMD	EQU	$C15C
PLCAMK	EQU	$C15D
;PLSTOP	EQU	$C15E
PLHKCT	EQU	$C15F
PCUTOF	EQU	$C160
WTBGCT	EQU	$C161
WTBGC2	EQU	$C162
PINCHFG	EQU	$C163
MJSTCTH	EQU	$C164	;���b�Z�[�W�������J�E���g�g
BSSDTM	EQU	$C165	;�{�X ���b�Z�[�W �Z�b�g �^�C�}�[
OKARFG	EQU	$C166	;�I�J���i�����t���O�I
ITEMNOT	EQU	$C167	;�A�C�e���s�I
SARUFG	EQU	$C168	;�� �w���t���O�I
DAMSEFG	EQU	$C169	;�Y�N���[���G���h���ʂ����܂����Z�b�g�t���O�I
;------------------
;BKCHFG	EQU	$C163
;BKCHF2	EQU	$C164
;BKCHCT	EQU	$C165
;BKCHC2	EQU	$C166
;BKCHNO	EQU	$C167
;BKCHN2	EQU	$C168
;PLSTAT	EQU	$C169
;--------------------
WCUTFG	EQU	$C16A
SBHR	EQU	$C16B
SBCNT	EQU	$C16C
CARITM	EQU	$C16D	; Ken chari time
KENON	EQU	$C16E	; ken butoon on !
MSSTCT	EQU	$C16F
MJSTCT	EQU	$C170
MJSTCT2	EQU	$C171
MJSTTM	EQU	$C172
MSGENO	EQU	$C173
PWORK0	EQU	$C174
MSVRMH	EQU	$C175
MSVRML	EQU	$C176
MSANSR	EQU	$C177
TLCRTM	EQU	$C178
TLCRXL	EQU	$C179
TLCRYL	EQU	$C17A
BGCKOF	EQU	$C17B
WAVCNT	EQU	$C17C
WAVCNT2	EQU	$C17D
WAVCNT3	EQU	$C17E
WAVFLG	EQU	$C17F
WAVTIM	EQU	$C180
FTBGNO	EQU	$C181
WDMVCT	EQU	$C182
PLSWTM	EQU	$C183
PCTRALH	EQU	$C184
PCTRALL	EQU	$C185
PCTRARH	EQU	$C186
PCTRARL	EQU	$C187
DROPFG	EQU	$C188
DROPMD	EQU	$C189
SHSTCT	EQU	$C18A
SHSTCT2	EQU	$C18B
SHOPEN	EQU	$C18C
SHSHUT	EQU	$C18D
NAZOFG	EQU	$C18E
NAZOCL	EQU	$C18F
SHUTFG	EQU	$C190
BLOSTM	EQU	$C191
EBANK0	EQU	$C193
EBANK1	EQU	$C194
EBANK2	EQU	$C195
EBANK3	EQU	$C196
EBCHFG	EQU	$C197
KURDCT	EQU	$C198
DUSHTM	EQU	$C199
DUSHMK	EQU	$C19A
POWDRTM	EQU	$C19B
DOORCT	EQU	$C19C
WARPFG	EQU	$C19D
;;PLTIM0	EQU	$C19D
ATCKNO	EQU	$C19E
MSGEFG	EQU	$C19F
SPDMAPL	EQU	$C1A0	; Danjyon Map special character TR. data adress L
SPDMAPH	EQU	$C1A1	; H
TOURCT	EQU	$C1A2
LIKEFG	EQU	$C1A3	;Like like yabaa flag !
PFUCKFG	EQU	$C1A4 ;Fuck shot flag !
BELTFG	EQU	$C1A5
PFUCKID	EQU	$C1A6 ;Fuck shot index
TOGEFG	EQU	$C1A7	; Toge BG flag
ENSTFG	EQU	$C1A8	; Enemy stop flag !
DEMOFG	EQU	$C1A9	; Player demo flag
DEMOTM	EQU	$C1AA	; " time 
MSKYOF	EQU	$C1AB	; Mesege key not check
KENOFF	EQU	$C1AC
MSCRFG	EQU	$C1AD	; Peaple cros flag
SLIMCNT	EQU	$C1AE	; Boss small slime set count !
BSFLFG	EQU	$C1AF	;�{�X����t���O(��p�T�E���h�Z�b�g�j
;;BGMNOT	EQU	$C1AF	; BGM initial set noth flag !
ICONWRK	EQU	$C1B0	; G map icon set ram
ICONFG	EQU	$C1B1
ICONTM	EQU	$C1B2
ICONTM2	EQU	$C1B3
WGMAPPT	EQU	$C1B4	; GMAPPT save
FUEFLG	EQU	$C1B5	; Window fue display flag !
WITEMPT	EQU	$C1B6	; Item waku point save
FUECPT	EQU	$C1B7	; Fue chr pt
FUETM	EQU	$C1B8	; Fue window set timer !
FUETM2	EQU	$C1B9	;         "
FUEAUT	EQU	$C1BA	; Auto window off flag !
FLDWTM	EQU	$C1BB	; Player fole down help time !
DJCLTM	EQU	$C1BC	; Danjyon clear time !
BSSDFG	EQU	$C1BD	; Boss sound set flag
BOSSFG	EQU	$C1BE	; Boss room flag
SCXAD	EQU	$C1BF	; Part Scroll ADD count
BMYATM	EQU	$C1C0	; Bomber alow time !
BMINDX	EQU	$C1C1	; Bomber use index 
YAINDX	EQU	$C1C2	; ya use index 
CARISTM	EQU	$C1C3	; BG ken cyari set timing flag !
KNBGTM	EQU	$C1C4	; Ken BG check protect time !
MJSTCT3	EQU	$C1C5	; Test
MUTEKI	EQU	$C1C6	; Player no damege flag !
ANAHFG	EQU	$C1C7	; Ana hori flag !
ANAHTM	EQU	$C1C8	; Ana hori time !
FLBKTM	EQU	$C1C9	; ���鏰�^�C��
SWCHCT	EQU	$C1CA	; ��� SWICH on count
SWCHTM	EQU	$C1CB	;  " Return  Timer !!
MJSDON	EQU	$C1CC	;���b�Z�[�W���艹�Z�b�g�t���O�I
BSXPSL	EQU	$C1CD	;Boss woak ram (RANEM suna set pos.)
BSYPSL	EQU	$C1CE
DJSDON	EQU	$C1CF	;�_���W�����X�N���[��BGM�Z�b�g�t���O�I
;- - - - - - - - - - - - - -
DROBPX	EQU	$C1D0	;�V���b�^�[�A�h���X
DROBPY	EQU	$C1E0	;
DRUNPS	EQU	$C1F0	;   " UNIT ADRESS
;===SOUND TEST =====
SDFLAG	EQU	$C1FE
SDTIME	EQU	$C1FF
;- -  �G ��p- - - - - - - -
ENNO	EQU	$10
ENXPSL	EQU	$C200
ENYPSL	EQU	$C210
ENXPSH	EQU	$C220
ENYPSH	EQU	$C230
ENXSPD	EQU	$C240
ENYSPD	EQU	$C250
ENXSDR	EQU	$C260
ENYSDR	EQU	$C270
ENMODE	EQU	$C280
ENSTAT	EQU	$C290
ENCBFG	EQU	$C2A0
ENWRK0	EQU	$C2B0
ENWRK1	EQU	$C2C0
ENWRK2	EQU	$C2D0
ENTIM0	EQU	$C2E0
ENTIM1	EQU	$C2F0
ENTIM2	EQU	$C300
ENZPSL	EQU	$C310
ENZSPD	EQU	$C320
ENZSDR	EQU	$C330
ENMOD0	EQU	$C340
ENMOD1	EQU	$C350
ENLIFE	EQU	$C360
ENBANK	EQU	$C370
ENMUKI	EQU	$C380
ENWRK4	EQU	$C390
ENMYNO	EQU	$C3A0
ENCHPT	EQU	$C3B0
ENOMID	EQU	$C3C0
ENOMIS	EQU	$C3C1
;---------------------------
PLWRK0	EQU	$C3C2
MSNXMJ	EQU	$C3C3	;���b�Z�[�W��ǂݗp�I
LVWRK0	EQU	$C3C4	;�C�ݔM���f���p�I
LVWRK1	EQU	$C3C5
LVWRK2	EQU	$C3C6
LVTIM0	EQU	$C3C7
UTAFLG	EQU	$C3C8	;�}�����S�t���O�I
PIMODE	EQU	$C3C9	;�}�����_���W��������A�A�A�A
WAVCNT4	EQU	$C3CA	;���[�u
;- - - - - - - - - - - 
FADEON	EQU	$C3CB	;Fade on set
FADECT	EQU	$C3CC	;Now count
FADECT2	EQU	$C3CD	;Max count
COINWT	EQU	$C3CE	;�R�C���J�E���g�A�b�v���b�Z�[�W�҂��I
WPLCAMD	EQU	$C3CF	;�����t���O�Z�[�u�I
;;;;;;;;;;BGFLSH	EQU	$C3CE	;BG �t���b�V��
;;;;	Fury !!
ENCONT	EQU	$C3D0
ENGRPT  EQU	$C3E0
ENHNXS	EQU	$C3F0	;�w�|�W�V����
ENHNYS	EQU	$C400	;�x�|�W�V����
ENHNFG	EQU	$C410	;���˕Ԃ�t���O
ENFLSH	EQU	$C420	;�t���b�V���O�t���O
ENMOD3	EQU	$C430
ENWRK3	EQU	$C440
ENTIM3	EQU	$C450	; Long timer !
ENJYUN	EQU	$C460	; Enemy set jyunban count 0,1,2,3....
ENWATR	EQU	$C470	; In water flag !
ENTIM4	EQU	$C480
ENCAST	EQU	$C490
ENHNMD	EQU	$C4A0	; Hanekeri 
ENFLXP	EQU	$C4B0	; Fole down serch xpos
ENFLYP	EQU	$C4C0	;        "        y
ENMOD2	EQU	$C4D0
ENITMF	EQU	$C4E0	;�����A�C�e���Z�b�g�t���O
ENBCOF	EQU	$C4F0	;BG �`�F�b�N�����I
;
MAMUUFG	EQU	$C500	;�}���[�E�C���h�E
FKINDX	EQU	$C501	;�ӂ��낤�C���f�b�N�X
OTOFLG	EQU	$C502
ENBGLR	EQU	$C503
SPEKFG	EQU	$C504
SHOHIN	EQU	$C505
;;;;;	+4
SHOHFG	EQU	$C509
SHOPFG	EQU	$C50A	;No atack flag !
SHOHID	EQU	$C50B	;SHOHIN  Index !
KTINDX	EQU	$C50C	;KTOBJ use index
ENBGUD	EQU	$C50D
TAKISDF	EQU	$C50E	;�ꉹ�Z�b�g�t���O�I
MAINDX	EQU	$C50F	;�}�����I�v�V�����C���f�b�N�X
;----------------------
EXNO	EQU	$10
EXMODE	EQU	$C510
EXTIM0	EQU	$C520
EXXPSL	EQU	$C530
EXYPSL	EQU	$C540
EXXSPD	EQU	$C550
EXYSPD	EQU	$C560
EXXSDR	EQU	$C570
EXYSDR	EQU	$C580
EXSTAT	EQU	$C590
;--------------
EXWRK0	EQU	$C5A0	;���g�p�I
EXWRK1	EQU	$C5B0	;   �h
;--------------
FIREBFG	EQU	$C5A0
WFIREBFG EQU	$C5A1
GMAPFG	EQU	$C5A2	;�{����̒n��}�b�v�p�I
SEIRENFG EQU	$C5A3	;�Z�C���[���y��f���p�I
OKACNT	EQU	$C5A4	;  �^�C�~���O�I
OKACNT2	EQU	$C5A5
IWAMSFG	EQU	$C5A6	;�P��̂݊�����������܂��Imsgeflag!
BSFLSD	EQU	$C5A7	;�{�X���ꉹ�Z�b�g���Ԃ��p�I
PLCANO	EQU	$C5A8	;�����ł�G�̂mo.
HARTFUL	EQU	$C5A9	;���C�t�܂񂽂�t���O�I
L9NZCT	EQU	$C5AA	;���x���X��J�E���g�I
FKMSFG	EQU	$C5AB	;�t�N���E���b�Z�[�W���I�t���O�I
HABACNT	EQU	$C5AC	;�͂΂������Z�b�g�J�E���g�I
FADEBP	EQU	$C5AD	;�t�F�[�h  BGPFG
CACHTM	EQU	$C5AE	;�G�����v���e�N�g�I
BGMSTM	EQU	$C5AF	;BGM���ԍ��Z�b�g�I
KENTAT	EQU	$C5B0	;���������ǂ�����(�����蔻��)
;- - - - - - - - -
EXSTCT	EQU	$C5C0
ENSHMK	EQU	$C5D0	;�v���C���[���퓊������
ENSHUN	EQU	$C5E0	;�v���C���[���퓊�����݃��j�b�g
;----------------------
ENONCT	EQU	$CE80	; Enemy on off check room count
ENONBF	EQU	$CE81	;         "               Buffer
;;;	+6
;----------------------
ENONOF	EQU	$CF00	; Enemy fail bit on off data Max 256
;----------------------
XMVBUF	EQU	$D000
YMVBUF	EQU	$D100
ZMVBUF	EQU	$D200
;----------------------
KRENC1	EQU	$D200	;�N���[���Q�[��
KRENC2	EQU	$D201
BUTNC1	EQU	$D202
BUTNC2	EQU	$D203
KRENXP	EQU	$D204
KRENYP	EQU	$D205
KRENAD	EQU	$D206
;----------------------
LUREXP	EQU	$D000
LUREYP	EQU	$D001
FISHON	EQU	$D002
LUREID	EQU	$D003
FISHCT	EQU	$D004
;----------------------
OYAJIXS	EQU	$D000
OYAJIYS	EQU	$D001
TBINDX	EQU	$D002
;--Boss use-----------
BHEADFG	EQU	$D200
BSINDX	EQU	$D201
BSINDX2	EQU	$D202
BHAZUCT	EQU	$D203
BSLIFE	EQU	$D204
BDATNO	EQU	$D205	; Big bird atack No.
;--BSKEL use--
BSTTPT	EQU	$D206
BSKNPT	EQU	$D207
BSUPPT	EQU	$D208
BSDWPT	EQU	$D209
BSTTXP	EQU	$D20A
BSTTYP	EQU	$D20B
BSKNXP	EQU	$D20C
BSKNYP	EQU	$D20D
BSUPYP	EQU	$D20E
BSDWYP	EQU	$D20F
;-- Manbou & Mamuu use ---
BGMCNT	EQU	$D210
BGMCNT2	EQU	$D211
BGMCNT3	EQU	$D212
BGMCNT4	EQU	$D213
BGMTIM0	EQU	$D214
BGMWRK0	EQU	$D215
BGMWRK1	EQU	$D216
BGMCNT5	EQU	$D217
BGMTIM1	EQU	$D218
;---------------------
LDWRK0	EQU	$D200
LDWRK1	EQU	$D210
;-- ���X�g�{�X use ---
BOSSNO	EQU	$D219
BSCSOFF	EQU	$D21A
AGWPPX	EQU	$D21B
AGWPPY	EQU	$D21C
AGTMFG	EQU	$D21D
BSMUKI	EQU	$D21E
BSATCT	EQU	$D21F
BSDMCT	EQU	$D220
BSWRK0	EQU	$D221
BSWRK1	EQU	$D222
BSWRK2	EQU	$D223
GABOFG	EQU	$D224
GABOXD	EQU	$D225
GABOYD	EQU	$D226
BSKBMK	EQU	$D227
BSKBPT	EQU	$D228
;----------------------
NAMEOK	EQU	$D000
NMCPP1	EQU	$D001
NMCPP2	EQU	$D002
;----------------------
TLSCCT	EQU	$D000
TLSCCT2	EQU	$D001
;----------------------
OPWRK0	EQU	$D000	; Opening & ending use !
OPWRK1	EQU	$D001
OPWRK2	EQU	$D002
OPWRK3	EQU	$D003
OPWRK4	EQU	$D004
OPWRK5	EQU	$D005
NMCH0L	EQU	$D006	; Nami Chr TR. ADRESS !
NMCH0H	EQU	$D007
NMCH1L	EQU	$D008
NMCH1H	EQU	$D009
YAMACT	EQU	$D00A	; Yama BG write count !
EGGZL	EQU	$D00B	;      "    adress
EGGZH	EQU	$D00C	; 	"     H
OPWRK6	EQU	$D00D	;
OPWRK7	EQU	$D00E	;
OPWRK8	EQU	$D00F	;
OPFDCT	EQU	$D010	;Fade count
KIRAPT		EQU	$D011	;����� �p�^�[��
KIRAFC		EQU	$D012	;����� �t���[���J�E���^
DXCLPT		EQU	$D013	;�c�w �J���[�]�� �p�^�[��
DXCLFC		EQU	$D014	;�c�w �J���[�]�� �t���[���J�E���^
DXCLWT		EQU	$D015	;�c�w �J���[�]�� �E�G�C�g
KIRAWL		EQU	$D016	;����� �E�G�C�g �k�n�v
KIRAWH		EQU	$D017	;����� �E�G�C�g �g�h�f�g
SKIPFG		EQU	$D018	;�^�C�g���X�L�b�v�t���O
;--Ending USE--------------------	(��)�A�C�e���Z���N�g�Ƌ��p
EDWRK0	EQU	$D000
EDWRK1	EQU	$D001
EDWRK2	EQU	$D002
EDWRK3	EQU	$D003
EDWRK4	EQU	$D004
EDWRK5	EQU	$D005
EDTIM0	EQU	$D006
EDTIM1	EQU	$D007
EDTIM2	EQU	$D008
EDTIM3	EQU	$D009
EDCNT0	EQU	$D00A
EDCNT1	EQU	$D00B
EDCNT2	EQU	$D00C
EDCNT3	EQU	$D00D
EDMODE	EQU	$D00E
;- Not ERCLER --
EDCNT4	EQU	$D00F
EDCNT5	EQU	$D00F
;- Staff role -
STWRK0	EQU	$D010
STWRK1	EQU	$D011
STMODE	EQU	$D012
EDTIM4	EQU	$D013
;- for CGB -
KUJIRA_CLEAR	EQU	$D014	; ������̉��N���A�������C����
KMARINMD	EQU	$D015	; �����߂܂�� ���[�h
KMARINPT	EQU	$D016	; �����߂܂�� �p�^�[��
KMARINFC	EQU	$D017	; �����߂܂�� �t���[���J�E���^
MARINPT		EQU	$D018	; �܂�� �J���[�]�� �p�^�[��
KAMOMPT		EQU	$D019	; ������ �J���[�]�� �p�^�[��
KMARINCHPT	EQU	$D01A	; �����߂܂�� �L�����]�� �p�^�[��
KAMOMOVE	EQU	$D01B	; ������ �L�����p�^�[��
MARINSD		EQU	$D01C	; �}�����̉S�^�C�}�[
MARINSD2	EQU	$D01D	;     �h
EDTIM5		EQU	$D01E	; ���O�\���E�G�C�g�^�C�}�[
EDFADE		EQU	$D01F	; �n�a�i�t�F�[�h�t���O
KAMOTM		EQU	$D020	; �����߃E�G�C�g�^�C�}�[
EDSFADE		EQU	$D021	; �T�E���h�t�F�[�h
LINKFADE	EQU	$D022	; ��񂭃t�F�[�h�J�E���g
;---------------
WAXBUF	EQU	$D100	; WANWAN calc buffer
WAYBUF	EQU	$D110	; WANWAN calc buffer
WAXBUF2	EQU	$D120	; WANWAN calc buffer Save
WAYBUF2	EQU	$D130	; WANWAN calc buffer Save
WACTXP	EQU	$D150	; ���S
WACTYP	EQU	$D151	;
WAINDX	EQU	$D152	; �ΓG�C���f�b�N�X
WAINDX2	EQU	$D153	;�����u�����߂܂�C���f�b�N�X
WAINDX3	EQU	$D154	;�������������C���f�N�X
;---------------------------------
MAXBUF	EQU	$D155	;�}�����I�v�V�����o�b�t�A�[
MAYBUF	EQU	$D175	;�}�����I�v�V�����o�b�t�A�[
MAZBUF	EQU	$D195	;�}�����I�v�V�����o�b�t�A�[
MAMBUF	EQU	$D1B5	;�}�����I�v�V�����o�b�t�A�[
;===============================
SOUNRAM EQU	$D300	; SOUND USE !!
;=Not clear=======================
;YKFLAG	EQU	$D400	; Yoko display flag !
;- - Next goto paramater - - - -
NXRMMD	EQU	$D401
NXDJNO	EQU	$D402
NXRMNO	EQU	$D403
NXRMPX	EQU	$D404
NXRMPY	EQU	$D405
;	EQU	$D406
;	EQU	$D407
;	EQU	$D408
;	EQU	$D409
;	EQU	$D40A
;	EQU	$D40B
;	EQU	$D40C
;	EQU	$D40D
;	EQU	$D40E
;	EQU	$D40F
;	EQU	$D410
;	EQU	$D411
;	EQU	$D412
;	EQU	$D413
;	EQU	$D414
;----------------------------
ENFLCT	EQU	$D415	;�p���[�Z�b�g�p�J�E���g�I
;----------------------------
DRPSBF	EQU	$D416
;;;	+4
;----------------------
TOBIOF	EQU	$D45E	;�v���C���[��э~�薳���I
GMPTIM	EQU	$D45F	;�n��}�b�v�L�[�҂��I
EFLFLG2	EQU	$D460	;�P�C�ł��G������
SEINDX	EQU	$D461	;���܂��R�C���f�b�N�X
KEYSDON	EQU	$D462	;�J�M�� S E
WPLMODE	EQU	$D463	;PLMODE �O�I
NYOTIM	EQU	$D464	;�j�����j�������т�^�C���I
SEIRENFG2 EQU	$D465	;�y�� BGM NO.
KAMOSE	EQU	$D466	;�����߉��I
;MAWTIM2	EQU	$D467	;�}�����O�܂��Ă�TIME(���������j
MAWTIM	EQU	$D468	;�}�����O�܂��Ă�TIME�I
;MAWAIT	EQU	$D469	;�}�����O�܂��Ă�t���O�I
LIFLG	EQU	$D46A	;���C�����荞�݃t���O�I
WDNJNPT	EQU	$D46B	;�_���W�����}�b�v�|�C���g�Ђ傤���p�I
BSFLFG2	EQU	$D46C	;�{�X����t���O(��p�T�E���h�Z�b�g�j
PCTRAL	EQU	$D46D ;�v���C���[�]���A�h���X ���I
;;;;;;	EQU	$D46E
PCTRAR	EQU	$D46F ;�v���C���[�]���A�h���X �E�I
;;;;;;	EQU	$D470
;-  -  -  -  -  -  -  -  -  -
ENFLCT2	EQU	$D471	;�؂̂݃Z�b�g�p�J�E���g�I
KHIMICT	EQU	$D472	;�J���o���Ђ݂��ԃJ�E���g�I
KHIMIFG	EQU	$D473	;     "    �t���O�I
OKWARPF	EQU	$D474	;�I�J���i���[�v�t���O�I
WARPFG2	EQU	$D475	;���[�v���]�����t���O�I
FUKUROF	EQU	$D476	;�_���W�����P�N���A�[��ӂ��낤�Z�b�g�t���O�I
IKADAFG	EQU	$D477	; Ikada setted flag !
BIRDFG	EQU	$D478	; Boss bird seted flag !
TESTMD	EQU	$D479
POWRCT	EQU	$D47A	; Ken power up fail count
STARTFG	EQU	$D47B	; First start flag (sound set NAME REGI)
POWRFG	EQU	$D47C	; Ken power up flag !
;;MANBIKI	EQU	$D47D
MANBIKIF EQU	$D47E
RMINCT	EQU	$D47F
;----------------------
DJMPBF	EQU	$D480
;----------------------
DJGOFG	EQU	$D4C0
;----------------------
MSBGBF	EQU	$D500	; Mesege Before BG vram save buffer !
;----------------------
ENOJSZ	EQU	$D580	; Enemy OBJ hit size 
ENKNSZ	EQU	$D5C0	; Enemy ken cross size!
;----------------------
VRAMD	EQU	$D600
VRAMD2	EQU	$D650
;;;;;
;----------------------
;;;;GRNDPTW	EQU	$D6F7	; �_���W�����p�n��}�b�v�ʒu�Z�[�u
ONOFTM	EQU	$D6F8	; On off block chenge time !
ONBGFG	EQU	$D6F9	; Player Foot BG on flag !
ONOFBLF	EQU	$D6FA	; On off block set flag !
ONOFFG	EQU	$D6FB	; On off block (which) flag !
PAUSFG	EQU	$D6FC
LCDCB	EQU	$D6FD
BLNKFG	EQU	$D6FE
VRFLG	EQU	$D6FF
;- - - - - - - - - - - - -
BGUNDT	EQU	$D700
TOURBF	EQU	$D7C0
;=======Save data work===============
SAVERM	EQU	$D800
GRRMSV	EQU	$D800		;
DJRMSV	EQU	$D900		;
;;;;;+$100
;-- Item table --
SAVEBF	EQU	$DB00
ITEMB	EQU	$DB00
ITEMA	EQU	$DB01
ITEMF	EQU	$DB02
;;;;            $DB0B
SPITF	EQU	$DB0C
HIREF	EQU	$DB0C	;�A���O���[�̐������������Ă��邩�t���O
KBINF	EQU	$DB0D	;�閧�̖�������Ă��邩�t���O
MEGAF	EQU	$DB0E	;���A���������Ă��邩�̂�炵�׃t���O
CLC20	EQU	$DB0F	;�L�k�������W�߂����H�t���O
MAWAIT	EQU	$DB10	;�}�����O�܂��Ă�t���O�I
;LUCKY	EQU	$DB0E
;MAMOR	EQU	$DB0F
;- - - - - -
GRKEY1	EQU	$DB11	; Groud key flag !
GRKEY2	EQU	$DB12
GRKEY3	EQU	$DB13
GRKEY4	EQU	$DB14
GRKEY5	EQU	$DB15
;
DMAPF1	EQU	$DB16
KONPF1	EQU	$DB17
PENDF1	EQU	$DB18
BKEYF1	EQU	$DB19
SKEYF1	EQU	$DB1A
;
DMAPF2	EQU	$DB1B
KONPF2	EQU	$DB1C
PENDF2	EQU	$DB1D
BKEYF2	EQU	$DB1E
SKEYF2	EQU	$DB1F
;
DMAPF3	EQU	$DB20
KONPF3	EQU	$DB21
PENDF3	EQU	$DB22
BKEYF3	EQU	$DB23
SKEYF3	EQU	$DB24
;
DMAPF4	EQU	$DB25
KONPF4	EQU	$DB26
PENDF4	EQU	$DB27
BKEYF4	EQU	$DB28
SKEYF4	EQU	$DB29
;
DMAPF5	EQU	$DB2A
KONPF5	EQU	$DB2B
PENDF5	EQU	$DB2C
BKEYF5	EQU	$DB2D
SKEYF5	EQU	$DB2E
;
DMAPF6	EQU	$DB2F
KONPF6	EQU	$DB30
PENDF6	EQU	$DB31
BKEYF6	EQU	$DB32
SKEYF6	EQU	$DB33
;
DMAPF7	EQU	$DB34
KONPF7	EQU	$DB35
PENDF7	EQU	$DB36
BKEYF7	EQU	$DB37
SKEYF7	EQU	$DB38
;
DMAPF8	EQU	$DB39
KONPF8	EQU	$DB3A
PENDF8	EQU	$DB3B
BKEYF8	EQU	$DB3C
SKEYF8	EQU	$DB3D
;
DMAPF9	EQU	$DB3E
KONPF9	EQU	$DB3F
PENDF9	EQU	$DB40
BKEYF9	EQU	$DB41
SKEYF9	EQU	$DB42
;
BULLEV	EQU	$DB43
TATLEV	EQU	$DB44
YAAACT	EQU	$DB45
MANBIKI	EQU	$DB46
;;;;;;;;;;;;;;	EQU	$DB46
RODCT 	EQU	$DB47	;(���g�p�j
MAWTIM2	EQU	$DB47	;�}�����O�܂��Ă�TIME(���������j
PAPA0FG	EQU	$DB48
ONPUFG	EQU	$DB49	;�����N���o�����Ȑ�(�a�h�s�t���O)
FUESLPT	EQU	$DB4A
KINOKFG	EQU	$DB4B
TUBOCT	EQU	$DB4C
BOMBCT	EQU	$DB4D
KENLEV	EQU	$DB4E
;
NAME	EQU	$DB4F	; Player name 5 of Words
;;	EQU	$DB50
;;	EQU	$DB51
;;	EQU	$DB52
;;	EQU	$DB53
;- - - - - - - - - - - -
;;;;;;;;;;;;;;;;;;;Fury	EQU	$DB54
GRNDPTW	EQU	$DB54
;- - - - - - - - - - - -
URURIFG	EQU	$DB55	; �����炶������i�s�󋵁I
WANFLG	EQU	$DB56	; ����������ԁI
DETHCT	EQU	$DB57	; �R���`�j���[�񐔁I Max 999
;;;;	+1
URAFLG	EQU	$DB59
HARTCT	EQU	$DB5A	;�̗͒l
HARTMX	EQU	$DB5B	;�n�[�g��
KAKERCT	EQU	$DB5C	; Hart kakera cach count !
COINC1	EQU	$DB5D
COINC2	EQU	$DB5E
CONTBF	EQU	$DB5F	; Continue start pos. 5 bytes
WARPSV	EQU	$DB65	; Danjyon warp point set flag 
;; x9
;
KEYECT	EQU	$DB6D   ; Key of E colect count !
MANBICT	EQU	$DB6E	; �}���r�L �J�E���g�I
;;;CLC20	EQU	$DB6E   ; Ken power chip Max 20
;------------------------------
TAMA0PT	EQU	$DB6F	; ���󂵋ʍ��W�I
TAMA0XP	EQU	$DB70	; -
TAMA0YP	EQU	$DB71	; -
HASRCNT	EQU	$DB72	; ���󂵃J�E���g
MARINFG	EQU	$DB73	; �}�����I�v�V�����t���O�I
MARINOF	EQU	$DB74	; �}�����I�v�V�����͂Ȃ�t���O�I
TRYCYCT	EQU	$DB75	; �g���[�V�[�򔄂�J�E���g
PWMAX	EQU	$DB76	; �����Ă鐔
BOMAX	EQU	$DB77	; �o�N�_�����Ă鐔
YAMAX	EQU	$DB78	; ��Ă鐔
OBAKEFG	EQU	$DB79	; �I�o�P�I�v�V�����t���O
OBAKEFG2 EQU    $DB7A	; �I�o�P�I�v�V�����t���O 2
NIWATFG	EQU	$DB7B	; �j���g�� �I�v�V�����t���O
L9NZFG	EQU	$DB7C	; ���x���X����e�I
BUMENO	EQU	$DB7D	; �u�[�������̂Ђ����� ITEM NO.
KDMSCTS	EQU	$DB7E	;�q�����b�Z�[�W�J�E���g(�Z�[�u�p�j
WARAFG	EQU	$DB7F	; ��炵�׃A�C�e���\���Ȃ��t���O�I
;===============================================
;
;
;
;- - - For name registration use work - - -
NAMEBF	EQU	$DB80
;;;;; 5 Words x 3 men
;- - - - - - - - - - - - -
COINU1	EQU	$DB8F
COINU2	EQU	$DB90
COIND1	EQU	$DB91
COIND2	EQU	$DB92
HARTUP	EQU	$DB93	; �̗͑��₷���t���O
HARTDW	EQU	$DB94	; �̗͌��炷���t���O
;----------------------
GMMODE	EQU	$DB95
ITMODE	EQU	$DB96
BGPFG	EQU	$DB97
OBP0FG	EQU	$DB98
OBP1FG	EQU	$DB99
WNDYPS	EQU	$DB9A
;GRNDPT	EQU	$DB9B
WGRNDPT	EQU	$DB9C
WPLXPSL	EQU	$DB9D
WPLYPSL	EQU	$DB9E
WPLXPS2	EQU	$DB9F
WPLYPS2	EQU	$DBA0
;PLCMKI	EQU	$DBA1
;PLCHPT	EQU	$DBA2
ITEMPT	EQU	$DBA3	; Window item waku point
ITEMMX	EQU	$DBA4
DJFLAG	EQU	$DBA5
;;;MSGEFG	EQU	$DBA4
NMSLPT	EQU	$DBA6
NAMEON	EQU	$DBA7
NRNMPT	EQU	$DBA8
NRWDPT	EQU	$DBA9
MRWDPT	EQU	$DBAA		;;;;;;;;; BOMB
;DJSVBF	EQU	$DBAB
INCNT	EQU	$DBAC
;DNJNNO	EQU	$DBAD
DNJNPT	EQU	$DBAE
PBANK	EQU	$DBAF
DAMPFG	EQU	$DBB0
PLITXS	EQU	$DBB1
PLITYS	EQU	$DBB2
DALVFG	EQU	$DBB3		;;;;;;;;; BOMB
GMAPPT	EQU	$DBB4	; Ground map cursol point!
ENFLPT	EQU	$DBB5	; Enemy fail buffer pointer !
ENFLBF	EQU	$DBB6   ; Enemy fail buffer !
;;;; 16 of
GMOVFG	EQU	$DBC6
PLFLSH	EQU	$DBC7
NXRMPZ	EQU	$DBC8
TOUROU	EQU	$DBC9
;TOURFG	EQU	$DBCA
ANAFLG	EQU	$DBCB
;- - Danjyon item buffer -For display - - -
DMAPF	EQU	$DBCC
KONPF	EQU	$DBCD
PENDF	EQU	$DBCE
BKEYF	EQU	$DBCF
SKEYF	EQU	$DBD0
;- - - - - - 
SAVEFG	EQU	$DBD1	; Non save Continue flag !
;- - - - - -
DETHCTF	EQU	$DC00
HARTCTF	EQU	$DC06
HARTMXF	EQU	$DC09
PHOTOFG	EQU	$DC0C	; �ʐ^�t���O�i�B�����񂩁H�j
;	EQU	$DC0E
;
CLOTHFG	EQU	$DC0F	;�����N�����Ă��镞�i���o�[
;			�O�F���ʁA���̂܂�
;			�P�F�U���͂t�o
;			�Q�F�h��͂t�o
;
;--------------------------------------------------------------
;	�b�f�a�g�p
;--------------------------------------------------------------
CGWORK		EQU	$DC10		; �J���[�f�[�^�p���[�N
BGCGWK		EQU	CGWORK		; �i�a�f�j
OBCGWK		EQU	BGCGWK+$40	; �i�n�a�i�j
;		EQU	OBCGWK+$40
VRAMD_AT	EQU	$DC90		; �a�f�A�g���r���[�g�p
;			VRAMD_AT+$30
;
;--------------------------------------------------------------
BELTBF	EQU	$DCC0			; Belt convear Chr. buffer
FUKU_CHR_BUF	EQU	BELTBF		;���̃L�����N�^�[�������̂Ɏg�p
;
;-----------------------------------------------
;	�ꍇ�����J���[�c�l�`�]���r�b�g�t���O
;-----------------------------------------------
BGCOL_BITFG	EQU	%00000001
OBJCOL_BITFG	EQU	%00000010
COLDMA_BITFG	EQU	%00000011
;
;--------------------------------------------------------------
;	�b�f�a�g�p
;--------------------------------------------------------------
;		EQU	BELTBF+$40	; �����S�O�g�g���Ă�H
;;;kk;;;CGBFLG		EQU	$DD00		; �J���[�Q�[���{�[�C �t���O
CGDMAF		EQU	$DDD1		; �J���[�]���t���O
COLFLG		EQU	$DDD2		; �J���[�m�n�t���O
COLOFS		EQU	$DDD3		; �J���[�����]���I�t�Z�b�g
COLLNG		EQU	$DDD4		;       �h      ����
FADEMDFG	EQU	$DDD5		; �t�F�[�h�p���[�h�t���O
MORIFLG		EQU	$DDD6		; �����̐X �J���[�`�F���W�t���O
MORIFCT		EQU	$DDD7		;       �h       �t���[���J�E���^
DARKFLG		EQU	MORIFLG		; �Â����� �J���[�`�F���W�t���O
DARKFCT		EQU	MORIFCT		;       �h       �t���[���J�E���^
UNTATR		EQU	$DDD8		;�A�g���r���[�g�f�[�^�ǂݍ��ݗp
HAKAFG		EQU	$DDD9		;��΂����ԂɐG�ꂽ�`�F�b�N
;
;
;--------------------------------------------------------------
;	�V�_���W�����p
;--------------------------------------------------------------
DMAPFS		EQU	$DDDA		;
KONPFS		EQU	$DDDB		;
PENDFS		EQU	$DDDC		;
BKEYFS		EQU	$DDDD		;
SKEYFS		EQU	$DDDE		;
;
NEWDJRM		EQU	$DDE0
;	$DDE0����$DDFF�܂ŐV�_���W�����Ɏg�p
;
;--------------------------------------------------------------
;	�b�f�a��p
;--------------------------------------------------------------
OMHNFG		equ	0de00h		; �n�`�l�\�[�g�t���O
CallBank	EQU	0de01h		; �b�`�k�k�o���N
CallHigh	EQU	0de02h		; �b�`�k�k�n�C
CallLow		EQU	0de03h		; �b�`�k�k���[
ReturnBank	EQU	0de04h		; ���^�[���o���N
MSOFTM2		EQU	ReturnBank+1	; ���b�Z�[�W�A���h�~�^�C���i�v�����^�j
;
;-----------------------------------------------
;	�A�C�e���Z���N�g
;-----------------------------------------------
ITS_CNT		EQU	MSOFTM2+1	;�y�탌�C���{�[�J�E���^
ITS_IDX		EQU	ITS_CNT+1	;�y�탌�C���{�[�h�m�c�d�w
PUSH_CNT	EQU	ITS_IDX+1	;�o�t�r�g �r�d�k�d�b�s�J�E���^
PUSH_IDX	EQU	PUSH_CNT+1	;�o�t�r�g �r�d�k�d�b�s�h�m�c�d�w
PUSH_YCNT	EQU	PUSH_IDX+1	;�o�t�r�g �r�d�k�d�b�s �x�J�E���^
;
;--------------------------------------------------------------
;	�b�f�a��p�Ńo���N�Q���g�p
;--------------------------------------------------------------
COINBF		EQU	$D000
ENSAKIX		EQU	$D030
ENSAKIY		EQU	$D040
ENMOTOX		EQU	$D050
ENMOTOY		EQU	$D060
;			$D070
;
;--------------------------------------------------------------
;�o���N�R�̃J���[�o�b�t�@�Ƀf�[�^�����łɂ��邩�t���O
;		(��)���̂q�`�l�́A�o���N�R���g�p���Ă���
;--------------------------------------------------------------
COLBK3FG	EQU	$D000		;
;
;
;-----------------------------------------------
;	�n�テ�j�b�g�o���N�Q ���������r�b�g
;-----------------------------------------------
UNIT_TRAN_BIT	EQU	%10000000
;
;--------------------------------------------------------------
;	�|�P�b�g�v�����^�p
;--------------------------------------------------------------
sseq		EQU	ITMODE
prnbuf		EQU	$C200		; �L�����N�^�[�m���D�o�b�t�@�[
;		EQU	prnbuf+2*20*16	; �T�C�Y �Q�W�O�g
scrbuf		EQU	$D000		; �v�����^�[�]���f�[�^�o�b�t�@�[
;					; �T�C�Y �P�U�W�g
chradr		EQU	scrbuf+18*20	;
PhaseNo		EQU	chradr+3	; �p�P�b�g���MPhase����
SioWatchDogF	EQU	PhaseNo+1	; 
PrinterStatus	EQU	SioWatchDogF+1	; �v�����^�X�e�[�^�X
Concentration	EQU	PrinterStatus+2	; �Z�x
EndofTrans	EQU	Concentration+1	; �P�p�P�b�g���M�I���A�Q�����S
SioIntOccur	EQU	EndofTrans+1	; �r�h�n�����݂���
DuringTransPKT	EQU	SioIntOccur+1	; �p�P�b�g���M���t���O
PreambleSendF	EQU	DuringTransPKT+1; �v���A���u�����M�ς݃t���O
HeaderSendF	EQU	PreambleSendF+1	; �w�b�_�[���M�I���t���O
Data1SendEndF	EQU	HeaderSendF+1	; �f�[�^�^�f�[�^�p�P�b�g���M�ς�
CheckSumSendF	EQU	Data1SendEndF+1	; �`�F�b�N�T�����M�ς�
DummySendF	EQU	CheckSumSendF+1	; �_�~�[�o�C�g���M�ς�
SioCheckSum_S	EQU	DummySendF+1	; ���M�`�F�b�N�T��
BufPointer	EQU	SioCheckSum_S+2	; ���M�o�b�t�@�|�C���^
ForceEnd	EQU	BufPointer+2	;	
BusyFlag	EQU	ForceEnd+1	;
NumofFeed	EQU	BusyFlag+1	;Feed�s��
NumofSheet	EQU	NumofFeed+1	;�󎚖���
ValueofParette	EQU	NumofSheet+1	;�p���b�g�l
NmiTimer	EQU	ValueofParette+1
PrnTimer	EQU	NmiTimer+1	;WatchDogTimer
BufPointer_base	EQU	PrnTimer+1	;���M�o�b�t�@�A�h���X
BufPointer_base1	EQU	BufPointer_base+2	;���M�o�b�t�@�A�h���X�Ҕ��P
BufPointer_base2	EQU	BufPointer_base1+2	;���M�o�b�t�@�A�h���X�Ҕ��Q
TransCount	EQU	BufPointer_base2+2	;���M���f�[�^�̃J�E���^
TransCount1	EQU	TransCount+2	;���M�J�E���^�Ҕ��P
TransCount2	EQU	TransCount1+2	;���M�J�E���^�Ҕ��Q
SBbak		EQU	TransCount2+2	;for �v�����^�X�e�[�^�X
FollowingData	EQU	SBbak+1		; �󎚎w���A�f�[�^�p�P�b�g
RequestPhaseNo	EQU	FollowingData+1	; Requested Phase No
LastPhaseNo	EQU	RequestPhaseNo+1;���O�̃p�P�b�g���M
PrinterStatusLast	EQU	LastPhaseNo+1	; �v�����^�X�e�[�^�X
LineCount	EQU	PrinterStatusLast+1	;�P�g�݂Q���C���~�X���P�W���C��
PrnDataAddress	EQU	LineCount+1	;------�m�����t������
scradr		EQU	PrnDataAddress+2;
CompressF	EQU	scradr+2	;���kor�񈳏k
CompressNum	EQU	CompressF+1	;�p�P�b�g���̈��k�f�[�^�o�C�g��
CompressFtbl	EQU	CompressNum+2*9	;�p�P�b�g���̈��kor�񈳏k�t���O
CompressFReal	EQU	CompressFtbl+1*9;���kor�񈳏k
LastBlock	EQU	CompressFReal+1	;�Ō�̃u���b�N��EOD�̑��M
HeaderWork	EQU	LastBlock+1	;�w�b�_�[�ȍ~���M�o�b�t�@
PrinterErrorNo	EQU	HeaderWork+14	;�v�����^�G���[�ԍ�
sseqbak		EQU	PrinterErrorNo+1;
DelayNMI6	EQU	sseqbak+1	;
print_timer	EQU	DelayNMI6+1	; �v�����g�^�C�}�[
print_xpos	equ	print_timer+1	; �v�����g�n�`�l�@�w�|�W�V����
print_muki	equ	print_xpos+1	; �v�����g�n�`�l�@����
PHOTONO		equ	print_muki+1	; �ʐ^�m���D
YUBIPOS		EQU	PHOTONO+1	; �w�|�W�V����
YUBIXPS		EQU	YUBIPOS+1	; �w�w�|�W�V����
YUBIYPS		EQU	YUBIXPS+1	; �w�x�|�W�V����
YUBIMOD		EQU	YUBIYPS+1	; �w���[�h
YUBIFCT		EQU	YUBIMOD+1	; �w�t���[���J�E���^
MSGFIRST	EQU	YUBIFCT+1	; ���b�Z�[�W����ׂ����H
printer_ram_end	EQU	MSGFIRST+1	; 
;
;--------------------------------------------------------------
;	�����Ŏg�p(�G�̂q�`�l�G���A�Ƌ��p)
;--------------------------------------------------------------
GEKI_OAM_IDX	EQU	ENXPSL
G_PLPTN		EQU	GEKI_OAM_IDX+1
G_PLXPS		EQU	G_PLPTN+1
G_PLYPS		EQU	G_PLXPS+1
G_PLCNT		EQU	G_PLYPS+1
G_PLMOD		EQU	G_PLCNT+1
G_PLXSTP	EQU	G_PLMOD+1
G_MRNPTN	EQU	G_PLXSTP+1
G_MRNXPS	EQU	G_MRNPTN+1
G_MRNYPS	EQU	G_MRNXPS+1
G_MRNCNT	EQU	G_MRNYPS+1
G_MRNMOD	EQU	G_MRNCNT+1
G_KZMCNT	EQU	G_MRNMOD+1
G_KZMPTN	EQU	G_KZMCNT+1
G_TRNMOD	EQU	G_KZMPTN+1
G_TRNCNT	EQU	G_TRNMOD+1
G_TRNPTN	EQU	G_TRNCNT+1
G_TRNXPS	EQU	G_TRNPTN+1
G_TRNYPS	EQU	G_TRNXPS+1
G_TIMER		EQU	G_TRNYPS+1
G_PHOTOFG	EQU	G_TIMER+1
G_LCDMOD	EQU	G_PHOTOFG+1
G_LCDYPS	EQU	G_LCDMOD+1
G_LCDXPS	EQU	G_LCDYPS+1
G_LCDXSTP	EQU	G_LCDXPS+1
G_LCDPTN	EQU	G_LCDXSTP+1
G_LCDCNT	EQU	G_LCDPTN+1
G_PHTPTN	EQU	G_LCDCNT+1
G_PHTXPS	EQU	G_PHTPTN+1
G_PHTYPS	EQU	G_PHTXPS+1
G_PHTMOD	EQU	G_PHTYPS+1
G_PHTCNT	EQU	G_PHTMOD+1
G_PHTXSTP	EQU	G_PHTCNT+1
G_WANPTN	EQU	G_PHTXSTP+1
G_WANYPS	EQU	G_WANPTN+1
G_WANXPS	EQU	G_WANYPS+1
G_WANMOD	EQU	G_WANXPS+1
G_KACHINFG	EQU	G_WANMOD+1
G_WANCNT	EQU	G_KACHINFG+1
G_ZORAPTN	EQU	G_WANCNT+1
G_ZORAXPS	EQU	G_ZORAPTN+1
G_ZORAYPS	EQU	G_ZORAXPS+1
G_TR_CNT	EQU	G_ZORAYPS+1		;�]����
G_MOTO_ADR	EQU	G_TR_CNT+(2*4)		;�]�����A�h���X
G_SAKI_ADR	EQU	G_MOTO_ADR+(2*4)	;�]����A�h���X
G_MOTOBANK	EQU	G_SAKI_ADR+(2*4)	;�]�����o���N
G_ANIM_CNT	EQU	G_MOTOBANK+(1*4)	;�\���t���[���J�E���^
G_TRNC_NO	EQU	G_ANIM_CNT+(1*4)	;�e�]���L�����N�^�[�h�m�c�d�w
G_CMRPTN	EQU	G_TRNC_NO+(1*4)
G_CMRYPS	EQU	G_CMRPTN+1
G_CMRXPS	EQU	G_CMRYPS+1
G_WAXBUF	EQU	G_CMRXPS+1
G_WAYBUF	EQU	G_WAXBUF+$010
G_WANYSPD	EQU	G_WAYBUF+$010
G_WANYSDR	EQU	G_WANYSPD+1
G_WANMK		EQU	G_WANYSDR+1	;�O�F�E�@�P�F���@�Q�F����
G_TIMER1	EQU	G_WANMK+1
G_WANSTP	EQU	G_TIMER1+1
G_PLXSPD	EQU	G_WANSTP+1
G_PLXSDR	EQU	G_PLXSPD+1
G_KOUKAXPS	EQU	G_PLXSDR+1
G_KOUKAYPS	EQU	G_KOUKAXPS+1
G_PHTMK		EQU	G_KOUKAYPS+1
;		EQU	G_PHTMK+1
;
;
;--------------------------------------------------------------
;- - TEST SAVE DATA - - -
;********************************
;*	�X�y�[�X �L�����N�^	*
;********************************
;
SPACE	EQU	$7F		; �N���A �L�����N�^ �R�[�h
BETA	EQU	$7E		; �ׂ� �L�����N�^ �R�[�h
;
;********************************
;*	�X�^�b�N   		*
;********************************
;
STACK	EQU	$DFFF
;
;********************************
;*	�T�E���h   		*
;********************************
;
;SOUNDIT	EQU	$4000
;SOUNDCL	EQU	$4003
;SOUNDSB	EQU	$4006
;;
;;
;;SOUND	EQU	$7FF0
;--------------------------------
CHRDAT	EQU	$4000
PLCHDT	EQU	$4000+$1800
CHRRAM	EQU	$8000
;
;********************************
;*	�Z�[�u �G���A   	*
;********************************
SAVEDT	EQU	$A000+$100
;
SAVED1	EQU	$A000+$100		;�Z�[�u�`�F�b�N�p 1,2,3,4,5
SAVEB1	EQU	SAVED1+$05		;�������
SAVEI1	EQU	SAVEB1+$100+$200	;�g�p�A�C�e���p
SAVES1	EQU	SAVEI1+$7F+$01
;
SAVED2	EQU	SAVES1+$05+$20+$01+$02
SAVEB2	EQU	SAVED2+$05
SAVEI2	EQU	SAVEB2+$100+$200
SAVES2	EQU	SAVEI2+$7F+$01
;
SAVED3	EQU	SAVES2+$05+$20+$01+$02
SAVEB3	EQU	SAVED3+$05
SAVEI3	EQU	SAVEB3+$100+$200
SAVES3	EQU	SAVEI3+$7F+$01
;
;;;;	+7
;
;	ORG	$A000
;
;SAVE_CK		DS	$10
;SAVE_AREA	DS	$100
;SAVE_SUM	DS	$02
;- - - - - - -
DJROOM	EQU	$06	; Danjyon room no. 0xx or 1xx check no.
DJMAX	EQU	$0A	; Dundeon : Minka
DJROOM2	EQU	$1A	; Room No. 0xx
NEWDJ	EQU	$0FF	; �V�_���W�����i���o�[
;===============================================
;;;;;;;;	END
