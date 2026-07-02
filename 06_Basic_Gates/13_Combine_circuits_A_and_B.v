module top_module (input x, input y, output z);
    
    wire z1, z2, z3, z4;
    
    a a1(.x(x),
         .y(y),
         .z(z1));
    
    a a2(.x(x),
         .y(y),
         .z(z3));
    
    b b1(.x(x),
         .y(y),
         .z(z2));

    b b2(.x(x),
         .y(y),
         .z(z4));
    
    assign z = (z1 | z2) ^ (z3 & z4);

endmodule

module a (input x, input y, output z);
    assign z = (x^y) & x;
endmodule

module b ( input x, input y, output z );
    
    assign z = (x == y);

endmodule