`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2016 11:09:48 AM
// Design Name: 
// Module Name: top
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


module Top;
reg A,B;
reg CIN;
wire SUM, COUT;

//ʵ����˳������
//�źŰ��ն˿��б��еĴ������ӣ��ڱ�ģ���а�������Ϊadder
fullAdder adder
(.a(A),
.b(B),
.cin(CIN),
.sum(SUM),
.cout(COUT)
);



endmodule
