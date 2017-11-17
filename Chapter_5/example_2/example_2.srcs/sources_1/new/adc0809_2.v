`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2016 04:27:44 PM
// Design Name: 
// Module Name: adc0809_2
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


module adc0809_2
   (
input  clk, reset,//״̬������ʱ�Ӻ�ϵͳ��λ����
input eoc,  //AADCת�������źź�ת��������־�ź�
output reg start,
input [7:0] data,//����ADC����������
output [2:0] addr,//ADC����ͨ��ѡ���ַ
output reg ale,//ģ��ͨ����ַ���������ź�
output reg oe //ADC�������ʹ��
   ) ;
localparam[ 1: 0 ]  //�����״̬
s0 = 2'b00 ,
s1 = 2'b01 ,
s2 = 2'b10 ,
s3 = 2'b11;
reg  [ 1:0 ]  state_reg , state_next ; //  ״̬����
    // ״̬ת��
always  @ (posedge clk , posedge   reset )
if  ( reset )
state_reg <= s0 ;
else
state_reg <=  state_next ;
assign addr = 3'b001; //����ͨ���趨Ϊͨ��0
    //  ��̬�߼�������߼�
always  @*
    begin
       case( state_reg )
           s0:state_next = s1; 
        s1 : state_next = s2;
    s2 :
       if (eoc == 1'b1) state_next = s3; //ת������
       else state_next = s2;  //ת��δ�����������ȴ�
           s3 :
      state_next = s0;   
          
    endcase
    end
    
    always  @*
    begin
       case( state_reg )
    s0 :
    begin ale = 0; start = 0;oe = 0; end
      s1 :
    begin ale = 1; start = 1;oe = 0; end
    s2 :
    begin ale = 0; start = 0;oe = 0; end
    s3 :
    begin ale = 0; start = 0;oe = 1; end
    endcase
    end

endmodule
