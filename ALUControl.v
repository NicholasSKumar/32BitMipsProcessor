`timescale 1ns/100ps
module ALUcontrol(
	input [1:0] ALUOp,
	input [5:0] Instruction,
	output reg [3:0] ALUInput);

always@(*)begin

	if(ALUOp == 2'b00) begin
			ALUInput = 4'b0010;
	end

	else if(ALUOp == 2'bx1)begin
			ALUInput = 4'b0010;
	end

	else if(ALUOp == 2'b1x) begin

		case(Instruction) 
		
		6'bxx0000: ALUInput = 4'b0010;
		
		6'bxx0010: ALUInput = 4'b0110;

		6'bxx0000: ALUInput = 4'b0001;

		6'bxx0010: ALUInput = 4'b0111;
		
		default: ALUInput = 4'bXXXX;

		endcase

	end
end



endmodule 