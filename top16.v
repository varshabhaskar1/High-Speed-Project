module wallace();

reg[15:0] a,b;
wire [31:0] out;
reg clock;
initial
begin 
clock=0;
a=15'b1;
b=15'b1;
end

always # 15
a=a+1;

always #2
clock=~clock;


wallace16 DUT(
.product(out),.x(a),.y(b),.clock(clock)

);

endmodule
