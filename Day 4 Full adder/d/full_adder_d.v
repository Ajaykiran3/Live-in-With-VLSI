module full_adder_d(a,b,cin,sum,cout);

	input a,b,cin;
	output sum,cout;

	assign {cout,sum}={(a&b)|(b&cin)|(cin&a),a^b^cin};
endmodule
