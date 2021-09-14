`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: LSPyC
// Engineer: Marcos Gomez Redondo.
//
// Create Date:   15:08:12 08/31/2021
// Design Name:   ROM
// Module Name:   C:/Users/Usuario/ModuladorHW/ModuladorHW/ROM_tf.v
// Project Name:  ModuladorHW
// Target Device:  
// Tool versions:  
// Description: 
//	ROM que contiene los sucesivos valores de las salidas correspondientes a la comparacion entre la moduladora y la portadora(triangular)
// Verilog Test Fixture created by ISE for module: ROM
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ROM_tf;

	// Inputs
	reg clk;
	reg en;
	reg [7:0] addr;

	// Outputs
	wire [7:0] out1;
	wire [7:0] out2;
	wire [7:0] out3;

	// Instantiate the Unit Under Test (UUT)
	ROM uut (
		.addr(addr), 
		.clk(clk),
		.en(en),
		.out1(out1), 
		.out2(out2), 
		.out3(out3)
	);

	initial 
	begin
	// Initialize Inputs
	clk = 0;
	en = 1;
	addr = 0;
	end

	always
	begin
		#10 clk = ~clk;
	end
		
	
	always@(posedge clk)
	begin
		addr = ((addr + 1)%(2**8));
	end
	
endmodule

