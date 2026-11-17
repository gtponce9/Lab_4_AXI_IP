`timescale 1ns / 1ps

module Multiplier_16_bit_tb;

   parameter CLK_PERIOD = 8;
   
    reg         clk = 1'b0;
    reg         rst_n = 1'b0;
    reg  [15:0] a   = 16'd0;
    reg  [15:0] b   = 16'd0;
    wire [31:0] prod;
    
    integer i = 0;


    Multiplier_16_bit uut (
        .clk (clk),
        .rst_n (rst_n),
        .a   (a),
        .b   (b),
        .prod(prod)
    );

    // 8 ns clock period (toggle every 4 ns)
    always #(CLK_PERIOD/2) clk = ~clk;
    
    // Hold reset for the first 5 clock cycles (40 ns), then release
    initial begin
        rst_n = 1'b0;
        repeat (5) @(posedge clk);
        rst_n <= 1'b1;
    end


    always begin
        wait (rst_n);
        for (i = 0; i <= 32; i = i + 1) begin
            a <= i;
            b <= i;
            @(posedge clk);
        end
        a <= 16'd0;
        b <= 16'd0;
        repeat (3) @(posedge clk);
        $finish;
    end

endmodule