module top_module (
    input clk,
    input areset,
    input x,
    output reg z
); 

    localparam before1 = 0, at1 = 1, post1_1 = 2, post1_0 = 3;
    reg [3:0] state, next;
    
    
    always @(*) begin 
        case(state)
        before1: begin
            next = (x) ? at1 : before1;
            z = 0;
        end
        at1: begin
            next = (x) ? post1_1 : post1_0;
            z = 1;
        end
        post1_1: begin
            next = (x) ? post1_1 : post1_0;
            z = 0;
        end
        post1_0: begin
            next = (x) ? post1_1 : post1_0;
            z = 1;
        end
        endcase
    end
    
    always @(posedge clk, posedge areset) begin
        if (areset) state <= before1;
		else state <= next;        
    end
    
endmodule
