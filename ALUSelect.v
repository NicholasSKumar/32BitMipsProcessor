module ALUSelect(
	input [3:0] FunctC,
	input [31:0] A,B,
	output reg [31:0] ALUOut,
	output reg Zero);
	wire cout1,cout2;
	wire overFlow1,overFlow2;
	reg [31:0] him, lom, hid, lod;
	reg flag;
	
	wire [31:0] add,sub,quo,rem,SLT;
	wire [63:0] mul;
	ThirtyTwoBitSub u1 (.B(B),.A(A),.cin(1'b0),.Diff(add));
	ThirtyTwoBitSub u2 (.B(B),.A(A),.cin(1'b1),.Diff(sub));
	SixtyFourBitMul u3 (.B(B),.A(A),.product(mul));
	Div u4 (.A(A),.B(B),.quo(quo),.rem(rem));
	always@(*) begin 
		case (FunctC)
			4'b0010: ALUOut = add;

			4'b0110: ALUOut = sub;
	
			4'b0000: ALUOut = A&B;

			4'b0001: ALUOut = A|B;

			4'b0011: ALUOut = ~(A|B);	//nor madeup FunctC
			
			//4'b0100: ALUOut = A^B; 		//xor madeup FunctC

			4'b1010: begin			//madeup FunctC mul
				him = mul[63:32];
				lom = mul[31:0];
				flag = 1;		
			end

			4'b1111: begin			//madeup FunctC div
				hid = rem;
				lod = quo;
				flag = 0;	 	
			end
			4'b0101: begin			//madeup FunctC mfhi
				ALUOut = (flag) ? him : hid;
			end
			4'b0111: begin			//madeup FunctC mflo
				ALUOut = (flag) ? lom : lod;
			end
			4'b1110: begin 
				ALUOut = (sub[31]) ? 1'b1 : 1'b0;
			end

			default: ALUOut = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
		endcase
		if (ALUOut == 0) Zero = 1;
		else Zero = 0;
	end
endmodule
