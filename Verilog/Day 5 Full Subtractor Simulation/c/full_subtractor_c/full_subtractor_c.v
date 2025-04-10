module full_subtractor_c(a,b,bin,diff,bout);

	input a,b,bin;
	output diff,bout;
	wire [4:0]w;

	xor_c X1(a,b,w[0]);
	xor_c X2(w[0],bin,diff);
	and_c A1(~a,b,w[1]);
	and_c A2(b,bin,w[2]);
	and_c A3(bin,~a,w[3]);
	or_c O3(w[1],w[2],w[4]);
	or_c O4(w[3],w[4],bout);
endmodule
	
