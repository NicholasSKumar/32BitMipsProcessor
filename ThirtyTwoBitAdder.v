module ThirtyTwoBitAdder(
	input [31:0]A,
	input [31:0]B,
	input cin,
	output [31:0] sum,
	output cout,
	output overFlow);
	wire [7:0]tcout;
	
	//LSB--> MSB
	FourBitCLA uu0 (.A(A[3:0]), .B(B[3:0]),.cin(cin),.sum(sum[3:0]),.cout(tcout[0]));
	FourBitCLA uu1 (.A(A[7:4]), .B(B[7:4]),.cin(tcout[0]),.sum(sum[7:4]),.cout(tcout[1]));
	FourBitCLA uu2 (.A(A[11:8]), .B(B[11:8]),.cin(tcout[1]),.sum(sum[11:8]),.cout(tcout[2]));
	FourBitCLA uu3 (.A(A[15:12]), .B(B[15:12]),.cin(tcout[2]),.sum(sum[15:12]),.cout(tcout[3]));
	FourBitCLA uu4 (.A(A[19:16]), .B(B[19:16]),.cin(tcout[3]),.sum(sum[19:16]),.cout(tcout[4]));
	FourBitCLA uu5 (.A(A[23:20]), .B(B[23:20]),.cin(tcout[4]),.sum(sum[23:20]),.cout(tcout[5]));
	FourBitCLA uu6 (.A(A[27:24]), .B(B[27:24]),.cin(tcout[5]),.sum(sum[27:24]),.cout(tcout[6]));
	FourBitCLA uu7 (.A(A[31:28]), .B(B[31:28]),.cin(tcout[6]),.sum(sum[31:28]),.cout(tcout[7]));
	
	assign cout = tcout[7];
endmodule 