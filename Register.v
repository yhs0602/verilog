`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:29:45 06/11/2021 
// Design Name: 
// Module Name:    Register 
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
module Register(
    input [1:0] ReadReg1,
    input [1:0] ReadReg2,
    input [1:0] WriteReg,
    input [7:0] WriteData,
	 input RegWrite,
	 input clk,
    output [7:0] ReadData1,
    output [7:0] ReadData2,
    output [3:0] BCD_ten,
    output [3:0] BCD_one
    );
	 
	 reg [7:0] register [3:0];
	 initial begin
		register[0] = 8'd0;
		register[1] = 8'd0;
		register[2] = 8'd0;
		register[3] = 8'd0;
	 end
	 
	 assign BCD_ten = WriteData[7:4];
	 assign BCD_one = WriteData[3:0];
	 assign ReadData1[7:0] = register[ReadReg1];
	 assign ReadData2[7:0] = register[ReadReg2];
	 always @(posedge clk) begin
		if(RegWrite==1'b1) begin
			register[WriteReg] = WriteData;
		end	
	 end
endmodule
