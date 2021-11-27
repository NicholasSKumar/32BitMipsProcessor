module ALUSelect(
	input [3:0] FunctC,
	input [31:0] A,B,
	output reg [31:0] Final);
	wire cout1,cout2;
	wire overFlow1,overFlow2;

	wire [31:0] add,sub,mul,div;
	ThirtyTwoBitSub u1 (.B(B),.A(A),.cin(1'b0),.Diff(add),.cout(cout1),.overFlow(overFlow1));
	ThirtyTwoBitSub u2 (.B(B),.A(A),.cin(1'b1),.Diff(sub),.cout(cout2),.overFlow(overFlow2));
	Multiplier u3 (.B(B[15:0]),.A(A[15:0]),.product(mul));
	always@(*) begin 
		case (FunctC)

			4'b0010: Final = add;

			4'b0110: Final = sub;

			4'b1010: Final = mul; //madeup FunctC

			//4?b1011: Divide u4	//madeupFunctC
	
			4'b0000: Final = A&B;

			4'b0001: Final = A+B;

			4'b0011: Final = ~Final;	//madeup FunctC

			default: Final = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
		endcase
	end
endmodule
