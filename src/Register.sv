/******************************************************************
* Description
*	This the basic register that is used in the register file
*
******************************************************************/
module Register
#(
	parameter N=32
)
(
	input clk,
	input rst,
	input enable,
	input  [N-1:0] DataInput,


	output reg [N-1:0] DataOutput
);

always@(negedge rst or posedge clk) begin
	if(rst==0)
		DataOutput <= 0;
	else
		if(enable==1)
			DataOutput<=DataInput;
end

endmodule
