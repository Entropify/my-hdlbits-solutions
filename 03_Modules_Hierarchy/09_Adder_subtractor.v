module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    
    wire [31:0] xorout;
    wire cout;
    wire [15:0] lower, upper;
    
    assign xorout = b ^ {32{sub}};
    
    
     add16 a1(.a(a[15:0]),
              .b(xorout[15:0]),
              .cin(sub),
              .cout(cout),
              .sum(lower));
    add16 a2(.a(a[31:16]),
             .b(xorout[31:16]),
             .cin(cout),
              .cout(),
             .sum(upper));
    
    assign sum = {upper,lower};

endmodule
