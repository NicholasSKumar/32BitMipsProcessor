module ExecuteTB();
	reg [31:0] instruct;
	reg [31:0] address;
	reg [31:0] signExnd;
	reg [31:0] mem1Read,mem2Read;
	reg ALUSrc, Branch;
	reg [3:0] FunctC;
	reg [1:0] ALUOp;
	wire [31:0] ALUResult;
	wire [31:0] MX2;
	
	Execute u0 (.instruct,.address,.signExnd,.mem1Read,.mem2Read,.ALUSrc,.Branch,.FunctC,.ALUOp,.ALUResult,.MX2);

	initial begin 
		instruct = 32'b01000000000000000000000000000000; //ad
		address =  32'b00000000000000000000000000000100;
		signExnd = 32'b00000000000000000000000101110111;
		mem1Read = 32'b01010100101100111101010011000011;
		mem2Read = 32'b00101101011101010000000101110111;
		ALUSrc = 1; 
		Branch = 0;
		FunctC = 4'b0010 ;
		ALUOp = 2'b01;
		#5
		instruct = 32'b01000000000000000000000000000000; //ad
		address =  32'b00000000000000000000000000000100;
		signExnd = 32'b00000000000000000000000101110111;
		mem1Read = 32'b01010100101100111101010011000011;
		mem2Read = 32'b00101101011101010000000101110111;
		ALUSrc = 0; 
		Branch = 0;
		FunctC = 4'b0010 ;
		ALUOp = 2'b01;
		#5
		instruct = 32'b00010000000000000000000000001010; //branch inst
		address =  32'b00000000000000000000000000000100; //current addr
		signExnd = 32'b00000000000000000000000000001010; // ext addr
		mem1Read = 32'b00101101011101010000000101110111; //same #
		mem2Read = 32'b00101101011101010000000101110111; // same #
		ALUSrc = 0; 
		Branch = 1;
		FunctC = 4'b0100 ;
		ALUOp = 2'b00;
	end
	
endmodule
