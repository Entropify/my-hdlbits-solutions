module top_module (
    input clk,
    input reset,   // Synchronous reset
    input x,
    output z
);
    localparam a = 0, b = 1, c = 2, d = 3, e = 4;
    reg [2:0] y, Y;
    
    always @(*) begin
        case(y)
            a: Y = (x) ? b : a;
            b: Y = (x) ? e : b;
            c: Y = (x) ? b : c;
            d: Y = (x) ? c : b;
            e: Y = (x) ? e : d;
        endcase
    end
    
    always @(posedge clk) begin
        if (reset) y <= 3'b000;
        else y <= Y;
    end

    assign z = (y == d || y == e);
    
endmodule
