/******************************************************************
* Description
*	This is the verifaction envioroment ofr testeting the basic MIPS
*	procesor.
*
******************************************************************/
//`include "Definitions.sv"

module MIPS_Processor_TB;
reg clk = 0;
reg rst = 0;
reg [7:0] in_Port;

wire [31:0] out_ALUResult;
wire [31:0] out_Port;


MIPS_Processor
DUV
(
	.clk(clk),
	.rst(rst),
	.in_Port(in_Port),

	.out_ALUResult(out_ALUResult),
	.out_Port(out_Port)

);
/*********************************************************/
initial // Clock generator
  begin
    forever #2 clk = !clk;
  end
/*********************************************************/
initial begin // reset generator
	#5 rst = 1;
end

initial begin // reset generator
	#4 in_Port = 3;
end

/*********************************************************/
//initial
//  $monitor($realtime, " ALU Results =%d",ALUResultOut);
endmodule
