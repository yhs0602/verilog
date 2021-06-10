`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:30:21 06/10/2021 
// Design Name: 
// Module Name:    Control 
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
module Control(
    input [1:0] op,
    output Branch,
    output MemtoReg,
    output MemRead,
    output MemWrite,
    output ALUOp,
    output ALUSrc,
    output RegWrite,
	 output RegDst
    );
	 
	 assign arr = {RegDst, RegWrite, ALUSrc, Branch, MemRead, MemWrite, MemtoReg, ALUOp};
	 
	 assign arr = (op == 2'b00) ? 8'b11000001:
	              (op == 2'b01) ? 8'b01101010:
					  (op == 2'b10) ? 8'b00100100:
					  8'b00010000;

endmodule
