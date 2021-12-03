module Control(
	input [5:0] Inst,
	//input clk,
	output RegDest,
	output Branch,
	output MemRead,
	output MemtoReg,
	output [1:0] ALUOp,
	output MemWrite,
	output ALUSrc,
	output RegWrite);
	//issue using always @(*) could be that if we have two add statements the input wouldnt change 
	//and nothing would update
	//always @(posedge clk
	always @(*) begin 
		case (Inst)

		6'b100100: begin
			//and
			RegDest = ;
			Branch = ;
			MemRead = ;
			MemtoReg = ;
			ALUOp = 2'b;
			MemWrite = ;
			ALUSrc = ;
			RegWrite = ;
			end 
		6'b100101: begin
			//or
			RegDest = ;
			Branch = ;
			MemRead = ;
			MemtoReg = ;
			ALUOp = 2'b;
			MemWrite = ;
			ALUSrc = ;
			RegWrite = ;
			end 
		6'b100111: begin
			//nor
			RegDest = ;
			Branch = ;
			MemRead = ;
			MemtoReg = ;
			ALUOp = 2'b;
			MemWrite = ;
			ALUSrc = ;
			RegWrite = ;
			end 
		6'b100000: begin
			//add
			RegDest = ;
			Branch = ;
			MemRead = ;
			MemtoReg = ;
			ALUOp = 2'b;
			MemWrite = ;
			ALUSrc = ;
			RegWrite = ;
			end 
		6'b100010: begin
			//sub
			RegDest = ;
			Branch = ;
			MemRead = ;
			MemtoReg = ;
			ALUOp = 2'b;
			MemWrite = ;
			ALUSrc = ;
			RegWrite = ;
			end 
		6'b101010: begin
			//slt
			RegDest = ;
			Branch = ;
			MemRead = ;
			MemtoReg = ;
			ALUOp = 2'b;
			MemWrite = ;
			ALUSrc = ;
			RegWrite = ;
			end 
		6'b001000: begin
			//addi
			RegDest = ;
			Branch = ;
			MemRead = ;
			MemtoReg = ;
			ALUOp = 2'b;
			MemWrite = ;
			ALUSrc = ;
			RegWrite = ;
			end 
		6'b101111: begin
			//div
			RegDest = ;
			Branch = ;
			MemRead = ;
			MemtoReg = ;
			ALUOp = 2'b;
			MemWrite = ;
			ALUSrc = ;
			RegWrite = ;
			end 
		6'b101000: begin
			//mult
			RegDest = ;
			Branch = ;
			MemRead = ;
			MemtoReg = ;
			ALUOp = 2'b;
			MemWrite = ;
			ALUSrc = ;
			RegWrite = ;
			end 
		6'b100011: begin
			//lw
			RegDest = ;
			Branch = ;
			MemRead = ;
			MemtoReg = ;
			ALUOp = 2'b;
			MemWrite = ;
			ALUSrc = ;
			RegWrite = ;
			end 
		6'b101011: begin
			//sw
			RegDest = ;
			Branch = ;
			MemRead = ;
			MemtoReg = ;
			ALUOp = 2'b;
			MemWrite = ;
			ALUSrc = ;
			RegWrite = ;
			end 
		6'b010000: begin
			//mfhi
			RegDest = ;
			Branch = ;
			MemRead = ;
			MemtoReg = ;
			ALUOp = 2'b;
			MemWrite = ;
			ALUSrc = ;
			RegWrite = ;
			end 
		6'b010010: begin
			//mflo
			RegDest = ;
			Branch = ;
			MemRead = ;
			MemtoReg = ;
			ALUOp = 2'b;
			MemWrite = ;
			ALUSrc = ;
			RegWrite = ;
			end 
		6'b000100: begin
			//beq
			RegDest = ;
			Branch = ;
			MemRead = ;
			MemtoReg = ;
			ALUOp = 2'b;
			MemWrite = ;
			ALUSrc = ;
			RegWrite = ;
			end 
		6'b000010: begin
			//j
			RegDest = ;
			Branch = ;
			MemRead = ;
			MemtoReg = ;
			ALUOp = 2'b;
			MemWrite = ;
			ALUSrc = ;
			RegWrite = ;
			end 
		default: ;
		endcase
	
