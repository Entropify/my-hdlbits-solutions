module top_module (
    input clk,
    input reset,   // Synchronous reset
    input s,
    input w,
    output z
);
    
    localparam A = 0, B = 1;
    reg state, next;
    
    reg [2:0] clkcounter, onescounter;
    
    always @(*) begin
        case(state)
            A: next = (s) ? B : A;
            B: next = B;
        endcase
    end
    
    always @(posedge clk) begin
        if (reset) begin
            state <= A;
            clkcounter <= 0;
            onescounter <= 0;
        end
        else begin
            state <= next;
            
            if (state == B) begin

                if (clkcounter == 3) begin

                    clkcounter  <= 1;
                    onescounter <= {2'b0, w}; 
                end
                else begin

                    clkcounter  <= clkcounter + 1;
                    onescounter <= onescounter + w;
                end
            end
            else begin

                clkcounter  <= 0;
                onescounter <= 0;
            end
        end
    end
    

    assign z = (state == B) && (clkcounter == 3) && (onescounter == 2);

endmodule
