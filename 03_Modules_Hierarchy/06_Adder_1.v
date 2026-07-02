module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    
    wire [15:0] lower, upper;
    wire carry;
    
    add16 loweradder(
        .a(a[15:0]),
        .b(b[15:0]),
        .cin(),
        .sum(lower[15:0]),
        .cout(carry)
    );
    
    add16 upperadder(
        .a(a[31:16]),
        .b(b[31:16]),
        .cin(carry),
        .sum(upper[15:0]),
        .cout()
    );
    
    assign sum = {upper, lower};
    

endmodule
