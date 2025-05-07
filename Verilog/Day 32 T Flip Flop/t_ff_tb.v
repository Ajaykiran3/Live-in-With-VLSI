`timescale 1ns/1ns
module t_ff_tb();
	reg clk,rst,t;
	wire q,q_bar;
	t_ff T_FF(clk,rst,t,q,q_bar);
	initial begin
	$monitor("Time = %0t Clk = %0b rst = %0b t = %b q = %b q_bar = %b",$time,clk,rst,t,q,q_bar);
	end
	initial begin
	clk <= 0;
	repeat (20)
        #5 clk <= ~clk;
	end
	initial begin
	#5;rst = 0;t=0;
	#5;rst = 1;t=1;
	#5;rst = 1;t=0;
	#5;rst = 0;t=1;
	#100;
	$finish;
	end
endmodule