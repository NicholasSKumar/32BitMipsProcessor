module reg_file_tb;
	reg rdwr, clk;
	reg[4:0] addr1, addr2, addr3;
	reg[31:0] data3;
	wire[31:0] rdout1, rdout2;

	reg_file uut (.rdwr, .addr1, .addr2, .rdout1, .rdout2, .addr3, .data3, .clk);

	initial begin 
		clk = 0;
		rdwr = 1;

		addr3 = 5'b01010;
		data3 = 16'hffff;

		#35;

		rdwr = 0;
		addr1 = 5'b01010;

		#50;

		rdwr = 1;
		addr3 = 5'b01110;
		data3 = 16'hff00;

		#50;

		rdwr = 0;
		addr1 = 5'b01110;
		
		#50;

		rdwr = 1;
		addr3 = 5'b11111;
		data3 = 16'haaaa;

		#50;

		rdwr = 0;

		addr1 = 5'b11111;
		addr2 = 5'b01010;
		
	end 

	always #5 clk = ~clk;
	initial begin 
		//$monitor("", );
	end
	endmodule