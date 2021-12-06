module PC(
	input [31:0] inaddr,
	input clk,reset,
	input PCWrite,
	output reg [31:0] outaddr);
	
	reg [31:0] temp;
	
	always @(posedge clk ) begin
		if (reset == 1'b1) begin
			outaddr <= 32'b0;
		end
		else begin
			if (PCWrite ==1) begin
				outaddr <= inaddr;
			end
		end
	end
endmodule