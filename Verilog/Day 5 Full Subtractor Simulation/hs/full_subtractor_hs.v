module full_subtractor_hs(a,b,bin,diff,bout);

	input a,b,bin;
	output diff,bout;
	wire [2:0]w;

	half_subtractor_g HS1(a,b,w[0],w[1]);
	half_subtractor_g HS2(w[0],bin,diff,w[2]);
	or O1(bout,w[1],w[2]);
endmodule
