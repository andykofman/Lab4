`timescale 1ns/1ps
module comparator_using_subtractor_tb();

	reg [3:0] A_tb;
	reg [3:0] B_tb;
	wire Z_tb;
	wire N_tb;
	wire V_tb;
	
//Module instatiation
comparator_using_subtractor dut (
	A_tb,
	B_tb,
	Z_tb,
	N_tb,
	V_tb
);

initial 
begin 
		A_tb = 4'h5; B_tb = 4'h5; #10;
		A_tb = 4'h8; B_tb = 4'h8; #10;
		A_tb = 4'hc; B_tb = 4'hc; #10;
		A_tb = 4'h2; B_tb = 4'h5; #10;
		A_tb = 4'h8; B_tb = 4'ha; #10;
		A_tb = 4'h3; B_tb = 4'hf; #10;
		A_tb = 4'h2; B_tb = 4'h5; #10;
		A_tb = 4'h8; B_tb = 4'ha; #10;
		A_tb = 4'h3; B_tb = 4'hf; #10;		
end
endmodule