module comparator(
	input a, b,
	output reg e, g, l
);
	always @(a, b)
	begin
		if (a == b) begin {e, g, l} = 3'b100; end
		else if (a > b) begin {e, g, l} = 3'b010; end
		else if (a < b) begin {e, g, l} = 3'b001; end
	end
endmodule
