/******************************************************************
* Description
*	This module performes a sign-extend operation that is need with
*	in instruction like andi or ben.
*
******************************************************************/
module SignExtend
(
	input [15:0]  DataInput,
   output[31:0] SignExtendOutput
);

assign  SignExtendOutput = {{16{DataInput[15]}},DataInput[15:0]};

endmodule // signExtend
