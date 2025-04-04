////////////////////////////////////////////////////////////////////////
// Proprietary Notice
// 
//     This document is protected by copyright and other related rights
// and the practice or implementation of the information contained in
// this document may be protected by one or more patents or pending
// patent applications. No part of this document may be reproduced in any
// form by any means without the express prior written permission of
// Arm. No license, express or implied, by estoppel or otherwise to
// any intellectual property rights is granted by this document unless
// specifically stated.
// 
//     Your access to the information in this document is conditional upon
// your acceptance that you will not use or permit others to use the
// information for the purposes of determining whether implementations
// infringe any third party patents.
// 
//     THIS DOCUMENT IS PROVIDED "AS IS". ARM PROVIDES NO REPRESENTATIONS
// AND NO WARRANTIES, EXPRESS, IMPLIED OR STATUTORY, INCLUDING, WITHOUT
// LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTABILITY, SATISFACTORY
// QUALITY, NON-INFRINGEMENT OR FITNESS FOR A PARTICULAR PURPOSE WITH
// RESPECT TO THE DOCUMENT. For the avoidance of doubt, Arm makes no
// representation with respect to, and has undertaken no analysis to
// identify or understand the scope and content of, patents, copyrights,
// trade secrets, or other rights.
// 
//     This document may include technical inaccuracies or typographical
// errors.
// 
//     TO THE EXTENT NOT PROHIBITED BY LAW, IN NO EVENT WILL ARM BE
// LIABLE FOR ANY DAMAGES, INCLUDING WITHOUT LIMITATION ANY DIRECT,
// INDIRECT, SPECIAL, INCIDENTAL, PUNITIVE, OR CONSEQUENTIAL DAMAGES,
// HOWEVER CAUSED AND REGARDLESS OF THE THEORY OF LIABILITY, ARISING OUT
// OF ANY USE OF THIS DOCUMENT, EVEN IF ARM HAS BEEN ADVISED OF THE
// POSSIBILITY OF SUCH DAMAGES.
// 
//     This document consists solely of commercial items. You shall be
// responsible for ensuring that any use, duplication or disclosure of
// this document complies fully with any relevant export laws and
// regulations to assure that this document or any portion thereof is not
// exported, directly or indirectly, in violation of such export
// laws. Use of the word "partner" in reference to Arm"s customers is not
// intended to create or refer to any partnership relationship with any
// other company. Arm may make changes to this document at any time and
// without notice.
// 
//     If any of the provisions contained in these terms conflict with
// any of the provisions of any click through or signed written agreement
// covering this document with Arm, then the click through or signed
// written agreement prevails over and supersedes the conflicting
// provisions of these terms. This document may be translated into other
// languages for convenience, and you agree that if there is any conflict
// between the English version of this document and any translation, the
// terms of the English version of the Agreement shall prevail.
// 
//     The Arm corporate logo and words marked with (R) or (TM)
// are registered trademarks or trademarks of Arm Limited (or its
// subsidiaries) in the US and/or elsewhere. All rights reserved.  Other
// brands and names mentioned in this document may be the trademarks of
// their respective owners. Please follow Arm"s trademark usage
// guidelines at
// http://www.arm.com/company/policies/trademarks.
// 
//     Copyright (C) 2019 Arm Limited (or its affiliates). All rights reserved.
// 
//     Arm Limited. Company 02557590 registered in England.
// 
//     110 Fulbourn Road, Cambridge, England CB1 9NJ.
// 
//     LES-PRE-20349
////////////////////////////////////////////////////////////////////////

// Auxiliary Control Register
__register 32 {  } ACTLR;

// Auxiliary Control Register 2
__register 32 {  } ACTLR2;

// Auxiliary Data Fault Status Register
__register 32 {  } ADFSR;

// Auxiliary ID Register
__register 32 {  } AIDR;

// Auxiliary Instruction Fault Status Register
__register 32 {  } AIFSR;

// Auxiliary Memory Attribute Indirection Register 0
__register 32 {  } AMAIR0;

// Auxiliary Memory Attribute Indirection Register 1
__register 32 {  } AMAIR1;

// Activity Monitors Configuration Register
__register 32 { 31:28 NCG, 24:24 HDBG, 13:8 SIZE, 7:0 N } AMCFGR;

// Activity Monitors Counter Group Configuration Register
__register 32 { 15:8 CG1NC, 7:0 CG0NC } AMCGCR;

// Activity Monitors Count Enable Clear Register 0
__register 32 {  } AMCNTENCLR0;

// Activity Monitors Count Enable Clear Register 1
__register 32 {  } AMCNTENCLR1;

// Activity Monitors Count Enable Set Register 0
__register 32 {  } AMCNTENSET0;

// Activity Monitors Count Enable Set Register 1
__register 32 {  } AMCNTENSET1;

// Activity Monitors Control Register
__register 32 { 10:10 HDBG, 17:17 CG1RZ } AMCR;

// Activity Monitors Event Counter Registers 0
array [0..15] of __register 64 { 63:0 ACNT } AMEVCNTR0;

// Activity Monitors Event Counter Registers 1
array [0..15] of __register 64 { 63:0 ACNT } AMEVCNTR1;

// Activity Monitors Event Type Registers 0
array [0..15] of __register 32 { 15:0 evtCount } AMEVTYPER0;

// Activity Monitors Event Type Registers 1
array [0..15] of __register 32 { 15:0 evtCount } AMEVTYPER1;

// Activity Monitors User Enable Register
__register 32 { 0:0 EN } AMUSERENR;

// Application Program Status Register
__register 32 { 31:31 N, 30:30 Z, 29:29 C, 28:28 V, 27:27 Q, 19:16 GE } APSR;

// Current Cache Size ID Register
__register 32 { 12:3 Associativity, 2:0 LineSize, 27:13 NumSets } CCSIDR;

// Current Cache Size ID Register 2
__register 32 { 23:0 NumSets } CCSIDR2;

// Cache Level ID Register
__register 32 { 31:30 ICB, 29:27 LoUU, 26:24 LoC, 23:21 LoUIS } CLIDR;

// Counter-timer Frequency
__register 32 {  } CNTFRQ;

// Counter-timer Hyp Control register
__register 32 { 17:17 EVNTIS, 7:4 EVNTI, 3:3 EVNTDIR, 2:2 EVNTEN, 1:1 PL1PCEN, 0:0 PL1PCTEN } CNTHCTL;

// Counter-timer Secure Physical Timer Control Register (EL2)
__register 32 { 2:2 ISTATUS, 1:1 IMASK, 0:0 ENABLE } CNTHPS_CTL;

// Counter-timer Secure Physical Timer CompareValue Register (EL2)
__register 64 { 63:0 CompareValue } CNTHPS_CVAL;

// Counter-timer Secure Physical Timer TimerValue Register (EL2)
__register 32 { 31:0 TimerValue } CNTHPS_TVAL;

// Counter-timer Hyp Physical Timer Control register
__register 32 { 2:2 ISTATUS, 1:1 IMASK, 0:0 ENABLE } CNTHP_CTL;

// Counter-timer Hyp Physical CompareValue register
__register 64 { 63:0 CompareValue } CNTHP_CVAL;

// Counter-timer Hyp Physical Timer TimerValue register
__register 32 { 31:0 TimerValue } CNTHP_TVAL;

// Counter-timer Secure Virtual Timer Control Register (EL2)
__register 32 { 2:2 ISTATUS, 1:1 IMASK, 0:0 ENABLE } CNTHVS_CTL;

// Counter-timer Secure Virtual Timer CompareValue Register (EL2)
__register 64 { 63:0 CompareValue } CNTHVS_CVAL;

// Counter-timer Secure Virtual Timer TimerValue Register (EL2)
__register 32 { 31:0 TimerValue } CNTHVS_TVAL;

// Counter-timer Virtual Timer Control register (EL2)
__register 32 { 2:2 ISTATUS, 1:1 IMASK, 0:0 ENABLE } CNTHV_CTL;

// Counter-timer Virtual Timer CompareValue register (EL2)
__register 64 { 63:0 CompareValue } CNTHV_CVAL;

// Counter-timer Virtual Timer TimerValue register (EL2)
__register 32 { 31:0 TimerValue } CNTHV_TVAL;

// Counter-timer Kernel Control register
__register 32 { 17:17 EVNTIS, 9:9 PL0PTEN, 8:8 PL0VTEN, 7:4 EVNTI, 3:3 EVNTDIR, 2:2 EVNTEN, 1:1 PL0VCTEN, 0:0 PL0PCTEN } CNTKCTL;

// Counter-timer Physical Count
__register 64 {  } CNTPCT;

// Counter-timer Self-Synchronized Physical Count register
__register 64 {  } CNTPCTSS;

// Counter-timer Physical Timer Control
__register 32 { 2:2 ISTATUS, 1:1 IMASK, 0:0 ENABLE } CNTP_CTL;

// Counter-timer Physical Timer CompareValue
__register 64 { 63:0 CompareValue } CNTP_CVAL;

// Counter-timer Physical Timer TimerValue
__register 32 { 31:0 TimerValue } CNTP_TVAL;

// Counter-timer Virtual Count
__register 64 {  } CNTVCT;

// Counter-timer Self-Synchronized Virtual Count register
__register 64 {  } CNTVCTSS;

// Counter-timer Virtual Offsets
array [0..7] of __register 64 {  } CNTVOFF;

// Counter-timer Virtual Timer Control
__register 32 { 2:2 ISTATUS, 1:1 IMASK, 0:0 ENABLE } CNTV_CTL;

// Counter-timer Virtual Timer CompareValue
__register 64 { 63:0 CompareValue } CNTV_CVAL;

// Counter-timer Virtual Timer TimerValue
__register 32 { 31:0 TimerValue } CNTV_TVAL;

// Context ID Register
__register 32 { 31:0 PROCID, 7:0 ASID } CONTEXTIDR;

// Architectural Feature Access Control Register
__register 32 { 31:31 ASEDIS, 28:28 TRCDIS, 23:22 cp11, 21:20 cp10 } CPACR;

// Current Program Status Register
__register 32 { 31:31 N, 30:30 Z, 29:29 C, 28:28 V, 27:27 Q, 23:23 SSBS, 22:22 PAN, 21:21 DIT, 19:16 GE, 9:9 E, 8:8 A, 7:7 I, 6:6 F, 3:0 M } CPSR;

// Cache Size Selection Register
__register 32 { 3:1 Level, 0:0 InD } CSSELR;

// Cache Type Register
__register 32 { 29:29 DIC, 28:28 IDC, 27:24 CWG, 23:20 ERG, 19:16 DminLine, 15:14 L1Ip, 3:0 IminLine } CTR;

// Domain Access Control Register
__register 32 {  } DACR;

// Debug Authentication Status register
__register 32 { 7:6 SNID, 5:4 SID, 3:2 NSNID, 1:0 NSID } DBGAUTHSTATUS;

// Debug Breakpoint Control Registers
array [0..15] of __register 32 { 23:20 BT, 19:16 LBN, 15:14 SSC, 13:13 HMC, 8:5 BAS, 2:1 PMC, 0:0 E } DBGBCR;

// Debug Breakpoint Value Registers
array [0..15] of __register 32 { 31:0 ContextID, 31:2 VA } DBGBVR;

// Debug Breakpoint Extended Value Registers
array [0..15] of __register 32 { 31:0 ContextID2, 15:8, 7:0 VMID } DBGBXVR;

// Debug CLAIM Tag Clear register
__register 32 { 7:0 CLAIM } DBGCLAIMCLR;

// Debug CLAIM Tag Set register
__register 32 { 7:0 CLAIM } DBGCLAIMSET;

// DCC Interrupt Enable Register
__register 32 { 30:30 RX, 29:29 TX } DBGDCCINT;

// Debug Device ID register 0
__register 32 { 31:28 CIDMask, 27:24 AuxRegs, 23:20 DoubleLock, 19:16 VirtExtns, 15:12 VectorCatch, 11:8 BPAddrMask, 7:4 WPAddrMask, 3:0 PCSample } DBGDEVID;

// Debug Device ID register 1
__register 32 { 3:0 PCSROffset } DBGDEVID1;

// Debug Device ID register 2
__register 32 {  } DBGDEVID2;

// Debug ID Register
__register 32 { 31:28 WRPs, 27:24 BRPs, 23:20 CTX_CMPs, 19:16 Version, 14:14 nSUHD_imp, 12:12 SE_imp } DBGDIDR;

// Debug ROM Address Register
__register 64 { 1:0 Valid, 47:12 ROMADDR } DBGDRAR;

// Debug Self Address Register
__register 64 {  } DBGDSAR;

// Debug Status and Control Register, External View
__register 32 { 31:31 TFO, 30:30 RXfull, 29:29 TXfull, 27:27 RXO, 26:26 TXU, 23:22 INTdis, 21:21 TDA, 19:19 SC2, 18:18 NS, 17:17 SPNIDdis, 16:16 SPIDdis, 15:15 MDBGen, 14:14 HDE, 12:12 UDCCdis, 6:6 ERR, 5:2 MOE } DBGDSCRext;

// Debug Status and Control Register, Internal View
__register 32 { 30:30 RXfull, 29:29 TXfull, 18:18 NS, 17:17 SPNIDdis, 16:16 SPIDdis, 15:15 MDBGen, 12:12 UDCCdis, 5:2 MOE } DBGDSCRint;

// Debug OS Lock Data Transfer Register, Receive, External View
__register 32 {  } DBGDTRRXext;

// Debug Data Transfer Register, Receive
__register 32 {  } DBGDTRRXint;

// Debug OS Lock Data Transfer Register, Transmit
__register 32 {  } DBGDTRTXext;

// Debug Data Transfer Register, Transmit
__register 32 {  } DBGDTRTXint;

// Debug OS Double Lock Register
__register 32 { 0:0 DLK } DBGOSDLR;

// Debug OS Lock Exception Catch Control Register
__register 32 { 31:0 EDECCR } DBGOSECCR;

// Debug OS Lock Access Register
__register 32 { 31:0 OSLA } DBGOSLAR;

// Debug OS Lock Status Register
__register 32 { 2:2 nTT, 1:1 OSLK, 3:3, 0:0 OSLM } DBGOSLSR;

// Debug Power Control Register
__register 32 { 0:0 CORENPDRQ } DBGPRCR;

// Debug Vector Catch Register
__register 32 { 31:31 NSF, 30:30 NSI, 28:28 NSD, 27:27 NSP, 26:26 NSS, 25:25 NSU, 15:15 MF, 14:14 MI, 12:12 MD, 11:11 MP, 10:10 MS, 7:7 SF, 6:6 SI, 4:4 SD, 3:3 SP, 2:2 SS, 1:1 SU, 7:7 F, 6:6 I, 4:4 D, 3:3 P, 2:2 S, 1:1 U } DBGVCR;

// Debug Watchpoint Control Registers
array [0..15] of __register 32 { 28:24 MASK, 20:20 WT, 19:16 LBN, 15:14 SSC, 13:13 HMC, 12:5 BAS, 4:3 LSC, 2:1 PAC, 0:0 E } DBGWCR;

// Debug Watchpoint Fault Address Register
__register 32 {  } DBGWFAR;

// Debug Watchpoint Value Registers
array [0..15] of __register 32 { 31:2 VA } DBGWVR;

// Data Fault Address Register
__register 32 {  } DFAR;

// Data Fault Status Register
__register 32 { 16:16 FnV, 15:14 AET, 13:13 CM, 12:12 ExT, 11:11 WnR, 9:9 LPAE, 7:4 Domain, 5:0 STATUS, 10:10, 3:0 FS } DFSR;

// Deferred Interrupt Status Register
__register 32 { 31:31 A, 15:14 AET, 9:9 EA, 5:0 DFSC, 12:12 ExT, 9:9 LPAE, 5:0 STATUS, 10:10, 3:0 FS } DISR;

// Debug Link Register
__register 32 {  } DLR;

// Debug Saved Program Status Register
__register 32 { 31:31 N, 30:30 Z, 29:29 C, 28:28 V, 27:27 Q, 24:24 DIT, 23:23 SSBS, 22:22 PAN, 21:21 SS, 20:20 IL, 19:16 GE, 9:9 E, 8:8 A, 7:7 I, 6:6 F, 5:5 T, 15:10, 26:25 IT, 4:0 M } DSPSR;

// Exception Link Register (Hyp mode)
__register 32 {  } ELR_hyp;

// Error Record ID Register
__register 32 { 15:0 NUM } ERRIDR;

// Error Record Select Register
__register 32 { 15:0 SEL } ERRSELR;

// Selected Error Record Address Register
__register 32 {  } ERXADDR;

// Selected Error Record Address Register 2
__register 32 {  } ERXADDR2;

// Selected Error Record Control Register
__register 32 {  } ERXCTLR;

// Selected Error Record Control Register 2
__register 32 {  } ERXCTLR2;

// Selected Error Record Feature Register
__register 32 {  } ERXFR;

// Selected Error Record Feature Register 2
__register 32 {  } ERXFR2;

// Selected Error Record Miscellaneous Register 0
__register 32 {  } ERXMISC0;

// Selected Error Record Miscellaneous Register 1
__register 32 {  } ERXMISC1;

// Selected Error Record Miscellaneous Register 2
__register 32 {  } ERXMISC2;

// Selected Error Record Miscellaneous Register 3
__register 32 {  } ERXMISC3;

// Selected Error Record Miscellaneous Register 4
__register 32 {  } ERXMISC4;

// Selected Error Record Miscellaneous Register 5
__register 32 {  } ERXMISC5;

// Selected Error Record Miscellaneous Register 6
__register 32 {  } ERXMISC6;

// Selected Error Record Miscellaneous Register 7
__register 32 {  } ERXMISC7;

// Selected Error Record Primary Status Register
__register 32 {  } ERXSTATUS;

// FCSE Process ID register
__register 32 {  } FCSEIDR;

// Floating-Point Exception Control register
__register 32 { 31:31 EX, 30:30 EN, 29:29 DEX, 28:28 FP2V, 27:27 VV, 26:26 TFV, 10:8 VECITR, 7:7 IDF, 4:4 IXF, 3:3 UFF, 2:2 OFF, 1:1 DZF, 0:0 IOF } FPEXC;

// Floating-Point Status and Control Register
__register 32 { 31:31 N, 30:30 Z, 29:29 C, 28:28 V, 27:27 QC, 26:26 AHP, 25:25 DN, 24:24 FZ, 23:22 RMode, 21:20 Stride, 19:19 FZ16, 18:16 Len, 15:15 IDE, 12:12 IXE, 11:11 UFE, 10:10 OFE, 9:9 DZE, 8:8 IOE, 7:7 IDC, 4:4 IXC, 3:3 UFC, 2:2 OFC, 1:1 DZC, 0:0 IOC } FPSCR;

// Floating-Point System ID register
__register 32 { 31:24 Implementer, 23:23 SW, 22:16 Subarchitecture, 15:8 PartNum, 7:4 Variant, 3:0 Revision } FPSID;

// Hyp Auxiliary Configuration Register
__register 32 {  } HACR;

// Hyp Auxiliary Control Register
__register 32 {  } HACTLR;

// Hyp Auxiliary Control Register 2
__register 32 {  } HACTLR2;

// Hyp Auxiliary Data Fault Status Register
__register 32 {  } HADFSR;

// Hyp Auxiliary Instruction Fault Status Register
__register 32 {  } HAIFSR;

// Hyp Auxiliary Memory Attribute Indirection Register 0
__register 32 {  } HAMAIR0;

// Hyp Auxiliary Memory Attribute Indirection Register 1
__register 32 {  } HAMAIR1;

// Hyp Architectural Feature Trap Register
__register 32 { 31:31 TCPAC, 30:30 TAM, 20:20 TTA, 15:15 TASE, 11:11 TCP11, 10:10 TCP10 } HCPTR;

// Hyp Configuration Register
__register 32 { 30:30 TRVM, 29:29 HCD, 27:27 TGE, 26:26 TVM, 25:25 TTLB, 24:24 TPU, 23:23 TPC, 22:22 TSW, 21:21 TAC, 20:20 TIDCP, 19:19 TSC, 18:18 TID3, 17:17 TID2, 16:16 TID1, 15:15 TID0, 14:14 TWE, 13:13 TWI, 12:12 DC, 11:10 BSU, 9:9 FB, 8:8 VA, 7:7 VI, 6:6 VF, 5:5 AMO, 4:4 IMO, 3:3 FMO, 2:2 PTW, 1:1 SWIO, 0:0 VM } HCR;

// Hyp Configuration Register 2
__register 32 { 22:22 TTLBIS, 20:20 TOCU, 18:18 TICAB, 17:17 TID4, 6:6 MIOCNCE, 5:5 TEA, 4:4 TERR, 1:1 ID, 0:0 CD } HCR2;

// Hyp Debug Control Register
__register 32 { 28:28 MTPME, 27:27 TDCC, 26:26 HLP, 23:23 HCCD, 19:19 TTRF, 17:17 HPMD, 11:11 TDRA, 10:10 TDOSA, 9:9 TDA, 8:8 TDE, 7:7 HPME, 6:6 TPM, 5:5 TPMCR, 4:0 HPMN } HDCR;

// Hyp Data Fault Address Register
__register 32 {  } HDFAR;

// Hyp Instruction Fault Address Register
__register 32 {  } HIFAR;

// Hyp Memory Attribute Indirection Register 0
__register 32 {  } HMAIR0;

// Hyp Memory Attribute Indirection Register 1
__register 32 {  } HMAIR1;

// Hyp IPA Fault Address Register
__register 32 { 31:4 FIPA } HPFAR;

// Hyp Reset Management Register
__register 32 { 1:1 RR, 0:0 AA64 } HRMR;

// Hyp System Control Register
__register 32 { 31:31 DSSBS, 30:30 TE, 25:25 EE, 19:19 WXN, 12:12 I, 8:8 SED, 7:7 ITD, 5:5 CP15BEN, 4:4 LSMAOE, 3:3 nTLSMD, 2:2 C, 1:1 A, 0:0 M } HSCTLR;

// Hyp Syndrome Register
__register 32 { 31:26 EC, 25:25 IL, 24:0 ISS } HSR;

// Hyp System Trap Register
__register 32 {  } HSTR;

// Hyp Translation Control Register
__register 32 { 28:28 HWU62, 27:27 HWU61, 26:26 HWU60, 25:25 HWU59, 24:24 HPD, 13:12 SH0, 11:10 ORGN0, 9:8 IRGN0, 2:0 T0SZ } HTCR;

// Hyp Software Thread ID Register
__register 32 {  } HTPIDR;

// Hyp Trace Filter Control Register
__register 32 { 6:5 TS, 3:3 CX, 1:1 E2TRE, 0:0 E0HTRE } HTRFCR;

// Hyp Translation Table Base Register
__register 64 { 47:1 BADDR, 0:0 CnP } HTTBR;

// Hyp Vector Base Address Register
__register 32 {  } HVBAR;

// Interrupt Controller Active Priorities Group 0 Registers
array [0..3] of __register 32 {  } ICC_AP0R;

// Interrupt Controller Active Priorities Group 1 Registers
array [0..3] of __register 32 {  } ICC_AP1R;

// Interrupt Controller Alias Software Generated Interrupt Group 1 Register
__register 64 { 55:48 Aff3, 47:44 RS, 40:40 IRM, 39:32 Aff2, 27:24 INTID, 23:16 Aff1, 15:0 TargetList } ICC_ASGI1R;

// Interrupt Controller Binary Point Register 0
__register 32 { 2:0 BinaryPoint } ICC_BPR0;

// Interrupt Controller Binary Point Register 1
__register 32 { 2:0 BinaryPoint } ICC_BPR1;

// Interrupt Controller Control Register
__register 32 { 19:19 ExtRange, 18:18 RSS, 15:15 A3V, 14:14 SEIS, 13:11 IDbits, 10:8 PRIbits, 6:6 PMHE, 1:1 EOImode, 0:0 CBPR } ICC_CTLR;

// Interrupt Controller Deactivate Interrupt Register
__register 32 { 23:0 INTID } ICC_DIR;

// Interrupt Controller End Of Interrupt Register 0
__register 32 { 23:0 INTID } ICC_EOIR0;

// Interrupt Controller End Of Interrupt Register 1
__register 32 { 23:0 INTID } ICC_EOIR1;

// Interrupt Controller Highest Priority Pending Interrupt Register 0
__register 32 { 23:0 INTID } ICC_HPPIR0;

// Interrupt Controller Highest Priority Pending Interrupt Register 1
__register 32 { 23:0 INTID } ICC_HPPIR1;

// Interrupt Controller Hyp System Register Enable register
__register 32 { 3:3 Enable, 2:2 DIB, 1:1 DFB, 0:0 SRE } ICC_HSRE;

// Interrupt Controller Interrupt Acknowledge Register 0
__register 32 { 23:0 INTID } ICC_IAR0;

// Interrupt Controller Interrupt Acknowledge Register 1
__register 32 { 23:0 INTID } ICC_IAR1;

// Interrupt Controller Interrupt Group 0 Enable register
__register 32 { 0:0 Enable } ICC_IGRPEN0;

// Interrupt Controller Interrupt Group 1 Enable register
__register 32 { 0:0 Enable } ICC_IGRPEN1;

// Interrupt Controller Monitor Control Register
__register 32 { 19:19 ExtRange, 18:18 RSS, 17:17 nDS, 15:15 A3V, 14:14 SEIS, 13:11 IDbits, 10:8 PRIbits, 6:6 PMHE, 5:5 RM, 4:4 EOImode_EL1NS, 3:3 EOImode_EL1S, 2:2 EOImode_EL3, 1:1 CBPR_EL1NS, 0:0 CBPR_EL1S } ICC_MCTLR;

// Interrupt Controller Monitor Interrupt Group 1 Enable register
__register 32 { 1:1 EnableGrp1S, 0:0 EnableGrp1NS } ICC_MGRPEN1;

// Interrupt Controller Monitor System Register Enable register
__register 32 { 3:3 Enable, 2:2 DIB, 1:1 DFB, 0:0 SRE } ICC_MSRE;

// Interrupt Controller Interrupt Priority Mask Register
__register 32 { 7:0 Priority } ICC_PMR;

// Interrupt Controller Running Priority Register
__register 32 { 7:0 Priority } ICC_RPR;

// Interrupt Controller Software Generated Interrupt Group 0 Register
__register 64 { 55:48 Aff3, 47:44 RS, 40:40 IRM, 39:32 Aff2, 27:24 INTID, 23:16 Aff1, 15:0 TargetList } ICC_SGI0R;

// Interrupt Controller Software Generated Interrupt Group 1 Register
__register 64 { 55:48 Aff3, 47:44 RS, 40:40 IRM, 39:32 Aff2, 27:24 INTID, 23:16 Aff1, 15:0 TargetList } ICC_SGI1R;

// Interrupt Controller System Register Enable register
__register 32 { 2:2 DIB, 1:1 DFB, 0:0 SRE } ICC_SRE;

// Interrupt Controller Hyp Active Priorities Group 0 Registers
array [0..3] of __register 32 {  } ICH_AP0R;

// Interrupt Controller Hyp Active Priorities Group 1 Registers
array [0..3] of __register 32 {  } ICH_AP1R;

// Interrupt Controller End of Interrupt Status Register
__register 32 {  } ICH_EISR;

// Interrupt Controller Empty List Register Status Register
__register 32 {  } ICH_ELRSR;

// Interrupt Controller Hyp Control Register
__register 32 { 31:27 EOIcount, 14:14 TDIR, 13:13 TSEI, 12:12 TALL1, 11:11 TALL0, 10:10 TC, 8:8 vSGIEOICount, 7:7 VGrp1DIE, 6:6 VGrp1EIE, 5:5 VGrp0DIE, 4:4 VGrp0EIE, 3:3 NPIE, 2:2 LRENPIE, 1:1 UIE, 0:0 En } ICH_HCR;

// Interrupt Controller List Registers
array [0..15] of __register 32 { 31:30 State, 29:29 HW, 28:28 Group, 23:16 Priority, 12:0 pINTID } ICH_LRC;

// Interrupt Controller List Registers
array [0..15] of __register 32 { 31:0 vINTID } ICH_LR;

// Interrupt Controller Maintenance Interrupt State Register
__register 32 { 7:7 VGrp1D, 6:6 VGrp1E, 5:5 VGrp0D, 4:4 VGrp0E, 3:3 NP, 2:2 LRENP, 1:1 U, 0:0 EOI } ICH_MISR;

// Interrupt Controller Virtual Machine Control Register
__register 32 { 31:24 VPMR, 23:21 VBPR0, 20:18 VBPR1, 9:9 VEOIM, 4:4 VCBPR, 3:3 VFIQEn, 2:2 VAckCtl, 1:1 VENG1, 0:0 VENG0 } ICH_VMCR;

// Interrupt Controller VGIC Type Register
__register 32 { 31:29 PRIbits, 28:26 PREbits, 25:23 IDbits, 22:22 SEIS, 21:21 A3V, 20:20 nV4, 19:19 TDS, 4:0 ListRegs } ICH_VTR;

// Interrupt Controller Virtual Active Priorities Group 0 Registers
array [0..3] of __register 32 {  } ICV_AP0R;

// Interrupt Controller Virtual Active Priorities Group 1 Registers
array [0..3] of __register 32 {  } ICV_AP1R;

// Interrupt Controller Virtual Binary Point Register 0
__register 32 { 2:0 BinaryPoint } ICV_BPR0;

// Interrupt Controller Virtual Binary Point Register 1
__register 32 { 2:0 BinaryPoint } ICV_BPR1;

// Interrupt Controller Virtual Control Register
__register 32 { 19:19 ExtRange, 18:18 RSS, 15:15 A3V, 14:14 SEIS, 13:11 IDbits, 10:8 PRIbits, 1:1 EOImode, 0:0 CBPR } ICV_CTLR;

// Interrupt Controller Deactivate Virtual Interrupt Register
__register 32 { 23:0 INTID } ICV_DIR;

// Interrupt Controller Virtual End Of Interrupt Register 0
__register 32 { 23:0 INTID } ICV_EOIR0;

// Interrupt Controller Virtual End Of Interrupt Register 1
__register 32 { 23:0 INTID } ICV_EOIR1;

// Interrupt Controller Virtual Highest Priority Pending Interrupt Register 0
__register 32 { 23:0 INTID } ICV_HPPIR0;

// Interrupt Controller Virtual Highest Priority Pending Interrupt Register 1
__register 32 { 23:0 INTID } ICV_HPPIR1;

// Interrupt Controller Virtual Interrupt Acknowledge Register 0
__register 32 { 23:0 INTID } ICV_IAR0;

// Interrupt Controller Virtual Interrupt Acknowledge Register 1
__register 32 { 23:0 INTID } ICV_IAR1;

// Interrupt Controller Virtual Interrupt Group 0 Enable register
__register 32 { 0:0 Enable } ICV_IGRPEN0;

// Interrupt Controller Virtual Interrupt Group 1 Enable register
__register 32 { 0:0 Enable } ICV_IGRPEN1;

// Interrupt Controller Virtual Interrupt Priority Mask Register
__register 32 { 7:0 Priority } ICV_PMR;

// Interrupt Controller Virtual Running Priority Register
__register 32 { 7:0 Priority } ICV_RPR;

// Auxiliary Feature Register 0
__register 32 {  } ID_AFR0;

// Debug Feature Register 0
__register 32 { 31:28 TraceFilt, 27:24 PerfMon, 23:20 MProfDbg, 11:8 MMapDbg, 7:4 CopSDbg, 3:0 CopDbg } ID_DFR0;

// Debug Feature Register 1
__register 32 { 3:0 MTPMU } ID_DFR1;

// Instruction Set Attribute Register 0
__register 32 { 27:24 Divide, 23:20 Debug, 19:16 Coproc, 15:12 CmpBranch, 11:8 BitField, 7:4 BitCount, 3:0 Swap } ID_ISAR0;

// Instruction Set Attribute Register 1
__register 32 { 31:28 Jazelle, 27:24 Interwork, 23:20 Immediate, 19:16 IfThen, 15:12 Extend, 11:8 Except_AR, 7:4 Except, 3:0 Endian } ID_ISAR1;

// Instruction Set Attribute Register 2
__register 32 { 31:28 Reversal, 27:24 PSR_AR, 23:20 MultU, 19:16 MultS, 15:12 Mult, 11:8 MultiAccessInt, 7:4 MemHint, 3:0 LoadStore } ID_ISAR2;

// Instruction Set Attribute Register 3
__register 32 { 31:28 T32EE, 27:24 TrueNOP, 23:20 T32Copy, 19:16 TabBranch, 15:12 SynchPrim, 11:8 SVC, 7:4 SIMD, 3:0 Saturate } ID_ISAR3;

// Instruction Set Attribute Register 4
__register 32 { 31:28 SWP_frac, 27:24 PSR_M, 23:20 SynchPrim_frac, 19:16 Barrier, 15:12 SMC, 11:8 Writeback, 7:4 WithShifts, 3:0 Unpriv } ID_ISAR4;

// Instruction Set Attribute Register 5
__register 32 { 31:28 VCMA, 27:24 RDM, 19:16 CRC32, 15:12 SHA2, 11:8 SHA1, 7:4 AES, 3:0 SEVL } ID_ISAR5;

// Instruction Set Attribute Register 6
__register 32 { 27:24 I8MM, 23:20 BF16, 19:16 SPECRES, 15:12 SB, 11:8 FHM, 7:4 DP, 3:0 JSCVT } ID_ISAR6;

// Memory Model Feature Register 0
__register 32 { 31:28 InnerShr, 27:24 FCSE, 23:20 AuxReg, 19:16 TCM, 15:12 ShareLvl, 11:8 OuterShr, 7:4 PMSA, 3:0 VMSA } ID_MMFR0;

// Memory Model Feature Register 1
__register 32 { 31:28 BPred, 27:24 L1TstCln, 23:20 L1Uni, 19:16 L1Hvd, 15:12 L1UniSW, 11:8 L1HvdSW, 7:4 L1UniVA, 3:0 L1HvdVA } ID_MMFR1;

// Memory Model Feature Register 2
__register 32 { 31:28 HWAccFlg, 27:24 WFIStall, 23:20 MemBarr, 19:16 UniTLB, 15:12 HvdTLB, 11:8 L1HvdRng, 7:4 L1HvdBG, 3:0 L1HvdFG } ID_MMFR2;

// Memory Model Feature Register 3
__register 32 { 31:28 Supersec, 27:24 CMemSz, 23:20 CohWalk, 19:16 PAN, 15:12 MaintBcst, 11:8 BPMaint, 7:4 CMaintSW, 3:0 CMaintVA } ID_MMFR3;

// Memory Model Feature Register 4
__register 32 { 31:28 EVT, 27:24 CCIDX, 23:20 LSM, 19:16 HPDS, 15:12 CnP, 11:8 XNX, 7:4 AC2, 3:0 SpecSEI } ID_MMFR4;

// Memory Model Feature Register 5
__register 32 { 3:0 ETS } ID_MMFR5;

// Processor Feature Register 0
__register 32 { 31:28 RAS, 27:24 DIT, 23:20 AMU, 19:16 CSV2, 15:12 State3, 11:8 State2, 7:4 State1, 3:0 State0 } ID_PFR0;

// Processor Feature Register 1
__register 32 { 31:28 GIC, 27:24 Virt_frac, 23:20 Sec_frac, 19:16 GenTimer, 15:12 Virtualization, 11:8 MProgMod, 7:4 Security, 3:0 ProgMod } ID_PFR1;

// Processor Feature Register 2
__register 32 { 11:8 RAS_frac, 7:4 SSBS, 3:0 CSV3 } ID_PFR2;

// Instruction Fault Address Register
__register 32 {  } IFAR;

// Instruction Fault Status Register
__register 32 { 16:16 FnV, 12:12 ExT, 9:9 LPAE, 5:0 STATUS, 10:10, 3:0 FS } IFSR;

// Interrupt Status Register
__register 32 { 8:8 A, 7:7 I, 6:6 F } ISR;

// Jazelle ID Register
__register 32 {  } JIDR;

// Jazelle Main Configuration Register
__register 32 {  } JMCR;

// Jazelle OS Control Register
__register 32 {  } JOSCR;

// Memory Attribute Indirection Register 0
__register 32 {  } MAIR0;

// Memory Attribute Indirection Register 1
__register 32 {  } MAIR1;

// Main ID Register
__register 32 { 31:24 Implementer, 23:20 Variant, 19:16 Architecture, 15:4 PartNum, 3:0 Revision } MIDR;

// Multiprocessor Affinity Register
__register 32 { 31:31 M, 30:30 U, 24:24 MT, 23:16 Aff2, 15:8 Aff1, 7:0 Aff0 } MPIDR;

// Monitor Vector Base Address Register
__register 32 { 4:0 Reserved } MVBAR;

// Media and VFP Feature Register 0
__register 32 { 31:28 FPRound, 27:24 FPShVec, 23:20 FPSqrt, 19:16 FPDivide, 15:12 FPTrap, 11:8 FPDP, 7:4 FPSP, 3:0 SIMDReg } MVFR0;

// Media and VFP Feature Register 1
__register 32 { 31:28 SIMDFMAC, 27:24 FPHP, 23:20 SIMDHP, 19:16 SIMDSP, 15:12 SIMDInt, 11:8 SIMDLS, 7:4 FPDNaN, 3:0 FPFtZ } MVFR1;

// Media and VFP Feature Register 2
__register 32 { 7:4 FPMisc, 3:0 SIMDMisc } MVFR2;

// Normal Memory Remap Register
__register 32 {  } NMRR;

// Non-Secure Access Control Register
__register 32 { 20:20 NSTRCDIS, 15:15 NSASEDIS, 11:11 cp11, 10:10 cp10 } NSACR;

// Physical Address Register
__register 64 { 39:12 PA, 11:11 LPAE, 10:10 NOS, 9:9 NS, 8:7 SH, 1:1 SS, 0:0 F, 63:56 ATTR, 9:9 FSTAGE, 8:8 S2WLK, 6:1 FST, 6:4 Inner, 3:2 Outer, 6:6, 5:1 FS } PAR;

// Performance Monitors Cycle Count Filter Register
__register 32 { 31:31 P, 30:30 U, 29:29 NSK, 28:28 NSU, 27:27 NSH } PMCCFILTR;

// Performance Monitors Cycle Count Register
__register 64 { 63:0 CCNT } PMCCNTR;

// Performance Monitors Common Event Identification register 0
__register 32 {  } PMCEID0;

// Performance Monitors Common Event Identification register 1
__register 32 {  } PMCEID1;

// Performance Monitors Common Event Identification register 2
__register 32 {  } PMCEID2;

// Performance Monitors Common Event Identification register 3
__register 32 {  } PMCEID3;

// Performance Monitors Count Enable Clear register
__register 32 { 31:31 C } PMCNTENCLR;

// Performance Monitors Count Enable Set register
__register 32 { 31:31 C } PMCNTENSET;

// Performance Monitors Control Register
__register 32 { 31:24 IMP, 23:16 IDCODE, 15:11 N, 7:7 LP, 6:6 LC, 5:5 DP, 4:4 X, 3:3 D, 2:2 C, 1:1 P, 0:0 E } PMCR;

// Performance Monitors Event Count Registers
array [0..30] of __register 32 {  } PMEVCNTR;

// Performance Monitors Event Type Registers
array [0..30] of __register 32 { 31:31 P, 30:30 U, 29:29 NSK, 28:28 NSU, 27:27 NSH, 25:25 MT, 15:10, 9:0 evtCount } PMEVTYPER;

// Performance Monitors Interrupt Enable Clear register
__register 32 { 31:31 C } PMINTENCLR;

// Performance Monitors Interrupt Enable Set register
__register 32 { 31:31 C } PMINTENSET;

// Performance Monitors Machine Identification Register
__register 32 { 7:0 SLOTS } PMMIR;

// Performance Monitors Overflow Flag Status Register
__register 32 { 31:31 C } PMOVSR;

// Performance Monitors Overflow Flag Status Set register
__register 32 { 31:31 C } PMOVSSET;

// Performance Monitors Event Counter Selection Register
__register 32 { 4:0 SEL } PMSELR;

// Performance Monitors Software Increment register
__register 32 {  } PMSWINC;

// Performance Monitors User Enable Register
__register 32 { 3:3 ER, 2:2 CR, 1:1 SW, 0:0 EN } PMUSERENR;

// Performance Monitors Selected Event Count Register
__register 32 {  } PMXEVCNTR;

// Performance Monitors Selected Event Type Register
__register 32 {  } PMXEVTYPER;

// Primary Region Remap Register
__register 32 { 19:19 NS1, 18:18 NS0, 17:17 DS1, 16:16 DS0 } PRRR;

// Revision ID Register
__register 32 {  } REVIDR;

// Reset Management Register
__register 32 { 1:1 RR, 0:0 AA64 } RMR;

// Reset Vector Base Address Register
__register 32 {  } RVBAR;

// Secure Configuration Register
__register 32 { 15:15 TERR, 13:13 TWE, 12:12 TWI, 9:9 SIF, 8:8 HCE, 7:7 SCD, 6:6 nET, 5:5 AW, 4:4 FW, 3:3 EA, 2:2 FIQ, 1:1 IRQ, 0:0 NS } SCR;

// System Control Register
__register 32 { 31:31 DSSBS, 30:30 TE, 29:29 AFE, 28:28 TRE, 25:25 EE, 23:23 SPAN, 20:20 UWXN, 19:19 WXN, 18:18 nTWE, 16:16 nTWI, 13:13 V, 12:12 I, 10:10 EnRCTX, 8:8 SED, 7:7 ITD, 6:6 UNK, 5:5 CP15BEN, 4:4 LSMAOE, 3:3 nTLSMD, 2:2 C, 1:1 A, 0:0 M } SCTLR;

// Secure Debug Control Register
__register 32 { 28:28 MTPME, 27:27 TDCC, 23:23 SCCD, 21:21 EPMAD, 20:20 EDAD, 19:19 TTRF, 18:18 STE, 17:17 SPME, 15:14 SPD } SDCR;

// Secure Debug Enable Register
__register 32 { 1:1 SUNIDEN, 0:0 SUIDEN } SDER;

// Saved Program Status Register
__register 32 { 31:31 N, 30:30 Z, 29:29 C, 28:28 V, 27:27 Q, 24:24 J, 23:23 SSBS, 22:22 PAN, 21:21 DIT, 20:20 IL, 19:16 GE, 9:9 E, 8:8 A, 7:7 I, 6:6 F, 5:5 T, 15:10, 26:25 IT, 4:4, 3:0 M } SPSR;

// Saved Program Status Register (Abort mode)
__register 32 { 31:31 N, 30:30 Z, 29:29 C, 28:28 V, 27:27 Q, 24:24 J, 23:23 SSBS, 22:22 PAN, 21:21 DIT, 20:20 IL, 19:16 GE, 9:9 E, 8:8 A, 7:7 I, 6:6 F, 5:5 T, 15:10, 26:25 IT, 4:0 M } SPSR_abt;

// Saved Program Status Register (FIQ mode)
__register 32 { 31:31 N, 30:30 Z, 29:29 C, 28:28 V, 27:27 Q, 24:24 J, 23:23 SSBS, 22:22 PAN, 21:21 DIT, 20:20 IL, 19:16 GE, 9:9 E, 8:8 A, 7:7 I, 6:6 F, 5:5 T, 15:10, 26:25 IT, 4:0 M } SPSR_fiq;

// Saved Program Status Register (Hyp mode)
__register 32 { 31:31 N, 30:30 Z, 29:29 C, 28:28 V, 27:27 Q, 24:24 J, 23:23 SSBS, 22:22 PAN, 21:21 DIT, 20:20 IL, 19:16 GE, 9:9 E, 8:8 A, 7:7 I, 6:6 F, 5:5 T, 15:10, 26:25 IT, 4:0 M } SPSR_hyp;

// Saved Program Status Register (IRQ mode)
__register 32 { 31:31 N, 30:30 Z, 29:29 C, 28:28 V, 27:27 Q, 24:24 J, 23:23 SSBS, 22:22 PAN, 21:21 DIT, 20:20 IL, 19:16 GE, 9:9 E, 8:8 A, 7:7 I, 6:6 F, 5:5 T, 15:10, 26:25 IT, 4:0 M } SPSR_irq;

// Saved Program Status Register (Monitor mode)
__register 32 { 31:31 N, 30:30 Z, 29:29 C, 28:28 V, 27:27 Q, 24:24 J, 23:23 SSBS, 22:22 PAN, 21:21 DIT, 20:20 IL, 19:16 GE, 9:9 E, 8:8 A, 7:7 I, 6:6 F, 5:5 T, 15:10, 26:25 IT, 4:0 M } SPSR_mon;

// Saved Program Status Register (Supervisor mode)
__register 32 { 31:31 N, 30:30 Z, 29:29 C, 28:28 V, 27:27 Q, 24:24 J, 23:23 SSBS, 22:22 PAN, 21:21 DIT, 20:20 IL, 19:16 GE, 9:9 E, 8:8 A, 7:7 I, 6:6 F, 5:5 T, 15:10, 26:25 IT, 4:0 M } SPSR_svc;

// Saved Program Status Register (Undefined mode)
__register 32 { 31:31 N, 30:30 Z, 29:29 C, 28:28 V, 27:27 Q, 24:24 J, 23:23 SSBS, 22:22 PAN, 21:21 DIT, 20:20 IL, 19:16 GE, 9:9 E, 8:8 A, 7:7 I, 6:6 F, 5:5 T, 15:10, 26:25 IT, 4:0 M } SPSR_und;

// TCM Type Register
__register 32 {  } TCMTR;

// TLB Type Register
__register 32 { 0:0 nU } TLBTR;

// PL1 Software Thread ID Register
__register 32 {  } TPIDRPRW;

// PL0 Read-Only Software Thread ID Register
__register 32 {  } TPIDRURO;

// PL0 Read/Write Software Thread ID Register
__register 32 {  } TPIDRURW;

// Trace Filter Control Register
__register 32 { 6:5 TS, 1:1 E1TRE, 0:0 E0TRE } TRFCR;

// Translation Table Base Control Register
__register 32 { 31:31 EAE, 5:5 PD1, 4:4 PD0, 2:0 N, 29:28 SH1, 27:26 ORGN1, 25:24 IRGN1, 23:23 EPD1, 22:22 A1, 18:16 T1SZ, 13:12 SH0, 11:10 ORGN0, 9:8 IRGN0, 7:7 EPD0, 6:6 T2E, 2:0 T0SZ } TTBCR;

// Translation Table Base Control Register 2
__register 32 { 18:18 HWU162, 17:17 HWU161, 16:16 HWU160, 15:15 HWU159, 14:14 HWU062, 13:13 HWU061, 12:12 HWU060, 11:11 HWU059, 10:10 HPD1, 9:9 HPD0 } TTBCR2;

// Translation Table Base Register 0
__register 64 { 31:7 TTB0, 5:5 NOS, 4:3 RGN, 2:2 IMP, 1:1 S, 55:48 ASID, 47:1 BADDR, 0:0 CnP, 0:0, 6:6 IRGN } TTBR0;

// Translation Table Base Register 1
__register 64 { 31:7 TTB1, 5:5 NOS, 4:3 RGN, 2:2 IMP, 1:1 S, 55:48 ASID, 47:1 BADDR, 0:0 CnP, 6:6, 0:0 IRGN } TTBR1;

// Vector Base Address Register
__register 32 {  } VBAR;

// Virtual SError Exception Syndrome Register
__register 32 { 15:14 AET, 12:12 ExT } VDFSR;

// Virtual Deferred Interrupt Status Register
__register 32 { 31:31 A, 15:14 AET, 12:12 ExT, 9:9 LPAE, 5:0 STATUS, 10:10, 3:0 FS } VDISR;

// Virtualization Multiprocessor ID Register
__register 32 { 31:31 M, 30:30 U, 24:24 MT, 23:16 Aff2, 15:8 Aff1, 7:0 Aff0 } VMPIDR;

// Virtualization Processor ID Register
__register 32 { 31:24 Implementer, 23:20 Variant, 19:16 Architecture, 15:4 PartNum, 3:0 Revision } VPIDR;

// Virtualization Translation Control Register
__register 32 { 28:28 HWU62, 27:27 HWU61, 26:26 HWU60, 25:25 HWU59, 13:12 SH0, 11:10 ORGN0, 9:8 IRGN0, 7:6 SL0, 4:4 S, 3:0 T0SZ } VTCR;

// Virtualization Translation Table Base Register
__register 64 { 55:48 VMID, 47:1 BADDR, 0:0 CnP } VTTBR;

// Auxiliary Control Register (EL1)
__register 64 {  } ACTLR_EL1;

// Auxiliary Control Register (EL2)
__register 64 {  } ACTLR_EL2;

// Auxiliary Control Register (EL3)
__register 64 {  } ACTLR_EL3;

// Auxiliary Fault Status Register 0 (EL1)
__register 32 {  } AFSR0_EL1;

// Auxiliary Fault Status Register 0 (EL2)
__register 32 {  } AFSR0_EL2;

// Auxiliary Fault Status Register 0 (EL3)
__register 32 {  } AFSR0_EL3;

// Auxiliary Fault Status Register 1 (EL1)
__register 32 {  } AFSR1_EL1;

// Auxiliary Fault Status Register 1 (EL2)
__register 32 {  } AFSR1_EL2;

// Auxiliary Fault Status Register 1 (EL3)
__register 32 {  } AFSR1_EL3;

// Auxiliary ID Register
__register 32 {  } AIDR_EL1;

// Auxiliary Memory Attribute Indirection Register (EL1)
__register 64 {  } AMAIR_EL1;

// Auxiliary Memory Attribute Indirection Register (EL2)
__register 64 {  } AMAIR_EL2;

// Auxiliary Memory Attribute Indirection Register (EL3)
__register 64 {  } AMAIR_EL3;

// Activity Monitors Configuration Register
__register 64 { 31:28 NCG, 24:24 HDBG, 13:8 SIZE, 7:0 N } AMCFGR_EL0;

// Activity Monitors Counter Group 1 Identification Register
__register 64 {  } AMCG1IDR_EL0;

// Activity Monitors Counter Group Configuration Register
__register 64 { 15:8 CG1NC, 7:0 CG0NC } AMCGCR_EL0;

// Activity Monitors Count Enable Clear Register 0
__register 64 {  } AMCNTENCLR0_EL0;

// Activity Monitors Count Enable Clear Register 1
__register 64 {  } AMCNTENCLR1_EL0;

// Activity Monitors Count Enable Set Register 0
__register 64 {  } AMCNTENSET0_EL0;

// Activity Monitors Count Enable Set Register 1
__register 64 {  } AMCNTENSET1_EL0;

// Activity Monitors Control Register
__register 64 { 17:17 CG1RZ, 10:10 HDBG } AMCR_EL0;

// Activity Monitors Event Counter Registers 0
array [0..15] of __register 64 { 63:0 ACNT } AMEVCNTR0_EL0;

// Activity Monitors Event Counter Registers 1
array [0..15] of __register 64 { 63:0 ACNT } AMEVCNTR1_EL0;

// Activity Monitors Event Counter Virtual Offset Registers 0
array [0..15] of __register 64 {  } AMEVCNTVOFF0_EL2;

// Activity Monitors Event Counter Virtual Offset Registers 1
array [0..15] of __register 64 {  } AMEVCNTVOFF1_EL2;

// Activity Monitors Event Type Registers 0
array [0..15] of __register 64 { 15:0 evtCount } AMEVTYPER0_EL0;

// Activity Monitors Event Type Registers 1
array [0..15] of __register 64 { 15:0 evtCount } AMEVTYPER1_EL0;

// Activity Monitors User Enable Register
__register 64 { 0:0 EN } AMUSERENR_EL0;

// Pointer Authentication Key A for Data (bits[127:64]) 
__register 64 {  } APDAKeyHi_EL1;

// Pointer Authentication Key A for Data (bits[63:0]) 
__register 64 {  } APDAKeyLo_EL1;

// Pointer Authentication Key B for Data (bits[127:64]) 
__register 64 {  } APDBKeyHi_EL1;

// Pointer Authentication Key B for Data (bits[63:0]) 
__register 64 {  } APDBKeyLo_EL1;

// Pointer Authentication Key A for Code (bits[127:64]) 
__register 64 {  } APGAKeyHi_EL1;

// Pointer Authentication Key A for Code (bits[63:0]) 
__register 64 {  } APGAKeyLo_EL1;

// Pointer Authentication Key A for Instruction (bits[127:64]) 
__register 64 {  } APIAKeyHi_EL1;

// Pointer Authentication Key A for Instruction (bits[63:0]) 
__register 64 {  } APIAKeyLo_EL1;

// Pointer Authentication Key B for Instruction (bits[127:64]) 
__register 64 {  } APIBKeyHi_EL1;

// Pointer Authentication Key B for Instruction (bits[63:0]) 
__register 64 {  } APIBKeyLo_EL1;

// Current Cache Size ID Register 2
__register 32 { 23:0 NumSets } CCSIDR2_EL1;

// Current Cache Size ID Register
__register 32 { 27:13 NumSets, 12:3 Associativity, 2:0 LineSize } CCSIDR_EL1;

// Cache Level ID Register
__register 64 { 32:30 ICB, 29:27 LoUU, 26:24 LoC, 23:21 LoUIS } CLIDR_EL1;

// Counter-timer Frequency register
__register 32 {  } CNTFRQ_EL0;

// Counter-timer Hypervisor Control register
__register 32 { 17:17 EVNTIS, 16:16 EL1NVVCT, 15:15 EL1NVPCT, 14:14 EL1TVCT, 13:13 EL1TVT, 12:12 ECV, 11:11 EL1PTEN, 0:0 EL1PCTEN, 9:9 EL0PTEN, 8:8 EL0VTEN, 7:4 EVNTI, 3:3 EVNTDIR, 2:2 EVNTEN, 1:1 EL0VCTEN, 0:0 EL0PCTEN, 1:1 EL1PCEN } CNTHCTL_EL2;

// Counter-timer Secure Physical Timer Control register (EL2)
__register 32 { 2:2 ISTATUS, 1:1 IMASK, 0:0 ENABLE } CNTHPS_CTL_EL2;

// Counter-timer Secure Physical Timer CompareValue register (EL2)
__register 64 { 63:0 CompareValue } CNTHPS_CVAL_EL2;

// Counter-timer Secure Physical Timer TimerValue register (EL2)
__register 32 { 31:0 TimerValue } CNTHPS_TVAL_EL2;

// Counter-timer Hypervisor Physical Timer Control register
__register 32 { 2:2 ISTATUS, 1:1 IMASK, 0:0 ENABLE } CNTHP_CTL_EL2;

// Counter-timer Physical Timer CompareValue register (EL2)
__register 64 { 63:0 CompareValue } CNTHP_CVAL_EL2;

// Counter-timer Physical Timer TimerValue register (EL2)
__register 32 { 31:0 TimerValue } CNTHP_TVAL_EL2;

// Counter-timer Secure Virtual Timer Control register (EL2)
__register 32 { 2:2 ISTATUS, 1:1 IMASK, 0:0 ENABLE } CNTHVS_CTL_EL2;

// Counter-timer Secure Virtual Timer CompareValue register (EL2)
__register 64 { 63:0 CompareValue } CNTHVS_CVAL_EL2;

// Counter-timer Secure Virtual Timer TimerValue register (EL2)
__register 32 { 31:0 TimerValue } CNTHVS_TVAL_EL2;

// Counter-timer Virtual Timer Control register (EL2)
__register 32 { 2:2 ISTATUS, 1:1 IMASK, 0:0 ENABLE } CNTHV_CTL_EL2;

// Counter-timer Virtual Timer CompareValue register (EL2)
__register 64 { 63:0 CompareValue } CNTHV_CVAL_EL2;

// Counter-timer Virtual Timer TimerValue Register (EL2)
__register 32 { 31:0 TimerValue } CNTHV_TVAL_EL2;

// Counter-timer Kernel Control register
__register 32 { 17:17 EVNTIS, 9:9 EL0PTEN, 8:8 EL0VTEN, 7:4 EVNTI, 3:3 EVNTDIR, 2:2 EVNTEN, 1:1 EL0VCTEN, 0:0 EL0PCTEN } CNTKCTL_EL1;

// Counter-timer Self-Synchronized Physical Count register
__register 64 {  } CNTPCTSS_EL0;

// Counter-timer Physical Count register
__register 64 {  } CNTPCT_EL0;

// Counter-timer Physical Offset register
__register 64 {  } CNTPOFF_EL2;

// Counter-timer Physical Secure Timer Control register
__register 32 { 2:2 ISTATUS, 1:1 IMASK, 0:0 ENABLE } CNTPS_CTL_EL1;

// Counter-timer Physical Secure Timer CompareValue register
__register 64 { 63:0 CompareValue } CNTPS_CVAL_EL1;

// Counter-timer Physical Secure Timer TimerValue register
__register 32 { 31:0 TimerValue } CNTPS_TVAL_EL1;

// Counter-timer Physical Timer Control register
__register 32 { 2:2 ISTATUS, 1:1 IMASK, 0:0 ENABLE } CNTP_CTL_EL0;

// Counter-timer Physical Timer CompareValue register
__register 64 { 63:0 CompareValue } CNTP_CVAL_EL0;

// Counter-timer Physical Timer TimerValue register
__register 32 { 31:0 TimerValue } CNTP_TVAL_EL0;

// Counter-timer Self-Synchronized Virtual Count register
__register 64 {  } CNTVCTSS_EL0;

// Counter-timer Virtual Count register
__register 64 {  } CNTVCT_EL0;

// Counter-timer Virtual Offset register
__register 64 {  } CNTVOFF_EL2;

// Counter-timer Virtual Timer Control register
__register 32 { 2:2 ISTATUS, 1:1 IMASK, 0:0 ENABLE } CNTV_CTL_EL0;

// Counter-timer Virtual Timer CompareValue register
__register 64 { 63:0 CompareValue } CNTV_CVAL_EL0;

// Counter-timer Virtual Timer TimerValue register
__register 32 { 31:0 TimerValue } CNTV_TVAL_EL0;

// Context ID Register (EL1)
__register 32 { 31:0 PROCID } CONTEXTIDR_EL1;

// Context ID Register (EL2)
__register 32 { 31:0 PROCID } CONTEXTIDR_EL2;

// Architectural Feature Access Control Register
__register 32 { 28:28 TTA, 21:20 FPEN, 17:16 ZEN } CPACR_EL1;

// Architectural Feature Trap Register (EL2)
__register 32 { 31:31 TCPAC, 30:30 TAM, 20:20 TTA, 21:20 FPEN, 17:16 ZEN, 10:10 TFP, 8:8 TZ } CPTR_EL2;

// Architectural Feature Trap Register (EL3)
__register 32 { 31:31 TCPAC, 30:30 TAM, 20:20 TTA, 10:10 TFP, 8:8 EZ } CPTR_EL3;

// Cache Size Selection Register
__register 32 { 4:4 TnD, 3:1 Level, 0:0 InD } CSSELR_EL1;

// Cache Type Register
__register 32 { 37:32 TminLine, 29:29 DIC, 28:28 IDC, 27:24 CWG, 23:20 ERG, 19:16 DminLine, 15:14 L1Ip, 3:0 IminLine } CTR_EL0;

// Current Exception Level
__register 64 { 3:2 EL } CurrentEL;

// Domain Access Control Register
__register 32 {  } DACR32_EL2;

// Interrupt Mask Bits
__register 32 { 9:9 D, 8:8 A, 7:7 I, 6:6 F } DAIF;

// Debug Authentication Status register
__register 32 { 7:6 SNID, 5:4 SID, 3:2 NSNID, 1:0 NSID } DBGAUTHSTATUS_EL1;

// Debug Breakpoint Control Registers
array [0..15] of __register 32 { 23:20 BT, 19:16 LBN, 15:14 SSC, 13:13 HMC, 8:5 BAS, 2:1 PMC, 0:0 E } DBGBCR_EL1;

// Debug Breakpoint Value Registers
array [0..15] of __register 64 { 31:0 ContextID, 63:32 ContextID2, 63:53, 52:49 RESS, 52:49, 48:2 VA, 47:40, 47:40, 39:32, 39:32 VMID } DBGBVR_EL1;

// Debug CLAIM Tag Clear register
__register 32 { 7:0 CLAIM } DBGCLAIMCLR_EL1;

// Debug CLAIM Tag Set register
__register 32 { 7:0 CLAIM } DBGCLAIMSET_EL1;

// Debug Data Transfer Register, Receive
__register 32 {  } DBGDTRRX_EL0;

// Debug Data Transfer Register, Transmit
__register 32 {  } DBGDTRTX_EL0;

// Debug Data Transfer Register, half-duplex
__register 64 { 63:32 HighWord, 31:0 LowWord } DBGDTR_EL0;

// Debug Power Control Register
__register 32 { 0:0 CORENPDRQ } DBGPRCR_EL1;

// Debug Vector Catch Register
__register 32 { 31:31 NSF, 30:30 NSI, 28:28 NSD, 27:27 NSP, 26:26 NSS, 25:25 NSU, 7:7 SF, 6:6 SI, 4:4 SD, 3:3 SP, 2:2 SS, 1:1 SU, 7:7 F, 6:6 I, 4:4 D, 3:3 P, 2:2 S, 1:1 U } DBGVCR32_EL2;

// Debug Watchpoint Control Registers
array [0..15] of __register 32 { 28:24 MASK, 20:20 WT, 19:16 LBN, 15:14 SSC, 13:13 HMC, 12:5 BAS, 4:3 LSC, 2:1 PAC, 0:0 E } DBGWCR_EL1;

// Debug Watchpoint Value Registers
array [0..15] of __register 64 { 63:53, 52:49 RESS, 52:49, 48:2 VA } DBGWVR_EL1;

// Data Cache Zero ID register
__register 32 { 4:4 DZP, 3:0 BS } DCZID_EL0;

// Deferred Interrupt Status Register
__register 64 { 31:31 A, 24:24 IDS, 12:10 AET, 9:9 EA, 5:0 DFSC, 23:0 ISS } DISR_EL1;

// Data Independent Timing
__register 32 { 24:24 DIT } DIT;

// Debug Link Register
__register 64 {  } DLR_EL0;

// Debug Saved Program Status Register
__register 32 { 31:31 N, 30:30 Z, 29:29 C, 28:28 V, 27:27 Q, 24:24 DIT, 12:12 SSBS, 22:22 PAN, 21:21 SS, 20:20 IL, 19:16 GE, 9:9 E, 8:8 A, 7:7 I, 6:6 F, 5:5 T, 25:25 TCO, 23:23 UAO, 11:10 BTYPE, 9:9 D, 15:10, 26:25 IT, 4:4, 4:4, 3:0, 3:0 M } DSPSR_EL0;

// Exception Link Register (EL1)
__register 64 {  } ELR_EL1;

// Exception Link Register (EL2)
__register 64 {  } ELR_EL2;

// Exception Link Register (EL3)
__register 64 {  } ELR_EL3;

// Error Record ID Register
__register 64 { 15:0 NUM } ERRIDR_EL1;

// Error Record Select Register
__register 64 { 15:0 SEL } ERRSELR_EL1;

// Selected Error Record Address Register
__register 64 {  } ERXADDR_EL1;

// Selected Error Record Control Register
__register 64 {  } ERXCTLR_EL1;

// Selected Error Record Feature Register
__register 64 {  } ERXFR_EL1;

// Selected Error Record Miscellaneous Register 0
__register 64 {  } ERXMISC0_EL1;

// Selected Error Record Miscellaneous Register 1
__register 64 {  } ERXMISC1_EL1;

// Selected Error Record Miscellaneous Register 2
__register 64 {  } ERXMISC2_EL1;

// Selected Error Record Miscellaneous Register 3
__register 64 {  } ERXMISC3_EL1;

// Selected Pseudo-fault Generation Countdown register
__register 64 {  } ERXPFGCDN_EL1;

// Selected Pseudo-fault Generation Control register
__register 64 {  } ERXPFGCTL_EL1;

// Selected Pseudo-fault Generation Feature register
__register 64 {  } ERXPFGF_EL1;

// Selected Error Record Primary Status Register
__register 64 {  } ERXSTATUS_EL1;

// Exception Syndrome Register (EL1)
__register 32 { 31:26 EC, 25:25 IL, 24:0 ISS } ESR_EL1;

// Exception Syndrome Register (EL2)
__register 32 { 31:26 EC, 25:25 IL, 24:0 ISS } ESR_EL2;

// Exception Syndrome Register (EL3)
__register 32 { 31:26 EC, 25:25 IL, 24:0 ISS } ESR_EL3;

// Fault Address Register (EL1)
__register 64 {  } FAR_EL1;

// Fault Address Register (EL2)
__register 64 {  } FAR_EL2;

// Fault Address Register (EL3)
__register 64 {  } FAR_EL3;

// Floating-point Control Register
__register 32 { 26:26 AHP, 25:25 DN, 24:24 FZ, 23:22 RMode, 21:20 Stride, 19:19 FZ16, 18:16 Len, 15:15 IDE, 12:12 IXE, 11:11 UFE, 10:10 OFE, 9:9 DZE, 8:8 IOE } FPCR;

// Floating-Point Exception Control register
__register 32 { 31:31 EX, 30:30 EN, 29:29 DEX, 28:28 FP2V, 27:27 VV, 26:26 TFV, 10:8 VECITR, 7:7 IDF, 4:4 IXF, 3:3 UFF, 2:2 OFF, 1:1 DZF, 0:0 IOF } FPEXC32_EL2;

// Floating-point Status Register
__register 32 { 31:31 N, 30:30 Z, 29:29 C, 28:28 V, 27:27 QC, 7:7 IDC, 4:4 IXC, 3:3 UFC, 2:2 OFC, 1:1 DZC, 0:0 IOC } FPSR;

// Tag Control Register.
__register 64 { 16:16 RRND, 15:0 Exclude } GCR_EL1;

//  Multiple tag transfer ID register
__register 64 { 3:0 BS } GMID_EL1;

// Hypervisor Auxiliary Control Register
__register 32 {  } HACR_EL2;

// Hypervisor Activity Monitors Fine-Grained Read Trap Register
__register 64 { 49:49 AMEVTYPER115_EL0, 48:48 AMEVCNTR115_EL0, 47:47 AMEVTYPER114_EL0, 46:46 AMEVCNTR114_EL0, 45:45 AMEVTYPER113_EL0, 44:44 AMEVCNTR113_EL0, 43:43 AMEVTYPER112_EL0, 42:42 AMEVCNTR112_EL0, 41:41 AMEVTYPER111_EL0, 40:40 AMEVCNTR111_EL0, 39:39 AMEVTYPER110_EL0, 38:38 AMEVCNTR110_EL0, 37:37 AMEVTYPER19_EL0, 36:36 AMEVCNTR19_EL0, 35:35 AMEVTYPER18_EL0, 34:34 AMEVCNTR18_EL0, 33:33 AMEVTYPER17_EL0, 32:32 AMEVCNTR17_EL0, 31:31 AMEVTYPER16_EL0, 30:30 AMEVCNTR16_EL0, 29:29 AMEVTYPER15_EL0, 28:28 AMEVCNTR15_EL0, 27:27 AMEVTYPER14_EL0, 26:26 AMEVCNTR14_EL0, 25:25 AMEVTYPER13_EL0, 24:24 AMEVCNTR13_EL0, 23:23 AMEVTYPER12_EL0, 22:22 AMEVCNTR12_EL0, 21:21 AMEVTYPER11_EL0, 20:20 AMEVCNTR11_EL0, 19:19 AMEVTYPER10_EL0, 18:18 AMEVCNTR10_EL0, 17:17 AMCNTEN1, 0:0 AMCNTEN0 } HAFGRTR_EL2;

// Hypervisor Configuration Register
__register 64 { 63:60 TWEDEL, 59:59 TWEDEn, 58:58 TID5, 57:57 DCT, 56:56 ATA, 55:55 TTLBOS, 54:54 TTLBIS, 53:53 EnSCXT, 52:52 TOCU, 51:51 AMVOFFEN, 50:50 TICAB, 49:49 TID4, 47:47 FIEN, 46:46 FWB, 45:45 NV2, 44:44 AT, 43:43 NV1, 42:42 NV, 41:41 API, 40:40 APK, 38:38 MIOCNCE, 37:37 TEA, 36:36 TERR, 35:35 TLOR, 34:34 E2H, 33:33 ID, 32:32 CD, 31:31 RW, 30:30 TRVM, 29:29 HCD, 28:28 TDZ, 27:27 TGE, 26:26 TVM, 25:25 TTLB, 24:24 TPU, 23:23 TPCP, 23:23 TPC, 22:22 TSW, 21:21 TACR, 20:20 TIDCP, 19:19 TSC, 18:18 TID3, 17:17 TID2, 16:16 TID1, 15:15 TID0, 14:14 TWE, 13:13 TWI, 12:12 DC, 11:10 BSU, 9:9 FB, 8:8 VSE, 7:7 VI, 6:6 VF, 5:5 AMO, 4:4 IMO, 3:3 FMO, 2:2 PTW, 1:1 SWIO, 0:0 VM } HCR_EL2;

// Hypervisor Debug Fine-Grained Read Trap Register
__register 64 { 58:58 PMCEIDn_EL0, 57:57 PMUSERENR_EL0, 48:48 TRCVICTLR, 47:47 TRCSTATR, 46:46 TRCSSCSRn, 45:45 TRCSEQSTR, 44:44 TRCPRGCTLR, 43:43 TRCOSLSR, 41:41 TRCIMSPECn, 40:40 TRCID, 37:37 TRCCNTVRn, 36:36 TRCCLAIM, 35:35 TRCAUXCTLR, 34:34 TRCAUTHSTATUS, 33:33 TRC, 32:32 PMSLATFR_EL1, 31:31 PMSIRR_EL1, 30:30 PMSIDR_EL1, 29:29 PMSICR_EL1, 28:28 PMSFCR_EL1, 27:27 PMSEVFR_EL1, 26:26 PMSCR_EL1, 25:25 PMBSR_EL1, 24:24 PMBPTR_EL1, 23:23 PMBLIMITR_EL1, 22:22 PMMIR_EL1, 19:19 PMSELR_EL0, 18:18 PMOVS, 17:17 PMINTEN, 16:16 PMCNTEN, 15:15 PMCCNTR_EL0, 14:14 PMCCFILTR_EL0, 13:13 PMEVTYPERn_EL0, 12:12 PMEVCNTRn_EL0, 11:11 OSDLR_EL1, 10:10 OSECCR_EL1, 9:9 OSLSR_EL1, 7:7 DBGPRCR_EL1, 6:6 DBGAUTHSTATUS_EL1, 5:5 DBGCLAIM, 4:4 MDSCR_EL1, 3:3 DBGWVRn_EL1, 2:2 DBGWCRn_EL1, 1:1 DBGBVRn_EL1, 0:0 DBGBCRn_EL1 } HDFGRTR_EL2;

// Hypervisor Debug Fine-Grained Write Trap Register
__register 64 { 57:57 PMUSERENR_EL0, 49:49 TRFCR_EL1, 48:48 TRCVICTLR, 46:46 TRCSSCSRn, 45:45 TRCSEQSTR, 44:44 TRCPRGCTLR, 42:42 TRCOSLAR, 41:41 TRCIMSPECn, 37:37 TRCCNTVRn, 36:36 TRCCLAIM, 35:35 TRCAUXCTLR, 33:33 TRC, 32:32 PMSLATFR_EL1, 31:31 PMSIRR_EL1, 29:29 PMSICR_EL1, 28:28 PMSFCR_EL1, 27:27 PMSEVFR_EL1, 26:26 PMSCR_EL1, 25:25 PMBSR_EL1, 24:24 PMBPTR_EL1, 23:23 PMBLIMITR_EL1, 21:21 PMCR_EL0, 20:20 PMSWINC_EL0, 19:19 PMSELR_EL0, 18:18 PMOVS, 17:17 PMINTEN, 16:16 PMCNTEN, 15:15 PMCCNTR_EL0, 14:14 PMCCFILTR_EL0, 13:13 PMEVTYPERn_EL0, 12:12 PMEVCNTRn_EL0, 11:11 OSDLR_EL1, 10:10 OSECCR_EL1, 8:8 OSLAR_EL1, 7:7 DBGPRCR_EL1, 5:5 DBGCLAIM, 4:4 MDSCR_EL1, 3:3 DBGWVRn_EL1, 2:2 DBGWCRn_EL1, 1:1 DBGBVRn_EL1, 0:0 DBGBCRn_EL1 } HDFGWTR_EL2;

// Hypervisor Fine-Grained Instruction Trap Register
__register 64 { 54:54 DCCVAC, 53:53 SVC_EL1, 52:52 SVC_EL0, 51:51 ERET, 50:50 CPPRCTX, 49:49 DVPRCTX, 48:48 CFPRCTX, 47:47 TLBIVAALE1, 46:46 TLBIVALE1, 45:45 TLBIVAAE1, 44:44 TLBIASIDE1, 43:43 TLBIVAE1, 42:42 TLBIVMALLE1, 41:41 TLBIRVAALE1, 40:40 TLBIRVALE1, 39:39 TLBIRVAAE1, 38:38 TLBIRVAE1, 37:37 TLBIRVAALE1IS, 36:36 TLBIRVALE1IS, 35:35 TLBIRVAAE1IS, 34:34 TLBIRVAE1IS, 33:33 TLBIVAALE1IS, 32:32 TLBIVALE1IS, 31:31 TLBIVAAE1IS, 30:30 TLBIASIDE1IS, 29:29 TLBIVAE1IS, 28:28 TLBIVMALLE1IS, 27:27 TLBIRVAALE1OS, 26:26 TLBIRVALE1OS, 25:25 TLBIRVAAE1OS, 24:24 TLBIRVAE1OS, 23:23 TLBIVAALE1OS, 22:22 TLBIVALE1OS, 21:21 TLBIVAAE1OS, 20:20 TLBIASIDE1OS, 19:19 TLBIVAE1OS, 18:18 TLBIVMALLE1OS, 17:17 ATS1E1WP, 16:16 ATS1E1RP, 15:15 ATS1E0W, 14:14 ATS1E0R, 13:13 ATS1E1W, 12:12 ATS1E1R, 11:11 DCZVA, 10:10 DCCIVAC, 9:9 DCCVADP, 8:8 DCCVAP, 7:7 DCCVAU, 6:6 DCCISW, 5:5 DCCSW, 4:4 DCISW, 3:3 DCIVAC, 2:2 ICIVAU, 1:1 ICIALLU, 0:0 ICIALLUIS } HFGITR_EL2;

// Hypervisor Fine-Grained Read Trap Register
__register 64 { 49:49 ERXADDR_EL1, 48:48 ERXPFGCDN_EL1, 47:47 ERXPFGCTL_EL1, 46:46 ERXPFGF_EL1, 45:45 ERXMISCn_EL1, 44:44 ERXSTATUS_EL1, 43:43 ERXCTLR_EL1, 42:42 ERXFR_EL1, 41:41 ERRSELR_EL1, 40:40 ERRIDR_EL1, 39:39 ICC_IGRPENn_EL1, 38:38 VBAR_EL1, 37:37 TTBR1_EL1, 36:36 TTBR0_EL1, 35:35 TPIDR_EL0, 34:34 TPIDRRO_EL0, 33:33 TPIDR_EL1, 32:32 TCR_EL1, 31:31 SCXTNUM_EL0, 30:30 SCXTNUM_EL1, 29:29 SCTLR_EL1, 28:28 REVIDR_EL1, 27:27 PAR_EL1, 26:26 MPIDR_EL1, 25:25 MIDR_EL1, 24:24 MAIR_EL1, 23:23 LORSA_EL1, 22:22 LORN_EL1, 21:21 LORID_EL1, 20:20 LOREA_EL1, 19:19 LORC_EL1, 18:18 ISR_EL1, 17:17 FAR_EL1, 16:16 ESR_EL1, 15:15 DCZID_EL0, 14:14 CTR_EL0, 13:13 CSSELR_EL1, 12:12 CPACR_EL1, 11:11 CONTEXTIDR_EL1, 10:10 CLIDR_EL1, 9:9 CCSIDR_EL1, 8:8 APIBKey, 7:7 APIAKey, 6:6 APGAKey, 5:5 APDBKey, 4:4 APDAKey, 3:3 AMAIR_EL1, 2:2 AIDR_EL1, 1:1 AFSR1_EL1, 0:0 AFSR0_EL1 } HFGRTR_EL2;

// Hypervisor Fine-Grained Write Trap Register
__register 64 { 49:49 ERXADDR_EL1, 48:48 ERXPFGCDN_EL1, 47:47 ERXPFGCTL_EL1, 45:45 ERXMISCn_EL1, 44:44 ERXSTATUS_EL1, 43:43 ERXCTLR_EL1, 41:41 ERRSELR_EL1, 39:39 ICC_IGRPENn_EL1, 38:38 VBAR_EL1, 37:37 TTBR1_EL1, 36:36 TTBR0_EL1, 35:35 TPIDR_EL0, 34:34 TPIDRRO_EL0, 33:33 TPIDR_EL1, 32:32 TCR_EL1, 31:31 SCXTNUM_EL0, 30:30 SCXTNUM_EL1, 29:29 SCTLR_EL1, 27:27 PAR_EL1, 24:24 MAIR_EL1, 23:23 LORSA_EL1, 22:22 LORN_EL1, 20:20 LOREA_EL1, 19:19 LORC_EL1, 17:17 FAR_EL1, 16:16 ESR_EL1, 13:13 CSSELR_EL1, 12:12 CPACR_EL1, 11:11 CONTEXTIDR_EL1, 8:8 APIBKey, 7:7 APIAKey, 6:6 APGAKey, 5:5 APDBKey, 4:4 APDAKey, 3:3 AMAIR_EL1, 1:1 AFSR1_EL1, 0:0 AFSR0_EL1 } HFGWTR_EL2;

// Hypervisor IPA Fault Address Register
__register 64 { 63:63 NS, 43:40, 39:4 FIPA } HPFAR_EL2;

// Hypervisor System Trap Register
__register 32 {  } HSTR_EL2;

// Interrupt Controller Active Priorities Group 0 Registers
array [0..3] of __register 64 {  } ICC_AP0R_EL1;

// Interrupt Controller Active Priorities Group 1 Registers
array [0..3] of __register 64 {  } ICC_AP1R_EL1;

// Interrupt Controller Alias Software Generated Interrupt Group 1 Register
__register 64 { 55:48 Aff3, 47:44 RS, 40:40 IRM, 39:32 Aff2, 27:24 INTID, 23:16 Aff1, 15:0 TargetList } ICC_ASGI1R_EL1;

// Interrupt Controller Binary Point Register 0
__register 32 { 2:0 BinaryPoint } ICC_BPR0_EL1;

// Interrupt Controller Binary Point Register 1
__register 32 { 2:0 BinaryPoint } ICC_BPR1_EL1;

// Interrupt Controller Control Register (EL1)
__register 32 { 19:19 ExtRange, 18:18 RSS, 15:15 A3V, 14:14 SEIS, 13:11 IDbits, 10:8 PRIbits, 6:6 PMHE, 1:1 EOImode, 0:0 CBPR } ICC_CTLR_EL1;

// Interrupt Controller Control Register (EL3)
__register 32 { 19:19 ExtRange, 18:18 RSS, 17:17 nDS, 15:15 A3V, 14:14 SEIS, 13:11 IDbits, 10:8 PRIbits, 6:6 PMHE, 5:5 RM, 4:4 EOImode_EL1NS, 3:3 EOImode_EL1S, 2:2 EOImode_EL3, 1:1 CBPR_EL1NS, 0:0 CBPR_EL1S } ICC_CTLR_EL3;

// Interrupt Controller Deactivate Interrupt Register
__register 32 { 23:0 INTID } ICC_DIR_EL1;

// Interrupt Controller End Of Interrupt Register 0
__register 32 { 23:0 INTID } ICC_EOIR0_EL1;

// Interrupt Controller End Of Interrupt Register 1
__register 32 { 23:0 INTID } ICC_EOIR1_EL1;

// Interrupt Controller Highest Priority Pending Interrupt Register 0
__register 32 { 23:0 INTID } ICC_HPPIR0_EL1;

// Interrupt Controller Highest Priority Pending Interrupt Register 1
__register 32 { 23:0 INTID } ICC_HPPIR1_EL1;

// Interrupt Controller Interrupt Acknowledge Register 0
__register 32 { 23:0 INTID } ICC_IAR0_EL1;

// Interrupt Controller Interrupt Acknowledge Register 1
__register 32 { 23:0 INTID } ICC_IAR1_EL1;

// Interrupt Controller Interrupt Group 0 Enable register
__register 32 { 0:0 Enable } ICC_IGRPEN0_EL1;

// Interrupt Controller Interrupt Group 1 Enable register
__register 32 { 0:0 Enable } ICC_IGRPEN1_EL1;

// Interrupt Controller Interrupt Group 1 Enable register (EL3)
__register 32 { 1:1 EnableGrp1S, 0:0 EnableGrp1NS } ICC_IGRPEN1_EL3;

// Interrupt Controller Interrupt Priority Mask Register
__register 32 { 7:0 Priority } ICC_PMR_EL1;

// Interrupt Controller Running Priority Register
__register 32 { 7:0 Priority } ICC_RPR_EL1;

// Interrupt Controller Software Generated Interrupt Group 0 Register
__register 64 { 55:48 Aff3, 47:44 RS, 40:40 IRM, 39:32 Aff2, 27:24 INTID, 23:16 Aff1, 15:0 TargetList } ICC_SGI0R_EL1;

// Interrupt Controller Software Generated Interrupt Group 1 Register
__register 64 { 55:48 Aff3, 47:44 RS, 40:40 IRM, 39:32 Aff2, 27:24 INTID, 23:16 Aff1, 15:0 TargetList } ICC_SGI1R_EL1;

// Interrupt Controller System Register Enable register (EL1)
__register 32 { 2:2 DIB, 1:1 DFB, 0:0 SRE } ICC_SRE_EL1;

// Interrupt Controller System Register Enable register (EL2)
__register 32 { 3:3 Enable, 2:2 DIB, 1:1 DFB, 0:0 SRE } ICC_SRE_EL2;

// Interrupt Controller System Register Enable register (EL3)
__register 32 { 3:3 Enable, 2:2 DIB, 1:1 DFB, 0:0 SRE } ICC_SRE_EL3;

// Interrupt Controller Hyp Active Priorities Group 0 Registers
array [0..3] of __register 64 {  } ICH_AP0R_EL2;

// Interrupt Controller Hyp Active Priorities Group 1 Registers
array [0..3] of __register 64 {  } ICH_AP1R_EL2;

// Interrupt Controller End of Interrupt Status Register
__register 32 {  } ICH_EISR_EL2;

// Interrupt Controller Empty List Register Status Register
__register 32 {  } ICH_ELRSR_EL2;

// Interrupt Controller Hyp Control Register
__register 32 { 31:27 EOIcount, 14:14 TDIR, 13:13 TSEI, 12:12 TALL1, 11:11 TALL0, 10:10 TC, 8:8 vSGIEOICount, 7:7 VGrp1DIE, 6:6 VGrp1EIE, 5:5 VGrp0DIE, 4:4 VGrp0EIE, 3:3 NPIE, 2:2 LRENPIE, 1:1 UIE, 0:0 En } ICH_HCR_EL2;

// Interrupt Controller List Registers
array [0..15] of __register 64 { 63:62 State, 61:61 HW, 60:60 Group, 55:48 Priority, 44:32 pINTID, 31:0 vINTID } ICH_LR_EL2;

// Interrupt Controller Maintenance Interrupt State Register
__register 32 { 7:7 VGrp1D, 6:6 VGrp1E, 5:5 VGrp0D, 4:4 VGrp0E, 3:3 NP, 2:2 LRENP, 1:1 U, 0:0 EOI } ICH_MISR_EL2;

// Interrupt Controller Virtual Machine Control Register
__register 32 { 31:24 VPMR, 23:21 VBPR0, 20:18 VBPR1, 9:9 VEOIM, 4:4 VCBPR, 3:3 VFIQEn, 2:2 VAckCtl, 1:1 VENG1, 0:0 VENG0 } ICH_VMCR_EL2;

// Interrupt Controller VGIC Type Register
__register 32 { 31:29 PRIbits, 28:26 PREbits, 25:23 IDbits, 22:22 SEIS, 21:21 A3V, 20:20 nV4, 19:19 TDS, 4:0 ListRegs } ICH_VTR_EL2;

// Interrupt Controller Virtual Active Priorities Group 0 Registers
array [0..3] of __register 64 {  } ICV_AP0R_EL1;

// Interrupt Controller Virtual Active Priorities Group 1 Registers
array [0..3] of __register 64 {  } ICV_AP1R_EL1;

// Interrupt Controller Virtual Binary Point Register 0
__register 32 { 2:0 BinaryPoint } ICV_BPR0_EL1;

// Interrupt Controller Virtual Binary Point Register 1
__register 32 { 2:0 BinaryPoint } ICV_BPR1_EL1;

// Interrupt Controller Virtual Control Register
__register 32 { 19:19 ExtRange, 18:18 RSS, 15:15 A3V, 14:14 SEIS, 13:11 IDbits, 10:8 PRIbits, 1:1 EOImode, 0:0 CBPR } ICV_CTLR_EL1;

// Interrupt Controller Deactivate Virtual Interrupt Register
__register 32 { 23:0 INTID } ICV_DIR_EL1;

// Interrupt Controller Virtual End Of Interrupt Register 0
__register 32 { 23:0 INTID } ICV_EOIR0_EL1;

// Interrupt Controller Virtual End Of Interrupt Register 1
__register 32 { 23:0 INTID } ICV_EOIR1_EL1;

// Interrupt Controller Virtual Highest Priority Pending Interrupt Register 0
__register 32 { 23:0 INTID } ICV_HPPIR0_EL1;

// Interrupt Controller Virtual Highest Priority Pending Interrupt Register 1
__register 32 { 23:0 INTID } ICV_HPPIR1_EL1;

// Interrupt Controller Virtual Interrupt Acknowledge Register 0
__register 32 { 23:0 INTID } ICV_IAR0_EL1;

// Interrupt Controller Virtual Interrupt Acknowledge Register 1
__register 32 { 23:0 INTID } ICV_IAR1_EL1;

// Interrupt Controller Virtual Interrupt Group 0 Enable register
__register 32 { 0:0 Enable } ICV_IGRPEN0_EL1;

// Interrupt Controller Virtual Interrupt Group 1 Enable register
__register 32 { 0:0 Enable } ICV_IGRPEN1_EL1;

// Interrupt Controller Virtual Interrupt Priority Mask Register
__register 32 { 7:0 Priority } ICV_PMR_EL1;

// Interrupt Controller Virtual Running Priority Register
__register 32 { 7:0 Priority } ICV_RPR_EL1;

// AArch64 Auxiliary Feature Register 0
__register 64 {  } ID_AA64AFR0_EL1;

// AArch64 Auxiliary Feature Register 1
__register 64 {  } ID_AA64AFR1_EL1;

// AArch64 Debug Feature Register 0
__register 64 { 51:48 MTPMU, 43:40 TraceFilt, 39:36 DoubleLock, 35:32 PMSVer, 31:28 CTX_CMPs, 23:20 WRPs, 15:12 BRPs, 11:8 PMUVer, 7:4 TraceVer, 3:0 DebugVer } ID_AA64DFR0_EL1;

// AArch64 Debug Feature Register 1
__register 64 {  } ID_AA64DFR1_EL1;

// AArch64 Instruction Set Attribute Register 0
__register 64 { 63:60 RNDR, 59:56 TLB, 55:52 TS, 51:48 FHM, 47:44 DP, 43:40 SM4, 39:36 SM3, 35:32 SHA3, 31:28 RDM, 23:20 Atomic, 19:16 CRC32, 15:12 SHA2, 11:8 SHA1, 7:4 AES } ID_AA64ISAR0_EL1;

// AArch64 Instruction Set Attribute Register 1
__register 64 { 55:52 I8MM, 51:48 DGH, 47:44 BF16, 43:40 SPECRES, 39:36 SB, 35:32 FRINTTS, 31:28 GPI, 27:24 GPA, 23:20 LRCPC, 19:16 FCMA, 15:12 JSCVT, 11:8 API, 7:4 APA, 3:0 DPB } ID_AA64ISAR1_EL1;

// AArch64 Memory Model Feature Register 0
__register 64 { 63:60 ECV, 59:56 FGT, 47:44 ExS, 43:40 TGran4_2, 39:36 TGran64_2, 35:32 TGran16_2, 31:28 TGran4, 27:24 TGran64, 23:20 TGran16, 19:16 BigEndEL0, 15:12 SNSMem, 11:8 BigEnd, 7:4 ASIDBits, 3:0 PARange } ID_AA64MMFR0_EL1;

// AArch64 Memory Model Feature Register 1
__register 64 { 39:36 ETS, 35:32 TWED, 31:28 XNX, 27:24 SpecSEI, 23:20 PAN, 19:16 LO, 15:12 HPDS, 11:8 VH, 7:4 VMIDBits, 3:0 HAFDBS } ID_AA64MMFR1_EL1;

// AArch64 Memory Model Feature Register 2
__register 64 { 63:60 E0PD, 59:56 EVT, 55:52 BBM, 51:48 TTL, 43:40 FWB, 39:36 IDS, 35:32 AT, 31:28 ST, 27:24 NV, 23:20 CCIDX, 19:16 VARange, 15:12 IESB, 11:8 LSM, 7:4 UAO, 3:0 CnP } ID_AA64MMFR2_EL1;

// AArch64 Processor Feature Register 0
__register 64 { 63:60 CSV3, 59:56 CSV2, 51:48 DIT, 47:44 AMU, 43:40 MPAM, 39:36 SEL2, 35:32 SVE, 31:28 RAS, 27:24 GIC, 23:20 AdvSIMD, 19:16 FP, 15:12 EL3, 11:8 EL2, 7:4 EL1, 3:0 EL0 } ID_AA64PFR0_EL1;

// AArch64 Processor Feature Register 1
__register 64 { 19:16 MPAM_frac, 15:12 RAS_frac, 11:8 MTE, 7:4 SSBS, 3:0 BT } ID_AA64PFR1_EL1;

// SVE Feature ID register 0
__register 64 { 59:56 F64MM, 55:52 F32MM, 47:44 I8MM, 23:20 BF16, 3:0 SVEver } ID_AA64ZFR0_EL1;

// AArch32 Auxiliary Feature Register 0
__register 32 {  } ID_AFR0_EL1;

// AArch32 Debug Feature Register 0
__register 32 { 31:28 TraceFilt, 27:24 PerfMon, 23:20 MProfDbg, 11:8 MMapDbg, 7:4 CopSDbg, 3:0 CopDbg } ID_DFR0_EL1;

// Debug Feature Register 1
__register 64 { 3:0 MTPMU } ID_DFR1_EL1;

// AArch32 Instruction Set Attribute Register 0
__register 32 { 27:24 Divide, 23:20 Debug, 19:16 Coproc, 15:12 CmpBranch, 11:8 BitField, 7:4 BitCount, 3:0 Swap } ID_ISAR0_EL1;

// AArch32 Instruction Set Attribute Register 1
__register 32 { 31:28 Jazelle, 27:24 Interwork, 23:20 Immediate, 19:16 IfThen, 15:12 Extend, 11:8 Except_AR, 7:4 Except, 3:0 Endian } ID_ISAR1_EL1;

// AArch32 Instruction Set Attribute Register 2
__register 32 { 31:28 Reversal, 27:24 PSR_AR, 23:20 MultU, 19:16 MultS, 15:12 Mult, 11:8 MultiAccessInt, 7:4 MemHint, 3:0 LoadStore } ID_ISAR2_EL1;

// AArch32 Instruction Set Attribute Register 3
__register 32 { 31:28 T32EE, 27:24 TrueNOP, 23:20 T32Copy, 19:16 TabBranch, 15:12 SynchPrim, 11:8 SVC, 7:4 SIMD, 3:0 Saturate } ID_ISAR3_EL1;

// AArch32 Instruction Set Attribute Register 4
__register 32 { 31:28 SWP_frac, 27:24 PSR_M, 23:20 SynchPrim_frac, 19:16 Barrier, 15:12 SMC, 11:8 Writeback, 7:4 WithShifts, 3:0 Unpriv } ID_ISAR4_EL1;

// AArch32 Instruction Set Attribute Register 5
__register 32 { 31:28 VCMA, 27:24 RDM, 19:16 CRC32, 15:12 SHA2, 11:8 SHA1, 7:4 AES, 3:0 SEVL } ID_ISAR5_EL1;

// AArch32 Instruction Set Attribute Register 6
__register 32 { 27:24 I8MM, 23:20 BF16, 19:16 SPECRES, 15:12 SB, 11:8 FHM, 7:4 DP, 3:0 JSCVT } ID_ISAR6_EL1;

// AArch32 Memory Model Feature Register 0
__register 32 { 31:28 InnerShr, 27:24 FCSE, 23:20 AuxReg, 19:16 TCM, 15:12 ShareLvl, 11:8 OuterShr, 7:4 PMSA, 3:0 VMSA } ID_MMFR0_EL1;

// AArch32 Memory Model Feature Register 1
__register 32 { 31:28 BPred, 27:24 L1TstCln, 23:20 L1Uni, 19:16 L1Hvd, 15:12 L1UniSW, 11:8 L1HvdSW, 7:4 L1UniVA, 3:0 L1HvdVA } ID_MMFR1_EL1;

// AArch32 Memory Model Feature Register 2
__register 32 { 31:28 HWAccFlg, 27:24 WFIStall, 23:20 MemBarr, 19:16 UniTLB, 15:12 HvdTLB, 11:8 L1HvdRng, 7:4 L1HvdBG, 3:0 L1HvdFG } ID_MMFR2_EL1;

// AArch32 Memory Model Feature Register 3
__register 32 { 31:28 Supersec, 27:24 CMemSz, 23:20 CohWalk, 19:16 PAN, 15:12 MaintBcst, 11:8 BPMaint, 7:4 CMaintSW, 3:0 CMaintVA } ID_MMFR3_EL1;

// AArch32 Memory Model Feature Register 4
__register 32 { 31:28 EVT, 27:24 CCIDX, 23:20 LSM, 19:16 HPDS, 15:12 CnP, 11:8 XNX, 7:4 AC2, 3:0 SpecSEI } ID_MMFR4_EL1;

// AArch32 Memory Model Feature Register 5
__register 64 { 3:0 ETS } ID_MMFR5_EL1;

// AArch32 Processor Feature Register 0
__register 32 { 31:28 RAS, 27:24 DIT, 23:20 AMU, 19:16 CSV2, 15:12 State3, 11:8 State2, 7:4 State1, 3:0 State0 } ID_PFR0_EL1;

// AArch32 Processor Feature Register 1
__register 32 { 31:28 GIC, 27:24 Virt_frac, 23:20 Sec_frac, 19:16 GenTimer, 15:12 Virtualization, 11:8 MProgMod, 7:4 Security, 3:0 ProgMod } ID_PFR1_EL1;

// AArch32 Processor Feature Register 2
__register 32 { 11:8 RAS_frac, 7:4 SSBS, 3:0 CSV3 } ID_PFR2_EL1;

// Instruction Fault Status Register (EL2)
__register 32 { 16:16 FnV, 12:12 ExT, 9:9 LPAE, 5:0 STATUS, 10:10, 3:0 FS } IFSR32_EL2;

// Interrupt Status Register
__register 32 { 8:8 A, 7:7 I, 6:6 F } ISR_EL1;

// LORegion Control (EL1)
__register 64 { 9:2 DS, 0:0 EN } LORC_EL1;

// LORegion End Address (EL1)
__register 64 { 51:48, 47:16 EA } LOREA_EL1;

// LORegionID (EL1)
__register 64 { 23:16 LD, 7:0 LR } LORID_EL1;

// LORegion Number (EL1)
__register 64 { 7:0 Num } LORN_EL1;

// LORegion Start Address (EL1)
__register 64 { 0:0 Valid, 51:48, 47:16 SA } LORSA_EL1;

// Memory Attribute Indirection Register (EL1)
__register 64 {  } MAIR_EL1;

// Memory Attribute Indirection Register (EL2)
__register 64 {  } MAIR_EL2;

// Memory Attribute Indirection Register (EL3)
__register 64 {  } MAIR_EL3;

// Monitor DCC Interrupt Enable Register
__register 32 { 30:30 RX, 29:29 TX } MDCCINT_EL1;

// Monitor DCC Status Register
__register 32 { 30:30 RXfull, 29:29 TXfull } MDCCSR_EL0;

// Monitor Debug Configuration Register (EL2)
__register 32 { 28:28 MTPME, 27:27 TDCC, 26:26 HLP, 23:23 HCCD, 19:19 TTRF, 17:17 HPMD, 14:14 TPMS, 13:12 E2PB, 11:11 TDRA, 10:10 TDOSA, 9:9 TDA, 8:8 TDE, 7:7 HPME, 6:6 TPM, 5:5 TPMCR, 4:0 HPMN } MDCR_EL2;

// Monitor Debug Configuration Register (EL3)
__register 32 { 28:28 MTPME, 27:27 TDCC, 23:23 SCCD, 21:21 EPMAD, 20:20 EDAD, 19:19 TTRF, 18:18 STE, 17:17 SPME, 16:16 SDD, 15:14 SPD32, 13:12 NSPB, 10:10 TDOSA, 9:9 TDA, 6:6 TPM } MDCR_EL3;

// Monitor Debug ROM Address Register
__register 64 { 1:0 Valid, 51:48, 47:12 ROMADDR } MDRAR_EL1;

// Monitor Debug System Control Register
__register 32 { 31:31 TFO, 30:30 RXfull, 29:29 TXfull, 27:27 RXO, 26:26 TXU, 23:22 INTdis, 21:21 TDA, 19:19 SC2, 15:15 MDE, 14:14 HDE, 13:13 KDE, 12:12 TDCC, 6:6 ERR, 0:0 SS } MDSCR_EL1;

// Main ID Register
__register 32 { 31:24 Implementer, 23:20 Variant, 19:16 Architecture, 15:4 PartNum, 3:0 Revision } MIDR_EL1;

// MPAM0 Register (EL1)
__register 64 { 47:40 PMG_D, 39:32 PMG_I, 31:16 PARTID_D, 15:0 PARTID_I } MPAM0_EL1;

// MPAM1 Register (EL1)
__register 64 { 63:63 MPAMEN, 60:60 FORCED_NS, 47:40 PMG_D, 39:32 PMG_I, 31:16 PARTID_D, 15:0 PARTID_I } MPAM1_EL1;

// MPAM2 Register (EL2)
__register 64 { 63:63 MPAMEN, 58:58 TIDR, 49:49 TRAPMPAM0EL1, 48:48 TRAPMPAM1EL1, 47:40 PMG_D, 39:32 PMG_I, 31:16 PARTID_D, 15:0 PARTID_I } MPAM2_EL2;

// MPAM3 Register (EL3)
__register 64 { 63:63 MPAMEN, 62:62 TRAPLOWER, 61:61 SDEFLT, 60:60 FORCE_NS, 47:40 PMG_D, 39:32 PMG_I, 31:16 PARTID_D, 15:0 PARTID_I } MPAM3_EL3;

// MPAM Hypervisor Control Register (EL2)
__register 64 { 31:31 TRAP_MPAMIDR_EL1, 8:8 GSTAPP_PLK, 1:1 EL1_VPMEN, 0:0 EL0_VPMEN } MPAMHCR_EL2;

// MPAM ID Register (EL1)
__register 64 { 61:61 HAS_SDEFLT, 60:60 HAS_FORCE_NS, 58:58 HAS_TIDR, 39:32 PMG_MAX, 20:18 VPMR_MAX, 17:17 HAS_HCR, 15:0 PARTID_MAX } MPAMIDR_EL1;

// MPAM Virtual PARTID Mapping Register 0
__register 64 { 63:48 PhyPARTID3, 47:32 PhyPARTID2, 31:16 PhyPARTID1, 15:0 PhyPARTID0 } MPAMVPM0_EL2;

// MPAM Virtual PARTID Mapping Register 1
__register 64 { 63:48 PhyPARTID7, 47:32 PhyPARTID6, 31:16 PhyPARTID5, 15:0 PhyPARTID4 } MPAMVPM1_EL2;

// MPAM Virtual PARTID Mapping Register 2
__register 64 { 63:48 PhyPARTID11, 47:32 PhyPARTID10, 31:16 PhyPARTID9, 15:0 PhyPARTID8 } MPAMVPM2_EL2;

// MPAM Virtual PARTID Mapping Register 3
__register 64 { 63:48 PhyPARTID15, 47:32 PhyPARTID14, 31:16 PhyPARTID13, 15:0 PhyPARTID12 } MPAMVPM3_EL2;

// MPAM Virtual PARTID Mapping Register 4
__register 64 { 63:48 PhyPARTID19, 47:32 PhyPARTID18, 31:16 PhyPARTID17, 15:0 PhyPARTID16 } MPAMVPM4_EL2;

// MPAM Virtual PARTID Mapping Register 5
__register 64 { 63:48 PhyPARTID23, 47:32 PhyPARTID22, 31:16 PhyPARTID21, 15:0 PhyPARTID20 } MPAMVPM5_EL2;

// MPAM Virtual PARTID Mapping Register 6
__register 64 { 63:48 PhyPARTID27, 47:32 PhyPARTID26, 31:16 PhyPARTID25, 15:0 PhyPARTID24 } MPAMVPM6_EL2;

// MPAM Virtual PARTID Mapping Register 7
__register 64 { 63:48 PhyPARTID31, 47:32 PhyPARTID30, 31:16 PhyPARTID29, 15:0 PhyPARTID28 } MPAMVPM7_EL2;

// MPAM Virtual Partition Mapping Valid Register
__register 64 {  } MPAMVPMV_EL2;

// Multiprocessor Affinity Register
__register 64 { 39:32 Aff3, 30:30 U, 24:24 MT, 23:16 Aff2, 15:8 Aff1, 7:0 Aff0 } MPIDR_EL1;

// AArch32 Media and VFP Feature Register 0
__register 32 { 31:28 FPRound, 27:24 FPShVec, 23:20 FPSqrt, 19:16 FPDivide, 15:12 FPTrap, 11:8 FPDP, 7:4 FPSP, 3:0 SIMDReg } MVFR0_EL1;

// AArch32 Media and VFP Feature Register 1
__register 32 { 31:28 SIMDFMAC, 27:24 FPHP, 23:20 SIMDHP, 19:16 SIMDSP, 15:12 SIMDInt, 11:8 SIMDLS, 7:4 FPDNaN, 3:0 FPFtZ } MVFR1_EL1;

// AArch32 Media and VFP Feature Register 2
__register 32 { 7:4 FPMisc, 3:0 SIMDMisc } MVFR2_EL1;

// Condition Flags
__register 32 { 31:31 N, 30:30 Z, 29:29 C, 28:28 V } NZCV;

// OS Double Lock Register
__register 32 { 0:0 DLK } OSDLR_EL1;

// OS Lock Data Transfer Register, Receive
__register 32 {  } OSDTRRX_EL1;

// OS Lock Data Transfer Register, Transmit
__register 32 {  } OSDTRTX_EL1;

// OS Lock Exception Catch Control Register
__register 32 { 31:0 EDECCR } OSECCR_EL1;

// OS Lock Access Register
__register 32 { 0:0 OSLK } OSLAR_EL1;

// OS Lock Status Register
__register 32 { 2:2 nTT, 1:1 OSLK, 3:3, 0:0 OSLM } OSLSR_EL1;

// Privileged Access Never
__register 32 { 22:22 PAN } PAN;

// Physical Address Register
__register 64 { 63:56 ATTR, 9:9 NS, 8:7 SH, 0:0 F, 9:9 S, 8:8 PTW, 6:1 FST, 51:48, 47:12 PA } PAR_EL1;

// Profiling Buffer ID Register
__register 64 { 5:5 F, 4:4 P, 3:0 Align } PMBIDR_EL1;

// Profiling Buffer Limit Address Register
__register 64 { 63:12 LIMIT, 2:1 FM, 0:0 E } PMBLIMITR_EL1;

// Profiling Buffer Write Pointer Register
__register 64 { 63:0 PTR } PMBPTR_EL1;

// Profiling Buffer Status/syndrome Register
__register 64 { 31:26 EC, 19:19 DL, 18:18 EA, 17:17 S, 16:16 COLL, 15:0 MSS } PMBSR_EL1;

// Performance Monitors Cycle Counter Filter Register
__register 32 { 31:31 P, 30:30 U, 29:29 NSK, 28:28 NSU, 27:27 NSH, 26:26 M, 24:24 SH } PMCCFILTR_EL0;

// Performance Monitors Cycle Counter
__register 64 { 63:0 CCNT } PMCCNTR_EL0;

// Performance Monitors Common Event Identification register 0
__register 64 {  } PMCEID0_EL0;

// Performance Monitors Common Event Identification register 1
__register 64 {  } PMCEID1_EL0;

// Performance Monitors Count Enable Clear register
__register 32 { 31:31 C } PMCNTENCLR_EL0;

// Performance Monitors Count Enable Set register
__register 32 { 31:31 C } PMCNTENSET_EL0;

// Performance Monitors Control Register
__register 32 { 7:7 LP, 6:6 LC, 5:5 DP, 4:4 X, 3:3 D, 2:2 C, 1:1 P, 0:0 E, 31:24 IMP, 23:16 IDCODE, 15:11 N } PMCR_EL0;

// Performance Monitors Event Count Registers
array [0..30] of __register 64 {  } PMEVCNTR_EL0;

// Performance Monitors Event Type Registers
array [0..30] of __register 32 { 31:31 P, 30:30 U, 29:29 NSK, 28:28 NSU, 27:27 NSH, 26:26 M, 25:25 MT, 24:24 SH, 15:10, 9:0 evtCount } PMEVTYPER_EL0;

// Performance Monitors Interrupt Enable Clear register
__register 32 { 31:31 C } PMINTENCLR_EL1;

// Performance Monitors Interrupt Enable Set register
__register 32 { 31:31 C } PMINTENSET_EL1;

// Performance Monitors Machine Identification Register
__register 64 { 7:0 SLOTS } PMMIR_EL1;

// Performance Monitors Overflow Flag Status Clear register
__register 32 { 31:31 C } PMOVSCLR_EL0;

// Performance Monitors Overflow Flag Status Set register
__register 32 { 31:31 C } PMOVSSET_EL0;

// Statistical Profiling Control Register (EL1)
__register 64 { 7:6 PCT, 5:5 TS, 4:4 PA, 3:3 CX, 1:1 E1SPE, 0:0 E0SPE } PMSCR_EL1;

// Statistical Profiling Control Register (EL2)
__register 64 { 7:6 PCT, 5:5 TS, 4:4 PA, 3:3 CX, 1:1 E2SPE, 0:0 E0HSPE } PMSCR_EL2;

// Performance Monitors Event Counter Selection Register
__register 32 { 4:0 SEL } PMSELR_EL0;

// Sampling Event Filter Register
__register 64 { 63:63, 62:62, 61:61, 60:60, 59:59, 58:58, 57:57, 56:56, 55:55, 54:54, 53:53, 52:52, 51:51, 50:50, 49:49, 48:48, 31:31, 30:30, 29:29, 28:28, 27:27, 26:26, 25:25, 24:24, 18:18, 17:17, 15:15, 14:14, 13:13, 12:12, 11:11, 7:7, 5:5, 3:3, 1:1 E } PMSEVFR_EL1;

// Sampling Filter Control Register
__register 64 { 18:18 ST, 17:17 LD, 16:16 B, 2:2 FL, 1:1 FT, 0:0 FE } PMSFCR_EL1;

// Sampling Interval Counter Register
__register 64 { 63:56 ECOUNT, 31:0 COUNT } PMSICR_EL1;

// Sampling Profiling ID Register
__register 64 { 19:16 CountSize, 15:12 MaxSize, 11:8 Interval, 5:5 ERnd, 4:4 LDS, 3:3 ArchInst, 2:2 FL, 1:1 FT, 0:0 FE } PMSIDR_EL1;

// Sampling Interval Reload Register
__register 64 { 31:8 INTERVAL, 0:0 RND } PMSIRR_EL1;

// Sampling Latency Filter Register
__register 64 { 11:0 MINLAT } PMSLATFR_EL1;

// Performance Monitors Software Increment register
__register 32 {  } PMSWINC_EL0;

// Performance Monitors User Enable Register
__register 32 { 3:3 ER, 2:2 CR, 1:1 SW, 0:0 EN } PMUSERENR_EL0;

// Performance Monitors Selected Event Count Register
__register 32 {  } PMXEVCNTR_EL0;

// Performance Monitors Selected Event Type Register
__register 32 {  } PMXEVTYPER_EL0;

// Revision ID Register
__register 32 {  } REVIDR_EL1;

// Random Allocation Tag Seed Register.
__register 32 { 23:8 SEED, 3:0 TAG } RGSR_EL1;

// Reset Management Register (EL1)
__register 32 { 1:1 RR, 0:0 AA64 } RMR_EL1;

// Reset Management Register (EL2)
__register 32 { 1:1 RR, 0:0 AA64 } RMR_EL2;

// Reset Management Register (EL3)
__register 32 { 1:1 RR, 0:0 AA64 } RMR_EL3;

// Random Number
__register 64 { 63:0 RNDR } RNDR;

// Reseeded Random Number
__register 64 { 63:0 RNDRRS } RNDRRS;

// Reset Vector Base Address Register (if EL2 and EL3 not implemented)
__register 64 {  } RVBAR_EL1;

// Reset Vector Base Address Register (if EL3 not implemented)
__register 64 {  } RVBAR_EL2;

// Reset Vector Base Address Register (if EL3 implemented)
__register 64 {  } RVBAR_EL3;

// Secure Configuration Register
__register 64 { 35:35 AMVOFFEN, 33:30 TWEDEL, 29:29 TWEDEn, 28:28 ECVEn, 27:27 FGTEn, 26:26 ATA, 25:25 EnSCXT, 21:21 FIEN, 20:20 NMEA, 19:19 EASE, 18:18 EEL2, 17:17 API, 16:16 APK, 15:15 TERR, 14:14 TLOR, 13:13 TWE, 12:12 TWI, 11:11 ST, 10:10 RW, 9:9 SIF, 8:8 HCE, 7:7 SMD, 3:3 EA, 2:2 FIQ, 1:1 IRQ, 0:0 NS } SCR_EL3;

// System Control Register (EL1)
__register 64 { 49:46 TWEDEL, 45:45 TWEDEn, 44:44 DSSBS, 43:43 ATA, 42:42 ATA0, 41:40 TCF, 39:38 TCF0, 37:37 ITFSB, 36:36 BT1, 35:35 BT0, 31:31 EnIA, 30:30 EnIB, 29:29 LSMAOE, 28:28 nTLSMD, 27:27 EnDA, 26:26 UCI, 25:25 EE, 24:24 E0E, 23:23 SPAN, 22:22 EIS, 21:21 IESB, 20:20 TSCXT, 19:19 WXN, 18:18 nTWE, 16:16 nTWI, 15:15 UCT, 14:14 DZE, 13:13 EnDB, 12:12 I, 11:11 EOS, 10:10 EnRCTX, 9:9 UMA, 8:8 SED, 7:7 ITD, 6:6 nAA, 5:5 CP15BEN, 4:4 SA0, 3:3 SA, 2:2 C, 1:1 A, 0:0 M } SCTLR_EL1;

// System Control Register (EL2)
__register 64 { 44:44 DSSBS, 43:43 ATA, 41:40 TCF, 37:37 ITFSB, 36:36 BT, 31:31 EnIA, 30:30 EnIB, 27:27 EnDA, 25:25 EE, 22:22 EIS, 21:21 IESB, 19:19 WXN, 13:13 EnDB, 12:12 I, 11:11 EOS, 6:6 nAA, 3:3 SA, 2:2 C, 1:1 A, 0:0 M, 49:46 TWEDEL, 45:45 TWEDEn, 42:42 ATA0, 39:38 TCF0, 36:36 BT1, 35:35 BT0, 29:29 LSMAOE, 28:28 nTLSMD, 26:26 UCI, 24:24 E0E, 23:23 SPAN, 20:20 TSCXT, 18:18 nTWE, 16:16 nTWI, 15:15 UCT, 14:14 DZE, 10:10 EnRCTX, 8:8 SED, 7:7 ITD, 5:5 CP15BEN, 4:4 SA0 } SCTLR_EL2;

// System Control Register (EL3)
__register 64 { 44:44 DSSBS, 43:43 ATA, 41:40 TCF, 37:37 ITFSB, 36:36 BT, 31:31 EnIA, 30:30 EnIB, 27:27 EnDA, 25:25 EE, 22:22 EIS, 21:21 IESB, 19:19 WXN, 13:13 EnDB, 12:12 I, 11:11 EOS, 6:6 nAA, 3:3 SA, 2:2 C, 1:1 A, 0:0 M } SCTLR_EL3;

// EL0 Read/Write Software Context Number
__register 64 {  } SCXTNUM_EL0;

// EL1 Read/Write Software Context Number
__register 64 {  } SCXTNUM_EL1;

// EL2 Read/Write Software Context Number
__register 64 {  } SCXTNUM_EL2;

// EL3 Read/Write Software Context Number
__register 64 {  } SCXTNUM_EL3;

// AArch32 Secure Debug Enable Register
__register 32 { 1:1 SUNIDEN, 0:0 SUIDEN } SDER32_EL2;

// AArch32 Secure Debug Enable Register
__register 32 { 1:1 SUNIDEN, 0:0 SUIDEN } SDER32_EL3;

// Stack Pointer Select
__register 64 { 0:0 SP } SPSel;

// Saved Program Status Register (EL1)
__register 32 { 31:31 N, 30:30 Z, 29:29 C, 28:28 V, 27:27 Q, 24:24 DIT, 12:12 SSBS, 22:22 PAN, 21:21 SS, 20:20 IL, 19:16 GE, 9:9 E, 8:8 A, 7:7 I, 6:6 F, 5:5 T, 25:25 TCO, 23:23 UAO, 11:10 BTYPE, 9:9 D, 15:10, 26:25 IT, 4:4, 4:4, 3:0, 3:0 M } SPSR_EL1;

// Saved Program Status Register (EL2)
__register 32 { 31:31 N, 30:30 Z, 29:29 C, 28:28 V, 27:27 Q, 24:24 DIT, 12:12 SSBS, 22:22 PAN, 21:21 SS, 20:20 IL, 19:16 GE, 9:9 E, 8:8 A, 7:7 I, 6:6 F, 5:5 T, 25:25 TCO, 23:23 UAO, 11:10 BTYPE, 9:9 D, 15:10, 26:25 IT, 4:4, 4:4, 3:0, 3:0 M } SPSR_EL2;

// Saved Program Status Register (EL3)
__register 32 { 31:31 N, 30:30 Z, 29:29 C, 28:28 V, 27:27 Q, 24:24 DIT, 12:12 SSBS, 22:22 PAN, 21:21 SS, 20:20 IL, 19:16 GE, 9:9 E, 8:8 A, 7:7 I, 6:6 F, 5:5 T, 25:25 TCO, 23:23 UAO, 11:10 BTYPE, 9:9 D, 15:10, 26:25 IT, 4:4, 4:4, 3:0, 3:0 M } SPSR_EL3;

// Stack Pointer (EL0)
__register 64 {  } SP_EL0;

// Stack Pointer (EL1)
__register 64 {  } SP_EL1;

// Stack Pointer (EL2)
__register 64 {  } SP_EL2;

// Stack Pointer (EL3)
__register 64 {  } SP_EL3;

// Speculative Store Bypass Safe
__register 32 { 12:12 SSBS } SSBS;

// Tag Check Override
__register 64 { 25:25 TCO } TCO;

// Translation Control Register (EL1)
__register 64 { 58:58 TCMA1, 57:57 TCMA0, 56:56 E0PD1, 55:55 E0PD0, 54:54 NFD1, 53:53 NFD0, 52:52 TBID1, 51:51 TBID0, 50:50 HWU162, 49:49 HWU161, 48:48 HWU160, 47:47 HWU159, 46:46 HWU062, 45:45 HWU061, 44:44 HWU060, 43:43 HWU059, 42:42 HPD1, 41:41 HPD0, 40:40 HD, 39:39 HA, 38:38 TBI1, 37:37 TBI0, 36:36 AS, 34:32 IPS, 31:30 TG1, 29:28 SH1, 27:26 ORGN1, 25:24 IRGN1, 23:23 EPD1, 22:22 A1, 21:16 T1SZ, 15:14 TG0, 13:12 SH0, 11:10 ORGN0, 9:8 IRGN0, 7:7 EPD0, 5:0 T0SZ } TCR_EL1;

// Translation Control Register (EL2)
__register 64 { 30:30 TCMA, 29:29 TBID, 28:28 HWU62, 27:27 HWU61, 26:26 HWU60, 25:25 HWU59, 24:24 HPD, 40:40 HD, 39:39 HA, 20:20 TBI, 18:16 PS, 15:14 TG0, 13:12 SH0, 11:10 ORGN0, 9:8 IRGN0, 5:0 T0SZ, 58:58 TCMA1, 57:57 TCMA0, 56:56 E0PD1, 55:55 E0PD0, 54:54 NFD1, 53:53 NFD0, 52:52 TBID1, 51:51 TBID0, 50:50 HWU162, 49:49 HWU161, 48:48 HWU160, 47:47 HWU159, 46:46 HWU062, 45:45 HWU061, 44:44 HWU060, 43:43 HWU059, 42:42 HPD1, 41:41 HPD0, 38:38 TBI1, 37:37 TBI0, 36:36 AS, 34:32 IPS, 31:30 TG1, 29:28 SH1, 27:26 ORGN1, 25:24 IRGN1, 23:23 EPD1, 22:22 A1, 21:16 T1SZ, 7:7 EPD0 } TCR_EL2;

// Translation Control Register (EL3)
__register 32 { 30:30 TCMA, 29:29 TBID, 28:28 HWU62, 27:27 HWU61, 26:26 HWU60, 25:25 HWU59, 24:24 HPD, 22:22 HD, 21:21 HA, 20:20 TBI, 18:16 PS, 15:14 TG0, 13:12 SH0, 11:10 ORGN0, 9:8 IRGN0, 5:0 T0SZ } TCR_EL3;

// Tag Fault Status Register (EL0).
__register 64 { 1:1 TF1, 0:0 TF0 } TFSRE0_EL1;

// Tag Fault Status Register (EL1)
__register 64 { 1:1 TF1, 0:0 TF0 } TFSR_EL1;

// Tag Fault Status Register (EL2)
__register 64 { 1:1 TF1, 0:0 TF0 } TFSR_EL2;

// Tag Fault Status Register (EL3)
__register 64 { 0:0 TF0 } TFSR_EL3;

// EL0 Read-Only Software Thread ID Register
__register 64 {  } TPIDRRO_EL0;

// EL0 Read/Write Software Thread ID Register
__register 64 {  } TPIDR_EL0;

// EL1 Software Thread ID Register
__register 64 {  } TPIDR_EL1;

// EL2 Software Thread ID Register
__register 64 {  } TPIDR_EL2;

// EL3 Software Thread ID Register
__register 64 {  } TPIDR_EL3;

// Trace Filter Control Register (EL1)
__register 64 { 6:5 TS, 1:1 E1TRE, 0:0 E0TRE } TRFCR_EL1;

// Trace Filter Control Register (EL2)
__register 64 { 6:5 TS, 3:3 CX, 1:1 E2TRE, 0:0 E0HTRE } TRFCR_EL2;

// Translation Table Base Register 0 (EL1)
__register 64 { 63:48 ASID, 47:1 BADDR, 0:0 CnP } TTBR0_EL1;

// Translation Table Base Register 0 (EL2)
__register 64 { 63:48 ASID, 47:1 BADDR, 0:0 CnP } TTBR0_EL2;

// Translation Table Base Register 0 (EL3)
__register 64 { 47:1 BADDR, 0:0 CnP } TTBR0_EL3;

// Translation Table Base Register 1 (EL1)
__register 64 { 63:48 ASID, 47:1 BADDR, 0:0 CnP } TTBR1_EL1;

// Translation Table Base Register 1 (EL2)
__register 64 { 63:48 ASID, 47:1 BADDR, 0:0 CnP } TTBR1_EL2;

// User Access Override
__register 32 { 23:23 UAO } UAO;

// Vector Base Address Register (EL1)
__register 64 {  } VBAR_EL1;

// Vector Base Address Register (EL2)
__register 64 {  } VBAR_EL2;

// Vector Base Address Register (EL3)
__register 64 {  } VBAR_EL3;

// Virtual Deferred Interrupt Status Register
__register 64 { 31:31 A, 24:24 IDS, 23:0 ISS, 15:14 AET, 12:12 ExT, 9:9 LPAE, 5:0 STATUS, 10:10, 3:0 FS } VDISR_EL2;

// Virtualization Multiprocessor ID Register
__register 64 { 39:32 Aff3, 30:30 U, 24:24 MT, 23:16 Aff2, 15:8 Aff1, 7:0 Aff0 } VMPIDR_EL2;

// Virtual Nested Control Register
__register 64 { 63:53 RESS, 52:12 BADDR } VNCR_EL2;

// Virtualization Processor ID Register
__register 32 { 31:24 Implementer, 23:20 Variant, 19:16 Architecture, 15:4 PartNum, 3:0 Revision } VPIDR_EL2;

// Virtual SError Exception Syndrome Register
__register 64 { 15:14 AET, 12:12 ExT, 24:24 IDS, 23:0 ISS } VSESR_EL2;

// Virtualization Secure Translation Control Register
__register 32 { 30:30 SA, 29:29 SW, 15:14 TG0, 7:6 SL0, 5:0 T0SZ } VSTCR_EL2;

// Virtualization Secure Translation Table Base Register
__register 64 { 47:1 BADDR, 0:0 CnP } VSTTBR_EL2;

// Virtualization Translation Control Register
__register 32 { 30:30 NSA, 29:29 NSW, 28:28 HWU62, 27:27 HWU61, 26:26 HWU60, 25:25 HWU59, 22:22 HD, 21:21 HA, 19:19 VS, 18:16 PS, 15:14 TG0, 13:12 SH0, 11:10 ORGN0, 9:8 IRGN0, 7:6 SL0, 5:0 T0SZ } VTCR_EL2;

// Virtualization Translation Table Base Register
__register 64 { 47:1 BADDR, 0:0 CnP, 63:56, 55:48 VMID } VTTBR_EL2;

// SVE Control Register for EL1
__register 64 { 3:0 LEN } ZCR_EL1;

// SVE Control Register for EL2
__register 64 { 3:0 LEN } ZCR_EL2;

// SVE Control Register for EL3
__register 64 { 3:0 LEN } ZCR_EL3;

// Activity Monitors Component Identification Register 0
__register 32 { 7:0 PRMBL_0 } AMCIDR0;

// Activity Monitors Component Identification Register 1
__register 32 { 7:4 CLASS, 3:0 PRMBL_1 } AMCIDR1;

// Activity Monitors Component Identification Register 2
__register 32 { 7:0 PRMBL_2 } AMCIDR2;

// Activity Monitors Component Identification Register 3
__register 32 { 7:0 PRMBL_3 } AMCIDR3;

// Activity Monitors Device Affinity Register 0
__register 32 { 31:0 MPIDR_EL1lo } AMDEVAFF0;

// Activity Monitors Device Affinity Register 1
__register 32 { 31:0 MPIDR_EL1hi } AMDEVAFF1;

// Activity Monitors Device Architecture Register
__register 32 { 31:21 ARCHITECT, 20:20 PRESENT, 19:16 REVISION, 15:0 ARCHID } AMDEVARCH;

// Activity Monitors Device Type Register
__register 32 { 7:4 SUB, 3:0 MAJOR } AMDEVTYPE;

// Activity Monitors Implementation Identification Register
__register 32 { 31:20 ProductID, 19:16 Variant, 15:12 Revision, 11:0 Implementer } AMIIDR;

// Activity Monitors Peripheral Identification Register 0
__register 32 { 7:0 PART_0 } AMPIDR0;

// Activity Monitors Peripheral Identification Register 1
__register 32 { 7:4 DES_0, 3:0 PART_1 } AMPIDR1;

// Activity Monitors Peripheral Identification Register 2
__register 32 { 7:4 REVISION, 3:3 JEDEC, 2:0 DES_1 } AMPIDR2;

// Activity Monitors Peripheral Identification Register 3
__register 32 { 7:4 REVAND, 3:0 CMOD } AMPIDR3;

// Activity Monitors Peripheral Identification Register 4
__register 32 { 7:4 SIZE, 3:0 DES_2 } AMPIDR4;

// CTI External Multiplexer Control register
__register 32 {  } ASICCTL;

// Counter-timer Access Control Registers
array [0..7] of __register 32 { 5:5 RWPT, 4:4 RWVT, 3:3 RVOFF, 2:2 RFRQ, 1:1 RVCT, 0:0 RPCT } CNTACR;

// Counter Control Register
__register 32 { 17:8 FCREQ, 2:2 SCEN, 1:1 HDBG, 0:0 EN } CNTCR;

// Counter Count Value register
__register 64 { 63:0 CountValue } CNTCV;

// Counter-timer EL0 Access Control Register
__register 32 { 9:9 EL0PTEN, 8:8 EL0VTEN, 1:1 EL0VCTEN, 0:0 EL0PCTEN } CNTEL0ACR;

// Counter Frequency ID
__register 32 { 31:0 Frequency } CNTFID0;

// Counter Frequency IDs, n > 0
array [1..1003] of __register 32 { 31:0 Frequency } CNTFID;

// Counter Identification Register
__register 32 { 3:0 CNTSC } CNTID;

// Counter-timer Non-secure Access Register
__register 32 {  } CNTNSAR;

// Counter Scale Register
__register 32 { 31:0 ScaleVal } CNTSCR;

// Counter Status Register
__register 32 { 31:8 FCACK, 1:1 DBGH } CNTSR;

// Counter-timer Timer ID Register
__register 32 {  } CNTTIDR;

// Counter ID registers
array [0..11] of __register 32 {  } CounterID;

// CTI Application Trigger Clear register
__register 32 {  } CTIAPPCLEAR;

// CTI Application Pulse register
__register 32 {  } CTIAPPPULSE;

// CTI Application Trigger Set register
__register 32 {  } CTIAPPSET;

// CTI Authentication Status register
__register 32 { 3:2 NSNID, 1:0 NSID } CTIAUTHSTATUS;

// CTI Channel In Status register
__register 32 {  } CTICHINSTATUS;

// CTI Channel Out Status register
__register 32 {  } CTICHOUTSTATUS;

// CTI Component Identification Register 0
__register 32 { 7:0 PRMBL_0 } CTICIDR0;

// CTI Component Identification Register 1
__register 32 { 7:4 CLASS, 3:0 PRMBL_1 } CTICIDR1;

// CTI Component Identification Register 2
__register 32 { 7:0 PRMBL_2 } CTICIDR2;

// CTI Component Identification Register 3
__register 32 { 7:0 PRMBL_3 } CTICIDR3;

// CTI CLAIM Tag Clear register
__register 32 {  } CTICLAIMCLR;

// CTI CLAIM Tag Set register
__register 32 {  } CTICLAIMSET;

// CTI Control register
__register 32 { 0:0 GLBEN } CTICONTROL;

// CTI Device Affinity register 0
__register 32 { 31:0 MPIDR_EL1lo } CTIDEVAFF0;

// CTI Device Affinity register 1
__register 32 { 31:0 MPIDR_EL1hi } CTIDEVAFF1;

// CTI Device Architecture register
__register 32 { 31:21 ARCHITECT, 20:20 PRESENT, 19:16 REVISION, 15:0 ARCHID } CTIDEVARCH;

// CTI Device Control register
__register 32 { 1:1 RCE, 0:0 OSUCE } CTIDEVCTL;

// CTI Device ID register 0
__register 32 { 25:24 INOUT, 21:16 NUMCHAN, 13:8 NUMTRIG, 4:0 EXTMUXNUM } CTIDEVID;

// CTI Device ID register 1
__register 32 {  } CTIDEVID1;

// CTI Device ID register 2
__register 32 {  } CTIDEVID2;

// CTI Device Type register
__register 32 { 7:4 SUB, 3:0 MAJOR } CTIDEVTYPE;

// CTI Channel Gate Enable register
__register 32 {  } CTIGATE;

// CTI Input Trigger to Output Channel Enable registers
array [0..31] of __register 32 {  } CTIINEN;

// CTI Output Trigger Acknowledge register
__register 32 {  } CTIINTACK;

// CTI Integration mode Control register
__register 32 { 0:0 IME } CTIITCTRL;

// CTI Lock Access Register
__register 32 { 31:0 KEY } CTILAR;

// CTI Lock Status Register
__register 32 { 2:2 nTT, 1:1 SLK, 0:0 SLI } CTILSR;

// CTI Input Channel to Output Trigger Enable registers
array [0..31] of __register 32 {  } CTIOUTEN;

// CTI Peripheral Identification Register 0
__register 32 { 7:0 PART_0 } CTIPIDR0;

// CTI Peripheral Identification Register 1
__register 32 { 7:4 DES_0, 3:0 PART_1 } CTIPIDR1;

// CTI Peripheral Identification Register 2
__register 32 { 7:4 REVISION, 3:3 JEDEC, 2:0 DES_1 } CTIPIDR2;

// CTI Peripheral Identification Register 3
__register 32 { 7:4 REVAND, 3:0 CMOD } CTIPIDR3;

// CTI Peripheral Identification Register 4
__register 32 { 7:4 SIZE, 3:0 DES_2 } CTIPIDR4;

// CTI Trigger In Status register
__register 32 {  } CTITRIGINSTATUS;

// CTI Trigger Out Status register
__register 32 {  } CTITRIGOUTSTATUS;

// External Debug AArch32 Processor Feature Register
__register 64 { 15:12 EL3, 11:8 EL2, 7:4 PMSA, 3:0 VMSA } EDAA32PFR;

// External Debug Auxiliary Control Register
__register 32 {  } EDACR;

// External Debug Component Identification Register 0
__register 32 { 7:0 PRMBL_0 } EDCIDR0;

// External Debug Component Identification Register 1
__register 32 { 7:4 CLASS, 3:0 PRMBL_1 } EDCIDR1;

// External Debug Component Identification Register 2
__register 32 { 7:0 PRMBL_2 } EDCIDR2;

// External Debug Component Identification Register 3
__register 32 { 7:0 PRMBL_3 } EDCIDR3;

// External Debug Context ID Sample Register
__register 32 { 31:0 CONTEXTIDR } EDCIDSR;

// External Debug Device Affinity register 0
__register 32 { 31:0 MPIDR_EL1lo } EDDEVAFF0;

// External Debug Device Affinity register 1
__register 32 { 31:0 MPIDR_EL1hi } EDDEVAFF1;

// External Debug Device Architecture register
__register 32 { 31:21 ARCHITECT, 20:20 PRESENT, 19:16 REVISION, 15:12 ARCHVER, 11:0 ARCHPART } EDDEVARCH;

// External Debug Device ID register 0
__register 32 { 27:24 AuxRegs, 7:4 DebugPower, 3:0 PCSample } EDDEVID;

// External Debug Device ID register 1
__register 32 { 3:0 PCSROffset } EDDEVID1;

// External Debug Device ID register 2
__register 32 {  } EDDEVID2;

// External Debug Device Type register
__register 32 { 7:4 SUB, 3:0 MAJOR } EDDEVTYPE;

// External Debug Feature Register
__register 64 { 43:40 TraceFilt, 31:28 CTX_CMPs, 23:20 WRPs, 15:12 BRPs, 11:8 PMUVer, 7:4 TraceVer } EDDFR;

// External Debug Exception Catch Control Register
__register 32 {  } EDECCR;

// External Debug Execution Control Register
__register 32 { 2:2 SS, 1:1 RCE, 0:0 OSUCE } EDECR;

// External Debug Event Status Register
__register 32 { 2:2 SS, 1:1 RC, 0:0 OSUC } EDESR;

// External Debug Integration mode Control register
__register 32 { 0:0 IME } EDITCTRL;

// External Debug Instruction Transfer Register
__register 32 { 31:16 T32Second, 15:0 T32First } EDITR;

// External Debug Lock Access Register
__register 32 { 31:0 KEY } EDLAR;

// External Debug Lock Status Register
__register 32 { 2:2 nTT, 1:1 SLK, 0:0 SLI } EDLSR;

// External Debug Program Counter Sample Register
__register 64 { 63:63 NS, 62:61 EL } EDPCSR;

// External Debug Processor Feature Register
__register 64 { 47:44 AMU, 39:36 SEL2, 35:32 SVE, 27:24 GIC, 23:20 AdvSIMD, 19:16 FP, 15:12 EL3, 11:8 EL2, 7:4 EL1, 3:0 EL0 } EDPFR;

// External Debug Peripheral Identification Register 0
__register 32 { 7:0 PART_0 } EDPIDR0;

// External Debug Peripheral Identification Register 1
__register 32 { 7:4 DES_0, 3:0 PART_1 } EDPIDR1;

// External Debug Peripheral Identification Register 2
__register 32 { 7:4 REVISION, 3:3 JEDEC, 2:0 DES_1 } EDPIDR2;

// External Debug Peripheral Identification Register 3
__register 32 { 7:4 REVAND, 3:0 CMOD } EDPIDR3;

// External Debug Peripheral Identification Register 4
__register 32 { 7:4 SIZE, 3:0 DES_2 } EDPIDR4;

// External Debug Power/Reset Control Register
__register 32 { 1:1 CWRR, 0:0 CORENPDRQ, 3:3 COREPURQ } EDPRCR;

// External Debug Processor Status Register
__register 32 { 11:11 SDR, 10:10 SPMAD, 9:9 EPMAD, 8:8 SDAD, 7:7 EDAD, 6:6 DLK, 5:5 OSLK, 4:4 HALTED, 3:3 SR, 2:2 R, 1:1 SPD, 0:0 PU } EDPRSR;

// External Debug Reserve Control Register
__register 32 { 4:4 CBRRQ, 3:3 CSPA, 2:2 CSE } EDRCR;

// External Debug Status and Control Register
__register 32 { 31:31 TFO, 30:30 RXfull, 29:29 TXfull, 28:28 ITO, 27:27 RXO, 26:26 TXU, 25:25 PipeAdv, 24:24 ITE, 23:22 INTdis, 21:21 TDA, 20:20 MA, 19:19 SC2, 18:18 NS, 16:16 SDD, 14:14 HDE, 13:10 RW, 9:8 EL, 7:7 A, 6:6 ERR, 5:0 STATUS } EDSCR;

// External Debug Virtual Context Sample Register
__register 32 { 31:31 NS, 30:30 E2, 29:29 E3, 28:28 HV, 31:0 CONTEXTIDR_EL2, 15:8, 7:0 VMID } EDVIDSR;

// External Debug Watchpoint Address Register
__register 64 {  } EDWAR;

// Component Identification Register 0
__register 32 { 7:0 PRMBL_0 } ERRCIDR0;

// Component Identification Register 1
__register 32 { 7:4 CLASS, 3:0 PRMBL_1 } ERRCIDR1;

// Component Identification Register 2
__register 32 { 7:0 PRMBL_2 } ERRCIDR2;

// Component Identification Register 3
__register 32 { 7:0 PRMBL_3 } ERRCIDR3;

// Critical Error Interrupt Configuration Register 0
__register 64 { 55:2 ADDR } ERRCRICR0;

// Critical Error Interrupt Configuration Register 1
__register 32 { 31:0 DATA } ERRCRICR1;

// Critical Error Interrupt Configuration Register 2
__register 32 { 7:7 IRQEN, 6:6 NSMSI, 5:4 SH, 3:0 MemAttr } ERRCRICR2;

// Device Affinity Register
__register 64 { 39:32 Aff3, 31:31 F0V, 30:30 U, 24:24 MT, 23:16 Aff2, 15:8 Aff1, 7:0 Aff0 } ERRDEVAFF;

// Device Architecture Register
__register 32 { 31:21 ARCHITECT, 20:20 PRESENT, 19:16 REVISION, 15:12 ARCHVER, 11:0 ARCHPART } ERRDEVARCH;

// Device Configuration Register
__register 32 { 15:0 NUM } ERRDEVID;

// Error Recovery Interrupt Configuration Register 0
__register 64 { 55:2 ADDR } ERRERICR0;

// Error Recovery Interrupt Configuration Register 1
__register 32 { 31:0 DATA } ERRERICR1;

// Error Recovery Interrupt Configuration Register 2
__register 32 { 7:7 IRQEN, 6:6 NSMSI, 5:4 SH, 3:0 MemAttr } ERRERICR2;

// Fault-Handling Interrupt Configuration Register 0
__register 64 { 55:2 ADDR } ERRFHICR0;

// Fault-Handling Interrupt Configuration Register 1
__register 32 { 31:0 DATA } ERRFHICR1;

// Fault-Handling Interrupt Configuration Register 2
__register 32 { 7:7 IRQEN, 6:6 NSMSI, 5:4 SH, 3:0 MemAttr } ERRFHICR2;

// Error Group Status Register
__register 64 {  } ERRGSR;

// Implementation Identification Register
__register 32 { 31:20 ProductID, 19:16 Variant, 15:12 Revision, 11:0 Implementer } ERRIIDR;

// Generic Error Interrupt Configuration Register
array [0..15] of __register 64 {  } ERRIRQCR;

// Error Interrupt Status Register
__register 64 { 5:5 CRIERR, 4:4 CRI, 3:3 ERIERR, 2:2 ERI, 1:1 FHIERR, 0:0 FHI } ERRIRQSR;

// Error Record Address Register
array [0..65534] of __register 64 { 63:63 NS, 62:62 SI, 61:61 AI, 60:60 VA, 55:0 PADDR } ERRADDR;

// Error Record Control Register
array [0..65534] of __register 64 { 13:13 CI, 11:11 WDUI, 10:10 DUI, 10:10 RDUI, 9:9 WCFI, 8:8 CFI, 8:8 RCFI, 7:7 WUE, 6:6 WFI, 5:5 WUI, 4:4 UE, 4:4 RUE, 3:3 FI, 3:3 RFI, 2:2 UI, 2:2 RUI, 0:0 ED } ERRCTLR;

// Error Record Feature Register
array [0..65534] of __register 64 { 54:53 CE, 52:52 DE, 51:51 UEO, 50:50 UER, 49:49 UEU, 48:48 UC, 31:31 FRX, 25:24 TS, 23:22 CI, 21:20 INJ, 19:18 CEO, 17:16 DUI, 15:15 RP, 14:12 CEC, 11:10 CFI, 9:8 UE, 7:6 FI, 5:4 UI, 1:0 ED } ERRFR;

// Error Record Miscellaneous Register 0
array [0..65534] of __register 64 { 39:39 OF, 38:32 CEC, 47:47 OFO, 46:40 CECO, 39:39 OFR, 38:32 CECR } ERRMISC0;

// Error Record Miscellaneous Register 1
array [0..65534] of __register 64 {  } ERRMISC1;

// Error Record Miscellaneous Register 2
array [0..65534] of __register 64 {  } ERRMISC2;

// Error Record Miscellaneous Register 3
array [0..65534] of __register 64 { 63:0 TS } ERRMISC3;

// Pseudo-fault Generation Countdown Register
array [0..65534] of __register 64 { 31:0 CDN } ERRPFGCDN;

// Pseudo-fault Generation Control Register
array [0..65534] of __register 64 { 31:31 CDNEN, 30:30 R, 12:12 MV, 11:11 AV, 10:10 PN, 9:9 ER, 8:8 CI, 7:6 CE, 5:5 DE, 4:4 UEO, 3:3 UER, 2:2 UEU, 1:1 UC, 0:0 OF } ERRPFGCTL;

// Pseudo-fault Generation Feature Register
array [0..65534] of __register 64 { 30:30 R, 29:29 SYN, 12:12 MV, 11:11 AV, 10:10 PN, 9:9 ER, 8:8 CI, 7:6 CE, 5:5 DE, 4:4 UEO, 3:3 UER, 2:2 UEU, 1:1 UC, 0:0 OF } ERRPFGF;

// Error Record Primary Status Register
array [0..65534] of __register 64 { 31:31 AV, 30:30 V, 29:29 UE, 28:28 ER, 27:27 OF, 26:26 MV, 25:24 CE, 23:23 DE, 22:22 PN, 21:20 UET, 19:19 CI, 15:8 IERR, 7:0 SERR } ERRSTATUS;

// Peripheral Identification Register 0
__register 32 { 7:0 PART_0 } ERRPIDR0;

// Peripheral Identification Register 1
__register 32 { 7:4 DES_0, 3:0 PART_1 } ERRPIDR1;

// Peripheral Identification Register 2
__register 32 { 7:4 REVISION, 3:3 JEDEC, 2:0 DES_1, 7:4 PART_2 } ERRPIDR2;

// Peripheral Identification Register 3
__register 32 { 7:4 REVAND, 3:0 CMOD, 7:4 REVISION } ERRPIDR3;

// Peripheral Identification Register 4
__register 32 { 7:4 SIZE, 3:0 DES_2 } ERRPIDR4;

// CPU Interface Aliased Binary Point Register
__register 32 { 2:0 Binary_Point } GICC_ABPR;

// CPU Interface Aliased End Of Interrupt Register
__register 32 { 23:0 INTID } GICC_AEOIR;

// CPU Interface Aliased Highest Priority Pending Interrupt Register
__register 32 { 23:0 INTID } GICC_AHPPIR;

// CPU Interface Aliased Interrupt Acknowledge Register
__register 32 { 23:0 INTID } GICC_AIAR;

// CPU Interface Active Priorities Registers
array [0..3] of __register 32 {  } GICC_APR;

// CPU Interface Binary Point Register
__register 32 { 2:0 Binary_Point } GICC_BPR;

// CPU Interface Control Register
__register 32 { 10:10 EOImodeNS, 8:8 IRQBypDisGrp1, 7:7 FIQBypDisGrp1, 1:1 EnableGrp1, 9:9 EOImodeS, 6:6 IRQBypDisGrp0, 5:5 FIQBypDisGrp0, 4:4 CBPR, 3:3 FIQEn, 0:0 EnableGrp0, 9:9 EOImode } GICC_CTLR;

// CPU Interface Deactivate Interrupt Register
__register 32 { 23:0 INTID } GICC_DIR;

// CPU Interface End Of Interrupt Register
__register 32 { 23:0 INTID } GICC_EOIR;

// CPU Interface Highest Priority Pending Interrupt Register
__register 32 { 23:0 INTID } GICC_HPPIR;

// CPU Interface Interrupt Acknowledge Register
__register 32 { 23:0 INTID } GICC_IAR;

// CPU Interface Identification Register
__register 32 { 31:20 ProductID, 19:16 Architecture_version, 15:12 Revision, 11:0 Implementer } GICC_IIDR;

// CPU Interface Non-secure Active Priorities Registers
array [0..3] of __register 32 {  } GICC_NSAPR;

// CPU Interface Priority Mask Register
__register 32 { 7:0 Priority } GICC_PMR;

// CPU Interface Running Priority Register
__register 32 { 7:0 Priority } GICC_RPR;

// CPU Interface Status Register
__register 32 { 4:4 ASV, 3:3 WROD, 2:2 RWOD, 1:1 WRD, 0:0 RRD } GICC_STATUSR;

// Clear Non-secure SPI Pending Register
__register 32 { 12:0 INTID } GICD_CLRSPI_NSR;

// Clear Secure SPI Pending Register
__register 32 { 12:0 INTID } GICD_CLRSPI_SR;

// SGI Clear-Pending Registers
array [0..3] of __register 32 {  } GICD_CPENDSGIR;

// Distributor Control Register
__register 32 { 31:31 RWP, 7:7 E1NWF, 6:6 DS, 4:4 ARE_NS, 4:4 ARE_S, 2:2 EnableGrp1S, 1:1 EnableGrp1NS, 0:0 EnableGrp0, 1:1 EnableGrp1A, 1:1 EnableGrp1, 4:4 ARE } GICD_CTLR;

// Interrupt Clear-Active Registers
array [0..31] of __register 32 {  } GICD_ICACTIVER;

// Interrupt Clear-Active Registers (extended SPI range)
array [0..31] of __register 32 {  } GICD_ICACTIVERE;

// Interrupt Clear-Enable Registers
array [0..31] of __register 32 {  } GICD_ICENABLER;

// Interrupt Clear-Enable Registers
array [0..31] of __register 32 {  } GICD_ICENABLERE;

// Interrupt Configuration Registers
array [0..63] of __register 32 {  } GICD_ICFGR;

// Interrupt Configuration Registers (Extended SPI Range)
array [0..63] of __register 32 {  } GICD_ICFGRE;

// Interrupt Clear-Pending Registers
array [0..31] of __register 32 {  } GICD_ICPENDR;

// Interrupt Clear-Pending Registers (extended SPI range)
array [0..31] of __register 32 {  } GICD_ICPENDRE;

// Interrupt Group Registers
array [0..31] of __register 32 {  } GICD_IGROUPR;

// Interrupt Group Registers (extended SPI range)
array [0..31] of __register 32 {  } GICD_IGROUPRE;

// Interrupt Group Modifier Registers
array [0..31] of __register 32 {  } GICD_IGRPMODR;

// Interrupt Group Modifier Registers (extended SPI range)
array [0..31] of __register 32 {  } GICD_IGRPMODRE;

// Distributor Implementer Identification Register
__register 32 { 31:24 ProductID, 19:16 Variant, 15:12 Revision, 11:0 Implementer } GICD_IIDR;

// Interrupt Priority Registers
array [0..254] of __register 32 { 31:24 Priority_offset_3B, 23:16 Priority_offset_2B, 15:8 Priority_offset_1B, 7:0 Priority_offset_0B } GICD_IPRIORITYR;

// Holds the priority of the corresponding interrupt for each extended SPI supported by the GIC.
array [0..255] of __register 32 { 31:24 Priority_offset_3B, 23:16 Priority_offset_2B, 15:8 Priority_offset_1B, 7:0 Priority_offset_0B } GICD_IPRIORITYRE;

// Interrupt Routing Registers
array [32..1019] of __register 64 { 39:32 Aff3, 31:31 Interrupt_Routing_Mode, 23:16 Aff2, 15:8 Aff1, 7:0 Aff0 } GICD_IROUTER;

// Interrupt Routing Registers (Extended SPI Range)
array [0..1023] of __register 64 { 39:32 Aff3, 31:31 Interrupt_Routing_Mode, 23:16 Aff2, 15:8 Aff1, 7:0 Aff0 } GICD_IROUTERE;

// Interrupt Set-Active Registers
array [0..31] of __register 32 {  } GICD_ISACTIVER;

// Interrupt Set-Active Registers (extended SPI range)
array [0..31] of __register 32 {  } GICD_ISACTIVERE;

// Interrupt Set-Enable Registers
array [0..31] of __register 32 {  } GICD_ISENABLER;

// Interrupt Set-Enable Registers
array [0..31] of __register 32 {  } GICD_ISENABLERE;

// Interrupt Set-Pending Registers
array [0..31] of __register 32 {  } GICD_ISPENDR;

// Interrupt Set-Pending Registers (extended SPI range)
array [0..31] of __register 32 {  } GICD_ISPENDRE;

// Interrupt Processor Targets Registers
array [0..254] of __register 32 { 31:24 CPU_targets_offset_3B, 23:16 CPU_targets_offset_2B, 15:8 CPU_targets_offset_1B, 7:0 CPU_targets_offset_0B } GICD_ITARGETSR;

// Non-secure Access Control Registers
array [0..63] of __register 32 {  } GICD_NSACR;

// Non-secure Access Control Registers
array [0..63] of __register 32 {  } GICD_NSACRE;

// Set Non-secure SPI Pending Register
__register 32 { 12:0 INTID } GICD_SETSPI_NSR;

// Set Secure SPI Pending Register
__register 32 { 12:0 INTID } GICD_SETSPI_SR;

// Software Generated Interrupt Register
__register 32 { 25:24 TargetListFilter, 23:16 CPUTargetList, 15:15 NSATT, 3:0 INTID } GICD_SGIR;

// SGI Set-Pending Registers
array [0..3] of __register 32 {  } GICD_SPENDSGIR;

// Error Reporting Status Register
__register 32 { 3:3 WROD, 2:2 RWOD, 1:1 WRD, 0:0 RRD } GICD_STATUSR;

// Interrupt Controller Type Register
__register 32 { 31:27 ESPI_range, 26:26 RSS, 25:25 No1N, 24:24 A3V, 23:19 IDbits, 18:18 DVIS, 17:17 LPIS, 16:16 MBIS, 15:11 num_LPIs, 10:10 SecurityExtn, 8:8 ESPI, 7:5 CPUNumber, 4:0 ITLinesNumber } GICD_TYPER;

// Interrupt Controller Type Register 2
__register 32 { 7:7 VIL, 4:0 VID } GICD_TYPER2;

// Active Priorities Registers
array [0..3] of __register 32 {  } GICH_APR;

// End Interrupt Status Register
__register 32 {  } GICH_EISR;

// Empty List Register Status Register
__register 32 {  } GICH_ELRSR;

// Hypervisor Control Register
__register 32 { 31:27 EOICount, 7:7 VGrp1DIE, 6:6 VGrp1EIE, 5:5 VGrp0DIE, 4:4 VGrp0EIE, 3:3 NPIE, 2:2 LRENPIE, 1:1 UIE, 0:0 En } GICH_HCR;

// List Registers
array [0..15] of __register 32 { 31:31 HW, 30:30 Group, 29:28 State, 27:23 Priority, 19:10 pINTID, 9:0 vINTID } GICH_LR;

// Maintenance Interrupt Status Register
__register 32 { 7:7 VGrp1D, 6:6 VGrp1E, 5:5 VGrp0D, 4:4 VGrp0E, 3:3 NP, 2:2 LRENP, 1:1 U, 0:0 EOI } GICH_MISR;

// Virtual Machine Control Register
__register 32 { 31:24 VPMR, 23:21 VBPR0, 20:18 VBPR1, 9:9 VEOIM, 4:4 VCBPR, 3:3 VFIQEn, 2:2 VAckCtl, 1:1 VENG1, 0:0 VENG0 } GICH_VMCR;

// Virtual Type Register
__register 32 { 31:29 PRIbits, 28:26 PREbits, 25:23 IDbits, 22:22 SEIS, 21:21 A3V, 4:0 ListRegs } GICH_VTR;

// Clear LPI Pending Register
__register 64 { 31:0 pINTID } GICR_CLRLPIR;

// Redistributor Control Register
__register 32 { 31:31 UWP, 26:26 DPG1S, 25:25 DPG1NS, 24:24 DPG0, 3:3 RWP, 1:1 CES, 0:0 EnableLPIs } GICR_CTLR;

// Interrupt Clear-Active Register 0
__register 32 {  } GICR_ICACTIVER0;

// Interrupt Clear-Active Registers
array [1..2] of __register 32 {  } GICR_ICACTIVERE;

// Interrupt Clear-Enable Register 0
__register 32 {  } GICR_ICENABLER0;

// Interrupt Clear-Enable Registers
array [1..2] of __register 32 {  } GICR_ICENABLERE;

// Interrupt Configuration Register 0
__register 32 {  } GICR_ICFGR0;

// Interrupt Configuration Register 1
__register 32 {  } GICR_ICFGR1;

// Interrupt configuration registers
array [2..5] of __register 32 {  } GICR_ICFGRE;

// Interrupt Clear-Pending Register 0
__register 32 {  } GICR_ICPENDR0;

// Interrupt Clear-Pending Registers
array [1..2] of __register 32 {  } GICR_ICPENDRE;

// Interrupt Group Register 0
__register 32 {  } GICR_IGROUPR0;

// Interrupt Group Registers
array [1..2] of __register 32 {  } GICR_IGROUPRE;

// Interrupt Group Modifier Register 0
__register 32 {  } GICR_IGRPMODR0;

// Interrupt Group Modifier Registers
array [1..2] of __register 32 {  } GICR_IGRPMODRE;

// Redistributor Implementer Identification Register
__register 32 { 31:24 ProductID, 19:16 Variant, 15:12 Revision, 11:0 Implementer } GICR_IIDR;

// Redistributor Invalidate All Register
__register 64 { 47:32 V } GICR_INVALLR;

// Redistributor Invalidate LPI Register
__register 64 { 63:63 V, 47:32 vPEID, 31:0 INTID } GICR_INVLPIR;

// Interrupt Priority Registers
array [0..7] of __register 32 { 31:24 Priority_offset_3B, 23:16 Priority_offset_2B, 15:8 Priority_offset_1B, 7:0 Priority_offset_0B } GICR_IPRIORITYR;

// Interrupt Priority Registers (extended PPI range)
array [8..23] of __register 32 { 31:24 Priority_offset_3B, 23:16 Priority_offset_2B, 15:8 Priority_offset_1B, 7:0 Priority_offset_0B } GICR_IPRIORITYRE;

// Interrupt Set-Active Register 0
__register 32 {  } GICR_ISACTIVER0;

// Interrupt Set-Active Registers
array [1..2] of __register 32 {  } GICR_ISACTIVERE;

// Interrupt Set-Enable Register 0
__register 32 {  } GICR_ISENABLER0;

// Interrupt Set-Enable Registers
array [1..2] of __register 32 {  } GICR_ISENABLERE;

// Interrupt Set-Pending Register 0
__register 32 {  } GICR_ISPENDR0;

// Interrupt Set-Pending Registers
array [1..2] of __register 32 {  } GICR_ISPENDRE;

// Report maximum PARTID and PMG Register
__register 32 { 23:16 PMGmax, 15:0 PARTIDmax } GICR_MPAMIDR;

// Non-secure Access Control Register
__register 32 {  } GICR_NSACR;

// Set PARTID and PMG Register
__register 32 { 23:16 PMG, 15:0 PARTID } GICR_PARTIDR;

// Redistributor LPI Pending Table Base Address Register
__register 64 { 62:62 PTZ, 58:56 OuterCache, 51:16 Physical_Address, 11:10 Shareability, 9:7 InnerCache } GICR_PENDBASER;

// Redistributor Properties Base Address Register
__register 64 { 58:56 OuterCache, 51:12 Physical_Address, 11:10 Shareability, 9:7 InnerCache, 4:0 IDbits } GICR_PROPBASER;

// Set LPI Pending Register
__register 64 { 31:0 pINTID } GICR_SETLPIR;

// Error Reporting Status Register
__register 32 { 3:3 WROD, 2:2 RWOD, 1:1 WRD, 0:0 RRD } GICR_STATUSR;

// Redistributor Synchronize Register
__register 32 { 0:0 Busy } GICR_SYNCR;

// Redistributor Type Register
__register 64 { 63:32 Affinity_Value, 31:27 PPInum, 26:26 VSGI, 25:24 CommonLPIAff, 23:8 Processor_Number, 7:7 RVPEID, 6:6 MPAM, 5:5 DPGS, 4:4 Last, 3:3 DirectLPI, 2:2 Dirty, 1:1 VLPIS, 0:0 PLPIS } GICR_TYPER;

// Virtual Redistributor LPI Pending Table Base Address Register
__register 64 { 63:63 Valid, 62:62 IDAI, 61:61 PendingLast, 60:60 Dirty, 58:56 OuterCache, 51:16 Physical_Address, 11:10 Shareability, 9:7 InnerCache, 62:62 Doorbell, 59:59 VGrp0En, 58:58 VGrp1En, 15:0 vPEID } GICR_VPENDBASER;

// Virtual Redistributor Properties Base Address Register
__register 64 { 58:56 OuterCache, 51:12 Physical_Address, 11:10 Shareability, 9:7 InnerCache, 4:0 IDbits, 63:63 Valid, 61:59 Entry_Size, 55:55 Indirect, 54:53 Page_Size, 52:52 Z, 6:0 Size } GICR_VPROPBASER;

// Redistributor virtual SGI pending state register
__register 32 { 31:31 Busy, 15:0 Pending } GICR_VSGIPENDR;

// Redistributor virtual SGI pending state request register
__register 32 { 15:0 vPEID } GICR_VSGIR;

// Redistributor Wake Register
__register 32 { 2:2 ChildrenAsleep, 1:1 ProcessorSleep } GICR_WAKER;

// Virtual Machine Aliased Binary Point Register
__register 32 { 2:0 Binary_Point } GICV_ABPR;

// Virtual Machine Aliased End Of Interrupt Register
__register 32 { 24:0 INTID } GICV_AEOIR;

// Virtual Machine Aliased Highest Priority Pending Interrupt Register
__register 32 { 24:0 INTID } GICV_AHPPIR;

// Virtual Machine Aliased Interrupt Acknowledge Register
__register 32 { 24:0 INTID } GICV_AIAR;

// Virtual Machine Active Priorities Registers
array [0..3] of __register 32 {  } GICV_APR;

// Virtual Machine Binary Point Register
__register 32 { 2:0 Binary_Point } GICV_BPR;

// Virtual Machine Control Register
__register 32 { 9:9 EOImode, 4:4 CBPR, 3:3 FIQEn, 2:2 AckCtl, 1:1 EnableGrp1, 0:0 EnableGrp0 } GICV_CTLR;

// Virtual Machine Deactivate Interrupt Register
__register 32 { 24:0 INTID } GICV_DIR;

// Virtual Machine End Of Interrupt Register
__register 32 { 24:0 INTID } GICV_EOIR;

// Virtual Machine Highest Priority Pending Interrupt Register
__register 32 { 24:0 INTID } GICV_HPPIR;

// Virtual Machine Interrupt Acknowledge Register
__register 32 { 24:0 INTID } GICV_IAR;

// Virtual Machine CPU Interface Identification Register
__register 32 { 31:20 ProductID, 19:16 Architecture_version, 15:12 Revision, 11:0 Implementer } GICV_IIDR;

// Virtual Machine Priority Mask Register
__register 32 { 7:0 Priority } GICV_PMR;

// Virtual Machine Running Priority Register
__register 32 { 7:0 Priority } GICV_RPR;

// Virtual Machine Error Reporting Status Register
__register 32 { 3:3 WROD, 2:2 RWOD, 1:1 WRD, 0:0 RRD } GICV_STATUSR;

// ITS Translation Table Descriptors
array [0..7] of __register 64 { 63:63 Valid, 62:62 Indirect, 61:59 InnerCache, 58:56 Type, 55:53 OuterCache, 52:48 Entry_Size, 47:12 Physical_Address, 11:10 Shareability, 9:8 Page_Size, 7:0 Size } GITS_BASER;

// ITS Command Queue Descriptor
__register 64 { 63:63 Valid, 61:59 InnerCache, 55:53 OuterCache, 51:12 Physical_Address, 11:10 Shareability, 7:0 Size } GITS_CBASER;

// ITS Read Register
__register 64 { 19:5 Offset, 0:0 Stalled } GITS_CREADR;

// ITS Control Register
__register 32 { 31:31 Quiescent, 7:4 ITS_Number, 1:1 ImDe, 0:0 Enabled } GITS_CTLR;

// ITS Write Register
__register 64 { 19:5 Offset, 0:0 Retry } GITS_CWRITER;

// ITS Identification Register
__register 32 { 31:24 ProductID, 19:16 Variant, 15:12 Revision, 11:0 Implementer } GITS_IIDR;

// Report maximum PARTID and PMG Register
__register 32 { 23:16 PMGmax, 15:0 PARTIDmax } GITS_MPAMIDR;

// Report ITS's affinity.
__register 32 { 31:24 Aff3, 23:16 Aff2, 15:8 Aff1 } GITS_MPIDR;

// Set PARTID and PMG Register
__register 32 { 23:16 PMG, 15:0 PARTID } GITS_PARTIDR;

// ITS SGI Register
__register 64 { 47:32 vPEID, 3:0 vINTID } GITS_SGIR;

// ITS Translation Register
__register 32 { 31:0 EventID } GITS_TRANSLATER;

// ITS Type Register
__register 64 { 43:43 nID, 42:41 SVPET, 40:40 VMAPP, 39:39 VSGI, 38:38 MPAM, 37:37 VMOVP, 36:36 CIL, 35:32 CIDbits, 31:24 HCC, 19:19 PTA, 18:18 SEIS, 17:13 Devbits, 12:8 ID_bits, 7:4 ITT_entry_size, 2:2 CCT, 1:1 Virtual, 0:0 Physical } GITS_TYPER;

// MPAM Cache Maximum Capacity Partition Configuration Register
__register 32 { 15:0 CMAX } MPAMCFG_CMAX;

// MPAM Cache Portion Bitmap Partition Configuration Register
__register 32768 {  } MPAMCFG_CPBM;

// MPAM Internal PARTID Narrowing Configuration Register
__register 32 { 16:16 INTERNAL, 15:0 INTPARTID } MPAMCFG_INTPARTID;

// MPAM Memory Bandwidth Maximum Partition Configuration Register
__register 32 { 31:31 HARDLIM, 15:0 MAX } MPAMCFG_MBW_MAX;

// MPAM Cache Maximum Capacity Partition Configuration Register
__register 32 { 15:0 MIN } MPAMCFG_MBW_MIN;

// MPAM Bandwidth Portion Bitmap Partition Configuration Register
__register 4096 {  } MPAMCFG_MBW_PBM;

// MPAM Memory Bandwidth Proportional Stride Partition Configuration Register
__register 32 { 31:31 EN, 15:0 STRIDEM1 } MPAMCFG_MBW_PROP;

// MPAM Memory Bandwidth Partitioning Window Width Configuration Register
__register 32 { 23:8 US_INT, 7:0 US_FRAC } MPAMCFG_MBW_WINWD;

// MPAM Partition Configuration Selection Register
__register 32 { 27:24 RIS, 16:16 INTERNAL, 15:0 PARTID_SEL } MPAMCFG_PART_SEL;

// MPAM Priority Partition Configuration Register
__register 32 { 31:16 DSPRI, 15:0 INTPRI } MPAMCFG_PRI;

// MPAM Architecture Identification Register
__register 32 { 7:4 ArchMajorRev, 3:0 ArchMinorRev } MPAMF_AIDR;

// MPAM Features Cache Capacity Partitioning ID register
__register 32 { 5:0 CMAX_WD } MPAMF_CCAP_IDR;

// MPAM Features Cache Portion Partitioning ID register
__register 32 { 15:0 CPBM_WD } MPAMF_CPOR_IDR;

// MPAM Features Cache Storage Usage Monitoring ID register
__register 32 { 31:31 HAS_CAPTURE, 15:0 NUM_MON } MPAMF_CSUMON_IDR;

// MPAM Error Control Register
__register 32 { 0:0 INTEN } MPAMF_ECR;

// MPAM Error Status Register
__register 64 { 35:32 RIS, 31:31 OVRWR, 27:24 ERRCODE, 23:16 PMG, 15:0 PARTID_MON } MPAMF_ESR;

// MPAM Features Identification Register
__register 64 { 59:56 RIS_MAX, 39:39 HAS_ESR, 38:38 HAS_EXTD_ESR, 37:37 NO_IMPL_MSMON, 36:36 NO_IMPL_PART, 32:32 HAS_RIS, 31:31 HAS_PARTID_NRW, 30:30 HAS_MSMON, 29:29 HAS_IMPL_IDR, 28:28 EXT, 27:27 HAS_PRI_PART, 26:26 HAS_MBW_PART, 25:25 HAS_CPOR_PART, 24:24 HAS_CCAP_PART, 23:16 PMG_MAX, 15:0 PARTID_MAX } MPAMF_IDR;

// MPAM Implementation Identification Register
__register 32 { 31:20 ProductID, 19:16 Variant, 15:12 Revision, 11:0 Implementer } MPAMF_IIDR;

// MPAM Implementation-Specific Partitioning Feature Identification Register
__register 32 {  } MPAMF_IMPL_IDR;

// MPAM Features Memory Bandwidth Usage Monitoring ID register
__register 32 { 31:31 HAS_CAPTURE, 30:30 HAS_LONG, 29:29 LWD, 20:16 SCALE, 15:0 NUM_MON } MPAMF_MBWUMON_IDR;

// MPAM Memory Bandwidth Partitioning Identification Register
__register 32 { 28:16 BWPBM_WD, 14:14 WINDWR, 13:13 HAS_PROP, 12:12 HAS_PBM, 11:11 HAS_MAX, 10:10 HAS_MIN, 5:0 BWA_WD } MPAMF_MBW_IDR;

// MPAM Resource Monitoring Identification Register
__register 32 { 31:31 HAS_LOCAL_CAPT_EVNT, 17:17 MSMON_MBWU, 16:16 MSMON_CSU } MPAMF_MSMON_IDR;

// MPAM PARTID Narrowing ID register
__register 32 { 15:0 INTPARTID_MAX } MPAMF_PARTID_NRW_IDR;

// MPAM Priority Partitioning Identification Register
__register 32 { 25:20 DSPRI_WD, 17:17 DSPRI_0_IS_LOW, 16:16 HAS_DSPRI, 9:4 INTPRI_WD, 1:1 INTPRI_0_IS_LOW, 0:0 HAS_INTPRI } MPAMF_PRI_IDR;

// MPAM Features Secure Identification Register
__register 32 { 23:16 S_PMG_MAX, 15:0 S_PARTID_MAX } MPAMF_SIDR;

// MPAM Capture Event Generation Register
__register 32 { 1:1 ALL, 0:0 NOW } MSMON_CAPT_EVNT;

// MPAM Memory System Monitor Configure Cache Storage Usage Monitor Control Register
__register 32 { 31:31 EN, 30:28 CAPT_EVNT, 27:27 CAPT_RESET, 26:26 OFLOW_STATUS, 25:25 OFLOW_INTR, 24:24 OFLOW_FRZ, 23:20 SUBTYPE, 17:17 MATCH_PMG, 16:16 MATCH_PARTID, 7:0 TYPE } MSMON_CFG_CSU_CTL;

// MPAM Memory System Monitor Configure Cache Storage Usage Monitor Filter Register
__register 32 { 23:16 PMG, 15:0 PARTID } MSMON_CFG_CSU_FLT;

// MPAM Memory System Monitor Configure Memory Bandwidth Usage Monitor Control Register
__register 32 { 31:31 EN, 30:28 CAPT_EVNT, 27:27 CAPT_RESET, 26:26 OFLOW_STATUS, 25:25 OFLOW_INTR, 24:24 OFLOW_FRZ, 23:20 SUBTYPE, 19:19 SCLEN, 17:17 MATCH_PMG, 16:16 MATCH_PARTID, 15:15 OFLOW_STATUS_L, 14:14 OFLOW_INTR_L, 7:0 TYPE } MSMON_CFG_MBWU_CTL;

// MPAM Memory System Monitor Configure Memory Bandwidth Usage Monitor Filter Register
__register 32 { 23:16 PMG, 15:0 PARTID } MSMON_CFG_MBWU_FLT;

// MPAM Monitor Instance Selection Register
__register 32 { 27:24 RIS, 15:0 MON_SEL } MSMON_CFG_MON_SEL;

// MPAM Cache Storage Usage Monitor Register
__register 32 { 31:31 NRDY, 30:0 VALUE } MSMON_CSU;

// MPAM Cache Storage Usage Monitor Capture Register
__register 32 { 31:31 NRDY, 30:0 VALUE } MSMON_CSU_CAPTURE;

// MPAM Memory Bandwidth Usage Monitor Register
__register 32 { 31:31 NRDY, 30:0 VALUE } MSMON_MBWU;

// MPAM Memory Bandwidth Usage Monitor Capture Register
__register 32 { 31:31 NRDY, 30:0 VALUE } MSMON_MBWU_CAPTURE;

// MPAM Long Memory Bandwidth Usage Monitor Register
__register 64 { 63:63 NRDY, 62:0 VALUE } MSMON_MBWU_L;

// MPAM Long Memory Bandwidth Usage Monitor Capture Register
__register 64 { 63:63 NRDY, 62:0 VALUE } MSMON_MBWU_L_CAPTURE;

// Performance Monitors Authentication Status register
__register 32 { 7:6 SNID, 5:4 SID, 3:2 NSNID, 1:0 NSID } PMAUTHSTATUS;

// Performance Monitors Configuration Register
__register 32 { 31:28 NCG, 19:19 UEN, 18:18 WT, 17:17 NA, 16:16 EX, 15:15 CCD, 14:14 CC, 13:8 SIZE, 7:0 N } PMCFGR;

// CONTEXTIDR_EL1 Sample Register
__register 32 { 31:0 CONTEXTIDR_EL1 } PMCID1SR;

// CONTEXTIDR_EL2 Sample Register
__register 32 { 31:0 CONTEXTIDR_EL2 } PMCID2SR;

// Performance Monitors Component Identification Register 0
__register 32 { 7:0 PRMBL_0 } PMCIDR0;

// Performance Monitors Component Identification Register 1
__register 32 { 7:4 CLASS, 3:0 PRMBL_1 } PMCIDR1;

// Performance Monitors Component Identification Register 2
__register 32 { 7:0 PRMBL_2 } PMCIDR2;

// Performance Monitors Component Identification Register 3
__register 32 { 7:0 PRMBL_3 } PMCIDR3;

// Performance Monitors Device Affinity register 0
__register 32 { 31:0 MPIDR_EL1lo } PMDEVAFF0;

// Performance Monitors Device Affinity register 1
__register 32 { 31:0 MPIDR_EL1hi } PMDEVAFF1;

// Performance Monitors Device Architecture register
__register 32 { 31:21 ARCHITECT, 20:20 PRESENT, 19:16 REVISION, 15:0 ARCHID } PMDEVARCH;

// Performance Monitors Device ID register
__register 32 { 3:0 PCSample } PMDEVID;

// Performance Monitors Device Type register
__register 32 { 7:4 SUB, 3:0 MAJOR } PMDEVTYPE;

// Performance Monitors Integration mode Control register
__register 32 { 0:0 IME } PMITCTRL;

// Performance Monitors Lock Access Register
__register 32 { 31:0 KEY } PMLAR;

// Performance Monitors Lock Status Register
__register 32 { 2:2 nTT, 1:1 SLK, 0:0 SLI } PMLSR;

// Program Counter Sample Register
__register 64 { 63:63 NS, 62:61 EL, 55:32, 31:0 PCSample } PMPCSR;

// Performance Monitors Peripheral Identification Register 0
__register 32 { 7:0 PART_0 } PMPIDR0;

// Performance Monitors Peripheral Identification Register 1
__register 32 { 7:4 DES_0, 3:0 PART_1 } PMPIDR1;

// Performance Monitors Peripheral Identification Register 2
__register 32 { 7:4 REVISION, 3:3 JEDEC, 2:0 DES_1 } PMPIDR2;

// Performance Monitors Peripheral Identification Register 3
__register 32 { 7:4 REVAND, 3:0 CMOD } PMPIDR3;

// Performance Monitors Peripheral Identification Register 4
__register 32 { 7:4 SIZE, 3:0 DES_2 } PMPIDR4;

// VMID Sample Register
__register 32 { 15:8, 7:0 VMID } PMVIDSR;

