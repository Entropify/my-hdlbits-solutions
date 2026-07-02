module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);//
    
    wire [2:0] carry;
    
    genvar i;
    generate
        for (i = 0; i <= 1; i = i + 1) begin: adder16_loop
            add16 a16(
                .a(a[i*16+:16]),
                .b(b[i*16+:16]),
                .cin(carry[i]),
                .sum(sum[i*16+:16]),
                .cout(carry[i+1])
            );
        end
    endgenerate
    
    assign carry[0] = 2'b00;

endmodule

module add1 ( input a, input b, input cin,   output sum, output cout );

// Full adder module here
    assign sum = a ^ b ^ cin;
    assign cout = (a&b) | (a&cin) | (b&cin);

endmodule
