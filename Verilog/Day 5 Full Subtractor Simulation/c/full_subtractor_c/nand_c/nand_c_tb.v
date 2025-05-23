module nand_c_tb();

    reg a, b;
    wire y;

    nand_c NA1(a, b, y);

    initial 
    begin
        $monitor("Time=%t,a=%b, b=%b, y=%b",$time, a, b, y);
    end

    initial
    begin
        #0;  {a, b} = 2'd0;
        #10; {a, b} = 2'd1;
        #10; {a, b} = 2'd2;
        #10; {a, b} = 2'd3;
        #10;
        $finish;
    end

endmodule

