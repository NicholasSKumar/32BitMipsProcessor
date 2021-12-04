module FetchTB()
	reg [31:0] BranchMuxResult,
	reg clk, reset,Jump,
	wire [31:0] inst,
	wire [31:0] currentAddr);
	
	clk=~clk;

	initial begin
	clk = 0;
	reset = 0;
	Jump = 0;
	BranchMuxResult = 32'b1010100000000000110000000000000;
	
	
	