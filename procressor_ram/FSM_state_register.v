module FSM_state_register(d,clk,rst,Q);
	input[5:0] d;
	input clk,rst;
	output reg[5:0] Q;	
	
	always @ (posedge clk or posedge rst ) begin
		if (rst==1'b1) begin
			Q <= 5'b0;

		end
		else begin
			Q <= d;
		end
	end
				
endmodule
