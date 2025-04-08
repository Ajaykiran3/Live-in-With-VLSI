module mux_16_1(
	input [15:0] i,
	input [3:0] s,
	output reg y
);
	integer a;
	always @(i, s) begin
		for (a = 0; a < 16; a = a + 1) begin
			if (s == a) begin
				y = i[a];
			end
		end
	end
endmodule
		
