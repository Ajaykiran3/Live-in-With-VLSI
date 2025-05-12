module piso #(
    parameter N = 4
)(
    input clk,rst,direction,load,           
    input [N-1:0] din,
    output reg dout
);

    reg [N-1:0] shifted_din;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            shifted_din <= 0;
            dout <= 0;
        end else if (load) begin
            shifted_din <= din; 
        end else begin
            if (direction) begin
                dout <= shifted_din[N-1];          
                shifted_din <= shifted_din << 1;    
            end else begin
                dout <= shifted_din[0];             
                shifted_din <= shifted_din >> 1;    
            end
        end
    end

endmodule

