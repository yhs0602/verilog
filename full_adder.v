`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:58:06 06/11/2021 
// Design Name: 
// Module Name:    full_adder 
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
module full_adder(
    input a,
    input b,
    input cin,
    output s,
    output cout
    );
	 wire ab;
	 wire bc;
	 wire ca;
	 wire axb;
	 xor T0(axb, a, b);
	 xor T1(s, axb, cin);
	 and T2(ab, a, b);
	 and T3(bc, b, cin);
	 and T4(ca, cin, a);
	 or T5(cout, ab, bc, ca);

endmodule
