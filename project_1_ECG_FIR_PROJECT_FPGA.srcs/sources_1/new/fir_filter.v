module fir_filter(
    input clk,
    input signed [7:0] x,
    output reg signed [15:0] y
);

reg signed [7:0] h [0:3];
reg signed [7:0] delay [0:3];
integer i;

initial begin
    h[0]=2; 
    h[1]=4; 
    h[2]=4; 
    h[3]=2;
end

always @(posedge clk) begin
    delay[0] <= x;
    for(i=1;i<4;i=i+1)
        delay[i] <= delay[i-1];

    y <= h[0]*delay[0] +
         h[1]*delay[1] +
         h[2]*delay[2] +
         h[3]*delay[3];
end

endmodule
