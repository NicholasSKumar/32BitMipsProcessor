module JumpTb();
	reg [31:0] previousPC4;
	reg [31:0] instruction;
	reg [31:0] MuxResult;
	reg Jump;
	wire [31:0] currentPC4;
	
	Jump uut (.previousPC4,.instruction,.MuxResult,.Jump,.currentPC4);
	
	
	initial begin 
	previousPC4 = 32'b00000000000000000000000000000100;
	instruction = 32'b00001000000000000000000000010000;
	MuxResult = 32'b00000000000000000000000000001000;
	Jump = 0;
	#5
	previousPC4 = 32'b00000000000000000000000000000100;
	instruction = 32'b00001000000000000000000000010000;
	MuxResult = 32'b00000000000000000000000000001000;
	Jump = 0;
	#5
	previousPC4 = 32'b00000000000000000000000000000100;
	instruction = 32'b00001000000000000000000000010000;
	MuxResult = 32'b00000000000000000000000000001000;
	Jump = 1;
	end
	
	
endmodule

