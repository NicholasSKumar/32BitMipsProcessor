module  instruction_mem(input [31:0] addr_in, output reg [31:0] instr_out);

	reg [7:0] my_memory [0:255];
	initial begin
		$readmemh("instructionmem.list", my_memory);
	end
	wire [7:0] readReg0,readReg1,readReg2,readReg3;
	assign readReg0 = addr_in;
	assign readReg1 = addr_in + 32'h1;
	assign readReg2 = addr_in + 32'h2;
	assign readReg3 = addr_in + 32'h3;
	always @(*) begin
		instr_out[31:0] = {my_memory[readReg0],my_memory[readReg1],my_memory[readReg2],my_memory[readReg3]};
	end
endmodule