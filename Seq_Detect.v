module Seq(clk, x, op);
	input clk, x;
	output reg op;
	reg [1:0] state;
	parameter A = 2'b00, B = 2'b01,
			  C = 2'b10, D = 2'b11;
			  
	always @(posedge clk)
	begin
		case(state)
			A: state <= x? B: A;
			B: state <= x? C: A;
			C: state <= x? C: D;
			D: state <= x? B: A;
			default: state <= A;
		endcase
	end
	
	always @(state)
	begin
		case(state)
			A: op = 0;
			B: op = 0;
			C: op = 0;
			D: op = 1;
			default: op = 0;
		endcase
	end
endmodule