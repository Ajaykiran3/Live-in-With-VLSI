module sr_ff(
	input s,r,clk,rst,
	output reg q,q_bar);
	always@(posedge clk or posedge rst)
	begin
	if(!rst) begin
	case({s,r})
	2'd0:q<=q;
	2'd1:q<=1'b0;
	2'd2:q<=1'b1;
	2'd3:q<=1'bx;
	default:q<=1'bx;
	endcase
	end
	else begin
	q=1'b0;
	end
	assign q_bar = ~q;
	end
endmodule
	
