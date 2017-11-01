`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:00:09 10/31/2017
// Design Name:   controlunit
// Module Name:   D:/ee16b061_ee16b063/Processor/procesorfree/processor_test.v
// Project Name:  procesorfree
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: controlunit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module processor_test;

	// Inputs
	reg [31:0] addr;

	// Outputs
	wire [7:0] number;
	wire [3:0] opcode;
	wire [4:0] addr1;
	wire [4:0] addr2;
	wire [4:0] addr3;

	// Instantiate the Unit Under Test (UUT)
	controlunit uut (
		.addr(addr), 
		.number(number), 
		.opcode(opcode), 
		.addr1(addr1), 
		.addr2(addr2), 
		.addr3(addr3)
	);

	initial begin
		// Initialize Inputs
		addr = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

