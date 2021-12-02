module PCAdder(
	input [31:0] address,
	output  [31:0]  outaddress);
	
	wire [31:0] four;
	wire cout,overFlow;
	
	assign four =  32'b00000000000000000000000000000100;
	
	ThirtyTwoBitAdder u1 (.A(addreess),.B(four),.cin(1'b0),.sum(outaddreess),.cout(cout),.overFlow(cout));

endmodule 