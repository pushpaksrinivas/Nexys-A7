`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2025 09:18:21 PM
// Design Name: 
// Module Name: TB_ALU
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


module TB_ALU;
reg [7:0] tba,tbb;
reg [2:0] tcont;
wire [7:0] tres;
wire cout,zf;

ALU uut(.a(tba), .b(tbb), .result(tres), .control(tcont), .carry(cout), .zero(zf));
initial begin
tba=8'hAA; tbb=8'h60; tcont=3'h0;

#10 tba=8'hAA; tbb=8'h11; tcont=3'h0;
#10 tba=8'h05; tbb=8'h01; tcont=3'h1;
#10 tba=8'h05; tbb=8'h01; tcont=3'h2;
#10 tba=8'hAA; tbb=8'h11; tcont=3'h3;
#10 tba=8'hAA; tbb=8'h11; tcont=3'h4;
#10 tba=8'hAA; tbb=8'h11; tcont=3'h5;
#10 tba=8'hAA; tbb=8'h11; tcont=3'h6;
#10 tba=8'hAA; tbb=8'h11; tcont=3'h7;
#10 $finish;
end
endmodule
