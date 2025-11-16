`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2025 09:51:27 PM
// Design Name: 
// Module Name: T
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


module T(
input clk,t,
output reg q=0,
output led
    );
    always @(posedge clk) q=~q;
    assign led=t;
endmodule
