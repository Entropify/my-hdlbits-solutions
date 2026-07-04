module top_module(
    input clk,
    input areset,    // Freshly brainwashed Lemmings walk left.
    input bump_left,
    input bump_right,
    input ground,
    input dig,
    output walk_left,
    output walk_right,
    output aaah,
    output digging ); 

    localparam LEFT=0, RIGHT=1, FALL_L = 2, FALL_R = 3, DIG_L = 4, DIG_R = 5, SPLAT = 6;
    
    reg [3:0] state, next;
    
    reg [7:0] counter;

    always @(*) begin
        // State transition logic
        case (state)
            LEFT: begin
                if (~ground) next = FALL_L;
                else if (dig) next = DIG_L;
                else if (bump_left) next = RIGHT;
                else next = LEFT;
            end
            RIGHT: begin
                if (~ground) next = FALL_R;
                else if (dig) next = DIG_R;
                else if (bump_right) next = LEFT;
                else next = RIGHT;
            end
            FALL_L: begin
                if (ground && counter > 20) next = SPLAT;
                else if (ground && counter <= 20) next = LEFT;
                else next = FALL_L;
            end
            FALL_R: begin
                if (ground && counter > 20) next = SPLAT;
                else if (ground && counter <= 20) next = RIGHT;
                else next = FALL_R;
            end  
            DIG_L: begin
                if (~ground) next = FALL_L;
                else next = DIG_L;
            end  
            DIG_R: begin
                if (~ground) next = FALL_R;
                else next = DIG_R;
            end  
            SPLAT: next = SPLAT;
        endcase
    end

    always @(posedge clk, posedge areset) begin
        // State flip-flops with asynchronous reset
        if (areset) begin
            state <= LEFT;
            counter <= 0;
        end
        else begin
            state <= next;
            if (~ground) counter <= counter + 1;
            else if (ground) counter <= 0;
        end
    end


    assign walk_left = (state == LEFT);
    assign walk_right = (state == RIGHT);
    assign aaah = ((state == FALL_L) || (state == FALL_R));
    assign digging = ((state == DIG_L) || (state == DIG_R));

endmodule