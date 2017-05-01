//`timescale 1ns / 1ps
module HA(a,b,sum,carry,clock);
input a,b,clock;
output  wire sum,carry;
assign sum=a^b;
assign carry=a&b;
endmodule
