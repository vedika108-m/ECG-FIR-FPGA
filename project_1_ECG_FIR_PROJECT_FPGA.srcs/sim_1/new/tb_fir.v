`timescale 1ns/1ps

module tb_fir;

reg clk;
reg signed [7:0] x;
wire signed [15:0] y;

fir_filter uut (
    .clk(clk),
    .x(x),
    .y(y)
);

always #5 clk = ~clk;

initial begin
    clk = 0;

    x=0; #10;
    x=10; #10;
    x=20; #10;
    x=-15; #10;
    x=25; #10;
    x=-5; #10;
    x=15; #10;
    x=0; #10;

    #100;
    $stop;
end

endmodule
