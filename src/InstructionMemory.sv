/******************************************************************
*   Description:
*	ROM memory that represents the program memory.
* 	The file program.dat contains the program that will be stored in this Memory.
******************************************************************/
module InstructionMemory
#(
	parameter MEMORY_DEPTH=32,
	parameter DATA_WIDTH=32
)(
	input  [(DATA_WIDTH-1):0] i_Address,

	output [(DATA_WIDTH-1):0] o_Instruction
);

	logic [DATA_WIDTH-1:0]   r_rom [MEMORY_DEPTH-1:0];
	logic [(DATA_WIDTH-1):0] r_Address;

	assign r_Address = {2'b0,i_Address[(DATA_WIDTH-1):2]};

	initial	begin
		$readmemh("program.dat", r_rom);
	end

	assign o_Instruction = r_rom[r_Address];

endmodule
