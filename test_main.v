`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:23:04 06/10/2021
// Design Name:   Main
// Module Name:   /csehome/gunhee2001/Final/test_main.v
// Project Name:  Final
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Main
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_main;

	// Inputs
	wire [7:0] instruction;
	reg clk50;
	reg reset;

	// Outputs
	wire [7:0] ReadAddress;
	wire [7:0] BCD10;
	wire [7:0] BCD1;

	// Instantiate the Unit Under Test (UUT)
	Main uut (
		.instruction(instruction), 
		.clk50(clk50), 
		.reset(reset), 
		.ReadAddress(ReadAddress), 
		.BCD10(BCD10), 
		.BCD1(BCD1)
	);

	wire [7:0] MemByte [31:0];
	
	assign MemByte[0] = {2'b01, 2'b00, 2'b10, 2'b01};
	assign MemByte[1] = {2'b11, 2'b00, 2'b00, 2'b01};
	assign MemByte[2] = {2'b00, 2'b01, 2'b10, 2'b00};
	assign MemByte[3] = {2'b10, 2'b10, 2'b10, 2'b01};
	assign MemByte[4] = {2'b01, 2'b00, 2'b11, 2'b01};
	assign instruction = MemByte[ReadAddress];
	initial begin
		// Initialize Inputs
		// assing instruction = 0;
		clk50 = 0;
		reset = 0;

		
		repeat(500000000) begin
			#10;
			clk50= ~clk50;
		end

	end
      
endmodule

