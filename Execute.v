module Execute(
	input [31:0] instruct,
	input [31:0] address,
	input ALUSrc,
	input [1:0] ALUOp,
	output [31:0] ALUResult,
	output [31:0] MX2);
	
	wire [31:0] SnExt,ALUin1,ALUin2,LShift;
	
	//JumpSet	
	SignExtend u0(.unextended([15:0] instruct),.extended(SnExt));
	assign LShift = SnExt << 2;
	ThirtyTwoBitSub u1 (.B(address),.A(LShift),.cin(1'b0),.Diff(MX2));
	
	
	//read registers from instruct
	MuxALUSRC u1 (.regRead(/*reg value */),.signExnd(SnExt),.ALUvalue(ALUin2);
	
	
	
	
endmodule
