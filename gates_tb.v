`timescale 1ns / 1ps
module gates_tb();
reg a,b;
wire y1, y2, y3, y4, y5, y6;

gates gates_inst(.a(a), .b(b), 
                 .y1(y1), .y2(y2),
                 .y3(y3), .y4(y4),
                 .y5(y5), .y6(y6));
initial
begin
    #10 a=0;b=0;
    #10 a=0;b=1;
    #10 a=1;b=0;
    #10 a=1;b=1;
    #10 a=1'bX;b=1'bX;
end
endmodule
