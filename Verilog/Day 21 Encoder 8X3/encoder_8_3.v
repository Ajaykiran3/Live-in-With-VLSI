module encoder_8_3(
	input [7:0]i,
	output reg [2:0]y);
	always@(*) begin
	case(i)
	8'd1:y=3'd0;
	8'd2:y=3'd1;
	8'd4:y=3'd2;
	8'd8:y=3'd3;
	8'd16:y=3'd4;
	8'd32:y=3'd5;
	8'd64:y=3'd6;
	8'd128:y=3'd7;
	default:y=3'bx;
	endcase
	end
endmodule
