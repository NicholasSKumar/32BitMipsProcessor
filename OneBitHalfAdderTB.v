module OneBitHalfAdderTB();
	reg A;
	reg B;
	wire sum;
	wire carry;

OneBitHalfAdder uut (.A,.B,.sum,.carry) ;

initial begin 
	A = 0;
	B = 0;
	#1
	A = 0;
	B = 1;
	#1
	A = 1;
	B = 0;
	#1
	A = 1;
	B = 1;
end 
endmodule
