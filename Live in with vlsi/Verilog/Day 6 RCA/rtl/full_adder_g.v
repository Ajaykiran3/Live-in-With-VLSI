module full_adder_g(a,b,cin,sum,cout);

	input a,b,cin;
	output sum,cout;
	wire [2:0]w;

	xor X1(sum,a,b,cin);
	and A1(w[0],a,b);
	and A2(w[1],b,cin);
	and A3(w[2],cin,a);
	or O3(cout,w[0],w[1],w[2]);
endmodule
