module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    
    wire sel;
    wire [15:0] lower, upper;
    
    wire [15:0] upper0cin, upper1cin;
    
    add16 lower0(.a(a[15:0]),.b(b[15:0]),.cin(1'b0),.cout(sel),.sum(lower));
    
    add16 upper0(.a(a[31:16]),.b(b[31:16]),.cin(1'b0),.cout(),.sum(upper0cin));
    add16 upper1(.a(a[31:16]),.b(b[31:16]),.cin(1'b1),.cout(),.sum(upper1cin));
    
    always @(*) begin
        case (sel)
            1'b0: upper = upper0cin;
            1'b1: upper = upper1cin;
        endcase
    end
    
    assign sum = {upper, lower};

endmodule
