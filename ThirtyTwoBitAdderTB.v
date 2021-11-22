module ThirtyTwoBitAdderTB();
	reg [31:0]A;
	reg [31:0]B;
	reg cin;
	wire [31:0] sum;
	wire cout;
	wire overFlow;
	
	ThirtyTwoBitAdder uut (.A,.B,.cin,.sum,.cout,.overFlow);

	initial begin
	assign cin = 0;
	assign A = 32'b01010100101100111101010011000011;
	assign B = 32'b00101101011101010000000101110111; 
	end

endmodule
	
