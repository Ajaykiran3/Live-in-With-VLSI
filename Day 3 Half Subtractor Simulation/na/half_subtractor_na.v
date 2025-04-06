module half_subtractor_na(a,b,diff,bout);

	input a,b;
	output diff,bout;
	wire[2:0]w;

	nand NA1(w[0],a,b);
	nand NA2(w[1],w[0],a);
	nand NA3(w[2],w[0],b);
	nand NA4(diff,w[1],w[2]);
	nand NA5(bout,w[2],w[2]);
endmodule
