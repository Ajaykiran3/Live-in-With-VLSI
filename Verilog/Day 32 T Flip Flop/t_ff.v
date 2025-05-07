module t_ff(
	input clk,rst,t,
	output reg q,q_bar);
	always@(posedge clk or posedge rst) begin
	if(rst) {q_bar,q} <= {1,0};
	else begin
		if (t) q <= ~q;
		else q <= q;
	end
	q_bar = ~q; 
	end
	endmodule
	
