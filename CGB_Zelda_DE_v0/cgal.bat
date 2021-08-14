REM	全アセンブル　ハイパ－森田スペシャ－－－－ル　スタ－ト
isas32 -nologo -jp zrom
isas32 -nologo -jp zma
isas32 -nologo -jp zpl
ISAS32 -nologo -jp ZMSSUB_D
isas32 -nologo -jp zes
isas32 -nologo -jp zen
isas32 -nologo -jp ze2
isas32 -nologo -jp ze3
isas32 -nologo -jp ze4
isas32 -nologo -jp ze5
isas32 -nologo -jp ze6
isas32 -nologo -jp ze7
isas32 -nologo -jp ze8
ISAS32 -nologo -jp ZE9
isas32 -nologo -jp zco 
isas32 -nologo -jp zti_d
isas32 -nologo -jp zs1
isas32 -nologo -jp zex
isas32 -nologo -jp zbs
isas32 -nologo -jp zgb
isas32 -nologo -jp zbd
isas32 -nologo -jp zed
isas32 -nologo -jp zdb
ISAS32 -nologo -jp ZDB2
isas32 -nologo -jp zms_d
isas32 -nologo -jp zsd
isas32 -nologo -jp zend_D
ISAS32 -nologo -jp ZCOL
ISAS32 -nologo -jp ZCOLSUB_D
ISAS32 -nologo -jp ZPLSUB
ISAS32 -nologo -jp ZWIN
ISAS32 -nologo -jp ZJP
isas32 -nologo -jp zchr
ISAS32 -nologo -jp ZFADE
ISAS32 -nologo -jp ZBDATR
ISAS32 -nologo -jp ZATR_D
ISAS32 -nologo -jp ZATRSUB_D
ISAS32 -nologo -jp ZMAP
ISAS32 -nologo -jp ZPR
ISAS32 -nologo -jp ZPRSUB_D
ISAS32 -nologo -jp ZGEKI
ISAS32 -nologo -jp ZGKDAT
ISAS32 -nologo -jp ZGKANM
ISAS32 -nologo -jp ZGKSCR
ISAS32 -nologo -jp ZVD_D
ISAS32 -nologo -jp ZS1SUB_D
ISAS32 -nologo -jp ZEND2
ISAS32 -nologo -jp zsgb

rem	リンク スタ－ト
islk32 @ddd

REM	ISD RZ

REM パッド出力
ISXC -p 1MB DE_v0.isx