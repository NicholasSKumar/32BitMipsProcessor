module MuxALUSRC(
	input [31:0] regRead,
	input [31:0] signExnd,
	input ALUSrc,
	output [31:0] ALUvalue);

	assign ALUvalue = (ALUSrc) ? regRead : signExnd;
endmodule 
