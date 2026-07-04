module top_module(
    input clk,
    input in,
    input reset,    // Synchronous reset
    output done
); 
    
    localparam idle = 0, data = 1, stop = 2, error = 3, success = 4;
    reg [3:0] state, next, counter;
    
    
    always @(*) begin
        case(state)
            idle:begin
                if (in == 0) next = data;
                else next = idle;
            end
            data:begin
                if (counter == 7) next = stop;
                else next = data;
            end
            stop:begin
                if (in == 1) next = success;
            	else next = error; 
            end
            error:begin
                if (in == 0) next = error;
            	else next = idle; 
            end
            success:begin
                if (in == 0) next = data;
            	else next = idle; 
            end
        endcase
    end
    
    always @(posedge clk) begin
        if (reset) state <= idle;
        else begin
            state <= next;
            if (state == data) counter <= counter + 1;
            else counter <= 0;
        end
    end
    
    assign done = (state == success);

endmodule
