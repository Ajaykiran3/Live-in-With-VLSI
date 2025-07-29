module full_adder_na(a,b,cin,sum,cout);

	input a,b,cin;
	output 	sum,cout;
	wire [6:0]w;

	nand NA1(w[0],a,b);
	nand NA2(w[1],a,w[0]);
	nand NA3(w[2],b,w[0]);
	nand NA4(w[3],w[1],w[2]);
	nand NA5(w[4],w[3],cin);
	nand NA6(w[5],w[3],w[4]);
	nand NA7(w[6],cin,w[4]);
	nand NA8(sum,w[5],w[6]);
	nand NA9(cout,w[0],w[4]);
endmodule
	
