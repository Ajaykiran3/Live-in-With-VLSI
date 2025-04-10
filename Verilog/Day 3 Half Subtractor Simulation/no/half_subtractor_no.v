module half_subtractor_no(a,b,diff,bout);

	input a,b;
	output diff,bout;
	wire [2:0]w;

	nor NO1(w[0],a,b);
	nor NO2(bout,w[0],a);
	nor NO3(w[1],b,w[0]);
	nor NO4(w[2],w[1],bout);
	nor NO5(diff,w[2],w[2]);
endmodule
