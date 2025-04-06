module xor_c(a,b,y);

	input a,b;
	output y;
	wire w;

	xnor_c XN1(a,b,w);
	not_c NOT1(w,y);
endmodule
