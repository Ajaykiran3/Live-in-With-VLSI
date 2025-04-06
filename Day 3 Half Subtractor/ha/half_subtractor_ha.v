module half_subtractor_ha(a,b,diff,bout);

	input a,b;
	output diff,bout;
	wire [1:0]w;

	not N1(w[0],a);
        half_adder_g HA1(w[0],b,w[1],bout);
	not N2(diff,w[1]);
endmodule
	
