`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:39:12 06/11/2021 
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
    output reg Branch,
    output reg MemtoReg,
    output reg MemRead,
    output reg MemWrite,
    output reg ALUOp,
    output reg ALUSrc,
    output reg RegWrite,
    output reg RegDst
    );
	 
	 always @* begin
		if(op == 2'b00) begin
			RegDst = 1'b1;
			RegWrite = 1'b1;
			ALUSrc = 1'b0;
			Branch = 1'b0;
			MemRead = 1'b0;
			MemWrite = 1'b0;
			MemtoReg = 1'b0;
			ALUOp = 1'b1;
		end
		else if(op == 2'b01) begin
			RegDst = 1'b0;
			RegWrite = 1'b1;
			ALUSrc = 1'b1;
			Branch = 1'b0;
			MemRead = 1'b1;
			MemWrite = 1'b0;
			MemtoReg = 1'b1;
			ALUOp = 1'b0;
		end
		else if(op == 2'b10) begin
			RegDst = 1'b1;
			RegWrite = 1'b0;
			ALUSrc = 1'b1;
			Branch = 1'b0;
			MemRead = 1'b0;
			MemWrite = 1'b1;
			MemtoReg = 1'b0;
			ALUOp = 1'b0;
		end
		else begin
			RegDst = 1'b1;
			RegWrite = 1'b0;
			ALUSrc = 1'b0;
			Branch = 1'b1;
			MemRead = 1'b0;
			MemWrite = 1'b0;
			MemtoReg = 1'b0;
			ALUOp = 1'b0;
		end
	 end

endmodule
