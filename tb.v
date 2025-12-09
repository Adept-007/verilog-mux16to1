`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.12.2025 16:29:42
// Design Name: 
// Module Name: tb
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


module tb();
reg [15:0]in;
reg [3:0]sel;
wire out;
mux16to1 dut(.in(in),.sel(sel),.out(out));
initial
begin
 in=16'b0001001000110100;
for(sel=0;sel<16;sel=sel+1) begin
#5;
 $display("%t | in=%h | sel=%d | out=%b",$time,in,sel,out);
end
#5 $finish;

end
endmodule
