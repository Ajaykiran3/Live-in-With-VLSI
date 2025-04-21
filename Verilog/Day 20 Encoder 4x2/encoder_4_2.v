module encoder_4_2(
	input [3:0]i,
	output reg [1:0]y);
	always@(i)
	begin
	case(i)
	4'd1:y=2'd0;
	4'd2:y=2'd1;
	4'd4:y=2'd2;
	4'd8:y=2'd3;
	endcase
	end
endmodule
