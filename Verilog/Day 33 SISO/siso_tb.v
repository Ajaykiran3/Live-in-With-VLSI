`timescale 1ns/1ns
module siso_tb();
    reg clk, rst, direction, sin;
    wire sout;
    siso SISO(clk, rst, direction, sin, sout);
    initial begin
        $monitor("Time = %0t Clk = %0b Rst = %0b Direction = %0b Sin = %0b Sout = %0b", $time, clk, rst, direction, sin, sout);
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
            sin = 1; #10;
            sin = 0; #10;
        end
        // Test right shift
        direction = 0;
        repeat (5) begin
            sin = 0; #10;
            sin = 1; #10;
        end
        #100;
        $finish;
    end
endmodule
