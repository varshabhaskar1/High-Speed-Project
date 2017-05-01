module wallace2(input [1:0]A, input [1:0]B, output  [3:0] P,input clock);
reg [2:0] pp0,pp1;
wire s1,s2,c1,c2;
integer i;
always @(A or B)
begin
    for(i=0;i<2;i=i+1) begin
  pp0[i] <= A[i] & B[0];
  pp1[i] <= A[i] & B[1];
  
    end     
end
HA ha1(pp1[0],pp0[1],s1,c1,clock);
HA ha2(c1,pp1[1],s2,c2,clock);


//always @(posedge clock)

assign P={c2,s2,s1,pp0[0]};


endmodule
