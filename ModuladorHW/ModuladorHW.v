`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: LSPyC - FIUNA
// Engineer: Marcos Gomez-Redondo
// 
// Create Date:    09:05:38 08/31/2021 
// Design Name: 	 
// Module Name:    ModuladorHW 
// Project Name:   ModuladorHW 
// Target Devices: 
// Tool versions: 
// Description:
//	This is the top level of the project. It is a 3-level modulator with phase shift for the 3-level active filter.	
// Dependencies: 
//
// Revision: 0
// Revision 0.01 - File Created
// Additional Comments: 
// Bits of outputs are ordered in the next order
//					 _____|______
//					|				 |
//				  tr0		C		tr2
//					|_+__| |__-__|
//					|	  | |		 |
//				  tr1				tr3
//					|____________|
//							|
//////////////////////////////////////////////////////////////////////////////////
module ModuladorHW(
    input clk,   // clock
    input en,	  // enable
    input rst,	  // rst
    output [3:0] out1,	// output for Level-1 H-bridge  
    output [3:0] out2,  // output for Level-2 H-bridge
    output [3:0] out3   // output for Level-3 H-bridge
    );
	 
endmodule
