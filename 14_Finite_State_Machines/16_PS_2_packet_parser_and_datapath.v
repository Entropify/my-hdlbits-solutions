module top_module(
    input clk,
    input [7:0] in,
    input reset,    // Synchronous reset
    output [23:0] out_bytes,
    output done); //

    // FSM from fsm_ps2
    reg [3:0] state, next;
    localparam b1 = 0, b2 = 1, b3 = 2, d = 3;
    
    always @(*) begin
        case(state)
            b1: begin 
                next = (in[3]) ? b2 : b1;
            end
            b2: begin
                next = b3;
            end
            b3: begin
                next = d;
            end
            d: begin
                next = (in[3]) ? b2 : b1;
            end
        endcase
        
            
    	// New: Datapath to store incoming bytes.
        
        
        
    end

    // State flip-flops (sequential)
    
    always @(posedge clk) begin
        if (reset) begin
            state <= b1;
            out_bytes <= 24'b0;
        end
        else begin 
            state <= next;
            case(state)
            b1: begin 
                if (in[3]) out_bytes[23:16] <= in;
            end
            b2: begin
                out_bytes[15:8] <= in;
            end
            b3: begin
                out_bytes[7:0] <= in;
            end
            d: begin
                if (in[3]) out_bytes[23:16] <= in;
            end
        endcase
        end
    end
 
    // Output logic
    
    assign done = (state == d);

    
    

endmodule