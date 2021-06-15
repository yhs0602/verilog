`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:40:35 06/11/2021 
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
    input clk50,
    input [7:0] instruction,
	 input reset,
    output [7:0] ReadAddress,
	 output [6:0] seg_ten,
	 output [6:0] seg_one,
	 output led
    );
	 
	 wire clk;
	 wire Branch;
	 wire MemtoReg;
	 wire MemRead;
	 wire MemWrite;
	 wire ALUOp;
	 wire ALUSrc;
	 wire RegWrite;
	 wire RegDst;
	 wire[7:0] extended;
	 wire[1:0] WriteReg;
	 wire[7:0] RegWriteData;
	 wire[7:0] ReadData1;
	 wire[7:0] ReadData2;
	 wire[3:0] BCD_ten;
	 wire[3:0] BCD_one;
	 wire[7:0] ALUin;
	 wire[7:0] Address;
	 wire[7:0] ReadDataMem;
	 wire[7:0] PC_in;
	 wire[7:0] PC_out;
	 wire[7:0] nextPC;
	 wire[7:0] AddtoMux;
	 
	 assign ReadAddress = PC_out;
	 
	 FreqDivider T0(clk50, clk);
	 Control T1(instruction[7:6], Branch, MemtoReg, MemRead, MemWrite, ALUOp, ALUSrc, RegWrite, RegDst);
	 SignExtend T2(instruction[1:0], extended);
	 Mux2 T3(instruction[3:2], instruction[1:0], RegDst, WriteReg);
	 Register T4(instruction[5:4], instruction[3:2], WriteReg, RegWriteData, RegWrite, clk, ReadData1, ReadData2, BCD_ten, BCD_one);
	 Mux T5(ReadData2, extended, ALUSrc, ALUin);
	 ALU T6(ReadData1, ALUin, ALUOp, Address);
	 DataMemory T7(Address, ReadData2, MemRead, MemWrite, reset, clk, ReadDataMem, led);
	 Mux T8(Address, ReadDataMem, MemtoReg, RegWriteData);
	 
	 PC T9(PC_in, clk, PC_out);
	 multibit_adder T10(PC_out, 8'd1, nextPC);
	 multibit_adder T11(nextPC, extended, AddtoMux);
	 Mux T12(nextPC, AddtoMux, Branch, PC_in);
	 
	 BCDto7 T13(BCD_ten, seg_ten);
	 BCDto7 T14(BCD_one, seg_one);
	
endmodule
