module top_module (
    input clk,
    input resetn,    // active-low synchronous reset
    input [3:1] r,   // request
    output [3:1] g   // grant
); 
    
    localparam a = 0, b = 1, c = 2, d = 3;
    reg [1:0] state, next;
    
    wire r1, r2 ,r3;
    
    assign r1 = r[1];
    assign r2 = r[2];
    assign r3 = r[3];
    
    always @(*) begin
        case(state)
            a: begin
                if (~r1 && ~r2 && ~r3) next = a;
                else if (~r1 && ~r2 && r3) next = d;
                else if (~r1 && r2) next = c;
                else if (r1) next = b;
            end
            
            b: begin
                if (~r1) next = a;
                else if (r1) next = b;
            end
            
            c: begin
                if (~r2) next = a;
                else if (r2) next = c;
            end
            
            d: begin
                if (~r3) next = a;
                else if (r3) next = d;
            end
            
            
        endcase
    end
    
    always @(posedge clk) begin
        if (~resetn) state <= a;
        else state <= next;
    end
    
    assign g = {(state == d),(state == c), (state == b)};
    

endmodule
