`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Gunavant
// 
// Create Date: 02.08.2023 06:32:50
// Design Name: 
// Module Name: siso
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


module siso(input clk,
            input sin,
            output sdo
            );
       wire d = sin;
       wire q1, q2, q3;
       d_flip_flop F1(clk, d, q1);
       d_flip_flop F2(clk, q1, q2);
       d_flip_flop F3(clk, q2, q3);
       d_flip_flop F4(clk, q3, sdo);
        
endmodule
