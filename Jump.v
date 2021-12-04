module Jump(
	input [31:0] previousPC4,
	input [31:0] instruction,
	input [31:0] MuxResult,
	input Jump,
	output currentPC4);
	
	wire [31:0] temp1,jumpAddr;
	
	ShiftLeftTwo u0 (.inaddr(instruction),.outaddr(temp1));
	assign jumpAddr = {previousPC4[31:28],temp1[27:0]};
	
	MuxBranch u1 (.Jump(Jump),.ALUResult(MuxResult),.OtherAddr(jumpAddr),.Addr(currentPC4));
		
endmodule 