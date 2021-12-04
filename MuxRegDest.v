module MuxRegDest(
	input [20:16] twentyInst,
	input [15:11] fifteenInst,
	input RegDest,
	output [4:0] WriteReg);

	assign WriteReg = (RegDest) ? fifteenInst : twentyInst;
endmodule 
