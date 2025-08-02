module n_bit_universal_shift_register #(parameter N = 4)(
    input clk,
    input rstn,
    input [1:0] sel,
    input [N-1:0] din,
    output reg [N-1:0] out
);

always @(posedge clk or negedge rstn) begin
    if (!rstn)
        out <= {N{1'b0}};
    else begin
        case (sel)
            2'b00: out <= out;                             
            2'b01: out <= {out[N-2:0], din[0]};           
            2'b10: out <= {din[N-1], out[N-1:1]};         
            2'b11: out <= din;                             
            default: out <= out;
        endcase
    end
end

endmodule

