module full_subtractor_ha(a,b,bin,diff,bout);

	input a,b,bin;
	output diff,bout;
	wire [4:0]w;
	not N1(w[0],a);
	half_adder_g HA1(w[0],b,w[1],w[2]);
	half_adder_g HA2(w[1],bin,w[3],w[4]);
	not N2(diff,w[3]);
	or O1(bout,w[2],w[4]);
endmodule
