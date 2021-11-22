module FourBitCLA(
	input [3:0] A, B,
	input cin,
	output [3:0] sum,
	output cout);
	wire [4:1] tcout;
	
	assign tcout[1]= ((A[0]^B[0])&cin)+(A[0]&B[0]);
	assign tcout[2]= ((A[1]^B[1])&(((A[0]^B[0])& cin)+(A[0]&B[0])))+(A[1]&B[1]);
	assign tcout[3]= ((A[2]^B[2])&(((A[1]^B[1])&(((A[0]^B[0])&cin)+(A[0]&B[0])))+(A[1]&B[1])))+(A[2]&B[2]);
	assign tcout[4]= ((A[3]^B[3])&(((A[2]^B[2])&(((A[1]^B[1])&(((A[0]^B[0])&cin)+(A[0]&B[0])))+(A[1]&B[1])))+(A[2]&B[2])))+(A[3]&B[3]);

	assign sum[0] = A[0]^B[0]^cin;
	assign sum[1] = A[1]^B[1]^tcout[1];
	assign sum[2] = A[2]^B[2]^tcout[2];
	assign sum[3] = A[3]^B[3]^tcout[3];
	assign cout = tcout[4];

endmodule 
