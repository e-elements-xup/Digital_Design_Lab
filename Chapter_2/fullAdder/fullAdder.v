module fullAdder (a,b,cin,sum,cout);
	//�˿������Ŀ�ʼ
	input a,b,cin;
	output sum,cout;
	//�˿������Ľ���
	
	wire a,b,cin;
	wire sum,cout;
	
	assign sum=(a^b)^c;
	assign cout=cin&(a^b)|(a&b);
	
endmodule