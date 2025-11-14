`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2025 12:22:13 PM
// Design Name: 
// Module Name: ALU
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


module ALU(
input [7:0] a,b,
input [2:0] control,
output reg [7:0] result,
output reg zero,carry
    );
    
reg carryout;

always @(*) begin
    carryout=0;
    
    result=8'h0;
    
    case(control)
        3'b000:  {carryout, result} = a+b;
        3'b001:  {carryout, result} = a-b; 
        3'b010:  result = a&b;
        3'b011: result = a|b;
        3'b100: result = a^b;
        3'b101: result = ~(a|b);
        3'b110: result = a<<1;
        3'b111: result = a>>1;
        
        default: result = 8'h0;   
    endcase
    if(control==3'b000 || control==3'b001) begin
    carry <= carryout;
    end
    else begin carry=3'h0; end
    
    if (result == 8'h0) begin zero = 1; end
    else begin zero=0; end
   end
endmodule
