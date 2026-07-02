module top_module(
    input clk,
    input load,
    input [511:0] data,
    output reg [511:0] q
); 
    
    wire [511:0] L, C, R;
    
     assign L = {1'b0, q[511:1]};
     assign R = {q[510:0], 1'b0};
     assign C = q;
    
    always @(posedge clk) begin
        if (load) q <= data;
        else begin
            q <= (~L & C) | (~C & R) | (L & C & ~R);
        end
    end

endmodule
