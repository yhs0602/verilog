`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:00:11 06/11/2021 
// Design Name: 
// Module Name:    multibit_adder 
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
module multibit_adder(
    input [7:0] a,
    input [7:0] b,
    output [7:0] out
    );
	 
	 wire [7:0] cin;
	 full_adder T1(a[0], b[0], 1'b0, out[0], cin[0]);
	 full_adder T2(a[1], b[1], cin[0], out[1], cin[1]);
	 full_adder T3(a[2], b[2], cin[1], out[2], cin[2]);
	 full_adder T4(a[3], b[3], cin[2], out[3], cin[3]);
	 full_adder T5(a[4], b[4], cin[3], out[4], cin[4]);
	 full_adder T6(a[5], b[5], cin[4], out[5], cin[5]);
	 full_adder T7(a[6], b[6], cin[5], out[6], cin[6]);
	 full_adder T8(a[7], b[7], cin[6], out[7], cin[7]);

endmodule