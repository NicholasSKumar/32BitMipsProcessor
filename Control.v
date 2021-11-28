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
		6'bxxxxxx: begin
			RegDest = ;
			Branch = ;
			MemRead = ;
			MemtoReg = ;
			ALUOp = 2'b;
			MemWrite = ;
			ALUSrc = ;
			RegWrite = ;
			end 
		6'bxxxxxx: begin
			RegDest = ;
			Branch = ;
			MemRead = ;
			MemtoReg = ;
			ALUOp = 2'b;
			MemWrite = ;
			ALUSrc = ;
			RegWrite = ;
			end 
		6'bxxxxxx: begin
			RegDest = ;
			Branch = ;
			MemRead = ;
			MemtoReg = ;
			ALUOp = 2'b;
			MemWrite = ;
			ALUSrc = ;
			RegWrite = ;
			end 
		6'bxxxxxx: begin
			RegDest = ;
			Branch = ;
			MemRead = ;
			MemtoReg = ;
			ALUOp = 2'b;
			MemWrite = ;
			ALUSrc = ;
			RegWrite = ;
			end 
		6'bxxxxxx: begin
			RegDest = ;
			Branch = ;
			MemRead = ;
			MemtoReg = ;
			ALUOp = 2'b;
			MemWrite = ;
			ALUSrc = ;
			RegWrite = ;
			end 
		6'bxxxxxx: begin
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
	
