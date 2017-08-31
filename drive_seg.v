`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:52:49 08/30/2017 
// Design Name: 
// Module Name:    drive_seg 
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
`include "display_7_seg.v"
module drive_seg(
		clock,
		segment_out,
		enable_out
    );
	 
	 //input port
	 input clock;
	 
	 //input port type
	 wire clock;
	 
	 //output ports
	 output [7:0] segment_out;
	 output [2:0] enable_out;
	 
	 //output port types
	 wire segment_out;
	 wire enable_out;
	 
	//registers
	reg dp = 0;
	reg [3:0] display_in = 'hA;
	reg [2:0] enable_in = 0;

	display_7_seg display(
		.clock(clock),
		.dp_in(dp),
		.display_in(display_in),
		.en_in(enable_in),
		.segment_out(segment_out),
		.enable_out(enable_out)
	);

endmodule
