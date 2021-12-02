module SignExtendTB();
	reg [15:0] unextended;
	wire [31:0] extended;

	SignExtend uut (.unextended,.extended);
	
	initial begin
	#1
	assign unextended = 16'b1000000000000000;
	#1
	assign unextended = 16'b0111111111111111;
	end
	
endmodule
