module top_module (
    input [3:1] y,
    input w,
    output Y2);
    
    wire state_B = (y == 3'b001);
    wire state_C = (y == 3'b010);
    wire state_E = (y == 3'b100);
    wire state_F = (y == 3'b101);

    assign Y2 = (state_B & ~w) | (state_F & ~w) | // C
        		(state_B &  w) | (state_C &  w) | (state_E & w) | (state_F & w); // D

endmodule