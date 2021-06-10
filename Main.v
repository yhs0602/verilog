`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:35:00 06/10/2021 
// Design Name: 
// Module Name:    Main 
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
module Main(
    input [7:0] instruction,
	 input clk50,
	 input reset,
    output [7:0] ReadAddress,
	 output [7:0] BCD10,
	 output [7:0] BCD1
    );
	 
    wire Branch;
    wire MemtoReg;
    wire MemRead; 
	 wire MemWrite;
    wire ALUOp; 
	 wire ALUSrc;
    wire RegWrite;
	 wire RegDst;
	 wire [7:0] extended;
	 
	 wire [7:0] RegWriteData;
	 wire [1:0] WriteRegister;
	 wire [7:0] ReadData1;
	 wire [7:0] ReadData2;
	 wire [7:0] ALUInput2;
	 wire clk;
	 
	 wire [3:0] output10;
	 wire [3:0] output1;
	 
	 wire [7:0] Address;
	 wire [7:0] DataReadData;
	 
	 wire [7:0] MuxToPC;
	 wire [7:0] PCOut;
	 wire [7:0] nextPC;
	 wire [7:0] addToMux;
	 
	 FreqDivider T0 (clk50, clk);
	 Control T1(instruction[7:6], Branch, MemtoReg, MemRead, MemWrite, ALUOp,ALUSrc, RegWrite,RegDst);
	 mux22 T2 (instruction[3:2], instruction[1:0], RegDst, WriteRegister);
    SignExtend T3(instruction[1:0], extended);
	 
	 Registers T4(instruction[5:4], instruction[3:2], RegWrite,
					WriteRegister, RegWriteData, clk, ReadData1, ReadData2,
					output10, output1);

	 mux T5(ReadData2, extended, ALUSrc, ALUInput2);
	 ALU T6(ReadData1, ALUInput2, ALUOp, Address);
	 DataMemory T7(Address, ReadData2,  MemRead, MemWrite, reset, DataReadData);
	 
	 mux T8(Address, DataReadData, MemToReg, RegWriteData);
	 PC T9 (MuxToPC, clk, PCOut);
	 multibit_adder T10(8'd1, PCOut, nextPC);
	 multibit_adder T11(nextPC, extended, addToMux);
	 mux T12(nextPC, addToMux, Branch, MuxToPC);
	 
	 BCDTo7Seg T13(output10, BCD10);
	 BCDTo7Seg T14(output1, BCD1);
	 
	 assign ReadAddress = PCOut;
endmodule
