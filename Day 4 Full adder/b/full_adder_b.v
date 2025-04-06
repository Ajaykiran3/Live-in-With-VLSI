module full_adder_b(a,b,cin,sum,cout);

	input a,b,cin;
	output reg sum,cout;

	always@(a,b,cin)
	case({a,b,cin})
	3'd0:{cout,sum}=2'd0;
	3'd1:{cout,sum}=2'd1;
	3'd2:{cout,sum}=2'd1;
	3'd3:{cout,sum}=2'd2;
	3'd4:{cout,sum}=2'd1;
	3'd5:{cout,sum}=2'd2;
	3'd6:{cout,sum}=2'd2;
	3'd7:{cout,sum}=2'd3;
	default:{cout,sum}=2'dx;
	endcase
endmodule
