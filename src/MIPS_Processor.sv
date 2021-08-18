/*****************************************************************************************************
* Description:
* Top-level of a MIPS processor that executes the next set of instructions:
*		add    addi
*		sub
*		or     ori
*		beq    bne
*		and
*		nor
* Parameter MEMORY_DEPTH configures the program memory to allocate the program to be execute.
******************************************************************************************************/
//`include "Definitions.sv"

module MIPS_Processor
#(
	parameter MEMORY_DEPTH = 32
)(
	// Inputs
	input clk,
	input rst,
	input [7:0] in_Port,
	// Output
	output [31:0] out_ALUResult,
	output [31:0] out_Port
);
//******************************************************************/
//******************************************************************/
assign  out_Port = 0;

//******************************************************************/
//******************************************************************/
// Data types to connect modules
wire w_BranchNE;
wire w_BranchEQ;
wire w_RegDst;
wire w_NotZeroANDBrachNE;
wire w_ZeroANDBrachEQ;
wire w_ORForBranch;
wire w_ALUSrc;
wire w_RegWrite;
wire w_Zero;
wire [2:0] w_ALUOp;
wire [3:0] w_ALUOperation;
wire [4:0] w_WriteRegister;

wire [31:0] w_Instruction;
wire [31:0] w_ReadData1;
wire [31:0] w_ReadData2;
wire [31:0] w_InmmediateExtend;
wire [31:0] w_ReadData2OrInmmediate;
wire [31:0] w_ALUResult;
wire [31:0] w_PC_4;
wire [31:0] w_InmmediateExtendAndShifted;
wire [31:0] w_PCtoBranch;
wire [31:0] w_MUX_PC;
wire [31:0] w_PC;

integer ALUStatus;


//******************************************************************/
//******************************************************************/
//******************************************************************/
//******************************************************************/
//******************************************************************/
Control
ControlUnit
(
	.OP(w_Instruction[31:26]),

	.RegDst(w_RegDst),
	.BranchNE(w_BranchNE),
	.BranchEQ(w_BranchEQ),
	.ALUOp(w_ALUOp),
	.ALUSrc(w_ALUSrc),
	.RegWrite(w_RegWrite)
);

PC_Register
ProgramCounter (
	.clk(clk),
	.rst(rst),
	.NewPC(w_MUX_PC),

	.PCValue(w_PC)
);

`ifdef MONITORS
initial
	ALUStatus = $fopen("ALUResult.dat");

always@(posedge clk)
  $display("PC value %d ALU result %00h",w_PC,w_ALUResult );

always@(posedge clk)
	$fdisplay(ALUStatus, "%h", w_ALUResult);
`endif

InstructionMemory
#(
	.MEMORY_DEPTH(MEMORY_DEPTH)
)
ROMProgramMemory
(
	.i_Address(w_PC),

	.o_Instruction(w_Instruction)
);

Adder32bits
PC_Puls_4
(
	.Data0(w_PC),
	.Data1(4),

	.Result(w_PC_4)
);

ShiftLeft2
Shifter
(
	.DataInput(w_InmmediateExtend),

	.DataOutput(w_InmmediateExtendAndShifted)
);

Adder32bits
AdderForBranching
(
	.Data0(w_PC_4),
	.Data1(w_InmmediateExtendAndShifted),

	.Result(w_PCtoBranch)
);

ANDGate
ANDGateForBEQ
(
	.A(w_Zero),
	.B(w_BranchEQ),

	.C(w_ZeroANDBrachEQ)
);

ANDGate
ANDGateForBNE
(
	.A(~w_Zero),
	.B(w_BranchNE),

	.C(w_NotZeroANDBrachNE)
);

OR_Gate
OR_GateForBNEOrBEQ
(
	.A(w_ZeroANDBrachEQ),
	.B(w_NotZeroANDBrachNE),

	.C(w_ORForBranch)
);


Multiplexer2to1
#(
	.NBits(32)
)
MUX_PC
(
	.Selector(w_ORForBranch),
	.MUX_Data0(w_PC_4),
	.MUX_Data1(w_PCtoBranch),

	.MUX_Output(w_MUX_PC)

);


//******************************************************************/
//******************************************************************/
//******************************************************************/
//******************************************************************/
//******************************************************************/
Multiplexer2to1
#(
	.NBits(5)
)
MUX_ForRTypeAndIType
(
	.Selector(w_RegDst),
	.MUX_Data0(w_Instruction[20:16]),
	.MUX_Data1(w_Instruction[15:11]),

	.MUX_Output(w_WriteRegister)

);



RegisterFile
Register_File
(
	.clk(clk),
	.rst(rst),
	.RegWrite(w_RegWrite),
	.WriteRegister(w_WriteRegister),
	.ReadRegister1(w_Instruction[25:21]),
	.ReadRegister2(w_Instruction[20:16]),
	.WriteData(w_ALUResult),

	.ReadData1(w_ReadData1),
	.ReadData2(w_ReadData2)

);

SignExtend
SignExtendForConstants
(
	.DataInput(w_Instruction[15:0]),

	.SignExtendOutput(w_InmmediateExtend)
);

Multiplexer2to1
#(
	.NBits(32)
)
MUX_ForReadDataAndInmediate
(
	.Selector(w_ALUSrc),
	.MUX_Data0(w_ReadData2),
	.MUX_Data1(w_InmmediateExtend),

	.MUX_Output(w_ReadData2OrInmmediate)

);


ALUControl
ArithmeticLogicUnitControl
(
	.ALUOp(w_ALUOp),

	.ALUFunction(w_Instruction[5:0]),
	.ALUOperation(w_ALUOperation)
);



ALU
ArithmeticLogicUnit
(
	.ALUOperation(w_ALUOperation),
	.A(w_ReadData1),
	.B(w_ReadData2OrInmmediate),

	.Zero(w_Zero),
	.ALUResult(w_ALUResult)
);

assign out_ALUResult = w_ALUResult;


endmodule
