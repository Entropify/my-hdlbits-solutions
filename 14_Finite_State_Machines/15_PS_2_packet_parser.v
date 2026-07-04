module top_module(
    input clk,
    input [7:0] in,
    input reset,    // Synchronous reset
    output done); //

    // State transition logic (combinational)
    
    reg [3:0] state, next;
    localparam b1 = 0, b2 = 1, b3 = 2, d = 3;
    
    always @(*) begin
        case(state)
            b1: next = (in[3]) ? b2 : b1;
            b2: next = b3;
            b3: next = d;
            d: next = (in[3]) ? b2 : b1;
        endcase
        
    end

    // State flip-flops (sequential)
    
    always @(posedge clk) begin
        if (reset) state <= b1;
        else state <= next;
    end
 
    // Output logic
    
    assign done = (state == d);

endmodule
