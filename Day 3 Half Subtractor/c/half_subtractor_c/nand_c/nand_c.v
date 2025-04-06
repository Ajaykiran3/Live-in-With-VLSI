module nand_c(a,b,y);

	input a,b;
	output y;
	supply1 vdd;
	supply0 vss;
	wire w;
	pmos P1(y,vdd,a);
	pmos P2(y,vdd,b);
	nmos N1(w,vss,b);
	nmos N2(y,w,a);

endmodule

