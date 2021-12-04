module MEM(addr_in, wr_data, MemWrite, MemRead, clk, rd_data);
	input [31:0] addr_in, wr_data;
	input MemWrite, MemRead, clk;
	output [31:0] rd_data;

	reg [31:0] data_temp;

	data_mem DM0(.rd_data(rd_data), .addr_in(addr_in), .wr_data(data_temp), .mem_wr(MemWrite), .mem_rd(MemRead));

	always @(negedge clk) begin
		data_temp <= wr_data;
	end
endmodule