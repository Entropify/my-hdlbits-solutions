module top_module(
    input clk,
    input reset,
    input ena,
    output reg pm,
    output reg [7:0] hh,
    output reg [7:0] mm,
    output reg [7:0] ss); 
    

    
    wire hour_ena = ena && (ss == 8'h59) && (mm == 8'h59);
    
    
    counter9 cs1 (.clk(clk), .reset(reset), .ena(ena), .q(ss[3:0]));
    counter5 cs10 (.clk(clk), .reset(reset), .ena(ena && ss[3:0] == 9), .q(ss[7:4]));
    counter9 cm1 (.clk(clk), .reset(reset), .ena(ena && ss[3:0] == 9 && ss[7:4] == 5), .q(mm[3:0]));
    counter5 cm10 (.clk(clk), .reset(reset), .ena(ena && ss[3:0] == 9 && ss[7:4] == 5 && mm[3:0] == 9), .q(mm[7:4]));
    
    always @(posedge clk) begin
        if (reset) begin
            hh <= 8'h12;
            pm <= 0;
        end
        else if (hour_ena) begin
            
            if (hh == 8'h12) begin
            	hh <= 8'h01;
        	end 
            else if (hh == 8'h11) begin
                pm <= ~pm;
                hh <= 8'h12;
            end
        	else if (hh[3:0] == 9) begin
            	hh[3:0] <= 0;
            	hh[7:4] <= 1;
        	end 
        	else begin
            	hh[3:0] <= hh[3:0] + 1;
        	end
        end
	end
    
            
    
    
    
    

endmodule


module counter9 (
    input clk,
    input reset,        
    input ena,
    output reg [3:0] q);
    
    always @(posedge clk) begin
        if (reset) q <= 0;
        else if (ena) begin
            q <= q + 1;
            if (q == 9) q <= 0;
        end
    end

endmodule

module counter5 (
    input clk,
    input reset,        
    input ena,
    output reg [3:0] q);
    
    always @(posedge clk) begin
        if (reset) q <= 0;
        else if (ena) begin
            q <= q + 1;
            if (q == 5) q <= 0;
        end
    end

endmodule



