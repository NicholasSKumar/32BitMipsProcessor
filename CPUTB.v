`timescale 1ns/100ps
module CPUTB();
	reg PCWrite, reset, clk;
	
	CPU uut (.PCWrite(PCWrite),.reset(reset),.clk(clk));
	initial begin 
		PCWrite = 0;
		reset = 1;
		clk = 0;
	#2
		reset = 0;
		PCWrite = 1;
	end
	always #1 clk = ~clk;

endmodule
	
