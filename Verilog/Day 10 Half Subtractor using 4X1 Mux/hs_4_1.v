module hs_4_1(
	input a,b,
	output diff,bout);
	mux_4_1 Mux1(4'd6,{a,b},diff);
	mux_4_1 Mux2(4'd2,{a,b},bout);
endmodule

module mux_4_1(
	input [3:0]i,
	input [1:0]s,
	output y);
	assign y = (s[0]==0)?((s[1]==0)?i[0]:i[2]):((s[1]==1)?i[3]:i[1]);
endmodule

