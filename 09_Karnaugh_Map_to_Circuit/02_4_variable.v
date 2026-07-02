module top_module(
    input a,
    input b,
    input c,
    input d,
    output out  ); 
    
    assign out = (d|~a|~b) & (c |~d | ~b) & (d | ~c | ~a) & (a | b | ~c | ~d );
endmodule
