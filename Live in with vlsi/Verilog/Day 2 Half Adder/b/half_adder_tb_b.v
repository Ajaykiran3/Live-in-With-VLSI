module half_adder_tb_b();

	reg a,b;
	wire sum,cout;

	half_adder_b HA1(a,b,sum,cout);

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

	$monitor("Time=%t a=%b b=%b sum=%b cout=%b",$time,a,b,sum,cout);
	
	end
endmodule
	
