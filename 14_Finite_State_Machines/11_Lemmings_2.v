module top_module(
    input clk,
    input areset,    // Freshly brainwashed Lemmings walk left.
    input bump_left,
    input bump_right,
    input ground,
    output walk_left,
    output walk_right,
    output aaah ); 

    localparam LEFT=0, RIGHT=1, FALL_L = 2, FALL_R = 3;
    reg [3:0] state, next;
    

    always @(*) begin
        // State transition logic
        case (state)
            LEFT: begin
                if (~ground) next = FALL_L;
                else if (bump_left) next = RIGHT;
                else next = LEFT;
            end
            RIGHT: begin
                if (~ground) next = FALL_R;
                else if (bump_right) next = LEFT;
                else next = RIGHT;
            end
            FALL_L: begin
                if (ground) next = LEFT;
                else next = FALL_L;
            end
            FALL_R: begin
                if (ground) next = RIGHT;
                else next = FALL_R;
            end  
        endcase
    end

    always @(posedge clk, posedge areset) begin
        // State flip-flops with asynchronous reset
        if (areset) state <= LEFT;
        else state <= next;
    end


    assign walk_left = (state == LEFT);
    assign walk_right = (state == RIGHT);
    assign aaah = ((state == FALL_L) || (state == FALL_R));

endmodule