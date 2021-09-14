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
    input rst,	  // rst
	 input signed [7:0] mod, // modulator
    output [1:0] out1,	// output for Level-1 H-bridge  
    output [1:0] out2,  // output for Level-2 H-bridge
    output [1:0] out3   // output for Level-3 H-bridge
    );
	 
	 
	 // contador
	 reg [7:0] cont;  
	 always @(posedge clk or posedge rst)
      if (rst)
         cont <= 0;
      else
         cont <= cont + 1;
	 //ROM
	 wire signed [7:0] t1, t2, t3;
	 ROM R1 ( 
		.addr(cont), 
		.out1(t1), 
		.out2(t2), 
		.out3(t3)
	);
	
	reg [1:0] val1, val2, val3;
	//Comparador 1
	
   assign out1[0] = t1<=mod ? 1 : 0;
	assign out1[1] = t1<=(-mod) ? 1 : 0;
	//Comparador 2
   assign out2[0] = t2<=mod ? 1 : 0;
	assign out2[1] = t2<=(-mod) ? 1 : 0;
	
	//Comparador 3
   assign out3[0] = t3<=mod ? 1 : 0;
	assign out3[1] = t3<=(-mod) ? 1 : 0;

endmodule
