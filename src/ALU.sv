/******************************************************************
* Description
*	This is an 32-bit arithetic logic unit that can execute the next set of operations:
*		add
*		sub
*		or
*		and
*		nor
*
******************************************************************/

module ALU
(
	input [3:0] ALUOperation,
	input [31:0] A,
	input [31:0] B,

	output reg Zero,
	output reg [31:0]ALUResult
);

	localparam ADD = 4'b0000;
	localparam SUB = 4'b0001;
	localparam AND = 4'b0010;
	localparam OR  = 4'b0011;
	localparam NOR = 4'b0100;

	always @ (A or B or ALUOperation)begin

		case (ALUOperation)
			ADD: // add
				ALUResult = A + B;
			SUB: // sub
				ALUResult = A - B;
			AND:
				ALUResult = A & B;
			OR:
				ALUResult = A | B;
			NOR:
				ALUResult = ~(A | B);
			default:
				ALUResult= 0;
		endcase // case(control)

		Zero = (ALUResult == 0) ? 1'b1 : 1'b0;

	end // always @ (A or B or control)

endmodule // ALU
