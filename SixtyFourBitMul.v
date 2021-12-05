module SixtyFourBitMul(
	input [31:0] A,
	input [31:0] B,
	output [63:0] product);
	
	wire [31:0] Temp0,Temp1,Temp2,Temp3;
	wire [31:0] Bone,Bzero,c0;
	wire [31:0] sum0,sum1,sum2,sum3,sum4,sum5,sum6,sum7,sum8,sum9,sum10,sum11,sum12,sum13,sum14,sum15;
	wire [31:0] sum16, sum17,sum18, sum19, sum20, sum21, sum22, sum23, sum24, sum25, sum26, sum27, sum28, sum29, sum30, sum31;
	wire overFlow;
	

	assign Bzero = {{(31){B[0]}},B[0]};
	assign Bone = {{(31){B[1]}},B[1]};

	assign Temp1 = A&Bone;
	assign Temp2 = A&Bzero;
	assign product[0] = Temp2[0];
	assign Temp3 = {1'b0,Temp2[31:1]};
	ThirtyTwoBitAdder uu0 (.A(Temp1),.B(Temp3),.cin(1'b0),.sum(sum0),.cout(c0[0]),.overFlow(overFlow));
	assign product[1] = sum0[0];

	
	SMultiplierLogic u0 (.A(A),.B(B[2]),.pS(sum0),.pcin(c0[0]),.sum(sum1),.prodVal(product[2]),.carry(c0[1]));
	SMultiplierLogic u1 (.A(A),.B(B[3]),.pS(sum1),.pcin(c0[1]),.sum(sum2),.prodVal(product[3]),.carry(c0[2]));
	SMultiplierLogic u2 (.A(A),.B(B[4]),.pS(sum2),.pcin(c0[2]),.sum(sum3),.prodVal(product[4]),.carry(c0[3]));
	SMultiplierLogic u3 (.A(A),.B(B[5]),.pS(sum3),.pcin(c0[3]),.sum(sum4),.prodVal(product[5]),.carry(c0[4]));
	SMultiplierLogic u4 (.A(A),.B(B[6]),.pS(sum4),.pcin(c0[4]),.sum(sum5),.prodVal(product[6]),.carry(c0[5]));
	SMultiplierLogic u5 (.A(A),.B(B[7]),.pS(sum5),.pcin(c0[5]),.sum(sum6),.prodVal(product[7]),.carry(c0[6]));
	SMultiplierLogic u6 (.A(A),.B(B[8]),.pS(sum6),.pcin(c0[6]),.sum(sum7),.prodVal(product[8]),.carry(c0[7]));
	SMultiplierLogic u7 (.A(A),.B(B[9]),.pS(sum7),.pcin(c0[7]),.sum(sum8),.prodVal(product[9]),.carry(c0[8]));
	SMultiplierLogic u8 (.A(A),.B(B[10]),.pS(sum8),.pcin(c0[8]),.sum(sum9),.prodVal(product[10]),.carry(c0[9]));
	SMultiplierLogic u9 (.A(A),.B(B[11]),.pS(sum9),.pcin(c0[9]),.sum(sum10),.prodVal(product[11]),.carry(c0[10]));
	SMultiplierLogic u10 (.A(A),.B(B[12]),.pS(sum10),.pcin(c0[10]),.sum(sum11),.prodVal(product[12]),.carry(c0[11]));
	SMultiplierLogic u11 (.A(A),.B(B[13]),.pS(sum11),.pcin(c0[11]),.sum(sum12),.prodVal(product[13]),.carry(c0[12]));
	SMultiplierLogic u12 (.A(A),.B(B[14]),.pS(sum12),.pcin(c0[12]),.sum(sum13),.prodVal(product[14]),.carry(c0[13]));
	SMultiplierLogic u13 (.A(A),.B(B[15]),.pS(sum13),.pcin(c0[13]),.sum(sum14),.prodVal(product[15]),.carry(c0[14]));
	SMultiplierLogic u14 (.A(A),.B(B[16]),.pS(sum14),.pcin(c0[14]),.sum(sum15),.prodVal(product[16]),.carry(c0[15]));
	SMultiplierLogic u15 (.A(A),.B(B[17]),.pS(sum15),.pcin(c0[15]),.sum(sum16),.prodVal(product[17]),.carry(c0[16]));	
	SMultiplierLogic u16 (.A(A),.B(B[18]),.pS(sum16),.pcin(c0[16]),.sum(sum17),.prodVal(product[18]),.carry(c0[17]));
	SMultiplierLogic u17 (.A(A),.B(B[19]),.pS(sum17),.pcin(c0[17]),.sum(sum18),.prodVal(product[19]),.carry(c0[18]));
	SMultiplierLogic u18 (.A(A),.B(B[20]),.pS(sum18),.pcin(c0[18]),.sum(sum19),.prodVal(product[20]),.carry(c0[19]));	
	SMultiplierLogic u19 (.A(A),.B(B[21]),.pS(sum19),.pcin(c0[19]),.sum(sum20),.prodVal(product[21]),.carry(c0[20]));
	SMultiplierLogic u20 (.A(A),.B(B[22]),.pS(sum20),.pcin(c0[20]),.sum(sum21),.prodVal(product[22]),.carry(c0[21]));
	SMultiplierLogic u21 (.A(A),.B(B[23]),.pS(sum21),.pcin(c0[21]),.sum(sum22),.prodVal(product[23]),.carry(c0[22]));	
	SMultiplierLogic u22 (.A(A),.B(B[24]),.pS(sum22),.pcin(c0[22]),.sum(sum23),.prodVal(product[24]),.carry(c0[23]));
	SMultiplierLogic u23 (.A(A),.B(B[25]),.pS(sum23),.pcin(c0[23]),.sum(sum24),.prodVal(product[25]),.carry(c0[24]));
	SMultiplierLogic u24 (.A(A),.B(B[26]),.pS(sum24),.pcin(c0[24]),.sum(sum25),.prodVal(product[26]),.carry(c0[25]));	
	SMultiplierLogic u25 (.A(A),.B(B[27]),.pS(sum25),.pcin(c0[25]),.sum(sum26),.prodVal(product[27]),.carry(c0[26]));
	SMultiplierLogic u26 (.A(A),.B(B[28]),.pS(sum26),.pcin(c0[26]),.sum(sum27),.prodVal(product[28]),.carry(c0[27]));
	SMultiplierLogic u27 (.A(A),.B(B[29]),.pS(sum27),.pcin(c0[27]),.sum(sum28),.prodVal(product[29]),.carry(c0[28]));	
	SMultiplierLogic u28 (.A(A),.B(B[30]),.pS(sum28),.pcin(c0[28]),.sum(sum29),.prodVal(product[30]),.carry(c0[29]));
	SMultiplierLogic u29 (.A(A),.B(B[31]),.pS(sum29),.pcin(c0[29]),.sum(sum30),.prodVal(product[31]),.carry(c0[30]));



	assign product[63:32] = {c0[30],sum30[31:1]};
	//C0[30] (1B) + sum30 (31B) + Product[31] + Procuct [30-0]
	
endmodule
