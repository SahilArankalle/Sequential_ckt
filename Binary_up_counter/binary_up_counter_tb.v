module binary_up_counter_tb();
reg [3:0] din;
reg load,clk,rst;
wire [3:0] count;

parameter cycle = 10;

binary_up_counter dut(din, load, clk, rst, count);

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
	rst = 1'b0;
	@ (negedge clk);
	rst = 1'b1;
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
	#100;
	load_dut(1'b1, 4'd13);
	load_dut(1'b0, 4'd13);
	#200;
	$finish;
end
endmodule

	
