module Execute(
	input [31:0] instruct,
	input [31:0] address,
	input [31:0] signExnd,
	input [31:0] mem1Read,mem2Read,
	input ALUSrc, Branch,
	input [3:0] FunctC,
	input [1:0] ALUOp,
	output [31:0] ALUResult,
	output [31:0] MX2);
	
	wire [31:0] B,SL2,ALUAres;
	wire Zero,Branch2;
	

	MuxALUSRC u0 (.regRead(mem2Read),.signExnd(signExnd),.ALUSrc(ALUSrc),.ALUvalue(B));
	ALUSelect u1 (.FunctC(FunctC),.A(mem1Read),.B(B),.ALUOut(ALUResult),.Zero(Zero));
	
	ShiftLeftTwo u3 (.inaddr(signExnd),.outaddr(SL2));
	ThirtyTwoBitSub u4 (.A(instruct),.B(SL2),.cin(1'b0),.Diff(ALUAres));
	
	assign Branch2 = Branch&&Zero;
	
	MuxBranch u5 (.ALUResult(ALUAres),.OtherAddr(address),.Branch(Branch2),.Addr(MX2));
	
endmodule
