module Seq_tb;
	reg clk;
	reg x;
	wire op;
	
	Seq s1(clk, x, op);
	
	initial
	begin
		clk = 1'b0;
		forever
		#5 clk = ~clk;
	end
	
	initial
	#120 $finish;
		
	initial
	begin
		$dumpfile("SeqOutput.vcd");
		$dumpvars(0, Seq_tb);
		$monitor($time, " x=%b, op=%b", x, op);
	end
		
	initial
	begin
		#2  x=0;     #10 x=1;     #10 x=0;
		#10 x=1;     #10 x=1;     #10 x=0;
		#10 x=0;     #10 x=1;     #10 x=1;
		#10 x=0;     #10 x=0;     #10 x=1;
	end
endmodule