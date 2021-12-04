module SixtyFourBitMulTB();
	reg [31:0] A;
	reg [31:0] B;
	wire [63:0] product;
	
	SixtyFourBitMul uut(.A, .B,.product);
	initial begin
		
		A = 32'b00110111001101111010011011001000;
		B = 32'b11011111000010101111000101010010;
	
	end

endmodule