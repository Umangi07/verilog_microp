`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:28:02 10/31/2017 
// Design Name: 
// Module Name:    controlunit 
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
module controlunit(addr, number, opcode, addr1, addr2, addr3,theflag,output1);
 input  [31:0] addr;
 output [3:0] opcode;
 output  [4:0] addr1;
 output  [4:0] addr2; 
 output  [4:0] addr3; 
 output [7:0] number;
 output [7:0]output1;
output [3:0] theflag; 

 assign opcode[3:0] = addr[31:28];
 assign number[7:0] = addr[22:15];
 assign addr3[4:0] = addr[14:10];
 assign addr2[4:0] = addr[9:5];
 assign addr1[4:0] = addr[4:0];
eu eu1(.opcode(opcode),.addr1(addr1),.addr2(addr2),.addr3(addr3),.number(number),.flag1(theflag),.out1(output1));

endmodule







