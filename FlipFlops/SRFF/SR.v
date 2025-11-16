`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2025 06:22:59 PM
// Design Name: 
// Module Name: SR
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


module SR(
input s,r,clk,
output reg q,
output q1,sled,rled
    );
    assign q1=~q;
    
    always @(posedge clk) begin 
    case ({s,r})
    2'b00: q=q;
    2'b01: q=0;
    2'b10: q=1;
    2'b11: q=1'bx;
    default: q=1'bx;
    endcase
    end
    
    assign sled=s;
    assign rled=r;
      
endmodule
