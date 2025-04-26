module decoder_3_8(
	input e,
	input [2:0]i,
	output reg [7:0]y);
	always@(i,e)
	begin
	if (!e) begin
	case(i)
	3'd0:y=8'b11111110;
	3'd1:y=8'b11111101;
	3'd2:y=8'b11111011;
	3'd3:y=8'b11110111;
	3'd4:y=8'b11101111;
	3'd5:y=8'b11011111;
	3'd6:y=8'b10111111;
	3'd7:y=8'b11110111;
	default:y=8'bxxxxxxxx;
	endcase
	end
	else y=8'bxxxxxxxx;
	end
endmodule
