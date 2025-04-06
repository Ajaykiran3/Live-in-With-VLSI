module full_adder_ha(a,b,cin,sum,cout);

	input a,b,cin;
	output sum,cout;
	wire [2:0]w;

	half_adder_g HA1(a,b,w[0],w[1]);
	half_adder_g HA2(w[0],cin,sum,w[2]);
	or O1(cout,w[1],w[2]);
endmodule
