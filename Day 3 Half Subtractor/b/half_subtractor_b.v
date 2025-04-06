module half_subtractor_b(a,b,diff,bout);

	input a,b;
	output reg diff,bout;

	always@(a or b)
	case({a,b})
	2'd0:{bout,diff}=2'd0;
	2'd1:{bout,diff}=2'd3;
	2'd2:{bout,diff}=2'd1;
	2'd3:{bout,diff}=2'd0;
	endcase
endmodule

