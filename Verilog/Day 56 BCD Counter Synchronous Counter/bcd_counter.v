module bcd_counter(
	input clk,rstn,
	output reg [3:0] count);
always@(posedge clk or negedge rstn) begin
	if(!rstn || count >= 4'b1001) count <= 4'b0000;
	else count <= count + 1;
end
endmodule
