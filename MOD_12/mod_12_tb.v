module mod_12_tb();
reg [3:0] din;
reg load,clk,rst;
wire [3:0] count;

parameter cycle = 10;

mod_12 dut(din, load, clk, rst, count);

always 
begin
	#(cycle/2);
	clk = 1'b0;
	#(cycle/2);
	clk = 1'b1;
end

task rst_dut;
begin
	@ (negedge clk);
	rst = 1'b1;
	@ (negedge clk);
	rst = 1'b0;
end
endtask

task load_dut(input l, input [3:0] d);
begin
	@ (negedge clk)
	load = l;
	din = d;
end
endtask

initial 
begin
	rst_dut;
	#200;
	load_dut(1'b1, 4'd10);
	load_dut(1'b0, 4'd10);
	$finish;
end
endmodule

