.data
	.align 4
.align 1
.globl ___stginit_Main
___stginit_Main:
.globl ___stginit_ZCMain
___stginit_ZCMain:
.section .data
	.align 4
.align 1
_sx3_srt:
	.long	_base_SystemziIO_putChar_closure
	.long	_base_GHCziConcziSync_forkIO_closure
	.long	_base_ControlziMonad_replicateMzu_closure
	.long	_base_GHCziBase_zdfMonadIO_closure
.data
	.align 4
.align 1
_sx3_closure:
	.long	_sx3_info
	.long	0
	.long	0
	.long	0
.text
	.align 4,0x90
	.long	_sx3_srt-(_swX_info)+0
	.long	0
	.long	65552
_swX_info:
.Lcxl:
	leal -12(%ebp),%eax
	cmpl 84(%ebx),%eax
	jb .Lcxn
	movl $_stg_upd_frame_info,-8(%ebp)
	movl %esi,-4(%ebp)
	movl $_base_SystemziIO_putChar_closure,%esi
	movl $_stg_CHARLIKE_closure+529,-12(%ebp)
	addl $-12,%ebp
	jmp _stg_ap_p_fast
.Lcxn:
	jmp *-12(%ebx)
.text
	.align 4,0x90
	.long	_sx3_srt-(_sx0_info)+0
	.long	0
	.long	851984
_sx0_info:
.Lcxt:
	leal -20(%ebp),%eax
	cmpl 84(%ebx),%eax
	jb .Lcxv
	addl $16,%edi
	cmpl 92(%ebx),%edi
	ja .Lcxx
	movl $_stg_upd_frame_info,-8(%ebp)
	movl %esi,-4(%ebp)
	movl $_swX_info,-12(%edi)
	movl $_ghczmprim_GHCziTypes_Izh_con_info,-4(%edi)
	movl $1000000,0(%edi)
	movl $_base_ControlziMonad_replicateMzu_closure,%esi
	leal -12(%edi),%eax
	movl %eax,-12(%ebp)
	leal -3(%edi),%eax
	movl %eax,-16(%ebp)
	movl $_base_GHCziBase_zdfMonadIO_closure,-20(%ebp)
	addl $-20,%ebp
	jmp _stg_ap_ppp_fast
.Lcxx:
	movl $16,116(%ebx)
.Lcxv:
	jmp *-12(%ebx)
.text
	.align 4,0x90
	.long	_sx3_srt-(_swO_info)+0
	.long	0
	.long	65552
_swO_info:
.LcxL:
	leal -12(%ebp),%eax
	cmpl 84(%ebx),%eax
	jb .LcxN
	movl $_stg_upd_frame_info,-8(%ebp)
	movl %esi,-4(%ebp)
	movl $_base_SystemziIO_putChar_closure,%esi
	movl $_stg_CHARLIKE_closure+521,-12(%ebp)
	addl $-12,%ebp
	jmp _stg_ap_p_fast
.LcxN:
	jmp *-12(%ebx)
.text
	.align 4,0x90
	.long	_sx3_srt-(_swR_info)+0
	.long	0
	.long	851984
_swR_info:
.LcxT:
	leal -20(%ebp),%eax
	cmpl 84(%ebx),%eax
	jb .LcxV
	addl $16,%edi
	cmpl 92(%ebx),%edi
	ja .LcxX
	movl $_stg_upd_frame_info,-8(%ebp)
	movl %esi,-4(%ebp)
	movl $_swO_info,-12(%edi)
	movl $_ghczmprim_GHCziTypes_Izh_con_info,-4(%edi)
	movl $1000000,0(%edi)
	movl $_base_ControlziMonad_replicateMzu_closure,%esi
	leal -12(%edi),%eax
	movl %eax,-12(%ebp)
	leal -3(%edi),%eax
	movl %eax,-16(%ebp)
	movl $_base_GHCziBase_zdfMonadIO_closure,-20(%ebp)
	addl $-20,%ebp
	jmp _stg_ap_ppp_fast
.LcxX:
	movl $16,116(%ebx)
.LcxV:
	jmp *-12(%ebx)
.text
	.align 4,0x90
	.long	_sx3_srt-(_sx1_info)+0
	.long	0
	.long	983056
_sx1_info:
.Lcy5:
	leal -12(%ebp),%eax
	cmpl 84(%ebx),%eax
	jb .Lcy7
	addl $8,%edi
	cmpl 92(%ebx),%edi
	ja .Lcy9
	movl $_stg_upd_frame_info,-8(%ebp)
	movl %esi,-4(%ebp)
	movl $_swR_info,-4(%edi)
	movl $_base_GHCziConcziSync_forkIO_closure,%esi
	leal -4(%edi),%eax
	movl %eax,-12(%ebp)
	addl $-12,%ebp
	jmp _stg_ap_p_fast
.Lcy9:
	movl $8,116(%ebx)
.Lcy7:
	jmp *-12(%ebx)
.text
	.align 4,0x90
	.long	_sx3_srt-(_sx3_info)+0
	.long	0
	.long	983062
_sx3_info:
.Lcyg:
	leal -24(%ebp),%eax
	cmpl 84(%ebx),%eax
	jb .Lcyi
	addl $24,%edi
	cmpl 92(%ebx),%edi
	ja .Lcyk
	movl $_stg_CAF_BLACKHOLE_info,-20(%edi)
	movl 100(%ebx),%eax
	movl %eax,-16(%edi)
	leal -20(%edi),%eax
	pushl %eax
	pushl %esi
	pushl %ebx
	call _newCAF
	addl $12,%esp
	testl %eax,%eax
	je .Lcyl
.Lcym:
	movl $_stg_bh_upd_frame_info,-8(%ebp)
	leal -20(%edi),%eax
	movl %eax,-4(%ebp)
	movl $_sx0_info,-12(%edi)
	movl $_sx1_info,-4(%edi)
	leal -12(%edi),%eax
	movl %eax,-12(%ebp)
	leal -4(%edi),%eax
	movl %eax,-16(%ebp)
	movl $_stg_ap_pp_info,-20(%ebp)
	movl $_base_GHCziBase_zdfMonadIO_closure,-24(%ebp)
	addl $-24,%ebp
	jmp _base_GHCziBase_zgzg_info
.Lcyk:
	movl $24,116(%ebx)
.Lcyi:
	jmp *-12(%ebx)
.Lcyl:
	jmp *(%esi)
.section .data
	.align 4
.align 1
_sx4_srt:
	.long	_base_GHCziIOziHandleziFD_stdout_closure
	.long	_base_GHCziIOziHandle_hSetBuffering_closure
.data
	.align 4
.align 1
_sx4_closure:
	.long	_sx4_info
	.long	0
	.long	0
	.long	0
.text
	.align 4,0x90
	.long	_sx4_srt-(_sx4_info)+0
	.long	0
	.long	196630
_sx4_info:
.LcyH:
	leal -16(%ebp),%eax
	cmpl 84(%ebx),%eax
	jb .LcyJ
	addl $8,%edi
	cmpl 92(%ebx),%edi
	ja .LcyL
	movl $_stg_CAF_BLACKHOLE_info,-4(%edi)
	movl 100(%ebx),%eax
	movl %eax,0(%edi)
	leal -4(%edi),%eax
	pushl %eax
	pushl %esi
	pushl %ebx
	call _newCAF
	addl $12,%esp
	testl %eax,%eax
	je .LcyM
.LcyN:
	movl $_stg_bh_upd_frame_info,-8(%ebp)
	leal -4(%edi),%eax
	movl %eax,-4(%ebp)
	movl $_base_GHCziIOziHandle_hSetBuffering_closure,%esi
	movl $_base_GHCziIOziHandleziTypes_NoBuffering_closure+1,-12(%ebp)
	movl $_base_GHCziIOziHandleziFD_stdout_closure,-16(%ebp)
	addl $-16,%ebp
	jmp _stg_ap_pp_fast
.LcyL:
	movl $8,116(%ebx)
.LcyJ:
	jmp *-12(%ebx)
.LcyM:
	jmp *(%esi)
.section .data
	.align 4
.align 1
_Main_main_srt:
	.long	_base_GHCziBase_zdfMonadIO_closure
	.long	_sx3_closure
	.long	_sx4_closure
.data
	.align 4
.align 1
.globl _Main_main_closure
_Main_main_closure:
	.long	_Main_main_info
	.long	0
	.long	0
	.long	0
.text
	.align 4,0x90
	.long	_Main_main_srt-(_Main_main_info)+0
	.long	0
	.long	458774
.globl _Main_main_info
_Main_main_info:
.Lcz6:
	leal -24(%ebp),%eax
	cmpl 84(%ebx),%eax
	jb .Lcz8
	addl $8,%edi
	cmpl 92(%ebx),%edi
	ja .Lcza
	movl $_stg_CAF_BLACKHOLE_info,-4(%edi)
	movl 100(%ebx),%eax
	movl %eax,0(%edi)
	leal -4(%edi),%eax
	pushl %eax
	pushl %esi
	pushl %ebx
	call _newCAF
	addl $12,%esp
	testl %eax,%eax
	je .Lczb
.Lczc:
	movl $_stg_bh_upd_frame_info,-8(%ebp)
	leal -4(%edi),%eax
	movl %eax,-4(%ebp)
	movl $_sx3_closure,-12(%ebp)
	movl $_sx4_closure,-16(%ebp)
	movl $_stg_ap_pp_info,-20(%ebp)
	movl $_base_GHCziBase_zdfMonadIO_closure,-24(%ebp)
	addl $-24,%ebp
	jmp _base_GHCziBase_zgzg_info
.Lcza:
	movl $8,116(%ebx)
.Lcz8:
	jmp *-12(%ebx)
.Lczb:
	jmp *(%esi)
.section .data
	.align 4
.align 1
_ZCMain_main_srt:
	.long	_base_GHCziTopHandler_runMainIO_closure
	.long	_Main_main_closure
.data
	.align 4
.align 1
.globl _ZCMain_main_closure
_ZCMain_main_closure:
	.long	_ZCMain_main_info
	.long	0
	.long	0
	.long	0
.text
	.align 4,0x90
	.long	_ZCMain_main_srt-(_ZCMain_main_info)+0
	.long	0
	.long	196630
.globl _ZCMain_main_info
_ZCMain_main_info:
.Lczv:
	leal -12(%ebp),%eax
	cmpl 84(%ebx),%eax
	jb .Lczx
	addl $8,%edi
	cmpl 92(%ebx),%edi
	ja .Lczz
	movl $_stg_CAF_BLACKHOLE_info,-4(%edi)
	movl 100(%ebx),%eax
	movl %eax,0(%edi)
	leal -4(%edi),%eax
	pushl %eax
	pushl %esi
	pushl %ebx
	call _newCAF
	addl $12,%esp
	testl %eax,%eax
	je .LczA
.LczB:
	movl $_stg_bh_upd_frame_info,-8(%ebp)
	leal -4(%edi),%eax
	movl %eax,-4(%ebp)
	movl $_base_GHCziTopHandler_runMainIO_closure,%esi
	movl $_Main_main_closure,-12(%ebp)
	addl $-12,%ebp
	jmp _stg_ap_p_fast
.Lczz:
	movl $8,116(%ebx)
.Lczx:
	jmp *-12(%ebx)
.LczA:
	jmp *(%esi)
.ident "GHC 7.6.3"
