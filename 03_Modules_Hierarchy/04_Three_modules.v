module top_module ( input clk, input d, output q );
    
    wire q1d, q2d;
    
    my_dff inst1(clk, d, q1d);
    my_dff inst2(clk, q1d, q2d);
    my_dff inst3(clk, q2d, q);

endmodule
