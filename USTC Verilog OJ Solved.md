# USTC Verilog OJ Solved

## Q1	输出1

**题目描述**
编写Verilog代码，使电路输出信号1
**输入格式**
无
**输出格式**
输出为 one，位宽为 1。
**示例波形**

![image-20211229052125602](https://s2.loli.net/2021/12/29/mItogp57c9ThUwW.png)

### 代码

```verilog
module top_module(
        output one
    );
    assign one = 1 ;
endmodule
```

## Q2	输出0

**题目描述**
编写Verilog代码，使电路输出信号0
**输入格式**
无
**输出格式**
输出为 one，位宽为 1。
**示例波形**

![image-20211229052143854](https://s2.loli.net/2021/12/29/doDgG7unEN1htlV.png)

### 代码

```verilog
module top_module(
    output out
);
    assign out = 0;
endmodule
```

## Q3	wire

**题目描述**
wire 是 Verilog 的关键字，用于表征信号类型的，其含义是线网。wire 可理解为物理连线，但又有所不同，因为 Verilog 中的 wire 是有方向的。例如设计一模块，模块名命名为 top_module，输入信号名为 in，输出信号名为 out，使 in 与 out 直连，如下图所示：

![img](https://s2.loli.net/2021/12/29/Yn7FvVhu9qMbXrd.png)

请使用 assign 语句将代码补充完整，使其实现上述电路图的功能。

**输入格式**
任意
**输出格式**
与输入完全相同
**示例波形**

![image-20211229052550263](https://s2.loli.net/2021/12/29/BJKC3PM2wd5R6vG.png)

### 代码

```verilog
module top_module(
    input in, output out
);
    wire in,out;
    assign out = in;
endmodule
```

## Q4	多个端口的模块

**题目描述**
wire是Verilog的关键字，用于表征信号类型的，其含义是线网，wire可理解为物理连线，但又有所不同，因为verilog中的wire是有方向的，例如设计一模块，模块名命名为top_module，输入信号名为in，输出信号名为out，使in与out直连，如下图所示：

![img](https://s2.loli.net/2021/12/29/bIiGZDaSehB1nNR.png)

请使用assign语句将代码补充完整，使其实现上述电路图的功能

**输入格式**
1 1 1
**输出格式**
1 1 1 1
**示例波形**

![image-20211229052931958](https://s2.loli.net/2021/12/29/oJ6A7kMrFRxyGbD.png)

### 代码

```verilog
module top_module( 
    input a,b,c,
    output w,x,y,z
	);

		wire w,x,y,z;

		assign w = a;
		assign x = b;
		assign y = b;
		assign z = c;

endmodule
```

## Q5	非门

**题目描述**
创建一个名为top_module的Verilog模块，实现非门的功能



**输入格式**
无
**输出格式**
无
**示例波形**

![image-20211229053133178](https://s2.loli.net/2021/12/29/83nwWZAxRELJBYj.png)

### 代码

```verilog
module top_module( input in, output out );
	
    assign out =~ in;
endmodule
```

## Q6	与门

**题目描述**
创建一个Verilog模块，实现与门的逻辑功能，如下图所示：

![image.png](https://s2.loli.net/2021/12/29/N14sVgvPq78jywG.png)

**输入格式**
1bit a, 1bit b
**输出格式**
1bit out, 为 a and b 的结果
**示例波形**

![image-20211229053304191](https://s2.loli.net/2021/12/29/EXt2BiV3AMjHRNa.png)

### 代码

```verilog
module top_module(
    input a, 
    input b,
    output out );

    and a1(out,a,b);
endmodule
```

## Q7	或非门

**题目描述**
创建一个Verilog模块，实现或非门的逻辑功能，如下图所示：

![img](https://s2.loli.net/2021/12/29/mOJMDEG3dpZxnue.png)

**输入格式**
输入a,b均为1位
**输出格式**
输出out也为1位
**示例波形**

![image-20211229053843460](https://s2.loli.net/2021/12/29/5XTUMu2vHsEbL3V.png)

### 代码

```verilog
module top_module( 
    input a, 
    input b, 
    output out );

    nor a1(out,a,b);
endmodule
```

## Q8	同或门

**题目描述**
创建一个Verilog模块，实现同或门的逻辑功能，对于两输入同或门来说，输入相同时输出1，输入不同时输出0，正好与异或门相反，如下图所示：

![img](https://s2.loli.net/2021/12/29/Gp3ISEarZ6UifmD.png)

**输入格式**
1位的a和b
**输出格式**
1位的out
**示例波形**

![image-20211229054257854](https://s2.loli.net/2021/12/29/h54Mt3Rx9HzTZFi.png)

### 代码

```verilog
module top_module( 
    input a, 
    input b, 
    output out );

    assign out = ~(a ^ b);
endmodule
```

## Q9	线网型中间信号

**题目描述**
之前的verilog模块结构都比较简单，输出信号可直接用输入信号的逻辑表达式表示出来，模块功能稍微复杂时，一般都会用到中间信号，以下图为例，输入信号in经过两个非门后输出到out端口，为了在verilog模块中表示两个非门中间的这跟信号，需要将其定义为线网型（wire）信号，此处我们命名为not_in。

![img](https://s2.loli.net/2021/12/29/6jBCp83EWloRgsk.png)

上述模块的verilog代码为：

![img](https://s2.loli.net/2021/12/29/qnLIA1obHGwNW6m.png)

**请根据上述示例，完成下图中电路所对应的Verilog模块**

![img](https://s2.loli.net/2021/12/29/g4j7OXxiIVsLbG1.png)

**输入格式**
四个线网型变量a、b、c、d
**输出格式**
两个线网型变量out、out_n
**示例波形**

![image-20211229054815175](https://s2.loli.net/2021/12/29/aXVwLmO6prJ3en8.png)

### 代码

```verilog
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   
); 

    wire and1,and2,out,out_n;

    assign and1 = a & b;
    assign and2 = c & d;
    assign out = and1 | and2;
    assign out_n = ~(and1 | and2);
endmodule
```

## Q10	向量

**题目描述**

**Hint:**
 向量是为了编写、阅读代码方便，将一组相关的信号用一个向量名称统一命名的方式。例如：

```verilog
wire [7:0] w;
```

声明了一个8bit位宽的向量信号w，实际上代表的是8个1bit的wire型信号。
 注意向量信号的声明是将位宽信息放在信号名之前，这与C语言不太一样。我们可以将向量信号中的一位或多位单独拿来使用。例如：

```verilog
wire out;
wire [3:0] out_4;
wire [99:0] my_vector;
// 声明一个100bit的向量my_vector
assign out = my_vector[11] & my_vector[10];
// 选择其中两位信号进行运算
assign out_4 = my_vector[23:20];
// 选择其中4bit信号
```

**任务目标：**
 创建一verilog模块，具有一个3bit位宽的输入向量信号，然后将其输出到3bit位宽的输出向量信号，同时再分别输出到3个1bit位宽的输出信号，如下图所示：

![向量.png](https://s2.loli.net/2021/12/29/ENSQzJxYeC1fUKm.png)

**输入格式**
1个3bit位宽的向量信号vec
**输出格式**
1个与输入vec保持一致的3bit位宽向量信号outv；

3个1bit位宽信号o0, o1, o2，分别对应输入信号vec的三位
**示例波形**

![image-20211229055114916](https://s2.loli.net/2021/12/29/WCGsrZg3ScHoAxw.png)

### 代码

```verilog
module top_module ( 
    input wire [2:0] vec,
    output wire [2:0] outv,
    output wire o2,
    output wire o1,
    output wire o0);

    assign outv = vec[2:0];
    assign o2 = vec[2];
    assign o1 = vec[1];
    assign o0 = vec[0];
endmodule
```

## Q11	向量_续 1

**题目描述**
创建一 Verilog 模块，将 16bit 输入信号 in 分成两个 8bit 的信号 out_hi、out_lo，然后输出，如下图所示：

![img](https://s2.loli.net/2021/12/29/Z8yOXRwd3Y7jKuB.png)

**输入格式**
输入信号 in, 位宽 16bit，类型为 wire。
**输出格式**
输出信号 out_hi，位宽 8bit，为输入信号的高 8 位。 

输出信号 out_lo，位宽 8bit，为输入信号的低 8 位。
**示例波形**

![image-20211229055315583](https://s2.loli.net/2021/12/29/ejBtEHoprLIAVuk.png)

### 代码

```verilog
`default_nettype none     // Disable implicit nets. Reduces some types of bugs.
module top_module( 
    input	wire	[15:0]	in,
    output	wire	[7:0]	out_hi,
    output	wire	[7:0]	out_lo 
);
	
    assign out_lo = in[7:0];
    assign out_hi = in[15:8];
endmodule
```

## Q12	向量_续2

**题目描述**
一个32bit的向量信号包含有4个字节（bit[31:24]、bit[23:16]等），创建一个电路，用以调整4个字节的顺序，该电路经常用于在不同大小端系统之间进行数据交互：
 AaaaaaaaBbbbbbbbCcccccccDddddddd => DdddddddCcccccccBbbbbbbbAaaaaaaa
 提示：part-select操作即可以用于赋值语句的左侧也可用于右侧。

**输入格式**
1个 32bit 位宽的向量信号 in
**输出格式**
1个 32bit 位宽的向量信号 out
**示例波形**

![image-20211229204843999](https://s2.loli.net/2021/12/29/5o3EFtRBlIkTaZp.png)

![image-20211229204929308](https://s2.loli.net/2021/12/29/NYP3lKqW6IR4y98.png)

### 代码

```verilog
module top_module(
    input [31:0] in,
    output [31:0] out
);
	
    assign out[31:24] = in[7:0];
    assign out[23:16] = in[15:8];
    assign out[15:8] = in[23:16];
    assign out[7:0] = in[31:24];
endmodule
```

## Q13	位操作

**题目描述**
创建一个电路，包含两个 3bit 的输入信号 a 和 b，分别对 ab 进行按位或、逻辑或操作，以及将 ab 拼接成 6bit 信号后进行按位取反，如下图所示：

![img](https://s2.loli.net/2021/12/29/5ALgzK74WfM9Zus.png)

**输入格式**
a = 3'b101

b = 3'b000
**输出格式**
按位或：3'b101

逻辑或：1

拼接ab后再按位取反：6'b111010
**示例波形**

![image-20211229055727956](https://s2.loli.net/2021/12/29/NxPbstaT9JoEBMG.png)

### 代码

```verilog
module top_module( 
    input [2:0] a,
    input [2:0] b,
    output [2:0] out_or_bitwise,
    output out_or_logical,
    output [5:0] out_not
);

    assign out_or_bitwise = a | b;
    assign out_or_logical = a || b;
    assign out_not = {~(b),~(a)};

endmodule
```

## Q14	位操作

**题目描述**
创建一个组合逻辑电路，包含4bit输入（in[3:0]），和3个输出，分别为：
 -out_and：四输入与门的输出信号
 -out_or：四输入或门的输出信号
 -out_xor：四输出异或门的输出信号
 电路结构如下图所示：

![img](https://s2.loli.net/2021/12/29/ebckg97sZHyzGDq.png)

**输入格式**
0 0 0 0
**输出格式**
0 0 0
**示例波形**

![image-20211229055923179](https://s2.loli.net/2021/12/29/mSZNcYQt4WXa5l6.png)

### 代码

```verilog
module top_module( 
    input [3:0] in,
    output out_and,
    output out_or,
    output out_xor
);
	
    assign out_and = &in;
    assign out_or = |in;
    assign out_xor = ^in;
endmodule
```

## Q15	向量拼接

**题目描述**
part_selection用于选择向量信号中的一部分，而向量拼接算子{a,b,c}用于将多个信号组合成一个位宽更大的向量信号，如：

```verilog
{3'b111, 3'b000} // 等同于 6'b111000
{1'b1, 1'b0, 3'b101} // 等同于5'b10101
{4'ha, 4'd10} // 等同于 8'b10101010
// 4'ha and 4'd10 are both 4'b1010 in binary
```

 向量拼接时，每个信号都需要有明确的位宽，这样拼接后的信号才会有明确的位宽。例如，{1,2,3}就是非法的，因为无法确定各信号的位宽，语法检查时会报错。
 向量拼接算子既可以用于赋值语句的左侧，也可用于右侧，如下所示：

```verilog
input [15:0] in;
output [23:0] out;
assign {out[7:0], out[15:8]} = in;
assign out[15:0] = {in[7:0], in[15:8]};
assign out = {in[7:0], in[15:8]};
```


 创建Verilog电路，将6个5bit位宽的输入信号，以及2bit的常量信号2’b11拼接成32bit的向量信号，并将其拆成4个8bit的信号，分别赋值给4个输出信号，如下图所示：

![image.png](https://s2.loli.net/2021/12/29/k9MveFUSVEZdI71.png)

**输入格式**
5个5位宽的输入信号a,b,c,d,e,f
**输出格式**
4个8位宽的信号w,x,y,z
**示例波形**

![image-20211229205044127](https://s2.loli.net/2021/12/29/cLj8HiR4KTYsFWt.png)

![image-20211229205127411](https://s2.loli.net/2021/12/29/jMSWY6seJbyLAHX.png)

![image-20211229205156347](https://s2.loli.net/2021/12/29/EhtZOWNXucnrL8C.png)

### 代码

```verilog
module top_module (
    input [4:0] a, b, c, d, e, f,
    output [7:0] w, x, y, z );
    
    assign {w,x,y,z} = { a, b, c, d, e, f,2'b11};
endmodule
```

## Q16	向量翻转

**题目描述**
创建verilog电路，将8bit的输入信号按bit翻转，并输出到输出端口，如下图所示：

![image.png](https://s2.loli.net/2021/12/29/dnJVocq1RX7ajkI.png)

**输入格式**
8 bit in
**输出格式**
8 bit out, 为in的向量翻转
**示例波形**

![image-20211229060641361](https://s2.loli.net/2021/12/29/MN3pFa5HkDLgP1y.png)

### 代码

```verilog
module top_module( 
    input [7:0] in,
    output [7:0] out
);
    assign out = {in[0],in[1],in[2],in[3],in[4],in[5],in[6],in[7]};
endmodule
```

## Q17	复制算子

**题目描述**复制算子是拼接算子的一种特殊情况，如a={b,b,b,b,b,b}便可以写成a={6{b}}的形式。复制算子的格式为：{num{vector}}，其中num必须为常量。如下所示：

```Verilog
{5{1'b1}} // 5'b11111 (or 5'd31 or 5'h1f)
{2{a,b,c}} // The same as {a,b,c,a,b,c}
{3'd5, {2{3'd6}}} // 9'b101_110_110
```

创建一verilog电路，将一个8bit位宽的输入信号进行符号位扩展，并通过32bit的输出端口输出，如下图所示：

![img](https://s2.loli.net/2021/12/29/bg1IeXlYRxvuoT5.png)

**输入格式**
8位in信号
**输出格式**
32位out信号
**示例波形**

![image-20211229205249999](https://s2.loli.net/2021/12/29/MAzgDRb5IGqHoSU.png)

![image-20211229205329759](https://s2.loli.net/2021/12/29/puwcvn6oGflKWiI.png)

### 代码

```verilog
module top_module (
    input [7:0] in,
    output [31:0] out );

    assign out = {{24{in[7]}} , in};
endmodule
```

## Q18	复制算子_2

**题目描述**
创建一verilog电路，包含5个1bit输入，使所有输入两两进行同或（两bit相同时输出1，不同时输出0），并将结果通过25bit的向量信号输出，如下图所示：

![img](https://s2.loli.net/2021/12/29/HMwry7m8IaTDjdW.png)

使用复制算子实现该电路，可以大大减少代码量，提高编码效率。

**输入格式**
1位的a,b,c,d,e
**输出格式**
25位的out
**示例波形**

![image-20211229061037939](https://s2.loli.net/2021/12/29/jXlIvcCg7DTAk4O.png)

### 代码

```verilog
module top_module (
    input a, b, c, d, e,
    output [24:0] out );//
    
    assign out = ~{{5{a}},{5{b}},{5{c}},{5{d}},{5{e}}} ^ {5{a,b,c,d,e}};
endmodule
```

## Q19	模块例化

**题目描述**
通过前面一系列的练习，用户应当已经熟悉单个模块电路的设计了。对于功能上更复杂的电路模块，一般都是由若干子模块以及附加的功能电路构成的。

![img](https://s2.loli.net/2021/12/29/s9jRwWBFeHduOn6.png)

在模块实例化过程中，被例化模块的端口信号是最重要的，用户甚至可以不知道模块的内部结构。上图展示了一个非常简单的包含有子模块电路的电路结构，在此电路中，创建模块mod_a的一个实例化，并将该实例化模块的三个端口（`in1`,`in2`,`out`）与顶层电路的三个端口(`a`,`b`,`out`)直接连接，其中`mod_a`模块的代码如下：

```verilog
module mod_a ( input in1, input in2, output out );
// Module body
assign out = in1 & in2; //这只是一个简单的示例
endmodule
```

模块实例化一般有两种语法格式，分别称为基于端口名称的实例化和基于端口位置的实例化。
 基于位置的实例化和C语言中的函数调用类似（只是语法上类似，实际上该例化会产生实际的硬件电路），以上述`mod_a`模块的实例化为例，可以在上层模块中使用以下语句：

```verilog
module top_module(input wa,input wb,output wc);
mod_a inst_name1(wa,wb,wc);
endmodule
```

其中inst_name1是mod_a模块的实例化名称，可以由用户自定义，通过这种例化方式，便实现了端口对应：`wa↔in1`, `wb↔in2`, `wc↔out `。
 基于端口名称的实例化如下所示

```verilog
module top_module(input wa,input wb,output wc);
mod_a 	inst_name2(
.out		(wc),
.in1		(wa),
.in2		(wb));
endmodule
```

本教程推荐用户使用基于端口名称的例化方式，因为这种方式编写的代码可读性更强。
 试创建一verilog电路，并按照上图中所示实例化`mod_a`模块（建议使用基于端口名称的方式实例化）。

## Hint:

- 推荐使用基于端口名称的实例化方式
- 模块调用就像是一个树形的层次结构，不允许循环调用，如a调用b，b又调用a，也不允许模块调用自身，即模块c中又实例化模块c。
- 不允许在进程块（如always、initial等）或赋值语句（如assign语句）内进行模块实例化
- 模块的实例化名称可以自定义，如在同一模块中要对一个模块多次实例化，需要有不同的实例化名称。

**输入格式**
一位线网型变量a、b
**输出格式**
一位线网型变量out
**示例波形**

![image-20211229063650774](https://s2.loli.net/2021/12/29/ESy1zunlmVqQUfx.png)

### 代码

```verilog
module top_module(
  input 	a,
  input 	b,
  output 	out
);
mod_a inst_name(
  .out         (out),
  .in1         (a),
  .in2         (b));
endmodule

module mod_a ( 
  input 	in1, 
  input 	in2, 
  output 	out 
);
assign out = in1 & in2;
endmodule
```

## Q20	基于端口位置的实例化

**题目描述**
创建一verilog电路，实现对模块mod_a基于端口位置的实例化，如下图所示：

![20.png](https://s2.loli.net/2021/12/29/FbeAKCw6lirsnQR.png)

其中mod_a模块的代码提供为：

```verilog
module mod_a(
    output out1, out2,
    input in1,in2,in3,in4);
    assign out1 = in1 & in2 & in3 & in4;
    //这只是一个简单的示例
    assign out2 = in1 | in2 | in3 | in4;   
    //这只是一个简单的示例
endmodule
```

**Hint:**

- 实例化名称可以与模块名称相同
- 实例化模块时，需要注意端口信号的位宽相匹配，本例中都是1bit，所以不存在问题

**输入格式**
4个1bit信号a, b, c, d
**输出格式**
经由模块mod_a输出的信号out1, out2
**示例波形**

![image-20211229063954995](https://s2.loli.net/2021/12/29/g7L3KBA6VnCUGWH.png)

### 代码

```verilog
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
```

## Q21	基于端口名称的实例化

**题目描述**
创建一 verilog 电路，实现对模块 mod_a 基于端口名称的实例化，如下图所示：

![img](https://s2.loli.net/2021/12/29/5BqpsaFmLCunD9H.png)

![img](https://s2.loli.net/2021/12/29/xfUOMdwoNp26HPc.png)

其中mod_a模块的代码为：

```verilog
module mod_a (
    output   out1,
    output   out2,
    input    in1,
    input    in2,
    input    in3,
    input    in4
);
    assign out1 = in1 & in2 & in3 & in4;    //这只是一个简单的示例
    assign out2 = in1 | in2 | in3 | in4;    //这只是一个简单的示例
endmodule
```

**输入格式**
输入信号 a, b, c, d，位宽 1bit。
**输出格式**
输出信号 out1, out2，位宽 1bit。
**示例波形**

![image-20211229064352838](https://s2.loli.net/2021/12/29/fRYHrso3ShiPW84.png)

### 代码

```verilog
module mod_a (
    output   out1	,
    output   out2	,
    input    in1	,
    input    in2	,
    input    in3	,
    input    in4
);
    assign out1 = in1 & in2 & in3 & in4;    //这只是一个简单的示例
    assign out2 = in1 | in2 | in3 | in4;    //这只是一个简单的示例
endmodule

module top_module ( 
    input	a	,
    input	b	,
    input	c	,
    input	d	,
    output	out1,
    output	out2
);

mod_a inst_name(
    .out1		(out1),
    .out2		(out2),
    .in1		(a),
    .in2		(b),
    .in3		(c),
    .in4		(d));  	
endmodule
```

## Q22	多个模块的例化

**题目描述**
创建一个Verilog模块，实现或非门的逻辑功能，如下图所示：

![img](https://s2.loli.net/2021/12/29/mOJMDEG3dpZxnue.png)

**输入格式**
输入a,b均为1位
**输出格式**
输出out也为1位
**示例波形**

![image-20211229053843460](https://s2.loli.net/2021/12/29/5XTUMu2vHsEbL3V.png)

### 代码

```verilog
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
```

## Q23	模块与向量信号

**题目描述**对于给定模块 my_dff8，其代码如下所示：

```verilog
module my_dff8(
    input clk,
    input [7:0] d,
    output reg [7:0] q
);
    always@(posedge clk)
        q <= d;      
endmodule
```

试创建一 Verilog 模块，对 my_dff8 模块例化 3 次，并串行连接，构成一个 8bit 位宽长度为 3 的移位寄存器，同时可以通过选择信号选择输出结果，如下图所示：

![img](https://s2.loli.net/2021/12/29/VQDnWscx9I21GJB.png)

**输入格式**
8bit 的任意有效输入
**输出格式**
根据 sel 信号，选择一个模块或者原输入作为输出信号
**示例波形**

![image-20211229072553833](https://s2.loli.net/2021/12/29/EGBrafWmstJOlZ5.png)

### 代码

```verilog
module my_dff8(
    input clk,
    input [7:0] d,
    output reg [7:0] q
);
	always@(posedge clk)
        q <= d;
endmodule

module top_module(
    input clk,
    input [7:0] d,
    input [1:0] sel,
    output reg [7:0] q
);

    wire [7:0] w1,w2,w3;

    my_dff8 u1(
        .clk	(clk),
        .d		(d),
        .q		(w1)
    );

    my_dff8 u2(
        .clk	(clk),
        .d		(w1),
        .q		(w2)
    );

    my_dff8 u3(
        .clk	(clk),
        .d		(w2),
        .q		(w3)
    ;

    always@(*)begin
        case (sel)
            0: q = d;
            1: q = w1;
            2: q = w2;
            3: q = w3;
        endcase
    end
endmodule
```

## Q24	加法器

**题目描述**
对于给定的16bit加法器电路，其代码如下：

```verilog
module add16 (input[15:0] a,
              input[15:0] b, input cin,
              output[15:0] sum,
              output cout
);
      assign {cout,sum} = a + b + cin;
endmodule
```

试创建一verilog模块，在该模块中实例化两个16bit的加法器，并进行适当的连接，最终构成一个32bit的加法器，该加法器输入进位位为0，如下图所示：

![img](https://s2.loli.net/2021/12/29/HecrLPfBRCN64wZ.png)

**输入格式**
32'b0 32'b0
**输出格式**
32'b0
**示例波形**

![image-20211229205440580](https://s2.loli.net/2021/12/29/o2jQkY7M93zlZH4.png)

![image-20211229205509409](https://s2.loli.net/2021/12/29/YuLXZQPtdh81ckN.png)

![image-20211229205536834](https://s2.loli.net/2021/12/29/jFn27tVfiAKq6sZ.png)

### 代码

```verilog
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
```

## Q25	多层次例化加法器

**题目描述**
在此练习中，用户需要创建一个包含两层调用的电路，在顶层模块中，实例化两个16bit位宽的加法器add16,而add16模块又是通过例化16个1bit全加器实现的，如下图所示：

![img](https://s2.loli.net/2021/12/29/kjAwBd71RFWrMP3.png)

在本设计中，一共涉及到3个模块，分别是：顶层模块、add16模块、add1模块，其中add16模块源代码如下：

```verilog
module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout);
	wire c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15;

  add1 inst_0(.a(a[0]),.b(b[0]),.cin(cin),.sum(sum[0]),.cout(c1));
  add1 inst_1(.a(a[1]),.b(b[1]),.cin(c1),.sum(sum[1]),.cout(c2));
  add1 inst_2(.a(a[2]),.b(b[2]),.cin(c2),.sum(sum[2]),.cout(c3));
  add1 inst_3(.a(a[3]),.b(b[3]),.cin(c3),.sum(sum[3]),.cout(c4));
  add1 inst_4(.a(a[4]),.b(b[4]),.cin(c4),.sum(sum[4]),.cout(c5));
  add1 inst_5(.a(a[5]),.b(b[5]),.cin(c5),.sum(sum[5]),.cout(c6));
  add1 inst_6(.a(a[6]),.b(b[6]),.cin(c6),.sum(sum[6]),.cout(c7));
  add1 inst_7(.a(a[7]),.b(b[7]),.cin(c7),.sum(sum[7]),.cout(c8));
  add1 inst_8(.a(a[8]),.b(b[8]),.cin(c8),.sum(sum[8]),.cout(c9));
  add1 inst_9(.a(a[9]),.b(b[9]),.cin(c9),.sum(sum[9]),.cout(c10));
  add1 inst_10(.a(a[10]),.b(b[10]),.cin(c10),.sum(sum[10]),.cout(c11));
  add1 inst_11(.a(a[11]),.b(b[11]),.cin(c11),.sum(sum[11]),.cout(c12));
  add1 inst_12(.a(a[12]),.b(b[12]),.cin(c12),.sum(sum[12]),.cout(c13));
  add1 inst_13(.a(a[13]),.b(b[13]),.cin(c13),.sum(sum[13]),.cout(c14));
  add1 inst_14(.a(a[14]),.b(b[14]),.cin(c14),.sum(sum[14]),.cout(c15));
  add1 inst_15(.a(a[15]),.b(b[15]),.cin(c15),.sum(sum[15]),.cout(cout));
endmodule
```

现在，你需要完成顶层模块和add1模块的verilog代码。

**输入格式**
两个32位宽的加数a,b
**输出格式**
32位宽的和sum
**示例波形**

无。。

### 代码

```verilog
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

module add1 ( input a, input b, input cin,   output sum, output cout );

    wire p,q;

    assign p = a ^ b;
    assign q = a & b;
    assign cout = q | (p & cin);
    assign sum = p ^ cin;

endmodule
```

## Q26	进位选择加法器

**题目描述**
前例中的加法器成为串行进位加法器，只有等前一级的加法器运算结束产生进位位之后，下一级加法器才能利用进位位进行计算，因此电路延时会随加法器串联级数的增加而线性增加，这使得电路计算速度大大降低。设每一级全加器的延时为t，则32bit加法器的延时则为：32t。

为降低电路整体延时，我们可以按下图进行设计：

![image.png](https://s2.loli.net/2021/12/29/6n2vHbcWGImwZ3O.png)

我们将电路分为两段，每段实现16bit的加法，为了使高16位与低16位同时进行运算，我们采用两个add16对高位进行计算，区别在于进位位分别为0和1，最终通过低16位加法器的输出进位作为选择控制信号，选择高16位的运算结果。这样，32bit加法器的延时就变为：16t+tmux2 ≈16t,延时降低了接近一倍，这种以空间（增加电路）换时间（提高速度）的做法，在数字电路设计中经常使用。
 请创建Verilog模块，实现上图中的电路结构，其中add16不需要用户编写，其声明如下：

```verilog
module add16 (input[15:0] a,
              input[15:0] b,
              input cin,
              output[15:0] sum,
              output cout );
		assign {cout,sum} = a + b + cin;
endmodule
```

**输入格式**
32bit a, 32bit b
**输出格式**
32bit sum 为 a 与 b 的和
**示例波形**

无。。

### 代码

```verilog
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

```

## Q27	加法减法器

**题目描述**
通过对加法器进行改造，可以支持加、减两种运算。我们知道，电路中有符号数通常使用补码表示，如-b其补码为：~b + 1（按位取反然后加1）。因此，对于减法算式a-b,可以理解为a+(-b) = a+(~b+1)= a + (~b) +1,因此对于减法运算，可以将加法器进行如下改造实现：

![img](https://s2.loli.net/2021/12/29/cFJQrGvX1NeSf5t.png)

实现减法运算时，首先通过32bit的异或门，将信号b按位取反，同时将输入进位位置1，实现加法运算时，b保持不变，输入进位位置0。
 其中add16模块代码如下，用户可直接调用：

```verilog
module add16 (input[15:0] a,
              input[15:0] b,
              input cin,
              output[15:0] sum,
              output cout
);
		assign {cout,sum} = a + b + cin;
endmodule
```

请创建Verilog模块，实现上述电路功能。

**输入格式**
32位的a,b，以及一个1位信号sub，sub为1时为减法，sub为0时为加法
**输出格式**
32位信号sum

注：我想你读到这里的时候，一定跟我一样想着直接用sum=(sub==0?a+b:a-b)逃课了，但是请老老实实地按题目要求分高位低位取补码相加哦~~~
**示例波形**

![image-20211229205639525](https://s2.loli.net/2021/12/29/e4I7dXxk5QtZgv2.png)

![image-20211229205714413](https://s2.loli.net/2021/12/29/Dl2quvGdShF8zXE.png)

![image-20211229205737414](https://s2.loli.net/2021/12/29/Mp9Om8K2o1UhSYW.png)

![image-20211229205805572](https://s2.loli.net/2021/12/29/ot3WmHYSLz1IEeC.png)

![image-20211229205828032](https://s2.loli.net/2021/12/29/CeYgKHZSiOkpzLJ.png)

### 代码

```verilog
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

```

