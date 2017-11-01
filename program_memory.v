`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:13:48 11/01/2017 
// Design Name: 
// Module Name:    program_memory 
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
module program_memory(addr4, program_addr_array);


input [319:0] program_addr_array;
output addr4;

integer program_counter ;
integer f1 ;
integer f2;
reg [31:0] tempo;
controlunit cu1 (.addr(tempo));
always @ (program_addr_array[0])
begin

 for(program_counter=0; program_counter<9;program_counter=program_counter+1)
 begin 
 f1 = (program_counter+1)*32 - 1;
 f2 = (program_counter)*32;
 tempo = program_addr_array[f1:f2];
 if(tempo==0)
 begin
 program_counter = 9;
 end
 end 
end 
 
endmodule