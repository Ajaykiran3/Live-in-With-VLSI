module half_adder_g(a,b,sum,cout);

	input a,b;
	output sum,cout;

	xor X1(sum,a,b);
	and A1(cout,a,b);
endmodule
