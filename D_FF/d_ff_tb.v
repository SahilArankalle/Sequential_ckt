module d_ff_tb();
reg d,clk,rst;
wire q,qb;

d_ff dut(d,clk,rst,q,qb);

initial 
begin
clk = 0;
forever #10 clk = ~clk;
end

task rst_dut();
begin
@(negedge clk)
rst = 1'b1;
@(negedge clk)
rst = 1'b0;
end
endtask

task din(input i);
begin
@(negedge clk)
d = i;
end
endtask

initial 
begin

rst_dut;
din(0);
din(1);
din(0);
din(1);
din(1);
rst_dut;
din(0);
din(1);
#10;
$finish;
end
endmodule