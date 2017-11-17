`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2016 11:22:40 AM
// Design Name: 
// Module Name: eq1_always
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


module eq1_always  
      (
        input  i0, i1,
        output  reg  eq  // eq����Ϊreg����
    );
      reg p0, p1;         // p0��p1 ����Ϊreg����
      always @(i0, i1)     // i0��i1�����������ź��б���
begin
        //����˳���Ǻ���Ҫ�� 
        p0= ~i0 & ~i1;
        p1 = i0 & i1;
        eq = p0 | p1 ;
      end
  endmodule

