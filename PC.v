`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:06:18 06/10/2021 
// Design Name: 
// Module Name:    PC 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module PC(
    input[7:0] in,
    input clk,
    output [7:0] out
    );
	reg[7:0] pcval;
	initial begin 
		 pcval = 0;
	end
	
	always @(posedge clk) begin
		pcval		= in;
	end
	assign out = pcval;

endmodule
