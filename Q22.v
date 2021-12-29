module my_dff(input clk,input d,output reg q);
	always@(posedge clk)
        q <= d;
endmodule

module top_module ( input clk, input d, output q );
    wire s1,s2;
    my_dff u1(
        .clk	(clk),
        .d		(d),
        .q		(s1));
    my_dff u2(
        .clk	(clk),
        .d		(s1),
        .q		(s2));
    my_dff u3(
        .clk	(clk),
        .d		(s2),
        .q		(q));
endmodule
