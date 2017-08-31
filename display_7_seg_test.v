`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:15:11 08/30/2017
// Design Name:   display_7_seg
// Module Name:   C:/Users/devel/fpga_projects/display_7_seg/display_7_seg_test.v
// Project Name:  display_7_seg
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: display_7_seg
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module display_7_seg_test;

	// Inputs
	reg clock;
	reg dp_in;
	reg [1:0] en_in;
	reg [3:0] display_in;

	// Outputs
	wire [7:0] segment_out;
	wire [2:0] enable_out;
	
	integer i = 0;
	integer j = 0;

	// Instantiate the Unit Under Test (UUT)
	display_7_seg uut (
		.clock(clock), 
		.dp_in(dp_in), 
		.en_in(en_in), 
		.display_in(display_in), 
		.segment_out(segment_out), 
		.enable_out(enable_out)
	);

	initial begin
		$display("time\t clock dp_in en_in disp_in seg_out en_out");
		$monitor("%g\t %b %b %b %b %b %b", $time, clock, dp_in, en_in, 
					display_in, segment_out, enable_out);
		// Initialize Inputs
		clock = 1;
		dp_in = 0;
		en_in = 0;
		display_in = 0;

        
		// Add stimulus here
		
		for(i=0; i<=3; i = i+1) begin
			#10 en_in = en_in +1;
			for(j=0; j<=15; j = j+1) begin
				#10 display_in = display_in + 1;
			end
		end

	end
    
	always begin
		#5 clock = ~clock;
	end
endmodule

