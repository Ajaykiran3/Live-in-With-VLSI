module not_c_tb();

	reg a;
	wire y;

	not_c DUT(a,y);

	initial 
	begin

	$monitor("a=%b,y=%b",a,y);

	end

	initial 
	begin
	
	#0;a=0;
	#10;a=1;
	#10;
	$finish;
	end
endmodule
