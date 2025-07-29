module half_subtractor_c(a,b,diff,bout);

	input a,b;
	output diff,bout;
	
	xor_c X1(a,b,diff);
	not_c N1(a,w);
	and_c A1(w,b,bout);
endmodule

	
