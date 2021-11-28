module MuxBranch(
	input [31:0] ALUResult,
	input [31:0] OtherAddr,
	input Branch,
	output Addr);

	assign Addr = (Branch) ? ALUResult : OtherAddr;
endmodule 
