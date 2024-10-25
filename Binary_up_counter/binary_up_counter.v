module binary_up_counter(din,load,clk,rst,count);
input [3:0] din;
input load,clk,rst;
output reg [3:0] count;

always @ (posedge clk)
begin
	if (~rst)
		count <= 4'b0000;
	else if (load)
		count <= din;
	else
		count <= count + 1'b1;
end
endmodule
