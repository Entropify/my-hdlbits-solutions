module top_module (
    input clk,
    input reset,        // Synchronous active-high reset
    output reg [3:0] q);
    
    always @(posedge clk) begin
        if (reset) q <= 1;
        else begin
            q <= q + 1;
            if (q == 10) q <= 1;
        end
    end

endmodule
