module MultiplierLogic(
	input [15:0] A,
	input B,
	input [15:0] pS,
	input pcin,
	output [15:0] sum,
	output prodVal,
	output carry);
	
	wire [15:0] temp1,temp2,Bext;
	
	assign Bext = {{(15){B}},B};

	assign temp1 = {pcin,pS[15:1]};
	assign temp2 = A&Bext;
	SixteenBitAdder uu0 (.A(temp1), .B(temp2),.cin(1'b0),.sum(sum),.cout(carry));
	
	assign prodVal = sum[0];
endmodule	