module mux_8_1(
	input [7:0] i,
	input [2:0] s,
	output reg y
);
	integer a;
	always @(i, s) begin
		for (a = 0; a < 8; a = a + 1) begin
			if (s == a) begin
				y = i[a];
			end
		end
	end
endmodule
		

