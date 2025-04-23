module pri_enc_4_2_tb();
  reg [3:0] i;
  wire [1:0] y;
  integer a;
  pri_enc_4_2 ENC1(i, y);

  initial begin
    $monitor("Time = %0t i=%0b y=%0b", $time, i, y);
  end

  initial begin
    for (a = 1; a <= 8; a = a + 1) begin
      #5;
      i = a;
    end
    #5;
    $finish;
  end

endmodule
