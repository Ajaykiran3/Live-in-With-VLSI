module full_subtractor_g(a,b,bin,diff,bout);

	input a,b,bin;
	output diff,bout;
	wire [3:0]w;

	xor X1(diff,a,b,bin);
	not N1(w[0],a);
	and A1(w[1],w[0],b);
	and A2(w[2],b,bin);
	and A3(w[3],w[0],bin);
	or O3(bout,w[1],w[2],w[3]);
endmodule
