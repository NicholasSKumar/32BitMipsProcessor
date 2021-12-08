module Fetch(
	input [31:0] NextAddress/*This is the same as ifOut*/, ExecuteMux,
	input clk, reset,Jump,PCWrite,
	output [31:0] inst,
	output [31:0] ifOut);
	
	wire [31:0] current,instruction,previous,PC4,bxx,PCOut,JumpStuff,JumpInst;
	reg [31:0] check, bx1, ca1;
		
	PC u1(.inaddr(ExecuteMux),.clk(clk),.outaddr(PCOut),.reset(reset),.PCWrite(PCWrite));
	PCAdder u2 (.address(PCOut),.outaddress(ifOut));
	instruction_mem u3 (.addr_in(PCOut),.instr_out(inst));
		
endmodule
