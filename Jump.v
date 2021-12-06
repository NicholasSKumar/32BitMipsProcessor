module Jump(
	input [31:0] previousPC4,
	input [31:0] instruction,
	input [31:0] MuxResult,
	input Jump,clk,
	output [31:0] currentPC4);
	
	wire [31:0] temp1,jumpAddr;
	reg [31:0] temp;
	
	ShiftLeftTwo u0 (.inaddr(instruction),.outaddr(temp1));
	assign jumpAddr = {previousPC4[31:28],temp1[27:0]};

	always@(clk) begin
		if (instruction ==32'b0) begin
			temp = 32'b00000000000000000000000000000100;
		end
		else begin
			temp = MuxResult;
		end
	end
			
	MuxJump u1 (.Jump(Jump),.ALUResult(jumpAddr),.OtherAddr(temp),.Addr(currentPC4));
		
endmodule 