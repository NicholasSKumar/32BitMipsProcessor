module  data_mem(output reg [31:0] rd_data, input [31:0] addr_in, wr_data, input mem_wr, mem_rd);
	reg [7:0] my_memory [0:255];

	initial begin
		$readmemh("datamem.list", my_memory);
	end

	wire [7:0] mem_add0, mem_add1, mem_add2, mem_add3;

	assign mem_add0 = addr_in;
	assign mem_add1 = addr_in + 32'h1;
	assign mem_add2 = addr_in + 32'h2;
	assign mem_add3 = addr_in + 32'h3;
	

	always @(*) begin
		if (mem_wr == 1 && mem_rd == 1) rd_data = 32'h0;
		else if (mem_rd == 1)begin
			rd_data[31:0] = {my_memory[mem_add0],my_memory[mem_add1],my_memory[mem_add2],my_memory[mem_add3]};
		end
		else if (mem_wr == 1) begin
			my_memory[mem_add0] = wr_data[31:24];
			my_memory[mem_add1] = wr_data[23:16];
			my_memory[mem_add2] = wr_data[15:8];
			my_memory[mem_add3] = wr_data[7:0];
		end
		else rd_data = 32'h0;
	end
endmodule
