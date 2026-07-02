module top_module (
    input clk,
    input w, R, E, L,
    output reg Q
);
    
    wire mux1;
    
    always @(posedge clk) begin
        Q <= L ? R : (E ? w : Q);
    end
    

endmodule
