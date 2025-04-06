module rca(

	input [3:0]a,b,
	input cin,
	output [3:0]sum,
	output cout);

	wire [2:0]c;

	full_adder_d FA1(a[0],b[0],cin,sum[0],c[0]);
	full_adder_d FA2(a[1],b[1],c[0],sum[1],c[1]);
	full_adder_d FA3(a[2],b[2],c[1],sum[2],c[2]);
	full_adder_d FA4(a[3],b[3],c[2],sum[3],cout);

endmodule

module full_adder_d(a,b,cin,sum,cout);

	input a,b,cin;
	output sum,cout;

	assign {cout,sum}={(a&b)|(b&cin)|(cin&a),a^b^cin};
endmodule

	
