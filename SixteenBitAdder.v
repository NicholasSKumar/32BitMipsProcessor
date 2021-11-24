module SixteenBitAdder(
	input [15:0]A,
	input [15:0]B,
	input cin,
	output [15:0] sum,
	output cout);
	
	wire [3:0]tcout;
	wire zero;
	//LSB--> MSB
	FourBitCLA uu0 (.A(A[3:0]), .B(B[3:0]),.cin(cin),.sum(sum[3:0]),.cout(tcout[0]));
	FourBitCLA uu1 (.A(A[7:4]), .B(B[7:4]),.cin(tcout[0]),.sum(sum[7:4]),.cout(tcout[1]));
	FourBitCLA uu2 (.A(A[11:8]), .B(B[11:8]),.cin(tcout[1]),.sum(sum[11:8]),.cout(tcout[2]));
	FourBitCLA uu3 (.A(A[15:12]), .B(B[15:12]),.cin(tcout[2]),.sum(sum[15:12]),.cout(tcout[3]));
	
	assign cout = tcout[3];

endmodule 