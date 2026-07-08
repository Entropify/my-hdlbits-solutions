module top_module (
    input clk,
    input areset,
    input x,
    output z
); 
    
    localparam A = 0, B = 1;
    reg [1:0] state, next;
    
    always @(*) begin
        next[A] = state[A] && !x;
        next[B] = (state[A] && x) || (state[B] && x) || (state[B] && !x);
    end
    
    
    always @(posedge clk, posedge areset) begin
        if (areset) state <= 2'b01;
        else state <= next;
    end
    
    assign z = (state[A] && x) || (state[B] && !x); 

endmodule
