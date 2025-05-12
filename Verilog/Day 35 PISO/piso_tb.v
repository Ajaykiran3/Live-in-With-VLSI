`timescale 1ns/1ns

module piso_tb();
    reg clk, rst, load, direction;
    reg [3:0] din;
    wire dout;
    piso #(4) PISO (
        .clk(clk),
        .rst(rst),
        .load(load),
        .direction(direction),
        .din(din),
        .dout(dout)
    );
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    initial begin
        $monitor("Time=%0t  clk=%b rst=%b load=%b dir=%b din=%b dout=%b", 
                  $time, clk, rst, load, direction, din, dout);
	rst = 1; load = 0; direction = 0; din = 4'b0000;
        #10;
	rst = 0;
	din = 4'b1011;
        direction = 0; 
        load = 1;
        #10;
        load = 0;
	repeat (4) #10;
	din = 4'b1101;
        direction = 1; 
        load = 1;
        #10;
        load = 0;
	repeat (4) #10;
	#20;
        $finish;
    end
endmodule
        
       
        
        
        
