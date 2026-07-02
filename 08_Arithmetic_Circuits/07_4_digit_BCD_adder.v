module top_module ( 
    input [15:0] a, b,
    input cin,
    output cout,
    output [15:0] sum );
    
    wire [2:0] icin;
    
    bcd_fadd b0(
        .a(a[3:0]),
        .b(b[3:0]),
        .cin(cin),
        .cout(icin[0]),
        .sum(sum[3:0])
    );
    
        bcd_fadd b1(
            .a(a[7:4]),
            .b(b[7:4]),
        .cin(icin[0]),
            .cout(icin[1]),
            .sum(sum[7:4])
    );
    
        bcd_fadd b2(
            .a(a[11:8]),
            .b(b[11:8]),
            .cin(icin[1]),
            .cout(icin[2]),
            .sum(sum[11:8])
    );
    
        bcd_fadd b3(
            .a(a[15:12]),
            .b(b[15:12]),
            .cin(icin[2]),
            .cout(cout),
            .sum(sum[15:12])
    );

endmodule