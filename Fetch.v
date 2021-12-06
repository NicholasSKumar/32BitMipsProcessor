module Fetch(
	input [31:0] BranchMuxResult,
	input clk, reset,Jump,
	output [31:0] inst,
	output [31:0] currentAddr);
	
	wire [31:0] current,instruction,previous,AdderResult;
	reg [31:0] check, bx1, ca1;

	PCAdder u2 (.address(currentAddr),.outaddress(AdderResult));
	Jump u4 (.previousPC4(AdderResult),.instruction(inst),.MuxResult(BranchMuxResult),.Jump(Jump),.currentPC4(previous));
	PC u1(.inaddr(previous),.clk(clk),.outaddr(currentAddr));
	instruction_mem u3 (.addr_in(check),.reset(reset),.instr_out(inst));

	//this may cause issues because we are going to have to hope the correct instruction
	//is being pulled because the timing may cause the wrong instction
	
	//always @(posedge clk) begin
	always@(posedge clk) begin
		check = currentAddr;
		if(reset == 1) begin
			bx1 = 32'b100;
			ca1 = 32'b0;
		end
	end
	
	assign BranchMuxResult = bx1;
	assign currentAddr = ca1;
endmodule
