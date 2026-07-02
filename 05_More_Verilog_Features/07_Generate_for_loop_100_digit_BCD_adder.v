module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );
    
    wire [98:0] icout;
    
    bcd_fadd bfa0(
        .a(a[0 +: 4]),
        .b(b[0 +: 4]),
        .cin(cin),
        .cout(icout[0]),
        .sum(sum[0 +: 4])
    );
    
    genvar i;
    generate
        for (i = 1; i < 99; i += 1)begin: adder_inst
            bcd_fadd bfas(
                .a(a[i*4 +: 4]),
                .b(b[i*4 +: 4]),
                .cin(icout[i-1]),
                .cout(icout[i]),
        		.sum(sum[i*4 +: 4])
    );
        end
    endgenerate
    
    bcd_fadd bfa99(
        .a(a[399:396]),
        .b(b[399:396]),
        .cin(icout[98]),
        .cout(cout),
        .sum(sum[399:396])
    );
    

endmodule
