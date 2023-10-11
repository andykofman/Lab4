`timescale 1ns/1ps
module HA_TB ();

reg A_TB;
reg B_TB;
wire sum_TB;
wire carry_out_TB;

HA DUT(A_TB,B_TB,sum_TB,carry_out_TB);

initial
begin
	A_TB = 1'b0; B_TB = 1'b0; #10;
	B_TB = 1'b1; #10;
	A_TB = 1'b1; B_TB = 1'b0; #10;
	B_TB = 1'b1; #10;
end
endmodule

