module PC(
	input [31:0] inaddr,
	input clk,
	output [31:0] outaddr);
	
	reg [31:0] temp;
	
	always @(posedge clk ) begin
		temp = inaddr;
	end
	
	assign outaddr= temp;
endmodule