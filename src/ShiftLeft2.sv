/******************************************************************
* Description
*	This performs a shift left opeartion in roder to calculate the brances.
*
******************************************************************/
module ShiftLeft2
(
	input  [31:0] DataInput,

	output [31:0] DataOutput
);

    assign DataOutput = {DataInput[29:0], 1'b0, 1'b0};

endmodule // leftShift2
