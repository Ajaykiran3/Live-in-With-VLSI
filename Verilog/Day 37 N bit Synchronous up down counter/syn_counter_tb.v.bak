`timescale 1ns/1ps
module syn_counter_tb;
    parameter N = 4;
    reg clk,rst,up_down;
    wire [N-1:0] count;
    syn_counter #(N) Syn_count(clk,rst,up_down,count);
    initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end
    initial begin
        rst = 1;
        #10;
        rst = 0;
        #10;
        up_down = 1;
        repeat (5) #10;
        up_down = 0;
        repeat (7) #10;
        rst = 1;
        #10;
        rst = 0;
        #10;
        up_down = 1;
        repeat (10) #10;
        #10;
        $finish;
    end
    initial begin
        $monitor("Time = %0t, rst = %b, up_down = %b, count = %b", $time, rst, up_down, count);
    end
endmodule
