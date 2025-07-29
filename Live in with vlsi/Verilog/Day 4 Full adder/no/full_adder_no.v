module full_adder_no(a,b,cin,sum,cout);

	input a,b,cin;
	output sum,cout;
	wire [6:0]w;

	nor NO1(w[0],a,b);
	nor NO2(w[1],a,w[0]);
	nor NO3(w[2],b,w[0]);
	nor NO4(w[3],w[1],w[2]);
	nor NO5(w[4],cin,w[3]);
	nor NO6(w[5],cin,w[4]);
	nor NO7(w[6],w[4],w[3]);
	nor NO8(sum,w[5],w[6]);
	nor NO9(cout,w[0],w[4]);
endmodule
	
