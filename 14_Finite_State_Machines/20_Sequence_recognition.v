module top_module(
    input clk,
    input reset,    // Synchronous reset
    input in,
    output disc,
    output flag,
    output err);
    
    localparam none = 0, one = 1, two = 2, three = 3, four = 4, five = 5, six = 6, sdisc = 7, sflag = 8, serr = 9;
    reg [3:0] state, next;
    
    always @(*) begin
        case(state)
            none:begin
                next = (in) ? one : none;
            end
            one:begin
                next = (in) ? two : none;
            end
            two:begin
                next = (in) ? three : none;
            end
            three:begin
                next = (in) ? four : none;
            end
            four:begin
                next = (in) ? five : none;
            end
            five:begin
                next = (in) ? six : sdisc;
            end
            six:begin
                next = (in) ? serr : sflag;
            end
            sflag:begin
                next = (in) ? one : none;
            end
            serr:begin
                next = (in) ? serr : none;
            end
            sdisc:begin
                next = (in) ? one : none;
            end
        endcase
    end
    
    always @(posedge clk) begin
        if (reset) state <= none;
        else state <= next;
    end
    
    assign disc = (state == sdisc);
    assign flag = (state == sflag);
    assign err = (state == serr);
    


endmodule
