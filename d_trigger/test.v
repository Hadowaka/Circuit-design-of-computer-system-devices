`timescale 1ns / 1ps

module test();
    reg [3:0] data;    // 4-битный вход данных
    reg clk;           // Тактовый сигнал
    wire [3:0] q;      // 4-битный выход

    // Создаем экземпляр тестируемого модуля
    d_trigger dut (
        .clk(clk),
        .data(data),
        .q(q)
    );

    // Генерация тактового сигнала
    initial begin
        clk = 0;
        forever #5 clk = ~clk;  // Период 10 нс
    end

    // Начало теста
    initial begin
        data = 4'b0000;
        
        // Тестирование различных значений данных
        // Меняем данные в середине такта 
        #7 data = 4'b0001;  // Изменение до фронта такта
        #10 data = 4'b0010; // 0010
        #10 data = 4'b0100; // 0100  
        #10 data = 4'b1000; // 1000
        #10 data = 4'b1111; // 1111
        #10 data = 4'b1010; // 1010
        #10 data = 4'b0101; // 0101
        #10 data = 4'b0000; // 0000
        
    end

    // Завершение симуляции
    initial begin
        #100 $finish;
    end

endmodule
