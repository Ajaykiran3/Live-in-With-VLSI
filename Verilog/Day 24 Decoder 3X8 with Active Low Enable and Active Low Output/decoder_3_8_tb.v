module decoder_3_8_tb();
	reg e;
	reg [2:0]i;
	wire [7:0]y;
	integer a,b;
	decoder_3_8 DEC1(e,i,y);
	initial begin
	$monitor("Time=%0t e=%0b i=%0b y=%0b",$time,e,i,y);
	end
	initial begin
	for(b=0;b<=1;b=b+1) begin
		e=b;
		for(a=0;a<=7;a=a+1) begin
			#5;
			i=a;
		end
	end
	#5;
	$finish;
	end
endmodule
