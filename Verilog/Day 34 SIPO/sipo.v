module sipo #(parameter N = 4)(
    input clk,rst,direction,din,
    output reg [N-1:0] dout
);
    always @(posedge clk) begin
        if (rst) begin
            dout <= 0;
        end else begin
            if (direction) begin
                dout <= {dout[N-2:0], din};
            end else begin
                dout <= {din, dout[N-1:1]};
            end
        end
    end
endmodule

