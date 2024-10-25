module up_down_counter(mode,clk,rst,count);
input mode,clk,rst;
output reg  [3:0] count;

always @ (posedge clk)
begin
	if(rst)
		count = 4'b0000;
	else
	begin
		case(mode)
			1'b0 : count <= count + 1;
			1'b1 : count <= count - 1;
		endcase
	end
end
endmodule
