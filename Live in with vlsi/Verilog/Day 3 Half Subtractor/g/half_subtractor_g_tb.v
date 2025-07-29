module half_subtractor_tb_g();

	reg a,b;
	wire diff,bout;

	half_subtractor_g HS1(a,b,diff,bout);

	initial
	begin

	 #0; {a,b}= 2'd0;
	#10; {a,b}= 2'd1;
	#10; {a,b}= 2'd2;
	#10; {a,b}= 2'd3;
	#30;
	$finish;

	end

	initial 
	begin

	$monitor("Time=%t a=%b b=%b diff=%b bout=%b",$time,a,b,diff,bout);
	
	end
endmodule
	
