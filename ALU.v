`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:45:24 06/10/2021 
// Design Name: 
// Module Name:    ALU 
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
module ALU(
    input [7:0] a,
    input [7:0] b,
    input m,
    output [7:0] out
    );
	 wire [7:0] add;
	 multibit_adder T1(a, b, add);
	 
	 assign out = (m==1) ? add:
					8'd0;


endmodule
