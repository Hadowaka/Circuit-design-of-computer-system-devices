`timescale 1ns / 1ps

module test();
    reg clk;
    reg a;
    reg b;
    wire out;

    XOR dut (
        .clk(clk),
        .a(a),
        .b(b),
        .out(out)
    );

    // Генерация тактового сигнала
    initial begin
        clk = 0;
        forever #5 clk = ~clk;  // Период 10 нс
    end

    // Тестовые стимулы
    initial begin
        // Инициализация входов
        a = 0;
        b = 0;
        
        // Тестирование всех комбинаций входов
        #10 a = 0; b = 0;  // 0 XOR 0 = 0
        #10 a = 0; b = 1;  // 0 XOR 1 = 1
        #10 a = 1; b = 0;  // 1 XOR 0 = 1
        #10 a = 1; b = 1;  // 1 XOR 1 = 0
        
    end

    // Завершение симуляции
    initial begin
        #100 $finish;
    end

endmodule
