module parameterized_seq_detector #(
    parameter LEN_OF_SEQ = 4,
    parameter [LEN_OF_SEQ-1:0] SEQ = 4'b1010
)(
    input clk,
    input rst,  
    input serial_in_bit,
    output reg detected
);

reg [LEN_OF_SEQ-1:0] shift_reg;

always @(posedge clk) begin
    if (!rst) begin 
        shift_reg <= 0;
        detected <= 0;
    end else begin
        shift_reg <= {shift_reg[LEN_OF_SEQ-2:0], serial_in_bit};
        if ({shift_reg[LEN_OF_SEQ-2:0], serial_in_bit} == SEQ)
            detected <= 1;
        else
            detected <= 0;
    end
end

endmodule

