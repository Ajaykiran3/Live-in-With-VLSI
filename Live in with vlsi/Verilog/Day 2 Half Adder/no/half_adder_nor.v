module half_adder_nor(a,b,sum,cout);

	input a,b;
	output sum,cout;
	wire [3:0]w;

	nor NO1(w[0],a,a);
	nor NO2(w[1],b,b);
	nor NO3(cout,w[0],w[1]);
	nor NO4(w[3],a,b);
	nor NO5(sum,w[3],cout);
endmodule
	
