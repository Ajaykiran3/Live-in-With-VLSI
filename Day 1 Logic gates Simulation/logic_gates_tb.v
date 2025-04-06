module logic_gates_tb();

reg a, b;
wire [9:0] y;

logic_gates DUT(a, b, y); // DUT instantiation

initial begin
    #0; a = 0; b = 0; // Test case 1
    #10; a = 0; b = 1; // Test case 2
    #10; a = 1; b = 0; // Test case 3
    #10; a = 1; b = 1; // Test case 4
    #30;
    $finish;
end

initial begin
    $monitor("Time=%0t a=%b b=%b y=%b", $time, a, b, y);
end

endmodule
