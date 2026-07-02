module top_module (
    input clk,
    input reset,   // Synchronous active-high reset
    output [3:1] ena,
    output [15:0] q);
    
    counter c0 (.clk(clk), .reset(reset), .q(q[3:0]), .ena(1));
    counter c1 (.clk(clk), .reset(reset), .q(q[7:4]), .ena(ena[1]));
    counter c2 (.clk(clk), .reset(reset), .q(q[11:8]), .ena(ena[2]));
    counter c3 (.clk(clk), .reset(reset), .q(q[15:12]), .ena(ena[3]));
    
    assign ena = {(q[11:8] == 9 && q[7:4] == 9 && q[3:0] == 9),(q[7:4] == 9 && q[3:0] == 9),(q[3:0] == 9)};
    
    
    

endmodule

module counter (
    input clk,
    input reset,        // Synchronous active-high reset
    input ena,
    output [3:0] q);
    
    always @(posedge clk) begin
        if (reset) q <= 0;
        else if (ena) begin
            q <= q + 1;
            if (q == 9) q <= 0;
        end
    end

endmodule
