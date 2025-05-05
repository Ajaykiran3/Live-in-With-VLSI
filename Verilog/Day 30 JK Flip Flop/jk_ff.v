module jk_ff(
	input clk,rst,j,k,
	output reg q,q_bar);
	always@(posedge clk or posedge rst) begin
	if(rst) q=1'b0;
	else begin
	case({j,k}) 
	2'd0:q<=q;
	2'd1:q<=1'b0;
	2'd2:q<=1'b1;
	2'd3:q<=~q;
	default:q<=1'b0;
	endcase
	assign q_bar = ~q;
	end
	end
endmodule
	
	
