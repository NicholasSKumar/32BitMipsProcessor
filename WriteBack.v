module WriteBack (wr_data, alu_result, rd_data, MemtoReg);
	output [31:0] wr_data;
	input [31:0] rd_data, alu_result;
	input MemtoReg;

	assign wr_data = (MemtoReg) ? rd_data : alu_result;
	
endmodule