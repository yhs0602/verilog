`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:31:47 06/11/2021 
// Design Name: 
// Module Name:    FreqDivider 
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
module FreqDivider(
    input clkin,
    output reg clkout
    );
	initial begin
		clkout = 1'b0;
	end
	
	reg [31:0] cnt=32'd0;
	always@(posedge clkin) begin
		if(cnt==32'd25000000) begin
			cnt<=32'd0;
			clkout<=~clkout;
		end else begin
			cnt<=cnt+1;
		end
	end
endmodule