module sr_latch(s,r,q,qb);
input s,r;
output q,qb;
wire w1,w2;

nor N1 (q,w1,r);
not N2 (qb,w2,s);

assign w1 = q;
assign w2 = qb;

endmodule 
