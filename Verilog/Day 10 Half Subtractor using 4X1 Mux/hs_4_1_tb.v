module hs_4_1_tb();

	reg a,b;
	wire diff,bout;

	hs_4_1 HS1(a,b,diff,bout);

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
	

