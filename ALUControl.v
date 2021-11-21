`timescale 1ns/100ps
module ALUcontrol(
input clk, [1:0] ALUOp, [5:0] Instruction,
output reg [3:0] ALUInput);

always@(posedge clk)begin

	if(ALUOp == 2'b00) begin
			ALUInput = 4'b0010;
	end

	else if(ALUOp == 2'bx1)begin
			ALUInput = 4'b0010;
	end

	else if(ALUOp == 2'b1x) begin

		if(Instruction == 6'bxx0000)begin
			ALUInput = 4'b0010; 
		end

		else if(Instruction == 6'bxx0010)begin
			ALUInput = 4'b0110;
		end

		else if (Instruction == 6'bxx0000)begin
			ALUInput = 4'b0001;	
		end

		else if(Instruction == 6'bxx0010)begin
			ALUInput = 4'b0111;
		end
	end
end



endmodule 