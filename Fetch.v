module Fetch(
	input [31:0] BranchMuxResult,
	input clk, reset,Jump,
	output [31:0] inst,
	output [31:0] currentAddr);
	
	wire [31:0] current,instruction,previous,AdderResult,bxx;
	reg [31:0] check, bx1, ca1;
		
	assign bxx = BranchMuxResult;

	PCAdder u2 (.address(BranchMuxResult),.outaddress(AdderResult));
	Jump u4 (.previousPC4(AdderResult),.instruction(inst),.MuxResult(bx1),.Jump(Jump),.clk(clk),.currentPC4(previous));
	PC u1(.inaddr(previous),.clk(clk),.outaddr(currentAddr));
	instruction_mem u3 (.addr_in(check),.reset(reset),.instr_out(inst));

	//this may cause issues because we are going to have to hope the correct instruction
	//is being pulled because the timing may cause the wrong instction
	
	//always @(posedge clk) begin
	always@(posedge clk) begin
		if(reset == 1) begin
			bx1 = 32'b100;
			check = currentAddr;
			//ca1 = 32'b0;
		end
		else begin
			check = currentAddr;
			bx1 = BranchMuxResult;
		end
		
	end
	
	//assign BranchMuxResult = bx1;
	//assign currentAddr = ca1;
endmodule
