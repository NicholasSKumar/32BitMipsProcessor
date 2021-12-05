module SMultiplierLogic(
	input [31:0] A,
	input B,
	input [31:0] pS,
	input pcin,
	output [31:0] sum,
	output prodVal,
	output carry);
	
	wire [31:0] temp1,temp2,Bext;
	wire overFlow;
	assign Bext = {{(31){B}},B};

	assign temp1 = {pcin,pS[31:1]};
	assign temp2 = A&Bext;
	ThirtyTwoBitAdder uu0 (.A(temp1), .B(temp2),.cin(1'b0),.sum(sum),.cout(carry),.overFlow(overFlow));
	
	assign prodVal = sum[0];
endmodule