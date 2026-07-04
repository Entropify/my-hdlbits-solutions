module top_module(
    input clk,
    input in,
    input reset,    // Synchronous reset
    output [7:0] out_byte,
    output done
); //

    localparam idle = 0, data = 1, stop = 2, error = 3, success = 4;
    reg [3:0] state, next, counter;
    
    reg[7:0] datareg;
    
    wire odd;
    
    wire parity_reset = reset || (state != data);
    
    parity p1 (
        .clk(clk),
        .reset(parity_reset),
        .in(in),
        .odd(odd)
    );
    
    always @(*) begin
        case(state)
            idle:begin
                if (in == 0) next = data;
                else next = idle;
            end
            data:begin
                if (counter == 8) next = stop;
                else next = data;
            end
            stop:begin
                if (in == 1) begin
        			if (odd == 1) next = success; 
        			else next = idle; 
    			end 
                else begin
        			next = error;    
    		end
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
        if (reset) begin
            state <= idle;
            datareg <= 8'b0;
        end
        else begin
            state <= next;
            if (state == data) begin 
            counter <= counter + 1;
            	if (counter < 8) datareg <= {in, datareg[7:1]};
        	end
            else begin
                counter <= 0;
            end
        end
    end
    
    assign done = (state == success);
    assign out_byte = datareg;

endmodule

