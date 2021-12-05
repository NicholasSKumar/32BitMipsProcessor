module CPU;
	
	//Control wires and regs
	wire RegDest, Jump, Branch, MemRead, MemtoReg, MemWrite, ALUSrc, RegWrite;
	wire [1:0] ALUOp;
	wire [31:0] Inst;
	
	

	Control C0(.Inst(Inst[31:26]), .RegDest(), .Jump(Jump), .Branch(), .MemRead(), .MemtoReg(), .ALUOp(ALUOp), .MemWrite(), .ALUSrc(), .RegWrite());
	ALUcontrol ALUC0(.ALUOp(ALUOp), .Instruction(Inst[5:0]), .ALUInput());
	Fetch F0(.BranchMuxResult(), .clk(), .reset(), .Jump(Jump), .inst(Inst), .currentAddr());
	Decode D0(.rd_out1(), .rd_out2(), .sign_extend(), .instruction(), .wr_data(), .RegDst(), .RegWrite());
	Execute E0(.instruct(), .address(), .signExnd(), .mem1Read(), .mem2Read(), .ALUSrc(), .Branch(), .FunctC(), .ALUOp(), .ALUResult(), .MX2());
	MEM M0(.addr_in(), .wr_data(), .MemWrite(), .MemRead(), .clk(), .rd_data());
	WriteBack WB0(.wr_data(), .alu_result(), .rd_data(), .MemtoReg());

endmodule
