REM	全アセンブル　ハイパ－森田スペシャ－－－－ル　スタ－ト
isas32 -nologo -jp zrom
isas32 -nologo -jp zma
isas32 -nologo -jp zpl
isas32 -nologo -jp zmssub_f
isas32 -nologo -jp zco
isas32 -nologo -jp zbs
isas32 -nologo -jp zes
isas32 -nologo -jp zti_f
isas32 -nologo -jp zs1
isas32 -nologo -jp zs1sub_f
isas32 -nologo -jp zdb
isas32 -nologo -jp zdb2
isas32 -nologo -jp zex
isas32 -nologo -jp zen
isas32 -nologo -jp ze2
isas32 -nologo -jp ze3
isas32 -nologo -jp ze4
isas32 -nologo -jp ze5
isas32 -nologo -jp ze6
isas32 -nologo -jp ze7
isas32 -nologo -jp ze8
isas32 -nologo -jp zbd
isas32 -nologo -jp zed
isas32 -nologo -jp zgb
isas32 -nologo -jp zms_f
isas32 -nologo -jp zend_f
isas32 -nologo -jp zjp
isas32 -nologo -jp zpr
isas32 -nologo -jp zprsub_f
isas32 -nologo -jp zchr
isas32 -nologo -jp zsd
isas32 -nologo -jp zplsub
isas32 -nologo -jp zwin
isas32 -nologo -jp zfade
isas32 -nologo -jp zbdatr
isas32 -nologo -jp zcol
isas32 -nologo -jp zcolsub_f
isas32 -nologo -jp zatr_d
isas32 -nologo -jp zatrsub_f
isas32 -nologo -jp zmap
isas32 -nologo -jp ze9
isas32 -nologo -jp zgeki
isas32 -nologo -jp zgkdat
isas32 -nologo -jp zgkanm
isas32 -nologo -jp zgkscr
isas32 -nologo -jp zvd_f
isas32 -nologo -jp zend2
isas32 -nologo -jp zsgb

rem	リンク スタ－ト
islk32 @ddd

REM	ISD RZ

REM パッド出力
ISXC -p 1MB FR_v0.isx