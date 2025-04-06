module or_c(a,b,y);

	input a,b;
	output y;
	wire w;

	nor_c NO1(a,b,w);
	not_c N1(w,y);
endmodule
