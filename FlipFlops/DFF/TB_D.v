`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2025 08:43:48 PM
// Design Name: 
// Module Name: TB_D
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


module TB_D;
reg CLK=0,TD;
wire Q;

D uut(CLK,TD,Q);

always #5 CLK=~CLK;

initial begin 
 TD=0;
#20 TD=1;

#20 $finish;
end
endmodule
