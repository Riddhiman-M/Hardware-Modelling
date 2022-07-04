module ShiftSeq_tb;
	parameter N = 4;
	reg clk;
	reg inbit;
	reg [N-1:0] data;
	reg [N-1:0] code;
	reg load;
	wire op;
	
	ShiftSeq s(clk, inbit, data, code, load, op);
	
	initial
		begin
			clk = 0;
			forever
			#5 clk = ~clk;
		end
	
	initial
		begin
			$dumpfile("ShiftSeq_op.vcd");
			$dumpvars(0, ShiftSeq_tb, s);
			$monitor($time," inbit=%b, data=%b, output=%b", inbit, s.data, op);
		end
			
	
	initial
		begin
			#11 load = 1; code = 4'h6; data = 4'hA;
			#10 load = 0; inbit = 1;
			#10 inbit = 1;
			#10 inbit = 0;
			#10 inbit = 1;   #10 inbit = 1;   #10 inbit = 0;
			#10 inbit = 1;   #10 inbit = 0;   #10 inbit = 1;
			#10 $finish;
		end
		
endmodule