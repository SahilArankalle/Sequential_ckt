module t_ff_tb();
reg t,clk,rst;
wire q,qb;

t_ff duf(t,clk,rst,q,qb);

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

task tin(input i);
begin
@(negedge clk)
t = i;
end
endtask


initial 
begin
rst_dut;
tin(0);
tin(1);
tin(0);
tin(1);
tin(1);
rst_dut;
tin(0);
tin(1);
#10;
$finish;
end
endmodule
