module FullAdder(
	input A,
	input B,
	input cin,
	output sum,
	output cout);
	//do the Sum stuffs
	wire x;
	assign x = A^B;
	assign sum = x ^ cin;
	//do the cout work 
	wire n;
	wire m;
	assign n = x & cin; 
	assign m = A & B;
	assign cout = n + m;
endmodule 
