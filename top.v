module wallace();

reg[7:0] a,b;
wire [15:0] out;
reg clock;
initial
begin 
clock=0;
a=8'b1;
b=8'b1;
end

always # 15
a=a+1;

always #2
clock=~clock;


wallace1 DUT(
.product(out),.x(a),.y(b),.clock(clock)

);

endmodule
