module siso(
    input clk, rst, direction, sin,
    output reg sout);
    parameter N = 4;
    reg [N-1:0] temp;

    always @(posedge clk) begin
        if (rst) begin
            temp <= 0;
        end else begin
            if (direction) begin
                temp <= {temp[N-2:0], sin}; 
                sout <= temp[N-1];           
            end else begin
                temp <= {sin, temp[N-1:1]}; 
                sout <= temp[0];             
            end
        end
    end
endmodule
