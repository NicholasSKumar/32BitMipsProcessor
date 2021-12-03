module PC(
	input reg inaddr,
	input clk,
	input reset,
	output reg outaddr);
	
	always @(posedge clk or reset) begin
		if (reset ==1 )begin 
			outaddr = 32'b00000000000000000000000000000000;
		end
		else 
		outaddr = inaddr;
	end
endmodule