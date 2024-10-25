module d_ff(d,clk,rst,q,qb);
input d,clk,rst;
output qb;
output reg q;
always @ (posedge clk)
begin
	if(rst)
		q <= 1'b0;
	else
		q <= d;
end 

assign qb = ~q;

endmodule
