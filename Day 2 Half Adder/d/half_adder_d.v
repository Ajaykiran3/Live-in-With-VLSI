module half_adder_d(a,b,sum,cout);

	input a,b;
	output sum,cout;

	assign {cout,sum} = {a&b,a^b};
endmodule
