`timescale 1ns/100ps
module CPU();
	
///////////////////////////CONTROL CONNECTIONS/////////////////////////////////////////////////////
	wire RegDest, Jump, Branch, MemRead, MemtoReg, MemWrite, ALUSrc, RegWrite;
	wire [1:0] ALUOp;
	wire [3:0] FunctC;

////////////////////////////WIRE CONNECTIONS///////////////////////////////////////////////////////
	wire [31:0] Inst,BranchMux,Address;
	wire [31:0] mem1RD,mem2RD;
	wire [31:0] signExnd,ALUResult;
	wire [31:0] MemoryRead,WriteData;
	reg reset,clk;


/////////////////////////////INITIAL BLOCKS///////////////////////////////////////////////////////
	initial begin
		reset = 1;
		#1
		reset = 0;
		clk = 1;
	end

	assign BranchMux = 32'b0;
	
	always #5 clk = ~clk;
	
	
	
///////////////////////////INSTANCIATIONS////////////////////////////////////////////////////////
	//Done
	Control C0(.Inst(Inst[31:26]), .RegDest(RegDest), .Jump(Jump), .Branch(Branch), .MemRead(MemRead), .MemtoReg(MemtoReg), .ALUOp(ALUOp), .MemWrite(MemWrite), .ALUSrc(ALUSrc), .RegWrite(RegWrite));
	//Done
	ALUcontrol ALUC0(.ALUOp(ALUOp), .Instruction(Inst[5:0]), .ALUInput(FunctC));
	//Done
	Fetch F0(.BranchMuxResult(BranchMux), .clk(clk), .reset(reset), .Jump(Jump), .inst(Inst), .currentAddr(Address));
	//Done
	Decode D0(.rd_out1(mem1RD), .rd_out2(mem2RD), .sign_extend(signExnd), .instruction(Inst), .wr_data(WriteData), .RegDst(RegDest), .RegWrite(RegWrite));
	//Done
	Execute E0(.instruct(Inst), .address(Address), .signExnd(signExnd), .mem1Read(mem1RD), .mem2Read(mem2RD), .ALUSrc(ALUSrc), .Branch(Branch), .FunctC(FunctC), .ALUOp(ALUOp), .ALUResult(ALUResult), .MX2(BranchMux));
	//Done
	MEM M0(.addr_in(ALUResult), .wr_data(mem2RD), .MemWrite(MemWrite), .MemRead(MemRead), .clk(clk), .rd_data(MemoryRead));
	//Done
	WriteBack WB0(.wr_data(WriteData), .alu_result(ALUResult), .rd_data(MemoryRead), .MemtoReg(MemtoReg));

endmodule
