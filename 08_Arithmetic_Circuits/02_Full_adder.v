module top_module( 
    input a, b, cin,
    output cout, sum );
    
    assign cout = (a & b) | (cin & b) | (a & cin);
    assign sum = a ^ b ^ cin;

endmodule
