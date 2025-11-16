`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2025 09:20:54 PM
// Design Name: 
// Module Name: JK
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


module JK(
input clk,j,k,
output reg q,
output q1,jled,kled
    );
   assign q1=~q;
   
   always @(posedge clk) begin
   case ({j,k})
   2'b00: q=q;
   2'b01: q=0;
   2'b10: q=1;
   2'b11: q=~q;
   endcase
   end
   
   assign jled=j;
   assign kled=k;
    
endmodule
