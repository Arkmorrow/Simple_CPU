module Control_Sign (a,b,enable);
	input[15:0] a;
	output reg[15:0] b;
	input enable;
	
	always @ (enable or a) begin
		if (enable) begin
			b = a;
		end else begin
			b =16'bz;
		end
	end
	
endmodule
