module MEMTB;
	reg [31:0]addr_in, wr_data;
	reg MemWrite, MemRead, clk;

	wire [31:0] rd_data;

	MEM uut(.addr_in, .wr_data, .MemWrite, .MemRead, .clk, .rd_data);

	initial begin
		clk = 0;
		MemRead = 0;
		MemWrite = 1;

		addr_in = 32'h0;
		wr_data = 32'haa;

		#50;

		MemRead = 1;
		MemWrite = 0;

		addr_in = 32'h0;

		#50;

		MemRead = 0;
		MemWrite = 1;

		addr_in = 32'h4;
		wr_data = 32'hbeef;

		#50;

		MemRead = 0;
		MemWrite = 1;

		addr_in = 32'h8;
		wr_data = 32'h0bad;

		#50

		MemRead = 1;
		MemWrite = 0;

		addr_in = 32'h4;
	end

	always #5 clk = ~clk;

endmodule