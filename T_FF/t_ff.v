module t_ff (t,clk,rst,q,qb);
input t,clk,rst;
inout q;
output qb;
wire w1;

xor d1(w1, t, q);
d_ff d2(w1, clk, rst, q, qb);

endmodule

