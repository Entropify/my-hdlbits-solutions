module top_module (
    input clk,
    input reset,
    output OneHertz,
    output [2:0] c_enable
); //
    
    wire [3:0] Q0, Q1, Q2;

    bcdcount counter0 (.clk(clk), .reset(reset), .enable(c_enable[0]), .Q(Q0));
    bcdcount counter1 (.clk(clk), .reset(reset), .enable(c_enable[1]), .Q(Q1));
    bcdcount counter2 (.clk(clk), .reset(reset), .enable(c_enable[2]), .Q(Q2));
    
    assign c_enable = {(Q1 == 9 && Q0 == 9) ? 1'b1 : 1'b0, (Q0 == 9) ? 1'b1 : 1'b0, 1'b1};
    
    assign OneHertz = (Q2 == 9 && Q1 == 9 && Q0 == 9);

endmodule