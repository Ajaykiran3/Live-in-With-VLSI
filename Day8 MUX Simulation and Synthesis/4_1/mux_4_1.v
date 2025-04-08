module mux_4_1(
	input [3:0]i,
	input [1:0]s,
	output y);
	assign y = (s[0]==0)?((s[1]==0)?i[0]:i[2]):((s[1]==1)?i[3]:i[1]);
endmodule
