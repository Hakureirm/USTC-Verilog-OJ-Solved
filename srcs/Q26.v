module add16 ( 
	input[15:0] a, 
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

    wire [15:0] sumH1,sumH2;
    wire sel;
    add16 uL(
        .a		(a[15:0]),
        .b		(b[15:0]),
        .cin	(0),
        .sum	(sum[15:0]),
        .cout	(sel)
    );

    add16 uH1(
        .a		(a[31:16]),
        .b		(b[31:16]),
        .cin	(0),
        .sum	(sumH1)
    );

    add16 uH2(
        .a		(a[31:16]),
        .b		(b[31:16]),
        .cin	(1),
        .sum	(sumH2)
    );

    assign sum[31:16] = sel?sumH2:sumH1;
endmodule
