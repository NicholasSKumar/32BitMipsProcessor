module FullAdderTB();
	reg A;
	reg B;
	reg cin;
	wire sum;
	wire cout;

FullAdder uut (.A,.B,.cin,.sum,.cout) ;

initial begin 
	A = 0;
	B = 0;
	cin = 0;
	#1
	A = 0;
	B = 1;
	cin  = 1;
	#1
	A = 1;
	B = 0;
	cin = 0;
	#1
	A = 1;
	B = 1;
	cin = 1;
end 
endmodule
