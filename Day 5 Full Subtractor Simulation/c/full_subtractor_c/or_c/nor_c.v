module nor_c(a,b,y);

	input a,b;
	output y;
	wire w;
	supply1 vdd;
	supply0 vss;

	pmos P1(w,vdd,a);
	pmos P2(y,w,b);
	nmos N1(y,vss,a);
	nmos N2(y,vss,b);
endmodule

	
