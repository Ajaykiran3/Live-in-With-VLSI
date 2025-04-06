module half_adder_c(a,b,sum,cout);

	input a,b;
	output sum,cout;
	
	xor_c X1(a,b,sum);
	and_c A1(a,b,cout);
endmodule

	
