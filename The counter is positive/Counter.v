`timescale 1ns / 1ps
module count #(
    parameter step = 1,
    parameter mod = 8
) (
    input clk,
    output reg [$clog2(mod)-1:0] out
);

initial
    out = 0;

always @(posedge clk) begin
    // Счет вперед
    if (out + step >= mod)
        out = 0;
    else
        out = out + step;
end

endmodule
