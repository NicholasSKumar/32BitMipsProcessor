module reg_file_tb;
	reg[4:0] addr1, addr2, addr3;
	reg[31:0] data3;
	wire[31:0] rdout1, rdout2;

	reg_file uut (.addr1, .addr2, .rdout1, .rdout2, .addr3, .data3);

	initial begin 
		//clk = 0;
		//wr = 1;

		addr3 = 5'b01010;
		data3 = 16'hffff;

		#40;

		//wr = 0;
		addr1 = 5'b01010;

		#40;

		//wr = 1;
		addr3 = 5'b01110;
		data3 = 16'hff00;

		#40;

		//wr = 0;
		addr1 = 5'b01110;
		
		#40;

		//wr = 1;
		addr3 = 5'b11111;
		data3 = 16'haaaa;

		#40;

		//wr = 0;

		addr1 = 5'b11111;
		addr2 = 5'b01010;

		#40;

		//wr = 1;

		addr1 = 5'b01110;
		addr2 = 5'b01010;
		addr3 = 5'b00001;
		data3 = 16'h8888;
		
	end 

	//always #5 clk = ~clk;
	initial begin 
		//$monitor("", );
	end
	endmodule
