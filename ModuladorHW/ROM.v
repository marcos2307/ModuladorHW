`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Marcos Gomez Redondo
// 
// Create Date:    10:33:42 08/31/2021 
// Design Name: 
// Module Name:    ROM 
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
module ROM(
	input clk,
	input en,
	input [15:0] addr, 
	output[3:0]  out1,
	output[3:0]  out2,
	output[3:0]  out3);
 
   parameter ROM_WIDTH = 4;
   parameter ROM_ADDR_BITS = 16;

   (* ROM_STYLE="{AUTO | DISTRIBUTED | BLOCK}" *)
   reg [ROM_WIDTH-1:0] ROM [(2**ROM_ADDR_BITS)-1:0];
   wire [ROM_ADDR_BITS-1:0] addr2;
	wire [ROM_ADDR_BITS-1:0] addr3;
   initial
      $readmemh("ValoresDeComparacion", ROM, 0, (2**ROM_ADDR_BITS)-1);
	
	assign addr2 = (addr + 21845)%(2**16);
	assign addr3 = (addr + 43691)%(2**16);
	
   assign out1 = ROM[addr];
	assign out2 = ROM[addr2];
	assign out3 = ROM[addr3];
	
endmodule
