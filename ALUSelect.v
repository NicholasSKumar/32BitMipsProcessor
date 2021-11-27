module ALUSelect(
	input [3:0] FunctC,
	input [31:0] A,B,
	output [31:0] Final);
	wire cout;
	wire overFlow;
	always@(*) begin 
		case (FunctC)

			4'b0010: ThirtyTwoBitSub u1 (.B(B),.A(A),.cin(1'b0),.Diff(Final),.cout(cout),.overFlow(overFlow));

			4'b0110: ThirtyTwoBitSub u2 (.B(B),.A(A),.cin(1'b1),.Diff(Final),.cout(cout),.overFlow(overFlow));

			4'b1010: Multiplier u3 (.B(B[15:0]),.A(A[15:0]),.product(Final)); //madeup FunctC

			//4?b1011: Divide u4	//madeupFunctC
	
			4'b0000: Final = A&B;

			4'b0001: Final = A+B;

			4'b0011: Final = ~Final;	//madeup FunctC

			default: Final = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
		endcase
	end
endmodule
