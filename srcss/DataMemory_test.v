`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:15:21 06/11/2021
// Design Name:   DataMemory
// Module Name:   D:/verilog_project/Final_home/DataMemory_test.v
// Project Name:  Final_home
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DataMemory
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module DataMemory_test;

	// Inputs
	reg [7:0] Address;
	reg [7:0] WriteData;
	reg MemRead;
	reg MemWrite;
	reg reset;

	// Outputs
	wire [7:0] ReadData;

	// Instantiate the Unit Under Test (UUT)
	DataMemory uut (
		.Address(Address), 
		.WriteData(WriteData), 
		.MemRead(MemRead), 
		.MemWrite(MemWrite), 
		.reset(reset), 
		.ReadData(ReadData)
	);

	initial begin
		// Initialize Inputs
		Address = 8'd4;
		WriteData = 0;
		MemRead = 0;
		MemWrite = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		
		#100
		MemRead = 1;
		MemWrite = 0;
		
		#100
		MemRead = 0;
		MemWrite = 1;
		WriteData = 8'd11;
		
		#100
		MemRead = 1;
		MemWrite = 0;
		
	
        
		// Add stimulus here

	end
      
endmodule