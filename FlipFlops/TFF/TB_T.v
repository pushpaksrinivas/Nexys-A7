`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2025 09:59:16 PM
// Design Name: 
// Module Name: TB_T
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


module TB_T;
reg Clk=0,TT;
wire Q;

T uut(Clk,TT,Q);

always #5 Clk=~Clk;

initial begin
TT=0;
#20 TT=1;
#20 $finish;
end
endmodule
