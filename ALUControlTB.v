`timescale 1ns/100ps

module ALUControlTB;

	reg [5:0] Instruction;
	reg [1:0] ALUOp;
	reg clk;
	wire [3:0] ALUInput;

ALUcontrol uut (.clk,.ALUOp,.Instruction,.ALUInput) ;

initial begin 
	clk = 0;
	Instruction = 5'b01000;
	ALUOp = 2'b00;
end 
	always #5 clk = ~clk;
initial begin 
	$monitor("ALUInput=%b", ALUInput);
end
endmodule

