module FourBitCLATB();
	reg [3:0] A;
	reg [3:0] B;
	reg cin;
	wire [3:0] sum;
	wire cout;
	FourBitCLA uut(.A, .B,.cin,.sum,.cout);
	initial begin
		A = 4'b0000;
		B = 4'b0000;
		cin = 1;
		//0
		#100
		A = 4'b1010;
		B = 4'b1010;
		//4c1
		//0100
		//1
		#100
		A = 4'b0011;
		B = 4'b1100;
		//15
		//1111
		//0
		#100
		A = 4'b0101;
		B = 4'b1101;
		//2c1
		//0010
		//1
		#100
		A = 4'b1010;
		B = 4'b0101;
		//15
		//1111
		//0
		#100
		A = 4'b1111;
		B = 4'b1111;
		//14c1
		//1110
		//1
	end
endmodule 
