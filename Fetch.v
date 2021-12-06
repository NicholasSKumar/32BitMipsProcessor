module Fetch(
	input [31:0] NextAddress, ExecuteMux,
	input clk, reset,Jump,PCWrite,
	output [31:0] inst,
	output [31:0] ifOut);
	
	wire [31:0] current,instruction,previous,PC4,bxx,PCOut,JumpStuff,JumpInst;
	reg [31:0] check, bx1, ca1;
		

	assign JumpInst = inst;
	PC u1(.inaddr(NextAddress),.clk(clk),.outaddr(PCOut),.reset(reset),.PCWrite(PCWrite));
	PCAdder u2 (.address(PCOut),.outaddress(JumpStuff));
	instruction_mem u3 (.addr_in(PCOut),.instr_out(inst));
	Jump u4 (.previousPC4(JumpStuff),.instruction(JumpInst),.BranchMuxResult(ExecuteMux),.Jump(Jump),.currentPC4(ifOut));
	
	//this may cause issues because we are going to have to hope the correct instruction
	//is being pulled because the timing may cause the wrong instction

endmodule
