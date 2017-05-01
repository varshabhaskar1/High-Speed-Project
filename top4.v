 
module wallace();

reg[3:0] a,b;
wire [7:0] out;
reg clock;
initial
begin 
clock=0;
a=4'b1;
b=4'b1;
end

always # 15
a=a+1;

always #2
clock=~clock;


wallace4 DUT(
.P(out),.A(a),.B(b),.clock(clock)

);

endmodule
