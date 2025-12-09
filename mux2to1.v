module mux2to1(in,sel,out);
input [1:0]in;
input sel;
output out;
wire t1,t2,t3;
not g1(t1,sel);
and g2(t2,t1,in[0]);
and g3(t3,sel,in[1]);
or g4(out,t2,t3);
endmodule