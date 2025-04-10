module not_c(a,y);

	input a;
	output y;
	supply1 vdd;
	supply0 vss;

	pmos P1(y,vdd,a);
	nmos N1(y,vss,a);
endmodule

