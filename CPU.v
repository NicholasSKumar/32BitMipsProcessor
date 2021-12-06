module CPU();
	
///////////////////////////CONTROL CONNECTIONS/////////////////////////////////////////////////////
	wire RegDest, Jump, Branch, MemRead, MemtoReg, MemWrite, ALUSrc, RegWrite;
	wire [1:0] ALUOp;
	wire [3:0] FunctC;

////////////////////////////WIRE CONNECTIONS///////////////////////////////////////////////////////
	wire [31:0] Inst,BranchMux,Address;
	wire [31:0] ALUIn,WriteData,signExnd;
	wire [31:0] mem1RD,mem2RD,ALUResult,BranchMux;

/////////////////////////////INITIAL BLOCKS///////////////////////////////////////////////////////
	initial begin
	reset = 1;
	#1
	reset = 0;
	clock = 1;
	end
	
	#5 clk = ~clk
	
	
///////////////////////////INSTANCIATIONS////////////////////////////////////////////////////////

	Control C0(.Inst(Inst[31:26]), .RegDest(RegDest), .Jump(Jump), .Branch(Branch), .MemRead(MemRead), .MemtoReg(MemtoReg), .ALUOp(ALUOp), .MemWrite(MemWrite), .ALUSrc(ALUSrc), .RegWrite(RegWrite));

	ALUcontrol ALUC0(.ALUOp(ALUOp), .Instruction(Inst[5:0]), .ALUInput());

	Fetch F0(.BranchMuxResult(BranchMux), .clk(clk), .reset(reset), .Jump(Jump), .inst(Inst), .currentAddr(Address));

	Decode D0(.rd_out1(mem1RD), .rd_out2(mem2RD), .sign_extend(signExnd), .instruction(Inst), .wr_data(WriteData), .RegDst(RegDest), .RegWrite(RegWrite));

	Execute E0(.instruct(Inst), .address(Address), .signExnd(signExnd), .mem1Read(mem1RD), .mem2Read(mem2RD), .ALUSrc(ALUSrc), .Branch(Branch), .FunctC(ALUIn), .ALUOp(ALUOp), .ALUResult(ALUResult), .MX2(BranchMux));

	MEM M0(.addr_in(), .wr_data(), .MemWrite(MemWrite), .MemRead(MemRead), .clk(clk), .rd_data());

	WriteBack WB0(.wr_data(WriteData), .alu_result(ALUResult), .rd_data(), .MemtoReg(MemtoReg));

endmodule
