`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:03:46 06/15/2021 
// Design Name: 
// Module Name:    testtest 
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
module testtest(
    input clk50,
    input reset,
    output [6:0] seg_ten,
    output [6:0] seg_one,
	 output led
    );
	wire [7:0] MemByte[31:0];
	wire [7:0] instruction;
	wire [7:0] ReadAddress;

	assign MemByte[0] = {2'b01, 2'b00, 2'b10, 2'b01}; // lw $s2, 1($s0)
	assign MemByte[1] = {2'b11, 2'b00, 2'b00, 2'b01}; // j + 1
	assign MemByte[2] = {2'b00, 2'b01, 2'b10, 2'b00}; // add $s0, $s1, $s2
	assign MemByte[3] = {2'b10, 2'b10, 2'b10, 2'b01}; // sw $s2, 1($s2)
	assign MemByte[4] = {2'b01, 2'b00, 2'b11, 2'b01}; // lw $s3, 1($s0)	assign MemByte[4] = {2'b01, 2'b00, 2'b11, 2'b01}; // lw $s3, 1($s0)
	assign MemByte[5] = {2'b11, 2'b00, 2'b00, 2'b11}; // j - 1

	assign instruction = MemByte[ReadAddress];
	Main T1(clk50,instruction,reset, ReadAddress,seg_ten,seg_one, led);
endmodule
