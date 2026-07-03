module top_module(
    input clk,
    input in,
    input reset,
    output out); //
	
    localparam A = 0, B = 1, C = 2, D = 3;
    // State transition logic
    
    reg [1:0] state, next;
    
    always @(*) begin
        case(state)
            A:
                begin
                    if(in) next = B;
                    else next = A;
                end
            B:
                begin
                    if(in) next = B;
                    else next = C;
                end
            C:
                begin
                    if(in) next = D;
                    else next = A;
                end
            D:
                begin
                    if(in) next = B;
                    else next = C;
                end
        endcase
    end
    

    // State flip-flops with synchronous reset
    always @(posedge clk) begin
        if (reset) state <= A;
        else state <= next;
    end
    // Output logic

    assign out = (state == D);
endmodule
