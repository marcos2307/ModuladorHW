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
// ROM de 3 salidas desfasadas 60 grados.
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

module ROM(
	input [7:0] addr,
	input clk,
	input en,
	output signed[7:0]  out1,
	output signed[7:0]  out2,
	output signed[7:0]  out3);
 


   reg signed [7:0] ROM_data [255:0];
	reg signed [7:0] o1, o2, o3;
   wire [7:0] addr2;
	wire [7:0] addr3;
   initial
      $readmemh("triang.txt", ROM_data, 0, 255);
	
	
	assign addr2 = ((addr - 43)%(256));
	assign addr3 = ((addr - 85)%(256));
	
	always @(posedge clk)
	if(en)
		begin
			o1 = ROM_data[addr];
			o2 = ROM_data[addr2];
			o3 = ROM_data[addr3];
		end
		
	assign out1 = o1;
	assign out2 = o2;
	assign out3 = o3;
	
endmodule
