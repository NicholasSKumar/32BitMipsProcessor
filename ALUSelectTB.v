module ALUSelectTB();
	reg [3:0] FunctC;
	reg [31:0] A,B;
	wire [31:0] ALUOut;
	wire Zero;
	
	ALUSelect uut (.FunctC,.A,.B,.ALUOut,.Zero);
	
	initial begin 
		FunctC = 4'b0010; //add
		#2
		A = 32'b01010100101100111101010011000011;
		B = 32'b00101101011101010000000101110111;
		#1
		FunctC = 4'b0110; //sub
		#1
		FunctC = 4'b1010; //Mul
		#1
		FunctC = 4'b1111; //Div
		#1
		FunctC = 4'b0000; //and
		#1
		FunctC = 4'b0001; //or
		#1
		FunctC = 4'b0011; //nor
		#1
		FunctC = 4'b0100; //xor
		#1
		FunctC = 4'b0111; //slt
		//30000
		//24672
		//740160000
		//00101100000111011111001000000000
		
	end
	
endmodule