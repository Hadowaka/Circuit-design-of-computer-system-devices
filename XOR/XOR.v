module XOR (
    input wire clk,
    input wire a,
    input wire b,
    output reg out
);

always @(posedge clk) begin
    out <= a ^ b; 
end

endmodule
