module add16 ( input[15:0] a,
    input[15:0] b,
    input cin,
    output[15:0] sum,
    output cout
);
	assign {cout,sum} = a + b + cin;
endmodule

module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);

    wire [15:0]sum1,sum2;
    wire s1;

    add16 u1(
        .a		(a[15:0]),
        .b		(b[15:0]),
        .cin	(0),
        .sum	(sum1),
        .cout	(s1)
    );

    add16 u2(
        .a		(a[31:16]),
        .b		(b[31:16]),
        .cin	(s1),
        .sum	(sum2)
    );

    assign sum = {sum2,sum1};
endmodule