module n_bit_johnson_counter_tb;

parameter N = 4;
reg clk, reset_n;
wire [N-1:0] q;

n_bit_johnson_counter #(N) DUT (
    .clk(clk),
    .reset_n(reset_n),
    .q(q)
);
always #5 clk = ~clk;
initial begin
    $monitor("Time=%0t clk=%b reset_n=%b  q=%b", $time,clk, reset_n, q);
    clk = 0;
    reset_n = 0;   
    #10 reset_n = 1; 

    #100 $finish;
end

endmodule
