`timescale 1ns/1ns
module pipo_tb();
    reg clk, rst;
    reg [3:0] din;
    wire [3:0] dout;
    pipo #(4) PIPO (
        .clk(clk),
        .rst(rst),
        .din(din),
        .dout(dout)
    );
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 10ns clock period
    end
    initial begin
        $monitor("Time=%0t clk=%b rst=%b din=%b dout=%b", 
                  $time, clk, rst, din, dout);
        rst = 1;
        din = 4'b0000;
        #10;
        rst = 0;
        din = 4'b1010;
        #10;
        din = 4'b1100;
        #10;
        din = 4'b0111;
        #10;
        rst = 1;
        #10;
        rst = 0;
        din = 4'b1001;
        #10;
        #20;
        $finish;
    end
endmodule

