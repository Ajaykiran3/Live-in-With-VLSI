module bcd_counter_tb();
	reg clk,rstn;
	wire [3:0] count;
bcd_counter BCD1(clk,rstn,count);
always #5 clk = ~clk;
initial begin
clk = 0;
rstn = 0;
end
initial begin
#10 rstn = 1;
#100 rstn = 0;
#20;
$finish;
end
initial begin
$monitor("Time = %0t Clk = %0b Rstn = %0b Count = %b",$time,clk,rstn,count);
end
endmodule


