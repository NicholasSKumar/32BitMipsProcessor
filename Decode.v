module Decode(rd_out1, rd_out2, sign_extend, instruction, wr_data, RegDst, RegWrite,clk);
	output [31:0] rd_out1, rd_out2, sign_extend;
	input [31:0] instruction, wr_data;
	input RegDst, RegWrite,clk;
	//reg [5:0] cont_in;
	wire [4:0] WriteReg;
	wire [4:0] rd_reg1, rd_reg2, wr_reg;
	wire [15:0] sign_ex_in;
	

	assign rd_reg1 = instruction[25:21];
	assign rd_reg2 = instruction[20:16];
	assign wr_reg = instruction[15:11];
	assign sign_ex_in = instruction[15:0];

	MuxRegDest MRD0(.twentyInst(rd_reg2) ,.fifteenInst(wr_reg) ,.RegDest(RegDst) ,.WriteReg(WriteReg));
	reg_file RF0(.wr(RegWrite), .addr1(rd_reg1),.addr2(rd_reg2),.rdout1(rd_out1),.rdout2(rd_out2),.addr3(WriteReg),.data3(wr_data),.clk(clk));
	SignExtend SE0(.unextended(sign_ex_in), .extended(sign_extend));
endmodule
