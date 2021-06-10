`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:43:11 06/10/2021 
// Design Name: 
// Module Name:    mux22 
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
module mux22(
    input [1:0] a,
    input [1:0] b,
    input s,
    output [1:0] o
    );

	 
	 assign o = (s==0) ? a:
					  b;
endmodule
