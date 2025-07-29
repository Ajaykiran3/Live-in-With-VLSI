module fa_8_1(

	input a,b,cin,
	output sum,cout);

	mux_8_1 Mux1({8'b10010110},{a,b,cin},sum);
	mux_8_1 Mux2({8'b11101000},{a,b,cin},cout);
endmodule
