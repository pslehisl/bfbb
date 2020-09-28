.include "macros.inc"

.section .text  # 0x8001F8BC - 0x8001FDBC

.global xFFXPoolInit__FUi
xFFXPoolInit__FUi:
/* 8001F8BC 0001C6BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001F8C0 0001C6C0  7C 08 02 A6 */	mflr r0
/* 8001F8C4 0001C6C4  54 64 20 36 */	slwi r4, r3, 4
/* 8001F8C8 0001C6C8  38 A0 00 00 */	li r5, 0
/* 8001F8CC 0001C6CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001F8D0 0001C6D0  90 6D 88 E8 */	stw r3, lbl_803CB1E8-_SDA_BASE_(r13)
/* 8001F8D4 0001C6D4  80 6D 89 E0 */	lwz r3, gActiveHeap-_SDA_BASE_(r13)
/* 8001F8D8 0001C6D8  48 01 40 69 */	bl xMemAlloc__FUiUii
/* 8001F8DC 0001C6DC  90 6D 88 EC */	stw r3, lbl_803CB1EC-_SDA_BASE_(r13)
/* 8001F8E0 0001C6E0  38 00 00 00 */	li r0, 0
/* 8001F8E4 0001C6E4  38 C0 00 01 */	li r6, 1
/* 8001F8E8 0001C6E8  38 80 00 10 */	li r4, 0x10
/* 8001F8EC 0001C6EC  80 6D 88 EC */	lwz r3, lbl_803CB1EC-_SDA_BASE_(r13)
/* 8001F8F0 0001C6F0  90 03 00 0C */	stw r0, 0xc(r3)
/* 8001F8F4 0001C6F4  48 00 00 24 */	b lbl_8001F918
lbl_8001F8F8:
/* 8001F8F8 0001C6F8  38 06 FF FF */	addi r0, r6, -1
/* 8001F8FC 0001C6FC  80 AD 88 EC */	lwz r5, lbl_803CB1EC-_SDA_BASE_(r13)
/* 8001F900 0001C700  54 03 20 36 */	slwi r3, r0, 4
/* 8001F904 0001C704  38 C6 00 01 */	addi r6, r6, 1
/* 8001F908 0001C708  38 04 00 0C */	addi r0, r4, 0xc
/* 8001F90C 0001C70C  38 84 00 10 */	addi r4, r4, 0x10
/* 8001F910 0001C710  7C 65 1A 14 */	add r3, r5, r3
/* 8001F914 0001C714  7C 65 01 2E */	stwx r3, r5, r0
lbl_8001F918:
/* 8001F918 0001C718  80 6D 88 E8 */	lwz r3, lbl_803CB1E8-_SDA_BASE_(r13)
/* 8001F91C 0001C71C  7C 06 18 40 */	cmplw r6, r3
/* 8001F920 0001C720  41 80 FF D8 */	blt lbl_8001F8F8
/* 8001F924 0001C724  38 03 FF FF */	addi r0, r3, -1
/* 8001F928 0001C728  80 6D 88 EC */	lwz r3, lbl_803CB1EC-_SDA_BASE_(r13)
/* 8001F92C 0001C72C  54 00 20 36 */	slwi r0, r0, 4
/* 8001F930 0001C730  7C 03 02 14 */	add r0, r3, r0
/* 8001F934 0001C734  90 0D 88 F0 */	stw r0, lbl_803CB1F0-_SDA_BASE_(r13)
/* 8001F938 0001C738  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001F93C 0001C73C  7C 08 03 A6 */	mtlr r0
/* 8001F940 0001C740  38 21 00 10 */	addi r1, r1, 0x10
/* 8001F944 0001C744  4E 80 00 20 */	blr 

.global xFFXAlloc__Fv
xFFXAlloc__Fv:
/* 8001F948 0001C748  80 6D 88 F0 */	lwz r3, lbl_803CB1F0-_SDA_BASE_(r13)
/* 8001F94C 0001C74C  28 03 00 00 */	cmplwi r3, 0
/* 8001F950 0001C750  40 82 00 0C */	bne lbl_8001F95C
/* 8001F954 0001C754  38 60 00 00 */	li r3, 0
/* 8001F958 0001C758  4E 80 00 20 */	blr 
lbl_8001F95C:
/* 8001F95C 0001C75C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8001F960 0001C760  90 0D 88 F0 */	stw r0, lbl_803CB1F0-_SDA_BASE_(r13)
/* 8001F964 0001C764  4E 80 00 20 */	blr 

.global xFFXFree__FP4xFFX
xFFXFree__FP4xFFX:
/* 8001F968 0001C768  80 0D 88 F0 */	lwz r0, lbl_803CB1F0-_SDA_BASE_(r13)
/* 8001F96C 0001C76C  90 03 00 0C */	stw r0, 0xc(r3)
/* 8001F970 0001C770  90 6D 88 F0 */	stw r3, lbl_803CB1F0-_SDA_BASE_(r13)
/* 8001F974 0001C774  4E 80 00 20 */	blr 

.global xFFXTurnOn__FP4xFFX
xFFXTurnOn__FP4xFFX:
/* 8001F978 0001C778  80 03 00 00 */	lwz r0, 0(r3)
/* 8001F97C 0001C77C  60 00 00 01 */	ori r0, r0, 1
/* 8001F980 0001C780  90 03 00 00 */	stw r0, 0(r3)
/* 8001F984 0001C784  4E 80 00 20 */	blr 

.global xFFXTurnOff__FP4xFFX
xFFXTurnOff__FP4xFFX:
/* 8001F988 0001C788  80 03 00 00 */	lwz r0, 0(r3)
/* 8001F98C 0001C78C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8001F990 0001C790  90 03 00 00 */	stw r0, 0(r3)
/* 8001F994 0001C794  4E 80 00 20 */	blr 

.global xFFXAddEffect__FP4xEntP4xFFX
xFFXAddEffect__FP4xEntP4xFFX:
/* 8001F998 0001C798  80 03 00 B4 */	lwz r0, 0xb4(r3)
/* 8001F99C 0001C79C  90 04 00 0C */	stw r0, 0xc(r4)
/* 8001F9A0 0001C7A0  80 04 00 00 */	lwz r0, 0(r4)
/* 8001F9A4 0001C7A4  60 00 00 01 */	ori r0, r0, 1
/* 8001F9A8 0001C7A8  90 04 00 00 */	stw r0, 0(r4)
/* 8001F9AC 0001C7AC  90 83 00 B4 */	stw r4, 0xb4(r3)
/* 8001F9B0 0001C7B0  88 83 00 1F */	lbz r4, 0x1f(r3)
/* 8001F9B4 0001C7B4  38 04 00 01 */	addi r0, r4, 1
/* 8001F9B8 0001C7B8  98 03 00 1F */	stb r0, 0x1f(r3)
/* 8001F9BC 0001C7BC  7C 83 23 78 */	mr r3, r4
/* 8001F9C0 0001C7C0  4E 80 00 20 */	blr 

.global xFFXAddEffect__FP4xEntPFP4xEntP6xScenefPv_vPv
xFFXAddEffect__FP4xEntPFP4xEntP6xScenefPv_vPv:
/* 8001F9C4 0001C7C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8001F9C8 0001C7C8  7C 08 02 A6 */	mflr r0
/* 8001F9CC 0001C7CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8001F9D0 0001C7D0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8001F9D4 0001C7D4  7C BF 2B 78 */	mr r31, r5
/* 8001F9D8 0001C7D8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8001F9DC 0001C7DC  7C 9E 23 78 */	mr r30, r4
/* 8001F9E0 0001C7E0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8001F9E4 0001C7E4  7C 7D 1B 78 */	mr r29, r3
/* 8001F9E8 0001C7E8  4B FF FF 61 */	bl xFFXAlloc__Fv
/* 8001F9EC 0001C7EC  7C 64 1B 79 */	or. r4, r3, r3
/* 8001F9F0 0001C7F0  40 82 00 0C */	bne lbl_8001F9FC
/* 8001F9F4 0001C7F4  38 60 FF FF */	li r3, -1
/* 8001F9F8 0001C7F8  48 00 00 14 */	b lbl_8001FA0C
lbl_8001F9FC:
/* 8001F9FC 0001C7FC  93 C4 00 04 */	stw r30, 4(r4)
/* 8001FA00 0001C800  7F A3 EB 78 */	mr r3, r29
/* 8001FA04 0001C804  93 E4 00 08 */	stw r31, 8(r4)
/* 8001FA08 0001C808  4B FF FF 91 */	bl xFFXAddEffect__FP4xEntP4xFFX
lbl_8001FA0C:
/* 8001FA0C 0001C80C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8001FA10 0001C810  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8001FA14 0001C814  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8001FA18 0001C818  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8001FA1C 0001C81C  7C 08 03 A6 */	mtlr r0
/* 8001FA20 0001C820  38 21 00 20 */	addi r1, r1, 0x20
/* 8001FA24 0001C824  4E 80 00 20 */	blr 

.global xFFXRemoveEffectByFData__FP4xEntPv
xFFXRemoveEffectByFData__FP4xEntPv:
/* 8001FA28 0001C828  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001FA2C 0001C82C  7C 08 02 A6 */	mflr r0
/* 8001FA30 0001C830  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001FA34 0001C834  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8001FA38 0001C838  3B E3 00 B4 */	addi r31, r3, 0xb4
/* 8001FA3C 0001C83C  93 C1 00 08 */	stw r30, 8(r1)
/* 8001FA40 0001C840  48 00 00 38 */	b lbl_8001FA78
lbl_8001FA44:
/* 8001FA44 0001C844  80 05 00 08 */	lwz r0, 8(r5)
/* 8001FA48 0001C848  7C 04 00 40 */	cmplw r4, r0
/* 8001FA4C 0001C84C  40 82 00 28 */	bne lbl_8001FA74
/* 8001FA50 0001C850  88 83 00 1F */	lbz r4, 0x1f(r3)
/* 8001FA54 0001C854  83 C5 00 0C */	lwz r30, 0xc(r5)
/* 8001FA58 0001C858  38 04 FF FF */	addi r0, r4, -1
/* 8001FA5C 0001C85C  98 03 00 1F */	stb r0, 0x1f(r3)
/* 8001FA60 0001C860  80 7F 00 00 */	lwz r3, 0(r31)
/* 8001FA64 0001C864  4B FF FF 05 */	bl xFFXFree__FP4xFFX
/* 8001FA68 0001C868  93 DF 00 00 */	stw r30, 0(r31)
/* 8001FA6C 0001C86C  38 60 00 01 */	li r3, 1
/* 8001FA70 0001C870  48 00 00 18 */	b lbl_8001FA88
lbl_8001FA74:
/* 8001FA74 0001C874  3B E5 00 0C */	addi r31, r5, 0xc
lbl_8001FA78:
/* 8001FA78 0001C878  80 BF 00 00 */	lwz r5, 0(r31)
/* 8001FA7C 0001C87C  28 05 00 00 */	cmplwi r5, 0
/* 8001FA80 0001C880  40 82 FF C4 */	bne lbl_8001FA44
/* 8001FA84 0001C884  38 60 00 00 */	li r3, 0
lbl_8001FA88:
/* 8001FA88 0001C888  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001FA8C 0001C88C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8001FA90 0001C890  83 C1 00 08 */	lwz r30, 8(r1)
/* 8001FA94 0001C894  7C 08 03 A6 */	mtlr r0
/* 8001FA98 0001C898  38 21 00 10 */	addi r1, r1, 0x10
/* 8001FA9C 0001C89C  4E 80 00 20 */	blr 

xFFXApplyOne__FP4xFFXP4xEntP6xScenef:
/* 8001FAA0 0001C8A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8001FAA4 0001C8A4  7C 08 02 A6 */	mflr r0
/* 8001FAA8 0001C8A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8001FAAC 0001C8AC  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 8001FAB0 0001C8B0  FF E0 08 90 */	fmr f31, f1
/* 8001FAB4 0001C8B4  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8001FAB8 0001C8B8  7C BF 2B 78 */	mr r31, r5
/* 8001FABC 0001C8BC  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8001FAC0 0001C8C0  7C 9E 23 78 */	mr r30, r4
/* 8001FAC4 0001C8C4  93 A1 00 0C */	stw r29, 0xc(r1)
/* 8001FAC8 0001C8C8  7C 7D 1B 78 */	mr r29, r3
/* 8001FACC 0001C8CC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8001FAD0 0001C8D0  28 03 00 00 */	cmplwi r3, 0
/* 8001FAD4 0001C8D4  41 82 00 08 */	beq lbl_8001FADC
/* 8001FAD8 0001C8D8  4B FF FF C9 */	bl xFFXApplyOne__FP4xFFXP4xEntP6xScenef
lbl_8001FADC:
/* 8001FADC 0001C8DC  80 1D 00 00 */	lwz r0, 0(r29)
/* 8001FAE0 0001C8E0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8001FAE4 0001C8E4  41 82 00 20 */	beq lbl_8001FB04
/* 8001FAE8 0001C8E8  81 9D 00 04 */	lwz r12, 4(r29)
/* 8001FAEC 0001C8EC  FC 20 F8 90 */	fmr f1, f31
/* 8001FAF0 0001C8F0  7F C3 F3 78 */	mr r3, r30
/* 8001FAF4 0001C8F4  7F E4 FB 78 */	mr r4, r31
/* 8001FAF8 0001C8F8  80 BD 00 08 */	lwz r5, 8(r29)
/* 8001FAFC 0001C8FC  7D 89 03 A6 */	mtctr r12
/* 8001FB00 0001C900  4E 80 04 21 */	bctrl 
lbl_8001FB04:
/* 8001FB04 0001C904  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8001FB08 0001C908  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 8001FB0C 0001C90C  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8001FB10 0001C910  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8001FB14 0001C914  83 A1 00 0C */	lwz r29, 0xc(r1)
/* 8001FB18 0001C918  7C 08 03 A6 */	mtlr r0
/* 8001FB1C 0001C91C  38 21 00 20 */	addi r1, r1, 0x20
/* 8001FB20 0001C920  4E 80 00 20 */	blr 

.global xFFXApply__FP4xEntP6xScenef
xFFXApply__FP4xEntP6xScenef:
/* 8001FB24 0001C924  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001FB28 0001C928  7C 08 02 A6 */	mflr r0
/* 8001FB2C 0001C92C  7C 66 1B 78 */	mr r6, r3
/* 8001FB30 0001C930  7C 85 23 78 */	mr r5, r4
/* 8001FB34 0001C934  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001FB38 0001C938  80 63 00 B4 */	lwz r3, 0xb4(r3)
/* 8001FB3C 0001C93C  28 03 00 00 */	cmplwi r3, 0
/* 8001FB40 0001C940  41 82 00 0C */	beq lbl_8001FB4C
/* 8001FB44 0001C944  7C C4 33 78 */	mr r4, r6
/* 8001FB48 0001C948  4B FF FF 59 */	bl xFFXApplyOne__FP4xFFXP4xEntP6xScenef
lbl_8001FB4C:
/* 8001FB4C 0001C94C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001FB50 0001C950  7C 08 03 A6 */	mtlr r0
/* 8001FB54 0001C954  38 21 00 10 */	addi r1, r1, 0x10
/* 8001FB58 0001C958  4E 80 00 20 */	blr 

.global lbl_8001FB5C
lbl_8001FB5C:
/* 8001FB5C 0001C95C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8001FB60 0001C960  7C 08 02 A6 */	mflr r0
/* 8001FB64 0001C964  90 01 00 44 */	stw r0, 0x44(r1)
/* 8001FB68 0001C968  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8001FB6C 0001C96C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 8001FB70 0001C970  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 8001FB74 0001C974  F3 C1 00 28 */	psq_st f30, 40(r1), 0, qr0
/* 8001FB78 0001C978  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8001FB7C 0001C97C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8001FB80 0001C980  C0 45 00 14 */	lfs f2, 0x14(r5)
/* 8001FB84 0001C984  7C BF 2B 78 */	mr r31, r5
/* 8001FB88 0001C988  C0 05 00 18 */	lfs f0, 0x18(r5)
/* 8001FB8C 0001C98C  7C 7E 1B 78 */	mr r30, r3
/* 8001FB90 0001C990  EF C2 08 2A */	fadds f30, f2, f1
/* 8001FB94 0001C994  EC 20 07 B2 */	fmuls f1, f0, f30
/* 8001FB98 0001C998  4B FE EC 19 */	bl xexp__Ff
/* 8001FB9C 0001C99C  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 8001FBA0 0001C9A0  FF E0 08 90 */	fmr f31, f1
/* 8001FBA4 0001C9A4  EC 20 07 B2 */	fmuls f1, f0, f30
/* 8001FBA8 0001C9A8  48 0A 52 A5 */	bl isin__Ff
/* 8001FBAC 0001C9AC  C0 42 82 C8 */	lfs f2, lbl_803CCC48-_SDA2_BASE_(r2)
/* 8001FBB0 0001C9B0  EF E1 07 F2 */	fmuls f31, f1, f31
/* 8001FBB4 0001C9B4  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 8001FBB8 0001C9B8  FC 02 08 00 */	fcmpu cr0, f2, f1
/* 8001FBBC 0001C9BC  40 82 00 0C */	bne lbl_8001FBC8
/* 8001FBC0 0001C9C0  D0 5F 00 1C */	stfs f2, 0x1c(r31)
/* 8001FBC4 0001C9C4  48 00 00 3C */	b lbl_8001FC00
lbl_8001FBC8:
/* 8001FBC8 0001C9C8  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8001FBCC 0001C9CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8001FBD0 0001C9D0  4C 41 13 82 */	cror 2, 1, 2
/* 8001FBD4 0001C9D4  40 82 00 2C */	bne lbl_8001FC00
/* 8001FBD8 0001C9D8  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8001FBDC 0001C9DC  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8001FBE0 0001C9E0  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 8001FBE4 0001C9E4  40 80 00 1C */	bge lbl_8001FC00
/* 8001FBE8 0001C9E8  7F C3 F3 78 */	mr r3, r30
/* 8001FBEC 0001C9EC  7F E4 FB 78 */	mr r4, r31
/* 8001FBF0 0001C9F0  4B FF FE 39 */	bl xFFXRemoveEffectByFData__FP4xEntPv
/* 8001FBF4 0001C9F4  7F E3 FB 78 */	mr r3, r31
/* 8001FBF8 0001C9F8  48 00 01 09 */	bl xFFXShakeFree__FP14xFFXShakeState
/* 8001FBFC 0001C9FC  48 00 00 30 */	b lbl_8001FC2C
lbl_8001FC00:
/* 8001FC00 0001CA00  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8001FC04 0001CA04  7F E4 FB 78 */	mr r4, r31
/* 8001FC08 0001CA08  38 61 00 08 */	addi r3, r1, 8
/* 8001FC0C 0001CA0C  EC 3F 00 28 */	fsubs f1, f31, f0
/* 8001FC10 0001CA10  4B FE B4 81 */	bl xVec3SMul__FP5xVec3PC5xVec3f
/* 8001FC14 0001CA14  80 7E 00 48 */	lwz r3, 0x48(r30)
/* 8001FC18 0001CA18  38 81 00 08 */	addi r4, r1, 8
/* 8001FC1C 0001CA1C  38 63 00 30 */	addi r3, r3, 0x30
/* 8001FC20 0001CA20  4B FE EB 35 */	bl xVec3AddTo__FP5xVec3PC5xVec3
/* 8001FC24 0001CA24  D3 FF 00 1C */	stfs f31, 0x1c(r31)
/* 8001FC28 0001CA28  D3 DF 00 14 */	stfs f30, 0x14(r31)
lbl_8001FC2C:
/* 8001FC2C 0001CA2C  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 8001FC30 0001CA30  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8001FC34 0001CA34  E3 C1 00 28 */	psq_l f30, 40(r1), 0, qr0
/* 8001FC38 0001CA38  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 8001FC3C 0001CA3C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8001FC40 0001CA40  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8001FC44 0001CA44  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8001FC48 0001CA48  7C 08 03 A6 */	mtlr r0
/* 8001FC4C 0001CA4C  38 21 00 40 */	addi r1, r1, 0x40
/* 8001FC50 0001CA50  4E 80 00 20 */	blr 

.global xFFXShakePoolInit__FUi
xFFXShakePoolInit__FUi:
/* 8001FC54 0001CA54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001FC58 0001CA58  7C 08 02 A6 */	mflr r0
/* 8001FC5C 0001CA5C  1C 83 00 24 */	mulli r4, r3, 0x24
/* 8001FC60 0001CA60  38 A0 00 00 */	li r5, 0
/* 8001FC64 0001CA64  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001FC68 0001CA68  90 6D 88 F4 */	stw r3, lbl_803CB1F4-_SDA_BASE_(r13)
/* 8001FC6C 0001CA6C  80 6D 89 E0 */	lwz r3, gActiveHeap-_SDA_BASE_(r13)
/* 8001FC70 0001CA70  48 01 3C D1 */	bl xMemAlloc__FUiUii
/* 8001FC74 0001CA74  90 6D 88 F8 */	stw r3, lbl_803CB1F8-_SDA_BASE_(r13)
/* 8001FC78 0001CA78  38 00 00 00 */	li r0, 0
/* 8001FC7C 0001CA7C  38 C0 00 01 */	li r6, 1
/* 8001FC80 0001CA80  38 80 00 24 */	li r4, 0x24
/* 8001FC84 0001CA84  80 6D 88 F8 */	lwz r3, lbl_803CB1F8-_SDA_BASE_(r13)
/* 8001FC88 0001CA88  90 03 00 20 */	stw r0, 0x20(r3)
/* 8001FC8C 0001CA8C  48 00 00 24 */	b lbl_8001FCB0
lbl_8001FC90:
/* 8001FC90 0001CA90  38 66 FF FF */	addi r3, r6, -1
/* 8001FC94 0001CA94  38 04 00 20 */	addi r0, r4, 0x20
/* 8001FC98 0001CA98  1C 63 00 24 */	mulli r3, r3, 0x24
/* 8001FC9C 0001CA9C  80 AD 88 F8 */	lwz r5, lbl_803CB1F8-_SDA_BASE_(r13)
/* 8001FCA0 0001CAA0  38 84 00 24 */	addi r4, r4, 0x24
/* 8001FCA4 0001CAA4  38 C6 00 01 */	addi r6, r6, 1
/* 8001FCA8 0001CAA8  7C 65 1A 14 */	add r3, r5, r3
/* 8001FCAC 0001CAAC  7C 65 01 2E */	stwx r3, r5, r0
lbl_8001FCB0:
/* 8001FCB0 0001CAB0  80 6D 88 F4 */	lwz r3, lbl_803CB1F4-_SDA_BASE_(r13)
/* 8001FCB4 0001CAB4  7C 06 18 40 */	cmplw r6, r3
/* 8001FCB8 0001CAB8  41 80 FF D8 */	blt lbl_8001FC90
/* 8001FCBC 0001CABC  38 03 FF FF */	addi r0, r3, -1
/* 8001FCC0 0001CAC0  80 6D 88 F8 */	lwz r3, lbl_803CB1F8-_SDA_BASE_(r13)
/* 8001FCC4 0001CAC4  1C 00 00 24 */	mulli r0, r0, 0x24
/* 8001FCC8 0001CAC8  7C 03 02 14 */	add r0, r3, r0
/* 8001FCCC 0001CACC  90 0D 88 FC */	stw r0, lbl_803CB1FC-_SDA_BASE_(r13)
/* 8001FCD0 0001CAD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001FCD4 0001CAD4  7C 08 03 A6 */	mtlr r0
/* 8001FCD8 0001CAD8  38 21 00 10 */	addi r1, r1, 0x10
/* 8001FCDC 0001CADC  4E 80 00 20 */	blr 

.global xFFXShakeAlloc__Fv
xFFXShakeAlloc__Fv:
/* 8001FCE0 0001CAE0  80 6D 88 FC */	lwz r3, lbl_803CB1FC-_SDA_BASE_(r13)
/* 8001FCE4 0001CAE4  28 03 00 00 */	cmplwi r3, 0
/* 8001FCE8 0001CAE8  40 82 00 0C */	bne lbl_8001FCF4
/* 8001FCEC 0001CAEC  38 60 00 00 */	li r3, 0
/* 8001FCF0 0001CAF0  4E 80 00 20 */	blr 
lbl_8001FCF4:
/* 8001FCF4 0001CAF4  80 03 00 20 */	lwz r0, 0x20(r3)
/* 8001FCF8 0001CAF8  90 0D 88 FC */	stw r0, lbl_803CB1FC-_SDA_BASE_(r13)
/* 8001FCFC 0001CAFC  4E 80 00 20 */	blr 

.global xFFXShakeFree__FP14xFFXShakeState
xFFXShakeFree__FP14xFFXShakeState:
/* 8001FD00 0001CB00  80 0D 88 FC */	lwz r0, lbl_803CB1FC-_SDA_BASE_(r13)
/* 8001FD04 0001CB04  90 03 00 20 */	stw r0, 0x20(r3)
/* 8001FD08 0001CB08  90 6D 88 FC */	stw r3, lbl_803CB1FC-_SDA_BASE_(r13)
/* 8001FD0C 0001CB0C  4E 80 00 20 */	blr 

.global xFFXRotMatchPoolInit__FUi
xFFXRotMatchPoolInit__FUi:
/* 8001FD10 0001CB10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001FD14 0001CB14  7C 08 02 A6 */	mflr r0
/* 8001FD18 0001CB18  1C 83 00 44 */	mulli r4, r3, 0x44
/* 8001FD1C 0001CB1C  38 A0 00 00 */	li r5, 0
/* 8001FD20 0001CB20  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001FD24 0001CB24  90 6D 89 00 */	stw r3, lbl_803CB200-_SDA_BASE_(r13)
/* 8001FD28 0001CB28  80 6D 89 E0 */	lwz r3, gActiveHeap-_SDA_BASE_(r13)
/* 8001FD2C 0001CB2C  48 01 3C 15 */	bl xMemAlloc__FUiUii
/* 8001FD30 0001CB30  90 6D 89 04 */	stw r3, lbl_803CB204-_SDA_BASE_(r13)
/* 8001FD34 0001CB34  38 00 00 00 */	li r0, 0
/* 8001FD38 0001CB38  38 C0 00 01 */	li r6, 1
/* 8001FD3C 0001CB3C  38 80 00 44 */	li r4, 0x44
/* 8001FD40 0001CB40  80 6D 89 04 */	lwz r3, lbl_803CB204-_SDA_BASE_(r13)
/* 8001FD44 0001CB44  90 03 00 40 */	stw r0, 0x40(r3)
/* 8001FD48 0001CB48  48 00 00 24 */	b lbl_8001FD6C
lbl_8001FD4C:
/* 8001FD4C 0001CB4C  38 66 FF FF */	addi r3, r6, -1
/* 8001FD50 0001CB50  38 04 00 40 */	addi r0, r4, 0x40
/* 8001FD54 0001CB54  1C 63 00 44 */	mulli r3, r3, 0x44
/* 8001FD58 0001CB58  80 AD 89 04 */	lwz r5, lbl_803CB204-_SDA_BASE_(r13)
/* 8001FD5C 0001CB5C  38 84 00 44 */	addi r4, r4, 0x44
/* 8001FD60 0001CB60  38 C6 00 01 */	addi r6, r6, 1
/* 8001FD64 0001CB64  7C 65 1A 14 */	add r3, r5, r3
/* 8001FD68 0001CB68  7C 65 01 2E */	stwx r3, r5, r0
lbl_8001FD6C:
/* 8001FD6C 0001CB6C  80 6D 89 00 */	lwz r3, lbl_803CB200-_SDA_BASE_(r13)
/* 8001FD70 0001CB70  7C 06 18 40 */	cmplw r6, r3
/* 8001FD74 0001CB74  41 80 FF D8 */	blt lbl_8001FD4C
/* 8001FD78 0001CB78  38 03 FF FF */	addi r0, r3, -1
/* 8001FD7C 0001CB7C  80 6D 89 04 */	lwz r3, lbl_803CB204-_SDA_BASE_(r13)
/* 8001FD80 0001CB80  1C 00 00 44 */	mulli r0, r0, 0x44
/* 8001FD84 0001CB84  7C 03 02 14 */	add r0, r3, r0
/* 8001FD88 0001CB88  90 0D 89 08 */	stw r0, lbl_803CB208-_SDA_BASE_(r13)
/* 8001FD8C 0001CB8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001FD90 0001CB90  7C 08 03 A6 */	mtlr r0
/* 8001FD94 0001CB94  38 21 00 10 */	addi r1, r1, 0x10
/* 8001FD98 0001CB98  4E 80 00 20 */	blr 

.global xFFXRotMatchAlloc__Fv
xFFXRotMatchAlloc__Fv:
/* 8001FD9C 0001CB9C  80 6D 89 08 */	lwz r3, lbl_803CB208-_SDA_BASE_(r13)
/* 8001FDA0 0001CBA0  28 03 00 00 */	cmplwi r3, 0
/* 8001FDA4 0001CBA4  40 82 00 0C */	bne lbl_8001FDB0
/* 8001FDA8 0001CBA8  38 60 00 00 */	li r3, 0
/* 8001FDAC 0001CBAC  4E 80 00 20 */	blr 
lbl_8001FDB0:
/* 8001FDB0 0001CBB0  80 03 00 40 */	lwz r0, 0x40(r3)
/* 8001FDB4 0001CBB4  90 0D 89 08 */	stw r0, lbl_803CB208-_SDA_BASE_(r13)
/* 8001FDB8 0001CBB8  4E 80 00 20 */	blr 
