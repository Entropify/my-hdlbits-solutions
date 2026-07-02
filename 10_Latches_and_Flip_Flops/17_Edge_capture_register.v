module top_module (
    input clk,
    input reset,
    input [31:0] in,
    output [31:0] out
);
    
    reg [31:0] prev;
    
    reg [31:0] store;
    
    always @(posedge clk) begin
        if (reset) store <= 32'h0;
        else store <= store | (prev & ~in);
        prev <= in;
    end
    
    assign out = store;

endmodule