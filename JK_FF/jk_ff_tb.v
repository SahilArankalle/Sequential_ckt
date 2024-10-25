module jk_ff_tb();
reg j,k,clk,rst;
wire q,qb;

jk_ff dut (j,k,clk,rst,q,qb);

initial 
begin
clk = 0;
forever #10 clk = ~clk;
end

task rst_dut();
begin
@ (negedge clk)
rst = 1'b1;
@ (negedge clk)
rst = 1'b0;
end
endtask

task jkin (input i, input j);
begin
@ (negedge clk)
j = i;
k = j;
end
endtask

initial 
begin
rst_dut;
jkin(0,0);
jkin(0,1);
jkin(0,0);
jkin(1,0);
jkin(1,1);
rst_dut;
jkin(0,0);
jkin(1,1);
#10;
$finish;
end
endmodule

