`timescale 1ns/1ns
module sipo_tb();
    reg clk, rst, direction, din;
    wire [3:0] dout;
    sipo SIPO(clk, rst, direction, din, dout);
    initial begin
        $monitor("Time = %0t Clk = %0b Rst = %0b Direction = %0b Din = %0b Dout = %0b", $time, clk, rst, direction, din, dout);
    end
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    initial begin
        // Apply reset
        rst = 1;
        #10;
        rst = 0;
        // Test left shift
        direction = 1;
        repeat (5) begin
            din = 1; #10;
            din = 0; #10;
        end
        // Test right shift
        direction = 0;
        repeat (5) begin
            din = 0; #10;
            din = 1; #10;
        end
        #100;
        $finish;
    end
endmodule
