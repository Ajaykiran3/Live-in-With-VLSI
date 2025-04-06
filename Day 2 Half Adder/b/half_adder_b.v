module half_adder_b(a,b,sum,cout);

	input a,b;
	output reg sum,cout;

	always@(*)
	case({a,b})
	2'd0:begin {cout,sum} = 2'd0; end
	2'd1:begin {cout,sum} = 2'd1; end
	2'd2:begin {cout,sum} = 2'd1; end
	2'd3:begin {cout,sum} = 2'd2; end
	endcase
endmodule
	
	
