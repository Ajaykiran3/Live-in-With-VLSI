`timescale 1ns/1ps
module tb_parameterized_seq_detector;
    reg clk;
    reg rst;  
    reg serial_in_bit;
    wire detected;
    parameter LEN = 4;
    parameter SEQ_VAL = 4'b1010;
    parameterized_seq_detector #(LEN, SEQ_VAL) dut (
        .clk(clk),
        .rst(rst),
        .serial_in_bit(serial_in_bit),
        .detected(detected)
    );
    initial clk = 0;
    always #5 clk = ~clk;
    reg [63:0] test_pattern; 
    integer i;
    initial begin
        rst = 0;
        serial_in_bit = 0;
        #15 rst = 1;
        test_pattern = 64'hA5A5_5A5A_F0F0_0FF0_F00F_3333_5555_AAAA;
        for (i = 63; i >= 0; i = i - 1) begin
            @(posedge clk);
            serial_in_bit = test_pattern[i];
        end

        #20 $finish;
    end
    initial begin
        $monitor("Time=%0t rst=%b bin=%b detected=%b shift_reg=%b",
                 $time, rst, serial_in_bit, detected, dut.shift_reg);
    end
    initial begin
        $dumpfile("waveform.vcd");
        $dumpvars(0, tb_parameterized_seq_detector);
        $dumpvars(1, tb_parameterized_seq_detector.dut.shift_reg); // Explicit path for the shift register
    end


endmodule

