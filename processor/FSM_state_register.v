module FSM_state_register(d,clk,rst,Q);
	input[3:0] d;
	input clk,rst;
	output reg[3:0] Q;	
	
	always @ (posedge clk or posedge rst ) begin
		if (rst==1'b1) begin
			Q <= 4'b0;

		end
		else begin
			Q <= d;
		end
	end
				
endmodule
