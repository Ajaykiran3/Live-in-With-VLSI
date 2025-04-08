module mux_16_1_tb();
	reg [15:0]i;
	reg [3:0]s;
	wire y;
	integer a,b;
	mux_16_1 MUX16_1(i,s,y);
	initial begin
	$monitor("Time=%0t,i=%0b,s=%0b,y=%0b",$time,i,s,y);
	end
	initial begin
	for(a=0;a<65536;a=a+1)begin
		i=a;
		for(b=0;b<16;b=b+1)begin
			s=b;
			#5;
		end
	end
	end
endmodule

