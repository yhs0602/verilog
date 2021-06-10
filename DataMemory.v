`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:18:12 06/10/2021 
// Design Name: 
// Module Name:    DataMemory 
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
module DataMemory(
    input [7:0] Address,
    input [7:0] WriteData,
    input MemRead,
    input MemWrite,
    input reset,
    output reg  [7:0] ReadData
    );

	reg [7:0] register [31:0];
	
	integer i;
	initial begin 
	for(i=0; i<16; i=i+1) begin
				 register[i] = i;
				 register[i+16] = -i;
	end
	end
	
	always @(reset, MemRead, MemWrite) begin 
		if(reset == 1) begin
			for(i=0; i<16; i=i+1) begin
				register[i] = i;
				register[i+16] = -i;
			end
		end
		else begin
		ReadData = (MemRead == 1) ? register[Address] : 0;
		if (MemWrite == 1) begin
			register[Address] = WriteData;
		end
		end
	end
endmodule
