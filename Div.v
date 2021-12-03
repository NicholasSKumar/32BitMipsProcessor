module Div(
	input [31:0] A,
	input [31:0] B,
	output [31:0] quo,
	output [31:0] rem);
	
	assign quo = A/B;
	assign rem = A%B;

endmodule 
