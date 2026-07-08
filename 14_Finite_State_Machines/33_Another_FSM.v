module top_module (
    input clk,
    input resetn,    // active-low synchronous reset
    input x,
    input y,
    output f,
    output g
); 
    
    localparam a = 0, flashf = 1, pattern1 = 2, pattern10 = 3, hunt = 4, g1 = 5, g2 = 6, postg1 = 7, postg0 = 8;
    
    reg [3:0] state, next;
    
    
    always @(*) begin
        case(state)
            a: next = flashf;     
            flashf: next = hunt;       

            hunt: next = (x) ? pattern1 : hunt;       
            pattern1: next = (~x) ? pattern10 : pattern1;   
            pattern10: next = (x) ? g1 : hunt;       

            g1: next = (y) ? postg1 : g2;         
            g2: next = (y) ? postg1 : postg0;     

            postg1: next = postg1;     
            postg0: next = postg0;
            
        endcase
    end
    
    always @(posedge clk) begin
        
        if (~resetn) state <= a;
        
        else state <= next;
        
    end
    
    assign f = (state == flashf);

	assign g = (state == g1 || state == g2 || state == postg1);
    
endmodule