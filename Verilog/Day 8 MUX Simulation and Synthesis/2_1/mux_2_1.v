module mux_2_1(
	input [1:0]i,
	input s,
	output y);
	assign y = s?i[1]:i[0];
endmodule