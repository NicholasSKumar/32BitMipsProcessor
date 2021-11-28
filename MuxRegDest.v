module MuxRegDest(
	input [20:16] twentyInst,
	input [15:11] fifteenInst,
	input RegDest,
	output WriteReg);

	assign WriteReg = (RegDest) ? twentyInst : fifteenInst;
endmodule 
