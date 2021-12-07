module FetchTB();

	reg [31:0] NextAddress,ExecuteMux;
	reg clk, reset, Jump,PCWrite;
	wire [31:0] ifOut, inst, currentAddr,result,internPC,Ex;
	
	
	assign NextAddress = ifOut;

	Fetch uut (.NextAddress(NextAddress),.ExecuteMux(Ex),.clk(clk),.reset(reset),.Jump(Jump),.inst(inst),.ifOut(ifOut),.PCWrite(PCWrite));
	Execute u0 (.instruct(inst),.address(ifOut),.signExnd(32'b0),.mem1Read(32'b0),.mem2Read(32'b0),.ALUSrc(1'b0),.Branch(1'b0),.FunctC(4'b0000),.ALUOp(2'b01),.ALUResult(result),.MX2(Ex));
	
	assign NextAddress = (reset) ? 32'b00000000000000000000000000000000:NextAddress;

	initial begin
	clk = 0;
	reset = 1;
	Jump = 0;
	PCWrite = 0;
	//NextAddress = 32'b0;
	#10;
	reset = 0;
	PCWrite = 1;
	//NextAddress = 32'b100;
	//NextAddress = 32'b1000;
	end

	//assign BranchMuxResult = currentAddr;
	always #5 clk = ~clk;
endmodule	
	