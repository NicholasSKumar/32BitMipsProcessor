module ShiftLeftTwo(
	input [31:0] inaddr,
	output [31:0] outaddr);
	
	assign outaddr  = inaddr<<2;

endmodule
