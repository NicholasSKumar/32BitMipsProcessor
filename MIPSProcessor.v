module MIPSProcessor(CLOCK_50);
	input CLOCK_50;
	
	CPU( 	.PCWrite(),
			.reset(),
			.clk(CLOCK_50));
endmodule