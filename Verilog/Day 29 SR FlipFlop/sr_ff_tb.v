module sr_ff_tb();
	reg clk,s,r,rst;
	wire q,q_bar;
	sr_ff SR_FF(clk,s,r,rst,q,q_bar);
	initial
	begin
	$monitor("Time = %0t Clk = %0b RST = %0b S = %0b R = %0b Q = %0b Q_bar = %0b",$time,clk,rst,s,r,q,q_bar);
	end
	initial begin
	clk=1;
	forever #2 
		clk = ~clk;
	end
	initial
	begin
	{s,r,rst}=3'd2;
	#5;
	{s,r,rst}=3'd1;
	#5;
	{s,r,rst}=3'd6;
	#5;
	{s,r,rst}=3'd7;
	#5;
	$finish;
	end
endmodule
