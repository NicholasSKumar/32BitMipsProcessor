module ThirtyTwoBitSub(
	input [31:0] B,
	input [31:0] A,
	input cin,
	output [31:0] Diff);
	
	//cin = 1 to be subtraction
	wire [31:0] Ba;
	
	wire [31:0] ecin;
	wire cout;
	wire overFlow;
	
	//[31:0] array of cins --> bitwise XORed with B --> this bitwise XORed value then will go into B 
	// if Cin is 1 then B is being subtracted, if Cin is 0 then it is being added 
	// this module will now determine if we are adding or subtracting 
	
	assign ecin = {{(31){cin}},cin};
	
	assign Ba = B^ecin;

	//keep in mind that this can be implmeneted to be the adder/subtractor module. If we were to 
	//take the cin, make it a 32 bit array of the same value, xor it with B and feed it into the Cin
	//of the adder instantiation, we can control if it adds or subtracts all from one set of inputs. 
	
	
	ThirtyTwoBitAdder u0 (.A(A),.B(Ba),.cin(cin),.sum(Diff),.cout(cout),.overFlow(overFlow));
	
endmodule
