module MuxMemToReg(
	input [31:0] ALUResult,
	input [31:0] ReadData,
	input MemToReg,
	output writeData);

	assign Addr = (MemToReg) ? ReadData : ALUResult;
endmodule 
