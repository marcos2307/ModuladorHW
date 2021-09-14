`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:43:10 09/14/2021
// Design Name:   ModuladorTrifasico
// Module Name:   C:/Users/Usuario/ModuladorHW/ModuladorTrifasico/ModuladorTrifasico_tf.v
// Project Name:  ModuladorTrifasico
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ModuladorTrifasico
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ModuladorTrifasico_tf;

	// Inputs
	reg clk;
	reg rst;
	reg signed [2:0] phA;
	reg signed [2:0] phB;
	reg signed [2:0] phC;

	// Outputs
	wire [5:0] outA;
	wire [5:0] outB;
	wire [5:0] outC;

	// Instantiate the Unit Under Test (UUT)
	ModuladorTrifasico uut (
		.clk(clk), 
		.rst(rst), 
		.PhA(phA), 
		.PhB(phB), 
		.PhC(phC), 
		.outA(outA), 
		.outB(outB), 
		.outC(outC)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		phA = 0;
		phB = 0;
		phC = 0;

		#10 rst = 1;
		#10 rst = 0;
		
		end

		always
		begin
			#10 clk = ~clk;
		end
      
endmodule

