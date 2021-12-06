module DecodeTB;
	
	wire [31:0] rd_out1, rd_out2, sign_extend;

	reg[31:0] instruction, wr_data;
	reg RegDst, RegWrite;

	Decode uut(.rd_out1, .rd_out2, .sign_extend, .instruction, .wr_data, .RegDst, .RegWrite);

	
	initial begin			//25 //20  //15-0

		instruction = 32'b10000100001001101100000101000000;
		RegDst = 1;
		RegWrite = 1;
		
		#150;

		wr_data = 5'b01011;

		#150;

		RegDst = 0;
		RegWrite = 0;
		instruction = 32'b10000100011000100010000101000000;

	end

endmodule
