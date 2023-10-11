`timescale 1ns/1ps
module mux4_1_tb ();
	wire [3:0] o_out_tb;
	reg [3:0] i_in0_tb,i_in1_tb,i_in2_tb,i_in3_tb;
	reg [1:0] i_sel_tb;
	mux4_1 dut (o_out_tb, i_in0_tb,i_in1_tb,i_in2_tb,i_in3_tb, i_sel_tb);
	
initial begin : TB //?
	integer i;
	$monitor ("[%0t] i_sel_tb = 0x%0b i_in0_tb = 0x%0b i_in1_tb = 0x%0b i_in2_tb = 0x%0b i_in3_tb = 0x%0b o_out_tb = 0x%0b", $time,i_sel_tb,
	i_in0_tb,i_in1_tb,i_in2_tb,i_in3_tb, i_sel_tb,o_out_tb);
	
		i_sel_tb = 0;
		i_in0_tb = $random;
		i_in1_tb = $random;
		i_in2_tb = $random;
		i_in3_tb = $random;
		
		for(i=0; i<4; i=i+1)
			begin 
				#5
				i_sel_tb <= i;
			end
		#5;
		end
endmodule