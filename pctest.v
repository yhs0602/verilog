`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:11:40 06/10/2021
// Design Name:   PC
// Module Name:   /csehome/gunhee2001/Final/pctest.v
// Project Name:  Final
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: PC
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module pctest;

	// Inputs
	reg [7:0] in;
	reg clk;

	// Outputs
	wire [7:0] out;

	// Instantiate the Unit Under Test (UUT)
	PC uut (
		.in(in), 
		.clk(clk), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		in = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		repeat(10000) begin
			#10;
			clk= ~clk;
		end
		in = 10;
		repeat(10000) begin
			#10;
			clk= ~clk;
		end
	end
      
endmodule

