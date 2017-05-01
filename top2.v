
 
module wallace();

reg[1:0] a,b;
wire [3:0] out;
reg clock;
initial
begin 
clock=0;
a=2'b1;
b=2'b1;
end

always # 15
a=a+1;

always #2
clock=~clock;


wallace2 DUT(
.P(out),.A(a),.B(b),.clock(clock)

);

endmodule
