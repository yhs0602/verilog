`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:50:18 06/10/2021 
// Design Name: 
// Module Name:    Registers 
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
module Registers(
    input [1:0] ReadReg1,
    input [1:0] ReadReg2,
	 input RegWrite,
    input [1:0] WriteReg,
    input [7:0] WriteData,
	 input clk,
    output reg [7:0] ReadData1,
    output reg [7:0] ReadData2,
	 output [3:0] output10,
	 output [3:0] output1	 
    );
	 
	 reg [7:0] register [3:0];
	 initial begin 
		register[0] = 0;
	  register[1] = 0;
	  register[2] = 0;
	  register[3] = 0;
	 end 
	 assign {output10, output1} = WriteData;
	 always @(posedge clk) begin
		if(RegWrite == 1) begin
			register[WriteReg] = WriteData;
			end
		else begin
		   ReadData1 = register[ReadReg1];
		   ReadData2 = register[ReadReg2];
		end
	end
endmodule
