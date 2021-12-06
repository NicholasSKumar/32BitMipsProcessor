module FetchTB();

	wire [31:0] BranchMuxResult;
	reg clk, reset, Jump;
	wire [31:0] inst, currentAddr,result;

	Fetch uut (.BranchMuxResult(BranchMuxResult),.clk(clk),.reset(reset),.Jump(Jump),.inst(inst),.currentAddr(currentAddr));
	Execute u0 (.instruct(inst),.address(currentAddr),.signExnd(32'b0),.mem1Read(32'b0),.mem2Read(32'b0),.ALUSrc(1'b0),.Branch(1'b0),.FunctC(4'b0000),.ALUOp(2'b01),.ALUResult(result),.MX2(BranchMuxResult));

	initial begin
	clk = 0;
	reset = 1;
	Jump = 0;
	//BranchMuxResult = 32'b0;
	#10;
	reset = 0;
	end
	always #5 clk = ~clk;
endmodule	
	