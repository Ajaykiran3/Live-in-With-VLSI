module n_bit_universal_shift_register_tb;
    parameter N = 4;   
    reg clk, rstn;
    reg [1:0] sel;
    reg [N-1:0] din;
    wire [N-1:0] out;  
    integer i;   
    n_bit_universal_shift_register #(N) USR (
        .clk(clk),
        .rstn(rstn),
        .sel(sel),
        .din(din),
        .out(out)
    );
    always #5 clk = ~clk;
    initial begin
        // Initialize inputs
        clk = 0;
        rstn = 0;
        sel = 2'b00;
        din = 4'b1010;
        #10 rstn = 1;  
        $monitor("Time = %0t | clk = %b | rstn = %b | sel = %b | din = %b | out = %b",$time, clk, rstn, sel, din, out);
        for (i = 0; i <= 3; i = i + 1) begin
            sel = i[1:0];
            #10;
        end
        #20 $finish;
    end
endmodule
