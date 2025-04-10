module rca_tb();

	reg [3:0] a, b;
	reg cin;
	wire [3:0] sum;
	wire cout;
	integer i, j, k;

	rca RCA1(
		.a(a),
		.b(b),
		.cin(cin),
		.sum(sum),
		.cout(cout)
	);

	initial
	begin
		$monitor("Time=%0t, a=%0d, b=%0d, cin=%0d, cout=%0d, sum=%0d", $time, a, b, cin, cout, sum);
	end

	initial
	begin
		for(i=0;i<16;i=i+1)begin
			a=i;
			for(j=0;j<16;j=j+1)begin
				b=j;
				for(k=0;k<2;k=k+1)begin
					cin=k;
					#5;
				end
			end
		end
	end

endmodule
