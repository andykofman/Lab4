//Full subtractor module
module FS (x,y,Bin,Bout,Diff);
	input x,y,Bin;
	output Bout,Diff;
	wire w1,w2,w3;
	
	xor g1(w1,x,y);
	xor g3(Diff,w1,Bin);
	and g2(w3,x,y);
	and g4(w2,w1,Bin);
	xor g5(Bout,w2,w3);
	
endmodule	
	

//4-bit Comparator using subtractor
module comparator_using_subtractor (A,B,Z,N,V);
	input [3:0]A;
	input [3:0]B;
	output Z;
	output N;
	output V;
	wire Br[2:0];
	wire R[3:0];
	wire Bout;
	
	FS FS0 (A[0],~B[0],1    ,Br[0],R[0]);
	FS FS1 (A[1],~B[1],Br[0],Br[1],R[1]);
	FS FS2 (A[2],~B[2],Br[1],Br[2],R[2]);
	FS FS3 (A[3],~B[3],Br[2],Bout ,R[3]);
	
	nor g1(Z,R[0],R[1],R[2],R[3]);
	assign N = ~Bout;
   //xor g2(V,Bout,Br[2]);
	assign V = Bout;
	
endmodule