module top_module(
    input clk,
    input load,
    input [255:0] data,
    output reg [255:0] q);  
    
    function [3:0] count;
    	input integer r, c;
        begin
            count = (get_cell(r-1,c-1) +
                                      get_cell(r,c-1) +
                                      get_cell(r+1,c-1) +
                                      get_cell(r-1,c) +
                                      get_cell(r+1,c) +
                                      get_cell(r-1,c+1) +
                                      get_cell(r,c+1) +
                                      get_cell(r+1,c+1));
        end
    endfunction
    
    function get_cell;
        input integer r, c;
        integer wrapped_r, wrapped_c;
        begin
            wrapped_r = (r == 16) ? 0 : (r == -1) ? 15 : r;
            wrapped_c = (c == 16) ? 0 : (c == -1) ? 15 : c;
            get_cell = q[wrapped_r * 16 + wrapped_c];
        end
    endfunction
    
    integer r;
    integer c;
    
    always @(posedge clk) begin
        if (load) q <= data;
        else begin
            
            for (r = 0; r <= 15; r = r + 1) begin
                for (c = 0; c <= 15; c = c + 1) begin
                    
                    case(count(r,c))
                        4'd0 : q[r*16 + c] <= 1'b0;
                        4'd1 : q[r*16 + c] <= 1'b0;
                        4'd2 : q[r*16 + c] <= get_cell(r,c);
                        4'd3 : q[r*16 + c] <= 1'b1;
                        4'd4 : q[r*16 + c] <= 1'b0;
                        4'd5 : q[r*16 + c] <= 1'b0;
                        4'd6 : q[r*16 + c] <= 1'b0;
                        4'd7 : q[r*16 + c] <= 1'b0;
                        4'd8 : q[r*16 + c] <= 1'b0;
                        default : q[r*16 + c] <= 1'b0;
                    endcase
                    
                end

                        
                
            end
            
            
        end
    end

endmodule
