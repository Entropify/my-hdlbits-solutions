module top_module (
    input clk,
    input resetn,   // synchronous reset
    input in,
    output out);
    
    reg [3:0] shiftreg;
    
    assign out = shiftreg[0];
    
    always @(posedge clk) begin
        if (!resetn) shiftreg <= 4'b0;
        else begin
            shiftreg <= {in, shiftreg[3:1]};
        end
    end
            

endmodule
