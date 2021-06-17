`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:51:24 06/11/2021 
// Design Name: 
// Module Name:    Mux2 
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
module Mux2(
    input[1:0] a,
    input[1:0] b,
    input s,
    output[1:0] out
    );
	 
	 assign out = (s==1'b0) ? a : b;
	 


endmodule
