module syn_counter #(parameter N =4)(
	input clk,rst,up_down,
	output reg [N-1:0]count);
	always@(posedge clk) begin
	if(rst) count <= 0;
	else begin 
	if(up_down) count <= count+1;
	else count <= count - 1;
	end
	end
endmodule
