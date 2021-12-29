module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout );
	assign {cout,sum} = a + b + cin;
endmodule

module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);

    wire cout_to_cin;
    wire [31:0] b1 = {32{sub}} ^ b;

    add16 u1(
        .a		(a[15:0]),
        .b		(b1[15:0]),
        .cin	(sub),
        .sum	(sum[15:0]),
        .cout	(cout_to_cin)
    );

    add16 u2(
        .a		(a[31:16]),
        .b		(b1[31:16]),
        .cin	(cout_to_cin),
        .sum	(sum[31:16])
    );
endmodule
