module ShiftSeq(clk, inbit, indata, incode, load, op);
	input clk;
	input inbit;
	input [3:0] indata;
	input [3:0] incode;
	integer i, flag =0;
	input load;
	output reg op;
	parameter N = 4;
	reg [N-1:0] data;
	reg [N-1:0] code;
	
	always @(posedge clk)
	begin
		if(load == 1)
			begin
				for(i=0; i<N; i=i+1)
				code[i] <= incode[i];
				
				for(i=0; i<N; i=i+1)
				data[i] <= indata[i];
			end
		else
			begin
				data[0] <= inbit;
				for(i=1; i<N; i=i+1)
				data[i] <= data[i-1];
			end
	end
	
	always @(data)
		begin
			flag = 0;
			for(i=0; i<N; i=i+1)
			begin
				if(data[i] != code[i])
				flag = 1;
			end
			op = flag==1? 0:1;
		end
		
endmodule