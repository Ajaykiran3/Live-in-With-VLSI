module pipo #(
    parameter N = 4
)(
    input clk,
    input rst,
    input [N-1:0] din,
    output reg [N-1:0] dout
);
    always @(posedge clk) begin
        if (rst)
            dout <= 0;
        else
            dout <= din;
    end
endmodule

