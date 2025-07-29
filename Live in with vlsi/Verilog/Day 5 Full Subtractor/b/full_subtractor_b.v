module full_subtractor_b(a,b,bin,diff,bout);

	input a,b,bin;
	output reg diff,bout;

	always@(a,b,bin)
	case({a,b,bin})
	3'd0:{bout,diff}=2'd0;
	3'd1:{bout,diff}=2'd3;
	3'd2:{bout,diff}=2'd3;
	3'd3:{bout,diff}=2'd2;
	3'd4:{bout,diff}=2'd1;
	3'd5:{bout,diff}=2'd0;
	3'd6:{bout,diff}=2'd0;
	3'd7:{bout,diff}=2'd3;
	default:{bout,diff}=2'dx;
	endcase
endmodule
