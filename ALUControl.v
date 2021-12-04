`timescale 1ns/100ps
module ALUcontrol(
	input [1:0] ALUOp,
	input [5:0] Instruction,
	output reg [3:0] ALUInput);

always@(*)begin

	if(ALUOp == 2'b00) begin
		if (Instruction == 000100)begin 
			ALUInput = 4'b0110;
		end
		else begin
			ALUInput = 4'b0010;
		end
	end

	else if(ALUOp == 2'bx1)begin
			ALUInput = 4'b0010;
	end

	else if(ALUOp == 2'b1x) begin

		case(Instruction) 
		
		6'bxx0000: ALUInput = 4'b0010; //add ww 
		
		6'bxx0010: ALUInput = 4'b0110; //sub ww

		6'bxx0101: ALUInput = 4'b0001; //or ww

		6'bxx1010: ALUInput = 4'b0111; //slt ww

		6'bxx0100: ALUInput = 4'b0000; //and ww

		6'bxx0111: ALUInput = 4'b0011; //nor w new define

		6'bxx0110: ALUInput = 4'b0100; //xor w new define
	
		6'bxx1000: ALUInput = 4'b1010; //Mul w new define

		6'bxx1111: ALUInput = 4'b1111; //Div w new define
		
		default: ALUInput = 4'bXXXX;

		endcase

	end
end



endmodule 