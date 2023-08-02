`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Gunavant
// 
// Create Date: 02.08.2023 06:39:01
// Design Name: 
// Module Name: tb_siso
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_siso;
    reg clk;
    reg sin;
    wire sdo;
    
    siso DUT(.clk(clk),
             .sin(sin),
             .sdo(sdo)
             );
    
    initial begin
        clk = 0;
        sin = 1;
        #10 sin = 0;
        #10 sin = 1;
        #10 sin = 0;
        #10 sin = 1;
        #5 $stop;
     end
     
     always #5 clk = ~clk;     
     
endmodule
