module gray_to_bin(
	input [3:0]gray,
	output [3:0]bin);
	assign bin = {gray[3],bin[3]^ gray[2],bin[2]^gray[1],bin[1]^gray[0]};
endmodule