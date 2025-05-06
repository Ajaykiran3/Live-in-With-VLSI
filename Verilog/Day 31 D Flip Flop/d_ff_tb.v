module d_ff_tb();
	reg clk,rst,d;
	wire q,q_bar;
	d_ff D_FF(clk,rst,d,q,q_bar);
	initial begin
	$monitor("Time = %0t Clk = %0b Rst = %0b D =%0b Q = %0b Q_bar = %0b",$time,clk,rst,d,q,q_bar);
	end
	initial begin
	clk=0;
	forever #2 clk=~clk;
	end
	initial begin
	d=1'b1;rst=1'b0;
	#10;
	d=1'b1;rst=1'b0;
	#10;
	d=1'b0;rst=1'b1;
	#10;
	d=1'b1;rst=1'b1;
	#10;
	d=1'b0;rst=1'b0;
	#10;
	d=1'b1;rst=1'b0;
	#10;
	d=1'b1;rst=1'b1;
	#10;
	$finish();
end
endmodule
