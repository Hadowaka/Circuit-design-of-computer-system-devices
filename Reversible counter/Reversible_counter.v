`timescale 1ns / 1ps

module count #(
    parameter step = 1,
    parameter mod = 8
) (
    input clk,
    output reg [$clog2(mod)-1:0] out
);

initial
    out = mod - 1;

always @(posedge clk) begin
    // Отрицательный счетчик с циклическим переходом
    out = (out - step + mod) % mod;
end

endmodule
