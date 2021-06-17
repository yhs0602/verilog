`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:21:23 06/11/2021 
// Design Name: 
// Module Name:    PC 
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
module PC(
	 input[7:0] in,
    input clk,
	 input reset,
    output reg [7:0] out
    );
	 
	 initial begin
		out <= 8'd0;
	 end
	 always @(posedge clk, posedge reset) begin
		if(reset) begin
			out <= 8'd0;
		end else begin
			out <= in;
		end
	 end
endmodule
