module logic_gates(a,b,y);

input a,b;
output [9:0]y;

assign y[0] = a & b; //And Gate
assign y[1] = a | b; //Or Gate
assign y[2] = a ^ b; //EX-or Gate
assign y[3] = ~(a & b); //Nand Gate
assign y[4] = ~(a | b); //Nor Gate
assign y[5] = ~(a ^ b); //Ex-Nor Gate
assign y[6] = ~a; //Not of a
assign y[7] = ~b; //Not of b
assign y[8] = a; //Buffer of a
assign y[9] = b; //Buffer of b

endmodule
