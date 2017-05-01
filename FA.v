//`timescale 1ns / 1ps

module FA(a,b,cin,sum,carry,clock);

input a,b,cin,clock;

output sum,carry;

reg T1,T2,T3,carry;

assign sum=a^b^cin;

always @(a or b or cin)

begin

T1=a&b;

T2=a&cin;

T3=a&cin;

carry=T1|T2|T3;

end

endmodule
