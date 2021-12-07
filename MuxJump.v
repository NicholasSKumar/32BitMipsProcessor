module MuxJump(
	input Jump,
	input [31:0] ALUResult,
	input [31:0] OtherAddr,
	output [31:0] Addr);

	assign Addr = (Jump) ? ALUResult:OtherAddr;
endmodule 
