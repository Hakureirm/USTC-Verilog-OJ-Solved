module mod_a(
	output out1, out2,
	input in1,in2,in3,in4);
	assign out1 = in1 & in2 & in3 & in4; 	//这只是一个简单的示例
	assign out2 = in1 | in2 | in3 | in4;	//这只是一个简单的示例
endmodule

module top_module( 
    input a, 
    input b, 
    input c,
    input d,
    output out1,
    output out2
);

mod_a inst_name(out1,out2,a,b,c,d);

endmodule