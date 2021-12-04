Decode(output rd_out1, rd_out2, sign_extend, input instruction, wr_data, clk, RegDst);
	output [31:0] rd_out1, rd_out2, sign_extend;
	input [31:0] instruction, wr_data;
	input [31:0] wr_data;
	input clk, RegDst;
	
	reg rdwr;
	//reg [5:0] cont_in;
	wire [4:0] rd_reg1, rd_reg2, wr_reg;
	wire [15:0] sign_ex_in;
	wire WriteReg;

	assign rd_reg1 = instruction[25:21];
	assign rd_reg2 = instruction[20:16];
	assign wr_reg = instruction[15:11];
	assign sign_ex_in = instruction[15:0];

	always@ (*)
		begin
			MuxRegDest MRD0(.twentyInst(rd_reg2) ,.fifteenInst(wr_reg) ,.RegDest(RegDst) ,.WriteReg(WriteReg));
			if(WriteReg == 4'bxxxxx) begin
				rdwr = 0;
			end
			else begin
				rdwr = 1;
			end
			reg_file RF0(.rdwr(rdwr),.addr1(),.addr2(),.rdout1(),.rdout2(),.addr3(),.data3(),.clk());
