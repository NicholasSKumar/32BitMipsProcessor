module Fetch(
	input [31:0] previous,
	input clk, reset,
	output [31:0] inst,
	output [31:0] currentaddr);
	
	reg [31:0] current,instruction,check;
	PCAdder u2 (.address(current),.outaddress(currentaddr));
	PC u1(.inaddr(previous),.clk(clk),.outaddr(current));
	instruction_mem u3 (.addr_in(check),.reset(reset),.instr_out(inst));

	//this may cause issues because we are going to have to hope the correct instruction
	//is being pulled because the timing may cause the wrong instction
	
	//always @(posedge clk) begin
	always@(*) begin
		check = current;
	end

endmodule 
