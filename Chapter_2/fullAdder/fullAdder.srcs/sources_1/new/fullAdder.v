`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2016 11:12:20 AM
// Design Name: 
// Module Name: fullAdder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module fullAdder (a,b,cin,sum,cout);
	//�˿������Ŀ�ʼ
	input a,b,cin;
	output sum,cout;
	//�˿������Ľ���
	
	wire a,b,cin;
	wire sum,cout;
	
	assign sum=(a^b)^cin;
	assign cout=cin&(a^b)|(a&b);
	
endmodule
