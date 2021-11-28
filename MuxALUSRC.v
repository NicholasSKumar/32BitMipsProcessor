module MuxALUSRC(
	input [31:0] regRead,
	input [31:0] signExnd,
	input ALUSrc,
	output ALUvalue);

	assign ALU = (ALUSrc) ? regRead : signExnd;
endmodule 
