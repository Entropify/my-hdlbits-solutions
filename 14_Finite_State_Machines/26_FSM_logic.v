module top_module (
    input clk,
    input [2:0] y,
    input x,
    output Y0,
    output z
);

    localparam a = 0, b = 1, c = 2, d = 3, e = 4;
    reg [2:0] Y;
    
    always @(*) begin
        case(y)
            a: Y = (x) ? b : a;
            b: Y = (x) ? e : b;
            c: Y = (x) ? b : c;
            d: Y = (x) ? c : b;
            e: Y = (x) ? e : d;
        endcase
    end
    
    assign z = (y == d || y == e);
    assign Y0 = Y[0];
    
endmodule