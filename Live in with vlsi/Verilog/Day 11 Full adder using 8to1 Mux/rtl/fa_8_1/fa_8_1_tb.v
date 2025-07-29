module fa_8_1_tb();

	reg a,b,cin;
	wire sum,cout;

	fa_8_1 FA1(a,b,cin,sum,cout);

	initial
	begin

	 #0; {a,b,cin}= 3'd0;
	#10; {a,b,cin}= 3'd1;
	#10; {a,b,cin}= 3'd2;
	#10; {a,b,cin}= 3'd3;
	#10; {a,b,cin}= 3'd4;
	#10; {a,b,cin}= 3'd5;
	#10; {a,b,cin}= 3'd6;
	#10; {a,b,cin}= 3'd7;
	#30;
	$finish;

	end

	initial 
	begin

	$monitor("Time=%t a=%b b=%b cin=%b sum=%b cout=%b",$time,a,b,cin,sum,cout);
	
	end
endmodule
	


