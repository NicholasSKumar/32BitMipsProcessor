module Control(
	input [5:0] Inst,
	//input clk,
	output reg RegDest,
	output reg Jump,
	output reg Branch,
	output reg MemRead,
	output reg MemtoReg, 
	output reg [1:0] ALUOp,
	output reg MemWrite,
	output reg ALUSrc,
	output reg RegWrite);
	
	always @(*) begin 
		case (Inst)

		6'b100100: begin
			//and
			RegDest = 1;
			Jump = 0;
			Branch = 0;
			MemRead = 0;
			MemtoReg = 0;
			ALUOp = 2'b10;
			MemWrite = 0;
			ALUSrc = 0;
			RegWrite = 1;
			end 
		6'b100101: begin
			//or
			RegDest = 1;
			Jump = 0;
			Branch = 0;
			MemRead = 0;
			MemtoReg = 0;
			ALUOp = 2'b10;
			MemWrite = 0;
			ALUSrc = 0;
			RegWrite = 1;
			end 
		6'b100111: begin
			//nor
			RegDest = 1;
			Jump = 0;
			Branch = 0;
			MemRead = 0;
			MemtoReg = 0;
			ALUOp = 2'b10;
			MemWrite = 0;
			ALUSrc = 0;
			RegWrite = 1;
			end 
		6'b100000: begin
			//add
			RegDest = 1;
			Jump = 0;
			Branch = 0;
			MemRead = 0;
			MemtoReg = 0;
			ALUOp = 2'b10;
			MemWrite = 0;
			ALUSrc = 0;
			RegWrite = 1;
			end 
		6'b100010: begin
			//sub
			RegDest = 1;
			Jump = 0;
			Branch = 0;
			MemRead = 0;
			MemtoReg = 0;
			ALUOp = 2'b10;
			MemWrite = 0;
			ALUSrc = 0;
			RegWrite = 1;
			end 
		6'b101010: begin
			//slt
			RegDest = 1;
			Jump = 0;
			Branch = 0;
			MemRead = 0;
			MemtoReg = 0;
			ALUOp = 2'b10;
			MemWrite = 0;
			ALUSrc = 0;
			RegWrite = 1;
			end 
		6'b001000: begin
			//addi
			RegDest = 0;
			Jump = 0;
			Branch = 0;
			MemRead = 0;
			MemtoReg = 0;
			ALUOp = 2'b00;
			MemWrite = 0;
			ALUSrc = 1;
			RegWrite = 1;
			end 
		6'b101111: begin
			//div
			RegDest = 0;
			Jump = 0;
			Branch = 0;
			MemRead = 0;
			MemtoReg = 0;
			ALUOp = 2'b10;
			MemWrite = 0;
			ALUSrc = 0;
			RegWrite = 1;
			end 
		6'b101000: begin
			//mult
			RegDest = 0;
			Jump = 0;
			Branch = 0;
			MemRead = 0;
			MemtoReg = 0;
			ALUOp = 2'b10;
			MemWrite = 0;
			ALUSrc = 0;
			RegWrite = 0;
			end 
		6'b100011: begin
			//lw
			RegDest = 0;
			Jump = 0;
			Branch = 0;
			MemRead = 1;
			MemtoReg = 1;
			ALUOp = 2'b10;
			MemWrite = 0;
			ALUSrc = 1;
			RegWrite = 1;
			end 
		6'b101011: begin
			//sw
			RegDest = 0;
			Jump = 0;
			Branch = 0;
			MemRead = 0;
			MemtoReg = 0;
			ALUOp = 2'b10;
			MemWrite = 1;
			ALUSrc = 1;
			RegWrite = 0;
			end 
		6'b010000: begin
			//mfhi
			RegDest = 0;
			Jump = 0;
			Branch = 0;
			MemRead = 0;
			MemtoReg = 0;
			ALUOp = 2'b01;
			MemWrite = 0;
			ALUSrc = 0;
			RegWrite = 1;
			end 
		6'b010010: begin
			//mflo
			RegDest = 0;
			Jump = 0;
			Branch = 0;
			MemRead = 0;
			MemtoReg = 0;
			ALUOp = 2'b01;
			MemWrite = 0;
			ALUSrc = 0;
			RegWrite = 1;
			end 
		6'b000100: begin
			//beq
			RegDest = 0;
			Jump = 0;
			Branch = 1;
			MemRead = 0;
			MemtoReg = 0;
			ALUOp = 2'b00;
			MemWrite = 0;
			ALUSrc = 0;
			RegWrite = 0;
			end 
		6'b000010: begin
			//j
			RegDest = 0;
			Jump = 1;
			Branch = 0;
			MemRead = 0;
			MemtoReg = 0;
			ALUOp = 2'b00;
			MemWrite = 0;
			ALUSrc = 0;
			RegWrite = 0;
			end 
		default: begin
			RegDest = 0;
			Jump = 0;
			Branch = 0;
			MemRead = 0;
			MemtoReg = 0;
			ALUOp = 2'bxx;
			MemWrite = 0;
			ALUSrc = 0;
			RegWrite = 0;
		end
		endcase
	end
endmodule
