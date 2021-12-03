module ThirtyTwoBitMulti(
	input [15:0] A,
	input [15:0] B,
	output [31:0] product);
	
	wire [15:0] Temp0,Temp1,Temp2,Temp3;
	wire [15:0] Bone,Bzero,c0;
	wire [15:0] sum0,sum1,sum2,sum3,sum4,sum5,sum6,sum7,sum8,sum9,sum10,sum11,sum12,sum13,sum14,sum15;
	

	assign Bzero = {{(15){B[0]}},B[0]};
	assign Bone = {{(15){B[1]}},B[1]};

	assign Temp1 = A&Bone;
	assign Temp2 = A&Bzero;
	assign product[0] = Temp2[0];
	assign Temp3 = {1'b0,Temp2[15:1]};
	SixteenBitAdder uu0 (.A(Temp1),.B(Temp3),.cin(1'b0),.sum(sum0),.cout(c0[0]));
	assign product[1] = sum0[0];

	
	MultiplierLogic u0 (.A(A),.B(B[2]),.pS(sum0),.pcin(c0[0]),.sum(sum1),.prodVal(product[2]),.carry(c0[1]));
	MultiplierLogic u1 (.A(A),.B(B[3]),.pS(sum1),.pcin(c0[1]),.sum(sum2),.prodVal(product[3]),.carry(c0[2]));
	MultiplierLogic u2 (.A(A),.B(B[4]),.pS(sum2),.pcin(c0[2]),.sum(sum3),.prodVal(product[4]),.carry(c0[3]));
	MultiplierLogic u3 (.A(A),.B(B[5]),.pS(sum3),.pcin(c0[3]),.sum(sum4),.prodVal(product[5]),.carry(c0[4]));
	MultiplierLogic u4 (.A(A),.B(B[6]),.pS(sum4),.pcin(c0[4]),.sum(sum5),.prodVal(product[6]),.carry(c0[5]));
	MultiplierLogic u5 (.A(A),.B(B[7]),.pS(sum5),.pcin(c0[5]),.sum(sum6),.prodVal(product[7]),.carry(c0[6]));
	MultiplierLogic u6 (.A(A),.B(B[8]),.pS(sum6),.pcin(c0[6]),.sum(sum7),.prodVal(product[8]),.carry(c0[7]));
	MultiplierLogic u7 (.A(A),.B(B[9]),.pS(sum7),.pcin(c0[7]),.sum(sum8),.prodVal(product[9]),.carry(c0[8]));
	MultiplierLogic u8 (.A(A),.B(B[10]),.pS(sum8),.pcin(c0[8]),.sum(sum9),.prodVal(product[10]),.carry(c0[9]));
	MultiplierLogic u9 (.A(A),.B(B[11]),.pS(sum9),.pcin(c0[9]),.sum(sum10),.prodVal(product[11]),.carry(c0[10]));
	MultiplierLogic u10 (.A(A),.B(B[12]),.pS(sum10),.pcin(c0[10]),.sum(sum11),.prodVal(product[12]),.carry(c0[11]));
	MultiplierLogic u11 (.A(A),.B(B[13]),.pS(sum11),.pcin(c0[11]),.sum(sum12),.prodVal(product[13]),.carry(c0[12]));
	MultiplierLogic u12 (.A(A),.B(B[14]),.pS(sum12),.pcin(c0[12]),.sum(sum13),.prodVal(product[14]),.carry(c0[13]));
	MultiplierLogic u13 (.A(A),.B(B[15]),.pS(sum13),.pcin(c0[13]),.sum(sum14),.prodVal(product[15]),.carry(c0[14]));
	
	assign product[31:16] = {c0[14],sum14[15:1]};
	
endmodule
	
	
