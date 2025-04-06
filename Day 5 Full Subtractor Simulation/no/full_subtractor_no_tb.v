module full_subtractor_no_tb();

	reg a,b,bin;
	wire diff,bout;

	full_subtractor_no FS1(a,b,bin,diff,bout);

	initial
	begin

	$monitor("Time=%t a=%b b=%b bin=%b diff=%b bout=%b",$time,a,b,bin,diff,bout);

	end
	initial
	begin

	 #0; {a,b,bin}=3'd0;
	#10; {a,b,bin}=3'd1;
	#10; {a,b,bin}=3'd2;
	#10; {a,b,bin}=3'd3;
	#10; {a,b,bin}=3'd4;
	#10; {a,b,bin}=3'd5;
	#10; {a,b,bin}=3'd6;
	#10; {a,b,bin}=3'd7;
	#10;
	$finish;

	end
endmodule
