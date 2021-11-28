module PC(
	input reg inaddr,
	input clk,
	output reg outaddr);
	
	always @(posedge clk) begin
		outaddr = inaddr;
	end
endmodule