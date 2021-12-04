module Jump(
	input [31:0] previousPC4,
	input [31:0] instruction,
	input [31:0] MuxResult,
	input Jump,
	output currentPC4);
	
	wire [31:0] temp1,jumpAddr;
	
	ShiftLeftTwo u0 (.inaddr(instruction),.outaddr(temp1));
	assign jumpAddr = {[31:28]previousPC4,[27:0]temp1};
	
	MuxBranch u1 (.Jump(Jump),.ALUResult(MuxResult),.OtherAddr(jumpAddr),.Addr(currentPC4));
		
endmodule 