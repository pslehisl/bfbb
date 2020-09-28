.include "macros.inc"

.section .text  # 0x801245D4 - 0x80124AE4

.global GOALCreate_Script__FiP10RyzMemGrowPv
GOALCreate_Script__FiP10RyzMemGrowPv:
/* 801245D4 001213D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801245D8 001213D8  7C 08 02 A6 */	mflr r0
/* 801245DC 001213DC  7C 85 23 78 */	mr r5, r4
/* 801245E0 001213E0  38 C0 00 00 */	li r6, 0
/* 801245E4 001213E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801245E8 001213E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801245EC 001213EC  7C 7F 1B 78 */	mr r31, r3
/* 801245F0 001213F0  3C 9F B1 B9 */	addis r4, r31, 0xb1b9
/* 801245F4 001213F4  38 84 AC D0 */	addi r4, r4, -21296
/* 801245F8 001213F8  28 04 00 07 */	cmplwi r4, 7
/* 801245FC 001213FC  41 81 01 58 */	bgt lbl_80124754
/* 80124600 00121400  3C 60 80 2A */	lis r3, lbl_80298108@ha
/* 80124604 00121404  54 84 10 3A */	slwi r4, r4, 2
/* 80124608 00121408  38 63 81 08 */	addi r3, r3, lbl_80298108@l
/* 8012460C 0012140C  7C 03 20 2E */	lwzx r0, r3, r4
/* 80124610 00121410  7C 09 03 A6 */	mtctr r0
/* 80124614 00121414  4E 80 04 20 */	bctr 
/* 80124618 00121418  7F E4 FB 78 */	mr r4, r31
/* 8012461C 0012141C  38 60 00 50 */	li r3, 0x50
/* 80124620 00121420  4B FE AB 31 */	bl __nw__10RyzMemDataFUliP10RyzMemGrow
/* 80124624 00121424  7C 60 1B 79 */	or. r0, r3, r3
/* 80124628 00121428  41 82 00 10 */	beq lbl_80124638
/* 8012462C 0012142C  7F E4 FB 78 */	mr r4, r31
/* 80124630 00121430  48 00 04 6D */	bl __ct__14zNPCGoalScriptFi
/* 80124634 00121434  7C 60 1B 78 */	mr r0, r3
lbl_80124638:
/* 80124638 00121438  7C 06 03 78 */	mr r6, r0
/* 8012463C 0012143C  48 00 01 18 */	b lbl_80124754
/* 80124640 00121440  7F E4 FB 78 */	mr r4, r31
/* 80124644 00121444  38 60 00 4C */	li r3, 0x4c
/* 80124648 00121448  4B FE AB 09 */	bl __nw__10RyzMemDataFUliP10RyzMemGrow
/* 8012464C 0012144C  7C 60 1B 79 */	or. r0, r3, r3
/* 80124650 00121450  41 82 00 10 */	beq lbl_80124660
/* 80124654 00121454  7F E4 FB 78 */	mr r4, r31
/* 80124658 00121458  48 00 03 FD */	bl __ct__18zNPCGoalScriptAnimFi
/* 8012465C 0012145C  7C 60 1B 78 */	mr r0, r3
lbl_80124660:
/* 80124660 00121460  7C 06 03 78 */	mr r6, r0
/* 80124664 00121464  48 00 00 F0 */	b lbl_80124754
/* 80124668 00121468  7F E4 FB 78 */	mr r4, r31
/* 8012466C 0012146C  38 60 00 4C */	li r3, 0x4c
/* 80124670 00121470  4B FE AA E1 */	bl __nw__10RyzMemDataFUliP10RyzMemGrow
/* 80124674 00121474  7C 60 1B 79 */	or. r0, r3, r3
/* 80124678 00121478  41 82 00 10 */	beq lbl_80124688
/* 8012467C 0012147C  7F E4 FB 78 */	mr r4, r31
/* 80124680 00121480  48 00 03 8D */	bl __ct__20zNPCGoalScriptAttackFi
/* 80124684 00121484  7C 60 1B 78 */	mr r0, r3
lbl_80124688:
/* 80124688 00121488  7C 06 03 78 */	mr r6, r0
/* 8012468C 0012148C  48 00 00 C8 */	b lbl_80124754
/* 80124690 00121490  7F E4 FB 78 */	mr r4, r31
/* 80124694 00121494  38 60 00 4C */	li r3, 0x4c
/* 80124698 00121498  4B FE AA B9 */	bl __nw__10RyzMemDataFUliP10RyzMemGrow
/* 8012469C 0012149C  7C 60 1B 79 */	or. r0, r3, r3
/* 801246A0 001214A0  41 82 00 10 */	beq lbl_801246B0
/* 801246A4 001214A4  7F E4 FB 78 */	mr r4, r31
/* 801246A8 001214A8  48 00 03 1D */	bl __ct__18zNPCGoalScriptMoveFi
/* 801246AC 001214AC  7C 60 1B 78 */	mr r0, r3
lbl_801246B0:
/* 801246B0 001214B0  7C 06 03 78 */	mr r6, r0
/* 801246B4 001214B4  48 00 00 A0 */	b lbl_80124754
/* 801246B8 001214B8  7F E4 FB 78 */	mr r4, r31
/* 801246BC 001214BC  38 60 00 4C */	li r3, 0x4c
/* 801246C0 001214C0  4B FE AA 91 */	bl __nw__10RyzMemDataFUliP10RyzMemGrow
/* 801246C4 001214C4  7C 60 1B 79 */	or. r0, r3, r3
/* 801246C8 001214C8  41 82 00 10 */	beq lbl_801246D8
/* 801246CC 001214CC  7F E4 FB 78 */	mr r4, r31
/* 801246D0 001214D0  48 00 02 AD */	bl __ct__18zNPCGoalScriptTalkFi
/* 801246D4 001214D4  7C 60 1B 78 */	mr r0, r3
lbl_801246D8:
/* 801246D8 001214D8  7C 06 03 78 */	mr r6, r0
/* 801246DC 001214DC  48 00 00 78 */	b lbl_80124754
/* 801246E0 001214E0  7F E4 FB 78 */	mr r4, r31
/* 801246E4 001214E4  38 60 00 4C */	li r3, 0x4c
/* 801246E8 001214E8  4B FE AA 69 */	bl __nw__10RyzMemDataFUliP10RyzMemGrow
/* 801246EC 001214EC  7C 60 1B 79 */	or. r0, r3, r3
/* 801246F0 001214F0  41 82 00 10 */	beq lbl_80124700
/* 801246F4 001214F4  7F E4 FB 78 */	mr r4, r31
/* 801246F8 001214F8  48 00 02 3D */	bl __ct__20zNPCGoalScriptFollowFi
/* 801246FC 001214FC  7C 60 1B 78 */	mr r0, r3
lbl_80124700:
/* 80124700 00121500  7C 06 03 78 */	mr r6, r0
/* 80124704 00121504  48 00 00 50 */	b lbl_80124754
/* 80124708 00121508  7F E4 FB 78 */	mr r4, r31
/* 8012470C 0012150C  38 60 00 4C */	li r3, 0x4c
/* 80124710 00121510  4B FE AA 41 */	bl __nw__10RyzMemDataFUliP10RyzMemGrow
/* 80124714 00121514  7C 60 1B 79 */	or. r0, r3, r3
/* 80124718 00121518  41 82 00 10 */	beq lbl_80124728
/* 8012471C 0012151C  7F E4 FB 78 */	mr r4, r31
/* 80124720 00121520  48 00 01 CD */	bl __ct__18zNPCGoalScriptLeadFi
/* 80124724 00121524  7C 60 1B 78 */	mr r0, r3
lbl_80124728:
/* 80124728 00121528  7C 06 03 78 */	mr r6, r0
/* 8012472C 0012152C  48 00 00 28 */	b lbl_80124754
/* 80124730 00121530  7F E4 FB 78 */	mr r4, r31
/* 80124734 00121534  38 60 00 4C */	li r3, 0x4c
/* 80124738 00121538  4B FE AA 19 */	bl __nw__10RyzMemDataFUliP10RyzMemGrow
/* 8012473C 0012153C  7C 60 1B 79 */	or. r0, r3, r3
/* 80124740 00121540  41 82 00 10 */	beq lbl_80124750
/* 80124744 00121544  7F E4 FB 78 */	mr r4, r31
/* 80124748 00121548  48 00 01 5D */	bl __ct__18zNPCGoalScriptWaitFi
/* 8012474C 0012154C  7C 60 1B 78 */	mr r0, r3
lbl_80124750:
/* 80124750 00121550  7C 06 03 78 */	mr r6, r0
lbl_80124754:
/* 80124754 00121554  28 06 00 00 */	cmplwi r6, 0
/* 80124758 00121558  7C C3 33 78 */	mr r3, r6
/* 8012475C 0012155C  41 82 00 08 */	beq lbl_80124764
/* 80124760 00121560  38 66 00 0C */	addi r3, r6, 0xc
lbl_80124764:
/* 80124764 00121564  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80124768 00121568  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8012476C 0012156C  7C 08 03 A6 */	mtlr r0
/* 80124770 00121570  38 21 00 10 */	addi r1, r1, 0x10
/* 80124774 00121574  4E 80 00 20 */	blr 
/* 80124778 00121578  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8012477C 0012157C  7C 08 02 A6 */	mflr r0
/* 80124780 00121580  38 A0 01 3E */	li r5, 0x13e
/* 80124784 00121584  90 01 00 24 */	stw r0, 0x24(r1)
/* 80124788 00121588  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 8012478C 0012158C  FF E0 08 90 */	fmr f31, f1
/* 80124790 00121590  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80124794 00121594  7C 9F 23 78 */	mr r31, r4
/* 80124798 00121598  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8012479C 0012159C  7C 7E 1B 78 */	mr r30, r3
/* 801247A0 001215A0  80 63 00 18 */	lwz r3, 0x18(r3)
/* 801247A4 001215A4  80 63 00 00 */	lwz r3, 0(r3)
/* 801247A8 001215A8  7C 64 1B 78 */	mr r4, r3
/* 801247AC 001215AC  4B EF AF 35 */	bl zEntEvent__FP5xBaseP5xBaseUi
/* 801247B0 001215B0  FC 20 F8 90 */	fmr f1, f31
/* 801247B4 001215B4  7F C3 F3 78 */	mr r3, r30
/* 801247B8 001215B8  7F E4 FB 78 */	mr r4, r31
/* 801247BC 001215BC  4B FB 09 59 */	bl Enter__14zNPCGoalCommonFfPv
/* 801247C0 001215C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801247C4 001215C4  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 801247C8 001215C8  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 801247CC 001215CC  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 801247D0 001215D0  7C 08 03 A6 */	mtlr r0
/* 801247D4 001215D4  38 21 00 20 */	addi r1, r1, 0x20
/* 801247D8 001215D8  4E 80 00 20 */	blr 
/* 801247DC 001215DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801247E0 001215E0  7C 08 02 A6 */	mflr r0
/* 801247E4 001215E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801247E8 001215E8  4B FB 0C 35 */	bl Exit__5xGoalFfPv
/* 801247EC 001215EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801247F0 001215F0  7C 08 03 A6 */	mtlr r0
/* 801247F4 001215F4  38 21 00 10 */	addi r1, r1, 0x10
/* 801247F8 001215F8  4E 80 00 20 */	blr 
/* 801247FC 001215FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80124800 00121600  7C 08 02 A6 */	mflr r0
/* 80124804 00121604  90 01 00 14 */	stw r0, 0x14(r1)
/* 80124808 00121608  4B FB 0C 25 */	bl SysEvent__5xGoalFP5xBaseP5xBaseUiPCfP5xBasePi
/* 8012480C 0012160C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80124810 00121610  7C 08 03 A6 */	mtlr r0
/* 80124814 00121614  38 21 00 10 */	addi r1, r1, 0x10
/* 80124818 00121618  4E 80 00 20 */	blr 
/* 8012481C 0012161C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80124820 00121620  7C 08 02 A6 */	mflr r0
/* 80124824 00121624  90 01 00 14 */	stw r0, 0x14(r1)
/* 80124828 00121628  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8012482C 0012162C  7C 9F 23 78 */	mr r31, r4
/* 80124830 00121630  4B FC 7F 61 */	bl GetPsyche__5xGoalCFv
/* 80124834 00121634  80 1F 00 00 */	lwz r0, 0(r31)
/* 80124838 00121638  3B E0 00 01 */	li r31, 1
/* 8012483C 0012163C  2C 00 00 1B */	cmpwi r0, 0x1b
/* 80124840 00121640  41 82 00 20 */	beq lbl_80124860
/* 80124844 00121644  40 80 00 10 */	bge lbl_80124854
/* 80124848 00121648  2C 00 00 1A */	cmpwi r0, 0x1a
/* 8012484C 0012164C  40 80 00 40 */	bge lbl_8012488C
/* 80124850 00121650  48 00 00 38 */	b lbl_80124888
lbl_80124854:
/* 80124854 00121654  2C 00 00 1D */	cmpwi r0, 0x1d
/* 80124858 00121658  40 80 00 30 */	bge lbl_80124888
/* 8012485C 0012165C  48 00 00 18 */	b lbl_80124874
lbl_80124860:
/* 80124860 00121660  3C 80 4E 47 */	lis r4, 0x4E474E30@ha
/* 80124864 00121664  38 A0 00 00 */	li r5, 0
/* 80124868 00121668  38 84 4E 30 */	addi r4, r4, 0x4E474E30@l
/* 8012486C 0012166C  4B FE 8E C5 */	bl GoalSet__7xPsycheFii
/* 80124870 00121670  48 00 00 1C */	b lbl_8012488C
lbl_80124874:
/* 80124874 00121674  3C 80 4E 47 */	lis r4, 0x4E475330@ha
/* 80124878 00121678  38 A0 00 00 */	li r5, 0
/* 8012487C 0012167C  38 84 53 30 */	addi r4, r4, 0x4E475330@l
/* 80124880 00121680  4B FE 92 C1 */	bl GoalPop__7xPsycheFii
/* 80124884 00121684  48 00 00 08 */	b lbl_8012488C
lbl_80124888:
/* 80124888 00121688  3B E0 00 00 */	li r31, 0
lbl_8012488C:
/* 8012488C 0012168C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80124890 00121690  7F E3 FB 78 */	mr r3, r31
/* 80124894 00121694  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80124898 00121698  7C 08 03 A6 */	mtlr r0
/* 8012489C 0012169C  38 21 00 10 */	addi r1, r1, 0x10
/* 801248A0 001216A0  4E 80 00 20 */	blr 

.global __ct__18zNPCGoalScriptWaitFi
__ct__18zNPCGoalScriptWaitFi:
/* 801248A4 001216A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801248A8 001216A8  7C 08 02 A6 */	mflr r0
/* 801248AC 001216AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801248B0 001216B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801248B4 001216B4  7C 7F 1B 78 */	mr r31, r3
/* 801248B8 001216B8  4B FB 47 3D */	bl __ct__14zNPCGoalCommonFi
/* 801248BC 001216BC  3C 80 80 2A */	lis r4, __vt__18zNPCGoalScriptWait@ha
/* 801248C0 001216C0  7F E3 FB 78 */	mr r3, r31
/* 801248C4 001216C4  38 04 82 94 */	addi r0, r4, __vt__18zNPCGoalScriptWait@l
/* 801248C8 001216C8  38 80 00 06 */	li r4, 6
/* 801248CC 001216CC  90 1F 00 38 */	stw r0, 0x38(r31)
/* 801248D0 001216D0  4B FB 47 D1 */	bl SetFlags__5xGoalFi
/* 801248D4 001216D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801248D8 001216D8  7F E3 FB 78 */	mr r3, r31
/* 801248DC 001216DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801248E0 001216E0  7C 08 03 A6 */	mtlr r0
/* 801248E4 001216E4  38 21 00 10 */	addi r1, r1, 0x10
/* 801248E8 001216E8  4E 80 00 20 */	blr 

.global __ct__18zNPCGoalScriptLeadFi
__ct__18zNPCGoalScriptLeadFi:
/* 801248EC 001216EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801248F0 001216F0  7C 08 02 A6 */	mflr r0
/* 801248F4 001216F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801248F8 001216F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801248FC 001216FC  7C 7F 1B 78 */	mr r31, r3
/* 80124900 00121700  4B FB 46 F5 */	bl __ct__14zNPCGoalCommonFi
/* 80124904 00121704  3C 80 80 2A */	lis r4, __vt__18zNPCGoalScriptLead@ha
/* 80124908 00121708  7F E3 FB 78 */	mr r3, r31
/* 8012490C 0012170C  38 04 82 60 */	addi r0, r4, __vt__18zNPCGoalScriptLead@l
/* 80124910 00121710  38 80 00 06 */	li r4, 6
/* 80124914 00121714  90 1F 00 38 */	stw r0, 0x38(r31)
/* 80124918 00121718  4B FB 47 89 */	bl SetFlags__5xGoalFi
/* 8012491C 0012171C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80124920 00121720  7F E3 FB 78 */	mr r3, r31
/* 80124924 00121724  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80124928 00121728  7C 08 03 A6 */	mtlr r0
/* 8012492C 0012172C  38 21 00 10 */	addi r1, r1, 0x10
/* 80124930 00121730  4E 80 00 20 */	blr 

.global __ct__20zNPCGoalScriptFollowFi
__ct__20zNPCGoalScriptFollowFi:
/* 80124934 00121734  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80124938 00121738  7C 08 02 A6 */	mflr r0
/* 8012493C 0012173C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80124940 00121740  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80124944 00121744  7C 7F 1B 78 */	mr r31, r3
/* 80124948 00121748  4B FB 46 AD */	bl __ct__14zNPCGoalCommonFi
/* 8012494C 0012174C  3C 80 80 2A */	lis r4, __vt__20zNPCGoalScriptFollow@ha
/* 80124950 00121750  7F E3 FB 78 */	mr r3, r31
/* 80124954 00121754  38 04 82 2C */	addi r0, r4, __vt__20zNPCGoalScriptFollow@l
/* 80124958 00121758  38 80 00 06 */	li r4, 6
/* 8012495C 0012175C  90 1F 00 38 */	stw r0, 0x38(r31)
/* 80124960 00121760  4B FB 47 41 */	bl SetFlags__5xGoalFi
/* 80124964 00121764  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80124968 00121768  7F E3 FB 78 */	mr r3, r31
/* 8012496C 0012176C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80124970 00121770  7C 08 03 A6 */	mtlr r0
/* 80124974 00121774  38 21 00 10 */	addi r1, r1, 0x10
/* 80124978 00121778  4E 80 00 20 */	blr 

.global __ct__18zNPCGoalScriptTalkFi
__ct__18zNPCGoalScriptTalkFi:
/* 8012497C 0012177C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80124980 00121780  7C 08 02 A6 */	mflr r0
/* 80124984 00121784  90 01 00 14 */	stw r0, 0x14(r1)
/* 80124988 00121788  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8012498C 0012178C  7C 7F 1B 78 */	mr r31, r3
/* 80124990 00121790  4B FB 46 65 */	bl __ct__14zNPCGoalCommonFi
/* 80124994 00121794  3C 80 80 2A */	lis r4, __vt__18zNPCGoalScriptTalk@ha
/* 80124998 00121798  7F E3 FB 78 */	mr r3, r31
/* 8012499C 0012179C  38 04 81 F8 */	addi r0, r4, __vt__18zNPCGoalScriptTalk@l
/* 801249A0 001217A0  38 80 00 06 */	li r4, 6
/* 801249A4 001217A4  90 1F 00 38 */	stw r0, 0x38(r31)
/* 801249A8 001217A8  4B FB 46 F9 */	bl SetFlags__5xGoalFi
/* 801249AC 001217AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801249B0 001217B0  7F E3 FB 78 */	mr r3, r31
/* 801249B4 001217B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801249B8 001217B8  7C 08 03 A6 */	mtlr r0
/* 801249BC 001217BC  38 21 00 10 */	addi r1, r1, 0x10
/* 801249C0 001217C0  4E 80 00 20 */	blr 

.global __ct__18zNPCGoalScriptMoveFi
__ct__18zNPCGoalScriptMoveFi:
/* 801249C4 001217C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801249C8 001217C8  7C 08 02 A6 */	mflr r0
/* 801249CC 001217CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801249D0 001217D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801249D4 001217D4  7C 7F 1B 78 */	mr r31, r3
/* 801249D8 001217D8  4B FB 46 1D */	bl __ct__14zNPCGoalCommonFi
/* 801249DC 001217DC  3C 80 80 2A */	lis r4, __vt__18zNPCGoalScriptMove@ha
/* 801249E0 001217E0  7F E3 FB 78 */	mr r3, r31
/* 801249E4 001217E4  38 04 81 C4 */	addi r0, r4, __vt__18zNPCGoalScriptMove@l
/* 801249E8 001217E8  38 80 00 06 */	li r4, 6
/* 801249EC 001217EC  90 1F 00 38 */	stw r0, 0x38(r31)
/* 801249F0 001217F0  4B FB 46 B1 */	bl SetFlags__5xGoalFi
/* 801249F4 001217F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801249F8 001217F8  7F E3 FB 78 */	mr r3, r31
/* 801249FC 001217FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80124A00 00121800  7C 08 03 A6 */	mtlr r0
/* 80124A04 00121804  38 21 00 10 */	addi r1, r1, 0x10
/* 80124A08 00121808  4E 80 00 20 */	blr 

.global __ct__20zNPCGoalScriptAttackFi
__ct__20zNPCGoalScriptAttackFi:
/* 80124A0C 0012180C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80124A10 00121810  7C 08 02 A6 */	mflr r0
/* 80124A14 00121814  90 01 00 14 */	stw r0, 0x14(r1)
/* 80124A18 00121818  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80124A1C 0012181C  7C 7F 1B 78 */	mr r31, r3
/* 80124A20 00121820  4B FB 45 D5 */	bl __ct__14zNPCGoalCommonFi
/* 80124A24 00121824  3C 80 80 2A */	lis r4, __vt__20zNPCGoalScriptAttack@ha
/* 80124A28 00121828  7F E3 FB 78 */	mr r3, r31
/* 80124A2C 0012182C  38 04 81 90 */	addi r0, r4, __vt__20zNPCGoalScriptAttack@l
/* 80124A30 00121830  38 80 00 06 */	li r4, 6
/* 80124A34 00121834  90 1F 00 38 */	stw r0, 0x38(r31)
/* 80124A38 00121838  4B FB 46 69 */	bl SetFlags__5xGoalFi
/* 80124A3C 0012183C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80124A40 00121840  7F E3 FB 78 */	mr r3, r31
/* 80124A44 00121844  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80124A48 00121848  7C 08 03 A6 */	mtlr r0
/* 80124A4C 0012184C  38 21 00 10 */	addi r1, r1, 0x10
/* 80124A50 00121850  4E 80 00 20 */	blr 

.global __ct__18zNPCGoalScriptAnimFi
__ct__18zNPCGoalScriptAnimFi:
/* 80124A54 00121854  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80124A58 00121858  7C 08 02 A6 */	mflr r0
/* 80124A5C 0012185C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80124A60 00121860  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80124A64 00121864  7C 7F 1B 78 */	mr r31, r3
/* 80124A68 00121868  4B FB 45 8D */	bl __ct__14zNPCGoalCommonFi
/* 80124A6C 0012186C  3C 80 80 2A */	lis r4, __vt__18zNPCGoalScriptAnim@ha
/* 80124A70 00121870  7F E3 FB 78 */	mr r3, r31
/* 80124A74 00121874  38 04 81 5C */	addi r0, r4, __vt__18zNPCGoalScriptAnim@l
/* 80124A78 00121878  38 80 00 06 */	li r4, 6
/* 80124A7C 0012187C  90 1F 00 38 */	stw r0, 0x38(r31)
/* 80124A80 00121880  4B FB 46 21 */	bl SetFlags__5xGoalFi
/* 80124A84 00121884  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80124A88 00121888  7F E3 FB 78 */	mr r3, r31
/* 80124A8C 0012188C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80124A90 00121890  7C 08 03 A6 */	mtlr r0
/* 80124A94 00121894  38 21 00 10 */	addi r1, r1, 0x10
/* 80124A98 00121898  4E 80 00 20 */	blr 

.global __ct__14zNPCGoalScriptFi
__ct__14zNPCGoalScriptFi:
/* 80124A9C 0012189C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80124AA0 001218A0  7C 08 02 A6 */	mflr r0
/* 80124AA4 001218A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80124AA8 001218A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80124AAC 001218AC  7C 7F 1B 78 */	mr r31, r3
/* 80124AB0 001218B0  4B FB 45 45 */	bl __ct__14zNPCGoalCommonFi
/* 80124AB4 001218B4  3C 80 80 2A */	lis r4, __vt__14zNPCGoalScript@ha
/* 80124AB8 001218B8  7F E3 FB 78 */	mr r3, r31
/* 80124ABC 001218BC  38 04 81 28 */	addi r0, r4, __vt__14zNPCGoalScript@l
/* 80124AC0 001218C0  38 80 00 1C */	li r4, 0x1c
/* 80124AC4 001218C4  90 1F 00 38 */	stw r0, 0x38(r31)
/* 80124AC8 001218C8  4B FB 45 D9 */	bl SetFlags__5xGoalFi
/* 80124ACC 001218CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80124AD0 001218D0  7F E3 FB 78 */	mr r3, r31
/* 80124AD4 001218D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80124AD8 001218D8  7C 08 03 A6 */	mtlr r0
/* 80124ADC 001218DC  38 21 00 10 */	addi r1, r1, 0x10
/* 80124AE0 001218E0  4E 80 00 20 */	blr 
