`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2025 06:33:30 PM
// Design Name: 
// Module Name: tb_SR
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


module tb_SR;

reg Clk=0,S,R;
wire Q,Q1;
SR uut(S,R,Clk,Q,Q1);

always #5 Clk=~Clk;
initial begin 
S=0; R=0;
#20 S=0; R=1;
#20 S=1; R=0;
#20 S=1; R=1;
#20 $finish;
end
endmodule
