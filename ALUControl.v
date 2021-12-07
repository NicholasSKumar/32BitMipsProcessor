`timescale 1ns/100ps
module ALUcontrol(
	input [1:0] ALUOp,
	input [5:0] Instruction,
	output reg [3:0] ALUInput);

always@(*)begin

	if(ALUOp == 2'b00) begin
		if (Instruction == 6'b000100)begin 
			ALUInput = 4'b0110;
		end
		else begin
			ALUInput = 4'b0010;
		end
	end

	else if(ALUOp == 2'b01)begin
		if(Instruction == 6'b010000) begin
			ALUInput = 4'b0101;	//mfhi
		end
		else if(Instruction == 6'b010010) begin
			ALUInput = 4'b0111;	//mflo
		end
		else ALUInput = 4'b0010;
	end

	else if(ALUOp == 2'b10) begin

		case(Instruction) 
		
		6'b100000: ALUInput = 4'b0010; //add ww w
		
		6'b100010: ALUInput = 4'b0110; //sub ww 

		6'b100101: ALUInput = 4'b0001; //or ww

		6'b101010: ALUInput = 4'b1110; //slt ww

		6'b100100: ALUInput = 4'b0000; //and ww

		6'b100111: ALUInput = 4'b0011; //nor w new define

		//6'bxx0110: ALUInput = 4'b0100; //xor w new define
	
		6'b101000: ALUInput = 4'b1010; //Mult w new define

		6'b101111: ALUInput = 4'b1111; //Div w new define
		
		default: ALUInput = 4'bXXXX;

		endcase

	end
end



endmodule 