module Jump(
	input [31:0] previousPC4,
	input [31:0] instruction,
	input [31:0] BranchMuxResult,
	input Jump,
	output [31:0] currentPC4);
	
	wire [31:0] temp1,jumpAddr;
	//reg [31:0] temp;
	
	ShiftLeftTwo u0 (.inaddr(instruction),.outaddr(temp1));
	assign jumpAddr = {previousPC4[31:28],temp1[27:0]};

	//temp = MuxResult;
			
	MuxJump u1 (.Jump(Jump),.ALUResult(jumpAddr),.OtherAddr(BranchMuxResult),.Addr(currentPC4));
		
endmodule 