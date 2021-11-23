module ThirtyTwoBitSubTB();
	reg [31:0]A;
	reg [31:0]B;
	reg cin;
	wire [31:0] Diff;
	
	ThirtyTwoBitSub uut(.A,.B,.cin,.Diff);

	initial begin
	assign A = 32'b01010100101100111101010011000011;
	assign B = 32'b00101101011101010000000101110111; 
	assign cin = 1;
	end

endmodule
