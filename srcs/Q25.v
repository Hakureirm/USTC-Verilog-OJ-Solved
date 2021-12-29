module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum);

	wire s1;
    wire [15:0] sum1,sum2;
    add16 u1(
        .a		(a[15:0]),
        .b		(b[15:0]),
        .cin		(0),
        .sum		(sum1),
        .cout		(s1)
    );
    add16 u2(
        .a		(a[31:16]),
        .b		(b[31:16]),
        .cin		(s1),
        .sum		(sum2)
    );

    assign sum = {sum2,sum1};

endmodule

module add1 ( input a, input b, input cin, output sum, output cout );

    wire p,q;

    assign p = a ^ b;
    assign q = a & b;
    assign cout = q | (p & cin);
    assign sum = p ^ cin;

endmodule
