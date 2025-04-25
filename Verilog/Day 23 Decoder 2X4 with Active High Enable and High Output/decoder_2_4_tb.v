module decoder_2_4_tb();
	reg e;
	reg [1:0]i;
	wire [3:0]y;
	integer a,b;
	decoder_2_4 DEC1(e,i,y);
	initial begin
	$monitor("Time=%0t e=%0b i=%0b y=%0b",$time,e,i,y);
	end
	initial begin
	for(b=0;b<=1;b=b+1) begin
		e=b;
		for(a=0;a<=3;a=a+1) begin
			#5;
			i=a;
		end
	end
	#5;
	$finish;
	end
endmodule
