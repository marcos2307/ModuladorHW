`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:25:07 09/14/2021 
// Design Name: 
// Module Name:    ModuladorTrifasico 
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
module ModuladorTrifasico(
	 input clk,
	 input rst,
    input signed [2:0] PhA,
    input signed [2:0] PhB,
    input signed [2:0] PhC,
    output [5:0] outA,
    output [5:0] outB,
    output [5:0] outC
    );
	 reg signed [7:0] m1, m2, m3;
	 wire signed [1:0] A1, A2, A3, B1, B2, B3, C1, C2, C3;
ModuladorHW M1(
    .clk(clk),   // clock
    .rst(rst),	  // rst
	 .mod(m1), // modulator
    .out1(A1),	// output for Level-1 H-bridge  
    .out2(A2),  // output for Level-2 H-bridge
    .out3(A3)   // output for Level-3 H-bridge
    );
	 
ModuladorHW M2(
    .clk(clk),   // clock
    .rst(rst),	  // rst
	 .mod(m2), // modulator
    .out1(B1),	// output for Level-1 H-bridge  
    .out2(B2),  // output for Level-2 H-bridge
    .out3(B3)   // output for Level-3 H-bridge
    );
	 
ModuladorHW M3(
    .clk(clk),   // clock
    .rst(rst),	  // rst
	 .mod(m3), // modulator
    .out1(C1),	// output for Level-1 H-bridge  
    .out2(C2),  // output for Level-2 H-bridge
    .out3(C3)   // output for Level-3 H-bridge
    );
	 
	
	//3to8 bits. 
   always @(PhA)
      case (PhA)
         -3: begin m1 = -60; end
         -2: begin m1 = -40; end
         -1: begin m1 = -20; end
         0: begin m1 = 0; end
			1: begin m1 = 20; end
			2: begin m1 = 40; end
			3: begin m1 = 60; end
      endcase
	//3to8 bits. 
	always @(PhB)
      case (PhB)
         -3: begin m2 = -60; end
         -2: begin m2 = -40; end
         -1: begin m2 = -20; end
         0: begin m2 = 0; end
			1: begin m2 = 20; end
			2: begin m2 = 40; end
			3: begin m2 = 60; end
      endcase
	//3to8 bits. 
	always @(PhC)
      case (PhC)
         -3: begin m3 = -60; end
         -2: begin m3 = -40; end
         -1: begin m3 = -20; end
         0: begin m3 = 0; end
			1: begin m3 = 20; end
			2: begin m3 = 40; end
			3: begin m3 = 60; end
      endcase
	//salidas
	assign outA = {A3, A2, A1};
	assign outB = {B3, B2, B1};
	assign outC = {C3, C2, C1};
endmodule
