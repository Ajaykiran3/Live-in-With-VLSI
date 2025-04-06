module half_subtractor_d(a,b,diff,bout);

	input a,b;
	output diff,bout;

	assign {bout,diff} = {(~a)&b,a^b};
endmodule
