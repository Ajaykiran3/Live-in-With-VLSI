module and_c(a,b,y);

	input a,b;
	output y;
	wire w;

	nand_c NA1(a,b,w);
	not_c NOT1(w,y);

endmodule
