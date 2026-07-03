module top_module (
    input clk,
    input reset,
    input [3:1] s,
    output fr3,
    output fr2,
    output fr1,
    output dfr
); 
    localparam bs1 = 0, s1s2r = 1, s1s2f = 2, s2s3r = 3, s2s3f = 4, as3 = 5;
    reg [3:0] state, next;

    always @(*) begin
        case(state)
            bs1: begin
                if (s[1]) next = s1s2r;
                else next = bs1;
            end
            s1s2r: begin
                if (s[2]) next = s2s3r;
                else if (s == 3'b0) next = bs1;
                else next = s1s2r;
            end
            s2s3r: begin
                if (s[3]) next = as3;
                else if (s == 3'b001) next = s1s2f;
                else next = s2s3r;
            end
            s1s2f: begin
                if (s[2]) next = s2s3r;
                else if (s == 3'b0) next = bs1;
                else next = s1s2f;
            end
            s2s3f: begin
                if (s[3]) next = as3;
                else if (s == 3'b001) next = s1s2f;
                else next = s2s3f;
            end
            as3: begin
                if (s == 3'b011) next = s2s3f;
                else next = as3;
            end
        endcase
        
        case(state)
            bs1: {fr3, fr2, fr1, dfr} = 4'b1111;
            s1s2r: {fr3, fr2, fr1, dfr} = 4'b0110;
            s1s2f: {fr3, fr2, fr1, dfr} = 4'b0111;
            s2s3r: {fr3, fr2, fr1, dfr} = 4'b0010;
            s2s3f: {fr3, fr2, fr1, dfr} = 4'b0011;
            as3: {fr3, fr2, fr1, dfr} = 4'b0000;
        endcase
    end
    
    always @(posedge clk) begin
        if (reset) state <= bs1;
        else state <= next;
    end
    
    
endmodule