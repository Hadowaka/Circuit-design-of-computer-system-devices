`timescale 1ns / 1ps

module test();
    reg clk;
    wire [2:0] out;  // 3 бита т.к. mod=8 → $clog2(8)=3

    // Создаем экземпляр тестируемого модуля
    count #(
        .step(1),
        .mod(8)
    ) dut (
        .clk(clk),
        .out(out)
    );

    // Генерация тактового сигнала
    initial begin
        clk = 0;
        forever #5 clk = ~clk;  // Период 10 нс
    end

endmodule
