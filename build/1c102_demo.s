
1c102_demo.elf:     file format elf32-loongarch
1c102_demo.elf


Disassembly of section .text:

1c000000 <_start>:
_start():
1c000000:	0015000d 	move	$r13,$r0
1c000004:	50002000 	b	32(0x20) # 1c000024 <LoopCopyDataInit>

1c000008 <CopyDataInit>:
CopyDataInit():
1c000008:	1438010f 	lu12i.w	$r15,114696(0x1c008)
1c00000c:	03b8f1ef 	ori	$r15,$r15,0xe3c
1c000010:	001035f0 	add.w	$r16,$r15,$r13
1c000014:	2880020f 	ld.w	$r15,$r16,0
1c000018:	00103590 	add.w	$r16,$r12,$r13
1c00001c:	2980020f 	st.w	$r15,$r16,0
1c000020:	028011ad 	addi.w	$r13,$r13,4(0x4)

1c000024 <LoopCopyDataInit>:
LoopCopyDataInit():
1c000024:	1500002c 	lu12i.w	$r12,-524287(0x80001)
1c000028:	0380018c 	ori	$r12,$r12,0x0
1c00002c:	1500002f 	lu12i.w	$r15,-524287(0x80001)
1c000030:	0380e1ef 	ori	$r15,$r15,0x38
1c000034:	0010358e 	add.w	$r14,$r12,$r13
1c000038:	5fffd1cf 	bne	$r14,$r15,-48(0x3ffd0) # 1c000008 <CopyDataInit>
1c00003c:	1500000c 	lu12i.w	$r12,-524288(0x80000)
1c000040:	0380018c 	ori	$r12,$r12,0x0
1c000044:	1500000d 	lu12i.w	$r13,-524288(0x80000)
1c000048:	038bc1ad 	ori	$r13,$r13,0x2f0
1c00004c:	580011ac 	beq	$r13,$r12,16(0x10) # 1c00005c <cpu_init_start>

1c000050 <LoopFillZerobss>:
LoopFillZerobss():
1c000050:	29800180 	st.w	$r0,$r12,0
1c000054:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c000058:	5ffff9ac 	bne	$r13,$r12,-8(0x3fff8) # 1c000050 <LoopFillZerobss>

1c00005c <cpu_init_start>:
cpu_init_start():
1c00005c:	1438002c 	lu12i.w	$r12,114689(0x1c001)
1c000060:	0400302c 	csrwr	$r12,0xc
1c000064:	0015000c 	move	$r12,$r0
1c000068:	0400102c 	csrwr	$r12,0x4
1c00006c:	1400002c 	lu12i.w	$r12,1(0x1)
1c000070:	03bffd8c 	ori	$r12,$r12,0xfff
1c000074:	0400118c 	csrxchg	$r12,$r12,0x4
1c000078:	15ffe3ec 	lu12i.w	$r12,-225(0xfff1f)
1c00007c:	03bffd8c 	ori	$r12,$r12,0xfff
1c000080:	0406442c 	csrwr	$r12,0x191
1c000084:	14eca06c 	lu12i.w	$r12,484611(0x76503)
1c000088:	0388418c 	ori	$r12,$r12,0x210
1c00008c:	0406402c 	csrwr	$r12,0x190
1c000090:	0380200c 	ori	$r12,$r0,0x8
1c000094:	04000180 	csrxchg	$r0,$r12,0x0
1c000098:	15000023 	lu12i.w	$r3,-524287(0x80001)
1c00009c:	03bdf063 	ori	$r3,$r3,0xf7c
1c0000a0:	54132400 	bl	4900(0x1324) # 1c0013c4 <bsp_init>
1c0000a4:	03400000 	andi	$r0,$r0,0x0
1c0000a8:	4c000020 	jirl	$r0,$r1,0

1c0000ac <cpu_wait>:
cpu_wait():
1c0000ac:	06488000 	idle	0x0
1c0000b0:	4c000020 	jirl	$r0,$r1,0
	...

1c000800 <m4_flash_4k>:
m4_flash_4k():
1c000800:	140007ec 	lu12i.w	$r12,63(0x3f)
1c000804:	03be018c 	ori	$r12,$r12,0xf80
1c000808:	157fcc0d 	lu12i.w	$r13,-262560(0xbfe60)
1c00080c:	0014b08c 	and	$r12,$r4,$r12
1c000810:	038061af 	ori	$r15,$r13,0x18
1c000814:	02804010 	addi.w	$r16,$r0,16(0x10)
1c000818:	1540000e 	lu12i.w	$r14,-393216(0xa0000)
1c00081c:	298001f0 	st.w	$r16,$r15,0
1c000820:	0015398e 	or	$r14,$r12,$r14
1c000824:	298001ae 	st.w	$r14,$r13,0
1c000828:	1480000f 	lu12i.w	$r15,262144(0x40000)
1c00082c:	14b54aae 	lu12i.w	$r14,371285(0x5aa55)
1c000830:	0396a9ce 	ori	$r14,$r14,0x5aa
1c000834:	298001af 	st.w	$r15,$r13,0
1c000838:	15c0000f 	lu12i.w	$r15,-131072(0xe0000)
1c00083c:	2980008e 	st.w	$r14,$r4,0
1c000840:	00153d8c 	or	$r12,$r12,$r15
1c000844:	298001ac 	st.w	$r12,$r13,0
1c000848:	4c000020 	jirl	$r0,$r1,0
	...

1c001000 <DEFAULT_INT_HANDLER>:
DEFAULT_INT_HANDLER():
1c001000:	0400c435 	csrwr	$r21,0x31
1c001004:	15000055 	lu12i.w	$r21,-524286(0x80002)
1c001008:	29bff2ac 	st.w	$r12,$r21,-4(0xffc)
1c00100c:	29bfe2ad 	st.w	$r13,$r21,-8(0xff8)
1c001010:	29bfd2ae 	st.w	$r14,$r21,-12(0xff4)
1c001014:	29bfc2af 	st.w	$r15,$r21,-16(0xff0)
1c001018:	29bfb2b0 	st.w	$r16,$r21,-20(0xfec)
1c00101c:	29bfa2b1 	st.w	$r17,$r21,-24(0xfe8)
1c001020:	29bf92b2 	st.w	$r18,$r21,-28(0xfe4)
1c001024:	29bf82b3 	st.w	$r19,$r21,-32(0xfe0)
1c001028:	29bf72b4 	st.w	$r20,$r21,-36(0xfdc)
1c00102c:	29bed2a4 	st.w	$r4,$r21,-76(0xfb4)
1c001030:	29bec2a5 	st.w	$r5,$r21,-80(0xfb0)
1c001034:	29beb2a6 	st.w	$r6,$r21,-84(0xfac)
1c001038:	29bea2a7 	st.w	$r7,$r21,-88(0xfa8)
1c00103c:	29be92a8 	st.w	$r8,$r21,-92(0xfa4)
1c001040:	29be82a9 	st.w	$r9,$r21,-96(0xfa0)
1c001044:	29be72aa 	st.w	$r10,$r21,-100(0xf9c)
1c001048:	29be62ab 	st.w	$r11,$r21,-104(0xf98)
1c00104c:	29be52a1 	st.w	$r1,$r21,-108(0xf94)
1c001050:	29be42a3 	st.w	$r3,$r21,-112(0xf90)
1c001054:	0400140c 	csrrd	$r12,0x5
1c001058:	036ef18d 	andi	$r13,$r12,0xbbc
1c00105c:	400065a0 	beqz	$r13,100(0x64) # 1c0010c0 <exception_core_check>

1c001060 <exception_pmu>:
exception_pmu():
1c001060:	0340118d 	andi	$r13,$r12,0x4
1c001064:	44002da0 	bnez	$r13,44(0x2c) # 1c001090 <wake_label>
1c001068:	0340218d 	andi	$r13,$r12,0x8
1c00106c:	44002da0 	bnez	$r13,44(0x2c) # 1c001098 <touch_label>
1c001070:	0340418d 	andi	$r13,$r12,0x10
1c001074:	44002da0 	bnez	$r13,44(0x2c) # 1c0010a0 <uart2_label>
1c001078:	0340818d 	andi	$r13,$r12,0x20
1c00107c:	44002da0 	bnez	$r13,44(0x2c) # 1c0010a8 <bcc_label>
1c001080:	0342018d 	andi	$r13,$r12,0x80
1c001084:	44002da0 	bnez	$r13,44(0x2c) # 1c0010b0 <exint_label>
1c001088:	0360018d 	andi	$r13,$r12,0x800
1c00108c:	44002da0 	bnez	$r13,44(0x2c) # 1c0010b8 <timer_label>

1c001090 <wake_label>:
wake_label():
1c001090:	543a1c00 	bl	14876(0x3a1c) # 1c004aac <TIMER_WAKE_INT>
1c001094:	50003c00 	b	60(0x3c) # 1c0010d0 <exception_exit>

1c001098 <touch_label>:
touch_label():
1c001098:	543a6400 	bl	14948(0x3a64) # 1c004afc <TOUCH>
1c00109c:	50003400 	b	52(0x34) # 1c0010d0 <exception_exit>

1c0010a0 <uart2_label>:
uart2_label():
1c0010a0:	543af000 	bl	15088(0x3af0) # 1c004b90 <UART2_INT>
1c0010a4:	50002c00 	b	44(0x2c) # 1c0010d0 <exception_exit>

1c0010a8 <bcc_label>:
bcc_label():
1c0010a8:	543b2400 	bl	15140(0x3b24) # 1c004bcc <BAT_FAIL>
1c0010ac:	50002400 	b	36(0x24) # 1c0010d0 <exception_exit>

1c0010b0 <exint_label>:
exint_label():
1c0010b0:	54394400 	bl	14660(0x3944) # 1c0049f4 <ext_handler>
1c0010b4:	50001c00 	b	28(0x1c) # 1c0010d0 <exception_exit>

1c0010b8 <timer_label>:
timer_label():
1c0010b8:	543cf400 	bl	15604(0x3cf4) # 1c004dac <TIMER_HANDLER>
1c0010bc:	50001400 	b	20(0x14) # 1c0010d0 <exception_exit>

1c0010c0 <exception_core_check>:
exception_core_check():
1c0010c0:	0341018d 	andi	$r13,$r12,0x40
1c0010c4:	40000da0 	beqz	$r13,12(0xc) # 1c0010d0 <exception_exit>
1c0010c8:	543bdc00 	bl	15324(0x3bdc) # 1c004ca4 <intc_handler>
1c0010cc:	50000400 	b	4(0x4) # 1c0010d0 <exception_exit>

1c0010d0 <exception_exit>:
exception_exit():
1c0010d0:	15000055 	lu12i.w	$r21,-524286(0x80002)
1c0010d4:	28bff2ac 	ld.w	$r12,$r21,-4(0xffc)
1c0010d8:	28bfe2ad 	ld.w	$r13,$r21,-8(0xff8)
1c0010dc:	28bfd2ae 	ld.w	$r14,$r21,-12(0xff4)
1c0010e0:	28bfc2af 	ld.w	$r15,$r21,-16(0xff0)
1c0010e4:	28bfb2b0 	ld.w	$r16,$r21,-20(0xfec)
1c0010e8:	28bfa2b1 	ld.w	$r17,$r21,-24(0xfe8)
1c0010ec:	28bf92b2 	ld.w	$r18,$r21,-28(0xfe4)
1c0010f0:	28bf82b3 	ld.w	$r19,$r21,-32(0xfe0)
1c0010f4:	28bf72b4 	ld.w	$r20,$r21,-36(0xfdc)
1c0010f8:	28bed2a4 	ld.w	$r4,$r21,-76(0xfb4)
1c0010fc:	28bec2a5 	ld.w	$r5,$r21,-80(0xfb0)
1c001100:	28beb2a6 	ld.w	$r6,$r21,-84(0xfac)
1c001104:	28bea2a7 	ld.w	$r7,$r21,-88(0xfa8)
1c001108:	28be92a8 	ld.w	$r8,$r21,-92(0xfa4)
1c00110c:	28be82a9 	ld.w	$r9,$r21,-96(0xfa0)
1c001110:	28be72aa 	ld.w	$r10,$r21,-100(0xf9c)
1c001114:	28be62ab 	ld.w	$r11,$r21,-104(0xf98)
1c001118:	28be52a1 	ld.w	$r1,$r21,-108(0xf94)
1c00111c:	28be42a3 	ld.w	$r3,$r21,-112(0xf90)
1c001120:	0400c415 	csrrd	$r21,0x31
1c001124:	06483800 	ertn

1c001128 <serial_out>:
serial_out():
1c001128:	157fd008 	lu12i.w	$r8,-262528(0xbfe80)
1c00112c:	2a001508 	ld.bu	$r8,$r8,5(0x5)
1c001130:	03408108 	andi	$r8,$r8,0x20
1c001134:	43fff51f 	beqz	$r8,-12(0x7ffff4) # 1c001128 <serial_out>
1c001138:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c00113c:	29000184 	st.b	$r4,$r12,0
1c001140:	4c000020 	jirl	$r0,$r1,0

1c001144 <outputaddr>:
outputaddr():
1c001144:	02bff063 	addi.w	$r3,$r3,-4(0xffc)
1c001148:	29800061 	st.w	$r1,$r3,0
1c00114c:	1cc80006 	pcaddu12i	$r6,409600(0x64000)
1c001150:	28bae0c6 	ld.w	$r6,$r6,-328(0xeb8)
1c001154:	15e0000d 	lu12i.w	$r13,-65536(0xf0000)
1c001158:	0380200e 	ori	$r14,$r0,0x8
1c00115c:	0380700f 	ori	$r15,$r0,0x1c
1c001160:	03800085 	ori	$r5,$r4,0x0
1c001164:	58002dc0 	beq	$r14,$r0,44(0x2c) # 1c001190 <outputaddr+0x4c>
1c001168:	0014b4ac 	and	$r12,$r5,$r13
1c00116c:	0017bd8c 	srl.w	$r12,$r12,$r15
1c001170:	0010198c 	add.w	$r12,$r12,$r6
1c001174:	2a000190 	ld.bu	$r16,$r12,0
1c001178:	03800204 	ori	$r4,$r16,0x0
1c00117c:	57ffafff 	bl	-84(0xfffffac) # 1c001128 <serial_out>
1c001180:	004491ad 	srli.w	$r13,$r13,0x4
1c001184:	02bff1ef 	addi.w	$r15,$r15,-4(0xffc)
1c001188:	02bffdce 	addi.w	$r14,$r14,-1(0xfff)
1c00118c:	53ffdbff 	b	-40(0xfffffd8) # 1c001164 <outputaddr+0x20>
1c001190:	03802804 	ori	$r4,$r0,0xa
1c001194:	57ff97ff 	bl	-108(0xfffff94) # 1c001128 <serial_out>
1c001198:	28800061 	ld.w	$r1,$r3,0
1c00119c:	02801063 	addi.w	$r3,$r3,4(0x4)
1c0011a0:	4c000020 	jirl	$r0,$r1,0

1c0011a4 <outputstring>:
outputstring():
1c0011a4:	00150089 	move	$r9,$r4
1c0011a8:	2a00012c 	ld.bu	$r12,$r9,0
1c0011ac:	58002580 	beq	$r12,$r0,36(0x24) # 1c0011d0 <outputstring+0x2c>
1c0011b0:	157fd008 	lu12i.w	$r8,-262528(0xbfe80)
1c0011b4:	2a001508 	ld.bu	$r8,$r8,5(0x5)
1c0011b8:	03408108 	andi	$r8,$r8,0x20
1c0011bc:	43fff51f 	beqz	$r8,-12(0x7ffff4) # 1c0011b0 <outputstring+0xc>
1c0011c0:	157fd007 	lu12i.w	$r7,-262528(0xbfe80)
1c0011c4:	290000ec 	st.b	$r12,$r7,0
1c0011c8:	02800529 	addi.w	$r9,$r9,1(0x1)
1c0011cc:	53ffdfff 	b	-36(0xfffffdc) # 1c0011a8 <outputstring+0x4>
1c0011d0:	157fd008 	lu12i.w	$r8,-262528(0xbfe80)
1c0011d4:	2a001508 	ld.bu	$r8,$r8,5(0x5)
1c0011d8:	03410108 	andi	$r8,$r8,0x40
1c0011dc:	43fff51f 	beqz	$r8,-12(0x7ffff4) # 1c0011d0 <outputstring+0x2c>
1c0011e0:	4c000020 	jirl	$r0,$r1,0

1c0011e4 <cpu_sleep>:
cpu_sleep():
1c0011e4:	0400c435 	csrwr	$r21,0x31
1c0011e8:	15000055 	lu12i.w	$r21,-524286(0x80002)
1c0011ec:	29bff2ac 	st.w	$r12,$r21,-4(0xffc)
1c0011f0:	29bfe2ad 	st.w	$r13,$r21,-8(0xff8)
1c0011f4:	29bfd2ae 	st.w	$r14,$r21,-12(0xff4)
1c0011f8:	29bfc2af 	st.w	$r15,$r21,-16(0xff0)
1c0011fc:	29bfb2b0 	st.w	$r16,$r21,-20(0xfec)
1c001200:	29bfa2b1 	st.w	$r17,$r21,-24(0xfe8)
1c001204:	29bf92b2 	st.w	$r18,$r21,-28(0xfe4)
1c001208:	29bf82b3 	st.w	$r19,$r21,-32(0xfe0)
1c00120c:	29bf72b4 	st.w	$r20,$r21,-36(0xfdc)
1c001210:	29bf62b7 	st.w	$r23,$r21,-40(0xfd8)
1c001214:	29bf52b8 	st.w	$r24,$r21,-44(0xfd4)
1c001218:	29bf42b9 	st.w	$r25,$r21,-48(0xfd0)
1c00121c:	29bf32ba 	st.w	$r26,$r21,-52(0xfcc)
1c001220:	29bf22bb 	st.w	$r27,$r21,-56(0xfc8)
1c001224:	29bf12bc 	st.w	$r28,$r21,-60(0xfc4)
1c001228:	29bf02bd 	st.w	$r29,$r21,-64(0xfc0)
1c00122c:	29bef2be 	st.w	$r30,$r21,-68(0xfbc)
1c001230:	29bee2bf 	st.w	$r31,$r21,-72(0xfb8)
1c001234:	29bed2a4 	st.w	$r4,$r21,-76(0xfb4)
1c001238:	29bec2a5 	st.w	$r5,$r21,-80(0xfb0)
1c00123c:	29beb2a6 	st.w	$r6,$r21,-84(0xfac)
1c001240:	29bea2a7 	st.w	$r7,$r21,-88(0xfa8)
1c001244:	29be92a8 	st.w	$r8,$r21,-92(0xfa4)
1c001248:	29be82a9 	st.w	$r9,$r21,-96(0xfa0)
1c00124c:	29be72aa 	st.w	$r10,$r21,-100(0xf9c)
1c001250:	29be62ab 	st.w	$r11,$r21,-104(0xf98)
1c001254:	29be52a1 	st.w	$r1,$r21,-108(0xf94)
1c001258:	29be42a3 	st.w	$r3,$r21,-112(0xf90)
1c00125c:	29be32a2 	st.w	$r2,$r21,-116(0xf8c)
1c001260:	29be22b6 	st.w	$r22,$r21,-120(0xf88)
1c001264:	028002ac 	addi.w	$r12,$r21,0
1c001268:	0400c415 	csrrd	$r21,0x31
1c00126c:	29be1195 	st.w	$r21,$r12,-124(0xf84)
1c001270:	38720000 	dbar	0x0
1c001274:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c001278:	2880f1ac 	ld.w	$r12,$r13,60(0x3c)
1c00127c:	0340058c 	andi	$r12,$r12,0x1
1c001280:	43fff99f 	beqz	$r12,-8(0x7ffff8) # 1c001278 <cpu_sleep+0x94>
1c001284:	2980f1ac 	st.w	$r12,$r13,60(0x3c)
1c001288:	06488000 	idle	0x0

1c00128c <wakeup_reset>:
wakeup_reset():
1c00128c:	1cc80004 	pcaddu12i	$r4,409600(0x64000)
1c001290:	28b65084 	ld.w	$r4,$r4,-620(0xd94)
1c001294:	57ff13ff 	bl	-240(0xfffff10) # 1c0011a4 <outputstring>
1c001298:	15000055 	lu12i.w	$r21,-524286(0x80002)
1c00129c:	28bff2ac 	ld.w	$r12,$r21,-4(0xffc)
1c0012a0:	28bfe2ad 	ld.w	$r13,$r21,-8(0xff8)
1c0012a4:	28bfd2ae 	ld.w	$r14,$r21,-12(0xff4)
1c0012a8:	28bfc2af 	ld.w	$r15,$r21,-16(0xff0)
1c0012ac:	28bfb2b0 	ld.w	$r16,$r21,-20(0xfec)
1c0012b0:	28bfa2b1 	ld.w	$r17,$r21,-24(0xfe8)
1c0012b4:	28bf92b2 	ld.w	$r18,$r21,-28(0xfe4)
1c0012b8:	28bf82b3 	ld.w	$r19,$r21,-32(0xfe0)
1c0012bc:	28bf72b4 	ld.w	$r20,$r21,-36(0xfdc)
1c0012c0:	28bf62b7 	ld.w	$r23,$r21,-40(0xfd8)
1c0012c4:	28bf52b8 	ld.w	$r24,$r21,-44(0xfd4)
1c0012c8:	28bf42b9 	ld.w	$r25,$r21,-48(0xfd0)
1c0012cc:	28bf32ba 	ld.w	$r26,$r21,-52(0xfcc)
1c0012d0:	28bf22bb 	ld.w	$r27,$r21,-56(0xfc8)
1c0012d4:	28bf12bc 	ld.w	$r28,$r21,-60(0xfc4)
1c0012d8:	28bf02bd 	ld.w	$r29,$r21,-64(0xfc0)
1c0012dc:	28bef2be 	ld.w	$r30,$r21,-68(0xfbc)
1c0012e0:	28bee2bf 	ld.w	$r31,$r21,-72(0xfb8)
1c0012e4:	28bed2a4 	ld.w	$r4,$r21,-76(0xfb4)
1c0012e8:	28bec2a5 	ld.w	$r5,$r21,-80(0xfb0)
1c0012ec:	28beb2a6 	ld.w	$r6,$r21,-84(0xfac)
1c0012f0:	28bea2a7 	ld.w	$r7,$r21,-88(0xfa8)
1c0012f4:	28be92a8 	ld.w	$r8,$r21,-92(0xfa4)
1c0012f8:	28be82a9 	ld.w	$r9,$r21,-96(0xfa0)
1c0012fc:	28be72aa 	ld.w	$r10,$r21,-100(0xf9c)
1c001300:	28be62ab 	ld.w	$r11,$r21,-104(0xf98)
1c001304:	28be52a1 	ld.w	$r1,$r21,-108(0xf94)
1c001308:	28be42a3 	ld.w	$r3,$r21,-112(0xf90)
1c00130c:	28be32a2 	ld.w	$r2,$r21,-116(0xf8c)
1c001310:	28be22b6 	ld.w	$r22,$r21,-120(0xf88)
1c001314:	28be12b5 	ld.w	$r21,$r21,-124(0xf84)
1c001318:	0400c42c 	csrwr	$r12,0x31
1c00131c:	0380100c 	ori	$r12,$r0,0x4
1c001320:	0400018c 	csrxchg	$r12,$r12,0x0
1c001324:	0400c40c 	csrrd	$r12,0x31
1c001328:	4c000020 	jirl	$r0,$r1,0

1c00132c <GPIOInit>:
GPIOInit():
1c00132c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001330:	29803061 	st.w	$r1,$r3,12(0xc)
1c001334:	29802076 	st.w	$r22,$r3,8(0x8)
1c001338:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00133c:	02800406 	addi.w	$r6,$r0,1(0x1)
1c001340:	140001ec 	lu12i.w	$r12,15(0xf)
1c001344:	03bffd85 	ori	$r5,$r12,0xfff
1c001348:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00134c:	03804184 	ori	$r4,$r12,0x10
1c001350:	54017c00 	bl	380(0x17c) # 1c0014cc <AFIO_RemapConfig>
1c001354:	02800406 	addi.w	$r6,$r0,1(0x1)
1c001358:	140001ec 	lu12i.w	$r12,15(0xf)
1c00135c:	03bffd85 	ori	$r5,$r12,0xfff
1c001360:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001364:	03805184 	ori	$r4,$r12,0x14
1c001368:	54016400 	bl	356(0x164) # 1c0014cc <AFIO_RemapConfig>
1c00136c:	02800406 	addi.w	$r6,$r0,1(0x1)
1c001370:	140001ec 	lu12i.w	$r12,15(0xf)
1c001374:	03bcfd85 	ori	$r5,$r12,0xf3f
1c001378:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00137c:	03806184 	ori	$r4,$r12,0x18
1c001380:	54014c00 	bl	332(0x14c) # 1c0014cc <AFIO_RemapConfig>
1c001384:	02800806 	addi.w	$r6,$r0,2(0x2)
1c001388:	02830005 	addi.w	$r5,$r0,192(0xc0)
1c00138c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001390:	03806184 	ori	$r4,$r12,0x18
1c001394:	54013800 	bl	312(0x138) # 1c0014cc <AFIO_RemapConfig>
1c001398:	02800406 	addi.w	$r6,$r0,1(0x1)
1c00139c:	140001ec 	lu12i.w	$r12,15(0xf)
1c0013a0:	03bffd85 	ori	$r5,$r12,0xfff
1c0013a4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0013a8:	03807184 	ori	$r4,$r12,0x1c
1c0013ac:	54012000 	bl	288(0x120) # 1c0014cc <AFIO_RemapConfig>
1c0013b0:	03400000 	andi	$r0,$r0,0x0
1c0013b4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0013b8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0013bc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0013c0:	4c000020 	jirl	$r0,$r1,0

1c0013c4 <bsp_init>:
bsp_init():
1c0013c4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0013c8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0013cc:	29806076 	st.w	$r22,$r3,24(0x18)
1c0013d0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0013d4:	541e3000 	bl	7728(0x1e30) # 1c003204 <DisableInt>
1c0013d8:	541d5800 	bl	7512(0x1d58) # 1c003130 <SystemClockInit>
1c0013dc:	57ff53ff 	bl	-176(0xfffff50) # 1c00132c <GPIOInit>
1c0013e0:	5425f800 	bl	9720(0x25f8) # 1c0039d8 <WdgInit>
1c0013e4:	02802004 	addi.w	$r4,$r0,8(0x8)
1c0013e8:	54253800 	bl	9528(0x2538) # 1c003920 <WDG_SetWatchDog>
1c0013ec:	1400038c 	lu12i.w	$r12,28(0x1c)
1c0013f0:	03880184 	ori	$r4,$r12,0x200
1c0013f4:	5416b800 	bl	5816(0x16b8) # 1c002aac <Uart0_init>
1c0013f8:	1400038c 	lu12i.w	$r12,28(0x1c)
1c0013fc:	03880184 	ori	$r4,$r12,0x200
1c001400:	54177000 	bl	6000(0x1770) # 1c002b70 <Uart1_init>
1c001404:	541ff400 	bl	8180(0x1ff4) # 1c0033f8 <ls1x_logo>
1c001408:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00140c:	0380118c 	ori	$r12,$r12,0x4
1c001410:	2880018e 	ld.w	$r14,$r12,0
1c001414:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001418:	0380118c 	ori	$r12,$r12,0x4
1c00141c:	1404000d 	lu12i.w	$r13,8192(0x2000)
1c001420:	001535cd 	or	$r13,$r14,$r13
1c001424:	2980018d 	st.w	$r13,$r12,0
1c001428:	541e0000 	bl	7680(0x1e00) # 1c003228 <EnableInt>
1c00142c:	54209400 	bl	8340(0x2094) # 1c0034c0 <open_count>
1c001430:	02801804 	addi.w	$r4,$r0,6(0x6)
1c001434:	541e5c00 	bl	7772(0x1e5c) # 1c003290 <Wake_Set>
1c001438:	54257400 	bl	9588(0x2574) # 1c0039ac <WDG_DogFeed>
1c00143c:	541f0000 	bl	7936(0x1f00) # 1c00333c <PMU_GetRstRrc>
1c001440:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001444:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001448:	44003180 	bnez	$r12,48(0x30) # 1c001478 <bsp_init+0xb4>
1c00144c:	1c0000c4 	pcaddu12i	$r4,6(0x6)
1c001450:	02a7c084 	addi.w	$r4,$r4,-1552(0x9f0)
1c001454:	54074c00 	bl	1868(0x74c) # 1c001ba0 <myprintf>
1c001458:	541f5000 	bl	8016(0x1f50) # 1c0033a8 <PMU_GetBootSpiStatus>
1c00145c:	0015008c 	move	$r12,$r4
1c001460:	40001180 	beqz	$r12,16(0x10) # 1c001470 <bsp_init+0xac>
1c001464:	1c0000c4 	pcaddu12i	$r4,6(0x6)
1c001468:	02a7a084 	addi.w	$r4,$r4,-1560(0x9e8)
1c00146c:	54073400 	bl	1844(0x734) # 1c001ba0 <myprintf>
1c001470:	544b6800 	bl	19304(0x4b68) # 1c005fd8 <main>
1c001474:	50004000 	b	64(0x40) # 1c0014b4 <bsp_init+0xf0>
1c001478:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00147c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001480:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c001498 <bsp_init+0xd4>
1c001484:	1c0000c4 	pcaddu12i	$r4,6(0x6)
1c001488:	02a75084 	addi.w	$r4,$r4,-1580(0x9d4)
1c00148c:	54071400 	bl	1812(0x714) # 1c001ba0 <myprintf>
1c001490:	544b4800 	bl	19272(0x4b48) # 1c005fd8 <main>
1c001494:	50002000 	b	32(0x20) # 1c0014b4 <bsp_init+0xf0>
1c001498:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00149c:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0014a0:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c0014b4 <bsp_init+0xf0>
1c0014a4:	1c0000c4 	pcaddu12i	$r4,6(0x6)
1c0014a8:	02a71084 	addi.w	$r4,$r4,-1596(0x9c4)
1c0014ac:	5406f400 	bl	1780(0x6f4) # 1c001ba0 <myprintf>
1c0014b0:	57fd37ff 	bl	-716(0xffffd34) # 1c0011e4 <cpu_sleep>
1c0014b4:	0015000c 	move	$r12,$r0
1c0014b8:	00150184 	move	$r4,$r12
1c0014bc:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0014c0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0014c4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0014c8:	4c000020 	jirl	$r0,$r1,0

1c0014cc <AFIO_RemapConfig>:
AFIO_RemapConfig():
1c0014cc:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0014d0:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0014d4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0014d8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0014dc:	001500ac 	move	$r12,$r5
1c0014e0:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c0014e4:	297f6acc 	st.h	$r12,$r22,-38(0xfda)
1c0014e8:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c0014ec:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0014f0:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c0014f4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0014f8:	2880018c 	ld.w	$r12,$r12,0
1c0014fc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001500:	293faec0 	st.b	$r0,$r22,-21(0xfeb)
1c001504:	50006c00 	b	108(0x6c) # 1c001570 <AFIO_RemapConfig+0xa4>
1c001508:	2a7f6acd 	ld.hu	$r13,$r22,-38(0xfda)
1c00150c:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c001510:	001831ac 	sra.w	$r12,$r13,$r12
1c001514:	0340058c 	andi	$r12,$r12,0x1
1c001518:	40004d80 	beqz	$r12,76(0x4c) # 1c001564 <AFIO_RemapConfig+0x98>
1c00151c:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c001520:	0040858c 	slli.w	$r12,$r12,0x1
1c001524:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001528:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c00152c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001530:	001731ac 	sll.w	$r12,$r13,$r12
1c001534:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c001538:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c00153c:	0014300c 	nor	$r12,$r0,$r12
1c001540:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001544:	0014b1ac 	and	$r12,$r13,$r12
1c001548:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00154c:	28bf52cd 	ld.w	$r13,$r22,-44(0xfd4)
1c001550:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001554:	001731ac 	sll.w	$r12,$r13,$r12
1c001558:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00155c:	001531ac 	or	$r12,$r13,$r12
1c001560:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001564:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c001568:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00156c:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c001570:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c001574:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c001578:	6fff918d 	bgeu	$r12,$r13,-112(0x3ff90) # 1c001508 <AFIO_RemapConfig+0x3c>
1c00157c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001580:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001584:	2980018d 	st.w	$r13,$r12,0
1c001588:	03400000 	andi	$r0,$r0,0x0
1c00158c:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c001590:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001594:	4c000020 	jirl	$r0,$r1,0

1c001598 <gpio_get_pin>:
gpio_get_pin():
1c001598:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00159c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0015a0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0015a4:	0015008c 	move	$r12,$r4
1c0015a8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0015ac:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0015b0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0015b4:	0382018c 	ori	$r12,$r12,0x80
1c0015b8:	001031ac 	add.w	$r12,$r13,$r12
1c0015bc:	29000180 	st.b	$r0,$r12,0
1c0015c0:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0015c4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0015c8:	0382018c 	ori	$r12,$r12,0x80
1c0015cc:	001031ac 	add.w	$r12,$r13,$r12
1c0015d0:	2a00018c 	ld.bu	$r12,$r12,0
1c0015d4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0015d8:	00150184 	move	$r4,$r12
1c0015dc:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0015e0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0015e4:	4c000020 	jirl	$r0,$r1,0

1c0015e8 <gpio_write_pin>:
gpio_write_pin():
1c0015e8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0015ec:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0015f0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0015f4:	0015008c 	move	$r12,$r4
1c0015f8:	001500ad 	move	$r13,$r5
1c0015fc:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001600:	001501ac 	move	$r12,$r13
1c001604:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c001608:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c00160c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001610:	5c0025ac 	bne	$r13,$r12,36(0x24) # 1c001634 <gpio_write_pin+0x4c>
1c001614:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c001618:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00161c:	0382018c 	ori	$r12,$r12,0x80
1c001620:	001031ac 	add.w	$r12,$r13,$r12
1c001624:	0015018d 	move	$r13,$r12
1c001628:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c00162c:	290001ac 	st.b	$r12,$r13,0
1c001630:	50002000 	b	32(0x20) # 1c001650 <gpio_write_pin+0x68>
1c001634:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c001638:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00163c:	0382018c 	ori	$r12,$r12,0x80
1c001640:	001031ac 	add.w	$r12,$r13,$r12
1c001644:	0015018d 	move	$r13,$r12
1c001648:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c00164c:	290001ac 	st.b	$r12,$r13,0
1c001650:	03400000 	andi	$r0,$r0,0x0
1c001654:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001658:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00165c:	4c000020 	jirl	$r0,$r1,0

1c001660 <gpio_pin_remap>:
gpio_pin_remap():
1c001660:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001664:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c001668:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00166c:	0015008c 	move	$r12,$r4
1c001670:	001500ad 	move	$r13,$r5
1c001674:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c001678:	001501ac 	move	$r12,$r13
1c00167c:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c001680:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c001684:	0044918c 	srli.w	$r12,$r12,0x4
1c001688:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00168c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001690:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c001694:	03403d8c 	andi	$r12,$r12,0xf
1c001698:	0040858c 	slli.w	$r12,$r12,0x1
1c00169c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0016a0:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c0016a4:	0280fc0c 	addi.w	$r12,$r0,63(0x3f)
1c0016a8:	6801b58d 	bltu	$r12,$r13,436(0x1b4) # 1c00185c <gpio_pin_remap+0x1fc>
1c0016ac:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0016b0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0016b4:	580089ac 	beq	$r13,$r12,136(0x88) # 1c00173c <gpio_pin_remap+0xdc>
1c0016b8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0016bc:	40002180 	beqz	$r12,32(0x20) # 1c0016dc <gpio_pin_remap+0x7c>
1c0016c0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0016c4:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0016c8:	5800d5ac 	beq	$r13,$r12,212(0xd4) # 1c00179c <gpio_pin_remap+0x13c>
1c0016cc:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0016d0:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c0016d4:	580129ac 	beq	$r13,$r12,296(0x128) # 1c0017fc <gpio_pin_remap+0x19c>
1c0016d8:	50018800 	b	392(0x188) # 1c001860 <gpio_pin_remap+0x200>
1c0016dc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0016e0:	0380418c 	ori	$r12,$r12,0x10
1c0016e4:	2880018d 	ld.w	$r13,$r12,0
1c0016e8:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c0016ec:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0016f0:	001731cc 	sll.w	$r12,$r14,$r12
1c0016f4:	0014300c 	nor	$r12,$r0,$r12
1c0016f8:	0015018e 	move	$r14,$r12
1c0016fc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001700:	0380418c 	ori	$r12,$r12,0x10
1c001704:	0014b9ad 	and	$r13,$r13,$r14
1c001708:	2980018d 	st.w	$r13,$r12,0
1c00170c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001710:	0380418c 	ori	$r12,$r12,0x10
1c001714:	2880018d 	ld.w	$r13,$r12,0
1c001718:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c00171c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001720:	001731cc 	sll.w	$r12,$r14,$r12
1c001724:	0015018e 	move	$r14,$r12
1c001728:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00172c:	0380418c 	ori	$r12,$r12,0x10
1c001730:	001539ad 	or	$r13,$r13,$r14
1c001734:	2980018d 	st.w	$r13,$r12,0
1c001738:	50012800 	b	296(0x128) # 1c001860 <gpio_pin_remap+0x200>
1c00173c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001740:	0380518c 	ori	$r12,$r12,0x14
1c001744:	2880018d 	ld.w	$r13,$r12,0
1c001748:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c00174c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001750:	001731cc 	sll.w	$r12,$r14,$r12
1c001754:	0014300c 	nor	$r12,$r0,$r12
1c001758:	0015018e 	move	$r14,$r12
1c00175c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001760:	0380518c 	ori	$r12,$r12,0x14
1c001764:	0014b9ad 	and	$r13,$r13,$r14
1c001768:	2980018d 	st.w	$r13,$r12,0
1c00176c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001770:	0380518c 	ori	$r12,$r12,0x14
1c001774:	2880018d 	ld.w	$r13,$r12,0
1c001778:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c00177c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001780:	001731cc 	sll.w	$r12,$r14,$r12
1c001784:	0015018e 	move	$r14,$r12
1c001788:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00178c:	0380518c 	ori	$r12,$r12,0x14
1c001790:	001539ad 	or	$r13,$r13,$r14
1c001794:	2980018d 	st.w	$r13,$r12,0
1c001798:	5000c800 	b	200(0xc8) # 1c001860 <gpio_pin_remap+0x200>
1c00179c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0017a0:	0380618c 	ori	$r12,$r12,0x18
1c0017a4:	2880018d 	ld.w	$r13,$r12,0
1c0017a8:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c0017ac:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0017b0:	001731cc 	sll.w	$r12,$r14,$r12
1c0017b4:	0014300c 	nor	$r12,$r0,$r12
1c0017b8:	0015018e 	move	$r14,$r12
1c0017bc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0017c0:	0380618c 	ori	$r12,$r12,0x18
1c0017c4:	0014b9ad 	and	$r13,$r13,$r14
1c0017c8:	2980018d 	st.w	$r13,$r12,0
1c0017cc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0017d0:	0380618c 	ori	$r12,$r12,0x18
1c0017d4:	2880018d 	ld.w	$r13,$r12,0
1c0017d8:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c0017dc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0017e0:	001731cc 	sll.w	$r12,$r14,$r12
1c0017e4:	0015018e 	move	$r14,$r12
1c0017e8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0017ec:	0380618c 	ori	$r12,$r12,0x18
1c0017f0:	001539ad 	or	$r13,$r13,$r14
1c0017f4:	2980018d 	st.w	$r13,$r12,0
1c0017f8:	50006800 	b	104(0x68) # 1c001860 <gpio_pin_remap+0x200>
1c0017fc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001800:	0380718c 	ori	$r12,$r12,0x1c
1c001804:	2880018d 	ld.w	$r13,$r12,0
1c001808:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c00180c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001810:	001731cc 	sll.w	$r12,$r14,$r12
1c001814:	0014300c 	nor	$r12,$r0,$r12
1c001818:	0015018e 	move	$r14,$r12
1c00181c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001820:	0380718c 	ori	$r12,$r12,0x1c
1c001824:	0014b9ad 	and	$r13,$r13,$r14
1c001828:	2980018d 	st.w	$r13,$r12,0
1c00182c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001830:	0380718c 	ori	$r12,$r12,0x1c
1c001834:	2880018d 	ld.w	$r13,$r12,0
1c001838:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c00183c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001840:	001731cc 	sll.w	$r12,$r14,$r12
1c001844:	0015018e 	move	$r14,$r12
1c001848:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00184c:	0380718c 	ori	$r12,$r12,0x1c
1c001850:	001539ad 	or	$r13,$r13,$r14
1c001854:	2980018d 	st.w	$r13,$r12,0
1c001858:	50000800 	b	8(0x8) # 1c001860 <gpio_pin_remap+0x200>
1c00185c:	03400000 	andi	$r0,$r0,0x0
1c001860:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c001864:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001868:	4c000020 	jirl	$r0,$r1,0

1c00186c <gpio_set_direction>:
gpio_set_direction():
1c00186c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001870:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c001874:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001878:	0015008c 	move	$r12,$r4
1c00187c:	001500ad 	move	$r13,$r5
1c001880:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c001884:	001501ac 	move	$r12,$r13
1c001888:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c00188c:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c001890:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001894:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c001898:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c00189c:	6800658d 	bltu	$r12,$r13,100(0x64) # 1c001900 <gpio_set_direction+0x94>
1c0018a0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0018a4:	0381018c 	ori	$r12,$r12,0x40
1c0018a8:	2880018d 	ld.w	$r13,$r12,0
1c0018ac:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c0018b0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0018b4:	001731cc 	sll.w	$r12,$r14,$r12
1c0018b8:	0014300c 	nor	$r12,$r0,$r12
1c0018bc:	0015018e 	move	$r14,$r12
1c0018c0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0018c4:	0381018c 	ori	$r12,$r12,0x40
1c0018c8:	0014b9ad 	and	$r13,$r13,$r14
1c0018cc:	2980018d 	st.w	$r13,$r12,0
1c0018d0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0018d4:	0381018c 	ori	$r12,$r12,0x40
1c0018d8:	2880018d 	ld.w	$r13,$r12,0
1c0018dc:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c0018e0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0018e4:	001731cc 	sll.w	$r12,$r14,$r12
1c0018e8:	0015018e 	move	$r14,$r12
1c0018ec:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0018f0:	0381018c 	ori	$r12,$r12,0x40
1c0018f4:	001539ad 	or	$r13,$r13,$r14
1c0018f8:	2980018d 	st.w	$r13,$r12,0
1c0018fc:	50008c00 	b	140(0x8c) # 1c001988 <gpio_set_direction+0x11c>
1c001900:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c001904:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c001908:	6c007d8d 	bgeu	$r12,$r13,124(0x7c) # 1c001984 <gpio_set_direction+0x118>
1c00190c:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c001910:	0281000c 	addi.w	$r12,$r0,64(0x40)
1c001914:	6800718d 	bltu	$r12,$r13,112(0x70) # 1c001984 <gpio_set_direction+0x118>
1c001918:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00191c:	02bf818c 	addi.w	$r12,$r12,-32(0xfe0)
1c001920:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001924:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001928:	0381418c 	ori	$r12,$r12,0x50
1c00192c:	2880018d 	ld.w	$r13,$r12,0
1c001930:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c001934:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001938:	001731cc 	sll.w	$r12,$r14,$r12
1c00193c:	0014300c 	nor	$r12,$r0,$r12
1c001940:	0015018e 	move	$r14,$r12
1c001944:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001948:	0381418c 	ori	$r12,$r12,0x50
1c00194c:	0014b9ad 	and	$r13,$r13,$r14
1c001950:	2980018d 	st.w	$r13,$r12,0
1c001954:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001958:	0381418c 	ori	$r12,$r12,0x50
1c00195c:	2880018d 	ld.w	$r13,$r12,0
1c001960:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c001964:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001968:	001731cc 	sll.w	$r12,$r14,$r12
1c00196c:	0015018e 	move	$r14,$r12
1c001970:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001974:	0381418c 	ori	$r12,$r12,0x50
1c001978:	001539ad 	or	$r13,$r13,$r14
1c00197c:	2980018d 	st.w	$r13,$r12,0
1c001980:	50000800 	b	8(0x8) # 1c001988 <gpio_set_direction+0x11c>
1c001984:	03400000 	andi	$r0,$r0,0x0
1c001988:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c00198c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001990:	4c000020 	jirl	$r0,$r1,0

1c001994 <myputchar>:
myputchar():
1c001994:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001998:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00199c:	29806076 	st.w	$r22,$r3,24(0x18)
1c0019a0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0019a4:	0015008c 	move	$r12,$r4
1c0019a8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0019ac:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0019b0:	00150185 	move	$r5,$r12
1c0019b4:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c0019b8:	540fe400 	bl	4068(0xfe4) # 1c00299c <UART_SendData>
1c0019bc:	03400000 	andi	$r0,$r0,0x0
1c0019c0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0019c4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0019c8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0019cc:	4c000020 	jirl	$r0,$r1,0

1c0019d0 <printbase>:
printbase():
1c0019d0:	02be4063 	addi.w	$r3,$r3,-112(0xf90)
1c0019d4:	2981b061 	st.w	$r1,$r3,108(0x6c)
1c0019d8:	2981a076 	st.w	$r22,$r3,104(0x68)
1c0019dc:	0281c076 	addi.w	$r22,$r3,112(0x70)
1c0019e0:	29be72c4 	st.w	$r4,$r22,-100(0xf9c)
1c0019e4:	29be62c5 	st.w	$r5,$r22,-104(0xf98)
1c0019e8:	29be52c6 	st.w	$r6,$r22,-108(0xf94)
1c0019ec:	29be42c7 	st.w	$r7,$r22,-112(0xf90)
1c0019f0:	28be42cc 	ld.w	$r12,$r22,-112(0xf90)
1c0019f4:	40002580 	beqz	$r12,36(0x24) # 1c001a18 <printbase+0x48>
1c0019f8:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c0019fc:	64001d80 	bge	$r12,$r0,28(0x1c) # 1c001a18 <printbase+0x48>
1c001a00:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c001a04:	0011300c 	sub.w	$r12,$r0,$r12
1c001a08:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001a0c:	0280b404 	addi.w	$r4,$r0,45(0x2d)
1c001a10:	57ff87ff 	bl	-124(0xfffff84) # 1c001994 <myputchar>
1c001a14:	50000c00 	b	12(0xc) # 1c001a20 <printbase+0x50>
1c001a18:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c001a1c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001a20:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c001a24:	50005000 	b	80(0x50) # 1c001a74 <printbase+0xa4>
1c001a28:	28be52cc 	ld.w	$r12,$r22,-108(0xf94)
1c001a2c:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c001a30:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c001a34:	5c000980 	bne	$r12,$r0,8(0x8) # 1c001a3c <printbase+0x6c>
1c001a38:	002a0007 	break	0x7
1c001a3c:	00005dcc 	ext.w.b	$r12,$r14
1c001a40:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001a44:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c001a48:	001035cd 	add.w	$r13,$r14,$r13
1c001a4c:	293ec1ac 	st.b	$r12,$r13,-80(0xfb0)
1c001a50:	28be52cd 	ld.w	$r13,$r22,-108(0xf94)
1c001a54:	28bf92ce 	ld.w	$r14,$r22,-28(0xfe4)
1c001a58:	002135cc 	div.wu	$r12,$r14,$r13
1c001a5c:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c001a64 <printbase+0x94>
1c001a60:	002a0007 	break	0x7
1c001a64:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001a68:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001a6c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001a70:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001a74:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001a78:	47ffb19f 	bnez	$r12,-80(0x7fffb0) # 1c001a28 <printbase+0x58>
1c001a7c:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c001a80:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001a84:	28bfb2ce 	ld.w	$r14,$r22,-20(0xfec)
1c001a88:	001231ad 	slt	$r13,$r13,$r12
1c001a8c:	0013b5ce 	masknez	$r14,$r14,$r13
1c001a90:	0013358c 	maskeqz	$r12,$r12,$r13
1c001a94:	001531cc 	or	$r12,$r14,$r12
1c001a98:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001a9c:	50007400 	b	116(0x74) # 1c001b10 <printbase+0x140>
1c001aa0:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c001aa4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001aa8:	60001d8d 	blt	$r12,$r13,28(0x1c) # 1c001ac4 <printbase+0xf4>
1c001aac:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001ab0:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c001ab4:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c001ab8:	001031ac 	add.w	$r12,$r13,$r12
1c001abc:	283ec18c 	ld.b	$r12,$r12,-80(0xfb0)
1c001ac0:	50000800 	b	8(0x8) # 1c001ac8 <printbase+0xf8>
1c001ac4:	0015000c 	move	$r12,$r0
1c001ac8:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c001acc:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c001ad0:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c001ad4:	6000198d 	blt	$r12,$r13,24(0x18) # 1c001aec <printbase+0x11c>
1c001ad8:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c001adc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001ae0:	0280c18c 	addi.w	$r12,$r12,48(0x30)
1c001ae4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001ae8:	50001400 	b	20(0x14) # 1c001afc <printbase+0x12c>
1c001aec:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c001af0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001af4:	02815d8c 	addi.w	$r12,$r12,87(0x57)
1c001af8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001afc:	00150184 	move	$r4,$r12
1c001b00:	57fe97ff 	bl	-364(0xffffe94) # 1c001994 <myputchar>
1c001b04:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001b08:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c001b0c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001b10:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001b14:	63ff8c0c 	blt	$r0,$r12,-116(0x3ff8c) # 1c001aa0 <printbase+0xd0>
1c001b18:	0015000c 	move	$r12,$r0
1c001b1c:	00150184 	move	$r4,$r12
1c001b20:	2881b061 	ld.w	$r1,$r3,108(0x6c)
1c001b24:	2881a076 	ld.w	$r22,$r3,104(0x68)
1c001b28:	0281c063 	addi.w	$r3,$r3,112(0x70)
1c001b2c:	4c000020 	jirl	$r0,$r1,0

1c001b30 <puts>:
puts():
1c001b30:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001b34:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c001b38:	2980a076 	st.w	$r22,$r3,40(0x28)
1c001b3c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001b40:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c001b44:	50003000 	b	48(0x30) # 1c001b74 <puts+0x44>
1c001b48:	283fbecd 	ld.b	$r13,$r22,-17(0xfef)
1c001b4c:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001b50:	5c000dac 	bne	$r13,$r12,12(0xc) # 1c001b5c <puts+0x2c>
1c001b54:	02803404 	addi.w	$r4,$r0,13(0xd)
1c001b58:	57fe3fff 	bl	-452(0xffffe3c) # 1c001994 <myputchar>
1c001b5c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001b60:	00150184 	move	$r4,$r12
1c001b64:	57fe33ff 	bl	-464(0xffffe30) # 1c001994 <myputchar>
1c001b68:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001b6c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001b70:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c001b74:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001b78:	2a00018c 	ld.bu	$r12,$r12,0
1c001b7c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001b80:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c001b84:	47ffc59f 	bnez	$r12,-60(0x7fffc4) # 1c001b48 <puts+0x18>
1c001b88:	0015000c 	move	$r12,$r0
1c001b8c:	00150184 	move	$r4,$r12
1c001b90:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c001b94:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c001b98:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001b9c:	4c000020 	jirl	$r0,$r1,0

1c001ba0 <myprintf>:
myprintf():
1c001ba0:	02be8063 	addi.w	$r3,$r3,-96(0xfa0)
1c001ba4:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c001ba8:	2980e076 	st.w	$r22,$r3,56(0x38)
1c001bac:	02810076 	addi.w	$r22,$r3,64(0x40)
1c001bb0:	29bf32c4 	st.w	$r4,$r22,-52(0xfcc)
1c001bb4:	298012c5 	st.w	$r5,$r22,4(0x4)
1c001bb8:	298022c6 	st.w	$r6,$r22,8(0x8)
1c001bbc:	298032c7 	st.w	$r7,$r22,12(0xc)
1c001bc0:	298042c8 	st.w	$r8,$r22,16(0x10)
1c001bc4:	298052c9 	st.w	$r9,$r22,20(0x14)
1c001bc8:	298062ca 	st.w	$r10,$r22,24(0x18)
1c001bcc:	298072cb 	st.w	$r11,$r22,28(0x1c)
1c001bd0:	028082cc 	addi.w	$r12,$r22,32(0x20)
1c001bd4:	02bf918c 	addi.w	$r12,$r12,-28(0xfe4)
1c001bd8:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c001bdc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001be0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001be4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c001be8:	50033000 	b	816(0x330) # 1c001f18 <myprintf+0x378>
1c001bec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001bf0:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001bf4:	001031ac 	add.w	$r12,$r13,$r12
1c001bf8:	2a00018c 	ld.bu	$r12,$r12,0
1c001bfc:	293f8ecc 	st.b	$r12,$r22,-29(0xfe3)
1c001c00:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c001c04:	0280940c 	addi.w	$r12,$r0,37(0x25)
1c001c08:	5c02e5ac 	bne	$r13,$r12,740(0x2e4) # 1c001eec <myprintf+0x34c>
1c001c0c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001c10:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001c14:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001c18:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001c1c:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001c20:	001031ac 	add.w	$r12,$r13,$r12
1c001c24:	2800018c 	ld.b	$r12,$r12,0
1c001c28:	02bf6d8c 	addi.w	$r12,$r12,-37(0xfdb)
1c001c2c:	02814c0d 	addi.w	$r13,$r0,83(0x53)
1c001c30:	6802adac 	bltu	$r13,$r12,684(0x2ac) # 1c001edc <myprintf+0x33c>
1c001c34:	0040898d 	slli.w	$r13,$r12,0x2
1c001c38:	1c0000ac 	pcaddu12i	$r12,5(0x5)
1c001c3c:	0288f18c 	addi.w	$r12,$r12,572(0x23c)
1c001c40:	001031ac 	add.w	$r12,$r13,$r12
1c001c44:	2880018c 	ld.w	$r12,$r12,0
1c001c48:	4c000180 	jirl	$r0,$r12,0
1c001c4c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001c50:	2880018c 	ld.w	$r12,$r12,0
1c001c54:	00150184 	move	$r4,$r12
1c001c58:	57fedbff 	bl	-296(0xffffed8) # 1c001b30 <puts>
1c001c5c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001c60:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001c64:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001c68:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001c6c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001c70:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001c74:	50029800 	b	664(0x298) # 1c001f0c <myprintf+0x36c>
1c001c78:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001c7c:	2880018c 	ld.w	$r12,$r12,0
1c001c80:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001c84:	00150184 	move	$r4,$r12
1c001c88:	57fd0fff 	bl	-756(0xffffd0c) # 1c001994 <myputchar>
1c001c8c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001c90:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001c94:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001c98:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001c9c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001ca0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001ca4:	50026800 	b	616(0x268) # 1c001f0c <myprintf+0x36c>
1c001ca8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001cac:	2880018c 	ld.w	$r12,$r12,0
1c001cb0:	00150007 	move	$r7,$r0
1c001cb4:	02802806 	addi.w	$r6,$r0,10(0xa)
1c001cb8:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001cbc:	00150184 	move	$r4,$r12
1c001cc0:	57fd13ff 	bl	-752(0xffffd10) # 1c0019d0 <printbase>
1c001cc4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001cc8:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001ccc:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001cd0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001cd4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001cd8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001cdc:	50023000 	b	560(0x230) # 1c001f0c <myprintf+0x36c>
1c001ce0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001ce4:	2880018c 	ld.w	$r12,$r12,0
1c001ce8:	02800407 	addi.w	$r7,$r0,1(0x1)
1c001cec:	02802806 	addi.w	$r6,$r0,10(0xa)
1c001cf0:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001cf4:	00150184 	move	$r4,$r12
1c001cf8:	57fcdbff 	bl	-808(0xffffcd8) # 1c0019d0 <printbase>
1c001cfc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d00:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001d04:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001d08:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001d0c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001d10:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001d14:	5001f800 	b	504(0x1f8) # 1c001f0c <myprintf+0x36c>
1c001d18:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d1c:	2880018c 	ld.w	$r12,$r12,0
1c001d20:	00150007 	move	$r7,$r0
1c001d24:	02802006 	addi.w	$r6,$r0,8(0x8)
1c001d28:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001d2c:	00150184 	move	$r4,$r12
1c001d30:	57fca3ff 	bl	-864(0xffffca0) # 1c0019d0 <printbase>
1c001d34:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d38:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001d3c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001d40:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001d44:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001d48:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001d4c:	5001c000 	b	448(0x1c0) # 1c001f0c <myprintf+0x36c>
1c001d50:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d54:	2880018c 	ld.w	$r12,$r12,0
1c001d58:	00150007 	move	$r7,$r0
1c001d5c:	02800806 	addi.w	$r6,$r0,2(0x2)
1c001d60:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001d64:	00150184 	move	$r4,$r12
1c001d68:	57fc6bff 	bl	-920(0xffffc68) # 1c0019d0 <printbase>
1c001d6c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d70:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001d74:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001d78:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001d7c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001d80:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001d84:	50018800 	b	392(0x188) # 1c001f0c <myprintf+0x36c>
1c001d88:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d8c:	2880018c 	ld.w	$r12,$r12,0
1c001d90:	00150007 	move	$r7,$r0
1c001d94:	02804006 	addi.w	$r6,$r0,16(0x10)
1c001d98:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001d9c:	00150184 	move	$r4,$r12
1c001da0:	57fc33ff 	bl	-976(0xffffc30) # 1c0019d0 <printbase>
1c001da4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001da8:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001dac:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001db0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001db4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001db8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001dbc:	50015000 	b	336(0x150) # 1c001f0c <myprintf+0x36c>
1c001dc0:	02809404 	addi.w	$r4,$r0,37(0x25)
1c001dc4:	57fbd3ff 	bl	-1072(0xffffbd0) # 1c001994 <myputchar>
1c001dc8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001dcc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001dd0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001dd4:	50013800 	b	312(0x138) # 1c001f0c <myprintf+0x36c>
1c001dd8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001ddc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001de0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001de4:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c001de8:	50003c00 	b	60(0x3c) # 1c001e24 <myprintf+0x284>
1c001dec:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c001df0:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001df4:	001c31ad 	mul.w	$r13,$r13,$r12
1c001df8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001dfc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e00:	28bf32ce 	ld.w	$r14,$r22,-52(0xfcc)
1c001e04:	001031cc 	add.w	$r12,$r14,$r12
1c001e08:	2800018c 	ld.b	$r12,$r12,0
1c001e0c:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c001e10:	001031ac 	add.w	$r12,$r13,$r12
1c001e14:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001e18:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e1c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e20:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001e24:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e28:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e2c:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001e30:	001031ac 	add.w	$r12,$r13,$r12
1c001e34:	2800018d 	ld.b	$r13,$r12,0
1c001e38:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c001e3c:	67fdd98d 	bge	$r12,$r13,-552(0x3fdd8) # 1c001c14 <myprintf+0x74>
1c001e40:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e44:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e48:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001e4c:	001031ac 	add.w	$r12,$r13,$r12
1c001e50:	2800018d 	ld.b	$r13,$r12,0
1c001e54:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c001e58:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c001dec <myprintf+0x24c>
1c001e5c:	53fdbbff 	b	-584(0xffffdb8) # 1c001c14 <myprintf+0x74>
1c001e60:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c001e64:	50003c00 	b	60(0x3c) # 1c001ea0 <myprintf+0x300>
1c001e68:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c001e6c:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001e70:	001c31ad 	mul.w	$r13,$r13,$r12
1c001e74:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e78:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e7c:	28bf32ce 	ld.w	$r14,$r22,-52(0xfcc)
1c001e80:	001031cc 	add.w	$r12,$r14,$r12
1c001e84:	2800018c 	ld.b	$r12,$r12,0
1c001e88:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c001e8c:	001031ac 	add.w	$r12,$r13,$r12
1c001e90:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001e94:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e98:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e9c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001ea0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001ea4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001ea8:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001eac:	001031ac 	add.w	$r12,$r13,$r12
1c001eb0:	2800018d 	ld.b	$r13,$r12,0
1c001eb4:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c001eb8:	67fd5d8d 	bge	$r12,$r13,-676(0x3fd5c) # 1c001c14 <myprintf+0x74>
1c001ebc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001ec0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001ec4:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001ec8:	001031ac 	add.w	$r12,$r13,$r12
1c001ecc:	2800018d 	ld.b	$r13,$r12,0
1c001ed0:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c001ed4:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c001e68 <myprintf+0x2c8>
1c001ed8:	53fd3fff 	b	-708(0xffffd3c) # 1c001c14 <myprintf+0x74>
1c001edc:	02809404 	addi.w	$r4,$r0,37(0x25)
1c001ee0:	57fab7ff 	bl	-1356(0xffffab4) # 1c001994 <myputchar>
1c001ee4:	03400000 	andi	$r0,$r0,0x0
1c001ee8:	50002400 	b	36(0x24) # 1c001f0c <myprintf+0x36c>
1c001eec:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c001ef0:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001ef4:	5c000dac 	bne	$r13,$r12,12(0xc) # 1c001f00 <myprintf+0x360>
1c001ef8:	02803404 	addi.w	$r4,$r0,13(0xd)
1c001efc:	57fa9bff 	bl	-1384(0xffffa98) # 1c001994 <myputchar>
1c001f00:	2a3f8ecc 	ld.bu	$r12,$r22,-29(0xfe3)
1c001f04:	00150184 	move	$r4,$r12
1c001f08:	57fa8fff 	bl	-1396(0xffffa8c) # 1c001994 <myputchar>
1c001f0c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001f10:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001f14:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001f18:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001f1c:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001f20:	001031ac 	add.w	$r12,$r13,$r12
1c001f24:	2800018c 	ld.b	$r12,$r12,0
1c001f28:	47fcc59f 	bnez	$r12,-828(0x7ffcc4) # 1c001bec <myprintf+0x4c>
1c001f2c:	0015000c 	move	$r12,$r0
1c001f30:	00150184 	move	$r4,$r12
1c001f34:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c001f38:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c001f3c:	02818063 	addi.w	$r3,$r3,96(0x60)
1c001f40:	4c000020 	jirl	$r0,$r1,0

1c001f44 <vsputs>:
vsputs():
1c001f44:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001f48:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c001f4c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c001f50:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001f54:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c001f58:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c001f5c:	28bf62c4 	ld.w	$r4,$r22,-40(0xfd8)
1c001f60:	5418b000 	bl	6320(0x18b0) # 1c003810 <strlen>
1c001f64:	0015008c 	move	$r12,$r4
1c001f68:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001f6c:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c001f70:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c001f74:	54184000 	bl	6208(0x1840) # 1c0037b4 <strcpy>
1c001f78:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c001f7c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001f80:	001031ac 	add.w	$r12,$r13,$r12
1c001f84:	00150184 	move	$r4,$r12
1c001f88:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c001f8c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c001f90:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001f94:	4c000020 	jirl	$r0,$r1,0

1c001f98 <vsputchar>:
vsputchar():
1c001f98:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001f9c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001fa0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001fa4:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001fa8:	001500ac 	move	$r12,$r5
1c001fac:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c001fb0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001fb4:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c001fb8:	2900018d 	st.b	$r13,$r12,0
1c001fbc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001fc0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001fc4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001fc8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001fcc:	00150184 	move	$r4,$r12
1c001fd0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001fd4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001fd8:	4c000020 	jirl	$r0,$r1,0

1c001fdc <vsprintbase>:
vsprintbase():
1c001fdc:	02be0063 	addi.w	$r3,$r3,-128(0xf80)
1c001fe0:	2981f061 	st.w	$r1,$r3,124(0x7c)
1c001fe4:	2981e076 	st.w	$r22,$r3,120(0x78)
1c001fe8:	02820076 	addi.w	$r22,$r3,128(0x80)
1c001fec:	29be72c4 	st.w	$r4,$r22,-100(0xf9c)
1c001ff0:	29be62c5 	st.w	$r5,$r22,-104(0xf98)
1c001ff4:	29be52c6 	st.w	$r6,$r22,-108(0xf94)
1c001ff8:	29be42c7 	st.w	$r7,$r22,-112(0xf90)
1c001ffc:	29be32c8 	st.w	$r8,$r22,-116(0xf8c)
1c002000:	28be32cc 	ld.w	$r12,$r22,-116(0xf8c)
1c002004:	40002d80 	beqz	$r12,44(0x2c) # 1c002030 <vsprintbase+0x54>
1c002008:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c00200c:	64002580 	bge	$r12,$r0,36(0x24) # 1c002030 <vsprintbase+0x54>
1c002010:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c002014:	0011300c 	sub.w	$r12,$r0,$r12
1c002018:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00201c:	0280b405 	addi.w	$r5,$r0,45(0x2d)
1c002020:	28be72c4 	ld.w	$r4,$r22,-100(0xf9c)
1c002024:	57ff77ff 	bl	-140(0xfffff74) # 1c001f98 <vsputchar>
1c002028:	29be72c4 	st.w	$r4,$r22,-100(0xf9c)
1c00202c:	50000c00 	b	12(0xc) # 1c002038 <vsprintbase+0x5c>
1c002030:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c002034:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002038:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00203c:	50005000 	b	80(0x50) # 1c00208c <vsprintbase+0xb0>
1c002040:	28be42cc 	ld.w	$r12,$r22,-112(0xf90)
1c002044:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c002048:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c00204c:	5c000980 	bne	$r12,$r0,8(0x8) # 1c002054 <vsprintbase+0x78>
1c002050:	002a0007 	break	0x7
1c002054:	00005dcc 	ext.w.b	$r12,$r14
1c002058:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00205c:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c002060:	001035cd 	add.w	$r13,$r14,$r13
1c002064:	293ec1ac 	st.b	$r12,$r13,-80(0xfb0)
1c002068:	28be42cd 	ld.w	$r13,$r22,-112(0xf90)
1c00206c:	28bf92ce 	ld.w	$r14,$r22,-28(0xfe4)
1c002070:	002135cc 	div.wu	$r12,$r14,$r13
1c002074:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c00207c <vsprintbase+0xa0>
1c002078:	002a0007 	break	0x7
1c00207c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002080:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002084:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002088:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00208c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002090:	47ffb19f 	bnez	$r12,-80(0x7fffb0) # 1c002040 <vsprintbase+0x64>
1c002094:	28be52cc 	ld.w	$r12,$r22,-108(0xf94)
1c002098:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00209c:	28bfb2ce 	ld.w	$r14,$r22,-20(0xfec)
1c0020a0:	001231ad 	slt	$r13,$r13,$r12
1c0020a4:	0013b5ce 	masknez	$r14,$r14,$r13
1c0020a8:	0013358c 	maskeqz	$r12,$r12,$r13
1c0020ac:	001531cc 	or	$r12,$r14,$r12
1c0020b0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0020b4:	50008400 	b	132(0x84) # 1c002138 <vsprintbase+0x15c>
1c0020b8:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0020bc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0020c0:	60001d8d 	blt	$r12,$r13,28(0x1c) # 1c0020dc <vsprintbase+0x100>
1c0020c4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0020c8:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c0020cc:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c0020d0:	001031ac 	add.w	$r12,$r13,$r12
1c0020d4:	283ec18c 	ld.b	$r12,$r12,-80(0xfb0)
1c0020d8:	50000800 	b	8(0x8) # 1c0020e0 <vsprintbase+0x104>
1c0020dc:	0015000c 	move	$r12,$r0
1c0020e0:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c0020e4:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c0020e8:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c0020ec:	60001d8d 	blt	$r12,$r13,28(0x1c) # 1c002108 <vsprintbase+0x12c>
1c0020f0:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c0020f4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0020f8:	0280c18c 	addi.w	$r12,$r12,48(0x30)
1c0020fc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002100:	00005d8c 	ext.w.b	$r12,$r12
1c002104:	50001800 	b	24(0x18) # 1c00211c <vsprintbase+0x140>
1c002108:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c00210c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002110:	02815d8c 	addi.w	$r12,$r12,87(0x57)
1c002114:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002118:	00005d8c 	ext.w.b	$r12,$r12
1c00211c:	00150185 	move	$r5,$r12
1c002120:	28be72c4 	ld.w	$r4,$r22,-100(0xf9c)
1c002124:	57fe77ff 	bl	-396(0xffffe74) # 1c001f98 <vsputchar>
1c002128:	29be72c4 	st.w	$r4,$r22,-100(0xf9c)
1c00212c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002130:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c002134:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002138:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00213c:	63ff7c0c 	blt	$r0,$r12,-132(0x3ff7c) # 1c0020b8 <vsprintbase+0xdc>
1c002140:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c002144:	00150184 	move	$r4,$r12
1c002148:	2881f061 	ld.w	$r1,$r3,124(0x7c)
1c00214c:	2881e076 	ld.w	$r22,$r3,120(0x78)
1c002150:	02820063 	addi.w	$r3,$r3,128(0x80)
1c002154:	4c000020 	jirl	$r0,$r1,0

1c002158 <vsprintf>:
vsprintf():
1c002158:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00215c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002160:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002164:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002168:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00216c:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c002170:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c002174:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002178:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00217c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002180:	50036c00 	b	876(0x36c) # 1c0024ec <vsprintf+0x394>
1c002184:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002188:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c00218c:	001031ac 	add.w	$r12,$r13,$r12
1c002190:	2a00018c 	ld.bu	$r12,$r12,0
1c002194:	293f8ecc 	st.b	$r12,$r22,-29(0xfe3)
1c002198:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c00219c:	0280940c 	addi.w	$r12,$r0,37(0x25)
1c0021a0:	5c0311ac 	bne	$r13,$r12,784(0x310) # 1c0024b0 <vsprintf+0x358>
1c0021a4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0021a8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0021ac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0021b0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0021b4:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c0021b8:	001031ac 	add.w	$r12,$r13,$r12
1c0021bc:	2800018c 	ld.b	$r12,$r12,0
1c0021c0:	02bf6d8c 	addi.w	$r12,$r12,-37(0xfdb)
1c0021c4:	02814c0d 	addi.w	$r13,$r0,83(0x53)
1c0021c8:	6802d1ac 	bltu	$r13,$r12,720(0x2d0) # 1c002498 <vsprintf+0x340>
1c0021cc:	0040898d 	slli.w	$r13,$r12,0x2
1c0021d0:	1c0000ac 	pcaddu12i	$r12,5(0x5)
1c0021d4:	02b7d18c 	addi.w	$r12,$r12,-524(0xdf4)
1c0021d8:	001031ac 	add.w	$r12,$r13,$r12
1c0021dc:	2880018c 	ld.w	$r12,$r12,0
1c0021e0:	4c000180 	jirl	$r0,$r12,0
1c0021e4:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c0021e8:	0280118d 	addi.w	$r13,$r12,4(0x4)
1c0021ec:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c0021f0:	2880018c 	ld.w	$r12,$r12,0
1c0021f4:	00150185 	move	$r5,$r12
1c0021f8:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0021fc:	57fd4bff 	bl	-696(0xffffd48) # 1c001f44 <vsputs>
1c002200:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002204:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002208:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00220c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002210:	5002d000 	b	720(0x2d0) # 1c0024e0 <vsprintf+0x388>
1c002214:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c002218:	0280118d 	addi.w	$r13,$r12,4(0x4)
1c00221c:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c002220:	2880018c 	ld.w	$r12,$r12,0
1c002224:	00005d8c 	ext.w.b	$r12,$r12
1c002228:	00150185 	move	$r5,$r12
1c00222c:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c002230:	57fd6bff 	bl	-664(0xffffd68) # 1c001f98 <vsputchar>
1c002234:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002238:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00223c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002240:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002244:	50029c00 	b	668(0x29c) # 1c0024e0 <vsprintf+0x388>
1c002248:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c00224c:	0280118d 	addi.w	$r13,$r12,4(0x4)
1c002250:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c002254:	2880018c 	ld.w	$r12,$r12,0
1c002258:	00150008 	move	$r8,$r0
1c00225c:	02802807 	addi.w	$r7,$r0,10(0xa)
1c002260:	28bfa2c6 	ld.w	$r6,$r22,-24(0xfe8)
1c002264:	00150185 	move	$r5,$r12
1c002268:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c00226c:	57fd73ff 	bl	-656(0xffffd70) # 1c001fdc <vsprintbase>
1c002270:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002274:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002278:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00227c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002280:	50026000 	b	608(0x260) # 1c0024e0 <vsprintf+0x388>
1c002284:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c002288:	0280118d 	addi.w	$r13,$r12,4(0x4)
1c00228c:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c002290:	2880018c 	ld.w	$r12,$r12,0
1c002294:	02800408 	addi.w	$r8,$r0,1(0x1)
1c002298:	02802807 	addi.w	$r7,$r0,10(0xa)
1c00229c:	28bfa2c6 	ld.w	$r6,$r22,-24(0xfe8)
1c0022a0:	00150185 	move	$r5,$r12
1c0022a4:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0022a8:	57fd37ff 	bl	-716(0xffffd34) # 1c001fdc <vsprintbase>
1c0022ac:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0022b0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0022b4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0022b8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0022bc:	50022400 	b	548(0x224) # 1c0024e0 <vsprintf+0x388>
1c0022c0:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c0022c4:	0280118d 	addi.w	$r13,$r12,4(0x4)
1c0022c8:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c0022cc:	2880018c 	ld.w	$r12,$r12,0
1c0022d0:	00150008 	move	$r8,$r0
1c0022d4:	02802007 	addi.w	$r7,$r0,8(0x8)
1c0022d8:	28bfa2c6 	ld.w	$r6,$r22,-24(0xfe8)
1c0022dc:	00150185 	move	$r5,$r12
1c0022e0:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0022e4:	57fcfbff 	bl	-776(0xffffcf8) # 1c001fdc <vsprintbase>
1c0022e8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0022ec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0022f0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0022f4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0022f8:	5001e800 	b	488(0x1e8) # 1c0024e0 <vsprintf+0x388>
1c0022fc:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c002300:	0280118d 	addi.w	$r13,$r12,4(0x4)
1c002304:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c002308:	2880018c 	ld.w	$r12,$r12,0
1c00230c:	00150008 	move	$r8,$r0
1c002310:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002314:	28bfa2c6 	ld.w	$r6,$r22,-24(0xfe8)
1c002318:	00150185 	move	$r5,$r12
1c00231c:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c002320:	57fcbfff 	bl	-836(0xffffcbc) # 1c001fdc <vsprintbase>
1c002324:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002328:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00232c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002330:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002334:	5001ac00 	b	428(0x1ac) # 1c0024e0 <vsprintf+0x388>
1c002338:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c00233c:	0280118d 	addi.w	$r13,$r12,4(0x4)
1c002340:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c002344:	2880018c 	ld.w	$r12,$r12,0
1c002348:	00150008 	move	$r8,$r0
1c00234c:	02804007 	addi.w	$r7,$r0,16(0x10)
1c002350:	28bfa2c6 	ld.w	$r6,$r22,-24(0xfe8)
1c002354:	00150185 	move	$r5,$r12
1c002358:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c00235c:	57fc83ff 	bl	-896(0xffffc80) # 1c001fdc <vsprintbase>
1c002360:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002364:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002368:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00236c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002370:	50017000 	b	368(0x170) # 1c0024e0 <vsprintf+0x388>
1c002374:	02809405 	addi.w	$r5,$r0,37(0x25)
1c002378:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c00237c:	57fc1fff 	bl	-996(0xffffc1c) # 1c001f98 <vsputchar>
1c002380:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002384:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002388:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00238c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002390:	50015000 	b	336(0x150) # 1c0024e0 <vsprintf+0x388>
1c002394:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002398:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00239c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0023a0:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0023a4:	50003c00 	b	60(0x3c) # 1c0023e0 <vsprintf+0x288>
1c0023a8:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0023ac:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0023b0:	001c31ad 	mul.w	$r13,$r13,$r12
1c0023b4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0023b8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0023bc:	28bf62ce 	ld.w	$r14,$r22,-40(0xfd8)
1c0023c0:	001031cc 	add.w	$r12,$r14,$r12
1c0023c4:	2800018c 	ld.b	$r12,$r12,0
1c0023c8:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c0023cc:	001031ac 	add.w	$r12,$r13,$r12
1c0023d0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0023d4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0023d8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0023dc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0023e0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0023e4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0023e8:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c0023ec:	001031ac 	add.w	$r12,$r13,$r12
1c0023f0:	2800018d 	ld.b	$r13,$r12,0
1c0023f4:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c0023f8:	67fdb58d 	bge	$r12,$r13,-588(0x3fdb4) # 1c0021ac <vsprintf+0x54>
1c0023fc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002400:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002404:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c002408:	001031ac 	add.w	$r12,$r13,$r12
1c00240c:	2800018d 	ld.b	$r13,$r12,0
1c002410:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c002414:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c0023a8 <vsprintf+0x250>
1c002418:	53fd97ff 	b	-620(0xffffd94) # 1c0021ac <vsprintf+0x54>
1c00241c:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002420:	50003c00 	b	60(0x3c) # 1c00245c <vsprintf+0x304>
1c002424:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c002428:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c00242c:	001c31ad 	mul.w	$r13,$r13,$r12
1c002430:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002434:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002438:	28bf62ce 	ld.w	$r14,$r22,-40(0xfd8)
1c00243c:	001031cc 	add.w	$r12,$r14,$r12
1c002440:	2800018c 	ld.b	$r12,$r12,0
1c002444:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c002448:	001031ac 	add.w	$r12,$r13,$r12
1c00244c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002450:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002454:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002458:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00245c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002460:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002464:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c002468:	001031ac 	add.w	$r12,$r13,$r12
1c00246c:	2800018d 	ld.b	$r13,$r12,0
1c002470:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c002474:	67fd398d 	bge	$r12,$r13,-712(0x3fd38) # 1c0021ac <vsprintf+0x54>
1c002478:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00247c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002480:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c002484:	001031ac 	add.w	$r12,$r13,$r12
1c002488:	2800018d 	ld.b	$r13,$r12,0
1c00248c:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c002490:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c002424 <vsprintf+0x2cc>
1c002494:	53fd1bff 	b	-744(0xffffd18) # 1c0021ac <vsprintf+0x54>
1c002498:	02809405 	addi.w	$r5,$r0,37(0x25)
1c00249c:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0024a0:	57fafbff 	bl	-1288(0xffffaf8) # 1c001f98 <vsputchar>
1c0024a4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0024a8:	03400000 	andi	$r0,$r0,0x0
1c0024ac:	50003400 	b	52(0x34) # 1c0024e0 <vsprintf+0x388>
1c0024b0:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c0024b4:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0024b8:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c0024cc <vsprintf+0x374>
1c0024bc:	02803405 	addi.w	$r5,$r0,13(0xd)
1c0024c0:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0024c4:	57fad7ff 	bl	-1324(0xffffad4) # 1c001f98 <vsputchar>
1c0024c8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0024cc:	283f8ecc 	ld.b	$r12,$r22,-29(0xfe3)
1c0024d0:	00150185 	move	$r5,$r12
1c0024d4:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0024d8:	57fac3ff 	bl	-1344(0xffffac0) # 1c001f98 <vsputchar>
1c0024dc:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0024e0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0024e4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0024e8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0024ec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0024f0:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c0024f4:	001031ac 	add.w	$r12,$r13,$r12
1c0024f8:	2800018c 	ld.b	$r12,$r12,0
1c0024fc:	47fc899f 	bnez	$r12,-888(0x7ffc88) # 1c002184 <vsprintf+0x2c>
1c002500:	00150005 	move	$r5,$r0
1c002504:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c002508:	57fa93ff 	bl	-1392(0xffffa90) # 1c001f98 <vsputchar>
1c00250c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002510:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002514:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002518:	001131ac 	sub.w	$r12,$r13,$r12
1c00251c:	00150184 	move	$r4,$r12
1c002520:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002524:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002528:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00252c:	4c000020 	jirl	$r0,$r1,0

1c002530 <sprintf>:
sprintf():
1c002530:	02bec063 	addi.w	$r3,$r3,-80(0xfb0)
1c002534:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002538:	2980a076 	st.w	$r22,$r3,40(0x28)
1c00253c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002540:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002544:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c002548:	298022c6 	st.w	$r6,$r22,8(0x8)
1c00254c:	298032c7 	st.w	$r7,$r22,12(0xc)
1c002550:	298042c8 	st.w	$r8,$r22,16(0x10)
1c002554:	298052c9 	st.w	$r9,$r22,20(0x14)
1c002558:	298062ca 	st.w	$r10,$r22,24(0x18)
1c00255c:	298072cb 	st.w	$r11,$r22,28(0x1c)
1c002560:	028082cc 	addi.w	$r12,$r22,32(0x20)
1c002564:	02bfa18c 	addi.w	$r12,$r12,-24(0xfe8)
1c002568:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00256c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002570:	00150186 	move	$r6,$r12
1c002574:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c002578:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c00257c:	57fbdfff 	bl	-1060(0xffffbdc) # 1c002158 <vsprintf>
1c002580:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002584:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002588:	00150184 	move	$r4,$r12
1c00258c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002590:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002594:	02814063 	addi.w	$r3,$r3,80(0x50)
1c002598:	4c000020 	jirl	$r0,$r1,0

1c00259c <UART_Init>:
UART_Init():
1c00259c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0025a0:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0025a4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0025a8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0025ac:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0025b0:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0025b4:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c0025b8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0025bc:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c0025c0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0025c4:	03403d8c 	andi	$r12,$r12,0xf
1c0025c8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0025cc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0025d0:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c0025d4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0025d8:	0044918c 	srli.w	$r12,$r12,0x4
1c0025dc:	293f8ecc 	st.b	$r12,$r22,-29(0xfe3)
1c0025e0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0025e4:	40000d80 	beqz	$r12,12(0xc) # 1c0025f0 <UART_Init+0x54>
1c0025e8:	2a3f8ecc 	ld.bu	$r12,$r22,-29(0xfe3)
1c0025ec:	44001980 	bnez	$r12,24(0x18) # 1c002604 <UART_Init+0x68>
1c0025f0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0025f4:	0280e00d 	addi.w	$r13,$r0,56(0x38)
1c0025f8:	2900118d 	st.b	$r13,$r12,4(0x4)
1c0025fc:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c002600:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002604:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002608:	157fd18c 	lu12i.w	$r12,-262516(0xbfe8c)
1c00260c:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c002624 <UART_Init+0x88>
1c002610:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002614:	02808c0d 	addi.w	$r13,$r0,35(0x23)
1c002618:	2900118d 	st.b	$r13,$r12,4(0x4)
1c00261c:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c002620:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002624:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002628:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c00262c:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002630:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002634:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c002638:	580011ac 	beq	$r13,$r12,16(0x10) # 1c002648 <UART_Init+0xac>
1c00263c:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002640:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c002644:	5c0061ac 	bne	$r13,$r12,96(0x60) # 1c0026a4 <UART_Init+0x108>
1c002648:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00264c:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c002650:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002654:	2880018c 	ld.w	$r12,$r12,0
1c002658:	002131ae 	div.wu	$r14,$r13,$r12
1c00265c:	5c000980 	bne	$r12,$r0,8(0x8) # 1c002664 <UART_Init+0xc8>
1c002660:	002a0007 	break	0x7
1c002664:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c002668:	002135cc 	div.wu	$r12,$r14,$r13
1c00266c:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c002674 <UART_Init+0xd8>
1c002670:	002a0007 	break	0x7
1c002674:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002678:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00267c:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c002680:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002684:	2880018e 	ld.w	$r14,$r12,0
1c002688:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00268c:	001c31ce 	mul.w	$r14,$r14,$r12
1c002690:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002694:	001c31cc 	mul.w	$r12,$r14,$r12
1c002698:	001131ac 	sub.w	$r12,$r13,$r12
1c00269c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0026a0:	50005400 	b	84(0x54) # 1c0026f4 <UART_Init+0x158>
1c0026a4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0026a8:	2880018c 	ld.w	$r12,$r12,0
1c0026ac:	1400010d 	lu12i.w	$r13,8(0x8)
1c0026b0:	002131ae 	div.wu	$r14,$r13,$r12
1c0026b4:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0026bc <UART_Init+0x120>
1c0026b8:	002a0007 	break	0x7
1c0026bc:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0026c0:	002135cc 	div.wu	$r12,$r14,$r13
1c0026c4:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c0026cc <UART_Init+0x130>
1c0026c8:	002a0007 	break	0x7
1c0026cc:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0026d0:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0026d4:	2880018d 	ld.w	$r13,$r12,0
1c0026d8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0026dc:	001c31ad 	mul.w	$r13,$r13,$r12
1c0026e0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0026e4:	001c31ac 	mul.w	$r12,$r13,$r12
1c0026e8:	1400010d 	lu12i.w	$r13,8(0x8)
1c0026ec:	001131ac 	sub.w	$r12,$r13,$r12
1c0026f0:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0026f4:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c0026f8:	0283fc0c 	addi.w	$r12,$r0,255(0xff)
1c0026fc:	001c31ad 	mul.w	$r13,$r13,$r12
1c002700:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002704:	2880018c 	ld.w	$r12,$r12,0
1c002708:	002131ae 	div.wu	$r14,$r13,$r12
1c00270c:	5c000980 	bne	$r12,$r0,8(0x8) # 1c002714 <UART_Init+0x178>
1c002710:	002a0007 	break	0x7
1c002714:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c002718:	002135cc 	div.wu	$r12,$r14,$r13
1c00271c:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c002724 <UART_Init+0x188>
1c002720:	002a0007 	break	0x7
1c002724:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002728:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00272c:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002730:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002734:	02be000c 	addi.w	$r12,$r0,-128(0xf80)
1c002738:	001531ac 	or	$r12,$r13,$r12
1c00273c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002740:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002744:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002748:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00274c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002750:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002754:	2900018d 	st.b	$r13,$r12,0
1c002758:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00275c:	0044a18c 	srli.w	$r12,$r12,0x8
1c002760:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002764:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002768:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00276c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002770:	2900058d 	st.b	$r13,$r12,1(0x1)
1c002774:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002778:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00277c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002780:	2900098d 	st.b	$r13,$r12,2(0x2)
1c002784:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002788:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c00278c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002790:	0341fd8c 	andi	$r12,$r12,0x7f
1c002794:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002798:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00279c:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c0027a0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0027a4:	29000580 	st.b	$r0,$r12,1(0x1)
1c0027a8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0027ac:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c0027b0:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0027b4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0027b8:	2a00298c 	ld.bu	$r12,$r12,10(0xa)
1c0027bc:	001531ac 	or	$r12,$r13,$r12
1c0027c0:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0027c4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0027c8:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c0027cc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0027d0:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c0027d4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0027d8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0027dc:	2a00358c 	ld.bu	$r12,$r12,13(0xd)
1c0027e0:	001531ac 	or	$r12,$r13,$r12
1c0027e4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0027e8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0027ec:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c0027f0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0027f4:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c0027f8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0027fc:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002800:	2a00398c 	ld.bu	$r12,$r12,14(0xe)
1c002804:	001531ac 	or	$r12,$r13,$r12
1c002808:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00280c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002810:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002814:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002818:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c00281c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002820:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002824:	2a002d8c 	ld.bu	$r12,$r12,11(0xb)
1c002828:	001531ac 	or	$r12,$r13,$r12
1c00282c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002830:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002834:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002838:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00283c:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002840:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002844:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002848:	2a003d8c 	ld.bu	$r12,$r12,15(0xf)
1c00284c:	001531ac 	or	$r12,$r13,$r12
1c002850:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002854:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002858:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c00285c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002860:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002864:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002868:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00286c:	2a00318c 	ld.bu	$r12,$r12,12(0xc)
1c002870:	001531ac 	or	$r12,$r13,$r12
1c002874:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002878:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00287c:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002880:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002884:	2a00018c 	ld.bu	$r12,$r12,0
1c002888:	03400000 	andi	$r0,$r0,0x0
1c00288c:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c002890:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002894:	4c000020 	jirl	$r0,$r1,0

1c002898 <UART_StructInit>:
UART_StructInit():
1c002898:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00289c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0028a0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0028a4:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0028a8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028ac:	1400038d 	lu12i.w	$r13,28(0x1c)
1c0028b0:	038801ad 	ori	$r13,$r13,0x200
1c0028b4:	2980018d 	st.w	$r13,$r12,0
1c0028b8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028bc:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c0028c0:	038801ad 	ori	$r13,$r13,0x200
1c0028c4:	2980118d 	st.w	$r13,$r12,4(0x4)
1c0028c8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028cc:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c0028d0:	2900298d 	st.b	$r13,$r12,10(0xa)
1c0028d4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028d8:	29002d80 	st.b	$r0,$r12,11(0xb)
1c0028dc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028e0:	29003580 	st.b	$r0,$r12,13(0xd)
1c0028e4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028e8:	29003180 	st.b	$r0,$r12,12(0xc)
1c0028ec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028f0:	29003d80 	st.b	$r0,$r12,15(0xf)
1c0028f4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028f8:	29003980 	st.b	$r0,$r12,14(0xe)
1c0028fc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002900:	29402180 	st.h	$r0,$r12,8(0x8)
1c002904:	03400000 	andi	$r0,$r0,0x0
1c002908:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c00290c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002910:	4c000020 	jirl	$r0,$r1,0

1c002914 <UART_ITConfig>:
UART_ITConfig():
1c002914:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002918:	29807076 	st.w	$r22,$r3,28(0x1c)
1c00291c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002920:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002924:	001500ac 	move	$r12,$r5
1c002928:	29bf92c6 	st.w	$r6,$r22,-28(0xfe4)
1c00292c:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c002930:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002934:	40002980 	beqz	$r12,40(0x28) # 1c00295c <UART_ITConfig+0x48>
1c002938:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00293c:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c002940:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002944:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c002948:	001531ac 	or	$r12,$r13,$r12
1c00294c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002950:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002954:	2900058d 	st.b	$r13,$r12,1(0x1)
1c002958:	50003400 	b	52(0x34) # 1c00298c <UART_ITConfig+0x78>
1c00295c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002960:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c002964:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002968:	00005d8d 	ext.w.b	$r13,$r12
1c00296c:	283faecc 	ld.b	$r12,$r22,-21(0xfeb)
1c002970:	0014300c 	nor	$r12,$r0,$r12
1c002974:	00005d8c 	ext.w.b	$r12,$r12
1c002978:	0014b1ac 	and	$r12,$r13,$r12
1c00297c:	00005d8c 	ext.w.b	$r12,$r12
1c002980:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002984:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002988:	2900058d 	st.b	$r13,$r12,1(0x1)
1c00298c:	03400000 	andi	$r0,$r0,0x0
1c002990:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002994:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002998:	4c000020 	jirl	$r0,$r1,0

1c00299c <UART_SendData>:
UART_SendData():
1c00299c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0029a0:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0029a4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0029a8:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0029ac:	001500ac 	move	$r12,$r5
1c0029b0:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c0029b4:	03400000 	andi	$r0,$r0,0x0
1c0029b8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0029bc:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c0029c0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0029c4:	0340818c 	andi	$r12,$r12,0x20
1c0029c8:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c0029b8 <UART_SendData+0x1c>
1c0029cc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0029d0:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c0029d4:	2900018d 	st.b	$r13,$r12,0
1c0029d8:	03400000 	andi	$r0,$r0,0x0
1c0029dc:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0029e0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0029e4:	4c000020 	jirl	$r0,$r1,0

1c0029e8 <UART_SendDataALL>:
UART_SendDataALL():
1c0029e8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0029ec:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0029f0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0029f4:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0029f8:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c0029fc:	001500cc 	move	$r12,$r6
1c002a00:	297f9acc 	st.h	$r12,$r22,-26(0xfe6)
1c002a04:	50004400 	b	68(0x44) # 1c002a48 <UART_SendDataALL+0x60>
1c002a08:	03400000 	andi	$r0,$r0,0x0
1c002a0c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002a10:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c002a14:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002a18:	0340818c 	andi	$r12,$r12,0x20
1c002a1c:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c002a0c <UART_SendDataALL+0x24>
1c002a20:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002a24:	2a00018d 	ld.bu	$r13,$r12,0
1c002a28:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002a2c:	2900018d 	st.b	$r13,$r12,0
1c002a30:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002a34:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002a38:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002a3c:	2a7f9acc 	ld.hu	$r12,$r22,-26(0xfe6)
1c002a40:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c002a44:	297f9acc 	st.h	$r12,$r22,-26(0xfe6)
1c002a48:	2a7f9acc 	ld.hu	$r12,$r22,-26(0xfe6)
1c002a4c:	47ffbd9f 	bnez	$r12,-68(0x7fffbc) # 1c002a08 <UART_SendDataALL+0x20>
1c002a50:	03400000 	andi	$r0,$r0,0x0
1c002a54:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002a58:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002a5c:	4c000020 	jirl	$r0,$r1,0

1c002a60 <UART_ReceiveData>:
UART_ReceiveData():
1c002a60:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002a64:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c002a68:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002a6c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002a70:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c002a74:	03400000 	andi	$r0,$r0,0x0
1c002a78:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002a7c:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c002a80:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002a84:	0340058c 	andi	$r12,$r12,0x1
1c002a88:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c002a78 <UART_ReceiveData+0x18>
1c002a8c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002a90:	2a00018c 	ld.bu	$r12,$r12,0
1c002a94:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002a98:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002a9c:	00150184 	move	$r4,$r12
1c002aa0:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c002aa4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002aa8:	4c000020 	jirl	$r0,$r1,0

1c002aac <Uart0_init>:
Uart0_init():
1c002aac:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002ab0:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002ab4:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002ab8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002abc:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002ac0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002ac4:	02801804 	addi.w	$r4,$r0,6(0x6)
1c002ac8:	57eb9bff 	bl	-5224(0xfffeb98) # 1c001660 <gpio_pin_remap>
1c002acc:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002ad0:	02801c04 	addi.w	$r4,$r0,7(0x7)
1c002ad4:	57eb8fff 	bl	-5236(0xfffeb8c) # 1c001660 <gpio_pin_remap>
1c002ad8:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c002adc:	00150184 	move	$r4,$r12
1c002ae0:	57fdbbff 	bl	-584(0xffffdb8) # 1c002898 <UART_StructInit>
1c002ae4:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002ae8:	2894a18c 	ld.w	$r12,$r12,1320(0x528)
1c002aec:	2880018c 	ld.w	$r12,$r12,0
1c002af0:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002af4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002af8:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c002afc:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c002b00:	00150185 	move	$r5,$r12
1c002b04:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c002b08:	57fa97ff 	bl	-1388(0xffffa94) # 1c00259c <UART_Init>
1c002b0c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002b10:	0380098c 	ori	$r12,$r12,0x2
1c002b14:	2a00018c 	ld.bu	$r12,$r12,0
1c002b18:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002b1c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002b20:	0380098c 	ori	$r12,$r12,0x2
1c002b24:	038021ad 	ori	$r13,$r13,0x8
1c002b28:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c002b2c:	2900018d 	st.b	$r13,$r12,0
1c002b30:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002b34:	2a00018c 	ld.bu	$r12,$r12,0
1c002b38:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002b3c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002b40:	038021ad 	ori	$r13,$r13,0x8
1c002b44:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c002b48:	2900018d 	st.b	$r13,$r12,0
1c002b4c:	02800406 	addi.w	$r6,$r0,1(0x1)
1c002b50:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002b54:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c002b58:	57fdbfff 	bl	-580(0xffffdbc) # 1c002914 <UART_ITConfig>
1c002b5c:	03400000 	andi	$r0,$r0,0x0
1c002b60:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002b64:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002b68:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002b6c:	4c000020 	jirl	$r0,$r1,0

1c002b70 <Uart1_init>:
Uart1_init():
1c002b70:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002b74:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002b78:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002b7c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002b80:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002b84:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002b88:	02802004 	addi.w	$r4,$r0,8(0x8)
1c002b8c:	57ead7ff 	bl	-5420(0xfffead4) # 1c001660 <gpio_pin_remap>
1c002b90:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002b94:	02802404 	addi.w	$r4,$r0,9(0x9)
1c002b98:	57eacbff 	bl	-5432(0xfffeac8) # 1c001660 <gpio_pin_remap>
1c002b9c:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c002ba0:	00150184 	move	$r4,$r12
1c002ba4:	57fcf7ff 	bl	-780(0xffffcf4) # 1c002898 <UART_StructInit>
1c002ba8:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002bac:	2891918c 	ld.w	$r12,$r12,1124(0x464)
1c002bb0:	2880018c 	ld.w	$r12,$r12,0
1c002bb4:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002bb8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002bbc:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c002bc0:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c002bc4:	00150185 	move	$r5,$r12
1c002bc8:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c002bcc:	57f9d3ff 	bl	-1584(0xffff9d0) # 1c00259c <UART_Init>
1c002bd0:	00150006 	move	$r6,$r0
1c002bd4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002bd8:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c002bdc:	57fd3bff 	bl	-712(0xffffd38) # 1c002914 <UART_ITConfig>
1c002be0:	03400000 	andi	$r0,$r0,0x0
1c002be4:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002be8:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002bec:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002bf0:	4c000020 	jirl	$r0,$r1,0

1c002bf4 <CLOCK_WaitForHSEStartUp>:
CLOCK_WaitForHSEStartUp():
1c002bf4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002bf8:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002bfc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002c00:	1400006c 	lu12i.w	$r12,3(0x3)
1c002c04:	03ba018c 	ori	$r12,$r12,0xe80
1c002c08:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002c0c:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002c10:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c14:	2880018d 	ld.w	$r13,$r12,0
1c002c18:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c1c:	038101ad 	ori	$r13,$r13,0x40
1c002c20:	2980018d 	st.w	$r13,$r12,0
1c002c24:	03400000 	andi	$r0,$r0,0x0
1c002c28:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002c2c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002c30:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c002c34:	47fff59f 	bnez	$r12,-12(0x7ffff4) # 1c002c28 <CLOCK_WaitForHSEStartUp+0x34>
1c002c38:	50001c00 	b	28(0x1c) # 1c002c54 <CLOCK_WaitForHSEStartUp+0x60>
1c002c3c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c40:	2880018e 	ld.w	$r14,$r12,0
1c002c44:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c48:	02bdfc0d 	addi.w	$r13,$r0,-129(0xf7f)
1c002c4c:	0014b5cd 	and	$r13,$r14,$r13
1c002c50:	2980018d 	st.w	$r13,$r12,0
1c002c54:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c58:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c002c5c:	63ffe180 	blt	$r12,$r0,-32(0x3ffe0) # 1c002c3c <CLOCK_WaitForHSEStartUp+0x48>
1c002c60:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c64:	2880018d 	ld.w	$r13,$r12,0
1c002c68:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c6c:	038201ad 	ori	$r13,$r13,0x80
1c002c70:	2980018d 	st.w	$r13,$r12,0
1c002c74:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002c78:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002c7c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002c80:	00150184 	move	$r4,$r12
1c002c84:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002c88:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002c8c:	4c000020 	jirl	$r0,$r1,0

1c002c90 <CLOCK_WaitForLSEStartUp>:
CLOCK_WaitForLSEStartUp():
1c002c90:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002c94:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002c98:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002c9c:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c002ca0:	50008800 	b	136(0x88) # 1c002d28 <CLOCK_WaitForLSEStartUp+0x98>
1c002ca4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ca8:	2880018e 	ld.w	$r14,$r12,0
1c002cac:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002cb0:	02bf7c0d 	addi.w	$r13,$r0,-33(0xfdf)
1c002cb4:	0014b5cd 	and	$r13,$r14,$r13
1c002cb8:	2980018d 	st.w	$r13,$r12,0
1c002cbc:	0280700c 	addi.w	$r12,$r0,28(0x1c)
1c002cc0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002cc4:	50001400 	b	20(0x14) # 1c002cd8 <CLOCK_WaitForLSEStartUp+0x48>
1c002cc8:	03400000 	andi	$r0,$r0,0x0
1c002ccc:	03400000 	andi	$r0,$r0,0x0
1c002cd0:	03400000 	andi	$r0,$r0,0x0
1c002cd4:	03400000 	andi	$r0,$r0,0x0
1c002cd8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002cdc:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002ce0:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c002ce4:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002cc8 <CLOCK_WaitForLSEStartUp+0x38>
1c002ce8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002cec:	2880018d 	ld.w	$r13,$r12,0
1c002cf0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002cf4:	038081ad 	ori	$r13,$r13,0x20
1c002cf8:	2980018d 	st.w	$r13,$r12,0
1c002cfc:	0280700c 	addi.w	$r12,$r0,28(0x1c)
1c002d00:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002d04:	50001400 	b	20(0x14) # 1c002d18 <CLOCK_WaitForLSEStartUp+0x88>
1c002d08:	03400000 	andi	$r0,$r0,0x0
1c002d0c:	03400000 	andi	$r0,$r0,0x0
1c002d10:	03400000 	andi	$r0,$r0,0x0
1c002d14:	03400000 	andi	$r0,$r0,0x0
1c002d18:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002d1c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002d20:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c002d24:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002d08 <CLOCK_WaitForLSEStartUp+0x78>
1c002d28:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002d2c:	0380118c 	ori	$r12,$r12,0x4
1c002d30:	2880018d 	ld.w	$r13,$r12,0
1c002d34:	1420000c 	lu12i.w	$r12,65536(0x10000)
1c002d38:	0014b1ac 	and	$r12,$r13,$r12
1c002d3c:	43ff699f 	beqz	$r12,-152(0x7fff68) # 1c002ca4 <CLOCK_WaitForLSEStartUp+0x14>
1c002d40:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002d44:	0380118c 	ori	$r12,$r12,0x4
1c002d48:	2880018d 	ld.w	$r13,$r12,0
1c002d4c:	1440000c 	lu12i.w	$r12,131072(0x20000)
1c002d50:	0014b1ac 	and	$r12,$r13,$r12
1c002d54:	47ff519f 	bnez	$r12,-176(0x7fff50) # 1c002ca4 <CLOCK_WaitForLSEStartUp+0x14>
1c002d58:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002d5c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002d60:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002d64:	00150184 	move	$r4,$r12
1c002d68:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002d6c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002d70:	4c000020 	jirl	$r0,$r1,0

1c002d74 <CLOCK_HSEConfig>:
CLOCK_HSEConfig():
1c002d74:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002d78:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002d7c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002d80:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002d84:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002d88:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002d8c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002d90:	2880018e 	ld.w	$r14,$r12,0
1c002d94:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002d98:	0014300d 	nor	$r13,$r0,$r12
1c002d9c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002da0:	0014b5cd 	and	$r13,$r14,$r13
1c002da4:	2980018d 	st.w	$r13,$r12,0
1c002da8:	1400002c 	lu12i.w	$r12,1(0x1)
1c002dac:	03b4bd8c 	ori	$r12,$r12,0xd2f
1c002db0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002db4:	50001400 	b	20(0x14) # 1c002dc8 <CLOCK_HSEConfig+0x54>
1c002db8:	03400000 	andi	$r0,$r0,0x0
1c002dbc:	03400000 	andi	$r0,$r0,0x0
1c002dc0:	03400000 	andi	$r0,$r0,0x0
1c002dc4:	03400000 	andi	$r0,$r0,0x0
1c002dc8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002dcc:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002dd0:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c002dd4:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002db8 <CLOCK_HSEConfig+0x44>
1c002dd8:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002ddc:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c002de0:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c002df0 <CLOCK_HSEConfig+0x7c>
1c002de4:	57fe13ff 	bl	-496(0xffffe10) # 1c002bf4 <CLOCK_WaitForHSEStartUp>
1c002de8:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002dec:	50002400 	b	36(0x24) # 1c002e10 <CLOCK_HSEConfig+0x9c>
1c002df0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002df4:	2880018e 	ld.w	$r14,$r12,0
1c002df8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002dfc:	02bdfc0d 	addi.w	$r13,$r0,-129(0xf7f)
1c002e00:	0014b5cd 	and	$r13,$r14,$r13
1c002e04:	2980018d 	st.w	$r13,$r12,0
1c002e08:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002e0c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002e10:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002e14:	00150184 	move	$r4,$r12
1c002e18:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002e1c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002e20:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002e24:	4c000020 	jirl	$r0,$r1,0

1c002e28 <CLOCK_LSEConfig>:
CLOCK_LSEConfig():
1c002e28:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002e2c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002e30:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002e34:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002e38:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002e3c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002e40:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002e44:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c002e48:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c002e58 <CLOCK_LSEConfig+0x30>
1c002e4c:	57fe47ff 	bl	-444(0xffffe44) # 1c002c90 <CLOCK_WaitForLSEStartUp>
1c002e50:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002e54:	50002400 	b	36(0x24) # 1c002e78 <CLOCK_LSEConfig+0x50>
1c002e58:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e5c:	2880018e 	ld.w	$r14,$r12,0
1c002e60:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e64:	02bf7c0d 	addi.w	$r13,$r0,-33(0xfdf)
1c002e68:	0014b5cd 	and	$r13,$r14,$r13
1c002e6c:	2980018d 	st.w	$r13,$r12,0
1c002e70:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002e74:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002e78:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002e7c:	00150184 	move	$r4,$r12
1c002e80:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002e84:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002e88:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002e8c:	4c000020 	jirl	$r0,$r1,0

1c002e90 <CLOCK_StructInit>:
CLOCK_StructInit():
1c002e90:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002e94:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002e98:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002e9c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002ea0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002ea4:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c002ea8:	2980018d 	st.w	$r13,$r12,0
1c002eac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002eb0:	0282000d 	addi.w	$r13,$r0,128(0x80)
1c002eb4:	2980118d 	st.w	$r13,$r12,4(0x4)
1c002eb8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002ebc:	0280800d 	addi.w	$r13,$r0,32(0x20)
1c002ec0:	2980218d 	st.w	$r13,$r12,8(0x8)
1c002ec4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002ec8:	29803180 	st.w	$r0,$r12,12(0xc)
1c002ecc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002ed0:	29804180 	st.w	$r0,$r12,16(0x10)
1c002ed4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002ed8:	29805180 	st.w	$r0,$r12,20(0x14)
1c002edc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002ee0:	29806180 	st.w	$r0,$r12,24(0x18)
1c002ee4:	03400000 	andi	$r0,$r0,0x0
1c002ee8:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002eec:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002ef0:	4c000020 	jirl	$r0,$r1,0

1c002ef4 <CLOCK_Init>:
CLOCK_Init():
1c002ef4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002ef8:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002efc:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002f00:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002f04:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002f08:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002f0c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f10:	2880018e 	ld.w	$r14,$r12,0
1c002f14:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f18:	02b3fc0d 	addi.w	$r13,$r0,-769(0xcff)
1c002f1c:	0014b5cd 	and	$r13,$r14,$r13
1c002f20:	2980018d 	st.w	$r13,$r12,0
1c002f24:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f28:	2880018e 	ld.w	$r14,$r12,0
1c002f2c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002f30:	2880418d 	ld.w	$r13,$r12,16(0x10)
1c002f34:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f38:	001535cd 	or	$r13,$r14,$r13
1c002f3c:	2980018d 	st.w	$r13,$r12,0
1c002f40:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f44:	2880018e 	ld.w	$r14,$r12,0
1c002f48:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f4c:	02bfbc0d 	addi.w	$r13,$r0,-17(0xfef)
1c002f50:	0014b5cd 	and	$r13,$r14,$r13
1c002f54:	2980018d 	st.w	$r13,$r12,0
1c002f58:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f5c:	2880018e 	ld.w	$r14,$r12,0
1c002f60:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002f64:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c002f68:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f6c:	001535cd 	or	$r13,$r14,$r13
1c002f70:	2980018d 	st.w	$r13,$r12,0
1c002f74:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f78:	2880018e 	ld.w	$r14,$r12,0
1c002f7c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f80:	15ffffed 	lu12i.w	$r13,-1(0xfffff)
1c002f84:	039ffdad 	ori	$r13,$r13,0x7ff
1c002f88:	0014b5cd 	and	$r13,$r14,$r13
1c002f8c:	2980018d 	st.w	$r13,$r12,0
1c002f90:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f94:	2880018e 	ld.w	$r14,$r12,0
1c002f98:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002f9c:	2880518d 	ld.w	$r13,$r12,20(0x14)
1c002fa0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002fa4:	001535cd 	or	$r13,$r14,$r13
1c002fa8:	2980018d 	st.w	$r13,$r12,0
1c002fac:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002fb0:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c002fb4:	00150184 	move	$r4,$r12
1c002fb8:	57fdbfff 	bl	-580(0xffffdbc) # 1c002d74 <CLOCK_HSEConfig>
1c002fbc:	0015008d 	move	$r13,$r4
1c002fc0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002fc4:	58000dac 	beq	$r13,$r12,12(0xc) # 1c002fd0 <CLOCK_Init+0xdc>
1c002fc8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002fcc:	50015000 	b	336(0x150) # 1c00311c <CLOCK_Init+0x228>
1c002fd0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002fd4:	2880218c 	ld.w	$r12,$r12,8(0x8)
1c002fd8:	00150184 	move	$r4,$r12
1c002fdc:	57fe4fff 	bl	-436(0xffffe4c) # 1c002e28 <CLOCK_LSEConfig>
1c002fe0:	0015008d 	move	$r13,$r4
1c002fe4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002fe8:	58000dac 	beq	$r13,$r12,12(0xc) # 1c002ff4 <CLOCK_Init+0x100>
1c002fec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002ff0:	50012c00 	b	300(0x12c) # 1c00311c <CLOCK_Init+0x228>
1c002ff4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002ff8:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c002ffc:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c003000:	5800fdac 	beq	$r13,$r12,252(0xfc) # 1c0030fc <CLOCK_Init+0x208>
1c003004:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003008:	2880518c 	ld.w	$r12,$r12,20(0x14)
1c00300c:	4000a180 	beqz	$r12,160(0xa0) # 1c0030ac <CLOCK_Init+0x1b8>
1c003010:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003014:	2880018e 	ld.w	$r14,$r12,0
1c003018:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00301c:	15efffed 	lu12i.w	$r13,-32769(0xf7fff)
1c003020:	03bffdad 	ori	$r13,$r13,0xfff
1c003024:	0014b5cd 	and	$r13,$r14,$r13
1c003028:	2980018d 	st.w	$r13,$r12,0
1c00302c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003030:	2880018e 	ld.w	$r14,$r12,0
1c003034:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003038:	2880618d 	ld.w	$r13,$r12,24(0x18)
1c00303c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003040:	001535cd 	or	$r13,$r14,$r13
1c003044:	2980018d 	st.w	$r13,$r12,0
1c003048:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c00304c:	0386c18c 	ori	$r12,$r12,0x1b0
1c003050:	2880018c 	ld.w	$r12,$r12,0
1c003054:	40004180 	beqz	$r12,64(0x40) # 1c003094 <CLOCK_Init+0x1a0>
1c003058:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c00305c:	0386c18c 	ori	$r12,$r12,0x1b0
1c003060:	2880018c 	ld.w	$r12,$r12,0
1c003064:	0040898e 	slli.w	$r14,$r12,0x2
1c003068:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c00306c:	002031cd 	div.w	$r13,$r14,$r12
1c003070:	5c000980 	bne	$r12,$r0,8(0x8) # 1c003078 <CLOCK_Init+0x184>
1c003074:	002a0007 	break	0x7
1c003078:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
1c00307c:	001c31ac 	mul.w	$r12,$r13,$r12
1c003080:	0015018d 	move	$r13,$r12
1c003084:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c003088:	02bea18c 	addi.w	$r12,$r12,-88(0xfa8)
1c00308c:	2980018d 	st.w	$r13,$r12,0
1c003090:	50008000 	b	128(0x80) # 1c003110 <CLOCK_Init+0x21c>
1c003094:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c003098:	02be618c 	addi.w	$r12,$r12,-104(0xf98)
1c00309c:	1401458d 	lu12i.w	$r13,2604(0xa2c)
1c0030a0:	038fe1ad 	ori	$r13,$r13,0x3f8
1c0030a4:	2980018d 	st.w	$r13,$r12,0
1c0030a8:	50006800 	b	104(0x68) # 1c003110 <CLOCK_Init+0x21c>
1c0030ac:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c0030b0:	0386c18c 	ori	$r12,$r12,0x1b0
1c0030b4:	2880018c 	ld.w	$r12,$r12,0
1c0030b8:	40002d80 	beqz	$r12,44(0x2c) # 1c0030e4 <CLOCK_Init+0x1f0>
1c0030bc:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c0030c0:	0386c18c 	ori	$r12,$r12,0x1b0
1c0030c4:	2880018d 	ld.w	$r13,$r12,0
1c0030c8:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
1c0030cc:	001c31ac 	mul.w	$r12,$r13,$r12
1c0030d0:	0015018d 	move	$r13,$r12
1c0030d4:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c0030d8:	02bd618c 	addi.w	$r12,$r12,-168(0xf58)
1c0030dc:	2980018d 	st.w	$r13,$r12,0
1c0030e0:	50003000 	b	48(0x30) # 1c003110 <CLOCK_Init+0x21c>
1c0030e4:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c0030e8:	02bd218c 	addi.w	$r12,$r12,-184(0xf48)
1c0030ec:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c0030f0:	038801ad 	ori	$r13,$r13,0x200
1c0030f4:	2980018d 	st.w	$r13,$r12,0
1c0030f8:	50001800 	b	24(0x18) # 1c003110 <CLOCK_Init+0x21c>
1c0030fc:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c003100:	02bcc18c 	addi.w	$r12,$r12,-208(0xf30)
1c003104:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c003108:	038801ad 	ori	$r13,$r13,0x200
1c00310c:	2980018d 	st.w	$r13,$r12,0
1c003110:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c003114:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003118:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00311c:	00150184 	move	$r4,$r12
1c003120:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003124:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003128:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00312c:	4c000020 	jirl	$r0,$r1,0

1c003130 <SystemClockInit>:
SystemClockInit():
1c003130:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003134:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003138:	2980a076 	st.w	$r22,$r3,40(0x28)
1c00313c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003140:	29bf52c0 	st.w	$r0,$r22,-44(0xfd4)
1c003144:	29bf62c0 	st.w	$r0,$r22,-40(0xfd8)
1c003148:	29bf72c0 	st.w	$r0,$r22,-36(0xfdc)
1c00314c:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c003150:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c003154:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c003158:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00315c:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c003160:	00150184 	move	$r4,$r12
1c003164:	57fd2fff 	bl	-724(0xffffd2c) # 1c002e90 <CLOCK_StructInit>
1c003168:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c00316c:	29bf52cc 	st.w	$r12,$r22,-44(0xfd4)
1c003170:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c003174:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c003178:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c00317c:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c003180:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c003184:	0284000c 	addi.w	$r12,$r0,256(0x100)
1c003188:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00318c:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c003190:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003194:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c003198:	00150184 	move	$r4,$r12
1c00319c:	57fd5bff 	bl	-680(0xffffd58) # 1c002ef4 <CLOCK_Init>
1c0031a0:	0015008d 	move	$r13,$r4
1c0031a4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0031a8:	58000dac 	beq	$r13,$r12,12(0xc) # 1c0031b4 <SystemClockInit+0x84>
1c0031ac:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c0031b0:	50000800 	b	8(0x8) # 1c0031b8 <SystemClockInit+0x88>
1c0031b4:	0015000c 	move	$r12,$r0
1c0031b8:	00150184 	move	$r4,$r12
1c0031bc:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0031c0:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0031c4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0031c8:	4c000020 	jirl	$r0,$r1,0

1c0031cc <IsGlobalIntOpen>:
IsGlobalIntOpen():
1c0031cc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0031d0:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0031d4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0031d8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0031dc:	0400000c 	csrrd	$r12,0x0
1c0031e0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0031e4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0031e8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0031ec:	0340118c 	andi	$r12,$r12,0x4
1c0031f0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0031f4:	00150184 	move	$r4,$r12
1c0031f8:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0031fc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003200:	4c000020 	jirl	$r0,$r1,0

1c003204 <DisableInt>:
DisableInt():
1c003204:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003208:	29803076 	st.w	$r22,$r3,12(0xc)
1c00320c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003210:	0380100c 	ori	$r12,$r0,0x4
1c003214:	04000180 	csrxchg	$r0,$r12,0x0
1c003218:	03400000 	andi	$r0,$r0,0x0
1c00321c:	28803076 	ld.w	$r22,$r3,12(0xc)
1c003220:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003224:	4c000020 	jirl	$r0,$r1,0

1c003228 <EnableInt>:
EnableInt():
1c003228:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00322c:	29803076 	st.w	$r22,$r3,12(0xc)
1c003230:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003234:	0380100c 	ori	$r12,$r0,0x4
1c003238:	0400018c 	csrxchg	$r12,$r12,0x0
1c00323c:	03400000 	andi	$r0,$r0,0x0
1c003240:	28803076 	ld.w	$r22,$r3,12(0xc)
1c003244:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003248:	4c000020 	jirl	$r0,$r1,0

1c00324c <Set_Timer_stop>:
Set_Timer_stop():
1c00324c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003250:	29803076 	st.w	$r22,$r3,12(0xc)
1c003254:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003258:	04010420 	csrwr	$r0,0x41
1c00325c:	03400000 	andi	$r0,$r0,0x0
1c003260:	28803076 	ld.w	$r22,$r3,12(0xc)
1c003264:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003268:	4c000020 	jirl	$r0,$r1,0

1c00326c <Set_Timer_clear>:
Set_Timer_clear():
1c00326c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003270:	29803076 	st.w	$r22,$r3,12(0xc)
1c003274:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003278:	0380040c 	ori	$r12,$r0,0x1
1c00327c:	0401102c 	csrwr	$r12,0x44
1c003280:	03400000 	andi	$r0,$r0,0x0
1c003284:	28803076 	ld.w	$r22,$r3,12(0xc)
1c003288:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00328c:	4c000020 	jirl	$r0,$r1,0

1c003290 <Wake_Set>:
Wake_Set():
1c003290:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003294:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003298:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00329c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0032a0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0032a4:	40006980 	beqz	$r12,104(0x68) # 1c00330c <Wake_Set+0x7c>
1c0032a8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0032ac:	0040a18c 	slli.w	$r12,$r12,0x8
1c0032b0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0032b4:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0032b8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0032bc:	0380218c 	ori	$r12,$r12,0x8
1c0032c0:	2880018d 	ld.w	$r13,$r12,0
1c0032c4:	14001fec 	lu12i.w	$r12,255(0xff)
1c0032c8:	03bffd8c 	ori	$r12,$r12,0xfff
1c0032cc:	0014b1ac 	and	$r12,$r13,$r12
1c0032d0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0032d4:	001031ac 	add.w	$r12,$r13,$r12
1c0032d8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0032dc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0032e0:	0380318c 	ori	$r12,$r12,0xc
1c0032e4:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0032e8:	2980018d 	st.w	$r13,$r12,0
1c0032ec:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0032f0:	0380118c 	ori	$r12,$r12,0x4
1c0032f4:	2880018d 	ld.w	$r13,$r12,0
1c0032f8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0032fc:	0380118c 	ori	$r12,$r12,0x4
1c003300:	038601ad 	ori	$r13,$r13,0x180
1c003304:	2980018d 	st.w	$r13,$r12,0
1c003308:	50002400 	b	36(0x24) # 1c00332c <Wake_Set+0x9c>
1c00330c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003310:	0380118c 	ori	$r12,$r12,0x4
1c003314:	2880018e 	ld.w	$r14,$r12,0
1c003318:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00331c:	0380118c 	ori	$r12,$r12,0x4
1c003320:	02b9fc0d 	addi.w	$r13,$r0,-385(0xe7f)
1c003324:	0014b5cd 	and	$r13,$r14,$r13
1c003328:	2980018d 	st.w	$r13,$r12,0
1c00332c:	03400000 	andi	$r0,$r0,0x0
1c003330:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003334:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003338:	4c000020 	jirl	$r0,$r1,0

1c00333c <PMU_GetRstRrc>:
PMU_GetRstRrc():
1c00333c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003340:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003344:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003348:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00334c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003350:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c003354:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c003358:	0014b1ac 	and	$r12,$r13,$r12
1c00335c:	44000d80 	bnez	$r12,12(0xc) # 1c003368 <PMU_GetRstRrc+0x2c>
1c003360:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003364:	50003000 	b	48(0x30) # 1c003394 <PMU_GetRstRrc+0x58>
1c003368:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00336c:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c003370:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c003374:	0014b1ad 	and	$r13,$r13,$r12
1c003378:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c00337c:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c00338c <PMU_GetRstRrc+0x50>
1c003380:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c003384:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003388:	50000c00 	b	12(0xc) # 1c003394 <PMU_GetRstRrc+0x58>
1c00338c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c003390:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003394:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003398:	00150184 	move	$r4,$r12
1c00339c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0033a0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0033a4:	4c000020 	jirl	$r0,$r1,0

1c0033a8 <PMU_GetBootSpiStatus>:
PMU_GetBootSpiStatus():
1c0033a8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0033ac:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0033b0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0033b4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0033b8:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0033bc:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c0033c0:	0380198c 	ori	$r12,$r12,0x6
1c0033c4:	2a00018c 	ld.bu	$r12,$r12,0
1c0033c8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0033cc:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0033d0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0033d4:	0340058c 	andi	$r12,$r12,0x1
1c0033d8:	40000d80 	beqz	$r12,12(0xc) # 1c0033e4 <PMU_GetBootSpiStatus+0x3c>
1c0033dc:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0033e0:	50000800 	b	8(0x8) # 1c0033e8 <PMU_GetBootSpiStatus+0x40>
1c0033e4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0033e8:	00150184 	move	$r4,$r12
1c0033ec:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0033f0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0033f4:	4c000020 	jirl	$r0,$r1,0

1c0033f8 <ls1x_logo>:
ls1x_logo():
1c0033f8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0033fc:	29803061 	st.w	$r1,$r3,12(0xc)
1c003400:	29802076 	st.w	$r22,$r3,8(0x8)
1c003404:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003408:	1c000084 	pcaddu12i	$r4,4(0x4)
1c00340c:	02b43084 	addi.w	$r4,$r4,-756(0xd0c)
1c003410:	57e793ff 	bl	-6256(0xfffe790) # 1c001ba0 <myprintf>
1c003414:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003418:	02b41084 	addi.w	$r4,$r4,-764(0xd04)
1c00341c:	57e787ff 	bl	-6268(0xfffe784) # 1c001ba0 <myprintf>
1c003420:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003424:	02b57084 	addi.w	$r4,$r4,-676(0xd5c)
1c003428:	57e77bff 	bl	-6280(0xfffe778) # 1c001ba0 <myprintf>
1c00342c:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003430:	02b6d084 	addi.w	$r4,$r4,-588(0xdb4)
1c003434:	57e76fff 	bl	-6292(0xfffe76c) # 1c001ba0 <myprintf>
1c003438:	1c000084 	pcaddu12i	$r4,4(0x4)
1c00343c:	02b83084 	addi.w	$r4,$r4,-500(0xe0c)
1c003440:	57e763ff 	bl	-6304(0xfffe760) # 1c001ba0 <myprintf>
1c003444:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003448:	02b99084 	addi.w	$r4,$r4,-412(0xe64)
1c00344c:	57e757ff 	bl	-6316(0xfffe754) # 1c001ba0 <myprintf>
1c003450:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003454:	02baf084 	addi.w	$r4,$r4,-324(0xebc)
1c003458:	57e74bff 	bl	-6328(0xfffe748) # 1c001ba0 <myprintf>
1c00345c:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003460:	02bc5084 	addi.w	$r4,$r4,-236(0xf14)
1c003464:	57e73fff 	bl	-6340(0xfffe73c) # 1c001ba0 <myprintf>
1c003468:	1c000084 	pcaddu12i	$r4,4(0x4)
1c00346c:	02bdb084 	addi.w	$r4,$r4,-148(0xf6c)
1c003470:	57e733ff 	bl	-6352(0xfffe730) # 1c001ba0 <myprintf>
1c003474:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003478:	02bf1084 	addi.w	$r4,$r4,-60(0xfc4)
1c00347c:	57e727ff 	bl	-6364(0xfffe724) # 1c001ba0 <myprintf>
1c003480:	03400000 	andi	$r0,$r0,0x0
1c003484:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003488:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00348c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003490:	4c000020 	jirl	$r0,$r1,0

1c003494 <get_count>:
get_count():
1c003494:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003498:	29807076 	st.w	$r22,$r3,28(0x1c)
1c00349c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0034a0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0034a4:	0000600c 	rdtimel.w	$r12,$r0
1c0034a8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0034ac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0034b0:	00150184 	move	$r4,$r12
1c0034b4:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0034b8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0034bc:	4c000020 	jirl	$r0,$r1,0

1c0034c0 <open_count>:
open_count():
1c0034c0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0034c4:	29803076 	st.w	$r22,$r3,12(0xc)
1c0034c8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0034cc:	0380400c 	ori	$r12,$r0,0x10
1c0034d0:	0402bd80 	csrxchg	$r0,$r12,0xaf
1c0034d4:	03400000 	andi	$r0,$r0,0x0
1c0034d8:	28803076 	ld.w	$r22,$r3,12(0xc)
1c0034dc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0034e0:	4c000020 	jirl	$r0,$r1,0

1c0034e4 <start_count>:
start_count():
1c0034e4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0034e8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0034ec:	29806076 	st.w	$r22,$r3,24(0x18)
1c0034f0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0034f4:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0034f8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0034fc:	29800180 	st.w	$r0,$r12,0
1c003500:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003504:	29801180 	st.w	$r0,$r12,4(0x4)
1c003508:	57ff8fff 	bl	-116(0xfffff8c) # 1c003494 <get_count>
1c00350c:	0015008d 	move	$r13,$r4
1c003510:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003514:	2980018d 	st.w	$r13,$r12,0
1c003518:	03400000 	andi	$r0,$r0,0x0
1c00351c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003520:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003524:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003528:	4c000020 	jirl	$r0,$r1,0

1c00352c <stop_count>:
stop_count():
1c00352c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003530:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003534:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003538:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00353c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003540:	57ff57ff 	bl	-172(0xfffff54) # 1c003494 <get_count>
1c003544:	0015008d 	move	$r13,$r4
1c003548:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00354c:	2980118d 	st.w	$r13,$r12,4(0x4)
1c003550:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003554:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c003558:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00355c:	2880018c 	ld.w	$r12,$r12,0
1c003560:	68001dac 	bltu	$r13,$r12,28(0x1c) # 1c00357c <stop_count+0x50>
1c003564:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003568:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c00356c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003570:	2880018c 	ld.w	$r12,$r12,0
1c003574:	001131ac 	sub.w	$r12,$r13,$r12
1c003578:	50002800 	b	40(0x28) # 1c0035a0 <stop_count+0x74>
1c00357c:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c003580:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003584:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003588:	2880018c 	ld.w	$r12,$r12,0
1c00358c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003590:	001131ad 	sub.w	$r13,$r13,$r12
1c003594:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003598:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c00359c:	001031ac 	add.w	$r12,$r13,$r12
1c0035a0:	00150184 	move	$r4,$r12
1c0035a4:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0035a8:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0035ac:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0035b0:	4c000020 	jirl	$r0,$r1,0

1c0035b4 <delay_cycle>:
delay_cycle():
1c0035b4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0035b8:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0035bc:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0035c0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0035c4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0035c8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0035cc:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c0035d0:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0035d4:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c0035d8:	00150184 	move	$r4,$r12
1c0035dc:	57ff0bff 	bl	-248(0xfffff08) # 1c0034e4 <start_count>
1c0035e0:	50001400 	b	20(0x14) # 1c0035f4 <delay_cycle+0x40>
1c0035e4:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c0035e8:	00150184 	move	$r4,$r12
1c0035ec:	57ff43ff 	bl	-192(0xfffff40) # 1c00352c <stop_count>
1c0035f0:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0035f4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0035f8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0035fc:	6bffe9ac 	bltu	$r13,$r12,-24(0x3ffe8) # 1c0035e4 <delay_cycle+0x30>
1c003600:	03400000 	andi	$r0,$r0,0x0
1c003604:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003608:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c00360c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003610:	4c000020 	jirl	$r0,$r1,0

1c003614 <delay_us>:
delay_us():
1c003614:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003618:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00361c:	29806076 	st.w	$r22,$r3,24(0x18)
1c003620:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003624:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003628:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00362c:	00408d8c 	slli.w	$r12,$r12,0x3
1c003630:	00150184 	move	$r4,$r12
1c003634:	57ff83ff 	bl	-128(0xfffff80) # 1c0035b4 <delay_cycle>
1c003638:	03400000 	andi	$r0,$r0,0x0
1c00363c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003640:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003644:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003648:	4c000020 	jirl	$r0,$r1,0

1c00364c <delay_ms>:
delay_ms():
1c00364c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003650:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003654:	29806076 	st.w	$r22,$r3,24(0x18)
1c003658:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00365c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003660:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003664:	1400002c 	lu12i.w	$r12,1(0x1)
1c003668:	03bd018c 	ori	$r12,$r12,0xf40
1c00366c:	001c31ac 	mul.w	$r12,$r13,$r12
1c003670:	00150184 	move	$r4,$r12
1c003674:	57ff43ff 	bl	-192(0xfffff40) # 1c0035b4 <delay_cycle>
1c003678:	03400000 	andi	$r0,$r0,0x0
1c00367c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003680:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003684:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003688:	4c000020 	jirl	$r0,$r1,0

1c00368c <memset>:
memset():
1c00368c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003690:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003694:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003698:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00369c:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0036a0:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c0036a4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0036a8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0036ac:	50001c00 	b	28(0x1c) # 1c0036c8 <memset+0x3c>
1c0036b0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0036b4:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c0036b8:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c0036bc:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c0036c0:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c0036c4:	2900018d 	st.b	$r13,$r12,0
1c0036c8:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c0036cc:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0036d0:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c0036d4:	47ffdd9f 	bnez	$r12,-36(0x7fffdc) # 1c0036b0 <memset+0x24>
1c0036d8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0036dc:	00150184 	move	$r4,$r12
1c0036e0:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0036e4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0036e8:	4c000020 	jirl	$r0,$r1,0

1c0036ec <pstrstr>:
pstrstr():
1c0036ec:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0036f0:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0036f4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0036f8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0036fc:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c003700:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003704:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003708:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00370c:	2800018c 	ld.b	$r12,$r12,0
1c003710:	44008580 	bnez	$r12,132(0x84) # 1c003794 <pstrstr+0xa8>
1c003714:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003718:	50008c00 	b	140(0x8c) # 1c0037a4 <pstrstr+0xb8>
1c00371c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003720:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003724:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c003728:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00372c:	50001c00 	b	28(0x1c) # 1c003748 <pstrstr+0x5c>
1c003730:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003734:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003738:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00373c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c003740:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003744:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c003748:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00374c:	2800018c 	ld.b	$r12,$r12,0
1c003750:	40002580 	beqz	$r12,36(0x24) # 1c003774 <pstrstr+0x88>
1c003754:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c003758:	2800018c 	ld.b	$r12,$r12,0
1c00375c:	40001980 	beqz	$r12,24(0x18) # 1c003774 <pstrstr+0x88>
1c003760:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003764:	2800018d 	ld.b	$r13,$r12,0
1c003768:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c00376c:	2800018c 	ld.b	$r12,$r12,0
1c003770:	5bffc1ac 	beq	$r13,$r12,-64(0x3ffc0) # 1c003730 <pstrstr+0x44>
1c003774:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c003778:	2800018c 	ld.b	$r12,$r12,0
1c00377c:	44000d80 	bnez	$r12,12(0xc) # 1c003788 <pstrstr+0x9c>
1c003780:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003784:	50002000 	b	32(0x20) # 1c0037a4 <pstrstr+0xb8>
1c003788:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00378c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003790:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003794:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003798:	2800018c 	ld.b	$r12,$r12,0
1c00379c:	47ff819f 	bnez	$r12,-128(0x7fff80) # 1c00371c <pstrstr+0x30>
1c0037a0:	0015000c 	move	$r12,$r0
1c0037a4:	00150184 	move	$r4,$r12
1c0037a8:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0037ac:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0037b0:	4c000020 	jirl	$r0,$r1,0

1c0037b4 <strcpy>:
strcpy():
1c0037b4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0037b8:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0037bc:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0037c0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0037c4:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0037c8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0037cc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0037d0:	03400000 	andi	$r0,$r0,0x0
1c0037d4:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c0037d8:	028005ac 	addi.w	$r12,$r13,1(0x1)
1c0037dc:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c0037e0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0037e4:	0280058e 	addi.w	$r14,$r12,1(0x1)
1c0037e8:	29bf72ce 	st.w	$r14,$r22,-36(0xfdc)
1c0037ec:	280001ad 	ld.b	$r13,$r13,0
1c0037f0:	2900018d 	st.b	$r13,$r12,0
1c0037f4:	2800018c 	ld.b	$r12,$r12,0
1c0037f8:	47ffdd9f 	bnez	$r12,-36(0x7fffdc) # 1c0037d4 <strcpy+0x20>
1c0037fc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003800:	00150184 	move	$r4,$r12
1c003804:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003808:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00380c:	4c000020 	jirl	$r0,$r1,0

1c003810 <strlen>:
strlen():
1c003810:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003814:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003818:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00381c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003820:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003824:	50001000 	b	16(0x10) # 1c003834 <strlen+0x24>
1c003828:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00382c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003830:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003834:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003838:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c00383c:	29bf72cd 	st.w	$r13,$r22,-36(0xfdc)
1c003840:	2800018c 	ld.b	$r12,$r12,0
1c003844:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003828 <strlen+0x18>
1c003848:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00384c:	00150184 	move	$r4,$r12
1c003850:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003854:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003858:	4c000020 	jirl	$r0,$r1,0

1c00385c <EXTI_ClearITPendingBit>:
EXTI_ClearITPendingBit():
1c00385c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003860:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003864:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003868:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c00386c:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c003870:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003874:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c003878:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00387c:	001531ad 	or	$r13,$r13,$r12
1c003880:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003884:	2980318d 	st.w	$r13,$r12,12(0xc)
1c003888:	03400000 	andi	$r0,$r0,0x0
1c00388c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003890:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003894:	4c000020 	jirl	$r0,$r1,0

1c003898 <WDG_getOddValue>:
WDG_getOddValue():
1c003898:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00389c:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0038a0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0038a4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0038a8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0038ac:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0038b0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0038b4:	50003800 	b	56(0x38) # 1c0038ec <WDG_getOddValue+0x54>
1c0038b8:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0038bc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0038c0:	001731ac 	sll.w	$r12,$r13,$r12
1c0038c4:	0015018d 	move	$r13,$r12
1c0038c8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0038cc:	0014b1ac 	and	$r12,$r13,$r12
1c0038d0:	40001180 	beqz	$r12,16(0x10) # 1c0038e0 <WDG_getOddValue+0x48>
1c0038d4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0038d8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0038dc:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0038e0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0038e4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0038e8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0038ec:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0038f0:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c0038f4:	67ffc58d 	bge	$r12,$r13,-60(0x3ffc4) # 1c0038b8 <WDG_getOddValue+0x20>
1c0038f8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0038fc:	0340058c 	andi	$r12,$r12,0x1
1c003900:	44000d80 	bnez	$r12,12(0xc) # 1c00390c <WDG_getOddValue+0x74>
1c003904:	1400010c 	lu12i.w	$r12,8(0x8)
1c003908:	50000800 	b	8(0x8) # 1c003910 <WDG_getOddValue+0x78>
1c00390c:	0015000c 	move	$r12,$r0
1c003910:	00150184 	move	$r4,$r12
1c003914:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003918:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00391c:	4c000020 	jirl	$r0,$r1,0

1c003920 <WDG_SetWatchDog>:
WDG_SetWatchDog():
1c003920:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003924:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003928:	29806076 	st.w	$r22,$r3,24(0x18)
1c00392c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003930:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003934:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003938:	140000ec 	lu12i.w	$r12,7(0x7)
1c00393c:	03bffd8c 	ori	$r12,$r12,0xfff
1c003940:	0014b1ac 	and	$r12,$r13,$r12
1c003944:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003948:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c00394c:	57ff4fff 	bl	-180(0xfffff4c) # 1c003898 <WDG_getOddValue>
1c003950:	0015008c 	move	$r12,$r4
1c003954:	0015018d 	move	$r13,$r12
1c003958:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00395c:	0015358c 	or	$r12,$r12,$r13
1c003960:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003964:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003968:	154ab4ad 	lu12i.w	$r13,-371291(0xa55a5)
1c00396c:	0396a9ad 	ori	$r13,$r13,0x5aa
1c003970:	2980d18d 	st.w	$r13,$r12,52(0x34)
1c003974:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003978:	0014300c 	nor	$r12,$r0,$r12
1c00397c:	0040c18c 	slli.w	$r12,$r12,0x10
1c003980:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003984:	001531ac 	or	$r12,$r13,$r12
1c003988:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00398c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003990:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003994:	2980c18d 	st.w	$r13,$r12,48(0x30)
1c003998:	03400000 	andi	$r0,$r0,0x0
1c00399c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0039a0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0039a4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0039a8:	4c000020 	jirl	$r0,$r1,0

1c0039ac <WDG_DogFeed>:
WDG_DogFeed():
1c0039ac:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0039b0:	29803076 	st.w	$r22,$r3,12(0xc)
1c0039b4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0039b8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0039bc:	154ab4ad 	lu12i.w	$r13,-371291(0xa55a5)
1c0039c0:	0396a9ad 	ori	$r13,$r13,0x5aa
1c0039c4:	2980d18d 	st.w	$r13,$r12,52(0x34)
1c0039c8:	03400000 	andi	$r0,$r0,0x0
1c0039cc:	28803076 	ld.w	$r22,$r3,12(0xc)
1c0039d0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0039d4:	4c000020 	jirl	$r0,$r1,0

1c0039d8 <WdgInit>:
WdgInit():
1c0039d8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0039dc:	29803061 	st.w	$r1,$r3,12(0xc)
1c0039e0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0039e4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0039e8:	150000ec 	lu12i.w	$r12,-524281(0x80007)
1c0039ec:	03bffd84 	ori	$r4,$r12,0xfff
1c0039f0:	57ff33ff 	bl	-208(0xfffff30) # 1c003920 <WDG_SetWatchDog>
1c0039f4:	03400000 	andi	$r0,$r0,0x0
1c0039f8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0039fc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003a00:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003a04:	4c000020 	jirl	$r0,$r1,0

1c003a08 <Adc_powerOn>:
Adc_powerOn():
1c003a08:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003a0c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003a10:	29806076 	st.w	$r22,$r3,24(0x18)
1c003a14:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003a18:	57f7b7ff 	bl	-2124(0xffff7b4) # 1c0031cc <IsGlobalIntOpen>
1c003a1c:	0015008c 	move	$r12,$r4
1c003a20:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c003a24:	57f7e3ff 	bl	-2080(0xffff7e0) # 1c003204 <DisableInt>
1c003a28:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c003a2c:	288001ac 	ld.w	$r12,$r13,0
1c003a30:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c003a34:	007041cc 	bstrins.w	$r12,$r14,0x10,0x10
1c003a38:	298001ac 	st.w	$r12,$r13,0
1c003a3c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003a40:	40000980 	beqz	$r12,8(0x8) # 1c003a48 <Adc_powerOn+0x40>
1c003a44:	57f7e7ff 	bl	-2076(0xffff7e4) # 1c003228 <EnableInt>
1c003a48:	03400000 	andi	$r0,$r0,0x0
1c003a4c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003a50:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003a54:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003a58:	4c000020 	jirl	$r0,$r1,0

1c003a5c <Adc_openGroup>:
Adc_openGroup():
1c003a5c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003a60:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003a64:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003a68:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003a6c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003a70:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003a74:	0340058c 	andi	$r12,$r12,0x1
1c003a78:	40003580 	beqz	$r12,52(0x34) # 1c003aac <Adc_openGroup+0x50>
1c003a7c:	57f753ff 	bl	-2224(0xffff750) # 1c0031cc <IsGlobalIntOpen>
1c003a80:	0015008c 	move	$r12,$r4
1c003a84:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c003a88:	57f77fff 	bl	-2180(0xffff77c) # 1c003204 <DisableInt>
1c003a8c:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c003a90:	288001ac 	ld.w	$r12,$r13,0
1c003a94:	0071440c 	bstrins.w	$r12,$r0,0x11,0x11
1c003a98:	298001ac 	st.w	$r12,$r13,0
1c003a9c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003aa0:	40004980 	beqz	$r12,72(0x48) # 1c003ae8 <Adc_openGroup+0x8c>
1c003aa4:	57f787ff 	bl	-2172(0xffff784) # 1c003228 <EnableInt>
1c003aa8:	50004000 	b	64(0x40) # 1c003ae8 <Adc_openGroup+0x8c>
1c003aac:	57f723ff 	bl	-2272(0xffff720) # 1c0031cc <IsGlobalIntOpen>
1c003ab0:	0015008c 	move	$r12,$r4
1c003ab4:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c003ab8:	57f74fff 	bl	-2228(0xffff74c) # 1c003204 <DisableInt>
1c003abc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003ac0:	0044918c 	srli.w	$r12,$r12,0x4
1c003ac4:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c003ac8:	03403d8c 	andi	$r12,$r12,0xf
1c003acc:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c003ad0:	288001ac 	ld.w	$r12,$r13,0
1c003ad4:	007751cc 	bstrins.w	$r12,$r14,0x17,0x14
1c003ad8:	298001ac 	st.w	$r12,$r13,0
1c003adc:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c003ae0:	40000980 	beqz	$r12,8(0x8) # 1c003ae8 <Adc_openGroup+0x8c>
1c003ae4:	57f747ff 	bl	-2236(0xffff744) # 1c003228 <EnableInt>
1c003ae8:	03400000 	andi	$r0,$r0,0x0
1c003aec:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003af0:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003af4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003af8:	4c000020 	jirl	$r0,$r1,0

1c003afc <Adc_Measure>:
Adc_Measure():
1c003afc:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003b00:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003b04:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003b08:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003b0c:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c003b10:	297faac0 	st.h	$r0,$r22,-22(0xfea)
1c003b14:	297fbac0 	st.h	$r0,$r22,-18(0xfee)
1c003b18:	50008400 	b	132(0x84) # 1c003b9c <Adc_Measure+0xa0>
1c003b1c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003b20:	0381b18c 	ori	$r12,$r12,0x6c
1c003b24:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c003b28:	038401ad 	ori	$r13,$r13,0x100
1c003b2c:	2980018d 	st.w	$r13,$r12,0
1c003b30:	03400000 	andi	$r0,$r0,0x0
1c003b34:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003b38:	0381b18c 	ori	$r12,$r12,0x6c
1c003b3c:	2880018c 	ld.w	$r12,$r12,0
1c003b40:	0344018c 	andi	$r12,$r12,0x100
1c003b44:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1c003b34 <Adc_Measure+0x38>
1c003b48:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003b4c:	0381c18c 	ori	$r12,$r12,0x70
1c003b50:	2880018c 	ld.w	$r12,$r12,0
1c003b54:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003b58:	037ffd8c 	andi	$r12,$r12,0xfff
1c003b5c:	297fa2cc 	st.h	$r12,$r22,-24(0xfe8)
1c003b60:	2a7fbacd 	ld.hu	$r13,$r22,-18(0xfee)
1c003b64:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c003b68:	6c00298d 	bgeu	$r12,$r13,40(0x28) # 1c003b90 <Adc_Measure+0x94>
1c003b6c:	2a7faacd 	ld.hu	$r13,$r22,-22(0xfea)
1c003b70:	2a7fa2cc 	ld.hu	$r12,$r22,-24(0xfe8)
1c003b74:	001031ac 	add.w	$r12,$r13,$r12
1c003b78:	297faacc 	st.h	$r12,$r22,-22(0xfea)
1c003b7c:	2a7fa2cd 	ld.hu	$r13,$r22,-24(0xfe8)
1c003b80:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c003b84:	6c000d8d 	bgeu	$r12,$r13,12(0xc) # 1c003b90 <Adc_Measure+0x94>
1c003b88:	2a7fa2cc 	ld.hu	$r12,$r22,-24(0xfe8)
1c003b8c:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c003b90:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c003b94:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003b98:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c003b9c:	2a7fbacd 	ld.hu	$r13,$r22,-18(0xfee)
1c003ba0:	0280180c 	addi.w	$r12,$r0,6(0x6)
1c003ba4:	6fff798d 	bgeu	$r12,$r13,-136(0x3ff78) # 1c003b1c <Adc_Measure+0x20>
1c003ba8:	2a7faacd 	ld.hu	$r13,$r22,-22(0xfea)
1c003bac:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c003bb0:	001131ad 	sub.w	$r13,$r13,$r12
1c003bb4:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c003bb8:	002031ae 	div.w	$r14,$r13,$r12
1c003bbc:	5c000980 	bne	$r12,$r0,8(0x8) # 1c003bc4 <Adc_Measure+0xc8>
1c003bc0:	002a0007 	break	0x7
1c003bc4:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c003bc8:	00150184 	move	$r4,$r12
1c003bcc:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003bd0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003bd4:	4c000020 	jirl	$r0,$r1,0

1c003bd8 <TOUCH_GetBaseVal>:
TOUCH_GetBaseVal():
1c003bd8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003bdc:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003be0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003be4:	0015008c 	move	$r12,$r4
1c003be8:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c003bec:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c003bf0:	0040898c 	slli.w	$r12,$r12,0x2
1c003bf4:	0015018d 	move	$r13,$r12
1c003bf8:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c003bfc:	0381018c 	ori	$r12,$r12,0x40
1c003c00:	001031ac 	add.w	$r12,$r13,$r12
1c003c04:	2880018c 	ld.w	$r12,$r12,0
1c003c08:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003c0c:	037ffd8c 	andi	$r12,$r12,0xfff
1c003c10:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003c14:	00150184 	move	$r4,$r12
1c003c18:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003c1c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003c20:	4c000020 	jirl	$r0,$r1,0

1c003c24 <TOUCH_GetCountValue>:
TOUCH_GetCountValue():
1c003c24:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003c28:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003c2c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003c30:	0015008c 	move	$r12,$r4
1c003c34:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c003c38:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c003c3c:	0040898c 	slli.w	$r12,$r12,0x2
1c003c40:	0015018d 	move	$r13,$r12
1c003c44:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c003c48:	0382018c 	ori	$r12,$r12,0x80
1c003c4c:	001031ac 	add.w	$r12,$r13,$r12
1c003c50:	2880018c 	ld.w	$r12,$r12,0
1c003c54:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003c58:	037ffd8c 	andi	$r12,$r12,0xfff
1c003c5c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003c60:	00150184 	move	$r4,$r12
1c003c64:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003c68:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003c6c:	4c000020 	jirl	$r0,$r1,0

1c003c70 <Printf_KeyChannel>:
Printf_KeyChannel():
1c003c70:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003c74:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003c78:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003c7c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003c80:	0015008c 	move	$r12,$r4
1c003c84:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c003c88:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003c8c:	50003400 	b	52(0x34) # 1c003cc0 <Printf_KeyChannel+0x50>
1c003c90:	2a7f7acd 	ld.hu	$r13,$r22,-34(0xfde)
1c003c94:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003c98:	001831ac 	sra.w	$r12,$r13,$r12
1c003c9c:	0340058c 	andi	$r12,$r12,0x1
1c003ca0:	40001580 	beqz	$r12,20(0x14) # 1c003cb4 <Printf_KeyChannel+0x44>
1c003ca4:	28bfb2c5 	ld.w	$r5,$r22,-20(0xfec)
1c003ca8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003cac:	029fd084 	addi.w	$r4,$r4,2036(0x7f4)
1c003cb0:	57def3ff 	bl	-8464(0xfffdef0) # 1c001ba0 <myprintf>
1c003cb4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003cb8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003cbc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003cc0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003cc4:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003cc8:	6fffc98d 	bgeu	$r12,$r13,-56(0x3ffc8) # 1c003c90 <Printf_KeyChannel+0x20>
1c003ccc:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003cd0:	029f5084 	addi.w	$r4,$r4,2004(0x7d4)
1c003cd4:	57decfff 	bl	-8500(0xfffdecc) # 1c001ba0 <myprintf>
1c003cd8:	03400000 	andi	$r0,$r0,0x0
1c003cdc:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003ce0:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003ce4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003ce8:	4c000020 	jirl	$r0,$r1,0

1c003cec <Printf_KeyType>:
Printf_KeyType():
1c003cec:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003cf0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003cf4:	29806076 	st.w	$r22,$r3,24(0x18)
1c003cf8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003cfc:	0015008c 	move	$r12,$r4
1c003d00:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c003d04:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003d08:	0340058c 	andi	$r12,$r12,0x1
1c003d0c:	40001180 	beqz	$r12,16(0x10) # 1c003d1c <Printf_KeyType+0x30>
1c003d10:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003d14:	029e5084 	addi.w	$r4,$r4,1940(0x794)
1c003d18:	57de8bff 	bl	-8568(0xfffde88) # 1c001ba0 <myprintf>
1c003d1c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003d20:	0340098c 	andi	$r12,$r12,0x2
1c003d24:	40001180 	beqz	$r12,16(0x10) # 1c003d34 <Printf_KeyType+0x48>
1c003d28:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003d2c:	029e1084 	addi.w	$r4,$r4,1924(0x784)
1c003d30:	57de73ff 	bl	-8592(0xfffde70) # 1c001ba0 <myprintf>
1c003d34:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003d38:	0340118c 	andi	$r12,$r12,0x4
1c003d3c:	40001180 	beqz	$r12,16(0x10) # 1c003d4c <Printf_KeyType+0x60>
1c003d40:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003d44:	029dd084 	addi.w	$r4,$r4,1908(0x774)
1c003d48:	57de5bff 	bl	-8616(0xfffde58) # 1c001ba0 <myprintf>
1c003d4c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003d50:	0340218c 	andi	$r12,$r12,0x8
1c003d54:	40001180 	beqz	$r12,16(0x10) # 1c003d64 <Printf_KeyType+0x78>
1c003d58:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003d5c:	029da084 	addi.w	$r4,$r4,1896(0x768)
1c003d60:	57de43ff 	bl	-8640(0xfffde40) # 1c001ba0 <myprintf>
1c003d64:	03400000 	andi	$r0,$r0,0x0
1c003d68:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003d6c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003d70:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003d74:	4c000020 	jirl	$r0,$r1,0

1c003d78 <Printf_KeyVal>:
Printf_KeyVal():
1c003d78:	02bd4063 	addi.w	$r3,$r3,-176(0xf50)
1c003d7c:	2982b061 	st.w	$r1,$r3,172(0xac)
1c003d80:	2982a076 	st.w	$r22,$r3,168(0xa8)
1c003d84:	0282c076 	addi.w	$r22,$r3,176(0xb0)
1c003d88:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003d8c:	5000d800 	b	216(0xd8) # 1c003e64 <Printf_KeyVal+0xec>
1c003d90:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003d94:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003d98:	00150184 	move	$r4,$r12
1c003d9c:	57fe8bff 	bl	-376(0xffffe88) # 1c003c24 <TOUCH_GetCountValue>
1c003da0:	0015008c 	move	$r12,$r4
1c003da4:	0015018d 	move	$r13,$r12
1c003da8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003dac:	0040898c 	slli.w	$r12,$r12,0x2
1c003db0:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003db4:	001031cc 	add.w	$r12,$r14,$r12
1c003db8:	29bdb18d 	st.w	$r13,$r12,-148(0xf6c)
1c003dbc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003dc0:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003dc4:	00150184 	move	$r4,$r12
1c003dc8:	57fe13ff 	bl	-496(0xffffe10) # 1c003bd8 <TOUCH_GetBaseVal>
1c003dcc:	0015008c 	move	$r12,$r4
1c003dd0:	0015018d 	move	$r13,$r12
1c003dd4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003dd8:	0040898c 	slli.w	$r12,$r12,0x2
1c003ddc:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003de0:	001031cc 	add.w	$r12,$r14,$r12
1c003de4:	29be718d 	st.w	$r13,$r12,-100(0xf9c)
1c003de8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003dec:	0040898c 	slli.w	$r12,$r12,0x2
1c003df0:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003df4:	001031ac 	add.w	$r12,$r13,$r12
1c003df8:	28be718c 	ld.w	$r12,$r12,-100(0xf9c)
1c003dfc:	40004980 	beqz	$r12,72(0x48) # 1c003e44 <Printf_KeyVal+0xcc>
1c003e00:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003e04:	0040898c 	slli.w	$r12,$r12,0x2
1c003e08:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003e0c:	001031ac 	add.w	$r12,$r13,$r12
1c003e10:	28be718d 	ld.w	$r13,$r12,-100(0xf9c)
1c003e14:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003e18:	0040898c 	slli.w	$r12,$r12,0x2
1c003e1c:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003e20:	001031cc 	add.w	$r12,$r14,$r12
1c003e24:	28bdb18c 	ld.w	$r12,$r12,-148(0xf6c)
1c003e28:	001131ad 	sub.w	$r13,$r13,$r12
1c003e2c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003e30:	0040898c 	slli.w	$r12,$r12,0x2
1c003e34:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003e38:	001031cc 	add.w	$r12,$r14,$r12
1c003e3c:	29bf318d 	st.w	$r13,$r12,-52(0xfcc)
1c003e40:	50001800 	b	24(0x18) # 1c003e58 <Printf_KeyVal+0xe0>
1c003e44:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003e48:	0040898c 	slli.w	$r12,$r12,0x2
1c003e4c:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003e50:	001031ac 	add.w	$r12,$r13,$r12
1c003e54:	29bf3180 	st.w	$r0,$r12,-52(0xfcc)
1c003e58:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003e5c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003e60:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003e64:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003e68:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003e6c:	67ff258d 	bge	$r12,$r13,-220(0x3ff24) # 1c003d90 <Printf_KeyVal+0x18>
1c003e70:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003e74:	02997084 	addi.w	$r4,$r4,1628(0x65c)
1c003e78:	57dd2bff 	bl	-8920(0xfffdd28) # 1c001ba0 <myprintf>
1c003e7c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003e80:	0299e084 	addi.w	$r4,$r4,1656(0x678)
1c003e84:	57dd1fff 	bl	-8932(0xfffdd1c) # 1c001ba0 <myprintf>
1c003e88:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003e8c:	50003400 	b	52(0x34) # 1c003ec0 <Printf_KeyVal+0x148>
1c003e90:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003e94:	0040898c 	slli.w	$r12,$r12,0x2
1c003e98:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003e9c:	001031ac 	add.w	$r12,$r13,$r12
1c003ea0:	28bdb18c 	ld.w	$r12,$r12,-148(0xf6c)
1c003ea4:	00150185 	move	$r5,$r12
1c003ea8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003eac:	02995084 	addi.w	$r4,$r4,1620(0x654)
1c003eb0:	57dcf3ff 	bl	-8976(0xfffdcf0) # 1c001ba0 <myprintf>
1c003eb4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003eb8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003ebc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003ec0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003ec4:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003ec8:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c003e90 <Printf_KeyVal+0x118>
1c003ecc:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003ed0:	0298e084 	addi.w	$r4,$r4,1592(0x638)
1c003ed4:	57dccfff 	bl	-9012(0xfffdccc) # 1c001ba0 <myprintf>
1c003ed8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003edc:	50003400 	b	52(0x34) # 1c003f10 <Printf_KeyVal+0x198>
1c003ee0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003ee4:	0040898c 	slli.w	$r12,$r12,0x2
1c003ee8:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003eec:	001031ac 	add.w	$r12,$r13,$r12
1c003ef0:	28be718c 	ld.w	$r12,$r12,-100(0xf9c)
1c003ef4:	00150185 	move	$r5,$r12
1c003ef8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003efc:	02981084 	addi.w	$r4,$r4,1540(0x604)
1c003f00:	57dca3ff 	bl	-9056(0xfffdca0) # 1c001ba0 <myprintf>
1c003f04:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003f08:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003f0c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003f10:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003f14:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003f18:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c003ee0 <Printf_KeyVal+0x168>
1c003f1c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003f20:	0297d084 	addi.w	$r4,$r4,1524(0x5f4)
1c003f24:	57dc7fff 	bl	-9092(0xfffdc7c) # 1c001ba0 <myprintf>
1c003f28:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003f2c:	50007400 	b	116(0x74) # 1c003fa0 <Printf_KeyVal+0x228>
1c003f30:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003f34:	0040898c 	slli.w	$r12,$r12,0x2
1c003f38:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003f3c:	001031ac 	add.w	$r12,$r13,$r12
1c003f40:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c003f44:	64002d80 	bge	$r12,$r0,44(0x2c) # 1c003f70 <Printf_KeyVal+0x1f8>
1c003f48:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003f4c:	0040898c 	slli.w	$r12,$r12,0x2
1c003f50:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003f54:	001031ac 	add.w	$r12,$r13,$r12
1c003f58:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c003f5c:	00150185 	move	$r5,$r12
1c003f60:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003f64:	0296f084 	addi.w	$r4,$r4,1468(0x5bc)
1c003f68:	57dc3bff 	bl	-9160(0xfffdc38) # 1c001ba0 <myprintf>
1c003f6c:	50002800 	b	40(0x28) # 1c003f94 <Printf_KeyVal+0x21c>
1c003f70:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003f74:	0040898c 	slli.w	$r12,$r12,0x2
1c003f78:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003f7c:	001031ac 	add.w	$r12,$r13,$r12
1c003f80:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c003f84:	00150185 	move	$r5,$r12
1c003f88:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003f8c:	02967084 	addi.w	$r4,$r4,1436(0x59c)
1c003f90:	57dc13ff 	bl	-9200(0xfffdc10) # 1c001ba0 <myprintf>
1c003f94:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003f98:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003f9c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003fa0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003fa4:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003fa8:	67ff898d 	bge	$r12,$r13,-120(0x3ff88) # 1c003f30 <Printf_KeyVal+0x1b8>
1c003fac:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003fb0:	0293d084 	addi.w	$r4,$r4,1268(0x4f4)
1c003fb4:	57dbefff 	bl	-9236(0xfffdbec) # 1c001ba0 <myprintf>
1c003fb8:	03400000 	andi	$r0,$r0,0x0
1c003fbc:	2882b061 	ld.w	$r1,$r3,172(0xac)
1c003fc0:	2882a076 	ld.w	$r22,$r3,168(0xa8)
1c003fc4:	0282c063 	addi.w	$r3,$r3,176(0xb0)
1c003fc8:	4c000020 	jirl	$r0,$r1,0

1c003fcc <TIM_GetITStatus>:
TIM_GetITStatus():
1c003fcc:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003fd0:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003fd4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003fd8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003fdc:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003fe0:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003fe4:	2880018d 	ld.w	$r13,$r12,0
1c003fe8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003fec:	0014b1ac 	and	$r12,$r13,$r12
1c003ff0:	40001180 	beqz	$r12,16(0x10) # 1c004000 <TIM_GetITStatus+0x34>
1c003ff4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c003ff8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003ffc:	50000800 	b	8(0x8) # 1c004004 <TIM_GetITStatus+0x38>
1c004000:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004004:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004008:	00150184 	move	$r4,$r12
1c00400c:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c004010:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c004014:	4c000020 	jirl	$r0,$r1,0

1c004018 <TIM_ClearIT>:
TIM_ClearIT():
1c004018:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00401c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c004020:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004024:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c004028:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c00402c:	2880018e 	ld.w	$r14,$r12,0
1c004030:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c004034:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004038:	001535cd 	or	$r13,$r14,$r13
1c00403c:	2980018d 	st.w	$r13,$r12,0
1c004040:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004044:	03800d8c 	ori	$r12,$r12,0x3
1c004048:	2a00018c 	ld.bu	$r12,$r12,0
1c00404c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c004050:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004054:	03800d8c 	ori	$r12,$r12,0x3
1c004058:	038005ad 	ori	$r13,$r13,0x1
1c00405c:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c004060:	2900018d 	st.b	$r13,$r12,0
1c004064:	03400000 	andi	$r0,$r0,0x0
1c004068:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c00406c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004070:	4c000020 	jirl	$r0,$r1,0

1c004074 <exti_gpioa0_irq_handler>:
exti_gpioa0_irq_handler():
1c004074:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004078:	29803061 	st.w	$r1,$r3,12(0xc)
1c00407c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004080:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004084:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004088:	029870c6 	addi.w	$r6,$r6,1564(0x61c)
1c00408c:	02804c05 	addi.w	$r5,$r0,19(0x13)
1c004090:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004094:	02927084 	addi.w	$r4,$r4,1180(0x49c)
1c004098:	57db0bff 	bl	-9464(0xfffdb08) # 1c001ba0 <myprintf>
1c00409c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0040a0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0040a4:	03808184 	ori	$r4,$r12,0x20
1c0040a8:	57f7b7ff 	bl	-2124(0xffff7b4) # 1c00385c <EXTI_ClearITPendingBit>
1c0040ac:	03400000 	andi	$r0,$r0,0x0
1c0040b0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0040b4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0040b8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0040bc:	4c000020 	jirl	$r0,$r1,0

1c0040c0 <exti_gpioa1_irq_handler>:
exti_gpioa1_irq_handler():
1c0040c0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0040c4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0040c8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0040cc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0040d0:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0040d4:	0297a0c6 	addi.w	$r6,$r6,1512(0x5e8)
1c0040d8:	02806005 	addi.w	$r5,$r0,24(0x18)
1c0040dc:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0040e0:	02914084 	addi.w	$r4,$r4,1104(0x450)
1c0040e4:	57dabfff 	bl	-9540(0xfffdabc) # 1c001ba0 <myprintf>
1c0040e8:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0040ec:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0040f0:	03808184 	ori	$r4,$r12,0x20
1c0040f4:	57f76bff 	bl	-2200(0xffff768) # 1c00385c <EXTI_ClearITPendingBit>
1c0040f8:	03400000 	andi	$r0,$r0,0x0
1c0040fc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004100:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004104:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004108:	4c000020 	jirl	$r0,$r1,0

1c00410c <exti_gpioa2_irq_handler>:
exti_gpioa2_irq_handler():
1c00410c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004110:	29803061 	st.w	$r1,$r3,12(0xc)
1c004114:	29802076 	st.w	$r22,$r3,8(0x8)
1c004118:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00411c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004120:	0296d0c6 	addi.w	$r6,$r6,1460(0x5b4)
1c004124:	02807405 	addi.w	$r5,$r0,29(0x1d)
1c004128:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00412c:	02901084 	addi.w	$r4,$r4,1028(0x404)
1c004130:	57da73ff 	bl	-9616(0xfffda70) # 1c001ba0 <myprintf>
1c004134:	02801005 	addi.w	$r5,$r0,4(0x4)
1c004138:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00413c:	03808184 	ori	$r4,$r12,0x20
1c004140:	57f71fff 	bl	-2276(0xffff71c) # 1c00385c <EXTI_ClearITPendingBit>
1c004144:	03400000 	andi	$r0,$r0,0x0
1c004148:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00414c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004150:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004154:	4c000020 	jirl	$r0,$r1,0

1c004158 <exti_gpioa3_irq_handler>:
exti_gpioa3_irq_handler():
1c004158:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00415c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004160:	29802076 	st.w	$r22,$r3,8(0x8)
1c004164:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004168:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00416c:	029600c6 	addi.w	$r6,$r6,1408(0x580)
1c004170:	02808805 	addi.w	$r5,$r0,34(0x22)
1c004174:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004178:	028ee084 	addi.w	$r4,$r4,952(0x3b8)
1c00417c:	57da27ff 	bl	-9692(0xfffda24) # 1c001ba0 <myprintf>
1c004180:	02802005 	addi.w	$r5,$r0,8(0x8)
1c004184:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004188:	03808184 	ori	$r4,$r12,0x20
1c00418c:	57f6d3ff 	bl	-2352(0xffff6d0) # 1c00385c <EXTI_ClearITPendingBit>
1c004190:	03400000 	andi	$r0,$r0,0x0
1c004194:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004198:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00419c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0041a0:	4c000020 	jirl	$r0,$r1,0

1c0041a4 <exti_gpioa4_irq_handler>:
exti_gpioa4_irq_handler():
1c0041a4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0041a8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0041ac:	29802076 	st.w	$r22,$r3,8(0x8)
1c0041b0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0041b4:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0041b8:	029530c6 	addi.w	$r6,$r6,1356(0x54c)
1c0041bc:	02809c05 	addi.w	$r5,$r0,39(0x27)
1c0041c0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0041c4:	028db084 	addi.w	$r4,$r4,876(0x36c)
1c0041c8:	57d9dbff 	bl	-9768(0xfffd9d8) # 1c001ba0 <myprintf>
1c0041cc:	02804005 	addi.w	$r5,$r0,16(0x10)
1c0041d0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0041d4:	03808184 	ori	$r4,$r12,0x20
1c0041d8:	57f687ff 	bl	-2428(0xffff684) # 1c00385c <EXTI_ClearITPendingBit>
1c0041dc:	03400000 	andi	$r0,$r0,0x0
1c0041e0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0041e4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0041e8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0041ec:	4c000020 	jirl	$r0,$r1,0

1c0041f0 <exti_gpioa5_irq_handler>:
exti_gpioa5_irq_handler():
1c0041f0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0041f4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0041f8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0041fc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004200:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004204:	029460c6 	addi.w	$r6,$r6,1304(0x518)
1c004208:	0280b005 	addi.w	$r5,$r0,44(0x2c)
1c00420c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004210:	028c8084 	addi.w	$r4,$r4,800(0x320)
1c004214:	57d98fff 	bl	-9844(0xfffd98c) # 1c001ba0 <myprintf>
1c004218:	02808005 	addi.w	$r5,$r0,32(0x20)
1c00421c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004220:	03808184 	ori	$r4,$r12,0x20
1c004224:	57f63bff 	bl	-2504(0xffff638) # 1c00385c <EXTI_ClearITPendingBit>
1c004228:	03400000 	andi	$r0,$r0,0x0
1c00422c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004230:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004234:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004238:	4c000020 	jirl	$r0,$r1,0

1c00423c <exti_gpioa6_irq_handler>:
exti_gpioa6_irq_handler():
1c00423c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004240:	29803061 	st.w	$r1,$r3,12(0xc)
1c004244:	29802076 	st.w	$r22,$r3,8(0x8)
1c004248:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00424c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004250:	029390c6 	addi.w	$r6,$r6,1252(0x4e4)
1c004254:	0280c405 	addi.w	$r5,$r0,49(0x31)
1c004258:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00425c:	028b5084 	addi.w	$r4,$r4,724(0x2d4)
1c004260:	57d943ff 	bl	-9920(0xfffd940) # 1c001ba0 <myprintf>
1c004264:	02810005 	addi.w	$r5,$r0,64(0x40)
1c004268:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00426c:	03808184 	ori	$r4,$r12,0x20
1c004270:	57f5efff 	bl	-2580(0xffff5ec) # 1c00385c <EXTI_ClearITPendingBit>
1c004274:	03400000 	andi	$r0,$r0,0x0
1c004278:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00427c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004280:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004284:	4c000020 	jirl	$r0,$r1,0

1c004288 <exti_gpioa7_irq_handler>:
exti_gpioa7_irq_handler():
1c004288:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00428c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004290:	29802076 	st.w	$r22,$r3,8(0x8)
1c004294:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004298:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00429c:	0292c0c6 	addi.w	$r6,$r6,1200(0x4b0)
1c0042a0:	0280d805 	addi.w	$r5,$r0,54(0x36)
1c0042a4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0042a8:	028a2084 	addi.w	$r4,$r4,648(0x288)
1c0042ac:	57d8f7ff 	bl	-9996(0xfffd8f4) # 1c001ba0 <myprintf>
1c0042b0:	02820005 	addi.w	$r5,$r0,128(0x80)
1c0042b4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0042b8:	03808184 	ori	$r4,$r12,0x20
1c0042bc:	57f5a3ff 	bl	-2656(0xffff5a0) # 1c00385c <EXTI_ClearITPendingBit>
1c0042c0:	03400000 	andi	$r0,$r0,0x0
1c0042c4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0042c8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0042cc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0042d0:	4c000020 	jirl	$r0,$r1,0

1c0042d4 <exti_gpiob0_irq_handler>:
exti_gpiob0_irq_handler():
1c0042d4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0042d8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0042dc:	29802076 	st.w	$r22,$r3,8(0x8)
1c0042e0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0042e4:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0042e8:	0291f0c6 	addi.w	$r6,$r6,1148(0x47c)
1c0042ec:	0280ec05 	addi.w	$r5,$r0,59(0x3b)
1c0042f0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0042f4:	0288f084 	addi.w	$r4,$r4,572(0x23c)
1c0042f8:	57d8abff 	bl	-10072(0xfffd8a8) # 1c001ba0 <myprintf>
1c0042fc:	02840005 	addi.w	$r5,$r0,256(0x100)
1c004300:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004304:	03808184 	ori	$r4,$r12,0x20
1c004308:	57f557ff 	bl	-2732(0xffff554) # 1c00385c <EXTI_ClearITPendingBit>
1c00430c:	03400000 	andi	$r0,$r0,0x0
1c004310:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004314:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004318:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00431c:	4c000020 	jirl	$r0,$r1,0

1c004320 <exti_gpiob1_irq_handler>:
exti_gpiob1_irq_handler():
1c004320:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004324:	29803061 	st.w	$r1,$r3,12(0xc)
1c004328:	29802076 	st.w	$r22,$r3,8(0x8)
1c00432c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004330:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004334:	029120c6 	addi.w	$r6,$r6,1096(0x448)
1c004338:	02810005 	addi.w	$r5,$r0,64(0x40)
1c00433c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004340:	0287c084 	addi.w	$r4,$r4,496(0x1f0)
1c004344:	57d85fff 	bl	-10148(0xfffd85c) # 1c001ba0 <myprintf>
1c004348:	02880005 	addi.w	$r5,$r0,512(0x200)
1c00434c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004350:	03808184 	ori	$r4,$r12,0x20
1c004354:	57f50bff 	bl	-2808(0xffff508) # 1c00385c <EXTI_ClearITPendingBit>
1c004358:	03400000 	andi	$r0,$r0,0x0
1c00435c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004360:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004364:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004368:	4c000020 	jirl	$r0,$r1,0

1c00436c <exti_gpiob2_irq_handler>:
exti_gpiob2_irq_handler():
1c00436c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004370:	29803061 	st.w	$r1,$r3,12(0xc)
1c004374:	29802076 	st.w	$r22,$r3,8(0x8)
1c004378:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00437c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004380:	029050c6 	addi.w	$r6,$r6,1044(0x414)
1c004384:	02811405 	addi.w	$r5,$r0,69(0x45)
1c004388:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00438c:	02869084 	addi.w	$r4,$r4,420(0x1a4)
1c004390:	57d813ff 	bl	-10224(0xfffd810) # 1c001ba0 <myprintf>
1c004394:	02900005 	addi.w	$r5,$r0,1024(0x400)
1c004398:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00439c:	03808184 	ori	$r4,$r12,0x20
1c0043a0:	57f4bfff 	bl	-2884(0xffff4bc) # 1c00385c <EXTI_ClearITPendingBit>
1c0043a4:	03400000 	andi	$r0,$r0,0x0
1c0043a8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0043ac:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0043b0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0043b4:	4c000020 	jirl	$r0,$r1,0

1c0043b8 <exti_gpiob3_irq_handler>:
exti_gpiob3_irq_handler():
1c0043b8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0043bc:	29803061 	st.w	$r1,$r3,12(0xc)
1c0043c0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0043c4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0043c8:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0043cc:	028f80c6 	addi.w	$r6,$r6,992(0x3e0)
1c0043d0:	02812805 	addi.w	$r5,$r0,74(0x4a)
1c0043d4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0043d8:	02856084 	addi.w	$r4,$r4,344(0x158)
1c0043dc:	57d7c7ff 	bl	-10300(0xfffd7c4) # 1c001ba0 <myprintf>
1c0043e0:	03a00005 	ori	$r5,$r0,0x800
1c0043e4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0043e8:	03808184 	ori	$r4,$r12,0x20
1c0043ec:	57f473ff 	bl	-2960(0xffff470) # 1c00385c <EXTI_ClearITPendingBit>
1c0043f0:	03400000 	andi	$r0,$r0,0x0
1c0043f4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0043f8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0043fc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004400:	4c000020 	jirl	$r0,$r1,0

1c004404 <exti_gpiob4_irq_handler>:
exti_gpiob4_irq_handler():
1c004404:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004408:	29803061 	st.w	$r1,$r3,12(0xc)
1c00440c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004410:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004414:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004418:	028eb0c6 	addi.w	$r6,$r6,940(0x3ac)
1c00441c:	02813c05 	addi.w	$r5,$r0,79(0x4f)
1c004420:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004424:	02843084 	addi.w	$r4,$r4,268(0x10c)
1c004428:	57d77bff 	bl	-10376(0xfffd778) # 1c001ba0 <myprintf>
1c00442c:	14000025 	lu12i.w	$r5,1(0x1)
1c004430:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004434:	03808184 	ori	$r4,$r12,0x20
1c004438:	57f427ff 	bl	-3036(0xffff424) # 1c00385c <EXTI_ClearITPendingBit>
1c00443c:	03400000 	andi	$r0,$r0,0x0
1c004440:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004444:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004448:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00444c:	4c000020 	jirl	$r0,$r1,0

1c004450 <exti_gpiob5_irq_handler>:
exti_gpiob5_irq_handler():
1c004450:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004454:	29803061 	st.w	$r1,$r3,12(0xc)
1c004458:	29802076 	st.w	$r22,$r3,8(0x8)
1c00445c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004460:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004464:	028de0c6 	addi.w	$r6,$r6,888(0x378)
1c004468:	02815005 	addi.w	$r5,$r0,84(0x54)
1c00446c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004470:	02830084 	addi.w	$r4,$r4,192(0xc0)
1c004474:	57d72fff 	bl	-10452(0xfffd72c) # 1c001ba0 <myprintf>
1c004478:	14000045 	lu12i.w	$r5,2(0x2)
1c00447c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004480:	03808184 	ori	$r4,$r12,0x20
1c004484:	57f3dbff 	bl	-3112(0xffff3d8) # 1c00385c <EXTI_ClearITPendingBit>
1c004488:	03400000 	andi	$r0,$r0,0x0
1c00448c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004490:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004494:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004498:	4c000020 	jirl	$r0,$r1,0

1c00449c <exti_gpiob6_irq_handler>:
exti_gpiob6_irq_handler():
1c00449c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0044a0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0044a4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0044a8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0044ac:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0044b0:	028d10c6 	addi.w	$r6,$r6,836(0x344)
1c0044b4:	02816405 	addi.w	$r5,$r0,89(0x59)
1c0044b8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0044bc:	0281d084 	addi.w	$r4,$r4,116(0x74)
1c0044c0:	57d6e3ff 	bl	-10528(0xfffd6e0) # 1c001ba0 <myprintf>
1c0044c4:	14000085 	lu12i.w	$r5,4(0x4)
1c0044c8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0044cc:	03808184 	ori	$r4,$r12,0x20
1c0044d0:	57f38fff 	bl	-3188(0xffff38c) # 1c00385c <EXTI_ClearITPendingBit>
1c0044d4:	03400000 	andi	$r0,$r0,0x0
1c0044d8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0044dc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0044e0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0044e4:	4c000020 	jirl	$r0,$r1,0

1c0044e8 <exti_gpiob7_irq_handler>:
exti_gpiob7_irq_handler():
1c0044e8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0044ec:	29803061 	st.w	$r1,$r3,12(0xc)
1c0044f0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0044f4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0044f8:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0044fc:	028c40c6 	addi.w	$r6,$r6,784(0x310)
1c004500:	02817805 	addi.w	$r5,$r0,94(0x5e)
1c004504:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004508:	0280a084 	addi.w	$r4,$r4,40(0x28)
1c00450c:	57d697ff 	bl	-10604(0xfffd694) # 1c001ba0 <myprintf>
1c004510:	14000105 	lu12i.w	$r5,8(0x8)
1c004514:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004518:	03808184 	ori	$r4,$r12,0x20
1c00451c:	57f343ff 	bl	-3264(0xffff340) # 1c00385c <EXTI_ClearITPendingBit>
1c004520:	03400000 	andi	$r0,$r0,0x0
1c004524:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004528:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00452c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004530:	4c000020 	jirl	$r0,$r1,0

1c004534 <exti_gpioc0_irq_handler>:
exti_gpioc0_irq_handler():
1c004534:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004538:	29803061 	st.w	$r1,$r3,12(0xc)
1c00453c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004540:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004544:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004548:	028b70c6 	addi.w	$r6,$r6,732(0x2dc)
1c00454c:	02819005 	addi.w	$r5,$r0,100(0x64)
1c004550:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004554:	02bf7084 	addi.w	$r4,$r4,-36(0xfdc)
1c004558:	57d64bff 	bl	-10680(0xfffd648) # 1c001ba0 <myprintf>
1c00455c:	14000205 	lu12i.w	$r5,16(0x10)
1c004560:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004564:	03808184 	ori	$r4,$r12,0x20
1c004568:	57f2f7ff 	bl	-3340(0xffff2f4) # 1c00385c <EXTI_ClearITPendingBit>
1c00456c:	03400000 	andi	$r0,$r0,0x0
1c004570:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004574:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004578:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00457c:	4c000020 	jirl	$r0,$r1,0

1c004580 <exti_gpioc1_irq_handler>:
exti_gpioc1_irq_handler():
1c004580:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004584:	29803061 	st.w	$r1,$r3,12(0xc)
1c004588:	29802076 	st.w	$r22,$r3,8(0x8)
1c00458c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004590:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004594:	028aa0c6 	addi.w	$r6,$r6,680(0x2a8)
1c004598:	0281a405 	addi.w	$r5,$r0,105(0x69)
1c00459c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0045a0:	02be4084 	addi.w	$r4,$r4,-112(0xf90)
1c0045a4:	57d5ffff 	bl	-10756(0xfffd5fc) # 1c001ba0 <myprintf>
1c0045a8:	14000405 	lu12i.w	$r5,32(0x20)
1c0045ac:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0045b0:	03808184 	ori	$r4,$r12,0x20
1c0045b4:	57f2abff 	bl	-3416(0xffff2a8) # 1c00385c <EXTI_ClearITPendingBit>
1c0045b8:	03400000 	andi	$r0,$r0,0x0
1c0045bc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0045c0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0045c4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0045c8:	4c000020 	jirl	$r0,$r1,0

1c0045cc <exti_gpioc2_irq_handler>:
exti_gpioc2_irq_handler():
1c0045cc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0045d0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0045d4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0045d8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0045dc:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0045e0:	0289d0c6 	addi.w	$r6,$r6,628(0x274)
1c0045e4:	0281b805 	addi.w	$r5,$r0,110(0x6e)
1c0045e8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0045ec:	02bd1084 	addi.w	$r4,$r4,-188(0xf44)
1c0045f0:	57d5b3ff 	bl	-10832(0xfffd5b0) # 1c001ba0 <myprintf>
1c0045f4:	14000805 	lu12i.w	$r5,64(0x40)
1c0045f8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0045fc:	03808184 	ori	$r4,$r12,0x20
1c004600:	57f25fff 	bl	-3492(0xffff25c) # 1c00385c <EXTI_ClearITPendingBit>
1c004604:	03400000 	andi	$r0,$r0,0x0
1c004608:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00460c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004610:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004614:	4c000020 	jirl	$r0,$r1,0

1c004618 <exti_gpioc3_irq_handler>:
exti_gpioc3_irq_handler():
1c004618:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00461c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004620:	29802076 	st.w	$r22,$r3,8(0x8)
1c004624:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004628:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00462c:	028900c6 	addi.w	$r6,$r6,576(0x240)
1c004630:	0281cc05 	addi.w	$r5,$r0,115(0x73)
1c004634:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004638:	02bbe084 	addi.w	$r4,$r4,-264(0xef8)
1c00463c:	57d567ff 	bl	-10908(0xfffd564) # 1c001ba0 <myprintf>
1c004640:	14001005 	lu12i.w	$r5,128(0x80)
1c004644:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004648:	03808184 	ori	$r4,$r12,0x20
1c00464c:	57f213ff 	bl	-3568(0xffff210) # 1c00385c <EXTI_ClearITPendingBit>
1c004650:	03400000 	andi	$r0,$r0,0x0
1c004654:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004658:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00465c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004660:	4c000020 	jirl	$r0,$r1,0

1c004664 <exti_gpioc4_irq_handler>:
exti_gpioc4_irq_handler():
1c004664:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004668:	29803061 	st.w	$r1,$r3,12(0xc)
1c00466c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004670:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004674:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004678:	028830c6 	addi.w	$r6,$r6,524(0x20c)
1c00467c:	0281e005 	addi.w	$r5,$r0,120(0x78)
1c004680:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004684:	02bab084 	addi.w	$r4,$r4,-340(0xeac)
1c004688:	57d51bff 	bl	-10984(0xfffd518) # 1c001ba0 <myprintf>
1c00468c:	14002005 	lu12i.w	$r5,256(0x100)
1c004690:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004694:	03808184 	ori	$r4,$r12,0x20
1c004698:	57f1c7ff 	bl	-3644(0xffff1c4) # 1c00385c <EXTI_ClearITPendingBit>
1c00469c:	03400000 	andi	$r0,$r0,0x0
1c0046a0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0046a4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0046a8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0046ac:	4c000020 	jirl	$r0,$r1,0

1c0046b0 <exti_gpioc5_irq_handler>:
exti_gpioc5_irq_handler():
1c0046b0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0046b4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0046b8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0046bc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0046c0:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0046c4:	028760c6 	addi.w	$r6,$r6,472(0x1d8)
1c0046c8:	0281f405 	addi.w	$r5,$r0,125(0x7d)
1c0046cc:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0046d0:	02b98084 	addi.w	$r4,$r4,-416(0xe60)
1c0046d4:	57d4cfff 	bl	-11060(0xfffd4cc) # 1c001ba0 <myprintf>
1c0046d8:	14004005 	lu12i.w	$r5,512(0x200)
1c0046dc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0046e0:	03808184 	ori	$r4,$r12,0x20
1c0046e4:	57f17bff 	bl	-3720(0xffff178) # 1c00385c <EXTI_ClearITPendingBit>
1c0046e8:	03400000 	andi	$r0,$r0,0x0
1c0046ec:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0046f0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0046f4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0046f8:	4c000020 	jirl	$r0,$r1,0

1c0046fc <exti_gpioc6_irq_handler>:
exti_gpioc6_irq_handler():
1c0046fc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004700:	29803061 	st.w	$r1,$r3,12(0xc)
1c004704:	29802076 	st.w	$r22,$r3,8(0x8)
1c004708:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00470c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004710:	028690c6 	addi.w	$r6,$r6,420(0x1a4)
1c004714:	02820805 	addi.w	$r5,$r0,130(0x82)
1c004718:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00471c:	02b85084 	addi.w	$r4,$r4,-492(0xe14)
1c004720:	57d483ff 	bl	-11136(0xfffd480) # 1c001ba0 <myprintf>
1c004724:	14008005 	lu12i.w	$r5,1024(0x400)
1c004728:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00472c:	03808184 	ori	$r4,$r12,0x20
1c004730:	57f12fff 	bl	-3796(0xffff12c) # 1c00385c <EXTI_ClearITPendingBit>
1c004734:	03400000 	andi	$r0,$r0,0x0
1c004738:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00473c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004740:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004744:	4c000020 	jirl	$r0,$r1,0

1c004748 <exti_gpioc7_irq_handler>:
exti_gpioc7_irq_handler():
1c004748:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00474c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004750:	29802076 	st.w	$r22,$r3,8(0x8)
1c004754:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004758:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00475c:	0285c0c6 	addi.w	$r6,$r6,368(0x170)
1c004760:	02821c05 	addi.w	$r5,$r0,135(0x87)
1c004764:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004768:	02b72084 	addi.w	$r4,$r4,-568(0xdc8)
1c00476c:	57d437ff 	bl	-11212(0xfffd434) # 1c001ba0 <myprintf>
1c004770:	14010005 	lu12i.w	$r5,2048(0x800)
1c004774:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004778:	03808184 	ori	$r4,$r12,0x20
1c00477c:	57f0e3ff 	bl	-3872(0xffff0e0) # 1c00385c <EXTI_ClearITPendingBit>
1c004780:	03400000 	andi	$r0,$r0,0x0
1c004784:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004788:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00478c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004790:	4c000020 	jirl	$r0,$r1,0

1c004794 <exti_gpiod0_irq_handler>:
exti_gpiod0_irq_handler():
1c004794:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004798:	29803061 	st.w	$r1,$r3,12(0xc)
1c00479c:	29802076 	st.w	$r22,$r3,8(0x8)
1c0047a0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0047a4:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0047a8:	0284f0c6 	addi.w	$r6,$r6,316(0x13c)
1c0047ac:	02823005 	addi.w	$r5,$r0,140(0x8c)
1c0047b0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0047b4:	02b5f084 	addi.w	$r4,$r4,-644(0xd7c)
1c0047b8:	57d3ebff 	bl	-11288(0xfffd3e8) # 1c001ba0 <myprintf>
1c0047bc:	14020005 	lu12i.w	$r5,4096(0x1000)
1c0047c0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0047c4:	03808184 	ori	$r4,$r12,0x20
1c0047c8:	57f097ff 	bl	-3948(0xffff094) # 1c00385c <EXTI_ClearITPendingBit>
1c0047cc:	03400000 	andi	$r0,$r0,0x0
1c0047d0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0047d4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0047d8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0047dc:	4c000020 	jirl	$r0,$r1,0

1c0047e0 <exti_gpiod1_irq_handler>:
exti_gpiod1_irq_handler():
1c0047e0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0047e4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0047e8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0047ec:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0047f0:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0047f4:	028420c6 	addi.w	$r6,$r6,264(0x108)
1c0047f8:	02824405 	addi.w	$r5,$r0,145(0x91)
1c0047fc:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004800:	02b4c084 	addi.w	$r4,$r4,-720(0xd30)
1c004804:	57d39fff 	bl	-11364(0xfffd39c) # 1c001ba0 <myprintf>
1c004808:	14040005 	lu12i.w	$r5,8192(0x2000)
1c00480c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004810:	03808184 	ori	$r4,$r12,0x20
1c004814:	57f04bff 	bl	-4024(0xffff048) # 1c00385c <EXTI_ClearITPendingBit>
1c004818:	03400000 	andi	$r0,$r0,0x0
1c00481c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004820:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004824:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004828:	4c000020 	jirl	$r0,$r1,0

1c00482c <exti_gpiod2_irq_handler>:
exti_gpiod2_irq_handler():
1c00482c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004830:	29803061 	st.w	$r1,$r3,12(0xc)
1c004834:	29802076 	st.w	$r22,$r3,8(0x8)
1c004838:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00483c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004840:	028350c6 	addi.w	$r6,$r6,212(0xd4)
1c004844:	02825805 	addi.w	$r5,$r0,150(0x96)
1c004848:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00484c:	02b39084 	addi.w	$r4,$r4,-796(0xce4)
1c004850:	57d353ff 	bl	-11440(0xfffd350) # 1c001ba0 <myprintf>
1c004854:	14080005 	lu12i.w	$r5,16384(0x4000)
1c004858:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00485c:	03808184 	ori	$r4,$r12,0x20
1c004860:	57efffff 	bl	-4100(0xfffeffc) # 1c00385c <EXTI_ClearITPendingBit>
1c004864:	03400000 	andi	$r0,$r0,0x0
1c004868:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00486c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004870:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004874:	4c000020 	jirl	$r0,$r1,0

1c004878 <exti_gpiod3_irq_handler>:
exti_gpiod3_irq_handler():
1c004878:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00487c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004880:	29802076 	st.w	$r22,$r3,8(0x8)
1c004884:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004888:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00488c:	028280c6 	addi.w	$r6,$r6,160(0xa0)
1c004890:	02826c05 	addi.w	$r5,$r0,155(0x9b)
1c004894:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004898:	02b26084 	addi.w	$r4,$r4,-872(0xc98)
1c00489c:	57d307ff 	bl	-11516(0xfffd304) # 1c001ba0 <myprintf>
1c0048a0:	14100005 	lu12i.w	$r5,32768(0x8000)
1c0048a4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0048a8:	03808184 	ori	$r4,$r12,0x20
1c0048ac:	57efb3ff 	bl	-4176(0xfffefb0) # 1c00385c <EXTI_ClearITPendingBit>
1c0048b0:	03400000 	andi	$r0,$r0,0x0
1c0048b4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0048b8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0048bc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0048c0:	4c000020 	jirl	$r0,$r1,0

1c0048c4 <exti_gpiod4_irq_handler>:
exti_gpiod4_irq_handler():
1c0048c4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0048c8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0048cc:	29802076 	st.w	$r22,$r3,8(0x8)
1c0048d0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0048d4:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0048d8:	0281b0c6 	addi.w	$r6,$r6,108(0x6c)
1c0048dc:	02828005 	addi.w	$r5,$r0,160(0xa0)
1c0048e0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0048e4:	02b13084 	addi.w	$r4,$r4,-948(0xc4c)
1c0048e8:	57d2bbff 	bl	-11592(0xfffd2b8) # 1c001ba0 <myprintf>
1c0048ec:	14200005 	lu12i.w	$r5,65536(0x10000)
1c0048f0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0048f4:	03808184 	ori	$r4,$r12,0x20
1c0048f8:	57ef67ff 	bl	-4252(0xfffef64) # 1c00385c <EXTI_ClearITPendingBit>
1c0048fc:	03400000 	andi	$r0,$r0,0x0
1c004900:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004904:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004908:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00490c:	4c000020 	jirl	$r0,$r1,0

1c004910 <exti_gpiod5_irq_handler>:
exti_gpiod5_irq_handler():
1c004910:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004914:	29803061 	st.w	$r1,$r3,12(0xc)
1c004918:	29802076 	st.w	$r22,$r3,8(0x8)
1c00491c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004920:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004924:	0280e0c6 	addi.w	$r6,$r6,56(0x38)
1c004928:	02829805 	addi.w	$r5,$r0,166(0xa6)
1c00492c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004930:	02b00084 	addi.w	$r4,$r4,-1024(0xc00)
1c004934:	57d26fff 	bl	-11668(0xfffd26c) # 1c001ba0 <myprintf>
1c004938:	14400005 	lu12i.w	$r5,131072(0x20000)
1c00493c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004940:	03808184 	ori	$r4,$r12,0x20
1c004944:	57ef1bff 	bl	-4328(0xfffef18) # 1c00385c <EXTI_ClearITPendingBit>
1c004948:	03400000 	andi	$r0,$r0,0x0
1c00494c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004950:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004954:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004958:	4c000020 	jirl	$r0,$r1,0

1c00495c <exti_gpiod6_irq_handler>:
exti_gpiod6_irq_handler():
1c00495c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004960:	29803061 	st.w	$r1,$r3,12(0xc)
1c004964:	29802076 	st.w	$r22,$r3,8(0x8)
1c004968:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00496c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004970:	028010c6 	addi.w	$r6,$r6,4(0x4)
1c004974:	0282ac05 	addi.w	$r5,$r0,171(0xab)
1c004978:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00497c:	02aed084 	addi.w	$r4,$r4,-1100(0xbb4)
1c004980:	57d223ff 	bl	-11744(0xfffd220) # 1c001ba0 <myprintf>
1c004984:	14800005 	lu12i.w	$r5,262144(0x40000)
1c004988:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00498c:	03808184 	ori	$r4,$r12,0x20
1c004990:	57eecfff 	bl	-4404(0xfffeecc) # 1c00385c <EXTI_ClearITPendingBit>
1c004994:	03400000 	andi	$r0,$r0,0x0
1c004998:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00499c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0049a0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0049a4:	4c000020 	jirl	$r0,$r1,0

1c0049a8 <exti_gpiod7_irq_handler>:
exti_gpiod7_irq_handler():
1c0049a8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0049ac:	29803061 	st.w	$r1,$r3,12(0xc)
1c0049b0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0049b4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0049b8:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0049bc:	02bf40c6 	addi.w	$r6,$r6,-48(0xfd0)
1c0049c0:	0282c005 	addi.w	$r5,$r0,176(0xb0)
1c0049c4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0049c8:	02ada084 	addi.w	$r4,$r4,-1176(0xb68)
1c0049cc:	57d1d7ff 	bl	-11820(0xfffd1d4) # 1c001ba0 <myprintf>
1c0049d0:	15000005 	lu12i.w	$r5,-524288(0x80000)
1c0049d4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0049d8:	03808184 	ori	$r4,$r12,0x20
1c0049dc:	57ee83ff 	bl	-4480(0xfffee80) # 1c00385c <EXTI_ClearITPendingBit>
1c0049e0:	03400000 	andi	$r0,$r0,0x0
1c0049e4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0049e8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0049ec:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0049f0:	4c000020 	jirl	$r0,$r1,0

1c0049f4 <ext_handler>:
ext_handler():
1c0049f4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0049f8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0049fc:	29806076 	st.w	$r22,$r3,24(0x18)
1c004a00:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004a04:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004a08:	0380f18c 	ori	$r12,$r12,0x3c
1c004a0c:	1402000d 	lu12i.w	$r13,4096(0x1000)
1c004a10:	2980018d 	st.w	$r13,$r12,0
1c004a14:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004a18:	0380818c 	ori	$r12,$r12,0x20
1c004a1c:	2880318c 	ld.w	$r12,$r12,12(0xc)
1c004a20:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004a24:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004a28:	0380818c 	ori	$r12,$r12,0x20
1c004a2c:	2880018c 	ld.w	$r12,$r12,0
1c004a30:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c004a34:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c004a38:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c004a3c:	0014b1ac 	and	$r12,$r13,$r12
1c004a40:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004a44:	03400000 	andi	$r0,$r0,0x0
1c004a48:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004a4c:	50004000 	b	64(0x40) # 1c004a8c <ext_handler+0x98>
1c004a50:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c004a54:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004a58:	0017b1ac 	srl.w	$r12,$r13,$r12
1c004a5c:	0340058c 	andi	$r12,$r12,0x1
1c004a60:	40002180 	beqz	$r12,32(0x20) # 1c004a80 <ext_handler+0x8c>
1c004a64:	1c00006d 	pcaddu12i	$r13,3(0x3)
1c004a68:	02ade1ad 	addi.w	$r13,$r13,-1160(0xb78)
1c004a6c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004a70:	0040898c 	slli.w	$r12,$r12,0x2
1c004a74:	001031ac 	add.w	$r12,$r13,$r12
1c004a78:	2880018c 	ld.w	$r12,$r12,0
1c004a7c:	4c000181 	jirl	$r1,$r12,0
1c004a80:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004a84:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004a88:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004a8c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004a90:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c004a94:	6fffbd8d 	bgeu	$r12,$r13,-68(0x3ffbc) # 1c004a50 <ext_handler+0x5c>
1c004a98:	03400000 	andi	$r0,$r0,0x0
1c004a9c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004aa0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004aa4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004aa8:	4c000020 	jirl	$r0,$r1,0

1c004aac <TIMER_WAKE_INT>:
TIMER_WAKE_INT():
1c004aac:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004ab0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004ab4:	29806076 	st.w	$r22,$r3,24(0x18)
1c004ab8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004abc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004ac0:	0380f18c 	ori	$r12,$r12,0x3c
1c004ac4:	1400020d 	lu12i.w	$r13,16(0x10)
1c004ac8:	2980018d 	st.w	$r13,$r12,0
1c004acc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004ad0:	0380118c 	ori	$r12,$r12,0x4
1c004ad4:	2880018c 	ld.w	$r12,$r12,0
1c004ad8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004adc:	57eed3ff 	bl	-4400(0xfffeed0) # 1c0039ac <WDG_DogFeed>
1c004ae0:	02801804 	addi.w	$r4,$r0,6(0x6)
1c004ae4:	57e7afff 	bl	-6228(0xfffe7ac) # 1c003290 <Wake_Set>
1c004ae8:	03400000 	andi	$r0,$r0,0x0
1c004aec:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004af0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004af4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004af8:	4c000020 	jirl	$r0,$r1,0

1c004afc <TOUCH>:
TOUCH():
1c004afc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004b00:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004b04:	29806076 	st.w	$r22,$r3,24(0x18)
1c004b08:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004b0c:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c004b10:	0380118c 	ori	$r12,$r12,0x4
1c004b14:	2880018c 	ld.w	$r12,$r12,0
1c004b18:	0044c18c 	srli.w	$r12,$r12,0x10
1c004b1c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c004b20:	037ffd8c 	andi	$r12,$r12,0xfff
1c004b24:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c004b28:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c004b2c:	0380118c 	ori	$r12,$r12,0x4
1c004b30:	2880018c 	ld.w	$r12,$r12,0
1c004b34:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004b38:	03403d8c 	andi	$r12,$r12,0xf
1c004b3c:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c004b40:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004b44:	0380f18c 	ori	$r12,$r12,0x3c
1c004b48:	1400040d 	lu12i.w	$r13,32(0x20)
1c004b4c:	2980018d 	st.w	$r13,$r12,0
1c004b50:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c004b54:	0380118c 	ori	$r12,$r12,0x4
1c004b58:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c004b5c:	2980018d 	st.w	$r13,$r12,0
1c004b60:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c004b64:	00150184 	move	$r4,$r12
1c004b68:	57f187ff 	bl	-3708(0xffff184) # 1c003cec <Printf_KeyType>
1c004b6c:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c004b70:	00150184 	move	$r4,$r12
1c004b74:	57f0ffff 	bl	-3844(0xffff0fc) # 1c003c70 <Printf_KeyChannel>
1c004b78:	57f203ff 	bl	-3584(0xffff200) # 1c003d78 <Printf_KeyVal>
1c004b7c:	03400000 	andi	$r0,$r0,0x0
1c004b80:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004b84:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004b88:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004b8c:	4c000020 	jirl	$r0,$r1,0

1c004b90 <UART2_INT>:
UART2_INT():
1c004b90:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004b94:	29807076 	st.w	$r22,$r3,28(0x1c)
1c004b98:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004b9c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004ba0:	0380f18c 	ori	$r12,$r12,0x3c
1c004ba4:	1400080d 	lu12i.w	$r13,64(0x40)
1c004ba8:	2980018d 	st.w	$r13,$r12,0
1c004bac:	157fd18c 	lu12i.w	$r12,-262516(0xbfe8c)
1c004bb0:	0380098c 	ori	$r12,$r12,0x2
1c004bb4:	2a00018c 	ld.bu	$r12,$r12,0
1c004bb8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004bbc:	03400000 	andi	$r0,$r0,0x0
1c004bc0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c004bc4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004bc8:	4c000020 	jirl	$r0,$r1,0

1c004bcc <BAT_FAIL>:
BAT_FAIL():
1c004bcc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004bd0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004bd4:	29806076 	st.w	$r22,$r3,24(0x18)
1c004bd8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004bdc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004be0:	0380118c 	ori	$r12,$r12,0x4
1c004be4:	2880018c 	ld.w	$r12,$r12,0
1c004be8:	0044cd8c 	srli.w	$r12,$r12,0x13
1c004bec:	03407d8c 	andi	$r12,$r12,0x1f
1c004bf0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004bf4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004bf8:	0380118c 	ori	$r12,$r12,0x4
1c004bfc:	2880018e 	ld.w	$r14,$r12,0
1c004c00:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004c04:	0380f18c 	ori	$r12,$r12,0x3c
1c004c08:	1401f00d 	lu12i.w	$r13,3968(0xf80)
1c004c0c:	0014b5cd 	and	$r13,$r14,$r13
1c004c10:	2980018d 	st.w	$r13,$r12,0
1c004c14:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004c18:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c004c1c:	6800718d 	bltu	$r12,$r13,112(0x70) # 1c004c8c <BAT_FAIL+0xc0>
1c004c20:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004c24:	0040898d 	slli.w	$r13,$r12,0x2
1c004c28:	1c00006c 	pcaddu12i	$r12,3(0x3)
1c004c2c:	02a8d18c 	addi.w	$r12,$r12,-1484(0xa34)
1c004c30:	001031ac 	add.w	$r12,$r13,$r12
1c004c34:	2880018c 	ld.w	$r12,$r12,0
1c004c38:	4c000180 	jirl	$r0,$r12,0
1c004c3c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004c40:	02a4d084 	addi.w	$r4,$r4,-1740(0x934)
1c004c44:	57cf5fff 	bl	-12452(0xfffcf5c) # 1c001ba0 <myprintf>
1c004c48:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004c4c:	0380118c 	ori	$r12,$r12,0x4
1c004c50:	29800180 	st.w	$r0,$r12,0
1c004c54:	50003c00 	b	60(0x3c) # 1c004c90 <BAT_FAIL+0xc4>
1c004c58:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004c5c:	02a50084 	addi.w	$r4,$r4,-1728(0x940)
1c004c60:	57cf43ff 	bl	-12480(0xfffcf40) # 1c001ba0 <myprintf>
1c004c64:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004c68:	0380118c 	ori	$r12,$r12,0x4
1c004c6c:	2880018e 	ld.w	$r14,$r12,0
1c004c70:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004c74:	0380118c 	ori	$r12,$r12,0x4
1c004c78:	15fffeed 	lu12i.w	$r13,-9(0xffff7)
1c004c7c:	03bffdad 	ori	$r13,$r13,0xfff
1c004c80:	0014b5cd 	and	$r13,$r14,$r13
1c004c84:	2980018d 	st.w	$r13,$r12,0
1c004c88:	50000800 	b	8(0x8) # 1c004c90 <BAT_FAIL+0xc4>
1c004c8c:	03400000 	andi	$r0,$r0,0x0
1c004c90:	03400000 	andi	$r0,$r0,0x0
1c004c94:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004c98:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004c9c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004ca0:	4c000020 	jirl	$r0,$r1,0

1c004ca4 <intc_handler>:
intc_handler():
1c004ca4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004ca8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004cac:	29806076 	st.w	$r22,$r3,24(0x18)
1c004cb0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004cb4:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004cb8:	0380158c 	ori	$r12,$r12,0x5
1c004cbc:	2a00018c 	ld.bu	$r12,$r12,0
1c004cc0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004cc4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004cc8:	0340058c 	andi	$r12,$r12,0x1
1c004ccc:	40001d80 	beqz	$r12,28(0x1c) # 1c004ce8 <intc_handler+0x44>
1c004cd0:	02840004 	addi.w	$r4,$r0,256(0x100)
1c004cd4:	57f2fbff 	bl	-3336(0xffff2f8) # 1c003fcc <TIM_GetITStatus>
1c004cd8:	0015008c 	move	$r12,$r4
1c004cdc:	40000d80 	beqz	$r12,12(0xc) # 1c004ce8 <intc_handler+0x44>
1c004ce0:	02840004 	addi.w	$r4,$r0,256(0x100)
1c004ce4:	57f337ff 	bl	-3276(0xffff334) # 1c004018 <TIM_ClearIT>
1c004ce8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004cec:	0340118c 	andi	$r12,$r12,0x4
1c004cf0:	40001580 	beqz	$r12,20(0x14) # 1c004d04 <intc_handler+0x60>
1c004cf4:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004cf8:	03800d8c 	ori	$r12,$r12,0x3
1c004cfc:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c004d00:	2900018d 	st.b	$r13,$r12,0
1c004d04:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004d08:	0340218c 	andi	$r12,$r12,0x8
1c004d0c:	40007d80 	beqz	$r12,124(0x7c) # 1c004d88 <intc_handler+0xe4>
1c004d10:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c004d14:	0380098c 	ori	$r12,$r12,0x2
1c004d18:	2a00018c 	ld.bu	$r12,$r12,0
1c004d1c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004d20:	0340118c 	andi	$r12,$r12,0x4
1c004d24:	40005580 	beqz	$r12,84(0x54) # 1c004d78 <intc_handler+0xd4>
1c004d28:	50003800 	b	56(0x38) # 1c004d60 <intc_handler+0xbc>
1c004d2c:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c004d30:	57dd33ff 	bl	-8912(0xfffdd30) # 1c002a60 <UART_ReceiveData>
1c004d34:	0015008c 	move	$r12,$r4
1c004d38:	0015018d 	move	$r13,$r12
1c004d3c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004d40:	028b118c 	addi.w	$r12,$r12,708(0x2c4)
1c004d44:	2900018d 	st.b	$r13,$r12,0
1c004d48:	02800406 	addi.w	$r6,$r0,1(0x1)
1c004d4c:	1cc7ff65 	pcaddu12i	$r5,409595(0x63ffb)
1c004d50:	028ad0a5 	addi.w	$r5,$r5,692(0x2b4)
1c004d54:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c004d58:	288b0084 	ld.w	$r4,$r4,704(0x2c0)
1c004d5c:	541dec00 	bl	7660(0x1dec) # 1c006b48 <Queue_Wirte>
1c004d60:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c004d64:	0380158c 	ori	$r12,$r12,0x5
1c004d68:	2a00018c 	ld.bu	$r12,$r12,0
1c004d6c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004d70:	0340058c 	andi	$r12,$r12,0x1
1c004d74:	47ffb99f 	bnez	$r12,-72(0x7fffb8) # 1c004d2c <intc_handler+0x88>
1c004d78:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004d7c:	03800d8c 	ori	$r12,$r12,0x3
1c004d80:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c004d84:	2900018d 	st.b	$r13,$r12,0
1c004d88:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004d8c:	03800d8c 	ori	$r12,$r12,0x3
1c004d90:	02bffc0d 	addi.w	$r13,$r0,-1(0xfff)
1c004d94:	2900018d 	st.b	$r13,$r12,0
1c004d98:	03400000 	andi	$r0,$r0,0x0
1c004d9c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004da0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004da4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004da8:	4c000020 	jirl	$r0,$r1,0

1c004dac <TIMER_HANDLER>:
TIMER_HANDLER():
1c004dac:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004db0:	29803061 	st.w	$r1,$r3,12(0xc)
1c004db4:	29802076 	st.w	$r22,$r3,8(0x8)
1c004db8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004dbc:	57e4b3ff 	bl	-6992(0xfffe4b0) # 1c00326c <Set_Timer_clear>
1c004dc0:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004dc4:	029ff084 	addi.w	$r4,$r4,2044(0x7fc)
1c004dc8:	57cddbff 	bl	-12840(0xfffcdd8) # 1c001ba0 <myprintf>
1c004dcc:	57e483ff 	bl	-7040(0xfffe480) # 1c00324c <Set_Timer_stop>
1c004dd0:	03400000 	andi	$r0,$r0,0x0
1c004dd4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004dd8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004ddc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004de0:	4c000020 	jirl	$r0,$r1,0

1c004de4 <IIC_Delay>:
IIC_Delay():
1c004de4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004de8:	29807076 	st.w	$r22,$r3,28(0x1c)
1c004dec:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004df0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c004df4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004df8:	50001000 	b	16(0x10) # 1c004e08 <IIC_Delay+0x24>
1c004dfc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004e00:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c004e04:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004e08:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004e0c:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1c004dfc <IIC_Delay+0x18>
1c004e10:	03400000 	andi	$r0,$r0,0x0
1c004e14:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c004e18:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004e1c:	4c000020 	jirl	$r0,$r1,0

1c004e20 <IIC_Init>:
IIC_Init():
1c004e20:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004e24:	29803061 	st.w	$r1,$r3,12(0xc)
1c004e28:	29802076 	st.w	$r22,$r3,8(0x8)
1c004e2c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004e30:	00150005 	move	$r5,$r0
1c004e34:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004e38:	57c82bff 	bl	-14296(0xfffc828) # 1c001660 <gpio_pin_remap>
1c004e3c:	00150005 	move	$r5,$r0
1c004e40:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c004e44:	57c81fff 	bl	-14308(0xfffc81c) # 1c001660 <gpio_pin_remap>
1c004e48:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004e4c:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004e50:	57ca1fff 	bl	-13796(0xfffca1c) # 1c00186c <gpio_set_direction>
1c004e54:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004e58:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c004e5c:	57ca13ff 	bl	-13808(0xfffca10) # 1c00186c <gpio_set_direction>
1c004e60:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004e64:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c004e68:	57c783ff 	bl	-14464(0xfffc780) # 1c0015e8 <gpio_write_pin>
1c004e6c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004e70:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004e74:	57c777ff 	bl	-14476(0xfffc774) # 1c0015e8 <gpio_write_pin>
1c004e78:	03400000 	andi	$r0,$r0,0x0
1c004e7c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004e80:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004e84:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004e88:	4c000020 	jirl	$r0,$r1,0

1c004e8c <SDA_IN>:
SDA_IN():
1c004e8c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004e90:	29803061 	st.w	$r1,$r3,12(0xc)
1c004e94:	29802076 	st.w	$r22,$r3,8(0x8)
1c004e98:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004e9c:	00150005 	move	$r5,$r0
1c004ea0:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004ea4:	57c9cbff 	bl	-13880(0xfffc9c8) # 1c00186c <gpio_set_direction>
1c004ea8:	03400000 	andi	$r0,$r0,0x0
1c004eac:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004eb0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004eb4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004eb8:	4c000020 	jirl	$r0,$r1,0

1c004ebc <SDA_OUT>:
SDA_OUT():
1c004ebc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004ec0:	29803061 	st.w	$r1,$r3,12(0xc)
1c004ec4:	29802076 	st.w	$r22,$r3,8(0x8)
1c004ec8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004ecc:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004ed0:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004ed4:	57c99bff 	bl	-13928(0xfffc998) # 1c00186c <gpio_set_direction>
1c004ed8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004edc:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004ee0:	57c70bff 	bl	-14584(0xfffc708) # 1c0015e8 <gpio_write_pin>
1c004ee4:	03400000 	andi	$r0,$r0,0x0
1c004ee8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004eec:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004ef0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004ef4:	4c000020 	jirl	$r0,$r1,0

1c004ef8 <IIC_Start>:
IIC_Start():
1c004ef8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004efc:	29803061 	st.w	$r1,$r3,12(0xc)
1c004f00:	29802076 	st.w	$r22,$r3,8(0x8)
1c004f04:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004f08:	57ffb7ff 	bl	-76(0xfffffb4) # 1c004ebc <SDA_OUT>
1c004f0c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004f10:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004f14:	57c6d7ff 	bl	-14636(0xfffc6d4) # 1c0015e8 <gpio_write_pin>
1c004f18:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004f1c:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c004f20:	57c6cbff 	bl	-14648(0xfffc6c8) # 1c0015e8 <gpio_write_pin>
1c004f24:	57fec3ff 	bl	-320(0xffffec0) # 1c004de4 <IIC_Delay>
1c004f28:	00150005 	move	$r5,$r0
1c004f2c:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004f30:	57c6bbff 	bl	-14664(0xfffc6b8) # 1c0015e8 <gpio_write_pin>
1c004f34:	57feb3ff 	bl	-336(0xffffeb0) # 1c004de4 <IIC_Delay>
1c004f38:	00150005 	move	$r5,$r0
1c004f3c:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c004f40:	57c6abff 	bl	-14680(0xfffc6a8) # 1c0015e8 <gpio_write_pin>
1c004f44:	03400000 	andi	$r0,$r0,0x0
1c004f48:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004f4c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004f50:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004f54:	4c000020 	jirl	$r0,$r1,0

1c004f58 <IIC_Stop>:
IIC_Stop():
1c004f58:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004f5c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004f60:	29802076 	st.w	$r22,$r3,8(0x8)
1c004f64:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004f68:	57ff57ff 	bl	-172(0xfffff54) # 1c004ebc <SDA_OUT>
1c004f6c:	00150005 	move	$r5,$r0
1c004f70:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c004f74:	57c677ff 	bl	-14732(0xfffc674) # 1c0015e8 <gpio_write_pin>
1c004f78:	00150005 	move	$r5,$r0
1c004f7c:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004f80:	57c66bff 	bl	-14744(0xfffc668) # 1c0015e8 <gpio_write_pin>
1c004f84:	57fe63ff 	bl	-416(0xffffe60) # 1c004de4 <IIC_Delay>
1c004f88:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004f8c:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c004f90:	57c65bff 	bl	-14760(0xfffc658) # 1c0015e8 <gpio_write_pin>
1c004f94:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004f98:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004f9c:	57c64fff 	bl	-14772(0xfffc64c) # 1c0015e8 <gpio_write_pin>
1c004fa0:	57fe47ff 	bl	-444(0xffffe44) # 1c004de4 <IIC_Delay>
1c004fa4:	03400000 	andi	$r0,$r0,0x0
1c004fa8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004fac:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004fb0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004fb4:	4c000020 	jirl	$r0,$r1,0

1c004fb8 <IIC_Wait_Ack>:
IIC_Wait_Ack():
1c004fb8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004fbc:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004fc0:	29806076 	st.w	$r22,$r3,24(0x18)
1c004fc4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004fc8:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c004fcc:	57fec3ff 	bl	-320(0xffffec0) # 1c004e8c <SDA_IN>
1c004fd0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004fd4:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004fd8:	57c613ff 	bl	-14832(0xfffc610) # 1c0015e8 <gpio_write_pin>
1c004fdc:	57fe0bff 	bl	-504(0xffffe08) # 1c004de4 <IIC_Delay>
1c004fe0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004fe4:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c004fe8:	57c603ff 	bl	-14848(0xfffc600) # 1c0015e8 <gpio_write_pin>
1c004fec:	57fdfbff 	bl	-520(0xffffdf8) # 1c004de4 <IIC_Delay>
1c004ff0:	50002800 	b	40(0x28) # 1c005018 <IIC_Wait_Ack+0x60>
1c004ff4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004ff8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004ffc:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005000:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005004:	0283e80c 	addi.w	$r12,$r0,250(0xfa)
1c005008:	6c00118d 	bgeu	$r12,$r13,16(0x10) # 1c005018 <IIC_Wait_Ack+0x60>
1c00500c:	57ff4fff 	bl	-180(0xfffff4c) # 1c004f58 <IIC_Stop>
1c005010:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005014:	50002400 	b	36(0x24) # 1c005038 <IIC_Wait_Ack+0x80>
1c005018:	02800404 	addi.w	$r4,$r0,1(0x1)
1c00501c:	57c57fff 	bl	-14980(0xfffc57c) # 1c001598 <gpio_get_pin>
1c005020:	0015008c 	move	$r12,$r4
1c005024:	47ffd19f 	bnez	$r12,-48(0x7fffd0) # 1c004ff4 <IIC_Wait_Ack+0x3c>
1c005028:	00150005 	move	$r5,$r0
1c00502c:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c005030:	57c5bbff 	bl	-14920(0xfffc5b8) # 1c0015e8 <gpio_write_pin>
1c005034:	0015000c 	move	$r12,$r0
1c005038:	00150184 	move	$r4,$r12
1c00503c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005040:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005044:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005048:	4c000020 	jirl	$r0,$r1,0

1c00504c <IIC_Send_Byte>:
IIC_Send_Byte():
1c00504c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005050:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005054:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005058:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00505c:	0015008c 	move	$r12,$r4
1c005060:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c005064:	57fe5bff 	bl	-424(0xffffe58) # 1c004ebc <SDA_OUT>
1c005068:	00150005 	move	$r5,$r0
1c00506c:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c005070:	57c57bff 	bl	-14984(0xfffc578) # 1c0015e8 <gpio_write_pin>
1c005074:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005078:	50006000 	b	96(0x60) # 1c0050d8 <IIC_Send_Byte+0x8c>
1c00507c:	283f7ecc 	ld.b	$r12,$r22,-33(0xfdf)
1c005080:	64001580 	bge	$r12,$r0,20(0x14) # 1c005094 <IIC_Send_Byte+0x48>
1c005084:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005088:	02800404 	addi.w	$r4,$r0,1(0x1)
1c00508c:	57c55fff 	bl	-15012(0xfffc55c) # 1c0015e8 <gpio_write_pin>
1c005090:	50001000 	b	16(0x10) # 1c0050a0 <IIC_Send_Byte+0x54>
1c005094:	00150005 	move	$r5,$r0
1c005098:	02800404 	addi.w	$r4,$r0,1(0x1)
1c00509c:	57c54fff 	bl	-15028(0xfffc54c) # 1c0015e8 <gpio_write_pin>
1c0050a0:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c0050a4:	0040858c 	slli.w	$r12,$r12,0x1
1c0050a8:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c0050ac:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0050b0:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c0050b4:	57c537ff 	bl	-15052(0xfffc534) # 1c0015e8 <gpio_write_pin>
1c0050b8:	57fd2fff 	bl	-724(0xffffd2c) # 1c004de4 <IIC_Delay>
1c0050bc:	00150005 	move	$r5,$r0
1c0050c0:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c0050c4:	57c527ff 	bl	-15068(0xfffc524) # 1c0015e8 <gpio_write_pin>
1c0050c8:	57fd1fff 	bl	-740(0xffffd1c) # 1c004de4 <IIC_Delay>
1c0050cc:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0050d0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0050d4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0050d8:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0050dc:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c0050e0:	6fff9d8d 	bgeu	$r12,$r13,-100(0x3ff9c) # 1c00507c <IIC_Send_Byte+0x30>
1c0050e4:	03400000 	andi	$r0,$r0,0x0
1c0050e8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0050ec:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0050f0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0050f4:	4c000020 	jirl	$r0,$r1,0

1c0050f8 <OLED_Hardware_Init>:
OLED_Hardware_Init():
1c0050f8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0050fc:	29803061 	st.w	$r1,$r3,12(0xc)
1c005100:	29802076 	st.w	$r22,$r3,8(0x8)
1c005104:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005108:	57fd1bff 	bl	-744(0xffffd18) # 1c004e20 <IIC_Init>
1c00510c:	03400000 	andi	$r0,$r0,0x0
1c005110:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005114:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005118:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00511c:	4c000020 	jirl	$r0,$r1,0

1c005120 <OLED_WR_Byte>:
OLED_WR_Byte():
1c005120:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005124:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005128:	29806076 	st.w	$r22,$r3,24(0x18)
1c00512c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005130:	0015008c 	move	$r12,$r4
1c005134:	001500ad 	move	$r13,$r5
1c005138:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00513c:	001501ac 	move	$r12,$r13
1c005140:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c005144:	57fdb7ff 	bl	-588(0xffffdb4) # 1c004ef8 <IIC_Start>
1c005148:	0281e004 	addi.w	$r4,$r0,120(0x78)
1c00514c:	57ff03ff 	bl	-256(0xfffff00) # 1c00504c <IIC_Send_Byte>
1c005150:	57fe6bff 	bl	-408(0xffffe68) # 1c004fb8 <IIC_Wait_Ack>
1c005154:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005158:	00150184 	move	$r4,$r12
1c00515c:	57fef3ff 	bl	-272(0xffffef0) # 1c00504c <IIC_Send_Byte>
1c005160:	57fe5bff 	bl	-424(0xffffe58) # 1c004fb8 <IIC_Wait_Ack>
1c005164:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005168:	00150184 	move	$r4,$r12
1c00516c:	57fee3ff 	bl	-288(0xffffee0) # 1c00504c <IIC_Send_Byte>
1c005170:	57fe4bff 	bl	-440(0xffffe48) # 1c004fb8 <IIC_Wait_Ack>
1c005174:	57fde7ff 	bl	-540(0xffffde4) # 1c004f58 <IIC_Stop>
1c005178:	03400000 	andi	$r0,$r0,0x0
1c00517c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005180:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005184:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005188:	4c000020 	jirl	$r0,$r1,0

1c00518c <OLED_Set_Pos>:
OLED_Set_Pos():
1c00518c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005190:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005194:	29806076 	st.w	$r22,$r3,24(0x18)
1c005198:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00519c:	0015008c 	move	$r12,$r4
1c0051a0:	001500ad 	move	$r13,$r5
1c0051a4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0051a8:	001501ac 	move	$r12,$r13
1c0051ac:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c0051b0:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0051b4:	02bec18c 	addi.w	$r12,$r12,-80(0xfb0)
1c0051b8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0051bc:	00150005 	move	$r5,$r0
1c0051c0:	00150184 	move	$r4,$r12
1c0051c4:	57ff5fff 	bl	-164(0xfffff5c) # 1c005120 <OLED_WR_Byte>
1c0051c8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0051cc:	0044918c 	srli.w	$r12,$r12,0x4
1c0051d0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0051d4:	0380418c 	ori	$r12,$r12,0x10
1c0051d8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0051dc:	00150005 	move	$r5,$r0
1c0051e0:	00150184 	move	$r4,$r12
1c0051e4:	57ff3fff 	bl	-196(0xfffff3c) # 1c005120 <OLED_WR_Byte>
1c0051e8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0051ec:	03403d8c 	andi	$r12,$r12,0xf
1c0051f0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0051f4:	00150005 	move	$r5,$r0
1c0051f8:	00150184 	move	$r4,$r12
1c0051fc:	57ff27ff 	bl	-220(0xfffff24) # 1c005120 <OLED_WR_Byte>
1c005200:	03400000 	andi	$r0,$r0,0x0
1c005204:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005208:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00520c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005210:	4c000020 	jirl	$r0,$r1,0

1c005214 <OLED_Clear>:
OLED_Clear():
1c005214:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005218:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00521c:	29806076 	st.w	$r22,$r3,24(0x18)
1c005220:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005224:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005228:	50006800 	b	104(0x68) # 1c005290 <OLED_Clear+0x7c>
1c00522c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005230:	02bec18c 	addi.w	$r12,$r12,-80(0xfb0)
1c005234:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005238:	00150005 	move	$r5,$r0
1c00523c:	00150184 	move	$r4,$r12
1c005240:	57fee3ff 	bl	-288(0xffffee0) # 1c005120 <OLED_WR_Byte>
1c005244:	00150005 	move	$r5,$r0
1c005248:	02800804 	addi.w	$r4,$r0,2(0x2)
1c00524c:	57fed7ff 	bl	-300(0xffffed4) # 1c005120 <OLED_WR_Byte>
1c005250:	00150005 	move	$r5,$r0
1c005254:	02804004 	addi.w	$r4,$r0,16(0x10)
1c005258:	57fecbff 	bl	-312(0xffffec8) # 1c005120 <OLED_WR_Byte>
1c00525c:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c005260:	50001c00 	b	28(0x1c) # 1c00527c <OLED_Clear+0x68>
1c005264:	02810005 	addi.w	$r5,$r0,64(0x40)
1c005268:	00150004 	move	$r4,$r0
1c00526c:	57feb7ff 	bl	-332(0xffffeb4) # 1c005120 <OLED_WR_Byte>
1c005270:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005274:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005278:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c00527c:	283fbacc 	ld.b	$r12,$r22,-18(0xfee)
1c005280:	67ffe580 	bge	$r12,$r0,-28(0x3ffe4) # 1c005264 <OLED_Clear+0x50>
1c005284:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005288:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00528c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005290:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005294:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c005298:	6fff958d 	bgeu	$r12,$r13,-108(0x3ff94) # 1c00522c <OLED_Clear+0x18>
1c00529c:	03400000 	andi	$r0,$r0,0x0
1c0052a0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0052a4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0052a8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0052ac:	4c000020 	jirl	$r0,$r1,0

1c0052b0 <OLED_Init>:
OLED_Init():
1c0052b0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0052b4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0052b8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0052bc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0052c0:	57fe3bff 	bl	-456(0xffffe38) # 1c0050f8 <OLED_Hardware_Init>
1c0052c4:	02819004 	addi.w	$r4,$r0,100(0x64)
1c0052c8:	57e387ff 	bl	-7292(0xfffe384) # 1c00364c <delay_ms>
1c0052cc:	57ff4bff 	bl	-184(0xfffff48) # 1c005214 <OLED_Clear>
1c0052d0:	00150005 	move	$r5,$r0
1c0052d4:	00150004 	move	$r4,$r0
1c0052d8:	57feb7ff 	bl	-332(0xffffeb4) # 1c00518c <OLED_Set_Pos>
1c0052dc:	00150005 	move	$r5,$r0
1c0052e0:	0282b804 	addi.w	$r4,$r0,174(0xae)
1c0052e4:	57fe3fff 	bl	-452(0xffffe3c) # 1c005120 <OLED_WR_Byte>
1c0052e8:	00150005 	move	$r5,$r0
1c0052ec:	00150004 	move	$r4,$r0
1c0052f0:	57fe33ff 	bl	-464(0xffffe30) # 1c005120 <OLED_WR_Byte>
1c0052f4:	00150005 	move	$r5,$r0
1c0052f8:	02804004 	addi.w	$r4,$r0,16(0x10)
1c0052fc:	57fe27ff 	bl	-476(0xffffe24) # 1c005120 <OLED_WR_Byte>
1c005300:	00150005 	move	$r5,$r0
1c005304:	02810004 	addi.w	$r4,$r0,64(0x40)
1c005308:	57fe1bff 	bl	-488(0xffffe18) # 1c005120 <OLED_WR_Byte>
1c00530c:	00150005 	move	$r5,$r0
1c005310:	02820404 	addi.w	$r4,$r0,129(0x81)
1c005314:	57fe0fff 	bl	-500(0xffffe0c) # 1c005120 <OLED_WR_Byte>
1c005318:	00150005 	move	$r5,$r0
1c00531c:	02833c04 	addi.w	$r4,$r0,207(0xcf)
1c005320:	57fe03ff 	bl	-512(0xffffe00) # 1c005120 <OLED_WR_Byte>
1c005324:	00150005 	move	$r5,$r0
1c005328:	02828404 	addi.w	$r4,$r0,161(0xa1)
1c00532c:	57fdf7ff 	bl	-524(0xffffdf4) # 1c005120 <OLED_WR_Byte>
1c005330:	00150005 	move	$r5,$r0
1c005334:	02832004 	addi.w	$r4,$r0,200(0xc8)
1c005338:	57fdebff 	bl	-536(0xffffde8) # 1c005120 <OLED_WR_Byte>
1c00533c:	00150005 	move	$r5,$r0
1c005340:	02829804 	addi.w	$r4,$r0,166(0xa6)
1c005344:	57fddfff 	bl	-548(0xffffddc) # 1c005120 <OLED_WR_Byte>
1c005348:	00150005 	move	$r5,$r0
1c00534c:	0282a004 	addi.w	$r4,$r0,168(0xa8)
1c005350:	57fdd3ff 	bl	-560(0xffffdd0) # 1c005120 <OLED_WR_Byte>
1c005354:	00150005 	move	$r5,$r0
1c005358:	0280fc04 	addi.w	$r4,$r0,63(0x3f)
1c00535c:	57fdc7ff 	bl	-572(0xffffdc4) # 1c005120 <OLED_WR_Byte>
1c005360:	00150005 	move	$r5,$r0
1c005364:	02820404 	addi.w	$r4,$r0,129(0x81)
1c005368:	57fdbbff 	bl	-584(0xffffdb8) # 1c005120 <OLED_WR_Byte>
1c00536c:	00150005 	move	$r5,$r0
1c005370:	0283fc04 	addi.w	$r4,$r0,255(0xff)
1c005374:	57fdafff 	bl	-596(0xffffdac) # 1c005120 <OLED_WR_Byte>
1c005378:	00150005 	move	$r5,$r0
1c00537c:	02834c04 	addi.w	$r4,$r0,211(0xd3)
1c005380:	57fda3ff 	bl	-608(0xffffda0) # 1c005120 <OLED_WR_Byte>
1c005384:	00150005 	move	$r5,$r0
1c005388:	00150004 	move	$r4,$r0
1c00538c:	57fd97ff 	bl	-620(0xffffd94) # 1c005120 <OLED_WR_Byte>
1c005390:	00150005 	move	$r5,$r0
1c005394:	02835404 	addi.w	$r4,$r0,213(0xd5)
1c005398:	57fd8bff 	bl	-632(0xffffd88) # 1c005120 <OLED_WR_Byte>
1c00539c:	00150005 	move	$r5,$r0
1c0053a0:	02820004 	addi.w	$r4,$r0,128(0x80)
1c0053a4:	57fd7fff 	bl	-644(0xffffd7c) # 1c005120 <OLED_WR_Byte>
1c0053a8:	00150005 	move	$r5,$r0
1c0053ac:	02836404 	addi.w	$r4,$r0,217(0xd9)
1c0053b0:	57fd73ff 	bl	-656(0xffffd70) # 1c005120 <OLED_WR_Byte>
1c0053b4:	00150005 	move	$r5,$r0
1c0053b8:	0283c404 	addi.w	$r4,$r0,241(0xf1)
1c0053bc:	57fd67ff 	bl	-668(0xffffd64) # 1c005120 <OLED_WR_Byte>
1c0053c0:	00150005 	move	$r5,$r0
1c0053c4:	02836804 	addi.w	$r4,$r0,218(0xda)
1c0053c8:	57fd5bff 	bl	-680(0xffffd58) # 1c005120 <OLED_WR_Byte>
1c0053cc:	00150005 	move	$r5,$r0
1c0053d0:	02804804 	addi.w	$r4,$r0,18(0x12)
1c0053d4:	57fd4fff 	bl	-692(0xffffd4c) # 1c005120 <OLED_WR_Byte>
1c0053d8:	00150005 	move	$r5,$r0
1c0053dc:	02836c04 	addi.w	$r4,$r0,219(0xdb)
1c0053e0:	57fd43ff 	bl	-704(0xffffd40) # 1c005120 <OLED_WR_Byte>
1c0053e4:	00150005 	move	$r5,$r0
1c0053e8:	02810004 	addi.w	$r4,$r0,64(0x40)
1c0053ec:	57fd37ff 	bl	-716(0xffffd34) # 1c005120 <OLED_WR_Byte>
1c0053f0:	00150005 	move	$r5,$r0
1c0053f4:	02808004 	addi.w	$r4,$r0,32(0x20)
1c0053f8:	57fd2bff 	bl	-728(0xffffd28) # 1c005120 <OLED_WR_Byte>
1c0053fc:	00150005 	move	$r5,$r0
1c005400:	02800804 	addi.w	$r4,$r0,2(0x2)
1c005404:	57fd1fff 	bl	-740(0xffffd1c) # 1c005120 <OLED_WR_Byte>
1c005408:	00150005 	move	$r5,$r0
1c00540c:	02823404 	addi.w	$r4,$r0,141(0x8d)
1c005410:	57fd13ff 	bl	-752(0xffffd10) # 1c005120 <OLED_WR_Byte>
1c005414:	00150005 	move	$r5,$r0
1c005418:	02805004 	addi.w	$r4,$r0,20(0x14)
1c00541c:	57fd07ff 	bl	-764(0xffffd04) # 1c005120 <OLED_WR_Byte>
1c005420:	00150005 	move	$r5,$r0
1c005424:	02829004 	addi.w	$r4,$r0,164(0xa4)
1c005428:	57fcfbff 	bl	-776(0xffffcf8) # 1c005120 <OLED_WR_Byte>
1c00542c:	00150005 	move	$r5,$r0
1c005430:	02829804 	addi.w	$r4,$r0,166(0xa6)
1c005434:	57fcefff 	bl	-788(0xffffcec) # 1c005120 <OLED_WR_Byte>
1c005438:	00150005 	move	$r5,$r0
1c00543c:	0282bc04 	addi.w	$r4,$r0,175(0xaf)
1c005440:	57fce3ff 	bl	-800(0xffffce0) # 1c005120 <OLED_WR_Byte>
1c005444:	00150005 	move	$r5,$r0
1c005448:	0282bc04 	addi.w	$r4,$r0,175(0xaf)
1c00544c:	57fcd7ff 	bl	-812(0xffffcd4) # 1c005120 <OLED_WR_Byte>
1c005450:	57fdc7ff 	bl	-572(0xffffdc4) # 1c005214 <OLED_Clear>
1c005454:	00150005 	move	$r5,$r0
1c005458:	00150004 	move	$r4,$r0
1c00545c:	57fd33ff 	bl	-720(0xffffd30) # 1c00518c <OLED_Set_Pos>
1c005460:	03400000 	andi	$r0,$r0,0x0
1c005464:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005468:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00546c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005470:	4c000020 	jirl	$r0,$r1,0

1c005474 <OLED_ShowChar>:
OLED_ShowChar():
1c005474:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005478:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c00547c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005480:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005484:	0015008c 	move	$r12,$r4
1c005488:	001500af 	move	$r15,$r5
1c00548c:	001500ce 	move	$r14,$r6
1c005490:	001500ed 	move	$r13,$r7
1c005494:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c005498:	001501ec 	move	$r12,$r15
1c00549c:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c0054a0:	001501cc 	move	$r12,$r14
1c0054a4:	293f6ecc 	st.b	$r12,$r22,-37(0xfdb)
1c0054a8:	001501ac 	move	$r12,$r13
1c0054ac:	293f6acc 	st.b	$r12,$r22,-38(0xfda)
1c0054b0:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0054b4:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c0054b8:	2a3f6acd 	ld.bu	$r13,$r22,-38(0xfda)
1c0054bc:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c0054c0:	58000dac 	beq	$r13,$r12,12(0xc) # 1c0054cc <OLED_ShowChar+0x58>
1c0054c4:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c0054c8:	293f6acc 	st.b	$r12,$r22,-38(0xfda)
1c0054cc:	2a3f6ecc 	ld.bu	$r12,$r22,-37(0xfdb)
1c0054d0:	02bf818c 	addi.w	$r12,$r12,-32(0xfe0)
1c0054d4:	293f6ecc 	st.b	$r12,$r22,-37(0xfdb)
1c0054d8:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0054dc:	50009800 	b	152(0x98) # 1c005574 <OLED_ShowChar+0x100>
1c0054e0:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c0054e4:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c0054e8:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c0054ec:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0054f0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0054f4:	001031ac 	add.w	$r12,$r13,$r12
1c0054f8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0054fc:	00150185 	move	$r5,$r12
1c005500:	001501c4 	move	$r4,$r14
1c005504:	57fc8bff 	bl	-888(0xffffc88) # 1c00518c <OLED_Set_Pos>
1c005508:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c00550c:	50004800 	b	72(0x48) # 1c005554 <OLED_ShowChar+0xe0>
1c005510:	2a3f6ecd 	ld.bu	$r13,$r22,-37(0xfdb)
1c005514:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005518:	00408d8e 	slli.w	$r14,$r12,0x3
1c00551c:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005520:	001031cc 	add.w	$r12,$r14,$r12
1c005524:	1c00004e 	pcaddu12i	$r14,2(0x2)
1c005528:	0291f1ce 	addi.w	$r14,$r14,1148(0x47c)
1c00552c:	004091ad 	slli.w	$r13,$r13,0x4
1c005530:	001035cd 	add.w	$r13,$r14,$r13
1c005534:	001031ac 	add.w	$r12,$r13,$r12
1c005538:	2a00018c 	ld.bu	$r12,$r12,0
1c00553c:	02810005 	addi.w	$r5,$r0,64(0x40)
1c005540:	00150184 	move	$r4,$r12
1c005544:	57fbdfff 	bl	-1060(0xffffbdc) # 1c005120 <OLED_WR_Byte>
1c005548:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c00554c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005550:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c005554:	2a3f6acc 	ld.bu	$r12,$r22,-38(0xfda)
1c005558:	0044858c 	srli.w	$r12,$r12,0x1
1c00555c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005560:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c005564:	6bffadac 	bltu	$r13,$r12,-84(0x3ffac) # 1c005510 <OLED_ShowChar+0x9c>
1c005568:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00556c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005570:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005574:	2a3f6acc 	ld.bu	$r12,$r22,-38(0xfda)
1c005578:	00448d8c 	srli.w	$r12,$r12,0x3
1c00557c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005580:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005584:	6bff5dac 	bltu	$r13,$r12,-164(0x3ff5c) # 1c0054e0 <OLED_ShowChar+0x6c>
1c005588:	03400000 	andi	$r0,$r0,0x0
1c00558c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005590:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005594:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005598:	4c000020 	jirl	$r0,$r1,0

1c00559c <OLED_DrawFont16>:
OLED_DrawFont16():
1c00559c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0055a0:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0055a4:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0055a8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0055ac:	0015008c 	move	$r12,$r4
1c0055b0:	001500ad 	move	$r13,$r5
1c0055b4:	29bf62c6 	st.w	$r6,$r22,-40(0xfd8)
1c0055b8:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c0055bc:	001501ac 	move	$r12,$r13
1c0055c0:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c0055c4:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0055c8:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c0055cc:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c0055d0:	297faac0 	st.h	$r0,$r22,-22(0xfea)
1c0055d4:	02806c0c 	addi.w	$r12,$r0,27(0x1b)
1c0055d8:	297faacc 	st.h	$r12,$r22,-22(0xfea)
1c0055dc:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c0055e0:	50013800 	b	312(0x138) # 1c005718 <OLED_DrawFont16+0x17c>
1c0055e4:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c0055e8:	1c00006d 	pcaddu12i	$r13,3(0x3)
1c0055ec:	02a6a1ad 	addi.w	$r13,$r13,-1624(0x9a8)
1c0055f0:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c0055f4:	001c31cc 	mul.w	$r12,$r14,$r12
1c0055f8:	001031ac 	add.w	$r12,$r13,$r12
1c0055fc:	2a00018d 	ld.bu	$r13,$r12,0
1c005600:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005604:	2a00018c 	ld.bu	$r12,$r12,0
1c005608:	5c0105ac 	bne	$r13,$r12,260(0x104) # 1c00570c <OLED_DrawFont16+0x170>
1c00560c:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c005610:	1c00006d 	pcaddu12i	$r13,3(0x3)
1c005614:	02a601ad 	addi.w	$r13,$r13,-1664(0x980)
1c005618:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c00561c:	001c31cc 	mul.w	$r12,$r14,$r12
1c005620:	001031ac 	add.w	$r12,$r13,$r12
1c005624:	2a00058d 	ld.bu	$r13,$r12,1(0x1)
1c005628:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00562c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005630:	2a00018c 	ld.bu	$r12,$r12,0
1c005634:	5c00d9ac 	bne	$r13,$r12,216(0xd8) # 1c00570c <OLED_DrawFont16+0x170>
1c005638:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c00563c:	1c00006d 	pcaddu12i	$r13,3(0x3)
1c005640:	02a551ad 	addi.w	$r13,$r13,-1708(0x954)
1c005644:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c005648:	001c31cc 	mul.w	$r12,$r14,$r12
1c00564c:	001031ac 	add.w	$r12,$r13,$r12
1c005650:	2a00098d 	ld.bu	$r13,$r12,2(0x2)
1c005654:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005658:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c00565c:	2a00018c 	ld.bu	$r12,$r12,0
1c005660:	5c00adac 	bne	$r13,$r12,172(0xac) # 1c00570c <OLED_DrawFont16+0x170>
1c005664:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c005668:	50009400 	b	148(0x94) # 1c0056fc <OLED_DrawFont16+0x160>
1c00566c:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c005670:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c005674:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c005678:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00567c:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005680:	001031ac 	add.w	$r12,$r13,$r12
1c005684:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005688:	00150185 	move	$r5,$r12
1c00568c:	001501c4 	move	$r4,$r14
1c005690:	57faffff 	bl	-1284(0xffffafc) # 1c00518c <OLED_Set_Pos>
1c005694:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005698:	50004c00 	b	76(0x4c) # 1c0056e4 <OLED_DrawFont16+0x148>
1c00569c:	2a7fb2cf 	ld.hu	$r15,$r22,-20(0xfec)
1c0056a0:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0056a4:	0040918d 	slli.w	$r13,$r12,0x4
1c0056a8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0056ac:	001031ad 	add.w	$r13,$r13,$r12
1c0056b0:	1c00006e 	pcaddu12i	$r14,3(0x3)
1c0056b4:	02a381ce 	addi.w	$r14,$r14,-1824(0x8e0)
1c0056b8:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c0056bc:	001c31ec 	mul.w	$r12,$r15,$r12
1c0056c0:	001031cc 	add.w	$r12,$r14,$r12
1c0056c4:	0010358c 	add.w	$r12,$r12,$r13
1c0056c8:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c0056cc:	02810005 	addi.w	$r5,$r0,64(0x40)
1c0056d0:	00150184 	move	$r4,$r12
1c0056d4:	57fa4fff 	bl	-1460(0xffffa4c) # 1c005120 <OLED_WR_Byte>
1c0056d8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0056dc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0056e0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0056e4:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0056e8:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c0056ec:	6fffb18d 	bgeu	$r12,$r13,-80(0x3ffb0) # 1c00569c <OLED_DrawFont16+0x100>
1c0056f0:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0056f4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0056f8:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c0056fc:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c005700:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005704:	6fff698d 	bgeu	$r12,$r13,-152(0x3ff68) # 1c00566c <OLED_DrawFont16+0xd0>
1c005708:	50001c00 	b	28(0x1c) # 1c005724 <OLED_DrawFont16+0x188>
1c00570c:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c005710:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005714:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c005718:	2a7fb2cd 	ld.hu	$r13,$r22,-20(0xfec)
1c00571c:	2a7faacc 	ld.hu	$r12,$r22,-22(0xfea)
1c005720:	6bfec5ac 	bltu	$r13,$r12,-316(0x3fec4) # 1c0055e4 <OLED_DrawFont16+0x48>
1c005724:	03400000 	andi	$r0,$r0,0x0
1c005728:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c00572c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005730:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005734:	4c000020 	jirl	$r0,$r1,0

1c005738 <OLED_DrawFont32>:
OLED_DrawFont32():
1c005738:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00573c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005740:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005744:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005748:	0015008c 	move	$r12,$r4
1c00574c:	001500ad 	move	$r13,$r5
1c005750:	29bf62c6 	st.w	$r6,$r22,-40(0xfd8)
1c005754:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c005758:	001501ac 	move	$r12,$r13
1c00575c:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c005760:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005764:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c005768:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c00576c:	297faac0 	st.h	$r0,$r22,-22(0xfea)
1c005770:	0280500c 	addi.w	$r12,$r0,20(0x14)
1c005774:	297faacc 	st.h	$r12,$r22,-22(0xfea)
1c005778:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c00577c:	50014400 	b	324(0x144) # 1c0058c0 <OLED_DrawFont32+0x188>
1c005780:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c005784:	1c00006d 	pcaddu12i	$r13,3(0x3)
1c005788:	02a031ad 	addi.w	$r13,$r13,-2036(0x80c)
1c00578c:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c005790:	001c31cc 	mul.w	$r12,$r14,$r12
1c005794:	001031ac 	add.w	$r12,$r13,$r12
1c005798:	2a00018c 	ld.bu	$r12,$r12,0
1c00579c:	0015018d 	move	$r13,$r12
1c0057a0:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0057a4:	2800018c 	ld.b	$r12,$r12,0
1c0057a8:	5c010dac 	bne	$r13,$r12,268(0x10c) # 1c0058b4 <OLED_DrawFont32+0x17c>
1c0057ac:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c0057b0:	1c00004d 	pcaddu12i	$r13,2(0x2)
1c0057b4:	029f81ad 	addi.w	$r13,$r13,2016(0x7e0)
1c0057b8:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c0057bc:	001c31cc 	mul.w	$r12,$r14,$r12
1c0057c0:	001031ac 	add.w	$r12,$r13,$r12
1c0057c4:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c0057c8:	0015018d 	move	$r13,$r12
1c0057cc:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0057d0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0057d4:	2800018c 	ld.b	$r12,$r12,0
1c0057d8:	5c00ddac 	bne	$r13,$r12,220(0xdc) # 1c0058b4 <OLED_DrawFont32+0x17c>
1c0057dc:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c0057e0:	1c00004d 	pcaddu12i	$r13,2(0x2)
1c0057e4:	029ec1ad 	addi.w	$r13,$r13,1968(0x7b0)
1c0057e8:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c0057ec:	001c31cc 	mul.w	$r12,$r14,$r12
1c0057f0:	001031ac 	add.w	$r12,$r13,$r12
1c0057f4:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c0057f8:	0015018d 	move	$r13,$r12
1c0057fc:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005800:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005804:	2800018c 	ld.b	$r12,$r12,0
1c005808:	5c00adac 	bne	$r13,$r12,172(0xac) # 1c0058b4 <OLED_DrawFont32+0x17c>
1c00580c:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c005810:	50009400 	b	148(0x94) # 1c0058a4 <OLED_DrawFont32+0x16c>
1c005814:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c005818:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c00581c:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c005820:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005824:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005828:	001031ac 	add.w	$r12,$r13,$r12
1c00582c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005830:	00150185 	move	$r5,$r12
1c005834:	001501c4 	move	$r4,$r14
1c005838:	57f957ff 	bl	-1708(0xffff954) # 1c00518c <OLED_Set_Pos>
1c00583c:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005840:	50004c00 	b	76(0x4c) # 1c00588c <OLED_DrawFont32+0x154>
1c005844:	2a7fb2cf 	ld.hu	$r15,$r22,-20(0xfec)
1c005848:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c00584c:	0040958d 	slli.w	$r13,$r12,0x5
1c005850:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005854:	001031ad 	add.w	$r13,$r13,$r12
1c005858:	1c00006e 	pcaddu12i	$r14,3(0x3)
1c00585c:	02abb1ce 	addi.w	$r14,$r14,-1300(0xaec)
1c005860:	02820c0c 	addi.w	$r12,$r0,131(0x83)
1c005864:	001c31ec 	mul.w	$r12,$r15,$r12
1c005868:	001031cc 	add.w	$r12,$r14,$r12
1c00586c:	0010358c 	add.w	$r12,$r12,$r13
1c005870:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c005874:	02810005 	addi.w	$r5,$r0,64(0x40)
1c005878:	00150184 	move	$r4,$r12
1c00587c:	57f8a7ff 	bl	-1884(0xffff8a4) # 1c005120 <OLED_WR_Byte>
1c005880:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005884:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005888:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00588c:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005890:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c005894:	6fffb18d 	bgeu	$r12,$r13,-80(0x3ffb0) # 1c005844 <OLED_DrawFont32+0x10c>
1c005898:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c00589c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0058a0:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c0058a4:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c0058a8:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c0058ac:	6fff698d 	bgeu	$r12,$r13,-152(0x3ff68) # 1c005814 <OLED_DrawFont32+0xdc>
1c0058b0:	50001c00 	b	28(0x1c) # 1c0058cc <OLED_DrawFont32+0x194>
1c0058b4:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c0058b8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0058bc:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c0058c0:	2a7fb2cd 	ld.hu	$r13,$r22,-20(0xfec)
1c0058c4:	2a7faacc 	ld.hu	$r12,$r22,-22(0xfea)
1c0058c8:	6bfeb9ac 	bltu	$r13,$r12,-328(0x3feb8) # 1c005780 <OLED_DrawFont32+0x48>
1c0058cc:	03400000 	andi	$r0,$r0,0x0
1c0058d0:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0058d4:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0058d8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0058dc:	4c000020 	jirl	$r0,$r1,0

1c0058e0 <OLED_Show_Str>:
OLED_Show_Str():
1c0058e0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0058e4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0058e8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0058ec:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0058f0:	0015008c 	move	$r12,$r4
1c0058f4:	001500ae 	move	$r14,$r5
1c0058f8:	29bf62c6 	st.w	$r6,$r22,-40(0xfd8)
1c0058fc:	001500ed 	move	$r13,$r7
1c005900:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c005904:	001501cc 	move	$r12,$r14
1c005908:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c00590c:	001501ac 	move	$r12,$r13
1c005910:	293f5ecc 	st.b	$r12,$r22,-41(0xfd7)
1c005914:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c005918:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c00591c:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005920:	2a3f5ecd 	ld.bu	$r13,$r22,-41(0xfd7)
1c005924:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c005928:	580209ac 	beq	$r13,$r12,520(0x208) # 1c005b30 <OLED_Show_Str+0x250>
1c00592c:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c005930:	293f5ecc 	st.b	$r12,$r22,-41(0xfd7)
1c005934:	5001fc00 	b	508(0x1fc) # 1c005b30 <OLED_Show_Str+0x250>
1c005938:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00593c:	44012580 	bnez	$r12,292(0x124) # 1c005a60 <OLED_Show_Str+0x180>
1c005940:	2a7f7acd 	ld.hu	$r13,$r22,-34(0xfde)
1c005944:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c005948:	0044858c 	srli.w	$r12,$r12,0x1
1c00594c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005950:	0015018e 	move	$r14,$r12
1c005954:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c005958:	0011398c 	sub.w	$r12,$r12,$r14
1c00595c:	64002d8d 	bge	$r12,$r13,44(0x2c) # 1c005988 <OLED_Show_Str+0xa8>
1c005960:	297f7ac0 	st.h	$r0,$r22,-34(0xfde)
1c005964:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c005968:	00448d8c 	srli.w	$r12,$r12,0x3
1c00596c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005970:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005974:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c005978:	001031ac 	add.w	$r12,$r13,$r12
1c00597c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c005980:	03401d8c 	andi	$r12,$r12,0x7
1c005984:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c005988:	2a7f72cd 	ld.hu	$r13,$r22,-36(0xfdc)
1c00598c:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c005990:	00448d8c 	srli.w	$r12,$r12,0x3
1c005994:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005998:	0015018e 	move	$r14,$r12
1c00599c:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c0059a0:	0011398c 	sub.w	$r12,$r12,$r14
1c0059a4:	6400098d 	bge	$r12,$r13,8(0x8) # 1c0059ac <OLED_Show_Str+0xcc>
1c0059a8:	297f72c0 	st.h	$r0,$r22,-36(0xfdc)
1c0059ac:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0059b0:	2800018c 	ld.b	$r12,$r12,0
1c0059b4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0059b8:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c0059bc:	6c00118d 	bgeu	$r12,$r13,16(0x10) # 1c0059cc <OLED_Show_Str+0xec>
1c0059c0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0059c4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0059c8:	50016800 	b	360(0x168) # 1c005b30 <OLED_Show_Str+0x250>
1c0059cc:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0059d0:	2800018d 	ld.b	$r13,$r12,0
1c0059d4:	0280340c 	addi.w	$r12,$r0,13(0xd)
1c0059d8:	5c0031ac 	bne	$r13,$r12,48(0x30) # 1c005a08 <OLED_Show_Str+0x128>
1c0059dc:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c0059e0:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0059e4:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c0059e8:	001031ac 	add.w	$r12,$r13,$r12
1c0059ec:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c0059f0:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c0059f4:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c0059f8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0059fc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005a00:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c005a04:	50004c00 	b	76(0x4c) # 1c005a50 <OLED_Show_Str+0x170>
1c005a08:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005a0c:	2800018c 	ld.b	$r12,$r12,0
1c005a10:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c005a14:	2a3f5ecf 	ld.bu	$r15,$r22,-41(0xfd7)
1c005a18:	2a7f72cd 	ld.hu	$r13,$r22,-36(0xfdc)
1c005a1c:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c005a20:	001501e7 	move	$r7,$r15
1c005a24:	001501c6 	move	$r6,$r14
1c005a28:	001501a5 	move	$r5,$r13
1c005a2c:	00150184 	move	$r4,$r12
1c005a30:	57fa47ff 	bl	-1468(0xffffa44) # 1c005474 <OLED_ShowChar>
1c005a34:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c005a38:	0044858c 	srli.w	$r12,$r12,0x1
1c005a3c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005a40:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005a44:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c005a48:	001031ac 	add.w	$r12,$r13,$r12
1c005a4c:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c005a50:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005a54:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005a58:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c005a5c:	5000d400 	b	212(0xd4) # 1c005b30 <OLED_Show_Str+0x250>
1c005a60:	2a7f7acd 	ld.hu	$r13,$r22,-34(0xfde)
1c005a64:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c005a68:	0282000e 	addi.w	$r14,$r0,128(0x80)
1c005a6c:	001131cc 	sub.w	$r12,$r14,$r12
1c005a70:	64002d8d 	bge	$r12,$r13,44(0x2c) # 1c005a9c <OLED_Show_Str+0x1bc>
1c005a74:	297f7ac0 	st.h	$r0,$r22,-34(0xfde)
1c005a78:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c005a7c:	00448d8c 	srli.w	$r12,$r12,0x3
1c005a80:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005a84:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005a88:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c005a8c:	001031ac 	add.w	$r12,$r13,$r12
1c005a90:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c005a94:	03401d8c 	andi	$r12,$r12,0x7
1c005a98:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c005a9c:	2a7f72cd 	ld.hu	$r13,$r22,-36(0xfdc)
1c005aa0:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c005aa4:	00448d8c 	srli.w	$r12,$r12,0x3
1c005aa8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005aac:	0015018e 	move	$r14,$r12
1c005ab0:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c005ab4:	0011398c 	sub.w	$r12,$r12,$r14
1c005ab8:	6400098d 	bge	$r12,$r13,8(0x8) # 1c005ac0 <OLED_Show_Str+0x1e0>
1c005abc:	297f72c0 	st.h	$r0,$r22,-36(0xfdc)
1c005ac0:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005ac4:	2a3f5ecd 	ld.bu	$r13,$r22,-41(0xfd7)
1c005ac8:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c005acc:	5c0021ac 	bne	$r13,$r12,32(0x20) # 1c005aec <OLED_Show_Str+0x20c>
1c005ad0:	2a7f72cd 	ld.hu	$r13,$r22,-36(0xfdc)
1c005ad4:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c005ad8:	28bf62c6 	ld.w	$r6,$r22,-40(0xfd8)
1c005adc:	001501a5 	move	$r5,$r13
1c005ae0:	00150184 	move	$r4,$r12
1c005ae4:	57fc57ff 	bl	-940(0xffffc54) # 1c005738 <OLED_DrawFont32>
1c005ae8:	50002800 	b	40(0x28) # 1c005b10 <OLED_Show_Str+0x230>
1c005aec:	2a3f5ecd 	ld.bu	$r13,$r22,-41(0xfd7)
1c005af0:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c005af4:	5c001dac 	bne	$r13,$r12,28(0x1c) # 1c005b10 <OLED_Show_Str+0x230>
1c005af8:	2a7f72cd 	ld.hu	$r13,$r22,-36(0xfdc)
1c005afc:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c005b00:	28bf62c6 	ld.w	$r6,$r22,-40(0xfd8)
1c005b04:	001501a5 	move	$r5,$r13
1c005b08:	00150184 	move	$r4,$r12
1c005b0c:	57fa93ff 	bl	-1392(0xffffa90) # 1c00559c <OLED_DrawFont16>
1c005b10:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005b14:	02800d8c 	addi.w	$r12,$r12,3(0x3)
1c005b18:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c005b1c:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c005b20:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005b24:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c005b28:	001031ac 	add.w	$r12,$r13,$r12
1c005b2c:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c005b30:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005b34:	2800018c 	ld.b	$r12,$r12,0
1c005b38:	47fe019f 	bnez	$r12,-512(0x7ffe00) # 1c005938 <OLED_Show_Str+0x58>
1c005b3c:	03400000 	andi	$r0,$r0,0x0
1c005b40:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005b44:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005b48:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005b4c:	4c000020 	jirl	$r0,$r1,0

1c005b50 <myIIC_Delay>:
myIIC_Delay():
1c005b50:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005b54:	29807076 	st.w	$r22,$r3,28(0x1c)
1c005b58:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005b5c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005b60:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005b64:	50001000 	b	16(0x10) # 1c005b74 <myIIC_Delay+0x24>
1c005b68:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005b6c:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c005b70:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005b74:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005b78:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1c005b68 <myIIC_Delay+0x18>
1c005b7c:	03400000 	andi	$r0,$r0,0x0
1c005b80:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c005b84:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005b88:	4c000020 	jirl	$r0,$r1,0

1c005b8c <myIIC_Init>:
myIIC_Init():
1c005b8c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005b90:	29803061 	st.w	$r1,$r3,12(0xc)
1c005b94:	29802076 	st.w	$r22,$r3,8(0x8)
1c005b98:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005b9c:	00150005 	move	$r5,$r0
1c005ba0:	02803804 	addi.w	$r4,$r0,14(0xe)
1c005ba4:	57babfff 	bl	-17732(0xfffbabc) # 1c001660 <gpio_pin_remap>
1c005ba8:	00150005 	move	$r5,$r0
1c005bac:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c005bb0:	57bab3ff 	bl	-17744(0xfffbab0) # 1c001660 <gpio_pin_remap>
1c005bb4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005bb8:	02803804 	addi.w	$r4,$r0,14(0xe)
1c005bbc:	57bcb3ff 	bl	-17232(0xfffbcb0) # 1c00186c <gpio_set_direction>
1c005bc0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005bc4:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c005bc8:	57bca7ff 	bl	-17244(0xfffbca4) # 1c00186c <gpio_set_direction>
1c005bcc:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005bd0:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c005bd4:	57ba17ff 	bl	-17900(0xfffba14) # 1c0015e8 <gpio_write_pin>
1c005bd8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005bdc:	02803804 	addi.w	$r4,$r0,14(0xe)
1c005be0:	57ba0bff 	bl	-17912(0xfffba08) # 1c0015e8 <gpio_write_pin>
1c005be4:	03400000 	andi	$r0,$r0,0x0
1c005be8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005bec:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005bf0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005bf4:	4c000020 	jirl	$r0,$r1,0

1c005bf8 <mySDA_IN>:
mySDA_IN():
1c005bf8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005bfc:	29803061 	st.w	$r1,$r3,12(0xc)
1c005c00:	29802076 	st.w	$r22,$r3,8(0x8)
1c005c04:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005c08:	00150005 	move	$r5,$r0
1c005c0c:	02803804 	addi.w	$r4,$r0,14(0xe)
1c005c10:	57bc5fff 	bl	-17316(0xfffbc5c) # 1c00186c <gpio_set_direction>
1c005c14:	03400000 	andi	$r0,$r0,0x0
1c005c18:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005c1c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005c20:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005c24:	4c000020 	jirl	$r0,$r1,0

1c005c28 <mySDA_OUT>:
mySDA_OUT():
1c005c28:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005c2c:	29803061 	st.w	$r1,$r3,12(0xc)
1c005c30:	29802076 	st.w	$r22,$r3,8(0x8)
1c005c34:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005c38:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005c3c:	02803804 	addi.w	$r4,$r0,14(0xe)
1c005c40:	57bc2fff 	bl	-17364(0xfffbc2c) # 1c00186c <gpio_set_direction>
1c005c44:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005c48:	02803804 	addi.w	$r4,$r0,14(0xe)
1c005c4c:	57b99fff 	bl	-18020(0xfffb99c) # 1c0015e8 <gpio_write_pin>
1c005c50:	03400000 	andi	$r0,$r0,0x0
1c005c54:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005c58:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005c5c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005c60:	4c000020 	jirl	$r0,$r1,0

1c005c64 <myIIC_Start>:
myIIC_Start():
1c005c64:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005c68:	29803061 	st.w	$r1,$r3,12(0xc)
1c005c6c:	29802076 	st.w	$r22,$r3,8(0x8)
1c005c70:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005c74:	57ffb7ff 	bl	-76(0xfffffb4) # 1c005c28 <mySDA_OUT>
1c005c78:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005c7c:	02803804 	addi.w	$r4,$r0,14(0xe)
1c005c80:	57b96bff 	bl	-18072(0xfffb968) # 1c0015e8 <gpio_write_pin>
1c005c84:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005c88:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c005c8c:	57b95fff 	bl	-18084(0xfffb95c) # 1c0015e8 <gpio_write_pin>
1c005c90:	57fec3ff 	bl	-320(0xffffec0) # 1c005b50 <myIIC_Delay>
1c005c94:	00150005 	move	$r5,$r0
1c005c98:	02803804 	addi.w	$r4,$r0,14(0xe)
1c005c9c:	57b94fff 	bl	-18100(0xfffb94c) # 1c0015e8 <gpio_write_pin>
1c005ca0:	57feb3ff 	bl	-336(0xffffeb0) # 1c005b50 <myIIC_Delay>
1c005ca4:	00150005 	move	$r5,$r0
1c005ca8:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c005cac:	57b93fff 	bl	-18116(0xfffb93c) # 1c0015e8 <gpio_write_pin>
1c005cb0:	03400000 	andi	$r0,$r0,0x0
1c005cb4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005cb8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005cbc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005cc0:	4c000020 	jirl	$r0,$r1,0

1c005cc4 <myIIC_Stop>:
myIIC_Stop():
1c005cc4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005cc8:	29803061 	st.w	$r1,$r3,12(0xc)
1c005ccc:	29802076 	st.w	$r22,$r3,8(0x8)
1c005cd0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005cd4:	57ff57ff 	bl	-172(0xfffff54) # 1c005c28 <mySDA_OUT>
1c005cd8:	00150005 	move	$r5,$r0
1c005cdc:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c005ce0:	57b90bff 	bl	-18168(0xfffb908) # 1c0015e8 <gpio_write_pin>
1c005ce4:	00150005 	move	$r5,$r0
1c005ce8:	02803804 	addi.w	$r4,$r0,14(0xe)
1c005cec:	57b8ffff 	bl	-18180(0xfffb8fc) # 1c0015e8 <gpio_write_pin>
1c005cf0:	57fe63ff 	bl	-416(0xffffe60) # 1c005b50 <myIIC_Delay>
1c005cf4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005cf8:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c005cfc:	57b8efff 	bl	-18196(0xfffb8ec) # 1c0015e8 <gpio_write_pin>
1c005d00:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005d04:	02803804 	addi.w	$r4,$r0,14(0xe)
1c005d08:	57b8e3ff 	bl	-18208(0xfffb8e0) # 1c0015e8 <gpio_write_pin>
1c005d0c:	57fe47ff 	bl	-444(0xffffe44) # 1c005b50 <myIIC_Delay>
1c005d10:	03400000 	andi	$r0,$r0,0x0
1c005d14:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005d18:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005d1c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005d20:	4c000020 	jirl	$r0,$r1,0

1c005d24 <myIIC_Wait_Ack>:
myIIC_Wait_Ack():
1c005d24:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005d28:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005d2c:	29806076 	st.w	$r22,$r3,24(0x18)
1c005d30:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005d34:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005d38:	57fec3ff 	bl	-320(0xffffec0) # 1c005bf8 <mySDA_IN>
1c005d3c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005d40:	02803804 	addi.w	$r4,$r0,14(0xe)
1c005d44:	57b8a7ff 	bl	-18268(0xfffb8a4) # 1c0015e8 <gpio_write_pin>
1c005d48:	57fe0bff 	bl	-504(0xffffe08) # 1c005b50 <myIIC_Delay>
1c005d4c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005d50:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c005d54:	57b897ff 	bl	-18284(0xfffb894) # 1c0015e8 <gpio_write_pin>
1c005d58:	57fdfbff 	bl	-520(0xffffdf8) # 1c005b50 <myIIC_Delay>
1c005d5c:	50002800 	b	40(0x28) # 1c005d84 <myIIC_Wait_Ack+0x60>
1c005d60:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005d64:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005d68:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005d6c:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005d70:	0283e80c 	addi.w	$r12,$r0,250(0xfa)
1c005d74:	6c00118d 	bgeu	$r12,$r13,16(0x10) # 1c005d84 <myIIC_Wait_Ack+0x60>
1c005d78:	57ff4fff 	bl	-180(0xfffff4c) # 1c005cc4 <myIIC_Stop>
1c005d7c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005d80:	50002400 	b	36(0x24) # 1c005da4 <myIIC_Wait_Ack+0x80>
1c005d84:	02803804 	addi.w	$r4,$r0,14(0xe)
1c005d88:	57b813ff 	bl	-18416(0xfffb810) # 1c001598 <gpio_get_pin>
1c005d8c:	0015008c 	move	$r12,$r4
1c005d90:	47ffd19f 	bnez	$r12,-48(0x7fffd0) # 1c005d60 <myIIC_Wait_Ack+0x3c>
1c005d94:	00150005 	move	$r5,$r0
1c005d98:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c005d9c:	57b84fff 	bl	-18356(0xfffb84c) # 1c0015e8 <gpio_write_pin>
1c005da0:	0015000c 	move	$r12,$r0
1c005da4:	00150184 	move	$r4,$r12
1c005da8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005dac:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005db0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005db4:	4c000020 	jirl	$r0,$r1,0

1c005db8 <myIIC_Ack>:
myIIC_Ack():
1c005db8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005dbc:	29803061 	st.w	$r1,$r3,12(0xc)
1c005dc0:	29802076 	st.w	$r22,$r3,8(0x8)
1c005dc4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005dc8:	00150005 	move	$r5,$r0
1c005dcc:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c005dd0:	57b81bff 	bl	-18408(0xfffb818) # 1c0015e8 <gpio_write_pin>
1c005dd4:	57fe57ff 	bl	-428(0xffffe54) # 1c005c28 <mySDA_OUT>
1c005dd8:	00150005 	move	$r5,$r0
1c005ddc:	02803804 	addi.w	$r4,$r0,14(0xe)
1c005de0:	57b80bff 	bl	-18424(0xfffb808) # 1c0015e8 <gpio_write_pin>
1c005de4:	57fd6fff 	bl	-660(0xffffd6c) # 1c005b50 <myIIC_Delay>
1c005de8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005dec:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c005df0:	57b7fbff 	bl	-18440(0xfffb7f8) # 1c0015e8 <gpio_write_pin>
1c005df4:	57fd5fff 	bl	-676(0xffffd5c) # 1c005b50 <myIIC_Delay>
1c005df8:	00150005 	move	$r5,$r0
1c005dfc:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c005e00:	57b7ebff 	bl	-18456(0xfffb7e8) # 1c0015e8 <gpio_write_pin>
1c005e04:	03400000 	andi	$r0,$r0,0x0
1c005e08:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005e0c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005e10:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005e14:	4c000020 	jirl	$r0,$r1,0

1c005e18 <myIIC_NAck>:
myIIC_NAck():
1c005e18:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005e1c:	29803061 	st.w	$r1,$r3,12(0xc)
1c005e20:	29802076 	st.w	$r22,$r3,8(0x8)
1c005e24:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005e28:	00150005 	move	$r5,$r0
1c005e2c:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c005e30:	57b7bbff 	bl	-18504(0xfffb7b8) # 1c0015e8 <gpio_write_pin>
1c005e34:	57fdf7ff 	bl	-524(0xffffdf4) # 1c005c28 <mySDA_OUT>
1c005e38:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005e3c:	02803804 	addi.w	$r4,$r0,14(0xe)
1c005e40:	57b7abff 	bl	-18520(0xfffb7a8) # 1c0015e8 <gpio_write_pin>
1c005e44:	57fd0fff 	bl	-756(0xffffd0c) # 1c005b50 <myIIC_Delay>
1c005e48:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005e4c:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c005e50:	57b79bff 	bl	-18536(0xfffb798) # 1c0015e8 <gpio_write_pin>
1c005e54:	57fcffff 	bl	-772(0xffffcfc) # 1c005b50 <myIIC_Delay>
1c005e58:	00150005 	move	$r5,$r0
1c005e5c:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c005e60:	57b78bff 	bl	-18552(0xfffb788) # 1c0015e8 <gpio_write_pin>
1c005e64:	03400000 	andi	$r0,$r0,0x0
1c005e68:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005e6c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005e70:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005e74:	4c000020 	jirl	$r0,$r1,0

1c005e78 <myIIC_Send_Byte>:
myIIC_Send_Byte():
1c005e78:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005e7c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005e80:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005e84:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005e88:	0015008c 	move	$r12,$r4
1c005e8c:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c005e90:	57fd9bff 	bl	-616(0xffffd98) # 1c005c28 <mySDA_OUT>
1c005e94:	00150005 	move	$r5,$r0
1c005e98:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c005e9c:	57b74fff 	bl	-18612(0xfffb74c) # 1c0015e8 <gpio_write_pin>
1c005ea0:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005ea4:	50006000 	b	96(0x60) # 1c005f04 <myIIC_Send_Byte+0x8c>
1c005ea8:	283f7ecc 	ld.b	$r12,$r22,-33(0xfdf)
1c005eac:	64001580 	bge	$r12,$r0,20(0x14) # 1c005ec0 <myIIC_Send_Byte+0x48>
1c005eb0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005eb4:	02803804 	addi.w	$r4,$r0,14(0xe)
1c005eb8:	57b733ff 	bl	-18640(0xfffb730) # 1c0015e8 <gpio_write_pin>
1c005ebc:	50001000 	b	16(0x10) # 1c005ecc <myIIC_Send_Byte+0x54>
1c005ec0:	00150005 	move	$r5,$r0
1c005ec4:	02803804 	addi.w	$r4,$r0,14(0xe)
1c005ec8:	57b723ff 	bl	-18656(0xfffb720) # 1c0015e8 <gpio_write_pin>
1c005ecc:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c005ed0:	0040858c 	slli.w	$r12,$r12,0x1
1c005ed4:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c005ed8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005edc:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c005ee0:	57b70bff 	bl	-18680(0xfffb708) # 1c0015e8 <gpio_write_pin>
1c005ee4:	57fc6fff 	bl	-916(0xffffc6c) # 1c005b50 <myIIC_Delay>
1c005ee8:	00150005 	move	$r5,$r0
1c005eec:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c005ef0:	57b6fbff 	bl	-18696(0xfffb6f8) # 1c0015e8 <gpio_write_pin>
1c005ef4:	57fc5fff 	bl	-932(0xffffc5c) # 1c005b50 <myIIC_Delay>
1c005ef8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005efc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005f00:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005f04:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005f08:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c005f0c:	6fff9d8d 	bgeu	$r12,$r13,-100(0x3ff9c) # 1c005ea8 <myIIC_Send_Byte+0x30>
1c005f10:	03400000 	andi	$r0,$r0,0x0
1c005f14:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005f18:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005f1c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005f20:	4c000020 	jirl	$r0,$r1,0

1c005f24 <myIIC_Read_Byte>:
myIIC_Read_Byte():
1c005f24:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005f28:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005f2c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005f30:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005f34:	0015008c 	move	$r12,$r4
1c005f38:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c005f3c:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c005f40:	57fcbbff 	bl	-840(0xffffcb8) # 1c005bf8 <mySDA_IN>
1c005f44:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005f48:	50005800 	b	88(0x58) # 1c005fa0 <myIIC_Read_Byte+0x7c>
1c005f4c:	00150005 	move	$r5,$r0
1c005f50:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c005f54:	57b697ff 	bl	-18796(0xfffb694) # 1c0015e8 <gpio_write_pin>
1c005f58:	57fbfbff 	bl	-1032(0xffffbf8) # 1c005b50 <myIIC_Delay>
1c005f5c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005f60:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c005f64:	57b687ff 	bl	-18812(0xfffb684) # 1c0015e8 <gpio_write_pin>
1c005f68:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005f6c:	0040858c 	slli.w	$r12,$r12,0x1
1c005f70:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c005f74:	02803804 	addi.w	$r4,$r0,14(0xe)
1c005f78:	57b623ff 	bl	-18912(0xfffb620) # 1c001598 <gpio_get_pin>
1c005f7c:	0015008c 	move	$r12,$r4
1c005f80:	40001180 	beqz	$r12,16(0x10) # 1c005f90 <myIIC_Read_Byte+0x6c>
1c005f84:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005f88:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005f8c:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c005f90:	57fbc3ff 	bl	-1088(0xffffbc0) # 1c005b50 <myIIC_Delay>
1c005f94:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005f98:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005f9c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005fa0:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005fa4:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c005fa8:	6fffa58d 	bgeu	$r12,$r13,-92(0x3ffa4) # 1c005f4c <myIIC_Read_Byte+0x28>
1c005fac:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c005fb0:	44000d80 	bnez	$r12,12(0xc) # 1c005fbc <myIIC_Read_Byte+0x98>
1c005fb4:	57fe67ff 	bl	-412(0xffffe64) # 1c005e18 <myIIC_NAck>
1c005fb8:	50000800 	b	8(0x8) # 1c005fc0 <myIIC_Read_Byte+0x9c>
1c005fbc:	57fdffff 	bl	-516(0xffffdfc) # 1c005db8 <myIIC_Ack>
1c005fc0:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005fc4:	00150184 	move	$r4,$r12
1c005fc8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005fcc:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005fd0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005fd4:	4c000020 	jirl	$r0,$r1,0

1c005fd8 <main>:
main():
1c005fd8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005fdc:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005fe0:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005fe4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005fe8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c005fec:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c005ff0:	57d143ff 	bl	-11968(0xfffd140) # 1c003130 <SystemClockInit>
1c005ff4:	57b33bff 	bl	-19656(0xfffb338) # 1c00132c <GPIOInit>
1c005ff8:	57f2bbff 	bl	-3400(0xffff2b8) # 1c0052b0 <OLED_Init>
1c005ffc:	57d22fff 	bl	-11732(0xfffd22c) # 1c003228 <EnableInt>
1c006000:	54043800 	bl	1080(0x438) # 1c006438 <BH1750_Init>
1c006004:	540cfc00 	bl	3324(0xcfc) # 1c006d00 <BEEP_Init>
1c006008:	1400004c 	lu12i.w	$r12,2(0x2)
1c00600c:	03960184 	ori	$r4,$r12,0x580
1c006010:	57ca9fff 	bl	-13668(0xfffca9c) # 1c002aac <Uart0_init>
1c006014:	00150006 	move	$r6,$r0
1c006018:	02804005 	addi.w	$r5,$r0,16(0x10)
1c00601c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c006020:	03805184 	ori	$r4,$r12,0x14
1c006024:	57b4abff 	bl	-19288(0xfffb4a8) # 1c0014cc <AFIO_RemapConfig>
1c006028:	57d9e3ff 	bl	-9760(0xfffd9e0) # 1c003a08 <Adc_powerOn>
1c00602c:	02810004 	addi.w	$r4,$r0,64(0x40)
1c006030:	57da2fff 	bl	-9684(0xfffda2c) # 1c003a5c <Adc_openGroup>
1c006034:	50001c00 	b	28(0x1c) # 1c006050 <main+0x78>
1c006038:	02804007 	addi.w	$r7,$r0,16(0x10)
1c00603c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c006040:	02b510c6 	addi.w	$r6,$r6,-700(0xd44)
1c006044:	02801005 	addi.w	$r5,$r0,4(0x4)
1c006048:	02802804 	addi.w	$r4,$r0,10(0xa)
1c00604c:	57f897ff 	bl	-1900(0xffff894) # 1c0058e0 <OLED_Show_Str>
1c006050:	54099800 	bl	2456(0x998) # 1c0069e8 <DHT11_Init>
1c006054:	0015008c 	move	$r12,$r4
1c006058:	47ffe19f 	bnez	$r12,-32(0x7fffe0) # 1c006038 <main+0x60>
1c00605c:	5405c800 	bl	1480(0x5c8) # 1c006624 <BH1750_Test>
1c006060:	0015008c 	move	$r12,$r4
1c006064:	0015018d 	move	$r13,$r12
1c006068:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c00606c:	02be798c 	addi.w	$r12,$r12,-98(0xf9e)
1c006070:	2940018d 	st.h	$r13,$r12,0
1c006074:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006078:	02be498c 	addi.w	$r12,$r12,-110(0xf92)
1c00607c:	2a40018c 	ld.hu	$r12,$r12,0
1c006080:	00150186 	move	$r6,$r12
1c006084:	1c000065 	pcaddu12i	$r5,3(0x3)
1c006088:	02b450a5 	addi.w	$r5,$r5,-748(0xd14)
1c00608c:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c006090:	28be3084 	ld.w	$r4,$r4,-116(0xf8c)
1c006094:	57c49fff 	bl	-15204(0xfffc49c) # 1c002530 <sprintf>
1c006098:	02804007 	addi.w	$r7,$r0,16(0x10)
1c00609c:	1cc7ff66 	pcaddu12i	$r6,409595(0x63ffb)
1c0060a0:	28bdf0c6 	ld.w	$r6,$r6,-132(0xf7c)
1c0060a4:	00150005 	move	$r5,$r0
1c0060a8:	00150004 	move	$r4,$r0
1c0060ac:	57f837ff 	bl	-1996(0xffff834) # 1c0058e0 <OLED_Show_Str>
1c0060b0:	02801804 	addi.w	$r4,$r0,6(0x6)
1c0060b4:	57da4bff 	bl	-9656(0xfffda48) # 1c003afc <Adc_Measure>
1c0060b8:	0015008c 	move	$r12,$r4
1c0060bc:	0015018d 	move	$r13,$r12
1c0060c0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0060c4:	02bd218c 	addi.w	$r12,$r12,-184(0xf48)
1c0060c8:	2940018d 	st.h	$r13,$r12,0
1c0060cc:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0060d0:	02bcf18c 	addi.w	$r12,$r12,-196(0xf3c)
1c0060d4:	2a40018c 	ld.hu	$r12,$r12,0
1c0060d8:	0015018d 	move	$r13,$r12
1c0060dc:	0286400c 	addi.w	$r12,$r0,400(0x190)
1c0060e0:	001c31ad 	mul.w	$r13,$r13,$r12
1c0060e4:	140000ac 	lu12i.w	$r12,5(0x5)
1c0060e8:	039f918c 	ori	$r12,$r12,0x7e4
1c0060ec:	002031ae 	div.w	$r14,$r13,$r12
1c0060f0:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0060f8 <main+0x120>
1c0060f4:	002a0007 	break	0x7
1c0060f8:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c0060fc:	02bfd98c 	addi.w	$r12,$r12,-10(0xff6)
1c006100:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c006104:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006108:	02bc198c 	addi.w	$r12,$r12,-250(0xf06)
1c00610c:	2940018d 	st.h	$r13,$r12,0
1c006110:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006114:	02bbe98c 	addi.w	$r12,$r12,-262(0xefa)
1c006118:	2a40018c 	ld.hu	$r12,$r12,0
1c00611c:	00150186 	move	$r6,$r12
1c006120:	1c000065 	pcaddu12i	$r5,3(0x3)
1c006124:	02b230a5 	addi.w	$r5,$r5,-884(0xc8c)
1c006128:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c00612c:	28bbf084 	ld.w	$r4,$r4,-260(0xefc)
1c006130:	57c403ff 	bl	-15360(0xfffc400) # 1c002530 <sprintf>
1c006134:	028fa004 	addi.w	$r4,$r0,1000(0x3e8)
1c006138:	57d517ff 	bl	-10988(0xfffd514) # 1c00364c <delay_ms>
1c00613c:	1cc7ff45 	pcaddu12i	$r5,409594(0x63ffa)
1c006140:	02bb20a5 	addi.w	$r5,$r5,-312(0xec8)
1c006144:	1cc7ff44 	pcaddu12i	$r4,409594(0x63ffa)
1c006148:	02baf884 	addi.w	$r4,$r4,-322(0xebe)
1c00614c:	54079000 	bl	1936(0x790) # 1c0068dc <DHT11_Read_Data>
1c006150:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006154:	02bac98c 	addi.w	$r12,$r12,-334(0xeb2)
1c006158:	2a40018d 	ld.hu	$r13,$r12,0
1c00615c:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c006160:	002131ae 	div.wu	$r14,$r13,$r12
1c006164:	5c000980 	bne	$r12,$r0,8(0x8) # 1c00616c <main+0x194>
1c006168:	002a0007 	break	0x7
1c00616c:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c006170:	00150186 	move	$r6,$r12
1c006174:	1c000065 	pcaddu12i	$r5,3(0x3)
1c006178:	02b120a5 	addi.w	$r5,$r5,-952(0xc48)
1c00617c:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c006180:	28ba8084 	ld.w	$r4,$r4,-352(0xea0)
1c006184:	57c3afff 	bl	-15444(0xfffc3ac) # 1c002530 <sprintf>
1c006188:	02804007 	addi.w	$r7,$r0,16(0x10)
1c00618c:	1cc7ff66 	pcaddu12i	$r6,409595(0x63ffb)
1c006190:	28ba40c6 	ld.w	$r6,$r6,-368(0xe90)
1c006194:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c006198:	00150004 	move	$r4,$r0
1c00619c:	57f747ff 	bl	-2236(0xffff744) # 1c0058e0 <OLED_Show_Str>
1c0061a0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0061a4:	02b9918c 	addi.w	$r12,$r12,-412(0xe64)
1c0061a8:	2a40018d 	ld.hu	$r13,$r12,0
1c0061ac:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0061b0:	002131ae 	div.wu	$r14,$r13,$r12
1c0061b4:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0061bc <main+0x1e4>
1c0061b8:	002a0007 	break	0x7
1c0061bc:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c0061c0:	00150186 	move	$r6,$r12
1c0061c4:	1c000065 	pcaddu12i	$r5,3(0x3)
1c0061c8:	02b020a5 	addi.w	$r5,$r5,-1016(0xc08)
1c0061cc:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c0061d0:	28b94084 	ld.w	$r4,$r4,-432(0xe50)
1c0061d4:	57c35fff 	bl	-15524(0xfffc35c) # 1c002530 <sprintf>
1c0061d8:	02804007 	addi.w	$r7,$r0,16(0x10)
1c0061dc:	1cc7ff66 	pcaddu12i	$r6,409595(0x63ffb)
1c0061e0:	28b900c6 	ld.w	$r6,$r6,-448(0xe40)
1c0061e4:	02801805 	addi.w	$r5,$r0,6(0x6)
1c0061e8:	00150004 	move	$r4,$r0
1c0061ec:	57f6f7ff 	bl	-2316(0xffff6f4) # 1c0058e0 <OLED_Show_Str>
1c0061f0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0061f4:	02b8498c 	addi.w	$r12,$r12,-494(0xe12)
1c0061f8:	2a40018d 	ld.hu	$r13,$r12,0
1c0061fc:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c006200:	002131ae 	div.wu	$r14,$r13,$r12
1c006204:	5c000980 	bne	$r12,$r0,8(0x8) # 1c00620c <main+0x234>
1c006208:	002a0007 	break	0x7
1c00620c:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c006210:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c006214:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006218:	02b8718c 	addi.w	$r12,$r12,-484(0xe1c)
1c00621c:	2900098d 	st.b	$r13,$r12,2(0x2)
1c006220:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006224:	02b7918c 	addi.w	$r12,$r12,-540(0xde4)
1c006228:	2a40018d 	ld.hu	$r13,$r12,0
1c00622c:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c006230:	002131ae 	div.wu	$r14,$r13,$r12
1c006234:	5c000980 	bne	$r12,$r0,8(0x8) # 1c00623c <main+0x264>
1c006238:	002a0007 	break	0x7
1c00623c:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c006240:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c006244:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006248:	02b7b18c 	addi.w	$r12,$r12,-532(0xdec)
1c00624c:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c006250:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006254:	02b6e98c 	addi.w	$r12,$r12,-582(0xdba)
1c006258:	2a40018c 	ld.hu	$r12,$r12,0
1c00625c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006260:	02bf9d8c 	addi.w	$r12,$r12,-25(0xfe7)
1c006264:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c006268:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c00626c:	02b7218c 	addi.w	$r12,$r12,-568(0xdc8)
1c006270:	2900118d 	st.b	$r13,$r12,4(0x4)
1c006274:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006278:	02b6498c 	addi.w	$r12,$r12,-622(0xd92)
1c00627c:	2a40018c 	ld.hu	$r12,$r12,0
1c006280:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c006284:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006288:	02b6b18c 	addi.w	$r12,$r12,-596(0xdac)
1c00628c:	2900158d 	st.b	$r13,$r12,5(0x5)
1c006290:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006294:	28b6018c 	ld.w	$r12,$r12,-640(0xd80)
1c006298:	2a00018c 	ld.bu	$r12,$r12,0
1c00629c:	44008180 	bnez	$r12,128(0x80) # 1c00631c <main+0x344>
1c0062a0:	02815004 	addi.w	$r4,$r0,84(0x54)
1c0062a4:	540a8c00 	bl	2700(0xa8c) # 1c006d30 <esp8266_check_cmd>
1c0062a8:	0015008c 	move	$r12,$r4
1c0062ac:	40007180 	beqz	$r12,112(0x70) # 1c00631c <main+0x344>
1c0062b0:	57ef67ff 	bl	-4252(0xfffef64) # 1c005214 <OLED_Clear>
1c0062b4:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0062b8:	28b5718c 	ld.w	$r12,$r12,-676(0xd5c)
1c0062bc:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0062c0:	2900018d 	st.b	$r13,$r12,0
1c0062c4:	02804007 	addi.w	$r7,$r0,16(0x10)
1c0062c8:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0062cc:	02ac50c6 	addi.w	$r6,$r6,-1260(0xb14)
1c0062d0:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c0062d4:	02803004 	addi.w	$r4,$r0,12(0xc)
1c0062d8:	57f60bff 	bl	-2552(0xffff608) # 1c0058e0 <OLED_Show_Str>
1c0062dc:	028fa004 	addi.w	$r4,$r0,1000(0x3e8)
1c0062e0:	57d36fff 	bl	-11412(0xfffd36c) # 1c00364c <delay_ms>
1c0062e4:	57ef33ff 	bl	-4304(0xfffef30) # 1c005214 <OLED_Clear>
1c0062e8:	0287d004 	addi.w	$r4,$r0,500(0x1f4)
1c0062ec:	57d363ff 	bl	-11424(0xfffd360) # 1c00364c <delay_ms>
1c0062f0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0062f4:	02805004 	addi.w	$r4,$r0,20(0x14)
1c0062f8:	57b2f3ff 	bl	-19728(0xfffb2f0) # 1c0015e8 <gpio_write_pin>
1c0062fc:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006300:	0280fc04 	addi.w	$r4,$r0,63(0x3f)
1c006304:	57b2e7ff 	bl	-19740(0xfffb2e4) # 1c0015e8 <gpio_write_pin>
1c006308:	0287d004 	addi.w	$r4,$r0,500(0x1f4)
1c00630c:	57d343ff 	bl	-11456(0xfffd340) # 1c00364c <delay_ms>
1c006310:	00150005 	move	$r5,$r0
1c006314:	0280fc04 	addi.w	$r4,$r0,63(0x3f)
1c006318:	57b2d3ff 	bl	-19760(0xfffb2d0) # 1c0015e8 <gpio_write_pin>
1c00631c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006320:	28b3d18c 	ld.w	$r12,$r12,-780(0xcf4)
1c006324:	2a00018d 	ld.bu	$r13,$r12,0
1c006328:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00632c:	5c0095ac 	bne	$r13,$r12,148(0x94) # 1c0063c0 <main+0x3e8>
1c006330:	02977004 	addi.w	$r4,$r0,1500(0x5dc)
1c006334:	57d31bff 	bl	-11496(0xfffd318) # 1c00364c <delay_ms>
1c006338:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c00633c:	02b3e18c 	addi.w	$r12,$r12,-776(0xcf8)
1c006340:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c006344:	0015018d 	move	$r13,$r12
1c006348:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c00634c:	02b3a18c 	addi.w	$r12,$r12,-792(0xce8)
1c006350:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c006354:	001031ac 	add.w	$r12,$r13,$r12
1c006358:	1cc7ff6d 	pcaddu12i	$r13,409595(0x63ffb)
1c00635c:	02b361ad 	addi.w	$r13,$r13,-808(0xcd8)
1c006360:	2a0011ad 	ld.bu	$r13,$r13,4(0x4)
1c006364:	0010358c 	add.w	$r12,$r12,$r13
1c006368:	1cc7ff6d 	pcaddu12i	$r13,409595(0x63ffb)
1c00636c:	02b321ad 	addi.w	$r13,$r13,-824(0xcc8)
1c006370:	2a0015ad 	ld.bu	$r13,$r13,5(0x5)
1c006374:	0010358d 	add.w	$r13,$r12,$r13
1c006378:	0284000c 	addi.w	$r12,$r0,256(0x100)
1c00637c:	0020b1ae 	mod.w	$r14,$r13,$r12
1c006380:	5c000980 	bne	$r12,$r0,8(0x8) # 1c006388 <main+0x3b0>
1c006384:	002a0007 	break	0x7
1c006388:	006781cd 	bstrpick.w	$r13,$r14,0x7,0x0
1c00638c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006390:	02b2918c 	addi.w	$r12,$r12,-860(0xca4)
1c006394:	2900198d 	st.b	$r13,$r12,6(0x6)
1c006398:	1cc7ff65 	pcaddu12i	$r5,409595(0x63ffb)
1c00639c:	02b260a5 	addi.w	$r5,$r5,-872(0xc98)
1c0063a0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0063a4:	02a94084 	addi.w	$r4,$r4,-1456(0xa50)
1c0063a8:	57b7fbff 	bl	-18440(0xfffb7f8) # 1c001ba0 <myprintf>
1c0063ac:	02802006 	addi.w	$r6,$r0,8(0x8)
1c0063b0:	1cc7ff65 	pcaddu12i	$r5,409595(0x63ffb)
1c0063b4:	02b200a5 	addi.w	$r5,$r5,-896(0xc80)
1c0063b8:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c0063bc:	57c62fff 	bl	-14804(0xfffc62c) # 1c0029e8 <UART_SendDataALL>
1c0063c0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0063c4:	02b1298c 	addi.w	$r12,$r12,-950(0xc4a)
1c0063c8:	2a40018d 	ld.hu	$r13,$r12,0
1c0063cc:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c0063d0:	6ffc8d8d 	bgeu	$r12,$r13,-884(0x3fc8c) # 1c00605c <main+0x84>
1c0063d4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0063d8:	02807004 	addi.w	$r4,$r0,28(0x1c)
1c0063dc:	57b20fff 	bl	-19956(0xfffb20c) # 1c0015e8 <gpio_write_pin>
1c0063e0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0063e4:	50003800 	b	56(0x38) # 1c00641c <main+0x444>
1c0063e8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0063ec:	0280fc04 	addi.w	$r4,$r0,63(0x3f)
1c0063f0:	57b1fbff 	bl	-19976(0xfffb1f8) # 1c0015e8 <gpio_write_pin>
1c0063f4:	02819004 	addi.w	$r4,$r0,100(0x64)
1c0063f8:	57d257ff 	bl	-11692(0xfffd254) # 1c00364c <delay_ms>
1c0063fc:	00150005 	move	$r5,$r0
1c006400:	0280fc04 	addi.w	$r4,$r0,63(0x3f)
1c006404:	57b1e7ff 	bl	-19996(0xfffb1e4) # 1c0015e8 <gpio_write_pin>
1c006408:	02819004 	addi.w	$r4,$r0,100(0x64)
1c00640c:	57d243ff 	bl	-11712(0xfffd240) # 1c00364c <delay_ms>
1c006410:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006414:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006418:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00641c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006420:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c006424:	67ffc58d 	bge	$r12,$r13,-60(0x3ffc4) # 1c0063e8 <main+0x410>
1c006428:	00150005 	move	$r5,$r0
1c00642c:	02807004 	addi.w	$r4,$r0,28(0x1c)
1c006430:	57b1bbff 	bl	-20040(0xfffb1b8) # 1c0015e8 <gpio_write_pin>
1c006434:	53fc2bff 	b	-984(0xffffc28) # 1c00605c <main+0x84>

1c006438 <BH1750_Init>:
BH1750_Init():
1c006438:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00643c:	29803061 	st.w	$r1,$r3,12(0xc)
1c006440:	29802076 	st.w	$r22,$r3,8(0x8)
1c006444:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006448:	57f747ff 	bl	-2236(0xffff744) # 1c005b8c <myIIC_Init>
1c00644c:	03400000 	andi	$r0,$r0,0x0
1c006450:	28803061 	ld.w	$r1,$r3,12(0xc)
1c006454:	28802076 	ld.w	$r22,$r3,8(0x8)
1c006458:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00645c:	4c000020 	jirl	$r0,$r1,0

1c006460 <Cmd_Write_BH1750>:
Cmd_Write_BH1750():
1c006460:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c006464:	29807061 	st.w	$r1,$r3,28(0x1c)
1c006468:	29806076 	st.w	$r22,$r3,24(0x18)
1c00646c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c006470:	0015008c 	move	$r12,$r4
1c006474:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c006478:	57f7efff 	bl	-2068(0xffff7ec) # 1c005c64 <myIIC_Start>
1c00647c:	02811804 	addi.w	$r4,$r0,70(0x46)
1c006480:	57f9fbff 	bl	-1544(0xffff9f8) # 1c005e78 <myIIC_Send_Byte>
1c006484:	03400000 	andi	$r0,$r0,0x0
1c006488:	57f89fff 	bl	-1892(0xffff89c) # 1c005d24 <myIIC_Wait_Ack>
1c00648c:	0015008c 	move	$r12,$r4
1c006490:	47fff99f 	bnez	$r12,-8(0x7ffff8) # 1c006488 <Cmd_Write_BH1750+0x28>
1c006494:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c006498:	00150184 	move	$r4,$r12
1c00649c:	57f9dfff 	bl	-1572(0xffff9dc) # 1c005e78 <myIIC_Send_Byte>
1c0064a0:	03400000 	andi	$r0,$r0,0x0
1c0064a4:	57f883ff 	bl	-1920(0xffff880) # 1c005d24 <myIIC_Wait_Ack>
1c0064a8:	0015008c 	move	$r12,$r4
1c0064ac:	47fff99f 	bnez	$r12,-8(0x7ffff8) # 1c0064a4 <Cmd_Write_BH1750+0x44>
1c0064b0:	57f817ff 	bl	-2028(0xffff814) # 1c005cc4 <myIIC_Stop>
1c0064b4:	02801404 	addi.w	$r4,$r0,5(0x5)
1c0064b8:	57d197ff 	bl	-11884(0xfffd194) # 1c00364c <delay_ms>
1c0064bc:	03400000 	andi	$r0,$r0,0x0
1c0064c0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0064c4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0064c8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0064cc:	4c000020 	jirl	$r0,$r1,0

1c0064d0 <Start_BH1750>:
Start_BH1750():
1c0064d0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0064d4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0064d8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0064dc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0064e0:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0064e4:	57ff7fff 	bl	-132(0xfffff7c) # 1c006460 <Cmd_Write_BH1750>
1c0064e8:	02801c04 	addi.w	$r4,$r0,7(0x7)
1c0064ec:	57ff77ff 	bl	-140(0xfffff74) # 1c006460 <Cmd_Write_BH1750>
1c0064f0:	02808004 	addi.w	$r4,$r0,32(0x20)
1c0064f4:	57ff6fff 	bl	-148(0xfffff6c) # 1c006460 <Cmd_Write_BH1750>
1c0064f8:	03400000 	andi	$r0,$r0,0x0
1c0064fc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c006500:	28802076 	ld.w	$r22,$r3,8(0x8)
1c006504:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006508:	4c000020 	jirl	$r0,$r1,0

1c00650c <Read_BH1750>:
Read_BH1750():
1c00650c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006510:	29803061 	st.w	$r1,$r3,12(0xc)
1c006514:	29802076 	st.w	$r22,$r3,8(0x8)
1c006518:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00651c:	57f74bff 	bl	-2232(0xffff748) # 1c005c64 <myIIC_Start>
1c006520:	02811c04 	addi.w	$r4,$r0,71(0x47)
1c006524:	57f957ff 	bl	-1708(0xffff954) # 1c005e78 <myIIC_Send_Byte>
1c006528:	03400000 	andi	$r0,$r0,0x0
1c00652c:	57f7fbff 	bl	-2056(0xffff7f8) # 1c005d24 <myIIC_Wait_Ack>
1c006530:	0015008c 	move	$r12,$r4
1c006534:	47fff99f 	bnez	$r12,-8(0x7ffff8) # 1c00652c <Read_BH1750+0x20>
1c006538:	02800404 	addi.w	$r4,$r0,1(0x1)
1c00653c:	57f9ebff 	bl	-1560(0xffff9e8) # 1c005f24 <myIIC_Read_Byte>
1c006540:	0015008c 	move	$r12,$r4
1c006544:	0015018d 	move	$r13,$r12
1c006548:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c00654c:	02ab118c 	addi.w	$r12,$r12,-1340(0xac4)
1c006550:	2900018d 	st.b	$r13,$r12,0
1c006554:	00150004 	move	$r4,$r0
1c006558:	57f9cfff 	bl	-1588(0xffff9cc) # 1c005f24 <myIIC_Read_Byte>
1c00655c:	0015008c 	move	$r12,$r4
1c006560:	0015018d 	move	$r13,$r12
1c006564:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006568:	02aaa18c 	addi.w	$r12,$r12,-1368(0xaa8)
1c00656c:	2900058d 	st.b	$r13,$r12,1(0x1)
1c006570:	57f757ff 	bl	-2220(0xffff754) # 1c005cc4 <myIIC_Stop>
1c006574:	02801404 	addi.w	$r4,$r0,5(0x5)
1c006578:	57d0d7ff 	bl	-12076(0xfffd0d4) # 1c00364c <delay_ms>
1c00657c:	03400000 	andi	$r0,$r0,0x0
1c006580:	28803061 	ld.w	$r1,$r3,12(0xc)
1c006584:	28802076 	ld.w	$r22,$r3,8(0x8)
1c006588:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00658c:	4c000020 	jirl	$r0,$r1,0

1c006590 <Convert_BH1750>:
Convert_BH1750():
1c006590:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006594:	29803076 	st.w	$r22,$r3,12(0xc)
1c006598:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00659c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0065a0:	02a9c18c 	addi.w	$r12,$r12,-1424(0xa70)
1c0065a4:	2a00018c 	ld.bu	$r12,$r12,0
1c0065a8:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0065ac:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0065b0:	02a9898c 	addi.w	$r12,$r12,-1438(0xa62)
1c0065b4:	2940018d 	st.h	$r13,$r12,0
1c0065b8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0065bc:	02a9598c 	addi.w	$r12,$r12,-1450(0xa56)
1c0065c0:	2a40018c 	ld.hu	$r12,$r12,0
1c0065c4:	0040a18c 	slli.w	$r12,$r12,0x8
1c0065c8:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0065cc:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0065d0:	02a9018c 	addi.w	$r12,$r12,-1472(0xa40)
1c0065d4:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c0065d8:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0065dc:	001031ac 	add.w	$r12,$r13,$r12
1c0065e0:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0065e4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0065e8:	02a8a98c 	addi.w	$r12,$r12,-1494(0xa2a)
1c0065ec:	2940018d 	st.h	$r13,$r12,0
1c0065f0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0065f4:	02a8798c 	addi.w	$r12,$r12,-1506(0xa1e)
1c0065f8:	2a40018d 	ld.hu	$r13,$r12,0
1c0065fc:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006600:	02a8498c 	addi.w	$r12,$r12,-1518(0xa12)
1c006604:	2940018d 	st.h	$r13,$r12,0
1c006608:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c00660c:	02a8198c 	addi.w	$r12,$r12,-1530(0xa06)
1c006610:	2a40018c 	ld.hu	$r12,$r12,0
1c006614:	00150184 	move	$r4,$r12
1c006618:	28803076 	ld.w	$r22,$r3,12(0xc)
1c00661c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006620:	4c000020 	jirl	$r0,$r1,0

1c006624 <BH1750_Test>:
BH1750_Test():
1c006624:	02bec063 	addi.w	$r3,$r3,-80(0xfb0)
1c006628:	29813061 	st.w	$r1,$r3,76(0x4c)
1c00662c:	29812076 	st.w	$r22,$r3,72(0x48)
1c006630:	02814076 	addi.w	$r22,$r3,80(0x50)
1c006634:	57fe9fff 	bl	-356(0xffffe9c) # 1c0064d0 <Start_BH1750>
1c006638:	0281e004 	addi.w	$r4,$r0,120(0x78)
1c00663c:	57d013ff 	bl	-12272(0xfffd010) # 1c00364c <delay_ms>
1c006640:	57fecfff 	bl	-308(0xffffecc) # 1c00650c <Read_BH1750>
1c006644:	57ff4fff 	bl	-180(0xfffff4c) # 1c006590 <Convert_BH1750>
1c006648:	0015008c 	move	$r12,$r4
1c00664c:	00150184 	move	$r4,$r12
1c006650:	28813061 	ld.w	$r1,$r3,76(0x4c)
1c006654:	28812076 	ld.w	$r22,$r3,72(0x48)
1c006658:	02814063 	addi.w	$r3,$r3,80(0x50)
1c00665c:	4c000020 	jirl	$r0,$r1,0

1c006660 <DHT11_Rst>:
DHT11_Rst():
1c006660:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006664:	29803061 	st.w	$r1,$r3,12(0xc)
1c006668:	29802076 	st.w	$r22,$r3,8(0x8)
1c00666c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006670:	54007000 	bl	112(0x70) # 1c0066e0 <DHT11_IO_Out>
1c006674:	00150005 	move	$r5,$r0
1c006678:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c00667c:	57af6fff 	bl	-20628(0xfffaf6c) # 1c0015e8 <gpio_write_pin>
1c006680:	02805004 	addi.w	$r4,$r0,20(0x14)
1c006684:	57cfcbff 	bl	-12344(0xfffcfc8) # 1c00364c <delay_ms>
1c006688:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00668c:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c006690:	57af5bff 	bl	-20648(0xfffaf58) # 1c0015e8 <gpio_write_pin>
1c006694:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c006698:	57cf7fff 	bl	-12420(0xfffcf7c) # 1c003614 <delay_us>
1c00669c:	03400000 	andi	$r0,$r0,0x0
1c0066a0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0066a4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0066a8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0066ac:	4c000020 	jirl	$r0,$r1,0

1c0066b0 <DHT11_IO_In>:
DHT11_IO_In():
1c0066b0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0066b4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0066b8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0066bc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0066c0:	00150005 	move	$r5,$r0
1c0066c4:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c0066c8:	57b1a7ff 	bl	-20060(0xfffb1a4) # 1c00186c <gpio_set_direction>
1c0066cc:	03400000 	andi	$r0,$r0,0x0
1c0066d0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0066d4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0066d8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0066dc:	4c000020 	jirl	$r0,$r1,0

1c0066e0 <DHT11_IO_Out>:
DHT11_IO_Out():
1c0066e0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0066e4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0066e8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0066ec:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0066f0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0066f4:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c0066f8:	57b177ff 	bl	-20108(0xfffb174) # 1c00186c <gpio_set_direction>
1c0066fc:	03400000 	andi	$r0,$r0,0x0
1c006700:	28803061 	ld.w	$r1,$r3,12(0xc)
1c006704:	28802076 	ld.w	$r22,$r3,8(0x8)
1c006708:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00670c:	4c000020 	jirl	$r0,$r1,0

1c006710 <DHT11_Check>:
DHT11_Check():
1c006710:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c006714:	29807061 	st.w	$r1,$r3,28(0x1c)
1c006718:	29806076 	st.w	$r22,$r3,24(0x18)
1c00671c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c006720:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c006724:	57ff8fff 	bl	-116(0xfffff8c) # 1c0066b0 <DHT11_IO_In>
1c006728:	50001000 	b	16(0x10) # 1c006738 <DHT11_Check+0x28>
1c00672c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c006730:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006734:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c006738:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c00673c:	57ae5fff 	bl	-20900(0xfffae5c) # 1c001598 <gpio_get_pin>
1c006740:	0015008c 	move	$r12,$r4
1c006744:	40001180 	beqz	$r12,16(0x10) # 1c006754 <DHT11_Check+0x44>
1c006748:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c00674c:	02818c0c 	addi.w	$r12,$r0,99(0x63)
1c006750:	6fffdd8d 	bgeu	$r12,$r13,-36(0x3ffdc) # 1c00672c <DHT11_Check+0x1c>
1c006754:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c006758:	02818c0c 	addi.w	$r12,$r0,99(0x63)
1c00675c:	6c000d8d 	bgeu	$r12,$r13,12(0xc) # 1c006768 <DHT11_Check+0x58>
1c006760:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006764:	50004c00 	b	76(0x4c) # 1c0067b0 <DHT11_Check+0xa0>
1c006768:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c00676c:	50001000 	b	16(0x10) # 1c00677c <DHT11_Check+0x6c>
1c006770:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c006774:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006778:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00677c:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c006780:	57ae1bff 	bl	-20968(0xfffae18) # 1c001598 <gpio_get_pin>
1c006784:	0015008c 	move	$r12,$r4
1c006788:	44001180 	bnez	$r12,16(0x10) # 1c006798 <DHT11_Check+0x88>
1c00678c:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c006790:	02818c0c 	addi.w	$r12,$r0,99(0x63)
1c006794:	6fffdd8d 	bgeu	$r12,$r13,-36(0x3ffdc) # 1c006770 <DHT11_Check+0x60>
1c006798:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c00679c:	02818c0c 	addi.w	$r12,$r0,99(0x63)
1c0067a0:	6c000d8d 	bgeu	$r12,$r13,12(0xc) # 1c0067ac <DHT11_Check+0x9c>
1c0067a4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0067a8:	50000800 	b	8(0x8) # 1c0067b0 <DHT11_Check+0xa0>
1c0067ac:	0015000c 	move	$r12,$r0
1c0067b0:	00150184 	move	$r4,$r12
1c0067b4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0067b8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0067bc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0067c0:	4c000020 	jirl	$r0,$r1,0

1c0067c4 <DHT11_Read_Bit>:
DHT11_Read_Bit():
1c0067c4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0067c8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0067cc:	29806076 	st.w	$r22,$r3,24(0x18)
1c0067d0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0067d4:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0067d8:	50001000 	b	16(0x10) # 1c0067e8 <DHT11_Read_Bit+0x24>
1c0067dc:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0067e0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0067e4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0067e8:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c0067ec:	57adafff 	bl	-21076(0xfffadac) # 1c001598 <gpio_get_pin>
1c0067f0:	0015008c 	move	$r12,$r4
1c0067f4:	40001180 	beqz	$r12,16(0x10) # 1c006804 <DHT11_Read_Bit+0x40>
1c0067f8:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0067fc:	02818c0c 	addi.w	$r12,$r0,99(0x63)
1c006800:	6fffdd8d 	bgeu	$r12,$r13,-36(0x3ffdc) # 1c0067dc <DHT11_Read_Bit+0x18>
1c006804:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c006808:	50001000 	b	16(0x10) # 1c006818 <DHT11_Read_Bit+0x54>
1c00680c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c006810:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006814:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c006818:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c00681c:	57ad7fff 	bl	-21124(0xfffad7c) # 1c001598 <gpio_get_pin>
1c006820:	0015008c 	move	$r12,$r4
1c006824:	44001180 	bnez	$r12,16(0x10) # 1c006834 <DHT11_Read_Bit+0x70>
1c006828:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c00682c:	02818c0c 	addi.w	$r12,$r0,99(0x63)
1c006830:	6fffdd8d 	bgeu	$r12,$r13,-36(0x3ffdc) # 1c00680c <DHT11_Read_Bit+0x48>
1c006834:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c006838:	57cddfff 	bl	-12836(0xfffcddc) # 1c003614 <delay_us>
1c00683c:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c006840:	57ad5bff 	bl	-21160(0xfffad58) # 1c001598 <gpio_get_pin>
1c006844:	0015008c 	move	$r12,$r4
1c006848:	40000d80 	beqz	$r12,12(0xc) # 1c006854 <DHT11_Read_Bit+0x90>
1c00684c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006850:	50000800 	b	8(0x8) # 1c006858 <DHT11_Read_Bit+0x94>
1c006854:	0015000c 	move	$r12,$r0
1c006858:	00150184 	move	$r4,$r12
1c00685c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c006860:	28806076 	ld.w	$r22,$r3,24(0x18)
1c006864:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006868:	4c000020 	jirl	$r0,$r1,0

1c00686c <DHT11_Read_Byte>:
DHT11_Read_Byte():
1c00686c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c006870:	29807061 	st.w	$r1,$r3,28(0x1c)
1c006874:	29806076 	st.w	$r22,$r3,24(0x18)
1c006878:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00687c:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c006880:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c006884:	50003400 	b	52(0x34) # 1c0068b8 <DHT11_Read_Byte+0x4c>
1c006888:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c00688c:	0040858c 	slli.w	$r12,$r12,0x1
1c006890:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c006894:	57ff33ff 	bl	-208(0xfffff30) # 1c0067c4 <DHT11_Read_Bit>
1c006898:	0015008c 	move	$r12,$r4
1c00689c:	0015018d 	move	$r13,$r12
1c0068a0:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0068a4:	001531ac 	or	$r12,$r13,$r12
1c0068a8:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c0068ac:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0068b0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0068b4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0068b8:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0068bc:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c0068c0:	6fffc98d 	bgeu	$r12,$r13,-56(0x3ffc8) # 1c006888 <DHT11_Read_Byte+0x1c>
1c0068c4:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0068c8:	00150184 	move	$r4,$r12
1c0068cc:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0068d0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0068d4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0068d8:	4c000020 	jirl	$r0,$r1,0

1c0068dc <DHT11_Read_Data>:
DHT11_Read_Data():
1c0068dc:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0068e0:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0068e4:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0068e8:	29809077 	st.w	$r23,$r3,36(0x24)
1c0068ec:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0068f0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0068f4:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0068f8:	57fd6bff 	bl	-664(0xffffd68) # 1c006660 <DHT11_Rst>
1c0068fc:	57fe17ff 	bl	-492(0xffffe14) # 1c006710 <DHT11_Check>
1c006900:	0015008c 	move	$r12,$r4
1c006904:	4400c180 	bnez	$r12,192(0xc0) # 1c0069c4 <DHT11_Read_Data+0xe8>
1c006908:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c00690c:	50002800 	b	40(0x28) # 1c006934 <DHT11_Read_Data+0x58>
1c006910:	2a3fbed7 	ld.bu	$r23,$r22,-17(0xfef)
1c006914:	57ff5bff 	bl	-168(0xfffff58) # 1c00686c <DHT11_Read_Byte>
1c006918:	0015008c 	move	$r12,$r4
1c00691c:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c006920:	00105dad 	add.w	$r13,$r13,$r23
1c006924:	293fe1ac 	st.b	$r12,$r13,-8(0xff8)
1c006928:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00692c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006930:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c006934:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c006938:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c00693c:	6fffd58d 	bgeu	$r12,$r13,-44(0x3ffd4) # 1c006910 <DHT11_Read_Data+0x34>
1c006940:	2a3fa2cc 	ld.bu	$r12,$r22,-24(0xfe8)
1c006944:	0015018d 	move	$r13,$r12
1c006948:	2a3fa6cc 	ld.bu	$r12,$r22,-23(0xfe9)
1c00694c:	001031ac 	add.w	$r12,$r13,$r12
1c006950:	2a3faacd 	ld.bu	$r13,$r22,-22(0xfea)
1c006954:	0010358c 	add.w	$r12,$r12,$r13
1c006958:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c00695c:	0010358c 	add.w	$r12,$r12,$r13
1c006960:	2a3fb2cd 	ld.bu	$r13,$r22,-20(0xfec)
1c006964:	5c00698d 	bne	$r12,$r13,104(0x68) # 1c0069cc <DHT11_Read_Data+0xf0>
1c006968:	2a3fa2cc 	ld.bu	$r12,$r22,-24(0xfe8)
1c00696c:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c006970:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c006974:	001c31ac 	mul.w	$r12,$r13,$r12
1c006978:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c00697c:	2a3fa6cc 	ld.bu	$r12,$r22,-23(0xfe9)
1c006980:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c006984:	001031ac 	add.w	$r12,$r13,$r12
1c006988:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c00698c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c006990:	2940018d 	st.h	$r13,$r12,0
1c006994:	2a3faacc 	ld.bu	$r12,$r22,-22(0xfea)
1c006998:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c00699c:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0069a0:	001c31ac 	mul.w	$r12,$r13,$r12
1c0069a4:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0069a8:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c0069ac:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0069b0:	001031ac 	add.w	$r12,$r13,$r12
1c0069b4:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0069b8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0069bc:	2940018d 	st.h	$r13,$r12,0
1c0069c0:	50000c00 	b	12(0xc) # 1c0069cc <DHT11_Read_Data+0xf0>
1c0069c4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0069c8:	50000800 	b	8(0x8) # 1c0069d0 <DHT11_Read_Data+0xf4>
1c0069cc:	0015000c 	move	$r12,$r0
1c0069d0:	00150184 	move	$r4,$r12
1c0069d4:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0069d8:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0069dc:	28809077 	ld.w	$r23,$r3,36(0x24)
1c0069e0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0069e4:	4c000020 	jirl	$r0,$r1,0

1c0069e8 <DHT11_Init>:
DHT11_Init():
1c0069e8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0069ec:	29803061 	st.w	$r1,$r3,12(0xc)
1c0069f0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0069f4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0069f8:	00150005 	move	$r5,$r0
1c0069fc:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c006a00:	57ac63ff 	bl	-21408(0xfffac60) # 1c001660 <gpio_pin_remap>
1c006a04:	57fcdfff 	bl	-804(0xffffcdc) # 1c0066e0 <DHT11_IO_Out>
1c006a08:	57fc5bff 	bl	-936(0xffffc58) # 1c006660 <DHT11_Rst>
1c006a0c:	57fd07ff 	bl	-764(0xffffd04) # 1c006710 <DHT11_Check>
1c006a10:	0015008c 	move	$r12,$r4
1c006a14:	00150184 	move	$r4,$r12
1c006a18:	28803061 	ld.w	$r1,$r3,12(0xc)
1c006a1c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c006a20:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006a24:	4c000020 	jirl	$r0,$r1,0

1c006a28 <Queue_isEmpty>:
Queue_isEmpty():
1c006a28:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c006a2c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c006a30:	02808076 	addi.w	$r22,$r3,32(0x20)
1c006a34:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c006a38:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006a3c:	44000d80 	bnez	$r12,12(0xc) # 1c006a48 <Queue_isEmpty+0x20>
1c006a40:	0015000c 	move	$r12,$r0
1c006a44:	50002400 	b	36(0x24) # 1c006a68 <Queue_isEmpty+0x40>
1c006a48:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006a4c:	2a40018d 	ld.hu	$r13,$r12,0
1c006a50:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006a54:	2a40098c 	ld.hu	$r12,$r12,2(0x2)
1c006a58:	5c000dac 	bne	$r13,$r12,12(0xc) # 1c006a64 <Queue_isEmpty+0x3c>
1c006a5c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006a60:	50000800 	b	8(0x8) # 1c006a68 <Queue_isEmpty+0x40>
1c006a64:	0015000c 	move	$r12,$r0
1c006a68:	00150184 	move	$r4,$r12
1c006a6c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c006a70:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006a74:	4c000020 	jirl	$r0,$r1,0

1c006a78 <Queue_HadUse>:
Queue_HadUse():
1c006a78:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c006a7c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c006a80:	02808076 	addi.w	$r22,$r3,32(0x20)
1c006a84:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c006a88:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006a8c:	44000d80 	bnez	$r12,12(0xc) # 1c006a98 <Queue_HadUse+0x20>
1c006a90:	0015000c 	move	$r12,$r0
1c006a94:	50003800 	b	56(0x38) # 1c006acc <Queue_HadUse+0x54>
1c006a98:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006a9c:	2a40098d 	ld.hu	$r13,$r12,2(0x2)
1c006aa0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006aa4:	2a40018c 	ld.hu	$r12,$r12,0
1c006aa8:	001131ac 	sub.w	$r12,$r13,$r12
1c006aac:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c006ab0:	0284b18c 	addi.w	$r12,$r12,300(0x12c)
1c006ab4:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c006ab8:	0284b00c 	addi.w	$r12,$r0,300(0x12c)
1c006abc:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c006ac0:	5c000980 	bne	$r12,$r0,8(0x8) # 1c006ac8 <Queue_HadUse+0x50>
1c006ac4:	002a0007 	break	0x7
1c006ac8:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c006acc:	00150184 	move	$r4,$r12
1c006ad0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c006ad4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006ad8:	4c000020 	jirl	$r0,$r1,0

1c006adc <Queue_NoUse>:
Queue_NoUse():
1c006adc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c006ae0:	29807076 	st.w	$r22,$r3,28(0x1c)
1c006ae4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c006ae8:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c006aec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006af0:	44000d80 	bnez	$r12,12(0xc) # 1c006afc <Queue_NoUse+0x20>
1c006af4:	0015000c 	move	$r12,$r0
1c006af8:	50004000 	b	64(0x40) # 1c006b38 <Queue_NoUse+0x5c>
1c006afc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006b00:	2a40098c 	ld.hu	$r12,$r12,2(0x2)
1c006b04:	0015018d 	move	$r13,$r12
1c006b08:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006b0c:	2a40018c 	ld.hu	$r12,$r12,0
1c006b10:	001131ac 	sub.w	$r12,$r13,$r12
1c006b14:	0284b18d 	addi.w	$r13,$r12,300(0x12c)
1c006b18:	0284b00c 	addi.w	$r12,$r0,300(0x12c)
1c006b1c:	0020b1ae 	mod.w	$r14,$r13,$r12
1c006b20:	5c000980 	bne	$r12,$r0,8(0x8) # 1c006b28 <Queue_NoUse+0x4c>
1c006b24:	002a0007 	break	0x7
1c006b28:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c006b2c:	0284ac0d 	addi.w	$r13,$r0,299(0x12b)
1c006b30:	001131ac 	sub.w	$r12,$r13,$r12
1c006b34:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c006b38:	00150184 	move	$r4,$r12
1c006b3c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c006b40:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006b44:	4c000020 	jirl	$r0,$r1,0

1c006b48 <Queue_Wirte>:
Queue_Wirte():
1c006b48:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c006b4c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c006b50:	2980a076 	st.w	$r22,$r3,40(0x28)
1c006b54:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c006b58:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c006b5c:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c006b60:	001500cc 	move	$r12,$r6
1c006b64:	297f5acc 	st.h	$r12,$r22,-42(0xfd6)
1c006b68:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c006b6c:	44000d80 	bnez	$r12,12(0xc) # 1c006b78 <Queue_Wirte+0x30>
1c006b70:	0015000c 	move	$r12,$r0
1c006b74:	50009c00 	b	156(0x9c) # 1c006c10 <Queue_Wirte+0xc8>
1c006b78:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c006b7c:	57ff63ff 	bl	-160(0xfffff60) # 1c006adc <Queue_NoUse>
1c006b80:	0015008c 	move	$r12,$r4
1c006b84:	0015018d 	move	$r13,$r12
1c006b88:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c006b8c:	6c000dac 	bgeu	$r13,$r12,12(0xc) # 1c006b98 <Queue_Wirte+0x50>
1c006b90:	0015000c 	move	$r12,$r0
1c006b94:	50007c00 	b	124(0x7c) # 1c006c10 <Queue_Wirte+0xc8>
1c006b98:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c006b9c:	50006400 	b	100(0x64) # 1c006c00 <Queue_Wirte+0xb8>
1c006ba0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006ba4:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c006ba8:	001031ac 	add.w	$r12,$r13,$r12
1c006bac:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c006bb0:	2a4009ad 	ld.hu	$r13,$r13,2(0x2)
1c006bb4:	001501ae 	move	$r14,$r13
1c006bb8:	2a00018d 	ld.bu	$r13,$r12,0
1c006bbc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c006bc0:	0010398c 	add.w	$r12,$r12,$r14
1c006bc4:	2900118d 	st.b	$r13,$r12,4(0x4)
1c006bc8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c006bcc:	2a40098c 	ld.hu	$r12,$r12,2(0x2)
1c006bd0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006bd4:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c006bd8:	0284b00c 	addi.w	$r12,$r0,300(0x12c)
1c006bdc:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c006be0:	5c000980 	bne	$r12,$r0,8(0x8) # 1c006be8 <Queue_Wirte+0xa0>
1c006be4:	002a0007 	break	0x7
1c006be8:	006f81cd 	bstrpick.w	$r13,$r14,0xf,0x0
1c006bec:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c006bf0:	2940098d 	st.h	$r13,$r12,2(0x2)
1c006bf4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006bf8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006bfc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c006c00:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c006c04:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006c08:	63ff99ac 	blt	$r13,$r12,-104(0x3ff98) # 1c006ba0 <Queue_Wirte+0x58>
1c006c0c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006c10:	00150184 	move	$r4,$r12
1c006c14:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c006c18:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c006c1c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c006c20:	4c000020 	jirl	$r0,$r1,0

1c006c24 <Queue_Read>:
Queue_Read():
1c006c24:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c006c28:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c006c2c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c006c30:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c006c34:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c006c38:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c006c3c:	001500cc 	move	$r12,$r6
1c006c40:	297f5acc 	st.h	$r12,$r22,-42(0xfd6)
1c006c44:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c006c48:	44000d80 	bnez	$r12,12(0xc) # 1c006c54 <Queue_Read+0x30>
1c006c4c:	0015000c 	move	$r12,$r0
1c006c50:	50009c00 	b	156(0x9c) # 1c006cec <Queue_Read+0xc8>
1c006c54:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c006c58:	57fe23ff 	bl	-480(0xffffe20) # 1c006a78 <Queue_HadUse>
1c006c5c:	0015008c 	move	$r12,$r4
1c006c60:	0015018d 	move	$r13,$r12
1c006c64:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c006c68:	6c000dac 	bgeu	$r13,$r12,12(0xc) # 1c006c74 <Queue_Read+0x50>
1c006c6c:	0015000c 	move	$r12,$r0
1c006c70:	50007c00 	b	124(0x7c) # 1c006cec <Queue_Read+0xc8>
1c006c74:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c006c78:	50006400 	b	100(0x64) # 1c006cdc <Queue_Read+0xb8>
1c006c7c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c006c80:	2a40018c 	ld.hu	$r12,$r12,0
1c006c84:	0015018e 	move	$r14,$r12
1c006c88:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006c8c:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c006c90:	001031ac 	add.w	$r12,$r13,$r12
1c006c94:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c006c98:	001039ad 	add.w	$r13,$r13,$r14
1c006c9c:	2a0011ad 	ld.bu	$r13,$r13,4(0x4)
1c006ca0:	2900018d 	st.b	$r13,$r12,0
1c006ca4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c006ca8:	2a40018c 	ld.hu	$r12,$r12,0
1c006cac:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006cb0:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c006cb4:	0284b00c 	addi.w	$r12,$r0,300(0x12c)
1c006cb8:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c006cbc:	5c000980 	bne	$r12,$r0,8(0x8) # 1c006cc4 <Queue_Read+0xa0>
1c006cc0:	002a0007 	break	0x7
1c006cc4:	006f81cd 	bstrpick.w	$r13,$r14,0xf,0x0
1c006cc8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c006ccc:	2940018d 	st.h	$r13,$r12,0
1c006cd0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006cd4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006cd8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c006cdc:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c006ce0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006ce4:	63ff99ac 	blt	$r13,$r12,-104(0x3ff98) # 1c006c7c <Queue_Read+0x58>
1c006ce8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006cec:	00150184 	move	$r4,$r12
1c006cf0:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c006cf4:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c006cf8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c006cfc:	4c000020 	jirl	$r0,$r1,0

1c006d00 <BEEP_Init>:
BEEP_Init():
1c006d00:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006d04:	29803061 	st.w	$r1,$r3,12(0xc)
1c006d08:	29802076 	st.w	$r22,$r3,8(0x8)
1c006d0c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006d10:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006d14:	0280fc04 	addi.w	$r4,$r0,63(0x3f)
1c006d18:	57ab57ff 	bl	-21676(0xfffab54) # 1c00186c <gpio_set_direction>
1c006d1c:	03400000 	andi	$r0,$r0,0x0
1c006d20:	28803061 	ld.w	$r1,$r3,12(0xc)
1c006d24:	28802076 	ld.w	$r22,$r3,8(0x8)
1c006d28:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006d2c:	4c000020 	jirl	$r0,$r1,0

1c006d30 <esp8266_check_cmd>:
esp8266_check_cmd():
1c006d30:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c006d34:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c006d38:	2980a076 	st.w	$r22,$r3,40(0x28)
1c006d3c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c006d40:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c006d44:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c006d48:	1cc7ff44 	pcaddu12i	$r4,409594(0x63ffa)
1c006d4c:	288b3084 	ld.w	$r4,$r4,716(0x2cc)
1c006d50:	57fcdbff 	bl	-808(0xffffcd8) # 1c006a28 <Queue_isEmpty>
1c006d54:	0015008c 	move	$r12,$r4
1c006d58:	44009580 	bnez	$r12,148(0x94) # 1c006dec <esp8266_check_cmd+0xbc>
1c006d5c:	1cc7ff44 	pcaddu12i	$r4,409594(0x63ffa)
1c006d60:	288ae084 	ld.w	$r4,$r4,696(0x2b8)
1c006d64:	57fd17ff 	bl	-748(0xffffd14) # 1c006a78 <Queue_HadUse>
1c006d68:	0015008c 	move	$r12,$r4
1c006d6c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c006d70:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006d74:	288a618c 	ld.w	$r12,$r12,664(0x298)
1c006d78:	2900018d 	st.b	$r13,$r12,0
1c006d7c:	0284b006 	addi.w	$r6,$r0,300(0x12c)
1c006d80:	00150005 	move	$r5,$r0
1c006d84:	1cc7ff44 	pcaddu12i	$r4,409594(0x63ffa)
1c006d88:	288a9084 	ld.w	$r4,$r4,676(0x2a4)
1c006d8c:	57c903ff 	bl	-14080(0xfffc900) # 1c00368c <memset>
1c006d90:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006d94:	2889e18c 	ld.w	$r12,$r12,632(0x278)
1c006d98:	2a00018c 	ld.bu	$r12,$r12,0
1c006d9c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c006da0:	00150186 	move	$r6,$r12
1c006da4:	1cc7ff45 	pcaddu12i	$r5,409594(0x63ffa)
1c006da8:	288a10a5 	ld.w	$r5,$r5,644(0x284)
1c006dac:	1cc7ff44 	pcaddu12i	$r4,409594(0x63ffa)
1c006db0:	2889a084 	ld.w	$r4,$r4,616(0x268)
1c006db4:	57fe73ff 	bl	-400(0xffffe70) # 1c006c24 <Queue_Read>
1c006db8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006dbc:	2889418c 	ld.w	$r12,$r12,592(0x250)
1c006dc0:	2a00018c 	ld.bu	$r12,$r12,0
1c006dc4:	0015018d 	move	$r13,$r12
1c006dc8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006dcc:	2889818c 	ld.w	$r12,$r12,608(0x260)
1c006dd0:	0010358c 	add.w	$r12,$r12,$r13
1c006dd4:	29000180 	st.b	$r0,$r12,0
1c006dd8:	1cc7ff45 	pcaddu12i	$r5,409594(0x63ffa)
1c006ddc:	288940a5 	ld.w	$r5,$r5,592(0x250)
1c006de0:	1c000044 	pcaddu12i	$r4,2(0x2)
1c006de4:	02805084 	addi.w	$r4,$r4,20(0x14)
1c006de8:	57adbbff 	bl	-21064(0xfffadb8) # 1c001ba0 <myprintf>
1c006dec:	28bf72c5 	ld.w	$r5,$r22,-36(0xfdc)
1c006df0:	1cc7ff44 	pcaddu12i	$r4,409594(0x63ffa)
1c006df4:	2888e084 	ld.w	$r4,$r4,568(0x238)
1c006df8:	57c8f7ff 	bl	-14092(0xfffc8f4) # 1c0036ec <pstrstr>
1c006dfc:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c006e00:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006e04:	00150184 	move	$r4,$r12
1c006e08:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c006e0c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c006e10:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c006e14:	4c000020 	jirl	$r0,$r1,0

Disassembly of section .rodata:

1c006e20 <msg_wakeup>:
msg_wakeup():
1c006e20:	656b6177 	bge	$r11,$r23,93024(0x16b60) # 1c01d980 <_sidata+0x14b44>
1c006e24:	0a217075 	xvfmadd.d	$xr21,$xr3,$xr28,$xr2
	...

1c006e29 <hexdecarr>:
hexdecarr():
1c006e29:	33323130 	xvstelm.w	$xr16,$r9,-464(0x230),0x4
1c006e2d:	37363534 	0x37363534
1c006e31:	62613938 	blt	$r9,$r24,-106184(0x26138) # 1bfecf69 <_start-0x13097>
1c006e35:	66656463 	bge	$r3,$r3,-105116(0x26564) # 1bfed399 <_start-0x12c67>
1c006e39:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c006e3d:	79654b0a 	0x79654b0a
1c006e41:	73657220 	vssrani.wu.d	$vr0,$vr17,0x1c
1c006e45:	0d217465 	xvbitsel.v	$xr5,$xr3,$xr29,$xr2
1c006e49:	0d00000a 	fsel	$f10,$f0,$f0,$fcc0
1c006e4d:	6970730a 	bltu	$r24,$r10,94320(0x17070) # 1c01debd <_sidata+0x15081>
1c006e51:	6f6f6220 	bgeu	$r17,$r0,-37024(0x36f60) # 1bffddb1 <_start-0x224f>
1c006e55:	0d000074 	fsel	$f20,$f3,$f0,$fcc0
1c006e59:	676f640a 	bge	$r0,$r10,-37020(0x36f64) # 1bffddbd <_start-0x2243>
1c006e5d:	72616220 	0x72616220
1c006e61:	0a0d216b 	0x0a0d216b
1c006e65:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c006e69:	6b61770a 	bltu	$r24,$r10,-40588(0x36174) # 1bffcfdd <_start-0x3023>
1c006e6d:	21705565 	sc.w	$r5,$r11,28756(0x7054)
1c006e71:	c0000a0d 	0xc0000a0d
1c006e75:	dc1c001d 	0xdc1c001d
1c006e79:	dc1c001e 	0xdc1c001e
1c006e7d:	dc1c001e 	0xdc1c001e
1c006e81:	dc1c001e 	0xdc1c001e
1c006e85:	dc1c001e 	0xdc1c001e
1c006e89:	dc1c001e 	0xdc1c001e
1c006e8d:	dc1c001e 	0xdc1c001e
1c006e91:	dc1c001e 	0xdc1c001e
1c006e95:	dc1c001e 	0xdc1c001e
1c006e99:	dc1c001e 	0xdc1c001e
1c006e9d:	d81c001e 	0xd81c001e
1c006ea1:	601c001d 	blt	$r0,$r29,7168(0x1c00) # 1c008aa1 <tfont32+0x75d>
1c006ea5:	601c001e 	blt	$r0,$r30,7168(0x1c00) # 1c008aa5 <tfont32+0x761>
1c006ea9:	601c001e 	blt	$r0,$r30,7168(0x1c00) # 1c008aa9 <tfont32+0x765>
1c006ead:	601c001e 	blt	$r0,$r30,7168(0x1c00) # 1c008aad <tfont32+0x769>
1c006eb1:	601c001e 	blt	$r0,$r30,7168(0x1c00) # 1c008ab1 <tfont32+0x76d>
1c006eb5:	601c001e 	blt	$r0,$r30,7168(0x1c00) # 1c008ab5 <tfont32+0x771>
1c006eb9:	601c001e 	blt	$r0,$r30,7168(0x1c00) # 1c008ab9 <tfont32+0x775>
1c006ebd:	601c001e 	blt	$r0,$r30,7168(0x1c00) # 1c008abd <tfont32+0x779>
1c006ec1:	601c001e 	blt	$r0,$r30,7168(0x1c00) # 1c008ac1 <tfont32+0x77d>
1c006ec5:	dc1c001e 	0xdc1c001e
1c006ec9:	dc1c001e 	0xdc1c001e
1c006ecd:	dc1c001e 	0xdc1c001e
1c006ed1:	dc1c001e 	0xdc1c001e
1c006ed5:	dc1c001e 	0xdc1c001e
1c006ed9:	dc1c001e 	0xdc1c001e
1c006edd:	dc1c001e 	0xdc1c001e
1c006ee1:	dc1c001e 	0xdc1c001e
1c006ee5:	dc1c001e 	0xdc1c001e
1c006ee9:	dc1c001e 	0xdc1c001e
1c006eed:	dc1c001e 	0xdc1c001e
1c006ef1:	dc1c001e 	0xdc1c001e
1c006ef5:	dc1c001e 	0xdc1c001e
1c006ef9:	dc1c001e 	0xdc1c001e
1c006efd:	dc1c001e 	0xdc1c001e
1c006f01:	dc1c001e 	0xdc1c001e
1c006f05:	dc1c001e 	0xdc1c001e
1c006f09:	dc1c001e 	0xdc1c001e
1c006f0d:	dc1c001e 	0xdc1c001e
1c006f11:	dc1c001e 	0xdc1c001e
1c006f15:	dc1c001e 	0xdc1c001e
1c006f19:	dc1c001e 	0xdc1c001e
1c006f1d:	dc1c001e 	0xdc1c001e
1c006f21:	dc1c001e 	0xdc1c001e
1c006f25:	dc1c001e 	0xdc1c001e
1c006f29:	dc1c001e 	0xdc1c001e
1c006f2d:	dc1c001e 	0xdc1c001e
1c006f31:	dc1c001e 	0xdc1c001e
1c006f35:	dc1c001e 	0xdc1c001e
1c006f39:	dc1c001e 	0xdc1c001e
1c006f3d:	dc1c001e 	0xdc1c001e
1c006f41:	dc1c001e 	0xdc1c001e
1c006f45:	dc1c001e 	0xdc1c001e
1c006f49:	dc1c001e 	0xdc1c001e
1c006f4d:	dc1c001e 	0xdc1c001e
1c006f51:	dc1c001e 	0xdc1c001e
1c006f55:	dc1c001e 	0xdc1c001e
1c006f59:	dc1c001e 	0xdc1c001e
1c006f5d:	dc1c001e 	0xdc1c001e
1c006f61:	dc1c001e 	0xdc1c001e
1c006f65:	501c001e 	b	7871488(0x781c00) # 1c788b65 <_sidata+0x77fd29>
1c006f69:	781c001d 	0x781c001d
1c006f6d:	e01c001c 	0xe01c001c
1c006f71:	dc1c001c 	0xdc1c001c
1c006f75:	dc1c001e 	0xdc1c001e
1c006f79:	dc1c001e 	0xdc1c001e
1c006f7d:	dc1c001e 	0xdc1c001e
1c006f81:	dc1c001e 	0xdc1c001e
1c006f85:	dc1c001e 	0xdc1c001e
1c006f89:	dc1c001e 	0xdc1c001e
1c006f8d:	dc1c001e 	0xdc1c001e
1c006f91:	dc1c001e 	0xdc1c001e
1c006f95:	dc1c001e 	0xdc1c001e
1c006f99:	181c001e 	pcaddi	$r30,57344(0xe000)
1c006f9d:	881c001d 	0x881c001d
1c006fa1:	dc1c001d 	0xdc1c001d
1c006fa5:	dc1c001e 	0xdc1c001e
1c006fa9:	4c1c001e 	jirl	$r30,$r0,7168(0x1c00)
1c006fad:	dc1c001c 	0xdc1c001c
1c006fb1:	a81c001e 	0xa81c001e
1c006fb5:	dc1c001c 	0xdc1c001c
1c006fb9:	dc1c001e 	0xdc1c001e
1c006fbd:	881c001e 	0x881c001e
1c006fc1:	741c001d 	0x741c001d
1c006fc5:	981c0023 	0x981c0023
1c006fc9:	981c0024 	0x981c0024
1c006fcd:	981c0024 	0x981c0024
1c006fd1:	981c0024 	0x981c0024
1c006fd5:	981c0024 	0x981c0024
1c006fd9:	981c0024 	0x981c0024
1c006fdd:	981c0024 	0x981c0024
1c006fe1:	981c0024 	0x981c0024
1c006fe5:	981c0024 	0x981c0024
1c006fe9:	981c0024 	0x981c0024
1c006fed:	941c0024 	0x941c0024
1c006ff1:	1c1c0023 	pcaddu12i	$r3,57345(0xe001)
1c006ff5:	1c1c0024 	pcaddu12i	$r4,57345(0xe001)
1c006ff9:	1c1c0024 	pcaddu12i	$r4,57345(0xe001)
1c006ffd:	1c1c0024 	pcaddu12i	$r4,57345(0xe001)
1c007001:	1c1c0024 	pcaddu12i	$r4,57345(0xe001)
1c007005:	1c1c0024 	pcaddu12i	$r4,57345(0xe001)
1c007009:	1c1c0024 	pcaddu12i	$r4,57345(0xe001)
1c00700d:	1c1c0024 	pcaddu12i	$r4,57345(0xe001)
1c007011:	1c1c0024 	pcaddu12i	$r4,57345(0xe001)
1c007015:	981c0024 	0x981c0024
1c007019:	981c0024 	0x981c0024
1c00701d:	981c0024 	0x981c0024
1c007021:	981c0024 	0x981c0024
1c007025:	981c0024 	0x981c0024
1c007029:	981c0024 	0x981c0024
1c00702d:	981c0024 	0x981c0024
1c007031:	981c0024 	0x981c0024
1c007035:	981c0024 	0x981c0024
1c007039:	981c0024 	0x981c0024
1c00703d:	981c0024 	0x981c0024
1c007041:	981c0024 	0x981c0024
1c007045:	981c0024 	0x981c0024
1c007049:	981c0024 	0x981c0024
1c00704d:	981c0024 	0x981c0024
1c007051:	981c0024 	0x981c0024
1c007055:	981c0024 	0x981c0024
1c007059:	981c0024 	0x981c0024
1c00705d:	981c0024 	0x981c0024
1c007061:	981c0024 	0x981c0024
1c007065:	981c0024 	0x981c0024
1c007069:	981c0024 	0x981c0024
1c00706d:	981c0024 	0x981c0024
1c007071:	981c0024 	0x981c0024
1c007075:	981c0024 	0x981c0024
1c007079:	981c0024 	0x981c0024
1c00707d:	981c0024 	0x981c0024
1c007081:	981c0024 	0x981c0024
1c007085:	981c0024 	0x981c0024
1c007089:	981c0024 	0x981c0024
1c00708d:	981c0024 	0x981c0024
1c007091:	981c0024 	0x981c0024
1c007095:	981c0024 	0x981c0024
1c007099:	981c0024 	0x981c0024
1c00709d:	981c0024 	0x981c0024
1c0070a1:	981c0024 	0x981c0024
1c0070a5:	981c0024 	0x981c0024
1c0070a9:	981c0024 	0x981c0024
1c0070ad:	981c0024 	0x981c0024
1c0070b1:	981c0024 	0x981c0024
1c0070b5:	fc1c0024 	0xfc1c0024
1c0070b9:	141c0022 	lu12i.w	$r2,57345(0xe001)
1c0070bd:	841c0022 	0x841c0022
1c0070c1:	981c0022 	0x981c0022
1c0070c5:	981c0024 	0x981c0024
1c0070c9:	981c0024 	0x981c0024
1c0070cd:	981c0024 	0x981c0024
1c0070d1:	981c0024 	0x981c0024
1c0070d5:	981c0024 	0x981c0024
1c0070d9:	981c0024 	0x981c0024
1c0070dd:	981c0024 	0x981c0024
1c0070e1:	981c0024 	0x981c0024
1c0070e5:	981c0024 	0x981c0024
1c0070e9:	c01c0024 	0xc01c0024
1c0070ed:	381c0022 	stx.d	$r2,$r1,$r0
1c0070f1:	981c0023 	0x981c0023
1c0070f5:	981c0024 	0x981c0024
1c0070f9:	e41c0024 	0xe41c0024
1c0070fd:	981c0021 	0x981c0021
1c007101:	481c0024 	bceqz	$fcc1,1055744(0x101c00) # 1c108d01 <_sidata+0xffec5>
1c007105:	981c0022 	0x981c0022
1c007109:	981c0024 	0x981c0024
1c00710d:	381c0024 	stx.d	$r4,$r1,$r0
1c007111:	0a1c0023 	xvfmadd.s	$xr3,$xr1,$xr0,$xr24
1c007115:	7c000000 	0x7c000000
1c007119:	7c7c7c7c 	0x7c7c7c7c
1c00711d:	7c7c7c7c 	0x7c7c7c7c
1c007121:	7c7c7c7c 	0x7c7c7c7c
1c007125:	7c7c7c7c 	0x7c7c7c7c
1c007129:	7c7c7c7c 	0x7c7c7c7c
1c00712d:	7c7c7c7c 	0x7c7c7c7c
1c007131:	7c7c7c7c 	0x7c7c7c7c
1c007135:	7c7c7c7c 	0x7c7c7c7c
1c007139:	7c7c7c7c 	0x7c7c7c7c
1c00713d:	7c7c7c7c 	0x7c7c7c7c
1c007141:	7c7c7c7c 	0x7c7c7c7c
1c007145:	7c7c7c7c 	0x7c7c7c7c
1c007149:	7c7c7c7c 	0x7c7c7c7c
1c00714d:	7c7c7c7c 	0x7c7c7c7c
1c007151:	7c7c7c7c 	0x7c7c7c7c
1c007155:	7c7c7c7c 	0x7c7c7c7c
1c007159:	7c7c7c7c 	0x7c7c7c7c
1c00715d:	7c7c7c7c 	0x7c7c7c7c
1c007161:	7c7c7c7c 	0x7c7c7c7c
1c007165:	7c7c7c7c 	0x7c7c7c7c
1c007169:	7c7c7c7c 	0x7c7c7c7c
1c00716d:	7c7c7c7c 	0x7c7c7c7c
1c007171:	7c7c7c7c 	0x7c7c7c7c
1c007175:	7c7c7c7c 	0x7c7c7c7c
1c007179:	7c00000a 	0x7c00000a
1c00717d:	7c20207c 	0x7c20207c
1c007181:	7c7c7c7c 	0x7c7c7c7c
1c007185:	7c7c7c7c 	0x7c7c7c7c
1c007189:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00718d:	7c202020 	0x7c202020
1c007191:	7c7c7c7c 	0x7c7c7c7c
1c007195:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007199:	7c202020 	0x7c202020
1c00719d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0071a1:	7c7c2020 	0x7c7c2020
1c0071a5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0071a9:	7c7c7c20 	0x7c7c7c20
1c0071ad:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0071b1:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0071b5:	7c7c7c7c 	0x7c7c7c7c
1c0071b9:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c0071bd:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0071c1:	7c7c7c7c 	0x7c7c7c7c
1c0071c5:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c0071c9:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0071cd:	7c7c7c7c 	0x7c7c7c7c
1c0071d1:	7c202020 	0x7c202020
1c0071d5:	7c7c7c7c 	0x7c7c7c7c
1c0071d9:	7c7c2020 	0x7c7c2020
1c0071dd:	7c00000a 	0x7c00000a
1c0071e1:	7c20207c 	0x7c20207c
1c0071e5:	7c7c7c7c 	0x7c7c7c7c
1c0071e9:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0071ed:	7c7c2020 	0x7c7c2020
1c0071f1:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0071f5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0071f9:	7c7c2020 	0x7c7c2020
1c0071fd:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c007201:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007205:	7c202020 	0x7c202020
1c007209:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00720d:	7c7c7c20 	0x7c7c7c20
1c007211:	7c20207c 	0x7c20207c
1c007215:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007219:	7c7c7c20 	0x7c7c7c20
1c00721d:	7c202020 	0x7c202020
1c007221:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007225:	7c7c7c20 	0x7c7c7c20
1c007229:	7c202020 	0x7c202020
1c00722d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007231:	7c7c7c20 	0x7c7c7c20
1c007235:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007239:	7c7c7c7c 	0x7c7c7c7c
1c00723d:	7c7c2020 	0x7c7c2020
1c007241:	7c00000a 	0x7c00000a
1c007245:	7c20207c 	0x7c20207c
1c007249:	7c7c7c7c 	0x7c7c7c7c
1c00724d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007251:	7c7c7c20 	0x7c7c7c20
1c007255:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007259:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00725d:	7c7c7c20 	0x7c7c7c20
1c007261:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007265:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007269:	20207c20 	ll.w	$r0,$r1,8316(0x207c)
1c00726d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007271:	7c7c7c20 	0x7c7c7c20
1c007275:	7c7c2020 	0x7c7c2020
1c007279:	7c7c7c7c 	0x7c7c7c7c
1c00727d:	7c7c7c7c 	0x7c7c7c7c
1c007281:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c007285:	7c7c7c20 	0x7c7c7c20
1c007289:	7c7c7c7c 	0x7c7c7c7c
1c00728d:	7c7c2020 	0x7c7c2020
1c007291:	7c7c7c7c 	0x7c7c7c7c
1c007295:	7c7c7c20 	0x7c7c7c20
1c007299:	207c2020 	ll.w	$r0,$r1,31776(0x7c20)
1c00729d:	7c7c7c20 	0x7c7c7c20
1c0072a1:	7c7c2020 	0x7c7c2020
1c0072a5:	7c00000a 	0x7c00000a
1c0072a9:	7c20207c 	0x7c20207c
1c0072ad:	7c7c7c7c 	0x7c7c7c7c
1c0072b1:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0072b5:	7c7c7c20 	0x7c7c7c20
1c0072b9:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0072bd:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0072c1:	7c7c7c20 	0x7c7c7c20
1c0072c5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0072c9:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0072cd:	207c7c20 	ll.w	$r0,$r1,31868(0x7c7c)
1c0072d1:	207c7c20 	ll.w	$r0,$r1,31868(0x7c7c)
1c0072d5:	7c7c7c20 	0x7c7c7c20
1c0072d9:	7c7c2020 	0x7c7c2020
1c0072dd:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c0072e1:	7c7c7c20 	0x7c7c7c20
1c0072e5:	7c7c7c7c 	0x7c7c7c7c
1c0072e9:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0072ed:	7c7c7c7c 	0x7c7c7c7c
1c0072f1:	7c7c2020 	0x7c7c2020
1c0072f5:	7c7c7c7c 	0x7c7c7c7c
1c0072f9:	7c7c7c20 	0x7c7c7c20
1c0072fd:	7c7c2020 	0x7c7c2020
1c007301:	7c7c2020 	0x7c7c2020
1c007305:	7c7c2020 	0x7c7c2020
1c007309:	7c00000a 	0x7c00000a
1c00730d:	7c20207c 	0x7c20207c
1c007311:	7c7c7c7c 	0x7c7c7c7c
1c007315:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007319:	7c7c7c20 	0x7c7c7c20
1c00731d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007321:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007325:	7c7c7c20 	0x7c7c7c20
1c007329:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00732d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007331:	7c7c7c20 	0x7c7c7c20
1c007335:	207c2020 	ll.w	$r0,$r1,31776(0x7c20)
1c007339:	7c7c7c20 	0x7c7c7c20
1c00733d:	7c7c2020 	0x7c7c2020
1c007341:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007345:	7c7c7c20 	0x7c7c7c20
1c007349:	7c7c7c7c 	0x7c7c7c7c
1c00734d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007351:	7c7c7c20 	0x7c7c7c20
1c007355:	7c7c2020 	0x7c7c2020
1c007359:	7c7c7c7c 	0x7c7c7c7c
1c00735d:	7c7c7c20 	0x7c7c7c20
1c007361:	7c7c2020 	0x7c7c2020
1c007365:	7c20207c 	0x7c20207c
1c007369:	7c7c2020 	0x7c7c2020
1c00736d:	7c00000a 	0x7c00000a
1c007371:	7c20207c 	0x7c20207c
1c007375:	7c7c7c7c 	0x7c7c7c7c
1c007379:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00737d:	7c7c2020 	0x7c7c2020
1c007381:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c007385:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007389:	7c7c2020 	0x7c7c2020
1c00738d:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c007391:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007395:	7c7c7c20 	0x7c7c7c20
1c007399:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c00739d:	7c7c7c20 	0x7c7c7c20
1c0073a1:	7c202020 	0x7c202020
1c0073a5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0073a9:	7c7c7c20 	0x7c7c7c20
1c0073ad:	7c202020 	0x7c202020
1c0073b1:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0073b5:	7c7c7c7c 	0x7c7c7c7c
1c0073b9:	7c202020 	0x7c202020
1c0073bd:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0073c1:	7c7c7c20 	0x7c7c7c20
1c0073c5:	7c7c2020 	0x7c7c2020
1c0073c9:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0073cd:	7c7c2020 	0x7c7c2020
1c0073d1:	7c00000a 	0x7c00000a
1c0073d5:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c0073d9:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0073dd:	7c7c7c7c 	0x7c7c7c7c
1c0073e1:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0073e5:	7c202020 	0x7c202020
1c0073e9:	7c7c7c7c 	0x7c7c7c7c
1c0073ed:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0073f1:	7c202020 	0x7c202020
1c0073f5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0073f9:	7c7c7c20 	0x7c7c7c20
1c0073fd:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c007401:	7c7c7c20 	0x7c7c7c20
1c007405:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c007409:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00740d:	7c7c7c7c 	0x7c7c7c7c
1c007411:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c007415:	7c202020 	0x7c202020
1c007419:	7c7c7c7c 	0x7c7c7c7c
1c00741d:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c007421:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007425:	7c7c7c7c 	0x7c7c7c7c
1c007429:	7c7c2020 	0x7c7c2020
1c00742d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007431:	7c7c2020 	0x7c7c2020
1c007435:	7c00000a 	0x7c00000a
1c007439:	7c7c7c7c 	0x7c7c7c7c
1c00743d:	7c7c7c7c 	0x7c7c7c7c
1c007441:	7c7c7c7c 	0x7c7c7c7c
1c007445:	7c7c7c7c 	0x7c7c7c7c
1c007449:	7c7c7c7c 	0x7c7c7c7c
1c00744d:	7c7c7c7c 	0x7c7c7c7c
1c007451:	7c7c7c7c 	0x7c7c7c7c
1c007455:	7c7c7c7c 	0x7c7c7c7c
1c007459:	7c7c7c7c 	0x7c7c7c7c
1c00745d:	325b7c7c 	xvldrepl.h	$xr28,$r3,-578(0xdbe)
1c007461:	20303230 	ll.w	$r16,$r17,12336(0x3030)
1c007465:	4e4f4f4c 	jirl	$r12,$r26,-110772(0x24f4c)
1c007469:	4e4f5347 	jirl	$r7,$r26,-110768(0x24f50)
1c00746d:	7c7c7c5d 	0x7c7c7c5d
1c007471:	7c7c7c7c 	0x7c7c7c7c
1c007475:	7c7c7c7c 	0x7c7c7c7c
1c007479:	7c7c7c7c 	0x7c7c7c7c
1c00747d:	7c7c7c7c 	0x7c7c7c7c
1c007481:	7c7c7c7c 	0x7c7c7c7c
1c007485:	7c7c7c7c 	0x7c7c7c7c
1c007489:	7c7c7c7c 	0x7c7c7c7c
1c00748d:	7c7c7c7c 	0x7c7c7c7c
1c007491:	7c7c7c7c 	0x7c7c7c7c
1c007495:	7c7c7c7c 	0x7c7c7c7c
1c007499:	0900000a 	0x0900000a
1c00749d:	0a006425 	0x0a006425
1c0074a1:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c0074a5:	776f440a 	xvssrarni.du.q	$xr10,$xr0,0x51
1c0074a9:	0d00006e 	fsel	$f14,$f3,$f0,$fcc0
1c0074ad:	0050550a 	0x0050550a
1c0074b1:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c0074b5:	6c754d0a 	bgeu	$r8,$r10,30028(0x754c) # 1c00ea01 <_sidata+0x5bc5>
1c0074b9:	776f4469 	xvssrarni.du.q	$xr9,$xr3,0x51
1c0074bd:	0d00006e 	fsel	$f14,$f3,$f0,$fcc0
1c0074c1:	756f430a 	0x756f430a
1c0074c5:	4f20746e 	jirl	$r14,$r3,-57228(0x32074)
1c0074c9:	0d000056 	fsel	$f22,$f2,$f0,$fcc0
1c0074cd:	3030090a 	0x3030090a
1c0074d1:	09313009 	0x09313009
1c0074d5:	30093230 	0x30093230
1c0074d9:	34300933 	0x34300933
1c0074dd:	09353009 	0x09353009
1c0074e1:	30093630 	0x30093630
1c0074e5:	38300937 	fldx.s	$f23,$r9,$r2
1c0074e9:	09393009 	0x09393009
1c0074ed:	31093031 	0x31093031
1c0074f1:	0d000031 	fsel	$f17,$f1,$f0,$fcc0
1c0074f5:	746e630a 	0x746e630a
1c0074f9:	09000000 	0x09000000
1c0074fd:	00643425 	bstrins.w	$r5,$r1,0x4,0xd
1c007501:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c007505:	7361420a 	vssrani.w.d	$vr10,$vr16,0x10
1c007509:	6c615665 	bgeu	$r19,$r5,24916(0x6154) # 1c00d65d <_sidata+0x4821>
1c00750d:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c007511:	6275530a 	blt	$r24,$r10,-101040(0x27550) # 1bfeea61 <_start-0x1159f>
1c007515:	006c6156 	bstrins.w	$r22,$r10,0xc,0x18
1c007519:	09000000 	0x09000000
1c00751d:	00643225 	bstrins.w	$r5,$r17,0x4,0xc
1c007521:	09000000 	0x09000000
1c007525:	00643325 	bstrins.w	$r5,$r25,0x4,0xc
1c007529:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c00752d:	203c200a 	ll.w	$r10,$r0,15392(0x3c20)
1c007531:	3a515249 	0x3a515249
1c007535:	20642520 	ll.w	$r0,$r9,25636(0x6424)
1c007539:	636e7566 	blt	$r11,$r6,-37260(0x36e74) # 1bffe3ad <_start-0x1c53>
1c00753d:	2073253a 	ll.w	$r26,$r9,29476(0x7324)
1c007541:	0d3e2020 	0x0d3e2020
1c007545:	0a00000a 	0x0a00000a
1c007549:	2e2e2e2e 	0x2e2e2e2e
1c00754d:	2e2e2e2e 	0x2e2e2e2e
1c007551:	2e2e2e2e 	0x2e2e2e2e
1c007555:	464f532e 	bnez	$r25,3821392(0x3a4f50) # 1c3ac4a5 <_sidata+0x3a3669>
1c007559:	4e495f54 	jirl	$r20,$r26,-112292(0x2495c)
1c00755d:	2e2e2e54 	0x2e2e2e54
1c007561:	2e2e2e2e 	0x2e2e2e2e
1c007565:	2e2e2e2e 	0x2e2e2e2e
1c007569:	0a2e2e2e 	xvfmadd.d	$xr14,$xr17,$xr11,$xr28
1c00756d:	0d00000d 	fsel	$f13,$f0,$f0,$fcc0
1c007571:	2e2e2e0a 	0x2e2e2e0a
1c007575:	2e2e2e2e 	0x2e2e2e2e
1c007579:	2e2e2e2e 	0x2e2e2e2e
1c00757d:	41422e2e 	beqz	$r17,3752492(0x39422c) # 1c39b7a9 <_sidata+0x39296d>
1c007581:	41465f54 	beqz	$r26,-3062180(0x51465c) # 1bd1bbdd <_start-0x2e4423>
1c007585:	2e2e4c49 	0x2e2e4c49
1c007589:	2e2e2e2e 	0x2e2e2e2e
1c00758d:	2e2e2e2e 	0x2e2e2e2e
1c007591:	2e2e2e2e 	0x2e2e2e2e
1c007595:	0d000a0d 	fsel	$f13,$f16,$f2,$fcc0
1c007599:	2e2e2e0a 	0x2e2e2e0a
1c00759d:	2e2e2e2e 	0x2e2e2e2e
1c0075a1:	2e2e2e2e 	0x2e2e2e2e
1c0075a5:	44412e2e 	bnez	$r17,3686700(0x38412c) # 1c38b6d1 <_sidata+0x382895>
1c0075a9:	2e2e2e43 	0x2e2e2e43
1c0075ad:	2e2e2e2e 	0x2e2e2e2e
1c0075b1:	2e2e2e2e 	0x2e2e2e2e
1c0075b5:	0d2e2e2e 	xvbitsel.v	$xr14,$xr17,$xr11,$xr28
1c0075b9:	4300000a 	beqz	$r0,2818048(0x2b0000) # 1c2b75b9 <_sidata+0x2ae77d>
1c0075bd:	2065726f 	ll.w	$r15,$r19,25968(0x6570)
1c0075c1:	656d6954 	bge	$r10,$r20,93544(0x16d68) # 1c01e329 <_sidata+0x154ed>
1c0075c5:	6c632072 	bgeu	$r3,$r18,25376(0x6320) # 1c00d8e5 <_sidata+0x4aa9>
1c0075c9:	20726165 	ll.w	$r5,$r11,29280(0x7260)
1c0075cd:	65746e69 	bge	$r19,$r9,95340(0x1746c) # 1c01ea39 <_sidata+0x15bfd>
1c0075d1:	70757272 	vmax.wu	$vr18,$vr19,$vr28
1c0075d5:	0d2e2e74 	xvbitsel.v	$xr20,$xr19,$xr11,$xr28
1c0075d9:	 	xvseq.b	$xr10,$xr0,$xr0

1c0075dc <Ext_IrqHandle>:
1c0075dc:	1c004074 	pcaddu12i	$r20,515(0x203)
1c0075e0:	1c0040c0 	pcaddu12i	$r0,518(0x206)
1c0075e4:	1c00410c 	pcaddu12i	$r12,520(0x208)
1c0075e8:	1c004158 	pcaddu12i	$r24,522(0x20a)
1c0075ec:	1c0041a4 	pcaddu12i	$r4,525(0x20d)
1c0075f0:	1c0041f0 	pcaddu12i	$r16,527(0x20f)
1c0075f4:	1c00423c 	pcaddu12i	$r28,529(0x211)
1c0075f8:	1c004288 	pcaddu12i	$r8,532(0x214)
1c0075fc:	1c0042d4 	pcaddu12i	$r20,534(0x216)
1c007600:	1c004320 	pcaddu12i	$r0,537(0x219)
1c007604:	1c00436c 	pcaddu12i	$r12,539(0x21b)
1c007608:	1c0043b8 	pcaddu12i	$r24,541(0x21d)
1c00760c:	1c004404 	pcaddu12i	$r4,544(0x220)
1c007610:	1c004450 	pcaddu12i	$r16,546(0x222)
1c007614:	1c00449c 	pcaddu12i	$r28,548(0x224)
1c007618:	1c0044e8 	pcaddu12i	$r8,551(0x227)
1c00761c:	1c004534 	pcaddu12i	$r20,553(0x229)
1c007620:	1c004580 	pcaddu12i	$r0,556(0x22c)
1c007624:	1c0045cc 	pcaddu12i	$r12,558(0x22e)
1c007628:	1c004618 	pcaddu12i	$r24,560(0x230)
1c00762c:	1c004664 	pcaddu12i	$r4,563(0x233)
1c007630:	1c0046b0 	pcaddu12i	$r16,565(0x235)
1c007634:	1c0046fc 	pcaddu12i	$r28,567(0x237)
1c007638:	1c004748 	pcaddu12i	$r8,570(0x23a)
1c00763c:	1c004794 	pcaddu12i	$r20,572(0x23c)
1c007640:	1c0047e0 	pcaddu12i	$r0,575(0x23f)
1c007644:	1c00482c 	pcaddu12i	$r12,577(0x241)
1c007648:	1c004878 	pcaddu12i	$r24,579(0x243)
1c00764c:	1c0048c4 	pcaddu12i	$r4,582(0x246)
1c007650:	1c004910 	pcaddu12i	$r16,584(0x248)
1c007654:	1c00495c 	pcaddu12i	$r28,586(0x24a)
1c007658:	1c0049a8 	pcaddu12i	$r8,589(0x24d)
1c00765c:	1c004c8c 	pcaddu12i	$r12,612(0x264)
1c007660:	1c004c3c 	pcaddu12i	$r28,609(0x261)
1c007664:	1c004c8c 	pcaddu12i	$r12,612(0x264)
1c007668:	1c004c8c 	pcaddu12i	$r12,612(0x264)
1c00766c:	1c004c8c 	pcaddu12i	$r12,612(0x264)
1c007670:	1c004c8c 	pcaddu12i	$r12,612(0x264)
1c007674:	1c004c8c 	pcaddu12i	$r12,612(0x264)
1c007678:	1c004c8c 	pcaddu12i	$r12,612(0x264)
1c00767c:	1c004c8c 	pcaddu12i	$r12,612(0x264)
1c007680:	1c004c8c 	pcaddu12i	$r12,612(0x264)
1c007684:	1c004c8c 	pcaddu12i	$r12,612(0x264)
1c007688:	1c004c8c 	pcaddu12i	$r12,612(0x264)
1c00768c:	1c004c8c 	pcaddu12i	$r12,612(0x264)
1c007690:	1c004c8c 	pcaddu12i	$r12,612(0x264)
1c007694:	1c004c8c 	pcaddu12i	$r12,612(0x264)
1c007698:	1c004c8c 	pcaddu12i	$r12,612(0x264)
1c00769c:	1c004c58 	pcaddu12i	$r24,610(0x262)

1c0076a0 <__FUNCTION__.1646>:
1c0076a0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01eb18 <_sidata+0x15cdc>
1c0076a4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e708 <_sidata+0x158cc>
1c0076a8:	5f30616f 	bne	$r11,$r15,-53152(0x33060) # 1bffa708 <_start-0x58f8>
1c0076ac:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe81c <_start-0x17e4>
1c0076b0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e510 <_sidata+0x56d4>
1c0076b4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0076b8 <__FUNCTION__.1650>:
1c0076b8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01eb30 <_sidata+0x15cf4>
1c0076bc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e720 <_sidata+0x158e4>
1c0076c0:	5f31616f 	bne	$r11,$r15,-52896(0x33160) # 1bffa820 <_start-0x57e0>
1c0076c4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe834 <_start-0x17cc>
1c0076c8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e528 <_sidata+0x56ec>
1c0076cc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0076d0 <__FUNCTION__.1654>:
1c0076d0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01eb48 <_sidata+0x15d0c>
1c0076d4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e738 <_sidata+0x158fc>
1c0076d8:	5f32616f 	bne	$r11,$r15,-52640(0x33260) # 1bffa938 <_start-0x56c8>
1c0076dc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe84c <_start-0x17b4>
1c0076e0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e540 <_sidata+0x5704>
1c0076e4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0076e8 <__FUNCTION__.1658>:
1c0076e8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01eb60 <_sidata+0x15d24>
1c0076ec:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e750 <_sidata+0x15914>
1c0076f0:	5f33616f 	bne	$r11,$r15,-52384(0x33360) # 1bffaa50 <_start-0x55b0>
1c0076f4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe864 <_start-0x179c>
1c0076f8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e558 <_sidata+0x571c>
1c0076fc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007700 <__FUNCTION__.1662>:
1c007700:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01eb78 <_sidata+0x15d3c>
1c007704:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e768 <_sidata+0x1592c>
1c007708:	5f34616f 	bne	$r11,$r15,-52128(0x33460) # 1bffab68 <_start-0x5498>
1c00770c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe87c <_start-0x1784>
1c007710:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e570 <_sidata+0x5734>
1c007714:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007718 <__FUNCTION__.1666>:
1c007718:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01eb90 <_sidata+0x15d54>
1c00771c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e780 <_sidata+0x15944>
1c007720:	5f35616f 	bne	$r11,$r15,-51872(0x33560) # 1bffac80 <_start-0x5380>
1c007724:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe894 <_start-0x176c>
1c007728:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e588 <_sidata+0x574c>
1c00772c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007730 <__FUNCTION__.1670>:
1c007730:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01eba8 <_sidata+0x15d6c>
1c007734:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e798 <_sidata+0x1595c>
1c007738:	5f36616f 	bne	$r11,$r15,-51616(0x33660) # 1bffad98 <_start-0x5268>
1c00773c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe8ac <_start-0x1754>
1c007740:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e5a0 <_sidata+0x5764>
1c007744:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007748 <__FUNCTION__.1674>:
1c007748:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ebc0 <_sidata+0x15d84>
1c00774c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e7b0 <_sidata+0x15974>
1c007750:	5f37616f 	bne	$r11,$r15,-51360(0x33760) # 1bffaeb0 <_start-0x5150>
1c007754:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe8c4 <_start-0x173c>
1c007758:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e5b8 <_sidata+0x577c>
1c00775c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007760 <__FUNCTION__.1678>:
1c007760:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ebd8 <_sidata+0x15d9c>
1c007764:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e7c8 <_sidata+0x1598c>
1c007768:	5f30626f 	bne	$r19,$r15,-53152(0x33060) # 1bffa7c8 <_start-0x5838>
1c00776c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe8dc <_start-0x1724>
1c007770:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e5d0 <_sidata+0x5794>
1c007774:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007778 <__FUNCTION__.1682>:
1c007778:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ebf0 <_sidata+0x15db4>
1c00777c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e7e0 <_sidata+0x159a4>
1c007780:	5f31626f 	bne	$r19,$r15,-52896(0x33160) # 1bffa8e0 <_start-0x5720>
1c007784:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe8f4 <_start-0x170c>
1c007788:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e5e8 <_sidata+0x57ac>
1c00778c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007790 <__FUNCTION__.1686>:
1c007790:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ec08 <_sidata+0x15dcc>
1c007794:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e7f8 <_sidata+0x159bc>
1c007798:	5f32626f 	bne	$r19,$r15,-52640(0x33260) # 1bffa9f8 <_start-0x5608>
1c00779c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe90c <_start-0x16f4>
1c0077a0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e600 <_sidata+0x57c4>
1c0077a4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0077a8 <__FUNCTION__.1690>:
1c0077a8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ec20 <_sidata+0x15de4>
1c0077ac:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e810 <_sidata+0x159d4>
1c0077b0:	5f33626f 	bne	$r19,$r15,-52384(0x33360) # 1bffab10 <_start-0x54f0>
1c0077b4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe924 <_start-0x16dc>
1c0077b8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e618 <_sidata+0x57dc>
1c0077bc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0077c0 <__FUNCTION__.1694>:
1c0077c0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ec38 <_sidata+0x15dfc>
1c0077c4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e828 <_sidata+0x159ec>
1c0077c8:	5f34626f 	bne	$r19,$r15,-52128(0x33460) # 1bffac28 <_start-0x53d8>
1c0077cc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe93c <_start-0x16c4>
1c0077d0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e630 <_sidata+0x57f4>
1c0077d4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0077d8 <__FUNCTION__.1698>:
1c0077d8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ec50 <_sidata+0x15e14>
1c0077dc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e840 <_sidata+0x15a04>
1c0077e0:	5f35626f 	bne	$r19,$r15,-51872(0x33560) # 1bffad40 <_start-0x52c0>
1c0077e4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe954 <_start-0x16ac>
1c0077e8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e648 <_sidata+0x580c>
1c0077ec:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0077f0 <__FUNCTION__.1702>:
1c0077f0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ec68 <_sidata+0x15e2c>
1c0077f4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e858 <_sidata+0x15a1c>
1c0077f8:	5f36626f 	bne	$r19,$r15,-51616(0x33660) # 1bffae58 <_start-0x51a8>
1c0077fc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe96c <_start-0x1694>
1c007800:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e660 <_sidata+0x5824>
1c007804:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007808 <__FUNCTION__.1706>:
1c007808:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ec80 <_sidata+0x15e44>
1c00780c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e870 <_sidata+0x15a34>
1c007810:	5f37626f 	bne	$r19,$r15,-51360(0x33760) # 1bffaf70 <_start-0x5090>
1c007814:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe984 <_start-0x167c>
1c007818:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e678 <_sidata+0x583c>
1c00781c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007820 <__FUNCTION__.1710>:
1c007820:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ec98 <_sidata+0x15e5c>
1c007824:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e888 <_sidata+0x15a4c>
1c007828:	5f30636f 	bne	$r27,$r15,-53152(0x33060) # 1bffa888 <_start-0x5778>
1c00782c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe99c <_start-0x1664>
1c007830:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e690 <_sidata+0x5854>
1c007834:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007838 <__FUNCTION__.1714>:
1c007838:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ecb0 <_sidata+0x15e74>
1c00783c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e8a0 <_sidata+0x15a64>
1c007840:	5f31636f 	bne	$r27,$r15,-52896(0x33160) # 1bffa9a0 <_start-0x5660>
1c007844:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe9b4 <_start-0x164c>
1c007848:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e6a8 <_sidata+0x586c>
1c00784c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007850 <__FUNCTION__.1718>:
1c007850:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ecc8 <_sidata+0x15e8c>
1c007854:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e8b8 <_sidata+0x15a7c>
1c007858:	5f32636f 	bne	$r27,$r15,-52640(0x33260) # 1bffaab8 <_start-0x5548>
1c00785c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe9cc <_start-0x1634>
1c007860:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e6c0 <_sidata+0x5884>
1c007864:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007868 <__FUNCTION__.1722>:
1c007868:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ece0 <_sidata+0x15ea4>
1c00786c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e8d0 <_sidata+0x15a94>
1c007870:	5f33636f 	bne	$r27,$r15,-52384(0x33360) # 1bffabd0 <_start-0x5430>
1c007874:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe9e4 <_start-0x161c>
1c007878:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e6d8 <_sidata+0x589c>
1c00787c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007880 <__FUNCTION__.1726>:
1c007880:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ecf8 <_sidata+0x15ebc>
1c007884:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e8e8 <_sidata+0x15aac>
1c007888:	5f34636f 	bne	$r27,$r15,-52128(0x33460) # 1bfface8 <_start-0x5318>
1c00788c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe9fc <_start-0x1604>
1c007890:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e6f0 <_sidata+0x58b4>
1c007894:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007898 <__FUNCTION__.1730>:
1c007898:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ed10 <_sidata+0x15ed4>
1c00789c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e900 <_sidata+0x15ac4>
1c0078a0:	5f35636f 	bne	$r27,$r15,-51872(0x33560) # 1bffae00 <_start-0x5200>
1c0078a4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffea14 <_start-0x15ec>
1c0078a8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e708 <_sidata+0x58cc>
1c0078ac:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0078b0 <__FUNCTION__.1734>:
1c0078b0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ed28 <_sidata+0x15eec>
1c0078b4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e918 <_sidata+0x15adc>
1c0078b8:	5f36636f 	bne	$r27,$r15,-51616(0x33660) # 1bffaf18 <_start-0x50e8>
1c0078bc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffea2c <_start-0x15d4>
1c0078c0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e720 <_sidata+0x58e4>
1c0078c4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0078c8 <__FUNCTION__.1738>:
1c0078c8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ed40 <_sidata+0x15f04>
1c0078cc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e930 <_sidata+0x15af4>
1c0078d0:	5f37636f 	bne	$r27,$r15,-51360(0x33760) # 1bffb030 <_start-0x4fd0>
1c0078d4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffea44 <_start-0x15bc>
1c0078d8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e738 <_sidata+0x58fc>
1c0078dc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0078e0 <__FUNCTION__.1742>:
1c0078e0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ed58 <_sidata+0x15f1c>
1c0078e4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e948 <_sidata+0x15b0c>
1c0078e8:	5f30646f 	bne	$r3,$r15,-53148(0x33064) # 1bffa94c <_start-0x56b4>
1c0078ec:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffea5c <_start-0x15a4>
1c0078f0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e750 <_sidata+0x5914>
1c0078f4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0078f8 <__FUNCTION__.1746>:
1c0078f8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ed70 <_sidata+0x15f34>
1c0078fc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e960 <_sidata+0x15b24>
1c007900:	5f31646f 	bne	$r3,$r15,-52892(0x33164) # 1bffaa64 <_start-0x559c>
1c007904:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffea74 <_start-0x158c>
1c007908:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e768 <_sidata+0x592c>
1c00790c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007910 <__FUNCTION__.1750>:
1c007910:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ed88 <_sidata+0x15f4c>
1c007914:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e978 <_sidata+0x15b3c>
1c007918:	5f32646f 	bne	$r3,$r15,-52636(0x33264) # 1bffab7c <_start-0x5484>
1c00791c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffea8c <_start-0x1574>
1c007920:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e780 <_sidata+0x5944>
1c007924:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007928 <__FUNCTION__.1754>:
1c007928:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01eda0 <_sidata+0x15f64>
1c00792c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e990 <_sidata+0x15b54>
1c007930:	5f33646f 	bne	$r3,$r15,-52380(0x33364) # 1bffac94 <_start-0x536c>
1c007934:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffeaa4 <_start-0x155c>
1c007938:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e798 <_sidata+0x595c>
1c00793c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007940 <__FUNCTION__.1758>:
1c007940:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01edb8 <_sidata+0x15f7c>
1c007944:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e9a8 <_sidata+0x15b6c>
1c007948:	5f34646f 	bne	$r3,$r15,-52124(0x33464) # 1bffadac <_start-0x5254>
1c00794c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffeabc <_start-0x1544>
1c007950:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e7b0 <_sidata+0x5974>
1c007954:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007958 <__FUNCTION__.1762>:
1c007958:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01edd0 <_sidata+0x15f94>
1c00795c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e9c0 <_sidata+0x15b84>
1c007960:	5f35646f 	bne	$r3,$r15,-51868(0x33564) # 1bffaec4 <_start-0x513c>
1c007964:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffead4 <_start-0x152c>
1c007968:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e7c8 <_sidata+0x598c>
1c00796c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007970 <__FUNCTION__.1766>:
1c007970:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ede8 <_sidata+0x15fac>
1c007974:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e9d8 <_sidata+0x15b9c>
1c007978:	5f36646f 	bne	$r3,$r15,-51612(0x33664) # 1bffafdc <_start-0x5024>
1c00797c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffeaec <_start-0x1514>
1c007980:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e7e0 <_sidata+0x59a4>
1c007984:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007988 <__FUNCTION__.1770>:
1c007988:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ee00 <_sidata+0x15fc4>
1c00798c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e9f0 <_sidata+0x15bb4>
1c007990:	5f37646f 	bne	$r3,$r15,-51356(0x33764) # 1bffb0f4 <_start-0x4f0c>
1c007994:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffeb04 <_start-0x14fc>
1c007998:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e7f8 <_sidata+0x59bc>
1c00799c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0079a0 <asc2_1608>:
	...
1c0079b0:	f8000000 	0xf8000000
1c0079b4:	00000000 	0x00000000
1c0079b8:	33000000 	0x33000000
1c0079bc:	00000000 	0x00000000
1c0079c0:	020c1000 	slti	$r0,$r0,772(0x304)
1c0079c4:	00020c10 	0x00020c10
	...
1c0079d0:	78c04000 	0x78c04000
1c0079d4:	0078c040 	bstrpick.w	$r0,$r2,0x18,0x10
1c0079d8:	043f0400 	csrrd	$r0,0xfc1
1c0079dc:	00043f04 	alsl.w	$r4,$r24,$r15,0x1
1c0079e0:	88887000 	0x88887000
1c0079e4:	003008fc 	0x003008fc
1c0079e8:	20201800 	ll.w	$r0,$r0,8216(0x2018)
1c0079ec:	001e21ff 	mulh.d	$r31,$r15,$r8
1c0079f0:	80f008f0 	0x80f008f0
1c0079f4:	00001860 	cto.w	$r0,$r3
1c0079f8:	030c3100 	lu52i.d	$r0,$r8,780(0x30c)
1c0079fc:	001e211e 	mulh.d	$r30,$r8,$r8
1c007a00:	8808f000 	0x8808f000
1c007a04:	00000070 	0x00000070
1c007a08:	2c23211e 	vld	$vr30,$r8,-1848(0x8c8)
1c007a0c:	10212719 	addu16i.d	$r25,$r24,2121(0x849)
1c007a10:	000e1200 	bytepick.d	$r0,$r16,$r4,0x4
	...
1c007a20:	e0000000 	0xe0000000
1c007a24:	00020418 	0x00020418
1c007a28:	07000000 	0x07000000
1c007a2c:	00402018 	0x00402018
1c007a30:	18040200 	pcaddi	$r0,8208(0x2010)
1c007a34:	000000e0 	0x000000e0
1c007a38:	18204000 	pcaddi	$r0,66048(0x10200)
1c007a3c:	00000007 	0x00000007
1c007a40:	f0804040 	0xf0804040
1c007a44:	00404080 	0x00404080
1c007a48:	0f010202 	0x0f010202
1c007a4c:	00020201 	0x00020201
1c007a50:	00000000 	0x00000000
1c007a54:	000000e0 	0x000000e0
1c007a58:	01010100 	fadd.d	$f0,$f8,$f0
1c007a5c:	0101010f 	fadd.d	$f15,$f8,$f0
	...
1c007a68:	00709000 	bstrpick.w	$r0,$r0,0x10,0x4
	...
1c007a78:	01010100 	fadd.d	$f0,$f8,$f0
1c007a7c:	00010101 	0x00010101
	...
1c007a88:	00303000 	0x00303000
	...
1c007a94:	000438c0 	alsl.w	$r0,$r6,$r14,0x1
1c007a98:	07186000 	0x07186000
1c007a9c:	00000000 	0x00000000
1c007aa0:	0810e000 	fmadd.s	$f0,$f0,$f24,$f1
1c007aa4:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c007aa8:	20100f00 	ll.w	$r0,$r24,4108(0x100c)
1c007aac:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c007ab0:	10100000 	addu16i.d	$r0,$r0,1024(0x400)
1c007ab4:	000000f8 	0x000000f8
1c007ab8:	20200000 	ll.w	$r0,$r0,8192(0x2000)
1c007abc:	0020203f 	div.w	$r31,$r1,$r8
1c007ac0:	08087000 	0x08087000
1c007ac4:	00f00808 	bstrpick.d	$r8,$r0,0x30,0x2
1c007ac8:	24283000 	ldptr.w	$r0,$r0,10288(0x2830)
1c007acc:	00302122 	0x00302122
1c007ad0:	08083000 	0x08083000
1c007ad4:	00708808 	bstrpick.w	$r8,$r0,0x10,0x2
1c007ad8:	21201800 	sc.w	$r0,$r0,8216(0x2018)
1c007adc:	001c2221 	mul.w	$r1,$r17,$r8
1c007ae0:	40800000 	beqz	$r0,32768(0x8000) # 1c00fae0 <_sidata+0x6ca4>
1c007ae4:	0000f830 	0x0000f830
1c007ae8:	24050600 	ldptr.w	$r0,$r16,1284(0x504)
1c007aec:	24243f24 	ldptr.w	$r4,$r25,9276(0x243c)
1c007af0:	8888f800 	0x8888f800
1c007af4:	00080888 	bytepick.w	$r8,$r4,$r2,0x0
1c007af8:	20201900 	ll.w	$r0,$r8,8216(0x2018)
1c007afc:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c007b00:	8810e000 	0x8810e000
1c007b04:	00009088 	0x00009088
1c007b08:	20110f00 	ll.w	$r0,$r24,4364(0x110c)
1c007b0c:	001f2020 	mulw.d.w	$r0,$r1,$r8
1c007b10:	08081800 	0x08081800
1c007b14:	00186888 	sra.w	$r8,$r4,$r26
1c007b18:	3e000000 	0x3e000000
1c007b1c:	00000001 	0x00000001
1c007b20:	08887000 	0x08887000
1c007b24:	00708808 	bstrpick.w	$r8,$r0,0x10,0x2
1c007b28:	21221c00 	sc.w	$r0,$r0,8732(0x221c)
1c007b2c:	001c2221 	mul.w	$r1,$r17,$r8
1c007b30:	0808f000 	0x0808f000
1c007b34:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c007b38:	22120100 	ll.d	$r0,$r8,4608(0x1200)
1c007b3c:	000f1122 	bytepick.d	$r2,$r9,$r4,0x6
1c007b40:	c0000000 	0xc0000000
1c007b44:	000000c0 	0x000000c0
1c007b48:	30000000 	0x30000000
1c007b4c:	00000030 	0x00000030
1c007b50:	80000000 	0x80000000
1c007b54:	00000000 	0x00000000
1c007b58:	e0000000 	0xe0000000
1c007b5c:	00000000 	0x00000000
1c007b60:	40800000 	beqz	$r0,32768(0x8000) # 1c00fb60 <_sidata+0x6d24>
1c007b64:	00081020 	bytepick.w	$r0,$r1,$r4,0x0
1c007b68:	04020100 	csrxchg	$r0,$r8,0x80
1c007b6c:	00201008 	div.w	$r8,$r0,$r4
1c007b70:	40404000 	beqz	$r0,16448(0x4040) # 1c00bbb0 <_sidata+0x2d74>
1c007b74:	00404040 	0x00404040
1c007b78:	02020200 	slti	$r0,$r16,128(0x80)
1c007b7c:	00020202 	0x00020202
1c007b80:	20100800 	ll.w	$r0,$r0,4104(0x1008)
1c007b84:	00008040 	0x00008040
1c007b88:	08102000 	fmadd.s	$f0,$f0,$f8,$f0
1c007b8c:	00010204 	0x00010204
1c007b90:	08487000 	0x08487000
1c007b94:	00708808 	bstrpick.w	$r8,$r0,0x10,0x2
1c007b98:	30000000 	0x30000000
1c007b9c:	00000037 	0x00000037
1c007ba0:	28c830c0 	ld.d	$r0,$r6,524(0x20c)
1c007ba4:	00e010e8 	bstrpick.d	$r8,$r7,0x20,0x4
1c007ba8:	28271807 	ld.b	$r7,$r0,-1594(0x9c6)
1c007bac:	0017282f 	sll.w	$r15,$r1,$r10
1c007bb0:	38c00000 	0x38c00000
1c007bb4:	000000e0 	0x000000e0
1c007bb8:	02233c20 	slti	$r0,$r1,-1841(0x8cf)
1c007bbc:	20382702 	ll.w	$r2,$r24,14372(0x3824)
1c007bc0:	8888f808 	0x8888f808
1c007bc4:	00007088 	0x00007088
1c007bc8:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c007bcc:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c007bd0:	080830c0 	0x080830c0
1c007bd4:	00380808 	0x00380808
1c007bd8:	20201807 	ll.w	$r7,$r0,8216(0x2018)
1c007bdc:	00081020 	bytepick.w	$r0,$r1,$r4,0x0
1c007be0:	0808f808 	0x0808f808
1c007be4:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c007be8:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c007bec:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c007bf0:	8888f808 	0x8888f808
1c007bf4:	001008e8 	add.w	$r8,$r7,$r2
1c007bf8:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c007bfc:	00182023 	sra.w	$r3,$r1,$r8
1c007c00:	8888f808 	0x8888f808
1c007c04:	001008e8 	add.w	$r8,$r7,$r2
1c007c08:	00203f20 	div.w	$r0,$r25,$r15
1c007c0c:	00000003 	0x00000003
1c007c10:	080830c0 	0x080830c0
1c007c14:	00003808 	revb.2w	$r8,$r0
1c007c18:	20201807 	ll.w	$r7,$r0,8216(0x2018)
1c007c1c:	00021e22 	0x00021e22
1c007c20:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c007c24:	08f80800 	0x08f80800
1c007c28:	01213f20 	0x01213f20
1c007c2c:	203f2101 	ll.w	$r1,$r8,16160(0x3f20)
1c007c30:	f8080800 	0xf8080800
1c007c34:	00000808 	0x00000808
1c007c38:	3f202000 	0x3f202000
1c007c3c:	00002020 	clo.d	$r0,$r1
1c007c40:	08080000 	0x08080000
1c007c44:	000808f8 	bytepick.w	$r24,$r7,$r2,0x0
1c007c48:	808080c0 	0x808080c0
1c007c4c:	0000007f 	0x0000007f
1c007c50:	c088f808 	0xc088f808
1c007c54:	00081828 	bytepick.w	$r8,$r1,$r6,0x0
1c007c58:	01203f20 	0x01203f20
1c007c5c:	00203826 	div.w	$r6,$r1,$r14
1c007c60:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c007c64:	00000000 	0x00000000
1c007c68:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c007c6c:	00302020 	0x00302020
1c007c70:	00f8f808 	bstrpick.d	$r8,$r0,0x38,0x3e
1c007c74:	0008f8f8 	bytepick.w	$r24,$r7,$r30,0x1
1c007c78:	3e013f20 	0x3e013f20
1c007c7c:	00203f01 	div.w	$r1,$r24,$r15
1c007c80:	c030f808 	0xc030f808
1c007c84:	08f80800 	0x08f80800
1c007c88:	00203f20 	div.w	$r0,$r25,$r15
1c007c8c:	003f1807 	0x003f1807
1c007c90:	080810e0 	0x080810e0
1c007c94:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c007c98:	2020100f 	ll.w	$r15,$r0,8208(0x2010)
1c007c9c:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c007ca0:	0808f808 	0x0808f808
1c007ca4:	00f00808 	bstrpick.d	$r8,$r0,0x30,0x2
1c007ca8:	01213f20 	0x01213f20
1c007cac:	00000101 	0x00000101
1c007cb0:	080810e0 	0x080810e0
1c007cb4:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c007cb8:	2828100f 	ld.b	$r15,$r0,-1532(0xa04)
1c007cbc:	004f5030 	0x004f5030
1c007cc0:	8888f808 	0x8888f808
1c007cc4:	00708888 	bstrpick.w	$r8,$r4,0x10,0x2
1c007cc8:	00203f20 	div.w	$r0,$r25,$r15
1c007ccc:	20300c03 	ll.w	$r3,$r0,12300(0x300c)
1c007cd0:	08887000 	0x08887000
1c007cd4:	00380808 	0x00380808
1c007cd8:	21203800 	sc.w	$r0,$r0,8248(0x2038)
1c007cdc:	001c2221 	mul.w	$r1,$r17,$r8
1c007ce0:	f8080818 	0xf8080818
1c007ce4:	00180808 	sra.w	$r8,$r0,$r2
1c007ce8:	3f200000 	0x3f200000
1c007cec:	00000020 	0x00000020
1c007cf0:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c007cf4:	08f80800 	0x08f80800
1c007cf8:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c007cfc:	001f2020 	mulw.d.w	$r0,$r1,$r8
1c007d00:	00887808 	bstrins.d	$r8,$r0,0x8,0x1e
1c007d04:	0838c800 	0x0838c800
1c007d08:	38070000 	0x38070000
1c007d0c:	0000010e 	0x0000010e
1c007d10:	f800f808 	0xf800f808
1c007d14:	0008f800 	bytepick.w	$r0,$r0,$r30,0x1
1c007d18:	013e0300 	0x013e0300
1c007d1c:	0000033e 	0x0000033e
1c007d20:	80681808 	0x80681808
1c007d24:	08186880 	fmadd.s	$f0,$f4,$f26,$f16
1c007d28:	032c3020 	lu52i.d	$r0,$r1,-1268(0xb0c)
1c007d2c:	20302c03 	ll.w	$r3,$r0,12332(0x302c)
1c007d30:	00c83808 	bstrpick.d	$r8,$r0,0x8,0xe
1c007d34:	000838c8 	bytepick.w	$r8,$r6,$r14,0x0
1c007d38:	3f200000 	0x3f200000
1c007d3c:	00000020 	0x00000020
1c007d40:	08080810 	0x08080810
1c007d44:	000838c8 	bytepick.w	$r8,$r6,$r14,0x0
1c007d48:	21263820 	sc.w	$r0,$r1,9784(0x2638)
1c007d4c:	00182020 	sra.w	$r0,$r1,$r8
1c007d50:	fe000000 	0xfe000000
1c007d54:	00020202 	0x00020202
1c007d58:	7f000000 	0x7f000000
1c007d5c:	00404040 	0x00404040
1c007d60:	c0380400 	0xc0380400
1c007d64:	00000000 	0x00000000
1c007d68:	01000000 	0x01000000
1c007d6c:	00c03806 	bstrpick.d	$r6,$r0,0x0,0xe
1c007d70:	02020200 	slti	$r0,$r16,128(0x80)
1c007d74:	000000fe 	0x000000fe
1c007d78:	40404000 	beqz	$r0,16448(0x4040) # 1c00bdb8 <_sidata+0x2f7c>
1c007d7c:	0000007f 	0x0000007f
1c007d80:	02040000 	slti	$r0,$r0,256(0x100)
1c007d84:	00000402 	0x00000402
	...
1c007d98:	80808080 	0x80808080
1c007d9c:	80808080 	0x80808080
1c007da0:	04020200 	csrxchg	$r0,$r16,0x80
	...
1c007db0:	80800000 	0x80800000
1c007db4:	00000080 	0x00000080
1c007db8:	24241900 	ldptr.w	$r0,$r8,9240(0x2418)
1c007dbc:	00203f12 	div.w	$r18,$r24,$r15
1c007dc0:	8000f010 	0x8000f010
1c007dc4:	00000080 	0x00000080
1c007dc8:	20113f00 	ll.w	$r0,$r24,4412(0x113c)
1c007dcc:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c007dd0:	80000000 	0x80000000
1c007dd4:	00008080 	0x00008080
1c007dd8:	20110e00 	ll.w	$r0,$r16,4364(0x110c)
1c007ddc:	00112020 	sub.w	$r0,$r1,$r8
1c007de0:	80800000 	0x80800000
1c007de4:	00f09080 	bstrpick.d	$r0,$r4,0x30,0x24
1c007de8:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c007dec:	203f1020 	ll.w	$r0,$r1,16144(0x3f10)
1c007df0:	80800000 	0x80800000
1c007df4:	00008080 	0x00008080
1c007df8:	24241f00 	ldptr.w	$r0,$r24,9244(0x241c)
1c007dfc:	00172424 	sll.w	$r4,$r1,$r9
1c007e00:	e0808000 	0xe0808000
1c007e04:	00209090 	mod.w	$r16,$r4,$r4
1c007e08:	3f202000 	0x3f202000
1c007e0c:	00002020 	clo.d	$r0,$r1
1c007e10:	80800000 	0x80800000
1c007e14:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c007e18:	94946b00 	0x94946b00
1c007e1c:	00609394 	bstrpick.w	$r20,$r28,0x0,0x4
1c007e20:	8000f010 	0x8000f010
1c007e24:	00008080 	0x00008080
1c007e28:	00213f20 	div.wu	$r0,$r25,$r15
1c007e2c:	203f2000 	ll.w	$r0,$r0,16160(0x3f20)
1c007e30:	98988000 	0x98988000
1c007e34:	00000000 	0x00000000
1c007e38:	3f202000 	0x3f202000
1c007e3c:	00002020 	clo.d	$r0,$r1
1c007e40:	80000000 	0x80000000
1c007e44:	00009898 	0x00009898
1c007e48:	8080c000 	0x8080c000
1c007e4c:	00007f80 	0x00007f80
1c007e50:	0000f010 	0x0000f010
1c007e54:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c007e58:	06243f20 	cacop	0x0,$r25,-1777(0x90f)
1c007e5c:	00203029 	div.w	$r9,$r1,$r12
1c007e60:	f8101000 	0xf8101000
1c007e64:	00000000 	0x00000000
1c007e68:	3f202000 	0x3f202000
1c007e6c:	00002020 	clo.d	$r0,$r1
1c007e70:	80808080 	0x80808080
1c007e74:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c007e78:	00203f20 	div.w	$r0,$r25,$r15
1c007e7c:	3f00203f 	0x3f00203f
1c007e80:	80008080 	0x80008080
1c007e84:	00008080 	0x00008080
1c007e88:	00213f20 	div.wu	$r0,$r25,$r15
1c007e8c:	203f2000 	ll.w	$r0,$r0,16160(0x3f20)
1c007e90:	80800000 	0x80800000
1c007e94:	00008080 	0x00008080
1c007e98:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c007e9c:	001f2020 	mulw.d.w	$r0,$r1,$r8
1c007ea0:	80008080 	0x80008080
1c007ea4:	00000080 	0x00000080
1c007ea8:	2091ff80 	ll.w	$r0,$r28,-28164(0x91fc)
1c007eac:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c007eb0:	80000000 	0x80000000
1c007eb4:	00800080 	bstrins.d	$r0,$r4,0x0,0x0
1c007eb8:	20110e00 	ll.w	$r0,$r16,4364(0x110c)
1c007ebc:	80ff9120 	0x80ff9120
1c007ec0:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c007ec4:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c007ec8:	213f2020 	sc.w	$r0,$r1,16160(0x3f20)
1c007ecc:	00010020 	asrtle.d	$r1,$r0
1c007ed0:	80800000 	0x80800000
1c007ed4:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c007ed8:	24243300 	ldptr.w	$r0,$r24,9264(0x2430)
1c007edc:	00192424 	srl.d	$r4,$r1,$r9
1c007ee0:	e0808000 	0xe0808000
1c007ee4:	00008080 	0x00008080
1c007ee8:	1f000000 	pcaddu18i	$r0,-524288(0x80000)
1c007eec:	00102020 	add.w	$r0,$r1,$r8
1c007ef0:	00008080 	0x00008080
1c007ef4:	00808000 	bstrins.d	$r0,$r0,0x0,0x20
1c007ef8:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c007efc:	203f1020 	ll.w	$r0,$r1,16144(0x3f10)
1c007f00:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c007f04:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c007f08:	300c0300 	0x300c0300
1c007f0c:	0000030c 	0x0000030c
1c007f10:	80008080 	0x80008080
1c007f14:	80800080 	0x80800080
1c007f18:	0c300e01 	0x0c300e01
1c007f1c:	01063807 	0x01063807
1c007f20:	80808000 	0x80808000
1c007f24:	00808000 	bstrins.d	$r0,$r0,0x0,0x20
1c007f28:	0e312000 	0x0e312000
1c007f2c:	0020312e 	div.w	$r14,$r9,$r12
1c007f30:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c007f34:	80808000 	0x80808000
1c007f38:	78868100 	0x78868100
1c007f3c:	00010618 	0x00010618
1c007f40:	80808000 	0x80808000
1c007f44:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c007f48:	2c302100 	vld	$vr0,$r8,-1016(0xc08)
1c007f4c:	00302122 	0x00302122
1c007f50:	00000000 	0x00000000
1c007f54:	0202fc00 	slti	$r0,$r0,191(0xbf)
1c007f58:	00000000 	0x00000000
1c007f5c:	40403e01 	beqz	$r16,278588(0x4403c) # 1c04bf98 <_sidata+0x4315c>
1c007f60:	00000000 	0x00000000
1c007f64:	000000ff 	0x000000ff
1c007f68:	00000000 	0x00000000
1c007f6c:	000000ff 	0x000000ff
1c007f70:	00fc0202 	bstrpick.d	$r2,$r16,0x3c,0x0
1c007f74:	00000000 	0x00000000
1c007f78:	013e4040 	0x013e4040
1c007f7c:	00000000 	0x00000000
1c007f80:	02010200 	slti	$r0,$r16,64(0x40)
1c007f84:	00020402 	0x00020402
	...

1c007f90 <tfont16>:
1c007f90:	00b2b7e5 	bstrins.d	$r5,$r31,0x32,0x2d
1c007f94:	8282e200 	0x8282e200
1c007f98:	82828282 	0x82828282
1c007f9c:	00fe8282 	bstrpick.d	$r2,$r20,0x3e,0x20
1c007fa0:	00000000 	0x00000000
1c007fa4:	40403f00 	beqz	$r24,16444(0x403c) # 1c00bfe0 <_sidata+0x31a4>
1c007fa8:	40404040 	beqz	$r2,16448(0x4040) # 1c00bfe8 <_sidata+0x31ac>
1c007fac:	40404040 	beqz	$r2,16448(0x4040) # 1c00bfec <_sidata+0x31b0>
1c007fb0:	e8000078 	0xe8000078
1c007fb4:	40409ebf 	beqz	$r21,-245604(0x7c409c) # 1bfcc050 <_start-0x33fb0>
1c007fb8:	0400cc42 	csrxchg	$r2,$r2,0x33
1c007fbc:	475c6444 	bnez	$r2,1268836(0x135c64) # 1c13dc20 <_sidata+0x134de4>
1c007fc0:	444444f4 	bnez	$r7,-3128252(0x504444) # 1bd0c404 <_start-0x2f3bfc>
1c007fc4:	40000004 	beqz	$r0,1048576(0x100000) # 1c107fc4 <_sidata+0xff188>
1c007fc8:	44201f20 	bnez	$r25,8220(0x201c) # 1c009fe4 <_sidata+0x11a8>
1c007fcc:	44444444 	bnez	$r2,1066052(0x104444) # 1c10c410 <_sidata+0x1035d4>
1c007fd0:	4444447f 	bnez	$r3,-244668(0x7c4444) # 1bfcc414 <_start-0x33bec>
1c007fd4:	8ee60044 	0x8ee60044
1c007fd8:	101010a5 	addu16i.d	$r5,$r5,1028(0x404)
1c007fdc:	445010ff 	bnez	$r7,-241648(0x7c5010) # 1bfccfec <_start-0x33014>
1c007fe0:	44c66554 	bnez	$r10,-3094940(0x50c664) # 1bd14644 <_start-0x2eb9bc>
1c007fe4:	40445464 	beqz	$r3,1066068(0x104454) # 1c10c438 <_sidata+0x1035fc>
1c007fe8:	82440400 	0x82440400
1c007fec:	8282017f 	0x8282017f
1c007ff0:	2223564a 	ll.d	$r10,$r18,9044(0x2354)
1c007ff4:	02824e52 	addi.w	$r18,$r18,147(0x93)
1c007ff8:	b088e500 	0xb088e500
1c007ffc:	4a526242 	0x4a526242
1c008000:	625242c6 	blt	$r22,$r6,-110016(0x25240) # 1bfed240 <_start-0x12dc0>
1c008004:	00f800c2 	bstrpick.d	$r2,$r6,0x38,0x0
1c008008:	0000ff00 	0x0000ff00
1c00800c:	4444c440 	bnez	$r2,17604(0x44c4) # 1c00c4d0 <_sidata+0x3694>
1c008010:	2424247f 	ldptr.w	$r31,$r3,9252(0x2424)
1c008014:	400f0020 	beqz	$r1,3840(0xf00) # 1c008f14 <_sidata+0xd8>
1c008018:	00007f80 	0x00007f80
1c00801c:	068384e2 	0x068384e2
1c008020:	f8e60909 	0xf8e60909
1c008024:	0202040c 	slti	$r12,$r0,129(0x81)
1c008028:	04020202 	csrxchg	$r2,$r16,0x80
1c00802c:	0000001e 	0x0000001e
1c008030:	1f070000 	pcaddu18i	$r0,-509952(0x83800)
1c008034:	40402030 	beqz	$r1,-4177888(0x404020) # 1bc0c054 <_start-0x3f3fac>
1c008038:	20404040 	ll.w	$r0,$r2,16448(0x4040)
1c00803c:	e6000010 	0xe6000010
1c008040:	8080aa9c 	0x8080aa9c
1c008044:	88888888 	0x88888888
1c008048:	8888ff88 	0x8888ff88
1c00804c:	80888888 	0x80888888
1c008050:	20200080 	ll.w	$r0,$r4,8192(0x2000)
1c008054:	02040810 	slti	$r16,$r0,258(0x102)
1c008058:	0201ff01 	slti	$r1,$r24,127(0x7f)
1c00805c:	20100804 	ll.w	$r4,$r0,4104(0x1008)
1c008060:	a3e60020 	0xa3e60020
1c008064:	d0101080 	0xd0101080
1c008068:	205090ff 	ll.w	$r31,$r7,20624(0x5090)
1c00806c:	4c434c50 	jirl	$r16,$r2,17228(0x434c)
1c008070:	40402050 	beqz	$r2,-4177888(0x404020) # 1bc0c090 <_start-0x3f3f70>
1c008074:	00030400 	0x00030400
1c008078:	444100ff 	bnez	$r7,-245504(0x7c4100) # 1bfcc178 <_start-0x33e88>
1c00807c:	604e4158 	blt	$r10,$r24,20032(0x4e40) # 1c00cebc <_sidata+0x4080>
1c008080:	40404758 	beqz	$r26,-2080700(0x604044) # 1be0c0c4 <_start-0x1f3f3c>
1c008084:	8bb5e600 	0x8bb5e600
1c008088:	8c026010 	0x8c026010
1c00808c:	f202fe00 	0xf202fe00
1c008090:	f800fe02 	0xf800fe02
1c008094:	0000ff00 	0x0000ff00
1c008098:	017e0404 	0x017e0404
1c00809c:	0f304780 	0x0f304780
1c0080a0:	47002710 	bnez	$r24,-3997660(0x430024) # 1bc380c4 <_start-0x3c7f3c>
1c0080a4:	00007f80 	0x00007f80
1c0080a8:	42b088e5 	beqz	$r7,1486984(0x16b088) # 1c173130 <_sidata+0x16a2f4>
1c0080ac:	c64a5262 	0xc64a5262
1c0080b0:	c2625242 	0xc2625242
1c0080b4:	0000f800 	0x0000f800
1c0080b8:	400000ff 	beqz	$r7,-262144(0x7c0000) # 1bfc80b8 <_start-0x37f48>
1c0080bc:	7f4444c4 	0x7f4444c4
1c0080c0:	20242424 	ll.w	$r4,$r1,9252(0x2424)
1c0080c4:	80400f00 	0x80400f00
1c0080c8:	e400007f 	0xe400007f
1c0080cc:	8000a0bc 	0x8000a0bc
1c0080d0:	4007f860 	beqz	$r3,2040(0x7f8) # 1c0088c8 <tfont32+0x584>
1c0080d4:	5fe84848 	bne	$r2,$r8,-6072(0x3e848) # 1c00691c <DHT11_Read_Data+0x40>
1c0080d8:	40484848 	beqz	$r2,2115656(0x204848) # 1c20c920 <_sidata+0x203ae4>
1c0080dc:	00010040 	asrtle.d	$r2,$r0
1c0080e0:	0000ff00 	0x0000ff00
1c0080e4:	22120b02 	ll.d	$r2,$r24,4616(0x1208)
1c0080e8:	00060ad2 	alsl.wu	$r18,$r22,$r2,0x1
1c0080ec:	84e60000 	0x84e60000
1c0080f0:	fc00009f 	0xfc00009f
1c0080f4:	5454d404 	bl	1070292(0x1054d4) # 1c10d5c8 <_sidata+0x10478c>
1c0080f8:	7f04d454 	0x7f04d454
1c0080fc:	0436c584 	csrxchg	$r4,$r12,0xdb1
1c008100:	01668800 	0x01668800
1c008104:	82826300 	0x82826300
1c008108:	8284ab92 	0x8284ab92
1c00810c:	cf2402c1 	0xcf2402c1
1c008110:	a899e500 	0xa899e500
1c008114:	929e8080 	0x929e8080
1c008118:	e09e9292 	0xe09e9292
1c00811c:	d2b29e80 	0xd2b29e80
1c008120:	00809e92 	bstrins.d	$r18,$r20,0x0,0x27
1c008124:	94f40808 	0x94f40808
1c008128:	00f19292 	bstrpick.d	$r18,$r20,0x31,0x24
1c00812c:	9492f201 	0x9492f201
1c008130:	0008f894 	bytepick.w	$r20,$r4,$r30,0x1
1c008134:	10a9b8e6 	addu16i.d	$r6,$r7,10862(0x2a6e)
1c008138:	008c0260 	bstrins.d	$r0,$r19,0xc,0x0
1c00813c:	9292fe00 	0x9292fe00
1c008140:	fe929292 	0xfe929292
1c008144:	04000000 	csrrd	$r0,0x0
1c008148:	40017e04 	beqz	$r16,1048956(0x10017c) # 1c1082c4 <_sidata+0xff488>
1c00814c:	7e42427e 	0x7e42427e
1c008150:	42427e42 	beqz	$r18,672380(0xa427c) # 1c0ac3cc <_sidata+0xa3590>
1c008154:	e600407e 	0xe600407e
1c008158:	6010bfb9 	blt	$r29,$r25,4284(0x10bc) # 1c009214 <_sidata+0x3d8>
1c00815c:	fe008c02 	0xfe008c02
1c008160:	92929292 	0x92929292
1c008164:	00fe9292 	bstrpick.d	$r18,$r20,0x3e,0x24
1c008168:	04040000 	csrrd	$r0,0x100
1c00816c:	4844017e 	bcnez	$fcc3,-506880(0x784400) # 1bf8c56c <_start-0x73a94>
1c008170:	40407f50 	beqz	$r26,-4177796(0x40407c) # 1bc0c1ec <_start-0x3f3e14>
1c008174:	4448507f 	bnez	$r3,-243632(0x7c4850) # 1bfcc9c4 <_start-0x3363c>
1c008178:	bae50040 	0xbae50040
1c00817c:	fc0000a6 	0xfc0000a6
1c008180:	fc242424 	0xfc242424
1c008184:	fc242625 	0xfc242625
1c008188:	04242424 	csrwr	$r4,0x909
1c00818c:	8f304000 	0x8f304000
1c008190:	554c8480 	bl	33639556(0x2014c84) # 1e01ce14 <_sidata+0x2013fd8>
1c008194:	55252525 	bl	76883236(0x4952524) # 2095a6b8 <_sidata+0x495187c>
1c008198:	8080804c 	0x8080804c
1c00819c:	919be700 	0x919be700
1c0081a0:	007e0000 	bstrins.w	$r0,$r0,0x1e,0x0
1c0081a4:	4000ff00 	beqz	$r24,252(0xfc) # 1c0082a0 <tfont16+0x310>
1c0081a8:	14040f30 	lu12i.w	$r16,8313(0x2079)
1c0081ac:	00000464 	0x00000464
1c0081b0:	427e4040 	beqz	$r2,163392(0x27e40) # 1c02fff0 <_sidata+0x271b4>
1c0081b4:	42427e42 	beqz	$r18,672380(0xa427c) # 1c0ac430 <_sidata+0xa35f4>
1c0081b8:	42427e42 	beqz	$r18,672380(0xa427c) # 1c0ac434 <_sidata+0xa35f8>
1c0081bc:	0040407e 	0x0040407e
1c0081c0:	108bb5e6 	addu16i.d	$r6,$r15,8941(0x22ed)
1c0081c4:	008c0260 	bstrins.d	$r0,$r19,0xc,0x0
1c0081c8:	02f202fe 	addi.d	$r30,$r23,-896(0xc80)
1c0081cc:	00f800fe 	bstrpick.d	$r30,$r7,0x38,0x0
1c0081d0:	040000ff 	csrxchg	$r31,$r7,0x0
1c0081d4:	80017e04 	0x80017e04
1c0081d8:	100f3047 	addu16i.d	$r7,$r2,972(0x3cc)
1c0081dc:	80470027 	0x80470027
1c0081e0:	e500007f 	0xe500007f
1c0081e4:	0c109eae 	0x0c109eae
1c0081e8:	64148404 	bge	$r0,$r4,5252(0x1484) # 1c00966c <_sidata+0x830>
1c0081ec:	04f40605 	csrxchg	$r5,$r16,0x3d01
1c0081f0:	14040404 	lu12i.w	$r4,8224(0x2020)
1c0081f4:	8404000c 	0x8404000c
1c0081f8:	24474484 	ldptr.w	$r4,$r4,18244(0x4744)
1c0081fc:	0c070c14 	0x0c070c14
1c008200:	84442414 	0x84442414
1c008204:	aae90004 	0xaae90004
1c008208:	82fa028c 	0x82fa028c
1c00820c:	4080fe82 	beqz	$r20,557308(0x880fc) # 1c090308 <_sidata+0x874cc>
1c008210:	434c5020 	beqz	$r1,216144(0x34c50) # 1c03ce60 <_sidata+0x34024>
1c008214:	4020504c 	beqz	$r2,3154000(0x302050) # 1c30a264 <_sidata+0x301428>
1c008218:	48180800 	bceqz	$fcc0,6152(0x1808) # 1c009a20 <_sidata+0xbe4>
1c00821c:	403f4484 	beqz	$r4,1064772(0x103f44) # 1c10c160 <_sidata+0x103324>
1c008220:	4e415844 	jirl	$r4,$r2,-114344(0x24158)
1c008224:	40475860 	beqz	$r3,18264(0x4758) # 1c00c97c <_sidata+0x3b40>
1c008228:	baa4e700 	0xbaa4e700
1c00822c:	42424040 	beqz	$r2,148032(0x24240) # 1c02c46c <_sidata+0x23630>
1c008230:	c2424242 	0xc2424242
1c008234:	42424242 	beqz	$r18,672320(0xa4240) # 1c0ac474 <_sidata+0xa3638>
1c008238:	00404042 	0x00404042
1c00823c:	06081020 	cacop	0x0,$r1,516(0x204)
1c008240:	7f804000 	0x7f804000
1c008244:	02000000 	slti	$r0,$r0,0
1c008248:	00300804 	0x00300804
1c00824c:	00be98e6 	bstrins.d	$r6,$r7,0x3e,0x26
1c008250:	92fe0000 	0x92fe0000
1c008254:	92929292 	0x92929292
1c008258:	00fe9292 	bstrpick.d	$r18,$r20,0x3e,0x24
1c00825c:	40000000 	beqz	$r0,0 # 1c00825c <tfont16+0x2cc>
1c008260:	40584442 	beqz	$r2,546884(0x85844) # 1c08daa4 <_sidata+0x84c68>
1c008264:	4040407f 	beqz	$r3,-245696(0x7c4040) # 1bfcc2a4 <_start-0x33d5c>
1c008268:	4850407f 	bceqz	$fcc3,-241600(0x7c5040) # 1bfcd2a8 <_start-0x32d58>
1c00826c:	e5004046 	0xe5004046
1c008270:	0c109eae 	0x0c109eae
1c008274:	64148404 	bge	$r0,$r4,5252(0x1484) # 1c0096f8 <_sidata+0x8bc>
1c008278:	04f40605 	csrxchg	$r5,$r16,0x3d01
1c00827c:	14040404 	lu12i.w	$r4,8224(0x2020)
1c008280:	8404000c 	0x8404000c
1c008284:	24474484 	ldptr.w	$r4,$r4,18244(0x4744)
1c008288:	0c070c14 	0x0c070c14
1c00828c:	84442414 	0x84442414
1c008290:	aae90004 	0xaae90004
1c008294:	82fa028c 	0x82fa028c
1c008298:	4080fe82 	beqz	$r20,557308(0x880fc) # 1c090394 <_sidata+0x87558>
1c00829c:	434c5020 	beqz	$r1,216144(0x34c50) # 1c03ceec <_sidata+0x340b0>
1c0082a0:	4020504c 	beqz	$r2,3154000(0x302050) # 1c30a2f0 <_sidata+0x3014b4>
1c0082a4:	48180800 	bceqz	$fcc0,6152(0x1808) # 1c009aac <_sidata+0xc70>
1c0082a8:	403f4484 	beqz	$r4,1064772(0x103f44) # 1c10c1ec <_sidata+0x1033b0>
1c0082ac:	4e415844 	jirl	$r4,$r2,-114344(0x24158)
1c0082b0:	40475860 	beqz	$r3,18264(0x4758) # 1c00ca08 <_sidata+0x3bcc>
1c0082b4:	be99e700 	0xbe99e700
1c0082b8:	22e20202 	ll.d	$r2,$r16,-7680(0xe200)
1c0082bc:	262a3222 	ldptr.d	$r2,$r17,10800(0x2a30)
1c0082c0:	22222222 	ll.d	$r2,$r17,8736(0x2220)
1c0082c4:	000202e2 	0x000202e2
1c0082c8:	42ff0000 	beqz	$r0,196352(0x2ff00) # 1c0381c8 <_sidata+0x2f38c>
1c0082cc:	42424242 	beqz	$r18,672320(0xa4240) # 1c0ac50c <_sidata+0xa36d0>
1c0082d0:	42424242 	beqz	$r18,672320(0xa4240) # 1c0ac510 <_sidata+0xa36d4>
1c0082d4:	000000ff 	0x000000ff
1c0082d8:	2491a7e7 	ldptr.w	$r7,$r31,-28252(0x91a4)
1c0082dc:	a3fea424 	0xa3fea424
1c0082e0:	cc220022 	0xcc220022
1c0082e4:	00ff0000 	bstrpick.d	$r0,$r0,0x3f,0x0
1c0082e8:	08000000 	0x08000000
1c0082ec:	00ff0106 	bstrpick.d	$r6,$r8,0x3f,0x0
1c0082f0:	04040401 	csrrd	$r1,0x101
1c0082f4:	02ff0404 	addi.d	$r4,$r0,-63(0xfc1)
1c0082f8:	e8000202 	0xe8000202
1c0082fc:	6484a38d 	bge	$r28,$r13,33952(0x84a0) # 1c01079c <_sidata+0x7960>
1c008300:	242f2424 	ldptr.w	$r4,$r1,12068(0x2f24)
1c008304:	2424a424 	ldptr.w	$r4,$r1,9380(0x24a4)
1c008308:	a424242f 	0xa424242f
1c00830c:	42400064 	beqz	$r3,1196032(0x124000) # 1c12c30c <_sidata+0x1234d0>
1c008310:	0a122222 	xvfmadd.s	$xr2,$xr17,$xr8,$xr4
1c008314:	0a06ff06 	0x0a06ff06
1c008318:	42222212 	beqz	$r16,-3530208(0x4a2220) # 1bcaa538 <_start-0x355ac8>
1c00831c:	88e50040 	0x88e50040
1c008320:	d020409b 	0xd020409b
1c008324:	c844434c 	0xc844434c
1c008328:	f8002010 	0xf8002010
1c00832c:	00ff0000 	bstrpick.d	$r0,$r0,0x3f,0x0
1c008330:	3f000000 	0x3f000000
1c008334:	47484440 	bnez	$r2,215108(0x34844) # 1c03cb78 <_sidata+0x33d3c>
1c008338:	0f007040 	0x0f007040
1c00833c:	007f8040 	bstrpick.w	$r0,$r2,0x1f,0x0
1c008340:	00000000 	0x00000000

1c008344 <tfont32>:
1c008344:	00be99e7 	bstrins.d	$r7,$r15,0x3e,0x26
1c008348:	10100000 	addu16i.d	$r0,$r0,1024(0x400)
1c00834c:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008350:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008354:	70f0f010 	vsrlr.h	$vr16,$vr0,$vr28
1c008358:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c00835c:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008360:	10181010 	addu16i.d	$r16,$r0,1540(0x604)
	...
1c00836c:	f8fc0000 	0xf8fc0000
1c008370:	08080808 	0x08080808
1c008374:	08080b0c 	0x08080b0c
1c008378:	08080808 	0x08080808
1c00837c:	f8fc0808 	0xf8fc0808
	...
1c00838c:	ffff0000 	0xffff0000
1c008390:	08080808 	0x08080808
1c008394:	08080808 	0x08080808
1c008398:	08080808 	0x08080808
1c00839c:	ffff0808 	0xffff0808
	...
1c0083ac:	3f7f0000 	0x3f7f0000
1c0083b0:	08080808 	0x08080808
1c0083b4:	08080808 	0x08080808
1c0083b8:	08080808 	0x08080808
1c0083bc:	3f7f0808 	0x3f7f0808
1c0083c0:	00000000 	0x00000000
1c0083c4:	e7000000 	0xe7000000
1c0083c8:	000091a7 	0x000091a7
1c0083cc:	20404040 	ll.w	$r0,$r2,16448(0x4040)
1c0083d0:	e0e02020 	0xe0e02020
1c0083d4:	18181030 	pcaddi	$r16,49281(0xc081)
1c0083d8:	80000000 	0x80000000
1c0083dc:	00000080 	0x00000080
1c0083e0:	f8fc0000 	0xf8fc0000
1c0083e4:	00000008 	0x00000008
1c0083e8:	00000000 	0x00000000
1c0083ec:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c0083f0:	ffff9010 	0xffff9010
1c0083f4:	18101010 	pcaddi	$r16,32896(0x8080)
1c0083f8:	c0000010 	0xc0000010
1c0083fc:	00060781 	alsl.wu	$r1,$r28,$r1,0x1
1c008400:	ffff0000 	0xffff0000
	...
1c00840c:	18204080 	pcaddi	$r0,66052(0x10204)
1c008410:	ffff030e 	0xffff030e
1c008414:	5e060301 	bne	$r24,$r1,-129536(0x20600) # 1bfe8a14 <_start-0x175ec>
1c008418:	20202040 	ll.w	$r0,$r2,8224(0x2020)
1c00841c:	10102321 	addu16i.d	$r1,$r25,1032(0x408)
1c008420:	ffff1010 	0xffff1010
1c008424:	0c0c0808 	0x0c0c0808
1c008428:	01000000 	0x01000000
1c00842c:	00000000 	0x00000000
1c008430:	3f7f0000 	0x3f7f0000
	...
1c008440:	3f7f0000 	0x3f7f0000
1c008444:	00000000 	0x00000000
1c008448:	8de80000 	0x8de80000
1c00844c:	000000a3 	0x000000a3
1c008450:	80808080 	0x80808080
1c008454:	80808080 	0x80808080
1c008458:	8088f8fc 	0x8088f8fc
1c00845c:	80808080 	0x80808080
1c008460:	8088f8fc 	0x8088f8fc
1c008464:	e0c08080 	0xe0c08080
1c008468:	000080c0 	0x000080c0
1c00846c:	00000000 	0x00000000
1c008470:	10f8c080 	addu16i.d	$r0,$r4,15920(0x3e30)
1c008474:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008478:	10101717 	addu16i.d	$r23,$r24,1029(0x405)
1c00847c:	1050f0f0 	addu16i.d	$r16,$r7,5180(0x143c)
1c008480:	10101317 	addu16i.d	$r23,$r24,1028(0x404)
1c008484:	f0d01010 	0xf0d01010
1c008488:	00001038 	clo.w	$r24,$r1
1c00848c:	00000000 	0x00000000
1c008490:	02020200 	slti	$r0,$r16,128(0x80)
1c008494:	c2820202 	0xc2820202
1c008498:	061e3a62 	cacop	0x2,$r19,1934(0x78e)
1c00849c:	0e02ffff 	0x0e02ffff
1c0084a0:	82c26212 	0x82c26212
1c0084a4:	03020282 	lu52i.d	$r2,$r20,128(0x80)
1c0084a8:	00000203 	0x00000203
1c0084ac:	10000000 	addu16i.d	$r0,$r0,0
1c0084b0:	06040808 	cacop	0x8,$r0,258(0x102)
1c0084b4:	00010102 	0x00010102
1c0084b8:	00000000 	0x00000000
1c0084bc:	00003f7f 	revb.d	$r31,$r27
1c0084c0:	01000000 	0x01000000
1c0084c4:	0e060303 	0x0e060303
1c0084c8:	0004040e 	alsl.w	$r14,$r0,$r1,0x1
1c0084cc:	9b88e500 	0x9b88e500
1c0084d0:	00000000 	0x00000000
1c0084d4:	c0000000 	0xc0000000
1c0084d8:	28183cf0 	ld.b	$r16,$r7,1551(0x60f)
1c0084dc:	80c04060 	0x80c04060
	...
1c0084e8:	f8000000 	0xf8000000
1c0084ec:	000000f8 	0x000000f8
1c0084f0:	40800000 	beqz	$r0,32768(0x8000) # 1c0104f0 <_sidata+0x76b4>
1c0084f4:	23e6f830 	sc.d	$r16,$r1,-6408(0xe6f8)
1c0084f8:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0084fc:	23f0e020 	sc.d	$r0,$r1,-3872(0xf0e0)
1c008500:	00000207 	0x00000207
1c008504:	0002ff00 	0x0002ff00
1c008508:	ff000000 	0xff000000
1c00850c:	000000ff 	0x000000ff
1c008510:	00000100 	0x00000100
1c008514:	00ffff00 	bstrpick.d	$r0,$r24,0x3f,0x3f
1c008518:	60200000 	blt	$r0,$r0,8192(0x2000) # 1c00a518 <_sidata+0x16dc>
1c00851c:	001f3f60 	mulw.d.w	$r0,$r27,$r15
1c008520:	00008000 	0x00008000
1c008524:	00007f00 	0x00007f00
1c008528:	ff000000 	0xff000000
1c00852c:	000000ff 	0x000000ff
1c008530:	00000000 	0x00000000
1c008534:	303f0700 	0x303f0700
1c008538:	30303030 	0x30303030
1c00853c:	30303030 	0x30303030
1c008540:	00103f38 	add.w	$r24,$r25,$r15
1c008544:	10100000 	addu16i.d	$r0,$r0,1024(0x400)
1c008548:	3f703030 	0x3f703030
1c00854c:	0000001f 	0x0000001f
1c008550:	0088bcef 	bstrins.d	$r15,$r7,0x8,0x2f
	...
1c008568:	40800000 	beqz	$r0,32768(0x8000) # 1c010568 <_sidata+0x772c>
1c00856c:	00102040 	add.w	$r0,$r2,$r8
	...
1c008584:	1cf00000 	pcaddu12i	$r0,491520(0x78000)
1c008588:	00000306 	0x00000306
	...
1c0085a4:	701f0000 	vaddwev.d.w	$vr0,$vr0,$vr0
1c0085a8:	000000c0 	0x000000c0
	...
1c0085c8:	04020100 	csrxchg	$r0,$r8,0x80
1c0085cc:	0010080c 	add.w	$r12,$r0,$r2
1c0085d0:	e5000000 	0xe5000000
1c0085d4:	0000978c 	0x0000978c
	...
1c0085e0:	08f8fc00 	0x08f8fc00
1c0085e4:	00000000 	0x00000000
1c0085e8:	0008f8fc 	bytepick.w	$r28,$r7,$r30,0x1
	...
1c0085f8:	08080808 	0x08080808
1c0085fc:	08080808 	0x08080808
1c008600:	00ffff08 	bstrpick.d	$r8,$r24,0x3f,0x3f
1c008604:	00000000 	0x00000000
1c008608:	4040ffff 	beqz	$r31,-245508(0x7c40fc) # 1bfcc704 <_start-0x338fc>
1c00860c:	18103020 	pcaddi	$r0,33153(0x8181)
1c008610:	00040e0c 	alsl.w	$r12,$r16,$r3,0x1
	...
1c00861c:	80000000 	0x80000000
1c008620:	00ffff80 	bstrpick.d	$r0,$r28,0x3f,0x3f
1c008624:	00000000 	0x00000000
1c008628:	0000ffff 	0x0000ffff
1c00862c:	00000000 	0x00000000
1c008630:	00c00000 	bstrpick.d	$r0,$r0,0x0,0x0
1c008634:	00000000 	0x00000000
1c008638:	03060606 	lu52i.d	$r6,$r16,385(0x181)
1c00863c:	00010103 	0x00010103
1c008640:	003f7f00 	0x003f7f00
1c008644:	00000000 	0x00000000
1c008648:	30303f1f 	0x30303f1f
1c00864c:	30303030 	0x30303030
1c008650:	183f3830 	pcaddi	$r16,129473(0x1f9c1)
1c008654:	bae40000 	0xbae40000
1c008658:	800000ac 	0x800000ac
1c00865c:	80808080 	0x80808080
1c008660:	80808080 	0x80808080
1c008664:	8c808080 	0x8c808080
1c008668:	80b0f898 	0x80b0f898
1c00866c:	80808080 	0x80808080
1c008670:	c0808080 	0xc0808080
1c008674:	0080c0e0 	bstrins.d	$r0,$r7,0x0,0x30
	...
1c008680:	08f8f800 	0x08f8f800
1c008684:	08080808 	0x08080808
1c008688:	08080808 	0x08080808
1c00868c:	f8080808 	0xf8080808
1c008690:	000008fc 	0x000008fc
	...
1c0086a0:	e4cf0f00 	0xe4cf0f00
1c0086a4:	04040444 	csrxchg	$r4,$r2,0x101
1c0086a8:	0404fcfc 	csrxchg	$r28,$r7,0x13f
1c0086ac:	cf442404 	0xcf442404
1c0086b0:	0000008f 	0x0000008f
1c0086b4:	00000000 	0x00000000
1c0086b8:	20000000 	ll.w	$r0,$r0,0
1c0086bc:	04081010 	csrrd	$r16,0x204
1c0086c0:	00010306 	0x00010306
1c0086c4:	70301010 	vsubwev.h.bu	$vr16,$vr0,$vr4
1c0086c8:	00003f3f 	revb.d	$r31,$r25
1c0086cc:	00000000 	0x00000000
1c0086d0:	1e0e0301 	pcaddu18i	$r1,28696(0x7018)
1c0086d4:	00000018 	0x00000018
1c0086d8:	89bcef00 	0x89bcef00
1c0086dc:	00000000 	0x00000000
1c0086e0:	20100800 	ll.w	$r0,$r0,4104(0x1008)
1c0086e4:	0080c060 	bstrins.d	$r0,$r3,0x0,0x30
	...
1c008704:	06010000 	cacop	0x0,$r0,64(0x40)
1c008708:	0000f03c 	0x0000f03c
	...
1c008724:	c0800000 	0xc0800000
1c008728:	00000f78 	0x00000f78
	...
1c008740:	0c081000 	0x0c081000
1c008744:	00010306 	0x00010306
	...
1c00875c:	0091a7e7 	bstrins.d	$r7,$r31,0x11,0x29
1c008760:	40404000 	beqz	$r0,16448(0x4040) # 1c00c7a0 <_sidata+0x3964>
1c008764:	e0202020 	0xe0202020
1c008768:	181030e0 	pcaddi	$r0,33159(0x8187)
1c00876c:	00000018 	0x00000018
1c008770:	00008080 	0x00008080
1c008774:	fc000000 	0xfc000000
1c008778:	000008f8 	0x000008f8
1c00877c:	00000000 	0x00000000
1c008780:	10101000 	addu16i.d	$r0,$r0,1028(0x404)
1c008784:	ff901010 	0xff901010
1c008788:	101010ff 	addu16i.d	$r31,$r7,1028(0x404)
1c00878c:	00001018 	clo.w	$r24,$r0
1c008790:	060781c0 	cacop	0x0,$r14,480(0x1e0)
1c008794:	ff000000 	0xff000000
1c008798:	000000ff 	0x000000ff
1c00879c:	00000000 	0x00000000
1c0087a0:	20408000 	ll.w	$r0,$r0,16512(0x4080)
1c0087a4:	ff030e18 	0xff030e18
1c0087a8:	060301ff 	cacop	0x1f,$r15,192(0xc0)
1c0087ac:	2020405e 	ll.w	$r30,$r2,8256(0x2040)
1c0087b0:	10232120 	addu16i.d	$r0,$r9,2248(0x8c8)
1c0087b4:	ff101010 	0xff101010
1c0087b8:	0c0808ff 	0x0c0808ff
1c0087bc:	0000000c 	0x0000000c
1c0087c0:	00000001 	0x00000001
1c0087c4:	7f000000 	0x7f000000
1c0087c8:	0000003f 	0x0000003f
	...
1c0087d4:	7f000000 	0x7f000000
1c0087d8:	0000003f 	0x0000003f
1c0087dc:	e6000000 	0xe6000000
1c0087e0:	0000808a 	0x0000808a
1c0087e4:	00000000 	0x00000000
1c0087e8:	08f8fc00 	0x08f8fc00
	...
1c0087f4:	f8fc0000 	0xf8fc0000
1c0087f8:	00000008 	0x00000008
	...
1c008804:	02020202 	slti	$r2,$r16,128(0x80)
1c008808:	02ffff02 	addi.d	$r2,$r24,-1(0xfff)
1c00880c:	42438382 	beqz	$r28,672640(0xa4380) # 1c0acb8c <_sidata+0xa3d50>
1c008810:	82828282 	0x82828282
1c008814:	ffff8282 	0xffff8282
1c008818:	82828282 	0x82828282
1c00881c:	020383c2 	slti	$r2,$r30,224(0xe0)
1c008820:	00000000 	0x00000000
1c008824:	06060c0c 	cacop	0xc,$r0,387(0x183)
1c008828:	01ffff02 	0x01ffff02
1c00882c:	00000000 	0x00000000
1c008830:	1c030000 	pcaddu12i	$r0,6144(0x1800)
1c008834:	8000c070 	0x8000c070
1c008838:	0f3c70c0 	0x0f3c70c0
1c00883c:	00000003 	0x00000003
1c008840:	00000000 	0x00000000
1c008844:	30101000 	vldrepl.d	$vr0,$r0,32(0x20)
1c008848:	003f3f70 	0x003f3f70
1c00884c:	20204040 	ll.w	$r0,$r2,8256(0x2040)
1c008850:	08181020 	fmadd.s	$f0,$f1,$f4,$f16
1c008854:	0703060c 	0x0703060c
1c008858:	38180c0f 	stx.w	$r15,$r0,$r3
1c00885c:	20303030 	ll.w	$r16,$r1,12336(0x3030)
1c008860:	8fe50000 	0x8fe50000
1c008864:	00000091 	0x00000091
1c008868:	f0800000 	0xf0800000
1c00886c:	00000070 	0x00000070
1c008870:	18fcc000 	pcaddi	$r0,517632(0x7e600)
1c008874:	00000000 	0x00000000
1c008878:	70100800 	0x70100800
1c00887c:	0000c0e0 	0x0000c0e0
	...
1c008888:	05070e04 	0x05070e04
1c00888c:	84040404 	0x84040404
1c008890:	8487fff4 	0x8487fff4
1c008894:	84848484 	0x84848484
1c008898:	84848484 	0x84848484
1c00889c:	0484c584 	csrxchg	$r4,$r12,0x2131
1c0088a0:	00040606 	alsl.w	$r6,$r16,$r1,0x1
	...
1c0088ac:	0f3ce080 	0x0f3ce080
1c0088b0:	06010003 	cacop	0x3,$r0,64(0x40)
1c0088b4:	80e03018 	0x80e03018
1c0088b8:	1e3860c0 	pcaddu18i	$r0,115462(0x1c306)
1c0088bc:	00000307 	0x00000307
1c0088c0:	00000000 	0x00000000
1c0088c4:	20000000 	ll.w	$r0,$r0,0
1c0088c8:	03040810 	lu52i.d	$r16,$r0,258(0x102)
1c0088cc:	20204041 	ll.w	$r1,$r2,8256(0x2040)
1c0088d0:	08181020 	fmadd.s	$f0,$f1,$f4,$f16
1c0088d4:	0303060c 	lu52i.d	$r12,$r16,193(0xc1)
1c0088d8:	0c060703 	0x0c060703
1c0088dc:	3038181c 	0x3038181c
1c0088e0:	00103030 	add.w	$r16,$r1,$r12
1c0088e4:	95b1e500 	0x95b1e500
1c0088e8:	00000000 	0x00000000
1c0088ec:	08f80400 	0x08f80400
1c0088f0:	08080808 	0x08080808
1c0088f4:	08080808 	0x08080808
1c0088f8:	08080808 	0x08080808
1c0088fc:	08080808 	0x08080808
1c008900:	08f8fc08 	0x08f8fc08
	...
1c00890c:	21ff0000 	sc.w	$r0,$r0,-256(0xff00)
1c008910:	21212121 	sc.w	$r1,$r9,8480(0x2120)
1c008914:	21fdff21 	sc.w	$r1,$r25,-516(0xfdfc)
1c008918:	21212121 	sc.w	$r1,$r9,8480(0x2120)
1c00891c:	2121fdff 	sc.w	$r31,$r15,8700(0x21fc)
1c008920:	00233321 	div.du	$r1,$r25,$r12
	...
1c00892c:	043fff00 	csrxchg	$r0,$r24,0xfff
1c008930:	fc040404 	0xfc040404
1c008934:	040707fc 	csrxchg	$r28,$r31,0x1c1
1c008938:	04c4740c 	csrrd	$r12,0x311d
1c00893c:	64448707 	bge	$r24,$r7,17540(0x4484) # 1c00cdc0 <_sidata+0x3f84>
1c008940:	06062434 	cacop	0x14,$r1,393(0x189)
1c008944:	00000004 	0x00000004
1c008948:	18204000 	pcaddi	$r0,66048(0x10200)
1c00894c:	00000107 	0x00000107
1c008950:	3f000000 	0x3f000000
1c008954:	0818103f 	fmadd.s	$f31,$f1,$f4,$f16
1c008958:	03000004 	lu52i.d	$r4,$r0,0
1c00895c:	180c0607 	pcaddi	$r7,24624(0x6030)
1c008960:	30383818 	0x30383818
1c008964:	00001010 	clo.w	$r16,$r0
1c008968:	00899ce6 	bstrins.d	$r6,$r7,0x9,0x27
1c00896c:	80808000 	0x80808000
1c008970:	80808080 	0x80808080
1c008974:	80808080 	0x80808080
1c008978:	88b8fce0 	0x88b8fce0
1c00897c:	80808080 	0x80808080
1c008980:	80808080 	0x80808080
1c008984:	c0e0c080 	0xc0e0c080
1c008988:	00000080 	0x00000080
1c00898c:	00000000 	0x00000000
1c008990:	c0800000 	0xc0800000
1c008994:	171cf8e0 	lu32i.d	$r0,-464953(0x8e7c7)
1c008998:	10101013 	addu16i.d	$r19,$r0,1028(0x404)
1c00899c:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c0089a0:	10f81010 	addu16i.d	$r16,$r0,15876(0x3e04)
	...
1c0089ac:	04081000 	csrrd	$r0,0x204
1c0089b0:	00010306 	0x00010306
1c0089b4:	4242ffff 	beqz	$r31,-113924(0x7e42fc) # 1bfeccb0 <_start-0x13350>
1c0089b8:	42424242 	beqz	$r18,672320(0xa4240) # 1c0acbf8 <_sidata+0xa3dbc>
1c0089bc:	42424242 	beqz	$r18,672320(0xa4240) # 1c0acbfc <_sidata+0xa3dc0>
1c0089c0:	00ff4242 	bstrpick.d	$r2,$r18,0x3f,0x10
	...
1c0089d4:	00003f7f 	revb.d	$r31,$r27
1c0089d8:	00000000 	0x00000000
1c0089dc:	10101000 	addu16i.d	$r0,$r0,1028(0x404)
1c0089e0:	003f7030 	0x003f7030
1c0089e4:	00000000 	0x00000000
1c0089e8:	e9000000 	0xe9000000
1c0089ec:	00009099 	0x00009099
1c0089f0:	10f00800 	addu16i.d	$r0,$r0,15362(0x3c02)
1c0089f4:	f0101010 	0xf0101010
1c0089f8:	00001078 	clo.w	$r24,$r3
1c0089fc:	1010f0f8 	addu16i.d	$r24,$r7,1084(0x43c)
1c008a00:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008a04:	f8101010 	0xf8101010
1c008a08:	00000010 	0x00000010
1c008a0c:	00000000 	0x00000000
1c008a10:	00ff0000 	bstrpick.d	$r0,$r0,0x3f,0x0
1c008a14:	c33e0000 	0xc33e0000
1c008a18:	00000000 	0x00000000
1c008a1c:	8484ffff 	0x8484ffff
1c008a20:	84848484 	0x84848484
1c008a24:	ff848484 	0xff848484
	...
1c008a30:	00ff0000 	bstrpick.d	$r0,$r0,0x3f,0x0
1c008a34:	c0c04000 	0xc0c04000
1c008a38:	00007eff 	0x00007eff
1c008a3c:	0000ffff 	0x0000ffff
1c008a40:	c0701e01 	0xc0701e01
1c008a44:	0d1030a0 	vbitsel.v	$vr0,$vr5,$vr12,$vr0
1c008a48:	0000040e 	0x0000040e
1c008a4c:	00000000 	0x00000000
1c008a50:	007f0000 	bstrins.w	$r0,$r0,0x1f,0x0
1c008a54:	00010000 	asrtle.d	$r0,$r0
1c008a58:	00000000 	0x00000000
1c008a5c:	08183f1f 	fmadd.s	$f31,$f24,$f15,$f16
1c008a60:	01020204 	0x01020204
1c008a64:	1c0e0703 	pcaddu12i	$r3,28728(0x7038)
1c008a68:	00183818 	sra.w	$r24,$r0,$r14
1c008a6c:	85e50000 	0x85e50000
1c008a70:	000000ac 	0x000000ac
1c008a74:	00000000 	0x00000000
1c008a78:	80000000 	0x80000000
1c008a7c:	001078e0 	add.w	$r0,$r7,$r30
1c008a80:	1c000000 	pcaddu12i	$r0,0
1c008a84:	000080e0 	0x000080e0
	...
1c008a94:	c0800000 	0xc0800000
1c008a98:	070e3860 	0x070e3860
1c008a9c:	00000001 	0x00000001
1c008aa0:	0080c0e0 	bstrins.d	$r0,$r7,0x0,0x30
1c008aa4:	1c0e0300 	pcaddu12i	$r0,28696(0x7018)
1c008aa8:	c0c0e070 	0xc0c0e070
1c008aac:	00000080 	0x00000080
1c008ab0:	04000000 	csrrd	$r0,0x0
1c008ab4:	00010302 	0x00010302
1c008ab8:	c0000000 	0xc0000000
1c008abc:	071c3860 	0x071c3860
1c008ac0:	00000103 	0x00000103
1c008ac4:	0080c020 	bstrins.d	$r0,$r1,0x0,0x30
1c008ac8:	03010000 	lu52i.d	$r0,$r0,64(0x40)
1c008acc:	00010103 	0x00010103
1c008ad0:	00000000 	0x00000000
1c008ad4:	38080000 	ldx.w	$r0,$r0,$r0
1c008ad8:	191b1e3c 	pcaddi	$r28,-468751(0x8d8f1)
1c008adc:	08081818 	0x08081818
1c008ae0:	08080808 	0x08080808
1c008ae4:	0f090808 	0x0f090808
1c008ae8:	00307c1e 	0x00307c1e
1c008aec:	00000000 	0x00000000
1c008af0:	b88fe500 	0xb88fe500
1c008af4:	00000000 	0x00000000
1c008af8:	10101000 	addu16i.d	$r0,$r0,1028(0x404)
1c008afc:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008b00:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008b04:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008b08:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008b0c:	00f0f810 	bstrpick.d	$r16,$r0,0x30,0x3e
1c008b10:	00000000 	0x00000000
1c008b14:	04000000 	csrrd	$r0,0x0
1c008b18:	84c40404 	0x84c40404
1c008b1c:	84848484 	0x84848484
1c008b20:	84848484 	0x84848484
1c008b24:	0684c484 	0x0684c484
1c008b28:	00000406 	0x00000406
1c008b2c:	00ffff00 	bstrpick.d	$r0,$r24,0x3f,0x3f
	...
1c008b38:	ffff0000 	0xffff0000
1c008b3c:	40404040 	beqz	$r2,16448(0x4040) # 1c00cb7c <_sidata+0x3d40>
1c008b40:	40404040 	beqz	$r2,16448(0x4040) # 1c00cb80 <_sidata+0x3d44>
1c008b44:	0000ff40 	0x0000ff40
1c008b48:	00000000 	0x00000000
1c008b4c:	00ffff00 	bstrpick.d	$r0,$r24,0x3f,0x3f
	...
1c008b58:	01030000 	fsub.d	$f0,$f0,$f0
	...
1c008b64:	00010100 	asrtle.d	$r8,$r0
1c008b68:	30101010 	vldrepl.d	$vr16,$r0,32(0x20)
1c008b6c:	000f3f70 	bytepick.d	$r16,$r27,$r15,0x6
1c008b70:	00000000 	0x00000000
1c008b74:	00be98e6 	bstrins.d	$r6,$r7,0x3e,0x26
1c008b78:	00000000 	0x00000000
1c008b7c:	f0080000 	0xf0080000
1c008b80:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008b84:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008b88:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008b8c:	f0f81010 	0xf0f81010
	...
1c008b9c:	ff000000 	0xff000000
1c008ba0:	42424242 	beqz	$r18,672320(0xa4240) # 1c0acde0 <_sidata+0xa3fa4>
1c008ba4:	42424242 	beqz	$r18,672320(0xa4240) # 1c0acde4 <_sidata+0xa3fa8>
1c008ba8:	42424242 	beqz	$r18,672320(0xa4240) # 1c0acde8 <_sidata+0xa3fac>
1c008bac:	ffff4242 	0xffff4242
	...
1c008bb8:	08000000 	0x08000000
1c008bbc:	c0e17030 	0xc0e17030
1c008bc0:	fe000000 	0xfe000000
1c008bc4:	000000fe 	0x000000fe
1c008bc8:	00fefe00 	bstrpick.d	$r0,$r16,0x3e,0x3f
1c008bcc:	60c08000 	blt	$r0,$r0,49280(0xc080) # 1c014c4c <_sidata+0xbe10>
1c008bd0:	00081c38 	bytepick.w	$r24,$r1,$r7,0x0
1c008bd4:	00000000 	0x00000000
1c008bd8:	10101000 	addu16i.d	$r0,$r0,1028(0x404)
1c008bdc:	13111010 	addu16i.d	$r16,$r0,-15292(0xc444)
1c008be0:	1f101010 	pcaddu18i	$r16,-491392(0x88080)
1c008be4:	1010101f 	addu16i.d	$r31,$r0,1028(0x404)
1c008be8:	141f1f10 	lu12i.w	$r16,63736(0xf8f8)
1c008bec:	10101112 	addu16i.d	$r18,$r8,1028(0x404)
1c008bf0:	10181810 	addu16i.d	$r16,$r0,1542(0x606)
1c008bf4:	e7000000 	0xe7000000
1c008bf8:	0000baa4 	0x0000baa4
1c008bfc:	00000000 	0x00000000
1c008c00:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008c04:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008c08:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008c0c:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008c10:	30382020 	0x30382020
1c008c14:	00000020 	0x00000020
1c008c18:	00000000 	0x00000000
1c008c1c:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008c20:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008c24:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008c28:	20e0e020 	ll.w	$r0,$r1,-7968(0xe0e0)
1c008c2c:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008c30:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008c34:	20303020 	ll.w	$r0,$r1,12336(0x3030)
1c008c38:	00000000 	0x00000000
1c008c3c:	80000000 	0x80000000
1c008c40:	1e3c70c0 	pcaddu18i	$r0,123782(0x1e386)
1c008c44:	00000406 	0x00000406
1c008c48:	00ffff00 	bstrpick.d	$r0,$r24,0x3f,0x3f
1c008c4c:	04020000 	csrrd	$r0,0x80
1c008c50:	e0701808 	0xe0701808
1c008c54:	000080c0 	0x000080c0
1c008c58:	00000000 	0x00000000
1c008c5c:	01030408 	fsub.d	$f8,$f0,$f1
1c008c60:	08000000 	0x08000000
1c008c64:	30101008 	vldrepl.d	$vr8,$r0,32(0x20)
1c008c68:	001f3f70 	mulw.d.w	$r16,$r27,$r15
	...
1c008c74:	00030701 	0x00030701
1c008c78:	aee50000 	0xaee50000
1c008c7c:	0000009e 	0x0000009e
1c008c80:	00800000 	bstrins.d	$r0,$r0,0x0,0x0
1c008c84:	00000000 	0x00000000
1c008c88:	04000000 	csrrd	$r0,0x0
1c008c8c:	0070f818 	bstrpick.w	$r24,$r0,0x10,0x1e
	...
1c008c98:	00000080 	0x00000080
1c008c9c:	00000000 	0x00000000
1c008ca0:	810f1c18 	0x810f1c18
1c008ca4:	09010101 	0x09010101
1c008ca8:	01713919 	0x01713919
1c008cac:	fdff0101 	0xfdff0101
1c008cb0:	01010105 	fadd.d	$f5,$f8,$f0
1c008cb4:	07090101 	0x07090101
1c008cb8:	00020307 	0x00020307
1c008cbc:	10000000 	addu16i.d	$r0,$r0,0
1c008cc0:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008cc4:	1e171311 	pcaddu18i	$r17,47256(0xb898)
1c008cc8:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008ccc:	93bffcd0 	0x93bffcd0
1c008cd0:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008cd4:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c008cd8:	00101818 	add.w	$r24,$r0,$r6
1c008cdc:	40000000 	beqz	$r0,0 # 1c008cdc <tfont32+0x998>
1c008ce0:	20404040 	ll.w	$r0,$r2,16448(0x4040)
1c008ce4:	10102020 	addu16i.d	$r0,$r1,1032(0x408)
1c008ce8:	070e0c18 	0x070e0c18
1c008cec:	01000003 	0x01000003
1c008cf0:	06020301 	cacop	0x1,$r24,128(0x80)
1c008cf4:	383c1c0e 	fstx.d	$f14,$r0,$r7
1c008cf8:	00000030 	0x00000030
1c008cfc:	8caae900 	0x8caae900
1c008d00:	10100000 	addu16i.d	$r0,$r0,1024(0x400)
1c008d04:	10109090 	addu16i.d	$r16,$r4,1060(0x424)
1c008d08:	10f81010 	addu16i.d	$r16,$r0,15876(0x3e04)
1c008d0c:	00000000 	0x00000000
1c008d10:	f0800000 	0xf0800000
1c008d14:	80e8183c 	0x80e8183c
	...
1c008d20:	80000000 	0x80000000
1c008d24:	00001fff 	ctz.w	$r31,$r31
1c008d28:	003fff00 	0x003fff00
1c008d2c:	50204080 	b	33562688(0x2002040) # 1e00ad6c <_sidata+0x2001f30>
1c008d30:	4043474c 	beqz	$r26,3162948(0x304344) # 1c30d074 <_sidata+0x304238>
1c008d34:	43404040 	beqz	$r2,213056(0x34040) # 1c03cd74 <_sidata+0x33f38>
1c008d38:	70784c66 	0x70784c66
1c008d3c:	00202070 	div.w	$r16,$r3,$r8
1c008d40:	c1c14000 	0xc1c14000
1c008d44:	21214143 	sc.w	$r3,$r10,8512(0x2140)
1c008d48:	ff810121 	0xff810121
1c008d4c:	1c00000f 	pcaddu12i	$r15,0
1c008d50:	0c02c0f0 	0x0c02c0f0
1c008d54:	0000e0f8 	0x0000e0f8
1c008d58:	061f7cc0 	cacop	0x0,$r6,2015(0x7df)
	...
1c008d64:	18080800 	pcaddi	$r0,16448(0x4040)
1c008d68:	070f1838 	0x070f1838
1c008d6c:	10101000 	addu16i.d	$r0,$r0,1028(0x404)
1c008d70:	10101113 	addu16i.d	$r19,$r8,1028(0x404)
1c008d74:	1e101011 	pcaddu18i	$r17,32896(0x8080)
1c008d78:	18101013 	pcaddi	$r19,32896(0x8080)
1c008d7c:	00001018 	clo.w	$r24,$r0
1c008d80:	e6aa9ce6 	0xe6aa9ce6
1c008d84:	b5e680a3 	0xb5e680a3
1c008d88:	b088e58b 	0xb088e58b
1c008d8c:	e6a0bce4 	0xe6a0bce4
1c008d90:	99e59f84 	0x99e59f84
1c008d94:	000000a8 	0x000000a8
1c008d98:	6e617567 	bgeu	$r11,$r7,-106124(0x26174) # 1bfeef0c <_start-0x110f4>
1c008d9c:	6f617a67 	bgeu	$r19,$r7,-40584(0x36178) # 1bffef14 <_start-0x10ec>
1c008da0:	6433253a 	bge	$r9,$r26,13092(0x3324) # 1c00c0c4 <_sidata+0x3288>
1c008da4:	20784c20 	ll.w	$r0,$r1,30796(0x784c)
1c008da8:	00000000 	0x00000000
1c008dac:	6a75696a 	bltu	$r11,$r10,-101016(0x27568) # 1bff0314 <_start-0xfcec>
1c008db0:	253a6e69 	stptr.w	$r9,$r19,14956(0x3a6c)
1c008db4:	6d206434 	bgeu	$r1,$r20,73828(0x12064) # 1c01ae18 <_sidata+0x11fdc>
1c008db8:	004c2f67 	0x004c2f67
1c008dbc:	e5a9b8e6 	0xe5a9b8e6
1c008dc0:	253aa6ba 	stptr.w	$r26,$r21,15012(0x3aa4)
1c008dc4:	84e26432 	0x84e26432
1c008dc8:	00000083 	0x00000083
1c008dcc:	e5bfb9e6 	0xe5bfb9e6
1c008dd0:	253aa6ba 	stptr.w	$r26,$r21,15012(0x3aa4)
1c008dd4:	48526432 	bceqz	$fcc1,-3648924(0x485264) # 1bc8e038 <_start-0x371fc8>
1c008dd8:	00000000 	0x00000000
1c008ddc:	e8b2b7e5 	0xe8b2b7e5
1c008de0:	8ee69ebf 	0x8ee69ebf
1c008de4:	b088e5a5 	0xb088e5a5
1c008de8:	49464957 	bcnez	$fcc2,-2275768(0x5d4648) # 1bddd430 <_start-0x222bd0>
1c008dec:	00000000 	0x00000000
1c008df0:	00007325 	0x00007325
1c008df4:	63656863 	blt	$r3,$r3,-39576(0x36568) # 1bfff35c <_start-0xca4>
1c008df8:	4155206b 	beqz	$r3,2970912(0x2d5520) # 1c2de318 <_sidata+0x2d54dc>
1c008dfc:	5f305452 	bne	$r2,$r18,-53164(0x33054) # 1bffbe50 <_start-0x41b0>
1c008e00:	425f5852 	beqz	$r2,-3514536(0x4a5f58) # 1bcaed58 <_start-0x3512a8>
1c008e04:	253a4655 	stptr.w	$r21,$r18,14916(0x3a44)
1c008e08:	000a0d73 	0x000a0d73
1c008e0c:	3a646d63 	0x3a646d63
1c008e10:	0a0d7325 	0x0a0d7325
1c008e14:	00000000 	0x00000000
1c008e18:	0a0d7325 	0x0a0d7325
1c008e1c:	00000000 	0x00000000
1c008e20:	3a6b6361 	0x3a6b6361
1c008e24:	0a0d7325 	0x0a0d7325
1c008e28:	00000000 	0x00000000
1c008e2c:	3a736572 	0x3a736572
1c008e30:	0a0d6425 	0x0a0d6425
1c008e34:	00000000 	0x00000000
1c008e38:	00007325 	0x00007325

Disassembly of section .data:

80001000 <_sdata>:
_sdata():
80001000:	00000000 	0x00000000
80001004:	1c006e29 	pcaddu12i	$r9,881(0x371)
80001008:	800001c0 	0x800001c0
8000100c:	8000102c 	0x8000102c
80001010:	80000010 	0x80000010
80001014:	80000090 	0x80000090
80001018:	80000014 	0x80000014
8000101c:	80000028 	0x80000028
80001020:	1c006e20 	pcaddu12i	$r0,881(0x371)
80001024:	8000005c 	0x8000005c
80001028:	800001c4 	0x800001c4

8000102c <g_SystemFreq>:
8000102c:	007a1200 	bstrins.w	$r0,$r16,0x1a,0x4

80001030 <data>:
80001030:	0000aa55 	0x0000aa55
80001034:	bb000000 	0xbb000000

Disassembly of section .bss:

80000000 <_sbss>:
	...

80000002 <temperature>:
	...

80000004 <humidity>:
	...

80000006 <guangzhao>:
	...

80000008 <value>:
	...

8000000a <jiujin>:
	...

8000000c <BUF>:
	...

8000000e <result1750>:
	...

80000010 <wifi_connected>:
_sbss():
80000010:	00000000 	0x00000000

80000014 <show>:
	...

80000028 <str>:
	...

8000005c <st>:
	...

80000090 <Circular_queue>:
	...

800001c0 <Read_length>:
800001c0:	00000000 	0x00000000

800001c4 <Read_Buffer>:
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	0x3a434347
   4:	4e472820 	jirl	$r0,$r1,-112856(0x24728)
   8:	38202955 	ldx.bu	$r21,$r10,$r10
   c:	302e332e 	vldrepl.w	$vr14,$r25,-464(0xe30)
	...