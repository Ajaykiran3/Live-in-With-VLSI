module half_subtractor_g(a,b,diff,bout);

	input a,b;
	output diff,bout;
	wire w;

	xor X1(diff,a,b);
	not N1(w,a);
	and A1(bout,w,b);

endmodule
