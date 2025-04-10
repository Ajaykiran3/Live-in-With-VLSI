module mux_2_1_tb();

	reg [1:0]i;
	reg s;
	wire y;
	integer a,b;

	mux_2_1 MUX2to1(i,s,y);

	initial begin
	$monitor("i=%0b,s=%0b,y=%0b",i,s,y);
	end
	initial begin
	for(a=0;a<4;a=a+1)begin
		i=a;
		for(b=0;b<2;b=b+1)begin
			s=b;
			#5;
		end
	end
	end
endmodule
