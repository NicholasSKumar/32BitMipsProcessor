module reg_file(wr,addr1,addr2,rdout1,rdout2,addr3,data3,clk);

	//input wr;  	//A signal that decides whether we write into file (if 1 -> write)
	input [4:0] addr1, addr2;
	input wr,clk;
	output [31:0] rdout1;	//In case of read, the value of the first register
	output [31:0] rdout2;	//In case of read, the value of the second register
	input [4:0] addr3;	//In case of write, the address of the register in which to write
	input [31:0] data3;	//In case of write, the value to be written

	reg [31:0] mem_reg [31:0];

	initial begin
		mem_reg[0] = 32'b00000000000000000000000000000000; //zero		//Register File initialized with random values
        	mem_reg[1] = 32'b00000000000000000000000000000001; //assembler temp 1
        	mem_reg[2] = 32'b00000000000000000000000000001000; //v0 8
        	mem_reg[3] = 32'b00000000000000000000000000000110; //v1
       		mem_reg[4] = 32'b00000000000000000000000000100000; //a0
        	mem_reg[5] = 32'b00000000000000000000000000100000; //a1
        	mem_reg[6] = 32'b00000000000000000000000000000001; //a2
        	mem_reg[7] = 32'b00000000000000000000001000000000; //a3
        	mem_reg[8] = 32'b00000000000000000000000010000000; //t0
        	mem_reg[9] = 32'b00000000000001000000000000000000; //t1
        	mem_reg[10] = 32'b00000000000000000000000000000001; //t2
        	mem_reg[11] = 32'b00000000000000000000000100000000; //t3
        	mem_reg[12] = 32'b00000000000000000000000000010010; //t4
        	mem_reg[13] = 32'b00000000000000000000000010100000; //t5
        	mem_reg[14] = 32'b00000000000000000000000000111000; //t6
        	mem_reg[15] = 32'b00000000000000000000011001000000; //t7
        	mem_reg[16] = 32'b00000000000000000000000000100000; //s0
        	mem_reg[17] = 32'b00000000000000000000000000010000; //s1
        	mem_reg[18] = 32'b00000000000000000000000010100000; //s2
        	mem_reg[19] = 32'b00000000000000000000000001000000; //s3
        	mem_reg[20] = 32'b00000000000000000000000101000000; //s4
        	mem_reg[21] = 32'b00000000000000000010000000000000; //s5
        	mem_reg[22] = 32'b00000000000000000001000000000000; //s6
        	mem_reg[23] = 32'b00000000000000000000100000000000; //s7
        	mem_reg[24] = 32'b00000000000000001000000100000000; //t8
        	mem_reg[25] = 32'b00000000000000001100100000000000; //t9
        	mem_reg[26] = 32'b00000000000000000000000100000000; //k0 kernel use regs
        	mem_reg[27] = 32'b00000000000000000100100000000000; //k1 kernel use regs
        	mem_reg[28] = 32'b00000000000000000000100001000000; //gp global pointer
        	mem_reg[29] = 32'b00000000000000000000000100010000; //sp stack pointer
        	mem_reg[30] = 32'b00000000000010100010000000000000; //fp/s8 stack frame pointer or subroutine variable
        	mem_reg[31] = 32'b00000000000000010000100101100000; //ra

	end

	always @(negedge clk) begin
		if(wr == 1) begin
			mem_reg[addr3] = data3;
		end
	end	
	//always @(negedge clk) begin
		// rdout1 = mem_reg[addr1];
		// rdout2 = mem_reg[addr2];
		assign rdout1 = mem_reg[addr1];
		assign rdout2 = mem_reg[addr2];
	//end


endmodule
