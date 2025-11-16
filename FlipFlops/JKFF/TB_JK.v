`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2025 09:26:12 PM
// Design Name: 
// Module Name: TB_JK
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


module TB_JK;
reg Clk=0,J,K;
wire Q,Q1;

JK uut(Clk,J,K,Q,Q1);

always #5 Clk=~Clk;

initial begin
J=0; K=0;
#20 J=0; K=1;
#20 J=1; K=0;
#20 J=1; K=1;
#20 $finish;
end

endmodule
