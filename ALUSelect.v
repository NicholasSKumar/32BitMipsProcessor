module ALUSelect(
	input [3:0] FunctC,
	input [31:0] A,B,
	output reg [31:0] ALUOut,
	output reg Zero);
	wire cout1,cout2;
	wire overFlow1,overFlow2;
	
	wire [31:0] add,sub,mul,quo,rem;
	ThirtyTwoBitSub u1 (.B(B),.A(A),.cin(1'b0),.Diff(add),.cout(cout1),.overFlow(overFlow1));
	ThirtyTwoBitSub u2 (.B(B),.A(A),.cin(1'b1),.Diff(sub),.cout(cout2),.overFlow(overFlow2));
	Multiplier u3 (.B(B[15:0]),.A(A[15:0]),.product(mul));
	Div u4 (.A(A),.B(B),.quo(quo),.rem(rem));
	always@(*) begin 
		case (FunctC)

			4'b0010: ALUOut = add;

			4'b0110: ALUOut = sub;
	
			4'b0000: ALUOut = A&B;

			4'b0001: ALUOut = A|B;

			4'b0011: ALUOut = ~(A|B);	//nor madeup FunctC
			
			4'b0100: ALUOut = A^B; 		//xor madeup FunctC

			4'b1010: ALUOut = mul;		//madeup FunctC

			4'b1111: ALUOut = quo;	 	//madeupFunctC

			default: ALUOut = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
		endcase
		if (ALUOut == 0) Zero = 1;
	end
endmodule
