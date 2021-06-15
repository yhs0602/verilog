`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:09:20 06/11/2021
// Design Name:   Register
// Module Name:   D:/verilog_project/Final_home/Register_test.v
// Project Name:  Final_home
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Register
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Register_test;

	// Inputs
	reg [1:0] ReadReg1;
	reg [1:0] ReadReg2;
	reg [1:0] WriteReg;
	reg [7:0] WriteData;
	reg RegWrite;

	// Outputs
	wire [7:0] ReadData1;
	wire [7:0] ReadData2;
	wire [3:0] BCD_ten;
	wire [3:0] BCD_one;

	// Instantiate the Unit Under Test (UUT)
	Register uut (
		.ReadReg1(ReadReg1), 
		.ReadReg2(ReadReg2), 
		.WriteReg(WriteReg), 
		.WriteData(WriteData), 
		.RegWrite(RegWrite), 
		.ReadData1(ReadData1), 
		.ReadData2(ReadData2), 
		.BCD_ten(BCD_ten), 
		.BCD_one(BCD_one)
	);

	initial begin
		// Initialize Inputs
		ReadReg1 = 0;
		ReadReg2 = 0;
		WriteReg = 0;
		WriteData = 0;
		RegWrite = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

