module mux_8_1_tb();
	reg [7:0]i;
	reg [2:0]s;
	wire y;
	integer a,b;
	mux_8_1 MUX8_1(i,s,y);
	initial begin
	$monitor("Time=%0t,i=%0b,s=%0b,y=%0b",$time,i,s,y);
	end
	initial begin
	for(a=0;a<256;a=a+1)begin
		i=a;
		for(b=0;b<8;b=b+1)begin
			s=b;
			#5;
		end
	end
	end
endmodule


