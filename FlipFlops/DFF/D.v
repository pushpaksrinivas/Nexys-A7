`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2025 08:15:09 PM
// Design Name: 
// Module Name: D
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


module D(
input clk,d,
output reg q,
output LED
    );
    
    always @(posedge clk) q=d;
    assign LED=d;

endmodule
