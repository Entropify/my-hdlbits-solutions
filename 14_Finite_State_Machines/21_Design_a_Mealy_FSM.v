module top_module (
    input clk,
    input aresetn,    // Asynchronous active-low reset
    input x,
    output z ); 
    
    localparam first = 0, second = 1, third = 2;
    reg [3:0] state, next;
    
    always @(*) begin
        case(state)
            first:begin
                next = (x) ? second : first;
            end
            second:begin
                next = (x) ? second : third;
            end
            third:begin
                next = (x) ? second : first;
            end
        endcase
    end
    
    always @(posedge clk, negedge aresetn) begin
        if (~aresetn) state <= first;
        else state <= next;
    end
            
    assign z = (state == third) && (x == 1);

endmodule
