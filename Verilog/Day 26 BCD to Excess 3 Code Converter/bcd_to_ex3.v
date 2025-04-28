module bcd_to_ex3(
	input [3:0]bcd,
	output [3:0]ex3);
	assign ex3 = bcd+4'b0011;
endmodule
