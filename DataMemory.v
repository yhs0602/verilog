`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:05:47 06/11/2021 
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
	 input clk,
    output [7:0] ReadData
    );
	 
	 reg [7:0] data [31:0];
	 initial begin
		data[0] = 8'd0;
		data[1] = 8'd1;
		data[2] = 8'd2;
		data[3] = 8'd3;
		data[4] = 8'd4;
		data[5] = 8'd5;
		data[6] = 8'd6;
		data[7] = 8'd7;
		data[8] = 8'd8;
		data[9] = 8'd9;
		data[10] = 8'd10;
		data[11] = 8'd11;
		data[12] = 8'd12;
		data[13] = 8'd13;
		data[14] = 8'd14;
		data[15] = 8'd15;
		data[16] = 8'd0;
		data[17] = 8'b11111111;
		data[18] = 8'b11111110;
		data[19] = 8'b11111101;
		data[20] = 8'b11111100;
		data[21] = 8'b11111011;
		data[22] = 8'b11111010;
		data[23] = 8'b11111001;
		data[24] = 8'b11111000;
		data[25] = 8'b11110111;
		data[26] = 8'b11110110;
		data[27] = 8'b11110101;
		data[28] = 8'b11110100;
		data[29] = 8'b11110011;
		data[30] = 8'b11110010;
		data[31] = 8'b11110001;
	end
	
	always @(reset, posedge clk) begin
		if(reset==1) begin
			data[0] = 8'd0;
			data[1] = 8'd1;
			data[2] = 8'd2;
			data[3] = 8'd3;
			data[4] = 8'd4;
			data[5] = 8'd5;
			data[6] = 8'd6;
			data[7] = 8'd7;
			data[8] = 8'd8;
			data[9] = 8'd9;
			data[10] = 8'd10;
			data[11] = 8'd11;
			data[12] = 8'd12;
			data[13] = 8'd13;
			data[14] = 8'd14;
			data[15] = 8'd15;
			data[16] = 8'd0;
			data[17] = 8'b11111111;
			data[18] = 8'b11111110;
			data[19] = 8'b11111101;
			data[20] = 8'b11111100;
			data[21] = 8'b11111011;
			data[22] = 8'b11111010;
			data[23] = 8'b11111001;
			data[24] = 8'b11111000;
			data[25] = 8'b11110111;
			data[26] = 8'b11110110;
			data[27] = 8'b11110101;
			data[28] = 8'b11110100;
			data[29] = 8'b11110011;
			data[30] = 8'b11110010;
			data[31] = 8'b11110001;
		end
		else if(MemWrite==1) begin
			data[Address] = WriteData;
		end
	end
	assign ReadData = data[Address];
endmodule
