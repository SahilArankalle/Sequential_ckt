module sr_latch_tb();
reg s,r;
wire q,qb;

sr_latch dut (s,r,q,qb);

integer i;
initial
begin
for(i = 0; i < 8; i = i+1)
begin
{s,r} = i;
#10;
end
$finish;
end
endmodule

