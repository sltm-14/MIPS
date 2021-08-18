/******************************************************************
* Description
*	This is a register of 32-bit that corresponds to the PC counter.
*	This register does not have an enable signal.
*
******************************************************************/

module PC_Register
#(
	parameter N=32
)
(
	input clk,
	input rst,
	input  [N-1:0] NewPC,


	output reg [N-1:0] PCValue
);

always@(negedge rst or posedge clk) begin
	if(rst==0)
		PCValue <= 0;
	else
		PCValue<=NewPC;
end

endmodule
