module siso_tb();
reg clk,rst,serial_input;
wire serial_output;

siso dut(clk, rst, serial_input, serial_output);

initial 
begin
clk = 1'b0;
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


task init(input i);
begin
@ (negedge clk)
serial_input = i;
end
endtask

initial 
begin

rst_dut;
init(1);
#10;
init(0);
#10;
init(1);
#10;
init(0);
#10;
init(0);
#10;
init(1);
#10;
init(0);
#10;
$finish;
end 
endmodule


