// Verilog netlist created by S-Edit 2021.2.0
// Written on Mon Oct 21 12:17:43 2024

// Library:               TEAMI_D2
// Cell:                  TEAMI_DESIGN
// View name:             schematic1
// Design path:           \\filestore.soton.ac.uk\users\tp2g23\mydocuments\TEAMI_D2
// Control property name(s): VERILOG
// Exclude global pins on subcircuits: <yes>



module Design_Globals(
);
wire Vdd;
wire Gnd;
endmodule // Design_Globals

module TEAMI_ThreeBitCounter(
	CLK,
	En,
	nReset,
	Q0,
	Q1,
	Q2,
	RollOver
);
input CLK;
input En;
input nReset;
output Q0;
output Q1;
output Q2;
output RollOver;

wire N_1;
wire N_2;
wire N_3;
wire N_4;
wire N_5;
wire N_6;
wire N_7;
wire N_8;
wire N_9;
wire N_10;
wire N_11;
wire N_12;
wire N_13;

DFFR DFFR_1(
	.Clk(CLK),
	.D(N_10),
	.nQ(N_11),
	.nRst(nReset),
	.Q(Q2)
);
DFFR DFFR_2(
	.Clk(CLK),
	.D(N_7),
	.nQ(N_12),
	.nRst(nReset),
	.Q(Q1)
);
DFFR DFFR_3(
	.Clk(CLK),
	.D(N_1),
	.nQ(N_13),
	.nRst(nReset),
	.Q(Q0)
);
INV1 INV1_1(
	.A(N_3),
	.Q(RollOver)
);
NAND2 NAND2_1(
	.A(Q2),
	.B(N_5),
	.Q(N_2)
);
NAND2 NAND2_2(
	.A(En),
	.B(Q0),
	.Q(N_5)
);
NAND2 NAND2_3(
	.A(N_4),
	.B(N_8),
	.Q(N_7)
);
NAND2 NAND2_4(
	.A(Q1),
	.B(N_9),
	.Q(N_8)
);
NAND2 NAND2_5(
	.A(Q0),
	.B(En),
	.Q(N_9)
);
NAND2 NAND2_6(
	.A(N_2),
	.B(N_6),
	.Q(N_10)
);
NAND3 NAND3_1(
	.A(Q2),
	.B(En),
	.C(Q0),
	.Q(N_3)
);
NAND3 NAND3_2(
	.A(En),
	.B(Q0),
	.C(Q1),
	.Q(N_6)
);
NAND4 NAND4_1(
	.A(N_12),
	.B(N_11),
	.C(En),
	.D(Q0),
	.Q(N_4)
);
XOR2 XOR2_1(
	.A(Q0),
	.B(En),
	.Q(N_1)
);
endmodule // TEAMI_ThreeBitCounter


module TEAMI_HourCounter4Bit(
	CLK,
	En,
	nReset,
	Q0,
	Q1,
	Q2,
	Q3
);
input CLK;
input En;
input nReset;
output Q0;
output Q1;
output Q2;
output Q3;

wire N_1;
wire N_2;
wire N_3;
wire N_4;
wire N_5;
wire N_6;
wire N_7;
wire N_8;
wire N_9;
wire N_10;
wire N_11;
wire N_12;
wire N_13;
wire N_14;
wire N_15;
wire N_16;
wire N_17;
wire N_18;
wire N_19;
wire N_20;
wire N_21;
wire N_22;

DFFR DFFR_1(
	.Clk(CLK),
	.D(N_16),
	.nQ(N_19),
	.nRst(nReset),
	.Q(Q2)
);
DFFR DFFR_2(
	.Clk(CLK),
	.D(N_7),
	.nQ(N_20),
	.nRst(nReset),
	.Q(Q1)
);
DFFR DFFR_3(
	.Clk(CLK),
	.D(N_1),
	.nQ(N_21),
	.nRst(nReset),
	.Q(Q0)
);
DFFR DFFR_4(
	.Clk(CLK),
	.D(N_11),
	.nQ(N_22),
	.nRst(nReset),
	.Q(Q3)
);
INV1 INV1_2(
	.A(En),
	.Q(N_3)
);
NAND2 NAND2_1(
	.A(Q3),
	.B(N_20),
	.Q(N_5)
);
NAND2 NAND2_2(
	.A(N_21),
	.B(Q3),
	.Q(N_8)
);
NAND2 NAND2_3(
	.A(Q1),
	.B(N_3),
	.Q(N_10)
);
NAND2 NAND2_4(
	.A(N_21),
	.B(Q1),
	.Q(N_12)
);
NAND2 NAND2_5(
	.A(Q2),
	.B(Q3),
	.Q(N_14)
);
NAND2 NAND2_6(
	.A(N_3),
	.B(Q3),
	.Q(N_15)
);
NAND2 NAND2_7(
	.A(N_18),
	.B(N_17),
	.Q(N_16)
);
NAND2 NAND2_8(
	.A(Q2),
	.B(N_9),
	.Q(N_17)
);
NAND2 NAND2_9(
	.A(N_2),
	.B(N_4),
	.Q(N_18)
);
NAND3 NAND3_1(
	.A(N_20),
	.B(Q0),
	.C(En),
	.Q(N_6)
);
NAND4 NAND4_1(
	.A(N_6),
	.B(N_14),
	.C(N_12),
	.D(N_10),
	.Q(N_7)
);
NAND4 NAND4_2(
	.A(N_22),
	.B(Q0),
	.C(Q1),
	.D(En),
	.Q(N_9)
);
NAND4 NAND4_3(
	.A(N_15),
	.B(N_8),
	.C(N_5),
	.D(N_13),
	.Q(N_11)
);
NAND4 NAND4_4(
	.A(En),
	.B(Q2),
	.C(Q1),
	.D(Q0),
	.Q(N_13)
);
NOR2 NOR2_2(
	.A(N_20),
	.B(N_21),
	.Q(N_2)
);
NOR3 NOR3_2(
	.A(Q2),
	.B(Q3),
	.C(N_3),
	.Q(N_4)
);
XOR2 XOR2_1(
	.A(Q0),
	.B(En),
	.Q(N_1)
);
endmodule // TEAMI_HourCounter4Bit


module TEAMI_HourDecoder(
	Q0,
	Q0_tens,
	Q1,
	Q1_units,
	Q2,
	Q3,
	Q3_units
);
input Q0;
output Q0_tens;
input Q1;
output Q1_units;
input Q2;
input Q3;
output Q3_units;

wire N_1;
wire N_2;
wire N_3;
wire N_4;

INV1 INV1_1(
	.A(N_1),
	.Q(N_3)
);
NAND2 NAND2_1(
	.A(Q1),
	.B(Q3),
	.Q(N_4)
);
NAND2 NAND2_2(
	.A(N_4),
	.B(N_3),
	.Q(Q0_tens)
);
NOR4 NOR4_1(
	.A(Q0),
	.B(Q1),
	.C(Q2),
	.D(Q3),
	.Q(N_1)
);
XNR2 XNR2_1(
	.A(N_2),
	.B(N_3),
	.Q(Q3_units)
);
XOR2 XOR2_2(
	.A(Q0_tens),
	.B(Q1),
	.Q(Q1_units)
);
XOR2 XOR2_4(
	.A(Q0_tens),
	.B(Q3),
	.Q(N_2)
);
endmodule // TEAMI_HourDecoder


module TEAMI_MinuteCounter4Bit(
	CLK,
	En,
	nReset,
	Q0,
	Q1,
	Q2,
	Q3,
	RollOver
);
input CLK;
input En;
input nReset;
output Q0;
output Q1;
output Q2;
output Q3;
output RollOver;

wire N_1;
wire N_2;
wire N_3;
wire N_4;
wire N_5;
wire N_6;
wire N_7;
wire N_8;
wire N_9;
wire N_10;
wire N_11;
wire N_12;
wire N_13;
wire N_14;
wire N_15;
wire N_16;

DFFR DFFR_1(
	.Clk(CLK),
	.D(N_3),
	.nQ(N_13),
	.nRst(nReset),
	.Q(Q2)
);
DFFR DFFR_2(
	.Clk(CLK),
	.D(N_12),
	.nQ(N_14),
	.nRst(nReset),
	.Q(Q1)
);
DFFR DFFR_3(
	.Clk(CLK),
	.D(N_1),
	.nQ(N_15),
	.nRst(nReset),
	.Q(Q0)
);
DFFR DFFR_4(
	.Clk(CLK),
	.D(N_5),
	.nQ(N_16),
	.nRst(nReset),
	.Q(Q3)
);
INV1 INV1_2(
	.A(En),
	.Q(N_2)
);
NAND2 NAND2_1(
	.A(N_11),
	.B(N_9),
	.Q(N_5)
);
NAND2 NAND2_2(
	.A(En),
	.B(Q0),
	.Q(N_7)
);
NAND2 NAND2_4(
	.A(Q1),
	.B(N_10),
	.Q(N_8)
);
NAND2 NAND2_5(
	.A(Q0),
	.B(En),
	.Q(N_10)
);
NAND2 NAND2_6(
	.A(Q3),
	.B(N_7),
	.Q(N_11)
);
NAND2 NAND2_8(
	.A(N_6),
	.B(N_8),
	.Q(N_12)
);
NAND4 NAND4_1(
	.A(N_14),
	.B(N_16),
	.C(En),
	.D(Q0),
	.Q(N_6)
);
NAND4 NAND4_4(
	.A(En),
	.B(Q2),
	.C(Q1),
	.D(Q0),
	.Q(N_9)
);
NOR3 NOR3_1(
	.A(N_16),
	.B(N_2),
	.C(N_15),
	.Q(RollOver)
);
NOR3 NOR3_2(
	.A(N_2),
	.B(N_14),
	.C(N_15),
	.Q(N_4)
);
XOR2 XOR2_1(
	.A(Q0),
	.B(En),
	.Q(N_1)
);
XOR2 XOR2_2(
	.A(Q2),
	.B(N_4),
	.Q(N_3)
);
endmodule // TEAMI_MinuteCounter4Bit


module TEAMI_MUX8TO4(
	Q0,
	Q0_0,
	Q0_1,
	Q1,
	Q1_0,
	Q1_1,
	Q2,
	Q2_0,
	Q2_1,
	Q3,
	Q3_0,
	Q3_1,
	S
);
output Q0;
input Q0_0;
input Q0_1;
output Q1;
input Q1_0;
input Q1_1;
output Q2;
input Q2_0;
input Q2_1;
output Q3;
input Q3_0;
input Q3_1;
input S;

MUX2 MUX2_1(
	.A(Q1_0),
	.B(Q1_1),
	.Q(Q1),
	.S(S)
);
MUX2 MUX2_2(
	.A(Q0_0),
	.B(Q0_1),
	.Q(Q0),
	.S(S)
);
MUX2 MUX2_3(
	.A(Q2_0),
	.B(Q2_1),
	.Q(Q2),
	.S(S)
);
MUX2 MUX2_4(
	.A(Q3_0),
	.B(Q3_1),
	.Q(Q3),
	.S(S)
);
endmodule // TEAMI_MUX8TO4


module TEAMI_MUX16TO4(
	Q0,
	Q0_00,
	Q0_01,
	Q0_10,
	Q0_11,
	Q1,
	Q1_00,
	Q1_01,
	Q1_10,
	Q1_11,
	Q2,
	Q2_00,
	Q2_01,
	Q2_10,
	Q2_11,
	Q3,
	Q3_00,
	Q3_01,
	Q3_10,
	Q3_11,
	Select_LSB,
	Select_MSB
);
output Q0;
input Q0_00;
input Q0_01;
input Q0_10;
input Q0_11;
output Q1;
input Q1_00;
input Q1_01;
input Q1_10;
input Q1_11;
output Q2;
input Q2_00;
input Q2_01;
input Q2_10;
input Q2_11;
output Q3;
input Q3_00;
input Q3_01;
input Q3_10;
input Q3_11;
input Select_LSB;
input Select_MSB;

wire N_1;
wire N_2;
wire N_3;
wire N_4;
wire N_5;
wire N_6;
wire N_7;
wire N_8;

TEAMI_MUX8TO4 TEAMI_MUX8TO4_1(
	.Q0(N_1),
	.Q0_0(Q0_00),
	.Q0_1(Q0_10),
	.Q1(N_2),
	.Q1_0(Q1_00),
	.Q1_1(Q1_10),
	.Q2(N_3),
	.Q2_0(Q2_00),
	.Q2_1(Q2_10),
	.Q3(N_4),
	.Q3_0(Q3_00),
	.Q3_1(Q3_10),
	.S(Select_MSB)
);
TEAMI_MUX8TO4 TEAMI_MUX8TO4_2(
	.Q0(N_5),
	.Q0_0(Q0_01),
	.Q0_1(Q0_11),
	.Q1(N_6),
	.Q1_0(Q1_01),
	.Q1_1(Q1_11),
	.Q2(N_7),
	.Q2_0(Q2_01),
	.Q2_1(Q2_11),
	.Q3(N_8),
	.Q3_0(Q3_01),
	.Q3_1(Q3_11),
	.S(Select_MSB)
);
TEAMI_MUX8TO4 TEAMI_MUX8TO4_3(
	.Q0(Q0),
	.Q0_0(N_1),
	.Q0_1(N_5),
	.Q1(Q1),
	.Q1_0(N_2),
	.Q1_1(N_6),
	.Q2(Q2),
	.Q2_0(N_3),
	.Q2_1(N_7),
	.Q3(Q3),
	.Q3_0(N_4),
	.Q3_1(N_8),
	.S(Select_LSB)
);
endmodule // TEAMI_MUX16TO4


module TEAMI_TwoBitCounter(
	CLK,
	nReset,
	Q0,
	Q1
);
input CLK;
input nReset;
output Q0;
output Q1;

wire N_1;
wire N_2;
wire N_3;

DFFR DFFR_1(
	.Clk(CLK),
	.D(N_2),
	.nQ(N_2),
	.nRst(nReset),
	.Q(Q0)
);
DFFR DFFR_2(
	.Clk(CLK),
	.D(N_1),
	.nQ(N_3),
	.nRst(nReset),
	.Q(Q1)
);
XOR2 XOR2_1(
	.A(Q1),
	.B(Q0),
	.Q(N_1)
);
endmodule // TEAMI_TwoBitCounter


module TEAMI_Decoder2TO4(
	LSB,
	MSB,
	Q0,
	Q1,
	Q2,
	Q3
);
input LSB;
input MSB;
output Q0;
output Q1;
output Q2;
output Q3;

wire N_1;
wire N_2;
wire N_3;

INV1 INV1_1(
	.A(LSB),
	.Q(N_1)
);
INV1 INV1_2(
	.A(MSB),
	.Q(N_2)
);
INV1 INV1_3(
	.A(N_3),
	.Q(Q3)
);
NAND2 NAND2_1(
	.A(LSB),
	.B(MSB),
	.Q(N_3)
);
NOR2 NOR2_1(
	.A(MSB),
	.B(LSB),
	.Q(Q0)
);
NOR2 NOR2_2(
	.A(MSB),
	.B(N_1),
	.Q(Q1)
);
NOR2 NOR2_3(
	.A(LSB),
	.B(N_2),
	.Q(Q2)
);
endmodule // TEAMI_Decoder2TO4


module TEAMI_MAINSEQUENCER(
	CLK,
	D0,
	D1,
	D2,
	D3,
	Digit1,
	Digit2,
	Digit3,
	Digit4,
	DP,
	nReset,
	SyncHourIn,
	SyncMinIn,
	Tick
);
input CLK;
output D0;
output D1;
output D2;
output D3;
output Digit1;
output Digit2;
output Digit3;
output Digit4;
output DP;
input nReset;
input SyncHourIn;
input SyncMinIn;
input Tick;

wire En;
wire N_1;
wire N_2;
wire N_3;
wire N_4;
wire N_5;
wire N_6;
wire N_7;
wire N_8;
wire N_9;
wire N_10;
wire N_11;
wire N_12;
wire N_13;
wire N_14;
wire N_15;
wire N_16;
wire N_17;
wire N_18;
wire N_19;
wire N_20;
wire N_21;
wire N_22;
wire N_23;
wire N_24;
wire N_25;
wire N_26;

INV1 INV1_1(
	.A(N_1),
	.Q(En)
);
INV1 INV1_3(
	.A(N_5),
	.Q(Digit1)
);
INV1 INV1_4(
	.A(N_4),
	.Q(N_15)
);
INV1 INV1_5(
	.A(Digit2),
	.Q(DP)
);
MUX2 MUX2_1(
	.A(N_25),
	.B(N_3),
	.Q(N_2),
	.S(SyncMinIn)
);
NAND2 NAND2_1(
	.A(N_18),
	.B(N_7),
	.Q(N_5)
);
NOR2 NOR2_1(
	.A(SyncMinIn),
	.B(Tick),
	.Q(N_1)
);
NOR2 NOR2_2(
	.A(SyncHourIn),
	.B(N_2),
	.Q(N_4)
);
TEAMI_Decoder2TO4 TEAMI_Decoder2TO4_1(
	.LSB(N_16),
	.MSB(N_17),
	.Q0(N_7),
	.Q1(Digit2),
	.Q2(Digit3),
	.Q3(Digit4)
);
TEAMI_HourCounter4Bit TEAMI_HourCounter4Bit_1(
	.CLK(CLK),
	.En(N_15),
	.nReset(nReset),
	.Q0(N_9),
	.Q1(N_11),
	.Q2(N_13),
	.Q3(N_14)
);
TEAMI_HourDecoder TEAMI_HourDecoder_1(
	.Q0(N_9),
	.Q0_tens(N_18),
	.Q1(N_11),
	.Q1_units(N_23),
	.Q2(N_13),
	.Q3(N_14),
	.Q3_units(N_24)
);
TEAMI_MinuteCounter4Bit TEAMI_MinuteCounter4Bit_1(
	.CLK(CLK),
	.En(En),
	.nReset(nReset),
	.Q0(N_19),
	.Q1(N_20),
	.Q2(N_21),
	.Q3(N_22),
	.RollOver(N_26)
);
TEAMI_MUX16TO4 TEAMI_MUX16TO4_1(
	.Q0(D0),
	.Q0_00(N_18),
	.Q0_01(N_9),
	.Q0_10(N_8),
	.Q0_11(N_19),
	.Q1(D1),
	.Q1_00(N_6),
	.Q1_01(N_23),
	.Q1_10(N_10),
	.Q1_11(N_20),
	.Q2(D2),
	.Q2_00(N_6),
	.Q2_01(N_13),
	.Q2_10(N_12),
	.Q2_11(N_21),
	.Q3(D3),
	.Q3_00(N_6),
	.Q3_01(N_24),
	.Q3_10(N_6),
	.Q3_11(N_22),
	.Select_LSB(N_16),
	.Select_MSB(N_17)
);
TEAMI_ThreeBitCounter TEAMI_ThreeBitCounter_1(
	.CLK(CLK),
	.En(N_26),
	.nReset(nReset),
	.Q0(N_8),
	.Q1(N_10),
	.Q2(N_12),
	.RollOver(N_25)
);
TEAMI_TwoBitCounter TEAMI_TwoBitCounter_1(
	.CLK(CLK),
	.nReset(nReset),
	.Q0(N_16),
	.Q1(N_17)
);
TIE0 TIE0_1(
	.Q(N_6)
);
TIE0 TIE0_2(
	.Q(N_3)
);
endmodule // TEAMI_MAINSEQUENCER


module TEAMI_SevensegDecoder(
	D0In,
	D1In,
	D2In,
	D3In,
	SegA,
	SegB,
	SegC,
	SegD,
	SegE,
	SegF,
	SegG
);
input D0In;
input D1In;
input D2In;
input D3In;
output SegA;
output SegB;
output SegC;
output SegD;
output SegE;
output SegF;
output SegG;

wire N_1;
wire N_2;
wire N_3;
wire N_4;
wire N_5;
wire N_6;
wire N_7;
wire N_8;
wire N_9;
wire N_10;
wire N_11;
wire N_12;
wire N_13;
wire N_14;
wire N_15;

INV1 INV1_1(
	.A(D3In),
	.Q(N_5)
);
INV1 INV1_2(
	.A(D2In),
	.Q(N_4)
);
INV1 INV1_3(
	.A(D1In),
	.Q(N_2)
);
INV1 INV1_4(
	.A(D0In),
	.Q(N_3)
);
INV1 INV1_5(
	.A(SegD),
	.Q(N_1)
);
NAND2 NAND2_1(
	.A(N_7),
	.B(N_6),
	.Q(SegA)
);
NAND2 NAND2_2(
	.A(N_8),
	.B(N_10),
	.Q(SegB)
);
NAND2 NAND2_3(
	.A(D0In),
	.B(D3In),
	.Q(N_9)
);
NAND2 NAND2_4(
	.A(N_1),
	.B(N_3),
	.Q(SegE)
);
NAND2 NAND2_5(
	.A(D1In),
	.B(N_4),
	.Q(N_12)
);
NAND2 NAND2_7(
	.A(N_11),
	.B(N_15),
	.Q(SegG)
);
NAND3 NAND3_1(
	.A(N_2),
	.B(N_3),
	.C(D2In),
	.Q(N_6)
);
NAND3 NAND3_2(
	.A(D0In),
	.B(N_2),
	.C(D2In),
	.Q(N_8)
);
NAND3 NAND3_3(
	.A(N_3),
	.B(D1In),
	.C(D2In),
	.Q(N_10)
);
NAND3 NAND3_4(
	.A(D0In),
	.B(D1In),
	.C(D2In),
	.Q(N_11)
);
NAND3 NAND3_5(
	.A(D0In),
	.B(N_4),
	.C(N_5),
	.Q(N_13)
);
NAND3 NAND3_6(
	.A(D0In),
	.B(D1In),
	.C(D2In),
	.Q(N_14)
);
NAND3 NAND3_7(
	.A(N_14),
	.B(N_12),
	.C(N_13),
	.Q(SegF)
);
NAND3 NAND3_8(
	.A(N_2),
	.B(N_4),
	.C(N_5),
	.Q(N_15)
);
NAND4 NAND4_1(
	.A(D0In),
	.B(N_2),
	.C(N_4),
	.D(N_5),
	.Q(N_7)
);
NAND4 NAND4_3(
	.A(N_7),
	.B(N_6),
	.C(N_14),
	.D(N_9),
	.Q(SegD)
);
NOR3 NOR3_1(
	.A(D0In),
	.B(N_2),
	.C(D2In),
	.Q(SegC)
);
endmodule // TEAMI_SevensegDecoder


module TEAMI_BUTTONSYNC(
	ButtonIn,
	ButtonSync,
	CLK,
	nReset
);
input ButtonIn;
output ButtonSync;
input CLK;
input nReset;

wire N_1;
wire N_2;
wire N_3;
wire N_4;
wire N_5;
wire Q0n;
wire Q1;
wire Q1n;

DFFR DFFR_1(
	.Clk(CLK),
	.D(N_1),
	.nQ(Q0n),
	.nRst(nReset),
	.Q(ButtonSync)
);
DFFR DFFR_2(
	.Clk(CLK),
	.D(N_3),
	.nQ(Q1n),
	.nRst(nReset),
	.Q(Q1)
);
INV1 INV1_1(
	.A(N_2),
	.Q(N_1)
);
NAND2 NAND2_3(
	.A(N_4),
	.B(N_5),
	.Q(N_3)
);
NAND2 NAND2_4(
	.A(ButtonSync),
	.B(ButtonIn),
	.Q(N_4)
);
NAND2 NAND2_5(
	.A(Q1),
	.B(ButtonIn),
	.Q(N_5)
);
NAND3 NAND3_1(
	.A(Q1n),
	.B(Q0n),
	.C(ButtonIn),
	.Q(N_2)
);
endmodule // TEAMI_BUTTONSYNC


module TEAMI_BUTTONSYNCRONISER(
	ButtonHour,
	ButtonMin,
	CLK,
	nReset,
	SyncHour,
	SyncMin
);
input ButtonHour;
input ButtonMin;
input CLK;
input nReset;
output SyncHour;
output SyncMin;

TEAMI_BUTTONSYNC TEAMI_BUTTONSYNC_1(
	.ButtonIn(ButtonMin),
	.ButtonSync(SyncMin),
	.CLK(CLK),
	.nReset(nReset)
);
TEAMI_BUTTONSYNC TEAMI_BUTTONSYNC_2(
	.ButtonIn(ButtonHour),
	.ButtonSync(SyncHour),
	.CLK(CLK),
	.nReset(nReset)
);
endmodule // TEAMI_BUTTONSYNCRONISER


module TEAMI_FULLADDER(
	A,
	B,
	Cin,
	Cout,
	SUM
);
input A;
input B;
input Cin;
output Cout;
output SUM;

wire N_1;
wire N_2;
wire N_3;
wire N_4;
wire N_5;
wire N_6;

INV1 INV1_1(
	.A(N_5),
	.Q(N_1)
);
INV1 INV1_2(
	.A(N_6),
	.Q(N_3)
);
INV1 INV1_3(
	.A(N_2),
	.Q(Cout)
);
NAND2 NAND2_1(
	.A(Cin),
	.B(N_4),
	.Q(N_5)
);
NAND2 NAND2_2(
	.A(B),
	.B(A),
	.Q(N_6)
);
NOR2 NOR2_1(
	.A(N_1),
	.B(N_3),
	.Q(N_2)
);
XOR2 XOR2_1(
	.A(A),
	.B(B),
	.Q(N_4)
);
XOR2 XOR2_2(
	.A(N_4),
	.B(Cin),
	.Q(SUM)
);
endmodule // TEAMI_FULLADDER


module TEAMI_NEWADDER(
	F0,
	F1,
	X0,
	X1,
	X2,
	X3,
	XY0,
	XY1,
	XY2,
	XY3,
	Y0,
	Y1,
	Y2,
	Y3
);
input F0;
input F1;
input X0;
input X1;
input X2;
input X3;
output XY0;
output XY1;
output XY2;
output XY3;
input Y0;
input Y1;
input Y2;
input Y3;

wire N_1;
wire N_2;
wire N_3;
wire N_4;
wire N_5;
wire N_6;
wire N_7;
wire N_8;
wire N_9;
wire N_10;
wire N_11;
wire N_12;
wire N_13;
wire N_14;
wire N_15;
wire N_16;
wire N_17;
wire N_18;

INV1 INV1_1(
	.A(F1),
	.Q(N_6)
);
INV1 INV1_2(
	.A(F0),
	.Q(N_7)
);
INV1 INV1_3(
	.A(N_8),
	.Q(N_14)
);
INV1 INV1_4(
	.A(N_9),
	.Q(N_5)
);
MUX2 MUX2_1(
	.A(N_3),
	.B(X2),
	.Q(N_12),
	.S(N_5)
);
MUX2 MUX2_2(
	.A(N_4),
	.B(X3),
	.Q(N_13),
	.S(N_5)
);
MUX2 MUX2_3(
	.A(N_2),
	.B(X1),
	.Q(N_11),
	.S(N_5)
);
MUX2 MUX2_4(
	.A(N_1),
	.B(X0),
	.Q(N_10),
	.S(N_5)
);
NAND2 NAND2_1(
	.A(N_6),
	.B(F0),
	.Q(N_8)
);
NAND2 NAND2_2(
	.A(F1),
	.B(N_7),
	.Q(N_9)
);
TEAMI_FULLADDER TEAMI_FULLADDER_1(
	.A(X0),
	.B(N_10),
	.Cin(N_14),
	.Cout(N_15),
	.SUM(XY0)
);
TEAMI_FULLADDER TEAMI_FULLADDER_5(
	.A(X1),
	.B(N_11),
	.Cin(N_15),
	.Cout(N_16),
	.SUM(XY1)
);
TEAMI_FULLADDER TEAMI_FULLADDER_6(
	.A(X2),
	.B(N_12),
	.Cin(N_16),
	.Cout(N_17),
	.SUM(XY2)
);
TEAMI_FULLADDER TEAMI_FULLADDER_7(
	.A(X3),
	.B(N_13),
	.Cin(N_17),
	.Cout(N_18),
	.SUM(XY3)
);
XOR2 XOR2_1(
	.A(Y0),
	.B(N_14),
	.Q(N_1)
);
XOR2 XOR2_2(
	.A(Y1),
	.B(N_14),
	.Q(N_2)
);
XOR2 XOR2_3(
	.A(Y2),
	.B(N_14),
	.Q(N_3)
);
XOR2 XOR2_4(
	.A(Y3),
	.B(N_14),
	.Q(N_4)
);
endmodule // TEAMI_NEWADDER


module TEAMI_4BitALU(
	F0,
	F1,
	X0,
	X1,
	X2,
	X3,
	XY0,
	XY1,
	XY2,
	XY3,
	Y0,
	Y1,
	Y2,
	Y3
);
input F0;
input F1;
input X0;
input X1;
input X2;
input X3;
output XY0;
output XY1;
output XY2;
output XY3;
input Y0;
input Y1;
input Y2;
input Y3;

wire N_1;
wire N_2;
wire N_3;
wire N_4;
wire N_5;
wire N_6;
wire N_7;

INV1 INV1_1(
	.A(N_3),
	.Q(N_2)
);
MUX2 MUX2_1(
	.A(N_4),
	.B(N_1),
	.Q(XY0),
	.S(N_2)
);
MUX2 MUX2_2(
	.A(N_5),
	.B(N_1),
	.Q(XY1),
	.S(N_2)
);
MUX2 MUX2_3(
	.A(N_6),
	.B(N_1),
	.Q(XY2),
	.S(N_2)
);
MUX2 MUX2_4(
	.A(N_7),
	.B(N_1),
	.Q(XY3),
	.S(N_2)
);
NAND2 NAND2_1(
	.A(F1),
	.B(F0),
	.Q(N_3)
);
TEAMI_NEWADDER TEAMI_NEWADDER_1(
	.F0(F0),
	.F1(F1),
	.X0(X0),
	.X1(X1),
	.X2(X2),
	.X3(X3),
	.XY0(N_4),
	.XY1(N_5),
	.XY2(N_6),
	.XY3(N_7),
	.Y0(Y0),
	.Y1(Y1),
	.Y2(Y2),
	.Y3(Y3)
);
TIE0 TIE0_1(
	.Q(N_1)
);
endmodule // TEAMI_4BitALU


module TEAMI_Delay(
	DelayI,
	DelayO
);
input DelayI;
output DelayO;

wire N_1;
wire N_2;
wire N_3;
wire N_4;
wire N_5;
wire N_6;
wire N_7;
wire N_8;
wire N_9;
wire N_10;
wire N_11;
wire N_12;

BUF4 BUF4_1(
	.A(N_12),
	.Q(DelayO)
);
INV1 INV1_1(
	.A(DelayI),
	.Q(N_1)
);
INV1 INV1_2(
	.A(N_1),
	.Q(N_2)
);
INV1 INV1_3(
	.A(N_2),
	.Q(N_3)
);
INV1 INV1_4(
	.A(N_3),
	.Q(N_4)
);
INV1 INV1_5(
	.A(N_4),
	.Q(N_5)
);
INV1 INV1_6(
	.A(N_5),
	.Q(N_6)
);
INV1 INV1_7(
	.A(N_6),
	.Q(N_7)
);
INV1 INV1_8(
	.A(N_7),
	.Q(N_8)
);
INV1 INV1_9(
	.A(N_8),
	.Q(N_9)
);
INV1 INV1_10(
	.A(N_9),
	.Q(N_10)
);
INV1 INV1_11(
	.A(N_10),
	.Q(N_11)
);
INV1 INV1_12(
	.A(N_11),
	.Q(N_12)
);
endmodule // TEAMI_Delay


module TEAMI_RingOSC(
	EnableOsc,
	RingO
);
input EnableOsc;
output RingO;

wire N_1;
wire N_2;
wire N_3;

INV1 INV1_2(
	.A(N_3),
	.Q(N_2)
);
MUX2 MUX2_1(
	.A(N_1),
	.B(N_2),
	.Q(RingO),
	.S(EnableOsc)
);
TEAMI_Delay TEAMI_Delay_1(
	.DelayI(RingO),
	.DelayO(N_3)
);
TIE0 TIE0_1(
	.Q(N_1)
);
endmodule // TEAMI_RingOSC


module TEAMI_CLKdiv(
	CLKI,
	CLKO,
	NRST
);
input CLKI;
output CLKO;
input NRST;

wire N_1;

DFFR DFFR_1(
	.Clk(CLKI),
	.D(N_1),
	.nQ(N_1),
	.nRst(NRST),
	.Q(CLKO)
);
endmodule // TEAMI_CLKdiv


module TEAMI_RingOscillator(
	EnableOsc,
	nResetOsc,
	OscOut
);
input EnableOsc;
input nResetOsc;
output OscOut;

wire N_1;
wire N_2;
wire N_3;
wire N_4;
wire N_5;
wire N_6;
wire N_7;
wire N_8;

TEAMI_CLKdiv TEAMI_CLKdiv_1(
	.CLKI(N_8),
	.CLKO(N_1),
	.NRST(nResetOsc)
);
TEAMI_CLKdiv TEAMI_CLKdiv_2(
	.CLKI(N_1),
	.CLKO(N_2),
	.NRST(nResetOsc)
);
TEAMI_CLKdiv TEAMI_CLKdiv_3(
	.CLKI(N_2),
	.CLKO(N_3),
	.NRST(nResetOsc)
);
TEAMI_CLKdiv TEAMI_CLKdiv_4(
	.CLKI(N_3),
	.CLKO(N_4),
	.NRST(nResetOsc)
);
TEAMI_CLKdiv TEAMI_CLKdiv_5(
	.CLKI(N_4),
	.CLKO(N_5),
	.NRST(nResetOsc)
);
TEAMI_CLKdiv TEAMI_CLKdiv_6(
	.CLKI(N_5),
	.CLKO(N_6),
	.NRST(nResetOsc)
);
TEAMI_CLKdiv TEAMI_CLKdiv_7(
	.CLKI(N_6),
	.CLKO(N_7),
	.NRST(nResetOsc)
);
TEAMI_CLKdiv TEAMI_CLKdiv_8(
	.CLKI(N_7),
	.CLKO(OscOut),
	.NRST(nResetOsc)
);
TEAMI_RingOSC TEAMI_RingOSC_1(
	.EnableOsc(EnableOsc),
	.RingO(N_8)
);
endmodule // TEAMI_RingOscillator


module TEAMI_DESIGN(
	A0,
	A1,
	A2,
	A3,
	A4,
	A5,
	A6,
	A7,
	A8,
	A9,
	A10,
	A11,
	A12,
	A13,
	A14,
	A15,
	A16,
	A17,
	A18,
	A19,
	A20,
	A21,
	A22,
	A23,
	Q0,
	Q1,
	Q2,
	Q3,
	Q4,
	Q5,
	Q6,
	Q7,
	Q8,
	Q9,
	Q10,
	Q11,
	Q12,
	Q13,
	Q14,
	Q15,
	Q16,
	Q17,
	Q18,
	Q19,
	Q20,
	Q21,
	Q22,
	Q23
);
input A0;
input A1;
input A2;
input A3;
input A4;
input A5;
input A6;
input A7;
input A8;
input A9;
input A10;
input A11;
input A12;
input A13;
input A14;
input A15;
input A16;
input A17;
input A18;
input A19;
input A20;
input A21;
input A22;
input A23;
output Q0;
output Q1;
output Q2;
output Q3;
output Q4;
output Q5;
output Q6;
output Q7;
output Q8;
output Q9;
output Q10;
output Q11;
output Q12;
output Q13;
output Q14;
output Q15;
output Q16;
output Q17;
output Q18;
output Q19;
output Q20;
output Q21;
output Q22;
output Q23;

INV1 INV1_1(
	.A(A0),
	.Q(Q0)
);
TEAMI_4BitALU TEAMI_4BitALU_1(
	.F0(A3),
	.F1(A4),
	.X0(A5),
	.X1(A6),
	.X2(A7),
	.X3(A8),
	.XY0(Q2),
	.XY1(Q3),
	.XY2(Q4),
	.XY3(Q5),
	.Y0(A9),
	.Y1(A10),
	.Y2(A11),
	.Y3(A12)
);
TEAMI_BUTTONSYNCRONISER TEAMI_BUTTONSYNCRONISER_1(
	.ButtonHour(A16),
	.ButtonMin(A15),
	.CLK(A13),
	.nReset(A14),
	.SyncHour(Q7),
	.SyncMin(Q6)
);
TEAMI_MAINSEQUENCER TEAMI_MAINSEQUENCER_1(
	.CLK(A13),
	.D0(Q13),
	.D1(Q14),
	.D2(Q15),
	.D3(Q16),
	.Digit1(Q8),
	.Digit2(Q9),
	.Digit3(Q10),
	.Digit4(Q11),
	.DP(Q12),
	.nReset(A14),
	.SyncHourIn(A19),
	.SyncMinIn(A18),
	.Tick(A17)
);
TEAMI_RingOscillator TEAMI_RingOscillator_1(
	.EnableOsc(A2),
	.nResetOsc(A1),
	.OscOut(Q1)
);
TEAMI_SevensegDecoder TEAMI_SevensegDecoder_1(
	.D0In(A20),
	.D1In(A21),
	.D2In(A22),
	.D3In(A23),
	.SegA(Q17),
	.SegB(Q18),
	.SegC(Q19),
	.SegD(Q20),
	.SegE(Q21),
	.SegF(Q22),
	.SegG(Q23)
);
endmodule // TEAMI_DESIGN

