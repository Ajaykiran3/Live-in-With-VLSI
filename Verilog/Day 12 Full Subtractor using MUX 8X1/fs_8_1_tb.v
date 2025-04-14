module fs_8_1_tb();

	reg a,b,bin;
	wire diff,bout;

	fs_8_1 FS1(a,b,bin,diff,bout);

	initial
	begin

	 #0; {a,b,bin}= 3'd0;
	#10; {a,b,bin}= 3'd1;
	#10; {a,b,bin}= 3'd2;
	#10; {a,b,bin}= 3'd3;
	#10; {a,b,bin}= 3'd4;
	#10; {a,b,bin}= 3'd5;
	#10; {a,b,bin}= 3'd6;
	#10; {a,b,bin}= 3'd7;
	#30;
	$finish;

	end

	initial 
	begin

	$monitor("Time=%t a=%b b=%b bin=%b diff=%b bout=%b",$time,a,b,bin,diff,bout);
	
	end
endmodule
	


