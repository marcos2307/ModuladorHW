`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:55:08 09/10/2021
// Design Name:   ModuladorHW
// Module Name:   C:/Users/Usuario/ModuladorHW/ModuladorHW/ModuladorHW_tf.v
// Project Name:  ModuladorHW
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ModuladorHW
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ModuladorHW_tf;

	// Inputs
	reg clk;
	reg rst;
	reg signed [7:0] mod;

	// Outputs
	wire [1:0] out1;
	wire [1:0] out2;
	wire [1:0] out3;

	// Instantiate the Unit Under Test (UUT)
	ModuladorHW uut (
		.clk(clk), 
		.rst(rst), 
		.mod(mod), 
		.out1(out1), 
		.out2(out2), 
		.out3(out3)
	);

	initial 
	begin
	// Initialize Inputs
	clk = 0;
	rst = 0;
	mod = 8'sh0;
	#10 rst = 1;
	#10 rst = 0;
	#80 mod = 60;
	#100 mod = -60;
	#100 mod = 0;
	end

	always
	begin
		#10 clk = ~clk;
	end
		
endmodule

