module MuxBranch(
	input Branch,
	input [31:0] ALUResult,
	input [31:0] OtherAddr,
	output [31:0] Addr);

	assign Addr = (Branch) ? ALUResult : OtherAddr;
endmodule 
