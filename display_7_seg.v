`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:14:04 08/30/2017 
// Design Name: 
// Module Name:    display_7_seg 
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
module display_7_seg(
			clock,
			dp_in,
			en_in,
			display_in,
			segment_out,
			enable_out
    );
	 //input ports
	 input clock;
	 input dp_in;
	 input [3:0] display_in;
	 input [1:0] en_in;
	 
	 //output ports
	 output [7:0] segment_out;
	 output [2:0] enable_out;
	 
	 //input ports data types
	 wire clock;
	 wire dp_in;
	 wire [3:0] display_in;
	 wire [1:0] en_in;
	 
	 //output ports data types
	 reg [7:0] segment_out;
	 reg [2:0] enable_out;
	 
	 //behavioral logic
	 always @ (posedge clock)
	 begin
		case (en_in)
			0: enable_out <= 3'b110;
			1: enable_out <= 3'b101;
			2: enable_out <= 3'b011;
			default: enable_out <= 3'b111;
		endcase
		
		case (display_in)
			'h0: segment_out <= 8'b00000011;
			'h1: segment_out <= 8'b10011111;
			'h2: segment_out <= 8'b00100101;
			'h3: segment_out <= 8'b00001101;
			'h4: segment_out <= 8'b10011001;
			'h5: segment_out <= 8'b01001001;
			'h6: segment_out <= 8'b01000001;
			'h7: segment_out <= 8'b00011111;
			'h8: segment_out <= 8'b00000001;
			'h9: segment_out <= 8'b00011001;
			'hA: segment_out <= 8'b00010001;
			'hB: segment_out <= 8'b11000001;
			'hC: segment_out <= 8'b01100011;
			'hD: segment_out <= 8'b10000101;
			'hE: segment_out <= 8'b01100001;
			'hF: segment_out <= 8'b01110001;
			default: segment_out <= 8'b11111111;
		endcase
		
		if (dp_in == 1'b1) begin
			segment_out[0] <= 0;
		end
	 
	 end


endmodule
